// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/DecisiveBattle/OutPlayersDialog.js:1
// source line 97, bytecode pc 261
(xs.Views.OutPlayersDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.OutPlayersDialog",
    ccbCfg: [
        { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
    ],
    init: function(param) {
    var strArray, roundStr;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 27
    (this.ccbNode = null);
    // source line 19, bytecode pc 35
    (this.btnClose = null);
    // source line 20, bytecode pc 43
    (this.lblTitle = null);
    // source line 21, bytecode pc 51
    (this.m_tableView = null);
    // source line 22, bytecode pc 66
    (this.m_data = param.data);
    // source line 24, bytecode pc 81
    (this.m_local = param.local);
    // source line 28, bytecode pc 132
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePointsDialog, this));
    // source line 29, bytecode pc 175
    this.ccbNode.setContentSize(cc.size(935, 610));
    // source line 30, bytecode pc 222
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 31, bytecode pc 275
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 32, bytecode pc 318
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 35, bytecode pc 327
    (strArray = []);
    // source line 36, bytecode pc 357
    (strArray[0] = (this.m_data[0].round || ""));
    // source line 38, bytecode pc 397
    (roundStr = xs.Tools.String.createStringWithArgsArray("DecisiveBattle_round", strArray));
    // source line 40, bytecode pc 461
    this.lblTitle.setString(((roundStr + " ") + xs.Tools.String.createString(param.title)));
    // source line 46, bytecode pc 498
    this.btnClose.setOnClickCallBack(function() {
    // source line 45, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 50, bytecode pc 553
    (this.m_tableView = cc.TableView.create(this, cc.size(889, 530)));
    // source line 51, bytecode pc 582
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 52, bytecode pc 623
    this.m_tableView.setPosition(cc.p(24, 12));
    // source line 53, bytecode pc 643
    this.m_tableView.setDelegate(this);
    // source line 54, bytecode pc 672
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 55, bytecode pc 697
    this.ccbNode.addChild(this.m_tableView);
    // source line 56, bytecode pc 715
    this.m_tableView.reloadData();
    // source line 58, bytecode pc 717
    return true;
},
    onEnter: function() {
    // source line 62, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 66, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 70, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 71, bytecode pc 36
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 72, bytecode pc 63
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 83, bytecode pc 23
    return cc.size(889, 118);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 86, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 88, bytecode pc 63
        (cell = xs.Views.OutPlayersCell.create(this.m_local));
    }
    // source line 92, bytecode pc 93
    cell.updateInfo(this.m_data[idx], idx);
    // source line 94, bytecode pc 97
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_data) {
        // source line 99, bytecode pc 22
        return this.m_data.length;
    }
    // source line 102, bytecode pc 24
    return 0;
}
}));
// source line 106, bytecode pc 287
(xs.Views.OutPlayersDialog.create = function(param) {
    var ret;
    // source line 107, bytecode pc 23
    (ret = new xs.Views.OutPlayersDialog());
    if ((ret && ret.init(param))) {
        // source line 109, bytecode pc 59
        return ret;
    }
    // source line 111, bytecode pc 61
    return null;
});
// source line 116, bytecode pc 362
xs.Views.Mgr.registerDialog("OutPlayersDialog", { "class": xs.Views.OutPlayersDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 196, bytecode pc 721
(xs.Views.OutPlayersCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 2, type: "ls", name: "m_PlayerName", id: "LS_wujiangInf1" },
        { tag: 10, type: "ls", name: "m_PlayerServer", id: "LS_wujiangInf1" },
        { tag: 4, type: "ls", name: "m_PlayerLevel", id: "LS_Lv" },
        { tag: 5, type: "ls", name: "m_match", id: "LS_yuanfenInf2" },
        { tag: 6, type: "btn", name: "m_TeamBtn", id: "Btn_btn3" }
    ],
    draw: function(ctx) {
    // source line 129, bytecode pc 16
    this._super(ctx);
},
    init: function(data) {
    // source line 133, bytecode pc 7
    (this.m_data = null);
    // source line 134, bytecode pc 15
    (this.m_PlayerName = null);
    // source line 135, bytecode pc 23
    (this.m_PlayerServer = null);
    // source line 136, bytecode pc 31
    (this.m_PlayerLevel = null);
    // source line 137, bytecode pc 39
    (this.m_match = null);
    // source line 139, bytecode pc 47
    (this.m_TeamBtn = null);
    // source line 141, bytecode pc 57
    (this.m_local = data);
    // source line 144, bytecode pc 93
    (this.ccbNode = xs.ccb_reader.load("ccb3/outPlayersCell.ccbi", this));
    // source line 145, bytecode pc 132
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 146, bytecode pc 168
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 147, bytecode pc 211
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 150, bytecode pc 262
    this.m_TeamBtn.setString(xs.Tools.String.createString("str_ActivityZhenRongDesc"));
    // source line 151, bytecode pc 282
    this.m_TeamBtn.setSwallowTouch(false);
    // source line 152, bytecode pc 302
    this.m_TeamBtn.setZoomOnTouchDown(true);
    // source line 153, bytecode pc 340
    this.m_TeamBtn.setOnClickCallBack(this.TeamBtnClick.bind(this));
    // source line 155, bytecode pc 342
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 159, bytecode pc 12
    this._super();
    // source line 160, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 163, bytecode pc 63
            (this.m_parentView = parent);
            // source line 164, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 165, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 168, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 173, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 176, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 177, bytecode pc 36
    this.m_TeamBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    updateInfo: function(data, idx) {
    var strArray;
    // source line 182, bytecode pc 9
    (this.m_data = data);
    // source line 183, bytecode pc 47
    this.m_PlayerName.setString((data.nick || ""));
    // source line 184, bytecode pc 91
    this.m_PlayerServer.setString((("S" + data.server_id) || ""));
    // source line 185, bytecode pc 129
    this.m_PlayerLevel.setString((data.level || ""));
    // source line 188, bytecode pc 138
    (strArray = []);
    // source line 189, bytecode pc 174
    (strArray[0] = (data.session.toString() || ""));
    // source line 191, bytecode pc 229
    this.m_match.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_session", strArray));
},
    TeamBtnClick: function() {
    // source line 199, bytecode pc 67
    xs.Tools.Net.getInstance().displayDecisiveOtherTeamInfo({ player_id: this.m_data.uid }, this.m_local);
}
}));
// source line 203, bytecode pc 747
(xs.Views.OutPlayersCell.create = function(data) {
    var ret;
    // source line 204, bytecode pc 23
    (ret = new xs.Views.OutPlayersCell());
    if ((ret && ret.init(data))) {
        // source line 206, bytecode pc 59
        return ret;
    }
    // source line 208, bytecode pc 61
    return null;
});
