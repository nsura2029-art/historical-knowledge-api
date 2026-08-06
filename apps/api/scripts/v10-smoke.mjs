/**
 * v10-smoke: KP-010 Biographies vertical end-to-end.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url, init) {
  const r = await fetch(url, init || { headers: { 'User-Agent': 'hka-smoke/10' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v10 smoke: KP-010 Biographies vertical ===\n`);

  // ----- T1: biography aggregation -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    ok('T1.1 /v1/people/{slug}/biography 200', r.status === 200, `status=${r.status}`);
    ok('T1.2 has header', !!r.body?.header, 'check');
    ok('T1.3 header has canonical_name', r.body?.header?.canonical_name === 'Donald Trump', `name=${r.body?.header?.canonical_name}`);
    ok('T1.4 has hero_image object', r.body?.hero_image !== undefined, 'check');
    if (r.body?.hero_image) {
      ok('T1.5 hero_image has url', !!r.body.hero_image.url, `url=${r.body.hero_image.url?.slice(0, 60)}`);
      ok('T1.6 hero_image has attribution', !!r.body.hero_image.attribution, `attr=${r.body.hero_image.attribution?.slice(0, 60)}`);
      ok('T1.7 hero_image has license_code', !!r.body.hero_image.license_code, `lic=${r.body.hero_image.license_code}`);
    }
    ok('T1.8 has quick_facts array', Array.isArray(r.body?.quick_facts), `len=${r.body?.quick_facts?.length}`);
    if (r.body?.quick_facts?.[0]) {
      ok('T1.9 quick_fact has label', !!r.body.quick_facts[0].label, `label=${r.body.quick_facts[0].label}`);
      ok('T1.10 quick_fact has value', r.body.quick_facts[0].value !== null, `value=${r.body.quick_facts[0].value}`);
    }
    ok('T1.11 has narrative array', Array.isArray(r.body?.narrative), `len=${r.body?.narrative?.length}`);
    if (r.body?.narrative?.[0]) {
      ok('T1.12 narrative has heading', !!r.body.narrative[0].heading, `heading=${r.body.narrative[0].heading}`);
      ok('T1.13 narrative has body_markdown', !!r.body.narrative[0].body_markdown, `body_len=${r.body.narrative[0].body_markdown?.length}`);
    }
    ok('T1.14 has timeline array', Array.isArray(r.body?.timeline), `len=${r.body?.timeline?.length}`);
    ok('T1.15 has related array', Array.isArray(r.body?.related), `len=${r.body?.related?.length}`);
    ok('T1.16 has sources object', !!r.body?.sources, `count=${r.body?.sources?.count}`);
    ok('T1.17 has citations object', !!r.body?.citations, 'check');
    if (r.body?.citations) {
      ok('T1.18 citations has bibtex_url', !!r.body.citations.bibtex_url, 'check');
      ok('T1.19 citations has ris_url', !!r.body.citations.ris_url, 'check');
      ok('T1.20 citations has csljson_url', !!r.body.citations.csljson_url, 'check');
    }
    ok('T1.21 has revisions object', !!r.body?.revisions, 'check');
    ok('T1.22 has on_this_page array', Array.isArray(r.body?.on_this_page), `len=${r.body?.on_this_page?.length}`);
  }

  // ----- T2: 404 for missing person -----
  {
    const r = await fetchJson(`${BASE}/v1/people/no-such-person/biography`);
    ok('T2.1 404 for missing slug', r.status === 404, `status=${r.status}`);
    ok('T2.2 has PERSON_NOT_FOUND code', r.body?.error?.code === 'PERSON_NOT_FOUND', `code=${r.body?.error?.code}`);
  }

  // ----- T3: all 5 top entities have biography -----
  {
    for (const slug of ['donald-trump', 'frida-kahlo', 'ar-rahman', 'sachin-tendulkar', 'aishwarya-rai']) {
      const r = await fetchJson(`${BASE}/v1/people/${slug}/biography`);
      ok(`T3.${slug} biography 200`, r.status === 200, `status=${r.status}`);
      ok(`T3.${slug} has >= 2 narrative`, (r.body?.narrative?.length || 0) >= 2, `n=${r.body?.narrative?.length}`);
      ok(`T3.${slug} has >= 1 fact`, (r.body?.quick_facts?.length || 0) >= 1, `n=${r.body?.quick_facts?.length}`);
    }
  }

  // ----- T4: sections endpoint -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/sections`);
    ok('T4.1 /v1/people/{slug}/sections 200', r.status === 200, `status=${r.status}`);
    ok('T4.2 has entity_id', !!r.body?.entity_id, `eid=${r.body?.entity_id}`);
    ok('T4.3 has sections array', Array.isArray(r.body?.sections), `len=${r.body?.sections?.length}`);
    ok('T4.4 has on_this_page', Array.isArray(r.body?.on_this_page), `len=${r.body?.on_this_page?.length}`);
  }

  // ----- T5: single section -----
  {
    const r = await fetchJson(`${BASE}/v1/sections/cs_trump_early_life`);
    ok('T5.1 /v1/sections/{id} 200', r.status === 200, `status=${r.status}`);
    ok('T5.2 has heading', r.body?.heading === 'Early Life', `heading=${r.body?.heading}`);
    ok('T5.3 has body_markdown', !!r.body?.body_markdown, `len=${r.body?.body_markdown?.length}`);
    ok('T5.4 has reading_level', r.body?.reading_level === 'general', `rl=${r.body?.reading_level}`);
  }

  // ----- T6: quick facts endpoint -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/quick-facts`);
    ok('T6.1 /v1/people/{slug}/quick-facts 200', r.status === 200, `status=${r.status}`);
    ok('T6.2 has entity_id', !!r.body?.entity_id, `eid=${r.body?.entity_id}`);
    ok('T6.3 has facts array', Array.isArray(r.body?.facts), `len=${r.body?.facts?.length}`);
    // Quick facts should include Born/Died labels
    const labels = (r.body?.facts || []).map(f => f.label);
    ok('T6.4 has Born fact', labels.includes('Born'), `labels=${labels.join(',')}`);
  }

  // ----- T7: timeline in biography -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const timeline = r.body?.timeline || [];
    ok('T7.1 timeline has events', timeline.length > 0, `n=${timeline.length}`);
    if (timeline[0]) {
      ok('T7.2 timeline event has year', typeof timeline[0].year === 'number', `year=${timeline[0].year}`);
      ok('T7.3 timeline event has event_type', !!timeline[0].event_type, `et=${timeline[0].event_type}`);
    }
  }

  // ----- T8: citations download URLs work -----
  {
    const r1 = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const c1 = r1.body?.citations;
    if (c1?.csljson_url) {
      // csljson_url is a relative path; build full URL
      const fullUrl = c1.csljson_url.startsWith('http') ? c1.csljson_url : BASE + c1.csljson_url;
      const r2 = await fetchJson(fullUrl);
      ok('T8.1 csljson download URL works', r2.status === 200, `status=${r2.status}`);
    }
  }

  // ----- T9: on_this_page matches narrative -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const np = r.body?.on_this_page || [];
    const nar = r.body?.narrative || [];
    ok('T9.1 on_this_page count matches narrative', np.length === nar.length, `np=${np.length} nar=${nar.length}`);
    if (np[0] && nar[0]) {
      ok('T9.2 first on_this_page matches first narrative', np[0].id === nar[0].id, 'check');
    }
  }

  // ----- T10: 404 for missing section -----
  {
    const r = await fetchJson(`${BASE}/v1/sections/cs_does_not_exist`);
    ok('T10.1 /v1/sections/{id} 404 for missing', r.status === 404, `status=${r.status}`);
  }

  // ----- Summary -----
  console.log(`\n=== v10 smoke summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (failures.length) {
    console.error(`failures: ${failures.join(', ')}`);
    process.exit(1);
  }
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
