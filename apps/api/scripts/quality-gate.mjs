/**
 * quality-gate.mjs: Universal PRD thresholds + task-specific checks.
 * Covers KP-003, KP-004, KP-007, KP-010.
 */

import { execSync } from 'node:child_process';

const BASE = process.env.SMOKE_BASE || 'https://historical-knowledge-api-dev.nsura2029.workers.dev';
const D1 = 'historical-knowledge-api-d1';
const CLOUDFLARE_DIR = '/workspace/historical-knowledge-api/apps/api';

let passed = 0, failed = 0;
const failures = [];
const blocked = [];

function ok(name, cond, detail = '') {
  if (cond) { passed++; console.log(`PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { failed++; failures.push(name); console.error(`FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

function block(name, cond, detail = '') {
  if (cond) { passed++; console.log(`BLOCK-PASS ${name}${detail ? ' - ' + detail : ''}`); }
  else { blocked.push(name); failed++; failures.push('[BLOCK] ' + name); console.error(`BLOCK-FAIL ${name}${detail ? ' - ' + detail : ''}`); }
}

async function fetchJson(url, init) {
  const r = await fetch(url, init || { headers: { 'User-Agent': 'hka-quality-gate' } });
  let body = null;
  try { body = await r.json(); } catch { body = null; }
  return { status: r.status, body };
}

function d1Query(sql) {
  const out = execSync(
    `PATH="/usr/local/lib/node_modules/corepack/shims:$PATH" pnpm exec wrangler d1 execute ${D1} --env dev --remote --command ${JSON.stringify(sql)} --json`,
    { cwd: CLOUDFLARE_DIR, encoding: 'utf8' }
  );
  return JSON.parse(out);
}

function d1Count(sql) {
  const r = d1Query(sql);
  return r[0]?.results?.[0] || {};
}

async function main() {
  console.log(`\n=== quality gate (KP-003 + KP-004 + KP-007 + KP-010) ===\n`);

  // ----- U1: KP-003 backfill -----
  console.log('--- U1: KP-003 backfill sanity ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim WHERE id LIKE 'clm_legacy_%'`);
    block('U1.1 claim backfill >= 100', (r.n || 0) >= 100, `n=${r.n}`);
  }

  // ----- U2: KP-004 source_health -----
  console.log('\n--- U2: KP-004 source_health ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM data_source_health`);
    block('U2.1 data_source_health populated', (r.n || 0) >= 100, `n=${r.n}`);
  }

  // ----- U3: KP-007 media_rights -----
  console.log('\n--- U3: KP-007 media_rights ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM media_asset`);
    block('U3.1 media_asset has rows', (r.n || 0) >= 1, `n=${r.n}`);
  }

  // ----- U4: KP-010 content_section -----
  console.log('\n--- U4: KP-010 content_section (narrative) ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM content_section WHERE editorial_status = 'auto_approved'`);
    block('U4.1 content_section has auto_approved sections (>= 20)', (r.n || 0) >= 20, `n=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM content_section WHERE editorial_status = 'rejected'`);
    ok('U4.2 no rejected sections', (r2.n || 0) === 0, `n=${r2.n}`);

    const r3 = d1Count(`SELECT COUNT(DISTINCT entity_id) AS n FROM content_section`);
    block('U4.3 content_section covers >= 5 entities', (r3.n || 0) >= 5, `n=${r3.n}`);

    const r4 = d1Count(`SELECT COUNT(*) AS n FROM content_section WHERE body_markdown IS NULL OR body_markdown = ''`);
    block('U4.4 no empty body_markdown', (r4.n || 0) === 0, `n_empty=${r4.n}`);
  }

  // ----- U5: API contract (no 5xx) -----
  console.log('\n--- U5: API contract (no 5xx) ---');
  {
    // KP-010 endpoints
    const r1 = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    block('U5.1 /v1/people/{slug}/biography no 5xx', r1.status < 500, `status=${r1.status}`);

    const r2 = await fetchJson(`${BASE}/v1/people/donald-trump/sections`);
    block('U5.2 /v1/people/{slug}/sections no 5xx', r2.status < 500, `status=${r2.status}`);

    const r3 = await fetchJson(`${BASE}/v1/people/donald-trump/quick-facts`);
    block('U5.3 /v1/people/{slug}/quick-facts no 5xx', r3.status < 500, `status=${r3.status}`);

    const r4 = await fetchJson(`${BASE}/v1/sections/cs_trump_early_life`);
    block('U5.4 /v1/sections/{id} no 5xx', r4.status < 500, `status=${r4.status}`);

    // Other major endpoints (regression)
    const r5 = await fetchJson(`${BASE}/v1/claims?limit=1`);
    block('U5.5 /v1/claims no 5xx', r5.status < 500, `status=${r5.status}`);
    const r6 = await fetchJson(`${BASE}/v1/sources?limit=1`);
    block('U5.6 /v1/sources no 5xx', r6.status < 500, `status=${r6.status}`);
    const r7 = await fetchJson(`${BASE}/v1/people/donald-trump/media`);
    block('U5.7 /v1/entities/{id}/media no 5xx', r7.status < 500, `status=${r7.status}`);
  }

  // ----- U6: OpenAPI registration -----
  console.log('\n--- U6: OpenAPI ---');
  {
    const r = await fetchJson(`${BASE}/openapi.json`);
    block('U6.1 OpenAPI doc available', r.status === 200, `status=${r.status}`);
    const paths = Object.keys(r.body?.paths || {});
    const newPaths = paths.filter(p =>
      p === '/v1/people/{slug}/biography' ||
      p === '/v1/people/{slug}/sections' ||
      p === '/v1/people/{slug}/quick-facts' ||
      p === '/v1/sections/{id}'
    );
    block('U6.2 KP-010 endpoints registered in OpenAPI', newPaths.length >= 4, `paths=${newPaths.length} ${newPaths.join(', ')}`);
  }

  // ----- U7: weighted_provenance_score -----
  console.log('\n--- U7: weighted_provenance_score ---');
  {
    const r = d1Count(`SELECT AVG(confidence) AS n FROM claim WHERE id LIKE 'clm_legacy_%'`);
    const avg = r.n || 0;
    block('U7.1 weighted_provenance_score (avg confidence) >= 0.5', avg >= 0.5, `avg=${avg.toFixed(3)}`);
  }

  // ----- U8: rights_readiness (KP-007) -----
  console.log('\n--- U8: rights_readiness (KP-007) ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM media_asset ma WHERE ma.status = 'approved' AND NOT EXISTS (SELECT 1 FROM media_rights WHERE media_asset_id = ma.id)`);
    block('U8.1 rights_readiness: all approved media have rights', (r.n || 0) === 0, `n_orphan=${r.n}`);
  }

  // ----- U9: citation coverage (KP-004) -----
  console.log('\n--- U9: citation coverage (KP-004) ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim c WHERE c.status = 'published' AND NOT EXISTS (SELECT 1 FROM claim_source cs WHERE cs.claim_id = c.id)`);
    block('U9.1 all published claims have >= 1 source', (r.n || 0) === 0, `n_orphan=${r.n}`);
  }

  // ----- U10: biography display gate (KP-010) -----
  console.log('\n--- U10: biography display gate (KP-010) ---');
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    // Hero image must be approved (status='approved' or null if no media)
    if (r.body?.hero_image) {
      block('U10.1 hero_image is approved (not rejected)', r.body.hero_image.license_code !== 'rejected', `lic=${r.body.hero_image.license_code}`);
    } else {
      ok('U10.1 (skipped — no hero_image)', true);
    }
    // All narrative sections must be auto_approved or approved
    const sections = r.body?.narrative || [];
    const allApproved = sections.every(s => s.editorial_status === 'auto_approved' || s.editorial_status === 'approved');
    block('U10.2 all narrative sections are auto_approved or approved', allApproved, `n=${sections.length}`);
  }

  // ----- U11: biography response size -----
  console.log('\n--- U11: biography response size ---');
  {
    const r = await fetchJson(`${BASE}/v1/people/donald-trump/biography`);
    const json = JSON.stringify(r.body);
    const sizeKB = json.length / 1024;
    block('U11.1 biography response < 200KB', sizeKB < 200, `size=${sizeKB.toFixed(1)}KB`);
  }

  // ----- U12: content section content quality -----
  console.log('\n--- U12: content quality (KP-010) ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM content_section WHERE body_markdown LIKE '%TODO%' OR body_markdown LIKE '%FIXME%' OR body_markdown LIKE '%PLACEHOLDER%' OR body_markdown LIKE '%Lorem%' OR body_markdown LIKE '%lorem ipsum%'`);
    block('U12.1 no placeholder text in body_markdown', (r.n || 0) === 0, `n=${r.n}`);

    const r2 = d1Count(`SELECT AVG(LENGTH(body_markdown)) AS n FROM content_section WHERE editorial_status = 'auto_approved'`);
    const avgLen = r2.n || 0;
    block('U12.2 avg body_markdown length >= 200 chars', avgLen >= 200, `avg=${avgLen.toFixed(0)}`);
  }

  // ----- Summary -----
  console.log(`\n=== quality gate summary ===`);
  console.log(`passed: ${passed}`);
  console.log(`failed: ${failed}`);
  if (blocked.length > 0) {
    console.error(`BLOCKED by: ${blocked.join(', ')}`);
    console.error(`Quality gate FAILED. DO NOT hand off.`);
    process.exit(1);
  }
  console.log(`Quality gate PASSED.`);
  process.exit(0);
}

main().catch(e => { console.error(e); process.exit(1); });
