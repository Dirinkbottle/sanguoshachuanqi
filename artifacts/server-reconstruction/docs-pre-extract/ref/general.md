# 协议参考：武将养成（general.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **11** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`general.autoCultivate`](#generalautoCultivate) | `?do=general.autoCultivate` | `requestAutoPractice` | 1 |
| [`general.culture`](#generalculture) | `/index.php?do=general.culture` | `requireAlchemy` | 4 |
| [`general.getOverview`](#generalgetOverview) | `/index.php?do=general.getOverview` | `requestOtherPlayerData` | 1 |
| [`general.insight`](#generalinsight) | `/index.php?do=general.insight` | `requestInsight` | 1 |
| [`general.reincarnate`](#generalreincarnate) | `/index.php?do=general.reincarnate` | `requestReincarnate` | 1 |
| [`general.removeObject`](#generalremoveObject) | `/index.php?do=general.removeObject` | `requestRemoveObject` | 4 |
| [`general.sacrifice`](#generalsacrifice) | `/index.php?do=general.sacrifice` | `requestWorshipGeneral` | 1 |
| [`general.setEquipment`](#generalsetEquipment) | `/index.php?do=general.setEquipment` | `requestEquipEquipment` | 2 |
| [`general.setLieutenant`](#generalsetLieutenant) | `/index.php?do=general.setLieutenant` | `requestEquipAssistantGeneral` | 2 |
| [`general.setSkill`](#generalsetSkill) | `/index.php?do=general.setSkill` | `requestEquipSkill` | 2 |
| [`general.takeCultureItem`](#generaltakeCultureItem) | `/index.php?do=general.takeCultureItem` | `requireTakeMedicine` | 2 |

### general.autoCultivate

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=general.autoCultivate` | `ReconstructedJS/src_jsc/Cfg/Url.js:235` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:235` |
| 客户端封装 | `xs.Tools.Net.requestAutoPractice` [`ReconstructedJS/src_jsc/Tools/Net.js:2421`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `user_general_id` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `is_gain` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `is_multi` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `cultivate_num` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `is_need_talent` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `cultivate_rule` | `Views/Dialog/AutoPracticeDialog.js:424` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `attr_info` | `Views/Dialog/AutoPracticeDialog.js:424` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:235` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/AutoPracticeDialog.js:424` | `_requestAutoPractice` | `user_id`, `user_general_id`, `is_gain`, `is_multi`, `cultivate_num`, `is_need_talent`, `cultivate_rule` | `inline` |

### general.culture

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.culture` | `ReconstructedJS/src_jsc/Cfg/Url.js:48` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:48` |
| 客户端封装 | `xs.Tools.Net.requireAlchemy`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:574`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:574 (wrapper-literal = true)` |
| `user_general_id` | `Scene/Develop/AlchemyView.js:346` |
| `is_gain` | `Scene/Develop/AlchemyView.js:346` |
| `is_multi` | `Scene/Develop/AlchemyView.js:346` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:48` | `Cfg.Url` |

**调用点**（4）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Develop/AlchemyView.js:346` | `init` | `user_general_id`, `is_gain`, `is_multi` | `this.self.onAlchemyResult` |
| `Scene/Develop/AlchemyView.js:359` | `init` | `user_general_id`, `is_gain`, `is_multi` | `this.self.onAlchemyResult` |
| `Scene/Develop/AlchemyView.js:373` | `init` | `user_general_id`, `is_gain`, `is_multi` | `this.self.onAlchemyResult` |
| `Scene/Develop/AlchemyView.js:386` | `init` | `user_general_id`, `is_gain`, `is_multi` | `this.self.onAlchemyResult` |

### general.getOverview

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.getOverview` | `ReconstructedJS/src_jsc/Cfg/Url.js:123` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:123` |
| 客户端封装 | `xs.Tools.Net.requestOtherPlayerData` [`ReconstructedJS/src_jsc/Tools/Net.js:1356`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `other_user_id` | `Tools/Net.js:150` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `info` | `Tools/Net.js:150` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:123` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Tools/Net.js:150` | `displayOtherTeamInfo` | `other_user_id` | `_cb (local function literal)` |

### general.insight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.insight` | `ReconstructedJS/src_jsc/Cfg/Url.js:80` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:80` |
| 客户端封装 | `xs.Tools.Net.requestInsight` [`ReconstructedJS/src_jsc/Tools/Net.js:902`] | |
| 响应交给的模型 | `xs.Models.BreachModel.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_general_id` | `Scene/Aga/AgaScene.js:593` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.BreachModel.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:80` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Aga/AgaScene.js:593` | `setCardInfo` | `user_general_id` | `inline` |

### general.reincarnate

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.reincarnate` | `ReconstructedJS/src_jsc/Cfg/Url.js:81` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:81` |
| 客户端封装 | `xs.Tools.Net.requestReincarnate` [`ReconstructedJS/src_jsc/Tools/Net.js:910`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `general_id` | `Scene/Aga/AgaScene.js:630` |
| `ignoreRandEvent` | `Scene/Aga/AgaScene.js:630` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:81` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Aga/AgaScene.js:630` | `setCardInfo` | `general_id`, `ignoreRandEvent` | `inline` |

### general.removeObject

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.removeObject` | `ReconstructedJS/src_jsc/Cfg/Url.js:122` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:122` |
| 客户端封装 | `xs.Tools.Net.requestRemoveObject` [`ReconstructedJS/src_jsc/Tools/Net.js:1340`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_general_id` | `Scene/TeamBuild/TeamBuildScene.js:877` |
| `position` | `Scene/TeamBuild/TeamBuildScene.js:879` |
| `type` | `Scene/TeamBuild/TeamBuildScene.js:881` |
| `object_instance_id` | `Scene/TeamBuild/TeamBuildScene.js:887` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:122` | `Cfg.Url` |

**调用点**（4）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/TeamBuild/TeamBuildScene.js:890` | `removeObjectAndCloseDialog` | `user_general_id`, `position`, `type`, `object_instance_id` | `inline` |
| `Scene/TeamBuild/TeamBuildScene.js:905` | `removeObjectAndCloseDialog` | `user_general_id`, `position`, `type`, `object_instance_id` | `inline` |
| `Scene/TeamBuild/TeamBuildScene_V2.js:704` | `removeObjectAndCloseDialog` | `user_general_id`, `position`, `type`, `object_instance_id` | `inline` |
| `Scene/TeamBuild/TeamBuildScene_V2.js:719` | `removeObjectAndCloseDialog` | `user_general_id`, `position`, `type`, `object_instance_id` | `inline` |

### general.sacrifice

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.sacrifice` | `ReconstructedJS/src_jsc/Cfg/Url.js:84` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:84` |
| 客户端封装 | `xs.Tools.Net.requestWorshipGeneral` [`ReconstructedJS/src_jsc/Tools/Net.js:934`] | |
| 响应交给的模型 | `xs.Models.TransmissionModel.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_general_id` | `Scene/Worship/WorshipScene.js:208` |
| `user_death_general_id` | `Scene/Worship/WorshipScene.js:210` |
| `sacrifice_type` | `Scene/Worship/WorshipScene.js:212` |
| `item_id` | `Scene/Worship/WorshipScene.js:214` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.TransmissionModel.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:84` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Worship/WorshipScene.js:275` | `requestWorshipGeneral` | `user_general_id`, `user_death_general_id`, `sacrifice_type`, `item_id` | `this.worshipSuccessCallback` |

### general.setEquipment

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.setEquipment` | `ReconstructedJS/src_jsc/Cfg/Url.js:29` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:29` |
| 客户端封装 | `xs.Tools.Net.requestEquipEquipment` [`ReconstructedJS/src_jsc/Tools/Net.js:416`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_general_id` | `Scene/TeamBuild/TeamBuildScene.js:1247` |
| `new_equipment_id` | `Scene/TeamBuild/TeamBuildScene.js:1249` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:29` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/TeamBuild/TeamBuildScene.js:1251` | `Net_ReplaceEquipment` | `user_general_id`, `new_equipment_id` | `this.Net_ReplaceEquipmentSuccessCallback` |
| `Scene/TeamBuild/TeamBuildScene_V2.js:961` | `Net_ReplaceEquipment` | `user_general_id`, `new_equipment_id` | `this.Net_ReplaceEquipmentSuccessCallback` |

### general.setLieutenant

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.setLieutenant` | `ReconstructedJS/src_jsc/Cfg/Url.js:30` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:30` |
| 客户端封装 | `xs.Tools.Net.requestEquipAssistantGeneral` [`ReconstructedJS/src_jsc/Tools/Net.js:424`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `major_user_general_id` | `Scene/TeamBuild/TeamBuildScene.js:1272` |
| `lieutenant_user_general_id` | `Scene/TeamBuild/TeamBuildScene.js:1274` |
| `position` | `Scene/TeamBuild/TeamBuildScene.js:1276` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:30` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/TeamBuild/TeamBuildScene.js:1278` | `Net_ReplaceAssistantGeneral` | `major_user_general_id`, `lieutenant_user_general_id`, `position` | `this.Net_ReplaceAssistantGeneralSuccessCallback` |
| `Scene/TeamBuild/TeamBuildScene_V2.js:990` | `Net_ReplaceAssistantGeneral` | `major_user_general_id`, `lieutenant_user_general_id`, `position` | `this.Net_ReplaceAssistantGeneralSuccessCallback` |

### general.setSkill

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.setSkill` | `ReconstructedJS/src_jsc/Cfg/Url.js:28` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:28` |
| 客户端封装 | `xs.Tools.Net.requestEquipSkill` [`ReconstructedJS/src_jsc/Tools/Net.js:408`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_general_id` | `Scene/TeamBuild/TeamBuildScene.js:1222` |
| `skill_pos` | `Scene/TeamBuild/TeamBuildScene.js:1224` |
| `new_skill_id` | `Scene/TeamBuild/TeamBuildScene.js:1226` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:28` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/TeamBuild/TeamBuildScene.js:1228` | `Net_ReplaceSkill` | `user_general_id`, `skill_pos`, `new_skill_id` | `this.Net_ReplaceSkillSuccessCallback` |
| `Scene/TeamBuild/TeamBuildScene_V2.js:934` | `Net_ReplaceSkill` | `user_general_id`, `skill_pos`, `new_skill_id` | `this.Net_ReplaceSkillSuccessCallback` |

### general.takeCultureItem

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=general.takeCultureItem` | `ReconstructedJS/src_jsc/Cfg/Url.js:49` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:49` |
| 客户端封装 | `xs.Tools.Net.requireTakeMedicine` [`ReconstructedJS/src_jsc/Tools/Net.js:584`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_general_id` | `Scene/Develop/AlchemyView.js:171` |
| `is_take` | `Scene/Develop/AlchemyView.js:171` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:49` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Develop/AlchemyView.js:171` | `showAlchemyResult` | `user_general_id`, `is_take` | `inline` |
| `Scene/Develop/AlchemyView.js:183` | `showAlchemyResult` | `user_general_id`, `is_take` | `inline` |
