// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/headers.js:1
// source line 12, bytecode pc 32
(xs.Scene = (xs.Scene || {}));
// source line 33, bytecode pc 168
xs.Utils.require([
    "Scene/SceneMgr.js",
    "Scene/TeamBuild/headers.js",
    "Scene/Skill/SkillScene.js",
    "Scene/Buddy/BuddyScene.js",
    "Scene/Buddy/BuddyView.js",
    "Scene/UnionWar/UnionWarBattleScene.js",
    "Scene/UnionWar/UnionWarChangeFormationScene.js",
    "Scene/UnionWar/UnionWarFightScene.js",
    "Scene/Gems/GemsScene.js",
    "Scene/Goddess/GoddessMainScene.js",
    "Scene/HulaoBattle/HulaoBattleMainScene.js",
    "Scene/Party/headers.js"
]);
// source line 40, bytecode pc 212
xs.Scene.SceneJsMgr.mgr.register("UpdateScene", "Scene/Update/UpdateScene.js");
// source line 42, bytecode pc 256
xs.Scene.SceneJsMgr.mgr.register("DebugScene", "Scene/Debug/DebugScene.js");
// source line 44, bytecode pc 300
xs.Scene.SceneJsMgr.mgr.register("SocialScene", "Scene/Social/headers.js");
// source line 46, bytecode pc 344
xs.Scene.SceneJsMgr.mgr.register("MailSystemScene", "Scene/Mail/headers.js");
// source line 48, bytecode pc 388
xs.Scene.SceneJsMgr.mgr.register("LoginScene", "Scene/Login/headers.js");
// source line 56, bytecode pc 486
xs.Scene.SceneJsMgr.mgr.register("LadderScene", [
    "Scene/Ladder/LadderScene.js",
    "Scene/Ladder/LadderGiftView.js",
    "Scene/Ladder/LadderGiftView_Honor.js",
    "Scene/Ladder/LadderView.js",
    "Scene/Ladder/LadderCardShow.js",
    "Scene/Ladder/LadderTenFightResultDialog.js"
]);
// source line 61, bytecode pc 548
xs.Scene.SceneJsMgr.mgr.register("LadderChartScene", [ "Scene/Ladder/LadderChartScene.js", "Scene/Ladder/LadderChartView.js" ]);
// source line 69, bytecode pc 592
xs.Scene.SceneJsMgr.mgr.register("GeneralSelectScene", "Scene/GeneralSelect/GeneralSelectScene.js");
// source line 71, bytecode pc 636
xs.Scene.SceneJsMgr.mgr.register("AchievementScene", "Scene/Achievement/AchievementScene.js");
// source line 74, bytecode pc 680
xs.Scene.SceneJsMgr.mgr.register("WorshipScene", "Scene/Worship/WorshipScene.js");
// source line 76, bytecode pc 724
xs.Scene.SceneJsMgr.mgr.register("BagScene", "Scene/Bag/BagScene.js");
// source line 78, bytecode pc 768
xs.Scene.SceneJsMgr.mgr.register("MainMenuScene", "Scene/Main/MainMenuScene.js");
// source line 80, bytecode pc 812
xs.Scene.SceneJsMgr.mgr.register("WishingScene", "Scene/Party/WishingScene.js");
// source line 88, bytecode pc 883
xs.Scene.SceneJsMgr.mgr.register("ChaosScene", [ "Scene/Chaos/ChaosScene.js", "Scene/Chaos/ChaosFight.js", "Scene/Chaos/ChaosHomeView.js" ]);
// source line 94, bytecode pc 936
xs.Scene.SceneJsMgr.mgr.register("ChaosFightScene", [ "Scene/Chaos/ChaosFightScene.js" ]);
// source line 104, bytecode pc 1007
xs.Scene.SceneJsMgr.mgr.register("CombatScene", [
    "Scene/Combat/CombatScene.js",
    "Scene/Combat/CombatUpgradeScene.js",
    "Scene/Combat/CombatCardView.js"
]);
// source line 113, bytecode pc 1069
xs.Scene.SceneJsMgr.mgr.register("DevelopScene", [ "Scene/Develop/DevelopScene.js", "Scene/Develop/AlchemyView.js" ]);
// source line 122, bytecode pc 1131
xs.Scene.SceneJsMgr.mgr.register("StoreScene", [ "Scene/Store/StoreScene.js", "Scene/Store/ToastView.js" ]);
// source line 131, bytecode pc 1193
xs.Scene.SceneJsMgr.mgr.register("FightChapters", [ "Scene/FightChapter/FightChapters.js", "Scene/FightChapter/DungeonView.js" ]);
// source line 140, bytecode pc 1246
xs.Scene.SceneJsMgr.mgr.register("AgaScene", [ "Scene/Aga/AgaScene.js" ]);
// source line 148, bytecode pc 1308
xs.Scene.SceneJsMgr.mgr.register("AwakeBoxScene", [ "Scene/Awake/AwakeBoxScene.js", "Scene/Awake/AwakeBoxView.js" ]);
// source line 155, bytecode pc 1361
xs.Scene.SceneJsMgr.mgr.register("AwakeScene", [ "Scene/Awake/AwakeScene.js" ]);
// source line 163, bytecode pc 1423
xs.Scene.SceneJsMgr.mgr.register("CopyScene", [ "Scene/Copy/BossCell.js", "Scene/Copy/CopyScene.js" ]);
// source line 170, bytecode pc 1485
xs.Scene.SceneJsMgr.mgr.register("PlantCopyScene", [ "Scene/Copy/BossCell.js", "Scene/Copy/PlantCopyScene.js" ]);
// source line 177, bytecode pc 1547
xs.Scene.SceneJsMgr.mgr.register("MemorialCopyScene", [ "Scene/Copy/BossCell.js", "Scene/Copy/MemorialCopyScene.js" ]);
// source line 184, bytecode pc 1609
xs.Scene.SceneJsMgr.mgr.register("LabourlCopyScene", [ "Scene/Copy/BossCell.js", "Scene/Copy/LabourlCopyScene.js" ]);
// source line 191, bytecode pc 1671
xs.Scene.SceneJsMgr.mgr.register("DuanWuCopyScene", [ "Scene/Copy/BossCell.js", "Scene/Copy/DuanWuCopyScene.js" ]);
// source line 198, bytecode pc 1733
xs.Scene.SceneJsMgr.mgr.register("PublicCopyScene", [ "Scene/Copy/BossCell.js", "Scene/Copy/PublicCopyScene.js" ]);
// source line 204, bytecode pc 1786
xs.Scene.SceneJsMgr.mgr.register("GeneralTrainingScene", [ "Scene/Training/GeneralTraningScene.js" ]);
// source line 213, bytecode pc 1839
xs.Scene.SceneJsMgr.mgr.register("EquipmentScene", [ "Scene/Equ/EquipmentScene.js" ]);
// source line 222, bytecode pc 1901
xs.Scene.SceneJsMgr.mgr.register("SettingScene", [ "Scene/Setting/SettingScene.js", "Scene/Setting/ContactGMScene.js" ]);
// source line 227, bytecode pc 1945
xs.Scene.SceneJsMgr.mgr.register("LoginScene", "Scene/Login/headers.js");
// source line 229, bytecode pc 1989
xs.Scene.SceneJsMgr.mgr.register("FightScene", "Scene/Fight/headers.js");
// source line 231, bytecode pc 2033
xs.Scene.SceneJsMgr.mgr.register("MailSystemScene", "Scene/Mail/headers.js");
// source line 234, bytecode pc 2077
xs.Scene.SceneJsMgr.mgr.register("MenuMenuScene", "Scene/SubMenu/MenuMenuScene.js");
// source line 235, bytecode pc 2121
xs.Scene.SceneJsMgr.mgr.register("ChallengeMenuScene", "Scene/SubMenu/ChallengeMenuScene.js");
// source line 236, bytecode pc 2165
xs.Scene.SceneJsMgr.mgr.register("GeneralMenuScene", "Scene/SubMenu/GeneralMenuScene.js");
// source line 239, bytecode pc 2218
xs.Scene.SceneJsMgr.mgr.register("PartyMenuScene", [ "Scene/SubMenu/PartyMenuScene.js" ]);
// source line 250, bytecode pc 2280
xs.Scene.SceneJsMgr.mgr.register("ClimbLadderScene", [ "Scene/Climb/ClimbLadderScene.js", "Scene/Climb/StartBattleScene.js" ]);
// source line 254, bytecode pc 2333
xs.Scene.SceneJsMgr.mgr.register("ClimbLadderRankListScene", [ "Scene/Climb/ClimbLadderRankListScene.js" ]);
// source line 259, bytecode pc 2386
xs.Scene.SceneJsMgr.mgr.register("RankScene", [ "Scene/Rank/RankScene.js" ]);
// source line 263, bytecode pc 2430
xs.Scene.SceneJsMgr.mgr.register("NewPlayerScene", "Scene/NewPlayer/NewPlayerScene.js");
// source line 270, bytecode pc 2510
xs.Scene.SceneJsMgr.mgr.register("InterServiceRegistrationScene", [
    "Scene/InterService/InterServiceRegistrationScene.js",
    "Scene/InterService/InterServiceFightScene.js",
    "Scene/InterService/PopularityRewardScene.js",
    "Scene/InterService/InterServiceWorshipScene.js"
]);
// source line 275, bytecode pc 2572
xs.Scene.SceneJsMgr.mgr.register("SelectMiracleWeaponsScene", [
    "Scene/MiracleWeapons/SelectMiracleWeaponsScene.js",
    "Scene/MiracleWeapons/MiracleWeaponScene.js"
]);
// source line 281, bytecode pc 2643
xs.Scene.SceneJsMgr.mgr.register("DecisiveBattleMainScene", [
    "Scene/DecisiveBattle/DecisiveBattleMainScene.js",
    "Scene/DecisiveBattle/SupportAwardScene.js",
    "Scene/DecisiveBattle/DecisiveBattlePreviewScene.js"
]);
// source line 286, bytecode pc 2696
xs.Scene.SceneJsMgr.mgr.register("MeridiansMainScene", [ "Scene/Meridians/MeridiansMainScene.js" ]);
// source line 290, bytecode pc 2749
xs.Scene.SceneJsMgr.mgr.register("PracticeMeridiansMainScene", [ "Scene/Meridians/PracticeMeridiansMainScene.js" ]);
// source line 297, bytecode pc 2811
xs.Scene.SceneJsMgr.mgr.register("BeautyScene", [ "Scene/Beauty/BeautyCell.js", "Scene/Beauty/BeautyScene.js" ]);
// source line 304, bytecode pc 2864
xs.Scene.SceneJsMgr.mgr.register("SkillRefiningScene", [ "Scene/SkillRefining/SkillRefiningScene.js" ]);
