# 05 · 新手引导与服务端同步点

证据：**字节码**。核心是 `Guide/GuideMgr.js` 与 `Cfg/Guide.js`，
请求侧的挂钩在 `Tools/Net.js:320-333`。

逐步的教程流程（每一步做什么、播哪段剧情）见 [../GAME_PROTOCOL.md](../GAME_PROTOCOL.md#新手主线状态机)。
本页只讲**协议相关**的部分：引导状态存在哪里、什么时候上报、服务端如何影响它。

## 5.1 两层状态

| 层 | 存储 | 读取 | 证据 |
|---|---|---|---|
| 本地细粒度步骤 | `xs.Utils.LocalStore`，键由 `_getPlayerPrimaryLocationKey()` 生成 | `GuideMgr.getGuideStep()` | `GuideMgr.js:65-70`, `GuideMgr.js:120-122` |
| 服务端里程碑 | `cmn.user_info.freshman_step` | `Player.getPlayerFreshStep()` | `Scene/Login/headers.js:47` |

本地键由 `Cfg.Guide.NewGuideCfg.locationKey` 与玩家身份拼接（`GuideMgr.js:65-70`），
是**每玩家一份**的本地进度，不随登录响应下发。

## 5.2 只有 8 个里程碑会上报

`Tools/Net.js:320-333`：

```js
if (!xs.Guide.GuideMgr.getIsOver()) {
    stepArray = ["10000","20000","30000","40000","50000","60000","70000","80000"];
    for (i = 0; i < stepArray.length; i++) {
        if (stepArray[i] === xs.Guide.GuideMgr.getGuideStep()) {
            param.step = xs.Guide.GuideMgr.getGuideStep();
        }
    }
}
```

三个必须理解的后果：

1. `step` 只在**当前步骤恰好等于这 8 个值**时附加；
2. 它附加在**该次业务请求**上，不是单独的心跳；
3. 引导结束后（`getIsOver()`）**永不上报**。

因此在协议层面，服务端能看到的教程进度只有 8 个取样点，
其余步骤完全是客户端本地行为。

## 5.3 服务端如何影响引导

`GuideMgr.setServerStep(serverStep)`（`GuideMgr.js:153-158`）：

```text
setIsOver(false)
localStep    = 本地当前步骤
lastDotStep  = _getLastDotStepOfStep(localStep)     // 本地步骤之前最近的里程碑
nextDotStep  = _getNextDotStepOfStep(serverStep)    // 服务端里程碑之后最近的里程碑
两者任一为 null -> setIsOver(true)                   // 引导直接结束
否则           -> setGuideStep(max(lastDotStep, nextDotStep))
```

也就是说：

- 服务端里程碑**大于**本地进度时，客户端会把本地步骤**向前跳**到服务端里程碑之后；
- 服务端返回空/无法解析的 `freshman_step` → 教程被判定为已结束，直接进主界面。

这解释了为什么 `cmn.user_info.freshman_step` 必须存在且取值合法——
它是教程流程的**唯一**服务端控制点。

## 5.4 业务动作推进的步骤

这些步骤的推进由**成功回调**触发，不是本地计时：

| 步骤 | 推进方式 | 证据 |
|---|---|---|
| 50000 | `team.chgBattleTeam` 成功回调里 `endStepBySequence(["50000"])` | `Scene/TeamBuild/TeamBuildScene.js:1190` |
| 70000 | `item.use` 成功后在奖励弹窗挂载回调里推进 | `Tools/Net.js:126-129` |
| 80000 | `general.setEquipment` 成功回调 | [../GAME_PROTOCOL.md](../GAME_PROTOCOL.md) |

其余步骤由本地剧情、遮罩和按钮点击推进，与服务端无关，见
[../GAME_PROTOCOL.md](../GAME_PROTOCOL.md#新手主线状态机)。

## 5.5 教程期间的响应抑制

`Profile/GameData/common.js:308-311`：引导未结束时 `updateOtherData` 直接返回，
不产生任何 RandEvent。这避免升级/奇遇弹窗打断教程。

反过来，若重建服务端在教程期间的响应里附带 `user_level_up_info` 等字段，
客户端**不会**弹窗，也不会中断流程——但引导结束后同样的字段会弹。

## 5.6 恢复疑点

`Cfg/Guide.js` 中 `80101_before.nextStep` 指向 `70101`，而 `80000.nextStep` 直接指向 `80101`。
这是字节码近似恢复的产物，**不作为协议结论**，原样记录在
[../GAME_PROTOCOL.md](../GAME_PROTOCOL.md) 中。

## 5.7 逐端点参考

引导期间的业务动作：[ref/team.md](ref/team.md)、[ref/item.md](ref/item.md)、[ref/general.md](ref/general.md)、[ref/dungeon.md](ref/dungeon.md)、[ref/wine.md](ref/wine.md)。
