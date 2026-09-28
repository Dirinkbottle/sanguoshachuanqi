# 07 · 红点推送（push）与 forcepush 约定

证据：**字节码**。模型是 `Models/PushInfo.js`，描述符注册在
`Profile/GameData/common.js:119-128`。

这是整个协议里最容易漏掉的一条横切约定：**红点状态不是单独拉的，而是搭在业务响应上回来的。**

## 7.1 两种获取方式

| 方式 | 动作 | 说明 | 证据 |
|---|---|---|---|
| 主动拉取 | `user.getPushData` | 单独请求全部红点状态 | `Cfg/Url.js:64`，`Tools/Net.js:678-686` |
| 搭车返回 | 42 个动作带 `forcepush=true` | 响应里额外携带 `cmn.push` | 见下表 |

`user.getPushData` 在静态遍历中有 10 个调用点，集中在
`Views/ActivitiesShow6Icon.js` 与 `Scene/SubMenu/PartyMenuScene.js`——
即活动入口刷新时。

## 7.2 `cmn.push` 的结构

描述符（`common.js:119-128`）：

| 项 | 值 |
|---|---|
| cmn 键 | `push` |
| 模型 | `xs.Models.PushInfo` |
| 合并语义 | Singleton（`update(info)`） |

`Models/PushInfo.js` 读取的字段（全部有逐字段证据，见 [data-model.md](data-model.md#xsmodelspushinfo)）：

```text
num                  climb                training
vipstore             party                activity_exchange
timing_power         gamble               ladderstore
honorstore           system_email         friend_email
gift_email           event_email          pay_email
wishing              wishing.num          union_donate
task                 depot_num            union_goods
worship              gem_discount         world_war
ladder_war           union_war_signup     worship_local
ladder_war_local     world_war_local
```

每个键对应主界面一个入口的红点/角标；消费点在 `Tools/Party.js`
（`getTigerInfo` / `getWishinInfo` / `getFeastInfo` / `getPartyExchangeInfo` / `getPartyInfo`）
与 `Tools/Scene.js`（`getEvolutionChestInfo` / `getBeautyData` / `getWishinInfo`）。

## 7.3 `forcepush` 出现在哪些动作

静态提取到的 42 个动作（其中 32 个由封装无条件注入，10 个由调用方显式传入）：

**封装无条件注入（`wrapper-literal`）**

```text
activity.gamble          activity.receivePower    combat.upgradeCombatLevel
dungeon.fight            dungeon.multiKill        email.accept
email.getList            equipment.multiUpgrade   equipment.refine
equipment.upgrade        general.culture          item.quickBuy
item.resolveItem         item.use                 ladder.fight
skill.upgradeskillLevel  tower.towerFight         training.multiTraining
training.training        warlord.warlord          wine.wine
wish.get
```

**调用方显式传入**

```text
activity.receive         item.buy                 item.buyPlusUse
ladderWar.exchange       ladderWar.worship        ladderWarLocal.exchange
ladderWarLocal.worship   product.checkOrder       task.getList
task.multiRecieve        task.recieve             tower.towerFightPass
union.allotDepot         union.donate             union.exchangeGoods
union.quite              union.userList           unionWar.signUp
user.login
```

## 7.4 相关但不同的开关：`activity_push`

`Tools/Net.js:379` 与 `Tools/Net.js:391` 在 `activity.receivePower` 与
`activity.gamble` 的封装里注入 **`activity_push = true`**，并同时注入 `forcepush`。
这是这两个动作独有的字段，其余动作不发送。
它的服务端语义不可恢复（见 [90-blackbox.md](90-blackbox.md)）。

## 7.5 对重建服务端的直接影响

1. 实现 `user.login` 时**必须**准备 `cmn.push`（或接受红点区为空）。
2. 实现上表任一动作时，如果响应里带 `cmn.push`，客户端会立即刷新对应入口的红点；
   不带则保持旧值。
3. `cmn.push` 是 Singleton：**发送即整体替换**，不是增量。
   这与 `general_info` 等 Map 类型不同，见 [02-envelope.md](02-envelope.md#三种合并语义)。


## 7.6 时序要求：`cmn.push` 必须在第一个成功响应里

这一节记录一个**客户端缺陷**，以及服务端为什么必须迁就它。

`Profile/GameData/Hint.js` 的 `pushData` 只在 `updateHintInfo()` 里被赋值（`Hint.js:47`），
`Hint.init` 从不初始化它。而 `updateHintInfo` 只有两个触发点：

1. `Constant_Notify_ModelChange_Push` 通知 —— 即 **`cmn.push` 被应用时**（观察者注册于 `Hint.js:15`）
2. `MainMenuView.onEnter`（`Views/MainMenuView.js:191`）—— 但这发生在主界面**构造内部**

问题在于 `MainMenuScene.init` 在 `MainMenuScene.js:228` 就调用了
`Hint.haveMenuHintInfo()` → `Hint.mailHintInfoCount()`，
后者在 `Hint.js:500-508` **没有** `if (this.pushData)` 守卫：

```js
mailHintInfoCount: function() {
    (count = 0);
    (count = this.pushData.getNewMailNum(...));   // pushData 为 undefined 时抛异常
```

所以如果没有任何响应携带过 `cmn.push`，第一次构造主界面就会抛异常，场景建不起来——表现为
**教程剧情结束后进入主城、还没到改名步骤时黑屏**。

### 四个不能省的子字段

发 `cmn.push: {}` 不够。`Models/PushInfo.js` 的 `init()` 把这些字段置为 `null`，
而下面四个 getter 读取时**没有守卫**：

| getter | 读取 | 证据 |
|---|---|---|
| `getClimbTimes()` | `this.m_climb.num` | `Models/PushInfo.js:240` |
| `getTrainNum()` | `this.m_training.num` | `Models/PushInfo.js:292` |
| `getGiftCanBuyNum()` | `this.m_vipstore.num` | `Models/PushInfo.js:296` |
| `getLadderExchangeNum_Salary()` | `this.ladderstore.num` | `Models/PushInfo.js:300` |

其余字段（`worship`、`ladderWar`、`world_war`、`task`、各 `*_email`、
`union_*`、`honorstore` 等）都读在 `if (this.x)` 之后，可以省略。

### 最小可用载荷

```json
{
  "climb":       {"num": 0},
  "training":    {"num": 0},
  "vipstore":    {"num": 0},
  "ladderstore": {"num": 0},
  "party":       []
}
```

`party` 是数组（`Models/PushInfo.js` 走 `this.m_party.loadJson(json.party)`），不是对象。

### 重建服务的实现

- `protocol::push()` 返回上面这个形状。
- `user.login` 的 `cmn` 里带上它——这是**第一个成功响应**，必须在这一步就把 `Hint.pushData` 建起来。
- `user.getPushData` 返回同样的 `cmn`，对应客户端的主动轮询。

回归测试：`game::tests::login_snapshot_carries_the_push_model_the_main_menu_needs` 与
`http::tests::full_tutorial_walkthrough_creates_the_state_each_step_consumes` 都会断言这些字段存在。

## 7.7 逐端点参考

[ref/user.md](ref/user.md)（`user.getPushData`）、[ref/activity.md](ref/activity.md)、
[ref/task.md](ref/task.md)、[ref/union.md](ref/union.md)。