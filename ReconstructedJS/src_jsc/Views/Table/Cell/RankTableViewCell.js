// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/RankTableViewCell.js:1
// source line 236, bytecode pc 843
(xs.Views.RankTableViewCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 2, type: "ls", id: "LS_Lv", zOrder: 5 },
        { tag: 3, type: "ls", id: "LS_Lv", zOrder: 5 },
        { tag: 6, type: "ls", id: "LS_liebiaoInf2", zOrder: 5 },
        { tag: 21, type: "ls", name: "m_cellIntro", id: "LS_liebiaoInf", zOrder: 5 },
        { tag: 24, type: "ls", id: "LS_liebiaoInf", zOrder: 5 },
        { tag: 100, type: "ls", id: "LS_TTPHnomb", zOrder: 5 },
        { tag: 31, type: "sprite", zOrder: 1 },
        { tag: 32, type: "sprite", zOrder: 2 },
        { tag: 12, type: "sprite", zOrder: 4 },
        { tag: 13, type: "sprite", zOrder: 4 },
        { tag: 14, type: "sprite", zOrder: 5 },
        { tag: 11, type: "sprite", zOrder: 3 },
        { tag: 33, type: "sprite", zOrder: 5 },
        { tag: 35, type: "sprite", zOrder: 5 },
        { tag: 8, type: "ls", id: "LS_liebiaoInf2", zOrder: 5 },
        { tag: 1, type: "sprite", zOrder: 5 },
        { tag: 38, type: "sprite", zOrder: 5 },
        { name: "m_btn", type: "btn", tag: 7, id: "Btn_Zan", zOrder: 5 }
    ],
    draw: function(ctx) {
    // source line 28, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 32, bytecode pc 12
    this._super();
    // source line 33, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(type, model, index) {
    if (!this._super()) {
        // source line 38, bytecode pc 19
        return false;
    }
    // source line 41, bytecode pc 27
    (this.m_cellIntro = null);
    // source line 42, bytecode pc 37
    (this.m_cellType = type);
    // source line 44, bytecode pc 50
    this._initCcbi();
    // source line 46, bytecode pc 60
    (this.m_model = model);
    // source line 47, bytecode pc 70
    (this.m_index = index);
    // source line 51, bytecode pc 72
    return true;
},
    _initCcbi: function() {
    if (this.ccbNode) {
        // source line 56, bytecode pc 30
        this.ccbNode.setVisible(false);
    }
    // source line 58, bytecode pc 81
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.RankList, this));
    // source line 59, bytecode pc 124
    this.ccbNode.setContentSize(cc.size(246, 564));
    // source line 60, bytecode pc 163
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 64, bytecode pc 247
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 67, bytecode pc 290
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 69, bytecode pc 317
    (this.m_cellBg = this.ccbNode.getChildByTag(31));
    // source line 70, bytecode pc 344
    (this.m_cellFrame = this.ccbNode.getChildByTag(32));
    // source line 71, bytecode pc 371
    (this.m_topPic = this.ccbNode.getChildByTag(12));
    // source line 72, bytecode pc 398
    (this.m_downPic = this.ccbNode.getChildByTag(13));
    // source line 74, bytecode pc 422
    (this.centerPos = this.m_btn.getPosition());
},
    updateCell: function(model, index) {
    var hero, guan, zhang, centerPos;
    if ((model == null)) {
        // source line 104, bytecode pc 29
        this.ccbNode.setVisible(false);
        if (this.lineUpBtn) {
            // source line 107, bytecode pc 60
            this.lineUpBtn.setVisible(false);
        }
    } else {
        // source line 117, bytecode pc 85
        this.ccbNode.setVisible(true);
        if (this.lineUpBtn) {
            // source line 120, bytecode pc 116
            this.lineUpBtn.setVisible(true);
        }
        // source line 123, bytecode pc 150
        this.ccbNode.getChildByTag(38).setVisible(false);
        // source line 124, bytecode pc 174
        this.m_cellIntro.setStringById("ls_guoguan_zhanji");
        // source line 125, bytecode pc 214
        this.ccbNode.getChildByTag(1).setString(model.user_nickname);
        // source line 128, bytecode pc 236
        this.setRankTitle((index + 1), 100);
        // source line 130, bytecode pc 270
        xs.Utils.Node.safeRemoveChild(this._generalView);
        // source line 131, bytecode pc 278
        (this._generalView = null);
        if (model.user_general_skin) {
            // source line 134, bytecode pc 329
            (this._generalView = xs.Views.Card.OtherPlayer.create());
            // source line 135, bytecode pc 362
            this._generalView.reloadData_ChartWithGeneralId(("" + model.user_general_skin));
            // source line 136, bytecode pc 417
            xs.Utils.Node.attachNodes(this.ccbNode.getChildByTag(11), this._generalView);
        }
        // source line 145, bytecode pc 464
        this.ccbNode.getChildByTag(2).setString((model.user_vip_level + ""));
        // source line 146, bytecode pc 511
        this.ccbNode.getChildByTag(3).setString((model.user_level + ""));
        // source line 147, bytecode pc 558
        this.ccbNode.getChildByTag(8).setString(("X" + model.liked_num));
        // source line 149, bytecode pc 565
        switch (this.m_cellType) {
            case 0:
            // source line 152, bytecode pc 617
            this.m_cellIntro.setVisible(false);
            // source line 153, bytecode pc 682
            this.ccbNode.getChildByTag(24).setString(xs.Tools.String.createString("rank_txt_zhanli"));
            // source line 154, bytecode pc 729
            this.ccbNode.getChildByTag(6).setString(("" + model.record_data));
            break;
            case 1:
            // source line 157, bytecode pc 773
            (hero = xs.Models.General.createWithBase(model.general_id));
            // source line 158, bytecode pc 793
            this.m_cellIntro.setVisible(true);
            // source line 159, bytecode pc 826
            this.m_cellIntro.setString(hero.getNameString());
            // source line 160, bytecode pc 891
            this.ccbNode.getChildByTag(24).setString(xs.Tools.String.createString("rank_txt_zhanli"));
            // source line 161, bytecode pc 938
            this.ccbNode.getChildByTag(6).setString(("" + model.record_data));
            break;
            case 2:
            // source line 164, bytecode pc 963
            this.m_cellIntro.setVisible(false);
            // source line 165, bytecode pc 1028
            this.ccbNode.getChildByTag(24).setString(xs.Tools.String.createString("rank_txt_dengji"));
            // source line 166, bytecode pc 1075
            this.ccbNode.getChildByTag(6).setString(("" + model.record_data));
            break;
            case 3:
            // source line 169, bytecode pc 1100
            this.m_cellIntro.setVisible(false);
            // source line 170, bytecode pc 1165
            this.ccbNode.getChildByTag(24).setString(xs.Tools.String.createString("rank_txt_guanka"));
            // source line 171, bytecode pc 1180
            (guan = (model.record_data % 100));
            // source line 172, bytecode pc 1202
            (zhang = (((model.record_data - guan) / 100) % 100));
            // source line 173, bytecode pc 1308
            this.ccbNode.getChildByTag(6).setString((((zhang + xs.Tools.String.createString("rank_txt_zhang")) + guan) + xs.Tools.String.createString("rank_txt_guan")));
            break;
            case 4:
            // source line 176, bytecode pc 1333
            this.m_cellIntro.setVisible(false);
            // source line 177, bytecode pc 1398
            this.ccbNode.getChildByTag(24).setString(xs.Tools.String.createString("rank_txt_tongyu"));
            // source line 178, bytecode pc 1445
            this.ccbNode.getChildByTag(6).setString(("" + model.record_data));
            break;
            default:
            break;
        }
        // source line 183, bytecode pc 1460
        (centerPos = this.centerPos);
        // source line 190, bytecode pc 1497
        this.m_btn.setOnClickCallBack(function() {
    var params;
    // source line 185, bytecode pc 9
    (params = {});
    // source line 186, bytecode pc 24
    (params.rank = this.m_index);
    // source line 187, bytecode pc 44
    (params.like_user_id = this.m_model.user_id);
    // source line 188, bytecode pc 59
    (params.type = this.m_cellType);
    // source line 189, bytecode pc 99
    xs.Tools.Net.requestLikeRank(params, this.onResponse, this);
}.bind(this));
        // source line 191, bytecode pc 1521
        this.m_btn.setString("赞");
        // source line 192, bytecode pc 1577
        this.m_btn.setPosition(cc.p((centerPos.x + 50), centerPos.y));
        if ((this.lineUpBtn == null)) {
            // source line 196, bytecode pc 1629
            (this.lineUpBtn = xs.Views.Btn.create("Btn_Zan"));
            // source line 197, bytecode pc 1676
            this.lineUpBtn.setAnchorPoint(cc.p(0.5, 0.5));
            // source line 198, bytecode pc 1712
            this.lineUpBtn.setZOrder(this.m_btn.getZOrder());
            if (this.m_baseTouchPriority) {
                // source line 200, bytecode pc 1759
                this.lineUpBtn.setTouchPriority(this.m_btn.getTouchPriority());
            }
            // source line 205, bytecode pc 1860
            xs.Utils.Node.attachNodes(this, this.lineUpBtn, { desc: "c", offset: cc.p((centerPos.x - 50), centerPos.y), sc: false });
        }
        // source line 213, bytecode pc 1897
        this.lineUpBtn.setOnClickCallBack(function() {
    // source line 211, bytecode pc 60
    xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: this.m_model.user_id });
}.bind(this));
    }
},
    onResponse: function(json) {
    if (json) {
        // source line 221, bytecode pc 32
        (this.m_model.liked_num = (this.m_model.liked_num + 1));
        // source line 222, bytecode pc 59
        this.updateCell(this.m_model, this.m_index);
        // source line 223, bytecode pc 97
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Rank_lick_cnt_down);
        // source line 225, bytecode pc 175
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("rank_like_callback_tosat", [ json.gold_num ]));
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 230, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    if (this.m_btn) {
        // source line 233, bytecode pc 47
        this.m_btn.setTouchPriority((this.m_baseTouchPriority - 1));
    }
},
    setRankTitle: function(rank, tag) {
    var ranking, labelPos;
    // source line 237, bytecode pc 28
    (ranking = xs.Utils.parseIntSafe(rank));
    // source line 238, bytecode pc 56
    (this.m_ranking = this.ccbNode.getChildByTag(tag));
    if ((ranking <= 3)) {
        // source line 240, bytecode pc 87
        this.m_ranking.setVisible(false);
        // source line 241, bytecode pc 108
        (labelPos = this.m_ranking.getPosition());
        if (this.m_rankingSprite) {
            // source line 243, bytecode pc 153
            xs.Utils.Node.safeRemoveChild(this.m_rankingSprite);
        }
        // source line 245, bytecode pc 157
        switch (ranking) {
            case 1:
            // source line 247, bytecode pc 226
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
            break;
            case 2:
            // source line 250, bytecode pc 276
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
            break;
            case 3:
            // source line 253, bytecode pc 326
            (this.m_rankingSprite = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
            break;
            default:
            // source line 256, bytecode pc 360
            xs.assert(false, "ranking is error!", ranking);
            break;
        }
        // source line 259, bytecode pc 387
        this.m_rankingSprite.setPosition(labelPos);
        // source line 260, bytecode pc 407
        this.m_rankingSprite.setVisible(true);
        // source line 261, bytecode pc 435
        this.ccbNode.addChild(this.m_rankingSprite, 5);
    } else {
        // source line 263, bytecode pc 460
        this.m_ranking.setVisible(true);
        if (this.m_rankingSprite) {
            // source line 265, bytecode pc 491
            this.m_rankingSprite.setVisible(false);
        }
        // source line 267, bytecode pc 519
        this.m_ranking.setString((rank + ""));
    }
}
}));
// source line 289, bytecode pc 869
(xs.Views.RankTableViewCell.create = function(type, model, index) {
    var ret;
    // source line 290, bytecode pc 23
    (ret = new xs.Views.RankTableViewCell());
    if ((ret && ret.init(type, model, index))) {
        // source line 292, bytecode pc 67
        return ret;
    }
    // source line 295, bytecode pc 96
    xs.assert(false, "xs.Views.RankTableViewCell.create fail!", ret);
    // source line 296, bytecode pc 98
    return null;
});
