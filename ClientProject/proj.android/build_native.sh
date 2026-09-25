#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
COCOS_ROOT="$PROJECT_ROOT/toolchain/cocos2d-x-2.2.6"
THIRDPARTY_ROOT="$PROJECT_ROOT/toolchain/cocos2d-x-3rd-party-libs-src-v2"
NDK_ROOT="${SPIDERMONKEY_ANDROID_NDK:-$PROJECT_ROOT/toolchain/android-ndk-r10e}"
SM_MODULE="$COCOS_ROOT/scripting/javascript/spidermonkey-android/Android.mk"

if [[ ! -x "$NDK_ROOT/ndk-build" ]]; then
    echo "Android NDK not found: $NDK_ROOT" >&2
    exit 2
fi
if [[ ! -f "$SM_MODULE" ]]; then
    cat >&2 <<EOF
Cannot compile libcocos2djs.so yet: Cocos2d-x 2.2.6 expects
  $SM_MODULE
but that SpiderMonkey Android module is absent from the upstream checkout.
Restore/build the SpiderMonkey v22 ARM module first, then rerun this script.
EOF
    exit 2
fi

exec "$NDK_ROOT/ndk-build" -C "$SCRIPT_DIR" \
    NDK_MODULE_PATH="$COCOS_ROOT:$THIRDPARTY_ROOT/build/android:$PROJECT_ROOT:$NDK_ROOT/sources" \
    V="${NDK_VERBOSE:-0}" "$@"
