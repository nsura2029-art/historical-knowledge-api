/**
 * News event schemas for RSS-aggregated news_article + news_event.
 * Used by /v1/news/* and /v1/this-day/years-ago.
 */
import { z } from 'zod';

export const NewsEventSchema = z.object({
  id: z.string(),
  source_id: z.string(),
  source_name: z.string(),
  event_date: z.string().describe('YYYY-MM-DD'),
  published_at: z.number().describe('Unix epoch seconds'),
  title: z.string(),
  description: z.string().nullable().optional(),
  url: z.string(),
  category: z.string().nullable().optional(),
  country_code: z.string().nullable().optional(),
  image_url: z.string().nullable().optional(),
  confidence: z.number().min(0).max(1).default(0.7),
});

export type NewsEvent = z.infer<typeof NewsEventSchema>;

export const NewsListResponse = z.object({
  total: z.number(),
  by_date: z.record(z.string(), z.number()).optional(),
  events: z.array(NewsEventSchema),
  sources: z.array(z.object({
    id: z.string(),
    name: z.string(),
    category: z.string(),
  })).optional(),
  _links: z.object({
    self: z.string(),
    older: z.string().nullable().optional(),
    newer: z.string().nullable().optional(),
  }),
});

export const TelescopeResponse = z.object({
  today: z.string().describe('YYYY-MM-DD'),
  periods: z.array(z.object({
    years_ago: z.number(),
    date: z.string().describe('YYYY-MM-DD'),
    event_count: z.number(),
    events: z.array(NewsEventSchema).optional(),
  })),
});
