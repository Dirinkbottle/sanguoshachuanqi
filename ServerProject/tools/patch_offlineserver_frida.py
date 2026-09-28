#!/usr/bin/env python3
"""Patch the local server APK with Frida Gadget 17.2.0 in listen mode."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile


TOOLS = Path(__file__).resolve().parent
SERVER_PROJECT = TOOLS.parent
DEFAULT_APK = SERVER_PROJECT / "tmp" / "offlineserver.apk"
HOOK = TOOLS / "offlineserver_frida_hook.js"
GADGET_VERSION = "17.2.0"
ARCH_ALIASES = {"arm64": "arm64-v8a", "arm": "armeabi-v7a"}


def detect_architecture() -> str | None:
    adb = shutil.which("adb")
    if not adb:
        return None
    try:
        result = subprocess.run([adb, "shell", "getprop", "ro.product.cpu.abi"],
                                check=False, capture_output=True, text=True, timeout=5)
        raw = result.stdout.strip().lower()
    except (OSError, subprocess.TimeoutExpired):
        return None
    if raw == "armeabi":
        raw = "armeabi-v7a"
    return raw if raw in {"arm64-v8a", "armeabi-v7a", "x86", "x86_64"} else None


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, default=DEFAULT_APK, help=f"source APK (default: {DEFAULT_APK})")
    parser.add_argument("--output", type=Path, default=None, help="output APK (default name includes ABI and listen mode)")
    parser.add_argument("--arch", choices=("auto", "arm64-v8a", "armeabi-v7a", "x86", "x86_64", "arm64", "arm"), default="auto",
                        help="Android ABI for Frida Gadget (default: detect attached device, otherwise arm64-v8a)")
    parser.add_argument("--objection", default="objection", help="objection executable")
    parser.add_argument("--force", action="store_true", help="replace an existing output APK")
    args = parser.parse_args()

    apk = args.apk.expanduser().resolve()
    arch = detect_architecture() if args.arch == "auto" else ARCH_ALIASES.get(args.arch, args.arch)
    if not arch:
        arch = "arm64-v8a"
        print("No attached Android device found; falling back to arm64-v8a. Pass --arch to choose explicitly.",
              file=sys.stderr)
    output = (args.output.expanduser().resolve() if args.output else
              SERVER_PROJECT / "tmp" / f"offlineserver-frida-{GADGET_VERSION}-{arch}-listen.apk")
    if not apk.is_file():
        parser.error(f"APK does not exist: {apk}")
    if not HOOK.is_file():
        parser.error(f"Frida hook does not exist: {HOOK}")
    if output.exists() and not args.force:
        parser.error(f"output already exists (pass --force to replace): {output}")
    output.parent.mkdir(parents=True, exist_ok=True)

    config = {"interaction": {
        "type": "listen",
        "address": "127.0.0.1",
        "port": 27042,
        "on_port_conflict": "fail",
        "on_load": "resume",
    }}
    with tempfile.TemporaryDirectory(prefix="sgscq-frida-patch-") as work:
        workdir = Path(work)
        staged_apk = workdir / apk.name
        shutil.copy2(apk, staged_apk)
        config_path = workdir / "gadget.config.json"
        config_path.write_text(json.dumps(config, indent=2) + "\n", encoding="utf-8")
        command = [
            args.objection, "patchapk", "--source", str(staged_apk),
            "--architecture", arch, "--gadget-version", GADGET_VERSION,
            "--gadget-config", str(config_path),
        ]
        print("Running:", " ".join(command), flush=True)
        completed = subprocess.run(command, cwd=workdir, check=False)
        if completed.returncode:
            print(f"objection exited with status {completed.returncode}", file=sys.stderr)
            return completed.returncode

        patched = workdir / (apk.name.replace(".apk", ".objection.apk"))
        if not patched.is_file():
            print(f"objection succeeded but output was not found: {patched}", file=sys.stderr)
            return 1
        shutil.copy2(patched, output)

    verifier = shutil.which("apksigner")
    if verifier:
        subprocess.run([verifier, "verify", "--verbose", str(output)], check=True)
    print(f"Patched APK: {output}")
    print(f"SHA-256: {sha256(output)}")
    print("Gadget listens on 127.0.0.1:27042 (forward with: adb forward tcp:27042 tcp:27042)")
    print("Load tools/offlineserver_frida_hook.bundle.js with the Frida client after connecting.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
