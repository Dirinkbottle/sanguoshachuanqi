// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/DecisiveBattle/OneRoundPlayerListDialog.js:1
// source line 154, bytecode pc 444
(xs.Views.OneRoundPlayerListCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_matchLevel", tag: 1, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_leftPlayer", tag: 3, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_rightPlayer", tag: 4, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_vsIcon", tag: 2, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_battleResult", tag: 5, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_reviewBtn", tag: 6, type: "btn", id: "Btn_btn4" }
    ],
    constNum: { zoreNum: 0, oneNum: 1, twoNum: 2 },
    draw: function(ctx) {
    // source line 20, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 23, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(data) {
    if (!this._super()) {
        // source line 28, bytecode pc 19
        return false;
    }
    // source line 31, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 32, bytecode pc 35
    (this.m_matchLevel = null);
    // source line 33, bytecode pc 43
    (this.m_leftPlayer = null);
    // source line 34, bytecode pc 51
    (this.m_rightPlayer = null);
    // source line 35, bytecode pc 59
    (this.m_vsIcon = null);
    // source line 36, bytecode pc 67
    (this.m_battleResult = null);
    // source line 37, bytecode pc 75
    (this.m_reviewBtn = null);
    // source line 39, bytecode pc 90
    (this.m_local = data.local);
    // source line 41, bytecode pc 105
    (this.m_round = data.round);
    // source line 43, bytecode pc 120
    (this.m_idx = data.idx);
    // source line 44, bytecode pc 185
    (this.m_userId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId());
    // source line 46, bytecode pc 236
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionWarBattleResultDialogCell, this));
    // source line 48, bytecode pc 315
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", offset: cc.p(20, 0) });
    // source line 49, bytecode pc 358
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 53, bytecode pc 401
    this.m_rightPlayer.setAnchorPoint(cc.p(0, 0.5));
    // source line 54, bytecode pc 444
    this.m_leftPlayer.setAnchorPoint(cc.p(0, 0.5));
    // source line 55, bytecode pc 465
    this.m_leftPlayer.setPositionX(120);
    // source line 57, bytecode pc 489
    this.m_vsIcon.setString("vs");
    // source line 64, bytecode pc 491
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 67, bytecode pc 12
    this._super();
    // source line 69, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 72, bytecode pc 63
            (this.m_parentView = parent);
            // source line 73, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 75, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 80, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 85, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 88, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 89, bytecode pc 36
    this.m_reviewBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    update: function(data, idx) {
    var strArray, server_id, _server_id, nick, _nick, winStr, playerPosition;
    // source line 93, bytecode pc 9
    (this.m_data = data);
    // source line 95, bytecode pc 26
    (this.m_session = data[0].session);
    // source line 97, bytecode pc 35
    (strArray = []);
    // source line 98, bytecode pc 73
    (strArray[0] = (data[0].session.toString() || ""));
    // source line 100, bytecode pc 128
    this.m_matchLevel.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_session", strArray));
    // source line 102, bytecode pc 153
    (server_id = (data[0].server_id || ""));
    // source line 103, bytecode pc 178
    (_server_id = (data[1].server_id || ""));
    // source line 104, bytecode pc 203
    (nick = (data[0].nick || ""));
    // source line 105, bytecode pc 228
    (_nick = (data[1].nick || ""));
    // source line 106, bytecode pc 264
    (winStr = xs.Tools.String.createString("decisive_viewing_label_Win"));
    // source line 108, bytecode pc 302
    this.m_leftPlayer.setString(((("S" + server_id) + " ") + nick));
    // source line 109, bytecode pc 340
    this.m_rightPlayer.setString(((("S" + _server_id) + " ") + _nick));
    // source line 111, bytecode pc 402
    this.m_vsIcon.setPositionX(((this.m_leftPlayer.getPositionX() + this.m_leftPlayer.getContentSize().width) + 20));
    // source line 113, bytecode pc 441
    this.m_rightPlayer.setPositionX((this.m_vsIcon.getPositionX() + 20));
    if (xs.Utils.isSet(data[0].win)) {
        // source line 116, bytecode pc 520
        this.m_battleResult.setString((((("S" + server_id) + " ") + nick) + winStr));
    } else {
        // source line 119, bytecode pc 567
        this.m_battleResult.setString((((("S" + _server_id) + " ") + _nick) + winStr));
    }
    if (((this.m_userId == data[0].uid) || (this.m_userId == data[1].uid))) {
        // source line 124, bytecode pc 654
        (playerPosition = xs.Factorys.Sprite.create("Cmn03_wozaizhe", "Cmn03"));
        // source line 125, bytecode pc 731
        xs.Utils.Node.attachNodes(this, playerPosition, { desc: "lb", offset: cc.p(40, 79) });
    }
    if ((idx < this.m_idx)) {
        // source line 130, bytecode pc 797
        this.m_reviewBtn.setString(xs.Tools.String.createString("decisive_viewing_btn_Watch"));
        // source line 131, bytecode pc 862
        this.m_reviewBtn.setOnClickCallBack(this.onReviewBtnClicked.bind({ self: this, tag: this.constNum.zoreNum }));
        // source line 132, bytecode pc 882
        this.m_reviewBtn.setSwallowTouch(false);
        // source line 133, bytecode pc 902
        this.m_reviewBtn.setZoomOnTouchDown(true);
    } else {
        if ((idx == this.m_idx)) {
            // source line 136, bytecode pc 973
            this.m_reviewBtn.setString(xs.Tools.String.createString("decisive_viewing_btn_BeBattling"));
            // source line 137, bytecode pc 1038
            this.m_reviewBtn.setOnClickCallBack(this.onReviewBtnClicked.bind({ self: this, tag: this.constNum.oneNum }));
            // source line 138, bytecode pc 1058
            this.m_reviewBtn.setEnabled(false);
            // source line 139, bytecode pc 1078
            this.m_reviewBtn.setEventOnDisable(true);
            // source line 141, bytecode pc 1098
            this.m_battleResult.setVisible(false);
        } else {
            if ((idx > this.m_idx)) {
                // source line 143, bytecode pc 1169
                this.m_reviewBtn.setString(xs.Tools.String.createString("decisive_viewing_btn_UnBattle"));
                // source line 144, bytecode pc 1234
                this.m_reviewBtn.setOnClickCallBack(this.onReviewBtnClicked.bind({ self: this, tag: this.constNum.twoNum }));
                // source line 145, bytecode pc 1254
                this.m_reviewBtn.setEnabled(false);
                // source line 146, bytecode pc 1274
                this.m_reviewBtn.setEventOnDisable(true);
                // source line 148, bytecode pc 1294
                this.m_battleResult.setVisible(false);
            }
        }
    }
},
    onReviewBtnClicked: function() {
    var self, tag;
    // source line 156, bytecode pc 9
    (self = this.self);
    // source line 157, bytecode pc 19
    (tag = this.tag);
    if ((tag == self.constNum.zoreNum)) {
        // source line 177, bytecode pc 126
        xs.Tools.Net.requestDecisiveViewingFight({ round: self.m_round, session: self.m_session }, self.m_local, function(jsonData) {
    if (jsonData.detail) {
        // source line 171, bytecode pc 88
        xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_UnionWar, xs.Models.FightInfo.create(jsonData.detail), null);
    }
}, function() {
}, self);
    } else {
        if ((tag == self.constNum.oneNum)) {
            // source line 181, bytecode pc 213
            xs.Views.Mgr.showToast(xs.Tools.String.createString("decisive_fighting_prompt"));
        } else {
            if ((tag == self.constNum.twoNum)) {
                // source line 184, bytecode pc 300
                xs.Views.Mgr.showToast(xs.Tools.String.createString("decisive_noFighting_prompt"));
            }
        }
    }
}
}));
// source line 191, bytecode pc 470
(xs.Views.OneRoundPlayerListCell.create = function(data) {
    var cell;
    // source line 192, bytecode pc 23
    (cell = new xs.Views.OneRoundPlayerListCell());
    if ((cell && cell.init(data))) {
        // source line 194, bytecode pc 59
        return cell;
    }
    // source line 196, bytecode pc 61
    return null;
});
// source line 326, bytecode pc 761
(xs.Views.OneRoundPlayerListDialog = xs.Views.HungerLayer.extend({
    cfg: {
        btnClose: { priority: -1 },
        ccbCfg: [
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
        ]
    },
    init: function(param) {
    var arrayStr, roundStr;
    // source line 212, bytecode pc 12
    this._super();
    // source line 213, bytecode pc 20
    (this.btnClose = null);
    // source line 214, bytecode pc 28
    (this.lblTitle = null);
    // source line 215, bytecode pc 59
    (this.m_defaultSize = cc.size(891, 420));
    // source line 217, bytecode pc 74
    (this.m_local = param.local);
    // source line 219, bytecode pc 89
    (this.m_round = param.round);
    // source line 221, bytecode pc 109
    (this.m_playerList = param.data.player_list);
    // source line 223, bytecode pc 124
    (this.m_idx = param.idx);
    // source line 225, bytecode pc 189
    (this.m_userId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId());
    // source line 228, bytecode pc 240
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePointsDialog, this));
    // source line 229, bytecode pc 264
    xs.dump(this.ccbNode);
    // source line 230, bytecode pc 307
    this.ccbNode.setContentSize(cc.size(935, 613));
    // source line 231, bytecode pc 354
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 232, bytecode pc 407
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 233, bytecode pc 455
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 237, bytecode pc 479
    this.btnClose.setOnClickCallBack(function() {
    // source line 238, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 242, bytecode pc 488
    (arrayStr = []);
    // source line 243, bytecode pc 513
    (arrayStr[0] = param.round.toString());
    // source line 245, bytecode pc 553
    (roundStr = xs.Tools.String.createStringWithArgsArray("DecisiveBattle_round", arrayStr));
    // source line 247, bytecode pc 595
    this.lblTitle.setString(((roundStr + " ") + param.data.round_name));
    // source line 249, bytecode pc 650
    (this.m_tableView = cc.TableView.create(this, cc.size(910, 530)));
    // source line 250, bytecode pc 679
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 251, bytecode pc 699
    this.m_tableView.setDelegate(this);
    // source line 252, bytecode pc 728
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 253, bytecode pc 813
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_tableView, { desc: "lb", offset: cc.p(10, 12) });
    // source line 254, bytecode pc 831
    this.m_tableView.reloadData();
    // source line 256, bytecode pc 844
    this.setTableViewPosition();
    // source line 259, bytecode pc 846
    return true;
},
    setTableViewPosition: function() {
    var length, uidPosition, i, y;
    // source line 262, bytecode pc 14
    (length = this.m_playerList.length);
    // source line 264, bytecode pc 19
    (uidPosition = 0);
    if ((this.m_idx < length)) {
        // source line 266, bytecode pc 44
        (uidPosition = this.m_idx);
    }
    if ((this.m_idx == -1)) {
        // source line 269, bytecode pc 63
        (uidPosition = 0);
    }
    // source line 272, bytecode pc 68
    (i = 0);
    while ((i < this.m_playerList.length)) {
        if (((this.m_playerList[i][0].uid == this.m_userId) || (this.m_playerList[i][1].uid == this.m_userId))) {
            // source line 276, bytecode pc 140
            (uidPosition = i);
            break;
        }
        // source line 272, bytecode pc 160
        i++;
    }
    // source line 281, bytecode pc 199
    (y = (((length - uidPosition) * 118) - 530));
    // source line 282, bytecode pc 241
    this.m_tableView.setContentOffset(cc.p(0, -y));
},
    onEnter: function() {
    // source line 286, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 289, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 292, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 293, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 294, bytecode pc 57
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 295, bytecode pc 82
    this.m_tableView.setTouchPriority(this.m_baseTouchPriority);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 298, bytecode pc 23
    return cc.size(910, 118);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 301, bytecode pc 21
    (cell = table.cellAtIndex(idx));
    if (!cell) {
        // source line 306, bytecode pc 100
        (cell = xs.Views.OneRoundPlayerListCell.create({ round: this.m_round, idx: this.m_idx, local: this.m_local }));
    }
    // source line 309, bytecode pc 130
    cell.update(this.m_playerList[idx], idx);
    // source line 311, bytecode pc 134
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_playerList) {
        // source line 316, bytecode pc 22
        return this.m_playerList.length;
    }
    // source line 318, bytecode pc 24
    return 0;
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
}
}));
// source line 331, bytecode pc 787
(xs.Views.OneRoundPlayerListDialog.create = function(param) {
    var ret;
    // source line 332, bytecode pc 23
    (ret = new xs.Views.OneRoundPlayerListDialog());
    if ((ret && ret.init(param))) {
        // source line 334, bytecode pc 59
        return ret;
    }
    // source line 336, bytecode pc 61
    return null;
});
// source line 341, bytecode pc 862
xs.Views.Mgr.registerDialog("OneRoundPlayerListDialog", { "class": xs.Views.OneRoundPlayerListDialog, styleType: xs.Constant_DlgStyleType_Large });
