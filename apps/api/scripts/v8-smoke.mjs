/**
 * v8-smoke: KP-004 evidence + citations + sources end-to-end smoke.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url, init) {
  const r = await fetch(url, init || { headers: { 'User-Agent': 'hka-smoke/8' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v8 smoke: KP-004 evidence + citations + sources ===\n`);

  // ----- T1: list sources -----
  {
    const { status, body } = await fetchJson(`${BASE}/v1/sources?limit=5`);
    ok('T1.1 /v1/sources 200', status === 200, `status=${status}`);
    ok('T1.2 data is array', Array.isArray(body?.data), `type=${typeof body?.data}`);
    ok('T1.3 total_count >= 100', (body?.total_count || 0) >= 100, `tc=${body?.total_count}`);
    if (body?.data?.[0]) {
      const s = body.data[0];
      ok('T1.4 source has id', !!s.id, `id=${s.id}`);
      ok('T1.5 source has source_quality_tier', !!s.source_quality_tier, `tier=${s.source_quality_tier}`);
    }
  }

  // ----- T2: filter by tier -----
  {
    const { status, body } = await fetchJson(`${BASE}/v1/sources?tier=A&limit=3`);
    ok('T2.1 /v1/sources?tier=A 200', status === 200, `status=${status}`);
    ok('T2.2 all results are tier A', (body?.data || []).every(s => s.source_quality_tier === 'A'), `count=${body?.data?.length}`);
  }

  // ----- T3: source detail -----
  {
    // Find a source with claims
    const { body: list } = await fetchJson(`${BASE}/v1/sources?limit=200`);
    const srcWithClaims = (list?.data || []).find(s => s.claims_supported_count > 0) || list?.data?.[0];
    if (srcWithClaims) {
      const { status, body } = await fetchJson(`${BASE}/v1/sources/${srcWithClaims.id}`);
      ok('T3.1 /v1/sources/{id} 200', status === 200, `status=${status} id=${srcWithClaims.id}`);
      ok('T3.2 has claims_supported_count', typeof body?.claims_supported_count === 'number', `n=${body?.claims_supported_count}`);
      ok('T3.3 has entities_mentioned_count', typeof body?.entities_mentioned_count === 'number', `n=${body?.entities_mentioned_count}`);
      ok('T3.4 has source_records_count', typeof body?.source_records_count === 'number', `n=${body?.source_records_count}`);
      ok('T3.5 has used_on_pages array', Array.isArray(body?.used_on_pages), `len=${body?.used_on_pages?.length}`);
      ok('T3.6 has health object', !!body?.health, `keys=${Object.keys(body?.health || {}).join(',')}`);
      ok('T3.7 health.records_total is number', typeof body?.health?.records_total === 'number', `n=${body?.health?.records_total}`);
      ok('T3.8 health.license_status is string', typeof body?.health?.license_status === 'string', `s=${body?.health?.license_status}`);
    }
    const r2 = await fetchJson(`${BASE}/v1/sources/src_does_not_exist`);
    ok('T3.9 /v1/sources/{id} 404 for missing', r2.status === 404, `status=${r2.status}`);
  }

  // ----- T4: source claims -----
  {
    const { body: list } = await fetchJson(`${BASE}/v1/sources?limit=200`);
    const srcWithClaims = (list?.data || []).find(s => s.claims_supported_count > 0);
    if (srcWithClaims) {
      const { status, body } = await fetchJson(`${BASE}/v1/sources/${srcWithClaims.id}/claims`);
      ok('T4.1 /v1/sources/{id}/claims 200', status === 200, `status=${status}`);
      ok('T4.2 has data array', Array.isArray(body?.data), `len=${body?.data?.length}`);
      ok('T4.3 source_id matches', body?.source_id === srcWithClaims.id, `id=${body?.source_id}`);
      if (body?.data?.[0]) {
        ok('T4.4 entry has claim object', !!body.data[0].claim, 'check');
        ok('T4.5 entry has support_type', !!body.data[0].support_type, `st=${body.data[0].support_type}`);
      }
    }
  }

  // ----- T5: entity sources -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const { status, body } = await fetchJson(`${BASE}/v1/entities/${personId}/sources`);
      ok('T5.1 /v1/entities/{id}/sources 200', status === 200, `status=${status} person=${personId}`);
      ok('T5.2 entity_id matches', body?.entity_id === personId, `eid=${body?.entity_id}`);
      ok('T5.3 has data array', Array.isArray(body?.data), `len=${body?.data?.length}`);
      if (body?.data?.[0]) {
        ok('T5.4 entry has source', !!body.data[0].source, 'check');
        ok('T5.5 entry has claim_count', typeof body.data[0].claim_count === 'number', `n=${body.data[0].claim_count}`);
      }
    }
    const r2 = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/sources`);
    ok('T5.6 /v1/entities/{id}/sources 404 for missing', r2.status === 404, `status=${r2.status}`);
  }

  // ----- T6: entity revisions -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const { status, body } = await fetchJson(`${BASE}/v1/entities/${personId}/revisions`);
      ok('T6.1 /v1/entities/{id}/revisions 200', status === 200, `status=${status}`);
      ok('T6.2 has data array', Array.isArray(body?.data), `len=${body?.data?.length}`);
      ok('T6.3 entity_id matches', body?.entity_id === personId, `eid=${body?.entity_id}`);
    }
  }

  // ----- T7: citation export (3 formats) -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      // CSL JSON
      const r1 = await fetchJson(`${BASE}/v1/entities/${personId}/citations?format=csljson`);
      ok('T7.1 csljson 200', r1.status === 200, `status=${r1.status}`);
      ok('T7.2 csljson body is valid JSON', (() => { try { JSON.parse(r1.body?.body || ''); return true; } catch { return false; } })(), 'check');
      const parsed = JSON.parse(r1.body?.body || '{}');
      ok('T7.3 csljson has citations array', Array.isArray(parsed.citations), `len=${parsed.citations?.length}`);

      // BibTeX
      const r2 = await fetchJson(`${BASE}/v1/entities/${personId}/citations?format=bibtex`);
      ok('T7.4 bibtex 200', r2.status === 200, `status=${r2.status}`);
      ok('T7.5 bibtex body has @misc{', r2.body?.body?.includes('@misc{'), 'check');

      // RIS
      const r3 = await fetchJson(`${BASE}/v1/entities/${personId}/citations?format=ris`);
      ok('T7.6 ris 200', r3.status === 200, `status=${r3.status}`);
      ok('T7.7 ris body has TY', r3.body?.body?.includes('TY'), 'check');

      // Invalid format
      const r4 = await fetchJson(`${BASE}/v1/entities/${personId}/citations?format=garbage`);
      ok('T7.8 invalid format → 400', r4.status === 400, `status=${r4.status}`);

      // Missing entity
      const r5 = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/citations?format=csljson`);
      ok('T7.9 missing entity → 404', r5.status === 404, `status=${r5.status}`);
    }
  }

  // ----- T8: POST admin editorial-revisions -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const r = await fetchJson(`${BASE}/v1/admin/editorial-revisions`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'User-Agent': 'hka-smoke/8' },
        body: JSON.stringify({
          target_entity_id: personId,
          field_name: 'description',
          old_value: 'old',
          new_value: 'updated by v8 smoke',
          revision_type: 'enhancement',
          contributor_id: 'editor:test',
          contributor_role: 'editor',
          auto_approve: true,
          notes: 'smoke test',
        }),
      });
      ok('T8.1 POST /v1/admin/editorial-revisions 201', r.status === 201, `status=${r.status}`);
      ok('T8.2 revision has id', !!r.body?.id, `id=${r.body?.id}`);
      ok('T8.3 review_status is auto_approved', r.body?.review_status === 'auto_approved', `rs=${r.body?.review_status}`);
      // Verify it shows up in entity revisions
      const r2 = await fetchJson(`${BASE}/v1/entities/${personId}/revisions?contributor_id=editor:test`);
      ok('T8.4 new revision shows in entity revisions', (r2.body?.data || []).some(x => x.id === r.body?.id), `found=${(r2.body?.data || []).some(x => x.id === r.body?.id)}`);
    }
  }

  // ----- T9: validation errors -----
  {
    const r = await fetchJson(`${BASE}/v1/sources?tier=Z`);
    ok('T9.1 invalid tier → 400', r.status === 400, `status=${r.status}`);
    const r2 = await fetchJson(`${BASE}/v1/sources?license_status=bogus`);
    ok('T9.2 invalid license_status → 400', r2.status === 400, `status=${r2.status}`);
    const r3 = await fetchJson(`${BASE}/v1/sources?limit=99999`);
    ok('T9.3 limit > 200 → 400', r3.status === 400, `status=${r3.status}`);
  }

  // ----- T10: data_source_health coverage -----
  {
    const { body } = await fetchJson(`${BASE}/v1/sources?limit=200`);
    const withHealth = (body?.data || []).filter(s => s.license_status);
    ok('T10.1 most sources have health', withHealth.length >= (body?.data?.length || 1) * 0.9, `${withHealth.length}/${body?.data?.length}`);
  }

  // ----- Summary -----
  console.log(`\n=== v8 smoke summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (failures.length) {
    console.error(`failures: ${failures.join(', ')}`);
    process.exit(1);
  }
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
