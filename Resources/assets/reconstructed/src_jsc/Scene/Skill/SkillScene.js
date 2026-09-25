// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Skill/SkillScene.js:1
// source line 241, bytecode pc 113
(xs.Scene.SkillSceneLayer = cc.Layer.extend({
    ctor: function() {
    // source line 51, bytecode pc 12
    this._super();
    // source line 52, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(skillData) {
    var visibleSize, visibleOrigin, playerInfo, btnSpace;
    // source line 56, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 57, bytecode pc 60
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 59, bytecode pc 68
    (this.m_baseTouchPriority = 0);
    // source line 60, bytecode pc 78
    (this.skillData = skillData);
    // source line 61, bytecode pc 86
    (this.m_mainMenu = null);
    // source line 62, bytecode pc 94
    (this.m_allSkillView = null);
    // source line 63, bytecode pc 102
    (this.m_pageView = null);
    // source line 66, bytecode pc 135
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 69, bytecode pc 165
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 70, bytecode pc 201
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 73, bytecode pc 257
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 76, bytecode pc 263
    (btnSpace = 20);
    // source line 78, bytecode pc 307
    (this._SortController = xs.Views.SortController.create(xs.Constant_FilterStyle_Skill));
    // source line 79, bytecode pc 345
    this._SortController.setSortChgCallBack(this.onFilterChange.bind(this));
    // source line 80, bytecode pc 399
    this._SortController.setBaseTouchPriority(xs.Cfg.Scene.SkillScene.sortView.base.priority);
    // source line 82, bytecode pc 420
    this._SortController.setZOrder(10);
    // source line 86, bytecode pc 524
    xs.Utils.Node.attachNodes(this, this._SortController, { desc: "rt", offset: cc.p(((-280 - ((155 + btnSpace) * 2)) - 144), -98), sc: true });
    // source line 89, bytecode pc 563
    (this.meltButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 90, bytecode pc 601
    this.meltButton.setOnClickCallBack(this.onMeltButtonTouch.bind(this));
    // source line 91, bytecode pc 625
    this.meltButton.setStringById("EquipmentMelt");
    // source line 96, bytecode pc 722
    xs.Utils.Node.attachNodes(this, this.meltButton, { desc: "rt", offset: cc.p((-280 - (155 + btnSpace)), -65), sc: true });
    // source line 99, bytecode pc 761
    (this.m_meltOneStepButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 100, bytecode pc 785
    this.m_meltOneStepButton.setStringById("OneStepEquipmentMelt");
    // source line 101, bytecode pc 823
    this.m_meltOneStepButton.setOnClickCallBack(this.onMeltOneStepButtonTouch.bind(this));
    // source line 106, bytecode pc 912
    xs.Utils.Node.attachNodes(this, this.m_meltOneStepButton, { desc: "rt", offset: cc.p(-280, -65), sc: true });
    // source line 108, bytecode pc 932
    this.m_meltOneStepButton.setVisible(false);
    // source line 115, bytecode pc 960
    (this.m_allSkillView = cc.Node.create());
    // source line 118, bytecode pc 1003
    (this.m_allSkillView._updateTableView = xs.Views.Table.SkillTableView.create());
    // source line 122, bytecode pc 1133
    xs.Utils.Node.attachNodes(this.m_allSkillView, this.m_allSkillView._updateTableView, {
    desc: "lb",
    sc: true,
    offset: cc.p((visibleOrigin.x + (((visibleSize.width - 840) - 100) / 2)), (visibleOrigin.y + 50))
});
    // source line 125, bytecode pc 1158
    this.m_allSkillView._updateTableView.setVisible(true);
    // source line 126, bytecode pc 1183
    this.m_allSkillView._updateTableView.setKeepOldOffsetFlag(true);
    // source line 129, bytecode pc 1206
    xs.log_ck("_metlTableView create1");
    // source line 130, bytecode pc 1234
    xs.log_ck(xs.test_tt);
    // source line 131, bytecode pc 1277
    (this.m_allSkillView._metlTableView = xs.Views.Table.SkillMeltTableView.create());
    // source line 135, bytecode pc 1407
    xs.Utils.Node.attachNodes(this.m_allSkillView, this.m_allSkillView._metlTableView, {
    desc: "lb",
    sc: true,
    offset: cc.p((visibleOrigin.x + (((visibleSize.width - 840) - 100) / 2)), (visibleOrigin.y + 50))
});
    // source line 137, bytecode pc 1430
    xs.log_ck("_metlTableView create2");
    // source line 138, bytecode pc 1455
    this.m_allSkillView._metlTableView.setVisible(false);
    // source line 139, bytecode pc 1480
    this.m_allSkillView._metlTableView.setKeepOldOffsetFlag(true);
    // source line 145, bytecode pc 1546
    (this.m_pageView = xs.Views.TablePage.create(cc.size(846, (visibleSize.height - 56))));
    // source line 146, bytecode pc 1604
    this.m_pageView.addPage(xs.Tools.String.createString("auto_name_198"), this.m_allSkillView);
    // source line 150, bytecode pc 1689
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true }, xs.Cfg.Scene.SkillScene.pageView);
    // source line 154, bytecode pc 1752
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 157, bytecode pc 1767
    this.setBaseTouchPriority(0);
    // source line 158, bytecode pc 1769
    return true;
},
    onMeltButtonTouch: function() {
    if ((this.m_meltOneStepButton.isVisible() == true)) {
        // source line 164, bytecode pc 43
        this.m_meltOneStepButton.setVisible(false);
        // source line 165, bytecode pc 94
        this.meltButton.setString(xs.Tools.String.createString("EquipmentMelt"));
        // source line 166, bytecode pc 119
        this.m_allSkillView._updateTableView.setVisible(true);
        // source line 167, bytecode pc 144
        this.m_allSkillView._metlTableView.setVisible(false);
    } else {
        // source line 169, bytecode pc 169
        this.m_meltOneStepButton.setVisible(true);
        // source line 170, bytecode pc 220
        this.meltButton.setString(xs.Tools.String.createString("1070610009"));
        // source line 171, bytecode pc 245
        this.m_allSkillView._updateTableView.setVisible(false);
        // source line 172, bytecode pc 270
        this.m_allSkillView._metlTableView.setVisible(true);
    }
},
    onMeltOneStepButtonTouch: function() {
    // source line 184, bytecode pc 166
    xs.Views.Mgr.showDialogByName("common", {
    title: "OneStepMeltPromptTitle",
    content: "SkillOneStepMeltPrompt",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 182, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 185, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 226, bytecode pc 163
    xs.Tools.Net.requireSkillMultMelt({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    var list, chuji_refineStone, zhongji_refineStone, gaoji_refineStone, i, str;
    if (data.add_list) {
        // source line 190, bytecode pc 24
        (list = data.add_list);
        // source line 191, bytecode pc 29
        (chuji_refineStone = 0);
        // source line 192, bytecode pc 34
        (zhongji_refineStone = 0);
        // source line 193, bytecode pc 39
        (gaoji_refineStone = 0);
        // source line 195, bytecode pc 44
        (i = 0);
        while ((i < list.length)) {
            if ((list[i].type == xs.Const_Item_Style_Item)) {
                if ((list[i].id == xs.Models.ItemID_JuanZhou_chuji)) {
                    // source line 198, bytecode pc 146
                    (chuji_refineStone = (chuji_refineStone + Number(list[i].num)));
                } else {
                    if ((list[i].id == xs.Models.ItemID_JuanZhou_zhongji)) {
                        // source line 200, bytecode pc 219
                        (zhongji_refineStone = (zhongji_refineStone + Number(list[i].num)));
                    } else {
                        if ((list[i].id == xs.Models.ItemID_JuanZhou_gaoji)) {
                            // source line 202, bytecode pc 292
                            (gaoji_refineStone = (gaoji_refineStone + Number(list[i].num)));
                        }
                    }
                }
            }
            // source line 195, bytecode pc 307
            i++;
        }
        // source line 206, bytecode pc 361
        (str = xs.Tools.String.createString("EquipmentMeltSucess"));
        if (chuji_refineStone) {
            // source line 208, bytecode pc 419
            (str = (((str + xs.Tools.String.createString("chuJi_JuanZhou")) + chuji_refineStone) + ","));
        }
        if (zhongji_refineStone) {
            // source line 211, bytecode pc 477
            (str = (((str + xs.Tools.String.createString("zhongji_JuanZhou")) + zhongji_refineStone) + ","));
        }
        if (gaoji_refineStone) {
            // source line 214, bytecode pc 529
            (str = ((str + xs.Tools.String.createString("gaoji_JuanZhou")) + gaoji_refineStone));
        }
        // source line 217, bytecode pc 560
        xs.Views.Mgr.showToast(str);
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_2049")) {
    }
}.bind(this), this);
}
});
},
    onChangeSort: function(sortedData) {
},
    onFilterChange: function(filterType, filterResult) {
    // source line 237, bytecode pc 30
    this.m_allSkillView._updateTableView.onFilterChange(filterType, filterResult);
    // source line 238, bytecode pc 61
    this.m_allSkillView._metlTableView.onFilterChange(filterType, filterResult);
},
    setBaseTouchPriority: function(priority) {
    // source line 242, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 243, bytecode pc 65
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.SkillScene.mainmenu.priority));
}
}));
// source line 247, bytecode pc 139
(xs.Scene.SkillSceneLayer.create = function(skillData) {
    var ret;
    // source line 248, bytecode pc 23
    (ret = new xs.Scene.SkillSceneLayer());
    if ((ret && ret.init(skillData))) {
        // source line 250, bytecode pc 59
        return ret;
    } else {
        // source line 252, bytecode pc 66
        return null;
    }
});
// source line 264, bytecode pc 203
(xs.Scene.SkillScene = cc.Scene.extend({
    ctor: function() {
    // source line 260, bytecode pc 12
    this._super();
    // source line 261, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(skillData) {
    var layer;
    // source line 265, bytecode pc 33
    (layer = xs.Scene.SkillSceneLayer.create(skillData));
    // source line 266, bytecode pc 50
    this.addChild(layer);
    // source line 268, bytecode pc 52
    return true;
}
}));
// source line 272, bytecode pc 229
(xs.Scene.SkillScene.create = function() {
    var ret;
    // source line 273, bytecode pc 23
    (ret = new xs.Scene.SkillScene());
    if ((ret && ret.init())) {
        // source line 275, bytecode pc 55
        return ret;
    }
    // source line 278, bytecode pc 57
    return null;
});
// source line 286, bytecode pc 304
xs.Scene.Mgr.registerScene("SkillScene", { "class": xs.Scene.SkillScene, type: xs.Constant_SceneType_General });
// source line 297, bytecode pc 368
(xs.Scene.SkillUpScene = cc.Scene.extend({
    ctor: function() {
    // source line 293, bytecode pc 12
    this._super();
    // source line 294, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var layer;
    if (!this._super()) {
        // source line 299, bytecode pc 19
        return false;
    }
    // source line 302, bytecode pc 55
    (layer = xs.Views.SkillUpLayer.create(param, this));
    // source line 305, bytecode pc 57
    return true;
}
}));
// source line 309, bytecode pc 394
(xs.Scene.SkillUpScene.create = function(param) {
    var scene;
    // source line 310, bytecode pc 23
    (scene = new xs.Scene.SkillUpScene());
    if ((scene && scene.init(param))) {
        // source line 312, bytecode pc 59
        return scene;
    }
    // source line 314, bytecode pc 61
    return null;
});
// source line 320, bytecode pc 469
xs.Scene.Mgr.registerScene("SkillUpScene", { "class": xs.Scene.SkillUpScene, type: xs.Constant_SceneType_General });
