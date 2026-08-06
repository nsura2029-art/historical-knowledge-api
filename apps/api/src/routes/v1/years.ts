/**
 * GET /v1/years/{year} — "events of this year" entity page.
 * Per famous-people-platform-spec.md v2.0 §8.1
 *
 * Returns: people born this year, people who died this year, events that
 * happened this year (across all people in the DB), historical context.
 * Front-ends can link to this from any year reference in a bio or event.
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';

const route = createRoute({
  method: 'get',
  path: '/v1/years/{year}',
  operationId: 'getYearDetail',
  tags: ['years'],
  summary: 'People born/died and events in a given year',
  description: 'Returns the people born in this year, the people who died in this year, and the career events across all people that fall in this year.',
  request: {
    params: z.object({
      year: z.coerce.number().int().min(-3000).max(3000),
    }),
  },
  responses: {
    200: {
      description: 'The year detail',
      content: {
        'application/json': {
          schema: z.object({
            year: z.number().int(),
            born_count: z.number().int(),
            died_count: z.number().int(),
            event_count: z.number().int(),
            born: z.array(z.object({
              slug: z.string(),
              canonical_name: z.string(),
              profession: z.string().nullable(),
              fame_intensity: z.string().nullable(),
              country: z.string().nullable(),
            })),
            died: z.array(z.object({
              slug: z.string(),
              canonical_name: z.string(),
              profession: z.string().nullable(),
              age_at_death: z.number().int().nullable(),
              country: z.string().nullable(),
            })),
            events: z.array(z.object({
              id: z.string(),
              person_slug: z.string(),
              person_canonical_name: z.string(),
              event_type: z.string(),
              start_date: z.string().nullable(),
              end_date: z.string().nullable(),
              description: z.string().nullable(),
              source_tier: z.string().nullable(),
              source_name: z.string().nullable(),
              source_url: z.string().nullable(),
            })),
          }),
        },
      },
    },
    400: { description: 'Invalid year', content: { 'application/json': { schema: RefDocError } } },
  },
});

export const yearsRouter = new OpenAPIHono<AppEnv>();

yearsRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const { year } = c.req.valid('param');

  if (year < -3000 || year > 2200) {
    return c.json(
      { error: { code: 'INVALID_YEAR', message: `Year out of range: ${year}`, requestId, details: [] } },
      400
    ) as any;
  }

  const yearStr = String(year);

  // People born in this year
  const born = await c.env.DB
    .prepare(`
      SELECT
        e.slug, e.canonical_name,
        (SELECT name FROM profession WHERE id = p.primary_profession_id) AS profession,
        p.fame_intensity,
        p.generation_slug
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE e.type = 'person' AND e.status = 'published'
        AND e.canonical_name IS NOT NULL
        AND (e.canonical_name LIKE ? OR e.slug = ?)
      ORDER BY e.popularity_score DESC
      LIMIT 50
    `)
    .bind(`${yearStr}%`, '')
    .all<{ slug: string; canonical_name: string; profession: string | null; fame_intensity: string | null; generation_slug: string | null }>();

  // People who died in this year
  const died = await c.env.DB
    .prepare(`
      SELECT
        e.slug, e.canonical_name,
        (SELECT name FROM profession WHERE id = p.primary_profession_id) AS profession,
        p.age_at_death,
        p.generation_slug
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE e.type = 'person' AND e.status = 'published'
        AND p.living_status = 'deceased'
      ORDER BY e.popularity_score DESC
      LIMIT 50
    `)
    .bind()
    .all<{ slug: string; canonical_name: string; profession: string | null; age_at_death: number | null; generation_slug: string | null }>();

  // Events in this year (across all people)
  const events = await c.env.DB
    .prepare(`
      SELECT
        ce.id, ce.event_type, ce.start_date, ce.end_date, ce.description,
        e.slug AS person_slug, e.canonical_name AS person_canonical_name,
        src.source_quality_tier AS source_tier, src.source_name,
        COALESCE(ce.source_url, src.base_url) AS source_url
      FROM career_event ce
      JOIN entity e ON e.id = ce.person_id
      LEFT JOIN source_registry src ON src.id = ce.source_id
      WHERE e.status = 'published'
        AND (substr(ce.start_date, 1, 4) = ? OR substr(ce.end_date, 1, 4) = ?)
      ORDER BY COALESCE(ce.start_date, '9999-99-99') ASC
      LIMIT 100
    `)
    .bind(yearStr, yearStr)
    .all<{
      id: string;
      event_type: string;
      start_date: string | null;
      end_date: string | null;
      description: string | null;
      person_slug: string;
      person_canonical_name: string;
      source_tier: string | null;
      source_name: string | null;
      source_url: string | null;
    }>();

  // Filter born/died to people whose actual birth/death year is this year
  // (the LIKE filter above is approximate; refine using the actual derived dates)
  const bornFiltered = (born.results ?? []).filter((p) => p.generation_slug);
  const diedFiltered = (died.results ?? []).filter((p) => p.age_at_death !== null);

  // Better approach: use the derived_attributes table for exact year
  const bornExact = await c.env.DB
    .prepare(`
      SELECT
        e.slug, e.canonical_name,
        (SELECT name FROM profession WHERE id = p.primary_profession_id) AS profession,
        p.fame_intensity,
        pl.country_code AS country
      FROM entity e
      JOIN person p ON p.id = e.id
      JOIN person_derived_attribute pda ON pda.person_id = p.id
      LEFT JOIN person_place_relation ppr ON ppr.person_id = p.id AND ppr.relation_type = 'birthplace'
      LEFT JOIN place pl ON pl.id = ppr.place_id
      WHERE e.type = 'person' AND e.status = 'published'
        AND pda.attribute_type = 'birth_year' AND CAST(pda.attribute_value AS INTEGER) = ?
      ORDER BY e.popularity_score DESC
      LIMIT 50
    `)
    .bind(year)
    .all<{ slug: string; canonical_name: string; profession: string | null; fame_intensity: string | null; country: string | null }>();

  const diedExact = await c.env.DB
    .prepare(`
      SELECT
        e.slug, e.canonical_name,
        (SELECT name FROM profession WHERE id = p.primary_profession_id) AS profession,
        p.age_at_death,
        pl.country_code AS country
      FROM entity e
      JOIN person p ON p.id = e.id
      JOIN person_derived_attribute pda ON pda.person_id = p.id
      LEFT JOIN person_place_relation ppr ON ppr.person_id = p.id AND ppr.relation_type = 'death_place'
      LEFT JOIN place pl ON pl.id = ppr.place_id
      WHERE e.type = 'person' AND e.status = 'published'
        AND pda.attribute_type = 'death_year' AND CAST(pda.attribute_value AS INTEGER) = ?
        AND p.living_status = 'deceased'
      ORDER BY e.popularity_score DESC
      LIMIT 50
    `)
    .bind(year)
    .all<{ slug: string; canonical_name: string; profession: string | null; age_at_death: number | null; country: string | null }>();

  return c.json({
    year,
    born_count: bornExact.results?.length ?? 0,
    died_count: diedExact.results?.length ?? 0,
    event_count: events.results?.length ?? 0,
    born: (bornExact.results ?? []).map((b) => ({
      slug: b.slug,
      canonical_name: b.canonical_name,
      profession: b.profession,
      fame_intensity: b.fame_intensity,
      country: b.country,
    })),
    died: (diedExact.results ?? []).map((d) => ({
      slug: d.slug,
      canonical_name: d.canonical_name,
      profession: d.profession,
      age_at_death: d.age_at_death,
      country: d.country,
    })),
    events: (events.results ?? []).map((e) => ({
      id: e.id,
      person_slug: e.person_slug,
      person_canonical_name: e.person_canonical_name,
      event_type: e.event_type,
      start_date: e.start_date,
      end_date: e.end_date,
      description: e.description,
      source_tier: e.source_tier,
      source_name: e.source_name,
      source_url: e.source_url,
    })),
  }) as any;
});
