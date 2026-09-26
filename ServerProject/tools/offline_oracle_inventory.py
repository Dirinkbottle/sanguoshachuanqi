#!/usr/bin/env python3
"""Index literal protocol actions in the decompiled offline server.

The output is deliberately an audit, not a claim that JADX recovered perfect
Java. Each row points to the Java line and the corresponding smali class so a
reader can verify branches where JADX reports broken control flow.
"""

from __future__ import annotations

import collections
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parents[1]
JAVA = ROOT / "offline-oracle/java"
TARGET = ROOT / "docs/original-behavior-inventory.md"
ACTION = re.compile(r'"([A-Za-z][A-Za-z0-9]*\.[A-Za-z][A-Za-z0-9]*)"')
IGNORED_SUFFIX = (".json", ".php", ".shtm", ".uris")
NON_ACTION_DOMAINS = {"currency", "manifest"}
EXTERNAL_OR_DEBUG = {"alarm.index", "plugin.status", "v1.blacklist", "debug.dump"}

# Concrete Rust dispatch paths. Update when a new endpoint is implemented.
IMPLEMENTED = {
    "account.index", "menu.notice", "user.login", "user.chooseTeam",
    "user.chgNickname", "map.getUserMap", "chapter.getChapterInfo", "wine.wine",
    "team.chgBattleTeam", "dungeon.fight", "item.use",
    "general.setEquipment", "user.getPushData", "user.getFreshmanStep",
    "user.setFreshmanStep", "user.getFreshmanInfo", "user.setFreshmanInfo",
    "version.check",
}
DISABLED_PREFIX = ("pay.", "payIos.", "product.", "idcard.", "anysdkAccount.")
DISABLED = {
    "account.bindWithBf", "account.bindWithEasysdk",
    "account.bindWithFacebook", "account.chgAccountInfo", "notify.activate",
}


def source_index() -> dict[str, list[tuple[pathlib.Path, int]]]:
    found: dict[str, list[tuple[pathlib.Path, int]]] = collections.defaultdict(list)
    for path in sorted(JAVA.rglob("*.java")):
        for line_number, line in enumerate(path.read_text(errors="replace").splitlines(), 1):
            for action in ACTION.findall(line):
                if action.endswith(IGNORED_SUFFIX + (".com",)) or action.split(".", 1)[0] in NON_ACTION_DOMAINS:
                    continue
                found[action].append((path.relative_to(JAVA), line_number))
    return found


def main() -> None:
    found = source_index()
    domains: dict[str, list[str]] = collections.defaultdict(list)
    for action in found:
        domains[action.split(".", 1)[0]].append(action)
    output = [
        "# 离线服原版行为索引",
        "",
        "此表从 `offline-oracle/java/` 的协议动作字符串自动提取。JADX 反编译有控制流错误，",
        "涉及分支和奖励时必须交叉检查同名类的 `offline-oracle/smali/`。",
        "`已接入` 只表示 Rust 有对应入口，不代表响应或业务规则已经与原版等价。",
        "`待重建` 表示 Rust 还没有这个入口；`已停用` 是渠道、支付等刻意移除的服务。",
        "运行 `python tools/offline_oracle_inventory.py` 可重生本表。",
        "",
        f"共找到 {len(found)} 个协议样式字符串，分属 {len(domains)} 个命名域。",
        "",
    ]
    for domain, actions in sorted(domains.items()):
        output += [f"## {domain}", "", "| 动作 | 状态 | 原版 Java 证据 |", "| --- | --- | --- |"]
        for action in sorted(actions):
            if action in IMPLEMENTED:
                status = "已接入，待逐项差分"
            elif action in DISABLED or action.startswith(DISABLED_PREFIX):
                status = "已停用"
            elif action in EXTERNAL_OR_DEBUG:
                status = "外部/调试，不列入游戏重建"
            else:
                status = "待重建"
            references = ", ".join(
                f"[{path.name}:{line}](../offline-oracle/java/{path.as_posix()}#L{line})"
                for path, line in found[action][:3]
            )
            output.append(f"| `{action}` | {status} | {references} |")
        output.append("")
    TARGET.write_text("\n".join(output), encoding="utf-8")
    print(f"wrote {TARGET} ({len(found)} actions, {len(domains)} domains)")


if __name__ == "__main__":
    main()
