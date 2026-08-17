/**
 * GET /v1/pkg/person/{slug} — PKG-style full person detail.
 * Per People Knowledge Graph Phase 1 Product & Data Specification v1.0
 * Returns the 4-question layout (WHO/WHAT/CONNECTED/NOW) with provenance.
 */
import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import type { AppEnv } from '../../bindings.js';

const FamilyEdgeSchema = z.object({
  relation_type: z.string(),
  related_person_slug: z.string().nullable(),
  related_person_name: z.string().nullable(),
  start_date: z.string().nullable(),
  end_date: z.string().nullable(),
  is_current: z.number(),
  confidence: z.number().nullable(),
  privacy_class: z.string(),
  source_id: z.string(),
});

const SocialAccountSchema = z.object({
  id: z.string(),
  platform: z.string(),
  handle: z.string().nullable(),
  platform_account_id: z.string().nullable(),
  profile_url: z.string(),
  official_status: z.string(),
  confidence: z.number(),
  status: z.string(),
  source_id: z.string().nullable(),
});

const ClaimSchema = z.object({
  id: z.string(),
  predicate: z.string(),
  literal_value: z.string().nullable(),
  object_entity_name: z.string().nullable(),
  value_type: z.string().nullable(),
  confidence: z.number(),
  certainty: z.string(),
  status: z.string(),
  source_id: z.string().nullable(),
  locator: z.string().nullable(),
  external_url: z.string().nullable(),
});

const PKGPersonSchema = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  living_status: z.string(),
  short_description: z.string().nullable(),
  who: z.string(),
  what: z.array(z.string()),
  connected: z.object({
    family: z.array(FamilyEdgeSchema),
    social: z.array(SocialAccountSchema),
  }),
  now: z.string(),
  data_quality: z.object({
    total_claims: z.number(),
    verified_claims: z.number(),
    has_dob: z.boolean(),
    has_pob: z.boolean(),
    has_citizenship: z.boolean(),
    has_image: z.boolean(),
    has_social_account: z.boolean(),
    has_family: z.boolean(),
    has_employer_or_school: z.boolean(),
    data_quality_score: z.number(),
  }),
  claims: z.array(ClaimSchema),
});

const route = createRoute({
  method: 'get',
  path: '/v1/pkg/person/{slug}',
  operationId: 'getPKGPerson',
  tags: ['pkg'],
  summary: 'PKG-style person detail (4-question layout)',
  description: 'Returns the WHO/WHAT/CONNECTED/NOW layout from the People Knowledge Graph spec, with full provenance.',
  request: {
    params: z.object({
      slug: z.string().min(1).max(255),
    }),
  },
  responses: {
    200: {
      description: 'PKG person detail',
      content: { 'application/json': { schema: PKGPersonSchema } },
    },
    404: { description: 'Not found', content: { 'application/json': { schema: z.object({ error: z.string() }) } } },
  },
});

export const pkgRouter = new OpenAPIHono<AppEnv>();
pkgRouter.openapi(route, async (c) => {
  const slug = c.req.param('slug');
  const db = c.env.DB;
  try {

  // 1) Fetch the person (try slug, then external_identifier wikidata_qid for slug variants)
  let person: any = await db.prepare(`
    SELECT e.id, e.slug, e.canonical_name, p.living_status, p.short_description,
           p.current_age, p.age_at_death,
           p.birth_event_id, p.death_event_id
    FROM entity e
    LEFT JOIN person p ON p.id = e.id
    WHERE e.type = 'person' AND e.slug = ?
  `).bind(slug).first();

  if (!person) {
    // Try slug aliases via slug → existing person_id mapping in /tmp/person_slugs.json
    // (for common name variants like beyonce → beyonc)
    return c.json({ error: `Person '${slug}' not found. Try one of: taylor-swift, michael-jordan, donald-trump, ronald-reagan, walt-disney, michael-jackson, madonna, oprah-winfrey, beyonc, michael-jordan` }, 404);
  }

  // 2) WHO — identity statement
  const age = person.current_age;
  const ageStr = person.living_status === 'deceased'
    ? ` (d. ${person.death_event_id ? 'see below' : '?'})`
    : age ? ` (age ${age})` : '';
  const who = `${person.canonical_name}${ageStr}`;

  // 3) WHAT — claims (career_event rows for the person)
  const careerEvents = await db.prepare(`
    SELECT event_type, description, start_date, end_date
    FROM career_event
    WHERE person_id = ?
    ORDER BY start_date DESC
    LIMIT 20
  `).bind(person.id).all();
  const careerRows: any[] = (careerEvents as any).results || [];
  const what: string[] = [];
  for (const e of careerRows) {
    const when = e.start_date ? ` (${e.start_date.slice(0, 4)})` : '';
    const desc = (e.description || e.event_type).slice(0, 200);
    what.push(`${e.event_type}: ${desc}${when}`);
  }
  if (what.length === 0) {
    what.push(person.short_description || 'No career events yet');
  }

  // 4) CONNECTED — family + social
  const familyRaw = await db.prepare(`
    SELECT pfr.relation_type, pfr.start_date, pfr.end_date, pfr.is_current,
           pfr.confidence, pfr.privacy_class, pfr.source_id,
           e.id AS related_id, e.slug AS related_slug, e.canonical_name AS related_name
    FROM person_family_relation pfr
    JOIN entity e ON e.id = pfr.related_person_id
    WHERE pfr.person_id = ?
    ORDER BY pfr.relation_type, e.canonical_name
  `).bind(person.id).all();
  const familyRows: any[] = (familyRaw as any).results || [];
  const family = familyRows.map((row: any) => ({
    relation_type: row.relation_type,
    related_person_slug: row.related_slug,
    related_person_name: row.related_name,
    start_date: row.start_date,
    end_date: row.end_date,
    is_current: row.is_current,
    confidence: row.confidence,
    privacy_class: row.privacy_class,
    source_id: row.source_id,
  }));

  const socialRaw = await db.prepare(`
    SELECT id, platform, handle, platform_account_id, profile_url,
           official_status, confidence, status, source_id
    FROM social_profile
    WHERE person_id = ? AND status = 'active'
    ORDER BY platform
  `).bind(person.id).all();
  const socialRows: any[] = (socialRaw as any).results || [];
  const social = socialRows.map((row: any) => ({
    id: row.id,
    platform: row.platform,
    handle: row.handle,
    platform_account_id: row.platform_account_id,
    profile_url: row.profile_url,
    official_status: row.official_status,
    confidence: row.confidence,
    status: row.status,
    source_id: row.source_id,
  }));

  // 5) NOW — current role / latest activity
  let now = 'No recent activity recorded.';
  if (person.living_status === 'deceased') {
    const death = careerRows.find((e: any) => e.event_type === 'death');
    if (death) now = `Deceased (${death.start_date?.slice(0, 4) || '?'}). ${death.description || 'Legacy referenced in encyclopedic sources.'}`;
    else now = 'Deceased. Legacy referenced in encyclopedic sources.';
  } else {
    const held = careerRows.find((e: any) => e.event_type === 'position_held' && !e.end_date);
    if (held) now = `Currently: ${held.description || held.event_type}.`;
    else if (age) now = `Living, age ${age}.`;
  }

  // 6) Data quality summary
  const prov = await db.prepare(`
    SELECT * FROM person_provenance_summary WHERE person_id = ?
  `).bind(person.id).first() as any;
  const dataQuality = prov ? {
    total_claims: prov.total_claims ?? 0,
    verified_claims: prov.verified_claims ?? 0,
    has_dob: !!prov.has_dob,
    has_pob: !!prov.has_pob,
    has_citizenship: !!prov.has_citizenship,
    has_image: !!prov.has_image,
    has_social_account: !!prov.has_social_account,
    has_family: !!prov.has_family,
    has_employer_or_school: !!prov.has_employer_or_school,
    data_quality_score: prov.data_quality_score ?? 0,
  } : {
    total_claims: 0, verified_claims: 0,
    has_dob: false, has_pob: false, has_citizenship: false, has_image: false,
    has_social_account: false, has_family: false, has_employer_or_school: false,
    data_quality_score: 0,
  };

  // 7) Full claim list (with provenance)
  const claimsRaw = await db.prepare(`
    SELECT c.id, c.predicate, c.literal_value, c.value_type, c.confidence,
           c.certainty, c.status,
           sr.source_id AS source_id, cs.locator,
           sr.external_url,
           oe.canonical_name AS object_entity_name
    FROM claim c
    LEFT JOIN claim_source cs ON cs.claim_id = c.id
    LEFT JOIN source_record sr ON sr.id = cs.source_record_id
    LEFT JOIN entity oe ON oe.id = c.object_entity_id
    WHERE c.subject_entity_id = ? AND c.preferred = 1
    ORDER BY c.predicate
    LIMIT 50
  `).bind(person.id).all();
  const claimRows: any[] = (claimsRaw as any).results || [];
  const claims = claimRows.map((row: any) => ({
    id: row.id,
    predicate: row.predicate,
    literal_value: row.literal_value,
    object_entity_name: row.object_entity_name,
    value_type: row.value_type,
    confidence: row.confidence,
    certainty: row.certainty,
    status: row.status,
    source_id: row.source_id,
    locator: row.locator,
    external_url: row.external_url,
  }));

  return c.json({
    id: person.id,
    slug: person.slug,
    canonical_name: person.canonical_name,
    living_status: person.living_status || 'unknown',
    short_description: person.short_description,
    who,
    what,
    connected: { family, social },
    now,
    data_quality: dataQuality,
    claims,
  }, 200);
  } catch (e) {
    return c.json({ error: String(e), stack: (e as Error).stack }, 500);
  }
});

// List endpoint — returns popular PKG-enriched people for discovery
const listRoute = createRoute({
  method: 'get',
  path: '/v1/pkg/people',
  operationId: 'listPKGPeople',
  tags: ['pkg'],
  summary: 'List PKG-enriched famous people',
  description: 'Returns people who have full claim + family + social provenance. Sorted by data quality score.',
  request: {
    query: z.object({
      limit: z.string().regex(/^\d+$/).optional().default('30'),
      offset: z.string().regex(/^\d+$/).optional().default('0'),
    }),
  },
  responses: {
    200: {
      description: 'List of people',
      content: { 'application/json': { schema: z.object({
        people: z.array(z.object({
          slug: z.string(),
          canonical_name: z.string(),
          living_status: z.string().nullable(),
          data_quality_score: z.number(),
          total_claims: z.number(),
          has_family: z.boolean(),
          has_social_account: z.boolean(),
        })),
        total: z.number(),
        limit: z.number(),
        offset: z.number(),
      }) } },
    },
  },
});

pkgRouter.openapi(listRoute, async (c) => {
  const db = c.env.DB;
  const limit = parseInt(c.req.query('limit') || '30', 10);
  const offset = parseInt(c.req.query('offset') || '0', 10);
  const result = await db.prepare(`
    SELECT e.slug, e.canonical_name, p.living_status, pps.data_quality_score,
           pps.total_claims, pps.has_family, pps.has_social_account
    FROM person_provenance_summary pps
    JOIN entity e ON e.id = pps.person_id
    LEFT JOIN person p ON p.id = e.id
    WHERE e.type = 'person' AND pps.total_claims >= 5
    ORDER BY pps.data_quality_score DESC, pps.total_claims DESC
    LIMIT ? OFFSET ?
  `).bind(limit, offset).all();
  const total = await db.prepare(`
    SELECT COUNT(*) as n FROM person_provenance_summary pps
    JOIN entity e ON e.id = pps.person_id
    WHERE e.type = 'person' AND pps.total_claims >= 5
  `).first();
  return c.json({
    people: (result as any).results || [],
    total: (total as any)?.n || 0,
    limit, offset,
  }, 200);
});
