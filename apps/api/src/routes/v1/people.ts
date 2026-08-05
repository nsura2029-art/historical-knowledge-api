/**
 * GET /v1/people — browse famous people with filters.
 * Per famous-people-platform-spec.md v2.0 §8.1
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { PersonBrowseParams, PersonBrowseResponse, RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import { browsePeople, getFacetCounts } from '../../repositories/people.js';
import type { BrowseFilters } from '../../repositories/people.js';

const route = createRoute({
  method: 'get',
  path: '/v1/people',
  operationId: 'browsePeople',
  tags: ['people'],
  summary: 'Browse famous people with filters',
  description: 'Returns a paginated list of famous people. Supports filters for profession, country, generation, star sign, Chinese zodiac, gender, fame category, and living status. Includes facet counts.',
  request: { query: PersonBrowseParams },
  responses: {
    200: {
      description: 'A list of people matching the filters',
      content: { 'application/json': { schema: PersonBrowseResponse } },
    },
    400: {
      description: 'Validation error',
      content: { 'application/json': { schema: RefDocError } },
    },
  },
});

export const peopleRouter = new OpenAPIHono<AppEnv>();

peopleRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const params = c.req.valid('query');

  const filters: BrowseFilters = {
    profession: params.profession,
    country: params.country,
    generation: params.generation,
    star_sign: params.star_sign,
    chinese_zodiac: params.chinese_zodiac,
    gender: params.gender,
    fame_category: params.fame_category,
    living: params.living,
    sort: params.sort,
    cursor: params.cursor,
    limit: params.limit,
  };

  const [result, facetCounts] = await Promise.all([
    browsePeople(c.env.DB, filters),
    getFacetCounts(c.env.DB, filters),
  ]);

  const responseBody = {
    data: result.data,
    next_cursor: result.next_cursor,
    total_count: result.total_count,
    facets: facetCounts,
  };

  return c.json(responseBody) as any;
});
