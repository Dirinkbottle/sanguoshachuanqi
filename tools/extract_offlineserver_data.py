#!/usr/bin/env python3
"""Extract the encrypted static data shipped inside the offline server APK.

This mirrors the APK's a2/o0/f2 key derivation and AES-GCM/AAD values. It writes
the decrypted ZIP payloads as well as every contained JSON file; existing files
outside the selected output directory are never touched.
Requires Python's `cryptography` package and OpenSSL's `openssl` command.
"""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import hmac
import io
import json
from pathlib import Path, PurePosixPath
import re
import shutil
import struct
import subprocess
import sys
import zipfile

from cryptography import x509
from cryptography.hazmat.primitives.ciphers.aead import AESGCM
from cryptography.hazmat.primitives.serialization import Encoding


GAME_DATA_AAD = b"sgscq_game_data_v2"
GAME_DATA_INFO = b"sgscq_data_key_v3"
LIMITED_CONFIG_AAD = b"sgscq_limited_shop_config_v1"
APK_KEY_WORDS = (
    8279557265114936619,
    5317209135687357376,
    4812679014341598486,
    -8728464203307716484,
)


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def hkdf_one_block(ikm: bytes, info: bytes) -> bytes:
    """The APK's a2.b implements HKDF-SHA256 and only requests one 32-byte block."""
    prk = hmac.new(bytes(32), ikm, hashlib.sha256).digest()
    return hmac.new(prk, info + b"\x01", hashlib.sha256).digest()


def signer_certificate(apk: Path) -> bytes:
    with zipfile.ZipFile(apk) as archive:
        signature = archive.read("META-INF/CERT.RSA")
    result = subprocess.run(
        ["openssl", "pkcs7", "-inform", "DER", "-print_certs"],
        input=signature,
        check=True,
        capture_output=True,
    )
    certs = re.findall(
        rb"-----BEGIN CERTIFICATE-----(.*?)-----END CERTIFICATE-----",
        result.stdout,
        re.DOTALL,
    )
    if not certs:
        raise ValueError("APK META-INF/CERT.RSA contains no X.509 certificate")
    cert_pem = b"-----BEGIN CERTIFICATE-----" + certs[0] + b"-----END CERTIFICATE-----"
    cert = x509.load_pem_x509_certificate(cert_pem)
    return cert.public_bytes(Encoding.DER)


def base_data_key(apk: Path) -> tuple[bytes, str]:
    with zipfile.ZipFile(apk) as archive:
        k1 = archive.read("assets/encrypted/k1.bin")
    if len(k1) != 32:
        raise ValueError(f"expected a 32-byte k1.bin, found {len(k1)} bytes")
    cert_der = signer_certificate(apk)
    cert_hash = hashlib.sha256(cert_der).digest()
    fixed_words = b"".join(struct.pack(">Q", n & ((1 << 64) - 1)) for n in APK_KEY_WORDS)
    derived = hkdf_one_block(cert_hash + fixed_words, GAME_DATA_INFO)
    return bytes(a ^ b for a, b in zip(k1, derived)), cert_hash.hex()


def decrypt_gcm(blob: bytes, key: bytes, aad: bytes, label: str) -> bytes:
    if len(blob) <= 28:
        raise ValueError(f"{label} is too short to contain a GCM nonce, payload, and tag")
    return AESGCM(key).decrypt(blob[:12], blob[12:], aad)


def safe_member_name(name: str) -> PurePosixPath:
    path = PurePosixPath(name)
    if path.is_absolute() or ".." in path.parts or not path.parts:
        raise ValueError(f"unsafe archive path: {name!r}")
    return path


def extract_archive(payload: bytes, destination: Path) -> tuple[list[dict], int]:
    files: list[dict] = []
    total_bytes = 0
    with zipfile.ZipFile(io.BytesIO(payload)) as archive:
        for entry in archive.infolist():
            if entry.is_dir():
                continue
            relative = safe_member_name(entry.filename)
            content = archive.read(entry)
            target = destination.joinpath(*relative.parts)
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(content)
            total_bytes += len(content)
            file_record: dict = {
                "path": relative.as_posix(),
                "bytes": len(content),
                "sha256": sha256(content),
            }
            if relative.suffix.lower() == ".json":
                document = json.loads(content)
                file_record["json_type"] = type(document).__name__
                if isinstance(document, (dict, list)):
                    file_record["root_count"] = len(document)
            files.append(file_record)
    return files, total_bytes


def main() -> int:
    repo_root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--apk",
        type=Path,
        default=repo_root / "ServerProject/tmp/offlineserver.apk",
        help="offline server APK (default: ServerProject/tmp/offlineserver.apk)",
    )
    parser.add_argument(
        "--client-apk",
        type=Path,
        help="optional paired client APK; only its hash is recorded",
    )
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=repo_root / "ServerProject/recovered-data",
        help="output directory (default: ServerProject/recovered-data)",
    )
    args = parser.parse_args()
    apk = args.apk.resolve()
    output_dir = args.output_dir.resolve()
    if not apk.is_file():
        parser.error(f"APK does not exist: {apk}")

    try:
        with zipfile.ZipFile(apk) as archive:
            encrypted_game_data = archive.read("assets/encrypted/game_data.bin")
            encrypted_limited_config = archive.read("assets/encrypted/limited_shop_config.bin")
        data_key, certificate_sha256 = base_data_key(apk)
        game_data_zip = decrypt_gcm(
            encrypted_game_data, data_key, GAME_DATA_AAD, "game_data.bin"
        )
        limited_key = hkdf_one_block(data_key, LIMITED_CONFIG_AAD)
        limited_config_zip = decrypt_gcm(
            encrypted_limited_config,
            limited_key,
            LIMITED_CONFIG_AAD,
            "limited_shop_config.bin",
        )

        output_dir.mkdir(parents=True, exist_ok=True)
        game_zip_path = output_dir / "server_game_data.decrypted.zip"
        limited_zip_path = output_dir / "limited_shop_config.decrypted.zip"
        game_zip_path.write_bytes(game_data_zip)
        limited_zip_path.write_bytes(limited_config_zip)

        game_files, game_total_bytes = extract_archive(
            game_data_zip, output_dir / "game_data_json"
        )
        limited_files, limited_total_bytes = extract_archive(
            limited_config_zip, output_dir / "limited_shop_config"
        )
        manifest = {
            "format_version": 1,
            "extracted_at_utc": datetime.now(timezone.utc).isoformat(),
            "source": {
                "server_apk": apk.name,
                "server_apk_sha256": sha256(apk.read_bytes()),
                "signer_certificate_sha256": certificate_sha256,
                "encrypted_assets": [
                    "assets/encrypted/game_data.bin",
                    "assets/encrypted/k1.bin",
                    "assets/encrypted/limited_shop_config.bin",
                ],
            },
            "client_apk": None,
            "decryption": {
                "cipher": "AES-256-GCM",
                "game_data_aad": GAME_DATA_AAD.decode(),
                "limited_config_aad": LIMITED_CONFIG_AAD.decode(),
                "derived_keys_recorded": False,
            },
            "payloads": {
                "server_game_data": {
                    "archive": game_zip_path.name,
                    "archive_bytes": len(game_data_zip),
                    "archive_sha256": sha256(game_data_zip),
                    "file_count": len(game_files),
                    "uncompressed_bytes": game_total_bytes,
                    "files": game_files,
                },
                "limited_shop_config": {
                    "archive": limited_zip_path.name,
                    "archive_bytes": len(limited_config_zip),
                    "archive_sha256": sha256(limited_config_zip),
                    "file_count": len(limited_files),
                    "uncompressed_bytes": limited_total_bytes,
                    "files": limited_files,
                },
            },
        }
        if args.client_apk:
            client_apk = args.client_apk.resolve()
            if not client_apk.is_file():
                parser.error(f"client APK does not exist: {client_apk}")
            manifest["client_apk"] = {
                "package": "com.bf.sgscqtv.x64",
                "version": "9.17.0.89-build211-arm64",
                "version_code": 765,
                "sha256": sha256(client_apk.read_bytes()),
            }
        (output_dir / "extraction-manifest.json").write_text(
            json.dumps(manifest, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
    except (OSError, ValueError, KeyError, zipfile.BadZipFile, subprocess.CalledProcessError) as exc:
        print(f"extraction failed: {exc}", file=sys.stderr)
        return 1

    print(
        f"Extracted {len(game_files)} game-data files ({game_total_bytes:,} bytes) "
        f"and {len(limited_files)} limited-shop files ({limited_total_bytes:,} bytes) "
        f"to {output_dir}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
