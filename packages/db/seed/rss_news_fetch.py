#!/usr/bin/env python3
"""
rss_news_fetch.py — Fetch RSS feeds and insert into news_article + news_event.

Reads from news_source config table, fetches each feed, parses entries,
dedupes by content hash, links to entities when possible, and inserts.

Usage:
  python3 rss_news_fetch.py --hours 24 --out /tmp/rss_news.json
  python3 rss_news_fetch.py --hours 24 --apply    # apply directly via wrangler SQL
  python3 rss_news_fetch.py --hours 24 --dry-run  # show what would be inserted
"""
import argparse
import hashlib
import json
import os
import re
import subprocess
import sys
import time
import urllib.request
import xml.etree.ElementTree as ET
from datetime import datetime, timezone, timedelta

WRANGLER_BIN = "/workspace/historical-knowledge-api/apps/api/node_modules/.bin/wrangler"
DB_NAME = "historical-knowledge-api-d1"
ENV = "dev"

# Feeds that failed survey — skip
DISABLED_FEEDS = {
    "src_reuters_world",  # DNS error in sandbox
    "src_ap_top",         # 401
    "src_nyt_home",       # 404
    "src_history_today",  # 403
    "src_espn_top",       # 403
}

# Country code from URL path (some patterns)
COUNTRY_PATTERNS = {
    '/india/': 'IN', '/china/': 'CN', '/japan/': 'JP', '/germany/': 'DE',
    '/france/': 'FR', '/brazil/': 'BR', '/russia/': 'RU', '/ukraine/': 'UA',
    '/israel/': 'IL', '/palestine/': 'PS', '/mexico/': 'MX', '/nigeria/': 'NG',
    '/australia/': 'AU', '/canada/': 'CA', '/pakistan/': 'PK', '/turkey/': 'TR',
    '/italy/': 'IT', '/spain/': 'ES', '/korea/': 'KR', '/iran/': 'IR',
    '/iraq/': 'IQ', '/egypt/': 'EG', '/saudi/': 'SA', '/kenya/': 'KE',
    '/south-africa/': 'ZA', '/argentina/': 'AR', '/colombia/': 'CO',
}

# Category mapping from feed category
CATEGORY_MAP = {
    'news': None,  # leave as None, infer from content
    'science': 'scientific',
    'sport': 'sports',
    'business': 'economic',
    'history': 'cultural',
    'culture': 'cultural',
    'technology': 'technological',
}

def fetch(url, timeout=15):
    """Fetch URL with browser User-Agent. Returns bytes or None."""
    req = urllib.request.Request(url, headers={
        "User-Agent": "HistoricalKnowledgeAPI/1.0 (RSS aggregator; contact: hka@example.com)",
        "Accept": "application/rss+xml, application/xml, text/xml, */*",
    })
    try:
        with urllib.request.urlopen(req, timeout=timeout) as r:
            return r.read()
    except Exception as e:
        return None

def parse_feed(xml_bytes):
    """Parse RSS/Atom feed, return list of items."""
    try:
        root = ET.fromstring(xml_bytes)
    except ET.ParseError:
        return []
    items = []
    for item in root.iter():
        tag = item.tag.split('}')[-1] if '}' in item.tag else item.tag
        if tag in ('item', 'entry'):
            entry = {"title": "", "pub": "", "desc": "", "link": "", "category": "", "image": ""}
            for child in item:
                ctag = child.tag.split('}')[-1] if '}' in child.tag else child.tag
                text = (child.text or "").strip()
                # Handle enclosure for images (RSS)
                if ctag == 'enclosure' and child.attrib.get('type', '').startswith('image/'):
                    entry['image'] = child.attrib.get('url', '')
                    continue
                # Handle media:thumbnail, media:content (Atom)
                if 'media:' in (child.tag or '') or ctag in ('thumbnail', 'content'):
                    if child.attrib.get('url') and not entry['image']:
                        entry['image'] = child.attrib['url']
                        continue
                if child.attrib.get('href') and ctag == 'link':
                    entry['link'] = child.attrib['href']
                elif ctag == 'title' and not entry['title']:
                    entry['title'] = text
                elif ctag in ('pubDate', 'published', 'updated', 'dc:date') and not entry['pub']:
                    entry['pub'] = text
                elif ctag in ('description', 'summary', 'content', 'content:encoded') and not entry['desc']:
                    entry['desc'] = text
                elif ctag == 'link' and not entry['link']:
                    entry['link'] = text
                elif ctag == 'category' and not entry['category']:
                    entry['category'] = text
            items.append(entry)
    return items

def parse_pubdate(s):
    """Parse various RSS date formats to unix epoch seconds."""
    if not s:
        return None
    s = s.strip()
    # Try common formats
    formats = [
        "%a, %d %b %Y %H:%M:%S %Z",     # RFC 822: Fri, 14 Aug 2026 07:00:56 GMT
        "%a, %d %b %Y %H:%M:%S %z",     # with numeric tz
        "%Y-%m-%dT%H:%M:%S%z",            # ISO 8601
        "%Y-%m-%dT%H:%M:%SZ",
        "%Y-%m-%dT%H:%M:%S.%f%z",
        "%Y-%m-%dT%H:%M:%S",
        "%a, %d %b %Y %H:%M:%S %Z",      # with named tz
    ]
    # Normalize GMT/UTC
    s = re.sub(r'\s+GMT$', ' +0000', s)
    s = re.sub(r'\s+UTC$', ' +0000', s)
    s = re.sub(r'\s+EDT$', ' -0400', s)
    s = re.sub(r'\s+EST$', ' -0500', s)
    s = re.sub(r'\s+CDT$', ' -0500', s)
    s = re.sub(r'\s+CST$', ' -0600', s)
    s = re.sub(r'\s+MDT$', ' -0600', s)
    s = re.sub(r'\s+MST$', ' -0700', s)
    s = re.sub(r'\s+PDT$', ' -0700', s)
    s = re.sub(r'\s+PST$', ' -0800', s)
    for fmt in formats:
        try:
            dt = datetime.strptime(s, fmt)
            if dt.tzinfo is None:
                dt = dt.replace(tzinfo=timezone.utc)
            return int(dt.timestamp())
        except (ValueError, TypeError):
            continue
    return None

def content_hash(title, url):
    """Stable hash for dedup."""
    key = (title or "").lower().strip() + "|" + (url or "").lower().strip()
    return hashlib.sha1(key.encode()).hexdigest()[:16]

def detect_country(text, url):
    """Detect primary country from text or URL."""
    if not text and not url:
        return None
    blob = ((text or "") + " " + (url or "")).lower()
    for pattern, cca2 in COUNTRY_PATTERNS.items():
        if pattern in blob:
            return cca2
    # Common proper nouns
    proper_nouns = {
        'ukraine': 'UA', 'russia': 'RU', 'china': 'CN', 'japan': 'JP',
        'germany': 'DE', 'france': 'FR', 'india': 'IN', 'brazil': 'BR',
        'mexico': 'MX', 'australia': 'AU', 'nigeria': 'NG', 'egypt': 'EG',
        'israel': 'IL', 'iran': 'IR', 'pakistan': 'PK', 'turkey': 'TR',
        'italy': 'IT', 'spain': 'ES', 'korea': 'KR', 'kenya': 'KE',
        'colombia': 'CO', 'argentina': 'AR', 'indonesia': 'ID',
        'philippines': 'PH', 'vietnam': 'VN', 'thailand': 'TH',
    }
    for noun, cca2 in proper_nouns.items():
        if noun in blob:
            return cca2
    return None

def detect_category(title, desc, feed_category):
    """Detect event category from content."""
    text = ((title or "") + " " + (desc or "")).lower()
    if feed_category in ('sport', 'business', 'science', 'history', 'culture', 'technology'):
        return CATEGORY_MAP.get(feed_category)
    # Infer from text
    if any(w in text for w in ['election', 'president', 'parliament', 'government', 'minister', 'policy', 'treaty', 'sanction', 'tariff']):
        return 'political'
    if any(w in text for w in ['earthquake', 'volcano', 'hurricane', 'flood', 'wildfire', 'fire', 'storm']):
        return 'disasters'
    if any(w in text for w in ['research', 'study', 'scientists', 'university', 'discovery', 'nasa', 'telescope', 'climate', 'species']):
        return 'scientific'
    if any(w in text for w in ['stock', 'market', 'economy', 'gdp', 'inflation', 'recession', 'bank', 'merger', 'acquisition', 'billion', 'company']):
        return 'economic'
    if any(w in text for w in ['olympics', 'cup', 'tournament', 'medal', 'goal', 'match', 'final', 'score', 'win', 'title', 'league', 'player']):
        return 'sports'
    if any(w in text for w in ['art', 'music', 'film', 'movie', 'book', 'novel', 'concert', 'album', 'museum', 'festival']):
        return 'cultural'
    if any(w in text for w in ['kill', 'attack', 'bomb', 'shot', 'police', 'court', 'trial', 'prison', 'crime', 'kidnap']):
        return 'crime'
    if any(w in text for w in ['space', 'launch', 'rocket', 'satellite', 'ai', 'software', 'app', 'tech', 'cyber']):
        return 'technological'
    return None

def extract_image_url(item):
    """Extract image from item (title only — full body fetch is too slow)."""
    # Already extracted in parse_feed
    return item.get('image', '')

def strip_html(s):
    if not s: return ''
    s = re.sub(r'<[^>]+>', ' ', s)
    s = s.replace('&apos;', "'").replace('&amp;', '&').replace('&quot;', '"').replace('&nbsp;', ' ').replace('&#39;', "'")
    return re.sub(r'\s+', ' ', s).strip()

def get_sources():
    """Fetch news_source config from D1."""
    sql = "SELECT id, name, url, category, country, fetch_interval_minutes FROM news_source WHERE enabled = 1"
    try:
        out = subprocess.run(
            [WRANGLER_BIN, "d1", "execute", DB_NAME, "--remote", f"--env={ENV}",
             "--command", sql, "--json"],
            capture_output=True, text=True, timeout=60,
        )
        if out.returncode != 0:
            print(f"Wrangler error: {out.stderr[:200]}", file=sys.stderr)
            return []
        data = json.loads(out.stdout)
        results = data[0].get("results", [])
        return [{"id": r["id"], "name": r["name"], "url": r["url"], "category": r["category"], "country": r["country"]} for r in results]
    except Exception as e:
        print(f"Error fetching sources: {e}", file=sys.stderr)
        return []

def get_existing_hashes():
    """Get all existing news_event URLs to avoid re-inserting."""
    sql = "SELECT url FROM news_event"
    try:
        out = subprocess.run(
            [WRANGLER_BIN, "d1", "execute", DB_NAME, "--remote", f"--env={ENV}",
             "--command", sql, "--json"],
            capture_output=True, text=True, timeout=120,
        )
        if out.returncode != 0:
            return set()
        data = json.loads(out.stdout)
        return {r["url"] for r in data[0].get("results", [])}
    except Exception as e:
        print(f"Error fetching existing: {e}", file=sys.stderr)
        return set()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--hours", type=int, default=24, help="Only keep events from last N hours")
    parser.add_argument("--out", type=str, help="Output JSON file")
    parser.add_argument("--apply", action="store_true", help="Apply to D1")
    parser.add_argument("--dry-run", action="store_true", help="Show what would be inserted without applying")
    parser.add_argument("--limit", type=int, default=30, help="Max items per feed")
    args = parser.parse_args()

    print("=" * 80)
    print(f"RSS NEWS FETCHER — last {args.hours} hours")
    print("=" * 80)

    sources = get_sources()
    print(f"\nLoaded {len(sources)} enabled news sources")
    if not sources:
        print("ERROR: no sources loaded")
        return

    cutoff = int(time.time()) - (args.hours * 3600)

    all_articles = []
    all_events = []
    errors = []
    seen_hashes = set()

    for src in sources:
        if src["id"] in DISABLED_FEEDS:
            continue
        print(f"\n📡 {src['id']}: {src['name']}")
        xml = fetch(src["url"])
        if not xml:
            print(f"  ✗ fetch failed")
            errors.append({"source": src["id"], "error": "fetch_failed"})
            continue
        items = parse_feed(xml)
        kept = 0
        for item in items[:args.limit]:
            title = strip_html(item.get("title", ""))
            desc = strip_html(item.get("desc", ""))
            url = item.get("link", "").strip()
            pub = parse_pubdate(item.get("pub", ""))
            if not pub or pub < cutoff:
                continue
            if not title or not url:
                continue
            h = content_hash(title, url)
            if h in seen_hashes:
                continue
            seen_hashes.add(h)
            
            # Generate IDs
            dt = datetime.fromtimestamp(pub, tz=timezone.utc)
            date_str = dt.strftime("%Y-%m-%d")
            url_slug = re.sub(r'[^a-z0-9]+', '-', url[-50:].lower())[:30].strip('-')
            article_id = f"na_{src['id'].replace('src_', '')}_{dt.strftime('%Y%m%d_%H%M%S')}_{url_slug}"
            event_id = f"ne_{src['id'].replace('src_', '')}_{dt.strftime('%Y%m%d_%H%M%S')}_{h[:8]}"
            
            country = detect_country(title + " " + desc + " " + url, "") or src.get("country")
            category = detect_category(title, desc, src.get("category"))
            image = item.get("image", "")
            
            article = {
                "id": article_id,
                "entity_id": None,  # RSS items rarely have a specific entity
                "headline": title,
                "url": url,
                "source_id": src["id"],
                "source_name": src["name"],
                "published_at": pub,
                "snippet": desc[:500] if desc else None,
                "image_url": image or None,
                "topic_tags": json.dumps([t for t in [src.get("category"), category, country] if t]),
            }
            event = {
                "id": event_id,
                "article_id": article_id,
                "source_id": src["id"],
                "event_date": date_str,
                "published_at": pub,
                "title": title,
                "description": desc[:500] if desc else None,
                "url": url,
                "category": category,
                "country_code": country,
                "image_url": image or None,
                "confidence": 0.7,
            }
            all_articles.append(article)
            all_events.append(event)
            kept += 1
        print(f"  ✓ {len(items)} items → {kept} new events")

    print()
    print("=" * 80)
    print(f"SUMMARY: {len(all_articles)} articles, {len(all_events)} events from {len(sources)} sources")
    print(f"Errors: {len(errors)}")

    # Country distribution
    countries = {}
    for e in all_events:
        c = e.get("country_code") or "?"
        countries[c] = countries.get(c, 0) + 1
    print(f"Top countries: {sorted(countries.items(), key=lambda x: -x[1])[:10]}")
    
    # Category distribution
    categories = {}
    for e in all_events:
        c = e.get("category") or "uncategorized"
        categories[c] = categories.get(c, 0) + 1
    print(f"Categories: {categories}")

    if args.out:
        with open(args.out, "w") as f:
            json.dump({"articles": all_articles, "events": all_events, "errors": errors}, f, indent=2)
        print(f"\nSaved to {args.out}")

    if args.apply and all_events:
        # Build SQL batch
        print(f"\nApplying to D1 ({len(all_events)} events)...")
        # Use batched approach — for simplicity, write to file and use wrangler
        sql_file = "/tmp/rss_news_apply.sql"
        with open(sql_file, "w") as f:
            f.write(f"-- RSS news fetch: {len(all_events)} events, generated {datetime.now(timezone.utc).isoformat()}\n\n")
            # Articles
            f.write("INSERT OR IGNORE INTO news_article (id, entity_id, headline, url, source_id, source_name, published_at, snippet, image_url, topic_tags, fetched_at) VALUES\n")
            rows = []
            for a in all_articles:
                rows.append(f"  ('{a['id']}', NULL, '{a['headline'].replace(chr(39), chr(39)+chr(39))}', '{a['url'].replace(chr(39), chr(39)+chr(39))}', '{a['source_id']}', '{a['source_name'].replace(chr(39), chr(39)+chr(39))}', {a['published_at']}, '{a['snippet'].replace(chr(39), chr(39)+chr(39)) if a['snippet'] else ''}', '{a['image_url'] or ''}', '{a['topic_tags']}', unixepoch())")
            f.write(",\n".join(rows))
            f.write(";\n\n")
            # Events
            f.write("INSERT OR IGNORE INTO news_event (id, article_id, source_id, event_date, published_at, title, description, url, category, country_code, image_url, confidence) VALUES\n")
            rows = []
            for e in all_events:
                desc_sql = (e['description'].replace(chr(39), chr(39)+chr(39)) if e['description'] else '')
                title_sql = e['title'].replace(chr(39), chr(39)+chr(39))
                rows.append(f"  ('{e['id']}', '{e['article_id']}', '{e['source_id']}', '{e['event_date']}', {e['published_at']}, '{title_sql}', '{desc_sql}', '{e['url'].replace(chr(39), chr(39)+chr(39))}', '{e['category'] or ''}', '{e['country_code'] or ''}', '{e['image_url'] or ''}', {e['confidence']})")
            f.write(",\n".join(rows))
            f.write(";\n")
        # Apply
        out = subprocess.run(
            [WRANGLER_BIN, "d1", "execute", DB_NAME, "--remote", f"--env={ENV}", "--file", sql_file],
            capture_output=True, text=True, timeout=300,
        )
        if out.returncode == 0:
            # Parse meta
            try:
                meta = json.loads(out.stdout)
                print(f"  ✓ {meta[0].get('meta', {}).get('rows_written', '?')} rows written")
            except:
                print(f"  ✓ applied")
        else:
            print(f"  ✗ Error: {out.stderr[:500]}")

    if args.dry_run:
        print("\n--- DRY RUN: sample events ---")
        for e in all_events[:10]:
            print(f"  [{e['event_date']}] [{e['category'] or 'none':<14}] [{e['country_code'] or '??':<3}] {e['title'][:90]}")

if __name__ == "__main__":
    main()
