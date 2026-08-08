# docs/AGENTS.md — documentation directory

> **Owner**: this directory. Read before adding or editing any doc.

## What lives here

```
docs/
├── api/                  # API reference (hand-written supplements to /v1/openapi.json)
├── architecture/         # System architecture, ADRs, audits
├── quality-reports/      # TASK-### PASS/BLOCKED reports
├── tasks/                # Active TASK-### + KP-### spec files
├── strategy/             # PRD, roadmaps, market analysis
├── AGENTS.md             # this file (DOX)
├── tasks/AGENTS.md       # task spec template + status (KP-001 to KP-029)
├── quality-reports/AGENTS.md   # quality report template
├── api/AGENTS.md         # API doc conventions
└── architecture/AGENTS.md     # architecture doc conventions
```

## When to add a new doc

- **API doc** (`docs/api/`) — when an endpoint needs hand-written examples, longer explanations, or diagrams beyond what OpenAPI can express.
- **Architecture doc** (`docs/architecture/`) — when making a non-obvious decision (ADR-style) or documenting a cross-cutting audit.
- **Task spec** (`docs/tasks/TASK-###-name.md` or `KP-###-name.md`) — REQUIRED before starting work on a new task.
- **Quality report** (`docs/quality-reports/TASK-###.md`) — REQUIRED when a task is done (PASS or BLOCKED).

## Active task specs (as of 2026-08-08)

- `KP-003-universal-ontology-claim-model.md` ✅ done
- `KP-004-evidence-bibliography-citation.md` ✅ done
- `KP-007-media-rights-pipeline.md` ✅ done
- `KP-010-biographies-vertical.md` ✅ done
- `TASK-001-platform-foundation.md` ✅ done
- `TASK-013-on-this-day-api.md` 🟡 partial (3 endpoints, 6 seed events)

## Standing gotchas

- **Markdown only.** No PDFs, no Google Docs. Everything is in the repo.
- **Link to code** with `path/to/file.ts:line_number` when relevant.
- **Keep these DRY with the code.** If a doc disagrees with the code, the doc is wrong (unless the code is the bug, in which case the doc + fix go in the same PR).
- **Use absolute paths from repo root** in links. Relative paths break when files move.

## When stuck

- Looking for a decision rationale — `docs/architecture/`.
- Looking for a specific endpoint — `apps/api/src/routes/v1/AGENTS.md` (per-endpoint index) or `docs/api/`.
- Looking for a TASK spec — `docs/tasks/`.
- Looking for a PASS/BLOCKED report — `docs/quality-reports/`.
- Looking for a project-wide rule — root `AGENTS.md` or `AGENT-INSTRUCTIONS.md`.
- Looking for migration history — `packages/db/migrations/AGENTS.md`.
- Looking for smoke test patterns — `apps/api/scripts/AGENTS.md`.
- Looking for ingestion / seed scripts — `packages/ingestion/AGENTS.md`.
