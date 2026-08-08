/**
 * KP-019: Tags / Profession dimension
 *
 * Endpoints (2 new):
 *   GET /v1/tags                      — list all tags with counts
 *   GET /v1/people?tag=X              — filter people by tag
 *
 * The existing /v1/people endpoint already supports ?tag= filtering,
 * but this file adds the dedicated /v1/tags endpoint and exposes the
 * profession/dimension breakdown.
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';

// ============================================================
// Schemas
// ============================================================

const TagSummary = z.object({
  id: z.string(),
  label: z.string(),
  category: z.string(),
  description: z.string().nullable(),
  display_order: z.number().int(),
  person_count: z.number().int(),
}).openapi('TagSummary');

const TagsListResponse = z.object({
  total: z.number().int(),
  by_category: z.record(z.array(z.string())),
  tags: z.array(TagSummary),
}).openapi('TagsListResponse');

const RefDocError = z.object({
  error: z.object({
    code: z.string(),
    message: z.string(),
  }),
}).openapi('RefDocError');

// ============================================================
// Routes
// ============================================================

const getTagsRoute = createRoute({
  method: 'get',
  path: '/v1/tags',
  operationId: 'getTags',
  tags: ['tags', 'biography'],
  summary: 'List all tags (profession/dimension) with person counts',
  description: 'Returns all tags sorted by person_count DESC. Useful for browsing top 500+ by profession.',
  request: {
    query: z.object({
      category: z.string().optional(),
      min_count: z.coerce.number().int().min(0).default(0),
    }),
  },
  responses: {
    200: { description: 'Tag list', content: { 'application/json': { schema: TagsListResponse } } },
  },
});

const getPeopleByTagRoute = createRoute({
  method: 'get',
  path: '/v1/people/by-tag/{tag_id}',
  operationId: 'getPeopleByTag',
  tags: ['tags', 'biography', 'people'],
  summary: 'List people with a specific tag (e.g. /v1/people/by-tag/tag_politician)',
  request: {
    params: z.object({ tag_id: z.string() }),
    query: z.object({
      limit: z.coerce.number().int().min(1).max(100).default(50),
    }),
  },
  responses: {
    200: { description: 'People with this tag', content: { 'application/json': { schema: z.object({
      tag_id: z.string(),
      total: z.number().int(),
      people: z.array(z.object({
        id: z.string(), slug: z.string(), canonical_name: z.string(),
        popularity_score: z.number().nullable(), popularity_rank: z.number().int().nullable(),
        summary: z.string().nullable(),
        tag_count: z.number().int(),
      })),
    }) } } },
    404: { description: 'Tag not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Helpers
// ============================================================

async function getTags(db: D1Database, category: string | null, minCount: number) {
  let query = `
    SELECT t.id, t.label, t.category, t.description, t.display_order,
           COUNT(et.entity_id) AS person_count
    FROM tag t
    LEFT JOIN entity_tag et ON et.tag_id = t.id
    WHERE 1=1
  `;
  const params: any[] = [];
  if (category) {
    query += ` AND t.category = ?`;
    params.push(category);
  }
  query += `
    GROUP BY t.id
    HAVING person_count >= ?
    ORDER BY person_count DESC, t.display_order ASC, t.label ASC
  `;
  params.push(minCount);

  const { results } = await db.prepare(query).bind(...params).all();
  return results as any[];
}

// ============================================================
// Router
// ============================================================

export const tagsRouter = new OpenAPIHono<AppEnv>();

tagsRouter.openapi(getTagsRoute, async (c) => {
  const { category, min_count } = c.req.valid('query');
  const tags = await getTags(c.env.DB, category, min_count);

  // Group by category
  const byCategory: Record<string, string[]> = {};
  for (const t of tags) {
    if (!byCategory[t.category]) byCategory[t.category] = [];
    byCategory[t.category].push(t.id);
  }

  return c.json({
    total: tags.length,
    by_category: byCategory,
    tags: tags.map(t => ({
      ...t,
      person_count: Number(t.person_count) || 0,
    })),
  }) as any;
});

tagsRouter.openapi(getPeopleByTagRoute, async (c) => {
  const { tag_id } = c.req.valid('param');
  const { limit } = c.req.valid('query');

  // Check tag exists
  const tag = await c.env.DB.prepare(`SELECT id, label FROM tag WHERE id = ?`).bind(tag_id).first();
  if (!tag) {
    return c.json({ error: { code: 'TAG_NOT_FOUND', message: `No tag with id ${tag_id}` } }, 404) as any;
  }

  const { results } = await c.env.DB.prepare(`
    SELECT e.id, e.slug, e.canonical_name, e.popularity_score, e.popularity_rank,
           e.summary, COUNT(et2.tag_id) AS tag_count
    FROM entity_tag et
    JOIN entity e ON e.id = et.entity_id
    LEFT JOIN entity_tag et2 ON et2.entity_id = e.id
    WHERE et.tag_id = ? AND e.type = 'person' AND e.status = 'published'
    GROUP BY e.id
    ORDER BY e.popularity_score DESC NULLS LAST, e.canonical_name ASC
    LIMIT ?
  `).bind(tag_id, limit).all();

  return c.json({
    tag_id,
    total: (results as any[]).length,
    people: (results as any[]).map(p => ({
      ...p,
      tag_count: Number(p.tag_count) || 0,
    })),
  }) as any;
});
