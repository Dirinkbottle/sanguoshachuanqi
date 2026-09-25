#!/usr/bin/env python3
"""Batch-decode the game's SpiderMonkey 22 XDR scripts to bytecode listings."""

import argparse
import concurrent.futures
import csv
import os
import re
import subprocess
from pathlib import Path


WORKSPACE = Path(__file__).resolve().parents[2]
DEFAULT_INPUT = WORKSPACE / "raw" / "assets"
DEFAULT_OUTPUT = Path(__file__).resolve().parents[1] / "Recovered"
SCRIPT_RE = re.compile(r"^--- SCRIPT ", re.MULTILINE)
OP_RE = re.compile(r"^\d{5,}:\s+", re.MULTILINE)
FUNCTION_RE = re.compile(r"^;; function object\[\d+\] (.+)$", re.MULTILINE)


def run_one(decoder, source_root, output_root, tree, source):
    relative = source.relative_to(source_root / tree)
    output_relative = relative.with_suffix(".js.disasm.txt")
    target = output_root / tree / output_relative
    target.parent.mkdir(parents=True, exist_ok=True)
    result = subprocess.run(
        [str(decoder), str(source), str(target)],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    record = {
        "tree": tree,
        "relative_path": relative.as_posix(),
        "output_path": target.relative_to(output_root).as_posix(),
        "input_bytes": source.stat().st_size,
        "status": "ok" if result.returncode == 0 else "error",
        "bytecode_scripts": 0,
        "instructions": 0,
        "functions": 0,
        "error": result.stderr.strip(),
    }
    if result.returncode == 0:
        text = target.read_text(encoding="utf-8", errors="replace")
        record["bytecode_scripts"] = len(SCRIPT_RE.findall(text))
        record["instructions"] = len(OP_RE.findall(text))
        record["functions"] = len(FUNCTION_RE.findall(text))
    else:
        target.unlink(missing_ok=True)
    return record


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--decoder",
        default=os.environ.get("SGSCQ_JSC_DISASM"),
        required=os.environ.get("SGSCQ_JSC_DISASM") is None,
        help="compiled SpiderMonkey v22 debug disassembler executable",
    )
    parser.add_argument("--input", type=Path, default=DEFAULT_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--jobs", type=int, default=min(8, os.cpu_count() or 1))
    args = parser.parse_args()

    decoder = Path(args.decoder).resolve()
    source_root = args.input.resolve()
    output_root = args.output.resolve()
    sources = []
    for tree in ("src_jsc", "data_cn_jsc"):
        sources.extend((tree, p) for p in sorted((source_root / tree).rglob("*.jsc")))
    tasks = [(tree, source) for tree, source in sources]
    output_root.mkdir(parents=True, exist_ok=True)

    records = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, args.jobs)) as pool:
        futures = {
            pool.submit(run_one, decoder, source_root, output_root, tree, source): (tree, source)
            for tree, source in tasks
        }
        for count, future in enumerate(concurrent.futures.as_completed(futures), start=1):
            record = future.result()
            records.append(record)
            if count % 50 == 0 or count == len(tasks):
                print("decoded {}/{} scripts".format(count, len(tasks)), flush=True)

    records.sort(key=lambda row: (row["tree"], row["relative_path"]))
    report = output_root / "recovery_status.csv"
    columns = [
        "tree", "relative_path", "output_path", "input_bytes", "status",
        "bytecode_scripts", "instructions", "functions", "error",
    ]
    with report.open("w", newline="", encoding="utf-8") as stream:
        writer = csv.DictWriter(stream, fieldnames=columns)
        writer.writeheader()
        writer.writerows(records)

    ok = sum(row["status"] == "ok" for row in records)
    print("finished: {}/{} decoded; report: {}".format(ok, len(records), report))
    if ok != len(records):
        raise SystemExit(1)


if __name__ == "__main__":
    main()
