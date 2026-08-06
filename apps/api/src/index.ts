/**
 * Historical Knowledge Platform — Cloudflare Worker entry.
 *
 * Per AGENT-INSTRUCTIONS.md:
 * - Hono on Cloudflare Workers
 * - Typed Bindings on c.env (no `any`)
 * - problem+json error envelope (§7)
 * - ETag + Cache-Control on public GETs
 * - X-Request-Id on every response
 * - OpenAPI 3.1 generated from the same zod schemas
 */

import { OpenAPIHono } from '@hono/zod-openapi';
import { apiReference } from '@scalar/hono-api-reference';
import { requestIdMiddleware } from './middleware/request-id.js';
import { errorMiddleware, notFoundHandler } from './middleware/errors.js';
import { corsMiddleware } from './middleware/cors.js';
import { cacheMiddleware } from './middleware/cache.js';
import type { AppEnv } from './bindings.js';
import { v1Router } from './routes/v1/index.js';

const app = new OpenAPIHono<AppEnv>();

// Middleware (order matters: CORS FIRST so it runs even on errors, then
// cache, then request-id, then error middleware)
app.use('*', corsMiddleware());
app.use('*', cacheMiddleware());
app.use('*', requestIdMiddleware());
app.use('*', errorMiddleware());

// Root — simple landing with link map
app.get('/', (c) => {
  return c.json({
    name: 'historical-knowledge-api',
    version: c.env.VERSION || '0.0.1',
    environment: c.env.ENVIRONMENT,
    docs: '/docs',
    openapi: '/openapi.json',
    health: '/v1/health',
    version_: '/v1/version',
    requestId: c.get('requestId'),
  });
});

// /openapi.json — the generated OpenAPI 3.1 spec
app.doc('/openapi.json', {
  openapi: '3.1.0',
  info: {
    title: 'Historical Knowledge Platform API',
    version: '0.0.1',
    description:
      'Source-backed historical knowledge platform — On This Day, events, people, places, claims, sources.',
    contact: {
      name: 'Historical Knowledge Platform',
      url: 'https://github.com/nsura2029-art/historical-knowledge-api',
    },
    license: { name: 'MIT' },
  },
  servers: [
    { url: 'https://historical-knowledge-api-dev.nsura2029.workers.dev', description: 'Dev' },
    { url: 'https://historical-knowledge-api.nsura2029.workers.dev', description: 'Production' },
  ],
});

// /docs — Scalar UI
// Cast needed: the @scalar/hono-api-reference types expose Partial<ApiReferenceConfiguration>
// but the runtime accepts { url, pageTitle, theme, cdn } in practice.
app.get('/docs', apiReference({ url: '/openapi.json' } as unknown as Parameters<typeof apiReference>[0]));

// v1 routes
app.route('/', v1Router);

// 404 fallback
app.notFound(notFoundHandler);

// CORS preflight for meta routes
app.options('*', (c) => {
  return new Response(null, {
    status: 204,
    headers: {
      'Access-Control-Allow-Origin': c.req.header('Origin') || '*',
      'Access-Control-Allow-Methods': 'GET, HEAD, OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type, X-Request-Id',
      'Access-Control-Max-Age': '86400',
    },
  });
});

export default app;
