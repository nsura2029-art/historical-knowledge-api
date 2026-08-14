-- ========================================
-- Migration 0086: RSS news ingest pipeline
-- Generated: 2026-08-14
-- Strategy: Ingest RSS feeds from 19 working sources (BBC, Al Jazeera, Guardian, etc.)
--           into news_article (already exists) + new news_source for config
--           + new news_event for date-keyed events (separates "what happened when" 
--           from "what was published when")
-- ========================================

-- 1. Make entity_id nullable on news_article (RSS articles often have no specific entity)
CREATE TABLE news_article_new (
  id TEXT PRIMARY KEY,
  entity_id TEXT REFERENCES entity(id),         -- now nullable (RSS items often have no entity)
  headline TEXT NOT NULL,
  url TEXT NOT NULL,
  source_id TEXT NOT NULL,                      -- e.g. src_bbc_world, src_ap_top
  source_name TEXT NOT NULL,
  published_at INTEGER NOT NULL,                -- unix epoch seconds
  snippet TEXT,
  language TEXT DEFAULT 'en',
  image_url TEXT,
  tone TEXT,
  topic_tags TEXT,
  gdelt_id TEXT,
  fetched_at INTEGER NOT NULL DEFAULT (unixepoch()),
  last_verified_at INTEGER
);
INSERT INTO news_article_new SELECT * FROM news_article;
DROP TABLE news_article;
ALTER TABLE news_article_new RENAME TO news_article;
CREATE INDEX idx_news_published ON news_article(published_at DESC);
CREATE INDEX idx_news_source ON news_article(source_id, published_at DESC);
CREATE INDEX idx_news_entity ON news_article(entity_id) WHERE entity_id IS NOT NULL;

-- 2. news_source — feed configuration
CREATE TABLE IF NOT EXISTS news_source (
  id TEXT PRIMARY KEY,                          -- e.g. src_bbc_world
  name TEXT NOT NULL,                           -- "BBC World News"
  url TEXT NOT NULL,                            -- RSS feed URL
  category TEXT NOT NULL,                       -- news, science, history, sport, business
  country TEXT,                                 -- primary geographic focus (GB, US, etc.)
  language TEXT DEFAULT 'en',
  enabled INTEGER NOT NULL DEFAULT 1,           -- 1=fetch, 0=skip
  fetch_interval_minutes INTEGER DEFAULT 60,    -- how often to fetch
  last_fetched_at INTEGER,
  last_status TEXT,                             -- 'ok', 'http_404', 'parse_error', etc.
  item_count_total INTEGER DEFAULT 0,           -- running count for monitoring
  created_at INTEGER NOT NULL DEFAULT (unixepoch())
);

-- 3. news_event — date-keyed events extracted from news_article
-- This is the join table that lets us query "what happened on 2026-08-14" from news
CREATE TABLE IF NOT EXISTS news_event (
  id TEXT PRIMARY KEY,                          -- ne_bbc_abc123
  article_id TEXT NOT NULL REFERENCES news_article(id) ON DELETE CASCADE,
  source_id TEXT NOT NULL,                      -- denormalized for query speed
  event_date TEXT NOT NULL,                     -- YYYY-MM-DD — when the event happened
  published_at INTEGER NOT NULL,                -- when the article was published
  title TEXT NOT NULL,                          -- the event headline
  description TEXT,
  url TEXT NOT NULL,                            -- canonical article URL
  category TEXT,                                -- political, scientific, sports, etc.
  country_code TEXT,                            -- primary country of the event
  language TEXT DEFAULT 'en',
  image_url TEXT,
  confidence REAL DEFAULT 0.7,                  -- 0.5-0.9 (RSS=0.7, Wikipedia=0.85, curated=0.95)
  display_order INTEGER DEFAULT 0,
  fetched_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE INDEX idx_news_event_date ON news_event(event_date DESC);
CREATE INDEX idx_news_event_source ON news_event(source_id, event_date DESC);
CREATE INDEX idx_news_event_category ON news_event(category, event_date DESC);
CREATE INDEX idx_news_event_country ON news_event(country_code, event_date DESC);
CREATE INDEX idx_news_event_published ON news_event(published_at DESC);
