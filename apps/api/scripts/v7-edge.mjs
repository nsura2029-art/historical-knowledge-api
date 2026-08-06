/**
 * v7-edge: KP-003 edge cases.
 * Verifies error envelopes, edge cases, and universal thresholds.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`✓ ${name}${detail ? ' — ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`✗ ${name}${detail ? ' — ' + detail : ''}`); }
}

async function fetchJson(url) {
  const r = await fetch(url, { headers: { 'User-Agent': 'hka-smoke/7-edge' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v7 edge: KP-003 atomic-claim model ===\n`);

  // ----- E1: validation errors -----
  {
    // invalid certainty
    const r1 = await fetchJson(`${BASE}/v1/claims?certainty=bogus`);
    ok('E1.1 invalid certainty → 400', r1.status === 400, `status=${r1.status}`);
    // invalid status
    const r2 = await fetchJson(`${BASE}/v1/claims?status=invalid_status`);
    ok('E1.2 invalid status → 400', r2.status === 400, `status=${r2.status}`);
    // confidence out of range
    const r3 = await fetchJson(`${BASE}/v1/claims?min_confidence=2.0`);
    ok('E1.3 min_confidence > 1 → 400', r3.status === 400, `status=${r3.status}`);
    // limit out of range
    const r4 = await fetchJson(`${BASE}/v1/claims?limit=99999`);
    ok('E1.4 limit > 200 → 400', r4.status === 400, `status=${r4.status}`);
    // limit = 0
    const r5 = await fetchJson(`${BASE}/v1/claims?limit=0`);
    ok('E1.5 limit < 1 → 400', r5.status === 400, `status=${r5.status}`);
  }

  // ----- E2: empty result sets -----
  {
    const r = await fetchJson(`${BASE}/v1/claims?subject_entity_id=ent_no_such_thing`);
    ok('E2.1 nonexistent subject returns empty', r.status === 200 && r.body?.data?.length === 0, `status=${r.status} n=${r.body?.data?.length}`);
    ok('E2.2 total_count = 0', r.body?.total_count === 0, `tc=${r.body?.total_count}`);
  }

  // ----- E3: error envelope structure -----
  {
    const r = await fetchJson(`${BASE}/v1/claims/clm_bogus_id`);
    ok('E3.1 404 has error envelope', !!r.body?.error, `body=${JSON.stringify(r.body).slice(0, 100)}`);
    ok('E3.2 error has code', typeof r.body?.error?.code === 'string', `code=${r.body?.error?.code}`);
    ok('E3.3 error has message', typeof r.body?.error?.message === 'string', `msg=${r.body?.error?.message?.slice(0, 80)}`);
  }

  // ----- E4: legacy backfill data sanity -----
  {
    const r = await fetchJson(`${BASE}/v1/claims?predicate=born_on&limit=5`);
    ok('E4.1 born_on claims exist', r.body?.data?.length > 0, `n=${r.body?.data?.length}`);
    ok('E4.2 all born_on have literal_value or object_entity_id', r.body?.data?.every(c => c.literal_value || c.object_entity_id), 'check');
  }

  // ----- E5: pagination integrity -----
  {
    const r1 = await fetchJson(`${BASE}/v1/claims?limit=10`);
    const all1 = r1.body?.data?.map(c => c.id) || [];
    const r2 = await fetchJson(`${BASE}/v1/claims?limit=10&cursor=${encodeURIComponent(r1.body?.next_cursor || '')}`);
    const all2 = r2.body?.data?.map(c => c.id) || [];
    const overlap = all1.filter(id => all2.includes(id));
    ok('E5.1 no pagination overlap', overlap.length === 0, `overlap=${overlap.length}`);
  }

  // ----- E6: legacy data universal thresholds -----
  {
    const r = await fetchJson(`${BASE}/v1/claims?limit=200`);
    const claims = r.body?.data || [];
    // Universal threshold: confidence >= 0.5 for all backfilled claims
    const lowConf = claims.filter(c => c.id.startsWith('clm_legacy_') && c.confidence < 0.5);
    ok('E6.1 legacy claims have confidence >= 0.5', lowConf.length === 0, `low=${lowConf.length}`);
    // All claims have sources (critical_fact_source_coverage = 1.0)
    // Sample 5 claims and verify each has at least 1 source
    const sample = claims.filter(c => c.id.startsWith('clm_legacy_')).slice(0, 5);
    let allHaveSources = true;
    for (const cl of sample) {
      const ev = await fetchJson(`${BASE}/v1/claims/${cl.id}/evidence`);
      if ((ev.body?.sources?.length || 0) < 1) { allHaveSources = false; break; }
    }
    ok('E6.2 all sampled legacy claims have at least 1 source', allHaveSources, 'sampled');
    // editorial_status
    const pending = claims.filter(c => c.id.startsWith('clm_legacy_') && c.status === 'pending');
    ok('E6.3 all legacy claims are approved (not pending)', pending.length === 0, `pending=${pending.length}`);
  }

  // ----- E7: cursor edge cases -----
  {
    // empty cursor
    const r = await fetchJson(`${BASE}/v1/claims?cursor=clm_does_not_exist`);
    ok('E7.1 nonexistent cursor returns 200 (start from beginning or empty)', r.status === 200, `status=${r.status}`);
  }

  // ----- E8: entity claims edge cases -----
  {
    // Entity exists but has no claims (e.g., a place or work)
    const r = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/claims`);
    ok('E8.1 nonexistent entity → 404', r.status === 404, `status=${r.status}`);
  }

  // ----- Summary -----
  console.log(`\n=== v7 edge summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (failures.length) {
    console.error(`failures: ${failures.join(', ')}`);
    process.exit(1);
  }
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
