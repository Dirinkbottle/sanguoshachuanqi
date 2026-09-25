// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionActiveDialog.js:1
// source line 99, bytecode pc 402
(xs.Views.Dialog.UnionActiveCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_nameLab", tag: 2, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_unionRank", tag: 1, type: "ls", id: "LS_TTPHnomb" },
        { name: "m_presidentName", tag: 3, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_unionActiveValue", tag: 4, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_unionActvieValueTitle", tag: 5, type: "ls", id: "LS_jinengInf1" }
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
    (this.m_baseTouchPriority = 0);
    // source line 26, bytecode pc 35
    (this.m_listener = null);
    // source line 27, bytecode pc 43
    (this.m_unionActiveValue = null);
    // source line 28, bytecode pc 51
    (this.m_ccbNode = null);
    // source line 29, bytecode pc 59
    (this.m_nameLab = null);
    // source line 30, bytecode pc 67
    (this.m_unionActvieValueTitle = null);
    // source line 31, bytecode pc 75
    (this.par = 0);
    // source line 32, bytecode pc 83
    (this.num = 0);
    // source line 33, bytecode pc 134
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionActiveCell, this));
    // source line 34, bytecode pc 170
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 35, bytecode pc 213
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 36, bytecode pc 242
    this.m_nameLab.setAnchorPoint(xs.ap_lc);
    // source line 37, bytecode pc 271
    this.m_presidentName.setAnchorPoint(xs.ap_lc);
    // source line 38, bytecode pc 300
    this.m_nameLab.setAnchorPoint(xs.ap_lc);
    // source line 39, bytecode pc 329
    this.m_unionActvieValueTitle.setAnchorPoint(xs.ap_rc);
    // source line 40, bytecode pc 380
    this.m_unionActvieValueTitle.setString(xs.Tools.String.createString("Union_HuoYue_paihangStr"));
    // source line 41, bytecode pc 409
    this.m_unionActiveValue.setAnchorPoint(xs.ap_lc);
    // source line 43, bytecode pc 411
    return true;
},
    onTouchCallBackToReject: function() {
},
    onTouchCallBackToAgree: function() {
},
    setBaseTouchPriority: function(priority) {
    // source line 58, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    setListener: function(listener) {
    // source line 63, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 67, bytecode pc 12
    this._super();
    // source line 68, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 71, bytecode pc 63
            (this.m_parentView = parent);
            // source line 72, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 73, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 76, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 80, bytecode pc 12
    this._super();
},
    update: function(par, idx) {
    var mName, m_president;
    // source line 84, bytecode pc 22
    xs.log("update start");
    // source line 85, bytecode pc 60
    this.m_nameLab.setString((par.union_name || ""));
    // source line 86, bytecode pc 89
    this.setRankTitle(((idx + 1) || 99), 1);
    // source line 87, bytecode pc 112
    (mName = (par.leader_nickname || ""));
    // source line 88, bytecode pc 150
    this.m_unionActiveValue.setString((par.active || ""));
    // source line 89, bytecode pc 203
    (m_president = ((mName.length > 8) ? (mName.substring(0, 7) + "...") : mName));
    if (m_president) {
        // source line 91, bytecode pc 266
        this.m_presidentName.setString((xs.Tools.String.createString("auto_name_545") + m_president));
    } else {
        // source line 94, bytecode pc 328
        this.m_presidentName.setString((xs.Tools.String.createString("auto_name_545") + ""));
    }
},
    setRankTitle: function(rank, tag) {
    var ranking, labelPos, labelAp;
    // source line 100, bytecode pc 26
    xs.log(("ClimbLadderTableViewCell setRankTitle is " + rank));
    // source line 101, bytecode pc 55
    (ranking = xs.Utils.parseIntSafe(rank));
    // source line 102, bytecode pc 83
    (this.m_ranking = this.m_ccbNode.getChildByTag(tag));
    if ((ranking <= 3)) {
        // source line 104, bytecode pc 114
        this.m_ranking.setVisible(false);
        // source line 105, bytecode pc 135
        (labelPos = this.m_ranking.getPosition());
        // source line 106, bytecode pc 156
        (labelAp = this.m_ranking.getAnchorPoint());
        if (this.m_rankingSprite) {
            // source line 108, bytecode pc 201
            xs.Utils.Node.safeRemoveChild(this.m_rankingSprite);
        }
        // source line 110, bytecode pc 205
        switch (ranking) {
            case 1:
            // source line 112, bytecode pc 274
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 115, bytecode pc 324
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 118, bytecode pc 374
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 121, bytecode pc 408
            xs.assert(false, "ranking is error!", ranking);
            break;
        }
        // source line 124, bytecode pc 435
        this.m_rankingSprite.setPosition(labelPos);
        // source line 125, bytecode pc 457
        this.m_rankingSprite.setAnchorPoint(labelAp);
        // source line 127, bytecode pc 477
        this.m_rankingSprite.setVisible(true);
        // source line 128, bytecode pc 502
        this.m_ccbNode.addChild(this.m_rankingSprite);
    } else {
        // source line 130, bytecode pc 527
        this.m_ranking.setVisible(true);
        if (this.m_rankingSprite) {
            // source line 132, bytecode pc 558
            this.m_rankingSprite.setVisible(false);
        }
        // source line 134, bytecode pc 586
        this.m_ranking.setString((rank + ""));
    }
}
}));
// source line 142, bytecode pc 433
(xs.Views.Dialog.UnionActiveCell.create = function() {
    var cell;
    // source line 145, bytecode pc 28
    (cell = new xs.Views.Dialog.UnionActiveCell());
    if ((cell && cell.init())) {
        // source line 147, bytecode pc 60
        return cell;
    }
    // source line 149, bytecode pc 62
    return null;
});
// source line 284, bytecode pc 647
(xs.Views.Dialog.UnionActiveDialogLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 158, bytecode pc 12
    this._super();
    // source line 159, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var winSize;
    // source line 164, bytecode pc 12
    this._super();
    // source line 165, bytecode pc 24
    (this.m_unionActvieList = []);
    // source line 166, bytecode pc 49
    (winSize = xs.director.getVisibleSize());
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
    // source line 186, bytecode pc 275
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb" });
    // source line 187, bytecode pc 293
    this.m_tableView.reloadData();
    // source line 190, bytecode pc 295
    return true;
},
    _readUnionList: function() {
    // source line 195, bytecode pc 22
    xs.log("m_4:");
    // source line 210, bytecode pc 146
    xs.Tools.Net.requestGetUnionActvieList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 202, bytecode pc 14
    (this.m_unionActvieList = data.list);
    // source line 203, bytecode pc 41
    xs.dump("dump", data);
    // source line 204, bytecode pc 59
    this.m_tableView.reloadData();
}.bind(this), function(data) {
}, this);
    // source line 211, bytecode pc 164
    this.m_tableView.reloadData();
},
    refreshFromMenuClick: function() {
    // source line 215, bytecode pc 22
    xs.log("refreshFromMenuClick in baseLayer");
    if (this.isNeedRefresh) {
        // source line 217, bytecode pc 41
        (this.isNeedRefresh = false);
        // source line 218, bytecode pc 54
        this._readUnionList();
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 226, bytecode pc 12
    this._super();
    // source line 227, bytecode pc 25
    this._readUnionList();
},
    onExitTransitionDidStart: function() {
    // source line 233, bytecode pc 12
    this._super();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
    // source line 281, bytecode pc 32
    xs.Views.Mgr.showToast("scrollViewDidZoom");
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 248, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 252, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 254, bytecode pc 44
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 256, bytecode pc 88
        (cell = xs.Views.Dialog.UnionActiveCell.create());
    }
    // source line 258, bytecode pc 118
    cell.update(this.m_unionActvieList[idx], idx);
    // source line 261, bytecode pc 122
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 265, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 266, bytecode pc 36
    xs.log(("this.priority == " + priority));
    // source line 267, bytecode pc 56
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 268, bytecode pc 83
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 273, bytecode pc 11
    return this.m_unionActvieList.length;
}
}));
// source line 290, bytecode pc 678
(xs.Views.Dialog.UnionActiveDialogLayer.create = function() {
    var retObj;
    // source line 291, bytecode pc 28
    (retObj = new xs.Views.Dialog.UnionActiveDialogLayer());
    if ((retObj && retObj.init())) {
        // source line 293, bytecode pc 60
        return retObj;
    }
    // source line 295, bytecode pc 62
    return null;
});
// source line 343, bytecode pc 884
(xs.Views.Dialog.UnionActiveDialog = xs.Views.HungerLayer.extend({
    cfg: {
        btnClose: { priority: -2 },
        ccbCfg: [
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
        ]
    },
    init: function(param) {
    // source line 314, bytecode pc 12
    this._super();
    // source line 315, bytecode pc 20
    (this.btnClose = null);
    // source line 316, bytecode pc 28
    (this.lblTitle = null);
    // source line 317, bytecode pc 59
    (this.m_defaultSize = cc.size(891, 420));
    // source line 318, bytecode pc 67
    (this.m_layer = null);
    // source line 321, bytecode pc 103
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionActiveDialog.ccbi", this));
    // source line 322, bytecode pc 146
    this.ccbNode.setContentSize(cc.size(935, 613));
    // source line 323, bytecode pc 193
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 324, bytecode pc 246
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 325, bytecode pc 294
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 329, bytecode pc 318
    this.btnClose.setOnClickCallBack(function() {
    // source line 330, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 333, bytecode pc 369
    this.lblTitle.setString(xs.Tools.String.createString("lblStr_activeDialogTitle"));
    // source line 336, bytecode pc 407
    (this.m_layer = xs.Views.Dialog.UnionActiveDialogLayer.create());
    // source line 337, bytecode pc 498
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_layer, { offset: cc.p(26, 23), desc: "lb", sc: true });
    // source line 338, bytecode pc 500
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 344, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 345, bytecode pc 36
    xs.log(("this.priority1 == " + priority));
    // source line 346, bytecode pc 78
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 347, bytecode pc 105
    this.m_layer.setBaseTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 352, bytecode pc 915
(xs.Views.Dialog.UnionActiveDialog.create = function(param) {
    var ret;
    // source line 353, bytecode pc 28
    (ret = new xs.Views.Dialog.UnionActiveDialog());
    if ((ret && ret.init(param))) {
        // source line 355, bytecode pc 64
        return ret;
    }
    // source line 357, bytecode pc 66
    return null;
});
// source line 362, bytecode pc 995
xs.Views.Mgr.registerDialog("UnionActiveDialog", { "class": xs.Views.Dialog.UnionActiveDialog, styleType: xs.Constant_DlgStyleType_Large });
