#!/usr/bin/env python3
"""Generate and validate the server-side 244-action implementation ledger."""

import argparse
import csv
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SERVER = ROOT / "ServerProject"
DOCS = SERVER / "docs"
INVENTORY = DOCS / "protocol-inventory.json"
OUTPUT = DOCS / "implementation-matrix.csv"
BUSINESS = SERVER / "src/api/business.rs"
TESTS = SERVER / "src/api/tests.rs"

FIELDS = [
    "action",
    "request_path",
    "request_encoding",
    "play_stage",
    "client_evidence",
    "request_fields",
    "response_fields",
    "cmn_effect",
    "static_config_dependencies",
    "persistence_entities",
    "implementation_status",
    "handling_class",
    "test_fixture",
    "device_validation",
    "risk",
    "next_step",
]

BOOTSTRAP = {"versionPlus.check", "menu.notice", "account.index", "user.login"}
READ_ONLY = {"user.getPushData"}
LEGACY_PREFIXES = ("pay.", "payIos.", "product.", "idcard.", "anysdkAccount.")
LEGACY_ACTIONS = {
    "account.bindWithBf",
    "account.bindWithEasysdk",
    "account.bindWithFacebook",
    "account.chgAccountInfo",
    "notify.activate",
}
CONFIG_HINTS = {
    "general_id": "sgs_generals",
    "dungeon_id": "sgs_map_conf (empty in shipped package; local map data required)",
    "map_id": "sgs_map_conf (empty in shipped package; local map data required)",
    "item_id": "sgs_item",
    "equipment_id": "sgs_equipments",
    "skill_id": "sgs_skill",
    "gem_id": "sgs_gem",
    "magic_id": "sgs_magic",
}
PERSISTENCE = {
    "account.index": "accounts, sessions",
    "user.login": "player_profiles, tutorial_progress, player_generals, player_items, player_equipment, player_team, player_dungeons",
    "user.chooseTeam": "player_generals, player_counters, player_team, tutorial_progress, request_dedup",
    "user.chgNickname": "player_profiles, tutorial_progress, request_dedup",
    "wine.wine": "player_generals, player_counters, tutorial_progress, request_dedup",
    "team.chgBattleTeam": "player_team, tutorial_progress, request_dedup",
    "dungeon.fight": "player_dungeons, player_items, player_equipment, player_counters, tutorial_progress, request_dedup",
    "item.use": "player_items, player_equipment, player_counters, tutorial_progress, request_dedup",
    "general.setEquipment": "player_equipment, tutorial_progress, request_dedup",
    "user.getPushData": "read only",
}


def json_cell(values):
    return json.dumps(values, ensure_ascii=False, sort_keys=True, separators=(",", ":"))


def stage_for(action):
    if action in BOOTSTRAP or action in READ_ONLY:
        return "1-2 启动、选服与主城"
    if action in {"user.chooseTeam", "user.chgNickname"}:
        return "3 教程前半"
    if action.startswith("dungeon.") or action.startswith("map."):
        return "4-5 地图与副本"
    if action.startswith("wine.") or action.startswith("team."):
        return "5 招募与编队"
    if action.startswith(("item.", "equipment.", "general.setEquipment")):
        return "6 背包与装备"
    if action.startswith(("general.", "skill.", "combat.", "training.", "evolution.", "gem.", "magic.", "meridian.", "pulse.", "buddy.", "beauty.", "godness.")):
        return "7 常规成长"
    if action.startswith(("task.", "email.", "activity.", "festival.", "menu.", "mystery.", "wish.", "meeting.")):
        return "8 日常与经济"
    if action.startswith(("relationship.", "chat.", "union.", "rank.", "ladder.", "tower.", "hulao.", "warlord.", "worldWar.", "unionWar.")):
        return "9 社交与竞赛"
    return "10 长尾 / 待核"


def classification(action, record):
    if action in BOOTSTRAP or action in READ_ONLY:
        return "CLIENT_BOOTSTRAP"
    if action in LEGACY_ACTIONS or action.startswith(LEGACY_PREFIXES):
        return "LEGACY_DISABLED"
    if record.get("call_sites"):
        return "GAMEPLAY_REQUIRED"
    return "UNKNOWN"


def disabled_action(action):
    return (
        action.startswith(LEGACY_PREFIXES)
        or action in LEGACY_ACTIONS
    )


def current_status(action, business_actions, tests_text, business_text):
    if disabled_action(action) and "disabled_legacy_action" in business_text:
        fixture = "HTTP integration test" if action in tests_text else "unit regression test"
        return "DISABLED_BY_DESIGN", fixture
    if action in {"versionPlus.check", "menu.notice", "account.index", "user.login"}:
        status = "IMPLEMENTED_LOCAL_SLICE"
    elif action in business_actions:
        status = "IMPLEMENTED_LOCAL_SLICE"
    else:
        status = "NOT_IMPLEMENTED"
    evidence = "HTTP integration test" if action in tests_text else "missing"
    return status, evidence


def action_rows():
    inventory = json.loads(INVENTORY.read_text(encoding="utf-8"))
    actions = inventory["actions"]
    business_text = BUSINESS.read_text(encoding="utf-8")
    tests_text = TESTS.read_text(encoding="utf-8")
    business_actions = set(re.findall(r'"([A-Za-z][A-Za-z0-9]*\.[A-Za-z][A-Za-z0-9]*)"\s*=>', business_text))
    rows = []
    for action, record in sorted(actions.items()):
        domain = action.split(".", 1)[0]
        ref = f"docs/ref/{domain}.md#{action.replace('.', '')}"
        contexts = [f"{site['file']}:{site['line']} ({site['function']})" for site in record.get("call_sites", [])]
        request_fields = sorted(record.get("request_fields", {}))
        config_deps = sorted({CONFIG_HINTS[field] for field in request_fields if field in CONFIG_HINTS})
        class_name = classification(action, record)
        status, fixture = current_status(action, business_actions, tests_text, business_text)
        if class_name == "LEGACY_DISABLED":
            if status == "DISABLED_BY_DESIGN":
                risk = "Intentionally unavailable; the handler must keep returning failure without creating orders, identity records, or grants."
                next_step = "Keep the corresponding client flow disabled and retain the explicit failure fixture."
            else:
                risk = "Client channel/payment/identity path must end safely; preserve gameplay and free in-game economy."
                next_step = "Add an explicit disabled response; do not fake success or grants."
        elif status == "NOT_IMPLEMENTED" and class_name == "UNKNOWN":
            risk = "No static call site or server behavior; reachability is not established."
            next_step = "Trace inline/dynamic URL and original client path before classifying or implementing."
        elif status == "NOT_IMPLEMENTED":
            risk = "Client has a recovered call path; returning not_implemented can block this feature."
            next_step = "Trace full client consumer, config dependencies, state changes, and failure path; implement behavior + tests."
        else:
            risk = "Current handler covers only the local reconstruction slice; verify full response, rules, costs, and restart behavior."
            next_step = "Extend behavior from client evidence; add success, legal refusal, retry, persistence, and device checks."
        model_hops = record.get("model_hops", [])
        cmn = "cmn models: " + ", ".join(model_hops) if model_hops else "No model hop extracted; inspect ref page and cmn consumers."
        if action == "versionPlus.check":
            encoding = "GET; raw JSON data; client_update_ver=2; no business sign/token parameters"
        elif record.get("source") == "inline-url-literal" and action == "map.getConfig":
            encoding = "Inline config download URL; separate from ordinary do= transport; exact response not verified"
        else:
            encoding = "GET; encodeURIComponent(JSON.stringify(data)); ingor_encrypt=1; optional zlib=1; sign=MD5(raw JSON + client constant)"
        rows.append({
            "action": action,
            "request_path": record.get("path", "unresolved"),
            "request_encoding": encoding,
            "play_stage": stage_for(action),
            "client_evidence": json_cell([record.get("evidence", "unresolved"), ref, *contexts]),
            "request_fields": json_cell(request_fields),
            "response_fields": json_cell(sorted(record.get("response_fields", {}))),
            "cmn_effect": cmn,
            "static_config_dependencies": json_cell(config_deps) if config_deps else "not resolved from endpoint alone",
            "persistence_entities": PERSISTENCE.get(action, "not implemented"),
            "implementation_status": status,
            "handling_class": class_name,
            "test_fixture": fixture,
            "device_validation": "NOT DEVICE VERIFIED",
            "risk": risk,
            "next_step": next_step,
        })
    return inventory, rows


def independent_rows():
    return [
        {
            "action": "/auth/register",
            "request_path": "POST /auth/register",
            "request_encoding": "JSON body {username,password}; local replacement, not a retail do= action",
            "play_stage": "1 开机、账号入口",
            "client_evidence": "ServerProject/PROTOCOL.md local account bridge; src/api/account.rs",
            "request_fields": '["username","password"]',
            "response_fields": '["result","error_code","msg"]',
            "cmn_effect": "none",
            "static_config_dependencies": "none",
            "persistence_entities": "accounts",
            "implementation_status": "IMPLEMENTED_LOCAL_SLICE",
            "handling_class": "LOCAL_REPLACEMENT",
            "test_fixture": "HTTP integration test",
            "device_validation": "NOT DEVICE VERIFIED",
            "risk": "Full request logging prints submitted credentials as configured; the checked-in config defaults to full logging.",
            "next_step": "Device-check signup failure/success callbacks and lockout experience.",
        },
        {
            "action": "/auth/login",
            "request_path": "POST /auth/login",
            "request_encoding": "JSON body {username,password}; local replacement, not a retail do= action",
            "play_stage": "1 开机、账号入口",
            "client_evidence": "ServerProject/PROTOCOL.md local account bridge; src/api/account.rs",
            "request_fields": '["username","password"]',
            "response_fields": '["result","sessionKey","error_code","msg"]',
            "cmn_effect": "none",
            "static_config_dependencies": "none",
            "persistence_entities": "accounts, sessions",
            "implementation_status": "IMPLEMENTED_LOCAL_SLICE",
            "handling_class": "LOCAL_REPLACEMENT",
            "test_fixture": "HTTP integration test",
            "device_validation": "NOT DEVICE VERIFIED",
            "risk": "Full request logging prints submitted credentials as configured; the checked-in config defaults to full logging.",
            "next_step": "Device-check login and expiry UX.",
        },
        {
            "action": "/auth/logout",
            "request_path": "POST /auth/logout",
            "request_encoding": "JSON body {sessionKey}; local replacement, not a retail do= action",
            "play_stage": "1 开机、账号入口",
            "client_evidence": "ServerProject/PROTOCOL.md local account bridge; src/api/account.rs",
            "request_fields": '["sessionKey"]',
            "response_fields": '["result","error_code","msg"]',
            "cmn_effect": "none",
            "static_config_dependencies": "none",
            "persistence_entities": "sessions",
            "implementation_status": "IMPLEMENTED_LOCAL_SLICE",
            "handling_class": "LOCAL_REPLACEMENT",
            "test_fixture": "HTTP integration test",
            "device_validation": "NOT DEVICE VERIFIED",
            "risk": "Logout revokes the presented local session; repeated logout is idempotent.",
            "next_step": "Device-check the client clears its local session after logout.",
        },
        {
            "action": "game transport route",
            "request_path": "GET /game/{server_id}/index.php",
            "request_encoding": "Client game URL path plus encoded do/data query parameters",
            "play_stage": "1-10 all game actions",
            "client_evidence": "ServerProject/docs/01-transport.md; src/api/mod.rs",
            "request_fields": "per do= action",
            "response_fields": "per do= action",
            "cmn_effect": "per do= action",
            "static_config_dependencies": "none",
            "persistence_entities": "per action; identity and zone scoped",
            "implementation_status": "IMPLEMENTED_LOCAL_SLICE",
            "handling_class": "CLIENT_BOOTSTRAP",
            "test_fixture": "HTTP integration test uses device path",
            "device_validation": "Previous device request observed 404; recheck after route fix",
            "risk": "The route fix needs a live device confirmation.",
            "next_step": "Run `adb reverse` and confirm `user.chooseTeam` returns 200/result=true on device.",
        },
        {
            "action": "config download",
            "request_path": "full URL supplied as download_url",
            "request_encoding": "separate binary/config download; not in do= action table",
            "play_stage": "2 config recovery fallback",
            "client_evidence": "docs/04-game-login.md requestSGSConfig references; ReconstructedJS/src_jsc/Tools/Net.js:1564",
            "request_fields": '["download_url"]',
            "response_fields": "config archive/content (unresolved)",
            "cmn_effect": "server-generated config replacement",
            "static_config_dependencies": "server-generated configuration list in docs/08-config-domains.md",
            "persistence_entities": "none identified",
            "implementation_status": "NOT_IMPLEMENTED",
            "handling_class": "CLIENT_BOOTSTRAP",
            "test_fixture": "missing",
            "device_validation": "NOT DEVICE VERIFIED",
            "risk": "Login currently does not exercise the e_10011 fallback; exact archive semantics remain unverified.",
            "next_step": "Trace download path and client archive validation before implementing; no fake archive response.",
        },
        {
            "action": "WebSocket / push transport",
            "request_path": "not established",
            "request_encoding": "separate transport; no route inferred",
            "play_stage": "10 long-tail audit",
            "client_evidence": "not yet resolved in static endpoint inventory",
            "request_fields": "unresolved",
            "response_fields": "unresolved",
            "cmn_effect": "unresolved",
            "static_config_dependencies": "unresolved",
            "persistence_entities": "none identified",
            "implementation_status": "NOT_AUDITED",
            "handling_class": "UNKNOWN",
            "test_fixture": "missing",
            "device_validation": "NOT DEVICE VERIFIED",
            "risk": "Could be an out-of-band path not represented in the 244 do= records.",
            "next_step": "Search client transport creation and runtime device traffic; record evidence before classifying.",
        },
    ]


def write_csv(rows):
    with OUTPUT.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=FIELDS)
        writer.writeheader()
        writer.writerows(rows)


def check(rows, inventory):
    with OUTPUT.open(encoding="utf-8", newline="") as handle:
        actual = list(csv.DictReader(handle))
    expected_actions = set(inventory["actions"])
    actual_actions = [row["action"] for row in actual if row["action"] in expected_actions]
    actual_set = set(actual_actions)
    errors = []
    if len(actual_actions) != len(set(actual_actions)):
        errors.append("duplicate do= action row")
    if actual_set != expected_actions:
        errors.append(f"action mismatch: missing={sorted(expected_actions - actual_set)} extra={sorted(actual_set - expected_actions)}")
    if len(actual) != len(expected_actions) + len(independent_rows()):
        errors.append(f"expected {len(expected_actions)} actions + {len(independent_rows())} independent routes, found {len(actual)} total rows")
    for number, row in enumerate(actual, 2):
        missing = [field for field in FIELDS if field not in row]
        if missing:
            errors.append(f"row {number}: missing fields {missing}")
    if errors:
        print("implementation matrix check failed:", file=sys.stderr)
        for error in errors:
            print(f"- {error}", file=sys.stderr)
        return 1
    print(f"implementation matrix ok: {len(expected_actions)} do= actions + {len(independent_rows())} independent routes; no missing or duplicate action rows")
    return 0


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true", help="verify existing matrix against protocol inventory")
    args = parser.parse_args()
    inventory, rows = action_rows()
    if args.check:
        return check(rows + independent_rows(), inventory)
    write_csv(rows + independent_rows())
    print(f"wrote {OUTPUT.relative_to(ROOT)}: {len(rows)} do= actions + {len(independent_rows())} independent routes")
    return check(rows + independent_rows(), inventory)


if __name__ == "__main__":
    raise SystemExit(main())
