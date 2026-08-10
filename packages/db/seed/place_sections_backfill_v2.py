#!/usr/bin/env python3
"""place_sections_backfill_v2.py — Backfill 4 sections for places with 0 sections.

V2 uses Wikipedia REST + parse API with "City, State" disambiguation fallback
(same state map as place_image_backfill_v2.py).

For each of the 177 places without any content_section rows, creates:
- overview (from /page/summary/ extract)
- history (from sections[history_idx] if found)
- geography (from sections[geo_idx] if found)
- demographics (from sections[demo_idx] if found)
All emit as section_type='overview' (CHECK constraint compliant).

Usage:
    python3 packages/db/seed/place_sections_backfill_v2.py [output.sql] [limit]
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
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

US_STATE_NAME = {
    'AL':'Alabama','AK':'Alaska','AZ':'Arizona','AR':'Arkansas','CA':'California',
    'CO':'Colorado','CT':'Connecticut','DE':'Delaware','FL':'Florida','GA':'Georgia',
    'HI':'Hawaii','ID':'Idaho','IL':'Illinois','IN':'Indiana','IA':'Iowa',
    'KS':'Kansas','KY':'Kentucky','LA':'Louisiana','ME':'Maine','MD':'Maryland',
    'MA':'Massachusetts','MI':'Michigan','MN':'Minnesota','MS':'Mississippi','MO':'Missouri',
    'MT':'Montana','NE':'Nebraska','NV':'Nevada','NH':'New Hampshire','NJ':'New Jersey',
    'NM':'New Mexico','NY':'New York','NC':'North Carolina','ND':'North Dakota','OH':'Ohio',
    'OK':'Oklahoma','OR':'Oregon','PA':'Pennsylvania','RI':'Rhode Island','SC':'South Carolina',
    'SD':'South Dakota','TN':'Tennessee','TX':'Texas','UT':'Utah','VT':'Vermont',
    'VA':'Virginia','WA':'Washington','WV':'West Virginia','WI':'Wisconsin','WY':'Wyoming',
}

CITY_STATE_FILE = os.path.join(SCRIPT_DIR, "city_state_map.json")
try:
    with open(CITY_STATE_FILE) as f:
        CITY_STATE = json.load(f)
    print(f"[sections-v2] loaded {len(CITY_STATE)} city→state mappings", file=sys.stderr)
except FileNotFoundError:
    print(f"[sections-v2] WARN: {CITY_STATE_FILE} not found; state fallback disabled", file=sys.stderr)
    CITY_STATE = {}


def fetch_json(url):
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as r:
            return json.loads(r.read().decode("utf-8"))
    except Exception:
        return None


def get_wiki_title(name, slug):
    """Try 'City' first, then 'City, State' / 'City, ST' fallback. Returns the best title or None."""
    candidates = [name]
    state_code = CITY_STATE.get(slug)
    if state_code and state_code in US_STATE_NAME:
        state_name = US_STATE_NAME[state_code]
        candidates.append(f"{name}, {state_name}")
        candidates.append(f"{name}, {state_code}")

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


def fetch_sections(title, max_sections=8):
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
    # Strip <style> blocks first (Wikipedia inlines CSS)
    text = re.sub(r'<style[^>]*>.*?</style>', ' ', text, flags=re.DOTALL | re.IGNORECASE)
    text = re.sub(r'<script[^>]*>.*?</script>', ' ', text, flags=re.DOTALL | re.IGNORECASE)
    # Strip Wikipedia CSS class chains: ".foo .bar{...}" with anything inside braces
    text = re.sub(r'\.mw-[a-z\-]+(?:\s*[\.,][^{]*)?\s*\{[^}]*\}', ' ', text)
    text = re.sub(r'@media[^{]*\{[^{}]*(?:\{[^{}]*\}[^{}]*)*\}', ' ', text)
    # Strip any remaining CSS-like blocks { prop: val; ... } or { content }
    text = re.sub(r'\{[^{}]*[:;][^{}]*\}', ' ', text)
    # Strip remaining ".mw-* foo" class selector chains (orphaned after CSS removal)
    text = re.sub(r'(?:\.mw-[a-z\-]+\s*){2,}', ' ', text)
    # Strip "id-lock-..." chained class fragments
    text = re.sub(r'(?:\.id-lock-[a-z\-]+\s*[a-z,]*)+', ' ', text)
    text = re.sub(r'\.cs1-[a-z\-]+', ' ', text)
    # Strip any remaining bare .mw-* class chains (orphaned selectors)
    text = re.sub(r'(?:\.mw-[a-z\-]+(?:\s+\.?[a-z][a-z\-]*)*\s*){1,}', ' ', text)
    # Strip remaining single bare class selectors (e.g. ".hatnote", ".citation")
    text = re.sub(r'\.[a-z][a-z\-]{2,}\b', ' ', text)
    # Wikitext patterns
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
    """Find first section whose title matches any pattern. Returns (idx, title) or (None, None)."""
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
   'general', 'en', 'assisted', 'place_sections_v2', 'auto_approved', 1, unixepoch(), unixepoch(),
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
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0073_place_sections_v2.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 1000

    print(f"[sections-v2] loading places with 0 sections...", file=sys.stderr)
    places = d1_query(f"""
        SELECT e.id, e.slug, e.canonical_name, p.place_type
        FROM entity e
        LEFT JOIN place p ON p.id = e.id
        WHERE e.type = 'place' AND e.id NOT LIKE 'plc_media%'
          AND e.id NOT IN (SELECT DISTINCT entity_id FROM content_section)
          AND e.canonical_name != 'Test Run'
        ORDER BY e.popularity_score DESC NULLS LAST
        LIMIT {limit}
    """)
    print(f"[sections-v2] {len(places)} places to process", file=sys.stderr)

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0073: Place sections backfill v2
-- For {len(places)} places with 0 content_sections
-- Source: Wikipedia REST + parse API + 'City, State' disambiguation fallback
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip = 0, 0
    title_uses = {}
    for i, p in enumerate(places):
        eid = p["id"]
        slug = p["slug"]
        name = p["canonical_name"]

        wiki_title = get_wiki_title(name, slug)
        if not wiki_title:
            n_skip += 1
            if (i + 1) % 25 == 0:
                print(f"[sections-v2] {i+1}/{len(places)} ({n_ok} ok, {n_skip} skip)", file=sys.stderr)
            time.sleep(0.2)
            continue
        title_uses[wiki_title] = title_uses.get(wiki_title, 0) + 1

        # Fetch full article sections
        sections = fetch_sections(wiki_title, 10)

        # Overview: from REST summary (already fetched for title detection)
        wiki_title_underscored = wiki_title.replace(" ", "_")
        summary_data = fetch_json(f"https://en.wikipedia.org/api/rest_v1/page/summary/{urllib.parse.quote(wiki_title_underscored)}")
        overview = (summary_data or {}).get("extract", "")[:2000] or f"{name} is a place in the United States."

        # Find History, Geography, Demographics sections
        hist_idx, hist_title = find_section_idx(sections, [r'history|found|origin'])
        geo_idx, geo_title = find_section_idx(sections, [r'geograph|locat|topograph|climate'])
        demo_idx, demo_title = find_section_idx(sections, [r'demograph|popul|cultur|economy'])

        # Fallback: second, third, fourth sections
        if hist_idx is None and len(sections) > 1:
            hist_idx = 1
        if geo_idx is None and len(sections) > 2:
            geo_idx = 2
        if demo_idx is None and len(sections) > 3:
            demo_idx = 3

        out_f.write(f"-- {i+1}. {name} (slug={slug}, wiki='{wiki_title}', type={p.get('place_type')})\n")

        # 1. Overview (always)
        out_f.write(render_section_sql(eid, slug, "overview", "Overview", overview, 10, "overview"))
        # 2. History
        if hist_idx is not None and hist_idx < len(sections):
            text = clean_wikitext(fetch_section_text(wiki_title, hist_idx))[:2500]
            if text:
                out_f.write(render_section_sql(eid, slug, "overview", "History", text, 20, "history"))
        # 3. Geography
        if geo_idx is not None and geo_idx < len(sections):
            text = clean_wikitext(fetch_section_text(wiki_title, geo_idx))[:2000]
            if text:
                out_f.write(render_section_sql(eid, slug, "overview", "Geography", text, 30, "geography"))
        # 4. Demographics
        if demo_idx is not None and demo_idx < len(sections):
            text = clean_wikitext(fetch_section_text(wiki_title, demo_idx))[:2000]
            if text:
                out_f.write(render_section_sql(eid, slug, "overview", "Demographics", text, 40, "demographics"))

        out_f.flush()
        n_ok += 1

        if (i + 1) % 25 == 0:
            print(f"[sections-v2] {i+1}/{len(places)} ({n_ok} ok, {n_skip} skip)", file=sys.stderr)
        time.sleep(0.5)  # be polite to Wikipedia

    out_f.close()
    print(f"\n[sections-v2] done: {n_ok} ok, {n_skip} skip", file=sys.stderr)
    print(f"[sections-v2] wrote SQL to {out_path}", file=sys.stderr)
    print(f"\n[sections-v2] wiki_title breakdown (top 10):", file=sys.stderr)
    for title, count in sorted(title_uses.items(), key=lambda x: -x[1])[:10]:
        print(f"  {count:3d}  {title}", file=sys.stderr)


if __name__ == "__main__":
    main()
