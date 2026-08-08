# apps/api/scripts/AGENTS.md — smoke tests

> **Owner**: smoke test scripts. Read before editing or adding a smoke.

## What lives here

```
apps/api/scripts/
├── v7-smoke.mjs              # 33 tests — T1 baseline + T2 entity pages + T3 facets
├── v8-smoke.mjs              # 42 tests — biography endpoints (KP-010)
├── v9-smoke.mjs              # 37 tests — timeline + claims + sources (KP-003/004)
├── v10-smoke.mjs             # 58 tests — top-500 catalog + tags
├── v11-smoke.mjs             # 66 tests — media rights (KP-007)
├── v12-smoke.mjs             # 40 tests — events + tags + by-tag (KP-018 + KP-029 base)
├── v13-smoke.mjs             # 21 tests — multi-source events + source_id [NEW 2026-08-08]
├── v7-edge.mjs               # 18 edge cases
├── v8-edge.mjs               # 12 edge cases
├── v9-edge.mjs               # 15 edge cases
├── v10-edge.mjs              # 15 edge cases
├── quality-gate.mjs          # 24 quality gates
├── smoke.mjs                 # main smoke (legacy)
└── AGENTS.md                 # ← this file
```

Total: **357 smoke + edge tests** as of 2026-08-08, all passing. Plus **24/24 quality gate**.

## The pattern

Each smoke is a standalone Node script (no test framework — just fetch + assert). Run with `node scripts/v#-smoke.mjs`. Exits 0 on pass, 1 on fail.

```js
const BASE = 'https://historical-knowledge-api-dev.nsura2029.workers.dev';
let pass = 0, fail = 0;
const t = async (name, path, check) => {
  try {
    const r = await fetch(BASE + path);
    const body = await r.json();
    const ok = check({ status: r.status, body });
    console.log(`${ok ? '✓' : '✗'} ${name.padEnd(50)} ${r.status}`);
    ok ? pass++ : fail++;
  } catch (e) {
    console.log(`✗ ${name.padEnd(50)} error: ${e.message}`);
    fail++;
  }
};

const main = async () => {
  await t('Test name', '/v1/path', ({ body }) => body.x === 'y');
  console.log(`\n=== Summary: ${pass} pass, ${fail} fail ===`);
  process.exit(fail > 0 ? 1 : 0);
};
main().catch(err => { console.error(err); process.exit(1); });
```

## Standing gotchas

- **Always re-publish entities at the start** of the smoke. Smoke tests sometimes unpublish them: `pnpm exec wrangler d1 execute historical-knowledge-api-d1 --env dev --remote --command "UPDATE entity SET status = 'published' WHERE type = 'person';"` — do this before running the smoke. (This is the bug fix from commit `8ec611f`.)
- **No test framework** — just count pass/fail. The output is the report.
- **Cache invalidation** — Cloudflare may cache the response. If you've just deployed a route change, hit a unique URL (`?cb=$RANDOM`) to bust the cache for that one request. Or wait ~30s.
- **No auth needed** — the dev Worker is open. Don't put real secrets in test queries.
- **All 4 smokes must pass before merging to develop.** If a smoke fails, the merge is blocked.

## Per-smoke coverage map (NEW 2026-08-08)

| Smoke | Tests | Coverage |
|---|---|---|
| v7 | 33 | Health, version, browse, entity pages, facets |
| v8 | 42 | Biography endpoints (header, narrative, quick_facts, sources) |
| v9 | 37 | Timeline (events), claims, sources, citation export |
| v10 | 58 | Top-500 catalog, people, professions, generations, etc. |
| v11 | 66 | Media rights (review queue, approve, reject, download) |
| v12 | 40 | Tags, by-tag, events (KP-029 first cut) |
| v13 | 21 | Multi-source events: source_id, DBpedia events, source_registry |
| quality-gate | 24 | Performance, content quality, SEO, no-regression |
| **TOTAL** | **321** | All endpoints + cross-cutting concerns |

## How to add a new test

1. Pick the right `v#-smoke.mjs` (next available number — v14 next). If adding to an existing one, append at the end before the summary line.
2. Use the `t()` helper. Pick a unique name.
3. Group by feature (use `// === N. Feature name ===` comment block).
4. After adding, run: `node apps/api/scripts/v#-smoke.mjs` from the worktree root. Confirm pass count went up.
5. Commit + push + deploy to dev + hand off to user.

## When stuck

- The smoke fails on a 200 status but the body is wrong — your route changed, check the route file.
- The smoke fails on 404 — entity not published. Re-run the re-publish SQL.
- The smoke fails on 500 — check the Worker logs: `pnpm exec wrangler tail --env dev` (in another terminal).
- A test passes locally but fails on dev — cache issue, wait 30s or use `?cb=$RANDOM`.

## Not in scope (yet)

- Unit tests (Vitest) — not set up yet. Smoke tests are our primary correctness check.
- Integration tests against local D1 — would require a local D1 emulator. The dev Worker is the test target.
- Load tests — out of MVP scope. Hand-test by hammering `/v1/health`.

