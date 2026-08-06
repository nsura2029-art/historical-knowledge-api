/**
 * v10-edge: KP-010 edge cases.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url) {
  const r = await fetch(url, { headers: { 'User-Agent': 'hka-smoke/10-edge' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v10 edge: KP-010 biographies ===\n`);

  // ----- E1: 404 envelopes -----
  {
    const r1 = await fetchJson(`${BASE}/v1/people/no-such-person/biography`);
    ok('E1.1 biography 404 has code', r1.body?.error?.code === 'PERSON_NOT_FOUND', `code=${r1.body?.error?.code}`);
    const r2 = await fetchJson(`${BASE}/v1/people/no-such-person/sections`);
    ok('E1.2 sections 404 has code', r2.body?.error?.code === 'PERSON_NOT_FOUND', `code=${r2.body?.error?.code}`);
    const r3 = await fetchJson(`${BASE}/v1/people/no-such-person/quick-facts`);
    ok('E1.3 quick-facts 404 has code', r3.body?.error?.code === 'PERSON_NOT_FOUND', `code=${r3.body?.error?.code}`);
    const r4 = await fetchJson(`${BASE}/v1/sections/cs_does_not_exist`);
    ok('E1.4 section 404 has code', r4.body?.error?.code === 'SECTION_NOT_FOUND', `code=${r4.body?.error?.code}`);
  }

  // ----- E2: empty biography data -----
  {
    const r = await fetchJson(`${BASE}/v1/people?limit=100`);
    // Find a person NOT in the 5 top entities to test empty response
    const testSlugs = ['donald-trump', 'frida-kahlo', 'ar-rahman', 'sachin-tendulkar', 'aishwarya-rai'];
    const otherPerson = (r.body?.data || []).find(p => p.slug && !testSlugs.includes(p.slug));
    if (otherPerson) {
      const r2 = await fetchJson(`${BASE}/v1/people/${otherPerson.slug}/biography`);
      ok('E2.1 biography for other person 200', r2.status === 200, `status=${r2.status}`);
      // Other people may have no narrative / no hero / no claims — should still return 200
      ok('E2.2 other person has narrative array (may be empty)', Array.isArray(r2.body?.narrative), `len=${r2.body?.narrative?.length}`);
      ok('E2.3 other person has quick_facts array (may be empty)', Array.isArray(r2.body?.quick_facts), `len=${r2.body?.quick_facts?.length}`);
    } else {
      ok('E2.1 (skipped — no other person found)', true);
    }
  }

  // ----- E3: quick facts whitelisted predicates only -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/quick-facts`);
    const labels = (r.body?.facts || []).map(f => f.label);
    // Only whitelisted labels should appear
    const allowed = ['Born', 'Died', 'Nationality', 'Spouse', 'Known for', 'Occupation', 'Education', 'Cause of death'];
    const allAllowed = labels.every(l => allowed.includes(l));
    ok('E3.1 all quick fact labels are whitelisted', allAllowed, `labels=${labels.join(',')}`);
  }

  // ----- E4: on_this_page has heading not null -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const np = r.body?.on_this_page || [];
    const allHaveHeading = np.every(p => p.heading && p.heading.length > 0);
    ok('E4.1 all on_this_page items have heading', allHaveHeading, 'check');
  }

  // ----- E5: revisions summary always present -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const rev = r.body?.revisions;
    ok('E5.1 revisions has pending count', typeof rev?.pending === 'number', `p=${rev?.pending}`);
    ok('E5.2 revisions has approved count', typeof rev?.approved === 'number', `a=${rev?.approved}`);
  }

  // ----- E6: citations URLs are well-formed -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const c = r.body?.citations;
    ok('E6.1 bibtex_url starts with /v1', c?.bibtex_url?.startsWith('/v1'), `url=${c?.bibtex_url}`);
    ok('E6.2 ris_url has format param', c?.ris_url?.includes('format=ris'), `url=${c?.ris_url}`);
    ok('E6.3 csljson_url has format param', c?.csljson_url?.includes('format=csljson'), `url=${c?.csljson_url}`);
  }

  // ----- E7: biography response size is reasonable -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const json = JSON.stringify(r.body);
    const sizeKB = json.length / 1024;
    ok('E7.1 biography response size < 200KB', sizeKB < 200, `size=${sizeKB.toFixed(1)}KB`);
  }

  // ----- Summary -----
  console.log(`\n=== v10 edge summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (failures.length) {
    console.error(`failures: ${failures.join(', ')}`);
    process.exit(1);
  }
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
