# 本地旧版 JS 构建工具链

本目录集中保存恢复 `.jsc` 所用的旧版运行时、源码和构建产物，避免工具链散落在 `/tmp` 或包管理缓存目录。

## Python 2.7

- `Python-2.7.18/`：Python 2.7.18 源码与本地构建树。
- `python2.7-runtime/`：项目内安装的解释器和标准库；未写入系统目录。
- `python2-build-inputs/`：下载的 Python 源码压缩包、签名、AUR 构建脚本、补丁和公钥。

已验证解释器版本为 2.7.18，`hashlib`、`json`、`ctypes`、`pyexpat` 可导入。旧系统上的 Tk 扩展会因 Tcl/Tk 头文件接口不兼容而跳过，不影响 SpiderMonkey 构建。

## SpiderMonkey v22（与 APK 匹配）

- `SpiderMonkey-v22/`：匹配 APK XDR 标记 `0xb973c051` 的源码检出与 Linux 调试构建。
- 源码目录：`SpiderMonkey-v22/js/src/`。
- 构建目录：`SpiderMonkey-v22/js/src/build-linux/`。

该构建已在项目内重新配置；`config.status` 和生成的构建文件指向本项目目录，所用 Python 2.7 虚拟环境也保存在构建目录中。解码器可以直接用这个构建重建：

```sh
bash sgscq-reconstruction/tools/build_disassembler.sh
```

也可通过 `SPIDERMONKEY_SRC`、`SPIDERMONKEY_BUILD` 环境变量覆盖默认目录。

## Cocos2d-x 2.2.6 源码

- `cocos2d-x-2.2.6/`：从 `cocos2d/cocos2d-x` 的 `cocos2d-x-2.2.6` tag 检出，commit `1fc007df0ed6f01ef458083504260d0752d19049`。
- 包含引擎、`template/multi-platform-js`、JSB C++ bindings、Android Java support 和平台模板，供 `ClientProject/` 引用。
- 此 tag 没有包含 `scripting/javascript/spidermonkey-android/` 模块；`scripting/javascript/bindings/generated` 还固定在上游已无法获取的旧 submodule commit `cfbd4d1e703b695c4897d818c9a4231bca0fa24b`。本地 NDK r29 也不能按老模板的 `armeabi` + `gnustl_static` 原样构建。当前 `ClientProject` 的 APK 配方因此仍引用输入 APK 的 `libcocos2djs.so`，原生 JSB 全源码构建尚未完成。

## SpiderMonkey 历史源码分支

- `cocos2d-jsc-decompiler-master/`：之前下载的 Mozilla/SpiderMonkey 参考分支源码和其附带构建目录，不是 Cocos2d-x 引擎源码。
- 该分支的 `js/src/vm/Xdr.h` 使用 `0xb973c0de - 182`，与 APK 的 `0xb973c0de - 141` 不同，不能直接解码本 APK。它保留作 SpiderMonkey 版本/opcode 交叉参考；实际解码使用上面的 v22 匹配构建。

`jadx`、`apktool` 和本机 Android SDK/NDK 是系统工具；本轮没有额外安装系统软件包。新拉取到项目内的源码只有上面的官方 Cocos2d-x 2.2.6 检出。

复制进来的两个源码树均保留原文件，没有裁掉各自的构建目录。编译时依赖本机 GCC、zlib、ICU 等开发工具库；这些仍由主机系统提供。
