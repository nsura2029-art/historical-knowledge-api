/**
 * GET /v1/birthdays/{mm}/{dd} — people born on this day.
 * Per famous-people-platform-spec.md v2.0 §8.1
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { BirthdaysParams, BirthdaysResponse, RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';
import { getPeopleBornOn } from '../../repositories/people.js';

const route = createRoute({
  method: 'get',
  path: '/v1/birthdays/{mm}/{dd}',
  operationId: 'getBirthdays',
  tags: ['people'],
  summary: 'People born on a given day of the year',
  description: 'Returns a list of famous people born on the given month/day, ordered by popularity.',
  request: {
    params: BirthdaysParams,
  },
  responses: {
    200: {
      description: 'List of people born on the given day',
      content: { 'application/json': { schema: BirthdaysResponse } },
    },
    400: {
      description: 'Invalid date',
      content: { 'application/json': { schema: RefDocError } },
    },
  },
});

export const birthdaysRouter = new OpenAPIHono<AppEnv>();

birthdaysRouter.openapi(route, async (c) => {
  const requestId = c.get('requestId');
  const { mm, dd } = c.req.valid('param');

  // Validate
  if (mm < 1 || mm > 12) {
    return c.json(
      { error: { code: 'INVALID_MONTH', message: 'mm must be 1-12', requestId, details: [{ field: 'mm', message: 'must be 1-12' }] } },
      400
    ) as any;
  }
  if (dd < 1 || dd > 31) {
    return c.json(
      { error: { code: 'INVALID_DAY', message: 'dd must be 1-31', requestId, details: [{ field: 'dd', message: 'must be 1-31' }] } },
      400
    ) as any;
  }

  const result = await getPeopleBornOn(c.env.DB, mm, dd);
  const body = {
    mm,
    dd,
    people: result.people,
    total_count: result.total_count,
  };
  return c.json(body) as any;
});
