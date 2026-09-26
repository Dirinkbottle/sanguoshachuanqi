# 协议参考：地图与章节（map.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`map.getConfig`](#mapgetConfig) | `(内联拼接，不含固定前缀)` | `—` | 0 |
| [`map.getUserMap`](#mapgetUserMap) | `/index.php?do=map.getUserMap` | `requireChapterInfo` | 8 |

### map.getConfig

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `(内联拼接，不含固定前缀)` | `Tools/Net.js:1523` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `Tools/Net.js:1523` |
| 客户端封装 | 内联在该函数体内（不是独立封装）：`xs.Tools.Net.requestSGSConfigForTest` | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Tools/Net.js:1523` | `requestSGSConfigForTest` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### map.getUserMap

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=map.getUserMap` | `ReconstructedJS/src_jsc/Cfg/Url.js:31` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:31` |
| 客户端封装 | `xs.Tools.Net.requireChapterInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:432`] | |
| 响应交给的模型 | `GameData.Map.update` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `map_id` | `Views/Table/Cell/TaskCell.js:333` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `map_info` | `Views/Table/Cell/TaskCell.js:333` |

> 响应整体（或部分）交给 `GameData.Map.update` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:31` | `Cfg.Url` |

**调用点**（8）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/TaskCell.js:333` | `changeSceneWithTag` | `map_id` | `inline` |
| `Views/Dialog/BecomeStrongerDialog.js:427` | `rightCB` | `map_id` | `inline` |
| `Views/Dialog/DetailDialogComponent.js:61` | `CommonJumpCallback` | `map_id` | `_updateMapInfo (local function literal)` |
| `Views/Dialog/DungeonDetailB.js:142` | `init` | `map_id` | `_updateMapInfo (local function literal)` |
| `Views/Dialog/DungeonDetailB.js:246` | `singleFight` | `map_id` | `_updateMapInfo (local function literal)` |
| `Views/Dialog/DungeonDetailB.js:327` | `rightCB` | `map_id` | `_updateMapInfo (local function literal)` |
| `Scene/FightChapter/FightChapters.js:325` | `requireChapterInfoWithMapId` | `map_id` | `this.chapterInfoResponse` |
| `Scene/FightChapter/FightChapters.js:341` | `requireChapterInfoWithMapId` | `map_id` | `this.chapterInfoResponse` |
