/**
 * GET /v1/facets/{professions|countries|generations|star-signs|chinese-zodiacs}
 * Per famous-people-platform-spec.md v2.0 §8.1
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { ProfessionFacet, CountryFacet, GenerationFacet, StarSignFacet, ChineseZodiacFacet } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import {
  getProfessionFacets,
  getCountryFacets,
  getGenerationFacets,
  getStarSignFacets,
  getChineseZodiacFacets,
} from '../../repositories/people.js';

// Professions
const professionsRoute = createRoute({
  method: 'get',
  path: '/v1/facets/professions',
  operationId: 'getProfessionFacets',
  tags: ['facets'],
  summary: 'List all professions with people counts',
  description: 'Returns all professions used in the system along with the count of people for each.',
  responses: {
    200: {
      description: 'List of professions',
      content: {
        'application/json': {
          schema: z.object({
            data: z.array(ProfessionFacet),
            total: z.number().int(),
          }),
        },
      },
    },
  },
});

// Countries
const countriesRoute = createRoute({
  method: 'get',
  path: '/v1/facets/countries',
  operationId: 'getCountryFacets',
  tags: ['facets'],
  summary: 'List all countries (citizenship) with people counts',
  description: 'Returns all countries represented in person citizenships, with counts.',
  responses: {
    200: {
      description: 'List of countries',
      content: {
        'application/json': {
          schema: z.object({
            data: z.array(CountryFacet),
            total: z.number().int(),
          }),
        },
      },
    },
  },
});

// Generations
const generationsRoute = createRoute({
  method: 'get',
  path: '/v1/facets/generations',
  operationId: 'getGenerationFacets',
  tags: ['facets'],
  summary: 'List all generations (Pew 2019) with people counts',
  description: 'Returns all 8 generations defined by Pew 2019 research, with people counts.',
  responses: {
    200: {
      description: 'List of generations',
      content: {
        'application/json': {
          schema: z.object({
            data: z.array(GenerationFacet),
            total: z.number().int(),
          }),
        },
      },
    },
  },
});

// Star signs
const starSignsRoute = createRoute({
  method: 'get',
  path: '/v1/facets/star-signs',
  operationId: 'getStarSignFacets',
  tags: ['facets'],
  summary: 'List all 12 Western star signs with people counts',
  description: 'Returns all 12 Western tropical zodiac signs, with people counts.',
  responses: {
    200: {
      description: 'List of star signs',
      content: {
        'application/json': {
          schema: z.object({
            data: z.array(StarSignFacet),
            total: z.number().int(),
          }),
        },
      },
    },
  },
});

// Chinese zodiacs
const chineseZodiacsRoute = createRoute({
  method: 'get',
  path: '/v1/facets/chinese-zodiacs',
  operationId: 'getChineseZodiacFacets',
  tags: ['facets'],
  summary: 'List all 12 Chinese zodiac animals with people counts',
  description: 'Returns all 12 Chinese zodiac animals, with people counts.',
  responses: {
    200: {
      description: 'List of Chinese zodiac animals',
      content: {
        'application/json': {
          schema: z.object({
            data: z.array(ChineseZodiacFacet),
            total: z.number().int(),
          }),
        },
      },
    },
  },
});

export const facetsRouter = new OpenAPIHono<AppEnv>();

facetsRouter.openapi(professionsRoute, async (c) => {
  const data = await getProfessionFacets(c.env.DB);
  return c.json({ data, total: data.length });
});

facetsRouter.openapi(countriesRoute, async (c) => {
  const data = await getCountryFacets(c.env.DB);
  return c.json({ data, total: data.length });
});

facetsRouter.openapi(generationsRoute, async (c) => {
  const data = await getGenerationFacets(c.env.DB);
  return c.json({ data, total: data.length });
});

facetsRouter.openapi(starSignsRoute, async (c) => {
  const data = await getStarSignFacets(c.env.DB);
  return c.json({ data, total: data.length });
});

facetsRouter.openapi(chineseZodiacsRoute, async (c) => {
  const data = await getChineseZodiacFacets(c.env.DB);
  return c.json({ data, total: data.length });
});
