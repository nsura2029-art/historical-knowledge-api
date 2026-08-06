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
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import {
  getPlaceBySlug, getCountryByCode, getProfessionBySlug,
  getGenerationBySlug, getStarSignBySlug, getChineseZodiacBySlug,
  getCauseOfDeathBySlug, getAwardBySlug, getWorkBySlug,
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

// Place
const placeRoute = createRoute({
  method: 'get', path: '/v1/places/{slug}',
  operationId: 'getPlace', tags: ['entities'],
  summary: 'Place detail with born/died/lived there',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Place detail', content: { 'application/json': { schema: z.object({ place: entityHeaderSchema, birthPeople: z.array(personInListSchema), deathPeople: z.array(personInListSchema), residencePeople: z.array(personInListSchema) }) } } },
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
