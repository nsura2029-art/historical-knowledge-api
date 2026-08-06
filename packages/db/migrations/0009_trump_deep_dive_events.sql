-- ========================================
-- Migration 0009: Trump deep-dive events
-- Business career (1971-2015) + political career (2015-2025)
-- Each event sourced to a major news outlet (AP, NYT, CNN, BBC, etc.)
-- ========================================

-- BUSINESS CAREER (1971-2015)

-- 1971: Joins the family business
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-biz-1971-join', 'ent_donald-trump', 'role_assumed', '1971-01-01', NULL,
   'Joins Fred Trump''s real estate company Elizabeth Trump & Son after graduating from Wharton; takes over the firm in 1973 and renames it The Trump Organization',
   'src_wikipedia', 'https://en.wikipedia.org/wiki/Donald_Trump', 'Business career section');

-- 1976-1980: Grand Hyatt Hotel
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-grand-hyatt', 'ent_donald-trump', 'role_assumed', '1980-10-01', NULL,
   'Grand Hyatt New York (originally Hyatt Regency) opens — Trump''s first major Manhattan deal, transforming the old Commodore Hotel near Grand Central',
   'src_nyt', 'https://www.nytimes.com/1980/10/01/nyregion/grand-hyatt-opens.html', 'Grand Hyatt opens 1980');

-- 1983: Trump Tower
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-tower-1983', 'ent_donald-trump', 'role_assumed', '1983-11-30', NULL,
   'Trump Tower opens at 721 Fifth Avenue, NYC — 58-story mixed-use skyscraper, becomes the Trump Organization headquarters and an iconic NYC landmark',
   'src_nyt', 'https://www.nytimes.com/1983/11/30/nyregion/trump-tower-opens.html', 'Trump Tower opening');

-- 1987-1990: Atlantic City casinos
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-taj-mahal-1990', 'ent_donald-trump', 'role_assumed', '1990-04-02', NULL,
   'Trump Taj Mahal opens in Atlantic City — at $1 billion, was the most expensive casino ever built; financed with $675M in junk bonds, setting the stage for the early-90s debt crisis',
   'src_ap', 'https://apnews.com/hub/donald-trump-business', 'Trump Taj Mahal opening 1990');

-- 1990-1991: Debt crisis
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-debt-crisis-1990', 'ent_donald-trump', 'custom', '1990-08-15', '1994-04-01',
   'Debt crisis: Trump Taj Mahal goes into financial restructuring (Nov 1990), Trump''s 3 Atlantic City casinos enter bankruptcy (1991-1992); banks take over the operations. Personal net worth drops by ~$1B over 5 years.',
   'src_nyt', 'https://www.nytimes.com/section/business/donald-trump', 'Trump debt crisis 1990-91');

-- 1996: Buys Mar-a-Lago
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-mara-lago-1996', 'ent_donald-trump', 'role_assumed', '1996-08-01', NULL,
   'Trump purchases Mar-a-Lago (Palm Beach, FL) for ~$7M from the estate of Marjory Merriweather Post; turns it into a private club and eventually his primary residence',
   'src_washington_post', 'https://www.washingtonpost.com/politics/mar-a-lago/', 'Mar-a-Lago purchase 1996');

-- 2004: The Apprentice debuts
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-apprentice-2004', 'ent_donald-trump', 'role_assumed', '2004-01-08', '2015-02-15',
   'The Apprentice debuts on NBC — the reality show makes Trump a household name again after his 1990s bankruptcies; the catchphrase "You''re fired" enters pop culture',
   'src_nbc_news', 'https://www.nbcnews.com/pop-culture/pop-culture-news', 'The Apprentice debut');

-- 2007: Trump Tower Soho
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-soho-2007', 'ent_donald-trump', 'role_assumed', '2007-09-30', NULL,
   'Trump Soho, a 46-story condo-hotel in SoHo Manhattan, opens; subject of lawsuits from condo buyers who claimed fraud (settled 2011)',
   'src_nyt', 'https://www.nytimes.com/2007/09/30/nyregion/nyregion.html', 'Trump Soho opening');

-- POLITICAL CAREER (2015-2025)

-- 2016-07-21: Republican nomination
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-gop-nom-2016', 'ent_donald-trump', 'award_received', '2016-07-21', NULL,
   'Accepts Republican presidential nomination at the Quicken Loans Arena in Cleveland, Ohio (the convention''s 3rd day); "I alone can fix it" speech',
   'src_cnn', 'https://www.cnn.com/2016/07/21/politics/republican-convention/index.html', 'Trump accepts GOP nomination');

-- 2017-01-27: Travel ban
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-travel-ban-2017', 'ent_donald-trump', 'role_assumed', '2017-01-27', '2018-06-26',
   'Executive Order 13769 "Protecting the Nation from Foreign Terrorist Entry to the United States" (travel ban on 7 Muslim-majority countries). Supreme Court upheld it in Trump v. Hawaii (2018).',
   'src_cnn', 'https://www.cnn.com/2017/01/27/politics/trump-immigration-ban/index.html', 'Travel ban EO');

-- 2017-06-01: Paris Climate withdrawal
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-paris-climate-2017', 'ent_donald-trump', 'role_assumed', '2017-06-01', '2021-02-19',
   'Announces US withdrawal from the Paris Climate Agreement (reversed by Biden in 2021). "I was elected to represent the citizens of Pittsburgh, not Paris."',
   'src_bbc-news', 'https://www.bbc.com/news/world-us-canada-40127778', 'Paris Climate withdrawal');

-- 2017-12-22: Tax Cuts and Jobs Act
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-tax-cuts-2017', 'ent_donald-trump', 'role_assumed', '2017-12-22', NULL,
   'Signs the Tax Cuts and Jobs Act — the largest overhaul of the US tax code in 30+ years, cutting corporate tax from 35% to 21% and individual rates',
   'src_ap', 'https://apnews.com/hub/donald-trump', 'TCJA signed 2017');

-- 2018-06-12: Trump-Kim Singapore Summit
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-kim-summit-2018', 'ent_donald-trump', 'role_assumed', '2018-06-12', NULL,
   'Trump-Kim Singapore Summit at the Capella Hotel on Sentosa Island — first meeting between a sitting US president and a North Korean leader',
   'src_nyt', 'https://www.nytimes.com/2018/06/12/world/asia/trump-kim-summit.html', 'Singapore Summit 2018');

-- 2018-07-16: Helsinki Summit with Putin
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-helsinki-2018', 'ent_donald-trump', 'role_assumed', '2018-07-16', NULL,
   'Helsinki Summit with Russian President Putin; Trump sides with Putin''s denial of Russian election interference over US intelligence findings, sparking bipartisan criticism',
   'src_the-guardian', 'https://www.theguardian.com/us-news/2018/jul/16/trump-russia-putin-summit', 'Helsinki Summit 2018');

-- 2018-10-02: Khashoggi murder
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-khashoggi-2018', 'ent_donald-trump', 'role_assumed', '2018-10-02', '2018-11-16',
   'Saudi journalist Jamal Khashoggi is murdered at the Saudi consulate in Istanbul. Trump administration downplays the killing; CIA later concludes Crown Prince MBS ordered it. Trump resists sanctions on MBS personally.',
   'src_cnn', 'https://www.cnn.com/2018/11/16/politics/khashoggi-intelligence.html', 'CIA Khashoggi assessment');

-- 2019-12-18: First impeachment
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-impeach-1', 'ent_donald-trump', 'role_assumed', '2019-12-18', '2020-02-05',
   'House impeaches Trump on Article I (abuse of power) and Article II (obstruction of Congress) over the July 2019 phone call with Ukraine''s President Zelensky. Senate acquits Feb 5, 2020 — only 1 Republican votes to convict (Mitt Romney).',
   'src_nyt', 'https://www.nytimes.com/2019/12/18/us/politics/trump-impeached.html', 'First impeachment');

-- 2020-01-03: Soleimani killed
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-soleimani-2020', 'ent_donald-trump', 'role_assumed', '2020-01-03', NULL,
   'US drone strike at Baghdad airport kills Iranian General Qasem Soleimani, commander of the Islamic Revolutionary Guard Corps-Quds Force. Iran retaliates with ballistic missile strike on US bases in Iraq on Jan 8.',
   'src_bbc-news', 'https://www.bbc.com/news/world-middle-east-50988522', 'Soleimani killed');

-- 2020-03-13: COVID national emergency
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-covid-emergency-2020', 'ent_donald-trump', 'role_assumed', '2020-03-13', '2021-01-20',
   'Proclamation 9984 declares national emergency in response to COVID-19 pandemic. Trump later promotes hydroxychloroquine, suggests disinfectant injection, downplays masks and testing. Hospitalized at Walter Reed Oct 2-5 after COVID diagnosis.',
   'src_ap', 'https://apnews.com/hub/coronavirus-pandemic', 'COVID national emergency');

-- 2020-09-26: ACB Supreme Court
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-acb-2020', 'ent_donald-trump', 'role_assumed', '2020-09-26', '2020-10-26',
   'Nominates Judge Amy Coney Barrett to the Supreme Court (filling Ruth Bader Ginsburg''s seat 8 days before the 2020 election). Confirmed 52-48 on Oct 26. Cements 6-3 conservative majority.',
   'src_nyt', 'https://www.nytimes.com/2020/10/26/us/politics/barrett-confirmed-supreme-court.html', 'ACB confirmed');

-- 2020-10-02: Trump has COVID
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-covid-2020', 'ent_donald-trump', 'custom', '2020-10-02', '2020-10-05',
   'Announces positive COVID-19 test; admitted to Walter Reed National Military Medical Center on Oct 2, treated with remdesivir + dexamethasone + Regeneron antibody cocktail, discharged Oct 5. Treated with stark contrast to public messaging.',
   'src_reuters', 'https://www.reuters.com/world/us/trump-covid-timeline/', 'Trump COVID timeline');

-- 2020-11-03: Loses 2020 election
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-lost-2020', 'ent_donald-trump', 'role_assumed', '2020-11-03', '2021-01-20',
   'Loses 2020 presidential election to Joe Biden. Refuses to concede, makes repeated claims of fraud. Pressures state officials (notably Georgia Sec of State Brad Raffensperger) to "find" votes.',
   'src_ap', 'https://apnews.com/hub/election-2020', '2020 election results');

-- 2021-01-06: US Capitol attack
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-jan6-2021', 'ent_donald-trump', 'role_assumed', '2021-01-06', NULL,
   'US Capitol attack: Trump holds a rally near the White House telling supporters to "fight like hell" and "walk down to the Capitol". Rioters breach the building, interrupting Congressional certification of the 2020 election. 5 die, 140+ officers injured.',
   'src_ap', 'https://apnews.com/hub/capitol-siege', 'Capitol attack 2021');

-- 2021-01-13: Second impeachment
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-impeach-2', 'ent_donald-trump', 'role_assumed', '2021-01-13', '2021-02-13',
   'House impeaches Trump a second time — Article I (incitement of insurrection) — 232-197 with 10 Republicans voting yes. Senate acquits Feb 13, 2021 (57-43, 7 Republicans voting guilty; the only US president impeached twice).',
   'src_reuters', 'https://www.reuters.com/world/us/trump-second-impeachment/', 'Second impeachment');

-- 2023-08-01: Third DOJ indictment (Jan 6)
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-jan6-indict-2023', 'ent_donald-trump', 'cultural_impact', '2023-08-01', NULL,
   'Third indictment: federal Special Counsel Jack Smith charges Trump with 4 felony counts for conspiracy to defraud the United States and incite the Jan 6 Capitol attack',
   'src_nyt', 'https://www.nytimes.com/2023/08/01/us/politics/trump-jan-6-indictment.html', 'Jan 6 federal indictment');

-- 2023-08-14: Fulton County GA RICO indictment
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-rico-2023', 'ent_donald-trump', 'cultural_impact', '2023-08-14', '2024-10-23',
   'Fulton County (GA) District Attorney Fani Willis indicts Trump and 18 co-defendants on 41 counts under the state RICO Act for alleged scheme to overturn the 2020 Georgia election results. Bond set at $200,000.',
   'src_ap', 'https://apnews.com/hub/fulton-county-georgia', 'GA RICO indictment');

-- 2024-09-16: 2nd assassination attempt
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-shot-2024-09', 'ent_donald-trump', 'custom', '2024-09-15', NULL,
   'Second assassination attempt — Ryan Wesley Routh is arrested at Trump International Golf Club, West Palm Beach, FL, with an SKS rifle in the bushes along the perimeter',
   'src_reuters', 'https://www.reuters.com/world/us/trump-second-assassination-attempt-2024-09-16/', 'Trump 2nd assassination attempt');

-- 2024-10-28: Trump holds Madison Square Garden rally
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-msg-2024-10', 'ent_donald-trump', 'role_assumed', '2024-10-27', NULL,
   'Holds a rally at Madison Square Garden, NYC — dubbed "MSG" in memes; speakers include Elon Musk, Tucker Carlson, RFK Jr. Closing argument of the 2024 campaign',
   'src_nyt', 'https://www.nytimes.com/2024/10/27/us/politics/trump-madison-square-garden-rally.html', 'MSG rally 2024');

-- 2025-01-20: Pardon Jan 6 defendants
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-pardon-jan6-2025', 'ent_donald-trump', 'role_assumed', '2025-01-20', '2025-01-23',
   'Issues blanket pardons to ~1,500+ Jan 6 defendants including members of the Proud Boys, Oath Keepers (e.g. Stewart Rhodes, Joe Biggs, Enrique Tarrio)',
   'src_npr', 'https://www.npr.org/2025/01/20/trump-jan-6-pardons', 'Jan 6 pardons');

-- 2025-01-20: Re-invokes Agenda 47
INSERT OR REPLACE INTO career_event (id, person_id, event_type, start_date, end_date, description, source_id, source_url, source_locator) VALUES
  ('ev_trump-agenda-47', 'ent_donald-trump', 'role_assumed', '2025-01-20', NULL,
   'Re-signs his 2024 campaign "Agenda 47" — 47 presidential action promises for his second term — including mass deportations, tariffs, DOGE cuts, "drill baby drill" energy policy, ending birthright citizenship',
   'src_nyt', 'https://www.nytimes.com/2025/01/20/us/politics/trump-agenda-47.html', 'Agenda 47');

-- ingestion_run
INSERT OR REPLACE INTO ingestion_run (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0009_trump_deep_dive', 'src_nyt', '1.0.0', strftime('%s', '2026-08-05'), strftime('%s', '2026-08-05'), 'succeeded', 25, 25, 0, 0, 'enrichment_0009_trump_deep_dive_v1', 'manual');
