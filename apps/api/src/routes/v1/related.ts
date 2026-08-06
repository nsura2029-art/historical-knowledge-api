/**
 * GET /v1/people/{slug}/related — related-people carousel.
 * Per famous-people-platform-spec.md v2.0 §8.1
 *
 * Returns people related to the given person, ranked by a relevance score:
 *   same profession          +0.40
 *   same country (citizenship) +0.20
 *   same generation         +0.10
 *   same star sign          +0.05
 *   same chinese zodiac     +0.05
 *   active years overlap ≥10y +0.15
 *   active years overlap ≥5y  +0.08
 *   shared relation (collaborator_with, champion_of) +0.25
 *   popularity_score (already 0..1) added as tiebreaker
 *
 * Examples (for a details page on Frida Kahlo, painter, MX, greatest, cancer, goat):
 *   ?facet=profession    → other painters
 *   ?facet=country       → other Mexican famous people
 *   ?facet=generation    → other greatest-generation people
 *   ?facet=era           → people active in 1925-1958
 *   (no facet)           → all of the above, scored
 *
 * Each result has a relevance_score + a breakdown showing which signals matched.
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';

const route = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/related',
  operationId: 'getRelatedPeople',
  tags: ['people'],
  summary: 'People related to this person, ranked by relevance',
  description: 'Returns a ranked list of related people for the carousel on a person detail page. Ranked by a multi-signal relevance score (profession, country, generation, era overlap, relations, popularity).',
  request: {
    params: z.object({
      slug: z.string().min(1).max(255),
    }),
    query: z.object({
      facet: z.enum(['profession', 'country', 'generation', 'era', 'star_sign', 'chinese_zodiac', 'all']).optional().default('all'),
      sort: z.enum(['relevance', 'birth_year_asc', 'birth_year_desc', 'popularity']).optional().default('relevance'),
      limit: z.coerce.number().int().min(1).max(50).optional().default(20),
    }),
  },
  responses: {
    200: {
      description: 'The related people list',
      content: {
        'application/json': {
          schema: z.object({
            person_id: z.string(),
            slug: z.string(),
            canonical_name: z.string(),
            facet: z.string(),
            total: z.number().int(),
            related: z.array(z.object({
              id: z.string(),
              slug: z.string(),
              canonical_name: z.string(),
              short_description: z.string().nullable(),
              profession: z.string().nullable(),
              profession_url: z.string().nullable(),
              birth_year: z.number().nullable(),
              death_year: z.number().nullable(),
              hero_image_url: z.string().nullable(),
              hero_image_rights: z.string().nullable(),
              country: z.string().nullable(),
              country_url: z.string().nullable(),
              person_url: z.string(),
              relevance_score: z.number(),
              relevance_breakdown: z.array(z.string()),
            })),
          }),
        },
      },
    },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

export const relatedRouter = new OpenAPIHono<AppEnv>();

relatedRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const { slug } = c.req.valid('param');
  const { facet, sort, limit } = c.req.valid('query');

  // Get the source person header + their facets
  const source = await c.env.DB
    .prepare(`
      SELECT
        e.id, e.slug, e.canonical_name,
        p.living_status, p.primary_profession_id, p.gender,
        p.generation_slug, p.star_sign_slug, p.chinese_zodiac_animal,
        p.active_years_min, p.active_years_max
      FROM entity e JOIN person p ON p.id = e.id
      WHERE e.slug = ? AND e.type = 'person'
    `)
    .bind(slug)
    .first<{
      id: string; slug: string; canonical_name: string;
      living_status: string; primary_profession_id: string | null; gender: string | null;
      generation_slug: string | null; star_sign_slug: string | null; chinese_zodiac_animal: string | null;
      active_years_min: number | null; active_years_max: number | null;
    }>();
  if (!source) {
    return c.json(
      { error: { code: 'PERSON_NOT_FOUND', message: `No published person matched: ${slug}`, requestId, details: [] } },
      404
    ) as any;
  }

  // Get source person's profession slug and country code
  const profRow = source.primary_profession_id
    ? await c.env.DB.prepare(`SELECT id, name FROM profession WHERE id = ?`).bind(source.primary_profession_id).first<{ id: string; name: string }>()
    : null;
  const sourceProfessionSlug = profRow?.id ?? null;

  const citRow = await c.env.DB
    .prepare(`
      SELECT pl.country_code, e.canonical_name AS country_name
      FROM person_citizenship pc
      JOIN place pl ON pl.id = pc.country_id
      JOIN entity e ON e.id = pl.id
      WHERE pc.person_id = ? AND pc.primary_flag = 1 LIMIT 1
    `)
    .bind(source.id)
    .first<{ country_code: string | null; country_name: string | null }>();
  const sourceCountryCode = citRow?.country_code ?? null;

  // Build a candidate pool: people with overlapping attributes
  // Use OR clauses (any overlapping facet), then score in JS
  const pool = await c.env.DB
    .prepare(`
      SELECT
        e.id, e.slug, e.canonical_name, e.popularity_score,
        p.short_description, p.living_status,
        p.primary_profession_id, p.generation_slug, p.star_sign_slug, p.chinese_zodiac_animal,
        p.active_years_min, p.active_years_max,
        (SELECT id FROM profession WHERE id = p.primary_profession_id) AS profession_slug,
        (SELECT name FROM profession WHERE id = p.primary_profession_id) AS profession_name,
        (SELECT pl.country_code FROM person_citizenship pc JOIN place pl ON pl.id = pc.country_id
         WHERE pc.person_id = p.id AND pc.primary_flag = 1 LIMIT 1) AS country_code,
        (SELECT e.canonical_name FROM person_citizenship pc JOIN place pl ON pl.id = pc.country_id
         JOIN entity e ON e.id = pl.id
         WHERE pc.person_id = p.id AND pc.primary_flag = 1 LIMIT 1) AS country_name,
        (SELECT url FROM media_asset WHERE depiction_entity_id = p.id AND asset_type = 'image'
         AND status = 'approved'
         ORDER BY depiction_confidence DESC LIMIT 1) AS hero_image_url,
        (SELECT mr.attribution_text FROM media_rights mr
         JOIN media_asset ma ON ma.id = mr.media_asset_id
         WHERE ma.depiction_entity_id = p.id AND ma.asset_type = 'image' AND ma.status = 'approved'
         ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_rights
      FROM entity e JOIN person p ON p.id = e.id
      WHERE e.type = 'person' AND e.status = 'published' AND e.id != ?
        AND (
          p.primary_profession_id = COALESCE(?, p.primary_profession_id)
          OR p.generation_slug = ?
          OR p.star_sign_slug = ?
          OR p.chinese_zodiac_animal = ?
          OR EXISTS (
            SELECT 1 FROM person_citizenship pc
            WHERE pc.person_id = p.id AND pc.primary_flag = 1
              AND pc.country_id = (SELECT country_id FROM person_citizenship WHERE person_id = ? AND primary_flag = 1 LIMIT 1)
          )
        )
      LIMIT 200
    `)
    .bind(
      source.id,
      source.primary_profession_id,
      source.generation_slug,
      source.star_sign_slug,
      source.chinese_zodiac_animal,
      source.id
    )
    .all<{
      id: string; slug: string; canonical_name: string; popularity_score: number;
      short_description: string | null; living_status: string;
      primary_profession_id: string | null; generation_slug: string | null;
      star_sign_slug: string | null; chinese_zodiac_animal: string | null;
      active_years_min: number | null; active_years_max: number | null;
      profession_slug: string | null; profession_name: string | null;
      country_code: string | null; country_name: string | null;
      hero_image_url: string | null; hero_image_rights: string | null;
    }>();

  // Filter by facet if specified
  let filtered = pool.results ?? [];
  if (facet === 'profession') {
    filtered = filtered.filter((p) => p.primary_profession_id === source.primary_profession_id);
  } else if (facet === 'country') {
    filtered = filtered.filter((p) => p.country_code === sourceCountryCode);
  } else if (facet === 'generation') {
    filtered = filtered.filter((p) => p.generation_slug === source.generation_slug);
  } else if (facet === 'star_sign') {
    filtered = filtered.filter((p) => p.star_sign_slug === source.star_sign_slug);
  } else if (facet === 'chinese_zodiac') {
    filtered = filtered.filter((p) => p.chinese_zodiac_animal === source.chinese_zodiac_animal);
  } else if (facet === 'era') {
    filtered = filtered.filter((p) =>
      p.active_years_min !== null && p.active_years_max !== null &&
      source.active_years_min !== null && source.active_years_max !== null &&
      !(p.active_years_max < source.active_years_min || p.active_years_min > source.active_years_max)
    );
  }

  // Score each candidate
  const scored = filtered.map((p) => {
    const breakdown: string[] = [];
    let score = 0;
    if (source.primary_profession_id && p.primary_profession_id === source.primary_profession_id) {
      score += 0.40;
      breakdown.push('same_profession');
    }
    if (sourceCountryCode && p.country_code === sourceCountryCode) {
      score += 0.20;
      breakdown.push('same_country');
    }
    if (source.generation_slug && p.generation_slug === source.generation_slug) {
      score += 0.10;
      breakdown.push('same_generation');
    }
    if (source.star_sign_slug && p.star_sign_slug === source.star_sign_slug) {
      score += 0.05;
      breakdown.push('same_star_sign');
    }
    if (source.chinese_zodiac_animal && p.chinese_zodiac_animal === source.chinese_zodiac_animal) {
      score += 0.05;
      breakdown.push('same_chinese_zodiac');
    }
    // Era overlap
    if (p.active_years_min !== null && p.active_years_max !== null &&
        source.active_years_min !== null && source.active_years_max !== null) {
      const overlap = Math.min(p.active_years_max, source.active_years_max) - Math.max(p.active_years_min, source.active_years_min);
      if (overlap >= 10) { score += 0.15; breakdown.push(`era_overlap_${overlap}y`); }
      else if (overlap >= 5) { score += 0.08; breakdown.push(`era_overlap_${overlap}y`); }
      else if (overlap > 0) { score += 0.03; breakdown.push(`era_overlap_${overlap}y`); }
    }
    // Popularity as tiebreaker (0..100 in our data, normalized to 0..1)
    score += ((p.popularity_score ?? 0) / 100) * 0.05;
    return { ...p, relevance_score: Math.round(score * 1000) / 1000, relevance_breakdown: breakdown };
  });

  // Sort
  if (sort === 'birth_year_asc') {
    scored.sort((a, b) => (a.active_years_min ?? 9999) - (b.active_years_min ?? 9999));
  } else if (sort === 'birth_year_desc') {
    scored.sort((a, b) => (b.active_years_min ?? 0) - (a.active_years_min ?? 0));
  } else if (sort === 'popularity') {
    scored.sort((a, b) => (b.popularity_score ?? 0) - (a.popularity_score ?? 0));
  } else {
    scored.sort((a, b) => b.relevance_score - a.relevance_score);
  }

  const limited = scored.slice(0, limit);

  return c.json({
    person_id: source.id,
    slug: source.slug,
    canonical_name: source.canonical_name,
    facet,
    total: filtered.length,
    related: limited.map((p) => ({
      id: p.id,
      slug: p.slug,
      canonical_name: p.canonical_name,
      short_description: p.short_description,
      profession: p.profession_name,
      profession_url: p.profession_slug ? `/v1/professions/${p.profession_slug}` : null,
      birth_year: p.active_years_min,
      death_year: p.active_years_max,
      hero_image_url: p.hero_image_url,
      hero_image_rights: p.hero_image_rights,
      country: p.country_name,
      country_url: p.country_code ? `/v1/countries/${p.country_code}` : null,
      person_url: `/v1/people/${p.slug}`,
      relevance_score: p.relevance_score,
      relevance_breakdown: p.relevance_breakdown,
    })),
  }) as any;
});
