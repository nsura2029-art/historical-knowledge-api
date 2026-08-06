# apps/api/scripts/AGENTS.md — smoke tests

> **Owner**: smoke test scripts. Read before editing or adding a smoke.

## What lives here

```
apps/api/scripts/
├── v2-smoke.mjs     # 44 tests — original smoke + entity + facets
├── v3-smoke.mjs     # 31 tests — timeline + years + deep-dive
├── v4-smoke.mjs     # 27 tests — related + references
└── v5-smoke.mjs     # 48 tests — Trump deep-dive + slug redirects
```

Total: **150 tests** as of 2026-08-05, all passing.

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

## How to add a new test

1. Pick the right `v#-smoke.mjs` (next available number — v6, v7, etc.). If adding to an existing one, append at the end before the summary line.
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
