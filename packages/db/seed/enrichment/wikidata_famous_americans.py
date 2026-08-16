#!/usr/bin/env python3
"""
Query Wikidata SPARQL endpoint for famous Americans born 1900+.

Pulls the top ~N entities per occupation category (actor, musician, athlete,
politician, scientist, writer, business, etc.), grouped into categories we
can show the user.

Uses sitelinks count as a fame proxy (more Wikipedia language editions = more
famous). Filters to those with an English Wikipedia article.

Usage:
    python3 wikidata_famous_americans.py --max-per-cat 50 --min-sitelinks 30
"""
import json
import time
import urllib.parse
import urllib.request
import ssl
import argparse
from collections import defaultdict
from pathlib import Path

WIKIDATA_SPARQL = "https://query.wikidata.org/sparql"
USER_AGENT = "HKA-Enrichment-Bot/1.0 (https://historical-knowledge-api-dev.nsura2029.workers.dev; contact: ops@example.com)"

# Occupation categories → list of Wikidata occupation QIDs
# (kept narrow so the query returns manageable results)
CATEGORIES = {
    "actor": ["Q33999", "Q10800557", "Q2259451"],   # actor, film actor, TV actor
    "musician": ["Q177220", "Q488205", "Q753110"],   # singer, musician, songwriter
    "athlete": ["Q2066131", "Q3665646"],              # athlete, sports competitor
    "politician": ["Q82955"],                         # politician
    "scientist": ["Q901", "Q170790"],                 # scientist, mathematician
    "writer": ["Q36180", "Q6625963"],                 # writer, novelist
    "business": ["Q131524", "Q484876"],               # entrepreneur, businessperson
    "director": ["Q2526255", "Q3455803"],              # film director, TV director
    "model": ["Q4610556"],                            # model
    "comedian": ["Q245068"],                          # comedian
    "journalist": ["Q1930187", "Q193391"],            # journalist, TV journalist
    "producer": ["Q3282637"],                         # film producer
    "activist": ["Q15253558", "Q13590189"],           # activist, human rights activist
    "religious": ["Q42603", "Q1234713"],              # priest, religious leader
    "royalty": ["Q484876"],                            # skip - USA has none
    "military": ["Q189290", "Q8171"],                 # military officer, military personnel
    "academic": ["Q1622272", "Q16267149"],            # university teacher, professor
}


def run_sparql(query: str, retries: int = 2, timeout: int = 45) -> list[dict]:
    """Run a SPARQL query against Wikidata. Returns list of result rows."""
    ctx = ssl.create_default_context()
    last_err = None
    for attempt in range(retries):
        try:
            data = urllib.parse.urlencode({"query": query, "format": "json"}).encode()
            req = urllib.request.Request(
                WIKIDATA_SPARQL,
                data=data,
                headers={
                    "User-Agent": USER_AGENT,
                    "Accept": "application/sparql-results+json",
                },
            )
            with urllib.request.urlopen(req, context=ctx, timeout=timeout) as r:
                payload = json.loads(r.read().decode("utf-8"))
            return payload["results"]["bindings"]
        except Exception as e:
            last_err = e
            wait = (attempt + 1) * 3
            print(f"  [retry {attempt+1}] {e}; sleeping {wait}s", flush=True)
            time.sleep(wait)
    raise RuntimeError(f"SPARQL failed after {retries} attempts: {last_err}")


def fetch_americans_by_category(
    occ_qid: str,
    occ_label: str,
    min_sitelinks: int = 30,
    limit: int = 50,
    year_from: int = 1900,
) -> list[dict]:
    """Fetch famous Americans with this occupation, born >= year_from."""
    query = f"""
SELECT ?person ?personLabel ?dob ?dod ?image ?notableWork ?sitelinks
WHERE {{
  ?person wdt:P27 wd:Q30 .                          # US citizen
  ?person wdt:P106 wd:{occ_qid} .                   # has this occupation
  ?person wdt:P569 ?dob .                            # has DOB
  FILTER(YEAR(?dob) >= {year_from})
  OPTIONAL {{ ?person wdt:P570 ?dod . }}             # optional DOD
  OPTIONAL {{ ?person wdt:P18 ?image . }}            # optional image
  OPTIONAL {{ ?person wdt:P800 ?notableWork . }}     # optional notable work
  ?person wikibase:sitelinks ?sitelinks .
  FILTER(?sitelinks >= {min_sitelinks})
  ?article schema:about ?person ;
           schema:isPartOf <https://en.wikipedia.org/> .
  SERVICE wikibase:label {{ bd:serviceParam wikibase:language "en" . }}
}}
ORDER BY DESC(?sitelinks)
LIMIT {limit * 2}
"""
    rows = run_sparql(query)
    # Per-category dedup by QID
    seen = set()
    result = []
    for r in rows:
        qid = r["person"]["value"].split("/")[-1]
        if qid in seen:
            continue
        seen.add(qid)
        name = r.get("personLabel", {}).get("value", "")
        # Some queries return Q-id when label service fails — try to use the QID as fallback
        if not name or name == qid or (name.startswith("Q") and name[1:].isdigit()):
            name = f"[{qid}]"
        result.append({
            "qid": qid,
            "name": name,
            "dob": r.get("dob", {}).get("value", "")[:10],
            "dod": r.get("dod", {}).get("value", "")[:10] if "dod" in r else None,
            "image": r.get("image", {}).get("value"),
            "notable_work": (r.get("notableWork", {}).get("value", "").split("/")[-1].replace("_", " ")) if "notableWork" in r else None,
            "sitelinks": int(r["sitelinks"]["value"]),
        })
        if len(result) >= limit:
            break
    return result


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--min-sitelinks", type=int, default=30, help="min Wikipedia sitelinks (fame proxy)")
    ap.add_argument("--max-per-cat", type=int, default=50, help="max people per occupation")
    ap.add_argument("--year-from", type=int, default=1900)
    ap.add_argument("--out", default="/tmp/famous_americans.json")
    args = ap.parse_args()

    by_category = {}
    qid_to_categories = defaultdict(set)
    qid_to_person = {}
    print(f"Fetching famous Americans (born >={args.year_from}, sitelinks>={args.min_sitelinks})...\n")
    for cat, qids in CATEGORIES.items():
        if cat == "royalty":
            continue
        all_people = []
        for qid in qids:
            try:
                rows = fetch_americans_by_category(
                    qid, cat,
                    min_sitelinks=args.min_sitelinks,
                    limit=args.max_per_cat,
                    year_from=args.year_from,
                )
                for r in rows:
                    all_people.append(r)
                    qid_to_categories[r["qid"]].add(cat)
                    qid_to_person[r["qid"]] = r
            except Exception as e:
                print(f"  [error] {cat}/{qid}: {e}")
        by_category[cat] = sorted(all_people, key=lambda x: -x["sitelinks"])[:args.max_per_cat]
        print(f"  {cat:14s}: {len(by_category[cat]):3d} people  (e.g. {[p['name'] for p in by_category[cat][:3]]})")
        time.sleep(2)

    Path(args.out).parent.mkdir(parents=True, exist_ok=True)
    with open(args.out, "w") as f:
        json.dump({
            "by_category": by_category,
            "qid_to_categories": {k: sorted(v) for k, v in qid_to_categories.items()},
        }, f, indent=2, ensure_ascii=False)
    unique = len(qid_to_person)
    total = sum(len(v) for v in by_category.values())
    print(f"\nTotal: {total} entries / {unique} unique famous Americans across {len(by_category)} categories")
    print(f"Saved to {args.out}")


if __name__ == "__main__":
    main()
