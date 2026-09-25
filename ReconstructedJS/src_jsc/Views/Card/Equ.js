// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Card/Equ.js:1
// source line 438, bytecode pc 423
(xs.Views.Card.Equ = xs.Views.BaseView.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "Views.Card.Equ",
    Cfg: {
        Constant: {
            Bg: { zOrder: 1, tag: 1 },
            Heidi: { zOrder: 99, tag: 99 },
            BoreNum: { zOrder: 100, tag: 103 },
            RefineLv: { zOrder: 100, tag: 100 },
            xingXing: { zOrder: 102, tag: 102 },
            RefineAttrPer: { zOrder: 101, tag: 101 }
        }
    },
    ctor: function() {
    // source line 45, bytecode pc 12
    this._super();
    // source line 46, bytecode pc 42
    cc.associateWithNative(this, cc.Sprite);
},
    createBodySkin: function(model) {
    var _bgSprite0, _bgSprite1, _bgSprite2, _name, _posType;
    // source line 51, bytecode pc 23
    (_bgSprite0 = model.createPartView("equ0"));
    // source line 52, bytecode pc 40
    _bgSprite0.setCascadeOpacityEnabled(true);
    // source line 53, bytecode pc 73
    xs.Utils.Node.attachNodes(this, _bgSprite0);
    // source line 55, bytecode pc 97
    (_bgSprite1 = model.createPartView("equ1"));
    // source line 56, bytecode pc 114
    _bgSprite1.setCascadeOpacityEnabled(true);
    // source line 57, bytecode pc 147
    xs.Utils.Node.attachNodes(this, _bgSprite1);
    // source line 59, bytecode pc 171
    (_bgSprite2 = model.createPartView("equ2"));
    // source line 60, bytecode pc 188
    _bgSprite2.setCascadeOpacityEnabled(true);
    // source line 61, bytecode pc 221
    xs.Utils.Node.attachNodes(this, _bgSprite2);
    // source line 64, bytecode pc 245
    (_name = model.createPartView("name"));
    // source line 65, bytecode pc 262
    _name.setCascadeOpacityEnabled(true);
    // source line 66, bytecode pc 339
    xs.Utils.Node.attachNodes(_bgSprite1, _name, { base: "c", offset: { x: 0, y: 130 } });
    // source line 69, bytecode pc 363
    (_posType = model.createPartView("pos_type"));
    // source line 70, bytecode pc 380
    _posType.setCascadeOpacityEnabled(true);
    // source line 71, bytecode pc 457
    xs.Utils.Node.attachNodes(_bgSprite1, _posType, { base: "c", offset: { x: -105, y: -115 } });
},
    createBgSpriteAndAdd: function(model) {
    // source line 77, bytecode pc 16
    this.createBodySkin(model);
},
    getBodySize: function() {
    // source line 87, bytecode pc 94
    return cc.size((xs.Cfg.Resource.Card.w * this.getScaleX()), (xs.Cfg.Resource.Card.h * this.getScaleY()));
},
    init: function(viewCfg) {
    // source line 94, bytecode pc 24
    this.log("init", "begin");
    // source line 98, bytecode pc 37
    this._super();
    // source line 100, bytecode pc 59
    (this.viewCfg = (viewCfg || {}));
    // source line 104, bytecode pc 74
    this.setCascadeOpacityEnabled(true);
    // source line 106, bytecode pc 107
    xs.Utils.Node.initByViewCfg(this, viewCfg);
    // source line 107, bytecode pc 132
    this.log("init", "end");
},
    reloadData: function(model) {
    if ((this.m_id !== model.getId())) {
        // source line 114, bytecode pc 46
        (this.m_id = model.getId());
        // source line 115, bytecode pc 63
        this._reload_id(model);
    }
    if ((this.objCfg.lv === true)) {
        // source line 119, bytecode pc 98
        this._reloadData_Lv(model);
    }
    if ((this.objCfg.hint === true)) {
        // source line 123, bytecode pc 133
        this._reloadData_Hint(model);
    }
    if ((this.objCfg.fp === true)) {
        // source line 127, bytecode pc 168
        this._reloadData_Fp(model);
    }
    if ((this.objCfg.attr === true)) {
        // source line 132, bytecode pc 203
        this._reloadData_Attr(model);
    }
    if ((this.objCfg.type === true)) {
        // source line 136, bytecode pc 238
        this._reloadData_Type(model);
    }
    if ((this.objCfg.refine_lv === true)) {
        // source line 141, bytecode pc 273
        this._reloadData_RefineLv(model);
    }
    if ((this.objCfg.refine_attr_per === true)) {
        // source line 146, bytecode pc 308
        this._reloadData_RefineAttrPer(model);
    }
    if ((this.objCfg.advancedLv === true)) {
        // source line 151, bytecode pc 343
        this._reloadData_advancedLv(model);
    }
},
    _reload_id: function(model) {
    var _bgSprite0, _bgSprite1, _bgSprite2, _name, _posType;
    // source line 159, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.spriteBg0);
    // source line 160, bytecode pc 57
    (_bgSprite0 = model.createPartView("equ0"));
    // source line 161, bytecode pc 74
    _bgSprite0.setCascadeOpacityEnabled(true);
    // source line 162, bytecode pc 107
    xs.Utils.Node.attachNodes(this, _bgSprite0);
    // source line 163, bytecode pc 117
    (this.spriteBg0 = _bgSprite0);
    // source line 166, bytecode pc 151
    xs.Utils.Node.safeRemoveChild(this.spriteBg1);
    // source line 167, bytecode pc 175
    (_bgSprite1 = model.createPartView("equ1"));
    // source line 168, bytecode pc 192
    _bgSprite1.setCascadeOpacityEnabled(true);
    // source line 169, bytecode pc 225
    xs.Utils.Node.attachNodes(this, _bgSprite1);
    // source line 170, bytecode pc 235
    (this.spriteBg1 = _bgSprite1);
    // source line 173, bytecode pc 269
    xs.Utils.Node.safeRemoveChild(this.spriteBg2);
    // source line 174, bytecode pc 293
    (_bgSprite2 = model.createPartView("equ2"));
    // source line 175, bytecode pc 310
    _bgSprite2.setCascadeOpacityEnabled(true);
    // source line 176, bytecode pc 343
    xs.Utils.Node.attachNodes(this, _bgSprite2);
    // source line 177, bytecode pc 353
    (this.spriteBg2 = _bgSprite2);
    // source line 180, bytecode pc 387
    xs.Utils.Node.safeRemoveChild(this.labelName);
    // source line 181, bytecode pc 411
    (_name = model.createPartView("name"));
    // source line 182, bytecode pc 428
    _name.setCascadeOpacityEnabled(true);
    // source line 183, bytecode pc 505
    xs.Utils.Node.attachNodes(_bgSprite1, _name, { base: "c", offset: { x: 0, y: 150 } });
    // source line 184, bytecode pc 515
    (this.labelName = _name);
    // source line 187, bytecode pc 549
    xs.Utils.Node.safeRemoveChild(this.labelPosType);
    // source line 188, bytecode pc 573
    (_posType = model.createPartView("pos_type"));
    // source line 189, bytecode pc 590
    _posType.setCascadeOpacityEnabled(true);
    // source line 190, bytecode pc 667
    xs.Utils.Node.attachNodes(_bgSprite1, _posType, { base: "c", offset: { x: -105, y: -115 } });
    // source line 191, bytecode pc 677
    (this.labelPosType = _posType);
},
    _reloadData_Lv: function(model) {
    var _bg, _offset;
    // source line 198, bytecode pc 22
    this._checkModel(model, "getLevel");
    if (!this.lvLabel) {
        // source line 201, bytecode pc 88
        (this.lvLabel = xs.Factorys.Label.createByStyleIdWithString("LS_cardLv", model.getLevel()));
        // source line 203, bytecode pc 130
        (_bg = xs.Factorys.Sprite.create("card_lb_lv", "Cmn02"));
        // source line 204, bytecode pc 156
        _bg.setAnchorPoint(xs.ap_lb);
        // source line 207, bytecode pc 236
        (_offset = cc.p((-xs.Cfg.Resource.Card.w / 2), (-xs.Cfg.Resource.Card.h / 2)));
        // source line 210, bytecode pc 291
        xs.Utils.Node.attachNodes(_bg, this.lvLabel, { desc: "c" });
        // source line 211, bytecode pc 349
        xs.Utils.Node.attachNodes(this, _bg, { desc: "c", offset: _offset });
    }
    if (this.lvLabel) {
        // source line 215, bytecode pc 393
        this.lvLabel.setString(model.getLevel());
    }
},
    _reloadData_Hint: function(model) {
    var _offset;
    // source line 222, bytecode pc 22
    this._checkModel(model, "isNew");
    if (!this.hintView) {
        // source line 226, bytecode pc 79
        (this.hintView = xs.Factorys.Sprite.create("card_rt_new", "Cmn02"));
        // source line 227, bytecode pc 108
        this.hintView.setAnchorPoint(xs.ap_rt);
        // source line 230, bytecode pc 186
        (_offset = cc.p((xs.Cfg.Resource.Card.w / 2), (xs.Cfg.Resource.Card.h / 2)));
        // source line 233, bytecode pc 247
        xs.Utils.Node.attachNodes(this, this.hintView, { desc: "c", offset: _offset });
    }
    if (this.hintView) {
        // source line 238, bytecode pc 291
        this.hintView.setVisible(model.isNew());
    }
},
    _reloadData_Fp: function(model) {
    var _fp, _smallIcon, _bg, _offset;
    // source line 245, bytecode pc 22
    this._checkModel(model, "getAttrNaked");
    // source line 247, bytecode pc 51
    (_fp = model.getAttrNaked(xs.Constant_AttrType_FightPoint));
    // source line 248, bytecode pc 80
    (_fp = xs.Utils.floorSafe(_fp));
    if (!this.fpLabel) {
        // source line 251, bytecode pc 135
        (this.fpLabel = xs.Factorys.Label.createByStyleIdWithString("LS_mainUI4", _fp));
        // source line 253, bytecode pc 176
        (_smallIcon = xs.Tools.UI.createEffectTypeSmallIcon(xs.Constant_AttrType_FightPoint));
        // source line 256, bytecode pc 218
        (_bg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
        // source line 257, bytecode pc 244
        _bg.setAnchorPoint(xs.ap_lb);
        // source line 260, bytecode pc 329
        (_offset = cc.p(((-xs.Cfg.Resource.Card.w / 2) + 15), ((xs.Cfg.Resource.Card.h / 2) + 15)));
        // source line 263, bytecode pc 384
        xs.Utils.Node.attachNodes(_bg, this.fpLabel, { desc: "c" });
        // source line 264, bytecode pc 436
        xs.Utils.Node.attachNodes(_bg, _smallIcon, { desc: "lc" });
        // source line 267, bytecode pc 494
        xs.Utils.Node.attachNodes(this, _bg, { desc: "c", offset: _offset });
    }
    if (this.fpLabel) {
        // source line 271, bytecode pc 527
        this.fpLabel.setString(_fp);
    }
},
    _reloadData_Attr: function(model) {
    var _attrValue, _smallIcon, _bg, _offset;
    // source line 277, bytecode pc 22
    this._checkModel(model, "getEffectValue");
    // source line 279, bytecode pc 40
    (_attrValue = model.getEffectValue());
    if (!this.attrLabel) {
        // source line 284, bytecode pc 95
        (this.attrLabel = xs.Factorys.Label.createByStyleIdWithString("LS_cardWujiangName", _attrValue));
        // source line 286, bytecode pc 140
        (_smallIcon = xs.Tools.UI.createEffectTypeSmallIcon(model.getEffectType()));
        // source line 289, bytecode pc 182
        (_bg = xs.Factorys.Sprite.create("card_smallIcon_inside_bg", "Cmn01"));
        // source line 290, bytecode pc 208
        _bg.setAnchorPoint(xs.ap_bc);
        // source line 293, bytecode pc 263
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Card.h / 2) + 7)));
        // source line 296, bytecode pc 318
        xs.Utils.Node.attachNodes(_bg, this.attrLabel, { desc: "c" });
        // source line 297, bytecode pc 370
        xs.Utils.Node.attachNodes(_bg, _smallIcon, { desc: "lc" });
        // source line 300, bytecode pc 428
        xs.Utils.Node.attachNodes(this, _bg, { desc: "c", offset: _offset });
    }
    if (this.attrLabel) {
        // source line 304, bytecode pc 461
        this.attrLabel.setString(_attrValue);
    }
},
    _reloadData_RefineAttrPer: function(model) {
    var _attr_refine, _label, _smallIcon, _bg, _offset;
    if (this.m_view_refineAttrPer) {
        // source line 318, bytecode pc 30
        this.m_view_refineAttrPer.setVisible(true);
    }
    // source line 322, bytecode pc 53
    this._checkModel(model, "getAttrRefineAdd_100Percent");
    // source line 324, bytecode pc 71
    (_attr_refine = model.getAttrRefineAdd_100Percent());
    // source line 326, bytecode pc 105
    xs.Utils.Node.removeFromParentSafe(this.m_view_refineAttrPer);
    // source line 327, bytecode pc 113
    (this.m_view_refineAttrPer = null);
    if (!this.m_view_refineAttrPer) {
        // source line 331, bytecode pc 161
        (_label = xs.Factorys.Label.createByStyleId("LS_cardWujiangName"));
        // source line 332, bytecode pc 192
        _label.setString((("+" + _attr_refine) + "%"));
        // source line 334, bytecode pc 237
        (_smallIcon = xs.Tools.UI.createEffectTypeSmallIcon(model.getEffectType()));
        // source line 336, bytecode pc 279
        (_bg = xs.Factorys.Sprite.create("card_smallIcon_inside_bg", "Cmn01"));
        // source line 337, bytecode pc 305
        _bg.setAnchorPoint(xs.ap_bc);
        // source line 340, bytecode pc 360
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Card.h / 2) + 7)));
        // source line 345, bytecode pc 412
        xs.Utils.Node.attachNodes(_bg, _label, { desc: "c" });
        // source line 346, bytecode pc 464
        xs.Utils.Node.attachNodes(_bg, _smallIcon, { desc: "lc" });
        // source line 347, bytecode pc 539
        xs.Utils.Node.attachNodes(this, _bg, { desc: "c", offset: _offset }, this.Cfg.Constant.RefineAttrPer);
        // source line 349, bytecode pc 549
        (this.m_view_refineAttrPer = _bg);
    }
},
    _reloadData_RefineLv: function(model) {
    var _lvNum, _maxLvNum, _strLvNum, _offset, _offset2;
    // source line 356, bytecode pc 22
    this._checkModel(model, "getRefineLevel");
    // source line 359, bytecode pc 42
    (_lvNum = (model.getRefineLevel() - 1));
    // source line 360, bytecode pc 62
    (_maxLvNum = (model.getMaxRefineLevel() - 1));
    // source line 361, bytecode pc 79
    (_strLvNum = ((_lvNum + "/") + _maxLvNum));
    if (!this.m_label_refinelv) {
        // source line 368, bytecode pc 130
        (this.m_label_refinelv = xs.Factorys.Label.createByStyleId("LS_Lv"));
        // source line 369, bytecode pc 175
        (this._xingXing = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
        // source line 370, bytecode pc 199
        this.m_label_refinelv.setScale(1.125);
        // source line 371, bytecode pc 223
        this._xingXing.setScale(0.75);
        // source line 374, bytecode pc 279
        (_offset = cc.p(-30, ((-xs.Cfg.Resource.Card.h / 2) + 83)));
        // source line 378, bytecode pc 335
        (_offset2 = cc.p(20, ((-xs.Cfg.Resource.Card.h / 2) + 79)));
        // source line 381, bytecode pc 413
        xs.Utils.Node.attachNodes(this, this.m_label_refinelv, { desc: "bc", offset: _offset2 }, this.Cfg.Constant.RefineLv);
        // source line 382, bytecode pc 491
        xs.Utils.Node.attachNodes(this, this._xingXing, { desc: "bc", offset: _offset }, this.Cfg.Constant.xingXing);
    }
    if (this.m_label_refinelv) {
        // source line 386, bytecode pc 524
        this.m_label_refinelv.setString(_strLvNum);
    }
    // source line 395, bytecode pc 544
    this.m_label_refinelv.setVisible(true);
    // source line 396, bytecode pc 564
    this._xingXing.setVisible(true);
},
    _reloadData_advancedLv: function(model) {
    var _lvNum, _offset, _offset2;
    // source line 405, bytecode pc 1
    return void 0;
    // source line 406, bytecode pc 19
    (_lvNum = model.getAdvancedLevel());
    if (!this.m_label_advancedlv) {
        // source line 411, bytecode pc 70
        (this.m_label_advancedlv = xs.Factorys.Label.createByStyleId("LS_Lv"));
        // source line 412, bytecode pc 115
        (this._xingXing = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
        // source line 413, bytecode pc 139
        this.m_label_advancedlv.setScale(1.125);
        // source line 414, bytecode pc 163
        this._xingXing.setScale(0.75);
        // source line 417, bytecode pc 220
        (_offset = cc.p(-30, ((-xs.Cfg.Resource.Card.h / 2) + 183)));
        // source line 421, bytecode pc 277
        (_offset2 = cc.p(20, ((-xs.Cfg.Resource.Card.h / 2) + 179)));
        // source line 424, bytecode pc 355
        xs.Utils.Node.attachNodes(this, this.m_label_advancedlv, { desc: "bc", offset: _offset2 }, this.Cfg.Constant.RefineLv);
        // source line 425, bytecode pc 433
        xs.Utils.Node.attachNodes(this, this._xingXing, { desc: "bc", offset: _offset }, this.Cfg.Constant.xingXing);
    }
    if (this.m_label_advancedlv) {
        // source line 429, bytecode pc 466
        this.m_label_advancedlv.setString(_lvNum);
    }
    // source line 432, bytecode pc 486
    this.m_label_advancedlv.setVisible(true);
    // source line 433, bytecode pc 506
    this._xingXing.setVisible(true);
},
    _reloadData_Type: function(model) {
    var _strType, _offset;
    // source line 440, bytecode pc 22
    this._checkModel(model, "getSkillTypeToString");
    // source line 442, bytecode pc 40
    (_strType = model.getSkillTypeToString());
    if (!this.labelType) {
        // source line 449, bytecode pc 95
        (this.labelType = xs.Factorys.Label.createByStyleIdWithString("LS_Card_Shuxing", _strType));
        // source line 453, bytecode pc 150
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Card.h / 2) + 30)));
        // source line 456, bytecode pc 211
        xs.Utils.Node.attachNodes(this, this.labelType, { desc: "bc", offset: _offset });
    }
    if (this.labelType) {
        // source line 460, bytecode pc 244
        this.labelType.setString(_strType);
    }
}
}));
// source line 472, bytecode pc 454
(xs.Views.Card.Equ.create = function(cfgObj, viewCfg) {
    var _view;
    // source line 474, bytecode pc 28
    (_view = new xs.Views.Card.Equ());
    // source line 476, bytecode pc 52
    (_view.objCfg = (cfgObj || {}));
    // source line 478, bytecode pc 71
    _view.init(viewCfg);
    // source line 480, bytecode pc 97
    xs.Utils.makeDebugPoint(_view);
    // source line 481, bytecode pc 123
    xs.Utils.makeOriginal(_view);
    // source line 483, bytecode pc 127
    return _view;
});
