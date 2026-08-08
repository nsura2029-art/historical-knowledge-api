// v13-smoke.mjs — Multi-source events (Wikipedia + Wikidata + DBpedia)
// Tests: source_id presence, DBpedia events, multi-source events per person

const API = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';
let pass = 0, fail = 0;
const failures = [];

function ok(name, cond, msg = '') {
  if (cond) { pass++; console.log(`PASS ${name}`); }
  else { fail++; failures.push(`${name} ${msg}`); console.log(`FAIL ${name} ${msg}`); }
}

async function fjson(path) {
  const r = await fetch(`${API}${path}`, { headers: { 'User-Agent': 'hka-v13-smoke/1.0' } });
  if (!r.ok) throw new Error(`HTTP ${r.status} for ${path}`);
  return r.json();
}

// ============================================================
// T1: source_id returned in event API
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=5');
  ok('T1.1 /events 200', d.total > 0);
  ok('T1.2 events array', Array.isArray(d.events));
  const e0 = d.events[0];
  ok('T1.3 event has source_id', e0?.source_id !== undefined, `source_id=${e0?.source_id}`);
  ok('T1.4 source_id is one of wikipedia/wikidata/dbpedia',
    ['src_en_wikipedia', 'src_wikidata', 'src_dbpedia'].includes(e0?.source_id),
    `got: ${e0?.source_id}`);
}

// ============================================================
// T2: by-category also returns source_id
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events/by-category');
  ok('T2.1 /by-category 200', d.total > 0);
  const all = d.categories.flatMap(c => c.events);
  const withSrc = all.filter(e => e.source_id);
  ok('T2.2 most events have source_id', withSrc.length > all.length / 2,
    `${withSrc.length}/${all.length} have source_id`);
  const sources = new Set(withSrc.map(e => e.source_id));
  ok('T2.3 multiple sources for Trump', sources.size >= 2, `sources: ${[...sources].join(', ')}`);
}

// ============================================================
// T3: DBpedia events present
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=200');
  const dbpediaEvents = d.events.filter(e => e.source_id === 'src_dbpedia');
  ok('T3.1 Trump has 5+ DBpedia events', dbpediaEvents.length >= 5, `n=${dbpediaEvents.length}`);
  ok('T3.2 DBpedia events have date', dbpediaEvents.every(e => e.event_date || e.event_year),
    'all have date or year');
  // Check marriage events specifically
  const marriages = dbpediaEvents.filter(e => e.title?.toLowerCase().includes('marriage'));
  ok('T3.3 Trump has marriage events from DBpedia', marriages.length >= 3, `n=${marriages.length}`);
}

// ============================================================
// T4: Wikipedia events still present (was 4133 before)
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=200');
  const wikiEvents = d.events.filter(e => e.source_id === 'src_en_wikipedia');
  ok('T4.1 Trump has 10+ Wikipedia events', wikiEvents.length >= 10, `n=${wikiEvents.length}`);
  ok('T4.2 Wikipedia events have body', wikiEvents.every(e => e.body?.length > 0),
    'all have body');
}

// ============================================================
// T5: Other people have DBpedia events too
// ============================================================
{
  for (const slug of ['barack-obama', 'frida-kahlo', 'carlos-slim']) {
    const d = await fjson(`/v1/people/${slug}/events?limit=200`);
    const dbpedia = d.events.filter(e => e.source_id === 'src_dbpedia');
    ok(`T5.${slug} has 1+ DBpedia events`, dbpedia.length >= 1, `n=${dbpedia.length}`);
  }
}

// ============================================================
// T6: Timeline endpoint returns source_id
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events/timeline');
  ok('T6.1 /timeline 200', d.decades || d.timeline || d.buckets);
  // Find the first event
  let found = null;
  const data = d.decades || d.timeline || d.buckets || [];
  for (const bucket of data) {
    if (bucket.events?.length > 0) { found = bucket.events[0]; break; }
  }
  if (found) {
    ok('T6.2 timeline event has source_id', found.source_id !== undefined, `got: ${found.source_id}`);
  } else {
    ok('T6.2 timeline has events', false, 'no events found');
  }
}

// ============================================================
// T7: Total event counts make sense
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=200');
  ok('T7.1 Trump has 50+ total events', d.total >= 50, `total=${d.total}`);
}

// ============================================================
// T8: source_registry includes DBpedia
// ============================================================
{
  // /v1/sources lists all sources
  const d = await fjson('/v1/sources?limit=100');
  const ids = (d.data || []).map(s => s.id);
  ok('T8.1 src_dbpedia in source registry', ids.includes('src_dbpedia'), `not found`);
  ok('T8.2 src_en_wikipedia in registry', ids.includes('src_en_wikipedia'), `not found`);
  ok('T8.3 src_wikidata in registry', ids.includes('src_wikidata'), `not found`);
}

console.log(`\n=== Summary ===`);
console.log(`PASS: ${pass}`);
console.log(`FAIL: ${fail}`);
if (failures.length > 0) {
  console.log('\nFailures:');
  for (const f of failures) console.log(`  ${f}`);
}
process.exit(fail > 0 ? 1 : 0);
