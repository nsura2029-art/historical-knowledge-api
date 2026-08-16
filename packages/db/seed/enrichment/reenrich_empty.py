#!/usr/bin/env python3
"""Re-enrich the empty entries that failed in the first batch."""
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
print(f"Re-enriching {len(empty)} empty entries", flush=True)
# Process in small batches with long waits
BATCH = 10
for i in range(0, len(empty), BATCH):
    chunk = empty[i:i+BATCH]
    print(f"  batch {i}-{i+len(chunk)} ...", flush=True)
    try:
        chunk_enr = fetch_enrichment(chunk)
        for q, data in chunk_enr.items():
            enr[q] = data
        enr_path.write_text(json.dumps(enr, indent=2, ensure_ascii=False))
        print(f"    saved cumulative enrichment for {len(enr)} people", flush=True)
    except Exception as e:
        print(f"    error: {e}", flush=True)
    time.sleep(3)

# Final check
empty_after = [q for q, e in enr.items()
               if not any(v for k, v in e.items() if v and v != [] and v is not None)]
filled = len(enr) - len(empty_after)
print(f"\nFinal: {filled}/{len(enr)} have enrichment data; {len(empty_after)} still empty", flush=True)
