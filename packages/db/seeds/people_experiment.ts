/**
 * Seed script: ingest the 40-pick experiment JSON files into D1.
 *
 * Reads /workspace/historical-knowledge-platform/experiment/people/*.json
 * and writes to all the relevant tables.
 *
 * Usage: pnpm tsx packages/db/seeds/people_experiment.ts [--local|--remote]
 */

import { readFileSync, readdirSync } from 'node:fs';
import { join } from 'node:path';

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface PersonJSON {
  slug: string;
  canonical_name: string;
  short_description: string | null;
  known_for_summary: string | null;
  living_status: 'living' | 'deceased' | 'undisclosed';
  editorial_risk_level: 'low' | 'medium' | 'high';
  names: Array<{
    name_value: string;
    name_type: string;
    language_code?: string | null;
    script_code?: string | null;
    is_preferred?: boolean;
  }>;
  birth?: {
    original: string;
    earliest_gregorian: string;
    latest_gregorian?: string | null;
    calendar?: string;
    precision?: string;
    certainty?: string;
    place_name?: string | null;
    place_country_code?: string | null;
  } | null;
  death?: {
    original: string;
    earliest_gregorian: string;
    latest_gregorian?: string | null;
    calendar?: string;
    precision?: string;
    certainty?: string;
    place_name?: string | null;
    place_country_code?: string | null;
  } | null;
  citizenships: Array<{
    country_code: string;
    country_name: string;
    valid_from?: number | null;
    valid_to?: number | null;
    primary_flag?: boolean;
  }>;
  professions: Array<{
    profession_slug: string;
    profession_name: string;
    category: string;
    is_primary?: boolean;
    start_year?: number | null;
    end_year?: number | null;
  }>;
  fame_flags: {
    is_celebrity?: boolean;
    is_historical_figure?: boolean;
    is_professional?: boolean;
    is_cultural_icon?: boolean;
    is_royalty?: boolean;
    is_controversial?: boolean;
    is_living?: boolean;
    is_military_leader?: boolean;
    is_religious_spiritual?: boolean;
    is_activist?: boolean;
    is_pioneer?: boolean;
    is_internet_personality?: boolean;
    is_polarizing?: boolean;
    is_living_legend?: boolean;
  };
  fame_attributes: {
    fame_scope?: string;
    fame_intensity?: string;
    gender?: string;
    controversy_level?: number;
    era_relevance?: string | null;
  };
  social_profiles: Array<{
    platform: string;
    handle?: string | null;
    platform_account_id?: string | null;
    profile_url: string;
    account_type?: string | null;
    official_status?: string;
    confidence?: number;
    verification_method?: string | null;
    follower_observation?: number | null;
    follower_observed_at?: number | null;
    follower_expires_at?: number | null;
    last_verified_at?: number;
  }>;
  media: Array<{
    asset_type: string;
    url: string;
    thumbnail_url?: string | null;
    width?: number | null;
    height?: number | null;
    depiction_confidence?: number;
    depiction_method?: string | null;
    creator_name?: string | null;
    copyright_holder?: string | null;
    license_code?: string | null;
    license_url?: string | null;
    attribution_text: string;
    commercial_use_allowed?: boolean;
    derivatives_allowed?: boolean;
    attribution_required?: boolean;
    share_alike_required?: boolean;
    editorial_use_only?: boolean;
    rights_verified_at?: number | null;
  }>;
  works: Array<{
    work_title: string;
    work_type: string;
    release_date?: string | null;
    role: string;
    is_primary?: boolean;
  }>;
  awards: Array<{
    award_name: string;
    year?: number | null;
    result: string;
  }>;
  relations: Array<{
    relation_type: string;
    related_person_name: string;
    related_person_slug?: string | null;
    valid_from?: number | null;
    valid_to?: number | null;
  }>;
  external_identifiers: {
    wikidata_qid?: string | null;
    viaf_id?: string | null;
    isni?: string | null;
    orcid?: string | null;
    imdb_id?: string | null;
    musicbrainz_id?: string | null;
    official_website?: string | null;
    wikipedia_url?: string | null;
  };
  derived_attributes: {
    current_age?: number | null;
    age_at_death?: number | null;
    generation?: { slug: string; name: string; rule_version: string } | null;
    star_sign?: { slug: string; name: string; rule_version: string } | null;
    chinese_zodiac?: { animal: string; rule_version: string } | null;
    active_years_min?: number | null;
    active_years_max?: number | null;
  };
  sources: Array<{
    claim: string;
    tier: 'A' | 'B' | 'C' | 'D' | 'E';
    source_name: string;
    source_url?: string | null;
    support_type: string;
    retrieved_at: string;
  }>;
  review_notes?: string | null;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const uuid = () => crypto.randomUUID();

function asInt(b: boolean | undefined): number {
  return b ? 1 : 0;
}

function slugifyCountry(country_code: string, country_name: string): string {
  return country_name.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '') || country_code.toLowerCase();
}

// Map a raw generation slug to a canonical Pew 2019 slug.
function normalizeGeneration(slug: string | null | undefined): string | null {
  if (!slug) return null;
  const s = slug.toLowerCase().replace(/[\s_-]+/g, '');
  if (s.includes('greatest') || s === 'lostgeneration') return 'greatest';
  if (s.includes('silent')) return 'silent';
  if (s.includes('boomer')) return 'boomer';
  if (s.includes('genx') || s === 'genx') return 'genx';
  if (s.includes('millennial') || s.includes('geny')) return 'millennial';
  if (s.includes('genz')) return 'genz';
  if (s.includes('alpha')) return 'genalpha';
  if (s.includes('beta')) return 'genbeta';
  if (s.includes('premodern') || s.includes('prehistorical')) return 'silent'; // pre-modern approx
  return null;
}

// Map a raw profession category to a valid enum value.
const VALID_CATEGORIES = new Set([
  'arts', 'science', 'politics', 'sports', 'business', 'military',
  'religion', 'royalty', 'media', 'law', 'academia', 'other',
]);
function normalizeCategory(cat: string | null | undefined): string {
  if (!cat) return 'other';
  const c = cat.toLowerCase();
  if (VALID_CATEGORIES.has(c)) return c;
  if (c.includes('music')) return 'arts';
  if (c.includes('entertainment')) return 'media';
  if (c.includes('education')) return 'academia';
  if (c.includes('labour') || c.includes('labor')) return 'politics';
  if (c.includes('writing')) return 'arts';
  return 'other';
}

function yearFromGregorian(g: string | undefined | null): number | null {
  if (!g) return null;
  const m = g.match(/^(\d{4})/);
  return m ? Number(m[1]) : null;
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  const args = process.argv.slice(2);
  const useRemote = args.includes('--remote');
  const isPreview = args.includes('--preview');

  const dataDir = '/workspace/historical-knowledge-platform/experiment/people';
  const files = readdirSync(dataDir).filter((f) => f.endsWith('.json'));
  console.log(`[seed] Found ${files.length} JSON files in ${dataDir}`);

  // Load all
  const people: PersonJSON[] = files.map((f) =>
    JSON.parse(readFileSync(join(dataDir, f), 'utf-8'))
  );

  // Build a master list of unique countries, professions, awards, works, sources
  const countryMap = new Map<string, { id: string; name: string }>();
  const professionMap = new Map<string, { id: string; name: string; category: string }>();
  const sourceRegistryMap = new Map<string, string>(); // source_name -> id
  const entityMap = new Map<string, string>(); // slug -> entity_id

  // Helper: build a stable ID for an entity by slug
  const entityId = (slug: string) => `ent_${slug.replace(/[^a-z0-9-]/gi, '-').toLowerCase()}`;

  // First pass: collect unique countries
  for (const p of people) {
    for (const c of p.citizenships ?? []) {
      const key = `${c.country_code}-${c.country_name}`;
      if (!countryMap.has(key)) {
        const slug = slugifyCountry(c.country_code, c.country_name);
        countryMap.set(key, { id: `place_${slug}`, name: c.country_name });
      }
    }
  }

  // First pass: collect unique professions
  for (const p of people) {
    for (const prof of p.professions ?? []) {
      if (!professionMap.has(prof.profession_slug)) {
        professionMap.set(prof.profession_slug, {
          id: prof.profession_slug,
          name: prof.profession_name,
          category: prof.category,
        });
      }
    }
  }

  // First pass: collect unique source registries
  for (const p of people) {
    for (const s of p.sources ?? []) {
      if (!sourceRegistryMap.has(s.source_name)) {
        sourceRegistryMap.set(s.source_name, `src_${s.source_name.toLowerCase().replace(/[^a-z0-9]+/g, '-')}`);
      }
    }
  }

  console.log(`[seed] ${countryMap.size} unique countries, ${professionMap.size} unique professions, ${sourceRegistryMap.size} unique source registries`);

  // Build SQL batch
  const statements: D1PreparedStatement[] = [];

  // 1. Source registry
  for (const [name, id] of sourceRegistryMap) {
    const tier = name === 'Wikidata' ? 'B'
      : name === 'VIAF' ? 'B'
      : name === 'Library of Congress' ? 'B'
      : name === 'Wikipedia' ? 'E'
      : name === 'Wikimedia Commons' ? 'E'
      : name === 'official site' ? 'A'
      : 'D';
    const status = tier === 'B' ? 'APPROVED_BULK' : tier === 'A' ? 'MANUAL_RESEARCH_ONLY' : 'LINK_ONLY';
    statements.push({
      bind: () => this,
    } as any);
  }

  // Output as SQL via print for manual exec, or write to file
  const output: string[] = [];

  // SOURCE REGISTRY
  output.push('-- SOURCE REGISTRY');
  for (const [name, id] of sourceRegistryMap) {
    const lname = name.toLowerCase();
    let tier = 'D';
    if (lname === 'wikidata' || lname === 'viaf' || lname === 'library of congress' || lname === 'isni' || lname === 'orcid' || lname === 'geonames') {
      tier = 'B';
    } else if (lname === 'wikipedia' || lname === 'wikimedia commons') {
      tier = 'E';
    } else if (lname.includes('foundation') || lname.includes('official') || lname === 'frida kahlo foundation') {
      tier = 'A';
    } else if (lname === 'crossref' || lname === 'openalex' || lname === 'musicbrainz' || lname === 'nobel') {
      tier = 'C';
    } else if (lname === 'britannica' || lname === 'encyclopaedia britannica' || lname.includes('new york times') || lname.includes('washington post') || lname === 'cnn' || lname === 'bbc' || lname === 'guardian' || lname === 'reuters' || lname === 'al jazeera' || lname === 'aljazeera' || lname === 'ap' || lname === 'associated press') {
      tier = 'D';
    }
    const status = tier === 'B' ? 'APPROVED_BULK' : tier === 'A' ? 'MANUAL_RESEARCH_ONLY' : 'LINK_ONLY';
    const safeName = name.replace(/'/g, "''");
    const safeId = id.replace(/'/g, "''");
    output.push(`INSERT OR REPLACE INTO source_registry (id, source_name, source_type, base_url, license_name, commercial_use_status, automated_access_status, source_quality_tier, status) VALUES ('${safeId}', '${safeName}', 'encyclopedia', 'https://example.com', 'CC-BY-SA-4.0', 'allowed', 'allowed', '${tier}', '${status}');`);
  }

  // PLACES (countries)
  output.push('');
  output.push('-- PLACES (countries)');
  // Need to first create entity rows for each place
  for (const [key, info] of countryMap) {
    const [code, name] = key.split('-');
    const entId = `ent_${code.toLowerCase()}`;
    output.push(`INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status) VALUES ('${entId}', 'place', '${code.toLowerCase()}-country', '${name.replace(/'/g, "''")}', 'published');`);
    // place.id must equal entity.id (FK)
    output.push(`INSERT OR IGNORE INTO place (id, place_type, country_code) VALUES ('${entId}', 'country', '${code}');`);
  }

  // PROFESSIONS
  output.push('');
  output.push('-- PROFESSIONS');
  for (const [slug, prof] of professionMap) {
    const cat = normalizeCategory(prof.category);
    output.push(`INSERT OR REPLACE INTO profession (id, name, category, is_active) VALUES ('${slug}', '${prof.name.replace(/'/g, "''")}', '${cat}', 1);`);
  }

  // ENTITIES + PERSONS
  output.push('');
  output.push('-- ENTITIES + PERSONS');
  for (const p of people) {
    const eid = entityId(p.slug);
    entityMap.set(p.slug, eid);
    const safeName = p.canonical_name.replace(/'/g, "''");
    const safeShort = (p.short_description ?? '').replace(/'/g, "''");
    const safeKnown = (p.known_for_summary ?? '').replace(/'/g, "''");
    output.push(`INSERT OR REPLACE INTO entity (id, type, slug, canonical_name, status, popularity_score) VALUES ('${eid}', 'person', '${p.slug}', '${safeName}', 'published', ${Math.floor(Math.random() * 100)});`);
    const f = p.fame_flags ?? {};
    const fa = p.fame_attributes ?? {};
    const birthYear = yearFromGregorian(p.birth?.earliest_gregorian);
    const deathYear = yearFromGregorian(p.death?.earliest_gregorian);
    const da = p.derived_attributes ?? {};
    const generationSlug = normalizeGeneration(da.generation?.slug ?? null);
    const starSignSlug = da.star_sign?.slug ?? null;
    const zodiacAnimal = da.chinese_zodiac?.animal ?? null;
    const ageAtDeath = da.age_at_death ?? null;
    const activeMin = da.active_years_min ?? null;
    const activeMax = da.active_years_max ?? null;
    const primaryProf = p.professions?.find((pp) => pp.is_primary)?.profession_slug ?? p.professions?.[0]?.profession_slug ?? null;
    const gender = fa.gender ?? 'unknown';
    const fameScope = fa.fame_scope ?? 'national';
    const fameIntensity = fa.fame_intensity ?? 'well_known';

    output.push(`INSERT OR REPLACE INTO person (id, living_status, short_description, known_for_summary, editorial_risk_level, identity_confidence, completeness_score, provenance_score, current_age, age_at_death, generation_slug, star_sign_slug, chinese_zodiac_animal, active_years_min, active_years_max, primary_profession_id, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend) VALUES ('${eid}', '${p.living_status}', ${p.short_description ? `'${safeShort}'` : 'NULL'}, ${p.known_for_summary ? `'${safeKnown}'` : 'NULL'}, '${p.editorial_risk_level}', 0.95, 0.85, 0.90, ${da.current_age ?? 'NULL'}, ${ageAtDeath ?? 'NULL'}, ${generationSlug ? `'${generationSlug}'` : 'NULL'}, ${starSignSlug ? `'${starSignSlug}'` : 'NULL'}, ${zodiacAnimal ? `'${zodiacAnimal}'` : 'NULL'}, ${activeMin ?? 'NULL'}, ${activeMax ?? 'NULL'}, ${primaryProf ? `'${primaryProf}'` : 'NULL'}, '${fameScope}', '${fameIntensity}', '${gender}', ${fa.controversy_level ?? 0}, ${fa.era_relevance ? `'${fa.era_relevance.replace(/'/g, "''")}'` : 'NULL'}, ${asInt(f.is_celebrity)}, ${asInt(f.is_historical_figure)}, ${asInt(f.is_professional)}, ${asInt(f.is_cultural_icon)}, ${asInt(f.is_royalty)}, ${asInt(f.is_controversial)}, ${asInt(f.is_living)}, ${asInt(f.is_military_leader)}, ${asInt(f.is_religious_spiritual)}, ${asInt(f.is_activist)}, ${asInt(f.is_pioneer)}, ${asInt(f.is_internet_personality)}, ${asInt(f.is_polarizing)}, ${asInt(f.is_living_legend)});`);
  }

  // NAMES
  output.push('');
  output.push('-- NAMES');
  for (const p of people) {
    const eid = entityId(p.slug);
    // Canonical name
    output.push(`INSERT OR IGNORE INTO entity_name (id, entity_id, name_value, name_type, language_code, script_code, is_preferred, normalized_value) VALUES ('${uuid()}', '${eid}', '${p.canonical_name.replace(/'/g, "''")}', 'canonical', 'en', 'Latn', 1, '${p.canonical_name.toLowerCase().replace(/'/g, "''").replace(/[^a-z0-9]+/g, '-')}');`);
    for (const n of p.names ?? []) {
      if (n.name_type === 'canonical') continue;
      const lang = n.language_code ?? 'en';
      const script = n.script_code ?? 'Latn';
      output.push(`INSERT OR IGNORE INTO entity_name (id, entity_id, name_value, name_type, language_code, script_code, is_preferred, normalized_value) VALUES ('${uuid()}', '${eid}', '${n.name_value.replace(/'/g, "''")}', '${n.name_type}', '${lang}', '${script}', ${asInt(n.is_preferred)}, '${n.name_value.toLowerCase().replace(/[^a-z0-9]+/g, '-')}');`);
    }
  }

  // CITIZENSHIPS
  output.push('');
  output.push('-- CITIZENSHIPS');
  for (const p of people) {
    const eid = entityId(p.slug);
    for (const c of p.citizenships ?? []) {
      const countryEnt = `ent_${c.country_code.toLowerCase()}`;
      output.push(`INSERT OR IGNORE INTO person_citizenship (id, person_id, country_id, valid_from, primary_flag) VALUES ('${uuid()}', '${eid}', '${countryEnt}', ${c.valid_from ?? 'NULL'}, ${asInt(c.primary_flag)});`);
    }
  }

  // PROFESSIONS
  output.push('');
  output.push('-- PERSON_PROFESSIONS');
  for (const p of people) {
    const eid = entityId(p.slug);
    for (const prof of p.professions ?? []) {
      output.push(`INSERT OR IGNORE INTO person_profession (id, person_id, profession_id, is_primary, start_year, end_year) VALUES ('${uuid()}', '${eid}', '${prof.profession_slug}', ${asInt(prof.is_primary)}, ${prof.start_year ?? 'NULL'}, ${prof.end_year ?? 'NULL'});`);
    }
  }

  // EXTERNAL IDS
  output.push('');
  output.push('-- EXTERNAL IDS');
  for (const p of people) {
    const eid = entityId(p.slug);
    const ext = p.external_identifiers ?? {};
    if (ext.wikidata_qid) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, url, is_preferred) VALUES ('${uuid()}', '${eid}', 'wikidata_qid', '${ext.wikidata_qid}', 'https://www.wikidata.org/wiki/${ext.wikidata_qid}', 1);`);
    if (ext.viaf_id) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, is_preferred) VALUES ('${uuid()}', '${eid}', 'viaf', '${ext.viaf_id}', 1);`);
    if (ext.isni) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, is_preferred) VALUES ('${uuid()}', '${eid}', 'isni', '${ext.isni}', 1);`);
    if (ext.orcid) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, is_preferred) VALUES ('${uuid()}', '${eid}', 'orcid', '${ext.orcid}', 1);`);
    if (ext.imdb_id) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, url, is_preferred) VALUES ('${uuid()}', '${eid}', 'imdb', '${ext.imdb_id}', 'https://www.imdb.com/name/${ext.imdb_id}/', 1);`);
    if (ext.musicbrainz_id) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, url, is_preferred) VALUES ('${uuid()}', '${eid}', 'musicbrainz', '${ext.musicbrainz_id}', 'https://musicbrainz.org/artist/${ext.musicbrainz_id}', 1);`);
    if (ext.official_website) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, url, is_preferred) VALUES ('${uuid()}', '${eid}', 'official_website', '${ext.official_website}', '${ext.official_website}', 1);`);
    if (ext.wikipedia_url) output.push(`INSERT OR IGNORE INTO external_identifier (id, entity_id, scheme, identifier, url, is_preferred) VALUES ('${uuid()}', '${eid}', 'wikipedia', '${ext.wikipedia_url}', '${ext.wikipedia_url}', 1);`);
  }

  // DERIVED ATTRIBUTES
  output.push('');
  output.push('-- DERIVED ATTRIBUTES');
  for (const p of people) {
    const eid = entityId(p.slug);
    const da = p.derived_attributes ?? {};
    const birthYear = yearFromGregorian(p.birth?.earliest_gregorian);
    const deathYear = yearFromGregorian(p.death?.earliest_gregorian);
    const now = Math.floor(Date.now() / 1000);
    if (birthYear) output.push(`INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status) VALUES ('${uuid()}', '${eid}', 'birth_year', '${birthYear}', 'gregorian_age_v1', ${now}, NULL, 'current');`);
    if (deathYear) output.push(`INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status) VALUES ('${uuid()}', '${eid}', 'death_year', '${deathYear}', 'gregorian_age_v1', ${now}, NULL, 'current');`);
    if (da.generation) output.push(`INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status) VALUES ('${uuid()}', '${eid}', 'generation', '${da.generation.slug}', '${da.generation.rule_version}', ${now}, NULL, 'current');`);
    if (da.star_sign) output.push(`INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status) VALUES ('${uuid()}', '${eid}', 'star_sign', '${da.star_sign.slug}', '${da.star_sign.rule_version}', ${now}, NULL, 'current');`);
    if (da.chinese_zodiac) output.push(`INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status) VALUES ('${uuid()}', '${eid}', 'chinese_zodiac', '${da.chinese_zodiac.animal}', '${da.chinese_zodiac.rule_version}', ${now}, NULL, 'current');`);
    if (da.active_years_min) output.push(`INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status) VALUES ('${uuid()}', '${eid}', 'active_years_min', '${da.active_years_min}', 'gregorian_age_v1', ${now}, NULL, 'current');`);
    if (da.active_years_max) output.push(`INSERT OR REPLACE INTO person_derived_attribute (id, person_id, attribute_type, attribute_value, rule_version, computed_at, valid_until, status) VALUES ('${uuid()}', '${eid}', 'active_years_max', '${da.active_years_max}', 'gregorian_age_v1', ${now}, NULL, 'current');`);
  }

  // CAREER EVENTS (birth + death)
  output.push('');
  output.push('-- CAREER EVENTS');
  for (const p of people) {
    const eid = entityId(p.slug);
    if (p.birth) {
      const birthPlace = p.birth.place_name ? `ent_${p.slug}-birth` : 'NULL';
      if (p.birth.place_name) {
        output.push(`INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status) VALUES ('${birthPlace}', 'place', '${p.slug}-birth', '${p.birth.place_name.replace(/'/g, "''")}', 'published');`);
        // place.id must equal entity.id (FK)
        output.push(`INSERT OR IGNORE INTO place (id, place_type, country_code) VALUES ('${birthPlace}', 'city', '${p.birth.place_country_code ?? ''}');`);
        output.push(`INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type) VALUES ('${uuid()}', '${eid}', '${birthPlace}', 'birthplace');`);
      }
      const evId = `ev_${p.slug}-birth`;
      output.push(`INSERT OR IGNORE INTO career_event (id, person_id, event_type, start_date, description, place_id) VALUES ('${evId}', '${eid}', 'birth', '${p.birth.earliest_gregorian}', 'Birth of ${p.canonical_name.replace(/'/g, "''")}', ${p.birth.place_name ? `'${birthPlace}'` : 'NULL'});`);
      // Update person.birth_event_id
      output.push(`UPDATE person SET birth_event_id = '${evId}' WHERE id = '${eid}';`);
    }
    if (p.death) {
      const deathPlace = p.death.place_name ? `ent_${p.slug}-death` : 'NULL';
      if (p.death.place_name) {
        output.push(`INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status) VALUES ('${deathPlace}', 'place', '${p.slug}-death', '${p.death.place_name.replace(/'/g, "''")}', 'published');`);
        // place.id must equal entity.id (FK)
        output.push(`INSERT OR IGNORE INTO place (id, place_type, country_code) VALUES ('${deathPlace}', 'city', '${p.death.place_country_code ?? ''}');`);
        output.push(`INSERT OR IGNORE INTO person_place_relation (id, person_id, place_id, relation_type) VALUES ('${uuid()}', '${eid}', '${deathPlace}', 'death_place');`);
      }
      const evId = `ev_${p.slug}-death`;
      output.push(`INSERT OR IGNORE INTO career_event (id, person_id, event_type, start_date, description, place_id) VALUES ('${evId}', '${eid}', 'death', '${p.death.earliest_gregorian}', 'Death of ${p.canonical_name.replace(/'/g, "''")}', ${p.death.place_name ? `'${deathPlace}'` : 'NULL'});`);
      output.push(`UPDATE person SET death_event_id = '${evId}' WHERE id = '${eid}';`);
    }
  }

  // SOCIAL PROFILES
  output.push('');
  output.push('-- SOCIAL PROFILES');
  for (const p of people) {
    const eid = entityId(p.slug);
    for (const s of p.social_profiles ?? []) {
      const now = Math.floor(Date.now() / 1000);
      const lastVerified = s.last_verified_at ?? now;
      // Map common platform aliases
      const platformRaw = (s.platform ?? 'other').toLowerCase();
      let platform = platformRaw;
      if (platformRaw === 'website' || platformRaw === 'web') platform = 'official_website';
      if (platformRaw === 'x') platform = 'twitter';
      // Accept either `url` or `profile_url`
      const url = (s.profile_url ?? s.url ?? '').replace(/'/g, "''");
      if (!url) continue;
      const handle = s.handle ? `'${s.handle.replace(/'/g, "''")}'` : 'NULL';
      const offStatus = s.official_status ?? 'unknown';
      const confidence = s.confidence ?? 0;
      const verifyMethod = s.verification_method ? `'${s.verification_method.replace(/'/g, "''")}'` : 'NULL';
      output.push(`INSERT OR IGNORE INTO social_profile (id, person_id, platform, handle, profile_url, official_status, confidence, verification_method, first_seen_at, last_verified_at) VALUES ('${uuid()}', '${eid}', '${platform}', ${handle}, '${url}', '${offStatus}', ${confidence}, ${verifyMethod}, ${now}, ${lastVerified});`);
    }
  }

  // MEDIA
  output.push('');
  output.push('-- MEDIA');
  for (const p of people) {
    const eid = entityId(p.slug);
    for (let i = 0; i < (p.media ?? []).length; i++) {
      const m = p.media[i];
      if (!m.url || !m.attribution_text) continue; // skip malformed
      const assetId = `media_${p.slug}-${i}`;
      const entId = `ent_media_${p.slug}-${i}`;
      output.push(`INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status) VALUES ('${entId}', 'media', '${assetId}', 'Media for ${p.canonical_name.replace(/'/g, "''")}', 'published');`);
      const assetType = m.asset_type ?? 'image';
      const url = m.url.replace(/'/g, "''");
      const thumb = m.thumbnail_url ? `'${m.thumbnail_url.replace(/'/g, "''")}'` : 'NULL';
      const width = m.width ?? 'NULL';
      const height = m.height ?? 'NULL';
      const conf = m.depiction_confidence ?? 0.95;
      const depMethod = m.depiction_method ? `'${m.depiction_method.replace(/'/g, "''")}'` : 'NULL';
      // media_asset.id must equal entity.id (FK)
      output.push(`INSERT OR IGNORE INTO media_asset (id, asset_type, url, thumbnail_url, width, height, depiction_entity_id, depiction_confidence, depiction_method, status) VALUES ('${entId}', '${assetType}', '${url}', ${thumb}, ${width}, ${height}, '${eid}', ${conf}, ${depMethod}, 'approved');`);
      const creator = m.creator_name ? `'${m.creator_name.replace(/'/g, "''")}'` : 'NULL';
      const holder = m.copyright_holder ? `'${m.copyright_holder.replace(/'/g, "''")}'` : 'NULL';
      const lic = m.license_code ? `'${m.license_code.replace(/'/g, "''")}'` : 'NULL';
      const attrib = m.attribution_text.replace(/'/g, "''");
      output.push(`INSERT OR IGNORE INTO media_rights (id, media_asset_id, creator_name, copyright_holder, license_code, attribution_text, commercial_use_allowed, derivatives_allowed, attribution_required, share_alike_required, editorial_use_only) VALUES ('${uuid()}', '${entId}', ${creator}, ${holder}, ${lic}, '${attrib}', ${asInt(m.commercial_use_allowed)}, ${asInt(m.derivatives_allowed)}, ${asInt(m.attribution_required)}, ${asInt(m.share_alike_required)}, ${asInt(m.editorial_use_only)});`);
    }
  }

  // WORKS
  output.push('');
  output.push('-- WORKS');
  for (const p of people) {
    const eid = entityId(p.slug);
    for (let i = 0; i < (p.works ?? []).length; i++) {
      const w = p.works[i];
      const wSlug = `${p.slug}-work-${i}`;
      const wEnt = `ent_${wSlug}`;
      const wId = `work_${p.slug}-${i}`;
      output.push(`INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status) VALUES ('${wEnt}', 'work', '${wSlug}', '${w.work_title.replace(/'/g, "''")}', 'published');`);
      // work.id must equal entity.id (FK)
      output.push(`INSERT OR IGNORE INTO work (id, work_type, release_date) VALUES ('${wEnt}', '${w.work_type}', ${w.release_date ? `'${w.release_date}'` : 'NULL'});`);
      output.push(`INSERT OR IGNORE INTO person_work_credit (id, person_id, work_id, role, is_primary) VALUES ('${uuid()}', '${eid}', '${wEnt}', '${w.role.replace(/'/g, "''")}', ${asInt(w.is_primary)});`);
    }
  }

  // AWARDS
  output.push('');
  output.push('-- AWARDS');
  for (const p of people) {
    const eid = entityId(p.slug);
    for (let i = 0; i < (p.awards ?? []).length; i++) {
      const a = p.awards[i];
      const aSlug = `${p.slug}-award-${i}`;
      const aEnt = `ent_${aSlug}`;
      const aId = `award_${p.slug}-${i}`;
      output.push(`INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status) VALUES ('${aEnt}', 'award', '${aSlug}', '${a.award_name.replace(/'/g, "''")}', 'published');`);
      // award.id must equal entity.id (FK)
      output.push(`INSERT OR IGNORE INTO award (id, award_type) VALUES ('${aEnt}', 'other');`);
      output.push(`INSERT OR IGNORE INTO person_award_result (id, person_id, award_id, year, result) VALUES ('${uuid()}', '${eid}', '${aEnt}', ${a.year ?? 'NULL'}, '${a.result}');`);
    }
  }

  // SOURCES (claim_source + source_record)
  output.push('');
  output.push('-- SOURCES');
  for (const p of people) {
    const eid = entityId(p.slug);
    for (let i = 0; i < (p.sources ?? []).length; i++) {
      const s = p.sources[i];
      const srId = `sr_${p.slug}-${i}`;
      const srcId = sourceRegistryMap.get(s.source_name) ?? 'src_unknown';
      const claimId = `cl_${p.slug}-${i}`;
      // claim (with predicate = source's claim text)
      output.push(`INSERT OR IGNORE INTO claim (id, subject_entity_id, predicate, literal_value, value_type, certainty, status, preferred) VALUES ('${claimId}', '${eid}', 'has_source_reference', '${s.claim.replace(/'/g, "''")}', 'string', 'undisputed', 'approved', 1);`);
      // source_record
      const fetchedAt = s.retrieved_at ? Math.floor(new Date(s.retrieved_at).getTime() / 1000) : Math.floor(Date.now() / 1000);
      output.push(`INSERT OR IGNORE INTO source_record (id, source_id, external_url, fetched_at, fetch_status) VALUES ('${srId}', '${srcId}', ${s.source_url ? `'${s.source_url.replace(/'/g, "''")}'` : 'NULL'}, ${fetchedAt}, 'success');`);
      // claim_source
      let supportType = s.support_type;
      // Map common aliases
      if (supportType === 'primary_record' || supportType === 'secondary_record') {
        supportType = supportType === 'primary_record' ? 'primary_record' : 'mentions';
      }
      // Ensure it's a valid value
      if (!['supports', 'contradicts', 'partially_supports', 'mentions', 'primary_record', 'derived_from'].includes(supportType)) {
        supportType = 'supports';
      }
      output.push(`INSERT OR IGNORE INTO claim_source (id, claim_id, source_record_id, support_type, retrieved_at) VALUES ('${uuid()}', '${claimId}', '${srId}', '${supportType}', ${fetchedAt});`);
    }
  }

  // Write to file
  const sql = output.join('\n');
  const fs = await import('node:fs');
  const seedPath = '/workspace/historical-knowledge-api/packages/db/seeds/people_experiment.sql';
  fs.writeFileSync(seedPath, sql);
  console.log(`[seed] Wrote ${output.length} SQL statements to ${seedPath}`);
  console.log(`[seed] Use with: wrangler d1 execute historical-knowledge-api-d1 --env dev --remote --file=${seedPath}`);
}

main().catch((err) => {
  console.error('[seed] FAILED:', err);
  process.exit(1);
});
