#!/usr/bin/env python3
"""Check game assets and omitted Java SDK payloads in the rebuilt package."""
from pathlib import Path
import hashlib
import sys
import zipfile

apk = Path(sys.argv[1])
project_root = Path(__file__).resolve().parents[2]
with zipfile.ZipFile(apk) as package:
    names = set(package.namelist())

    required = {
        "AndroidManifest.xml",
        "classes.dex",
        "lib/armeabi-v7a/libcocos2djs.so",
        "assets/src_jsc/main.js",
        "assets/src_jsc/Scene/Login/LoginScene_BfSdk.js",
        "assets/res_n_main/medium/tex/scene_bg/logo.png",
        "assets/reconstructed/MANIFEST.json",
        "assets/bytecode_oracle/src_jsc/main.jsc",
    }
    missing = required - names
    if missing:
        raise SystemExit(f"missing APK entries: {sorted(missing)}")

    # Resolve the "which reconstruction revision is actually packaged?"
    # ambiguity by checking every archived recovered JS/report byte-for-byte
    # against the current generator output, not just checking entry counts.
    source_root = project_root / "ReconstructedJS"
    source_entries = []
    for group in ("src_jsc", "data_cn_jsc"):
        group_root = source_root / group
        for source in sorted(group_root.rglob("*")):
            if not source.is_file() or not (
                source.suffix == ".js"
                or (source.suffix == ".json" and source.name.endswith(".recovery.json"))
            ):
                continue
            relative = source.relative_to(group_root).as_posix()
            entry = f"assets/reconstructed/{group}/{relative}"
            if entry not in names:
                raise SystemExit(f"generated source is missing from APK: {entry}")
            source_bytes = source.read_bytes()
            if package.read(entry) != source_bytes:
                raise SystemExit(f"packaged reconstruction differs from current source: {entry}")
            digest = hashlib.sha256(source_bytes).hexdigest()
            source_entries.append(f"{group}/{relative}\0{digest}\n")
    if len(source_entries) != 1672:
        raise SystemExit(f"expected 1672 generated JS/report files, found {len(source_entries)}")
    source_tree_digest = hashlib.sha256("".join(source_entries).encode("utf-8")).hexdigest()
    native_lib = package.read("lib/armeabi-v7a/libcocos2djs.so")
    if native_lib[:5] != b"\x7fELF\x01":
        raise SystemExit("rebuilt native library is not an ELF32 binary")
    if native_lib[18:20] != b"\x28\x00":
        raise SystemExit("rebuilt native library is not ARM")
    if any(n.startswith("lib/armeabi/") and n.endswith(".so") for n in names):
        raise SystemExit("legacy armeabi native libraries must not be packaged")
    native_markers = (
        b"LogoScene::showLogoBegin",
        b"LogoScene::showLogoFinished",
        b"tex/scene_bg/logo.png",
        b"src_jsc/main.js",
    )
    missing_native_markers = [
        marker.decode("ascii") for marker in native_markers if marker not in native_lib
    ]
    if missing_native_markers:
        raise SystemExit(f"native startup chain markers missing: {missing_native_markers}")

    files = {n for n in names if not n.endswith("/")}
    packaged_resources = {n for n in files if n.startswith("assets/res_n_main/")}
    # SConscript ships in the original asset tree but is a source-build recipe,
    # not one of the 3,704 runtime game resources.
    resources = packaged_resources - {"assets/res_n_main/SConscript"}
    data_scripts = {n for n in files if n.startswith("assets/bytecode_oracle/data_cn_jsc/") and n.endswith(".jsc")}
    bytecode_scripts = {n for n in files if n.startswith("assets/bytecode_oracle/src_jsc/") and n.endswith(".jsc")}
    reconstructed_js = {n for n in files if n.startswith("assets/reconstructed/") and n.endswith(".js")}
    recovery_reports = {n for n in files if n.startswith("assets/reconstructed/") and n.endswith(".recovery.json")}
    ccbi = {n for n in resources if n.lower().endswith(".ccbi")}
    coco_studio = {n for n in resources if n.endswith(".ExportJson")}
    assert len(packaged_resources) == 3705, f"expected 3705 original asset-tree files, found {len(packaged_resources)}"
    assert len(resources) == 3704, f"expected 3704 runtime resource files, found {len(resources)}"
    assert len(data_scripts) == 55, f"expected 55 packaged data scripts, found {len(data_scripts)}"
    assert len(bytecode_scripts) == 781, f"expected 781 original bytecode scripts, found {len(bytecode_scripts)}"
    assert len(reconstructed_js) == 836, f"expected 836 reconstructed JS files, found {len(reconstructed_js)}"
    assert len(recovery_reports) == 836, f"expected 836 recovery reports, found {len(recovery_reports)}"
    if any(n.startswith("assets/src_jsc/") and n.endswith(".jsc") for n in files):
        raise SystemExit("original bytecode must be isolated under assets/bytecode_oracle/")
    forbidden_launch_overrides = sorted(
        n for n in files
        if "launch_overrides" in n or n.endswith("/LoginScene_Local.js")
    )
    if forbidden_launch_overrides:
        raise SystemExit(f"scene-changing launch overrides still packaged: {forbidden_launch_overrides}")
    assert len(ccbi) == 328, f"expected 328 CCBI files, found {len(ccbi)}"
    assert len(coco_studio) == 180, f"expected 180 CocoStudio exports, found {len(coco_studio)}"

    forbidden_files = {
        "assets/ShareSDK.xml",
        "assets/baseSdk.jar",
        "assets/plugins.ymn",
        "assets/usdk.cfg",
    }
    leaked = forbidden_files & names
    if leaked:
        raise SystemExit(f"legacy channel assets still packaged: {sorted(leaked)}")
    leaked_archives = sorted(n for n in names if n.startswith("assets/") and n.lower().endswith((".jar", ".aar", ".so")))
    if leaked_archives:
        raise SystemExit(f"legacy SDK binary payloads still packaged: {leaked_archives}")
    dex = package.read("classes.dex")
    sdk_markers = (
        b"com/huawei/hms/",
        b"cn/sharesdk/",
        b"com/alipay/",
        b"com/igexin/",
        b"com/talkingdata/",
    )
    found = [marker.decode("ascii") for marker in sdk_markers if marker in dex]
    for marker in (b"com/umeng/", b"com/testin/"):
        if marker in dex:
            found.append(f"unexpected {marker.decode('ascii')} DEX classes")
    if found:
        raise SystemExit(f"third-party SDK classes still appear in DEX: {found}")

    # Runtime overlays come from ClientProject/overlays/ at staging time and never
    # from the reconstructed tree, so regenerating ReconstructedJS/ cannot drop
    # them.  Staging already fails on a missing overlay; assert it here as well so
    # a package assembled by any other route is caught too.
    runtime_overlays = (
        ("assets/src_jsc/Utils/Net.js", "SGSCQ_LOCAL_RETRY_OVERLAY", "XHR retry"),
        ("assets/src_jsc/Utils/Net.js", "maxAttempts", "XHR retry attempt budget"),
        ("assets/src_jsc/Views/Dialog/Dialog.js", "xs.Utils.Net.lastErrorMessage", "error dialog detail"),
        ("assets/src_jsc/Views/Dialog/Dialog.js", "createOneButtonDialog", "close-only error dialog"),
        ("assets/src_jsc/Scene/Login/LoginScene_AnySdk.js", "SGSCQ_LOCAL_LOGIN_OVERLAY", "AnySdk login overlay"),
        ("assets/src_jsc/Scene/Login/LoginScene_BfSdk.js", "SGSCQ_LOCAL_LOGIN_OVERLAY", "BfSdk login overlay"),
    )
    for entry, marker, label in runtime_overlays:
        if marker not in package.read(entry).decode("utf-8"):
            raise SystemExit(f"{entry} is missing the {label} runtime overlay marker {marker!r}")

    net_text = package.read("assets/src_jsc/Tools/Net.js").decode("utf-8")
    if "SGSCQ_PRIVACY: push-token/account reporting is disabled." not in net_text:
        raise SystemExit("GeTui reporting is not disabled in the packaged client")
    if "SGSCQ_PRIVACY: vendor activation reporting is not required by gameplay." not in net_text:
        raise SystemExit("WanPu activation reporting is not disabled in the packaged client")
    for marker in ("_param.data_acquire =", "_param.channel =", "_param.channel_id ="):
        if marker in net_text:
            raise SystemExit(f"optional channel/device attribution remains in Net.js: {marker}")
    mgr_text = package.read("assets/src_jsc/Views/Mgr.js").decode("utf-8")
    if "SGSCQ_PRIVACY: omit optional device/channel/online-time analytics payload." not in mgr_text:
        raise SystemExit("gameplay API analytics payload is not removed")
    update_text = package.read("assets/src_jsc/Update/UpdateScene.js").decode("utf-8")
    if "encodeURIComponent(JSON.stringify(obj))" not in update_text:
        raise SystemExit("local version-check query JSON is not URL encoded")
    if "SGSCQ_PRIVACY: version check needs no channel or device identifiers." not in update_text:
        raise SystemExit("local version check still sends channel/device attribution")
    url_cfg_text = package.read("assets/src_jsc/Cfg/Url.js").decode("utf-8")
    if "wypwd.sanguosha.com" in url_cfg_text or "10.225.254.113/test/getui" in url_cfg_text:
        raise SystemExit("legacy channel analytics/push hosts remain configured in runtime JS")
    compat_text = package.read("assets/jsb_compat.js").decode("utf-8")
    if 'var channelId = "";' not in compat_text or 'var channelName = "";' not in compat_text:
        raise SystemExit("legacy channel attribution is not neutralized in jsb_compat.js")

    # The endpoint rewrite is environment-controlled (SGSCQ_RECONSTRUCTION_SERVER_HOST;
    # an empty value disables it), so report its state instead of requiring it.
    url_text = package.read("assets/src_jsc/Cfg/Url.js").decode("utf-8")
    for domain in ("NormalServer", "PublicTip", "Clock"):
        if domain not in url_text:
            raise SystemExit(f"Cfg/Url.js lost the {domain} account-server route")
    local_routes = url_text.count("127.0.0.1:18723/public/sanguosha_account")
    endpoint_state = f"endpoints routed to the local test server ({local_routes} entries)" \
        if local_routes else "endpoints left at the retail hosts (local routing disabled)"

print(
    "APK contents verified: 3704 resources, 55 data scripts, "
    "781 original bytecode scripts, 836 reconstructed JS files and reports, "
    "328 CCBI, 180 CocoStudio exports; third-party channel SDKs omitted; "
    "native library is a self-built ARMv7 ELF; "
        "XHR retry, close-only error dialog, and local login overlays present; "
        "vendor reporting and gameplay analytics removed; "
        f"all 1672 archived generated JS/recovery files match current ReconstructedJS (tree SHA-256 {source_tree_digest}); "
        f"{endpoint_state}."
)
