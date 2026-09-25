// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/LadderChartTableViewCell.js:1
// source line 183, bytecode pc 540
(xs.Views.LadderChartTableViewCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 8, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(model) {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 55
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_8_2_LadderChartCell.ccbi", this));
    // source line 22, bytecode pc 98
    this.ccbNode.setContentSize(cc.size(247, 517));
    // source line 23, bytecode pc 137
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 27, bytecode pc 221
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 30, bytecode pc 229
    (this.m_ranking = null);
    // source line 31, bytecode pc 237
    (this.m_title = null);
    // source line 32, bytecode pc 245
    (this.m_vipLevel = null);
    // source line 33, bytecode pc 253
    (this.m_rank = null);
    // source line 34, bytecode pc 261
    (this.m_salary = null);
    // source line 35, bytecode pc 269
    (this.m_lineUpBtn = null);
    // source line 36, bytecode pc 317
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 39, bytecode pc 334
    this.updateCell(model);
    // source line 41, bytecode pc 336
    return true;
},
    updateCell: function(model) {
    var cardView, ranking, labelPos;
    if ((model.getPlayerType() === 0)) {
        // source line 46, bytecode pc 35
        this.showEmptyInfo(false);
    } else {
        // source line 48, bytecode pc 55
        this.showEmptyInfo(true);
        // source line 49, bytecode pc 88
        this.m_title.setString(model.getPlayerNick());
        if (!this.cardView) {
            // source line 52, bytecode pc 121
            (this.cardView = model.createCardView_Chart());
            // source line 53, bytecode pc 159
            (cardView = this.ccbNode.getChildByTag(this.cfg.card.tag));
            // source line 54, bytecode pc 192
            this.cardView.setPosition(cardView.getPosition());
            // source line 55, bytecode pc 233
            xs.Utils.Node.attachNodes(this.ccbNode, this.cardView);
        } else {
            // source line 57, bytecode pc 260
            this.cardView.reloadData_Chart(model);
        }
    }
    // source line 61, bytecode pc 308
    this.ccbNode.getChildByTag(this.cfg.topBorder.tag).setZOrder(1);
    // source line 62, bytecode pc 356
    this.ccbNode.getChildByTag(this.cfg.bottomBorder.tag).setZOrder(1);
    // source line 63, bytecode pc 404
    this.ccbNode.getChildByTag(this.cfg.vipStr.tag).setZOrder(1);
    // source line 64, bytecode pc 452
    this.ccbNode.getChildByTag(this.cfg.vipLevel.tag).setZOrder(1);
    if (this.m_rankingSprite) {
        // source line 68, bytecode pc 483
        this.m_rankingSprite.removeFromParent(true);
        // source line 69, bytecode pc 491
        (this.m_rankingSprite = null);
    }
    // source line 71, bytecode pc 509
    (ranking = model.getLadderRank());
    if ((ranking <= 3)) {
        // source line 73, bytecode pc 540
        this.m_ranking.setVisible(false);
        // source line 74, bytecode pc 561
        (labelPos = this.m_ranking.getPosition());
        // source line 75, bytecode pc 565
        switch (ranking) {
            case 1:
            // source line 77, bytecode pc 634
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 80, bytecode pc 684
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 83, bytecode pc 734
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 86, bytecode pc 768
            xs.assert(false, "ranking is error!", ranking);
            break;
        }
        // source line 89, bytecode pc 795
        this.m_rankingSprite.setPosition(labelPos);
        // source line 90, bytecode pc 820
        this.ccbNode.addChild(this.m_rankingSprite);
    } else {
        // source line 92, bytecode pc 845
        this.m_ranking.setVisible(true);
        // source line 93, bytecode pc 878
        this.m_ranking.setString(model.getLadderRank());
    }
    // source line 96, bytecode pc 911
    this.m_vipLevel.setString(model.getPlayerVipLevel());
    // source line 99, bytecode pc 989
    this.m_rank.setStringByStrings([ xs.Tools.String.createString("officialRank"), model.getRankName() ]);
    // source line 103, bytecode pc 1067
    this.m_salary.setStringByStrings([ xs.Tools.String.createString("salary"), model.getFightSalary() ]);
    // source line 116, bytecode pc 1106
    this.m_lineUpBtn.setOnClickCallBack(function() {
    var _id;
    if ((this.playerType == "1")) {
        // source line 109, bytecode pc 26
        (_id = this.playerId);
        // source line 111, bytecode pc 79
        xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: _id });
    } else {
        // source line 114, bytecode pc 144
        xs.Views.Mgr.showToast(xs.Tools.String.createString("secret"));
    }
}.bind(model));
},
    showEmptyInfo: function(visible) {
    // source line 123, bytecode pc 21
    this.m_title.setVisible(visible);
    // source line 124, bytecode pc 71
    this.ccbNode.getChildByTag(this.cfg.vipStr.tag).setVisible(visible);
    // source line 125, bytecode pc 121
    this.ccbNode.getChildByTag(this.cfg.vipLevel.tag).setVisible(visible);
    // source line 126, bytecode pc 143
    this.m_rank.setVisible(visible);
    // source line 127, bytecode pc 165
    this.m_salary.setVisible(visible);
    // source line 128, bytecode pc 187
    this.m_lineUpBtn.setVisible(visible);
    if (this.cardView) {
        // source line 130, bytecode pc 220
        this.cardView.setVisible(visible);
    }
},
    cfg: {
        card: { tag: 11 },
        topBorder: { tag: 12 },
        bottomBorder: { tag: 13 },
        vipStr: { tag: 14 },
        vipLevel: { tag: 15 },
        lineUpBtn: { tag: 18 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_title", id: "LS_wujiangInf1" },
            { tag: 15, type: "ls", name: "m_vipLevel", id: "LS_Lv" },
            { tag: 18, type: "btn", name: "m_lineUpBtn", id: "Btn_LineUp" },
            { tag: 19, type: "ls", name: "m_ranking", id: "LS_TTPHnomb" },
            { tag: 100, type: "ls_ext", name: "m_rank", ids: [ "LS_liebiaoInf", "LS_TiXing" ] },
            { tag: 101, type: "ls_ext", name: "m_salary", ids: [ "LS_liebiaoInf", "LS_TiXing" ] }
        ]
    }
}));
// source line 188, bytecode pc 566
(xs.Views.LadderChartTableViewCell.create = function(model) {
    var ret;
    // source line 189, bytecode pc 23
    (ret = new xs.Views.LadderChartTableViewCell());
    if ((ret && ret.init(model))) {
        // source line 191, bytecode pc 59
        return ret;
    }
    // source line 194, bytecode pc 88
    xs.assert(false, "xs.Views.LadderChartTableViewCell.create fail!", ret);
    // source line 195, bytecode pc 90
    return null;
});
