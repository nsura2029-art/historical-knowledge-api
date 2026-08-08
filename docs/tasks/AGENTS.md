# docs/tasks/AGENTS.md — task specs

> **Owner**: task spec files. Read before starting work on any TASK-### or KP-###.

## File naming

`TASK-###-short-name.md` where `###` is the 3-digit sequence number and `short-name` is kebab-case (e.g. `TASK-013-on-this-day-api.md`).
`KP-###-short-name.md` for the Britannica-style 24-task sequence.

## Required template (per AGENT-INSTRUCTIONS.md §3)

```markdown
# TASK-###: Title

## Status: Draft | In Progress | Review | Passed | Blocked
## User intent
## Business outcome
## In scope / Out of scope
## Approved data sources and licenses
## Current behavior
## Proposed schema and migrations
## API contract
## Processing/enrichment steps
## Security and privacy
## Edge and failure cases
## Tests
## Documentation updates
## Quality gates
## Review findings
## Evidence (commands, reports, screenshots/links)
## Decision: PASS / BLOCKED
## Next task
```

## 20-task sequence (legacy, mostly deprecated)

| # | Title | Status |
|---|---|---|
| 001 | Platform foundation | ✅ PASS (commit `6ac7ab7`) |
| 002 | API contract and documentation | ✅ in code, never formally PASSED |
| 003 | Source registry and licensing | ✅ in code (108 sources), never formally PASSED |
| 004 | Core canonical schema | ✅ in code, never formally PASSED |
| 005 | Raw ingestion framework | 🟡 partial (ingestion_run + manual seed) |
| 006 | Wikidata seed connector | ✅ done (wikidata_events_extract.py, KP-029) |
| 007 | GeoNames and place resolution | 🟡 partial (38 places from manual seed) |
| 008 | Historical dates and calendars | 🟡 partial (day/month/year precision) |
| 009 | Entity resolution and deduplication | 🟡 partial (slug_redirect only) |
| 010 | Claim provenance and conflict model | ✅ done (claim/claim_source/source_record, KP-003) |
| 011 | Taxonomy and enrichment | ✅ done (31 tags + 666 links, KP-018) |
| 012 | Public entity APIs | ✅ mostly done (50+ endpoints) |
| 013 | Date and "On This Day" APIs | 🟡 Phase A done (3 endpoints, 6 seed events) |
| 014 | Search and user intent | 🟡 partial (7-tier match) |
| 015 | Related links and timelines | ✅ done (related, timeline, references) |
| 016 | Editorial and correction workflow | 🟡 partial (editorial_revision table, no UI) |
| 017 | Generated learning content | 🟡 partial (KP-017 quiz + image gallery) |
| 018 | Security, quotas and API consumers | 🟡 partial (tag-based access only) |
| 019 | Observability and operations | ❌ not started |
| 020 | Release readiness and public developer portal | ❌ not started |

The 20 tasks are in **dependency order**. Most are subsumed by the 24-task KP sequence below.

## 24-task KP sequence (Britannica-style, current roadmap)

Per the Britannica-inspired PRD, the platform is built across **6 verticals**
(Biographies, Science & Tech, Animals & Nature, Geography & Travel,
Arts & Culture, Games & Quizzes) using a strict 24-task dependency order
(KP-001 through KP-024).

| KP | Title | Status | Commit | Spec |
|---|---|---|---|---|
| KP-001 | Confirm product intents, personas, page contracts | ✅ done (Famous People scope) | pre-KP-002 | — |
| KP-002 | Source registry + connector allowlist | ✅ done (109 sources, tier A-E) | migration 0013 | — |
| KP-003 | Universal ontology + atomic-claim model | ✅ done | `a6e30a0` + migration 0012 | `docs/tasks/KP-003-*.md` |
| KP-004 | Evidence + bibliography + citation export | ✅ done | `1482148` + migration 0013 | `docs/tasks/KP-004-*.md` |
| KP-005 | Identity resolution (aliases, duplicates, merge, split) | 🟡 partial (slug_redirect only) | — | — |
| KP-006 | Temporal + geographic foundation | 🟡 partial (day-precision dates) | — | — |
| KP-007 | Media + rights pipeline | ✅ done | `fd8ffae` + migration 0014 | `docs/tasks/KP-007-*.md` |
| KP-008 | Slugs, internal links, breadcrumbs, related | ✅ done | migration 0008 | — |
| KP-009 | Universal search + intent detection + facets | 🟡 partial (10 facets, no intent classification) | — | — |
| KP-010 | Biography vertical | ✅ done (top-500 + biographies) | `002addd` + migrations 0015-0017 | `docs/tasks/KP-010-*.md` |
| KP-011 | Science & Technology vertical | ❌ not started | — | — |
| KP-012 | Animals & Nature vertical | ❌ not started | — | — |
| KP-013 | Geography & Travel vertical | 🟡 partial (38 places) | — | — |
| KP-014 | Arts & Culture vertical | ❌ not started | — | — |
| KP-015 | Games & Quizzes vertical | 🟡 partial (KP-017 quiz framework) | — | — |
| KP-016 | Top questions + grounded AI "Ask" | ❌ not started | — | — |
| KP-017 | Public + admin Hono APIs with OpenAPI | ✅ done (50+ endpoints) | `9ce30cc` | — |
| KP-018 | Top-500 USA + 6040 events from 3 sources | ✅ done | `9ce30cc` + `608d1ea` | — |
| KP-019 | Editorial console + review queues + corrections | 🟡 partial (admin endpoints, no UI) | — | — |
| KP-020 | Quality scoring + publication gates | 🟡 partial (10 checks table, not runtime-enforced) | — | — |
| KP-021 | Security + privacy + abuse + sensitive-entity controls | ❌ not started | — | — |
| KP-022 | Accessibility + localization + SEO + performance | 🟡 partial (indexable) | — | — |
| KP-023 | Observability + source health + freshness + cost | 🟡 partial (data_source_health, no live monitoring) | — | — |
| KP-024 | Pilot release + independent audit + rollback | ❌ not started | — | — |
| **KP-029** | **Multi-source events (Wikipedia + DBpedia + Wikidata)** | **✅ done** | **`608d1ea`** | — |

**Bold KP tasks** = critical path / has formal spec.

### Shipped KPs summary (as of 2026-08-08)

| KP | What landed | D1 rows added | Endpoints added | Commits |
|---|---|---|---|---|
| KP-002 | source_registry, source_policy | 109 sources | — | (early) |
| KP-003 | claim, claim_source, source_record, claim_conflict_group, editorial_revision | ~500 | 5 (`/v1/claims/*`) | `a6e30a0` |
| KP-004 | data_source_health, citation export, BibTeX/RIS/CSL JSON | — | 7 (`/v1/sources/*`) | `1482148` |
| KP-007 | media_rights_review, media_expiry, media_transform_cache | 183 | 7 (`/v1/media/*`) | `fd8ffae` |
| KP-010 | content_section, biography, quick_fact, topic sections for top 5 | 1025 | 4 (`/v1/people/{slug}/biography*`) | `002addd` |
| KP-017 | All API endpoints + OpenAPI | — | 50+ | `9ce30cc` |
| KP-018 | 459 top-500 USA, 31 tags, 666 links, 6040 events | 494 + 6040 | 2 (`/v1/tags*`) | `9ce30cc` + `608d1ea` |
| KP-029 | Multi-source events (Wikipedia/DBpedia/Wikidata) | 6040 events | 3 (`/v1/people/{slug}/events*`) | `608d1ea` |

### Next KP (the critical next task)

Two candidates depending on user's call:

1. **KP-005** Identity resolution — beyond slug_redirect. Aliases, name variants, person vs person merge/split. **Why**: enables international famous people beyond the US-centric top-500. **Effort**: 1-2 weeks.

2. **KP-018 v2** — extend to top-1000 + non-American famous people. **Why**: directly increases data coverage without schema changes. **Effort**: 3-5 days.

3. **KP-019** Editorial console — actual review UI (no code yet). **Why**: unblocks the editor workflow before editor team arrives end of Year 1. **Effort**: 1-2 weeks.

The user picks. See each KP spec for the detailed approach.

## How to start a new task

1. Copy the template above into `docs/tasks/TASK-###-short-name.md` or `KP-###-short-name.md`.
2. Fill in `Status: In Progress`.
3. Update the table above.
4. Walk the DOX tree to the directories you'll touch.
5. Do the work.
6. Write `docs/quality-reports/TASK-###.md` (see `docs/quality-reports/AGENTS.md`).
7. Update status to `Passed` or `Blocked`.
8. Commit + push + deploy to dev + hand off to user for review.

## When stuck

- Re-read AGENT-INSTRUCTIONS.md §1, §2, §3.
- Look for a similar past task in `docs/quality-reports/`.
- Don't invent scope. If the spec is wrong, update the spec.
