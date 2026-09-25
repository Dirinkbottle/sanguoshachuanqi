// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Guide/GuideMgr.js:1
// source line 416, bytecode pc 407
(xs.Guide.GuideMgr = (xs.Guide.GuideMgr || {
    name: "GuideMgr",
    m_serverStep: null,
    b_isOver: true,
    m_useCfg: {},
    b_isNeedChangeScene: false,
    m_workScene: null,
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    startDebugStep: function(step) {
    var _step, cfg, plugin;
    // source line 24, bytecode pc 22
    this.log(("##Guide## startDebugStep step : " + step));
    // source line 26, bytecode pc 29
    (_step = step);
    // source line 27, bytecode pc 49
    (cfg = this.getGuideCfgByStep(_step));
    // source line 29, bytecode pc 72
    this.dump("\"##Guide## startDebugStep cfg", cfg);
    // source line 31, bytecode pc 111
    (plugin = xs.Guide.GuideStepPlugin.getPlugin(cfg.type));
    // source line 32, bytecode pc 130
    plugin.workInCfg(cfg);
    // source line 34, bytecode pc 145
    this.setWorkScene(null);
},
    setUseCfg: function(cfg) {
    // source line 38, bytecode pc 9
    (this.m_useCfg = cfg);
},
    setIsOver: function(isOver) {
    // source line 42, bytecode pc 22
    this.log(("setIsOver " + isOver));
    // source line 44, bytecode pc 32
    (this.b_isOver = isOver);
    if (this.b_isOver) {
        // source line 46, bytecode pc 70
        xs.Views.Mgr.hideHollowOutLayer();
    }
},
    getIsOver: function() {
    // source line 50, bytecode pc 6
    return this.b_isOver;
},
    setIsNeedChangeScene: function(isNeed) {
    // source line 53, bytecode pc 9
    (this.b_isNeedChangeScene = isNeed);
},
    getIsNeedChangeScene: function() {
    // source line 56, bytecode pc 6
    return this.b_isNeedChangeScene;
},
    setWorkScene: function(scene) {
    // source line 59, bytecode pc 9
    (this.m_workScene = scene);
},
    getWorkScene: function() {
    // source line 62, bytecode pc 6
    return this.m_workScene;
},
    _getPlayerPrimaryLocationKey: function() {
    var player;
    // source line 65, bytecode pc 34
    xs.assert(this.m_useCfg.locationKey, "##Guide## locationKey can not be null!");
    // source line 66, bytecode pc 85
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 67, bytecode pc 118
    return ((this.m_useCfg.locationKey + "_") + player.getPlayerId());
},
    isGuideStep_Surrender_MainMenu: function() {
    var _step;
    // source line 73, bytecode pc 15
    (_step = this.getGuideStep());
    // source line 74, bytecode pc 25
    return (_step === "180102");
},
    get_Model_Surrender_General: function() {
    var _id_general, _ret;
    // source line 80, bytecode pc 41
    (_id_general = xs.Tools.CfgData.getGlobalConf("GuideChapter_Surrender_GeneralId", "142022"));
    // source line 81, bytecode pc 81
    (_ret = xs.Models.General.createWithBase(("" + _id_general)));
    // source line 82, bytecode pc 85
    return _ret;
},
    getGuideStep: function() {
    var step;
    // source line 86, bytecode pc 42
    (step = xs.Utils.LocalStore.getItem(this._getPlayerPrimaryLocationKey()));
    if (!step) {
        // source line 88, bytecode pc 86
        xs.assert(this.m_useCfg.defaultStep, "##Guide## defaultStep can not be null!");
        // source line 89, bytecode pc 101
        (step = this.m_useCfg.defaultStep);
    }
    // source line 92, bytecode pc 124
    this.log(("getGuideStep　" + step));
    // source line 94, bytecode pc 128
    return step;
},
    isGuideStepLocated: function() {
    var step;
    if ((xs.guide_sub_always === true)) {
        // source line 99, bytecode pc 18
        return false;
    }
    // source line 102, bytecode pc 61
    (step = xs.Utils.LocalStore.getItem(this._getPlayerPrimaryLocationKey()));
    if (step) {
        // source line 104, bytecode pc 71
        return true;
    }
    // source line 106, bytecode pc 73
    return false;
},
    setGuideStep: function(step) {
    // source line 110, bytecode pc 22
    this.log(("##Guide## setGuideStep : " + step));
    // source line 112, bytecode pc 66
    xs.Utils.LocalStore.setItem(this._getPlayerPrimaryLocationKey(), step);
},
    nextStep: function() {
    var curStep, cfg, nextStep;
    // source line 116, bytecode pc 15
    (curStep = this.getGuideStep());
    // source line 117, bytecode pc 35
    (cfg = this.getGuideCfgByStep(curStep));
    // source line 118, bytecode pc 47
    (nextStep = cfg.nextStep);
    // source line 119, bytecode pc 74
    xs.log_guide(("##Guide## nextStep : " + nextStep));
    if (!nextStep) {
        // source line 121, bytecode pc 102
        this.log("##Guide##guide is over!");
        // source line 122, bytecode pc 117
        this.setIsOver(true);
        // source line 123, bytecode pc 119
        return void 0;
    }
    // source line 125, bytecode pc 136
    this.setGuideStep(nextStep);
    // source line 126, bytecode pc 149
    this.start();
},
    getGuideCfgByStep: function(step) {
    // source line 129, bytecode pc 10
    return this.m_useCfg[step];
},
    setServerStep: function(serverStep) {
    var localStep, lastDotStep, nextDotStep, startSep;
    // source line 132, bytecode pc 14
    this.setIsOver(false);
    // source line 133, bytecode pc 24
    (this.m_severStep = serverStep);
    // source line 136, bytecode pc 40
    (localStep = this.getGuideStep());
    // source line 137, bytecode pc 63
    this.log(("##Guide## localStep : " + localStep));
    // source line 139, bytecode pc 83
    (lastDotStep = this._getLastDotStepOfStep(localStep));
    // source line 141, bytecode pc 106
    (nextDotStep = this._getNextDotStepOfStep(this.m_severStep));
    // source line 143, bytecode pc 129
    this.log(("##Guide## lastDotStep : " + lastDotStep));
    // source line 144, bytecode pc 152
    this.log(("##Guide## nextDotStep : " + nextDotStep));
    if (((lastDotStep === null) || (nextDotStep === null))) {
        // source line 148, bytecode pc 188
        this.setIsOver(true);
    } else {
        // source line 151, bytecode pc 217
        (startSep = this._getBiggerStep(lastDotStep, nextDotStep));
        // source line 153, bytecode pc 240
        this.log("##Guide## startSep : ", startSep);
        // source line 155, bytecode pc 257
        this.setGuideStep(startSep);
    }
},
    checkAndGuide: function(guide) {
    var dungeonId, dungeon, dungeonIdNext, _id_general, _rs, _modelGeneral, level;
    // source line 162, bytecode pc 26
    xs.log_guide("##Guide## checkAndGuide", guide);
    if (!xs.leadGuideOpen) {
        // source line 166, bytecode pc 44
        return false;
    }
    if (!this.getIsOver()) {
        // source line 171, bytecode pc 64
        return false;
    }
    // source line 175, bytecode pc 68
    switch (guide) {
        case xs.Constant_Guide_Treasure:
        // source line 177, bytecode pc 296
        (dungeonId = xs.Utils.parseStringSafe(xs.Tools.CfgData.getGlobalConf("GuideChapter_Treasure")));
        // source line 178, bytecode pc 362
        (dungeon = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap().getDungeonById(dungeonId));
        // source line 179, bytecode pc 420
        (dungeonIdNext = xs.Utils.parseStringSafe(xs.Tools.CfgData.getGlobalConf("GuideChapter_Treasure_Next")));
        // source line 180, bytecode pc 443
        this.log(("Constant_Guide_Treasure :" + dungeonId));
        // source line 181, bytecode pc 466
        this.log(("Constant_Guide_Treasure next:" + dungeonIdNext));
        // source line 182, bytecode pc 508
        return this._checkAndGuideChapter_treasure(dungeon, xs.Cfg.Guide.TreasureGuideCfg, dungeonIdNext);
        break;
        case xs.Constant_Guide_Improve:
        // source line 185, bytecode pc 571
        (dungeonId = xs.Utils.parseStringSafe(xs.Tools.CfgData.getGlobalConf("GuideChapter_Improve")));
        // source line 186, bytecode pc 637
        (dungeon = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap().getDungeonById(dungeonId));
        // source line 187, bytecode pc 675
        return this._checkAndGuideChapter(dungeon, xs.Cfg.Guide.ImproveGuideCfg);
        break;
        case xs.Constant_Guide_Surrender:
        // source line 190, bytecode pc 722
        (_id_general = xs.Tools.CfgData.getGlobalConf("GuideChapter_Surrender_GeneralId", "142022"));
        // source line 191, bytecode pc 773
        (_rs = xs.gd_mgr.getInstance().Generals.getById(("" + _id_general)));
        if (!xs.Utils.isEmpty(_rs)) {
            // source line 195, bytecode pc 817
            (_modelGeneral = _rs[0]);
        } else {
            // source line 199, bytecode pc 824
            return false;
        }
        // source line 202, bytecode pc 882
        (dungeonId = xs.Utils.parseStringSafe(xs.Tools.CfgData.getGlobalConf("GuideChapter_Surrender")));
        // source line 204, bytecode pc 905
        this.log(("GuideChapter_Surrender:" + dungeonId));
        // source line 205, bytecode pc 971
        (dungeon = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap().getDungeonById(dungeonId));
        // source line 206, bytecode pc 1009
        return this._checkAndGuideChapter(dungeon, xs.Cfg.Guide.SurrenderGuideCfg);
        break;
        case xs.Constant_Guide_InTeam:
        // source line 209, bytecode pc 1072
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_InTeam")));
        // source line 210, bytecode pc 1110
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.InTeamGuideCfg);
        break;
        case xs.Constant_Guide_Ladder:
        // source line 213, bytecode pc 1173
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_Ladder")));
        // source line 214, bytecode pc 1211
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.LadderGuideCfg);
        break;
        case xs.Constant_Guide_Chaos:
        // source line 217, bytecode pc 1274
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_Chaos")));
        // source line 218, bytecode pc 1312
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.ChaosGuideCfg);
        break;
        case xs.Constant_Guide_Develop:
        // source line 221, bytecode pc 1375
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_Develop")));
        // source line 222, bytecode pc 1413
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.DevelopGuideCfg);
        break;
        case xs.Constant_Guide_Climb:
        // source line 225, bytecode pc 1476
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_Climb")));
        // source line 226, bytecode pc 1514
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.ClimbGuideCfg);
        break;
        case xs.Constant_Guide_Lieutenant:
        // source line 229, bytecode pc 1577
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_Lieutenant")));
        // source line 230, bytecode pc 1615
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.LieutenantGuideCfg);
        break;
        case xs.Constant_Guide_EliteDuplicate:
        // source line 233, bytecode pc 1678
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_EliteDuplicate")));
        // source line 234, bytecode pc 1716
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.EliteDuplicateGuideCfg);
        break;
        case xs.Constant_Guide_RefineEquip:
        // source line 237, bytecode pc 1779
        (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("GuideLevel_RefineEquip")));
        // source line 238, bytecode pc 1817
        return this._checkAndGuideLevel(level, xs.Cfg.Guide.RefineEquipGuideCfg);
        default:
        break;
    }
    // source line 245, bytecode pc 1824
    return false;
},
    _checkAndGuideChapter_treasure: function(dungeon, cfg, treasureId) {
    var curMap;
    if (dungeon) {
        // source line 252, bytecode pc 58
        (curMap = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap());
        if ((dungeon.isPlayed() && ((curMap.getDungeonById(treasureId) !== null) && ((curMap.getDungeonById(treasureId) !== undefined) && (curMap.getDungeonById(treasureId).getBoxStatus() === 2))))) {
            // source line 260, bytecode pc 188
            this.setUseCfg(cfg);
            if (!this.isGuideStepLocated()) {
                // source line 262, bytecode pc 231
                this.setGuideStep(this.m_useCfg.defaultStep);
                // source line 263, bytecode pc 246
                this.setIsOver(false);
                // source line 264, bytecode pc 259
                this.start();
                // source line 265, bytecode pc 261
                return true;
            }
        }
    }
    // source line 270, bytecode pc 263
    return false;
},
    _checkAndGuideChapter: function(dungeon, cfg) {
    if (dungeon) {
        // source line 279, bytecode pc 30
        this.dump("GuideMgr _checkAndGuideChapter cfg", cfg);
        // source line 280, bytecode pc 91
        this.dump("GuideMgr _checkAndGuideChapter dungeon", ((("" + dungeon.isCanIn()) + "|") + dungeon.isNewest()));
        if ((dungeon.isCanIn() && !dungeon.isNewest())) {
            // source line 283, bytecode pc 148
            this.setUseCfg(cfg);
            if (!this.isGuideStepLocated()) {
                // source line 285, bytecode pc 191
                this.setGuideStep(this.m_useCfg.defaultStep);
                // source line 286, bytecode pc 206
                this.setIsOver(false);
                // source line 287, bytecode pc 219
                this.start();
                // source line 288, bytecode pc 240
                this.dump("GuideMgr _checkAndGuideChapter return ", true);
                // source line 289, bytecode pc 242
                return true;
            }
        }
    }
    // source line 294, bytecode pc 263
    this.dump("GuideMgr _checkAndGuideChapter return ", false);
    // source line 295, bytecode pc 265
    return false;
},
    _checkAndGuideLevel: function(level, cfg) {
    var playerLv;
    // source line 298, bytecode pc 61
    (playerLv = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 299, bytecode pc 94
    this.log(((("##Guide## level : " + level) + " playerLevel : ") + playerLv));
    if ((level === playerLv)) {
        // source line 301, bytecode pc 123
        this.setUseCfg(cfg);
        // source line 302, bytecode pc 148
        this.setGuideStep(this.m_useCfg.defaultStep);
        // source line 303, bytecode pc 163
        this.setIsOver(false);
        // source line 304, bytecode pc 176
        this.start();
        // source line 305, bytecode pc 178
        return true;
    }
    // source line 308, bytecode pc 180
    return false;
},
    _getBiggerStep: function(step1, step2) {
    var cfg, isBig;
    // source line 311, bytecode pc 19
    (cfg = this.getGuideCfgByStep(step1));
    // source line 313, bytecode pc 24
    (isBig = true);
    while ((cfg.nextStep !== null)) {
        if ((cfg.nextStep === step2)) {
            // source line 317, bytecode pc 52
            (isBig = false);
            break;
        }
        // source line 320, bytecode pc 82
        (cfg = this.getGuideCfgByStep(cfg.nextStep));
        // source line 321, bytecode pc 109
        xs.assert(cfg, "cfg missed step");
    }
    if (isBig) {
        // source line 324, bytecode pc 137
        return step1;
    } else {
        // source line 326, bytecode pc 146
        return step2;
    }
},
    _getLastStepOfStep: function(nextStep) {
    var step;
    for (var step in this.m_useCfg) {
        if (!(this.m_useCfg.hasOwnProperty(step))) continue;
        if (!((this.m_useCfg[step].nextStep === nextStep))) continue;
        // source line 333, bytecode pc 72
        return step;
    }
    // source line 337, bytecode pc 109
    xs.warn(("##Guide## cfg is not contain nextStep " + nextStep));
    // source line 338, bytecode pc 111
    return null;
},
    _getLastDotStepOfStep: function(step) {
    var cfg, lastStep, lastCfg;
    // source line 341, bytecode pc 19
    (cfg = this.getGuideCfgByStep(step));
    if (!cfg.nextStep) {
        // source line 345, bytecode pc 35
        return null;
    }
    if (cfg.isDot) {
        // source line 349, bytecode pc 52
        return step;
    }
    // source line 351, bytecode pc 72
    (lastStep = this._getLastStepOfStep(step));
    if (!lastStep) {
        // source line 353, bytecode pc 108
        xs.warn(("no lastStep of step + " + step));
        // source line 354, bytecode pc 112
        return step;
    }
    // source line 356, bytecode pc 132
    (lastCfg = this.getGuideCfgByStep(lastStep));
    while (!lastCfg.isDot) {
        // source line 358, bytecode pc 158
        (lastStep = this._getLastStepOfStep(lastStep));
        if (!lastStep) {
            // source line 360, bytecode pc 179
            return this.m_useCfg.defaultStep;
        }
        // source line 362, bytecode pc 199
        (lastCfg = this.getGuideCfgByStep(lastStep));
        // source line 363, bytecode pc 230
        xs.assert(lastCfg, ("cfg missed step : " + lastStep));
    }
    // source line 365, bytecode pc 249
    return lastStep;
},
    _getNextDotStepOfStep: function(step) {
    var cfg;
    // source line 368, bytecode pc 19
    (cfg = this.getGuideCfgByStep(step));
    while (!cfg.isDot) {
        // source line 370, bytecode pc 37
        (step = cfg.nextStep);
        if (!step) {
            // source line 372, bytecode pc 65
            this.log("##Guide##next dot guide is over!");
            // source line 373, bytecode pc 80
            this.setIsOver(true);
            // source line 374, bytecode pc 82
            return null;
        }
        // source line 376, bytecode pc 102
        (cfg = this.getGuideCfgByStep(step));
        // source line 377, bytecode pc 133
        xs.assert(cfg, ("cfg missed step : " + step));
    }
    // source line 379, bytecode pc 152
    return step;
},
    start: function(startStep) {
    var step, cfg, plugin;
    // source line 383, bytecode pc 26
    xs.Views.Mgr.hideHollowOutLayer();
    if (this.getIsOver()) {
        // source line 385, bytecode pc 45
        return void 0;
    }
    if (startStep) {
        // source line 388, bytecode pc 70
        this.setGuideStep(startStep);
    }
    // source line 390, bytecode pc 86
    (step = this.getGuideStep());
    // source line 391, bytecode pc 106
    (cfg = this.getGuideCfgByStep(step));
    // source line 392, bytecode pc 133
    xs.log_guide(("##Guide## start step : " + step));
    // source line 394, bytecode pc 170
    xs.Tools.Statistic.event(("guide_" + step));
    // source line 396, bytecode pc 209
    (plugin = xs.Guide.GuideStepPlugin.getPlugin(cfg.type));
    // source line 397, bytecode pc 228
    plugin.workInCfg(cfg);
    // source line 399, bytecode pc 243
    this.setWorkScene(null);
},
    _end: function(step) {
    var _step;
    if (this.getIsOver()) {
        // source line 403, bytecode pc 18
        return false;
    }
    // source line 405, bytecode pc 34
    (_step = this.getGuideStep());
    if (step) {
        if ((step !== _step)) {
            // source line 409, bytecode pc 56
            return false;
        }
    }
    // source line 412, bytecode pc 83
    xs.log_guide(("##Guide## end step : " + _step));
    // source line 413, bytecode pc 85
    return true;
},
    endStepBySequence: function(steps) {
    var isInStep, i;
    // source line 418, bytecode pc 22
    this.dump("endStepBySequence-begin", steps);
    // source line 420, bytecode pc 27
    (isInStep = false);
    // source line 422, bytecode pc 32
    (i = 0);
    while ((i < steps.length)) {
        if ((this._end(steps[i]) === true)) {
            // source line 424, bytecode pc 70
            (isInStep = true);
            break;
        }
        // source line 422, bytecode pc 88
        (i = (+i + 1));
    }
    if (isInStep) {
        // source line 430, bytecode pc 127
        this.nextStep();
    }
    // source line 433, bytecode pc 150
    this.dump("endStepBySequence-end", steps);
}
}));
