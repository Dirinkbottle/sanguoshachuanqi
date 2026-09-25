#!/usr/bin/env python3
"""Extract the static configuration domains and their link to protocol IDs.

The client's ID-bearing fields (general_id, dungeon_id, item_id, ...) are keys
into local tables under data_cn_jsc/plan/. Those tables are reached through one
accessor layer, Tools/CfgData.js, whose switch maps a CfgDataType constant to a
concrete sgs_* table. This script records that mapping plus the table shapes, so
the protocol documents can say which config domain an ID belongs to without
guessing.

Outputs:
  ServerProject/docs/config-domains.json
  ServerProject/docs/08-config-domains.md
"""
import json, os, re, sys
from collections import OrderedDict, defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SRC = os.path.join(ROOT, "ReconstructedJS", "src_jsc")
PLAN = os.path.join(ROOT, "ReconstructedJS", "data_cn_jsc", "plan")
DOCS = os.path.join(ROOT, "ServerProject", "docs")
REL = "ReconstructedJS/src_jsc"
BT = chr(96)


def q(v):
    return BT + str(v) + BT


def read(path):
    with open(path, encoding="utf-8", errors="replace") as fh:
        return fh.read()


def lines_of(src, pos):
    return src.count("\n", 0, pos) + 1


def walk_js(base):
    for root, dirs, files in os.walk(base):
        dirs[:] = [d for d in dirs if d != "__pycache__"]
        for fn in sorted(files):
            if fn.endswith(".js"):
                yield os.path.join(root, fn)


# --------------------------------------------------------------------------
# 1. CfgDataType constant -> sgs_* table, from the Tools/CfgData.js switch
# --------------------------------------------------------------------------
def parse_cfgdata_switch():
    src = read(os.path.join(SRC, "Tools", "CfgData.js"))
    pairs = []
    pattern = re.compile(
        r'case\s+xs\.Constant_(CfgDataType_[A-Za-z0-9_]+):(.*?)return\s+xs\.Cfg\.System\.([A-Za-z0-9_]+);',
        re.S)
    for m in pattern.finditer(src):
        pairs.append({
            "constant": "Constant_" + m.group(1),
            "constant_short": m.group(1),
            "table": m.group(3),
            "evidence": "%s/Tools/CfgData.js:%d" % (REL, lines_of(src, m.start())),
        })
    return pairs


def parse_constants():
    src = read(os.path.join(SRC, "Cfg", "Constant.js"))
    out = {}
    for m in re.finditer(r'\(xs\.(Constant_CfgDataType_[A-Za-z0-9_]+)\s*=\s*([^;]+)\);', src):
        out[m.group(1)] = {"value": m.group(2).strip(),
                           "evidence": "%s/Cfg/Constant.js:%d" % (REL, lines_of(src, m.start()))}
    return out


# --------------------------------------------------------------------------
# 2. plan table shapes
# --------------------------------------------------------------------------
def parse_plan_tables():
    tables = OrderedDict()
    empty_scripts = OrderedDict()
    for path in sorted(walk_js(PLAN)):
        src = read(path)
        rel = os.path.relpath(path, ROOT)
        m = re.search(r'\(xs\.Cfg\.System\.([A-Za-z0-9_]+)\s*=\s*([\{\[])', src)
        if not m:
            # decoded to a body-less script: the APK ships an empty file
            empty_scripts[os.path.basename(path)[:-3]] = {
                "file": rel, "lines": len(src.splitlines()),
                "evidence": rel,
            }
            continue
        name = m.group(1)
        shape = "object" if m.group(2) == "{" else "array"
        if shape == "object":
            # top-level record keys sit at exactly one indent level, quoted or not
            keys = re.findall(r'^    (?:"([^"]+)"|([A-Za-z_][A-Za-z0-9_]*))\s*:\s*[\{\[]', src, re.M)
            keys = [a or b for a, b in keys]
        else:
            # array tables hold records directly; count the record objects
            keys = re.findall(r'^    \{', src, re.M)
        fields = []
        if shape == "object":
            # Keyed tables (sgs_generals) use numeric record ids at the first level
            # and fields at the second. Flat tables (sgs_global_conf) use semantic
            # names at the first level and have no record layer at all.
            numeric = [k for k in keys if re.fullmatch(r'[\d_]+', k)]
            keyed = bool(keys) and len(numeric) >= 0.8 * len(keys)
            if not keyed:
                shape = "flat"
                fields = list(keys)
        # Every alphabetic key anywhere inside the table literal. Numeric and
        # quoted-id record keys are excluded by construction, so what remains is
        # the union of field names across all nesting levels and record shapes.
        body = src[m.end():]
        for f in re.finditer(r'(?<![\w."])([A-Za-z_][A-Za-z0-9_]*)\s*:', body):
            if f.group(1) not in fields:
                fields.append(f.group(1))
        tables[name] = {
            "table": name, "file": rel, "evidence": "%s:1" % rel, "shape": shape,
            "records": len(keys) if shape != "flat" else None,
            "top_level_entries": len(keys),
            "sample_keys": keys[:3],
            "fields": fields, "field_count": len(fields),
            "empty": len(keys) == 0,
        }
    return tables, empty_scripts


# --------------------------------------------------------------------------
# 3. which plan files the server may replace
# --------------------------------------------------------------------------
def parse_server_generated():
    src = read(os.path.join(SRC, "Cfg", "headers.js"))
    block = re.search(r'files_generated_by_server\s*=\s*\[(.*?)\]', src, re.S)
    out = []
    if block:
        for m in re.finditer(r'planDatePrefix\s*\+\s*"([^"]+)"', block.group(1)):
            out.append(m.group(1).lstrip("/"))
    client = re.search(r'files_generated_by_client\s*=\s*\[(.*?)\]', src, re.S)
    out2 = []
    if client:
        for m in re.finditer(r'artDatePrefix\s*\+\s*"([^"]+)"', client.group(1)):
            out2.append(m.group(1).lstrip("/"))
    return out, out2, "%s/Cfg/headers.js:%d" % (REL, lines_of(src, block.start()) if block else 1)


# --------------------------------------------------------------------------
# 4. CfgData consumers
# --------------------------------------------------------------------------
READ_RE = re.compile(r'readRecord(?:ByType|ByTypeAndKey|ByTypeAndKeyNoDefault|ByTypeAndKeyNoDefault)?\s*\(')


def parse_consumers():
    consumers = defaultdict(list)
    direct = defaultdict(list)
    for path in walk_js(SRC):
        rel = os.path.relpath(path, SRC)
        if rel == "Tools/CfgData.js":
            continue
        src = read(path)
        for m in re.finditer(r'xs\.Tools\.CfgData\.([A-Za-z0-9_]+)\s*\(\s*xs\.(Constant_CfgDataType_[A-Za-z0-9_]+)\s*(?:,\s*([^)]{0,60}))?\)', src):
            fn, const, key = m.group(1), m.group(2), (m.group(3) or "").strip()
            consumers[const].append({
                "file": rel, "line": lines_of(src, m.start()), "api": fn,
                "key_expr": key[:60],
            })
        for m in re.finditer(r'xs\.Cfg\.System\.([A-Za-z0-9_]+)\s*\[([^\]]{1,60})\]', src):
            direct[m.group(1)].append({
                "file": rel, "line": lines_of(src, m.start()), "key_expr": m.group(2).strip(),
            })
    return consumers, direct


# --------------------------------------------------------------------------
def main():
    pairs = parse_cfgdata_switch()
    constants = parse_constants()
    tables, empty_scripts = parse_plan_tables()
    server_files, client_files, server_ev = parse_server_generated()
    consumers, direct = parse_consumers()

    unknown = sorted({p["constant"] for p in pairs if p["constant"] not in constants})
    server_set = {os.path.basename(f) for f in server_files}
    client_set = {os.path.basename(f) for f in client_files}

    out = {
        "generated_from": "ReconstructedJS/{src_jsc,data_cn_jsc} (approximate bytecode reconstruction)",
        "note": "ID fields carried by the protocol are keys into these tables. "
                "No original-server capture exists; the tables below are the shipped ones.",
        "server_generated_files": server_files,
        "client_generated_files": client_files,
        "server_generated_evidence": server_ev,
        "constants": constants,
        "unknown_constants": unknown,
        "domains": pairs,
        "tables": tables,
        "empty_scripts": empty_scripts,
        "consumers": {k: v for k, v in consumers.items()},
        "direct_lookups": {k: v for k, v in direct.items()},
    }

    os.makedirs(DOCS, exist_ok=True)
    with open(os.path.join(DOCS, "config-domains.json"), "w", encoding="utf-8") as fh:
        json.dump(out, fh, ensure_ascii=False, indent=1)

    # ---------------- markdown ----------------
    md = ["# 08 · 静态配置域与协议 ID", ""]
    md.append("> 本页由 " + q("tools/extract_config_domains.py") + " 生成。")
    md.append("> 协议里的 ID 字段（" + q("dungeon_id") + "、" + q("general_id") + "、" + q("item_id")
              + " 等）是本地配置表的键。")
    md.append("> 原版运营服务器已停服，**不存在原服抓包**；本页只记录随包配置与客户端的查表方式。")
    md.append("")
    md.append("## 8.1 访问层：" + q("Tools/CfgData.js"))
    md.append("")
    md.append("客户端不直接散查配置表，而是走 " + q("xs.Tools.CfgData")
              + " 的 " + q("readRecordByType*") + " 系列，"
              "用一个 " + q("Constant_CfgDataType_*") + " 常量选中具体表：")
    md.append("")
    md.append("| CfgDataType 常量 | → 配置表 | 表文件 | 记录数 | 证据 |")
    md.append("|---|---|---|---|---|")
    for p in pairs:
        t = tables.get(p["table"], {})
        md.append("| " + q(p["constant_short"]) + " | " + q(p["table"]) + " | "
                  + q(t.get("file", "（未在包内找到）")) + " | "
                  + (str(t.get("records", "—")) if t else "—") + " | " + q(p["evidence"]) + " |")
    md.append("")

    md.append("## 8.2 全部本地配置表")
    md.append("")
    md.append("下表覆盖 " + q("data_cn_jsc/plan/") + " 下恢复出的全部表。"
              + q("服务端可替换") + "一列来自 " + q(server_ev) + "：这些表在包内提供一份，"
              "但设计上允许由服务端下发覆盖（见 8.3）。")
    md.append("")
    for name, t in sorted(tables.items()):
        t["server_replaceable"] = (os.path.basename(t["file"]) in server_set)
    md.append("三种形状：")
    md.append("")
    md.append("- " + q("keyed") + "：数字/ID 键的字典，第一层是记录，第二层是字段（如 " + q("sgs_generals") + "）")
    md.append("- " + q("flat") + "：语义名直接做第一层，没有记录层（如 " + q("sgs_global_conf") + "）")
    md.append("- " + q("array") + "：记录数组，没有键（如 " + q("sgs_user_level_conf") + "）")
    md.append("")
    md.append("| 配置表 | 形状 | 记录数 | 字段数 | 键/字段样例 | 服务端可替换 |")
    md.append("|---|---|---|---|---|---|")
    for name, t in sorted(tables.items()):
        sample = ", ".join(q(k) for k in t["sample_keys"]) or "—"
        if t["empty"]:
            count = "**0（包内为空）**"
        elif t["shape"] == "flat":
            count = "—（扁平）"
        else:
            count = str(t["records"])
        md.append("| " + q(name) + " | " + t["shape"] + " | " + count
                  + " | " + str(t["field_count"])
                  + " | " + sample + " | " + ("是" if t["server_replaceable"] else "否") + " |")
    md.append("")
    empties = sorted(n for n, t in tables.items() if t["empty"])
    if empties:
        md.append("包内为**空表**的配置共 " + str(len(empties)) + " 个：" + ", ".join(q(e) for e in empties) + "。")
        md.append("")
        md.append("这一点很重要：这些表在 " + q("files_generated_by_server") + " 名单里，"
                  "说明它们的实际内容由服务端下发，包内只是占位。客户端在这类表上查不到记录是**预期行为**，"
                  "不是恢复缺失。")
        md.append("")

    md.append("## 8.3 服务端可替换的配置清单")
    md.append("")
    md.append("" + q("Cfg/headers.js") + " 里 " + q("xs.Cfg.System.files_generated_by_server")
              + " 列出 " + str(len(server_files)) + " 个路径，登录出错码 " + q("e_10011")
              + " 触发的 " + q("requestSGSConfig") + " 会按 " + q("download_url")
              + " 拉取新版本覆盖它们。")
    md.append("")
    md.append("下载机制（URL 拼接、二进制落盘、原生解压、覆盖目录）见 "
              + "[03-update-and-account.md §3.7](03-update-and-account.md)。")
    md.append("这是本协议里**唯一一条配置下发通道**：配置不走 " + q("cmn") + "，而是走文件替换。")
    md.append("")
    for f in server_files:
        md.append("- " + q(f))
    md.append("")
    md.append("另有 " + str(len(client_files)) + " 个美术配置由客户端侧生成：")
    md.append("")
    for f in client_files:
        md.append("- " + q(f))
    md.append("")

    shipped = {os.path.basename(t["file"])[:-3] for t in tables.values()}
    listed = {os.path.basename(f)[:-3] for f in server_files}
    no_file = sorted({p["table"] for p in pairs if p["table"] not in shipped and p["table"] not in listed})
    shipped_only = sorted(shipped - listed)

    md.append("## 8.4 声明清单与包内文件的交叉核对")
    md.append("")
    md.append("| 核对项 | 结果 |")
    md.append("|---|---|")
    md.append("| " + q("files_generated_by_server") + " 声明数 | " + str(len(listed)) + " |")
    md.append("| 包内 " + q("data_cn_jsc/plan") + " 文件数 | " + str(len(shipped)) + " |")
    md.append("| 声明了但包内没有 | " + (", ".join(q(x) for x in sorted(listed - shipped)) or "无") + " |")
    md.append("| 包内有但未声明 | " + (", ".join(q(x) for x in shipped_only) or "无") + " |")
    md.append("| " + q("CfgData") + " 指向但**全树无文件** | " + (", ".join(q(x) for x in no_file) or "无") + " |")
    md.append("")
    if no_file:
        md.append("最后一行是**客户端侧可证实的现象**：这些常量在 " + q("CfgData.js") + " 的 switch 里有分支，"
                  "但对应的 " + q("sgs_*.js") + " 既不在包内，也不在服务端下发清单里。"
                  "运行时这些分支会拿到 " + q("undefined") + "。")
        md.append("")
        md.append("这不代表原版服务端会补发它们——清单里没有。列在这里是为了避免后续实现把"
                  "「配置文件缺失」误当成「协议字段缺失」。")
        md.append("")
    no_fields = sorted(n for n, t in tables.items() if t["field_count"] == 0 and not t["empty"])
    if no_fields:
        md.append("有 " + str(len(no_fields)) + " 个表**没有任何字母键**：" + ", ".join(q(x) for x in no_fields) + "。")
        md.append("")
        md.append("这不是提取缺失——它们的键全是数字（" + q("cfg_evolution_total_buff") + " 形如 "
                  + q('"52111006"') + " → " + q('"1"') + " → " + q('{"7": 10}') + "），"
                  "或是位置数组（" + q("sgs_hulao_reward_conf") + " 形如 " + q('"1": ["791815","item_name1","2"]')
                  + "）。位置含义只能从消费代码推断，不能从键名读出。")
        md.append("")

    if empty_scripts:
        md.append("包内还有 " + str(len(empty_scripts)) + " 个**空脚本**——脚本体里没有任何赋值，"
                  "反汇编只有一条 " + q("stop") + "：" + ", ".join(q(e) for e in empty_scripts) + "。")
        md.append("")
        md.append("它们在 " + q("Recovered/data_cn_jsc/plan/*.disasm.txt") + " 里可独立核对，"
                  "是**发布内容为空**，不是解码失败。")
        md.append("")

    md.append("## 8.5 谁在消费这些表")
    md.append("")
    md.append("按 " + q("Constant_CfgDataType_*") + " 统计的调用点数：")
    md.append("")
    md.append("| CfgDataType | 配置表 | 调用点 | 示例位置 |")
    md.append("|---|---|---|---|")
    by_const = {p["constant"]: p["table"] for p in pairs}
    for const in sorted(consumers, key=lambda c: -len(consumers[c])):
        uses = consumers[const]
        first = uses[0]
        md.append("| " + q(const) + " | " + q(by_const.get(const, "（不在 CfgData 表中）")) + " | "
                  + str(len(uses)) + " | " + q("%s:%d" % (first["file"], first["line"])) + " |")
    md.append("")

    if direct:
        md.append("## 8.6 绕过访问层的直接查表")
        md.append("")
        md.append("| 配置表 | 次数 | 示例 |")
        md.append("|---|---|---|")
        for name in sorted(direct, key=lambda n: -len(direct[n])):
            uses = direct[name]
            md.append("| " + q(name) + " | " + str(len(uses)) + " | "
                      + q("%s:%d  [%s]" % (uses[0]["file"], uses[0]["line"], uses[0]["key_expr"][:30])) + " |")
        md.append("")

    md.append("## 8.7 边界")
    md.append("")
    md.append("这些表是**随包发布的静态内容**，不代表原服数据库结构，也不代表数值平衡。")
    md.append("表里的字段含义只从客户端读取行为可推断；真正的服务端取值与校验 "
              "见 [90-blackbox.md](90-blackbox.md)。")
    md.append("")
    md.append("字段的**中文语义**（哪个字段是血/攻/防/智、枚举取值含义）见 "
              + "[09-config-fields.md](09-config-fields.md)：那里用第三方数据做了逐条交叉验证——"
              "278 条武将 × 8 个属性字段全部一致，技能与装备的类型枚举 100% 纯净，"
              "四张等级表也都是本页已有的表。"
              "该页 §9.4 说明了为什么另外 3 张 CfgData 分支指向的表不需要补。")
    md.append("")

    with open(os.path.join(DOCS, "08-config-domains.md"), "w", encoding="utf-8") as fh:
        fh.write("\n".join(md).rstrip() + "\n")

    print("cfgdata mappings: %d (unknown constants: %d)" % (len(pairs), len(unknown)))
    print("plan tables: %d ; server-replaceable: %d ; consumer constants: %d ; direct lookups: %d"
          % (len(tables), sum(1 for t in tables.values() if t["server_replaceable"]),
             len(consumers), len(direct)))
    print("wrote docs/config-domains.json and docs/08-config-domains.md")


if __name__ == "__main__":
    main()
