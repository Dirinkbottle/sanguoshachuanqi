// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Card/OtherPlayer.js:1
// source line 324, bytecode pc 619
(xs.Views.Card.OtherPlayer = (xs.Views.Card.OtherPlayer || xs.Views.BaseView.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Views.Card.User",
    Cfg: {
        frameSize: cc.size(314, 432),
        Constant: { Bg: { zOrder: 1, tag: 1 }, Other: { zOrder: 2, tag: 2 }, headLabel: { zOrder: 3, tag: 3 } }
    },
    ctor: function() {
    // source line 35, bytecode pc 12
    this._super();
    // source line 36, bytecode pc 47
    cc.associateWithNative(this, xs.Views.BaseView);
},
    getBodySize: function() {
    // source line 45, bytecode pc 94
    return cc.size((xs.Cfg.Resource.Card.w * this.getScaleX()), (xs.Cfg.Resource.Card.h * this.getScaleY()));
},
    init: function(viewCfg) {
    // source line 51, bytecode pc 12
    this._super();
    // source line 53, bytecode pc 20
    (this.bgSprite = null);
    // source line 55, bytecode pc 42
    (this.viewCfg = (viewCfg || {}));
    // source line 58, bytecode pc 88
    (this.btn = xs.Views.Btn.createInvisible(this.getBodySize()));
    // source line 59, bytecode pc 141
    xs.Utils.Node.attachNodes(this, this.btn, { base: "c" });
    // source line 62, bytecode pc 174
    xs.Utils.Node.initByViewCfg(this, viewCfg);
    // source line 64, bytecode pc 193
    this._create_property_boolean_auto("Enemy");
},
    setOnClickCallBack: function(func) {
    // source line 71, bytecode pc 9
    (this.m_onClickCallBack = func);
    if (this.btn) {
        // source line 73, bytecode pc 45
        this.btn.setOnClickCallBack(this.m_onClickCallBack);
    }
},
    _isGeneralIdDirty: function(playerModel) {
    // source line 80, bytecode pc 32
    return (this.m_id !== playerModel.getGeneralModel().getId());
},
    createBodySkin: function(playerModel) {
    var _bgSprite1;
    // source line 85, bytecode pc 34
    (_bgSprite1 = playerModel.getGeneralModel().createPartView("v3_card1"));
    // source line 86, bytecode pc 51
    _bgSprite1.setCascadeOpacityEnabled(true);
    // source line 88, bytecode pc 55
    return _bgSprite1;
},
    reloadData: function(playerModel) {
    if ((this._isGeneralIdDirty(playerModel) === true)) {
        // source line 96, bytecode pc 56
        xs.Utils.Node.safeRemoveChild(this.bgSprite);
        // source line 98, bytecode pc 79
        (this.bgSprite = this.createBodySkin(playerModel));
        // source line 100, bytecode pc 149
        xs.Utils.Node.attachNodes(this, this.bgSprite, { base: "c" }, this.Cfg.Constant.Bg);
        // source line 102, bytecode pc 181
        (this.m_id = playerModel.getGeneralModel().getId());
    }
    // source line 105, bytecode pc 198
    this._reloadData_Lv(playerModel);
    // source line 108, bytecode pc 215
    this._reloadData_RankName(playerModel);
    // source line 111, bytecode pc 232
    this._reloadData_NickName(playerModel);
},
    _reloadData_Lv: function(playerModel) {
    var _level, _bg, _offset;
    // source line 132, bytecode pc 22
    this._checkModel(playerModel, "getLevel");
    // source line 134, bytecode pc 40
    (_level = playerModel.getLevel());
    if (!this.lvLabel) {
        // source line 137, bytecode pc 95
        (this.lvLabel = xs.Factorys.Label.createByStyleIdWithString("LS_mainLv", _level));
        // source line 139, bytecode pc 137
        (_bg = xs.Factorys.Sprite.create("card_lt_lv", "Cmn02"));
        // source line 140, bytecode pc 163
        _bg.setAnchorPoint(xs.ap_lt);
        // source line 143, bytecode pc 248
        (_offset = cc.p(((-xs.Cfg.Resource.Card.w / 2) + 2), ((xs.Cfg.Resource.Card.h / 2) - 2)));
        // source line 146, bytecode pc 303
        xs.Utils.Node.attachNodes(_bg, this.lvLabel, { desc: "c" });
        // source line 147, bytecode pc 378
        xs.Utils.Node.attachNodes(this, _bg, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    }
    if (this.lvLabel) {
        // source line 151, bytecode pc 411
        this.lvLabel.setString(_level);
    }
},
    _reloadData_RankName: function(playerModel) {
    var _strName;
    // source line 156, bytecode pc 17
    (_strName = playerModel.getRankName());
    if (!this.ranknameLabel) {
        // source line 160, bytecode pc 68
        (this.ranknameLabel = xs.Factorys.Label.createByStyleId("LS_guanqiaName"));
        // source line 161, bytecode pc 111
        this.ranknameLabel.setAnchorPoint(cc.p(0.5, 0));
        // source line 163, bytecode pc 209
        xs.Utils.Node.attachNodes(this, this.ranknameLabel, { base: "c", offset: { x: -116, y: -165 } }, this.Cfg.Constant.Other);
    }
    // source line 166, bytecode pc 242
    this.ranknameLabel.setString(_strName.toWordBreak());
},
    _reloadData_NickName: function(playerModel) {
    var _strName;
    // source line 171, bytecode pc 17
    (_strName = playerModel.getPlayerNick());
    if (!this.nicknameLabel) {
        // source line 175, bytecode pc 68
        (this.nicknameLabel = xs.Factorys.Label.createByStyleId("LS_guanqiaName"));
        // source line 178, bytecode pc 165
        xs.Utils.Node.attachNodes(this, this.nicknameLabel, { base: "c", offset: { x: 0, y: -190 } }, this.Cfg.Constant.Other);
    }
    // source line 181, bytecode pc 187
    this.nicknameLabel.setString(_strName);
},
    reloadData_Ladder: function(model) {
    // source line 186, bytecode pc 16
    this.reloadData(model);
    if (model.isTop()) {
        if (model.isSelf()) {
            // source line 191, bytecode pc 82
            this.setHeadLabel(xs.Constant_Style_Self_Top, model);
        } else {
            // source line 193, bytecode pc 115
            this.setHeadLabel(xs.Constant_Style_Other_Top, model);
        }
    } else {
        if (model.isSelf()) {
            // source line 198, bytecode pc 167
            this.setHeadLabel(xs.Constant_Style_Self_NoTop, model);
        } else {
            // source line 201, bytecode pc 200
            this.setHeadLabel(xs.Constant_Style_Other_NoTop, model);
        }
    }
    // source line 206, bytecode pc 228
    this.setEnemy(model.isEnemy());
},
    setHeadLabel: function(styleType, model) {
    var redBg, grayBg;
    if (this.ccbNode_head) {
        // source line 211, bytecode pc 30
        this.ccbNode_head.removeFromParent(true);
    }
    // source line 214, bytecode pc 66
    (this.ccbNode_head = xs.ccb_reader.load("ccb3/0_8_2_LadderLabel.ccbi", this));
    // source line 215, bytecode pc 109
    (redBg = this.ccbNode_head.getChildByTag(this.cfg.headLabel.redBg.tag));
    // source line 216, bytecode pc 152
    (grayBg = this.ccbNode_head.getChildByTag(this.cfg.headLabel.grayBg.tag));
    // source line 217, bytecode pc 160
    (this.m_rank = null);
    // source line 218, bytecode pc 168
    (this.m_rankTop = null);
    // source line 219, bytecode pc 216
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_head, this.cfg.ccbCfg, this);
    // source line 221, bytecode pc 294
    this.m_rank.setStringByStrings([ xs.Tools.String.createString("paihang"), model.getLadderRank() ]);
    // source line 222, bytecode pc 327
    this.m_rankTop.setString(model.getLadderRank());
    // source line 224, bytecode pc 331
    switch (styleType) {
        case xs.Constant_Style_Self_NoTop:
        // source line 226, bytecode pc 474
        this.m_rank.setStringByStrings([ xs.Tools.String.createString("imHere"), model.getLadderRank() ]);
        // source line 227, bytecode pc 494
        this.m_rankTop.setVisible(false);
        // source line 228, bytecode pc 511
        grayBg.setVisible(false);
        break;
        case xs.Constant_Style_Other_NoTop:
        // source line 231, bytecode pc 533
        redBg.setVisible(false);
        // source line 232, bytecode pc 553
        this.m_rankTop.setVisible(false);
        break;
        case xs.Constant_Style_Self_Top:
        // source line 235, bytecode pc 636
        this.m_rank.setStringByStrings([ xs.Tools.String.createString("imHere"), model.getLadderRank() ]);
        // source line 236, bytecode pc 656
        this.m_rankTop.setVisible(false);
        // source line 237, bytecode pc 673
        grayBg.setVisible(false);
        break;
        case xs.Constant_Style_Other_Top:
        // source line 240, bytecode pc 695
        redBg.setVisible(false);
        // source line 241, bytecode pc 715
        this.m_rankTop.setVisible(true);
        // source line 242, bytecode pc 784
        this.m_rank.setStringByStrings([ xs.Tools.String.createString("paihang"), "" ]);
        // source line 243, bytecode pc 804
        this.m_rank.setVisible(true);
        break;
        default:
        break;
    }
    // source line 247, bytecode pc 851
    this.ccbNode_head.setContentSize(cc.size(140, 31));
    // source line 248, bytecode pc 898
    this.ccbNode_head.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 249, bytecode pc 922
    this.ccbNode_head.setScale(1.6);
    // source line 251, bytecode pc 1026
    xs.Utils.Node.attachNodes(this, this.ccbNode_head, { desc: "c", offset: cc.p(-20, 260), sc: false }, this.Cfg.Constant.headLabel);
},
    reloadData_Chart: function(playerModel) {
    var targetSize;
    // source line 255, bytecode pc 25
    (targetSize = { width: 168, height: 267 });
    if (this.bgSprite) {
        // source line 258, bytecode pc 70
        xs.Utils.Node.safeRemoveChild(this.bgSprite);
    }
    // source line 260, bytecode pc 108
    (this.bgSprite = playerModel.getGeneralModel().createPartView("card0"));
    // source line 261, bytecode pc 158
    this.bgSprite.setScaleX((targetSize.width / this.bgSprite.getContentSize().width));
    // source line 262, bytecode pc 208
    this.bgSprite.setScaleY((targetSize.height / this.bgSprite.getContentSize().height));
    if (this.cardSprite) {
        // source line 265, bytecode pc 239
        this.cardSprite.removeFromParent(true);
    }
    // source line 267, bytecode pc 277
    (this.cardSprite = playerModel.getGeneralModel().createPartView("card_chart"));
    // source line 268, bytecode pc 327
    this.cardSprite.setScaleX((targetSize.width / this.cardSprite.getContentSize().width));
    // source line 269, bytecode pc 377
    this.cardSprite.setScaleY((targetSize.height / this.cardSprite.getContentSize().height));
    // source line 272, bytecode pc 430
    xs.Utils.Node.attachNodes(this, this.bgSprite, { base: "c" });
    // source line 273, bytecode pc 483
    xs.Utils.Node.attachNodes(this, this.cardSprite, { base: "c" });
},
    reloadData_ChartWithGeneralId: function(generalId) {
    var targetSize, _generalModel;
    // source line 277, bytecode pc 25
    (targetSize = { width: 168, height: 267 });
    // source line 279, bytecode pc 59
    (_generalModel = xs.Models.General.createWithBase(generalId));
    if (this.bgSprite) {
        // source line 281, bytecode pc 104
        xs.Utils.Node.safeRemoveChild(this.bgSprite);
    }
    // source line 283, bytecode pc 131
    (this.bgSprite = _generalModel.createPartView("card0"));
    // source line 284, bytecode pc 181
    this.bgSprite.setScaleX((targetSize.width / this.bgSprite.getContentSize().width));
    // source line 285, bytecode pc 231
    this.bgSprite.setScaleY((targetSize.height / this.bgSprite.getContentSize().height));
    if (this.cardSprite) {
        // source line 288, bytecode pc 262
        this.cardSprite.removeFromParent(true);
    }
    // source line 290, bytecode pc 289
    (this.cardSprite = _generalModel.createPartView("card_chart"));
    // source line 291, bytecode pc 339
    this.cardSprite.setScaleX((targetSize.width / this.cardSprite.getContentSize().width));
    // source line 292, bytecode pc 389
    this.cardSprite.setScaleY((targetSize.height / this.cardSprite.getContentSize().height));
    // source line 295, bytecode pc 442
    xs.Utils.Node.attachNodes(this, this.bgSprite, { base: "c" });
    // source line 296, bytecode pc 495
    xs.Utils.Node.attachNodes(this, this.cardSprite, { base: "c" });
},
    _getLazyInitEnemyView: function() {
    if (!this.m_enemyIcon) {
        // source line 303, bytecode pc 56
        (this.m_enemyIcon = xs.Factorys.Sprite.create("Cmn01_Enemy_icon", "Cmn01"));
        // source line 304, bytecode pc 80
        this.m_enemyIcon.setScale(1.6);
        // source line 305, bytecode pc 101
        this.m_enemyIcon.setZOrder(2);
        // source line 307, bytecode pc 182
        xs.Utils.Node.attachNodes(this, this.m_enemyIcon, { desc: "c", offset: cc.p(125, 180) });
    }
    // source line 310, bytecode pc 189
    return this.m_enemyIcon;
},
    cfg: {
        headLabel: { redBg: { tag: 10 }, grayBg: { tag: 11 }, rank: { tag: 12 }, rankTop: { tag: 13 } },
        ccbCfg: [
            { tag: 12, type: "ls_ext", name: "m_rank", ids: [ "LS_paihangWZ", "LS_paihangNomb" ] },
            { tag: 13, type: "ls", name: "m_rankTop", id: "LS_SXJC" }
        ]
    }
})));
// source line 337, bytecode pc 650
(xs.Views.Card.OtherPlayer.create = function(objCfg, viewCfg) {
    var _view, arguments;
    // source line 337, bytecode pc 4
    (arguments = arguments);
    // source line 339, bytecode pc 39
    xs.assert((arguments.length <= 2), "xs.Views.Card.General no longer need model");
    // source line 341, bytecode pc 68
    (_view = new xs.Views.Card.OtherPlayer());
    // source line 342, bytecode pc 87
    _view.init(viewCfg);
    // source line 347, bytecode pc 91
    return _view;
});
