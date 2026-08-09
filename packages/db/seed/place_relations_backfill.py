#!/usr/bin/env python3
"""place_relations_backfill.py — Populate person_place_relation from entity_event data."""
import json
import os
import re
import subprocess
import sys
import time

API_DIR = "/workspace/historical-knowledge-api/apps/api"


def d1_query(sql):
    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev", "--command", sql, "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=API_DIR,
                       env={**os.environ, "PATH": f"{API_DIR}/node_modules/.bin:" + os.environ.get("PATH", "")})
    if r.returncode != 0:
        return []
    idx = r.stdout.find("[")
    if idx < 0:
        return []
    try:
        parsed = json.loads(r.stdout[idx:])
        return parsed[0].get("results", [])
    except:
        return []


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0066_place_relations.sql"

    # Get all places
    print("[relations] loading places...", file=sys.stderr)
    places = d1_query("SELECT id, slug, canonical_name FROM entity WHERE type='place' AND id LIKE 'plc_%'")
    print(f"[relations] {len(places)} places", file=sys.stderr)

    # Build place name → place_id map
    place_map = {}
    for p in places:
        place_map[p['canonical_name'].lower()] = p['id']
        place_map[p['slug']] = p['id']
    print(f"[relations] {len(place_map)} place mappings", file=sys.stderr)

    # Get all birth events
    print("[relations] loading birth events...", file=sys.stderr)
    birth_events = d1_query("""
        SELECT ee.entity_id AS person_id, ee.title, ee.body
        FROM entity_event ee
        JOIN entity e ON e.id = ee.entity_id AND e.type = 'person'
        WHERE ee.event_type = 'birth'
    """)
    print(f"[relations] {len(birth_events)} birth events", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0066: Person-place relations
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- For each person with a birth event mentioning a place, create a birthplace relation
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip = 0, 0
    matched_places = set()
    for i, ev in enumerate(birth_events):
        person_id = ev['person_id']
        title = (ev.get('title') or '').lower()
        body = (ev.get('body') or '').lower()
        text = title + ' ' + body

        # Try to match a place name (longer names first to avoid partial matches)
        sorted_places = sorted(place_map.items(), key=lambda x: -len(x[0]))
        matched = False
        for place_name, place_id in sorted_places:
            # Use word boundary to avoid partial matches
            if re.search(r'\b' + re.escape(place_name) + r'\b', text):
                rel_id = f"ppr_{person_id[4:]}_{place_id[4:]}_birth"
                out_f.write(f"""INSERT OR IGNORE INTO person_place_relation
  (id, person_id, place_id, relation_type, source_claim_id, created_at)
VALUES
  ('{rel_id}', '{person_id}', '{place_id}', 'birthplace', 'clm_wiki_{person_id[4:]}_birth', unixepoch());
""")
                matched_places.add(place_id)
                n_ok += 1
                matched = True
                break

        if not matched:
            n_skip += 1

        if (i + 1) % 500 == 0:
            print(f"[relations] {i+1}/{len(birth_events)} processed, {n_ok} matched, {n_skip} skipped", file=sys.stderr)
            out_f.flush()

    out_f.close()
    print(f"\n[relations] done: {n_ok} matched, {n_skip} skipped", file=sys.stderr)
    print(f"[relations] matched {len(matched_places)} unique places", file=sys.stderr)
    print(f"[relations] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
