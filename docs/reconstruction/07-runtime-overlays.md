# 运行时 overlay：为什么"全量重生成"不会丢改动

## 问题

`tools/reconstruct_js.py` 会从零重写 `ReconstructedJS/` 下每一个文件。
任何**直接改在 `ReconstructedJS/` 里**的修改，下一次重跑就会消失，而且**不会有任何提示**——
重跑照常报告 "836/836 modules, recovery rate 100.00%"。

所以刻意改客户端行为的内容**不能放在 `ReconstructedJS/` 里**。本项目的做法是放进 overlay 层，
在打包 APK 时才贴上去。

## Runtime overlay

全部由 `ClientProject/tools/stage_apk_assets.py` 在**组装 APK 资产时**应用：

| 层 | 函数 | 作用 | 来源 |
|---|---|---|---|
| 端点重写 | `apply_local_reconstruction_routes()` | 把账号服域名与更新服地址改到本地测试服 | 环境变量 `SGSCQ_RECONSTRUCTION_SERVER_HOST`（默认 `127.0.0.1:18723`，置空则停用） |
| 网络重试 | `apply_runtime_feature_overlays()` | 替换整个 `Utils/Net.js` | `ClientProject/overlays/src_jsc/Utils/Net.js` |
| 错误弹窗 | `apply_runtime_feature_overlays()` | 正则替换 `Views/Dialog/Dialog.js` 里的 `NetConnectErr.create` 函数体 | `ClientProject/overlays/src_jsc/Views/Dialog/NetConnectErr.create.js` |
| 登录表单修复 | `apply_runtime_feature_overlays()` | 保留两种登录页的表单状态修复，不改变登录/选服流程 | `ClientProject/overlays/src_jsc/Scene/Login/` |
| 渠道/统计数据清理 | `apply_privacy_overlays()` | 关闭万普/个推上报，移除服务区与游戏请求中的可选渠道、设备、统计字段；更新检查 JSON 做 URL 编码 | 在 staging 时对 `Tools/Net.js`、`Views/Mgr.js`、`Update/UpdateScene.js`、`Cfg/Url.js` 做严格单次替换 |

**关键点：这些运行时改动都在 `ReconstructedJS/` 之外**，所以重建器无论怎么重跑都碰不到它们。

## 端点重写改了什么

```js
// Cfg/Url.js —— 三个域名指向本地
NormalServer: { domain: "127.0.0.1:18723/public/sanguosha_account" },
PublicTip:    { domain: "127.0.0.1:18723/public/sanguosha_account" },
Clock:        { domain: "127.0.0.1:18723/public/sanguosha_account" }
```

`Update/UpdateScene.js` 的 `_updateAddr` 里，凡是原本指向
`cqzj.sanguosha.com/` 或 `cqoverdownload.sanguosha.com/` 的，同样改到本地。
实测共 15 条 URL。

注意 `NormalServer`/`PublicTip`/`Clock` 在 `Url.js` 里**各有多个发行分支**，
重写是全量的——所以正则匹配数为 0 时会 `raise SystemExit`，不会静默放过。

## 网络重试 overlay

`Utils/Net.js` 是**整文件替换**，带一个自证标记：

```js
// SGSCQ_LOCAL_RETRY_OVERLAY: APK-only network retry behavior.
```

行为：首次请求 + 3 次自动重试（`maxAttempts = 4`），退避 `500 * 2^(attempt-1)` 毫秒，
失败详情写进 `xs.Utils.Net.lastErrorMessage` 供错误弹窗显示。

## 错误弹窗 overlay

不是替换文件，而是**正则替换 `Dialog.js` 里的一段函数体**：

```python
dialog_pattern = re.compile(
    r"\(xs\.Views\.Dialog\.NetConnectErr\.create = function\(\) \{.*?\n\}\);\n(?=// source line 80)",
    re.DOTALL,
)
# 用 lambda 而非替换字符串：否则 overlay 里的 "\n" 会被当成换行符
dialog_text, replaced = dialog_pattern.subn(lambda _match: dialog_body, dialog_text)
if replaced != 1:
    raise SystemExit("could not apply NetConnectErr dialog overlay")
```

行为：单按钮弹窗，按钮文字用 `auto_name_319`，点击只关闭弹窗；
把失败详情追加到正文，并按屏幕可用区域换行、必要时整体缩放 CCB 节点。

**这里为什么要 `lambda`**：`re.sub` 的替换串会把 `\n` 之类的转义当**转义序列**处理，
用函数式替换才能逐字保留 overlay 源码里的内容。这是很容易踩的坑。

## 三道防线

任何一层出问题，构建都不会产出"悄悄少了改动"的 APK：

1. **文件缺失** → `raise SystemExit("missing network runtime overlay ...")`
2. **overlay 自己缺标记** → `raise SystemExit("... is missing its marker")`
3. **正则没匹配到**（重建产物形态变了）→ `raise SystemExit("could not apply ...")`

再加一道事后校验：`ClientProject/tools/verify_client_apk.py` 会**打开已构建的 APK**，
断言 overlay 标记确实在包内，并报告端点路由状态：

```sh
python3 ClientProject/tools/verify_client_apk.py ClientProject/proj.android/sgscq-rebuilt.apk
# ... XHR retry, close-only error dialog, and local login overlays present;
# endpoints routed to the local test server (15 entries).
```

## 验证结论

"全量重生成后 overlay 是否还在"这个问题是**实测过的**，不是推断：

1. 全量重跑 `tools/reconstruct_js.py`（836/836）
2. 重跑 `ClientProject/tools/stage_reconstructed_sources.py` + `build-apk.sh`
3. 解包 APK 逐项核对：
   - `Utils/Net.js` 含 `SGSCQ_LOCAL_RETRY_OVERLAY`，且与 overlay 源**逐字节一致**
   - `Views/Dialog/Dialog.js` 含 `createOneButtonDialog` 与 `lastErrorMessage`
- `LoginScene_AnySdk.js` 与 `LoginScene_BfSdk.js` 含 `SGSCQ_LOCAL_LOGIN_OVERLAY`
- `Tools/Net.js` 不再调用个推/万普上报，也不发送 `data_acquire` 和渠道归因
- `Views/Mgr.js` 不再给游戏 API 附加设备/渠道/在线时长统计对象
- `Update/UpdateScene.js` 的本地版本检查不带渠道/设备字段，JSON 查询值经过 URL 编码
- `Cfg/Url.js` 不再配置万普/个推外部主机；JSB 兼容层渠道 ID/名称为空
- `Cfg/Url.js` 三个域名指向本地
   - `ReconstructedJS/src_jsc/Utils/Net.js` 里**没有** overlay 标记（符合预期）

## 与 `tools/source_patches.py` 的分工

两个机制解决的是**不同层面**的同一类问题，不要混淆：

| | `tools/source_patches.py` | `ClientProject/overlays/` |
|---|---|---|
| 作用对象 | `ReconstructedJS/`（重建树本身） | APK 里的运行时资产 |
| 内容性质 | 重建器产物**必须**偏离字节码的那几处（如登录框回填守卫） | 本地测试与体验改进，与字节码语义无关 |
| 生效时机 | 重建**之后**立刻由 `reconstruct_js.py` 自动应用 | APK 打包时由 `stage_apk_assets.py` 应用 |
| 幂等判据 | `after in text` | 标记串 + 正则匹配数必须为 1 |

判断新改动该放哪：**改的是"重建结果对不对"，放 `source_patches.py`；
改的是"客户端行为想怎样"，放 `overlays/`。**
