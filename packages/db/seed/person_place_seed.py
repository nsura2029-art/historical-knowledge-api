#!/usr/bin/env python3
"""
Person <-> place linking migration generator.

Reads person_place_links.json + us_places.json slug maps and outputs
a migration that inserts into person_place_relation table.
"""
import json
import re
from pathlib import Path

ROOT = Path(__file__).parent
LINKS_FILE = ROOT / "person_place_links.json"
US_PLACES_FILE = ROOT / "us_places.json"
OUT_FILE = ROOT.parent / "migrations" / "0037_person_place_links.sql"

def slugify(s):
    return re.sub(r'[^a-z0-9-]+', '-', s.lower().strip()).strip('-')

def main():
    links = json.loads(LINKS_FILE.read_text())
    us_places = json.loads(US_PLACES_FILE.read_text())

    # Build place slug -> id map from us_places.json (slug derived from name)
    # Also include explicit alias map for known mismatches
    alias = {
        "washington-dc": "washington-d-c",
        "st-louis": "st-louis",
    }
    place_slug_to_id = {}
    for p in us_places:
        pslug = slugify(p['name'])
        # Match against the alias first, then the name
        place_slug_to_id[pslug] = f"plc_{pslug.replace('-', '_')}"
    # Add aliases (alias key -> real slug)
    for link_slug, real_slug in alias.items():
        if real_slug in place_slug_to_id:
            place_slug_to_id[link_slug] = place_slug_to_id[real_slug]
    # Persons already in DB via people_ingest.py use entity_{slug} for slug-based IDs.
    # We can't always know the exact id without querying the DB, so we use
    # a placeholder pattern: subquery by canonical_name in the migration itself.

    out = ["-- Migration 0037: Person <-> place links"]
    out.append("-- Generated from person_place_links.json")
    out.append("-- Uses subqueries to resolve entity IDs by slug")
    out.append("")
    out.append("BEGIN;")
    out.append("")

    # We need to get person slugs to id mapping. Since person IDs are entity_{slug}
    # pattern (set by people_ingest.py), we hardcode that pattern.
    inserted = 0
    skipped_place = 0
    seen = set()  # dedup

    for link in links:
        pslug = link['person_slug']
        place_slug = link['place_slug']

        if place_slug not in place_slug_to_id:
            skipped_place += 1
            continue

        # Person ID: people_ingest.py uses pattern ent_<slug_with_underscores>
        person_id = f"ent_{pslug.replace('-', '_')}"
        place_id = place_slug_to_id[place_slug]
        rel = link['relation_type']
        from_year = link.get('from_year')
        to_year = link.get('to_year')

        # Dedup key
        key = (person_id, place_id, rel)
        if key in seen:
            continue
        seen.add(key)

        from_str = str(from_year) if from_year else "NULL"
        to_str = str(to_year) if to_year else "NULL"

        # We use a stable synthetic claim_id (claim_*) so we don't FK-fail on claim table
        claim_id = f"claim_{pslug.replace('-', '_')}_{place_slug.replace('-', '_')}_{rel}"

        out.append(
            f"INSERT OR IGNORE INTO person_place_relation ("
            f"person_id, place_id, relation_type, valid_from, valid_to, source_claim_id, created_at) "
            f"VALUES ('{person_id}', '{place_id}', '{rel}', {from_str}, {to_str}, '{claim_id}', strftime('%s','now'));"
        )
        inserted += 1

    out.append("")
    out.append("COMMIT;")
    out.append("")
    out.append(f"-- Inserted: {inserted} person-place links")
    out.append(f"-- Skipped (place slug not in us_places.json): {skipped_place}")
    out.append(f"-- Unique: {len(seen)}")

    OUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    OUT_FILE.write_text("\n".join(out))
    print(f"Written {OUT_FILE}")
    print(f"Inserted: {inserted}, Skipped: {skipped_place}, Unique: {len(seen)}")

if __name__ == "__main__":
    main()
