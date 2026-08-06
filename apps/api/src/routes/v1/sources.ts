/**
 * KP-004: Sources + citations + editorial revisions.
 *
 * Endpoints:
 *   GET /v1/sources                       — list source_registry entries (with health)
 *   GET /v1/sources/{id}                  — source detail (license, terms, claim counts, health, used_on_pages)
 *   GET /v1/sources/{id}/claims           — claims that cite this source
 *   GET /v1/entities/{id}/sources         — sources for this entity (drilldown)
 *   GET /v1/entities/{id}/revisions       — editorial revisions for this entity
 *   POST /v1/admin/editorial-revisions    — create a new editorial revision (admin)
 *   GET /v1/entities/{id}/citations       — citation export (bibtex|ris|csljson)
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';

// ============================================================
// Schemas
// ============================================================

const Source = z.object({
  id: z.string(),
  source_name: z.string(),
  source_type: z.string(),
  base_url: z.string().nullable(),
  source_quality_tier: z.string(),
  legal_review_status: z.string(),
  status: z.string(),
  license_name: z.string().nullable(),
  license_url: z.string().nullable(),
  terms_url: z.string().nullable(),
  attribution_required: z.number().int(),
  claims_supported_count: z.number().int().optional(),
  claims_contradicted_count: z.number().int().optional(),
  entities_mentioned_count: z.number().int().optional(),
  source_records_count: z.number().int().optional(),
  health: z.object({
    records_total: z.number().int(),
    records_published: z.number().int(),
    last_fetch_at: z.number().int().nullable(),
    last_success_at: z.number().int().nullable(),
    success_rate_30d: z.number().nullable(),
    license_status: z.string(),
    last_license_check_at: z.number().int().nullable(),
  }).optional(),
}).openapi('Source');

const SourceListResponse = z.object({
  data: z.array(Source),
  total_count: z.number().int(),
}).openapi('SourceListResponse');

const SourceDetailResponse = Source.extend({
  used_on_pages: z.array(z.string()).optional(),
}).openapi('SourceDetailResponse');

const Claim = z.object({
  id: z.string(),
  subject_entity_id: z.string(),
  predicate: z.string(),
  literal_value: z.string().nullable(),
  confidence: z.number(),
  status: z.string(),
  certainty: z.string(),
}).openapi('Claim');

const ClaimListResponse = z.object({
  data: z.array(Claim),
  total_count: z.number().int(),
}).openapi('ClaimListResponse');

const SourceClaimListResponse = z.object({
  source_id: z.string(),
  data: z.array(z.object({
    claim: Claim,
    support_type: z.string(),
    claim_source_id: z.string(),
  })),
  total_count: z.number().int(),
}).openapi('SourceClaimListResponse');

const EditorialRevision = z.object({
  id: z.string(),
  target_entity_id: z.string(),
  target_claim_id: z.string().nullable(),
  field_name: z.string(),
  old_value: z.string().nullable(),
  new_value: z.string(),
  revision_type: z.string(),
  contributor_id: z.string().nullable(),
  contributor_role: z.string(),
  review_status: z.string(),
  reviewed_by: z.string().nullable(),
  reviewed_at: z.number().int().nullable(),
  created_at: z.number().int(),
}).openapi('EditorialRevision');

const RevisionListResponse = z.object({
  entity_id: z.string(),
  data: z.array(EditorialRevision),
  total_count: z.number().int(),
}).openapi('RevisionListResponse');

const EntitySourcesResponse = z.object({
  entity_id: z.string(),
  data: z.array(z.object({
    source: Source,
    claim_count: z.number().int(),
  })),
  total_sources: z.number().int(),
}).openapi('EntitySourcesResponse');

const CitationExportResponse = z.object({
  entity_id: z.string(),
  format: z.string(),
  content_type: z.string(),
  citation_count: z.number().int(),
  body: z.string(),
}).openapi('CitationExportResponse');

const RefDocError = z.object({
  error: z.object({
    code: z.string(),
    message: z.string(),
  }),
}).openapi('RefDocError');

// ============================================================
// Routes
// ============================================================

const listSourcesRoute = createRoute({
  method: 'get',
  path: '/v1/sources',
  operationId: 'listSources',
  tags: ['sources'],
  summary: 'List source_registry entries (with health)',
  request: {
    query: z.object({
      tier: z.enum(['A', 'B', 'C', 'D', 'E']).optional(),
      status: z.string().optional(),
      license_status: z.enum(['active', 'expired', 'unknown', 'blocked']).optional(),
      limit: z.coerce.number().int().min(1).max(200).default(50),
      cursor: z.string().optional(),
    }),
  },
  responses: {
    200: { description: 'Source list', content: { 'application/json': { schema: SourceListResponse } } },
  },
});

const getSourceRoute = createRoute({
  method: 'get',
  path: '/v1/sources/{id}',
  operationId: 'getSource',
  tags: ['sources'],
  summary: 'Get source detail with claim counts, health, and used-on pages',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Source detail', content: { 'application/json': { schema: SourceDetailResponse } } },
    404: { description: 'Source not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getSourceClaimsRoute = createRoute({
  method: 'get',
  path: '/v1/sources/{id}/claims',
  operationId: 'getSourceClaims',
  tags: ['sources'],
  summary: 'List all claims citing this source',
  request: {
    params: z.object({ id: z.string() }),
    query: z.object({
      support_type: z.enum(['supports', 'contradicts', 'partially_supports', 'mentions', 'primary_record', 'derived_from']).optional(),
      certainty: z.string().optional(),
      limit: z.coerce.number().int().min(1).max(200).default(50),
    }),
  },
  responses: {
    200: { description: 'Claims citing this source', content: { 'application/json': { schema: SourceClaimListResponse } } },
    404: { description: 'Source not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getEntitySourcesRoute = createRoute({
  method: 'get',
  path: '/v1/entities/{id}/sources',
  operationId: 'getEntitySources',
  tags: ['sources', 'entities'],
  summary: 'List all sources for an entity (drilldown)',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Entity sources with claim counts', content: { 'application/json': { schema: EntitySourcesResponse } } },
    404: { description: 'Entity not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getEntityRevisionsRoute = createRoute({
  method: 'get',
  path: '/v1/entities/{id}/revisions',
  operationId: 'getEntityRevisions',
  tags: ['editorial', 'entities'],
  summary: 'List editorial revisions for an entity',
  request: {
    params: z.object({ id: z.string() }),
    query: z.object({
      review_status: z.enum(['pending', 'approved', 'rejected', 'auto_approved']).optional(),
      contributor_id: z.string().optional(),
      from: z.coerce.number().int().optional(),
      to: z.coerce.number().int().optional(),
      limit: z.coerce.number().int().min(1).max(200).default(50),
    }),
  },
  responses: {
    200: { description: 'Editorial revisions', content: { 'application/json': { schema: RevisionListResponse } } },
    404: { description: 'Entity not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const postEditorialRevisionRoute = createRoute({
  method: 'post',
  path: '/v1/admin/editorial-revisions',
  operationId: 'createEditorialRevision',
  tags: ['editorial', 'admin'],
  summary: 'Create an editorial revision (admin)',
  request: {
    body: {
      content: { 'application/json': { schema: z.object({
        target_entity_id: z.string(),
        target_claim_id: z.string().optional(),
        field_name: z.string(),
        old_value: z.string().optional(),
        new_value: z.string(),
        revision_type: z.enum(['initial', 'correction', 'enhancement', 'merge', 'split']).default('enhancement'),
        contributor_id: z.string(),
        contributor_role: z.enum(['system', 'editor', 'curator', 'llm', 'agent']).default('editor'),
        source_id: z.string().optional(),
        auto_approve: z.boolean().default(false),
        notes: z.string().optional(),
      }) } },
    },
  },
  responses: {
    201: { description: 'Revision created', content: { 'application/json': { schema: EditorialRevision } } },
    400: { description: 'Validation error', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getEntityCitationsRoute = createRoute({
  method: 'get',
  path: '/v1/entities/{id}/citations',
  operationId: 'getEntityCitations',
  tags: ['citations', 'entities'],
  summary: 'Export citations for an entity in BibTeX, RIS, or CSL JSON',
  request: {
    params: z.object({ id: z.string() }),
    query: z.object({
      format: z.enum(['bibtex', 'ris', 'csljson']).default('csljson'),
    }),
  },
  responses: {
    200: {
      description: 'Citation export',
      content: {
        'application/json': { schema: CitationExportResponse },
        'application/x-bibtex': { schema: z.string() },
        'application/x-research-info-systems': { schema: z.string() },
      },
    },
    404: { description: 'Entity not found', content: { 'application/json': { schema: RefDocError } } },
    400: { description: 'Invalid format', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Citation formatters
// ============================================================

interface Citation {
  source_id: string;
  source_name: string;
  base_url: string | null;
  license_name: string | null;
  license_url: string | null;
  attribution_required: number;
  quality_tier: string;
  claim_count: number;
}

function escapeBibtex(s: string): string {
  return s.replace(/[{}\\]/g, '\\$&').replace(/&/g, '\\&');
}

function formatBibtex(c: Citation): string {
  const key = `${c.source_id.replace(/[^a-zA-Z0-9]/g, '_')}_hka`;
  return [
    `@misc{${key},`,
    `  title = {${escapeBibtex(c.source_name)}},`,
    `  author = {Historical Knowledge API},`,
    `  year = {2026},`,
    c.base_url ? `  url = {${c.base_url}},` : '',
    `  note = {Source: tier ${c.quality_tier}. Cited ${c.claim_count} times across this entity's claims.}`,
    `}`,
  ].filter(Boolean).join('\n');
}

function formatRis(c: Citation): string {
  return [
    'TY  - GEN',
    `T1  - ${c.source_name}`,
    `UR  - ${c.base_url ?? ''}`,
    `PB  - Historical Knowledge API`,
    `PY  - 2026`,
    `N1  - Source tier ${c.quality_tier}, cited ${c.claim_count} times`,
    'ER  - ',
  ].join('\n');
}

function formatCslJson(citations: Citation[], entityName: string): string {
  return JSON.stringify({
    entity: entityName,
    generated_at: new Date().toISOString(),
    citations: citations.map(c => ({
      id: c.source_id,
      type: 'webpage',
      title: c.source_name,
      URL: c.base_url,
      publisher: 'Historical Knowledge API',
      issued: { 'date-parts': [[2026, 8, 6]] },
      accessed: { 'date-parts': [[2026, 8, 6]] },
      'publisher-place': 'Cloudflare D1',
      note: `Source tier ${c.quality_tier}, cited ${c.claim_count} times`,
    })),
  }, null, 2);
}

// ============================================================
// Router
// ============================================================

export const sourcesRouter = new OpenAPIHono<AppEnv>();

sourcesRouter.openapi(listSourcesRoute, async (c) => {
  const q = c.req.valid('query');
  const where: string[] = [];
  const params: any[] = [];

  if (q.tier) { where.push('reg.source_quality_tier = ?'); params.push(q.tier); }
  if (q.status) { where.push('reg.status = ?'); params.push(q.status); }
  if (q.license_status) { where.push('COALESCE(h.license_status, \'unknown\') = ?'); params.push(q.license_status); }
  if (q.cursor) { where.push('reg.id > ?'); params.push(q.cursor); }

  const whereClause = where.length ? 'WHERE ' + where.join(' AND ') : '';
  const sql = `
    SELECT reg.*, h.license_status, h.records_total, h.success_rate_30d, h.last_fetch_at
    FROM source_registry reg
    LEFT JOIN data_source_health h ON h.source_registry_id = reg.id
    ${whereClause}
    ORDER BY reg.id ASC
    LIMIT ?
  `;
  const countSql = `SELECT COUNT(*) AS n FROM source_registry reg LEFT JOIN data_source_health h ON h.source_registry_id = reg.id ${whereClause}`;
  const limitParams = [...params, q.limit];
  const { results: data } = await c.env.DB.prepare(sql).bind(...limitParams).all();
  const { results: countRows } = await c.env.DB.prepare(countSql).bind(...params).all();

  return c.json({ data, total_count: (countRows[0] as any).n }) as any;
});

sourcesRouter.openapi(getSourceRoute, async (c) => {
  const { id } = c.req.valid('param');
  const reg = await c.env.DB.prepare('SELECT * FROM source_registry WHERE id = ?').bind(id).first();
  if (!reg) {
    return c.json({ error: { code: 'SOURCE_NOT_FOUND', message: `No source with id ${id}` } }, 404) as any;
  }
  const health = await c.env.DB.prepare('SELECT * FROM data_source_health WHERE source_registry_id = ?').bind(id).first();
  // Counts
  const { results: supportedRows } = await c.env.DB.prepare(`
    SELECT COUNT(*) AS n FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    WHERE sr.source_id = ? AND cs.support_type IN ('supports','primary_record','derived_from','partially_supports')
  `).bind(id).all();
  const { results: contradictedRows } = await c.env.DB.prepare(`
    SELECT COUNT(*) AS n FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    WHERE sr.source_id = ? AND cs.support_type = 'contradicts'
  `).bind(id).all();
  const { results: entitiesRows } = await c.env.DB.prepare(`
    SELECT COUNT(DISTINCT c.subject_entity_id) AS n FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    JOIN claim c ON c.id = cs.claim_id
    WHERE sr.source_id = ?
  `).bind(id).all();
  const { results: srRows } = await c.env.DB.prepare(`
    SELECT COUNT(*) AS n FROM source_record WHERE source_id = ?
  `).bind(id).all();
  // Pages this source is used on (entities that have at least 1 claim citing this source)
  const { results: pages } = await c.env.DB.prepare(`
    SELECT DISTINCT e.id, e.slug, e.canonical_name
    FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    JOIN claim cl ON cl.id = cs.claim_id
    JOIN entity e ON e.id = cl.subject_entity_id
    WHERE sr.source_id = ?
    LIMIT 20
  `).bind(id).all();
  const used_on_pages = (pages as any[]).map(p => p.slug ? `/v1/people/${p.slug}` : `/v1/entities/${p.id}`);

  return c.json({
    ...(reg as any),
    claims_supported_count: (supportedRows[0] as any).n,
    claims_contradicted_count: (contradictedRows[0] as any).n,
    entities_mentioned_count: (entitiesRows[0] as any).n,
    source_records_count: (srRows[0] as any).n,
    health: health ? {
      records_total: (health as any).records_total,
      records_published: (health as any).records_published,
      last_fetch_at: (health as any).last_fetch_at,
      last_success_at: (health as any).last_success_at,
      success_rate_30d: (health as any).success_rate_30d,
      license_status: (health as any).license_status,
      last_license_check_at: (health as any).last_license_check_at,
    } : null,
    used_on_pages,
  }) as any;
});

sourcesRouter.openapi(getSourceClaimsRoute, async (c) => {
  const { id } = c.req.valid('param');
  const q = c.req.valid('query');
  const reg = await c.env.DB.prepare('SELECT id FROM source_registry WHERE id = ?').bind(id).first();
  if (!reg) {
    return c.json({ error: { code: 'SOURCE_NOT_FOUND', message: `No source with id ${id}` } }, 404) as any;
  }
  const where: string[] = ['sr.source_id = ?'];
  const params: any[] = [id];
  if (q.support_type) { where.push('cs.support_type = ?'); params.push(q.support_type); }
  if (q.certainty) { where.push('c.certainty = ?'); params.push(q.certainty); }
  const whereClause = 'WHERE ' + where.join(' AND ');
  const { results } = await c.env.DB.prepare(`
    SELECT c.id, c.subject_entity_id, c.predicate, c.literal_value, c.confidence, c.status, c.certainty,
           cs.support_type, cs.id AS claim_source_id
    FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    JOIN claim c ON c.id = cs.claim_id
    ${whereClause}
    ORDER BY c.confidence DESC
    LIMIT ?
  `).bind(...params, q.limit).all();

  return c.json({
    source_id: id,
    data: (results as any[]).map(r => ({
      claim: {
        id: r.id, subject_entity_id: r.subject_entity_id, predicate: r.predicate,
        literal_value: r.literal_value, confidence: r.confidence, status: r.status, certainty: r.certainty,
      },
      support_type: r.support_type,
      claim_source_id: r.claim_source_id,
    })),
    total_count: (results as any).length,
  }) as any;
});

sourcesRouter.openapi(getEntitySourcesRoute, async (c) => {
  const { id } = c.req.valid('param');
  const entity = await c.env.DB.prepare('SELECT id, canonical_name FROM entity WHERE id = ?').bind(id).first();
  if (!entity) {
    return c.json({ error: { code: 'ENTITY_NOT_FOUND', message: `No entity with id ${id}` } }, 404) as any;
  }
  const { results } = await c.env.DB.prepare(`
    SELECT DISTINCT sr.source_id,
           reg.id, reg.source_name, reg.source_type, reg.base_url, reg.source_quality_tier,
           reg.legal_review_status, reg.status, reg.license_name, reg.license_url, reg.terms_url,
           reg.attribution_required,
           COUNT(DISTINCT cs.claim_id) AS claim_count
    FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    JOIN claim c ON c.id = cs.claim_id
    JOIN source_registry reg ON reg.id = sr.source_id
    WHERE c.subject_entity_id = ?
    GROUP BY sr.source_id
    ORDER BY claim_count DESC
  `).bind(id).all();

  const data = (results as any[]).map(r => ({
    source: {
      id: r.id, source_name: r.source_name, source_type: r.source_type, base_url: r.base_url,
      source_quality_tier: r.source_quality_tier, legal_review_status: r.legal_review_status,
      status: r.status, license_name: r.license_name, license_url: r.license_url,
      terms_url: r.terms_url, attribution_required: r.attribution_required,
    },
    claim_count: r.claim_count,
  }));

  return c.json({ entity_id: id, data, total_sources: data.length }) as any;
});

sourcesRouter.openapi(getEntityRevisionsRoute, async (c) => {
  const { id } = c.req.valid('param');
  const q = c.req.valid('query');
  const entity = await c.env.DB.prepare('SELECT id FROM entity WHERE id = ?').bind(id).first();
  if (!entity) {
    return c.json({ error: { code: 'ENTITY_NOT_FOUND', message: `No entity with id ${id}` } }, 404) as any;
  }
  const where: string[] = ['target_entity_id = ?'];
  const params: any[] = [id];
  if (q.review_status) { where.push('review_status = ?'); params.push(q.review_status); }
  if (q.contributor_id) { where.push('contributor_id = ?'); params.push(q.contributor_id); }
  if (q.from) { where.push('created_at >= ?'); params.push(q.from); }
  if (q.to) { where.push('created_at <= ?'); params.push(q.to); }
  const whereClause = 'WHERE ' + where.join(' AND ');
  const { results } = await c.env.DB.prepare(`
    SELECT * FROM editorial_revision ${whereClause} ORDER BY created_at DESC LIMIT ?
  `).bind(...params, q.limit).all();
  return c.json({ entity_id: id, data: results, total_count: (results as any).length }) as any;
});

sourcesRouter.openapi(postEditorialRevisionRoute, async (c) => {
  const body = c.req.valid('json');
  const id = 'ed_rev_api_' + crypto.randomUUID();
  const autoApprove = body.auto_approve;
  const reviewStatus = autoApprove ? 'auto_approved' : 'pending';
  const reviewedBy = autoApprove ? 'auto-approval' : null;
  const reviewedAt = autoApprove ? Math.floor(Date.now() / 1000) : null;
  await c.env.DB.prepare(`
    INSERT INTO editorial_revision
      (id, target_entity_id, target_claim_id, field_name, old_value, new_value,
       revision_type, contributor_id, contributor_role, source_id, review_status, reviewed_by, reviewed_at, notes)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
  `).bind(
    id, body.target_entity_id, body.target_claim_id || null, body.field_name,
    body.old_value || null, body.new_value, body.revision_type, body.contributor_id,
    body.contributor_role, body.source_id || null, reviewStatus, reviewedBy, reviewedAt, body.notes || null
  ).run();
  const row = await c.env.DB.prepare('SELECT * FROM editorial_revision WHERE id = ?').bind(id).first();
  return c.json(row, 201) as any;
});

sourcesRouter.openapi(getEntityCitationsRoute, async (c) => {
  const { id } = c.req.valid('param');
  const { format } = c.req.valid('query');
  const entity = await c.env.DB.prepare('SELECT id, canonical_name FROM entity WHERE id = ?').bind(id).first();
  if (!entity) {
    return c.json({ error: { code: 'ENTITY_NOT_FOUND', message: `No entity with id ${id}` } }, 404) as any;
  }
  const { results } = await c.env.DB.prepare(`
    SELECT DISTINCT sr.source_id,
           reg.id, reg.source_name, reg.source_type, reg.base_url, reg.source_quality_tier,
           reg.legal_review_status, reg.status, reg.license_name, reg.license_url, reg.terms_url,
           reg.attribution_required,
           COUNT(DISTINCT cs.claim_id) AS claim_count
    FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    JOIN claim c ON c.id = cs.claim_id
    JOIN source_registry reg ON reg.id = sr.source_id
    WHERE c.subject_entity_id = ?
    GROUP BY sr.source_id
    ORDER BY claim_count DESC
  `).bind(id).all();

  const citations: Citation[] = (results as any[]).map(r => ({
    source_id: r.id, source_name: r.source_name, base_url: r.base_url,
    license_name: r.license_name, license_url: r.license_url,
    attribution_required: r.attribution_required,
    quality_tier: r.source_quality_tier,
    claim_count: r.claim_count,
  }));

  let body: string;
  let content_type: string;
  if (format === 'bibtex') {
    body = citations.map(formatBibtex).join('\n\n');
    content_type = 'application/x-bibtex';
  } else if (format === 'ris') {
    body = citations.map(formatRis).join('\n\n');
    content_type = 'application/x-research-info-systems';
  } else {
    body = formatCslJson(citations, (entity as any).canonical_name);
    content_type = 'application/json';
  }

  return c.json({
    entity_id: id,
    format,
    content_type,
    citation_count: citations.length,
    body,
  }) as any;
});
