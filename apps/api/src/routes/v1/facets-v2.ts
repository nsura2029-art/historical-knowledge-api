/**
 * Additional facets — for missing v2.0 design intents.
 * Per famous-people-platform-spec.md v2.0 §8.1
 *
 * Endpoints:
 *   GET /v1/facets/causes-of-death
 *   GET /v1/facets/eras
 *   GET /v1/facets/awards
 *   GET /v1/facets/organizations
 *   GET /v1/facets/industries
 *   GET /v1/facets/celebrities  (top people by fame category)
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import type { AppEnv } from '../../bindings.js';

// Causes of death
const causesOfDeathRoute = createRoute({
  method: 'get', path: '/v1/facets/causes-of-death',
  operationId: 'getCauseOfDeathFacets', tags: ['facets'],
  summary: 'List all causes of death with people counts (deceased only)',
  responses: {
    200: { description: 'Causes of death', content: { 'application/json': { schema: z.object({ data: z.array(z.object({ cause: z.string(), count: z.number().int() })), total: z.number().int() }) } } },
  },
});

// Eras
const erasRoute = createRoute({
  method: 'get', path: '/v1/facets/eras',
  operationId: 'getEraFacets', tags: ['facets'],
  summary: 'List historical eras (time periods) with people counts',
  responses: {
    200: { description: 'Eras', content: { 'application/json': { schema: z.object({ data: z.array(z.object({ slug: z.string(), name: z.string(), year_range: z.string(), count: z.number().int() })), total: z.number().int() }) } } },
  },
});

// Awards
const awardsFacetRoute = createRoute({
  method: 'get', path: '/v1/facets/awards',
  operationId: 'getAwardFacets', tags: ['facets'],
  summary: 'List all awards with winners/nominees counts',
  responses: {
    200: { description: 'Awards', content: { 'application/json': { schema: z.object({ data: z.array(z.object({ slug: z.string(), name: z.string(), award_type: z.string(), winners: z.number().int(), nominees: z.number().int() })), total: z.number().int() }) } } },
  },
});

// Industries
const industriesRoute = createRoute({
  method: 'get', path: '/v1/facets/industries',
  operationId: 'getIndustryFacets', tags: ['facets'],
  summary: 'List industries with people counts',
  responses: {
    200: { description: 'Industries', content: { 'application/json': { schema: z.object({ data: z.array(z.object({ industry: z.string(), count: z.number().int() })), total: z.number().int() }) } } },
  },
});

// Fame categories (top people per category)
const fameCategoriesRoute = createRoute({
  method: 'get', path: '/v1/facets/fame-categories',
  operationId: 'getFameCategoryFacets', tags: ['facets'],
  summary: 'List all fame categories with people counts (the 6 primary + 8 secondary)',
  responses: {
    200: { description: 'Fame categories', content: { 'application/json': { schema: z.object({ data: z.array(z.object({ slug: z.string(), name: z.string(), count: z.number().int() })), total: z.number().int() }) } } },
  },
});

export const facetsV2Router = new OpenAPIHono<AppEnv>();

const eraInfo: Record<string, { name: string; range: string }> = {
  'pre-1500': { name: 'Pre-1500 (Pre-modern)', range: 'before 1500' },
  '1500-1700': { name: 'Early Modern', range: '1500-1700' },
  '1700-1800': { name: 'Enlightenment Era', range: '1700-1800' },
  '1800-1900': { name: '19th Century', range: '1800-1900' },
  '1900-1950': { name: 'Early 20th Century', range: '1900-1950' },
  '1950-2000': { name: 'Late 20th Century', range: '1950-2000' },
  '2000-present': { name: '21st Century', range: '2000-present' },
};

facetsV2Router.openapi(causesOfDeathRoute, async (c) => {
  const result = await c.env.DB
    .prepare(`
      SELECT cause_of_death AS cause, COUNT(*) AS count
      FROM person
      WHERE living_status = 'deceased' AND cause_of_death IS NOT NULL
      GROUP BY cause_of_death
      ORDER BY count DESC
    `)
    .all<{ cause: string; count: number }>();
  const data = result.results ?? [];
  return c.json({ data, total: data.length });
});

facetsV2Router.openapi(erasRoute, async (c) => {
  const result = await c.env.DB
    .prepare(`
      SELECT era_slug AS slug, COUNT(*) AS count
      FROM person
      WHERE era_slug IS NOT NULL
      GROUP BY era_slug
      ORDER BY era_slug
    `)
    .all<{ slug: string; count: number }>();
  const data = (result.results ?? []).map((r) => ({
    slug: r.slug,
    name: eraInfo[r.slug]?.name ?? r.slug,
    year_range: eraInfo[r.slug]?.range ?? '',
    count: r.count,
  }));
  return c.json({ data, total: data.length });
});

facetsV2Router.openapi(awardsFacetRoute, async (c) => {
  const result = await c.env.DB
    .prepare(`
      SELECT e.id, e.canonical_name AS name, a.award_type,
             (SELECT COUNT(*) FROM person_award_result WHERE award_id = e.id AND result = 'won') AS winners,
             (SELECT COUNT(*) FROM person_award_result WHERE award_id = e.id AND result IN ('nominated', 'shortlisted')) AS nominees
      FROM entity e
      JOIN award a ON a.id = e.id
      WHERE e.type = 'award' AND e.status = 'published'
      ORDER BY winners DESC, e.canonical_name ASC
      LIMIT 100
    `)
    .all<{ id: string; name: string; award_type: string; winners: number; nominees: number }>();
  const data = (result.results ?? []).map((r) => ({
    slug: r.id,
    name: r.name,
    award_type: r.award_type,
    winners: r.winners,
    nominees: r.nominees,
  }));
  return c.json({ data, total: data.length });
});

facetsV2Router.openapi(industriesRoute, async (c) => {
  const result = await c.env.DB
    .prepare(`
      SELECT industry, COUNT(*) AS count
      FROM person
      WHERE industry IS NOT NULL
      GROUP BY industry
      ORDER BY count DESC
    `)
    .all<{ industry: string; count: number }>();
  const data = result.results ?? [];
  return c.json({ data, total: data.length });
});

facetsV2Router.openapi(fameCategoriesRoute, async (c) => {
  const flags = [
    { slug: 'is_celebrity', name: 'Celebrities' },
    { slug: 'is_historical_figure', name: 'Historical Figures' },
    { slug: 'is_professional', name: 'Professionals' },
    { slug: 'is_cultural_icon', name: 'Cultural Icons' },
    { slug: 'is_royalty', name: 'Royalty' },
    { slug: 'is_controversial', name: 'Controversial' },
    { slug: 'is_military_leader', name: 'Military Leaders' },
    { slug: 'is_religious_spiritual', name: 'Religious / Spiritual' },
    { slug: 'is_activist', name: 'Activists' },
    { slug: 'is_pioneer', name: 'Pioneers' },
    { slug: 'is_internet_personality', name: 'Internet Personalities' },
    { slug: 'is_polarizing', name: 'Polarizing' },
    { slug: 'is_living_legend', name: 'Living Legends' },
  ];
  const data = [];
  for (const f of flags) {
    const result = await c.env.DB
      .prepare(`SELECT COUNT(*) AS c FROM person WHERE ${f.slug} = 1`)
      .first<{ c: number }>();
    data.push({ slug: f.slug, name: f.name, count: result?.c ?? 0 });
  }
  return c.json({ data, total: data.length });
});
