// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/CfgData.js:1
// source line 278, bytecode pc 122
(xs.Tools.CfgData = (xs.Tools.CfgData || {
    name: "xs.Tools.CfgData ",
    isRecordExistByTypeAndKey: function(type, key) {
    var _records, _record;
    // source line 17, bytecode pc 19
    (_records = this.readRecordByType(type));
    // source line 19, bytecode pc 30
    (_record = _records[key]);
    if (((_record === null) || (_record === undefined))) {
        // source line 22, bytecode pc 57
        return false;
    } else {
        // source line 25, bytecode pc 64
        return true;
    }
},
    readRecordByTypeAndKey: function(type, key) {
    var _dataCfg, _record, defaultKey, valueDef;
    // source line 37, bytecode pc 42
    this.assert(key, (((("readRecordByTypeAndKey need valid key: " + key) + "(") + type) + ")"));
    // source line 39, bytecode pc 62
    (_dataCfg = this.getCfgDataByType(type));
    // source line 41, bytecode pc 89
    this.assert(_dataCfg, "need _dataCfg", type);
    // source line 43, bytecode pc 122
    this.log(((("type = " + type) + "; key = ") + key));
    // source line 44, bytecode pc 133
    (_record = _dataCfg[key]);
    if (((_record === null) || (_record === undefined))) {
        // source line 51, bytecode pc 178
        (defaultKey = this.getDefaultKey(type));
        // source line 52, bytecode pc 189
        (valueDef = _dataCfg[defaultKey]);
        // source line 53, bytecode pc 232
        this.warn(((((("_record not found! type=" + type) + " key=") + key) + " use defaultKey=") + defaultKey));
        // source line 54, bytecode pc 239
        (_record = valueDef);
    }
    // source line 58, bytecode pc 276
    this.assert(_record, ((("_record not found! type=" + type) + " key=") + key));
    // source line 60, bytecode pc 280
    return _record;
},
    readRecordByTypeAndKeyNoDefault: function(type, key) {
    var _dataCfg, _record;
    // source line 68, bytecode pc 19
    (_dataCfg = this.getCfgDataByType(type));
    // source line 70, bytecode pc 46
    this.assert(_dataCfg, "need _dataCfg", type);
    // source line 74, bytecode pc 57
    (_record = _dataCfg[key]);
    // source line 83, bytecode pc 61
    return _record;
},
    readRecordByType: function(type) {
    var _dataCfg, _record;
    // source line 88, bytecode pc 19
    (_dataCfg = this.getCfgDataByType(type));
    // source line 90, bytecode pc 46
    this.assert(_dataCfg, "need _dataCfg", type);
    // source line 92, bytecode pc 53
    (_record = _dataCfg);
    // source line 94, bytecode pc 57
    return _record;
},
    getGlobalConf: function(string, valueDef) {
    var _conf;
    // source line 101, bytecode pc 30
    (_conf = this.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_Global, string));
    if (((_conf === null) || (_conf === undefined))) {
        // source line 104, bytecode pc 88
        this.warn(((("getGlobalConf use default:" + string) + " | ") + valueDef));
        // source line 105, bytecode pc 92
        return valueDef;
    }
    // source line 110, bytecode pc 166
    return (xs.Utils.isJsonString(_conf.logical_data) ? JSON.parse(_conf.logical_data) : _conf.logical_data);
},
    getCfgDataByType: function(type) {
    // source line 115, bytecode pc 3
    switch (type) {
        case xs.Constant_CfgDataType_CombatLevel:
        // source line 117, bytecode pc 824
        return xs.Cfg.System.sgs_combat_level_conf;
        case xs.Constant_CfgDataType_Equipment:
        // source line 120, bytecode pc 845
        return xs.Cfg.System.sgs_equipments;
        case xs.Constant_CfgDataType_Equipment_Upgrade:
        // source line 123, bytecode pc 866
        return xs.Cfg.System.sgs_equipment_upgrade_conf;
        case xs.Constant_CfgDataType_General:
        // source line 126, bytecode pc 887
        return xs.Cfg.System.sgs_generals;
        case xs.Constant_CfgDataType_GeneralLevel:
        // source line 129, bytecode pc 908
        return xs.Cfg.System.sgs_general_level_conf;
        case xs.Constant_CfgDataType_General_Insight:
        // source line 132, bytecode pc 929
        return xs.Cfg.System.sgs_general_insight_conf;
        case xs.Constant_CfgDataType_Skill:
        // source line 135, bytecode pc 950
        return xs.Cfg.System.sgs_skills;
        case xs.Constant_CfgDataType_Skill_Upgrade:
        // source line 138, bytecode pc 971
        return xs.Cfg.System.sgs_skill_upgrade_conf;
        case xs.Constant_CfgDataType_Fate:
        // source line 141, bytecode pc 992
        return xs.Cfg.System.sgs_fates;
        case xs.Constant_CfgDataType_Map:
        // source line 144, bytecode pc 1013
        return xs.Cfg.System.sgs_map_conf;
        case xs.Constant_CfgDataType_Res:
        // source line 147, bytecode pc 1034
        return xs.Cfg.System.sgs_resource;
        case xs.Constant_CfgDataType_i18n:
        // source line 150, bytecode pc 1055
        return xs.Cfg.System.sgs_i18n;
        case xs.Constant_CfgDataType_Item:
        // source line 153, bytecode pc 1076
        return xs.Cfg.System.sgs_item;
        case xs.Constant_CfgDataType_Kits:
        // source line 156, bytecode pc 1097
        return xs.Cfg.System.sgs_kits;
        case xs.Constant_CfgDataType_Vip:
        // source line 159, bytecode pc 1118
        return xs.Cfg.System.sgs_vip_level_conf;
        case xs.Constant_CfgDataType_SkillEffect:
        // source line 162, bytecode pc 1139
        return xs.Cfg.System.sgs_skill_effect;
        case xs.Constant_CfgDataType_Player_Upgrade:
        // source line 165, bytecode pc 1160
        return xs.Cfg.System.sgs_user_level_conf;
        case xs.Constant_CfgDataType_Random_Name:
        // source line 168, bytecode pc 1181
        return xs.Cfg.System.sgs_random_name;
        case xs.Constant_CfgDataType_Eated_Exp:
        // source line 171, bytecode pc 1202
        return xs.Cfg.System.sgs_eated_exp_conf;
        case xs.Constant_CfgDataType_Upgrade_Coin:
        // source line 174, bytecode pc 1223
        return xs.Cfg.System.sgs_upgrade_coin_conf;
        case xs.Constant_CfgDataType_Upgrade_Exp:
        // source line 177, bytecode pc 1244
        return xs.Cfg.System.sgs_upgrade_exp_conf;
        case xs.Constant_CfgDataType_Sell:
        // source line 180, bytecode pc 1265
        return xs.Cfg.System.sgs_sell_conf;
        case xs.Constant_CfgDataType_General_Insight_GrowType:
        // source line 183, bytecode pc 1286
        return xs.Cfg.System.sgs_insight_grow_type;
        case xs.Constant_CfgDataType_Surrender:
        // source line 186, bytecode pc 1307
        return xs.Cfg.System.sgs_surrender;
        case xs.Constant_CfgDataType_General_Surrender:
        // source line 189, bytecode pc 1328
        return xs.Cfg.System.sgs_general_surrender;
        case xs.Constant_CfgDataType_Plot_Conf:
        // source line 192, bytecode pc 1349
        return xs.Cfg.System.sgs_dungeon_plot_conf;
        case xs.Constant_CfgDataType_Plot_Dialog:
        // source line 195, bytecode pc 1370
        return xs.Cfg.System.sgs_dungeon_plot_dialog;
        case xs.Constant_CfgDataType_Global:
        // source line 198, bytecode pc 1391
        return xs.Cfg.System.sgs_global_conf;
        case xs.Constant_CfgDataType_Equ_Refine_GrowType:
        // source line 201, bytecode pc 1412
        return xs.Cfg.System.sgs_refine_conf;
        case xs.Constant_CfgDataType_LieutennantAttrPlus:
        // source line 204, bytecode pc 1433
        return xs.Cfg.System.sgs_lieutenant_skill;
        case xs.Constant_CfgDataType_Buddy:
        // source line 207, bytecode pc 1454
        return xs.Cfg.System.sgs_buddy_conf;
        case xs.Constant_CfgDataType_UnionWar_Battle:
        // source line 210, bytecode pc 1475
        return xs.Cfg.System.sgs_union_war_battle_conf;
        case xs.Constant_CfgDataType_MapAndDungon_Data:
        // source line 212, bytecode pc 1496
        return xs.Cfg.System.sgs_dungeon_conf;
        case xs.Constant_CfgDataType_Gem:
        // source line 214, bytecode pc 1517
        return xs.Cfg.System.sgs_gem;
        case xs.Constant_CfgDataType_MagicalEquPoint:
        // source line 216, bytecode pc 1538
        return xs.Cfg.System.sgs_magic_buff_conf;
        break;
        case xs.Constant_CfgDataType_Skill_Advanced:
        // source line 219, bytecode pc 1564
        return xs.Cfg.System.sgs_skill_advanced_conf;
        break;
        case xs.Constant_CfgDataType_Decisive:
        // source line 222, bytecode pc 1590
        return xs.Cfg.System.sgs_world_war_schedule;
        break;
        case xs.Constant_CfgDataType_Goddess:
        // source line 225, bytecode pc 1616
        return xs.Cfg.System.sgs_godness;
        break;
        case xs.Constant_CfgDataType_GoddessSurface:
        // source line 228, bytecode pc 1642
        return xs.Cfg.System.sgs_godness_skin;
        break;
        case xs.Constant_CfgDataType_HulaoReward:
        // source line 231, bytecode pc 1668
        return xs.Cfg.System.sgs_hulao_reward_conf;
        break;
        case xs.Constant_CfgDataType_Melt:
        // source line 234, bytecode pc 1694
        return xs.Cfg.System.sgs_melt_conf;
        case xs.Constant_CfgDataType_Upgrade_Guide:
        // source line 236, bytecode pc 1715
        return xs.Cfg.System.sgs_function_level_conf;
        break;
        case xs.Constant_CfgDataType_MeridianTop:
        // source line 239, bytecode pc 1741
        return xs.Cfg.System.sgs_meridian_top_conf;
        break;
        case xs.Constant_CfgDataType_Meridian:
        // source line 242, bytecode pc 1767
        return xs.Cfg.System.sgs_meridian_conf;
        break;
        case xs.Constant_CfgDataType_MeridianPoint:
        // source line 245, bytecode pc 1793
        return xs.Cfg.System.sgs_meridian_point_conf;
        break;
        case xs.Constant_CfgDataType_GoddessFate:
        // source line 248, bytecode pc 1819
        return xs.Cfg.System.sgs_godness_fates;
        break;
        case xs.Constant_CfgDataType_SkillMelt:
        // source line 251, bytecode pc 1845
        return xs.Cfg.System.sgs_skill_melt_conf;
        break;
        case xs.Constant_CfgDataType_Evolution:
        // source line 254, bytecode pc 1871
        return xs.Cfg.System.sgs_evolution;
        break;
        case xs.Constant_CfgDataType_Evolution_open_conf:
        // source line 257, bytecode pc 1897
        return xs.Cfg.System.sgs_evolution_open_conf;
        break;
        case xs.Constant_CfgDataType_Evolution_buff_conf:
        // source line 260, bytecode pc 1923
        return xs.Cfg.System.sgs_evolution_buff_conf;
        break;
        case xs.Constant_CfgDataType_Evolution_surrender:
        // source line 263, bytecode pc 1949
        return xs.Cfg.System.sgs_evolution_surrender;
        break;
        case xs.Constant_CfgDataType_Beauty:
        // source line 266, bytecode pc 1975
        return xs.Cfg.System.sgs_beauty_conf_detail;
        break;
        case xs.Constant_CfgDataType_Skill_refine_conf:
        // source line 269, bytecode pc 2001
        return xs.Cfg.System.sgs_skill_refine_conf;
        break;
        default:
        // source line 272, bytecode pc 2033
        xs.log(("type = " + type));
        // source line 273, bytecode pc 2066
        xs.warn((("getCfgDataByType error! type " + type) + " is not found!"));
        // source line 274, bytecode pc 2068
        return null;
    }
},
    getDefaultKey: function(type) {
    // source line 279, bytecode pc 3
    switch (type) {
        case xs.Constant_CfgDataType_CombatLevel:
        // source line 281, bytecode pc 479
        return "0";
        case xs.Constant_CfgDataType_Equipment:
        case xs.Constant_CfgDataType_Equipment_Upgrade:
        // source line 285, bytecode pc 485
        return "200000";
        case xs.Constant_CfgDataType_General:
        // source line 288, bytecode pc 491
        return "100000";
        case xs.Constant_CfgDataType_GeneralLevel:
        case xs.Constant_CfgDataType_General_Insight:
        // source line 292, bytecode pc 497
        return "000000";
        case xs.Constant_CfgDataType_Skill:
        // source line 295, bytecode pc 503
        return "300000";
        case xs.Constant_CfgDataType_Skill_Upgrade:
        // source line 298, bytecode pc 509
        return "000000";
        case xs.Constant_CfgDataType_Fate:
        // source line 301, bytecode pc 515
        return "411003";
        case xs.Constant_CfgDataType_Map:
        // source line 304, bytecode pc 521
        return "500001";
        case xs.Constant_CfgDataType_Res:
        // source line 307, bytecode pc 527
        return "100000";
        case xs.Constant_CfgDataType_i18n:
        // source line 310, bytecode pc 533
        return "0000000";
        case xs.Constant_CfgDataType_Item:
        // source line 313, bytecode pc 539
        return "700000";
        case xs.Constant_CfgDataType_Kits:
        // source line 316, bytecode pc 545
        return "000000";
        case xs.Constant_CfgDataType_Vip:
        // source line 319, bytecode pc 551
        return "1";
        case xs.Constant_CfgDataType_SkillEffect:
        // source line 322, bytecode pc 557
        return "30300111";
        case xs.Constant_CfgDataType_Player_Upgrade:
        // source line 325, bytecode pc 563
        return "1";
        case xs.Constant_CfgDataType_Random_Name:
        // source line 328, bytecode pc 569
        return "first_name";
        case xs.Constant_CfgDataType_Eated_Exp:
        case xs.Constant_CfgDataType_Upgrade_Coin:
        case xs.Constant_CfgDataType_Upgrade_Exp:
        case xs.Constant_CfgDataType_Sell:
        case xs.Constant_CfgDataType_General_Insight_GrowType:
        case xs.Constant_CfgDataType_Surrender:
        // source line 336, bytecode pc 575
        return "1";
        case xs.Constant_CfgDataType_General_Surrender:
        // source line 339, bytecode pc 581
        return "111005";
        case xs.Constant_CfgDataType_Plot_Conf:
        // source line 342, bytecode pc 587
        return "501005";
        case xs.Constant_CfgDataType_Plot_Dialog:
        // source line 345, bytecode pc 593
        return "50100501";
        case xs.Constant_CfgDataType_Global:
        // source line 348, bytecode pc 599
        return "Chaos_Unlock_Level";
        case xs.Constant_CfgDataType_Equ_Refine_GrowType:
        // source line 351, bytecode pc 605
        return "1";
        case xs.Constant_CfgDataType_LieutennantAttrPlus:
        // source line 354, bytecode pc 611
        return "600001";
        case xs.Constant_CfgDataType_Beauty:
        // source line 356, bytecode pc 617
        return "1";
        default:
        // source line 358, bytecode pc 650
        xs.warn((("getCfgDataByType error! type " + type) + " is not found!"));
        // source line 359, bytecode pc 652
        return null;
    }
}
}));
