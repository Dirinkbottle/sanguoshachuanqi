// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MultiLineUpView.js:1
// source line 301, bytecode pc 245
(xs.Views.MultiLineUpView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
},
    CcbCfg: [ { name: "m_closeBtn", tag: 10, type: "btn", id: "Btn_Close" } ],
    init: function() {
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 27
    (this.m_closeBtn = null);
    // source line 18, bytecode pc 44
    (this.m_buttonList = new Array());
    // source line 19, bytecode pc 61
    (this.m_viewList = new Array());
    // source line 20, bytecode pc 78
    (this.m_viewDataList = new Array());
    // source line 22, bytecode pc 86
    (this.m_needVip = 0);
    // source line 23, bytecode pc 94
    (this.m_needYuanBao = 0);
    // source line 25, bytecode pc 102
    (this.oldViewPosX = 0);
    // source line 26, bytecode pc 110
    (this.curPageView = null);
    // source line 28, bytecode pc 118
    (this.m_lockTeamId = 0);
    // source line 30, bytecode pc 130
    (this.m_teamsData = []);
    // source line 31, bytecode pc 138
    (this.m_nowTeamNum = 0);
    // source line 34, bytecode pc 203
    (this.m_playerVip = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 35, bytecode pc 268
    (this.m_playerLevel = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 39, bytecode pc 308
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Team);
    // source line 41, bytecode pc 344
    (this.m_ccbNode = xs.ccb_reader.load("ccb3/QueueTeamTablePageView.ccbi", this));
    // source line 42, bytecode pc 387
    this.m_ccbNode.setContentSize(cc.size(702, 625));
    // source line 43, bytecode pc 434
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 45, bytecode pc 516
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true, offset: { x: 0, y: 0 } });
    // source line 47, bytecode pc 559
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.CcbCfg, this);
    // source line 49, bytecode pc 597
    this.m_closeBtn.setOnClickCallBack(this.closeCallback.bind(this));
    // source line 51, bytecode pc 610
    this.requestTeamsInfor();
    // source line 54, bytecode pc 612
    return true;
},
    requestTeamsInfor: function() {
    // source line 91, bytecode pc 136
    xs.Tools.Net.requestMultiLineUpInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    var i, str;
    if (!xs.Utils.isEmpty(data.team_info)) {
        // source line 64, bytecode pc 50
        (this.m_teamsData = data.team_info);
        // source line 65, bytecode pc 70
        (this.m_nowTeamNum = data.team_info.length);
    }
    // source line 69, bytecode pc 136
    this.addTablePageViewAndButtonName(xs.Views.QueueTeamView, xs.Tools.String.createString("queueTeam_6"), false, 0);
    // source line 73, bytecode pc 141
    (i = 0);
    while ((i < this.m_nowTeamNum)) {
        // source line 74, bytecode pc 216
        (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.convNumberString((i + 1))));
        // source line 75, bytecode pc 257
        this.addTablePageViewAndButtonName(xs.Views.ShowTeamView, str, false, (i + 1));
        // source line 73, bytecode pc 272
        i++;
    }
    if (this.createLockButton((this.m_nowTeamNum + 1))) {
        // source line 80, bytecode pc 386
        (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.convNumberString((this.m_nowTeamNum + 1))));
        // source line 81, bytecode pc 407
        this.addTablePageViewAndButtonName(this, str, true);
    }
    // source line 84, bytecode pc 422
    this.selectPageWithIdex(0);
}.bind(this), function() {
}.bind(this), this);
},
    createLockButton: function(LockTeamIdx) {
    var _data, teamData;
    // source line 98, bytecode pc 41
    (_data = xs.Tools.CfgData.getGlobalConf("MostTeamConf", []));
    if (!xs.Utils.isEmpty(_data[LockTeamIdx])) {
        // source line 100, bytecode pc 87
        (teamData = _data[LockTeamIdx]);
        // source line 101, bytecode pc 102
        (this.m_needVip = teamData.vip_level);
        // source line 102, bytecode pc 117
        (this.m_needYuanBao = teamData.gold);
        // source line 103, bytecode pc 132
        (this.m_needUserLevel = teamData.user_level);
        // source line 104, bytecode pc 142
        (this.m_lockTeamId = LockTeamIdx);
        // source line 105, bytecode pc 144
        return true;
    }
    // source line 108, bytecode pc 146
    return false;
},
    refreshLockButtonInfo: function() {
    var _data, teamData;
    // source line 111, bytecode pc 41
    (_data = xs.Tools.CfgData.getGlobalConf("MostTeamConf", []));
    if (!xs.Utils.isEmpty(_data[this.m_lockTeamId])) {
        // source line 113, bytecode pc 93
        (teamData = _data[this.m_lockTeamId]);
        // source line 114, bytecode pc 108
        (this.m_needVip = teamData.vip_level);
        // source line 115, bytecode pc 123
        (this.m_needYuanBao = teamData.gold);
    }
},
    addTablePageViewAndButtonName: function(view, name, locked, idex) {
    var idx, length, lockPic, selectButton;
    // source line 119, bytecode pc 13
    (idx = (idex || 0));
    if (locked) {
        // source line 121, bytecode pc 36
        (length = this.m_buttonList.length);
        // source line 123, bytecode pc 75
        (this.m_lockButton = xs.Views.Btn.createByStyleId("BS_queueTeam_Lock"));
        // source line 124, bytecode pc 97
        this.m_lockButton.setString(name);
        if (this.m_baseTouchPriority) {
            // source line 126, bytecode pc 135
            this.m_lockButton.setTouchPriority((this.m_baseTouchPriority - 1));
        } else {
            // source line 128, bytecode pc 192
            this.m_lockButton.setTouchPriority((xs.Views.MultiLineUpView.cfg.view.priority - 5));
        }
        // source line 130, bytecode pc 219
        this.m_lockButton.addCallBackForEvent(this, this.clickLockButtonCallback);
        // source line 136, bytecode pc 317
        xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_lockButton, { desc: "lb", sc: true, offset: { x: 786, y: (500 - (length * 66)) } });
        // source line 140, bytecode pc 359
        (lockPic = xs.Factorys.Sprite.create("Cmn03_EndButton1003_lock", "Cmn03"));
        // source line 141, bytecode pc 397
        lockPic.setPosition(cc.p(80, 35));
        // source line 142, bytecode pc 419
        this.m_lockButton.addChild(lockPic);
    } else {
        // source line 145, bytecode pc 448
        (selectButton = this.createSelectButton(name, idx));
        // source line 146, bytecode pc 470
        this.m_buttonList.push(selectButton);
        // source line 147, bytecode pc 492
        this.m_viewDataList.push(view);
    }
},
    selectPageWithIdex: function(idx) {
    var pageView, i;
    if (xs.Utils.isEmpty(this.m_viewDataList[idx])) {
        // source line 155, bytecode pc 38
        return void 0;
    }
    if ((this.curPageView !== null)) {
        // source line 159, bytecode pc 71
        this.curPageView.setVisible(false);
        // source line 160, bytecode pc 95
        (this.oldViewPosX = this.curPageView.getPositionX());
        // source line 161, bytecode pc 117
        this.curPageView.setPositionX(3000);
    }
    if (!this.m_viewList[idx]) {
        if (this.m_viewDataList[idx]) {
            if ((idx == 0)) {
                // source line 168, bytecode pc 185
                (pageView = this.m_viewDataList[idx].create(false));
            } else {
                // source line 171, bytecode pc 228
                (pageView = this.m_viewDataList[idx].create(this.m_teamsData[(idx - 1)]));
            }
            if (pageView.setBaseTouchPriority) {
                // source line 174, bytecode pc 287
                pageView.setBaseTouchPriority(xs.Views.MultiLineUpView.cfg.view.priority);
            }
            // source line 179, bytecode pc 371
            xs.Utils.Node.attachNodes(this.m_ccbNode, pageView, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
            // source line 183, bytecode pc 385
            (this.m_viewList[idx] = pageView);
            // source line 184, bytecode pc 395
            (this.curPageView = pageView);
        }
    } else {
        // source line 188, bytecode pc 417
        (this.curPageView = this.m_viewList[idx]);
    }
    // source line 192, bytecode pc 437
    this.curPageView.setVisible(true);
    // source line 193, bytecode pc 462
    this.curPageView.setPositionX(this.oldViewPosX);
    // source line 196, bytecode pc 467
    (i = 0);
    while ((i < this.m_buttonList.length)) {
        if ((i !== idx)) {
            // source line 198, bytecode pc 509
            this.m_buttonList[i].setSelected(false);
        } else {
            // source line 200, bytecode pc 538
            this.m_buttonList[i].setSelected(true);
        }
        // source line 196, bytecode pc 553
        i++;
    }
},
    clickLockButtonCallback: function() {
    var numStr, promptStr;
    if ((this.m_playerLevel >= this.m_needUserLevel)) {
        if ((this.m_playerVip >= this.m_needVip)) {
            // source line 208, bytecode pc 87
            (numStr = xs.Tools.String.convNumberString(parseInt(this.m_lockTeamId)));
            // source line 209, bytecode pc 157
            (promptStr = xs.Tools.String.createStringWithArgsArray("queueTeam_14", [ this.m_needYuanBao.toString(), numStr ]));
            // source line 248, bytecode pc 335
            xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "queueTeam_13",
    content: promptStr,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 217, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 247, bytecode pc 115
    xs.Tools.Net.requestUnlockOneTeam({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    team_id: this.m_lockTeamId
}, function(data) {
    var str, length;
    // source line 225, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if (!xs.Utils.isEmpty(data.team_info)) {
        // source line 227, bytecode pc 77
        (this.m_teamsData = data.team_info);
        // source line 228, bytecode pc 97
        (this.m_nowTeamNum = data.team_info.length);
    }
    // source line 231, bytecode pc 167
    (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.convNumberString(this.m_nowTeamNum)));
    // source line 232, bytecode pc 209
    this.addTablePageViewAndButtonName(xs.Views.ShowTeamView, str, false, this.m_nowTeamNum);
    if (this.m_lockButton) {
        if (this.createLockButton((this.m_nowTeamNum + 1))) {
            // source line 237, bytecode pc 318
            (str = (xs.Tools.String.createString("queueTeam_1") + xs.Tools.String.convNumberString((this.m_nowTeamNum + 1))));
            // source line 238, bytecode pc 333
            (length = this.m_buttonList.length);
            // source line 239, bytecode pc 355
            this.m_lockButton.setString(str);
            // source line 240, bytecode pc 384
            this.m_lockButton.setPositionY((500 - (length * 66)));
            // source line 241, bytecode pc 397
            this.refreshLockButtonInfo();
        } else {
            // source line 243, bytecode pc 422
            this.m_lockButton.setVisible(false);
        }
    }
    // source line 246, bytecode pc 442
    this.selectPageWithIdex(this.m_nowTeamNum);
}, this);
}.bind(this)
});
        } else {
            // source line 251, bytecode pc 416
            xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("queueTeam_7", [ this.m_needVip ]));
        }
    } else {
        // source line 256, bytecode pc 497
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("queueTeam_24", [ this.m_needUserLevel ]));
    }
},
    selectButtonCallBack: function() {
    var self, tag;
    // source line 261, bytecode pc 9
    (self = this.self);
    // source line 262, bytecode pc 19
    (tag = this.tag);
    // source line 264, bytecode pc 38
    self.selectPageWithIdex(tag);
},
    createSelectButton: function(name, idex) {
    var length, selectButton;
    // source line 269, bytecode pc 14
    (length = this.m_buttonList.length);
    // source line 271, bytecode pc 50
    (selectButton = xs.Views.Btn.createByStyleId("BS_QueueTeamTablePage"));
    // source line 273, bytecode pc 69
    selectButton.setString(name);
    if (this.m_baseTouchPriority) {
        // source line 275, bytecode pc 105
        selectButton.setTouchPriority((this.m_baseTouchPriority - 5));
    } else {
        // source line 277, bytecode pc 159
        selectButton.setTouchPriority((xs.Views.MultiLineUpView.cfg.view.priority - 5));
    }
    // source line 279, bytecode pc 215
    selectButton.addCallBackForEvent(this, this.selectButtonCallBack.bind({ self: this, tag: idex }));
    // source line 285, bytecode pc 310
    xs.Utils.Node.attachNodes(this.m_ccbNode, selectButton, { desc: "lb", sc: true, offset: { x: 786, y: (500 - (length * 66)) } });
    // source line 289, bytecode pc 314
    return selectButton;
},
    closeCallback: function() {
    // source line 293, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onEnter: function() {
    // source line 296, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 299, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 302, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 303, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 304, bytecode pc 57
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 5));
}
}));
// source line 312, bytecode pc 299
(xs.Views.MultiLineUpView.cfg = { view: { zOrder: 0, priority: -1000 } });
// source line 316, bytecode pc 325
(xs.Views.MultiLineUpView.create = function() {
    var layer;
    // source line 317, bytecode pc 23
    (layer = new xs.Views.MultiLineUpView());
    if ((layer && layer.init())) {
        // source line 319, bytecode pc 55
        return layer;
    }
    // source line 321, bytecode pc 57
    return null;
});
// source line 326, bytecode pc 400
xs.Views.Mgr.registerDialog("MultiLineUpView", { "class": xs.Views.MultiLineUpView, styleType: xs.Constant_DlgStyleType_Large });
