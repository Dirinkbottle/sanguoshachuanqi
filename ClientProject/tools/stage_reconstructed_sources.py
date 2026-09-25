#!/usr/bin/env python3
"""Stage the reconstructed JavaScript and recovery reports into APK assets.

The decompiler output is approximate JS, so it is kept in its own namespace and
never replaces the original SpiderMonkey bytecode files.
"""

from __future__ import annotations

import json
import shutil
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parents[2]
SOURCE_ROOT = PROJECT_ROOT / "ReconstructedJS"
ASSET_ROOT = PROJECT_ROOT / "Resources" / "assets" / "reconstructed"
GROUPS = ("src_jsc", "data_cn_jsc")


def main() -> None:
    ASSET_ROOT.mkdir(parents=True, exist_ok=True)
    staged = {"js": 0, "recovery_reports": 0}

    for group in GROUPS:
        source_dir = SOURCE_ROOT / group
        target_dir = ASSET_ROOT / group
        if target_dir.exists():
            shutil.rmtree(target_dir)
        target_dir.mkdir(parents=True)

        for source in source_dir.rglob("*"):
            if not source.is_file() or source.suffix not in {".js", ".json"}:
                continue
            if source.suffix == ".json" and not source.name.endswith(".recovery.json"):
                continue
            relative = source.relative_to(source_dir)
            target = target_dir / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source, target)
            staged["js" if source.suffix == ".js" else "recovery_reports"] += 1

    manifest = {
        "description": "Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode; not original source text.",
        "source": "ReconstructedJS/",
        "bytecode_preserved_in_working_tree_at": "Resources/assets/src_jsc/ and Resources/assets/data_cn_jsc/",
        "apk_bytecode_oracle_path": "bytecode_oracle/ (separate from executable script paths)",
        "staged_files": staged,
    }
    (ASSET_ROOT / "MANIFEST.json").write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(f"Staged reconstructed sources: {staged['js']} JS, {staged['recovery_reports']} reports")


if __name__ == "__main__":
    main()
