#!/usr/bin/env python3
"""Cross-check our extracted plan tables against the third-party data site.

The site (https://mercury233.me/sgscq/) publishes tables the author extracted
from a client build of the live service. It is NOT an official source and it is
a different, later version than the APK in this repository, so nothing here is
evidence about our own build until the values are shown to agree.

This script measures exactly that agreement. Only where two sources agree record
by record do we treat the site's Chinese labels as the meaning of our fields.

Usage:
    python3 tools/crosscheck_config_site.py [--cache DIR]

Pages are cached under DIR (default /tmp/sgscq-site) so repeated runs are cheap.
"""
import argparse, html, os, re, subprocess, sys
from collections import Counter, defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
PLAN = os.path.join(ROOT, "ReconstructedJS", "data_cn_jsc", "plan")
SITE = "https://mercury233.me/sgscq"
PAGES = ("general", "skill", "equip", "magicbuff", "level")


def fetch(cache, page):
    path = os.path.join(cache, page + ".html")
    if not os.path.exists(path) or os.path.getsize(path) == 0:
        os.makedirs(cache, exist_ok=True)
        subprocess.run(
            ["curl", "-sSL", "--max-time", "60", "-o", path, "%s/%s.html" % (SITE, page)],
            check=True,
        )
    with open(path, encoding="utf-8", errors="replace") as fh:
        return fh.read()


def site_table(text, table_id):
    """Return (headers, rows) of one <table id=...>."""
    m = re.search(r'<table[^>]*id="' + re.escape(table_id) + r'"[^>]*>(.*?)</table>', text, re.S)
    if not m:
        return [], []
    thead = re.search(r"<thead>(.*?)</thead>", m.group(1), re.S)
    headers = []
    if thead:
        headers = [re.sub(r"\s+", " ", re.sub(r"<[^>]+>", " ", th)).strip()
                   for th in re.findall(r"<th[^>]*>(.*?)</th>", thead.group(1), re.S)]
    rows = []
    for tr in re.findall(r"<tr[^>]*>(.*?)</tr>", m.group(1), re.S):
        cells = [html.unescape(re.sub(r"\s+", " ", re.sub(r"<[^>]+>", " ", td))).strip()
                 for td in re.findall(r"<td[^>]*>(.*?)</td>", tr, re.S)]
        if cells:
            rows.append(cells)
    return headers, rows


def plan_keyed(name):
    """Parse a plan table keyed by id: {id: {field: value}}."""
    with open(os.path.join(PLAN, name + ".js"), encoding="utf-8", errors="replace") as fh:
        src = fh.read()
    out = {}
    for m in re.finditer(r'^    "([^"]+)": \{(.*?)^    \},?\s*$', src, re.M | re.S):
        rec = {}
        for f in re.finditer(r'^        ([A-Za-z_][A-Za-z0-9_]*):\s*(.+?),?\s*$', m.group(2), re.M):
            rec[f.group(1)] = f.group(2).strip().strip('"')
        out[m.group(1)] = rec
    return out


def plan_array(name):
    """Parse a plan table whose top level is an array of flat records."""
    with open(os.path.join(PLAN, name + ".js"), encoding="utf-8", errors="replace") as fh:
        src = fh.read()
    out = []
    for m in re.finditer(r"^    \{(.*?)^    \},?", src, re.M | re.S):
        rec = {}
        for f in re.finditer(r"^        ([A-Za-z_][A-Za-z0-9_]*):\s*(.+?),?\s*$", m.group(1), re.M):
            rec[f.group(1)] = f.group(2).strip().strip('"')
        out.append(rec)
    return out


def plan_arrays(name):
    """Parse a plan table of the shape {key: [ {..}, .. ]}."""
    with open(os.path.join(PLAN, name + ".js"), encoding="utf-8", errors="replace") as fh:
        src = fh.read()
    out = {}
    for m in re.finditer(r'^    ([A-Za-z_][A-Za-z0-9_]*): \[(.*?)^    \],?$', src, re.M | re.S):
        recs = []
        for r in re.finditer(r"\{([^{}]*)\}", m.group(2)):
            d = {}
            for f in re.finditer(r'([A-Za-z_][A-Za-z0-9_]*):\s*"?([^,"]*)"?', r.group(1)):
                d[f.group(1)] = f.group(2).strip()
            recs.append(d)
        out[m.group(1)] = recs
    return out


def plan_coin(name):
    """Parse {key: {"level": {num, total_num}}} line by line.

    A regex over the whole block is unsafe here: non-greedy matching across a
    5k-line literal silently swallows several keys into one group.
    """
    with open(os.path.join(PLAN, name + ".js"), encoding="utf-8", errors="replace") as fh:
        lines = fh.read().splitlines()
    out, current = {}, None
    for line in lines:
        m = re.match(r"^    ([A-Za-z_][A-Za-z0-9_]*): \{$", line)
        if m:
            current = m.group(1)
            out[current] = {}
            continue
        m = re.match(r'^        "(\d+)": \{ num: "([^"]*)", total_num: "([^"]*)" \},?$', line)
        if m and current:
            out[current][int(m.group(1))] = (float(m.group(2)), float(m.group(3)))
    return out


def numeric_equal(a, b):
    """Compare as numbers, falling back to string equality.

    The site prints rounded values, so an exact float comparison rejects rows
    that actually agree (2359741122 vs 2359741122.72).
    """
    try:
        return abs(float(a) - float(b)) < 1.0
    except (TypeError, ValueError):
        return str(a) == str(b)


def agreement(rows, records, pairs, key_col=0):
    """Per-field agreement between a site table and our records, matched by id."""
    stats = {}
    for _, field in pairs:
        stats[field] = [0, 0]
    matched = 0
    for row in rows:
        if len(row) <= key_col or not row[key_col].isdigit():
            continue
        rec = records.get(row[key_col])
        if rec is None:
            continue
        matched += 1
        for col, field in pairs:
            if len(row) <= col or field not in rec:
                continue
            stats[field][1] += 1
            if row[col] == rec[field]:
                stats[field][0] += 1
    return matched, stats


def purity(rows, records, col, field, key_col=0):
    """How purely a site column is explained by one of our fields."""
    table = defaultdict(Counter)
    for row in rows:
        if len(row) <= max(col, key_col) or not row[key_col].isdigit():
            continue
        rec = records.get(row[key_col])
        if rec is None or field not in rec:
            continue
        table[rec[field]][row[col]] += 1
    if not table:
        return None
    total = sum(sum(c.values()) for c in table.values())
    pure = sum(c.most_common(1)[0][1] for c in table.values())
    return pure / total, total, {v: c.most_common(1)[0][0] for v, c in sorted(table.items())}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--cache", default="/tmp/sgscq-site")
    args = parser.parse_args()

    general = fetch(args.cache, "general")
    skill = fetch(args.cache, "skill")
    equip = fetch(args.cache, "equip")
    level = fetch(args.cache, "level")

    print("source:", SITE, "(third-party, different client version)")
    print()

    # --- generals: attributes and growth ---------------------------------
    _, rows = site_table(general, "generals")
    ours = plan_keyed("sgs_generals")
    pairs = [(3, "general_hp"), (4, "general_attack"), (5, "general_defense"),
             (6, "general_wisdom"), (7, "general_hp_step"), (8, "general_attack_step"),
             (9, "general_defense_step"), (10, "general_wisdom_step")]
    matched, stats = agreement(rows, ours, pairs)
    print("sgs_generals: %d site rows, %d our records, %d matched by id" % (len(rows), len(ours), matched))
    labels = {3: "血", 4: "攻", 5: "防", 6: "智",
              7: "血成长", 8: "攻成长", 9: "防成长", 10: "智成长"}
    for col, field in pairs:
        ok, total = stats[field]
        print("   %-22s %-6s %d/%d" % (field, labels.get(col, ""), ok, total))
    print()

    # --- skills and equipment: enum values --------------------------------
    _, rows = site_table(skill, "skills")
    ours = plan_keyed("sgs_skills")
    print("sgs_skills: %d site rows, %d our records" % (len(rows), len(ours)))
    r = purity(rows, ours, 4, "skill_type")
    if r:
        print("   skill_type -> 类型  purity=%.1f%% n=%d" % (r[0] * 100, r[1]))
        for value, label in r[2].items():
            print("      %-3s = %s" % (value, label))
    print()

    _, rows = site_table(equip, "equips")
    ours = plan_keyed("sgs_equipments")
    print("sgs_equipments: %d site rows, %d our records" % (len(rows), len(ours)))
    for field in ("equipment_type", "equipment_pos"):
        r = purity(rows, ours, 3, field)
        if r:
            print("   %-15s -> 类型  purity=%.1f%% n=%d" % (field, r[0] * 100, r[1]))
            for value, label in r[2].items():
                print("      %-3s = %s" % (value, label))
    print()

    # --- player level curve ----------------------------------------------
    _, rows = site_table(level, "player-levels")
    ours = plan_array("sgs_user_level_conf")
    n = min(len(rows), len(ours))
    agree = sum(1 for i in range(n) if rows[i][1] == ours[i].get("exp_need"))
    print("sgs_user_level_conf: %d site rows, %d our records, exp_need agrees %d/%d"
          % (len(rows), len(ours), agree, n))
    # exp_total is the running sum of exp_need
    running = 0
    cumulative_ok = 0
    for rec in ours:
        running += int(rec.get("exp_need", 0))
        if str(running) == rec.get("exp_total"):
            cumulative_ok += 1
    print("   exp_total == running sum of exp_need: %d/%d" % (cumulative_ok, len(ours)))
    print()

    # --- the other three site level tables --------------------------------
    #
    # All three turn out to describe tables the package already ships. The site
    # presents them as standalone pages, which makes them look like the three
    # configs CfgData references but the package lacks (sgs_general_level_conf,
    # sgs_skill_upgrade_conf, sgs_equipment_upgrade_conf). They are not.
    exp = plan_arrays("sgs_upgrade_exp_conf")
    _, rows = site_table(level, "general-levels")
    print("general-levels -> sgs_upgrade_exp_conf (NOT sgs_general_level_conf)")
    for col, key in ((1, "shangshen_exp"), (3, "zhongshen_exp"),
                     (5, "xiashen_exp"), (7, "lieshen_exp")):
        arr = exp.get(key, [])
        n = min(len(arr), len(rows))
        ok = sum(1 for i in range(n) if numeric_equal(rows[i][col], arr[i].get("num")))
        print("   col %d -> %-16s %d/%d" % (col, key, ok, n))
    print()

    _, rows = site_table(level, "skill-levels")
    arr = exp.get("shen_jinengshengji", [])
    n = min(len(arr), len(rows))
    ok = sum(1 for i in range(n) if numeric_equal(rows[i][1], arr[i].get("num")))
    print("skill-levels -> sgs_upgrade_exp_conf.shen_jinengshengji  %d/%d" % (ok, n))
    print()

    _, rows = site_table(level, "equip-levels")
    coin = plan_coin("sgs_upgrade_coin_conf")
    columns = [("shenwuqi_qianghua", 1), ("shenfangju_qianghua", 2), ("shenzuoqi_qianghua", 3),
               ("shenjinnang_qianghua", 4), ("jinwuqi_qianghua", 5), ("jinfangju_qianghua", 6),
               ("jinzuoqi_qianghua", 7), ("jinjinnang_qianghua", 8)]
    print("equip-levels -> sgs_upgrade_coin_conf   (site level N == our key N-1)")
    total_ok = total = 0
    for key, col in columns:
        a = b = 0
        for row in rows:
            if len(row) <= col or not row[0].isdigit():
                continue
            level = int(row[0]) - 1
            if level in coin.get(key, {}):
                b += 1
                if numeric_equal(row[col], coin[key][level][0]):
                    a += 1
        total_ok += a
        total += b
    print("   %d/%d across all eight quality x part columns" % (total_ok, total))
    print()

    # --- tables our package does not ship --------------------------------
    print("tables CfgData references but the package does not ship:")
    for const, table, why in (
        ("CfgDataType_GeneralLevel", "sgs_general_level_conf",
         "superseded: the curve lives in sgs_upgrade_exp_conf; GeneralExpCfg is asserted dead"),
        ("CfgDataType_Skill_Upgrade", "sgs_skill_upgrade_conf",
         "superseded: site skill-levels matches sgs_upgrade_exp_conf.shen_jinengshengji"),
        ("CfgDataType_Equipment_Upgrade", "sgs_equipment_upgrade_conf",
         "superseded: site equip-levels matches sgs_upgrade_coin_conf"),
        ("CfgDataType_General_Insight", "sgs_general_insight_conf", "not published on the site"),
        ("CfgDataType_Kits", "sgs_kits", "not published on the site"),
    ):
        print("   %-30s %-30s %s" % (const, table, why))


if __name__ == "__main__":
    main()
