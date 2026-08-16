#!/usr/bin/env python3
"""Resolve missing labels for QIDs that came back as [Qxxxxx].

Falls back to: (1) any non-en Wikidata label, (2) English Wikipedia article title.
"""
import json
import urllib.parse
import urllib.request
import ssl

USER_AGENT = "HKA-Enrichment-Bot/1.0 (ops@example.com)"
WIKIDATA_API = "https://www.wikidata.org/w/api.php"
WIKIPEDIA_API = "https://en.wikipedia.org/w/api.php"


def resolve_via_wikipedia(qids: list[str]) -> dict[str, str]:
    """Use English Wikipedia sitelinks as the primary source (cleanest English titles)."""
    if not qids:
        return {}
    url = WIKIDATA_API + "?action=wbgetentities&ids=" + "|".join(qids) + "&props=sitelinks&sitefilter=enwiki&format=json"
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(req, context=ssl.create_default_context(), timeout=30) as r:
        data = json.loads(r.read())
    out = {}
    for eid, e in data.get("entities", {}).items():
        sitelink = e.get("sitelinks", {}).get("enwiki", {})
        if sitelink:
            title = sitelink.get("title", "")
            if title:
                out[eid] = title
    return out


def resolve_via_wikidata(qids: list[str]) -> dict[str, str]:
    """Fallback: any non-en Wikidata label."""
    if not qids:
        return {}
    url = WIKIDATA_API + "?action=wbgetentities&ids=" + "|".join(qids) + "&props=labels&format=json"
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(req, context=ssl.create_default_context(), timeout=30) as r:
        data = json.loads(r.read())
    out = {}
    for eid, e in data.get("entities", {}).items():
        labels = e.get("labels", {})
        for lang in ["en", "de", "fr", "es", "ru", "ja", "zh", "it", "pt", "ko", "ar", "nl", "sv", "pl", "tr", "he"]:
            if lang in labels:
                out[eid] = labels[lang]["value"]
                break
        else:
            if labels:
                out[eid] = list(labels.values())[0]["value"]
    return out


if __name__ == "__main__":
    data = json.load(open("/tmp/famous_americans.json"))
    by_cat = data["by_category"]
    broken = set()
    for cat, people in by_cat.items():
        for p in people:
            if not p["name"] or p["name"].startswith("["):
                broken.add(p["qid"])
    print(f"Resolving {len(broken)} broken labels...")
    # First try Wikipedia sitelinks (English titles)
    label_map = resolve_via_wikipedia(sorted(broken))
    print(f"Got {len(label_map)} from Wikipedia (English titles)")
    still_broken = [q for q in broken if q not in label_map]
    if still_broken:
        wd_map = resolve_via_wikidata(still_broken)
        print(f"Got {len(wd_map)} from Wikidata (any language)")
        label_map.update(wd_map)
    print(f"Total resolved: {len(label_map)} / {len(broken)}")
    # Patch the data
    fixed = 0
    for cat, people in by_cat.items():
        for p in people:
            if (not p["name"] or p["name"].startswith("[")) and p["qid"] in label_map:
                p["name"] = label_map[p["qid"]]
                fixed += 1
    print(f"Patched {fixed} entries")
    json.dump(data, open("/tmp/famous_americans.json", "w"), indent=2, ensure_ascii=False)
    # Print the resolved names
    print("\nResolved:")
    for qid in sorted(broken):
        print(f"  {qid} → {label_map.get(qid, 'STILL MISSING')}")
