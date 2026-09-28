#!/usr/bin/env python3
"""Extract the constant tables that the offline server bakes into classes.dex.

ServerProject/tmp/offlineserver.apk ships two encrypted asset blobs
(assets/encrypted/game_data.bin and assets/encrypted/limited_shop_config.bin).
tools/extract_offlineserver_data.py already decrypts those.

A large part of the gameplay rule data never reaches a blob at all: it is
compiled straight into classes.dex as "static final" array fields -- wine
(toast) pools, drop tables, rank thresholds, shop prices, and so on. This
script decompiles classes.dex with jadx and lifts every such array field into
JSON so the tables can be inspected, diffed and re-extracted.

Dependencies: jadx on PATH, or --jadx-out pointing at an existing jadx run.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import subprocess
import sys
import io
import tempfile
import zipfile
from pathlib import Path, PurePosixPath

PROJECT_ROOT = Path(__file__).resolve().parents[1]
REPO_ROOT = PROJECT_ROOT.parent
DEFAULT_APK = PROJECT_ROOT / "ServerProject" / "tmp" / "offlineserver.apk"
DEFAULT_OUT = PROJECT_ROOT / "ServerProject" / "recovered-data" / "dex_rules"

FOCUS_PREFIXES = ("com/sgscq/",)

DECL_RE = re.compile(
    r"^\s*(?:public|private|protected)?\s*(?:static\s+)?(?:final\s+)?"
    r"(?P<type>[A-Za-z_$][\w$.]*(?:\[\])+)\s+"
    r"(?P<name>[A-Za-z_$][\w$]*)\s*=\s*(?P<rest>.*)$"
)


class LiteralParser:
    """Parse the Java array-literal subset that jadx emits for static tables."""

    def __init__(self, text):
        self.s = text
        self.i = 0

    def error(self, msg):
        raise ValueError("%s at offset %d: %r" % (msg, self.i, self.s[self.i:self.i + 60]))

    def ws(self):
        while self.i < len(self.s) and self.s[self.i] in " \t\r\n":
            self.i += 1

    def parse(self):
        value = self.value()
        self.ws()
        return value

    def value(self):
        self.ws()
        if self.i >= len(self.s):
            self.error("unexpected end of input")
        if self.s.startswith("new ", self.i):
            return self.new_expr()
        ch = self.s[self.i]
        if ch == "{":
            return self.array()
        if ch == '"':
            return self.string()
        if ch == "'":
            return self.char()
        return self.atom()

    def new_expr(self):
        self.i += 4  # "new "
        start = self.i
        while self.i < len(self.s) and self.s[self.i] not in "[{(":
            self.i += 1
        if self.i >= len(self.s):
            self.error("malformed new-expression")
        type_name = self.s[start:self.i].strip()
        if self.s[self.i] == "(":
            return {"__new__": type_name, "args": self.arg_list()}
        return self.array_dims()

    def arg_list(self):
        assert self.s[self.i] == "("
        self.i += 1
        args = []
        self.ws()
        if self.i < len(self.s) and self.s[self.i] == ")":
            self.i += 1
            return args
        while True:
            args.append(self.value())
            self.ws()
            if self.i >= len(self.s):
                self.error("unterminated argument list")
            if self.s[self.i] == ",":
                self.i += 1
                continue
            if self.s[self.i] == ")":
                self.i += 1
                return args
            self.error("expected , or ) in argument list")

    def array_dims(self):
        while self.i < len(self.s) and self.s[self.i] == "[":
            self.i += 1
            close = self.s.index("]", self.i)
            size_text = self.s[self.i:close].strip()
            self.i = close + 1
            if size_text:
                return [None] * int(size_text)
            self.ws()
            if self.i < len(self.s) and self.s[self.i] == "{":
                return self.array()
        self.error("unsupported array initialiser")

    def array(self):
        assert self.s[self.i] == "{"
        self.i += 1
        items = []
        self.ws()
        if self.i < len(self.s) and self.s[self.i] == "}":
            self.i += 1
            return items
        while True:
            items.append(self.value())
            self.ws()
            if self.i >= len(self.s):
                self.error("unterminated array")
            ch = self.s[self.i]
            if ch == ",":
                self.i += 1
                self.ws()
                if self.i < len(self.s) and self.s[self.i] == "}":
                    self.i += 1
                    return items
                continue
            if ch == "}":
                self.i += 1
                return items
            self.error("expected , or } inside array")

    def string(self):
        assert self.s[self.i] == '"'
        self.i += 1
        out = []
        while True:
            if self.i >= len(self.s):
                self.error("unterminated string")
            ch = self.s[self.i]
            if ch == "\\":
                nxt = self.s[self.i + 1]
                mapping = {"n": "\n", "t": "\t", "r": "\r", "b": "\b",
                           "f": "\f", "0": "\0", '"': '"', "'": "'", "\\": "\\"}
                if nxt == "u":
                    out.append(chr(int(self.s[self.i + 2:self.i + 6], 16)))
                    self.i += 6
                    continue
                out.append(mapping.get(nxt, nxt))
                self.i += 2
                continue
            if ch == '"':
                self.i += 1
                return "".join(out)
            out.append(ch)
            self.i += 1

    def char(self):
        assert self.s[self.i] == "'"
        end = self.s.index("'", self.i + 1)
        raw = self.s[self.i + 1:end]
        self.i = end + 1
        if raw.startswith("\\"):
            return {"n": "\n", "t": "\t", "r": "\r", "0": "\0"}.get(raw[1], raw[1])
        return raw

    def atom(self):
        start = self.i
        while self.i < len(self.s) and self.s[self.i] not in ",}])":
            self.i += 1
        raw = self.s[start:self.i].strip()
        if raw in ("true", "false"):
            return raw == "true"
        if raw == "null":
            return None
        low = raw.lower()
        neg = low.startswith("-")
        body = low[1:] if neg else low
        sign = -1 if neg else 1
        if body.startswith("0x"):
            return sign * int(body.rstrip("l"), 16)
        cleaned = raw.rstrip("lLdDfF")
        try:
            if "." in cleaned or "e" in cleaned.lower():
                return float(cleaned)
            return int(cleaned)
        except ValueError:
            return raw


def sha256_of(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


# Plain (unencrypted) assets. game_data.bin and limited_shop_config.bin are
# handled by tools/extract_offlineserver_data.py; k1.bin is deliberately NOT
# copied because it is live key material and both it and the signer cert live
# in this same APK.
SKIP_ASSETS = {
    "assets/encrypted/game_data.bin",
    "assets/encrypted/limited_shop_config.bin",
    "assets/encrypted/k1.bin",
}


def dump_plain_assets(apk, out_dir):
    """Copy the APK's unencrypted assets, unpacking any nested ZIP payloads."""
    written = []
    inner = out_dir / "_unpacked"
    with zipfile.ZipFile(apk) as zf:
        names = sorted(n for n in zf.namelist()
                       if n.startswith("assets/") and not n.endswith("/") and n not in SKIP_ASSETS)
        for name in names:
            data = zf.read(name)
            rel = PurePosixPath(name).relative_to("assets")
            target = out_dir.joinpath(*rel.parts)
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(data)
            record = {"path": rel.as_posix(), "bytes": len(data),
                      "sha256": hashlib.sha256(data).hexdigest()}
            if data[:2] == b"PK" and name.lower().endswith(".zip"):
                dest = inner / rel.stem
                members = []
                with zipfile.ZipFile(io.BytesIO(data)) as nested:
                    for entry in nested.infolist():
                        if entry.is_dir():
                            continue
                        member = PurePosixPath(entry.filename)
                        if member.is_absolute() or ".." in member.parts:
                            raise ValueError("unsafe nested path: %s" % entry.filename)
                        blob = nested.read(entry)
                        sub = dest.joinpath(*member.parts)
                        sub.parent.mkdir(parents=True, exist_ok=True)
                        sub.write_bytes(blob)
                        members.append({"path": member.as_posix(), "bytes": len(blob),
                                        "sha256": hashlib.sha256(blob).hexdigest()})
                record["unpacked_into"] = "_unpacked/" + rel.stem
                record["members"] = members
            written.append(record)
    return written


def dex_string_table(apk):
    """Read the DEX string_ids directly, with no decompiler in the loop.

    Used by --verify: every string that jadx reported inside a String[] table
    must also exist verbatim in the raw DEX string pool. That catches a parser
    that silently mangles or truncates a literal.
    """
    import struct

    with zipfile.ZipFile(apk) as zf:
        names = [n for n in zf.namelist() if n.endswith(".dex")]
        if not names:
            raise SystemExit("no .dex inside %s" % apk)
        blobs = [zf.read(n) for n in sorted(names)]

    strings = set()
    for dex in blobs:
        count, offset = struct.unpack_from("<II", dex, 0x38)
        for i in range(count):
            so = struct.unpack_from("<I", dex, offset + 4 * i)[0]
            # string_data_item = uleb128 utf16_size, then a NUL-terminated
            # MUTF-8 byte sequence. The uleb128 counts UTF-16 code units, NOT
            # bytes, so the payload must be read up to the terminator.
            p = so
            while dex[p] & 0x80:
                p += 1
            p += 1
            end = dex.index(b"\x00", p)
            strings.add(dex[p:end].decode("utf-8", "replace"))
    return strings


def walk_strings(value):
    if isinstance(value, str):
        yield value
    elif isinstance(value, list):
        for item in value:
            yield from walk_strings(item)
    elif isinstance(value, dict):
        for item in value.get("args", []):
            yield from walk_strings(item)


def run_jadx(apk, workdir):
    out = workdir / "jadx"
    cmd = ["jadx", "-d", str(out), "--no-res", "--no-imports", str(apk)]
    print("[jadx] " + " ".join(cmd), file=sys.stderr)
    proc = subprocess.run(cmd, capture_output=True, text=True)
    tail = "\n".join((proc.stderr or proc.stdout).splitlines()[-12:])
    print("[jadx] exit=%s\n%s" % (proc.returncode, tail), file=sys.stderr)
    sources = out / "sources"
    if not sources.is_dir():
        raise SystemExit("jadx produced no sources directory at %s" % sources)
    return sources


def collect_tables(sources):
    tables = []
    for path in sorted(sources.rglob("*.java")):
        rel = path.relative_to(sources).as_posix()
        if FOCUS_PREFIXES and not rel.startswith(FOCUS_PREFIXES):
            continue
        owner = rel[:-5].replace("/", ".")
        try:
            lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
        except OSError:
            continue
        i = 0
        while i < len(lines):
            if "static final" not in lines[i] or "{" not in lines[i]:
                i += 1
                continue
            m = DECL_RE.match(lines[i])
            if not m:
                i += 1
                continue
            first = i
            buf = m.group("rest")
            depth = 0
            started = False
            while i < len(lines):
                for ch in lines[i]:
                    if ch == "{":
                        depth += 1
                        started = True
                    elif ch == "}":
                        depth -= 1
                if started and depth <= 0:
                    break
                i += 1
                if i < len(lines):
                    buf += "\n" + lines[i]
            text = buf[:buf.rfind("}") + 1] if "}" in buf else buf
            entry = {
                "owner": owner,
                "field": m.group("name"),
                "declared_type": m.group("type"),
                "line": first + 1,
            }
            try:
                entry["value"] = LiteralParser(text).parse()
            except (ValueError, IndexError) as exc:
                entry["error"] = str(exc)
                entry["raw"] = text[:4000]
            tables.append(entry)
            i += 1
    return tables


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--apk", type=Path, default=DEFAULT_APK)
    ap.add_argument("--out", type=Path, default=DEFAULT_OUT)
    ap.add_argument("--jadx-out", type=Path,
                    help="reuse an existing jadx output directory instead of running jadx")
    ap.add_argument("--include-bytes", action="store_true",
                    help="also dump byte[] fields (crypto keys, packed blobs)")
    ap.add_argument("--min-rows", type=int, default=1,
                    help="skip tables with fewer rows (default 1)")
    ap.add_argument("--keep-jadx", action="store_true")
    ap.add_argument("--verify", action="store_true",
                    help="re-read the raw DEX string pool and check every extracted "
                         "string literal against it (independent of jadx)")
    ap.add_argument("--dump-strings", action="store_true",
                    help="also write the full raw DEX string pool next to the tables")
    ap.add_argument("--skip-assets", action="store_true",
                    help="do not copy the APK's plain (unencrypted) assets")
    args = ap.parse_args()

    apk = args.apk.resolve()
    if not apk.is_file():
        print("missing APK: %s" % apk)
        return 2

    workdir = Path(tempfile.mkdtemp(prefix="offlineserver-dex-"))
    try:
        if args.jadx_out:
            base = args.jadx_out.resolve()
            sources = base / "sources" if (base / "sources").is_dir() else base
        else:
            if shutil.which("jadx") is None:
                print("jadx not found on PATH; install it or pass --jadx-out")
                return 2
            sources = run_jadx(apk, workdir)

        tables = collect_tables(sources)
        args.out.mkdir(parents=True, exist_ok=True)
        for stale in args.out.glob("*.json"):
            stale.unlink()

        index, errors = [], []
        for table in tables:
            if "error" in table:
                errors.append(table)
                continue
            if "byte[]" in table["declared_type"] and not args.include_bytes:
                continue
            value = table["value"]
            rows = len(value) if isinstance(value, list) else 1
            if rows < args.min_rows:
                continue
            slug = "%s.%s" % (table["owner"].rsplit(".", 1)[-1], table["field"])
            (args.out / (slug + ".json")).write_text(json.dumps({
                "owner": table["owner"],
                "field": table["field"],
                "declared_type": table["declared_type"],
                "source_line": table["line"],
                "rows": rows,
                "value": value,
            }, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
            index.append({
                "owner": table["owner"], "field": table["field"],
                "declared_type": table["declared_type"], "line": table["line"],
                "rows": rows, "file": slug + ".json",
            })

        manifest = {
            "source": "ServerProject/tmp/offlineserver.apk",
            "source_sha256": sha256_of(apk),
            "source_bytes": apk.stat().st_size,
            "extractor": "tools/extract_offlineserver_dex_rules.py",
            "decompiler": "jadx (--no-res --no-imports)",
            "notes": [
                "Tables are lifted from decompiled Java; jadx renaming only affects",
                "field names, never literal values. Cross-check any table you rely on",
                "against the client JSC recovery before treating it as canonical.",
            ],
            "table_count": len(index),
            "error_count": len(errors),
            "tables": sorted(index, key=lambda t: (t["owner"], t["line"])),
            "errors": [{"owner": e["owner"], "field": e["field"], "line": e["line"],
                        "error": e["error"]} for e in errors],
        }
        (args.out / "manifest.json").write_text(
            json.dumps(manifest, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
        if args.dump_strings:
            pool = sorted(dex_string_table(apk))
            strings_path = args.out.parent / "dex_strings.txt"
            strings_path.write_text("\n".join(pool) + "\n", encoding="utf-8")
            manifest["dex_string_pool"] = {
                "file": strings_path.name,
                "count": len(pool),
                "sha256": sha256_of(strings_path),
                "note": "one literal per line, ordered by DEX string_id",
            }
            print("strings: %d -> %s" % (len(pool), strings_path))

        if not args.skip_assets:
            assets_dir = args.out.parent / "apk_assets"
            assets_dir.mkdir(parents=True, exist_ok=True)
            manifest["plain_assets"] = {
                "directory": "apk_assets",
                "file_count": len(records := dump_plain_assets(apk, assets_dir)),
                "excluded": sorted(SKIP_ASSETS),
                "files": records,
            }
            print("plain assets: %d -> %s" % (len(records), assets_dir))

        if args.verify:
            pool = dex_string_table(apk)
            checked = missing = 0
            offenders = []
            for table in index:
                if "String" not in table["declared_type"]:
                    continue
                payload = json.loads((args.out / table["file"]).read_text(encoding="utf-8"))
                for literal in walk_strings(payload["value"]):
                    checked += 1
                    if literal not in pool:
                        missing += 1
                        offenders.append({"table": table["file"], "literal": literal})
            manifest["verification"] = {
                "method": "raw DEX string_ids membership test (no decompiler)",
                "pool_size": len(pool),
                "literals_checked": checked,
                "literals_missing": missing,
                "offenders": offenders[:50],
            }
            (args.out / "manifest.json").write_text(
                json.dumps(manifest, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
            print("verify: checked=%d missing=%d pool=%d" % (checked, missing, len(pool)))

        print("tables=%d errors=%d out=%s" % (len(index), len(errors), args.out))
        return 0
    finally:
        if not args.keep_jadx:
            shutil.rmtree(workdir, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
