# Rebuilt Cocos2d-x client shell

This project builds a clean Android shell around the reconstructed 三国杀传奇 client assets. It now compiles its own ARMv7 Cocos2d-x/JSB library; the library extracted from the Huawei APK is not included in the rebuilt APK.

## Native source and build inputs

- `../toolchain/cocos2d-x-2.2.6/` contains Cocos2d-x 2.2.6 and the generated SpiderMonkey JSB bindings.
- `../toolchain/SpiderMonkey-v22/` is SpiderMonkey v22 with ICU 50.2. The Android build uses the interpreter; JIT is disabled for this legacy Android/GCC target.
- `../toolchain/cocos2d-x-3rd-party-libs-src-v2/` provides Android ARMv7 zlib, JPEG, PNG, TIFF, WebP, WebSockets, OpenSSL, and curl libraries.
- `../Resources/assets/res_n_main/` contains 3,704 runtime game resources, including CCBI and CocoStudio exports. The original `SConscript` is also retained.
- `../Resources/assets/src_jsc/` and `../Resources/assets/data_cn_jsc/` retain the original 781 + 55 SpiderMonkey bytecode files. `../ReconstructedJS/` contains their 836 approximate JavaScript reconstructions and recovery reports.
- `proj.android/libs/armeabi-v7a/libcocos2djs.so` is the native library produced from the source build. It is ELF32/ARM EABI5 and links against Android system libraries.

The local build inputs were downloaded or built under `toolchain/`; no system-wide tool installation was made for this rebuild. They include NDK r10e/GCC 4.9, a project-local Python 2.7 runtime and generator dependencies, SpiderMonkey v22/ICU 50.2, a Cocos bindings-generator snapshot, and the third-party libraries above. When a build script needs to fetch missing sources, use the configured `arch-netns-shell p8` proxy environment (`shell8_gpt`).

## APK contents and startup

`proj.android/build-apk.sh` stages and packages the client. It keeps recovery reports under `assets/reconstructed/`, places original bytecode under `assets/bytecode_oracle/`, overlays the 781 recovered game scripts into executable `assets/src_jsc/` paths, and stages recovered `data_cn_jsc/` scripts at their runtime config paths. The 11 Cocos2d-x 2.2.6 JSB helper scripts come from the matching engine source tree because their recovered versions contain unresolved engine-level expressions. The smoke entry is retained as `src_jsc/main_smoke.js`. The preserved source asset tree is not modified by staging.

The APK omits the old channel payloads `ShareSDK.xml`, `baseSdk.jar`, `plugins.ymn`, and `usdk.cfg`, and contains no HMS, AnySDK, payment, push, or analytics Java SDKs. The manifest and Java tree are reduced to the Cocos activity and platform support layer.

The APK entry now runs the reconstructed `src_jsc/main.js`; its supported local project code routes into `xs.main_game()`, which loads the recovered game headers and requests the registered `LoginScene`. The one reconstructed resolution-scale stack merge was checked against the SpiderMonkey disassembly and restored as `Math.min(_scaleX, _scaleY)`. The staging step also removes two inferred `require` function names whose original expressions are anonymous, preventing accidental recursion. A marked local LoginScene adapter replaces the removed Huawei/BF authentication flow and performs no vendor login or network request. Narrow launch shims restore Cfg startup constants directly visible in bytecode and let the `BFButton` wrapper and recovered statistics queue initialize; these are not full substitutes for the BF widgets or telemetry runtime. `Resources/assets/jsb_compat.js` provides the JS-level `JsbConnecter` fallback for local metadata and neutral responses; removed vendor operations remain disabled. Recovered JS remains approximate and the original gameplay bridge surface is incomplete. The native comparison in `../Recovered/native_api_compatibility.md` records the remaining gap: five `BF*` widgets, 53 custom wrappers, and 31 C++→JS callback labels are not implemented in this build.

The original `.pg` textures are PNG data with the first 1,000 bytes XORed by `0x18`. This was confirmed from `CCFileUtils::DeEncrypt` in the old APK library. Staging reverses that transform on the APK copy and writes the referenced `.png` paths; it leaves `Resources/assets/` unchanged. Cocos searches `res_n_main/medium` and its `tex` directory. The local View-manager adapter also supplies the `lastView.clearAll()` and overlay-init hooks that SceneMgr calls before installing a scene; they are no-ops because the local login adapter opens no recovered game dialogs.

## Build and verify

From the repository root:

```sh
cd /home/inkbottle/othersrc/android_playground/sgscq-reconstruction
./tools/build_spidermonkey_android.sh
./tools/build_cocos_android_thirdparty.sh
./tools/generate_jsb_bindings.sh
cd ClientProject/proj.android
./build_native.sh -j8
./build-apk.sh
```

`build-apk.sh` runs `ClientProject/tools/verify_client_apk.py`. The last verified APK contains 3,704 runtime resources, 55 data bytecode files, 781 game bytecode files in the oracle namespace, 836 reconstructed JS files and reports, 328 CCBI files, and 180 CocoStudio exports. It is signed with the local debug keystore.

Run `python3 tools/compare_jsb_inventory.py` to refresh the old/new native API name comparison.

The current recovered-entry APK was rebuilt, statically verified, and run on the connected ADB device (`79fac114`). Logcat reached `LOCAL_REBUILD: entered reconstructed main_game`, `main headers.js end`, `xs.loadTest === false,goto LoginScene`, `LOCAL_REBUILD: LoginScene reached; vendor authentication disabled`, and `main.js end`. The process remained alive with `SanguoshaDemo` resumed, and [main-game-test-screenshot.png](main-game-test-screenshot.png) shows the local adapter scene. This validates the reconstructed startup route and Cocos resource loading; it does not validate vendor authentication, online services, or gameplay.
