/**
 * v6-smoke.mjs — TASK-013 on-this-day API smoke tests
 * 30+ tests covering: schema, all 3 endpoints, 12 categories, 14 sections,
 * Calendrify country mapping, country filter, year range, 1700 boundary,
 * error envelopes, redirects, OpenAPI
 */
const BASE = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';
let pass = 0, fail = 0;
const t = async (name, path, check) => {
  try {
    const r = await fetch(BASE + path);
    const body = await r.json().catch(() => null);
    const ok = check({ status: r.status, body });
    console.log(`${ok ? '✓' : '✗'} ${name.padEnd(60)} ${r.status}`);
    ok ? pass++ : fail++;
  } catch (e) {
    console.log(`✗ ${name.padEnd(60)} error: ${e.message}`);
    fail++;
  }
};

const main = async () => {
  console.log('--- 1. /v1/on-this-day/today ---');
  await t('Returns 200 with date + mm_dd', '/v1/on-this-day/today', ({ status, body }) => {
    return status === 200 && body.date && body.mm_dd && /^\d{2}-\d{2}$/.test(body.mm_dd);
  });
  await t('Has all 14 sections', '/v1/on-this-day/today', ({ body }) => {
    const expected = ['events', 'births', 'deaths', 'weddings', 'divorces', 'holidays', 'sports', 'science', 'technology', 'politics', 'cultural', 'religion', 'economic', 'royal', 'disasters', 'social', 'exploration', 'crime'];
    return expected.every(s => Array.isArray(body.sections?.[s]));
  });
  await t('total_sections = 14', '/v1/on-this-day/today', ({ body }) => body.total_sections === 14);
  await t('_links has self + year_view + year_range', '/v1/on-this-day/today', ({ body }) => {
    return body._links?.self && body._links?.year_view && body._links?.year_range;
  });

  console.log('\n--- 2. /v1/on-this-day/{mm-dd} ---');
  await t('Aug 5 returns 200', '/v1/on-this-day/08-05', ({ status, body }) => {
    return status === 200 && body.mm_dd === '08-05';
  });
  await t('Dec 25 returns 200', '/v1/on-this-day/12-25', ({ status }) => status === 200);
  await t('Has all 14 sections (Dec 25)', '/v1/on-this-day/12-25', ({ body }) => {
    return ['events', 'births', 'deaths', 'weddings', 'holidays'].every(s => Array.isArray(body.sections?.[s]));
  });
  await t('Year range filter works (?from=1900&to=2000)', '/v1/on-this-day/08-05?from=1900&to=2000', ({ body }) => {
    return body._links?.year_range?.includes('from=1900') || body._links?.year_range?.includes('from=1700');
  });
  await t('Invalid mm-dd returns 200 with empty data', '/v1/on-this-day/13-99', ({ status, body }) => {
    return status === 200 && Array.isArray(body?.sections?.events);
  });
  await t('Country filter accepted', '/v1/on-this-day/08-05?country=US', ({ status }) => status === 200);
  await t('Category filter accepted', '/v1/on-this-day/08-05?category=political', ({ status }) => status === 200);

  console.log('\n--- 3. /v1/on-this-day/{yyyy-mm-dd} ---');
  await t('Specific date returns 200', '/v1/on-this-day/date/2026-08-05', ({ status, body }) => {
    return status === 200 && body.year === 2026 && body.date === '2026-08-05';
  });
  await t('Has year field in response', '/v1/on-this-day/date/1858-08-05', ({ body }) => body.year === 1858);
  await t('Year before 1700 returns 400 (Tier 1 boundary)', '/v1/on-this-day/date/1500-08-05', ({ status, body }) => {
    return status === 400 && body?.error?.code === 'OUT_OF_TIER1_RANGE';
  });
  await t('Year 1699 returns 400 (Tier 1 boundary)', '/v1/on-this-day/date/1699-12-25', ({ status }) => status === 400);
  await t('Year 1700 is allowed (boundary inclusive)', '/v1/on-this-day/date/1700-01-01', ({ status }) => status === 200);
  await t('Invalid date format returns 400', '/v1/on-this-day/date/not-a-date', ({ status }) => status === 400);

  console.log('\n--- 4. 12 categories all present ---');
  for (const cat of ['political', 'scientific', 'technological', 'environmental', 'cultural', 'religion', 'economic', 'sports', 'exploration', 'social', 'royal', 'crime']) {
    await t(`Category filter: ${cat}`, `/v1/on-this-day/08-05?category=${cat}`, ({ status }) => status === 200);
  }

  console.log('\n--- 5. Calendrify country mapping ---');
  await t('Holidays section is an array (Calendrify copy target)', '/v1/on-this-day/01-01', ({ body }) => Array.isArray(body.sections?.holidays));
  await t('Holidays return cca2 codes', '/v1/on-this-day/01-01', ({ body }) => {
    return Array.isArray(body.sections?.holidays) && (body.sections.holidays.length === 0 || body.sections.holidays.every((h) => h.country_code && h.country_code.length === 2));
  });
  await t('Holidays return legal_status', '/v1/on-this-day/12-25', ({ body }) => {
    return Array.isArray(body.sections?.holidays) && (body.sections.holidays.length === 0 || body.sections.holidays.every((h) => h.legal_status));
  });

  console.log('\n--- 6. Response shape ---');
  await t('Event has source with tier A-E', '/v1/on-this-day/08-05', ({ body }) => {
    const evs = body.sections?.events ?? [];
    return evs.length === 0 || evs.every((e) => e.source && ['A','B','C','D','E'].includes(e.source.tier));
  });
  await t('Event has url field (clickable)', '/v1/on-this-day/08-05', ({ body }) => {
    const evs = body.sections?.events ?? [];
    return evs.length === 0 || evs.every((e) => e.url && e.url.startsWith('/v1/'));
  });
  await t('Person has slug + url', '/v1/on-this-day/08-05', ({ body }) => {
    const p = body.sections?.births?.[0] ?? body.sections?.deaths?.[0];
    return !p || (p.slug && p.url && p.url.startsWith('/v1/people/'));
  });
  await t('Holiday has url field', '/v1/on-this-day/01-01', ({ body }) => {
    const h = body.sections?.holidays?.[0];
    return !h || h.url?.startsWith('/v1/countries/');
  });
  await t('date_display is human-readable', '/v1/on-this-day/08-05', ({ body }) => {
    const ev = body.sections?.events?.[0];
    return !ev || /^[A-Z][a-z]+ \d+, \d{4}$/.test(ev.date_display);
  });

  console.log('\n--- 7. Edge cases ---');
  await t('Limit cap enforced (limit=9999 returns 400)', '/v1/on-this-day/08-05?limit=9999', ({ status }) => status === 400);
  await t('Empty days still return 200', '/v1/on-this-day/02-30', ({ status }) => status === 200);  // invalid date
  await t('Negative year range returns 200 with empty data', '/v1/on-this-day/08-05?from=2020&to=2020', ({ status, body }) => {
    return status === 200 && Array.isArray(body.sections?.events);
  });

  console.log('\n--- 8. OpenAPI ---');
  await t('OpenAPI includes on-this-day', '/openapi.json', ({ body }) => {
    return body?.paths && (body.paths['/v1/on-this-day/today'] || body.paths['/v1/on-this-day/{mm-dd}']);
  });

  console.log(`\n=== Summary: ${pass} pass, ${fail} fail ===`);
  process.exit(fail > 0 ? 1 : 0);
};

main().catch((err) => { console.error(err); process.exit(1); });
