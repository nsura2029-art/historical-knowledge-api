#!/usr/bin/env python3
"""
people_profession_index.py — Build a profession / dimension index for top 500 Americans.

After the bulk ingest, this script:
  1. Reads the people_us_500.txt file
  2. Maps each name to one or more "dimension tags" based on the section it was in
  3. Writes a tag dimension table OR enriches the existing entity rows

For the v1 implementation, we just write a JSON file mapping name → tags.
Future: add a tag_dimension table + /v1/people?tag=politician endpoint.

Dimension buckets (from the people_us_500.txt section headers):
  - politician (presidents, VPs, secretaries of state, etc.)
  - founding_father
  - civil_war
  - civil_rights
  - scientist
  - inventor
  - tech_founder
  - writer
  - poet
  - artist
  - musician
  - composer
  - actor
  - director
  - athlete
  - sport_player (basketball, baseball, etc.)
  - entertainer
  - religious_leader
  - military_leader
  - chief_justice
  - astronaut
  - native_american_leader
  - first_lady
  - civil_rights_leader
  - women's_rights
  - labor_rights
  - civil_rights
  - abolitionist
  - suffragist

Output: people_us_500_dimensions.json
"""

import json
import re


DIMENSION_PATTERNS = [
    (r"US Presidents", ["politician", "head_of_state"]),
    (r"Vice Presidents", ["politician", "vp"]),
    (r"First Ladies", ["first_lady", "spouse_of_president"]),
    (r"Founding Fathers", ["founding_father", "revolutionary"]),
    (r"Civil War", ["civil_war"]),
    (r"Inventors", ["scientist", "inventor"]),
    (r"Civil Rights", ["civil_rights_leader"]),
    (r"Writers", ["writer"]),
    (r"Poets", ["poet", "writer"]),
    (r"Artists", ["artist"]),
    (r"Musicians", ["musician"]),
    (r"Composers", ["composer", "musician"]),
    (r"Actors", ["actor"]),
    (r"Directors", ["director"]),
    (r"Tech & Business", ["business_leader", "tech_founder"]),
    (r"Tech Founders", ["tech_founder", "business_leader"]),
    (r"Athletes", ["athlete"]),
    (r"Entertainers", ["entertainer", "media"]),
    (r"Religious", ["religious_leader"]),
    (r"Military", ["military_leader"]),
    (r"Secretaries of State", ["politician", "diplomat"]),
    (r"Chief Justices", ["judge", "chief_justice"]),
    (r"Astronauts", ["astronaut", "explorer"]),
    (r"Native American", ["native_american_leader"]),
    (r"Other Notable", ["notable_american"]),
    (r"Recent History", ["contemporary"]),
    (r"Hottest Living", ["contemporary", "celebrity"]),
]


def parse_dimensions(filepath: str) -> list[dict]:
    """Read the people file and assign dimension tags to each name."""
    import re as _re
    people = []
    current_section = None
    with open(filepath) as f:
        for line in f:
            line = line.rstrip()
            if not line:
                continue
            if line.startswith("#"):
                # section header like "# === US Presidents (46) ==="
                # extract just the descriptive part
                m = _re.search(r"#\s*={0,3}\s*(.*?)(?:\s*\(\d+\))?\s*={0,3}\s*$", line)
                if m:
                    current_section = m.group(1).strip()
                else:
                    current_section = line.lstrip("# ").strip()
                continue
            # Person line
            tags = ["uncategorized"]
            if current_section:
                for pattern, t in DIMENSION_PATTERNS:
                    if _re.search(pattern, current_section, _re.IGNORECASE):
                        tags = t
                        break
            people.append({
                "name": line,
                "section": current_section,
                "tags": tags,
            })
    return people


def main():
    import sys
    filepath = sys.argv[1] if len(sys.argv) > 1 else "packages/db/seed/people_us_500.txt"
    outpath = sys.argv[2] if len(sys.argv) > 2 else "people_us_500_dimensions.json"

    people = parse_dimensions(filepath)
    print(f"Parsed {len(people)} people")

    # Tag statistics
    tag_counts = {}
    for p in people:
        for t in p["tags"]:
            tag_counts[t] = tag_counts.get(t, 0) + 1
    print(f"\nTag distribution:")
    for tag, count in sorted(tag_counts.items(), key=lambda x: -x[1])[:25]:
        print(f"  {tag:<25} {count:>3}")

    with open(outpath, "w") as f:
        json.dump({"people": people, "tag_counts": tag_counts}, f, indent=2)
    print(f"\nWrote {outpath}")


if __name__ == "__main__":
    main()
