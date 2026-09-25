#!/usr/bin/env bash
set -euo pipefail

tool_dir="$(cd -- "$(dirname -- "$0")" && pwd)"
toolchain_dir="$(cd -- "$tool_dir/../toolchain" && pwd)"
SPIDERMONKEY_SRC="${SPIDERMONKEY_SRC:-$toolchain_dir/SpiderMonkey-v22/js/src}"
SPIDERMONKEY_BUILD="${SPIDERMONKEY_BUILD:-$SPIDERMONKEY_SRC/build-linux}"
compiler="${CXX:-g++-15}"

"$compiler" -fpermissive -DDEBUG -D_DEBUG -DTRACING \
  -I"$SPIDERMONKEY_BUILD" \
  -I"$SPIDERMONKEY_BUILD/dist/include" \
  -I"$SPIDERMONKEY_SRC" \
  -I"$SPIDERMONKEY_SRC/../../mfbt" \
  -I"$SPIDERMONKEY_SRC/../../js/public" \
  "$tool_dir/jsc_disasm.cpp" \
  -o "$tool_dir/jsc_disasm" \
  "$SPIDERMONKEY_BUILD/libjs_static.a" -lz -lpthread -ldl

echo "Built $tool_dir/jsc_disasm"
