# 协议参考：装备（equipment.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **8** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`equipment.equipmentCompose`](#equipmentequipmentCompose) | `/index.php?do=equipment.equipmentCompose` | `requireEquipPieceComposite` | 1 |
| [`equipment.equipmentPieceSell`](#equipmentequipmentPieceSell) | `/index.php?do=equipment.equipmentPieceSell` | `requireEquipPieceSell` | 1 |
| [`equipment.melt`](#equipmentmelt) | `/index.php?do=equipment.melt` | `requireMelt` | 2 |
| [`equipment.multiMelt`](#equipmentmultiMelt) | `/index.php?do=equipment.multiMelt` | `requireMultMelt` | 1 |
| [`equipment.multiUpgrade`](#equipmentmultiUpgrade) | `/index.php?do=equipment.multiUpgrade` | `requestEquipmentMultiUpgrade` | 1 |
| [`equipment.refine`](#equipmentrefine) | `/index.php?do=equipment.refine` | `requestRefineEquip` | 1 |
| [`equipment.sell`](#equipmentsell) | `/index.php?do=equipment.sell` | `requireSell` | 0 |
| [`equipment.upgrade`](#equipmentupgrade) | `/index.php?do=equipment.upgrade` | `requestEquipmentReinforce` | 3 |

### equipment.equipmentCompose

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.equipmentCompose` | `ReconstructedJS/src_jsc/Cfg/Url.js:45` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:45` |
| 客户端封装 | `xs.Tools.Net.requireEquipPieceComposite` [`ReconstructedJS/src_jsc/Tools/Net.js:548`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `equipment_id` | `Views/Table/Cell/EquipmentFragmentJoinTableViewCell.js:74` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:45` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/EquipmentFragmentJoinTableViewCell.js:76` | `_join` | `equipment_id` | `this._joinEx` |

### equipment.equipmentPieceSell

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.equipmentPieceSell` | `ReconstructedJS/src_jsc/Cfg/Url.js:44` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:44` |
| 客户端封装 | `xs.Tools.Net.requireEquipPieceSell` [`ReconstructedJS/src_jsc/Tools/Net.js:540`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `equipment_id` | `Views/Table/Cell/EquipmentFragmentTableViewCell.js:84` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:44` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/EquipmentFragmentTableViewCell.js:86` | `_sell` | `equipment_id` | `this._sellEx` |

### equipment.melt

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.melt` | `ReconstructedJS/src_jsc/Cfg/Url.js:42` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:42` |
| 客户端封装 | `xs.Tools.Net.requireMelt` [`ReconstructedJS/src_jsc/Tools/Net.js:524`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Table/Cell/EquipmentTableViewCell.js:182` |
| `eids` | `Views/Table/Cell/EquipmentTableViewCell.js:182` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Views/Table/Cell/EquipmentTableViewCell.js:182` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:42` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/EquipmentTableViewCell.js:182` | `_sell` | `user_id`, `eids` | `this._sellEx` |
| `Views/Table/Cell/EquipmentTableViewCell.js:225` | `_sell` | `user_id`, `eids` | `this._sellEx` |

### equipment.multiMelt

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.multiMelt` | `ReconstructedJS/src_jsc/Cfg/Url.js:43` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:43` |
| 客户端封装 | `xs.Tools.Net.requireMultMelt` [`ReconstructedJS/src_jsc/Tools/Net.js:532`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Equ/EquipmentScene.js:219` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Scene/Equ/EquipmentScene.js:219` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:43` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Equ/EquipmentScene.js:219` | `rightCB` | `user_id` | `inline` |

### equipment.multiUpgrade

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.multiUpgrade` | `ReconstructedJS/src_jsc/Cfg/Url.js:59` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:59` |
| 客户端封装 | `xs.Tools.Net.requestEquipmentMultiUpgrade`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:602`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:602 (wrapper-literal = true)` |
| `user_id` | `Scene/Equ/EquipmentScene.js:187` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `coin_not_enough` | `Scene/Equ/EquipmentScene.js:187` |
| `result` | `Scene/Equ/EquipmentScene.js:187` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:59` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Equ/EquipmentScene.js:187` | `rightCB` | `user_id` | `inline` |

### equipment.refine

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.refine` | `ReconstructedJS/src_jsc/Cfg/Url.js:132` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:132` |
| 客户端封装 | `xs.Tools.Net.requestRefineEquip`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:1422`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:1422 (wrapper-literal = true)` |
| `user_id` | `Views/Dialog/RefineEquipmentDialog.js:410` |
| `user_equipment_id` | `Views/Dialog/RefineEquipmentDialog.js:410` |
| `eaten_user_eids` | `Views/Dialog/RefineEquipmentDialog.js:410` |
| `eaten_user_items` | `Views/Dialog/RefineEquipmentDialog.js:410` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list.num` | `Views/Dialog/RefineEquipmentDialog.js:410` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:132` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/RefineEquipmentDialog.js:410` | `onConfirmRefine` | `user_id`, `user_equipment_id`, `eaten_user_eids`, `eaten_user_items` | `inline` |

### equipment.sell

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.sell` | `ReconstructedJS/src_jsc/Cfg/Url.js:41` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:41` |
| 客户端封装 | `xs.Tools.Net.requireSell` [`ReconstructedJS/src_jsc/Tools/Net.js:516`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:41` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### equipment.upgrade

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=equipment.upgrade` | `ReconstructedJS/src_jsc/Cfg/Url.js:58` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:58` |
| 客户端封装 | `xs.Tools.Net.requestEquipmentReinforce`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:592`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:592 (wrapper-literal = true)` |
| `user_equipment_id` | `Views/EquipmentReinforceView.js:129` |
| `quick` | `Views/Dialog/EquipmentStrengthenDialog.js:247` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `upgrade_level` | `Views/Dialog/EquipmentStrengthenDialog.js:249` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:58` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/EquipmentReinforceView.js:131` | `reinforceCallback` | `user_equipment_id` | `this.reinforceSuccessCallback` |
| `Views/Dialog/EquipmentStrengthenDialog.js:249` | `quick` | `user_equipment_id`, `quick` | `this.reinforceSuccessCallback` |
| `Views/Dialog/EquipmentStrengthenDialog.js:282` | `streng` | `user_equipment_id`, `quick` | `this.reinforceSuccessCallback` |
