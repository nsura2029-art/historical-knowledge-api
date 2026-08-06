/**
 * GET /v1/search?q=... — multi-facet search across people, places, works, awards, organizations.
 * Per famous-people-platform-spec.md v2.0 §8.1
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import { searchAll } from '../../repositories/search.js';

const route = createRoute({
  method: 'get',
  path: '/v1/search',
  operationId: 'search',
  tags: ['search'],
  summary: 'Multi-facet search across all entity types',
  description: 'Searches across people, works, awards, and external identifiers. Returns ranked results with match scores.',
  request: {
    query: z.object({
      q: z.string().min(1).max(200).describe('Search query (matches name, alias, description, work title, etc.)'),
      limit: z.coerce.number().int().min(1).max(50).default(20).describe('Max results to return'),
    }),
  },
  responses: {
    200: {
      description: 'Search results',
      content: {
        'application/json': {
          schema: z.object({
            query: z.string(),
            total: z.number().int(),
            results: z.array(z.object({
              entity_id: z.string(),
              entity_type: z.enum(['person', 'place', 'work', 'organization', 'award']),
              slug: z.string(),
              canonical_name: z.string(),
              short_description: z.string().nullable().optional(),
              match_type: z.enum(['canonical', 'alias', 'description', 'external_id', 'profession', 'work', 'award']),
              match_score: z.number(),
              matched_term: z.string(),
              living_status: z.enum(['living', 'deceased', 'undisclosed']).optional(),
              generation_slug: z.string().nullable().optional(),
              birth_year: z.number().int().nullable().optional(),
              hero_image_url: z.string().nullable().optional(),
            })),
          }),
        },
      },
    },
    400: {
      description: 'Missing or invalid query',
      content: { 'application/json': { schema: RefDocError } },
    },
  },
});

export const searchRouter = new OpenAPIHono<AppEnv>();

searchRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const { q, limit } = c.req.valid('query');

  if (!q || q.trim() === '') {
    return c.json(
      { error: { code: 'MISSING_QUERY', message: 'Query parameter q is required', requestId, details: [] } },
      400
    ) as any;
  }

  const results = await searchAll(c.env.DB, q, limit);

  return c.json({
    query: q,
    total: results.length,
    results,
  }) as any;
});
