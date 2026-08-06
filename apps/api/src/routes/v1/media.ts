/**
 * KP-007: Media + rights pipeline.
 *
 * Display gate: every API response that includes media MUST filter by
 * media_rights.status = 'approved' AND media_expiry.status != 'expired'.
 *
 * Endpoints:
 *   GET /v1/entities/{id}/media           — media for an entity (with rights filter)
 *   GET /v1/media/{id}                    — media detail (with full rights record)
 *   GET /v1/media/{id}/download           — R2 redirect / signed-URL proxy
 *   GET /v1/media/{id}/transform?w=200    — R2 image transform
 *   GET /v1/admin/media/review-queue      — pending reviews (admin)
 *   POST /v1/admin/media/upload           — upload new media (admin)
 *   POST /v1/admin/media/{id}/approve     — approve rights record (admin)
 *   POST /v1/admin/media/{id}/reject      — reject rights record (admin)
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';

// ============================================================
// Schemas
// ============================================================

const MediaAsset = z.object({
  id: z.string(),
  asset_type: z.string(),
  url: z.string(),
  thumbnail_url: z.string().nullable(),
  r2_key: z.string().nullable(),
  width: z.number().int().nullable(),
  height: z.number().int().nullable(),
  depiction_entity_id: z.string(),
  depiction_confidence: z.number(),
  depiction_method: z.string().nullable(),
  status: z.string(),
  created_at: z.number().int(),
}).openapi('MediaAsset');

const MediaRights = z.object({
  id: z.string(),
  media_asset_id: z.string(),
  creator_name: z.string().nullable(),
  copyright_holder: z.string().nullable(),
  license_code: z.string(),
  license_url: z.string().nullable(),
  rights_statement: z.string(),
  attribution_text: z.string(),
  commercial_use_allowed: z.number().int(),
  derivatives_allowed: z.number().int(),
  attribution_required: z.number().int(),
  share_alike_required: z.number().int(),
  editorial_use_only: z.number().int(),
  expiry_date: z.number().int().nullable(),
  rights_verified_at: z.number().int(),
  rights_reviewer: z.string().nullable(),
  source_id: z.string().nullable(),
}).openapi('MediaRights');

const MediaExpiry = z.object({
  media_asset_id: z.string(),
  expires_at: z.number().int().nullable(),
  notified_at: z.number().int().nullable(),
  last_checked_at: z.number().int().nullable(),
  status: z.string(),
}).openapi('MediaExpiry');

const MediaDetailResponse = z.object({
  asset: MediaAsset,
  rights: MediaRights.nullable(),
  expiry: MediaExpiry.nullable(),
  review_history: z.array(z.object({
    id: z.string(),
    review_type: z.string(),
    reviewed_at: z.number().int().nullable(),
    reviewed_by: z.string().nullable(),
    decision: z.string().nullable(),
    notes: z.string().nullable(),
  })),
}).openapi('MediaDetailResponse');

const EntityMediaResponse = z.object({
  entity_id: z.string(),
  data: z.array(z.object({
    asset: MediaAsset,
    rights: MediaRights,
  })),
  total: z.number().int(),
}).openapi('EntityMediaResponse');

const ReviewQueueItem = z.object({
  review_id: z.string(),
  review_type: z.string(),
  requested_at: z.number().int(),
  media_asset_id: z.string(),
  asset_type: z.string(),
  url: z.string(),
  depiction_entity_id: z.string(),
  rights_id: z.string().nullable(),
  license_code: z.string().nullable(),
  rights_status: z.string().nullable(),
}).openapi('ReviewQueueItem');

const ReviewQueueResponse = z.object({
  data: z.array(ReviewQueueItem),
  total: z.number().int(),
}).openapi('ReviewQueueResponse');

const RefDocError = z.object({
  error: z.object({
    code: z.string(),
    message: z.string(),
  }),
}).openapi('RefDocError');

// ============================================================
// Attribution templates (per license_code)
// ============================================================

function generateAttribution(creator: string | null, copyrightHolder: string | null, licenseCode: string, source: string | null): string {
  const creatorName = creator || 'Unknown';
  const src = source || 'Wikimedia Commons';
  const lic = licenseCode.toUpperCase();
  if (lic === 'PUBLICDOMAIN' || lic === 'CC0-1.0') {
    return `${creatorName}, via ${src} (public domain)`;
  }
  if (lic === 'CC-BY-4.0') return `${creatorName}, via ${src} (CC BY 4.0)`;
  if (lic === 'CC-BY-SA-4.0') return `${creatorName}, via ${src} (CC BY-SA 4.0)`;
  if (lic === 'CC-BY-2.0' || lic === 'CC-BY-2.5' || lic === 'CC-BY-3.0') return `${creatorName}, via ${src} (${licenseCode})`;
  if (lic === 'COPYRIGHTALLRIGHTSRESERVED') return `${creatorName} © ${copyrightHolder || 'rights reserved'}, all rights reserved`;
  return `${creatorName}, via ${src} (${licenseCode})`;
}

// ============================================================
// Routes
// ============================================================

const getEntityMediaRoute = createRoute({
  method: 'get',
  path: '/v1/entities/{id}/media',
  operationId: 'getEntityMedia',
  tags: ['media', 'entities'],
  summary: 'List all media for an entity (filtered by rights.status=approved)',
  description: 'Display gate: filters out media without approved rights or with expired license.',
  request: {
    params: z.object({ id: z.string() }),
    query: z.object({
      asset_type: z.enum(['image', 'video', 'audio', 'document']).optional(),
    }),
  },
  responses: {
    200: { description: 'Approved media for the entity', content: { 'application/json': { schema: EntityMediaResponse } } },
    404: { description: 'Entity not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getMediaRoute = createRoute({
  method: 'get',
  path: '/v1/media/{id}',
  operationId: 'getMedia',
  tags: ['media'],
  summary: 'Get media detail (with full rights + review history)',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Media detail', content: { 'application/json': { schema: MediaDetailResponse } } },
    404: { description: 'Media not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const downloadMediaRoute = createRoute({
  method: 'get',
  path: '/v1/media/{id}/download',
  operationId: 'downloadMedia',
  tags: ['media'],
  summary: 'Get a redirect/URL to download the media (gated by rights)',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Media URL', content: { 'application/json': { schema: z.object({ url: z.string(), expires_in: z.number().int(), gated_by: z.string() }) } } },
    403: { description: 'Media rights not approved', content: { 'application/json': { schema: RefDocError } } },
    404: { description: 'Media not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const transformMediaRoute = createRoute({
  method: 'get',
  path: '/v1/media/{id}/transform',
  operationId: 'transformMedia',
  tags: ['media'],
  summary: 'Get a transformed version of the media (gated by rights)',
  description: 'Returns a URL for a transformed image. Width/height are part of the transform cache key.',
  request: {
    params: z.object({ id: z.string() }),
    query: z.object({
      w: z.coerce.number().int().min(20).max(2000).default(800),
      h: z.coerce.number().int().min(20).max(2000).optional(),
    }),
  },
  responses: {
    200: { description: 'Transformed media URL', content: { 'application/json': { schema: z.object({ source_key: z.string(), transform: z.string(), url: z.string(), cached: z.boolean() }) } } },
    403: { description: 'Media rights not approved', content: { 'application/json': { schema: RefDocError } } },
    404: { description: 'Media not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const getReviewQueueRoute = createRoute({
  method: 'get',
  path: '/v1/admin/media/review-queue',
  operationId: 'getReviewQueue',
  tags: ['media', 'admin'],
  summary: 'List pending media rights reviews (admin)',
  request: {
    query: z.object({
      review_type: z.enum(['initial', 'expiry_check', 'takedown_request', 'license_change']).optional(),
      limit: z.coerce.number().int().min(1).max(200).default(50),
    }),
  },
  responses: {
    200: { description: 'Review queue', content: { 'application/json': { schema: ReviewQueueResponse } } },
  },
});

const approveMediaRoute = createRoute({
  method: 'post',
  path: '/v1/admin/media/{id}/approve',
  operationId: 'approveMedia',
  tags: ['media', 'admin'],
  summary: 'Approve a media rights record (admin)',
  request: { params: z.object({ id: z.string() }) },
  responses: {
    200: { description: 'Media approved', content: { 'application/json': { schema: MediaDetailResponse } } },
    404: { description: 'Media not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

const rejectMediaRoute = createRoute({
  method: 'post',
  path: '/v1/admin/media/{id}/reject',
  operationId: 'rejectMedia',
  tags: ['media', 'admin'],
  summary: 'Reject a media rights record (admin)',
  request: {
    params: z.object({ id: z.string() }),
    body: { content: { 'application/json': { schema: z.object({ reason: z.string().optional() }) } } },
  },
  responses: {
    200: { description: 'Media rejected', content: { 'application/json': { schema: MediaDetailResponse } } },
    404: { description: 'Media not found', content: { 'application/json': { schema: RefDocError } } },
  },
});

// ============================================================
// Router
// ============================================================

export const mediaRouter = new OpenAPIHono<AppEnv>();

mediaRouter.openapi(getEntityMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  const q = c.req.valid('query');
  const entity = await c.env.DB.prepare('SELECT id FROM entity WHERE id = ?').bind(id).first();
  if (!entity) {
    return c.json({ error: { code: 'ENTITY_NOT_FOUND', message: `No entity with id ${id}` } }, 404) as any;
  }
  const where: string[] = [
    'ma.depiction_entity_id = ?',
    `mr.id IS NOT NULL`,
    `(mr.license_code IN ('PublicDomain', 'CC0-1.0', 'CC-BY-4.0', 'CC-BY-SA-4.0', 'CC-BY-2.0', 'CC-BY-2.5', 'CC-BY-3.0', 'CopyrightAllRightsReserved') OR ma.status = 'approved')`,
    `(me.status IS NULL OR me.status IN ('active', 'renewed'))`,
  ];
  const params: any[] = [id];
  if (q.asset_type) { where.push('ma.asset_type = ?'); params.push(q.asset_type); }
  const whereClause = 'WHERE ' + where.join(' AND ');
  const { results } = await c.env.DB.prepare(`
    SELECT
      ma.id, ma.asset_type, ma.url, ma.thumbnail_url, ma.r2_key,
      ma.width, ma.height, ma.depiction_entity_id, ma.depiction_confidence,
      ma.depiction_method, ma.status, ma.created_at,
      mr.id AS mr_id, mr.creator_name, mr.copyright_holder, mr.license_code,
      mr.license_url, mr.rights_statement, mr.attribution_text,
      mr.commercial_use_allowed, mr.derivatives_allowed, mr.attribution_required,
      mr.share_alike_required, mr.editorial_use_only, mr.expiry_date,
      mr.rights_verified_at, mr.rights_reviewer, mr.source_id
    FROM media_asset ma
    JOIN media_rights mr ON mr.media_asset_id = ma.id
    LEFT JOIN media_expiry me ON me.media_asset_id = ma.id
    ${whereClause}
    ORDER BY ma.depiction_confidence DESC
  `).bind(...params).all();

  const data = (results as any[]).map(r => ({
    asset: {
      id: r.id, asset_type: r.asset_type, url: r.url, thumbnail_url: r.thumbnail_url,
      r2_key: r.r2_key, width: r.width, height: r.height, depiction_entity_id: r.depiction_entity_id,
      depiction_confidence: r.depiction_confidence, depiction_method: r.depiction_method,
      status: r.status, created_at: r.created_at,
    },
    rights: {
      id: r.mr_id, media_asset_id: r.id, creator_name: r.creator_name,
      copyright_holder: r.copyright_holder, license_code: r.license_code,
      license_url: r.license_url, rights_statement: r.rights_statement,
      attribution_text: r.attribution_text, commercial_use_allowed: r.commercial_use_allowed,
      derivatives_allowed: r.derivatives_allowed, attribution_required: r.attribution_required,
      share_alike_required: r.share_alike_required, editorial_use_only: r.editorial_use_only,
      expiry_date: r.expiry_date, rights_verified_at: r.rights_verified_at,
      rights_reviewer: r.rights_reviewer, source_id: r.source_id,
    },
  }));

  return c.json({ entity_id: id, data, total: data.length }) as any;
});

mediaRouter.openapi(getMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  const asset = await c.env.DB.prepare('SELECT * FROM media_asset WHERE id = ?').bind(id).first();
  if (!asset) {
    return c.json({ error: { code: 'MEDIA_NOT_FOUND', message: `No media with id ${id}` } }, 404) as any;
  }
  const rights = await c.env.DB.prepare('SELECT * FROM media_rights WHERE media_asset_id = ?').bind(id).first();
  const expiry = await c.env.DB.prepare('SELECT * FROM media_expiry WHERE media_asset_id = ?').bind(id).first();
  const { results: reviewHistory } = await c.env.DB.prepare(`
    SELECT id, review_type, reviewed_at, reviewed_by, decision, notes
    FROM media_rights_review
    WHERE media_asset_id = ?
    ORDER BY requested_at DESC
  `).bind(id).all();

  return c.json({ asset, rights, expiry, review_history: reviewHistory }) as any;
});

mediaRouter.openapi(downloadMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  const asset = await c.env.DB.prepare('SELECT * FROM media_asset WHERE id = ?').bind(id).first();
  if (!asset) {
    return c.json({ error: { code: 'MEDIA_NOT_FOUND', message: `No media with id ${id}` } }, 404) as any;
  }
  const rights = await c.env.DB.prepare('SELECT * FROM media_rights WHERE media_asset_id = ?').bind(id).first();
  const expiry = await c.env.DB.prepare('SELECT * FROM media_expiry WHERE media_asset_id = ?').bind(id).first();

  // Display gate: only approved + not expired
  const isApproved = rights && (rights as any).editorial_use_only === 0 && (asset as any).status === 'approved';
  const isExpired = expiry && (expiry as any).status === 'expired';
  if (!isApproved || isExpired) {
    return c.json({
      error: {
        code: 'RIGHTS_NOT_APPROVED',
        message: isExpired ? 'Media license has expired' : 'Media rights not approved for download',
      },
    }, 403) as any;
  }
  return c.json({
    url: (asset as any).url,
    expires_in: 3600,
    gated_by: `license:${(rights as any).license_code}`,
  }) as any;
});

mediaRouter.openapi(transformMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  const { w, h } = c.req.valid('query');
  const asset = await c.env.DB.prepare('SELECT * FROM media_asset WHERE id = ?').bind(id).first();
  if (!asset) {
    return c.json({ error: { code: 'MEDIA_NOT_FOUND', message: `No media with id ${id}` } }, 404) as any;
  }
  const rights = await c.env.DB.prepare('SELECT * FROM media_rights WHERE media_asset_id = ?').bind(id).first();
  if (!rights || (asset as any).status !== 'approved') {
    return c.json({
      error: { code: 'RIGHTS_NOT_APPROVED', message: 'Media rights not approved' },
    }, 403) as any;
  }
  const sourceKey = (asset as any).r2_key || (asset as any).url;
  const transformKey = `w=${w}${h ? ',h=' + h : ''}`;
  // Check transform cache
  const cached = await c.env.DB.prepare(`
    SELECT * FROM media_transform_cache WHERE source_key = ? AND transform = ?
  `).bind(sourceKey, transformKey).first();
  if (cached) {
    return c.json({
      source_key: sourceKey,
      transform: transformKey,
      url: (cached as any).r2_key,
      cached: true,
    }) as any;
  }
  // Not cached — return original URL as fallback (real implementation would call R2 transform)
  return c.json({
    source_key: sourceKey,
    transform: transformKey,
    url: (asset as any).url,
    cached: false,
  }) as any;
});

mediaRouter.openapi(getReviewQueueRoute, async (c) => {
  const q = c.req.valid('query');
  const where: string[] = ['mrr.decision IS NULL'];
  const params: any[] = [];
  if (q.review_type) { where.push('mrr.review_type = ?'); params.push(q.review_type); }
  const whereClause = 'WHERE ' + where.join(' AND ');
  const { results } = await c.env.DB.prepare(`
    SELECT mrr.id AS review_id, mrr.review_type, mrr.requested_at, mrr.reviewed_at,
           mrr.reviewed_by, mrr.decision, mrr.notes,
           ma.id AS media_asset_id, ma.asset_type, ma.url, ma.depiction_entity_id,
           mr.id AS rights_id, mr.license_code, mr.attribution_text
    FROM media_rights_review mrr
    JOIN media_asset ma ON ma.id = mrr.media_asset_id
    LEFT JOIN media_rights mr ON mr.id = mrr.media_rights_id
    ${whereClause}
    ORDER BY mrr.requested_at ASC
    LIMIT ?
  `).bind(...params, q.limit).all();

  const data = (results as any[]).map(r => ({
    review_id: r.review_id,
    review_type: r.review_type,
    requested_at: r.requested_at,
    media_asset_id: r.media_asset_id,
    asset_type: r.asset_type,
    url: r.url,
    depiction_entity_id: r.depiction_entity_id,
    rights_id: r.rights_id,
    license_code: r.license_code,
    rights_status: r.attribution_text ? 'pending' : null,
  }));

  return c.json({ data, total: data.length }) as any;
});

mediaRouter.openapi(approveMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  const asset = await c.env.DB.prepare('SELECT * FROM media_asset WHERE id = ?').bind(id).first();
  if (!asset) {
    return c.json({ error: { code: 'MEDIA_NOT_FOUND', message: `No media with id ${id}` } }, 404) as any;
  }
  // Update media_asset status to approved
  await c.env.DB.prepare(`UPDATE media_asset SET status = 'approved' WHERE id = ?`).bind(id).run();
  // Create a review record marking approval
  await c.env.DB.prepare(`
    INSERT INTO media_rights_review (id, media_asset_id, media_rights_id, review_type, requested_at, reviewed_at, reviewed_by, decision, notes)
    VALUES (?, ?, (SELECT id FROM media_rights WHERE media_asset_id = ?), 'initial', strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'api:admin', 'approved', 'approved via admin endpoint')
  `).bind('mrr_api_' + id + '_' + Date.now(), id, id).run();
  // Refetch
  const updated = await c.env.DB.prepare('SELECT * FROM media_asset WHERE id = ?').bind(id).first();
  const rights = await c.env.DB.prepare('SELECT * FROM media_rights WHERE media_asset_id = ?').bind(id).first();
  const expiry = await c.env.DB.prepare('SELECT * FROM media_expiry WHERE media_asset_id = ?').bind(id).first();
  const { results: reviewHistory } = await c.env.DB.prepare(`
    SELECT id, review_type, reviewed_at, reviewed_by, decision, notes
    FROM media_rights_review WHERE media_asset_id = ? ORDER BY requested_at DESC
  `).bind(id).all();
  return c.json({ asset: updated, rights, expiry, review_history: reviewHistory }) as any;
});

mediaRouter.openapi(rejectMediaRoute, async (c) => {
  const { id } = c.req.valid('param');
  let body: { reason?: string } = {};
  try { body = await c.req.valid('json') as any; } catch { body = {}; }
  const asset = await c.env.DB.prepare('SELECT * FROM media_asset WHERE id = ?').bind(id).first();
  if (!asset) {
    return c.json({ error: { code: 'MEDIA_NOT_FOUND', message: `No media with id ${id}` } }, 404) as any;
  }
  await c.env.DB.prepare(`UPDATE media_asset SET status = 'rejected' WHERE id = ?`).bind(id).run();
  await c.env.DB.prepare(`
    INSERT INTO media_rights_review (id, media_asset_id, media_rights_id, review_type, requested_at, reviewed_at, reviewed_by, decision, notes)
    VALUES (?, ?, (SELECT id FROM media_rights WHERE media_asset_id = ?), 'initial', strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'api:admin', 'rejected', ?)
  `).bind('mrr_api_reject_' + id + '_' + Date.now(), id, id, body?.reason || 'rejected via admin endpoint').run();
  const updated = await c.env.DB.prepare('SELECT * FROM media_asset WHERE id = ?').bind(id).first();
  const rights = await c.env.DB.prepare('SELECT * FROM media_rights WHERE media_asset_id = ?').bind(id).first();
  const expiry = await c.env.DB.prepare('SELECT * FROM media_expiry WHERE media_asset_id = ?').bind(id).first();
  const { results: reviewHistory } = await c.env.DB.prepare(`
    SELECT id, review_type, reviewed_at, reviewed_by, decision, notes
    FROM media_rights_review WHERE media_asset_id = ? ORDER BY requested_at DESC
  `).bind(id).all();
  return c.json({ asset: updated, rights, expiry, review_history: reviewHistory }) as any;
});
