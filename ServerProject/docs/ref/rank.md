# 协议参考：排行榜（rank.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`rank.getRankList`](#rankgetRankList) | `/index.php?do=rank.getRankList` | `requestRank` | 1 |
| [`rank.like`](#ranklike) | `/index.php?do=rank.like` | `requestLikeRank` | 1 |

### rank.getRankList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=rank.getRankList` | `ReconstructedJS/src_jsc/Cfg/Url.js:105` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:105` |
| 客户端封装 | `xs.Tools.Net.requestRank` [`ReconstructedJS/src_jsc/Tools/Net.js:2573`] | |

**请求字段**：该封装无显式字段（调用点：显式发送空对象 {}）。实际仍会带上公共字段。

**响应字段**

| 字段 | 证据 |
|---|---|
| `rank` | `Scene/Rank/RankScene.js:132` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:105` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Rank/RankScene.js:132` | `updateData` | 显式发送空对象 {} | `this.onResponse` |

### rank.like

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=rank.like` | `ReconstructedJS/src_jsc/Cfg/Url.js:106` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:106` |
| 客户端封装 | `xs.Tools.Net.requestLikeRank` [`ReconstructedJS/src_jsc/Tools/Net.js:2581`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `rank` | `Views/Table/Cell/RankTableViewCell.js:183` |
| `like_user_id` | `Views/Table/Cell/RankTableViewCell.js:185` |
| `type` | `Views/Table/Cell/RankTableViewCell.js:187` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `gold_num` | `Views/Table/Cell/RankTableViewCell.js:189` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:106` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/RankTableViewCell.js:189` | `updateCell` | `rank`, `like_user_id`, `type` | `this.onResponse` |
