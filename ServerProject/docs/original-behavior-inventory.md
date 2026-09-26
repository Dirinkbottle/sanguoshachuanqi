# 离线服原版行为索引

此表从 `offline-oracle/java/` 的协议动作字符串自动提取。JADX 反编译有控制流错误，
涉及分支和奖励时必须交叉检查同名类的 `offline-oracle/smali/`。
`已接入` 只表示 Rust 有对应入口，不代表响应或业务规则已经与原版等价。
`待重建` 表示 Rust 还没有这个入口；`已停用` 是渠道、支付等刻意移除的服务。
运行 `python tools/offline_oracle_inventory.py` 可重生本表。

共找到 183 个协议样式字符串，分属 54 个命名域。

## account

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `account.bindWithBf` | 已停用 | [d.java:276](../offline-oracle/java/handler/d.java#L276), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `account.bindWithEasysdk` | 已停用 | [d.java:276](../offline-oracle/java/handler/d.java#L276), [d.java:283](../offline-oracle/java/handler/d.java#L283), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `account.bindWithFacebook` | 已停用 | [d.java:276](../offline-oracle/java/handler/d.java#L276), [d.java:283](../offline-oracle/java/handler/d.java#L283), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `account.chgAccountInfo` | 已停用 | [d.java:247](../offline-oracle/java/handler/d.java#L247), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `account.index` | 已接入，待逐项差分 | [d.java:245](../offline-oracle/java/handler/d.java#L245), [y2.java:897](../offline-oracle/java/y2.java#L897), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |

## activity

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `activity.exchange` | 待重建 | [c.java:839](../offline-oracle/java/handler/c.java#L839), [c.java:1276](../offline-oracle/java/handler/c.java#L1276) |
| `activity.gamble` | 待重建 | [c.java:839](../offline-oracle/java/handler/c.java#L839), [c.java:1203](../offline-oracle/java/handler/c.java#L1203) |
| `activity.receive` | 待重建 | [c.java:839](../offline-oracle/java/handler/c.java#L839) |
| `activity.receivePower` | 待重建 | [c.java:839](../offline-oracle/java/handler/c.java#L839), [c.java:1143](../offline-oracle/java/handler/c.java#L1143) |

## alarm

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `alarm.index` | 外部/调试，不列入游戏重建 | [y2.java:10367](../offline-oracle/java/y2.java#L10367) |

## atlas

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `atlas.getList` | 待重建 | [d0.java:3572](../offline-oracle/java/handler/d0.java#L3572), [y2.java:10303](../offline-oracle/java/y2.java#L10303) |
| `atlas.getSurrenderList` | 待重建 | [d0.java:3574](../offline-oracle/java/handler/d0.java#L3574), [y2.java:10303](../offline-oracle/java/y2.java#L10303) |

## buddy

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `buddy.activatePosition` | 待重建 | [g.java:144](../offline-oracle/java/handler/g.java#L144), [g.java:159](../offline-oracle/java/handler/g.java#L159) |
| `buddy.setBuddy` | 待重建 | [g.java:144](../offline-oracle/java/handler/g.java#L144) |

## chaos

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `chaos.fight` | 待重建 | [y2.java:10809](../offline-oracle/java/y2.java#L10809) |
| `chaos.info` | 待重建 | [y2.java:10806](../offline-oracle/java/y2.java#L10806) |
| `chaos.skillPiece` | 待重建 | [y2.java:10812](../offline-oracle/java/y2.java#L10812) |

## chapter

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `chapter.getChapterInfo` | 待重建 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3322](../offline-oracle/java/handler/w.java#L3322) |

## chat

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `chat.getMessage` | 待重建 | [y2.java:9922](../offline-oracle/java/y2.java#L9922), [y2.java:10821](../offline-oracle/java/y2.java#L10821) |
| `chat.send` | 待重建 | [y2.java:10853](../offline-oracle/java/y2.java#L10853) |

## climbLadder

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `climbLadder.fight` | 待重建 | [y2.java:10800](../offline-oracle/java/y2.java#L10800) |
| `climbLadder.info` | 待重建 | [y2.java:10797](../offline-oracle/java/y2.java#L10797) |
| `climbLadder.pass` | 待重建 | [y2.java:10803](../offline-oracle/java/y2.java#L10803) |
| `climbLadder.startInfo` | 待重建 | [y2.java:10797](../offline-oracle/java/y2.java#L10797) |

## combat

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `combat.getUserCombatList` | 待重建 | [d1.java:534](../offline-oracle/java/handler/d1.java#L534), [d1.java:544](../offline-oracle/java/handler/d1.java#L544), [y2.java:10973](../offline-oracle/java/y2.java#L10973) |
| `combat.upgradeCombatLevel` | 待重建 | [d1.java:534](../offline-oracle/java/handler/d1.java#L534), [y2.java:10973](../offline-oracle/java/y2.java#L10973) |

## debug

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `debug.dump` | 外部/调试，不列入游戏重建 | [y2.java:10329](../offline-oracle/java/y2.java#L10329) |

## decisiveBattle

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `decisiveBattle.info` | 待重建 | [y2.java:10815](../offline-oracle/java/y2.java#L10815) |
| `decisiveBattle.mainInfo` | 待重建 | [y2.java:10815](../offline-oracle/java/y2.java#L10815) |
| `decisiveBattle.refreshTeam` | 待重建 | [y2.java:10818](../offline-oracle/java/y2.java#L10818) |

## dungeon

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `dungeon.fight` | 已接入，待逐项差分 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3512](../offline-oracle/java/handler/w.java#L3512) |
| `dungeon.fightBefore` | 待重建 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3344](../offline-oracle/java/handler/w.java#L3344) |
| `dungeon.multiKill` | 待重建 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3513](../offline-oracle/java/handler/w.java#L3513) |
| `dungeon.multiKillSpecial` | 待重建 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3517](../offline-oracle/java/handler/w.java#L3517) |
| `dungeon.multiKillSpecialInfo` | 待重建 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3516](../offline-oracle/java/handler/w.java#L3516) |
| `dungeon.openBox` | 待重建 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3520](../offline-oracle/java/handler/w.java#L3520) |

## email

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `email.accept` | 待重建 | [y2.java:10903](../offline-oracle/java/y2.java#L10903) |
| `email.getList` | 待重建 | [y2.java:9928](../offline-oracle/java/y2.java#L9928), [y2.java:10856](../offline-oracle/java/y2.java#L10856) |
| `email.send` | 待重建 | [y2.java:10906](../offline-oracle/java/y2.java#L10906) |

## equipment

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `equipment.equipmentCompose` | 待重建 | [y2.java:5379](../offline-oracle/java/y2.java#L5379) |
| `equipment.equipmentPieceSell` | 待重建 | [y2.java:5358](../offline-oracle/java/y2.java#L5358) |
| `equipment.melt` | 待重建 | [y2.java:5088](../offline-oracle/java/y2.java#L5088), [y2.java:5099](../offline-oracle/java/y2.java#L5099) |
| `equipment.multiMelt` | 待重建 | [y2.java:5088](../offline-oracle/java/y2.java#L5088), [y2.java:5097](../offline-oracle/java/y2.java#L5097) |
| `equipment.multiUpgrade` | 待重建 | [y2.java:3779](../offline-oracle/java/y2.java#L3779), [y2.java:5981](../offline-oracle/java/y2.java#L5981), [y2.java:10734](../offline-oracle/java/y2.java#L10734) |
| `equipment.refine` | 待重建 | [y2.java:10737](../offline-oracle/java/y2.java#L10737) |
| `equipment.sell` | 待重建 | [y2.java:5069](../offline-oracle/java/y2.java#L5069), [y2.java:5088](../offline-oracle/java/y2.java#L5088) |
| `equipment.upgrade` | 待重建 | [y2.java:3782](../offline-oracle/java/y2.java#L3782), [y2.java:10734](../offline-oracle/java/y2.java#L10734) |

## evolution

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `evolution.active` | 待重建 | [z.java:221](../offline-oracle/java/handler/z.java#L221) |
| `evolution.changeFate` | 待重建 | [z.java:221](../offline-oracle/java/handler/z.java#L221), [z.java:511](../offline-oracle/java/handler/z.java#L511) |
| `evolution.open` | 待重建 | [z.java:221](../offline-oracle/java/handler/z.java#L221), [z.java:495](../offline-oracle/java/handler/z.java#L495) |

## evolutionChest

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `evolutionChest.getList` | 待重建 | [d0.java:4143](../offline-oracle/java/handler/d0.java#L4143) |
| `evolutionChest.open` | 待重建 | [d0.java:4171](../offline-oracle/java/handler/d0.java#L4171) |
| `evolutionChest.openTen` | 待重建 | [d0.java:4174](../offline-oracle/java/handler/d0.java#L4174) |
| `evolutionChest.refresh` | 待重建 | [d0.java:4178](../offline-oracle/java/handler/d0.java#L4178) |
| `evolutionChest.synthetise` | 待重建 | [d0.java:4225](../offline-oracle/java/handler/d0.java#L4225) |

## festival

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `festival.getGift` | 待重建 | [d1.java:2562](../offline-oracle/java/handler/d1.java#L2562) |
| `festival.getRainDewList` | 待重建 | [d1.java:2562](../offline-oracle/java/handler/d1.java#L2562) |
| `festival.getScoreList` | 待重建 | [d1.java:2562](../offline-oracle/java/handler/d1.java#L2562) |
| `festival.goFight` | 待重建 | [d1.java:2562](../offline-oracle/java/handler/d1.java#L2562) |
| `festival.init` | 待重建 | [d1.java:2562](../offline-oracle/java/handler/d1.java#L2562) |
| `festival.initRainDew` | 待重建 | [d1.java:2562](../offline-oracle/java/handler/d1.java#L2562) |
| `festival.scoreBuy` | 待重建 | [d1.java:2562](../offline-oracle/java/handler/d1.java#L2562) |

## gem

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `gem.bore` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258), [f0.java:445](../offline-oracle/java/handler/f0.java#L445) |
| `gem.chgProperty` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258), [f0.java:282](../offline-oracle/java/handler/f0.java#L282), [f0.java:283](../offline-oracle/java/handler/f0.java#L283) |
| `gem.gemCompose` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258) |
| `gem.gemInherit` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258), [f0.java:405](../offline-oracle/java/handler/f0.java#L405) |
| `gem.gemInset` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258), [f0.java:320](../offline-oracle/java/handler/f0.java#L320) |
| `gem.gemRemove` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258), [f0.java:376](../offline-oracle/java/handler/f0.java#L376) |
| `gem.lock` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258), [f0.java:271](../offline-oracle/java/handler/f0.java#L271) |
| `gem.unlock` | 待重建 | [f0.java:258](../offline-oracle/java/handler/f0.java#L258), [f0.java:272](../offline-oracle/java/handler/f0.java#L272) |

## general

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `general.autoCultivate` | 待重建 | [y2.java:11092](../offline-oracle/java/y2.java#L11092) |
| `general.culture` | 待重建 | [y2.java:11105](../offline-oracle/java/y2.java#L11105) |
| `general.getOverview` | 待重建 | [y2.java:10988](../offline-oracle/java/y2.java#L10988) |
| `general.insight` | 待重建 | [y2.java:11013](../offline-oracle/java/y2.java#L11013), [y2.java:11127](../offline-oracle/java/y2.java#L11127) |
| `general.reincarnate` | 待重建 | [y2.java:11020](../offline-oracle/java/y2.java#L11020), [y2.java:11415](../offline-oracle/java/y2.java#L11415) |
| `general.removeObject` | 待重建 | [y2.java:11070](../offline-oracle/java/y2.java#L11070) |
| `general.sacrifice` | 待重建 | [y2.java:11020](../offline-oracle/java/y2.java#L11020), [y2.java:11186](../offline-oracle/java/y2.java#L11186) |
| `general.setEquipment` | 已接入，待逐项差分 | [y2.java:11031](../offline-oracle/java/y2.java#L11031) |
| `general.setLieutenant` | 待重建 | [y2.java:11058](../offline-oracle/java/y2.java#L11058) |
| `general.setSkill` | 待重建 | [y2.java:11080](../offline-oracle/java/y2.java#L11080) |
| `general.takeCultureItem` | 待重建 | [y2.java:11115](../offline-oracle/java/y2.java#L11115) |

## hulao

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `hulao.debugReset` | 待重建 | [l0.java:843](../offline-oracle/java/handler/l0.java#L843), [l0.java:1396](../offline-oracle/java/handler/l0.java#L1396) |
| `hulao.fight` | 待重建 | [l0.java:513](../offline-oracle/java/handler/l0.java#L513), [l0.java:1070](../offline-oracle/java/handler/l0.java#L1070) |
| `hulao.lineup` | 待重建 | [l0.java:388](../offline-oracle/java/handler/l0.java#L388), [l0.java:942](../offline-oracle/java/handler/l0.java#L942) |
| `hulao.recieve` | 待重建 | [l0.java:776](../offline-oracle/java/handler/l0.java#L776), [l0.java:1329](../offline-oracle/java/handler/l0.java#L1329) |

## idcard

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `idcard.getCode` | 已停用 | [d1.java:1074](../offline-oracle/java/handler/d1.java#L1074), [d1.java:2630](../offline-oracle/java/handler/d1.java#L2630) |
| `idcard.save` | 已停用 | [d1.java:1064](../offline-oracle/java/handler/d1.java#L1064), [d1.java:2630](../offline-oracle/java/handler/d1.java#L2630) |
| `idcard.saveMobile` | 已停用 | [d1.java:2630](../offline-oracle/java/handler/d1.java#L2630) |

## ifdian

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `ifdian.net` | 待重建 | [m0.java:112](../offline-oracle/java/cloud/m0.java#L112), [p5.java:736](../offline-oracle/java/p5.java#L736) |

## item

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `item.buy` | 待重建 | [y2.java:10403](../offline-oracle/java/y2.java#L10403) |
| `item.buyPlusUse` | 待重建 | [y2.java:10689](../offline-oracle/java/y2.java#L10689) |
| `item.deleteItem` | 待重建 | [x0.java:2398](../offline-oracle/java/handler/x0.java#L2398), [x0.java:2420](../offline-oracle/java/handler/x0.java#L2420), [y2.java:10376](../offline-oracle/java/y2.java#L10376) |
| `item.getList` | 待重建 | [x0.java:2395](../offline-oracle/java/handler/x0.java#L2395), [y2.java:10376](../offline-oracle/java/y2.java#L10376) |
| `item.getQuickList` | 待重建 | [x0.java:2392](../offline-oracle/java/handler/x0.java#L2392), [x0.java:2742](../offline-oracle/java/handler/x0.java#L2742), [y2.java:10376](../offline-oracle/java/y2.java#L10376) |
| `item.quickBuy` | 待重建 | [x0.java:2399](../offline-oracle/java/handler/x0.java#L2399), [y2.java:10376](../offline-oracle/java/y2.java#L10376) |
| `item.resolveItem` | 待重建 | [x0.java:2398](../offline-oracle/java/handler/x0.java#L2398), [y2.java:10376](../offline-oracle/java/y2.java#L10376) |
| `item.use` | 已接入，待逐项差分 | [y2.java:10406](../offline-oracle/java/y2.java#L10406) |

## ladder

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `ladder.fight` | 待重建 | [y2.java:10788](../offline-oracle/java/y2.java#L10788) |
| `ladder.getData` | 待重建 | [y2.java:10785](../offline-oracle/java/y2.java#L10785) |
| `ladder.init` | 待重建 | [y2.java:10785](../offline-oracle/java/y2.java#L10785) |
| `ladder.repeatedlyFight` | 待重建 | [y2.java:10791](../offline-oracle/java/y2.java#L10791) |
| `ladder.tenFight` | 待重建 | [y2.java:10791](../offline-oracle/java/y2.java#L10791) |

## magic

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `magic.forge` | 待重建 | [t0.java:604](../offline-oracle/java/handler/t0.java#L604) |
| `magic.getOverview` | 待重建 | [t0.java:604](../offline-oracle/java/handler/t0.java#L604), [t0.java:915](../offline-oracle/java/handler/t0.java#L915) |
| `magic.open` | 待重建 | [t0.java:604](../offline-oracle/java/handler/t0.java#L604), [t0.java:953](../offline-oracle/java/handler/t0.java#L953) |

## map

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `map.getUserMap` | 已接入，待逐项差分 | [w.java:1292](../offline-oracle/java/handler/w.java#L1292), [w.java:3287](../offline-oracle/java/handler/w.java#L3287) |

## meeting

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `meeting.meeting` | 待重建 | [d1.java:1435](../offline-oracle/java/handler/d1.java#L1435), [y2.java:10976](../offline-oracle/java/y2.java#L10976) |

## menu

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `menu.notice` | 已接入，待逐项差分 | [d0.java:3575](../offline-oracle/java/handler/d0.java#L3575), [y2.java:10303](../offline-oracle/java/y2.java#L10303) |
| `menu.userCdkey` | 待重建 | [y2.java:10918](../offline-oracle/java/y2.java#L10918) |

## meridian

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `meridian.light` | 待重建 | [u0.java:100](../offline-oracle/java/handler/u0.java#L100), [u0.java:583](../offline-oracle/java/handler/u0.java#L583) |
| `meridian.multiLight` | 待重建 | [u0.java:100](../offline-oracle/java/handler/u0.java#L100), [u0.java:583](../offline-oracle/java/handler/u0.java#L583), [u0.java:584](../offline-oracle/java/handler/u0.java#L584) |

## notify

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `notify.activate` | 已停用 | [d0.java:3563](../offline-oracle/java/handler/d0.java#L3563), [y2.java:897](../offline-oracle/java/y2.java#L897), [y2.java:10303](../offline-oracle/java/y2.java#L10303) |

## pay

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `pay.checkOrder` | 已停用 | [x0.java:3215](../offline-oracle/java/handler/x0.java#L3215), [x0.java:3593](../offline-oracle/java/handler/x0.java#L3593) |
| `pay.createTrade` | 已停用 | [x0.java:3214](../offline-oracle/java/handler/x0.java#L3214) |
| `pay.notify` | 已停用 | [x0.java:3215](../offline-oracle/java/handler/x0.java#L3215) |

## payIos

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `payIos.iosCharge` | 已停用 | [x0.java:2408](../offline-oracle/java/handler/x0.java#L2408), [x0.java:3215](../offline-oracle/java/handler/x0.java#L3215), [x0.java:3597](../offline-oracle/java/handler/x0.java#L3597) |

## plugin

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `plugin.status` | 外部/调试，不列入游戏重建 | [y2.java:10370](../offline-oracle/java/y2.java#L10370) |

## product

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `product.checkOrder` | 已停用 | [x0.java:3215](../offline-oracle/java/handler/x0.java#L3215), [x0.java:3593](../offline-oracle/java/handler/x0.java#L3593) |
| `product.createOrder` | 已停用 | [x0.java:3214](../offline-oracle/java/handler/x0.java#L3214) |
| `product.getList` | 已停用 | [y2.java:9928](../offline-oracle/java/y2.java#L9928) |
| `product.notify` | 已停用 | [x0.java:3215](../offline-oracle/java/handler/x0.java#L3215) |

## pulse

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `pulse.getList` | 待重建 | [u0.java:100](../offline-oracle/java/handler/u0.java#L100) |
| `pulse.practicePulse` | 待重建 | [u0.java:100](../offline-oracle/java/handler/u0.java#L100), [u0.java:552](../offline-oracle/java/handler/u0.java#L552) |
| `pulse.pulseCollect` | 待重建 | [u0.java:100](../offline-oracle/java/handler/u0.java#L100), [u0.java:559](../offline-oracle/java/handler/u0.java#L559) |

## rank

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `rank.getRankList` | 待重建 | [y2.java:10912](../offline-oracle/java/y2.java#L10912) |
| `rank.like` | 待重建 | [y2.java:10915](../offline-oracle/java/y2.java#L10915) |

## relationship

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `relationship.debugRescueFight` | 待重建 | [v0.java:436](../offline-oracle/java/handler/v0.java#L436) |
| `relationship.delUserRelationship` | 待重建 | [v0.java:487](../offline-oracle/java/handler/v0.java#L487), [v0.java:655](../offline-oracle/java/handler/v0.java#L655) |
| `relationship.fight` | 待重建 | [v0.java:461](../offline-oracle/java/handler/v0.java#L461), [v0.java:597](../offline-oracle/java/handler/v0.java#L597) |
| `relationship.replyRequest` | 待重建 | [v0.java:473](../offline-oracle/java/handler/v0.java#L473), [v0.java:615](../offline-oracle/java/handler/v0.java#L615), [v0.java:651](../offline-oracle/java/handler/v0.java#L651) |
| `relationship.requestFriend` | 待重建 | [v0.java:464](../offline-oracle/java/handler/v0.java#L464), [v0.java:607](../offline-oracle/java/handler/v0.java#L607) |
| `relationship.searchUser` | 待重建 | [v0.java:241](../offline-oracle/java/handler/v0.java#L241), [v0.java:458](../offline-oracle/java/handler/v0.java#L458), [v0.java:584](../offline-oracle/java/handler/v0.java#L584) |
| `relationship.userEnemysInfo` | 待重建 | [v0.java:223](../offline-oracle/java/handler/v0.java#L223), [v0.java:241](../offline-oracle/java/handler/v0.java#L241), [v0.java:455](../offline-oracle/java/handler/v0.java#L455) |
| `relationship.userFriendsInfo` | 待重建 | [v0.java:220](../offline-oracle/java/handler/v0.java#L220), [v0.java:241](../offline-oracle/java/handler/v0.java#L241), [v0.java:450](../offline-oracle/java/handler/v0.java#L450) |
| `relationship.userMakeFriendsInfo` | 待重建 | [v0.java:218](../offline-oracle/java/handler/v0.java#L218), [v0.java:241](../offline-oracle/java/handler/v0.java#L241), [v0.java:445](../offline-oracle/java/handler/v0.java#L445) |

## server

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `server.getList` | 待重建 | [d0.java:3521](../offline-oracle/java/handler/d0.java#L3521), [y2.java:897](../offline-oracle/java/y2.java#L897), [y2.java:10303](../offline-oracle/java/y2.java#L10303) |

## skill

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `skill.melt` | 待重建 | [y2.java:10770](../offline-oracle/java/y2.java#L10770) |
| `skill.multiMelt` | 待重建 | [y2.java:10770](../offline-oracle/java/y2.java#L10770), [y2.java:10771](../offline-oracle/java/y2.java#L10771) |
| `skill.upgradeskillLevel` | 待重建 | [y2.java:10767](../offline-oracle/java/y2.java#L10767) |

## skillRefine

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `skillRefine.skillRefine` | 待重建 | [y2.java:10782](../offline-oracle/java/y2.java#L10782) |

## spiritStoneGoods

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `spiritStoneGoods.buy` | 待重建 | [x0.java:2509](../offline-oracle/java/handler/x0.java#L2509) |
| `spiritStoneGoods.getList` | 待重建 | [x0.java:2508](../offline-oracle/java/handler/x0.java#L2508) |

## task

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `task.getList` | 待重建 | [d1.java:1681](../offline-oracle/java/handler/d1.java#L1681), [d1.java:2661](../offline-oracle/java/handler/d1.java#L2661) |
| `task.multiRecieve` | 待重建 | [d1.java:1689](../offline-oracle/java/handler/d1.java#L1689), [d1.java:2661](../offline-oracle/java/handler/d1.java#L2661) |
| `task.recieve` | 待重建 | [d1.java:2661](../offline-oracle/java/handler/d1.java#L2661) |

## team

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `team.addTeamInfo` | 待重建 | [z0.java:255](../offline-oracle/java/handler/z0.java#L255), [z0.java:439](../offline-oracle/java/handler/z0.java#L439) |
| `team.getMostTeamInfo` | 待重建 | [z0.java:255](../offline-oracle/java/handler/z0.java#L255), [y2.java:10755](../offline-oracle/java/y2.java#L10755) |
| `team.loadTeamInfo` | 待重建 | [z0.java:255](../offline-oracle/java/handler/z0.java#L255), [z0.java:462](../offline-oracle/java/handler/z0.java#L462) |
| `team.saveTeamInfo` | 待重建 | [z0.java:255](../offline-oracle/java/handler/z0.java#L255), [z0.java:442](../offline-oracle/java/handler/z0.java#L442) |

## tower

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `tower.towerBeStronger` | 待重建 | [b1.java:2654](../offline-oracle/java/handler/b1.java#L2654) |
| `tower.towerExchange` | 待重建 | [b1.java:1790](../offline-oracle/java/handler/b1.java#L1790) |
| `tower.towerExchangeList` | 待重建 | [b1.java:1787](../offline-oracle/java/handler/b1.java#L1787) |
| `tower.towerFight` | 待重建 | [b1.java:1883](../offline-oracle/java/handler/b1.java#L1883), [b1.java:1888](../offline-oracle/java/handler/b1.java#L1888), [b1.java:1892](../offline-oracle/java/handler/b1.java#L1892) |
| `tower.towerFightBefore` | 待重建 | [b1.java:1860](../offline-oracle/java/handler/b1.java#L1860) |
| `tower.towerFightPass` | 待重建 | [b1.java:1784](../offline-oracle/java/handler/b1.java#L1784) |

## training

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `training.multiTraining` | 待重建 | [d1.java:2684](../offline-oracle/java/handler/d1.java#L2684) |
| `training.training` | 待重建 | [d1.java:2684](../offline-oracle/java/handler/d1.java#L2684) |
| `training.trainingInfo` | 待重建 | [d1.java:2684](../offline-oracle/java/handler/d1.java#L2684) |

## update

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `update.apk` | 待重建 | [c.java:267](../offline-oracle/java/c.java#L267) |

## user

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `user.chgGeneralskin` | 待重建 | [d.java:387](../offline-oracle/java/handler/d.java#L387), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `user.chgNickname` | 已接入，待逐项差分 | [d.java:370](../offline-oracle/java/handler/d.java#L370), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `user.chgSign` | 待重建 | [d.java:374](../offline-oracle/java/handler/d.java#L374), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `user.chooseTeam` | 已接入，待逐项差分 | [d.java:369](../offline-oracle/java/handler/d.java#L369), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `user.dir` | 待重建 | [c1.java:76](../offline-oracle/java/handler/c1.java#L76), [h1.java:900](../offline-oracle/java/handler/h1.java#L900), [w.java:404](../offline-oracle/java/handler/w.java#L404) |
| `user.getPushData` | 已接入，待逐项差分 | [d.java:311](../offline-oracle/java/handler/d.java#L311), [y2.java:9928](../offline-oracle/java/y2.java#L9928), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `user.leaveMsg` | 待重建 | [d.java:388](../offline-oracle/java/handler/d.java#L388), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `user.login` | 已接入，待逐项差分 | [d.java:308](../offline-oracle/java/handler/d.java#L308), [y2.java:630](../offline-oracle/java/y2.java#L630), [y2.java:10280](../offline-oracle/java/y2.java#L10280) |
| `user.save` | 待重建 | [d.java:391](../offline-oracle/java/handler/d.java#L391), [y2.java:10323](../offline-oracle/java/y2.java#L10323) |
| `user.testLogin` | 待重建 | [d.java:308](../offline-oracle/java/handler/d.java#L308), [y2.java:630](../offline-oracle/java/y2.java#L630), [y2.java:10280](../offline-oracle/java/y2.java#L10280) |

## v1

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `v1.blacklist` | 外部/调试，不列入游戏重建 | [y2.java:10373](../offline-oracle/java/y2.java#L10373) |

## version

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `version.check` | 已接入，待逐项差分 | [y2.java:897](../offline-oracle/java/y2.java#L897), [y2.java:10320](../offline-oracle/java/y2.java#L10320) |

## versionPlus

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `versionPlus.check` | 待重建 | [y2.java:897](../offline-oracle/java/y2.java#L897), [y2.java:10320](../offline-oracle/java/y2.java#L10320) |

## warlord

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `warlord.warlord` | 待重建 | [h1.java:1386](../offline-oracle/java/handler/h1.java#L1386) |
| `warlord.warlordBatchExchangeSkill` | 待重建 | [h1.java:1527](../offline-oracle/java/handler/h1.java#L1527) |
| `warlord.warlordExchangeSkill` | 待重建 | [h1.java:1448](../offline-oracle/java/handler/h1.java#L1448) |
| `warlord.warlordInfo` | 待重建 | [h1.java:1247](../offline-oracle/java/handler/h1.java#L1247) |
| `warlord.warlordPieceInfo` | 待重建 | [h1.java:1036](../offline-oracle/java/handler/h1.java#L1036) |
| `warlord.warlordSkillList` | 待重建 | [h1.java:1392](../offline-oracle/java/handler/h1.java#L1392) |

## wine

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `wine.wine` | 已接入，待逐项差分 | [x0.java:2151](../offline-oracle/java/handler/x0.java#L2151) |
| `wine.wineGeneralInfo` | 待重建 | [x0.java:2154](../offline-oracle/java/handler/x0.java#L2154) |
| `wine.wineInfo` | 待重建 | [x0.java:2150](../offline-oracle/java/handler/x0.java#L2150) |

## wish

| 动作 | 状态 | 原版 Java 证据 |
| --- | --- | --- |
| `wish.get` | 待重建 | [x0.java:2252](../offline-oracle/java/handler/x0.java#L2252), [x0.java:2253](../offline-oracle/java/handler/x0.java#L2253) |
| `wish.info` | 待重建 | [x0.java:2252](../offline-oracle/java/handler/x0.java#L2252) |
