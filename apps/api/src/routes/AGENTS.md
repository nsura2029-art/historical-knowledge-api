# apps/api/src/routes/AGENTS.md — route layer

> **Owner**: route files. Read before editing or adding any route.

## Patterns

### Every route file

```ts
import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';

const route = createRoute({
  method: 'get',
  path: '/v1/things/{id}',
  operationId: 'getThing',
  tags: ['things'],
  summary: 'One-line description',
  request: {
    params: z.object({ id: z.string() }),
    query: z.object({ facet: z.string().optional() }),
  },
  responses: {
    200: { description: 'OK', content: { 'application/json': { schema: z.object({...}) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

export const thingRouter = new OpenAPIHono<AppEnv>();

thingRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  // ... handler logic ...
  return c.json({...}, 200) as any;
});
```

### Error envelope (ref doc style)

```ts
return c.json(
  { error: { code: 'PERSON_NOT_FOUND', message: '...', requestId, details: [] } },
  404
) as any;
```

Always include `requestId` and a stable `code` (UPPER_SNAKE_CASE). `details` is an array for field-level errors.

### DB query pattern

```ts
const row = await c.env.DB
  .prepare(`SELECT id, slug, canonical_name FROM entity WHERE slug = ? AND type = ?`)
  .bind(slug, 'person')
  .first<{ id: string; slug: string; canonical_name: string }>();

const rows = await c.env.DB
  .prepare(`SELECT ... FROM ... WHERE ...`)
  .bind(...)
  .all<{...}>();

// Always handle null:
if (!row) return c.json({ error: {...} }, 404) as any;
```

### Mounting

Every router file exports `*Router` (named export). `apps/api/src/routes/index.ts` imports and mounts each.

```ts
import { personDetailRouter } from './person-detail.js';
app.route('/v1/people', personDetailRouter);  // not /v1/people/ — the router defines /{slug}
```

## Standing gotchas (apply to any route)

- **Never call hooks conditionally** — Rules of Hooks applies to React only, but the same pattern bites with route handlers: don't call `c.get('requestId')` inside a try/catch. Call it at the top, then handle errors below.
- **The `_links` object** is the source of truth for clickable URLs. Stamp every fact with its own URL — don't make the front-end re-derive slugs. See `person-detail.ts` for the canonical example.
- **Redirect-aware slugs** — when a 404 happens on `/v1/people/{slug}`, look up the `slug_redirect` table and follow. See `person-detail.ts` `followedRedirect` pattern.
- **Year filters on date TEXT** — `substr(start_date, 1, 4) = ?` works for year-prefix match. SQLite/D1 has no native date math; don't use `strftime()` on the YYYY-MM-DD strings, it's slow.
- **Cursor pagination** — never use OFFSET. Use a keyset (id > last_id) for stable cursor pagination.
- **Tier ordering** — references endpoint sorts by tier (A first). Use the same sort order in any facet that lists sources.

## How to add a new route file

1. Create `apps/api/src/routes/v1/<thing>.ts` (or in `routes/` directly if it's a router that spans v1).
2. Define route with `createRoute`.
3. Define router with `OpenAPIHono<AppEnv>()`.
4. Export the router as `*Router`.
5. Mount in `apps/api/src/routes/index.ts`.
6. Add an entry to `apps/api/src/routes/v1/AGENTS.md`.
7. Add a smoke test.

## When stuck

- Pattern reference: see `person-detail.ts` for the canonical full-feature route (slug lookup, redirect, _links, response shape, error handling).
- Multi-signal sort example: see `related.ts` for relevance scoring.
- Grouped-by-source example: see `references.ts` for the grouped by_source response.
- Time-sorted example: see `timeline.ts` for date ordering and date precision.
