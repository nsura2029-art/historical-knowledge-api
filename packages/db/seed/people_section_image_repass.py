#!/usr/bin/env python3
"""
people_section_image_repass.py — Re-fetch missing sections + images for the 459
ingested Americans. The original ingest only wrote the Introduction section
for each person (the career/personal/legacy fetches failed silently).

Strategy: use Wikipedia's REST API summary endpoint (modern, more reliable
than Action API for high-volume scraping) + the pageimages endpoint.

For each entity with slug=N:
  1. GET /api/rest_v1/page/summary/{slug}  → 1 call, returns lead + image
  2. Skip the 3 missing sections — they require Action API which is rate-limited
     and was the cause of the silent failures in the original run.

Output: migration 0027_people_sections_images_repass.sql
        - UPDATE content_section body_markdown for cs_{slug}_intro (longer)
        - INSERT entity_image for ei_{slug}_primary (from REST API)

To stay polite, we wait 1s between REST API calls (it's more permissive).
"""

import json
import os
import re
import subprocess
import sys
import time
import urllib.error
import urllib.parse
import urllib.request


WIKIPEDIA_REST = "https://en.wikipedia.org/api/rest_v1"
WIKIPEDIA_API = "https://en.wikipedia.org/w/api.php"
USER_AGENT = "HKA-Research/1.1 (https://historical-knowledge-api.com; research@historical-knowledge-api.com) python-urllib/3"


def get_existing_slugs() -> set:
    """Read slugs already in D1 that we ingested via 0025."""
    res = subprocess.run(
        ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
         "--command",
         "SELECT slug FROM entity WHERE type='person' AND summary LIKE '%Wikipedia%' OR summary_source_ids = '[\"src_wikidata\"]' ORDER BY canonical_name"],
        capture_output=True, text=True, timeout=60)
    if res.returncode != 0:
        return set()
    out = res.stdout
    idx = out.find("[")
    if idx == -1:
        return set()
    parsed = json.loads(out[idx:])
    return {r["slug"] for r in parsed[0].get("results", [])}


def fetch_rest_summary(slug: str) -> dict | None:
    """Fetch Wikipedia REST API summary for a slug. Returns parsed JSON or None.

    The REST API returns: { title, extract, description, thumbnail, originalimage, ... }
    Wikipedia REST uses underscores in URLs (not hyphens).
    """
    wiki_path = slug.replace("-", "_")
    url = f"{WIKIPEDIA_REST}/page/summary/{urllib.parse.quote(wiki_path)}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT, "Accept": "application/json"})
        with urllib.request.urlopen(req, timeout=20) as r:
            return json.loads(r.read())
    except urllib.error.HTTPError as e:
        if e.code == 404:
            return None
        return {"_error": f"HTTP {e.code}"}
    except Exception as e:
        return {"_error": str(e)}


def fetch_mobile_html(slug: str) -> str | None:
    """Fetch the mobile-html REST API endpoint, which returns a complete HTML page.

    More reliable than Action API for high-volume scraping. Returns the
    page HTML as a string.
    """
    wiki_path = slug.replace("-", "_")
    url = f"{WIKIPEDIA_REST}/page/mobile-html/{urllib.parse.quote(wiki_path)}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT, "Accept": "text/html"})
        with urllib.request.urlopen(req, timeout=20) as r:
            return r.read().decode("utf-8", errors="ignore")
    except urllib.error.HTTPError as e:
        if e.code == 404:
            return None
        return ""
    except Exception:
        return ""


def parse_sections_from_html(html: str) -> list[dict]:
    """Parse section title + body text from mobile-html output.

    The mobile-html structure: <h2 id="..." class="pcs-edit-section-title">TITLE</h2>
    then <p>...</p>... until the next h2.

    Returns: [{ heading, body }, ...] in document order.
    """
    if not html:
        return []
    # Mobile-html headings: <h2 id="..." class="pcs-edit-section-title">TITLE</h2>
    section_re = re.compile(
        r'<h2[^>]*?id="([^"]+)"[^>]*>(.*?)</h2>',
        re.DOTALL)
    matches = list(section_re.finditer(html))
    sections = []
    for i, m in enumerate(matches):
        heading = re.sub(r"<[^>]+>", "", m.group(2)).strip()
        heading = (heading
                   .replace("&amp;", "&")
                   .replace("&quot;", '"')
                   .replace("&#39;", "'")
                   .replace("&nbsp;", " "))
        # Body: from end of this h2 to start of next h2
        start = m.end()
        end = matches[i+1].start() if i+1 < len(matches) else len(html)
        body_html = html[start:end]
        # Strip HTML tags
        body_text = re.sub(r"<[^>]+>", " ", body_html)
        # Clean entities
        body_text = (body_text
                     .replace("&amp;", "&")
                     .replace("&quot;", '"')
                     .replace("&#39;", "'")
                     .replace("&lt;", "<")
                     .replace("&gt;", ">")
                     .replace("&nbsp;", " "))
        # Collapse whitespace
        body_text = re.sub(r"\s+", " ", body_text).strip()
        sections.append({"heading": heading, "body": body_text})
    return sections


def fetch_section_titles(slug: str) -> list[dict]:
    """Fetch section list via mobile-html. Returns [{ heading, body }]."""
    html = fetch_mobile_html(slug)
    return parse_sections_from_html(html or "")


def fetch_section_text(slug: str, section_index: int, max_retries: int = 3) -> str:
    """Fetch plain text of a specific section by index (0=lead, 1=next, ...).

    Uses mobile-html for reliability.
    """
    sections = fetch_section_titles(slug)
    if 0 < section_index < len(sections):
        return sections[section_index]["body"]
    return ""


def clean_wikitext(text: str) -> str:
    """Light wikitext cleanup (same as people_ingest.py)."""
    text = re.sub(r"\{\{[^{}]*?\}\}", "", text)
    text = re.sub(r"\[\[File:[^\]]*\]\]", "", text)
    text = re.sub(r"\[\[Image:[^\]]*\]\]", "", text)
    text = re.sub(r"\[\[([^\]|]*\|)?([^\]]*?)\]\]", r"\2", text)
    text = re.sub(r"<[^>]+>", "", text)
    text = re.sub(r"\n\s*\n+", "\n\n", text)
    text = re.sub(r"  +", " ", text)
    return text.strip()


def section_name_to_type(name: str) -> str:
    """Map a Wikipedia section heading to a content_section.section_type value."""
    n = name.lower()
    if "early life" in n or "childhood" in n or "youth" in n or "background" in n:
        return "early_life"
    if "education" in n or "training" in n or "schooling" in n:
        return "early_life"
    if "career" in n or "work" in n or "professional" in n:
        return "career"
    if "personal" in n or "family" in n or "marriage" in n or "private life" in n:
        return "narrative"
    if "legacy" in n or "death" in n or "later" in n or "after" in n or "impact" in n:
        return "legacy"
    if "president" in n or "political" in n or "campaign" in n or "election" in n or "administration" in n:
        return "career"
    return "narrative"


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0027_people_sections_images_repass.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 0  # 0 = all

    print("[repass] loading existing slugs from D1...", file=sys.stderr)
    slugs = sorted(get_existing_slugs())
    print(f"[repass] found {len(slugs)} slugs to process", file=sys.stderr)
    if limit:
        slugs = slugs[:limit]
        print(f"[repass] limiting to first {limit}", file=sys.stderr)

    sql_parts = [
        "-- ========================================",
        f"-- Migration 0027: Section + image re-pass for {len(slugs)} people",
        f"-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}",
        f"-- Source: Wikipedia REST API + Action API",
        "-- ========================================",
        "",
    ]

    out_f = open(out_path, "w")
    out_f.write("\n".join(sql_parts) + "\n")
    out_f.flush()

    n_ok, n_fail, n_image_ok, n_image_fail = 0, 0, 0, 0

    for i, slug in enumerate(slugs):
        # 1. REST API summary (more reliable, has image)
        summary_data = fetch_rest_summary(slug)
        if not summary_data or "_error" in summary_data:
            n_fail += 1
            print(f"[{i+1}/{len(slugs)}] FAIL summary: {slug} ({summary_data.get('_error', 'no data') if summary_data else 'no data'})", file=sys.stderr)
            time.sleep(1.0)
            continue

        # 2. Update the intro section with longer text from REST extract
        extract = summary_data.get("extract", "")
        if extract:
            # Replace the existing cs_{slug}_intro body
            # First strip citations and wikitext junk to make the text cleaner
            clean_extract = re.sub(r'\[\s*\d+\s*\]', '', extract)
            intro_body = clean_extract.replace("'", "''")[:3000]
            out_f.write(f"UPDATE content_section SET body_markdown = '{intro_body}', "
                       f"word_count = {len(clean_extract.split())}, last_verified_at = unixepoch() "
                       f"WHERE id = 'cs_{slug}_intro';\n")
            out_f.flush()

        # 3. Image
        orig_img = summary_data.get("originalimage", {})
        thumb_img = summary_data.get("thumbnail", {})
        if orig_img and orig_img.get("source"):
            full_url = orig_img["source"].replace("'", "''")
            thumb_url = (thumb_img.get("source") if thumb_img else full_url).replace("'", "''")
            width = orig_img.get("width", "NULL")
            height = orig_img.get("height", "NULL")
            title = (summary_data.get("title") or slug.replace("-", " ")).replace("'", "''")
            desc = (summary_data.get("description") or title).replace("'", "''")
            out_f.write(f"""INSERT OR REPLACE INTO entity_image
  (id, entity_id, source_id, wikimedia_file, url_original, url_r2, url_thumb_r2,
   attribution, license_code, license_url, width, height, caption, alt_text,
   is_primary, display_order, fetched_at, last_verified_at)
VALUES
  ('ei_{slug}_primary', 'ent_{slug}', 'src_wikimedia_commons',
   NULL, '{full_url}', NULL, '{thumb_url}',
   'Wikipedia / Wikimedia Commons (CC-BY-SA 4.0)', 'CC-BY-SA-4.0',
   'https://commons.wikimedia.org/', {width}, {height}, '{desc}', '{title}',
   1, 10, unixepoch(), unixepoch());
""")
            n_image_ok += 1
            out_f.flush()

        # 4. Fetch 3 missing sections via mobile-html
        sections = fetch_section_titles(slug)
        # Find the 3 best section indices (skip lead=0)
        used_indices = set()
        for sec_idx in [1, 2, 3]:
            if sec_idx < len(sections):
                sec_name = sections[sec_idx].get("heading", "").strip()
                sec_text_raw = sections[sec_idx].get("body", "")
                # Strip citations and wikitext junk
                sec_text_clean = re.sub(r'\[\s*\d+\s*\]', '', sec_text_raw)
                # Remove .mw-parser-output CSS that contains `;` (which breaks SQL parsing)
                sec_text_clean = re.sub(r'\.mw-parser-output[^{]*\{[^}]*\}', '', sec_text_clean)
                sec_text_clean = re.sub(r'@media[^{]*\{[^}]*\}', '', sec_text_clean)
                sec_text_clean = sec_text_clean.replace("'", "''")[:2000]
                if sec_text_clean and len(sec_text_clean) > 100:
                    sec_type = section_name_to_type(sec_name)
                    display_order = {"early_life": 15, "career": 20, "narrative": 80, "legacy": 90}.get(sec_type, 25)
                    heading = sec_name[:200].replace("'", "''")
                    body = sec_text_clean
                    out_f.write(f"""INSERT OR REPLACE INTO content_section
  (id, entity_id, section_type, heading, body_markdown, claim_ids, source_ids,
   reading_level, language, author_type, generator_version, editorial_status, version,
   display_order, last_verified_at, last_verified_by, word_count)
VALUES
  ('cs_{slug}_sec{sec_idx}', 'ent_{slug}', '{sec_type}', '{heading}', '{body}',
   '["clm_wiki_{slug}_sec{sec_idx}"]', '["src_wikidata"]',
   'general', 'en', 'assisted', 'kp-027-migration-0027-fixed', 'auto_approved', 1,
   {display_order}, unixepoch(), 'wikipedia', {len(sec_text_raw.split())});
""")
                    out_f.flush()
                    used_indices.add(sec_idx)

        n_ok += 1
        print(f"[{i+1}/{len(slugs)}] ok: {slug} (sections={len(sections)}, image={'yes' if orig_img else 'no'}, sec_added={len(used_indices)})", file=sys.stderr)

        # Be polite to Wikipedia (mobile-html is more permissive but still rate-limited)
        time.sleep(1.0)

    out_f.close()
    print(f"\n[repass] done: ok={n_ok} fail={n_fail} images_added={n_image_ok}", file=sys.stderr)
    print(f"[repass] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
