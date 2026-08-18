# AGENTS.md — root index for the DOX tree

> **This file is the entry point.** The dox framework (https://github.com/agent0ai/dox) requires that before any edit, the agent walks the docs tree from the root to the area it will touch. The relevant docs give exact local guidelines, so the agent does not edit blindly. After meaningful changes, the agent updates the affected `AGENTS.md` files.

## Roadmap alignment: 24-task KP sequence

As of 2026-08-17, the platform aligns with the **Britannica-inspired PRD**:
6 verticals, 24 sequential KP-### tasks. The 20-task sequence in
`AGENT-INSTRUCTIONS.md` is a **subset** of this. Going forward, every new
feature work references BOTH the relevant TASK-### (team context) and the
relevant KP-### (platform context).

- **Master roadmap**: `docs/strategy/PRD-MVP-ROADMAP.md`
- **DOX alignment notes**: `docs/architecture/00-DOX-ALIGNMENT-NOTES.md`
- **KP status table**: `docs/tasks/AGENTS.md` (this is the master list)
- **Year 1 target**: 10-min avg visit by end of Q4
- **Editorial team**: comes end of Year 1; LLM-first until then

**Current focus**: **People Knowledge Graph (PKG) Phase 1A+1B SHIPPED 2026-08-17.**
440 USA famous people enriched with 3,753 claims, 774 family relations, 635 social profiles,
and 351 images. WHO/WHAT/CONNECTED/NOW 4-question layout live at
`/v1/pkg/person/{slug}` and `/v1/pkg/people`. Next: expand to UK/India/Japan/Germany/Brazil
(+2,200 people), backfill `entity_event` for the 440, fix slug collisions, and continue
Wikipedia news apply (4,735 events remaining of 19,654).

**Key 2026-08-17 milestone**: 440/440 USA famous Americans successfully applied to D1
(0 failed) with 3,753 atomic claims (96.5% Wikidata), 774 family relations, 635 social
accounts, and 351 images — all with full claim-source provenance. 345 people with 5+
claims are listable via the new `/v1/pkg/people` discovery endpoint.

## What this project is

**Historical Knowledge Platform** (`historical-knowledge-api`) — a public, free, source-backed "On This Day" + Famous People API on Cloudflare Workers. Every fact is a claim, every claim has provenance, every disputed date is preserved as a range, every generation step cites its inputs.

## What's shipped (2026-08-17, dev D1)

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
| KP-018-v2 | USA top-1000 + news + events from 5 sources (RSS x74 + wiki anniversaries) | ✅ done | migrations 0086 + 0087 |
| KP-PKG-1A | People Knowledge Graph foundation schema + USA discovery (440 people) | ✅ done | `6dece60` + migration 0088b |
| KP-PKG-1B | USA famous people enrichment applied to D1 (3,753 claims, 774 family, 635 social) | ✅ done | `71425c9` + `1895931` + `685a9c7` |

### Numbers (dev D1, 2026-08-17)

**Entities (6,701 total, 64 tables):**
- **2,070 persons** (was 1,054 in 2026-08-10, +1,016 from KP-PKG-1A/1B)
- **1,076 organizations** (F500 + S&P500 + Banks + Wikidata public cos)
- **1,025 places** (871 cities + 48 states + 41 landmarks + 51 universities + 12 countries)
- **2,373 media** + **85 awards** + **72 works**

**PKG provenance (NEW 2026-08-16/17, the new layer):**
- **3,753 claims** (96.5% Wikidata, 3.5% BBC/NYT/Britannica/Reuters/CNN/etc.)
- **3,749 claim_source** pairs (1:1 with claims, full provenance)
- **774 person_family_relation** (parent, child, spouse, sibling, etc.)
- **635 social_profile** (Twitter, Instagram, YouTube, TikTok, Facebook, official website)
- **351 new entity_image** rows (PKG layer)
- **440 source_record** rows (one per famous American, src_pkg_{qid})
- **3,487/3,753 verified claims** (93% with `status='published'`)
- **3,753/3,753 undisputed claims** (100% of PKG claims are `certainty='undisputed'`)
- **1,335 persons with provenance_summary**; **345 with 5+ claims** (listable via /v1/pkg/people)

**Other enrichment:**
- **1018 media entities** + **1018 media_asset** + **1018 media_rights** (CC-BY-SA-4.0)
- **97,975 entity_event rows** (was 75,365 in 2026-08-10)
- **15,852 news_event rows** (14,920 wiki anniversaries + 932 RSS) — was 251 in 2026-08-10
- **16,864 news_article** rows
- **74 RSS news sources** active (was 19 in 2026-08-10)
- **1,105 person_place_relation** (was 1,072)
- **1,670 entity_relation** rows
- **124 source_registry** entries (Tier A-E, was 109)
- **87 entity_name** (aliases/redirects)
- **521 external_identifier** (Wikidata QIDs linked)
- **14 identifier_scheme** entries
- **23 claim_predicate** entries
- **6,701 entities total** across 64 tables
- **0 slug_redirect** (need a phase for the beyonce/taylor/madonna collisions)
- **6 curated otd_event** (hero events for the home page)
- **11,694 content_section** rows
- **8 quality_gate_result** rows from recent tests

**API endpoints: 84 total** (was 50+ in 2026-08-10)
- **PKG (NEW)**: 2 — `/v1/pkg/person/{slug}`, `/v1/pkg/people`
- **People**: 20 (biography, events, news, quiz, related, sections, etc.)
- **Places**: 3
- **Events**: 5 (place + person + org)
- **On-this-day**: 3
- **+ 50 more** (admin, claims, search, tags, gallery, etc.)

**Top 10 PKG-enriched USA Famous People (by data quality):**
1. Donald Trump — DQ 4.56, 17 claims, 7 family, 9 social
2. Ronald Reagan — DQ 4.44, 17 claims, 5 family
3. Al Gore — DQ 4.33, 16 claims, 5 family, 1 social
4. Ben Stiller — DQ 4.33, 16 claims, 5 family, 1 social
5. Grace Kelly — DQ 4.22, 16 claims, 3 family
6. Scarlett Johansson — DQ 4.22, 16 claims, 4 family
7. Jeff Bezos — DQ 4.11, 15 claims, 3 family, 4 social
8. Linus Torvalds — DQ 4.11, 15 claims, 2 family, 4 social
9. Serena Williams — DQ 4.11, 15 claims, 2 family, 4 social
10. Arnold Schwarzenegger — DQ 4.11, 15 claims, 3 family, 1 social

**Data quality distribution (1,335 persons with provenance):**
- DQ 4-5: 26 (1.9%) — PKG-enriched USA famous
- DQ 3-4: 149 (11.2%)
- DQ 2-3: 141 (10.6%)
- DQ 1-2: 36 (2.7%)
- DQ 0-1: 983 (73.6%) — long tail, needs enrichment

**Operational:**
- **Live worker**: https://historical-knowledge-api-dev.nsura2029.workers.dev
- **Latest deploy version**: `8b573f0f-1360-4c71-8a73-c434b6bbf287` (2026-08-17)
- **DB size**: ~114 MB
- **OpenAPI**: 84 endpoints, 2 PKG endpoints both visible in /openapi.json
- **Git**: develop @ `685a9c7`, 12 commits ahead of origin

### Migrations applied (90 total as of 2026-08-17)

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
0080 (KP-place-founding-year: 486 places with founding_year from earliest founding event. +founding_year column on place table.)
0081 (KP-states-missing: 50/50 US states now present (was 48/50). Renamed PA cities Indiana→indiana-pennsylvania, Washington→washington-pennsylvania, then added Indiana + Washington states.)
0082 (KP-person-death-residence: 553 death events from Wikidata P570, 506 age_at_death, +14 death_place, +19 residence, +22 work_location relations. Total 20 death_place, 20 residence, 22 work_location.)
0083 (KP-place-sections-r3: 7 more places with sections (overview+history+geography+demographics). 988/988 places with sections (100%). Failed attempt at extending events to remaining 423 places via Wikidata r3 — only got 2 events because Wikidata entries don't have P571/P793 for those.)
0084 (api-bug-fixes: 3 real bugs fixed + 1 phantom. (1) on-this-day rewrote fillSections to query entity_event (97K rows) instead of otd_event (6) and career_event (95) — 30-49 items per query (was 0). (2) org events endpoint added type/category/from/to/limit query params + WHERE clauses — type=founding now returns 4 (was 30). (3) places events from/to filter now also matches YEAR-precision events (was 1, now 6 for NYC 1900-2000). Phantom: by-category/timeline 'empty items' was my test bug — API correctly returns events field.)
0085 (otd-fixes: 3 follow-up filter fixes to /v1/on-this-day/*. (1) limit was multiplied by 4 (limit=10→40 events), now respects user's limit. (2) country filter was applied to neither events nor person events — added JOINs to place.country_code for place events and person_place_relation for person events; use DISTINCT to dedup. (3) category filter was applied in SQL but bucketing ignored it — added CATEGORY_TO_EVENT_TYPES map (one category→multiple event_types, e.g. cultural→['creative','career','publication','education','award']); empty mappings (religion/royal/technological/environmental) return empty via event_type='__no_match__' guard. Test results: limit 1/5/10/20 → 1/5/10/20 events; country=US → 20 events 6 births 15 deaths (was 80/6/17 for all countries); category=political/cultural/social/economic → 5 events 5 section. Response keys are plural: politics/science/technology/cultural/religion/economic/royal/disasters/social/exploration/crime.)
0086 (rss-news: RSS news ingest pipeline. 19 working feeds (BBC, Al Jazeera, Guardian, NPR, Ars Technica, Science Daily, Phys.org, Smithsonian, Atlas Obscura, etc.). 251 events in initial 72h backfill. New tables: news_source (config), news_event (date-keyed events). news_article.entity_id made nullable. New endpoints: /v1/news/recent, /v1/news/by-date, /v1/this-day/telescope. /v1/on-this-day now includes news section. Time telescope returns same MM-DD across multiple years (0,1,5,10,25,50,100 years ago).)
0087 (news-sources-v2 + wiki-historical: expanded news_source to 74 feeds (was 19) — added CNN x6, Yahoo, Google News x3, NPR x7, BBC sports x5, TechCrunch/Wired/Verge/Engadget/Mashable/Ars Technica, Sky Sports, The Hill, Vox, Business Insider, Mental Floss/Slate/New Yorker/Salon, Live Science/Space.com/Science News/New Scientist/Quanta, Time/LA Times/Vice. New: src_wiki_anniversaries (special: 19,654 curated historical events from Wikipedia "Selected anniversaries today" for all 366 days, year range 74 BC to 2026). New script: wiki_anniversaries_fetch.py. Time telescope now returns events for 1, 5, 10, 25, 50, 100+ years ago for most dates.)
0088 (PKG foundation — FAILED: 8 new tables tried to recreate `claim`, `claim_source`, `claim_conflict_group`, `social_profile`, `source_record`, `entity_relation`, `external_identifier` which all already existed. Replaced with 0088b below.)
0088b (PKG Phase 1A foundation — ADDITIVE only: 8 NEW tables: person_family_relation, social_metric_observation, entity_merge_history, entity_review_queue, attention_event, identifier_scheme, claim_predicate, person_provenance_summary. Extended source_registry (7 policy fields), person (3 PKG fields). Seeded 17 sources, 14 identifier schemes, 23 canonical predicates. 1051 person_provenance_summary backfilled.)
0089 (PKG Phase 1B — data layer for USA famous people: 440 unique Americans × full claim+source+family+social+image rows applied to D1. Generated 12,422 SQL statements in 440 per-QID files via `pkg_usa_apply.py`. 3 critical fixes during apply: (1) `person.living_status` CHECK is `IN ('living','deceased','undisclosed')` not 'unknown' — INSERT OR IGNORE silently swallows CHECK failures. (2) `entity_image` schema uses `url_original`, `wikimedia_file`, `attribution`, `license_code`, `is_primary`, `display_order` — NOT `external_url`/`license`/`status`/`retrieved_at`. (3) 94% of family member slugs collide with existing entities — load existing slugs from D1 (`/tmp/person_slugs.json`) and reuse the existing entity ID instead of creating a duplicate. 440/440 chunks succeeded (0 failed). Stats: 3,753 claims, 3,749 claim_source, 774 person_family_relation, 635 social_profile, 440 source_record, 351 new entity_image. Workers version `8b573f0f-1360-4c71-8a73-c434b6bbf287`.)
0090 (PKG endpoints — `GET /v1/pkg/person/{slug}` (WHO/WHAT/CONNECTED/NOW 4-question layout with full claim provenance) and `GET /v1/pkg/people` (discovery list sorted by data quality score, 345 people with 5+ claims). Both registered via `pkgRouter.openapi()` so they appear in /openapi.json.)

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
