/**
 * @hka/contracts — Famous People schemas
 *
 * Source of truth for the famous-people API surface.
 * Per the v2.0 platform spec: claim-based, rights-aware, source-tiered.
 */

import { z } from 'zod';

// ---------------------------------------------------------------------------
// HistoricalDate (per AGENT-INSTRUCTIONS.md §3 + ref doc §5.4)
// ---------------------------------------------------------------------------

export const HistoricalDate = z.object({
  original: z.string().describe('Verbatim text of the date (e.g., "October 4, 1942" or "1207")'),
  earliest_gregorian: z.string().describe('Earliest proleptic Gregorian date (YYYY-MM-DD or YYYY or YYYY-MM)'),
  latest_gregorian: z.string().nullable().describe('Latest proleptic Gregorian date (for disputed/range dates)'),
  calendar: z.enum(['gregorian', 'julian', 'chinese_lunar', 'islamic', 'hebrew', 'unknown']).default('gregorian'),
  precision: z.enum(['day', 'month', 'year', 'decade', 'century', 'approximate', 'before', 'after', 'range', 'unknown']).default('day'),
  certainty: z.enum(['undisputed', 'disputed', 'contested', 'traditional', 'unknown']).default('undisputed'),
  place_name: z.string().nullable().optional().describe('Where the event happened'),
  place_country_code: z.string().nullable().optional().describe('ISO 3166-1 alpha-2'),
});

export type HistoricalDate = z.infer<typeof HistoricalDate>;

// ---------------------------------------------------------------------------
// Name forms
// ---------------------------------------------------------------------------

export const EntityName = z.object({
  id: z.string(),
  name_value: z.string(),
  name_type: z.enum(['canonical', 'birth', 'stage', 'married', 'former', 'regnal', 'religious', 'pen', 'nickname', 'initials', 'transliteration', 'translated', 'common_misspelling']),
  language_code: z.string().nullable().optional(),
  script_code: z.string().nullable().optional(),
  is_preferred: z.boolean().default(false),
});

export type EntityName = z.infer<typeof EntityName>;

// ---------------------------------------------------------------------------
// Citizenship, Profession, Fame
// ---------------------------------------------------------------------------

export const Citizenship = z.object({
  country_code: z.string().length(2).describe('ISO 3166-1 alpha-2'),
  country_name: z.string(),
  valid_from: z.number().int().nullable().optional(),
  valid_to: z.number().int().nullable().optional(),
  primary_flag: z.boolean().default(false),
});

export const Profession = z.object({
  profession_slug: z.string(),
  profession_name: z.string(),
  category: z.enum(['arts', 'science', 'politics', 'sports', 'business', 'military', 'religion', 'royalty', 'media', 'law', 'academia', 'other']),
  is_primary: z.boolean().default(false),
  start_year: z.number().int().nullable().optional(),
  end_year: z.number().int().nullable().optional(),
});

export const FameFlags = z.object({
  is_celebrity: z.boolean().default(false),
  is_historical_figure: z.boolean().default(false),
  is_professional: z.boolean().default(false),
  is_cultural_icon: z.boolean().default(false),
  is_royalty: z.boolean().default(false),
  is_controversial: z.boolean().default(false),
  is_living: z.boolean().default(false),
  is_military_leader: z.boolean().default(false),
  is_religious_spiritual: z.boolean().default(false),
  is_activist: z.boolean().default(false),
  is_pioneer: z.boolean().default(false),
  is_internet_personality: z.boolean().default(false),
  is_polarizing: z.boolean().default(false),
  is_living_legend: z.boolean().default(false),
});

export const FameAttributes = z.object({
  fame_scope: z.enum(['local', 'national', 'regional', 'global']).default('national'),
  fame_intensity: z.enum(['household_name', 'well_known', 'niche', 'cult']).default('well_known'),
  gender: z.enum(['male', 'female', 'nonbinary', 'unknown']).default('unknown'),
  controversy_level: z.number().int().min(0).max(5).default(0),
  era_relevance: z.string().nullable().optional(),
});

// ---------------------------------------------------------------------------
// Social Profile
// ---------------------------------------------------------------------------

export const SocialProfile = z.object({
  id: z.string(),
  platform: z.enum(['youtube', 'instagram', 'facebook', 'twitter', 'tiktok', 'linkedin', 'threads', 'mastodon', 'official_website', 'other']),
  handle: z.string().nullable().optional(),
  platform_account_id: z.string().nullable().optional(),
  profile_url: z.string().url(),
  account_type: z.enum(['personal', 'professional_page', 'fan_account', 'memorial', 'topic']).nullable().optional(),
  official_status: z.enum(['official_confirmed', 'likely_official', 'representative_or_agency', 'memorial', 'fan', 'parody', 'topic_or_auto_generated', 'unknown']).default('unknown'),
  confidence: z.number().min(0).max(1).default(0),
  verification_method: z.string().nullable().optional(),
  follower_observation: z.number().int().nullable().optional(),
  follower_observed_at: z.number().int().nullable().optional(),
  follower_expires_at: z.number().int().nullable().optional(),
  last_verified_at: z.number().int(),
});

export type SocialProfile = z.infer<typeof SocialProfile>;

// ---------------------------------------------------------------------------
// Media (asset + rights)
// ---------------------------------------------------------------------------

export const MediaAsset = z.object({
  id: z.string(),
  asset_type: z.enum(['image', 'video', 'audio', 'document']),
  url: z.string().url(),
  thumbnail_url: z.string().url().nullable().optional(),
  width: z.number().int().nullable().optional(),
  height: z.number().int().nullable().optional(),
  depiction_confidence: z.number().min(0).max(1),
  depiction_method: z.string().nullable().optional(),
  rights: z.object({
    creator_name: z.string().nullable().optional(),
    copyright_holder: z.string().nullable().optional(),
    license_code: z.string().nullable().optional(),
    license_url: z.string().url().nullable().optional(),
    attribution_text: z.string(),
    commercial_use_allowed: z.boolean().default(false),
    derivatives_allowed: z.boolean().default(false),
    attribution_required: z.boolean().default(true),
    share_alike_required: z.boolean().default(false),
    editorial_use_only: z.boolean().default(false),
    rights_verified_at: z.number().int().nullable().optional(),
  }),
});

export type MediaAsset = z.infer<typeof MediaAsset>;

// ---------------------------------------------------------------------------
// Works, Awards, Relations
// ---------------------------------------------------------------------------

export const Work = z.object({
  work_title: z.string(),
  work_type: z.enum(['book', 'film', 'album', 'song', 'paper', 'composition', 'painting', 'sculpture', 'tv_show', 'play', 'game', 'patent', 'other']),
  release_date: z.string().nullable().optional(),
  role: z.string(),
  is_primary: z.boolean().default(false),
});

export const Award = z.object({
  award_name: z.string(),
  year: z.number().int().nullable().optional(),
  result: z.enum(['won', 'nominated', 'shortlisted', 'announced', 'declined']),
});

export const Relation = z.object({
  relation_type: z.string(),
  related_person_name: z.string(),
  related_person_slug: z.string().nullable().optional(),
  valid_from: z.number().int().nullable().optional(),
  valid_to: z.number().int().nullable().optional(),
});

// ---------------------------------------------------------------------------
// External Identifiers
// ---------------------------------------------------------------------------

export const ExternalIdentifiers = z.object({
  wikidata_qid: z.string().nullable().optional(),
  viaf_id: z.string().nullable().optional(),
  isni: z.string().nullable().optional(),
  orcid: z.string().nullable().optional(),
  imdb_id: z.string().nullable().optional(),
  musicbrainz_id: z.string().nullable().optional(),
  official_website: z.string().url().nullable().optional(),
  wikipedia_url: z.string().url().nullable().optional(),
});

// ---------------------------------------------------------------------------
// Derived Attributes
// ---------------------------------------------------------------------------

export const DerivedAttributes = z.object({
  current_age: z.number().int().nullable().optional(),
  age_at_death: z.number().int().nullable().optional(),
  generation: z.object({
    slug: z.string(),
    name: z.string(),
    rule_version: z.string(),
  }).nullable().optional(),
  star_sign: z.object({
    slug: z.string(),
    name: z.string(),
    rule_version: z.string(),
  }).nullable().optional(),
  chinese_zodiac: z.object({
    animal: z.string(),
    rule_version: z.string(),
  }).nullable().optional(),
  active_years_min: z.number().int().nullable().optional(),
  active_years_max: z.number().int().nullable().optional(),
});

// ---------------------------------------------------------------------------
// Person summary (browse view)
// ---------------------------------------------------------------------------

export const PersonSummary = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  short_description: z.string().nullable().optional(),
  known_for_summary: z.string().nullable().optional(),
  living_status: z.enum(['living', 'deceased', 'undisclosed']),
  birth_year: z.number().int().nullable().optional(),
  death_year: z.number().int().nullable().optional(),
  birth_country_code: z.string().nullable().optional(),
  primary_profession_slug: z.string().nullable().optional(),
  primary_profession_name: z.string().nullable().optional(),
  generation_slug: z.string().nullable().optional(),
  star_sign_slug: z.string().nullable().optional(),
  chinese_zodiac_animal: z.string().nullable().optional(),
  gender: z.string().nullable().optional(),
  fame_flags: FameFlags,
  hero_image_url: z.string().url().nullable().optional().describe('Headshot or hero image (with full rights)'),
  popularity_score: z.number().default(0),
  popularity_rank: z.number().int().nullable().optional(),
});

export type PersonSummary = z.infer<typeof PersonSummary>;

// ---------------------------------------------------------------------------
// Person detail (full payload)
// ---------------------------------------------------------------------------

export const PersonDetail = z.object({
  id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  short_description: z.string().nullable().optional(),
  known_for_summary: z.string().nullable().optional(),
  living_status: z.enum(['living', 'deceased', 'undisclosed']),
  editorial_risk_level: z.enum(['low', 'medium', 'high']),
  names: z.array(EntityName),
  birth: HistoricalDate.nullable(),
  death: HistoricalDate.nullable(),
  birth_place_name: z.string().nullable().optional(),
  death_place_name: z.string().nullable().optional(),
  citizenships: z.array(Citizenship),
  professions: z.array(Profession),
  fame_flags: FameFlags,
  fame_attributes: FameAttributes,
  social_profiles: z.array(SocialProfile),
  media: z.array(MediaAsset),
  works: z.array(Work),
  awards: z.array(Award),
  relations: z.array(Relation),
  external_identifiers: ExternalIdentifiers,
  derived_attributes: DerivedAttributes,
  identity_confidence: z.number(),
  completeness_score: z.number(),
  provenance_score: z.number(),
  hero_image: MediaAsset.nullable(),
  last_reviewed_at: z.number().int().nullable().optional(),
  sources: z.array(z.object({
    claim: z.string(),
    tier: z.enum(['A', 'B', 'C', 'D', 'E']),
    source_name: z.string(),
    source_url: z.string().nullable().optional(),
    support_type: z.string(),
  })),
  review_notes: z.string().nullable().optional(),
});

export type PersonDetail = z.infer<typeof PersonDetail>;

// ---------------------------------------------------------------------------
// Browse query params
// ---------------------------------------------------------------------------

export const PersonBrowseParams = z.object({
  profession: z.string().optional().describe('Filter by profession slug'),
  country: z.string().length(2).optional().describe('Filter by citizenship country code'),
  generation: z.string().optional().describe('Filter by generation slug'),
  star_sign: z.string().optional().describe('Filter by star sign slug'),
  chinese_zodiac: z.string().optional().describe('Filter by Chinese zodiac animal'),
  gender: z.enum(['male', 'female', 'nonbinary', 'unknown']).optional(),
  fame_category: z.enum(['celebrity', 'historical_figure', 'professional', 'cultural_icon', 'royalty', 'controversial']).optional(),
  living: z.enum(['true', 'false']).optional().transform((v) => v === 'true' ? true : v === 'false' ? false : undefined),
  sort: z.enum(['popularity', 'birth_year_asc', 'birth_year_desc', 'name_asc', 'name_desc']).default('popularity'),
  cursor: z.string().optional(),
  limit: z.coerce.number().int().min(1).max(100).default(24),
});

export type PersonBrowseParams = z.infer<typeof PersonBrowseParams>;

export const PersonBrowseResponse = z.object({
  data: z.array(PersonSummary),
  next_cursor: z.string().nullable(),
  total_count: z.number().int(),
  facets: z.object({
    professions: z.record(z.string(), z.number().int()),
    countries: z.record(z.string(), z.number().int()),
    generations: z.record(z.string(), z.number().int()),
    star_signs: z.record(z.string(), z.number().int()),
    chinese_zodiacs: z.record(z.string(), z.number().int()),
  }).optional(),
});

// ---------------------------------------------------------------------------
// Facets
// ---------------------------------------------------------------------------

export const ProfessionFacet = z.object({
  slug: z.string(),
  name: z.string(),
  category: z.string(),
  count: z.number().int(),
});

export const GenerationFacet = z.object({
  slug: z.string(),
  name: z.string(),
  birth_year_min: z.number().int(),
  birth_year_max: z.number().int(),
  count: z.number().int(),
});

export const StarSignFacet = z.object({
  slug: z.string(),
  name: z.string(),
  count: z.number().int(),
});

export const ChineseZodiacFacet = z.object({
  animal: z.string(),
  count: z.number().int(),
});

export const CountryFacet = z.object({
  country_code: z.string().length(2),
  country_name: z.string(),
  count: z.number().int(),
});

// ---------------------------------------------------------------------------
// Birthdays
// ---------------------------------------------------------------------------

export const BirthdaysParams = z.object({
  mm: z.coerce.number().int().min(1).max(12),
  dd: z.coerce.number().int().min(1).max(31),
});

export const BirthdaysResponse = z.object({
  mm: z.number().int(),
  dd: z.number().int(),
  people: z.array(PersonSummary),
  total_count: z.number().int(),
});

// ---------------------------------------------------------------------------
// Error envelope (ref doc §8.4 — OVERRIDES playbook's application/problem+json)
// ---------------------------------------------------------------------------

export const RefDocError = z.object({
  error: z.object({
    code: z.string().describe('Machine-readable error code, e.g., PERSON_NOT_FOUND'),
    message: z.string().describe('Human-readable message'),
    requestId: z.string().describe('Correlates with X-Request-Id response header'),
    details: z.array(z.object({
      field: z.string().optional(),
      message: z.string(),
      code: z.string().optional(),
    })).default([]).describe('Field-level validation errors (only for 400/422)'),
  }),
});

export type RefDocError = z.infer<typeof RefDocError>;

// ---------------------------------------------------------------------------
// Source
// ---------------------------------------------------------------------------

export const SourceSummary = z.object({
  id: z.string(),
  source_name: z.string(),
  source_type: z.string(),
  source_quality_tier: z.enum(['A', 'B', 'C', 'D', 'E']),
  status: z.string(),
  base_url: z.string().nullable().optional(),
  license_name: z.string().nullable().optional(),
  commercial_use_status: z.string(),
  notes: z.string().nullable().optional(),
});

export type SourceSummary = z.infer<typeof SourceSummary>;

// ---------------------------------------------------------------------------
// Person's full source list (per ref doc §8.1 /v1/people/{id}/sources)
// ---------------------------------------------------------------------------

export const PersonSourcesResponse = z.object({
  person_id: z.string(),
  slug: z.string(),
  canonical_name: z.string(),
  total_sources: z.number().int(),
  sources: z.array(z.object({
    source_name: z.string(),
    source_quality_tier: z.enum(['A', 'B', 'C', 'D', 'E']),
    status: z.string(),
    supports_claims: z.array(z.string()),
    contradicts_claims: z.array(z.string()).default([]),
    first_fetched_at: z.number().int().nullable().optional(),
    last_fetched_at: z.number().int().nullable().optional(),
  })),
});
