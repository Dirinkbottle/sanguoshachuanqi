# 协议参考：女神（godness.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`godness.cancelFight`](#godnesscancelFight) | `?do=godness.cancelFight` | `requestGoddessCancelFight` | 1 |
| [`godness.fight`](#godnessfight) | `?do=godness.fight` | `requestGoddessGoToFight` | 1 |
| [`godness.switchGodness`](#godnessswitchGodness) | `?do=godness.switchGodness` | `requestGoddessChangeSkin` | 1 |

### godness.cancelFight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=godness.cancelFight` | `ReconstructedJS/src_jsc/Cfg/Url.js:220` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:220` |
| 客户端封装 | `xs.Tools.Net.requestGoddessCancelFight` [`ReconstructedJS/src_jsc/Tools/Net.js:2299`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Goddess/GoddessMainView.js:502` |
| `user_godness_id` | `Views/Goddess/GoddessMainView.js:502` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Goddess/GoddessMainView.js:502` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:220` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Goddess/GoddessMainView.js:502` | `goToFight` | `user_id`, `user_godness_id` | `inline` |

### godness.fight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=godness.fight` | `ReconstructedJS/src_jsc/Cfg/Url.js:219` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:219` |
| 客户端封装 | `xs.Tools.Net.requestGoddessGoToFight` [`ReconstructedJS/src_jsc/Tools/Net.js:2291`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Goddess/GoddessMainView.js:522` |
| `user_godness_id` | `Views/Goddess/GoddessMainView.js:522` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Goddess/GoddessMainView.js:522` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:219` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Goddess/GoddessMainView.js:522` | `goToFight` | `user_id`, `user_godness_id` | `inline` |

### godness.switchGodness

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=godness.switchGodness` | `ReconstructedJS/src_jsc/Cfg/Url.js:221` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:221` |
| 客户端封装 | `xs.Tools.Net.requestGoddessChangeSkin` [`ReconstructedJS/src_jsc/Tools/Net.js:2307`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Goddess/GoddessMainView.js:476` |
| `user_godness_id` | `Views/Goddess/GoddessMainView.js:476` |
| `godness_skin_id` | `Views/Goddess/GoddessMainView.js:476` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Goddess/GoddessMainView.js:476` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:221` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Goddess/GoddessMainView.js:476` | `changeSkinCallBack` | `user_id`, `user_godness_id`, `godness_skin_id` | `inline` |
