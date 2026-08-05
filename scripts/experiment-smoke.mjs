#!/usr/bin/env node
/**
 * Smoke test for the famous-people experiment API.
 * Hits the dev worker and verifies each endpoint.
 */

const BASE = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

async function test(name, path, expectKeys, expectStatus) {
  try {
    const r = await fetch(`${BASE}${path}`);
    const status = r.status;
    const text = await r.text();
    let body;
    try { body = JSON.parse(text); } catch { body = text.slice(0, 200); }
    const statusOk = expectStatus ? status === expectStatus : status >= 200 && status < 300;
    const hasKeys = !expectKeys || expectKeys.every((k) => body && k in body);
    const ok = statusOk && hasKeys;
    const marker = ok ? '✓' : '✗';
    const detail = hasKeys
      ? (body.total_count !== undefined ? `total_count=${body.total_count}` : body.data ? `data.length=${body.data.length}` : body.id ? `id=${body.id}` : body.error ? `error.code=${body.error.code}` : '')
      : `missing keys: ${expectKeys?.filter((k) => !(body && k in body)).join(', ')}`;
    console.log(`${marker} ${name.padEnd(50)} ${status} ${detail}`);
    return ok;
  } catch (err) {
    console.log(`✗ ${name.padEnd(50)} ERROR: ${err.message}`);
    return false;
  }
}

async function main() {
  console.log('=== Famous-People Experiment API — Smoke Test ===\n');
  let pass = 0, fail = 0;
  const t = async (...args) => ((await test(...args)) ? pass++ : fail++);

  await t('GET /v1/health', '/v1/health', ['status', 'checks']);
  await t('GET /v1/version', '/v1/version', ['version']);
  await t('GET /v1/people?limit=5', '/v1/people?limit=5', ['data', 'total_count']);
  await t('GET /v1/people?generation=boomer', '/v1/people?generation=boomer&limit=5', ['data', 'total_count']);
  await t('GET /v1/people?gender=female', '/v1/people?gender=female&limit=5', ['data', 'total_count']);
  await t('GET /v1/people?living=false', '/v1/people?living=false&limit=5', ['data', 'total_count']);
  await t('GET /v1/people?fame_category=historical_figure', '/v1/people?fame_category=historical_figure&limit=5', ['data', 'total_count']);
  await t('GET /v1/people?profession=painter', '/v1/people?profession=painter', ['data', 'total_count']);
  await t('GET /v1/people/frida-kahlo', '/v1/people/frida-kahlo', ['canonical_name', 'birth', 'citizenships']);
  await t('GET /v1/people/carlos-slim', '/v1/people/carlos-slim', ['canonical_name', 'birth']);
  await t('GET /v1/people/lee-kuan-yew', '/v1/people/lee-kuan-yew', ['canonical_name', 'birth']);
  await t('GET /v1/people/rumi', '/v1/people/rumi', ['canonical_name', 'birth']);
  await t('GET /v1/people/mahatma-gandhi', '/v1/people/mahatma-gandhi', ['canonical_name', 'birth']);
  await t('GET /v1/people/narendra-modi', '/v1/people/narendra-modi', ['canonical_name', 'birth']);
  await t('GET /v1/people?sort=birth_year_asc', '/v1/people?sort=birth_year_asc&limit=5', ['data']);
  await t('GET /v1/facets/professions', '/v1/facets/professions', ['data', 'total']);
  await t('GET /v1/facets/countries', '/v1/facets/countries', ['data', 'total']);
  await t('GET /v1/facets/generations', '/v1/facets/generations', ['data', 'total']);
  await t('GET /v1/facets/star-signs', '/v1/facets/star-signs', ['data', 'total']);
  await t('GET /v1/facets/chinese-zodiacs', '/v1/facets/chinese-zodiacs', ['data', 'total']);
  await t('GET /v1/people/nonexistent (404 expected)', '/v1/people/nonexistent', ['error'], 404);

  console.log(`\n=== Summary: ${pass} pass, ${fail} fail ===`);
  process.exit(fail > 0 ? 1 : 0);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
