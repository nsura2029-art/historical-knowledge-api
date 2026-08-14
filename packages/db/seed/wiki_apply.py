#!/usr/bin/env python3
"""Apply Wikipedia anniversaries to news_event + person_birth_death tables."""
import json
import subprocess
import sys
import time
from datetime import datetime, timezone

WRANGLER = "/workspace/historical-knowledge-api/apps/api/node_modules/.bin/wrangler"
DB = "historical-knowledge-api-d1"
ENV = "dev"

with open("/tmp/wiki_all.json") as f:
    data = json.load(f)

src_id = "src_wiki_anniversaries"
src_name = "Wikipedia Selected Anniversaries"
url_base = "https://en.wikipedia.org/wiki/"

now = int(time.time())

# Build all news_event rows
events = []
event_id = 0
birth_id = 0
death_id = 0

for mm_dd, day_data in data["data"].items():
    for ev in day_data["events"]:
        if not (-3000 <= ev["year"] <= 2100):
            continue
        event_id += 1
        year = ev["year"]
        # For negative years (BC), event_date doesn't make sense — store as YYYY
        if year < 0:
            date_str = f"{-year:04d}-BC-{mm_dd}"  # Use BC marker
        else:
            date_str = f"{year:04d}-{mm_dd}"
        # article_id needs to be unique
        article_id = f"na_wiki_{mm_dd.replace('-', '')}_{year}_{event_id}"
        event_pk = f"ne_wiki_{mm_dd.replace('-', '')}_{year}_{event_id}"
        
        # Wikipedia article URL for the specific month-day page
        # but link to the actual event would require more work
        # For now, use the month-day page
        from datetime import datetime
        mn, dy = mm_dd.split("-")
        month_names = ['', 'January', 'February', 'March', 'April', 'May', 'June', 
                       'July', 'August', 'September', 'October', 'November', 'December']
        article_url = f"https://en.wikipedia.org/wiki/{month_names[int(mn)]}_{int(dy)}"
        
        events.append({
            "id": event_pk,
            "article_id": article_id,
            "source_id": src_id,
            "source_name": src_name,
            "event_date": date_str,
            "published_at": now,
            "title": ev["text"][:300],
            "description": ev["text"][:1000],
            "url": article_url,
            "category": "historical",  # will be refined later
            "country_code": "",
            "image_url": "",
            "confidence": 0.85,  # Wikipedia is high quality
            "year": year,
        })
        # Also build news_article rows
        events.append({
            "_article": True,
            "id": article_id,
            "headline": ev["text"][:300],
            "url": article_url,
            "source_id": src_id,
            "source_name": src_name,
            "published_at": now,
            "snippet": ev["text"][:500],
            "image_url": "",
            "topic_tags": f'["historical", "wiki", "{year}"]',
        })

# De-dup the _article entries (each event adds 2 entries)
article_rows = [e for e in events if e.get("_article")]
event_rows = [e for e in events if not e.get("_article")]

print(f"Events to insert: {len(event_rows)}")
print(f"Articles to insert: {len(article_rows)}")

# Build SQL in batches
BATCH = 100  # 11 cols * 100 = 1100 vars — too much. Use 9 batches
# Actually 11 cols * 9 batches = 99 vars. Let me use BATCH=9
BATCH = 9

def esc(s):
    if s is None: return ""
    return str(s).replace("'", "''")

# Articles first
print("\nApplying articles...")
for i in range(0, len(article_rows), BATCH):
    batch = article_rows[i:i+BATCH]
    fp = f"/tmp/wiki_art_{i//BATCH:04d}.sql"
    with open(fp, "w") as f:
        f.write("INSERT OR IGNORE INTO news_article (id, entity_id, headline, url, source_id, source_name, published_at, snippet, image_url, topic_tags, fetched_at) VALUES\n")
        rows = []
        for a in batch:
            rows.append(f"  ('{a['id']}', NULL, '{esc(a['headline'])}', '{esc(a['url'])}', '{a['source_id']}', '{esc(a['source_name'])}', {a['published_at']}, '{esc(a['snippet'])}', '', '{esc(a['topic_tags'])}', unixepoch())")
        f.write(",\n".join(rows))
        f.write(";\n")
    # Apply
    out = subprocess.run(
        [WRANGLER, "d1", "execute", DB, "--remote", f"--env={ENV}", "--file", fp],
        capture_output=True, text=True, timeout=60
    )
    if out.returncode != 0:
        print(f"  ✗ batch {i}: {out.stderr[:100]}")
    else:
        try:
            d = json.loads(out.stdout)
            n = d[0].get("meta", {}).get("rows_written", 0)
            if i % 500 == 0:
                print(f"  Progress: {i}/{len(article_rows)} (wrote {n} in this batch)")
        except:
            pass

# Events
print("\nApplying events...")
for i in range(0, len(event_rows), BATCH):
    batch = event_rows[i:i+BATCH]
    fp = f"/tmp/wiki_evt_{i//BATCH:04d}.sql"
    with open(fp, "w") as f:
        f.write("INSERT OR IGNORE INTO news_event (id, article_id, source_id, event_date, published_at, title, description, url, category, country_code, image_url, confidence) VALUES\n")
        rows = []
        for e in batch:
            rows.append(f"  ('{e['id']}', '{e['article_id']}', '{e['source_id']}', '{e['event_date']}', {e['published_at']}, '{esc(e['title'])}', '{esc(e['description'])}', '{esc(e['url'])}', '{e['category']}', '', '', {e['confidence']})")
        f.write(",\n".join(rows))
        f.write(";\n")
    out = subprocess.run(
        [WRANGLER, "d1", "execute", DB, "--remote", f"--env={ENV}", "--file", fp],
        capture_output=True, text=True, timeout=60
    )
    if out.returncode != 0:
        print(f"  ✗ batch {i}: {out.stderr[:200]}")
    else:
        try:
            d = json.loads(out.stdout)
            n = d[0].get("meta", {}).get("rows_written", 0)
            if i % 500 == 0:
                print(f"  Progress: {i}/{len(event_rows)} (wrote {n} in this batch)")
        except:
            pass

# Also add to news_source if not present
src_sql = f"""INSERT OR IGNORE INTO news_source (id, name, url, category, country, language, fetch_interval_minutes)
VALUES ('{src_id}', '{src_name}', 'https://en.wikipedia.org/wiki/Main_Page', 'history', 'US', 'en', 99999);"""
fp = "/tmp/wiki_src.sql"
with open(fp, "w") as f:
    f.write(src_sql)
out = subprocess.run(
    [WRANGLER, "d1", "execute", DB, "--remote", f"--env={ENV}", "--file", fp],
    capture_output=True, text=True, timeout=30
)
print(f"\nNews source insert: {out.returncode}")

print("\nDone!")
