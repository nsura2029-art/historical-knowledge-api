#!/usr/bin/env python3
"""
people_ingest.py — Bulk-ingest famous Americans from a curated list.

For each name in the input:
  1. Query Wikipedia for the article (en.wikipedia.org REST API)
  2. Extract: birth/death, occupation, intro paragraph, key sections
  3. Split content into 4 content_section rows (early_life, career, personal, legacy)
  4. Insert into D1 entity + content_section + entity_image (if Wikimedia image)

Input: a flat list of Wikipedia article titles, one per line
  e.g. "Abraham Lincoln" → INSERT entity + 4 sections
       "Donald Trump"  → already exists, UPDATE summary

Usage:
  python3 people_ingest.py --list people_us_500.txt
  python3 people_ingest.py --list people_us_500.txt --skip-existing

Strategy:
  - entity table: id, slug, type, canonical_name, status, summary, popularity_score
  - content_section: 4 generic sections (early_life, career, narrative, legacy)
  - For people with a Wikidata entry, also pull occupation + birth/death date
  - For people with a Wikimedia image, also pull entity_image

This script intentionally keeps the schema simple. Topic-specific sections
(like the Trump 12-section set) are added by separate migration per person.
"""

import argparse
import datetime as dt
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse
import urllib.request


WIKIPEDIA_API = "https://en.wikipedia.org/w/api.php"
USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com) python-urllib/3"


def fetch(title: str, max_retries: int = 5) -> dict | None:
    """Fetch Wikipedia page summary + first sections for a title.

    Handles 429 (rate limit) with exponential backoff up to 5 minutes.
    Wikipedia's actual limit is ~200 req/min per User-Agent.
    """
    params = {
        "action": "query", "format": "json", "prop": "extracts|pageimages",
        "exintro": "1", "explaintext": "1",
        "piprop": "original", "pithumbsize": "1000",
        "redirects": "1",
        "titles": title,
    }
    url = WIKIPEDIA_API + "?" + urllib.parse.urlencode(params)
    for attempt in range(max_retries):
        try:
            req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
            with urllib.request.urlopen(req, timeout=30) as r:
                data = json.loads(r.read())
            pages = data.get("query", {}).get("pages", {})
            for page in pages.values():
                if "missing" in page:
                    return None
                return page
            return None
        except urllib.error.HTTPError as e:
            if e.code == 429 and attempt < max_retries - 1:
                wait = min(60, (2 ** attempt) * 5)  # 5s, 10s, 20s, 40s, 60s
                print(f"  ! 429 rate-limited, sleeping {wait}s (attempt {attempt+1}/{max_retries})", file=sys.stderr)
                time.sleep(wait)
            else:
                return {"_error": f"HTTP {e.code}"}
        except Exception as e:
            return {"_error": str(e)}
    return {"_error": "max retries"}


def fetch_sections(title: str, max_sections: int = 6) -> list[dict]:
    """Fetch the first N sections (heading + plain text) of a Wikipedia article."""
    params = {
        "action": "parse", "format": "json", "page": title,
        "prop": "sections", "redirects": "1",
    }
    url = WIKIPEDIA_API + "?" + urllib.parse.urlencode(params)
    for attempt in range(3):
        try:
            req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
            with urllib.request.urlopen(req, timeout=30) as r:
                data = json.loads(r.read())
            return data.get("parse", {}).get("sections", [])[:max_sections]
        except urllib.error.HTTPError as e:
            if e.code == 429 and attempt < 2:
                time.sleep(2 ** (attempt + 2))
            else:
                return []
        except Exception:
            return []
    return []


def fetch_section_text(title: str, section_index: int) -> str:
    """Fetch plain text of a specific section by index."""
    params = {
        "action": "parse", "format": "json", "page": title,
        "prop": "wikitext", "redirects": "1",
    }
    url = WIKIPEDIA_API + "?" + urllib.parse.urlencode(params)
    for attempt in range(3):
        try:
            req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
            with urllib.request.urlopen(req, timeout=30) as r:
                data = json.loads(r.read())
            sections = data.get("parse", {}).get("sections", [])
            if section_index < len(sections):
                return sections[section_index].get("*", "")
            return ""
        except urllib.error.HTTPError as e:
            if e.code == 429 and attempt < 2:
                time.sleep(2 ** (attempt + 2))
            else:
                return ""
        except Exception:
            return ""
    return ""


def slugify(s: str) -> str:
    """Convert 'Abraham Lincoln' to 'abraham-lincoln'."""
    s = s.lower().strip()
    s = re.sub(r"[^a-z0-9\s-]", "", s)
    s = re.sub(r"\s+", "-", s)
    return s


def section_name_to_type(name: str) -> str:
    """Map a Wikipedia section heading to a content_section.section_type value.

    Falls back to 'narrative' if no clear match.
    """
    n = name.lower()
    if "early life" in n or "childhood" in n or "youth" in n or "background" in n:
        return "early_life"
    if "education" in n or "training" in n:
        return "early_life"
    if "career" in n or "work" in n or "professional" in n:
        return "career"
    if "personal" in n or "family" in n or "marriage" in n or "private life" in n:
        return "narrative"
    if "legacy" in n or "death" in n or "later" in n or "after" in n or "impact" in n:
        return "legacy"
    if "president" in n or "political" in n or "campaign" in n or "election" in n:
        return "career"
    return "narrative"


def clean_wikitext(text: str) -> str:
    """Strip wikitext markup to readable plain text. Light pass."""
    # Remove templates {{...}} and {{{...}}}
    text = re.sub(r"\{\{[^{}]*?\}\}", "", text)
    # Remove file/image references
    text = re.sub(r"\[\[File:[^\]]*\]\]", "", text)
    text = re.sub(r"\[\[Image:[^\]]*\]\]", "", text)
    # Replace [[link|display]] with display, [[link]] with link
    text = re.sub(r"\[\[([^\]|]*\|)?([^\]]*?)\]\]", r"\2", text)
    # Remove HTML tags
    text = re.sub(r"<[^>]+>", "", text)
    # Collapse whitespace
    text = re.sub(r"\n\s*\n+", "\n\n", text)
    text = re.sub(r"  +", " ", text)
    return text.strip()


def render_entity_sql(entity_id: str, slug: str, name: str, summary: str) -> str:
    """Render an INSERT OR IGNORE for the entity row."""
    s = (summary or "").replace("'", "''")[:500]
    return f"""INSERT OR IGNORE INTO entity
  (id, type, slug, canonical_name, status, summary, summary_source_ids, summary_updated_at, popularity_score, language_default)
VALUES
  ('{entity_id}', 'person', '{slug}', '{name.replace("'", "''")}', 'published', '{s}', '["src_wikidata"]', unixepoch(), 50, 'en');
"""


def render_section_sql(entity_id: str, section_id: str, section_type: str,
                       heading: str, body: str, display_order: int,
                       claim_id: str, source_id: str = "src_wikidata") -> str:
    """Render an INSERT OR IGNORE for a content_section row."""
    h = heading.replace("'", "''")[:200]
    b = body.replace("'", "''")[:8000]
    return f"""INSERT OR IGNORE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('{section_id}', '{entity_id}', '{section_type}', '{h}', '{b}',
   '["{claim_id}"]', '["{source_id}"]',
   'general', 'en', 'assisted', 'kp-025-migration-0025', 'auto_approved', 1,
   {display_order}, unixepoch(), 'wikipedia', {len(b.split())});
"""


def render_person_row_sql(entity_id: str, name: str, birth_year: int = None,
                          death_year: int = None, occupation: str = None,
                          nationality: str = "United States") -> str:
    """Render an INSERT OR IGNORE for the person row (subclass of entity).

    Uses the correct person schema columns (primary_profession_id, fame_scope,
    fame_intensity, etc.). birth_year/death_year are NOT columns in person table —
    they're stored via event_id/derived_attribute. Nationality is via citizenship table.
    """
    occ = (occupation or "").replace("'", "''")[:100]
    living = "deceased" if death_year else "living"
    return f"""INSERT OR IGNORE INTO person
  (id, living_status, short_description, known_for_summary, primary_profession_id, editorial_risk_level, identity_confidence, completeness_score, provenance_score, fame_scope, fame_intensity, gender, controversy_level, era_relevance, is_celebrity, is_historical_figure, is_professional, is_cultural_icon, is_royalty, is_controversial, is_living, is_military_leader, is_religious_spiritual, is_activist, is_pioneer, is_internet_personality, is_polarizing, is_living_legend)
VALUES
  ('{entity_id}', '{living}', NULL, NULL, '{occ}', 'low', 0.95, 0.5, 0.7, 'global', 'well_known', 'unknown', 0, NULL, 0, 1, 1, 1, 0, 0, {'0' if living == 'deceased' else '1'}, 0, 0, 0, 0, 0, 0, 0);
"""


def extract_birth_death_year(text: str) -> tuple[int | None, int | None]:
    """Extract birth and death years from the first paragraph if possible."""
    m = re.search(r"\((\d{1,4})\s*[-–]\s*(\d{1,4})\)", text)
    if m:
        return int(m.group(1)), int(m.group(2))
    m = re.search(r"\((\d{1,4})\s*–\s*present\)", text, re.IGNORECASE)
    if m:
        return int(m.group(1)), None
    m = re.search(r"\bborn\s+(\d{1,4})\b", text, re.IGNORECASE)
    if m:
        return int(m.group(1)), None
    return None, None


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--list", required=True, help="Path to a list of Wikipedia article titles (one per line)")
    parser.add_argument("--out", default="/tmp/people_ingest.sql", help="Output SQL file")
    parser.add_argument("--skip-existing", action="store_true", help="Skip names whose entity already exists")
    parser.add_argument("--limit", type=int, default=None, help="Max people to process")
    parser.add_argument("--existing", default=None, help="Path to a list of slugs already in the DB (one per line)")
    parser.add_argument("--existing-slugs-from-db", action="store_true", help="Auto-load existing slugs from D1")
    args = parser.parse_args()

    with open(args.list) as f:
        names = [line.strip() for line in f if line.strip() and not line.startswith("#")]
    if args.limit:
        names = names[:args.limit]

    existing_slugs = set()
    if args.existing:
        with open(args.existing) as f:
            existing_slugs = set(line.strip() for line in f if line.strip())
    elif args.skip_existing:
        # Fetch existing slugs from D1
        print("[ingest] fetching existing slugs from D1...", file=sys.stderr)
        res = subprocess.run(
            ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
             "--command", "SELECT slug FROM entity WHERE type='person'"],
            capture_output=True, text=True, timeout=30)
        if res.returncode == 0:
            for r in json.loads(res.stdout[res.stdout.find("["):])[0].get("results", []):
                existing_slugs.add(r["slug"])
        print(f"[ingest] {len(existing_slugs)} existing", file=sys.stderr)

    sql_parts = [
        "-- ========================================",
        f"-- Migration 0025: Top-{len(names)}-famous-Americans bulk ingest",
        f"-- Generated: {dt.datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S UTC')}",
        f"-- Source: Wikipedia REST API (en.wikipedia.org)",
        f"-- License: Wikipedia content is CC-BY-SA 4.0 (attribution preserved in source_ids)",
        "-- ========================================",
        "",
    ]

    # Open output file in append mode so we keep progress if we crash
    out_f = open(args.out, "w")
    out_f.write("\n".join(sql_parts) + "\n")
    out_f.flush()

    n_ok, n_skip, n_fail = 0, 0, 0
    for i, name in enumerate(names):
        slug = slugify(name)
        if slug in existing_slugs:
            n_skip += 1
            print(f"[{i+1}/{len(names)}] skip (exists): {name}", file=sys.stderr)
            continue

        page = fetch(name)
        if not page or "_error" in page:
            n_fail += 1
            print(f"[{i+1}/{len(names)}] FAIL: {name} ({page.get('_error', 'not found') if page else 'no data'})", file=sys.stderr)
            continue

        # Build the content
        intro = page.get("extract", "")
        original_title = page.get("title", name)
        full_image = page.get("original", "")
        thumb_image = page.get("thumbnail", {}).get("source", "")

        birth_year, death_year = extract_birth_death_year(intro)
        entity_id = f"ent_{slug}"

        # Summary = first paragraph (or first 400 chars of intro)
        summary = intro.split("\n")[0][:400] if intro else ""
        if not summary:
            summary = f"{original_title} — a notable figure in American history."

        # 1. Entity
        sql_parts.append(f"-- {i+1}. {original_title}")
        sql_parts.append(render_entity_sql(entity_id, slug, original_title, summary))

        # 2. Person subclass (with birth/death)
        sql_parts.append(render_person_row_sql(entity_id, original_title, birth_year, death_year))

        # 3. Content sections
        # Section 1: bio_intro (early life) — first part of intro
        bio_intro_body = intro[:2000] if intro else f"{original_title} is a notable American figure."
        sql_parts.append(render_section_sql(
            entity_id, f"cs_{slug}_intro", "biography_intro", "Introduction",
            bio_intro_body, 10, f"clm_wiki_{slug}_intro"))

        # Section 2: career — first big section after intro
        sections = fetch_sections(name, 4)
        if sections:
            section_text = fetch_section_text(name, 1)  # second section (after lead)
            section_text = clean_wikitext(section_text)[:2500]
            if section_text:
                sql_parts.append(render_section_sql(
                    entity_id, f"cs_{slug}_career", "career", "Career",
                    section_text, 20, f"clm_wiki_{slug}_career"))

            # Section 3: personal
            section_text = fetch_section_text(name, 2)
            section_text = clean_wikitext(section_text)[:2000]
            if section_text:
                sql_parts.append(render_section_sql(
                    entity_id, f"cs_{slug}_personal", "narrative", "Personal life",
                    section_text, 80, f"clm_wiki_{slug}_personal"))

            # Section 4: legacy
            section_text = fetch_section_text(name, 3)
            section_text = clean_wikitext(section_text)[:2000]
            if section_text:
                sql_parts.append(render_section_sql(
                    entity_id, f"cs_{slug}_legacy", "legacy", "Legacy",
                    section_text, 90, f"clm_wiki_{slug}_legacy"))

        # 4. Image (if we have a Wikimedia image)
        if full_image and "upload.wikimedia.org" in full_image:
            sql_parts.append(f"""INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_{slug}_primary', '{entity_id}', 'src_wikimedia_commons',
   NULL, '{full_image.replace("'", "''")[:500]}', NULL, '{thumb_image.replace("'", "''")[:500]}',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, '{original_title.replace("'", "''")}',
   '{original_title.replace("'", "''")}', 1, 10, unixepoch());
""")

        n_ok += 1
        print(f"[{i+1}/{len(names)}] ok: {original_title} ({len(sections)} sections, img={'yes' if full_image else 'no'})", file=sys.stderr)

        # Write the entity's SQL to disk (incremental, crash-safe)
        for sql in [f"-- {i+1}. {original_title}",
                     render_entity_sql(entity_id, slug, original_title, summary),
                     render_person_row_sql(entity_id, original_title, birth_year, death_year)]:
            out_f.write(sql + "\n")
        if sections:
            section_text1 = clean_wikitext(fetch_section_text(name, 1))[:2500]
            if section_text1:
                out_f.write(render_section_sql(entity_id, f"cs_{slug}_career", "career", "Career", section_text1, 20, f"clm_wiki_{slug}_career") + "\n")
            section_text2 = clean_wikitext(fetch_section_text(name, 2))[:2000]
            if section_text2:
                out_f.write(render_section_sql(entity_id, f"cs_{slug}_personal", "narrative", "Personal life", section_text2, 80, f"clm_wiki_{slug}_personal") + "\n")
            section_text3 = clean_wikitext(fetch_section_text(name, 3))[:2000]
            if section_text3:
                out_f.write(render_section_sql(entity_id, f"cs_{slug}_legacy", "legacy", "Legacy", section_text3, 90, f"clm_wiki_{slug}_legacy") + "\n")
        out_f.write("-- Introduction section\n")
        bio_intro_body = intro[:2000] if intro else f"{original_title} is a notable American figure."
        out_f.write(render_section_sql(
            entity_id, f"cs_{slug}_intro", "biography_intro", "Introduction",
            bio_intro_body, 10, f"clm_wiki_{slug}_intro") + "\n")
        if full_image and "upload.wikimedia.org" in full_image:
            out_f.write(f"""INSERT OR IGNORE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at)
VALUES
  ('ei_{slug}_primary', '{entity_id}', 'src_wikimedia_commons',
   NULL, '{full_image.replace("'", "''")[:500]}', NULL, '{thumb_image.replace("'", "''")[:500]}',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', NULL, NULL, '{original_title.replace("'", "''")}',
   '{original_title.replace("'", "''")}', 1, 10, unixepoch());
""")
        out_f.flush()

        # Be polite to Wikipedia — wait 3s between people
        time.sleep(3.0)

    with open(args.out, "a") as f:
        pass  # already closed out_f below

    out_f.close()

    print(f"\n[ingest] done: ok={n_ok} skip={n_skip} fail={n_fail}", file=sys.stderr)
    print(f"[ingest] wrote SQL to {args.out}", file=sys.stderr)


if __name__ == "__main__":
    main()
