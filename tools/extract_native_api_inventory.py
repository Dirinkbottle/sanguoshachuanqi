#!/usr/bin/env python3
"""Extract native-facing API evidence from recovered JS and the oracle library.

RecoveredJS is an approximate reconstruction from SpiderMonkey bytecode. This
tool records observed uses and native library registration strings; it does not
claim that an observed member exists in a clean Cocos build.
"""

from __future__ import annotations

import argparse
import collections
import json
import pathlib
import re
import subprocess
import sys


CHAIN_RE = re.compile(
    r"\b(?P<root>cc|ccs|ccui|jsb|cp|WebSocket)"
    r"(?P<tail>(?:\s*\.\s*[A-Za-z_$][\w$]*)+)"
)
INVOKE_RE = re.compile(
    r"JsbConnecter\s*\.\s*getInstance\s*\(\s*\)\s*\.\s*invoke\s*\(\s*"
    r"(?P<group>['\"])(?P<class>[^'\"]+)['\"]\s*,\s*"
    r"(?P<method_group>['\"])(?P<method>[^'\"]*)['\"]",
    re.S,
)
CALLBACK_RE = re.compile(r"\bcase\s+(['\"])(?P<name>[^'\"]+)\1\s*:")
JSB_REG_RE = re.compile(r"\bjsb_(?P<class>[A-Za-z0-9_$]+)_(?P<kind>class|prototype)\b")
REG_FN_RE = re.compile(r"\bregister_all_[A-Za-z0-9_$]+\b")
CUSTOM_WRAPPER_RE = re.compile(r"\bjs_xs_sanguosha_(?P<name>[A-Za-z0-9_$]+)\b")


def relative(path: pathlib.Path, root: pathlib.Path) -> str:
    return path.relative_to(root).as_posix()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--project", type=pathlib.Path, default=pathlib.Path(__file__).resolve().parents[1])
    parser.add_argument("--source-root", type=pathlib.Path, help="RecoveredJS root (defaults to PROJECT/ReconstructedJS)")
    parser.add_argument("--oracle-so", type=pathlib.Path, help="Original libcocos2djs.so")
    args = parser.parse_args()

    project = args.project.resolve()
    source_root = (args.source_root or project / "ReconstructedJS").resolve()
    oracle = (args.oracle_so or project.parent / "raw/lib/armeabi/libcocos2djs.so").resolve()
    if not source_root.is_dir():
        parser.error(f"Recovered JS root not found: {source_root}")

    use_sites: dict[str, list[dict[str, object]]] = collections.defaultdict(list)
    invoke_sites: dict[tuple[str, str], list[dict[str, object]]] = collections.defaultdict(list)
    callback_sites: dict[str, list[dict[str, object]]] = collections.defaultdict(list)
    category_sites: dict[str, dict[str, list[dict[str, object]]]] = collections.defaultdict(lambda: collections.defaultdict(list))
    js_files = sorted(source_root.rglob("*.js"))

    for path in js_files:
        text = path.read_text(encoding="utf-8", errors="replace")
        rel = relative(path, source_root)
        if rel.startswith("data_cn_jsc/"):
            category = "config"
        elif rel.startswith("src_jsc/Core/Cocos2d-x/"):
            category = "cocos_jsb_runtime"
        else:
            category = "game_logic"
        for match in CHAIN_RE.finditer(text):
            chain = match.group("root") + re.sub(r"\s*\.\s*", ".", match.group("tail"))
            line = text.count("\n", 0, match.start()) + 1
            site = {"file": rel, "line": line, "category": category}
            use_sites[chain].append(site)
            category_sites[category][chain].append(site)
        for match in INVOKE_RE.finditer(text):
            key = (match.group("class"), match.group("method"))
            line = text.count("\n", 0, match.start()) + 1
            invoke_sites[key].append({"file": rel, "line": line})
        if path.name.lower() == "cpp2jsb.js":
            for match in CALLBACK_RE.finditer(text):
                line = text.count("\n", 0, match.start()) + 1
                callback_sites[match.group("name")].append({"file": rel, "line": line})

    oracle_strings: list[str] = []
    oracle_symbols: list[str] = []
    if oracle.is_file():
        result = subprocess.run(
            ["strings", "-n", "4", str(oracle)],
            check=True,
            stdout=subprocess.PIPE,
            text=True,
            errors="replace",
        )
        oracle_strings = result.stdout.splitlines()
        symbols = subprocess.run(
            ["nm", "-D", "--defined-only", str(oracle)],
            check=True,
            stdout=subprocess.PIPE,
            text=True,
            errors="replace",
        )
        demangled = subprocess.run(
            ["c++filt"],
            input=symbols.stdout,
            check=True,
            stdout=subprocess.PIPE,
            text=True,
            errors="replace",
        )
        oracle_symbols = demangled.stdout.splitlines()

    registered_types: dict[str, set[str]] = collections.defaultdict(set)
    registration_functions: set[str] = set()
    custom_wrappers: set[str] = set()
    native_bridge_methods: set[str] = set()
    for value in oracle_strings:
        m = JSB_REG_RE.search(value)
        if m:
            registered_types[m.group("class")].add(m.group("kind"))
    for value in oracle_symbols:
        registration_functions.update(REG_FN_RE.findall(value))
        custom_wrappers.update(CUSTOM_WRAPPER_RE.findall(value))
        symbol_match = re.match(r"\s*[0-9a-fA-F]+\s+\S\s+(.+)$", value)
        symbol = symbol_match.group(1) if symbol_match else value
        if "JsbConnecter::" in symbol or "Jsb::" in symbol:
            native_bridge_methods.add(symbol)

    namespace_counts: dict[str, list[int]] = collections.defaultdict(lambda: [0, 0])
    for chain, sites in use_sites.items():
        namespace = chain.split(".", 1)[0]
        namespace_counts[namespace][0] += 1
        namespace_counts[namespace][1] += len(sites)

    result_json = {
        "schema": "sgscq-native-api-inventory-v1",
        "evidence_note": (
            "JS member uses come from approximate bytecode reconstructions; "
            "invoke strings, callback labels, and oracle registration names are retained as evidence, "
            "not as proof of clean-build compatibility."
        ),
        "source_root": str(source_root),
        "oracle_library": str(oracle) if oracle.is_file() else None,
        "input_js_files": len(js_files),
        "member_uses": [
            {"api": name, "count": len(sites), "sites": sites}
            for name, sites in sorted(use_sites.items())
        ],
        "member_namespace_summary": [
            {"namespace": name, "distinct_chains": counts[0], "occurrences": counts[1]}
            for name, counts in sorted(namespace_counts.items())
        ],
        "member_use_category_summary": [
            {
                "category": category,
                "distinct_chains": len(chains),
                "occurrences": sum(len(sites) for sites in chains.values()),
            }
            for category, chains in sorted(category_sites.items())
        ],
        "bridge_invokes": [
            {"class": cls, "method": method, "count": len(sites), "sites": sites}
            for (cls, method), sites in sorted(invoke_sites.items())
        ],
        "cpp2jsb_callbacks": [
            {"callback": name, "sites": sites}
            for name, sites in sorted(callback_sites.items())
        ],
        "oracle_registered_types": [
            {"type": name, "registrations": sorted(kinds)}
            for name, kinds in sorted(registered_types.items())
        ],
        "oracle_registration_functions": sorted(registration_functions),
        "oracle_custom_wrapper_functions": sorted(custom_wrappers),
        "oracle_native_bridge_symbols": sorted(native_bridge_methods),
    }

    out_json = project / "Recovered/native_api_inventory.json"
    out_csv = project / "Recovered/native_api_inventory.csv"
    out_md = project / "Recovered/native_api_inventory.md"
    out_json.write_text(json.dumps(result_json, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    csv_rows = ["kind,name,count,source_sites"]
    for entry in result_json["member_uses"]:
        sites = ";".join(f"{s['file']}:{s['line']}" for s in entry["sites"])
        csv_rows.append("member," + json.dumps(entry["api"], ensure_ascii=False) + f",{entry['count']}," + json.dumps(sites, ensure_ascii=False))
    for entry in result_json["bridge_invokes"]:
        name = f"{entry['class']}.{entry['method']}"
        sites = ";".join(f"{s['file']}:{s['line']}" for s in entry["sites"])
        csv_rows.append("invoke," + json.dumps(name, ensure_ascii=False) + f",{entry['count']}," + json.dumps(sites, ensure_ascii=False))
    for entry in result_json["cpp2jsb_callbacks"]:
        sites = ";".join(f"{s['file']}:{s['line']}" for s in entry["sites"])
        csv_rows.append("callback," + json.dumps(entry["callback"], ensure_ascii=False) + f",{len(entry['sites'])}," + json.dumps(sites, ensure_ascii=False))
    for entry in result_json["oracle_registered_types"]:
        csv_rows.append("oracle_type," + json.dumps(entry["type"], ensure_ascii=False) + f",{len(entry['registrations'])}," + json.dumps(";".join(entry["registrations"]), ensure_ascii=False))
    for name in result_json["oracle_registration_functions"]:
        csv_rows.append("oracle_registration," + json.dumps(name, ensure_ascii=False) + ",1,")
    for name in result_json["oracle_custom_wrapper_functions"]:
        csv_rows.append("oracle_custom_wrapper," + json.dumps(name, ensure_ascii=False) + ",1,")
    out_csv.write_text("\n".join(csv_rows) + "\n", encoding="utf-8")

    md = [
        "# Native-facing API inventory",
        "",
        "> This is an evidence index for rebuilding JSB. Member-use paths come from approximate JS reconstructed from bytecode; they are candidates to validate, not proof that a clean native binding provides them.",
        "",
        f"- Reconstructed JavaScript inputs: **{len(js_files)}**",
        f"- Distinct member chains observed: **{len(use_sites)}**",
        f"- Literal `JsbConnecter.invoke` pairs: **{len(invoke_sites)}**",
        f"- `cpp2jsb` callback labels: **{len(callback_sites)}**",
        f"- JSB class/prototype names in oracle `.so`: **{len(registered_types)}**",
        f"- Oracle registration functions: **{len(registration_functions)}**",
        f"- Oracle custom binding wrapper functions: **{len(custom_wrappers)}**",
    ]
    md.extend([
        "",
        "## JS member-use candidates",
        "",
        "The member chains below are direct syntactic observations. The JSON and CSV contain every chain with source locations; game logic, JSB helper code, and configuration are retained as separate source categories in the JSON.",
        "",
        "### Source groups",
        "",
        "| Source group | Distinct chains | Occurrences |",
        "|---|---:|---:|",
    ])
    for entry in result_json["member_use_category_summary"]:
        md.append(f"| `{entry['category']}` | {entry['distinct_chains']} | {entry['occurrences']} |")
    md.extend([
        "",
        "| Namespace | Distinct chains | Occurrences |",
        "|---|---:|---:|",
    ])
    for entry in result_json["member_namespace_summary"]:
        md.append(f"| `{entry['namespace']}` | {entry['distinct_chains']} | {entry['occurrences']} |")
    md.extend(["", "### Most frequent observed chains", "", "| Chain | Uses |", "|---|---:|"])
    for entry in sorted(result_json["member_uses"], key=lambda item: (-item["count"], item["api"]))[:30]:
        md.append(f"| `{entry['api']}` | {entry['count']} |")
    md.extend([
        "",
        "## Native bridge calls",
        "",
        "| Native class | Method | Uses | Evidence |",
        "|---|---|---:|---|",
    ])
    for (cls, method), sites in sorted(invoke_sites.items()):
        locs = ", ".join(f"`{s['file']}:{s['line']}`" for s in sites[:4])
        if len(sites) > 4:
            locs += f", … +{len(sites) - 4}"
        md.append(f"| `{cls}` | `{method or '(empty)'}` | {len(sites)} | {locs} |")
    md.extend([
        "",
        "## C++ to JS callback labels",
        "",
    ])
    for entry in result_json["cpp2jsb_callbacks"]:
        callback_locs = ", ".join("`{}:{}`".format(s["file"], s["line"]) for s in entry["sites"])
        md.append(f"- `{entry['callback']}` — {callback_locs}")
    md.extend([
        "",
        "## Oracle-only registrations",
        "",
        "These names were read from strings preserved in the original shared library. They need comparison against reconstructed JS use sites and historical Cocos bindings.",
        "",
    ])
    for entry in result_json["oracle_registered_types"]:
        md.append(f"- `{entry['type']}` ({', '.join(entry['registrations'])})")
    md.extend(["", "## Oracle custom wrapper functions", ""])
    for name in result_json["oracle_custom_wrapper_functions"]:
        md.append(f"- `{name}`")
    md.extend(["", "## Oracle native bridge symbols", ""])
    for name in result_json["oracle_native_bridge_symbols"]:
        md.append(f"- `{name}`")
    md.extend([
        "",
        "## Generated files",
        "",
        "- `native_api_inventory.json`: detailed evidence and file/line locations.",
        "- `native_api_inventory.csv`: flat importable view.",
        "- `native_api_inventory.md`: review summary.",
        "",
        "Run `python3 tools/extract_native_api_inventory.py` from the project directory to refresh these files.",
    ])
    out_md.write_text("\n".join(md) + "\n", encoding="utf-8")

    print(
        f"Wrote {out_md}, {out_json}, {out_csv}: "
        f"{len(use_sites)} member chains, {len(invoke_sites)} bridge calls, "
        f"{len(callback_sites)} callbacks, {len(registered_types)} oracle types."
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
