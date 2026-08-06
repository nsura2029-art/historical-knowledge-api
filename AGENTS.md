# AGENTS.md — root index for the DOX tree

> **This file is the entry point.** The dox framework (https://github.com/agent0ai/dox) requires that before any edit, the agent walks the docs tree from the root to the area it will touch. The relevant docs give exact local guidelines, so the agent does not edit blindly. After meaningful changes, the agent updates the affected `AGENTS.md` files.

## What this project is

**Historical Knowledge Platform** (`historical-knowledge-api`) — a public, free, source-backed "On This Day" + Famous People API on Cloudflare Workers. Every fact is a claim, every claim has provenance, every disputed date is preserved as a range, every generation step cites its inputs.

## Read first (in order)

1. `AGENT-INSTRUCTIONS.md` — the operating contract (45KB). Read the whole thing before doing anything non-trivial.
2. `PRD-IMPLEMENTATION-NOTES.md` — product decisions specific to this build (MVP scope, weekly cadence, page taxonomy, "no changes to existing" guard).
3. The active task spec in `docs/tasks/TASK-###-*.md` (if working on a specific TASK-###).
4. The most recent quality report in `docs/quality-reports/`.

## DOX tree (this file's children)

```
AGENTS.md                                    ← you are here (root index)
├── apps/
│   ├── api/
│   │   ├── AGENTS.md                        ← API Worker overview, deps, dev/deploy
│   │   ├── src/
│   │   │   └── routes/
│   │   │       ├── AGENTS.md                ← route patterns + how to add an endpoint
│   │   │       └── v1/
│   │   │           └── AGENTS.md            ← the 28+ v1 endpoints index
│   │   └── scripts/
│   │       └── AGENTS.md                    ← smoke test patterns (v2, v3, v4, v5)
├── packages/
│   ├── contracts/
│   │   └── AGENTS.md                        ← shared Zod schemas (RefDocError, envelopes)
│   ├── db/
│   │   ├── AGENTS.md                        ← D1 schema overview + cross-migration gotchas
│   │   └── migrations/
│   │       └── AGENTS.md                    ← each migration's purpose + naming convention
│   └── ingestion/
│       └── AGENTS.md                        ← raw ingestion framework (TASK-005)
└── docs/
    ├── AGENTS.md                            ← docs directory guide
    ├── tasks/
    │   └── AGENTS.md                        ← task spec template + current status
    ├── quality-reports/
    │   └── AGENTS.md                        ← quality report template
    ├── api/
    │   └── AGENTS.md                        ← API doc conventions
    └── architecture/
        └── AGENTS.md                        ← architecture doc conventions
```

## Project-specific addenda (dox framework extension)

These are non-overrides — they extend `AGENT-INSTRUCTIONS.md` but do not contradict it:

- **No changes to `dateandtime-api-v2`**. The data copy is one-time, read-only, owned by TASK-007. Zero writes to the existing repo or any other existing D1.
- **All new Cloudflare resources MUST be prefixed `historical-knowledge-api-`**. The dev Worker is `historical-knowledge-api-dev`, the D1 is `historical-knowledge-api-d1`, etc.
- **Use `wrangler.jsonc`** (not `wrangler.toml`).
- **Git workflow (NEW 2026-08-05)**: `feature/*` branch → push → `wrangler deploy --env dev` → user verifies at `https://historical-knowledge-api-dev.nsura2029.workers.dev` → user says LGTM → `git merge --ff-only feature/* develop`. **Never push directly to `main` or `develop`.**
- **Calendar purity** (HistoricalDate): when `calendar != 'gregorian'`, the proleptic `date_earliest` is for search/index only — display always shows `original` text.
- **Editorial approval gate**: a claim is not published without `editorial_revision.status = 'approved'`.
- **Indexability gates** for SEO pages: 10 rules in `PRD-IMPLEMENTATION-NOTES.md` §6.2. Pages that fail any rule get `<meta name="robots" content="noindex">`.

## Standing engineering discipline (apply to any directory)

- **TypeScript strict mode.** No `any` in new code; if you must, justify in the PR description.
- **Hand-written SQL with `?` bindings.** No ORM. The DB schema is the contract; the SQL is the implementation.
- **Zod schemas are the source of truth for the API.** Schemas in `apps/api/src/routes/v1/*.ts`. Shared types in `packages/contracts/`.
- **Smoke test every new endpoint.** Add to the next v#-smoke.mjs script. No PR without a passing smoke.
- **Update the relevant `AGENTS.md` after meaningful changes.** That's the dox invariant. New endpoint → update `apps/api/src/routes/v1/AGENTS.md`. New migration → update `packages/db/migrations/AGENTS.md`. New source → update `apps/api/AGENTS.md` source registry section.

## Code conventions

- **Language**: TypeScript (strict mode)
- **Formatter**: Prettier (default config)
- **Linter**: ESLint with `@typescript-eslint`
- **Runtime validation**: zod
- **OpenAPI**: `@hono/zod-openapi` — one source of truth for routes and docs
- **Testing**: Vitest (unit, integration, contract, edge, fixtures)
- **Package manager**: pnpm (workspaces)
- **No client SDK generated yet** — TS types via Hono RPC when ready (Phase 5)

## Repo-bound secrets — NEVER commit

- Cloudflare API token
- Cloudflare account ID
- GitHub PAT
- Workers AI / external API keys
- D1 / R2 / KV connection strings (Workers bindings, not secrets — in wrangler.jsonc)

`.gitignore` includes `.dev.vars`, `.env*`, `node_modules/`, `dist/`, `.wrangler/`, `coverage/`.

## When stuck

1. Walk the DOX tree to the directory you'll touch. Read its `AGENTS.md` and any child `AGENTS.md` files.
2. Re-read the task spec (`docs/tasks/TASK-###-*.md`).
3. Re-read the previous task's quality report.
4. If the spec is wrong, update the spec, re-document in the quality report, mark BLOCKED.
5. Do not invent scope.
