// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/DecisiveBattle/SupportRankingDialog.js:1
// source line 98, bytecode pc 261
(xs.Views.SupportRankingDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.SupportRankingDialog",
    ccbCfg: [
        { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
    ],
    init: function(param) {
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
    // source line 34, bytecode pc 132
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePointsDialog, this));
    // source line 35, bytecode pc 175
    this.ccbNode.setContentSize(cc.size(935, 610));
    // source line 36, bytecode pc 222
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 37, bytecode pc 275
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 38, bytecode pc 318
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 41, bytecode pc 369
    this.lblTitle.setString(xs.Tools.String.createString("DecisiveBattle_ranking"));
    // source line 47, bytecode pc 406
    this.btnClose.setOnClickCallBack(function() {
    // source line 46, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 51, bytecode pc 461
    (this.m_tableView = cc.TableView.create(this, cc.size(889, 530)));
    // source line 52, bytecode pc 490
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 53, bytecode pc 531
    this.m_tableView.setPosition(cc.p(24, 12));
    // source line 54, bytecode pc 551
    this.m_tableView.setDelegate(this);
    // source line 55, bytecode pc 580
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 56, bytecode pc 605
    this.ccbNode.addChild(this.m_tableView);
    // source line 57, bytecode pc 623
    this.m_tableView.reloadData();
    // source line 59, bytecode pc 625
    return true;
},
    onEnter: function() {
    // source line 63, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 67, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 71, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 72, bytecode pc 36
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 73, bytecode pc 63
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 84, bytecode pc 23
    return cc.size(889, 118);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 87, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 89, bytecode pc 63
        (cell = xs.Views.SupportRankingTableCell.create(this.m_local));
    }
    // source line 93, bytecode pc 93
    cell.updateInfo(this.m_data[idx], idx);
    // source line 95, bytecode pc 97
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_data) {
        // source line 100, bytecode pc 22
        return this.m_data.length;
    }
    // source line 103, bytecode pc 24
    return 0;
}
}));
// source line 107, bytecode pc 287
(xs.Views.SupportRankingDialog.create = function(param) {
    var ret;
    // source line 108, bytecode pc 23
    (ret = new xs.Views.SupportRankingDialog());
    if ((ret && ret.init(param))) {
        // source line 110, bytecode pc 59
        return ret;
    }
    // source line 112, bytecode pc 61
    return null;
});
// source line 117, bytecode pc 362
xs.Views.Mgr.registerDialog("SupportRankingDialog", { "class": xs.Views.SupportRankingDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 231, bytecode pc 824
(xs.Views.SupportRankingTableCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_RankNum", id: "LS_TTPHnomb" },
        { tag: 2, type: "ls", name: "m_PlayerName", id: "LS_wujiangName1" },
        { tag: 10, type: "ls", name: "m_PlayerServer", id: "LS_wujiangName1" },
        { tag: 4, type: "ls", name: "m_PlayerLevel", id: "LS_Lv" },
        { tag: 5, type: "ls", name: "m_PlayerPoints", id: "LS_Lv" },
        { tag: 30, type: "ls", name: "m_points", id: "LS_mainUI3", stringId: "Points" },
        { tag: 6, type: "btn", name: "m_TeamBtn", id: "Btn_btn3" }
    ],
    draw: function(ctx) {
    // source line 132, bytecode pc 16
    this._super(ctx);
},
    init: function(data) {
    // source line 136, bytecode pc 7
    (this.m_data = null);
    // source line 137, bytecode pc 15
    (this.m_PlayerName = null);
    // source line 138, bytecode pc 23
    (this.m_PlayerServer = null);
    // source line 139, bytecode pc 31
    (this.m_PlayerLevel = null);
    // source line 140, bytecode pc 39
    (this.m_PlayerPoints = null);
    // source line 142, bytecode pc 47
    (this.m_RankNumBg = null);
    // source line 143, bytecode pc 55
    (this.m_TeamBtn = null);
    // source line 144, bytecode pc 65
    (this.m_local = data);
    // source line 147, bytecode pc 116
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePointsCell, this));
    // source line 148, bytecode pc 155
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 149, bytecode pc 191
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 150, bytecode pc 234
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 152, bytecode pc 272
    (this.m_RankNumBg = xs.Utils.getChildByTag(this.ccbNode, 20));
    // source line 154, bytecode pc 323
    this.m_TeamBtn.setString(xs.Tools.String.createString("str_ActivityZhenRongDesc"));
    // source line 155, bytecode pc 343
    this.m_TeamBtn.setSwallowTouch(false);
    // source line 156, bytecode pc 363
    this.m_TeamBtn.setZoomOnTouchDown(true);
    // source line 157, bytecode pc 401
    this.m_TeamBtn.setOnClickCallBack(this.TeamBtnClick.bind(this));
    // source line 159, bytecode pc 403
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 163, bytecode pc 12
    this._super();
    // source line 164, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 167, bytecode pc 63
            (this.m_parentView = parent);
            // source line 168, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 169, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 172, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 177, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 180, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 181, bytecode pc 36
    this.m_TeamBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    updateInfo: function(data, idx) {
    var rank;
    // source line 186, bytecode pc 9
    (this.m_data = data);
    // source line 187, bytecode pc 47
    this.m_PlayerName.setString((data.nick || ""));
    // source line 188, bytecode pc 91
    this.m_PlayerServer.setString((("S" + data.server_id) || ""));
    // source line 189, bytecode pc 129
    this.m_PlayerLevel.setString((data.level || ""));
    // source line 190, bytecode pc 156
    this.m_PlayerPoints.setString(data.point);
    // source line 192, bytecode pc 165
    (rank = (idx + 1));
    if ((rank <= 3)) {
        // source line 194, bytecode pc 196
        this.m_RankNum.setVisible(false);
        // source line 195, bytecode pc 216
        this.m_RankNumBg.setVisible(true);
        if (this.m_rankingSprite) {
            // source line 198, bytecode pc 261
            xs.Utils.Node.safeRemoveChild(this.m_rankingSprite);
        }
        // source line 200, bytecode pc 265
        switch (rank) {
            case 1:
            // source line 202, bytecode pc 334
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 205, bytecode pc 384
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 208, bytecode pc 434
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 211, bytecode pc 468
            xs.assert(false, "ranking is error!", rank);
            break;
        }
        // source line 214, bytecode pc 509
        this.m_rankingSprite.setPosition(this.m_RankNum.getPosition());
        // source line 215, bytecode pc 529
        this.m_rankingSprite.setVisible(true);
        // source line 216, bytecode pc 549
        this.addChild(this.m_rankingSprite);
    } else {
        // source line 219, bytecode pc 574
        this.m_RankNum.setVisible(true);
        // source line 220, bytecode pc 594
        this.m_RankNumBg.setVisible(false);
        if (this.m_rankingSprite) {
            // source line 222, bytecode pc 625
            this.m_rankingSprite.setVisible(false);
        }
        // source line 225, bytecode pc 647
        this.m_RankNum.setString(rank);
    }
},
    TeamBtnClick: function() {
    // source line 234, bytecode pc 67
    xs.Tools.Net.getInstance().displayDecisiveOtherTeamInfo({ player_id: this.m_data.uid }, this.m_local);
}
}));
// source line 238, bytecode pc 850
(xs.Views.SupportRankingTableCell.create = function(data) {
    var ret;
    // source line 239, bytecode pc 23
    (ret = new xs.Views.SupportRankingTableCell());
    if ((ret && ret.init(data))) {
        // source line 241, bytecode pc 59
        return ret;
    }
    // source line 243, bytecode pc 61
    return null;
});
