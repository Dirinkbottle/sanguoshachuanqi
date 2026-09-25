#!/usr/bin/env python3
"""Conservatively reconstruct readable JavaScript from SpiderMonkey v22 listings.

This emits approximate source. It does not claim to recover the stripped source
text. Opcode stack effects and instruction classes are read from the matching
SpiderMonkey source tree at runtime.
"""

import argparse
import copy
import csv
import json
import re
import shutil
import subprocess
import sys
from collections import Counter, defaultdict, deque
from dataclasses import dataclass, field
from pathlib import Path


PROJECT = Path(__file__).resolve().parents[1]
RECOVERED = PROJECT / "Recovered"
DEFAULT_OUT = PROJECT / "ReconstructedJS"
OPCODE_TABLE = PROJECT / "toolchain/SpiderMonkey-v22/js/src/jsopcode.tbl"
# jsopcode.cpp's v22 disassembler uses a minimum width for source lines, not a
# fixed-width column. Once the line number reaches 1000, output becomes e.g.
# ``07367:1010  initprop`` (there is no space after the colon). Accept both
# layouts; the PC and source line are still separate decimal fields.
INS_RE = re.compile(r"^\s*(\d+):\s*(\d+)\s+([a-z][a-z0-9_]*)\b\s*(.*)$")
SCRIPT_RE = re.compile(r"^--- SCRIPT (.*):(\d+) ---$")
FN_OBJECT_RE = re.compile(r"^;; function object\[(\d+)\] (.*)$")
FN_META_RE = re.compile(r"^;; function metadata object\[(\d+)\] nargs=(\d+) bindings=(\d+)$")
FN_BIND_RE = re.compile(r"^;; (arg|local)\[(\d+)\] (.*)$")
FUNCTION_MAP_RE = re.compile(r"^;; FUNCTION-MAP kind=(lambda|deffun) offset=(\d+) object\[(\d+)\]$")
TRY_NOTE_RE = re.compile(r"^;; TRY-NOTE kind=(catch|finally|iter) start=(\d+) length=(\d+) stackDepth=(\d+) target=(\d+)$")
DEP_PATH_RE = re.compile(r"^\|\s*(\d+)\s*\|\s*`([^`]+\.jsc)`\s*\|")
IDENT_RE = re.compile(r"^[A-Za-z_$][A-Za-z0-9_$]*$")
RESERVED = set("break case catch continue debugger default delete do else finally for function if in instanceof new return switch this throw try typeof var void while with class const enum export extends import super await let yield null true false".split())


def c_fields(text):
    fields, current = [], []
    quoted = False
    escaped = False
    depth = 0
    for ch in text:
        if quoted:
            current.append(ch)
            if escaped:
                escaped = False
            elif ch == "\\":
                escaped = True
            elif ch == '"':
                quoted = False
        elif ch == '"':
            quoted = True
            current.append(ch)
        elif ch == "(":
            depth += 1
            current.append(ch)
        elif ch == ")":
            depth -= 1
            current.append(ch)
        elif ch == "," and depth == 0:
            fields.append("".join(current).strip())
            current = []
        else:
            current.append(ch)
    fields.append("".join(current).strip())
    return fields


def c_string(value):
    if value.startswith('"') and value.endswith('"'):
        try:
            return json.loads(value)
        except Exception:
            return value[1:-1]
    return None


def load_opcode_specs(path):
    aliases = {
        "js_undefined_str": "undefined", "js_null_str": "null",
        "js_this_str": "this", "js_true_str": "true", "js_false_str": "false",
        "js_new_str": "new", "js_typeof_str": "typeof", "js_void_str": "void",
        "js_throw_str": "throw", "js_in_str": "in", "js_instanceof_str": "instanceof",
        "js_getter_str": "getter", "js_setter_str": "setter",
    }
    by_name, by_symbol = {}, {}
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line.startswith("OPDEF(") or not line.endswith(")"):
            continue
        f = c_fields(line[len("OPDEF("):-1])
        if len(f) != 9:
            continue
        symbol, value, name, token, length, uses, defs, prec, fmt = f
        output_name = c_string(name)
        if output_name is None:
            output_name = aliases.get(name, symbol.removeprefix("JSOP_").lower())
        try:
            spec = {
                "symbol": symbol, "value": int(value), "name": output_name,
                "length": int(length), "uses": int(uses), "defs": int(defs),
                "precedence": int(prec), "format": fmt,
                "token": c_string(token),
                "decompose": "JOF_DECOMPOSE" in fmt,
            }
        except ValueError:
            continue
        by_name[output_name] = spec
        by_symbol[symbol] = spec
    if not by_name:
        raise RuntimeError("could not parse opcode definitions from " + str(path))
    return by_name, by_symbol


@dataclass
class Instruction:
    pc: int
    line: int
    op: str
    arg: str = ""
    switch_cases: list = field(default_factory=list)


@dataclass
class Body:
    index: int
    source_path: str
    start_line: int
    depth: int
    function_object: int | None = None
    function_label: str = ""
    arg_names: list = field(default_factory=list)
    local_names: list = field(default_factory=list)
    function_maps: dict = field(default_factory=dict)
    instructions: list = field(default_factory=list)
    children: dict = field(default_factory=dict)
    try_notes: list = field(default_factory=list)


def parse_disassembly(path, outline_path):
    bodies = []
    body_at_depth = {}
    current = None
    upcoming_depth = 0
    upcoming_maps = {}
    upcoming_try_notes = []
    pending_obj = None
    pending_meta = None
    pending_args, pending_locals = {}, {}
    outline_names = {}
    if outline_path.exists():
        for line in outline_path.read_text(encoding="utf-8", errors="replace").splitlines():
            match = re.match(r"^\|\s*(\d+)\s*\|\s*(\d+)\s*\|\s*`([^`]+)`", line)
            if match:
                original_line, obj, name = int(match.group(1)), int(match.group(2)), match.group(3)
                outline_names[(original_line, obj)] = name

    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        if line.startswith(";; nested bytecode depth="):
            try:
                upcoming_depth = int(line.rsplit("=", 1)[1])
            except ValueError:
                upcoming_depth = 0
            continue
        tm = TRY_NOTE_RE.match(line)
        if tm:
            upcoming_try_notes.append({
                "kind": tm.group(1), "start": int(tm.group(2)),
                "length": int(tm.group(3)), "stackDepth": int(tm.group(4)),
                "target": int(tm.group(5)),
            })
            continue
        mm = FUNCTION_MAP_RE.match(line)
        if mm:
            upcoming_maps[int(mm.group(2))] = {"kind": mm.group(1), "object": int(mm.group(3))}
            continue
        fm = FN_OBJECT_RE.match(line)
        if fm:
            pending_obj = (int(fm.group(1)), fm.group(2))
            pending_meta = None
            pending_args, pending_locals = {}, {}
            continue
        fm = FN_META_RE.match(line)
        if fm:
            pending_meta = {"object": int(fm.group(1)), "nargs": int(fm.group(2)), "bindings": int(fm.group(3))}
            continue
        fm = FN_BIND_RE.match(line)
        if fm and pending_meta:
            target = pending_args if fm.group(1) == "arg" else pending_locals
            target[int(fm.group(2))] = fm.group(3)
            continue
        sm = SCRIPT_RE.match(line)
        if sm:
            parent = body_at_depth.get(upcoming_depth - 1) if upcoming_depth else None
            obj, label = pending_obj if pending_obj else (None, "")
            if obj is not None and (int(sm.group(2)), obj) in outline_names:
                label = outline_names[(int(sm.group(2)), obj)]
            body = Body(
                index=len(bodies), source_path=sm.group(1), start_line=int(sm.group(2)),
                depth=upcoming_depth, function_object=obj, function_label=label,
                arg_names=[pending_args[k] for k in sorted(pending_args)],
                local_names=[pending_locals[k] for k in sorted(pending_locals)],
                function_maps=upcoming_maps,
                try_notes=upcoming_try_notes,
            )
            bodies.append(body)
            if parent is not None and obj is not None:
                parent.children[obj] = body
            body_at_depth[upcoming_depth] = body
            current = body
            upcoming_maps = {}
            upcoming_try_notes = []
            pending_obj = None
            pending_meta = None
            pending_args, pending_locals = {}, {}
            continue
        if line.startswith("--- END SCRIPT"):
            current = None
            continue
        if current is not None:
            ins = INS_RE.match(line)
            if ins:
                item = Instruction(int(ins.group(1)), int(ins.group(2)), ins.group(3), ins.group(4).strip())
                current.instructions.append(item)
                continue
            if current.instructions and current.instructions[-1].op == "tableswitch":
                case = re.match(r"^\s*([^:]+):\s*(-?\d+)\s*$", line)
                if case:
                    try:
                        current.instructions[-1].switch_cases.append((int(case.group(1)), int(case.group(2))))
                    except ValueError:
                        pass
    return bodies


def parse_quoted(text):
    match = re.search(r'"(?:\\.|[^"\\])*"', text)
    if not match:
        return None
    try:
        return json.loads(match.group(0))
    except Exception:
        return match.group(0)[1:-1]


def js_string(value):
    return json.dumps(value, ensure_ascii=False).replace("\u2028", "\\u2028").replace("\u2029", "\\u2029")


def valid_identifier(name):
    return bool(IDENT_RE.match(name or "")) and name not in RESERVED


def prop_access(base, prop):
    if valid_identifier(prop):
        return base + "." + prop
    return base + "[" + js_string(prop) + "]"


@dataclass
class Expr:
    text: str
    effect: bool = False
    kind: str = "expr"
    data: object = None
    unknown: bool = False


def source_token(ins, spec):
    if spec and spec.get("token"):
        return spec["token"]
    tokens = {
        "eq": "==", "ne": "!=", "stricteq": "===", "strictne": "!==",
        "lt": "<", "le": "<=", "gt": ">", "ge": ">=", "in": "in",
        "instanceof": "instanceof", "lsh": "<<", "rsh": ">>", "ursh": ">>>",
        "add": "+", "sub": "-", "mul": "*", "div": "/", "mod": "%",
        "bitor": "|", "bitxor": "^", "bitand": "&",
    }
    return tokens.get(ins.op)


def branch_target(ins):
    if ins.op in {"goto", "ifeq", "ifne", "or", "and", "case", "default", "gosub", "backpatch", "try"}:
        match = re.match(r"(-?\d+)", ins.arg)
        return int(match.group(1)) if match else None
    return None


def static_block_bindings(arg):
    """Read the bindings printed by jsopcode.cpp for JSOP_ENTERBLOCK."""
    match = re.search(r"\{(.*)\}", arg)
    if not match:
        return None
    contents = match.group(1).strip()
    if not contents:
        return []
    bindings = []
    for field in c_fields(contents):
        name, separator, _slot = field.partition(":")
        if not separator:
            return None
        name = name.strip()
        try:
            name = json.loads(name) if name.startswith('"') else name
        except json.JSONDecodeError:
            pass
        bindings.append(name)
    return bindings


def static_block_slots(arg):
    bindings = static_block_bindings(arg)
    return len(bindings) if bindings is not None else None


def stack_effect(ins, specs):
    spec = specs.get(ins.op)
    if not spec:
        return None, None
    # SpiderMonkey v22's jsopcode.cpp::SimulateOp returns without touching
    # the simulated stack for compiler-expanded increment/decrement opcodes.
    if spec.get("decompose"):
        return 0, 0
    uses, defs = spec["uses"], spec["defs"]
    argnum = re.match(r"(-?\d+)", ins.arg)
    immediate = int(argnum.group(1)) if argnum else None
    if ins.op in {"call", "new", "eval", "funcall", "funapply"} and immediate is not None:
        return immediate + 2, 1
    if ins.op in {"popn", "leaveblock"} and immediate is not None:
        return immediate, 0
    if ins.op == "leaveblockexpr" and immediate is not None:
        return immediate + 1, 1
    if ins.op == "enterblock":
        slots = static_block_slots(ins.arg)
        return (0, slots) if slots is not None else (None, None)
    if ins.op in {"try", "enterlet0", "enterlet1", "leaveforletin"}:
        return 0, 0
    if ins.op in {"leaveblockexpr"}:
        return None, None
    if uses < 0 or defs < 0:
        return None, None
    return uses, defs


TERMINAL_OPS = {"stop", "return", "retrval", "throw", "throwing"}
BRANCH_OPS = {"goto", "ifeq", "ifne", "or", "and", "case", "default", "gosub", "backpatch", "tableswitch", "try"}


def cfg_analysis(body, specs):
    insns = body.instructions
    if not insns:
        # A zero-bytecode function object is legal and common in this dump
        # (for example, empty callbacks); report its presence separately.
        return {"blocks": 0, "edges": 0, "stackMergeConflicts": 0, "anomalies": [], "unreachableBlocks": 0, "emptyBody": True}
    pcs = [ins.pc for ins in insns]
    index_by_pc = {pc: i for i, pc in enumerate(pcs)}
    end_pc = pcs[-1] + (specs.get(insns[-1].op, {}).get("length", 1) or 1)
    leaders = {0}
    anomalies = []
    targets_by_ins = {}
    try_target_pcs = {note["target"] for note in body.try_notes}
    for target in try_target_pcs:
        if target in index_by_pc:
            leaders.add(index_by_pc[target])
        elif target != end_pc:
            anomalies.append("try note target {} is not an instruction boundary".format(target))
    for i, ins in enumerate(insns):
        targets = []
        target = branch_target(ins)
        # JSOP_TRY's encoded offset identifies a handler in the disassembly,
        # but normal control falls through. Exceptional edges come from the
        # script's v22 TryNote records below, with their exact stack depth.
        if target is not None and ins.op != "try":
            targets.append(target)
        elif ins.op == "try" and target is not None and target not in try_target_pcs:
            anomalies.append("pc {}: try opcode has no matching v22 try note".format(ins.pc))
        if ins.op == "tableswitch":
            default = re.search(r"defaultOffset\s+(-?\d+)", ins.arg)
            if default:
                targets.append(ins.pc + int(default.group(1)))
            targets.extend(ins.pc + off for _, off in ins.switch_cases)
        good = []
        for t in targets:
            if t in index_by_pc:
                leaders.add(index_by_pc[t])
                good.append(t)
            elif t == end_pc:
                good.append(t)
            else:
                anomalies.append("pc {}: branch target {} is not an instruction boundary".format(ins.pc, t))
        targets_by_ins[i] = good
        if ins.op in BRANCH_OPS or ins.op in TERMINAL_OPS:
            if i + 1 < len(insns):
                leaders.add(i + 1)
    starts = sorted(leaders)
    blocks = []
    for n, start in enumerate(starts):
        stop = starts[n + 1] if n + 1 < len(starts) else len(insns)
        blocks.append((start, stop))
    block_for_ins = {}
    for bid, (start, stop) in enumerate(blocks):
        for i in range(start, stop):
            block_for_ins[i] = bid
    block_edges = defaultdict(set)
    exceptional_heights = {}
    for bid, (_, stop) in enumerate(blocks):
        i = stop - 1
        ins = insns[i]
        for target in targets_by_ins.get(i, []):
            if target in index_by_pc:
                block_edges[bid].add(block_for_ins[index_by_pc[target]])
        if ins.op not in TERMINAL_OPS and ins.op not in {"goto", "default", "backpatch", "tableswitch"} and stop < len(insns):
            block_edges[bid].add(block_for_ins[stop])
        elif ins.op in {"or", "and", "ifeq", "ifne", "case", "tableswitch"} and stop < len(insns):
            block_edges[bid].add(block_for_ins[stop])

    # A TryNote covers the bytecode interval [start, start + length). Any
    # instruction in that interval can transfer control to its handler when
    # it throws. SpiderMonkey's interpreter restores exactly stackDepth for a
    # catch; finally additionally pushes the (true, exception) pair.
    for note in body.try_notes:
        target_idx = index_by_pc.get(note["target"])
        if target_idx is None:
            continue
        target_bid = block_for_ins[target_idx]
        protected_end = note["start"] + note["length"]
        for bid, (start, stop) in enumerate(blocks):
            covered = any(note["start"] <= insns[j].pc < protected_end for j in range(start, stop))
            if not covered:
                continue
            block_edges[bid].add(target_bid)
            height = note["stackDepth"] + (2 if note["kind"] == "finally" else 0)
            if note["kind"] == "iter":
                # The v22 interpreter unwinds and removes the iterator before
                # resuming at the TryNote target (JSOP_ENDITER).
                height = max(0, height - 1)
            exceptional_heights[(bid, target_bid)] = height

    incoming = {0: 0}
    queue = deque([0])
    merge_conflicts = 0
    while queue:
        bid = queue.popleft()
        height = incoming[bid]
        start, stop = blocks[bid]
        known = True
        for i in range(start, stop):
            ins = insns[i]
            uses, defs = stack_effect(ins, specs)
            if uses is None or defs is None:
                anomalies.append("pc {}: variable stack effect for {} not resolved from disassembly".format(ins.pc, ins.op))
                known = False
                break
            if uses > height:
                anomalies.append("pc {}: operand stack underflow (need {}, height {})".format(ins.pc, uses, height))
                height = 0
            else:
                height -= uses
            height += defs
        if not known:
            continue
        branch_targets = set()
        if ins.op == "case":
            for target in targets_by_ins.get(i, []):
                if target in index_by_pc:
                    branch_targets.add(block_for_ins[index_by_pc[target]])
        for succ in block_edges.get(bid, ()):
            # CASE jumps only on a match (and then consumes both the candidate
            # and discriminant); its fall-through re-pushes the discriminant.
            edge_height = exceptional_heights.get((bid, succ))
            if edge_height is None:
                edge_height = max(0, height - 1) if ins.op == "case" and succ in branch_targets else height
            if succ not in incoming:
                incoming[succ] = edge_height
                queue.append(succ)
            elif incoming[succ] != edge_height:
                merge_conflicts += 1
                anomalies.append("block at pc {}: stack-height merge {} vs {}".format(insns[blocks[succ][0]].pc, incoming[succ], edge_height))
    return {
        "blocks": len(blocks), "edges": sum(len(v) for v in block_edges.values()),
        "stackMergeConflicts": merge_conflicts,
        "unreachableBlocks": len(blocks) - len(incoming),
        "emptyBody": False,
        "anomalies": sorted(set(anomalies)),
    }


class Decompiler:
    BINARY = {
        "add": "+", "sub": "-", "mul": "*", "div": "/", "mod": "%",
        "eq": "==", "ne": "!=", "stricteq": "===", "strictne": "!==",
        "lt": "<", "le": "<=", "gt": ">", "ge": ">=", "in": "in",
        "instanceof": "instanceof", "lsh": "<<", "rsh": ">>", "ursh": ">>>",
        "bitand": "&", "bitor": "|", "bitxor": "^",
    }
    UNARY = {"not": "!", "neg": "-", "pos": "+", "bitnot": "~", "typeof": "typeof ", "typeofexpr": "typeof ", "void": "void "}
    SUPPORTED_OPS = set("nop notearg loophead loopentry lineno endinit stop undefined null true false this string zero one int8 int32 uint16 uint24 uint32 double name getgname callname getintrinsic callintrinsic getaliasedvar callaliasedvar setaliasedvar implicitthis arguments getarg callarg getlocal calllocal bindname getprop getxprop callprop length getelem callelem newinit newarray initprop initelem initelem_array lambda deffun setprop setgname setintrinsic setconst setname setlocal setarg setelem not neg pos bitnot typeof typeofexpr void add sub mul div mod eq ne stricteq strictne lt le gt ge in instanceof lsh rsh ursh bitand bitor bitxor dup dup2 swap pick call new eval funcall funapply pop popv popn delname delprop delelem incarg arginc decarg argdec inclocal localinc declocal localdec incname nameinc decname namedec incgname gnameinc decgname gnamedec incprop propinc decprop propdec incelem eleminc decelem elemdec return throw defvar goto ifeq ifne or and".split())
    SIMPLE_IGNORED = {"notearg", "loophead", "loopentry", "lineno", "nop", "endinit", "stop", "retrval"}
    # JOF_DECOMPOSE inc/dec opcodes leave the old value on the operand stack and
    # then assign; see _fold_postfix_incdec.
    POSTFIX_INCDEC_RE = re.compile(r"^\((?P<target>.+) = \(\+(?P=target) (?P<sign>[+-]) 1\)\)$")

    def __init__(self, bodies, specs, metrics, active=None):
        self.bodies = bodies
        self.specs = specs
        self.metrics = metrics
        self.active = active if active is not None else set()
        self.render_cache = {}
        self.pc_indexes = {
            body.index: {ins.pc: idx for idx, ins in enumerate(body.instructions)}
            for body in bodies
        }
        self.end_pcs = {
            body.index: (body.instructions[-1].pc + (self.specs.get(body.instructions[-1].op, {}).get("length", 1) or 1))
            for body in bodies if body.instructions
        }
        self.do_loop_candidates = {}

    def name_for_slot(self, body, op, idx):
        names = body.arg_names if op in {"getarg", "setarg", "callarg", "arginc", "argdec"} else body.local_names
        return names[idx] if 0 <= idx < len(names) and valid_identifier(names[idx]) else "__{}_{}".format("arg" if names is body.arg_names else "local", idx)

    @staticmethod
    def number(arg):
        m = re.match(r"(-?(?:\d+\.\d*|\.\d+|\d+)(?:[eE][+-]?\d+)?)", arg.strip())
        return m.group(1) if m else "0"

    def _literal_source(self, value, level=0):
        if not isinstance(value, Expr):
            return str(value) if value is not None else ""
        if value.unknown:
            return value.text
        if value.kind not in {"object", "array"}:
            return value.text
        indent = "    " * level
        child_indent = "    " * (level + 1)
        if value.kind == "array" and isinstance(value.data, list):
            items = [self._literal_source(x, level + 1) if x is not None else "" for x in value.data]
            open_ch, close_ch = "[", "]"
        elif value.kind == "object" and isinstance(value.data, dict):
            items = []
            for key, item in value.data.items():
                key_source = str(key) if valid_identifier(str(key)) else js_string(str(key))
                items.append("{}: {}".format(key_source, self._literal_source(item, level + 1)))
            open_ch, close_ch = "{", "}"
        else:
            return value.text
        if not items:
            return open_ch + close_ch
        flat = open_ch + " " + ", ".join(items) + " " + close_ch
        if len(flat) < 100 and all("\n" not in item for item in items):
            return flat
        return open_ch + "\n" + ",\n".join(child_indent + item for item in items) + "\n" + indent + close_ch

    @staticmethod
    def quoted_or(arg, fallback=""):
        value = parse_quoted(arg)
        return value if value is not None else fallback

    @staticmethod
    def value_expr(text, effect=False, kind="expr", data=None, unknown=False):
        return Expr(text, effect, kind, data, unknown)

    def _stmt(self, vm, text, ins=None):
        if not text:
            return
        if ins:
            vm.out.append("// source line {}, bytecode pc {}".format(ins.line, ins.pc))
        vm.out.append(text if text.endswith((";", "}", "{")) else text + ";")

    def _todo(self, vm, ins, reason):
        self.metrics["todoOpcodes"][ins.op] += 1
        marker = "/* TODO_BYTECODE pc={} opcode={} reason={} */".format(ins.pc, ins.op, reason.replace(" ", "_"))
        vm.out.append(marker)
        uses, defs = stack_effect(ins, self.specs)
        if uses is None or defs is None:
            self.metrics["stackUnknowns"] += 1
            return
        for _ in range(min(uses, len(vm.stack))):
            vm.stack.pop()
        for n in range(defs):
            vm.stack.append(Expr("undefined " + marker, False, "unknown", unknown=True))

    def _pop(self, vm, ins=None):
        if vm.stack:
            return vm.stack.pop()
        if ins:
            self.metrics["stackUnderflows"] += 1
            vm.local_anomalies.append("pc {}: expression stack underflow".format(ins.pc))
        return Expr("undefined /* TODO_BYTECODE expression_stack_underflow */", False, "unknown", unknown=True)

    def _popn(self, vm, n, ins=None):
        values = []
        for _ in range(max(0, n)):
            values.append(self._pop(vm, ins))
        return list(reversed(values))

    def _fold_postfix_incdec(self, vm, value):
        """Reassemble a decomposed postfix ++/-- at its JSOP_POP.

        JOF_DECOMPOSE increment/decrement opcodes are no-ops for the v22
        interpreter; the equivalent decomposed sequence that follows them is
        what actually executes. For a postfix form that sequence is
        GETLOCAL/GETARG, POS, DUP, ONE, ADD, SETLOCAL/SETARG, POP (and the
        GETPROP/SETPROP or GETELEM/SETELEM variants), so the old value is
        already on the operand stack when the assignment result is discarded.
        Emitting that assignment as a statement here would move the side
        effect in front of the consumer of the old value: for example
        input.charCodeAt(i++) became i = i + 1; input.charCodeAt(i). Fold the
        idiom back into the postfix expression instead; a plain statement
        then falls out when the folded value is popped in turn.
        """
        if not value.effect or value.kind != "assignment":
            return False
        match = self.POSTFIX_INCDEC_RE.match(value.text)
        if match is None or not vm.stack:
            return False
        previous = vm.stack[-1]
        if previous.text != "+" + match.group("target") or previous.effect or previous.unknown:
            return False
        vm.stack[-1] = Expr(match.group("target") + ("++" if match.group("sign") == "+" else "--"), True, "expr")
        return True

    def _emit_discard(self, vm, value, ins):
        if value.effect or value.kind in {"assignment", "call"}:
            self._stmt(vm, value.text, ins)

    def _function_expr(self, parent, ins, declaration=False):
        mapping = parent.function_maps.get(ins.pc)
        child = parent.children.get(mapping["object"]) if mapping else None
        if child is None:
            self.metrics["missingFunctionLinks"] += 1
            marker = "/* TODO_BYTECODE pc={} opcode={} reason=unlinked_function_object */".format(ins.pc, ins.op)
            return Expr("function () {\n    " + marker + "\n}", False, "function", unknown=True)
        # JSOP_LAMBDA creates an anonymous function expression. The
        # disassembler's display label is inferred for debugger/readability
        # (often from the property receiving the value); emitting it as a
        # named function would introduce a new lexical self-binding and can
        # change calls such as the game's `require` loader.
        rendered = self.render_body(child, as_function=True, anonymous=not declaration)
        return Expr(rendered, False, "function", data=child.index)

    def _call(self, vm, ins, op):
        argc_match = re.match(r"(\d+)", ins.arg)
        argc = int(argc_match.group(1)) if argc_match else 0
        args = self._popn(vm, argc, ins)
        thisarg = self._pop(vm, ins)
        fun = self._pop(vm, ins)
        argtext = ", ".join(x.text for x in args)
        if op == "new":
            calltext = "new {}({})".format(fun.text, argtext)
        elif fun.kind == "member":
            calltext = "{}({})".format(fun.text, argtext)
        elif fun.kind in {"name", "local", "arg", "aliased"}:
            calltext = "{}({})".format(fun.text, argtext)
        elif thisarg.kind == "implicitthis" and fun.kind == "expr":
            calltext = "{}({})".format(fun.text, argtext)
        elif thisarg.text in {"undefined", "null"}:
            calltext = "{}({})".format(fun.text, argtext)
        elif op in {"funcall", "funapply"}:
            calltext = "{}.call({}, {})".format(fun.text, thisarg.text, argtext) if args else "{}.call({})".format(fun.text, thisarg.text)
            self.metrics["approximateOpcodes"][op] += 1
        else:
            calltext = "({}).call({}, {})".format(fun.text, thisarg.text, argtext) if args else "({}).call({})".format(fun.text, thisarg.text)
        vm.stack.append(Expr(calltext, True, "call"))

    def _execute(self, vm, body, ins):
        op, arg = ins.op, ins.arg
        spec = self.specs.get(op)
        if op == "endinit":
            if vm.stack and vm.stack[-1].kind in {"object", "array"}:
                vm.stack[-1].text = self._literal_source(vm.stack[-1])
            return
        if op in self.SIMPLE_IGNORED or op == "notearg":
            return
        if spec and spec.get("decompose"):
            # See jsopcode.tbl JOF_DECOMPOSE and jsinterp.cpp's no-op cases:
            # the fused ++/-- opcode does nothing at run time and the
            # equivalent decomposed sequence that follows it is the real
            # code, so decode that sequence and let _fold_postfix_incdec
            # reassemble the postfix form at its POP. The operand printed for
            # these opcodes is the decomposed length, not the variable slot.
            return
        if op in {"string"}:
            vm.stack.append(Expr(js_string(self.quoted_or(arg)), False, "literal")); return
        if op in {"zero", "one", "int8", "int32", "uint16", "uint24", "uint32", "double"}:
            number = "0" if op == "zero" else "1" if op == "one" else self.number(arg)
            vm.stack.append(Expr(number, False, "literal")); return
        if op in {"undefined", "null", "true", "false", "this"}:
            text = {"undefined": "void 0", "null": "null", "true": "true", "false": "false", "this": "this"}[op]
            vm.stack.append(Expr(text, False, "literal")); return
        if op in {"name", "getgname", "getintrinsic", "getaliasedvar", "callaliasedvar"}:
            n = self.quoted_or(arg, "__name")
            vm.stack.append(Expr(n if valid_identifier(n) else "globalThis[{}]".format(js_string(n)), False, "aliased" if "aliased" in op else "name")); return
        if op in {"callname", "callintrinsic"}:
            n = self.quoted_or(arg, "__name")
            vm.stack.append(Expr(n if valid_identifier(n) else "globalThis[{}]".format(js_string(n)), False, "name")); return
        if op == "implicitthis":
            vm.stack.append(Expr("this", False, "implicitthis")); return
        if op == "arguments":
            vm.stack.append(Expr("arguments", False, "expr")); return
        if op in {"getarg", "callarg"}:
            idx = int(self.number(arg)); n = self.name_for_slot(body, op, idx)
            vm.stack.append(Expr(n, False, "arg")); return
        if op in {"getlocal", "calllocal"}:
            idx = int(self.number(arg)); n = vm.name_for_slot(body, op, idx)
            vm.stack.append(Expr(n, False, "local")); return
        if op == "bindname":
            n = self.quoted_or(arg, "__name")
            vm.stack.append(Expr(n, False, "lref")); return
        if op in {"getprop", "getxprop", "callprop", "length"}:
            obj = self._pop(vm, ins)
            prop = "length" if op == "length" else self.quoted_or(arg, "__property")
            text = prop_access(obj.text, prop)
            vm.stack.append(Expr(text, obj.effect, "member", data=obj)); return
        if op in {"getelem", "callelem"}:
            key, obj = self._pop(vm, ins), self._pop(vm, ins)
            vm.stack.append(Expr("{}[{}]".format(obj.text, key.text), obj.effect or key.effect, "member", data=obj)); return
        if op == "newinit":
            kind = int(self.number(arg))
            if kind == 3:
                vm.stack.append(Expr("[]", False, "array", data=[]))
            elif kind == 1:
                vm.stack.append(Expr("{}", False, "object", data={}))
            else:
                vm.stack.append(Expr("{} /* TODO_BYTECODE newinit_kind={} */".format("{}", kind), False, "object", data={}, unknown=True))
                self.metrics["approximateOpcodes"][op] += 1
            return
        if op == "newarray":
            n = int(self.number(arg))
            vm.stack.append(Expr("[]", False, "array", data=[None] * min(n, 100000))); return
        if op in {"newobject", "object"}:
            vm.stack.append(Expr("{} /* TODO_BYTECODE {}_constant={} */".format("{}", op, self.number(arg)), False, "object", data={}, unknown=True))
            self.metrics["approximateOpcodes"][op] += 1
            return
        if op in {"lambda", "deffun"}:
            fn = self._function_expr(body, ins, declaration=(op == "deffun"))
            if op == "deffun":
                name = self.quoted_or(arg, "")
                if not name and fn.data is not None:
                    ch = body.children.get(body.function_maps.get(ins.pc, {}).get("object"))
                    name = ch.function_label if ch else ""
                if not valid_identifier(name):
                    name = "__function_object_{}".format(body.function_maps.get(ins.pc, {}).get("object", "unknown"))
                fn.text = re.sub(r"^function(?:\s+[^ (]+)?\s*", "function {}".format(name), fn.text, count=1)
                self._stmt(vm, fn.text, ins)
            else:
                vm.stack.append(fn)
            return
        if op == "initprop":
            value, obj = self._pop(vm, ins), self._pop(vm, ins)
            prop = self.quoted_or(arg, "__property")
            if obj.kind == "object" and isinstance(obj.data, dict):
                obj.data[prop] = value
                vm.stack.append(obj)
            elif obj.kind == "array" and isinstance(obj.data, list):
                obj.data.append(Expr("[{}]: {}".format(js_string(prop), value.text), False, "expr"))
                vm.stack.append(obj)
            else:
                # initprop keeps the object on the stack (jsopcode.tbl nuses=2
                # ndefs=1; jsinterp.cpp:2920-2946 writes into sp[-2]); only the
                # property assignment is a side effect.  Pushing the assignment
                # expression instead would hand the next initprop/endinit a
                # non-object.
                self._stmt(vm, "{} = {}".format(prop_access(obj.text, prop), value.text), ins)
                vm.stack.append(obj)
            return
        if op in {"initelem", "initelem_array"}:
            if op == "initelem_array":
                value, obj = self._pop(vm, ins), self._pop(vm, ins)
                index = int(self.number(arg))
            else:
                value, key, obj = self._pop(vm, ins), self._pop(vm, ins), self._pop(vm, ins)
                try: index = int(key.text)
                except ValueError: index = -1
            if obj.kind == "array" and isinstance(obj.data, list) and index >= 0:
                while len(obj.data) <= index: obj.data.append(None)
                obj.data[index] = value
                vm.stack.append(obj)
            elif op == "initelem" and obj.kind == "object" and isinstance(obj.data, dict) and key.kind == "literal":
                prop = parse_quoted(key.text)
                if prop is None:
                    prop = key.text
                obj.data[str(prop)] = value
                vm.stack.append(obj)
            else:
                self.metrics["approximateOpcodes"]["initelem_dynamic_target"] += 1
                self._stmt(vm, "/* TODO_BYTECODE pc={} opcode={} reason=dynamic_initializer_target */".format(ins.pc, op), ins)
                vm.stack.append(obj)
            return
        if op == "setconst":
            # setconst is the odd one out: JOF_NAME|JOF_SET but carries no scope
            # operand on the stack (jsopcode.tbl nuses=1), unlike setname/setgname/
            # setintrinsic which are nuses=2.  Popping a second value here shifts
            # every later expression by one slot.
            value = self._pop(vm, ins)
            name = self.quoted_or(arg, "__const")
            text = "({} = {})".format(name if valid_identifier(name) else "__const", value.text)
            vm.stack.append(Expr(text, True, "assignment")); return
        if op in {"setprop", "setgname", "setintrinsic"}:
            value = self._pop(vm, ins)
            if op == "setprop":
                obj = self._pop(vm, ins); prop = self.quoted_or(arg, "__property")
                text = "({} = {})".format(prop_access(obj.text, prop), value.text)
            else:
                target = self._pop(vm, ins)
                text = "({} = {})".format(target.text if target.kind == "lref" else target.text, value.text)
            vm.stack.append(Expr(text, True, "assignment")); return
        if op == "setaliasedvar":
            value = self._pop(vm, ins)
            target = self.quoted_or(arg, "__aliased")
            vm.stack.append(Expr("({} = {})".format(target, value.text), True, "assignment", unknown=value.unknown)); return
        if op == "setname":
            value, target = self._pop(vm, ins), self._pop(vm, ins)
            if target.kind != "lref":
                target = Expr(self.quoted_or(arg, target.text), False, "lref")
            vm.stack.append(Expr("({} = {})".format(target.text, value.text), True, "assignment")); return
        if op in {"setlocal", "setarg"}:
            value = self._pop(vm, ins)
            idx = int(self.number(arg)); target = vm.name_for_slot(body, op, idx)
            vm.stack.append(Expr("({} = {})".format(target, value.text), True, "assignment")); return
        if op == "setelem":
            value, key, obj = self._pop(vm, ins), self._pop(vm, ins), self._pop(vm, ins)
            vm.stack.append(Expr("({}[{}] = {})".format(obj.text, key.text, value.text), True, "assignment")); return
        if op in {"not", "neg", "pos", "bitnot", "typeof", "typeofexpr", "void"}:
            val = self._pop(vm, ins); prefix = self.UNARY[op]
            vm.stack.append(Expr("{}({})".format(prefix.strip(), val.text) if op in {"typeof", "typeofexpr", "void"} else "{}{}".format(prefix, val.text), val.effect, "expr", unknown=val.unknown)); return
        if op in self.BINARY:
            right, left = self._pop(vm, ins), self._pop(vm, ins)
            token = self.BINARY[op]
            vm.stack.append(Expr("({} {} {})".format(left.text, token, right.text), left.effect or right.effect, "expr", unknown=left.unknown or right.unknown)); return
        if op in {"dup", "dup2", "swap", "pick"}:
            if op == "dup":
                val = self._pop(vm, ins); vm.stack.extend((val, copy.deepcopy(val)))
            elif op == "dup2":
                a, b = self._popn(vm, 2, ins); vm.stack.extend((a, b, copy.deepcopy(a), copy.deepcopy(b)))
            elif op == "swap":
                a, b = self._popn(vm, 2, ins); vm.stack.extend((b, a))
            else:
                n = int(self.number(arg))
                if n < len(vm.stack):
                    value = vm.stack[-n - 1]
                    del vm.stack[-n - 1]
                    vm.stack.append(value)
                else:
                    self._todo(vm, ins, "pick_depth_out_of_range")
            return
        if op in {"call", "new", "eval", "funcall", "funapply"}:
            self._call(vm, ins, op); return
        if op in {"pop", "popv"}:
            value = self._pop(vm, ins)
            if not self._fold_postfix_incdec(vm, value):
                self._emit_discard(vm, value, ins)
            return
        if op == "popn":
            n = int(self.number(arg)); values = self._popn(vm, n, ins)
            for val in values: self._emit_discard(vm, val, ins)
            return
        if op in {"incarg", "arginc", "decarg", "argdec", "inclocal", "localinc", "declocal", "localdec", "incname", "nameinc", "decname", "namedec", "incgname", "gnameinc", "decgname", "gnamedec", "incprop", "propinc", "decprop", "propdec", "incelem", "eleminc", "decelem", "elemdec"}:
            # Every inc/dec opcode in this build carries JOF_DECOMPOSE, so the
            # early return above handles them; keep this branch for opcodes
            # whose decomposed tail is absent.
            dec = "dec" in op
            post = op in {"nameinc", "propinc", "eleminc", "namedec", "propdec", "elemdec", "gnameinc", "gnamedec", "localinc", "localdec", "arginc", "argdec"}
            if op in {"incarg", "arginc", "decarg", "argdec"}:
                target = self.name_for_slot(body, op, int(self.number(arg)))
            elif op in {"inclocal", "localinc", "declocal", "localdec"}:
                target = vm.name_for_slot(body, op, int(self.number(arg)))
            elif "prop" in op:
                obj = self._pop(vm, ins); target = prop_access(obj.text, self.quoted_or(arg, "__property"))
            elif "elem" in op:
                # Same operand order as delelem: obj=sp[-2], key=sp[-1].
                # NOTE: if this fallback ever becomes reachable, the JOF_DECOMPOSE
                # tail already performs the increment - do not apply it twice.
                obj, key = self._popn(vm, 2, ins); target = "{}[{}]".format(obj.text, key.text)
            else:
                target = self.quoted_or(arg, "__name")
            text = ("--" if dec else "++") + target
            if post: text = target + ("--" if dec else "++")
            vm.stack.append(Expr(text, True, "expr")); return
        if op == "delname":
            vm.stack.append(Expr("delete " + self.quoted_or(arg, "__name"), True)); return
        if op == "delprop":
            obj = self._pop(vm, ins); vm.stack.append(Expr("delete " + prop_access(obj.text, self.quoted_or(arg, "__property")), True)); return
        if op == "delelem":
            # sp[-2] is the object and sp[-1] the property (jsinterp.cpp:2118/2121,
            # FETCH_OBJECT(cx, -2) + propval = sp[-1]); _popn returns bottom-to-top.
            obj, key = self._popn(vm, 2, ins); vm.stack.append(Expr("delete {}[{}]".format(obj.text, key.text), True)); return
        if op == "throw":
            self._stmt(vm, "throw " + self._pop(vm, ins).text, ins); return
        if op == "return":
            self._stmt(vm, "return " + self._pop(vm, ins).text, ins); return
        if op == "defvar":
            name = self.quoted_or(arg, "__var")
            self._stmt(vm, "var {}".format(name if valid_identifier(name) else "__var"), ins); return
        if op == "defconst":
            name = self.quoted_or(arg, "__const")
            self._stmt(vm, "/* TODO_BYTECODE const_binding={} */".format(name if valid_identifier(name) else "unknown"), ins)
            self.metrics["todoOpcodes"][op] += 1; return
        if op == "regexp":
            self._todo(vm, ins, "regexp_object_literal_not_dumped"); return
        if op == "toid":
            # JSOP_TOID converts sp[-1] to a property id in place and leaves the
            # object below it untouched (jsinterp.cpp:2131-2146; jsopcode.tbl
            # nuses=1 ndefs=1, so the net stack effect is zero).  JS bracket
            # access performs that same conversion, so keeping the value as-is
            # is faithful - previously this fell through to a TODO placeholder
            # that rendered the index as undefined.
            return
        if op in {"ifeq", "ifne", "goto", "or", "and", "tableswitch"}:
            return
        if op in {"try", "enterwith", "leavewith", "enterblock", "leaveblock", "enterlet0", "enterlet1", "enditer", "iter", "iternext", "moreiter", "exception", "condswitch", "case", "default", "enumelem", "setrval", "throwing", "gosub", "backpatch", "finally", "callee", "incaliasedvar", "decaliasedvar", "aliasedvarinc", "aliasedvardec", "bindintrinsic"}:
            self._todo(vm, ins, "control_or_scope_semantics_not_structured")
            return
        self._todo(vm, ins, "opcode_handler_not_implemented")

    def _target_index(self, body, pc):
        index = self.pc_indexes.get(body.index, {}).get(pc)
        if index is not None:
            return index
        if self.end_pcs.get(body.index) == pc:
            return len(body.instructions)
        return None

    def _try_layout(self, body, idx, stop):
        """Recognize v22's ordinary try/catch layout using JSOP_TRY's note target."""
        insns = body.instructions
        handler_idx = self._target_index(body, branch_target(insns[idx]))
        if handler_idx is None or not idx < handler_idx < stop:
            return None

        # jsopcode.cpp prints JSOP_TRY's associated JSTRY_CATCH target. The
        # normal path jumps from the protected region over the handler.
        normal_exits = []
        for j in range(idx + 1, handler_idx):
            if insns[j].op == "goto":
                target_idx = self._target_index(body, branch_target(insns[j]))
                if target_idx is not None and target_idx > handler_idx:
                    normal_exits.append((j, target_idx))
        if not normal_exits:
            return None
        normal_exit, join_idx = normal_exits[-1]

        handler_exit = None
        for j in range(handler_idx, min(join_idx, stop)):
            if insns[j].op == "goto" and self._target_index(body, branch_target(insns[j])) == join_idx:
                handler_exit = j
        if handler_exit is None:
            return None

        # Catch entry bytecode is ENTERBLOCK, EXCEPTION, SETLOCAL, POP. These
        # instructions establish the lexical catch binding and are represented
        # directly by the JavaScript catch clause.
        cursor = handler_idx
        if insns[cursor].op != "enterblock":
            return None
        cursor += 1
        if cursor >= handler_exit or insns[cursor].op != "exception":
            return None
        cursor += 1
        catch_name = "__caught_{}".format(insns[idx].pc)
        catch_slot = None
        bindings = static_block_bindings(insns[handler_idx].arg)
        if bindings and valid_identifier(bindings[0]):
            catch_name = bindings[0]
        if cursor < handler_exit and insns[cursor].op == "setlocal":
            slot_match = re.match(r"(\d+)", insns[cursor].arg)
            if slot_match:
                catch_slot = int(slot_match.group(1))
                if not (bindings and valid_identifier(bindings[0])):
                    catch_name = self.name_for_slot(body, "getlocal", catch_slot)
            cursor += 1
            if cursor < handler_exit and insns[cursor].op == "pop":
                cursor += 1
        return {
            "handler": handler_idx, "normalExit": normal_exit,
            "handlerExit": handler_exit, "join": join_idx,
            "catchStart": cursor, "catchName": catch_name, "catchSlot": catch_slot,
        }

    def _branch_expr(self, op, value):
        if op == "ifeq": return value.text
        return "!({})".format(value.text)

    def _merge_stack(self, left, right, pc):
        if len(left) != len(right):
            self.metrics["stackMergeConflicts"] += 1
            return [Expr("undefined /* TODO_BYTECODE stack_merge_pc_{} */".format(pc), False, "unknown", unknown=True) for _ in range(max(len(left), len(right), 1))]
        merged = []
        for a, b in zip(left, right):
            if a.text == b.text and a.kind == b.kind:
                merged.append(a)
            else:
                self.metrics["stackMergeConflicts"] += 1
                merged.append(Expr("undefined /* TODO_BYTECODE stack_merge_pc_{} */".format(pc), a.effect or b.effect, "unknown", unknown=True))
        return merged

    def _merge_branch_stacks(self, then_stack, else_stack, condition, pc):
        if len(then_stack) != len(else_stack):
            return self._merge_stack(then_stack, else_stack, pc)
        merged = []
        for then_value, else_value in zip(then_stack, else_stack):
            if then_value.text == else_value.text and then_value.kind == else_value.kind:
                merged.append(then_value)
            elif then_value.unknown or else_value.unknown:
                self.metrics["stackMergeConflicts"] += 1
                merged.append(Expr("undefined /* TODO_BYTECODE stack_merge_pc_{} */".format(pc), False, "unknown", unknown=True))
            else:
                merged.append(Expr("({} ? {} : {})".format(condition, then_value.text, else_value.text),
                                   then_value.effect or else_value.effect, "expr"))
        return merged

    def _new_vm(self, body, stack):
        return VM(self, body, copy.deepcopy(stack))

    def _find_loop(self, body, idx, stop):
        insns = body.instructions
        ins = insns[idx]
        if ins.op != "goto": return None
        cond_pc = branch_target(ins)
        cond_idx = self._target_index(body, cond_pc) if cond_pc is not None else None
        body_start = idx + 1
        if cond_idx is None or cond_idx <= body_start or cond_idx >= stop: return None
        for j in range(cond_idx, stop):
            back = insns[j]
            if back.op in {"ifeq", "ifne"}:
                dest = branch_target(back)
                target_idx = self._target_index(body, dest) if dest is not None else None
                if target_idx == body_start:
                    return body_start, cond_idx, j, j + 1
        return None

    def _find_do_loop(self, body, idx, stop):
        """Find a back-edge to the current bytecode index (no preheader goto)."""
        candidates = self.do_loop_candidates.get(body.index)
        if candidates is None:
            pc_indexes = self.pc_indexes.get(body.index, {})
            candidates = defaultdict(list)
            for j, ins in enumerate(body.instructions):
                if ins.op not in {"ifeq", "ifne"}:
                    continue
                target_idx = pc_indexes.get(branch_target(ins))
                if target_idx is not None and target_idx < j:
                    candidates[target_idx].append(j)
            self.do_loop_candidates[body.index] = candidates
        back_idx = next((j for j in reversed(candidates.get(idx, [])) if idx < j < stop), None)
        return (back_idx, back_idx + 1) if back_idx is not None else None

    def _find_forin(self, body, idx, stop):
        """Recognize SpiderMonkey v22's ITER/ITERNEXT/MOREITER loop layout."""
        insns = body.instructions
        if idx >= stop or insns[idx].op != "iter":
            return None
        jump_idx = idx + 1
        while jump_idx < stop and insns[jump_idx].op in {"loophead", "loopentry", "lineno", "nop"}:
            jump_idx += 1
        if jump_idx >= stop or insns[jump_idx].op != "goto":
            return None
        test_idx = self._target_index(body, branch_target(insns[jump_idx]))
        if test_idx is None or test_idx <= jump_idx or test_idx >= stop:
            return None
        more_idx = test_idx
        while more_idx < stop and insns[more_idx].op in {"loophead", "loopentry", "lineno", "nop"}:
            more_idx += 1
        if more_idx >= stop or insns[more_idx].op != "moreiter":
            return None
        cond_idx = more_idx + 1
        while cond_idx < stop and insns[cond_idx].op in {"loophead", "loopentry", "lineno", "nop"}:
            cond_idx += 1
        if cond_idx >= stop or insns[cond_idx].op != "ifne":
            return None
        body_idx = self._target_index(body, branch_target(insns[cond_idx]))
        if body_idx is None or body_idx <= jump_idx or body_idx >= more_idx:
            return None
        end_idx = cond_idx + 1
        while end_idx < stop and insns[end_idx].op in {"loophead", "loopentry", "lineno", "nop"}:
            end_idx += 1
        if end_idx >= stop or insns[end_idx].op != "enditer":
            return None
        next_idx = body_idx
        while next_idx < more_idx and insns[next_idx].op in {"loophead", "loopentry", "lineno", "nop"}:
            next_idx += 1
        if next_idx >= more_idx or insns[next_idx].op != "iternext":
            return None
        # The compiler stores the ITERNEXT value into the loop target, then
        # discards the assignment result. Support local/argument and name refs.
        target_name, bind_end = None, None
        for j in range(next_idx + 1, min(more_idx, next_idx + 13)):
            op = insns[j].op
            if op in {"setlocal", "setarg"}:
                slot = int(self.number(insns[j].arg))
                target_name = self.name_for_slot(body, op, slot)
            elif op == "setname":
                target_name = self.quoted_or(insns[j].arg, "__iter_key")
            if op == "pop" and target_name:
                bind_end = j + 1
                break
        if bind_end is None:
            return None
        return {"test": test_idx, "more": more_idx, "condition": cond_idx,
                "body": body_idx, "next": next_idx, "bodyCode": bind_end,
                "end": end_idx, "target": target_name}

    def _find_else(self, body, start, target_idx, stop):
        candidates = []
        for k in range(start, target_idx):
            ins = body.instructions[k]
            if ins.op == "goto":
                dest = branch_target(ins)
                d = self._target_index(body, dest) if dest is not None else None
                if d is not None and d > target_idx and d <= stop:
                    candidates.append((k, d))
        return max(candidates, key=lambda x: x[0]) if candidates else None

    def render_body(self, body, as_function=False, anonymous=False):
        if body.index in self.render_cache:
            return self.render_cache[body.index]
        if body.index in self.active:
            return "function () { /* TODO_BYTECODE recursive_closure */ }"
        self.active.add(body.index)
        self.metrics["renderedBodyIndexes"].add(body.index)
        self.metrics["bodies"] += 1
        self.metrics["instructions"] += len(body.instructions)
        self.metrics["sourceLines"].extend(i.line for i in body.instructions if i.line > 0)
        vm = VM(self, body, [])
        vm.run(0, len(body.instructions))
        if vm.stack:
            leftovers = [v for v in vm.stack if v.effect or v.unknown]
            for value in leftovers:
                vm.out.append("/* TODO_BYTECODE pc=end reason=unconsumed_operand_stack */")
                self.metrics["stackResiduals"] += 1
        body_lines = vm.out
        # Nested child bodies that have no recoverable closure/declaration edge remain discoverable.
        detached = [child for child in body.children.values() if child.index not in self._rendered_descendants]
        for child in detached:
            label = child.function_label or "<anonymous>"
            body_lines.append("/* TODO_BYTECODE detached_function_object={} name={} see recovery outline */".format(child.function_object, re.sub(r"[^A-Za-z0-9_$.-]", "_", label)))
            self.metrics["detachedFunctions"] += 1
        if as_function:
            name = "" if anonymous else body.function_label
            if not valid_identifier(name): name = ""
            args = [x if valid_identifier(x) else "__arg_{}".format(i) for i, x in enumerate(body.arg_names)]
            header = "function{}({}) {{".format((" " + name) if name else "", ", ".join(args))
            lines = [header]
            if body.local_names:
                extras = [x for x in body.local_names if x and x not in args and valid_identifier(x)]
                if extras:
                    lines.append("    var " + ", ".join(dict.fromkeys(extras)) + ";")
            lines.extend("    " + line if line else "" for line in body_lines)
            lines.append("}")
            text = "\n".join(lines)
        else:
            lines = ["// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.",
                     "// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.",
                     "// Embedded source: {}:{}".format(body.source_path, body.start_line)]
            lines.extend(body_lines)
            text = "\n".join(lines) + "\n"
        self._rendered_descendants.add(body.index)
        self.active.remove(body.index)
        self.render_cache[body.index] = text
        return text

    _rendered_descendants = set()


class VM:
    def __init__(self, owner, body, stack=None):
        self.owner = owner
        self.body = body
        self.stack = stack if stack is not None else []
        self.out = []
        self.local_anomalies = []
        self.local_overrides = {}
        self.pc_to_idx = {ins.pc: i for i, ins in enumerate(body.instructions)}

    def name_for_slot(self, body, op, idx):
        if op in {"getlocal", "calllocal", "setlocal", "localinc", "inclocal", "localdec", "declocal"}:
            if idx in self.local_overrides:
                return self.local_overrides[idx]
        return self.owner.name_for_slot(body, op, idx)

    def run(self, start, stop, depth=0, break_pc=None, continue_pc=None):
        insns = self.body.instructions
        i = start
        while i < stop:
            if depth > 40:
                self.out.append("/* TODO_BYTECODE reason=control_flow_nesting_limit */")
                self.owner.metrics["todoOpcodes"]["<control-flow>"] += 1
                break
            ins = insns[i]
            do_loop = self.owner._find_do_loop(self.body, i, stop)
            if do_loop:
                back_idx, after_idx = do_loop
                base_stack = copy.deepcopy(self.stack)
                loop_vm = self.owner._new_vm(self.body, base_stack)
                loop_vm.run(i + 1, back_idx, depth + 1,
                            break_pc=after_idx, continue_pc=i)
                branch = insns[back_idx]
                condition = loop_vm.stack.pop() if len(loop_vm.stack) > len(base_stack) else Expr(
                    "true /* TODO_BYTECODE missing_do_while_condition */", False, "unknown", unknown=True)
                if len(loop_vm.stack) != len(base_stack):
                    self.owner.metrics["stackMergeConflicts"] += 1
                    self.stack = self.owner._merge_stack(base_stack, loop_vm.stack, ins.pc)
                else:
                    self.stack = base_stack
                condition_text = condition.text if branch.op == "ifne" else "!({})".format(condition.text)
                self.out.append("do {{".format())
                self.out.extend("    " + line for line in loop_vm.out)
                self.out.append("}} while ({});".format(condition_text))
                self.owner.metrics["structuredDoWhileLoops"] += 1
                i = after_idx
                continue
            if (ins.op == "setrval" and i + 2 < stop
                    and insns[i + 1].op == "enditer" and insns[i + 2].op == "retrval"):
                result = self.owner._pop(self, ins)
                self.owner._stmt(self, "return " + result.text, ins)
                self.owner.metrics["terminalReturnPcs"].update(
                    (self.body.index, j) for j in (i, i + 1, i + 2))
                return
            if ins.op == "setrval":
                tail = i + 1
                while tail < stop and insns[tail].op in {"leaveblock", "leaveforletin"}:
                    tail += 1
                if tail < stop and insns[tail].op == "retrval":
                    result = self.owner._pop(self, ins)
                    self.owner._stmt(self, "return " + result.text, ins)
                    self.owner.metrics["terminalReturnPcs"].update(
                        (self.body.index, j) for j in range(i, tail + 1))
                    return
            if ins.op == "try":
                layout = self.owner._try_layout(self.body, i, stop)
                if layout:
                    base_stack = copy.deepcopy(self.stack)
                    protected = self.owner._new_vm(self.body, base_stack)
                    protected.run(i + 1, layout["normalExit"], depth + 1,
                                  break_pc, continue_pc)
                    caught = self.owner._new_vm(self.body, base_stack)
                    if layout["catchSlot"] is not None:
                        caught.local_overrides[layout["catchSlot"]] = layout["catchName"]
                    caught.run(layout["catchStart"], layout["handlerExit"], depth + 1,
                               break_pc, continue_pc)
                    self.out.append("try {")
                    self.out.extend("    " + line for line in protected.out)
                    self.out.append("}} catch ({}) {{".format(layout["catchName"]))
                    self.out.extend("    " + line for line in caught.out)
                    self.out.append("}")
                    self.stack = self.owner._merge_stack(protected.stack, caught.stack, ins.pc)
                    self.owner.metrics["structuredTryPcs"].update(
                        (self.body.index, j) for j in range(i, layout["join"]))
                    self.owner.metrics["structuredTryCount"] += 1
                    i = layout["join"]
                    continue
            if ins.op == "iter":
                loop = self.owner._find_forin(self.body, i, stop)
                if loop:
                    source = self.owner._pop(self, ins)
                    flags_match = re.match(r"(\d+)", ins.arg)
                    flags = int(flags_match.group(1)) if flags_match else 0
                    target = loop["target"]
                    if not valid_identifier(target):
                        target = "__iter_key_{}".format(ins.pc)
                    if flags & 0x2:
                        header = "for (var {} of Object.values({})) {{ /* TODO_BYTECODE SpiderMonkey_foreach_iterator_order */".format(target, source.text)
                        self.owner.metrics["approximateOpcodes"]["foreach_iterator"] += 1
                    elif flags & 0x4:
                        header = "for (var {} of Object.entries({})) {{ /* TODO_BYTECODE SpiderMonkey_keyvalue_iterator_shape */".format(target, source.text)
                        self.owner.metrics["approximateOpcodes"]["keyvalue_iterator"] += 1
                    else:
                        header = "for (var {} in {}) {{".format(target, source.text)
                    self.out.append(header)
                    body_vm = self.owner._new_vm(self.body, [Expr("__iterator_{}".format(ins.pc), False, "iterator")])
                    body_vm.run(loop["bodyCode"], loop["more"], depth + 1,
                                break_pc=loop["end"], continue_pc=loop["test"])
                    self.out.extend("    " + line for line in body_vm.out)
                    self.out.append("}")
                    self.owner.metrics["structuredIterators"] += 1
                    for handled_idx in (i, loop["next"], loop["more"], loop["end"]):
                        self.owner.metrics["iteratorPcs"].add((self.body.index, handled_idx))
                    i = loop["end"] + 1
                    continue
            if ins.op == "condswitch":
                self.owner._emit_conditional_switch(self, ins, i, stop, depth, break_pc, continue_pc)
                i = self.owner.metrics.pop("switchNextIndex", i + 1)
                continue
            if ins.op in {"or", "and"}:
                target = branch_target(ins)
                target_idx = self.owner._target_index(self.body, target) if target is not None else None
                if target_idx is not None and i < target_idx <= stop and i + 1 < target_idx and insns[i + 1].op == "pop":
                    lhs = self.stack.pop() if self.stack else Expr("undefined", False, "unknown", unknown=True)
                    rhs_vm = self.owner._new_vm(self.body, self.stack)
                    rhs_vm.run(i + 2, target_idx, depth + 1, break_pc, continue_pc)
                    rhs = rhs_vm.stack.pop() if rhs_vm.stack else Expr("undefined /* TODO_BYTECODE empty_logical_rhs */", False, "unknown", unknown=True)
                    self.out.extend(rhs_vm.out)
                    self.stack = rhs_vm.stack + [Expr("({} {} {})".format(lhs.text, "||" if ins.op == "or" else "&&", rhs.text), lhs.effect or rhs.effect, "expr", unknown=lhs.unknown or rhs.unknown)]
                    i = target_idx
                    continue
            if ins.op == "goto":
                loop = self.owner._find_loop(self.body, i, stop)
                if loop:
                    body_start, cond_start, back_idx, after_idx = loop
                    source_stack = copy.deepcopy(self.stack)
                    body_vm = self.owner._new_vm(self.body, source_stack)
                    body_vm.run(body_start, cond_start, depth + 1, after_idx, continue_pc)
                    cond_vm = self.owner._new_vm(self.body, source_stack)
                    cond_vm.run(cond_start, back_idx, depth + 1, break_pc, continue_pc)
                    cond = cond_vm.stack.pop() if cond_vm.stack else Expr("true /* TODO_BYTECODE missing_loop_condition */", False, "unknown", unknown=True)
                    back = insns[back_idx]
                    if back.op == "ifeq": cond_text = "!({})".format(cond.text)
                    else: cond_text = cond.text
                    self.out.append("while ({}) {{".format(cond_text))
                    self.out.extend("    " + line for line in body_vm.out)
                    self.out.append("}")
                    self.stack = self.owner._merge_stack(source_stack, cond_vm.stack, ins.pc)
                    i = after_idx
                    continue
                target = branch_target(ins)
                target_idx = self.owner._target_index(self.body, target) if target is not None else None
                if target_idx is not None and break_pc is not None and target_idx == break_pc:
                    self.out.append("break;")
                    return
                if target_idx is not None and continue_pc is not None and target_idx == continue_pc:
                    self.out.append("continue;")
                    return
                if target_idx is not None and target_idx > i:
                    # A forward goto can be a compiler-generated join; skip unreachable linear bytes.
                    i = target_idx
                    continue
                self.owner._todo(self, ins, "unstructured_goto")
                i += 1
                continue
            if ins.op in {"ifeq", "ifne"}:
                target = branch_target(ins)
                target_idx = self.owner._target_index(self.body, target) if target is not None else None
                cond_value = self.stack.pop() if self.stack else Expr("undefined", False, "unknown", unknown=True)
                if target_idx is None:
                    self.owner._todo(self, ins, "invalid_conditional_target")
                    i += 1
                    continue
                if target_idx is not None and break_pc is not None and target_idx == break_pc:
                    cond = cond_value.text if ins.op == "ifne" else "!({})".format(cond_value.text)
                    self.out.append("if ({}) break;".format(cond))
                    i += 1
                    continue
                if target_idx is not None and continue_pc is not None and target_idx == continue_pc:
                    cond = cond_value.text if ins.op == "ifne" else "!({})".format(cond_value.text)
                    self.out.append("if ({}) continue;".format(cond))
                    i += 1
                    continue
                if target_idx <= i:
                    # A terminal test without a preheader jump is represented as do/while.
                    body_vm = self.owner._new_vm(self.body, self.stack)
                    body_vm.run(target_idx, i, depth + 1, target_idx, continue_pc)
                    # JSOP_IFNE branches back when the condition is true;
                    # JSOP_IFEQ branches back when it is false.
                    cond = cond_value.text if ins.op == "ifne" else "!({})".format(cond_value.text)
                    self.out.append("do {")
                    self.out.extend("    " + line for line in body_vm.out)
                    self.out.append("}} while ({});".format(cond))
                    self.stack = self.owner._merge_stack(self.stack, body_vm.stack, ins.pc)
                    i += 1
                    continue
                if target_idx > stop:
                    self.owner._todo(self, ins, "conditional_target_outside_region")
                    i += 1
                    continue
                join = self.owner._find_else(self.body, i + 1, target_idx, stop)
                if join and self.body.instructions[join[0]].op == "goto":
                    goto_idx, end_idx = join
                    fall = self.owner._new_vm(self.body, self.stack)
                    fall.run(i + 1, goto_idx, depth + 1, break_pc, continue_pc)
                    taken = self.owner._new_vm(self.body, self.stack)
                    taken.run(target_idx, end_idx, depth + 1, break_pc, continue_pc)
                    if ins.op == "ifeq":
                        then_vm, else_vm, condition = fall, taken, cond_value.text
                    else:
                        then_vm, else_vm, condition = taken, fall, cond_value.text
                    if not then_vm.out and not else_vm.out and len(then_vm.stack) == len(else_vm.stack):
                        self.stack = self.owner._merge_branch_stacks(
                            then_vm.stack, else_vm.stack, condition, ins.pc)
                    else:
                        self.out.append("if ({}) {{".format(condition))
                        self.out.extend("    " + line for line in then_vm.out)
                        self.out.append("} else {")
                        self.out.extend("    " + line for line in else_vm.out)
                        self.out.append("}")
                        self.stack = self.owner._merge_branch_stacks(
                            then_vm.stack, else_vm.stack, condition, ins.pc)
                    i = end_idx
                    continue
                branch_vm = self.owner._new_vm(self.body, self.stack)
                branch_vm.run(i + 1, target_idx, depth + 1, break_pc, continue_pc)
                condition = self.owner._branch_expr(ins.op, cond_value)
                self.out.append("if ({}) {{".format(condition))
                self.out.extend("    " + line for line in branch_vm.out)
                self.out.append("}")
                self.stack = self.owner._merge_stack(self.stack, branch_vm.stack, ins.pc)
                i = target_idx
                continue
            if ins.op == "tableswitch":
                self.owner._emit_switch(self, ins, i, stop, depth, break_pc, continue_pc)
                i = self.owner.metrics.pop("switchNextIndex", i + 1)
                continue
            self.owner._execute(self, self.body, ins)
            i += 1


def _parse_switch_operand(arg):
    match = re.search(r"defaultOffset\s+(-?\d+)\s+low\s+(-?\d+)\s+high\s+(-?\d+)", arg)
    if not match: return None
    return int(match.group(1)), int(match.group(2)), int(match.group(3))


def _has_shared_default_join(target_index, body, starts, default_idx, stop):
    """Return whether an empty default target is the common switch join.

    The condition is intentionally strict: the default target must be the
    last dispatch target, and every preceding arm must end in an unconditional
    goto to it. This avoids treating a real fall-through case body as code
    after the switch.
    """
    if not starts or default_idx != max(starts):
        return False
    non_default_starts = [start for start in starts if start != default_idx]
    if not non_default_starts:
        return False
    for start in non_default_starts:
        next_start = min((x for x in starts if x > start), default=stop)
        tail_idx = next_start - 1
        if tail_idx < start:
            return False
        tail = body.instructions[tail_idx]
        tail_target = target_index(body, branch_target(tail)) if tail.op == "goto" else None
        if tail_target != default_idx:
            return False
    return True


def _emit_conditional_switch(self, vm, ins, idx, stop, depth, break_pc, continue_pc=None):
    """Structure ECMA switch bytecode using SpiderMonkey v22 CASE semantics.

    jsopcode.tbl documents CONDSWITCH as a decompilable no-op, CASE as strict
    equality with a jump on match, and DEFAULT as popping the discriminant
    before jumping. That gives a reliable dispatch table without guessing.
    """
    body = vm.body
    case_ops, default_op = [], None
    for j in range(idx + 1, stop):
        if body.instructions[j].op == "case":
            case_ops.append(j)
        elif body.instructions[j].op == "default":
            default_op = j
            break
        elif body.instructions[j].op in {"return", "retrval", "throw", "stop"}:
            break
    if default_op is None:
        self._todo(vm, ins, "conditional_switch_default_missing")
        self.metrics["switchNextIndex"] = idx + 1
        return
    discriminant = self._pop(vm, ins)
    base_stack = copy.deepcopy(vm.stack)
    entries = []
    cursor = idx + 1
    for case_idx in case_ops:
        candidate_vm = self._new_vm(body, base_stack + [discriminant])
        candidate_vm.run(cursor, case_idx, depth + 1, break_pc, continue_pc)
        candidate = candidate_vm.stack[-1] if candidate_vm.stack else Expr("undefined /* TODO_BYTECODE empty_case_value */", False, "unknown", unknown=True)
        entries.append((candidate.text, branch_target(body.instructions[case_idx])))
        cursor = case_idx + 1
    default_pc = branch_target(body.instructions[default_op])
    targets = [pc for _, pc in entries] + [default_pc]
    target_idxs = [self._target_index(body, pc) if pc is not None else None for pc in targets]
    if not target_idxs or any(t is None or t <= default_op or t > stop for t in target_idxs):
        self._todo(vm, ins, "conditional_switch_target_invalid")
        self.metrics["switchNextIndex"] = idx + 1
        return
    starts = sorted(set(target_idxs))
    default_idx = self._target_index(body, default_pc)
    # SpiderMonkey can encode an empty `default` arm as the common join after
    # all explicit case bodies. Keep that join outside the switch.
    shared_default_join = _has_shared_default_join(self._target_index, body, starts, default_idx, stop)
    if shared_default_join:
        self.metrics["conditionalSwitchSharedDefaultJoins"] += 1
    exits = []
    for start in starts:
        next_start = min((x for x in starts if x > start), default=stop)
        for j in range(start, next_start):
            op = body.instructions[j]
            if op.op == "goto":
                dest = self._target_index(body, branch_target(op))
                is_shared_default_join = shared_default_join and dest == default_idx
                if dest is not None and (dest > max(starts) or is_shared_default_join) and dest <= stop:
                    exits.append(dest)
    end_idx = min(exits) if exits else stop
    self._stmt(vm, "switch ({}) {{".format(discriminant.text), ins)
    labels = defaultdict(list)
    for value, pc in entries:
        labels[self._target_index(body, pc)].append("case {}:".format(value))
    labels[self._target_index(body, default_pc)].append("default:")
    for start in starts:
        next_start = min((x for x in starts if x > start), default=end_idx)
        end = min(next_start, end_idx)
        vm.out.extend("    " + label for label in labels[start])
        case_vm = self._new_vm(body, base_stack)
        case_vm.run(start, end, depth + 1, end_idx, continue_pc)
        vm.out.extend("    " + line for line in case_vm.out)
        if not case_vm.out or not case_vm.out[-1].strip().startswith(("break", "return", "throw", "continue")):
            vm.out.append("    break;")
    vm.out.append("}")
    self.metrics["conditionalSwitches"] += 1
    self.metrics["conditionalSwitchPcs"].add((body.index, idx))
    self.metrics["conditionalSwitchPcs"].update((body.index, j) for j in case_ops)
    self.metrics["conditionalSwitchPcs"].add((body.index, default_op))
    vm.stack = base_stack
    self.metrics["switchNextIndex"] = end_idx


def _emit_switch(self, vm, ins, idx, stop, depth, break_pc, continue_pc=None):
    body = vm.body
    details = _parse_switch_operand(ins.arg)
    if not details or not ins.switch_cases:
        self._todo(vm, ins, "tableswitch_table_missing")
        self.metrics["switchNextIndex"] = idx + 1
        return
    default_off, low, high = details
    discriminant = vm.stack.pop() if vm.stack else Expr("undefined", False, "unknown", unknown=True)
    case_entries = [(value, ins.pc + off) for value, off in ins.switch_cases]
    default_pc = ins.pc + default_off
    targets = [pc for _, pc in case_entries] + [default_pc]
    target_indexes = [self._target_index(body, pc) for pc in targets]
    if any(x is None or x >= stop for x in target_indexes):
        self._todo(vm, ins, "tableswitch_target_invalid")
        self.metrics["switchNextIndex"] = idx + 1
        return
    case_starts = sorted(set(target_indexes))
    default_idx = self._target_index(body, default_pc)
    shared_default_join = _has_shared_default_join(self._target_index, body, case_starts, default_idx, stop)
    if shared_default_join:
        self.metrics["tableSwitchSharedDefaultJoins"] += 1
    end_candidates = []
    for start in case_starts:
        next_start = min((x for x in case_starts if x > start), default=stop)
        for k in range(start, next_start):
            op = body.instructions[k]
            if op.op == "goto":
                t = branch_target(op)
                ti = self._target_index(body, t) if t is not None else None
                if ti is not None and (ti > max(case_starts) or (shared_default_join and ti == default_idx)):
                    end_candidates.append(ti)
    end_idx = min(end_candidates) if end_candidates else stop
    self._stmt(vm, "switch ({}) {{".format(discriminant.text), ins)
    labels = defaultdict(list)
    for value, pc in case_entries:
        ti = self._target_index(body, pc)
        labels[ti].append("case {}:".format(value))
    labels[self._target_index(body, default_pc)].append("default:")
    for start in case_starts:
        next_start = min((x for x in case_starts if x > start), default=end_idx)
        end = min(next_start, end_idx)
        vm.out.extend("    " + x for x in labels[start])
        case_vm = self._new_vm(body, vm.stack)
        case_vm.run(start, end, depth + 1, end_idx, continue_pc)
        vm.out.extend("    " + x for x in case_vm.out)
        # Table switch source normally terminates each case with a jump to the common exit.
        if not case_vm.out or not case_vm.out[-1].strip().startswith(("break", "return", "throw")):
            vm.out.append("    break;")
    vm.out.append("}")
    self.metrics["switches"] += 1
    self.metrics["switchPcs"].add((body.index, idx))
    self.metrics["switchNextIndex"] = end_idx


Decompiler._emit_switch = _emit_switch
Decompiler._emit_conditional_switch = _emit_conditional_switch


def read_dependencies(path):
    by_source = defaultdict(list)
    if not path.exists(): return by_source
    with path.open(newline="", encoding="utf-8") as f:
        for row in csv.DictReader(f):
            by_source[row["from"]].append(row)
    return by_source


def read_load_order(path):
    order = {}
    if path.exists():
        for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            m = DEP_PATH_RE.match(line)
            if m: order[m.group(2)] = int(m.group(1))
    return order


def module_paths():
    found = []
    for tree in ("src_jsc", "data_cn_jsc"):
        for p in sorted((RECOVERED / tree).rglob("*.js.disasm.txt")):
            rel = p.relative_to(RECOVERED)
            source_rel = str(rel)[:-len(".js.disasm.txt")] + ".jsc"
            out_rel = Path(str(rel)[:-len(".disasm.txt")])
            found.append((source_rel, p, p.with_name(p.name.replace(".js.disasm.txt", ".js.structure.md")), out_rel))
    return found


def build_file(source_rel, disasm, outline, out_rel, out_root, specs, deps, order):
    bodies = parse_disassembly(disasm, outline)
    metrics = {
        "bodies": 0, "instructions": 0, "todoOpcodes": Counter(),
        "approximateOpcodes": Counter(), "stackUnknowns": 0,
        "stackUnderflows": 0, "stackMergeConflicts": 0, "stackResiduals": 0,
        "missingFunctionLinks": 0, "detachedFunctions": 0, "switches": 0,
        "sourceLines": [], "switchNextIndex": 0, "structuredIterators": 0,
        "iteratorPcs": set(), "switchPcs": set(), "conditionalSwitchPcs": set(),
        "structuredTryPcs": set(), "structuredTryCount": 0,
        "conditionalSwitches": 0, "conditionalSwitchSharedDefaultJoins": 0,
        "tableSwitchSharedDefaultJoins": 0,
        "structuredDoWhileLoops": 0, "terminalReturnPcs": set(),
        "renderedBodyIndexes": set(),
    }
    dec = Decompiler(bodies, specs, metrics)
    Decompiler._rendered_descendants = set()
    root = next((b for b in bodies if b.depth == 0), None)
    if root:
        text = dec.render_body(root)
    else:
        text = "// Approximate reconstruction unavailable.\n/* TODO_BYTECODE missing_root_script */\n"
    out_file = out_root / out_rel
    out_file.parent.mkdir(parents=True, exist_ok=True)
    out_file.write_text(text, encoding="utf-8")

    cfg_by_body = [cfg_analysis(b, specs) for b in bodies]
    all_ins = [ins for body in bodies for ins in body.instructions]
    owner_by_ins = {id(ins): (body, idx) for body in bodies for idx, ins in enumerate(body.instructions)}
    supported = 0
    unresolved = Counter()
    for ins in all_ins:
        spec = specs.get(ins.op)
        owner, ins_idx = owner_by_ins[id(ins)]
        if owner is not None and owner.index not in metrics["renderedBodyIndexes"]:
            unresolved[ins.op] += 1
        elif not spec:
            unresolved[ins.op] += 1
        elif spec.get("decompose"):
            supported += 1
        elif ins.op in dec.SUPPORTED_OPS:
            supported += 1
        elif ins.op in {"iter", "iternext", "moreiter", "enditer"} and (owner.index, ins_idx) in metrics["iteratorPcs"]:
            supported += 1
        elif ins.op in {"setrval", "enditer", "retrval"} and (owner.index, ins_idx) in metrics["terminalReturnPcs"]:
            supported += 1
        elif ins.op in {"try", "exception", "enterblock", "leaveblock"} and (owner.index, ins_idx) in metrics["structuredTryPcs"]:
            supported += 1
        elif ins.op in {"condswitch", "case", "default"} and (owner.index, ins_idx) in metrics["conditionalSwitchPcs"]:
            supported += 1
        elif ins.op == "tableswitch" and (owner.index, ins_idx) in metrics["switchPcs"]:
            supported += 1
        else:
            unresolved[ins.op] += 1
    recovery_rate = supported / len(all_ins) if all_ins else 1.0
    cfg_anomalies = sorted(set(a for cfg in cfg_by_body for a in cfg["anomalies"]))
    dep_rows = deps.get(source_rel, [])
    recovery = {
        "input": str(disasm.relative_to(PROJECT)), "outline": str(outline.relative_to(PROJECT)),
        "sourceTextRecovered": False, "output": str(out_file.relative_to(out_root)),
        "scriptBodies": len(bodies), "instructions": len(all_ins),
        "translatedOpcodeInstructions": supported, "recoveryRate": round(recovery_rate, 6),
        "structuredForInLoops": metrics["structuredIterators"],
        "structuredTryCatchBlocks": metrics["structuredTryCount"],
        "structuredDoWhileLoops": metrics["structuredDoWhileLoops"],
        "structuredConditionalSwitches": metrics["conditionalSwitches"],
        "sharedDefaultSwitchJoins": (metrics["conditionalSwitchSharedDefaultJoins"] +
                                      metrics["tableSwitchSharedDefaultJoins"]),
        "sharedDefaultConditionalSwitchJoins": metrics["conditionalSwitchSharedDefaultJoins"],
        "sharedDefaultTableSwitchJoins": metrics["tableSwitchSharedDefaultJoins"],
        "unresolvedOpcodes": dict(sorted(unresolved.items())),
        "emittedTodoMarkersByOpcode": dict(sorted(metrics["todoOpcodes"].items())),
        "approximateOpcodes": dict(sorted(metrics["approximateOpcodes"].items())),
        "functionLinksMissing": metrics["missingFunctionLinks"], "detachedFunctionBodies": metrics["detachedFunctions"],
        "cfg": {"blocks": sum(x["blocks"] for x in cfg_by_body), "edges": sum(x["edges"] for x in cfg_by_body),
                "stackMergeConflicts": sum(x["stackMergeConflicts"] for x in cfg_by_body),
                "unreachableBlocks": sum(x["unreachableBlocks"] for x in cfg_by_body),
                "anomalies": cfg_anomalies},
        "expressionSimulation": {"stackUnderflows": metrics["stackUnderflows"], "stackUnknownEffects": metrics["stackUnknowns"], "residualValues": metrics["stackResiduals"], "stackMergeConflicts": metrics["stackMergeConflicts"]},
        "sourceLineRange": [min(metrics["sourceLines"]), max(metrics["sourceLines"])] if metrics["sourceLines"] else None,
        "startupOrder": order.get(source_rel),
        "dependencies": [{"to": row["to"], "scope": row["scope"], "function": row["function"], "literal": row["literal"], "line": row["disasm_line"]} for row in dep_rows],
        "manualReviewRecommended": bool(unresolved or cfg_anomalies or metrics["missingFunctionLinks"] or metrics["detachedFunctions"] or metrics["stackUnderflows"] or metrics["stackUnknowns"] or metrics["stackResiduals"] or metrics["stackMergeConflicts"]),
    }
    report_path = out_file.with_name(out_file.stem.replace(".js", "") + ".recovery.json")
    report_path.write_text(json.dumps(recovery, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return out_file, report_path, recovery


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--only", nargs="*", help="limit to source-relative paths such as src_jsc/main.jsc")
    parser.add_argument("--jobs", type=int, default=1)
    args = parser.parse_args()
    specs, _ = load_opcode_specs(OPCODE_TABLE)
    deps = read_dependencies(RECOVERED / "dependencies.csv")
    order = read_load_order(RECOVERED / "load_order.md")
    outputs = []
    all_modules = module_paths()
    selected = set(args.only or [])
    if selected:
        all_modules = [row for row in all_modules if row[0] in selected]
        missing = selected - {row[0] for row in all_modules}
        if missing:
            parser.error("input module(s) not found: " + ", ".join(sorted(missing)))
    out_root = args.output.resolve()
    out_root.mkdir(parents=True, exist_ok=True)
    for n, (source_rel, disasm, outline, out_rel) in enumerate(all_modules, 1):
        out_file, report, metrics = build_file(source_rel, disasm, outline, out_rel, out_root, specs, deps, order)
        outputs.append((source_rel, out_file, report, metrics))
        if n % 25 == 0 or n == len(all_modules):
            print("reconstructed {}/{} modules".format(n, len(all_modules)), flush=True)
    summary = {
        "modules": len(outputs), "scripts": sum(x[3]["scriptBodies"] for x in outputs),
        "instructions": sum(x[3]["instructions"] for x in outputs),
        "translatedOpcodeInstructions": sum(x[3]["translatedOpcodeInstructions"] for x in outputs),
        "weightedRecoveryRate": round(sum(x[3]["translatedOpcodeInstructions"] for x in outputs) / max(1, sum(x[3]["instructions"] for x in outputs)), 6),
        "outputs": [x[1].relative_to(out_root).as_posix() for x in outputs],
    }
    (out_root / "reconstruction_summary.json").write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    with (out_root / "manual_review_modules.csv").open("w", newline="", encoding="utf-8") as stream:
        writer = csv.writer(stream)
        writer.writerow(["source", "output", "recovery_rate", "unresolved_opcodes", "cfg_anomalies", "function_links_missing", "detached_functions"])
        for source_rel, out_file, report, metrics in outputs:
            r = metrics
            if r["manualReviewRecommended"]:
                writer.writerow([source_rel, out_file.relative_to(out_root).as_posix(), r["recoveryRate"], json.dumps(r["unresolvedOpcodes"], ensure_ascii=False), len(r["cfg"]["anomalies"]), r["functionLinksMissing"], r["detachedFunctionBodies"]])
    # A few files carry deliberate client-behaviour fixes that must differ from
    # the bytecode; the rewrite above would otherwise destroy them silently.
    import sys as _sys
    _sys.path.insert(0, str(Path(__file__).resolve().parent))
    import source_patches
    patched, already, problems = source_patches.apply(out_root)
    for problem in problems:
        print("SOURCE PATCH PROBLEM: {}".format(problem))
    print("source patches: {} applied, {} already present, {} problem(s)".format(
        len(patched), len(already), len(problems)))
    print("weighted recovery rate: {:.2%}".format(summary["weightedRecoveryRate"]))
    print("outputs: {} (JS + recovery JSON) under {}".format(len(outputs), out_root))


Decompiler._rendered_descendants = set()


if __name__ == "__main__":
    main()
