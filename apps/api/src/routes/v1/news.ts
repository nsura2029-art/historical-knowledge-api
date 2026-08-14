/**
 * GET /v1/news/* — RSS-aggregated news events
 * Per AGENTS.md migration 0086: 19 working RSS feeds
 *
 * Endpoints:
 *   GET /v1/news/recent?days=N  - Last N days of news events
 *   GET /v1/news/by-date?date=YYYY-MM-DD&country=&category=&limit=
 *   GET /v1/news/by-source?source=src_xxx&days=N
 *   GET /v1/this-day/telescope  - Multi-year view (this year, 1y, 5y, 10y, 25y, 50y, 100y ago)
 */

import { createRoute, OpenAPIHono, z } from '@hono/zod-openapi';
import { NewsListResponse, TelescopeResponse } from '@hka/contracts';
import type { AppEnv } from '../../bindings.js';

const newsRouter = new OpenAPIHono<AppEnv>();

// ---------------------------------------------------------------------------
// /v1/news/recent
// ---------------------------------------------------------------------------
const recentQuery = z.object({
  days: z.coerce.number().int().min(1).max(365).default(7),
  country: z.string().length(2).optional(),
  category: z.enum(['political', 'scientific', 'technological', 'cultural', 'economic', 'sports', 'social', 'exploration', 'crime', 'religion', 'royal', 'disasters']).optional(),
  limit: z.coerce.number().int().min(1).max(200).default(50),
  source: z.string().optional(),
});

const recentRoute = createRoute({
  method: 'get',
  path: '/v1/news/recent',
  operationId: 'getNewsRecent',
  tags: ['news'],
  summary: 'Recent news events from RSS feeds',
  description: 'Returns news events from the last N days across all enabled RSS sources. Country and category filters available.',
  request: { query: recentQuery },
  responses: {
    200: { description: 'Recent news', content: { 'application/json': { schema: NewsListResponse } } },
  },
});

newsRouter.openapi(recentRoute, async (c) => {
  const requestId = c.get('requestId');
  const { days, country, category, limit, source } = c.req.valid('query');
  
  const conditions: string[] = ['ne.event_date >= date("now", ?)'];
  const bindings: any[] = [`-${days} days`];
  
  if (country) { conditions.push('ne.country_code = ?'); bindings.push(country); }
  if (category) { conditions.push('ne.category = ?'); bindings.push(category); }
  if (source) { conditions.push('ne.source_id = ?'); bindings.push(source); }
  
  const whereClause = conditions.join(' AND ');
  
  // Get events (JOIN with news_article for source_name)
  const events = await c.env.DB.prepare(
    `SELECT ne.id, ne.source_id, na.source_name, ne.event_date, ne.published_at, ne.title, ne.description, ne.url, ne.category, ne.country_code, ne.image_url, ne.confidence
     FROM news_event ne
     JOIN news_article na ON na.id = ne.article_id
     WHERE ${whereClause}
     ORDER BY ne.published_at DESC
     LIMIT ?`
  ).bind(...bindings, limit).all<any>();
  
  // Get source list
  const sources = await c.env.DB.prepare(
    `SELECT DISTINCT ne.source_id, na.source_name 
     FROM news_event ne 
     JOIN news_article na ON na.id = ne.article_id
     WHERE ${whereClause} 
     ORDER BY na.source_name`
  ).bind(...bindings).all<any>();
  
  // Group by date
  const byDate: Record<string, number> = {};
  for (const e of events.results ?? []) {
    byDate[e.event_date] = (byDate[e.event_date] || 0) + 1;
  }
  
  return c.json({
    total: (events.results ?? []).length,
    by_date: byDate,
    events: (events.results ?? []).map(e => ({
      id: e.id,
      source_id: e.source_id,
      source_name: e.source_name,
      event_date: e.event_date,
      published_at: e.published_at,
      title: e.title,
      description: e.description,
      url: e.url,
      category: e.category,
      country_code: e.country_code,
      image_url: e.image_url,
      confidence: e.confidence,
    })),
    sources: (sources.results ?? []).map(s => ({
      id: s.source_id,
      name: s.source_name,
      category: s.source_id.split('_')[1] || 'unknown',
    })),
    _links: {
      self: `/v1/news/recent?days=${days}`,
      older: null,
      newer: null,
    },
  }, 200);
});

// ---------------------------------------------------------------------------
// /v1/news/by-date — news for a specific date
// ---------------------------------------------------------------------------
const byDateQuery = z.object({
  date: z.string().regex(/^\d{4}-\d{2}-\d{2}$/),
  country: z.string().length(2).optional(),
  category: z.string().optional(),
  limit: z.coerce.number().int().min(1).max(200).default(50),
});

const byDateRoute = createRoute({
  method: 'get',
  path: '/v1/news/by-date',
  operationId: 'getNewsByDate',
  tags: ['news'],
  summary: 'News events for a specific date',
  request: { query: byDateQuery },
  responses: {
    200: { description: 'News for the given date', content: { 'application/json': { schema: NewsListResponse } } },
  },
});

newsRouter.openapi(byDateRoute, async (c) => {
  const { date, country, category, limit } = c.req.valid('query');
  
  const conditions: string[] = ['ne.event_date = ?'];
  const bindings: any[] = [date];
  
  if (country) { conditions.push('ne.country_code = ?'); bindings.push(country); }
  if (category) { conditions.push('ne.category = ?'); bindings.push(category); }
  
  const events = await c.env.DB.prepare(
    `SELECT ne.id, ne.source_id, na.source_name, ne.event_date, ne.published_at, ne.title, ne.description, ne.url, ne.category, ne.country_code, ne.image_url, ne.confidence
     FROM news_event ne
     JOIN news_article na ON na.id = ne.article_id
     WHERE ${conditions.join(' AND ')}
     ORDER BY ne.confidence DESC, ne.published_at DESC
     LIMIT ?`
  ).bind(...bindings, limit).all<any>();
  
  return c.json({
    total: (events.results ?? []).length,
    events: (events.results ?? []).map(e => ({
      id: e.id,
      source_id: e.source_id,
      source_name: e.source_name,
      event_date: e.event_date,
      published_at: e.published_at,
      title: e.title,
      description: e.description,
      url: e.url,
      category: e.category,
      country_code: e.country_code,
      image_url: e.image_url,
      confidence: e.confidence,
    })),
    _links: {
      self: `/v1/news/by-date?date=${date}`,
      older: null,
      newer: null,
    },
  }, 200);
});

// ---------------------------------------------------------------------------
// /v1/this-day/telescope — multi-year view
// ---------------------------------------------------------------------------
const telescopeQuery = z.object({
  years: z.string().optional().describe('Comma-separated years-ago, default "1,5,10,25,50,100"'),
  date: z.string().regex(/^\d{4}-\d{2}-\d{2}$/).optional().describe('Anchor date, default today'),
  category: z.string().optional(),
  country: z.string().length(2).optional(),
  limit: z.coerce.number().int().min(1).max(20).default(5),
});

const telescopeRoute = createRoute({
  method: 'get',
  path: '/v1/this-day/telescope',
  operationId: 'getTelescope',
  tags: ['news'],
  summary: 'Time telescope — events from this year, 1y ago, 5y ago, 10y, 25y, 50y, 100y',
  description: 'Returns news from the same MM-DD across multiple years. Default: 1,5,10,25,50,100 years ago.',
  request: { query: telescopeQuery },
  responses: {
    200: { description: 'Telescope view', content: { 'application/json': { schema: TelescopeResponse } } },
  },
});

newsRouter.openapi(telescopeRoute, async (c) => {
  const { years, date, category, country, limit } = c.req.valid('query');
  
  // Default: this year + 1, 5, 10, 25, 50, 100 years ago
  const yearOffsets = years
    ? years.split(',').map(y => parseInt(y.trim(), 10))
    : [0, 1, 5, 10, 25, 50, 100];
  
  const anchorDate = date || new Date().toISOString().slice(0, 10);
  const anchorYear = parseInt(anchorDate.slice(0, 4), 10);
  const mmdd = anchorDate.slice(5);
  
  const periods = await Promise.all(yearOffsets.map(async (yearsAgo) => {
    const targetYear = anchorYear - yearsAgo;
    const targetDate = `${targetYear}-${mmdd}`;
    
    const conditions: string[] = ['ne.event_date = ?'];
    const bindings: any[] = [targetDate];
    if (category) { conditions.push('ne.category = ?'); bindings.push(category); }
    if (country) { conditions.push('ne.country_code = ?'); bindings.push(country); }
    
    const countRow = await c.env.DB.prepare(
      `SELECT COUNT(*) as n FROM news_event ne WHERE ${conditions.join(' AND ')}`
    ).bind(...bindings).first<{ n: number }>();
    
    const eventRows = await c.env.DB.prepare(
      `SELECT ne.id, ne.source_id, na.source_name, ne.event_date, ne.published_at, ne.title, ne.description, ne.url, ne.category, ne.country_code, ne.image_url, ne.confidence
       FROM news_event ne
       JOIN news_article na ON na.id = ne.article_id
       WHERE ${conditions.join(' AND ')}
       ORDER BY ne.confidence DESC, ne.published_at DESC LIMIT ?`
    ).bind(...bindings, limit).all<any>();
    
    return {
      years_ago: yearsAgo,
      date: targetDate,
      event_count: countRow?.n || 0,
      events: (eventRows.results ?? []).map(e => ({
        id: e.id,
        source_id: e.source_id,
        source_name: e.source_name,
        event_date: e.event_date,
        published_at: e.published_at,
        title: e.title,
        description: e.description,
        url: e.url,
        category: e.category,
        country_code: e.country_code,
        image_url: e.image_url,
        confidence: e.confidence,
      })),
    };
  }));
  
  return c.json({
    today: anchorDate,
    periods,
  }, 200);
});

export { newsRouter };
