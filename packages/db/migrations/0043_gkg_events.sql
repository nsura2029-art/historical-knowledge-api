-- ========================================
-- Migration 0043: GKG bulk events for top 200 subjects
-- Generated: 2026-08-09 00:19:22 UTC
-- Time range: last 3 days, capped at 5 events per subject per day
-- Source: GDELT 2.0 GKG raw files (no rate limit)
-- ========================================

INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260805000000_0', 'ent_aretha-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in clevescene.com', 'Aretha Franklin mentioned in clevescene.com', 'src_gdelt',
   'https://www.clevescene.com/arts/15-things-to-do-in-cleveland-this-weekend-august-6-august-9/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260805000000_0', 'ent_blake-shelton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in theboot.com', 'Blake Shelton mentioned in theboot.com', 'src_gdelt',
   'https://theboot.com/ixp/204/p/the-voice-celebrity-season-riley-green/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260805000000_0', 'ent_ariana-grande', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in 1069thefox.com', 'Ariana Grande mentioned in 1069thefox.com', 'src_gdelt',
   'https://1069thefox.com/news/030030-ariana-grande-on-decision-to-withdraw-from-the-public-eye-not-a-reactive-or-impulsive-thing/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260805000000_0', 'ent_ariana-grande', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in wpde.com', 'Ariana Grande mentioned in wpde.com', 'src_gdelt',
   'https://wpde.com/news/entertainment/ariana-grande-explains-boundaries-must-be-set-after-announcing-upcoming-break', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260805000000_0', 'ent_donald-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in rollingstone.com', 'Donald Trump mentioned in rollingstone.com', 'src_gdelt',
   'https://www.rollingstone.com/politics/politics-news/max-miller-accidentally-releases-sensitive-image-daughter-1235603636/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260805000000_0', 'ent_donald-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in butlereagle.com', 'Donald Trump mentioned in butlereagle.com', 'src_gdelt',
   'https://www.butlereagle.com/20260804/guard-deployment-to-washington-into-2029-will-cost-roughly-1-4b-estimate-shows/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260805000000_0', 'ent_donald-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in koat.com', 'Donald Trump mentioned in koat.com', 'src_gdelt',
   'https://www.koat.com/article/how-michigans-senate-primary-shape-democratic-party/73348410', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260805000000_0', 'ent_donald-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in iheart.com', 'Donald Trump mentioned in iheart.com', 'src_gdelt',
   'https://600kcol.iheart.com/content/2026-08-04-us-water-suspected-iran-cyberattacks-include-12-states/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260805000000_0', 'ent_donald-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in rollingstone.com', 'Donald Trump mentioned in rollingstone.com', 'src_gdelt',
   'https://www.rollingstone.com/politics/politics-news/john-cornyn-nothing-republicans-can-do-rein-in-trump-1235603640/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260805000000_0', 'ent_ariana-grande', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in news4sanantonio.com', 'Ariana Grande mentioned in news4sanantonio.com', 'src_gdelt',
   'https://news4sanantonio.com/news/entertainment/ariana-grande-explains-boundaries-must-be-set-after-announcing-upcoming-break', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260805000000_0', 'ent_blake-shelton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in k96fm.com', 'Blake Shelton mentioned in k96fm.com', 'src_gdelt',
   'https://k96fm.com/ixp/204/p/the-voice-celebrity-season-riley-green/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260805000000_0', 'ent_aaron-rodgers', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in predominantlyorange.com', 'Aaron Rodgers mentioned in predominantlyorange.com', 'src_gdelt',
   'https://predominantlyorange.com/latest-qb-rankings-continue-giving-bo-nix-fuel-for-a-breakout-2026-season-01kz6rjcz7dd', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_forrest_20260805000000_0', 'ent_andrew-forrest', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Forrest mentioned in forbes.com', 'Andrew Forrest mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/timtreadgold/2026/08/04/cartel-v-cartel-as-china-and-australia-exchange-trade-barbs/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260805000000_0', 'ent_blake-shelton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in 981thehawk.com', 'Blake Shelton mentioned in 981thehawk.com', 'src_gdelt',
   'https://981thehawk.com/ixp/204/p/the-voice-celebrity-season-riley-green/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260805000000_0', 'ent_ariana-grande', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in cbs12.com', 'Ariana Grande mentioned in cbs12.com', 'src_gdelt',
   'https://cbs12.com/news/entertainment/ariana-grande-explains-boundaries-must-be-set-after-announcing-upcoming-break', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260805000000_0', 'ent_anna-wintour', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in algemeiner.com', 'Anna Wintour mentioned in algemeiner.com', 'src_gdelt',
   'https://www.algemeiner.com/2026/08/04/anna-wintour-consulted-with-jewish-leaders-about-met-gala-honoree-john-gallianos-antisemitic-comments/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260805000000_0', 'ent_ariana-grande', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ariana Grande on decision to withdraw from the public eye: ''Not a reactive or impulsive thing'' (Ariana Grande mentioned)', 'Ariana Grande on decision to withdraw from the public eye: ''Not a reactive or impulsive thing''', 'src_gdelt',
   'https://coast931.com/news/030030-ariana-grande-on-decision-to-withdraw-from-the-public-eye-not-a-reactive-or-impulsive-thing/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260805000000_0', 'ent_aaron-rodgers', '2026-08-05', 2026, 'public_appearance', 'news',
   '2026 Camp Blog: The mojo moments (Aaron Rodgers mentioned)', '2026 Camp Blog: The mojo moments', 'src_gdelt',
   'http://www.oklahomastar.com/news/279222632/2026-camp-blog-the-mojo-moments', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260805000000_0', 'ent_blake-shelton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in kxkx.com', 'Blake Shelton mentioned in kxkx.com', 'src_gdelt',
   'https://kxkx.com/ixp/204/p/the-voice-celebrity-season-riley-green/', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260805000000_0', 'ent_barack-obama', '2026-08-05', 2026, 'public_appearance', 'news',
   'David Ellison Defends CNN Merger Plans Highlights Media Trust Challenges (Barack Obama mentioned)', 'David Ellison Defends CNN Merger Plans Highlights Media Trust Challenges', 'src_gdelt',
   'https://newsbusters.org/blogs/nb/tim-graham/2026/08/04/aspiring-cnn-owner-pens-ny-times-piece-sure-upset-media-elitists', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260805000000_0', 'ent_bari-weiss', '2026-08-05', 2026, 'public_appearance', 'news',
   'David Ellison Defends CNN Merger Plans Highlights Media Trust Challenges (Bari Weiss mentioned)', 'David Ellison Defends CNN Merger Plans Highlights Media Trust Challenges', 'src_gdelt',
   'https://newsbusters.org/blogs/nb/tim-graham/2026/08/04/aspiring-cnn-owner-pens-ny-times-piece-sure-upset-media-elitists', 0.65, 0, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260805001500_1', 'ent_blake-shelton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in quickcountry.com', 'Blake Shelton mentioned in quickcountry.com', 'src_gdelt',
   'https://quickcountry.com/ixp/204/p/the-voice-celebrity-season-riley-green/', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260805001500_1', 'ent_brad-pitt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in 5au.com.au', 'Brad Pitt mentioned in 5au.com.au', 'src_gdelt',
   'https://www.5au.com.au/trending/entertainment/brad-pitt-had-to-break-up-a-fight-between-scott-eastwood-and-shia-labeouf-heres-why/', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260805001500_1', 'ent_arnold-schwarzenegger', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in hola.com', 'Arnold Schwarzenegger mentioned in hola.com', 'src_gdelt',
   'https://www.hola.com/us/entertainment/20260804913298/gabriel-luna-lands-killer-new-role-in-dexter-resurrection/', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260805001500_1', 'ent_barack-obama', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in sitkasentinel.com', 'Barack Obama mentioned in sitkasentinel.com', 'src_gdelt',
   'http://www.sitkasentinel.com/premium/stories/trump-administration-mounts-second-attempt-to-relax-offshore-arctic-drilling-rules,161434', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260805001500_1', 'ent_lee-kuan-yew', '2026-08-05', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in vanguardngr.com', 'Lee Kuan Yew mentioned in vanguardngr.com', 'src_gdelt',
   'https://www.vanguardngr.com/2026/08/senator-abdullahi-adamu-at-80-a-life-of-service-wisdom-and-grace-2-by-usman-sarki/', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260805001500_1', 'ent_narendra-modi', '2026-08-05', 2026, 'public_appearance', 'news',
   'Parliament Panel Questions Google, Meta, X Over Cyber Fraud as India Lost Rs 22,495 Crore in 2025 (Narendra Modi mentioned)', 'Parliament Panel Questions Google, Meta, X Over Cyber Fraud as India Lost Rs 22,495 Crore in 2025', 'src_gdelt',
   'https://dailypioneer.com/news/panel-turns-heat-on-big-tech', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260805001500_1', 'ent_billie-holiday', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in madamenoire.com', 'Billie Holiday mentioned in madamenoire.com', 'src_gdelt',
   'https://madamenoire.com/1684385/locs-beginner-guide/', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260805001500_1', 'ent_arnold-schwarzenegger', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in hola.com', 'Arnold Schwarzenegger mentioned in hola.com', 'src_gdelt',
   'https://www.hola.com/us/celebrities/20260804916429/arnold-schwarzenegger-maria-shriver-rare-reunion-photo-birthday/', 0.65, 1, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260805003000_2', 'ent_bruce-springsteen', '2026-08-05', 2026, 'public_appearance', 'news',
   'Glen Hansard: Bono, Eddie Vedder among mourners at funeral (Bruce Springsteen mentioned)', 'Glen Hansard: Bono, Eddie Vedder among mourners at funeral', 'src_gdelt',
   'https://www.cp24.com/news/entertainment/2026/08/04/bono-eddie-vedder-among-mourners-at-the-funeral-of-oscar-winning-songwriter-glen-hansard/', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260805003000_2', 'ent_billie-eilish', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in wape.com', 'Billie Eilish mentioned in wape.com', 'src_gdelt',
   'https://www.wape.com/news/get-your-first-look-billie-eilish-new-movie-the-bell-jar/V37TMNT3FI7MTBY6JGUJOWH574/', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260805003000_2', 'ent_barack-obama', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in wgauradio.com', 'Barack Obama mentioned in wgauradio.com', 'src_gdelt',
   'https://www.wgauradio.com/news/politics/latest-michigan/TQKAT5REKE6SXPL5KCVPTIRXYI/', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260805003000_2', 'ent_narendra-modi', '2026-08-05', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in hindustantimes.com', 'Narendra Modi mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/astrology/horoscope/panchang-today-august-5-2026-krishna-saptami-under-ashwini-nakshatra-101785748205861.html', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260805003000_2', 'ent_narendra-modi', '2026-08-05', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in hindustantimes.com', 'Narendra Modi mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/astrology/horoscope/capricorn-horoscope-today-august-5-2026-you-may-enjoy-spending-time-with-people-who-make-you-feel-at-ease-101785853723720.html', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260805003000_2', 'ent_narendra-modi', '2026-08-05', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in hindustantimes.com', 'Narendra Modi mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/astrology/horoscope/pisces-horoscope-today-august-5-2026-although-your-confidence-is-rising-your-energy-may-not-be-fully-even-101785854304413.html', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260805003000_2', 'ent_barack-obama', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in wgauradio.com', 'Barack Obama mentioned in wgauradio.com', 'src_gdelt',
   'https://www.wgauradio.com/news/politics/michigan-democrats/3PVRVM5MOI4MTHQRTZLZ6QVGI4/', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260805003000_2', 'ent_narendra-modi', '2026-08-05', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in dailyexcelsior.com', 'Narendra Modi mentioned in dailyexcelsior.com', 'src_gdelt',
   'https://www.dailyexcelsior.com/sarnaths-inclusion-in-unesco-world-heritage-list-will-increase-tourist-footfalls-gajendra-singh-shekhawat/', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260805003000_2', 'ent_barack-obama', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in alaskapublic.org', 'Barack Obama mentioned in alaskapublic.org', 'src_gdelt',
   'https://alaskapublic.org/news/environment/2026-08-04/trump-administration-mounts-second-attempt-to-relax-offshore-arctic-drilling-rules', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260805003000_2', 'ent_billie-eilish', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Eilish Makes Feature-Film Acting Debut in Sarah Polleys The Bell Jar (Billie Eilish mentioned)', 'Billie Eilish Makes Feature-Film Acting Debut in Sarah Polleys The Bell Jar', 'src_gdelt',
   'https://www.artistdirect.com/news/2026-08-04-billie-eilish-makes-feature-film-acting-debut-in-sarah-polleys-the-bell-jar', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260805003000_2', 'ent_brett-kavanaugh', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in hotair.com', 'Brett Kavanaugh mentioned in hotair.com', 'src_gdelt',
   'https://hotair.com/mark-judge/2026/08/04/columbia-dean-who-praised-man-who-tortured-women-now-welcomes-journalist-in-residence-scott-pelley-n3817637', 0.65, 2, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260805004500_3', 'ent_bob-fosse', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Fosse mentioned in vaildaily.com', 'Bob Fosse mentioned in vaildaily.com', 'src_gdelt',
   'https://www.vaildaily.com/news/every-step-tells-a-story-rennie-harris-puremovement-american-street-dance-theater-comes-to-vilar/', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260805004500_3', 'ent_alfred-hitchcock', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in theconversation.com', 'Alfred Hitchcock mentioned in theconversation.com', 'src_gdelt',
   'https://theconversation.com/how-hitchcocks-vertigo-gave-us-the-dolly-zoom-one-of-cinemas-trippiest-visual-effects-282059', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260805004500_3', 'ent_bari-weiss', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in aol.com', 'Bari Weiss mentioned in aol.com', 'src_gdelt',
   'https://www.aol.com/articles/60-minutes-producer-scolds-staff-153804000.html', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260805004500_3', 'ent_benny-goodman', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benny Goodman mentioned in idahostatejournal.com', 'Benny Goodman mentioned in idahostatejournal.com', 'src_gdelt',
   'https://www.idahostatejournal.com/news/local/what-to-do-this-week-in-east-idaho/article_0b392bd9-a167-4613-a450-5d967405f3c6.html', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260805004500_3', 'ent_aaron-rodgers', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in wpxi.com', 'Aaron Rodgers mentioned in wpxi.com', 'src_gdelt',
   'https://www.wpxi.com/news/local/things-get-chippy-steelers-training-camp-players-focus-iron-shaping-iron/644PKUPGPRBKHJ7MH3BAVQF3VQ/', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260805004500_3', 'ent_alia-bhatt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in tribuneindia.com', 'Alia Bhatt mentioned in tribuneindia.com', 'src_gdelt',
   'https://www.tribuneindia.com/news/entertainment/chef-enayatullah-safis-journey-from-kabul-to-copenhagen-is-powered-by-bollywood-and-indian-food/', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260805004500_3', 'ent_brad-pitt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in 3ba.com.au', 'Brad Pitt mentioned in 3ba.com.au', 'src_gdelt',
   'https://www.3ba.com.au/trending/entertainment/brad-pitt-had-to-break-up-a-fight-between-scott-eastwood-and-shia-labeouf-heres-why/', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260805004500_3', 'ent_bill-clinton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in washingtonexaminer.com', 'Bill Clinton mentioned in washingtonexaminer.com', 'src_gdelt',
   'https://www.washingtonexaminer.com/opinion/columnists/4674540/chautauqua-new-york-slow-push-toward-balance/', 0.65, 3, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260805010000_4', 'ent_alexander-hamilton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in dailykos.com', 'Alexander Hamilton mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/4/800079503/community/kitchen-table-kibitzing-8-4-2026-mostly-tunes/', 0.65, 4, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260805010000_4', 'ent_billie-eilish', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in hits973.com', 'Billie Eilish mentioned in hits973.com', 'src_gdelt',
   'https://www.hits973.com/news/get-your-first-look-billie-eilish-new-movie-the-bell-jar/V37TMNT3FI7MTBY6JGUJOWH574/', 0.65, 4, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260805010000_4', 'ent_caitlin-clark', '2026-08-05', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in mesabitribune.com', 'Caitlin Clark mentioned in mesabitribune.com', 'src_gdelt',
   'https://www.mesabitribune.com/around_the_web/news/mcnabb-cunningham-s-clear-position-to-protect-women-s-spaces-at-another-level/article_973ce64d-3f47-57b5-844d-84052c8014be.html', 0.65, 4, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_judge_20260805010000_4', 'ent_aaron-judge', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Judge mentioned in nbcbayarea.com', 'Aaron Judge mentioned in nbcbayarea.com', 'src_gdelt',
   'https://www.nbcbayarea.com/mlb/san-francisco-giants/heliot-ramos-career-yankees-trade/4123430/', 0.65, 4, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260805010000_4', 'ent_billie-eilish', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in b985.com', 'Billie Eilish mentioned in b985.com', 'src_gdelt',
   'https://www.b985.com/news/get-your-first-look-billie-eilish-new-movie-the-bell-jar/V37TMNT3FI7MTBY6JGUJOWH574/', 0.65, 4, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260805010000_4', 'ent_bill-gates', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in pjmedia.com', 'Bill Gates mentioned in pjmedia.com', 'src_gdelt',
   'https://pjmedia.com/catherinesalgado/2026/08/04/bill-gates-was-embedded-in-us-agency-during-covid-era-n4955782', 0.65, 4, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260805011500_5', 'ent_brad-pitt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in 2ec.com.au', 'Brad Pitt mentioned in 2ec.com.au', 'src_gdelt',
   'https://www.2ec.com.au/trending/entertainment/brad-pitt-had-to-break-up-a-fight-between-scott-eastwood-and-shia-labeouf-heres-why/', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260805011500_5', 'ent_brad-pitt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in 2nm.com.au', 'Brad Pitt mentioned in 2nm.com.au', 'src_gdelt',
   'https://www.2nm.com.au/trending/entertainment/brad-pitt-had-to-break-up-a-fight-between-scott-eastwood-and-shia-labeouf-heres-why/', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260805011500_5', 'ent_brett-kavanaugh', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in newsweek.com', 'Brett Kavanaugh mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/todd-blanches-abortion-remarks-just-cost-him-a-key-vote-12284500', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260805011500_5', 'ent_brad-pitt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in comingsoon.net', 'Brad Pitt mentioned in comingsoon.net', 'src_gdelt',
   'https://www.comingsoon.net/movies/news/2171366-interview-with-the-vampire-4k-bonus-features-brad-pitt-tom-cruise', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260805011500_5', 'ent_bill-gates', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in wyomingnews.com', 'Bill Gates mentioned in wyomingnews.com', 'src_gdelt',
   'http://www.wyomingnews.com/news/local_news/frontlines-of-the-future-ai-data-centers-move-in-next-door/article_84b56481-5260-55ea-aae9-e1a82a47e682.html', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260805011500_5', 'ent_breanna-stewart', '2026-08-05', 2026, 'public_appearance', 'news',
   'Liberty believe in their Big 3 as they go for another win over Storm (Breanna Stewart mentioned)', 'Liberty believe in their Big 3 as they go for another win over Storm', 'src_gdelt',
   'http://www.newyorktelegraph.com/news/279222707/liberty-believe-in-their-big-3-as-they-go-for-another-win-over-storm', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260805011500_5', 'ent_billie-eilish', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in elitedaily.com', 'Billie Eilish mentioned in elitedaily.com', 'src_gdelt',
   'https://www.elitedaily.com/beauty/kylie-jenner-mood-stones-perfumes-review', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260805011500_5', 'ent_babe-ruth', '2026-08-05', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in dailynews.com', 'Babe Ruth mentioned in dailynews.com', 'src_gdelt',
   'https://www.dailynews.com/2020/06/12/dodgers-coach-george-lombard-tries-to-honor-the-work-of-his-activist-mother/', 0.65, 5, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260805013000_6', 'ent_bari-weiss', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in freemalaysiatoday.com', 'Bari Weiss mentioned in freemalaysiatoday.com', 'src_gdelt',
   'https://www.freemalaysiatoday.com/category/business/2026/08/05/paramount-ceo-says-politics-fuelling-warner-bros-merger-battle', 0.65, 6, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_wilder_20260805013000_6', 'ent_billy-wilder', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Wilder mentioned in movieweb.com', 'Billy Wilder mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/great-war-movie-masterpieces-20th-century/', 0.65, 6, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260805013000_6', 'ent_al-gore', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in redstate.com', 'Al Gore mentioned in redstate.com', 'src_gdelt',
   'https://redstate.com/beckynoble/2026/08/04/carville-and-other-dem-dinosaurs-threaten-to-leave-the-party-the-new-democrat-party-doesnt-care-n2205181', 0.65, 6, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260805013000_6', 'ent_bill-clinton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in redstate.com', 'Bill Clinton mentioned in redstate.com', 'src_gdelt',
   'https://redstate.com/beckynoble/2026/08/04/carville-and-other-dem-dinosaurs-threaten-to-leave-the-party-the-new-democrat-party-doesnt-care-n2205181', 0.65, 6, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260805013000_6', 'ent_benny-goodman', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benny Goodman mentioned in idahostatejournal.com', 'Benny Goodman mentioned in idahostatejournal.com', 'src_gdelt',
   'http://www.idahostatejournal.com/news/local/what-to-do-this-week-in-east-idaho/article_0b392bd9-a167-4613-a450-5d967405f3c6.html', 0.65, 6, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260805014500_7', 'ent_buffalo-bill', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in si.com', 'Buffalo Bill mentioned in si.com', 'src_gdelt',
   'https://www.si.com/nfl/bills/onsi/whats-bills-plan-when-injured-dt-deone-walker-is-unavailable', 0.65, 7, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_graham_20260805014500_7', 'ent_billy-graham', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Graham mentioned in wbnh.org', 'Billy Graham mentioned in wbnh.org', 'src_gdelt',
   'https://www.wbnh.org/school', 0.65, 7, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260805014500_7', 'ent_andrew-jackson', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in cnbc.com', 'Andrew Jackson mentioned in cnbc.com', 'src_gdelt',
   'https://www.cnbc.com/2026/08/05/softbank-samsung-sk-hynix-samsung-tech-rally.html', 0.65, 7, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260805014500_7', 'ent_caitlin-clark', '2026-08-05', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in walkermn.com', 'Caitlin Clark mentioned in walkermn.com', 'src_gdelt',
   'http://www.walkermn.com/around_the_web/news/mcnabb-cunningham-s-clear-position-to-protect-women-s-spaces-at-another-level/article_915d3555-cfa1-5855-bb4f-9fd21d0dfc80.html', 0.65, 7, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260805020000_8', 'ent_bill-clinton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in herald-zeitung.com', 'Bill Clinton mentioned in herald-zeitung.com', 'src_gdelt',
   'https://herald-zeitung.com/opinion/shribman-new-hampshire-won-t-go-quietly-into-third-place/article_90dcbd6e-40d9-4ed9-a2c8-92b11c4db220.html', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dole_20260805020000_8', 'ent_bob-dole', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Dole mentioned in herald-zeitung.com', 'Bob Dole mentioned in herald-zeitung.com', 'src_gdelt',
   'https://herald-zeitung.com/opinion/shribman-new-hampshire-won-t-go-quietly-into-third-place/article_90dcbd6e-40d9-4ed9-a2c8-92b11c4db220.html', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260805020000_8', 'ent_aaron-rodgers', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in yardbarker.com', 'Aaron Rodgers mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/nfl/articles/steelers_mike_mccarthy_already_fighting_for_respect_in_first_year_with_aaron_rodgers/s1_13132_44138195', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260805020000_8', 'ent_bruce-springsteen', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in katsfm.com', 'Bruce Springsteen mentioned in katsfm.com', 'src_gdelt',
   'https://katsfm.com/ixp/295/p/eagles-sphere-las-vegas-2027/', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260805020000_8', 'ent_bari-weiss', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in thewrap.com', 'Bari Weiss mentioned in thewrap.com', 'src_gdelt',
   'https://www.thewrap.com/media-platforms/journalism/cbs-news-responds-sharyn-alfonsi-epstein-60-minutes-segment-incomplete/', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260805020000_8', 'ent_aaron-rodgers', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in yardbarker.com', 'Aaron Rodgers mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/nfl/articles/steelers_legend_ben_roethlisberger_makes_it_clear_he_disagrees_with_mike_mccarthys_qb_plan/s1_17101_44138555', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260805020000_8', 'ent_bill-clinton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Clinton''s Rape Victim Has This To Tell Hillary... (Bill Clinton mentioned)', 'Bill Clinton''s Rape Victim Has This To Tell Hillary...', 'src_gdelt',
   'https://libertynewsnow.com/bill-clintons-rape-victim-has-this-to-tell-hillary/article2185', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260805020000_8', 'ent_caitlin-clark', '2026-08-05', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in foxwilmington.com', 'Caitlin Clark mentioned in foxwilmington.com', 'src_gdelt',
   'https://foxwilmington.com/anti-caitlin-clark-espn-pundit-tries-justifying-claim-that-clark-isnt-among-the-best-guards-in-wnba/', 0.65, 8, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260805021500_9', 'ent_eric-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in yahoo.com', 'Eric Trump mentioned in yahoo.com', 'src_gdelt',
   'https://finance.yahoo.com/markets/crypto/articles/american-bitcoin-q2-earnings-call-140429202.html', 0.65, 9, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260805021500_9', 'ent_bari-weiss', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in japantoday.com', 'Bari Weiss mentioned in japantoday.com', 'src_gdelt',
   'https://japantoday.com/category/entertainment/paramount-ceo-says-politics-fueling-warner-bros.-merger-battle', 0.65, 9, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260805023000_10', 'ent_ben-affleck', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in showbiz411.com', 'Ben Affleck mentioned in showbiz411.com', 'src_gdelt',
   'https://www.showbiz411.com/2026/08/04/hollywoods-young-married-couples-summer-tom-holland-and-zendaya-pitched-spider-man-to-victor-can-callum-turner-and-dua-lipa-do-so-too', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260805023000_10', 'ent_blake-lively', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in showbiz411.com', 'Blake Lively mentioned in showbiz411.com', 'src_gdelt',
   'https://www.showbiz411.com/2026/08/04/hollywoods-young-married-couples-summer-tom-holland-and-zendaya-pitched-spider-man-to-victor-can-callum-turner-and-dua-lipa-do-so-too', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_judge_20260805023000_10', 'ent_aaron-judge', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Judge mentioned in thebiglead.com', 'Aaron Judge mentioned in thebiglead.com', 'src_gdelt',
   'https://www.thebiglead.com/george-lombard-jr-does-aaron-judge-impression-with-hr-in-yankees-debut/', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260805023000_10', 'ent_arnold-schwarzenegger', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in vanmag.com', 'Arnold Schwarzenegger mentioned in vanmag.com', 'src_gdelt',
   'https://vanmag.com/city/health-and-fitness/neurofeedback-vancouver-two-minds-training/', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anthony_wayne_20260805023000_10', 'ent_anthony-wayne', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anthony Wayne mentioned in screenrant.com', 'Anthony Wayne mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/batman-daughter-helena-tragedy/', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260805023000_10', 'ent_ben-affleck', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in screenrant.com', 'Ben Affleck mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/batman-daughter-helena-tragedy/', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260805023000_10', 'ent_bruce-springsteen', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in autoweek.com', 'Bruce Springsteen mentioned in autoweek.com', 'src_gdelt',
   'https://www.autoweek.com/racing/nascar/a73348261/clash-belongs-at-daytona/', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anthony_kennedy_20260805023000_10', 'ent_anthony-kennedy', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anthony Kennedy mentioned in wafb.com', 'Anthony Kennedy mentioned in wafb.com', 'src_gdelt',
   'https://www.wafb.com/2026/08/04/new-grant-program-looks-spruce-up-baton-rouge-storefronts/', 0.65, 10, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_fred_trump_20260805024500_11', 'ent_fred-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Fred Trump mentioned in thedailybeast.com', 'Fred Trump mentioned in thedailybeast.com', 'src_gdelt',
   'https://www.thedailybeast.com/bone-spurs-president-uses-ai-to-award-himself-ultimate-medal/', 0.65, 11, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260805024500_11', 'ent_abraham-lincoln', '2026-08-05', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in thedailybeast.com', 'Abraham Lincoln mentioned in thedailybeast.com', 'src_gdelt',
   'https://www.thedailybeast.com/bone-spurs-president-uses-ai-to-award-himself-ultimate-medal/', 0.65, 11, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260805024500_11', 'ent_abraham-lincoln', '2026-08-05', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in oakpark.com', 'Abraham Lincoln mentioned in oakpark.com', 'src_gdelt',
   'https://www.oakpark.com/2026/08/04/a-casualty-of-war-creative-genius/', 0.65, 11, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amy_hood_20260805024500_11', 'ent_amy-hood', '2026-08-05', 2026, 'public_appearance', 'news',
   'Amy Hood mentioned in fool.com', 'Amy Hood mentioned in fool.com', 'src_gdelt',
   'https://www.fool.com/investing/2026/08/04/msft-stock-up-july-earnings-ai-cloud/?source=iedfolrf0000001', 0.65, 11, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260805030000_12', 'ent_barbra-streisand', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in goldderby.com', 'Barbra Streisand mentioned in goldderby.com', 'src_gdelt',
   'https://www.goldderby.com/tv/2026/hacks-emmys-best-comedy-series-record-the-studio/', 0.65, 12, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobbi_brown_20260805030000_12', 'ent_bobbi-brown', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bobbi Brown mentioned in naturalnews.com', 'Bobbi Brown mentioned in naturalnews.com', 'src_gdelt',
   'https://www.naturalnews.com/2026-08-04-cucumbers-water-content-nutrient-profile-reported-benefits.html', 0.65, 12, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260805031500_13', 'ent_brad-paisley', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in wlwt.com', 'Brad Paisley mentioned in wlwt.com', 'src_gdelt',
   'https://www.wlwt.com/article/max-geers-country-music-voa-festival-opener/73347706', 0.65, 13, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aishwarya_rai_20260805031500_13', 'ent_aishwarya-rai', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aishwarya Rai mentioned in newkerala.com', 'Aishwarya Rai mentioned in newkerala.com', 'src_gdelt',
   'https://www.newkerala.com/news/a/aishwarya-rai-bachchan-aaradhya-greet-airport-staff-namaste-227.htm', 0.65, 13, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aishwarya_rai_20260805031500_13', 'ent_aishwarya-rai', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aishwarya Rai Bachchan, Aaradhya greet airport staff with ''Namaste'' as they return from US trip (Aishwarya Rai mentioned)', 'Aishwarya Rai Bachchan, Aaradhya greet airport staff with ''Namaste'' as they return from US trip', 'src_gdelt',
   'https://www.prokerala.com/news/articles/a1796485.html', 0.65, 13, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260805031500_13', 'ent_barbara-walters', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in geo.tv', 'Barbara Walters mentioned in geo.tv', 'src_gdelt',
   'https://www.geo.tv/latest/676190-whoopi-goldberg-teases-shocking-paycheck-she-gets-for', 0.65, 13, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260805031500_13', 'ent_al-pacino', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in wsvn.com', 'Al Pacino mentioned in wsvn.com', 'src_gdelt',
   'https://wsvn.com/entertainment/deco-drive/farva-and-thorny-return-for-a-prickly-engagement-battle-with-drug-ring-in-cop-comedy-super-troopers-3/', 0.65, 13, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260805033000_14', 'ent_melania-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in jpost.com', 'Melania Trump mentioned in jpost.com', 'src_gdelt',
   'http://www.jpost.com/international/article-904607', 0.65, 14, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260805033000_14', 'ent_lee-kuan-yew', '2026-08-05', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in dailytrust.com', 'Lee Kuan Yew mentioned in dailytrust.com', 'src_gdelt',
   'https://dailytrust.com/senator-abdullahi-adamu-80-a-life-of-service-wisdom-and-grace-ii/', 0.65, 14, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260805033000_14', 'ent_arnold-schwarzenegger', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in radaronline.com', 'Arnold Schwarzenegger mentioned in radaronline.com', 'src_gdelt',
   'https://radaronline.com/p/arnold-schwarzenegger-ex-maria-shriver-pose-rare-photo-together/', 0.65, 14, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260805033000_14', 'ent_bruce-lee', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in cbc.ca', 'Bruce Lee mentioned in cbc.ca', 'src_gdelt',
   'https://www.cbc.ca/news/canada/north/teenage-karate-champion-from-the-yukon-to-compete-on-international-stage-9.7296018', 0.65, 14, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260805034500_15', 'ent_melania-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in jpost.com', 'Melania Trump mentioned in jpost.com', 'src_gdelt',
   'https://www.jpost.com/international/article-904607', 0.65, 15, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260805040000_16', 'ent_barbra-streisand', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in christianpost.com', 'Barbra Streisand mentioned in christianpost.com', 'src_gdelt',
   'https://www.christianpost.com/voices/faucis-downfall-reveals-the-danger-of-rule-by-experts.html', 0.65, 16, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260805040000_16', 'ent_billy-joel', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in penarthtimes.co.uk', 'Billy Joel mentioned in penarthtimes.co.uk', 'src_gdelt',
   'https://www.penarthtimes.co.uk/news/26435724.britains-got-talent-star-logan-paul-murphy-visit-penarth/', 0.65, 16, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260805040000_16', 'ent_al-gore', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in businessday.co.za', 'Al Gore mentioned in businessday.co.za', 'src_gdelt',
   'https://www.businessday.co.za/opinion/2026-08-05-richard-calland-climate-fatalism-grips-boardrooms/', 0.65, 16, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260805040000_16', 'ent_ben-affleck', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in screenrant.com', 'Ben Affleck mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/netflix-teach-you-a-lesson-rare-all-time-achievement/', 0.65, 16, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260805041500_17', 'ent_benny-goodman', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benny Goodman mentioned in lansingcitypulse.com', 'Benny Goodman mentioned in lansingcitypulse.com', 'src_gdelt',
   'https://lansingcitypulse.com/jazzfest-michigan-pitches-a-capacious-five-day-musical-tent/', 0.65, 17, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aishwarya_rai_20260805041500_17', 'ent_aishwarya-rai', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aishwarya Rai mentioned in ianslive.in', 'Aishwarya Rai mentioned in ianslive.in', 'src_gdelt',
   'https://ianslive.in/aishwarya-rai-bachchan-aaradhya-greet-airport-staff-with-namaste-as-they-return-from-us-trip--20260805072928', 0.65, 17, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260805041500_17', 'ent_benjamin-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in galvnews.com', 'Benjamin Franklin mentioned in galvnews.com', 'src_gdelt',
   'https://www.galvnews.com/opinion/guest_columns/guest-commentary-democracy-is-a-use-it-or-lose-it-proposition/article_c38df4a3-d84b-470a-902d-4fd08e96803a.html', 0.65, 17, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260805043000_18', 'ent_buzz-aldrin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in winnipegfreepress.com', 'Buzz Aldrin mentioned in winnipegfreepress.com', 'src_gdelt',
   'https://www.winnipegfreepress.com/arts-and-life/life/2026/08/04/home-where-astronaut-neil-armstrongs-boyhood-dreams-of-flying-took-off-is-for-sale', 0.65, 18, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260805043000_18', 'ent_bill-clinton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in cityam.com', 'Bill Clinton mentioned in cityam.com', 'src_gdelt',
   'https://www.cityam.com/david-brent-was-supposed-to-be-a-satire-now-he-looks-like-a-model-for-political-leaders/', 0.65, 18, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260805044500_19', 'ent_britney-spears', '2026-08-05', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in theguardian.com', 'Britney Spears mentioned in theguardian.com', 'src_gdelt',
   'https://www.theguardian.com/culture/2026/aug/05/tulisa-contostavlos-interview-n-dubz-press-regulation-campaign-sun-on-sunday-sting', 0.65, 19, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260805044500_19', 'ent_albert-einstein', '2026-08-05', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in rnz.co.nz', 'Albert Einstein mentioned in rnz.co.nz', 'src_gdelt',
   'https://www.rnz.co.nz/news/world/894838/total-eclipse-gives-scientists-chance-to-probe-sun-s-mysteries', 0.65, 19, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260805044500_19', 'ent_britney-spears', '2026-08-05', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in aol.co.uk', 'Britney Spears mentioned in aol.co.uk', 'src_gdelt',
   'https://www.aol.co.uk/articles/isn-t-vendetta-tulisa-contostavlos-040009000.html', 0.65, 19, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amy_hood_20260805044500_19', 'ent_amy-hood', '2026-08-05', 2026, 'public_appearance', 'news',
   'Amy Hood mentioned in yahoo.com', 'Amy Hood mentioned in yahoo.com', 'src_gdelt',
   'https://finance.yahoo.com/technology/ai/articles/microsoft-amazon-spending-billions-ai-174738514.html', 0.65, 19, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260805044500_19', 'ent_alfred-hitchcock', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in aol.co.uk', 'Alfred Hitchcock mentioned in aol.co.uk', 'src_gdelt',
   'https://www.aol.co.uk/articles/put-raging-dent-neil-young-040009000.html', 0.65, 19, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260805050000_20', 'ent_babe-ruth', '2026-08-05', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in yardbarker.com', 'Babe Ruth mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/mlb/articles/pete_crow_armstrong_admits_liking_outrageous_babe_ruth_conspiracy_theory/s1_127_44135849', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260805050000_20', 'ent_alia-bhatt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in hindustantimes.com', 'Alia Bhatt mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/htcity/cinema/exclusive-kajol-women-on-screen-are-more-than-just-a-side-plot-now-101785848077879.html', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260805050000_20', 'ent_caitlin-clark', '2026-08-05', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in yardbarker.com', 'Caitlin Clark mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/wnba/articles/fever_announce_unfortunate_news_after_caitlin_clarks_big_week/s1_17081_44138602', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260805050000_20', 'plc_boston-university', '2026-08-05', 2026, 'public_appearance', 'news',
   'Boston University mentioned in engineeringevil.com', 'Boston University mentioned in engineeringevil.com', 'src_gdelt',
   'https://engineeringevil.com/2017/04/04/how-to-hack-a-cell/', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aishwarya_rai_20260805050000_20', 'ent_aishwarya-rai', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aishwarya Rai Bachchan, Aaradhya greet airport staff with ''Namaste'' as they return from US trip | MorungExpress (Aishwarya Rai mentioned)', 'Aishwarya Rai Bachchan, Aaradhya greet airport staff with ''Namaste'' as they return from US trip | MorungExpress', 'src_gdelt',
   'https://morungexpress.com/aishwarya-rai-bachchan-aaradhya-greet-airport-staff-with-namaste-as-they-return-from-us-trip', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_graham_20260805050000_20', 'ent_billy-graham', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Graham mentioned in christianpost.com', 'Billy Graham mentioned in christianpost.com', 'src_gdelt',
   'https://www.christianpost.com/podcast/sabalenka-defends-gender-tests-in-n-out-ceo-says-turn-to-god-disney-actor-loses-broadway-role.html', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260805050000_20', 'ent_al-gore', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in mountaineagle.com', 'Al Gore mentioned in mountaineagle.com', 'src_gdelt',
   'https://www.mountaineagle.com/faith/how-funeral-traditions-are-changing/article_b97970ec-e5d0-529b-b349-6d9b09de9410.html', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260805050000_20', 'ent_buzz-aldrin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in union-bulletin.com', 'Buzz Aldrin mentioned in union-bulletin.com', 'src_gdelt',
   'https://www.union-bulletin.com/news/national/home-where-astronaut-neil-armstrongs-boyhood-dreams-of-flying-took-off-is-for-sale/article_9317a0d7-2fa6-5f0e-bffb-5c02f0b37820.html', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260805050000_20', 'ent_bruce-springsteen', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in bucksfreepress.co.uk', 'Bruce Springsteen mentioned in bucksfreepress.co.uk', 'src_gdelt',
   'https://www.bucksfreepress.co.uk/news/26435544.secret-service-cotswolds-wedding-tech-icons-daughter-stalked/', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260805050000_20', 'ent_britney-spears', '2026-08-05', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in alice965.com', 'Britney Spears mentioned in alice965.com', 'src_gdelt',
   'https://www.alice965.com/2026/08/04/jennifer-lopez-couldnt-help-recreating-this-iconic-madonna-moment-in-venice-i-had-to-do-it/', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260805050000_20', 'ent_buzz-aldrin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in taylorvilledailynews.com', 'Buzz Aldrin mentioned in taylorvilledailynews.com', 'src_gdelt',
   'https://taylorvilledailynews.com/local-news/srn-us-news/6329314b9687616869eade35d3ec1341', 0.65, 20, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260805051500_21', 'ent_albert-einstein', '2026-08-05', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in philstar.com', 'Albert Einstein mentioned in philstar.com', 'src_gdelt',
   'https://www.philstar.com/lifestyle/on-the-radar/2026/08/05/2547179/total-eclipse-gives-scientists-chance-probe-suns-mysteries', 0.65, 21, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260805051500_21', 'ent_billy-joel', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in penarthtimes.co.uk', 'Billy Joel mentioned in penarthtimes.co.uk', 'src_gdelt',
   'https://www.penarthtimes.co.uk/news/26435008.whats-things-penarth-itinerary/', 0.65, 21, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260805051500_21', 'ent_bruce-springsteen', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in oxfordmail.co.uk', 'Bruce Springsteen mentioned in oxfordmail.co.uk', 'src_gdelt',
   'https://www.oxfordmail.co.uk/news/26437044.secret-service-cotswolds-wedding-tech-icons-daughter-stalked/', 0.65, 21, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260805051500_21', 'ent_adam-scott', '2026-08-05', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in collider.com', 'Adam Scott mentioned in collider.com', 'src_gdelt',
   'https://collider.com/perfect-apple-tv-shows-no-bad-seasons/', 0.65, 21, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260805051500_21', 'ent_arnold-schwarzenegger', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in collider.com', 'Arnold Schwarzenegger mentioned in collider.com', 'src_gdelt',
   'https://collider.com/r-rated-action-movies-that-can-be-called-masterpieces/', 0.65, 21, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260805051500_21', 'ent_bruce-lee', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in collider.com', 'Bruce Lee mentioned in collider.com', 'src_gdelt',
   'https://collider.com/r-rated-action-movies-that-can-be-called-masterpieces/', 0.65, 21, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260805051500_21', 'ent_bruce-willis', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in collider.com', 'Bruce Willis mentioned in collider.com', 'src_gdelt',
   'https://collider.com/r-rated-action-movies-that-can-be-called-masterpieces/', 0.65, 21, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260805053000_22', 'ent_barbara-walters', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in comingsoon.net', 'Barbara Walters mentioned in comingsoon.net', 'src_gdelt',
   'https://www.comingsoon.net/tv/news/2171530-whoopi-goldberg-the-view-salary-paycheck-shock-fans', 0.65, 22, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260805053000_22', 'ent_buzz-aldrin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in mymotherlode.com', 'Buzz Aldrin mentioned in mymotherlode.com', 'src_gdelt',
   'https://mymotherlode.com/news/science/11043416/home-where-astronaut-neil-armstrongs-boyhood-dreams-of-flying-took-off-is-for-sale.html', 0.65, 22, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260805060000_24', 'ent_black-hawk', '2026-08-05', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in casino.org', 'Black Hawk mentioned in casino.org', 'src_gdelt',
   'https://www.casino.org/news/monarch-casino-black-hawk-hit-with-class-action-over-dealer-pay-and-tip-credit/', 0.65, 24, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260805060000_24', 'ent_al-pacino', '2026-08-05', 2026, 'public_appearance', 'news',
   'Jared Leto loses role in major new film amid sexual misconduct claims - report (Al Pacino mentioned)', 'Jared Leto loses role in major new film amid sexual misconduct claims - report', 'src_gdelt',
   'https://www.film-news.co.uk:443/news/UK/128336/Jared-Leto-loses-role-in-major-new-film-amid-sexual-misconduct-claims-report', 0.65, 24, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260805060000_24', 'ent_bob-dylan', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in nola.com', 'Bob Dylan mentioned in nola.com', 'src_gdelt',
   'https://www.nola.com/opinions/letters/letters-new-orleans-special/article_67ef8515-1b3f-4225-a3ec-1f475dfa13f9.html', 0.65, 24, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260805060000_24', 'ent_albert-einstein', '2026-08-05', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in freemalaysiatoday.com', 'Albert Einstein mentioned in freemalaysiatoday.com', 'src_gdelt',
   'https://www.freemalaysiatoday.com/category/world/2026/08/05/total-eclipse-gives-scientists-chance-to-probe-sun-s-mysteries', 0.65, 24, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260805061500_25', 'ent_buzz-aldrin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in yahoo.com', 'Buzz Aldrin mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/lifestyle/articles/home-where-astronaut-neil-armstrongs-040549128.html', 0.65, 25, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260805063000_26', 'ent_al-pacino', '2026-08-05', 2026, 'public_appearance', 'news',
   'Jared Leto loses role in major new film amid sexual misconduct claims - report (Al Pacino mentioned)', 'Jared Leto loses role in major new film amid sexual misconduct claims - report', 'src_gdelt',
   'https://www.film-news.co.uk/news/UK/128336/Jared-Leto-loses-role-in-major-new-film-amid-sexual-misconduct-claims-report', 0.65, 26, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260805064500_27', 'ent_britney-spears', '2026-08-05', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in glamsham.com', 'Britney Spears mentioned in glamsham.com', 'src_gdelt',
   'https://glamsham.com/hollywood/entertainment-news/britney-spears-stuns-in-edgy-outfit-during-malibu-outing-and-looks-happier-than-ever/', 0.65, 27, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260805064500_27', 'ent_al-gore', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in newsbusters.org', 'Al Gore mentioned in newsbusters.org', 'src_gdelt',
   'https://www.newsbusters.org/blogs/nb/marc-morano/2012/12/12/global-warming-now-officially-down-memory-hole', 0.65, 27, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260805064500_27', 'ent_andrew-jackson', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in herald-dispatch.com', 'Andrew Jackson mentioned in herald-dispatch.com', 'src_gdelt',
   'https://www.herald-dispatch.com/news/putnam_news/appalachian-bluebird-naming-traditions-in-old-appalachia/article_0e2d4215-3345-4297-8bae-321da409bc29.html', 0.65, 27, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260805070000_28', 'ent_billie-holiday', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in wpsdlocal6.com', 'Billie Holiday mentioned in wpsdlocal6.com', 'src_gdelt',
   'https://www.wpsdlocal6.com/news/paducah-symphony-orchestra-to-hold-concert-benefiting-hotel-metropolitan-thursday/article_53b9776c-00fc-429e-9fa0-c2841b87060d.html', 0.65, 28, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260805070000_28', 'ent_lee-kuan-yew', '2026-08-05', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in freepressjournal.in', 'Lee Kuan Yew mentioned in freepressjournal.in', 'src_gdelt',
   'https://www.freepressjournal.in/lifestyle/singapore-founding-pm-lee-kuan-yews-engraved-montblanc-pen-goes-under-the-hammer-for-50000', 0.65, 28, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260805071500_29', 'ent_lee-kuan-yew', '2026-08-05', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in straitstimes.com', 'Lee Kuan Yew mentioned in straitstimes.com', 'src_gdelt',
   'https://www.straitstimes.com/life/lee-kuan-yews-sm-engraved-montblanc-pen-heads-to-auction-with-a-50000-high-estimate', 0.65, 29, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260805073000_30', 'ent_brad-paisley', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in wlwt.com', 'Brad Paisley mentioned in wlwt.com', 'src_gdelt',
   'https://www.wlwt.com/article/voa-country-music-festival-rain-weather-storms/73349806', 0.65, 30, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260805074500_31', 'ent_benny-goodman', '2026-08-05', 2026, 'public_appearance', 'news',
   'Klezmer Orchestra entertains at JCC - Tribune Chronicle (Benny Goodman mentioned)', 'Klezmer Orchestra entertains at JCC - Tribune Chronicle', 'src_gdelt',
   'https://www.tribtoday.com/news/local-news/2026/08/klezmer-orchestra-entertains-at-jcc/', 0.65, 31, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260805074500_31', 'ent_abraham-lincoln', '2026-08-05', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in pragativadi.com', 'Abraham Lincoln mentioned in pragativadi.com', 'src_gdelt',
   'https://pragativadi.com/a-global-mind-the-need-of-the-hour/', 0.65, 31, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260805074500_31', 'ent_abraham-lincoln', '2026-08-05', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in kxel.com', 'Abraham Lincoln mentioned in kxel.com', 'src_gdelt',
   'https://kxel.com/2026/08/04/bowen-yang-to-make-broadway-debut-starring-in-oh-mary/', 0.65, 31, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260805074500_31', 'ent_adam-scott', '2026-08-05', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in screenrant.com', 'Adam Scott mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/the-undoing-hbo-tv-show-big-little-lies-successor/', 0.65, 31, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260805080000_32', 'ent_albert-einstein', '2026-08-05', 2026, 'public_appearance', 'news',
   'AI before AI: The legacy of Norbert Wieners cybernetics (3/3) (Albert Einstein mentioned)', 'AI before AI: The legacy of Norbert Wieners cybernetics (3/3)', 'src_gdelt',
   'http://www.theuknews.com/news/279222963/ai-before-ai-the-legacy-of-norbert-wieners-cybernetics-33', 0.65, 32, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260805081500_33', 'plc_boston-university', '2026-08-05', 2026, 'public_appearance', 'news',
   'Boston University mentioned in townhall.com', 'Boston University mentioned in townhall.com', 'src_gdelt',
   'https://townhall.com/author/scottpowell', 0.65, 33, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260805081500_33', 'ent_abraham-lincoln', '2026-08-05', 2026, 'public_appearance', 'news',
   'Almanac for Aug. 5, 2026 - Daily Press (Abraham Lincoln mentioned)', 'Almanac for Aug. 5, 2026 - Daily Press', 'src_gdelt',
   'https://www.dailypress.net/opinion/local-columns/2026/08/almanac-for-aug-5-2026/', 0.65, 33, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_forrest_20260805081500_33', 'ent_andrew-forrest', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Forrest mentioned in watoday.com.au', 'Andrew Forrest mentioned in watoday.com.au', 'src_gdelt',
   'https://www.watoday.com.au/politics/queensland/bleijie-emerges-as-rinehart-s-conduit-to-the-lnp-20260729-p60jsh.html', 0.65, 33, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alan_shepard_20260805081500_33', 'ent_alan-shepard', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alan Shepard mentioned in dailymail.com', 'Alan Shepard mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/sciencetech/article-16029775/SpaceX-rockets-crashes-MOON-Musk.html', 0.65, 33, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260805081500_33', 'ent_albert-einstein', '2026-08-05', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in countercurrents.org', 'Albert Einstein mentioned in countercurrents.org', 'src_gdelt',
   'https://countercurrents.org/2026/08/german-politicians-misjudge-global-warming/', 0.65, 33, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260805083000_34', 'ent_audrey-hepburn', '2026-08-05', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in hellomagazine.com', 'Audrey Hepburn mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/hfm/wish-list/916434/kate-moss-iconic-34-sleeve-look-is-everywhere-this-summer/', 0.65, 34, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260805083000_34', 'ent_ben-affleck', '2026-08-05', 2026, 'public_appearance', 'news',
   'NewsTalk 1010 (Ben Affleck mentioned)', 'NewsTalk 1010', 'src_gdelt',
   'https://www.newstalk1010.com/shows/deb-hutton-show/', 0.65, 34, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260805083000_34', 'ent_aretha-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in miamitimesonline.com', 'Aretha Franklin mentioned in miamitimesonline.com', 'src_gdelt',
   'https://www.miamitimesonline.com/business/miami-spice-celebrates-25-years-but-few-black-owned-restaurants-are-on-the-menu/article_6877ba8c-6ec4-406e-a02d-7cad91f7f216.html', 0.65, 34, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260805084500_35', 'ent_andrew-jackson', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in presstelegram.com', 'Andrew Jackson mentioned in presstelegram.com', 'src_gdelt',
   'https://www.presstelegram.com/2026/08/02/rich-archbold-a-big-thank-you-finally-to-my-grandmother-my-hero/', 0.65, 35, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260805084500_35', 'ent_benjamin-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in opalesque.com', 'Benjamin Franklin mentioned in opalesque.com', 'src_gdelt',
   'https://www.opalesque.com/715778/Victor_Niederhoffer_pioneer_of_statistical_arbitrage_and577.html', 0.65, 35, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260805084500_35', 'ent_anderson-cooper', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in nypost.com', 'Anderson Cooper mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/05/media/far-left-twitch-streamer-hasan-piker-dismisses-hamass-anti-women-anti-lgbtq-stances/', 0.65, 35, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260805084500_35', 'ent_britney-spears', '2026-08-05', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in singersroom.com', 'Britney Spears mentioned in singersroom.com', 'src_gdelt',
   'https://singersroom.com/w97/best-britney-spears-songs-of-all-time/', 0.65, 35, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_forrest_20260805084500_35', 'ent_andrew-forrest', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Forrest mentioned in afr.com', 'Andrew Forrest mentioned in afr.com', 'src_gdelt',
   'https://www.afr.com/street-talk/us-govt-among-potential-suitors-for-twiggy-forrest-s-rare-earth-stake-20260805-p60lm5', 0.65, 35, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260805084500_35', 'ent_alia-bhatt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in bollywoodhungama.com', 'Alia Bhatt mentioned in bollywoodhungama.com', 'src_gdelt',
   'https://www.bollywoodhungama.com/news/bollywood/scoop-sanjay-leela-bhansali-approaches-kareena-kapoor-khan-for-his-dhanush-starrer-mytho-jungle-adventure/', 0.65, 35, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260805090000_36', 'ent_bruno-mars', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in hawaiinewsnow.com', 'Bruno Mars mentioned in hawaiinewsnow.com', 'src_gdelt',
   'https://www.hawaiinewsnow.com/2026/08/05/oahus-oldest-bon-dance-group-remixes-140-year-old-tradition/', 0.65, 36, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260805090000_36', 'ent_andrew-lloyd-webber', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in edp24.co.uk', 'Andrew Lloyd Webber mentioned in edp24.co.uk', 'src_gdelt',
   'https://www.edp24.co.uk/news/26437010.casting-announced-cats-musical-coming-norwich/', 0.65, 36, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260805090000_36', 'ent_sachin-tendulkar', '2026-08-05', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in bestmediainfo.com', 'Sachin Tendulkar mentioned in bestmediainfo.com', 'src_gdelt',
   'https://bestmediainfo.com/insights/shah-rukh-khan-overtakes-virat-kohli-to-top-celebrity-brand-list-alia-bhatt-leads-women-12231761', 0.65, 36, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260805090000_36', 'ent_alia-bhatt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in bestmediainfo.com', 'Alia Bhatt mentioned in bestmediainfo.com', 'src_gdelt',
   'https://bestmediainfo.com/insights/shah-rukh-khan-overtakes-virat-kohli-to-top-celebrity-brand-list-alia-bhatt-leads-women-12231761', 0.65, 36, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260805090000_36', 'ent_bob-dylan', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in kiss951.com', 'Bob Dylan mentioned in kiss951.com', 'src_gdelt',
   'https://kiss951.com/2026/08/05/this-day-in-top-40-history-august-5-2/', 0.65, 36, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260805091500_37', 'ent_benny-goodman', '2026-08-05', 2026, 'public_appearance', 'news',
   'Lecture celebrates Jewish melodies - The Vindicator (Benny Goodman mentioned)', 'Lecture celebrates Jewish melodies - The Vindicator', 'src_gdelt',
   'https://www.vindy.com/news/local-news/2026/08/lecture-celebrates-jewish-melodies/', 0.65, 37, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260805091500_37', 'ent_alia-bhatt', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in livemint.com', 'Alia Bhatt mentioned in livemint.com', 'src_gdelt',
   'https://www.livemint.com/industry/media/indias-top-25-celebrities-brand-value-2025-kroll-report-shah-rukh-khan-virat-kohli-11785825400675.html', 0.65, 37, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260805093000_38', 'ent_sachin-tendulkar', '2026-08-05', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in moneycontrol.com', 'Sachin Tendulkar mentioned in moneycontrol.com', 'src_gdelt',
   'https://www.moneycontrol.com/entertainment/srk-makes-king-size-comeback-as-india-s-most-valuable-celebrity-endorsement-pie-shrinks-article-13994890.html', 0.65, 38, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260805093000_38', 'ent_benjamin-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'What If We Stopped Compromising? (Benjamin Franklin mentioned)', 'What If We Stopped Compromising?', 'src_gdelt',
   'https://www.theepochtimes.com/opinion/what-if-we-stopped-compromising-6070431', 0.65, 38, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260805093000_38', 'ent_bill-gates', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in theepochtimes.com', 'Bill Gates mentioned in theepochtimes.com', 'src_gdelt',
   'https://www.theepochtimes.com/opinion/what-else-are-they-hiding-6070574', 0.65, 38, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260805093000_38', 'ent_audrey-hepburn', '2026-08-05', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in the-independent.com', 'Audrey Hepburn mentioned in the-independent.com', 'src_gdelt',
   'https://www.the-independent.com/life-style/polka-dots-olivia-dean-lily-collins-lily-james-demi-moore-b3024555.html', 0.65, 38, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buster_keaton_20260805093000_38', 'ent_buster-keaton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buster Keaton mentioned in swissinfo.ch', 'Buster Keaton mentioned in swissinfo.ch', 'src_gdelt',
   'https://www.swissinfo.ch/eng/culture/the-79th-locarno-film-festival-gets-underway-today/91848546', 0.65, 38, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ahmed_zewail_20260805093000_38', 'ent_ahmed-zewail', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ahmed Zewail mentioned in moneycontrol.com', 'Ahmed Zewail mentioned in moneycontrol.com', 'src_gdelt',
   'https://www.moneycontrol.com/education/meet-the-12-year-old-who-turned-footsteps-into-electricity-and-became-a-2026-3m-young-scientist-finalist-article-13995128.html', 0.65, 38, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260805093000_38', 'ent_alice-cooper', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in middlenecknews.com', 'Alice Cooper mentioned in middlenecknews.com', 'src_gdelt',
   'https://www.middlenecknews.com/local-news/lancaster-native-returns-home-to-discuss-protest-music-of-south-africas-freedom-struggle/', 0.65, 38, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260805100000_40', 'ent_adam-scott', '2026-08-05', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in el-balad.com', 'Adam Scott mentioned in el-balad.com', 'src_gdelt',
   'https://www.el-balad.com/17038857', 0.65, 40, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260805101500_41', 'ent_melania-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in newsweek.com', 'Melania Trump mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/melania-trump-new-show-launching-amazon-tv-big-movie-losses-12285739', 0.65, 41, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260805101500_41', 'ent_ben-affleck', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in hindustantimes.com', 'Ben Affleck mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/entertainment/hollywood-is-entering-its-ai-era-101785922891068.html', 0.65, 41, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260805101500_41', 'ent_sachin-tendulkar', '2026-08-05', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in thehindubusinessline.com', 'Sachin Tendulkar mentioned in thehindubusinessline.com', 'src_gdelt',
   'https://www.thehindubusinessline.com/companies/king-khan-scripts-a-comeback-as-the-most-valued-indian-celebrity/article71308661.ece', 0.65, 41, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260805101500_41', 'ent_bob-dylan', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in sunny943.com', 'Bob Dylan mentioned in sunny943.com', 'src_gdelt',
   'https://sunny943.com/2026/08/05/this-day-in-top-40-history-august-5-2/', 0.65, 41, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260805103000_42', 'ent_andy-warhol', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in redstate.com', 'Andy Warhol mentioned in redstate.com', 'src_gdelt',
   'https://redstate.com/redstate-guest-editorial/2026/08/05/the-first-amendment-requires-reversal-of-shiloh-hendrixs-conviction-n2205193', 0.65, 42, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260805103000_42', 'ent_bob-dylan', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in wild941.com', 'Bob Dylan mentioned in wild941.com', 'src_gdelt',
   'https://wild941.com/2026/08/05/this-day-in-top-40-history-august-5-2/', 0.65, 42, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260805103000_42', 'ent_anderson-cooper', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in thedailybeast.com', 'Anderson Cooper mentioned in thedailybeast.com', 'src_gdelt',
   'https://www.thedailybeast.com/obsessed/stephen-colberts-60-minutes-producer-daughter-madeleine-carlisle-quits-show/', 0.65, 42, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260805104500_43', 'ent_andrew-lloyd-webber', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in eveningnews24.co.uk', 'Andrew Lloyd Webber mentioned in eveningnews24.co.uk', 'src_gdelt',
   'https://www.eveningnews24.co.uk/news/26437010.casting-announced-cats-musical-coming-norwich/', 0.65, 43, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260805104500_43', 'ent_benjamin-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in news-gazette.com', 'Benjamin Franklin mentioned in news-gazette.com', 'src_gdelt',
   'https://www.news-gazette.com/opinion/columns/holy-cow-history-the-forgotten-founding-father/article_7322f15d-99ec-4b01-a1dc-cdde8cf1d143.html', 0.65, 43, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260805110000_44', 'ent_benjamin-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in insideindianabusiness.com', 'Benjamin Franklin mentioned in insideindianabusiness.com', 'src_gdelt',
   'https://www.insideindianabusiness.com/articles/business-growth-think-strategically', 0.65, 44, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260805110000_44', 'ent_bruce-willis', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in dailymail.com', 'Bruce Willis mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16030105/Bruce-Willis-Demi-Moore-daughter-Tallulah-wedding-marriage-licence.html', 0.65, 44, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260805111500_45', 'ent_brad-paisley', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in 963xke.com', 'Brad Paisley mentioned in 963xke.com', 'src_gdelt',
   'https://963xke.com/2026/08/05/71734/', 0.65, 45, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260805111500_45', 'ent_eric-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in actionforex.com', 'Eric Trump mentioned in actionforex.com', 'src_gdelt',
   'https://www.actionforex.com/contributors/fundamental-analysis/649611-major-cryptos-are-gradually-gaining-momentum/', 0.65, 45, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260805111500_45', 'ent_andy-warhol', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in dailymail.com', 'Andy Warhol mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/news/royals/article-16029917/All-details-you-missed-Princess-Eugenies-baby-announcement-including-babygrow-fellow-royal-Edos-sweet-reaction-couple-reveal-new-arrivals-name.html', 0.65, 45, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260805113000_46', 'ent_bob-dylan', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in inquirer.com', 'Bob Dylan mentioned in inquirer.com', 'src_gdelt',
   'https://www.inquirer.com/entertainment/music/best-philadelphia-concerts-hillary-duff-isley-brothers-iron-chic-20260805.html', 0.65, 46, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260805113000_46', 'ent_al-capone', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in wvtf.org', 'Al Capone mentioned in wvtf.org', 'src_gdelt',
   'https://www.wvtf.org/news/2026-08-05/ag-jones-visits-henrico-as-vape-listening-tour-continues', 0.65, 46, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260805113000_46', 'ent_aretha-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in inquirer.com', 'Aretha Franklin mentioned in inquirer.com', 'src_gdelt',
   'https://www.inquirer.com/obituaries/booker-rowe-obituary-violin-philadelphia-orchestra-20260804.html', 0.65, 46, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260805113000_46', 'ent_barbra-streisand', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in inquirer.com', 'Barbra Streisand mentioned in inquirer.com', 'src_gdelt',
   'https://www.inquirer.com/obituaries/booker-rowe-obituary-violin-philadelphia-orchestra-20260804.html', 0.65, 46, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260805114500_47', 'ent_breanna-stewart', '2026-08-05', 2026, 'public_appearance', 'news',
   'Caitlin Clark enters the WNBA MVP conversation (Breanna Stewart mentioned)', 'Caitlin Clark enters the WNBA MVP conversation', 'src_gdelt',
   'https://www.tsn.ca/wnba/article/clark-enters-the-wnba-mvp-conversation-n1-49013337/', 0.65, 47, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260805114500_47', 'ent_caitlin-clark', '2026-08-05', 2026, 'public_appearance', 'news',
   'Caitlin Clark enters the WNBA MVP conversation (Caitlin Clark mentioned)', 'Caitlin Clark enters the WNBA MVP conversation', 'src_gdelt',
   'https://www.tsn.ca/wnba/article/clark-enters-the-wnba-mvp-conversation-n1-49013337/', 0.65, 47, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260805114500_47', 'ent_andrew-lloyd-webber', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in express.co.uk', 'Andrew Lloyd Webber mentioned in express.co.uk', 'src_gdelt',
   'https://www.express.co.uk/news/us/2235931/katy-perry-savages-donald-trump', 0.65, 47, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260805120000_48', 'ent_adam-scott', '2026-08-05', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in radiox.co.uk', 'Adam Scott mentioned in radiox.co.uk', 'src_gdelt',
   'https://www.radiox.co.uk/artists/linkin-park/comeback-documentary-unshatter-set-for-cinemas-trailer/', 0.65, 48, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angus_deaton_20260805120000_48', 'ent_angus-deaton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Angus Deaton mentioned in eastbaytimes.com', 'Angus Deaton mentioned in eastbaytimes.com', 'src_gdelt',
   'https://www.eastbaytimes.com/2026/08/05/schrager-americans-richer-than-ever-and-so-angry-2/', 0.65, 48, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260805120000_48', 'ent_brad-paisley', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in wiov.com', 'Brad Paisley mentioned in wiov.com', 'src_gdelt',
   'https://www.wiov.com/2026/08/05/wednesday-august-5-2026/', 0.65, 48, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260805120000_48', 'ent_melania-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in boredpanda.com', 'Melania Trump mentioned in boredpanda.com', 'src_gdelt',
   'https://www.boredpanda.com/trump-comments-34yo-assistant-raise-eyebrows-melania-public-absence-scrutiny/', 0.65, 48, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260805120000_48', 'plc_brown-university', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brown University mentioned in foxnews.com', 'Brown University mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/opinion/americans-deserve-know-healthcare-prices-before-final-bill-arrives', 0.65, 48, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bayard_rustin_20260805120000_48', 'ent_bayard-rustin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bayard Rustin mentioned in prospect.org', 'Bayard Rustin mentioned in prospect.org', 'src_gdelt',
   'https://prospect.org/2026/08/05/aug-2026-a-philip-randolph-socialist-on-the-march/', 0.65, 48, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260805121500_49', 'ent_arnold-palmer', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in islingtongazette.co.uk', 'Arnold Palmer mentioned in islingtongazette.co.uk', 'src_gdelt',
   'https://www.islingtongazette.co.uk/news/26436423.waltz-shoreditch-named-londons-best-cocktail-bar/', 0.65, 49, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260805121500_49', 'ent_adam-scott', '2026-08-05', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in digitalspy.com', 'Adam Scott mentioned in digitalspy.com', 'src_gdelt',
   'https://www.digitalspy.com/movies/a73353522/spider-man-brand-new-day-mj-peter-kiss-consent/', 0.65, 49, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260805121500_49', 'ent_al-gore', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in winnipegfreepress.com', 'Al Gore mentioned in winnipegfreepress.com', 'src_gdelt',
   'https://www.winnipegfreepress.com/world/2026/08/05/ap-decision-notes-what-to-expect-in-tennessees-state-primary', 0.65, 49, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260805121500_49', 'ent_bill-gates', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in naturalnews.com', 'Bill Gates mentioned in naturalnews.com', 'src_gdelt',
   'https://www.naturalnews.com/2026-08-05-stop-trusting-fda-cdc-corporate-media-doctors.html', 0.65, 49, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260805121500_49', 'ent_barry-bonds', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in newrepublic.com', 'Barry Bonds mentioned in newrepublic.com', 'src_gdelt',
   'https://newrepublic.com/article/213983/trump-presidential-corruption-goat-grifter', 0.65, 49, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260805123000_50', 'ent_brett-kavanaugh', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in lrb.co.uk', 'Brett Kavanaugh mentioned in lrb.co.uk', 'src_gdelt',
   'https://www.lrb.co.uk/the-paper/v48/n14/james-butler/short-cuts', 0.65, 50, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_golda_meir_20260805123000_50', 'ent_golda-meir', '2026-08-05', 2026, 'public_appearance', 'news',
   'Golda Meir mentioned in lrb.co.uk', 'Golda Meir mentioned in lrb.co.uk', 'src_gdelt',
   'https://www.lrb.co.uk/the-paper/v48/n14/james-wood/show-us-the-father', 0.65, 50, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260805124500_51', 'ent_aretha-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in theguardian.com', 'Aretha Franklin mentioned in theguardian.com', 'src_gdelt',
   'https://www.theguardian.com/stage/2026/aug/05/im-every-woman-the-chaka-khan-musical-review-queen-of-funk', 0.65, 51, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260805124500_51', 'ent_aretha-franklin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in aol.co.uk', 'Aretha Franklin mentioned in aol.co.uk', 'src_gdelt',
   'https://www.aol.co.uk/articles/m-every-woman-chaka-khan-121649000.html', 0.65, 51, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260805130000_52', 'ent_blake-lively', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in zimbio.com', 'Blake Lively mentioned in zimbio.com', 'src_gdelt',
   'https://www.zimbio.com/liz-cambage-husband/', 0.65, 52, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260805130000_52', 'ent_arnold-palmer', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in hackneygazette.co.uk', 'Arnold Palmer mentioned in hackneygazette.co.uk', 'src_gdelt',
   'https://www.hackneygazette.co.uk/news/26436423.waltz-shoreditch-named-londons-best-cocktail-bar/', 0.65, 52, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260805130000_52', 'ent_al-capone', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in wmra.org', 'Al Capone mentioned in wmra.org', 'src_gdelt',
   'https://www.wmra.org/2026-08-05/ag-jones-visits-henrico-as-vape-listening-tour-continues', 0.65, 52, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260805131500_53', 'ent_arnold-palmer', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in hamhigh.co.uk', 'Arnold Palmer mentioned in hamhigh.co.uk', 'src_gdelt',
   'https://www.hamhigh.co.uk/news/26436423.waltz-shoreditch-named-londons-best-cocktail-bar/', 0.65, 53, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260805131500_53', 'ent_anderson-cooper', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in cjr.org', 'Anderson Cooper mentioned in cjr.org', 'src_gdelt',
   'https://www.cjr.org/feature/feeling-it-big-time-tom-cibrowski-cbs-news-bari-weiss-60-minutes-dokoupil-bilton-pelley-mcmahon-walsh-patta-alfonsi-cecot.php', 0.65, 53, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angus_deaton_20260805131500_53', 'ent_angus-deaton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Angus Deaton mentioned in mercurynews.com', 'Angus Deaton mentioned in mercurynews.com', 'src_gdelt',
   'https://www.mercurynews.com/2026/08/05/schrager-americans-richer-than-ever-and-so-angry-2/', 0.65, 53, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260805131500_53', 'ent_andy-warhol', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in limerickpost.ie', 'Andy Warhol mentioned in limerickpost.ie', 'src_gdelt',
   'https://www.limerickpost.ie/2026/08/05/limerick-showcase-one-brings-together-citys-finest-artists-at-istabraq-hall/', 0.65, 53, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260805133000_54', 'ent_melania-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in dailykos.com', 'Melania Trump mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/5/800079850/community/late-nighter-roundup-wednesday-august-5th-2026/', 0.65, 54, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260805133000_54', 'ent_bruce-willis', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in pressherald.com', 'Bruce Willis mentioned in pressherald.com', 'src_gdelt',
   'https://www.pressherald.com/2026/08/05/maine-author-richard-russo-returns-to-his-new-york-roots/', 0.65, 54, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_frida_kahlo_20260805134500_55', 'ent_frida-kahlo', '2026-08-05', 2026, 'public_appearance', 'news',
   'Frida Kahlo mentioned in forbes.com', 'Frida Kahlo mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/forbestravelguide/2026/08/05/10-top-mexico-city-attractions/', 0.65, 55, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260805134500_55', 'ent_audrey-hepburn', '2026-08-05', 2026, 'public_appearance', 'news',
   'Amy Christophers puts together wonderful style guide for Southwell Racecourse Ladies Day visitors (Audrey Hepburn mentioned)', 'Amy Christophers puts together wonderful style guide for Southwell Racecourse Ladies Day visitors', 'src_gdelt',
   'https://www.newarkadvertiser.co.uk/news/here-s-the-ultimate-style-guide-for-ladies-day-visitors-at-s-9477160/', 0.65, 55, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amy_hood_20260805134500_55', 'ent_amy-hood', '2026-08-05', 2026, 'public_appearance', 'news',
   'Amy Hood mentioned in siliconrepublic.com', 'Amy Hood mentioned in siliconrepublic.com', 'src_gdelt',
   'https://www.siliconrepublic.com/careers/10-women-careers-shaping-global-financial-landscape', 0.65, 55, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260805140000_56', 'ent_billy-joel', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in boredpanda.com', 'Billy Joel mentioned in boredpanda.com', 'src_gdelt',
   'https://www.boredpanda.com/can-you-finish-all-of-these-24-famous-music-lyrics/?cexp_id=158982&_f=homepage_featured&cexp_var=1', 0.65, 56, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260805140000_56', 'ent_billy-joel', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in americansongwriter.com', 'Billy Joel mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/3-working-class-rock-songs-from-the-1980s-that-still-ring-true/', 0.65, 56, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260805140000_56', 'ent_axl-rose', '2026-08-05', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in americansongwriter.com', 'Axl Rose mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/8-rock-choruses-from-the-1980s-that-are-just-as-catchy-decades-later/', 0.65, 56, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260805140000_56', 'ent_billy-joel', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in boredpanda.com', 'Billy Joel mentioned in boredpanda.com', 'src_gdelt',
   'https://www.boredpanda.com/can-you-finish-all-of-these-24-famous-music-lyrics/', 0.65, 56, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bayard_rustin_20260805141500_57', 'ent_bayard-rustin', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bayard Rustin mentioned in cityam.com', 'Bayard Rustin mentioned in cityam.com', 'src_gdelt',
   'https://www.cityam.com/on-this-day-the-birth-of-press-freedom/', 0.65, 57, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brigham_young_20260805143000_58', 'ent_brigham-young', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brigham Young mentioned in parkrecord.com', 'Brigham Young mentioned in parkrecord.com', 'src_gdelt',
   'https://www.parkrecord.com/2026/08/05/way-we-were-a-toehold-in-utah/', 0.65, 58, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benedict_arnold_20260805143000_58', 'ent_benedict-arnold', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benedict Arnold mentioned in t-g.com', 'Benedict Arnold mentioned in t-g.com', 'src_gdelt',
   'http://www.t-g.com/premium/theconversation/stories/1776s-declaration-of-independence-inspired-washingtons-troops-to-fight-against-the-odds-,227504', 0.65, 58, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_assata_shakur_20260805143000_58', 'ent_assata-shakur', '2026-08-05', 2026, 'public_appearance', 'news',
   'Assata Shakur mentioned in parkrecord.com', 'Assata Shakur mentioned in parkrecord.com', 'src_gdelt',
   'https://www.parkrecord.com/2026/08/05/a-time-to-celebrate/', 0.65, 58, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260805143000_58', 'ent_billie-jean-king', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in parkrecord.com', 'Billie Jean King mentioned in parkrecord.com', 'src_gdelt',
   'https://www.parkrecord.com/2026/08/05/a-time-to-celebrate/', 0.65, 58, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_riggs_20260805143000_58', 'ent_bobby-riggs', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bobby Riggs mentioned in parkrecord.com', 'Bobby Riggs mentioned in parkrecord.com', 'src_gdelt',
   'https://www.parkrecord.com/2026/08/05/a-time-to-celebrate/', 0.65, 58, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_frida_kahlo_20260805143000_58', 'ent_frida-kahlo', '2026-08-05', 2026, 'public_appearance', 'news',
   'Frida Kahlo mentioned in riotimesonline.com', 'Frida Kahlo mentioned in riotimesonline.com', 'src_gdelt',
   'https://www.riotimesonline.com/mexico-city-free-august-2026-culture-events/', 0.65, 58, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260805143000_58', 'ent_black-hawk', '2026-08-05', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in theguardian.com', 'Black Hawk mentioned in theguardian.com', 'src_gdelt',
   'https://www.theguardian.com/us-news/2026/aug/05/trump-faa-marine-one-air-safety-incident', 0.65, 58, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260805144500_59', 'ent_anderson-cooper', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in thewrap.com', 'Anderson Cooper mentioned in thewrap.com', 'src_gdelt',
   'https://www.thewrap.com/industry-news/business/david-ellison-cnn-bari-weiss-cbs-news/', 0.65, 59, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260805144500_59', 'ent_sachin-tendulkar', '2026-08-05', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in businesstoday.in', 'Sachin Tendulkar mentioned in businesstoday.in', 'src_gdelt',
   'https://www.businesstoday.in/trending/entertainment/story/from-no-3-to-no-1-shah-rukh-khan-dethrones-virat-kohli-in-celebrity-brand-rankings-check-full-list-547489-2026-08-05', 0.65, 59, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260805144500_59', 'ent_breanna-stewart', '2026-08-05', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in nypost.com', 'Breanna Stewart mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/05/betting/bet365-bonus-code-bet-10-get-150-in-bonus-bets-for-liberty-vs-storm/', 0.65, 59, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_frida_kahlo_20260805150000_60', 'ent_frida-kahlo', '2026-08-05', 2026, 'public_appearance', 'news',
   'Frida Kahlo mentioned in dmcityview.com', 'Frida Kahlo mentioned in dmcityview.com', 'src_gdelt',
   'https://www.dmcityview.com/art-news/2026/08/05/iowas-big-moment-in-the-art-world/', 0.65, 60, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260805150000_60', 'ent_audrey-hepburn', '2026-08-05', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in hellomagazine.com', 'Audrey Hepburn mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/film/916507/catherine-zeta-jones-upcoming-thriller-role-kill-jackie-photos/', 0.65, 60, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260805150000_60', 'ent_brett-kavanaugh', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in rawstory.com', 'Brett Kavanaugh mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/raw-investigates/todd-blanche-confirmation/', 0.65, 60, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260805150000_60', 'ent_bruce-willis', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in today.com', 'Bruce Willis mentioned in today.com', 'src_gdelt',
   'https://www.today.com/health/celebrity-health/emma-heming-willis-hoda-kotb-50th-birthday-bruce-dementia-rcna590838', 0.65, 60, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260805150000_60', 'ent_bob-fosse', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Fosse mentioned in playbill.com', 'Bob Fosse mentioned in playbill.com', 'src_gdelt',
   'https://playbill.com/article/lissa-deguzman-will-be-velma-kelly-in-broadways-chicago', 0.65, 60, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260805150000_60', 'ent_andy-warhol', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in redstate.com', 'Andy Warhol mentioned in redstate.com', 'src_gdelt',
   'https://redstate.com/smoosieq/2026/08/05/morning-minute-n2205203', 0.65, 60, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260805151500_61', 'ent_aaron-burr', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Burr mentioned in 98fm.com', 'Aaron Burr mentioned in 98fm.com', 'src_gdelt',
   'https://www.98fm.com/lifestyle/musical-theatre-star-leslie-odom-jr-announces-spectacular-dublin-performance-2285027', 0.65, 61, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_harrison_20260805151500_61', 'ent_benjamin-harrison', '2026-08-05', 2026, 'public_appearance', 'news',
   'Benjamin Harrison mentioned in newcity.com', 'Benjamin Harrison mentioned in newcity.com', 'src_gdelt',
   'https://www.newcity.com/2026/08/05/at-home-with-the-harrisons-in-indianapolis-the-benjamin-harrison-presidential-site/', 0.65, 61, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260805153000_62', 'ent_anna-wintour', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in vanityteen.com', 'Anna Wintour mentioned in vanityteen.com', 'src_gdelt',
   'https://www.vanityteen.com/met-gala-2027-john-galliano/', 0.65, 62, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260805153000_62', 'ent_anderson-cooper', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in nypost.com', 'Anderson Cooper mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/05/media/stephen-colberts-daughter-madeleine-carlisle-quits-60-minutes-report/', 0.65, 62, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260805154500_63', 'ent_bill-gates', '2026-08-05', 2026, 'public_appearance', 'news',
   'Summer of the Egg (Bill Gates mentioned)', 'Summer of the Egg', 'src_gdelt',
   'https://www.kalw.org/podcast/sandip-roys-dispatches-from-kolkata/2026-08-05/summer-of-the-egg', 0.65, 63, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260805154500_63', 'ent_babe-ruth', '2026-08-05', 2026, 'public_appearance', 'news',
   'The BOB & TOM Show - August 5, 2026 | 98.5 The Fox (Babe Ruth mentioned)', 'The BOB & TOM Show - August 5, 2026 | 98.5 The Fox', 'src_gdelt',
   'https://985thefox.iheart.com/featured/the-bob-tom-show/content/2026-08-05-1270-the-bob-tom-show-free-pod-the-bob-tom-show-august-5-2026/', 0.65, 63, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260805154500_63', 'ent_barbara-walters', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in hellomagazine.com', 'Barbara Walters mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/us/916561/whoopi-goldberg-the-view-paycheck-shocked/', 0.65, 63, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260805154500_63', 'ent_bruce-willis', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in sunjournal.com', 'Bruce Willis mentioned in sunjournal.com', 'src_gdelt',
   'https://www.sunjournal.com/2026/08/05/maine-author-richard-russo-returns-to-his-new-york-roots/', 0.65, 63, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260805160000_64', 'ent_bob-fosse', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Fosse mentioned in deadline.com', 'Bob Fosse mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/2026/08/ariana-debose-sweet-charity-broadway-1237018469/', 0.65, 64, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buster_keaton_20260805160000_64', 'ent_buster-keaton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buster Keaton mentioned in houstonpress.com', 'Buster Keaton mentioned in houstonpress.com', 'src_gdelt',
   'https://www.houstonpress.com/arts/the-bard-goes-topsy-turvy-the-comedy-of-errors/', 0.65, 64, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260805160000_64', 'ent_babe-ruth', '2026-08-05', 2026, 'public_appearance', 'news',
   'The BOB & TOM Show - August 5, 2026 | 97.1 Double Q (Babe Ruth mentioned)', 'The BOB & TOM Show - August 5, 2026 | 97.1 Double Q', 'src_gdelt',
   'https://971doubleq.iheart.com/featured/the-bob-tom-show/content/2026-08-05-1270-the-bob-tom-show-free-pod-the-bob-tom-show-august-5-2026/', 0.65, 64, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260805160000_64', 'ent_babe-ruth', '2026-08-05', 2026, 'public_appearance', 'news',
   'The BOB & TOM Show - August 5, 2026 | BIG 106.5 (Babe Ruth mentioned)', 'The BOB & TOM Show - August 5, 2026 | BIG 106.5', 'src_gdelt',
   'https://big1065.iheart.com/featured/the-bob-tom-show/content/2026-08-05-1270-the-bob-tom-show-free-pod-the-bob-tom-show-august-5-2026/', 0.65, 64, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260805160000_64', 'ent_bob-fosse', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Fosse mentioned in deadline.com', 'Bob Fosse mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/print-article/1237018469/', 0.65, 64, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260805161500_65', 'ent_alfred-hitchcock', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in mentalfloss.com', 'Alfred Hitchcock mentioned in mentalfloss.com', 'src_gdelt',
   'https://www.mentalfloss.com/entertainment/beatlemania-moon-landing-how-well-do-you-know-1960s', 0.65, 65, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260805161500_65', 'ent_blake-lively', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in nbclosangeles.com', 'Blake Lively mentioned in nbclosangeles.com', 'src_gdelt',
   'https://www.nbclosangeles.com/news/national-international/why-mahjong-rising-popularity-los-angeles/3923210/', 0.65, 65, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260805161500_65', 'ent_aaron-burr', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Burr mentioned in spin1038.com', 'Aaron Burr mentioned in spin1038.com', 'src_gdelt',
   'https://www.spin1038.com/lifestyle/musical-theatre-star-leslie-odom-jr-announces-spectacular-dublin-performance-2285027', 0.65, 65, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260805161500_65', 'ent_sachin-tendulkar', '2026-08-05', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in indiatimes.com', 'Sachin Tendulkar mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/business/india-business/legacy-icons-retain-strong-brand-value-kroll/articleshow/132943709.cms', 0.65, 65, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ann_lee_20260805161500_65', 'ent_ann-lee', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ann Lee mentioned in inquirer.com', 'Ann Lee mentioned in inquirer.com', 'src_gdelt',
   'https://www.inquirer.com/arts/rebecca-cox-jackson-shaker-philadelphia-ica-20260805.html', 0.65, 65, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260805163000_66', 'ent_brad-paisley', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in iheart.com', 'Brad Paisley mentioned in iheart.com', 'src_gdelt',
   'https://khey.iheart.com/content/2026-08-05-watch-brad-paisley-shares-of-who-wants-to-be-a-millionaire-sneak-peek/', 0.65, 66, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260805163000_66', 'ent_blake-lively', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in cinemablend.com', 'Blake Lively mentioned in cinemablend.com', 'src_gdelt',
   'https://www.cinemablend.com/movies/lawyers-allegedly-rolling-their-eyes-blake-livelys-latest-request-justin-baldoni', 0.65, 66, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260805163000_66', 'ent_bruce-lee', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in iheart.com', 'Bruce Lee mentioned in iheart.com', 'src_gdelt',
   'https://wild1063.iheart.com/featured/breakfast-club/content/2026-08-05-51-the-breakfast-club-full-show-diddy-prison-release-date-pushed-back-after/', 0.65, 66, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260805163000_66', 'ent_bruce-lee', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in iheart.com', 'Bruce Lee mentioned in iheart.com', 'src_gdelt',
   'https://thebreakfastclub.iheart.com/featured/breakfast-club/content/2026-08-05-51-the-breakfast-club-full-show-diddy-prison-release-date-pushed-back-after/', 0.65, 66, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260805163000_66', 'ent_bruce-lee', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in iheart.com', 'Bruce Lee mentioned in iheart.com', 'src_gdelt',
   'https://hot983.iheart.com/featured/breakfast-club/content/2026-08-05-51-the-breakfast-club-full-show-diddy-prison-release-date-pushed-back-after/', 0.65, 66, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260805163000_66', 'ent_buddy-holly', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in radiox.co.uk', 'Buddy Holly mentioned in radiox.co.uk', 'src_gdelt',
   'https://www.radiox.co.uk/artists/weezer/the-gathering-2027-world-uk-eur-dates-tickets/', 0.65, 66, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260805164500_67', 'ent_barry-bonds', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in hitc.com', 'Barry Bonds mentioned in hitc.com', 'src_gdelt',
   'https://www.hitc.com/watch-pete-crow-armstrong-gift-young-cubs-fan-special-item-in-heartwarming-moment-after-wrigley-win/', 0.65, 67, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260805164500_67', 'ent_andrew-jackson', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in tahoedailytribune.com', 'Andrew Jackson mentioned in tahoedailytribune.com', 'src_gdelt',
   'https://www.tahoedailytribune.com/news/california-minimum-wage-set-to-increase-to-17-40-in-2027/', 0.65, 67, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260805164500_67', 'ent_alicia-keys', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in 1077thebounce.com', 'Alicia Keys mentioned in 1077thebounce.com', 'src_gdelt',
   'https://1077thebounce.com/2026/08/05/alicia-keys-signs-with-caa-new-projects-on-the-way/', 0.65, 67, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260805164500_67', 'ent_barbara-walters', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in thegrio.com', 'Barbara Walters mentioned in thegrio.com', 'src_gdelt',
   'https://thegrio.com/2026/08/05/whoopi-goldberg-the-view-paycheck-shocked/', 0.65, 67, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260805164500_67', 'ent_bob-fosse', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bob Fosse mentioned in playbill.com', 'Bob Fosse mentioned in playbill.com', 'src_gdelt',
   'https://playbill.com/article/ariana-debose-will-lead-sweet-charity-workshop', 0.65, 67, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260805170000_68', 'ent_aaron-burr', '2026-08-05', 2026, 'public_appearance', 'news',
   'Aaron Burr mentioned in iradio.ie', 'Aaron Burr mentioned in iradio.ie', 'src_gdelt',
   'https://www.iradio.ie/lifestyle/musical-theatre-star-leslie-odom-jr-announces-spectacular-dublin-performance-2285027', 0.65, 68, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260805170000_68', 'ent_axl-rose', '2026-08-05', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in q1057.com', 'Axl Rose mentioned in q1057.com', 'src_gdelt',
   'https://q1057.com/long-island-medium-saratoga-visit/', 0.65, 68, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260805170000_68', 'ent_alicia-keys', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in foxy99.com', 'Alicia Keys mentioned in foxy99.com', 'src_gdelt',
   'https://foxy99.com/2026/08/05/alicia-keys-signs-with-caa-new-projects-on-the-way/', 0.65, 68, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260805170000_68', 'ent_alexander-hamilton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Oxford American | A Disappearing Pile of Sand (Alexander Hamilton mentioned)', 'Oxford American | A Disappearing Pile of Sand', 'src_gdelt',
   'https://oxfordamerican.org/magazine/issue-97-summer-2017/a-disappearing-pile-of-sand', 0.65, 68, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_murphy_20260805171500_69', 'ent_bobby-murphy', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bobby Murphy mentioned in tickerreport.com', 'Bobby Murphy mentioned in tickerreport.com', 'src_gdelt',
   'https://www.tickerreport.com/banking-finance/13531082/snap-nysesnap-trading-down-8-1-on-analyst-downgrade.html', 0.65, 69, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260805173000_70', 'ent_al-pacino', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in aol.co.uk', 'Al Pacino mentioned in aol.co.uk', 'src_gdelt',
   'https://www.aol.co.uk/articles/ish-jared-leto-hollywood-dark-050045000.html', 0.65, 70, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260805173000_70', 'ent_barry-sanders', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in bloggingdirty.com', 'Barry Sanders mentioned in bloggingdirty.com', 'src_gdelt',
   'https://bloggingdirty.com/falcons-have-to-do-1-thing-to-make-the-bijan-robinson-extension-worth-it-01kz6dh6m8vg', 0.65, 70, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260805173000_70', 'ent_alicia-keys', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in v1019.com', 'Alicia Keys mentioned in v1019.com', 'src_gdelt',
   'https://v1019.com/2026/08/05/alicia-keys-signs-with-caa-new-projects-on-the-way/', 0.65, 70, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_fred_trump_20260805173000_70', 'ent_fred-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Fred Trump mentioned in independent.co.uk', 'Fred Trump mentioned in independent.co.uk', 'src_gdelt',
   'https://www.independent.co.uk/news/world/americas/us-politics/trump-bone-spurs-draft-general-image-b3028032.html', 0.65, 70, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260805173000_70', 'ent_barbara-walters', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in the-independent.com', 'Barbara Walters mentioned in the-independent.com', 'src_gdelt',
   'https://www.the-independent.com/arts-entertainment/tv/news/whoopi-goldberg-the-view-paycheck-b3028022.html', 0.65, 70, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260805173000_70', 'ent_bruno-mars', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in bbc.co.uk', 'Bruno Mars mentioned in bbc.co.uk', 'src_gdelt',
   'https://www.bbc.co.uk/news/articles/cwylxg2jekdo', 0.65, 70, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260805173000_70', 'ent_andy-warhol', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in theglobeandmail.com', 'Andy Warhol mentioned in theglobeandmail.com', 'src_gdelt',
   'https://www.theglobeandmail.com/culture/article-ryan-murphy-and-bret-easton-ellis-take-on-the-1980s-in-the-shards/', 0.65, 70, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260805174500_71', 'ent_black-hawk', '2026-08-05', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in firstthings.com', 'Black Hawk mentioned in firstthings.com', 'src_gdelt',
   'https://firstthings.com/willa-cathers-pioneering-women/', 0.65, 71, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260805174500_71', 'ent_alicia-keys', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in hot969boston.com', 'Alicia Keys mentioned in hot969boston.com', 'src_gdelt',
   'https://hot969boston.com/2026/08/05/alicia-keys-signs-with-caa-new-projects-on-the-way/', 0.65, 71, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260805174500_71', 'ent_al-capone', '2026-08-05', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in newstatesman.com', 'Al Capone mentioned in newstatesman.com', 'src_gdelt',
   'https://www.newstatesman.com/politics/2026/08/before-count-binface-there-was-catmando', 0.65, 71, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_frida_kahlo_20260805174500_71', 'ent_frida-kahlo', '2026-08-05', 2026, 'public_appearance', 'news',
   'Frida Kahlo mentioned in kvia.com', 'Frida Kahlo mentioned in kvia.com', 'src_gdelt',
   'https://kvia.com/news/2026/08/05/el-paso-museum-of-art-ranked-as-5th-best-texas-art-museum/', 0.65, 71, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_bush_20260805174500_71', 'ent_barbara-bush', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barbara Bush mentioned in bangordailynews.com', 'Barbara Bush mentioned in bangordailynews.com', 'src_gdelt',
   'https://www.bangordailynews.com/2026/08/05/midcoast/midcoast-police-courts/harpswell-maine-fatal-crash-alton-wyman-criminal-history/', 0.65, 71, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260805180000_72', 'ent_breanna-stewart', '2026-08-05', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in sbnation.com', 'Breanna Stewart mentioned in sbnation.com', 'src_gdelt',
   'https://www.sbnation.com/wnba/1124019/noelle-quinn-seattle-storm-ucla-bruins', 0.65, 72, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betty_grable_20260805180000_72', 'ent_betty-grable', '2026-08-05', 2026, 'public_appearance', 'news',
   'Betty Grable mentioned in radaronline.com', 'Betty Grable mentioned in radaronline.com', 'src_gdelt',
   'https://radaronline.com/p/lucille-ball-slapped-man-help-cheating-husband-desi-arnaz/', 0.65, 72, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260805180000_72', 'ent_lee-kuan-yew', '2026-08-05', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in antaranews.com', 'Lee Kuan Yew mentioned in antaranews.com', 'src_gdelt',
   'https://en.antaranews.com/news/425747/from-mbg-to-global-campuses-indonesias-human-capital-blueprint', 0.65, 72, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260805180000_72', 'ent_eric-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in radaronline.com', 'Eric Trump mentioned in radaronline.com', 'src_gdelt',
   'https://radaronline.com/p/lara-trump-faces-backlash-disrespectful-outfit/', 0.65, 72, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260805180000_72', 'ent_angela-davis', '2026-08-05', 2026, 'public_appearance', 'news',
   'Revisiting Dominion Voting Machines D-Day...Explosive! (Angela Davis mentioned)', 'Revisiting Dominion Voting Machines D-Day...Explosive!', 'src_gdelt',
   'https://afr.net:443/podcasts/sandy-rios-247/2026/july/revisiting-dominion-voting-machines-d-dayexplosive/', 0.65, 72, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260805180000_72', 'ent_billie-jean-king', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in afr.net', 'Billie Jean King mentioned in afr.net', 'src_gdelt',
   'https://afr.net:443/podcasts/real-truth-for-today-with-jeff-schreve/2026/august/the-point-of-no-return/', 0.65, 72, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anthony_wayne_20260805181500_73', 'ent_anthony-wayne', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anthony Wayne mentioned in screenrant.com', 'Anthony Wayne mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/batman-batcave-upgrade-image/', 0.65, 73, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260805181500_73', 'ent_anna-wintour', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in rte.ie', 'Anna Wintour mentioned in rte.ie', 'src_gdelt',
   'https://www.rte.ie/culture/2026/0804/1586416-no-filler-augusts-one-stop-pop-culture-essentials/', 0.65, 73, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260805183000_74', 'ent_buffalo-bill', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in cnynews.com', 'Buffalo Bill mentioned in cnynews.com', 'src_gdelt',
   'https://cnynews.com/ixp/10/p/bills-uniform-schedule-2026/', 0.65, 74, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260805183000_74', 'ent_axl-rose', '2026-08-05', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in cnynews.com', 'Axl Rose mentioned in cnynews.com', 'src_gdelt',
   'https://cnynews.com/ixp/79/p/long-island-medium-saratoga-visit/', 0.65, 74, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_walton_20260805183000_74', 'ent_alice-walton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alice Walton mentioned in artforum.com', 'Alice Walton mentioned in artforum.com', 'src_gdelt',
   'https://www.artforum.com/news/bridgemaker-prize-2026-1234756381/', 0.65, 74, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260805183000_74', 'ent_bruno-mars', '2026-08-05', 2026, 'public_appearance', 'news',
   'am 580 radio station and broadcast media group for teachers explained (Bruno Mars mentioned)', 'am 580 radio station and broadcast media group for teachers explained', 'src_gdelt',
   'http://am580radio.com/tags/114175756.html', 0.65, 74, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260805184500_75', 'ent_bruno-mars', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in bbc.com', 'Bruno Mars mentioned in bbc.com', 'src_gdelt',
   'https://www.bbc.com/news/articles/cwylxg2jekdo', 0.65, 75, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260805184500_75', 'ent_buffalo-bill', '2026-08-05', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in wyrk.com', 'Buffalo Bill mentioned in wyrk.com', 'src_gdelt',
   'https://wyrk.com/bills-uniform-schedule-2026/', 0.65, 75, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260805184500_75', 'ent_bruno-mars', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in eonline.com', 'Bruno Mars mentioned in eonline.com', 'src_gdelt',
   'https://www.eonline.com/news/1434705/molly-ringwald-calls-secret-life-of-american-teenager-worst-experience', 0.65, 75, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260805184500_75', 'ent_blake-lively', '2026-08-05', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in dailymail.com', 'Blake Lively mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16028875/Taylor-Swift-Blake-Lively-children-godmother-MAUREEN-CALLAHAN.html', 0.65, 75, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260805190000_76', 'ent_alicia-keys', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in hotaugusta.com', 'Alicia Keys mentioned in hotaugusta.com', 'src_gdelt',
   'https://hotaugusta.com/2026/08/05/alicia-keys-signs-with-caa-new-projects-on-the-way/', 0.65, 76, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260805190000_76', 'ent_andrew-jackson', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in ack.net', 'Andrew Jackson mentioned in ack.net', 'src_gdelt',
   'https://www.ack.net/news/belichicks-lawyers-file-third-party-complaint-in-painter-case/article_05e16578-9a41-41dc-979e-4ad921f10cf8.html', 0.65, 76, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260805190000_76', 'ent_axl-rose', '2026-08-05', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in 1045theteam.com', 'Axl Rose mentioned in 1045theteam.com', 'src_gdelt',
   'https://1045theteam.com/ixp/79/p/long-island-medium-saratoga-visit/', 0.65, 76, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260805190000_76', 'ent_alexander-hamilton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in standardspeaker.com', 'Alexander Hamilton mentioned in standardspeaker.com', 'src_gdelt',
   'https://www.standardspeaker.com/2026/08/05/adrian-wooldridge-ai-will-make-our-politics-even-more-emotional/', 0.65, 76, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260805191500_77', 'ent_barbra-streisand', '2026-08-05', 2026, 'public_appearance', 'news',
   'Raina Douris (Barbra Streisand mentioned)', 'Raina Douris', 'src_gdelt',
   'https://www.kcbx.org/people/raina-douris', 0.65, 77, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260805191500_77', 'ent_brian-de-palma', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in screenrant.com', 'Brian De Palma mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/mike-flanagan-stephen-king-carrie-adaptation-ending-change-tease/', 0.65, 77, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260805191500_77', 'ent_breanna-stewart', '2026-08-05', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in brooklyneagle.com', 'Breanna Stewart mentioned in brooklyneagle.com', 'src_gdelt',
   'https://brooklyneagle.com/407331/liberty-put-their-faith-in-fauthoux/', 0.65, 77, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260805193000_78', 'ent_barbra-streisand', '2026-08-05', 2026, 'public_appearance', 'news',
   'Raina Douris (Barbra Streisand mentioned)', 'Raina Douris', 'src_gdelt',
   'https://www.wamc.org/people/raina-douris', 0.65, 78, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260805193000_78', 'ent_audrey-hepburn', '2026-08-05', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in dailymail.com', 'Audrey Hepburn mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16031461/70s-wet-tshirt-sex-symbol-angelina-jolie-godmother-ageless-81-guess-who.html', 0.65, 78, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260805193000_78', 'ent_alexander-hamilton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in pjmedia.com', 'Alexander Hamilton mentioned in pjmedia.com', 'src_gdelt',
   'https://pjmedia.com/catherinesalgado/2026/08/05/happy-late-birthday-to-the-us-coast-guard-n4955827', 0.65, 78, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arthur_ashe_20260805194500_79', 'ent_arthur-ashe', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arthur Ashe mentioned in townandcountrymag.com', 'Arthur Ashe mentioned in townandcountrymag.com', 'src_gdelt',
   'https://www.townandcountrymag.com/style/a65616291/what-to-wear-to-us-open-outfits/', 0.65, 79, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260805194500_79', 'ent_billie-holiday', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in gratefulweb.com', 'Billie Holiday mentioned in gratefulweb.com', 'src_gdelt',
   'https://www.gratefulweb.com/articles/bruce-cockburn-honors-the-songs-that-shaped-him-on-new-album-the-blood-of-others/', 0.65, 79, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260805194500_79', 'ent_eric-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in rawstory.com', 'Eric Trump mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/trump-luxury-jet-qatar/', 0.65, 79, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260805194500_79', 'ent_eric-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in alternet.org', 'Eric Trump mentioned in alternet.org', 'src_gdelt',
   'https://www.alternet.org/send/trump-air-force-one-2677661396/', 0.65, 79, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260805200000_80', 'plc_boston-university', '2026-08-05', 2026, 'public_appearance', 'news',
   'AbbVie Inc. (ABBV) Stock Forecasts (Boston University mentioned)', 'AbbVie Inc. (ABBV) Stock Forecasts', 'src_gdelt',
   'https://finance.yahoo.com/research/reports/ARGUS_3610_AnalystReport_1785953734000', 0.65, 80, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260805200000_80', 'ent_billie-jean-king', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in mb.com.ph', 'Billie Jean King mentioned in mb.com.ph', 'src_gdelt',
   'https://mb.com.ph/2026/08/06/when-a-nation-grows-with-alex-eala-kapag-lumago-hindi-hihinto', 0.65, 80, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260805200000_80', 'ent_axl-rose', '2026-08-05', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in 1077thebone.com', 'Axl Rose mentioned in 1077thebone.com', 'src_gdelt',
   'https://www.1077thebone.com/2026/08/05/slash-says-outside-forces-caused-gnr-split/', 0.65, 80, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260805200000_80', 'ent_brett-kavanaugh', '2026-08-05', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in redstate.com', 'Brett Kavanaugh mentioned in redstate.com', 'src_gdelt',
   'https://redstate.com/bobhoge/2026/08/05/party-of-peace-el-sayed-uses-loaded-military-term-no-quarter-in-unhinged-speech-against-rogers-n2205222', 0.65, 80, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_frida_kahlo_20260805200000_80', 'ent_frida-kahlo', '2026-08-05', 2026, 'public_appearance', 'news',
   'Frida Kahlo mentioned in cbs4local.com', 'Frida Kahlo mentioned in cbs4local.com', 'src_gdelt',
   'https://cbs4local.com/newsletter-daily/glasstire-ranks-el-paso-museum-of-art-among-texas-top-five-art-museums', 0.65, 80, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260805201500_81', 'ent_arnold-palmer', '2026-08-05', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in luxurytravelmagazine.com', 'Arnold Palmer mentioned in luxurytravelmagazine.com', 'src_gdelt',
   'https://www.luxurytravelmagazine.com/news-articles/where-the-c-suite-actually-retreats-luxury-destinations-built-for-an-executive-offsite', 0.65, 81, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alan_shepard_20260805201500_81', 'ent_alan-shepard', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alan Shepard mentioned in fultoncountynews.com', 'Alan Shepard mentioned in fultoncountynews.com', 'src_gdelt',
   'https://www.fultoncountynews.com/articles/john-glenn/', 0.65, 81, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260805203000_82', 'ent_andrew-young', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in 1049therebel.com', 'Andrew Young mentioned in 1049therebel.com', 'src_gdelt',
   'https://www.1049therebel.com/2026/08/04/one-mans-opinion-that-wonderful-hot-centennial-games-summer-of-96/', 0.65, 82, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_allen_ginsberg_20260805203000_82', 'ent_allen-ginsberg', '2026-08-05', 2026, 'public_appearance', 'news',
   'Allen Ginsberg mentioned in gazettenet.com', 'Allen Ginsberg mentioned in gazettenet.com', 'src_gdelt',
   'https://gazettenet.com/2026/08/05/new-casual-eatery-set-to-open-in-former-lichter-levin-site-in-downtown-northampton/', 0.65, 82, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260805203000_82', 'ent_andrew-lloyd-webber', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in lpheralddispatch.com', 'Andrew Lloyd Webber mentioned in lpheralddispatch.com', 'src_gdelt',
   'https://www.lpheralddispatch.com/features/on_the_go/dunes-arts-summer-theatre-brings-back-jesus-christ-superstar/article_86d2ff62-fd76-5699-bdf7-70335d1c119d.html', 0.65, 82, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_antonin_scalia_20260805204500_83', 'ent_antonin-scalia', '2026-08-05', 2026, 'public_appearance', 'news',
   'Antonin Scalia mentioned in thestranger.com', 'Antonin Scalia mentioned in thestranger.com', 'src_gdelt',
   'https://www.thestranger.com/slog-am/slog-am-election-takeaways-spokanes-suspected-fire-bug-and-three-dead-lions/', 0.65, 83, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260805204500_83', 'ent_bing-crosby', '2026-08-05', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in bloodhorse.com', 'Bing Crosby mentioned in bloodhorse.com', 'src_gdelt',
   'https://www.bloodhorse.com/horse-racing/articles/293592/velazquez-named-jockey-of-the-week', 0.65, 83, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260805210000_84', 'ent_alexander-hamilton', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in militarytimes.com', 'Alexander Hamilton mentioned in militarytimes.com', 'src_gdelt',
   'https://www.militarytimes.com/news/your-navy/2026/08/05/the-countdown-begins-national-coast-guard-museum-one-year-from-opening/', 0.65, 84, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_forrest_20260805211500_85', 'ent_andrew-forrest', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Forrest mentioned in livenews.co.nz', 'Andrew Forrest mentioned in livenews.co.nz', 'src_gdelt',
   'https://livenews.co.nz/2026/08/06/pm-edition-top-10-business-articles-on-livenews-co-nz-for-august-6-2026-full-text/', 0.65, 85, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260805211500_85', 'ent_billie-holiday', '2026-08-05', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in mentalfloss.com', 'Billie Holiday mentioned in mentalfloss.com', 'src_gdelt',
   'https://www.mentalfloss.com/quizzes/music/name-jazz-legend-from-famous-song', 0.65, 85, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260805213000_86', 'ent_ivanka-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in yahoo.com', 'Ivanka Trump mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/trump-urges-lawmakers-daylight-saving-172253424.html', 0.65, 86, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260805214500_87', 'ent_alice-cooper', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in sandiegouniontribune.com', 'Alice Cooper mentioned in sandiegouniontribune.com', 'src_gdelt',
   'https://www.sandiegouniontribune.com/2026/08/04/retro-teds-world-of-arcade-opening-in-poway-on-saturday/', 0.65, 87, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260805214500_87', 'ent_ivanka-trump', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in dailymail.com', 'Ivanka Trump mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/news/article-16030549/Donald-Trump-Jr-buys-Kimberly-Guilfoyle-Florida-mansion.html', 0.65, 87, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260805214500_87', 'ent_andrew-young', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in wsbradio.com', 'Andrew Young mentioned in wsbradio.com', 'src_gdelt',
   'https://www.wsbradio.com/news/local/one-mans-opinion-that-wonderful-hot-centennial-games-summer-96/UYWADMFTCNARJMUMVR42L7HBKY/', 0.65, 87, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260805221500_89', 'ent_black-hawk', '2026-08-05', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in stripes.com', 'Black Hawk mentioned in stripes.com', 'src_gdelt',
   'https://www.stripes.com/theaters/us/2026-08-05/sikorsky-contract-marine-one-aircraft-22465456.html', 0.65, 89, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_paul_20260805221500_89', 'ent_alice-paul', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alice Paul mentioned in fwweekly.com', 'Alice Paul mentioned in fwweekly.com', 'src_gdelt',
   'https://www.fwweekly.com/2026/08/05/night-day-450/', 0.65, 89, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260805224500_91', 'ent_andrew-young', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in jacksonprogress-argus.com', 'Andrew Young mentioned in jacksonprogress-argus.com', 'src_gdelt',
   'https://www.jacksonprogress-argus.com/opinion/one-man-s-opinion-that-wonderful-hot-centennial-games-summer-of-96/article_f782042a-c26a-5cce-ab99-887bc524121b.html', 0.65, 91, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betty_grable_20260805224500_91', 'ent_betty-grable', '2026-08-05', 2026, 'public_appearance', 'news',
   'Betty Grable mentioned in radaronline.com', 'Betty Grable mentioned in radaronline.com', 'src_gdelt',
   'https://radaronline.com/p/lucille-ball-desi-arnaz-love-life-secrets-mad-affair-intimacy/', 0.65, 91, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260805224500_91', 'ent_barry-sanders', '2026-08-05', 2026, 'public_appearance', 'news',
   'Eagles running back Saquon Barkley was inspired by Barry Sanders serving his teammates &#x2013; KTBB News, Weather, Talk (Barry Sanders mentioned)', 'Eagles running back Saquon Barkley was inspired by Barry Sanders serving his teammates &#x2013; KTBB News, Weather, Talk', 'src_gdelt',
   'https://ktbb.com/post/?p=1530910', 0.65, 91, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260805230000_92', 'ent_amelia-earhart', '2026-08-05', 2026, 'public_appearance', 'news',
   'Amelia Earhart mentioned in foxnews.com', 'Amelia Earhart mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/travel/search-amelia-earharts-long-lost-plane-reignites-ambitious-new-expedition', 0.65, 92, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ann_lee_20260805230000_92', 'ent_ann-lee', '2026-08-05', 2026, 'public_appearance', 'news',
   'Ann Lee mentioned in variety.com', 'Ann Lee mentioned in variety.com', 'src_gdelt',
   'https://variety.com/2026/film/global/the-life-and-deaths-of-wilson-shedd-westend-films-1236828335/', 0.65, 92, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_art_blakey_20260805230000_92', 'ent_art-blakey', '2026-08-05', 2026, 'public_appearance', 'news',
   'Art Blakey mentioned in chattanoogan.com', 'Art Blakey mentioned in chattanoogan.com', 'src_gdelt',
   'https://www.chattanoogan.com/2026/8/5/521697/UTC-LIVE-Announces-2026-27-Season.aspx', 0.65, 92, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260805230000_92', 'ent_andrew-young', '2026-08-05', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in wrganews.com', 'Andrew Young mentioned in wrganews.com', 'src_gdelt',
   'https://www.wrganews.com/2026/08/04/one-mans-opinion-that-wonderful-hot-centennial-games-summer-of-96/', 0.65, 92, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260805230000_92', 'ent_al-pacino', '2026-08-05', 2026, 'public_appearance', 'news',
   '''Super Troopers'' celebrates a quarter-century of mustaches and maple syrup &#x2014; and a new film (Al Pacino mentioned)', '''Super Troopers'' celebrates a quarter-century of mustaches and maple syrup &#x2014; and a new film', 'src_gdelt',
   'https://www.altoonamirror.com/life/area-life/2026/08/supertroopers3-franchise-celebrates-25years-maplesyrup-mustaches/', 0.65, 92, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260805230000_92', 'ent_barry-bonds', '2026-08-05', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in awfulannouncing.com', 'Barry Bonds mentioned in awfulannouncing.com', 'src_gdelt',
   'https://awfulannouncing.com/mlb/jeff-passan-explains-giving-up-hall-of-fame-vote-joe-morgan.html', 0.65, 92, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260805231500_93', 'ent_anna-wintour', '2026-08-05', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in nypost.com', 'Anna Wintour mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/05/opinion/fast-takes-spare-us-the-show-anna-wintour-how-to-blunt-legal-pot-and-more/', 0.65, 93, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_college_20260805233000_94', 'plc_boston-college', '2026-08-05', 2026, 'public_appearance', 'news',
   'Boston College mentioned in bcheights.com', 'Boston College mentioned in bcheights.com', 'src_gdelt',
   'https://bcheights.com/231883/news/boston-college-ranks-no-21-in-linkedins-2026-list-of-best-colleges-for-long-term-success/', 0.65, 94, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260805233000_94', 'plc_boston-university', '2026-08-05', 2026, 'public_appearance', 'news',
   'Boston University mentioned in bcheights.com', 'Boston University mentioned in bcheights.com', 'src_gdelt',
   'https://bcheights.com/231883/news/boston-college-ranks-no-21-in-linkedins-2026-list-of-best-colleges-for-long-term-success/', 0.65, 94, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_allen_ginsberg_20260805234500_95', 'ent_allen-ginsberg', '2026-08-05', 2026, 'public_appearance', 'news',
   'Allen Ginsberg mentioned in hyperallergic.com', 'Allen Ginsberg mentioned in hyperallergic.com', 'src_gdelt',
   'https://hyperallergic.com/advocates-rally-to-stop-sale-of-glasgows-centre-for-contemporary-arts/', 0.65, 95, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260805234500_95', 'ent_alfred-hitchcock', '2026-08-05', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in streetroots.org', 'Alfred Hitchcock mentioned in streetroots.org', 'src_gdelt',
   'https://www.streetroots.org/culture/2026/08/05/go-see-cool-arts-events-on-the-cheap/', 0.65, 95, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amy_hood_20260805234500_95', 'ent_amy-hood', '2026-08-05', 2026, 'public_appearance', 'news',
   'Amy Hood mentioned in foreignpolicyjournal.com', 'Amy Hood mentioned in foreignpolicyjournal.com', 'src_gdelt',
   'https://www.foreignpolicyjournal.com/2026/08/05/microsoft-nasdaq-msft-stock-price-rockets-24-6-in-july-on-azure-growth-and-blowout-earnings/', 0.65, 95, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260806000000_96', 'ent_donald-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in wimbledonguardian.co.uk', 'Donald Trump mentioned in wimbledonguardian.co.uk', 'src_gdelt',
   'https://www.wimbledonguardian.co.uk/news/national/26440674.miliband-denies-relations-closest-ally-us-harmed-trump-criticism/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260806000000_96', 'ent_donald-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in iheart.com', 'Donald Trump mentioned in iheart.com', 'src_gdelt',
   'https://newsradio1170.iheart.com/content/2026-08-05-senate-votes-to-confirm-dr-erica-schwartz-as-cdc-director/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260806000000_96', 'ent_donald-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in arlnow.com', 'Donald Trump mentioned in arlnow.com', 'src_gdelt',
   'https://www.arlnow.com/2026/08/05/faa-investigating-why-a-plane-was-allowed-to-take-off-from-dca-as-marine-one-approached/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260806000000_96', 'ent_donald-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in iheart.com', 'Donald Trump mentioned in iheart.com', 'src_gdelt',
   'https://wtkg.iheart.com/content/2026-08-05-senate-votes-to-confirm-dr-erica-schwartz-as-cdc-director/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260806000000_96', 'ent_narendra-modi', '2026-08-06', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in rediff.com', 'Narendra Modi mentioned in rediff.com', 'src_gdelt',
   'https://m.rediff.com/news/commentary/2026/aug/06/liveupdates.htm', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260806000000_96', 'ent_donald-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Football: Women leading ''revolt'' against Infantino (Donald Trump mentioned)', 'Football: Women leading ''revolt'' against Infantino', 'src_gdelt',
   'https://www.gdnonline.com:443/Details/1402693/Women-leading-%E2%80%98revolt%E2%80%99-against-Infantino', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260806000000_96', 'ent_barack-obama', '2026-08-06', 2026, 'public_appearance', 'news',
   'Takeaways from Tuesday''s elections: El-Sayed pulls off narrow victory over Democratic establishment (Barack Obama mentioned)', 'Takeaways from Tuesday''s elections: El-Sayed pulls off narrow victory over Democratic establishment', 'src_gdelt',
   'https://981theriver.com/news/030030-takeaways-from-tuesdays-elections-el-sayed-pulls-off-narrow-victory-over-democratic-establishment/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260806000000_96', 'ent_narendra-modi', '2026-08-06', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in dailyexcelsior.com', 'Narendra Modi mentioned in dailyexcelsior.com', 'src_gdelt',
   'https://www.dailyexcelsior.com/ease-of-doing-business-ordinance-proposing-series-of-reforms-deferred/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260806000000_96', 'ent_narendra-modi', '2026-08-06', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in dailyexcelsior.com', 'Narendra Modi mentioned in dailyexcelsior.com', 'src_gdelt',
   'https://www.dailyexcelsior.com/seventh-anniversary-of-art-370-35a-abrogation-celebrated-across-jk/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260806000000_96', 'ent_barack-obama', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in alaskapublic.org', 'Barack Obama mentioned in alaskapublic.org', 'src_gdelt',
   'https://alaskapublic.org/news/national/2026-08-05/trumps-immigration-crackdown-has-detained-more-than-50-military-spouses-and-parents', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260806000000_96', 'ent_brad-pitt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in fanbolt.com', 'Brad Pitt mentioned in fanbolt.com', 'src_gdelt',
   'https://www.fanbolt.com/178682/tom-rothman-talks-spider-mans-historic-debut-and-losing-tarantinos-netflix-deal/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260806000000_96', 'ent_barack-obama', '2026-08-06', 2026, 'public_appearance', 'news',
   'Takeaways from Tuesday''s elections: El-Sayed pulls off narrow victory over Democratic establishment (Barack Obama mentioned)', 'Takeaways from Tuesday''s elections: El-Sayed pulls off narrow victory over Democratic establishment', 'src_gdelt',
   'https://rewind1051.com/news/030030-takeaways-from-tuesdays-elections-el-sayed-pulls-off-narrow-victory-over-democratic-establishment/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260806000000_96', 'ent_al-pacino', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in fanbolt.com', 'Al Pacino mentioned in fanbolt.com', 'src_gdelt',
   'https://www.fanbolt.com/178699/anya-taylor-joy-opens-up-about-why-she-refuses-to-go-full-method/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260806000000_96', 'ent_aaron-rodgers', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in butlereagle.com', 'Aaron Rodgers mentioned in butlereagle.com', 'src_gdelt',
   'https://www.butlereagle.com/20260805/a-league-filled-with-new-bosses-10-head-coaches-in-new-places-reshape-nfl-sidelines/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260806000000_96', 'ent_narendra-modi', '2026-08-06', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in dailyexcelsior.com', 'Narendra Modi mentioned in dailyexcelsior.com', 'src_gdelt',
   'https://www.dailyexcelsior.com/nasha-mukt-mission/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260806000000_96', 'ent_billy-joel', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in bozone.com', 'Billy Joel mentioned in bozone.com', 'src_gdelt',
   'https://bozone.com/dancin-boots-encouraged-for-music-ranch/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260806000000_96', 'ent_brad-paisley', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in standardspeaker.com', 'Brad Paisley mentioned in standardspeaker.com', 'src_gdelt',
   'https://www.standardspeaker.com/2026/08/05/mohegan-arena-getting-ready-for-september-events/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260806000000_96', 'ent_bill-clinton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in nypost.com', 'Bill Clinton mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/05/us-news/gop-cheers-abdul-el-sayed-mini-mamdanis-as-major-gift-for-2026-midterms/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260806000000_96', 'ent_narendra-modi', '2026-08-06', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in dailyexcelsior.com', 'Narendra Modi mentioned in dailyexcelsior.com', 'src_gdelt',
   'https://www.dailyexcelsior.com/admn-has-resolved-to-dismantle-terror-networks-in-jk-lg/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260806000000_96', 'ent_billie-eilish', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in thecorsaironline.com', 'Billie Eilish mentioned in thecorsaironline.com', 'src_gdelt',
   'https://www.thecorsaironline.com/corsair/2026/4/3/tvso1c8ddyjro34kd26ym3ik5ldh9m', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260806000000_96', 'ent_abraham-lincoln', '2026-08-06', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in foxnews.com', 'Abraham Lincoln mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/politics/trump-become-americas-most-targeted-leader-facing-threats-every-few-months', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260806000000_96', 'ent_andrew-jackson', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in foxnews.com', 'Andrew Jackson mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/politics/trump-become-americas-most-targeted-leader-facing-threats-every-few-months', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260806000000_96', 'ent_barack-obama', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in foxnews.com', 'Barack Obama mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/politics/trump-become-americas-most-targeted-leader-facing-threats-every-few-months', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260806000000_96', 'ent_bill-clinton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in foxnews.com', 'Bill Clinton mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/politics/trump-become-americas-most-targeted-leader-facing-threats-every-few-months', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260806000000_96', 'ent_buzz-aldrin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in cleveland19.com', 'Buzz Aldrin mentioned in cleveland19.com', 'src_gdelt',
   'https://www.cleveland19.com/2026/08/05/home-where-astronaut-neil-armstrongs-boyhood-dreams-flying-took-off-is-sale/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260806000000_96', 'ent_ariana-grande', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in spiked-online.com', 'Ariana Grande mentioned in spiked-online.com', 'src_gdelt',
   'https://www.spiked-online.com/2026/08/05/its-not-body-shaming-to-worry-about-ariana-grandes-appearance/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260806000000_96', 'ent_andy-warhol', '2026-08-06', 2026, 'public_appearance', 'news',
   'Today''s Happenings: August 6, 2026 | South Peace News (Andy Warhol mentioned)', 'Today''s Happenings: August 6, 2026 | South Peace News', 'src_gdelt',
   'https://www.southpeacenews.com/todays-happenings-august-6-2026/', 0.65, 96, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260806001500_97', 'ent_bruce-willis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in comingsoon.net', 'Bruce Willis mentioned in comingsoon.net', 'src_gdelt',
   'https://www.comingsoon.net/movies/news/2172071-molly-ringwald-regrets-passing-on-demi-moore-ghost-role', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260806001500_97', 'ent_barry-sanders', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in thetimesnews.com', 'Barry Sanders mentioned in thetimesnews.com', 'src_gdelt',
   'https://www.thetimesnews.com/eagles-running-back-saquon-barkley-was-inspired-by-barry-sanders-serving-his-teammates/article_09b637a7-35af-5200-b7cf-5402b8729a71.html', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260806001500_97', 'ent_barack-obama', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in kwtx.com', 'Barack Obama mentioned in kwtx.com', 'src_gdelt',
   'https://www.kwtx.com/2026/08/05/ap-exclusive-trumps-immigration-crackdown-has-detained-more-than-50-military-spouses-parents/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260806001500_97', 'ent_billie-eilish', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in hellomagazine.com', 'Billie Eilish mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/us/916658/billie-eilish-unrecognizable-after-dramatic-transformation-for-major-new-movie-role/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260806001500_97', 'ent_alicia-keys', '2026-08-06', 2026, 'public_appearance', 'news',
   'Live Music in The Woodlands &#x2013; August 5 - 9, 2026 (Alicia Keys mentioned)', 'Live Music in The Woodlands &#x2013; August 5 - 9, 2026', 'src_gdelt',
   'https://www.woodlandsonline.com/blps/article.cfm?page=16036', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260806001500_97', 'ent_bill-clinton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in dailypress.com', 'Bill Clinton mentioned in dailypress.com', 'src_gdelt',
   'https://www.dailypress.com/2026/08/05/letters-for-aug-6-virginia-beach-must-prioritize-access-to-sandbridge/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260806001500_97', 'ent_bruce-willis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in comingsoon.net', 'Bruce Willis mentioned in comingsoon.net', 'src_gdelt',
   'https://www.comingsoon.net/movies/news/2172109-emma-heming-willis-bruce-willis-dementia-caregiver-guilt-50th-birthday', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260806001500_97', 'ent_eric-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'How Trump made an estimated $2.2 billion during the first year of his second term (Eric Trump mentioned)', 'How Trump made an estimated $2.2 billion during the first year of his second term', 'src_gdelt',
   'https://www.wlrn.org/national-politics/2026-08-05/how-trump-made-an-estimated-2-2-billion-during-the-first-year-of-his-second-term', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260806001500_97', 'ent_eric-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in wamc.org', 'Eric Trump mentioned in wamc.org', 'src_gdelt',
   'https://www.wamc.org/2026-08-05/how-trump-made-an-estimated-2-2-billion-during-the-first-year-of-his-second-term', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260806001500_97', 'ent_bari-weiss', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in theintercept.com', 'Bari Weiss mentioned in theintercept.com', 'src_gdelt',
   'https://theintercept.com/2026/08/04/60-minutes-bari-weiss-cbs-news-israel-gaza/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260806001500_97', 'ent_black-hawk', '2026-08-06', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in dailymail.com', 'Black Hawk mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/news/article-16032229/marine-one-safety-incident-trump-washington-dc.html', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260806001500_97', 'ent_caitlin-clark', '2026-08-06', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in news-herald.com', 'Caitlin Clark mentioned in news-herald.com', 'src_gdelt',
   'https://www.news-herald.com/2026/08/05/indiana-fever-continue-to-thrive-on-the-court-despite-constant-barrage-of-off-court-distractions/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260806001500_97', 'ent_bob-dylan', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in wgauradio.com', 'Bob Dylan mentioned in wgauradio.com', 'src_gdelt',
   'https://www.wgauradio.com/entertainment/qa-ms-lauryn-hill/KURAR2GLKM3IJKVCHEJ54DADNY/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260806001500_97', 'ent_ariana-grande', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in wgauradio.com', 'Ariana Grande mentioned in wgauradio.com', 'src_gdelt',
   'https://www.wgauradio.com/entertainment/ariana-grandes-new/ND6XUIPFOIYQ7O6NZ7IN2OEEKU/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260806001500_97', 'ent_barbara-walters', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in closerweekly.com', 'Barbara Walters mentioned in closerweekly.com', 'src_gdelt',
   'https://closerweekly.com/whoopi-goldberg-70-suggests-shed-quit-the-view-if-she-was-richer/', 0.65, 97, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260806003000_98', 'ent_caitlin-clark', '2026-08-06', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in morningjournal.com', 'Caitlin Clark mentioned in morningjournal.com', 'src_gdelt',
   'https://www.morningjournal.com/2026/08/05/indiana-fever-continue-to-thrive-on-the-court-despite-constant-barrage-of-off-court-distractions/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260806003000_98', 'ent_bill-clinton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in kob.com', 'Bill Clinton mentioned in kob.com', 'src_gdelt',
   'https://www.kob.com/new-mexico/new-mexicos-epstein-commission-releases-initial-report/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260806003000_98', 'ent_ariana-grande', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in dailymail.com', 'Ariana Grande mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16031635/ariana-grande-healthier-weight-loss.html', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260806003000_98', 'ent_bill-clinton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in thedailybeast.com', 'Bill Clinton mentioned in thedailybeast.com', 'src_gdelt',
   'https://www.thedailybeast.com/james-carvilles-shock-prediction-on-trumps-grim-future/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_johnson_20260806003000_98', 'ent_andrew-johnson', '2026-08-06', 2026, 'public_appearance', 'news',
   'B.C. wildfire: Okanagan Indian Band community mourns loss (Andrew Johnson mentioned)', 'B.C. wildfire: Okanagan Indian Band community mourns loss', 'src_gdelt',
   'https://www.cp24.com/news/canada/2026/08/05/it-looked-like-a-war-zone-okanagan-chief-describes-devastation-after-bc-wildfire/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260806003000_98', 'ent_britney-spears', '2026-08-06', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in screenrant.com', 'Britney Spears mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/star-trek-strange-new-worlds-britney-spears-crossroads-movie-prototype/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260806003000_98', 'ent_abraham-lincoln', '2026-08-06', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in dose.ca', 'Abraham Lincoln mentioned in dose.ca', 'src_gdelt',
   'https://dose.ca/2026/08/05/pete-crow-armstrong-believes-that-babe-ruth-never-existed/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260806003000_98', 'ent_babe-ruth', '2026-08-06', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in dose.ca', 'Babe Ruth mentioned in dose.ca', 'src_gdelt',
   'https://dose.ca/2026/08/05/pete-crow-armstrong-believes-that-babe-ruth-never-existed/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260806003000_98', 'ent_alexander-hamilton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in hotair.com', 'Alexander Hamilton mentioned in hotair.com', 'src_gdelt',
   'https://hotair.com/headlines/2026/08/05/nelson-and-blueskin-washingtons-revolutionary-war-horses-in-the-documentary-record-n3817640', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260806003000_98', 'ent_angela-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in klcc.org', 'Angela Davis mentioned in klcc.org', 'src_gdelt',
   'https://www.klcc.org/podcast/oregon-on-the-record/2026-08-05/raw-deal-propublica-on-raw-milk-supporters-and-dubious-health-claims', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260806003000_98', 'ent_abraham-lincoln', '2026-08-06', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in alternet.org', 'Abraham Lincoln mentioned in alternet.org', 'src_gdelt',
   'https://www.alternet.org/trump-soldiers-veterans-iran/', 0.65, 98, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260806004500_99', 'ent_bob-dylan', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in q1075.com', 'Bob Dylan mentioned in q1075.com', 'src_gdelt',
   'https://q1075.com/top-40-music-history-august-5/', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260806004500_99', 'ent_eric-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in forbes.com', 'Eric Trump mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/antoniopequenoiv/2026/08/05/qatar-gifted-air-force-ones-future-grows-unclear-as-trump-library-plans-fall-into-doubt/', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260806004500_99', 'ent_brad-paisley', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in local12.com', 'Brad Paisley mentioned in local12.com', 'src_gdelt',
   'https://local12.com/news/local/what-next-voa-county-music-fest-event-will-sever-ties-west-chester-township-event-entertainment-brad-paisley-headliners-butler-county-economic-impact-ticket-tickets-cost-artists-headliners-cincinnati-ohio-voice-of-america', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260806004500_99', 'ent_bob-dylan', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in clickorlando.com', 'Bob Dylan mentioned in clickorlando.com', 'src_gdelt',
   'https://www.clickorlando.com/entertainment/2026/08/05/qa-ms-lauryn-hill-on-the-diaspora-calling-festival-in-the-uk-the-fugees-legacy-and-dangelo/', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260806004500_99', 'ent_bob-dylan', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in brandonsun.com', 'Bob Dylan mentioned in brandonsun.com', 'src_gdelt',
   'https://www.brandonsun.com/entertainment/2026/08/05/qa-ms-lauryn-hill-on-the-diaspora-calling-festival-in-the-uk-the-fugees-legacy-and-dangelo', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260806004500_99', 'ent_eric-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in dailykos.com', 'Eric Trump mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/5/800077641/community/evening-shade-resistance-rising-wednesday-august-5-2026/', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260806004500_99', 'ent_bob-dylan', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in mymotherlode.com', 'Bob Dylan mentioned in mymotherlode.com', 'src_gdelt',
   'https://mymotherlode.com/entertainment/11046258/qa-ms-lauryn-hill-on-the-diaspora-calling-festival-in-the-uk-the-fugees-legacy-and-dangelo.html', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260806004500_99', 'ent_ivanka-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in forbes.com', 'Ivanka Trump mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/rickhelfenbein/2026/08/05/retail-worries-that-trumps-tariff-war-has-wandered-to-the-dark-side/', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260806004500_99', 'ent_ariana-grande', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in dailymail.com', 'Ariana Grande mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16032219/Olivia-Rodrigo-blasts-Trump-signing-law-defunding-Planned-Parenthood.html', 0.65, 99, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260806010000_100', 'ent_andrew-young', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in victoriaadvocate.com', 'Andrew Young mentioned in victoriaadvocate.com', 'src_gdelt',
   'https://victoriaadvocate.com/2026/08/05/council-advances-budget-debates-fee-exemptions/', 0.65, 100, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260806010000_100', 'ent_breanna-stewart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in el-balad.com', 'Breanna Stewart mentioned in el-balad.com', 'src_gdelt',
   'https://www.el-balad.com/17039088', 0.65, 100, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260806010000_100', 'ent_anna-wintour', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in nypost.com', 'Anna Wintour mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/05/opinion/anna-wintour-has-rubber-stamped-bigotry-by-picking-antisemitic-galliano-for-met-show/', 0.65, 100, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260806010000_100', 'ent_buddy-holly', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in twincities.com', 'Buddy Holly mentioned in twincities.com', 'src_gdelt',
   'https://www.twincities.com/2026/08/05/fun-finder-fringe-bluesfest-irish-fest-asian-night-market-and-more-to-do-this-weekend/', 0.65, 100, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260806010000_100', 'ent_caitlin-clark', '2026-08-06', 2026, 'public_appearance', 'news',
   'Fever chasing more success against Aces in marquee clash (Caitlin Clark mentioned)', 'Fever chasing more success against Aces in marquee clash', 'src_gdelt',
   'http://www.orlandoecho.com/news/279224026/fever-chasing-more-success-against-aces-in-marquee-clash', 0.65, 100, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260806010000_100', 'ent_abraham-lincoln', '2026-08-06', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in pressofatlanticcity.com', 'Abraham Lincoln mentioned in pressofatlanticcity.com', 'src_gdelt',
   'https://pressofatlanticcity.com/news/community/article_076f240e-c481-51de-a063-8c35440fced6.html', 0.65, 100, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260806011500_101', 'ent_ariana-grande', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in santamariatimes.com', 'Ariana Grande mentioned in santamariatimes.com', 'src_gdelt',
   'https://santamariatimes.com/ap/entertainment/ap-entertainment-summarybrief-at-6-44-p-m-edt/article_99598350-95f1-5d96-b348-0d1fbc2428e2.html', 0.65, 101, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260806011500_101', 'ent_abraham-lincoln', '2026-08-06', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in thebeacon.net', 'Abraham Lincoln mentioned in thebeacon.net', 'src_gdelt',
   'https://www.thebeacon.net/declaration-250-event-on-put-in-bay-celebrated-americas-true-date-of-freedom/', 0.65, 101, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260806013000_102', 'ent_black-hawk', '2026-08-06', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in isthmus.com', 'Black Hawk mentioned in isthmus.com', 'src_gdelt',
   'https://isthmus.com/events/people-fest/?occ_dtstart=2026-08-06T00:00', 0.65, 102, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260806013000_102', 'ent_eric-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in thenewamerican.com', 'Eric Trump mentioned in thenewamerican.com', 'src_gdelt',
   'https://thenewamerican.com/us/tech/theyre-building-war-robots/', 0.65, 102, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260806014500_103', 'ent_billie-eilish', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in dcourier.com', 'Billie Eilish mentioned in dcourier.com', 'src_gdelt',
   'https://www.dcourier.com/news/across-the-street/what-to-stream-ted-lasso-billie-eilish-stray-kids-you-me-tuscany-and-the-shards/article_49a18116-b26d-4565-8921-3d473d694517.html', 0.65, 103, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260806014500_103', 'ent_brian-de-palma', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in screenrant.com', 'Brian De Palma mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/bonfire-of-the-vanities-apple-tv-series-canceled/', 0.65, 103, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260806014500_103', 'ent_bruce-willis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in screenrant.com', 'Bruce Willis mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/bonfire-of-the-vanities-apple-tv-series-canceled/', 0.65, 103, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260806020000_104', 'ent_bruce-lee', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in prestigeonline.com', 'Bruce Lee mentioned in prestigeonline.com', 'src_gdelt',
   'https://www.prestigeonline.com/hk/people/venus-wong-more-than-fame/', 0.65, 104, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260806020000_104', 'ent_melania-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Mark Carney''s teleprompter quits, and he turns it into a Trump joke (Melania Trump mentioned)', 'Mark Carney''s teleprompter quits, and he turns it into a Trump joke', 'src_gdelt',
   'https://nationalpost.com/news/canada/mark-carney-teleprompter-donald-trump', 0.65, 104, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260806020000_104', 'ent_bari-weiss', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in usmagazine.com', 'Bari Weiss mentioned in usmagazine.com', 'src_gdelt',
   'https://www.usmagazine.com/entertainment/news/stephen-colberts-daughter-quits-60-minutes-amid-his-cbs-exit/', 0.65, 104, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260806020000_104', 'ent_buzz-aldrin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in news-gazette.com', 'Buzz Aldrin mentioned in news-gazette.com', 'src_gdelt',
   'https://www.news-gazette.com/news/nation-world/the-first-small-steps-taken-in-neil-armstrongs-childhood-home-inspired-a-giant-leap-for/article_edc93ab3-fc1e-5935-a66e-8882297266e9.html', 0.65, 104, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260806020000_104', 'ent_brad-paisley', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in 97x.com', 'Brad Paisley mentioned in 97x.com', 'src_gdelt',
   'https://97x.com/ixp/784/p/mvf-2027-announcement/', 0.65, 104, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260806020000_104', 'ent_breanna-stewart', '2026-08-06', 2026, 'public_appearance', 'news',
   'New York Liberty beat Storm again, extending Seattle''s skid to 10 (Breanna Stewart mentioned)', 'New York Liberty beat Storm again, extending Seattle''s skid to 10', 'src_gdelt',
   'https://www.tsn.ca/wnba/article/liberty-beat-storm-again-extending-seattles-skid-to-10/', 0.65, 104, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260806021500_105', 'ent_brett-kavanaugh', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in foxbangor.com', 'Brett Kavanaugh mentioned in foxbangor.com', 'src_gdelt',
   'https://www.foxbangor.com/news/local/three-maine-physicians-raise-concerns-over-senator-collins-health-care-voting-record/article_7b4fc5b2-73d1-43ec-aa48-75059dd6f5ab.html', 0.65, 105, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260806021500_105', 'ent_breanna-stewart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in winnipegfreepress.com', 'Breanna Stewart mentioned in winnipegfreepress.com', 'src_gdelt',
   'https://www.winnipegfreepress.com/uncategorized/2026/08/05/new-york-liberty-beat-the-seattle-storm-again-extending-seattles-skid-to-10', 0.65, 105, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260806021500_105', 'ent_billie-eilish', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in eonline.com', 'Billie Eilish mentioned in eonline.com', 'src_gdelt',
   'https://www.eonline.com/news/1434729/anna-pigeon-lea-thompsons-daughter-zoey-deutch-cameo-not-happening', 0.65, 105, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260806023000_106', 'ent_bari-weiss', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in hollywoodreporter.com', 'Bari Weiss mentioned in hollywoodreporter.com', 'src_gdelt',
   'https://www.hollywoodreporter.com/business/business-news/paramount-warner-bros-1236664783/', 0.65, 106, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260806023000_106', 'ent_bruce-springsteen', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in santacruzsentinel.com', 'Bruce Springsteen mentioned in santacruzsentinel.com', 'src_gdelt',
   'https://www.santacruzsentinel.com/2026/08/05/calendar-of-events-mickey-avalon-to-perform-entire-debut-album-at-felton/', 0.65, 106, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260806023000_106', 'ent_ben-affleck', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in indiatimes.com', 'Ben Affleck mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/english/hollywood/news/inside-jennifer-lopezs-lavish-real-estate-portfolio-from-her-first-usd-4m-gated-la-summit-mansion-bel-air-property-to-a-sprawling-hidden-hills-estate/articleshow/132978974.cms', 0.65, 106, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260806024500_107', 'ent_audrey-hepburn', '2026-08-06', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in chinadaily.com.cn', 'Audrey Hepburn mentioned in chinadaily.com.cn', 'src_gdelt',
   'http://europe.chinadaily.com.cn/a/202608/06/WS6a73e3a1a310986e2b4693a3.html', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260806024500_107', 'ent_bruce-lee', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in chinadaily.com.cn', 'Bruce Lee mentioned in chinadaily.com.cn', 'src_gdelt',
   'http://europe.chinadaily.com.cn/a/202608/06/WS6a73e3a1a310986e2b4693a3.html', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260806024500_107', 'ent_buddy-holly', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in americansongwriter.com', 'Buddy Holly mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/3-folk-singer-songwriters-from-the-70s-you-can-probably-recognize-even-if-you-cant-name-them/', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260806024500_107', 'ent_breanna-stewart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Breanna Stewart, Liberty hold off Storm to push losing streak to 10 (Breanna Stewart mentioned)', 'Breanna Stewart, Liberty hold off Storm to push losing streak to 10', 'src_gdelt',
   'http://www.sydneysun.com/news/279224193/breanna-stewart-liberty-hold-off-storm-to-push-losing-streak-to-10', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260806024500_107', 'ent_aaron-rodgers', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in crooksandliars.com', 'Aaron Rodgers mentioned in crooksandliars.com', 'src_gdelt',
   'https://crooksandliars.com/2026/08/ron-johnson-invents-new-medical-death', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260806024500_107', 'ent_barbra-streisand', '2026-08-06', 2026, 'public_appearance', 'news',
   'The Cassette Box That Shaped My Musical Life  - Classical California (Barbra Streisand mentioned)', 'The Cassette Box That Shaped My Musical Life  - Classical California', 'src_gdelt',
   'https://www.classicalcalifornia.org/articles/the-cassette-box-that-shaped-my-musical-life', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260806024500_107', 'ent_billy-joel', '2026-08-06', 2026, 'public_appearance', 'news',
   'The Cassette Box That Shaped My Musical Life  - Classical California (Billy Joel mentioned)', 'The Cassette Box That Shaped My Musical Life  - Classical California', 'src_gdelt',
   'https://www.classicalcalifornia.org/articles/the-cassette-box-that-shaped-my-musical-life', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260806024500_107', 'ent_breanna-stewart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Breanna Stewart, Liberty hold off Storm to push losing streak to 10 (Breanna Stewart mentioned)', 'Breanna Stewart, Liberty hold off Storm to push losing streak to 10', 'src_gdelt',
   'http://www.bignewsnetwork.com/news/279224193/breanna-stewart-liberty-hold-off-storm-to-push-losing-streak-to-10', 0.65, 107, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260806030000_108', 'ent_brad-paisley', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in hudsonvalleycountry.com', 'Brad Paisley mentioned in hudsonvalleycountry.com', 'src_gdelt',
   'https://hudsonvalleycountry.com/win-tickets-brad-paisley-bridgeport/', 0.65, 108, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260806030000_108', 'ent_anderson-cooper', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in nny360.com', 'Anderson Cooper mentioned in nny360.com', 'src_gdelt',
   'https://www.nny360.com/artsandlife/artsandentertainment/paramount-s-david-ellison-says-critics-don-t-get-his-politics/article_aae0106f-5c51-51e9-a618-ac0cc4e110bf.html', 0.65, 108, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260806030000_108', 'ent_bari-weiss', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in nny360.com', 'Bari Weiss mentioned in nny360.com', 'src_gdelt',
   'https://www.nny360.com/artsandlife/artsandentertainment/paramount-s-david-ellison-says-critics-don-t-get-his-politics/article_aae0106f-5c51-51e9-a618-ac0cc4e110bf.html', 0.65, 108, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260806030000_108', 'ent_brian-de-palma', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in decider.com', 'Brian De Palma mentioned in decider.com', 'src_gdelt',
   'https://decider.com/2026/08/05/the-shards-episode-1-pilot-recap/', 0.65, 108, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260806030000_108', 'ent_blake-shelton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in keanradio.com', 'Blake Shelton mentioned in keanradio.com', 'src_gdelt',
   'https://keanradio.com/ixp/204/p/locash-miranda-lambert-house-that-built-me-history/', 0.65, 108, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260806030000_108', 'ent_albert-einstein', '2026-08-06', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in forbes.com', 'Albert Einstein mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/joemckendrick/2026/08/05/ai-is-smart-but-not-yet-capable-of-original-thought/', 0.65, 108, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260806031500_109', 'ent_brad-pitt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in attackofthefanboy.com', 'Brad Pitt mentioned in attackofthefanboy.com', 'src_gdelt',
   'https://attackofthefanboy.com/entertainment/brad-pitt-makes-new-legal-move-in-chateau-miraval-case-after-angelina-jolies-financial-independence-claims/', 0.65, 109, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260806031500_109', 'ent_bill-gates', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in arktimes.com', 'Bill Gates mentioned in arktimes.com', 'src_gdelt',
   'https://arktimes.com/arkansas-blog/2026/08/05/start-up-wants-to-expand-nuclear-power-in-arkansas', 0.65, 109, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_murphy_20260806031500_109', 'ent_bobby-murphy', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bobby Murphy mentioned in pressherald.com', 'Bobby Murphy mentioned in pressherald.com', 'src_gdelt',
   'https://www.pressherald.com/2026/08/05/hearts-of-pine-score-in-second-half-to-earn-tie-in-final-friendly-of-season/', 0.65, 109, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260806031500_109', 'ent_benjamin-franklin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in northplattebulletin.com', 'Benjamin Franklin mentioned in northplattebulletin.com', 'src_gdelt',
   'https://northplattebulletin.com/entertainment-around-town-390/', 0.65, 109, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260806031500_109', 'ent_billie-eilish', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in intouchweekly.com', 'Billie Eilish mentioned in intouchweekly.com', 'src_gdelt',
   'https://intouchweekly.com/t-pain-sells-music-catalog-for-a-reported-100m-to-secure-his-childrens-futures/', 0.65, 109, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260806033000_110', 'ent_al-gore', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in leadership.ng', 'Al Gore mentioned in leadership.ng', 'src_gdelt',
   'https://leadership.ng/was-aso-rock-expecting-bishops-to-sing-on-your-mandate/', 0.65, 110, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260806033000_110', 'ent_ben-affleck', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in hellomagazine.com', 'Ben Affleck mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/us/916667/jennifer-garner-flooded-with-congratulations-as-she-flashes-stunning-ring-in-new-update/', 0.65, 110, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260806033000_110', 'ent_ben-affleck', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in movieweb.com', 'Ben Affleck mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/the-rip-matt-damon-action-netflix-biggest-streaming-movie/', 0.65, 110, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260806034500_111', 'ent_anderson-cooper', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in dailymail.com', 'Anderson Cooper mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16032431/Stephen-Colbert-daughter-QUITS-CBS-canceled-Late-Show.html', 0.65, 111, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260806034500_111', 'ent_bari-weiss', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in dailymail.com', 'Bari Weiss mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16032431/Stephen-Colbert-daughter-QUITS-CBS-canceled-Late-Show.html', 0.65, 111, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260806040000_112', 'ent_benny-goodman', '2026-08-06', 2026, 'public_appearance', 'news',
   'The O''Zone | The Magic Christian: Charlie Christian (Benny Goodman mentioned)', 'The O''Zone | The Magic Christian: Charlie Christian', 'src_gdelt',
   'https://www.kuvo.org/news/the-ozone-the-magic-christian-charlie-christian', 0.65, 112, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260806041500_113', 'ent_bruce-willis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in indiatimes.com', 'Bruce Willis mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/english/hollywood/news/emma-heming-willis-recalls-her-first-meeting-with-bruce-willis-while-she-was-engaged-to-another-man-i-just-really-loved-being-around-him/articleshow/132979687.cms', 0.65, 113, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260806041500_113', 'ent_melania-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in newsweek.com', 'Melania Trump mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/trump-says-melania-hates-these-signature-theatrics-of-the-president-12290069', 0.65, 113, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260806043000_114', 'ent_bruno-mars', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in london-now.co.uk', 'Bruno Mars mentioned in london-now.co.uk', 'src_gdelt',
   'https://www.london-now.co.uk/news/26432983.battersea-park-concert---4-new-london-concerts-2026/', 0.65, 114, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260806043000_114', 'ent_buzz-aldrin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in bakersfield.com', 'Buzz Aldrin mentioned in bakersfield.com', 'src_gdelt',
   'https://www.bakersfield.com/ap/national/ap-trending-summarybrief-at-11-22-p-m-edt/article_c0045225-6b01-5a0a-b223-7d780a43bd18.html', 0.65, 114, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260806043000_114', 'ent_barbra-streisand', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in christianpost.com', 'Barbra Streisand mentioned in christianpost.com', 'src_gdelt',
   'https://www.christianpost.com/voice/faucis-downfall-reveals-the-danger-of-rule-by-experts.html', 0.65, 114, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260806044500_115', 'ent_bill-gates', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in moneycontrol.com', 'Bill Gates mentioned in moneycontrol.com', 'src_gdelt',
   'https://www.moneycontrol.com/news/trends/it-s-a-first-copy-rs-500-crore-net-worth-businessman-reveals-why-he-wears-a-rs-10-000-fake-rolex-13996054.html', 0.65, 115, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260806044500_115', 'ent_brad-paisley', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in kfilradio.com', 'Brad Paisley mentioned in kfilradio.com', 'src_gdelt',
   'https://kfilradio.com/ixp/784/p/mvf-2027-announcement/', 0.65, 115, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bette_davis_20260806044500_115', 'ent_bette-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bette Davis mentioned in 92q.com', 'Bette Davis mentioned in 92q.com', 'src_gdelt',
   'https://92q.com/5911700/keke-palmer-whoopi-goldberg-podcast/', 0.65, 115, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260806050000_116', 'ent_angela-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in theguardian.com', 'Angela Davis mentioned in theguardian.com', 'src_gdelt',
   'https://www.theguardian.com/film/2026/aug/06/amy-goodman-reporter-interview-steal-this-story-please-democracy-now-news', 0.65, 116, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260806050000_116', 'ent_bruce-springsteen', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in theguardian.com', 'Bruce Springsteen mentioned in theguardian.com', 'src_gdelt',
   'https://www.theguardian.com/film/2026/aug/06/amy-goodman-reporter-interview-steal-this-story-please-democracy-now-news', 0.65, 116, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260806050000_116', 'ent_bruce-springsteen', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in hngnews.com', 'Bruce Springsteen mentioned in hngnews.com', 'src_gdelt',
   'http://www.hngnews.com/nation_world/ap-trending-summarybrief-at-11-22-p-m-edt/article_4d24b402-c726-509a-8338-4b92448dc75f.html', 0.65, 116, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260806050000_116', 'ent_buzz-aldrin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in hngnews.com', 'Buzz Aldrin mentioned in hngnews.com', 'src_gdelt',
   'http://www.hngnews.com/nation_world/ap-trending-summarybrief-at-11-22-p-m-edt/article_4d24b402-c726-509a-8338-4b92448dc75f.html', 0.65, 116, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260806051500_117', 'ent_alfred-hitchcock', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in bfi.org.uk', 'Alfred Hitchcock mentioned in bfi.org.uk', 'src_gdelt',
   'https://www.bfi.org.uk/sight-and-sound/reviews/ice-cream-man-sweet-treats-turn-sour-eli-roths-gory-story-evil-kids-attacking-adults', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260806051500_117', 'ent_audrey-hepburn', '2026-08-06', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in chinadaily.com.cn', 'Audrey Hepburn mentioned in chinadaily.com.cn', 'src_gdelt',
   'http://usa.chinadaily.com.cn/a/202608/06/WS6a73e3a1a310986e2b4693a3.html', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260806051500_117', 'ent_bruce-lee', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in chinadaily.com.cn', 'Bruce Lee mentioned in chinadaily.com.cn', 'src_gdelt',
   'http://usa.chinadaily.com.cn/a/202608/06/WS6a73e3a1a310986e2b4693a3.html', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260806051500_117', 'ent_bruce-willis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in hellomagazine.com', 'Bruce Willis mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/us/916669/bruce-willis-wife-emma-heming-gets-brutally-honest-about-guilt-celebrating-50th-birthday/', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260806051500_117', 'ent_bruce-springsteen', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in sookenewsmirror.com', 'Bruce Springsteen mentioned in sookenewsmirror.com', 'src_gdelt',
   'https://sookenewsmirror.com/2026/08/05/harry-manx-brings-blues-indian-music-fusion-to-sooke/', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260806051500_117', 'ent_sachin-tendulkar', '2026-08-06', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in adgully.com', 'Sachin Tendulkar mentioned in adgully.com', 'src_gdelt',
   'https://www.adgully.com/post/18930/shah-rukh-khan-tops-celebrity-brand-valuation-report-2025-combined-value-of-top-25-stands-at-usd-2-bn', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260806051500_117', 'ent_alia-bhatt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in adgully.com', 'Alia Bhatt mentioned in adgully.com', 'src_gdelt',
   'https://www.adgully.com/post/18930/shah-rukh-khan-tops-celebrity-brand-valuation-report-2025-combined-value-of-top-25-stands-at-usd-2-bn', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260806051500_117', 'ent_buzz-aldrin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in couriernews.com', 'Buzz Aldrin mentioned in couriernews.com', 'src_gdelt',
   'https://www.couriernews.com/news/national/ap-trending-summarybrief-at-11-22-p-m-edt/article_d434baab-739f-5cb4-a501-93390f3f0b22.html', 0.65, 117, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260806053000_118', 'ent_melania-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in alternet.org', 'Melania Trump mentioned in alternet.org', 'src_gdelt',
   'https://www.alternet.org/hecklers-pommel-trumps-wild-claim-that-melania-was-no-1-movie-of-the-year/', 0.65, 118, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260806053000_118', 'ent_brad-pitt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in indiatimes.com', 'Brad Pitt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/english/hollywood/news/angelina-jolies-eldest-son-maddox-turns-25-all-about-the-young-man-from-his-adoption-to-removing-the-pitt-name/articleshow/132980993.cms', 0.65, 118, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_murphy_20260806054500_119', 'ent_bobby-murphy', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bobby Murphy mentioned in sunjournal.com', 'Bobby Murphy mentioned in sunjournal.com', 'src_gdelt',
   'https://www.sunjournal.com/2026/08/05/hearts-of-pine-score-in-second-half-to-earn-tie-in-final-friendly-of-season/', 0.65, 119, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260806054500_119', 'ent_audrey-hepburn', '2026-08-06', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in chinadaily.com.cn', 'Audrey Hepburn mentioned in chinadaily.com.cn', 'src_gdelt',
   'http://global.chinadaily.com.cn/a/202608/06/WS6a73e3a1a310986e2b4693a3.html', 0.65, 119, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260806054500_119', 'ent_bruce-lee', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in chinadaily.com.cn', 'Bruce Lee mentioned in chinadaily.com.cn', 'src_gdelt',
   'http://global.chinadaily.com.cn/a/202608/06/WS6a73e3a1a310986e2b4693a3.html', 0.65, 119, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260806060000_120', 'ent_al-gore', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ireland could look like paradise to England''s heat refugees &#x2013; The Irish Times (Al Gore mentioned)', 'Ireland could look like paradise to England''s heat refugees &#x2013; The Irish Times', 'src_gdelt',
   'https://www.irishtimes.com/opinion/2026/08/06/finn-mcredmond-ireland-could-look-like-paradise-to-refugees-from-places-like-near-unliveable-london/', 0.65, 120, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260806060000_120', 'ent_ivanka-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in baptistnews.com', 'Ivanka Trump mentioned in baptistnews.com', 'src_gdelt',
   'https://baptistnews.com/article/dont-be-surprised-white-evangelicals-still-support-jesse-watters/', 0.65, 120, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_biz_stone_20260806060000_120', 'ent_biz-stone', '2026-08-06', 2026, 'public_appearance', 'news',
   'Biz Stone mentioned in memeburn.com', 'Biz Stone mentioned in memeburn.com', 'src_gdelt',
   'https://memeburn.com/ai-benchmarking-is-becoming-a-multi-billion-dollar-industry/', 0.65, 120, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_murphy_20260806061500_121', 'ent_bobby-murphy', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bobby Murphy mentioned in centralmaine.com', 'Bobby Murphy mentioned in centralmaine.com', 'src_gdelt',
   'https://www.centralmaine.com/2026/08/05/hearts-of-pine-score-in-second-half-to-earn-tie-in-final-friendly-of-season/', 0.65, 121, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260806061500_121', 'ent_al-gore', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in newsbusters.org', 'Al Gore mentioned in newsbusters.org', 'src_gdelt',
   'https://www.newsbusters.org/blogs/nb/noel-sheppard/2010/01/15/weather-channel-founders-global-warming-other-side-airs-san-diego', 0.65, 121, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260806063000_122', 'ent_albert-einstein', '2026-08-06', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in scroll.in', 'Albert Einstein mentioned in scroll.in', 'src_gdelt',
   'https://scroll.in/article/1094137/can-the-indian-knowledge-systems-be-defended-from-pseudoscience', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260806063000_122', 'ent_britney-spears', '2026-08-06', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in smh.com.au', 'Britney Spears mentioned in smh.com.au', 'src_gdelt',
   'https://www.smh.com.au/culture/celebrity/perez-hilton-is-in-hospital-following-an-alarming-livestream-so-what-actually-happened-20260806-p60lw5.html', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260806063000_122', 'ent_babe-ruth', '2026-08-06', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in nny360.com', 'Babe Ruth mentioned in nny360.com', 'src_gdelt',
   'https://www.nny360.com/news/jeffersoncounty/uncle-sam-boat-tours-celebrates-100-years-on-the-st-lawrence-river/article_0db38a8c-ace7-51b3-8e60-df343c3e307c.html', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260806063000_122', 'ent_bill-gates', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in armstrongeconomics.com', 'Bill Gates mentioned in armstrongeconomics.com', 'src_gdelt',
   'https://www.armstrongeconomics.com/world-news/corruption/the-water-wars-have-begun/', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260806063000_122', 'ent_ben-affleck', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in bostonglobe.com', 'Ben Affleck mentioned in bostonglobe.com', 'src_gdelt',
   'https://www.bostonglobe.com/2026/08/05/metro/legendary-cambridge-teacher-larry-aaronson-dies-at-85/', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260806063000_122', 'ent_andrew-jackson', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in foxwilmington.com', 'Andrew Jackson mentioned in foxwilmington.com', 'src_gdelt',
   'https://foxwilmington.com/trump-has-become-americas-most-targeted-leader-facing-threats-every-few-months/', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260806063000_122', 'ent_britney-spears', '2026-08-06', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in theage.com.au', 'Britney Spears mentioned in theage.com.au', 'src_gdelt',
   'https://www.theage.com.au/culture/celebrity/perez-hilton-is-in-hospital-following-an-alarming-livestream-so-what-actually-happened-20260806-p60lw5.html', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260806063000_122', 'ent_britney-spears', '2026-08-06', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in watoday.com.au', 'Britney Spears mentioned in watoday.com.au', 'src_gdelt',
   'https://www.watoday.com.au/culture/celebrity/perez-hilton-is-in-hospital-following-an-alarming-livestream-so-what-actually-happened-20260806-p60lw5.html', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260806063000_122', 'ent_audrey-hepburn', '2026-08-06', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in thestar.com.my', 'Audrey Hepburn mentioned in thestar.com.my', 'src_gdelt',
   'https://www.thestar.com.my/aseanplus/aseanplus-news/2026/08/06/comment-bruce-lee-built-a-cultural-bridge-that-politics-cannot-break', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260806063000_122', 'ent_bruce-lee', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in thestar.com.my', 'Bruce Lee mentioned in thestar.com.my', 'src_gdelt',
   'https://www.thestar.com.my/aseanplus/aseanplus-news/2026/08/06/comment-bruce-lee-built-a-cultural-bridge-that-politics-cannot-break', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260806063000_122', 'ent_benjamin-franklin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in scroll.in', 'Benjamin Franklin mentioned in scroll.in', 'src_gdelt',
   'https://scroll.in/article/1094242/i-was-free-to-move-about-as-i-chose-when-rabindranath-tagore-visited-the-himalayas-as-a-boy', 0.65, 122, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260806064500_123', 'ent_britney-spears', '2026-08-06', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in brisbanetimes.com.au', 'Britney Spears mentioned in brisbanetimes.com.au', 'src_gdelt',
   'https://www.brisbanetimes.com.au/culture/celebrity/perez-hilton-is-in-hospital-following-an-alarming-livestream-so-what-actually-happened-20260806-p60lw5.html', 0.65, 123, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_johnson_20260806064500_123', 'ent_andrew-johnson', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Johnson mentioned in northdallasgazette.com', 'Andrew Johnson mentioned in northdallasgazette.com', 'src_gdelt',
   'https://northdallasgazette.com/2026/08/05/no-more-broken-promises-to-black-america/', 0.65, 123, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260806064500_123', 'ent_caitlin-clark', '2026-08-06', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in townhall.com', 'Caitlin Clark mentioned in townhall.com', 'src_gdelt',
   'https://townhall.com/columnists/alanjosephbauer/2026/08/06/we-are-the-losers-my-friend-n2680693', 0.65, 123, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260806064500_123', 'ent_benjamin-franklin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in townhall.com', 'Benjamin Franklin mentioned in townhall.com', 'src_gdelt',
   'https://townhall.com/columnists/marklewis/2026/08/06/it-buys-votes-it-buys-votes-it-buys-votes-n2680754', 0.65, 123, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260806064500_123', 'ent_caitlin-clark', '2026-08-06', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in townhall.com', 'Caitlin Clark mentioned in townhall.com', 'src_gdelt',
   'https://townhall.com/news/mattvespa/2026/08/06/jana-shortal-goes-bananas-after-outkicks-clay-travis-said-this-about-the-wnba-n2680695', 0.65, 123, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260806071500_125', 'ent_melania-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in ibtimes.com', 'Melania Trump mentioned in ibtimes.com', 'src_gdelt',
   'https://jp.ibtimes.com/melania-trumps-senior-aide-claims-she-most-consequential-first-lady-history-today-103413', 0.65, 125, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260806071500_125', 'ent_buddy-holly', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in noise11.com', 'Buddy Holly mentioned in noise11.com', 'src_gdelt',
   'https://www.noise11.com/news/beatlesfest-bathurst-2026-extra-tickets-20260806', 0.65, 125, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260806073000_126', 'ent_blake-shelton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in kicks99.com', 'Blake Shelton mentioned in kicks99.com', 'src_gdelt',
   'https://kicks99.com/2026/08/06/this-day-in-country-history-august-6-2/', 0.65, 126, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260806073000_126', 'ent_blake-shelton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in 995qyk.com', 'Blake Shelton mentioned in 995qyk.com', 'src_gdelt',
   'https://995qyk.com/2026/08/06/this-day-in-country-history-august-6-2/', 0.65, 126, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260806073000_126', 'ent_aaron-rodgers', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in yardbarker.com', 'Aaron Rodgers mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/nfl/articles/aaron_rodgers_gets_shut_down_by_dr_faucis_attorney/s1_127_44140349', 0.65, 126, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260806073000_126', 'ent_brad-pitt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in en.tempo.co', 'Brad Pitt mentioned in en.tempo.co', 'src_gdelt',
   'https://en.tempo.co/read/2116826/billie-eilishs-the-bell-jar-movie-first-look-cast-and-release-updates', 0.65, 126, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260806073000_126', 'ent_andy-warhol', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in wdhafm.com', 'Andy Warhol mentioned in wdhafm.com', 'src_gdelt',
   'https://wdhafm.com/2026/08/06/this-day-in-rock-history-august-6-2/', 0.65, 126, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260806073000_126', 'ent_billy-joel', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in wdhafm.com', 'Billy Joel mentioned in wdhafm.com', 'src_gdelt',
   'https://wdhafm.com/2026/08/06/this-day-in-rock-history-august-6-2/', 0.65, 126, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bette_davis_20260806074500_127', 'ent_bette-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bette Davis mentioned in ipowerrichmond.com', 'Bette Davis mentioned in ipowerrichmond.com', 'src_gdelt',
   'https://ipowerrichmond.com/4571235/keke-palmer-whoopi-goldberg-podcast/', 0.65, 127, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260806074500_127', 'ent_blake-lively', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in geo.tv', 'Blake Lively mentioned in geo.tv', 'src_gdelt',
   'https://www.geo.tv/latest/676395-blake-lively-finds-new-focus-amid-justin-baldoni-legal-drama', 0.65, 127, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260806074500_127', 'ent_axl-rose', '2026-08-06', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in gqindia.com', 'Axl Rose mentioned in gqindia.com', 'src_gdelt',
   'https://www.gqindia.com/content/fred-again-the-chainsmokers-and-other-international-artists-performing-in-india', 0.65, 127, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260806080000_128', 'ent_andy-warhol', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in wror.com', 'Andy Warhol mentioned in wror.com', 'src_gdelt',
   'https://wror.com/2026/08/06/this-day-in-rock-history-august-6-2/', 0.65, 128, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260806080000_128', 'ent_billy-joel', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in wror.com', 'Billy Joel mentioned in wror.com', 'src_gdelt',
   'https://wror.com/2026/08/06/this-day-in-rock-history-august-6-2/', 0.65, 128, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260806080000_128', 'ent_albert-einstein', '2026-08-06', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in indiatimes.com', 'Albert Einstein mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/etimes/trending/we-will-always-need-stories-that-refuse-to-let-hiroshima-end/articleshow/132986885.cms', 0.65, 128, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260806080000_128', 'ent_alexander-hamilton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Austin Bay''s On PointScott Bessent''s Money Ammo (Alexander Hamilton mentioned)', 'Austin Bay''s On PointScott Bessent''s Money Ammo', 'src_gdelt',
   'http://www.strategypage.com/on_point/20260805231517.aspx', 0.65, 128, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260806080000_128', 'ent_alia-bhatt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in indiatimes.com', 'Alia Bhatt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/hindi/bollywood/news/deepika-padukones-love-war-cameo-fans-speculate-special-appearance-in-sanjay-leela-bhansalis-film-fact-check/articleshow/132988311.cms', 0.65, 128, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260806081500_129', 'ent_bruce-springsteen', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in wdtimes.com', 'Bruce Springsteen mentioned in wdtimes.com', 'src_gdelt',
   'http://www.wdtimes.com/news/national/ap-trending-summarybrief-at-2-11-a-m-edt/article_1135e77d-fcf8-590a-80ca-247c26ebf313.html', 0.65, 129, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adena_friedman_20260806081500_129', 'ent_adena-friedman', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adena Friedman mentioned in malaysiasun.com', 'Adena Friedman mentioned in malaysiasun.com', 'src_gdelt',
   'http://www.malaysiasun.com/news/279224505/token2049-singapore-returns-as-the-largest-industry-gathering-of-the-year', 0.65, 129, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amy_hood_20260806081500_129', 'ent_amy-hood', '2026-08-06', 2026, 'public_appearance', 'news',
   'Amy Hood mentioned in fool.com', 'Amy Hood mentioned in fool.com', 'src_gdelt',
   'https://www.fool.com/investing/2026/08/06/amazon-alphabet-and-microsoft-all-delivered-soaring-cloud-growth-thanks-to-ai-here-s-the-1-i-d-buy-right-now/?source=iedfolrf0000001', 0.65, 129, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260806081500_129', 'ent_aaron-rodgers', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in bradfordera.com', 'Aaron Rodgers mentioned in bradfordera.com', 'src_gdelt',
   'https://www.bradfordera.com/2026/08/05/five-things-learned-first-week-steelers-training-camp/', 0.65, 129, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260806081500_129', 'ent_andy-warhol', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in ilovebobfm.com', 'Andy Warhol mentioned in ilovebobfm.com', 'src_gdelt',
   'https://ilovebobfm.com/2026/08/06/this-day-in-rock-history-august-6-2/', 0.65, 129, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260806081500_129', 'ent_billy-joel', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in ilovebobfm.com', 'Billy Joel mentioned in ilovebobfm.com', 'src_gdelt',
   'https://ilovebobfm.com/2026/08/06/this-day-in-rock-history-august-6-2/', 0.65, 129, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amy_hood_20260806081500_129', 'ent_amy-hood', '2026-08-06', 2026, 'public_appearance', 'news',
   'Amy Hood mentioned in fool.com', 'Amy Hood mentioned in fool.com', 'src_gdelt',
   'https://www.fool.com/investing/2026/08/06/amazon-alphabet-and-microsoft-all-delivered-soaring-cloud-growth-thanks-to-ai-here-s-the-1-i-d-buy-right-now/', 0.65, 129, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260806083000_130', 'ent_andy-warhol', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in myq105.com', 'Andy Warhol mentioned in myq105.com', 'src_gdelt',
   'https://myq105.com/2026/08/06/this-day-in-rock-history-august-6-2/', 0.65, 130, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260806083000_130', 'ent_albert-einstein', '2026-08-06', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in yourtango.com', 'Albert Einstein mentioned in yourtango.com', 'src_gdelt',
   'https://www.yourtango.com/self/people-mentally-sharp-no-common-sense-usually-say-phrases', 0.65, 130, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adena_friedman_20260806083000_130', 'ent_adena-friedman', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adena Friedman mentioned in sina.com.hk', 'Adena Friedman mentioned in sina.com.hk', 'src_gdelt',
   'https://portal.sina.com.hk/finance/finance-prnewswire/prnasia/2026/08/06/1877673/token2049-singapore-returns-as-the-largest-industry-gathering-of-the-year/', 0.65, 130, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_harrison_20260806084500_131', 'ent_anna-harrison', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anna Harrison mentioned in smartcompany.com.au', 'Anna Harrison mentioned in smartcompany.com.au', 'src_gdelt',
   'https://www.smartcompany.com.au/partner-content/businesses-we-love-five-business-leaders-on-the-hacks-that-have-revolutionised-their-work-week/', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adena_friedman_20260806084500_131', 'ent_adena-friedman', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adena Friedman mentioned in australiannews.net', 'Adena Friedman mentioned in australiannews.net', 'src_gdelt',
   'http://www.australiannews.net/news/279224505/token2049-singapore-returns-as-the-largest-industry-gathering-of-the-year', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adena_friedman_20260806084500_131', 'ent_adena-friedman', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adena Friedman mentioned in manilatimes.net', 'Adena Friedman mentioned in manilatimes.net', 'src_gdelt',
   'https://www.manilatimes.net/2026/08/06/tmt-newswire/pr-newswire/token2049-singapore-returns-as-the-largest-industry-gathering-of-the-year/2399712', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260806084500_131', 'ent_benny-goodman', '2026-08-06', 2026, 'public_appearance', 'news',
   'Benny Goodman mentioned in standardspeaker.com', 'Benny Goodman mentioned in standardspeaker.com', 'src_gdelt',
   'https://www.standardspeaker.com/2026/08/06/community-digest-aug-6-2026-2/', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260806084500_131', 'ent_melania-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in lbc.co.uk', 'Melania Trump mentioned in lbc.co.uk', 'src_gdelt',
   'https://www.lbc.co.uk/article/new-mexico-doj-us-government-epstein-5Hjdfgb_2/', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260806084500_131', 'ent_al-gore', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in newsbusters.org', 'Al Gore mentioned in newsbusters.org', 'src_gdelt',
   'https://newsbusters.org/blogs/nb/tom-blumer/2013/03/03/aps-bauer-bitterly-covers-scott-walkers-exoneration-ignores', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260806084500_131', 'ent_al-pacino', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in radiotimes.com', 'Al Pacino mentioned in radiotimes.com', 'src_gdelt',
   'https://www.radiotimes.com/movies/worst-films-ever-razzies-list-comment/', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260806084500_131', 'ent_ben-affleck', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in radiotimes.com', 'Ben Affleck mentioned in radiotimes.com', 'src_gdelt',
   'https://www.radiotimes.com/movies/worst-films-ever-razzies-list-comment/', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alan_shepard_20260806084500_131', 'ent_alan-shepard', '2026-08-06', 2026, 'public_appearance', 'news',
   'Rocketdyne Officially Reborn As New Company (Alan Shepard mentioned)', 'Rocketdyne Officially Reborn As New Company', 'src_gdelt',
   'https://aviationweek.com/space/commercial-space/rocketdyne-officially-reborn-new-company', 0.65, 131, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260806090000_132', 'ent_ivanka-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in indiatimes.com', 'Ivanka Trump mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/life-style/parenting/moments/from-mark-zuckerberg-to-elon-musk-why-some-of-the-worlds-richest-parents-want-their-children-to-learn-mandarin/articleshow/132991924.cms', 0.65, 132, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260806090000_132', 'ent_aaron-burr', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Burr mentioned in thejournal.ie', 'Aaron Burr mentioned in thejournal.ie', 'src_gdelt',
   'https://www.thejournal.ie/hamilton-star-leslie-odom-jr-announces-solo-show-in-dublin-and-belfast-7122676-Aug2026/', 0.65, 132, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260806091500_133', 'ent_al-pacino', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in austinchronicle.com', 'Al Pacino mentioned in austinchronicle.com', 'src_gdelt',
   'https://www.austinchronicle.com/columns/qmmunity-pride-state-of-mind/', 0.65, 133, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260806091500_133', 'ent_barbra-streisand', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in smh.com.au', 'Barbra Streisand mentioned in smh.com.au', 'src_gdelt',
   'https://www.smh.com.au/lifestyle/life-and-relationships/jacob-thought-he-was-served-a-death-sentence-at-24-this-drug-changed-everything-20260701-p60bpz.html', 0.65, 133, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_assata_shakur_20260806091500_133', 'ent_assata-shakur', '2026-08-06', 2026, 'public_appearance', 'news',
   'Assata Shakur mentioned in amsterdamnews.com', 'Assata Shakur mentioned in amsterdamnews.com', 'src_gdelt',
   'https://amsterdamnews.com/news/2026/08/06/cubas-gloria-rolando-is-making-a-film-about-the-buffalo-soldiers/', 0.65, 133, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260806091500_133', 'ent_brad-pitt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in leadership.ng', 'Brad Pitt mentioned in leadership.ng', 'src_gdelt',
   'https://leadership.ng/angelina-jolie-rejects-brad-pitts-demand-for-past-financial-records-in-ongoing-court-dispute/', 0.65, 133, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260806091500_133', 'ent_angela-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in amsterdamnews.com', 'Angela Davis mentioned in amsterdamnews.com', 'src_gdelt',
   'https://amsterdamnews.com/news/2026/08/06/betye-saar-a-brilliant-artist-passes-at-99/', 0.65, 133, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260806091500_133', 'ent_bing-crosby', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in amsterdamnews.com', 'Bing Crosby mentioned in amsterdamnews.com', 'src_gdelt',
   'https://amsterdamnews.com/news/2026/08/06/chantels-mourn-passing-of-arlene-smith/', 0.65, 133, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260806093000_134', 'ent_barbra-streisand', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in theage.com.au', 'Barbra Streisand mentioned in theage.com.au', 'src_gdelt',
   'https://www.theage.com.au/lifestyle/life-and-relationships/jacob-thought-he-was-served-a-death-sentence-at-24-this-drug-changed-everything-20260701-p60bpz.html', 0.65, 134, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260806093000_134', 'ent_alicia-keys', '2026-08-06', 2026, 'public_appearance', 'news',
   'Soul Fixx - Fri August 07, 2026 - The Woodlands Texas Events Calendar on Woodlands Online (Alicia Keys mentioned)', 'Soul Fixx - Fri August 07, 2026 - The Woodlands Texas Events Calendar on Woodlands Online', 'src_gdelt',
   'https://www.woodlandsonline.com/evps/evitem.cfm?evid=207034', 0.65, 134, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260806093000_134', 'ent_barbra-streisand', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in brisbanetimes.com.au', 'Barbra Streisand mentioned in brisbanetimes.com.au', 'src_gdelt',
   'https://www.brisbanetimes.com.au/lifestyle/life-and-relationships/jacob-thought-he-was-served-a-death-sentence-at-24-this-drug-changed-everything-20260701-p60bpz.html', 0.65, 134, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260806093000_134', 'ent_bill-gates', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in cnn.com', 'Bill Gates mentioned in cnn.com', 'src_gdelt',
   'https://www.cnn.com/2026/08/06/politics/epstein-congressional-probe-comer-frustrations', 0.65, 134, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260806094500_135', 'ent_bill-gates', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in themarketsdaily.com', 'Bill Gates mentioned in themarketsdaily.com', 'src_gdelt',
   'https://www.themarketsdaily.com/2026/08/06/kapitalo-investimentos-ltda-sells-32652-shares-of-microsoft-corporation-msft.html', 0.65, 135, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260806094500_135', 'ent_andrew-jackson', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in theintercept.com', 'Andrew Jackson mentioned in theintercept.com', 'src_gdelt',
   'https://theintercept.com/2026/08/05/trump-colonial-extermination-asymmetric-warfare/', 0.65, 135, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adena_friedman_20260806094500_135', 'ent_adena-friedman', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adena Friedman mentioned in vietnamtribune.com', 'Adena Friedman mentioned in vietnamtribune.com', 'src_gdelt',
   'http://www.vietnamtribune.com/news/279224505/token2049-singapore-returns-as-the-largest-industry-gathering-of-the-year', 0.65, 135, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260806100000_136', 'ent_buddy-holly', '2026-08-06', 2026, 'public_appearance', 'news',
   'Three stars Tribute Day Friday at Surf ballroom (Buddy Holly mentioned)', 'Three stars Tribute Day Friday at Surf ballroom', 'src_gdelt',
   'https://www.messengernews.net/news/local-news/2026/08/three-stars-tribute-day-friday-at-surf-ballroom/', 0.65, 136, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260806100000_136', 'ent_alexander-graham-bell', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in timescall.com', 'Alexander Graham Bell mentioned in timescall.com', 'src_gdelt',
   'https://www.timescall.com/2026/08/06/letters-heres-the-truth-about-truth-api/', 0.65, 136, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260806100000_136', 'ent_al-gore', '2026-08-06', 2026, 'public_appearance', 'news',
   'Strong trio put nation, not party first (Al Gore mentioned)', 'Strong trio put nation, not party first', 'src_gdelt',
   'https://www.observertoday.com/opinion/commentary/2026/08/strong-trio-put-nation-not-party-first/', 0.65, 136, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260806101500_137', 'ent_blake-shelton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in wkml.com', 'Blake Shelton mentioned in wkml.com', 'src_gdelt',
   'https://wkml.com/2026/08/06/this-day-in-country-history-august-6-2/', 0.65, 137, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260806103000_138', 'ent_amelia-earhart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Amelia Earhart mentioned in nevadabusiness.com', 'Amelia Earhart mentioned in nevadabusiness.com', 'src_gdelt',
   'https://nevadabusiness.com/2026/08/nevada-women-to-watch-2026/', 0.65, 138, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260806103000_138', 'ent_bruno-mars', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in femalefirst.co.uk', 'Bruno Mars mentioned in femalefirst.co.uk', 'src_gdelt',
   'http://www.femalefirst.co.uk/music/musicnews/karol-recruits-drake-bruno-mars-new-album-1448640.html', 0.65, 138, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260806103000_138', 'ent_alexander-hamilton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in finanznachrichten.de', 'Alexander Hamilton mentioned in finanznachrichten.de', 'src_gdelt',
   'https://www.finanznachrichten.de/nachrichten-2026-08/69235542-hamilton-reserve-bank-see-capital-hamilton-ltd-enter-into-marketing-referral-arrangement-004.htm', 0.65, 138, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260806103000_138', 'ent_angela-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in wkar.org', 'Angela Davis mentioned in wkar.org', 'src_gdelt',
   'https://www.wkar.org/podcast/inside-the-arts/2026-08-06/renegade-theatre-festival-returns-to-lansing-with-new-name-new-focus-and-new-locations', 0.65, 138, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260806104500_139', 'ent_buffalo-bill', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in whatsonstage.com', 'Buffalo Bill mentioned in whatsonstage.com', 'src_gdelt',
   'https://www.whatsonstage.com/news/the-silence-of-the-lambs-stage-play-at-curve-and-on-tour-review_1728725/', 0.65, 139, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260806110000_140', 'ent_brian-chesky', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in boredpanda.com', 'Brian Chesky mentioned in boredpanda.com', 'src_gdelt',
   'https://2.boredpanda.com/funny-airbnb-fails/', 0.65, 140, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260806110000_140', 'ent_brett-kavanaugh', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in yahoo.com', 'Brett Kavanaugh mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/she-even-allowed-doing-inside-084500438.html', 0.65, 140, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260806111500_141', 'ent_blake-shelton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in cincinnatimagazine.com', 'Blake Shelton mentioned in cincinnatimagazine.com', 'src_gdelt',
   'https://www.cincinnatimagazine.com/article/cincinnati-weekend-picks-august-7-9/', 0.65, 141, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260806111500_141', 'ent_aaron-burr', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Burr mentioned in wiov.com', 'Aaron Burr mentioned in wiov.com', 'src_gdelt',
   'https://www.wiov.com/2026/08/06/thursday-august-6-2026/', 0.65, 141, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260806111500_141', 'ent_albert-einstein', '2026-08-06', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in latimes.com', 'Albert Einstein mentioned in latimes.com', 'src_gdelt',
   'https://www.latimes.com/eta/travel-destinations/international/story/greece-athens-crete-santorini-kazantzakis-itinerary', 0.65, 141, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benedict_arnold_20260806113000_142', 'ent_benedict-arnold', '2026-08-06', 2026, 'public_appearance', 'news',
   'Benedict Arnold mentioned in courant.com', 'Benedict Arnold mentioned in courant.com', 'src_gdelt',
   'https://www.courant.com/2026/08/06/ct-festival-will-feature-drone-show-vessel-tours-and-salute-to-america250/', 0.65, 142, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260806113000_142', 'ent_angela-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in publishingperspectives.com', 'Angela Davis mentioned in publishingperspectives.com', 'src_gdelt',
   'https://publishingperspectives.com/2026/08/brazils-record-breaking-flip-festival-shows-why-literary-festivals-matter/', 0.65, 142, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260806113000_142', 'ent_amelia-earhart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Amelia Earhart mentioned in nypost.com', 'Amelia Earhart mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/06/lifestyle/search-for-amelia-earharts-long-lost-plane-reignites-with-ambitious-new-expedition/', 0.65, 142, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260806113000_142', 'ent_anna-wintour', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in pagesix.com', 'Anna Wintour mentioned in pagesix.com', 'src_gdelt',
   'https://pagesix.com/2026/08/06/celebrity-news/why-anna-wintour-is-obsessed-with-john-galliano-even-if-met-gala-honors-makes-a-listers-cancel/', 0.65, 142, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260806114500_143', 'ent_alice-cooper', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in standard.co.uk', 'Alice Cooper mentioned in standard.co.uk', 'src_gdelt',
   'https://www.standard.co.uk/lifestyle/inside-this-weeks-london-standard-b1292524.html', 0.65, 143, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260806120000_144', 'ent_alia-bhatt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in bollywoodhungama.com', 'Alia Bhatt mentioned in bollywoodhungama.com', 'src_gdelt',
   'https://www.bollywoodhungama.com/news/bollywood/kroll-celebrity-brand-valuation-2025-nearly-half-of-the-top-25-are-actresses-no-south-male-star-in-rankings/', 0.65, 144, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260806120000_144', 'ent_buffalo-bill', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in kingfm.com', 'Buffalo Bill mentioned in kingfm.com', 'src_gdelt',
   'https://kingfm.com/ixp/10/p/bills-uniform-schedule-2026/', 0.65, 144, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260806120000_144', 'ent_billie-holiday', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in rte.ie', 'Billie Holiday mentioned in rte.ie', 'src_gdelt',
   'https://www.rte.ie/brainstorm/2026/0806/1585659-bill-fuller-kerry-ireland-music-venues-ballrooms-promoter-profile-film/', 0.65, 144, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_college_20260806120000_144', 'plc_boston-college', '2026-08-06', 2026, 'public_appearance', 'news',
   'Boston College mentioned in webwire.com', 'Boston College mentioned in webwire.com', 'src_gdelt',
   'https://www.webwire.com/ViewPressRel.asp?aId=358571', 0.65, 144, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260806120000_144', 'plc_brown-university', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brown University mentioned in webwire.com', 'Brown University mentioned in webwire.com', 'src_gdelt',
   'https://www.webwire.com/ViewPressRel.asp?aId=358571', 0.65, 144, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_hinn_20260806121500_145', 'ent_benny-hinn', '2026-08-06', 2026, 'public_appearance', 'news',
   '''Answered  Prayers!''- Kenyans React To Charlene Ruto''s Engagement Leak &#x2013; Ghafla! (Benny Hinn mentioned)', '''Answered  Prayers!''- Kenyans React To Charlene Ruto''s Engagement Leak &#x2013; Ghafla!', 'src_gdelt',
   'https://www.ghafla.co.ke/answered-prayers-kenyans-react-to-charlene-rutos-engagement-leak/', 0.65, 145, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260806121500_145', 'ent_aaron-rodgers', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in thebiglead.com', 'Aaron Rodgers mentioned in thebiglead.com', 'src_gdelt',
   'https://www.thebiglead.com/nfl-players-under-pressure-2026-season-jalen-hurts-bryce-young/', 0.65, 145, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_hinn_20260806121500_145', 'ent_benny-hinn', '2026-08-06', 2026, 'public_appearance', 'news',
   'Social Media Reacts Over Leaked Invitation To Charlene Ruto''s Traditional Engagement &#x2013; Ghafla! (Benny Hinn mentioned)', 'Social Media Reacts Over Leaked Invitation To Charlene Ruto''s Traditional Engagement &#x2013; Ghafla!', 'src_gdelt',
   'https://www.ghafla.co.ke/social-media-reacts-over-leaked-invitation-to-charlene-rutos-traditional-engagement/', 0.65, 145, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260806123000_146', 'ent_axl-rose', '2026-08-06', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in 961theeagle.com', 'Axl Rose mentioned in 961theeagle.com', 'src_gdelt',
   'https://961theeagle.com/ixp/295/p/axl-rose-ac-dc-doubts/', 0.65, 146, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260806123000_146', 'ent_axl-rose', '2026-08-06', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in wblm.com', 'Axl Rose mentioned in wblm.com', 'src_gdelt',
   'https://wblm.com/ixp/295/p/axl-rose-ac-dc-doubts/', 0.65, 146, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260806123000_146', 'ent_andrew-carnegie', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in hawaiitribune-herald.com', 'Andrew Carnegie mentioned in hawaiitribune-herald.com', 'src_gdelt',
   'https://www.hawaiitribune-herald.com/2026/08/06/opinion/elon-musk-surprisingly-doesnt-understand-abundance/', 0.65, 146, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260806123000_146', 'ent_brian-de-palma', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in gamesradar.com', 'Brian De Palma mentioned in gamesradar.com', 'src_gdelt',
   'https://www.gamesradar.com/entertainment/dc-movies/clayface-director-says-evil-dead-helmer-sam-raimis-extreme-and-ridiculous-style-of-horror-influenced-the-upcoming-dc-movie/', 0.65, 146, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260806123000_146', 'ent_benjamin-franklin', '2026-08-06', 2026, 'public_appearance', 'news',
   'From Tots to Teens: The American Founders, Virtue, and Raising Independent Children (Benjamin Franklin mentioned)', 'From Tots to Teens: The American Founders, Virtue, and Raising Independent Children', 'src_gdelt',
   'https://www.theepochtimes.com/bright/from-tots-to-teens-the-american-founders-virtue-and-raising-independent-children-6056483', 0.65, 146, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260806123000_146', 'ent_alfred-hitchcock', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in variety.com', 'Alfred Hitchcock mentioned in variety.com', 'src_gdelt',
   'https://variety.com/2026/awards/awards/james-gray-ai-locarno-award-paper-tiger-scarlett-johansson-1236828875/', 0.65, 146, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260806124500_147', 'ent_barry-sanders', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in sbnation.com', 'Barry Sanders mentioned in sbnation.com', 'src_gdelt',
   'https://www.sbnation.com/nfl/1123573/luke-kuechly-nfl-hall-of-fame-best-moments-carolina-panthers', 0.65, 147, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260806124500_147', 'ent_benjamin-franklin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in vanguardngr.com', 'Benjamin Franklin mentioned in vanguardngr.com', 'src_gdelt',
   'https://www.vanguardngr.com/2026/08/2027-paper-certificates-dont-guarantee-good-leadership-obidike-defends-tinubu/', 0.65, 147, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260806124500_147', 'ent_andrew-lloyd-webber', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in hellomagazine.com', 'Andrew Lloyd Webber mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/royalty/916706/prince-edward-ex-reveals-unusual-two-wives-remark-before-duchess-sophie/', 0.65, 147, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260806124500_147', 'ent_axl-rose', '2026-08-06', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in 1019therock.com', 'Axl Rose mentioned in 1019therock.com', 'src_gdelt',
   'https://1019therock.com/axl-rose-ac-dc-doubts/', 0.65, 147, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260806124500_147', 'ent_alexander-hamilton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in wlos.com', 'Alexander Hamilton mentioned in wlos.com', 'src_gdelt',
   'https://wlos.com/news/america-250/scottish-heritage-history-culture-identity-western-north-carolina-franklin-tartans-museum-heritage-center-wnc-scots-traditions-immigration-scotland', 0.65, 147, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260806124500_147', 'ent_axl-rose', '2026-08-06', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in awesome98.com', 'Axl Rose mentioned in awesome98.com', 'src_gdelt',
   'https://awesome98.com/ixp/295/p/axl-rose-ac-dc-doubts/', 0.65, 147, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260806131500_149', 'ent_alfred-hitchcock', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in radiotimes.com', 'Alfred Hitchcock mentioned in radiotimes.com', 'src_gdelt',
   'https://www.radiotimes.com/movies/eli-roth-ice-cream-man-review/', 0.65, 149, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260806131500_149', 'ent_alexander-graham-bell', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in denverpost.com', 'Alexander Graham Bell mentioned in denverpost.com', 'src_gdelt',
   'https://www.denverpost.com/2026/08/06/centurylink-copper-landlines-terminating/', 0.65, 149, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260806133000_150', 'ent_black-hawk', '2026-08-06', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in radaronline.com', 'Black Hawk mentioned in radaronline.com', 'src_gdelt',
   'https://radaronline.com/p/helicopter-marine-one-trump-jet-washington-air-traffic-control-concerns/', 0.65, 150, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260806133000_150', 'ent_anna-wintour', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in keyt.com', 'Anna Wintour mentioned in keyt.com', 'src_gdelt',
   'https://keyt.com/lifestyle/entertainment/cnn-style/2026/08/06/the-mets-galliano-show-is-already-controversial-can-it-be-done-right/', 0.65, 150, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260806133000_150', 'ent_alexander-graham-bell', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in canoncitydailyrecord.com', 'Alexander Graham Bell mentioned in canoncitydailyrecord.com', 'src_gdelt',
   'https://www.canoncitydailyrecord.com/2026/08/06/centurylink-copper-landlines-terminating/', 0.65, 150, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260806134500_151', 'ent_barry-sanders', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in dailylocal.com', 'Barry Sanders mentioned in dailylocal.com', 'src_gdelt',
   'https://www.dailylocal.com/2026/08/06/eagles-saquon-barkley-was-inspired-by-how-another-great-running-back-carried-himself/', 0.65, 151, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260806134500_151', 'ent_alia-bhatt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in moneycontrol.com', 'Alia Bhatt mentioned in moneycontrol.com', 'src_gdelt',
   'https://www.moneycontrol.com/entertainment/is-deepika-padukone-making-a-cameo-in-sanjay-leela-bhansali-s-love-war-viral-post-sparks-buzz-article-13996783.html', 0.65, 151, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260806140000_152', 'ent_anna-wintour', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in cnn.com', 'Anna Wintour mentioned in cnn.com', 'src_gdelt',
   'https://www.cnn.com/2026/08/06/style/met-gala-john-galliano', 0.65, 152, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobbi_brown_20260806140000_152', 'ent_bobbi-brown', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bobbi Brown mentioned in today.com', 'Bobbi Brown mentioned in today.com', 'src_gdelt',
   'https://www.today.com/shop/nordstrom-anniversary-sale-2026-rcna353324', 0.65, 152, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260806140000_152', 'ent_alicia-keys', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in hypebot.com', 'Alicia Keys mentioned in hypebot.com', 'src_gdelt',
   'https://www.hypebot.com/live-music-industry-news-20/', 0.65, 152, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260806140000_152', 'ent_barry-bonds', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in talkingpointsmemo.com', 'Barry Bonds mentioned in talkingpointsmemo.com', 'src_gdelt',
   'https://talkingpointsmemo.com/cafe/we-actually-know-exactly-how-we-can-address-trumps-corruption-spree', 0.65, 152, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betsy_ross_20260806140000_152', 'ent_betsy-ross', '2026-08-06', 2026, 'public_appearance', 'news',
   'Betsy Ross mentioned in auroraadvertiser.net', 'Betsy Ross mentioned in auroraadvertiser.net', 'src_gdelt',
   'https://auroraadvertiser.net/hello-my-name-is/', 0.65, 152, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260806140000_152', 'ent_arnold-schwarzenegger', '2026-08-06', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in screenrant.com', 'Arnold Schwarzenegger mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/planet-of-the-apes-franchise-peter-jackson-not-reboot/', 0.65, 152, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260806140000_152', 'ent_alexander-hamilton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in patriotpost.us', 'Alexander Hamilton mentioned in patriotpost.us', 'src_gdelt',
   'https://patriotpost.us/opinion/129753-scott-bessents-money-ammo-2026-08-06', 0.65, 152, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260806141500_153', 'ent_bruno-mars', '2026-08-06', 2026, 'public_appearance', 'news',
   'Karol G Unveils Upcoming Album Tracklist Featuring Major Surprises: Drake and Bruno Mars! (Bruno Mars mentioned)', 'Karol G Unveils Upcoming Album Tracklist Featuring Major Surprises: Drake and Bruno Mars!', 'src_gdelt',
   'https://www.cubaheadlines.com/articles/337161', 0.65, 153, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260806141500_153', 'ent_black-hawk', '2026-08-06', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in westhawaiitoday.com', 'Black Hawk mentioned in westhawaiitoday.com', 'src_gdelt',
   'https://www.westhawaiitoday.com/2026/08/06/nation-world-news/helicopter-carrying-trump-flies-near-passenger-jet-in-washington-airspace/', 0.65, 153, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buster_keaton_20260806141500_153', 'ent_buster-keaton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buster Keaton mentioned in wemu.org', 'Buster Keaton mentioned in wemu.org', 'src_gdelt',
   'https://www.wemu.org/show/cinema-chat/2026-08-06/cinema-chat-spider-man-brand-new-day-and-the-odyssey-shatter-box-office-records-a-sad-and-beautiful-world-and-sheep-in-the-box-open-in-downtown-ann-arbor', 0.65, 153, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260806141500_153', 'ent_bruno-mars', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in euronews.com', 'Bruno Mars mentioned in euronews.com', 'src_gdelt',
   'https://www.euronews.com/culture/2026/08/06/why-do-so-many-hit-songs-sound-alike-meet-the-gen-alpha-melody', 0.65, 153, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260806143000_154', 'ent_alexander-graham-bell', '2026-08-06', 2026, 'public_appearance', 'news',
   'Hoy, hoy, Brantford to celebrate 150th anniversary of first long-distance phone call (Alexander Graham Bell mentioned)', 'Hoy, hoy, Brantford to celebrate 150th anniversary of first long-distance phone call', 'src_gdelt',
   'https://www.theobserver.ca:443/news/local-news/hoy-hoy-brantford-to-celebrate-150th-anniversary-of-first-long-distance-phone-call/wcm/d7a7009d-2b2f-4d08-96d1-fb8172e8258f', 0.65, 154, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260806144500_155', 'ent_buffalo-bill', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in iheart.com', 'Buffalo Bill mentioned in iheart.com', 'src_gdelt',
   'https://kfab.iheart.com/content/2026-08-06-bills-gardner-johnson-back-at-practice-after-injury/', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260806144500_155', 'ent_buffalo-bill', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in iheart.com', 'Buffalo Bill mentioned in iheart.com', 'src_gdelt',
   'https://newsradio1049.iheart.com/content/2026-08-06-bills-gardner-johnson-back-at-practice-after-injury/', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260806144500_155', 'ent_alexander-graham-bell', '2026-08-06', 2026, 'public_appearance', 'news',
   'Hoy, hoy, Brantford to celebrate 150th anniversary of first long-distance phone call (Alexander Graham Bell mentioned)', 'Hoy, hoy, Brantford to celebrate 150th anniversary of first long-distance phone call', 'src_gdelt',
   'https://www.chathamdailynews.ca/news/local-news/hoy-hoy-brantford-to-celebrate-150th-anniversary-of-first-long-distance-phone-call/wcm/d7a7009d-2b2f-4d08-96d1-fb8172e8258f', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260806144500_155', 'ent_andrew-carnegie', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in dailymail.com', 'Andrew Carnegie mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16033509/Tom-Cruise-Katie-Holmess-nepo-baby-daughter-Suri-Noelle-makes-incredible-acting-debut.html', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260806144500_155', 'ent_andrew-carnegie', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in artnews.com', 'Andrew Carnegie mentioned in artnews.com', 'src_gdelt',
   'https://www.artnews.com/art-news/artists/jonathan-gonzalez-whitney-biennial-carnegie-international-1234794399/', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260806144500_155', 'ent_buffalo-bill', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in iheart.com', 'Buffalo Bill mentioned in iheart.com', 'src_gdelt',
   'https://970kfbx.iheart.com/content/2026-08-06-bills-gardner-johnson-back-at-practice-after-injury/', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260806144500_155', 'ent_barbara-walters', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in dailymail.com', 'Barbara Walters mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16032709/cheri-oteri-breast-cancer-radiation-santa-monica.html', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260806144500_155', 'ent_adam-scott', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in thepeterboroughexaminer.com', 'Adam Scott mentioned in thepeterboroughexaminer.com', 'src_gdelt',
   'https://www.thepeterboroughexaminer.com/news/dr-brandon-jutras-remembered-for-lyme-disease-research/article_954feb56-1c00-53ea-836d-baf7f15704bd.html', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260806144500_155', 'ent_anna-wintour', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in abc17news.com', 'Anna Wintour mentioned in abc17news.com', 'src_gdelt',
   'https://abc17news.com/entertainment/cnn-style/2026/08/06/the-mets-galliano-show-is-already-controversial-can-it-be-done-right/', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260806144500_155', 'ent_babe-ruth', '2026-08-06', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in kfilradio.com', 'Babe Ruth mentioned in kfilradio.com', 'src_gdelt',
   'https://kfilradio.com/ixp/911/p/minnesota-born-mlb-home-run-leaders/', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260806144500_155', 'ent_barry-sanders', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in timesherald.com', 'Barry Sanders mentioned in timesherald.com', 'src_gdelt',
   'https://www.timesherald.com/2026/08/06/eagles-saquon-barkley-was-inspired-by-how-another-great-running-back-carried-himself/', 0.65, 155, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260806150000_156', 'ent_babe-ruth', '2026-08-06', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in nesn.com', 'Babe Ruth mentioned in nesn.com', 'src_gdelt',
   'https://nesn.com/mlb/news/red-sox-accomplish-outrageous-feat-not-seen-1912-world-series-season/a90a58f560b92b3db59f9fc1', 0.65, 156, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260806150000_156', 'ent_barbara-walters', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in scienceblog.com', 'Barbara Walters mentioned in scienceblog.com', 'src_gdelt',
   'https://scienceblog.com/k-nobody-on-earth-is-legally-allowed-to-own-the-moon-and-yet-one-man-claims-to-have-sold-more-than-600-million-acres-of-it/', 0.65, 156, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260806150000_156', 'ent_ivanka-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in worldpoliticsreview.com', 'Ivanka Trump mentioned in worldpoliticsreview.com', 'src_gdelt',
   'https://www.worldpoliticsreview.com/albania-flamingo-revolution-trump-rama/', 0.65, 156, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betty_ford_20260806150000_156', 'ent_betty-ford', '2026-08-06', 2026, 'public_appearance', 'news',
   'Betty Ford mentioned in interviewmagazine.com', 'Betty Ford mentioned in interviewmagazine.com', 'src_gdelt',
   'https://www.interviewmagazine.com/art/aspen-air-festival-miranda-july-tesla-matthew-barney-julie-dash-andy-warhol', 0.65, 156, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benedict_arnold_20260806150000_156', 'ent_benedict-arnold', '2026-08-06', 2026, 'public_appearance', 'news',
   'Benedict Arnold mentioned in t-g.com', 'Benedict Arnold mentioned in t-g.com', 'src_gdelt',
   'http://www.t-g.com/premium/theconversation/stories/1776s-declaration-of-independence-inspired-washingtons-troops-to-fight-against-the-odds-,227606', 0.65, 156, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260806151500_157', 'plc_boston-university', '2026-08-06', 2026, 'public_appearance', 'news',
   'Boston University mentioned in wataugademocrat.com', 'Boston University mentioned in wataugademocrat.com', 'src_gdelt',
   'http://www.wataugademocrat.com/mountaintimes/entertainment/art/julia-carpenter-to-show-animal-portraits-at-the-happy-valley-filling-station-starting-aug-12/article_ff706c26-5339-4c18-8046-c15347416f07.html', 0.65, 157, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260806151500_157', 'ent_andrew-carnegie', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in vox.com', 'Andrew Carnegie mentioned in vox.com', 'src_gdelt',
   'https://www.vox.com/future-perfect/496834/ai-philanthropy-effective-altruism-billionaires', 0.65, 157, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_harrison_20260806151500_157', 'ent_anna-harrison', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anna Harrison mentioned in independent.co.uk', 'Anna Harrison mentioned in independent.co.uk', 'src_gdelt',
   'https://www.independent.co.uk/news/uk/home-news/home-subsidence-uk-heatwave-insurance-climate-change-b3028008.html', 0.65, 157, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260806151500_157', 'ent_andrew-lloyd-webber', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in heraldscotland.com', 'Andrew Lloyd Webber mentioned in heraldscotland.com', 'src_gdelt',
   'https://www.heraldscotland.com/life_style/26430811.read-next-10-summer-book-ideas/', 0.65, 157, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260806153000_158', 'ent_anderson-cooper', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in poynter.org', 'Anderson Cooper mentioned in poynter.org', 'src_gdelt',
   'https://www.poynter.org/reporting-editing/2026/trump-wsj-lawsuit-judge-comments/', 0.65, 158, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260806153000_158', 'ent_alicia-keys', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in hindustantimes.com', 'Alicia Keys mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/lifestyle/brunch/listicle-10-cult-obsessions-that-fizzled-out-in-the-last-decade-101786027165554.html', 0.65, 158, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260806153000_158', 'ent_anderson-cooper', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in poynter.org', 'Anderson Cooper mentioned in poynter.org', 'src_gdelt',
   'https://www.poynter.org/news-release/2026/award-winning-broadcast-journalist-scott-pelley-to-receive-poynter-medal-for-lifetime-achievement-in-journalism/', 0.65, 158, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260806153000_158', 'ent_barry-sanders', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in delcotimes.com', 'Barry Sanders mentioned in delcotimes.com', 'src_gdelt',
   'https://www.delcotimes.com/2026/08/06/eagles-saquon-barkley-was-inspired-by-how-another-great-running-back-carried-himself/', 0.65, 158, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_antonin_scalia_20260806153000_158', 'ent_antonin-scalia', '2026-08-06', 2026, 'public_appearance', 'news',
   'Antonin Scalia mentioned in washingtonexaminer.com', 'Antonin Scalia mentioned in washingtonexaminer.com', 'src_gdelt',
   'https://www.washingtonexaminer.com/restoring-america/patriotism-unity/4673143/american-creed-christian-west-british-settlers/', 0.65, 158, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260806154500_159', 'ent_andrew-young', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in lbc.co.uk', 'Andrew Young mentioned in lbc.co.uk', 'src_gdelt',
   'https://www.lbc.co.uk/article/stephen-bear-jailed-breaching-restraining-order-5HjdfhZ_2/', 0.65, 159, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260806154500_159', 'ent_sachin-tendulkar', '2026-08-06', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in newsx.com', 'Sachin Tendulkar mentioned in newsx.com', 'src_gdelt',
   'https://www.newsx.com/entertainment/shah-rukh-khans-brand-empire-beats-virat-kohli-ranveer-singh-ms-dhoni-and-sachin-tendulkar-brand-values-257562/', 0.65, 159, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260806154500_159', 'ent_alia-bhatt', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in newsx.com', 'Alia Bhatt mentioned in newsx.com', 'src_gdelt',
   'https://www.newsx.com/entertainment/shah-rukh-khans-brand-empire-beats-virat-kohli-ranveer-singh-ms-dhoni-and-sachin-tendulkar-brand-values-257562/', 0.65, 159, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260806154500_159', 'ent_babe-ruth', '2026-08-06', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in river967.com', 'Babe Ruth mentioned in river967.com', 'src_gdelt',
   'https://river967.com/minnesota-born-mlb-home-run-leaders/', 0.65, 159, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260806154500_159', 'ent_aretha-franklin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in readingeagle.com', 'Aretha Franklin mentioned in readingeagle.com', 'src_gdelt',
   'https://www.readingeagle.com/2026/08/05/events-roundup-old-time-fun-classic-rock-and-much-more-as-summer-continues/', 0.65, 159, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260806154500_159', 'ent_adam-scott', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in breitbart.com', 'Adam Scott mentioned in breitbart.com', 'src_gdelt',
   'https://www.breitbart.com/politics/2026/08/05/trump-deputies-triple-courtroom-deportation-orders/', 0.65, 159, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260806160000_160', 'plc_brown-university', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brown University mentioned in abcnews.com', 'Brown University mentioned in abcnews.com', 'src_gdelt',
   'https://abcnews.com/US/officer-allegedly-flock-license-plate-cameras-track-boyfriends/story?id=135418955', 0.65, 160, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260806160000_160', 'ent_arnold-schwarzenegger', '2026-08-06', 2026, 'public_appearance', 'news',
   'Please don''t call it trivia! | Powell Tribune (Arnold Schwarzenegger mentioned)', 'Please don''t call it trivia! | Powell Tribune', 'src_gdelt',
   'http://www.powelltribune.com/stories/please-dont-call-it-trivia,176702', 0.65, 160, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260806160000_160', 'ent_arnold-schwarzenegger', '2026-08-06', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in screenrant.com', 'Arnold Schwarzenegger mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/die-hard-movie-bruce-willis-john-mcclane-yippee-ki-yay-best-quote/', 0.65, 160, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anthony_kennedy_20260806160000_160', 'ent_anthony-kennedy', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anthony Kennedy mentioned in scotusblog.com', 'Anthony Kennedy mentioned in scotusblog.com', 'src_gdelt',
   'https://www.scotusblog.com/2026/08/beyond-the-swing-justice-majority-makers-dissent-bridges-and-coalition-drift-on-the-supreme-cour/', 0.65, 160, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260806161500_161', 'ent_bing-crosby', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in indianapolismonthly.com', 'Bing Crosby mentioned in indianapolismonthly.com', 'src_gdelt',
   'https://www.indianapolismonthly.com/featured/the-spring-bucket-list-for-all-hoosiers/', 0.65, 161, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260806163000_162', 'ent_bing-crosby', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in houstonpress.com', 'Bing Crosby mentioned in houstonpress.com', 'src_gdelt',
   'https://www.houstonpress.com/sponsored/5-must-watch-2026-summer-racing-festivals-before-the-breeders-cup/', 0.65, 162, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260806163000_162', 'ent_al-pacino', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in rcreader.com', 'Al Pacino mentioned in rcreader.com', 'src_gdelt',
   'https://www.rcreader.com/movies/dave-and-darren-in-the-morning-93.9FM-aug6-2026', 0.65, 162, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260806163000_162', 'ent_amelia-earhart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Amelia Earhart mentioned in postandcourier.com', 'Amelia Earhart mentioned in postandcourier.com', 'src_gdelt',
   'https://www.postandcourier.com/charleston_sc/sc-ham-radio-network-emergency-backup-after-hurricanses/article_47a7e5ec-e245-4f35-ad0f-366cc73a4a0c.html', 0.65, 162, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260806163000_162', 'ent_audrey-hepburn', '2026-08-06', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in cracked.com', 'Audrey Hepburn mentioned in cracked.com', 'src_gdelt',
   'https://trivia.cracked.com/image-pictofact-22488-15-old-photos-showing-the-past-had-style', 0.65, 162, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bette_davis_20260806163000_162', 'ent_bette-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bette Davis mentioned in tvone.tv', 'Bette Davis mentioned in tvone.tv', 'src_gdelt',
   'https://tvone.tv/1967597/keke-palmer-whoopi-goldberg-podcast/', 0.65, 162, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260806164500_163', 'ent_adam-scott', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in screenrant.com', 'Adam Scott mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/best-american-sci-fi-tv-shows-ranked/', 0.65, 163, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260806164500_163', 'ent_anderson-cooper', '2026-08-06', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in breitbart.com', 'Anderson Cooper mentioned in breitbart.com', 'src_gdelt',
   'https://www.breitbart.com/entertainment/2026/08/06/nolte-stephen-colberts-nepo-baby-resigns-from-60-minutes/', 0.65, 163, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bette_davis_20260806170000_164', 'ent_bette-davis', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bette Davis mentioned in myk104.com', 'Bette Davis mentioned in myk104.com', 'src_gdelt',
   'https://myk104.com/1138/keke-palmer-whoopi-goldberg-podcast/', 0.65, 164, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260806170000_164', 'ent_andrew-carnegie', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in kuow.org', 'Andrew Carnegie mentioned in kuow.org', 'src_gdelt',
   'https://www.kuow.org/climate/2026-08-06/seattle-public-library-fremont-west-seattle-branches-air-conditioning-as-heat-smoke-get-worse', 0.65, 164, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260806170000_164', 'ent_buddy-holly', '2026-08-06', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in americansongwriter.com', 'Buddy Holly mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/3-folk-songs-from-the-1970s-with-melodies-that-still-echo-decades-later/', 0.65, 164, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_wilder_20260806171500_165', 'ent_billy-wilder', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Wilder mentioned in pikecountycourier.com', 'Billy Wilder mentioned in pikecountycourier.com', 'src_gdelt',
   'https://www.pikecountycourier.com/evergreen/why-use-a-four-letter-word-when-classier-insults-are-available-GY6076800', 0.65, 165, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_wilder_20260806171500_165', 'ent_billy-wilder', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Wilder mentioned in advertisernewssouth.com', 'Billy Wilder mentioned in advertisernewssouth.com', 'src_gdelt',
   'https://www.advertisernewssouth.com/evergreen/why-use-a-four-letter-word-when-classier-insults-are-available-GY6076800', 0.65, 165, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260806171500_165', 'ent_arnold-schwarzenegger', '2026-08-06', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in collider.com', 'Arnold Schwarzenegger mentioned in collider.com', 'src_gdelt',
   'https://collider.com/best-sci-fi-movies-film-history/', 0.65, 165, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260806173000_166', 'plc_brown-university', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brown University mentioned in yahoo.com', 'Brown University mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/us/articles/officer-allegedly-used-flock-license-152053715.html', 0.65, 166, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260806173000_166', 'ent_adam-scott', '2026-08-06', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in businessday.co.za', 'Adam Scott mentioned in businessday.co.za', 'src_gdelt',
   'https://www.businessday.co.za/world/asia/2026-08-06-hiroshima-marks-81st-anniversary-of-the-bomb-as-mayor-deplores-pursuit-of-nuclear-weapons/', 0.65, 166, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260806174500_167', 'ent_ivanka-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in yahoo.com', 'Ivanka Trump mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/trumps-approval-rating-remains-near-200130518.html', 0.65, 167, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260806174500_167', 'ent_billie-jean-king', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in awfulannouncing.com', 'Billie Jean King mentioned in awfulannouncing.com', 'src_gdelt',
   'https://awfulannouncing.com/international/dan-dawson-darts-interview-pdc-espn.html', 0.65, 167, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_judge_20260806174500_167', 'ent_aaron-judge', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aaron Judge mentioned in fansided.com', 'Aaron Judge mentioned in fansided.com', 'src_gdelt',
   'https://fansided.com/mlb/supercomputer-predicts-the-mlb-wild-card-standings-after-the-trade-deadline', 0.65, 167, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260806180000_168', 'ent_brett-kavanaugh', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in thedailybeast.com', 'Brett Kavanaugh mentioned in thedailybeast.com', 'src_gdelt',
   'https://www.thedailybeast.com/trump-judge-jennifer-mascotts-disastrous-side-hustle-revealed/', 0.65, 168, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bayard_rustin_20260806180000_168', 'ent_bayard-rustin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bayard Rustin mentioned in arktimes.com', 'Bayard Rustin mentioned in arktimes.com', 'src_gdelt',
   'https://arktimes.com/food-and-culture/2026/08/06/a-bold-arkansan-truthteller-writer-director-steve-h-broadnax-dishes-on-the-remarkable-resignation-of-dr-joycelyn-elders', 0.65, 168, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_bush_20260806180000_168', 'ent_barbara-bush', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbara Bush mentioned in pressherald.com', 'Barbara Bush mentioned in pressherald.com', 'src_gdelt',
   'https://www.pressherald.com/2026/08/06/driver-charged-in-orrs-island-fatality-had-long-history-of-ouis-drug-use-and-kept-driving-for-months-after-crash/', 0.65, 168, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arthur_compton_20260806180000_168', 'ent_arthur-compton', '2026-08-06', 2026, 'public_appearance', 'news',
   'Arthur Compton mentioned in slate.com', 'Arthur Compton mentioned in slate.com', 'src_gdelt',
   'https://slate.com/news-and-politics/2020/08/hiroshima-anniversary-truman-atomic-bomb.html', 0.65, 168, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260806181500_169', 'ent_amelia-earhart', '2026-08-06', 2026, 'public_appearance', 'news',
   'Amelia Earhart mentioned in spacedaily.com', 'Amelia Earhart mentioned in spacedaily.com', 'src_gdelt',
   'https://spacedaily.com/k-something-happening-far-below-the-surface-of-the-earth-is-quietly-forcing-airports-all-over-the-world-to-close-their-runways-and-repaint-them-and-almost-no-passenger-has-any-idea-why-it-happens/', 0.65, 169, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260806181500_169', 'ent_al-pacino', '2026-08-06', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in harpersbazaar.com', 'Al Pacino mentioned in harpersbazaar.com', 'src_gdelt',
   'https://www.harpersbazaar.com/celebrity/latest/a73366228/anya-taylor-joy-why-women-do-not-method-act-quote/', 0.65, 169, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260806183000_170', 'plc_brown-university', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brown University mentioned in abc7.com', 'Brown University mentioned in abc7.com', 'src_gdelt',
   'https://abc7.com/post/what-is-controversy-flock-cameras-north-carolina-police-officer-elizabeth-snowman-accused-tracking-woman/19636549/', 0.65, 170, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audre_lorde_20260806183000_170', 'ent_audre-lorde', '2026-08-06', 2026, 'public_appearance', 'news',
   'Audre Lorde mentioned in record-bee.com', 'Audre Lorde mentioned in record-bee.com', 'src_gdelt',
   'https://www.record-bee.com/2026/08/06/a-cry-for-moral-courage-in-a-wounded-world/', 0.65, 170, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260806183000_170', 'ent_andrew-young', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in ibtimes.co.uk', 'Andrew Young mentioned in ibtimes.co.uk', 'src_gdelt',
   'https://www.ibtimes.co.uk/stephen-bear-jailed-breaching-restraining-order-georgia-harrison-1812882', 0.65, 170, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brigham_young_20260806183000_170', 'ent_brigham-young', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brigham Young mentioned in ksl.com', 'Brigham Young mentioned in ksl.com', 'src_gdelt',
   'https://www.ksl.com:443/article/51606384/truly-a-national-treasure-university-of-utah-acquiring-final-50-acres-of-historic-fort-douglas', 0.65, 170, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260806183000_170', 'ent_black-hawk', '2026-08-06', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in onthewater.com', 'Black Hawk mentioned in onthewater.com', 'src_gdelt',
   'https://onthewater.com/fishing-reports/2026/08/connecticut-fishing-report-august-6-2026', 0.65, 170, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260806183000_170', 'ent_alicia-keys', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in forbes.com', 'Alicia Keys mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/markfaithfull/2026/08/06/elf-beauty-turns-tariff-windfall-into-global-growth-strategy/', 0.65, 170, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260806184500_171', 'ent_alice-cooper', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in wbur.org', 'Alice Cooper mentioned in wbur.org', 'src_gdelt',
   'https://www.wbur.org/news/2026/08/06/somerville-somergloom-music-festival-newsletter', 0.65, 171, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260806184500_171', 'ent_blake-lively', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in nbcpalmsprings.com', 'Blake Lively mentioned in nbcpalmsprings.com', 'src_gdelt',
   'https://www.nbcpalmsprings.com/2026/08/06/hop-skip-and-gossip', 0.65, 171, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_bush_20260806184500_171', 'ent_barbara-bush', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbara Bush mentioned in kesq.com', 'Barbara Bush mentioned in kesq.com', 'src_gdelt',
   'https://kesq.com/news/national-world/cnn-national/2026/08/06/rosalynn-carter-fast-facts-6/', 0.65, 171, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260806184500_171', 'plc_brown-university', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brown University mentioned in abc11.com', 'Brown University mentioned in abc11.com', 'src_gdelt',
   'https://abc11.com/post/what-is-controversy-flock-cameras-north-carolina-police-officer-elizabeth-snowman-accused-tracking-woman/19636549/', 0.65, 171, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260806190000_172', 'ent_bruno-mars', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in iheart.com', 'Bruno Mars mentioned in iheart.com', 'src_gdelt',
   'https://947bobfm.iheart.com/featured/valentine-in-the-morning/content/2026-08-06-660-valentine-in-the-morning-r-worth-the-money-talkback-thursday/', 0.65, 172, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260806191500_173', 'ent_andrew-jackson', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in smh.com.au', 'Andrew Jackson mentioned in smh.com.au', 'src_gdelt',
   'https://www.smh.com.au/business/companies/billionaire-hotelier-hemmes-pockets-another-pub-shelling-out-50m-for-sackville-hotel-20260806-p60m08.html', 0.65, 173, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260806191500_173', 'ent_andrew-jackson', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in theage.com.au', 'Andrew Jackson mentioned in theage.com.au', 'src_gdelt',
   'https://www.theage.com.au/business/companies/billionaire-hotelier-hemmes-pockets-another-pub-shelling-out-50m-for-sackville-hotel-20260806-p60m08.html', 0.65, 173, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260806193000_174', 'ent_alfred-hitchcock', '2026-08-06', 2026, 'public_appearance', 'news',
   'Film director James Gray says AI is ''worthless'' (Alfred Hitchcock mentioned)', 'Film director James Gray says AI is ''worthless''', 'src_gdelt',
   'https://www.film-news.co.uk:443/news/UK/128377/Film-director-James-Gray-says-AI-is-worthless', 0.65, 174, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260806193000_174', 'ent_andrew-lloyd-webber', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in theacorn.com', 'Andrew Lloyd Webber mentioned in theacorn.com', 'src_gdelt',
   'https://www.theacorn.com/articles/listening-lounge-is-all-ears/', 0.65, 174, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260806193000_174', 'ent_billie-holiday', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in theacorn.com', 'Billie Holiday mentioned in theacorn.com', 'src_gdelt',
   'https://www.theacorn.com/articles/listening-lounge-is-all-ears/', 0.65, 174, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_wilder_20260806194500_175', 'ent_billy-wilder', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Wilder mentioned in warwickadvertiser.com', 'Billy Wilder mentioned in warwickadvertiser.com', 'src_gdelt',
   'https://www.warwickadvertiser.com/evergreen/why-use-a-four-letter-word-when-classier-insults-are-available-GY6076800', 0.65, 175, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260806194500_175', 'ent_bing-crosby', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in standard.net.au', 'Bing Crosby mentioned in standard.net.au', 'src_gdelt',
   'https://www.standard.net.au/story/9324159/six-reasons-to-stream-my-brilliant-career-reboot-on-netflix-six-reasons-to-stay-loyal/', 0.65, 175, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260806194500_175', 'ent_arnold-schwarzenegger', '2026-08-06', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in winnipegfreepress.com', 'Arnold Schwarzenegger mentioned in winnipegfreepress.com', 'src_gdelt',
   'https://www.winnipegfreepress.com/arts-and-life/entertainment/2026/08/06/the-year-in-review-influential-people-who-have-died-in-2026-7', 0.65, 175, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bernard_lafayette_20260806194500_175', 'ent_bernard-lafayette', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bernard Lafayette mentioned in winnipegfreepress.com', 'Bernard Lafayette mentioned in winnipegfreepress.com', 'src_gdelt',
   'https://www.winnipegfreepress.com/arts-and-life/entertainment/2026/08/06/the-year-in-review-influential-people-who-have-died-in-2026-7', 0.65, 175, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260806200000_176', 'ent_bing-crosby', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in camdencourier.com.au', 'Bing Crosby mentioned in camdencourier.com.au', 'src_gdelt',
   'https://www.camdencourier.com.au/story/9324159/six-reasons-to-stream-my-brilliant-career-reboot-on-netflix-six-reasons-to-stay-loyal/', 0.65, 176, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260806200000_176', 'ent_brian-de-palma', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in brisbanetimes.com.au', 'Brian De Palma mentioned in brisbanetimes.com.au', 'src_gdelt',
   'https://www.brisbanetimes.com.au/culture/music/the-worst-girl-in-america-more-like-the-best-story-in-pop-music-20260731-p60kcw.html', 0.65, 176, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260806200000_176', 'ent_blake-lively', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in tmz.com', 'Blake Lively mentioned in tmz.com', 'src_gdelt',
   'https://www.tmz.com/2026/08/06/blake-lively-deposition-fight-jed-wallace/', 0.65, 176, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bernard_lafayette_20260806200000_176', 'ent_bernard-lafayette', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bernard Lafayette mentioned in thegazette.com', 'Bernard Lafayette mentioned in thegazette.com', 'src_gdelt',
   'http://www.thegazette.com/news/national/the-year-in-review-influential-people-who-have-died-in-2026/article_5989bcf2-ac7c-558c-b11d-2d501d102d56.html', 0.65, 176, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260806200000_176', 'ent_brian-de-palma', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in smh.com.au', 'Brian De Palma mentioned in smh.com.au', 'src_gdelt',
   'https://www.smh.com.au/culture/music/the-worst-girl-in-america-more-like-the-best-story-in-pop-music-20260731-p60kcw.html', 0.65, 176, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bernard_lafayette_20260806201500_177', 'ent_bernard-lafayette', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bernard Lafayette mentioned in taylorvilledailynews.com', 'Bernard Lafayette mentioned in taylorvilledailynews.com', 'src_gdelt',
   'https://taylorvilledailynews.com/local-news/srn-us-news/9494dbdb1c483e88f43b77c725768d7e', 0.65, 177, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260806201500_177', 'ent_lee-kuan-yew', '2026-08-06', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in thecable.ng', 'Lee Kuan Yew mentioned in thecable.ng', 'src_gdelt',
   'https://www.thecable.ng/soludo-the-man-that-moves-against-the-wind/', 0.65, 177, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260806201500_177', 'ent_alfred-hitchcock', '2026-08-06', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in femalefirst.co.uk', 'Alfred Hitchcock mentioned in femalefirst.co.uk', 'src_gdelt',
   'http://www.femalefirst.co.uk/movies/movie-news/film-director-james-gray-says-worthless-1448670.html', 0.65, 177, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260806203000_178', 'plc_boston-university', '2026-08-06', 2026, 'public_appearance', 'news',
   'Boston University mentioned in bendbulletin.com', 'Boston University mentioned in bendbulletin.com', 'src_gdelt',
   'https://bendbulletin.com/2026/08/06/merkley-to-host-town-hall-in-central-oregon-thursday/', 0.65, 178, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260806204500_179', 'ent_barry-bonds', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in vladtv.com', 'Barry Bonds mentioned in vladtv.com', 'src_gdelt',
   'https://www.vladtv.com/article/315687/gene-borrello-knows-the-mafia-guys-involved-in-nba-gambling-arrests', 0.65, 179, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_wilder_20260806204500_179', 'ent_billy-wilder', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Wilder mentioned in chroniclenewspaper.com', 'Billy Wilder mentioned in chroniclenewspaper.com', 'src_gdelt',
   'https://www.chroniclenewspaper.com/evergreen/why-use-a-four-letter-word-when-classier-insults-are-available-GY6076800', 0.65, 179, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260806210000_180', 'ent_billie-jean-king', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in el-balad.com', 'Billie Jean King mentioned in el-balad.com', 'src_gdelt',
   'https://www.el-balad.com/17039232', 0.65, 180, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260806210000_180', 'ent_barbara-walters', '2026-08-06', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in eurweb.com', 'Barbara Walters mentioned in eurweb.com', 'src_gdelt',
   'https://eurweb.com/whoopi-goldberg-the-view-paycheck/', 0.65, 180, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_wilder_20260806210000_180', 'ent_billy-wilder', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billy Wilder mentioned in westmilfordmessenger.com', 'Billy Wilder mentioned in westmilfordmessenger.com', 'src_gdelt',
   'https://www.westmilfordmessenger.com/evergreen/why-use-a-four-letter-word-when-classier-insults-are-available-GY6076800', 0.65, 180, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amy_griffin_20260806213000_182', 'ent_amy-griffin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Amy Griffin mentioned in timesenterprise.com', 'Amy Griffin mentioned in timesenterprise.com', 'src_gdelt',
   'https://timesenterprise.com/2026/08/06/archbolds-lammons-and-briscoe-win-daisy-awards/', 0.65, 182, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betsy_ross_20260806213000_182', 'ent_betsy-ross', '2026-08-06', 2026, 'public_appearance', 'news',
   'Betsy Ross mentioned in tnonline.com', 'Betsy Ross mentioned in tnonline.com', 'src_gdelt',
   'https://www.tnonline.com/20260806/rain-doesnt-damper-fair-fun/', 0.65, 182, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260806214500_183', 'ent_aretha-franklin', '2026-08-06', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in jamaicaobserver.com', 'Aretha Franklin mentioned in jamaicaobserver.com', 'src_gdelt',
   'https://www.jamaicaobserver.com/2026/08/06/plas-moon-introduces-love-life-jamaica-soulful-debut/', 0.65, 183, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_allen_ginsberg_20260806220000_184', 'ent_allen-ginsberg', '2026-08-06', 2026, 'public_appearance', 'news',
   'Allen Ginsberg mentioned in hometownfocus.us', 'Allen Ginsberg mentioned in hometownfocus.us', 'src_gdelt',
   'https://www.hometownfocus.us/articles/under-the-red-sky-celebrating-the-u-s-with-one-of-its-greatest-musicians/', 0.65, 184, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betsy_ross_20260806220000_184', 'ent_betsy-ross', '2026-08-06', 2026, 'public_appearance', 'news',
   'Betsy Ross mentioned in hometownfocus.us', 'Betsy Ross mentioned in hometownfocus.us', 'src_gdelt',
   'https://www.hometownfocus.us/articles/under-the-red-sky-celebrating-the-u-s-with-one-of-its-greatest-musicians/', 0.65, 184, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260806220000_184', 'ent_billie-holiday', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in hometownfocus.us', 'Billie Holiday mentioned in hometownfocus.us', 'src_gdelt',
   'https://www.hometownfocus.us/articles/under-the-red-sky-celebrating-the-u-s-with-one-of-its-greatest-musicians/', 0.65, 184, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260806221500_185', 'ent_brett-kavanaugh', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in newsweek.com', 'Brett Kavanaugh mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/how-supreme-court-approval-rating-has-changed-under-trumppolls-12293345', 0.65, 185, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260806221500_185', 'ent_brian-chesky', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in financialcontent.com', 'Brian Chesky mentioned in financialcontent.com', 'src_gdelt',
   'https://markets.financialcontent.com/stocks/article/stockstory-2026-8-6-airbnb-nasdaqabnb-surprises-with-q2-cy2026-sales-stock-soars', 0.65, 185, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260806221500_185', 'ent_blake-lively', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in deadline.com', 'Blake Lively mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/2026/08/spaceship-earth-tv-series-epcot-ride-disney-pilot-order-1237028145/', 0.65, 185, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260806223000_186', 'ent_arnold-palmer', '2026-08-06', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in azbigmedia.com', 'Arnold Palmer mentioned in azbigmedia.com', 'src_gdelt',
   'https://azbigmedia.com/lifestyle/press-coffee-opens-new-cafe-in-sprouts-hq-near-its-first-store/', 0.65, 186, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260806224500_187', 'ent_arnold-palmer', '2026-08-06', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in gazette.com', 'Arnold Palmer mentioned in gazette.com', 'src_gdelt',
   'https://gazette.com/2026/08/06/snacks-beverages-on-tap-at-manitou-springs-penny-arcades-new-snack-bar/', 0.65, 187, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260806224500_187', 'ent_andrew-lloyd-webber', '2026-08-06', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in screenrant.com', 'Andrew Lloyd Webber mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/disney-new-tv-series-epcot-spaceship-earth/', 0.65, 187, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_fred_trump_20260806224500_187', 'ent_fred-trump', '2026-08-06', 2026, 'public_appearance', 'news',
   'Fred Trump mentioned in attackofthefanboy.com', 'Fred Trump mentioned in attackofthefanboy.com', 'src_gdelt',
   'https://attackofthefanboy.com/politics/donald-trump-signed-orders-restricting-birthright-citizenship-decades-after-his-own-grandmother-arrived-in-new-york-five-months-pregnant/', 0.65, 187, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260806230000_188', 'ent_billie-jean-king', '2026-08-06', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in publishersweekly.com', 'Billie Jean King mentioned in publishersweekly.com', 'src_gdelt',
   'https://www.publishersweekly.com:443/pw/by-topic/childrens/childrens-book-news/article/100967-new-kids-and-ya-books-week-of-august-10-2026.html', 0.65, 188, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260806231500_189', 'ent_brett-kavanaugh', '2026-08-06', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in keyt.com', 'Brett Kavanaugh mentioned in keyt.com', 'src_gdelt',
   'https://keyt.com/politics/cnn-us-politics/2026/08/06/trump-again-tries-to-curb-birthright-citizenship-and-birth-tourism-through-executive-action/', 0.65, 189, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260806233000_190', 'ent_blake-lively', '2026-08-06', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in deadline.com', 'Blake Lively mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/print-article/1237028145/', 0.65, 190, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bernard_lafayette_20260806234500_191', 'ent_bernard-lafayette', '2026-08-06', 2026, 'public_appearance', 'news',
   'Bernard Lafayette mentioned in sitkasentinel.com', 'Bernard Lafayette mentioned in sitkasentinel.com', 'src_gdelt',
   'http://www.sitkasentinel.com/stories/the-year-in-review-influential-people-who-have-died-in-2026,161883', 0.65, 191, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260807000000_192', 'ent_donald-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in local12.com', 'Donald Trump mentioned in local12.com', 'src_gdelt',
   'https://local12.com/news/nation-world/trump-signs-orders-targeting-birth-tourism-further-limiting-birthright-citizenship', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260807000000_192', 'ent_donald-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in yahoo.com', 'Donald Trump mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/maybe-trump-says-hes-open-232500456.html', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260807000000_192', 'ent_donald-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in gulfcoastnewsnow.com', 'Donald Trump mentioned in gulfcoastnewsnow.com', 'src_gdelt',
   'https://www.gulfcoastnewsnow.com/article/investigating-lincoln-memorial-reflecting-pool-dispute/73369324', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260807000000_192', 'ent_donald-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in dailyliberal.com.au', 'Donald Trump mentioned in dailyliberal.com.au', 'src_gdelt',
   'https://www.dailyliberal.com.au/story/9325623/fauci-in-contempt-of-us-congress-could-be-prosecuted/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_smith_20260807000000_192', 'ent_ben-smith', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benjamin Smith mentioned in yukon-news.com', 'Benjamin Smith mentioned in yukon-news.com', 'src_gdelt',
   'https://yukon-news.com/2026/08/06/yukon-quest-returns-to-classic-dawson-route-for-2027-race-minus-alaska-leg/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260807000000_192', 'ent_donald-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in examiner.com.au', 'Donald Trump mentioned in examiner.com.au', 'src_gdelt',
   'https://www.examiner.com.au/story/9325623/fauci-in-contempt-of-us-congress-could-be-prosecuted/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_allen_ginsberg_20260807000000_192', 'ent_allen-ginsberg', '2026-08-07', 2026, 'public_appearance', 'news',
   'Allen Ginsberg mentioned in thedailyblog.co.nz', 'Allen Ginsberg mentioned in thedailyblog.co.nz', 'src_gdelt',
   'https://thedailyblog.co.nz/open-mic-friday-7th-august-political-caption-competition/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260807000000_192', 'ent_buzz-aldrin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in local12.com', 'Buzz Aldrin mentioned in local12.com', 'src_gdelt',
   'https://local12.com/news/nation-world/neil-armstrong-ohio-childhood-home-listed-sale-wapakoneta-historical-house-apollo-11-history-space-flight', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260807000000_192', 'ent_benjamin-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in bendigoadvertiser.com.au', 'Benjamin Franklin mentioned in bendigoadvertiser.com.au', 'src_gdelt',
   'https://www.bendigoadvertiser.com.au/story/9324920/the-echidna-believe-it-or-not-we-are-losing-our-religion/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260807000000_192', 'ent_andy-warhol', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in dailykos.com', 'Andy Warhol mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/6/800080464/community/evening-shade-resistance-rising-thursday-august-6-2026/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260807000000_192', 'ent_buffalo-bill', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in wyrk.com', 'Buffalo Bill mentioned in wyrk.com', 'src_gdelt',
   'https://wyrk.com/josh-allen-crunch-time-cereal/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260807000000_192', 'ent_narendra-modi', '2026-08-07', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in chinatechnews.com', 'Narendra Modi mentioned in chinatechnews.com', 'src_gdelt',
   'https://www.chinatechnews.com/2026/08/07/126804-pm-modis-foreign-visits-since-2021-cost-over-rs-557-crore-govt-data', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260807000000_192', 'ent_anna-wintour', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in nbcbayarea.com', 'Anna Wintour mentioned in nbcbayarea.com', 'src_gdelt',
   'https://www.nbcbayarea.com/news/local/vogue-world-san-francisco-2027/4124690/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260807000000_192', 'ent_benjamin-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in moreechampion.com.au', 'Benjamin Franklin mentioned in moreechampion.com.au', 'src_gdelt',
   'https://www.moreechampion.com.au/story/9324920/the-echidna-believe-it-or-not-we-are-losing-our-religion/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260807000000_192', 'ent_barack-obama', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in dailykos.com', 'Barack Obama mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/6/800061773/community/the-hawkeye-state-of-play-key-iowa-races/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260807000000_192', 'ent_anna-wintour', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in techcrunch.com', 'Anna Wintour mentioned in techcrunch.com', 'src_gdelt',
   'https://techcrunch.com/2026/08/06/vogue-just-gave-another-nod-of-approval-to-the-tech-world/', 0.65, 192, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260807001500_193', 'ent_bing-crosby', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in wellingtontimes.com.au', 'Bing Crosby mentioned in wellingtontimes.com.au', 'src_gdelt',
   'https://www.wellingtontimes.com.au/story/9324159/six-reasons-to-stream-my-brilliant-career-reboot-on-netflix-six-reasons-to-stay-loyal/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260807001500_193', 'ent_bing-crosby', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in tenterfieldstar.com.au', 'Bing Crosby mentioned in tenterfieldstar.com.au', 'src_gdelt',
   'https://www.tenterfieldstar.com.au/story/9324159/six-reasons-to-stream-my-brilliant-career-reboot-on-netflix-six-reasons-to-stay-loyal/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260807001500_193', 'ent_bing-crosby', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in ulladullatimes.com.au', 'Bing Crosby mentioned in ulladullatimes.com.au', 'src_gdelt',
   'https://www.ulladullatimes.com.au/story/9324159/six-reasons-to-stream-my-brilliant-career-reboot-on-netflix-six-reasons-to-stay-loyal/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260807001500_193', 'ent_narendra-modi', '2026-08-07', 2026, 'public_appearance', 'news',
   'BJP leader apologises for anti-women slogans at Article 370 rally (Narendra Modi mentioned)', 'BJP leader apologises for anti-women slogans at Article 370 rally', 'src_gdelt',
   'https://dailypioneer.com/news/altaf-thakur-apologises-anti-women-slogans-article-370-rally', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260807001500_193', 'ent_bing-crosby', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in redlandcitybulletin.com.au', 'Bing Crosby mentioned in redlandcitybulletin.com.au', 'src_gdelt',
   'https://www.redlandcitybulletin.com.au/story/9324159/six-reasons-to-stream-my-brilliant-career-reboot-on-netflix-six-reasons-to-stay-loyal/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260807001500_193', 'ent_bob-dylan', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in q1075.com', 'Bob Dylan mentioned in q1075.com', 'src_gdelt',
   'https://q1075.com/this-day-in-top-40-history-august-6/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260807001500_193', 'ent_aaron-rodgers', '2026-08-07', 2026, 'public_appearance', 'news',
   '2026 Camp Blog: Making it work (Aaron Rodgers mentioned)', '2026 Camp Blog: Making it work', 'src_gdelt',
   'http://www.oklahomastar.com/news/279225524/2026-camp-blog-making-it-work', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260807001500_193', 'ent_bing-crosby', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in crookwellgazette.com.au', 'Bing Crosby mentioned in crookwellgazette.com.au', 'src_gdelt',
   'https://www.crookwellgazette.com.au/story/9324159/six-reasons-to-stream-my-brilliant-career-reboot-on-netflix-six-reasons-to-stay-loyal/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260807001500_193', 'ent_eric-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in livetradingnews.com', 'Eric Trump mentioned in livetradingnews.com', 'src_gdelt',
   'https://www.livetradingnews.com/inside-the-kxco-ai-sector-ontology-what-the-public-map-shows-and-what-runs-behin', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260807001500_193', 'ent_aaron-rodgers', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in theprovince.com', 'Aaron Rodgers mentioned in theprovince.com', 'src_gdelt',
   'https://theprovince.com/news/world/u-s-senate-panel-votes-hold-anthony-fauci-contempt-of-congress/wcm/76c15099-ee80-4be0-a74e-bbc5170cd462', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260807001500_193', 'ent_brad-pitt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in the-independent.com', 'Brad Pitt mentioned in the-independent.com', 'src_gdelt',
   'https://www.the-independent.com/life-style/travis-kelce-nfl-chiefs-andy-reid-taylor-swift-b3028953.html', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260807001500_193', 'ent_benjamin-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in redlandcitybulletin.com.au', 'Benjamin Franklin mentioned in redlandcitybulletin.com.au', 'src_gdelt',
   'https://www.redlandcitybulletin.com.au/story/9324920/the-echidna-believe-it-or-not-we-are-losing-our-religion/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260807001500_193', 'ent_anna-wintour', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in jns.org', 'Anna Wintour mentioned in jns.org', 'src_gdelt',
   'https://www.jns.org/news/u-s-news/met-gala-to-celebrate-british-designer-despite-his-history-of-jew-hatred', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260807001500_193', 'ent_anderson-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in reviewjournal.com', 'Anderson Cooper mentioned in reviewjournal.com', 'src_gdelt',
   'https://www.reviewjournal.com/opinion/letters/letter-fauci-takes-the-fifth-3860325/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260807001500_193', 'ent_benjamin-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in crookwellgazette.com.au', 'Benjamin Franklin mentioned in crookwellgazette.com.au', 'src_gdelt',
   'https://www.crookwellgazette.com.au/story/9324920/the-echidna-believe-it-or-not-we-are-losing-our-religion/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260807001500_193', 'ent_barry-bonds', '2026-08-07', 2026, 'public_appearance', 'news',
   'Today''s Happenings: August 7, 2026 | South Peace News (Barry Bonds mentioned)', 'Today''s Happenings: August 7, 2026 | South Peace News', 'src_gdelt',
   'https://www.southpeacenews.com/todays-happenings-august-7-2026/', 0.65, 193, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260807003000_194', 'ent_ivanka-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'This Is The Weird Secret of Trump''s Wild New Hair: Biographer Michael Wolff (Ivanka Trump mentioned)', 'This Is The Weird Secret of Trump''s Wild New Hair: Biographer Michael Wolff', 'src_gdelt',
   'https://www.thedailybeast.com/this-is-the-weird-secret-of-trumps-wild-new-hair-biographer-michael-wolff/', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260807003000_194', 'ent_narendra-modi', '2026-08-07', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in hindustantimes.com', 'Narendra Modi mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/astrology/horoscope/aquarius-horoscope-today-august-7-2026-peace-today-may-come-from-simplicity-and-choosing-calm-over-unnecessary-noise-101786027811273.html', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260807003000_194', 'ent_bari-weiss', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in townhall.com', 'Bari Weiss mentioned in townhall.com', 'src_gdelt',
   'https://townhall.com/news/amy-curtis/2026/08/06/stephen-colberts-daughter-worked-for-60-minutes-n2680788', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260807003000_194', 'ent_buffalo-bill', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in silverandblackpride.com', 'Buffalo Bill mentioned in silverandblackpride.com', 'src_gdelt',
   'https://www.silverandblackpride.com/las-vegas-raiders-depth-chart/135897/las-vegas-raiders-training-camp-taron-johnson-safety-defesnive-backs', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260807003000_194', 'ent_barack-obama', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in theepochtimes.com', 'Barack Obama mentioned in theepochtimes.com', 'src_gdelt',
   'https://www.theepochtimes.com/us/judge-dismisses-reflecting-pool-criminal-case-against-former-olympian-6072370', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260807003000_194', 'ent_narendra-modi', '2026-08-07', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in hindustantimes.com', 'Narendra Modi mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/astrology/horoscope/pisces-horoscope-today-august-7-2026-good-news-may-brighten-your-day-and-will-remind-you-why-the-hard-work-matters-101786028742002.html', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260807003000_194', 'ent_narendra-modi', '2026-08-07', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in hindustantimes.com', 'Narendra Modi mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/astrology/horoscope/capricorn-horoscope-today-august-7-2026-teamwork-and-client-opportunities-can-bring-rewards-communicate-with-clarity-101786026153943.html', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260807003000_194', 'ent_al-pacino', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in dailymail.com', 'Al Pacino mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16035147/Richard-Gere-Diana-Silvers-pedicab-Central-Park-NYC-Asymmetry.html', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260807003000_194', 'ent_bob-dylan', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in bigtakeover.com', 'Bob Dylan mentioned in bigtakeover.com', 'src_gdelt',
   'https://bigtakeover.com/interviews/interview-nate-wilder-big-fat-head', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260807003000_194', 'ent_benjamin-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Whose Nation Is It Anyway | Ami Magazine (Benjamin Franklin mentioned)', 'Whose Nation Is It Anyway | Ami Magazine', 'src_gdelt',
   'https://amimagazine.org/2026/08/04/whose-nation-is-it-anyway/', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260807003000_194', 'ent_arnold-schwarzenegger', '2026-08-07', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in nypost.com', 'Arnold Schwarzenegger mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/06/us-news/xavier-becerra-ducks-media-as-campaign-for-california-governor-tries-to-run-out-the-clock/', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260807003000_194', 'ent_anna-wintour', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in clevelandjewishnews.com', 'Anna Wintour mentioned in clevelandjewishnews.com', 'src_gdelt',
   'https://www.clevelandjewishnews.com/jns/met-gala-to-celebrate-british-designer-despite-his-history-of-jew-hatred/article_bf0ed3f8-b9e9-55bb-9278-9235fd12c839.html', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260807003000_194', 'ent_barack-obama', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in independent.com', 'Barack Obama mentioned in independent.com', 'src_gdelt',
   'https://www.independent.com/2026/08/06/review-trevor-noah-is-top-tier-comedy/', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260807003000_194', 'ent_al-gore', '2026-08-07', 2026, 'public_appearance', 'news',
   'Whats in Tucker Carlsons Save America manifesto (Al Gore mentioned)', 'Whats in Tucker Carlsons Save America manifesto', 'src_gdelt',
   'http://www.kenyastar.com/news/279225521/whats-in-tucker-carlsons-save-america-manifesto', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260807003000_194', 'ent_bill-clinton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Whats in Tucker Carlsons Save America manifesto (Bill Clinton mentioned)', 'Whats in Tucker Carlsons Save America manifesto', 'src_gdelt',
   'http://www.kenyastar.com/news/279225521/whats-in-tucker-carlsons-save-america-manifesto', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260807003000_194', 'ent_alicia-keys', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in theroot.com', 'Alicia Keys mentioned in theroot.com', 'src_gdelt',
   'https://www.theroot.com/the-ultimate-guide-to-what-to-watch-at-the-2026-marthas-2000119838', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260807003000_194', 'ent_billie-eilish', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in screenrant.com', 'Billie Eilish mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/james-cameron-next-movies-not-avatar-sequels-good/', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260807003000_194', 'ent_bruno-mars', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in dailyhive.com', 'Bruno Mars mentioned in dailyhive.com', 'src_gdelt',
   'https://dailyhive.com/vancouver/bc-place-stadium-concerts-live-music-venue', 0.65, 194, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260807004500_195', 'ent_barbra-streisand', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in billboard.com', 'Barbra Streisand mentioned in billboard.com', 'src_gdelt',
   'https://www.billboard.com/culture/lifestyle/barbra-streisand-childrens-picture-book-and-by-the-way-1236311190/', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260807004500_195', 'ent_alicia-keys', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in mymotherlode.com', 'Alicia Keys mentioned in mymotherlode.com', 'src_gdelt',
   'https://mymotherlode.com/entertainment/11048512/the-year-in-review-influential-people-who-have-died-in-2026.html', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260807004500_195', 'ent_arnold-schwarzenegger', '2026-08-07', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in mymotherlode.com', 'Arnold Schwarzenegger mentioned in mymotherlode.com', 'src_gdelt',
   'https://mymotherlode.com/entertainment/11048512/the-year-in-review-influential-people-who-have-died-in-2026.html', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bernard_lafayette_20260807004500_195', 'ent_bernard-lafayette', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bernard Lafayette mentioned in mymotherlode.com', 'Bernard Lafayette mentioned in mymotherlode.com', 'src_gdelt',
   'https://mymotherlode.com/entertainment/11048512/the-year-in-review-influential-people-who-have-died-in-2026.html', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260807004500_195', 'ent_bill-clinton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in mymotherlode.com', 'Bill Clinton mentioned in mymotherlode.com', 'src_gdelt',
   'https://mymotherlode.com/entertainment/11048512/the-year-in-review-influential-people-who-have-died-in-2026.html', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260807004500_195', 'ent_axl-rose', '2026-08-07', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in billboard.com', 'Axl Rose mentioned in billboard.com', 'src_gdelt',
   'https://www.billboard.com/music/rock/chris-stapleton-guns-n-roses-knockin-on-heavens-door-1236310493/', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260807004500_195', 'ent_bob-dylan', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in billboard.com', 'Bob Dylan mentioned in billboard.com', 'src_gdelt',
   'https://www.billboard.com/music/rock/chris-stapleton-guns-n-roses-knockin-on-heavens-door-1236310493/', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260807004500_195', 'ent_billie-eilish', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in sunny943.com', 'Billie Eilish mentioned in sunny943.com', 'src_gdelt',
   'https://sunny943.com/2026/08/06/billie-eilish-takes-lead-role-in-the-bell-jar-film-adaptation-directed-by-sarah-polley/', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260807004500_195', 'ent_breanna-stewart', '2026-08-07', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in yardbarker.com', 'Breanna Stewart mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/wnba/articles/jonquel_jones_moves_up_on_an_all_time_list_as_liberty_top_storm/s1_13132_44142966', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260807004500_195', 'ent_blake-shelton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in messenger-inquirer.com', 'Blake Shelton mentioned in messenger-inquirer.com', 'src_gdelt',
   'https://www.messenger-inquirer.com/features/weekend_ticket/the-crashers-to-conclude-fa5s-30th-season/article_b981ed2b-c722-5e47-9283-ea9ae3867636.html', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260807004500_195', 'ent_breanna-stewart', '2026-08-07', 2026, 'public_appearance', 'news',
   'FIBA World Cup roster features Caitlin Clark, Paige Bueckers (Breanna Stewart mentioned)', 'FIBA World Cup roster features Caitlin Clark, Paige Bueckers', 'src_gdelt',
   'https://www.yardbarker.com/wnba/articles/fiba_world_cup_roster_features_caitlin_clark_paige_bueckers/s1_17054_44144234', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260807004500_195', 'ent_caitlin-clark', '2026-08-07', 2026, 'public_appearance', 'news',
   'FIBA World Cup roster features Caitlin Clark, Paige Bueckers (Caitlin Clark mentioned)', 'FIBA World Cup roster features Caitlin Clark, Paige Bueckers', 'src_gdelt',
   'https://www.yardbarker.com/wnba/articles/fiba_world_cup_roster_features_caitlin_clark_paige_bueckers/s1_17054_44144234', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260807004500_195', 'ent_bill-clinton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in cairnspost.com.au', 'Bill Clinton mentioned in cairnspost.com.au', 'src_gdelt',
   'https://www.cairnspost.com.au/entertainment/sizzling-celeb-bikini-pics-reveal-agedefying-hollywood-trend/news-story/25e005941e6185e513c19e7446590014?nk=586647b6394cf9bcdcd8d7a6bf3e2360-1786062715', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260807004500_195', 'ent_brad-pitt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in spotlightreport.net', 'Brad Pitt mentioned in spotlightreport.net', 'src_gdelt',
   'https://spotlightreport.net/movies/heart-of-the-beast-new-featurette-available-now', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260807004500_195', 'ent_al-gore', '2026-08-07', 2026, 'public_appearance', 'news',
   'Whats in Tucker Carlsons Save America manifesto (Al Gore mentioned)', 'Whats in Tucker Carlsons Save America manifesto', 'src_gdelt',
   'http://www.iranherald.com/news/279225521/whats-in-tucker-carlsons-save-america-manifesto', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260807004500_195', 'ent_bill-clinton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Whats in Tucker Carlsons Save America manifesto (Bill Clinton mentioned)', 'Whats in Tucker Carlsons Save America manifesto', 'src_gdelt',
   'http://www.iranherald.com/news/279225521/whats-in-tucker-carlsons-save-america-manifesto', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260807004500_195', 'ent_caitlin-clark', '2026-08-07', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in yardbarker.com', 'Caitlin Clark mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/wnba/articles/fever_star_sophie_cunningham_addresses_exchange_with_wnba_coach/s1_17081_44145043', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260807004500_195', 'ent_aaron-rodgers', '2026-08-07', 2026, 'public_appearance', 'news',
   '2026 Camp Blog: Making it work (Aaron Rodgers mentioned)', '2026 Camp Blog: Making it work', 'src_gdelt',
   'http://www.oklahomacitysun.com/news/279225524/2026-camp-blog-making-it-work', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260807004500_195', 'ent_aaron-rodgers', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in aol.com', 'Aaron Rodgers mentioned in aol.com', 'src_gdelt',
   'https://www.aol.com/articles/danica-patrick-claps-back-body-125934000.html', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260807004500_195', 'ent_al-gore', '2026-08-07', 2026, 'public_appearance', 'news',
   'Whats in Tucker Carlsons Save America manifesto (Al Gore mentioned)', 'Whats in Tucker Carlsons Save America manifesto', 'src_gdelt',
   'http://www.austinglobe.com/news/279225521/whats-in-tucker-carlsons-save-america-manifesto', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260807004500_195', 'ent_bill-clinton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Whats in Tucker Carlsons Save America manifesto (Bill Clinton mentioned)', 'Whats in Tucker Carlsons Save America manifesto', 'src_gdelt',
   'http://www.austinglobe.com/news/279225521/whats-in-tucker-carlsons-save-america-manifesto', 0.65, 195, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260807010000_196', 'ent_britney-spears', '2026-08-07', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in dailymail.com', 'Britney Spears mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/debate/article-16034577/wnba-trans-sophie-cunningham-kennedy.html', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260807010000_196', 'ent_caitlin-clark', '2026-08-07', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in dailymail.com', 'Caitlin Clark mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/debate/article-16034577/wnba-trans-sophie-cunningham-kennedy.html', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260807010000_196', 'ent_caitlin-clark', '2026-08-07', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in winnipegfreepress.com', 'Caitlin Clark mentioned in winnipegfreepress.com', 'src_gdelt',
   'https://www.winnipegfreepress.com/uncategorized/2026/08/06/indiana-fever-return-to-friendlier-atmosphere-after-rallies-and-hearing-boos-on-road-trip', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260807010000_196', 'ent_britney-spears', '2026-08-07', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in latimes.com', 'Britney Spears mentioned in latimes.com', 'src_gdelt',
   'https://www.latimes.com/entertainment-arts/story/2026-08-06/perez-hilton-family-pleads-for-privacy-for-his-kids-after-crisis', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260807010000_196', 'ent_aaron-rodgers', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in perthnow.com.au', 'Aaron Rodgers mentioned in perthnow.com.au', 'src_gdelt',
   'https://www.perthnow.com.au/entertainment/celebrity-gossip/aaron-rodgers-savouring-last-ever-nfl-season-c-22688855', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260807010000_196', 'ent_andrew-lloyd-webber', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in playbill.com', 'Andrew Lloyd Webber mentioned in playbill.com', 'src_gdelt',
   'https://playbill.com/article/photos-sierra-boggess-returns-to-the-phantom-of-the-opera-for-its-40th-anniversary-as-carlotta', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260807010000_196', 'ent_barack-obama', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in eenews.net', 'Barack Obama mentioned in eenews.net', 'src_gdelt',
   'https://www.eenews.net/articles/california-looks-to-bring-dupont-spinoff-into-pfas-lawsuit/', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260807010000_196', 'ent_bruce-springsteen', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in dailymail.com', 'Bruce Springsteen mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16035121/vincent-pastore-funeral-sopranos-death.html', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260807010000_196', 'ent_barack-obama', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in arabamericannews.com', 'Barack Obama mentioned in arabamericannews.com', 'src_gdelt',
   'https://arabamericannews.com/2009/01/10/News-briefs/?t=1786061004', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260807010000_196', 'ent_alfred-hitchcock', '2026-08-07', 2026, 'public_appearance', 'news',
   'Film director James Gray says AI is ''worthless'' (Alfred Hitchcock mentioned)', 'Film director James Gray says AI is ''worthless''', 'src_gdelt',
   'https://www.film-news.co.uk/news/UK/128377/Film-director-James-Gray-says-AI-is-worthless', 0.65, 196, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260807011500_197', 'ent_blake-shelton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in wysu.org', 'Blake Shelton mentioned in wysu.org', 'src_gdelt',
   'https://wysu.org/ohio-news/2026-08-06/voa-country-music-festival-weather-west-chester', 0.65, 197, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260807011500_197', 'ent_brad-paisley', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in wysu.org', 'Brad Paisley mentioned in wysu.org', 'src_gdelt',
   'https://wysu.org/ohio-news/2026-08-06/voa-country-music-festival-weather-west-chester', 0.65, 197, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260807011500_197', 'ent_andy-warhol', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in wbrc.com', 'Andy Warhol mentioned in wbrc.com', 'src_gdelt',
   'https://www.wbrc.com/2026/08/06/nick-pihakis-birmingham-restaurateur-behind-hero-doughnuts-little-donkey-files-bankruptcy/', 0.65, 197, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260807011500_197', 'ent_adam-scott', '2026-08-07', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in collider.com', 'Adam Scott mentioned in collider.com', 'src_gdelt',
   'https://collider.com/most-perfect-thriller-shows-last-10-years-ranked/', 0.65, 197, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260807011500_197', 'ent_abraham-lincoln', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in clevelandjewishnews.com', 'Abraham Lincoln mentioned in clevelandjewishnews.com', 'src_gdelt',
   'https://www.clevelandjewishnews.com/news/briefs/hale-farm-civil-war-weekend-aug-8-9/article_4cdf8ea6-529f-44bd-88df-b3fd5b278751.html', 0.65, 197, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260807011500_197', 'ent_bruce-springsteen', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in autoweek.com', 'Bruce Springsteen mentioned in autoweek.com', 'src_gdelt',
   'https://www.autoweek.com/racing/nascar/a73369980/rusty-wallace-built-iowa-speedway/', 0.65, 197, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260807013000_198', 'ent_billie-eilish', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in magic983.com', 'Billie Eilish mentioned in magic983.com', 'src_gdelt',
   'https://magic983.com/2026/08/06/billie-eilish-takes-lead-role-in-the-bell-jar-film-adaptation-directed-by-sarah-polley/', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260807013000_198', 'ent_ariana-grande', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in dailymail.com', 'Ariana Grande mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16034209/ADRIAN-THRILLS-Ariana-Grande-album-Petal.html', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260807013000_198', 'ent_barbra-streisand', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in easy931miami.com', 'Barbra Streisand mentioned in easy931miami.com', 'src_gdelt',
   'https://www.easy931miami.com/news/barbra-streisand-publish-first-childrens-book/RDQ2YKZMJI3PBM7CDE54YIWSNE/', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260807013000_198', 'ent_al-gore', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in yahoo.com', 'Al Gore mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/copeland-early-lead-7th-congressional-004740102.html', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260807013000_198', 'ent_axl-rose', '2026-08-07', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in katsfm.com', 'Axl Rose mentioned in katsfm.com', 'src_gdelt',
   'https://katsfm.com/ixp/295/p/axl-rose-ac-dc-doubts/', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260807013000_198', 'ent_albert-einstein', '2026-08-07', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in thesun.ng', 'Albert Einstein mentioned in thesun.ng', 'src_gdelt',
   'https://thesun.ng/captain-hosa-a-life-whose-light-time-cannot-diminish/', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260807013000_198', 'ent_al-gore', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in foxnews.com', 'Al Gore mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/politics/primary-showdown-polls-close-tennessee-conservative-firebrand-eyes-governors-office', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260807013000_198', 'ent_brett-kavanaugh', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in cnn.com', 'Brett Kavanaugh mentioned in cnn.com', 'src_gdelt',
   'https://edition.cnn.com/2026/08/06/politics/trump-birthright-citizenship', 0.65, 198, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_young_20260807014500_199', 'ent_andrew-young', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Young mentioned in davisenterprise.com', 'Andrew Young mentioned in davisenterprise.com', 'src_gdelt',
   'https://www.davisenterprise.com/news/baker-reflects-on-life-on-and-off-the-diamond-in-new-book/article_f1e0e1df-79be-4af0-9800-a37cec0dce5b.html', 0.65, 199, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260807014500_199', 'ent_babe-ruth', '2026-08-07', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in davisenterprise.com', 'Babe Ruth mentioned in davisenterprise.com', 'src_gdelt',
   'https://www.davisenterprise.com/news/baker-reflects-on-life-on-and-off-the-diamond-in-new-book/article_f1e0e1df-79be-4af0-9800-a37cec0dce5b.html', 0.65, 199, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260807014500_199', 'ent_caitlin-clark', '2026-08-07', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in el-balad.com', 'Caitlin Clark mentioned in el-balad.com', 'src_gdelt',
   'https://www.el-balad.com/17039392', 0.65, 199, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260807014500_199', 'ent_brad-pitt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in thenews.com.pk', 'Brad Pitt mentioned in thenews.com.pk', 'src_gdelt',
   'https://www.thenews.com.pk/latest/1411482-brad-pitt-renews-legal-fight-for-angelina-jolies-financial-documents', 0.65, 199, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260807014500_199', 'ent_bruce-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in finanznachrichten.de', 'Bruce Lee mentioned in finanznachrichten.de', 'src_gdelt',
   'https://www.finanznachrichten.de/nachrichten-2026-08/69244224-eqs-news-martial-arts-history-museum-featured-on-hit-digital-series-la-in-a-minute-023.htm', 0.65, 199, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260807014500_199', 'ent_bruce-willis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in thenews.com.pk', 'Bruce Willis mentioned in thenews.com.pk', 'src_gdelt',
   'https://www.thenews.com.pk/latest/1411485-whoopi-goldberg-shares-the-secret-behind-her-biggest-movie-roles', 0.65, 199, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260807020000_200', 'ent_ariana-grande', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in digitalspy.com', 'Ariana Grande mentioned in digitalspy.com', 'src_gdelt',
   'https://www.digitalspy.com/tv/reality-tv/a73369632/the-voice-mentors-lineup-series-14/', 0.65, 200, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260807020000_200', 'ent_brett-kavanaugh', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in cnn.com', 'Brett Kavanaugh mentioned in cnn.com', 'src_gdelt',
   'https://us.cnn.com/2026/08/06/politics/trump-birthright-citizenship', 0.65, 200, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260807020000_200', 'ent_ariana-grande', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in realitytea.com', 'Ariana Grande mentioned in realitytea.com', 'src_gdelt',
   'https://www.realitytea.com/2026/08/06/frankie-called-out-body-snaps-ariana-grande-scrutiny/', 0.65, 200, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260807020000_200', 'ent_breanna-stewart', '2026-08-07', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in mavsmoneyball.com', 'Breanna Stewart mentioned in mavsmoneyball.com', 'src_gdelt',
   'https://www.mavsmoneyball.com/dallas-wings/61387/wings-paige-bueckers-named-to-team-usa-ahead-of-2026-fiba-womens-world-cup', 0.65, 200, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260807020000_200', 'ent_aretha-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in abqjournal.com', 'Aretha Franklin mentioned in abqjournal.com', 'src_gdelt',
   'https://www.abqjournal.com/news/the-power-is-in-storytelling-longtime-kunm-host-carol-boss-dies/3095886', 0.65, 200, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260807020000_200', 'ent_ariana-grande', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in digitalspy.com', 'Ariana Grande mentioned in digitalspy.com', 'src_gdelt',
   'https://www.digitalspy.com/movies/a73370131/monica-dolan-the-lost-children-of-tuam-uk-release/', 0.65, 200, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260807023000_202', 'ent_alicia-keys', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in sandiegouniontribune.com', 'Alicia Keys mentioned in sandiegouniontribune.com', 'src_gdelt',
   'https://www.sandiegouniontribune.com/2026/08/06/giants-art-exhibition-a-colossal-success-for-mcasd-in-la-jolla/', 0.65, 202, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260807023000_202', 'ent_aretha-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in k-zap.org', 'Aretha Franklin mentioned in k-zap.org', 'src_gdelt',
   'https://k-zap.org/event/powerhouse-of-blues-zenn-vudu-powerhouse-pub-folsom-ca/', 0.65, 202, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260807023000_202', 'plc_boston-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Boston University mentioned in prevention.com', 'Boston University mentioned in prevention.com', 'src_gdelt',
   'https://www.prevention.com/health/health-conditions/a73370421/type-1-diabetes-my-diagnosis/', 0.65, 202, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260807023000_202', 'ent_bob-dylan', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in medicinehatnews.com', 'Bob Dylan mentioned in medicinehatnews.com', 'src_gdelt',
   'https://medicinehatnews.com/entertainment/entertainment-news/2026/08/05/qa-ms-lauryn-hill-on-the-diaspora-calling-festival-in-the-uk-the-fugees-legacy-and-dangelo-7/', 0.65, 202, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260807023000_202', 'ent_brian-de-palma', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in theconversation.com', 'Brian De Palma mentioned in theconversation.com', 'src_gdelt',
   'https://theconversation.com/5-bret-easton-ellis-adaptations-ranked-from-worst-to-best-288206', 0.65, 202, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260807024500_203', 'ent_aretha-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in americansongwriter.com', 'Aretha Franklin mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/on-this-day-in-1982-willie-nelson-began-a-22-week-reign-at-no-1-with-the-years-biggest-country-album/', 0.65, 203, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260807024500_203', 'ent_lee-kuan-yew', '2026-08-07', 2026, 'public_appearance', 'news',
   'The Leadership &#x2013;Followership Debate &#x2013; THISDAYLIVE (Lee Kuan Yew mentioned)', 'The Leadership &#x2013;Followership Debate &#x2013; THISDAYLIVE', 'src_gdelt',
   'https://www.thisdaylive.com/2026/08/07/the-leadership-followership-debate/', 0.65, 203, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260807024500_203', 'ent_alice-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in americansongwriter.com', 'Alice Cooper mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/3-songs-from-1972-that-teens-couldnt-stop-playing-in-their-first-car/', 0.65, 203, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260807024500_203', 'ent_ariana-grande', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in idsnews.com', 'Ariana Grande mentioned in idsnews.com', 'src_gdelt',
   'https://www.idsnews.com/article/2026/08/music-fashion-film-charli-xcx-sonically-underdeveloped-thematically-nihilistic', 0.65, 203, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260807030000_204', 'ent_brett-kavanaugh', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in latimes.com', 'Brett Kavanaugh mentioned in latimes.com', 'src_gdelt',
   'https://www.latimes.com/politics/story/2026-08-06/after-supreme-court-loss-trump-again-targets-birthright-citizenship-with-new-orders', 0.65, 204, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260807030000_204', 'ent_arnold-palmer', '2026-08-07', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in stlmag.com', 'Arnold Palmer mentioned in stlmag.com', 'src_gdelt',
   'https://www.stlmag.com/branded-content/musial-awards-st-louis/', 0.65, 204, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260807030000_204', 'ent_billie-jean-king', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in stlmag.com', 'Billie Jean King mentioned in stlmag.com', 'src_gdelt',
   'https://www.stlmag.com/branded-content/musial-awards-st-louis/', 0.65, 204, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260807030000_204', 'ent_brad-pitt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in sheknows.com', 'Brad Pitt mentioned in sheknows.com', 'src_gdelt',
   'https://www.sheknows.com/entertainment/articles/1235039530/brad-pitt-reaction-kids-dropping-last-name/', 0.65, 204, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260807030000_204', 'ent_alicia-keys', '2026-08-07', 2026, 'public_appearance', 'news',
   '''Under the Perfect Sun'' to be highlighted at KPBS Book Festival (Alicia Keys mentioned)', '''Under the Perfect Sun'' to be highlighted at KPBS Book Festival', 'src_gdelt',
   'https://www.kpbs.org/podcasts/kpbs-midday-edition/under-the-perfect-sun-to-be-highlighted-at-kpbs-book-festival', 0.65, 204, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260807031500_205', 'ent_bob-dylan', '2026-08-07', 2026, 'public_appearance', 'news',
   'Monica Barbaro thinks New York is a "super romantic city" - 07-Aug-2026 (Bob Dylan mentioned)', 'Monica Barbaro thinks New York is a "super romantic city" - 07-Aug-2026', 'src_gdelt',
   'https://home.nzcity.co.nz/news/article.aspx?id=451484&fm=psp,tst', 0.65, 205, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260807031500_205', 'ent_buzz-aldrin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in wataugademocrat.com', 'Buzz Aldrin mentioned in wataugademocrat.com', 'src_gdelt',
   'http://www.wataugademocrat.com/ap/national/ap-trending-summarybrief-at-6-59-p-m-edt/article_1320044c-9121-5185-b274-8411c1c569a0.html', 0.65, 205, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260807031500_205', 'ent_black-hawk', '2026-08-07', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in idahostatejournal.com', 'Black Hawk mentioned in idahostatejournal.com', 'src_gdelt',
   'http://www.idahostatejournal.com/news/local/above-the-backcountry-idaho-army-national-guards-aviation-crews-save-lives-others-cant-reach/article_bfedb7ae-d5b6-4db1-b5d0-6c9d8261f900.html', 0.65, 205, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260807031500_205', 'ent_britney-spears', '2026-08-07', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in recorderonline.com', 'Britney Spears mentioned in recorderonline.com', 'src_gdelt',
   'https://www.recorderonline.com/features/entertainment_news/perez-hilton-tried-to-make-amends-with-britney-spears-others-before-crisis/article_70822ce2-ca82-5bcf-bd25-ace2a4f71f27.html', 0.65, 205, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260807031500_205', 'ent_bari-weiss', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in everything-pr.com', 'Bari Weiss mentioned in everything-pr.com', 'src_gdelt',
   'https://everything-pr.com/pucks-writers-are-more-visible-than-puck', 0.65, 205, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260807031500_205', 'ent_ivanka-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in hellomagazine.com', 'Ivanka Trump mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/us/916849/ivanka-trump-looks-so-loved-up-with-jared-kushner-on-private-getaway/', 0.65, 205, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260807033000_206', 'ent_bruce-willis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in jdjournal.com', 'Bruce Willis mentioned in jdjournal.com', 'src_gdelt',
   'https://www.jdjournal.com/2026/08/06/emma-heming-meeting-bruce-willis-engaged/', 0.65, 206, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260807034500_207', 'ent_eric-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in thedailybeast.com', 'Eric Trump mentioned in thedailybeast.com', 'src_gdelt',
   'https://www.thedailybeast.com/lara-trump-defends-awkward-funeral-gaffe/', 0.65, 207, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260807034500_207', 'ent_brett-kavanaugh', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in newkerala.com', 'Brett Kavanaugh mentioned in newkerala.com', 'src_gdelt',
   'https://www.newkerala.com/news/a/trump-issues-new-orders-limit-birthright-citizenship-after-621.htm', 0.65, 207, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260807034500_207', 'ent_lee-kuan-yew', '2026-08-07', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in orissapost.com', 'Lee Kuan Yew mentioned in orissapost.com', 'src_gdelt',
   'https://www.orissapost.com/while-rome-burns/', 0.65, 207, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260807034500_207', 'ent_brett-kavanaugh', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in ianslive.in', 'Brett Kavanaugh mentioned in ianslive.in', 'src_gdelt',
   'https://ianslive.in/trump-issues-new-orders-to-limit-birthright-citizenship-after-supreme-court-struck-down-earlier-fiat--20260807071502', 0.65, 207, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260807040000_208', 'ent_britney-spears', '2026-08-07', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in hola.com', 'Britney Spears mentioned in hola.com', 'src_gdelt',
   'https://www.hola.com/us/celebrities/20260807916839/perez-hilton-apologized-britney-spears-khloe-kardashian/', 0.65, 208, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260807040000_208', 'ent_abraham-lincoln', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in independent.co.uk', 'Abraham Lincoln mentioned in independent.co.uk', 'src_gdelt',
   'https://www.independent.co.uk/news/world/americas/us-politics/trump-2028-general-patton-post-b3029042.html', 0.65, 208, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260807040000_208', 'ent_bari-weiss', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in ctnewsjunkie.com', 'Bari Weiss mentioned in ctnewsjunkie.com', 'src_gdelt',
   'https://ctnewsjunkie.com/2026/08/06/opinion-what-does-content-creation-mean-for-the-future-of-journalism/', 0.65, 208, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260807040000_208', 'ent_andrew-carnegie', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in tnledger.com', 'Andrew Carnegie mentioned in tnledger.com', 'src_gdelt',
   'http://www.tnledger.com/editorial/Article.aspx?id=206282', 0.65, 208, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260807041500_209', 'ent_anderson-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in rawstory.com', 'Anderson Cooper mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/tony-dokoupil-cbs-evening-news/', 0.65, 209, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260807041500_209', 'ent_bari-weiss', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in rawstory.com', 'Bari Weiss mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/tony-dokoupil-cbs-evening-news/', 0.65, 209, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260807041500_209', 'ent_alice-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Raunchy &#x2013; We Are Movie Geeks (Alice Cooper mentioned)', 'Raunchy &#x2013; We Are Movie Geeks', 'src_gdelt',
   'https://www.wearemoviegeeks.com/tag/raunchy/', 0.65, 209, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260807043000_210', 'ent_melania-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in yahoo.com', 'Melania Trump mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/el-sayed-claps-back-trump-202354956.html', 0.65, 210, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260807043000_210', 'ent_ivanka-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in yahoo.com', 'Ivanka Trump mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/el-sayed-claps-back-trump-202354956.html', 0.65, 210, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260807044500_211', 'ent_bruce-springsteen', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in glidemagazine.com', 'Bruce Springsteen mentioned in glidemagazine.com', 'src_gdelt',
   'https://glidemagazine.com/328791/eddie-and-the-cruisers-still-rocks-even-if-the-story-doesnt-film-review/', 0.65, 211, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260807044500_211', 'ent_bruno-mars', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in latimes.com', 'Bruno Mars mentioned in latimes.com', 'src_gdelt',
   'https://www.latimes.com/delos/story/2026-08-06/karol-g-new-album-no-me-arrepiento-de-sentir-tanto', 0.65, 211, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260807044500_211', 'ent_abraham-lincoln', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in q985online.com', 'Abraham Lincoln mentioned in q985online.com', 'src_gdelt',
   'https://q985online.com/miss-illinois-kate-dimmett/', 0.65, 211, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260807050000_212', 'ent_billy-joel', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in fool.com', 'Billy Joel mentioned in fool.com', 'src_gdelt',
   'https://www.fool.com/investing/2026/08/07/july-2026-mailbag-year-12-begins/?source=iedfolrf0000001', 0.65, 212, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260807050000_212', 'ent_buffalo-bill', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in theguardian.com', 'Buffalo Bill mentioned in theguardian.com', 'src_gdelt',
   'https://www.theguardian.com/stage/2026/aug/07/the-silence-of-the-lambs-review-curve-leicester-hannibal-lecter', 0.65, 212, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260807050000_212', 'ent_buffalo-bill', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in aol.co.uk', 'Buffalo Bill mentioned in aol.co.uk', 'src_gdelt',
   'https://www.aol.co.uk/articles/silence-lambs-review-hannibal-lecter-040007000.html', 0.65, 212, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260807051500_213', 'ent_anna-wintour', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in vogue.in', 'Anna Wintour mentioned in vogue.in', 'src_gdelt',
   'https://www.vogue.in/content/vogue-world-2027-is-headed-to-san-francisco', 0.65, 213, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260807051500_213', 'ent_audrey-hepburn', '2026-08-07', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in thetimes.com', 'Audrey Hepburn mentioned in thetimes.com', 'src_gdelt',
   'https://www.thetimes.com/travel/destinations/europe-travel/france/jacquemus-monte-carlo-beach-club-vz2vnbcdj', 0.65, 213, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260807051500_213', 'ent_melania-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in indiatimes.com', 'Melania Trump mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/technology/tech-news/amazon-documentary-melania-that-mgm-studios-spent-35-million-promoting-lost-millions-on-after-release-earned-melania-trump-10-71-million-fee/articleshow/132995598.cms', 0.65, 213, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260807051500_213', 'ent_alia-bhatt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in indiatimes.com', 'Alia Bhatt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/hindi/bollywood/news/sharvari-opens-up-on-main-vaapas-aaunga-box-office-run-and-reinvention-my-heart-kept-saying-kuch-toh-accha-hoga/articleshow/133020914.cms', 0.65, 213, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260807051500_213', 'ent_black-hawk', '2026-08-07', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in scoop.co.nz', 'Black Hawk mentioned in scoop.co.nz', 'src_gdelt',
   'https://auckland.scoop.co.nz/2026/08/unlicensed-auckland-security-guard-fined-14000/', 0.65, 213, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260807053000_214', 'ent_barbra-streisand', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in canberratimes.com.au', 'Barbra Streisand mentioned in canberratimes.com.au', 'src_gdelt',
   'https://www.canberratimes.com.au/story/9325963/streisand-writes-kids-book-to-engage-young-minds/', 0.65, 214, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260807053000_214', 'ent_albert-einstein', '2026-08-07', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in antiwar.com', 'Albert Einstein mentioned in antiwar.com', 'src_gdelt',
   'https://original.antiwar.com/lawrence-wittner/2026/08/06/the-rulers-of-the-nuclear-powers-are-slow-learners/', 0.65, 214, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260807054500_215', 'ent_brad-pitt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in hindustantimes.com', 'Brad Pitt mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/entertainment/web-series/david-fincher-american-squid-game-shelved-by-netflix-heres-why-the-ambitious-kdrama-spin-off-is-no-longer-happening-101786074650486.html', 0.65, 215, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260807054500_215', 'ent_eric-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in politicaldog101.com', 'Eric Trump mentioned in politicaldog101.com', 'src_gdelt',
   'https://politicaldog101.com/2026/08/when-capital-one-closed-all-of-its-trump-bank-accounts/comment-page-1/', 0.65, 215, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260807054500_215', 'ent_buddy-holly', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in kchanews.com', 'Buddy Holly mentioned in kchanews.com', 'src_gdelt',
   'https://kchanews.com/2026/08/06/surf-ballroom-to-unveil-statues-of-holly-valens-big-bopper-friday-08-07/', 0.65, 215, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260807060000_216', 'plc_boston-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Boston University mentioned in bostonglobe.com', 'Boston University mentioned in bostonglobe.com', 'src_gdelt',
   'https://www.bostonglobe.com/2026/08/06/metro/bu-promise-financial-aid/', 0.65, 216, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aishwarya_rai_20260807060000_216', 'ent_aishwarya-rai', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aishwarya Rai mentioned in indiatimes.com', 'Aishwarya Rai mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/tamil/movies/news/i-was-spoilt-for-choice-when-aishwarya-rai-bachchan-revealed-whether-she-preferred-rajinikanth-or-chitti-in-shankars-enthiran/articleshow/133022389.cms', 0.65, 216, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_murphy_20260807061500_217', 'ent_bobby-murphy', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobby Murphy mentioned in themarketsdaily.com', 'Bobby Murphy mentioned in themarketsdaily.com', 'src_gdelt',
   'https://www.themarketsdaily.com/2026/08/07/rosenblatt-securities-cuts-snap-nysesnap-price-target-to-6-00.html', 0.65, 217, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260807061500_217', 'ent_bruce-willis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Emma Heming Willis has reflected on the beginning of her relationship with Bruce Willis, describing the Hollywood star as "warm", "charismatic" and "full of life" - 07-Aug-2026 (Bruce Willis mentioned', 'Emma Heming Willis has reflected on the beginning of her relationship with Bruce Willis, describing the Hollywood star as "warm", "charismatic" and "full of life" - 07-Aug-2026', 'src_gdelt',
   'https://home.nzcity.co.nz/news/article.aspx?id=451490&fm=psp,tst', 0.65, 217, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260807063000_218', 'ent_bruce-springsteen', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in themusic.com.au', 'Bruce Springsteen mentioned in themusic.com.au', 'src_gdelt',
   'https://themusic.com.au/features/the-music-s-friday-finds-the-week-s-best-new-music-7-august/D2KtAwIFBAc/07-08-26', 0.65, 218, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_murphy_20260807063000_218', 'ent_bobby-murphy', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobby Murphy mentioned in dailypolitical.com', 'Bobby Murphy mentioned in dailypolitical.com', 'src_gdelt',
   'https://www.dailypolitical.com/2026/08/06/snaps-snap-market-perform-rating-reiterated-at-citizens-jmp.html', 0.65, 218, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260807063000_218', 'ent_ben-affleck', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in newsweek.com', 'Ben Affleck mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/entertainment/the-greatest-hollywood-power-couples-of-all-time-ranked-12292604', 0.65, 218, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260807063000_218', 'ent_blake-lively', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in newsweek.com', 'Blake Lively mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/entertainment/the-greatest-hollywood-power-couples-of-all-time-ranked-12292604', 0.65, 218, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260807063000_218', 'ent_bruce-willis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in newsweek.com', 'Bruce Willis mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/entertainment/the-greatest-hollywood-power-couples-of-all-time-ranked-12292604', 0.65, 218, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260807063000_218', 'ent_anderson-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in newsbusters.org', 'Anderson Cooper mentioned in newsbusters.org', 'src_gdelt',
   'https://www.newsbusters.org/blogs/nb/geoffrey-dickens/2020/01/10/sympathy-devil-lefty-journalists-mourn-death-soleimani', 0.65, 218, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260807064500_219', 'ent_bill-gates', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in tickerreport.com', 'Bill Gates mentioned in tickerreport.com', 'src_gdelt',
   'https://www.tickerreport.com/banking-finance/13533205/sen-shelley-moore-capito-sells-off-microsoft-corporation-nasdaqmsft-shares.html', 0.65, 219, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260807064500_219', 'ent_bari-weiss', '2026-08-07', 2026, 'public_appearance', 'news',
   'A "socialism" for the New York Times: Jacobin founder Bhaskar Sunkara''s interview with Ross Douthat (Bari Weiss mentioned)', 'A "socialism" for the New York Times: Jacobin founder Bhaskar Sunkara''s interview with Ross Douthat', 'src_gdelt',
   'https://www.wsws.org/en/articles/2026/08/07/jznc-a07.html', 0.65, 219, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260807064500_219', 'ent_axl-rose', '2026-08-07', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in insidepulse.com', 'Axl Rose mentioned in insidepulse.com', 'src_gdelt',
   'https://insidepulse.com/2026/08/06/blu-ray-review-l-a-guns-live-from-the-guild-theater/', 0.65, 219, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260807070000_220', 'ent_abraham-lincoln', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in kfilradio.com', 'Abraham Lincoln mentioned in kfilradio.com', 'src_gdelt',
   'https://kfilradio.com/ixp/723/p/miss-illinois-kate-dimmett/', 0.65, 220, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_graham_20260807070000_220', 'ent_billy-graham', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Graham mentioned in afr.net', 'Billy Graham mentioned in afr.net', 'src_gdelt',
   'https://afr.net/podcasts/todays-issues-with-tim-wildmon-and-company/2026/july/celebrating-america-250/', 0.65, 220, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260807070000_220', 'ent_bruce-willis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in perthnow.com.au', 'Bruce Willis mentioned in perthnow.com.au', 'src_gdelt',
   'https://www.perthnow.com.au/entertainment/celebrity-gossip/emma-heming-willis-reveals-warm-quality-of-bruce-willis-c-22688352', 0.65, 220, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260807070000_220', 'ent_alia-bhatt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in tribuneindia.com', 'Alia Bhatt mentioned in tribuneindia.com', 'src_gdelt',
   'https://www.tribuneindia.com/news/entertainment/indian-actresses-who-celebrated-indias-textile-heritage-as-brides/', 0.65, 220, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260807071500_221', 'ent_melania-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in thedailybeast.com', 'Melania Trump mentioned in thedailybeast.com', 'src_gdelt',
   'https://www.thedailybeast.com/trump-plots-wild-move-in-personal-vaccine-autism-crusade-tied-to-barron/', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260807071500_221', 'ent_barbra-streisand', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in bunburymail.com.au', 'Barbra Streisand mentioned in bunburymail.com.au', 'src_gdelt',
   'https://www.bunburymail.com.au/story/9325963/streisand-writes-kids-book-to-engage-young-minds/', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260807071500_221', 'ent_bruce-springsteen', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bono, Eddie Vedder among mourners at the funeral of Oscar-winning songwriter Glen Hansard (Bruce Springsteen mentioned)', 'Bono, Eddie Vedder among mourners at the funeral of Oscar-winning songwriter Glen Hansard', 'src_gdelt',
   'https://www.thealpenanews.com/news/national-news-apwire/2026/08/bono-eddie-vedder-among-mourners-at-the-funeral-of-oscar-winning-songwriter-glen-hansard/', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260807071500_221', 'ent_britney-spears', '2026-08-07', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in thestar.com.my', 'Britney Spears mentioned in thestar.com.my', 'src_gdelt',
   'https://www.thestar.com.my/lifestyle/entertainment/2026/08/07/perez-hiltons-family-asks-paparazzi-to-give-children-privacy-as-new-details-around-crisis-emerge', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260807071500_221', 'ent_eric-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in yahoo.com', 'Eric Trump mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/politics/articles/lara-trump-explains-viral-funeral-063148889.html', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260807071500_221', 'ent_aretha-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Famous Songs You Didn''t Know Were Covers: The Hidden Origins of Iconic Hits (Aretha Franklin mentioned)', 'Famous Songs You Didn''t Know Were Covers: The Hidden Origins of Iconic Hits', 'src_gdelt',
   'https://www.power104.fm/2026/08/famous-songs-you-didnt-know-were-covers.html', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260807071500_221', 'ent_breanna-stewart', '2026-08-07', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in arkansasonline.com', 'Breanna Stewart mentioned in arkansasonline.com', 'src_gdelt',
   'https://www.arkansasonline.com/news/2026/aug/07/off-the-wire/', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260807071500_221', 'ent_ben-affleck', '2026-08-07', 2026, 'public_appearance', 'news',
   'Four-letter words are no substitute for thought, onscreen or in politics (Ben Affleck mentioned)', 'Four-letter words are no substitute for thought, onscreen or in politics', 'src_gdelt',
   'https://www.thealpenanews.com/opinion/editorials-and-columns/2026/08/four-letter-words-are-no-substitute-for-thought-onscreen-or-in-politics/', 0.65, 221, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260807073000_222', 'ent_alia-bhatt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in indiatimes.com', 'Alia Bhatt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/hindi/bollywood/news/love-and-war-first-look-to-be-unveiled-on-independence-day-ranbir-kapoor-alia-bhatt-and-vicky-kaushals-character-posters-set-for-august-15-release-reports/articleshow/133021186.cms', 0.65, 222, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260807073000_222', 'ent_brad-paisley', '2026-08-07', 2026, 'public_appearance', 'news',
   'Country star Hannah Dasher says famous, married celebrity once slid into her DMs (Brad Paisley mentioned)', 'Country star Hannah Dasher says famous, married celebrity once slid into her DMs', 'src_gdelt',
   'https://pagesix.com/2026/08/07/entertainment/country-star-hannah-dasher-says-famous-married-celebrity-once-slid-into-her-dms/', 0.65, 222, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260807073000_222', 'ent_ben-affleck', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in hellomagazine.com', 'Ben Affleck mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/us/916845/jennifer-garners-modest-250k-engagement-ring-signals-a-departure-from-her-relationship-with-ben-affleck/', 0.65, 222, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260807073000_222', 'ent_barbra-streisand', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in centralwesterndaily.com.au', 'Barbra Streisand mentioned in centralwesterndaily.com.au', 'src_gdelt',
   'https://www.centralwesterndaily.com.au/story/9325963/streisand-writes-kids-book-to-engage-young-minds/', 0.65, 222, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260807074500_223', 'ent_barry-bonds', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in upi.com', 'Barry Bonds mentioned in upi.com', 'src_gdelt',
   'https://www.upi.com/Top_News/2026/08/07/On-This-Day-US-Embassy-bombings-kill-224-people/7231786075337/', 0.65, 223, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260807074500_223', 'ent_billy-joel', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in wror.com', 'Billy Joel mentioned in wror.com', 'src_gdelt',
   'https://wror.com/2026/08/07/this-day-in-rock-history-august-7-2/', 0.65, 223, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260807080000_224', 'ent_breanna-stewart', '2026-08-07', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in netsdaily.com', 'Breanna Stewart mentioned in netsdaily.com', 'src_gdelt',
   'https://www.netsdaily.com/nyliberty/112830/on-betnijah-laney-hamiltons-depressing-ending-with-the-new-york-liberty', 0.65, 224, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260807080000_224', 'ent_billy-joel', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in wrif.com', 'Billy Joel mentioned in wrif.com', 'src_gdelt',
   'https://wrif.com/2026/08/07/this-day-in-rock-history-august-7-2/', 0.65, 224, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260807080000_224', 'ent_barry-bonds', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in yahoo.com', 'Barry Bonds mentioned in yahoo.com', 'src_gdelt',
   'https://www.yahoo.com/news/us/articles/day-aug-7-u-embassy-070007474.html', 0.65, 224, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_art_blakey_20260807080000_224', 'ent_art-blakey', '2026-08-07', 2026, 'public_appearance', 'news',
   'Art Blakey mentioned in suffolknews.co.uk', 'Art Blakey mentioned in suffolknews.co.uk', 'src_gdelt',
   'https://www.suffolknews.co.uk/whats-on/find-out-whats-happening-on-the-jazz-and-folk-scene-9476951/', 0.65, 224, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260807081500_225', 'ent_billy-joel', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in myq105.com', 'Billy Joel mentioned in myq105.com', 'src_gdelt',
   'https://myq105.com/2026/08/07/this-day-in-rock-history-august-7-2/', 0.65, 225, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260807081500_225', 'ent_billy-joel', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in wdhafm.com', 'Billy Joel mentioned in wdhafm.com', 'src_gdelt',
   'https://wdhafm.com/2026/08/07/this-day-in-rock-history-august-7-2/', 0.65, 225, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260807081500_225', 'ent_bruno-mars', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in rollingstone.com', 'Bruno Mars mentioned in rollingstone.com', 'src_gdelt',
   'https://www.rollingstone.com/music/music-album-reviews/karol-g-no-me-arrepiento-de-sentir-album-review-1235604209/', 0.65, 225, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260807081500_225', 'ent_buzz-aldrin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in averyjournal.com', 'Buzz Aldrin mentioned in averyjournal.com', 'src_gdelt',
   'http://www.averyjournal.com/ap/national/ap-trending-summarybrief-at-2-18-a-m-edt/article_029a0153-d330-55ed-82cd-005d5c9506c6.html', 0.65, 225, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dole_20260807081500_225', 'ent_bob-dole', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bob Dole mentioned in wbur.org', 'Bob Dole mentioned in wbur.org', 'src_gdelt',
   'https://www.wbur.org/onpoint/2026/08/06/ty-cobb-donald-trump-white-house', 0.65, 225, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260807081500_225', 'ent_bruno-mars', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in rollingstone.com', 'Bruno Mars mentioned in rollingstone.com', 'src_gdelt',
   'https://www.rollingstone.com/music/music-latin/karol-g-o-me-arrepiento-de-sentir-tanto-interview-meaning-1235604867/', 0.65, 225, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260807083000_226', 'ent_bill-gates', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in dailymail.com', 'Bill Gates mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/news/article-16035715/Armed-group-tourists-away-Corsica-threat-buying-home.html', 0.65, 226, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260807083000_226', 'plc_boston-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Boston University mentioned in universityherald.com', 'Boston University mentioned in universityherald.com', 'src_gdelt',
   'https://www.universityherald.com/articles/80438/20260807/boston-university-now-offers-free-tuition-students-households-earning-200000.htm', 0.65, 226, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ann_lee_20260807083000_226', 'ent_ann-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ann Lee mentioned in variety.com', 'Ann Lee mentioned in variety.com', 'src_gdelt',
   'https://variety.com/2026/film/reviews/the-last-house-review-1236828947/', 0.65, 226, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260807083000_226', 'ent_albert-einstein', '2026-08-07', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in nakedcapitalism.com', 'Albert Einstein mentioned in nakedcapitalism.com', 'src_gdelt',
   'https://www.nakedcapitalism.com/2026/08/why-albert-einsteins-why-socialism.html', 0.65, 226, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260807084500_227', 'ent_benny-goodman', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benny Goodman mentioned in standardspeaker.com', 'Benny Goodman mentioned in standardspeaker.com', 'src_gdelt',
   'https://www.standardspeaker.com/2026/08/07/community-digest-aug-7-2026-2/', 0.65, 227, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260807084500_227', 'ent_sachin-tendulkar', '2026-08-07', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in bollywoodhungama.com', 'Sachin Tendulkar mentioned in bollywoodhungama.com', 'src_gdelt',
   'https://www.bollywoodhungama.com/news/bollywood/kroll-celebrity-valuation-2025-alia-bhatt-emerges-as-indias-top-ranked-female-star-with-usd-93-9-million-brand-value-secures-no-6-in-the-list/', 0.65, 227, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260807084500_227', 'ent_alia-bhatt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in bollywoodhungama.com', 'Alia Bhatt mentioned in bollywoodhungama.com', 'src_gdelt',
   'https://www.bollywoodhungama.com/news/bollywood/kroll-celebrity-valuation-2025-alia-bhatt-emerges-as-indias-top-ranked-female-star-with-usd-93-9-million-brand-value-secures-no-6-in-the-list/', 0.65, 227, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260807084500_227', 'ent_alexander-graham-bell', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in parkeschampionpost.com.au', 'Alexander Graham Bell mentioned in parkeschampionpost.com.au', 'src_gdelt',
   'https://www.parkeschampionpost.com.au/news/opinion/nothing-venture-nothing-have-y39dziad', 0.65, 227, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anne_bancroft_20260807084500_227', 'ent_anne-bancroft', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anne Bancroft mentioned in nassauweekly.com', 'Anne Bancroft mentioned in nassauweekly.com', 'src_gdelt',
   'https://nassauweekly.com/my_big_fat_fifth_life_crisis/', 0.65, 227, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260807084500_227', 'ent_ben-affleck', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in nassauweekly.com', 'Ben Affleck mentioned in nassauweekly.com', 'src_gdelt',
   'https://nassauweekly.com/my_big_fat_fifth_life_crisis/', 0.65, 227, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260807093000_230', 'plc_brown-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Chemical and Environmental Engineering Professors job with Brown University School of Engineering (Brown University mentioned)', 'Chemical and Environmental Engineering Professors job with Brown University School of Engineering', 'src_gdelt',
   'https://www.nature.com/naturecareers/job/12862447/chemical-and-environmental-engineering-professors/', 0.65, 230, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alan_shepard_20260807093000_230', 'ent_alan-shepard', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alan Shepard mentioned in dailymail.com', 'Alan Shepard mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/sciencetech/article-16035735/SpaceX-moon-Shocking-photos-crater.html', 0.65, 230, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260807094500_231', 'ent_sachin-tendulkar', '2026-08-07', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in gulte.com', 'Sachin Tendulkar mentioned in gulte.com', 'src_gdelt',
   'https://www.gulte.com/trends/425121/sachin-brand-value-1200-cr-remains-top-even-13-years-after-retirement', 0.65, 231, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260807094500_231', 'ent_bill-gates', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in dailypolitical.com', 'Bill Gates mentioned in dailypolitical.com', 'src_gdelt',
   'https://www.dailypolitical.com/2026/08/07/microsoft-corporation-msft-position-raised-by-dutch-asset-corp.html', 0.65, 231, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260807094500_231', 'ent_anderson-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in kjzz.org', 'Anderson Cooper mentioned in kjzz.org', 'src_gdelt',
   'https://www.kjzz.org/npr-top-stories/2026-08-07/why-andy-cohen-is-a-deadhead-for-life', 0.65, 231, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260807094500_231', 'ent_anderson-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in wxxinews.org', 'Anderson Cooper mentioned in wxxinews.org', 'src_gdelt',
   'https://www.wxxinews.org/npr-news/2026-08-07/why-andy-cohen-is-a-deadhead-for-life', 0.65, 231, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260807094500_231', 'ent_barry-sanders', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in arkansasonline.com', 'Barry Sanders mentioned in arkansasonline.com', 'src_gdelt',
   'https://www.arkansasonline.com/news/2026/aug/07/eagles-rb-roused-by-sanders-actions/', 0.65, 231, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260807094500_231', 'ent_bill-gates', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in tickerreport.com', 'Bill Gates mentioned in tickerreport.com', 'src_gdelt',
   'https://www.tickerreport.com/banking-finance/13533484/stone-loft-wealth-management-llc-invests-620000-in-microsoft-corporation-msft.html', 0.65, 231, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260807094500_231', 'ent_bill-gates', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in themarketsdaily.com', 'Bill Gates mentioned in themarketsdaily.com', 'src_gdelt',
   'https://www.themarketsdaily.com/2026/08/07/glenview-trust-co-has-184-28-million-stake-in-microsoft-corporation-msft.html', 0.65, 231, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ann_lee_20260807100000_232', 'ent_ann-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ann Lee mentioned in hollywoodreporter.com', 'Ann Lee mentioned in hollywoodreporter.com', 'src_gdelt',
   'https://www.hollywoodreporter.com/movies/movie-reviews/the-last-house-review-greta-lee-wagner-moura-netflix-1236666386/', 0.65, 232, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260807100000_232', 'ent_blake-lively', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in comingsoon.net', 'Blake Lively mentioned in comingsoon.net', 'src_gdelt',
   'https://www.comingsoon.net/movies/news/2172978-blake-lively-justin-baldoni-linked-pr-jed-wallace-court-fight', 0.65, 232, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260807100000_232', 'ent_aretha-franklin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in sfstation.com', 'Aretha Franklin mentioned in sfstation.com', 'src_gdelt',
   'https://www.sfstation.com/san-jose-jazz-summer-fest-2026-e1330851', 0.65, 232, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260807100000_232', 'ent_alia-bhatt', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in indiatimes.com', 'Alia Bhatt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/hindi/bollywood/news/sanjay-leela-bhansali-to-reportedly-unveil-love-and-war-first-look-posters-of-ranbir-kapoor-alia-bhatt-and-vicky-kaushal-on-august-15-report/articleshow/133029488.cms', 0.65, 232, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260807101500_233', 'ent_audrey-hepburn', '2026-08-07', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in en.ce.cn', 'Audrey Hepburn mentioned in en.ce.cn', 'src_gdelt',
   'http://en.ce.cn/main/latest/202608/t20260807_3134656.shtml', 0.65, 233, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260807101500_233', 'ent_andrew-jackson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in edp24.co.uk', 'Andrew Jackson mentioned in edp24.co.uk', 'src_gdelt',
   'https://www.edp24.co.uk/news/26444175.angry-young-man-sentenced-life-imprisonment-city-murder/', 0.65, 233, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260807101500_233', 'ent_andrew-lloyd-webber', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in whatsonstage.com', 'Andrew Lloyd Webber mentioned in whatsonstage.com', 'src_gdelt',
   'https://www.whatsonstage.com/news/cats-review-a-new-day-has-begun-with-drew-mconies-magical-revival_1728800/', 0.65, 233, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260807103000_234', 'ent_andrew-jackson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in watoday.com.au', 'Andrew Jackson mentioned in watoday.com.au', 'src_gdelt',
   'https://www.watoday.com.au/business/companies/billionaire-hotelier-hemmes-pockets-another-pub-shelling-out-50m-for-sackville-hotel-20260806-p60m08.html', 0.65, 234, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260807103000_234', 'ent_buzz-aldrin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in hngnews.com', 'Buzz Aldrin mentioned in hngnews.com', 'src_gdelt',
   'http://www.hngnews.com/nation_world/ap-trending-summarybrief-at-2-18-a-m-edt/article_8e163ff6-89a9-5107-9787-397a5968bbc9.html', 0.65, 234, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_orr_20260807103000_234', 'ent_bobby-orr', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobby Orr mentioned in richlandsource.com', 'Bobby Orr mentioned in richlandsource.com', 'src_gdelt',
   'https://www.richlandsource.com/2026/08/07/third-saturday-in-august-comedy-show-in-mansfield-expected-to-fill-renaissance-theatre/', 0.65, 234, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260807103000_234', 'ent_alexander-graham-bell', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in artnews.com', 'Alexander Graham Bell mentioned in artnews.com', 'src_gdelt',
   'https://www.artnews.com/art-in-america/aia-reviews/new-museum-new-humans-review-cyborg-disability-1234794351/', 0.65, 234, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260807103000_234', 'ent_al-capone', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in indiatimes.com', 'Al Capone mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/world/rest-of-world/in-1925-a-man-sold-the-eiffel-tower-vanished-with-the-money-then-returned-to-pull-off-the-same-scam-again/articleshow/133027374.cms', 0.65, 234, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260807103000_234', 'ent_andrew-jackson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in eveningnews24.co.uk', 'Andrew Jackson mentioned in eveningnews24.co.uk', 'src_gdelt',
   'https://www.eveningnews24.co.uk/news/26444175.angry-young-man-sentenced-life-imprisonment-city-murder/', 0.65, 234, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobbi_brown_20260807104500_235', 'ent_bobbi-brown', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobbi Brown mentioned in belfastlive.co.uk', 'Bobbi Brown mentioned in belfastlive.co.uk', 'src_gdelt',
   'https://www.belfastlive.co.uk/whats-on/shopping/boots-shoppers-race-35-holiday-34405912', 0.65, 235, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260807110000_236', 'ent_andrew-carnegie', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in lasvegassun.com', 'Andrew Carnegie mentioned in lasvegassun.com', 'src_gdelt',
   'https://lasvegassun.com/news/2026/aug/07/elon-musk-surprisingly-doesnt-understand-abundance/', 0.65, 236, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260807110000_236', 'ent_billie-eilish', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in bostonglobe.com', 'Billie Eilish mentioned in bostonglobe.com', 'src_gdelt',
   'https://www.bostonglobe.com/2026/08/07/newsletters/starting-point/', 0.65, 236, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260807110000_236', 'ent_alice-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in wrkr.com', 'Alice Cooper mentioned in wrkr.com', 'src_gdelt',
   'https://wrkr.com/goose-lake-music-festival-anniversary/', 0.65, 236, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260807110000_236', 'ent_al-pacino', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in movieweb.com', 'Al Pacino mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/heat-stream-free-action-thriller-august-2026/', 0.65, 236, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260807110000_236', 'ent_billie-eilish', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in theoaklandpress.com', 'Billie Eilish mentioned in theoaklandpress.com', 'src_gdelt',
   'https://www.theoaklandpress.com/2026/08/07/howard-jones-fronts-80s-festival-at-meadow-brook-this-weekend/', 0.65, 236, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260807111500_237', 'ent_andrew-lloyd-webber', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in forbes.com', 'Andrew Lloyd Webber mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/baldwin/2026/08/07/how-to-invest-in-broadway-shows-for-fun-and-profit/', 0.65, 237, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260807111500_237', 'ent_barry-bonds', '2026-08-07', 2026, 'public_appearance', 'news',
   'THE CHEAP SEATS with STEVE CAMERON: Fixing the Mariners so they can win the AL Weak &#x2014; er, West (Barry Bonds mentioned)', 'THE CHEAP SEATS with STEVE CAMERON: Fixing the Mariners so they can win the AL Weak &#x2014; er, West', 'src_gdelt',
   'https://cdapress.com/news/2026/aug/07/the-cheap-seats-with-steve-cameron/', 0.65, 237, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260807111500_237', 'ent_andrew-lloyd-webber', '2026-08-07', 2026, 'public_appearance', 'news',
   'NU Municipal&#xA0; Band wraps 80th season (Andrew Lloyd Webber mentioned)', 'NU Municipal&#xA0; Band wraps 80th season', 'src_gdelt',
   'https://www.nujournal.com/news/local-news/2026/08/07/nu-municipal-band-wraps-80th-season/', 0.65, 237, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260807111500_237', 'ent_andrew-carnegie', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in wyofile.com', 'Andrew Carnegie mentioned in wyofile.com', 'src_gdelt',
   'https://wyofile.com/wyoming-shows-that-small-libraries-can-do-big-things/', 0.65, 237, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260807111500_237', 'plc_boston-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Boston University mentioned in forbes.com', 'Boston University mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/michaeltnietzel/2026/08/07/boston-university-is-latest-to-join-the-free-tuition-arms-race/', 0.65, 237, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260807113000_238', 'ent_aaron-burr', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aaron Burr mentioned in mirror.co.uk', 'Aaron Burr mentioned in mirror.co.uk', 'src_gdelt',
   'https://www.mirror.co.uk/3am/celebrity-news/spice-girl-mel-b-makes-37524906', 0.65, 238, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260807113000_238', 'ent_ivanka-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in rawstory.com', 'Ivanka Trump mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/trump-hair-2677670556/', 0.65, 238, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260807113000_238', 'ent_blake-lively', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in geo.tv', 'Blake Lively mentioned in geo.tv', 'src_gdelt',
   'https://www.geo.tv/latest/676563-taylor-swift-makes-emotional-move-amid-blake-lively-rift', 0.65, 238, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260807113000_238', 'ent_alexander-hamilton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in foxnews.com', 'Alexander Hamilton mentioned in foxnews.com', 'src_gdelt',
   'https://www.foxnews.com/politics/trumps-smithsonian-clash-exposes-striking-pattern-among-museum-curators', 0.65, 238, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260807113000_238', 'ent_aaron-burr', '2026-08-07', 2026, 'public_appearance', 'news',
   'Aaron Burr mentioned in aol.co.uk', 'Aaron Burr mentioned in aol.co.uk', 'src_gdelt',
   'https://www.aol.co.uk/articles/spice-girl-mel-b-makes-110213000.html', 0.65, 238, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260807114500_239', 'ent_andy-warhol', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in apollo-magazine.com', 'Andy Warhol mentioned in apollo-magazine.com', 'src_gdelt',
   'https://apollo-magazine.com/acquisitions-of-the-month-july-2026/', 0.65, 239, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260807114500_239', 'ent_audrey-hepburn', '2026-08-07', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in dailymail.com', 'Audrey Hepburn mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/lifestyle/article-16013521/bizarre-diet-hacks-decades-retro.html', 0.65, 239, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260807114500_239', 'ent_brian-de-palma', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in newsweek.com', 'Brian De Palma mentioned in newsweek.com', 'src_gdelt',
   'https://www.newsweek.com/entertainment/gillian-anderson-hannah-einbinder-reclaiming-final-girl-12289229', 0.65, 239, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_carlos_slim_20260807120000_240', 'ent_carlos-slim', '2026-08-07', 2026, 'public_appearance', 'news',
   'Carlos Slim mentioned in suntimes.com', 'Carlos Slim mentioned in suntimes.com', 'src_gdelt',
   'https://chicago.suntimes.com/other-views/2026/08/07/trading-cards-learning-classrooms-education-tisha-lewis-ellison', 0.65, 240, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260807120000_240', 'ent_abraham-lincoln', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in thefederalist.com', 'Abraham Lincoln mentioned in thefederalist.com', 'src_gdelt',
   'https://thefederalist.com/2026/08/07/if-you-didnt-get-a-great-education-its-never-been-easier-to-repair-it/', 0.65, 240, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260807120000_240', 'ent_andrew-lloyd-webber', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in timeout.com', 'Andrew Lloyd Webber mentioned in timeout.com', 'src_gdelt',
   'https://www.timeout.com/london/news/cats-regents-park-open-air-theatre-2026-review-080726', 0.65, 240, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260807120000_240', 'ent_bruce-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in santafenewmexican.com', 'Bruce Lee mentioned in santafenewmexican.com', 'src_gdelt',
   'https://www.santafenewmexican.com/magazines/legacy/nativejewelers2026/article_b096b936-d689-4006-9117-84aa815ebcc7.html', 0.65, 240, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260807120000_240', 'ent_eric-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in aol.com', 'Eric Trump mentioned in aol.com', 'src_gdelt',
   'https://www.aol.com/articles/lara-trump-breaks-silence-being-100200000.html', 0.65, 240, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adrien_brody_20260807120000_240', 'ent_adrien-brody', '2026-08-07', 2026, 'public_appearance', 'news',
   'Adrien Brody mentioned in gq-magazine.co.uk', 'Adrien Brody mentioned in gq-magazine.co.uk', 'src_gdelt',
   'https://www.gq-magazine.co.uk/article/willem-dafoe-prada-americas-cup-2026', 0.65, 240, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260807121500_241', 'ent_barry-sanders', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in iheart.com', 'Barry Sanders mentioned in iheart.com', 'src_gdelt',
   'https://wccfradio.iheart.com/content/2026-08-07-lions-sign-jahmyr-gibbs-to-record-breaking-extension/', 0.65, 241, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_golda_meir_20260807121500_241', 'ent_golda-meir', '2026-08-07', 2026, 'public_appearance', 'news',
   'Golda Meir mentioned in jpost.com', 'Golda Meir mentioned in jpost.com', 'src_gdelt',
   'http://www.jpost.com/opinion/article-904671', 0.65, 241, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260807121500_241', 'ent_barry-sanders', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in iheart.com', 'Barry Sanders mentioned in iheart.com', 'src_gdelt',
   'https://wncoam.iheart.com/content/2026-08-07-lions-sign-jahmyr-gibbs-to-record-breaking-extension/', 0.65, 241, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260807121500_241', 'ent_barry-sanders', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in iheart.com', 'Barry Sanders mentioned in iheart.com', 'src_gdelt',
   'https://newsradio1410.iheart.com/content/2026-08-07-lions-sign-jahmyr-gibbs-to-record-breaking-extension/', 0.65, 241, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260807121500_241', 'ent_barry-sanders', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in iheart.com', 'Barry Sanders mentioned in iheart.com', 'src_gdelt',
   'https://real923la.iheart.com/content/2026-08-07-lions-sign-jahmyr-gibbs-to-record-breaking-extension/', 0.65, 241, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260807121500_241', 'plc_brown-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brown University mentioned in wwaytv3.com', 'Brown University mentioned in wwaytv3.com', 'src_gdelt',
   'https://www.wwaytv3.com/north-carolina-officer-allegedly-used-flock-license-plate-cameras-to-track-boyfriends-ex-wife-police-chief/', 0.65, 241, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260807121500_241', 'ent_albert-einstein', '2026-08-07', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in newscientist.com', 'Albert Einstein mentioned in newscientist.com', 'src_gdelt',
   'https://www.newscientist.com/article/2583782-spacex-crash-site-on-moon-revealed-by-south-korean-orbiter/', 0.65, 241, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260807123000_242', 'ent_arnold-schwarzenegger', '2026-08-07', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in nypost.com', 'Arnold Schwarzenegger mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/07/real-estate/eric-schmidts-110m-la-estate-will-host-parties-not-family-life/', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260807123000_242', 'ent_alfred-hitchcock', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in collider.com', 'Alfred Hitchcock mentioned in collider.com', 'src_gdelt',
   'https://collider.com/best-movie-directors/', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_wilder_20260807123000_242', 'ent_billy-wilder', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Wilder mentioned in collider.com', 'Billy Wilder mentioned in collider.com', 'src_gdelt',
   'https://collider.com/best-movie-directors/', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260807123000_242', 'ent_sachin-tendulkar', '2026-08-07', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in livemint.com', 'Sachin Tendulkar mentioned in livemint.com', 'src_gdelt',
   'https://www.livemint.com/mint-lounge/ideas/pakistan-theme-plot-indian-partition-books-films-11786029356946.html', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260807123000_242', 'ent_bruno-mars', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in stylecaster.com', 'Bruno Mars mentioned in stylecaster.com', 'src_gdelt',
   'https://stylecaster.com/entertainment/music/1234936883/leon-thomas-bruno-mars/', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_fred_trump_20260807123000_242', 'ent_fred-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Fred Trump mentioned in capitolhillblue.com', 'Fred Trump mentioned in capitolhillblue.com', 'src_gdelt',
   'https://capitolhillblue.com/node/103447', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dole_20260807123000_242', 'ent_bob-dole', '2026-08-07', 2026, 'public_appearance', 'news',
   'Tim Phillips Show, 8/7/26 - KLTZ/MIX-93 (Bob Dole mentioned)', 'Tim Phillips Show, 8/7/26 - KLTZ/MIX-93', 'src_gdelt',
   'https://www.kltz.com/tim-shows/tim-phillips-show-8-7-26', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260807123000_242', 'ent_andy-warhol', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in collider.com', 'Andy Warhol mentioned in collider.com', 'src_gdelt',
   'https://collider.com/author/shae-sennett/', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260807123000_242', 'ent_albert-einstein', '2026-08-07', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in sandiegouniontribune.com', 'Albert Einstein mentioned in sandiegouniontribune.com', 'src_gdelt',
   'https://www.sandiegouniontribune.com/2026/08/07/flowers-mouthwash-and-a-podcast-how-one-san-diego-charter-school-leader-spent-tens-of-thousands-in-public-money/', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260807123000_242', 'ent_ben-affleck', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in collider.com', 'Ben Affleck mentioned in collider.com', 'src_gdelt',
   'https://collider.com/books-tv-show-adaptation-long-running-series-franchise/', 0.65, 242, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260807130000_244', 'ent_axl-rose', '2026-08-07', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in myq1075.com', 'Axl Rose mentioned in myq1075.com', 'src_gdelt',
   'https://myq1075.com/ixp/295/p/ozzy-osbourne-axl-rose-only-meeting/', 0.65, 244, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260807130000_244', 'ent_axl-rose', '2026-08-07', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in wblm.com', 'Axl Rose mentioned in wblm.com', 'src_gdelt',
   'https://wblm.com/ixp/295/p/ozzy-osbourne-axl-rose-only-meeting/', 0.65, 244, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260807131500_245', 'ent_arnold-schwarzenegger', '2026-08-07', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in theguardian.com', 'Arnold Schwarzenegger mentioned in theguardian.com', 'src_gdelt',
   'https://www.theguardian.com/film/2026/aug/07/james-cameron-avatar-trilogy-quit-as-director', 0.65, 245, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260807133000_246', 'ent_melania-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in ibtimes.co.uk', 'Melania Trump mentioned in ibtimes.co.uk', 'src_gdelt',
   'https://www.ibtimes.co.uk/nicki-minaj-warned-missed-opportunity-rapper-enters-talks-record-duet-lara-trump-1813059', 0.65, 246, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260807133000_246', 'ent_angela-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in theconversation.com', 'Angela Davis mentioned in theconversation.com', 'src_gdelt',
   'https://theconversation.com/trump-administration-revives-conspiracy-theories-about-cubas-alleged-manipulation-of-activism-in-the-us-288988', 0.65, 246, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abigail_johnson_20260807133000_246', 'ent_abigail-johnson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abigail Johnson mentioned in yahoo.com', 'Abigail Johnson mentioned in yahoo.com', 'src_gdelt',
   'https://finance.yahoo.com/markets/stocks/articles/fidelity-aum-nears-8t-riding-040200762.html', 0.65, 246, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260807134500_247', 'ent_ivanka-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in thehayride.com', 'Ivanka Trump mentioned in thehayride.com', 'src_gdelt',
   'https://thehayride.com/2026/08/young-2026-midterm-prayer-guide/', 0.65, 247, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_golda_meir_20260807134500_247', 'ent_golda-meir', '2026-08-07', 2026, 'public_appearance', 'news',
   'Golda Meir mentioned in jpost.com', 'Golda Meir mentioned in jpost.com', 'src_gdelt',
   'https://www.jpost.com/opinion/article-904671', 0.65, 247, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260807134500_247', 'ent_andy-warhol', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in forbes.com', 'Andy Warhol mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/jimdobson/2026/08/07/ritz-carlton-yacht-collection-is-turning-cruises-into-luxury-brand-collaborations/', 0.65, 247, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260807134500_247', 'ent_adam-scott', '2026-08-07', 2026, 'public_appearance', 'news',
   '''Now I can watch Friends without punishing myself'': Lisa Kudrow moves beyond Phoebe w (Adam Scott mentioned)', '''Now I can watch Friends without punishing myself'': Lisa Kudrow moves beyond Phoebe w', 'src_gdelt',
   'https://www.ynetnews.com/culture/article/rktok1zlgx', 0.65, 247, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260807134500_247', 'ent_al-capone', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in 1025kiss.com', 'Al Capone mentioned in 1025kiss.com', 'src_gdelt',
   'https://1025kiss.com/ixp/63/p/el-chuco-nickname-origins/', 0.65, 247, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260807140000_248', 'ent_angela-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in wyomingnews.com', 'Angela Davis mentioned in wyomingnews.com', 'src_gdelt',
   'http://www.wyomingnews.com/news/national/trump-administration-revives-conspiracy-theories-about-cuba-s-alleged-manipulation-of-activism-in-the-us/article_c9731666-0548-5180-85c9-63ee96581596.html', 0.65, 248, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260807140000_248', 'ent_angela-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in sanfordherald.com', 'Angela Davis mentioned in sanfordherald.com', 'src_gdelt',
   'https://www.sanfordherald.com/news/national/trump-administration-revives-conspiracy-theories-about-cuba-s-alleged-manipulation-of-activism-in-the-us/article_ddce041a-928a-54f8-b6ff-9f715caa8c34.html', 0.65, 248, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260807140000_248', 'ent_angela-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in bryantimes.com', 'Angela Davis mentioned in bryantimes.com', 'src_gdelt',
   'https://www.bryantimes.com/news/election/trump-administration-revives-conspiracy-theories-about-cuba-s-alleged-manipulation-of-activism-in-the-us/article_27d1cbfc-6e80-5055-8646-d3fb5671925b.html', 0.65, 248, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ann_lee_20260807140000_248', 'ent_ann-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ann Lee mentioned in mashable.com', 'Ann Lee mentioned in mashable.com', 'src_gdelt',
   'https://mashable.com/entertainment/the-last-house-ending-explained', 0.65, 248, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260807141500_249', 'ent_andrew-carnegie', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in mercurynews.com', 'Andrew Carnegie mentioned in mercurynews.com', 'src_gdelt',
   'https://www.mercurynews.com/2026/08/07/mukunda-what-elon-musk-doesnt-understand-abundance/', 0.65, 249, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betsy_ross_20260807141500_249', 'ent_betsy-ross', '2026-08-07', 2026, 'public_appearance', 'news',
   'Betsy Ross mentioned in penbaypilot.com', 'Betsy Ross mentioned in penbaypilot.com', 'src_gdelt',
   'https://www.penbaypilot.com:443/article/neill-c-peterson-obituary/273177', 0.65, 249, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260807141500_249', 'ent_angela-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in bransontrilakesnews.com', 'Angela Davis mentioned in bransontrilakesnews.com', 'src_gdelt',
   'https://www.bransontrilakesnews.com/news/national/article_d13d285c-49fb-57e9-807b-60cbe8558ba7.html', 0.65, 249, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260807143000_250', 'ent_brian-chesky', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in themarketsdaily.com', 'Brian Chesky mentioned in themarketsdaily.com', 'src_gdelt',
   'https://www.themarketsdaily.com/2026/08/07/airbnb-nasdaqabnb-reaches-new-1-year-high-after-strong-earnings.html', 0.65, 250, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260807143000_250', 'ent_andrew-jackson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in valdostadailytimes.com', 'Andrew Jackson mentioned in valdostadailytimes.com', 'src_gdelt',
   'https://valdostadailytimes.com/2026/08/07/dean-poling-book-reviews-ransom-daniel-silva/', 0.65, 250, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260807143000_250', 'ent_blake-shelton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in springfieldnewssun.com', 'Blake Shelton mentioned in springfieldnewssun.com', 'src_gdelt',
   'https://www.springfieldnewssun.com/lifestyles/list-of-things-to-do-this-weekend-includes-a-lot-of-music-food-another-county/article_6529fd36-ac39-50f3-9c5f-aca3714261bb.html', 0.65, 250, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_harrison_20260807143000_250', 'ent_anna-harrison', '2026-08-07', 2026, 'public_appearance', 'news',
   'Anna Harrison mentioned in independent.co.uk', 'Anna Harrison mentioned in independent.co.uk', 'src_gdelt',
   'https://www.independent.co.uk/news/uk/home-news/subsidence-uk-home-damage-heatwave-insurance-b3029178.html', 0.65, 250, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260807143000_250', 'ent_alfred-hitchcock', '2026-08-07', 2026, 'public_appearance', 'news',
   'Studio 91.1 Presents: Vintage Hitchcock (Alfred Hitchcock mentioned)', 'Studio 91.1 Presents: Vintage Hitchcock', 'src_gdelt',
   'https://www.wshu.org/studio-91-1-presents-vintage-hitchcock', 0.65, 250, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260807144500_251', 'ent_arnold-schwarzenegger', '2026-08-07', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in eurweb.com', 'Arnold Schwarzenegger mentioned in eurweb.com', 'src_gdelt',
   'https://eurweb.com/jonathan-majors-battles-campus-terrorists-in-official-run-hide-fight-infidels-trailer-watch/', 0.65, 251, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260807144500_251', 'ent_blake-shelton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in wgna.com', 'Blake Shelton mentioned in wgna.com', 'src_gdelt',
   'https://wgna.com/emily-ann-roberts-frog-alley/', 0.65, 251, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260807144500_251', 'ent_al-capone', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in newstalk1290.com', 'Al Capone mentioned in newstalk1290.com', 'src_gdelt',
   'https://newstalk1290.com/ixp/63/p/el-chuco-nickname-origins/', 0.65, 251, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260807144500_251', 'ent_al-capone', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in koolfmabilene.com', 'Al Capone mentioned in koolfmabilene.com', 'src_gdelt',
   'https://koolfmabilene.com/ixp/63/p/el-chuco-nickname-origins/', 0.65, 251, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260807150000_252', 'ent_melania-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in ktwb.com', 'Melania Trump mentioned in ktwb.com', 'src_gdelt',
   'https://ktwb.com/2026/08/07/ryans-entertainment-update-friday-august-7/', 0.65, 252, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260807151500_253', 'ent_al-capone', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in 975kgkl.com', 'Al Capone mentioned in 975kgkl.com', 'src_gdelt',
   'https://975kgkl.com/ixp/63/p/el-chuco-nickname-origins/', 0.65, 253, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_russell_20260807151500_253', 'ent_bill-russell', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bill Russell mentioned in timesfreepress.com', 'Bill Russell mentioned in timesfreepress.com', 'src_gdelt',
   'https://www.timesfreepress.com/news/2026/aug/07/5-at-10-friday-mailbag-with-rushmores-nfl-rule/', 0.65, 253, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_orr_20260807151500_253', 'ent_bobby-orr', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobby Orr mentioned in timesfreepress.com', 'Bobby Orr mentioned in timesfreepress.com', 'src_gdelt',
   'https://www.timesfreepress.com/news/2026/aug/07/5-at-10-friday-mailbag-with-rushmores-nfl-rule/', 0.65, 253, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260807151500_253', 'plc_brown-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brown University mentioned in justsecurity.org', 'Brown University mentioned in justsecurity.org', 'src_gdelt',
   'https://www.justsecurity.org/author/leberandrew/', 0.65, 253, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260807151500_253', 'ent_brian-chesky', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in news.az', 'Brian Chesky mentioned in news.az', 'src_gdelt',
   'https://news.az/news/airbnb-ai-is-paying-off-as-shares-jump-and-revenue-outlook-rises', 0.65, 253, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bud_abbott_20260807151500_253', 'ent_bud-abbott', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bud Abbott mentioned in vice.com', 'Bud Abbott mentioned in vice.com', 'src_gdelt',
   'https://www.vice.com/en/article/69-years-ago-abbott-and-costellos-feud-took-a-very-nsfw-turn/', 0.65, 253, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260807153000_254', 'ent_alicia-keys', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in surinenglish.com', 'Alicia Keys mentioned in surinenglish.com', 'src_gdelt',
   'https://www.surinenglish.com/lifestyle/people/joaquin-cortes-taking-flamenco-the-global-stage-20260731110446-nt.html', 0.65, 254, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivana_trump_20260807153000_254', 'ent_ivana-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ivana Trump mentioned in hindustantimes.com', 'Ivana Trump mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/trending/us/donald-trumps-scalp-reduction-memes-go-viral-internet-compares-his-hair-to-cat-caterpillar-scurrying-away-101786112955712.html', 0.65, 254, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amherst_college_20260807153000_254', 'plc_amherst-college', '2026-08-07', 2026, 'public_appearance', 'news',
   'Amherst College mentioned in bigislandnow.com', 'Amherst College mentioned in bigislandnow.com', 'src_gdelt',
   'https://bigislandnow.com/2026/08/07/native-hawaiian-turnout-for-elections-is-low-two-college-students-created-resource-to-bolster-voting/', 0.65, 254, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260807153000_254', 'ent_brian-chesky', '2026-08-07', 2026, 'public_appearance', 'news',
   'Airbnb hits four-year high as annual revenue forecast raised (Brian Chesky mentioned)', 'Airbnb hits four-year high as annual revenue forecast raised', 'src_gdelt',
   'https://www.bnnbloomberg.ca/business/company-news/2026/08/07/airbnb-hits-four-year-high-as-investors-cheer-revenue-forecast-raise-ai-payoff/', 0.65, 254, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benedict_arnold_20260807153000_254', 'ent_benedict-arnold', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benedict Arnold mentioned in t-g.com', 'Benedict Arnold mentioned in t-g.com', 'src_gdelt',
   'http://www.t-g.com/premium/theconversation/stories/1776s-declaration-of-independence-inspired-washingtons-troops-to-fight-against-the-odds-,227732', 0.65, 254, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260807153000_254', 'ent_brian-chesky', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in indiatimes.com', 'Brian Chesky mentioned in indiatimes.com', 'src_gdelt',
   'https://economictimes.indiatimes.com/markets/us-stocks/wall-street-guide/airbnb-shares-surge-15-to-four-year-high-on-raised-forecast-ai-gains/articleshow/133036764.cms', 0.65, 254, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260807154500_255', 'ent_lee-kuan-yew', '2026-08-07', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in forbes.com', 'Lee Kuan Yew mentioned in forbes.com', 'src_gdelt',
   'https://www.forbes.com/sites/nathanlewis/2026/08/07/how-el-salvador-can-become-singapore-west/', 0.65, 255, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_johnson_20260807154500_255', 'ent_andrew-johnson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Johnson mentioned in bengals.com', 'Andrew Johnson mentioned in bengals.com', 'src_gdelt',
   'https://www.bengals.com/news/training-camp-report-how-dohnte-meyers-got-here-and-the-rookie-invasion', 0.65, 255, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260807154500_255', 'ent_buffalo-bill', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in kingfm.com', 'Buffalo Bill mentioned in kingfm.com', 'src_gdelt',
   'https://kingfm.com/ixp/10/p/josh-allen-crunch-time-cereal/', 0.65, 255, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260807160000_256', 'ent_blake-shelton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in daytondailynews.com', 'Blake Shelton mentioned in daytondailynews.com', 'src_gdelt',
   'https://www.daytondailynews.com/lifestyles/list-of-things-to-do-this-weekend-includes-a-lot-of-music-food-another-county/article_c9244936-b4d0-50f6-8d74-0ffed133790c.html', 0.65, 256, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_graham_20260807161500_257', 'ent_billy-graham', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Graham mentioned in afr.net', 'Billy Graham mentioned in afr.net', 'src_gdelt',
   'https://afr.net:443/podcasts/real-truth-for-today-with-jeff-schreve/2026/august/standing-in-the-gap-for-christ-with-rev-tim-todd/', 0.65, 257, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_graham_20260807161500_257', 'ent_billy-graham', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billy Graham mentioned in afr.net', 'Billy Graham mentioned in afr.net', 'src_gdelt',
   'https://afr.net/podcasts/todays-issues-with-tim-wildmon-and-company/2026/july/dr-walter-wendler-discusses-the-democratic-socialist-of-america/', 0.65, 257, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivana_trump_20260807163000_258', 'ent_ivana-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ivana Trump mentioned in dailystar.co.uk', 'Ivana Trump mentioned in dailystar.co.uk', 'src_gdelt',
   'https://www.dailystar.co.uk/news/us-news/what-going-beneath-trumps-mrs-37525805', 0.65, 258, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260807164500_259', 'ent_black-hawk', '2026-08-07', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in breakingdefense.com', 'Black Hawk mentioned in breakingdefense.com', 'src_gdelt',
   'https://breakingdefense.com/2026/07/networked-for-the-fight-army-aviations-next-advantage/', 0.65, 259, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260807164500_259', 'ent_brian-chesky', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in livemint.com', 'Brian Chesky mentioned in livemint.com', 'src_gdelt',
   'https://www.livemint.com/market/stock-market-news/airbnb-shares-surge-16-to-4-year-high-on-q2-beat-full-year-outlook-raised-for-second-time-11786113146220.html', 0.65, 259, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_university_20260807164500_259', 'plc_boston-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Boston University mentioned in newjerseytelegraph.com', 'Boston University mentioned in newjerseytelegraph.com', 'src_gdelt',
   'http://www.newjerseytelegraph.com/news/279226622/ai-expert-amol-walvekar-builds-first-ever-rag-powered-custom-ai-for-finance-processes', 0.65, 259, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260807164500_259', 'plc_brown-university', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brown University mentioned in swimswam.com', 'Brown University mentioned in swimswam.com', 'src_gdelt',
   'https://swimswam.com/indiana-university-to-rejoin-collegiate-water-polo-association-for-2028-season/', 0.65, 259, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260807164500_259', 'ent_blake-lively', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in hellomagazine.com', 'Blake Lively mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/brides/916968/jennifer-garner-modest-engagement-ring/', 0.65, 259, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_antony_blinken_20260807170000_260', 'ent_antony-blinken', '2026-08-07', 2026, 'public_appearance', 'news',
   'Antony Blinken mentioned in thefederalist.com', 'Antony Blinken mentioned in thefederalist.com', 'src_gdelt',
   'https://thefederalist.com/2026/08/07/today-in-republicans-being-useless-murkowski-tries-but-fails-to-sink-blanche-confirmation/', 0.65, 260, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_antony_blinken_20260807171500_261', 'ent_antony-blinken', '2026-08-07', 2026, 'public_appearance', 'news',
   'Antony Blinken mentioned in truthout.org', 'Antony Blinken mentioned in truthout.org', 'src_gdelt',
   'https://truthout.org/articles/us-war-on-icc-isnt-new-isnt-just-coming-from-gop-and-isnt-just-about-israel/', 0.65, 261, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivana_trump_20260807171500_261', 'ent_ivana-trump', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ivana Trump mentioned in hindustantimes.com', 'Ivana Trump mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/world-news/us-news/whats-beneath-trumps-new-hamster-hair-all-we-know-about-brutal-scalp-surgery-amid-mrs-doubtfire-buzz-101786109938779.html', 0.65, 261, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260807171500_261', 'ent_alexander-hamilton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in citizensvoice.com', 'Alexander Hamilton mentioned in citizensvoice.com', 'src_gdelt',
   'https://www.citizensvoice.com/2026/08/07/letter-trump-enriches-himself-at-public-trough/', 0.65, 261, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260807173000_262', 'ent_billie-holiday', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in jazzjournal.co.uk', 'Billie Holiday mentioned in jazzjournal.co.uk', 'src_gdelt',
   'https://jazzjournal.co.uk/2026/08/07/reviewed-adasiewicz-erb-roebke-ralph-alessi-ran-blake-dominique-eade/', 0.65, 262, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260807174500_263', 'ent_amelia-earhart', '2026-08-07', 2026, 'public_appearance', 'news',
   'Amelia Earhart mentioned in bleedingcool.com', 'Amelia Earhart mentioned in bleedingcool.com', 'src_gdelt',
   'https://bleedingcool.com/tv/president-curtis-his-team-have-some-issues-s01e03-ex-preview/', 0.65, 263, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260807174500_263', 'ent_babe-ruth', '2026-08-07', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in variety.com', 'Babe Ruth mentioned in variety.com', 'src_gdelt',
   'https://variety.com/2026/tv/news/new-york-yankees-netflix-drama-jason-bateman-mlb-josh-wakely-1236829636/', 0.65, 263, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260807174500_263', 'ent_buddy-holly', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in dailymail.com', 'Buddy Holly mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tv/article-16036257/From-brilliant-documentary-Barrow-grooming-story-Ricky-Gervaiss-sweary-one-star-comedy-cats-heres-critics-guide-19-biggest-TV-shows-films-stream-weekend.html', 0.65, 263, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260807180000_264', 'ent_buddy-holly', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buddy Holly mentioned in rollingstone.com', 'Buddy Holly mentioned in rollingstone.com', 'src_gdelt',
   'https://www.rollingstone.com/music/music-lists/best-grateful-dead-songs-1235593953/', 0.65, 264, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260807180000_264', 'ent_alexander-hamilton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in thetimes-tribune.com', 'Alexander Hamilton mentioned in thetimes-tribune.com', 'src_gdelt',
   'https://www.thetimes-tribune.com/2026/08/07/letter-trump-enriches-himself-at-public-trough/', 0.65, 264, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260807180000_264', 'ent_buzz-aldrin', '2026-08-07', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in averyjournal.com', 'Buzz Aldrin mentioned in averyjournal.com', 'src_gdelt',
   'http://www.averyjournal.com/ap/national/ap-trending-summarybrief-at-12-06-p-m-edt/article_029a0153-d330-55ed-82cd-005d5c9506c6.html', 0.65, 264, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260807180000_264', 'ent_billie-jean-king', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in nassauweekly.com', 'Billie Jean King mentioned in nassauweekly.com', 'src_gdelt',
   'https://nassauweekly.com/single_kid_finalists/', 0.65, 264, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260807181500_265', 'ent_brian-de-palma', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in screenrant.com', 'Brian De Palma mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/stephen-king-carrie-first-ever-movie-leaving-streaming-august-2026/', 0.65, 265, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260807181500_265', 'ent_al-pacino', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in vice.com', 'Al Pacino mentioned in vice.com', 'src_gdelt',
   'https://www.vice.com/en/article/theres-a-ghost-hiding-in-the-godfather-and-even-francis-ford-coppola-didnt-catch-it/', 0.65, 265, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bette_davis_20260807181500_265', 'ent_bette-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Brian Robinson obituary: BFI press officer and programmer with incomparable flair (Bette Davis mentioned)', 'Brian Robinson obituary: BFI press officer and programmer with incomparable flair', 'src_gdelt',
   'https://www.bfi.org.uk/features/brian-robinson-obituary-bfi-press-officer-programmer-with-incomparable-flair', 0.65, 265, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260807183000_266', 'ent_alexander-hamilton', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in standardspeaker.com', 'Alexander Hamilton mentioned in standardspeaker.com', 'src_gdelt',
   'https://www.standardspeaker.com/2026/08/07/letter-trump-enriches-himself-at-public-trough/', 0.65, 266, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260807184500_267', 'ent_bruce-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in movieweb.com', 'Bruce Lee mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/blades-of-the-guardians-4k-blu-ray-release/', 0.65, 267, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260807184500_267', 'ent_al-pacino', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in movieweb.com', 'Al Pacino mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/the-godfather-stream-free-pluto-august-2026/', 0.65, 267, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260807184500_267', 'ent_amelia-earhart', '2026-08-07', 2026, 'public_appearance', 'news',
   'Amelia Earhart mentioned in dailykos.com', 'Amelia Earhart mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/7/800080600/community/pwb-peeps-feline-fine-fridaii/', 0.65, 267, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_allen_ginsberg_20260807190000_268', 'ent_allen-ginsberg', '2026-08-07', 2026, 'public_appearance', 'news',
   'Allen Ginsberg mentioned in thelodownny.com', 'Allen Ginsberg mentioned in thelodownny.com', 'src_gdelt',
   'https://www.thelodownny.com/leslog/2026/08/the-east-village-never-stood-still-daniel-root-captures-what-changed-and-what-didnt.html', 0.65, 268, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260807191500_269', 'ent_andrew-jackson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in theonefeather.com', 'Andrew Jackson mentioned in theonefeather.com', 'src_gdelt',
   'https://theonefeather.com/2026/08/07/dinilawigi-votes-to-finalize-conveyance-of-fort-butler-park-to-ebci/', 0.65, 269, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260807191500_269', 'ent_alice-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in 987jack.com', 'Alice Cooper mentioned in 987jack.com', 'src_gdelt',
   'https://987jack.com/ixp/366/p/foo-fighters-most-played-cover-songs/', 0.65, 269, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260807193000_270', 'ent_bruce-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Love Is The Answer, But What''s The Question? &#x2013; Boulder Jewish News (Bruce Lee mentioned)', 'Love Is The Answer, But What''s The Question? &#x2013; Boulder Jewish News', 'src_gdelt',
   'https://boulderjewishnews.org/2026/love-is-the-answer-but-whats-the-question/', 0.65, 270, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bette_davis_20260807194500_271', 'ent_bette-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bette Davis mentioned in out.com', 'Bette Davis mentioned in out.com', 'src_gdelt',
   'https://www.out.com/gay-tv-shows/ryan-murphy-queerest-shows', 0.65, 271, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260807200000_272', 'ent_alice-cooper', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in chrisd.ca', 'Alice Cooper mentioned in chrisd.ca', 'src_gdelt',
   'https://www.chrisd.ca/2026/08/07/brent-fitz-way-winnipeg-drummer-street-renaming/', 0.65, 272, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobbi_brown_20260807200000_272', 'ent_bobbi-brown', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobbi Brown mentioned in elle.com', 'Bobbi Brown mentioned in elle.com', 'src_gdelt',
   'https://www.elle.com/beauty/a73339691/no-mascara-trend-summer-2026/', 0.65, 272, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobbi_brown_20260807200000_272', 'ent_bobbi-brown', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobbi Brown mentioned in womenshealthmag.com', 'Bobbi Brown mentioned in womenshealthmag.com', 'src_gdelt',
   'https://www.womenshealthmag.com/beauty/a73345652/rise-of-bathhouse-culture/', 0.65, 272, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260807200000_272', 'ent_alfred-hitchcock', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in buenosairesherald.com', 'Alfred Hitchcock mentioned in buenosairesherald.com', 'src_gdelt',
   'https://buenosairesherald.com/culture-ideas/film-series/buenos-aires-film-clubs-offer-an-antidote-to-the-algorithm', 0.65, 272, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260807200000_272', 'ent_babe-ruth', '2026-08-07', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in si.com', 'Babe Ruth mentioned in si.com', 'src_gdelt',
   'https://www.si.com/media/nbc-mike-tomlin-going-to-be-television-star', 0.65, 272, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260807200000_272', 'ent_barry-bonds', '2026-08-07', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in pjmedia.com', 'Barry Bonds mentioned in pjmedia.com', 'src_gdelt',
   'https://pjmedia.com/eric-florack/2026/08/07/newsom-el-sayed-and-desperation-n4955908', 0.65, 272, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260807201500_273', 'ent_alexander-graham-bell', '2026-08-07', 2026, 'public_appearance', 'news',
   'Commentary: The Darien Scheme Disaster - Alan Sturrock (Alexander Graham Bell mentioned)', 'Commentary: The Darien Scheme Disaster - Alan Sturrock', 'src_gdelt',
   'https://www.whqr.org/inside-whqr/2026-08-07/commentary-alan-sturrock', 0.65, 273, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260807201500_273', 'ent_andrew-carnegie', '2026-08-07', 2026, 'public_appearance', 'news',
   'Commentary: The Darien Scheme Disaster - Alan Sturrock (Andrew Carnegie mentioned)', 'Commentary: The Darien Scheme Disaster - Alan Sturrock', 'src_gdelt',
   'https://www.whqr.org/inside-whqr/2026-08-07/commentary-alan-sturrock', 0.65, 273, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260807203000_274', 'ent_blake-lively', '2026-08-07', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in cinemablend.com', 'Blake Lively mentioned in cinemablend.com', 'src_gdelt',
   'https://www.cinemablend.com/streaming-news/khloe-kardashian-very-kind-perez-hilton-made-amends-britney-spears', 0.65, 274, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260807204500_275', 'ent_al-pacino', '2026-08-07', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in collider.com', 'Al Pacino mentioned in collider.com', 'src_gdelt',
   'https://collider.com/perfect-cat-and-mouse-thriller-movies-ranked/', 0.65, 275, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260807204500_275', 'ent_alfred-hitchcock', '2026-08-07', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in collider.com', 'Alfred Hitchcock mentioned in collider.com', 'src_gdelt',
   'https://collider.com/perfect-cat-and-mouse-thriller-movies-ranked/', 0.65, 275, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260807204500_275', 'ent_billie-holiday', '2026-08-07', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in pitchfork.com', 'Billie Holiday mentioned in pitchfork.com', 'src_gdelt',
   'https://pitchfork.com/reviews/albums/sade-diamond-life/', 0.65, 275, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bette_davis_20260807210000_276', 'ent_bette-davis', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bette Davis mentioned in globalcomment.com', 'Bette Davis mentioned in globalcomment.com', 'src_gdelt',
   'https://globalcomment.com/star-power-the-golden-age-of-charisma-late-to-the-movies/', 0.65, 276, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_banneker_20260807211500_277', 'ent_benjamin-banneker', '2026-08-07', 2026, 'public_appearance', 'news',
   'Benjamin Banneker mentioned in dailykos.com', 'Benjamin Banneker mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/7/800080436/community/black-kos/', 0.65, 277, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260807211500_277', 'ent_bob-fosse', '2026-08-07', 2026, 'public_appearance', 'news',
   'Revisiting the Weimar Republic (Bob Fosse mentioned)', 'Revisiting the Weimar Republic', 'src_gdelt',
   'https://morningstaronline.co.uk/article/revisiting-weimar-republic', 0.65, 277, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ann_lee_20260807220000_280', 'ent_ann-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Ann Lee mentioned in decider.com', 'Ann Lee mentioned in decider.com', 'src_gdelt',
   'https://decider.com/2026/08/07/the-last-house-netflix-review-stream-it-or-skip-it/', 0.65, 280, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260807221500_281', 'ent_bruce-lee', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in movieweb.com', 'Bruce Lee mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/best-final-fights-classic-kung-fu-movies/', 0.65, 281, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260807223000_282', 'ent_black-hawk', '2026-08-07', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in postregister.com', 'Black Hawk mentioned in postregister.com', 'src_gdelt',
   'http://www.postregister.com/news/local/above-the-backcountry-idaho-army-national-guards-aviation-crews-save-lives-others-cant-reach/article_ec30d605-c47d-5b92-b9ce-6c5b2ba1fc43.html', 0.65, 282, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abigail_johnson_20260807231500_285', 'ent_abigail-johnson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abigail Johnson mentioned in theland.com.au', 'Abigail Johnson mentioned in theland.com.au', 'src_gdelt',
   'https://www.theland.com.au/story/9326273/bullakeana-you-the-man-ultrablack-champion-eyes-beef-2027/', 0.65, 285, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_orr_20260807231500_285', 'ent_bobby-orr', '2026-08-07', 2026, 'public_appearance', 'news',
   'Bobby Orr mentioned in yardbarker.com', 'Bobby Orr mentioned in yardbarker.com', 'src_gdelt',
   'https://www.yardbarker.com/nhl/articles/debating_the_best_decade_in_nhl_history/s1_16958_44147879', 0.65, 285, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abigail_johnson_20260807231500_285', 'ent_abigail-johnson', '2026-08-07', 2026, 'public_appearance', 'news',
   'Abigail Johnson mentioned in theland.com.au', 'Abigail Johnson mentioned in theland.com.au', 'src_gdelt',
   'https://www.theland.com.au/story/9326220/royal-queensland-show-2026-brangus-champions-impress-judge/', 0.65, 285, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_carlos_slim_20260807234500_287', 'ent_carlos-slim', '2026-08-07', 2026, 'public_appearance', 'news',
   'Today''s Happenings: August 8, 2026 | South Peace News (Carlos Slim mentioned)', 'Today''s Happenings: August 8, 2026 | South Peace News', 'src_gdelt',
   'https://www.southpeacenews.com/todays-happenings-august-8-2026/', 0.65, 287, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brigham_young_20260807234500_287', 'ent_brigham-young', '2026-08-07', 2026, 'public_appearance', 'news',
   'Today''s Happenings: August 8, 2026 | South Peace News (Brigham Young mentioned)', 'Today''s Happenings: August 8, 2026 | South Peace News', 'src_gdelt',
   'https://www.southpeacenews.com/todays-happenings-august-8-2026/', 0.65, 287, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260808000000_288', 'ent_donald-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in newkerala.com', 'Donald Trump mentioned in newkerala.com', 'src_gdelt',
   'https://www.newkerala.com/news/a/us-sanctions-six-entities-one-individual-linked-irans-974.htm', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260808000000_288', 'ent_donald-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in illawarramercury.com.au', 'Donald Trump mentioned in illawarramercury.com.au', 'src_gdelt',
   'https://www.illawarramercury.com.au/story/9326289/us-invests-billions-in-mining-projects-to-boost-defence/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260808000000_288', 'ent_abraham-lincoln', '2026-08-08', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in mercurynews.com', 'Abraham Lincoln mentioned in mercurynews.com', 'src_gdelt',
   'https://www.mercurynews.com/2026/08/07/america-250-patriotic-songs/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260808000000_288', 'ent_aretha-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in mercurynews.com', 'Aretha Franklin mentioned in mercurynews.com', 'src_gdelt',
   'https://www.mercurynews.com/2026/08/07/america-250-patriotic-songs/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260808000000_288', 'ent_barack-obama', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in mercurynews.com', 'Barack Obama mentioned in mercurynews.com', 'src_gdelt',
   'https://www.mercurynews.com/2026/08/07/america-250-patriotic-songs/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260808000000_288', 'ent_bruce-springsteen', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in mercurynews.com', 'Bruce Springsteen mentioned in mercurynews.com', 'src_gdelt',
   'https://www.mercurynews.com/2026/08/07/america-250-patriotic-songs/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260808000000_288', 'ent_donald-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in gulfcoastnewsnow.com', 'Donald Trump mentioned in gulfcoastnewsnow.com', 'src_gdelt',
   'https://www.gulfcoastnewsnow.com/article/todd-blanche-gains-pivotal-senate-support-for-attorney-general-nomination/73379980', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260808000000_288', 'ent_donald-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Donald Trump mentioned in crooksandliars.com', 'Donald Trump mentioned in crooksandliars.com', 'src_gdelt',
   'https://crooksandliars.com/2026/08/trumps-closest-aides-warn-he-has', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260808000000_288', 'ent_billie-eilish', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in iheart.com', 'Billie Eilish mentioned in iheart.com', 'src_gdelt',
   'https://bismarcksmix.iheart.com/content/2026-08-07-billie-eilish-unrecognizable-in-first-on-set-pics-from-feature-acting-debut/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_donald_trump_20260808000000_288', 'ent_donald-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'US sanctions on six entities, one individual linked to Iran''s illicit digital asset network following Strait of Hormuz attacks (Donald Trump mentioned)', 'US sanctions on six entities, one individual linked to Iran''s illicit digital asset network following Strait of Hormuz attacks', 'src_gdelt',
   'http://www.kenyastar.com/news/279226921/us-sanctions-on-six-entities-one-individual-linked-to-iran-illicit-digital-asset-network-following-strait-of-hormuz-attacks', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260808000000_288', 'ent_billie-eilish', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in iheart.com', 'Billie Eilish mentioned in iheart.com', 'src_gdelt',
   'https://hot995.iheart.com/content/2026-08-07-billie-eilish-unrecognizable-in-first-on-set-pics-from-feature-acting-debut/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260808000000_288', 'ent_abraham-lincoln', '2026-08-08', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in wkdq.com', 'Abraham Lincoln mentioned in wkdq.com', 'src_gdelt',
   'https://wkdq.com/ixp/76/p/alton-illinois-haunted-small-town/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260808000000_288', 'ent_barack-obama', '2026-08-08', 2026, 'public_appearance', 'news',
   'NPS to flush Reflecting Pool pipes as it blames issues on previous administrations (Barack Obama mentioned)', 'NPS to flush Reflecting Pool pipes as it blames issues on previous administrations', 'src_gdelt',
   'https://kjlhradio.com/nps-to-flush-reflecting-pool-pipes-as-it-blames-issues-on-previous-administrations/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260808000000_288', 'ent_aretha-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in mandurahmail.com.au', 'Aretha Franklin mentioned in mandurahmail.com.au', 'src_gdelt',
   'https://www.mandurahmail.com.au/story/9326276/music-legends-friendship-forged-among-the-flame-trees/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260808000000_288', 'ent_billie-eilish', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in iheart.com', 'Billie Eilish mentioned in iheart.com', 'src_gdelt',
   'https://mix973wheeling.iheart.com/content/2026-08-07-billie-eilish-unrecognizable-in-first-on-set-pics-from-feature-acting-debut/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260808000000_288', 'ent_narendra-modi', '2026-08-08', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in newkerala.com', 'Narendra Modi mentioned in newkerala.com', 'src_gdelt',
   'https://www.newkerala.com/news/a/abelardo-de-la-espriella-officially-sworn-as-colombias-533.htm', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260808000000_288', 'ent_bob-dylan', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in wmbr.org', 'Bob Dylan mentioned in wmbr.org', 'src_gdelt',
   'http://blog.wmbr.org/2026/08/07/remembering-alex-mcneil/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260808000000_288', 'ent_ariana-grande', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in yoursourceone.com', 'Ariana Grande mentioned in yoursourceone.com', 'src_gdelt',
   'https://www.yoursourceone.com/entertainment/ryan-murphy-might-bring-ariana-grande-back-for-a-future-american-horror-story-season/article_c064d4e1-974f-5156-a1c4-515fd24dd2dc.html', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260808000000_288', 'ent_aretha-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in sconeadvocate.com.au', 'Aretha Franklin mentioned in sconeadvocate.com.au', 'src_gdelt',
   'https://www.sconeadvocate.com.au/story/9326276/music-legends-friendship-forged-among-the-flame-trees/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260808000000_288', 'ent_billie-eilish', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in iheart.com', 'Billie Eilish mentioned in iheart.com', 'src_gdelt',
   'https://literock993.iheart.com/content/2026-08-07-billie-eilish-unrecognizable-in-first-on-set-pics-from-feature-acting-debut/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_eilish_20260808000000_288', 'ent_billie-eilish', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billie Eilish mentioned in iheart.com', 'Billie Eilish mentioned in iheart.com', 'src_gdelt',
   'https://106wcod.iheart.com/content/2026-08-07-billie-eilish-unrecognizable-in-first-on-set-pics-from-feature-acting-debut/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260808000000_288', 'ent_axl-rose', '2026-08-08', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in iheart.com', 'Axl Rose mentioned in iheart.com', 'src_gdelt',
   'https://963starcountry.iheart.com/content/2026-08-07-watch-carrie-underwoods-rock-influenced-snf-in-electrifying-sneak-peek/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260808000000_288', 'ent_barack-obama', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in nbcconnecticut.com', 'Barack Obama mentioned in nbcconnecticut.com', 'src_gdelt',
   'https://www.nbcconnecticut.com/news/national-international/court-rules-trump-must-get-approval-from-congress-on-ballroom-ordering-construction-halt/3762957/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260808000000_288', 'ent_aaron-rodgers', '2026-08-08', 2026, 'public_appearance', 'news',
   '2026 Camp Blog: Bringing the energy (Aaron Rodgers mentioned)', '2026 Camp Blog: Bringing the energy', 'src_gdelt',
   'http://www.oklahomacitysun.com/news/279226868/2026-camp-blog-bringing-the-energy', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260808000000_288', 'ent_barack-obama', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in 927thedrive.net', 'Barack Obama mentioned in 927thedrive.net', 'src_gdelt',
   'https://927thedrive.net/news/breaking-national-news/fe0be496fbdb2082b6cea940d4413f70', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bing_crosby_20260808000000_288', 'ent_bing-crosby', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bing Crosby mentioned in thestranger.com', 'Bing Crosby mentioned in thestranger.com', 'src_gdelt',
   'https://www.thestranger.com/theater/things-to-do-in-august-performance/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260808000000_288', 'ent_brad-paisley', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in elitedaily.com', 'Brad Paisley mentioned in elitedaily.com', 'src_gdelt',
   'https://www.elitedaily.com/entertainment/debut-taylors-version-collab-wish-list', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barack_obama_20260808000000_288', 'ent_barack-obama', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barack Obama mentioned in jns.org', 'Barack Obama mentioned in jns.org', 'src_gdelt',
   'https://www.jns.org/opinion/column/jonathan-s-tobin/a-man-of-courage-was-needed-instead-american-jews-have-schumer', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260808000000_288', 'ent_britney-spears', '2026-08-08', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in mandurahmail.com.au', 'Britney Spears mentioned in mandurahmail.com.au', 'src_gdelt',
   'https://www.mandurahmail.com.au/story/9326275/madonna-blur-producer-william-orbit-dies-aged-69/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260808000000_288', 'ent_andy-warhol', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in thestranger.com', 'Andy Warhol mentioned in thestranger.com', 'src_gdelt',
   'https://www.thestranger.com/august-2026/things-to-do-in-august-music/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260808000000_288', 'ent_melania-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in themarysue.com', 'Melania Trump mentioned in themarysue.com', 'src_gdelt',
   'https://www.themarysue.com/the-amazon-prime-docu-series-about-the-first-lady-is-arriving-in-the-fall/', 0.65, 288, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260808001500_289', 'ent_narendra-modi', '2026-08-08', 2026, 'public_appearance', 'news',
   'Abelardo De La Espriella officially sworn in as Colombia''s President (Narendra Modi mentioned)', 'Abelardo De La Espriella officially sworn in as Colombia''s President', 'src_gdelt',
   'http://www.austinglobe.com/news/279226955/abelardo-de-la-espriella-officially-sworn-in-as-colombia-president', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260808001500_289', 'ent_britney-spears', '2026-08-08', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in foxla.com', 'Britney Spears mentioned in foxla.com', 'src_gdelt',
   'https://www.foxla.com/news/william-orbit-dead', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260808001500_289', 'ent_axl-rose', '2026-08-08', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in iheart.com', 'Axl Rose mentioned in iheart.com', 'src_gdelt',
   'https://buckeyecountry1037.iheart.com/content/2026-08-07-watch-carrie-underwoods-rock-influenced-snf-in-electrifying-sneak-peek/', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260808001500_289', 'ent_narendra-modi', '2026-08-08', 2026, 'public_appearance', 'news',
   'Rahul Gandhi gets go-ahead for ''Chhatron Ki Goonj'' event in Prayagraj (Narendra Modi mentioned)', 'Rahul Gandhi gets go-ahead for ''Chhatron Ki Goonj'' event in Prayagraj', 'src_gdelt',
   'https://news.webindia123.com/news/Articles/India/20260807/4484220.html', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260808001500_289', 'ent_brett-kavanaugh', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in 933thedrive.com', 'Brett Kavanaugh mentioned in 933thedrive.com', 'src_gdelt',
   'https://www.933thedrive.com/2026/08/07/justice-alito-says-he-is-staying-on-supreme-court-for-another-term/', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260808001500_289', 'ent_aretha-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in muswellbrookchronicle.com.au', 'Aretha Franklin mentioned in muswellbrookchronicle.com.au', 'src_gdelt',
   'https://www.muswellbrookchronicle.com.au/story/9326276/music-legends-friendship-forged-among-the-flame-trees/', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260808001500_289', 'ent_brett-kavanaugh', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in wabx.net', 'Brett Kavanaugh mentioned in wabx.net', 'src_gdelt',
   'https://wabx.net/2026/08/07/justice-alito-says-he-is-staying-on-supreme-court-for-another-term/', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260808001500_289', 'ent_benjamin-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in newsitem.com', 'Benjamin Franklin mentioned in newsitem.com', 'src_gdelt',
   'https://www.newsitem.com/opinion/columnists/forward-thinking-imagining-the-next-250-years/article_73f6f0f3-7fe7-4e94-8d4f-ae5597a572b1.html', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260808001500_289', 'ent_ariana-grande', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in hits973.com', 'Ariana Grande mentioned in hits973.com', 'src_gdelt',
   'https://www.hits973.com/entertainment/ryan-murphy-might-bring-ariana-grande-back-future-american-horror-story-season/UZ2KNZWZAU5HPNT7YRTQCXWPIA/', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aretha_franklin_20260808001500_289', 'ent_aretha-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aretha Franklin mentioned in hepburnadvocate.com.au', 'Aretha Franklin mentioned in hepburnadvocate.com.au', 'src_gdelt',
   'https://www.hepburnadvocate.com.au/story/9326276/music-legends-friendship-forged-among-the-flame-trees/', 0.65, 289, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260808003000_290', 'ent_narendra-modi', '2026-08-08', 2026, 'public_appearance', 'news',
   'Netanyahu''s remarks ''gratuitous'' as India not backing war against Iran: Former diplomat on PM Modi-Netanyahu call (Narendra Modi mentioned)', 'Netanyahu''s remarks ''gratuitous'' as India not backing war against Iran: Former diplomat on PM Modi-Netanyahu call', 'src_gdelt',
   'http://www.asiabulletin.com/news/279226871/netanyahu-remarks-gratuitous-as-india-not-backing-war-against-iran-former-diplomat-on-pm-modi-netanyahu-call', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_narendra_modi_20260808003000_290', 'ent_narendra-modi', '2026-08-08', 2026, 'public_appearance', 'news',
   'Narendra Modi mentioned in dailyexcelsior.com', 'Narendra Modi mentioned in dailyexcelsior.com', 'src_gdelt',
   'https://www.dailyexcelsior.com/looking-beyond-delhi-protests/', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260808003000_290', 'ent_ariana-grande', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in warm1069.com', 'Ariana Grande mentioned in warm1069.com', 'src_gdelt',
   'https://warm1069.com/ryan-murphy-might-bring-ariana-grande-back-for-a-future-american-horror-story-season/', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260808003000_290', 'ent_aaron-rodgers', '2026-08-08', 2026, 'public_appearance', 'news',
   '2026 Camp Blog: Bringing the energy (Aaron Rodgers mentioned)', '2026 Camp Blog: Bringing the energy', 'src_gdelt',
   'http://www.oklahomastar.com/news/279226868/2026-camp-blog-bringing-the-energy', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260808003000_290', 'ent_britney-spears', '2026-08-08', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in fox26houston.com', 'Britney Spears mentioned in fox26houston.com', 'src_gdelt',
   'https://www.fox26houston.com/news/william-orbit-dead', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260808003000_290', 'ent_ariana-grande', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ariana Grande mentioned in mix929.com', 'Ariana Grande mentioned in mix929.com', 'src_gdelt',
   'https://mix929.com/2026/08/07/ryan-murphy-might-bring-ariana-grande-back-for-a-future-american-horror-story-season/', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_jean_king_20260808003000_290', 'ent_billie-jean-king', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billie Jean King mentioned in chicagotribune.com', 'Billie Jean King mentioned in chicagotribune.com', 'src_gdelt',
   'https://www.chicagotribune.com/2026/08/07/opinion-the-dink-pickleball-husband-cancer/', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260808003000_290', 'ent_brett-kavanaugh', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in wcbi.com', 'Brett Kavanaugh mentioned in wcbi.com', 'src_gdelt',
   'https://www.wcbi.com/trump-mounts-new-effort-to-oust-lisa-cook-from-fed-board-after-supreme-court-ruling/', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260808003000_290', 'ent_brett-kavanaugh', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in wiky.com', 'Brett Kavanaugh mentioned in wiky.com', 'src_gdelt',
   'https://wiky.com/2026/08/07/justice-alito-says-he-is-staying-on-supreme-court-for-another-term/', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260808003000_290', 'ent_melania-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in chicagotribune.com', 'Melania Trump mentioned in chicagotribune.com', 'src_gdelt',
   'https://www.chicagotribune.com/2026/08/07/review-laura-benanti-nobody-cares-steppenwolf/', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260808003000_290', 'ent_anderson-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in csmonitor.com', 'Anderson Cooper mentioned in csmonitor.com', 'src_gdelt',
   'https://www.csmonitor.com/USA/Education/2026/0807/ai-schools-sal-khan-academy', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260808003000_290', 'ent_bill-gates', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in csmonitor.com', 'Bill Gates mentioned in csmonitor.com', 'src_gdelt',
   'https://www.csmonitor.com/USA/Education/2026/0807/ai-schools-sal-khan-academy', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ariana_grande_20260808003000_290', 'ent_ariana-grande', '2026-08-08', 2026, 'public_appearance', 'news',
   'TikTok influencer Sydney Towle dies at 26 following rare Cancer battle (Ariana Grande mentioned)', 'TikTok influencer Sydney Towle dies at 26 following rare Cancer battle', 'src_gdelt',
   'https://www.albawaba.com/entertainment/tiktok-influencer-sydney-towle-dies-26-1634614', 0.65, 290, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_amelia_earhart_20260808004500_291', 'ent_amelia-earhart', '2026-08-08', 2026, 'public_appearance', 'news',
   'TODAY''S NEWS, August 6-7, 2026 (Amelia Earhart mentioned)', 'TODAY''S NEWS, August 6-7, 2026', 'src_gdelt',
   'https://freerepublic.com/focus/f-bloggers/4391026/posts', 0.65, 291, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260808004500_291', 'ent_caitlin-clark', '2026-08-08', 2026, 'public_appearance', 'news',
   'TODAY''S NEWS, August 6-7, 2026 (Caitlin Clark mentioned)', 'TODAY''S NEWS, August 6-7, 2026', 'src_gdelt',
   'https://freerepublic.com/focus/f-bloggers/4391026/posts', 0.65, 291, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260808004500_291', 'ent_ben-affleck', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in elciudadano.com', 'Ben Affleck mentioned in elciudadano.com', 'src_gdelt',
   'https://www.elciudadano.com/en/august-spotlight-centro-arte-alameda-appoints-gus-van-sant-as-director-of-the-month-ahead-of-dead-mans-wire-premiere-in-2025/08/07/', 0.65, 291, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260808004500_291', 'ent_britney-spears', '2026-08-08', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in q93fm.com', 'Britney Spears mentioned in q93fm.com', 'src_gdelt',
   'https://q93fm.com/chr-music-news/5a9c910eab11c0491a2deb204f314a35', 0.65, 291, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260808004500_291', 'ent_alexander-hamilton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alexander Hamilton mentioned in berkshireeagle.com', 'Alexander Hamilton mentioned in berkshireeagle.com', 'src_gdelt',
   'https://www.berkshireeagle.com/news/community-news/canaan-conn-falls-village-festival-highlights-local-history/article_f2fdc57f-1cf7-44fc-a900-a010f0f23772.html', 0.65, 291, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brett_kavanaugh_20260808004500_291', 'ent_brett-kavanaugh', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brett Kavanaugh mentioned in kfgo.com', 'Brett Kavanaugh mentioned in kfgo.com', 'src_gdelt',
   'https://kfgo.com/2026/08/07/justice-alito-says-he-is-staying-on-supreme-court-for-another-term/', 0.65, 291, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arthur_ashe_20260808004500_291', 'ent_arthur-ashe', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arthur Ashe mentioned in 12onyourside.com', 'Arthur Ashe mentioned in 12onyourside.com', 'src_gdelt',
   'https://www.12onyourside.com/2026/08/08/after-decades-neglect-richmond-commits-preservation-plan-historic-westwood/', 0.65, 291, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260808010000_292', 'ent_bob-dylan', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in galvnews.com', 'Bob Dylan mentioned in galvnews.com', 'src_gdelt',
   'https://www.galvnews.com/opinion/columns/its-hard-to-decide-which-bob-dylan-i-want-to-keep-around/article_7b854f47-1a3a-43d5-b91f-2a5c13f281be.html', 0.65, 292, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260808010000_292', 'ent_brad-pitt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in indiatimes.com', 'Brad Pitt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/english/hollywood/news/david-finchers-american-squid-game-spinoff-cancelled-director-moves-on-to-complete-film-with-brad-pitt/articleshow/133044259.cms', 0.65, 292, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_britney_spears_20260808010000_292', 'ent_britney-spears', '2026-08-08', 2026, 'public_appearance', 'news',
   'Britney Spears mentioned in easy931miami.com', 'Britney Spears mentioned in easy931miami.com', 'src_gdelt',
   'https://www.easy931miami.com/news/music-notes-olivia-dean-michelle-branch-more/7DCE56VEP43DTIYZEG2R7ASN24/', 0.65, 292, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_annie_oakley_20260808010000_292', 'ent_annie-oakley', '2026-08-08', 2026, 'public_appearance', 'news',
   'Annie Oakley mentioned in wnypapers.com', 'Annie Oakley mentioned in wnypapers.com', 'src_gdelt',
   'http://www.wnypapers.com/news/article/current/2026/08/07/166748/sheas-to-celebrate-100th-anniversary-with-centennial-gala-megan-hilty', 0.65, 292, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260808010000_292', 'ent_al-pacino', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in dailymail.com', 'Al Pacino mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/news/article-16034831/stripper-long-island-doctor-lawsuit-affair.html', 0.65, 292, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260808010000_292', 'ent_bruno-mars', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in miaminewtimes.com', 'Bruno Mars mentioned in miaminewtimes.com', 'src_gdelt',
   'https://www.miaminewtimes.com/music/arthur-baker-there-would-be-no-miami-bass-without-the-808-40574064/', 0.65, 292, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260808011500_293', 'ent_brian-chesky', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in techtimes.com', 'Brian Chesky mentioned in techtimes.com', 'src_gdelt',
   'https://www.techtimes.com/articles/323585/20260807/airbnb-proves-ai-powered-engineering-beats-rivals-80-more-features-same-staff.htm', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260808011500_293', 'ent_bill-clinton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in wyomingnews.com', 'Bill Clinton mentioned in wyomingnews.com', 'src_gdelt',
   'http://www.wyomingnews.com/news/local_news/in-teton-county-a-striking-modern-house-boldly-blends-in/article_863780ba-4d05-43f5-adc0-201dd646846e.html', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260808011500_293', 'ent_bob-dylan', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in meridianstar.com', 'Bob Dylan mentioned in meridianstar.com', 'src_gdelt',
   'https://meridianstar.com/2026/08/07/the-max-announces-its-newest-hall-of-fame-inductees/', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260808011500_293', 'ent_melania-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in hindustantimes.com', 'Melania Trump mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/world-news/us-news/barron-trump-net-worth-is-donald-trumps-youngest-son-richer-than-his-mother-melania-101786147109025.html', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260808011500_293', 'ent_ivanka-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in hindustantimes.com', 'Ivanka Trump mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/world-news/us-news/barron-trump-net-worth-is-donald-trumps-youngest-son-richer-than-his-mother-melania-101786147109025.html', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260808011500_293', 'ent_eric-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in hindustantimes.com', 'Eric Trump mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/world-news/us-news/barron-trump-net-worth-is-donald-trumps-youngest-son-richer-than-his-mother-melania-101786147109025.html', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260808011500_293', 'ent_caitlin-clark', '2026-08-08', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in hotair.com', 'Caitlin Clark mentioned in hotair.com', 'src_gdelt',
   'https://hotair.com/david-strom/2026/08/07/trans-players-lining-up-to-join-wnba-n3817790', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260808011500_293', 'ent_buffalo-bill', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in oleantimesherald.com', 'Buffalo Bill mentioned in oleantimesherald.com', 'src_gdelt',
   'https://www.oleantimesherald.com/2026/08/07/cattaraugus-county-da-announces-july-grand-jury-indictments/', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260808011500_293', 'ent_buffalo-bill', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in cnycentral.com', 'Buffalo Bill mentioned in cnycentral.com', 'src_gdelt',
   'https://cnycentral.com/news/local/the-heart-behind-highmark-stadium-construction-superintendent-remembered-buffalo-bills-kevin-chapman-chappy-william-h-lane-orchard-park-ny', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260808011500_293', 'ent_andy-warhol', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in artnews.com', 'Andy Warhol mentioned in artnews.com', 'src_gdelt',
   'https://www.artnews.com/art-news/news/tracey-amon-court-sandy-heller-papers-art-collection-1234794582/', 0.65, 293, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260808013000_294', 'ent_alice-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in winnipegfreepress.com', 'Alice Cooper mentioned in winnipegfreepress.com', 'src_gdelt',
   'https://www.winnipegfreepress.com/arts-and-life/2026/08/07/world-touring-rock-star-comes-home-for-street-naming', 0.65, 294, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260808013000_294', 'ent_alicia-keys', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in kcra.com', 'Alicia Keys mentioned in kcra.com', 'src_gdelt',
   'https://www.kcra.com/article/norcal-weekend-event-roundup-sacramento-august-7-9/73349915', 0.65, 294, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260808013000_294', 'ent_melania-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in inquirer.com', 'Melania Trump mentioned in inquirer.com', 'src_gdelt',
   'https://www.inquirer.com/news/nation-world/trump-executive-order-childhood-vaccines-autism-link-debunked-kennedy-cdc-director-schwartz-20260807.html', 0.65, 294, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260808014500_295', 'ent_aaron-rodgers', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in wgal.com', 'Aaron Rodgers mentioned in wgal.com', 'src_gdelt',
   'https://www.wgal.com/article/aaron-rodgers-responds-critics-calling-dr-fauci-coward/73378946', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_college_20260808014500_295', 'plc_boston-college', '2026-08-08', 2026, 'public_appearance', 'news',
   'Boston College mentioned in mentalfloss.com', 'Boston College mentioned in mentalfloss.com', 'src_gdelt',
   'https://www.mentalfloss.com/culture/education/best-u-s-colleges-long-term-career-success-according-linkedin', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brown_university_20260808014500_295', 'plc_brown-university', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brown University mentioned in mentalfloss.com', 'Brown University mentioned in mentalfloss.com', 'src_gdelt',
   'https://www.mentalfloss.com/culture/education/best-u-s-colleges-long-term-career-success-according-linkedin', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260808014500_295', 'ent_blake-lively', '2026-08-08', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in indiatimes.com', 'Blake Lively mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/english/hollywood/news/blake-lively-faces-new-deposition-request-in-legal-battle-for-usd-800000-in-attorney-fees-from-justin-baldoni/articleshow/133044868.cms', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260808014500_295', 'ent_alexander-graham-bell', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in mentalfloss.com', 'Alexander Graham Bell mentioned in mentalfloss.com', 'src_gdelt',
   'https://www.mentalfloss.com/history/household-items-every-gilded-age-family-owned', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260808014500_295', 'ent_al-gore', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in listverse.com', 'Al Gore mentioned in listverse.com', 'src_gdelt',
   'https://listverse.com/2009/03/08/15-notable-political-and-military-misquotes/', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260808014500_295', 'ent_andrew-jackson', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Jackson mentioned in listverse.com', 'Andrew Jackson mentioned in listverse.com', 'src_gdelt',
   'https://listverse.com/2009/03/08/15-notable-political-and-military-misquotes/', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260808014500_295', 'ent_benjamin-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in listverse.com', 'Benjamin Franklin mentioned in listverse.com', 'src_gdelt',
   'https://listverse.com/2009/03/08/15-notable-political-and-military-misquotes/', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260808014500_295', 'ent_bill-clinton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in mesabitribune.com', 'Bill Clinton mentioned in mesabitribune.com', 'src_gdelt',
   'https://www.mesabitribune.com/around_the_web/news/don-lemon-challenges-constitutionality-of-face-act-in-legal-defense-of-church-protest-charges/article_6bc4cdb1-b8b5-5ff4-acde-22d797acb76e.html', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260808014500_295', 'ent_benjamin-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in idahostatejournal.com', 'Benjamin Franklin mentioned in idahostatejournal.com', 'src_gdelt',
   'http://www.idahostatejournal.com/news/local/freedom-250-mobile-museum-in-idaho-falls-through-monday/article_206e8d0b-9f22-40c1-bdd8-80f6faff1ac2.html', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betsy_ross_20260808014500_295', 'ent_betsy-ross', '2026-08-08', 2026, 'public_appearance', 'news',
   'Betsy Ross mentioned in idahostatejournal.com', 'Betsy Ross mentioned in idahostatejournal.com', 'src_gdelt',
   'http://www.idahostatejournal.com/news/local/freedom-250-mobile-museum-in-idaho-falls-through-monday/article_206e8d0b-9f22-40c1-bdd8-80f6faff1ac2.html', 0.65, 295, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260808020000_296', 'ent_bill-gates', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in zerohedge.com', 'Bill Gates mentioned in zerohedge.com', 'src_gdelt',
   'https://www.zerohedge.com/political/what-else-are-they-hiding', 0.65, 296, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_banneker_20260808020000_296', 'ent_benjamin-banneker', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benjamin Banneker mentioned in travelerstoday.com', 'Benjamin Banneker mentioned in travelerstoday.com', 'src_gdelt',
   'https://www.travelerstoday.com/articles/60780/20260807/potomac-hotel-opens-washington-marriott-bonvoy-points-now-bookable-dc-waterfront.htm', 0.65, 296, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260808020000_296', 'ent_anderson-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in foxwilmington.com', 'Anderson Cooper mentioned in foxwilmington.com', 'src_gdelt',
   'https://foxwilmington.com/former-first-lady-jill-biden-doubts-shell-see-a-woman-president-in-her-lifetime/', 0.65, 296, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260808020000_296', 'ent_buzz-aldrin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in thedailytimes.com', 'Buzz Aldrin mentioned in thedailytimes.com', 'src_gdelt',
   'http://www.thedailytimes.com/ap/lifestyles/the-first-small-steps-taken-in-neil-armstrongs-childhood-home-inspired-a-giant-leap-for/article_8ae34c15-bd57-58f6-b148-26ff9cb0ab3d.html', 0.65, 296, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_russell_20260808021500_297', 'ent_bill-russell', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Russell mentioned in oneidadispatch.com', 'Bill Russell mentioned in oneidadispatch.com', 'src_gdelt',
   'https://www.oneidadispatch.com/2026/08/07/horse-racing-andrew-champagnes-saratoga-bankroll-selections-analysis-day-24/', 0.65, 297, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260808021500_297', 'ent_axl-rose', '2026-08-08', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in americansongwriter.com', 'Axl Rose mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/slash-reveals-ozzy-osbourne-collaboration-was-in-the-works-before-his-passing/', 0.65, 297, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_russell_20260808021500_297', 'ent_bill-russell', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Russell mentioned in troyrecord.com', 'Bill Russell mentioned in troyrecord.com', 'src_gdelt',
   'https://www.troyrecord.com/2026/08/07/horse-racing-andrew-champagnes-saratoga-bankroll-selections-analysis-day-24/', 0.65, 297, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260808021500_297', 'ent_eric-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in coindesk.com', 'Eric Trump mentioned in coindesk.com', 'src_gdelt',
   'https://www.coindesk.com/business/2026/08/07/trump-backed-american-bitcoin-director-justin-mateen-buys-nearly-usd2-million-of-abtc-stock', 0.65, 297, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260808023000_298', 'ent_alicia-keys', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in sandiegouniontribune.com', 'Alicia Keys mentioned in sandiegouniontribune.com', 'src_gdelt',
   'https://www.sandiegouniontribune.com/2026/08/07/alicia-keys-talks-with-the-u-t-about-the-spirit-and-universality-of-hells-kitchen/', 0.65, 298, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260808024500_299', 'ent_buffalo-bill', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in cbs6albany.com', 'Buffalo Bill mentioned in cbs6albany.com', 'src_gdelt',
   'https://cbs6albany.com/news/local/the-heart-behind-highmark-stadium-construction-superintendent-remembered-buffalo-bills-kevin-chapman-chappy-william-h-lane-orchard-park-ny', 0.65, 299, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260808024500_299', 'ent_al-pacino', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in collider.com', 'Al Pacino mentioned in collider.com', 'src_gdelt',
   'https://collider.com/r-rated-drama-movies-masterpieces/', 0.65, 299, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260808030000_300', 'ent_lee-kuan-yew', '2026-08-08', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in businesstimes.com.sg', 'Lee Kuan Yew mentioned in businesstimes.com.sg', 'src_gdelt',
   'https://www.businesstimes.com.sg/singapore/court-young-hakka-clan-association-singapore-offering-overseas-internships', 0.65, 300, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260808030000_300', 'ent_bruce-springsteen', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in freemalaysiatoday.com', 'Bruce Springsteen mentioned in freemalaysiatoday.com', 'src_gdelt',
   'https://www.freemalaysiatoday.com/category/leisure/2026/08/08/grammy-winner-l-shankar-to-perform-with-samuel-dass-in-kl', 0.65, 300, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260808030000_300', 'ent_bruno-mars', '2026-08-08', 2026, 'public_appearance', 'news',
   'HOMBRE1 | KAROL G Releases New Album "NO ME ARREPIENTO DE SENTIR TANTO" (Bruno Mars mentioned)', 'HOMBRE1 | KAROL G Releases New Album "NO ME ARREPIENTO DE SENTIR TANTO"', 'src_gdelt',
   'https://hombre1.com/karol-g-releases-new-album-no-me-arrepiento-de-sentir-tanto/', 0.65, 300, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260808030000_300', 'ent_brad-pitt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in dailymail.com', 'Brad Pitt mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16037757/angelina-jolie-glum-brad-pitt-legal-battle-financial-records.html', 0.65, 300, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260808030000_300', 'ent_abraham-lincoln', '2026-08-08', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in freemalaysiatoday.com', 'Abraham Lincoln mentioned in freemalaysiatoday.com', 'src_gdelt',
   'https://www.freemalaysiatoday.com/category/opinion/2026/08/08/in-defence-of-compromise', 0.65, 300, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260808030000_300', 'ent_brian-de-palma', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in comingsoon.net', 'Brian De Palma mentioned in comingsoon.net', 'src_gdelt',
   'https://www.comingsoon.net/movies/news/2173166-clayface-dcu-sam-raimi-horror-influence-james-watkins', 0.65, 300, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260808031500_301', 'ent_bill-clinton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in grandrapidsmn.com', 'Bill Clinton mentioned in grandrapidsmn.com', 'src_gdelt',
   'http://www.grandrapidsmn.com/around_the_web/news/don-lemon-challenges-constitutionality-of-face-act-in-legal-defense-of-church-protest-charges/article_ebef227a-f630-5b3e-b1ab-52d201e753b3.html', 0.65, 301, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260808031500_301', 'ent_bill-clinton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in southernminn.com', 'Bill Clinton mentioned in southernminn.com', 'src_gdelt',
   'http://www.southernminn.com/around_the_web/news/don-lemon-challenges-constitutionality-of-face-act-in-legal-defense-of-church-protest-charges/article_b0a900c2-058b-544a-b19b-a652eaae8363.html', 0.65, 301, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260808031500_301', 'ent_brad-pitt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in screenrant.com', 'Brad Pitt mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/best-post-apocalyptic-shows-past-decade/', 0.65, 301, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260808031500_301', 'ent_bruce-willis', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in screenrant.com', 'Bruce Willis mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/best-post-apocalyptic-shows-past-decade/', 0.65, 301, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260808031500_301', 'ent_aaron-rodgers', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in butlereagle.com', 'Aaron Rodgers mentioned in butlereagle.com', 'src_gdelt',
   'https://www.butlereagle.com/20260807/mike-tomlin-makes-broadcasting-debut-what-did-he-have-to-say-about-the-steelers/', 0.65, 301, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260808033000_302', 'ent_bruce-springsteen', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in ksbw.com', 'Bruce Springsteen mentioned in ksbw.com', 'src_gdelt',
   'https://www.ksbw.com/article/bruce-springsteen-patti-scialfa-cancer-in-remission/73346233', 0.65, 302, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260808033000_302', 'ent_babe-ruth', '2026-08-08', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in baltimoresun.com', 'Babe Ruth mentioned in baltimoresun.com', 'src_gdelt',
   'https://www.baltimoresun.com/2026/08/07/adley-rutschman-loss-os-fans/', 0.65, 302, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audre_lorde_20260808033000_302', 'ent_audre-lorde', '2026-08-08', 2026, 'public_appearance', 'news',
   'Audre Lorde mentioned in pressenza.com', 'Audre Lorde mentioned in pressenza.com', 'src_gdelt',
   'https://www.pressenza.com/2026/08/poetry-is-not-elitist-we-are-all-poets-silvio-talamo-in-conversation-with-milena-rampoldi-about-promosaik-poetry/', 0.65, 302, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260808034500_303', 'ent_bill-gates', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in tribuneindia.com', 'Bill Gates mentioned in tribuneindia.com', 'src_gdelt',
   'https://www.tribuneindia.com/news/himachal/from-himalayan-foothills-to-stanfords-corridors-of-science/', 0.65, 303, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260808040000_304', 'ent_al-gore', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in dailykos.com', 'Al Gore mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/7/800077771/community/why-hong-can-win/', 0.65, 304, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_clinton_20260808040000_304', 'ent_bill-clinton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Clinton mentioned in dailykos.com', 'Bill Clinton mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/7/800077771/community/why-hong-can-win/', 0.65, 304, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260808040000_304', 'ent_al-pacino', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in horsesdaily.com', 'Al Pacino mentioned in horsesdaily.com', 'src_gdelt',
   'https://horsesdaily.com/article/leslie-morse-and-tip-top-962-win-fei-grand-prix-freestyle-at-the-palm-beach-dressage-derby-cdi-cdiy/', 0.65, 304, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260808040000_304', 'ent_alfred-hitchcock', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in thestar.com.my', 'Alfred Hitchcock mentioned in thestar.com.my', 'src_gdelt',
   'https://www.thestar.com.my/lifestyle/travel/2026/08/08/iconic-movie-destinations-from-new-orleans-to-ubud-to-check-out', 0.65, 304, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260808040000_304', 'ent_bill-gates', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in dailykos.com', 'Bill Gates mentioned in dailykos.com', 'src_gdelt',
   'https://www.dailykos.com/stories/2026/8/7/800081334/community/profiles-in-cowardice-why-bill-cassidys-caving-on-todd-blanche-proves-he-deserved-his-primary-defeat/', 0.65, 304, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260808041500_305', 'ent_andrew-lloyd-webber', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in playbill.com', 'Andrew Lloyd Webber mentioned in playbill.com', 'src_gdelt',
   'https://playbill.com/article/cats-the-jellicle-ball-takes-final-broadway-death-drop-august-8', 0.65, 305, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260808041500_305', 'ent_billy-joel', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in wfmj.com', 'Billy Joel mentioned in wfmj.com', 'src_gdelt',
   'https://www.wfmj.com/news/local-news/salem/freed-fest-kicks-off-ninth-annual-music-vendor-weekend/article_c70b30fa-d6e7-49d9-8f83-6c09d891b16f.html', 0.65, 305, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260808043000_306', 'ent_barbra-streisand', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in thesmokinggun.com', 'Barbra Streisand mentioned in thesmokinggun.com', 'src_gdelt',
   'http://www.thesmokinggun.com/documents/crime/streisand-goes-dogs', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260808043000_306', 'ent_bob-dylan', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in 5au.com.au', 'Bob Dylan mentioned in 5au.com.au', 'src_gdelt',
   'https://www.5au.com.au/trending/entertainment/how-42-songs-actually-changed-the-world-and-what-you-should-be-listening-to/', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260808043000_306', 'ent_alfred-hitchcock', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in elpais.com', 'Alfred Hitchcock mentioned in elpais.com', 'src_gdelt',
   'https://english.elpais.com/culture/2026-08-07/why-have-hollywood-blockbusters-become-so-gray.html', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260808043000_306', 'ent_bari-weiss', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in rawstory.com', 'Bari Weiss mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/david-ellison-cnn-2677674872/', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dylan_20260808043000_306', 'ent_bob-dylan', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Dylan mentioned in bay939.com.au', 'Bob Dylan mentioned in bay939.com.au', 'src_gdelt',
   'https://www.bay939.com.au/trending/entertainment/how-42-songs-actually-changed-the-world-and-what-you-should-be-listening-to/', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_eric_trump_20260808043000_306', 'ent_eric-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Eric Trump mentioned in rawstory.com', 'Eric Trump mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/russia-2677673938/', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_melania_trump_20260808043000_306', 'ent_melania-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Melania Trump mentioned in rawstory.com', 'Melania Trump mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/barron-trump-andrew-tate/', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260808043000_306', 'ent_bob-fosse', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Fosse mentioned in lamag.com', 'Bob Fosse mentioned in lamag.com', 'src_gdelt',
   'https://lamag.com/arts-and-entertainment/meet-marilyn-monroes-dance-maker-jack-cole/', 0.65, 306, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260808044500_307', 'ent_andrew-carnegie', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in alternet.org', 'Andrew Carnegie mentioned in alternet.org', 'src_gdelt',
   'https://www.alternet.org/the-american-dream-is/', 0.65, 307, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_w_mellon_20260808044500_307', 'ent_andrew-w-mellon', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Mellon mentioned in alternet.org', 'Andrew Mellon mentioned in alternet.org', 'src_gdelt',
   'https://www.alternet.org/the-american-dream-is/', 0.65, 307, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_rodgers_20260808050000_308', 'ent_aaron-rodgers', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aaron Rodgers mentioned in ibtimes.com.au', 'Aaron Rodgers mentioned in ibtimes.com.au', 'src_gdelt',
   'https://www.ibtimes.com.au/madden-nfl-27-game-changing-release-1873745', 0.65, 308, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260808050000_308', 'ent_buffalo-bill', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in wktv.com', 'Buffalo Bill mentioned in wktv.com', 'src_gdelt',
   'https://www.wktv.com/news/local/josh-allen-and-bills-prepare-to-hold-first-practice-in-their-new-2-1-billion/article_a34003b8-791f-5208-8f2e-40c569ee7b2c.html', 0.65, 308, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buddy_holly_20260808051500_309', 'ent_buddy-holly', '2026-08-08', 2026, 'public_appearance', 'news',
   '"Tennessee Walt''s ''The Other Great American Songbook'' (Buddy Holly mentioned)', '"Tennessee Walt''s ''The Other Great American Songbook''', 'src_gdelt',
   'https://events.longisland.com/tennessee-walts-the-other-great-american-songbook21.html', 0.65, 309, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_annie_oakley_20260808051500_309', 'ent_annie-oakley', '2026-08-08', 2026, 'public_appearance', 'news',
   'Annie Oakley mentioned in nuvo.net', 'Annie Oakley mentioned in nuvo.net', 'src_gdelt',
   'https://www.nuvo.net/arts/join-fibbers-fakers-and-phonies/article_d13b773a-a706-4196-9f4d-ee9abd025aad.html', 0.65, 309, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260808053000_310', 'ent_caitlin-clark', '2026-08-08', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in hotair.com', 'Caitlin Clark mentioned in hotair.com', 'src_gdelt',
   'https://hotair.com/ed-morrissey/2026/08/07/fridays-final-word-n3817766', 0.65, 310, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260808053000_310', 'ent_bruce-willis', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in indiatimes.com', 'Bruce Willis mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/english/hollywood/news/bruce-willis-wife-emma-heming-willis-says-she-is-wrestling-with-guilt-for-celebrating-her-50th-birthday/articleshow/133046680.cms', 0.65, 310, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260808053000_310', 'ent_ivanka-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in boredpanda.com', 'Ivanka Trump mentioned in boredpanda.com', 'src_gdelt',
   'https://2.boredpanda.com/trump-big-hair-meme-compilation/', 0.65, 310, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buster_keaton_20260808053000_310', 'ent_buster-keaton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buster Keaton mentioned in timesargus.com', 'Buster Keaton mentioned in timesargus.com', 'src_gdelt',
   'https://www.timesargus.com/features/vermont_arts/middlebury-new-filmmakers-festivals-12th-ana-s-mitchell-s-hadestown-jane-fonda-130-films-and/article_3ec2dc0e-b839-57a0-a893-451105d716cb.html', 0.65, 310, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260808053000_310', 'ent_babe-ruth', '2026-08-08', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in erienewsnow.com', 'Babe Ruth mentioned in erienewsnow.com', 'src_gdelt',
   'https://www.erienewsnow.com/featured/the-last-word/the-last-word-barber-opens-his-dream-shop-in-summit-township/article_050947dc-3e87-41b4-b9ca-0721046c13e2.html', 0.65, 310, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260808054500_311', 'ent_bari-weiss', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in adweek.com', 'Bari Weiss mentioned in adweek.com', 'src_gdelt',
   'https://www.adweek.com/tvnewser/ticker-david-ellison-believes-cnn-plays-a-role-in-paramount-wbd-merger-delay/', 0.65, 311, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260808054500_311', 'ent_alia-bhatt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in hindustantimes.com', 'Alia Bhatt mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/lifestyle/fashion/deepika-padukone-s-brown-nude-lipstick-or-alia-bhatt-s-pink-nudes-which-one-is-right-for-you-101786079003757.html', 0.65, 311, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260808060000_312', 'ent_brian-de-palma', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in superherohype.com', 'Brian De Palma mentioned in superherohype.com', 'src_gdelt',
   'https://www.superherohype.com/news/684894-clayface-dcu-sam-raimi-horror-influence-james-watkins', 0.65, 312, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260808060000_312', 'ent_alia-bhatt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in indiatimes.com', 'Alia Bhatt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/hindi/bollywood/news/exclusive-mahesh-bhatt-on-alia-bhatt-raha-and-pooja-bhatt-i-woke-up-to-alia-bhatt-exactly-the-way-the-nation-woke-up-to-her/articleshow/133046923.cms', 0.65, 312, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buffalo_bill_20260808061500_313', 'ent_buffalo-bill', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buffalo Bill mentioned in texarkanagazette.com', 'Buffalo Bill mentioned in texarkanagazette.com', 'src_gdelt',
   'https://www.texarkanagazette.com/news/2026/aug/07/josh-allen-and-bills-prepare-to-hold-first/', 0.65, 313, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_bonds_20260808061500_313', 'ent_barry-bonds', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barry Bonds mentioned in inquirer.com', 'Barry Bonds mentioned in inquirer.com', 'src_gdelt',
   'https://www.inquirer.com/phillies/chase-utley-hall-of-fame-phillies-20220228.html', 0.65, 313, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260808061500_313', 'ent_alicia-keys', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in billboard.com', 'Alicia Keys mentioned in billboard.com', 'src_gdelt',
   'https://www.billboard.com/music/awards/angelique-kidjo-star-hollywood-walk-of-fame-history-making-1236312196/', 0.65, 313, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260808061500_313', 'ent_andy-warhol', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in thecolu.mn', 'Andy Warhol mentioned in thecolu.mn', 'src_gdelt',
   'https://thecolu.mn/4435/the-world-craves-queer-ideas/', 0.65, 313, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260808063000_314', 'ent_blake-lively', '2026-08-08', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in ibtimes.com.au', 'Blake Lively mentioned in ibtimes.com.au', 'src_gdelt',
   'https://www.ibtimes.com.au/blake-lively-legal-battle-attorney-fees-1873763', 0.65, 314, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260808063000_314', 'ent_bruce-springsteen', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in express.co.uk', 'Bruce Springsteen mentioned in express.co.uk', 'src_gdelt',
   'https://www.express.co.uk/celebrity-news/2231951/behind-scenes-queens-legendary-knebworth', 0.65, 314, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260808063000_314', 'ent_alice-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in express.co.uk', 'Alice Cooper mentioned in express.co.uk', 'src_gdelt',
   'https://www.express.co.uk/entertainment/music/2235585/johnny-depp-tickets-hollywood-vampires', 0.65, 314, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_springsteen_20260808063000_314', 'ent_bruce-springsteen', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Springsteen mentioned in irishmirror.ie', 'Bruce Springsteen mentioned in irishmirror.ie', 'src_gdelt',
   'https://www.irishmirror.ie/showbiz/irish-showbiz/glen-hansard-late-late-show-37520815', 0.65, 314, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260808064500_315', 'ent_anderson-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in nypost.com', 'Anderson Cooper mentioned in nypost.com', 'src_gdelt',
   'https://nypost.com/2026/08/08/us-news/jill-biden-doubts-shell-see-a-woman-president-in-her-lifetime/', 0.65, 315, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260808064500_315', 'ent_barbra-streisand', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in jpost.com', 'Barbra Streisand mentioned in jpost.com', 'src_gdelt',
   'http://www.jpost.com/israel-news/article-904766', 0.65, 315, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260808064500_315', 'ent_billy-joel', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in foxwilmington.com', 'Billy Joel mentioned in foxwilmington.com', 'src_gdelt',
   'https://foxwilmington.com/christie-brinkley-has-fans-mistaking-supermodel-for-daughter-in-new-photos/', 0.65, 315, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260808073000_318', 'ent_axl-rose', '2026-08-08', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in wdhafm.com', 'Axl Rose mentioned in wdhafm.com', 'src_gdelt',
   'https://wdhafm.com/2026/08/08/this-day-in-rock-history-august-8-2/', 0.65, 318, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260808073000_318', 'ent_anderson-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in dailymail.com', 'Anderson Cooper mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16037645/Andy-Cohen-Anderson-Cooper-younger-new-boyfriend-Kevin-Sobieski.html', 0.65, 318, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260808073000_318', 'ent_alia-bhatt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in bollywoodhungama.com', 'Alia Bhatt mentioned in bollywoodhungama.com', 'src_gdelt',
   'https://www.bollywoodhungama.com/news/features/alia-bhatt-reveals-her-go-to-room-dining-orders-i-really-like-hotel-sandwiches-they-come-with-french-fries/', 0.65, 318, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260808073000_318', 'ent_alia-bhatt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in voiceonline.com', 'Alia Bhatt mentioned in voiceonline.com', 'src_gdelt',
   'https://voiceonline.com/oscars-2023-naatu-naatu-wins-best-original-song/', 0.65, 318, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260808074500_319', 'ent_andy-warhol', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in livemint.com', 'Andy Warhol mentioned in livemint.com', 'src_gdelt',
   'https://www.livemint.com/mint-lounge/style/wearable-art-fashion-statement-alaia-anamika-khanna-off-white-louis-vuitton-11786011770741.html', 0.65, 319, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aishwarya_rai_20260808074500_319', 'ent_aishwarya-rai', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aishwarya Rai mentioned in indiatimes.com', 'Aishwarya Rai mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/hindi/bollywood/news/sanjay-dutts-sisters-once-warned-dhurandhar-actor-not-to-woo-aishwarya-rai-bachchan-dont-take-her-number-dont-send-her-flowers/articleshow/133048350.cms', 0.65, 319, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260808074500_319', 'ent_arnold-palmer', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in aol.co.uk', 'Arnold Palmer mentioned in aol.co.uk', 'src_gdelt',
   'https://www.aol.co.uk/articles/tale-two-murrays-ewan-met-070040000.html', 0.65, 319, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audre_lorde_20260808080000_320', 'ent_audre-lorde', '2026-08-08', 2026, 'public_appearance', 'news',
   'Audre Lorde mentioned in irishtimes.com', 'Audre Lorde mentioned in irishtimes.com', 'src_gdelt',
   'https://www.irishtimes.com/culture/books/review/2026/08/08/the-broken-king-by-michael-thomas-an-artfully-relentless-memoir/', 0.65, 320, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260808080000_320', 'ent_alfred-hitchcock', '2026-08-08', 2026, 'public_appearance', 'news',
   'What I miss about growing up in the ''50s and ''60s (Alfred Hitchcock mentioned)', 'What I miss about growing up in the ''50s and ''60s', 'src_gdelt',
   'https://www.ironmountaindailynews.com/lifestyles/2026/08/what-i-miss-about-growing-up-in-the-50s-and-60s/', 0.65, 320, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260808080000_320', 'ent_caitlin-clark', '2026-08-08', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in rightspeak.net', 'Caitlin Clark mentioned in rightspeak.net', 'src_gdelt',
   'http://www.rightspeak.net/2026/08/barack-obama-fathered-todays-marxist.html', 0.65, 320, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_shelton_20260808080000_320', 'ent_blake-shelton', '2026-08-08', 2026, 'public_appearance', 'news',
   'Blake Shelton mentioned in birminghammail.co.uk', 'Blake Shelton mentioned in birminghammail.co.uk', 'src_gdelt',
   'https://www.birminghammail.co.uk/whats-on/whats-on-news/much-loved-christmas-lights-home-34406832', 0.65, 320, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_axl_rose_20260808080000_320', 'ent_axl-rose', '2026-08-08', 2026, 'public_appearance', 'news',
   'Axl Rose mentioned in ilovebobfm.com', 'Axl Rose mentioned in ilovebobfm.com', 'src_gdelt',
   'https://ilovebobfm.com/2026/08/08/this-day-in-rock-history-august-8-2/', 0.65, 320, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260808083000_322', 'ent_billy-joel', '2026-08-08', 2026, 'public_appearance', 'news',
   'THE SUMMER ROOFTOPS OF PARIS SCRATCH (Billy Joel mentioned)', 'THE SUMMER ROOFTOPS OF PARIS SCRATCH', 'src_gdelt',
   'https://internationaltimes.it/the-summer-rooftops-of-paris-scratch/', 0.65, 322, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_burr_20260808083000_322', 'ent_aaron-burr', '2026-08-08', 2026, 'public_appearance', 'news',
   'Early Marietta: Henry the Dreamer and the Steamboat WASHINGTON (Aaron Burr mentioned)', 'Early Marietta: Henry the Dreamer and the Steamboat WASHINGTON', 'src_gdelt',
   'https://www.mariettatimes.com/opinion/local-columns/2026/08/early-marietta-henry-the-dreamer-and-the-steamboat-washington/', 0.65, 322, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_jackson_20260808083000_322', 'ent_andrew-jackson', '2026-08-08', 2026, 'public_appearance', 'news',
   'Early Marietta: Henry the Dreamer and the Steamboat WASHINGTON (Andrew Jackson mentioned)', 'Early Marietta: Henry the Dreamer and the Steamboat WASHINGTON', 'src_gdelt',
   'https://www.mariettatimes.com/opinion/local-columns/2026/08/early-marietta-henry-the-dreamer-and-the-steamboat-washington/', 0.65, 322, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_allen_ginsberg_20260808083000_322', 'ent_allen-ginsberg', '2026-08-08', 2026, 'public_appearance', 'news',
   'Allen Ginsberg mentioned in internationaltimes.it', 'Allen Ginsberg mentioned in internationaltimes.it', 'src_gdelt',
   'https://internationaltimes.it/trapped-in-a-lift-with-a-free-jazz-solo-and-allen-ginsberg/', 0.65, 322, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260808084500_323', 'ent_benjamin-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in timesandstar.co.uk', 'Benjamin Franklin mentioned in timesandstar.co.uk', 'src_gdelt',
   'https://www.timesandstar.co.uk/news/national/uk-today/26447506.jd-wetherspoon-open-12-new-pubs-coming-months---full-list/', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benjamin_franklin_20260808084500_323', 'ent_benjamin-franklin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benjamin Franklin mentioned in ealingtimes.co.uk', 'Benjamin Franklin mentioned in ealingtimes.co.uk', 'src_gdelt',
   'https://www.ealingtimes.co.uk/news/national/uk-today/26447506.jd-wetherspoon-open-12-new-pubs-coming-months---full-list/', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260808084500_323', 'ent_abraham-lincoln', '2026-08-08', 2026, 'public_appearance', 'news',
   'Abraham Lincoln mentioned in indiatimes.com', 'Abraham Lincoln mentioned in indiatimes.com', 'src_gdelt',
   'https://economictimes.indiatimes.com/us/news/quote-of-the-day-by-abraham-lincoln-do-i-not-destroy-my-enemies-when-i-make-them-former-us-presidents-timeless-lesson-on-why-forgiveness-is-more-powerful-than-revenge/articleshow/133048889.cms', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260808084500_323', 'ent_ben-affleck', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in collider.com', 'Ben Affleck mentioned in collider.com', 'src_gdelt',
   'https://collider.com/netflix-removing-copshop-gerard-butler-august-2026/', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_gates_20260808084500_323', 'ent_bill-gates', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Gates mentioned in pmnewsnigeria.com', 'Bill Gates mentioned in pmnewsnigeria.com', 'src_gdelt',
   'https://pmnewsnigeria.com/2026/08/08/abayomi-warns-lagos-of-pandemic-flu-threat-advocates-one-health-approach/', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260808084500_323', 'ent_andrew-carnegie', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Carnegie mentioned in spacedaily.com', 'Andrew Carnegie mentioned in spacedaily.com', 'src_gdelt',
   'https://spacedaily.com/a-when-tutankhamuns-sealed-tomb-was-opened-after-more-than-3000-years-a-series-of-deaths-helped-ignite-rumors-of-an-ancient-curse-but-a-century-later-researchers-have-asked-whether-the-leg/', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260808084500_323', 'ent_billy-joel', '2026-08-08', 2026, 'public_appearance', 'news',
   'Freed Fest brings music legends, rising talent and free live performances to Downtown Salem (Billy Joel mentioned)', 'Freed Fest brings music legends, rising talent and free live performances to Downtown Salem', 'src_gdelt',
   'https://www.salemnews.net/news/local-news/2026/08/freed-fest-brings-music-legends-rising-talent-and-free-live-performances-to-downtown-salem-2/', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260808084500_323', 'ent_barbra-streisand', '2026-08-08', 2026, 'public_appearance', 'news',
   'This Week in WV History - The Intermountain (Barbra Streisand mentioned)', 'This Week in WV History - The Intermountain', 'src_gdelt',
   'https://www.theintermountain.com/news/local-news/2026/08/this-week-in-wv-history-15/', 0.65, 323, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260808090000_324', 'ent_brad-pitt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brad Pitt mentioned in indiatimes.com', 'Brad Pitt mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/english/hollywood/news/brad-pitts-weirdest-summer-involved-40-chameleons-in-his-bachelor-pad-i-had-this-girlfriend-who-was-into-reptiles/articleshow/133049164.cms', 0.65, 324, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260808091500_325', 'ent_brian-chesky', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in indiatimes.com', 'Brian Chesky mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/technology/tech-news/airbnb-ceo-brian-chesky-says-that-not-ai-features-but-what-got-him-biggest-analysts-applause-was-mention-of-new-guest-service-that-allows-them-to/articleshow/133049170.cms', 0.65, 325, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benny_goodman_20260808091500_325', 'ent_benny-goodman', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benny Goodman mentioned in standardspeaker.com', 'Benny Goodman mentioned in standardspeaker.com', 'src_gdelt',
   'https://www.standardspeaker.com/2026/08/08/community-digest-aug-8-2026-2/', 0.65, 325, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260808094500_327', 'ent_sachin-tendulkar', '2026-08-08', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in vogue.in', 'Sachin Tendulkar mentioned in vogue.in', 'src_gdelt',
   'https://www.vogue.in/content/sara-tendulkar-i-would-need-to-have-fun-banter-with-my-future-partner', 0.65, 327, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betsy_ross_20260808094500_327', 'ent_betsy-ross', '2026-08-08', 2026, 'public_appearance', 'news',
   'Betsy Ross mentioned in bostonherald.com', 'Betsy Ross mentioned in bostonherald.com', 'src_gdelt',
   'https://www.bostonherald.com/2026/08/08/gaskin-black-women-at-the-founding-of-america/', 0.65, 327, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_abraham_lincoln_20260808100000_328', 'ent_abraham-lincoln', '2026-08-08', 2026, 'public_appearance', 'news',
   'Democratic Socialists of America are hijacking Democratic Party (Abraham Lincoln mentioned)', 'Democratic Socialists of America are hijacking Democratic Party', 'src_gdelt',
   'https://www.miningjournal.net/opinion/2026/08/democratic-socialists-of-america-are-hijacking-democratic-party/', 0.65, 328, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260808100000_328', 'ent_albert-einstein', '2026-08-08', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in thecourierexpress.com', 'Albert Einstein mentioned in thecourierexpress.com', 'src_gdelt',
   'https://www.thecourierexpress.com/tri_county_sunday/cast-presents-steve-martins-hilarious-comedy-picasso-at-the-lapin-agile/article_ddee9b33-c3cc-42c2-a667-6b98ec029802.html', 0.65, 328, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anna_wintour_20260808101500_329', 'ent_anna-wintour', '2026-08-08', 2026, 'public_appearance', 'news',
   'Anna Wintour mentioned in businessghana.com', 'Anna Wintour mentioned in businessghana.com', 'src_gdelt',
   'http://www.businessghana.com/site/news/technology/353711/Vogue-just-gave-another-nod-of-approval-to-the-tech-world', 0.65, 329, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260808103000_330', 'ent_brian-chesky', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian Chesky mentioned in themarketsdaily.com', 'Brian Chesky mentioned in themarketsdaily.com', 'src_gdelt',
   'https://www.themarketsdaily.com/2026/08/08/airbnb-nasdaqabnb-price-target-raised-to-170-00-at-piper-sandler.html', 0.65, 330, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alia_bhatt_20260808103000_330', 'ent_alia-bhatt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alia Bhatt mentioned in ibtimes.co.in', 'Alia Bhatt mentioned in ibtimes.co.in', 'src_gdelt',
   'https://www.ibtimes.co.in/assam-floods-over-1-55-lakh-affected-13-districts-death-toll-rises-98-904544', 0.65, 330, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260808103000_330', 'ent_buzz-aldrin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in indiatimes.com', 'Buzz Aldrin mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/science/in-1969-apollo-11-astronauts-reported-seeing-mysterious-flashes-of-light-even-with-their-eyes-closed-during-their-journey-through-deep-space/articleshow/133031593.cms', 0.65, 330, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260808103000_330', 'ent_alice-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'MN Music Hall of Fame shares the origin story of First Avenue (Alice Cooper mentioned)', 'MN Music Hall of Fame shares the origin story of First Avenue', 'src_gdelt',
   'https://www.nujournal.com/news/local-news/2026/08/08/mn-music-hall-of-fame-shares-the-origin-story-of-first-avenue/', 0.65, 330, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_fosse_20260808103000_330', 'ent_bob-fosse', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Fosse mentioned in slashfilm.com', 'Bob Fosse mentioned in slashfilm.com', 'src_gdelt',
   'https://www.slashfilm.com/2230065/quote-of-the-day-john-woo-logic/', 0.65, 330, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_caitlin_clark_20260808104500_331', 'ent_caitlin-clark', '2026-08-08', 2026, 'public_appearance', 'news',
   'Caitlin Clark mentioned in si.com', 'Caitlin Clark mentioned in si.com', 'src_gdelt',
   'https://www.si.com/betting/wnba-best-bets-today-predictions-prop-bets-for-fever-vs-sky-olivia-miles-storm-vs-fire', 0.65, 331, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_hamilton_20260808110000_332', 'ent_alexander-hamilton', '2026-08-08', 2026, 'public_appearance', 'news',
   'The Sculptor and Visionary Behind the Thomas Jefferson Statue at the White House (Alexander Hamilton mentioned)', 'The Sculptor and Visionary Behind the Thomas Jefferson Statue at the White House', 'src_gdelt',
   'https://www.theepochtimes.com/article/the-sculptor-and-visionary-behind-the-thomas-jefferson-statue-at-the-white-house-6070205', 0.65, 332, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bobby_murphy_20260808110000_332', 'ent_bobby-murphy', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bobby Murphy mentioned in tickerreport.com', 'Bobby Murphy mentioned in tickerreport.com', 'src_gdelt',
   'https://www.tickerreport.com/banking-finance/13535427/snap-nysesnap-cto-robert-murphy-sells-2000000-shares-of-stock.html', 0.65, 332, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aishwarya_rai_20260808111500_333', 'ent_aishwarya-rai', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aishwarya Rai mentioned in indiatimes.com', 'Aishwarya Rai mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/entertainment/tamil/movies/news/mani-ratnam-and-aishwarya-rai-how-a-timeless-director-actress-bond-began/articleshow/133050288.cms', 0.65, 333, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bob_dole_20260808111500_333', 'ent_bob-dole', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bob Dole mentioned in theharvardadvocate.com', 'Bob Dole mentioned in theharvardadvocate.com', 'src_gdelt',
   'https://www.theharvardadvocate.com/content/an-interview-with-ben-lerner', 0.65, 333, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260808111500_333', 'ent_adam-scott', '2026-08-08', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in collider.com', 'Adam Scott mentioned in collider.com', 'src_gdelt',
   'https://collider.com/apple-tv-sci-fi-series-severance-streaming-success-august-2026/', 0.65, 333, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_graham_20260808111500_333', 'ent_billy-graham', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billy Graham mentioned in afr.net', 'Billy Graham mentioned in afr.net', 'src_gdelt',
   'https://afr.net/podcasts/todays-issues-with-tim-wildmon-and-company/2026/august/its-truth-for-youth-week/', 0.65, 333, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260808113000_334', 'ent_sachin-tendulkar', '2026-08-08', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in siasat.com', 'Sachin Tendulkar mentioned in siasat.com', 'src_gdelt',
   'https://www.siasat.com/sara-tendulkar-reveals-her-marriage-wishlist-pyaar-dosti-hai-3520985/', 0.65, 334, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260808113000_334', 'ent_al-pacino', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in siasat.com', 'Al Pacino mentioned in siasat.com', 'src_gdelt',
   'https://www.siasat.com/gangs-of-wasseypur-2-turns-14-who-inspired-nawazuddins-iconic-faisal-khan-3520951/', 0.65, 334, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260808114500_335', 'ent_alexander-graham-bell', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in prospect.org', 'Alexander Graham Bell mentioned in prospect.org', 'src_gdelt',
   'https://prospect.org/2026/08/08/aug-2026-another-forty-patriots/', 0.65, 335, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bayard_rustin_20260808114500_335', 'ent_bayard-rustin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bayard Rustin mentioned in prospect.org', 'Bayard Rustin mentioned in prospect.org', 'src_gdelt',
   'https://prospect.org/2026/08/08/aug-2026-another-forty-patriots/', 0.65, 335, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_pacino_20260808114500_335', 'ent_al-pacino', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Pacino mentioned in moneycontrol.com', 'Al Pacino mentioned in moneycontrol.com', 'src_gdelt',
   'https://www.moneycontrol.com/entertainment/14-years-of-gangs-of-wasseypur-2-nawazuddin-siddiqui-reveals-real-life-inspiration-behind-faisal-khan-article-13998639.html', 0.65, 335, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260808114500_335', 'ent_ivanka-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in hellomagazine.com', 'Ivanka Trump mentioned in hellomagazine.com', 'src_gdelt',
   'https://www.hellomagazine.com/us/917064/bikini-clad-ivanka-trump-shows-off-toned-figure-in-vacation-photos/', 0.65, 335, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260808120000_336', 'ent_brad-paisley', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in americansongwriter.com', 'Brad Paisley mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/dierks-bentley-and-the-chicks-passed-on-this-massive-hit-for-brad-paisley-in-2004/', 0.65, 336, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_anderson_cooper_20260808120000_336', 'ent_anderson-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Anderson Cooper mentioned in salon.com', 'Anderson Cooper mentioned in salon.com', 'src_gdelt',
   'https://www.salon.com/2026/08/08/the-ghost-of-60-minutes-is-about-to-haunt-bari-weiss/', 0.65, 336, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260808120000_336', 'ent_bari-weiss', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in salon.com', 'Bari Weiss mentioned in salon.com', 'src_gdelt',
   'https://www.salon.com/2026/08/08/the-ghost-of-60-minutes-is-about-to-haunt-bari-weiss/', 0.65, 336, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260808121500_337', 'ent_barry-sanders', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in fansided.com', 'Barry Sanders mentioned in fansided.com', 'src_gdelt',
   'https://fansided.com/nfl/luke-kuechly-is-the-second-youngest-hall-of-fame-inductee-ever-here-s-the-full-list', 0.65, 337, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260808121500_337', 'ent_bruno-mars', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in demingheadlight.com', 'Bruno Mars mentioned in demingheadlight.com', 'src_gdelt',
   'https://www.demingheadlight.com/2026/08/08/in-step/', 0.65, 337, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260808121500_337', 'ent_barry-sanders', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in fansided.com', 'Barry Sanders mentioned in fansided.com', 'src_gdelt',
   'https://fansided.com/nfl/the-best-hall-of-fame-player-every-nfl-franchise-has-produced', 0.65, 337, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260808121500_337', 'ent_barbra-streisand', '2026-08-08', 2026, 'public_appearance', 'news',
   'Raina Douris (Barbra Streisand mentioned)', 'Raina Douris', 'src_gdelt',
   'https://www.kcur.org/people/raina-douris', 0.65, 337, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_bach_20260808121500_337', 'ent_barbara-bach', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barbara Bach mentioned in express.co.uk', 'Barbara Bach mentioned in express.co.uk', 'src_gdelt',
   'https://www.express.co.uk/entertainment/films/2237180/Elvis-Presley-last-film-James-Bond', 0.65, 337, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260808123000_338', 'ent_bruno-mars', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in q98fm.com', 'Bruno Mars mentioned in q98fm.com', 'src_gdelt',
   'https://www.q98fm.com/2026/08/08/karol-g-drops-new-introspective-album-no-me-arrepiento-de-sentir-tanto/', 0.65, 338, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_pitt_20260808124500_339', 'ent_brad-pitt', '2026-08-08', 2026, 'public_appearance', 'news',
   'Encopresis: A disorder of shame | Journal Review (Brad Pitt mentioned)', 'Encopresis: A disorder of shame | Journal Review', 'src_gdelt',
   'http://www.journalreview.com/stories/encopresis-a-disorder-of-shame,403220', 0.65, 339, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivana_trump_20260808124500_339', 'ent_ivana-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ivana Trump mentioned in indiatimes.com', 'Ivana Trump mentioned in indiatimes.com', 'src_gdelt',
   'https://www.indiatimes.com/trending/donald-trumps-new-hairstyle-sparks-meme-frenzy-after-photos-from-las-vegas-goes-viral-netizens-revive-decades-old-surgery-claims/articleshow/133047105.html', 0.65, 339, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260808124500_339', 'ent_arnold-schwarzenegger', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in movieweb.com', 'Arnold Schwarzenegger mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/predator-best-scifi-action-stream-peacock-august-2026/', 0.65, 339, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruno_mars_20260808130000_340', 'ent_bruno-mars', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruno Mars mentioned in power923.com', 'Bruno Mars mentioned in power923.com', 'src_gdelt',
   'https://www.power923.com/2026/08/08/karol-g-drops-new-introspective-album-no-me-arrepiento-de-sentir-tanto/', 0.65, 340, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260808133000_342', 'ent_barry-sanders', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in macombdaily.com', 'Barry Sanders mentioned in macombdaily.com', 'src_gdelt',
   'https://www.macombdaily.com/2026/08/08/breaking-down-jahmyr-gibbs-extension-is-new-deal-lions-friendly/', 0.65, 342, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260808133000_342', 'ent_barry-sanders', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in macombdaily.com', 'Barry Sanders mentioned in macombdaily.com', 'src_gdelt',
   'https://www.macombdaily.com/2026/08/07/lions-jahmyr-gibbs-relieved-stressful-contract-negotiations-over/', 0.65, 342, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260808133000_342', 'ent_al-capone', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in reflector.com', 'Al Capone mentioned in reflector.com', 'src_gdelt',
   'http://www.reflector.com/news/state/firearms-have-reflected-technological-leaps-of-a-nation/article_a820f77c-e7cb-4ce0-96fa-41bbb4b1435f.html', 0.65, 342, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260808140000_344', 'ent_ben-affleck', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in collider.com', 'Ben Affleck mentioned in collider.com', 'src_gdelt',
   'https://collider.com/the-last-house-netflix-sci-fi-thriller-streaming-success-august-2026/', 0.65, 344, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260808140000_344', 'ent_adam-scott', '2026-08-08', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in theglobeandmail.com', 'Adam Scott mentioned in theglobeandmail.com', 'src_gdelt',
   'https://www.theglobeandmail.com/life/style/fashion-and-beauty/article-how-gen-x-canadians-are-caring-for-their-aging-skin/', 0.65, 344, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260808140000_344', 'ent_blake-lively', '2026-08-08', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in collider.com', 'Blake Lively mentioned in collider.com', 'src_gdelt',
   'https://collider.com/most-perfect-movie-plot-twists-2010s-ranked/', 0.65, 344, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260808141500_345', 'ent_lee-kuan-yew', '2026-08-08', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in thenewsnigeria.com.ng', 'Lee Kuan Yew mentioned in thenewsnigeria.com.ng', 'src_gdelt',
   'https://thenewsnigeria.com.ng/2026/08/08/the-leadership-followership-debate/', 0.65, 345, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260808143000_346', 'ent_al-gore', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in twitchy.com', 'Al Gore mentioned in twitchy.com', 'src_gdelt',
   'https://twitchy.com/grateful-calvin/2026/08/08/what-could-possib-lie-go-wrong-nutbar-scientist-wants-to-push-the-earth-away-from-the-sun-n2431065', 0.65, 346, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_albert_einstein_20260808143000_346', 'ent_albert-einstein', '2026-08-08', 2026, 'public_appearance', 'news',
   'Albert Einstein mentioned in scroll.in', 'Albert Einstein mentioned in scroll.in', 'src_gdelt',
   'https://scroll.in/article/1094889/the-myriad-minded-man-a-more-human-more-fragile-rabindranath-tagore-in-this-biography', 0.65, 346, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_capone_20260808143000_346', 'ent_al-capone', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Capone mentioned in cyprus-mail.com', 'Al Capone mentioned in cyprus-mail.com', 'src_gdelt',
   'https://cyprus-mail.com/2026/08/08/the-tragedy-that-shaped-one-of-cyprus-newest-mps', 0.65, 346, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260808144500_347', 'ent_arnold-schwarzenegger', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in howtogeek.com', 'Arnold Schwarzenegger mentioned in howtogeek.com', 'src_gdelt',
   'https://www.howtogeek.com/these-movies-are-so-good-i-bought-them-on-dvd-and-blu-ray/', 0.65, 347, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260808144500_347', 'ent_bruce-willis', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in howtogeek.com', 'Bruce Willis mentioned in howtogeek.com', 'src_gdelt',
   'https://www.howtogeek.com/these-movies-are-so-good-i-bought-them-on-dvd-and-blu-ray/', 0.65, 347, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260808150000_348', 'ent_brian-de-palma', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in dailymail.com', 'Brian De Palma mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16037367/scream-queen-jon-voight-billy-cristal-julia-roberts.html', 0.65, 348, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benedict_arnold_20260808150000_348', 'ent_benedict-arnold', '2026-08-08', 2026, 'public_appearance', 'news',
   'Benedict Arnold mentioned in t-g.com', 'Benedict Arnold mentioned in t-g.com', 'src_gdelt',
   'http://www.t-g.com/premium/theconversation/stories/1776s-declaration-of-independence-inspired-washingtons-troops-to-fight-against-the-odds-,227834', 0.65, 348, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260808150000_348', 'ent_alicia-keys', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in gigwise.com', 'Alicia Keys mentioned in gigwise.com', 'src_gdelt',
   'https://www.gigwise.com/drake-album-covers/', 0.65, 348, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260808150000_348', 'ent_angela-davis', '2026-08-08', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in lamarledger.com', 'Angela Davis mentioned in lamarledger.com', 'src_gdelt',
   'https://www.lamarledger.com/2026/08/06/back-to-school-shopping-tax-free-weekends/', 0.65, 348, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260808151500_349', 'ent_buzz-aldrin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in santamariatimes.com', 'Buzz Aldrin mentioned in santamariatimes.com', 'src_gdelt',
   'https://santamariatimes.com/ap/national/ap-trending-summarybrief-at-10-35-a-m-edt/article_635799a5-91f5-557d-bd99-3b2b652db23b.html', 0.65, 349, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260808151500_349', 'ent_arnold-schwarzenegger', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in screenrant.com', 'Arnold Schwarzenegger mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/terminator-survivors-new-era/', 0.65, 349, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260808151500_349', 'ent_bruce-willis', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in screenrant.com', 'Bruce Willis mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/the-sixth-sense-movie-best-horror-twist-all-time/', 0.65, 349, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_college_20260808153000_350', 'plc_boston-college', '2026-08-08', 2026, 'public_appearance', 'news',
   'Boston College mentioned in whdh.com', 'Boston College mentioned in whdh.com', 'src_gdelt',
   'https://whdh.com/news/service-suspension-on-multiple-green-line-branches-now-in-effect/', 0.65, 350, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bill_russell_20260808153000_350', 'ent_bill-russell', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bill Russell mentioned in pjmedia.com', 'Bill Russell mentioned in pjmedia.com', 'src_gdelt',
   'https://pjmedia.com/scott-pinsker/2026/08/08/the-sad-end-to-tony-romos-cbs-career-n4955938', 0.65, 350, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260808153000_350', 'ent_arnold-schwarzenegger', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in aol.com', 'Arnold Schwarzenegger mentioned in aol.com', 'src_gdelt',
   'https://www.aol.com/articles/2-4m-beach-house-featured-123046000.html', 0.65, 350, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_antonin_scalia_20260808160000_352', 'ent_antonin-scalia', '2026-08-08', 2026, 'public_appearance', 'news',
   'Antonin Scalia mentioned in theatlantic.com', 'Antonin Scalia mentioned in theatlantic.com', 'src_gdelt',
   'https://www.theatlantic.com/ideas/2026/08/mitch-mcconnell-gop-legacy/688221/', 0.65, 352, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billie_holiday_20260808160000_352', 'ent_billie-holiday', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billie Holiday mentioned in noise11.com', 'Billie Holiday mentioned in noise11.com', 'src_gdelt',
   'https://www.noise11.com/news/christina-aguilera-back-to-basics-20th-anniversary-20260809', 0.65, 352, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_palmer_20260808160000_352', 'ent_arnold-palmer', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arnold Palmer mentioned in hitc.com', 'Arnold Palmer mentioned in hitc.com', 'src_gdelt',
   'https://www.hitc.com/gary-player-once-suggested-his-achievement-which-jack-nicklaus-never-managed-was-better-than-his-nine-majors/', 0.65, 352, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_antony_blinken_20260808163000_354', 'ent_antony-blinken', '2026-08-08', 2026, 'public_appearance', 'news',
   'Antony Blinken mentioned in kyivpost.com', 'Antony Blinken mentioned in kyivpost.com', 'src_gdelt',
   'https://www.kyivpost.com/opinion/81948', 0.65, 354, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260808163000_354', 'ent_babe-ruth', '2026-08-08', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in fansided.com', 'Babe Ruth mentioned in fansided.com', 'src_gdelt',
   'https://fansided.com/mlb/5-yankees-eras-netflix-absolutely-has-to-include-in-its-new-drama-series', 0.65, 354, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barry_sanders_20260808163000_354', 'ent_barry-sanders', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barry Sanders mentioned in theoaklandpress.com', 'Barry Sanders mentioned in theoaklandpress.com', 'src_gdelt',
   'https://www.theoaklandpress.com/2026/08/08/breaking-down-jahmyr-gibbs-extension-is-new-deal-lions-friendly/', 0.65, 354, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260808164500_355', 'ent_buzz-aldrin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in wdtimes.com', 'Buzz Aldrin mentioned in wdtimes.com', 'src_gdelt',
   'http://www.wdtimes.com/news/national/ap-trending-summarybrief-at-10-11-a-m-edt/article_4ed87dd0-e8e3-5bbe-b4e4-a7584a8b1893.html', 0.65, 355, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260808164500_355', 'ent_bari-weiss', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in deadline.com', 'Bari Weiss mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/2026/08/madeleine-carlisle-stephen-colbert-60-minutes-atlantic-1237029326/', 0.65, 355, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bari_weiss_20260808164500_355', 'ent_bari-weiss', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bari Weiss mentioned in deadline.com', 'Bari Weiss mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/print-article/1237029326/', 0.65, 355, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_arnold_schwarzenegger_20260808164500_355', 'ent_arnold-schwarzenegger', '2026-08-08', 2026, 'public_appearance', 'news',
   'Arnold Schwarzenegger mentioned in independent.co.uk', 'Arnold Schwarzenegger mentioned in independent.co.uk', 'src_gdelt',
   'https://www.independent.co.uk/news/world/americas/goonies-beach-house-oregon-cannon-beach-b3026842.html', 0.65, 355, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_benedict_arnold_20260808164500_355', 'ent_benedict-arnold', '2026-08-08', 2026, 'public_appearance', 'news',
   'America got ''Faucied'' | The Highland County Press (Benedict Arnold mentioned)', 'America got ''Faucied'' | The Highland County Press', 'src_gdelt',
   'https://highlandcountypress.com/opinions/america-got-faucied', 0.65, 355, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260808170000_356', 'ent_andrew-carnegie', '2026-08-08', 2026, 'public_appearance', 'news',
   'West Seattle Blog&#x2026; | West Seattle (Admiral) Library closure (Andrew Carnegie mentioned)', 'West Seattle Blog&#x2026; | West Seattle (Admiral) Library closure', 'src_gdelt',
   'https://westseattleblog.com/event/west-seattle-admiral-library-closure/?instance_id=778639', 0.65, 356, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbra_streisand_20260808171500_357', 'ent_barbra-streisand', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barbra Streisand mentioned in indiatimes.com', 'Barbra Streisand mentioned in indiatimes.com', 'src_gdelt',
   'https://economictimes.indiatimes.com/news/international/global-trends/who-introduced-them-us-senator-katie-britt-reacts-to-ex-canadian-pm-justin-trudeau-and-katy-perry-romance-he-used-to-be-in-charge-of-a-whole-country/articleshow/133055606.cms', 0.65, 357, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alice_cooper_20260808171500_357', 'ent_alice-cooper', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alice Cooper mentioned in rollingstone.com', 'Alice Cooper mentioned in rollingstone.com', 'src_gdelt',
   'https://www.rollingstone.com/music/music-lists/van-halen-panama-david-lee-roth-sammy-hagar-1235603269/', 0.65, 357, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brad_paisley_20260808171500_357', 'ent_brad-paisley', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brad Paisley mentioned in dailymail.com', 'Brad Paisley mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16037965/hannah-dasher-country-singer-famous-married-celebrity.html', 0.65, 357, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_buzz_aldrin_20260808173000_358', 'ent_buzz-aldrin', '2026-08-08', 2026, 'public_appearance', 'news',
   'Buzz Aldrin mentioned in averyjournal.com', 'Buzz Aldrin mentioned in averyjournal.com', 'src_gdelt',
   'http://www.averyjournal.com/ap/national/ap-trending-summarybrief-at-1-01-p-m-edt/article_21b3f9be-a40f-5638-8a7d-7e2bd4b87fc9.html', 0.65, 358, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260808173000_358', 'ent_bruce-lee', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in aceshowbiz.com', 'Bruce Lee mentioned in aceshowbiz.com', 'src_gdelt',
   'https://www.aceshowbiz.com/celebrity/bruce_leung_siu-lung/', 0.65, 358, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_betsy_ross_20260808173000_358', 'ent_betsy-ross', '2026-08-08', 2026, 'public_appearance', 'news',
   'Betsy Ross mentioned in mountvernonnews.com', 'Betsy Ross mentioned in mountvernonnews.com', 'src_gdelt',
   'https://mountvernonnews.com/stories/684196485-knox-county-garden-clubs-host-historic-floral-show-during-festival', 0.65, 358, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260808173000_358', 'ent_brian-de-palma', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in aceshowbiz.com', 'Brian De Palma mentioned in aceshowbiz.com', 'src_gdelt',
   'https://www.aceshowbiz.com/celebrity/melanie_griffith/', 0.65, 358, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andy_warhol_20260808174500_359', 'ent_andy-warhol', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andy Warhol mentioned in womansworld.com', 'Andy Warhol mentioned in womansworld.com', 'src_gdelt',
   'https://www.womansworld.com/entertainment/books/best-new-fall-books-2026-editors-pick-top-must-reads', 0.65, 359, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_de_palma_20260808174500_359', 'ent_brian-de-palma', '2026-08-08', 2026, 'public_appearance', 'news',
   'Brian De Palma mentioned in screenrant.com', 'Brian De Palma mentioned in screenrant.com', 'src_gdelt',
   'https://screenrant.com/stephen-king-the-dead-zone-movie-top-rotten-tomatoes-tubi-streaming-free-august-2026/', 0.65, 359, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260808180000_360', 'ent_bruce-lee', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in nzherald.co.nz', 'Bruce Lee mentioned in nzherald.co.nz', 'src_gdelt',
   'https://www.nzherald.co.nz/nz/family-pleads-with-purewa-cemetery-for-return-of-concrete-labrador-to-fathers-grave/premium/4O7PGJVILZCQRJ3VN3SUFZVFLE/', 0.65, 360, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_fred_trump_20260808180000_360', 'ent_fred-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Fred Trump mentioned in rawstory.com', 'Fred Trump mentioned in rawstory.com', 'src_gdelt',
   'https://www.rawstory.com/trump-wig-cognitive-decline/', 0.65, 360, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260808180000_360', 'ent_ben-affleck', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in radaronline.com', 'Ben Affleck mentioned in radaronline.com', 'src_gdelt',
   'https://radaronline.com/p/jennifer-garner-john-miller-relationship-crossroads/', 0.65, 360, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260808181500_361', 'ent_alexander-graham-bell', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in indiatimes.com', 'Alexander Graham Bell mentioned in indiatimes.com', 'src_gdelt',
   'https://timesofindia.indiatimes.com/science/in-1876-alexander-graham-bell-patented-the-telephone-but-an-italian-inventor-had-already-built-the-telettrofono-years-earlier/articleshow/133054271.cms', 0.65, 361, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260808181500_361', 'ent_blake-lively', '2026-08-08', 2026, 'public_appearance', 'news',
   'Blake Lively mentioned in newkerala.com', 'Blake Lively mentioned in newkerala.com', 'src_gdelt',
   'https://www.newkerala.com/news/a/blake-lively-gives-rare-glimpse-into-family-life-479.htm', 0.65, 361, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260808181500_361', 'ent_black-hawk', '2026-08-08', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in wnd.com', 'Black Hawk mentioned in wnd.com', 'src_gdelt',
   'https://www.wnd.com/2026/08/dawn-donbas-ukraines-aeromedical-air-bridge/', 0.65, 361, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260808181500_361', 'ent_andrew-lloyd-webber', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in deadline.com', 'Andrew Lloyd Webber mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/2026/08/andrew-lloyd-webber-gcats-gutted-broadway-1237029355/', 0.65, 361, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260808183000_362', 'ent_audrey-hepburn', '2026-08-08', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in dailymail.com', 'Audrey Hepburn mentioned in dailymail.com', 'src_gdelt',
   'https://www.dailymail.com/tvshowbiz/article-16025811/Audrey-Hepburn-son-Mel-Ferrer-miscarriages-biography.html', 0.65, 362, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260808183000_362', 'ent_alfred-hitchcock', '2026-08-08', 2026, 'public_appearance', 'news',
   'Israel barred teens from watching this horror movie, and they should probably be grat (Alfred Hitchcock mentioned)', 'Israel barred teens from watching this horror movie, and they should probably be grat', 'src_gdelt',
   'https://www.ynetnews.com/culture/article/hjk00tceige', 0.65, 362, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260808184500_363', 'ent_adam-scott', '2026-08-08', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in collider.com', 'Adam Scott mentioned in collider.com', 'src_gdelt',
   'https://collider.com/greatest-apple-tv-shows-all-time/', 0.65, 363, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_willis_20260808184500_363', 'ent_bruce-willis', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Willis mentioned in collider.com', 'Bruce Willis mentioned in collider.com', 'src_gdelt',
   'https://collider.com/james-mcavoy-movies-essential-ranked/', 0.65, 363, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_carnegie_20260808190000_364', 'ent_andrew-carnegie', '2026-08-08', 2026, 'public_appearance', 'news',
   'Jaques Art Center earns grant for architectural plans to rehabilitate historic building (Andrew Carnegie mentioned)', 'Jaques Art Center earns grant for architectural plans to rehabilitate historic building', 'src_gdelt',
   'https://www.brainerddispatch.com/news/local/jaques-art-center-earns-grant-for-architectural-plans-to-rehabilitate-historic-building', 0.65, 364, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_blake_lively_20260808190000_364', 'ent_blake-lively', '2026-08-08', 2026, 'public_appearance', 'news',
   'Blake Lively gives rare glimpse into family life with Ryan Reynolds and four kids (Blake Lively mentioned)', 'Blake Lively gives rare glimpse into family life with Ryan Reynolds and four kids', 'src_gdelt',
   'https://news.webindia123.com/news/Articles/Entertainment/20260808/4484953.html', 0.65, 364, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260808190000_364', 'ent_lee-kuan-yew', '2026-08-08', 2026, 'public_appearance', 'news',
   'Europe is fiddling while Rome burns (Lee Kuan Yew mentioned)', 'Europe is fiddling while Rome burns', 'src_gdelt',
   'https://www.taipeitimes.com/News/editorials/archives/2026/08/09/2003862171', 0.65, 364, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260808191500_365', 'ent_bruce-lee', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in stuff.tv', 'Bruce Lee mentioned in stuff.tv', 'src_gdelt',
   'https://www.stuff.tv/features/best-marvel-movies-mcu-films-ranked/', 0.65, 365, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ben_affleck_20260808191500_365', 'ent_ben-affleck', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ben Affleck mentioned in slashfilm.com', 'Ben Affleck mentioned in slashfilm.com', 'src_gdelt',
   'https://www.slashfilm.com/2230327/forgotten-heist-movies-still-hold-up-today/', 0.65, 365, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_angela_davis_20260808193000_366', 'ent_angela-davis', '2026-08-08', 2026, 'public_appearance', 'news',
   'Angela Davis mentioned in burlington-record.com', 'Angela Davis mentioned in burlington-record.com', 'src_gdelt',
   'https://www.burlington-record.com/2026/08/06/back-to-school-shopping-tax-free-weekends/', 0.65, 366, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alexander_graham_bell_20260808200000_368', 'ent_alexander-graham-bell', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alexander Graham Bell mentioned in thenational.scot', 'Alexander Graham Bell mentioned in thenational.scot', 'src_gdelt',
   'https://www.thenational.scot/news/26447989.new-wetherspoon-pub-opens-edinburgh-2026/', 0.65, 368, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260808200000_368', 'ent_al-gore', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in dailyadvertiser.com.au', 'Al Gore mentioned in dailyadvertiser.com.au', 'src_gdelt',
   'https://www.dailyadvertiser.com.au/story/9326367/why-bob-katters-beast-warning-resonates-as-challenges-rise/', 0.65, 368, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_al_gore_20260808200000_368', 'ent_al-gore', '2026-08-08', 2026, 'public_appearance', 'news',
   'Al Gore mentioned in muswellbrookchronicle.com.au', 'Al Gore mentioned in muswellbrookchronicle.com.au', 'src_gdelt',
   'https://www.muswellbrookchronicle.com.au/story/9326367/why-bob-katters-beast-warning-resonates-as-challenges-rise/', 0.65, 368, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260808203000_370', 'ent_audrey-hepburn', '2026-08-08', 2026, 'public_appearance', 'news',
   'Audrey Hepburn mentioned in vice.com', 'Audrey Hepburn mentioned in vice.com', 'src_gdelt',
   'https://www.vice.com/en/article/8-rb-covers-that-might-just-be-better-than-the-originals/', 0.65, 370, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260808204500_371', 'ent_adam-scott', '2026-08-08', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in hitc.com', 'Adam Scott mentioned in hitc.com', 'src_gdelt',
   'https://www.hitc.com/ernie-els-once-claimed-one-of-gary-players-greatest-rounds-was-a-77-that-he-shot-at-augusta/', 0.65, 371, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260808204500_371', 'ent_babe-ruth', '2026-08-08', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in tsn.ca', 'Babe Ruth mentioned in tsn.ca', 'src_gdelt',
   'https://www.tsn.ca/mlb/article/rivera-returns-to-yankees-old-timers-day-after-tearing-achilles-last-year/', 0.65, 371, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_babe_ruth_20260808204500_371', 'ent_babe-ruth', '2026-08-08', 2026, 'public_appearance', 'news',
   'Babe Ruth mentioned in hindustantimes.com', 'Babe Ruth mentioned in hindustantimes.com', 'src_gdelt',
   'https://www.hindustantimes.com/genesis/mariano-rivera-returns-to-yankees-old-timer-s-day-after-tearing-achilles-tendon-last-year-101786217186739.html', 0.65, 371, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260808204500_371', 'ent_andrew-lloyd-webber', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in deadline.com', 'Andrew Lloyd Webber mentioned in deadline.com', 'src_gdelt',
   'https://deadline.com/print-article/1237029355/', 0.65, 371, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_fred_trump_20260808204500_371', 'ent_fred-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Fred Trump mentioned in the-independent.com', 'Fred Trump mentioned in the-independent.com', 'src_gdelt',
   'https://www.the-independent.com/life-style/trump-hair-weave-niece-wig-debate-b3029790.html', 0.65, 371, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260808204500_371', 'ent_andrew-lloyd-webber', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in upi.com', 'Andrew Lloyd Webber mentioned in upi.com', 'src_gdelt',
   'https://www.upi.com/Entertainment_News/Music/2026/08/08/cats-jellicle-ball-closing-andrew-lloyd-webber/1121786210618/', 0.65, 371, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alfred_hitchcock_20260808204500_371', 'ent_alfred-hitchcock', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alfred Hitchcock mentioned in 1428elm.com', 'Alfred Hitchcock mentioned in 1428elm.com', 'src_gdelt',
   'https://1428elm.com/david-fincher-kent-jones-plan-john-carpenter-documentary', 0.65, 371, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_boston_college_20260808211500_373', 'plc_boston-college', '2026-08-08', 2026, 'public_appearance', 'news',
   'Boston College mentioned in bostonherald.com', 'Boston College mentioned in bostonherald.com', 'src_gdelt',
   'https://www.bostonherald.com/2026/08/08/five-star-st-johns-prep-qb-verbally-commits-to-elite-college-powerhouse/', 0.65, 373, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_billy_joel_20260808211500_373', 'ent_billy-joel', '2026-08-08', 2026, 'public_appearance', 'news',
   'Billy Joel mentioned in americansongwriter.com', 'Billy Joel mentioned in americansongwriter.com', 'src_gdelt',
   'https://americansongwriter.com/3-hits-from-the-80s-that-were-inspired-by-real-relationship-drama/', 0.65, 373, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adam_scott_20260808214500_375', 'ent_adam-scott', '2026-08-08', 2026, 'public_appearance', 'news',
   'Adam Scott mentioned in caribjournal.com', 'Adam Scott mentioned in caribjournal.com', 'src_gdelt',
   'https://www.caribjournal.com/2026/08/08/belize-nonstop-flights/', 0.65, 375, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_sachin_tendulkar_20260808214500_375', 'ent_sachin-tendulkar', '2026-08-08', 2026, 'public_appearance', 'news',
   'Sachin Tendulkar mentioned in tribuneindia.com', 'Sachin Tendulkar mentioned in tribuneindia.com', 'src_gdelt',
   'https://www.tribuneindia.com/news/comment/jassi-sidhus-last-story/', 0.65, 375, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_bruce_lee_20260808214500_375', 'ent_bruce-lee', '2026-08-08', 2026, 'public_appearance', 'news',
   'Bruce Lee mentioned in newstalkzb.co.nz', 'Bruce Lee mentioned in newstalkzb.co.nz', 'src_gdelt',
   'https://www.newstalkzb.co.nz/news/national/let-a-sleeping-dog-lie-family-asks-purewa-cemetery-to-return-concrete-labrador-to-father-s-grave/', 0.65, 375, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_alicia_keys_20260808214500_375', 'ent_alicia-keys', '2026-08-08', 2026, 'public_appearance', 'news',
   'Alicia Keys mentioned in timesofsandiego.com', 'Alicia Keys mentioned in timesofsandiego.com', 'src_gdelt',
   'https://timesofsandiego.com/arts/2026/08/08/alicia-keys-swizz-beatz-cap-giants-exhibition-with-final-flourish-at-mcasd-party/', 0.65, 375, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_barbara_walters_20260808220000_376', 'ent_barbara-walters', '2026-08-08', 2026, 'public_appearance', 'news',
   'Barbara Walters mentioned in newsbusters.org', 'Barbara Walters mentioned in newsbusters.org', 'src_gdelt',
   'https://newsbusters.org/blogs/nb/kyle-drennen/2019/03/26/media-blasted-starr-report-fear-mueller-didnt-go-far-enough', 0.65, 376, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260808220000_376', 'ent_lee-kuan-yew', '2026-08-08', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in lankaweb.com', 'Lee Kuan Yew mentioned in lankaweb.com', 'src_gdelt',
   'https://www.lankaweb.com/news/items/2026/08/08/lee-kuan-yews-anti-corruption-model-and-sri-lanka/', 0.65, 376, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_breanna_stewart_20260808221500_377', 'ent_breanna-stewart', '2026-08-08', 2026, 'public_appearance', 'news',
   'Breanna Stewart mentioned in nydailynews.com', 'Breanna Stewart mentioned in nydailynews.com', 'src_gdelt',
   'https://www.nydailynews.com/2026/08/08/betnijah-laney-hamilton-liberty-chris-demarco/', 0.65, 377, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_lee_kuan_yew_20260808221500_377', 'ent_lee-kuan-yew', '2026-08-08', 2026, 'public_appearance', 'news',
   'Lee Kuan Yew mentioned in asiaone.com', 'Lee Kuan Yew mentioned in asiaone.com', 'src_gdelt',
   'https://www.asiaone.com:443/singapore/national-day-awards-2026-order-of-temasek-sundaresh-menon-eddie-teo', 0.65, 377, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_audrey_hepburn_20260808221500_377', 'ent_audrey-hepburn', '2026-08-08', 2026, 'public_appearance', 'news',
   'Happy to be sitting on more faces than ever (Audrey Hepburn mentioned)', 'Happy to be sitting on more faces than ever', 'src_gdelt',
   'https://www.odt.co.nz/canterbury/christchurch/happy-to-be-sitting-on-more-faces-than-ever-nyz0bpo1', 0.65, 377, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_brian_chesky_20260808223000_378', 'ent_brian-chesky', '2026-08-08', 2026, 'public_appearance', 'news',
   'Hot Talk Radio | News and Information with Commentary and Streaming (Brian Chesky mentioned)', 'Hot Talk Radio | News and Information with Commentary and Streaming', 'src_gdelt',
   'https://www.hottalkradio.com/news/2026/08/09/', 0.65, 378, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_adrien_brody_20260808224500_379', 'ent_adrien-brody', '2026-08-08', 2026, 'public_appearance', 'news',
   'Adrien Brody mentioned in fox42kptm.com', 'Adrien Brody mentioned in fox42kptm.com', 'src_gdelt',
   'https://fox42kptm.com/news/entertainment/final-2026-oscar-predictions-and-what-to-know-before-the-show-sinners-conan-obrien-one-battle-after-another-michael-b-jordan', 0.65, 379, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_aaron_judge_20260808231500_381', 'ent_aaron-judge', '2026-08-08', 2026, 'public_appearance', 'news',
   'Aaron Judge mentioned in thebiglead.com', 'Aaron Judge mentioned in thebiglead.com', 'src_gdelt',
   'https://www.thebiglead.com/giancarlo-stanton-injury/', 0.65, 381, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_black_hawk_20260808231500_381', 'ent_black-hawk', '2026-08-08', 2026, 'public_appearance', 'news',
   'Black Hawk mentioned in movieweb.com', 'Black Hawk mentioned in movieweb.com', 'src_gdelt',
   'https://movieweb.com/ridley-scott-war-movies-ranked/', 0.65, 381, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_ivanka_trump_20260808231500_381', 'ent_ivanka-trump', '2026-08-08', 2026, 'public_appearance', 'news',
   'Ivanka Trump mentioned in alternet.org', 'Ivanka Trump mentioned in alternet.org', 'src_gdelt',
   'https://www.alternet.org/trump-wolff-2677676088/', 0.65, 381, 'en', 'DAY', unixepoch(), unixepoch());
INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('ev_gkg_andrew_lloyd_webber_20260808234500_383', 'ent_andrew-lloyd-webber', '2026-08-08', 2026, 'public_appearance', 'news',
   'Andrew Lloyd Webber mentioned in thewrap.com', 'Andrew Lloyd Webber mentioned in thewrap.com', 'src_gdelt',
   'https://www.thewrap.com/creative-content/theater/andrew-lloyd-webber-cats-the-jellicle-ball-closing-night-broadway/', 0.65, 383, 'en', 'DAY', unixepoch(), unixepoch());
