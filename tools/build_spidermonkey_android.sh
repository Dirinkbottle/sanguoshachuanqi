#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SM_SOURCE="$PROJECT_ROOT/toolchain/SpiderMonkey-v22/js/src"
BUILD_DIR="$SM_SOURCE/build-android/armeabi-v7a"
NDK_ROOT="${SPIDERMONKEY_ANDROID_NDK:-$PROJECT_ROOT/toolchain/android-ndk-r10e}"
SDK_ROOT="${ANDROID_SDK_ROOT:-/home/inkbottle/Android/Sdk}"
PYTHON_ROOT="$PROJECT_ROOT/toolchain/python2.7-runtime"
JOBS="${JOBS:-$(nproc)}"

test -x "$NDK_ROOT/ndk-build" || { echo "Missing NDK: $NDK_ROOT" >&2; exit 2; }
test -x "$NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-g++" || {
    echo "NDK r10e ARM GCC 4.9 toolchain is missing" >&2
    exit 2
}
test -f "$PROJECT_ROOT/toolchain/SpiderMonkey-v22/intl/icu/source/common/unicode/utypes.h" || {
    echo "Missing vendored ICU headers required by SpiderMonkey v22" >&2
    exit 2
}

mkdir -p "$BUILD_DIR"
if [[ ! -f "$BUILD_DIR/Makefile" ]] || \
   ! grep -q -- '-DUCHAR_TYPE=uint16_t' "$BUILD_DIR/Makefile" || \
   ! grep -q -- '--disable-ion' "$BUILD_DIR/config.status"; then
    (
        cd "$BUILD_DIR"
        CXXFLAGS="${CXXFLAGS:-} -DUCHAR_TYPE=uint16_t" PATH="$PYTHON_ROOT/bin:$PATH" ../../configure \
            --with-android-ndk="$NDK_ROOT" \
            --with-android-sdk="$SDK_ROOT" \
            --with-android-toolchain="$NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64" \
            --with-android-version=21 \
            --enable-application=mobile/android \
            --with-android-gnu-compiler-version=4.9 \
            --with-arch=armv7-a \
            --enable-android-libstdcxx \
            --target=arm-linux-androideabi \
            --disable-shared-js \
            --disable-tests \
            --disable-ion \
            --disable-methodjit \
            --disable-yarr-jit \
            --disable-ctypes \
            --enable-strip \
            --enable-install-strip \
            --disable-debug
    )
fi

make -C "$BUILD_DIR" -j"$JOBS"
test -s "$BUILD_DIR/dist/lib/libjs_static.a"
test -d "$BUILD_DIR/dist/include"

SM_ROOT="$PROJECT_ROOT/toolchain/SpiderMonkey-v22"
mkdir -p "$SM_ROOT/lib/armeabi-v7a"
ln -sfn "$BUILD_DIR/dist/include" "$SM_ROOT/include"
ln -sfn "$BUILD_DIR/dist/lib/libjs_static.a" "$SM_ROOT/lib/armeabi-v7a/libjs_static.a"
echo "Built SpiderMonkey v22 ARMv7 static archive: $SM_ROOT/lib/armeabi-v7a/libjs_static.a"
