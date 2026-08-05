/**
 * Typed Cloudflare Bindings for the Historical Knowledge Platform Worker.
 * Per AGENT-INSTRUCTIONS.md §5: all bindings must be explicitly typed and
 * accessed only via `c.env` (no `any`).
 */

export type Bindings = {
  DB: D1Database;
  RAW_BUCKET: R2Bucket;
  INGEST_QUEUE: Queue;
  CACHE: KVNamespace;
  VECTORIZE?: VectorizeIndex; // TASK-014 (deferred — provisioning pending)
  API_RATE_LIMITER?: RateLimit;
  ENVIRONMENT: 'local' | 'preview' | 'dev' | 'production';
  COMMIT_SHA?: string; // injected at build time via wrangler `[version_metadata]`
  VERSION?: string; // injected at build time
  DEPLOYED_AT?: string; // injected at build time
};

export type Actor = {
  type: 'public' | 'user' | 'editor' | 'service';
  id: string;
};

export type AppEnv = {
  Bindings: Bindings;
  Variables: {
    requestId: string;
    actor?: Actor;
  };
};

/**
 * The set of binding names that the Worker can detect at startup.
 * Used by /v1/health and /v1/version to report which bindings are present.
 */
export const BINDING_NAMES = [
  'DB',
  'RAW_BUCKET',
  'INGEST_QUEUE',
  'CACHE',
  'VECTORIZE',
  'API_RATE_LIMITER',
] as const;
export type BindingName = (typeof BINDING_NAMES)[number];
