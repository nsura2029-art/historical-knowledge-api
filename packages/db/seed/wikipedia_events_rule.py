#!/usr/bin/env python3
"""
wikipedia_events_rule.py — Rule-based event extraction from Wikipedia.

For each subject (person or place), fetch the Wikipedia article and extract
date-anchored events using regex. No LLM, $0 cost.

Strategy:
1. Fetch article sections (not full wikitext, just HTML)
2. Strip HTML tags to get clean text
3. Apply date regex to find date candidates
4. Extract the sentence containing each date
5. Output as event with the sentence as the body

This gives us narrative events that complement the structured Wikidata events.
"""
import json
import os
import re
import subprocess
import sys
import time
import urllib.parse

USER_AGENT = "HistoricalKnowledgePlatform/0.1 (https://github.com/nsura2029-art/historical-knowledge-api; contact: research@hka.local)"

MONTHS = {
    'january': 1, 'february': 2, 'march': 3, 'april': 4, 'may': 5, 'june': 6,
    'july': 7, 'august': 8, 'september': 9, 'october': 10, 'november': 11, 'december': 12,
    'jan': 1, 'feb': 2, 'mar': 3, 'apr': 4, 'jun': 6, 'jul': 7, 'aug': 8, 'sep': 9, 'sept': 9, 'oct': 10, 'nov': 11, 'dec': 12,
}

# Patterns (compiled for speed)
# Full date: "March 4, 1861" / "4 March 1861" / "March 1861"
RE_FULL_DATE_MD = re.compile(
    r'\b(January|February|March|April|May|June|July|August|September|October|November|December)'
    r'\s+(\d{1,2}),?\s+(\d{4})\b', re.IGNORECASE)
RE_FULL_DATE_DM = re.compile(
    r'\b(\d{1,2})\s+(January|February|March|April|May|June|July|August|September|October|November|December)\s+(\d{4})\b',
    re.IGNORECASE)
RE_MONTH_YEAR = re.compile(
    r'\b(January|February|March|April|May|June|July|August|September|October|November|December)\s+(\d{4})\b',
    re.IGNORECASE)
# Year only (1700-2099)
RE_YEAR = re.compile(r'\b(1[6-9]\d{2}|20\d{2})\b')
# BC dates (limited support)
RE_BC = re.compile(r'\b(\d{1,4})\s*(B\.?C\.?|BCE)\b', re.IGNORECASE)
# Decades "1860s"
RE_DECADE = re.compile(r'\b(1[6-9]\d{2}|20\d{2})s\b')
# Circa "c. 1860" / "ca. 1860" / "circa 1860"
RE_CIRCA = re.compile(r'\b(c\.?|ca\.?|circa|approximately|about)\s*(\d{4})\b', re.IGNORECASE)

# Dates to SKIP (false positives)
SKIP_PATTERNS = [
    re.compile(r'\bISBN\b', re.IGNORECASE),
    re.compile(r'\bp\.\s*\d{4}\b', re.IGNORECASE),  # page numbers
    re.compile(r'\bvol\.\s*\d+\b', re.IGNORECASE),
    re.compile(r'\d{4}-\d{2}-\d{2}T\d{2}:\d{2}', re.IGNORECASE),  # ISO timestamps
    re.compile(r'^\d{4}$', re.IGNORECASE),  # bare 4-digit (handled separately)
]


def get_article_text(title):
    """Fetch Wikipedia article as HTML via REST API, then strip tags."""
    url = f"https://en.wikipedia.org/api/rest_v1/page/html/{title}"
    try:
        res = subprocess.run(
            ["curl", "-s", "--max-time", "20", "--connect-timeout", "5",
             "-A", USER_AGENT,
             "-w", "\n__HTTP_STATUS__%{http_code}",
             url],
            capture_output=True, text=True, timeout=25)
        if res.returncode != 0:
            return None
        out = res.stdout
        status = 0
        if "__HTTP_STATUS__" in out:
            status_str = out.rsplit("__HTTP_STATUS__", 1)[-1].strip()
            try:
                status = int(status_str)
            except ValueError:
                status = 0
            out = out.rsplit("__HTTP_STATUS__", 1)[0]
        if status == 429 or status == 503:
            time.sleep(5)
            return None
        if status >= 400:
            return None
        # Strip HTML tags to get text
        # Remove script/style blocks
        out = re.sub(r'<script[^>]*>.*?</script>', ' ', out, flags=re.DOTALL | re.IGNORECASE)
        out = re.sub(r'<style[^>]*>.*?</style>', ' ', out, flags=re.DOTALL | re.IGNORECASE)
        # Replace block tags with newlines
        out = re.sub(r'</(p|div|h[1-6]|li|tr|br|dt|dd)[^>]*>', '\n', out, flags=re.IGNORECASE)
        out = re.sub(r'<br[^>]*/?>', '\n', out, flags=re.IGNORECASE)
        # Remove all other tags
        out = re.sub(r'<[^>]+>', '', out)
        # Decode HTML entities
        out = (out.replace('&amp;', '&').replace('&lt;', '<').replace('&gt;', '>')
                  .replace('&quot;', '"').replace('&#39;', "'").replace('&nbsp;', ' '))
        # Collapse whitespace
        out = re.sub(r'\n\s*\n+', '\n\n', out)
        out = re.sub(r'[ \t]+', ' ', out)
        return out.strip()
    except Exception:
        return None


def get_wikipedia_title(slug):
    """Get Wikipedia article title from a slug (best guess). Wikipedia is case-sensitive."""
    base = slug.replace("-", "_").replace(" ", "_")
    # Try Title_Case first (most Wikipedia titles are Title Case)
    parts = base.split("_")
    title_cased = "_".join(p[0].upper() + p[1:] if p else p for p in parts)
    return title_cased


def split_sentences(text):
    """Split text into sentences. Simple heuristic."""
    # Split on . ! ? followed by space + uppercase, but keep abbreviations
    sentences = re.split(r'(?<=[.!?])\s+(?=[A-Z])', text)
    return [s.strip() for s in sentences if s.strip()]


def extract_date_events(text, name, slug, max_per_slug=80):
    """Extract date-anchored events from article text.

    Returns list of (year, date_iso, precision, sentence, source_url) tuples.
    """
    if not text:
        return []

    # Split into sentences and search for dates within each
    sentences = split_sentences(text)
    events = []
    seen_sentences = set()

    for sentence in sentences:
        # Skip very long sentences (likely not event-bearing)
        if len(sentence) > 500:
            continue
        # Skip sentences that look like reference lists
        if sentence.startswith('^') or 'ISBN' in sentence[:50]:
            continue
        # Skip purely numeric sentences
        if not re.search(r'[a-zA-Z]{4,}', sentence):
            continue

        # Find full date first (most precise)
        m = RE_FULL_DATE_MD.search(sentence)
        if m:
            month_name = m.group(1).lower()
            day = int(m.group(2))
            year = int(m.group(3))
            month = MONTHS.get(month_name[:3], None)
            if month and 1500 <= year <= 2030:
                date_iso = f"{year:04d}-{month:02d}-{day:02d}"
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, date_iso, 'DAY', sentence, slug))
                    continue
        m = RE_FULL_DATE_DM.search(sentence)
        if m:
            day = int(m.group(1))
            month_name = m.group(2).lower()
            year = int(m.group(3))
            month = MONTHS.get(month_name[:3], None)
            if month and 1500 <= year <= 2030:
                date_iso = f"{year:04d}-{month:02d}-{day:02d}"
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, date_iso, 'DAY', sentence, slug))
                    continue
        m = RE_MONTH_YEAR.search(sentence)
        if m:
            month_name = m.group(1).lower()
            year = int(m.group(2))
            month = MONTHS.get(month_name[:3], None)
            if month and 1500 <= year <= 2030:
                date_iso = f"{year:04d}-{month:02d}"
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, date_iso, 'MONTH', sentence, slug))
                    continue
        # Year only
        m = RE_YEAR.search(sentence)
        if m:
            year = int(m.group(1))
            if 1500 <= year <= 2030:
                # Avoid duplicates from "1861" matching inside "1861-1865"
                if re.search(rf'\b{year}-\d{{2,4}}\b', sentence) or re.search(rf'\b\d{{2,4}}-{year}\b', sentence):
                    continue
                key = (year, sentence[:100])
                if key not in seen_sentences:
                    seen_sentences.add(key)
                    events.append((year, None, 'YEAR', sentence, slug))

        if len(events) >= max_per_slug:
            break

    return events


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0041_wikipedia_events_rule.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 0

    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()
    env = os.environ.copy()
    if "node_modules/.bin/wrangler" not in env.get("PATH", ""):
        env["PATH"] = f"{api_dir}/node_modules/.bin:{env.get('PATH', '')}"

    # Load all entities
    print(f"[wiki-rule] loading entities...", file=sys.stderr)
    all_rows = []
    chunk_size = 100
    for et in ["person", "place"]:
        offset = 0
        while True:
            cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
                   "--command",
                   f"SELECT e.id, e.slug, e.canonical_name, e.type FROM entity e WHERE e.type='{et}' ORDER BY e.popularity_score DESC NULLS LAST LIMIT {chunk_size} OFFSET {offset}",
                   "--json"]
            r = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=api_dir, env=env)
            if r.returncode != 0:
                break
            try:
                idx = r.stdout.find("[")
                if idx == -1:
                    break
                parsed = json.loads(r.stdout[idx:])
                rows = parsed[0].get("results", [])
                if not rows:
                    break
                all_rows.extend(rows)
                if len(rows) < chunk_size:
                    break
                offset += chunk_size
            except Exception:
                break
    print(f"[wiki-rule] loaded {len(all_rows)} entities", file=sys.stderr)
    if limit:
        all_rows = all_rows[:limit]

    out_f = open(out_path, "w")
    out_f.write(f"""-- ========================================
-- Migration 0041: Wikipedia rule-based events for {len(all_rows)} subjects
-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}
-- Strategy: Fetch article plain text, extract date-anchored sentences via regex
-- Date patterns: full (Month DD, YYYY), month-year, year-only, circa
-- ========================================

""")
    out_f.flush()

    total_events = 0
    n_with_events = 0
    n_precision_counts = {"DAY": 0, "MONTH": 0, "YEAR": 0}

    for i, row in enumerate(all_rows):
        slug = row["slug"]
        name = row["canonical_name"]
        eid = row["id"]
        etype = row["type"]

        title = get_wikipedia_title(slug)
        text = get_article_text(title)
        if not text:
            # Try lowercase
            text = get_article_text(slug.replace("-", "_").replace(" ", "_"))
        if not text:
            continue

        events = extract_date_events(text, name, slug, max_per_slug=40)

        for j, (year, date, precision, sentence, _) in enumerate(events):
            ev_id = f"ev_wiki_{slug}_{year}_{j}"
            # Sanitize sentence for SQL — strip newlines that would break the string
            sentence_clean = sentence[:480].replace("'", "''").replace("\n", " ").replace("\r", " ").replace("\t", " ")
            title_clean = sentence[:200].replace("'", "''").replace("\n", " ").replace("\r", " ").replace("\t", " ")
            date_sql = f"'{date}'" if date else "NULL"
            # Guess event_type from sentence keywords (must be in CHECK constraint:
            # personal_life, career, award, publication, public_appearance, legal, political,
            # athletic, scientific, creative, travel, education, death, birth, founding, controversy)
            et = "personal_life"
            cat = "narrative"
            text_lower = sentence.lower()
            if any(w in text_lower for w in ['born', 'birth']):
                et = "birth"
            elif any(w in text_lower for w in ['died', 'death', 'killed', 'assassinated', 'murdered']):
                et = "death"
            elif any(w in text_lower for w in ['married', 'wedding', 'spouse']):
                et = "personal_life"  # was narrative_marriage
            elif any(w in text_lower for w in ['founded', 'established', 'incorporated']):
                et = "founding"
            elif any(w in text_lower for w in ['won', 'awarded', 'prize', 'medal', 'championship', 'election']):
                et = "award"
            elif any(w in text_lower for w in ['graduated', 'enrolled', 'attended']):
                et = "education"

            source_url = f"https://en.wikipedia.org/wiki/{title.replace(' ', '_')}"
            # entity_event table has source_section (not source_url) — store URL there
            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body, source_id, source_section, confidence, display_order, lang, date_precision, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{eid}', {date_sql}, {year}, '{et}', '{cat}',
   '{title_clean}', '{sentence_clean}', 'src_en_wikipedia',
   '{source_url}', 0.7, {j}, 'en', '{precision}', unixepoch(), unixepoch());
""")
            total_events += 1
            n_precision_counts[precision] = n_precision_counts.get(precision, 0) + 1

        if events:
            n_with_events += 1

        if (i + 1) % 25 == 0 or (i + 1) == len(all_rows):
            avg = total_events / max(1, n_with_events)
            print(f"[wiki-rule] {i+1}/{len(all_rows)}: {name} → {len(events)} events (total: {total_events}, avg: {avg:.1f})", file=sys.stderr)

    out_f.close()
    print(f"\n[wiki-rule] done: total_events={total_events} subjects_with_events={n_with_events}", file=sys.stderr)
    print(f"[wiki-rule] precision: {n_precision_counts}", file=sys.stderr)
    print(f"[wiki-rule] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
