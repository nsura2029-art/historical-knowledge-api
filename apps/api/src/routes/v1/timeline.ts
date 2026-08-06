/**
 * GET /v1/people/{slug}/timeline — chronological life events.
 * Per famous-people-platform-spec.md v2.0 §8.1
 *
 * Returns: birth, death, marriage, education, work_start, work_end,
 *          award_received, role_assumed, custom — sorted by date.
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';

const route = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/timeline',
  operationId: 'getPersonTimeline',
  tags: ['people'],
  summary: 'Chronological timeline of notable events for a person',
  description: 'Returns birth, death, marriage, education, work milestones, award received dates, and other custom events. Each event has a source (where known).',
  request: {
    params: z.object({
      slug: z.string().min(1).max(255),
    }),
  },
  responses: {
    200: {
      description: 'The person timeline',
      content: {
        'application/json': {
          schema: z.object({
            person_id: z.string(),
            slug: z.string(),
            canonical_name: z.string(),
            total_events: z.number().int(),
            events: z.array(z.object({
              id: z.string(),
              event_type: z.enum(['birth', 'death', 'marriage', 'education', 'work_start', 'work_end', 'award_received', 'role_assumed', 'custom']),
              start_date: z.string().nullable(),
              end_date: z.string().nullable(),
              date_precision: z.enum(['day', 'month', 'year', 'decade', 'century', 'approximate', 'before', 'after', 'range', 'unknown']),
              description: z.string().nullable(),
              place_name: z.string().nullable().optional(),
              country_code: z.string().nullable().optional(),
              source: z.object({
                tier: z.enum(['A', 'B', 'C', 'D', 'E']),
                source_name: z.string(),
                source_url: z.string().nullable(),
              }).nullable(),
            })),
          }),
        },
      },
    },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

export const timelineRouter = new OpenAPIHono<AppEnv>();

timelineRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const { slug } = c.req.valid('param');

  // Get the person header
  const person = await c.env.DB
    .prepare(`SELECT e.id, e.slug, e.canonical_name FROM entity e WHERE e.slug = ? AND e.type = 'person'`)
    .bind(slug)
    .first<{ id: string; slug: string; canonical_name: string }>();
  if (!person) {
    return c.json(
      { error: { code: 'PERSON_NOT_FOUND', message: `No published person matched the supplied identifier: ${slug}`, requestId, details: [] } },
      404
    ) as any;
  }

  // Get all career events with their source info
  // We pull from career_event. Each event has source_claim_id which links to claim → claim_source → source_record → source_registry
  const events = await c.env.DB
    .prepare(`
      SELECT
        ce.id, ce.event_type, ce.start_date, ce.end_date, ce.description, ce.organization_id, ce.place_id,
        ce.source_claim_id,
        src.source_name, src.source_quality_tier AS tier, src.base_url AS source_url,
        sr.external_url AS record_url,
        p.canonical_name AS place_name, pl.country_code
      FROM career_event ce
      LEFT JOIN claim c ON c.id = ce.source_claim_id
      LEFT JOIN claim_source cs ON cs.claim_id = c.id
      LEFT JOIN source_record sr ON sr.id = cs.source_record_id
      LEFT JOIN source_registry src ON src.id = sr.source_id
      LEFT JOIN entity p ON p.id = ce.place_id
      LEFT JOIN place pl ON pl.id = ce.place_id
      WHERE ce.person_id = ?
      ORDER BY COALESCE(ce.start_date, '9999-99-99') ASC
    `)
    .bind(person.id)
    .all<{
      id: string;
      event_type: string;
      start_date: string | null;
      end_date: string | null;
      description: string | null;
      organization_id: string | null;
      place_id: string | null;
      source_claim_id: string | null;
      source_name: string | null;
      tier: string | null;
      source_url: string | null;
      record_url: string | null;
      place_name: string | null;
      country_code: string | null;
    }>();

  // Compute date_precision from start_date
  const datePrecision = (d: string | null): 'day' | 'month' | 'year' | 'decade' | 'century' | 'approximate' | 'before' | 'after' | 'range' | 'unknown' => {
    if (!d) return 'unknown';
    if (/^\d{4}-\d{2}-\d{2}/.test(d)) return 'day';
    if (/^\d{4}-\d{2}$/.test(d)) return 'month';
    if (/^\d{4}$/.test(d)) return 'year';
    return 'unknown';
  };

  return c.json({
    person_id: person.id,
    slug: person.slug,
    canonical_name: person.canonical_name,
    total_events: events.results?.length ?? 0,
    events: (events.results ?? []).map((e) => ({
      id: e.id,
      event_type: e.event_type as 'birth' | 'death' | 'marriage' | 'education' | 'work_start' | 'work_end' | 'award_received' | 'role_assumed' | 'custom',
      start_date: e.start_date,
      end_date: e.end_date,
      date_precision: datePrecision(e.start_date),
      description: e.description,
      place_name: e.place_name,
      country_code: e.country_code,
      source: e.source_name ? {
        tier: e.tier as 'A' | 'B' | 'C' | 'D' | 'E',
        source_name: e.source_name,
        source_url: e.record_url ?? e.source_url,
      } : null,
    })),
  }) as any;
});
