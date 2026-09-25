// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Guide/GuideStepPlugin.js:1
// source line 14, bytecode pc 52
(xs.Guide.GuideStepPlugin = {
    m_plugins: {},
    registerPlugin: function(type, plugin) {
    // source line 12, bytecode pc 13
    (this.m_plugins[type] = plugin);
},
    getPlugin: function(type) {
    var plugin;
    // source line 15, bytecode pc 13
    (plugin = this.m_plugins[type]);
    if (!plugin) {
        // source line 17, bytecode pc 61
        xs.assert(false, ((("type : " + type) + " in plugins is ") + plugin));
    }
    // source line 19, bytecode pc 65
    return plugin;
}
});
// source line 25, bytecode pc 84
(xs.Guide.GuideStepPlugin_None = {
    workInCfg: function(cfg) {
    // source line 26, bytecode pc 41
    xs.Guide.GuideMgr.endStepBySequence([ "0" ]);
}
});
// source line 31, bytecode pc 138
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_None, xs.Guide.GuideStepPlugin_None);
// source line 35, bytecode pc 170
(xs.Guide.GuideStepPlugin_ChangeScene = {
    workInCfg: function(cfg) {
    var data;
    // source line 38, bytecode pc 9
    (data = {});
    // source line 39, bytecode pc 42
    (data.rect = cc.rect(0, 0, 0, 0));
    // source line 40, bytecode pc 52
    (data.delay = 0);
    // source line 41, bytecode pc 62
    (data.isClickHand = false);
    // source line 42, bytecode pc 93
    xs.Views.Mgr.showHollowOutLayer(data);
    if (xs.Guide.GuideMgr.getIsNeedChangeScene()) {
        if (cfg.data.sceneName) {
            // source line 47, bytecode pc 199
            xs.log(((("changeSceneByName : " + cfg.data.sceneName) + " data : ") + cfg.data.data));
            // source line 48, bytecode pc 254
            xs.Scene.Mgr.changeSceneByName(cfg.data.sceneName, cfg.data.data);
        }
        // source line 50, bytecode pc 283
        xs.Guide.GuideMgr.setIsNeedChangeScene(false);
    } else {
        if (((cfg.data.isNeedChangeScene != null) && (cfg.data.isNeedChangeScene != undefined))) {
            // source line 54, bytecode pc 360
            (cfg.data.isNeedChangeScene = cfg.data.isNeedChangeScene);
        } else {
            // source line 56, bytecode pc 380
            (cfg.data.isNeedChangeScene = true);
        }
        if (cfg.data.isNeedChangeScene) {
            if (cfg.data.sceneName) {
                // source line 62, bytecode pc 473
                xs.log(((("changeSceneByName : " + cfg.data.sceneName) + " data : ") + cfg.data.data));
                // source line 63, bytecode pc 528
                xs.Scene.Mgr.changeSceneByName(cfg.data.sceneName, cfg.data.data);
            }
        } else {
            // source line 68, bytecode pc 647
            xs.Guide.GuideMgr.endStepBySequence([
    "10100",
    "10201_before",
    "20101_before",
    "30101_before",
    "40101_before",
    "50101_before",
    "60101_before",
    "70101_before",
    "80101_before"
]);
        }
    }
}
});
// source line 76, bytecode pc 224
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_ChangeScene, xs.Guide.GuideStepPlugin_ChangeScene);
// source line 80, bytecode pc 256
(xs.Guide.GuideStepPlugin_ShowDialog = {
    workInCfg: function(cfg) {
    if (cfg.data.dialogName) {
        // source line 82, bytecode pc 58
        xs.Views.Mgr.showDialogByName(cfg.data.dialogName);
    }
}
});
// source line 88, bytecode pc 310
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_ShowDialog, xs.Guide.GuideStepPlugin_ShowDialog);
// source line 92, bytecode pc 342
(xs.Guide.GuideStepPlugin_ShowToast = {
    workInCfg: function(cfg) {
    if (cfg.data.stringId) {
        // source line 94, bytecode pc 58
        xs.Views.Mgr.showToastByStringId(cfg.data.stringId);
    } else {
        if (cfg.data.string) {
            // source line 96, bytecode pc 122
            xs.Views.Mgr.showToast(cfg.data.string);
        }
    }
    // source line 99, bytecode pc 164
    xs.Guide.GuideMgr.endStepBySequence([ "60102" ]);
}
});
// source line 104, bytecode pc 396
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_ShowToast, xs.Guide.GuideStepPlugin_ShowToast);
// source line 108, bytecode pc 428
(xs.Guide.GuideStepPlugin_HollowOut = {
    workInCfg: function(cfg) {
    var visibleSize, visibleOrigin, pos, scene, node, anchorPoint, delay, rect, isClickHand, data;
    // source line 109, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 110, bytecode pc 49
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 112, bytecode pc 73
    (pos = cc.p(0, 0));
    // source line 114, bytecode pc 103
    (scene = xs.Scene.Mgr.getRunningScene());
    // source line 115, bytecode pc 126
    this.dump("##Guide## cfg", cfg);
    // source line 116, bytecode pc 159
    this.log(("##Guide## cfg.guideTag : " + cfg.data.guideTag));
    if (cfg.data.guideTag) {
        // source line 119, bytecode pc 209
        (node = scene.getChildByGuideTag(cfg.data.guideTag));
        // source line 120, bytecode pc 256
        xs.assert(node, (("##Guide## guideTag : " + cfg.data.guideTag) + " not exist!"));
        if (!node) {
            // source line 123, bytecode pc 267
            return void 0;
        }
        // source line 128, bytecode pc 289
        (pos = node.convertToWorldSpaceAR(pos));
        // source line 130, bytecode pc 316
        xs.dump("###GuideTag Scene Pos###", pos);
    } else {
        // source line 132, bytecode pc 376
        (cfg.data.posCfg = (cfg.data.posCfg || { desc: "lb", sc: true }));
        // source line 133, bytecode pc 424
        (pos = xs.Utils.Node.getPointByPosDesc(scene, cfg.data.posCfg));
        if (cfg.data.posRatio_x) {
            // source line 136, bytecode pc 482
            (pos.x = (pos.x + (visibleSize.width * cfg.data.posRatio_x)));
        }
        if (cfg.data.posRatio_y) {
            // source line 139, bytecode pc 540
            (pos.y = (pos.y + (visibleSize.height * cfg.data.posRatio_y)));
        }
    }
    // source line 143, bytecode pc 573
    (anchorPoint = (cfg.data.anchorPoint || xs.ap_c));
    // source line 144, bytecode pc 611
    (pos.x = (pos.x - (anchorPoint.x * cfg.data.width)));
    // source line 145, bytecode pc 649
    (pos.y = (pos.y - (anchorPoint.y * cfg.data.height)));
    // source line 147, bytecode pc 673
    (delay = (cfg.data.delayTime || 0));
    // source line 149, bytecode pc 739
    (rect = cc.rect(pos.x, pos.y, cfg.data.width, cfg.data.height));
    // source line 151, bytecode pc 744
    (isClickHand = true);
    if (((cfg.data.isClickHand != null) && (cfg.data.isClickHand != undefined))) {
        // source line 153, bytecode pc 806
        (isClickHand = cfg.data.isClickHand);
    }
    // source line 156, bytecode pc 829
    this.log(("##Guide## isClickHand : " + isClickHand));
    // source line 158, bytecode pc 839
    (data = {});
    // source line 159, bytecode pc 851
    (data.rect = rect);
    // source line 160, bytecode pc 863
    (data.delay = delay);
    // source line 161, bytecode pc 875
    (data.isClickHand = isClickHand);
    // source line 163, bytecode pc 906
    xs.Views.Mgr.showHollowOutLayer(data);
}
});
// source line 169, bytecode pc 482
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_HollowOut, xs.Guide.GuideStepPlugin_HollowOut);
// source line 174, bytecode pc 514
(xs.Guide.GuideStepPlugin_Story = {
    workInCfg: function(cfg) {
    // source line 175, bytecode pc 48
    xs.log_guide((("" + cfg.data.storyId) + " show story begin"));
    // source line 201, bytecode pc 114
    xs.Tools.Story.showStoryDialog(cfg.data.storyId, function() {
    var data;
    // source line 178, bytecode pc 48
    xs.log_guide((("" + cfg.data.storyId) + " end callback"));
    // source line 181, bytecode pc 58
    (data = {});
    // source line 182, bytecode pc 91
    (data.rect = cc.rect(0, 0, 0, 0));
    // source line 183, bytecode pc 101
    (data.delay = 0);
    // source line 184, bytecode pc 111
    (data.isClickHand = false);
    // source line 185, bytecode pc 142
    xs.Views.Mgr.showHollowOutLayer(data);
    // source line 198, bytecode pc 472
    xs.Guide.GuideMgr.endStepBySequence([
    "00201",
    "00335",
    "10101",
    "10201",
    "20101",
    "20204",
    "30101",
    "40001",
    "40101",
    "50101",
    "60101",
    "70101",
    "80101",
    "90101",
    "110101",
    "150102",
    "120101",
    "120104",
    "130102",
    "130105",
    "140102",
    "140106",
    "170102",
    "170105",
    "160102",
    "180101",
    "180103",
    "180105",
    "180107",
    "190102",
    "190104",
    "200102",
    "200105"
]);
}.bind(this));
    // source line 203, bytecode pc 163
    xs.log_guide((("" + cfg.data.storyId) + " show story end"));
}
});
// source line 208, bytecode pc 568
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_Story, xs.Guide.GuideStepPlugin_Story);
// source line 215, bytecode pc 600
(xs.Guide.GuideStepPlugin_CG = {
    workInCfg: function(cfg) {
    // source line 218, bytecode pc 49
    xs.Scene.Mgr.changeSceneByName("NewPlayerScene", {
    funcNext: function() {
    // source line 219, bytecode pc 41
    xs.Guide.GuideMgr.endStepBySequence([ "00101" ]);
}
});
}
});
// source line 235, bytecode pc 654
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_CG, xs.Guide.GuideStepPlugin_CG);
// source line 239, bytecode pc 686
(xs.Guide.GuideStepPlugin_FreshFight = {
    workInCfg: function(cfg) {
    var data;
    // source line 241, bytecode pc 9
    (data = {});
    // source line 242, bytecode pc 42
    (data.rect = cc.rect(0, 0, 0, 0));
    // source line 243, bytecode pc 52
    (data.delay = 0);
    // source line 244, bytecode pc 62
    (data.isClickHand = false);
    // source line 245, bytecode pc 93
    xs.Views.Mgr.showHollowOutLayer(data);
    // source line 247, bytecode pc 126
    xs.Tools.Scene.gotoNewPlayerFight(function() {
    // source line 248, bytecode pc 41
    xs.Guide.GuideMgr.endStepBySequence([ "00302" ]);
});
}
});
// source line 255, bytecode pc 740
xs.Guide.GuideStepPlugin.registerPlugin(xs.Constant_GuideStepType_NewPlayerFight, xs.Guide.GuideStepPlugin_FreshFight);
