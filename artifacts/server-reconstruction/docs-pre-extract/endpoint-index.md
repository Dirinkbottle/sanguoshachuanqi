# 全量端点索引

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


共 **244** 个 do= 动作：`Cfg/Url.js` 里登记 243 个 URL 键，另有个别动作在代码里内联拼接完整 URL、不经过该表。

| 动作 | 路径 | 封装 | 调用点 | 证据 |
|---|---|---|---|---|
| [`account.bindWithBf`](#accountbindWithBf) | `/index.php?do=account.bindWithBf` | `requestBindingBFAccount` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:135` |
| [`account.bindWithEasysdk`](#accountbindWithEasysdk) | `/index.php?do=account.bindWithEasysdk` | `requestBindingEasyAccount` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:137` |
| [`account.bindWithFacebook`](#accountbindWithFacebook) | `/index.php?do=account.bindWithFacebook` | `requestBindingFBAccount` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:136` |
| [`account.chgAccountInfo`](#accountchgAccountInfo) | `/index.php?do=account.chgAccountInfo` | `requestRecordPhoneNum` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:138` |
| [`account.index`](#accountindex) | `/index.php?do=account.index` | `requestGetServerList` | 12 | `ReconstructedJS/src_jsc/Cfg/Url.js:120` |
| [`activity.exchange`](#activityexchange) | `/index.php?do=activity.exchange` | `requestPartyDouble` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:25` |
| [`activity.gamble`](#activitygamble) | `/index.php?do=activity.gamble` | `requestPartySlotMachines` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:24` |
| [`activity.receive`](#activityreceive) | `/index.php?do=activity.receive` | `requestPartyReceive` | 5 | `ReconstructedJS/src_jsc/Cfg/Url.js:22` |
| [`activity.receivePower`](#activityreceivePower) | `/index.php?do=activity.receivePower` | `requestPartyReceivePower` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:23` |
| [`anysdkAccount.index`](#anysdkAccountindex) | `(内联拼接，不含固定前缀)` | `（内联拼接）` | 0 | `AnySdk/AnySdkHelp_js.js:23` |
| [`atlas.getList`](#atlasgetList) | `/index.php?do=atlas.getList` | `requestAtlasList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:108` |
| [`atlas.getSurrenderList`](#atlasgetSurrenderList) | `/index.php?do=atlas.getSurrenderList` | `requestGetSurrenderList` | 5 | `ReconstructedJS/src_jsc/Cfg/Url.js:109` |
| [`battle.mnq`](#battlemnq) | `(内联拼接，不含固定前缀)` | `（内联拼接）` | 0 | `Cfg/Url.js:19` |
| [`beauty.addBeautyExperience`](#beautyaddBeautyExperience) | `/?do=beauty.addBeautyExperience` | `requestBeautyAddExp` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:258` |
| [`beauty.beautyCruise`](#beautybeautyCruise) | `/?do=beauty.beautyCruise` | `requestBeautySatrt` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:256` |
| [`beauty.beautyCruiseOver`](#beautybeautyCruiseOver) | `/?do=beauty.beautyCruiseOver` | `requestBeautyEnd` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:257` |
| [`beauty.beautyExchange`](#beautybeautyExchange) | `/?do=beauty.beautyExchange` | `requestBeautyExchange` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:260` |
| [`beauty.getBeautyExchangeList`](#beautygetBeautyExchangeList) | `/?do=beauty.getBeautyExchangeList` | `requestBeautyExchangeList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:259` |
| [`beauty.init`](#beautyinit) | `/?do=beauty.init` | `requestBeautyInit` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:255` |
| [`buddy.activatePosition`](#buddyactivatePosition) | `?do=buddy.activatePosition` | `requestActivateBuddyPosition` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:152` |
| [`buddy.setBuddy`](#buddysetBuddy) | `?do=buddy.setBuddy` | `requestSetBuddy` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:153` |
| [`chat.getMessage`](#chatgetMessage) | `/index.php?do=chat.getMessage` | `（内联拼接）` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:133` |
| [`chat.send`](#chatsend) | `/index.php?do=chat.send` | `（内联拼接）` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:134` |
| [`combat.getUserCombatList`](#combatgetUserCombatList) | `/index.php?do=combat.getUserCombatList` | `requestFormulaInfo` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:63` |
| [`combat.upgradeCombatLevel`](#combatupgradeCombatLevel) | `/index.php?do=combat.upgradeCombatLevel` | `requestCombatUpgrade` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:66` |
| [`dungeon.fight`](#dungeonfight) | `/?do=dungeon.fight` | `requireFight` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:33` |
| [`dungeon.fightBefore`](#dungeonfightBefore) | `/?do=dungeon.fightBefore` | `requireFightBefore` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:32` |
| [`dungeon.multiKill`](#dungeonmultiKill) | `/?do=dungeon.multiKill` | `requireMultiKill` | 4 | `ReconstructedJS/src_jsc/Cfg/Url.js:37` |
| [`dungeon.multiKillSpecial`](#dungeonmultiKillSpecial) | `?do=dungeon.multiKillSpecial` | `requireMultiKillSpecial` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:40` |
| [`dungeon.multiKillSpecialInfo`](#dungeonmultiKillSpecialInfo) | `?do=dungeon.multiKillSpecialInfo` | `requireMultiKillSpecialInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:39` |
| [`dungeon.openBox`](#dungeonopenBox) | `?do=dungeon.openBox` | `requireOpenTreasureBox` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:38` |
| [`email.accept`](#emailaccept) | `/index.php?do=email.accept` | `requestMailAttach` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:107` |
| [`email.getList`](#emailgetList) | `/index.php?do=email.getList` | `requestMail` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:104` |
| [`email.send`](#emailsend) | `/index.php?do=email.send` | `requestSendMessage` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:113` |
| [`equipment.equipmentCompose`](#equipmentequipmentCompose) | `/index.php?do=equipment.equipmentCompose` | `requireEquipPieceComposite` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:45` |
| [`equipment.equipmentPieceSell`](#equipmentequipmentPieceSell) | `/index.php?do=equipment.equipmentPieceSell` | `requireEquipPieceSell` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:44` |
| [`equipment.melt`](#equipmentmelt) | `/index.php?do=equipment.melt` | `requireMelt` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:42` |
| [`equipment.multiMelt`](#equipmentmultiMelt) | `/index.php?do=equipment.multiMelt` | `requireMultMelt` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:43` |
| [`equipment.multiUpgrade`](#equipmentmultiUpgrade) | `/index.php?do=equipment.multiUpgrade` | `requestEquipmentMultiUpgrade` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:59` |
| [`equipment.refine`](#equipmentrefine) | `/index.php?do=equipment.refine` | `requestRefineEquip` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:132` |
| [`equipment.sell`](#equipmentsell) | `/index.php?do=equipment.sell` | `requireSell` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:41` |
| [`equipment.upgrade`](#equipmentupgrade) | `/index.php?do=equipment.upgrade` | `requestEquipmentReinforce` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:58` |
| [`evolution.active`](#evolutionactive) | `?do=evolution.active` | `requestEvolutionActive` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:253` |
| [`evolution.changeFate`](#evolutionchangeFate) | `/index.php?do=evolution.changeFate` | `requestEvolutionChangeYuanFen` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:83` |
| [`evolution.open`](#evolutionopen) | `/index.php?do=evolution.open` | `requestEvolutionOpen` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:82` |
| [`evolutionChest.getList`](#evolutionChestgetList) | `?do=evolutionChest.getList` | `requestEvolutionChestList` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:249` |
| [`evolutionChest.open`](#evolutionChestopen) | `?do=evolutionChest.open` | `requestEvolutionChestOpen` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:250` |
| [`evolutionChest.openTen`](#evolutionChestopenTen) | `?do=evolutionChest.openTen` | `requestEvolutionChestOpenTen` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:251` |
| [`evolutionChest.refresh`](#evolutionChestrefresh) | `?do=evolutionChest.refresh` | `requestEvolutionChestRefresh` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:252` |
| [`evolutionChest.synthetise`](#evolutionChestsynthetise) | `/index.php?do=evolutionChest.synthetise` | `requestSynthetise` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:56` |
| [`festival.getGift`](#festivalgetGift) | `/?do=festival.getGift` | `requestYuLuConvert` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:232` |
| [`festival.getRainDewList`](#festivalgetRainDewList) | `/?do=festival.getRainDewList` | `requestYuLuInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:230` |
| [`festival.getScoreList`](#festivalgetScoreList) | `/?do=festival.getScoreList` | `requestJiFenDuiHuanInfo` | 5 | `ReconstructedJS/src_jsc/Cfg/Url.js:229` |
| [`festival.goFight`](#festivalgoFight) | `/?do=festival.goFight` | `requireCopyFight` | 6 | `ReconstructedJS/src_jsc/Cfg/Url.js:34` |
| [`festival.init`](#festivalinit) | `/?do=festival.init` | `requireCopyData` | 5 | `ReconstructedJS/src_jsc/Cfg/Url.js:35` |
| [`festival.initRainDew`](#festivalinitRainDew) | `/?do=festival.initRainDew` | `requirePlantTreeData` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:36` |
| [`festival.scoreBuy`](#festivalscoreBuy) | `/?do=festival.scoreBuy` | `requestJiFenDuiHuanConvert` | 5 | `ReconstructedJS/src_jsc/Cfg/Url.js:231` |
| [`gem.bore`](#gembore) | `?do=gem.bore` | `requestGemsPunch` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:168` |
| [`gem.chgProperty`](#gemchgProperty) | `?do=gem.chgProperty` | `requestGemsSophistication` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:164` |
| [`gem.gemCompose`](#gemgemCompose) | `?do=gem.gemCompose` | `requestGemsCompose` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:191` |
| [`gem.gemInherit`](#gemgemInherit) | `?do=gem.gemInherit` | `requestGemsInherit` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:167` |
| [`gem.gemInset`](#gemgemInset) | `?do=gem.gemInset` | `requestGemsInset` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:165` |
| [`gem.gemRemove`](#gemgemRemove) | `?do=gem.gemRemove` | `requestGemsRemove` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:166` |
| [`gem.lock`](#gemlock) | `?do=gem.lock` | `requestGemsHoleLock` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:162` |
| [`gem.unlock`](#gemunlock) | `?do=gem.unlock` | `requestGemsHoleUnLock` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:163` |
| [`general.autoCultivate`](#generalautoCultivate) | `?do=general.autoCultivate` | `requestAutoPractice` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:235` |
| [`general.culture`](#generalculture) | `/index.php?do=general.culture` | `requireAlchemy` | 4 | `ReconstructedJS/src_jsc/Cfg/Url.js:48` |
| [`general.getOverview`](#generalgetOverview) | `/index.php?do=general.getOverview` | `requestOtherPlayerData` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:123` |
| [`general.insight`](#generalinsight) | `/index.php?do=general.insight` | `requestInsight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:80` |
| [`general.reincarnate`](#generalreincarnate) | `/index.php?do=general.reincarnate` | `requestReincarnate` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:81` |
| [`general.removeObject`](#generalremoveObject) | `/index.php?do=general.removeObject` | `requestRemoveObject` | 4 | `ReconstructedJS/src_jsc/Cfg/Url.js:122` |
| [`general.sacrifice`](#generalsacrifice) | `/index.php?do=general.sacrifice` | `requestWorshipGeneral` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:84` |
| [`general.setEquipment`](#generalsetEquipment) | `/index.php?do=general.setEquipment` | `requestEquipEquipment` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:29` |
| [`general.setLieutenant`](#generalsetLieutenant) | `/index.php?do=general.setLieutenant` | `requestEquipAssistantGeneral` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:30` |
| [`general.setSkill`](#generalsetSkill) | `/index.php?do=general.setSkill` | `requestEquipSkill` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:28` |
| [`general.takeCultureItem`](#generaltakeCultureItem) | `/index.php?do=general.takeCultureItem` | `requireTakeMedicine` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:49` |
| [`godness.cancelFight`](#godnesscancelFight) | `?do=godness.cancelFight` | `requestGoddessCancelFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:220` |
| [`godness.fight`](#godnessfight) | `?do=godness.fight` | `requestGoddessGoToFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:219` |
| [`godness.switchGodness`](#godnessswitchGodness) | `?do=godness.switchGodness` | `requestGoddessChangeSkin` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:221` |
| [`hulao.fight`](#hulaofight) | `?do=hulao.fight` | `requestHuLaoBattleGoToFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:225` |
| [`hulao.index`](#hulaoindex) | `?do=hulao.index` | `requestHulaoMain` | 5 | `ReconstructedJS/src_jsc/Cfg/Url.js:222` |
| [`hulao.lineup`](#hulaolineup) | `?do=hulao.lineup` | `requestHuLaoBattleLineUp` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:224` |
| [`hulao.recieve`](#hulaorecieve) | `?do=hulao.recieve` | `requestHulaoRecieve` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:223` |
| [`idcard.getCode`](#idcardgetCode) | `/?do=idcard.getCode` | `requestAuthenticationCode` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:247` |
| [`idcard.save`](#idcardsave) | `/index.php?do=idcard.save` | `requestAutonymApprove` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:246` |
| [`idcard.saveMobile`](#idcardsaveMobile) | `/?do=idcard.saveMobile` | `requestSaveMoblieTel` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:248` |
| [`item.buy`](#itembuy) | `/index.php?do=item.buy` | `requestBuyGood` | 5 | `ReconstructedJS/src_jsc/Cfg/Url.js:52` |
| [`item.buyPlusUse`](#itembuyPlusUse) | `/index.php?do=item.buyPlusUse` | `requestGiftAndOpen` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:57` |
| [`item.deleteItem`](#itemdeleteItem) | `/index.php?do=item.deleteItem` | `requestDeleteItem` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:55` |
| [`item.getList`](#itemgetList) | `/index.php?do=item.getList` | `requestGoodsList` | 6 | `ReconstructedJS/src_jsc/Cfg/Url.js:50` |
| [`item.getQuickList`](#itemgetQuickList) | `/index.php?do=item.getQuickList` | `requestLimitGoodsList` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:51` |
| [`item.quickBuy`](#itemquickBuy) | `/index.php?do=item.quickBuy` | `requestQuickBuy` | 6 | `ReconstructedJS/src_jsc/Cfg/Url.js:121` |
| [`item.resolveItem`](#itemresolveItem) | `/index.php?do=item.resolveItem` | `requestResolveItem` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:54` |
| [`item.use`](#itemuse) | `/index.php?do=item.use` | `requestUseItem` | 6 | `ReconstructedJS/src_jsc/Cfg/Url.js:53` |
| [`ladder.fight`](#ladderfight) | `/index.php?do=ladder.fight` | `requestLadderFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:94` |
| [`ladder.init`](#ladderinit) | `/index.php?do=ladder.init` | `requestLadderData` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:93` |
| [`ladder.repeatedlyFight`](#ladderrepeatedlyFight) | `/index.php?do=ladder.repeatedlyFight` | `requestLadderTenFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:95` |
| [`ladderWar.buyFtimes`](#ladderWarbuyFtimes) | `?do=ladderWar.buyFtimes` | `requestInterBuyFightTimes` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:172` |
| [`ladderWar.buyReward`](#ladderWarbuyReward) | `?do=ladderWar.buyReward` | `requestBuyReward` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:177` |
| [`ladderWar.entry`](#ladderWarentry) | `/index.php?do=ladderWar.entry` | `requestInterServiceMainInfor` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:169` |
| [`ladderWar.exchange`](#ladderWarexchange) | `?do=ladderWar.exchange` | `requestInterPointsExchange` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:171` |
| [`ladderWar.fight`](#ladderWarfight) | `?do=ladderWar.fight` | `requestInterServiceFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:179` |
| [`ladderWar.getOverview`](#ladderWargetOverview) | `/index.php?do=ladderWar.getOverview` | `requestInterOtherPlayerData` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:124` |
| [`ladderWar.goodsList`](#ladderWargoodsList) | `?do=ladderWar.goodsList` | `requestInterPointsExchangeList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:170` |
| [`ladderWar.hangReward`](#ladderWarhangReward) | `?do=ladderWar.hangReward` | `requestHangReward` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:178` |
| [`ladderWar.match`](#ladderWarmatch) | `?do=ladderWar.match` | `requestInterGetMatchs` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:173` |
| [`ladderWar.rewardList`](#ladderWarrewardList) | `?do=ladderWar.rewardList` | `requestGetRewardList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:176` |
| [`ladderWar.worship`](#ladderWarworship) | `?do=ladderWar.worship` | `requestWorship` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:175` |
| [`ladderWar.worshipEntry`](#ladderWarworshipEntry) | `?do=ladderWar.worshipEntry` | `requestWorshipEntry` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:174` |
| [`ladderWarLocal.buyFtimes`](#ladderWarLocalbuyFtimes) | `?do=ladderWarLocal.buyFtimes` | `requestLocalInterBuyFightTimes` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:183` |
| [`ladderWarLocal.buyReward`](#ladderWarLocalbuyReward) | `?do=ladderWarLocal.buyReward` | `requestLocalBuyReward` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:188` |
| [`ladderWarLocal.entry`](#ladderWarLocalentry) | `/index.php?do=ladderWarLocal.entry` | `requestLocalInterServiceMainInfor` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:180` |
| [`ladderWarLocal.exchange`](#ladderWarLocalexchange) | `?do=ladderWarLocal.exchange` | `requestLocalInterPointsExchange` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:182` |
| [`ladderWarLocal.fight`](#ladderWarLocalfight) | `?do=ladderWarLocal.fight` | `requestLocalInterServiceFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:190` |
| [`ladderWarLocal.getOverview`](#ladderWarLocalgetOverview) | `/index.php?do=ladderWarLocal.getOverview` | `requestLocalInterOtherPlayerData` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:125` |
| [`ladderWarLocal.goodsList`](#ladderWarLocalgoodsList) | `?do=ladderWarLocal.goodsList` | `requestLocalInterPointsExchangeList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:181` |
| [`ladderWarLocal.hangReward`](#ladderWarLocalhangReward) | `?do=ladderWarLocal.hangReward` | `requestLocalHangReward` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:189` |
| [`ladderWarLocal.match`](#ladderWarLocalmatch) | `?do=ladderWarLocal.match` | `requestLocalInterGetMatchs` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:184` |
| [`ladderWarLocal.rewardList`](#ladderWarLocalrewardList) | `?do=ladderWarLocal.rewardList` | `requestLocalGetRewardList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:187` |
| [`ladderWarLocal.worship`](#ladderWarLocalworship) | `?do=ladderWarLocal.worship` | `requestLocalWorship` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:186` |
| [`ladderWarLocal.worshipEntry`](#ladderWarLocalworshipEntry) | `?do=ladderWarLocal.worshipEntry` | `requestLocalWorshipEntry` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:185` |
| [`magic.forge`](#magicforge) | `?do=magic.forge` | `requestMiracleWeaponForge` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:193` |
| [`magic.getOverview`](#magicgetOverview) | `?do=magic.getOverview` | `requestOthersMiracleWeapon` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:194` |
| [`magic.open`](#magicopen) | `?do=magic.open` | `requestOpenMiracleWeapon` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:192` |
| [`map.getConfig`](#mapgetConfig) | `(内联拼接，不含固定前缀)` | `（内联拼接）` | 0 | `Tools/Net.js:1523` |
| [`map.getUserMap`](#mapgetUserMap) | `/index.php?do=map.getUserMap` | `requireChapterInfo` | 8 | `ReconstructedJS/src_jsc/Cfg/Url.js:31` |
| [`meeting.meeting`](#meetingmeeting) | `/index.php?do=meeting.meeting` | `requestAdventureInfo` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:85` |
| [`menu.notice`](#menunotice) | `/index.php?do=menu.notice` | `requestAnnouncementRead` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:65` |
| [`menu.userCdkey`](#menuuserCdkey) | `/index.php?do=menu.userCdkey` | `requestExchangeCDKey` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:110` |
| [`meridian.light`](#meridianlight) | `?do=meridian.light` | `requestLightMeridian` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:244` |
| [`meridian.multiLight`](#meridianmultiLight) | `?do=meridian.multiLight` | `requestMultiLightMeridian` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:245` |
| [`mystery.buy`](#mysterybuy) | `/?do=mystery.buy` | `requestMysteryStoreConvert` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:228` |
| [`mystery.info`](#mysteryinfo) | `/?do=mystery.info` | `requestMysteryStoreInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:226` |
| [`mystery.refresh`](#mysteryrefresh) | `/?do=mystery.refresh` | `requestMysteryStoreUpdate` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:227` |
| [`notify.activate`](#notifyactivate) | `/?do=notify.activate` | `requestCheckWanPuActive` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:139` |
| [`pay.createTrade`](#paycreateTrade) | `(内联拼接，不含固定前缀)` | `（内联拼接）` | 0 | `Views/Table/ChargeItemTableView.js:229` |
| [`payIos.iosCharge`](#payIosiosCharge) | `/index.php?do=payIos.iosCharge` | `requestCheckTransactionReceipt` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:130` |
| [`product.checkOrder`](#productcheckOrder) | `/index.php?do=product.checkOrder` | `requestOrderStatus` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:131` |
| [`product.createOrder`](#productcreateOrder) | `/index.php?do=product.createOrder` | `requestCreateOrder` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:128` |
| [`product.getList`](#productgetList) | `/index.php?do=product.getList` | `requestChargeItemList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:127` |
| [`product.notify`](#productnotify) | `/index.php?do=product.notify` | `postPaySucessNotify` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:129` |
| [`pulse.getList`](#pulsegetList) | `?do=pulse.getList` | `requestMeridiansMainInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:241` |
| [`pulse.practicePulse`](#pulsepracticePulse) | `?do=pulse.practicePulse` | `requestPracticeMeridians` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:242` |
| [`pulse.pulseCollect`](#pulsepulseCollect) | `?do=pulse.pulseCollect` | `requestCollectMeridians` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:243` |
| [`rank.getRankList`](#rankgetRankList) | `/index.php?do=rank.getRankList` | `requestRank` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:105` |
| [`rank.like`](#ranklike) | `/index.php?do=rank.like` | `requestLikeRank` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:106` |
| [`relationship.delUserRelationship`](#relationshipdelUserRelationship) | `/index.php?do=relationship.delUserRelationship` | `requestDeleteFriend` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:118` |
| [`relationship.fight`](#relationshipfight) | `?do=relationship.fight` | `requestFriendFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:160` |
| [`relationship.replyRequest`](#relationshipreplyRequest) | `/index.php?do=relationship.replyRequest` | `requestFriendApply` | 4 | `ReconstructedJS/src_jsc/Cfg/Url.js:111` |
| [`relationship.requestFriend`](#relationshiprequestFriend) | `/index.php?do=relationship.requestFriend` | `requestMakeFriend` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:117` |
| [`relationship.searchUser`](#relationshipsearchUser) | `/index.php?do=relationship.searchUser` | `requestSearchUser` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:119` |
| [`relationship.userEnemysInfo`](#relationshipuserEnemysInfo) | `/index.php?do=relationship.userEnemysInfo` | `requestFoes` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:116` |
| [`relationship.userFriendsInfo`](#relationshipuserFriendsInfo) | `/index.php?do=relationship.userFriendsInfo` | `requestFriends` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:115` |
| [`relationship.userMakeFriendsInfo`](#relationshipuserMakeFriendsInfo) | `/index.php?do=relationship.userMakeFriendsInfo` | `requestQuasiFriends` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:114` |
| [`skill.melt`](#skillmelt) | `/index.php?do=skill.melt` | `requireSkillMelt` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:61` |
| [`skill.multiMelt`](#skillmultiMelt) | `/index.php?do=skill.multiMelt` | `requireSkillMultMelt` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:62` |
| [`skill.upgradeskillLevel`](#skillupgradeskillLevel) | `/index.php?do=skill.upgradeskillLevel` | `requestSkillUpdate` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:60` |
| [`skillRefine.skillRefine`](#skillRefineskillRefine) | `/?do=skillRefine.skillRefine` | `requestSkillRefine` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:261` |
| [`spiritStoneGoods.buy`](#spiritStoneGoodsbuy) | `/?do=spiritStoneGoods.buy` | `requestSpiritStoneConvert` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:234` |
| [`spiritStoneGoods.getList`](#spiritStoneGoodsgetList) | `/?do=spiritStoneGoods.getList` | `requestSpiritStoneInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:233` |
| [`task.getList`](#taskgetList) | `?do=task.getList` | `requestTaskGetList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:149` |
| [`task.multiRecieve`](#taskmultiRecieve) | `?do=task.multiRecieve` | `requestTaskMultiRecieve` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:150` |
| [`task.recieve`](#taskrecieve) | `?do=task.recieve` | `requestTaskRecieve` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:151` |
| [`team.addTeamInfo`](#teamaddTeamInfo) | `?do=team.addTeamInfo` | `requestUnlockOneTeam` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:238` |
| [`team.chgBattleTeam`](#teamchgBattleTeam) | `/index.php?do=team.chgBattleTeam` | `requestChangeTeam` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:27` |
| [`team.chgTeam`](#teamchgTeam) | `/index.php?do=team.chgTeam` | `requestQueueTeam` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:26` |
| [`team.getMostTeamInfo`](#teamgetMostTeamInfo) | `?do=team.getMostTeamInfo` | `requestMultiLineUpInfor` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:237` |
| [`team.loadTeamInfo`](#teamloadTeamInfo) | `?do=team.loadTeamInfo` | `requestLoadOneTeamInfor` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:240` |
| [`team.saveTeamInfo`](#teamsaveTeamInfo) | `?do=team.saveTeamInfo` | `requestSaveOneTeamInfor` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:239` |
| [`tower.towerBeStronger`](#towertowerBeStronger) | `/index.php?do=tower.towerBeStronger` | `requestClimbLadderProperty` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:91` |
| [`tower.towerExchange`](#towertowerExchange) | `/index.php?do=tower.towerExchange` | `requestArtifactStoreyExchangeEquipment` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:88` |
| [`tower.towerExchangeList`](#towertowerExchangeList) | `/index.php?do=tower.towerExchangeList` | `requestArtifactStoreyExchangeList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:87` |
| [`tower.towerFight`](#towertowerFight) | `/index.php?do=tower.towerFight` | `requestClimbLadderStartFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:90` |
| [`tower.towerFightBefore`](#towertowerFightBefore) | `/index.php?do=tower.towerFightBefore` | `requestClimbLadderStartFightOrSelectInfo` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:89` |
| [`tower.towerFightPass`](#towertowerFightPass) | `/index.php?do=tower.towerFightPass` | `requestClimbLadderStartFightPass` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:92` |
| [`tower.towerInfo`](#towertowerInfo) | `/index.php?do=tower.towerInfo` | `requestClimbLadderStartInfo` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:86` |
| [`training.multiTraining`](#trainingmultiTraining) | `/index.php?do=training.multiTraining` | `requestGeneralOneStepTrainingThankYou` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:79` |
| [`training.training`](#trainingtraining) | `/index.php?do=training.training` | `requestGeneralTrainingThankYou` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:78` |
| [`training.trainingInfo`](#trainingtrainingInfo) | `/index.php?do=training.trainingInfo` | `requestGeneralTrainingInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:77` |
| [`union.allotDepot`](#unionallotDepot) | `?do=union.allotDepot` | `requestAllotDepot` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:161` |
| [`union.apply`](#unionapply) | `/index.php?do=union.apply` | `requestApply` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:76` |
| [`union.applyList`](#unionapplyList) | `/index.php?do=union.applyList` | `requestApplyList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:73` |
| [`union.chgNotice`](#unionchgNotice) | `/?do=union.chgNotice` | `requestChgUnionNotice` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:143` |
| [`union.chgSign`](#unionchgSign) | `/?do=union.chgSign` | `requestChgUnionSign` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:144` |
| [`union.create`](#unioncreate) | `/?do=union.create` | `requestCreateUnion` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:146` |
| [`union.donate`](#uniondonate) | `/?do=union.donate` | `requestDonate` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:148` |
| [`union.donateInfo`](#uniondonateInfo) | `/?do=union.donateInfo` | `requestGetDonateInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:147` |
| [`union.exchangeGoods`](#unionexchangeGoods) | `/index.php?do=union.exchangeGoods` | `requestUnionShopExchangeGoods` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:72` |
| [`union.getDepotList`](#uniongetDepotList) | `/index.php?do=union.getDepotList` | `requestUnionDepotList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:70` |
| [`union.getGoodsList`](#uniongetGoodsList) | `/index.php?do=union.getGoodsList` | `requestUnionShopList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:71` |
| [`union.getUnionActiveList`](#uniongetUnionActiveList) | `?do=union.getUnionActiveList` | `requestGetUnionActvieList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:158` |
| [`union.info`](#unioninfo) | `/?do=union.info` | `requestGetUnionInfo` | 6 | `ReconstructedJS/src_jsc/Cfg/Url.js:142` |
| [`union.manage`](#unionmanage) | `/index.php?do=union.manage` | `requestApplyOperation` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:75` |
| [`union.quite`](#unionquite) | `/?do=union.quite` | `requestExitUnion` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:145` |
| [`union.rankList`](#unionrankList) | `/index.php?do=union.rankList` | `requestUnionRankList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:69` |
| [`union.userList`](#unionuserList) | `/index.php?do=union.userList` | `requestUnionUserList` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:74` |
| [`unionWar.getBattleFormation`](#unionWargetBattleFormation) | `?do=unionWar.getBattleFormation` | `requestGetBattleFormation` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:154` |
| [`unionWar.getFightingDetails`](#unionWargetFightingDetails) | `?do=unionWar.getFightingDetails` | `requestFightingDetails` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:159` |
| [`unionWar.getFightingProcess`](#unionWargetFightingProcess) | `?do=unionWar.getFightingProcess` | `requestGetUnionWarFightingProcess` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:157` |
| [`unionWar.getFightingResult`](#unionWargetFightingResult) | `?do=unionWar.getFightingResult` | `requestGetEncounterInfo` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:155` |
| [`unionWar.setBattleFormation`](#unionWarsetBattleFormation) | `?do=unionWar.setBattleFormation` | `requestSetBattleFormation` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:156` |
| [`unionWar.signUp`](#unionWarsignUp) | `?do=unionWar.signUp` | `requestUnionCombatSignUp` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:141` |
| [`user.chgGeneralskin`](#userchgGeneralskin) | `?do=user.chgGeneralskin` | `requestChangeGeneralSkin` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:236` |
| [`user.chgNickname`](#userchgNickname) | `/index.php?do=user.chgNickname` | `requestSaveUserNewName` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:103` |
| [`user.chgSign`](#userchgSign) | `/index.php?do=user.chgSign` | `requestSaveUserSign` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:102` |
| [`user.chooseTeam`](#userchooseTeam) | `/index.php?do=user.chooseTeam` | `requestGeneralSelect` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:126` |
| [`user.getPushData`](#usergetPushData) | `/?do=user.getPushData` | `requestPushDataInfo` | 10 | `ReconstructedJS/src_jsc/Cfg/Url.js:64` |
| [`user.leaveMsg`](#userleaveMsg) | `/index.php?do=user.leaveMsg` | `requestSendFeedBack` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:112` |
| [`user.login`](#userlogin) | `/?do=user.login` | `requestLogin` | 6 | `ReconstructedJS/src_jsc/Cfg/Url.js:20` |
| [`user.save`](#usersave) | `/index.php?do=user.save` | `requestGeTuiSave` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:140` |
| [`user.testLogin`](#usertestLogin) | `/?do=user.testLogin` | `requestTestLogin` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:21` |
| [`warlord.warlord`](#warlordwarlord) | `/index.php?do=warlord.warlord` | `requestChaosFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:98` |
| [`warlord.warlordBatchExchangeSkill`](#warlordwarlordBatchExchangeSkill) | `/index.php?do=warlord.warlordBatchExchangeSkill` | `requestOneStepSkillCompose` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:101` |
| [`warlord.warlordExchangeSkill`](#warlordwarlordExchangeSkill) | `/index.php?do=warlord.warlordExchangeSkill` | `requestWarLordExchange` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:100` |
| [`warlord.warlordInfo`](#warlordwarlordInfo) | `/index.php?do=warlord.warlordInfo` | `requestChaosInfo` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:97` |
| [`warlord.warlordPieceInfo`](#warlordwarlordPieceInfo) | `/index.php?do=warlord.warlordPieceInfo` | `requestChaosSkillPiece` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:96` |
| [`warlord.warlordSkillList`](#warlordwarlordSkillList) | `/index.php?do=warlord.warlordSkillList` | `requestWarLordSkillList` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:99` |
| [`wine.wine`](#winewine) | `/index.php?do=wine.wine` | `requireToast` | 4 | `ReconstructedJS/src_jsc/Cfg/Url.js:47` |
| [`wine.wineGeneralInfo`](#winewineGeneralInfo) | `?do=wine.wineGeneralInfo` | `requestGeneralPreviewList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:254` |
| [`wine.wineInfo`](#winewineInfo) | `/index.php?do=wine.wineInfo` | `requireToastTimes` | 0 | `ReconstructedJS/src_jsc/Cfg/Url.js:46` |
| [`wish.get`](#wishget) | `/index.php?do=wish.get` | `requestWishingStart` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:68` |
| [`wish.info`](#wishinfo) | `/index.php?do=wish.info` | `requestWishingContent` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:67` |
| [`worldWar.exchange`](#worldWarexchange) | `?do=worldWar.exchange` | `requestDecisivePointsExchange` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:199` |
| [`worldWar.getFightDetail`](#worldWargetFightDetail) | `?do=worldWar.getFightDetail` | `requestDecisiveViewingFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:205` |
| [`worldWar.getOverview`](#worldWargetOverview) | `?do=worldWar.getOverview` | `requestDecisiveOtherPlayerData` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:200` |
| [`worldWar.getPlayerList`](#worldWargetPlayerList) | `?do=worldWar.getPlayerList` | `DecisiveGetPlayerList` | 4 | `ReconstructedJS/src_jsc/Cfg/Url.js:201` |
| [`worldWar.goodsList`](#worldWargoodsList) | `?do=worldWar.goodsList` | `requestDecisivePointsExchangeList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:198` |
| [`worldWar.index`](#worldWarindex) | `?do=worldWar.index` | `requestDecisiveBattleMainInfor` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:195` |
| [`worldWar.outline`](#worldWaroutline) | `?do=worldWar.outline` | `requestDecisiveTop128` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:204` |
| [`worldWar.signUp`](#worldWarsignUp) | `?do=worldWar.signUp` | `requestDecisiveBattleRefreshTeam` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:206` |
| [`worldWar.supportList`](#worldWarsupportList) | `?do=worldWar.supportList` | `requestDecisiveBattleSupportRecord` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:197` |
| [`worldWar.supportPlayer`](#worldWarsupportPlayer) | `?do=worldWar.supportPlayer` | `DecisiveSupportPlayer` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:203` |
| [`worldWar.supportRank`](#worldWarsupportRank) | `?do=worldWar.supportRank` | `requestDecisiveBattleSupportRank` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:196` |
| [`worldWarLocal.exchange`](#worldWarLocalexchange) | `?do=worldWarLocal.exchange` | `requestDecisivePointsExchange` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:211` |
| [`worldWarLocal.getFightDetail`](#worldWarLocalgetFightDetail) | `?do=worldWarLocal.getFightDetail` | `requestDecisiveViewingFight` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:217` |
| [`worldWarLocal.getOverview`](#worldWarLocalgetOverview) | `?do=worldWarLocal.getOverview` | `requestDecisiveOtherPlayerData` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:212` |
| [`worldWarLocal.getPlayerList`](#worldWarLocalgetPlayerList) | `?do=worldWarLocal.getPlayerList` | `DecisiveGetPlayerList` | 4 | `ReconstructedJS/src_jsc/Cfg/Url.js:213` |
| [`worldWarLocal.goodsList`](#worldWarLocalgoodsList) | `?do=worldWarLocal.goodsList` | `requestDecisivePointsExchangeList` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:210` |
| [`worldWarLocal.index`](#worldWarLocalindex) | `?do=worldWarLocal.index` | `requestDecisiveBattleMainInfor` | 3 | `ReconstructedJS/src_jsc/Cfg/Url.js:207` |
| [`worldWarLocal.outline`](#worldWarLocaloutline) | `?do=worldWarLocal.outline` | `requestDecisiveTop128` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:216` |
| [`worldWarLocal.signUp`](#worldWarLocalsignUp) | `?do=worldWarLocal.signUp` | `requestDecisiveBattleRefreshTeam` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:218` |
| [`worldWarLocal.supportList`](#worldWarLocalsupportList) | `?do=worldWarLocal.supportList` | `requestDecisiveBattleSupportRecord` | 2 | `ReconstructedJS/src_jsc/Cfg/Url.js:209` |
| [`worldWarLocal.supportPlayer`](#worldWarLocalsupportPlayer) | `?do=worldWarLocal.supportPlayer` | `DecisiveSupportPlayer` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:215` |
| [`worldWarLocal.supportRank`](#worldWarLocalsupportRank) | `?do=worldWarLocal.supportRank` | `requestDecisiveBattleSupportRank` | 1 | `ReconstructedJS/src_jsc/Cfg/Url.js:208` |

## 未被 Tools/Net.js 封装的 URL 键

这些键在 `Cfg/Url.js` 中定义，但静态遍历没有在 `Tools/Net.js` 找到对应的 request* 封装：

- `FightTest`
- `GetMessage`
- `sendMessage`

## 零调用者的封装

下列动作在 `Tools/Net.js` 里有完整封装，但**恢复出的 836 个脚本里没有任何调用者**。
这一点在原始反汇编层面同样成立：`Recovered/src_jsc/Tools/Net.js.disasm.txt` 是唯一提到这些函数名的地方。

因此它们是**随包发布但在这份构建里不可达的接口**——不是提取失败，也不代表原版客户端从不调用（可能有被裁剪的分支或未随包发布的模块）。

| 动作 | 路径 | 封装 |
|---|---|---|
| `anysdkAccount.index` | `(内联拼接，不含固定前缀)` | `xs.Tools.Net.—` |
| `battle.mnq` | `(内联拼接，不含固定前缀)` | `xs.Tools.Net.—` |
| `combat.getUserCombatList` | `/index.php?do=combat.getUserCombatList` | `xs.Tools.Net.requestFormulaInfo` |
| `dungeon.fightBefore` | `/?do=dungeon.fightBefore` | `xs.Tools.Net.requireFightBefore` |
| `equipment.sell` | `/index.php?do=equipment.sell` | `xs.Tools.Net.requireSell` |
| `ladderWar.buyReward` | `?do=ladderWar.buyReward` | `xs.Tools.Net.requestBuyReward` |
| `ladderWarLocal.buyReward` | `?do=ladderWarLocal.buyReward` | `xs.Tools.Net.requestLocalBuyReward` |
| `map.getConfig` | `(内联拼接，不含固定前缀)` | `xs.Tools.Net.—` |
| `meeting.meeting` | `/index.php?do=meeting.meeting` | `xs.Tools.Net.requestAdventureInfo` |
| `pay.createTrade` | `(内联拼接，不含固定前缀)` | `xs.Tools.Net.—` |
| `product.notify` | `/index.php?do=product.notify` | `xs.Tools.Net.postPaySucessNotify` |
| `tower.towerExchange` | `/index.php?do=tower.towerExchange` | `xs.Tools.Net.requestArtifactStoreyExchangeEquipment` |
| `tower.towerFightBefore` | `/index.php?do=tower.towerFightBefore` | `xs.Tools.Net.requestClimbLadderStartFightOrSelectInfo` |
| `user.testLogin` | `/?do=user.testLogin` | `xs.Tools.Net.requestTestLogin` |
| `warlord.warlordSkillList` | `/index.php?do=warlord.warlordSkillList` | `xs.Tools.Net.requestWarLordSkillList` |
| `wine.wineInfo` | `/index.php?do=wine.wineInfo` | `xs.Tools.Net.requireToastTimes` |
