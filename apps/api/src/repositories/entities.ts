/**
 * Entity detail repository — fetches single-entity pages for non-person entities.
 * 
 * These power the /v1/{place,profession,generation,star-sign,chinese-zodiac,
 * cause-of-death,work,award,organization,country}/{slug} endpoints.
 * 
 * Each returns the entity itself + a list of related people (or works, etc.)
 * for the entity detail page.
 */

import type { D1Database } from '@cloudflare/workers-types';

// ---------------------------------------------------------------------------
// Common result types
// ---------------------------------------------------------------------------

export interface EntityHeader {
  id: string;
  type: string;
  slug: string;
  canonical_name: string;
  short_description: string | null;
  count: number; // # of related people
}

export interface RelatedPerson {
  id: string;
  slug: string;
  canonical_name: string;
  short_description: string | null;
  living_status: 'living' | 'deceased' | 'undisclosed';
  birth_year: number | null;
  generation_slug: string | null;
  hero_image_url: string | null;
  relation_strength: number; // 0-1
  // Specific to the entity type
  // (e.g., for profession: is_primary, start_year, end_year)
  metadata: Record<string, unknown> | null;
}

// ---------------------------------------------------------------------------
// PLACE
// ---------------------------------------------------------------------------

export async function getPlaceBySlug(db: D1Database, slug: string): Promise<{
  place: EntityHeader | null;
  birthPeople: RelatedPerson[];
  deathPeople: RelatedPerson[];
  residencePeople: RelatedPerson[];
}> {
  let placeRow = await db
    .prepare(`
      SELECT e.id, e.type, e.slug, e.canonical_name, p.place_type, p.country_code
      FROM entity e
      JOIN place p ON p.id = e.id
      WHERE e.slug = ? AND e.type = 'place'
    `)
    .bind(slug)
    .first<{ id: string; type: string; slug: string; canonical_name: string; place_type: string; country_code: string | null }>();
  // Fallback: lookup by canonical name
  if (!placeRow) {
    const normalized = slug.toLowerCase().replace(/-/g, ' ').replace(/[()'"]/g, '');
    placeRow = await db
      .prepare(`
        SELECT e.id, e.type, e.slug, e.canonical_name, p.place_type, p.country_code
        FROM entity e
        JOIN place p ON p.id = e.id
        WHERE e.type = 'place'
          AND (LOWER(e.canonical_name) LIKE ? OR LOWER(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(e.canonical_name), ' ', '-'), '(', ''), ')', ''), '''', '')) = ?)
        LIMIT 1
      `)
      .bind(`%${normalized}%`, slug.toLowerCase())
      .first<{ id: string; type: string; slug: string; canonical_name: string; place_type: string; country_code: string | null }>();
  }

  if (!placeRow) {
    return { place: null, birthPeople: [], deathPeople: [], residencePeople: [] };
  }

  // People born here
  const birthPeople = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM person_place_relation ppr
      JOIN entity e ON e.id = ppr.person_id
      JOIN person p ON p.id = e.id
      WHERE ppr.place_id = ? AND ppr.relation_type = 'birthplace' AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 50
    `)
    .bind(placeRow.id)
    .all<RelatedPerson>();

  // People who died here
  const deathPeople = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM person_place_relation ppr
      JOIN entity e ON e.id = ppr.person_id
      JOIN person p ON p.id = e.id
      WHERE ppr.place_id = ? AND ppr.relation_type = 'death_place' AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 50
    `)
    .bind(placeRow.id)
    .all<RelatedPerson>();

  // People who lived here
  const residencePeople = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.7 AS relation_strength
      FROM person_place_relation ppr
      JOIN entity e ON e.id = ppr.person_id
      JOIN person p ON p.id = e.id
      WHERE ppr.place_id = ? AND ppr.relation_type = 'residence' AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 50
    `)
    .bind(placeRow.id)
    .all<RelatedPerson>();

  const total = (birthPeople.results?.length ?? 0) + (deathPeople.results?.length ?? 0) + (residencePeople.results?.length ?? 0);

  return {
    place: {
      id: placeRow.id,
      type: placeRow.type,
      slug: placeRow.slug,
      canonical_name: placeRow.canonical_name,
      short_description: `${placeRow.place_type}${placeRow.country_code ? ` in ${placeRow.country_code}` : ''}`,
      count: total,
    },
    birthPeople: birthPeople.results ?? [],
    deathPeople: deathPeople.results ?? [],
    residencePeople: residencePeople.results ?? [],
  };
}

// ---------------------------------------------------------------------------
// PROFESSION
// ---------------------------------------------------------------------------

export async function getProfessionBySlug(db: D1Database, slug: string): Promise<{
  profession: EntityHeader | null;
  people: RelatedPerson[];
}> {
  // Try exact ID match first
  let prof = await db
    .prepare(`SELECT id, name, category FROM profession WHERE id = ?`)
    .bind(slug)
    .first<{ id: string; name: string; category: string }>();
  // Fall back to normalized name match
  if (!prof) {
    const normalized = slug.replace(/-/g, ' ').toLowerCase();
    prof = await db
      .prepare(`SELECT id, name, category FROM profession WHERE LOWER(REPLACE(name, ' ', '-')) = ? OR LOWER(name) = ?`)
      .bind(slug.toLowerCase(), normalized)
      .first<{ id: string; name: string; category: string }>();
  }
  if (!prof) {
    return { profession: null, people: [] };
  }

  if (!prof) {
    return { profession: null, people: [] };
  }

  const people = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             CASE WHEN pp.is_primary = 1 THEN 1.0 ELSE 0.7 END AS relation_strength
      FROM person_profession pp
      JOIN entity e ON e.id = pp.person_id
      JOIN person p ON p.id = e.id
      WHERE pp.profession_id = ? AND e.status = 'published'
      ORDER BY pp.is_primary DESC, e.popularity_score DESC
      LIMIT 100
    `)
    .bind(prof.id)
    .all<RelatedPerson>();

  return {
    profession: {
      id: prof.id,
      type: 'profession',
      slug: prof.id,
      canonical_name: prof.name,
      short_description: prof.category,
      count: people.results?.length ?? 0,
    },
    people: people.results ?? [],
  };
}

// ---------------------------------------------------------------------------
// GENERATION (Pew 2019)
// ---------------------------------------------------------------------------

export async function getGenerationBySlug(db: D1Database, slug: string): Promise<{
  generation: EntityHeader | null;
  people: RelatedPerson[];
  yearRange: { min: number; max: number } | null;
}> {
  const yearRange: Record<string, { min: number; max: number; name: string }> = {
    greatest:   { min: 1901, max: 1927, name: 'Greatest Generation' },
    silent:     { min: 1928, max: 1945, name: 'Silent Generation' },
    boomer:     { min: 1946, max: 1964, name: 'Baby Boomers' },
    genx:       { min: 1965, max: 1980, name: 'Generation X' },
    millennial: { min: 1981, max: 1996, name: 'Millennials' },
    genz:       { min: 1997, max: 2012, name: 'Generation Z' },
    genalpha:   { min: 2013, max: 2024, name: 'Generation Alpha' },
    genbeta:    { min: 2025, max: 2039, name: 'Generation Beta' },
  };

  const range = yearRange[slug];
  if (!range) {
    return { generation: null, people: [], yearRange: null };
  }

  const people = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE p.generation_slug = ? AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 100
    `)
    .bind(slug)
    .all<RelatedPerson>();

  return {
    generation: {
      id: `gen_${slug}`,
      type: 'generation',
      slug,
      canonical_name: range.name,
      short_description: `Born ${range.min}-${range.max}`,
      count: people.results?.length ?? 0,
    },
    people: people.results ?? [],
    yearRange: { min: range.min, max: range.max },
  };
}

// ---------------------------------------------------------------------------
// STAR SIGN
// ---------------------------------------------------------------------------

export async function getStarSignBySlug(db: D1Database, slug: string): Promise<{
  starSign: EntityHeader | null;
  people: RelatedPerson[];
  dateRange: { start: string; end: string } | null;
}> {
  const signs: Record<string, { name: string; start: string; end: string }> = {
    aquarius: { name: 'Aquarius', start: '01-20', end: '02-18' },
    pisces: { name: 'Pisces', start: '02-19', end: '03-20' },
    aries: { name: 'Aries', start: '03-21', end: '04-19' },
    taurus: { name: 'Taurus', start: '04-20', end: '05-20' },
    gemini: { name: 'Gemini', start: '05-21', end: '06-20' },
    cancer: { name: 'Cancer', start: '06-21', end: '07-22' },
    leo: { name: 'Leo', start: '07-23', end: '08-22' },
    virgo: { name: 'Virgo', start: '08-23', end: '09-22' },
    libra: { name: 'Libra', start: '09-23', end: '10-22' },
    scorpio: { name: 'Scorpio', start: '10-23', end: '11-21' },
    sagittarius: { name: 'Sagittarius', start: '11-22', end: '12-21' },
    capricorn: { name: 'Capricorn', start: '12-22', end: '01-19' },
  };

  const sign = signs[slug];
  if (!sign) {
    return { starSign: null, people: [], dateRange: null };
  }

  const people = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE p.star_sign_slug = ? AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 100
    `)
    .bind(slug)
    .all<RelatedPerson>();

  return {
    starSign: {
      id: `sign_${slug}`,
      type: 'star_sign',
      slug,
      canonical_name: sign.name,
      short_description: `${sign.start} to ${sign.end}`,
      count: people.results?.length ?? 0,
    },
    people: people.results ?? [],
    dateRange: { start: sign.start, end: sign.end },
  };
}

// ---------------------------------------------------------------------------
// CHINESE ZODIAC
// ---------------------------------------------------------------------------

export async function getChineseZodiacBySlug(db: D1Database, animal: string): Promise<{
  zodiac: EntityHeader | null;
  people: RelatedPerson[];
}> {
  const animals: Record<string, string> = {
    rat: 'Rat', ox: 'Ox', tiger: 'Tiger', rabbit: 'Rabbit',
    dragon: 'Dragon', snake: 'Snake', horse: 'Horse', goat: 'Goat',
    monkey: 'Monkey', rooster: 'Rooster', dog: 'Dog', pig: 'Pig',
  };
  const name = animals[animal];
  if (!name) {
    return { zodiac: null, people: [] };
  }

  const people = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE p.chinese_zodiac_animal = ? AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 100
    `)
    .bind(animal)
    .all<RelatedPerson>();

  return {
    zodiac: {
      id: `zodiac_${animal}`,
      type: 'chinese_zodiac',
      slug: animal,
      canonical_name: name,
      short_description: 'Chinese zodiac animal',
      count: people.results?.length ?? 0,
    },
    people: people.results ?? [],
  };
}

// ---------------------------------------------------------------------------
// CAUSE OF DEATH
// ---------------------------------------------------------------------------

export async function getCauseOfDeathBySlug(db: D1Database, slug: string): Promise<{
  cause: EntityHeader | null;
  people: RelatedPerson[];
}> {
  // slug is the cause text (lowercased, hyphens for spaces)
  const causeText = slug.replace(/-/g, ' ');

  const people = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE p.living_status = 'deceased' AND LOWER(p.cause_of_death) = ? AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 100
    `)
    .bind(causeText)
    .all<RelatedPerson>();

  if (people.results?.length === 0) {
    return { cause: null, people: [] };
  }

  return {
    cause: {
      id: `cod_${slug}`,
      type: 'cause_of_death',
      slug,
      canonical_name: causeText.charAt(0).toUpperCase() + causeText.slice(1),
      short_description: 'Cause of death',
      count: people.results?.length ?? 0,
    },
    people: people.results ?? [],
  };
}

// ---------------------------------------------------------------------------
// COUNTRY
// ---------------------------------------------------------------------------

export async function getCountryByCode(db: D1Database, cca2: string): Promise<{
  country: EntityHeader | null;
  citizens: RelatedPerson[];
  birthPeople: RelatedPerson[];
  deathPeople: RelatedPerson[];
}> {
  const code = cca2.toUpperCase();
  const countryRow = await db
    .prepare(`
      SELECT e.id, e.slug, e.canonical_name
      FROM entity e
      JOIN place p ON p.id = e.id
      WHERE p.country_code = ? AND e.type = 'place'
      LIMIT 1
    `)
    .bind(code)
    .first<{ id: string; slug: string; canonical_name: string }>();

  if (!countryRow) {
    return { country: null, citizens: [], birthPeople: [], deathPeople: [] };
  }

  // Citizens
  const citizens = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM person_citizenship pc
      JOIN entity e ON e.id = pc.person_id
      JOIN person p ON p.id = e.id
      WHERE pc.country_id = ? AND e.status = 'published'
      ORDER BY pc.primary_flag DESC, e.popularity_score DESC
      LIMIT 200
    `)
    .bind(countryRow.id)
    .all<RelatedPerson>();

  // Born in this country (via person_place_relation on birth_place)
  const birthPeople = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.8 AS relation_strength
      FROM person_place_relation ppr
      JOIN place pl ON pl.id = ppr.place_id
      JOIN entity e ON e.id = ppr.person_id
      JOIN person p ON p.id = e.id
      WHERE pl.country_code = ? AND ppr.relation_type = 'birthplace' AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 200
    `)
    .bind(code)
    .all<RelatedPerson>();

  // Died in this country
  const deathPeople = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.8 AS relation_strength
      FROM person_place_relation ppr
      JOIN place pl ON pl.id = ppr.place_id
      JOIN entity e ON e.id = ppr.person_id
      JOIN person p ON p.id = e.id
      WHERE pl.country_code = ? AND ppr.relation_type = 'death_place' AND e.status = 'published'
      ORDER BY e.popularity_score DESC
      LIMIT 200
    `)
    .bind(code)
    .all<RelatedPerson>();

  return {
    country: {
      id: countryRow.id,
      type: 'country',
      slug: countryRow.slug,
      canonical_name: countryRow.canonical_name,
      short_description: `Country code ${code}`,
      count: (citizens.results?.length ?? 0),
    },
    citizens: citizens.results ?? [],
    birthPeople: birthPeople.results ?? [],
    deathPeople: deathPeople.results ?? [],
  };
}

// ---------------------------------------------------------------------------
// AWARD
// ---------------------------------------------------------------------------

export async function getAwardBySlug(db: D1Database, slug: string): Promise<{
  award: EntityHeader | null;
  winners: RelatedPerson[];
  nominees: RelatedPerson[];
}> {
  // Try exact slug, then fallback to canonical-name match
  let awardRow = await db
    .prepare(`
      SELECT e.id, e.slug, e.canonical_name, a.award_type, a.field
      FROM entity e
      JOIN award a ON a.id = e.id
      WHERE e.slug = ? AND e.type = 'award'
    `)
    .bind(slug)
    .first<{ id: string; slug: string; canonical_name: string; award_type: string; field: string | null }>();
  if (!awardRow) {
    const normalized = slug.toLowerCase().replace(/-/g, ' ').replace(/[()'"]/g, '');
    awardRow = await db
      .prepare(`
        SELECT e.id, e.slug, e.canonical_name, a.award_type, a.field
        FROM entity e
        JOIN award a ON a.id = e.id
        WHERE e.type = 'award'
          AND (LOWER(e.canonical_name) LIKE ? OR LOWER(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(e.canonical_name), ' ', '-'), '(', ''), ')', ''), '''', '')) = ?)
        LIMIT 1
      `)
      .bind(`%${normalized}%`, slug.toLowerCase())
      .first<{ id: string; slug: string; canonical_name: string; award_type: string; field: string | null }>();
  }

  if (!awardRow) {
    return { award: null, winners: [], nominees: [] };
  }

  const winners = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength
      FROM person_award_result par
      JOIN entity e ON e.id = par.person_id
      JOIN person p ON p.id = e.id
      WHERE par.award_id = ? AND par.result = 'won' AND e.status = 'published'
      ORDER BY par.year DESC
      LIMIT 100
    `)
    .bind(awardRow.id)
    .all<RelatedPerson>();

  const nominees = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.6 AS relation_strength
      FROM person_award_result par
      JOIN entity e ON e.id = par.person_id
      JOIN person p ON p.id = e.id
      WHERE par.award_id = ? AND par.result IN ('nominated', 'shortlisted') AND e.status = 'published'
      ORDER BY par.year DESC
      LIMIT 100
    `)
    .bind(awardRow.id)
    .all<RelatedPerson>();

  return {
    award: {
      id: awardRow.id,
      type: 'award',
      slug: awardRow.slug,
      canonical_name: awardRow.canonical_name,
      short_description: `${awardRow.award_type}${awardRow.field ? ` - ${awardRow.field}` : ''}`,
      count: (winners.results?.length ?? 0) + (nominees.results?.length ?? 0),
    },
    winners: winners.results ?? [],
    nominees: nominees.results ?? [],
  };
}

// ---------------------------------------------------------------------------
// WORK
// ---------------------------------------------------------------------------

export async function getWorkBySlug(db: D1Database, slug: string): Promise<{
  work: EntityHeader | null;
  credits: Array<RelatedPerson & { role: string; character_name: string | null }>;
}> {
  let workRow = await db
    .prepare(`
      SELECT e.id, e.slug, e.canonical_name, w.work_type, w.release_date
      FROM entity e
      JOIN work w ON w.id = e.id
      WHERE e.slug = ? AND e.type = 'work'
    `)
    .bind(slug)
    .first<{ id: string; slug: string; canonical_name: string; work_type: string; release_date: string | null }>();
  if (!workRow) {
    const normalized = slug.toLowerCase().replace(/-/g, ' ').replace(/[()'"]/g, '');
    workRow = await db
      .prepare(`
        SELECT e.id, e.slug, e.canonical_name, w.work_type, w.release_date
        FROM entity e
        JOIN work w ON w.id = e.id
        WHERE e.type = 'work'
          AND (LOWER(e.canonical_name) LIKE ? OR LOWER(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(e.canonical_name), ' ', '-'), '(', ''), ')', ''), '''', '')) = ?)
        LIMIT 1
      `)
      .bind(`%${normalized}%`, slug.toLowerCase())
      .first<{ id: string; slug: string; canonical_name: string; work_type: string; release_date: string | null }>();
  }

  if (!workRow) {
    return { work: null, credits: [] };
  }

  const credits = await db
    .prepare(`
      SELECT DISTINCT e.id, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS relation_strength,
             pwc.role, pwc.character_name
      FROM person_work_credit pwc
      JOIN entity e ON e.id = pwc.person_id
      JOIN person p ON p.id = e.id
      WHERE pwc.work_id = ? AND e.status = 'published'
      ORDER BY pwc.is_primary DESC, e.popularity_score DESC
      LIMIT 50
    `)
    .bind(workRow.id)
    .all<RelatedPerson & { role: string; character_name: string | null }>();

  return {
    work: {
      id: workRow.id,
      type: 'work',
      slug: workRow.slug,
      canonical_name: workRow.canonical_name,
      short_description: `${workRow.work_type}${workRow.release_date ? ` (${workRow.release_date})` : ''}`,
      count: credits.results?.length ?? 0,
    },
    credits: credits.results ?? [],
  };
}
