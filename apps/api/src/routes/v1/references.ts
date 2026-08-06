/**
 * GET /v1/people/{slug}/references — bibliography for the person.
 * Per famous-people-platform-spec.md v2.0 §8.1
 *
 * Returns all claims + sources that back a person, grouped by source.
 * Each source has a "landing page" link (the source's homepage / section
 * page, e.g. https://www.bbc.com/news for any BBC News article).
 *
 * Used for the "References" section on the person detail page.
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';

const route = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/references',
  operationId: 'getPersonReferences',
  tags: ['people'],
  summary: 'All references for this person, grouped by source with landing page links',
  description: 'Returns the sources that back claims about this person, grouped by source registry. Each source has a landing_page URL (homepage or section), and a list of specific articles. Used for the References section on the person detail page.',
  request: {
    params: z.object({
      slug: z.string().min(1).max(255),
    }),
    query: z.object({
      group_by: z.enum(['source', 'tier', 'year']).optional().default('source'),
    }),
  },
  responses: {
    200: {
      description: 'The references list',
      content: {
        'application/json': {
          schema: z.object({
            person_id: z.string(),
            slug: z.string(),
            canonical_name: z.string(),
            total_sources: z.number().int(),
            total_articles: z.number().int(),
            by_source: z.array(z.object({
              source_id: z.string(),
              source_name: z.string(),
              landing_page: z.string(),
              tier: z.enum(['A', 'B', 'C', 'D', 'E']),
              article_count: z.number().int(),
              articles: z.array(z.object({
                id: z.string(),
                url: z.string(),
                locator: z.string().nullable(),
                claims: z.array(z.string()),
                published_at: z.string().nullable(),
                fetched_at: z.number().nullable(),
                support_type: z.string().nullable(),
              })),
            })),
          }),
        },
      },
    },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

export const referencesRouter = new OpenAPIHono<AppEnv>();

referencesRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const { slug } = c.req.valid('param');

  // Get the person header
  const person = await c.env.DB
    .prepare(`SELECT e.id, e.slug, e.canonical_name FROM entity e WHERE e.slug = ? AND e.type = 'person'`)
    .bind(slug)
    .first<{ id: string; slug: string; canonical_name: string }>();
  if (!person) {
    return c.json(
      { error: { code: 'PERSON_NOT_FOUND', message: `No published person matched: ${slug}`, requestId, details: [] } },
      404
    ) as any;
  }

  // Get all sources for this person, joined from:
  // - claim (subject_entity_id = person_id)
  // - claim_source
  // - source_record
  // - source_registry
  // - career_event (uses ce.source_id + ce.source_url directly)
  const claimSources = await c.env.DB
    .prepare(`
      SELECT
        c.predicate AS claim_text,
        cs.id AS claim_source_id,
        cs.support_type,
        sr.id AS source_record_id,
        sr.external_url AS article_url,
        sr.fetched_at,
        src.id AS source_id,
        src.source_name,
        src.base_url AS landing_page,
        src.source_quality_tier AS tier
      FROM claim c
      JOIN claim_source cs ON cs.claim_id = c.id
      JOIN source_record sr ON sr.id = cs.source_record_id
      JOIN source_registry src ON src.id = sr.source_id
      WHERE c.subject_entity_id = ?
      ORDER BY src.source_quality_tier ASC, src.source_name ASC
    `)
    .bind(person.id)
    .all<{
      claim_text: string;
      claim_source_id: string;
      support_type: string;
      source_record_id: string;
      article_url: string | null;
      fetched_at: number | null;
      source_id: string;
      source_name: string;
      landing_page: string;
      tier: string;
    }>();

  // Also get events with sources
  const eventSources = await c.env.DB
    .prepare(`
      SELECT
        ce.id AS event_id, ce.event_type, ce.start_date, ce.description AS claim_text, ce.source_locator,
        ce.source_id, ce.source_url AS article_url, ce.source_locator AS locator,
        src.source_name, src.base_url AS landing_page, src.source_quality_tier AS tier
      FROM career_event ce
      LEFT JOIN source_registry src ON src.id = ce.source_id
      WHERE ce.person_id = ? AND ce.source_id IS NOT NULL
      ORDER BY ce.start_date ASC
    `)
    .bind(person.id)
    .all<{
      event_id: string;
      event_type: string;
      start_date: string | null;
      claim_text: string | null;
      source_id: string;
      source_locator: string | null;
      article_url: string | null;
      locator: string | null;
      source_name: string | null;
      landing_page: string | null;
      tier: string | null;
    }>();

  // Group by source
  const bySource = new Map<string, {
    source_id: string;
    source_name: string;
    landing_page: string;
    tier: 'A' | 'B' | 'C' | 'D' | 'E';
    articles: Array<{
      id: string;
      url: string;
      locator: string | null;
      claims: string[];
      published_at: string | null;
      fetched_at: number | null;
      support_type: string | null;
    }>;
  }>();

  // Add claim sources
  for (const r of claimSources.results ?? []) {
    const key = r.source_id;
    if (!bySource.has(key)) {
      bySource.set(key, {
        source_id: r.source_id,
        source_name: r.source_name,
        landing_page: r.landing_page,
        tier: r.tier as 'A' | 'B' | 'C' | 'D' | 'E',
        articles: [],
      });
    }
    const src = bySource.get(key)!;
    // Dedupe articles by URL
    if (!src.articles.some((a) => a.url === (r.article_url ?? r.landing_page))) {
      src.articles.push({
        id: r.claim_source_id,
        url: r.article_url ?? r.landing_page,
        locator: null,
        claims: [r.claim_text],
        published_at: null,
        fetched_at: r.fetched_at,
        support_type: r.support_type,
      });
    } else {
      // Append claim to existing article
      const existing = src.articles.find((a) => a.url === (r.article_url ?? r.landing_page))!;
      if (!existing.claims.includes(r.claim_text)) existing.claims.push(r.claim_text);
    }
  }

  // Add event sources
  for (const e of eventSources.results ?? []) {
    if (!e.source_id || !e.source_name || !e.landing_page || !e.tier) continue;
    const key = e.source_id;
    if (!bySource.has(key)) {
      bySource.set(key, {
        source_id: e.source_id,
        source_name: e.source_name,
        landing_page: e.landing_page,
        tier: e.tier as 'A' | 'B' | 'C' | 'D' | 'E',
        articles: [],
      });
    }
    const src = bySource.get(key)!;
    if (!src.articles.some((a) => a.url === (e.article_url ?? e.landing_page))) {
      src.articles.push({
        id: e.event_id,
        url: e.article_url ?? e.landing_page,
        locator: e.locator,
        claims: [e.claim_text ?? `${e.event_type} event`],
        published_at: e.start_date,
        fetched_at: null,
        support_type: 'supports',
      });
    } else {
      const existing = src.articles.find((a) => a.url === (e.article_url ?? e.landing_page))!;
      if (e.claim_text && !existing.claims.includes(e.claim_text)) existing.claims.push(e.claim_text);
    }
  }

  const bySourceArr = Array.from(bySource.values()).map((s) => ({
    ...s,
    article_count: s.articles.length,
  }));

  // Sort by tier (A first), then by article count desc
  bySourceArr.sort((a, b) => {
    if (a.tier !== b.tier) return a.tier.localeCompare(b.tier);
    return b.article_count - a.article_count;
  });

  const totalArticles = bySourceArr.reduce((sum, s) => sum + s.article_count, 0);

  return c.json({
    person_id: person.id,
    slug: person.slug,
    canonical_name: person.canonical_name,
    total_sources: bySourceArr.length,
    total_articles: totalArticles,
    by_source: bySourceArr,
  }) as any;
});
