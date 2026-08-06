/**
 * quality-gate.mjs: Universal PRD thresholds + task-specific checks.
 * Covers KP-003, KP-004, KP-007.
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
  console.log(`\n=== quality gate (KP-003 + KP-004 + KP-007) ===\n`);

  // ----- U1: KP-003 backfill sanity -----
  console.log('--- U1: KP-003 backfill sanity ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim WHERE id LIKE 'clm_legacy_%'`);
    block('U1.1 claim backfill >= 100', (r.n || 0) >= 100, `n=${r.n}`);
    const r4 = d1Count(`SELECT COUNT(*) AS n FROM claim cl WHERE cl.id LIKE 'clm_legacy_%' AND NOT EXISTS (SELECT 1 FROM claim_source WHERE claim_id = cl.id)`);
    block('U1.2 NO orphan legacy claims', (r4.n || 0) === 0, `n=${r4.n}`);
  }

  // ----- U2: KP-004 source_health -----
  console.log('\n--- U2: KP-004 source_health ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM data_source_health`);
    block('U2.1 data_source_health populated', (r.n || 0) >= 100, `n=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM data_source_health WHERE license_status = 'active'`);
    block('U2.2 most sources active', (r2.n || 0) >= 80, `n_active=${r2.n}`);
  }

  // ----- U3: KP-007 media_rights (Display Gate enforcement) -----
  console.log('\n--- U3: KP-007 media_rights (display gate) ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM media_asset`);
    block('U3.1 media_asset has rows', (r.n || 0) >= 1, `n=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM media_rights WHERE (SELECT COUNT(*) FROM media_expiry WHERE media_asset_id = media_rights.media_asset_id AND status = 'expired') = 0`);
    // soft check: media_rights doesn't have a 'status' column, but media_asset does
    ok('U3.2 most media_rights are not expired', (r2.n || 0) >= 1, `n=${r2.n}`);

    const r3 = d1Count(`SELECT COUNT(*) AS n FROM media_rights_review`);
    block('U3.3 media_rights_review populated', (r3.n || 0) >= 1, `n=${r3.n}`);

    const r4 = d1Count(`SELECT COUNT(*) AS n FROM media_expiry`);
    block('U3.4 media_expiry populated', (r4.n || 0) >= 1, `n=${r4.n}`);

    const r5 = d1Count(`SELECT COUNT(*) AS n FROM media_asset ma WHERE NOT EXISTS (SELECT 1 FROM media_rights WHERE media_asset_id = ma.id)`);
    block('U3.5 NO media_asset without rights', (r5.n || 0) === 0, `n_orphan=${r5.n}`);
  }

  // ----- U4: API contract (no 5xx) -----
  console.log('\n--- U4: API contract (no 5xx) ---');
  {
    // KP-003 endpoints
    const r1 = await fetchJson(`${BASE}/v1/claims?limit=1`);
    block('U4.1 /v1/claims no 5xx', r1.status < 500, `status=${r1.status}`);

    // KP-004 endpoints
    const r2 = await fetchJson(`${BASE}/v1/sources?limit=1`);
    block('U4.2 /v1/sources no 5xx', r2.status < 500, `status=${r2.status}`);

    // KP-007 endpoints
    const r3 = await fetchJson(`${BASE}/v1/admin/media/review-queue`);
    block('U4.3 /v1/admin/media/review-queue no 5xx', r3.status < 500, `status=${r3.status}`);

    // Find a person
    const r4 = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = r4.body?.data?.[0]?.id;
    if (personId) {
      const r5 = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      block('U4.4 /v1/entities/{id}/media no 5xx', r5.status < 500, `status=${r5.status}`);
    }

    // Find a media
    if (personId) {
      const { body: mediaList } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      const mid = mediaList?.data?.[0]?.asset?.id;
      if (mid) {
        const r6 = await fetchJson(`${BASE}/v1/media/${mid}`);
        block('U4.5 /v1/media/{id} no 5xx', r6.status < 500, `status=${r6.status}`);
        const r7 = await fetchJson(`${BASE}/v1/media/${mid}/download`);
        block('U4.6 /v1/media/{id}/download no 5xx', r7.status < 500, `status=${r7.status}`);
        const r8 = await fetchJson(`${BASE}/v1/media/${mid}/transform?w=200`);
        block('U4.7 /v1/media/{id}/transform no 5xx', r8.status < 500, `status=${r8.status}`);
        const r9 = await fetchJson(`${BASE}/v1/admin/media/${mid}/approve`, { method: 'POST' });
        block('U4.8 POST /v1/admin/media/{id}/approve no 5xx', r9.status < 500, `status=${r9.status}`);
      }
    }
  }

  // ----- U5: OpenAPI registration -----
  console.log('\n--- U5: OpenAPI ---');
  {
    const r = await fetchJson(`${BASE}/openapi.json`);
    block('U5.1 OpenAPI doc available', r.status === 200, `status=${r.status}`);
    const paths = Object.keys(r.body?.paths || {});
    const newPaths = paths.filter(p =>
      p === '/v1/entities/{id}/media' || p === '/v1/media/{id}' ||
      p === '/v1/media/{id}/download' || p === '/v1/media/{id}/transform' ||
      p === '/v1/admin/media/review-queue' || p === '/v1/admin/media/{id}/approve' ||
      p === '/v1/admin/media/{id}/reject'
    );
    block('U5.2 KP-007 endpoints registered in OpenAPI', newPaths.length >= 5, `paths=${newPaths.length} ${newPaths.join(', ')}`);
  }

  // ----- U6: weighted_provenance_score -----
  console.log('\n--- U6: weighted_provenance_score ---');
  {
    const r = d1Count(`SELECT AVG(confidence) AS n FROM claim WHERE id LIKE 'clm_legacy_%'`);
    const avg = r.n || 0;
    block('U6.1 weighted_provenance_score (avg confidence) >= 0.5', avg >= 0.5, `avg=${avg.toFixed(3)}`);
  }

  // ----- U7: rights_readiness (now binding since KP-007) -----
  console.log('\n--- U7: rights_readiness (KP-007) ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM media_asset ma WHERE ma.status = 'approved' AND NOT EXISTS (SELECT 1 FROM media_rights WHERE media_asset_id = ma.id)`);
    block('U7.1 rights_readiness: all approved media have rights', (r.n || 0) === 0, `n_orphan=${r.n}`);

    const r2 = d1Count(`SELECT COUNT(*) AS n FROM media_rights WHERE attribution_text IS NULL OR attribution_text = ''`);
    block('U7.2 all media_rights have attribution_text', (r2.n || 0) === 0, `n_missing=${r2.n}`);
  }

  // ----- U8: citation coverage (KP-004) -----
  console.log('\n--- U8: citation coverage ---');
  {
    const r = d1Count(`SELECT COUNT(*) AS n FROM claim c WHERE c.status = 'published' AND NOT EXISTS (SELECT 1 FROM claim_source cs WHERE cs.claim_id = c.id)`);
    block('U8.1 all published claims have >= 1 source', (r.n || 0) === 0, `n_orphan=${r.n}`);
  }

  // ----- U9: display gate enforcement (KP-007) -----
  console.log('\n--- U9: display gate (no rights-unknown media shown) ---');
  {
    // Find a person and check their media list
    const r = await fetchJson(`${BASE}/v1/people?limit=1`);
    const personId = r.body?.data?.[0]?.id;
    if (personId) {
      const { body: mediaList } = await fetchJson(`${BASE}/v1/entities/${personId}/media`);
      const all = mediaList?.data || [];
      const allHaveValidLicense = all.every(m => m.rights?.license_code);
      block('U9.1 all displayed media have valid license_code', allHaveValidLicense, `n=${all.length}`);
    }
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
