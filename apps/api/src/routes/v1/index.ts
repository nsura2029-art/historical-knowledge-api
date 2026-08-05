/**
 * v1 router aggregator. Add new v1/* routes here.
 */

import { OpenAPIHono } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';
import { healthRouter } from './health.js';
import { versionRouter } from './version.js';

export const v1Router = new OpenAPIHono<AppEnv>();

v1Router.route('/', healthRouter);
v1Router.route('/', versionRouter);
