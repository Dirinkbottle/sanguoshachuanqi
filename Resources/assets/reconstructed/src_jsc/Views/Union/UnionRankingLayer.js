// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionRankingLayer.js:1
// source line 159, bytecode pc 535
(xs.Views.Union.UnionRankingCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_nameLab", tag: 2, type: "ls", id: "LS_yuanfenInf2", offset: cc.p(-5, 0) },
        { name: "m_unionRank", tag: 1, type: "ls", id: "LS_TTPHnomb" },
        { name: "m_presidentName", tag: 3, type: "ls", id: "LS_wujiangInf1", offset: cc.p(20, 0) },
        { name: "m_unionLevel", tag: 4, type: "ls", id: "LS_Lv", offset: cc.p(40, -2) },
        { name: "m_unionMemberNum", tag: 5, type: "ls", id: "LS_wujiangName1", offset: cc.p(55, -4) },
        { tag: 6, name: "m_unionLevelName" }
    ],
    draw: function(ctx) {
    // source line 13, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    var pos;
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 25, bytecode pc 35
    (this.m_listener = null);
    // source line 27, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 28, bytecode pc 51
    (this.m_nameLab = null);
    // source line 29, bytecode pc 59
    (this.m_presidentName = null);
    // source line 30, bytecode pc 67
    (this.m_unionLevel = null);
    // source line 31, bytecode pc 75
    (this.m_unionRank = null);
    // source line 32, bytecode pc 83
    (this.m_centerBtn = null);
    // source line 33, bytecode pc 91
    (this.m_unionMemberNum = null);
    // source line 34, bytecode pc 99
    (this.m_parentView = null);
    // source line 35, bytecode pc 107
    (this.m_kuaFu_First = null);
    // source line 36, bytecode pc 115
    (this.m_benFu_First = null);
    // source line 37, bytecode pc 123
    (this.m_unionLevelName = null);
    // source line 39, bytecode pc 174
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionRankingCell, this));
    // source line 40, bytecode pc 210
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 42, bytecode pc 253
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 44, bytecode pc 274
    (pos = this.m_unionLevelName.getPosition());
    // source line 45, bytecode pc 332
    this.m_unionLevelName.setPosition(cc.p((pos.x + 58), (pos.y + 0)));
    // source line 47, bytecode pc 355
    xs.log_hsq("m_kuaFu_First!!");
    // source line 49, bytecode pc 400
    (this.m_kuaFu_First = xs.Factorys.Sprite.create("GuildDialog_kuaFuFirst", "GuildDialog"));
    // source line 50, bytecode pc 424
    this.m_kuaFu_First.setScale(0.6);
    // source line 51, bytecode pc 444
    this.m_kuaFu_First.setVisible(false);
    // source line 52, bytecode pc 486
    this.m_kuaFu_First.setPosition(cc.p(830, 50));
    // source line 53, bytecode pc 506
    this.addChild(this.m_kuaFu_First);
    // source line 55, bytecode pc 551
    (this.m_benFu_First = xs.Factorys.Sprite.create("GuildDialog_benFuFirst", "GuildDialog"));
    // source line 56, bytecode pc 575
    this.m_benFu_First.setScale(0.6);
    // source line 57, bytecode pc 595
    this.m_benFu_First.setVisible(false);
    // source line 58, bytecode pc 637
    this.m_benFu_First.setPosition(cc.p(830, 50));
    // source line 59, bytecode pc 657
    this.addChild(this.m_benFu_First);
    // source line 62, bytecode pc 686
    this.m_nameLab.setAnchorPoint(xs.ap_lc);
    // source line 64, bytecode pc 715
    this.m_presidentName.setAnchorPoint(xs.ap_lc);
    // source line 65, bytecode pc 744
    this.m_unionLevel.setAnchorPoint(xs.ap_lc);
    // source line 68, bytecode pc 746
    return true;
},
    onTouchCallBackToReject: function() {
},
    onTouchCallBackToAgree: function() {
},
    setBaseTouchPriority: function(priority) {
    // source line 83, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    setListener: function(listener) {
    // source line 88, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 92, bytecode pc 12
    this._super();
    // source line 94, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 97, bytecode pc 63
            (this.m_parentView = parent);
            // source line 98, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 100, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 103, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 107, bytecode pc 12
    this._super();
},
    update: function(par, num) {
    var mName, m_president, isWarRank;
    // source line 111, bytecode pc 9
    (this.par = par);
    // source line 112, bytecode pc 19
    (this.num = num);
    // source line 117, bytecode pc 69
    this.m_nameLab.setString((this.par.m_unionList[num].union_name || ""));
    // source line 119, bytecode pc 113
    this.setRankTitle((this.par.m_unionList[num].rank || 99), 1);
    // source line 121, bytecode pc 148
    (mName = (this.par.m_unionList[num].leader_nickname || ""));
    // source line 122, bytecode pc 201
    (m_president = ((mName.length > 8) ? (mName.substring(0, 7) + "...") : mName));
    if (m_president) {
        // source line 124, bytecode pc 264
        this.m_presidentName.setString((xs.Tools.String.createString("auto_name_545") + m_president));
    } else {
        // source line 127, bytecode pc 293
        this.m_presidentName.setString("");
    }
    // source line 131, bytecode pc 343
    this.m_unionLevel.setString((this.par.m_unionList[num].union_level || "0"));
    // source line 134, bytecode pc 431
    this.m_unionMemberNum.setString((((this.par.m_unionList[num].user_num || "0") + "/") + (this.par.m_unionList[num].user_limit || "0")));
    // source line 137, bytecode pc 462
    (isWarRank = (this.par.m_unionList[num].war_rank || 0));
    if ((isWarRank == xs.Constant_UnionRank_kuaFu_First)) {
        // source line 141, bytecode pc 501
        this.m_kuaFu_First.setVisible(true);
    } else {
        if ((isWarRank == xs.Constant_UnionRank_benFu_First)) {
            // source line 143, bytecode pc 545
            this.m_benFu_First.setVisible(true);
        } else {
            // source line 145, bytecode pc 570
            this.m_benFu_First.setVisible(false);
            // source line 146, bytecode pc 590
            this.m_kuaFu_First.setVisible(false);
        }
    }
},
    setRankTitle: function(rank, tag) {
    var ranking, labelPos, labelAp;
    // source line 160, bytecode pc 26
    xs.log(("ClimbLadderTableViewCell setRankTitle is " + rank));
    // source line 161, bytecode pc 55
    (ranking = xs.Utils.parseIntSafe(rank));
    // source line 162, bytecode pc 83
    (this.m_ranking = this.m_ccbNode.getChildByTag(tag));
    if ((ranking <= 3)) {
        // source line 164, bytecode pc 114
        this.m_ranking.setVisible(false);
        // source line 165, bytecode pc 135
        (labelPos = this.m_ranking.getPosition());
        // source line 166, bytecode pc 156
        (labelAp = this.m_ranking.getAnchorPoint());
        if (this.m_rankingSprite) {
            // source line 168, bytecode pc 201
            xs.Utils.Node.safeRemoveChild(this.m_rankingSprite);
        }
        // source line 170, bytecode pc 205
        switch (ranking) {
            case 1:
            // source line 172, bytecode pc 274
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 175, bytecode pc 324
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 178, bytecode pc 374
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 181, bytecode pc 408
            xs.assert(false, "ranking is error!", ranking);
            break;
        }
        // source line 184, bytecode pc 435
        this.m_rankingSprite.setPosition(labelPos);
        // source line 185, bytecode pc 457
        this.m_rankingSprite.setAnchorPoint(labelAp);
        // source line 187, bytecode pc 477
        this.m_rankingSprite.setVisible(true);
        // source line 188, bytecode pc 502
        this.m_ccbNode.addChild(this.m_rankingSprite);
    } else {
        // source line 190, bytecode pc 527
        this.m_ranking.setVisible(true);
        if (this.m_rankingSprite) {
            // source line 192, bytecode pc 558
            this.m_rankingSprite.setVisible(false);
        }
        // source line 194, bytecode pc 586
        this.m_ranking.setString((rank + ""));
    }
}
}));
// source line 202, bytecode pc 566
(xs.Views.Union.UnionRankingCell.create = function() {
    var cell;
    // source line 203, bytecode pc 28
    (cell = new xs.Views.Union.UnionRankingCell());
    if ((cell && cell.init())) {
        // source line 205, bytecode pc 60
        return cell;
    }
    // source line 208, bytecode pc 62
    return null;
});
// source line 377, bytecode pc 785
(xs.Views.Union.UnionRankingLayer = xs.Views.Union.UnionBaseLayer.extend({
    ctor: function() {
    // source line 224, bytecode pc 12
    this._super();
    // source line 225, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var winSize;
    // source line 235, bytecode pc 12
    this._super();
    // source line 236, bytecode pc 24
    (this.m_unionList = []);
    // source line 237, bytecode pc 49
    (winSize = xs.director.getVisibleSize());
    // source line 240, bytecode pc 80
    (this.m_defaultSize = cc.size(891, 420));
    // source line 242, bytecode pc 139
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 243, bytecode pc 178
    this.m_bg.setAnchorPoint(cc.p(0, 0));
    // source line 244, bytecode pc 203
    this.m_bg.setContentSize(this.m_defaultSize);
    // source line 246, bytecode pc 280
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "lb", offset: { x: -8, y: 0 } });
    // source line 250, bytecode pc 349
    (this.m_tableView = cc.TableView.create(this, cc.size(882, (this.m_defaultSize.height * 0.95))));
    // source line 251, bytecode pc 378
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 252, bytecode pc 419
    this.m_tableView.setPosition(cc.p(5, 11));
    // source line 253, bytecode pc 439
    this.m_tableView.setDelegate(this);
    // source line 257, bytecode pc 468
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 258, bytecode pc 493
    this.m_bg.addChild(this.m_tableView);
    // source line 261, bytecode pc 511
    this.m_tableView.reloadData();
    // source line 264, bytecode pc 513
    return true;
},
    _readUnionList: function() {
    // source line 270, bytecode pc 22
    xs.log("m_4:");
    // source line 300, bytecode pc 140
    xs.Tools.Net.requestUnionRankList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    var mList, i;
    // source line 279, bytecode pc 11
    (mList = data.return_info);
    // source line 283, bytecode pc 21
    (this.m_unionList = mList);
    if ((this.m_unionList.length > 20)) {
        // source line 286, bytecode pc 49
        (mList = []);
        // source line 287, bytecode pc 54
        (i = 0);
        while ((i < 20)) {
            // source line 289, bytecode pc 86
            mList.push(this.m_unionList[i]);
            // source line 287, bytecode pc 100
            (i = (+i + 1));
        }
        // source line 291, bytecode pc 123
        (this.m_unionList = mList);
    }
    // source line 297, bytecode pc 141
    this.m_tableView.reloadData();
}.bind(this), this);
},
    refreshFromMenuClick: function() {
    // source line 305, bytecode pc 22
    xs.log("refreshFromMenuClick in baseLayer");
    if (this.isNeedRefresh) {
        // source line 307, bytecode pc 41
        (this.isNeedRefresh = false);
        // source line 308, bytecode pc 54
        this._readUnionList();
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 316, bytecode pc 12
    this._super();
    // source line 317, bytecode pc 25
    this._readUnionList();
    // source line 318, bytecode pc 72
    xs.Utils.Notify.addObserver(this, this.setIsNeedRefresh, xs.Constant_Notify_Union_RankingUpdate);
},
    onExitTransitionDidStart: function() {
    // source line 323, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Union_RankingUpdate);
    // source line 324, bytecode pc 52
    this._super();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
    // source line 374, bytecode pc 32
    xs.Views.Mgr.showToast("scrollViewDidZoom");
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 340, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 344, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 346, bytecode pc 44
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 348, bytecode pc 88
        (cell = xs.Views.Union.UnionRankingCell.create());
    }
    // source line 351, bytecode pc 109
    cell.update(this, idx);
    // source line 354, bytecode pc 113
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 358, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 360, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 361, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 366, bytecode pc 11
    return this.m_unionList.length;
}
}));
// source line 383, bytecode pc 816
(xs.Views.Union.UnionRankingLayer.create = function() {
    var retObj;
    // source line 384, bytecode pc 28
    (retObj = new xs.Views.Union.UnionRankingLayer());
    if ((retObj && retObj.init())) {
        // source line 386, bytecode pc 60
        return retObj;
    }
    // source line 388, bytecode pc 62
    return null;
});
