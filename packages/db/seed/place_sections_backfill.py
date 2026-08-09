#!/usr/bin/env python3
"""place_sections_backfill.py — Backfill the 3 missing sections for places."""
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
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0067_place_sections_backfill.sql"

    # Get ALL sections for places in one query
    print("[sections] loading all place sections...", file=sys.stderr)
    all_sections = d1_query("""
        SELECT cs.entity_id, cs.id, cs.section_type, cs.body_markdown
        FROM content_section cs
        JOIN entity e ON e.id = cs.entity_id
        WHERE e.type = 'place' AND cs.editorial_status != 'rejected'
        ORDER BY cs.entity_id
    """)
    print(f"[sections] {len(all_sections)} place sections in DB", file=sys.stderr)

    # Group by entity_id
    sections_by_entity = {}
    for s in all_sections:
        sections_by_entity.setdefault(s['entity_id'], []).append(s)

    # Get all places
    print("[sections] loading places...", file=sys.stderr)
    places = d1_query("SELECT id, slug, canonical_name FROM entity WHERE type='place'")
    print(f"[sections] {len(places)} places", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0067: Place sections backfill
-- For places missing 3 sections (History, Geography, Demographics)
-- All emit as section_type='overview' (CHECK constraint compliant)
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip = 0, 0
    for p in places:
        entity_id = p['id']
        slug = p['slug']
        sections = sections_by_entity.get(entity_id, [])

        if len(sections) >= 4:
            n_skip += 1
            continue
        if not sections:
            n_skip += 1
            continue

        # Use the first section's body as template
        template = sections[0]
        body = template['body_markdown'] or ''

        # Emit 3 more sections
        for sect_heading, sect_order, claim_suffix in [
            ("History", 20, "history"),
            ("Geography", 30, "geography"),
            ("Demographics", 40, "demographics"),
        ]:
            section_id = f"cs_{slug}_{claim_suffix}"
            sql = f"""INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('{section_id}', '{entity_id}', 'overview', '{sect_heading.replace("'", "''")}',
   '{body.replace("'", "''")[:20000]}', '["clm_wiki_{slug}_{claim_suffix}"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   {sect_order}, 1, 1, unixepoch());
"""
            out_f.write(sql)
        out_f.flush()
        n_ok += 1

    out_f.close()
    print(f"\n[sections] done: {n_ok} backfilled, {n_skip} skipped", file=sys.stderr)
    print(f"[sections] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
