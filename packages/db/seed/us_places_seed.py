#!/usr/bin/env python3
"""us_places_seed.py — Generate SQL migration for US famous places.

Reads us_places.json, generates INSERT statements for:
  - entity (type='place')
  - place (with slug)
"""
import json
import os
import re
import sys

DATA = json.load(open(os.path.join(os.path.dirname(__file__), 'us_places.json')))

def slugify(s):
    s = s.lower().strip()
    s = re.sub(r"[^a-z0-9\s-]", "", s)
    s = re.sub(r"\s+", "-", s)
    s = re.sub(r"-+", "-", s)
    s = s.strip('-')
    return s

def render_place_sql(place):
    name = place['name']
    state = place.get('state', '')
    place_type = place.get('place_type', 'city')
    founded = place.get('founded')
    population = place.get('population')
    significance = place.get('significance', '')
    # Generate slug: include state to disambiguate
    base_slug = slugify(name)
    if state:
        # Check if slug would conflict
        slug = f"{base_slug}-{state.lower().replace(' ', '-')}" if 'university' in name.lower() or state in ('New York', 'California') and base_slug in ('new-york', 'los-angeles') else base_slug
    else:
        slug = base_slug
    # Use simpler slug
    slug = base_slug
    entity_id = f"plc_{slug}"
    summary = f"{name} is a famous {place_type} in {state}, United States. {significance}" if state else f"{name} is a famous {place_type} in the United States. {significance}"
    summary = summary.replace("'", "''")[:500]
    pop_str = str(population) if population else "NULL"
    fnd_str = str(founded) if founded else "NULL"
    # Map place_type to a more specific type
    type_mapping = {
        'city': 'city',
        'landmark': 'landmark',
        'university': 'university',
    }
    ptype = type_mapping.get(place_type, 'location')
    return f"""-- Place: {name} ({place_type}, {state})
INSERT OR IGNORE INTO entity (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES ('{entity_id}', 'place', '{slug}', '{name.replace("'", "''")}', 'published', '{summary}', '["src_wikidata","src_dbpedia"]', unixepoch(), 50, 'en');

INSERT OR IGNORE INTO place (id, place_type, country_code, valid_from, wikidata_qid)
VALUES ('{entity_id}', '{ptype}', 'US', {fnd_str}, NULL);
"""

def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0036_us_famous_places.sql"
    print(f"[us_places] Loading {len(DATA)} places...")
    with open(out_path, 'w') as f:
        f.write("-- ========================================\n")
        f.write(f"-- Migration 0036: US Famous Places\n")
        f.write(f"-- Generated: {os.popen('date -u +%Y-%m-%dT%H:%M:%SZ').read().strip()}\n")
        f.write(f"-- {len(DATA)} places: cities, landmarks, universities\n")
        f.write("-- Schema: entity (type='place') + place\n")
        f.write("-- ========================================\n\n")
        for p in DATA:
            f.write(render_place_sql(p))
            f.write("\n")
    print(f"[us_places] Wrote {out_path}")

if __name__ == "__main__":
    main()
