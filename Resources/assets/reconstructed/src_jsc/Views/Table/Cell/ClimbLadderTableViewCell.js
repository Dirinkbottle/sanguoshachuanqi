// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/ClimbLadderTableViewCell.js:1
// source line 281, bytecode pc 1222
(xs.Views.ClimbLadderTableViewCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 2, type: "ls", id: "LS_Lv", zOrder: 5 },
        { tag: 3, type: "ls", id: "LS_Lv", zOrder: 5 },
        { tag: 4, type: "ls", id: "LS_liebiaoInf2", zOrder: 5 },
        { tag: 5, type: "ls", id: "LS_liebiaoInf2", zOrder: 5 },
        { tag: 6, type: "ls", id: "LS_liebiaoInf2", zOrder: 5 },
        {
            tag: 21,
            type: "ls",
            name: "m_cellIntro",
            id: "LS_liebiaoInf",
            stringId: "auto_name_493",
            zOrder: 5
        },
        { tag: 22, type: "ls", id: "LS_liebiaoInf", stringId: "auto_name_266", zOrder: 5 },
        { tag: 23, type: "ls", id: "LS_liebiaoInf", stringId: "auto_name_494", zOrder: 5 },
        { tag: 24, type: "ls", id: "LS_liebiaoInf", stringId: "auto_name_495", zOrder: 5 },
        { tag: 100, type: "ls", id: "LS_TTPHnomb", zOrder: 5 },
        { tag: 31, type: "sprite", zOrder: 1 },
        { tag: 32, type: "sprite", zOrder: 2 },
        { tag: 12, type: "sprite", zOrder: 4 },
        { tag: 13, type: "sprite", zOrder: 4 },
        { tag: 14, type: "sprite", zOrder: 5 },
        { tag: 11, type: "sprite", zOrder: 3 },
        { tag: 33, type: "sprite", zOrder: 5 },
        { tag: 34, type: "sprite", zOrder: 5 },
        { tag: 35, type: "sprite", zOrder: 5 },
        { tag: 8, type: "sprite", zOrder: 5 },
        { tag: 1, type: "sprite", zOrder: 5 },
        { tag: 7, type: "sprite", zOrder: 5 }
    ],
    draw: function(ctx) {
    // source line 33, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 37, bytecode pc 12
    this._super();
    // source line 38, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(model, index) {
    if (!this._super()) {
        // source line 43, bytecode pc 19
        return false;
    }
    // source line 46, bytecode pc 27
    (this.m_cellIntro = null);
    // source line 50, bytecode pc 40
    this._initCcbi();
    // source line 53, bytecode pc 61
    this.updateCell(model, index);
    // source line 55, bytecode pc 63
    return true;
},
    _initCcbi: function() {
    if (this.ccbNode) {
        // source line 60, bytecode pc 30
        this.ccbNode.setVisible(false);
    }
    // source line 62, bytecode pc 81
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.PaihangCell, this));
    // source line 63, bytecode pc 124
    this.ccbNode.setContentSize(cc.size(247, 517));
    // source line 64, bytecode pc 163
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 68, bytecode pc 247
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 71, bytecode pc 290
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 73, bytecode pc 317
    (this.m_cellBg = this.ccbNode.getChildByTag(31));
    // source line 74, bytecode pc 344
    (this.m_cellFrame = this.ccbNode.getChildByTag(32));
    // source line 75, bytecode pc 371
    (this.m_topPic = this.ccbNode.getChildByTag(12));
    // source line 76, bytecode pc 398
    (this.m_downPic = this.ccbNode.getChildByTag(13));
},
    replaceCellNode: function() {
    var cellBg, cellFrame, topPic, downPic;
    // source line 82, bytecode pc 41
    (cellBg = xs.Factorys.Sprite.create("TiantixitongScene01_qizhidi2", "TiantixitongScene01"));
    // source line 83, bytecode pc 86
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_cellBg, cellBg);
    // source line 84, bytecode pc 96
    (this.m_cellBg = cellBg);
    // source line 86, bytecode pc 138
    (cellFrame = xs.Factorys.Sprite.create("TiantixitongScene01_qizhidizhong2", "TiantixitongScene01"));
    // source line 87, bytecode pc 183
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_cellFrame, cellFrame);
    // source line 88, bytecode pc 193
    (this.m_cellFrame = cellFrame);
    // source line 91, bytecode pc 235
    (topPic = xs.Factorys.Sprite.create("TiantixitongScene01_tupianzhuangshi2", "TiantixitongScene01"));
    // source line 92, bytecode pc 280
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_topPic, topPic);
    // source line 93, bytecode pc 290
    (this.m_topPic = topPic);
    // source line 96, bytecode pc 332
    (downPic = xs.Factorys.Sprite.create("TiantixitongScene01_tupianzhuangshi2", "TiantixitongScene01"));
    // source line 97, bytecode pc 351
    downPic.setRotation(180);
    // source line 98, bytecode pc 396
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_downPic, downPic);
    // source line 99, bytecode pc 406
    (this.m_downPic = downPic);
},
    reductionCell: function() {
    var cellBg, cellFrame, topPic, downPic;
    // source line 103, bytecode pc 41
    (cellBg = xs.Factorys.Sprite.create("TiantixitongScene01_qizhidi", "TiantixitongScene01"));
    // source line 104, bytecode pc 86
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_cellBg, cellBg);
    // source line 105, bytecode pc 96
    (this.m_cellBg = cellBg);
    // source line 107, bytecode pc 138
    (cellFrame = xs.Factorys.Sprite.create("TiantixitongScene01_qizhidizhong", "TiantixitongScene01"));
    // source line 108, bytecode pc 183
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_cellFrame, cellFrame);
    // source line 109, bytecode pc 193
    (this.m_cellFrame = cellFrame);
    // source line 112, bytecode pc 235
    (topPic = xs.Factorys.Sprite.create("TiantixitongScene01_tupianzhuangshi", "TiantixitongScene01"));
    // source line 113, bytecode pc 280
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_topPic, topPic);
    // source line 114, bytecode pc 290
    (this.m_topPic = topPic);
    // source line 117, bytecode pc 332
    (downPic = xs.Factorys.Sprite.create("TiantixitongScene01_tupianzhuangshi", "TiantixitongScene01"));
    // source line 118, bytecode pc 351
    downPic.setRotation(180);
    // source line 119, bytecode pc 396
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_downPic, downPic);
    // source line 120, bytecode pc 406
    (this.m_downPic = downPic);
},
    updateCell: function(model, index) {
    var _data, _model, pointProgressStr, num, pos;
    if ((model == null)) {
        // source line 127, bytecode pc 22
        this._updateCellBlank();
    } else {
        // source line 129, bytecode pc 46
        (_data = (model || {}));
        // source line 130, bytecode pc 73
        xs.dump("updateCell", _data);
        // source line 131, bytecode pc 107
        (_model = xs.Models.OtherPlayerInfo.create(_data));
        // source line 134, bytecode pc 119
        (pointProgressStr = _data.point_progress);
        if ((parseInt(pointProgressStr) >= 1000)) {
            // source line 136, bytecode pc 170
            this.m_cellIntro.setStringById("climbPrompt_9");
            // source line 137, bytecode pc 183
            this.replaceCellNode();
            // source line 138, bytecode pc 209
            (num = (parseInt(pointProgressStr) - 1000));
            // source line 139, bytecode pc 227
            (pointProgressStr = num.toString());
        } else {
            // source line 143, bytecode pc 245
            this.reductionCell();
            // source line 144, bytecode pc 269
            this.m_cellIntro.setStringById("ls_guoguan_zhanji");
        }
        // source line 147, bytecode pc 309
        this.ccbNode.getChildByTag(1).setString(_data.user_name);
        // source line 149, bytecode pc 334
        this.setRankTitle(_data.rank, 100);
        // source line 152, bytecode pc 381
        this.ccbNode.getChildByTag(2).setString((_data.user_vip_level + ""));
        // source line 154, bytecode pc 428
        this.ccbNode.getChildByTag(3).setString((_data.user_level + ""));
        // source line 156, bytecode pc 470
        this.ccbNode.getChildByTag(4).setString((pointProgressStr + ""));
        // source line 158, bytecode pc 517
        this.ccbNode.getChildByTag(5).setString((_data.total_integration + ""));
        // source line 160, bytecode pc 564
        this.ccbNode.getChildByTag(6).setString((_data.reward_gold + ""));
        // source line 161, bytecode pc 611
        this.ccbNode.getChildByTag(8).setString((_data.reward_point + ""));
        // source line 169, bytecode pc 658
        this.ccbNode.getChildByTag(6).setString((_data.reward_gold + ""));
        // source line 170, bytecode pc 692
        xs.Utils.Node.safeRemoveChild(this._generalView);
        if (_data.general_id) {
            // source line 174, bytecode pc 740
            (pos = this.ccbNode.getChildByTag(11).getPosition());
            // source line 175, bytecode pc 761
            (this._generalView = _model.createCardView_Chart());
            // source line 176, bytecode pc 816
            xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(11), this._generalView);
        }
        // source line 178, bytecode pc 851
        (pos = this.ccbNode.getChildByTag(7).getPosition());
        // source line 179, bytecode pc 885
        this.ccbNode.getChildByTag(7).setVisible(false);
        // source line 180, bytecode pc 924
        (this._btn = xs.Views.Btn.create("Btn_LineUp"));
        // source line 181, bytecode pc 946
        this._btn.setPosition(pos);
        // source line 187, bytecode pc 985
        this._btn.setOnClickCallBack(function() {
    // source line 184, bytecode pc 55
    xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: this.user_id });
}.bind(_data));
        // source line 188, bytecode pc 1049
        xs.Utils.Node.attachNodes(this.ccbNode, this._btn, false, { zOrder: 6, tag: 7 });
    }
},
    setRankTitle: function(rank, tag) {
    var ranking, labelPos;
    // source line 192, bytecode pc 28
    (ranking = xs.Utils.parseIntSafe(rank));
    // source line 193, bytecode pc 56
    (this.m_ranking = this.ccbNode.getChildByTag(tag));
    if ((ranking <= 3)) {
        // source line 195, bytecode pc 87
        this.m_ranking.setVisible(false);
        // source line 196, bytecode pc 108
        (labelPos = this.m_ranking.getPosition());
        if (this.m_rankingSprite) {
            // source line 198, bytecode pc 153
            xs.Utils.Node.safeRemoveChild(this.m_rankingSprite);
        }
        // source line 200, bytecode pc 157
        switch (ranking) {
            case 1:
            // source line 202, bytecode pc 226
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 205, bytecode pc 276
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 208, bytecode pc 326
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 211, bytecode pc 360
            xs.assert(false, "ranking is error!", ranking);
            break;
        }
        // source line 214, bytecode pc 387
        this.m_rankingSprite.setPosition(labelPos);
        // source line 215, bytecode pc 407
        this.m_rankingSprite.setVisible(true);
        // source line 216, bytecode pc 435
        this.ccbNode.addChild(this.m_rankingSprite, 5);
    } else {
        // source line 218, bytecode pc 460
        this.m_ranking.setVisible(true);
        if (this.m_rankingSprite) {
            // source line 220, bytecode pc 491
            this.m_rankingSprite.setVisible(false);
        }
        // source line 222, bytecode pc 519
        this.m_ranking.setString((rank + ""));
    }
},
    _updateCellBlank: function() {
    // source line 226, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.ccbNode);
    // source line 227, bytecode pc 69
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_8_2_LadderChartCell.ccbi", this));
    // source line 228, bytecode pc 112
    this.ccbNode.setContentSize(cc.size(247, 517));
    // source line 229, bytecode pc 151
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 233, bytecode pc 235
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 235, bytecode pc 255
    this._setCellBlankVisibleFalse(this.ccbNode);
    // source line 236, bytecode pc 273
    this.setRankTitle(1, 19);
},
    _setCellBlankVisibleFalse: function(ccbnode) {
    var _tagArray, i, _subNode;
    // source line 247, bytecode pc 44
    (_tagArray = [ 18, 10, 14, 15, 100, 101 ]);
    // source line 248, bytecode pc 58
    (i = (_tagArray.length - 1));
    while ((i >= 0)) {
        // source line 249, bytecode pc 90
        (_subNode = ccbnode.getChildByTag(_tagArray[i]));
        if ((_subNode != null)) {
            // source line 251, bytecode pc 117
            _subNode.setVisible(false);
        }
        // source line 248, bytecode pc 132
        i--;
    }
},
    cfg: {
        title: { tag: 10 },
        card: { tag: 11 },
        topBorder: { tag: 12 },
        bottomBorder: { tag: 13 },
        vipStr: { tag: 14 },
        vipLevel: { tag: 15 },
        rank: { tag: 16 },
        salary: { tag: 17 },
        lineUpBtn: { tag: 18 }
    }
}));
// source line 286, bytecode pc 1248
(xs.Views.ClimbLadderTableViewCell.create = function(model, index) {
    var ret;
    // source line 287, bytecode pc 23
    (ret = new xs.Views.ClimbLadderTableViewCell());
    if ((ret && ret.init(model, index))) {
        // source line 289, bytecode pc 63
        return ret;
    }
    // source line 292, bytecode pc 92
    xs.assert(false, "xs.Views.ClimbLadderTableViewCell.create fail!", ret);
    // source line 293, bytecode pc 94
    return null;
});
