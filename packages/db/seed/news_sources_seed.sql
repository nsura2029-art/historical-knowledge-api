-- ========================================
-- news_source seed: 19 working RSS feeds
-- Generated: 2026-08-14
-- ========================================

INSERT OR IGNORE INTO news_source (id, name, url, category, country, language, fetch_interval_minutes) VALUES
  -- BBC (5 feeds)
  ('src_bbc_world', 'BBC World News', 'http://feeds.bbci.co.uk/news/world/rss.xml', 'news', 'GB', 'en', 30),
  ('src_bbc_top', 'BBC Top Stories', 'http://feeds.bbci.co.uk/news/rss.xml', 'news', 'GB', 'en', 30),
  ('src_bbc_science', 'BBC Science', 'http://feeds.bbci.co.uk/news/science_and_environment/rss.xml', 'science', 'GB', 'en', 60),
  ('src_bbc_tech', 'BBC Technology', 'http://feeds.bbci.co.uk/news/technology/rss.xml', 'science', 'GB', 'en', 60),
  ('src_bbc_business', 'BBC Business', 'http://feeds.bbci.co.uk/news/business/rss.xml', 'business', 'GB', 'en', 30),
  ('src_bbc_sport', 'BBC Sport', 'http://feeds.bbci.co.uk/sport/rss.xml', 'sport', 'GB', 'en', 30),
  -- Al Jazeera
  ('src_aljazeera', 'Al Jazeera', 'https://www.aljazeera.com/xml/rss/all.xml', 'news', 'QA', 'en', 30),
  -- The Guardian
  ('src_guardian_world', 'The Guardian World', 'https://www.theguardian.com/world/rss', 'news', 'GB', 'en', 30),
  ('src_guardian_science', 'The Guardian Science', 'https://www.theguardian.com/science/rss', 'science', 'GB', 'en', 60),
  -- NPR
  ('src_npr_top', 'NPR Top Stories', 'https://feeds.npr.org/1001/rss.xml', 'news', 'US', 'en', 30),
  ('src_npr_world', 'NPR World', 'https://feeds.npr.org/1004/rss.xml', 'news', 'US', 'en', 30),
  -- Ars Technica
  ('src_ars_technica', 'Ars Technica', 'https://feeds.arstechnica.com/arstechnica/index', 'science', 'US', 'en', 60),
  -- Science / Nature
  ('src_science_daily', 'Science Daily', 'https://www.sciencedaily.com/rss/all.xml', 'science', 'US', 'en', 60),
  ('src_phys_org', 'Phys.org', 'https://phys.org/rss-feed/', 'science', 'GB', 'en', 60),
  ('src_nature', 'Nature', 'https://www.nature.com/nature.rss', 'science', 'GB', 'en', 240),
  ('src_science_mag', 'Science Magazine', 'https://www.science.org/rss/news_current.xml', 'science', 'US', 'en', 240),
  -- History / culture
  ('src_smithsonian', 'Smithsonian Magazine', 'https://www.smithsonianmag.com/rss/history/', 'history', 'US', 'en', 240),
  ('src_atlas_obscura', 'Atlas Obscura', 'https://www.atlasobscura.com/feeds/latest', 'culture', 'US', 'en', 240),
  -- Aggregator
  ('src_hacker_news', 'Hacker News', 'https://hnrss.org/frontpage', 'technology', 'US', 'en', 30);
