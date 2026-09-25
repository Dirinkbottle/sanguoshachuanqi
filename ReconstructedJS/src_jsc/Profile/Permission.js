// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/Permission.js:1
// source line 211, bytecode pc 292
(xs.Profile.Permission = (xs.Profile.Permission || {
    name: "xs.Profile.Permission",
    Cfg: [
        { key: "Ladder_Unlock_Level" },
        { key: "Chaos_Unlock_Level" },
        { key: "Climb_Unlock_Level" },
        { key: "WorldBoss_Unlock_Level" },
        { key: "Ladder_War_Unlock_Level" }
    ],
    getUnLockLevel: function(idx) {
    var _keyGlobal, _level;
    // source line 64, bytecode pc 18
    (_keyGlobal = this.Cfg[idx].key);
    // source line 65, bytecode pc 52
    (_level = xs.Tools.CfgData.getGlobalConf(_keyGlobal));
    // source line 66, bytecode pc 78
    return xs.Utils.parseIntSafe(_level);
},
    getLockHitString: function(idx) {
    var _string;
    // source line 79, bytecode pc 35
    (_string = xs.Tools.String.createString("auto_name_52"));
    // source line 81, bytecode pc 76
    return _string.convWithArgs([ this.getUnLockLevel(idx) ]);
},
    isLock: function(idx) {
    var _level, _levelUnlock;
    // source line 86, bytecode pc 61
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 88, bytecode pc 81
    (_levelUnlock = this.getUnLockLevel(idx));
    // source line 89, bytecode pc 89
    return (_levelUnlock > _level);
},
    isUnlock: function(idx) {
    // source line 93, bytecode pc 17
    return !this.isLock(idx);
},
    getUserStarSpeed: function() {
    if (this.isUnLock_fightSpeed3().result) {
        // source line 97, bytecode pc 24
        return 2;
    }
    // source line 100, bytecode pc 26
    return 1;
},
    isUnLock_fightSpeed2: function() {
    var level, _levelPlayer, _ret;
    // source line 106, bytecode pc 59
    (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("Fight_Speed2_Unlock_Level", 1)));
    // source line 108, bytecode pc 111
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 110, bytecode pc 122
    (_ret = (_levelPlayer >= level));
    // source line 112, bytecode pc 145
    this.log(("isUnLock_fightSpeed2 " + _ret));
    // source line 114, bytecode pc 149
    return _ret;
},
    isUnLock_fightSpeed3: function() {
    var fightCfg, level, _levelPlayer, vipLevel, _vipLevelPlayer, _result, descStr;
    // source line 118, bytecode pc 46
    (fightCfg = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_Global, "Fight_Speed3_Unlock_Level"));
    // source line 119, bytecode pc 66
    (level = (fightCfg.user_level || 30));
    // source line 120, bytecode pc 118
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 122, bytecode pc 138
    (vipLevel = (fightCfg.vip_level || 5));
    // source line 123, bytecode pc 190
    (_vipLevelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 126, bytecode pc 226
    (_result = (((_levelPlayer >= level) || (_vipLevelPlayer >= vipLevel)) ? true : false));
    // source line 128, bytecode pc 293
    (descStr = xs.Tools.String.createString("str_Speed3Fail").convWithArgs([ level, vipLevel ]));
    // source line 132, bytecode pc 316
    return { result: _result, desc: descStr }
},
    isUnLock_dungeonCD: function() {
    var level, _levelPlayer;
    // source line 138, bytecode pc 60
    (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("vip_mkill_clearcd", 6)));
    // source line 139, bytecode pc 112
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 140, bytecode pc 120
    return (_levelPlayer >= level);
},
    isUnLock_quickFight: function() {
    var ladderQuickFightCfg, level, _levelPlayer, vipLevel, _vipLevelPlayer, _result, descStr;
    // source line 145, bytecode pc 46
    (ladderQuickFightCfg = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_Global, "ladderFightConf"));
    // source line 148, bytecode pc 66
    (level = (ladderQuickFightCfg.user_level || 25));
    // source line 149, bytecode pc 118
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 151, bytecode pc 138
    (vipLevel = (ladderQuickFightCfg.vip_level || 5));
    // source line 152, bytecode pc 190
    (_vipLevelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 154, bytecode pc 226
    (_result = (((_levelPlayer >= level) || (_vipLevelPlayer >= vipLevel)) ? true : false));
    // source line 156, bytecode pc 293
    (descStr = xs.Tools.String.createString("unLock_quickFight_level").convWithArgs([ level, vipLevel ]));
    // source line 160, bytecode pc 316
    return { result: _result, desc: descStr }
},
    isUnLock_ladderTenFight: function() {
    var ladderTenFightCfg, level, _levelPlayer, vipLevel, _vipLevelPlayer, _result, descStr;
    // source line 164, bytecode pc 46
    (ladderTenFightCfg = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_Global, "ladderRepeatedlyFight"));
    // source line 167, bytecode pc 66
    (level = (ladderTenFightCfg.user_level || 50));
    // source line 168, bytecode pc 118
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 170, bytecode pc 138
    (vipLevel = (ladderTenFightCfg.vip_level || 7));
    // source line 171, bytecode pc 190
    (_vipLevelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 173, bytecode pc 226
    (_result = (((_levelPlayer >= level) || (_vipLevelPlayer >= vipLevel)) ? true : false));
    // source line 175, bytecode pc 293
    (descStr = xs.Tools.String.createString("CanNotLadderTenFight").convWithArgs([ level, vipLevel ]));
    // source line 179, bytecode pc 316
    return { result: _result, desc: descStr }
},
    isUnLock_AutoPractice: function() {
    var ladderTenFightCfg, level, _levelPlayer, vipLevel, _vipLevelPlayer, _result, descStr;
    // source line 183, bytecode pc 46
    (ladderTenFightCfg = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(xs.Constant_CfgDataType_Global, "autoCultivateVipLevel"));
    // source line 186, bytecode pc 66
    (level = (ladderTenFightCfg.user_level || 40));
    // source line 187, bytecode pc 118
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 189, bytecode pc 138
    (vipLevel = (ladderTenFightCfg.vip_level || 8));
    // source line 190, bytecode pc 190
    (_vipLevelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 192, bytecode pc 226
    (_result = (((_levelPlayer >= level) || (_vipLevelPlayer >= vipLevel)) ? true : false));
    // source line 194, bytecode pc 293
    (descStr = xs.Tools.String.createString("AutoPracticeVipLevel").convWithArgs([ level, vipLevel ]));
    // source line 198, bytecode pc 316
    return { result: _result, desc: descStr }
},
    isUnLock_chaoFight: function() {
    var _needlevel, _vipLevel, _result;
    // source line 202, bytecode pc 5
    (_needlevel = 5);
    // source line 203, bytecode pc 57
    (_vipLevel = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 204, bytecode pc 68
    (_result = (_vipLevel >= _needlevel));
    // source line 208, bytecode pc 144
    return {
    result: _result,
    desc: xs.Tools.String.createString("toast_unLock_quickFight").convWithArgs([ _needlevel ])
}
},
    isUnLock_dailyTask: function() {
    var _needlevel, _levelPlayer, _result;
    // source line 212, bytecode pc 5
    (_needlevel = 5);
    // source line 213, bytecode pc 57
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 214, bytecode pc 68
    (_result = (_levelPlayer >= _needlevel));
    // source line 218, bytecode pc 144
    return {
    result: _result,
    desc: xs.Tools.String.createString("toast_unLock_dailyTask").convWithArgs([ _needlevel ])
}
}
}));
