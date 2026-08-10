#!/usr/bin/env python3
"""Rank the missing famous Americans by appearance frequency in authoritative lists."""
import json
import os
import re
import sys
import unicodedata

# Suppress import side-effects
os.environ.setdefault('NO_DIFF_PRINT', '1')

# Re-import the lists without running the main diff logic.
# To avoid running the full diff, we extract the list definitions by re-parsing
# the source file and evaluating just the list assignments.

import importlib.util
spec = importlib.util.spec_from_file_location(
    "diff_lists",
    "/workspace/historical-knowledge-api/packages/db/seed/diff_famous_americans.py"
)
# We can't easily skip the main() execution. Instead, exec the source up to the
# 'Combine all and dedupe' comment.
src_path = "/workspace/historical-knowledge-api/packages/db/seed/diff_famous_americans.py"
with open(src_path) as f:
    src = f.read()
# Cut off everything after the 'Combine all and dedupe' comment
cut = src.find('# Combine all and dedupe')
module_src = src[:cut]
ns = {}
exec(module_src, ns)

US_PRESIDENTS = ns['US_PRESIDENTS']
OTD_1_100 = ns['OTD_1_100']
OTD_101_200 = ns['OTD_101_200']
OTD_201_300 = ns['OTD_201_300']
OTD_401_500 = ns['OTD_401_500']
BRITANNICA_SMITHSONIAN = ns['BRITANNICA_SMITHSONIAN']
FORBES_400 = ns['FORBES_400']
FORBES_MPW = ns['FORBES_MPW']
TIME_100 = ns['TIME_100']
AMERICAN_NOBEL = ns['AMERICAN_NOBEL']

d = json.load(open('/workspace/historical-knowledge-api/packages/db/seed/step0_missing_americans.json'))

all_lists = {
    'presidents': US_PRESIDENTS,
    'otd_1_100': OTD_1_100,
    'otd_101_200': OTD_101_200,
    'otd_201_300': OTD_201_300,
    'otd_401_500': OTD_401_500,
    'britannica_smithsonian': BRITANNICA_SMITHSONIAN,
    'forbes_400': FORBES_400,
    'forbes_mpw': FORBES_MPW,
    'time_100': TIME_100,
    'nobel': AMERICAN_NOBEL,
}

def norm(s):
    s = unicodedata.normalize('NFKD', s).encode('ascii', 'ignore').decode('ascii')
    s = s.lower()
    s = re.sub(r'[^a-z0-9 ]', '', s)
    s = re.sub(r'\s+', ' ', s).strip()
    return s

list_names = {k: {norm(n) for n in v} for k, v in all_lists.items()}

scores = {}
for name in d['missing']:
    n = norm(name)
    score = 0
    sources = []
    for list_name, names in list_names.items():
        if n in names:
            score += 1
            sources.append(list_name)
    if score > 0:
        scores[name] = (score, sources)

ranked = sorted(scores.items(), key=lambda x: (-x[1][0], x[0]))
print('Total missing with score:', len(ranked))
print()
print('Top 50 priority missing:')
for name, (score, sources) in ranked[:50]:
    sources_str = ','.join(sources)
    print(f'  {score}x  {name:30} ({sources_str})')
print()

# Save ranked list
with open('/tmp/ranked_missing.json', 'w') as f:
    json.dump([{'name': n, 'score': s[0], 'sources': s[1]} for n, s in ranked], f, indent=2)
with open('/tmp/people_to_add.txt', 'w') as f:
    for name, (score, sources) in ranked[:200]:
        f.write(name + '\n')
print('Saved top 200 to /tmp/people_to_add.txt')
print('Total with score 2+:', sum(1 for _, (s, _) in ranked if s >= 2))
print('Total with score 3+:', sum(1 for _, (s, _) in ranked if s >= 3))
