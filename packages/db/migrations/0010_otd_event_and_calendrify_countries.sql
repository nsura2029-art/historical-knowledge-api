-- ========================================
-- Migration 0010: On This Day (TASK-013) + Calendrify countries
-- Per TASK-013 spec, this is the data layer for the on-this-day API.
-- Includes: country_cca2_map (Calendrify country_id → ISO cca2)
--           holiday_occurrence (Calendrify holidays, copy-on-import)
--           otd_event (per-day events, separate from per-person career_event)
-- Tier 1 only: 1700-now, 12 categories
-- ========================================

-- ============================================================
-- 1. Country cca2 map (Calendrify country_id → ISO 3166-1 alpha-2)
-- ============================================================
CREATE TABLE IF NOT EXISTS country_cca2_map (
  calendrify_country_id INTEGER PRIMARY KEY,    -- Calendrify's integer
  cca2                  TEXT NOT NULL,          -- ISO 3166-1 alpha-2
  canonical_name        TEXT NOT NULL,          -- Calendrify's name (English)
  source                TEXT NOT NULL DEFAULT 'calendrify_v2026_08',
  created_at            INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_country_cca2_map_cca2 ON country_cca2_map(cca2);

INSERT OR REPLACE INTO country_cca2_map (calendrify_country_id, cca2, canonical_name) VALUES
  (1, 'AF', 'Afghanistan'),
  (2, 'AX', 'Åland Islands'),
  (3, 'AL', 'Albania'),
  (4, 'DZ', 'Algeria'),
  (5, 'AS', 'American Samoa'),
  (6, 'AD', 'Andorra'),
  (7, 'AO', 'Angola'),
  (8, 'AI', 'Anguilla'),
  (9, 'AQ', 'Antarctica'),
  (10, 'AG', 'Antigua & Barbuda'),
  (11, 'AR', 'Argentina'),
  (12, 'AM', 'Armenia'),
  (13, 'AW', 'Aruba'),
  (14, 'AU', 'Australia'),
  (15, 'AT', 'Austria'),
  (16, 'AZ', 'Azerbaijan'),
  (17, 'BS', 'Bahamas'),
  (18, 'BH', 'Bahrain'),
  (19, 'BD', 'Bangladesh'),
  (20, 'BB', 'Barbados'),
  (21, 'BY', 'Belarus'),
  (22, 'BE', 'Belgium'),
  (23, 'BZ', 'Belize'),
  (24, 'BJ', 'Benin'),
  (25, 'BM', 'Bermuda'),
  (26, 'BT', 'Bhutan'),
  (27, 'BO', 'Bolivia'),
  (28, 'BA', 'Bosnia & Herzegovina'),
  (29, 'BW', 'Botswana'),
  (30, 'BV', 'Bouvet Island'),
  (31, 'BR', 'Brazil'),
  (32, 'IO', 'British Indian Ocean Territory'),
  (33, 'BN', 'Brunei'),
  (34, 'BG', 'Bulgaria'),
  (35, 'BF', 'Burkina Faso'),
  (36, 'BI', 'Burundi'),
  (37, 'KH', 'Cambodia'),
  (38, 'CM', 'Cameroon'),
  (39, 'CA', 'Canada'),
  (40, 'CV', 'Cape Verde'),
  (41, 'KY', 'Cayman Islands'),
  (42, 'CF', 'Central African Republic'),
  (43, 'TD', 'Chad'),
  (44, 'CL', 'Chile'),
  (45, 'CN', 'China'),
  (46, 'CX', 'Christmas Island'),
  (47, 'CC', 'Cocos (Keeling) Islands'),
  (48, 'CO', 'Colombia'),
  (49, 'KM', 'Comoros'),
  (50, 'CG', 'Congo - Brazzaville'),
  (51, 'CD', 'Congo - Kinshasa'),
  (52, 'CK', 'Cook Islands'),
  (53, 'CR', 'Costa Rica'),
  (54, 'CI', 'Côte d''Ivoire'),
  (55, 'HR', 'Croatia'),
  (56, 'CU', 'Cuba'),
  (57, 'CY', 'Cyprus'),
  (58, 'CZ', 'Czechia'),
  (59, 'DK', 'Denmark'),
  (60, 'DJ', 'Djibouti'),
  (61, 'DM', 'Dominica'),
  (62, 'DO', 'Dominican Republic'),
  (63, 'TL', 'Timor-Leste'),
  (64, 'EC', 'Ecuador'),
  (65, 'EG', 'Egypt'),
  (66, 'SV', 'El Salvador'),
  (67, 'GQ', 'Equatorial Guinea'),
  (68, 'ER', 'Eritrea'),
  (69, 'EE', 'Estonia'),
  (70, 'ET', 'Ethiopia'),
  (71, 'FK', 'Falkland Islands'),
  (72, 'FO', 'Faroe Islands'),
  (73, 'FJ', 'Fiji'),
  (74, 'FI', 'Finland'),
  (75, 'FR', 'France'),
  (76, 'GF', 'French Guiana'),
  (77, 'PF', 'French Polynesia'),
  (78, 'TF', 'French Southern Territories'),
  (79, 'GA', 'Gabon'),
  (80, 'GM', 'Gambia'),
  (81, 'GE', 'Georgia'),
  (82, 'DE', 'Germany'),
  (83, 'GH', 'Ghana'),
  (84, 'GI', 'Gibraltar'),
  (85, 'GR', 'Greece'),
  (86, 'GL', 'Greenland'),
  (87, 'GD', 'Grenada'),
  (88, 'GP', 'Guadeloupe'),
  (89, 'GU', 'Guam'),
  (90, 'GT', 'Guatemala'),
  (91, 'GG', 'Guernsey'),
  (92, 'GN', 'Guinea'),
  (93, 'GW', 'Guinea-Bissau'),
  (94, 'GY', 'Guyana'),
  (95, 'HT', 'Haiti'),
  (96, 'HM', 'Heard & McDonald Islands'),
  (97, 'HN', 'Honduras'),
  (98, 'HK', 'Hong Kong SAR China'),
  (99, 'HU', 'Hungary'),
  (100, 'IS', 'Iceland'),
  (101, 'IN', 'India'),
  (102, 'ID', 'Indonesia'),
  (103, 'IR', 'Iran'),
  (104, 'IQ', 'Iraq'),
  (105, 'IE', 'Ireland'),
  (106, 'IL', 'Israel'),
  (107, 'IT', 'Italy'),
  (108, 'JM', 'Jamaica'),
  (109, 'JP', 'Japan'),
  (110, 'JE', 'Jersey'),
  (111, 'JO', 'Jordan'),
  (112, 'KZ', 'Kazakhstan'),
  (113, 'KE', 'Kenya'),
  (114, 'KI', 'Kiribati'),
  (115, 'KP', 'North Korea'),
  (116, 'KR', 'South Korea'),
  (117, 'KW', 'Kuwait'),
  (118, 'KG', 'Kyrgyzstan'),
  (119, 'LA', 'Laos'),
  (120, 'LV', 'Latvia'),
  (121, 'LB', 'Lebanon'),
  (122, 'LS', 'Lesotho'),
  (123, 'LR', 'Liberia'),
  (124, 'LY', 'Libya'),
  (125, 'LI', 'Liechtenstein'),
  (126, 'LT', 'Lithuania'),
  (127, 'LU', 'Luxembourg'),
  (128, 'MO', 'Macao SAR China'),
  (129, 'MK', 'North Macedonia'),
  (130, 'MG', 'Madagascar'),
  (131, 'MW', 'Malawi'),
  (132, 'MY', 'Malaysia'),
  (133, 'MV', 'Maldives'),
  (134, 'ML', 'Mali'),
  (135, 'MT', 'Malta'),
  (136, 'IM', 'Isle of Man'),
  (137, 'MH', 'Marshall Islands'),
  (138, 'MQ', 'Martinique'),
  (139, 'MR', 'Mauritania'),
  (140, 'MU', 'Mauritius'),
  (141, 'YT', 'Mayotte'),
  (142, 'MX', 'Mexico'),
  (143, 'FM', 'Micronesia'),
  (144, 'MD', 'Moldova'),
  (145, 'MC', 'Monaco'),
  (146, 'MN', 'Mongolia'),
  (147, 'ME', 'Montenegro'),
  (148, 'MS', 'Montserrat'),
  (149, 'MA', 'Morocco'),
  (150, 'MZ', 'Mozambique'),
  (151, 'MM', 'Myanmar (Burma)'),
  (152, 'NA', 'Namibia'),
  (153, 'NR', 'Nauru'),
  (154, 'NP', 'Nepal'),
  (155, 'BQ', 'Caribbean Netherlands'),
  (156, 'NL', 'Netherlands'),
  (157, 'NC', 'New Caledonia'),
  (158, 'NZ', 'New Zealand'),
  (159, 'NI', 'Nicaragua'),
  (160, 'NE', 'Niger'),
  (161, 'NG', 'Nigeria'),
  (162, 'NU', 'Niue'),
  (163, 'NF', 'Norfolk Island'),
  (164, 'MP', 'Northern Mariana Islands'),
  (165, 'NO', 'Norway'),
  (166, 'OM', 'Oman'),
  (167, 'PK', 'Pakistan'),
  (168, 'PW', 'Palau'),
  (169, 'PS', 'Palestinian Territories'),
  (170, 'PA', 'Panama'),
  (171, 'PG', 'Papua New Guinea'),
  (172, 'PY', 'Paraguay'),
  (173, 'PE', 'Peru'),
  (174, 'PH', 'Philippines'),
  (175, 'PN', 'Pitcairn Islands'),
  (176, 'PL', 'Poland'),
  (177, 'PT', 'Portugal'),
  (178, 'PR', 'Puerto Rico'),
  (179, 'QA', 'Qatar'),
  (180, 'RE', 'Réunion'),
  (181, 'RO', 'Romania'),
  (182, 'RU', 'Russia'),
  (183, 'RW', 'Rwanda'),
  (184, 'SH', 'St. Helena'),
  (185, 'KN', 'St. Kitts & Nevis'),
  (186, 'LC', 'St. Lucia'),
  (187, 'PM', 'St. Pierre & Miquelon'),
  (188, 'VC', 'St. Vincent & Grenadines'),
  (189, 'BL', 'St. Barthélemy'),
  (190, 'MF', 'St. Martin'),
  (191, 'WS', 'Samoa'),
  (192, 'SM', 'San Marino'),
  (193, 'ST', 'São Tomé & Príncipe'),
  (194, 'SA', 'Saudi Arabia'),
  (195, 'SN', 'Senegal'),
  (196, 'RS', 'Serbia'),
  (197, 'SC', 'Seychelles'),
  (198, 'SL', 'Sierra Leone'),
  (199, 'SG', 'Singapore'),
  (200, 'SK', 'Slovakia'),
  (201, 'SI', 'Slovenia'),
  (202, 'SB', 'Solomon Islands'),
  (203, 'SO', 'Somalia'),
  (204, 'ZA', 'South Africa'),
  (205, 'GS', 'South Georgia & South Sandwich Islands'),
  (206, 'SS', 'South Sudan'),
  (207, 'ES', 'Spain'),
  (208, 'LK', 'Sri Lanka'),
  (209, 'SD', 'Sudan'),
  (210, 'SR', 'Suriname'),
  (211, 'SJ', 'Svalbard & Jan Mayen'),
  (212, 'SZ', 'Eswatini'),
  (213, 'SE', 'Sweden'),
  (214, 'CH', 'Switzerland'),
  (215, 'SY', 'Syria'),
  (216, 'TW', 'Taiwan'),
  (217, 'TJ', 'Tajikistan'),
  (218, 'TZ', 'Tanzania'),
  (219, 'TH', 'Thailand'),
  (220, 'TG', 'Togo'),
  (221, 'TK', 'Tokelau'),
  (222, 'TO', 'Tonga'),
  (223, 'TT', 'Trinidad & Tobago'),
  (224, 'TN', 'Tunisia'),
  (225, 'TR', 'Türkiye'),
  (226, 'TM', 'Turkmenistan'),
  (227, 'TC', 'Turks & Caicos Islands'),
  (228, 'TV', 'Tuvalu'),
  (229, 'UG', 'Uganda'),
  (230, 'UA', 'Ukraine'),
  (231, 'AE', 'United Arab Emirates'),
  (232, 'GB', 'United Kingdom'),
  (233, 'US', 'United States'),
  (234, 'UM', 'U.S. Outlying Islands'),
  (235, 'UY', 'Uruguay'),
  (236, 'UZ', 'Uzbekistan'),
  (237, 'VU', 'Vanuatu'),
  (238, 'VA', 'Vatican City'),
  (239, 'VE', 'Venezuela'),
  (240, 'VN', 'Vietnam'),
  (241, 'VG', 'British Virgin Islands'),
  (242, 'VI', 'U.S. Virgin Islands'),
  (243, 'WF', 'Wallis & Futuna'),
  (244, 'EH', 'Western Sahara'),
  (245, 'YE', 'Yemen'),
  (246, 'ZM', 'Zambia'),
  (247, 'ZW', 'Zimbabwe'),
  (248, 'XK', 'Kosovo'),
  (249, 'CW', 'Curaçao'),
  (250, 'SX', 'Sint Maarten');

-- ============================================================
-- 2. Holiday occurrence (Calendrify holidays, 184 countries × ~5 years)
-- ============================================================
CREATE TABLE IF NOT EXISTS holiday_occurrence (
  id              INTEGER PRIMARY KEY,            -- Calendrify's id
  concept_id      INTEGER NOT NULL,              -- FK to holiday_concept
  calendrify_country_id INTEGER NOT NULL,        -- FK to country_cca2_map
  country_code    TEXT NOT NULL,                 -- ISO 3166-1 alpha-2 (denormalized)
  subdivision_code TEXT,                         -- e.g. US-CA
  locality_name   TEXT,
  start_date      TEXT NOT NULL,                 -- YYYY-MM-DD
  end_date        TEXT,                          -- for multi-day holidays
  observed_date   TEXT,                          -- if observed on different day
  date_role       TEXT,                          -- 'fixed', 'movable', 'substitute'
  legal_status    TEXT,                          -- 'public', 'de_facto', 'observance'
  scope_level     TEXT NOT NULL,                 -- 'country', 'state', 'local'
  event_domain    TEXT NOT NULL,                 -- 'national holiday', 'religious', etc.
  prominence      TEXT,                          -- 'high', 'medium', 'low'
  date_status     TEXT,                          -- 'confirmed', 'tentative'
  tentative_reason TEXT,
  is_working_day  INTEGER,                       -- 0 or 1
  notes           TEXT,
  worldwide       INTEGER,                       -- 0 or 1
  category        TEXT NOT NULL,                 -- 'public_holiday', 'observance', 'school_holiday'
  origin          TEXT,                          -- source attribution
  release_id      TEXT,                          -- Calendrify release identifier
  source_id       TEXT,                          -- FK to our source_registry
  created_at      INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_holiday_occurrence_country ON holiday_occurrence(country_code);
CREATE INDEX IF NOT EXISTS idx_holiday_occurrence_start_date ON holiday_occurrence(start_date);
CREATE INDEX IF NOT EXISTS idx_holiday_occurrence_mm_dd ON holiday_occurrence(substr(start_date, 6, 5));
CREATE INDEX IF NOT EXISTS idx_holiday_occurrence_concept ON holiday_occurrence(concept_id);

-- ============================================================
-- 3. Holiday concept (the holiday itself, e.g. "New Year's Day")
-- ============================================================
CREATE TABLE IF NOT EXISTS holiday_concept (
  id              INTEGER PRIMARY KEY,            -- Calendrify's id
  name_en         TEXT NOT NULL,                  -- "New Year's Day"
  name_local      TEXT,                           -- local name
  tradition       TEXT,                           -- 'christian', 'islamic', 'civic', etc.
  description     TEXT,
  wikidata_qid    TEXT,                           -- Q5779, etc.
  worldwide       INTEGER,                        -- 0 or 1
  origin          TEXT,
  release_id      TEXT,
  source_id       TEXT,
  created_at      INTEGER NOT NULL DEFAULT (unixepoch())
);

CREATE INDEX IF NOT EXISTS idx_holiday_concept_wikidata ON holiday_concept(wikidata_qid);

-- ============================================================
-- 4. otd_event (the on-this-day event — the centerpiece of TASK-013)
-- Per-day events, separate from career_event (per-person).
-- ============================================================
CREATE TABLE IF NOT EXISTS otd_event (
  id              TEXT PRIMARY KEY,               -- ev_otd_<uuid>
  start_date      TEXT NOT NULL,                  -- YYYY-MM-DD
  end_date        TEXT,                           -- for multi-day events
  date_precision  TEXT NOT NULL DEFAULT 'day'
                CHECK (date_precision IN ('day')),
  mm_dd           TEXT NOT NULL,                  -- '08-05' (denormalized for fast lookup)
  year            INTEGER NOT NULL,               -- 1858, etc. (denormalized)
  title           TEXT NOT NULL,                  -- "First transatlantic telegraph cable completed"
  description     TEXT NOT NULL,                  -- 100-200 words
  category        TEXT NOT NULL,                  -- 12 enum values (see CHECK)
  place_id        TEXT REFERENCES place(id),
  place_name      TEXT,                           -- denormalized for display
  country_code    TEXT,                           -- denormalized
  hero_image_r2_key TEXT,                         -- R2 object key
  hero_image_credit TEXT,                         -- attribution
  featured        INTEGER NOT NULL DEFAULT 0,     -- 1 = hero of the day
  source_id       TEXT NOT NULL REFERENCES source_registry(id),
  source_url      TEXT,                           -- specific article URL
  source_locator  TEXT,                           -- section/anchor
  related_person_ids TEXT,                        -- JSON array of entity IDs
  related_place_ids TEXT,                         -- JSON array of entity IDs
  status          TEXT NOT NULL DEFAULT 'draft'
                CHECK (status IN ('draft', 'pending_review', 'published', 'rejected')),
  editorial_status TEXT NOT NULL DEFAULT 'pending'
                CHECK (editorial_status IN ('pending', 'approved', 'rejected')),
  created_at      INTEGER NOT NULL DEFAULT (unixepoch()),
  updated_at      INTEGER NOT NULL DEFAULT (unixepoch()),
  CHECK (category IN (
    'political', 'scientific', 'technological', 'environmental',
    'cultural', 'religion', 'economic', 'sports', 'exploration',
    'social', 'royal', 'crime'
  )),
  CHECK (year >= 1700 AND year <= 2100)  -- Tier 1: 1700-now
);

CREATE INDEX IF NOT EXISTS idx_otd_event_mm_dd ON otd_event(mm_dd);
CREATE INDEX IF NOT EXISTS idx_otd_event_year ON otd_event(year);
CREATE INDEX IF NOT EXISTS idx_otd_event_category ON otd_event(category);
CREATE INDEX IF NOT EXISTS idx_otd_event_featured ON otd_event(featured) WHERE featured = 1;
CREATE INDEX IF NOT EXISTS idx_otd_event_status ON otd_event(status);
CREATE INDEX IF NOT EXISTS idx_otd_event_country ON otd_event(country_code);

-- ============================================================
-- 5. Add Calendrify as a source in source_registry
-- ============================================================
INSERT OR REPLACE INTO source_registry
  (id, source_name, source_type, base_url, source_quality_tier, commercial_use_status, attribution_required, redistribution_allowed, media_reuse_status, automated_access_status, authentication_type, rate_limit_policy, refresh_frequency, legal_review_status, status, license_name, license_url, terms_url, documentation_url, created_at, updated_at)
VALUES
  ('src_calendrify', 'Calendrify (dateandtime.live holidays dataset)', 'database',
   'https://calendrify.com', 'B', 'requires-attribution', 1, 0, 'attribution-only', 'unrestricted',
   'none', 'unlimited', 'quarterly', 'APPROVED_BULK', 'APPROVED_BULK', 'CC-BY 4.0',
   'https://creativecommons.org/licenses/by/4.0/', 'https://calendrify.com/terms',
   'https://calendrify.com/docs', unixepoch(), unixepoch());

-- ============================================================
-- 6. ingestion_run record
-- ============================================================
INSERT OR REPLACE INTO ingestion_run (id, source_id, connector_version, started_at, completed_at, status, records_fetched, records_imported, records_skipped, records_failed, idempotency_key, triggered_by)
VALUES
  ('run_0010_calendrify_countries', 'src_calendrify', '1.0.0', strftime('%s', '2026-08-06'), strftime('%s', '2026-08-06'), 'succeeded', 250, 250, 0, 0, 'import_calendrify_countries_v1', 'manual');
