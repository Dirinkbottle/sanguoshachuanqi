# 协议参考：推送激活（notify.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **1** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`notify.activate`](#notifyactivate) | `/?do=notify.activate` | `requestCheckWanPuActive` | 3 |

### notify.activate

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=notify.activate` | `ReconstructedJS/src_jsc/Cfg/Url.js:139` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:139` |
| 客户端封装 | `xs.Tools.Net.requestCheckWanPuActive` [`ReconstructedJS/src_jsc/Tools/Net.js:1658`] | |

**请求字段**：该封装无显式字段（调用点：无请求参数）。实际仍会带上公共字段。

**响应字段**：该封装没有回调参数，客户端不消费响应体（纯副作用请求）。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:139` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/UsrUpgrade.js:128` | `onEnterTransitionDidFinish` | 无请求参数 | `该封装没有回调参数` |
| `Views/Dialog/UsrUpgradeNew.js:537` | `onEnterTransitionDidFinish` | 无请求参数 | `该封装没有回调参数` |
| `Profile/GameData/Mgr.js:139` | `init_Login` | 无请求参数 | `该封装没有回调参数` |
