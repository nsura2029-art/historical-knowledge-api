#!/usr/bin/env python3
"""Refill ALL empty entries by overwriting with fresh enrichment data."""
import json
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from pkg_usa_phase1 import fetch_enrichment

enr_path = Path("/tmp/pkg_usa/enrichment.json")
enr = json.loads(enr_path.read_text())
empty = [q for q, e in enr.items()
         if not any(v for k, v in e.items() if v and v != [] and v is not None)]
print(f"Refilling {len(empty)} empty entries", flush=True)
# Process one at a time to be safe
for i, qid in enumerate(empty):
    try:
        result = fetch_enrichment([qid])
        if result.get(qid) and any(v for k, v in result[qid].items() if v and v != [] and v is not None):
            enr[qid] = result[qid]
            print(f"  [{i+1}/{len(empty)}] {qid}: filled ✓", flush=True)
        else:
            print(f"  [{i+1}/{len(empty)}] {qid}: still empty", flush=True)
        # Save every 5
        if (i + 1) % 5 == 0:
            enr_path.write_text(json.dumps(enr, indent=2, ensure_ascii=False))
        time.sleep(1.5)
    except Exception as e:
        print(f"  [{i+1}/{len(empty)}] {qid}: error {e}", flush=True)
        time.sleep(3)

enr_path.write_text(json.dumps(enr, indent=2, ensure_ascii=False))
empty_after = [q for q, e in enr.items()
               if not any(v for k, v in e.items() if v and v != [] and v is not None)]
filled = len(enr) - len(empty_after)
print(f"\nFinal: {filled}/{len(enr)} filled, {len(empty_after)} still empty", flush=True)
