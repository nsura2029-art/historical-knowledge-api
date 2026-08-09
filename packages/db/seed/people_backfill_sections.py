#!/usr/bin/env python3
"""
people_backfill_sections.py — Backfill the 3 missing sections (career/personal/legacy)
for the 818 persons who only have the intro section.

Uses the same Wikipedia API calls as people_ingest.py but emits ONLY the 3 missing sections.
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse

USER_AGENT = "HistoricalKnowledgePlatform/0.1 (https://github.com/nsura2029-art/historical-knowledge-api; contact: research@hka.local)"

# Re-use the functions from people_ingest.py
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from people_ingest import (
    fetch, fetch_sections, fetch_section_text, clean_wikitext, render_section_sql,
    slugify
)

WIKIPEDIA_API = "https://en.wikipedia.org/api/rest_v1/page/html/"


def get_persons_missing_career(env, api_dir, limit=2000):
    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev",
           "--command",
           f"SELECT e.slug, e.canonical_name FROM entity e WHERE e.type='person' AND e.id NOT IN (SELECT entity_id FROM content_section WHERE section_type='career' AND entity_id IS NOT NULL) ORDER BY e.popularity_score DESC NULLS LAST LIMIT {limit}",
           "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=api_dir, env=env)
    if r.returncode != 0:
        return []
    idx = r.stdout.find("[")
    parsed = json.loads(r.stdout[idx:])
    return parsed[0].get("results", [])


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0052_sections_backfill.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 2000

    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()
    env = os.environ.copy()
    if "node_modules/.bin/wrangler" not in env.get("PATH", ""):
        env["PATH"] = f"{api_dir}/node_modules/.bin:{env.get('PATH', '')}"

    print("[backfill] loading people missing career section...", file=sys.stderr)
    persons = get_persons_missing_career(env, api_dir, limit=limit)
    print(f"[backfill] {len(persons)} persons to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0052: Backfill 3 missing sections (career/personal/legacy)
-- for {len(persons)} persons who only have the intro section
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Source: Wikipedia REST API
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip, n_fail = 0, 0, 0
    for i, p in enumerate(persons):
        name = p["canonical_name"]
        slug = p["slug"]
        entity_id = f"ent_{slug}"

        # Fetch Wikipedia page
        page = fetch(name)
        if not page or "_error" in page:
            n_fail += 1
            print(f"[{i+1}/{len(persons)}] FAIL: {name}", file=sys.stderr)
            continue

        intro = page.get("extract", "")
        sections = fetch_sections(name, 4)

        # Build the 3 missing sections
        sql = []
        sql.append(f"-- {i+1}. {name} (backfill)")

        # career (use fetch_section_text(1) for second section, fallback to intro)
        if sections and len(sections) > 1:
            section_text = clean_wikitext(fetch_section_text(name, 1))[:2500]
        else:
            section_text = ""
        if not section_text:
            section_text = (intro or "")[:2000] or f"Career of {name}."
        sql.append(render_section_sql(entity_id, f"cs_{slug}_career", "career", "Career",
                                       section_text, 20, f"clm_wiki_{slug}_career"))

        # personal
        if sections and len(sections) > 2:
            section_text = clean_wikitext(fetch_section_text(name, 2))[:2000]
        else:
            section_text = ""
        if not section_text:
            section_text = (intro or "")[:2000] or f"Personal life of {name}."
        sql.append(render_section_sql(entity_id, f"cs_{slug}_personal", "narrative", "Personal life",
                                       section_text, 80, f"clm_wiki_{slug}_personal"))

        # legacy
        if sections and len(sections) > 3:
            section_text = clean_wikitext(fetch_section_text(name, 3))[:2000]
        else:
            section_text = ""
        if not section_text:
            section_text = (intro or "")[:2000] or f"Legacy of {name}."
        sql.append(render_section_sql(entity_id, f"cs_{slug}_legacy", "legacy", "Legacy",
                                       section_text, 90, f"clm_wiki_{slug}_legacy"))

        for s in sql:
            out_f.write(s + "\n")
        out_f.flush()
        n_ok += 1
        print(f"[{i+1}/{len(persons)}] ok: {name}", file=sys.stderr)

        # Be polite to Wikipedia
        time.sleep(3.0)

    out_f.close()
    print(f"\n[backfill] done: ok={n_ok} fail={n_fail}", file=sys.stderr)
    print(f"[backfill] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
