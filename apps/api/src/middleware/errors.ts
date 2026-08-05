/**
 * Error handling middleware.
 *
 * Per AGENT-INSTRUCTIONS.md §7: every error response is `application/problem+json`
 * with the canonical shape. Every error is logged with structured fields.
 *
 * Never leaks stack traces to clients. Logs them with requestId for tracing.
 */

import type { Context, MiddlewareHandler } from 'hono';
import { HTTPException } from 'hono/http-exception';
import type { AppEnv } from '../bindings.js';
import { ErrorCode } from '@hka/contracts';

type ProblemJson = {
  type: string;
  title: string;
  status: number;
  detail: string;
  instance: string;
  code: string;
  requestId: string;
  errors?: Array<{ field?: string; message: string; code?: string }>;
};

const PROBLEM_TYPE_BASE = 'https://historical-knowledge-api.example.com/problems/';

function problemJson(
  c: Context<AppEnv>,
  opts: {
    status: number;
    title: string;
    detail: string;
    code: string;
    typeSuffix?: string;
    errors?: ProblemJson['errors'];
  }
): Response {
  const requestId = c.get('requestId') || 'req_unknown';
  const body: ProblemJson = {
    type: PROBLEM_TYPE_BASE + (opts.typeSuffix ?? opts.code.toLowerCase().replace(/_/g, '-')),
    title: opts.title,
    status: opts.status,
    detail: opts.detail,
    instance: c.req.path,
    code: opts.code,
    requestId,
    ...(opts.errors ? { errors: opts.errors } : {}),
  };

  // Structured log (no PII, no body)
  console.log(
    JSON.stringify({
      level: 'error',
      requestId,
      route: c.req.path,
      method: c.req.method,
      status: opts.status,
      code: opts.code,
    })
  );

  return c.json(body, opts.status as 400 | 401 | 403 | 404 | 405 | 422 | 429 | 500 | 502 | 503 | 504, {
    'Content-Type': 'application/problem+json',
  });
}

export const errorMiddleware = (): MiddlewareHandler<AppEnv> => {
  return async (c, next) => {
    try {
      await next();
    } catch (err) {
      if (err instanceof HTTPException) {
        // Hono's HTTPException — map to problem+json
        const status = err.status;
        const code =
          status === 400
            ? ErrorCode.VALIDATION_ERROR
            : status === 401
              ? ErrorCode.UNAUTHORIZED
              : status === 403
                ? ErrorCode.FORBIDDEN
                : status === 404
                  ? ErrorCode.NOT_FOUND
                  : status === 405
                    ? ErrorCode.METHOD_NOT_ALLOWED
                    : status === 429
                      ? ErrorCode.RATE_LIMITED
                      : ErrorCode.INTERNAL_ERROR;
        return problemJson(c, {
          status,
          title: err.message || 'HTTP error',
          detail: err.message || 'An HTTP error occurred',
          code,
        });
      }

      // Unknown error — log full stack, return generic 500
      const errObj = err as Error;
      console.error(
        JSON.stringify({
          level: 'error',
          requestId: c.get('requestId'),
          route: c.req.path,
          method: c.req.method,
          status: 500,
          code: ErrorCode.INTERNAL_ERROR,
          message: errObj?.message,
          stack: errObj?.stack,
        })
      );
      return problemJson(c, {
        status: 500,
        title: 'Internal server error',
        detail: 'An unexpected error occurred. Trace ID: ' + (c.get('requestId') || 'unknown'),
        code: ErrorCode.INTERNAL_ERROR,
      });
    }
  };
};

/** 404 fallback for unmatched routes */
export const notFoundHandler = (c: Context<AppEnv>): Response => {
  return problemJson(c, {
    status: 404,
    title: 'Not found',
    detail: `No route matches ${c.req.method} ${c.req.path}`,
    code: ErrorCode.NOT_FOUND,
  });
};
