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
import { searchRouter } from './search.js';
import { entitiesRouter } from './entities.js';
import { adminRouter } from './admin.js';
import { facetsV2Router } from './facets-v2.js';
import { timelineRouter } from './timeline.js';
import { yearsRouter } from './years.js';
import { relatedRouter } from './related.js';
import { referencesRouter } from './references.js';
import { onThisDayRouter } from './on-this-day.js';
import { claimsRouter } from './claims.js';
import { sourcesRouter } from './sources.js';
import { mediaRouter } from './media.js';
import { biographyRouter } from './biography.js';
import { galleryRouter } from './gallery.js';

export const v1Router = new OpenAPIHono<AppEnv>();

v1Router.route('/', healthRouter);
v1Router.route('/', versionRouter);
v1Router.route('/', peopleRouter);
v1Router.route('/', personDetailRouter);
v1Router.route('/', facetsRouter);
v1Router.route('/', facetsV2Router);
v1Router.route('/', birthdaysRouter);
v1Router.route('/', searchRouter);
v1Router.route('/', entitiesRouter);
v1Router.route('/', adminRouter);
v1Router.route('/', timelineRouter);
v1Router.route('/', yearsRouter);
v1Router.route('/', relatedRouter);
v1Router.route('/', referencesRouter);
v1Router.route('/', onThisDayRouter);
v1Router.route('/', claimsRouter);
v1Router.route('/', sourcesRouter);
v1Router.route('/', mediaRouter);
v1Router.route('/', biographyRouter);
v1Router.route('/', galleryRouter);
