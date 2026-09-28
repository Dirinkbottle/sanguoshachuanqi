# 协议参考：活动副本（festival.*）

节日副本与兑换

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **7** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`festival.getGift`](#festivalgetGift) | `/?do=festival.getGift` | `requestYuLuConvert` | 1 |
| [`festival.getRainDewList`](#festivalgetRainDewList) | `/?do=festival.getRainDewList` | `requestYuLuInfo` | 1 |
| [`festival.getScoreList`](#festivalgetScoreList) | `/?do=festival.getScoreList` | `requestJiFenDuiHuanInfo` | 5 |
| [`festival.goFight`](#festivalgoFight) | `/?do=festival.goFight` | `requireCopyFight` | 6 |
| [`festival.init`](#festivalinit) | `/?do=festival.init` | `requireCopyData` | 5 |
| [`festival.initRainDew`](#festivalinitRainDew) | `/?do=festival.initRainDew` | `requirePlantTreeData` | 1 |
| [`festival.scoreBuy`](#festivalscoreBuy) | `/?do=festival.scoreBuy` | `requestJiFenDuiHuanConvert` | 5 |

### festival.getGift

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=festival.getGift` | `ReconstructedJS/src_jsc/Cfg/Url.js:232` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:232` |
| 客户端封装 | `xs.Tools.Net.requestYuLuConvert` [`ReconstructedJS/src_jsc/Tools/Net.js:2397`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/PlantTreeDlg.js:395` |
| `pk_id` | `Views/Dialog/PlantTreeDlg.js:395` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/PlantTreeDlg.js:395` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:232` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/PlantTreeDlg.js:395` | `convertCallBack` | `user_id`, `pk_id` | `inline` |

### festival.getRainDewList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=festival.getRainDewList` | `ReconstructedJS/src_jsc/Cfg/Url.js:230` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:230` |
| 客户端封装 | `xs.Tools.Net.requestYuLuInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:2381`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/PlantTreeDlg.js:443` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/PlantTreeDlg.js:443` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:230` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/PlantTreeDlg.js:443` | `showWithSurrenderInfo` | `user_id` | `inline` |

### festival.getScoreList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=festival.getScoreList` | `ReconstructedJS/src_jsc/Cfg/Url.js:229` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:229` |
| 客户端封装 | `xs.Tools.Net.requestJiFenDuiHuanInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:2373`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/DuanWuDialog.js:449` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/DuanWuDialog.js:449` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:229` | `Cfg.Url` |

**调用点**（5）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/DuanWuDialog.js:449` | `showWithSurrenderInfo` | `user_id` | `inline` |
| `Views/Dialog/JiFenDuiHuanDialog.js:445` | `showWithSurrenderInfo` | `user_id` | `inline` |
| `Views/Dialog/LabourlDialog.js:445` | `showWithSurrenderInfo` | `user_id` | `inline` |
| `Views/Dialog/MemorialDialog.js:445` | `showWithSurrenderInfo` | `user_id` | `inline` |
| `Views/Dialog/PublicCopyDialog.js:451` | `showWithSurrenderInfo` | `user_id` | `inline` |

### festival.goFight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=festival.goFight` | `ReconstructedJS/src_jsc/Cfg/Url.js:34` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:34` |
| 客户端封装 | `xs.Tools.Net.requireCopyFight` [`ReconstructedJS/src_jsc/Tools/Net.js:458`] | |
| 响应交给的模型 | `xs.Models.FightInfo.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Copy/CopyScene.js:229` |
| `boss_id` | `Scene/Copy/CopyScene.js:229` |
| `boss_dungeon_id` | `Scene/Copy/CopyScene.js:229` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.FightInfo.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:34` | `Cfg.Url` |

**调用点**（6）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Copy/CopyScene.js:229` | `initUI` | `user_id`, `boss_id`, `boss_dungeon_id` | `inline` |
| `Scene/Copy/DuanWuCopyScene.js:229` | `initUI` | `user_id`, `boss_id`, `boss_dungeon_id` | `inline` |
| `Scene/Copy/LabourlCopyScene.js:229` | `initUI` | `user_id`, `boss_id`, `boss_dungeon_id` | `inline` |
| `Scene/Copy/MemorialCopyScene.js:229` | `initUI` | `user_id`, `boss_id`, `boss_dungeon_id` | `inline` |
| `Scene/Copy/PlantCopyScene.js:227` | `initUI` | `user_id`, `boss_id`, `boss_dungeon_id` | `inline` |
| `Scene/Copy/PublicCopyScene.js:239` | `initUI` | `user_id`, `boss_id`, `boss_dungeon_id` | `inline` |

### festival.init

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=festival.init` | `ReconstructedJS/src_jsc/Cfg/Url.js:35` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:35` |
| 客户端封装 | `xs.Tools.Net.requireCopyData` [`ReconstructedJS/src_jsc/Tools/Net.js:466`] | |
| 响应交给的模型 | `mCopy.loadJson` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Copy/CopyScene.js:496` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `mCopy.loadJson` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:35` | `Cfg.Url` |

**调用点**（5）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Copy/CopyScene.js:496` | `requestService` | `user_id` | `inline` |
| `Scene/Copy/DuanWuCopyScene.js:496` | `requestService` | `user_id` | `inline` |
| `Scene/Copy/LabourlCopyScene.js:496` | `requestService` | `user_id` | `inline` |
| `Scene/Copy/MemorialCopyScene.js:496` | `requestService` | `user_id` | `inline` |
| `Scene/Copy/PublicCopyScene.js:539` | `requestService` | `user_id` | `inline` |

### festival.initRainDew

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=festival.initRainDew` | `ReconstructedJS/src_jsc/Cfg/Url.js:36` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:36` |
| 客户端封装 | `xs.Tools.Net.requirePlantTreeData` [`ReconstructedJS/src_jsc/Tools/Net.js:474`] | |
| 响应交给的模型 | `mCopy.loadJson` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Copy/PlantCopyScene.js:494` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `mCopy.loadJson` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:36` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Copy/PlantCopyScene.js:494` | `requestService` | `user_id` | `inline` |

### festival.scoreBuy

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=festival.scoreBuy` | `ReconstructedJS/src_jsc/Cfg/Url.js:231` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:231` |
| 客户端封装 | `xs.Tools.Net.requestJiFenDuiHuanConvert` [`ReconstructedJS/src_jsc/Tools/Net.js:2389`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/DuanWuDialog.js:399` |
| `pk_id` | `Views/Dialog/DuanWuDialog.js:399` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/DuanWuDialog.js:399` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:231` | `Cfg.Url` |

**调用点**（5）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/DuanWuDialog.js:399` | `rightCB` | `user_id`, `pk_id` | `inline` |
| `Views/Dialog/JiFenDuiHuanDialog.js:395` | `rightCB` | `user_id`, `pk_id` | `inline` |
| `Views/Dialog/LabourlDialog.js:395` | `rightCB` | `user_id`, `pk_id` | `inline` |
| `Views/Dialog/MemorialDialog.js:395` | `rightCB` | `user_id`, `pk_id` | `inline` |
| `Views/Dialog/PublicCopyDialog.js:401` | `rightCB` | `user_id`, `pk_id` | `inline` |
