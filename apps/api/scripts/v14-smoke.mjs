// v14-smoke.mjs — Full Wikidata extraction (multi-source events scale)
// Tests: total event count, breadth of Wikidata coverage, multi-source breadth
//
// Context: KP-029 shipped with 20 Wikidata events from 1 person (Trump).
// v14 migration 0033 added 6027 more events from 415 people.
// Total: 6048 Wikidata events covering ~84% of all 494 people.

const API = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';
let pass = 0, fail = 0;
const failures = [];

function ok(name, cond, msg = '') {
  if (cond) { pass++; console.log(`PASS ${name}`); }
  else { fail++; failures.push(`${name} ${msg}`); console.log(`FAIL ${name} ${msg}`); }
}

async function fjson(path) {
  const r = await fetch(`${API}${path}`, { headers: { 'User-Agent': 'hka-v14-smoke/1.0' } });
  if (!r.ok) throw new Error(`HTTP ${r.status} for ${path}`);
  return r.json();
}

async function countWikidataEvents(slug) {
  let total = 0;
  let page = 0;
  const limit = 100;
  while (true) {
    const d = await fjson(`/v1/people/${slug}/events?limit=${limit}&offset=${page * limit}&source=src_wikidata`);
    if (!d.events || d.events.length === 0) break;
    total += d.events.length;
    if (d.events.length < limit) break;
    page++;
    if (page > 20) break; // safety
  }
  return total;
}

// ============================================================
// T1: Total event scale — Trump total >= 100 (was 81 in v13)
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=200');
  ok('T1.1 /events responds', d.total !== undefined, `total=${d.total}`);
  ok('T1.2 Trump total >= 100', d.total >= 100, `total=${d.total}`);
}

// ============================================================
// T2: Trump has 100+ events (was 81 in v13)
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=200');
  ok('T2.1 Trump total >= 100', d.total >= 100, `total=${d.total}`);
  const sources = new Set(d.events.map(e => e.source_id));
  ok('T2.2 Trump has 3 sources', sources.size === 3, `sources: ${[...sources].join(', ')}`);
  const wd = d.events.filter(e => e.source_id === 'src_wikidata').length;
  ok('T2.3 Trump has 50+ Wikidata events', wd >= 50, `wd=${wd}`);
}

// ============================================================
// T3: Multi-source breadth — at least 3 non-Trump people with 50+ events
// ============================================================
{
  const slugs = ['joel-coen', 'ethan-coen', 'dolly-parton', 'hillary-clinton', 'kobe-bryant', 'lebron-james'];
  let high = 0;
  const tallies = [];
  for (const s of slugs) {
    const d = await fjson(`/v1/people/${s}/events?limit=200`);
    if (d.total >= 50) high++;
    tallies.push(`${s}=${d.total}`);
  }
  ok('T3.1 3+ non-Trump people have 50+ events', high >= 3, `${high}/${slugs.length} (${tallies.join(', ')})`);
}

// ============================================================
// T4: Wikidata covers majority of people (>= 50% have 1+ wd event)
// ============================================================
{
  const slugs = [
    'donald-trump', 'barack-obama', 'frida-kahlo', 'carlos-slim',
    'dwight-d-eisenhower', 'elon-musk', 'frank-sinatra', 'julia-roberts',
    'denzel-washington', 'billy-graham', 'buster-keaton', 'chick-corea',
    'cyrus-mccormick', 'helen-frankenthaler', 'jack-kerouac', 'janet-jackson',
    'joaquin-phoenix',
  ];
  let withWd = 0;
  for (const s of slugs) {
    const d = await fjson(`/v1/people/${s}/events?limit=1&source=src_wikidata`);
    if (d.total >= 1) withWd++;
  }
  const ratio = withWd / slugs.length;
  ok('T4.1 majority of sample has Wikidata events',
    ratio >= 0.5, `${withWd}/${slugs.length} = ${(ratio*100).toFixed(0)}%`);
}

// ============================================================
// T5: by-category reflects multi-source
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events/by-category');
  const all = d.categories.flatMap(c => c.events);
  const sources = new Set(all.map(e => e.source_id));
  ok('T5.1 by-category has 3 sources', sources.size === 3, `sources: ${[...sources].join(', ')}`);
  const withSourceId = all.filter(e => e.source_id).length;
  ok('T5.2 all by-category events have source_id', withSourceId === all.length, `${withSourceId}/${all.length}`);
}

// ============================================================
// T6: timeline reflects multi-source
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events/timeline');
  const items = (d.decades || []).flatMap(dec => dec.events || []);
  const withSourceId = items.filter(e => e.source_id).length;
  ok('T6.1 timeline has events', items.length > 0, `n=${items.length}`);
  ok('T6.2 all timeline events have source_id', withSourceId === items.length, `${withSourceId}/${items.length}`);
}

// ============================================================
// T7: Event types from Wikidata are diverse (award, political, personal_life)
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=200&source=src_wikidata');
  const types = new Set(d.events.map(e => e.event_type));
  ok('T7.1 Trump wd events span 3+ types', types.size >= 3, `types: ${[...types].join(', ')}`);
}

// ============================================================
// T8: Source registry still has src_wikidata
// ============================================================
{
  const d = await fjson('/v1/sources?limit=200');
  const wd = d.data.find(s => s.id === 'src_wikidata');
  ok('T8.1 src_wikidata in registry', !!wd, `name=${wd?.source_name}`);
  ok('T8.2 src_wikidata tier B', wd?.source_quality_tier === 'B', `tier=${wd?.source_quality_tier}`);
  ok('T8.3 src_wikidata commercial allowed', wd?.commercial_use_status === 'allowed', `status=${wd?.commercial_use_status}`);
}

// ============================================================
// Summary
// ============================================================
console.log(`\n=== Summary ===`);
console.log(`PASS: ${pass}`);
console.log(`FAIL: ${fail}`);
if (fail > 0) {
  console.log('Failures:');
  for (const f of failures) console.log(' - ' + f);
  process.exit(1);
}
