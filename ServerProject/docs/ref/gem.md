# 协议参考：宝石（gem.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **8** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`gem.bore`](#gembore) | `?do=gem.bore` | `requestGemsPunch` | 1 |
| [`gem.chgProperty`](#gemchgProperty) | `?do=gem.chgProperty` | `requestGemsSophistication` | 1 |
| [`gem.gemCompose`](#gemgemCompose) | `?do=gem.gemCompose` | `requestGemsCompose` | 2 |
| [`gem.gemInherit`](#gemgemInherit) | `?do=gem.gemInherit` | `requestGemsInherit` | 2 |
| [`gem.gemInset`](#gemgemInset) | `?do=gem.gemInset` | `requestGemsInset` | 2 |
| [`gem.gemRemove`](#gemgemRemove) | `?do=gem.gemRemove` | `requestGemsRemove` | 2 |
| [`gem.lock`](#gemlock) | `?do=gem.lock` | `requestGemsHoleLock` | 1 |
| [`gem.unlock`](#gemunlock) | `?do=gem.unlock` | `requestGemsHoleUnLock` | 1 |

### gem.bore

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.bore` | `ReconstructedJS/src_jsc/Cfg/Url.js:168` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:168` |
| 客户端封装 | `xs.Tools.Net.requestGemsPunch` [`ReconstructedJS/src_jsc/Tools/Net.js:1911`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsPunchView.js:198` |
| `user_equipment_id` | `Views/Gems/GemsPunchView.js:198` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:168` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsPunchView.js:198` | `_setPunchNodeCallBack` | `user_id`, `user_equipment_id` | `this.onResponse` |

### gem.chgProperty

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.chgProperty` | `ReconstructedJS/src_jsc/Cfg/Url.js:164` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:164` |
| 客户端封装 | `xs.Tools.Net.requestGemsSophistication` [`ReconstructedJS/src_jsc/Tools/Net.js:1887`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsSophisticationView.js:330` |
| `user_equipment_id` | `Views/Gems/GemsSophisticationView.js:330` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Gems/GemsSophisticationView.js:330` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:164` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsSophisticationView.js:330` | `_gemSophisticationCallBack` | `user_id`, `user_equipment_id` | `inline` |

### gem.gemCompose

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.gemCompose` | `ReconstructedJS/src_jsc/Cfg/Url.js:191` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:191` |
| 客户端封装 | `xs.Tools.Net.requestGemsCompose` [`ReconstructedJS/src_jsc/Tools/Net.js:1919`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsComposeView.js:276` |
| `user_gem_id` | `Views/Gems/GemsComposeView.js:276` |
| `type` | `Views/Gems/GemsComposeView.js:276` |
| `multi` | `Views/Gems/GemsComposeView.js:276` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Gems/GemsComposeView.js:276` |
| `return_info` | `Views/Gems/GemsComposeView.js:301` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:191` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsComposeView.js:276` | `OneStepComposeCallBack` | `user_id`, `user_gem_id`, `type`, `multi` | `inline` |
| `Views/Gems/GemsComposeView.js:301` | `ComposeCallback` | `user_id`, `user_gem_id`, `type`, `multi` | `inline` |

### gem.gemInherit

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.gemInherit` | `ReconstructedJS/src_jsc/Cfg/Url.js:167` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:167` |
| 客户端封装 | `xs.Tools.Net.requestGemsInherit` [`ReconstructedJS/src_jsc/Tools/Net.js:1927`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsHoleextendView.js:376` |
| `to_equipment_id` | `Views/Gems/GemsHoleextendView.js:376` |
| `from_equipment_id` | `Views/Gems/GemsHoleextendView.js:376` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Gems/GemsHoleextendView.js:376` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:167` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsHoleextendView.js:376` | `rightCB` | `user_id`, `to_equipment_id`, `from_equipment_id` | `inline` |
| `Views/Gems/GemsHoleextendView.js:400` | `rightCB` | `user_id`, `to_equipment_id`, `from_equipment_id` | `inline` |

### gem.gemInset

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.gemInset` | `ReconstructedJS/src_jsc/Cfg/Url.js:165` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:165` |
| 客户端封装 | `xs.Tools.Net.requestGemsInset` [`ReconstructedJS/src_jsc/Tools/Net.js:1895`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsPunchView.js:562` |
| `bore_id` | `Views/Gems/GemsPunchView.js:562` |
| `user_gem_id` | `Views/Gems/GemsPunchView.js:562` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Gems/GemsPunchView.js:562` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:165` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsPunchView.js:562` | `_inlayOrRemove` | `user_id`, `bore_id`, `user_gem_id` | `inline` |
| `Views/Gems/GemsSophisticationView.js:551` | `_inlayOrRemove` | `user_id`, `bore_id`, `user_gem_id` | `inline` |

### gem.gemRemove

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.gemRemove` | `ReconstructedJS/src_jsc/Cfg/Url.js:166` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:166` |
| 客户端封装 | `xs.Tools.Net.requestGemsRemove` [`ReconstructedJS/src_jsc/Tools/Net.js:1903`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsPunchView.js:598` |
| `bore_id` | `Views/Gems/GemsPunchView.js:598` |
| `user_gem_id` | `Views/Gems/GemsPunchView.js:598` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Gems/GemsPunchView.js:598` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:166` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsPunchView.js:598` | `_inlayOrRemove` | `user_id`, `bore_id`, `user_gem_id` | `inline` |
| `Views/Gems/GemsSophisticationView.js:583` | `_inlayOrRemove` | `user_id`, `bore_id`, `user_gem_id` | `inline` |

### gem.lock

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.lock` | `ReconstructedJS/src_jsc/Cfg/Url.js:162` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:162` |
| 客户端封装 | `xs.Tools.Net.requestGemsHoleLock` [`ReconstructedJS/src_jsc/Tools/Net.js:1871`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsSophisticationView.js:800` |
| `bore_id` | `Views/Gems/GemsSophisticationView.js:800` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Gems/GemsSophisticationView.js:800` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:162` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsSophisticationView.js:800` | `_gemLockAndUnlockCallBack` | `user_id`, `bore_id` | `inline` |

### gem.unlock

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=gem.unlock` | `ReconstructedJS/src_jsc/Cfg/Url.js:163` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:163` |
| 客户端封装 | `xs.Tools.Net.requestGemsHoleUnLock` [`ReconstructedJS/src_jsc/Tools/Net.js:1879`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Gems/GemsSophisticationView.js:817` |
| `bore_id` | `Views/Gems/GemsSophisticationView.js:817` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Gems/GemsSophisticationView.js:817` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:163` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Gems/GemsSophisticationView.js:817` | `_gemLockAndUnlockCallBack` | `user_id`, `bore_id` | `inline` |
