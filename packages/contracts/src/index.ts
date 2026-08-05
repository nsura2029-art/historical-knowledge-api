/**
 * @hka/contracts — Zod schemas for the Historical Knowledge Platform API
 *
 * Source of truth for both runtime validation and OpenAPI generation.
 * Per AGENT-INSTRUCTIONS.md §6: every public route defines operationId, tags,
 * summary, request schema, response schemas and examples.
 */

import { z } from 'zod';

// Re-export people schemas (famous-people dimension)
export * from './people.js';

// ---------------------------------------------------------------------------
// Envelope
// ---------------------------------------------------------------------------

export const Meta = z.object({
  requestId: z.string().describe('Unique request ID for tracing'),
  nextCursor: z.string().nullable().optional().describe('Opaque cursor for the next page, null if no more'),
});

export const Links = z.object({
  self: z.string().describe('Canonical URL of this resource'),
  next: z.string().optional().describe('URL of the next page (if paginated)'),
  prev: z.string().optional().describe('URL of the previous page (if paginated)'),
});

export const ErrorResponse = z.object({
  type: z.string().url().describe('URI that identifies the problem type'),
  title: z.string().describe('Short, human-readable summary'),
  status: z.number().int().describe('HTTP status code'),
  detail: z.string().describe('Human-readable explanation'),
  instance: z.string().describe('URI of the specific occurrence'),
  code: z.string().describe('Machine-readable error code'),
  requestId: z.string().describe('Correlates with X-Request-Id response header'),
  errors: z
    .array(
      z.object({
        field: z.string().optional(),
        message: z.string(),
        code: z.string().optional(),
      })
    )
    .optional()
    .describe('Field-level validation errors (only for 400/422 responses)'),
});

export type ErrorResponse = z.infer<typeof ErrorResponse>;

// ---------------------------------------------------------------------------
// Pagination
// ---------------------------------------------------------------------------

export const Cursor = z
  .string()
  .min(1)
  .max(2048)
  .describe('Opaque pagination cursor. Do not parse or construct manually.');

export const PaginationParams = z.object({
  cursor: Cursor.optional().describe('Opaque cursor from a previous response'),
  limit: z.coerce.number().int().min(1).max(500).default(50).describe('Max items to return'),
});

// ---------------------------------------------------------------------------
// Health
// ---------------------------------------------------------------------------

export const HealthCheck = z.object({
  status: z.enum(['ok', 'degraded']).describe('Overall liveness status'),
  checks: z.object({
    DB: z.enum(['ok', 'fail', 'skipped']).describe('D1 database binding'),
    RAW_BUCKET: z.enum(['ok', 'fail', 'skipped']).describe('R2 bucket binding'),
    INGEST_QUEUE: z.enum(['ok', 'fail', 'skipped']).describe('Queue binding'),
    CACHE: z.enum(['ok', 'fail', 'skipped']).describe('KV binding'),
    VECTORIZE: z.enum(['ok', 'fail', 'skipped']).describe('Vectorize binding'),
    API_RATE_LIMITER: z.enum(['ok', 'fail', 'skipped']).describe('Rate limit binding'),
  }),
  latencyMs: z.number().describe('Total health-check latency in milliseconds'),
  version: z.string().describe('Worker version identifier'),
  environment: z.enum(['local', 'preview', 'dev', 'production']).describe('Deployment environment'),
  bindingsPresent: z.array(z.string()).describe('List of binding names detected in env'),
});

export type HealthCheck = z.infer<typeof HealthCheck>;

// ---------------------------------------------------------------------------
// Version
// ---------------------------------------------------------------------------

export const VersionInfo = z.object({
  version: z.string().describe('Semantic version of the deployed Worker'),
  sha: z.string().describe('Git commit SHA of the deployed build'),
  environment: z.enum(['local', 'preview', 'dev', 'production']),
  deployedAt: z.string().describe('ISO 8601 timestamp of the deploy'),
  compatibilityDate: z.string().describe('Cloudflare compatibility_date from wrangler config'),
  bindings: z.array(z.string()).describe('Available Cloudflare binding names'),
});

export type VersionInfo = z.infer<typeof VersionInfo>;

// ---------------------------------------------------------------------------
// Error codes
// ---------------------------------------------------------------------------

export const ErrorCode = {
  VALIDATION_ERROR: 'VALIDATION_ERROR',
  BINDING_MISSING: 'BINDING_MISSING',
  INVALID_ENV: 'INVALID_ENV',
  NOT_FOUND: 'NOT_FOUND',
  METHOD_NOT_ALLOWED: 'METHOD_NOT_ALLOWED',
  INTERNAL_ERROR: 'INTERNAL_ERROR',
  UPSTREAM_ERROR: 'UPSTREAM_ERROR',
  RATE_LIMITED: 'RATE_LIMITED',
  UNAUTHORIZED: 'UNAUTHORIZED',
  FORBIDDEN: 'FORBIDDEN',
} as const;

export type ErrorCode = (typeof ErrorCode)[keyof typeof ErrorCode];
