// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/PointsRankDialog.js:1
// source line 100, bytecode pc 471
(xs.Views.PointsRankTableViewCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_RankNum", id: "LS_TTPHnomb" },
        { tag: 2, type: "ls", name: "m_PlayerName", id: "LS_wujiangName1" },
        { tag: 10, type: "ls", name: "m_PlayerServer", id: "LS_wujiangName1" },
        { tag: 4, type: "ls", name: "m_PlayerLevel", id: "LS_Lv" },
        { tag: 5, type: "ls", name: "m_PlayerPoints", id: "LS_Lv" },
        { tag: 6, type: "btn", name: "m_TeamBtn", id: "Btn_btn3" },
        { tag: 30, type: "ls", name: "m_points", id: "LS_mainUI3", stringId: "Points" }
    ],
    draw: function(ctx) {
    // source line 18, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 21, bytecode pc 12
    this._super();
    // source line 22, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(data) {
    if (!this._super()) {
        // source line 26, bytecode pc 19
        return false;
    }
    // source line 29, bytecode pc 27
    (this.m_RankNum = null);
    // source line 30, bytecode pc 35
    (this.m_PlayerName = null);
    // source line 31, bytecode pc 43
    (this.m_PlayerServer = null);
    // source line 32, bytecode pc 51
    (this.m_PlayerService = null);
    // source line 33, bytecode pc 59
    (this.m_PlayerLevel = null);
    // source line 34, bytecode pc 67
    (this.m_PlayerPoints = null);
    // source line 35, bytecode pc 75
    (this.m_TeamBtn = null);
    // source line 36, bytecode pc 83
    (this.m_data = null);
    // source line 38, bytecode pc 93
    (this.m_local = data);
    // source line 42, bytecode pc 144
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePointsCell, this));
    // source line 43, bytecode pc 183
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 44, bytecode pc 219
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 45, bytecode pc 262
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 47, bytecode pc 313
    this.m_TeamBtn.setString(xs.Tools.String.createString("str_ActivityZhenRongDesc"));
    // source line 48, bytecode pc 333
    this.m_TeamBtn.setSwallowTouch(false);
    // source line 49, bytecode pc 353
    this.m_TeamBtn.setZoomOnTouchDown(true);
    // source line 50, bytecode pc 391
    this.m_TeamBtn.setOnClickCallBack(this.TeamBtnClick.bind(this));
    // source line 53, bytecode pc 429
    (this.m_rank_icon = xs.Utils.getChildByTag(this.ccbNode, 20));
    // source line 55, bytecode pc 431
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 58, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 59, bytecode pc 36
    this.m_TeamBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 62, bytecode pc 12
    this._super();
    // source line 63, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 66, bytecode pc 63
            (this.m_parentView = parent);
            // source line 67, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 68, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 71, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 75, bytecode pc 12
    this._super();
},
    update: function(data, idx) {
    // source line 79, bytecode pc 9
    (this.m_data = data);
    // source line 81, bytecode pc 33
    this.m_RankNum.setString((idx + 1));
    // source line 87, bytecode pc 60
    this.m_PlayerServer.setString(data.server);
    // source line 88, bytecode pc 87
    this.m_PlayerName.setString(data.nick);
    // source line 89, bytecode pc 114
    this.m_PlayerLevel.setString(data.level);
    // source line 90, bytecode pc 141
    this.m_PlayerPoints.setString(data.score);
    if ((idx > 2)) {
        // source line 93, bytecode pc 172
        this.m_rank_icon.setVisible(false);
    } else {
        // source line 95, bytecode pc 197
        this.m_rank_icon.setVisible(true);
    }
},
    TeamBtnClick: function() {
    if (this.m_local) {
        // source line 104, bytecode pc 134
        xs.Tools.Net.getInstance().displayLocalInterOtherTeamInfo({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.m_data.uid
});
    } else {
        // source line 111, bytecode pc 263
        xs.Tools.Net.getInstance().displayInterOtherTeamInfo({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.m_data.uid
});
    }
}
}));
// source line 117, bytecode pc 497
(xs.Views.PointsRankTableViewCell.create = function(data) {
    var cell;
    // source line 118, bytecode pc 23
    (cell = new xs.Views.PointsRankTableViewCell());
    if ((cell && cell.init(data))) {
        // source line 120, bytecode pc 59
        return cell;
    }
    // source line 122, bytecode pc 61
    return null;
});
// source line 217, bytecode pc 723
(xs.Views.PointsRankDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.PointRankDialog",
    ctor: function() {
    // source line 130, bytecode pc 12
    this._super();
    // source line 131, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [ { tag: 2, type: "btn", name: "m_btnClose", id: "Btn_Close" } ],
    init: function(param) {
    if (!this._super()) {
        // source line 138, bytecode pc 19
        return false;
    }
    // source line 141, bytecode pc 27
    (this.ccbNode = null);
    // source line 142, bytecode pc 35
    (this.m_tableView = null);
    // source line 143, bytecode pc 43
    (this.rank_list = null);
    // source line 146, bytecode pc 58
    (this.rank_list = param.data);
    // source line 147, bytecode pc 73
    (this.m_local = param.local);
    // source line 152, bytecode pc 124
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePointsDialog, this));
    // source line 153, bytecode pc 167
    this.ccbNode.setContentSize(cc.size(935, 610));
    // source line 154, bytecode pc 214
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 155, bytecode pc 267
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 156, bytecode pc 310
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 162, bytecode pc 347
    this.m_btnClose.setOnClickCallBack(function() {
    // source line 161, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 166, bytecode pc 402
    (this.m_tableView = cc.TableView.create(this, cc.size(889, 530)));
    // source line 167, bytecode pc 431
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 168, bytecode pc 472
    this.m_tableView.setPosition(cc.p(24, 12));
    // source line 169, bytecode pc 492
    this.m_tableView.setDelegate(this);
    // source line 170, bytecode pc 521
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 171, bytecode pc 546
    this.ccbNode.addChild(this.m_tableView);
    // source line 172, bytecode pc 564
    this.m_tableView.reloadData();
    // source line 174, bytecode pc 566
    return true;
},
    onEnter: function() {
    // source line 179, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 183, bytecode pc 12
    this._super();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 195, bytecode pc 23
    return cc.size(889, 118);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 200, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 202, bytecode pc 63
        (cell = xs.Views.PointsRankTableViewCell.create(this.m_local));
    }
    // source line 205, bytecode pc 93
    cell.update(this.rank_list[idx], idx);
    // source line 207, bytecode pc 97
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.rank_list) {
        // source line 212, bytecode pc 22
        return this.rank_list.length;
    }
    // source line 214, bytecode pc 24
    return 0;
},
    setBaseTouchPriority: function(priority) {
    // source line 218, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 219, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 220, bytecode pc 56
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 221, bytecode pc 83
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 226, bytecode pc 749
(xs.Views.PointsRankDialog.create = function(param) {
    var layer;
    // source line 227, bytecode pc 23
    (layer = new xs.Views.PointsRankDialog());
    if ((layer && layer.init(param))) {
        // source line 229, bytecode pc 59
        return layer;
    }
    // source line 231, bytecode pc 61
    return null;
});
// source line 235, bytecode pc 824
xs.Views.Mgr.registerDialog("PointsRankDialog", { "class": xs.Views.PointsRankDialog, styleType: xs.Constant_DlgStyleType_Large });
