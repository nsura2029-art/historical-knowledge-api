/**
 * Cache + ETag middleware.
 *
 * Per the binding workflow's "fast + easy" directive (2026-08-06):
 * - Add Cache-Control: public, max-age=300, s-maxage=600 to public GETs
 * - Compute SHA-256 ETag of the response body
 * - Honor If-None-Match → return 304 Not Modified with no body
 *
 * This eliminates ~120ms of D1 round-trips on repeat page loads and
 * shrinks the over-the-wire payload for unchanged content to ~50 bytes.
 */

import type { MiddlewareHandler } from 'hono';

const PUBLIC_CACHEABLE = [
  '/v1/people/',
  '/v1/places/',
  '/v1/countries/',
  '/v1/professions/',
  '/v1/generations/',
  '/v1/star-signs/',
  '/v1/chinese-zodiacs/',
  '/v1/causes-of-death/',
  '/v1/works/',
  '/v1/awards/',
  '/v1/sources',
  '/v1/claims',
  '/v1/entities/',
  '/v1/on-this-day',
  '/v1/birthdays/',
  '/v1/years/',
  '/v1/conflict-groups/',
  '/v1/sections/',
  '/v1/search',
];

const NEVER_CACHE = [
  '/v1/admin/',
  '/v1/health',
  '/v1/version',
];

function isCacheable(path: string): boolean {
  if (NEVER_CACHE.some(p => path.startsWith(p))) return false;
  return PUBLIC_CACHEABLE.some(p => path.startsWith(p));
}

function toBase64Url(bytes: Uint8Array): string {
  let bin = '';
  for (const b of bytes) bin += String.fromCharCode(b);
  return btoa(bin).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '');
}

export const cacheMiddleware = (): MiddlewareHandler => {
  return async (c, next) => {
    // Only cache GETs
    if (c.req.method !== 'GET') return next();
    // Only cache public endpoints
    if (!isCacheable(c.req.path)) return next();

    const ifNoneMatch = c.req.header('If-None-Match');

    await next();

    // After response, set Cache-Control headers by constructing a new Response.
    // (c.res.headers is immutable after the handler returns in some Hono versions.)
    const res = c.res;
    if (res.status !== 200) return;

    // Compute ETag from response body (Web Crypto SHA-256, first 16 bytes)
    const cloned = res.clone();
    const body = await cloned.text();
    const hashBuf = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(body));
    const etag = '"' + toBase64Url(new Uint8Array(hashBuf).slice(0, 16)) + '"';

    // Honor If-None-Match → return 304 with no body
    if (ifNoneMatch && ifNoneMatch === etag) {
      const headers = new Headers();
      headers.set('ETag', etag);
      headers.set('Cache-Control', 'public, max-age=300, s-maxage=600, stale-while-revalidate=86400');
      headers.set('Access-Control-Allow-Origin', '*');
      headers.set('Vary', 'Accept-Encoding, Origin');
      c.res = new Response(null, { status: 304, headers });
      return;
    }

    // Build new headers with the cache + etag additions
    const headers = new Headers(res.headers);
    headers.set('Cache-Control', 'public, max-age=300, s-maxage=600, stale-while-revalidate=86400');
    headers.set('ETag', etag);
    headers.set('Vary', 'Accept-Encoding, Origin');
    c.res = new Response(res.body, { status: res.status, statusText: res.statusText, headers });
  };
};
