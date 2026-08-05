# Tech stack rationale

> TASK-001 deliverable. Documented per AGENT-INSTRUCTIONS.md §13 (Documentation updates).

## Why this stack

| Layer                     | Choice                          | Why                                                                                                                                                             |
| ------------------------- | ------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Runtime**               | Cloudflare Workers (V8 isolate) | Edge, low latency, generous free tier (100K req/day). Same platform as dateandtime-api-v2 — consistent operational story.                                       |
| **Framework**             | Hono                            | Tiny, OpenAPI-native via `@hono/zod-openapi`, fast cold start. The same framework as dateandtime-api-v2.                                                        |
| **API spec**              | `@hono/zod-openapi`             | One source of truth for both runtime validation AND OpenAPI 3.1 generation. Per AGENT-INSTRUCTIONS.md §6.                                                       |
| **DB**                    | Cloudflare D1 (SQLite)          | 0-ops, edge-replicated, 5GB free. New D1 `historical-knowledge-api-d1` (uuid `0dacf1b5-2987-4cb7-bf9d-989428a84382`) — separate from the dateandtime-api-v2 D1. |
| **Object storage**        | Cloudflare R2                   | New bucket `historical-knowledge-api-raw` for immutable raw ingestion payloads.                                                                                 |
| **Cache + feature flags** | Cloudflare KV                   | New namespace `historical-knowledge-api-cache` (separate `prod` and `preview` ids).                                                                             |
| **Async jobs**            | Cloudflare Queues               | New queue `historical-knowledge-api-ingest` for decoupled ingest.                                                                                               |
| **Semantic search**       | Cloudflare Vectorize            | Index `historical-knowledge-api-vectors` — provisioning pending (deferred to TASK-014, auth issue).                                                             |
| **Validation**            | Zod                             | TS-native, runtime + compile-time, used for OpenAPI schemas.                                                                                                    |
| **Tests**                 | Vitest                          | 7 tests passing. Integration/contract/edge suites planned as we add more tasks.                                                                                 |
| **Package manager**       | pnpm                            | Workspaces for the monorepo. Faster installs than npm.                                                                                                          |
| **Lint**                  | ESLint + @typescript-eslint     | Standard.                                                                                                                                                       |
| **Format**                | Prettier                        | Default config + custom `.prettierrc.json` (110 print width, 2-space, single quotes).                                                                           |
| **TS**                    | strict mode                     | Always.                                                                                                                                                         |

## What we DON'T use (deliberate)

- **No ORM**. Hand-written SQL with `?` bindings. Same as dateandtime-api-v2 — D1's tight limits (100-var/stmt, 100KB/stmt) make an ORM fight the platform.
- **No client SDK** (yet). Will add Hono RPC types in Phase 5.
- **No Tailwind / UI library** in this task. UI work lives in a separate front-end repo (when it ships).
- **No Workers AI** yet. Generation is TASK-017.

## Cloudflare resource map (this project only)

Per user directive: no touch to anything in Cloudflare other than THIS project. All resources prefixed `historical-knowledge-api-*`.

| Resource     | Name                                                  | ID                                     | Status                                               |
| ------------ | ----------------------------------------------------- | -------------------------------------- | ---------------------------------------------------- |
| D1           | `historical-knowledge-api-d1`                         | `0dacf1b5-2987-4cb7-bf9d-989428a84382` | created                                              |
| R2           | `historical-knowledge-api-raw`                        | —                                      | created                                              |
| KV (prod)    | `historical-knowledge-api-cache-prod`                 | `c089ac9d07e3447babaaa97ae22a969d`     | created                                              |
| KV (preview) | `historical-knowledge-api-cache-preview`              | `65a2be1236334c6a8955bcf3a2e2e384`     | created                                              |
| Queue        | `historical-knowledge-api-ingest`                     | `2561005648da4513a6fbe631ced9fe66`     | created                                              |
| Vectorize    | `historical-knowledge-api-vectors`                    | —                                      | **DEFERRED** (API auth error; retry before TASK-014) |
| Worker       | `historical-knowledge-api-dev` / `-preview` / `-prod` | —                                      | preview deployed                                     |

## No changes to existing resources

The 6 existing D1s, 15 existing Workers, 1 existing R2 bucket (`dt-data-raw`), 7 existing KV namespaces — all untouched.
