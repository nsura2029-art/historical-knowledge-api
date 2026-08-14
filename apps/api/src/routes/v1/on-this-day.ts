/**
 * GET /v1/on-this-day/{...}
 * Per TASK-013 spec: the home anchor of the platform.
 * Two views:
 *   - today view (year-agnostic): GET /v1/on-this-day/today, /{mm-dd}
 *   - year-list view (per-year):  GET /v1/on-this-day/{yyyy-mm-dd}, /{mm-dd}?from&to
 *
 * 14 sections in the response (events + 9 categories + 4 person-level):
 *   events, births, deaths, weddings, divorces, holidays,
 *   sports, music, film_tv, tech, science, politics, royal, disasters,
 *   social, economic, cultural, religion, exploration, crime
 *
 * Tier 1 only: 1700-now. No events before 1700 returned.
 */

import { createRoute, OpenAPIHono } from '@hono/zod-openapi';
import { z } from 'zod';
import { RefDocError } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';

const CategoryEnum = z.enum([
  'political', 'scientific', 'technological', 'environmental',
  'cultural', 'religion', 'economic', 'sports', 'exploration',
  'social', 'royal', 'crime',
]);

// Schema for an otd_event in a section
const OtdEventSchema = z.object({
  id: z.string(),
  year: z.number().int(),
  date_display: z.string(),                     // "August 5, 1858"
  start_date: z.string(),                       // "1858-08-05"
  title: z.string(),
  description: z.string().nullable().optional(),
  category: CategoryEnum,
  place_name: z.string().nullable().optional(),
  country_code: z.string().nullable().optional(),
  hero_image: z.object({
    r2_url: z.string(),
    credit: z.string(),
  }).nullable().optional(),
  source: z.object({
    tier: z.enum(['A', 'B', 'C', 'D', 'E']),
    source_name: z.string(),
    url: z.string().nullable(),
  }),
  related_people: z.array(z.object({
    id: z.string(),
    canonical_name: z.string(),
    url: z.string(),
  })).default([]),
  url: z.string(),                              // /v1/on-this-day/events/{id}
});

const PersonSummarySchema = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  year: z.number().int(),
  description: z.string().nullable().optional(),
  url: z.string(),                              // /v1/people/{slug}
});

const WeddingSchema = z.object({
  id: z.string(),
  year: z.number().int(),
  person_1: PersonSummarySchema,
  person_2: PersonSummarySchema,
  description: z.string().nullable().optional(),
  url: z.string(),
});

const HolidaySchema = z.object({
  id: z.number().int(),
  name: z.string(),
  country_code: z.string(),
  country_name: z.string(),
  subdivision_code: z.string().nullable().optional(),
  legal_status: z.string(),                     // 'public', 'de_facto', 'observance'
  scope_level: z.string(),                      // 'country', 'state', 'local'
  category: z.string(),                         // 'public_holiday', 'observance', 'school_holiday'
  description: z.string().nullable().optional(),
  url: z.string().optional(),                   // /v1/countries/{cca2}/holidays
});

// Empty section placeholder (returned when no items in a section)
const Section = z.array(z.unknown());           // varied shape per section

// === Response schema (defined before routes that reference it) ===

const OnThisDayResponse = z.object({
  date: z.string(),                              // "2026-08-05" or "08-05"
  mm_dd: z.string(),
  year: z.number().int().nullable(),             // only set in yyyy-mm-dd view
  total_sections: z.number().int(),
  sections: z.object({
    events: z.array(OtdEventSchema),
    births: z.array(PersonSummarySchema),
    deaths: z.array(PersonSummarySchema),
    weddings: z.array(WeddingSchema),
    divorces: z.array(PersonSummarySchema),
    holidays: z.array(HolidaySchema),
    sports: z.array(OtdEventSchema),
    science: z.array(OtdEventSchema),
    technology: z.array(OtdEventSchema),
    politics: z.array(OtdEventSchema),
    cultural: z.array(OtdEventSchema),
    religion: z.array(OtdEventSchema),
    economic: z.array(OtdEventSchema),
    royal: z.array(OtdEventSchema),
    disasters: z.array(OtdEventSchema),
    social: z.array(OtdEventSchema),
    exploration: z.array(OtdEventSchema),
    crime: z.array(OtdEventSchema),
  }),
  _links: z.object({
    self: z.string(),
    year_view: z.string().nullable(),
    year_range: z.string().nullable(),
  }),
});

// === Routes ===

// 1. /v1/on-this-day/today
const todayRoute = createRoute({
  method: 'get',
  path: '/v1/on-this-day/today',
  operationId: 'getOnThisDayToday',
  tags: ['on-this-day'],
  summary: 'On This Day — today (year-agnostic composite)',
  description: 'Returns a composite of events, births, deaths, weddings, divorces, holidays, and per-category events for today. Top 5 per section by default. Tier 1: 1700-now only.',
  request: {
    query: z.object({
      country: z.string().length(2).optional(),  // cca2 filter for personal section
      category: CategoryEnum.optional(),          // filter events to one category
      limit: z.coerce.number().int().min(1).max(20).default(5),
    }),
  },
  responses: {
    200: {
      description: 'OK',
      content: { 'application/json': { schema: OnThisDayResponse } },
    },
  },
});

// 2. /v1/on-this-day/{mm_dd}
const mmddRoute = createRoute({
  method: 'get',
  path: '/v1/on-this-day/{mm_dd}',
  operationId: 'getOnThisDayByMmDd',
  tags: ['on-this-day'],
  summary: 'On This Day — for a fixed mm-dd (year-agnostic)',
  description: 'Same as /today but for any month-day. Optional year range filter via ?from&to.',
  request: {
    params: z.object({
      mm_dd: z.string().regex(/^\d{2}-\d{2}$/),
    }),
    query: z.object({
      from: z.coerce.number().int().min(1700).max(2100).optional(),
      to: z.coerce.number().int().min(1700).max(2100).optional(),
      country: z.string().length(2).optional(),
      category: CategoryEnum.optional(),
      limit: z.coerce.number().int().min(1).max(50).default(5),
    }),
  },
  responses: {
    200: {
      description: 'OK',
      content: { 'application/json': { schema: OnThisDayResponse } },
    },
    400: { description: 'Invalid mm-dd', content: { 'application/json': { schema: RefDocError } } },
  },
});

// 3. /v1/on-this-day/date/{yyyy_mm_dd}  (year-list view)
const yyyymmddRoute = createRoute({
  method: 'get',
  path: '/v1/on-this-day/date/{yyyy_mm_dd}',
  operationId: 'getOnThisDayByDate',
  tags: ['on-this-day'],
  summary: 'On This Day — for a specific date (year-list view)',
  description: 'All events for that exact date, sorted by relevance. Empty arrays on dates with no data.',
  request: {
    params: z.object({
      yyyy_mm_dd: z.string().regex(/^\d{4}-\d{2}-\d{2}$/),
    }),
    query: z.object({
      category: CategoryEnum.optional(),
      limit: z.coerce.number().int().min(1).max(100).default(50),
      offset: z.coerce.number().int().min(0).default(0),
    }),
  },
  responses: {
    200: {
      description: 'OK',
      content: { 'application/json': { schema: OnThisDayResponse } },
    },
    400: { description: 'Invalid date', content: { 'application/json': { schema: RefDocError } } },
  },
});

export const onThisDayRouter = new OpenAPIHono<AppEnv>();

// === Helper: build the response from mm-dd (or yyyy-mm-dd) ===

interface SectionFiller {
  mm_dd: string;
  year_filter?: { from?: number; to?: number };
  country_filter?: string;
  category_filter?: string;
  limit: number;
  request_id: string;
  env: AppEnv['Bindings'];
}

// Map entity_event.event_type → on-this-day section category
// (entity_event stores: founding, political, scientific, personal_life, death, etc.)
// on-this-day uses: political, scientific, technological, environmental, cultural,
//                   religion, economic, sports, exploration, social, royal, crime
const EVENT_TYPE_TO_CATEGORY: Record<string, string> = {
  'political': 'political',
  'scientific': 'scientific',
  'travel': 'exploration',
  'creative': 'cultural',
  'career': 'cultural',  // generic career → cultural bucket
  'legal': 'crime',
  'controversy': 'crime',
  'public_appearance': 'social',
  'founding': 'economic',
  'publication': 'cultural',
  'education': 'cultural',
  'award': 'cultural',
  'athletic': 'sports',  // not in our event_type list, but mapped just in case
  'death': 'social',    // person-level, will be routed via entity_type
  'birth': 'social',    // person-level, will be routed via entity_type
  'personal_life': 'social',
};

// Reverse mapping: on-this-day category → list of entity_event.event_type values
// Used for the ?category=X filter
const CATEGORY_TO_EVENT_TYPES: Record<string, string[]> = {
  'political': ['political'],
  'scientific': ['scientific'],
  'cultural': ['creative', 'career', 'publication', 'education', 'award'],
  'economic': ['founding', 'legal'],
  'sports': ['athletic'],
  'social': ['public_appearance', 'personal_life'],
  'exploration': ['travel'],
  'crime': ['legal', 'controversy'],
  'technological': [],  // no direct event_type; could be tagged as scientific
  'environmental': [],  // no direct event_type
  'religion': [],
  'royal': [],
};

async function fillSections(opts: SectionFiller) {
  const { mm_dd, year_filter, country_filter, category_filter, limit, env } = opts;

  // Query entity_event for events on this mm-dd (with year >= 1700)
  // mm-dd matching: event_date is "YYYY-MM-DD", substr(6,5) = "MM-DD"
  // For YEAR-precision events (event_date is NULL), we use event_year's mm-dd from a different column
  // but the year-only events don't have an event_date, so we can't include them in mm-dd queries
  let eventSql = `SELECT ev.id, ev.entity_id, ev.event_year AS year, ev.event_date AS start_date,
                         ev.event_type, ev.category, ev.title, ev.body AS description,
                         ev.confidence, ev.source_id, ev.source_section AS source_url,
                         e.type AS entity_type
                  FROM entity_event ev
                  JOIN entity e ON e.id = ev.entity_id
                  WHERE ev.event_date IS NOT NULL
                    AND substr(ev.event_date, 6, 5) = ?
                    AND ev.event_year >= 1700
                    AND e.status = 'published'`;
  const eventBindings: any[] = [mm_dd];
  if (year_filter?.from) { eventSql += ' AND ev.event_year >= ?'; eventBindings.push(year_filter.from); }
  if (year_filter?.to)   { eventSql += ' AND ev.event_year <= ?'; eventBindings.push(year_filter.to); }
  if (category_filter) {
    // Map on-this-day category to entity_event event_types (one category → multiple event_types)
    const eventTypes = CATEGORY_TO_EVENT_TYPES[category_filter] || [category_filter];
    if (eventTypes.length === 0) {
      // No matching event types — set impossible condition and return early with empty results
      // but still go through the full flow so all section keys are populated
      eventSql += ` AND ev.event_type = '__no_match__'`;
    } else {
      const placeholders = eventTypes.map(() => '?').join(',');
      eventSql += ` AND ev.event_type IN (${placeholders})`;
      eventBindings.push(...eventTypes);
    }
  }
  // Country filter: match place entities with this country_code, OR person entities with birthplace/death_place/residence in this country
  // Note: orgs are excluded from country filter (no direct country link yet)
  if (country_filter) {
    eventSql += ` AND (
      ev.entity_id IN (SELECT p.id FROM place p WHERE p.country_code = ?)
      OR ev.entity_id IN (
        SELECT ppr.person_id FROM person_place_relation ppr
        JOIN place p ON p.id = ppr.place_id
        WHERE p.country_code = ? AND ppr.relation_type IN ('birthplace', 'death_place', 'residence', 'work_location')
      )
    )`;
    eventBindings.push(country_filter, country_filter);
  }
  // Use DISTINCT to avoid duplicates from the country JOIN (a person with multiple US relations would appear multiple times)
  eventSql = eventSql.replace('SELECT ev.id, ev.entity_id', 'SELECT DISTINCT ev.id, ev.entity_id');
  eventSql += ' ORDER BY ev.event_year DESC LIMIT ?';
  eventBindings.push(limit);  // Cap the "events" section at limit; category sections will be re-bucketed in JS

  const events = await env.DB.prepare(eventSql).bind(...eventBindings).all<any>();

  // People: birth, death (from entity_event where entity_type='person')
  let personSql = `
    SELECT DISTINCT ev.id, ev.event_type, ev.event_date AS start_date, ev.body AS description,
           ev.event_year AS year,
           e.id AS person_id, e.slug, e.canonical_name
    FROM entity_event ev
    JOIN entity e ON e.id = ev.entity_id
    WHERE ev.event_date IS NOT NULL
      AND substr(ev.event_date, 6, 5) = ?
      AND ev.event_year >= 1700
      AND e.type = 'person'
      AND e.status = 'published'
      AND ev.event_type IN ('birth', 'death', 'public_appearance')`;
  const personBindings: any[] = [mm_dd];
  if (country_filter) {
    personSql += ` AND e.id IN (
      SELECT ppr.person_id FROM person_place_relation ppr
      JOIN place p ON p.id = ppr.place_id
      WHERE p.country_code = ? AND ppr.relation_type IN ('birthplace', 'death_place', 'residence')
    )`;
    personBindings.push(country_filter);
  }
  personSql += ' ORDER BY ev.event_type, ev.event_year DESC LIMIT ?';
  personBindings.push(limit * 4);
  const personEvents = await env.DB.prepare(personSql).bind(...personBindings).all<any>();

  // Holidays (Calendrify data)
  let holidaySql = `
    SELECT ho.id, ho.concept_id, ho.country_code, ho.subdivision_code,
           ho.legal_status, ho.scope_level, ho.category, ho.notes,
           hc.name_en AS name, hc.description,
           ccm.canonical_name AS country_name
    FROM holiday_occurrence ho
    JOIN holiday_concept hc ON hc.id = ho.concept_id
    JOIN country_cca2_map ccm ON ccm.calendrify_country_id = ho.calendrify_country_id
    WHERE substr(ho.start_date, 6, 5) = ?`;
  const holidayBindings: any[] = [mm_dd];
  if (country_filter) {
    holidaySql += ' AND ho.country_code = ?';
    holidayBindings.push(country_filter);
  }
  holidaySql += ' ORDER BY ho.category, ho.country_code LIMIT ?';
  holidayBindings.push(limit * 2);
  const holidays = await env.DB.prepare(holidaySql).bind(...holidayBindings).all<any>();

  // Bucket events by category for the per-category sections
  const eventsByCategory: Record<string, any[]> = {};
  for (const cat of ['political', 'scientific', 'technological', 'environmental', 'cultural', 'religion', 'economic', 'sports', 'exploration', 'social', 'royal', 'crime']) {
    eventsByCategory[cat] = [];
  }
  for (const e of events.results ?? []) {
    // Skip person-level events (births/deaths/appearances); those are routed to births/deaths sections
    if (e.entity_type === 'person' && ['birth', 'death'].includes(e.event_type)) {
      continue;
    }
    // Map event_type to on-this-day category (use event_type, not category field, since they differ)
    const category = EVENT_TYPE_TO_CATEGORY[e.event_type] || 'cultural';
    if (eventsByCategory[category]) {
      eventsByCategory[category].push(e);
    } else {
      eventsByCategory['cultural'].push(e);
    }
  }
  // Cap each category at the limit
  for (const cat of Object.keys(eventsByCategory)) {
    eventsByCategory[cat] = eventsByCategory[cat].slice(0, limit);
  }

  const births = (personEvents.results ?? []).filter((e: any) => e.event_type === 'birth').slice(0, limit);
  const deaths = (personEvents.results ?? []).filter((e: any) => e.event_type === 'death').slice(0, limit);
  const weddings = (personEvents.results ?? []).filter((e: any) => e.event_type === 'public_appearance' && (e.description || '').toLowerCase().includes('marri')).slice(0, Math.min(3, limit));
  const divorces: any[] = [];  // No divorce event_type in entity_event

  return {
    events: eventsByCategory,
    births, deaths, weddings, divorces,
    holidays: holidays.results ?? [],
    rawEvents: events.results ?? [],
  };
}

function formatEvent(e: any) {
  // Map our category back to on-this-day's category enum for the response
  const category = e.event_type ? (EVENT_TYPE_TO_CATEGORY[e.event_type] || 'cultural') : (e.category || 'cultural');
  return {
    id: e.id,
    year: e.year,
    date_display: monthDayYear(e.start_date),
    start_date: e.start_date,
    title: e.title,
    description: e.description,
    category: category,
    place_name: null,
    country_code: null,
    hero_image: null,
    source: {
      tier: e.confidence ? (e.confidence >= 0.8 ? 'A' : e.confidence >= 0.6 ? 'B' : 'C') : 'B',
      source_name: e.source_id,
      url: e.source_url,
    },
    related_people: [],
    url: `/v1/on-this-day/events/${e.id}`,
  };
}

function formatPerson(e: any) {
  return {
    id: e.person_id,
    slug: e.slug,
    canonical_name: e.canonical_name,
    year: parseInt(e.start_date?.slice(0, 4) || '0', 10),
    description: e.description,
    url: `/v1/people/${e.slug}`,
  };
}

function formatWedding(e: any) {
  // For now, treat marriage events as a single-person summary
  // (a proper wedding would have two person IDs in metadata)
  return {
    id: e.id,
    year: parseInt(e.start_date?.slice(0, 4) || '0', 10),
    person_1: formatPerson(e),
    person_2: formatPerson(e),  // placeholder
    description: e.description,
    url: `/v1/people/${e.slug}`,
  };
}

function formatHoliday(h: any) {
  return {
    id: h.id,
    name: h.name,
    country_code: h.country_code,
    country_name: h.country_name,
    subdivision_code: h.subdivision_code,
    legal_status: h.legal_status,
    scope_level: h.scope_level,
    category: h.category,
    description: h.description || h.notes,
    url: `/v1/countries/${h.country_code}/holidays`,
  };
}

function monthDayYear(iso: string): string {
  // "1858-08-05" → "August 5, 1858"
  if (!iso || iso.length < 10) return iso;
  const [y, m, d] = iso.split('-');
  const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  return `${months[parseInt(m, 10) - 1]} ${parseInt(d, 10)}, ${y}`;
}

function todayMmDd(): string {
  const now = new Date();
  const m = String(now.getUTCMonth() + 1).padStart(2, '0');
  const d = String(now.getUTCDate()).padStart(2, '0');
  return `${m}-${d}`;
}

// === Handlers ===

onThisDayRouter.openapi(todayRoute, async (c) => {
  const requestId = c.get('requestId');
  const { country, category, limit } = c.req.valid('query');
  const mm_dd = todayMmDd();
  const filled = await fillSections({ mm_dd, country_filter: country, category_filter: category, limit, request_id: requestId, env: c.env });
  return c.json({
    date: new Date().toISOString().slice(0, 10),
    mm_dd,
    year: null,
    total_sections: 14,
    sections: {
      events: filled.rawEvents.map(formatEvent),
      births: filled.births.map(formatPerson),
      deaths: filled.deaths.map(formatPerson),
      weddings: filled.weddings.map(formatWedding),
      divorces: filled.divorces.map(formatPerson),
      holidays: filled.holidays.map(formatHoliday),
      sports: filled.events.sports.map(formatEvent),
      science: filled.events.scientific.map(formatEvent),
      technology: filled.events.technological.map(formatEvent),
      politics: filled.events.political.map(formatEvent),
      cultural: filled.events.cultural.map(formatEvent),
      religion: filled.events.religion.map(formatEvent),
      economic: filled.events.economic.map(formatEvent),
      royal: filled.events.royal.map(formatEvent),
      disasters: filled.events.environmental.map(formatEvent),
      social: filled.events.social.map(formatEvent),
      exploration: filled.events.exploration.map(formatEvent),
      crime: filled.events.crime.map(formatEvent),
    },
    _links: {
      self: '/v1/on-this-day/today',
      year_view: `/v1/on-this-day/${new Date().toISOString().slice(0, 10)}`,
      year_range: `/v1/on-this-day/${mm_dd}?from=1700&to=2100`,
    },
  }, 200) as any;
});

onThisDayRouter.openapi(mmddRoute, async (c) => {
  const requestId = c.get('requestId');
  const { mm_dd } = c.req.valid('param');
  const { from, to, country, category, limit } = c.req.valid('query');
  const filled = await fillSections({
    mm_dd, year_filter: { from, to }, country_filter: country, category_filter: category, limit, request_id: requestId, env: c.env
  });
  return c.json({
    date: mm_dd,
    mm_dd,
    year: null,
    total_sections: 14,
    sections: {
      events: filled.rawEvents.map(formatEvent),
      births: filled.births.map(formatPerson),
      deaths: filled.deaths.map(formatPerson),
      weddings: filled.weddings.map(formatWedding),
      divorces: filled.divorces.map(formatPerson),
      holidays: filled.holidays.map(formatHoliday),
      sports: filled.events.sports.map(formatEvent),
      science: filled.events.scientific.map(formatEvent),
      technology: filled.events.technological.map(formatEvent),
      politics: filled.events.political.map(formatEvent),
      cultural: filled.events.cultural.map(formatEvent),
      religion: filled.events.religion.map(formatEvent),
      economic: filled.events.economic.map(formatEvent),
      royal: filled.events.royal.map(formatEvent),
      disasters: filled.events.environmental.map(formatEvent),
      social: filled.events.social.map(formatEvent),
      exploration: filled.events.exploration.map(formatEvent),
      crime: filled.events.crime.map(formatEvent),
    },
    _links: {
      self: `/v1/on-this-day/${mm_dd}`,
      year_view: null,
      year_range: `/v1/on-this-day/${mm_dd}?from=1700&to=2100`,
    },
  }, 200) as any;
});

onThisDayRouter.openapi(yyyymmddRoute, async (c) => {
  const requestId = c.get('requestId');
  const { yyyy_mm_dd } = c.req.valid('param');
  const { category, limit, offset } = c.req.valid('query');
  const yyyymmdd = yyyy_mm_dd;
  const yyyy = parseInt(yyyymmdd.slice(0, 4), 10);
  if (yyyy < 1700 || yyyy > 2100) {
    return c.json(
      { error: { code: 'OUT_OF_TIER1_RANGE', message: `Tier 1 only covers 1700-now. Year ${yyyy} is out of range.`, requestId, details: [] } },
      400
    ) as any;
  }
  const mm_dd = yyyymmdd.slice(5);
  const filled = await fillSections({
    mm_dd, year_filter: { from: yyyy, to: yyyy }, category_filter: category, limit, request_id: requestId, env: c.env
  });
  return c.json({
    date: yyyymmdd,
    mm_dd,
    year: yyyy,
    total_sections: 14,
    sections: {
      events: filled.rawEvents.map(formatEvent),
      births: filled.births.map(formatPerson),
      deaths: filled.deaths.map(formatPerson),
      weddings: filled.weddings.map(formatWedding),
      divorces: filled.divorces.map(formatPerson),
      holidays: filled.holidays.map(formatHoliday),
      sports: filled.events.sports.map(formatEvent),
      science: filled.events.scientific.map(formatEvent),
      technology: filled.events.technological.map(formatEvent),
      politics: filled.events.political.map(formatEvent),
      cultural: filled.events.cultural.map(formatEvent),
      religion: filled.events.religion.map(formatEvent),
      economic: filled.events.economic.map(formatEvent),
      royal: filled.events.royal.map(formatEvent),
      disasters: filled.events.environmental.map(formatEvent),
      social: filled.events.social.map(formatEvent),
      exploration: filled.events.exploration.map(formatEvent),
      crime: filled.events.crime.map(formatEvent),
    },
    _links: {
      self: `/v1/on-this-day/${yyyymmdd}`,
      year_view: `/v1/on-this-day/${yyyymmdd}`,
      year_range: `/v1/on-this-day/${mm_dd}?from=${yyyy}&to=${yyyy}`,
    },
  }, 200) as any;
});
