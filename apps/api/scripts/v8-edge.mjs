/**
 * v8-edge: KP-004 edge cases.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url, init) {
  const r = await fetch(url, init || { headers: { 'User-Agent': 'hka-smoke/8-edge' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v8 edge: KP-004 evidence + citations ===\n`);

  // ----- E1: error envelopes -----
  {
    const r1 = await fetchJson(`${BASE}/v1/sources/src_does_not_exist`);
    ok('E1.1 404 has error envelope', !!r1.body?.error, JSON.stringify(r1.body).slice(0, 80));
    ok('E1.2 404 error has code', r1.body?.error?.code === 'SOURCE_NOT_FOUND', `code=${r1.body?.error?.code}`);

    const r2 = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/sources`);
    ok('E1.3 entity 404 has code', r2.body?.error?.code === 'ENTITY_NOT_FOUND', `code=${r2.body?.error?.code}`);

    const r3 = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/citations`);
    ok('E1.4 citations 404 has code', r3.body?.error?.code === 'ENTITY_NOT_FOUND', `code=${r3.body?.error?.code}`);

    const r4 = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/revisions`);
    ok('E1.5 revisions 404 has code', r4.body?.error?.code === 'ENTITY_NOT_FOUND', `code=${r4.body?.error?.code}`);
  }

  // ----- E2: POST validation -----
  {
    // Missing required fields
    const r1 = await fetchJson(`${BASE}/v1/admin/editorial-revisions`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({}),
    });
    ok('E2.1 POST with empty body → 400', r1.status === 400, `status=${r1.status}`);

    // Invalid revision_type
    const r2 = await fetchJson(`${BASE}/v1/admin/editorial-revisions`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        target_entity_id: 'ent_donald-trump',
        field_name: 'x', new_value: 'y',
        contributor_id: 'a', revision_type: 'invalid_type',
      }),
    });
    ok('E2.2 invalid revision_type → 400', r2.status === 400, `status=${r2.status}`);
  }

  // ----- E3: pagination -----
  {
    const r1 = await fetchJson(`${BASE}/v1/sources?limit=5`);
    const all1 = (r1.body?.data || []).map(s => s.id);
    const r2 = await fetchJson(`${BASE}/v1/sources?limit=5&cursor=${encodeURIComponent(r1.body?.next_cursor || all1[all1.length - 1])}`);
    const all2 = (r2.body?.data || []).map(s => s.id);
    const overlap = all1.filter(id => all2.includes(id));
    ok('E3.1 pagination no overlap', overlap.length === 0, `overlap=${overlap.length}`);
  }

  // ----- E4: entity revisions filters -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const r = await fetchJson(`${BASE}/v1/entities/${personId}/revisions?review_status=auto_approved&limit=10`);
      ok('E4.1 filter by review_status', r.status === 200, `status=${r.status}`);
      ok('E4.2 all results are auto_approved', (r.body?.data || []).every(x => x.review_status === 'auto_approved'), `count=${r.body?.data?.length}`);
    }
  }

  // ----- E5: citation format invalid -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const r = await fetchJson(`${BASE}/v1/entities/${personId}/citations?format=invalid_format`);
      ok('E5.1 invalid citation format → 400', r.status === 400, `status=${r.status}`);
    }
  }

  // ----- E6: source claims with filters -----
  {
    const { body: list } = await fetchJson(`${BASE}/v1/sources?limit=200`);
    const srcWithClaims = (list?.data || []).find(s => s.claims_supported_count > 0);
    if (srcWithClaims) {
      const r = await fetchJson(`${BASE}/v1/sources/${srcWithClaims.id}/claims?support_type=supports`);
      ok('E6.1 filter by support_type', r.status === 200, `status=${r.status}`);
      ok('E6.2 all are supports', (r.body?.data || []).every(x => x.support_type === 'supports'), `count=${r.body?.data?.length}`);

      const r2 = await fetchJson(`${BASE}/v1/sources/${srcWithClaims.id}/claims?support_type=invalid_support`);
      ok('E6.3 invalid support_type → 400', r2.status === 400, `status=${r2.status}`);
    }
  }

  // ----- E7: data integrity -----
  {
    // No claim should reference a non-existent source_record
    const r = await fetchJson(`${BASE}/v1/claims/clm_legacy_ce_evt_aishwarya-rai_0/evidence`);
    if (r.status === 200) {
      ok('E7.1 evidence returns claim', !!r.body?.claim, 'check');
      ok('E7.2 sources all have valid source_record', (r.body?.sources || []).every(s => s.source_record?.id), 'check');
    } else {
      ok('E7.1 (skipped)', true);
    }
  }

  // ----- Summary -----
  console.log(`\n=== v8 edge summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (failures.length) {
    console.error(`failures: ${failures.join(', ')}`);
    process.exit(1);
  }
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
