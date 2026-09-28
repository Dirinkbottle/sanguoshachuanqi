# 协议参考：进化宝箱（evolutionChest.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **5** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`evolutionChest.getList`](#evolutionChestgetList) | `?do=evolutionChest.getList` | `requestEvolutionChestList` | 2 |
| [`evolutionChest.open`](#evolutionChestopen) | `?do=evolutionChest.open` | `requestEvolutionChestOpen` | 2 |
| [`evolutionChest.openTen`](#evolutionChestopenTen) | `?do=evolutionChest.openTen` | `requestEvolutionChestOpenTen` | 2 |
| [`evolutionChest.refresh`](#evolutionChestrefresh) | `?do=evolutionChest.refresh` | `requestEvolutionChestRefresh` | 1 |
| [`evolutionChest.synthetise`](#evolutionChestsynthetise) | `/index.php?do=evolutionChest.synthetise` | `requestSynthetise` | 1 |

### evolutionChest.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=evolutionChest.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:249` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:249` |
| 客户端封装 | `xs.Tools.Net.requestEvolutionChestList` [`ReconstructedJS/src_jsc/Tools/Net.js:2533`] | |
| 响应交给的模型 | `mEvoChest.loadJson` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Awake/AwakeBoxView.js:178` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `mEvoChest.loadJson` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:249` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Awake/AwakeBoxView.js:178` | `getEvolutionChest` | `user_id` | `inline` |
| `Tools/Scene.js:225` | `gotoEvolutionChest` | `user_id` | `inline` |

### evolutionChest.open

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=evolutionChest.open` | `ReconstructedJS/src_jsc/Cfg/Url.js:250` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:250` |
| 客户端封装 | `xs.Tools.Net.requestEvolutionChestOpen` [`ReconstructedJS/src_jsc/Tools/Net.js:2549`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Awake/AwakeBoxView.js:199` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `reward_info` | `Scene/Awake/AwakeBoxView.js:199` |
| `reward_info.hasOwnProperty` | `Scene/Awake/AwakeBoxView.js:199` |
| `free_times` | `Scene/Awake/AwakeBoxView.js:199` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:250` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Awake/AwakeBoxView.js:199` | `goldBtnClicked` | `user_id` | `inline` |
| `Scene/Awake/AwakeBoxView.js:570` | `init` | `user_id` | `inline` |

### evolutionChest.openTen

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=evolutionChest.openTen` | `ReconstructedJS/src_jsc/Cfg/Url.js:251` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:251` |
| 客户端封装 | `xs.Tools.Net.requestEvolutionChestOpenTen` [`ReconstructedJS/src_jsc/Tools/Net.js:2557`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Awake/AwakeBoxView.js:246` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `reward_info` | `Scene/Awake/AwakeBoxView.js:246` |
| `reward_info.hasOwnProperty` | `Scene/Awake/AwakeBoxView.js:246` |
| `free_times` | `Scene/Awake/AwakeBoxView.js:246` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:251` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Awake/AwakeBoxView.js:246` | `copperBtnClicked` | `user_id` | `inline` |
| `Scene/Awake/AwakeBoxView.js:893` | `init` | `user_id` | `inline` |

### evolutionChest.refresh

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=evolutionChest.refresh` | `ReconstructedJS/src_jsc/Cfg/Url.js:252` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:252` |
| 客户端封装 | `xs.Tools.Net.requestEvolutionChestRefresh` [`ReconstructedJS/src_jsc/Tools/Net.js:2541`] | |
| 响应交给的模型 | `mEvoChest.loadJson` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Awake/AwakeBoxView.js:438` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `mEvoChest.loadJson` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:252` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Awake/AwakeBoxView.js:438` | `updateBtnClicked` | `user_id` | `inline` |

### evolutionChest.synthetise

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=evolutionChest.synthetise` | `ReconstructedJS/src_jsc/Cfg/Url.js:56` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:56` |
| 客户端封装 | `xs.Tools.Net.requestSynthetise` [`ReconstructedJS/src_jsc/Tools/Net.js:882`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_item_id` | `Scene/Bag/BagScene.js:521` |
| `universal_num` | `Scene/Bag/BagScene.js:524` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Tools/Net.js (via UseItemSuccess)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:56` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Bag/BagScene.js:558` | `rightCB` | `user_item_id`, `universal_num` | `this.useItemSuccessCallback` |
