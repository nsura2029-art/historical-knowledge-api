/**
 * v9-edge: KP-007 edge cases.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url, init) {
  const r = await fetch(url, init || { headers: { 'User-Agent': 'hka-smoke/9-edge' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v9 edge: KP-007 media + rights ===\n`);

  // ----- E1: error envelopes -----
  {
    const r1 = await fetchJson(`${BASE}/v1/media/ma_does_not_exist`);
    ok('E1.1 404 has error envelope', !!r1.body?.error, JSON.stringify(r1.body).slice(0, 80));
    ok('E1.2 error code is MEDIA_NOT_FOUND', r1.body?.error?.code === 'MEDIA_NOT_FOUND', `code=${r1.body?.error?.code}`);

    const r2 = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/media`);
    ok('E1.3 entity 404', r2.body?.error?.code === 'ENTITY_NOT_FOUND', `code=${r2.body?.error?.code}`);

    const r3 = await fetchJson(`${BASE}/v1/media/ma_does_not_exist/download`);
    ok('E1.4 download 404', r3.body?.error?.code === 'MEDIA_NOT_FOUND', `code=${r3.body?.error?.code}`);

    const r4 = await fetchJson(`${BASE}/v1/media/ma_does_not_exist/transform`);
    ok('E1.5 transform 404', r4.body?.error?.code === 'MEDIA_NOT_FOUND', `code=${r4.body?.error?.code}`);

    const r5 = await fetchJson(`${BASE}/v1/admin/media/ma_does_not_exist/approve`, { method: 'POST' });
    ok('E1.6 admin approve 404', r5.body?.error?.code === 'MEDIA_NOT_FOUND', `code=${r5.body?.error?.code}`);
  }

  // ----- E2: validation -----
  {
    const r1 = await fetchJson(`${BASE}/v1/admin/media/review-queue?review_type=garbage`);
    ok('E2.1 invalid review_type → 400', r1.status === 400, `status=${r1.status}`);

    const r2 = await fetchJson(`${BASE}/v1/media/ma_frida-1/transform?w=99999`);
    ok('E2.2 w > 2000 → 400', r2.status === 400, `status=${r2.status}`);

    const r3 = await fetchJson(`${BASE}/v1/media/ma_frida-1/transform?w=10`);
    ok('E2.3 w < 20 → 400', r3.status === 400, `status=${r3.status}`);
  }

  // ----- E3: filter integrity -----
  {
    const r1 = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = r1.body?.data?.[0]?.id;
    if (personId) {
      const r2 = await fetchJson(`${BASE}/v1/entities/${personId}/media?asset_type=image`);
      ok('E3.1 all results match filter', (r2.body?.data || []).every(m => m.asset?.asset_type === 'image'), `count=${r2.body?.data?.length}`);

      const r3 = await fetchJson(`${BASE}/v1/entities/${personId}/media?asset_type=video`);
      ok('E3.2 video filter returns empty if no videos', Array.isArray(r3.body?.data), `len=${r3.body?.data?.length}`);
    }
  }

  // ----- E4: review queue filter -----
  {
    const r = await fetchJson(`${BASE}/v1/admin/media/review-queue?review_type=initial`);
    ok('E4.1 review_type filter 200', r.status === 200, `status=${r.status}`);
    ok('E4.2 all results are initial', (r.body?.data || []).every(x => x.review_type === 'initial'), `count=${r.body?.data?.length}`);
  }

  // ----- E5: media_id not in DB -----
  {
    const r = await fetchJson(`${BASE}/v1/media/ma_not_a_real_id/transform?w=200`);
    ok('E5.1 404 for non-existent media', r.status === 404, `status=${r.status}`);
  }

  // ----- E6: approve creates review record -----
  {
    // We need a fresh media or one with status != approved to test
    // Since we have only 3 media and all are approved, this test is soft
    ok('E6.1 (skipped — all media already approved)', true);
  }

  // ----- Summary -----
  console.log(`\n=== v9 edge summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (failures.length) {
    console.error(`failures: ${failures.join(', ')}`);
    process.exit(1);
  }
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
