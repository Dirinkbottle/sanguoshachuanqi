// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Meridians/PracticeMeridiansMainView.js:1
// source line 279, bytecode pc 926
(xs.Views.PracticeMeridiansMainView = cc.Layer.extend({
    name: "xs.Views.PracticeMeridiansMainView",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [
        {
            tag: 10,
            type: "ls",
            name: "m_meridiansHave_label",
            id: "LS_piaozi",
            stringId: "str_MeridiansHave"
        },
        {
            tag: 11,
            type: "ls",
            name: "m_meridiansGet_label",
            id: "LS_piaozi",
            stringId: "str_MeridiansGet"
        },
        { tag: 12, type: "ls", name: "m_meridiansHave", id: "LS_piaozi" },
        { tag: 13, type: "ls", name: "m_meridiansGet", id: "LS_piaozi" }
    ],
    ccbCfg_1: [
        {
            tag: 2,
            type: "btn",
            name: "m_practiceMeridiansBtn",
            id: "Btn_btn1",
            stringId: "str_PracticeMeridians"
        },
        {
            tag: 4,
            type: "ls",
            name: "m_meridiansFreeTips",
            id: "LS_fightUI1",
            stringId: "str_MeridiansFreeTimes"
        },
        { tag: 5, type: "ls", name: "m_meridiansPower", id: "LS_piaozi", stringId: "str_MeridiansPower" },
        { tag: 6, type: "ls", name: "m_meridiansNow", id: "LS_piaozi" }
    ],
    ccbCfg_2: [
        { tag: 1, type: "btn", name: "m_getMeridiansBtn", id: "Btn_btn1", stringId: "str_getMeridians" },
        {
            tag: 3,
            type: "btn",
            name: "m_gotoMeridiansBtn",
            id: "Btn_btn1",
            stringId: "str_PracticeMeridians"
        },
        {
            tag: 31,
            type: "ls",
            name: "m_meridiansDoubleTips",
            id: "LS_piaozi",
            stringId: "str_MeridiansCanDouble"
        },
        { tag: 32, type: "ls", name: "m_meridiansCost", id: "LS_fightUI1" }
    ],
    lianmai_jichu: [ 8, 20, 38, 65, 106 ],
    init: function() {
    var visibleSize, _label;
    if (!this._super()) {
        // source line 31, bytecode pc 19
        return false;
    }
    // source line 33, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 35, bytecode pc 35
    (this.m_meridiansHave = null);
    // source line 36, bytecode pc 43
    (this.m_meridiansGet = null);
    // source line 38, bytecode pc 51
    (this.m_meridiansFreeTips = null);
    // source line 39, bytecode pc 59
    (this.m_meridiansNow = null);
    // source line 40, bytecode pc 67
    (this.m_meridiansDoubleTips = null);
    // source line 41, bytecode pc 75
    (this.m_meridiansCost = null);
    // source line 43, bytecode pc 83
    (this.m_practiceMeridiansBtn = null);
    // source line 44, bytecode pc 91
    (this.m_getMeridiansBtn = null);
    // source line 45, bytecode pc 99
    (this.m_gotoMeridiansBtn = null);
    // source line 49, bytecode pc 122
    xs.log_zhz(" xs.Views.PracticeMeridiansMainView begin");
    // source line 51, bytecode pc 147
    (visibleSize = xs.director.getVisibleSize());
    // source line 53, bytecode pc 198
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.PracticeMeridiansMainView, this));
    // source line 55, bytecode pc 237
    this.m_ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 58, bytecode pc 329
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", offset: cc.p(-266, -306), sc: true });
    // source line 60, bytecode pc 356
    (this.node1 = this.m_ccbNode.getChildByTag(101));
    // source line 61, bytecode pc 399
    xs.Utils.UI.replaceCcbByCfg(this.node1, this.ccbCfg_1, this);
    // source line 62, bytecode pc 426
    (this.node2 = this.m_ccbNode.getChildByTag(102));
    // source line 63, bytecode pc 469
    xs.Utils.UI.replaceCcbByCfg(this.node2, this.ccbCfg_2, this);
    // source line 64, bytecode pc 512
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 66, bytecode pc 532
    this._amendCcbiPos(this.m_ccbNode);
    // source line 68, bytecode pc 576
    (this.onClickMeridiansArm = xs.Views.Armature.AutoAudioArmature.create("Arm_Lianmai"));
    // source line 69, bytecode pc 626
    this.onClickMeridiansArm.setPosition(this.m_ccbNode.getChildByTag(99).getPosition());
    // source line 70, bytecode pc 670
    this.onClickMeridiansArm.setZOrder(xs.Views.Gems.GemsPunchView_cfg.GemLightZOrder);
    // source line 71, bytecode pc 690
    this.onClickMeridiansArm.setVisible(false);
    // source line 72, bytecode pc 731
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.onClickMeridiansArm);
    // source line 74, bytecode pc 751
    this.node1.setVisible(true);
    // source line 75, bytecode pc 771
    this.node2.setVisible(false);
    // source line 77, bytecode pc 809
    this.m_practiceMeridiansBtn.setOnClickCallBack(this.onClickMeridiansCallBack.bind(this));
    // source line 78, bytecode pc 847
    this.m_gotoMeridiansBtn.setOnClickCallBack(this.onClickGoToMeridiansCallBack.bind(this));
    // source line 79, bytecode pc 885
    this.m_getMeridiansBtn.setOnClickCallBack(this.onClickGetMeridiansCallBack.bind(this));
    // source line 81, bytecode pc 910
    (visibleSize = xs.director.getVisibleSize());
    // source line 82, bytecode pc 946
    (_label = xs.Factorys.Label.createByStyleId("LS_yuanfenInf2"));
    // source line 83, bytecode pc 994
    _label.setString(xs.Tools.String.createString("ls_str_lianmai_tips"));
    // source line 89, bytecode pc 1120
    xs.Utils.Node.attachNodes(this, _label, {
    desc: "lb",
    sc: true,
    offset: {
        x: (((visibleSize.width / 2) - (xs.Views.MainMenuView.Width / 2)) + 40),
        y: (visibleSize.height - 80)
    }
});
    // source line 93, bytecode pc 1143
    xs.log_zhz(" xs.Views.PracticeMeridiansMainView end");
    // source line 95, bytecode pc 1145
    return true;
},
    onClickMeridiansCallBack: function() {
    // source line 98, bytecode pc 19
    this.node1.setVisible(false);
    // source line 99, bytecode pc 39
    this.node2.setVisible(true);
},
    onClickGoToMeridiansCallBack: function() {
    var dialog, jichuMaili;
    if ((this.pulse_count <= 0)) {
        // source line 105, bytecode pc 72
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Meridians_no_cishu"));
        // source line 106, bytecode pc 74
        return void 0;
    }
    // source line 125, bytecode pc 244
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 115, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 118, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 123, bytecode pc 126
    this.runAction(cc.Sequence.create(cc.DelayTime.create(1), cc.CallFunc.create(function() {
    // source line 121, bytecode pc 19
    this.onClickMeridiansArm.setVisible(true);
    // source line 122, bytecode pc 62
    this.onClickMeridiansArm.playAniById("Liammai", { loop: false, speed: 1 });
}.bind(this))));
    // source line 124, bytecode pc 139
    this._requestGoToMeridiansCall();
}.bind(this)
}));
    // source line 126, bytecode pc 262
    (dialog = dialog.getRealDialog());
    // source line 127, bytecode pc 267
    (jichuMaili = 0);
    if (this.lianmai_jichu[(this.pulse_num - 1)]) {
        // source line 129, bytecode pc 306
        (jichuMaili = this.lianmai_jichu[(this.pulse_num - 1)]);
    }
    // source line 132, bytecode pc 400
    dialog.setContentText(xs.Tools.String.createStringWithArgsArray("str_Meridians_huafei_queren", [ this.pulse_gold, (6 - this.pulse_count), this.pulse_num, jichuMaili ]));
    // source line 133, bytecode pc 448
    dialog.setTitleByString(xs.Tools.String.createString("auto_name_223"));
},
    _requestGoToMeridiansCall: function() {
    var m_user_id;
    // source line 137, bytecode pc 61
    (m_user_id = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId());
    // source line 156, bytecode pc 133
    xs.Tools.Net.requestPracticeMeridians({ user_id: m_user_id, pulse_count: this.pulse_count, pulse_num: this.pulse_num }, function(jsonData) {
    var _string;
    // source line 146, bytecode pc 31
    xs.log_zhz("jsonData.pulse_multiple", jsonData.pulse_multiple);
    if (jsonData.pulse_multiple) {
        // source line 148, bytecode pc 98
        (_string = xs.Tools.String.createStringWithArgsArray("str_Meridians_Toast", [ jsonData.pulse_multiple ]));
        // source line 149, bytecode pc 137
        xs.Views.Mgr.showFontView(_string, "LS_danyao", null);
    } else {
        // source line 151, bytecode pc 178
        (_string = xs.Tools.String.createString("str_Meridians_Toast_1"));
        // source line 152, bytecode pc 217
        xs.Views.Mgr.showFontView(_string, "LS_danyao", null);
    }
    // source line 154, bytecode pc 234
    this.updateView(jsonData);
}, this);
},
    onClickGetMeridiansCallBack: function() {
    var dialog;
    // source line 163, bytecode pc 19
    this.node1.setVisible(true);
    // source line 164, bytecode pc 39
    this.node2.setVisible(false);
    if ((this.pulse_count <= 0)) {
        // source line 166, bytecode pc 54
        return void 0;
    }
    // source line 179, bytecode pc 224
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 174, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 177, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 178, bytecode pc 39
    this._requestCollectMeridians();
}.bind(this)
}));
    // source line 180, bytecode pc 242
    (dialog = dialog.getRealDialog());
    // source line 181, bytecode pc 290
    dialog.setContentText(xs.Tools.String.createString("str_isCollectionMeridians"));
    // source line 182, bytecode pc 338
    dialog.setTitleByString(xs.Tools.String.createString("auto_name_223"));
},
    _requestCollectMeridians: function() {
    // source line 193, bytecode pc 115
    xs.Tools.Net.requestCollectMeridians({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pulse_count: this.pulse_count
}, function(jsonData) {
    // source line 191, bytecode pc 16
    this.updateView(jsonData);
}, this);
},
    onGoToClickMeridiansCallBack: function() {
    var needLevel, _level, _data;
    // source line 197, bytecode pc 40
    (needLevel = xs.Tools.CfgData.getGlobalConf("MeridianConf").user_level);
    // source line 198, bytecode pc 102
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < needLevel)) {
        // source line 200, bytecode pc 198
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("auto_name_52", [ needLevel.toString() ]));
    } else {
        // source line 202, bytecode pc 254
        (_data = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getAllMeridianTopModel());
        if (xs.Utils.isEmpty(_data)) {
            // source line 204, bytecode pc 344
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MeridiansMain_21"));
            // source line 205, bytecode pc 346
            return void 0;
        }
        // source line 207, bytecode pc 383
        xs.Scene.Mgr.changeSceneByName("MeridiansMainScene", _data);
    }
},
    _amendCcbiPos: function(mCcbi) {
    var mChilds, mChildIdx, mChild, mOriginalPos;
    // source line 213, bytecode pc 17
    (mChilds = mCcbi.getChildren());
    if (mChilds) {
        for (var mChildIdx in mChilds) {
            // source line 216, bytecode pc 52
            (mChild = mChilds[mChildIdx]);
            if (!(mChild.getPosition)) continue;
            // source line 218, bytecode pc 83
            (mOriginalPos = mChild.getPosition());
            // source line 219, bytecode pc 115
            mChild.setPosition(this._ip4sPosTransform(mOriginalPos));
        }
    }
},
    updateView: function(jsonData) {
    if (xs.Utils.parseStringSafe(jsonData.pulse_total)) {
        // source line 227, bytecode pc 61
        this.m_meridiansHave.setString(jsonData.pulse_total);
    }
    if (jsonData.pulse_value) {
        // source line 229, bytecode pc 101
        this.m_meridiansGet.setString(jsonData.pulse_value);
    }
    if (jsonData.pulse_count) {
        // source line 232, bytecode pc 129
        (this.pulse_count = jsonData.pulse_count);
        // source line 233, bytecode pc 196
        this.m_meridiansFreeTips.setString(xs.Tools.String.createStringWithArgsArray("str_MeridiansFreeTimes", [ this.pulse_count ]));
    }
    if (jsonData.pulse_list.pulse_base) {
        // source line 236, bytecode pc 252
        this.m_meridiansNow.setString(("+" + jsonData.pulse_list.pulse_base));
    }
    if (jsonData.pulse_list.pulse_gold) {
        // source line 239, bytecode pc 297
        (this.pulse_gold = (jsonData.pulse_list.pulse_gold || 0));
    }
    // source line 240, bytecode pc 329
    this.m_meridiansCost.setString(jsonData.pulse_list.pulse_gold);
    if (jsonData.pulse_list.pulse_num) {
        // source line 243, bytecode pc 367
        (this.pulse_num = jsonData.pulse_list.pulse_num);
    }
    if ((this.pulse_count <= 0)) {
        // source line 245, bytecode pc 431
        this.m_practiceMeridiansBtn.setString(xs.Tools.String.createString("str_gotoMeridians"));
        // source line 246, bytecode pc 469
        this.m_practiceMeridiansBtn.setOnClickCallBack(this.onGoToClickMeridiansCallBack.bind(this));
    }
},
    _ip4sPosTransform: function(mPos) {
    var visibleSize, mScaleW, mScaleH;
    // source line 251, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 252, bytecode pc 40
    (mScaleW = (visibleSize.width / 960));
    // source line 253, bytecode pc 56
    (mScaleH = (visibleSize.height / 640));
    // source line 254, bytecode pc 99
    return cc.p((mPos.x * mScaleW), (mPos.y * mScaleH));
},
    onEnterTransitionDidFinish: function() {
    // source line 258, bytecode pc 12
    this._super();
    // source line 265, bytecode pc 117
    xs.Tools.Net.requestMeridiansMainInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(jsonData) {
    // source line 263, bytecode pc 16
    this.updateView(jsonData);
}, this);
},
    onExitTransitionDidStart: function() {
    // source line 270, bytecode pc 12
    this._super();
},
    onEnter: function() {
    // source line 274, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 277, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 280, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 281, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 282, bytecode pc 56
    this.m_practiceMeridiansBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 283, bytecode pc 83
    this.m_getMeridiansBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 284, bytecode pc 110
    this.m_gotoMeridiansBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 287, bytecode pc 952
(xs.Views.PracticeMeridiansMainView.create = function() {
    var view;
    // source line 288, bytecode pc 23
    (view = new xs.Views.PracticeMeridiansMainView());
    if ((view && view.init())) {
        // source line 290, bytecode pc 55
        return view;
    }
    // source line 292, bytecode pc 80
    xs.assert(false, "xs.Views.PracticeMeridiansMainView.create error!");
    // source line 293, bytecode pc 82
    return null;
});
