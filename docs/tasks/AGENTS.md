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
| 003 | Source registry and licensing | ✅ in code (107 sources), never formally PASSED |
| 004 | Core canonical schema | ✅ in code, never formally PASSED |
| 005 | Raw ingestion framework | 🟡 partial (ingestion_run + manual seed) |
| 006 | Wikidata seed connector | ❌ not started |
| 007 | GeoNames and place resolution | 🟡 partial (38 places from manual seed) |
| 008 | Historical dates and calendars | 🟡 partial (day/month/year precision) |
| 009 | Entity resolution and deduplication | ❌ not started |
| 010 | Claim provenance and conflict model | 🟡 partial (claim_source, no conflict model) |
| 011 | Taxonomy and enrichment | 🟡 partial (Pew generation, cause_of_death) |
| 012 | Public entity APIs | ✅ mostly done (28+ endpoints) |
| 013 | Date and "On This Day" APIs | ❌ not started (MVP BLOCKER) |
| 014 | Search and user intent | 🟡 partial (7-tier match) |
| 015 | Related links and timelines | ✅ done (related, timeline, references) |
| 016 | Editorial and correction workflow | ❌ not started |
| 017 | Generated learning content | ❌ not started |
| 018 | Security, quotas and API consumers | ❌ not started |
| 019 | Observability and operations | ❌ not started |
| 020 | Release readiness and public developer portal | ❌ not started |

The 20 tasks are in **dependency order**. Skipping ahead is forbidden per AGENT-INSTRUCTIONS.md §1.

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
