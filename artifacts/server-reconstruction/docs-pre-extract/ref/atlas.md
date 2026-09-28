# 协议参考：图鉴（atlas.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`atlas.getList`](#atlasgetList) | `/index.php?do=atlas.getList` | `requestAtlasList` | 1 |
| [`atlas.getSurrenderList`](#atlasgetSurrenderList) | `/index.php?do=atlas.getSurrenderList` | `requestGetSurrenderList` | 5 |

### atlas.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=atlas.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:108` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:108` |
| 客户端封装 | `xs.Tools.Net.requestAtlasList` [`ReconstructedJS/src_jsc/Tools/Net.js:1196`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `initWithData` | `Scene/Achievement/AchievementScene.js:32` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:108` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Achievement/AchievementScene.js:34` | `requestService` | `initWithData` | `this.requestCallback` |

### atlas.getSurrenderList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=atlas.getSurrenderList` | `ReconstructedJS/src_jsc/Cfg/Url.js:109` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:109` |
| 客户端封装 | `xs.Tools.Net.requestGetSurrenderList` [`ReconstructedJS/src_jsc/Tools/Net.js:1204`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `general_id` | `Views/Dialog/AgaSurrenderDialog.js:205` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:109` | `Cfg.Url` |

**调用点**（5）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/AgaSurrenderDialog.js:207` | `refreshViewWithModelGeneral` | `general_id` | `inline` |
| `Views/Dialog/DetailDialogGeneral.js:458` | `setDisplayType` | `general_id` | `inline` |
| `Views/Dialog/DetailDialogGeneral.js:469` | `setDisplayType` | `general_id` | `inline` |
| `Views/Dialog/DetailDialogGeneral.js:490` | `setDisplayType` | `general_id` | `inline` |
| `Views/Dialog/DetailDialogGeneral.js:505` | `setDisplayType` | `general_id` | `inline` |
