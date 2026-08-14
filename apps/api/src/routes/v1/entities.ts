/**
 * Entity detail endpoints — for non-person entity types.
 * Per famous-people-platform-spec.md v2.0 §8.1
 *
 * Endpoints:
 *   GET /v1/places/{slug}
 *   GET /v1/countries/{cca2}
 *   GET /v1/professions/{slug}
 *   GET /v1/generations/{slug}
 *   GET /v1/star-signs/{slug}
 *   GET /v1/chinese-zodiacs/{slug}
 *   GET /v1/causes-of-death/{slug}
 *   GET /v1/works/{slug}
 *   GET /v1/awards/{slug}
 *   GET /v1/organizations/{slug}
 *   GET /v1/organizations/{slug}/sections — list content_sections for an org
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import {
  getPlaceBySlug, getCountryByCode, getProfessionBySlug,
  getGenerationBySlug, getStarSignBySlug, getChineseZodiacBySlug,
  getCauseOfDeathBySlug, getAwardBySlug, getWorkBySlug,
  getOrganizationBySlug,
} from '../../repositories/entities.js';

const notFound = (c: any, entity: string, identifier: string) => c.json(
  { error: { code: 'ENTITY_NOT_FOUND', message: `No ${entity} matched identifier: ${identifier}`, requestId: c.get('requestId'), details: [] } },
  404
) as any;

const personInListSchema = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  short_description: z.string().nullable().optional(),
  living_status: z.enum(['living', 'deceased', 'undisclosed']),
  birth_year: z.number().int().nullable().optional(),
  generation_slug: z.string().nullable().optional(),
  hero_image_url: z.string().nullable().optional(),
  relation_strength: z.number(),
});

const entityHeaderSchema = z.object({
  id: z.string(),
  type: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  short_description: z.string().nullable().optional(),
  count: z.number().int(),
});

// Rich place schema (used for /v1/places/{slug} response)
const placeSchema = z.object({
  id: z.string(),
  type: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  short_description: z.string().nullable().optional(),
  summary: z.string().nullable().optional(),
  place_type: z.string().nullable().optional(),
  country_code: z.string().nullable().optional(),
  latitude: z.number().nullable().optional(),
  longitude: z.number().nullable().optional(),
  founding_year: z.number().int().nullable().optional(),
  sections_count: z.number().int().optional(),
  events_count: z.number().int().optional(),
  hero_image_url: z.string().nullable().optional(),
  popularity_score: z.number().optional(),
  count: z.number().int(),
}).openapi('PlaceDetail');

// Place
const placeRoute = createRoute({
  method: 'get', path: '/v1/places/{slug}',
  operationId: 'getPlace', tags: ['entities'],
  summary: 'Place detail with born/died/lived there + lat/lon/sections/events/hero_image',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Place detail with lat/lon, summary, sections count, events count, hero image', content: { 'application/json': { schema: z.object({ place: placeSchema, birthPeople: z.array(personInListSchema), deathPeople: z.array(personInListSchema), residencePeople: z.array(personInListSchema) }) } } },
    404: { description: 'Place not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Country
const countryRoute = createRoute({
  method: 'get', path: '/v1/countries/{cca2}',
  operationId: 'getCountry', tags: ['entities'],
  summary: 'Country detail with citizens + born/died there',
  request: { params: z.object({ cca2: z.string().length(2) }) },
  responses: {
    200: { description: 'Country detail', content: { 'application/json': { schema: z.object({ country: entityHeaderSchema, citizens: z.array(personInListSchema), birthPeople: z.array(personInListSchema), deathPeople: z.array(personInListSchema) }) } } },
    404: { description: 'Country not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Profession
const professionRoute = createRoute({
  method: 'get', path: '/v1/professions/{slug}',
  operationId: 'getProfession', tags: ['entities'],
  summary: 'Profession detail with people in that profession',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Profession detail', content: { 'application/json': { schema: z.object({ profession: entityHeaderSchema, people: z.array(personInListSchema) }) } } },
    404: { description: 'Profession not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Generation
const generationRoute = createRoute({
  method: 'get', path: '/v1/generations/{slug}',
  operationId: 'getGeneration', tags: ['entities'],
  summary: 'Generation detail (Pew 2019 boundaries) with people in that generation',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Generation detail', content: { 'application/json': { schema: z.object({ generation: entityHeaderSchema, people: z.array(personInListSchema), yearRange: z.object({ min: z.number(), max: z.number() }) }) } } },
    404: { description: 'Generation not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Star sign
const starSignRoute = createRoute({
  method: 'get', path: '/v1/star-signs/{slug}',
  operationId: 'getStarSign', tags: ['entities'],
  summary: 'Star sign detail with people born under that sign',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Star sign detail', content: { 'application/json': { schema: z.object({ starSign: entityHeaderSchema, people: z.array(personInListSchema), dateRange: z.object({ start: z.string(), end: z.string() }).nullable() }) } } },
    404: { description: 'Star sign not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Chinese zodiac
const chineseZodiacRoute = createRoute({
  method: 'get', path: '/v1/chinese-zodiacs/{slug}',
  operationId: 'getChineseZodiac', tags: ['entities'],
  summary: 'Chinese zodiac animal detail with people born in that year',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Chinese zodiac detail', content: { 'application/json': { schema: z.object({ zodiac: entityHeaderSchema, people: z.array(personInListSchema) }) } } },
    404: { description: 'Chinese zodiac not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Cause of death
const causeOfDeathRoute = createRoute({
  method: 'get', path: '/v1/causes-of-death/{slug}',
  operationId: 'getCauseOfDeath', tags: ['entities'],
  summary: 'Cause of death detail with people who died from that cause',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Cause of death detail', content: { 'application/json': { schema: z.object({ cause: entityHeaderSchema, people: z.array(personInListSchema) }) } } },
    404: { description: 'Cause not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Award
const awardRoute = createRoute({
  method: 'get', path: '/v1/awards/{slug}',
  operationId: 'getAward', tags: ['entities'],
  summary: 'Award detail with winners and nominees',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Award detail', content: { 'application/json': { schema: z.object({ award: entityHeaderSchema, winners: z.array(personInListSchema), nominees: z.array(personInListSchema) }) } } },
    404: { description: 'Award not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// Work
const workRoute = createRoute({
  method: 'get', path: '/v1/works/{slug}',
  operationId: 'getWork', tags: ['entities'],
  summary: 'Work detail (book/film/album/etc.) with credits',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Work detail', content: { 'application/json': { schema: z.object({ work: entityHeaderSchema, credits: z.array(personInListSchema.extend({ role: z.string(), character_name: z.string().nullable() })) }) } } },
    404: { description: 'Work not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

export const entitiesRouter = new OpenAPIHono<AppEnv>();

entitiesRouter.openapi(placeRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getPlaceBySlug(c.env.DB, slug);
  if (!result.place) return notFound(c, 'place', slug);
  return c.json(result) as any;
});

entitiesRouter.openapi(countryRoute, async (c) => {
  const { cca2 } = c.req.valid('param');
  const result = await getCountryByCode(c.env.DB, cca2);
  if (!result.country) return notFound(c, 'country', cca2);
  return c.json(result) as any;
});

entitiesRouter.openapi(professionRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getProfessionBySlug(c.env.DB, slug);
  if (!result.profession) return notFound(c, 'profession', slug);
  return c.json(result) as any;
});

entitiesRouter.openapi(generationRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getGenerationBySlug(c.env.DB, slug);
  if (!result.generation) return notFound(c, 'generation', slug);
  return c.json(result) as any;
});

entitiesRouter.openapi(starSignRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getStarSignBySlug(c.env.DB, slug);
  if (!result.starSign) return notFound(c, 'star sign', slug);
  return c.json(result) as any;
});

entitiesRouter.openapi(chineseZodiacRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getChineseZodiacBySlug(c.env.DB, slug);
  if (!result.zodiac) return notFound(c, 'chinese zodiac', slug);
  return c.json(result) as any;
});

entitiesRouter.openapi(causeOfDeathRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getCauseOfDeathBySlug(c.env.DB, slug);
  if (!result.cause) return notFound(c, 'cause of death', slug);
  return c.json(result) as any;
});

entitiesRouter.openapi(awardRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getAwardBySlug(c.env.DB, slug);
  if (!result.award) return notFound(c, 'award', slug);
  return c.json(result) as any;
});

entitiesRouter.openapi(workRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getWorkBySlug(c.env.DB, slug);
  if (!result.work) return notFound(c, 'work', slug);
  return c.json(result) as any;
});

// ---------------------------------------------------------------------------
// /v1/organizations/{slug}
// ---------------------------------------------------------------------------

const organizationSchema = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  org_type: z.string().nullable().optional(),
  founded_year: z.number().int().nullable().optional(),
  dissolved_year: z.number().int().nullable().optional(),
  parent_id: z.string().nullable().optional(),
  wikidata_qid: z.string().nullable().optional(),
  summary: z.string().nullable().optional(),
  hero_image_url: z.string().nullable().optional(),
  sections_count: z.number().int().nullable().optional(),
  events_count: z.number().int().nullable().optional(),
  popularity_score: z.number().nullable().optional(),
}).openapi('OrganizationDetail');

const organizationRoute = createRoute({
  method: 'get',
  path: '/v1/organizations/{slug}',
  operationId: 'getOrganization',
  tags: ['entities'],
  summary: 'Organization detail (companies, universities, etc.)',
  description: 'Returns the organization record plus a list of notable people linked to it.',
  request: {
    params: z.object({
      slug: z.string().min(1).max(255),
    }),
  },
  responses: {
    200: { description: 'The organization detail' },
    404: { description: 'Organization not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

entitiesRouter.openapi(organizationRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const result = await getOrganizationBySlug(c.env.DB, slug);
  if (!result.organization) return notFound(c, 'organization', slug);
  return c.json(result) as any;
});

// ---------------------------------------------------------------------------
// /v1/organizations/{slug}/sections
// ---------------------------------------------------------------------------

const OrgSectionListItem = z.object({
  id: z.string(),
  heading: z.string().nullable(),
  section_type: z.string(),
  reading_level: z.string().nullable(),
  editorial_status: z.string().nullable(),
  display_order: z.number().int().nullable(),
}).openapi('OrgSectionListItem');

const OrgSectionsListResponse = z.object({
  entity_id: z.string(),
  slug: z.string(),
  sections: z.array(OrgSectionListItem),
  on_this_page: z.array(z.object({ id: z.string(), heading: z.string().nullable() })),
}).openapi('OrgSectionsListResponse');

const organizationSectionsRoute = createRoute({
  method: 'get',
  path: '/v1/organizations/{slug}/sections',
  operationId: 'getOrganizationSections',
  tags: ['entities', 'sections'],
  summary: 'List narrative sections for an organization',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Sections list', content: { 'application/json': { schema: OrgSectionsListResponse } } },
    404: { description: 'Organization not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

entitiesRouter.openapi(organizationSectionsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  // Look up the org
  const orgRow = await c.env.DB.prepare(
    'SELECT e.id, e.slug FROM entity e WHERE e.slug = ? AND e.type = ?'
  ).bind(slug, 'organization').first<{ id: string; slug: string }>();
  if (!orgRow) return notFound(c, 'organization', slug);

  const sectionsRes = await c.env.DB.prepare(`
    SELECT id, heading, section_type, reading_level, editorial_status, display_order
    FROM content_section
    WHERE entity_id = ? AND editorial_status != 'rejected'
    ORDER BY display_order ASC, id ASC
  `).bind(orgRow.id).all<{
    id: string; heading: string | null; section_type: string;
    reading_level: string | null; editorial_status: string | null;
    display_order: number | null;
  }>();
  const sections = sectionsRes.results || [];
  return c.json({
    entity_id: orgRow.id,
    slug: orgRow.slug,
    sections,
    on_this_page: sections.map(s => ({ id: s.id, heading: s.heading })),
  }) as any;
});

// ---------------------------------------------------------------------------
// /v1/organizations/{slug}/events
// ---------------------------------------------------------------------------

const OrgEventListItem = z.object({
  id: z.string(),
  event_date: z.string().nullable(),
  event_year: z.number().int(),
  event_type: z.string(),
  category: z.string(),
  title: z.string().nullable(),
  body: z.string().nullable(),
  source_id: z.string().nullable(),
  source_section: z.string().nullable(),
  date_precision: z.string(),
  display_order: z.number().int(),
}).openapi('OrgEventListItem');

const OrgEventsListResponse = z.object({
  entity_id: z.string(),
  slug: z.string(),
  total: z.number().int(),
  events: z.array(OrgEventListItem),
}).openapi('OrgEventsListResponse');

const organizationEventsRoute = createRoute({
  method: 'get',
  path: '/v1/organizations/{slug}/events',
  operationId: 'getOrganizationEvents',
  tags: ['entities', 'events'],
  summary: 'List narrative events for an organization',
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
    200: { description: 'Events list', content: { 'application/json': { schema: OrgEventsListResponse } } },
    404: { description: 'Organization not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

entitiesRouter.openapi(organizationEventsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const { type, category, from, to, limit } = c.req.valid('query');
  const orgRow = await c.env.DB.prepare(
    'SELECT e.id, e.slug FROM entity e WHERE e.slug = ? AND e.type = ?'
  ).bind(slug, 'organization').first<{ id: string; slug: string }>();
  if (!orgRow) return notFound(c, 'organization', slug);

  // Build WHERE clause with optional filters
  const conditions: string[] = ['entity_id = ?'];
  const bindings: any[] = [orgRow.id];
  if (type) {
    conditions.push('event_type = ?');
    bindings.push(type);
  }
  if (category) {
    conditions.push('category = ?');
    bindings.push(category);
  }
  if (from) {
    conditions.push('event_date >= ?');
    bindings.push(from);
  }
  if (to) {
    conditions.push('event_date <= ?');
    bindings.push(to);
  }
  const where = conditions.join(' AND ');

  // Get total count
  const countRes = await c.env.DB.prepare(
    `SELECT COUNT(*) AS n FROM entity_event WHERE ${where}`
  ).bind(...bindings).first<{ n: number }>();
  const total = (countRes as any)?.n || 0;

  // Get events
  const eventsRes = await c.env.DB.prepare(`
    SELECT id, event_date, event_year, event_type, category, title, body,
           source_id, source_section, date_precision, display_order
    FROM entity_event
    WHERE ${where}
    ORDER BY
      CASE WHEN event_date IS NULL THEN 1 ELSE 0 END ASC,
      event_date ASC,
      event_year ASC,
      display_order ASC
    LIMIT ?
  `).bind(...bindings, limit).all<{
    id: string; event_date: string | null; event_year: number;
    event_type: string; category: string; title: string | null;
    body: string | null; source_id: string | null; source_section: string | null;
    date_precision: string; display_order: number;
  }>();
  const events = eventsRes.results || [];
  return c.json({
    entity_id: orgRow.id,
    slug: orgRow.slug,
    total,
    events,
  }) as any;
});
