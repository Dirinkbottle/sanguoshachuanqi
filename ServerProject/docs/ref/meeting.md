# 协议参考：奇遇（meeting.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **1** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`meeting.meeting`](#meetingmeeting) | `/index.php?do=meeting.meeting` | `requestAdventureInfo` | 0 |

### meeting.meeting

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=meeting.meeting` | `ReconstructedJS/src_jsc/Cfg/Url.js:85` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:85` |
| 客户端封装 | `xs.Tools.Net.requestAdventureInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:791`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:85` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。
