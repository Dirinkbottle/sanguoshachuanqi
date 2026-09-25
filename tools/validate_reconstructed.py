#!/usr/bin/env python3
"""Parse every reconstructed JS file and check statically known module paths."""

import argparse
import csv
import json
import re
import shutil
import subprocess
from collections import Counter
from pathlib import Path


PROJECT = Path(__file__).resolve().parents[1]
RECOVERED = PROJECT / "Recovered"
DEFAULT_ROOT = PROJECT / "ReconstructedJS"
REQUIRE_RE = re.compile(r"\brequire\s*\(\s*(['\"])(.*?)\1\s*\)")
NODE_CHECK = r'''const fs = require("fs"), path = require("path"), vm = require("vm");
const root = path.resolve(process.argv[1]);
let files = [];
function walk(dir) {
  for (const ent of fs.readdirSync(dir, {withFileTypes:true})) {
    const full = path.join(dir, ent.name);
    if (ent.isDirectory()) walk(full);
    else if (ent.isFile() && ent.name.endsWith(".js")) files.push(full);
  }
}
walk(root); files.sort();
let errors = [];
for (const file of files) {
  try { new vm.Script(fs.readFileSync(file, "utf8"), {filename:file}); }
  catch (e) { errors.push({file:path.relative(root,file), error:String(e.message)}); }
}
process.stdout.write(JSON.stringify({files:files.length, errors}));
'''


def output_for_jsc(root, jsc):
    if not jsc.endswith(".jsc"):
        return None
    return root / (jsc[:-4] + ".js")


def read_rows(path):
    with path.open(newline="", encoding="utf-8") as stream:
        return list(csv.DictReader(stream))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=DEFAULT_ROOT)
    args = parser.parse_args()
    root = args.root.resolve()
    if not root.is_dir():
        parser.error("reconstruction directory does not exist: " + str(root))

    node = shutil.which("node")
    if not node:
        parser.error("Node.js is required for JavaScript syntax validation")
    parsed = subprocess.run([node, "--stack_size=8192", "-e", NODE_CHECK, str(root)], text=True,
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=False)
    if parsed.returncode != 0:
        parser.error("Node syntax checker failed: " + parsed.stderr.strip())
    syntax = json.loads(parsed.stdout)

    dependency_rows = read_rows(RECOVERED / "dependencies.csv")
    dependency_targets = set()
    missing_targets = []
    for row in dependency_rows:
        source, target = row.get("from", ""), row.get("to", "")
        out = output_for_jsc(root, target)
        if out is None:
            missing_targets.append({"from": source, "to": target, "reason": "target is not a .jsc path"})
            continue
        dependency_targets.add((source, target))
        if not out.is_file():
            missing_targets.append({"from": source, "to": target, "expected": out.relative_to(root).as_posix()})

    require_refs = []
    unresolved_require = []
    for js_file in sorted(root.rglob("*.js")):
        text = js_file.read_text(encoding="utf-8", errors="replace")
        for match in REQUIRE_RE.finditer(text):
            spec = match.group(2)
            if not spec.startswith("."):
                continue
            candidates = [js_file.parent / spec]
            if not spec.endswith(".js"):
                candidates += [js_file.parent / (spec + ".js"), js_file.parent / spec / "index.js"]
            resolved = next((p for p in candidates if p.is_file()), None)
            ref = {"from": js_file.relative_to(root).as_posix(), "literal": spec}
            require_refs.append(ref)
            if resolved is None:
                unresolved_require.append(ref)

    reports = sorted(root.rglob("*.recovery.json"))
    recovery_rows = [json.loads(p.read_text(encoding="utf-8")) for p in reports]
    modules = len(recovery_rows)
    instruction_count = sum(row.get("instructions", 0) for row in recovery_rows)
    translated_count = sum(row.get("translatedOpcodeInstructions", 0) for row in recovery_rows)
    unresolved_opcodes = Counter()
    todo_opcodes = Counter()
    for row in recovery_rows:
        unresolved_opcodes.update(row.get("unresolvedOpcodes", {}))
        todo_opcodes.update(row.get("emittedTodoMarkersByOpcode", {}))
    review = [row for row in recovery_rows if row.get("manualReviewRecommended")]
    cfg_anomalies = sum(len(row.get("cfg", {}).get("anomalies", [])) for row in recovery_rows)
    output_files = syntax["files"]
    disassemblies = list(RECOVERED.rglob("*.js.disasm.txt"))
    syntax_ok = not syntax["errors"]
    deps_ok = not missing_targets and not unresolved_require

    report = {
        "reconstructedModules": modules,
        "inputDisassemblies": len(disassemblies),
        "javascriptFiles": output_files,
        "syntax": {"parser": "Node.js vm.Script", "ok": syntax_ok, "errors": syntax["errors"]},
        "instructionRecovery": {"translated": translated_count, "total": instruction_count,
                                "weightedRate": round(translated_count / max(1, instruction_count), 6)},
        "dependencies": {"knownEdges": len(dependency_rows), "resolvedEdges": len(dependency_rows) - len(missing_targets),
                         "missingTargets": missing_targets, "literalRequireCalls": len(require_refs),
                         "unresolvedRelativeRequireCalls": unresolved_require, "closed": deps_ok},
        "cfgAnomalyCount": cfg_anomalies,
        "unresolvedOpcodes": dict(sorted(unresolved_opcodes.items())),
        "emittedTodoMarkersByOpcode": dict(sorted(todo_opcodes.items())),
        "manualReviewModuleCount": len(review),
        "manualReviewModules": [{"output": row["output"], "rate": row["recoveryRate"],
                                 "unresolvedOpcodes": row["unresolvedOpcodes"],
                                 "cfgAnomalies": row["cfg"]["anomalies"]}
                                for row in review],
        "complete": modules == len(disassemblies) and syntax_ok and deps_ok,
    }
    (root / "validation_report.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    shutil.copy2(RECOVERED / "load_order.md", root / "load_order.md")
    shutil.copy2(RECOVERED / "dependencies.csv", root / "dependencies.csv")

    readme = """# Reconstructed JavaScript tree

This tree contains approximate, source-informed JavaScript reconstructed from
the SpiderMonkey v22 bytecode listings in `../Recovered/`. It is not recovered
original source text. Unreliable regions are marked `TODO_BYTECODE` and each
module has a matching `.recovery.json` report.

## Layout and evidence

- `src_jsc/` and `data_cn_jsc/` retain the input directory layout.
- `load_order.md` and `dependencies.csv` preserve the recovered startup walk
  and literal module references.
- Opcode names, formats and static stack effects are read from
  `../toolchain/SpiderMonkey-v22/js/src/jsopcode.tbl` at reconstruction time.
- Branch, iterator and closure behavior was cross-checked against
  `jsinterp.cpp`, `jsopcode.cpp`, `jsopcode.tbl`, and `jsfriendapi.h` in that
  matching SpiderMonkey v22 source tree.
- `tools/reconstruct_js.py` builds basic blocks, propagates stack heights,
  simulates expressions and structures recognized conditionals, loops,
  iterator loops and switches.

## Validation

`validation_report.json` records parser results, dependency closure, weighted
opcode translation rate and modules needing manual review. Syntax validation
uses Node.js as a parser only; it does not execute the game or establish
compatibility with the older Cocos2d-x JavaScript runtime. Function bodies that
cannot be linked, exception/scope operations that cannot be reconstructed,
and any unsupported bytecode remain explicitly marked for review.

Re-run with:

```sh
python3 tools/reconstruct_js.py
python3 tools/validate_reconstructed.py
```
"""
    (root / "README.md").write_text(readme, encoding="utf-8")

    print("modules: {} / {}".format(modules, len(disassemblies)))
    print("JavaScript parse: {}/{} files".format(output_files - len(syntax["errors"]), output_files))
    print("dependency closure: {}/{} known edges".format(report["dependencies"]["resolvedEdges"], len(dependency_rows)))
    print("weighted opcode translation: {:.2%}".format(report["instructionRecovery"]["weightedRate"]))
    print("manual review modules: {}".format(len(review)))
    print("report: {}".format(root / "validation_report.json"))
    return 0 if report["complete"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
