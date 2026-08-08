#!/usr/bin/env python3
"""
wikidata_events_extract.py — Extract date-anchored events from Wikidata for each person.

Strategy:
1. Pre-collect all slugs and resolve QIDs first (QID cache)
2. Then fetch entity data for all QIDs (batch processing)
3. Finally fetch labels in batches of 50
4. Has aggressive rate limit detection + backoff

Uses curl for HTTP (avoids Python urllib rate-limiting).
"""

import json
import os
import re
import subprocess
import sys
import time
import urllib.parse


# ============================================================
# GLOBAL RATE LIMIT STATE
# ============================================================

RATE_LIMIT_HIT = False
RATE_LIMIT_HIT_AT = 0

# Wikimedia requires a User-Agent. Without one, requests get 403.
# Also use a longer --max-time and explicit --write-out for HTTP status.
USER_AGENT = "HistoricalKnowledgePlatform/0.1 (https://github.com/nsura2029-art/historical-knowledge-api; contact: research@hka.local)"


def http_get_json(url: str, retries: int = 2, force_wait: float = 0) -> dict | list | None:
    """HTTP GET via curl, return parsed JSON or None.

    Detects 429/403 rate limit by HTTP status code (NOT body size — empty search
    results are short by design). Uses a User-Agent to avoid Wikimedia 403s.
    """
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT
    for attempt in range(retries + 1):
        if RATE_LIMIT_HIT and time.time() - RATE_LIMIT_HIT_AT < 60:
            # Global rate limit is active, wait
            wait_time = 60 - (time.time() - RATE_LIMIT_HIT_AT)
            if wait_time > 0:
                time.sleep(wait_time)
        try:
            res = subprocess.run(
                ["curl", "-s", "--max-time", "15", "--connect-timeout", "5",
                 "-A", USER_AGENT,
                 "-w", "\n__HTTP_STATUS__%{http_code}",
                 url],
                capture_output=True, text=True, timeout=20)
            if res.returncode != 0:
                continue
            # Parse HTTP status from the appended line
            out = res.stdout
            status = 0
            if "__HTTP_STATUS__" in out:
                status_str = out.rsplit("__HTTP_STATUS__", 1)[-1].strip()
                try:
                    status = int(status_str)
                except ValueError:
                    status = 0
                out = out.rsplit("__HTTP_STATUS__", 1)[0]
            # Check for rate limit by HTTP status code, not body size
            if status == 429 or status == 503:
                if attempt < retries:
                    RATE_LIMIT_HIT = True
                    RATE_LIMIT_HIT_AT = time.time()
                    time.sleep(2 ** (attempt + 2))
                    continue
                return None
            if status == 403 and "Too Many Reqs" in out[:500]:
                if attempt < retries:
                    RATE_LIMIT_HIT = True
                    RATE_LIMIT_HIT_AT = time.time()
                    time.sleep(2 ** (attempt + 2))
                    continue
                return None
            if status >= 400:
                # 4xx other than rate limit — not a retry, just return None
                return None
            if not out.strip():
                return None
            try:
                return json.loads(out)
            except json.JSONDecodeError:
                return None
        except Exception:
            if attempt < retries:
                time.sleep(2)
                continue
            return None
    return None


def get_labels_batch(qids: list, cache: dict) -> None:
    """Fetch labels for multiple QIDs in batches of 50. Updates cache in place."""
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT
    missing = [q for q in qids if q and q.startswith("Q") and q not in cache]
    if not missing:
        return
    BATCH_SIZE = 50
    for i in range(0, len(missing), BATCH_SIZE):
        batch = missing[i:i+BATCH_SIZE]
        ids_str = "|".join(batch)
        url = f"https://www.wikidata.org/w/api.php?action=wbgetentities&ids={ids_str}&props=labels&languages=en&format=json"
        for attempt in range(3):
            if RATE_LIMIT_HIT and time.time() - RATE_LIMIT_HIT_AT < 60:
                wait_time = 60 - (time.time() - RATE_LIMIT_HIT_AT)
                if wait_time > 0:
                    time.sleep(wait_time)
            try:
                res = subprocess.run(
                    ["curl", "-s", "--max-time", "15", "--connect-timeout", "5",
                     "-A", USER_AGENT,
                     "-w", "\n__HTTP_STATUS__%{http_code}",
                     url],
                    capture_output=True, text=True, timeout=20)
                if res.returncode != 0:
                    continue
                out = res.stdout
                status = 0
                if "__HTTP_STATUS__" in out:
                    status_str = out.rsplit("__HTTP_STATUS__", 1)[-1].strip()
                    try:
                        status = int(status_str)
                    except ValueError:
                        status = 0
                    out = out.rsplit("__HTTP_STATUS__", 1)[0]
                # Rate limit detection: HTTP 429/503
                if status == 429 or status == 503:
                    RATE_LIMIT_HIT = True
                    RATE_LIMIT_HIT_AT = time.time()
                    time.sleep(2 ** (attempt + 2))
                    continue
                if status >= 400:
                    # Other 4xx — try next attempt but don't mark as rate limit
                    time.sleep(2)
                    continue
                data = json.loads(out)
                entities = data.get("entities", {})
                for q in batch:
                    label = entities.get(q, {}).get("labels", {}).get("en", {}).get("value", q)
                    cache[q] = label
                break
            except Exception:
                time.sleep(2)
        else:
            for q in batch:
                cache[q] = q
        time.sleep(0.3)


def get_label(qid: str, cache: dict) -> str:
    """Get label from cache. Use get_labels_batch first to populate."""
    if not qid or not qid.startswith("Q"):
        return qid or ""
    if qid in cache:
        return cache[qid]
    get_labels_batch([qid], cache)
    return cache.get(qid, qid)


def get_wikidata_qid(slug: str) -> str | None:
    """Get Wikidata QID from a Wikipedia slug via REST API summary endpoint.

    Tries multiple title variants to handle slug-vs-title mismatches.
    """
    candidates = generate_title_candidates(slug)
    for title in candidates:
        url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{title}"
        data = http_get_json(url)
        if not data:
            continue
        qid = data.get("wikibase_item")
        if qid:
            return qid
    return search_wikipedia_for_qid(slug)


def generate_title_candidates(slug: str) -> list:
    """Generate possible Wikipedia title variants for a slug."""
    candidates = []
    base = slug.replace("-", "_")
    candidates.append(base)
    if base:
        candidates.append(base[0].upper() + base[1:])
    parts = base.split("_")
    if len(parts) > 1:
        candidates.append("_".join(p[0].upper() + p[1:] for p in parts if p))
    if base.startswith("ar_") and len(base) > 3:
        rest = base[3:]
        candidates.append(f"A.R._{rest[0].upper() + rest[1:]}")
        candidates.append(f"A._R._{rest[0].upper() + rest[1:]}")
    if base.startswith("jr_") or base.startswith("sr_"):
        candidates.append(f"_{base[0].upper() + base[1:]}")
    if "_" in base and all(len(p) <= 2 for p in base.split("_")[:3] if p):
        initials = ".".join(p.upper() for p in base.split("_") if p)
        candidates.append(initials)
    return candidates


def search_wikipedia_for_qid(slug: str) -> str | None:
    """Use Wikipedia's search API to find the page by slug."""
    query = slug.replace("-", " ")
    url = f"https://en.wikipedia.org/w/api.php?{urllib.parse.urlencode({'action': 'query', 'list': 'search', 'srsearch': query, 'srlimit': 1, 'format': 'json'})}"
    data = http_get_json(url)
    if not data:
        return None
    hits = data.get("query", {}).get("search", [])
    if not hits:
        return None
    title = hits[0].get("title")
    if not title:
        return None
    title_underscore = title.replace(" ", "_")
    url = f"https://en.wikipedia.org/api/rest_v1/page/summary/{title_underscore}"
    data = http_get_json(url)
    if not data:
        return None
    return data.get("wikibase_item")


def get_entity_data(qid: str) -> dict | None:
    """Fetch the full Wikidata entity data."""
    url = f"https://www.wikidata.org/wiki/Special:EntityData/{qid}.json"
    return http_get_json(url, retries=2)


# ============================================================
# CLAIM PARSING
# ============================================================

PROPERTY_MAP = {
    "P569":  ("birth", "life", "Born"),
    "P570":  ("death", "life", "Died"),
    "P166":  ("award", "work", "Received"),
    "P39":   ("political", "public", "Held position"),
    "P26":   ("personal_life", "life", "Married"),
    "P40":   ("personal_life", "life", "Had child"),
    "P69":   ("education", "life", "Educated at"),
    "P108":  ("career", "work", "Employed by"),
    "P800":  ("publication", "work", "Notable work"),
    "P54":   ("athletic", "work", "Played for"),
    "P551":  ("personal_life", "life", "Resided at"),
    "P22":   ("personal_life", "life", "Father"),
    "P25":   ("personal_life", "life", "Mother"),
    "P3373": ("personal_life", "life", "Sibling"),
    "P1038": ("personal_life", "life", "Relative"),
    "P607":  ("public_appearance", "public", "Conflict"),
    "P1343": ("publication", "work", "Described by"),
    "P3602": ("award", "work", "Candidate in"),
    "P2868": ("career", "work", "Subject of"),
    "P1411": ("award", "work", "Nominated for"),
    "P2522": ("public_appearance", "public", "Result in"),
    "P3342": ("award", "work", "Significant"),
}


def parse_wikidata_time(time_str: str) -> tuple:
    if not time_str or not isinstance(time_str, str):
        return None, None
    m = re.match(r"^([+-]?\d{1,4})(?:-(\d{1,2}))?(?:-(\d{1,2}))?", time_str)
    if not m:
        return None, None
    try:
        year = int(m.group(1))
        if year < 1000 or year > 2100:
            return None, None
    except ValueError:
        return None, None
    month = m.group(2)
    day = m.group(3)
    if month and day:
        date = f"{abs(year):04d}-{int(month):02d}-{int(day):02d}"
    else:
        date = None
    return date, abs(year)


def extract_claim_value(claim: dict) -> str:
    try:
        return claim.get("mainsnak", {}).get("datavalue", {}).get("value", {}).get("id", "")
    except Exception:
        return ""


def extract_claim_times(claim: dict) -> list:
    times = []
    qualifiers = claim.get("qualifiers", {})
    for qk in ("P580", "P585", "P574", "P582"):
        if qk in qualifiers:
            for qv in qualifiers[qk]:
                t = qv.get("datavalue", {}).get("value", {}).get("time", "")
                d, y = parse_wikidata_time(t)
                if y:
                    times.append((d, y))
    main_value = claim.get("mainsnak", {}).get("datavalue", {}).get("value", {})
    if isinstance(main_value, dict) and "time" in main_value:
        d, y = parse_wikidata_time(main_value["time"])
        if y and (d, y) not in times:
            times.append((d, y))
    return times


# ============================================================
# MAIN
# ============================================================

def main():
    global RATE_LIMIT_HIT, RATE_LIMIT_HIT_AT

    out_path = sys.argv[1] if len(sys.argv) > 1 else "packages/db/migrations/0030_wikidata_events_extracted.sql"
    limit = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    slug_filter = sys.argv[3] if len(sys.argv) > 3 else None  # path to file with one slug per line

    script_dir = os.path.dirname(os.path.abspath(__file__))
    api_dir = os.path.normpath(os.path.join(script_dir, "..", "..", "..", "apps", "api"))
    if not os.path.isdir(api_dir):
        api_dir = os.getcwd()
    env = os.environ.copy()
    if "PATH" not in env or "node_modules/.bin/wrangler" not in env.get("PATH", ""):
        wrangler_path = os.path.normpath(os.path.join(api_dir, "..", "..", "develop", "apps", "api", "node_modules", ".bin"))
        if os.path.isdir(wrangler_path):
            env["PATH"] = f"{wrangler_path}:{env.get('PATH', '')}"

    print("[wd] loading entities from D1...", file=sys.stderr)
    if slug_filter and os.path.exists(slug_filter):
        with open(slug_filter) as f:
            slugs = [s.strip() for s in f if s.strip()]
        # Chunk into smaller groups because wrangler --command has length limits
        # Use a single IN clause via a hardcoded SQL string
        all_rows = []
        chunk_size = 30
        for i in range(0, len(slugs), chunk_size):
            chunk = slugs[i:i+chunk_size]
            quoted = ",".join(f"'{s.replace(chr(39), chr(39)+chr(39))}'" for s in chunk)
            sql = f"SELECT e.id, e.slug, e.canonical_name FROM entity e WHERE e.type='person' AND e.slug IN ({quoted})"
            cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
                   "--command", sql, "--json"]
            r = subprocess.run(cmd, capture_output=True, text=True, timeout=60, cwd=api_dir, env=env)
            if r.returncode != 0:
                print(f"[wd] chunk error: {r.stderr[:300]}", file=sys.stderr)
                continue
            try:
                idx = r.stdout.find("[")
                if idx == -1:
                    continue
                parsed = json.loads(r.stdout[idx:])
                rows = parsed[0].get("results", [])
                all_rows.extend(rows)
            except Exception as e:
                print(f"[wd] parse error: {e}", file=sys.stderr)
        print(f"[wd] filtering to {len(slugs)} slugs ({len(all_rows)} found)", file=sys.stderr)
        # Build a fake res object
        import io
        fake_stdout = json.dumps([{"results": all_rows, "success": True}]).encode()
        res = type('Res', (), {'returncode': 0, 'stdout': fake_stdout.decode(), 'stderr': ''})()
    else:
        cmd = ["wrangler", "d1", "execute", "historical-knowledge-api-d1", "--remote",
               "--command",
               "SELECT e.id, e.slug, e.canonical_name FROM entity e WHERE e.type='person' ORDER BY e.popularity_score DESC NULLS LAST", "--json"]
        res = subprocess.run(cmd, capture_output=True, text=True, timeout=120, cwd=api_dir, env=env)
    if res.returncode != 0:
        print(f"[wd] wrangler error: {res.stderr[:500]}", file=sys.stderr)
        return 1
    out = res.stdout
    idx = out.find("[")
    if idx == -1:
        print(f"[wd] no results", file=sys.stderr)
        return 1
    parsed = json.loads(out[idx:])
    rows = parsed[0].get("results", [])
    print(f"[wd] found {len(rows)} people", file=sys.stderr)
    if limit:
        rows = rows[:limit]

    # Phase 1: Resolve all QIDs
    print(f"[wd] Phase 1: resolving QIDs...", file=sys.stderr)
    slug_to_qid = {}
    qid_failures = []
    for i, row in enumerate(rows):
        slug = row["slug"]
        qid = get_wikidata_qid(slug)
        if qid:
            slug_to_qid[slug] = qid
        else:
            qid_failures.append(slug)
        if (i + 1) % 25 == 0:
            print(f"[wd]   QID {i+1}/{len(rows)}: {len(slug_to_qid)} ok, {len(qid_failures)} failed", file=sys.stderr)
        time.sleep(0.1)  # Gentle rate limit
    print(f"[wd] Phase 1 done: {len(slug_to_qid)} QIDs resolved, {len(qid_failures)} failed", file=sys.stderr)

    # Phase 2: Fetch entity data
    print(f"[wd] Phase 2: fetching entity data...", file=sys.stderr)
    entity_data_map = {}
    qid_to_slug = {qid: slug for slug, qid in slug_to_qid.items()}
    unique_qids = list(set(slug_to_qid.values()))
    for i, qid in enumerate(unique_qids):
        data = get_entity_data(qid)
        if data and qid in data.get("entities", {}):
            entity_data_map[qid] = data
        if (i + 1) % 25 == 0:
            print(f"[wd]   Entity {i+1}/{len(unique_qids)}: {len(entity_data_map)} ok", file=sys.stderr)
        time.sleep(0.2)
    print(f"[wd] Phase 2 done: {len(entity_data_map)} entities loaded", file=sys.stderr)

    # Phase 3: Pre-collect all QIDs that need labels
    print(f"[wd] Phase 3: pre-collecting label QIDs...", file=sys.stderr)
    label_cache = {}
    all_label_qids = set()
    for qid, data in entity_data_map.items():
        entity = data.get("entities", {}).get(qid, {})
        claims = entity.get("claims", {})
        for prop in PROPERTY_MAP:
            if prop not in claims:
                continue
            for claim in claims[prop]:
                v = extract_claim_value(claim)
                if v and v.startswith("Q") and v != qid:
                    all_label_qids.add(v)
    print(f"[wd] Phase 3: {len(all_label_qids)} unique label QIDs to fetch", file=sys.stderr)

    # Phase 4: Batch fetch all labels
    print(f"[wd] Phase 4: batch fetching labels...", file=sys.stderr)
    all_label_qids_list = list(all_label_qids)
    BATCH = 50
    for i in range(0, len(all_label_qids_list), BATCH):
        batch = all_label_qids_list[i:i+BATCH]
        get_labels_batch(batch, label_cache)
        if (i // BATCH) % 10 == 0:
            print(f"[wd]   Label batch {i//BATCH + 1}/{(len(all_label_qids_list) + BATCH - 1)//BATCH}: {len(label_cache)}/{len(all_label_qids_list)} cached", file=sys.stderr)
    print(f"[wd] Phase 4 done: {len(label_cache)} labels cached", file=sys.stderr)

    # Phase 5: Extract events
    print(f"[wd] Phase 5: extracting events...", file=sys.stderr)
    sql_parts = [
        "-- ========================================",
        f"-- Migration 0030: Wikidata-sourced events for {len(rows)} people",
        f"-- Generated: {time.strftime('%Y-%m-%d %H:%M:%S UTC', time.gmtime())}",
        f"-- Source: Wikidata Special:EntityData, structured claims with date qualifiers",
        f"-- Properties: {', '.join(PROPERTY_MAP.keys())}",
        "-- ========================================",
        "",
    ]
    out_f = open(out_path, "w")
    out_f.write("\n".join(sql_parts) + "\n")
    out_f.flush()

    total_events = 0
    n_people_with_events = 0
    n_max_per_person = 0
    n_type_counts = {}

    for i, row in enumerate(rows):
        eid = row["id"]
        slug = row["slug"]
        name = row.get("canonical_name", slug)
        qid = slug_to_qid.get(slug)
        if not qid or qid not in entity_data_map:
            continue
        entity = entity_data_map[qid].get("entities", {}).get(qid, {})
        claims = entity.get("claims", {})
        events = []
        for prop, (event_type, category, default_verb) in PROPERTY_MAP.items():
            if prop not in claims:
                continue
            for claim in claims[prop]:
                value_qid = extract_claim_value(claim)
                if not value_qid or value_qid == qid:
                    continue
                times = extract_claim_times(claim)
                if not times:
                    continue
                value_label = label_cache.get(value_qid, value_qid)
                if not value_label or value_label == value_qid:
                    continue
                for date, year in times:
                    events.append({
                        "year": year, "date": date, "type": event_type,
                        "category": category, "value_qid": value_qid, "value_label": value_label,
                        "prop": prop, "verb": default_verb
                    })

        events.sort(key=lambda e: (e["year"], e["value_label"]))

        for j, ev in enumerate(events):
            ev_id = f"ev_wd_{slug}_{ev['prop']}_{ev['value_qid']}_{ev['year']}"
            title_verb = ev["verb"]
            value = ev["value_label"].replace("'", "''")[:200]
            body = f"{name} {title_verb.lower()} {ev['value_label']} ({ev['year']})."
            body = body.replace("'", "''")[:500]
            date_sql = f"'{ev['date']}'" if ev["date"] else "NULL"
            year = ev["year"]
            etype = ev["type"]
            cat = ev["category"]
            out_f.write(f"""INSERT OR IGNORE INTO entity_event
  (id, entity_id, event_date, event_year, event_type, category, title, body,
   source_id, confidence, display_order, lang, fetched_at, last_verified_at)
VALUES
  ('{ev_id}', '{eid}', {date_sql}, {year}, '{etype}', '{cat}',
   '{title_verb} {value}', '{body}', 'src_wikidata', 0.85, {j}, 'en',
   unixepoch(), unixepoch());
""")
            out_f.flush()
            n_type_counts[etype] = n_type_counts.get(etype, 0) + 1

        if events:
            n_people_with_events += 1
            n_max_per_person = max(n_max_per_person, len(events))
        total_events += len(events)

        if (i + 1) % 25 == 0 or (i + 1) == len(rows):
            avg = total_events / max(1, n_people_with_events)
            print(f"[wd] {i+1}/{len(rows)}: {name} → {len(events)} events (total: {total_events}, avg: {avg:.1f}, max: {n_max_per_person})", file=sys.stderr)

    out_f.close()
    print(f"\n[wd] done: total_events={total_events} people_with_events={n_people_with_events} max_per_person={n_max_per_person} qid_failures={len(qid_failures)}", file=sys.stderr)
    print(f"[wd] type distribution:", file=sys.stderr)
    for t, c in sorted(n_type_counts.items(), key=lambda x: -x[1]):
        print(f"  {t}: {c}", file=sys.stderr)
    print(f"[wd] wrote SQL to {out_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
