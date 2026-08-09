/**
 * Place-specific endpoints — sections and events for places.
 * These complement the base /v1/places/{slug} endpoint in entities.ts.
 *
 * Endpoints:
 *   GET /v1/places/{slug}/sections     — list content_sections for a place
 *   GET /v1/sections/{id}              — single section with body (already exists in biography.ts)
 *   GET /v1/places/{slug}/events       — list entity_event rows for a place
 *   GET /v1/places/{slug}/events/by-category — events grouped by category
 *   GET /v1/places/{slug}/events/timeline   — events grouped by decade
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';
import { RefDocError } from '@hka/contracts';

export const placesRouter = new OpenAPIHono<AppEnv>();

// ============================================================
// Schemas
// ============================================================

const SectionListItem = z.object({
  id: z.string(),
  heading: z.string().nullable(),
  section_type: z.string(),
  reading_level: z.string().nullable(),
  editorial_status: z.string().nullable(),
  display_order: z.number().int().nullable(),
}).openapi('PlaceSectionListItem');

const SectionsListResponse = z.object({
  entity_id: z.string(),
  sections: z.array(SectionListItem),
  on_this_page: z.array(z.object({ id: z.string(), heading: z.string().nullable() })),
}).openapi('PlaceSectionsListResponse');

const EventItem = z.object({
  id: z.string(),
  event_date: z.string().nullable(),
  event_year: z.number().int().nullable(),
  event_type: z.string(),
  category: z.string().nullable().optional(),
  title: z.string().nullable(),
  body: z.string().nullable().optional(),
  source_id: z.string(),
  source_section: z.string().nullable().optional(),
  display_order: z.number().int().nullable().optional(),
  confidence: z.number().nullable().optional(),
  date_precision: z.string().nullable().optional(),
}).openapi('PlaceEventItem');

const EventsListResponse = z.object({
  total: z.number().int(),
  by_type: z.record(z.number().int()).optional(),
  by_category: z.record(z.number().int()).optional(),
  events: z.array(EventItem),
}).openapi('PlaceEventsListResponse');

// ============================================================
// Routes
// ============================================================

const getPlaceSectionsRoute = createRoute({
  method: 'get',
  path: '/v1/places/{slug}/sections',
  operationId: 'getPlaceSections',
  tags: ['entities', 'sections'],
  summary: 'List narrative sections for a place',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Sections list', content: { 'application/json': { schema: SectionsListResponse } } },
    404: { description: 'Place not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getPlaceEventsRoute = createRoute({
  method: 'get',
  path: '/v1/places/{slug}/events',
  operationId: 'getPlaceEvents',
  tags: ['entities', 'events'],
  summary: 'List date-anchored events for a place',
  request: {
    params: z.object({ slug: z.string() }),
    query: z.object({
      type: z.string().optional(),
      category: z.string().optional(),
      from: z.string().optional(),
      to: z.string().optional(),
      limit: z.coerce.number().int().min(1).max(500).default(50),
    }),
  },
  responses: {
    200: { description: 'Events list', content: { 'application/json': { schema: EventsListResponse } } },
    404: { description: 'Place not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Handlers
// ============================================================

placesRouter.openapi(getPlaceSectionsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const place = await c.env.DB.prepare(`SELECT id FROM entity WHERE slug = ? AND type = 'place'`).bind(slug).first();
  if (!place) {
    return c.json({ error: { code: 'PLACE_NOT_FOUND', message: `No place with slug ${slug}` } }, 404) as any;
  }
  const entityId = (place as any).id;
  const { results: sections } = await c.env.DB.prepare(`
    SELECT id, section_type, heading, reading_level, editorial_status, display_order
    FROM content_section
    WHERE entity_id = ? AND editorial_status != 'rejected'
    ORDER BY COALESCE(display_order, 100) ASC
  `).bind(entityId).all();
  const items = sections as any[];
  return c.json({
    entity_id: entityId,
    sections: items.map(s => ({
      id: s.id,
      heading: s.heading,
      section_type: s.section_type,
      reading_level: s.reading_level,
      editorial_status: s.editorial_status,
      display_order: s.display_order,
    })),
    on_this_page: items.map(s => ({ id: s.id, heading: s.heading })),
  }) as any;
});

placesRouter.openapi(getPlaceEventsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const query = c.req.valid('query');
  const place = await c.env.DB.prepare(`SELECT id FROM entity WHERE slug = ? AND type = 'place'`).bind(slug).first();
  if (!place) {
    return c.json({ error: { code: 'PLACE_NOT_FOUND', message: `No place with slug ${slug}` } }, 404) as any;
  }
  const entityId = (place as any).id;

  // Build WHERE clause
  const conditions = ['entity_id = ?'];
  const params: any[] = [entityId];
  if (query.type) {
    conditions.push('event_type = ?');
    params.push(query.type);
  }
  if (query.category) {
    conditions.push('category = ?');
    params.push(query.category);
  }
  if (query.from) {
    conditions.push('event_date >= ?');
    params.push(query.from);
  }
  if (query.to) {
    conditions.push('event_date <= ?');
    params.push(query.to);
  }
  const where = conditions.join(' AND ');

  // Get total count
  const countResult = await c.env.DB.prepare(
    `SELECT COUNT(*) AS n FROM entity_event WHERE ${where}`
  ).bind(...params).first();
  const total = (countResult as any)?.n || 0;

  // Get events
  const { results: events } = await c.env.DB.prepare(`
    SELECT id, event_date, event_year, event_type, category, title, body,
           source_id, source_section, display_order, confidence, date_precision
    FROM entity_event
    WHERE ${where}
    ORDER BY
      CASE WHEN event_date IS NULL THEN 1 ELSE 0 END ASC,
      event_date ASC
    LIMIT ?
  `).bind(...params, query.limit).all();

  // Get by_type and by_category
  const { results: byTypeRows } = await c.env.DB.prepare(`
    SELECT event_type, COUNT(*) AS n FROM entity_event WHERE entity_id = ?
    GROUP BY event_type
  `).bind(entityId).all();
  const { results: byCatRows } = await c.env.DB.prepare(`
    SELECT category, COUNT(*) AS n FROM entity_event WHERE entity_id = ?
    GROUP BY category
  `).bind(entityId).all();

  const by_type: Record<string, number> = {};
  for (const r of byTypeRows as any[]) by_type[r.event_type] = r.n;
  const by_category: Record<string, number> = {};
  for (const r of byCatRows as any[]) by_category[r.category || 'unknown'] = r.n;

  return c.json({
    total,
    by_type,
    by_category,
    events: events as any[],
  }) as any;
});
