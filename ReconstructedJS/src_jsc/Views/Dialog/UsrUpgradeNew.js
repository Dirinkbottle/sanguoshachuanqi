// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UsrUpgradeNew.js:1
// source line 443, bytecode pc 1216
(xs.Views.Dialog.UsrUpgradeNew = xs.Views.HungerLayer.extend({
    name: "UsrUpgradeNew",
    ccbCfg_Tag1: { tag: 1, type: "ls", name: "label1String", id: "LS_danyao" },
    ccbCfg: [
        { tag: 1, type: "ls", name: "label2String", id: "LS_popUI4" },
        { tag: 2, type: "ls", name: "label3String", id: "LS_popUI5" },
        { tag: 3, type: "ls", name: "label4String", id: "LS_popUI4" },
        { tag: 4, type: "ls", name: "label5String", id: "LS_popUI2" },
        { tag: 5, type: "ls", name: "label6String", id: "LS_mainUI4" },
        { tag: 6, type: "ls", name: "label7String", id: "LS_mainUI4" }
    ],
    ccbCfg_all: [
        { tag: 99, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
        { tag: 999, name: "m_background" },
        { tag: 110, name: "m_background1" },
        { tag: 120, name: "m_background2" },
        { tag: 130, name: "m_background3" },
        { tag: 140, name: "m_background4" },
        { tag: 111, type: "ls", name: "m_label1", id: "LS_loginSign" },
        { tag: 121, type: "ls", name: "m_label2", id: "LS_loginSign" },
        { tag: 131, type: "ls", name: "m_label3", id: "LS_loginSign" },
        { tag: 141, type: "ls", name: "m_label4", id: "LS_loginSign" }
    ],
    cfg: {
        card: { tag: 100, zOrder: 1 },
        label1: { tag: 111, zOrder: 3 },
        background1: { tag: 110, zOrder: 2 },
        background2: { tag: 120, zOrder: 2 },
        label2: { tag: 121, zOrder: 3 },
        background3: { tag: 130, zOrder: 2 },
        label3: { tag: 131, zOrder: 3 },
        background4: { tag: 140, zOrder: 2 },
        label4: { tag: 141, zOrder: 3 },
        button1: { tag: 112, zOrder: 3 },
        button2: { tag: 122, zOrder: 3 },
        button3: { tag: 8, zOrder: 3 },
        button4: { tag: 142, zOrder: 3 }
    },
    ctor: function() {
    // source line 86, bytecode pc 12
    this._super();
},
    init: function(arg) {
    var player, data, tag2String, tag3String, tag4String, tag5String, tag6String, tag7String, visibleSize, node2, _obj, card;
    try {
        if (!this._super()) {
            // source line 95, bytecode pc 20
            return false;
        }
        // source line 99, bytecode pc 71
        (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
        // source line 100, bytecode pc 136
        xs.Utils.Statistic.getInstance().addAndSend("Umeng_setUserLevel", ("" + player.getPlayerLevel()));
        // source line 102, bytecode pc 168
        this.assert(arg.model, "need arg.model", arg);
        // source line 104, bytecode pc 176
        (this.label1String = null);
        // source line 105, bytecode pc 184
        (this.label2String = null);
        // source line 106, bytecode pc 192
        (this.label3String = null);
        // source line 107, bytecode pc 200
        (this.label4String = null);
        // source line 108, bytecode pc 208
        (this.label5String = null);
        // source line 109, bytecode pc 216
        (this.label6String = null);
        // source line 110, bytecode pc 224
        (this.label7String = null);
        // source line 113, bytecode pc 248
        (data = (arg.model || {}));
        // source line 114, bytecode pc 263
        (this._funcCancel = arg.cancelFunc);
        // source line 115, bytecode pc 278
        (this._guideCfg = arg.guideCfg);
        // source line 117, bytecode pc 334
        (tag2String = (data.getString2() || xs.Tools.String.createString("auto_name_473")));
        // source line 118, bytecode pc 363
        (tag3String = (data.getLevel() || "1"));
        // source line 119, bytecode pc 419
        (tag4String = (data.getString3() || xs.Tools.String.createString("auto_name_206")));
        // source line 120, bytecode pc 475
        (tag5String = (data.getString4() || xs.Tools.String.createString("auto_name_474")));
        // source line 121, bytecode pc 504
        (tag6String = (data.getGoldNum() || "0"));
        // source line 122, bytecode pc 533
        (tag7String = (data.getSoldNum() || "0"));
        // source line 124, bytecode pc 558
        (visibleSize = xs.director.getVisibleSize());
        // source line 126, bytecode pc 609
        (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.user_upgrade_new, this));
        // source line 132, bytecode pc 709
        xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "cb", sc: true, offset: { x: -325, y: ((visibleSize.height / 2) - 205) } });
        // source line 136, bytecode pc 733
        (node2 = this.m_ccbNode.getChildByTag(2));
        // source line 137, bytecode pc 773
        xs.Utils.UI.replaceCcbByCfg(node2, this.ccbCfg, this);
        // source line 138, bytecode pc 816
        xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg_all, this);
        // source line 140, bytecode pc 838
        this.label2String.setString(tag2String);
        // source line 141, bytecode pc 860
        this.label3String.setString(tag3String);
        // source line 142, bytecode pc 882
        this.label4String.setString(tag4String);
        // source line 143, bytecode pc 904
        this.label5String.setString(tag5String);
        // source line 144, bytecode pc 926
        this.label6String.setString(tag6String);
        // source line 145, bytecode pc 948
        this.label7String.setString(tag7String);
        // source line 147, bytecode pc 1005
        (_obj = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase("141003"));
        // source line 148, bytecode pc 1034
        (card = _obj.getRes().createOriginalSprite_Waist());
        // source line 150, bytecode pc 1052
        card.setZOrder(-1);
        // source line 151, bytecode pc 1104
        xs.Utils.replaceNode(this.m_ccbNode, this.cfg.card.tag, card, true);
        // source line 153, bytecode pc 1117
        this.setGuideStatus();
        // source line 155, bytecode pc 1130
        this.setSpriteZOrder();
        // source line 161, bytecode pc 1167
        this.m_closeBtn.addOnClickCallBack(function() {
    var _funcCancel;
    // source line 158, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("UsrUpgradeNew");
    // source line 159, bytecode pc 42
    (_funcCancel = this._funcCancel);
    // source line 160, bytecode pc 60
    (_funcCancel && _funcCancel());
}.bind(this));
        // source line 164, bytecode pc 1169
        return true;
    } catch (e) {
        // source line 167, bytecode pc 1210
        xs.Debug.warnException(e);
        /* TODO_BYTECODE pc=1211 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    getGuideTypeByCfg: function(param) {
    if (this._guideCfg[(param - 1)]) {
        // source line 172, bytecode pc 29
        return this._guideCfg[(param - 1)];
    } else {
        // source line 174, bytecode pc 36
        return false;
    }
},
    buttonFunction: function() {
    var type, _result, _level;
    // source line 177, bytecode pc 9
    (type = this.typeFunc);
    // source line 178, bytecode pc 36
    xs.log_zhz("type", type);
    // source line 179, bytecode pc 55
    switch (parseInt(type)) {
        case xs.Constant_Guide_New_Mission:
        // source line 181, bytecode pc 300
        (_result = xs.Profile.Permission.isUnLock_dailyTask());
        if (_result.result) {
            // source line 183, bytecode pc 346
            xs.Views.Mgr.showDialogByName("DailyTaskDialog");
        } else {
            // source line 186, bytecode pc 387
            xs.Views.Mgr.showToast(_result.desc);
        }
        break;
        case xs.Constant_Guide_New_Combat:
        // source line 190, bytecode pc 425
        xs.Scene.Mgr.changeSceneByName("CombatScene");
        break;
        case xs.Constant_Guide_New_Ladder:
        // source line 193, bytecode pc 452
        this.buttonFunc.setGuideTag(4003);
        // source line 194, bytecode pc 490
        xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Ladder);
        break;
        case xs.Constant_Guide_New_Chaos:
        // source line 199, bytecode pc 517
        this.buttonFunc.setGuideTag(4003);
        // source line 200, bytecode pc 555
        xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Chaos);
        break;
        case xs.Constant_Guide_New_EliteDuplicate:
        // source line 203, bytecode pc 582
        this.buttonFunc.setGuideTag(4003);
        if ((xs.Scene.Mgr.getRunningScene().name == "FightChapters")) {
            // source line 205, bytecode pc 662
            xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_EliteDuplicate);
        }
        break;
        case xs.Constant_Guide_New_TeamBuild:
        // source line 210, bytecode pc 700
        xs.Scene.Mgr.changeSceneByName("TeamBuildScene");
        break;
        case xs.Constant_Guide_New_Goddess:
        // source line 213, bytecode pc 767
        (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
        if ((_level < 10)) {
            // source line 215, bytecode pc 838
            xs.Views.Mgr.showToast(xs.Tools.String.createString("goddess_suoding"));
        } else {
            // source line 218, bytecode pc 876
            xs.Scene.Mgr.changeSceneByName("GoddessMainScene");
        }
        break;
        case xs.Constant_Guide_New_Union:
        // source line 242, bytecode pc 929
        xs.Tools.Net.requestGetUnionInfo({}, function(data) {
    if ((data.result >= 1)) {
        // source line 225, bytecode pc 41
        xs.Views.Mgr.hideDialog();
        if ((data.return_info.has_joined >= 1)) {
            // source line 228, bytecode pc 129
            xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().updateBaseUnionUserInfo(data.return_info);
            // source line 229, bytecode pc 197
            xs.Profile.GameData.Mgr.getInstance().Union.getUnion().loadJson(data.return_info);
            // source line 231, bytecode pc 230
            xs.Views.Mgr.showDialogByName("UnionDialog");
        } else {
            // source line 233, bytecode pc 283
            xs.Views.Mgr.showDialogByName("UnionSearch", { param: data });
        }
        // source line 235, bytecode pc 285
        return true;
    }
}, function(data) {
    // source line 239, bytecode pc 35
    xs.Views.Mgr.showToast(data.msg);
    // source line 240, bytecode pc 37
    return true;
}, this);
        break;
        case xs.Constant_Guide_New_Climb:
        // source line 247, bytecode pc 956
        this.buttonFunc.setGuideTag(4003);
        // source line 248, bytecode pc 994
        xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Climb);
        break;
        case xs.Constant_Guide_New_Chapter:
        // source line 251, bytecode pc 1032
        xs.Scene.Mgr.changeSceneByName("FightChapters");
        break;
        case xs.Constant_Guide_New_InterServiceWorship:
        // source line 254, bytecode pc 1064
        xs.Tools.Scene.gotoLadderWar();
        break;
        case xs.Constant_Guide_New_Gems:
        // source line 257, bytecode pc 1131
        (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
        if ((_level < 40)) {
            // source line 259, bytecode pc 1202
            xs.Views.Mgr.showToast(xs.Tools.String.createString("gem_baoshi_suoding"));
        } else {
            // source line 261, bytecode pc 1240
            xs.Scene.Mgr.changeSceneByName("GemsScene");
        }
        break;
        case xs.Constant_Guide_New_HulaoBattle:
        // source line 265, bytecode pc 1272
        xs.Tools.Scene.gotoWorldBoss();
        break;
        case xs.Constant_Guide_New_Equipment:
        // source line 268, bytecode pc 1299
        this.buttonFunc.setGuideTag(4003);
        // source line 269, bytecode pc 1337
        xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_RefineEquip);
        break;
        default:
        break;
    }
    // source line 276, bytecode pc 1374
    xs.Views.Mgr.hideRandEventDialog();
},
    setGuideStatus: function() {
    if (this.getGuideTypeByCfg(1)) {
        // source line 280, bytecode pc 109
        (this.button1 = xs.Utils.replaceButton(this.m_ccbNode, this.cfg.button1.tag, "Btn_btn1", this.getButtonStr(this.getGuideTypeByCfg(1).scene)));
        // source line 281, bytecode pc 187
        this.button1.addOnClickCallBack(this.buttonFunction.bind({ buttonFunc: this.button1, typeFunc: this.getGuideTypeByCfg(1).scene }));
        if (this._funcCancel) {
            // source line 287, bytecode pc 235
            this.button1.addOnClickCallBack(function() {
    var _funcCancel;
    // source line 285, bytecode pc 9
    (_funcCancel = this._funcCancel);
    // source line 286, bytecode pc 27
    (_funcCancel && _funcCancel());
}.bind(this));
        }
        // source line 289, bytecode pc 288
        this.button1.setVisible(parseInt(this.getGuideTypeByCfg(1).is_redirect));
        // source line 291, bytecode pc 336
        this.m_ccbNode.getChildByTag(this.cfg.background1.tag).setVisible(true);
        // source line 292, bytecode pc 429
        this.m_ccbNode.getChildByTag(this.cfg.label1.tag).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(1).function_name));
        // source line 293, bytecode pc 477
        this.m_ccbNode.getChildByTag(this.cfg.label1.tag).setVisible(true);
        // source line 294, bytecode pc 520
        this.m_background.setPreferredSize(cc.size(620, 375));
        // source line 295, bytecode pc 559
        this.m_background1.setPositionY((this.m_background1.getPositionY() - 40));
        // source line 296, bytecode pc 595
        this.m_label1.setPositionY(this.m_background1.getPositionY());
        // source line 297, bytecode pc 631
        this.button1.setPositionY(this.m_background1.getPositionY());
    }
    if (this.getGuideTypeByCfg(2)) {
        // source line 300, bytecode pc 743
        (this.button2 = xs.Utils.replaceButton(this.m_ccbNode, this.cfg.button2.tag, "Btn_btn1", this.getButtonStr(this.getGuideTypeByCfg(2).scene)));
        // source line 301, bytecode pc 822
        this.button2.addOnClickCallBack(this.buttonFunction.bind({ buttonFunc: this.button2, typeFunc: this.getGuideTypeByCfg(2).scene }));
        if (this._funcCancel) {
            // source line 307, bytecode pc 870
            this.button2.addOnClickCallBack(function() {
    var _funcCancel;
    // source line 305, bytecode pc 9
    (_funcCancel = this._funcCancel);
    // source line 306, bytecode pc 27
    (_funcCancel && _funcCancel());
}.bind(this));
        }
        // source line 309, bytecode pc 924
        this.button2.setVisible(parseInt(this.getGuideTypeByCfg(2).is_redirect));
        // source line 311, bytecode pc 972
        this.m_ccbNode.getChildByTag(this.cfg.background2.tag).setVisible(true);
        // source line 312, bytecode pc 1066
        this.m_ccbNode.getChildByTag(this.cfg.label2.tag).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(2).function_name));
        // source line 313, bytecode pc 1114
        this.m_ccbNode.getChildByTag(this.cfg.label2.tag).setVisible(true);
        // source line 314, bytecode pc 1157
        this.m_background.setPreferredSize(cc.size(620, 375));
        // source line 315, bytecode pc 1196
        this.m_background2.setPositionY((this.m_background1.getPositionY() - 75));
        // source line 316, bytecode pc 1232
        this.m_label2.setPositionY(this.m_background2.getPositionY());
        // source line 317, bytecode pc 1268
        this.button2.setPositionY(this.m_background2.getPositionY());
    }
    if (this.getGuideTypeByCfg(3)) {
        // source line 320, bytecode pc 1380
        (this.button3 = xs.Utils.replaceButton(this.m_ccbNode, this.cfg.button3.tag, "Btn_btn1", this.getButtonStr(this.getGuideTypeByCfg(3).scene)));
        // source line 321, bytecode pc 1459
        this.button3.addOnClickCallBack(this.buttonFunction.bind({ buttonFunc: this.button3, typeFunc: this.getGuideTypeByCfg(3).scene }));
        if (this._funcCancel) {
            // source line 327, bytecode pc 1507
            this.button3.addOnClickCallBack(function() {
    var _funcCancel;
    // source line 325, bytecode pc 9
    (_funcCancel = this._funcCancel);
    // source line 326, bytecode pc 27
    (_funcCancel && _funcCancel());
}.bind(this));
        }
        // source line 329, bytecode pc 1561
        this.button3.setVisible(parseInt(this.getGuideTypeByCfg(3).is_redirect));
        // source line 331, bytecode pc 1609
        this.m_ccbNode.getChildByTag(this.cfg.background3.tag).setVisible(true);
        // source line 332, bytecode pc 1703
        this.m_ccbNode.getChildByTag(this.cfg.label3.tag).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(3).function_name));
        // source line 333, bytecode pc 1751
        this.m_ccbNode.getChildByTag(this.cfg.label3.tag).setVisible(true);
        // source line 334, bytecode pc 1794
        this.m_background.setPreferredSize(cc.size(620, 475));
        // source line 335, bytecode pc 1833
        this.m_background3.setPositionY((this.m_background2.getPositionY() - 75));
        // source line 336, bytecode pc 1869
        this.m_label3.setPositionY(this.m_background3.getPositionY());
        // source line 337, bytecode pc 1905
        this.button3.setPositionY(this.m_background3.getPositionY());
    }
    if (this.getGuideTypeByCfg(4)) {
        // source line 340, bytecode pc 2017
        (this.button4 = xs.Utils.replaceButton(this.m_ccbNode, this.cfg.button4.tag, "Btn_btn1", this.getButtonStr(this.getGuideTypeByCfg(4).scene)));
        // source line 341, bytecode pc 2096
        this.button4.addOnClickCallBack(this.buttonFunction.bind({ buttonFunc: this.button4, typeFunc: this.getGuideTypeByCfg(4).scene }));
        if (this._funcCancel) {
            // source line 347, bytecode pc 2144
            this.button4.addOnClickCallBack(function() {
    var _funcCancel;
    // source line 345, bytecode pc 9
    (_funcCancel = this._funcCancel);
    // source line 346, bytecode pc 27
    (_funcCancel && _funcCancel());
}.bind(this));
        }
        // source line 349, bytecode pc 2198
        this.button4.setVisible(parseInt(this.getGuideTypeByCfg(4).is_redirect));
        // source line 351, bytecode pc 2246
        this.m_ccbNode.getChildByTag(this.cfg.background4.tag).setVisible(true);
        // source line 352, bytecode pc 2340
        this.m_ccbNode.getChildByTag(this.cfg.label4.tag).setString(xs.Tools.String.createString(this.getGuideTypeByCfg(4).function_name));
        // source line 353, bytecode pc 2388
        this.m_ccbNode.getChildByTag(this.cfg.label4.tag).setVisible(true);
        // source line 354, bytecode pc 2431
        this.m_background.setPreferredSize(cc.size(620, 525));
        // source line 355, bytecode pc 2470
        this.m_background4.setPositionY((this.m_background3.getPositionY() - 75));
        // source line 356, bytecode pc 2506
        this.m_label4.setPositionY(this.m_background4.getPositionY());
        // source line 357, bytecode pc 2542
        this.button4.setPositionY(this.m_background4.getPositionY());
    }
},
    getButtonStr: function(type) {
    var str;
    // source line 361, bytecode pc 4
    (str = null);
    // source line 362, bytecode pc 23
    switch (parseInt(type)) {
        case xs.Constant_Guide_New_Mission:
        // source line 364, bytecode pc 274
        (str = xs.Tools.String.createString("btnStr_checkTask"));
        break;
        case xs.Constant_Guide_New_Combat:
        // source line 367, bytecode pc 315
        (str = xs.Tools.String.createString("btnStr_gotoCombat"));
        break;
        case xs.Constant_Guide_New_Ladder:
        // source line 370, bytecode pc 356
        (str = xs.Tools.String.createString("btnStr_gotoChallenge"));
        break;
        case xs.Constant_Guide_New_Chaos:
        // source line 373, bytecode pc 397
        (str = xs.Tools.String.createString("chaos_toSnatch"));
        break;
        case xs.Constant_Guide_New_EliteDuplicate:
        // source line 376, bytecode pc 438
        (str = xs.Tools.String.createString("btnStr_gotoChallenge"));
        break;
        case xs.Constant_Guide_New_TeamBuild:
        // source line 379, bytecode pc 479
        (str = xs.Tools.String.createString("btnStr_gotoTeamBuild"));
        break;
        case xs.Constant_Guide_New_Goddess:
        // source line 382, bytecode pc 520
        (str = xs.Tools.String.createString("btnStr_gotoLook"));
        break;
        case xs.Constant_Guide_New_Union:
        // source line 385, bytecode pc 561
        (str = xs.Tools.String.createString("btnStr_gotoUnion"));
        break;
        case xs.Constant_Guide_New_Climb:
        // source line 388, bytecode pc 602
        (str = xs.Tools.String.createString("btnStr_gotoChallenge"));
        break;
        case xs.Constant_Guide_New_Chapter:
        // source line 391, bytecode pc 643
        (str = xs.Tools.String.createString("btnStr_gotoChallenge"));
        break;
        case xs.Constant_Guide_New_InterServiceWorship:
        // source line 394, bytecode pc 684
        (str = xs.Tools.String.createString("btnStr_gotoChallenge"));
        break;
        case xs.Constant_Guide_New_Gems:
        // source line 397, bytecode pc 725
        (str = xs.Tools.String.createString("auto_name_363"));
        break;
        case xs.Constant_Guide_New_HulaoBattle:
        // source line 400, bytecode pc 766
        (str = xs.Tools.String.createString("btnStr_gotoChallenge"));
        break;
        case xs.Constant_Guide_New_Equipment:
        // source line 403, bytecode pc 807
        (str = xs.Tools.String.createString("btnStr_gotoLook"));
        break;
        default:
        // source line 406, bytecode pc 821
        (str = "");
        break;
    }
    // source line 409, bytecode pc 830
    return str;
},
    setSpriteZOrder: function() {
    // source line 412, bytecode pc 62
    this.m_ccbNode.getChildByTag(this.cfg.card.tag).setZOrder(this.cfg.card.zOrder);
    // source line 413, bytecode pc 125
    this.m_ccbNode.getChildByTag(this.cfg.background1.tag).setZOrder(this.cfg.background1.zOrder);
    // source line 414, bytecode pc 188
    this.m_ccbNode.getChildByTag(this.cfg.background2.tag).setZOrder(this.cfg.background2.zOrder);
    // source line 415, bytecode pc 251
    this.m_ccbNode.getChildByTag(this.cfg.background3.tag).setZOrder(this.cfg.background3.zOrder);
    // source line 416, bytecode pc 314
    this.m_ccbNode.getChildByTag(this.cfg.background4.tag).setZOrder(this.cfg.background4.zOrder);
    // source line 417, bytecode pc 377
    this.m_ccbNode.getChildByTag(this.cfg.label1.tag).setZOrder(this.cfg.label1.zOrder);
    // source line 418, bytecode pc 440
    this.m_ccbNode.getChildByTag(this.cfg.label2.tag).setZOrder(this.cfg.label2.zOrder);
    // source line 419, bytecode pc 503
    this.m_ccbNode.getChildByTag(this.cfg.label3.tag).setZOrder(this.cfg.label3.zOrder);
    // source line 420, bytecode pc 566
    this.m_ccbNode.getChildByTag(this.cfg.label4.tag).setZOrder(this.cfg.label4.zOrder);
    // source line 421, bytecode pc 629
    this.m_ccbNode.getChildByTag(this.cfg.button1.tag).setZOrder(this.cfg.button1.zOrder);
    // source line 422, bytecode pc 692
    this.m_ccbNode.getChildByTag(this.cfg.button2.tag).setZOrder(this.cfg.button2.zOrder);
    // source line 423, bytecode pc 755
    this.m_ccbNode.getChildByTag(this.cfg.button3.tag).setZOrder(this.cfg.button3.zOrder);
    // source line 424, bytecode pc 818
    this.m_ccbNode.getChildByTag(this.cfg.button4.tag).setZOrder(this.cfg.button4.zOrder);
},
    setBaseTouchPriority: function(priority) {
    // source line 428, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 429, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    if (this.button1) {
        // source line 431, bytecode pc 67
        this.button1.setTouchPriority((this.m_baseTouchPriority - 1));
    }
    if (this.button2) {
        // source line 433, bytecode pc 105
        this.button2.setTouchPriority((this.m_baseTouchPriority - 1));
    }
    if (this.button3) {
        // source line 435, bytecode pc 143
        this.button3.setTouchPriority((this.m_baseTouchPriority - 1));
    }
    if (this.button4) {
        // source line 437, bytecode pc 181
        this.button4.setTouchPriority((this.m_baseTouchPriority - 1));
    }
    // source line 438, bytecode pc 208
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onEnterTransitionDidFinish: function() {
    // source line 445, bytecode pc 28
    xs.log("onEnterTransitionDidFinish", "begin");
    // source line 448, bytecode pc 55
    xs.Tools.Net.requestCheckWanPuActive();
    try {
        // source line 454, bytecode pc 69
        this._super();
        // source line 456, bytecode pc 99
        xs.audio.playEffect("Audio_EFF_UserUp_A", false);
        // source line 461, bytecode pc 159
        this.runAction(xs.Utils.Node.createDelayAction((24 / xs.fps), function() {
    // source line 462, bytecode pc 29
    xs.audio.playEffect("Audio_EFF_UserUp_B", false);
}));
    } catch (e) {
        // source line 470, bytecode pc 195
        xs.warnException(e);
        /* TODO_BYTECODE pc=196 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 473, bytecode pc 233
    xs.log("onEnterTransitionDidFinish", "end");
}
}));
// source line 488, bytecode pc 1247
(xs.Views.Dialog.UsrUpgradeNew.create = function(arg) {
    var ret;
    // source line 489, bytecode pc 28
    (ret = new xs.Views.Dialog.UsrUpgradeNew());
    if ((ret && ret.init(arg))) {
        // source line 491, bytecode pc 64
        return ret;
    }
    // source line 493, bytecode pc 66
    return null;
});
// source line 501, bytecode pc 1372
xs.Views.Mgr.registerDialog("UsrUpgradeNew", {
    "class": xs.Views.Dialog.UsrUpgradeNew,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
