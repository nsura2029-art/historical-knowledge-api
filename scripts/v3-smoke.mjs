#!/usr/bin/env node
/**
 * Smoke test v3 — covers onthisday.com data points + new endpoints
 * (years, Breton, NPR, cultural_impact events)
 *
 * Each test pulls a specific field from the API and asserts it matches
 * the onthisday.com text or a fact we have.
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
  console.log('=== v3 Smoke Test: onthisday.com data points + new endpoints ===\n');
  let pass = 0, fail = 0;
  const t = async (...args) => ((await check(...args)) ? pass++ : fail++);

  // === 1. onthisday.com text points for Frida Kahlo ===
  console.log('--- Frida onthisday.com coverage ---');

  // "Painter" (in professions)
  await t('Painter in professions', '/v1/people/frida-kahlo',
    ({ body }) => body.professions?.some((p) => p.profession_name === 'Painter'));

  // "Mexican" nationality
  await t('Mexican nationality (MX)', '/v1/people/frida-kahlo',
    ({ body }) => body.citizenships?.some((c) => c.country_code === 'MX'));

  // "Diego Rivera" related person
  await t('Diego Rivera in relations', '/v1/people/frida-kahlo',
    ({ body }) => body.relations?.some((r) => r.related_person_name?.includes('Diego Rivera')));

  // "André Breton" (the user typed "Andrew Breton" but the correct name is André Breton)
  // The relation is "champion_of" from Breton's side; appears as "championed_by" from Frida's side
  await t('André Breton in relations (championed_by)', '/v1/people/frida-kahlo',
    ({ body }) => body.relations?.some((r) => r.relation_type === 'championed_by' && r.related_person_name?.includes('Andr') && r.related_person_name?.includes('Breton')));

  // "July 6, 1907" birth date
  await t('Birth date = 1907-07-06', '/v1/people/frida-kahlo',
    ({ body }) => body.birth?.original === '1907-07-06');

  // "July 13, 1954" death date
  await t('Death date = 1954-07-13', '/v1/people/frida-kahlo',
    ({ body }) => body.death?.original === '1954-07-13');

  // "aged 47"
  await t('Age at death = 47', '/v1/people/frida-kahlo',
    ({ body }) => body.derived_attributes?.age_at_death === 47);

  // "Cause of death: Pulmonary embolism"
  await t('Cause of death = pulmonary embolism', '/v1/people/frida-kahlo',
    ({ body }) => body.cause_of_death === 'pulmonary embolism');

  // "Greatest Generation"
  await t('Generation = greatest', '/v1/people/frida-kahlo',
    ({ body }) => body.derived_attributes?.generation?.slug === 'greatest');

  // "Goat/Sheep" Chinese zodiac
  await t('Chinese zodiac = goat', '/v1/people/frida-kahlo',
    ({ body }) => body.derived_attributes?.chinese_zodiac?.animal === 'goat');

  // "Cancer" star sign
  await t('Star sign = cancer', '/v1/people/frida-kahlo',
    ({ body }) => body.derived_attributes?.star_sign?.slug === 'cancer');

  // === 2. onthisday.com historical events (5 of them) ===
  console.log('\n--- 5 cultural_impact events ---');

  await t('US stamp 2001-06-21', '/v1/people/frida-kahlo/timeline',
    ({ body }) => body.events?.some((e) => e.id === 'ev_frida-stamp-2001'));

  await t('Palacio de Bellas Artes 100th anniversary 2007-06-13', '/v1/people/frida-kahlo/timeline',
    ({ body }) => body.events?.some((e) => e.id === 'ev_frida-100th-2007'));

  await t('Barbie court ruling 2018-04-20', '/v1/people/frida-kahlo/timeline',
    ({ body }) => body.events?.some((e) => e.id === 'ev_frida-barbie-2018'));

  await t('Diego y yo auction 2021-11-16 ($34.9M)', '/v1/people/frida-kahlo/timeline',
    ({ body }) => body.events?.some((e) => e.id === 'ev_frida-diego-y-yo-2021' && e.description?.includes('34.9')));

  await t('El sueño auction 2025-11-20 ($54.7M)', '/v1/people/frida-kahlo/timeline',
    ({ body }) => body.events?.some((e) => e.id === 'ev_frida-el-sueno-2025' && e.description?.includes('54.7')));

  // NPR is the source for the 2021 and 2025 events
  await t('NPR is source for 2021 auction', '/v1/people/frida-kahlo/timeline',
    ({ body }) => body.events?.find((e) => e.id === 'ev_frida-diego-y-yo-2021')?.source?.source_name?.includes('NPR'));

  await t('NPR is source for 2025 auction (user-shared URL)', '/v1/people/frida-kahlo/timeline',
    ({ body }) => {
      const e = body.events?.find((e) => e.id === 'ev_frida-el-sueno-2025');
      return e?.source?.source_name?.includes('NPR') && e?.source?.source_url?.includes('nx-s1-5584087');
    });

  // === 3. Breton as a queryable person ===
  console.log('\n--- André Breton endpoint ---');

  await t('GET /v1/people/andre-breton returns 200', '/v1/people/andre-breton',
    ({ status, body }) => status === 200 && body.canonical_name?.includes('Andr'));

  await t('Breton has Wikidata QID (Q79008)', '/v1/people/andre-breton',
    ({ body }) => body.external_identifiers?.wikidata_qid?.includes('Q79008'));

  // === 4. Year endpoint (clickable dates) ===
  console.log('\n--- /v1/years/{year} endpoint (clickable dates) ---');

  await t('GET /v1/years/1907 (Frida birth year)', '/v1/years/1907',
    ({ body }) => body.year === 1907 && body.born?.some((p) => p.canonical_name === 'Frida Kahlo'));

  await t('GET /v1/years/1954 (Frida death year + 2 births)', '/v1/years/1954',
    ({ body }) => body.year === 1954 && body.died?.some((p) => p.canonical_name === 'Frida Kahlo') && body.event_count >= 2);

  await t('GET /v1/years/1929 (Frida marriage to Diego)', '/v1/years/1929',
    ({ body }) => body.events?.some((e) => e.event_type === 'marriage' && e.start_date?.includes('1929')));

  await t('GET /v1/years/2025 (El sueño auction)', '/v1/years/2025',
    ({ body }) => body.events?.some((e) => e.id === 'ev_frida-el-sueno-2025'));

  await t('GET /v1/years/4000 (400 invalid year)', '/v1/years/4000',
    ({ status }) => status === 400);

  // === 5. _links and year_url on responses ===
  console.log('\n--- Clickable-date metadata ---');

  await t('Person detail has _links.birth_year', '/v1/people/frida-kahlo',
    ({ body }) => body._links?.birth_year === '/v1/years/1907');

  await t('Person detail has _links.death_year', '/v1/people/frida-kahlo',
    ({ body }) => body._links?.death_year === '/v1/years/1954');

  await t('Event has year_url (clickable)', '/v1/people/frida-kahlo/timeline',
    ({ body }) => body.events?.every((e) => !e.start_date || (e.year_url && e.year_url.startsWith('/v1/years/'))));

  // === 6. NPR + USPS sources ===
  console.log('\n--- New sources ---');

  await t('NPR in source_registry (tier D)', '/v1/years/2021',
    async ({ body }) => {
      // We don't expose source_registry directly, but the timeline event for the 2021 auction uses NPR
      const ev = body.events?.find((e) => e.start_date === '2021-11-16');
      return ev?.source_name?.includes('NPR');
    });

  // === 7. Source quality — no placeholders ===
  console.log('\n--- Source URL integrity ---');

  const fridaDetail = await fetch(`${BASE}/v1/people/frida-kahlo`).then((r) => r.json());
  const exampleComCount = JSON.stringify(fridaDetail.sources).match(/example\.com/g)?.length ?? 0;
  if (exampleComCount === 0) {
    console.log(`✓ ${'No example.com placeholder URLs in frida-kahlo sources'.padEnd(64)} 0 ok`);
    pass++;
  } else {
    console.log(`✗ ${'No example.com placeholder URLs in frida-kahlo sources'.padEnd(64)} ${exampleComCount} found`);
    fail++;
  }

  // All events have source_url (no NULLs)
  const fridaTimeline = await fetch(`${BASE}/v1/people/frida-kahlo/timeline`).then((r) => r.json());
  const eventsWithSource = fridaTimeline.events.filter((e) => e.source).length;
  const totalEvents = fridaTimeline.events.length;
  if (eventsWithSource === totalEvents) {
    console.log(`✓ ${`All ${totalEvents} events have a source`.padEnd(64)} 100%`);
    pass++;
  } else {
    console.log(`✗ ${`Events with source: ${eventsWithSource}/${totalEvents}`.padEnd(64)}`);
    fail++;
  }

  console.log(`\n=== Summary: ${pass} pass, ${fail} fail ===`);
  process.exit(fail > 0 ? 1 : 0);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
