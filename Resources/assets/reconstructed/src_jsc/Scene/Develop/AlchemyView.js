// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Develop/AlchemyView.js:1
// source line 232, bytecode pc 1072
(xs.Views.AlchemyView = cc.Layer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(generalModel) {
    var visibleSize, furnace;
    // source line 13, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 15, bytecode pc 45
    (this.generalModel = generalModel);
    // source line 17, bytecode pc 87
    (furnace = xs.Factorys.Sprite.create("LianDanScene01_Furnace", "LianDanScene01"));
    // source line 18, bytecode pc 171
    xs.Utils.Node.attachNodes(this, furnace, { desc: "cl", offset: cc.p(210, -20), sc: true });
    // source line 21, bytecode pc 205
    (this.ccbNode_userInfo = xs.ccb_reader.load("ccb3/0_7_6_PlayerInfo.ccbi"));
    // source line 22, bytecode pc 248
    this.ccbNode_userInfo.setContentSize(cc.size(411, 173));
    // source line 23, bytecode pc 295
    this.ccbNode_userInfo.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 25, bytecode pc 419
    xs.Utils.Node.attachNodes(this, this.ccbNode_userInfo, {
    desc: "cl",
    offset: cc.p(((((visibleSize.width - xs.Views.MainMenuView.Width) - 410) / 2) + 390), 100),
    sc: true
});
    // source line 27, bytecode pc 427
    (this.m_name = null);
    // source line 28, bytecode pc 435
    (this.m_level = null);
    // source line 29, bytecode pc 443
    (this.m_talent = null);
    // source line 30, bytecode pc 451
    (this.m_ganoderma = null);
    // source line 31, bytecode pc 459
    (this.m_hp = null);
    // source line 32, bytecode pc 467
    (this.m_attack = null);
    // source line 33, bytecode pc 475
    (this.m_defence = null);
    // source line 34, bytecode pc 483
    (this.m_int = null);
    // source line 35, bytecode pc 491
    (this.m_talentStr = null);
    // source line 36, bytecode pc 499
    (this.m_ganodermaStr = null);
    // source line 38, bytecode pc 552
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_userInfo, this.cfg.userInfo.ccbCfg, this);
    // source line 41, bytecode pc 618
    xs.Utils.replaceIcon(this.ccbNode_userInfo, this.cfg.userInfo.icon.tag, generalModel.createIcon_Grade());
    // source line 43, bytecode pc 631
    this.updateUserInfoShow();
    // source line 44, bytecode pc 682
    this.m_talentStr.setString(xs.Tools.String.createString("talent"));
    // source line 45, bytecode pc 733
    this.m_ganodermaStr.setString(xs.Tools.String.createString("ganoderma"));
    // source line 48, bytecode pc 754
    (this.m_speakWords = generalModel.getDevelopWords());
    // source line 49, bytecode pc 787
    (this.m_speakView = xs.Views.SpeakerView.create());
    // source line 50, bytecode pc 830
    this.m_speakView.setContentSize(cc.size(294, 130));
    // source line 51, bytecode pc 869
    this.m_speakView.setAnchorPoint(cc.p(1, 0));
    // source line 53, bytecode pc 889
    this.m_speakView.setDirector(false);
    // source line 55, bytecode pc 980
    xs.Utils.Node.attachNodes(this.ccbNode_userInfo, this.m_speakView, { desc: "lt", offset: cc.p(10, -40), sc: false });
    // source line 56, bytecode pc 1016
    xs.Utils.Node.fastSetVisible(this.m_speakView, false);
    // source line 59, bytecode pc 1053
    (this.alchemyControl = xs.Views.AlchemyBarControl.create(generalModel));
    // source line 61, bytecode pc 1180
    xs.Utils.Node.attachNodes(this, this.alchemyControl, {
    desc: "cl",
    offset: cc.p(((((visibleSize.width - xs.Views.MainMenuView.Width) - 410) / 2) + 390), -130),
    sc: true
});
    // source line 66, bytecode pc 1217
    this.alchemyControl.setAlchemyCallBack(function(jsonObj) {
    // source line 64, bytecode pc 50
    this.showAlchemyResult(true, xs.Models.CultureMedicine.create(jsonObj.culture_info));
    // source line 65, bytecode pc 63
    this.updateUserInfoShow();
}.bind(this));
    if (generalModel.getAlchemyInfo()) {
        // source line 70, bytecode pc 1266
        this.showAlchemyResult(true, generalModel.getAlchemyInfo());
    }
    // source line 74, bytecode pc 1310
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("developTip"));
    // source line 75, bytecode pc 1399
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "rt", offset: cc.p(-180, -60), sc: true });
    // source line 77, bytecode pc 1401
    return true;
},
    onEnter: function() {
    var delayTime, callFunc;
    // source line 82, bytecode pc 46
    xs.Utils.Notify.addObserver(this, this.updateUserInfoShow, xs.Constant_Notify_ModelChange_General);
    // source line 84, bytecode pc 73
    (delayTime = cc.DelayTime.create(1));
    // source line 85, bytecode pc 120
    (callFunc = cc.CallFunc.create(this.showSpeak.bind(this), this));
    // source line 86, bytecode pc 163
    this.runAction(cc.Sequence.create(delayTime, callFunc));
},
    showSpeak: function() {
    var scaleTo;
    // source line 90, bytecode pc 23
    this.m_speakView.setScale(0.1);
    // source line 91, bytecode pc 48
    this.m_speakView.say(this.m_speakWords);
    // source line 92, bytecode pc 84
    xs.Utils.Node.fastSetVisible(this.m_speakView, true);
    // source line 94, bytecode pc 117
    (scaleTo = cc.ScaleTo.create(0.3, 1));
    // source line 95, bytecode pc 139
    this.m_speakView.runAction(scaleTo);
},
    onExit: function() {
    // source line 99, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_General);
},
    showAlchemyResult: function(bVisible, alchemyModel) {
    if (!this.alchemySprite) {
        // source line 105, bytecode pc 56
        (this.alchemySprite = xs.Factorys.Sprite.create("LianDanScene01_AlchemyResult", "LianDanScene01"));
        // source line 106, bytecode pc 142
        xs.Utils.Node.attachNodes(this, this.alchemySprite, { desc: "cl", offset: cc.p(220, 0), sc: true });
    }
    // source line 108, bytecode pc 164
    this.alchemySprite.setVisible(bVisible);
    if (!this.alchemyEffect) {
        // source line 112, bytecode pc 210
        (this.alchemyEffect = xs.ccb_reader.load("ccb3/0_7_6_AlchemyResult.ccbi"));
        // source line 113, bytecode pc 253
        this.alchemyEffect.setContentSize(cc.size(430, 259));
        // source line 114, bytecode pc 300
        this.alchemyEffect.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 116, bytecode pc 426
        xs.Utils.Node.attachNodes(this, this.alchemyEffect, {
    desc: "cl",
    offset: cc.p(((((visibleSize.width - xs.Views.MainMenuView.Width) - 410) / 2) + 390), -120),
    sc: true
});
        // source line 118, bytecode pc 434
        (this.m_alchemyName = null);
        // source line 119, bytecode pc 442
        (this.m_alchemyUpVal = null);
        // source line 120, bytecode pc 450
        (this.m_alchemyDownVal = null);
        // source line 121, bytecode pc 458
        (this.m_leftBtn = null);
        // source line 122, bytecode pc 466
        (this.m_rightBtn = null);
        // source line 123, bytecode pc 474
        (this.m_alchemyTip = null);
        // source line 125, bytecode pc 527
        xs.Utils.UI.replaceCcbByCfg(this.alchemyEffect, this.cfg.alchemyEffect.ccbCfg, this);
        // source line 138, bytecode pc 564
        this.m_leftBtn.setOnClickCallBack(function() {
    // source line 137, bytecode pc 69
    xs.Tools.Net.requireTakeMedicine({ user_general_id: this.generalModel.getPkId(), is_take: 0 }, function() {
    // source line 134, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Factorys.String.create("1070310008"));
    // source line 135, bytecode pc 74
    this.showAlchemyResult(false);
    // source line 136, bytecode pc 87
    this.updateUserInfoShow();
}, this);
}.bind(this));
        // source line 151, bytecode pc 601
        this.m_rightBtn.setOnClickCallBack(function() {
    // source line 150, bytecode pc 69
    xs.Tools.Net.requireTakeMedicine({ user_general_id: this.generalModel.getPkId(), is_take: 1 }, function() {
    // source line 147, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Factorys.String.create("1070310007"));
    // source line 148, bytecode pc 74
    this.showAlchemyResult(false);
    // source line 149, bytecode pc 87
    this.updateUserInfoShow();
}, this);
}.bind(this));
    }
    // source line 154, bytecode pc 618
    this.updateAlchemyInfo(alchemyModel);
    // source line 156, bytecode pc 640
    this.alchemyEffect.setVisible(bVisible);
    // source line 159, bytecode pc 663
    this.alchemyControl.setVisible(!bVisible);
},
    updateUserInfoShow: function() {
    // source line 164, bytecode pc 35
    this.m_name.setString(this.generalModel.getNameString());
    // source line 165, bytecode pc 77
    this.m_level.setString((this.generalModel.getLevel() + ""));
    // source line 166, bytecode pc 113
    this.m_talent.setString(this.generalModel.getTalentPoint());
    // source line 167, bytecode pc 160
    this.m_hp.setString(this.generalModel.getAttrNaked(xs.Constant_AttrType_Hp));
    // source line 168, bytecode pc 207
    this.m_attack.setString(this.generalModel.getAttrNaked(xs.Constant_AttrType_Atk));
    // source line 169, bytecode pc 254
    this.m_defence.setString(this.generalModel.getAttrNaked(xs.Constant_AttrType_Def));
    // source line 170, bytecode pc 301
    this.m_int.setString(this.generalModel.getAttrNaked(xs.Constant_AttrType_Int));
    // source line 171, bytecode pc 373
    this.m_ganoderma.setString((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() + ""));
},
    updateAlchemyInfo: function(alchemyModel) {
    if (alchemyModel) {
        // source line 177, bytecode pc 58
        this.m_alchemyTip.setString(xs.Factorys.String.create("1071110026"));
        // source line 178, bytecode pc 91
        this.m_alchemyName.setString(alchemyModel.getName());
        // source line 182, bytecode pc 184
        xs.Utils.replaceNode(this.alchemyEffect, this.cfg.alchemyEffect.effect_up.tag, xs.Tools.UI.getAttrIconSprite(alchemyModel.getUpAttrField()));
        // source line 184, bytecode pc 217
        this.m_alchemyUpVal.setString(alchemyModel.getUpAttrVal());
        // source line 188, bytecode pc 310
        xs.Utils.replaceNode(this.alchemyEffect, this.cfg.alchemyEffect.effect_down.tag, xs.Tools.UI.getAttrIconSprite(alchemyModel.getDownAttrField()));
        // source line 190, bytecode pc 343
        this.m_alchemyDownVal.setString(alchemyModel.getDownAttrVal());
    }
},
    cfg: {
        userInfo: {
            icon: { tag: 10 },
            ccbCfg: [
                { tag: 11, type: "ls", name: "m_name", id: "LS_wujiangName1" },
                { tag: 12, type: "ls", name: "m_level", id: "LS_Lv" },
                { tag: 13, type: "ls", name: "m_talent", id: "LS_mainUI4" },
                { tag: 14, type: "ls", name: "m_ganoderma", id: "LS_mainUI4" },
                { tag: 15, type: "ls", name: "m_hp", id: "LS_mainUI4" },
                { tag: 16, type: "ls", name: "m_attack", id: "LS_mainUI4" },
                { tag: 18, type: "ls", name: "m_defence", id: "LS_mainUI4" },
                { tag: 17, type: "ls", name: "m_int", id: "LS_mainUI4" },
                { tag: 19, type: "ls", name: "m_talentStr", id: "LS_Lv" },
                { tag: 20, type: "ls", name: "m_ganodermaStr", id: "LS_Lv" }
            ]
        },
        alchemyEffect: {
            name: { tag: 10 },
            effect_up: { tag: 15 },
            effect_up_val: { tag: 11 },
            effect_down: { tag: 16 },
            effect_down_val: { tag: 12 },
            leftBtn: { tag: 13 },
            rightBtn: { tag: 14 },
            ccbCfg: [
                { tag: 10, type: "ls", name: "m_alchemyName", id: "LS_danyao" },
                { tag: 11, type: "ls", name: "m_alchemyUpVal", id: "LS_mainUI4" },
                { tag: 12, type: "ls", name: "m_alchemyDownVal", id: "LS_mainUI4" },
                { tag: 13, type: "btn", name: "m_leftBtn", id: "Btn_GiveUp" },
                { tag: 14, type: "btn", name: "m_rightBtn", id: "Btn_Take" },
                { tag: 17, type: "ls", name: "m_alchemyTip", id: "LS_liandanGX" }
            ]
        }
    }
}));
// source line 238, bytecode pc 1098
(xs.Views.AlchemyView.create = function(generalModel) {
    var ret;
    // source line 239, bytecode pc 23
    (ret = new xs.Views.AlchemyView());
    if ((ret && ret.init(generalModel))) {
        // source line 241, bytecode pc 59
        return ret;
    }
    // source line 243, bytecode pc 61
    return null;
});
// source line 435, bytecode pc 1192
(xs.Views.AlchemyBarControl = cc.Node.extend({
    ctor: function() {
    // source line 250, bytecode pc 12
    this._super();
    // source line 251, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(generalModel) {
    var tag, controlBar, _result;
    // source line 256, bytecode pc 33
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_6_AlchemyBar.ccbi"));
    // source line 257, bytecode pc 76
    this.ccbNode.setContentSize(cc.size(439, 291));
    // source line 258, bytecode pc 115
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 259, bytecode pc 162
    this.ccbNode.setPosition(cc.p(-350, -146));
    // source line 260, bytecode pc 182
    this.addChild(this.ccbNode);
    // source line 262, bytecode pc 194
    (this.barArray = []);
    // source line 263, bytecode pc 200
    (tag = 10);
    while ((tag < 14)) {
        // source line 264, bytecode pc 265
        (controlBar = xs.Views.AlchemyBar.create(this.ccbNode.getChildByTag(tag), (tag - 10)));
        // source line 275, bytecode pc 329
        controlBar.getSelectBtn().setOnClickCallBack(function() {
    var i;
    // source line 266, bytecode pc 19
    this.curBar.setSelectStatue(true);
    // source line 267, bytecode pc 24
    (i = 0);
    while ((i < this.self.barArray.length)) {
        if ((this.self.barArray[i] !== this.curBar)) {
            // source line 269, bytecode pc 86
            this.self.barArray[i].setSelectStatue(false);
        }
        // source line 267, bytecode pc 101
        i++;
    }
    if ((this.curBar.getSelectBtn().getGuideTag() === 4009)) {
        // source line 273, bytecode pc 206
        xs.Guide.GuideMgr.endStepBySequence([ "140107" ]);
    }
}.bind({ self: this, curBar: controlBar }));
        if ((tag === 11)) {
            // source line 278, bytecode pc 370
            controlBar.getSelectBtn().setGuideTag(4009);
        }
        // source line 282, bytecode pc 395
        (this.tagForUmeng = { is_gain: 0, is_multi: 0 });
        // source line 338, bytecode pc 459
        controlBar.getDevelopBtn().setOnClickCallBack(function() {
    var idx;
    // source line 285, bytecode pc 32
    (idx = this.self.barArray.indexOf(this.curBar));
    // source line 286, bytecode pc 57
    (this.tagForUmeng = { is_gain: 0, is_multi: 0 });
    // source line 287, bytecode pc 61
    switch (idx) {
        case 0:
        if ((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 5)) {
            // source line 292, bytecode pc 234
            xs.Tools.Net.requireAlchemy({ user_general_id: generalModel.getPkId(), is_gain: 0, is_multi: 0 }, this.self.onAlchemyResult, this.self);
        } else {
            // source line 294, bytecode pc 272
            xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
        }
        break;
        case 1:
        if (((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 5) && (xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() >= 1))) {
            // source line 300, bytecode pc 416
            (this.self.tagForUmeng.is_gain = 1);
            // source line 301, bytecode pc 434
            (this.self.tagForUmeng.is_multi = 0);
            // source line 304, bytecode pc 524
            xs.Tools.Net.requireAlchemy({ user_general_id: generalModel.getPkId(), is_gain: 1, is_multi: 0 }, this.self.onAlchemyResult, this.self);
        } else {
            if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() < 1)) {
                // source line 307, bytecode pc 621
                xs.Tools.UI.showGoldNotEnough();
            } else {
                // source line 309, bytecode pc 659
                xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
            }
        }
        break;
        case 2:
        if ((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 50)) {
            // source line 316, bytecode pc 809
            xs.Tools.Net.requireAlchemy({ user_general_id: generalModel.getPkId(), is_gain: 0, is_multi: 1 }, this.self.onAlchemyResult, this.self);
        } else {
            // source line 318, bytecode pc 847
            xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
        }
        break;
        case 3:
        if (((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 50) && (xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() >= 10))) {
            // source line 324, bytecode pc 992
            (this.self.tagForUmeng.is_gain = 1);
            // source line 325, bytecode pc 1010
            (this.self.tagForUmeng.is_multi = 1);
            // source line 328, bytecode pc 1100
            xs.Tools.Net.requireAlchemy({ user_general_id: generalModel.getPkId(), is_gain: 1, is_multi: 1 }, this.self.onAlchemyResult, this.self);
        } else {
            if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() < 10)) {
                // source line 330, bytecode pc 1198
                xs.Tools.UI.showGoldNotEnough();
            } else {
                // source line 332, bytecode pc 1236
                xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
            }
        }
        break;
        default:
        // source line 336, bytecode pc 1270
        xs.assert(false, "controlBar idx error!", idx);
        break;
    }
}.bind({ self: this, curBar: controlBar }));
        // source line 339, bytecode pc 495
        (_result = xs.Profile.Permission.isUnLock_AutoPractice());
        if (_result.result) {
            // source line 403, bytecode pc 578
            controlBar.getAutoPraBtn().setOnClickCallBack(function() {
    var idx;
    // source line 342, bytecode pc 32
    (idx = this.self.barArray.indexOf(this.curBar));
    // source line 343, bytecode pc 57
    (this.tagForUmeng = { is_gain: 0, is_multi: 0 });
    // source line 344, bytecode pc 61
    switch (idx) {
        case 0:
        if ((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 5)) {
            // source line 351, bytecode pc 242
            xs.Views.Mgr.showDialogByName("AutoPracticeDialog", { idx: idx, talent: generalModel.getTalentPoint(), pkId: generalModel.getPkId() });
        } else {
            // source line 354, bytecode pc 280
            xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
        }
        break;
        case 1:
        if (((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 5) && (xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() >= 1))) {
            // source line 364, bytecode pc 504
            xs.Views.Mgr.showDialogByName("AutoPracticeDialog", { idx: idx, talent: generalModel.getTalentPoint(), pkId: generalModel.getPkId() });
        } else {
            if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() < 1)) {
                // source line 368, bytecode pc 601
                xs.Tools.UI.showGoldNotEnough();
            } else {
                // source line 370, bytecode pc 639
                xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
            }
        }
        break;
        case 2:
        if ((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 50)) {
            // source line 379, bytecode pc 797
            xs.Views.Mgr.showDialogByName("AutoPracticeDialog", { idx: idx, talent: generalModel.getTalentPoint(), pkId: generalModel.getPkId() });
        } else {
            // source line 382, bytecode pc 835
            xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
        }
        break;
        case 3:
        if (((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() >= 50) && (xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() >= 10))) {
            // source line 392, bytecode pc 1060
            xs.Views.Mgr.showDialogByName("AutoPracticeDialog", { idx: idx, talent: generalModel.getTalentPoint(), pkId: generalModel.getPkId() });
        } else {
            if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() < 10)) {
                // source line 395, bytecode pc 1158
                xs.Tools.UI.showGoldNotEnough();
            } else {
                // source line 397, bytecode pc 1196
                xs.Views.Mgr.showDialogByName("GanodermaNotEnough");
            }
        }
        break;
        default:
        // source line 401, bytecode pc 1230
        xs.assert(false, "controlBar idx error!", idx);
        break;
    }
}.bind({ self: this, curBar: controlBar }));
        } else {
            // source line 407, bytecode pc 615
            controlBar.getAutoPraBtn().setOnClickCallBack(function() {
    // source line 409, bytecode pc 41
    xs.Views.Mgr.showToast(_result.desc);
});
        }
        if ((tag === 10)) {
            // source line 414, bytecode pc 643
            controlBar.setSelectStatue(true);
        }
        // source line 417, bytecode pc 665
        this.barArray.push(controlBar);
        // source line 263, bytecode pc 680
        tag++;
    }
    // source line 420, bytecode pc 694
    return true;
},
    isUnLock_AutoPrac: function() {
    var level, _levelPlayer;
    // source line 424, bytecode pc 60
    (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("autoCultivateVipLevel", 8)));
    // source line 425, bytecode pc 112
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 426, bytecode pc 139
    xs.log_zhz("level", level);
    // source line 427, bytecode pc 166
    xs.log_zhz("_levelPlayer", _levelPlayer);
    // source line 428, bytecode pc 174
    return (_levelPlayer >= level);
},
    setAlchemyCallBack: function(callback) {
    // source line 432, bytecode pc 9
    (this.callback = callback);
},
    onAlchemyResult: function(jsonObj) {
    // source line 437, bytecode pc 16
    this.callback(jsonObj);
    if (((this.tagForUmeng.is_gain === 1) && (this.tagForUmeng.is_multi === 0))) {
        // source line 440, bytecode pc 90
        xs.Tools.Statistic.buy("1700001", 1, 1);
    } else {
        if (((this.tagForUmeng.is_gain === 1) && (this.tagForUmeng.is_multi === 1))) {
            // source line 442, bytecode pc 170
            xs.Tools.Statistic.buy("1700002", 1, 10);
        }
    }
}
}));
// source line 448, bytecode pc 1218
(xs.Views.AlchemyBarControl.create = function(generalModel) {
    var ret;
    // source line 449, bytecode pc 23
    (ret = new xs.Views.AlchemyBarControl());
    if ((ret && ret.init(generalModel))) {
        // source line 451, bytecode pc 59
        return ret;
    }
    // source line 453, bytecode pc 61
    return null;
});
// source line 554, bytecode pc 2035
(xs.Views.AlchemyBar = cc.Node.extend({
    ctor: function() {
    // source line 459, bytecode pc 12
    this._super();
    // source line 460, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(ccbNode, idx) {
    // source line 464, bytecode pc 7
    (this.m_developName = null);
    // source line 465, bytecode pc 15
    (this.m_coinNum = null);
    // source line 466, bytecode pc 23
    (this.m_ganodermaNum = null);
    // source line 467, bytecode pc 31
    (this.m_btn = null);
    // source line 468, bytecode pc 39
    (this.m_btn_auto = null);
    if (ccbNode.getChildByTag(this.cfg.coinNum.tag)) {
        // source line 471, bytecode pc 120
        xs.Utils.UI.replaceCcbByCfg(ccbNode, this.cfg.ccbCfg_big, this);
    } else {
        // source line 473, bytecode pc 170
        xs.Utils.UI.replaceCcbByCfg(ccbNode, this.cfg.ccbCfg_samll, this);
    }
    // source line 476, bytecode pc 209
    this.m_developName.setStringById(this.cfg.barCfg[idx].developName);
    if (this.m_coinNum) {
        // source line 479, bytecode pc 259
        this.m_coinNum.setString(this.cfg.barCfg[idx].coinNum);
    }
    // source line 481, bytecode pc 298
    this.m_ganodermaNum.setString(this.cfg.barCfg[idx].ganodermaNum);
    // source line 483, bytecode pc 336
    (this.selectPoint = ccbNode.getChildByTag(this.cfg.selectPoint.tag));
    // source line 484, bytecode pc 374
    (this.selectPointBg = ccbNode.getChildByTag(this.cfg.selectPointBg.tag));
    // source line 486, bytecode pc 439
    (this.selectBtn = xs.Views.Btn.createInvisibleWithParent(ccbNode.getChildByTag(this.cfg.normalBg.tag)));
    // source line 488, bytecode pc 477
    (this.selectBg = ccbNode.getChildByTag(this.cfg.selectBg.tag));
    // source line 489, bytecode pc 515
    (this.normalBg = ccbNode.getChildByTag(this.cfg.normalBg.tag));
    // source line 491, bytecode pc 535
    this.selectBg.setVisible(false);
    // source line 493, bytecode pc 543
    (this.bSelected = false);
    // source line 494, bytecode pc 568
    this.selectPoint.setVisible(this.bSelected);
    // source line 495, bytecode pc 593
    this.selectPointBg.setVisible(this.bSelected);
    // source line 496, bytecode pc 618
    this.m_btn.setVisible(this.bSelected);
    // source line 497, bytecode pc 643
    this.m_btn_auto.setVisible(this.bSelected);
    // source line 498, bytecode pc 645
    return true;
},
    setSelectStatue: function(bSelected) {
    // source line 502, bytecode pc 9
    (this.bSelected = bSelected);
    // source line 503, bytecode pc 34
    this.selectPoint.setVisible(this.bSelected);
    // source line 504, bytecode pc 59
    this.selectPointBg.setVisible(this.bSelected);
    // source line 505, bytecode pc 84
    this.m_btn.setVisible(this.bSelected);
    // source line 506, bytecode pc 109
    this.m_btn_auto.setVisible(this.bSelected);
    // source line 508, bytecode pc 131
    this.selectBg.setVisible(bSelected);
},
    getSelectBtn: function() {
    // source line 512, bytecode pc 6
    return this.selectBtn;
},
    getDevelopBtn: function() {
    // source line 516, bytecode pc 6
    return this.m_btn;
},
    getAutoPraBtn: function() {
    // source line 519, bytecode pc 6
    return this.m_btn_auto;
},
    cfg: {
        selectPoint: { tag: 1 },
        selectPointBg: { tag: 10 },
        normalBg: { tag: 4 },
        selectBg: { tag: 5 },
        coinNum: { tag: 6 },
        barCfg: [
            { developName: "1071210001", coinNum: "", ganodermaNum: "X5" },
            { developName: "1071210002", coinNum: "X1", ganodermaNum: "X5" },
            { developName: "1071210003", coinNum: "", ganodermaNum: "X50" },
            { developName: "1071210004", coinNum: "X10", ganodermaNum: "X50" }
        ],
        ccbCfg_samll: [
            { tag: 2, type: "ls", name: "m_developName", id: "LS_wujiangName1" },
            { tag: 3, type: "btn", name: "m_btn", id: "Btn_Develop" },
            { tag: 33, type: "btn", name: "m_btn_auto", id: "Btn_AutoDevelop" },
            { tag: 7, type: "ls", name: "m_ganodermaNum", id: "LS_Lv" }
        ],
        ccbCfg_big: [
            { tag: 2, type: "ls", name: "m_developName", id: "LS_wujiangName1" },
            { tag: 3, type: "btn", name: "m_btn", id: "Btn_Develop" },
            { tag: 33, type: "btn", name: "m_btn_auto", id: "Btn_AutoDevelop" },
            { tag: 6, type: "ls", name: "m_coinNum", id: "LS_Lv" },
            { tag: 7, type: "ls", name: "m_ganodermaNum", id: "LS_Lv" }
        ]
    }
}));
// source line 559, bytecode pc 2061
(xs.Views.AlchemyBar.create = function(ccbNode, idx) {
    var ret;
    // source line 560, bytecode pc 23
    (ret = new xs.Views.AlchemyBar());
    if ((ret && ret.init(ccbNode, idx))) {
        // source line 562, bytecode pc 63
        return ret;
    }
    // source line 564, bytecode pc 65
    return null;
});
