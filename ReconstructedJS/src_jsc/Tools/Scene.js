// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Scene.js:1
// source line 461, bytecode pc 202
(xs.Tools.Scene = (xs.Tools.Scene || {
    gotoLadder: function() {
    if (xs.Profile.Permission.isUnlock(xs.Constant_Permission_Ladder)) {
        // source line 18, bytecode pc 89
        xs.Profile.GameData.Mgr.getInstance().LadderInfo.clearLastFightData();
        // source line 19, bytecode pc 122
        xs.Scene.Mgr.changeSceneByName("LadderScene");
        // source line 20, bytecode pc 164
        xs.Guide.GuideMgr.endStepBySequence([ "120103" ]);
        // source line 21, bytecode pc 166
        return true;
    } else {
        // source line 23, bytecode pc 236
        xs.Views.Mgr.showToast(xs.Profile.Permission.getLockHitString(xs.Constant_Permission_Ladder));
        // source line 24, bytecode pc 238
        return false;
    }
},
    gotoClimp: function() {
    if (xs.Profile.Permission.isUnlock(xs.Constant_Permission_Climp)) {
        // source line 33, bytecode pc 74
        xs.Scene.Mgr.changeSceneByName("ClimbLadderScene");
        // source line 34, bytecode pc 76
        return true;
    } else {
        // source line 37, bytecode pc 146
        xs.Views.Mgr.showToast(xs.Profile.Permission.getLockHitString(xs.Constant_Permission_Climp));
        // source line 38, bytecode pc 148
        return false;
    }
},
    gotoChaos: function() {
    if (xs.Profile.Permission.isUnlock(xs.Constant_Permission_Chaos)) {
        // source line 47, bytecode pc 74
        xs.Scene.Mgr.changeSceneByName("ChaosScene");
        // source line 48, bytecode pc 76
        return true;
    } else {
        // source line 50, bytecode pc 146
        xs.Views.Mgr.showToast(xs.Profile.Permission.getLockHitString(xs.Constant_Permission_Chaos));
        // source line 51, bytecode pc 148
        return false;
    }
},
    gotoLadderWar: function() {
    if (xs.Profile.Permission.isUnlock(xs.Constant_Permission_LadderWar)) {
        // source line 75, bytecode pc 159
        xs.Tools.Net.requestInterServiceMainInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    if ((data.return_info.status == 1)) {
        // source line 64, bytecode pc 54
        xs.Scene.Mgr.saveStatus("InterServiceRegistrationSceneKey", true);
        // source line 67, bytecode pc 108
        xs.Scene.Mgr.changeSceneByName("InterServiceRegistrationScene", { data: data, local: false });
    } else {
        // source line 70, bytecode pc 173
        xs.Views.Mgr.showToast(xs.Tools.String.createString("interService_waiting"));
    }
    // source line 72, bytecode pc 175
    return true;
}.bind(this), this);
    } else {
        // source line 77, bytecode pc 229
        xs.Views.Mgr.showToast(xs.Profile.Permission.getLockHitString(xs.Constant_Permission_LadderWar));
        // source line 78, bytecode pc 231
        return false;
    }
},
    gotoSmallLadderWar: function() {
    if (xs.Profile.Permission.isUnlock(xs.Constant_Permission_LadderWar)) {
        // source line 103, bytecode pc 159
        xs.Tools.Net.requestLocalInterServiceMainInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    if ((data.return_info.status == 1)) {
        // source line 92, bytecode pc 54
        xs.Scene.Mgr.saveStatus("LocaInterServiceRegistrationSceneKey", true);
        // source line 95, bytecode pc 108
        xs.Scene.Mgr.changeSceneByName("InterServiceRegistrationScene", { data: data, local: true });
    } else {
        // source line 98, bytecode pc 173
        xs.Views.Mgr.showToast(xs.Tools.String.createString("localInterService_waiting"));
    }
    // source line 100, bytecode pc 175
    return true;
}.bind(this), this);
    } else {
        // source line 105, bytecode pc 229
        xs.Views.Mgr.showToast(xs.Profile.Permission.getLockHitString(xs.Constant_Permission_LadderWar));
        // source line 106, bytecode pc 231
        return false;
    }
},
    gotoSmallDecisiveBattle: function() {
    // source line 131, bytecode pc 112
    xs.Tools.Net.requestDecisiveBattleMainInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, true, function(data) {
    if (data.info) {
        // source line 117, bytecode pc 47
        xs.Scene.Mgr.saveStatus("LocalDecisiveBattleMainSceneKey", true);
        // source line 120, bytecode pc 106
        xs.Scene.Mgr.changeSceneByName("DecisiveBattleMainScene", { param: data.info, local: true });
    }
}, function(data) {
    if ((data.error_code === "e_world_war_1002")) {
        // source line 126, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("localDecisive_noOpen"));
        // source line 128, bytecode pc 80
        return true;
    }
}, this);
},
    gotoWorldBoss: function() {
    if (xs.Profile.Permission.isUnlock(xs.Constant_Permission_WorldBoss)) {
        // source line 146, bytecode pc 152
        xs.Tools.Net.requestHulaoMain({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 142, bytecode pc 41
    xs.Scene.Mgr.changeSceneByName("HulaoBattleMainScene", data.return_info);
}, function(data) {
}, this);
    } else {
        // source line 148, bytecode pc 222
        xs.Views.Mgr.showToast(xs.Profile.Permission.getLockHitString(xs.Constant_Permission_WorldBoss));
    }
},
    gotoDecisiveBattle: function() {
    // source line 180, bytecode pc 112
    xs.Tools.Net.requestDecisiveBattleMainInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, false, function(data) {
    if (data.info) {
        // source line 165, bytecode pc 47
        xs.Scene.Mgr.saveStatus("DecisiveBattleMainSceneKey", true);
        // source line 168, bytecode pc 106
        xs.Scene.Mgr.changeSceneByName("DecisiveBattleMainScene", { param: data.info, local: false });
    }
}, function(data) {
    if ((data.error_code === "e_world_war_1002")) {
        // source line 175, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("decisive_noOpen"));
        // source line 177, bytecode pc 80
        return true;
    }
}, this);
},
    gotoNewPlayerFight: function(funcFinish) {
    var _fightData, _storyCfg;
    // source line 190, bytecode pc 23
    (_fightData = new xs.Models.FightInfo());
    // source line 191, bytecode pc 38
    _fightData.init();
    // source line 192, bytecode pc 74
    _fightData.setFightProcess(xs.Cfg.Fight.NewPlayerFight);
    // source line 196, bytecode pc 121
    (_storyCfg = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Plot_Dialog, "98000401"));
    // source line 205, bytecode pc 173
    this.gotoFight(xs.Constant_FightScene_Type_NewPlayer, _fightData, [ _storyCfg, null ], null, funcFinish);
},
    gotoSkillPreviewFight: function(skillName, funcFinish) {
    var _objProcess, _idx, _cfg, _fightData;
    // source line 211, bytecode pc 9
    (_objProcess = {});
    // source line 212, bytecode pc 43
    (_objProcess.init = xs.Cfg.Fight.SkillPreviewFight.init);
    // source line 213, bytecode pc 92
    (_objProcess.rounds = (xs.Cfg.Fight.SkillPreview.Cfg[skillName] || []));
    // source line 216, bytecode pc 125
    (_idx = xs.Cfg.Fight.SkillPreview.Idx[skillName]);
    if (_idx) {
        // source line 220, bytecode pc 170
        (_cfg = xs.Cfg.Fight.SkillPreview.Cfg[_idx]);
        if (((_idx === "defend") || (_idx === "defend_ours"))) {
            // source line 231, bytecode pc 219
            (_cfg[1].skill = (skillName + "_0"));
            // source line 232, bytecode pc 246
            (_cfg[2].params.to[0].event = skillName);
            // source line 233, bytecode pc 267
            (_cfg[3].skill = (skillName + "_1"));
        } else {
            // source line 236, bytecode pc 286
            (_cfg[0].skill = skillName);
            if (_cfg[1]) {
                // source line 240, bytecode pc 310
                (_cfg[1].skill = skillName);
            }
        }
    } else {
        // source line 248, bytecode pc 348
        (_cfg = xs.Cfg.Fight.SkillPreview.Cfg[skillName]);
    }
    if (!_cfg) {
        // source line 252, bytecode pc 394
        xs.Views.Mgr.showToast(("skill not found:" + skillName));
        // source line 253, bytecode pc 396
        return void 0;
    }
    // source line 256, bytecode pc 419
    (_objProcess.rounds = (_cfg || []));
    // source line 257, bytecode pc 446
    xs.log_hsq("_objProcess", _objProcess);
    // source line 259, bytecode pc 470
    (_fightData = new xs.Models.FightInfo());
    // source line 260, bytecode pc 485
    _fightData.init();
    // source line 261, bytecode pc 504
    _fightData.setFightProcess(_objProcess);
    // source line 262, bytecode pc 531
    xs.log_hsq("_fightData", _fightData);
    // source line 270, bytecode pc 581
    this.gotoFight(xs.Constant_FightScene_Type_SkillPreview, _fightData, [ null, null ], null, funcFinish);
},
    gotoTestFight: function(funcFinish) {
    var _fightData, _storyCfg;
    // source line 276, bytecode pc 23
    (_fightData = new xs.Models.FightInfo());
    // source line 277, bytecode pc 38
    _fightData.init();
    // source line 278, bytecode pc 69
    _fightData.setFightProcess(ts.Debug.FightServerData);
    // source line 282, bytecode pc 116
    (_storyCfg = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Plot_Dialog, "99010101"));
    // source line 292, bytecode pc 168
    this.gotoFight(xs.Constant_FightScene_Type_Climp, _fightData, [ _storyCfg, null ], null, funcFinish);
},
    gotoEvolutionChest: function() {
    // source line 320, bytecode pc 136
    xs.Tools.Net.requestEvolutionChestList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var mEvoChest;
    // source line 303, bytecode pc 45
    (mEvoChest = xs.Profile.GameData.PushInfo.getInstance().getEvolutionChestInfo());
    // source line 304, bytecode pc 64
    mEvoChest.loadJson(params);
    if (mEvoChest.getResult()) {
        // source line 307, bytecode pc 116
        xs.Scene.Mgr.changeSceneByName("AwakeBoxScene");
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_1005")) {
        // source line 315, bytecode pc 45
        xs.Views.Mgr.hideDialog();
        // source line 316, bytecode pc 47
        return true;
    }
    // source line 318, bytecode pc 49
    return false;
}.bind(this), this);
},
    gotoBeautyScene: function() {
    // source line 342, bytecode pc 68
    xs.Tools.Net.requestBeautyInit(null, function(params) {
    var mBeautyData;
    // source line 326, bytecode pc 45
    (mBeautyData = xs.Profile.GameData.PushInfo.getInstance().getBeautyData());
    // source line 327, bytecode pc 64
    mBeautyData.loadJson(params);
    if (mBeautyData.getResult()) {
        // source line 329, bytecode pc 116
        xs.Scene.Mgr.changeSceneByName("BeautyScene");
    } else {
        // source line 331, bytecode pc 181
        xs.Views.Mgr.showToast(xs.Tools.String.createString("BeautyNoOpen"));
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_1005")) {
        // source line 337, bytecode pc 45
        xs.Views.Mgr.hideDialog();
        // source line 338, bytecode pc 47
        return true;
    }
    // source line 340, bytecode pc 49
    return false;
}.bind(this), this);
},
    gotoCopyScene: function() {
    if (((xs.festivalType != null) && (xs.festivalType > 0))) {
        // source line 351, bytecode pc 68
        xs.dump("----xs.festivalType----===", xs.festivalType);
        // source line 353, bytecode pc 79
        switch (xs.festivalType) {
            case 1:
            // source line 355, bytecode pc 160
            xs.Scene.Mgr.changeSceneByName("CopyScene");
            break;
            case 2:
            // source line 358, bytecode pc 198
            xs.Scene.Mgr.changeSceneByName("PlantCopyScene");
            break;
            case 3:
            // source line 361, bytecode pc 236
            xs.Scene.Mgr.changeSceneByName("MemorialCopyScene");
            break;
            case 4:
            // source line 364, bytecode pc 274
            xs.Scene.Mgr.changeSceneByName("LabourlCopyScene");
            break;
            case 5:
            // source line 367, bytecode pc 312
            xs.Scene.Mgr.changeSceneByName("DuanWuCopyScene");
            break;
            case 6:
            // source line 370, bytecode pc 350
            xs.Scene.Mgr.changeSceneByName("PublicCopyScene");
            break;
            case 7:
            // source line 373, bytecode pc 388
            xs.Scene.Mgr.changeSceneByName("PublicCopyScene");
            break;
            case 8:
            // source line 376, bytecode pc 426
            xs.Scene.Mgr.changeSceneByName("PublicCopyScene");
            break;
            case 9:
            // source line 379, bytecode pc 464
            xs.Scene.Mgr.changeSceneByName("PublicCopyScene");
            break;
            default:
            // source line 383, bytecode pc 502
            xs.Scene.Mgr.changeSceneByName("PublicCopyScene");
            break;
        }
    }
},
    gotoWishingScene: function() {
    // source line 455, bytecode pc 136
    xs.Tools.Net.requestWishingContent({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var mWishin, wishList;
    // source line 425, bytecode pc 45
    (mWishin = xs.Profile.GameData.PushInfo.getInstance().getWishinInfo());
    // source line 428, bytecode pc 69
    mWishin.loadJson(params.return_info);
    if (mWishin.isPlay()) {
        // source line 435, bytecode pc 105
        (wishList = params.return_info.wish_list);
        if ((wishList.length === 0)) {
            // source line 437, bytecode pc 180
            xs.Views.Mgr.showToast(xs.Tools.String.createString("party_wishListNull"));
        } else {
            // source line 439, bytecode pc 218
            xs.Scene.Mgr.changeSceneByName("WishingScene");
        }
    } else {
        // source line 443, bytecode pc 283
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_230"));
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_1005")) {
        // source line 450, bytecode pc 45
        xs.Views.Mgr.hideDialog();
        // source line 451, bytecode pc 47
        return true;
    }
    // source line 453, bytecode pc 49
    return false;
}.bind(this), this);
},
    gotoFight: function(fightType, fightData, storyDataArray, resModel, funcFinish) {
    var _openType;
    // source line 463, bytecode pc 13
    (_openType = xs.Constant_FightScene_OpenType_Pve);
    // source line 469, bytecode pc 17
    switch (fightType) {
        default:
        // source line 471, bytecode pc 191
        this.error("fightType error");
        break;
        case xs.Constant_FightScene_Type_Map:
        // source line 474, bytecode pc 223
        xs.assert(resModel, "Fight MapMode need resModel");
        break;
        case xs.Constant_FightScene_Type_Ladder:
        // source line 477, bytecode pc 242
        (_openType = xs.Constant_FightScene_OpenType_Pvp);
        break;
        case xs.Constant_FightScene_Type_Chaos:
        // source line 480, bytecode pc 261
        (_openType = xs.Constant_FightScene_OpenType_Pvp);
        break;
        case xs.Constant_FightScene_Type_FriendFight:
        // source line 483, bytecode pc 280
        (_openType = xs.Constant_FightScene_OpenType_Pvp);
        break;
        case xs.Constant_FightScene_Type_UnionWar:
        // source line 486, bytecode pc 299
        (_openType = xs.Constant_FightScene_OpenType_Pvp);
        break;
        case xs.Constant_FightScene_Type_Climp:
        break;
        case xs.Constant_FightScene_Type_NewPlayer:
        break;
        case xs.Constant_FightScene_Type_SkillPreview:
        break;
        case xs.Constant_FightScene_Type_Copy:
        break;
        case xs.Constant_FightScene_Type_WorldBoss:
        break;
    }
    // source line 511, bytecode pc 432
    xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: fightType,
    openType: _openType,
    fightData: fightData,
    storyData: storyDataArray,
    resModel: resModel,
    funcFinish: funcFinish
});
}
}));
