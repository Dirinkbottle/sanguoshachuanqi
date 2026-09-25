// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/InterServiceWorshipView.js:1
// source line 360, bytecode pc 718
(xs.Views.InterServiceWorshipView = xs.Views.HungerLayer.extend({
    name: "xs.Views.InterServiceWorshipView",
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var _delArr;
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_serverRankNum = null);
    // source line 20, bytecode pc 35
    (this.m_popularityRankNum = null);
    // source line 21, bytecode pc 43
    (this.m_coinNum = null);
    // source line 22, bytecode pc 51
    (this.m_btnRewardPreview = null);
    // source line 23, bytecode pc 59
    (this.m_btnRank = null);
    // source line 24, bytecode pc 67
    (this.m_btnWorship = null);
    // source line 25, bytecode pc 75
    (this.m_worshipDesc = null);
    // source line 28, bytecode pc 90
    (this.worshipEntry = param.worshipEntry);
    // source line 29, bytecode pc 105
    (this.m_local = param.local);
    // source line 31, bytecode pc 129
    (this.rankList = this.worshipEntry.getRankList());
    // source line 36, bytecode pc 165
    (this.ccbNode = cc.BuilderReader.load("ccb3/worship_info.ccbi", this));
    // source line 37, bytecode pc 208
    this.ccbNode.setContentSize(cc.size(470, 220));
    // source line 38, bytecode pc 251
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0));
    // source line 41, bytecode pc 352
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cb", offset: { y: (xs.director.getVisibleSize().height * 0.02) } });
    // source line 43, bytecode pc 395
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 46, bytecode pc 415
    this.m_btnRewardPreview.setVisible(false);
    // source line 47, bytecode pc 453
    this.m_btnRewardPreview.setOnClickCallBack(this.onBtnRewardPreviewClicked.bind(this));
    // source line 48, bytecode pc 491
    this.m_btnRank.setOnClickCallBack(this.onBtnRankClicked.bind(this));
    // source line 51, bytecode pc 530
    (_delArr = this.rankList.splice((this.rankList.length - 3), 3));
    // source line 52, bytecode pc 571
    this.rankList.splice(0, 0, _delArr[0], _delArr[1], _delArr[2]);
    // source line 57, bytecode pc 622
    (this.cardViewV2 = xs.Views.CardListView_v2.create({ cardDatas: this.rankList }));
    // source line 59, bytecode pc 642
    this.cardViewV2.setListener(this);
    // source line 62, bytecode pc 723
    xs.Utils.Node.attachNodes(this, this.cardViewV2, { desc: "c", offset: { x: -550, y: 100 } });
    // source line 66, bytecode pc 736
    this.refreshWorshipState();
    // source line 68, bytecode pc 738
    return true;
},
    onEnter: function() {
    // source line 72, bytecode pc 12
    this._super();
    // source line 74, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.hangRewardSuccess, xs.Constant_Notify_InterService_HangRewardSuccess);
},
    onExit: function() {
    // source line 78, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_InterService_HangRewardSuccess);
    // source line 80, bytecode pc 52
    this._super();
},
    changeSelectedCardData_moving: function(cardData) {
    // source line 87, bytecode pc 9
    (this.selectedCardData = cardData);
    // source line 88, bytecode pc 22
    this.refreshPanelInfo();
},
    changeSelectedCardData_afterMoveBack: function(cardData) {
    var _key;
    // source line 94, bytecode pc 9
    (this.selectedCardData = cardData);
    // source line 95, bytecode pc 22
    this.refreshPanelInfo();
    // source line 98, bytecode pc 43
    (_key = ("ladderWar_worship_moveEndAtIdx_" + this.selectedCardData.server_rank));
    // source line 99, bytecode pc 70
    xs.log_xjf("ladderWar_worship_moveEndAtIdx_", _key);
    // source line 100, bytecode pc 101
    xs.Tools.Statistic.event(_key);
},
    refreshPanelInfo: function() {
    if (this.selectedCardData) {
        // source line 107, bytecode pc 40
        this.m_serverRankNum.setString(this.selectedCardData.server_rank);
        // source line 108, bytecode pc 70
        this.m_popularityRankNum.setString(this.selectedCardData.pop_rank);
        // source line 109, bytecode pc 100
        this.m_coinNum.setString(this.selectedCardData.coin);
        if (((this.selectedCardData.reward == null) || (this.selectedCardData.reward.length == 0))) {
            // source line 113, bytecode pc 162
            this.m_btnRewardPreview.setVisible(false);
        } else {
            // source line 116, bytecode pc 187
            this.m_btnRewardPreview.setVisible(true);
        }
    }
},
    refreshWorshipState: function() {
    if (this.worshipEntry.isInlist()) {
        // source line 125, bytecode pc 45
        this.m_worshipDesc.setStringById("interService_worshipDescIn");
        if ((this.worshipEntry.getStatus() == 0)) {
            // source line 128, bytecode pc 120
            this.m_btnWorship.setString(xs.Tools.String.createString("interService_hangReward"));
            // source line 129, bytecode pc 140
            this.m_btnWorship.setEnabled(false);
        } else {
            if ((this.worshipEntry.getStatus() == 1)) {
                // source line 133, bytecode pc 220
                this.m_btnWorship.setString(xs.Tools.String.createString("interService_hangReward"));
                // source line 134, bytecode pc 258
                this.m_btnWorship.setOnClickCallBack(this.onm_btnWorshipClicked_hangReward.bind(this));
                // source line 135, bytecode pc 278
                this.m_btnWorship.setEnabled(true);
            } else {
                if ((this.worshipEntry.getStatus() == 2)) {
                    // source line 139, bytecode pc 359
                    this.m_btnWorship.setString(xs.Tools.String.createString("interService_hangRewarded"));
                    // source line 140, bytecode pc 379
                    this.m_btnWorship.setEnabled(false);
                }
            }
        }
    } else {
        // source line 146, bytecode pc 408
        this.m_worshipDesc.setStringById("interService_worshipDescOut");
        if ((this.worshipEntry.getStatus() == 0)) {
            // source line 149, bytecode pc 483
            this.m_btnWorship.setString(xs.Tools.String.createString("interService_worship"));
            // source line 150, bytecode pc 507
            this.m_btnWorship.setOnClickCallBack(function() {
    // source line 151, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("interService_worshipDescOut"));
});
            // source line 153, bytecode pc 527
            this.m_btnWorship.setEnabled(true);
        } else {
            if ((this.worshipEntry.getStatus() == 1)) {
                // source line 157, bytecode pc 607
                this.m_btnWorship.setString(xs.Tools.String.createString("interService_worship"));
                // source line 158, bytecode pc 645
                this.m_btnWorship.setOnClickCallBack(this.onm_btnWorshipClicked_worship.bind(this));
                // source line 159, bytecode pc 665
                this.m_btnWorship.setEnabled(true);
            } else {
                if ((this.worshipEntry.getStatus() == 2)) {
                    // source line 163, bytecode pc 746
                    this.m_btnWorship.setString(xs.Tools.String.createString("interService_worshiped"));
                    // source line 164, bytecode pc 766
                    this.m_btnWorship.setEnabled(false);
                }
            }
        }
    }
},
    onm_btnWorshipClicked_worship: function() {
    var SuccessFunction;
    // source line 171, bytecode pc 22
    xs.log_xjf("请求膜拜");
    // source line 206, bytecode pc 50
    (SuccessFunction = function(jsonData) {
    var _key, _funShowToast, _dlg;
    // source line 174, bytecode pc 20
    (_key = ("ladderWar_worship_clickedAtIdx_" + this.selectedCardData.server_rank));
    // source line 175, bytecode pc 47
    xs.log_xjf("ladderWar_worship_clickedAtIdx_", _key);
    // source line 176, bytecode pc 78
    xs.Tools.Statistic.event(_key);
    // source line 179, bytecode pc 99
    this.worshipEntry.setStatus(2);
    // source line 180, bytecode pc 112
    this.refreshWorshipState();
    // source line 183, bytecode pc 160
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 186, bytecode pc 169
    (_funShowToast = function() {
    // source line 189, bytecode pc 88
    xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("interService_getCoin", [ jsonData.return_info.coin ]));
});
    if ((jsonData.return_info && (jsonData.return_info.reward && (jsonData.return_info.reward.length > 0)))) {
        // source line 196, bytecode pc 319
        (_dlg = xs.Views.Mgr.showDialogByName("InterServiceRewardPreviewDialog", { rewardList: this.selectedCardData.reward, showType: xs.Constant_RewardListDialog_ShowType_Get }));
        // source line 200, bytecode pc 338
        _dlg.setCloseCallFunc(_funShowToast);
    } else {
        // source line 204, bytecode pc 352
        _funShowToast();
    }
}.bind(this));
    if (this.m_local) {
        // source line 220, bytecode pc 194
        xs.Tools.Net.requestLocalWorship({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.selectedCardData.uid,
    forcepush: true
}, function(jsonData) {
    // source line 215, bytecode pc 18
    SuccessFunction(jsonData);
}, function(jsonData) {
}, this);
    } else {
        // source line 237, bytecode pc 332
        xs.Tools.Net.requestWorship({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.selectedCardData.uid,
    forcepush: true
}, function(jsonData) {
    // source line 232, bytecode pc 18
    SuccessFunction(jsonData);
}, function(jsonData) {
}, this);
    }
},
    onm_btnWorshipClicked_hangReward: function() {
    // source line 245, bytecode pc 22
    xs.log_xjf("悬挂赏赐");
    if (this.m_local) {
        // source line 261, bytecode pc 144
        xs.Tools.Net.requestLocalGetRewardList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(jsonData) {
    // source line 255, bytecode pc 68
    xs.Views.Mgr.showDialogByName("InterServiceRewardDialog", { rewardList: jsonData.return_info.reward_list, local: this.m_local });
}, function(jsonData) {
}, this);
    } else {
        // source line 280, bytecode pc 260
        xs.Tools.Net.requestGetRewardList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(jsonData) {
    // source line 274, bytecode pc 68
    xs.Views.Mgr.showDialogByName("InterServiceRewardDialog", { rewardList: jsonData.return_info.reward_list, local: this.m_local });
}, function(jsonData) {
}, this);
    }
},
    hangRewardSuccess: function(usedList) {
    var _selfData, _selfId;
    // source line 291, bytecode pc 15
    (_selfData = this.getSelfDataInRankList());
    if (!_selfData) {
        // source line 294, bytecode pc 47
        xs.warn("未找到自身数据!!");
        // source line 295, bytecode pc 49
        return void 0;
    }
    // source line 297, bytecode pc 61
    (_selfData.reward = usedList);
    // source line 300, bytecode pc 123
    (_selfId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId());
    if ((xs.Utils.parseStringSafe(_selfId) == xs.Utils.parseStringSafe(this.selectedCardData.uid))) {
        // source line 302, bytecode pc 200
        this.refreshPanelInfo();
    }
},
    getSelfDataInRankList: function() {
    var _selfData, _selfId, i;
    // source line 308, bytecode pc 4
    (_selfData = null);
    // source line 309, bytecode pc 66
    (_selfId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId());
    // source line 310, bytecode pc 71
    (i = 0);
    while ((i < this.rankList.length)) {
        if ((xs.Utils.parseStringSafe(_selfId) == xs.Utils.parseStringSafe(this.rankList[i].uid))) {
            // source line 312, bytecode pc 159
            (_selfData = this.rankList[i]);
            break;
        }
        // source line 310, bytecode pc 178
        (i = (+i + 1));
    }
    // source line 316, bytecode pc 204
    return _selfData;
},
    onBtnRewardPreviewClicked: function() {
    // source line 324, bytecode pc 86
    xs.Views.Mgr.showDialogByName("InterServiceRewardPreviewDialog", {
    rewardList: this.selectedCardData.reward,
    userName: this.selectedCardData.nick,
    showType: xs.Constant_RewardListDialog_ShowType_Preview
});
},
    onBtnRankClicked: function() {
    // source line 334, bytecode pc 66
    xs.Scene.Mgr.changeSceneByName("PopularityRewardScene", { award_list: this.worshipEntry.award_list, local: this.m_local });
},
    setBaseTouchPriority: function(priority) {
    // source line 340, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 341, bytecode pc 31
    this.cardViewV2.setBaseTouchPriority(priority);
    // source line 342, bytecode pc 56
    this.m_btnRewardPreview.setTouchPriority((priority - 10));
    // source line 343, bytecode pc 81
    this.m_btnWorship.setTouchPriority((priority - 10));
    // source line 344, bytecode pc 106
    this.m_btnRank.setTouchPriority((priority - 10));
},
    ccbCfg: [
        {
            tag: 2,
            type: "ls",
            name: "m_serverRank",
            id: "LS_qiangduo_Inf",
            stringId: "interService_csRank"
        },
        { tag: 3, type: "ls", name: "m_serverRankNum", id: "LS_Lv" },
        {
            tag: 4,
            type: "ls",
            name: "m_popularityRank",
            id: "LS_qiangduo_Inf",
            stringId: "interService_popularityRank"
        },
        { tag: 5, type: "ls", name: "m_popularityRankNum", id: "LS_Lv" },
        {
            tag: 6,
            type: "ls",
            name: "m_coin",
            id: "LS_qiangduo_Inf",
            stringId: "interService_worshipObtain"
        },
        { tag: 8, type: "ls", name: "m_coinNum", id: "LS_Lv" },
        { tag: 9, type: "ls", name: "m_worshipDesc", id: "LS_fightUI1" },
        { tag: 20, type: "btn", name: "m_btnRewardPreview", id: "Btn_InterServiceReward" },
        { tag: 21, type: "btn", name: "m_btnRank", id: "Btn_SentimentAward" },
        { tag: 30, type: "btn", name: "m_btnWorship", id: "Btn_btn2" }
    ]
}));
// source line 364, bytecode pc 744
(xs.Views.InterServiceWorshipView.create = function(param) {
    var view;
    // source line 365, bytecode pc 23
    (view = new xs.Views.InterServiceWorshipView());
    if ((view && view.init(param))) {
        // source line 367, bytecode pc 59
        return view;
    }
    // source line 369, bytecode pc 84
    xs.assert(false, "xs.Views.InterServiceWorshipView.create error!");
    // source line 370, bytecode pc 86
    return null;
});
