# packages/contracts/AGENTS.md — shared Zod schemas

> **Owner**: this directory. Read before importing from `@hka/contracts`.

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
