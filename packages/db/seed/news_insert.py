#!/usr/bin/env python3
"""
news_insert.py — Insert GDELT-derived articles into D1 news_article table.

Reads the JSON output of news_gdelt.py, batches into INSERT OR IGNORE
statements, and writes a SQL migration file ready to apply via wrangler.

Usage:
  python3 seed/news_gdelt.py --hours 24 --out /tmp/news.json
  python3 seed/news_insert.py /tmp/news.json \
    --out packages/db/migrations/0023_news_gdelt_backfill.sql
  wrangler d1 execute historical-knowledge-api-d1 --remote \
    --file packages/db/migrations/0023_news_gdelt_backfill.sql
"""

import argparse
import json
import os
import sys
import time
from datetime import datetime, timezone


def escape_sql(s: str) -> str:
    """Escape single quotes for SQL string literal."""
    if s is None:
        return "NULL"
    return "'" + s.replace("'", "''") + "'"


def json_to_sql_array(arr):
    """Convert list to SQL TEXT array literal (JSON-encoded)."""
    if not arr:
        return "NULL"
    return escape_sql(json.dumps(arr))


def render_sql(articles, source_id="src_gdelt"):
    """Render a SQL migration that inserts all articles."""
    if not articles:
        return "-- No articles to insert\n"

    # Get a timestamp comment
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")
    header = (
        "-- ========================================\n"
        f"-- GDELT backfill: {len(articles)} articles\n"
        f"-- Generated: {ts}\n"
        "-- Source: http://data.gdeltproject.org/gdeltv2/  (GDELT GKG 2.0)\n"
        "-- License: GDELT is freely available for research, no key required\n"
        "-- ========================================\n\n"
    )

    rows = []
    for a in articles:
        cols = [
            escape_sql(a["id"]),
            escape_sql(a["entity_id"]),
            escape_sql(a["headline"]),
            escape_sql(a["url"]),
            escape_sql(source_id),
            escape_sql(a["source_name"]),
            str(a["published_at"]),
            escape_sql(a.get("snippet")),
            escape_sql(a.get("language", "en")),
            escape_sql(a.get("image_url")),
            escape_sql(a.get("tone")),
            json_to_sql_array(a.get("topic_tags")),
            str(a.get("fetched_at", int(time.time()))),
            str(a.get("last_verified_at", int(time.time()))),
        ]
        rows.append("  (" + ", ".join(cols) + ")")

    sql = (
        header
        + "INSERT OR IGNORE INTO news_article\n"
        + "  (id, entity_id, headline, url, source_id, source_name,\n"
        + "   published_at, snippet, language, image_url, tone, topic_tags,\n"
        + "   fetched_at, last_verified_at)\n"
        + "VALUES\n"
        + ",\n".join(rows)
        + ";\n"
    )
    return sql


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help="Input JSON file from news_gdelt.py")
    parser.add_argument("--out", required=True, help="Output SQL file path")
    parser.add_argument("--source-id", default="src_gdelt", help="source_registry id (default: src_gdelt)")
    args = parser.parse_args()

    if not os.path.exists(args.input):
        print(f"error: input file not found: {args.input}", file=sys.stderr)
        sys.exit(1)

    with open(args.input) as f:
        articles = json.load(f)
    print(f"[insert] loaded {len(articles)} articles from {args.input}", file=sys.stderr)

    sql = render_sql(articles, args.source_id)

    # 100 vars per statement, 14 cols per row → batch by 7 rows
    # Each row uses: 11 string + 1 int (published_at) + 2 ints (fetched/last_verified) = 14 vars
    # Max 7 rows per statement to stay under 100 vars
    # For safety, split into 5-row chunks
    rows = []
    for a in articles:
        cols = [
            escape_sql(a["id"]),
            escape_sql(a["entity_id"]),
            escape_sql(a["headline"]),
            escape_sql(a["url"]),
            escape_sql(args.source_id),
            escape_sql(a["source_name"]),
            str(a["published_at"]),
            escape_sql(a.get("snippet")),
            escape_sql(a.get("language", "en")),
            escape_sql(a.get("image_url")),
            escape_sql(a.get("tone")),
            json_to_sql_array(a.get("topic_tags")),
            str(a.get("fetched_at", int(time.time()))),
            str(a.get("last_verified_at", int(time.time()))),
        ]
        rows.append("  (" + ", ".join(cols) + ")")

    # Batch into chunks of 5 rows
    BATCH = 5
    chunks = [rows[i:i + BATCH] for i in range(0, len(rows), BATCH)]
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")
    out = [
        "-- ========================================",
        f"-- GDELT backfill: {len(articles)} articles in {len(chunks)} batches",
        f"-- Generated: {ts}",
        "-- Source: http://data.gdeltproject.org/gdeltv2/  (GDELT GKG 2.0)",
        "-- License: GDELT is freely available for research, no key required",
        "-- ========================================",
        "",
    ]
    for i, chunk in enumerate(chunks):
        out.append(f"-- Batch {i+1}/{len(chunks)}")
        out.append(
            "INSERT OR IGNORE INTO news_article\n"
            "  (id, entity_id, headline, url, source_id, source_name,\n"
            "   published_at, snippet, language, image_url, tone, topic_tags,\n"
            "   fetched_at, last_verified_at)\n"
            "VALUES\n"
        )
        out.append(",\n".join(chunk) + ";\n")

    with open(args.out, "w") as f:
        f.write("\n".join(out))
    print(f"[insert] wrote {len(articles)} articles in {len(chunks)} batches to {args.out}", file=sys.stderr)


if __name__ == "__main__":
    main()
