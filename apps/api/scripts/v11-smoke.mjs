/**
 * v11-smoke: KP-017 Section expansion + news + quiz + image gallery.
 * Verifies the 4 new endpoints + the expanded biography payload.
 */

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';

let passed = 0, failed = 0;
const failures = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url, init) {
  const r = await fetch(url, init || { headers: { 'User-Agent': 'hka-smoke/11' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

async function main() {
  console.log(`\n=== v11 smoke: KP-017 section expansion + news + quiz + gallery ===\n`);

  // ----- T1: expanded biography payload -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    ok('T1.1 /biography 200', r.status === 200, `status=${r.status}`);
    ok('T1.2 header has summary', typeof r.body?.header?.summary === 'string' && r.body.header.summary.length > 50, `len=${r.body?.header?.summary?.length}`);
    ok('T1.3 narrative has 8+ sections', (r.body?.narrative?.length || 0) >= 8, `count=${r.body?.narrative?.length}`);
    const types = (r.body?.narrative || []).map(s => s.section_type);
    ok('T1.4 has election_year section', types.includes('election_year'), `types=${types.join(',')}`);
    ok('T1.5 has first_term section', types.includes('first_term'));
    ok('T1.6 has second_term section', types.includes('second_term'));
    ok('T1.7 has indictments section', types.includes('indictments'));
    ok('T1.8 has foreign_policy section', types.includes('foreign_policy'));
    const targetYears = (r.body?.narrative || []).map(s => s.target_year).filter(Boolean);
    ok('T1.9 narrative has target_year populated', targetYears.length >= 5, `years=${targetYears.length}`);
    const displayOrders = (r.body?.narrative || []).map(s => s.display_order).filter(x => x !== undefined && x !== null);
    ok('T1.10 narrative has display_order populated', displayOrders.length >= 5, `count=${displayOrders.length}`);
    const firstSec = r.body?.narrative?.[0];
    ok('T1.11 first section has body_markdown', typeof firstSec?.body_markdown === 'string' && firstSec.body_markdown.length > 50, `len=${firstSec?.body_markdown?.length}`);
    ok('T1.12 first section has word_count', typeof firstSec?.word_count === 'number', `wc=${firstSec?.word_count}`);
  }

  // ----- T2: /v1/people/{slug}/images -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/images?limit=8`);
    ok('T2.1 /images 200', r.status === 200, `status=${r.status}`);
    ok('T2.2 /images has total', typeof r.body?.total === 'number' && r.body.total >= 5, `total=${r.body?.total}`);
    ok('T2.3 /images has images array', Array.isArray(r.body?.images), `len=${r.body?.images?.length}`);
    if (r.body?.images?.[0]) {
      const img = r.body.images[0];
      ok('T2.4 image has url_original', typeof img.url_original === 'string' && img.url_original.length > 20);
      ok('T2.5 image has license_code', typeof img.license_code === 'string' && img.license_code.length > 0, `lic=${img.license_code}`);
      ok('T2.6 image has attribution', typeof img.attribution === 'string' && img.attribution.length > 5);
      ok('T2.7 image has is_primary flag', typeof img.is_primary === 'number', `primary=${img.is_primary}`);
    }
    // Display gate: every image must have a known license
    const allLicensed = (r.body?.images || []).every(i => i.license_code && i.license_code !== 'unknown');
    ok('T2.8 all images have verified license', allLicensed, `licenses=${(r.body?.images || []).map(i => i.license_code).join(',')}`);
  }

  // ----- T3: /v1/people/{slug}/news -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/news?limit=6`);
    ok('T3.1 /news 200', r.status === 200, `status=${r.status}`);
    ok('T3.2 /news has total', typeof r.body?.total === 'number' && r.body.total >= 3, `total=${r.body?.total}`);
    ok('T3.3 /news has articles array', Array.isArray(r.body?.articles), `len=${r.body?.articles?.length}`);
    if (r.body?.articles?.[0]) {
      const a = r.body.articles[0];
      ok('T3.4 article has headline', typeof a.headline === 'string' && a.headline.length > 5);
      ok('T3.5 article has url', typeof a.url === 'string' && a.url.startsWith('http'), `url=${a.url?.slice(0, 40)}`);
      ok('T3.6 article has source_id', typeof a.source_id === 'string' && a.source_id.length > 0, `src=${a.source_id}`);
      ok('T3.7 article has source_name', typeof a.source_name === 'string' && a.source_name.length > 0);
      ok('T3.8 article has published_iso', typeof a.published_iso === 'string' && a.published_iso.length >= 10, `iso=${a.published_iso}`);
    }
  }

  // ----- T4: /v1/people/{slug}/quizzes/play -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/quizzes/play?difficulty=mixed`);
    ok('T4.1 /quizzes/play 200', r.status === 200, `status=${r.status}`);
    ok('T4.2 /quizzes/play has session_id', typeof r.body?.session_id === 'string' && r.body.session_id.length > 5, `sid=${r.body?.session_id}`);
    ok('T4.3 /quizzes/play has 4 questions', r.body?.total === 4, `total=${r.body?.total}`);
    ok('T4.4 /quizzes/play has questions array', Array.isArray(r.body?.questions), `len=${r.body?.questions?.length}`);
    if (r.body?.questions?.[0]) {
      const q = r.body.questions[0];
      ok('T4.5 question has id', typeof q.id === 'string' && q.id.length > 5);
      ok('T4.6 question has 4 options', Array.isArray(q.options) && q.options.length === 4, `opts=${q.options?.length}`);
      ok('T4.7 question has difficulty', typeof q.difficulty === 'string');
      ok('T4.8 question has NO correct_index leaked', q.correct_index === undefined, `correct_index=${q.correct_index}`);
    }
    // T4.9: no duplicate question ids in a session
    {
      const ids = (r.body?.questions || []).map(q => q.id);
      const unique = new Set(ids);
      ok('T4.9 no duplicate question ids in mixed session', unique.size === ids.length, `ids=${ids.length} unique=${unique.size}`);
    }
  }

  // ----- T5: /v1/people/{slug}/quizzes/{id}/attempt (correct + wrong) -----
  {
    const start = await fetchJson(`${BASE}/v1/people/donald-trump/quizzes/play?difficulty=easy`);
    if (start.body?.questions?.[0]) {
      const q = start.body.questions[0];
      // Try correct first
      // We don't know the correct answer from the public response, so submit each option
      let foundCorrect = null;
      for (let i = 0; i < q.options.length; i++) {
        const r = await fetchJson(`${BASE}/v1/people/donald-trump/quizzes/${q.id}/attempt`, {
          method: 'POST',
          headers: { 'Content-Type': 'application/json', 'User-Agent': 'hka-smoke/11' },
          body: JSON.stringify({ session_id: start.body.session_id, question_id: q.id, selected_index: i }),
        });
        ok(`T5.${i+1} POST /quizzes/{id}/attempt 200`, r.status === 200, `status=${r.status}`);
        ok(`T5.${i+2} response has is_correct`, typeof r.body?.is_correct === 'boolean');
        ok(`T5.${i+3} response has correct_index`, typeof r.body?.correct_index === 'number' && r.body.correct_index >= 0 && r.body.correct_index <= 3);
        ok(`T5.${i+4} response has explanation`, typeof r.body?.explanation === 'string' && r.body.explanation.length > 10, `exp=${r.body?.explanation?.slice(0, 40)}`);
        ok(`T5.${i+5} response has session_score`, typeof r.body?.session_score === 'number');
        if (r.body?.is_correct && foundCorrect === null) foundCorrect = r.body.correct_index;
      }
      ok('T5.25 at least one attempt was correct', foundCorrect !== null, `correct_index=${foundCorrect}`);
    } else {
      ok('T5.0 setup: easy quiz returned questions', false, 'no questions returned');
    }
  }

  // ----- T6: /v1/people/{slug}/quizzes (list) -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/quizzes`);
    ok('T6.1 /quizzes 200', r.status === 200, `status=${r.status}`);
    ok('T6.2 /quizzes has questions', Array.isArray(r.body?.questions), `len=${r.body?.questions?.length}`);
    if (r.body?.questions?.[0]) {
      const q = r.body.questions[0];
      ok('T6.3 list question has NO options leaked', q.options === undefined, `options=${q.options}`);
      ok('T6.4 list question has NO correct_index leaked', q.correct_index === undefined);
    }
  }

  // ----- T7: ?fields= still works with new fields -----
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography?fields=header,summary,narrative`);
    ok('T7.1 ?fields=header,summary,narrative 200', r.status === 200);
    ok('T7.2 response has summary in header', typeof r.body?.header?.summary === 'string');
    ok('T7.3 response has 8+ narrative sections', (r.body?.narrative?.length || 0) >= 8);
  }

  // ----- T8: 404 handling -----
  {
    const r = await fetchJson(`${BASE}/v1/people/nonexistent-person/quizzes`);
    ok('T8.1 nonexistent person 404', r.status === 404, `status=${r.status}`);
  }

  console.log(`\n=== Summary ===`);
  console.log(`PASS: ${passed}`);
  console.log(`FAIL: ${failed}`);
  if (failed > 0) {
    console.log(`\nFailures:`);
    failures.forEach(f => console.log(`  - ${f}`));
    process.exit(1);
  }
}

main().catch(e => { console.error('Test crashed:', e); process.exit(1); });
