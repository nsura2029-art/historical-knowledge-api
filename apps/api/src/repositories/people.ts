/**
 * People repository — D1 queries for the famous-people API surface.
 *
 * Joins across entity, person, entity_name, social_profile, media_asset,
 * media_rights, person_profession, profession, person_award_result, award,
 * person_work_credit, work, person_derived_attribute, claim, source_record,
 * source_registry.
 */

import type { D1Database } from '@cloudflare/workers-types';

// ---------------------------------------------------------------------------
// Browse / search
// ---------------------------------------------------------------------------

export interface BrowseFilters {
  profession?: string;
  country?: string;
  generation?: string;
  star_sign?: string;
  chinese_zodiac?: string;
  gender?: string;
  fame_category?: string;
  living?: boolean;
  sort: 'popularity' | 'birth_year_asc' | 'birth_year_desc' | 'name_asc' | 'name_desc';
  cursor?: string;
  limit: number;
}

export interface PersonRow {
  id: string;
  slug: string;
  canonical_name: string;
  short_description: string | null;
  known_for_summary: string | null;
  living_status: 'living' | 'deceased' | 'undisclosed';
  birth_year: number | null;
  death_year: number | null;
  birth_country_code: string | null;
  primary_profession_slug: string | null;
  primary_profession_name: string | null;
  generation_slug: string | null;
  star_sign_slug: string | null;
  chinese_zodiac_animal: string | null;
  gender: string | null;
  age_at_death: number | null;
  is_celebrity: number;
  is_historical_figure: number;
  is_professional: number;
  is_cultural_icon: number;
  is_royalty: number;
  is_controversial: number;
  is_living: number;
  is_military_leader: number;
  is_religious_spiritual: number;
  is_activist: number;
  is_pioneer: number;
  is_internet_personality: number;
  is_polarizing: number;
  is_living_legend: number;
  hero_image_url: string | null;
  popularity_score: number;
  popularity_rank: number | null;
}

export interface BrowseResult {
  data: PersonRow[];
  next_cursor: string | null;
  total_count: number;
}

function buildBrowseWhere(filters: BrowseFilters): { sql: string; params: unknown[] } {
  const where: string[] = ["e.type = 'person'", "e.status = 'published'"];
  const params: unknown[] = [];

  if (filters.profession) {
    where.push("EXISTS (SELECT 1 FROM person_profession pp WHERE pp.person_id = e.id AND pp.profession_id = ?)");
    params.push(filters.profession);
  }
  if (filters.country) {
    where.push("EXISTS (SELECT 1 FROM person_citizenship pc JOIN place p ON p.id = pc.country_id WHERE pc.person_id = e.id AND p.country_code = ?)");
    params.push(filters.country);
  }
  if (filters.generation) {
    where.push("p.generation_slug = ?");
    params.push(filters.generation);
  }
  if (filters.star_sign) {
    where.push("p.star_sign_slug = ?");
    params.push(filters.star_sign);
  }
  if (filters.chinese_zodiac) {
    where.push("p.chinese_zodiac_animal = ?");
    params.push(filters.chinese_zodiac);
  }
  if (filters.gender) {
    where.push("p.gender = ?");
    params.push(filters.gender);
  }
  if (filters.living !== undefined) {
    where.push("p.living_status = ?");
    params.push(filters.living ? 'living' : 'deceased');
  }
  if (filters.fame_category) {
    const map: Record<string, string> = {
      celebrity: 'is_celebrity',
      historical_figure: 'is_historical_figure',
      professional: 'is_professional',
      cultural_icon: 'is_cultural_icon',
      royalty: 'is_royalty',
      controversial: 'is_controversial',
    };
    const col = map[filters.fame_category];
    if (col) {
      where.push(`p.${col} = 1`);
    }
  }
  return { sql: where.join(' AND '), params };
}

function buildBrowseOrderBy(sort: BrowseFilters['sort']): string {
  switch (sort) {
    case 'birth_year_asc':
      return "ORDER BY pda_birth.attribute_value ASC, e.canonical_name ASC";
    case 'birth_year_desc':
      return "ORDER BY pda_birth.attribute_value DESC, e.canonical_name ASC";
    case 'name_asc':
      return "ORDER BY e.canonical_name ASC";
    case 'name_desc':
      return "ORDER BY e.canonical_name DESC";
    case 'popularity':
    default:
      return "ORDER BY e.popularity_score DESC, e.canonical_name ASC";
  }
}

export async function browsePeople(db: D1Database, filters: BrowseFilters): Promise<BrowseResult> {
  const { sql: where, params } = buildBrowseWhere(filters);

  // Total count
  const countResult = await db
    .prepare(`SELECT COUNT(*) AS total FROM entity e JOIN person p ON p.id = e.id WHERE ${where}`)
    .bind(...params)
    .first<{ total: number }>();
  const total_count = countResult?.total ?? 0;

  // Browse query
  const orderBy = buildBrowseOrderBy(filters.sort);
  const limit = filters.limit;
  const offset = filters.cursor ? Number(atob(filters.cursor)) : 0;

  const query = `
    SELECT
      e.id, e.slug, e.canonical_name, e.popularity_score, e.popularity_rank,
      p.short_description, p.known_for_summary, p.living_status, p.gender,
      p.generation_slug, p.star_sign_slug, p.chinese_zodiac_animal,
      p.is_celebrity, p.is_historical_figure, p.is_professional, p.is_cultural_icon,
      p.is_royalty, p.is_controversial, p.is_living, p.is_military_leader,
      p.is_religious_spiritual, p.is_activist, p.is_pioneer, p.is_internet_personality,
      p.is_polarizing, p.is_living_legend,
      p.age_at_death,
      CAST(pda_birth.attribute_value AS INTEGER) AS birth_year,
      CAST(pda_death.attribute_value AS INTEGER) AS death_year,
      prof.id AS primary_profession_slug,
      prof.name AS primary_profession_name,
      (SELECT ma.url FROM media_asset ma
        WHERE ma.depiction_entity_id = e.id
          AND ma.asset_type = 'image'
          AND ma.status = 'approved'
        ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
      (SELECT place.country_code FROM person_place_relation ppr JOIN place ON place.id = ppr.place_id
        WHERE ppr.person_id = e.id AND ppr.relation_type = 'birthplace'
        LIMIT 1) AS birth_country_code
    FROM entity e
    JOIN person p ON p.id = e.id
    LEFT JOIN profession prof ON prof.id = p.primary_profession_id
    LEFT JOIN person_derived_attribute pda_birth ON pda_birth.person_id = e.id AND pda_birth.attribute_type = 'birth_year'
    LEFT JOIN person_derived_attribute pda_death ON pda_death.person_id = e.id AND pda_death.attribute_type = 'death_year'
    WHERE ${where}
    ${orderBy}
    LIMIT ? OFFSET ?
  `;
  const result = await db
    .prepare(query)
    .bind(...params, limit, offset)
    .all<PersonRow>();

  const next_offset = offset + (result.results?.length ?? 0);
  const next_cursor = next_offset < total_count
    ? btoa(String(next_offset))
    : null;

  return {
    data: result.results ?? [],
    next_cursor,
    total_count,
  };
}

// ---------------------------------------------------------------------------
// Single person by slug
// ---------------------------------------------------------------------------

export async function getPersonBySlug(db: D1Database, slug: string): Promise<PersonRow | null> {
  const result = await db
    .prepare(`
      SELECT
        e.id, e.slug, e.canonical_name, e.popularity_score, e.popularity_rank,
        p.short_description, p.known_for_summary, p.living_status, p.gender,
        p.generation_slug, p.star_sign_slug, p.chinese_zodiac_animal,
        p.is_celebrity, p.is_historical_figure, p.is_professional, p.is_cultural_icon,
        p.is_royalty, p.is_controversial, p.is_living, p.is_military_leader,
        p.is_religious_spiritual, p.is_activist, p.is_pioneer, p.is_internet_personality,
        p.is_polarizing, p.is_living_legend,
        p.age_at_death,
        p.cause_of_death,
        p.industry,
        p.era_slug,
        NULL AS birth_year,
        NULL AS death_year,
        NULL AS primary_profession_slug,
        NULL AS primary_profession_name,
        NULL AS hero_image_url,
        NULL AS birth_country_code
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE e.slug = ? AND e.type = 'person'
    `)
    .bind(slug)
    .first<PersonRow>();
  return result ?? null;
}

export interface NameRow {
  id: string;
  name_value: string;
  name_type: string;
  language_code: string | null;
  script_code: string | null;
  is_preferred: number;
}

export async function getNamesForPerson(db: D1Database, personId: string): Promise<NameRow[]> {
  const result = await db
    .prepare(`SELECT id, name_value, name_type, language_code, script_code, is_preferred FROM entity_name WHERE entity_id = ? ORDER BY is_preferred DESC, name_type ASC`)
    .bind(personId)
    .all<NameRow>();
  return result.results ?? [];
}

export interface CitizenshipRow {
  country_code: string;
  country_name: string;
  valid_from: number | null;
  valid_to: number | null;
  primary_flag: number;
}

export async function getCitizenshipsForPerson(db: D1Database, personId: string): Promise<CitizenshipRow[]> {
  const result = await db
    .prepare(`
      SELECT p.country_code, p.country_code AS country_name, pc.valid_from, pc.valid_to, pc.primary_flag
      FROM person_citizenship pc
      JOIN place p ON p.id = pc.country_id
      WHERE pc.person_id = ?
      ORDER BY pc.primary_flag DESC, pc.valid_from ASC
    `)
    .bind(personId)
    .all<CitizenshipRow>();
  return result.results ?? [];
}

export interface ProfessionRow {
  profession_slug: string;
  profession_name: string;
  category: string;
  is_primary: number;
  start_year: number | null;
  end_year: number | null;
}

export async function getProfessionsForPerson(db: D1Database, personId: string): Promise<ProfessionRow[]> {
  const result = await db
    .prepare(`
      SELECT prof.id AS profession_slug, prof.name AS profession_name, prof.category,
             pp.is_primary, pp.start_year, pp.end_year
      FROM person_profession pp
      JOIN profession prof ON prof.id = pp.profession_id
      WHERE pp.person_id = ?
      ORDER BY pp.is_primary DESC, prof.name ASC
    `)
    .bind(personId)
    .all<ProfessionRow>();
  return result.results ?? [];
}

export interface SocialProfileRow {
  id: string;
  platform: string;
  handle: string | null;
  platform_account_id: string | null;
  profile_url: string;
  account_type: string | null;
  official_status: string;
  confidence: number;
  verification_method: string | null;
  follower_observation: number | null;
  follower_observed_at: number | null;
  follower_expires_at: number | null;
  last_verified_at: number;
}

export async function getSocialProfilesForPerson(db: D1Database, personId: string): Promise<SocialProfileRow[]> {
  const result = await db
    .prepare(`
      SELECT id, platform, handle, platform_account_id, profile_url, account_type,
             official_status, confidence, verification_method,
             follower_observation, follower_observed_at, follower_expires_at, last_verified_at
      FROM social_profile
      WHERE person_id = ?
      ORDER BY confidence DESC, platform ASC
    `)
    .bind(personId)
    .all<SocialProfileRow>();
  return result.results ?? [];
}

export interface MediaAssetRow {
  id: string;
  asset_type: string;
  url: string;
  thumbnail_url: string | null;
  width: number | null;
  height: number | null;
  depiction_confidence: number;
  depiction_method: string | null;
  rights_id: string | null;
  creator_name: string | null;
  copyright_holder: string | null;
  license_code: string | null;
  license_url: string | null;
  attribution_text: string;
  commercial_use_allowed: number;
  derivatives_allowed: number;
  attribution_required: number;
  share_alike_required: number;
  editorial_use_only: number;
  rights_verified_at: number | null;
}

export async function getMediaForPerson(db: D1Database, personId: string): Promise<MediaAssetRow[]> {
  const result = await db
    .prepare(`
      SELECT
        ma.id, ma.asset_type, ma.url, ma.thumbnail_url, ma.width, ma.height,
        ma.depiction_confidence, ma.depiction_method,
        mr.id AS rights_id,
        mr.creator_name, mr.copyright_holder, mr.license_code, mr.license_url,
        mr.attribution_text, mr.commercial_use_allowed, mr.derivatives_allowed,
        mr.attribution_required, mr.share_alike_required, mr.editorial_use_only,
        mr.rights_verified_at
      FROM media_asset ma
      LEFT JOIN media_rights mr ON mr.media_asset_id = ma.id
      WHERE ma.depiction_entity_id = ? AND ma.status = 'approved'
      ORDER BY ma.depiction_confidence DESC, ma.asset_type ASC
    `)
    .bind(personId)
    .all<MediaAssetRow>();
  return result.results ?? [];
}

export interface WorkRow {
  work_title: string;
  work_type: string;
  release_date: string | null;
  role: string;
  is_primary: number;
}

export async function getWorksForPerson(db: D1Database, personId: string): Promise<WorkRow[]> {
  const result = await db
    .prepare(`
      SELECT we.canonical_name AS work_title, w.work_type, w.release_date,
             pwc.role, pwc.is_primary
      FROM person_work_credit pwc
      JOIN work w ON w.id = pwc.work_id
      JOIN entity we ON we.id = w.id
      WHERE pwc.person_id = ?
      ORDER BY pwc.is_primary DESC, w.release_date DESC
    `)
    .bind(personId)
    .all<WorkRow>();
  return result.results ?? [];
}

export interface AwardRow {
  award_name: string;
  year: number | null;
  result: string;
}

export async function getAwardsForPerson(db: D1Database, personId: string): Promise<AwardRow[]> {
  const result = await db
    .prepare(`
      SELECT ae.canonical_name AS award_name, par.year, par.result
      FROM person_award_result par
      JOIN award a ON a.id = par.award_id
      JOIN entity ae ON ae.id = a.id
      WHERE par.person_id = ?
      ORDER BY par.year DESC
    `)
    .bind(personId)
    .all<AwardRow>();
  return result.results ?? [];
}

export interface RelationRow {
  relation_type: string;
  related_person_name: string;
  related_person_slug: string | null;
  valid_from: number | null;
  valid_to: number | null;
}

export async function getRelationsForPerson(db: D1Database, personId: string): Promise<RelationRow[]> {
  // Include both directions of relations:
  // 1. Outgoing: personId is the SUBJECT (e.g., Frida → Diego as spouse_of)
  // 2. Incoming: personId is the OBJECT (e.g., Breton → Frida as champion_of)
  //    For incoming, we invert the relation type so the UI can render it sensibly:
  //    champion_of (Breton→Frida) becomes championed_by (Frida's perspective)
  const INVERSE_MAP: Record<string, string> = {
    champion_of: 'championed_by',
    mentor_of: 'mentored_by',
    parent_of: 'child_of',   // person is the parent → inverse is they have a child
    child_of: 'parent_of',
    spouse_of: 'spouse_of',  // symmetric
    sibling_of: 'sibling_of', // symmetric
    collaborator_with: 'collaborator_with',
    friend_of: 'friend_of',   // symmetric
    rival_of: 'rival_of',     // symmetric
    student_of: 'student_of', // symmetric
  };
  const inverse = (rt: string): string => INVERSE_MAP[rt] ?? `${rt}_inverse`;

  // We do the inverse in JS after fetching, since the case-by-case mapping is
  // easier to maintain as data than as SQL CASE WHEN logic.
  const result = await db
    .prepare(`
      -- Outgoing
      SELECT er.relation_type, e2.canonical_name AS related_person_name,
             e2.slug AS related_person_slug,
             er.valid_from, er.valid_to,
             'outgoing' AS direction
      FROM entity_relation er
      JOIN entity e2 ON e2.id = er.object_entity_id
      WHERE er.subject_entity_id = ?
      UNION ALL
      -- Incoming
      SELECT er.relation_type, e1.canonical_name AS related_person_name,
             e1.slug AS related_person_slug,
             er.valid_from, er.valid_to,
             'incoming' AS direction
      FROM entity_relation er
      JOIN entity e1 ON e1.id = er.subject_entity_id
      WHERE er.object_entity_id = ?
    `)
    .bind(personId, personId)
    .all<{ relation_type: string; related_person_name: string; related_person_slug: string | null; valid_from: number | null; valid_to: number | null; direction: string }>();

  return (result.results ?? []).map((r) => ({
    relation_type: r.direction === 'incoming' ? inverse(r.relation_type) : r.relation_type,
    related_person_name: r.related_person_name,
    related_person_slug: r.related_person_slug,
    valid_from: r.valid_from,
    valid_to: r.valid_to,
  }));
}

export interface ExternalIdRow {
  scheme: string;
  identifier: string;
  url: string | null;
  is_preferred: number;
}

export async function getExternalIdsForPerson(db: D1Database, personId: string): Promise<ExternalIdRow[]> {
  const result = await db
    .prepare(`
      SELECT scheme, identifier, url, is_preferred
      FROM external_identifier
      WHERE entity_id = ?
      ORDER BY is_preferred DESC, scheme ASC
    `)
    .bind(personId)
    .all<ExternalIdRow>();
  return result.results ?? [];
}

export interface DerivedAttributeRow {
  attribute_type: string;
  attribute_value: string;
  rule_version: string;
  computed_at: number;
}

export async function getDerivedAttributesForPerson(db: D1Database, personId: string): Promise<DerivedAttributeRow[]> {
  const result = await db
    .prepare(`
      SELECT attribute_type, attribute_value, rule_version, computed_at
      FROM person_derived_attribute
      WHERE person_id = ? AND status = 'current'
      ORDER BY attribute_type ASC
    `)
    .bind(personId)
    .all<DerivedAttributeRow>();
  return result.results ?? [];
}

export interface PlaceRow {
  relation_type: string;
  place_name: string;
  country_code: string | null;
  place_slug?: string | null;
  place_id?: string | null;
}

export async function getPlacesForPerson(db: D1Database, personId: string): Promise<PlaceRow[]> {
  const result = await db
    .prepare(`
      SELECT ppr.relation_type, e.canonical_name AS place_name, p.country_code, e.slug AS place_slug, e.id AS place_id
      FROM person_place_relation ppr
      JOIN place p ON p.id = ppr.place_id
      JOIN entity e ON e.id = p.id
      WHERE ppr.person_id = ?
      ORDER BY ppr.relation_type ASC
    `)
    .bind(personId)
    .all<PlaceRow>();
  return result.results ?? [];
}

export interface CompanyRow {
  id: string;
  name: string;
  slug: string;
  relation_type: string;
  valid_from: number | null;
  valid_to: number | null;
}

export async function getCompaniesForPerson(db: D1Database, personId: string): Promise<CompanyRow[]> {
  // Person -> Organization via entity_relation
  const result = await db
    .prepare(`
      SELECT er.object_entity_id AS id,
             e.canonical_name AS name,
             e.slug AS slug,
             er.relation_type,
             er.valid_from,
             er.valid_to
      FROM entity_relation er
      JOIN entity e ON e.id = er.object_entity_id
      WHERE er.subject_entity_id = ?
        AND e.type = 'organization'
      ORDER BY er.relation_type ASC, e.canonical_name ASC
    `)
    .bind(personId)
    .all<CompanyRow>();
  return result.results ?? [];
}

export interface SourceRecordRow {
  id: string;
  claim: string;
  tier: string;
  source_name: string;
  source_url: string | null;
  support_type: string;
  fetched_at: number | null;
}

export async function getSourcesForPerson(db: D1Database, personId: string): Promise<SourceRecordRow[]> {
  const result = await db
    .prepare(`
      SELECT
        cs.id,
        c.predicate AS claim,
        src.source_quality_tier AS tier,
        src.source_name,
        COALESCE(sr.external_url, src.base_url) AS source_url,
        cs.support_type,
        sr.fetched_at
      FROM claim c
      JOIN claim_source cs ON cs.claim_id = c.id
      JOIN source_record sr ON sr.id = cs.source_record_id
      JOIN source_registry src ON src.id = sr.source_id
      WHERE c.subject_entity_id = ?
      ORDER BY src.source_quality_tier ASC, src.source_name ASC
    `)
    .bind(personId)
    .all<SourceRecordRow>();
  return result.results ?? [];
}

// ---------------------------------------------------------------------------
// Notable events (timeline)
// ---------------------------------------------------------------------------

export interface CareerEventRow {
  id: string;
  event_type: 'birth' | 'death' | 'marriage' | 'education' | 'work_start' | 'work_end' | 'award_received' | 'role_assumed' | 'custom' | 'cultural_impact';
  start_date: string | null;
  end_date: string | null;
  description: string | null;
  source_locator: string | null;
  place_name: string | null;
  country_code: string | null;
  source_tier: string | null;
  source_name: string | null;
  source_url: string | null;
  year_url: string | null;
}

export async function getEventsForPerson(db: D1Database, personId: string): Promise<CareerEventRow[]> {
  const result = await db
    .prepare(`
      SELECT
        ce.id, ce.event_type, ce.start_date, ce.end_date, ce.description, ce.source_locator,
        e_place.canonical_name AS place_name,
        pl.country_code,
        src.source_quality_tier AS source_tier,
        src.source_name,
        COALESCE(ce.source_url, sr.external_url, src.base_url) AS source_url
      FROM career_event ce
      LEFT JOIN entity e_place ON e_place.id = ce.place_id
      LEFT JOIN place pl ON pl.id = ce.place_id
      LEFT JOIN source_registry src ON src.id = ce.source_id
      LEFT JOIN claim c ON c.id = ce.source_claim_id
      LEFT JOIN claim_source cs ON cs.claim_id = c.id
      LEFT JOIN source_record sr ON sr.id = cs.source_record_id
      WHERE ce.person_id = ?
      ORDER BY COALESCE(ce.start_date, '9999-99-99') ASC
    `)
    .bind(personId)
    .all<CareerEventRow>();
  // Annotate each event with year/decade URLs so the front-end can make them clickable
  return (result.results ?? []).map((e) => ({
    ...e,
    year_url: e.start_date ? `/v1/years/${e.start_date.slice(0, 4)}` : null,
  }));
}

// ---------------------------------------------------------------------------
// Facets
// ---------------------------------------------------------------------------

export async function getProfessionFacets(db: D1Database): Promise<{ slug: string; name: string; category: string; count: number }[]> {
  const result = await db
    .prepare(`
      SELECT prof.id AS slug, prof.name, prof.category,
             (SELECT COUNT(DISTINCT person_id) FROM person_profession pp WHERE pp.profession_id = prof.id) AS count
      FROM profession prof
      WHERE prof.is_active = 1
      ORDER BY count DESC
    `)
    .all<{ slug: string; name: string; category: string; count: number }>();
  return result.results ?? [];
}

export async function getCountryFacets(db: D1Database): Promise<{ country_code: string; country_name: string; count: number }[]> {
  const result = await db
    .prepare(`
      SELECT p.country_code, p.country_code AS country_name,
             (SELECT COUNT(DISTINCT person_id) FROM person_citizenship pc WHERE pc.country_id = p.id) AS count
      FROM place p
      WHERE p.country_code IS NOT NULL
      ORDER BY count DESC
      LIMIT 50
    `)
    .all<{ country_code: string; country_name: string; count: number }>();
  return result.results ?? [];
}

export async function getGenerationFacets(db: D1Database): Promise<{ slug: string; name: string; birth_year_min: number; birth_year_max: number; count: number }[]> {
  // Generation facets are derived from cached person.generation_slug
  const slugMap: Record<string, { name: string; min: number; max: number }> = {
    greatest:   { name: 'Greatest Generation', min: 1901, max: 1927 },
    silent:     { name: 'Silent Generation',   min: 1928, max: 1945 },
    boomer:     { name: 'Baby Boomers',        min: 1946, max: 1964 },
    genx:       { name: 'Generation X',        min: 1965, max: 1980 },
    millennial: { name: 'Millennials',         min: 1981, max: 1996 },
    genz:       { name: 'Generation Z',        min: 1997, max: 2012 },
    genalpha:   { name: 'Generation Alpha',    min: 2013, max: 2024 },
    genbeta:    { name: 'Generation Beta',     min: 2025, max: 2039 },
  };
  const result = await db
    .prepare(`
      SELECT generation_slug AS slug, COUNT(*) AS count
      FROM person
      WHERE generation_slug IS NOT NULL
      GROUP BY generation_slug
      ORDER BY generation_slug ASC
    `)
    .all<{ slug: string; count: number }>();
  return (result.results ?? []).map((r) => ({
    slug: r.slug,
    name: slugMap[r.slug]?.name ?? r.slug,
    birth_year_min: slugMap[r.slug]?.min ?? 0,
    birth_year_max: slugMap[r.slug]?.max ?? 0,
    count: r.count,
  }));
}

export async function getStarSignFacets(db: D1Database): Promise<{ slug: string; name: string; count: number }[]> {
  const slugMap: Record<string, string> = {
    aquarius: 'Aquarius', pisces: 'Pisces', aries: 'Aries', taurus: 'Taurus',
    gemini: 'Gemini', cancer: 'Cancer', leo: 'Leo', virgo: 'Virgo',
    libra: 'Libra', scorpio: 'Scorpio', sagittarius: 'Sagittarius', capricorn: 'Capricorn',
  };
  const result = await db
    .prepare(`
      SELECT star_sign_slug AS slug, COUNT(*) AS count
      FROM person
      WHERE star_sign_slug IS NOT NULL
      GROUP BY star_sign_slug
      ORDER BY star_sign_slug ASC
    `)
    .all<{ slug: string; count: number }>();
  return (result.results ?? []).map((r) => ({
    slug: r.slug,
    name: slugMap[r.slug] ?? r.slug,
    count: r.count,
  }));
}

export async function getChineseZodiacFacets(db: D1Database): Promise<{ animal: string; count: number }[]> {
  const result = await db
    .prepare(`
      SELECT chinese_zodiac_animal AS animal, COUNT(*) AS count
      FROM person
      WHERE chinese_zodiac_animal IS NOT NULL
      GROUP BY chinese_zodiac_animal
      ORDER BY chinese_zodiac_animal ASC
    `)
    .all<{ animal: string; count: number }>();
  return result.results ?? [];
}

export async function getFacetCounts(db: D1Database, filters: BrowseFilters): Promise<{
  professions: Record<string, number>;
  countries: Record<string, number>;
  generations: Record<string, number>;
  star_signs: Record<string, number>;
  chinese_zodiacs: Record<string, number>;
}> {
  // Simplified: counts without applying OTHER filters (so users can see all options)
  const [professions, countries, generations, star_signs, chineseZodiacs] = await Promise.all([
    db.prepare(`
      SELECT prof.id AS slug, COUNT(DISTINCT pp.person_id) AS count
      FROM profession prof
      LEFT JOIN person_profession pp ON pp.profession_id = prof.id
      LEFT JOIN entity e ON e.id = pp.person_id AND e.status = 'published'
      WHERE prof.is_active = 1
      GROUP BY prof.id
      HAVING count > 0
      ORDER BY count DESC
    `).all<{ slug: string; count: number }>(),
    db.prepare(`
      SELECT p.country_code AS slug, COUNT(DISTINCT pc.person_id) AS count
      FROM place p
      JOIN person_citizenship pc ON pc.country_id = p.id
      JOIN entity e ON e.id = pc.person_id AND e.status = 'published'
      WHERE p.country_code IS NOT NULL
      GROUP BY p.country_code
      HAVING count > 0
      ORDER BY count DESC
    `).all<{ slug: string; count: number }>(),
    db.prepare(`
      SELECT generation_slug AS slug, COUNT(*) AS count
      FROM person p
      JOIN entity e ON e.id = p.id
      WHERE generation_slug IS NOT NULL AND e.status = 'published'
      GROUP BY generation_slug
      ORDER BY generation_slug
    `).all<{ slug: string; count: number }>(),
    db.prepare(`
      SELECT star_sign_slug AS slug, COUNT(*) AS count
      FROM person p
      JOIN entity e ON e.id = p.id
      WHERE star_sign_slug IS NOT NULL AND e.status = 'published'
      GROUP BY star_sign_slug
      ORDER BY star_sign_slug
    `).all<{ slug: string; count: number }>(),
    db.prepare(`
      SELECT chinese_zodiac_animal AS slug, COUNT(*) AS count
      FROM person p
      JOIN entity e ON e.id = p.id
      WHERE chinese_zodiac_animal IS NOT NULL AND e.status = 'published'
      GROUP BY chinese_zodiac_animal
      ORDER BY chinese_zodiac_animal
    `).all<{ slug: string; count: number }>(),
  ]);

  const toRecord = (rows: { slug: string; count: number }[] | undefined): Record<string, number> => {
    const out: Record<string, number> = {};
    for (const r of rows ?? []) {
      out[r.slug] = r.count;
    }
    return out;
  };

  return {
    professions: toRecord(professions.results),
    countries: toRecord(countries.results),
    generations: toRecord(generations.results),
    star_signs: toRecord(star_signs.results),
    chinese_zodiacs: toRecord(chineseZodiacs.results),
  };
}

// ---------------------------------------------------------------------------
// Birthdays
// ---------------------------------------------------------------------------

export interface BirthdaysResult {
  people: PersonRow[];
  total_count: number;
}

export async function getPeopleBornOn(db: D1Database, mm: number, dd: number): Promise<BirthdaysResult> {
  const result = await db
    .prepare(`
      SELECT
        e.id, e.slug, e.canonical_name, e.popularity_score, e.popularity_rank,
        p.short_description, p.known_for_summary, p.living_status, p.gender,
        p.generation_slug, p.star_sign_slug, p.chinese_zodiac_animal,
        p.is_celebrity, p.is_historical_figure, p.is_professional, p.is_cultural_icon,
        p.is_royalty, p.is_controversial, p.is_living, p.is_military_leader,
        p.is_religious_spiritual, p.is_activist, p.is_pioneer, p.is_internet_personality,
        p.is_polarizing, p.is_living_legend,
        p.age_at_death,
        CAST(pda_birth.attribute_value AS INTEGER) AS birth_year,
        NULL AS death_year,
        NULL AS primary_profession_slug,
        NULL AS primary_profession_name,
        NULL AS hero_image_url,
        NULL AS birth_country_code
      FROM entity e
      JOIN person p ON p.id = e.id
      LEFT JOIN person_derived_attribute pda_birth ON pda_birth.person_id = e.id AND pda_birth.attribute_type = 'birth_year'
      LEFT JOIN career_event ce_birth ON ce_birth.id = p.birth_event_id
      WHERE e.type = 'person'
        AND e.status = 'published'
        AND ce_birth.start_date IS NOT NULL
        AND CAST(strftime('%m', ce_birth.start_date) AS INTEGER) = ?
        AND CAST(strftime('%d', ce_birth.start_date) AS INTEGER) = ?
      ORDER BY e.popularity_score DESC
      LIMIT 100
    `)
    .bind(mm, dd)
    .all<PersonRow>();
  return {
    people: result.results ?? [],
    total_count: result.results?.length ?? 0,
  };
}
