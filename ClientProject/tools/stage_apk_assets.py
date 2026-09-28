#!/usr/bin/env python3
"""Create a filtered APK asset tree without modifying the preserved originals."""

from __future__ import annotations

import os
import re
import shutil
import sys
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parents[2]
SOURCE_ROOT = PROJECT_ROOT / "Resources" / "assets"
RECOVERED_ROOT = SOURCE_ROOT / "reconstructed" / "src_jsc"
ENGINE_JS_ROOT = PROJECT_ROOT / "toolchain" / "cocos2d-x-2.2.6" / "scripting" / "javascript" / "bindings" / "js"
RUNTIME_OVERLAY_ROOT = PROJECT_ROOT / "ClientProject" / "overlays" / "src_jsc"
LOGIN_OVERLAYS = (
    "Scene/Login/LoginScene_AnySdk.js",
    "Scene/Login/LoginScene_BfSdk.js",
)
BINDING_SCRIPTS = (
    "jsb_cocos2d_constants.js",
    "jsb_cocos2d.js",
    "jsb_cocos2d_extension.js",
    "jsb_cocos2d_studio.js",
    "jsb_chipmunk_constants.js",
    "jsb_chipmunk.js",
    "jsb_opengl_constants.js",
    "jsb_opengl.js",
    "jsb_cocosbuilder.js",
    "jsb_sys.js",
    "jsb_deprecated.js",
)

# These are legacy channel/SDK payloads, not game content. Keep the original
# extracted tree intact for analysis, but omit them from the rebuilt APK.
OMIT = {
    "ShareSDK.xml",
    "baseSdk.jar",
    "plugins.ymn",
    "usdk.cfg",
}


def apply_local_reconstruction_routes(active_src: Path) -> int:
    """Route only the staged APK copy to the local protocol server.

    ReconstructedJS remains bytecode-derived and unchanged. The APK is a local
    test build, so its update and account-service hosts need to match the
    ServerProject reachable through `adb reverse tcp:18723 tcp:18723`.
    Set SGSCQ_RECONSTRUCTION_SERVER_HOST to an empty string to disable this
    test-only endpoint overlay, or to another host:port to change its target.
    """
    host = os.environ.get("SGSCQ_RECONSTRUCTION_SERVER_HOST", "127.0.0.1:18723").strip().strip("/")
    if not host:
        print("Local reconstruction endpoint overlay: disabled")
        return 0

    changes = 0
    url_config = active_src / "Cfg" / "Url.js"
    text = url_config.read_text(encoding="utf-8")
    address_pattern = re.compile(r'((?:NormalServer|PublicTip|Clock):\s*\{\s*domain:\s*")[^"]+("\s*\})')
    text, count = address_pattern.subn(
        lambda match: match.group(1) + host + "/public/sanguosha_account" + match.group(2),
        text,
    )
    if not count:
        raise SystemExit("could not apply local account-server routes to " + str(url_config))
    url_config.write_text(text, encoding="utf-8")
    changes += count

    update_scene = active_src / "Update" / "UpdateScene.js"
    text = update_scene.read_text(encoding="utf-8")
    update_pattern = re.compile(r'(_updateAddr\s*=\s*")([^"]+)(")')

    def route_update(match: re.Match[str]) -> str:
        value = match.group(2)
        if value.startswith(("cqzj.sanguosha.com/", "cqoverdownload.sanguosha.com/")):
            suffix = value.split("/", 1)[1]
            return match.group(1) + host + "/" + suffix + match.group(3)
        return match.group(0)

    updated = [0]

    def route_and_count(match: re.Match[str]) -> str:
        value = route_update(match)
        if value != match.group(0):
            updated[0] += 1
        return value

    text = update_pattern.sub(route_and_count, text)
    if not updated[0]:
        raise SystemExit("could not find recovered update-server routes in " + str(update_scene))
    update_scene.write_text(text, encoding="utf-8")
    changes += updated[0]
    print("Local reconstruction endpoint overlay: {} ({} URL entries)".format(host, changes))
    return changes


def apply_runtime_feature_overlays(active_src: Path) -> int:
    """Stage local runtime changes without modifying reconstructed sources."""
    net_overlay = RUNTIME_OVERLAY_ROOT / "Utils" / "Net.js"
    net_target = active_src / "Utils" / "Net.js"
    if not net_overlay.is_file() or not net_target.is_file():
        raise SystemExit("missing network runtime overlay or recovered Utils/Net.js")
    net_text = net_overlay.read_text(encoding="utf-8")
    if "SGSCQ_LOCAL_RETRY_OVERLAY" not in net_text:
        raise SystemExit("network runtime overlay is missing its marker")
    net_target.write_text(net_text, encoding="utf-8")

    dialog_overlay = RUNTIME_OVERLAY_ROOT / "Views" / "Dialog" / "NetConnectErr.create.js"
    dialog_target = active_src / "Views" / "Dialog" / "Dialog.js"
    if not dialog_overlay.is_file() or not dialog_target.is_file():
        raise SystemExit("missing network dialog runtime overlay or recovered Dialog.js")
    dialog_text = dialog_target.read_text(encoding="utf-8")
    dialog_pattern = re.compile(
        r"\(xs\.Views\.Dialog\.NetConnectErr\.create = function\(\) \{.*?\n\}\);\n(?=// source line 80)",
        re.DOTALL,
    )
    dialog_body = dialog_overlay.read_text(encoding="utf-8").rstrip() + "\n"
    # A lambda preserves JavaScript escapes such as "\\n" verbatim; passing
    # the overlay as a re.sub replacement string would turn them into newlines.
    dialog_text, replaced = dialog_pattern.subn(lambda _match: dialog_body, dialog_text)
    if replaced != 1:
        raise SystemExit("could not apply NetConnectErr dialog overlay to " + str(dialog_target))
    dialog_target.write_text(dialog_text, encoding="utf-8")

    for relative in LOGIN_OVERLAYS:
        source = RUNTIME_OVERLAY_ROOT / relative
        target = active_src / relative
        if not source.is_file() or not target.is_file():
            raise SystemExit("missing login runtime overlay or recovered " + relative)
        overlay_text = source.read_text(encoding="utf-8")
        if "SGSCQ_LOCAL_LOGIN_OVERLAY" not in overlay_text:
            raise SystemExit("login runtime overlay is missing its marker: " + relative)
        shutil.copy2(source, target)

    print("Staged local XHR retry, adaptive close-only error dialog, and login overlays")
    return 2 + len(LOGIN_OVERLAYS)


def replace_once(path: Path, pattern: str, replacement: str, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    updated, count = re.subn(pattern, replacement, text, flags=re.MULTILINE | re.DOTALL)
    if count != 1:
        raise SystemExit("expected exactly one {} in {} (found {})".format(label, path, count))
    path.write_text(updated, encoding="utf-8")


def apply_privacy_overlays(active_src: Path) -> int:
    """Drop optional vendor attribution and analytics from executable APK JS."""
    net = active_src / "Tools" / "Net.js"
    replacements = (
        (
            r"^\s*\(_param\.data_acquire = xs\.Tools\.Net\.createExtraValue\(\)\);\s*$",
            "    // SGSCQ_PRIVACY: omit optional device/channel acquisition metadata.",
            "server-list data_acquire metadata",
        ),
        (
            r"^\s*\(_param\.channel = xs\.Tools\.Jsb\.getChannelId\(\)\);\s*$",
            "    // SGSCQ_PRIVACY: omit optional channel attribution.",
            "server-list channel attribution",
        ),
        (
            r"^\s*\(_param\.channel_id = xs\.Tools\.Jsb\.getChannelId\(\)\);\s*$",
            "    // SGSCQ_PRIVACY: omit optional channel attribution.",
            "server-list channel_id attribution",
        ),
    )
    for pattern, replacement, label in replacements:
        replace_once(net, pattern, replacement, label)

    # These integrations only collect vendor activation/push metadata. Keep
    # their callable entry points because recovered gameplay may invoke them.
    replace_once(
        net,
        r"\(xs\.Tools\.Net\.requestCheckWanPuActive = function\(\) \{.*?\n\}\);(?=\n// source line 1483)",
        "(xs.Tools.Net.requestCheckWanPuActive = function() {\n"
        "    // SGSCQ_PRIVACY: vendor activation reporting is not required by gameplay.\n"
        "});",
        "WanPu activation request",
    )
    replace_once(
        net,
        r"\(xs\.Tools\.Net\.requestGeTuiSave = function\(\) \{.*?\n\}\);(?=\n// source line 1512)",
        "(xs.Tools.Net.requestGeTuiSave = function() {\n"
        "    // SGSCQ_PRIVACY: push-token/account reporting is disabled.\n"
        "});",
        "GeTui user-save request",
    )

    # The client attaches device, channel and online-time metadata to every
    # gameplay API call when this flag is set. It is not read by gameplay APIs.
    views = active_src / "Views" / "Mgr.js"
    replace_once(
        views,
        r"if \(xs\.use_statistic_params\) \{\s*// source line 188, bytecode pc 207\s*"
        r"\(_param\.statistic = xs\.Tools\.Statistic\.createStatisticParam\(\)\);\s*\}",
        "// SGSCQ_PRIVACY: omit optional device/channel/online-time analytics payload.",
        "global statistic request payload",
    )

    # The local version endpoint reads resource_version only. Avoid including
    # channel/device identifiers, and encode JSON so the query parser receives
    # one valid data value instead of raw braces/quotes.
    update = active_src / "Update" / "UpdateScene.js"
    text = update.read_text(encoding="utf-8")
    text, count = re.subn(
        r"^\s*channel: xsc\.app_channel,\s*\n\s*deviceId: xsc\.Tools\.Jsb\.getDeviceId\(\)\s*$",
        "    // SGSCQ_PRIVACY: version check needs no channel or device identifiers.",
        text,
        count=1,
        flags=re.MULTILINE,
    )
    if count != 1:
        raise SystemExit("could not remove channel/device fields from local update check")
    text, count = re.subn(
        r"\(_tmp = \(_tmp \+ JSON\.stringify\(obj\)\)\);",
        "(_tmp = (_tmp + encodeURIComponent(JSON.stringify(obj))));",
        text,
        count=1,
    )
    if count != 1:
        raise SystemExit("could not URL-encode local update-check data")
    update.write_text(text, encoding="utf-8")

    # Empty out retained legacy host configuration as a second guard: the
    # no-op request entry points above cannot accidentally reach vendor hosts.
    url_cfg = active_src / "Cfg" / "Url.js"
    text = url_cfg.read_text(encoding="utf-8")
    text, count = re.subn(
        r"((?:WanPu|GeTui):\s*\{\s*domain:\s*)\"[^\"]*\"",
        r'\1""',
        text,
    )
    if count < 2:
        raise SystemExit("could not scrub legacy WanPu/GeTui hosts from {}".format(url_cfg))
    url_cfg.write_text(text, encoding="utf-8")

    print(
        "Staged privacy overlays: no vendor activation/push requests, no channel/device "
        "attribution, and no analytics payloads ({} legacy host entries cleared)".format(count)
    )
    return 7 + count


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit("usage: stage_apk_assets.py DESTINATION")
    destination = Path(sys.argv[1]).resolve()
    if destination == SOURCE_ROOT.resolve() or SOURCE_ROOT.resolve() in destination.parents:
        raise SystemExit("refusing to stage assets into the preserved source tree")
    if destination.exists():
        shutil.rmtree(destination)
    destination.mkdir(parents=True)

    copied = 0
    omitted = []
    for source in SOURCE_ROOT.resolve().rglob("*"):
        if not source.is_file():
            continue
        relative = source.relative_to(SOURCE_ROOT.resolve())
        if relative.as_posix() in OMIT:
            omitted.append(relative.as_posix())
            continue
        # The original client's CCFileUtils::DeEncrypt XORs only the first
        # 1,000 bytes with 0x18 (confirmed from the old native library).
        # Textures are stored as .pg while plist/config references retain .png
        # names. Decode the staged APK copy to the referenced runtime filename;
        # leave the preserved Resources/assets tree intact.
        encoded_texture = source.suffix == ".pg" and relative.parts[0] == "res_n_main"
        if encoded_texture:
            relative = relative.with_suffix(".png")
        # Never let the original main.jsc take precedence over the clean
        # src_jsc/main.js bootstrap. Keep the bytecode available for reference
        # under a separate, non-executable asset namespace.
        if relative.parts[0] in {"src_jsc", "data_cn_jsc"} and source.suffix == ".jsc":
            relative = Path("bytecode_oracle") / relative
        target = destination / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        if encoded_texture:
            decoded = bytearray(source.read_bytes())
            for index in range(min(len(decoded), 1000)):
                decoded[index] ^= 0x18
            if not decoded.startswith(b"\x89PNG\r\n\x1a\n"):
                raise SystemExit("unexpected .pg texture encoding: {}".format(source))
            if target.exists():
                raise SystemExit("decoded .pg texture collides with staged asset: {}".format(target))
            target.write_bytes(decoded)
            copied += 1
            continue
        try:
            os.link(source, target)
        except OSError:
            shutil.copy2(source, target)
        copied += 1

    # Execute the current decompiler output directly from the original module
    # paths. Do not rewrite game logic or insert launch shims here: startup
    # verification must exercise the recovered files as generated.
    active_src = destination / "src_jsc"
    active_src.mkdir(parents=True, exist_ok=True)
    smoke_entry = active_src / "main.js"
    if smoke_entry.is_file():
        shutil.copy2(smoke_entry, active_src / "main_smoke.js")

    overlay_count = 0
    for source in RECOVERED_ROOT.rglob("*.js"):
        relative = source.relative_to(RECOVERED_ROOT)
        target = active_src / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        overlay_count += 1

    recovered_data = SOURCE_ROOT / "reconstructed" / "data_cn_jsc"
    data_overlay_count = 0
    for source in recovered_data.rglob("*.js"):
        relative = source.relative_to(recovered_data)
        target = destination / "data_cn_jsc" / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        data_overlay_count += 1

    # These scripts are part of the matching Cocos2d-x 2.2.6 JSB runtime.
    # Their exact upstream source is more reliable than decompiling engine
    # helper bytecode (notably cc.Class.extend's RegExp feature check).
    engine_overlay_count = 0
    for name in BINDING_SCRIPTS:
        source = ENGINE_JS_ROOT / name
        if not source.is_file():
            raise SystemExit("missing Cocos2d-x JSB runtime source: {}".format(source))
        target = active_src / "Core" / "Cocos2d-x" / name
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        engine_overlay_count += 1

    # Apply the local backend address to the staged executable APK assets only;
    # keep the recovered source tree and bytecode-derived archive untouched.
    apply_local_reconstruction_routes(active_src)
    apply_runtime_feature_overlays(active_src)
    apply_privacy_overlays(active_src)

    print(
        f"Staged {copied} APK assets plus {overlay_count} executable recovered JS files "
        f"and {data_overlay_count} recovered config scripts "
        f"and {engine_overlay_count} Cocos2d-x 2.2.6 runtime scripts; "
        f"omitted legacy SDK files: {', '.join(sorted(omitted))}"
    )


if __name__ == "__main__":
    main()
