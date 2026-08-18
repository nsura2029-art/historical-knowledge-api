# packages/contracts/AGENTS.md — shared Zod schemas

> **Owner**: this directory. Read before importing from `@hka/contracts`.
>
> **Status (2026-08-17)**: 84 endpoints, 124 sources, 64 D1 tables. PKG 4-question layout contracts needed for KP-PKG-1C.

## What lives here

Cross-package shared types, primarily Zod schemas. Used by `apps/api` for OpenAPI generation and by `packages/ingestion` for input validation.

## Currently exported

### Errors

- **`RefDocError`** — the canonical error envelope schema. Used by every route's 4xx/5xx response.

```ts
import { RefDocError } from '@hka/contracts';
// In a route definition:
responses: {
  404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
},
```

The shape:
```ts
{
  error: {
    code: string,        // UPPER_SNAKE_CASE stable
    message: string,
    requestId: string,
    details: any[]       // for field-level errors
  }
}
```

### Pagination (TODO)

Cursor-paginated response envelope. Not yet built. When added, every list endpoint should use it.

### HistoricalDate (TODO)

Calendar-aware date type with proleptic Gregorian + `original` text. Not yet exported here — it's currently inline in `apps/api/src/routes/v1/years.ts`. Should be moved here when TASK-008 lands.

### Source quality tier (2026-08-08)

`source_quality_tier` enum: `A | B | C | D | E`. Used across the source_registry, media, and event tables. Defined in `apps/api/src/routes/v1/sources.ts` but not yet exported here.

### Event source categories (as of 2026-08-17)

The `entity_event.source_id` FK references `source_registry.id`. The 5 currently-populated sources for events:
- `src_en_wikipedia` (Tier E, body text extraction — 41,466 events)
- `src_dbpedia` (Tier B, SPARQL date properties — 1,887 events)
- `src_wikidata` (Tier A, structured claims — 31,112 events; +3,557 PKG claims)
- `src_gdelt` (Tier C, GKG news events — 10,679 events)
- `src_wiki_anniversaries` (Tier E, Wikipedia "Selected anniversaries today" — 14,920 events)

### PKG 4-question layout (NEW 2026-08-17, TODO export here)

The PKG endpoint response shape — currently inline in `apps/api/src/routes/v1/pkg.ts`. Should be extracted to a shared contract in KP-PKG-1C:
- `WHO`: name + living_status + age
- `WHAT`: array of claims (career events + entity events + claim predicates)
- `CONNECTED`: family + social accounts
- `NOW`: latest entity_event
- `data_quality`: score + breakdown
- `claims`: full claim list with predicate, value, certainty, source_id

### Claim value types (NEW 2026-08-17)

`value_type` enum: `entity_ref | date | string | number | boolean`. Used in `claim.literal_value` polymorphic column. Define here when PKG expand.

## How to add a new shared type

1. Define the Zod schema in `packages/contracts/src/`.
2. Export it from `packages/contracts/src/index.ts`.
3. Import via `import { X } from '@hka/contracts'`.
4. (If it's used in OpenAPI) ensure it doesn't conflict with route-specific schemas.
5. Update this file with the new entry.

## Standing gotchas

- **Don't put route-specific types here.** Shared types only. If a type is used by one route, keep it in that route file.
- **No Cloudflare-specific imports** in this package. It should be usable from Node scripts too (smoke tests, ingestion).
- **Backward compatibility** — once a type is exported, renaming a field is a breaking change. Add a new field instead.
