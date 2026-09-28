# Native 扩展重建进度

记录日期：2026-09-26。范围按用户最新决定：重建游戏实际需要的原生行为；移除渠道 SDK、广告、支付、统计、崩溃上报和设备数据收集等非核心服务，同时保留账号登录、选服、本地服务请求与游戏流程。

## 基线

- 基线 commit：`3cc74ae5dbaad086a6fe35c6a20a08d70a8981fd`。
- 基线工作树、子模块状态、APK/.so SHA-256：见 [`baseline-2026-09-26.txt`](baseline-2026-09-26.txt)。基线前已有大量工作树修改和三个已修改子模块；均保留，不重置、不清理。
- 已将原包 so 解到 `artifacts/native-port/work/oracle-libcocos2djs.so`，SHA-256 为 `37ad971c5cda4a69e2b175e7c50737edafffe448802fadbc9a6bc8d02c141c89`。原 APK SHA-256 为 `6a1b3fade3833b00d5ff65673c7f71cc9e9b7626f987cb9fcfc511089d8438ac`。
- 自建 APK `ClientProject/proj.android/sgscq-rebuilt.apk` SHA-256 为 `8f3ef9d41b44ad87dcbdbbd92bf812f1332fffd27c85848c4e547badec7ddc8b`；基线自建 so SHA-256 为 `6c8464c32fb8289d686007b5c7d01ae48a0bb4cd9de3623707352f5476ffa630`。
- 已硬链接保存原 `ClientProject/proj.android/build/` 快照，并另存基线 APK 与两个自建 so，防止构建脚本删除或覆盖既有产物。
- 预构建包静态校验命令：`python3 ClientProject/tools/verify_client_apk.py ClientProject/proj.android/sgscq-rebuilt.apk`。
- 预构建包实测结果：`APK contents verified: 3704 resources, 55 data scripts, 781 original bytecode scripts, 836 reconstructed JS files and reports, 328 CCBI, 180 CocoStudio exports; third-party channel SDKs omitted; native library is a self-built ARMv7 ELF; XHR retry and close-only error dialog overlays present; 15 local account-server routes.`
- 当前设备：ADB `79fac114` 在线，Android 16，机型 `2510DRK44C`。尚未重新安装本轮产物，也尚未记录游戏路径结果。
- 用户已亲自验证原有“武将替换显示”修复正常；本轮明确保留并按用户确认记录，不重新改写该修复。
- 用户确认按 APK 内提取的原厂旧 `.so` 作 oracle，与本地自建 `.so` 比对缺口；不要求把旧 `.so` 放入最终 APK。

## 批次 1：保护已有运行时修改

- 发现 `stage_reconstructed_sources.py` 会重写 `Resources/assets/reconstructed/src_jsc/`；其中 `LoginScene_AnySdk.js` 和 `LoginScene_BfSdk.js` 的既有改动原先没有独立 overlay，会被后续打包覆盖。
- 将两份已修改登录脚本原样复制到 `ClientProject/overlays/src_jsc/Scene/Login/`，添加 overlay 标记，并让 APK staging 和 `verify_client_apk.py` 检查它们。没有改登录、账号服务或选服行为。
- 同步更新 `docs/reconstruction/07-runtime-overlays.md`。
- 状态：**已实现并在基线构建中验证**；登录与选服成功进入主城。

## 批次 2：移除与玩法无关的渠道和数据采集

- 实机启动进入账号登录、服务区选择和主城后，发现客户端还向原个推地址发送玩家 ID、区服、等级、VIP、登录时间、客户端 ID 与渠道字段；普通游戏 API 也统一附加设备、渠道和在线时长统计对象。
- 在 APK staging overlay 中将万普激活与个推保存接口保留为 no-op，剔除服务区列表的 `data_acquire/channel/channel_id`、所有游戏 API 的 `statistic` 附件、更新检查里的渠道/设备标识，并清空 JSB 兼容层的渠道 ID/名称。账号登录、选服和游戏 API 的功能字段保留；聊天频道字段不动。运行时配置中对应的万普/个推域名也已清空。
- 定位更新检查 400：客户端把 JSON 直接拼进 `data=` 查询参数。overlay 会移除不必要字段并用 `encodeURIComponent` 编码 JSON；本地服务 `versionPlus.check` 只读 `resource_version`，不需要渠道或设备信息。
- `verify_client_apk.py` 已加入新包断言，要求相关 no-op/脱敏标记存在，且统计附件和遗留推送主机不存在。
- 状态：**已重建并实机安装验证**；出站账号/游戏请求无统计与渠道字段，个推/万普请求未出现；更新检查 400 已消失。

## 后续阶段

| 阶段 | 状态 | 结果/阻塞 |
|---|---|---|
| 当前源码构建及设备启动 | 通过当前 APK 门槛 | 用户要求的重建器修复后 staging/build 已重跑；快照显示 staging 前后生成资源副本相同。APK 中 1,672 个 JS/恢复报告逐字节匹配当前 `ReconstructedJS`，树哈希与签名/包校验见 `build-provenance-2026-09-26.md`。 |
| 原/新 so 与 API 矩阵 | 进行中 | 已从参考 APK 解出旧 so 并重扫当前 836 份 JS；矩阵 1,155 行，未核实项保持 `UNRESOLVED`。逐项 ABI 对照和语义验证待继续。 |
| 引擎、SpriteFrame retain 与 BF 控件 | 进行中 | 已有实现随基线构建启动；retain 日志显示四套 plist 全部保留、缺失帧为 0。武将替换修复由用户确认已验证。BF 控件及战斗场景行为仍待核。 |
| Native 服务/遥测剔除 | 部分完成 | 这轮明确剔除了非玩法统计与渠道数据、万普/个推上报；设备日志中登录/游戏请求字段干净。完整 90 项原生分发仍未逐项分类，未证明其他动态数据流全覆盖。 |
| 首战及场景回归 | 阻塞 | 更新检查、账号列表、`user.login` 与主菜单资源加载通过；新玩家随后的 `user.chooseTeam` 请求返回 404（初次 + 3 次重试），流程未到剧情/首战。`ServerProject/` 按要求未修改。Cocos 仍报缺 `cs1/armature/Cmn03.png`，根因待查。 |

## 最新重建器 / 包版本确认

- 用户修复重建器后，先将 `Resources/assets/reconstructed/src_jsc`、`data_cn_jsc` 和 SHA-256 清单保存到 `work/pre-user-reconstruction-stage-2026-09-26/`，再运行 `python3 ClientProject/tools/stage_reconstructed_sources.py` 与 `SGSCQ_SKIP_GIT_CHECKPOINT=1 NATIVE_JOBS=4 ./build-apk.sh`。前后差异均为 0 文件，无需回贴生成源码；独立登录/网络/隐私 overlays 仍在 staging 后应用。
- 为消除“APK 使用了哪版恢复源码”的歧义，`verify_client_apk.py` 现在逐文件比较 APK 内 archived generated JS/recovery report 与当前 `ReconstructedJS/`，要求 1,672 个文件全部一致，并报告 canonical SHA-256。最新源码树哈希：`7c4988b1492267385de3bf76139e0a411709bc5a0c07fd8ef0a8c2dcfae201fa`。
- APK 中实际执行的 782 个 `assets/src_jsc/**/*.js` 另有逐文件哈希清单 [`packaged-runtime-js-2026-09-26.sha256`](packaged-runtime-js-2026-09-26.sha256)，包含重建器源码和明确记录的引擎/本地端点/登录/隐私 overlay；运行时树哈希为 `5a4e742fc5a46a53f5f183490cd4a3c098d969f8deae98b20cbc846d98be48dd`。
- 最新 APK SHA-256：`e4081c097a158abb3d27cc46d0fd971ba5143ad24ffefb8fba784a89f14b1318`。最终安装再次使用 `adb install -r`，保留应用数据。完整构建日志和精确包/库哈希见 [`build-provenance-2026-09-26.md`](build-provenance-2026-09-26.md)、[`build-reconstruction-rerun.log`](build-reconstruction-rerun.log) 与 [`device-final.log`](device-final.log)。
- 旧 `.so` 对照目标是参考 APK 内提取的原厂库（oracle SHA-256 `37ad971c5cda4a69e2b175e7c50737edafffe448802fadbc9a6bc8d02c141c89`）；它只进入分析目录，不进入最终 APK。用户确认的武将替换修复保持不变。
- 最终 `git diff --check` 发现 4 行尾随空格，均在基线时已经有未提交修改的 `ReconstructedJS/manual_review_modules.csv` 中（生成器清单变更）；为保护现有改动，本轮未自动清理。APK verifier 和 APK 内 native hash 对照均通过。
