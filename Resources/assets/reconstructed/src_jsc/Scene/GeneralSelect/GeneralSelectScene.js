// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/GeneralSelect/GeneralSelectScene.js:1
// source line 225, bytecode pc 103
(xs.Scene.GeneralSelectLayer = cc.Layer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleOrigin, visibleSize, selectIcon, i, selector, btnBg;
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 21, bytecode pc 39
    (this.m_selectors = []);
    // source line 22, bytecode pc 47
    (this.m_selectIndex = 0);
    // source line 23, bytecode pc 60
    (this.m_cfg = {});
    // source line 24, bytecode pc 68
    (this.m_nameSp = null);
    // source line 25, bytecode pc 76
    (this.m_descSp = null);
    // source line 26, bytecode pc 84
    (this.m_bodySp = null);
    // source line 27, bytecode pc 92
    (this.m_confirmBtn = null);
    // source line 28, bytecode pc 100
    (this.m_speaker = null);
    // source line 30, bytecode pc 125
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 31, bytecode pc 150
    (visibleSize = xs.director.getVisibleSize());
    // source line 33, bytecode pc 190
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_ChooseGirl);
    // source line 35, bytecode pc 232
    (selectIcon = xs.Factorys.Sprite.create("GeneralSelectScene01_SelectGeneralIcon", "GeneralSelectScene01"));
    // source line 36, bytecode pc 268
    selectIcon.setAnchorPoint(cc.p(0, 1));
    // source line 37, bytecode pc 286
    selectIcon.setZOrder(2);
    // source line 38, bytecode pc 367
    xs.Utils.Node.attachNodes(this, selectIcon, { desc: "lt", sc: true, offset: { x: 16, y: -12 } });
    // source line 40, bytecode pc 400
    (this.m_speaker = xs.Views.SpeakerView.create());
    // source line 41, bytecode pc 421
    this.m_speaker.setZOrder(2);
    // source line 43, bytecode pc 530
    xs.Utils.Node.attachNodes(this, this.m_speaker, {
    desc: "c",
    sc: true,
    offset: { x: ((-visibleSize.width / 6) - 30), y: ((visibleSize.height / 3) - 30) }
});
    // source line 45, bytecode pc 562
    (this.m_cfg = xs.Scene.GeneralSelectScene.Cfg.SelectGenerals);
    // source line 46, bytecode pc 567
    (i = 0);
    while ((i < this.m_cfg.length)) {
        // source line 47, bytecode pc 614
        (selector = xs.Scene.GeneralSelector.create(this.m_cfg[i]));
        // source line 48, bytecode pc 631
        selector.setListener(this);
        // source line 49, bytecode pc 664
        xs.Utils.Node.attachNodes(this, selector);
        // source line 50, bytecode pc 686
        this.m_selectors.push(selector);
        // source line 46, bytecode pc 699
        (i = (+i + 1));
    }
    // source line 54, bytecode pc 805
    this.m_selectors[0].setPosition(cc.p((visibleOrigin.x + ((visibleSize.width * 5) / 6)), (visibleOrigin.y + ((visibleSize.height * 5) / 6))));
    // source line 56, bytecode pc 890
    this.m_selectors[1].setPosition(cc.p((visibleOrigin.x + ((visibleSize.width * 4) / 6)), (visibleOrigin.y + ((visibleSize.height * 4) / 6))));
    // source line 58, bytecode pc 976
    this.m_selectors[2].setPosition(cc.p((visibleOrigin.x + ((visibleSize.width * 5) / 6)), (visibleOrigin.y + ((visibleSize.height * 3) / 6))));
    // source line 60, bytecode pc 1062
    this.m_selectors[3].setPosition(cc.p((visibleOrigin.x + ((visibleSize.width * 4) / 6)), (visibleOrigin.y + ((visibleSize.height * 2) / 6))));
    // source line 62, bytecode pc 1104
    (btnBg = xs.Factorys.Sprite.create("GeneralSelectScene01_ConfirmBtnBg", "GeneralSelectScene01"));
    // source line 63, bytecode pc 1185
    xs.Utils.Node.attachNodes(this, btnBg, { desc: "rb", sc: true, offset: { x: -100, y: 100 } });
    // source line 65, bytecode pc 1224
    (this.m_confirmBtn = xs.Views.Btn.create("Btn_CircleRedConfirm"));
    // source line 66, bytecode pc 1308
    xs.Utils.Node.attachNodes(this, this.m_confirmBtn, { desc: "rb", sc: true, offset: { x: -100, y: 100 } });
    // source line 67, bytecode pc 1346
    this.m_confirmBtn.setOnClickCallBack(this.confirmCallback.bind(this));
    // source line 69, bytecode pc 1361
    this.GeneralSelector_selectIndex(1);
    // source line 91, bytecode pc 1363
    return true;
},
    GeneralSelector_selectIndex: function(index) {
    var i, selector;
    // source line 129, bytecode pc 9
    (this.m_selectIndex = index);
    // source line 131, bytecode pc 14
    (i = 0);
    while ((i < this.m_selectors.length)) {
        // source line 132, bytecode pc 34
        (selector = this.m_selectors[i]);
        if ((selector.getIndex() === this.m_selectIndex)) {
            // source line 134, bytecode pc 77
            selector.setSelected(true);
        } else {
            // source line 136, bytecode pc 99
            selector.setSelected(false);
        }
        // source line 131, bytecode pc 112
        (i = (+i + 1));
    }
    // source line 142, bytecode pc 170
    xs.audio.playEffect(("Audio_EFF_Girl_" + this.m_selectIndex), false);
    // source line 144, bytecode pc 183
    this.updateView();
},
    updateView: function() {
    var cfg, visibleOrigin, visibleSize, bodyOffset, infoOffset, general, bodySp, nameSp, descSp, pos, scaleTo;
    // source line 149, bytecode pc 16
    (cfg = this.m_cfg[this.m_selectIndex]);
    // source line 151, bytecode pc 50
    xs.Utils.Node.safeRemoveChild(this.m_nameSp);
    // source line 152, bytecode pc 58
    (this.m_nameSp = null);
    // source line 153, bytecode pc 92
    xs.Utils.Node.safeRemoveChild(this.m_descSp);
    // source line 154, bytecode pc 100
    (this.m_descSp = null);
    // source line 155, bytecode pc 134
    xs.Utils.Node.safeRemoveChild(this.m_bodySp);
    // source line 156, bytecode pc 142
    (this.m_bodySp = null);
    // source line 158, bytecode pc 167
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 159, bytecode pc 192
    (visibleSize = xs.director.getVisibleSize());
    // source line 161, bytecode pc 214
    (bodyOffset = { x: 0, y: 0 });
    // source line 162, bytecode pc 236
    (infoOffset = { x: 0, y: 0 });
    // source line 163, bytecode pc 243
    switch (this.m_selectIndex) {
        case 0:
        break;
        case 1:
        // source line 168, bytecode pc 287
        (infoOffset.x = -30);
        break;
        case 2:
        // source line 171, bytecode pc 303
        (bodyOffset.x = -60);
        // source line 172, bytecode pc 314
        (bodyOffset.y = -10);
        break;
        case 3:
        // source line 175, bytecode pc 330
        (bodyOffset.x = -20);
        // source line 176, bytecode pc 341
        (bodyOffset.y = -80);
        break;
        default:
        break;
    }
    // source line 181, bytecode pc 390
    (general = xs.Models.General.createWithBase(cfg.generalId));
    // source line 182, bytecode pc 419
    (bodySp = general.getRes().createOriginalSprite());
    // source line 183, bytecode pc 459
    bodySp.setAnchorPoint(cc.p(0.5, 0));
    // source line 185, bytecode pc 577
    xs.Utils.Node.attachNodes(this, bodySp, {
    desc: "cb",
    sc: true,
    offset: { x: ((-visibleSize.width / 5) + bodyOffset.x), y: ((visibleSize.height / 24) + bodyOffset.y) }
});
    // source line 186, bytecode pc 587
    (this.m_bodySp = bodySp);
    // source line 190, bytecode pc 635
    (nameSp = xs.Factorys.Sprite.create(cfg.namePic_name, cfg.namePic_area));
    // source line 191, bytecode pc 734
    xs.Utils.Node.attachNodes(this, nameSp, { desc: "c", sc: true, offset: { x: (-50 + infoOffset.x), y: (120 + infoOffset.y) } });
    // source line 192, bytecode pc 744
    (this.m_nameSp = nameSp);
    // source line 194, bytecode pc 792
    (descSp = xs.Factorys.Sprite.create(cfg.descPic_name, cfg.descPic_area));
    // source line 195, bytecode pc 828
    descSp.setAnchorPoint(cc.p(0, 1));
    // source line 196, bytecode pc 927
    xs.Utils.Node.attachNodes(this, descSp, { desc: "c", sc: true, offset: { x: (-10 + infoOffset.x), y: (120 + infoOffset.y) } });
    // source line 197, bytecode pc 937
    (this.m_descSp = descSp);
    // source line 199, bytecode pc 957
    this.m_speaker.setScale(0);
    // source line 201, bytecode pc 1056
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lt", sc: true, offset: { x: (visibleSize.width / 4), y: (-visibleSize.height / 4) } }));
    // source line 202, bytecode pc 1083
    this.m_speaker.say(cfg.say);
    // source line 203, bytecode pc 1116
    (scaleTo = cc.ScaleTo.create(0.2, 1));
    // source line 208, bytecode pc 1201
    this.m_speaker.runAction(cc.Sequence.create(scaleTo, cc.CallFunc.create(function() {
}.bind(this))));
},
    confirmCallback: function() {
    var cfg, param;
    // source line 219, bytecode pc 16
    (cfg = this.m_cfg[this.m_selectIndex]);
    // source line 221, bytecode pc 26
    (param = {});
    // source line 222, bytecode pc 43
    (param.general_id = cfg.generalId);
    // source line 223, bytecode pc 83
    xs.Tools.Net.requestGeneralSelect(param, this.selectSuccessCallback, this);
},
    selectSuccessCallback: function() {
    var isWeiDuanUp, dialog;
    // source line 230, bytecode pc 45
    (isWeiDuanUp = (xs.readAndWriteSqlByWeiduan ? xs.readAndWriteSqlByWeiduan.isUpdateWeiduan() : true));
    if (((xs.weiduan == true) && !isWeiDuanUp)) {
        // source line 233, bytecode pc 105
        xs.Guide.GuideMgr.setGuideStep("10100");
        // source line 248, bytecode pc 262
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_84"),
    rightText: xs.Tools.String.createString("auto_name_85"),
    leftCB: function() {
    // source line 242, bytecode pc 21
    xs.readAndWriteSqlByWeiduan.setWeiduanUpSql();
    // source line 243, bytecode pc 48
    xs.Scene.Mgr.clearAll();
    // source line 244, bytecode pc 97
    xsc.Scene.Mgr.changeScene(xs.UpdateScene.create());
},
    rightCB: function() {
    // source line 249, bytecode pc 21
    xs.readAndWriteSqlByWeiduan.setWeiduanUpSql();
    // source line 250, bytecode pc 48
    xs.Scene.Mgr.clearAll();
    // source line 251, bytecode pc 97
    xsc.Scene.Mgr.changeScene(xs.UpdateScene.create());
}
}));
        // source line 256, bytecode pc 279
        dialog.setCloseBtnVisible(false);
        // source line 257, bytecode pc 297
        (dialog = dialog.getRealDialog());
        // source line 258, bytecode pc 345
        dialog.setContentText(xs.Tools.String.createString("auto_name_86"));
        // source line 259, bytecode pc 393
        dialog.setTitleByString(xs.Tools.String.createString("auto_name_87"));
        // source line 260, bytecode pc 395
        return void 0;
    } else {
        // source line 264, bytecode pc 442
        xs.Guide.GuideMgr.endStepBySequence([ "10000" ]);
    }
}
}));
// source line 269, bytecode pc 129
(xs.Scene.GeneralSelectLayer.create = function() {
    var layer;
    // source line 270, bytecode pc 23
    (layer = new xs.Scene.GeneralSelectLayer());
    if ((layer && layer.init())) {
        // source line 272, bytecode pc 55
        return layer;
    }
    // source line 274, bytecode pc 78
    xs.warn("xs.Scene.GeneralSelectLayer.create error!");
    // source line 275, bytecode pc 80
    return null;
});
// source line 278, bytecode pc 156
(xs.Scene.GeneralSelectLayer.cfg = {});
// source line 333, bytecode pc 270
(xs.Scene.GeneralSelector = cc.Node.extend({
    ctor: function() {
    // source line 285, bytecode pc 12
    this._super();
    // source line 286, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(cfg) {
    if (!this._super()) {
        // source line 290, bytecode pc 19
        return false;
    }
    // source line 293, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 294, bytecode pc 35
    (this.m_btn = null);
    // source line 295, bytecode pc 43
    (this.m_highLightBg = null);
    // source line 296, bytecode pc 51
    (this.b_isSelected = false);
    // source line 297, bytecode pc 59
    (this.m_listener = null);
    // source line 298, bytecode pc 74
    (this.m_index = cfg.index);
    // source line 300, bytecode pc 119
    (this.m_highLightBg = xs.Factorys.Sprite.create("GeneralSelectScene01_SelectorHightLightBg", "GeneralSelectScene01"));
    // source line 301, bytecode pc 182
    this.m_highLightBg.setPosition(cc.p(cfg.bgOffset.x, cfg.bgOffset.y));
    // source line 302, bytecode pc 218
    xs.Utils.Node.attachNodes(this, this.m_highLightBg);
    // source line 303, bytecode pc 254
    xs.Utils.Node.fastSetVisible(this.m_highLightBg, false);
    // source line 305, bytecode pc 301
    (this.m_btn = xs.Libs.Views.Button.createWithSpriteFrame(cfg.selectorFrameName));
    // source line 306, bytecode pc 339
    this.m_btn.setOnClickCallBack(this.selectCallback.bind(this));
    // source line 307, bytecode pc 375
    xs.Utils.Node.attachNodes(this, this.m_btn);
    // source line 309, bytecode pc 406
    this.setContentSize(this.m_btn.getContentSize());
    // source line 311, bytecode pc 408
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 314, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 315, bytecode pc 65
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralSelector.cfg.m_btn.priority));
},
    getIndex: function() {
    // source line 318, bytecode pc 6
    return this.m_index;
},
    setSelected: function(selected) {
    if ((this.b_isSelected !== selected)) {
        // source line 322, bytecode pc 24
        (this.b_isSelected = selected);
        if (this.b_isSelected) {
            // source line 324, bytecode pc 71
            xs.Utils.Node.fastSetVisible(this.m_highLightBg, true);
        } else {
            // source line 326, bytecode pc 112
            xs.Utils.Node.fastSetVisible(this.m_highLightBg, false);
        }
    }
},
    setListener: function(listener) {
    // source line 331, bytecode pc 9
    (this.m_listener = listener);
},
    selectCallback: function() {
    // source line 334, bytecode pc 20
    this.setSelected(!this.b_isSelected);
    if (this.m_listener) {
        // source line 336, bytecode pc 56
        this.m_listener.GeneralSelector_selectIndex(this.m_index);
    }
}
}));
// source line 341, bytecode pc 296
(xs.Scene.GeneralSelector.create = function(cfg) {
    var node;
    // source line 342, bytecode pc 23
    (node = new xs.Scene.GeneralSelector());
    if ((node && node.init(cfg))) {
        // source line 344, bytecode pc 59
        return node;
    }
    // source line 346, bytecode pc 82
    xs.warn("xs.Scene.GeneralSelector.create error!");
    // source line 347, bytecode pc 84
    return null;
});
// source line 352, bytecode pc 341
(xs.Scene.GeneralSelector.cfg = { m_btn: { priority: -1 } });
// source line 373, bytecode pc 415
(xs.Scene.GeneralSelectScene = cc.Scene.extend({
    ctor: function() {
    // source line 360, bytecode pc 12
    this._super();
    // source line 361, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var layer;
    if (!this._super()) {
        // source line 365, bytecode pc 19
        return false;
    }
    // source line 368, bytecode pc 49
    (layer = xs.Scene.GeneralSelectLayer.create());
    // source line 369, bytecode pc 82
    xs.Utils.Node.attachNodes(this, layer);
    // source line 371, bytecode pc 84
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 374, bytecode pc 12
    this._super();
    // source line 375, bytecode pc 54
    xs.Guide.GuideMgr.endStepBySequence([ "10000_before" ]);
}
}));
// source line 379, bytecode pc 441
(xs.Scene.GeneralSelectScene.create = function() {
    var scene;
    // source line 380, bytecode pc 23
    (scene = new xs.Scene.GeneralSelectScene());
    if ((scene && scene.init())) {
        // source line 382, bytecode pc 55
        return scene;
    }
    // source line 384, bytecode pc 78
    xs.warn("xs.Scene.GeneralSelectScene.create error!");
    // source line 385, bytecode pc 80
    return null;
});
// source line 443, bytecode pc 1249
(xs.Scene.GeneralSelectScene.Cfg = {
    SelectGenerals: [
        {
            index: 0,
            generalId: xs.Tools.CfgData.getGlobalConf("FreshmanChooseGeneralId")[0],
            selectorFrameName: xs.Cfg.Sprite.GeneralSelectScene01.GeneralSelectScene01_General01Selector.frameName,
            namePic_name: "GeneralSelectScene01_General01Name",
            namePic_area: "GeneralSelectScene01",
            descPic_name: "GeneralSelectScene01_General01Desc",
            descPic_area: "GeneralSelectScene01",
            say: xs.Tools.String.createString("auto_name_88"),
            bgOffset: { x: -4, y: -8 }
        },
        {
            index: 1,
            generalId: xs.Tools.CfgData.getGlobalConf("FreshmanChooseGeneralId")[1],
            selectorFrameName: xs.Cfg.Sprite.GeneralSelectScene01.GeneralSelectScene01_General02Selector.frameName,
            namePic_name: "GeneralSelectScene01_General02Name",
            namePic_area: "GeneralSelectScene01",
            descPic_name: "GeneralSelectScene01_General02Desc",
            descPic_area: "GeneralSelectScene01",
            say: xs.Tools.String.createString("auto_name_89"),
            bgOffset: { x: -9, y: -9 }
        },
        {
            index: 2,
            generalId: xs.Tools.CfgData.getGlobalConf("FreshmanChooseGeneralId")[2],
            selectorFrameName: xs.Cfg.Sprite.GeneralSelectScene01.GeneralSelectScene01_General03Selector.frameName,
            namePic_name: "GeneralSelectScene01_General03Name",
            namePic_area: "GeneralSelectScene01",
            descPic_name: "GeneralSelectScene01_General03Desc",
            descPic_area: "GeneralSelectScene01",
            say: xs.Tools.String.createString("auto_name_90"),
            bgOffset: { x: -9, y: -8 }
        },
        {
            index: 3,
            generalId: xs.Tools.CfgData.getGlobalConf("FreshmanChooseGeneralId")[3],
            selectorFrameName: xs.Cfg.Sprite.GeneralSelectScene01.GeneralSelectScene01_General04Selector.frameName,
            namePic_name: "GeneralSelectScene01_General04Name",
            namePic_area: "GeneralSelectScene01",
            descPic_name: "GeneralSelectScene01_General04Desc",
            descPic_area: "GeneralSelectScene01",
            say: xs.Tools.String.createString("auto_name_91"),
            bgOffset: { x: 0, y: -16 }
        }
    ]
});
// source line 454, bytecode pc 1343
xs.Scene.Mgr.registerScene("GeneralSelectScene", {
    "class": xs.Scene.GeneralSelectScene,
    type: xs.Constant_SceneType_None,
    area: [ "GeneralSelectScene01" ]
});
