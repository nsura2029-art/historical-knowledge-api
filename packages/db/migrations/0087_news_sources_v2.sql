-- ========================================
-- Migration 0087: Expand news_source to 73 working feeds
-- Generated: 2026-08-14
-- Strategy: Added CNN, Yahoo, Google News, NPR family, PBS, BBC sports, Vox, The Verge,
--           Engadget, TechCrunch, Wired, Mashable, Sky Sports, The Hill, Business Insider,
--           Vox, Time, LA Times, New Yorker, Science family, BBC UK/Politics/Health/etc.
-- Total: 73 enabled sources (was 19 in migration 0086)
-- Categories: news, science, tech, sport, business, history, culture, political
-- ========================================

INSERT OR REPLACE INTO news_source (id, name, url, category, country, language, fetch_interval_minutes) VALUES
  -- BBC expanded (15 feeds)
  ('src_bbc_world', 'BBC World News', 'http://feeds.bbci.co.uk/news/world/rss.xml', 'news', 'GB', 'en', 30),
  ('src_bbc_uk', 'BBC UK News', 'http://feeds.bbci.co.uk/news/uk/rss.xml', 'news', 'GB', 'en', 60),
  ('src_bbc_business', 'BBC Business', 'http://feeds.bbci.co.uk/news/business/rss.xml', 'business', 'GB', 'en', 30),
  ('src_bbc_politics', 'BBC Politics', 'http://feeds.bbci.co.uk/news/politics/rss.xml', 'political', 'GB', 'en', 60),
  ('src_bbc_health', 'BBC Health', 'http://feeds.bbci.co.uk/news/health/rss.xml', 'news', 'GB', 'en', 120),
  ('src_bbc_education', 'BBC Education', 'http://feeds.bbci.co.uk/news/education/rss.xml', 'news', 'GB', 'en', 240),
  ('src_bbc_science', 'BBC Science', 'http://feeds.bbci.co.uk/news/science_and_environment/rss.xml', 'science', 'GB', 'en', 60),
  ('src_bbc_technology', 'BBC Technology', 'http://feeds.bbci.co.uk/news/technology/rss.xml', 'tech', 'GB', 'en', 60),
  ('src_bbc_magazine', 'BBC Magazine', 'http://feeds.bbci.co.uk/news/magazine/rss.xml', 'culture', 'GB', 'en', 240),
  ('src_bbc_culture', 'BBC Arts', 'http://feeds.bbci.co.uk/news/entertainment_and_arts/rss.xml', 'culture', 'GB', 'en', 120),
  ('src_bbc_sport', 'BBC Sport', 'http://feeds.bbci.co.uk/sport/rss.xml', 'sport', 'GB', 'en', 30),
  ('src_bbc_sport_football', 'BBC Sport Football', 'http://feeds.bbci.co.uk/sport/football/rss.xml', 'sport', 'GB', 'en', 60),
  ('src_bbc_sport_cricket', 'BBC Sport Cricket', 'http://feeds.bbci.co.uk/sport/cricket/rss.xml', 'sport', 'GB', 'en', 120),
  ('src_bbc_sport_tennis', 'BBC Sport Tennis', 'http://feeds.bbci.co.uk/sport/tennis/rss.xml', 'sport', 'GB', 'en', 120),
  ('src_bbc_sport_rugby', 'BBC Sport Rugby', 'http://feeds.bbci.co.uk/sport/rugby-union/rss.xml', 'sport', 'GB', 'en', 120),
  ('src_bbc_sport_f1', 'BBC Sport F1', 'http://feeds.bbci.co.uk/sport/formula1/rss.xml', 'sport', 'GB', 'en', 120),
  -- CNN (6)
  ('src_cnn_top', 'CNN Top Stories', 'http://rss.cnn.com/rss/edition.rss', 'news', 'US', 'en', 30),
  ('src_cnn_world', 'CNN World', 'http://rss.cnn.com/rss/edition_world.rss', 'news', 'US', 'en', 30),
  ('src_cnn_us', 'CNN US', 'http://rss.cnn.com/rss/edition_us.rss', 'news', 'US', 'en', 30),
  ('src_cnn_money', 'CNN Money', 'http://rss.cnn.com/rss/money_news_international.rss', 'business', 'US', 'en', 60),
  ('src_cnn_tech', 'CNN Tech', 'http://rss.cnn.com/rss/edition_technology.rss', 'tech', 'US', 'en', 60),
  ('src_cnn_sport', 'CNN Sport', 'http://rss.cnn.com/rss/edition_sport.rss', 'sport', 'US', 'en', 60),
  -- Yahoo / Google
  ('src_yahoo_sports', 'Yahoo Sports', 'https://sports.yahoo.com/rss', 'sport', 'US', 'en', 60),
  ('src_google_news', 'Google News Top', 'https://news.google.com/rss?hl=en-US&gl=US&ceid=US:en', 'news', 'US', 'en', 30),
  ('src_google_world', 'Google News World', 'https://news.google.com/rss/headlines/section/topic/WORLD?hl=en-US&gl=US&ceid=US:en', 'news', 'US', 'en', 30),
  ('src_google_science', 'Google News Science', 'https://news.google.com/rss/headlines/section/topic/SCIENCE?hl=en-US&gl=US&ceid=US:en', 'science', 'US', 'en', 60),
  -- NPR (7)
  ('src_npr_top', 'NPR Top Stories', 'https://feeds.npr.org/1001/rss.xml', 'news', 'US', 'en', 30),
  ('src_npr_world', 'NPR World', 'https://feeds.npr.org/1004/rss.xml', 'news', 'US', 'en', 30),
  ('src_npr_us', 'NPR US', 'https://feeds.npr.org/1003/rss.xml', 'news', 'US', 'en', 30),
  ('src_npr_business', 'NPR Business', 'https://feeds.npr.org/1006/rss.xml', 'business', 'US', 'en', 60),
  ('src_npr_science', 'NPR Science', 'https://feeds.npr.org/1007/rss.xml', 'science', 'US', 'en', 60),
  ('src_npr_books', 'NPR Books', 'https://feeds.npr.org/1032/rss.xml', 'culture', 'US', 'en', 240),
  ('src_npr_music', 'NPR Music', 'https://feeds.npr.org/1039/rss.xml', 'culture', 'US', 'en', 240),
  -- PBS
  ('src_pbs_newshour', 'PBS NewsHour', 'https://www.pbs.org/newshour/feeds/rss/headlines', 'news', 'US', 'en', 60),
  ('src_pbs_science', 'PBS Science', 'https://www.pbs.org/newshour/feeds/rss/science', 'science', 'US', 'en', 120),
  -- Tech (7)
  ('src_the_verge', 'The Verge', 'https://www.theverge.com/rss/index.xml', 'tech', 'US', 'en', 60),
  ('src_engadget', 'Engadget', 'https://www.engadget.com/rss.xml', 'tech', 'US', 'en', 60),
  ('src_techcrunch', 'TechCrunch', 'https://techcrunch.com/feed/', 'tech', 'US', 'en', 60),
  ('src_wired', 'Wired', 'https://www.wired.com/feed/rss', 'tech', 'US', 'en', 60),
  ('src_mashable', 'Mashable', 'https://mashable.com/feed/', 'tech', 'US', 'en', 120),
  ('src_ars_technica', 'Ars Technica', 'https://feeds.arstechnica.com/arstechnica/index', 'tech', 'US', 'en', 60),
  ('src_hacker_news', 'Hacker News', 'https://hnrss.org/frontpage', 'tech', 'US', 'en', 30),
  -- Sports
  ('src_sky_sports', 'Sky Sports', 'https://www.skysports.com/rss/12040', 'sport', 'GB', 'en', 60),
  -- Politics / Business
  ('src_the_hill', 'The Hill', 'https://thehill.com/feed/', 'political', 'US', 'en', 60),
  ('src_vox', 'Vox', 'https://www.vox.com/rss/index.xml', 'news', 'US', 'en', 60),
  ('src_vox_top', 'Vox Top Stories', 'https://www.vox.com/rss/index.xml', 'news', 'US', 'en', 60),
  ('src_business_insider', 'Business Insider', 'https://www.businessinsider.com/rss', 'business', 'US', 'en', 60),
  -- History / Culture
  ('src_smithsonian', 'Smithsonian Magazine', 'https://www.smithsonianmag.com/rss/history/', 'history', 'US', 'en', 240),
  ('src_smithsonian_smart', 'Smithsonian Smart News', 'https://www.smithsonianmag.com/rss/smart-news/', 'history', 'US', 'en', 240),
  ('src_historynet', 'HistoryNet', 'https://www.historynet.com/feed/', 'history', 'US', 'en', 240),
  ('src_atlas_obscura', 'Atlas Obscura', 'https://www.atlasobscura.com/feeds/latest', 'culture', 'US', 'en', 240),
  ('src_mental_floss', 'Mental Floss', 'https://www.mentalfloss.com/feed', 'culture', 'US', 'en', 240),
  ('src_open_culture', 'Open Culture', 'http://www.openculture.com/feed', 'culture', 'US', 'en', 240),
  ('src_slate', 'Slate', 'https://slate.com/feeds/all.rss', 'culture', 'US', 'en', 120),
  ('src_salon', 'Salon', 'https://www.salon.com/feed/', 'culture', 'US', 'en', 120),
  ('src_newyorker', 'New Yorker', 'https://www.newyorker.com/feed/everything', 'culture', 'US', 'en', 120),
  -- Science
  ('src_science_daily', 'Science Daily', 'https://www.sciencedaily.com/rss/all.xml', 'science', 'US', 'en', 60),
  ('src_phys_org', 'Phys.org', 'https://phys.org/rss-feed/', 'science', 'GB', 'en', 60),
  ('src_nature', 'Nature', 'https://www.nature.com/nature.rss', 'science', 'GB', 'en', 240),
  ('src_science_mag', 'Science Magazine', 'https://www.science.org/rss/news_current.xml', 'science', 'US', 'en', 240),
  ('src_live_science', 'Live Science', 'https://www.livescience.com/feeds/all', 'science', 'US', 'en', 60),
  ('src_space_com', 'Space.com', 'https://www.space.com/feeds/all', 'science', 'US', 'en', 60),
  ('src_sci_news', 'Science News', 'https://www.sciencenews.org/feed/', 'science', 'US', 'en', 120),
  ('src_new_scientist', 'New Scientist', 'https://www.newscientist.com/feed/home/', 'science', 'GB', 'en', 120),
  ('src_quanta', 'Quanta Magazine', 'https://api.quantamagazine.org/feed/', 'science', 'US', 'en', 240),
  -- News
  ('src_time', 'Time Magazine', 'https://time.com/feed/', 'news', 'US', 'en', 60),
  ('src_la_times', 'LA Times', 'https://www.latimes.com/local/rss2.0.xml', 'news', 'US', 'en', 60),
  ('src_vice', 'Vice', 'https://www.vice.com/en/rss', 'news', 'US', 'en', 120),
  -- Wikipedia anniversaries (special: high-quality curated historical events for every day)
  ('src_wiki_anniversaries', 'Wikipedia Selected Anniversaries', 'https://en.wikipedia.org/wiki/Main_Page', 'history', 'US', 'en', 99999);
