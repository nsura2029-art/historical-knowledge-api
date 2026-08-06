/**
 * Admin endpoints — for editorial review and publish/unpublish.
 * Per famous-people-platform-spec.md v2.0 §8.2
 *
 * In production, these would require auth (admin token, JWT, etc.).
 * For the experiment, auth is open — see TODO.
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import {
  publishPerson, unpublishPerson,
  approveClaim, rejectClaim, markClaimDisputed,
  approveMedia, rejectMedia,
  verifySocialProfile, rejectSocialProfile,
  recomputeDerivedAttributes, computeQualityScores,
  recordQualityGateResult, getLatestQualityGateResult,
} from '../../repositories/admin.js';

const personIdParam = z.object({ id: z.string() });

// POST /v1/admin/people/{id}/publish
const publishRoute = createRoute({
  method: 'post', path: '/v1/admin/people/{id}/publish',
  operationId: 'adminPublishPerson', tags: ['admin'],
  summary: 'Publish a person (draft → published)',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Published', content: { 'application/json': { schema: z.object({ status: z.string(), previous_status: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/people/{id}/unpublish
const unpublishRoute = createRoute({
  method: 'post', path: '/v1/admin/people/{id}/unpublish',
  operationId: 'adminUnpublishPerson', tags: ['admin'],
  summary: 'Unpublish a person (published → draft)',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Unpublished', content: { 'application/json': { schema: z.object({ status: z.string(), previous_status: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/claims/{id}/approve
const approveClaimRoute = createRoute({
  method: 'post', path: '/v1/admin/claims/{id}/approve',
  operationId: 'adminApproveClaim', tags: ['admin'],
  summary: 'Approve a claim (pending → approved)',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Approved', content: { 'application/json': { schema: z.object({ status: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/claims/{id}/reject
const rejectClaimRoute = createRoute({
  method: 'post', path: '/v1/admin/claims/{id}/reject',
  operationId: 'adminRejectClaim', tags: ['admin'],
  summary: 'Reject a claim',
  request: {
    params: personIdParam,
    body: {
      content: { 'application/json': { schema: z.object({ reason: z.string().min(1) }) } },
    },
  },
  responses: {
    200: { description: 'Rejected', content: { 'application/json': { schema: z.object({ status: z.string(), reason: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/claims/{id}/mark-disputed
const markDisputedRoute = createRoute({
  method: 'post', path: '/v1/admin/claims/{id}/mark-disputed',
  operationId: 'adminMarkClaimDisputed', tags: ['admin'],
  summary: 'Mark a claim as disputed',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Marked', content: { 'application/json': { schema: z.object({ status: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/media/{id}/approve
const approveMediaRoute = createRoute({
  method: 'post', path: '/v1/admin/media/{id}/approve',
  operationId: 'adminApproveMedia', tags: ['admin'],
  summary: 'Approve a media asset (rights verified)',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Approved', content: { 'application/json': { schema: z.object({ status: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/media/{id}/reject
const rejectMediaRoute = createRoute({
  method: 'post', path: '/v1/admin/media/{id}/reject',
  operationId: 'adminRejectMedia', tags: ['admin'],
  summary: 'Reject a media asset',
  request: {
    params: personIdParam,
    body: {
      content: { 'application/json': { schema: z.object({ reason: z.string().min(1) }) } },
    },
  },
  responses: {
    200: { description: 'Rejected', content: { 'application/json': { schema: z.object({ status: z.string(), reason: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/social/{id}/verify
const verifySocialRoute = createRoute({
  method: 'post', path: '/v1/admin/social/{id}/verify',
  operationId: 'adminVerifySocial', tags: ['admin'],
  summary: 'Verify a social profile (mark as official or fan)',
  request: {
    params: personIdParam,
    body: {
      content: { 'application/json': { schema: z.object({
        official_status: z.enum(['official_confirmed', 'likely_official', 'representative_or_agency', 'memorial', 'fan', 'parody', 'topic_or_auto_generated', 'unknown']),
        confidence: z.number().min(0).max(1),
        verification_method: z.string().min(1),
      }) } },
    },
  },
  responses: {
    200: { description: 'Verified', content: { 'application/json': { schema: z.object({ status: z.string(), official_status: z.string(), confidence: z.number() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/social/{id}/reject
const rejectSocialRoute = createRoute({
  method: 'post', path: '/v1/admin/social/{id}/reject',
  operationId: 'adminRejectSocial', tags: ['admin'],
  summary: 'Reject a social profile',
  request: {
    params: personIdParam,
    body: {
      content: { 'application/json': { schema: z.object({ reason: z.string().min(1) }) } },
    },
  },
  responses: {
    200: { description: 'Rejected', content: { 'application/json': { schema: z.object({ status: z.string(), reason: z.string() }) } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/people/{id}/recompute-derived
const recomputeRoute = createRoute({
  method: 'post', path: '/v1/admin/people/{id}/recompute-derived',
  operationId: 'adminRecomputeDerived', tags: ['admin'],
  summary: 'Recompute derived attributes (age, generation, star sign, etc.) from birth date',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Recomputed', content: { 'application/json': { schema: z.object({ recomputed: z.array(z.object({ attribute_type: z.string(), attribute_value: z.string(), rule_version: z.string() })) }) } } },
  },
});

// GET /v1/admin/quality-gates/{id}
const qualityGatesRoute = createRoute({
  method: 'get', path: '/v1/admin/quality-gates/{id}',
  operationId: 'adminGetQualityGates', tags: ['admin'],
  summary: 'Get the latest quality gate result for a person',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Quality gate result', content: { 'application/json': { schema: z.object({}).passthrough() } } },
    404: { description: 'Not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// POST /v1/admin/people/{id}/compute-quality
const computeQualityRoute = createRoute({
  method: 'post', path: '/v1/admin/people/{id}/compute-quality',
  operationId: 'adminComputeQuality', tags: ['admin'],
  summary: 'Compute and store quality gate result for a person',
  request: { params: personIdParam },
  responses: {
    200: { description: 'Computed', content: { 'application/json': { schema: z.object({}).passthrough() } } },
  },
});

export const adminRouter = new OpenAPIHono<AppEnv>();

const notFound = (c: any, msg: string) => c.json(
  { error: { code: 'NOT_FOUND', message: msg, requestId: c.get('requestId'), details: [] } },
  404
) as any;

adminRouter.openapi(publishRoute, async (c) => {
  const { id } = c.req.valid('param');
  const r = await publishPerson(c.env.DB, id);
  if (!r) return notFound(c, `Person ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(unpublishRoute, async (c) => {
  const { id } = c.req.valid('param');
  const r = await unpublishPerson(c.env.DB, id);
  if (!r) return notFound(c, `Person ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(approveClaimRoute, async (c) => {
  const { id } = c.req.valid('param');
  const r = await approveClaim(c.env.DB, id);
  if (!r) return notFound(c, `Claim ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(rejectClaimRoute, async (c) => {
  const { id } = c.req.valid('param');
  const { reason } = c.req.valid('json');
  const r = await rejectClaim(c.env.DB, id, reason);
  if (!r) return notFound(c, `Claim ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(markDisputedRoute, async (c) => {
  const { id } = c.req.valid('param');
  const r = await markClaimDisputed(c.env.DB, id);
  if (!r) return notFound(c, `Claim ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(approveMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  const r = await approveMedia(c.env.DB, id);
  if (!r) return notFound(c, `Media ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(rejectMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  const { reason } = c.req.valid('json');
  const r = await rejectMedia(c.env.DB, id, reason);
  if (!r) return notFound(c, `Media ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(verifySocialRoute, async (c) => {
  const { id } = c.req.valid('param');
  const { official_status, confidence, verification_method } = c.req.valid('json');
  const r = await verifySocialProfile(c.env.DB, id, official_status, confidence, verification_method);
  if (!r) return notFound(c, `Social profile ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(rejectSocialRoute, async (c) => {
  const { id } = c.req.valid('param');
  const { reason } = c.req.valid('json');
  const r = await rejectSocialProfile(c.env.DB, id, reason);
  if (!r) return notFound(c, `Social profile ${id} not found`);
  return c.json(r) as any;
});

adminRouter.openapi(recomputeRoute, async (c) => {
  const { id } = c.req.valid('param');
  const r = await recomputeDerivedAttributes(c.env.DB, id);
  return c.json(r) as any;
});

adminRouter.openapi(qualityGatesRoute, async (c) => {
  const { id } = c.req.valid('param');
  const r = await getLatestQualityGateResult(c.env.DB, id);
  if (!r) return notFound(c, `No quality gate result for ${id}`);
  return c.json(r) as any;
});

adminRouter.openapi(computeQualityRoute, async (c) => {
  const { id } = c.req.valid('param');
  const scores = await computeQualityScores(c.env.DB, id);

  // Get counts
  const counts = await c.env.DB
    .prepare(`
      SELECT
        (SELECT COUNT(*) FROM claim WHERE subject_entity_id = ? AND status IN ('approved', 'published')) AS approved_claims,
        (SELECT COUNT(*) FROM claim WHERE subject_entity_id = ? AND status = 'disputed') AS disputed_claims,
        (SELECT COUNT(*) FROM claim WHERE subject_entity_id = ? AND status = 'pending') AS unsupported_claims,
        (SELECT COUNT(DISTINCT source_id) FROM claim c JOIN claim_source cs ON cs.claim_id = c.id JOIN source_record sr ON sr.id = cs.source_record_id WHERE c.subject_entity_id = ?) AS sources,
        (SELECT COUNT(DISTINCT src.source_name) FROM claim c JOIN claim_source cs ON cs.claim_id = c.id JOIN source_record sr ON sr.id = cs.source_record_id JOIN source_registry src ON src.id = sr.source_id WHERE c.subject_entity_id = ?) AS source_domains,
        (SELECT COUNT(*) FROM media_asset WHERE depiction_entity_id = ? AND status = 'approved') AS media_assets,
        (SELECT COUNT(*) FROM media_asset ma JOIN media_rights mr ON mr.media_asset_id = ma.id WHERE ma.depiction_entity_id = ? AND ma.status = 'approved' AND mr.rights_verified_at IS NOT NULL) AS hero_eligible_media,
        (SELECT COUNT(*) FROM social_profile WHERE person_id = ? AND status = 'active' AND confidence >= 0.8) AS verified_social_profiles,
        0 AS broken_links,
        0 AS duplicate_candidates
    `)
    .bind(id, id, id, id, id, id, id, id)
    .first<{ approved_claims: number; disputed_claims: number; unsupported_claims: number; sources: number; source_domains: number; media_assets: number; hero_eligible_media: number; verified_social_profiles: number; broken_links: number; duplicate_candidates: number }>();

  if (counts) {
    await recordQualityGateResult(c.env.DB, id, scores, counts);
  }

  return c.json({ scores, counts }) as any;
});
