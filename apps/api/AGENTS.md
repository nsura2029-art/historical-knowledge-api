# apps/api/AGENTS.md — the API Worker

> **Owner**: this directory. Read before editing anything under `apps/api/`.

## What this is

The Cloudflare Worker that serves the entire public API. Single Hono app, single D1 binding, single R2 binding, single KV binding, single Queue producer.

- **Stack**: Hono + `@hono/zod-openapi` + zod
- **Runtime**: Cloudflare Workers (V8 isolates)
- **Bindings** (`wrangler.jsonc` → `apps/api/wrangler.jsonc`):
  - `DB` → D1 `historical-knowledge-api-d1`
  - `RAW` → R2 `historical-knowledge-api-raw`
  - `CACHE` → KV `historical-knowledge-api-cache-prod` (preview uses `historical-knowledge-api-cache-preview`)
  - `INGEST` → Queue `historical-knowledge-api-ingest` (producer only; consumer is in a separate Worker)

## How to run

```bash
# Local dev (uses miniflare + local D1)
pnpm --filter @hka/api dev

# Deploy to DEV worker (for user review)
pnpm exec wrangler deploy --env dev

# Deploy to PROD worker (only after develop → main)
pnpm exec wrangler deploy
```

The dev Worker URL is `https://historical-knowledge-api-dev.nsura2029.workers.dev`. Every change must be verified there before merging to develop.

## Directory layout

```
apps/api/
├── src/
│   ├── index.ts                  # Hono app, error middleware, OpenAPI mount
│   ├── bindings.ts               # TS types for env.DB, env.RAW, env.CACHE
│   ├── routes/
│   │   ├── health.ts             # GET /v1/health, GET /v1/version
│   │   ├── people.ts             # GET /v1/people (browse)
│   │   ├── person-detail.ts      # GET /v1/people/{slug}
│   │   ├── timeline.ts           # GET /v1/people/{slug}/timeline
│   │   ├── related.ts            # GET /v1/people/{slug}/related
│   │   ├── references.ts         # GET /v1/people/{slug}/references
│   │   ├── entities.ts           # 9 entity pages
│   │   ├── facets.ts             # 5 facets
│   │   ├── facets-v2.ts          # 5 more facets
│   │   ├── search.ts             # 7-tier match scoring
│   │   ├── admin.ts              # 11 admin ops
│   │   ├── years.ts              # GET /v1/years/{year}
│   │   ├── birthdays.ts          # GET /v1/birthdays/{mm}/{dd}
│   │   ├── index.ts              # mounts all the above
│   │   └── v1/AGENTS.md          # ← per-endpoint index (READ THIS)
│   └── scripts/
│       └── ... (seed scripts)
├── scripts/                      # smoke tests
│   ├── v2-smoke.mjs              # 44 tests
│   ├── v3-smoke.mjs              # 31 tests
│   ├── v4-smoke.mjs              # 27 tests
│   ├── v5-smoke.mjs              # 48 tests
│   └── AGENTS.md                 # ← smoke test patterns (READ THIS)
├── migrations/                   # DEPRECATED — use /packages/db/migrations
├── wrangler.jsonc
└── package.json
```

## Source registry reference

107 sources, 5-tier hierarchy A-E. The `source_registry` table has columns `id`, `source_name`, `source_type`, `base_url`, `source_quality_tier` (A/B/C/D/E), `commercial_use_status`, etc. **Note: `source_name` not `name`** (gotcha). For a list of all source IDs, see `apps/api/src/routes/v1/AGENTS.md` §Source IDs.

## Standing gotchas (apply to this directory)

- **Hono `c` is the context** — never name a DB row `c`. Use `cityRow`, `personRow`, etc.
- **Hono doesn't auto-handle HEAD** — add explicit `app.on("HEAD", path, ...)` if needed. (Currently we don't have any HTML routes so this isn't blocking.)
- **Workers `[assets]` needs `run_worker_first = true`** if we ever serve static HTML from the Worker.
- **Date strings in SQL**: `start_date` uses YYYY-MM-DD, but historical dates may need `substr(start_date, 1, 4) = ?` for year-prefix filter (D1 stores TEXT, no native date math).
- **No D1 ORM** — every query is hand-written SQL with `?` bindings. See `packages/db/AGENTS.md` for limits.

## How to add a new endpoint

1. Add the route file under `apps/api/src/routes/`. Use `createRoute` from `@hono/zod-openapi` so the OpenAPI doc is generated.
2. Mount it in `apps/api/src/routes/index.ts`.
3. Add an entry to `apps/api/src/routes/v1/AGENTS.md` (the per-endpoint index).
4. Add a smoke test in the next `v#-smoke.mjs` script.
5. Run smoke locally: `node apps/api/scripts/v#-smoke.mjs`.
6. Deploy to dev: `pnpm exec wrangler deploy --env dev`.
7. Hand off to user for review.

## When stuck

1. Check `apps/api/src/routes/v1/AGENTS.md` — the per-endpoint index has gotchas per route.
2. Check `apps/api/src/routes/AGENTS.md` — the route-layer patterns (mounting, error handling, etc.).
3. Check `packages/db/AGENTS.md` — schema-level gotchas and D1 limits.
4. Check `docs/quality-reports/` for the most recent PASS/BLOCKED.
