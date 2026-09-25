#!/usr/bin/env python3
"""Check game assets and omitted Java SDK payloads in the rebuilt package."""
from pathlib import Path
import sys
import zipfile

apk = Path(sys.argv[1])
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

print(
    "APK contents verified: 3704 resources, 55 data scripts, "
    "781 original bytecode scripts, 836 reconstructed JS files and reports, "
    "328 CCBI, 180 CocoStudio exports; third-party channel SDKs omitted; "
    "native library is a self-built ARMv7 ELF."
)
