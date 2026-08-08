# AGENTS.md — root index for the DOX tree

> **This file is the entry point.** The dox framework (https://github.com/agent0ai/dox) requires that before any edit, the agent walks the docs tree from the root to the area it will touch. The relevant docs give exact local guidelines, so the agent does not edit blindly. After meaningful changes, the agent updates the affected `AGENTS.md` files.

## Roadmap alignment: 24-task KP sequence

As of 2026-08-08, the platform aligns with the **Britannica-inspired PRD**:
6 verticals, 24 sequential KP-### tasks. The 20-task sequence in
`AGENT-INSTRUCTIONS.md` is a **subset** of this. Going forward, every new
feature work references BOTH the relevant TASK-### (team context) and the
relevant KP-### (platform context).

- **Master roadmap**: `docs/strategy/PRD-MVP-ROADMAP.md`
- **DOX alignment notes**: `docs/architecture/00-DOX-ALIGNMENT-NOTES.md`
- **KP status table**: `docs/tasks/AGENTS.md` (this is the master list)
- **Year 1 target**: 10-min avg visit by end of Q4
- **Editorial team**: comes end of Year 1; LLM-first until then

**Current focus**: Famous People / Biographies vertical. Top-500 famous Americans
shipped with 6040 date-anchored events from 3 sources (Wikipedia, DBpedia, Wikidata).
Next: KP-018 v2 (extend top-500 to top-1000 + non-American famous people) OR
KP-006 (temporal precision to hour/minute) OR add a 4th data source (VIAF/LoC).

## What this project is

**Historical Knowledge Platform** (`historical-knowledge-api`) — a public, free, source-backed "On This Day" + Famous People API on Cloudflare Workers. Every fact is a claim, every claim has provenance, every disputed date is preserved as a range, every generation step cites its inputs.

## What's shipped (2026-08-08, dev D1)

| KP | Title | Status | Ship commit |
|---|---|---|---|
| KP-001 | Confirm product intents, personas, page contracts | ✅ done (Famous People scope) | pre-KP-002 |
| KP-002 | Source registry + connector allowlist | ✅ done (109 sources, tier A-E) | migration 0013 |
| KP-003 | Atomic-claim model (claim, claim_source, source_record) | ✅ done | migration 0012 + `a6e30a0` |
| KP-004 | Evidence + bibliography + citation export | ✅ done | migration 0013 + `1482148` |
| KP-005 | Identity resolution | 🟡 partial (slug_redirect only) | — |
| KP-006 | Temporal + geographic foundation | 🟡 partial (day-precision dates) | — |
| KP-007 | Media + rights pipeline | ✅ done | migration 0014 + `fd8ffae` |
| KP-008 | Slugs, internal links, breadcrumbs, related | ✅ done | migration 0008 |
| KP-009 | Universal search + intent detection + facets | 🟡 partial (10 facets) | — |
| KP-010 | Biography vertical | ✅ done (top-500 + biographies) | migration 0015-0017 + `002addd` |
| KP-013 | Geography & Travel vertical | 🟡 partial (38 places) | — |
| KP-017 | Public + admin Hono APIs with OpenAPI | ✅ done (50+ endpoints) | `9ce30cc` |
| KP-018 | Top-500 USA + 6040 events from 3 sources | ✅ done | `9ce30cc` + `608d1ea` |
| KP-029 | Multi-source events (Wikipedia + DBpedia + Wikidata) | ✅ done | `608d1ea` |

### Numbers (dev D1, 2026-08-08)

- **494 people** (459 top-500 USA + 35 international)
- **6040 entity_event rows** across 3 sources (Wikipedia 4133 + DBpedia 1887 + Wikidata 20)
- **109 source_registry** entries (Tier A-E)
- **31 profession/dimension tags** with 666 entity_tag links
- **183 entity_image** rows (Wikimedia R2-mirrored)
- **1025 content_section** rows
- **50+ API endpoints** (28+ baseline + 22 across KP-003/004/007/010/017/018/029)
- **357 smoke + edge tests** passing (v7-v13)
- **24/24 quality gate** passing
- **Live worker**: https://historical-knowledge-api-dev.nsura2029.workers.dev
- **Latest preview**: https://rpaav0t3mehv6.space.minimax.io

### Migrations applied (32 total)

0001-0009 (initial schema), 0010-0011 (on-this-day), 0012 (KP-003 claim model),
0013 (KP-004 evidence), 0014 (KP-007 media rights), 0015-0017 (KP-010 biographies),
0018 (Wikimedia gallery), 0019-0022 (topic sections), 0023 (news GDELT), 0024 (image fixes),
0025-0026 (top-500 + tags), 0027 (sections re-pass), 0028 (entity_event), 0029 (Wikipedia events),
0030 (Wikidata events), 0031 (DBpedia events), 0031a (src_dbpedia), 0032 (fix source labels).

See `packages/db/migrations/AGENTS.md` for per-migration details.

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
│   │   │           └── AGENTS.md            ← the 50+ v1 endpoints index (KP-003/004/007/010/017/018/029)
│   │   └── scripts/
│   │       └── AGENTS.md                    ← smoke test patterns (v7-v13)
├── packages/
│   ├── contracts/
│   │   └── AGENTS.md                        ← shared Zod schemas (RefDocError, envelopes)
│   ├── db/
│   │   ├── AGENTS.md                        ← D1 schema overview + cross-migration gotchas
│   │   ├── migrations/
│   │   │   └── AGENTS.md                    ← each migration's purpose + naming convention (32 applied)
│   │   └── seed/                            ← 12+ seed scripts (top-500, events, images, etc.)
│   └── ingestion/
│       └── AGENTS.md                        ← raw ingestion framework (TASK-005) + new seed scripts
└── docs/
    ├── AGENTS.md                            ← docs directory guide
    ├── tasks/
    │   └── AGENTS.md                        ← task spec template + current status (KP status table)
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
- **Git workflow (refined 2026-08-08)**: `feature/*` branch → quality gate (smoke + edge + spec checks) → `wrangler deploy --env dev` → user verifies at `https://historical-knowledge-api-dev.nsura2029.workers.dev` → user says LGTM → `git merge --ff-only feature/* develop` → `git worktree remove` → push develop → spin up next worktree. **Never push directly to `main` or `develop`.**
- **Calendar purity** (HistoricalDate): when `calendar != 'gregorian'`, the proleptic `date_earliest` is for search/index only — display always shows `original` text.
- **Editorial approval gate**: a claim is not published without `editorial_revision.status = 'approved'`.
- **Indexability gates** for SEO pages: 10 rules in `PRD-IMPLEMENTATION-NOTES.md` §6.2. Pages that fail any rule get `<meta name="robots" content="noindex">`.
- **Multi-source event attribution** (NEW 2026-08-08): every `entity_event` row has a `source_id` FK to `source_registry`. Use the matching source badge in UIs (DBpedia=purple, Wikidata=green, Wikipedia=blue). Confidence 0.6 (Wikipedia body), 0.8 (DBpedia), 0.85 (Wikidata structured).

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
