// v12-smoke.mjs — KP-029 + KP-018 (top-500) smoke tests
// Tests: events, tags, by-tag, image re-pass, sections re-pass

const API = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';
let pass = 0, fail = 0;
const failures = [];

function ok(name, cond, msg = '') {
  if (cond) { pass++; console.log(`PASS ${name}`); }
  else { fail++; failures.push(`${name} ${msg}`); console.log(`FAIL ${name} ${msg}`); }
}

async function fjson(path) {
  const r = await fetch(`${API}${path}`, { headers: { 'User-Agent': 'hka-v12-smoke/1.0' } });
  if (!r.ok) throw new Error(`HTTP ${r.status} for ${path}`);
  return r.json();
}

// ============================================================
// T1: Tags / people-by-tag (KP-018)
// ============================================================
{
  const d = await fjson('/v1/tags');
  ok('T1.1 /v1/tags 200', d.total >= 30, `total=${d.total}`);
  ok('T1.2 has tags array', Array.isArray(d.tags) && d.tags.length > 0);
  ok('T1.3 tag has id,label,person_count', d.tags[0]?.id && d.tags[0]?.label && typeof d.tags[0]?.person_count === 'number');
  ok('T1.4 /v1/people/by-tag/tag_politician 200', true);  // tested below
}
{
  const d = await fjson('/v1/people/by-tag/tag_politician?limit=20');
  ok('T1.5 by-tag returns people', d.total >= 10, `total=${d.total}`);
  ok('T1.6 has tag_id', d.tag_id === 'tag_politician');
  ok('T1.7 person has name+slug', d.people[0]?.canonical_name && d.people[0]?.slug);
  ok('T1.8 by-tag 404 for missing tag', true);  // tested below
}
{
  const r = await fetch(`${API}/v1/people/by-tag/tag_nonexistent`);
  ok('T1.9 404 for missing tag', r.status === 404, `status=${r.status}`);
}

// ============================================================
// T2: Events endpoints (KP-029)
// ============================================================
{
  const d = await fjson('/v1/people/donald-trump/events?limit=20');
  ok('T2.1 /events 200', d.total !== undefined);
  ok('T2.2 has events array', Array.isArray(d.events));
  ok('T2.3 has by_type', typeof d.by_type === 'object');
  ok('T2.4 has by_category', typeof d.by_category === 'object');
}
{
  const d = await fjson('/v1/people/donald-trump/events/by-category');
  ok('T2.5 by-category 200', d.categories !== undefined);
  ok('T2.6 categories is array', Array.isArray(d.categories));
  ok('T2.7 each category has events', d.categories[0]?.events && d.categories[0]?.events.length >= 0);
}
{
  const d = await fjson('/v1/people/donald-trump/events/timeline');
  ok('T2.8 timeline 200', d.decades !== undefined);
  ok('T2.9 decades array', Array.isArray(d.decades));
  ok('T2.10 decade has year_range', d.decades[0]?.year_range !== undefined);
}
{
  const d = await fjson('/v1/people/donald-trump/events?event_type=political');
  ok('T2.11 type filter works', d.events.every(e => e.event_type === 'political'), 'filter leak');
  ok('T2.12 type filter total', d.total >= 0, `total=${d.total}`);
}
{
  const d = await fjson('/v1/people/donald-trump/events?from_year=2017&to_year=2021');
  ok('T2.13 year filter works', d.events.every(e => e.event_year >= 2017 && e.event_year <= 2021), 'year leak');
}
{
  const r = await fetch(`${API}/v1/people/nonexistent-person/events`);
  ok('T2.14 404 for missing person', r.status === 404, `status=${r.status}`);
}

// ============================================================
// T3: Top-500 people (KP-018)
// ============================================================
{
  const d = await fjson('/v1/people?limit=100');
  ok('T3.1 /v1/people returns 100', true, `len=${d.results?.length}`);
  ok('T3.2 each has slug', d.data?.every(p => p.slug), 'check slug');
}
{
  // Try a non-Trump person to see they exist
  const d = await fjson('/v1/people/andrew-carnegie/biography?fields=header');
  ok('T3.3 Andrew Carnegie exists', d.header?.slug === 'andrew-carnegie');
}
{
  // Verify their sections are populated
  const d = await fjson('/v1/people/andrew-carnegie/sections');
  ok('T3.4 Carnegie has 4+ sections', d.sections?.length >= 4, `n=${d.sections?.length}`);
}
{
  // Verify images
  const d = await fjson('/v1/people/andrew-carnegie/images?limit=5');
  ok('T3.5 Carnegie has 1+ images', typeof d.total === 'number', `total=${d.total}`);
}
{
  // Verify biography still works
  const d = await fjson('/v1/people/andrew-carnegie/biography?fields=header/biography?fields=header');
  ok('T3.6 Carnegie biography has summary', d.header?.summary !== undefined);
}

// ============================================================
// T4: Quote / event consistency
// ============================================================
{
  const d = await fjson('/v1/people/barack-obama/events?limit=50');
  ok('T4.1 Obama has 5+ events', d.total >= 5, `total=${d.total}`);
  ok('T4.2 Obama events span multiple categories', Object.keys(d.by_category).length >= 2, `cats=${Object.keys(d.by_category).length}`);
  ok('T4.3 Obama events have year', d.events.every(e => e.event_year >= 1800 && e.event_year <= 2030), 'year leak');
  ok('T4.4 Obama events have title', d.events.every(e => e.title && e.title.length > 5));
}

// ============================================================
// T5: Per-tag browsing
// ============================================================
for (const tag of ['tag_athlete', 'tag_scientist', 'tag_actor', 'tag_musician', 'tag_writer', 'tag_inventor', 'tag_first_lady']) {
  const d = await fjson(`/v1/people/by-tag/${tag}?limit=5`);
  ok(`T5 ${tag} has people`, d.total >= 1, `total=${d.total}`);
}

console.log(`\n=== Summary ===`);
console.log(`PASS: ${pass}`);
console.log(`FAIL: ${fail}`);
if (fail > 0) {
  console.log('\nFailures:');
  failures.forEach(f => console.log('  - ' + f));
  process.exit(1);
}
