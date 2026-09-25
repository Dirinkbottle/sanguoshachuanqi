# 02 · 请求与响应封套

证据：**字节码**。响应处理在 `Views/Mgr.js:224-368`，数据合并在
`Profile/GameData/common.js:281-372`。

## 响应处理总链

```text
XHR 成功
  -> JSON.parse(responseText)               失败则报"数据错误"对话框
  -> data.result 为真?
       是 -> GameData.Mgr.updateRespData(data) -> _modelMap
             _modelMap.RandEvent 非空 且 未忽略随机事件?
               是 -> 弹出 RandEvent 对话框，业务回调被延后到关闭时执行
               否 -> 业务回调 readyFunc(data) 或 readyFunc(data, _modelMap)
       否 -> 记日志 "出错了,error_code:.. msg:.."
             调用 errFunc(data)；它返回 true 表示已处理，否则弹通用错误框
XHR 失败
  -> 尝试 JSON.parse 拿 msg/error_code 作为文案
  -> 调用 errFunc(responseText)；返回 true 则抑制，否则弹 NetConnectErr
```

ignoreRandEvent 是纯客户端开关：参数值为 true 时，它在序列化**之前**被删除
（`Views/Mgr.js:151-158`），同时把回调调用改成两参形式
`readyFunc(data, _modelMap)`（`Views/Mgr.js:272-280`）。它不会出现在网络上。

## 成功响应的结构

```json
{
  "result": true,
  "error_code": "可选，失败时使用",
  "msg": "可选，失败时展示给玩家",
  "cmn": { "...": "增量数据，见 data-model.md" },
  "user_level_up_info": {},
  "meeting_info": [],
  "surrender_info": [],
  "refresh_info": { "status": true },
  "...": "各业务动作自己的根字段"
}
```

### 旁路根字段（在 cmn 之外被读取）

`Profile/GameData/common.js:302-369` 的 `updateOtherData` 读取：

| 根字段 | 客户端行为 | 证据 |
|---|---|---|
| `user_level_up_info` | 构造升级展示模型，推入 RandEvent，并调用原生 `UserInfo levelUp` | `common.js:312-323` |
| `meeting_info` | 逐条构造奇遇展示模型，推入 RandEvent | `common.js:324-337` |
| `surrender_info` | 构造成就/觉醒展示模型，推入 RandEvent | `common.js:338-369` |
| `refresh_info.status` | 每日刷新标记（当前只记日志） | `common.js:667-672` |

**重要分支**：`common.js:308-311` —— 新手引导未结束时 `updateOtherData` 立即返回空
`RandEvent`。也就是说教程期间所有随机事件与升级弹窗都被抑制。
`GuideMgr.getIsOver()` 决定这条分支。

## cmn 增量协议

每次成功响应都会执行 `updateCmnData(_jsonResp.cmn || {})`（`common.js:288`）。
`cmn` 缺省按空对象处理，所以任何响应都可以不带 `cmn`。

### 三种合并语义

| 语义 | 常量 | 客户端行为 | 证据 |
|---|---|---|---|
| Map | `MapType` | 按 `pk_id` 增改；`del_list` 删除 | `common.js:423-526` |
| Replace | `ReplaceType` | 整个数组重建替换 | `common.js:534-550` |
| Singleton | `SingletonType` | 调模型的 `update(info)` 合并 | `common.js:528-532` |

Map 形状：

```json
{"update_list": [{"pk_id": "玩家实体主键", "...": "模型字段"}], "del_list": ["玩家实体主键"]}
```

`pk_id` 是**玩家拥有的实体主键**，不是静态配置 ID。
客户端在 `update_list` 里找不到 `pk_id` 时会新建模型（`common.js:492-496`），
所以「新增」和「更新」用同一种形状表达。

### 全局 cmn 键

在描述表之前被直接读取（`common.js:375-403`）：

| 键 | 去向 |
|---|---|
| `cmn.general_skin` | `xs.player_skin` |
| `cmn.server_version` | `xs.sinfo_game_ver` |
| `cmn.cfg_version` | `xs.sinfo_cfg_ver` |
| `cmn.opt_cfg_version` | `xs.sinfo_optcfg_ver` |
| `cmn.server_time` | `xs.sinfo_server_time`，同时记本地时间 |
| `cmn.offset_time` | `xs.sinfo_offset_time = offset_time * 1000` |

**`offset_time` 缺省值是 28800000 毫秒（8 小时）**，见 `common.js:397-403`。

### 21 个描述符

完整表格（cmn 键 → 模型 → 合并语义 → 证据）见 [data-model.md](data-model.md)。
它们由 `common.js:8-220` 的 `Cfg.dataDescs` 数组定义。

## 失败响应

`Views/Mgr.js:282-303`：

- 判定只看 `data.result` 的真值。
- 打印 `error_code` 与 `msg`。
- 先给业务 `errFunc`；返回值为 `true` 时不再弹框。
- `xs.release === true` 时只显示 `msg`，否则显示 `msg(error_code)`。

客户端会比较的具名错误码共 20 个，每个都有调用点证据：

| 错误码 | 证据位置 |
|---|---|
| `e_00005` | `Views/Table/Cell/ChaosTableViewCell.js:165` |
| `e_1000` | `Views/Dialog/IdCardBindingDialog.js:189` |
| `e_10011` | `Scene/Login/LoginScene_EasyGuestSdk.js:241` |
| `e_1005` | `Tools/Scene.js:236` |
| `e_1014` | `Views/Dialog/Dialog.js:10` |
| `e_20002` | `Views/Table/ChargeItemTableView.js:336` |
| `e_2012` | `Scene/Awake/AwakeBoxView.js:599` |
| `e_2020` | `Scene/Chaos/ChaosHomeView.js:297` |
| `e_2049` | `Scene/Main/MainMenuScene.js:548` |
| `e_3002` | `Scene/Party/PartyDialog.js:1705` |
| `e_6001` | `Views/Union/UnionMembershipLayer.js:116` |
| `e_6002` | `Views/Union/UnionMemberLayer.js:408` |
| `e_6003` | `Views/Union/UnionMembershipLayer.js:106` |
| `e_6011` | `Views/Union/UnionMemberLayer.js:412` |
| `e_6025` | `Scene/Bag/BagScene.js:883` |
| `e_8008` | `Tools/Net.js:993` |
| `e_8032` | `Views/Table/Cell/ChaosTableViewCell.js:159` |
| `e_8035` | `Views/ChatContentLayer.js:220` |
| `e_8046` | `Tools/Net.js:951` |
| `e_8047` | `Views/Dialog/SpecificDialog.js:877` |

这些错误码的**服务端语义与文案不可恢复**——客户端只按字符串比较走分支。
本表只给出可证明的位置，不推断含义。

## RandEvent 队列

`_modelMap.RandEvent` 是一个展示队列，元素形如 `{"type": <常量>, "model": <展示模型>}`，
类型来自升级、奇遇、成就三类（`common.js:316/333/345/348`）。
非空且未忽略时，客户端弹出 `RandEvent` 对话框，并把原业务回调挂到
`modelMap.lastFunc` 上，等对话框关闭后再执行（`Views/Mgr.js:257-270`）。

这意味着：**同一响应里既做业务又触发随机事件时，业务回调会被推迟**。
重建服务端若要驱动教程流程，应避免在关键步骤响应里附带这些根字段。
