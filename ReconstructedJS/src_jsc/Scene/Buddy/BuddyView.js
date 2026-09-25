// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Buddy/BuddyView.js:1
// source line 389, bytecode pc 218
(xs.Scene.BuddyView = xs.Views.HungerLayer.extend({
    name: "BuddyView",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
},
    init: function(playerId, playerData, pageIdx) {
    var visibleSize, visibleOrigin, titleDesc;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 29
    (this.m_playerId = playerId);
    // source line 16, bytecode pc 39
    (this.m_playerData = playerData);
    // source line 17, bytecode pc 47
    (this.b_isSelf = true);
    // source line 18, bytecode pc 59
    (this.m_iconBtns = []);
    // source line 19, bytecode pc 67
    (this.b_isFateViewFirstUpdate = true);
    // source line 20, bytecode pc 84
    (this.m_idx = (pageIdx || 0));
    // source line 21, bytecode pc 93
    (this.m_pageNum = 8);
    // source line 23, bytecode pc 101
    (this.m_yuanfenUpdae = false);
    if ((this.m_playerId && this.m_playerData)) {
        // source line 26, bytecode pc 132
        (this.b_isSelf = false);
    }
    if ((this.m_playerId && !this.m_playerData)) {
        // source line 30, bytecode pc 195
        xs.assert(false, "playerData is null!", this.m_playerId, this.m_playerData);
    }
    if ((!this.m_playerId && this.m_playerData)) {
        // source line 33, bytecode pc 258
        xs.assert(false, "playerId is null!", this.m_playerId, this.m_playerData);
    }
    // source line 36, bytecode pc 283
    (visibleSize = xs.director.getVisibleSize());
    // source line 37, bytecode pc 308
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 40, bytecode pc 361
    (this.m_fateScrollViewSize = cc.size((visibleSize.width * 0.65), (visibleSize.height * 0.8)));
    // source line 41, bytecode pc 401
    (this.m_fateScrollView = xs.Views.ScrollView.create(this.m_fateScrollViewSize));
    // source line 47, bytecode pc 501
    xs.Utils.Node.attachNodes(this, this.m_fateScrollView, { desc: "cb", sc: true, offset: { x: -((this.m_fateScrollViewSize.width / 2) + 50), y: 30 } });
    // source line 54, bytecode pc 543
    (titleDesc = xs.Factorys.Label.createByStyleIdWithStringId("LS_fightUI1", "str_buddy_desc"));
    // source line 61, bytecode pc 624
    xs.Utils.Node.attachNodes(this, titleDesc, { desc: "tc", sc: true, offset: { x: -50, y: -70 } });
    // source line 65, bytecode pc 637
    this.initIconBtns();
    // source line 68, bytecode pc 650
    this.updateFateView();
    // source line 70, bytecode pc 663
    this.updateIconBtns();
    // source line 73, bytecode pc 665
    return true;
},
    initIconBtns: function() {
    var visibleSize, y_inc, _desc, offset_x, offset_y, i, btn, mIdx;
    // source line 77, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 78, bytecode pc 42
    (y_inc = ((visibleSize.height - 120) / 4));
    // source line 83, bytecode pc 63
    (offset_y = (3.5 * y_inc));
    // source line 85, bytecode pc 68
    (i = 0);
    while ((i < 8)) {
        if (((i % 2) == 0)) {
            // source line 88, bytecode pc 96
            (_desc = "lb");
            // source line 89, bytecode pc 102
            (offset_x = 90);
            // source line 90, bytecode pc 125
            (offset_y = (((4 - (i / 2)) - 0.5) * y_inc));
        } else {
            // source line 93, bytecode pc 139
            (_desc = "rb");
            // source line 94, bytecode pc 148
            (offset_x = -190);
            // source line 95, bytecode pc 165
            (offset_y = ((4 - (i / 2)) * y_inc));
        }
        // source line 97, bytecode pc 209
        (btn = xs.Views.TeamIconButton_Buddy.create(this.m_playerId, this.m_playerData));
        // source line 98, bytecode pc 230
        btn.setIconName("");
        // source line 100, bytecode pc 251
        (mIdx = ((this.m_idx * this.m_pageNum) + i));
        // source line 101, bytecode pc 272
        btn.setIndex(mIdx, false);
        // source line 103, bytecode pc 296
        btn.setCallback(this.iconBtnCallback, this);
        // source line 105, bytecode pc 318
        this.m_iconBtns.push(btn);
        // source line 118, bytecode pc 425
        xs.Utils.Node.attachNodes(this, btn, { desc: _desc, sc: true, offset: { x: offset_x, y: offset_y } }, xs.Cfg.Scene.TeamBuildScene.m_iconBtn);
        // source line 85, bytecode pc 440
        i++;
    }
},
    updateIconBtns: function() {
    var buddyGenerals, buddyMaxlength, i, mIdx, general;
    // source line 124, bytecode pc 64
    (buddyGenerals = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getBuddyGenerals());
    // source line 125, bytecode pc 129
    (buddyMaxlength = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getCurBuddyMaxLength());
    // source line 129, bytecode pc 134
    (i = 0);
    while ((i < this.m_iconBtns.length)) {
        // source line 130, bytecode pc 161
        (mIdx = ((this.m_idx * this.m_pageNum) + i));
        if ((mIdx < buddyMaxlength)) {
            // source line 135, bytecode pc 246
            (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getGeneral(buddyGenerals[mIdx]));
            if (general) {
                // source line 139, bytecode pc 282
                this.m_iconBtns[i].setData(general, false);
                // source line 140, bytecode pc 308
                this.m_iconBtns[i].setIsLocked(false, false);
                // source line 141, bytecode pc 334
                this.m_iconBtns[i].setEquipEnabled(false, false);
            } else {
                // source line 145, bytecode pc 365
                this.m_iconBtns[i].setData(null, false);
                // source line 146, bytecode pc 391
                this.m_iconBtns[i].setIsLocked(false, false);
                if (this.b_isSelf) {
                    // source line 148, bytecode pc 428
                    this.m_iconBtns[i].setEquipEnabled(true, false);
                } else {
                    // source line 151, bytecode pc 459
                    this.m_iconBtns[i].setEquipEnabled(false, false);
                }
            }
        } else {
            // source line 157, bytecode pc 490
            this.m_iconBtns[i].setData(null, false);
            // source line 158, bytecode pc 516
            this.m_iconBtns[i].setIsLocked(true, false);
            // source line 159, bytecode pc 542
            this.m_iconBtns[i].setEquipEnabled(false, false);
        }
        // source line 162, bytecode pc 564
        this.m_iconBtns[i].updateView();
        // source line 129, bytecode pc 579
        i++;
    }
},
    iconBtnCallback: function(index, data) {
    var buddyMaxlength;
    // source line 167, bytecode pc 36
    xs.log_xjf(((("iconBtnCallback......" + index) + "......") + data));
    // source line 169, bytecode pc 101
    (buddyMaxlength = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getCurBuddyMaxLength());
    if ((index < buddyMaxlength)) {
        // source line 171, bytecode pc 123
        (this.m_curItemData = data);
        // source line 172, bytecode pc 133
        (this.m_curItemIndex = index);
        if (this.b_isSelf) {
            // source line 176, bytecode pc 157
            this.showReplaceDialog();
        } else {
            if (data) {
                // source line 182, bytecode pc 193
                xs.log_xjf("查看其他玩家,当前位置有武将");
            } else {
                // source line 194, bytecode pc 221
                xs.log_xjf("查看其他玩家,当前位置没武将");
            }
        }
    } else {
        // source line 200, bytecode pc 249
        xs.log_xjf("未解锁");
        if (this.b_isSelf) {
            // source line 202, bytecode pc 273
            this.showNeedZhaoLingDialog();
        }
    }
},
    updateFateView: function() {
    var offset, generalsInTeam, view, fateViewheight, i, general, generalNameLab, fateArray, fateView, parentView;
    // source line 208, bytecode pc 22
    xs.log_hsq("update updateFateView");
    if (this.m_fateScrollView) {
        // source line 211, bytecode pc 54
        (offset = this.m_fateScrollView.getContentOffset());
        // source line 212, bytecode pc 72
        this.m_fateScrollView.removeAllChildrenView();
    }
    // source line 215, bytecode pc 137
    (generalsInTeam = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneralsInTeam());
    // source line 218, bytecode pc 162
    (view = cc.Node.create());
    // source line 219, bytecode pc 167
    (fateViewheight = 0);
    // source line 220, bytecode pc 172
    (i = 0);
    while ((i < generalsInTeam.length)) {
        // source line 222, bytecode pc 189
        (general = generalsInTeam[i]);
        // source line 224, bytecode pc 240
        (generalNameLab = xs.Factorys.Label.createByStyleIdWithString("LS_wujiangName2", general.getNameString()));
        // source line 225, bytecode pc 267
        (fateViewheight = (fateViewheight + generalNameLab.getContentSize().height));
        // source line 226, bytecode pc 307
        generalNameLab.setAnchorPoint(cc.p(0.5, 0));
        // source line 229, bytecode pc 359
        generalNameLab.setPosition(cc.p((this.m_fateScrollViewSize.width / 2), -fateViewheight));
        // source line 231, bytecode pc 378
        view.addChild(generalNameLab);
        // source line 235, bytecode pc 396
        (fateArray = general.getFates());
        if ((fateArray.length > 0)) {
            // source line 241, bytecode pc 481
            (fateView = xs.DetailDialogComponent.createDStyleQ({
    fateData: fateArray,
    generalData: general,
    otherPlayerId: this.m_playerId,
    otherPlayerData: this.m_playerData
}));
            // source line 243, bytecode pc 508
            (fateViewheight = (fateViewheight + fateView.getViewSize().height));
            // source line 244, bytecode pc 580
            fateView.setPosition(cc.p(((this.m_fateScrollViewSize.width - fateView.getViewSize().width) / 2), -fateViewheight));
            // source line 245, bytecode pc 599
            view.addChild(fateView);
        }
        // source line 220, bytecode pc 614
        i++;
    }
    // source line 250, bytecode pc 657
    (parentView = cc.Node.create());
    // source line 251, bytecode pc 695
    view.setPosition(cc.p(0, fateViewheight));
    // source line 252, bytecode pc 714
    parentView.addChild(view);
    // source line 255, bytecode pc 762
    parentView.setContentSize(cc.size(this.m_fateScrollViewSize.width, fateViewheight));
    // source line 258, bytecode pc 784
    this.m_fateScrollView.addChildrenView(parentView);
    if (!this.b_isFateViewFirstUpdate) {
        // source line 262, bytecode pc 818
        this.m_fateScrollView.setContentOffset(offset);
    }
    // source line 264, bytecode pc 826
    (this.b_isFateViewFirstUpdate = false);
},
    showNeedZhaoLingDialog: function() {
    var nextPos, needZhaoLingNum, _content, _title, dialog;
    // source line 268, bytecode pc 66
    (nextPos = (xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getCurBuddyMaxLength() + 1));
    // source line 269, bytecode pc 141
    (needZhaoLingNum = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getOpenZhaoLinNumByBuddyPos(nextPos));
    // source line 270, bytecode pc 184
    xs.log_xjf(((("nextPos = " + nextPos) + ", needZhaoLingNum = ") + needZhaoLingNum));
    // source line 273, bytecode pc 257
    (_content = xs.Tools.String.createString("str_buddy_needZhaoLing").convWithArgs([ nextPos, needZhaoLingNum ]));
    // source line 274, bytecode pc 293
    (_title = xs.Tools.String.createString("str_buddy_open"));
    // source line 296, bytecode pc 463
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 283, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    var num;
    // source line 286, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 287, bytecode pc 93
    (num = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Assizes));
    if ((num < needZhaoLingNum)) {
        // source line 289, bytecode pc 171
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_buddy_openNumInadequate"));
    } else {
        // source line 293, bytecode pc 189
        this.requestActivateBuddyPosition();
    }
}.bind(this)
}));
    // source line 297, bytecode pc 481
    (dialog = dialog.getRealDialog());
    // source line 298, bytecode pc 500
    dialog.setContentText(_content);
    // source line 299, bytecode pc 519
    dialog.setTitleByString(_title);
},
    showReplaceDialog: function() {
    if (this.b_isSelf) {
        // source line 306, bytecode pc 70
        (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_Buddy));
        // source line 307, bytecode pc 97
        this.m_replaceDialog.setReplaceData(this.m_curItemData, false);
        // source line 310, bytecode pc 179
        this.m_replaceDialog.setHideData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getGeneralsInBuddy(), true);
        // source line 312, bytecode pc 199
        this.m_replaceDialog.setListener(this);
    }
},
    ReplaceCardDialog_replaceCard: function(data, cardType) {
    // source line 328, bytecode pc 16
    this.requestSetBuddy(data);
},
    ReplaceCardDialog_close: function() {
    // source line 332, bytecode pc 7
    (this.m_replaceDialog = null);
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 338, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 339, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 340, bytecode pc 54
    this.m_fateScrollView.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 342, bytecode pc 59
    (i = 0);
    while ((i < this.m_iconBtns.length)) {
        // source line 343, bytecode pc 125
        this.m_iconBtns[i].setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_iconBtn.priority));
        // source line 342, bytecode pc 140
        i++;
    }
},
    requestActivateBuddyPosition: function() {
    // source line 366, bytecode pc 178
    xs.Tools.Net.requestActivateBuddyPosition({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    position: (xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Buddy.getCurBuddyMaxLength() + 1)
}, function(data) {
    // source line 358, bytecode pc 26
    xs.log_xjf("小伙伴解锁成功", data);
    // source line 359, bytecode pc 86
    xs.Views.Mgr.showToast(xs.Tools.String.createString("str_buddy_openScuess"));
    // source line 361, bytecode pc 99
    this.updateIconBtns();
}, function(data) {
    // source line 364, bytecode pc 26
    xs.log_xjf("小伙伴激活失败", data);
}, this);
},
    onEnter: function() {
    // source line 371, bytecode pc 12
    this._super();
    // source line 372, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateBuddyView, xs.Constant_Notify_Buddy_refresh);
},
    updateBuddyView: function() {
    // source line 376, bytecode pc 7
    (this.m_yuanfenUpdae = true);
},
    refreshFromMenuClick: function() {
    if (this.m_yuanfenUpdae) {
        // source line 381, bytecode pc 23
        this.updateFateView();
    }
    // source line 384, bytecode pc 31
    (this.m_yuanfenUpdae = false);
},
    requestSetBuddy: function(generalData) {
    // source line 408, bytecode pc 142
    xs.Tools.Net.requestSetBuddy({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_general_id: generalData.getPkId(),
    position: (this.m_curItemIndex + 1)
}, function(data) {
    // source line 397, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 398, bytecode pc 53
    xs.log_hsq("小伙伴上阵成功", data);
    // source line 399, bytecode pc 93
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Buddy_refresh, this);
    // source line 400, bytecode pc 106
    this.updateIconBtns();
    // source line 401, bytecode pc 119
    this.updateFateView();
    // source line 402, bytecode pc 127
    (this.m_yuanfenUpdae = false);
}, function(data) {
    // source line 405, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 406, bytecode pc 53
    xs.log_xjf("小伙伴上阵失败", data);
}, this);
}
}));
// source line 413, bytecode pc 244
(xs.Scene.BuddyView.create = function(param) {
    var buddyView, playerId, playerData, pageIdx;
    // source line 414, bytecode pc 23
    (buddyView = new xs.Scene.BuddyView());
    // source line 415, bytecode pc 28
    (playerId = null);
    // source line 416, bytecode pc 33
    (playerData = null);
    // source line 417, bytecode pc 38
    (pageIdx = null);
    if (param) {
        // source line 419, bytecode pc 58
        (playerId = param.playerId);
        // source line 420, bytecode pc 70
        (playerData = param.playerData);
        // source line 421, bytecode pc 82
        (pageIdx = param.pageIdx);
    }
    if ((buddyView && buddyView.init(playerId, playerData, pageIdx))) {
        // source line 424, bytecode pc 126
        return buddyView;
    }
    // source line 426, bytecode pc 128
    return null;
});
