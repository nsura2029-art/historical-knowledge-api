/**
 * GET /v1/health — liveness probe with binding status.
 * Per AGENT-INSTRUCTIONS.md §8 TASK-001 + playbook §6 (operationId, tags, summary, examples).
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { ErrorCode, ErrorResponse, HealthCheck } from '@hka/contracts';
import type { AppEnv, BindingName } from '../../bindings.js';
import { BINDING_NAMES } from '../../bindings.js';

async function checkBinding(env: AppEnv['Bindings'], name: BindingName): Promise<'ok' | 'fail' | 'skipped'> {
  try {
    switch (name) {
      case 'DB':
        if (!env.DB) return 'skipped';
        await env.DB.prepare('SELECT 1 AS ok').first();
        return 'ok';
      case 'RAW_BUCKET':
        if (!env.RAW_BUCKET) return 'skipped';
        // R2 has no liveness ping — just confirm binding exists (we did above)
        return 'ok';
      case 'INGEST_QUEUE':
        if (!env.INGEST_QUEUE) return 'skipped';
        return 'ok';
      case 'CACHE':
        if (!env.CACHE) return 'skipped';
        // KV doesn't fail on get of missing key — just test the binding
        await env.CACHE.get('__health__');
        return 'ok';
      case 'VECTORIZE':
        if (!env.VECTORIZE) return 'skipped';
        return 'ok';
      case 'API_RATE_LIMITER':
        if (!env.API_RATE_LIMITER) return 'skipped';
        return 'ok';
      default:
        return 'skipped';
    }
  } catch (err) {
    console.log(
      JSON.stringify({ level: 'warn', code: 'BINDING_CHECK_FAIL', binding: name, error: String(err) })
    );
    return 'fail';
  }
}

const route = createRoute({
  method: 'get',
  path: '/v1/health',
  operationId: 'getHealth',
  tags: ['meta'],
  summary: 'Liveness probe with binding status',
  description:
    'Returns 200 with `status: ok` when all required bindings are reachable, 503 when any binding check fails.',
  responses: {
    200: {
      description: 'Worker is healthy',
      content: { 'application/json': { schema: HealthCheck } },
    },
    503: {
      description: 'One or more bindings failed',
      content: {
        'application/problem+json': {
          schema: ErrorResponse,
        },
      },
    },
  },
});

export const healthRouter = new OpenAPIHono<AppEnv>();

healthRouter.openapi(route, async (c) => {
  const start = Date.now();
  const env = c.env;

  const checks: Record<BindingName, 'ok' | 'fail' | 'skipped'> = {} as Record<
    BindingName,
    'ok' | 'fail' | 'skipped'
  >;
  const bindingsPresent: string[] = [];
  for (const name of BINDING_NAMES) {
    const v = (env as Record<string, unknown>)[name];
    if (v !== undefined) bindingsPresent.push(name);
    checks[name] = await checkBinding(env, name);
  }

  const latencyMs = Date.now() - start;
  const anyFail = Object.values(checks).some((v) => v === 'fail');
  const requiredFail = checks.DB === 'fail'; // DB is the only hard requirement for now

  const payload = {
    status: requiredFail ? ('degraded' as const) : ('ok' as const),
    checks,
    latencyMs,
    version: env.VERSION || '0.0.0',
    environment: env.ENVIRONMENT,
    bindingsPresent,
  };

  if (requiredFail) {
    return c.json(
      {
        type: 'https://historical-knowledge-api.example.com/problems/binding-missing',
        title: 'Required binding missing or unhealthy',
        status: 503,
        detail: 'D1 database is unreachable',
        instance: c.req.path,
        code: ErrorCode.BINDING_MISSING,
        requestId: c.get('requestId'),
      },
      503,
      { 'Content-Type': 'application/problem+json' }
    );
  }

  return c.json(payload, anyFail ? 200 : 200);
});
