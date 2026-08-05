# AGENTS.md — conventions for any agent (human or AI) working on this repo

> **The single source of truth is `AGENT-INSTRUCTIONS.md`. This file is a quick orientation + project-specific addenda.**

## Read first

1. `AGENT-INSTRUCTIONS.md` — the operating contract. Read the whole thing before doing anything.
2. `PRD-IMPLEMENTATION-NOTES.md` — decisions specific to this build.
3. The active task spec in `docs/tasks/TASK-###-*.md`.
4. The most recent quality report in `docs/quality-reports/`.

## The 20-task sequence is the plan

Don't invent your own phase breakdown. The 20 tasks in `AGENT-INSTRUCTIONS.md` §8 ARE the plan, in dependency order. Skipping ahead is forbidden.

## The 12-step task lifecycle is non-negotiable

Per `AGENT-INSTRUCTIONS.md` §2:

> READ → INTENT → SOURCES → SCHEMA → DESIGN → IMPLEMENT → DOCUMENT → TEST → QUALITY GATE → REVIEW → COMMIT → NEXT

Every task produces two artifacts:
- `docs/tasks/TASK-###-short-name.md` (the spec, per §3 template)
- `docs/quality-reports/TASK-###.md` (the evidence with PASS/BLOCKED decision)

A task is not complete when code compiles. It is complete when intent, source legality, schema, implementation, tests, API docs, ops docs, and review evidence are all present.

## Project-specific addenda

These are extensions to the playbook, not overrides:

- **No changes to `dateandtime-api-v2`**. The data copy is a one-time, read-only script owned by TASK-007. Zero writes to the existing repo.
- **Use `wrangler.jsonc`** (per playbook §4), not `wrangler.toml`.
- **Default branch is `main`**. PRs merge to `main`. CI deploys `main` to prod env.
- **Calendar purity** (HistoricalDate): when `calendar != 'gregorian'`, the proleptic `date_earliest` is for search/index only — display always shows `original` text.
- **Editorial approval gate**: a claim is not published without `editorial_revision.status = 'approved'`.
- **Indexability gates** for SEO pages: 10 rules in `PRD-IMPLEMENTATION-NOTES.md` §6.2. Pages that fail any rule get `<meta name="robots" content="noindex">`.

## Code conventions

- **Language**: TypeScript (strict mode)
- **Formatter**: Prettier (default config)
- **Linter**: ESLint with `@typescript-eslint`
- **Runtime validation**: zod
- **OpenAPI**: `@hono/zod-openapi` — one source of truth for routes and docs
- **Testing**: Vitest (unit, integration, contract, edge, fixtures)
- **Package manager**: pnpm (workspaces)
- **No ORM**: hand-written SQL with `?` bindings (per playbook §5)
- **No client SDK generated yet** — TS types via Hono RPC when ready (Phase 5)

## Repo-bound secrets — NEVER commit

- Cloudflare API token
- Cloudflare account ID
- GitHub PAT
- Workers AI / external API keys
- D1 / R2 / KV connection strings (Workers bindings, not secrets — but still in wrangler.jsonc gitignored)

`.gitignore` includes:
- `.dev.vars`
- `.env*`
- `node_modules/`
- `dist/`
- `.wrangler/`
- `coverage/`

## PR review

Per `AGENT-INSTRUCTIONS.md` §12, every PR must answer the 11 blocking review questions before merge. A PR with a BLOCKED quality report is not mergeable.

## When stuck

1. Re-read the task spec (`docs/tasks/TASK-###-*.md`).
2. Re-read the previous task's quality report.
3. If the spec is wrong, update the spec, re-document in the quality report, mark BLOCKED.
4. Do not invent scope.
