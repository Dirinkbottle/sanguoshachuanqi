#!/usr/bin/env python3
"""Build per-module navigation outlines from the recovered disassemblies."""

import csv
import re
from pathlib import Path


HERE = Path(__file__).resolve().parent
RECOVERED = HERE.parent / "Recovered"
STATUS = RECOVERED / "recovery_status.csv"
SCRIPT_RE = re.compile(r"^--- SCRIPT (.+?):(\d+) ---$")
FUNCTION_RE = re.compile(r"^;; function object\[(\d+)\] (.+)$")
INPUT_RE = re.compile(r"^;; Input: (.+)$")
OP_RE = re.compile(r"^\d{5,}:\s+")


def outline(row):
    disasm = RECOVERED / row["output_path"]
    lines = disasm.read_text(encoding="utf-8", errors="replace").splitlines()
    source_path = "(embedded source path unavailable)"
    pending_function = None
    functions = []
    script_count = 0
    for line in lines:
        match = INPUT_RE.match(line)
        if match:
            source_path = match.group(1)
        match = FUNCTION_RE.match(line)
        if match:
            pending_function = (match.group(1), match.group(2))
            continue
        match = SCRIPT_RE.match(line)
        if match:
            script_count += 1
            if pending_function:
                functions.append((match.group(2), pending_function[0], pending_function[1]))
                pending_function = None

    module = row["relative_path"][:-4] + ".js"
    text = [
        "# `{}`".format(module),
        "",
        "- Original embedded path: `{}`".format(source_path),
        "- XDR decode: `{}`; bytecode scripts: {}; instructions: {}".format(
            row["status"], row["bytecode_scripts"], row["instructions"]),
        "- Full instruction listing: `{}`".format(row["output_path"]),
        "",
        "This is a navigation outline generated from names and line metadata",
        "retained in the compiled bytecode. It is not the original JavaScript text.",
        "",
        "## Function bodies",
        "",
    ]
    if functions:
        text.extend(["| Original line | Object index | Recovered name |", "|---:|---:|---|"])
        text.extend("| {} | {} | `{}` |".format(line, index, name) for line, index, name in functions)
    else:
        text.append("No nested interpreted functions were present in this script.")
    text.append("")
    target = disasm.with_name(disasm.name.replace(".disasm.txt", ".structure.md"))
    target.write_text("\n".join(text), encoding="utf-8")
    return script_count, len(functions)


def main():
    rows = list(csv.DictReader(STATUS.open(encoding="utf-8")))
    scripts = functions = 0
    for row in rows:
        current_scripts, current_functions = outline(row)
        scripts += current_scripts
        functions += current_functions
    print("wrote {} outlines; {} decoded scripts; {} nested function entries".format(
        len(rows), scripts, functions))


if __name__ == "__main__":
    main()
