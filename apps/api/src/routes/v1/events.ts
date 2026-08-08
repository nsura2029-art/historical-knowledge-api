/**
 * KP-029: Person Events / Notable Events
 *
 * Returns date-anchored events for each person, extracted from their
 * content_sections via events_extract.py.
 *
 * Endpoints (3 new):
 *   GET /v1/people/{slug}/events           — list events (filter by type/category/year)
 *   GET /v1/people/{slug}/events/by-category — events grouped by category
 *   GET /v1/people/{slug}/events/timeline         — events grouped by year (decade buckets)
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';

// ============================================================
// Schemas
// ============================================================

const EventItem = z.object({
  id: z.string(),
  event_date: z.string().nullable(),
  event_year: z.number().int(),
  event_type: z.string(),
  category: z.string(),
  title: z.string(),
  body: z.string(),
  source_section: z.string().nullable(),
  display_order: z.number().int(),
  confidence: z.number(),
}).openapi('EventItem');

const EventsListResponse = z.object({
  total: z.number().int(),
  by_type: z.record(z.number()),
  by_category: z.record(z.number()),
  events: z.array(EventItem),
}).openapi('EventsListResponse');

const EventsByCategoryResponse = z.object({
  total: z.number().int(),
  total_events: z.number().int(),
  category_count: z.number().int(),
  type_count: z.number().int(),
  categories: z.array(z.object({
    category: z.string(),
    count: z.number().int(),
    events: z.array(EventItem),
  })),
}).openapi('EventsByCategoryResponse');

const TimelineResponse = z.object({
  total: z.number().int(),
  decades: z.array(z.object({
    decade: z.number().int(),
    year_range: z.string(),
    count: z.number().int(),
    events: z.array(EventItem),
  })),
}).openapi('TimelineResponse');

const RefDocError = z.object({
  error: z.object({ code: z.string(), message: z.string() }),
}).openapi('RefDocError');

// ============================================================
// Routes
// ============================================================

const getEventsRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/events',
  operationId: 'getPersonEvents',
  tags: ['biography', 'events'],
  summary: "List a person's notable events across all categories",
  description: 'Returns date-anchored events extracted from the person\'s content_sections. ' +
                'Each event has a year/date, type (career, personal_life, award, etc.), and a title/body. ' +
                'Useful for "On This Day" style displays and rich biography timelines.',
  request: {
    params: z.object({ slug: z.string() }),
    query: z.object({
      event_type: z.string().optional(),
      category: z.string().optional(),
      from_year: z.coerce.number().int().optional(),
      to_year: z.coerce.number().int().optional(),
      min_confidence: z.coerce.number().min(0).max(1).default(0),
      limit: z.coerce.number().int().min(1).max(500).default(200),
    }),
  },
  responses: {
    200: { description: 'Event list', content: { 'application/json': { schema: EventsListResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getEventsByCategoryRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/events/by-category',
  operationId: 'getPersonEventsByCategory',
  tags: ['biography', 'events'],
  summary: "Group a person's events by category",
  description: 'Returns the same events as /events but grouped by category, with per-category counts. ' +
                'This is the "max number of noticable events for each person across different categories" view.',
  request: {
    params: z.object({ slug: z.string() }),
  },
  responses: {
    200: { description: 'Events grouped by category', content: { 'application/json': { schema: EventsByCategoryResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getTimelineRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/events/timeline',
  operationId: 'getPersonTimeline',
  tags: ['biography', 'events'],
  summary: "Person's events grouped by decade",
  description: 'Returns events organized into decade buckets for a timeline visualization.',
  request: {
    params: z.object({ slug: z.string() }),
  },
  responses: {
    200: { description: 'Timeline', content: { 'application/json': { schema: TimelineResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Router
// ============================================================

export const eventsRouter = new OpenAPIHono<AppEnv>();

eventsRouter.openapi(getEventsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const { event_type, category, from_year, to_year, min_confidence, limit } = c.req.valid('query');

  // Resolve person
  const person = await c.env.DB.prepare(
    `SELECT id FROM entity WHERE slug = ? AND type = 'person'`
  ).bind(slug).first();
  if (!person) {
    return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;
  }

  // Build query
  const where: string[] = ['entity_id = ?', 'confidence >= ?'];
  const params: any[] = [person.id, min_confidence];
  if (event_type) { where.push('event_type = ?'); params.push(event_type); }
  if (category) { where.push('category = ?'); params.push(category); }
  if (from_year !== undefined) { where.push('event_year >= ?'); params.push(from_year); }
  if (to_year !== undefined) { where.push('event_year <= ?'); params.push(to_year); }
  params.push(limit);

  const { results } = await c.env.DB.prepare(`
    SELECT id, event_date, event_year, event_type, category, title, body,
           source_section, display_order, confidence
    FROM entity_event
    WHERE ${where.join(' AND ')}
    ORDER BY event_year ASC, display_order ASC
    LIMIT ?
  `).bind(...params).all();

  const events = (results as any[]).map(e => ({
    ...e,
    confidence: Number(e.confidence) || 0,
  }));

  // Build counts
  const byType: Record<string, number> = {};
  const byCat: Record<string, number> = {};
  for (const e of events) {
    byType[e.event_type] = (byType[e.event_type] || 0) + 1;
    byCat[e.category] = (byCat[e.category] || 0) + 1;
  }

  return c.json({
    total: events.length,
    by_type: byType,
    by_category: byCat,
    events,
  }) as any;
});

eventsRouter.openapi(getEventsByCategoryRoute, async (c) => {
  const { slug } = c.req.valid('param');

  const person = await c.env.DB.prepare(
    `SELECT id FROM entity WHERE slug = ? AND type = 'person'`
  ).bind(slug).first();
  if (!person) {
    return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;
  }

  const { results } = await c.env.DB.prepare(`
    SELECT id, event_date, event_year, event_type, category, title, body,
           source_section, display_order, confidence
    FROM entity_event
    WHERE entity_id = ?
    ORDER BY category ASC, event_year ASC
  `).bind(person.id).all();

  const all = results as any[];

  // Group by category
  const byCategory: Record<string, any[]> = {};
  const byType: Record<string, number> = {};
  for (const e of all) {
    if (!byCategory[e.category]) byCategory[e.category] = [];
    byCategory[e.category].push({ ...e, confidence: Number(e.confidence) || 0 });
    byType[e.event_type] = (byType[e.event_type] || 0) + 1;
  }

  const categories = Object.keys(byCategory).sort((a, b) => byCategory[b].length - byCategory[a].length)
    .map(cat => ({
      category: cat,
      count: byCategory[cat].length,
      events: byCategory[cat],
    }));

  return c.json({
    total: all.length,
    total_events: all.length,
    category_count: categories.length,
    type_count: Object.keys(byType).length,
    categories,
  }) as any;
});

eventsRouter.openapi(getTimelineRoute, async (c) => {
  const { slug } = c.req.valid('param');

  const person = await c.env.DB.prepare(
    `SELECT id FROM entity WHERE slug = ? AND type = 'person'`
  ).bind(slug).first();
  if (!person) {
    return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;
  }

  const { results } = await c.env.DB.prepare(`
    SELECT id, event_date, event_year, event_type, category, title, body,
           source_section, display_order, confidence
    FROM entity_event
    WHERE entity_id = ?
    ORDER BY event_year ASC
  `).bind(person.id).all();

  const all = results as any[];

  // Group by decade
  const byDecade: Record<number, any[]> = {};
  for (const e of all) {
    const decade = Math.floor(e.event_year / 10) * 10;
    if (!byDecade[decade]) byDecade[decade] = [];
    byDecade[decade].push({ ...e, confidence: Number(e.confidence) || 0 });
  }

  const decades = Object.keys(byDecade)
    .map(Number)
    .sort((a, b) => a - b)
    .map(d => ({
      decade: d,
      year_range: `${d}-${d+9}`,
      count: byDecade[d].length,
      events: byDecade[d],
    }));

  return c.json({
    total: all.length,
    decades,
  }) as any;
});
