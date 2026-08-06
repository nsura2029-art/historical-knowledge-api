/**
 * CORS middleware — public API, allow any origin.
 *
 * Per KP-001: this is a public, read-mostly API. Any browser-based client
 * (e.g. the HKA Biography Preview at lin34omf6w6wv.space.minimax.io) should
 * be able to call us without CORS preflight failures.
 *
 * Production note: in a closed-ecosystem deployment we'd lock this down to
 * known origins. For an open historical knowledge platform, public access
 * is the point.
 */

import type { MiddlewareHandler } from 'hono';

export const corsMiddleware = (): MiddlewareHandler => {
  return async (c, next) => {
    // Always advertise that any origin is allowed
    c.header('Access-Control-Allow-Origin', '*');
    c.header('Access-Control-Allow-Methods', 'GET, POST, PUT, PATCH, DELETE, OPTIONS');
    c.header('Access-Control-Allow-Headers', 'Content-Type, Authorization, X-Request-Id, X-Admin-Token');
    c.header('Access-Control-Expose-Headers', 'X-Request-Id, ETag, Cache-Control, Link');
    c.header('Access-Control-Max-Age', '86400');

    // Short-circuit OPTIONS preflight
    if (c.req.method === 'OPTIONS') {
      return new Response(null, {
        status: 204,
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, PUT, PATCH, DELETE, OPTIONS',
          'Access-Control-Allow-Headers': 'Content-Type, Authorization, X-Request-Id, X-Admin-Token',
          'Access-Control-Max-Age': '86400',
        },
      });
    }

    await next();
  };
};
