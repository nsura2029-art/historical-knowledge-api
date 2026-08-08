-- ========================================
-- GDELT backfill: 8 articles in 2 batches
-- Generated: 2026-08-07 23:59:44 UTC
-- Source: http://data.gdeltproject.org/gdeltv2/  (GDELT GKG 2.0)
-- License: GDELT is freely available for research, no key required
-- ========================================

-- Batch 1/2
INSERT OR IGNORE INTO news_article
  (id, entity_id, headline, url, source_id, source_name,
   published_at, snippet, language, image_url, tone, topic_tags,
   fetched_at, last_verified_at)
VALUES

  ('na_gdelt_20260807180000-17', 'ent_donald-trump', 'senate passes sanctions bill russia iran named late sen lindsey graham rcna589949', 'https://www.nbcnews.com/politics/congress/senate-passes-sanctions-bill-russia-iran-named-late-sen-lindsey-graham-rcna589949', 'src_gdelt', 'nbcnews.com', 1786125600, NULL, 'en', NULL, 'negative', '["LEGISLATION", "USPEC_POLITICS_GENERAL1", "USPEC_POLICY1", "EPU_POLICY", "EPU_POLICY_LEGISLATION"]', 1786147183, 1786147183),
  ('na_gdelt_20260807180000-42', 'ent_donald-trump', 'indianorigin doctor seeking trump pardon gave 1 million to maga fund 101786119316248.html', 'https://www.hindustantimes.com/india-news/indianorigin-doctor-seeking-trump-pardon-gave-1-million-to-maga-fund-101786119316248.html', 'src_gdelt', 'hindustantimes.com', 1786125600, NULL, 'en', NULL, 'negative', '["GENERAL_HEALTH", "MEDICAL", "SOC_POINTSOFINTEREST", "SOC_POINTSOFINTEREST_PRISON", "WB_2495_DETENTION_PRISON_AND_CORRECTIONS_REFORM"]', 1786147183, 1786147183),
  ('na_gdelt_20260807180000-222', 'ent_donald-trump', 'lindsey grahams final mission punish putin clears senate after yearlong fight', 'https://www.foxnews.com/politics/lindsey-grahams-final-mission-punish-putin-clears-senate-after-yearlong-fight', 'src_gdelt', 'foxnews.com', 1786125600, NULL, 'en', NULL, 'negative', '["SANCTIONS", "ARMEDCONFLICT", "EPU_CATS_NATIONAL_SECURITY", "ENV_OIL", "LEADER"]', 1786147183, 1786147183),
  ('na_gdelt_20260807180000-643', 'ent_donald-trump', 'maryland lone congressional republican blasts moore redistricting push alleged 2028 white house play', 'https://www.foxnews.com/politics/maryland-lone-congressional-republican-blasts-moore-redistricting-push-alleged-2028-white-house-play', 'src_gdelt', 'foxnews.com', 1786125600, NULL, 'en', NULL, 'negative', '["USPEC_POLITICS_GENERAL1", "EPU_POLICY", "EPU_POLICY_CONGRESSIONAL", "CONSTITUTIONAL", "LEADER"]', 1786147183, 1786147183),
  ('na_gdelt_20260807180000-1244', 'ent_donald-trump', 'gop senator breaks trump over woke smithsonian history battle', 'https://www.foxnews.com/politics/gop-senator-breaks-trump-over-woke-smithsonian-history-battle', 'src_gdelt', 'foxnews.com', 1786125600, NULL, 'en', NULL, 'neutral', '["USPEC_POLITICS_GENERAL1", "EDUCATION", "LEADER", "EPU_CATS_MIGRATION_FEAR_FEAR", "ECON_WORLDCURRENCIES"]', 1786147183, 1786147183);

-- Batch 2/2
INSERT OR IGNORE INTO news_article
  (id, entity_id, headline, url, source_id, source_name,
   published_at, snippet, language, image_url, tone, topic_tags,
   fetched_at, last_verified_at)
VALUES

  ('na_gdelt_20260807210000-612', 'ent_donald-trump', 'judge rejects challenge to california attorney generals description of voter id measure', 'https://www.latimes.com/california/story/2026-08-07/judge-rejects-challenge-to-california-attorney-generals-description-of-voter-id-measure', 'src_gdelt', 'latimes.com', 1786136400, NULL, 'en', NULL, 'neutral', '["ELECTION", "BAN", "TRIAL", "LEGISLATION", "EPU_POLICY"]', 1786147184, 1786147184),
  ('na_gdelt_20260807210000-694', 'ent_donald-trump', 'fox news struggles spin yet another bad jobs report trump', 'https://newrepublic.com/post/214092/fox-news-struggles-spin-yet-another-bad-jobs-report-trump', 'src_gdelt', 'newrepublic.com', 1786136400, NULL, 'en', NULL, 'neutral', '["LEADER", "USPEC_POLITICS_GENERAL1", "PROTEST", "VIOLENT_UNREST"]', 1786147184, 1786147184),
  ('na_gdelt_20260807210000-778', 'ent_aishwarya-rai', 'article71317929.ece', 'https://www.thehindu.com/news/national/manipur/biren-singhs-audio-clip-altered-says-centre-sc-allows-manipur-civil-society-group-to-access-report/article71317929.ece', 'src_gdelt', 'thehindu.com', 1786136400, NULL, 'en', NULL, 'negative', '["GENERAL_GOVERNMENT", "EPU_POLICY", "EPU_POLICY_GOVERNMENT", "WB_696_PUBLIC_SECTOR_MANAGEMENT", "WB_840_JUSTICE"]', 1786147184, 1786147184);
