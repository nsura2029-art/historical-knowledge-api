/**
 * Request ID middleware.
 *
 * - If the upstream provides `X-Request-Id`, preserve it.
 * - Otherwise, generate a new ULID-like ID.
 * - Always echo it back on the response as `X-Request-Id`.
 * - Always store it on `c.set('requestId', id)` for downstream handlers.
 */

import type { MiddlewareHandler } from 'hono';
import type { AppEnv } from '../bindings.js';

const REQUEST_ID_HEADER = 'X-Request-Id';

function generateRequestId(): string {
  // 16 random bytes → 32 hex chars. Sufficient entropy + URL-safe.
  const bytes = new Uint8Array(16);
  crypto.getRandomValues(bytes);
  return 'req_' + Array.from(bytes, (b) => b.toString(16).padStart(2, '0')).join('');
}

export const requestIdMiddleware = (): MiddlewareHandler<AppEnv> => {
  return async (c, next) => {
    const incoming = c.req.header(REQUEST_ID_HEADER);
    const id = incoming && incoming.length > 0 && incoming.length <= 256 ? incoming : generateRequestId();
    c.set('requestId', id);
    c.header(REQUEST_ID_HEADER, id);
    await next();
  };
};
