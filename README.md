# Historical Knowledge Platform — `historical-knowledge-api`

> Source-backed historical knowledge API and web presence. The home of the "On This Day" experience.

A **public, free, source-backed** platform for historical discovery. Every fact is a claim, every claim has provenance, every disputed date is preserved as a range, every generation step cites its inputs.

- **API base**: `/v1` — see `docs/api/`
- **Web**: `/on-this-day/{mm-dd}` (curated) and `/on-this-day/{yyyy-mm-dd}` (specific dates)
- **Stack**: Hono + Cloudflare Workers + D1 + R2 + Queues + Workflows + Vectorize + KV
- **Spec**: OpenAPI 3.1 generated from `@hono/zod-openapi` runtime validation schemas
- **License**: see `LICENSE` (TBD — default MIT unless otherwise specified)

---

## Status

- **Repo**: created 2026-08-05, public, default branch `main`
- **TASK-001 PASS** (platform foundation) — 7/7 smoke + 7/7 unit, deployed to preview
- **Preview URL**: https://historical-knowledge-api-preview.nsura2029.workers.dev
- **M0 (Foundation) target**: end of week 1 from TASK-001 start — **DONE 2026-08-05**
- **M1 (Core model + first sources) target**: weeks 2-6
- **MVP bar (PRD §16)**: ≥50K events / 50K people / 10K places by week 8

## Quickstart (local)

```bash
pnpm install
CLOUDFLARE_API_TOKEN=... CLOUDFLARE_ACCOUNT_ID=... pnpm --filter @hka/api dev
# in another terminal:
node apps/api/scripts/smoke.mjs http://127.0.0.1:8787
```

## Quickstart (preview)

```bash
CLOUDFLARE_API_TOKEN=... CLOUDFLARE_ACCOUNT_ID=... pnpm --filter @hka/api deploy:preview
SMOKE_URL=https://historical-knowledge-api-preview.nsura2029.workers.dev \
  node apps/api/scripts/smoke.mjs
```

## How to read this repo

| If you want to...            | Read                                                                               |
| ---------------------------- | ---------------------------------------------------------------------------------- |
| Understand the product       | `PRD-IMPLEMENTATION-NOTES.md`                                                      |
| Understand how to work on it | `AGENT-INSTRUCTIONS.md`                                                            |
| See what task is in flight   | `docs/tasks/` (active spec) and `docs/quality-reports/` (most recent PASS/BLOCKED) |
| See API contracts            | `apps/api/src/routes/v1/` + `/openapi.json` once deployed                          |
| See the data model           | `packages/db/migrations/` (after TASK-004 lands)                                   |
| See how data is ingested     | `packages/ingestion/` (after TASK-005 lands)                                       |

## Architecture

```
/apps/api                  → Cloudflare Worker (Hono) — public + admin API
/packages/contracts        → zod schemas, OpenAPI definition
/packages/db               → D1 migrations, queries, seeds
/packages/ingestion        → connectors, normalizers, resolvers, enrichers, quality
/docs                      → architecture, api, sources, runbooks, tasks, quality-reports, adr
/tests                     → unit, integration, contract, edge, fixtures
wrangler.jsonc             → Cloudflare Workers config
```

This is a pnpm monorepo. See `pnpm-workspace.yaml`.

## Local development

Coming with TASK-001. Until then, the empty shell is in place.

## Deployment

Coming with TASK-001. Will be: `wrangler deploy` → Worker (prod env) + `wrangler deploy --env dev` → Worker (dev env, same D1).

## Source of truth hierarchy

1. `AGENT-INSTRUCTIONS.md` — operating contract, task lifecycle, task file template, repo structure, API conventions, response shapes, 20-task sequence, quality commands, PR review checklist, definition of done.
2. `PRD.md` (kept in this repo, copied from spec) — product definition, data model, MVP acceptance criteria.
3. `PRD-IMPLEMENTATION-NOTES.md` — decisions specific to this build (data reuse, MVP scope, weekly cadence, page taxonomy, repo choice).

## No changes to `dateandtime-api-v2`

This repo is **independent**. The data copy from `dateandtime-api-v2` is a one-time, read-only operation owned by TASK-007. The existing repo gets zero writes.
