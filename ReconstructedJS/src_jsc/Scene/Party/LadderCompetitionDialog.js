// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/LadderCompetitionDialog.js:1
// source line 277, bytecode pc 709
(xs.Scene.Party.LadderCompetitionDialog = xs.Views.HungerLayer.extend({
    name: "xs.Scene.Party.LadderCompetitionDialog",
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelTitle", id: "LS_huodong_title", stringId: "auto_name_119" },
        { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" }
    ],
    conCCB_Cfg: [
        { tag: 6, type: "ls", name: "m_labelAbort", id: "LS_fightUI1", stringId: "auto_name_120" },
        { tag: 1, name: "m_leftGeneral" },
        { tag: 8, type: "ls", name: "m_labelAward", id: "LS_jinengInf1", stringId: "auto_name_121" },
        { tag: 9, name: "m_general_head0" },
        { tag: 10, name: "m_general_head1" },
        { tag: 11, name: "m_general_head2" },
        { tag: 12, name: "m_general_head3" },
        { tag: 13, name: "m_spSole" },
        { tag: 3, name: "m_timeBg" },
        { tag: 2, name: "m_labelPicture" },
        { tag: 4, type: "ls", id: "LS_paihangNomb", stringId: "auto_name_122" },
        { tag: 5, type: "ls", name: "m_labelTime", id: "LS_danyao" }
    ],
    ctor: function() {
    // source line 39, bytecode pc 12
    this._super();
    // source line 40, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(params) {
    var leftId, _leftGenModel, i, soulDate, soulModel, _soulGen_head, m_pos, m_num, m_rankingStr, m_numLast, m_rankingLabel;
    if (!this._super()) {
        // source line 52, bytecode pc 19
        return false;
    }
    // source line 55, bytecode pc 27
    (this.m_btnExit = null);
    // source line 56, bytecode pc 35
    (this.m_labelTitle = null);
    // source line 57, bytecode pc 43
    (this.m_residueTime = 0);
    // source line 58, bytecode pc 51
    (this.m_labelTime = null);
    // source line 59, bytecode pc 59
    (this.m_isShowTime = true);
    // source line 60, bytecode pc 67
    (this.m_leftGeneral = null);
    // source line 61, bytecode pc 75
    (this.m_general_head0 = null);
    // source line 62, bytecode pc 83
    (this.m_general_head1 = null);
    // source line 63, bytecode pc 91
    (this.m_general_head2 = null);
    // source line 64, bytecode pc 99
    (this.m_general_head3 = null);
    // source line 65, bytecode pc 107
    (this.m_spSole = null);
    // source line 66, bytecode pc 115
    (this.m_labelAbort = null);
    // source line 67, bytecode pc 123
    (this.m_labelAward = null);
    // source line 68, bytecode pc 131
    (this.m_genList = null);
    // source line 69, bytecode pc 139
    (this.m_timeBg = null);
    // source line 70, bytecode pc 147
    (this.m_labelPicture = null);
    // source line 71, bytecode pc 155
    (this.m_labelIcon0 = null);
    // source line 72, bytecode pc 163
    (this.m_labelIcon1 = null);
    // source line 73, bytecode pc 171
    (this.m_labelIcon2 = null);
    // source line 74, bytecode pc 179
    (this.m_labelIcon3 = null);
    // source line 76, bytecode pc 230
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Party_advertisement, this));
    // source line 78, bytecode pc 316
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c", offset: cc.p(-466, -306) });
    // source line 81, bytecode pc 359
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.CCB_Cfg, this);
    // source line 85, bytecode pc 410
    (this._contentCcb = xs.ccb_reader.load(xs.Cfg.CCBI.Party_ladderCompetition, this));
    // source line 86, bytecode pc 435
    this._ccbNode.addChild(this._contentCcb);
    // source line 87, bytecode pc 476
    this._contentCcb.setPosition(cc.p(-13, 32));
    // source line 92, bytecode pc 519
    xs.Utils.UI.replaceCcbByCfg(this._contentCcb, this.conCCB_Cfg, this);
    if (params.modelEvent.m_reward_list) {
        // source line 102, bytecode pc 557
        (this.m_genList = params.modelEvent.m_reward_list);
    }
    // source line 116, bytecode pc 709
    (leftId = (this.m_genList[0].object.id ? xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.m_genList[0].object.id).getGiftPack()[0].id : this.m_genList[0].object.firstObj().data[0].id));
    // source line 120, bytecode pc 745
    (_leftGenModel = xs.Models.Resource.createWithBase(leftId, 1));
    // source line 123, bytecode pc 766
    (this._leftGen = _leftGenModel.createOriginalSprite_Waist());
    // source line 124, bytecode pc 791
    this._contentCcb.addChild(this._leftGen);
    // source line 126, bytecode pc 827
    this._leftGen.setPosition(this.m_leftGeneral.getPosition());
    // source line 129, bytecode pc 832
    (i = 0);
    while ((i < 4)) {
        if (this.m_genList[i]) {
            // source line 133, bytecode pc 1001
            (soulDate = (this.m_genList[i].object.id ? xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.m_genList[i].object.id).getGiftPack()[0] : this.m_genList[i].object.firstObj().data[0]));
            // source line 134, bytecode pc 1028
            xs.dump("soulDatesoulDate", soulDate);
            // source line 135, bytecode pc 1067
            (soulModel = xs.Models.GeneralSoul.createWithBase(soulDate.id));
            // source line 136, bytecode pc 1091
            soulModel.setNum(soulDate.num);
            // source line 137, bytecode pc 1109
            (_soulGen_head = soulModel.createIcon_GradeAndNumAndName());
            // source line 147, bytecode pc 1134
            this._contentCcb.addChild(_soulGen_head, 2);
            // source line 148, bytecode pc 1160
            (m_pos = this[("m_general_head" + i)].getPosition());
            // source line 149, bytecode pc 1179
            _soulGen_head.setPosition(m_pos);
            // source line 150, bytecode pc 1221
            (this[("_mIconBtn" + i)] = xs.Views.Btn.createInvisibleWithParent(_soulGen_head));
            // source line 154, bytecode pc 1287
            this[("_mIconBtn" + i)].setOnClickCallBack(function() {
    // source line 153, bytecode pc 60
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.soul, type: "achieve_nothave" });
}.bind({ soul: soulModel.getBaseGeneralModel() }));
            // source line 155, bytecode pc 1326
            (m_num = parseInt(this.m_genList[i].status.condition));
            // source line 156, bytecode pc 1335
            (m_rankingStr = "");
            if ((i == 0)) {
                if ((m_num == 1)) {
                    // source line 159, bytecode pc 1364
                    (m_rankingStr = "1");
                } else {
                    // source line 161, bytecode pc 1382
                    (m_rankingStr = ("1-" + m_num));
                }
            } else {
                // source line 165, bytecode pc 1430
                (m_numLast = (parseInt(this.m_genList[(i - 1)].status.condition) + 1));
                // source line 166, bytecode pc 1447
                (m_rankingStr = ((m_numLast + "-") + m_num));
            }
            // source line 168, bytecode pc 1553
            (m_rankingLabel = xs.Factorys.Label.createByStyleIdWithString("LS_huodong_dayNomb", ((xs.Tools.String.createString("auto_name_123") + m_rankingStr) + xs.Tools.String.createString("auto_name_124"))));
            // source line 169, bytecode pc 1578
            this._contentCcb.addChild(m_rankingLabel, 2);
            // source line 170, bytecode pc 1631
            m_rankingLabel.setPosition(cc.p(m_pos.x, (m_pos.y + 60)));
        } else {
            // source line 173, bytecode pc 1661
            this[("m_general_head" + i)].setVisible(false);
        }
        // source line 129, bytecode pc 1676
        i++;
    }
    // source line 184, bytecode pc 1715
    this.m_btnExit.addCallBackForEvent(this, this.exitCallBack);
    if (this.m_isShowTime) {
        if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(params.mIdx)) {
            // source line 195, bytecode pc 1869
            (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(params.mIdx) || 0));
            // source line 196, bytecode pc 1891
            this.schedule(this.onCountDown, 1);
        } else {
            // source line 198, bytecode pc 1972
            (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(params.mIdx) || 0));
        }
        // source line 201, bytecode pc 2002
        xs.dump("m_residueTime", this.m_residueTime);
        // source line 204, bytecode pc 2015
        this.onCountDown();
    }
    // source line 207, bytecode pc 2072
    this._setZOrder(1, [ "_leftGen", "m_spSole", "m_labelPicture", "m_labelAward" ]);
    // source line 209, bytecode pc 2074
    return true;
},
    _setZOrder: function(mNum, objList) {
    var i;
    // source line 214, bytecode pc 4
    (i = 0);
    while ((i < objList.length)) {
        // source line 215, bytecode pc 41
        xs.log("ooobb", objList[i]);
        // source line 216, bytecode pc 66
        this[objList[i]].setZOrder(mNum);
        // source line 214, bytecode pc 81
        i++;
    }
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 226, bytecode pc 20
        (this.m_residueTime = 0);
    }
    // source line 229, bytecode pc 51
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 230, bytecode pc 85
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 231, bytecode pc 102
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 233, bytecode pc 166
    this.updateCountDown(this.timeDispose(hours), this.timeDispose(minute), this.timeDispose(seconds));
    // source line 235, bytecode pc 181
    (this.m_residueTime = (this.m_residueTime - 1));
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 240, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 243, bytecode pc 27
    return mNum;
},
    updateCountDown: function(hour, minute, second) {
    // source line 253, bytecode pc 41
    this.m_labelTime.setString(((((hour + ":") + minute) + ":") + second));
},
    exitCallBack: function() {
    // source line 257, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onEnterTransitionDidFinish: function() {
    // source line 262, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 267, bytecode pc 12
    this._super();
    // source line 268, bytecode pc 32
    this.unschedule(this.onCountDown);
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 278, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 280, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 281, bytecode pc 56
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 285, bytecode pc 61
    (i = 0);
    while ((i < 4)) {
        if (this[("_mIconBtn" + i)]) {
            // source line 287, bytecode pc 115
            this[("_mIconBtn" + i)].setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 285, bytecode pc 130
        i++;
    }
}
}));
// source line 296, bytecode pc 740
(xs.Scene.Party.LadderCompetitionDialog.create = function(params) {
    var ret;
    // source line 297, bytecode pc 28
    (ret = new xs.Scene.Party.LadderCompetitionDialog());
    if ((ret && ret.init(params))) {
        // source line 299, bytecode pc 64
        return ret;
    }
    // source line 302, bytecode pc 89
    xs.assert(false, "xs.Scene.Party.LadderCompetitionDialog.create err");
    // source line 303, bytecode pc 91
    return null;
});
// source line 312, bytecode pc 820
xs.Views.Mgr.registerDialog("LadderCompetitionDialog", { "class": xs.Scene.Party.LadderCompetitionDialog, styleType: xs.Constant_DlgStyleType_Large });
