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

**Current focus**: 2nd vertical (Places) to 1000 SHIPPED. Now extending enrichment
(events, images, relations) to the 846 newly added cities. Next: KP-013 v2 enrichment
(places events for 600+ more places), orgs vertical 481 → 1000 (need 519 more), and
the deferred places work (images for 500+ more places, sections backfill for 177).

**Key 2026-08-10 milestone**: 1023 places (5.8x) with 4 sections + 7950 events + 1072 person-place
relations + 507 place images, all via 4 sources (Wikipedia rule, GDELT GKG, DBpedia, Wikidata).

## What this project is

**Historical Knowledge Platform** (`historical-knowledge-api`) — a public, free, source-backed "On This Day" + Famous People API on Cloudflare Workers. Every fact is a claim, every claim has provenance, every disputed date is preserved as a range, every generation step cites its inputs.

## What's shipped (2026-08-08, dev D1)

| KP | Title | Status | Ship commit |
|---|---|---|---|
| KP-001 | Confirm product intents, personas, page contracts | ✅ done (Famous People scope) | pre-KP-002 |
| KP-002 | Source registry + connector allowlist | ✅ done (109 sources, tier A-E) | migration 0013 |
| KP-003 | Atomic-claim model (claim, claim_source, source_record) | ✅ done | migration 0012 + `a6e30a0` |
| KP-004 | Evidence + bibliography + citation export | ✅ done | migration 0013 + `1482148` |
| KP-005 | Identity resolution (5 merges + 308 redirect) | ✅ done | `47c304a` |
| KP-006 | Temporal + geographic foundation | 🟡 partial (DAY/MONTH/YEAR precision) | — |
| KP-007 | Media + rights pipeline (1018 media_asset + media_rights) | ✅ done | migration 0014 + `fd8ffae` + `0059/0062` |
| KP-008 | Slugs, internal links, breadcrumbs, related | ✅ done | migration 0008 |
| KP-009 | Universal search + intent detection + facets | 🟡 partial (10 facets) | — |
| KP-010 | Biography vertical | ✅ done (top-500 + biographies) | migration 0015-0017 + `002addd` |
| KP-013 | Geography & Travel vertical (1023 places, 2nd vertical to 1000) | ✅ done | `64679b1` + `6da31c9` |
| KP-017 | Public + admin Hono APIs with OpenAPI | ✅ done (50+ endpoints) | `9ce30cc` |
| KP-018 | Top-1000 USA + 75365 events from 4 sources | ✅ done | `b1ff7d6` + `f59c2b7` |
| KP-025 | Fortune 500 orgs (481 entities) | ✅ done | `29baf04` |
| KP-026 | Backlinks (organizations + related_entities) | ✅ done | `29baf04` |
| KP-029 | Multi-source events (Wikipedia + DBpedia + Wikidata + GDELT) | ✅ done | `608d1ea` + `4490c06` |
| KP-029-full | Full Wikidata extraction (929 people, 13112 wd events) | ✅ done | migrations 0033 + 0050 |

### Numbers (dev D1, 2026-08-10)

- **1054 persons** (1026 US + 28 international) — top vertical (was 494 in KP-018 v1, 691 in v2)
- **1023 places** (871 cities + 48 states + 41 landmarks + 51 universities + 12 countries) — 2nd vertical to hit 1000
- **1075 organizations** (F500 + S&P500 + Banks + Wikidata public cos, was 481, KP-orgs-1000 2026-08-10) — 3rd vertical to hit 1000
- **1001/1075 orgs with sections** (was 0, KP-orgs-sections 2026-08-10) — 760 with full 4-section set
- **719/1075 orgs with primary image** (was 0, KP-orgs-images 2026-08-10)
- **622/1075 orgs with 17,594 events** (was 0, KP-orgs-events 2026-08-11) — 3633 DAY, 4219 MONTH, 9742 YEAR precision
- **549/1023 places with 8,201 events** (was 237, +2 in KP-place-events-r2 2026-08-11) — elizabethton 30, cartersville 16 + 310 more places with 317 Wikidata events (KP-place-events-wikidata 2026-08-12)
- **1018 media entities** + **1018 media_asset** + **1018 media_rights** (CC-BY-SA-4.0)
- **75365 entity_event rows** across 4 sources (Wikipedia 41466 + Wikidata 31112 + GDELT 10679 + DBpedia 1887)
- **929 people with 1+ Wikidata events** (was 1 person in KP-029 v1, 415 in KP-029-full)
- **64% DAY precision** events (was 51% in KP-018 v1)
- **109 source_registry** entries (Tier A-E)
- **1051/1051 persons with US citizenship** (was 120)
- **1015/1051 persons with primary image** (was 173)
- **1021/1051 persons with all 4 sections** (intro + career + personal + legacy, was 173)
- **1072 person_place_relations** (was 28)
- **1000/1023 places with primary image** (was 507, KP-places-images-r2 2026-08-10)
- **980/1023 places with 4 sections** (overview + history + geography + demographics, was 846, KP-place-sections-r2 2026-08-10)
- **7950 entity_event rows for places** (was 4866)
- **50+ API endpoints** (28+ baseline + 22 across KP-003/004/007/010/017/018/029)
- **72 smoke + edge tests** passing (smoke 7 + v14 15 + kp005 13 + kp018v3 5 + kp-places-1000 8 + quality-gate 24)
- **24/24 quality gate** passing
- **Live worker**: https://historical-knowledge-api-dev.nsura2029.workers.dev
- **Latest deploy version**: `080d9327-c014-422b-9e08-ca1822cbcd0d` (2026-08-10)

### Migrations applied (70 total)

0001-0009 (initial schema), 0010-0011 (on-this-day), 0012 (KP-003 claim model),
0013 (KP-004 evidence), 0014 (KP-007 media rights), 0015-0017 (KP-010 biographies),
0018 (Wikimedia gallery), 0019-0022 (topic sections), 0023 (news GDELT), 0024 (image fixes),
0025-0026 (top-500 + tags), 0027 (sections re-pass), 0028 (entity_event), 0029 (Wikipedia events),
0030 (Wikidata events, 20 rows), 0031 (DBpedia events), 0031a (src_dbpedia), 0032 (fix source labels),
0033 (KP-029-full: full Wikidata events, 6028 new rows),
0034-0036 (F500 orgs, top-1000 US persons batch 1+2),
0037 (KP-026 backlinks), 0038 (KP-013 v2 US places), 0039 (backfill person rows),
0040-0042 (events pipeline v2: date_precision, wd, wiki, gdelt, event_type fix),
0043 (GDELT GKG bulk for top 200), 0043b (GDELT all 869), 0044-0046 (KP-005 merges + Bonnie&Clyde pair),
0047-0048 (KP-018 v3 batches), 0049-0061 (KP-018v3 data enrichment: sections, images, person_derived, pda fix, media_rights),
0062 (media_rights for backfilled images), 0063 (pda YEAR fallback),
0065-0067 (KP-places-1000: bulk ingest cities, states, extra cities, sections backfill),
0068-0069 (place wiki events), 0070 (place relations), 0071 (place images),
0072 (KP-places-images-r2: 493 places via /page/summary/ + 'City, State' fallback),
0073 (KP-place-sections-r2: 158 places with 4 sections each, 560 rows),
0074 (KP-orgs-1000: 594 new orgs from F500+S&P500+Banks+Wikidata, 1075 total),
0075 (KP-orgs-sections: 1001 orgs with sections, 3389 section rows, 4 sections each),
0076 (KP-orgs-images: 719 orgs with primary image, +hero_image_url/sections_count/events_count/popularity_score on /v1/organizations/{slug}),
0077 (KP-orgs-events: 622 orgs with 17594 events from Wikipedia, +GET /v1/organizations/{slug}/events).
0078 (KP-place-events-r2: 2 more places (elizabethton 30, cartersville 16) — only quality places kept from broader run, 600+ target via Wikipedia rule alone isn't realistic).
0079 (KP-place-events-wikidata: 310 more places via Wikidata P571/P793, +317 events. Bootstrapped 731 place.wikidata_qid for future enrichment. Coverage: 549/1023 places with events.)

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
