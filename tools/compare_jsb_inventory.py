#!/usr/bin/env python3
"""Compare names from the old native API inventory with the rebuilt library."""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
INVENTORY = ROOT / "Recovered" / "native_api_inventory.json"
LIBRARY = ROOT / "ClientProject" / "proj.android" / "libs" / "armeabi-v7a" / "libcocos2djs.so"
REPORT = ROOT / "Recovered" / "native_api_compatibility.md"


def main() -> None:
    inventory = json.loads(INVENTORY.read_text(encoding="utf-8"))
    library = LIBRARY.read_bytes()

    old_types = [entry["type"] for entry in inventory["oracle_registered_types"]]
    type_names_present = [name for name in old_types if name.encode() in library]
    type_names_missing = [name for name in old_types if name.encode() not in library]
    old_register_functions = inventory["oracle_registration_functions"]
    register_present = [name for name in old_register_functions if name.encode() in library]
    register_missing = [name for name in old_register_functions if name.encode() not in library]

    lines = [
        "# Old and rebuilt JSB API name comparison",
        "",
        "> Name-string comparison is a quick coverage signal only. It does not prove that every overload or behavior matches.",
        "",
        f"- Rebuilt library: `{LIBRARY.relative_to(ROOT)}`",
        f"- Oracle registered type names found in the rebuilt ELF: **{len(type_names_present)}/{len(old_types)}**",
        f"- Oracle registration function names found: **{len(register_present)}/{len(old_register_functions)}**",
        f"- Recovered JS bridge invoke pairs: **{len(inventory['bridge_invokes'])}**",
        f"- Oracle custom wrapper functions: **{len(inventory['oracle_custom_wrapper_functions'])}**",
        f"- Oracle C++→JS callback labels: **{len(inventory['cpp2jsb_callbacks'])}**",
        "",
        "## Oracle type names not present",
        "",
    ]
    lines.extend(f"- `{name}`" for name in type_names_missing)
    lines.extend(["", "## Oracle registration groups not present", ""])
    lines.extend(f"- `{name}`" for name in register_missing)
    lines.extend(
        [
            "",
            "## Compatibility status",
            "",
            "The rebuilt library contains the Cocos2d-x 2.2.6 core, extension, Studio, CCBReader, WebSocket, OpenGL, and Chipmunk registrations used by the smoke scene. The six missing native type names are the channel-specific `JsbConnecter` bridge and five `BF*` widgets. Their 53 custom wrappers and the 31 game callback labels are not implemented in C++.",
            "",
            "`Resources/assets/jsb_compat.js` now supplies a JavaScript `xs.JsbConnecter` facade for local build/device metadata and neutral fallbacks. It does not reproduce the original native bridge's full 87-pair behavior; removed login, payment, push, analytics, ads, and sharing services remain disabled. `BF*` widgets still need C++ compatibility implementations before the gameplay UI can be exercised.",
            "",
            "A successful smoke-scene launch validates engine startup, library loading, JS evaluation, and rendering. It does not establish gameplay API compatibility.",
            "",
        ]
    )
    REPORT.write_text("\n".join(lines), encoding="utf-8")
    print(f"Wrote {REPORT}")


if __name__ == "__main__":
    main()
