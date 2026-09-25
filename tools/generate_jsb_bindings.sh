#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
COCOS_ROOT="$PROJECT_ROOT/toolchain/cocos2d-x-2.2.6"
GENERATOR_ROOT="$PROJECT_ROOT/toolchain/bindings-generator-2b9026"
NDK_ROOT="${SPIDERMONKEY_ANDROID_NDK:-$PROJECT_ROOT/toolchain/android-ndk-r10e}"
CLANG_LIBRARY_DIR="${JSB_LIBCLANG_DIR:-/usr/lib}"
PYTHON="$PROJECT_ROOT/toolchain/python2.7-runtime/bin/python2.7"
OUTPUT_DIR="$COCOS_ROOT/scripting/javascript/bindings/generated"
CONFIG_DIR="$GENERATOR_ROOT/android-configs"

test -x "$PYTHON" || { echo "Missing project Python 2.7: $PYTHON" >&2; exit 2; }
test -f "$CLANG_LIBRARY_DIR/libclang.so" || { echo "Missing libclang.so in $CLANG_LIBRARY_DIR" >&2; exit 2; }
test -d "$NDK_ROOT/platforms/android-21/arch-arm" || { echo "Missing Android API 21 headers in $NDK_ROOT" >&2; exit 2; }

mkdir -p "$CONFIG_DIR" "$OUTPUT_DIR"
cat > "$GENERATOR_ROOT/userconf.ini" <<EOF
[DEFAULT]
androidndkdir=$NDK_ROOT
clangllvmdir=$GENERATOR_ROOT/compat-clang
cocosdir=$COCOS_ROOT
cxxgeneratordir=$GENERATOR_ROOT
extra_flags=-target arm-linux-androideabi
EOF

for stem in cocos2dx cocos2dx_extension cocos2dx_studio; do
    sed \
        -e 's/android-14/android-21/g' \
        -e 's/gnu-libstdc++\/4\.6/gnu-libstdc++\/4.9/g' \
        "$COCOS_ROOT/tools/tojs/$stem.ini" > "$CONFIG_DIR/$stem.ini"
done

export PYTHONPATH="$PROJECT_ROOT/toolchain/python2.7-runtime/local-site-packages${PYTHONPATH:+:$PYTHONPATH}"
export LD_LIBRARY_PATH="$CLANG_LIBRARY_DIR${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

stems=(cocos2dx cocos2dx_extension cocos2dx_studio)
outputs=(jsb_cocos2dx_auto jsb_cocos2dx_extension_auto jsb_cocos2dx_studio_auto)
for i in "${!stems[@]}"; do
    (
        cd "$GENERATOR_ROOT"
        "$PYTHON" "$GENERATOR_ROOT/generator.py" -t spidermonkey \
            -o "$OUTPUT_DIR" -n "${outputs[$i]}" "$CONFIG_DIR/${stems[$i]}.ini"
    )
done

for output in "${outputs[@]}"; do
    test -s "$OUTPUT_DIR/$output.cpp" || { echo "Generator did not produce $output.cpp" >&2; exit 1; }
    test -s "$OUTPUT_DIR/$output.hpp" || { echo "Generator did not produce $output.hpp" >&2; exit 1; }
done
echo "Generated Cocos2d-x 2.2.6 JSB bindings in $OUTPUT_DIR"
