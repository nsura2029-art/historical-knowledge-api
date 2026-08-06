/**
 * KP-010: Biographies vertical — aggregated person page.
 *
 * Endpoints:
 *   GET /v1/people/{slug}/biography  — single aggregated page (header, hero, quick_facts, narrative, timeline, related, sources, citations, revisions, on_this_page)
 *   GET /v1/people/{slug}/sections   — just the narrative sections list
 *   GET /v1/sections/{id}            — single section with body_markdown
 *   GET /v1/people/{slug}/quick-facts — just the quick facts (for sidebars)
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';

// ============================================================
// Schemas
// ============================================================

const Header = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  short_description: z.string().nullable(),
  popularity_score: z.number().nullable(),
  popularity_rank: z.number().int().nullable(),
  type: z.string(),
}).openapi('BiographyHeader');

const HeroImage = z.object({
  url: z.string(),
  thumbnail_url: z.string().nullable(),
  alt_text: z.string().nullable(),
  attribution: z.string(),
  license_code: z.string(),
  width: z.number().int().nullable(),
  height: z.number().int().nullable(),
}).openapi('HeroImage');

const QuickFact = z.object({
  label: z.string(),
  value: z.string().nullable(),
  claim_id: z.string().nullable(),
  confidence: z.number().nullable(),
}).openapi('QuickFact');

const NarrativeSection = z.object({
  id: z.string(),
  heading: z.string().nullable(),
  section_type: z.string(),
  body_markdown: z.string(),
  reading_level: z.string(),
  author_type: z.string(),
  editorial_status: z.string(),
  version: z.number().int(),
}).openapi('NarrativeSection');

const TimelineEvent = z.object({
  id: z.string(),
  year: z.number().int().nullable(),
  start_date: z.string().nullable(),
  end_date: z.string().nullable(),
  event_type: z.string(),
  title: z.string().nullable(),
  description: z.string().nullable(),
  source_id: z.string().nullable(),
}).openapi('TimelineEvent');

const RelatedPerson = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  relationship: z.string().nullable(),
  score: z.number(),
}).openapi('RelatedPerson');

const SourceSummary = z.object({
  source_id: z.string(),
  source_name: z.string(),
  base_url: z.string().nullable(),
  license_name: z.string().nullable(),
  attribution_required: z.number().int(),
  quality_tier: z.string(),
  claim_count: z.number().int(),
}).openapi('SourceSummary');

const Citations = z.object({
  bibtex_url: z.string(),
  ris_url: z.string(),
  csljson_url: z.string(),
}).openapi('Citations');

const RevisionSummary = z.object({
  pending: z.number().int(),
  approved: z.number().int(),
  rejected: z.number().int(),
  auto_approved: z.number().int(),
}).openapi('RevisionSummary');

const OnThisPageItem = z.object({
  id: z.string(),
  heading: z.string(),
}).openapi('OnThisPageItem');

const BiographyResponse = z.object({
  header: Header,
  hero_image: HeroImage.nullable(),
  quick_facts: z.array(QuickFact),
  narrative: z.array(NarrativeSection),
  timeline: z.array(TimelineEvent),
  related: z.array(RelatedPerson),
  sources: z.object({
    count: z.number().int(),
    list: z.array(SourceSummary),
  }),
  citations: Citations,
  revisions: RevisionSummary,
  on_this_page: z.array(OnThisPageItem),
}).openapi('BiographyResponse');

const SectionsListResponse = z.object({
  entity_id: z.string(),
  sections: z.array(z.object({
    id: z.string(),
    heading: z.string().nullable(),
    section_type: z.string(),
    reading_level: z.string(),
    editorial_status: z.string(),
  })),
  on_this_page: z.array(OnThisPageItem),
}).openapi('SectionsListResponse');

const QuickFactsResponse = z.object({
  entity_id: z.string(),
  facts: z.array(QuickFact),
}).openapi('QuickFactsResponse');

const RefDocError = z.object({
  error: z.object({
    code: z.string(),
    message: z.string(),
  }),
}).openapi('RefDocError');

// ============================================================
// Quick facts predicate whitelist
// ============================================================

const QUICK_FACT_PREDICATES: Array<{ predicate: string; label: string; format: 'date' | 'string' }> = [
  { predicate: 'born_on',         label: 'Born',          format: 'date' },
  { predicate: 'died_on',         label: 'Died',          format: 'date' },
  { predicate: 'nationality',     label: 'Nationality',   format: 'string' },
  { predicate: 'spouse',          label: 'Spouse',        format: 'string' },
  { predicate: 'known_for',       label: 'Known for',     format: 'string' },
  { predicate: 'occupation',      label: 'Occupation',    format: 'string' },
  { predicate: 'educated_at',     label: 'Education',     format: 'string' },
  { predicate: 'cause_of_death',  label: 'Cause of death', format: 'string' },
];

// ============================================================
// Routes
// ============================================================

const getBiographyRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/biography',
  operationId: 'getBiography',
  tags: ['biography'],
  summary: 'Get aggregated biography data (one call, Britannica-style)',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Aggregated biography', content: { 'application/json': { schema: BiographyResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getSectionsRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/sections',
  operationId: 'getSections',
  tags: ['biography', 'sections'],
  summary: 'List narrative sections for a person (lightweight, for nav)',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Sections list', content: { 'application/json': { schema: SectionsListResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getSectionRoute = createRoute({
  method: 'get',
  path: '/v1/sections/{id}',
  operationId: 'getSection',
  tags: ['biography', 'sections'],
  summary: 'Get a single narrative section with body_markdown',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Section detail', content: { 'application/json': { schema: NarrativeSection } } },
    404: { description: 'Section not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getQuickFactsRoute = createRoute({
  method: 'get',
  path: '/v1/people/{slug}/quick-facts',
  operationId: 'getQuickFacts',
  tags: ['biography'],
  summary: 'Get quick facts (whitelisted predicates)',
  request: { params: z.object({ slug: z.string() }) },
  responses: {
    200: { description: 'Quick facts', content: { 'application/json': { schema: QuickFactsResponse } } },
    404: { description: 'Person not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Helpers
// ============================================================

function formatDate(unixSeconds: number | null): string | null {
  if (!unixSeconds) return null;
  return new Date(unixSeconds * 1000).toISOString().slice(0, 10);
}

async function getHeroImage(db: D1Database, entityId: string): Promise<any> {
  const row = await db.prepare(`
    SELECT ma.url, ma.thumbnail_url, ma.width, ma.height,
           mr.attribution_text, mr.license_code
    FROM media_asset ma
    JOIN media_rights mr ON mr.media_asset_id = ma.id
    LEFT JOIN media_expiry me ON me.media_asset_id = ma.id
    WHERE ma.depiction_entity_id = ?
      AND ma.status = 'approved'
      AND (me.status IS NULL OR me.status IN ('active', 'renewed'))
    ORDER BY ma.depiction_confidence DESC, ma.created_at ASC
    LIMIT 1
  `).bind(entityId).first();
  if (!row) return null;
  return {
    url: (row as any).url,
    thumbnail_url: (row as any).thumbnail_url,
    alt_text: null,
    attribution: (row as any).attribution_text,
    license_code: (row as any).license_code,
    width: (row as any).width,
    height: (row as any).height,
  };
}

async function getQuickFacts(db: D1Database, entityId: string): Promise<any[]> {
  const predicates = QUICK_FACT_PREDICATES.map(q => q.predicate);
  const placeholders = predicates.map(() => '?').join(',');
  const { results } = await db.prepare(`
    SELECT id, predicate, literal_value, valid_from, confidence
    FROM claim
    WHERE subject_entity_id = ? AND predicate IN (${placeholders})
      AND status IN ('approved', 'published')
    ORDER BY confidence DESC, created_at ASC
  `).bind(entityId, ...predicates).all();
  const facts: any[] = [];
  for (const c of results as any[]) {
    const config = QUICK_FACT_PREDICATES.find(q => q.predicate === c.predicate);
    if (!config) continue;
    let value: string | null = null;
    if (config.format === 'date') {
      value = formatDate(c.valid_from);
    } else {
      value = c.literal_value;
    }
    facts.push({
      label: config.label,
      value,
      claim_id: c.id,
      confidence: c.confidence,
    });
  }
  return facts;
}

async function getNarrativeSections(db: D1Database, entityId: string): Promise<any[]> {
  const { results } = await db.prepare(`
    SELECT id, section_type, heading, body_markdown, reading_level,
           author_type, editorial_status, version
    FROM content_section
    WHERE entity_id = ? AND editorial_status != 'rejected'
    ORDER BY
      CASE section_type
        WHEN 'biography_intro' THEN 1
        WHEN 'early_life' THEN 2
        WHEN 'career' THEN 3
        WHEN 'narrative' THEN 4
        WHEN 'legacy' THEN 5
        WHEN 'overview' THEN 6
        WHEN 'timeline' THEN 7
        WHEN 'quick_facts' THEN 8
        WHEN 'quiz_hook' THEN 9
        ELSE 10
      END ASC,
      version DESC
  `).bind(entityId).all();
  return results as any[];
}

async function getTimeline(db: D1Database, entityId: string, limit = 20): Promise<any[]> {
  const { results } = await db.prepare(`
    SELECT id, event_type, description, start_date, end_date, source_id, source_locator
    FROM career_event
    WHERE person_id = ?
    ORDER BY
      CASE WHEN start_date IS NULL THEN 1 ELSE 0 END ASC,
      start_date ASC
    LIMIT ?
  `).bind(entityId, limit).all();
  return (results as any[]).map(r => {
    const year = r.start_date ? parseInt(r.start_date.slice(0, 4), 10) : null;
    return {
      id: r.id,
      year: isNaN(year as number) ? null : year,
      start_date: r.start_date,
      end_date: r.end_date,
      event_type: r.event_type,
      title: r.description?.slice(0, 100) || r.event_type,
      description: r.description,
      source_id: r.source_id,
    };
  });
}

async function getRelatedPeople(db: D1Database, entityId: string, limit = 6): Promise<any[]> {
  // Find related people via entity_relation or shared profession
  const { results } = await db.prepare(`
    SELECT DISTINCT e.id, e.slug, e.canonical_name,
           er.relation_type, 0.5 AS score
    FROM entity_relation er
    JOIN entity e ON e.id = er.object_entity_id
    WHERE er.subject_entity_id = ? AND e.type = 'person'
    LIMIT ?
  `).bind(entityId, limit).all();
  return (results as any[]).map(r => ({
    id: r.id,
    slug: r.slug,
    canonical_name: r.canonical_name,
    relationship: r.relation_type,
    score: r.score,
  }));
}

async function getSourceSummary(db: D1Database, entityId: string): Promise<{ count: number; list: any[] }> {
  const { results } = await db.prepare(`
    SELECT DISTINCT sr.source_id,
           reg.id, reg.source_name, reg.base_url, reg.license_name,
           reg.attribution_required, reg.source_quality_tier,
           COUNT(DISTINCT cs.claim_id) AS claim_count
    FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    JOIN claim c ON c.id = cs.claim_id
    JOIN source_registry reg ON reg.id = sr.source_id
    WHERE c.subject_entity_id = ?
    GROUP BY sr.source_id
    ORDER BY claim_count DESC
    LIMIT 20
  `).bind(entityId).all();
  return {
    count: (results as any[]).length,
    list: (results as any[]).map(r => ({
      source_id: r.id,
      source_name: r.source_name,
      base_url: r.base_url,
      license_name: r.license_name,
      attribution_required: r.attribution_required,
      quality_tier: r.source_quality_tier,
      claim_count: r.claim_count,
    })),
  };
}

async function getRevisionSummary(db: D1Database, entityId: string): Promise<any> {
  const { results } = await db.prepare(`
    SELECT review_status, COUNT(*) AS n
    FROM editorial_revision
    WHERE target_entity_id = ?
    GROUP BY review_status
  `).bind(entityId).all();
  const summary = { pending: 0, approved: 0, rejected: 0, auto_approved: 0 };
  for (const r of results as any[]) {
    if (r.review_status in summary) (summary as any)[r.review_status] = r.n;
  }
  return summary;
}

// ============================================================
// Router
// ============================================================

export const biographyRouter = new OpenAPIHono<AppEnv>();

biographyRouter.openapi(getBiographyRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const person = await c.env.DB.prepare(`
    SELECT e.id, e.slug, e.canonical_name, e.type,
           p.short_description, e.popularity_score, e.popularity_rank
    FROM entity e
    LEFT JOIN person p ON p.id = e.id
    WHERE e.slug = ? AND e.type = 'person'
  `).bind(slug).first();
  if (!person) {
    return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;
  }
  const entityId = (person as any).id;

  // Parallel fetch all sub-resources
  const [heroImage, quickFacts, narrative, timeline, related, sources, revisions] = await Promise.all([
    getHeroImage(c.env.DB, entityId),
    getQuickFacts(c.env.DB, entityId),
    getNarrativeSections(c.env.DB, entityId),
    getTimeline(c.env.DB, entityId),
    getRelatedPeople(c.env.DB, entityId),
    getSourceSummary(c.env.DB, entityId),
    getRevisionSummary(c.env.DB, entityId),
  ]);

  const onThisPage = narrative.map((s: any) => ({
    id: s.id,
    heading: s.heading || s.section_type,
  }));

  return c.json({
    header: {
      id: entityId,
      slug: (person as any).slug,
      canonical_name: (person as any).canonical_name,
      short_description: (person as any).short_description,
      popularity_score: (person as any).popularity_score,
      popularity_rank: (person as any).popularity_rank,
      type: (person as any).type,
    },
    hero_image: heroImage,
    quick_facts: quickFacts,
    narrative,
    timeline,
    related,
    sources,
    citations: {
      bibtex_url: `/v1/entities/${entityId}/citations?format=bibtex`,
      ris_url: `/v1/entities/${entityId}/citations?format=ris`,
      csljson_url: `/v1/entities/${entityId}/citations?format=csljson`,
    },
    revisions,
    on_this_page: onThisPage,
  }) as any;
});

biographyRouter.openapi(getSectionsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const person = await c.env.DB.prepare(`SELECT id FROM entity WHERE slug = ? AND type = 'person'`).bind(slug).first();
  if (!person) {
    return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;
  }
  const entityId = (person as any).id;
  const sections = await getNarrativeSections(c.env.DB, entityId);
  const onThisPage = sections.map((s: any) => ({
    id: s.id,
    heading: s.heading || s.section_type,
  }));
  return c.json({
    entity_id: entityId,
    sections: sections.map((s: any) => ({
      id: s.id,
      heading: s.heading,
      section_type: s.section_type,
      reading_level: s.reading_level,
      editorial_status: s.editorial_status,
    })),
    on_this_page: onThisPage,
  }) as any;
});

biographyRouter.openapi(getSectionRoute, async (c) => {
  const { id } = c.req.valid('param');
  const row = await c.env.DB.prepare(`
    SELECT id, section_type, heading, body_markdown, reading_level,
           author_type, editorial_status, version
    FROM content_section
    WHERE id = ?
  `).bind(id).first();
  if (!row) {
    return c.json({ error: { code: 'SECTION_NOT_FOUND', message: `No section with id ${id}` } }, 404) as any;
  }
  return c.json(row) as any;
});

biographyRouter.openapi(getQuickFactsRoute, async (c) => {
  const { slug } = c.req.valid('param');
  const person = await c.env.DB.prepare(`SELECT id FROM entity WHERE slug = ? AND type = 'person'`).bind(slug).first();
  if (!person) {
    return c.json({ error: { code: 'PERSON_NOT_FOUND', message: `No person with slug ${slug}` } }, 404) as any;
  }
  const entityId = (person as any).id;
  const facts = await getQuickFacts(c.env.DB, entityId);
  return c.json({ entity_id: entityId, facts }) as any;
});
