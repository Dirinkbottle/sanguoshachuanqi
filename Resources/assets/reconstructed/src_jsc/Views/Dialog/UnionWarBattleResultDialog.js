// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionWarBattleResultDialog.js:1
// source line 147, bytecode pc 459
(xs.Views.Dialog.UnionWarBallteResultDialogCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_matchLevel", tag: 1, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_unionLeft", tag: 3, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_unionRight", tag: 4, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_vsIcon", tag: 2, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_battleResult", tag: 5, type: "ls", id: "LS_wujiangInf1" },
        {
            name: "m_reviewBtn",
            tag: 6,
            type: "btn",
            id: "Btn_btn4",
            stringId: "unionWar_battleResult_replay"
        }
    ],
    draw: function(ctx) {
    // source line 14, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 22, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 27
    (this.m_data = null);
    // source line 26, bytecode pc 35
    (this.m_baseTouchPriority = 0);
    // source line 27, bytecode pc 43
    (this.m_listener = null);
    // source line 29, bytecode pc 51
    (this.m_ccbNode = null);
    // source line 30, bytecode pc 59
    (this.m_matchLevel = null);
    // source line 31, bytecode pc 67
    (this.m_unionLeft = null);
    // source line 32, bytecode pc 75
    (this.m_unionRight = null);
    // source line 33, bytecode pc 83
    (this.m_vsIcon = null);
    // source line 34, bytecode pc 91
    (this.m_battleResult = null);
    // source line 35, bytecode pc 99
    (this.m_reviewBtn = null);
    // source line 37, bytecode pc 150
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionWarBattleResultDialogCell, this));
    // source line 39, bytecode pc 186
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 40, bytecode pc 229
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 42, bytecode pc 253
    this.m_vsIcon.setString("vs");
    // source line 43, bytecode pc 291
    this.m_reviewBtn.setOnClickCallBack(this.onReviewBtnClicked.bind(this));
    // source line 44, bytecode pc 311
    this.m_reviewBtn.setSwallowTouch(false);
    // source line 45, bytecode pc 331
    this.m_reviewBtn.setZoomOnTouchDown(false);
    // source line 46, bytecode pc 333
    return true;
},
    onTouchCallBackToReject: function() {
},
    onTouchCallBackToAgree: function() {
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 62, bytecode pc 12
    this._super();
    // source line 64, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 67, bytecode pc 63
            (this.m_parentView = parent);
            // source line 68, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 70, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 73, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 78, bytecode pc 12
    this._super();
},
    setListener: function(listener) {
    // source line 82, bytecode pc 9
    (this.m_listener = listener);
},
    update: function(data) {
    var _stringId, strResult, strKey;
    // source line 87, bytecode pc 9
    (this.m_data = data);
    // source line 90, bytecode pc 27
    (_stringId = ("union_ground_name_" + data.battle_rounds));
    // source line 91, bytecode pc 54
    xs.log_xjf("_stringId", _stringId);
    // source line 92, bytecode pc 103
    this.m_matchLevel.setString(xs.Tools.String.createString(_stringId));
    // source line 93, bytecode pc 137
    this.m_unionLeft.setString(data.unions[0].unionName);
    // source line 94, bytecode pc 171
    this.m_unionRight.setString(data.unions[1].unionName);
    if ((xs.Utils.parseIntSafe(data.winner) == 0)) {
        // source line 98, bytecode pc 225
        (strKey = "union_player_vs_win");
    } else {
        // source line 101, bytecode pc 239
        (strKey = "union_player_vs_lose");
    }
    // source line 106, bytecode pc 325
    (strResult = xs.Tools.String.createStringWithArgsArray(strKey, [ data.player1.getPlayerName(), data.player2.getPlayerName() ]));
    // source line 109, bytecode pc 347
    this.m_battleResult.setString(strResult);
},
    onReviewBtnClicked: function() {
    if (this.m_data) {
        // source line 115, bytecode pc 40
        xs.log_xjf("onReviewBtnClicked", this.m_data);
        // source line 141, bytecode pc 269
        xs.Tools.Net.requestFightingDetails({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    union_war_id: this.m_data.union_war_id,
    battle_rounds: this.m_data.battle_rounds,
    tag: this.m_data.tag,
    from: this.m_data.player1.getPlayerId(),
    to: this.m_data.player2.getPlayerId(),
    battle_id: this.m_data.battle_id
}, function(jsonData) {
    // source line 128, bytecode pc 26
    xs.dump("onReviewBtnClicked, data", jsonData);
    // source line 131, bytecode pc 64
    xs.Utils.Notify.postNotification(xs.Constant_Notify_UnionWar_UserPlayingDetailProcess);
    // source line 136, bytecode pc 135
    xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_UnionWar, xs.Models.FightInfo.create(jsonData), null);
}, function() {
}, this);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 148, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 149, bytecode pc 36
    this.m_reviewBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 157, bytecode pc 490
(xs.Views.Dialog.UnionWarBallteResultDialogCell.create = function() {
    var cell;
    // source line 158, bytecode pc 28
    (cell = new xs.Views.Dialog.UnionWarBallteResultDialogCell());
    if ((cell && cell.init())) {
        // source line 160, bytecode pc 60
        return cell;
    }
    // source line 162, bytecode pc 62
    return null;
});
// source line 227, bytecode pc 634
(xs.Views.Dialog.UnionWarBattleResultDialogLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 169, bytecode pc 12
    this._super();
    // source line 170, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    // source line 175, bytecode pc 12
    this._super();
    // source line 177, bytecode pc 22
    (this.m_battleResultList = param);
    // source line 178, bytecode pc 49
    xs.dump("m_battleResultList", param);
    // source line 180, bytecode pc 104
    (this.m_tableView = cc.TableView.create(this, cc.size(895, 502)));
    // source line 181, bytecode pc 133
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 182, bytecode pc 173
    this.m_tableView.setPosition(cc.p(0, 14));
    // source line 183, bytecode pc 193
    this.m_tableView.setDelegate(this);
    // source line 184, bytecode pc 222
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 185, bytecode pc 275
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb" });
    // source line 186, bytecode pc 293
    this.m_tableView.reloadData();
    // source line 190, bytecode pc 295
    return true;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 194, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 199, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 201, bytecode pc 61
        (cell = xs.Views.Dialog.UnionWarBallteResultDialogCell.create());
    }
    // source line 203, bytecode pc 87
    cell.update(this.m_battleResultList[idx]);
    // source line 205, bytecode pc 91
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 209, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 210, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 211, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 216, bytecode pc 11
    return this.m_battleResultList.length;
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
}
}));
// source line 233, bytecode pc 665
(xs.Views.Dialog.UnionWarBattleResultDialogLayer.create = function(param) {
    var retObj;
    // source line 234, bytecode pc 28
    (retObj = new xs.Views.Dialog.UnionWarBattleResultDialogLayer());
    if ((retObj && retObj.init(param))) {
        // source line 237, bytecode pc 64
        return retObj;
    }
    // source line 239, bytecode pc 66
    return null;
});
// source line 281, bytecode pc 871
(xs.Views.Dialog.UnionWarBattleResultDialog = xs.Views.HungerLayer.extend({
    cfg: {
        btnClose: { priority: -1 },
        ccbCfg: [
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
        ]
    },
    init: function(param) {
    // source line 255, bytecode pc 12
    this._super();
    // source line 256, bytecode pc 20
    (this.btnClose = null);
    // source line 257, bytecode pc 28
    (this.lblTitle = null);
    // source line 258, bytecode pc 59
    (this.m_defaultSize = cc.size(891, 420));
    // source line 261, bytecode pc 95
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionWarBattleResultDialog.ccbi", this));
    // source line 262, bytecode pc 119
    xs.dump(this.ccbNode);
    // source line 263, bytecode pc 162
    this.ccbNode.setContentSize(cc.size(935, 613));
    // source line 264, bytecode pc 209
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 265, bytecode pc 217
    (this.layer = null);
    // source line 266, bytecode pc 270
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 267, bytecode pc 318
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 271, bytecode pc 342
    this.btnClose.setOnClickCallBack(function() {
    // source line 272, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 275, bytecode pc 393
    this.lblTitle.setString(xs.Tools.String.createString("lblStr_unionWarBttlRsltDlgTtl"));
    // source line 276, bytecode pc 435
    (this.layer = xs.Views.Dialog.UnionWarBattleResultDialogLayer.create(param));
    // source line 277, bytecode pc 526
    xs.Utils.Node.attachNodes(this.ccbNode, this.layer, { offset: cc.p(26, 23), desc: "lb", sc: true });
    // source line 279, bytecode pc 528
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 282, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 283, bytecode pc 37
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 284, bytecode pc 64
    this.layer.setBaseTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 289, bytecode pc 902
(xs.Views.Dialog.UnionWarBattleResultDialog.create = function(param) {
    var ret;
    // source line 290, bytecode pc 28
    (ret = new xs.Views.Dialog.UnionWarBattleResultDialog());
    if ((ret && ret.init(param))) {
        // source line 292, bytecode pc 64
        return ret;
    }
    // source line 294, bytecode pc 66
    return null;
});
// source line 299, bytecode pc 982
xs.Views.Mgr.registerDialog("UnionWarBattleResultDialog", { "class": xs.Views.Dialog.UnionWarBattleResultDialog, styleType: xs.Constant_DlgStyleType_Large });
