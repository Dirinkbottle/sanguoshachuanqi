#!/usr/bin/env python3
"""Rebuild Cfg/Sprite.js object literals from its SpiderMonkey v22 listing.

This bytecode script is a single nested object literal with no function bodies.
The normal approximate-source emitter currently drops the entire expression,
so this small interpreter handles the literal/object opcodes and cc.rect call.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
DISASM = ROOT / "Recovered/src_jsc/Cfg/Sprite.js.disasm.txt"
OUTPUT = ROOT / "ReconstructedJS/src_jsc/Cfg/Sprite.js"
INSTRUCTION = re.compile(r"\s*(\d+):\s*(\d+)\s+([A-Za-z_][\w]*)(?:\s+(.*))?$")


class CallExpression:
    def __init__(self, receiver: Any, name: str, args: list[Any]):
        self.receiver = receiver
        self.name = name
        self.args = args


class Identifier:
    def __init__(self, name: str):
        self.name = name


def parse_object_literal(text: str) -> dict[str, Any]:
    try:
        instructions = text.split("\nmain:\n", 1)[1].split("--- END SCRIPT", 1)[0]
    except IndexError as exc:
        raise ValueError("main script disassembly was not found") from exc

    values: list[Any] = []
    open_objects: list[dict[str, Any]] = []
    root_object: dict[str, Any] | None = None
    instruction_count = 0

    for line in instructions.splitlines():
        match = INSTRUCTION.match(line)
        if not match:
            continue
        offset, _source_line, opcode, operand = match.groups()
        operand = operand or ""
        instruction_count += 1

        if opcode in {"name", "getprop", "setprop", "popv", "stop", "notearg"}:
            if opcode == "name":
                values.append(Identifier(json.loads(operand)))
            elif opcode == "stop":
                break
            elif opcode == "setprop" and json.loads(operand) != "Sprite":
                raise ValueError(f"unexpected assignment at bytecode pc {offset}")
        elif opcode == "newinit":
            value: dict[str, Any] = {}
            values.append(value)
            open_objects.append(value)
            if root_object is None:
                root_object = value
        elif opcode == "string":
            values.append(json.loads(operand))
        elif opcode in {"zero", "one"}:
            values.append(0 if opcode == "zero" else 1)
        elif opcode in {"int8", "uint16", "int16", "int32"}:
            values.append(int(operand, 0))
        elif opcode == "dup":
            values.append(values[-1])
        elif opcode == "callprop":
            receiver = values[-1]
            values[-1] = ("bound-call", receiver, json.loads(operand))
        elif opcode == "swap":
            values[-1], values[-2] = values[-2], values[-1]
        elif opcode == "call":
            arg_count = int(operand)
            args = values[-arg_count:] if arg_count else []
            if arg_count:
                del values[-arg_count:]
            receiver = values.pop()
            callee = values.pop()
            if not isinstance(callee, tuple) or callee[0] != "bound-call":
                raise ValueError(f"unsupported call expression at bytecode pc {offset}")
            values.append(CallExpression(callee[1], callee[2], args))
        elif opcode == "initprop":
            if not open_objects:
                raise ValueError(f"property initializer has no open object at bytecode pc {offset}")
            open_objects[-1][json.loads(operand)] = values.pop()
        elif opcode == "endinit":
            if not open_objects:
                raise ValueError(f"object initializer underflow at bytecode pc {offset}")
            open_objects.pop()
        else:
            raise ValueError(f"unsupported opcode {opcode!r} at bytecode pc {offset}")

    # The existing recovery report counted only through source line 999. After
    # that, SpiderMonkey v22 omits whitespace between the bytecode offset and
    # four digit source line; the parser here intentionally accepts both forms.
    if instruction_count != 3410:
        raise ValueError(f"expected 3410 instructions, parsed {instruction_count}")
    if root_object is None or open_objects:
        raise ValueError("Cfg.Sprite object literal did not close cleanly")
    for required in ("Cmn01", "Cmn02", "Cmn03"):
        group = root_object.get(required)
        if not isinstance(group, dict) or not isinstance(group.get("plist"), str):
            raise ValueError(f"missing sprite atlas group {required}")
    return root_object


def to_js(value: Any, depth: int = 0) -> str:
    indent = "    " * depth
    child_indent = "    " * (depth + 1)
    if isinstance(value, dict):
        if not value:
            return "{}"
        lines = ["{"]
        for key, child in value.items():
            lines.append(f"{child_indent}{json.dumps(key, ensure_ascii=False)}: {to_js(child, depth + 1)},")
        lines.append(f"{indent}}}")
        return "\n".join(lines)
    if isinstance(value, CallExpression):
        args = ", ".join(to_js(arg, depth) for arg in value.args)
        return f"{to_js(value.receiver, depth)}.{value.name}({args})"
    if isinstance(value, Identifier):
        return value.name
    if isinstance(value, str):
        return json.dumps(value, ensure_ascii=False)
    if value is None or isinstance(value, (bool, int, float)):
        return json.dumps(value)
    raise TypeError(f"cannot emit value of type {type(value).__name__}")


def main() -> None:
    cfg = parse_object_literal(DISASM.read_text(encoding="utf-8"))
    OUTPUT.write_text(
        "// Reconstructed from SpiderMonkey v22 object-literal bytecode.\n"
        "// The input retained exact resource strings and object structure; it was not original source text.\n"
        f"xs.Cfg.Sprite = {to_js(cfg)};\n",
        encoding="utf-8",
    )
    print(f"Rebuilt {len(cfg)} sprite groups at {OUTPUT.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
