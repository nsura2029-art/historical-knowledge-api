#!/usr/bin/env node
/**
 * Smoke test v2 — covers all new endpoints added for the 1+1 deep-dive experiment.
 */

const BASE = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

async function test(name, path, expectKeys, expectStatus, opts = {}) {
  try {
    const init = {};
    if (opts.method && opts.method !== 'GET') {
      init.method = opts.method;
      if (opts.body) {
        init.headers = { 'Content-Type': 'application/json' };
        init.body = JSON.stringify(opts.body);
      }
    }
    const r = await fetch(`${BASE}${path}`, init);
    const status = r.status;
    const text = await r.text();
    let body;
    try { body = JSON.parse(text); } catch { body = text.slice(0, 200); }
    const statusOk = expectStatus ? status === expectStatus : status >= 200 && status < 300;
    const hasKeys = !expectKeys || expectKeys.every((k) => body && k in body);
    const ok = statusOk && hasKeys;
    const marker = ok ? '✓' : '✗';
    const detail = hasKeys
      ? (body.total !== undefined ? `total=${body.total}` : body.total_count !== undefined ? `total_count=${body.total_count}` : body.data ? `data.length=${body.data.length}` : body.count !== undefined ? `count=${body.count}` : body.canonical_name ? `name=${body.canonical_name}` : body.query ? `query=${body.query}` : body.id ? `id=${body.id}` : '')
      : `missing keys: ${expectKeys?.filter((k) => !(body && k in body)).join(', ')}`;
    console.log(`${marker} ${name.padEnd(60)} ${status} ${detail}`);
    return ok;
  } catch (err) {
    console.log(`✗ ${name.padEnd(60)} ERROR: ${err.message}`);
    return false;
  }
}

async function main() {
  console.log('=== Famous-People v2 Smoke Test (1+1 deep-dive) ===\n');
  let pass = 0, fail = 0;
  const t = async (...args) => ((await test(...args)) ? pass++ : fail++);

  // Existing endpoints
  await t('GET /v1/health', '/v1/health', ['status']);
  await t('GET /v1/people/frida-kahlo', '/v1/people/frida-kahlo', ['canonical_name', 'cause_of_death', 'industry', 'era_slug']);
  await t('GET /v1/people/ar-rahman', '/v1/people/ar-rahman', ['canonical_name', 'industry', 'era_slug']);
  await t('GET /v1/people?limit=3', '/v1/people?limit=3', ['data', 'total_count']);
  await t('GET /v1/facets/generations', '/v1/facets/generations', ['data', 'total']);

  // Option 1: Search
  await t('GET /v1/search?q=frida', '/v1/search?q=frida', ['query', 'results', 'total']);
  await t('GET /v1/search?q=kahlo (alias match)', '/v1/search?q=kahlo', ['query', 'results']);
  await t('GET /v1/search?q=magdalena (birth name)', '/v1/search?q=magdalena', ['query', 'results']);
  await t('GET /v1/search?q=rahman', '/v1/search?q=rahman', ['query', 'results']);
  await t('GET /v1/search?q=oscar (work/award match)', '/v1/search?q=oscar', ['query', 'results']);
  await t('GET /v1/search?q=Q5588 (Wikidata QID)', '/v1/search?q=Q5588', ['query', 'results']);
  await t('GET /v1/search?q= (empty, 400)', '/v1/search?q=', ['error'], 400);

  // Option 2: Entity detail pages
  await t('GET /v1/professions/painter', '/v1/professions/painter', ['profession', 'people']);
  await t('GET /v1/professions/composer', '/v1/professions/composer', ['profession', 'people']);
  await t('GET /v1/generations/greatest', '/v1/generations/greatest', ['generation', 'people', 'yearRange']);
  await t('GET /v1/generations/boomer', '/v1/generations/boomer', ['generation', 'people']);
  await t('GET /v1/star-signs/cancer', '/v1/star-signs/cancer', ['starSign', 'people']);
  await t('GET /v1/star-signs/leo', '/v1/star-signs/leo', ['starSign', 'people']);
  await t('GET /v1/chinese-zodiacs/goat', '/v1/chinese-zodiacs/goat', ['zodiac', 'people']);
  await t('GET /v1/chinese-zodiacs/ox', '/v1/chinese-zodiacs/ox', ['zodiac', 'people']);
  await t('GET /v1/countries/MX', '/v1/countries/MX', ['country', 'citizens', 'birthPeople']);
  await t('GET /v1/countries/IN', '/v1/countries/IN', ['country', 'citizens']);
  await t('GET /v1/causes-of-death/pulmonary-embolism', '/v1/causes-of-death/pulmonary-embolism', ['cause', 'people']);
  await t('GET /v1/awards/miss-world (real award in data)', '/v1/awards/miss-world', ['award']);
  await t('GET /v1/awards/iruvar (real work in data)', '/v1/awards/iruvar', ['award']);
  await t('GET /v1/works/hum-dil-de-chuke-sanam', '/v1/works/hum-dil-de-chuke-sanam', ['work']);
  await t('GET /v1/places/mexico', '/v1/places/mexico', ['place']);

  // Option 3: Admin endpoints
  await t('POST /v1/admin/people/{id}/publish (re-publish frida)', '/v1/admin/people/ent_frida-kahlo/publish', ['status'], 200, { method: 'POST' });
  await t('POST /v1/admin/people/{id}/unpublish', '/v1/admin/people/ent_frida-kahlo/unpublish', ['status'], 200, { method: 'POST' });
  await t('POST /v1/admin/people/{id}/recompute-derived (rahman)', '/v1/admin/people/ent_ar-rahman/recompute-derived', ['recomputed'], 200, { method: 'POST' });
  await t('POST /v1/admin/people/{id}/compute-quality (frida)', '/v1/admin/people/ent_frida-kahlo/compute-quality', ['scores'], 200, { method: 'POST' });
  await t('GET /v1/admin/quality-gates/{id} (frida)', '/v1/admin/quality-gates/ent_frida-kahlo', ['status'], 200);

  // Option 4: Missing facets
  await t('GET /v1/facets/causes-of-death', '/v1/facets/causes-of-death', ['data', 'total']);
  await t('GET /v1/facets/eras', '/v1/facets/eras', ['data', 'total']);
  await t('GET /v1/facets/awards', '/v1/facets/awards', ['data', 'total']);
  await t('GET /v1/facets/industries', '/v1/facets/industries', ['data', 'total']);
  await t('GET /v1/facets/fame-categories', '/v1/facets/fame-categories', ['data', 'total']);

  // 404 cases
  await t('GET /v1/people/nonexistent (404)', '/v1/people/nonexistent', ['error'], 404);
  await t('GET /v1/professions/nonexistent (404)', '/v1/professions/nonexistent', ['error'], 404);
  await t('GET /v1/places/nonexistent (404)', '/v1/places/nonexistent', ['error'], 404);

  console.log(`\n=== Summary: ${pass} pass, ${fail} fail ===`);
  process.exit(fail > 0 ? 1 : 0);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
