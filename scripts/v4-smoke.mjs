#!/usr/bin/env node
/**
 * Smoke test v4 — clickable link URLs + related-people carousel
 *
 * Verifies:
 * 1. Every linkable fact on the person detail has a *_url field
 * 2. The /related endpoint returns ranked results for each facet
 * 3. Each related result has person_url, profession_url, country_url
 */

const BASE = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

async function check(name, path, predicate, opts = {}) {
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
    const pass = predicate({ status, body });
    console.log(`${pass ? '✓' : '✗'} ${name.padEnd(64)} ${status}`);
    return pass;
  } catch (err) {
    console.log(`✗ ${name.padEnd(64)} ERROR: ${err.message}`);
    return false;
  }
}

async function main() {
  console.log('=== v4 Smoke Test: clickable link URLs + related carousel ===\n');
  // Reset state so previous runs don't leave Frida unpublished
  await fetch(`${BASE}/v1/admin/people/ent_frida-kahlo/publish`, { method: 'POST' }).catch(() => {});
  await fetch(`${BASE}/v1/admin/people/ent_ar-rahman/publish`, { method: 'POST' }).catch(() => {});
  let pass = 0, fail = 0;
  const t = async (...args) => ((await check(...args)) ? pass++ : fail++);

  // === 1. Clickable link URLs on the person detail ===
  console.log('--- 1. Clickable link URLs on /v1/people/frida-kahlo ---');

  await t('Painter has profession_url', '/v1/people/frida-kahlo',
    ({ body }) => body.professions?.some((p) => p.profession_name === 'Painter' && p.profession_url === '/v1/professions/painter'));

  await t('Mexican has country_url', '/v1/people/frida-kahlo',
    ({ body }) => body.citizenships?.some((c) => c.country_code === 'MX' && c.country_url === '/v1/countries/MX'));

  await t('Diego Rivera has related_person_url', '/v1/people/frida-kahlo',
    ({ body }) => body.relations?.some((r) => r.related_person_name?.includes('Diego') && r.related_person_url === '/v1/people/diego-rivera'));

  await t('André Breton has related_person_url', '/v1/people/frida-kahlo',
    ({ body }) => body.relations?.some((r) => r.related_person_name?.includes('Andr') && r.related_person_url?.startsWith('/v1/people/')));

  await t('Generation has url', '/v1/people/frida-kahlo',
    ({ body }) => body.derived_attributes?.generation?.url === '/v1/generations/greatest');

  await t('Star sign has url', '/v1/people/frida-kahlo',
    ({ body }) => body.derived_attributes?.star_sign?.url === '/v1/star-signs/cancer');

  await t('Chinese zodiac has url', '/v1/people/frida-kahlo',
    ({ body }) => body.derived_attributes?.chinese_zodiac?.url === '/v1/chinese-zodiacs/goat');

  await t('Birth year has _links.birth_year', '/v1/people/frida-kahlo',
    ({ body }) => body._links?.birth_year === '/v1/years/1907');

  await t('Death year has _links.death_year', '/v1/people/frida-kahlo',
    ({ body }) => body._links?.death_year === '/v1/years/1954');

  // === 2. Related-people endpoint ===
  console.log('\n--- 2. /v1/people/{slug}/related endpoint ---');

  await t('Default: returns 1+ related', '/v1/people/frida-kahlo/related',
    ({ status, body }) => status === 200 && body.related && Array.isArray(body.related) && body.related.length > 0);

  await t('facet=profession: returns Diego Rivera', '/v1/people/frida-kahlo/related?facet=profession',
    ({ body }) => body.related?.some((p) => p.canonical_name === 'Diego Rivera' && p.relevance_breakdown?.includes('same_profession')));

  await t('facet=country: returns 4+ Mexican people', '/v1/people/frida-kahlo/related?facet=country',
    ({ body }) => body.related?.length >= 4 && body.related.every((p) => p.country === 'Mexico'));

  await t('facet=generation: returns 1+ greatest-gen people', '/v1/people/frida-kahlo/related?facet=generation',
    ({ body }) => body.related?.length >= 1);

  await t('facet=era: returns people with overlapping active years', '/v1/people/frida-kahlo/related?facet=era',
    ({ body }) => body.related?.length >= 1);

  await t('facet=star_sign: returns cancers', '/v1/people/frida-kahlo/related?facet=star_sign',
    ({ body }) => body.related?.length >= 1);

  await t('facet=chinese_zodiac: returns goats', '/v1/people/frida-kahlo/related?facet=chinese_zodiac',
    ({ body }) => body.related?.length >= 1);

  // === 3. Each related person has the right link fields ===
  console.log('\n--- 3. Related people have URLs ---');

  await t('Each related has person_url', '/v1/people/frida-kahlo/related?facet=country',
    ({ body }) => body.related?.every((p) => p.person_url?.startsWith('/v1/people/')));

  await t('Each related with profession has profession_url', '/v1/people/frida-kahlo/related?facet=country',
    ({ body }) => body.related?.filter((p) => p.profession).every((p) => p.profession_url?.startsWith('/v1/professions/')));

  await t('Each related with country has country_url', '/v1/people/frida-kahlo/related?facet=country',
    ({ body }) => body.related?.filter((p) => p.country).every((p) => p.country_url?.startsWith('/v1/countries/')));

  // === 4. Sort options ===
  console.log('\n--- 4. Sort options ---');

  await t('sort=birth_year_asc: oldest first', '/v1/people/frida-kahlo/related?facet=country&sort=birth_year_asc&limit=10',
    ({ body }) => {
      const years = body.related?.map((p) => p.birth_year).filter((y) => y != null);
      return years.every((y, i) => i === 0 || y >= years[i - 1]);
    });

  await t('sort=birth_year_desc: newest first', '/v1/people/frida-kahlo/related?facet=country&sort=birth_year_desc&limit=10',
    ({ body }) => {
      const years = body.related?.map((p) => p.birth_year).filter((y) => y != null);
      return years.every((y, i) => i === 0 || y <= years[i - 1]);
    });

  await t('sort=relevance: highest score first', '/v1/people/frida-kahlo/related?facet=country&sort=relevance&limit=10',
    ({ body }) => {
      const scores = body.related?.map((p) => p.relevance_score);
      return scores.every((s, i) => i === 0 || s <= scores[i - 1]);
    });

  // === 5. Relevance score breakdown ===
  console.log('\n--- 5. Relevance score breakdown ---');

  await t('Diego Rivera has same_profession signal', '/v1/people/frida-kahlo/related?facet=profession',
    ({ body }) => body.related?.find((p) => p.canonical_name === 'Diego Rivera')?.relevance_breakdown?.includes('same_profession'));

  await t('Octavio Paz has same_country + same_generation', '/v1/people/frida-kahlo/related?facet=country',
    ({ body }) => {
      const p = body.related?.find((p) => p.canonical_name === 'Octavio Paz');
      return p?.relevance_breakdown?.includes('same_country') && p?.relevance_breakdown?.includes('same_generation');
    });

  // === 6. Photos in carousel ===
  console.log('\n--- 6. Photo support in related ---');

  await t('Each related has hero_image_url field (may be null)', '/v1/people/frida-kahlo/related?facet=country',
    ({ body }) => body.related?.every((p) => 'hero_image_url' in p && 'hero_image_rights' in p));

  await t('Frida returns image (she has hero image)', '/v1/people/octavio-paz/related?facet=country',
    async ({ body }) => {
      // Get people related to Octavio Paz that include Frida (Mexican, painter, greatest gen)
      const frida = body.related?.find((p) => p.slug === 'frida-kahlo');
      return frida && frida.hero_image_url && frida.hero_image_url.includes('wikimedia');
    });

  // === 7. Error cases ===
  console.log('\n--- 7. Error cases ---');

  await t('404 for non-existent slug', '/v1/people/nonexistent/related', ({ status }) => status === 404);

  console.log(`\n=== Summary: ${pass} pass, ${fail} fail ===`);
  process.exit(fail > 0 ? 1 : 0);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
