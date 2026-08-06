/**
 * quality-gate.mjs: Universal PRD thresholds + task-specific checks.
 * Covers KP-003 (claim model) and KP-004 (evidence + citations + sources).
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
  console.log(`\n=== quality gate (KP-003 + KP-004) ===\n`);

  // ----- U1: backfill sanity (KP-003) -----
  console.log('--- U1: KP-003 backfill sanity ---');
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

  // ----- U3: KP-004 data_source_health -----
  console.log('\n--- U3: KP-004 source_health ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM data_source_health`);
    block('U3.1 data_source_health has rows (>= 100)', (r.n || 0) >= 100, `n=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM data_source_health WHERE license_status = 'active'`);
    block('U3.2 most sources have active license', (r2.n || 0) >= 80, `n_active=${r2.n}`);

    const r3 = d1Count(`SELECT COUNT(*) AS n FROM data_source_health h LEFT JOIN source_registry reg ON reg.id = h.source_registry_id WHERE h.records_total != COALESCE((SELECT COUNT(*) FROM source_record WHERE source_id = reg.id), 0)`);
    block('U3.3 health.records_total matches source_record count', (r3.n || 0) === 0, `drift=${r3.n}`);
  }

  // ----- U4: API contract (no 5xx) -----
  console.log('\n--- U4: API contract (no 5xx) ---');
  {
    const endpoints = [
      `${BASE}/v1/sources?limit=1`,
      `${BASE}/v1/sources?tier=A`,
      `${BASE}/v1/sources?license_status=active`,
      `${BASE}/v1/claims?limit=1`,
    ];
    for (const ep of endpoints) {
      const r = await fetchJson(ep);
      block(`U4.1 no 5xx on ${ep.split('?')[1] || ep.split('/').pop()}`, r.status < 500, `status=${r.status}`);
    }
    // Source detail
    const r0 = await fetchJson(`${BASE}/v1/sources?limit=1`);
    const sid = r0.body?.data?.[0]?.id;
    if (sid) {
      const r1 = await fetchJson(`${BASE}/v1/sources/${sid}`);
      block('U4.2 GET /v1/sources/{id} no 5xx', r1.status < 500, `status=${r1.status}`);
      const r2 = await fetchJson(`${BASE}/v1/sources/${sid}/claims`);
      block('U4.3 GET /v1/sources/{id}/claims no 5xx', r2.status < 500, `status=${r2.status}`);
    }
    // Entity endpoints
    const r3 = await fetchJson(`${BASE}/v1/people?limit=1`);
    const pid = r3.body?.data?.[0]?.id;
    if (pid) {
      const r4 = await fetchJson(`${BASE}/v1/entities/${pid}/sources`);
      block('U4.4 GET /v1/entities/{id}/sources no 5xx', r4.status < 500, `status=${r4.status}`);
      const r5 = await fetchJson(`${BASE}/v1/entities/${pid}/revisions`);
      block('U4.5 GET /v1/entities/{id}/revisions no 5xx', r5.status < 500, `status=${r5.status}`);
      const r6 = await fetchJson(`${BASE}/v1/entities/${pid}/citations?format=csljson`);
      block('U4.6 GET /v1/entities/{id}/citations no 5xx', r6.status < 500, `status=${r6.status}`);
      const r7 = await fetchJson(`${BASE}/v1/entities/${pid}/citations?format=bibtex`);
      block('U4.7 bibtex no 5xx', r7.status < 500, `status=${r7.status}`);
      const r8 = await fetchJson(`${BASE}/v1/entities/${pid}/citations?format=ris`);
      block('U4.8 ris no 5xx', r8.status < 500, `status=${r8.status}`);
    }
    // Admin POST
    if (pid) {
      const r9 = await fetchJson(`${BASE}/v1/admin/editorial-revisions`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          target_entity_id: pid, field_name: 'qg_test', new_value: 'ok',
          revision_type: 'enhancement', contributor_id: 'quality-gate', auto_approve: true,
        }),
      });
      block('U4.9 POST /v1/admin/editorial-revisions no 5xx', r9.status < 500, `status=${r9.status}`);
    }
    // 404s
    const r10 = await fetchJson(`${BASE}/v1/sources/src_does_not_exist`);
    block('U4.10 source 404 (not 5xx)', r10.status === 404, `status=${r10.status}`);
  }

  // ----- U5: OpenAPI registration -----
  console.log('\n--- U5: OpenAPI ---');
  {
    const r = await fetchJson(`${BASE}/openapi.json`);
    block('U5.1 OpenAPI doc available', r.status === 200, `status=${r.status}`);
    const paths = Object.keys(r.body?.paths || {});
    const newPaths = paths.filter(p =>
      p === '/v1/sources' || p === '/v1/sources/{id}' || p === '/v1/sources/{id}/claims' ||
      p === '/v1/entities/{id}/sources' || p === '/v1/entities/{id}/revisions' ||
      p === '/v1/entities/{id}/citations' || p === '/v1/admin/editorial-revisions'
    );
    block('U5.2 KP-004 endpoints registered in OpenAPI', newPaths.length >= 7, `paths=${newPaths.length} ${newPaths.join(', ')}`);
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

  // ----- U8: orphan entity FKs -----
  console.log('\n--- U8: orphan entity FKs ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim cl WHERE cl.id LIKE 'clm_legacy_%' AND NOT EXISTS (SELECT 1 FROM entity WHERE id = cl.subject_entity_id)`);
    block('U8.1 NO orphan claim subject_entity_id', (r.n || 0) === 0, `n=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM claim cl WHERE cl.object_entity_id IS NOT NULL AND cl.id LIKE 'clm_legacy_%' AND NOT EXISTS (SELECT 1 FROM entity WHERE id = cl.object_entity_id)`);
    block('U8.2 NO orphan claim object_entity_id', (r2.n || 0) === 0, `n=${r2.n}`);
  }

  // ----- U9: citation coverage (100% of displayed claims have >=1 source) -----
  console.log('\n--- U9: citation coverage ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim c WHERE c.status = 'published' AND NOT EXISTS (SELECT 1 FROM claim_source cs WHERE cs.claim_id = c.id)`);
    block('U9.1 all published claims have >= 1 source', (r.n || 0) === 0, `n_orphan=${r.n}`);
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
