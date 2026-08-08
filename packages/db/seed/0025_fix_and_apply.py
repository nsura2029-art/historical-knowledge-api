#!/usr/bin/env python3
"""
0025_fix_and_apply.py — Patch the 0025_people_us_500.sql to:
1. Remove the non-existent person.primary_profession column reference
2. Add entity_tag rows so the new tag table is populated

This is a one-time patch. Reads the existing 0025_people_us_500.sql,
rewrites it, and applies to D1.
"""

import json
import re
import subprocess
import sys
import time


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


def load_dimensions():
    with open("packages/db/seed/people_us_500_dimensions.json") as f:
        return json.load(f)


def tag_for(name, dims):
    for p in dims:
        if p["name"] == name:
            return p["tags"]
    return None


def patch_sql(in_path, out_path, dims):
    """Read 0025 SQL, remove broken primary_profession col, add entity_tag inserts."""
    with open(in_path) as f:
        sql = f.read()

    # 1. Remove the broken primary_profession column from person INSERTs
    # Original: "  ('ent_xxx', NULL, 'United States', NULL, NULL);"
    # Where: id, short_description, primary_profession, nationality, birth_year, death_year
    # But the column doesn't exist. Replace primary_profession with empty string.
    sql = re.sub(
        r"VALUES\n\s*\('(ent_[^']+)', NULL, '([^']*)', 'United States', (\d+|NULL), (\d+|NULL)\);",
        lambda m: f"VALUES\n  ('{m.group(1)}', NULL, 'United States', {m.group(3)}, {m.group(4)});",
        sql
    )

    # 2. Find all entity INSERTs and append entity_tag INSERTs
    entity_pattern = re.compile(
        r"INSERT OR IGNORE INTO entity\n\s*\(id, type, slug, canonical_name[^)]+\)\n"
        r"VALUES\n\s*\('(ent_[^']+)', 'person', '([^']+)', '([^']+)', [^;]+;"
    )

    tag_inserts = []
    tag_seen = set()
    for m in entity_pattern.finditer(sql):
        ent_id = m.group(1)
        slug = m.group(2)
        name = m.group(3)
        tags = tag_for(name, dims["people"])
        if not tags:
            continue
        for tag in tags:
            tag_id = f"tag_{tag}"
            if tag_id not in tag_seen:
                tag_seen.add(tag_id)
                # Insert the tag (one-time per tag)
                label = tag.replace("_", " ").title()
                category = "profession" if tag not in ("contemporary", "notable_american") else "dimension"
                tag_inserts.append(
                    f"INSERT OR IGNORE INTO tag (id, label, category, display_order) "
                    f"VALUES ('{tag_id}', '{label}', '{category}', 100);"
                )
            # Insert the entity-tag link
            et_id = f"et_{slug}_{tag}"
            tag_inserts.append(
                f"INSERT OR IGNORE INTO entity_tag (id, entity_id, tag_id, source, confidence) "
                f"VALUES ('{et_id}', '{ent_id}', '{tag_id}', 'curated', 1.0);"
            )

    # 3. Append the tag inserts at the end
    sql += "\n\n-- ========================================\n-- Entity tag assignments\n-- ========================================\n"
    sql += "\n".join(tag_inserts) + "\n"

    with open(out_path, "w") as f:
        f.write(sql)
    print(f"wrote {out_path} ({len(tag_inserts)} tag inserts)")


def main():
    dims = load_dimensions()
    patch_sql(
        "packages/db/migrations/0025_people_us_500.sql",
        "packages/db/migrations/0025_people_us_500_patched.sql",
        dims
    )


if __name__ == "__main__":
    main()
