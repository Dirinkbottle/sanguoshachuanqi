# 协议参考：神兵（magic.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`magic.forge`](#magicforge) | `?do=magic.forge` | `requestMiracleWeaponForge` | 1 |
| [`magic.getOverview`](#magicgetOverview) | `?do=magic.getOverview` | `requestOthersMiracleWeapon` | 1 |
| [`magic.open`](#magicopen) | `?do=magic.open` | `requestOpenMiracleWeapon` | 1 |

### magic.forge

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=magic.forge` | `ReconstructedJS/src_jsc/Cfg/Url.js:193` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:193` |
| 客户端封装 | `xs.Tools.Net.requestMiracleWeaponForge` [`ReconstructedJS/src_jsc/Tools/Net.js:2119`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/MiracleWeapons/MiracleWeaponLayer.js:716` |
| `magic_id` | `Views/MiracleWeapons/MiracleWeaponLayer.js:716` |
| `is_vip` | `Views/MiracleWeapons/MiracleWeaponLayer.js:716` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/MiracleWeapons/MiracleWeaponLayer.js:716` |
| `cmn.magic_info.update_list` | `Views/MiracleWeapons/MiracleWeaponLayer.js:716` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:193` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/MiracleWeapons/MiracleWeaponLayer.js:716` | `duanZaoCallback` | `user_id`, `magic_id`, `is_vip` | `inline` |

### magic.getOverview

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=magic.getOverview` | `ReconstructedJS/src_jsc/Cfg/Url.js:194` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:194` |
| 客户端封装 | `xs.Tools.Net.requestOthersMiracleWeapon` [`ReconstructedJS/src_jsc/Tools/Net.js:2127`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `other_user_id` | `Scene/TeamBuild/TeamBuildScene.js:981` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `info` | `Scene/TeamBuild/TeamBuildScene.js:981` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:194` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/TeamBuild/TeamBuildScene.js:981` | `requestOthersMiracleWeaponInfor` | `other_user_id` | `inline` |

### magic.open

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=magic.open` | `ReconstructedJS/src_jsc/Cfg/Url.js:192` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:192` |
| 客户端封装 | `xs.Tools.Net.requestOpenMiracleWeapon` [`ReconstructedJS/src_jsc/Tools/Net.js:2111`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/MiracleWeapons/SelectMiracleWeaponLayer.js:185` |
| `magic_id` | `Views/MiracleWeapons/SelectMiracleWeaponLayer.js:185` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/MiracleWeapons/SelectMiracleWeaponLayer.js:185` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:192` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/MiracleWeapons/SelectMiracleWeaponLayer.js:185` | `goToMiracleWeaponInfor` | `user_id`, `magic_id` | `inline` |
