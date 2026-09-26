# Offline server data extraction

This directory contains the unredacted static data recovered from
`ServerProject/tmp/offlineserver.apk` and the paired client APK used to verify
the config version. It preserves both decrypted ZIP payloads and their extracted
files so the original payload structure remains available for inspection.

- `game_data_json/`: all 59 JSON files from `assets/encrypted/game_data.bin`.
- `limited_shop_config/`: the JSON config and manifest from
  `assets/encrypted/limited_shop_config.bin`.
- `*.decrypted.zip`: exact decrypted ZIP payloads.
- `extraction-manifest.json`: source hashes, entry hashes, and JSON root counts.
- `apk_assets/`: other plain server APK assets and nested client hotfix
  archives, preserved with their unpacked members.
- `dex_rules/`: 84 static DEX tables lifted to JSON, with a source manifest.
- `dex_strings.txt`: server DEX string pool used to verify extracted literals.
- `decompiled/`: focused JADX output for map/battle, wine, activity, festival,
  data-loader, and reward handlers.
- `GAMEPLAY_DATA_NOTES.md`: Chinese index for level, drop, wine, activity,
  gift, and shop data, including known gaps in the APK.

The `apk_assets/` and `dex_rules/` directories were already present in the
recovery area when the encrypted JSON extraction was added. Their files have
been preserved as-is; the gameplay notes combine those results with the
decrypted payloads and focused DEX sources.

Recreate or refresh these files with:

```sh
python3 tools/extract_offlineserver_data.py \
  --apk ServerProject/tmp/offlineserver.apk
```

Pass `--client-apk <path>` when you also want the extractor to record a
client APK's package/build metadata and hash. The recovered payload itself only
requires the server APK.

The extractor follows the APK's `a2`/`o0`/`f2` implementation and uses the APK
signer's certificate, `k1.bin`, HKDF-SHA256, and AES-256-GCM. It never records
the derived key. Requires Python package `cryptography` and the `openssl` CLI.

The companion client installed on the attached device was
`com.bf.sgscqtv.x64`, version `9.17.0.89-build211-arm64` (version code 765).
Its bundled `sgs_map_conf.jsc`, `sgs_dungeon_conf.jsc`, `sgs_dungeon_plot_conf.jsc`,
`sgs_dungeon_plot_dialog.jsc`, `sgs_global_conf.jsc`, and `sgs_item.jsc` have
the same SHA-256 hashes as the copies already under `Resources/assets`, so the
existing JSC recovery files correspond to this installed client build.
