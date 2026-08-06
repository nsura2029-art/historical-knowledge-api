/**
 * Search repository — multi-facet search across people, places, works, awards, organizations.
 * 
 * Strategy:
 * 1. Match against canonical_name (highest weight)
 * 2. Match against entity_name (all aliases) — birth, stage, married, etc.
 * 3. Match against known_for_summary, short_description
 * 4. Match against external identifiers (Wikidata, etc.)
 * 5. Match against profession name, place name, work title, award name
 * 
 * Returns unified result with the entity_type so the API can render different cards.
 */

import type { D1Database } from '@cloudflare/workers-types';

export interface SearchResult {
  entity_id: string;
  entity_type: 'person' | 'place' | 'work' | 'organization' | 'award';
  slug: string;
  canonical_name: string;
  short_description: string | null;
  match_type: 'canonical' | 'alias' | 'description' | 'external_id' | 'profession' | 'work' | 'award';
  match_score: number; // 0-1
  matched_term: string;
  // Person-specific (optional)
  living_status?: 'living' | 'deceased' | 'undisclosed';
  generation_slug?: string | null;
  birth_year?: number | null;
  hero_image_url?: string | null;
}

export async function searchAll(db: D1Database, query: string, limit: number = 20): Promise<SearchResult[]> {
  const q = query.trim().toLowerCase();
  if (!q) return [];
  const like = `%${q}%`;

  // 1. People by canonical name (highest weight)
  const peopleCanonical = await db
    .prepare(`
      SELECT e.id, e.type, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             1.0 AS match_score, 'canonical' AS match_type, e.canonical_name AS matched_term
      FROM entity e
      LEFT JOIN person p ON p.id = e.id
      WHERE e.type = 'person' AND e.status = 'published' AND LOWER(e.canonical_name) LIKE ?
      LIMIT ?
    `)
    .bind(like, limit)
    .all<SearchResult>();

  // 2. People by alias (entity_name table)
  const peopleAliases = await db
    .prepare(`
      SELECT DISTINCT e.id, e.type, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.85 AS match_score, 'alias' AS match_type, en.name_value AS matched_term
      FROM entity_name en
      JOIN entity e ON e.id = en.entity_id
      LEFT JOIN person p ON p.id = e.id
      WHERE e.type = 'person' AND e.status = 'published'
        AND (LOWER(en.name_value) LIKE ? OR LOWER(en.normalized_value) LIKE ?)
        AND LOWER(en.name_value) != LOWER(e.canonical_name)
      LIMIT ?
    `)
    .bind(like, like, limit)
    .all<SearchResult>();

  // 3. People by description / known_for
  const peopleDesc = await db
    .prepare(`
      SELECT DISTINCT e.id, e.type, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.6 AS match_score, 'description' AS match_type,
             COALESCE(p.short_description, p.known_for_summary) AS matched_term
      FROM entity e
      JOIN person p ON p.id = e.id
      WHERE e.type = 'person' AND e.status = 'published'
        AND (LOWER(p.short_description) LIKE ? OR LOWER(p.known_for_summary) LIKE ?)
      LIMIT ?
    `)
    .bind(like, like, limit)
    .all<SearchResult>();

  // 4. Works by title
  const works = await db
    .prepare(`
      SELECT e.id, e.type, e.slug, e.canonical_name, NULL AS short_description,
             'work' AS match_type, 0.7 AS match_score, e.canonical_name AS matched_term
      FROM entity e
      WHERE e.type = 'work' AND e.status = 'published' AND LOWER(e.canonical_name) LIKE ?
      LIMIT ?
    `)
    .bind(like, limit)
    .all<SearchResult>();

  // 5. Awards by name
  const awards = await db
    .prepare(`
      SELECT e.id, e.type, e.slug, e.canonical_name, NULL AS short_description,
             'award' AS match_type, 0.7 AS match_score, e.canonical_name AS matched_term
      FROM entity e
      WHERE e.type = 'award' AND e.status = 'published' AND LOWER(e.canonical_name) LIKE ?
      LIMIT ?
    `)
    .bind(like, limit)
    .all<SearchResult>();

  // 6. External identifiers (Wikidata QID, ISNI, etc.)
  const external = await db
    .prepare(`
      SELECT DISTINCT e.id, e.type, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.5 AS match_score, 'external_id' AS match_type, ei.identifier AS matched_term
      FROM external_identifier ei
      JOIN entity e ON e.id = ei.entity_id
      LEFT JOIN person p ON p.id = e.id
      WHERE LOWER(ei.identifier) LIKE ?
      LIMIT ?
    `)
    .bind(like, limit)
    .all<SearchResult>();

  // 7. People by profession name
  const peopleByProfession = await db
    .prepare(`
      SELECT DISTINCT e.id, e.type, e.slug, e.canonical_name, p.short_description, p.living_status, p.generation_slug,
             CAST((SELECT attribute_value FROM person_derived_attribute WHERE person_id = e.id AND attribute_type = 'birth_year' LIMIT 1) AS INTEGER) AS birth_year,
             (SELECT ma.url FROM media_asset ma WHERE ma.depiction_entity_id = e.id AND ma.status = 'approved' AND ma.asset_type = 'image' ORDER BY ma.depiction_confidence DESC LIMIT 1) AS hero_image_url,
             0.4 AS match_score, 'profession' AS match_type, prof.name AS matched_term
      FROM profession prof
      JOIN person_profession pp ON pp.profession_id = prof.id
      JOIN entity e ON e.id = pp.person_id
      JOIN person p ON p.id = e.id
      WHERE e.type = 'person' AND e.status = 'published' AND LOWER(prof.name) LIKE ?
      LIMIT ?
    `)
    .bind(like, limit)
    .all<SearchResult>();

  // Merge all results, dedup by entity_id (keep highest score)
  const all: SearchResult[] = [
    ...(peopleCanonical.results ?? []),
    ...(peopleAliases.results ?? []),
    ...(peopleDesc.results ?? []),
    ...(works.results ?? []),
    ...(awards.results ?? []),
    ...(external.results ?? []),
    ...(peopleByProfession.results ?? []),
  ];

  // Dedup by entity_id, keep highest match_score
  const dedupMap = new Map<string, SearchResult>();
  for (const r of all) {
    const existing = dedupMap.get(r.entity_id);
    if (!existing || r.match_score > existing.match_score) {
      dedupMap.set(r.entity_id, r);
    }
  }

  return Array.from(dedupMap.values())
    .sort((a, b) => b.match_score - a.match_score)
    .slice(0, limit);
}
