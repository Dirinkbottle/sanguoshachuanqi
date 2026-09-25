// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/yoka_dobest/svn/PublishJsToJsc/src_jsc_2.2.6/data_cn/plan/sgs_global_conf.js:1
// source line 1, bytecode pc 2814
(xs.Cfg.System.sgs_global_conf = {
    autoCultivateVipLevel: {
        logical_str: "autoCultivateVipLevel",
        logical_data: "{\"vip_level\":8,\"user_level\":40}",
        desc: "开启武将自动修炼等级"
    },
    CfgVersion: {
        logical_str: "CfgVersion",
        logical_data: "cABC201801301800trunk1900_1517306534",
        desc: "策划文件版本控制"
    },
    Chaos_Unlock_Level: { logical_str: "Chaos_Unlock_Level", logical_data: "8", desc: "抢夺的解锁等级" },
    Climb_Unlock_Level: { logical_str: "Climb_Unlock_Level", logical_data: "15", desc: "过关斩将的解锁等级" },
    DungeonMultiSpecialConf: {
        logical_str: "DungeonMultiSpecialConf",
        logical_data: "{\"vip_level\":12,\"power_ids\":[600050,600007]}",
        desc: "关卡99连杀配置,vip_level 为vip 限制等级,power_ids 为增加体力的道具,吃的顺序就是配置的顺序"
    },
    EliteMap_Unlock_Level: { logical_str: "EliteMap_Unlock_Level", logical_data: "9", desc: "精英地图解锁等级" },
    EvolutionUniversalPiece: { logical_str: "EvolutionUniversalPiece", logical_data: "600209", desc: "万能碎片道具id" },
    FestivalType: {
        logical_str: "FestivalType",
        logical_data: "9",
        desc: "节日副本类型标识1：春节副本|2：植树节副本|3：清明副本|4：劳动副本|5：端午副本|,6：暑期副本|, 7：周年庆副本|, 8：双旦副本|,9：新年副本|,'0'"
    },
    Fight_Speed2_Unlock_Level: { logical_str: "Fight_Speed2_Unlock_Level", logical_data: "5", desc: "达到多少级开始可以解锁战斗2倍速度" },
    Fight_Speed3_Unlock_Level: {
        logical_str: "Fight_Speed3_Unlock_Level",
        logical_data: "{\"vip_level\":5,\"user_level\":30}",
        desc: "战斗三倍速解锁等级"
    },
    First_Recharge_Reward: { logical_str: "First_Recharge_Reward", logical_data: "791758", desc: "首冲奖励礼包id" },
    FreshmanChooseGeneralId: {
        logical_str: "FreshmanChooseGeneralId",
        logical_data: "[\"121018\",\"131006\",\"141007\",\"121013\"]",
        desc: "新手选择妹子列表"
    },
    GemChgPropertyConf: {
        logical_str: "GemChgPropertyConf",
        logical_data: "{\"1\":1,\"2\":1,\"3\":1,\"4\":1}",
        desc: "洗练配置，key为孔类型(1攻,2防,3血,4智)，value为权重"
    },
    GemChgPropertyGoldConf: {
        logical_str: "GemChgPropertyGoldConf",
        logical_data: "{\"1\":50,\"2\":225,\"3\":1000}",
        desc: "洗练消费元宝配置，key为锁孔个数，value为元宝"
    },
    GemLevelExtraConf: {
        logical_str: "GemLevelExtraConf",
        logical_data: "{\"3\":10,\"5\":15,\"7\":20,\"9\":25}",
        desc: "等级共振加成,key为等级，value为加成百分比"
    },
    GemLevelMax: { logical_str: "GemLevelMax", logical_data: "7", desc: "宝石最大等级" },
    GemPropertyExtraConf: { logical_str: "GemPropertyExtraConf", logical_data: "10", desc: "属性共振加成(百分比)" },
    Gold_Exchange_Ratio: { logical_str: "Gold_Exchange_Ratio", logical_data: "10", desc: "元宝兑换比" },
    GuideChapter_Improve: { logical_str: "GuideChapter_Improve", logical_data: "502007", desc: "装备强化引导【发起的关卡ID】" },
    GuideChapter_Surrender: { logical_str: "GuideChapter_Surrender", logical_data: "503002", desc: "臣服引导的解锁关卡" },
    GuideChapter_Surrender_GeneralId: { logical_str: "GuideChapter_Surrender_GeneralId", logical_data: "142022", desc: "臣服引导的相关武将" },
    GuideChapter_Treasure: { logical_str: "GuideChapter_Treasure", logical_data: "501006", desc: "关卡宝箱引导【发起的关卡ID】" },
    GuideChapter_Treasure_Next: { logical_str: "GuideChapter_Treasure_Next", logical_data: "501007", desc: "解锁宝箱引导的宝箱id" },
    GuideLevel_Chaos: { logical_str: "GuideLevel_Chaos", logical_data: "8", desc: "抢夺引导【发起的等级】" },
    GuideLevel_Climb: { logical_str: "GuideLevel_Climb", logical_data: "15", desc: "过关斩将引导【发起的等级】" },
    GuideLevel_Develop: { logical_str: "GuideLevel_Develop", logical_data: "7", desc: "武将修炼引导【发起的等级】" },
    GuideLevel_EliteDuplicate: { logical_str: "GuideLevel_EliteDuplicate", logical_data: "9", desc: "精英副本引导解锁等级" },
    GuideLevel_InTeam: { logical_str: "GuideLevel_InTeam", logical_data: "5", desc: "上阵3号武将引导【发起的等级】" },
    GuideLevel_Ladder: { logical_str: "GuideLevel_Ladder", logical_data: "6", desc: "天梯引导【发起的等级】" },
    GuideLevel_Lieutenant: { logical_str: "GuideLevel_Lieutenant", logical_data: "10", desc: "副将引导【发起的等级】" },
    GuideLevel_RefineEquip: { logical_str: "GuideLevel_RefineEquip", logical_data: "18", desc: "装备精炼引导【发起等级】" },
    ItemIdBattleBigCondition: { logical_str: "ItemIdBattleBigCondition", logical_data: "600100", desc: "天梯加10次挑战次数的道具" },
    ItemIdBattleWithVipCondition: { logical_str: "ItemIdBattleWithVipCondition", logical_data: "600018", desc: "受vip控制的挑战文书(天梯)" },
    ItemIdEnergyWithoutVipCondition: { logical_str: "ItemIdEnergyWithoutVipCondition", logical_data: "600008", desc: "不受vip控制的精力" },
    ItemIdEnergyWithVipCondition: { logical_str: "ItemIdEnergyWithVipCondition", logical_data: "600029", desc: "受vip控制的精力道具" },
    ItemIdPowerWithoutVipCondition: { logical_str: "ItemIdPowerWithoutVipCondition", logical_data: "600007", desc: "不受vip控制的体力道具" },
    ItemIdPowerWithVipCondition: { logical_str: "ItemIdPowerWithVipCondition", logical_data: "600028", desc: "受vip控制的体力道具" },
    ladderFightConf: {
        logical_str: "ladderFightConf",
        logical_data: "{\"vip_level\":5,\"user_level\":25}",
        desc: "天梯快杀控制"
    },
    ladderRepeatedlyFight: {
        logical_str: "ladderRepeatedlyFight",
        logical_data: "{\"vip_level\":7,\"user_level\":50}",
        desc: "天梯10杀配置,vip_level为vip等级限制"
    },
    Ladder_Unlock_Level: { logical_str: "Ladder_Unlock_Level", logical_data: "6", desc: "天梯的解锁等级" },
    Ladder_War_Unlock_Level: { logical_str: "Ladder_War_Unlock_Level", logical_data: "40", desc: "跨服争霸解锁等级" },
    MainSceneTipStringIDBegin: {
        logical_str: "MainSceneTipStringIDBegin",
        logical_data: "110000001",
        desc: "主界面武将说的tips范围的起始stringId"
    },
    MainSceneTipStringIDEnd: {
        logical_str: "MainSceneTipStringIDEnd",
        logical_data: "110000100",
        desc: "主界面武将说的tips范围的结束stringId"
    },
    MeridianConf: {
        logical_str: "MeridianConf",
        logical_data: "{\"user_level\":35,\"item_id\":600095}",
        desc: "经脉系统配置（user_level：主公等级；item_id：脉力道具ID）"
    },
    MostTeamConf: {
        logical_str: "MostTeamConf",
        logical_data: "{\"1\":{\"vip_level\":0,\"gold\":0,\"user_level\":10},\"2\":{\"vip_level\":0,\"gold\":500,\"user_level\":30},\"3\":{\"vip_level\":0,\"gold\":5000,\"user_level\":60},\"4\":{\"vip_level\":0,\"gold\":10000,\"user_level\":100},\"5\":{\"vip_level\":0,\"gold\":20000,\"user_level\":119}}",
        desc: "多阵容配置,1代表几号位,vip_level代表vip限制,gold代表开启元宝,user_level代表玩家等级限制"
    },
    OneSacrificeRestriction: {
        logical_str: "OneSacrificeRestriction",
        logical_data: "{\"600117\":171014,\"600118\":124001,\"600119\":114001,\"600120\":134001,\"600121\":171015,\"600122\":112012,\"600123\":122012,\"600124\":131002,\"600200\":122014,\"600201\":131020,\"600202\":142013,\"600203\":141017,\"600204\":131004,\"600229\":111001,\"600244\":111026,\"600278\":121021}",
        desc: "特殊的极品传承符限制,分号前面为道具id后面为武将id"
    },
    OptCfgVersion: { logical_str: "OptCfgVersion", logical_data: "coptopt_1416293853", desc: "运营文件版本控制" },
    PulseConf: {
        logical_str: "PulseConf",
        logical_data: "{\"pulse_count\":\"5\",\"unlock_level\":\"35\"}",
        desc: "pulse_count 每日玩家练脉机会,unlock_level 解锁等级"
    },
    QUICK_ITEM_ID_DUNGEON_CD: { logical_str: "QUICK_ITEM_ID_DUNGEON_CD", logical_data: "600030", desc: "清除关卡CD道具ID" },
    QUICK_ITEM_ID_DUNGEON_NUM: { logical_str: "QUICK_ITEM_ID_DUNGEON_NUM", logical_data: "600031", desc: "增加关卡挑战次数道具" },
    QUICK_ITEM_ID_ELITE_DUNGEON_NUM: { logical_str: "QUICK_ITEM_ID_ELITE_DUNGEON_NUM", logical_data: "600035", desc: "增加精英关卡挑战次数道具" },
    RankLikeRewardConf: {
        logical_str: "RankLikeRewardConf",
        logical_data: "{\"type\":0,\"number\":1,\"1\":30}",
        desc: "排行榜点赞奖励"
    },
    RankLikeTimesConf: { logical_str: "RankLikeTimesConf", logical_data: "3", desc: "排行榜每日点赞次数" },
    RefineEquip_Unlock_Level: { logical_str: "RefineEquip_Unlock_Level", logical_data: "18", desc: "装备精炼解锁等级" },
    RES_ID_MY_FST_GENERAL: { logical_str: "RES_ID_MY_FST_GENERAL", logical_data: "180002", desc: "第一个武将的资源id" },
    RES_ID_MY_GIRL: { logical_str: "RES_ID_MY_GIRL", logical_data: "180001", desc: "妹子的资源id" },
    RevertEnergySeconds: { logical_str: "RevertEnergySeconds", logical_data: "1800", desc: "精力恢复时间" },
    RevertPowerSeconds: { logical_str: "RevertPowerSeconds", logical_data: "360", desc: "体力精力恢复时间" },
    SkillAdvancedShowConf: {
        logical_str: "SkillAdvancedShowConf",
        logical_data: "{\"unlock_vip_level\":10,\"show_level\":1}",
        desc: "技能进阶的一些展示配置"
    },
    SkillRefineUnlockLevel: { logical_str: "SkillRefineUnlockLevel", logical_data: "30", desc: "技能精练开放等级" },
    SkillRefineUnlockVipLevel: { logical_str: "SkillRefineUnlockVipLevel", logical_data: "8", desc: "技能精练3级以后所需vip等级" },
    UnionWarCollectActiveTime: {
        logical_str: "UnionWarCollectActiveTime",
        logical_data: "{\"start_week\":1,\"start_time\":\"00:00:00\",\"end_week\":4,\"end_time\":\"14:00:00\"}",
        desc: "活跃值的统计开始结束时间"
    },
    UnionWarFightingTime: {
        logical_str: "UnionWarFightingTime",
        logical_data: "{\"local\":{\"2\":{\"battle_formation_time\":{\"start_week\":5,\"start_time\":\"20:00:00\",\"end_week\":5,\"end_time\":\"20:30:00\"},\"fight_time\":{\"start_week\":5,\"start_time\":\"20:30:00\",\"end_week\":5,\"end_time\":\"21:30:00\"},\"show_time\":{\"start_week\":5,\"start_time\":\"21:30:00\",\"end_week\":5,\"end_time\":\"22:00:00\"}},\"4\":{\"battle_formation_time\":{\"start_week\":5,\"start_time\":\"18:00:00\",\"end_week\":5,\"end_time\":\"18:30:00\"},\"fight_time\":{\"start_week\":5,\"start_time\":\"18:30:00\",\"end_week\":5,\"end_time\":\"19:30:00\"},\"show_time\":{\"start_week\":5,\"start_time\":\"19:30:00\",\"end_week\":5,\"end_time\":\"20:00:00\"}},\"8\":{\"battle_formation_time\":{\"start_week\":5,\"start_time\":\"16:00:00\",\"end_week\":5,\"end_time\":\"16:30:00\"},\"fight_time\":{\"start_week\":5,\"start_time\":\"16:30:00\",\"end_week\":5,\"end_time\":\"17:30:00\"},\"show_time\":{\"start_week\":5,\"start_time\":\"17:30:00\",\"end_week\":5,\"end_time\":\"18:00:00\"}},\"16\":{\"battle_formation_time\":{\"start_week\":5,\"start_time\":\"14:00:00\",\"end_week\":5,\"end_time\":\"14:30:00\"},\"fight_time\":{\"start_week\":5,\"start_time\":\"14:30:00\",\"end_week\":5,\"end_time\":\"15:30:00\"},\"show_time\":{\"start_week\":5,\"start_time\":\"15:30:00\",\"end_week\":5,\"end_time\":\"16:00:00\"}}},\"international\":{\"2\":{\"battle_formation_time\":{\"start_week\":7,\"start_time\":\"20:00:00\",\"end_week\":7,\"end_time\":\"20:30:00\"},\"fight_time\":{\"start_week\":7,\"start_time\":\"20:30:00\",\"end_week\":7,\"end_time\":\"21:30:00\"},\"show_time\":{\"start_week\":7,\"start_time\":\"21:30:00\",\"end_week\":7,\"end_time\":\"22:00:00\"}},\"4\":{\"battle_formation_time\":{\"start_week\":7,\"start_time\":\"18:00:00\",\"end_week\":7,\"end_time\":\"18:30:00\"},\"fight_time\":{\"start_week\":7,\"start_time\":\"18:30:00\",\"end_week\":7,\"end_time\":\"19:30:00\"},\"show_time\":{\"start_week\":7,\"start_time\":\"19:30:00\",\"end_week\":7,\"end_time\":\"20:00:00\"}},\"8\":{\"battle_formation_time\":{\"start_week\":7,\"start_time\":\"16:00:00\",\"end_week\":7,\"end_time\":\"16:30:00\"},\"fight_time\":{\"start_week\":7,\"start_time\":\"16:30:00\",\"end_week\":7,\"end_time\":\"17:30:00\"},\"show_time\":{\"start_week\":7,\"start_time\":\"17:30:00\",\"end_week\":7,\"end_time\":\"18:00:00\"}},\"16\":{\"battle_formation_time\":{\"start_week\":7,\"start_time\":\"14:00:00\",\"end_week\":7,\"end_time\":\"14:30:00\"},\"fight_time\":{\"start_week\":7,\"start_time\":\"14:30:00\",\"end_week\":7,\"end_time\":\"15:30:00\"},\"show_time\":{\"start_week\":7,\"start_time\":\"15:30:00\",\"end_week\":7,\"end_time\":\"16:00:00\"}}}}",
        desc: "公会战战斗时间设置[包含布阵等]"
    },
    UnionWarSignUpTime: {
        logical_str: "UnionWarSignUpTime",
        logical_data: "{\"start_week\":4,\"start_time\":\"14:00:00\",\"end_week\":5,\"end_time\":\"14:00:00\"}",
        desc: "报名开始结束时间"
    },
    WorldBoss_Unlock_Level: { logical_str: "WorldBoss_Unlock_Level", logical_data: "40", desc: "虎牢关的解锁等级" },
    World_Chat_Free_Num: { logical_str: "World_Chat_Free_Num", logical_data: "10", desc: "聊天世界频道免费次数" },
    World_Chat_Message_Interval: { logical_str: "World_Chat_Message_Interval", logical_data: "3", desc: "聊天世界频道消息时间间隔(秒)" },
    World_Chat_Price: { logical_str: "World_Chat_Price", logical_data: "30", desc: "聊天世界频道消息需要元宝数" }
});
