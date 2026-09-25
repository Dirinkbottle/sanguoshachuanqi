# 重建客户端设备验证对照

测试日期：2026-09-25；设备通过 ADB 冷启动，原版使用项目内 `reference-apks/sgscq-original-patched.apk`（已修复 `nativeOnPause`）。

| 检查项 | 原版补丁 APK | 本轮重建 APK |
|---|---|---|
| 启动结果 | 进程存活，显示原始登录/服务器选择页面；屏幕中央有“选择服务器”按钮 | Cocos 启动、执行恢复的 `main.js`，在加载 `Libs/Views/Button/common.js` 时停止 |
| 屏幕 | [原版服务器选择页](original-patched-server-select.png) | [重建版黑屏](rebuilt-black-screen.png) |
| 关键日志 | `logo_scene_success`、`LogoScene::showLogoBegin`、`enter_js`、`update_step_1..4/1000` | `common.js:5: TypeError: xs.BFButton is undefined` |
| 结论 | README 中记录的暂停空指针补丁已生效；本次未把它作为待查崩溃 | 与暂停崩溃无关；新编译 native 库尚未注册原版 `xs.BFButton` 扩展 |

## 本轮 JS 生成与静态验证

- 从当前 `Recovered/` 重新生成 836 个 JS 文件和 836 个恢复报告。
- 共统计 2,261,953 条 bytecode 指令，2,261,884 条被翻译，估算加权恢复率 99.9969%。恢复产物是近似源码，不是原始源码。
- `validate_reconstructed.py`：836/836 文件可解析，815/815 已知依赖边闭合；85 个模块仍需人工复核，CFG 报告含 117 项异常。
- SpiderMonkey v22 differential：启动链 20/20 用例通过；这不是全 836 模块、所有函数的语义等价证明。
- 刚生成的 APK：`ClientProject/proj.android/sgscq-rebuilt.apk`。

下一步应按旧 `.so` 中 `register_all_xs_sanguosha` / `js_register_xs_sanguosha_BFButton` 的接口行为，补齐自己的 C++ JSB 注册实现，再用原版登录页作同屏对照；当前没有通过改游戏 JS 伪造按钮行为。
