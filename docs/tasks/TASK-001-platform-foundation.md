# TASK-001: Platform Foundation

> **Source**: AGENT-INSTRUCTIONS.md §8 (TASK-001)
> **Status**: Draft (created 2026-08-05; awaiting PAT to start implementation)
> **Owner**: Mavis (Mavis/mavis)
> **Cycle**: 1 of 20

## User intent

A new contributor (human or AI) can clone the repo, run `pnpm install`, run `pnpm dev`, and see a working `GET /v1/health` + `GET /v1/version` endpoint with structured logs, request IDs, and problem+json error envelopes. The Worker deploys to dev and prod envs with preview environments per PR. CI is green on the empty scaffold.

## Business outcome

The platform has a deployable, testable, monitorable empty shell. Subsequent tasks (TASK-002 OpenAPI, TASK-003 source registry, etc.) can build on a known-good foundation without rediscovering environment or bindings setup.

## In scope

- pnpm workspace setup (root + `apps/api` + `packages/contracts` + `packages/db` + `packages/ingestion`)
- TypeScript strict mode in every package
- Hono + `@hono/zod-openapi` baseline in `apps/api`
- Typed Bindings per playbook §5: `DB`, `RAW_BUCKET`, `INGEST_QUEUE`, `CACHE`, `VECTORIZE`, `API_RATE_LIMITER`, `ENVIRONMENT`
- AppEnv with `requestId` and optional `actor` in `Variables`
- Error middleware: `application/problem+json` per playbook §7
- Request ID middleware: `X-Request-Id` on every response
- Local dev: `pnpm dev` runs `wrangler dev` with miniflare
- Preview env: per-PR via `wrangler deploy` to a `preview-{pr-number}` env
- CI: GitHub Actions on push/PR to `main` — `pnpm install --frozen-lockfile`, `pnpm lint`, `pnpm typecheck`, `pnpm test:unit`
- Observability: Workers Logs + Traces enabled (head_sampling_rate=1.0)
- Routes: `GET /v1/health`, `GET /v1/version` (with operationId, tags, summary, request/response schemas, examples per playbook §6)
- Tests: per the edge cases listed below
- Documentation: this task file + the quality report + runbook stub

## Out of scope (handled by other tasks)

- OpenAPI documentation surface (TASK-002)
- Source registry (TASK-003)
- D1 migrations (TASK-004)
- Ingestion (TASK-005+)
- HistoricalDate schema (TASK-008)
- Auth (TASK-018)

## Approved data sources and licenses

None. TASK-001 ships **no historical data**. Bindings are stubbed; no D1 migrations yet.

## Current behavior

The repo was just initialized (2026-08-05). The GitHub repo `nsura2029-art/historical-knowledge-api` exists (public, default branch `main`) but is empty. The local working tree at `/workspace/historical-knowledge-api/` has:

- `README.md`
- `AGENTS.md`
- `AGENT-INSTRUCTIONS.md` (the playbook)
- `PRD-IMPLEMENTATION-NOTES.md` (decisions doc)
- `.gitignore`
- `package.json` (root, with workspace scripts)
- `pnpm-workspace.yaml`
- `wrangler.jsonc` (skeleton)
- Empty directory tree for `apps/`, `packages/`, `docs/`, `tests/`, `scripts/`, `deploy/`, `.github/workflows/`

No `pnpm install` has been run yet. No git init yet (waiting for PAT).

## Proposed schema and migrations

None. TASK-004 will introduce the D1 schema. TASK-001 only stubs the `DB` binding.

## API contract

Per playbook §6 and §7:

### `GET /v1/health`

- **operationId**: `getHealth`
- **Tags**: meta
- **Summary**: Liveness probe with DB stats and bindings
- **Response 200**: `application/json` with `{ status: "ok", db: { ... }, bindings: [...], version: "..." }`
- **Response 503**: `application/problem+json` if any binding is missing
- **Examples**: success + degraded

### `GET /v1/version`

- **operationId**: `getVersion`
- **Tags**: meta
- **Summary**: Worker version + commit SHA + environment
- **Response 200**: `application/json` with `{ version, sha, environment, deployedAt }`
- **Response 503**: `application/problem+json`

### Error envelope (every error response)

```json
{
  "type": "https://historical-knowledge-api.example.com/problems/validation-error",
  "title": "Request validation failed",
  "status": 400,
  "detail": "One or more fields are invalid.",
  "instance": "/v1/health",
  "code": "VALIDATION_ERROR",
  "requestId": "req_...",
  "errors": [{ "field": "...", "message": "..." }]
}
```

## Processing/enrichment steps

None — this is a scaffold task.

## Security and privacy

- All `c.env` access goes through typed Bindings (no `any`)
- No secrets in the repo (`.dev.vars` is gitignored)
- GitHub PAT (when received) will be stored as a GitHub Actions secret, never committed
- CORS: `Access-Control-Allow-Origin: *` for `/v1/health` and `/v1/version` only; per-route CORS in later tasks
- Request ID generation: `crypto.randomUUID()` if `X-Request-Id` is not provided by upstream
- Logs MUST NOT include the request body (per playbook §6 — structured log fields only: `requestId, route, actorId, status, latencyMs, errorCode`)

## Edge and failure cases (per playbook §10)

| Case              | Test                                                                 | Expected                                                                  |
| ----------------- | -------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| Fresh install     | `rm -rf node_modules && pnpm install`                                | 0 errors, 0 warnings                                                      |
| Missing binding   | Run with `DB` removed from `wrangler.jsonc`                          | `/v1/health` returns 503 `BINDING_MISSING`                                |
| Invalid env       | Set `ENVIRONMENT=garbage`                                            | `/v1/version` returns 503 `INVALID_ENV`                                   |
| Worker exception  | Throw in a route                                                     | 500 `application/problem+json` with `code: INTERNAL_ERROR`, log has stack |
| CORS preflight    | `OPTIONS /v1/health` with `Origin` + `Access-Control-Request-Method` | 200 with CORS headers                                                     |
| HEAD request      | `HEAD /v1/health`                                                    | 200, no body                                                              |
| Malformed request | `GET /v1/health?garbage=1`                                           | Ignored; 200                                                              |
| Unicode in URL    | `/v1/health/🚀`                                                      | 404 problem+json (route not found)                                        |
| Long URL          | 8KB path                                                             | 414 problem+json                                                          |

## Tests

### Unit

- `tests/unit/bindings.test.ts` — typed Bindings compile + no `any` leaks
- `tests/unit/request-id.test.ts` — middleware adds/preserves `X-Request-Id`
- `tests/unit/errors.test.ts` — problem+json shape matches playbook §7
- `tests/unit/health-route.test.ts` — happy path, 503 missing binding
- `tests/unit/version-route.test.ts` — version payload structure

### Integration

- `tests/integration/health.test.ts` — hits miniflare, returns 200 with DB stats (stubbed)
- `tests/integration/cors.test.ts` — preflight works

### Edge

- `tests/edge/fresh-install.sh` — runs in CI, asserts `pnpm install` exits 0
- `tests/edge/missing-binding.test.ts` — see table above
- `tests/edge/head-request.test.ts`
- `tests/edge/malformed-env.test.ts`

### Security

- `tests/security/secrets-scan.sh` — `gitleaks` or `trufflehog` over the tree; no secrets
- `tests/security/cors-preflight.test.ts` — preflight is restrictive enough for meta routes

### Migrations

- `tests/integration/migrations/000-noop.test.ts` — there are no migrations yet, but the test file documents the future location

## Documentation updates

- `docs/architecture/000-tech-stack.md` (new) — short rationale for Hono + D1 + R2 + Queues + Workflows + Vectorize + KV
- `docs/runbooks/000-deploy.md` (new) — `pnpm deploy:dev`, `pnpm deploy:prod`, what to verify
- `docs/runbooks/001-rollback.md` (new) — how to roll back via Workers versions
- `README.md` — update "Status" section to reflect TASK-001 complete
- `AGENTS.md` — add a "How to run TASK-001" subsection
- `wrangler.jsonc` — final bindings

## Quality gates

Per playbook §11 + Definition of Done §13:

- [ ] `pnpm install --frozen-lockfile` — exits 0
- [ ] `pnpm lint` — exits 0, 0 warnings
- [ ] `pnpm typecheck` — exits 0
- [ ] `pnpm format:check` — exits 0
- [ ] `pnpm test:unit` — all green
- [ ] `pnpm test:integration` — all green
- [ ] `pnpm test:edge` — all green
- [ ] `pnpm test:security` — all green
- [ ] `pnpm test:migrations` — passes (no migrations yet, but the test file is in place)
- [ ] `pnpm openapi:generate` — produces a valid spec
- [ ] `pnpm wrangler:types` — produces typed Bindings, no manual types
- [ ] `pnpm dev:smoke` — hits `/v1/health` locally, returns 200
- [ ] `pnpm deploy:preview` — deploys to a preview env, `/v1/health` returns 200
- [ ] `pnpm preview:smoke` — hits the preview URL
- [ ] CI green on push to `main` and on PR
- [ ] `gitleaks` scan — 0 secrets
- [ ] No `any` types in `apps/api/src/`
- [ ] All 4 test files from playbook's TASK-001 edge list present and passing

## Review findings

_To be filled at REVIEW step._

## Evidence (commands, reports, screenshots/links)

_To be filled at QUALITY GATE step._

- pnpm version output
- vitest run output (unit + integration + edge + security)
- `pnpm wrangler:types` output
- Preview URL: `https://historical-knowledge-api-preview-{N}.{subdomain}.workers.dev`
- Health check response (raw + parsed)
- CI workflow run URL
- `gitleaks` scan output

## Decision: PASS / BLOCKED

_To be filled at REVIEW step. Currently Draft — implementation not started._

## Next task

**TASK-002: API contract and documentation** — Zod schemas, OpenAPI 3.1, problem+json validation, pagination envelope, `/openapi.json`, `/docs` UI. Cannot start until TASK-001 is PASS.
