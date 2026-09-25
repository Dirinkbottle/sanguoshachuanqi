// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionMemberLayer.js:1
// source line 255, bytecode pc 855
(xs.Views.Union.UnionMemberCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_nameLab", tag: 2, type: "ls", id: "LS_Lv" },
        { name: "m_playerLevel", tag: 1, type: "ls", id: "LS_mainLv" },
        { name: "m_vipLevel", tag: 3, type: "ls", id: "LS_Lv" },
        { name: "m_dutyPresident", tag: 4 },
        { name: "m_contributionName", tag: 5, type: "ls", id: "LS_jinengInf1", stringId: "auto_name_550" },
        { name: "m_contributionNum", tag: 6, type: "ls", id: "LS_mainUI4" },
        { name: "m_donate", tag: 9, type: "ls", id: "LS_jinengInf1", stringId: "auto_name_551" },
        { name: "m_donateNum", tag: 10, type: "ls", id: "LS_Lv" },
        { name: "m_zaixian", tag: 11 },
        { name: "m_tongqian", tag: 12 },
        { name: "m_yuanbao", tag: 13 },
        { name: "m_duty", tag: 14, type: "ls", id: "LS_wujiangName1" },
        { name: "m_leaveTime", tag: 15, type: "ls", id: "LS_jinengInf1" },
        { name: "m_ladderRank", tag: 8, type: "ls_ext", ids: [ "LS_jinengInf1", "LS_wujiangName1" ] },
        { name: "m_memberBtn", tag: 7, type: "btn", id: "Btn_btn3", stringId: "auto_name_552" }
    ],
    applyCfg: { Agree: 5, Reject: 6 },
    draw: function(ctx) {
    // source line 29, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 32, bytecode pc 12
    this._super();
    // source line 33, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 37, bytecode pc 19
        return false;
    }
    // source line 40, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 41, bytecode pc 35
    (this.m_listener = null);
    // source line 43, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 44, bytecode pc 51
    (this.m_nameLab = null);
    // source line 45, bytecode pc 59
    (this.m_vipLevel = null);
    // source line 46, bytecode pc 67
    (this.m_ladderRank = null);
    // source line 47, bytecode pc 75
    (this.m_playerLevel = null);
    // source line 48, bytecode pc 83
    (this.m_dutyPresident = null);
    // source line 49, bytecode pc 91
    (this.m_contributionName = null);
    // source line 50, bytecode pc 99
    (this.m_contributionNum = null);
    // source line 51, bytecode pc 107
    (this.m_donate = null);
    // source line 52, bytecode pc 115
    (this.m_donateNum = null);
    // source line 53, bytecode pc 123
    (this.m_zaixian = null);
    // source line 54, bytecode pc 131
    (this.m_tongqian = null);
    // source line 55, bytecode pc 139
    (this.m_yuanbao = null);
    // source line 56, bytecode pc 147
    (this.m_duty = null);
    // source line 57, bytecode pc 155
    (this.m_leaveTime = null);
    // source line 58, bytecode pc 163
    (this.m_memberBtn = null);
    // source line 60, bytecode pc 171
    (this.m_parentView = null);
    // source line 61, bytecode pc 179
    (this.m_isMe = false);
    // source line 62, bytecode pc 187
    (this.isApply = false);
    // source line 65, bytecode pc 238
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionMemberCell, this));
    // source line 66, bytecode pc 274
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 68, bytecode pc 317
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 71, bytecode pc 355
    this.m_memberBtn.setOnClickCallBack(this.onTouchCallBack.bind(this));
    // source line 72, bytecode pc 375
    this.m_memberBtn.setSwallowTouch(false);
    // source line 73, bytecode pc 395
    this.m_memberBtn.setZoomOnTouchDown(false);
    // source line 74, bytecode pc 415
    this.m_memberBtn.setEventOnDisable(true);
    // source line 78, bytecode pc 460
    (this.applySp = xs.Factorys.Sprite.create("GuildDialog_yibaoming", "GuildDialog"));
    // source line 80, bytecode pc 480
    this.addChild(this.applySp);
    // source line 81, bytecode pc 521
    this.applySp.setPosition(cc.p(120, 50));
    // source line 87, bytecode pc 523
    return true;
},
    onTouchCallBack: function() {
    if (this.m_isMe) {
        // source line 95, bytecode pc 70
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_553"));
        // source line 96, bytecode pc 72
        return void 0;
    }
    // source line 103, bytecode pc 208
    xs.Views.Mgr.showDialogByName("UnionMemberManageDialog", {
    user_type: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserRole(),
    other_type: this.m_playerRole,
    other_name: this.m_otherName,
    other_id: this.m_playerId
});
},
    setBaseTouchPriority: function(priority) {
    // source line 113, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 115, bytecode pc 36
    this.m_memberBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setListener: function(listener) {
    // source line 121, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 125, bytecode pc 12
    this._super();
    // source line 127, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 130, bytecode pc 63
            (this.m_parentView = parent);
            // source line 131, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 133, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 136, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 140, bytecode pc 12
    this._super();
},
    update: function(par, num) {
    var m_ladderRank, isRanking, pos, m_duty, m_todayDonateType, m_LogonTimeType;
    // source line 144, bytecode pc 26
    xs.log("idx---", num);
    // source line 145, bytecode pc 36
    (this.par = par);
    // source line 146, bytecode pc 46
    (this.num = num);
    // source line 148, bytecode pc 79
    (this.m_otherName = this.par.m_playerList[num].getPlayerName());
    // source line 149, bytecode pc 104
    this.m_nameLab.setString(this.m_otherName);
    // source line 150, bytecode pc 149
    this.m_playerLevel.setString(this.par.m_playerList[num].getPlayerLevel());
    // source line 151, bytecode pc 194
    this.m_vipLevel.setString(this.par.m_playerList[num].getVipLevel());
    // source line 152, bytecode pc 227
    (this.isApply = this.par.m_playerList[num].getPlayerApply());
    // source line 153, bytecode pc 257
    (m_ladderRank = this.par.m_playerList[num].getLadderRank());
    // source line 154, bytecode pc 262
    (isRanking = false);
    // source line 155, bytecode pc 288
    switch (xs.Utils.parseIntSafe(m_ladderRank)) {
        case 1:
        // source line 157, bytecode pc 357
        (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
        // source line 158, bytecode pc 362
        (isRanking = true);
        break;
        case 2:
        // source line 161, bytecode pc 412
        (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
        // source line 162, bytecode pc 417
        (isRanking = true);
        break;
        case 3:
        // source line 165, bytecode pc 467
        (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
        // source line 166, bytecode pc 472
        (isRanking = true);
        break;
        default:
        break;
    }
    if (isRanking) {
        // source line 175, bytecode pc 511
        (pos = this.m_ladderRank.getPosition());
        if (this.m_ccbNode.getChildByTag(99)) {
            // source line 177, bytecode pc 568
            this.m_ccbNode.getChildByTag(99).removeFromParent();
        }
        // source line 181, bytecode pc 598
        this.m_ccbNode.addChild(this.m_rankingSprite);
        // source line 182, bytecode pc 654
        this.m_rankingSprite.setPosition(cc.p((pos.x + 118), pos.y));
        // source line 183, bytecode pc 675
        this.m_rankingSprite.setTag(99);
        // source line 184, bytecode pc 699
        this.m_rankingSprite.setScale(0.5);
        // source line 185, bytecode pc 768
        this.m_ladderRank.setStringByStrings([ xs.Tools.String.createString("auto_name_554"), " " ]);
    } else {
        if (this.m_ccbNode.getChildByTag(99)) {
            // source line 190, bytecode pc 818
            this.m_rankingSprite.setVisible(false);
        }
        // source line 193, bytecode pc 890
        this.m_ladderRank.setStringByStrings([ xs.Tools.String.createString("auto_name_554"), m_ladderRank ]);
    }
    // source line 198, bytecode pc 920
    (m_duty = this.par.m_playerList[num].getUserRoleToString());
    if ((m_duty == xs.Tools.String.createString("auto_name_42"))) {
        // source line 200, bytecode pc 981
        this.m_dutyPresident.setVisible(true);
        // source line 201, bytecode pc 1001
        this.m_duty.setVisible(false);
    } else {
        // source line 203, bytecode pc 1026
        this.m_dutyPresident.setVisible(false);
        // source line 204, bytecode pc 1046
        this.m_duty.setVisible(true);
        // source line 205, bytecode pc 1068
        this.m_duty.setString(m_duty);
    }
    // source line 207, bytecode pc 1113
    this.m_contributionNum.setString(this.par.m_playerList[num].getUserDonate());
    // source line 209, bytecode pc 1143
    (m_todayDonateType = this.par.m_playerList[num].getTodayDonateTypeToString());
    if ((m_todayDonateType == xs.Tools.String.createString("auto_name_27"))) {
        // source line 211, bytecode pc 1204
        this.m_tongqian.setVisible(true);
        // source line 212, bytecode pc 1224
        this.m_yuanbao.setVisible(false);
    } else {
        // source line 215, bytecode pc 1249
        this.m_tongqian.setVisible(false);
        // source line 216, bytecode pc 1269
        this.m_yuanbao.setVisible(true);
    }
    // source line 220, bytecode pc 1314
    this.m_donateNum.setString(this.par.m_playerList[num].getTodayDonateNum());
    // source line 221, bytecode pc 1344
    (m_LogonTimeType = this.par.m_playerList[num].getLogonTimeTypeToString());
    if ((m_LogonTimeType == xs.Tools.String.createString("auto_name_37"))) {
        // source line 223, bytecode pc 1405
        this.m_zaixian.setVisible(true);
        // source line 224, bytecode pc 1425
        this.m_leaveTime.setVisible(false);
    } else {
        // source line 227, bytecode pc 1450
        this.m_zaixian.setVisible(false);
        // source line 228, bytecode pc 1470
        this.m_leaveTime.setVisible(true);
        // source line 229, bytecode pc 1492
        this.m_leaveTime.setString(m_LogonTimeType);
    }
    // source line 231, bytecode pc 1525
    (this.m_playerRole = this.par.m_playerList[num].getUserRole());
    // source line 232, bytecode pc 1558
    (this.m_playerId = this.par.m_playerList[num].getUserId());
    if ((this.m_playerId == xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId())) {
        // source line 235, bytecode pc 1648
        this.m_memberBtn.setEnabled(false);
        // source line 236, bytecode pc 1656
        (this.m_isMe = true);
    } else {
        // source line 239, bytecode pc 1681
        this.m_memberBtn.setEnabled(true);
        // source line 240, bytecode pc 1689
        (this.m_isMe = false);
    }
    if (this.isApply) {
        // source line 246, bytecode pc 1720
        this.applySp.setVisible(true);
    } else {
        // source line 248, bytecode pc 1745
        this.applySp.setVisible(false);
    }
    // source line 252, bytecode pc 1772
    xs.log("idx---end", num);
},
    isTrueOrFalse: function() {
    // source line 256, bytecode pc 34
    return (((Math.random() * 100) < 50) ? true : false);
}
}));
// source line 263, bytecode pc 886
(xs.Views.Union.UnionMemberCell.create = function() {
    var cell;
    // source line 264, bytecode pc 28
    (cell = new xs.Views.Union.UnionMemberCell());
    if ((cell && cell.init())) {
        // source line 266, bytecode pc 60
        return cell;
    }
    // source line 269, bytecode pc 62
    return null;
});
// source line 553, bytecode pc 1125
(xs.Views.Union.UnionMemberLayer = xs.Views.Union.UnionBaseLayer.extend({
    ctor: function() {
    // source line 284, bytecode pc 12
    this._super();
    // source line 285, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var winSize;
    // source line 295, bytecode pc 12
    this._super();
    // source line 297, bytecode pc 20
    (this.isNeedRefresh = true);
    // source line 299, bytecode pc 32
    (this.m_playerList = []);
    // source line 301, bytecode pc 97
    (this.m_playerType = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserRole());
    // source line 303, bytecode pc 122
    (winSize = xs.director.getVisibleSize());
    // source line 306, bytecode pc 153
    (this.m_defaultSize = cc.size(891, 420));
    // source line 309, bytecode pc 212
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 310, bytecode pc 251
    this.m_bg.setAnchorPoint(cc.p(0, 0));
    // source line 311, bytecode pc 276
    this.m_bg.setContentSize(this.m_defaultSize);
    // source line 313, bytecode pc 353
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "lb", offset: { x: -8, y: 0 } });
    // source line 317, bytecode pc 422
    (this.m_tableView = cc.TableView.create(this, cc.size(882, (this.m_defaultSize.height * 0.95))));
    // source line 318, bytecode pc 451
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 319, bytecode pc 492
    this.m_tableView.setPosition(cc.p(5, 11));
    // source line 320, bytecode pc 512
    this.m_tableView.setDelegate(this);
    // source line 322, bytecode pc 541
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 323, bytecode pc 566
    this.m_bg.addChild(this.m_tableView);
    // source line 330, bytecode pc 568
    return true;
},
    onBtnMenberCallBack: function(param) {
    if ((param.type == xs.Constant_UnionMember_Check)) {
        // source line 337, bytecode pc 67
        xs.log("idd:", param.otherId);
        // source line 339, bytecode pc 131
        xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: param.otherId });
    } else {
        // source line 400, bytecode pc 372
        xs.Tools.Net.requestApplyOperation({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    target_id: param.otherId,
    type: param.type
}, function(data) {
    var m_str;
    if (data.result) {
        // source line 357, bytecode pc 27
        this._readPlayerList(true);
        // source line 358, bytecode pc 87
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_555"));
        // source line 359, bytecode pc 125
        xs.log("typp", param.type);
        // source line 360, bytecode pc 142
        (m_str = data.return_info.log_content);
        if ((m_str && (m_str != ""))) {
            // source line 363, bytecode pc 218
            xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_AddUnionLogAndRefresh, { content: m_str });
        }
        // source line 367, bytecode pc 245
        xs.log("sstr", m_str);
        if ((param.type == xs.Constant_UnionMember_Kick)) {
            // source line 369, bytecode pc 337
            xs.Profile.GameData.Mgr.getInstance().Union.getUnion().chgMemberNum(-1);
            // source line 370, bytecode pc 375
            xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_PeopleChange);
        } else {
            if ((param.type == xs.Constant_UnionMember_Transfer)) {
                // source line 372, bytecode pc 450
                xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_RankingUpdate, true);
                // source line 373, bytecode pc 535
                xs.Profile.GameData.Mgr.getInstance().Union.getUnion().safeUpdate({ leader_nickname: param.otherName });
                // source line 374, bytecode pc 573
                xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_LeaderNicknameChange);
                // source line 375, bytecode pc 635
                xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().setUserRole(3);
            }
        }
    }
}.bind(this), function(params) {
    // source line 381, bytecode pc 26
    xs.dump("params", params);
    if ((params.error_code === "e_6002")) {
        // source line 383, bytecode pc 105
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_556"));
    } else {
        if ((params.error_code === "e_6011")) {
            // source line 386, bytecode pc 189
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_557"));
        } else {
            if ((params.error_code === "e_1005")) {
                // source line 389, bytecode pc 273
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_558"));
                // source line 390, bytecode pc 288
                this._readPlayerList(true);
            } else {
                // source line 395, bytecode pc 308
                this._readPlayerList(true);
            }
        }
    }
    // source line 399, bytecode pc 310
    return true;
}.bind(this));
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 407, bytecode pc 12
    this._super();
    // source line 408, bytecode pc 25
    this._readPlayerList();
    // source line 409, bytecode pc 72
    xs.Utils.Notify.addObserver(this, this.onBtnMenberCallBack, xs.Constant_Notify_Event_UnionMember);
    // source line 410, bytecode pc 119
    xs.Utils.Notify.addObserver(this, this.setIsNeedRefresh, xs.Constant_Notify_Union_NeedUpdate_MemberLayer);
},
    onExitTransitionDidStart: function() {
    // source line 415, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_UnionMember);
    // source line 416, bytecode pc 79
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Union_NeedUpdate_MemberLayer);
    // source line 417, bytecode pc 92
    this._super();
},
    _readPlayerList: function(isUpdae) {
    var m_isUpdae;
    // source line 423, bytecode pc 19
    (m_isUpdae = (isUpdae || false));
    // source line 468, bytecode pc 200
    xs.Tools.Net.requestUnionUserList({
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId()
}, function(data) {
    var mList, x, pos, offset, size;
    if (!data.result) {
        // source line 431, bytecode pc 15
        return void 0;
    }
    // source line 437, bytecode pc 32
    (mList = data.return_info.user_list);
    // source line 439, bytecode pc 44
    (this.m_playerList = []);
    // source line 440, bytecode pc 49
    (x = 0);
    while ((x < mList.length)) {
        // source line 441, bytecode pc 108
        this.m_playerList.push(xs.Models.UnionMember.createWithJson(mList[x]));
        // source line 440, bytecode pc 123
        x++;
    }
    if (m_isUpdae) {
        // source line 448, bytecode pc 209
        (pos = xs.Utils.clone(this.m_tableView.getContainer().getPosition()));
        // source line 449, bytecode pc 252
        (offset = xs.Utils.clone(this.m_tableView.getContentOffset()));
    }
    // source line 453, bytecode pc 270
    this.m_tableView.reloadData();
    if (m_isUpdae) {
        // source line 455, bytecode pc 338
        (size = xs.Utils.clone(this.m_tableView.getContainer().getContentSize()));
        if ((this.m_defaultSize.height < size.height)) {
            if (((this.m_defaultSize.height - offset.y) >= size.height)) {
                // source line 458, bytecode pc 399
                return void 0;
            }
            // source line 460, bytecode pc 423
            this.m_tableView.setContentOffset(offset, 0);
        }
    }
}.bind(this), this);
},
    refreshFromMenuClick: function() {
    // source line 474, bytecode pc 14
    this._readPlayerList(true);
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
    // source line 550, bytecode pc 32
    xs.Views.Mgr.showToast("scrollViewDidZoom");
},
    tableCellTouched: function(table, cell) {
},
    refreshPlayerList: function() {
    var pos, offset, size;
    // source line 499, bytecode pc 53
    (pos = xs.Utils.clone(this.m_tableView.getContainer().getPosition()));
    // source line 500, bytecode pc 96
    (offset = xs.Utils.clone(this.m_tableView.getContentOffset()));
    // source line 502, bytecode pc 114
    this.m_tableView.reloadData();
    // source line 504, bytecode pc 168
    (size = xs.Utils.clone(this.m_tableView.getContainer().getContentSize()));
    if ((this.m_defaultSize.height < size.height)) {
        if (((this.m_defaultSize.height - offset.y) >= size.height)) {
            // source line 507, bytecode pc 229
            return void 0;
        }
        // source line 509, bytecode pc 253
        this.m_tableView.setContentOffset(offset, 0);
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 514, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 521, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 523, bytecode pc 44
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 525, bytecode pc 88
        (cell = xs.Views.Union.UnionMemberCell.create());
    }
    // source line 528, bytecode pc 109
    cell.update(this, idx);
    // source line 531, bytecode pc 113
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 535, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 537, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 538, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 542, bytecode pc 11
    return this.m_playerList.length;
}
}));
// source line 559, bytecode pc 1156
(xs.Views.Union.UnionMemberLayer.create = function() {
    var retObj;
    // source line 560, bytecode pc 28
    (retObj = new xs.Views.Union.UnionMemberLayer());
    if ((retObj && retObj.init())) {
        // source line 562, bytecode pc 60
        return retObj;
    }
    // source line 564, bytecode pc 62
    return null;
});
