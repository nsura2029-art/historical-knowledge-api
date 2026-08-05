/**
 * v1 router aggregator. Add new v1/* routes here.
 */

import { OpenAPIHono } from '@hono/zod-openapi';
import type { AppEnv } from '../../bindings.js';
import { healthRouter } from './health.js';
import { versionRouter } from './version.js';
import { peopleRouter } from './people.js';
import { personDetailRouter } from './person-detail.js';
import { facetsRouter } from './facets.js';
import { birthdaysRouter } from './birthdays.js';

export const v1Router = new OpenAPIHono<AppEnv>();

v1Router.route('/', healthRouter);
v1Router.route('/', versionRouter);
v1Router.route('/', peopleRouter);
v1Router.route('/', personDetailRouter);
v1Router.route('/', facetsRouter);
v1Router.route('/', birthdaysRouter);
