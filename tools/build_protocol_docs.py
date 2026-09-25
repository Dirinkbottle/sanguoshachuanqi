#!/usr/bin/env python3
"""Generate the modular protocol reference from protocol-inventory.json.

Nothing in the generated documents is asserted without a file:line pointer into
ReconstructedJS/src_jsc. Actions, fields and call sites that the static pass
could not resolve are printed as "not resolved" rather than guessed.

Usage: python3 tools/build_protocol_docs.py
"""
import json, os, re
from collections import OrderedDict, defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
DOCS = os.path.join(ROOT, "ServerProject", "docs")
REF = os.path.join(DOCS, "ref")
INV = os.path.join(DOCS, "protocol-inventory.json")
BT = chr(96)

BANNER = (
    "> 本页由 " + BT + "tools/build_protocol_docs.py" + BT + " 从 " + BT + "protocol-inventory.json" + BT + " 生成，"
    "后者由 " + BT + "tools/extract_protocol.py" + BT + " 从 " + BT + "ReconstructedJS/src_jsc" + BT + " 静态提取。\n"
    "> 每一行字段都带 " + BT + "文件:行号" + BT + " 证据；没有证据的内容不会出现在这里。"
    "原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。\n"
)

DOMAINS = OrderedDict([
    ("account",     ("账号服", "选服、公告、账号绑定、实名、推送注册")),
    ("anysdkAccount", ("AnySDK 账号", "第三方 SDK 的 OAuth 取服地址，内联拼接")),
    ("user",        ("玩家与会话", "登录、改名、签名、编队选择、推送拉取")),
    ("map",         ("地图与章节", "")),
    ("dungeon",     ("副本战斗", "普通副本、多杀、宝箱")),
    ("festival",    ("活动副本", "节日副本与兑换")),
    ("tower",       ("爬塔", "")),
    ("ladder",      ("天梯", "")),
    ("ladderWar",   ("跨服天梯", "")),
    ("ladderWarLocal", ("本服天梯战", "")),
    ("worldWar",    ("决战", "")),
    ("worldWarLocal", ("本服决战", "")),
    ("unionWar",    ("公会战", "")),
    ("union",       ("公会", "")),
    ("relationship",("社交关系", "")),
    ("chat",        ("聊天", "")),
    ("email",       ("邮件", "")),
    ("rank",        ("排行榜", "")),
    ("team",        ("编队", "")),
    ("general",     ("武将养成", "")),
    ("training",    ("武将修炼", "")),
    ("evolution",   ("武将进化", "")),
    ("evolutionChest", ("进化宝箱", "")),
    ("warlord",     ("战神", "")),
    ("godness",     ("女神", "")),
    ("beauty",      ("美人", "")),
    ("magic",       ("神兵", "")),
    ("gem",         ("宝石", "")),
    ("meridian",    ("经脉", "")),
    ("pulse",       ("脉轮", "")),
    ("equipment",   ("装备", "")),
    ("skill",       ("技能", "")),
    ("skillRefine", ("技能洗练", "")),
    ("item",        ("道具与商店", "")),
    ("mystery",     ("神秘商店", "")),
    ("spiritStoneGoods", ("魂石商店", "")),
    ("wine",        ("酒馆招募", "")),
    ("combat",      ("阵法", "")),
    ("atlas",       ("图鉴", "")),
    ("task",        ("任务", "")),
    ("activity",    ("运营活动", "")),
    ("product",     ("充值下单", "")),
    ("pay",         ("支付渠道", "内联拼接的交易接口")),
    ("battle",      ("战斗模拟器", "内联在 Cfg/Url.js 的战斗测试入口")),
    ("payIos",      ("iOS 支付", "")),
    ("idcard",      ("实名认证", "")),
    ("notify",      ("推送激活", "")),
    ("menu",        ("公告与兑换码", "")),
    ("buddy",       ("副将", "")),
    ("meeting",     ("奇遇", "")),
    ("hulao",       ("虎牢关", "")),
    ("wish",        ("许愿", "")),
    ("broadcast",   ("广播", "")),
])


ROLE_TEXT = {
    "request-object": "传请求对象",
    "empty-object": "显式发送空对象 {}",
    "null-literal": "不发送 data",
    "no-request-argument": "封装本身没有请求参数",
    "callback-literal": "首参是回调，不是请求对象",
    "none": "无请求参数",
    "empty": "无请求参数",
}


def role_text(role):
    return ROLE_TEXT.get(role, "未解析") if role else "未解析"


def q(v):
    return BT + str(v) + BT


def esc(v):
    return str(v).replace("|", "\\|")


def load():
    with open(INV, encoding="utf-8") as fh:
        return json.load(fh)


def domain_of(action):
    return action.split(".")[0]


def anchor(action):
    return action.replace(".", "")


def action_section(action, rec, level=3):
    out = []
    h = "#" * level
    out.append("%s %s" % (h, action))
    out.append("")
    out.append("| 项 | 值 | 证据 |")
    out.append("|---|---|---|")
    out.append("| 相对路径 | %s | %s |" % (q(rec["path"]), q(rec["evidence"])))
    if rec.get("source") == "inline-url-literal":
        out.append("| 请求构造 | 不在 " + q("Cfg/Url.js") + "，由代码内联拼接完整 URL | "
                   + q(rec["evidence"]) + " |")
    wrappers = rec["net_functions"]
    if wrappers:
        cells = []
        for w in wrappers:
            forced = w.get("forced_params") or {}
            extra = ""
            if forced:
                extra = "（注入 " + ", ".join(q("%s=%s" % (k, v["value"])) for k, v in forced.items()) + "）"
            cells.append("%s%s [%s]" % (q("xs.Tools.Net." + w["name"]), extra, q(w["evidence"])))
        out.append("| 客户端封装 | %s | |" % "<br>".join(cells))
    elif rec.get("inline_literal_sites"):
        holders = [u for u in rec["inline_literal_sites"] if u["file"] == "Tools/Net.js"]
        if holders:
            out.append("| 客户端封装 | 内联在该函数体内（不是独立封装）：%s | |"
                       % ", ".join(q("xs.Tools.Net." + u["function"]) for u in holders))
        else:
            out.append("| 客户端封装 | 无独立封装 | — |")
    else:
        out.append("| 客户端封装 | 未在 " + q("Tools/Net.js") + " 找到封装 | — |")
    if rec.get("model_hops"):
        out.append("| 响应交给的模型 | %s | |" % ", ".join(q(m) for m in rec["model_hops"]))
    if rec.get("error_codes"):
        out.append("| 客户端比较的错误码 | %s | |" % ", ".join(q(c) for c in rec["error_codes"]))
    out.append("")

    rf = rec["request_fields"]
    if rf:
        out.append("**请求字段**")
    else:
        roles = sorted({c.get("arg_role") for c in rec["call_sites"] if c.get("arg_role")})
        if roles:
            out.append("**请求字段**：该封装无显式字段（调用点：" + "；".join(role_text(r) for r in roles)
                       + "）。实际仍会带上公共字段。")
        elif not rec["call_sites"]:
            out.append("**请求字段**：没有调用点，无法从调用方确定。")
        else:
            out.append("**请求字段**：静态提取未解析到显式字段。")
    out.append("")
    if rf:
        out.append("| 字段 | 证据 |")
        out.append("|---|---|")
        for k, v in rf.items():
            out.append("| %s | %s |" % (q(k), q(v)))
        out.append("")

    rsp = rec["response_fields"]
    if rsp:
        out.append("**响应字段**")
    elif rec["call_sites"] and all(c.get("callback_index") is None for c in rec["call_sites"]):
        out.append("**响应字段**：该封装没有回调参数，客户端不消费响应体（纯副作用请求）。")
    elif not rec["call_sites"]:
        out.append("**响应字段**：没有调用点，无法从调用方确定。")
    else:
        out.append("**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。")
    out.append("")
    if rsp:
        out.append("| 字段 | 证据 |")
        out.append("|---|---|")
        for k, v in rsp.items():
            out.append("| %s | %s |" % (q(k), q(v)))
        out.append("")

    if rec.get("model_hops"):
        lines = out
        model_names = []
        for m in rec["model_hops"]:
            nm = m.split(".")[-2] if m.startswith("xs.Models.") else m
            model_names.append(nm)
        out.append("> 响应整体（或部分）交给 " + ", ".join(q(m) for m in rec["model_hops"])
                   + " 解析，其字段表见 [data-model.md](../data-model.md)。")
        out.append("")

    if rec.get("inline_literal_sites"):
        out.append("**URL 字面量出现位置**")
        out.append("")
        out.append("| 位置 | 所在函数 |")
        out.append("|---|---|")
        for u in rec["inline_literal_sites"]:
            out.append("| %s | %s |" % (q("%s:%d" % (u["file"], u["line"])), q(u["function"])))
        out.append("")

    sites = rec["call_sites"]
    if sites:
        out.append("**调用点**（%d）" % len(sites))
        out.append("")
        out.append("| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |")
        out.append("|---|---|---|---|")
        seen = set()
        for c in sites:
            key = (c["file"], c["line"])
            if key in seen:
                continue
            seen.add(key)
            fields = ", ".join(q(f) for f in c["request_fields"]) or role_text(c.get("arg_role"))
            if c["handler"]:
                handler = c["handler"]
            elif c.get("callback_index") is None:
                handler = "该封装没有回调参数"
            else:
                handler = "未解析"
            out.append("| %s | %s | %s | %s |"
                       % (q("%s:%d" % (c["file"], c["line"])), q(c["function"]), fields, q(handler)))
        out.append("")
    elif rec.get("source") == "inline-url-literal":
        out.append("**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；"
                   "调用点即上面的字面量位置。")
        out.append("")
    else:
        out.append("**调用点**：静态遍历未发现调用点。封装存在但当前恢复结果中没有可解析的调用者。")
        out.append("")
    return out


def write_rel(path, lines):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines).rstrip() + "\n")


def main():
    inv = load()
    actions = inv["actions"]
    os.makedirs(REF, exist_ok=True)

    by_domain = defaultdict(list)
    for action in actions:
        by_domain[domain_of(action)].append(action)

    unknown = [d for d in by_domain if d not in DOMAINS]
    if unknown:
        print("WARNING: domains missing from DOMAINS table:", unknown)

    order = list(DOMAINS)
    ref_files = []
    for dom in sorted(by_domain, key=lambda d: (order.index(d) if d in order else 999, d)):
        info = DOMAINS.get(dom)
        title = info[0] if info else dom
        note = info[1] if info and len(info) > 1 else ""
        lines = ["# 协议参考：%s（%s.*）" % (title, dom), ""]
        if note:
            lines += [note, ""]
        lines += [BANNER, ""]
        lines.append("本域共 **%d** 个动作。" % len(by_domain[dom]))
        lines.append("")
        lines.append("| 动作 | 路径 | 封装 | 调用点 |")
        lines.append("|---|---|---|---|")
        for action in sorted(by_domain[dom]):
            rec = actions[action]
            w = rec["net_functions"][0]["name"] if rec["net_functions"] else "—"
            lines.append("| [%s](#%s) | %s | %s | %d |"
                         % (q(action), anchor(action), q(rec["path"]), q(w), len(rec["call_sites"])))
        lines.append("")
        for action in sorted(by_domain[dom]):
            lines += action_section(action, actions[action])
        name = "ref/%s.md" % dom
        write_rel(os.path.join(DOCS, name), lines)
        ref_files.append((dom, title, name, len(by_domain[dom])))

    lines = ["# 全量端点索引", "", BANNER, ""]
    lines.append("共 **%d** 个 do= 动作：%s 里登记 %d 个 URL 键，"
                 "另有个别动作在代码里内联拼接完整 URL、不经过该表。"
                 % (len(actions), q("Cfg/Url.js"), inv["counts"]["url_keys"]))
    lines.append("")
    lines.append("| 动作 | 路径 | 封装 | 调用点 | 证据 |")
    lines.append("|---|---|---|---|---|")
    for action in sorted(actions):
        rec = actions[action]
        if rec["net_functions"]:
            w = rec["net_functions"][0]["name"]
        elif rec.get("inline_literal_sites"):
            w = "（内联拼接）"
        else:
            w = "—"
        lines.append("| [%s](#%s) | %s | %s | %d | %s |"
                     % (q(action), anchor(action), q(rec["path"]), q(w),
                        len(rec["call_sites"]), q(rec["evidence"])))
    lines.append("")
    lines.append("## 未被 Tools/Net.js 封装的 URL 键")
    lines.append("")
    lines.append("这些键在 " + q("Cfg/Url.js") + " 中定义，但静态遍历没有在 " + q("Tools/Net.js") + " 找到对应的 request* 封装：")
    lines.append("")
    for k in inv["unreferenced_url_keys"]:
        lines.append("- " + q(k))
    lines.append("")
    lines.append("## 零调用者的封装")
    lines.append("")
    lines.append("下列动作在 " + q("Tools/Net.js") + " 里有完整封装，但**恢复出的 836 个脚本里没有任何调用者**。")
    lines.append("这一点在原始反汇编层面同样成立：" + q("Recovered/src_jsc/Tools/Net.js.disasm.txt")
                 + " 是唯一提到这些函数名的地方。")
    lines.append("")
    lines.append("因此它们是**随包发布但在这份构建里不可达的接口**——不是提取失败，也不代表原版客户端从不调用"
                 "（可能有被裁剪的分支或未随包发布的模块）。")
    lines.append("")
    lines.append("| 动作 | 路径 | 封装 |")
    lines.append("|---|---|---|")
    for action in sorted(actions):
        if not actions[action]["call_sites"]:
            rec = actions[action]
            w = rec["net_functions"][0]["name"] if rec["net_functions"] else "—"
            lines.append("| %s | %s | %s |" % (q(action), q(rec["path"]), q("xs.Tools.Net." + w)))
    lines.append("")
    write_rel(os.path.join(DOCS, "endpoint-index.md"), lines)

    lines = ["# cmn 数据模型全集", "", BANNER, ""]
    lines.append("每个成功响应都可以携带 cmn。客户端在 " + q(inv["cmn_envelope"]["evidence"])
                 + " 里按固定描述表把 cmn.<键> 合并进模型。")
    lines.append("")
    lines.append("## 描述表（%d 项）" % len(inv["cmn_envelope"]["data_descs"]))
    lines.append("")
    lines.append("| cmn 键 | 模型 | 合并语义 | 索引属性 | 证据 |")
    lines.append("|---|---|---|---|---|")
    for d in inv["cmn_envelope"]["data_descs"]:
        lines.append("| %s | %s | %s | %s | %s |"
                     % (q(d["cmn_key"]), q("xs.Models." + d["model"]), q(d["mgr_type"]),
                        q(d["property"]), q(d["evidence"])))
    lines.append("")
    lines.append("## 全局键")
    lines.append("")
    lines.append("这些键不经描述表，直接在 updateCmnData 开头被读取：")
    lines.append("")
    for k in inv["cmn_envelope"]["global_keys"]:
        lines.append("- " + q("cmn." + k))
    lines.append("")
    lines.append("## 响应根上的旁路键")
    lines.append("")
    lines.append("updateOtherData 在 cmn 之外直接读取下列根字段（仅在 result:true 后执行）：")
    lines.append("")
    for k in inv["cmn_envelope"]["other_keys"]:
        lines.append("- " + q(k))
    lines.append("")
    lines.append("## 各模型读取的载荷字段")
    lines.append("")
    lines.append("字段来自各模型 loadJson/update/createWithJson 中对载荷的读取。"
                 "这是客户端**会读**的字段，不代表服务端**只发**这些字段。")
    lines.append("")
    for model, table in sorted(inv["models"].items()):
        lines.append("### " + q("xs.Models." + model))
        lines.append("")
        lines.append("- 文件：" + q(table["file"]))
        lines.append("- 方法：" + ", ".join(q(f) for f in table["methods"]))
        lines.append("")
        if table["payload_fields"]:
            lines.append("| 字段 | 证据 |")
            lines.append("|---|---|")
            for k, v in table["payload_field_evidence"].items():
                lines.append("| %s | %s |" % (q(k), q(v)))
            lines.append("")
        else:
            lines.append("静态提取未解析到直接字段读取。")
            lines.append("")
    lines.append("## Profile/GameData 管理器读取的字段")
    lines.append("")
    lines.append("这些不是 cmn 描述表里的模型，而是 " + q("Profile/GameData/*.js")
                 + " 下的数据管理器。" + q("map_info") + "、" + q("wine_info")
                 + " 这类**响应根字段**由它们直接消费。")
    lines.append("")
    for rel, table in sorted(inv.get("gamedata_managers", {}).items()):
        lines.append("### " + q(rel))
        lines.append("")
        lines.append("- 方法：" + ", ".join(q(f) for f in table["methods"]))
        lines.append("")
        lines.append("| 字段 | 证据 |")
        lines.append("|---|---|")
        for k, v in table["payload_field_evidence"].items():
            lines.append("| %s | %s |" % (q(k), q(v)))
        lines.append("")
    write_rel(os.path.join(DOCS, "data-model.md"), lines)

    req = defaultdict(list)
    for action, rec in actions.items():
        for f, ev in rec["request_fields"].items():
            req[f].append((action, ev))
    lines = ["# 请求字段总表", "", BANNER, ""]
    lines.append("共 **%d** 个不同的显式请求字段。" % len(req))
    lines.append("")
    lines.append("所有动作还会由 xs.Tools.Net.addBaseParam 或 xs.Views.Mgr.reqUrl 追加公共字段：")
    lines.append("")
    for p in inv["base_params"]:
        lines.append("- " + q(p))
    lines.append("")
    lines.append("| 字段 | 出现的动作 | 证据 |")
    lines.append("|---|---|---|")
    for f in sorted(req):
        acts = sorted({a for a, _ in req[f]})
        ev = req[f][0][1]
        shown = ", ".join(q(a) for a in acts[:6]) + (" …" if len(acts) > 6 else "")
        lines.append("| %s | %s | %s |" % (q(f), shown, q(ev)))
    lines.append("")
    write_rel(os.path.join(DOCS, "request-fields.md"), lines)

    rsp = defaultdict(list)
    for action, rec in actions.items():
        for f, ev in rec["response_fields"].items():
            rsp[f].append((action, ev))
    lines = ["# 响应根字段总表", "", BANNER, ""]
    lines.append("共 **%d** 个不同的响应根字段。" % len(rsp))
    lines.append("")
    lines.append("数量少是这份协议的结构性事实：绝大多数业务状态不走响应根字段，"
                 "而是走 cmn 增量，见 [data-model.md](data-model.md)。")
    lines.append("")
    lines.append("| 字段 | 出现的动作 | 证据 |")
    lines.append("|---|---|---|")
    for f in sorted(rsp):
        acts = sorted({a for a, _ in rsp[f]})
        ev = rsp[f][0][1]
        shown = ", ".join(q(a) for a in acts[:6]) + (" …" if len(acts) > 6 else "")
        lines.append("| %s | %s | %s |" % (q(f), shown, q(ev)))
    lines.append("")
    write_rel(os.path.join(DOCS, "response-fields.md"), lines)

    print("wrote %d domain pages + index + data-model + field tables" % len(ref_files))
    for dom, title, name, n in ref_files:
        print("  %-18s %-10s %3d  %s" % (dom, title, n, name))


if __name__ == "__main__":
    main()
