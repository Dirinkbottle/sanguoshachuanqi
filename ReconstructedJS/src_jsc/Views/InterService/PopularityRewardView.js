// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/PopularityRewardView.js:1
// source line 157, bytecode pc 404
(xs.Views.PopularityRewardTableCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_RankNum", id: "LS_TTPHnomb" },
        { tag: 2, type: "ls", name: "m_PlayerName", id: "LS_wujiangInf1" },
        { tag: 3, name: "m_PlayerLevelIcon" },
        { tag: 4, type: "ls", name: "m_PlayerLevel", id: "LS_Lv" },
        { tag: 5, type: "ls", name: "m_RewardName", id: "LS_liebiaoInf" },
        { tag: 6, type: "btn", name: "m_TeamBtn", id: "Btn_btn1" }
    ],
    draw: function(ctx) {
    // source line 17, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 20, bytecode pc 12
    this._super();
    // source line 21, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(data) {
    if (!this._super()) {
        // source line 25, bytecode pc 19
        return false;
    }
    // source line 28, bytecode pc 27
    (this.m_RankNum = null);
    // source line 29, bytecode pc 35
    (this.m_PlayerName = null);
    // source line 30, bytecode pc 43
    (this.m_PlayerLevelIcon = null);
    // source line 31, bytecode pc 51
    (this.m_PlayerLevel = null);
    // source line 32, bytecode pc 59
    (this.m_RewardName = null);
    // source line 33, bytecode pc 67
    (this.m_TeamBtn = null);
    // source line 35, bytecode pc 77
    (this.m_local = data);
    // source line 64, bytecode pc 128
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePopularityReward, this));
    // source line 65, bytecode pc 167
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 66, bytecode pc 203
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 68, bytecode pc 246
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 70, bytecode pc 297
    this.m_TeamBtn.setString(xs.Tools.String.createString("str_ActivityZhenRongDesc"));
    // source line 71, bytecode pc 317
    this.m_TeamBtn.setSwallowTouch(false);
    // source line 72, bytecode pc 337
    this.m_TeamBtn.setZoomOnTouchDown(false);
    // source line 73, bytecode pc 375
    this.m_TeamBtn.setOnClickCallBack(this.TeamBtnClick.bind(this));
    // source line 76, bytecode pc 377
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 79, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 80, bytecode pc 36
    this.m_TeamBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 83, bytecode pc 12
    this._super();
    // source line 84, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 87, bytecode pc 63
            (this.m_parentView = parent);
            // source line 88, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 89, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 92, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 96, bytecode pc 12
    this._super();
},
    update: function(data, idx) {
    if (data) {
        // source line 101, bytecode pc 17
        (this.m_data = data);
    }
    // source line 106, bytecode pc 36
    this.setRankTitle((idx + 1));
    // source line 107, bytecode pc 84
    this.m_PlayerName.setString(((this.m_data.server + "\n") + this.m_data.nick));
    // source line 108, bytecode pc 114
    this.m_PlayerLevel.setString(this.m_data.level);
    // source line 111, bytecode pc 180
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.m_data.item_id));
    // source line 112, bytecode pc 216
    this.m_RewardName.setString(this.obj_item.getNameString());
    if (this.m_data.gid) {
        // source line 116, bytecode pc 270
        (this._generalView = xs.Views.Card.OtherPlayer.create());
        // source line 117, bytecode pc 306
        this._generalView.reloadData_ChartWithGeneralId(("" + this.m_data.gid));
        // source line 118, bytecode pc 361
        xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(11), this._generalView);
    }
},
    setRankTitle: function(rank) {
    var ranking, labelPos;
    // source line 123, bytecode pc 28
    (ranking = xs.Utils.parseIntSafe(rank));
    if ((ranking <= 3)) {
        // source line 125, bytecode pc 59
        this.m_RankNum.setVisible(false);
        // source line 126, bytecode pc 80
        (labelPos = this.m_RankNum.getPosition());
        if (this.m_RankNumSprite) {
            // source line 128, bytecode pc 125
            xs.Utils.Node.safeRemoveChild(this.m_RankNumSprite);
        }
        // source line 130, bytecode pc 129
        switch (ranking) {
            case 1:
            // source line 132, bytecode pc 198
            (this.m_RankNumSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 135, bytecode pc 248
            (this.m_RankNumSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 138, bytecode pc 298
            (this.m_RankNumSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 141, bytecode pc 332
            xs.assert(false, "ranking is error!", ranking);
            break;
        }
        // source line 144, bytecode pc 359
        this.m_RankNumSprite.setPosition(labelPos);
        // source line 145, bytecode pc 379
        this.m_RankNumSprite.setVisible(true);
        // source line 146, bytecode pc 404
        this.ccbNode.addChild(this.m_RankNumSprite);
    } else {
        // source line 149, bytecode pc 429
        this.m_RankNum.setVisible(true);
        if (this.m_RankNumSprite) {
            // source line 151, bytecode pc 460
            this.m_RankNumSprite.setVisible(false);
        }
        // source line 153, bytecode pc 488
        this.m_RankNum.setString((rank + ""));
    }
},
    TeamBtnClick: function() {
    if (this.m_local) {
        // source line 161, bytecode pc 134
        xs.Tools.Net.getInstance().displayLocalInterOtherTeamInfo({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.m_data.uid
});
    } else {
        // source line 168, bytecode pc 263
        xs.Tools.Net.getInstance().displayInterOtherTeamInfo({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.m_data.uid
});
    }
}
}));
// source line 174, bytecode pc 430
(xs.Views.PopularityRewardTableCell.create = function(data) {
    var cell;
    // source line 175, bytecode pc 23
    (cell = new xs.Views.PopularityRewardTableCell());
    if ((cell && cell.init(data))) {
        // source line 177, bytecode pc 59
        return cell;
    }
    // source line 179, bytecode pc 61
    return null;
});
// source line 259, bytecode pc 564
(xs.Views.PopularityRewardView = cc.Layer.extend({
    name: "xs.Views.PopularityRewardView",
    ctor: function() {
    // source line 185, bytecode pc 12
    this._super();
    // source line 186, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var visibleSize, _labelDesc;
    if (!this._super()) {
        // source line 190, bytecode pc 19
        return false;
    }
    // source line 193, bytecode pc 34
    (this.awardList = param.award_list);
    // source line 194, bytecode pc 49
    (this.m_local = param.local);
    // source line 198, bytecode pc 57
    (this.ccbNode_first = null);
    // source line 199, bytecode pc 65
    (this.ccbNode_second = null);
    // source line 200, bytecode pc 73
    (this.m_first_PlayerName = null);
    // source line 201, bytecode pc 81
    (this.m_first_PlayerLevel = null);
    // source line 202, bytecode pc 89
    (this.m_first_fightBtn = null);
    // source line 203, bytecode pc 97
    (this.m_first_icon = null);
    // source line 204, bytecode pc 105
    (this.m_second_PlayerName = null);
    // source line 205, bytecode pc 113
    (this.m_second_PlayerLevel = null);
    // source line 206, bytecode pc 121
    (this.m_second_fightBtn = null);
    // source line 207, bytecode pc 129
    (this.m_second_icon = null);
    // source line 209, bytecode pc 154
    (visibleSize = xs.director.getVisibleSize());
    // source line 212, bytecode pc 214
    (this.m_tableView = cc.TableView.create(this, cc.size(visibleSize.width, 540)));
    // source line 213, bytecode pc 243
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 214, bytecode pc 296
    this.m_tableView.setPosition(cc.p(0, ((visibleSize.height - 640) / 2)));
    // source line 215, bytecode pc 316
    this.m_tableView.setDelegate(this);
    // source line 216, bytecode pc 345
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 217, bytecode pc 365
    this.addChild(this.m_tableView);
    // source line 218, bytecode pc 383
    this.m_tableView.reloadData();
    // source line 222, bytecode pc 425
    (_labelDesc = xs.Factorys.Label.createByStyleIdWithStringId("LS_fightUI1", "interService_getAwardDesc"));
    // source line 223, bytecode pc 461
    _labelDesc.setAnchorPoint(cc.p(0, 1));
    // source line 226, bytecode pc 536
    xs.Utils.Node.attachNodes(this, _labelDesc, { desc: "lt", offset: { x: 18, y: -56 } });
    // source line 231, bytecode pc 538
    return true;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 235, bytecode pc 24
    return cc.size(240, 540);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 240, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 242, bytecode pc 63
        (cell = xs.Views.PopularityRewardTableCell.create(this.m_local));
    }
    // source line 245, bytecode pc 93
    cell.update(this.awardList[idx], idx);
    // source line 247, bytecode pc 97
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 251, bytecode pc 11
    return this.awardList.length;
},
    setBaseTouchPriority: function(priority) {
    // source line 254, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    onEnter: function() {
    // source line 257, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 260, bytecode pc 12
    this._super();
}
}));
// source line 263, bytecode pc 590
(xs.Views.PopularityRewardView.create = function(param) {
    var view;
    // source line 264, bytecode pc 23
    (view = new xs.Views.PopularityRewardView());
    if ((view && view.init(param))) {
        // source line 266, bytecode pc 59
        return view;
    }
    // source line 268, bytecode pc 84
    xs.assert(false, "xs.Views.PopularityRewardView.create error!");
    // source line 269, bytecode pc 86
    return null;
});
