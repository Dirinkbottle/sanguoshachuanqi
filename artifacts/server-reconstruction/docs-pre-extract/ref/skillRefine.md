# 协议参考：技能洗练（skillRefine.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **1** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`skillRefine.skillRefine`](#skillRefineskillRefine) | `/?do=skillRefine.skillRefine` | `requestSkillRefine` | 1 |

### skillRefine.skillRefine

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=skillRefine.skillRefine` | `ReconstructedJS/src_jsc/Cfg/Url.js:261` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:261` |
| 客户端封装 | `xs.Tools.Net.requestSkillRefine` [`ReconstructedJS/src_jsc/Tools/Net.js:2645`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/SkillRefining/SkillRefiningLayer.js:619` |
| `user_skill_id` | `Views/SkillRefining/SkillRefiningLayer.js:619` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/SkillRefining/SkillRefiningLayer.js:619` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:261` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/SkillRefining/SkillRefiningLayer.js:619` | `lianhuaCallback` | `user_id`, `user_skill_id` | `inline` |
