/**
 * v9-smoke: KP-007 media + rights pipeline end-to-end.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url, init) {
  const r = await fetch(url, init || { headers: { 'User-Agent': 'hka-smoke/9' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v9 smoke: KP-007 media + rights ===\n`);

  // ----- T1: list entity media -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const { status, body } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      ok('T1.1 /v1/entities/{id}/media 200', status === 200, `status=${status}`);
      ok('T1.2 entity_id matches', body?.entity_id === personId, `eid=${body?.entity_id}`);
      ok('T1.3 has data array', Array.isArray(body?.data), `len=${body?.data?.length}`);
      ok('T1.4 has total', typeof body?.total === 'number', `n=${body?.total}`);
      if (body?.data?.[0]) {
        ok('T1.5 entry has asset', !!body.data[0].asset, 'check');
        ok('T1.6 entry has rights', !!body.data[0].rights, 'check');
        ok('T1.7 asset has depiction_entity_id', !!body.data[0].asset?.depiction_entity_id, `did=${body.data[0].asset?.depiction_entity_id}`);
        ok('T1.8 rights has license_code', !!body.data[0].rights?.license_code, `lic=${body.data[0].rights?.license_code}`);
        ok('T1.9 rights has attribution_text', !!body.data[0].rights?.attribution_text, 'check');
      }
    }
    const r2 = await fetchJson(`${BASE}/v1/entities/ent_does_not_exist/media`);
    ok('T1.10 /v1/entities/{id}/media 404 for missing', r2.status === 404, `status=${r2.status}`);
  }

  // ----- T2: filter by asset_type -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const r = await fetchJson(`${BASE}/v1/entities/${personId}/media?asset_type=image`);
      ok('T2.1 filter by asset_type 200', r.status === 200, `status=${r.status}`);
      ok('T2.2 all results are images', (r.body?.data || []).every(m => m.asset?.asset_type === 'image'), `count=${r.body?.data?.length}`);
    }
  }

  // ----- T3: media detail -----
  {
    // Find a media via entity media endpoint
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const { body: mediaList } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      const firstMedia = mediaList?.data?.[0]?.asset?.id;
      if (firstMedia) {
        const { status, body } = await fetchJson(`${BASE}/v1/media/${firstMedia}`);
        ok('T3.1 /v1/media/{id} 200', status === 200, `status=${status}`);
        ok('T3.2 has asset', !!body?.asset, 'check');
        ok('T3.3 has rights', !!body?.rights, 'check');
        ok('T3.4 has expiry', body?.expiry !== undefined, 'check');
        ok('T3.5 has review_history array', Array.isArray(body?.review_history), `len=${body?.review_history?.length}`);
        if (body?.review_history?.[0]) {
          ok('T3.6 review_history has review_type', !!body.review_history[0].review_type, `rt=${body.review_history[0].review_type}`);
        }
      }
    }
    const r2 = await fetchJson(`${BASE}/v1/media/ma_does_not_exist`);
    ok('T3.7 /v1/media/{id} 404 for missing', r2.status === 404, `status=${r2.status}`);
  }

  // ----- T4: media download (gated by rights) -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const { body: mediaList } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      const firstMedia = mediaList?.data?.[0]?.asset?.id;
      if (firstMedia) {
        const r = await fetchJson(`${BASE}/v1/media/${firstMedia}/download`);
        ok('T4.1 download approved media 200', r.status === 200, `status=${r.status}`);
        ok('T4.2 has url', !!r.body?.url, `url=${r.body?.url?.slice(0, 60)}`);
        ok('T4.3 has expires_in', typeof r.body?.expires_in === 'number', `e=${r.body?.expires_in}`);
        ok('T4.4 has gated_by', !!r.body?.gated_by, `g=${r.body?.gated_by}`);
      }
    }
  }

  // ----- T5: media transform -----
  {
    const { body: people } = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = people?.data?.[0]?.id;
    if (personId) {
      const { body: mediaList } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      const firstMedia = mediaList?.data?.[0]?.asset?.id;
      if (firstMedia) {
        const r = await fetchJson(`${BASE}/v1/media/${firstMedia}/transform?w=200`);
        ok('T5.1 transform 200', r.status === 200, `status=${r.status}`);
        ok('T5.2 has source_key', !!r.body?.source_key, 'check');
        ok('T5.3 has transform', r.body?.transform === 'w=200', `t=${r.body?.transform}`);
        ok('T5.4 has url', !!r.body?.url, 'check');
        ok('T5.5 has cached boolean', typeof r.body?.cached === 'boolean', `c=${r.body?.cached}`);
      }
    }
  }

  // ----- T6: review queue -----
  {
    const r = await fetchJson(`${BASE}/v1/admin/media/review-queue`);
    ok('T6.1 review-queue 200', r.status === 200, `status=${r.status}`);
    ok('T6.2 has data array', Array.isArray(r.body?.data), `len=${r.body?.data?.length}`);
    ok('T6.3 has total', typeof r.body?.total === 'number', `n=${r.body?.total}`);
  }

  // ----- T7: POST admin approve -----
  {
    // First find a media that's NOT approved, or create a review for an existing one
    const r1 = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = r1.body?.data?.[0]?.id;
    if (personId) {
      const { body: mediaList } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      const firstMedia = mediaList?.data?.[0]?.asset?.id;
      if (firstMedia) {
        // POST approve — works whether already approved or not
        const r2 = await fetchJson(`${BASE}/v1/admin/media/${firstMedia}/approve`, { method: 'POST' });
        ok('T7.1 approve 200', r2.status === 200, `status=${r2.status}`);
        ok('T7.2 approved media has status=approved', r2.body?.asset?.status === 'approved', `s=${r2.body?.asset?.status}`);
        ok('T7.3 review_history has new entry', (r2.body?.review_history || []).some(x => x.decision === 'approved'), 'check');
      }
    }
  }

  // ----- T8: validation -----
  {
    const r = await fetchJson(`${BASE}/v1/admin/media/review-queue?limit=99999`);
    ok('T8.1 limit > 200 → 400', r.status === 400, `status=${r.status}`);
    const r2 = await fetchJson(`${BASE}/v1/entities/ent_x/media?asset_type=garbage`);
    ok('T8.2 invalid asset_type → 400', r2.status === 400, `status=${r2.status}`);
  }

  // ----- T9: data integrity -----
  {
    // All approved media have media_rights
    const r = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = r.body?.data?.[0]?.id;
    if (personId) {
      const { body: mediaList } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      const allHaveRights = (mediaList?.data || []).every(m => m.rights && m.rights.license_code);
      ok('T9.1 all media have rights with license', allHaveRights, 'check');
    }
  }

  // ----- Summary -----
  console.log(`\n=== v9 smoke summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (failures.length) {
    console.error(`failures: ${failures.join(', ')}`);
    process.exit(1);
  }
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
