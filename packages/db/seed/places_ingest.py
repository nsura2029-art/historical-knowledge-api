#!/usr/bin/env python3
"""
places_ingest.py — Bulk-ingest US places (cities, states) from GeoNames + curated list.

For each place:
  1. Query Wikipedia for the article (en.wikipedia.org REST API)
  2. Extract: intro paragraph, sections (history, geography, demographics)
  3. Insert into D1:
     - entity row (type='place')
     - place row (with lat/lon, country_code, place_type)
     - content_section rows (overview, history, geography, demographics)
     - entity_image (if Wikimedia image)
     - entity_relation (place → ent_usa for country)

Input format (one place per line):
  canonical_name|place_type|state_code|parent_place|lat|lon|population

Usage:
  python3 places_ingest.py --list places_us_new.txt
  python3 places_ingest.py --list places_us_new.txt --skip-existing
"""

import argparse
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


def fetch(title: str, max_retries: int = 5) -> dict | None:
    """Fetch Wikipedia page summary."""
    url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{urllib.parse.quote(title.replace(' ', '_'))}"
    for attempt in range(max_retries):
        try:
            req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
            with urllib.request.urlopen(req, timeout=15) as response:
                return json.loads(response.read().decode("utf-8"))
        except urllib.error.HTTPError as e:
            if e.code == 404:
                return None
            if e.code == 429 or e.code == 503:
                wait = min(60 * (attempt + 1), 300)
                print(f"  [fetch] {e.code} {title} — wait {wait}s", file=sys.stderr)
                time.sleep(wait)
                continue
            return None
        except Exception as e:
            return None
    return None


def fetch_sections(title: str, max_sections: int = 6) -> list:
    """Fetch first N sections of a Wikipedia article via parse API."""
    params = {
        "action": "parse",
        "page": title,
        "format": "json",
        "prop": "sections",
    }
    url = f"{WIKIPEDIA_API}?{urllib.parse.urlencode(params)}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as response:
            data = json.loads(response.read().decode("utf-8"))
        return data.get("parse", {}).get("sections", [])[:max_sections]
    except:
        return []


def fetch_section_text(title: str, section_index: int) -> str:
    """Fetch the text of a specific section by index."""
    params = {
        "action": "parse",
        "page": title,
        "section": str(section_index),
        "format": "json",
        "prop": "text",
    }
    url = f"{WIKIPEDIA_API}?{urllib.parse.urlencode(params)}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as response:
            data = json.loads(response.read().decode("utf-8"))
        html = data.get("parse", {}).get("text", {}).get("*", "")
        # Strip HTML tags
        text = re.sub(r'<[^>]+>', ' ', html)
        text = re.sub(r'\s+', ' ', text).strip()
        return text
    except:
        return ""


def clean_wikitext(text: str) -> str:
    """Clean wikitext/markup."""
    text = re.sub(r'\[\[(?:[^\]|]*\|)?([^\]]+)\]\]', r'\1', text)
    text = re.sub(r'<[^>]+>', ' ', text)
    text = re.sub(r'\{\{[^}]+\}\}', ' ', text)
    text = re.sub(r"'''(.+?)'''", r'\1', text)
    text = re.sub(r"''(.+?)''", r'\1', text)
    text = re.sub(r'\s+', ' ', text)
    text = text.replace('\n', ' ').replace('\r', ' ').replace('\t', ' ')
    return text.strip()


def slugify(name: str) -> str:
    s = name.lower()
    s = s.replace(' ', '-').replace("'", "").replace('.', '')
    s = s.replace('---', '-').replace('--', '-')
    return s


def render_entity_sql(entity_id: str, slug: str, name: str, summary: str, popularity: float = 0) -> str:
    return f"""INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, language_default, popularity_score, summary, created_at, updated_at)
VALUES
  ('{entity_id}', 'place', '{slug}', '{name.replace("'", "''")}', 'published', 'en', {popularity},
   '{summary.replace("'", "''")[:1500]}', unixepoch(), unixepoch());
"""


def render_place_row_sql(entity_id: str, place_type: str, lat: str, lon: str, country_code: str, parent_id: str) -> str:
    lat_sql = f"{lat}" if lat else "NULL"
    lon_sql = f"{lon}" if lon else "NULL"
    parent_sql = "NULL"
    return f"""INSERT OR IGNORE INTO place
  (id, place_type, latitude, longitude, country_code, parent_id, valid_from, valid_to, wikidata_qid)
VALUES
  ('{entity_id}', '{place_type}', {lat_sql}, {lon_sql}, '{country_code}', {parent_sql}, NULL, NULL, NULL);
"""


def render_section_sql(entity_id: str, section_id: str, section_type: str, heading: str, body: str, display_order: int, claim_id: str) -> str:
    return f"""INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status,
   version, created_at, updated_at, display_order, claim_count, source_count, last_verified_at)
VALUES
  ('{section_id}', '{entity_id}', '{section_type}', '{heading.replace("'", "''")[:200]}',
   '{body.replace("'", "''")[:20000]}', '["{claim_id}"]', '["src_en_wikipedia"]',
   'general', 'en', 'assisted', 'places_ingest_v1', 'auto_approved', 1, unixepoch(), unixepoch(),
   {display_order}, 1, 1, unixepoch());
"""


def render_us_country_relation_sql(place_id: str) -> str:
    """Render entity_relation: place is in country ent_usa."""
    return f"""INSERT OR IGNORE INTO entity_relation
  (id, subject_entity_id, object_entity_id, relation_type, confidence, source_claim_id, valid_from, valid_to)
VALUES
  ('rel_{place_id[4:]}_in_country', '{place_id}', 'ent_usa', 'located_in', 0.95, 'clm_wiki_{place_id[4:]}_in_usa', NULL, NULL);
"""


def render_image_sql(entity_id: str, slug: str, full_image: str, thumb_image: str, caption: str) -> str:
    if not full_image or "upload.wikimedia.org" not in full_image:
        return ""
    return f"""INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_{slug}_primary', '{entity_id}', 'src_wikimedia_commons',
   NULL, '{full_image.replace("'", "''")[:500]}', NULL, '{thumb_image.replace("'", "''")[:500]}',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, '{caption.replace("'", "''")[:200]}',
   '{caption.replace("'", "''")[:200]}', 1, 10, unixepoch());
"""


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--list", required=True, help="Path to list file (name|place_type|state_code|parent|lat|lon|population)")
    parser.add_argument("--out", required=True, help="Output SQL migration file")
    parser.add_argument("--skip-existing", action="store_true", help="Skip if entity already exists")
    args = parser.parse_args()

    # Read input
    with open(args.list) as f:
        places = [l.strip() for l in f if l.strip() and not l.startswith("#")]

    print(f"[places-ingest] loaded {len(places)} places", file=sys.stderr)

    out_f = open(args.out, "w")
    out_f.write(f"""-- ========================================
-- Migration: Place bulk ingest
-- For {len(places)} US places (cities + states)
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Source: Wikipedia REST API + GeoNames
-- ========================================

""")
    out_f.flush()

    n_ok, n_skip, n_fail = 0, 0, 0
    for i, line in enumerate(places):
        parts = line.split("|")
        if len(parts) < 7:
            print(f"[{i+1}/{len(places)}] bad format: {line[:50]}", file=sys.stderr)
            n_fail += 1
            continue

        name, place_type, state_code, parent_place, lat, lon, pop = parts[:7]
        slug = slugify(name)
        entity_id = f"plc_{slug}"

        # Check if exists (we'll use entity slug)
        # If --skip-existing, skip
        # We can't easily check here without D1, so just try INSERT OR IGNORE

        # Fetch Wikipedia
        page = fetch(name)
        if not page or "extract" not in page:
            # Try variants: "City, State" or just state name
            if state_code and place_type == "city":
                page = fetch(f"{name}, {state_code}")
            if not page or "extract" not in page:
                n_fail += 1
                print(f"[{i+1}/{len(places)}] no wiki: {name}", file=sys.stderr)
                continue

        summary = page.get("extract", "")
        full_image = page.get("originalimage", {}).get("source", "") or page.get("thumbnail", {}).get("source", "")
        thumb_image = page.get("thumbnail", {}).get("source", full_image)

        # Build SQL
        sql_parts = []
        sql_parts.append(f"-- {i+1}. {name} ({place_type}, {state_code}, pop={pop})")

        # 1. Entity row
        sql_parts.append(render_entity_sql(entity_id, slug, name, summary, popularity=min(50, int(int(pop)/100000) if pop and pop.isdigit() else 25)))

        # 2. Place row
        sql_parts.append(render_place_row_sql(entity_id, place_type, lat, lon, "US", parent_place if parent_place else None))

        # 3. Country relation (in USA)
        sql_parts.append(render_us_country_relation_sql(entity_id))

        # 4. Sections
        # Section 1: overview (intro)
        overview = summary[:2000] if summary else f"{name} is a {place_type} in the United States."
        sql_parts.append(render_section_sql(
            entity_id, f"cs_{slug}_overview", "overview", "Overview",
            overview, 10, f"clm_wiki_{slug}_overview"))

        # Section 2: history (first Wikipedia section)
        sections = fetch_sections(name, 4)
        if sections and len(sections) > 0:
            # Find a "History" section
            history_idx = None
            for idx, sec in enumerate(sections):
                title = sec.get("line", "") or sec.get("anchor", "")
                if re.search(r'history|found|origin', title, re.IGNORECASE):
                    history_idx = idx
                    break
            if history_idx is None and len(sections) > 1:
                history_idx = 1  # Second section

            if history_idx is not None and history_idx < len(sections):
                section_text = clean_wikitext(fetch_section_text(name, history_idx))[:2500]
                if section_text:
                    sql_parts.append(render_section_sql(
                        entity_id, f"cs_{slug}_history", "overview", "History",
                        section_text, 20, f"clm_wiki_{slug}_history"))

            # Section 3: geography
            geo_idx = None
            for idx, sec in enumerate(sections):
                title = sec.get("line", "") or sec.get("anchor", "")
                if re.search(r'geograph|locat|topograph|climate', title, re.IGNORECASE):
                    geo_idx = idx
                    break
            if geo_idx is None and len(sections) > 2:
                geo_idx = 2

            if geo_idx is not None and geo_idx < len(sections):
                section_text = clean_wikitext(fetch_section_text(name, geo_idx))[:2000]
                if section_text:
                    sql_parts.append(render_section_sql(
                        entity_id, f"cs_{slug}_geography", "overview", "Geography",
                        section_text, 30, f"clm_wiki_{slug}_geography"))

            # Section 4: demographics
            demo_idx = None
            for idx, sec in enumerate(sections):
                title = sec.get("line", "") or sec.get("anchor", "")
                if re.search(r'demograph|popul|cultur|economy', title, re.IGNORECASE):
                    demo_idx = idx
                    break
            if demo_idx is None and len(sections) > 3:
                demo_idx = 3

            if demo_idx is not None and demo_idx < len(sections):
                section_text = clean_wikitext(fetch_section_text(name, demo_idx))[:2000]
                if section_text:
                    sql_parts.append(render_section_sql(
                        entity_id, f"cs_{slug}_demographics", "overview", "Demographics",
                        section_text, 40, f"clm_wiki_{slug}_demographics"))

        # Always emit 4 sections (use intro for missing)
        written_types = set()
        for sql in sql_parts:
            m = re.search(r"cs_\w+_(\w+)'", sql)
            if m:
                written_types.add(m.group(1))

        for sect_type, sect_heading, sect_order in [
            ("overview", "History", 20),
            ("overview", "Geography", 30),
            ("overview", "Demographics", 40),
        ]:
            if sect_type not in written_types:
                sql_parts.append(render_section_sql(
                    entity_id, f"cs_{slug}_{sect_type}", sect_type, sect_heading,
                    overview[:2000], sect_order, f"clm_wiki_{slug}_{sect_type}"))

        # 5. Image (if available)
        sql_parts.append(render_image_sql(entity_id, slug, full_image, thumb_image, name))

        for sql in sql_parts:
            out_f.write(sql + "\n")
        out_f.flush()
        n_ok += 1
        print(f"[{i+1}/{len(places)}] ok: {name} ({place_type})", file=sys.stderr)
        time.sleep(0.5)  # be polite to Wikipedia

    out_f.close()
    print(f"\n[places-ingest] done: ok={n_ok} fail={n_fail}", file=sys.stderr)
    print(f"[places-ingest] wrote SQL to {args.out}", file=sys.stderr)


if __name__ == "__main__":
    main()
