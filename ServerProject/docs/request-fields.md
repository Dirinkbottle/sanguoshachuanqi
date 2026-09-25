# 请求字段总表

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


共 **175** 个不同的显式请求字段。

所有动作还会由 xs.Tools.Net.addBaseParam 或 xs.Views.Mgr.reqUrl 追加公共字段：

- `user_id`
- `time`
- `token`
- `user_auth`
- `step (guide milestones only)`

| 字段 | 出现的动作 | 证据 |
|---|---|---|
| `Constant_Beauty_Over_Normal` | `beauty.beautyCruiseOver` | `Scene/Beauty/BeautyScene.js:978` |
| `_setRankType` | `tower.towerFight` | `Scene/Climb/StartBattleScene.js:336` |
| `account_uid` | `user.login` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `activity_push` | `activity.gamble`, `activity.receivePower`, `training.multiTraining`, `training.training`, `wish.get` | `ReconstructedJS/src_jsc/Tools/Net.js:376 (wrapper-literal = true)` |
| `addNum` | `item.buy` | `Scene/Ladder/LadderGiftView.js:161` |
| `app_indentify` | `account.index`, `user.login` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `battle_id` | `unionWar.getFightingDetails` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `battle_rounds` | `unionWar.getFightingDetails`, `unionWar.getFightingProcess` | `Views/Dialog/UnionEncounterMapDialog.js:863` |
| `beauty_id` | `beauty.beautyCruise` | `Scene/Beauty/BeautyScene.js:862` |
| `belongs_shop` | `item.getList` | `Views/StoreItemView.js:81` |
| `bore_id` | `gem.gemInset`, `gem.gemRemove`, `gem.lock`, `gem.unlock` | `Views/Gems/GemsSophisticationView.js:800` |
| `boss_dungeon_id` | `festival.goFight` | `Scene/Copy/CopyScene.js:229` |
| `boss_id` | `festival.goFight` | `Scene/Copy/CopyScene.js:229` |
| `box_id` | `dungeon.openBox` | `Views/Dialog/Dialog.js:503` |
| `cdkey_string` | `menu.userCdkey` | `Views/Dialog/ExchangeCDKey.js:73` |
| `cfg_version` | `user.login` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `channel` | `chat.send` | `Views/ChatContentLayer.js:204` |
| `channel_id` | `menu.notice` | `Views/Dialog/AnnouncementDialog.js:313` |
| `check_troop` | `dungeon.fight` | `Views/Dialog/DungeonDetail.js:321` |
| `chg_formation` | `unionWar.setBattleFormation` | `Scene/UnionWar/UnionWarChangeFormationScene.js:247` |
| `clear_cd` | `dungeon.multiKill` | `Views/Dialog/DungeonDetail.js:399` |
| `combat_id` | `combat.upgradeCombatLevel` | `Scene/Combat/CombatUpgradeScene.js:426` |
| `consume_user_item_ids` | `skill.upgradeskillLevel` | `Views/Dialog/SkillUpDialog.js:395` |
| `consume_user_item_num` | `skill.upgradeskillLevel` | `Views/Dialog/SkillUpDialog.js:397` |
| `consume_user_skill_ids` | `skill.upgradeskillLevel` | `Views/Dialog/SkillUpDialog.js:393` |
| `content` | `email.send` | `Views/Dialog/SendMessageDialog.js:121` |
| `cooperator` | `activity.receive` | `Scene/Party/MonthLegendDialog.js:96` |
| `cooperator_server_id` | `activity.receive` | `Scene/Party/MonthLegendDialog.js:96` |
| `cultivate_num` | `general.autoCultivate` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `cultivate_rule` | `general.autoCultivate` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `currency_type` | `item.buy`, `item.quickBuy` | `Views/Table/Cell/AvoidWarTableViewCell.js:109` |
| `data_id` | `union.donate` | `Views/Union/UnionDonationLayer.js:310` |
| `disCountPrice` | `item.quickBuy` | `Views/Dialog/SpecificDialog.js:263` |
| `discount_price` | `item.buy`, `item.buyPlusUse` | `Views/Table/Cell/AvoidWarTableViewCell.js:105` |
| `double` | `training.multiTraining`, `training.training` | `Scene/Training/GeneralTraningScene.js:900` |
| `doubleTankYouCallback` | `training.training` | `Scene/Training/GeneralTraningScene.js:896` |
| `dungeon_id` | `dungeon.fight`, `dungeon.multiKill`, `dungeon.multiKillSpecial` | `Views/Dialog/DungeonDetail.js:321` |
| `easy_uid` | `account.bindWithEasysdk` | `Scene/Setting/SettingScene.js:259` |
| `eat_baoZi` | `dungeon.multiKillSpecial` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |
| `eaten_user_eids` | `equipment.refine` | `Views/Dialog/RefineEquipmentDialog.js:410` |
| `eaten_user_items` | `equipment.refine` | `Views/Dialog/RefineEquipmentDialog.js:410` |
| `eids` | `equipment.melt` | `Views/Table/Cell/EquipmentTableViewCell.js:182` |
| `email_id` | `email.accept` | `Views/Table/Cell/MailTableViewCell.js:142` |
| `email_push` | `email.accept`, `email.getList`, `product.checkOrder` | `ReconstructedJS/src_jsc/Tools/Net.js:1164 (wrapper-literal = true)` |
| `equipment_id` | `equipment.equipmentCompose`, `equipment.equipmentPieceSell` | `Views/Table/Cell/EquipmentFragmentTableViewCell.js:84` |
| `evolution_id` | `evolution.active`, `evolution.changeFate`, `evolution.open` | `Scene/Aga/AgaScene.js:972` |
| `exchange_id` | `activity.exchange` | `Views/Dialog/MultiItemExchangeDialog.js:116` |
| `extra` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `extra_param` | `activity.receive`, `item.quickBuy` | `Scene/Party/MonthLegendDialog.js:96` |
| `fate_ids` | `evolution.changeFate` | `Views/Dialog/AwakeChangeYuanFenDialog.js:62` |
| `fight_num` | `dungeon.multiKillSpecial` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |
| `fight_point` | `unionWar.signUp` | `Views/Union/UnionCombatMainLayer.js:330` |
| `forcePush` | `activity.gamble`, `hulao.fight`, `tower.towerInfo` | `Views/Dialog/SlotMachinesActivities.js:351` |
| `forcepush` | `activity.gamble`, `activity.receive`, `activity.receivePower`, `combat.upgradeCombatLevel`, `dungeon.fight`, `dungeon.multiKill` … | `Scene/Login/LoginScene_AnySdk.js:318` |
| `from` | `unionWar.getFightingDetails` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `from_equipment_id` | `gem.gemInherit` | `Views/Gems/GemsHoleextendView.js:376` |
| `general_id` | `atlas.getSurrenderList`, `general.reincarnate`, `team.chgBattleTeam`, `user.chooseTeam`, `wish.get` | `Scene/TeamBuild/TeamBuildScene.js:1174` |
| `general_leader_id` | `training.multiTraining` | `Scene/Training/GeneralTraningScene.js:583` |
| `general_list` | `hulao.fight` | `Views/HulaoBattle/GarrisonLayoutDialog.js:793` |
| `general_skin` | `user.chgGeneralskin` | `Views/Dialog/PlayerInfoDialog.js:221` |
| `getGradeList` | `wine.wineGeneralInfo` | `Views/Dialog/GeneralPreviewDialog.js:129` |
| `gids` | `combat.upgradeCombatLevel` | `Scene/Combat/CombatUpgradeScene.js:426` |
| `godness_skin_id` | `godness.switchGodness` | `Views/Goddess/GoddessMainView.js:476` |
| `id` | `tower.towerBeStronger` | `Scene/Climb/StartBattleScene.js:949` |
| `idcard` | `idcard.save` | `Views/Dialog/IdCardBindingDialog.js:171` |
| `ignoreRandEvent` | `dungeon.fight`, `dungeon.multiKill`, `dungeon.multiKillSpecial`, `evolution.changeFate`, `evolution.open`, `general.reincarnate` … | `Views/Dialog/DungeonDetail.js:321` |
| `initWithData` | `atlas.getList` | `Scene/Achievement/AchievementScene.js:32` |
| `instance_id` | `activity.exchange`, `activity.gamble`, `activity.receive` | `Scene/Party/MonthLegendDialog.js:96` |
| `is_gain` | `general.autoCultivate`, `general.culture` | `Scene/Develop/AlchemyView.js:346` |
| `is_gift` | `item.getList` | `Views/StoreItemView.js:79` |
| `is_main` | `ladderWar.match`, `ladderWarLocal.match` | `Views/InterService/InterServiceFightView.js:234` |
| `is_multi` | `general.autoCultivate`, `general.culture`, `wine.wine` | `Scene/Store/ToastView.js:178` |
| `is_need_talent` | `general.autoCultivate` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `is_take` | `general.takeCultureItem` | `Scene/Develop/AlchemyView.js:171` |
| `is_vip` | `magic.forge` | `Views/MiracleWeapons/MiracleWeaponLayer.js:716` |
| `item_advanced_id` | `item.buy`, `item.buyPlusUse` | `Views/Table/Cell/AvoidWarTableViewCell.js:103` |
| `item_id` | `general.sacrifice`, `item.deleteItem`, `item.getQuickList`, `item.quickBuy` | `Views/WorshipWinePopNode.js:297` |
| `item_num` | `beauty.addBeautyExperience`, `item.buy`, `item.buyPlusUse`, `item.quickBuy`, `item.resolveItem`, `item.use` | `Views/Table/Cell/AvoidWarTableViewCell.js:107` |
| `ladder_push` | `item.buy`, `item.buyPlusUse` | `ReconstructedJS/src_jsc/Tools/Net.js:815 (wrapper-literal = true)` |
| `ladder_rank` | `ladder.repeatedlyFight` | `Scene/Ladder/LadderCardShow.js:276` |
| `lieutenant_user_general_id` | `general.setLieutenant` | `Scene/TeamBuild/TeamBuildScene.js:1274` |
| `like_user_id` | `rank.like` | `Views/Table/Cell/RankTableViewCell.js:183` |
| `limit` | `chat.getMessage`, `relationship.searchUser` | `Scene/Social/SocialView.js:245` |
| `logintype` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `magic_id` | `magic.forge`, `magic.open` | `Views/MiracleWeapons/SelectMiracleWeaponLayer.js:185` |
| `major_user_general_id` | `general.setLieutenant` | `Scene/TeamBuild/TeamBuildScene.js:1272` |
| `map_id` | `map.getUserMap` | `Views/Table/Cell/TaskCell.js:335` |
| `member_id` | `union.allotDepot` | `Views/Dialog/UnionDepotNumChooseDialog.js:150` |
| `message` | `chat.send`, `user.leaveMsg` | `Views/FeedBack.js:51` |
| `mobile` | `idcard.getCode`, `idcard.saveMobile` | `Views/Dialog/VerificationTelDialog.js:114` |
| `mobile_code` | `idcard.saveMobile` | `Views/Dialog/VerificationTelDialog.js:136` |
| `mobile_num` | `account.chgAccountInfo` | `Views/Dialog/BindingTelDialog.js:131` |
| `mode` | `hulao.fight`, `hulao.lineup`, `hulao.recieve` | `Views/HulaoBattle/HulaoBattleMainView.js:171` |
| `multi` | `gem.gemCompose` | `Views/Gems/GemsComposeView.js:276` |
| `new_equipment_id` | `general.setEquipment` | `Scene/TeamBuild/TeamBuildScene.js:1249` |
| `new_skill_id` | `general.setSkill` | `Scene/TeamBuild/TeamBuildScene.js:1226` |
| `nickname` | `user.chgNickname` | `Views/ChangeName.js:97` |
| `notice` | `union.chgNotice` | `Views/Dialog/UnionChgNoticeSignDialog.js:129` |
| `num` | `activity.exchange`, `combat.upgradeCombatLevel`, `union.allotDepot` | `Views/Dialog/MultiItemExchangeDialog.js:116` |
| `object_instance_id` | `general.removeObject` | `Scene/TeamBuild/TeamBuildScene.js:887` |
| `order_ids` | `product.checkOrder` | `Views/Dialog/CheckOrderDialog.js:131` |
| `order_type` | `product.createOrder` | `Views/Table/ChargeItemTableView.js:189` |
| `other_id` | `relationship.delUserRelationship`, `relationship.replyRequest`, `relationship.requestFriend`, `tower.towerFight`, `warlord.warlord` | `Scene/Climb/StartBattleScene.js:338` |
| `other_user_id` | `general.getOverview`, `magic.getOverview` | `Tools/Net.js:150` |
| `page` | `relationship.searchUser` | `Scene/Social/SocialView.js:245` |
| `pay_type` | `payIos.iosCharge` | `Views/Dialog/CheckOrderDialog.js:78` |
| `pk_id` | `beauty.beautyExchange`, `festival.getGift`, `festival.scoreBuy`, `ladderWar.exchange`, `ladderWarLocal.exchange`, `mystery.buy` … | `Views/Union/UnionShopLayer.js:163` |
| `pk_ids` | `ladderWar.hangReward`, `ladderWarLocal.hangReward` | `Views/InterService/InterServiceRewardDialog.js:88` |
| `player_id` | `ladder.fight`, `ladder.repeatedlyFight`, `ladderWar.fight`, `ladderWar.getOverview`, `ladderWar.worship`, `ladderWarLocal.fight` … | `Scene/Ladder/LadderCardShow.js:321` |
| `player_type` | `ladder.repeatedlyFight` | `Scene/Ladder/LadderCardShow.js:276` |
| `position` | `buddy.activatePosition`, `buddy.setBuddy`, `general.removeObject`, `general.setLieutenant` | `Scene/TeamBuild/TeamBuildScene.js:1276` |
| `product_id` | `product.createOrder` | `Views/Table/ChargeItemTableView.js:161` |
| `product_line` | `menu.notice` | `Views/Dialog/AnnouncementDialog.js:313` |
| `pulse_count` | `pulse.practicePulse`, `pulse.pulseCollect` | `Views/Meridians/PracticeMeridiansMainView.js:212` |
| `pulse_num` | `pulse.practicePulse` | `Views/Meridians/PracticeMeridiansMainView.js:212` |
| `quick` | `equipment.upgrade` | `Views/Dialog/EquipmentStrengthenDialog.js:247` |
| `rank` | `rank.like` | `Views/Table/Cell/RankTableViewCell.js:181` |
| `receipt_data` | `payIos.iosCharge` | `Views/Dialog/CheckOrderDialog.js:78` |
| `refreshData` | `item.getQuickList` | `Views/Table/AvoidWarTableView.js:47` |
| `refreshGeneralTrainingInfoSuccess` | `training.trainingInfo` | `Scene/Training/GeneralTraningScene.js:781` |
| `refreshStoreSuccessCallback` | `item.getList` | `Views/StoreItemView.js:77` |
| `requestCallback` | `tower.towerInfo` | `Scene/Climb/ClimbLadderScene.js:65` |
| `requestExchangeListSuccessCallback` | `tower.towerExchangeList` | `Views/ClimbLadderArtifactStorey.js:86` |
| `requestLimitGoodsListSuccessCallback` | `item.getQuickList` | `Views/WorshipWinePopNode.js:295` |
| `requestStartInfoSuccessCallback` | `tower.towerInfo` | `Views/ClimbLadderPFKGView.js:179` |
| `round` | `worldWar.getFightDetail`, `worldWar.getPlayerList`, `worldWar.supportPlayer`, `worldWarLocal.getFightDetail`, `worldWarLocal.getPlayerList`, `worldWarLocal.supportPlayer` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:411` |
| `s_type` | `product.createOrder` | `Views/Table/ChargeItemTableView.js:164` |
| `sacrifice_type` | `general.sacrifice` | `Scene/Worship/WorshipScene.js:212` |
| `search_word` | `relationship.searchUser` | `Scene/Social/SocialView.js:245` |
| `selectSuccessCallback` | `user.chooseTeam` | `Scene/GeneralSelect/GeneralSelectScene.js:215` |
| `send_to` | `chat.send`, `email.send` | `Views/Dialog/SendMessageDialog.js:121` |
| `send_type` | `email.send` | `Views/Dialog/SendMessageDialog.js:121` |
| `server_id` | `menu.notice`, `user.login` | `ReconstructedJS/src_jsc/Tools/Net.js:338 (wrapper-injected = xs.Profile.GameData.Player.g_serverId)` |
| `server_params` | `user.login` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `session` | `account.index`, `worldWar.getFightDetail`, `worldWar.supportPlayer`, `worldWarLocal.getFightDetail`, `worldWarLocal.supportPlayer` | `Scene/Login/LoginScene_EasyGuestSdk.js:391` |
| `sessionId` | `account.bindWithBf`, `account.bindWithFacebook`, `account.index` | `Scene/Login/LoginScene_AnySdk.js:701` |
| `session_id` | `account.bindWithEasysdk` | `Scene/Setting/SettingScene.js:259` |
| `sids` | `combat.upgradeCombatLevel`, `skill.melt` | `Views/Table/Cell/SkillMeltTableCell.js:173` |
| `sign` | `user.chgSign` | `Views/Dialog/SpecificDialog.js:696` |
| `skill_id` | `warlord.warlord`, `warlord.warlordExchangeSkill`, `warlord.warlordInfo` | `Scene/Chaos/ChaosFight.js:92` |
| `skill_ids` | `warlord.warlordBatchExchangeSkill` | `Scene/Chaos/ChaosHomeView.js:60` |
| `skill_pos` | `general.setSkill` | `Scene/TeamBuild/TeamBuildScene.js:1224` |
| `special_channel` | `payIos.iosCharge`, `product.createOrder`, `product.getList` | `Views/Table/ChargeItemTableView.js:39` |
| `stage` | `hulao.fight`, `hulao.lineup`, `hulao.recieve` | `Views/HulaoBattle/HulaoBattleMainView.js:171` |
| `tag` | `unionWar.getFightingDetails`, `unionWar.getFightingProcess` | `Views/Dialog/UnionEncounterMapDialog.js:863` |
| `talent_level` | `beauty.beautyCruise` | `Scene/Beauty/BeautyScene.js:864` |
| `target_id` | `union.manage` | `Views/Union/UnionMemberLayer.js:365` |
| `task_pk_id` | `task.recieve` | `Views/Table/Cell/TaskCell.js:241` |
| `team` | `team.chgTeam` | `Views/QueueTeamView.js:486` |
| `team_id` | `team.addTeamInfo`, `team.chgBattleTeam`, `team.chgTeam`, `team.loadTeamInfo`, `team.saveTeamInfo`, `training.multiTraining` … | `Views/QueueTeamView.js:484` |
| `team_position` | `team.chgBattleTeam` | `Scene/TeamBuild/TeamBuildScene.js:1172` |
| `thankYouSuccessCallback` | `training.training` | `Scene/Training/GeneralTraningScene.js:921` |
| `title` | `email.send` | `Views/Dialog/SendMessageDialog.js:121` |
| `to` | `unionWar.getFightingDetails` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `to_equipment_id` | `gem.gemInherit` | `Views/Gems/GemsHoleextendView.js:376` |
| `token` | `chat.getMessage`, `user.login` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `type` | `beauty.beautyCruiseOver`, `gem.gemCompose`, `general.removeObject`, `menu.notice`, `rank.like`, `relationship.delUserRelationship` … | `Scene/Store/ToastView.js:144` |
| `uid` | `account.bindWithBf`, `account.bindWithEasysdk`, `account.bindWithFacebook`, `account.chgAccountInfo`, `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `union_id` | `union.apply`, `union.applyList`, `union.chgNotice`, `union.chgSign`, `union.donate`, `union.donateInfo` … | `Views/Union/UnionMemberLayer.js:455` |
| `union_name` | `union.create`, `union.info` | `Views/Union/UnionCreate.js:208` |
| `union_sign` | `union.chgSign`, `union.create` | `Views/Union/UnionCreate.js:208` |
| `union_war_id` | `unionWar.getFightingDetails`, `unionWar.getFightingProcess` | `Views/Dialog/UnionEncounterMapDialog.js:863` |
| `universal_num` | `evolutionChest.synthetise` | `Scene/Bag/BagScene.js:524` |
| `user_death_general_id` | `general.sacrifice` | `Scene/Worship/WorshipScene.js:210` |
| `user_equipment_id` | `equipment.refine`, `equipment.upgrade`, `gem.bore`, `gem.chgProperty` | `Views/EquipmentReinforceView.js:129` |
| `user_gem_id` | `gem.gemCompose`, `gem.gemInset`, `gem.gemRemove` | `Views/Gems/GemsPunchView.js:562` |
| `user_general_id` | `buddy.setBuddy`, `general.autoCultivate`, `general.culture`, `general.insight`, `general.removeObject`, `general.sacrifice` … | `Scene/TeamBuild/TeamBuildScene.js:1222` |
| `user_godness_id` | `godness.cancelFight`, `godness.fight`, `godness.switchGodness` | `Views/Goddess/GoddessMainView.js:522` |
| `user_id` | `activity.exchange`, `activity.gamble`, `beauty.beautyExchange`, `buddy.activatePosition`, `buddy.setBuddy`, `chat.getMessage` … | `Views/Dialog/SlotMachinesActivities.js:351` |
| `user_is_go_xiuluo` | `tower.towerInfo` | `Views/ClimbLadderPFKGView.js:474` |
| `user_item_id` | `beauty.addBeautyExperience`, `evolutionChest.synthetise`, `item.resolveItem`, `item.use`, `wine.wine` | `Scene/Store/ToastView.js:144` |
| `user_name` | `idcard.save` | `Views/Dialog/IdCardBindingDialog.js:171` |
| `user_skill_id` | `skill.upgradeskillLevel`, `skillRefine.skillRefine` | `Views/Dialog/SkillUpDialog.js:391` |
| `user_training_id` | `training.training` | `Scene/Training/GeneralTraningScene.js:898` |
| `vipstore_push` | `item.buy` | `ReconstructedJS/src_jsc/Tools/Net.js:815 (wrapper-literal = true)` |
