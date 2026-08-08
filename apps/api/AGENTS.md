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
│   │   ├── tags.ts               # GET /v1/tags, GET /v1/people/by-tag/{tag_id}  (KP-018)
│   │   ├── biography.ts          # 4 biography endpoints (KP-010)
│   │   ├── sections.ts           # section detail (KP-010)
│   │   ├── claims.ts             # 5 claim endpoints (KP-003)
│   │   ├── sources.ts            # 7 source endpoints (KP-004)
│   │   ├── media.ts              # 7 media endpoints (KP-007)
│   │   ├── events.ts             # 3 events endpoints (KP-029)
│   │   ├── index.ts              # mounts all the above
│   │   └── v1/AGENTS.md          # ← per-endpoint index (READ THIS)
│   └── scripts/                  # DEPRECATED — moved to /packages/db/seed/
├── scripts/                      # smoke + edge tests
│   ├── v7-smoke.mjs              # 33 tests (baseline)
│   ├── v8-smoke.mjs              # 42 tests (biography)
│   ├── v9-smoke.mjs              # 37 tests (events timeline)
│   ├── v10-smoke.mjs             # 58 tests (top-500)
│   ├── v10-edge.mjs              # 15 edge cases
│   ├── v11-smoke.mjs             # 66 tests (claims + sources + media)
│   ├── v12-smoke.mjs             # 40 tests (tags + by-tag + events)
│   ├── v13-smoke.mjs             # 21 tests (multi-source events + source_id) [NEW 2026-08-08]
│   ├── v7-v9 edge tests          # 45 edge cases
│   ├── quality-gate.mjs          # 24 quality gates
│   ├── smoke.mjs                 # main smoke (legacy)
│   └── AGENTS.md                 # ← smoke test patterns (READ THIS)
├── migrations/                   # DEPRECATED — use /packages/db/migrations
├── wrangler.jsonc
└── package.json
```

## Live endpoints (50+, as of 2026-08-08)

See `apps/api/src/routes/v1/AGENTS.md` for the full per-endpoint index. Categories:
- **Browse & detail** (5): people, person-detail, timeline, related, references
- **Entity pages** (9): places, countries, professions, generations, star-signs, chinese-zodiacs, causes-of-death, works, awards
- **Facets** (10): professions, countries, generations, star-signs, chinese-zodiacs, causes-of-death, eras, awards, industries, fame-categories
- **Search & admin** (3): search, admin (11 ops)
- **Years/birthdays/system** (9): years, birthdays, on-this-day×3, health, version, openapi.json, docs
- **Tags** (2 — KP-018): /v1/tags, /v1/people/by-tag/{tag_id}
- **Biographies** (4 — KP-010): /v1/people/{slug}/biography, /sections, /quick-facts
- **Claims** (5 — KP-003): /v1/claims, /v1/claims/{id}, /v1/claims/{id}/evidence, /v1/entities/{id}/claims, /v1/conflict-groups/{id}
- **Sources** (7 — KP-004): /v1/sources, /v1/sources/{id}, /v1/sources/{id}/claims, /v1/entities/{id}/sources, /v1/entities/{id}/revisions, POST /v1/admin/editorial-revisions, /v1/entities/{id}/citations
- **Media** (7 — KP-007): /v1/entities/{id}/media, /v1/media/{id}, /v1/media/{id}/download, /v1/media/{id}/transform, GET /v1/admin/media/review-queue, POST /v1/admin/media/{id}/approve, POST /v1/admin/media/{id}/reject
- **Events** (3 — KP-029): /v1/people/{slug}/events, /events/by-category, /events/timeline

Total: 28 baseline + 22 across KP-003/004/007/010/017/018/029.

## Source registry reference

109 sources, 5-tier hierarchy A-E. The `source_registry` table has columns `id`, `source_name`, `source_type`, `base_url`, `source_quality_tier` (A/B/C/D/E), `commercial_use_status`, etc. **Note: `source_name` not `name`** (gotcha). For a list of all source IDs, see `apps/api/src/routes/v1/AGENTS.md` §Source IDs.

### Event source tiers (NEW 2026-08-08, KP-029)

| Source | Tier | Status | Events | Used for |
|---|---|---|---|---|
| `src_en_wikipedia` | E | APPROVED_BULK | 4133 | Wikipedia body text extraction |
| `src_dbpedia` | B | APPROVED_BULK | 1887 | DBpedia SPARQL date properties |
| `src_wikidata` | A | APPROVED_BULK | 20 | Wikidata structured claims (rate-limited, will scale) |

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
