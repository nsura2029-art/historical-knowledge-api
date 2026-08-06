/**
 * KP-003: Atomic-claim model — read API.
 * Surfaces the claim + claim_source + source_record + claim_conflict_group
 * graph that was created by migration 0012 and earlier parallel work.
 *
 * Endpoints:
 *   GET /v1/claims                  — list claims (filters: predicate, certainty, status, subject)
 *   GET /v1/claims/{id}             — single claim
 *   GET /v1/claims/{id}/evidence    — evidence graph (sources + revisions)
 *   GET /v1/entities/{id}/claims    — claims for an entity
 *   GET /v1/sources                 — list source_registry entries
 *   GET /v1/sources/{id}            — single source_registry entry
 *   GET /v1/conflict-groups         — list conflict groups
 *   GET /v1/conflict-groups/{id}    — single conflict group with members
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';

// ============================================================
// Schemas (defined inline; will move to @hka/contracts in a follow-up)
// ============================================================

const Claim = z.object({
  id: z.string(),
  subject_entity_id: z.string(),
  predicate: z.string(),
  object_entity_id: z.string().nullable(),
  literal_value: z.string().nullable(),
  value_type: z.string().nullable(),
  valid_from: z.number().int().nullable(),
  valid_to: z.number().int().nullable(),
  date_precision: z.string(),
  certainty: z.string(),
  confidence: z.number(),
  sensitivity_level: z.string(),
  status: z.string(),
  preferred: z.number().int(),
  generated_by: z.string().nullable(),
  generated_by_model: z.string().nullable(),
  created_at: z.number().int(),
  updated_at: z.number().int(),
}).openapi('Claim');

const ClaimSource = z.object({
  id: z.string(),
  claim_id: z.string(),
  source_record_id: z.string(),
  support_type: z.string(),
  locator: z.string().nullable(),
  evidence_note: z.string().nullable(),
  retrieved_at: z.number().int(),
}).openapi('ClaimSource');

const SourceRecord = z.object({
  id: z.string(),
  source_id: z.string(),
  external_id: z.string().nullable(),
  external_url: z.string().nullable(),
  fetch_status: z.string(),
  fetched_at: z.number().int(),
  raw_size_bytes: z.number().int().nullable(),
  raw_format: z.string().nullable(),
  parse_status: z.string().nullable(),
}).openapi('SourceRecord');

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

const ClaimListResponse = z.object({
  data: z.array(Claim),
  total_count: z.number().int(),
  next_cursor: z.string().nullable(),
}).openapi('ClaimListResponse');

const ClaimEvidenceResponse = z.object({
  claim: Claim,
  sources: z.array(z.object({
    claim_source: ClaimSource,
    source_record: SourceRecord,
  })),
  revisions: z.array(EditorialRevision),
}).openapi('ClaimEvidenceResponse');

const EntityClaimsResponse = z.object({
  entity_id: z.string(),
  data: z.array(Claim),
  grouped_by_predicate: z.record(z.string(), z.array(Claim)),
  totals: z.object({
    claims: z.number().int(),
    sources: z.number().int(),
    predicates: z.number().int(),
  }),
}).openapi('EntityClaimsResponse');

const ConflictGroup = z.object({
  id: z.string(),
  subject_entity_id: z.string(),
  predicate: z.string(),
  description: z.string().nullable(),
  resolution_status: z.string(),
  resolution_note: z.string().nullable(),
  resolved_at: z.number().int().nullable(),
  resolved_by: z.string().nullable(),
  member_claims: z.array(Claim).optional(),
}).openapi('ConflictGroup');

const RefDocError = z.object({
  error: z.object({
    code: z.string(),
    message: z.string(),
    details: z.record(z.string(), z.any()).optional(),
  }),
}).openapi('RefDocError');

// ============================================================
// Routes
// ============================================================

// --- GET /v1/claims ---
const listClaimsRoute = createRoute({
  method: 'get',
  path: '/v1/claims',
  operationId: 'listClaims',
  tags: ['claims'],
  summary: 'List atomic claims (KP-003)',
  description: 'Browse all atomic claims in the knowledge graph. Supports filters for predicate, certainty, status, subject_entity_id, and date range.',
  request: {
    query: z.object({
      predicate: z.string().optional(),
      certainty: z.enum(['undisputed', 'disputed', 'contested', 'traditional', 'unknown']).optional(),
      status: z.enum(['pending', 'approved', 'rejected', 'published', 'disputed']).optional(),
      subject_entity_id: z.string().optional(),
      min_confidence: z.coerce.number().min(0).max(1).optional(),
      limit: z.coerce.number().int().min(1).max(200).default(50),
      cursor: z.string().optional(),
    }),
  },
  responses: {
    200: { description: 'Paginated claim list', content: { 'application/json': { schema: ClaimListResponse } } },
    400: { description: 'Validation error', content: { 'application/json': { schema: RefDocError } } },
  },
});

// --- GET /v1/claims/{id} ---
const getClaimRoute = createRoute({
  method: 'get',
  path: '/v1/claims/{id}',
  operationId: 'getClaim',
  tags: ['claims'],
  summary: 'Get a single claim by ID',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'The claim', content: { 'application/json': { schema: Claim } } },
    404: { description: 'Claim not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// --- GET /v1/claims/{id}/evidence ---
const getClaimEvidenceRoute = createRoute({
  method: 'get',
  path: '/v1/claims/{id}/evidence',
  operationId: 'getClaimEvidence',
  tags: ['claims'],
  summary: 'Get the evidence graph for a claim (sources + revisions)',
  description: 'Returns the full evidence: claim_source joins, source_record payloads, and editorial_revision history.',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Evidence graph', content: { 'application/json': { schema: ClaimEvidenceResponse } } },
    404: { description: 'Claim not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// --- GET /v1/entities/{id}/claims ---
const getEntityClaimsRoute = createRoute({
  method: 'get',
  path: '/v1/entities/{id}/claims',
  operationId: 'getEntityClaims',
  tags: ['claims', 'entities'],
  summary: 'List all claims for an entity, grouped by predicate',
  description: 'Returns all atomic claims where the entity is the subject. Also returns claim-source counts and predicate count.',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Entity claims with grouping', content: { 'application/json': { schema: EntityClaimsResponse } } },
    404: { description: 'Entity not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// --- GET /v1/conflict-groups/{id} ---
const getConflictGroupRoute = createRoute({
  method: 'get',
  path: '/v1/conflict-groups/{id}',
  operationId: 'getConflictGroup',
  tags: ['claims'],
  summary: 'Get a conflict group with all member claims',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Conflict group with members', content: { 'application/json': { schema: ConflictGroup } } },
    404: { description: 'Conflict group not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Router
// ============================================================

export const claimsRouter = new OpenAPIHono<AppEnv>();

claimsRouter.openapi(listClaimsRoute, async (c) => {
  const q = c.req.valid('query');
  const where: string[] = [];
  const params: any[] = [];

  if (q.predicate) { where.push('predicate = ?'); params.push(q.predicate); }
  if (q.certainty) { where.push('certainty = ?'); params.push(q.certainty); }
  if (q.status) { where.push('status = ?'); params.push(q.status); }
  if (q.subject_entity_id) { where.push('subject_entity_id = ?'); params.push(q.subject_entity_id); }
  if (q.min_confidence !== undefined) { where.push('confidence >= ?'); params.push(q.min_confidence); }
  if (q.cursor) { where.push('id > ?'); params.push(q.cursor); }

  const whereClause = where.length ? 'WHERE ' + where.join(' AND ') : '';
  const sql = `SELECT * FROM claim ${whereClause} ORDER BY id ASC LIMIT ?`;
  const countSql = `SELECT COUNT(*) AS n FROM claim ${whereClause}`;

  const limitParams = [...params, q.limit];
  const { results: data } = await c.env.DB.prepare(sql).bind(...limitParams).all();
  const { results: countRows } = await c.env.DB.prepare(countSql).bind(...params).all();
  const total_count = (countRows[0] as any).n as number;
  const next_cursor = data.length === q.limit ? (data[data.length - 1] as any).id : null;

  return c.json({ data: data as any, total_count, next_cursor }) as any;
});

claimsRouter.openapi(getClaimRoute, async (c) => {
  const { id } = c.req.valid('param');
  const row = await c.env.DB.prepare('SELECT * FROM claim WHERE id = ?').bind(id).first();
  if (!row) {
    return c.json({
      error: { code: 'CLAIM_NOT_FOUND', message: `No claim with id ${id}` },
    }, 404) as any;
  }
  return c.json(row) as any;
});

claimsRouter.openapi(getClaimEvidenceRoute, async (c) => {
  const { id } = c.req.valid('param');
  const claim = await c.env.DB.prepare('SELECT * FROM claim WHERE id = ?').bind(id).first();
  if (!claim) {
    return c.json({
      error: { code: 'CLAIM_NOT_FOUND', message: `No claim with id ${id}` },
    }, 404) as any;
  }

  const { results: sources } = await c.env.DB.prepare(`
    SELECT cs.id, cs.claim_id, cs.source_record_id, cs.support_type, cs.locator,
           cs.evidence_note, cs.retrieved_at,
           sr.id AS sr_id, sr.source_id AS sr_source_id, sr.external_id AS sr_external_id,
           sr.external_url AS sr_external_url, sr.fetch_status AS sr_fetch_status,
           sr.fetched_at AS sr_fetched_at, sr.raw_size_bytes AS sr_raw_size_bytes,
           sr.raw_format AS sr_raw_format, sr.parse_status AS sr_parse_status
    FROM claim_source cs
    JOIN source_record sr ON sr.id = cs.source_record_id
    WHERE cs.claim_id = ?
    ORDER BY cs.retrieved_at DESC
  `).bind(id).all();

  const { results: revisions } = await c.env.DB.prepare(`
    SELECT * FROM editorial_revision
    WHERE target_claim_id = ?
    ORDER BY created_at ASC
  `).bind(id).all();

  const sourcesOut = (sources as any[]).map(s => ({
    claim_source: {
      id: s.id, claim_id: s.claim_id, source_record_id: s.source_record_id,
      support_type: s.support_type, locator: s.locator,
      evidence_note: s.evidence_note, retrieved_at: s.retrieved_at,
    },
    source_record: {
      id: s.sr_id, source_id: s.sr_source_id, external_id: s.sr_external_id,
      external_url: s.sr_external_url, fetch_status: s.sr_fetch_status,
      fetched_at: s.sr_fetched_at, raw_size_bytes: s.sr_raw_size_bytes,
      raw_format: s.sr_raw_format, parse_status: s.sr_parse_status,
    },
  }));

  return c.json({ claim, sources: sourcesOut, revisions }) as any;
});

claimsRouter.openapi(getEntityClaimsRoute, async (c) => {
  const { id } = c.req.valid('param');
  const entity = await c.env.DB.prepare('SELECT id FROM entity WHERE id = ?').bind(id).first();
  if (!entity) {
    return c.json({
      error: { code: 'ENTITY_NOT_FOUND', message: `No entity with id ${id}` },
    }, 404) as any;
  }

  const { results: claims } = await c.env.DB.prepare(`
    SELECT * FROM claim
    WHERE subject_entity_id = ?
    ORDER BY predicate ASC, confidence DESC
  `).bind(id).all();

  const grouped: Record<string, any[]> = {};
  for (const cl of claims as any[]) {
    if (!grouped[cl.predicate]) grouped[cl.predicate] = [];
    grouped[cl.predicate].push(cl);
  }

  const { results: sourceCount } = await c.env.DB.prepare(`
    SELECT COUNT(DISTINCT cs.source_record_id) AS n
    FROM claim_source cs
    JOIN claim c ON c.id = cs.claim_id
    WHERE c.subject_entity_id = ?
  `).bind(id).all();

  return c.json({
    entity_id: id,
    data: claims,
    grouped_by_predicate: grouped,
    totals: {
      claims: (claims as any[]).length,
      sources: (sourceCount[0] as any).n,
      predicates: Object.keys(grouped).length,
    },
  }) as any;
});

claimsRouter.openapi(getConflictGroupRoute, async (c) => {
  const { id } = c.req.valid('param');
  const group = await c.env.DB.prepare('SELECT * FROM claim_conflict_group WHERE id = ?').bind(id).first();
  if (!group) {
    return c.json({
      error: { code: 'CONFLICT_GROUP_NOT_FOUND', message: `No conflict group with id ${id}` },
    }, 404) as any;
  }
  const { results: members } = await c.env.DB.prepare(`
    SELECT * FROM claim WHERE conflict_group_id = ? ORDER BY confidence DESC
  `).bind(id).all();
  return c.json({ ...group, member_claims: members }) as any;
});
