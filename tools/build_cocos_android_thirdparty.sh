#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THIRDPARTY_ROOT="$PROJECT_ROOT/toolchain/cocos2d-x-3rd-party-libs-src-v2"
export ANDROID_NDK="${COCOS_ANDROID_NDK:-$PROJECT_ROOT/toolchain/android-ndk-r10e}"
export CPPFLAGS="${CPPFLAGS:+$CPPFLAGS }-DWEBP_DISABLE_NEON -I$ANDROID_NDK/sources/android/cpufeatures"

test -x "$ANDROID_NDK/ndk-build" || { echo "Missing Android NDK: $ANDROID_NDK" >&2; exit 2; }
test -x "$ANDROID_NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc" || {
    echo "Missing the NDK r10e ARM GCC 4.9 toolchain" >&2
    exit 2
}

cd "$THIRDPARTY_ROOT/build"
./build.sh -p=android --libs=zlib,jpeg,png,tiff,webp,websockets,openssl,curl --arch=armv7 --mode=release

# The upstream Android libpng staging exports png.h as a symlink into
# include/libpng16 but omits the target directory from build/android/png.
# Populate it from the build's install prefix so Cocos2d-x 2.2.6 can include
# png.h through its legacy flat include path.
PNG16_HEADERS="$THIRDPARTY_ROOT/contrib/install-android/armv7/include/libpng16"
PNG16_STAGING="$THIRDPARTY_ROOT/build/android/png/include/libpng16"
test -d "$PNG16_HEADERS" || { echo "Missing installed libpng16 headers: $PNG16_HEADERS" >&2; exit 2; }
mkdir -p "$PNG16_STAGING"
cp -a "$PNG16_HEADERS"/. "$PNG16_STAGING"/
