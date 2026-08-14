#!/usr/bin/env python3
"""Apply rss_news.json to D1 in batches of 50 rows."""
import json
import subprocess
import sys

WRANGLER = "/workspace/historical-knowledge-api/apps/api/node_modules/.bin/wrangler"
DB = "historical-knowledge-api-d1"
ENV = "dev"

with open("/tmp/rss_news.json") as f:
    data = json.load(f)

articles = data["articles"]
events = data["events"]

def esc(s):
    if s is None: return ""
    return str(s).replace("'", "''")

BATCH_SIZE = 50
files = []

# Articles
for i in range(0, len(articles), BATCH_SIZE):
    batch = articles[i:i+BATCH_SIZE]
    fp = f"/tmp/rss_apply_articles_{i//BATCH_SIZE:03d}.sql"
    with open(fp, "w") as f:
        f.write("INSERT OR IGNORE INTO news_article (id, entity_id, headline, url, source_id, source_name, published_at, snippet, image_url, topic_tags, fetched_at) VALUES\n")
        rows = []
        for a in batch:
            img = a.get("image_url") or ""
            sn = esc(a.get("snippet") or "")[:1000]
            rows.append(f"  ('{a['id']}', NULL, '{esc(a['headline'])[:500]}', '{esc(a['url'])}', '{a['source_id']}', '{esc(a['source_name'])}', {a['published_at']}, '{sn}', '{img}', '{esc(a['topic_tags'])}', unixepoch())")
        f.write(",\n".join(rows))
        f.write(";\n")
    files.append(fp)

# Events
for i in range(0, len(events), BATCH_SIZE):
    batch = events[i:i+BATCH_SIZE]
    fp = f"/tmp/rss_apply_events_{i//BATCH_SIZE:03d}.sql"
    with open(fp, "w") as f:
        f.write("INSERT OR IGNORE INTO news_event (id, article_id, source_id, event_date, published_at, title, description, url, category, country_code, image_url, confidence) VALUES\n")
        rows = []
        for e in batch:
            img = e.get("image_url") or ""
            desc = esc(e.get("description") or "")[:1000]
            rows.append(f"  ('{e['id']}', '{e['article_id']}', '{e['source_id']}', '{e['event_date']}', {e['published_at']}, '{esc(e['title'])[:500]}', '{desc}', '{esc(e['url'])}', '{e.get('category') or ''}', '{e.get('country_code') or ''}', '{img}', {e.get('confidence', 0.7)})")
        f.write(",\n".join(rows))
        f.write(";\n")
    files.append(fp)

print(f"Created {len(files)} batch files")

# Apply each
total = 0
for fp in files:
    out = subprocess.run(
        [WRANGLER, "d1", "execute", DB, "--remote", f"--env={ENV}", "--file", fp],
        capture_output=True, text=True, timeout=120,
    )
    if out.returncode != 0:
        print(f"  ✗ {fp}: {out.stderr[:200]}")
    else:
        # Try to parse JSON
        try:
            d = json.loads(out.stdout)
            n = d[0].get("meta", {}).get("rows_written", 0)
            total += n
        except:
            pass
        print(f"  ✓ {fp.split('/')[-1]} applied")
print(f"Total: {total} rows written")
