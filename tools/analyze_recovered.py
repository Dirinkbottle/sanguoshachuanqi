#!/usr/bin/env python3
"""Extract literal module references and a conditional startup walk."""

import ast
import csv
import posixpath
import re
from collections import defaultdict
from pathlib import Path


HERE = Path(__file__).resolve().parent
WORKSPACE = HERE.parents[1]
RECOVERED = HERE.parent / "Recovered"
STATUS = RECOVERED / "recovery_status.csv"
STRING_RE = re.compile(r'^\d{5,}:\s+\d+\s+string ("(?:\\.|[^"])*")$')
SCRIPT_MAIN_RE = re.compile(r"^--- SCRIPT (.+?):(\d+) ---$", re.MULTILINE)


def load_index():
    rows = list(csv.DictReader(STATUS.open(encoding="utf-8")))
    by_key = {}
    by_basename = defaultdict(list)
    for row in rows:
        rel = Path(row["relative_path"])
        key = (row["tree"], rel.with_suffix("").as_posix())
        by_key[key] = row
        by_basename[rel.name[:-4]].append(key)
    return rows, by_key, by_basename


def without_js_suffix(path):
    path = path.strip().replace("\\", "/")
    if path.endswith(".js"):
        path = path[:-3]
    elif path.endswith(".jsc"):
        path = path[:-4]
    return path


def resolve_literal(value, caller, by_key, by_basename):
    value = value.split("?", 1)[0].split("#", 1)[0].replace("\\", "/")
    if "/Resources/src_jsc/" in value:
        value = value.split("/Resources/src_jsc/", 1)[1]
        return by_key.get(("src_jsc", without_js_suffix(value)))
    if "/data_cn/" in value:
        value = value.split("/data_cn/", 1)[1]
        return by_key.get(("data_cn_jsc", without_js_suffix(value)))
    if value.startswith("data_cn_jsc/"):
        return by_key.get(("data_cn_jsc", without_js_suffix(value[len("data_cn_jsc/"):])) )
    if value.startswith("data_cn/"):
        return by_key.get(("data_cn_jsc", without_js_suffix(value[len("data_cn/"):])) )

    # Cfg/headers.js builds the data_cn_jsc/plan or /art prefix at runtime,
    # then appends one of these absolute-looking /sgs_*.js string literals.
    if caller[0] == "src_jsc" and caller[1] == "Cfg/headers.jsc" and value.startswith("/sgs_"):
        choices = by_basename.get(Path(value).name[:-3], [])
        data_choices = [key for key in choices if key[0] == "data_cn_jsc"]
        return by_key.get(data_choices[0]) if len(data_choices) == 1 else None

    value = without_js_suffix(value.lstrip("/"))
    caller_tree, caller_path = caller
    parent = posixpath.dirname(caller_path)
    candidates = []
    if value.startswith("src_jsc/"):
        candidates.append(("src_jsc", value[len("src_jsc/"):]))
    elif value.startswith("data_cn_jsc/"):
        candidates.append(("data_cn_jsc", value[len("data_cn_jsc/"):]))
    else:
        candidates.extend([
            (caller_tree, posixpath.normpath(posixpath.join(parent, value))),
            (caller_tree, posixpath.normpath(value)),
            ("src_jsc", posixpath.normpath(value)),
            ("data_cn_jsc", posixpath.normpath(value)),
        ])
    for key in candidates:
        if key in by_key:
            return by_key[key]
    return None


def read_edges(rows, by_key, by_basename):
    edges = {}
    unresolved = []
    resource_refs = []
    resource_paths = [r["path"] for r in csv.DictReader(
        (HERE.parent / "metadata" / "resource_map.csv").open(encoding="utf-8"))]
    for row in rows:
        caller = (row["tree"], row["relative_path"])
        listing = RECOVERED / row["output_path"]
        text = listing.read_text(encoding="utf-8", errors="replace")
        scope = "top-level"
        current_function = ""
        block_no = 0
        for line_no, line in enumerate(text.splitlines(), start=1):
            if line.startswith(";; function object["):
                scope = "nested"
                current_function = line.split("] ", 1)[-1]
            elif line.startswith(";; nested bytecode depth="):
                block_no += 1
            match = STRING_RE.match(line)
            if not match:
                continue
            try:
                value = ast.literal_eval(match.group(1))
            except (SyntaxError, ValueError):
                continue
            candidate_text = value.strip()
            if not (candidate_text.endswith(".js") or candidate_text.endswith(".jsc")):
                continue
            target = resolve_literal(value, caller, by_key, by_basename)
            if not target:
                resource_name = value.split("|", 1)[-1].strip().replace("\\", "/")
                matching_resources = [p for p in resource_paths if p.endswith("/" + resource_name)]
                if matching_resources:
                    resource_refs.append((row["tree"], row["relative_path"], line_no,
                                          value, matching_resources[0]))
                else:
                    unresolved.append((row["tree"], row["relative_path"], line_no, value))
                continue
            to = (target["tree"], target["relative_path"])
            edge = {
                "from": caller[0] + "/" + caller[1],
                "to": to[0] + "/" + to[1],
                "scope": scope,
                "function": current_function,
                "literal": value,
                "disasm_line": line_no,
            }
            key = (edge["from"], edge["to"], scope)
            edges.setdefault(key, edge)
    return list(edges.values()), unresolved, resource_refs


def write_dependencies(edges, unresolved, resource_refs):
    columns = ["from", "to", "scope", "function", "literal", "disasm_line"]
    with (RECOVERED / "dependencies.csv").open("w", newline="", encoding="utf-8") as stream:
        writer = csv.DictWriter(stream, fieldnames=columns)
        writer.writeheader()
        writer.writerows(sorted(edges, key=lambda e: (e["from"], e["disasm_line"], e["to"])))
    with (RECOVERED / "unresolved_module_literals.csv").open("w", newline="", encoding="utf-8") as stream:
        writer = csv.writer(stream)
        writer.writerow(["tree", "relative_path", "disasm_line", "literal"])
        writer.writerows(unresolved)
    with (RECOVERED / "resource_references.csv").open("w", newline="", encoding="utf-8") as stream:
        writer = csv.writer(stream)
        writer.writerow(["tree", "relative_path", "disasm_line", "literal", "resource_path"])
        writer.writerows(resource_refs)


def startup_walk(edges):
    top = defaultdict(list)
    for edge in edges:
        startup_function = edge["from"] == "src_jsc/main.jsc" and edge["function"] == "main_game"
        if edge["scope"] == "top-level" or startup_function:
            top[edge["from"]].append(edge["to"])

    entry = "src_jsc/main.jsc"
    order = []
    visited = set()

    def visit(module):
        if module in visited:
            return
        visited.add(module)
        order.append(module)
        for dependency in top.get(module, []):
            visit(dependency)

    visit(entry)
    return order, top


def write_load_order(edges, unresolved, resource_refs):
    entry = "src_jsc/main.jsc"
    order, top = startup_walk(edges)
    all_sources = sorted({edge["from"] for edge in edges})
    total_refs = len(edges)
    reached = set(order)
    status_rows = list(csv.DictReader(STATUS.open(encoding="utf-8")))
    unreferenced = [
        row for row in status_rows
        if row["tree"] + "/" + row["relative_path"] not in reached
    ]
    with (RECOVERED / "unreferenced_scripts.csv").open("w", newline="", encoding="utf-8") as stream:
        writer = csv.DictWriter(stream, fieldnames=["tree", "relative_path", "instructions", "functions"])
        writer.writeheader()
        for row in unreferenced:
            writer.writerow({
                "tree": row["tree"],
                "relative_path": row["relative_path"],
                "instructions": row["instructions"],
                "functions": row["functions"],
            })
    text = [
        "# Recovered startup and module dependency order",
        "",
        "Entry point: `src_jsc/main.jsc` (`main.js`). The listing below follows",
        "the literal module-path references decoded from the bytecode, in first",
        "appearance order, then walks top-level dependencies. It also follows",
        "`main_game`, the entry's channel-selected startup function, once.",
        "Some references are conditional: `xs.useObfuscate`, channel/area,",
        "release settings, and `xs.loadTest` select different runtime branches.",
        "This is the static load walk, not a claim that every branch runs on",
        "every device.",
        "",
        "## Startup walk",
        "",
        "| Order | Script | Startup-reachable literal dependencies |",
        "|---:|---|---|",
    ]
    for i, module in enumerate(order, 1):
        deps = []
        seen = set()
        for target in top.get(module, []):
            if target not in seen:
                deps.append("`" + target + "`")
                seen.add(target)
        text.append("| {} | `{}` | {} |".format(i, module, ", ".join(deps) or "—"))
    text.extend([
        "",
        "## Direct entry references from `main.js`",
        "",
    ])
    for dep in top.get(entry, []):
        text.append("- `{}`".format(dep))
    text.extend([
        "",
        "## Recovered dependency graph",
        "",
        "`Recovered/dependencies.csv` contains {} resolved literal path edges".format(total_refs),
        "from all decoded scripts; `scope` distinguishes module-top-level",
        "references from references inside nested functions. References inside",
        "nested functions may be loaded only when those functions run.",
        "Unmatched `.js` literals are listed in",
        "`Recovered/unresolved_module_literals.csv` for review.",
        "Resolved non-bytecode resource paths are in",
        "`Recovered/resource_references.csv`.",
        "",
        "## Data configuration load sequence",
        "",
        "`src_jsc/Cfg/headers.jsc` selects `data_cn_jsc/plan` and",
        "`data_cn_jsc/art` from its runtime area and release prefixes. The 50",
        "server plan entries and 3 art entries keep the array order in the `Cfg/headers.js`",
        "disassembly. The same script then loads its 20 client-side `Cfg/*`",
        "modules. See that listing for exact order and indices. The two other",
        "plan scripts (`cfg_evolution_total_buff` and `sgs_upgrade_guide_conf`)",
        "are included in the recovered tree but are not in those literal arrays.",
        "",
        "## Coverage",
        "",
        "- {} unique compiled scripts occur in this startup walk.".format(len(order)),
        "- {} scripts contain resolved dependency literals.".format(len(all_sources)),
        "- {} unresolved path-like string literals were retained for manual review.".format(len(unresolved)),
        "- {} scripts are not reached by this literal startup walk; see".format(len(unreferenced)),
        "  `Recovered/unreferenced_scripts.csv`. Some may load through computed names or runtime data.",
        "- Exact original whitespace, comments, and source text were not present",
        "  in the XDR payload; see the reconstruction README for the recovery boundary.",
        "",
    ])
    (RECOVERED / "load_order.md").write_text("\n".join(text), encoding="utf-8")


def main():
    rows, by_key, by_basename = load_index()
    edges, unresolved, resource_refs = read_edges(rows, by_key, by_basename)
    write_dependencies(edges, unresolved, resource_refs)
    write_load_order(edges, unresolved, resource_refs)
    print("modules: {}; dependency edges: {}; resource references: {}; unresolved literals: {}".format(
        len(rows), len(edges), len(resource_refs), len(unresolved)))


if __name__ == "__main__":
    main()
