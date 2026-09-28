#!/usr/bin/env python3
"""Build a conservative Native API evidence matrix from the current inventory.

This only records observations. It deliberately leaves ABI details, runtime
reachability, classification, and behavior verification unknown until those are
established by source, disassembly, or an executable probe.
"""

from __future__ import annotations

import csv
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
INVENTORY = ROOT / "Recovered" / "native_api_inventory.json"
OUTPUT = ROOT / "artifacts" / "native-port" / "api-matrix.csv"
SOURCE_ROOT = ROOT / "ReconstructedJS"

FIELDS = [
    "interface_kind",
    "name",
    "class_or_namespace",
    "original_symbol_or_address",
    "call_sites",
    "prototype_overloads",
    "parameters_and_defaults",
    "return_value",
    "object_ownership",
    "thread_and_callbacks",
    "error_and_boundary_behavior",
    "runtime_reachability",
    "implementation_location",
    "classification",
    "evidence",
    "verification_method",
    "verification_result",
]


def locations(sites: list[dict[str, object]]) -> str:
    values = sorted({f"{site['file']}:{site['line']}" for site in sites})
    return ";".join(values) if values else "unknown"


def source_references(name: str, sources: list[tuple[Path, list[str]]]) -> str:
    refs = []
    for path, lines in sources:
        for number, line in enumerate(lines, 1):
            if name in line:
                refs.append(f"{path.relative_to(SOURCE_ROOT).as_posix()}:{number}")
    return ";".join(refs) if refs else "no literal reference found in reconstructed JS"


def row(kind: str, name: str, owner: str, sites: str, impl: str, evidence: str) -> dict[str, str]:
    return {
        "interface_kind": kind,
        "name": name,
        "class_or_namespace": owner or "unknown",
        "original_symbol_or_address": "unknown; resolve against recorded oracle symbol dump",
        "call_sites": sites,
        "prototype_overloads": "unknown",
        "parameters_and_defaults": "unknown",
        "return_value": "unknown",
        "object_ownership": "unknown",
        "thread_and_callbacks": "unknown",
        "error_and_boundary_behavior": "unknown",
        "runtime_reachability": "candidate observed statically; scene reachability unverified",
        "implementation_location": impl,
        "classification": "UNRESOLVED",
        "evidence": evidence,
        "verification_method": "not yet selected",
        "verification_result": "not run",
    }


def main() -> None:
    inventory = json.loads(INVENTORY.read_text(encoding="utf-8"))
    sources = [
        (path, path.read_text(encoding="utf-8", errors="replace").splitlines())
        for path in sorted(SOURCE_ROOT.rglob("*.js"))
    ]
    rows: list[dict[str, str]] = []

    for entry in inventory["member_uses"]:
        api = entry["api"]
        owner = api.split(".", 1)[0]
        rows.append(row(
            "js_member_candidate", api, owner, locations(entry["sites"]),
            "stock Cocos/JSB binding or project JS; exact binding not resolved",
            "Recovered/native_api_inventory.json member_uses; reconstructed JS is approximate",
        ))

    for entry in inventory["bridge_invokes"]:
        name = f"{entry['class']}.{entry['method']}"
        rows.append(row(
            "JsbConnecter.invoke", name, entry["class"], locations(entry["sites"]),
            "Resources/assets/jsb_compat.js (current JS facade; per-method semantics unverified)",
            "Recovered/native_api_inventory.json bridge_invokes",
        ))

    for entry in inventory["cpp2jsb_callbacks"]:
        callback = entry["callback"]
        rows.append(row(
            "cpp2jsb_callback", callback, "cpp2jsb", locations(entry["sites"]),
            "Resources/assets/reconstructed/src_jsc/cpp2jsb.js; producer not yet mapped",
            "Recovered/native_api_inventory.json cpp2jsb_callbacks",
        ))

    for wrapper in inventory["oracle_custom_wrapper_functions"]:
        owner = wrapper.split("_", 1)[0]
        rows.append(row(
            "oracle_custom_wrapper", wrapper, owner, source_references(owner, sources),
            "ClientProject/Classes/Native/sgscq_custom_jsb.cpp for BFButton; other wrappers absent",
            "oracle libcocos2djs.so dynamic symbol inventory; wrapper address pending",
        ))

    for entry in inventory["oracle_registered_types"]:
        name = entry["type"]
        rows.append(row(
            "oracle_registered_type", name, name, source_references(name, sources),
            "Cocos/JSB stock registration or custom registration; owner not resolved",
            "oracle libcocos2djs.so JSB registration strings",
        ))

    for name in inventory["oracle_registration_functions"]:
        rows.append(row(
            "oracle_registration_function", name, "JSB registration", "unknown",
            "Cocos/JSB registration chain; exact current counterpart not resolved",
            "oracle libcocos2djs.so dynamic symbol inventory",
        ))

    for name in inventory["oracle_native_bridge_symbols"]:
        rows.append(row(
            "oracle_native_bridge_symbol", name, name.split("::", 1)[0], "unknown",
            "no equivalent native class found in ClientProject/Classes/Native",
            "oracle libcocos2djs.so dynamic symbol inventory",
        ))

    rows.sort(key=lambda item: (item["interface_kind"], item["name"]))
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    with OUTPUT.open("w", encoding="utf-8", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=FIELDS)
        writer.writeheader()
        writer.writerows(rows)
    print(f"Wrote {OUTPUT}: {len(rows)} evidence rows; all unproven fields remain unknown/UNRESOLVED")


if __name__ == "__main__":
    main()
