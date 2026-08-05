/**
 * GET /v1/version — Worker version + commit + environment info.
 * Per AGENT-INSTRUCTIONS.md §8 TASK-001 + playbook §6.
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { VersionInfo } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import { BINDING_NAMES } from '../../bindings.js';

const route = createRoute({
  method: 'get',
  path: '/v1/version',
  operationId: 'getVersion',
  tags: ['meta'],
  summary: 'Worker version + commit + environment',
  description: 'Returns the deployed Worker version, git SHA, environment, and detected bindings.',
  responses: {
    200: {
      description: 'Version info',
      content: { 'application/json': { schema: VersionInfo } },
    },
  },
});

export const versionRouter = new OpenAPIHono<AppEnv>();

versionRouter.openapi(route, async (c) => {
  const env = c.env;
  const bindingsPresent: string[] = [];
  for (const name of BINDING_NAMES) {
    const v = (env as Record<string, unknown>)[name];
    if (v !== undefined) bindingsPresent.push(name);
  }

  return c.json({
    version: env.VERSION || '0.0.1',
    sha: env.COMMIT_SHA || 'dev',
    environment: env.ENVIRONMENT,
    deployedAt: env.DEPLOYED_AT || new Date().toISOString(),
    compatibilityDate: '2026-08-01',
    bindings: bindingsPresent,
  });
});
