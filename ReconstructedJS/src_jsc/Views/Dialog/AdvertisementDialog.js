// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AdvertisementDialog.js:1
// source line 315, bytecode pc 1159
(xs.Views.Dialog.AdvertisementDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.AdvertisementDialog",
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelTitle", id: "LS_huodong_title", stringId: "auto_name_311" },
        { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" }
    ],
    conCCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelAbort", id: "LS_fightUI1", stringId: "auto_name_120" },
        { tag: 2, name: "m_leftGeneral" },
        { tag: 3, name: "m_rightGeneral" },
        { tag: 4, type: "ls", name: "m_labelAward", id: "LS_jinengInf1", stringId: "auto_name_121" },
        { tag: 5, type: "ls", name: "m_labelFirst", id: "LS_huodong_dayNomb", stringId: "auto_name_312" },
        { tag: 6, type: "ls", name: "m_labelOther", id: "LS_huodong_dayNomb", stringId: "auto_name_313" },
        { tag: 7, name: "m_leftGeneral_head" },
        { tag: 8, name: "m_rightGeneral_head" },
        { tag: 9, name: "m_spSole" },
        { tag: 10, name: "m_spMiddleLabel" },
        { tag: 11, name: "m_labelBg" },
        { tag: 12, name: "m_labelBg_top" },
        { tag: 13, name: "m_labelBg_bot" },
        { tag: 14, name: "m_timeBg" },
        { tag: 15, name: "m_rightLableKuang" },
        { tag: 16, name: "m_leftGeneralName" },
        { tag: 17, name: "m_rightGeneralName" }
    ],
    time_Cfg: [
        { tag: 1, type: "ls", id: "LS_paihangNomb", string: "" },
        { tag: 2, type: "ls", id: "LS_paihangNomb", stringId: "auto_name_122" },
        { tag: 3, type: "ls", name: "m_labelTime", id: "LS_danyao" }
    ],
    ad_cfg: {
        fightRanking: {
            tile: xs.Tools.String.createString("auto_name_314"),
            fileName: "2",
            countDownCoord: cc.p(466, 485),
            bgPosOf: cc.p(3, 35)
        }
    },
    ctor: function() {
    // source line 57, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    _getCurSpriteName: function() {
    // source line 63, bytecode pc 5
    return "HuodongScene02_ad_bg";
},
    _getCurSpriteName_idx: function() {
    // source line 66, bytecode pc 13
    return this.ads[this.m_idx];
},
    init: function(params) {
    var leftId, rightId, _leftGenMode, _rightGenMode, _leftGen, _rightGen, _leftGen_head, _rightGen_head;
    if (!this._super()) {
        // source line 77, bytecode pc 19
        return false;
    }
    // source line 79, bytecode pc 46
    xs.log_hsq("mDump", params);
    // source line 80, bytecode pc 54
    (this.bgSp = null);
    // source line 81, bytecode pc 62
    (this.bgBtn = null);
    // source line 82, bytecode pc 70
    (this.mFloat = 0);
    // source line 83, bytecode pc 78
    (this.m_btnExit = null);
    // source line 84, bytecode pc 86
    (this.m_spriteBg = null);
    // source line 85, bytecode pc 94
    (this.m_btnConfirm = null);
    // source line 86, bytecode pc 102
    (this.m_labelTitle = null);
    // source line 87, bytecode pc 110
    (this.m_residueTime = 0);
    // source line 88, bytecode pc 118
    (this.m_labelTime = null);
    // source line 89, bytecode pc 126
    (this.m_data = null);
    // source line 90, bytecode pc 134
    (this.m_isShowTime = true);
    // source line 91, bytecode pc 142
    (this.m_leftGeneral = null);
    // source line 92, bytecode pc 150
    (this.m_rightGeneral = null);
    // source line 93, bytecode pc 158
    (this.m_leftGeneral_head = null);
    // source line 94, bytecode pc 166
    (this.m_rightGeneral_head = null);
    // source line 95, bytecode pc 174
    (this.m_spSole = null);
    // source line 96, bytecode pc 182
    (this.m_spMiddleLabel = null);
    // source line 97, bytecode pc 190
    (this.m_labelBg = null);
    // source line 98, bytecode pc 198
    (this.m_labelBg_top = null);
    // source line 99, bytecode pc 206
    (this.m_labelBg_bot = null);
    // source line 100, bytecode pc 214
    (this.m_labelAbort = null);
    // source line 101, bytecode pc 222
    (this.m_labelAward = null);
    // source line 102, bytecode pc 230
    (this.m_labelFirst = null);
    // source line 103, bytecode pc 238
    (this.m_labelOther = null);
    // source line 104, bytecode pc 246
    (this.m_genList = null);
    // source line 105, bytecode pc 254
    (this.m_timeBg = null);
    // source line 107, bytecode pc 305
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Party_advertisement, this));
    // source line 109, bytecode pc 391
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c", offset: cc.p(-466, -306) });
    // source line 112, bytecode pc 434
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.CCB_Cfg, this);
    // source line 116, bytecode pc 485
    (this._contentCcb = xs.ccb_reader.load(xs.Cfg.CCBI.Party_fightRanking, this));
    // source line 117, bytecode pc 510
    this._ccbNode.addChild(this._contentCcb);
    // source line 118, bytecode pc 551
    this._contentCcb.setPosition(cc.p(18, 40));
    // source line 123, bytecode pc 594
    xs.Utils.UI.replaceCcbByCfg(this._contentCcb, this.conCCB_Cfg, this);
    // source line 126, bytecode pc 621
    (this.m_timeBg = this._ccbNode.getChildByTag(3));
    // source line 127, bytecode pc 664
    xs.Utils.UI.replaceCcbByCfg(this.m_timeBg, this.time_Cfg, this);
    if (params.modelEvent.instance_bg) {
        // source line 130, bytecode pc 709
        (this.m_data = this.ad_cfg[params.modelEvent.instance_bg]);
    }
    if (((params.modelEvent.m_activity_type == 10) || (params.modelEvent.m_activity_type == 22))) {
        // source line 135, bytecode pc 770
        (this.m_data = this.ad_cfg.fightRanking);
    }
    if (params.modelEvent.m_reward_list) {
        // source line 140, bytecode pc 808
        (this.m_genList = params.modelEvent.m_reward_list);
    }
    // source line 147, bytecode pc 838
    this.m_labelTitle.setString(this.m_data.tile);
    // source line 156, bytecode pc 990
    (leftId = (this.m_genList[0].object.id ? xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.m_genList[0].object.id).getGiftPack()[0].id : this.m_genList[0].object.firstObj().data[0].id));
    // source line 159, bytecode pc 1142
    (rightId = (this.m_genList[1].object.id ? xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.m_genList[1].object.id).getGiftPack()[0].id : this.m_genList[1].object.firstObj().data[0].id));
    // source line 162, bytecode pc 1184
    (_leftGenMode = xs.Models.Resource.createWithBase(leftId, 1));
    // source line 163, bytecode pc 1226
    (_rightGenMode = xs.Models.Resource.createWithBase(rightId, 1));
    // source line 165, bytecode pc 1250
    (_leftGen = _leftGenMode.createOriginalSprite_Waist());
    // source line 166, bytecode pc 1272
    this._contentCcb.addChild(_leftGen);
    // source line 168, bytecode pc 1305
    _leftGen.setPosition(this.m_leftGeneral.getPosition());
    // source line 170, bytecode pc 1329
    (_rightGen = _rightGenMode.createOriginalSprite_Waist_Rotation());
    // source line 171, bytecode pc 1351
    this._contentCcb.addChild(_rightGen);
    // source line 174, bytecode pc 1384
    _rightGen.setPosition(this.m_rightGeneral.getPosition());
    // source line 176, bytecode pc 1424
    (_leftGenMode = xs.Models.General.createWithBase(leftId));
    // source line 182, bytecode pc 1480
    (_leftGen_head = xs.Views.Icon.IconStyleA.create({ grade: true, name: true }, null));
    // source line 184, bytecode pc 1505
    _leftGen_head.reloadData(_leftGenMode);
    // source line 185, bytecode pc 1530
    this._contentCcb.addChild(_leftGen_head, 2);
    // source line 186, bytecode pc 1563
    _leftGen_head.setPosition(this.m_leftGeneral_head.getPosition());
    // source line 187, bytecode pc 1600
    (this._leftIconBtn = xs.Views.Btn.createInvisibleWithParent(_leftGen_head));
    // source line 188, bytecode pc 1624
    this._leftIconBtn.setOnClickCallBack(function() {
    // source line 190, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _leftGenMode, type: "achieve_nothave" });
});
    // source line 193, bytecode pc 1664
    (_rightGenMode = xs.Models.General.createWithBase(rightId));
    // source line 199, bytecode pc 1720
    (_rightGen_head = xs.Views.Icon.IconStyleA.create({ grade: true, name: true }, null));
    // source line 201, bytecode pc 1745
    _rightGen_head.reloadData(_rightGenMode);
    // source line 202, bytecode pc 1770
    this._contentCcb.addChild(_rightGen_head, 2);
    // source line 203, bytecode pc 1803
    _rightGen_head.setPosition(this.m_rightGeneral_head.getPosition());
    // source line 204, bytecode pc 1840
    (this._rightIconBtn = xs.Views.Btn.createInvisibleWithParent(_rightGen_head));
    // source line 205, bytecode pc 1864
    this._rightIconBtn.setOnClickCallBack(function() {
    // source line 207, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _rightGenMode, type: "achieve_nothave" });
});
    // source line 218, bytecode pc 1891
    this.m_btnExit.addCallBackForEvent(this, this.exitCallBack);
    if ((params.modelEvent.m_activity_type === xs.Constant_PartyType_AdvertisementNoTime)) {
        // source line 221, bytecode pc 1940
        this.m_timeBg.setVisible(false);
        // source line 222, bytecode pc 1948
        (this.m_isShowTime = false);
    }
    if (this.m_isShowTime) {
        if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(params.mIdx)) {
            // source line 232, bytecode pc 2102
            (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(params.mIdx) || 0));
            // source line 233, bytecode pc 2124
            this.schedule(this.onCountDown, 1);
        } else {
            // source line 235, bytecode pc 2205
            (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(params.mIdx) || 0));
        }
        // source line 238, bytecode pc 2235
        xs.dump("m_residueTime", this.m_residueTime);
        // source line 239, bytecode pc 2265
        this.m_timeBg.setPosition(this.m_data.countDownCoord);
        // source line 240, bytecode pc 2286
        this.m_timeBg.setZOrder(10);
        // source line 241, bytecode pc 2299
        this.onCountDown();
    }
    // source line 247, bytecode pc 2455
    this._setZOrder(1, [
    "m_labelBg",
    "m_labelAbort",
    "m_leftGeneralName",
    "m_rightLableKuang",
    "m_rightGeneralName",
    "m_labelOther",
    "m_leftGeneral_head",
    "m_labelAward",
    "m_labelFirst",
    "m_rightGeneral_head",
    "m_spSole",
    "m_spMiddleLabel",
    "m_labelBg_top",
    "m_labelBg_bot",
    "m_timeBg"
]);
    // source line 249, bytecode pc 2457
    return true;
},
    _setZOrder: function(mNum, objList) {
    var i;
    // source line 253, bytecode pc 4
    (i = 0);
    while ((i < objList.length)) {
        // source line 254, bytecode pc 35
        this[objList[i]].setZOrder(mNum);
        // source line 253, bytecode pc 50
        i++;
    }
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 264, bytecode pc 20
        (this.m_residueTime = 0);
    }
    // source line 267, bytecode pc 51
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 268, bytecode pc 85
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 269, bytecode pc 102
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 271, bytecode pc 166
    this.updateCountDown(this.timeDispose(hours), this.timeDispose(minute), this.timeDispose(seconds));
    // source line 273, bytecode pc 181
    (this.m_residueTime = (this.m_residueTime - 1));
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 278, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 281, bytecode pc 27
    return mNum;
},
    updateCountDown: function(hour, minute, second) {
    // source line 291, bytecode pc 41
    this.m_labelTime.setString(((((hour + ":") + minute) + ":") + second));
},
    exitCallBack: function() {
    // source line 295, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onEnterTransitionDidFinish: function() {
    // source line 300, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 305, bytecode pc 12
    this._super();
    // source line 306, bytecode pc 32
    this.unschedule(this.onCountDown);
},
    setBaseTouchPriority: function(priority) {
    // source line 316, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 318, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 319, bytecode pc 56
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 320, bytecode pc 83
    this._leftIconBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 321, bytecode pc 110
    this._rightIconBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 327, bytecode pc 1190
(xs.Views.Dialog.AdvertisementDialog.create = function(params) {
    var ret;
    // source line 328, bytecode pc 28
    (ret = new xs.Views.Dialog.AdvertisementDialog());
    if ((ret && ret.init(params))) {
        // source line 330, bytecode pc 64
        return ret;
    }
    // source line 333, bytecode pc 89
    xs.assert(false, "xs.Views.Dialog.AdvertisementDialog.create err");
    // source line 334, bytecode pc 91
    return null;
});
// source line 343, bytecode pc 1270
xs.Views.Mgr.registerDialog("AdvertisementDialog", { "class": xs.Views.Dialog.AdvertisementDialog, styleType: xs.Constant_DlgStyleType_Large });
