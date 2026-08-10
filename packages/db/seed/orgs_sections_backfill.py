#!/usr/bin/env python3
"""orgs_sections_backfill.py — Backfill 4 sections for orgs with 0 sections.

For each of the 1075 orgs without any content_section rows, creates:
- overview (from /page/summary/ extract)
- history (from sections[history_idx] if found)
- leadership (CEO/executive section)
- operations (products/services/financials section)

All emit as section_type='overview' (CHECK constraint compliant).

Source: Wikipedia REST + parse API.
Disambiguation: try org name directly, then "Name (company)", then "Name Inc".

Usage:
    python3 packages/db/seed/orgs_sections_backfill.py [output.sql] [limit]
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse
import urllib.request
import urllib.error

WIKIPEDIA_API = "https://en.wikipedia.org/w/api.php"
USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com) python-urllib/3"
API_DIR = "/workspace/historical-knowledge-api/apps/api"


def fetch_json(url):
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            return json.loads(r.read().decode("utf-8"))
    except Exception:
        return None


def get_wiki_title(name):
    """Try the org name directly, then with disambiguation suffixes."""
    candidates = [name]
    # Add common disambiguation suffixes
    candidates.append(f"{name} (company)")
    candidates.append(f"{name} Inc.")
    candidates.append(f"{name} Corp.")
    candidates.append(f"{name} (corporation)")

    for title in candidates:
        wiki_title = title.replace(" ", "_")
        url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{urllib.parse.quote(wiki_title)}"
        data = fetch_json(url)
        if not data:
            continue
        if data.get("type") == "disambiguation":
            continue
        if not data.get("extract"):
            continue
        return title
    return None


def fetch_sections(title, max_sections=12):
    params = {"action": "parse", "page": title, "format": "json", "prop": "sections"}
    url = f"{WIKIPEDIA_API}?{urllib.parse.urlencode(params)}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            data = json.loads(r.read().decode("utf-8"))
        return data.get("parse", {}).get("sections", [])[:max_sections]
    except Exception:
        return []


def fetch_section_text(title, section_index):
    params = {"action": "parse", "page": title, "section": str(section_index),
              "format": "json", "prop": "text"}
    url = f"{WIKIPEDIA_API}?{urllib.parse.urlencode(params)}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            data = json.loads(r.read().decode("utf-8"))
        html = data.get("parse", {}).get("text", {}).get("*", "")
        text = re.sub(r'<[^>]+>', ' ', html)
        text = re.sub(r'\s+', ' ', text).strip()
        return text
    except Exception:
        return ""


def clean_wikitext(text):
    """Strip CSS/HTML noise from Wikipedia HTML (binding pattern from place-sections-r2)."""
    text = re.sub(r'<style[^>]*>.*?</style>', ' ', text, flags=re.DOTALL | re.IGNORECASE)
    text = re.sub(r'<script[^>]*>.*?</script>', ' ', text, flags=re.DOTALL | re.IGNORECASE)
    text = re.sub(r'\.mw-[a-z\-]+(?:\s*[\.,][^{]*)?\s*\{[^}]*\}', ' ', text)
    text = re.sub(r'@media[^{]*\{[^{}]*(?:\{[^{}]*\}[^{}]*)*\}', ' ', text)
    text = re.sub(r'\{[^{}]*[:;][^{}]*\}', ' ', text)
    text = re.sub(r'(?:\.mw-[a-z\-]+\s*){2,}', ' ', text)
    text = re.sub(r'(?:\.id-lock-[a-z\-]+\s*[a-z,]*)+', ' ', text)
    text = re.sub(r'\.cs1-[a-z\-]+', ' ', text)
    text = re.sub(r'(?:\.mw-[a-z\-]+(?:\s+\.?[a-z][a-z\-]*)*\s*){1,}', ' ', text)
    text = re.sub(r'\.[a-z][a-z\-]{2,}\b', ' ', text)
    text = re.sub(r'\[\[(?:[^\]|]*\|)?([^\]]+)\]\]', r'\1', text)
    text = re.sub(r'<[^>]+>', ' ', text)
    text = re.sub(r'\{\{[^}]+\}\}', ' ', text)
    text = re.sub(r"'''(.+?)'''", r'\1', text)
    text = re.sub(r"''(.+?)''", r'\1', text)
    text = re.sub(r'&#160;', ' ', text)
    text = re.sub(r'&#91;\s*(\d+)\s*&#93;', r'[\1]', text)
    text = re.sub(r'\[ edit \]', ' ', text, flags=re.IGNORECASE)
    text = re.sub(r'\s+', ' ', text)
    return text.strip()


def find_section_idx(sections, patterns):
    """Find first section whose title matches any pattern."""
    for idx, sec in enumerate(sections):
        title = (sec.get("line", "") or sec.get("anchor", "")).lower()
        if any(re.search(p, title) for p in patterns):
            return idx, sec.get("line", "")
    return None, None


def render_section_sql(entity_id, slug, section_type, heading, body, display_order, claim_suffix):
    section_id = f"cs_{slug}_{claim_suffix}"
    return f"""INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('{section_id}', '{entity_id}', '{section_type}', '{heading.replace("'", "''")[:200]}',
   '{body.replace("'", "''")[:20000]}', '["clm_wiki_{slug}_{claim_suffix}"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'orgs_sections_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   {display_order}, 1, 1, unixepoch());
"""


def d1_query(sql):
    cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
           "--env", "dev", "--command", sql, "--json"]
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=API_DIR,
                       env={**os.environ, "PATH": f"{API_DIR}/node_modules/.bin:" + os.environ.get("PATH", "")})
    if r.returncode != 0:
        print(f"[d1] error: {r.stderr[:200]}", file=sys.stderr)
        return []
    idx = r.stdout.find("[")
    if idx < 0:
        return []
    try:
        parsed = json.loads(r.stdout[idx:])
        return parsed[0].get("results", [])
    except Exception:
        return []


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0075_orgs_sections.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 1500

    print(f"[orgs-sections] loading orgs with 0 sections...", file=sys.stderr)
    orgs = d1_query(f"""
        SELECT e.id, e.slug, e.canonical_name
        FROM entity e
        WHERE e.type = 'organization' AND e.id NOT LIKE 'org_media%'
          AND e.id NOT IN (SELECT DISTINCT entity_id FROM content_section)
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[orgs-sections] {len(orgs)} orgs to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0075: Orgs sections backfill
-- For {len(orgs)} orgs with 0 content_sections
-- Source: Wikipedia REST + parse API
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip = 0, 0
    title_uses = {}
    for i, p in enumerate(orgs):
        eid = p["id"]
        slug = p["slug"]
        name = p["canonical_name"]

        wiki_title = get_wiki_title(name)
        if not wiki_title:
            n_skip += 1
            if (i + 1) % 50 == 0:
                print(f"[orgs-sections] {i+1}/{len(orgs)} ({n_ok} ok, {n_skip} skip)", file=sys.stderr)
            time.sleep(0.2)
            continue
        title_uses[wiki_title] = title_uses.get(wiki_title, 0) + 1

        # Fetch summary
        wiki_title_underscored = wiki_title.replace(" ", "_")
        summary_data = fetch_json(f"https://en.wikipedia.org/api/rest_v1/page/summary/{urllib.parse.quote(wiki_title_underscored)}")
        overview = (summary_data or {}).get("extract", "")[:2000] or f"{name} is an American company."

        # Fetch full article sections
        sections = fetch_sections(wiki_title, 12)

        # Find History, Leadership, Operations sections
        hist_idx, _ = find_section_idx(sections, [r'history|found|origin|early year'])
        lead_idx, _ = find_section_idx(sections, [r'leader|execut|management|ceo|chief|board|officer|people|personnel|key people'])
        ops_idx, _ = find_section_idx(sections, [r'operat|product|services|financial|business|activity|portfolio'])

        # Fallback: use second, third, fourth sections
        if hist_idx is None and len(sections) > 1:
            hist_idx = 1
        if lead_idx is None and len(sections) > 2:
            lead_idx = 2
        if ops_idx is None and len(sections) > 3:
            ops_idx = 3

        out_f.write(f"-- {i+1}. {name} (slug={slug}, wiki='{wiki_title}')\n")

        # 1. Overview (always)
        out_f.write(render_section_sql(eid, slug, "overview", "Overview", overview, 10, "overview"))
        # 2. History
        if hist_idx is not None and hist_idx < len(sections):
            text = clean_wikitext(fetch_section_text(wiki_title, hist_idx))[:2500]
            if text:
                out_f.write(render_section_sql(eid, slug, "overview", "History", text, 20, "history"))
        # 3. Leadership
        if lead_idx is not None and lead_idx < len(sections):
            text = clean_wikitext(fetch_section_text(wiki_title, lead_idx))[:2000]
            if text:
                out_f.write(render_section_sql(eid, slug, "overview", "Leadership", text, 30, "leadership"))
        # 4. Operations
        if ops_idx is not None and ops_idx < len(sections):
            text = clean_wikitext(fetch_section_text(wiki_title, ops_idx))[:2000]
            if text:
                out_f.write(render_section_sql(eid, slug, "overview", "Operations", text, 40, "operations"))

        out_f.flush()
        n_ok += 1

        if (i + 1) % 25 == 0:
            print(f"[orgs-sections] {i+1}/{len(orgs)} ({n_ok} ok, {n_skip} skip)", file=sys.stderr)
        time.sleep(0.5)  # be polite to Wikipedia

    out_f.close()
    print(f"\n[orgs-sections] done: {n_ok} ok, {n_skip} skip", file=sys.stderr)
    print(f"[orgs-sections] wrote SQL to {out_path}", file=sys.stderr)
    print(f"\n[orgs-sections] wiki_title breakdown (top 10):", file=sys.stderr)
    for title, count in sorted(title_uses.items(), key=lambda x: -x[1])[:10]:
        print(f"  {count:3d}  {title}", file=sys.stderr)


if __name__ == "__main__":
    main()
