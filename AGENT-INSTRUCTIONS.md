# Historical Platform Agent Instructions

*Sequential implementation playbook for Cloudflare Workers, Hono APIs, ingestion, enrichment, quality gates and reviews*

**Version 1.0 | 4 August 2026**

# 1. Operating Contract for Every Agent

The agent must complete one task at a time. It may not begin the next task until the current task has passed its defined quality gate and a review record is written. A task is not complete because code compiles; it is complete only when intent, source legality, schema, implementation, tests, API documentation, operational documentation and review evidence are all present.

# 2. Mandatory Task Lifecycle

1.  READ: Load the PRD, architecture decisions, current schema, API conventions and prior task review.

2.  INTENT: Restate the user/business intent, actors, inputs, outputs, exclusions and acceptance criteria.

3.  SOURCES: Identify approved data sources, access method, license, attribution, limits, update frequency and trust tier.

4.  SCHEMA: Define or update canonical tables, migrations, validation schemas, indexes and lineage fields.

5.  DESIGN: Define API routes, workflow stages, errors, idempotency, caching, security and observability.

6.  IMPLEMENT: Make the smallest complete vertical slice. Do not combine unrelated features.

7.  DOCUMENT: Update OpenAPI, examples, README/ADR, source registry and runbook.

8.  TEST: Add unit, integration, contract, migration, edge-case, security and replay tests.

9.  QUALITY GATE: Run all automated checks and create a quality report with evidence.

10. REVIEW: Perform self-review against the checklist; record risks, assumptions and residual issues.

11. COMMIT: Commit only reviewed files with a task-specific message.

12. NEXT: Move to the next task only when every blocking gate is PASS.

# 3. Standard Task File

Create one task specification under `docs/tasks/TASK-###-short-name.md` using this exact structure:

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

# 4. Repository Structure

```text
/apps/api/src/
├── index.ts
├── bindings.ts
├── middleware/
├── routes/v1/
├── domain/
├── repositories/
├── services/
├── workflows/
├── queue-consumers/
├── schemas/
├── errors/
└── observability/

/packages/contracts/
├── openapi.ts
├── common.ts
├── event.ts
├── person.ts
├── place.ts
├── source.ts
└── search.ts

/packages/db/
├── migrations/
├── seeds/
└── queries/

/packages/ingestion/
├── connectors/
├── normalizers/
├── resolvers/
├── enrichers/
├── quality/
└── fixtures/

/docs/
├── architecture/
├── api/
├── sources/
├── runbooks/
├── tasks/
├── quality-reports/
└── adr/

/tests/
├── unit/
├── integration/
├── contract/
├── edge/
└── fixtures/

wrangler.jsonc
```

# 5. Cloudflare and Hono Baseline

Use Hono on Cloudflare Workers. Access D1, R2, Queues, Workflows, Vectorize, KV and rate limiting through typed bindings on `c.env`. Keep route handlers thin and place domain rules in services. Generate OpenAPI from the same runtime validation schemas used by routes.

```ts
export type Bindings = {
  DB: D1Database;
  RAW_BUCKET: R2Bucket;
  INGEST_QUEUE: Queue;
  CACHE: KVNamespace;
  VECTORIZE: VectorizeIndex;
  API_RATE_LIMITER: RateLimit;
  ENVIRONMENT: 'local' | 'preview' | 'production';
};

type AppEnv = {
  Bindings: Bindings;
  Variables: {
    requestId: string;
    actor?: Actor;
  };
};
```

# 6. API Conventions

| **Rule**      | **Instruction**                                                                                       |
|---------------|-------------------------------------------------------------------------------------------------------|
| Versioning    | All public routes start /v1. Breaking changes require /v2 or a documented migration window.           |
| Validation    | Validate path, query, header and body with Zod/Standard Schema before the handler.                    |
| OpenAPI       | Every public route defines operationId, tags, summary, request schema, response schemas and examples. |
| Errors        | Return application/problem+json with type, title, status, detail, instance, code and requestId.       |
| Pagination    | Use opaque cursor. Include next cursor and canonical links.                                           |
| Caching       | Public GET: ETag + explicit Cache-Control. Never cache private/admin responses publicly.              |
| Idempotency   | Writes that may be retried require Idempotency-Key and persist the outcome.                           |
| Auth          | Separate public API key, user token, editor role and service-to-service credentials.                  |
| Rate limits   | Apply route-specific limits; return 429 with Retry-After.                                             |
| Observability | Structured log fields: requestId, route, actorId, status, latencyMs, errorCode.                       |
| Deprecation   | Use Deprecation/Sunset headers and changelog entry.                                                   |
| Examples      | Maintain curl, JavaScript/TypeScript and response examples.                                           |

# 7. Standard API Response Shapes

### Success

```json
{
  "data": {},
  "meta": {
    "requestId": "req_...",
    "nextCursor": null
  },
  "links": {
    "self": "/v1/events/evt_..."
  }
}
```

### Error (`application/problem+json`)

```json
{
  "type": "https://api.example.com/problems/validation-error",
  "title": "Request validation failed",
  "status": 400,
  "detail": "One or more fields are invalid.",
  "instance": "/v1/search",
  "code": "VALIDATION_ERROR",
  "requestId": "req_...",
  "errors": [
    {
      "field": "from",
      "message": "Invalid historical date"
    }
  ]
}
```

# 8. Task Sequence and Agent Instructions

## TASK-001 Platform foundation

| **Dimension**             | **Agent instruction**                                                                                                                                      |
|---------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| User intent               | Create Worker/Hono project, typed bindings, environment configuration, CI, formatting, linting, test runner, health/version routes and preview deployment. |
| Data sources              | No historical data yet.                                                                                                                                    |
| Schema                    | Typed Bindings, environment schema and shared application context.                                                                                         |
| API/documentation         | GET /v1/health; GET /v1/version                                                                                                                            |
| Implementation/enrichment | Local and remote bindings; secret handling; request ID; error middleware.                                                                                  |
| Required edge tests       | Fresh install, missing binding, invalid env, Worker exception, CORS preflight, HEAD request.                                                               |
| Quality gate              | CI green; preview deployed; OpenAPI contains both routes; no secrets in repository.                                                                        |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task.                                         |

## TASK-002 API contract and documentation

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Install shared validation/OpenAPI pattern, docs UI, problem details, pagination and API linting.                   |
| Data sources              | Hono OpenAPI and validation are implementation dependencies, not business data sources.                            |
| Schema                    | Shared Zod schemas for envelopes, errors, cursor and historical dates.                                             |
| API/documentation         | GET /openapi.json; GET /docs                                                                                       |
| Implementation/enrichment | Contract-first examples; generated client smoke test.                                                              |
| Required edge tests       | Duplicate operationId, undocumented status code, invalid example, nullable mismatch, breaking schema diff.         |
| Quality gate              | OpenAPI validates; all routes have examples; contract test and breaking-change check pass.                         |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-003 Source registry and licensing

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Create approved source catalog and enforce ingestion permissions.                                                  |
| Data sources              | Wikidata, GeoNames, Pleiades, VIAF first; competitor sites are reference/link-only unless licensed.                |
| Schema                    | source, source_policy, source_snapshot, license_decision.                                                          |
| API/documentation         | GET/POST /v1/admin/sources; GET /v1/sources/{id}                                                                   |
| Implementation/enrichment | Record access method, rate limit, attribution, commercial use, asset rights and refresh cadence.                   |
| Required edge tests       | Unknown license, license changed, metadata open but asset restricted, deleted source, URL redirect.                |
| Quality gate              | No connector can run without an active approved source policy.                                                     |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-004 Core canonical schema

| **Dimension**             | **Agent instruction**                                                                                                       |
|---------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| User intent               | Implement entity, event, person, place, organization, claim, source, claim_source, relation, alias and external_identifier. |
| Data sources              | Canonical model from PRD.                                                                                                   |
| Schema                    | D1 migrations, foreign keys, uniqueness rules, indexes, created/updated/review fields.                                      |
| API/documentation         | Admin CRUD only; public reads can wait.                                                                                     |
| Implementation/enrichment | Historical date component model; soft deletion; audit record.                                                               |
| Required edge tests       | BCE year, partial date, disputed date, alias collision, duplicate external ID, cyclic place hierarchy.                      |
| Quality gate              | Migration up/down strategy tested; fixtures load; integrity tests pass.                                                     |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task.          |

## TASK-005 Raw ingestion framework

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Build connector interface, R2 raw snapshot storage, Queue messages, job ledger, checksum and replay.               |
| Data sources              | Only approved source registry entries.                                                                             |
| Schema                    | ingestion_job, raw_object, connector_cursor, dead_letter.                                                          |
| API/documentation         | POST /v1/admin/imports; GET /v1/admin/imports/{id}                                                                 |
| Implementation/enrichment | At-least-once semantics, idempotency, backoff, source budget and immutable raw objects.                            |
| Required edge tests       | Duplicate delivery, partial download, corrupt gzip, rate limit, timeout, stale cursor, replay same checksum.       |
| Quality gate              | Replaying the same raw object creates no duplicate canonical records.                                              |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-006 Wikidata seed connector

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Ingest selected event/person/place records and authority IDs from allowed dump/query methods.                      |
| Data sources              | Wikidata CC0 structured data; production should not rely only on public SPARQL.                                    |
| Schema                    | Source-specific staging tables or normalized DTOs; external_identifier mapping.                                    |
| API/documentation         | Admin import status and metrics.                                                                                   |
| Implementation/enrichment | Entity-type allowlist, language aliases, references retained where available.                                      |
| Required edge tests       | Missing label, statement rank, qualifier date, deprecated claim, calendar model, high-degree entity.               |
| Quality gate              | Sample fixture reconciliation against source; license attribution and counts report pass.                          |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-007 GeoNames and place resolution

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Add modern place hierarchy, alternate names, coordinates and timezone metadata.                                    |
| Data sources              | GeoNames CC BY; preserve attribution.                                                                              |
| Schema                    | place, place_alias, place_hierarchy, external_identifier.                                                          |
| API/documentation         | GET /v1/places/{id}; GET /v1/places?query=                                                                         |
| Implementation/enrichment | Resolve historical mentions to modern place without overwriting historical name.                                   |
| Required edge tests       | Same city name in multiple countries, changed borders, invalid coordinate, antimeridian, deleted GeoNames ID.      |
| Quality gate              | Precision/recall fixture passes; ambiguous results remain separate.                                                |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-008 Historical dates and calendars

| **Dimension**             | **Agent instruction**                                                                                               |
|---------------------------|---------------------------------------------------------------------------------------------------------------------|
| User intent               | Create historical-date parser, serializer, comparison rules and API schema.                                         |
| Data sources              | Calendar conversion rules documented and sourced independently.                                                     |
| Schema                    | Structured date object with original text, components, precision, certainty and calendar.                           |
| API/documentation         | Used by events/search/date routes.                                                                                  |
| Implementation/enrichment | No silent exactness; explicit normalization and display fields.                                                     |
| Required edge tests       | 44 BCE, year zero convention, leap dates, Julian/Gregorian switch, month-only, circa, before/after, disputed range. |
| Quality gate              | Golden fixtures pass; sorting behavior documented; OpenAPI examples cover all precision types.                      |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task.  |

## TASK-009 Entity resolution and deduplication

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Match aliases and authority IDs, calculate duplicate confidence and support merge review.                          |
| Data sources              | Authority IDs from approved sources; no name-only automatic merge.                                                 |
| Schema                    | duplicate_cluster, resolution_candidate, merge_audit.                                                              |
| API/documentation         | GET /v1/admin/review/duplicates; POST merge/reject.                                                                |
| Implementation/enrichment | Deterministic features, explainable score, manual threshold.                                                       |
| Required edge tests       | Same name/different person, transliteration variants, twins, changed names, split/merged places.                   |
| Quality gate              | High-confidence fixture precision target met; all merges reversible.                                               |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-010 Claim provenance and conflict model

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Publish facts as atomic claims linked to supporting or contradicting sources.                                      |
| Data sources              | Primary, scholarly and edited source tiers.                                                                        |
| Schema                    | claim, claim_source, claim_conflict_group, editorial_note.                                                         |
| API/documentation         | GET /v1/events/{id}/claims; /sources                                                                               |
| Implementation/enrichment | Preferred claim is editorial state, not destructive overwrite.                                                     |
| Required edge tests       | Two birth dates, casualty ranges, disputed participant, source withdrawal, circular citation.                      |
| Quality gate              | No public claim without source; conflicts render both alternatives; audit trail complete.                          |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-011 Taxonomy and enrichment

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Assign event types, topics, era, geography, participants and graph relationships.                                  |
| Data sources              | Controlled taxonomy plus mappings from source vocabularies.                                                        |
| Schema                    | category, category_alias, entity_category, enrichment_run.                                                         |
| API/documentation         | GET /v1/topics; GET /v1/topics/{slug}                                                                              |
| Implementation/enrichment | Rules first; AI suggestions are candidates; record model/prompt/version.                                           |
| Required edge tests       | Multi-category event, obsolete term, sensitive classification, category cycle, low-confidence AI label.            |
| Quality gate              | Coverage and precision thresholds pass; rejected suggestions retained for audit.                                   |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-012 Public entity APIs

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Expose events, people, places, topics and sources with fields selected for public use.                             |
| Data sources              | Canonical D1 only.                                                                                                 |
| Schema                    | Read models optimized for route responses.                                                                         |
| API/documentation         | GET /v1/events/{id-or-slug}; people; places; topics; sources.                                                      |
| Implementation/enrichment | ETag, cache, language selection, sparse fieldsets only if justified.                                               |
| Required edge tests       | Unknown slug, redirected slug, deleted entity, private claim, oversized relation graph, invalid locale.            |
| Quality gate              | Contract, authorization, caching and latency tests pass.                                                           |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-013 Date and “On This Day” APIs

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Return events, births, deaths and anniversaries by exact date or month/day.                                        |
| Data sources              | Canonical events and person life events.                                                                           |
| Schema                    | Date lookup indexes/read model.                                                                                    |
| API/documentation         | GET /v1/dates/{date}; GET /v1/on-this-day/{mm-dd}                                                                  |
| Implementation/enrichment | Support historical date semantics and user locale.                                                                 |
| Required edge tests       | Feb 29, BCE, partial date excluded/included rules, timezone boundary, duplicate event categories.                  |
| Quality gate              | Deterministic ordering; pagination; significance and confidence documented.                                        |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-014 Search and user intent

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Implement intent parsing, lexical retrieval, filters, disambiguation and semantic candidate search.                |
| Data sources              | Canonical index; Vectorize is derived.                                                                             |
| Schema                    | search_document, index_job, query_log with privacy controls.                                                       |
| API/documentation         | GET /v1/search; GET /v1/suggest                                                                                    |
| Implementation/enrichment | Parse dates/people/places/topics before vector search; explainability for internal QA.                             |
| Required edge tests       | Hyderabad ambiguity, typo, multiple calendars, negative year, same-name people, empty query, injection text.       |
| Quality gate              | Offline relevance set passes NDCG/precision targets; zero-result and latency budgets pass.                         |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-015 Related links and timelines

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Build relationship-driven internal links and chronological timelines.                                              |
| Data sources              | Relations and shared entities; embeddings only as fallback.                                                        |
| Schema                    | related_entity_cache, timeline_item.                                                                               |
| API/documentation         | GET /v1/{type}/{id}/related; /timeline                                                                             |
| Implementation/enrichment | Explain relation reason; cap fan-out; avoid circular UI loops.                                                     |
| Required edge tests       | Very high-degree entity, same event repeated, conflicting chronology, missing date.                                |
| Quality gate              | Every related item has a reason code; duplicate and relevance tests pass.                                          |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-016 Editorial and correction workflow

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Create moderation states, assignments, review decisions, correction submissions and revision audit.                |
| Data sources              | User submissions are untrusted until reviewed.                                                                     |
| Schema                    | review_case, correction, editorial_revision, actor_role.                                                           |
| API/documentation         | POST /v1/corrections; admin review routes.                                                                         |
| Implementation/enrichment | RBAC, anti-abuse, PII minimization and immutable audit.                                                            |
| Required edge tests       | Malicious HTML, duplicate correction, source without rights, reviewer conflict, rollback.                          |
| Quality gate              | Unauthorized paths fail; audit completeness and moderation SLA metrics exist.                                      |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-017 Generated learning content

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Generate cited summaries, quizzes, 60-second stories and 2–4 minute podcast scripts.                               |
| Data sources              | Only approved canonical claims and rights-cleared media references.                                                |
| Schema                    | generated_artifact, generation_input, generation_review.                                                           |
| API/documentation         | POST /v1/generate/\* for authorized clients; GET artifact.                                                         |
| Implementation/enrichment | Citation coverage, reading level, safety and factual consistency checks.                                           |
| Required edge tests       | Insufficient sources, conflict present, copyrighted long quote, sensitive event, unsupported answer choice.        |
| Quality gate              | 100% material-claim traceability; automatic factual verifier and human review threshold pass.                      |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-018 Security, quotas and API consumers

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Add API keys, plans, route scopes, rate limits and admin/service auth.                                             |
| Data sources              | Cloudflare rate limiting and security controls.                                                                    |
| Schema                    | api_consumer, api_key_hash, quota_policy, usage_event.                                                             |
| API/documentation         | POST/GET admin consumers; public endpoints enforce key policy as configured.                                       |
| Implementation/enrichment | Hash keys; rotate; least privilege; JWT validation where used.                                                     |
| Required edge tests       | Leaked/revoked key, clock skew, replay, quota race, missing Retry-After, admin token on public cache.              |
| Quality gate              | Security tests, secret scan and abuse tests pass.                                                                  |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-019 Observability and operations

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Add logs, traces, source freshness, queue lag, quality metrics, alerts and runbooks.                               |
| Data sources              | Cloudflare Workers observability plus optional export.                                                             |
| Schema                    | operational metrics and quality snapshots.                                                                         |
| API/documentation         | GET /v1/admin/metrics summary if needed; dashboards are operational.                                               |
| Implementation/enrichment | No sensitive source payloads in logs; correlation across fetch/queue/workflow.                                     |
| Required edge tests       | Poison message, repeated retry, source outage, D1 error, high latency, index drift.                                |
| Quality gate              | Alert drill and replay runbook verified; SLO dashboard complete.                                                   |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

## TASK-020 Release readiness and public developer portal

| **Dimension**             | **Agent instruction**                                                                                              |
|---------------------------|--------------------------------------------------------------------------------------------------------------------|
| User intent               | Finalize API docs, SDK examples, changelog, migration policy, datasets, support and launch checklist.              |
| Data sources              | All approved published sources.                                                                                    |
| Schema                    | API version and documentation metadata.                                                                            |
| API/documentation         | /docs, /openapi.json, example applications.                                                                        |
| Implementation/enrichment | Generate docs from source; test every example against preview.                                                     |
| Required edge tests       | Stale example, broken anchor, undocumented field, browser CORS, SDK type mismatch.                                 |
| Quality gate              | Full regression, accessibility, security, data-quality and disaster-recovery review PASS.                          |
| Review                    | Write docs/quality-reports/TASK-###.md with evidence, unresolved risks, PASS/BLOCKED decision and exact next task. |

# 9. Data Enrichment Rules

| **Enrichment** | **Rules**                                                                                       |
|----------------|-------------------------------------------------------------------------------------------------|
| Aliases        | Preserve language, script, source, valid dates and alias type; never discard historical names.  |
| Geography      | Attach modern hierarchy separately from historical political entity.                            |
| Categories     | Map to controlled taxonomy; allow multiple categories and confidence.                           |
| Relationships  | Use typed edges with role, validity and source.                                                 |
| Importance     | Calculate from scope and evidence; do not confuse popularity with importance.                   |
| Source quality | Score authority, independence, recency-to-event, methodology and editorial controls.            |
| Media          | Require rights status, attribution, source URL and entity relevance.                            |
| Embeddings     | Generate from canonical text and IDs; rebuildable and non-authoritative.                        |
| AI extraction  | Store model, prompt, input snapshot, candidate output, confidence and reviewer decision.        |
| Translations   | Store translated label separately; identify human, source-provided or machine-generated origin. |

# 10. Universal Edge-Test Catalog

- BCE dates, no year zero ambiguity, partial dates, approximate dates, date ranges and disputed dates.

- Gregorian/Julian differences, leap day, timezone crossing and unknown local time.

- Same name for multiple people or places; renamed people, cities and countries; transliteration variants.

- Duplicate source records, replayed queue messages, retries after partial success and out-of-order processing.

- Conflicting claims, withdrawn sources, dead links, changed licenses and restricted media assets.

- Extremely long names, Unicode scripts, combining characters, right-to-left text and emoji in malicious input.

- Empty and oversized requests, malformed cursors, SQL injection strings, HTML/script injection and path traversal.

- Unauthorized access, revoked API key, expired token, quota exceeded and cache leakage between users.

- High-degree graph entities, cycles, missing relationships and an entity deleted during indexing.

- Cloudflare binding unavailable locally, Queue poison message, R2 partial object, D1 transient error and workflow replay.

# 11. Required Quality Commands

```bash
# Install and static checks
pnpm install --frozen-lockfile
pnpm lint
pnpm typecheck
pnpm format:check

# Tests
pnpm test:unit
pnpm test:integration
pnpm test:contract
pnpm test:edge
pnpm test:migrations
pnpm test:security

# API quality
pnpm openapi:generate
pnpm openapi:lint
pnpm openapi:breaking --base origin/main
pnpm examples:test

# Cloudflare local/preview
pnpm wrangler:types
pnpm dev:smoke
pnpm deploy:preview
pnpm preview:smoke

# Data quality
pnpm quality:sources
pnpm quality:claims
pnpm quality:duplicates
pnpm quality:rights
pnpm quality:index
```

# 12. Pull Request Review Checklist

| **Area**      | **Blocking review questions**                                                                 |
|---------------|-----------------------------------------------------------------------------------------------|
| Intent        | Does implementation satisfy the stated use case without expanding scope?                      |
| Sources       | Are all source uses permitted and attribution/limits documented?                              |
| Schema        | Is historical uncertainty preserved? Are migrations safe and indexed?                         |
| API           | Is the route consistent, validated, documented, paginated and backward compatible?            |
| Security      | Are auth, authorization, secrets, rate limits, input validation and cache boundaries correct? |
| Reliability   | Is processing idempotent? Are retry, replay and partial-failure behaviors tested?             |
| Quality       | Can unsupported or conflicting claims accidentally publish?                                   |
| Observability | Can an operator trace the request/job and diagnose a failure?                                 |
| Tests         | Do tests cover the happy path, edge cases and failure recovery?                               |
| Documentation | Are OpenAPI, examples, ADR/source registry and runbook current?                               |
| Decision      | Is there concrete evidence for PASS? If not, mark BLOCKED and do not proceed.                 |

# 13. Definition of Done

- Task specification is complete and status is Passed.

- Code and migrations are reviewed and all automated checks pass.

- OpenAPI and examples are generated and validated.

- Every new source has a license decision and every new claim path enforces provenance.

- Edge cases and failure recovery are demonstrated by tests.

- Operational logs and metrics contain request/job correlation without sensitive data.

- Quality report records evidence, residual risk and reviewer decision.

- Only then may the agent begin the named next task.

# 14. Agent Prompt Template

```text
You are implementing TASK-### for the Historical Knowledge Platform.

Rules:

1. Read the PRD, architecture decisions, API conventions and previous task quality report.
2. Restate the user intent and acceptance criteria in the task file before coding.
3. Verify every data source, license and permitted use. Never scrape or copy restricted competitors.
4. Define schema, migration, route contract, examples, edge cases and quality gates first.
5. Implement a small vertical slice using Cloudflare Workers, Hono and typed bindings.
6. Use atomic claims with provenance. Preserve uncertainty and conflicts.
7. Update generated OpenAPI and API examples in the same change.
8. Add unit, integration, contract, edge, security and replay tests as applicable.
9. Run every required quality command and save evidence in docs/quality-reports/TASK-###.md.
10. Perform a self-review. Mark PASS only when every blocking gate passes.
11. Do not start the next task when the decision is BLOCKED.
12. When PASS, name exactly one next task and stop.

Output at completion:

- Files changed
- Migrations
- API routes and examples
- Tests and results
- Data-quality results
- Security/operational notes
- Documentation updated
- Review findings
- PASS/BLOCKED decision
- Next task
```

# 15. Official Documentation References

- Cloudflare Workers: https://developers.cloudflare.com/workers/

- Local development and bindings: https://developers.cloudflare.com/workers/local-development/

- D1: https://developers.cloudflare.com/d1/

- D1 with Hono: https://developers.cloudflare.com/d1/examples/d1-and-hono/

- Wrangler: https://developers.cloudflare.com/workers/wrangler/

- Workers observability: https://developers.cloudflare.com/workers/observability/

- Rate limiting binding: https://developers.cloudflare.com/workers/runtime-apis/bindings/rate-limit/

- Hono on Workers: https://developers.cloudflare.com/workers/framework-guides/web-apps/more-web-frameworks/hono/

- Hono validation: https://hono.dev/docs/guides/validation

- Hono OpenAPI: https://hono.dev/examples/hono-openapi

- Hono RPC: https://hono.dev/docs/guides/rpc
