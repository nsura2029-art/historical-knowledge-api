/**
 * quality-gate.mjs: Universal PRD thresholds + task-specific checks.
 * Per AGENT-INSTRUCTIONS.md §2.5 — must pass before any handoff.
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

async function fetchJson(url) {
  const r = await fetch(url, { headers: { 'User-Agent': 'hka-quality-gate' } });
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
  console.log(`\n=== quality gate (KP-003) ===\n`);

  // ----- U1: backfill sanity -----
  console.log('--- U1: backfill sanity ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim WHERE id LIKE 'clm_legacy_%'`);
    block('U1.1 claim backfill >= 100', (r.n || 0) >= 100, `n=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM source_record WHERE id LIKE 'sr_rec_legacy_%'`);
    block('U1.2 source_record backfill >= 100', (r2.n || 0) >= 100, `n=${r2.n}`);

    const r3 = d1Count(`SELECT COUNT(*) AS n FROM editorial_revision WHERE id LIKE 'ed_rev_0012_%'`);
    block('U1.3 editorial_revision backfill >= 100', (r3.n || 0) >= 100, `n=${r3.n}`);

    const r4 = d1Count(`SELECT COUNT(*) AS n FROM claim cl WHERE cl.id LIKE 'clm_legacy_%' AND NOT EXISTS (SELECT 1 FROM claim_source WHERE claim_id = cl.id)`);
    block('U1.4 NO orphan legacy claims (all have sources)', (r4.n || 0) === 0, `n=${r4.n}`);
  }

  // ----- U2: confidence floor -----
  console.log('\n--- U2: confidence floor ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim WHERE id LIKE 'clm_legacy_%' AND confidence < 0.5`);
    block('U2.1 NO legacy claims with confidence < 0.5', (r.n || 0) === 0, `n=${r.n}`);
  }

  // ----- U3: editorial_status -----
  console.log('\n--- U3: editorial_status ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim WHERE id LIKE 'clm_legacy_%' AND status = 'pending'`);
    block('U3.1 NO legacy claims pending', (r.n || 0) === 0, `n=${r.n}`);
  }

  // ----- U4: API contract (no 5xx) -----
  console.log('\n--- U4: API contract ---');
  {
    const endpoints = [
      `${BASE}/v1/claims?limit=1`,
      `${BASE}/v1/claims?limit=1&predicate=born_on`,
      `${BASE}/v1/claims?limit=1&subject_entity_id=ent_does_not_exist`,
      `${BASE}/v1/claims?limit=1&min_confidence=0.5`,
    ];
    for (const ep of endpoints) {
      const r = await fetchJson(ep);
      block(`U4.1 no 5xx on ${ep.split('?')[1] || '/v1/claims'}`, r.status < 500, `status=${r.status}`);
    }
    const r1 = await fetchJson(`${BASE}/v1/claims?limit=200`);
    const legacyClaim = (r1.body?.data || []).find(c => c.id.startsWith('clm_legacy_'));
    if (legacyClaim) {
      const r2 = await fetchJson(`${BASE}/v1/claims/${legacyClaim.id}`);
      block('U4.2 GET /v1/claims/{id} no 5xx', r2.status < 500, `status=${r2.status}`);
      const r3 = await fetchJson(`${BASE}/v1/claims/${legacyClaim.id}/evidence`);
      block('U4.3 GET /v1/claims/{id}/evidence no 5xx', r3.status < 500, `status=${r3.status}`);
    }
    const r4 = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = r4.body?.data?.[0]?.id;
    if (personId) {
      const r5 = await fetchJson(`${BASE}/v1/entities/${personId}/claims`);
      block('U4.4 GET /v1/entities/{id}/claims no 5xx', r5.status < 500, `status=${r5.status}`);
    }
    const r6 = await fetchJson(`${BASE}/v1/conflict-groups/grp_does_not_exist`);
    block('U4.5 GET /v1/conflict-groups/{id} 404 (not 5xx)', r6.status === 404, `status=${r6.status}`);
  }

  // ----- U5: OpenAPI registration -----
  console.log('\n--- U5: OpenAPI ---');
  {
    const r = await fetchJson(`${BASE}/openapi.json`);
    block('U5.1 OpenAPI doc available', r.status === 200, `status=${r.status}`);
    const paths = Object.keys(r.body?.paths || {});
    const claimPaths = paths.filter(p => p.includes('/claims') || p.includes('/conflict-groups') || (p.includes('/entities/') && p.includes('/claims')));
    block('U5.2 new endpoints registered in OpenAPI', claimPaths.length >= 4, `paths=${claimPaths.length} ${claimPaths.join(', ')}`);
  }

  // ----- U6: weighted_provenance_score -----
  console.log('\n--- U6: weighted_provenance_score ---');
  {
    const r = d1Count(`SELECT AVG(confidence) AS n FROM claim WHERE id LIKE 'clm_legacy_%'`);
    const avg = r.n || 0;
    block('U6.1 weighted_provenance_score (avg confidence) >= 0.5', avg >= 0.5, `avg=${avg.toFixed(3)}`);
  }

  // ----- U7: rights_readiness (informational, owned by KP-007) -----
  console.log('\n--- U7: rights_readiness (informational) ---');
  {
    ok('U7.1 rights_readiness (informational, owned by KP-007)', true, 'tracked by KP-007');
  }

  // ----- U8: broken_primary_internal_links -----
  console.log('\n--- U8: orphan entity FKs ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim cl WHERE cl.id LIKE 'clm_legacy_%' AND NOT EXISTS (SELECT 1 FROM entity WHERE id = cl.subject_entity_id)`);
    block('U8.1 NO orphan claim subject_entity_id', (r.n || 0) === 0, `n=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM claim cl WHERE cl.object_entity_id IS NOT NULL AND cl.id LIKE 'clm_legacy_%' AND NOT EXISTS (SELECT 1 FROM entity WHERE id = cl.object_entity_id)`);
    block('U8.2 NO orphan claim object_entity_id', (r2.n || 0) === 0, `n=${r2.n}`);
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
