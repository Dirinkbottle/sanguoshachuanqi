// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Sys.js:1
// source line 223, bytecode pc 182
(xs.Tools.Sys = (xs.Tools.Sys || {
    name: "xs.Tools.Sys",
    getVersionDesc: function() {
    var string, _buildVer, _projCode, _buildType, _productId;
    // source line 18, bytecode pc 40
    (string = xs.Core.Tools.String.createString("auto_name_version"));
    // source line 20, bytecode pc 70
    (_buildVer = xs.Tools.Jsb.getOriResCode());
    // source line 22, bytecode pc 100
    (_projCode = xs.Profile.UserCfg.readProductId());
    // source line 36, bytecode pc 111
    (string = (string + _buildVer));
    // source line 37, bytecode pc 124
    (string = (string + "("));
    // source line 38, bytecode pc 135
    (string = (string + _projCode));
    // source line 39, bytecode pc 148
    (string = (string + ")"));
    // source line 42, bytecode pc 172
    (string = (string + ("-" + xs.resVersion)));
    // source line 44, bytecode pc 226
    (_buildType = xs.JsbConnecter.getInstance().invoke("Build", "getBuildType", ""));
    // source line 47, bytecode pc 239
    (string = (string + "("));
    // source line 48, bytecode pc 250
    (string = (string + _buildType));
    // source line 49, bytecode pc 314
    (string = (string + ("-" + xs.JsbConnecter.getInstance().invoke("Build", "getUseJsc", ""))));
    // source line 50, bytecode pc 327
    (string = (string + ")"));
    // source line 54, bytecode pc 340
    (string = (string + "-a"));
    // source line 55, bytecode pc 358
    (string = (string + xsc.app_account_sys));
    // source line 58, bytecode pc 388
    (_productId = xs.Profile.UserCfg.readProductIdSql());
    if (_productId) {
        // source line 60, bytecode pc 409
        (string = (string + "-p"));
        // source line 61, bytecode pc 427
        (string = (string + xsc.app_indentify));
    }
    // source line 67, bytecode pc 431
    return string;
},
    requireCfgFilesGeneratedByServer: function() {
    // source line 71, bytecode pc 28
    xs.log("requireCfgFiles", "requireCfgFiles");
    // source line 72, bytecode pc 61
    cc.FileUtils.getInstance().purgeCachedEntries();
    // source line 73, bytecode pc 104
    xs.Utils.require(xs.Cfg.System.files_generated_by_server);
    // source line 77, bytecode pc 158
    xs.log("after require,sgs_global_conf.cfg version", xs.Cfg.System.sgs_global_conf.CfgVersion.logical_data);
},
    free_js_garbage_in_MainMenu: function() {
    // source line 82, bytecode pc 18
    this.log("free_js_garbage_in_MainMenu");
    // source line 85, bytecode pc 51
    cc.TextureCache.getInstance().removeUnusedTextures();
    // source line 86, bytecode pc 78
    xs.Utils.Sys.garbageCollect();
},
    free_when_change_scene_before_new: function() {
    if ((xs.purgeSceneCache === true)) {
        // source line 95, bytecode pc 35
        this.log("free_when_change_scene_before_new-begin");
        // source line 101, bytecode pc 57
        cc.ArmatureDataManager.purge();
        // source line 107, bytecode pc 84
        xs.Factorys.Armature.unloadArmatureFileInfos();
        // source line 112, bytecode pc 103
        this.log("free_when_change_scene_before_new-end");
    }
},
    free_when_change_scene_after_new: function() {
    // source line 119, bytecode pc 18
    this.log("free_when_change_scene_after_new-begin");
    if (xs.need_save_memory) {
        // source line 123, bytecode pc 66
        cc.TextureCache.getInstance().removeUnusedTextures();
    }
    // source line 126, bytecode pc 79
    this.dumpMemInfo();
    // source line 128, bytecode pc 98
    this.log("free_when_change_scene_after_new-end");
},
    free_when_change_scene_after_1_frame: function() {
    // source line 134, bytecode pc 18
    this.log("free_when_change_scene_after_1_frame-begin");
    if (xs.need_save_memory) {
        // source line 138, bytecode pc 66
        cc.TextureCache.getInstance().removeUnusedTextures();
    }
    // source line 141, bytecode pc 79
    this.dumpMemInfo();
    // source line 143, bytecode pc 98
    this.log("free_when_change_scene_after_1_frame-end");
},
    free_when_fight_result_exit: function() {
    // source line 148, bytecode pc 21
    xs.audio.releaseAllEffects();
},
    free_when_fight_story: function() {
    // source line 154, bytecode pc 18
    this.log("free_when_fight_story-begin");
    // source line 156, bytecode pc 40
    xs.audio.releaseAllEffects();
    // source line 157, bytecode pc 67
    xs.Factorys.Armature.unloadArmatureFileInfos();
    // source line 159, bytecode pc 100
    cc.SpriteFrameCache.getInstance().removeUnusedSpriteFrames();
    // source line 160, bytecode pc 133
    cc.TextureCache.getInstance().removeUnusedTextures();
    // source line 165, bytecode pc 152
    this.log("free_when_fight_story-end");
},
    free_when_fight_round: function() {
    // source line 176, bytecode pc 18
    this.log("free_when_fight_round-begin");
    // source line 178, bytecode pc 45
    xs.Factorys.Armature.unloadArmatureFileInfos();
    if (xs.need_save_memory) {
        // source line 181, bytecode pc 93
        cc.SpriteFrameCache.getInstance().removeUnusedSpriteFrames();
        // source line 182, bytecode pc 126
        cc.TextureCache.getInstance().removeUnusedTextures();
    }
    // source line 185, bytecode pc 145
    this.log("free_when_fight_round-end");
},
    free_when_fight_round_callfunc_nextRound: function() {
},
    dumpMemInfo: function() {
    if (xs.dumpMemInfo) {
        // source line 202, bytecode pc 43
        xs.log_zj("dumpMemInfo", "-----------------begin");
        // source line 203, bytecode pc 94
        xs.JsbConnecter.getInstance().invoke("Debug", "dumpSpriteFrameCache", "");
        // source line 204, bytecode pc 127
        cc.TextureCache.getInstance().dumpCachedTextureInfo();
        // source line 205, bytecode pc 156
        xs.log_zj("dumpMemInfo", "-----------------end");
    }
},
    turnOn_UseMoreMem: function() {
    // source line 210, bytecode pc 11
    (xs.need_save_memory = false);
    // source line 214, bytecode pc 40
    xs.Profile.UserCfg.setMemMode_UseMoreMem(true);
    // source line 216, bytecode pc 69
    xs.log("need_save_memory", "启动高速模式，现在开始使用更多的内存");
},
    turnOff_UseMoreMem: function() {
    // source line 224, bytecode pc 11
    (xs.need_save_memory = true);
    // source line 228, bytecode pc 40
    xs.Profile.UserCfg.setMemMode_UseMoreMem(false);
    // source line 231, bytecode pc 69
    xs.log("need_save_memory", "关闭高速模式，现在开始使用很少的内存");
}
}));
