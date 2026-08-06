# docs/tasks/AGENTS.md — task specs

> **Owner**: task spec files. Read before starting work on any TASK-###.

## File naming

`TASK-###-short-name.md` where `###` is the 3-digit sequence number and `short-name` is kebab-case (e.g. `TASK-013-on-this-day-api.md`).

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

## 20-task sequence (current plan)

| # | Title | Status |
|---|---|---|
| 001 | Platform foundation | ✅ PASS (commit `6ac7ab7`) |
| 002 | API contract and documentation | ✅ in code, never formally PASSED |
| 003 | Source registry and licensing | ✅ in code (108 sources), never formally PASSED |
| 004 | Core canonical schema | ✅ in code, never formally PASSED |
| 005 | Raw ingestion framework | 🟡 partial (ingestion_run + manual seed) |
| 006 | Wikidata seed connector | ❌ not started |
| 007 | GeoNames and place resolution | 🟡 partial (38 places from manual seed) |
| 008 | Historical dates and calendars | 🟡 partial (day/month/year precision) |
| 009 | Entity resolution and deduplication | ❌ not started |
| 010 | Claim provenance and conflict model | 🟡 partial (claim_source, no conflict model) |
| 011 | Taxonomy and enrichment | 🟡 partial (Pew generation, cause_of_death) |
| 012 | Public entity APIs | ✅ mostly done (28+ endpoints) |
| 013 | Date and "On This Day" APIs | 🟡 Phase A done (3 endpoints, 6 seed events) |
| 014 | Search and user intent | 🟡 partial (7-tier match) |
| 015 | Related links and timelines | ✅ done (related, timeline, references) |
| 016 | Editorial and correction workflow | ❌ not started |
| 017 | Generated learning content | ❌ not started |
| 018 | Security, quotas and API consumers | ❌ not started |
| 019 | Observability and operations | ❌ not started |
| 020 | Release readiness and public developer portal | ❌ not started |

The 20 tasks are in **dependency order**. Skipping ahead is forbidden per AGENT-INSTRUCTIONS.md §1.

## 24-task KP sequence (Britannica-style, NEW 2026-08-06)

Per the Britannica-inspired PRD, the platform should be built across **6
verticals** (Biographies, Science & Tech, Animals & Nature, Geography & Travel,
Arts & Culture, Games & Quizzes) using a strict 24-task dependency order
(KP-001 through KP-024). The 20-task sequence above is a subset; the KP
sequence is the **roadmap forward**.

See `docs/architecture/00-DOX-ALIGNMENT-NOTES.md` for the full mapping
between 20-task and 24-task sequences.

| KP | Title | Status | Spec |
|---|---|---|---|
| KP-001 | Confirm product intents, personas, page contracts | 🟡 partial (famous-people work, not full PRD) | — |
| KP-002 | Source registry + connector allowlist | ✅ done (108 sources, tier A-E) | — |
| **KP-003** | **Universal ontology + D1 schema (atomic-claim model)** | **❌ not started** | **`docs/tasks/KP-003-*.md`** |
| **KP-004** | **Evidence/bibliography/citation/revision model** | **❌ not started** | **`docs/tasks/KP-004-*.md`** |
| KP-005 | Identity resolution (aliases, duplicates, merge, split) | ❌ not started | — |
| KP-006 | Temporal + geographic foundation | 🟡 partial (day-only dates, no boundary versions) | — |
| **KP-007** | **Media + rights pipeline** | **🟡 partial (media_asset only, no media_rights table)** | **`docs/tasks/KP-007-*.md`** |
| KP-008 | Slugs, internal links, breadcrumbs, related | 🟡 partial (slug_redirect, inline _links) | — |
| KP-009 | Universal search + intent detection + facets | 🟡 partial (7-tier match, no intent classification) | — |
| KP-010 | Biography vertical | 🟡 partial (famous-people, missing works/awards/education/relations) | — |
| KP-011 | Science & Technology vertical | ❌ not started | — |
| KP-012 | Animals & Nature vertical | ❌ not started | — |
| KP-013 | Geography & Travel vertical | 🟡 partial (38 places, no hierarchy/time zones/travel) | — |
| KP-014 | Arts & Culture vertical | ❌ not started | — |
| KP-015 | Games & Quizzes vertical | ❌ not started | — |
| KP-016 | Top questions + grounded AI "Ask" | ❌ not started | — |
| KP-017 | Public + admin Hono APIs with OpenAPI | ✅ done (28+ endpoints) | — |
| KP-018 | Queues + Workflows + idempotency + DLQ | 🟡 partial (Queue producer wired, no consumer) | — |
| KP-019 | Editorial console + review queues + corrections | 🟡 partial (admin endpoints, no UI) | — |
| KP-020 | Quality scoring + publication gates | 🟡 partial (10 checks table, not runtime-enforced) | — |
| KP-021 | Security + privacy + abuse + sensitive-entity controls | ❌ not started | — |
| KP-022 | Accessibility + localization + SEO + performance | ❌ not started | — |
| KP-023 | Observability + source health + freshness + cost | ❌ not started | — |
| KP-024 | Pilot release + independent audit + rollback | ❌ not started | — |

**Bold KP tasks** = spec written, awaiting implementation.

### Next KP (the critical next task)

**KP-003**: atomic-claim model. This is the **single biggest gap** in our
current schema. Per the PRD (line 313-341): "A narrative paragraph must not
be the only representation of truth." We currently have free-text descriptions
in `career_event.description` and `otd_event.description` with a single
`source_id`. The atomic-claim model replaces this with typed claims,
multi-source support, confidence scores, and conflict modeling.

**Why this is the next task**:
- KP-004 (evidence graph) depends on it
- KP-005 (identity resolution) depends on it
- KP-016 (grounded AI "Ask") depends on it
- KP-019 (editorial console) depends on it
- KP-020 (quality gates) depends on it

**Spec**: `docs/tasks/KP-003-universal-ontology-claim-model.md`

**Effort**: 2-3 weeks (1 agent).

## How to start a new task

1. Copy the template above into `docs/tasks/TASK-###-short-name.md`.
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
