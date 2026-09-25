# 响应根字段总表

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


共 **122** 个不同的响应根字段。

数量少是这份协议的结构性事实：绝大多数业务状态不走响应根字段，而是走 cmn 增量，见 [data-model.md](data-model.md)。

| 字段 | 出现的动作 | 证据 |
|---|---|---|
| `Clone` | `relationship.userEnemysInfo`, `relationship.userFriendsInfo`, `relationship.userMakeFriendsInfo` | `Scene/Social/SocialView.js:101` |
| `EasyAppKeyBase64` | `user.login` | `Scene/Login/LoginScene_EasyGuestSdk.js:231` |
| `account_info.account_uid` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `activity_exchange` | `activity.exchange` | `Views/Dialog/MultiItemExchangeDialog.js:116` |
| `activity_list` | `activity.receive` | `Scene/Party/PartyDialog.js:235` |
| `add_list` | `activity.exchange`, `activity.receive`, `email.accept`, `equipment.melt`, `equipment.multiMelt`, `evolutionChest.synthetise` … | `Tools/Net.js (via UseItemSuccess)` |
| `add_list.addExperience` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.attack` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.curMaxLevle` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.defense` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.hp` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.isUplevel` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.num` | `activity.gamble`, `equipment.refine` | `Views/Dialog/SlotMachinesActivities.js:351` |
| `add_list.talentLevel` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.wisdom` | `beauty.addBeautyExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `attr_info` | `general.autoCultivate` | `Views/Dialog/AutoPracticeDialog.js:424` |
| `beauty_cruise_info` | `beauty.beautyCruiseOver` | `Scene/Beauty/BeautyScene.js:985` |
| `beauty_info.end_time` | `beauty.beautyCruise` | `Scene/Beauty/BeautyScene.js:866` |
| `chargeInfo` | `payIos.iosCharge` | `Views/Dialog/CheckOrderDialog.js:78` |
| `chargeInfo.flag` | `payIos.iosCharge` | `Views/Dialog/CheckOrderDialog.js:78` |
| `chat_msg` | `chat.getMessage`, `chat.send` | `Views/ChatContentLayer.js:204` |
| `cmn.magic_info.update_list` | `magic.forge` | `Views/MiracleWeapons/MiracleWeaponLayer.js:716` |
| `coin_not_enough` | `equipment.multiUpgrade` | `Scene/Equ/EquipmentScene.js:187` |
| `customerServiceShowConf` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `depot_list` | `union.getDepotList` | `Views/Union/UnionDepotLayer.js:254` |
| `detail` | `worldWar.getFightDetail`, `worldWarLocal.getFightDetail` | `Views/DecisiveBattle/OneRoundPlayerListDialog.js:187` |
| `donate_records` | `union.donateInfo` | `Views/Union/UnionDonationLayer.js:201` |
| `email_list` | `email.getList` | `Models/Mail.js:91` |
| `error_code` | `beauty.addBeautyExperience`, `beauty.beautyCruise`, `beauty.beautyCruiseOver` | `Scene/Beauty/BeautyScene.js:866` |
| `festivalType` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `fight_result` | `ladder.repeatedlyFight` | `Scene/Ladder/LadderCardShow.js:276` |
| `fight_result.drop_info` | `ladder.repeatedlyFight` | `Scene/Ladder/LadderCardShow.js:276` |
| `free_times` | `evolutionChest.open`, `evolutionChest.openTen` | `Scene/Awake/AwakeBoxView.js:199` |
| `gamble` | `activity.gamble` | `Views/Dialog/SlotMachinesActivities.js:351` |
| `gold_num` | `rank.like` | `Views/Table/Cell/RankTableViewCell.js:187` |
| `goods_list` | `worldWar.goodsList`, `worldWarLocal.goodsList` | `Views/DecisiveBattle/SupportPointsExchangeView.js:85` |
| `info` | `general.getOverview`, `ladderWar.getOverview`, `ladderWarLocal.getOverview`, `magic.getOverview`, `training.multiTraining`, `training.training` … | `Scene/Training/GeneralTraningScene.js:904` |
| `isAdult` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isMobile` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowAmt` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowBanShu` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowCDKey` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowGem` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowMagic` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowUnionWar` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `is_double` | `training.multiTraining`, `training.training` | `Scene/Training/GeneralTraningScene.js:904` |
| `is_expired` | `tower.towerBeStronger`, `tower.towerFight` | `Scene/Climb/StartBattleScene.js:344` |
| `is_use_keywords` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `item_list` | `item.getList`, `item.getQuickList` | `Views/StoreItemView.js:83` |
| `length` | `relationship.userEnemysInfo`, `relationship.userFriendsInfo`, `relationship.userMakeFriendsInfo`, `union.getDepotList` | `Views/Union/UnionDepotLayer.js:254` |
| `list` | `task.getList`, `task.multiRecieve`, `task.recieve`, `union.getUnionActiveList` | `Views/Dialog/DailyTaskDialog.js:84` |
| `list.length` | `task.getList` | `Views/Dialog/DailyTaskDialog.js:84` |
| `map_info` | `dungeon.fight`, `dungeon.multiKill`, `dungeon.multiKillSpecial`, `map.getUserMap`, `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `maxTeamNum` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `notice` | `menu.notice` | `Views/Dialog/AnnouncementDialog.js:313` |
| `order_list` | `product.checkOrder` | `Views/Dialog/CheckOrderDialog.js:131` |
| `player_list` | `worldWar.getPlayerList`, `worldWarLocal.getPlayerList` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:426` |
| `player_list.length` | `worldWar.getPlayerList`, `worldWarLocal.getPlayerList` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:505` |
| `point` | `worldWar.goodsList`, `worldWarLocal.goodsList` | `Views/DecisiveBattle/SupportPointsExchangeView.js:85` |
| `point.toString` | `worldWar.supportList`, `worldWarLocal.supportList` | `Views/DecisiveBattle/SupportRecordView.js:95` |
| `product_list` | `product.getList` | `Views/Table/ChargeItemTableView.js:68` |
| `pulse_multiple` | `pulse.practicePulse` | `Views/Meridians/PracticeMeridiansMainView.js:212` |
| `rank` | `rank.getRankList` | `Scene/Rank/RankScene.js:132` |
| `rechargeRate` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `result` | `beauty.addBeautyExperience`, `beauty.beautyCruise`, `beauty.beautyCruiseOver`, `beauty.beautyExchange`, `beauty.getBeautyExchangeList`, `equipment.multiUpgrade` … | `Scene/Equ/EquipmentScene.js:187` |
| `return_info` | `dungeon.multiKillSpecialInfo`, `gem.gemCompose`, `hulao.fight`, `hulao.index`, `hulao.lineup`, `hulao.recieve` … | `Views/Dialog/AutoMultiKillSelectDialog.js:199` |
| `return_info.add_list` | `tower.towerFightPass`, `union.exchangeGoods`, `warlord.warlordBatchExchangeSkill`, `wish.get` | `Views/Union/UnionShopLayer.js:163` |
| `return_info.enemys` | `relationship.userEnemysInfo`, `relationship.userFriendsInfo`, `relationship.userMakeFriendsInfo` | `Scene/Social/SocialView.js:101` |
| `return_info.equipment_info` | `tower.towerExchangeList` | `Views/ClimbLadderArtifactStorey.js:88` |
| `return_info.ext` | `product.createOrder` | `Views/Table/ChargeItemTableView.js:195` |
| `return_info.friends` | `relationship.userEnemysInfo`, `relationship.userFriendsInfo`, `relationship.userMakeFriendsInfo` | `Scene/Social/SocialView.js:101` |
| `return_info.goods_list` | `union.getGoodsList` | `Views/Union/UnionShopLayer.js:290` |
| `return_info.has_joined` | `union.info` | `Views/MainMenuBtnView.js:215` |
| `return_info.item_index` | `wish.get` | `Scene/Party/WishingScene.js:433` |
| `return_info.item_list` | `wish.get` | `Scene/Party/WishingScene.js:433` |
| `return_info.left_info` | `hulao.lineup` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.left_info.consume_fortune` | `hulao.lineup` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.left_info.general_list` | `hulao.lineup` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.left_info.total_fortune` | `hulao.lineup` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.log_content` | `union.allotDepot`, `union.chgNotice`, `union.chgSign`, `union.manage` | `Views/Union/UnionMemberLayer.js:365` |
| `return_info.order_id` | `product.createOrder` | `Views/Table/ChargeItemTableView.js:195` |
| `return_info.ordinary_price` | `dungeon.multiKillSpecialInfo` | `Views/Dialog/AutoMultiKillSelectDialog.js:199` |
| `return_info.piece_info` | `warlord.warlordPieceInfo` | `Scene/Chaos/ChaosHomeView.js:76` |
| `return_info.power_price` | `dungeon.multiKillSpecialInfo` | `Views/Dialog/AutoMultiKillSelectDialog.js:199` |
| `return_info.product_price` | `product.createOrder` | `Views/Table/ChargeItemTableView.js:195` |
| `return_info.reward_list` | `ladderWar.rewardList`, `ladderWarLocal.rewardList` | `Views/InterService/InterServiceWorshipView.js:246` |
| `return_info.search_user` | `relationship.searchUser` | `Scene/Social/SocialView.js:245` |
| `return_info.status` | `ladderWar.entry`, `ladderWarLocal.entry` | `Tools/Scene.js:52` |
| `return_info.this_team_info.team` | `team.loadTeamInfo` | `Views/ShowTeamView.js:220` |
| `return_info.union_list` | `union.info` | `Views/Union/UnionSearch.js (via this.searchBack)` |
| `return_info.user_donate` | `union.getGoodsList` | `Views/Union/UnionShopLayer.js:290` |
| `return_info.user_id` | `product.createOrder` | `Views/Table/ChargeItemTableView.js:195` |
| `return_info.user_list` | `union.userList` | `Views/Union/UnionMemberLayer.js:455` |
| `return_info.user_make_friends` | `relationship.userEnemysInfo`, `relationship.userFriendsInfo`, `relationship.userMakeFriendsInfo` | `Scene/Social/SocialView.js:101` |
| `return_info.user_role` | `union.info` | `Views/Union/UnionDepotLayer.js:235` |
| `return_info.warlord_info` | `warlord.warlordInfo` | `Scene/Chaos/ChaosFight.js:92` |
| `return_info.wish_free` | `wish.get` | `Scene/Party/WishingScene.js:433` |
| `return_info.wish_list` | `wish.info` | `Tools/Scene.js:323` |
| `reward_info` | `evolutionChest.open`, `evolutionChest.openTen`, `wine.wine` | `Scene/Store/ToastView.js (via this.onToastResult)` |
| `reward_info.hasOwnProperty` | `evolutionChest.open`, `evolutionChest.openTen` | `Scene/Awake/AwakeBoxView.js:199` |
| `server_list` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `server_list.length` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `server_logined_list` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `server_open` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `server_params` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `support_list` | `worldWar.supportList`, `worldWarLocal.supportList` | `Views/DecisiveBattle/DecisiveBattleMainView.js:480` |
| `support_rank` | `worldWar.supportRank`, `worldWarLocal.supportRank` | `Views/DecisiveBattle/DecisiveBattleMainView.js:470` |
| `task_list` | `task.multiRecieve`, `task.recieve` | `Views/Dialog/DailyTaskDialog.js:58` |
| `team_info` | `team.addTeamInfo`, `team.getMostTeamInfo` | `Views/MultiLineUpView.js:63` |
| `team_info.length` | `team.addTeamInfo`, `team.getMostTeamInfo` | `Views/MultiLineUpView.js:63` |
| `team_info.team` | `team.saveTeamInfo` | `Views/ShowTeamView.js:171` |
| `time` | `worldWar.index`, `worldWarLocal.index` | `Views/DecisiveBattle/DecisiveBattleMainView.js:266` |
| `timing_power` | `activity.receivePower` | `Scene/Party/PartyDialog.js:1693` |
| `token` | `account.index` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `training_info` | `training.trainingInfo` | `Scene/Training/GeneralTraningScene.js:783` |
| `union_info` | `union.donateInfo` | `Views/Union/UnionDonationLayer.js:201` |
| `union_war_id` | `unionWar.getFightingResult` | `Models/UnionWar.js (via setUnionWarId)` |
| `upgrade_level` | `equipment.upgrade` | `Views/Dialog/EquipmentStrengthenDialog.js:249` |
| `user_auth` | `account.index`, `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
| `user_info` | `user.chgNickname` | `Views/ChangeName.js:99` |
| `user_wine_info` | `wine.wine` | `Scene/Store/ToastView.js (via this.onToastResult)` |
| `wine_info` | `user.login` | `Profile/GameData/Mgr.js (via init_Login)` |
