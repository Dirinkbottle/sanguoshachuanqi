// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Icon/IconStyleA.js:1
// source line 966, bytecode pc 498
(xs.Views.Icon.IconStyleA = xs.Views.Icon.BaseIcon.extend({
    name: "xs.Views.Icon.IconStyleA",
    ctor: function() {
    // source line 38, bytecode pc 12
    this._super();
    // source line 39, bytecode pc 52
    cc.associateWithNative(this, xs.Views.Icon.BaseIcon);
},
    getBodySize: function() {
    // source line 47, bytecode pc 94
    return cc.size((xs.Cfg.Resource.Head.w * this.getScaleX()), (xs.Cfg.Resource.Head.h * this.getScaleY()));
},
    init: function(objCfg, viewCfg) {
    // source line 53, bytecode pc 18
    this.markFuncBegin("init");
    // source line 56, bytecode pc 35
    this._super(viewCfg);
    // source line 58, bytecode pc 45
    (this.objCfg = objCfg);
    // source line 60, bytecode pc 53
    (this.m_isSelected = false);
    // source line 61, bytecode pc 61
    (this.m_isFateOn = false);
    // source line 62, bytecode pc 69
    (this.m_isEqued = false);
    // source line 64, bytecode pc 88
    this.markFuncEnd("init");
},
    _createHeadView: function(model) {
    // source line 69, bytecode pc 14
    return model.createHeadView_General_Equ_Skill();
},
    reloadData: function(model) {
    var _model;
    // source line 75, bytecode pc 6
    (_model = model);
    // source line 77, bytecode pc 23
    this._super(_model);
    if ((this.objCfg.lv === true)) {
        // source line 81, bytecode pc 58
        this._reloadData_LvBg(_model);
        // source line 82, bytecode pc 75
        this._reloadData_Lv(_model);
    }
    if ((this.objCfg.num === true)) {
        // source line 87, bytecode pc 110
        this._reloadData_Num(_model);
    }
    if ((this.objCfg.hint === true)) {
        // source line 92, bytecode pc 145
        this._reloadData_Hint(_model);
    }
    if ((this.objCfg.soul === true)) {
        // source line 94, bytecode pc 180
        this._reloadData_Soul(_model);
    }
    if ((this.objCfg.hp === true)) {
        // source line 99, bytecode pc 215
        this._reloadData_Hp(_model);
    }
    if ((this.objCfg.inteam === true)) {
        // source line 101, bytecode pc 250
        this._reloadData_InTeam(_model);
    }
    if ((this.objCfg.name === true)) {
        // source line 105, bytecode pc 285
        this._reloadData_Name(_model);
    }
    if ((this.objCfg.piece_name === true)) {
        // source line 106, bytecode pc 320
        this._reloadData_PieceName(_model);
    }
    if ((this.objCfg.sur === true)) {
    }
    if ((this.objCfg.part_max === true)) {
        // source line 114, bytecode pc 373
        this._reloadData_PartMax(_model);
    }
    if ((this.objCfg.skill_name === true)) {
        // source line 121, bytecode pc 408
        this._reloadData_SkillName(_model);
    }
    if ((this.objCfg.refine_lv === true)) {
        // source line 126, bytecode pc 443
        this._reloadData_RefineLv(_model);
    }
    if ((this.objCfg.breach_lv === true)) {
        // source line 131, bytecode pc 478
        this._reloadData_BreachLv(_model);
    }
    if ((this.objCfg.skill_type_lieutenant === true)) {
        // source line 137, bytecode pc 513
        this._reloadData_SkillTypeLieutenant(_model);
    }
    if ((this.objCfg.skill_type === true)) {
        // source line 143, bytecode pc 548
        this._reloadData_SkillType(_model);
    }
    if ((this.objCfg.red_dot === true)) {
        // source line 148, bytecode pc 583
        this._reloadData_RedDot(_model);
    }
    if ((this.objCfg.attribute === true)) {
        // source line 153, bytecode pc 618
        this._reloadData_Attribute(_model);
    }
    if ((this.objCfg.boreAndGemNum === true)) {
        // source line 157, bytecode pc 653
        this._reloadData_BoreAndGemNum(_model);
    }
    if ((this.objCfg.advancedLv === true)) {
        // source line 162, bytecode pc 688
        this._reloadData_SkillAdvancedLv(_model);
    }
    if ((this.objCfg.surface === true)) {
        // source line 167, bytecode pc 723
        this._reloadData_Surface(_model);
    }
},
    _reloadData_BoreAndGemNum: function(model) {
    if (((model.getBoreNum() > 0) || (model.getGemNum() > 0))) {
        if (!this.Heidi) {
            // source line 175, bytecode pc 99
            (this.Heidi = xs.Factorys.Sprite.create("Cmn01_dingbu", "Cmn01"));
            // source line 176, bytecode pc 123
            this.Heidi.setScaleX(0.16);
            // source line 177, bytecode pc 147
            this.Heidi.setScaleY(0.6);
            // source line 181, bytecode pc 271
            xs.Utils.Node.attachNodes(this, this.Heidi, { desc: "c", offset: { x: 0, y: ((-xs.Cfg.Resource.Head.h / 2) + 10) } }, this.Cfg.Constant.Heidi);
        }
        if (!this.GemIcon) {
            // source line 184, bytecode pc 328
            (this.GemIcon = xs.Factorys.Sprite.create("Cmn01_zuduixiaobaoshi", "Cmn01"));
            // source line 185, bytecode pc 352
            this.GemIcon.setScale(0.8);
            // source line 189, bytecode pc 507
            xs.Utils.Node.attachNodes(this, this.GemIcon, {
    desc: "c",
    offset: { x: ((-xs.Cfg.Resource.Head.w / 2) + 10), y: ((-xs.Cfg.Resource.Head.h / 2) + 10) }
}, this.Cfg.Constant.BoreNum);
        }
        if (!this.GemNumLabel) {
            // source line 193, bytecode pc 558
            (this.GemNumLabel = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
            // source line 194, bytecode pc 582
            this.GemNumLabel.setScale(0.7);
            // source line 198, bytecode pc 737
            xs.Utils.Node.attachNodes(this, this.GemNumLabel, {
    desc: "c",
    offset: { x: ((-xs.Cfg.Resource.Head.w / 2) + 36), y: ((-xs.Cfg.Resource.Head.h / 2) + 10) }
}, this.Cfg.Constant.BoreNum);
        }
        // source line 200, bytecode pc 813
        this.GemNumLabel.setString(((model.getGemNum().toString() + "/") + model.getBoreNum().toString()));
    } else {
        if (((model.getBoreNum() === 0) && (model.getGemNum() === 0))) {
            if (this.Heidi) {
                // source line 204, bytecode pc 890
                this.Heidi.removeFromParent();
                // source line 205, bytecode pc 898
                (this.Heidi = null);
            }
            if (this.GemIcon) {
                // source line 208, bytecode pc 927
                this.GemIcon.removeFromParent();
                // source line 209, bytecode pc 935
                (this.GemIcon = null);
            }
            if (this.GemNumLabel) {
                // source line 212, bytecode pc 964
                this.GemNumLabel.removeFromParent();
                // source line 213, bytecode pc 972
                (this.GemNumLabel = null);
            }
        }
    }
},
    _reloadData_Attribute: function(model) {
    if (!this.attributeLabel) {
        // source line 222, bytecode pc 50
        (this.attributeLabel = xs.Factorys.Label.createByStyleId("LS_zhanchang_zi2"));
        // source line 223, bytecode pc 146
        xs.Utils.Node.attachNodes(this, this.attributeLabel, { desc: "ct", offset: cc.p(0, 36) }, this.Cfg.Constant.Other);
    }
    // source line 226, bytecode pc 200
    this.attributeLabel.setString(((model.getEquipTypeToString() + "+") + model.getEffectValueBase()));
},
    _reloadData_RedDot: function(model) {
    var isRedDot;
    // source line 233, bytecode pc 4
    (isRedDot = false);
    if (model.canCompose) {
        // source line 236, bytecode pc 42
        (isRedDot = (model.canCompose() || false));
    }
    if (isRedDot) {
        if (!this.hintPoint) {
            // source line 240, bytecode pc 107
            (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
            // source line 241, bytecode pc 204
            xs.Utils.Node.attachNodes(this, this.hintPoint, { desc: "rt", offset: cc.p(38, 38) }, this.Cfg.Constant.Other);
        }
    } else {
        if (this.hintPoint) {
            // source line 244, bytecode pc 238
            this.hintPoint.removeFromParent();
            // source line 245, bytecode pc 246
            (this.hintPoint = null);
        }
    }
},
    _reloadData_Surface: function(model) {
    // source line 255, bytecode pc 44
    (this.hintPoint = xs.Factorys.Sprite.create("Cmn02_icon_lt_pifu", "Cmn02"));
    // source line 256, bytecode pc 141
    xs.Utils.Node.attachNodes(this, this.hintPoint, { desc: "lt", offset: cc.p(-20, 22) }, this.Cfg.Constant.Other);
},
    _reloadData_RefineLv: function(model) {
    var _lvNum, _maxLvNum, _strLvNum, _offset, _offset2;
    if ((model.name && (model.name !== "xs.Models.Equipment"))) {
        // source line 262, bytecode pc 34
        return void 0;
    }
    // source line 265, bytecode pc 54
    (_lvNum = (model.getRefineLevel() - 1));
    // source line 266, bytecode pc 74
    (_maxLvNum = (model.getMaxRefineLevel() - 1));
    // source line 267, bytecode pc 91
    (_strLvNum = ((_lvNum + "/") + _maxLvNum));
    if (!this.m_refineLv) {
        // source line 271, bytecode pc 142
        (this.m_refineLv = xs.Factorys.Label.createByStyleId("LS_Lv"));
        // source line 272, bytecode pc 187
        (this._xingXing = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
        // source line 273, bytecode pc 211
        this._xingXing.setScale(0.6);
        // source line 276, bytecode pc 296
        (_offset = cc.p(((-xs.Cfg.Resource.Head.w / 2) + 10), ((xs.Cfg.Resource.Head.h / 2) - 17)));
        // source line 280, bytecode pc 381
        (_offset2 = cc.p(((-xs.Cfg.Resource.Head.w / 2) + 31), ((xs.Cfg.Resource.Head.h / 2) - 17)));
        // source line 283, bytecode pc 459
        xs.Utils.Node.attachNodes(this, this.m_refineLv, { desc: "c", offset: _offset2 }, this.Cfg.Constant.Other);
        // source line 284, bytecode pc 537
        xs.Utils.Node.attachNodes(this, this._xingXing, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    }
    if (this.m_refineLv) {
        // source line 288, bytecode pc 570
        this.m_refineLv.setString(_lvNum);
    }
    if ((_lvNum == 0)) {
        // source line 293, bytecode pc 600
        this.m_refineLv.setVisible(false);
        // source line 294, bytecode pc 620
        this._xingXing.setVisible(false);
    } else {
        // source line 297, bytecode pc 645
        this.m_refineLv.setVisible(true);
        // source line 298, bytecode pc 665
        this._xingXing.setVisible(true);
    }
},
    _reloadData_BreachLv: function(model) {
    var _lvNum, _offset, _offset2;
    // source line 306, bytecode pc 17
    (_lvNum = model.getBreachLevel());
    if (!this.m_breachLv) {
        // source line 308, bytecode pc 68
        (this.m_breachLv = xs.Factorys.Label.createByStyleId("LS_Lv"));
        // source line 309, bytecode pc 113
        (this._xingXing = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
        // source line 310, bytecode pc 137
        this._xingXing.setScale(0.6);
        // source line 313, bytecode pc 222
        (_offset = cc.p(((-xs.Cfg.Resource.Head.w / 2) + 10), ((xs.Cfg.Resource.Head.h / 2) - 17)));
        // source line 317, bytecode pc 307
        (_offset2 = cc.p(((-xs.Cfg.Resource.Head.w / 2) + 31), ((xs.Cfg.Resource.Head.h / 2) - 17)));
        // source line 320, bytecode pc 385
        xs.Utils.Node.attachNodes(this, this.m_breachLv, { desc: "c", offset: _offset2 }, this.Cfg.Constant.Other);
        // source line 321, bytecode pc 463
        xs.Utils.Node.attachNodes(this, this._xingXing, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    }
    if (this.m_breachLv) {
        // source line 324, bytecode pc 496
        this.m_breachLv.setString(_lvNum);
    }
},
    _reloadData_SkillTypeLieutenant: function(model) {
    var _skill_type, _offset;
    // source line 330, bytecode pc 17
    (_skill_type = model.getNaturalSkillType());
    if ((this.m_last_skill_type_lieu === _skill_type)) {
        // source line 333, bytecode pc 34
        return void 0;
    } else {
        // source line 337, bytecode pc 73
        xs.Utils.Node.removeFromParentSafe(this.m_view_skill_type_lieu);
        // source line 338, bytecode pc 81
        (this.m_view_skill_type_lieu = null);
        if (!this.m_view_skill_type_lieu) {
            // source line 341, bytecode pc 151
            (this.m_view_skill_type_lieu = xs.Factorys.Sprite.create("Cmn02_icon_skill_type", "Cmn02", [ _skill_type ]));
            // source line 342, bytecode pc 180
            this.m_view_skill_type_lieu.setAnchorPoint(xsc.ap_rt);
            // source line 346, bytecode pc 258
            (_offset = cc.p((xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
            // source line 348, bytecode pc 336
            xs.Utils.Node.attachNodes(this, this.m_view_skill_type_lieu, { desc: "rt", offset: _offset }, this.Cfg.Constant.Other);
        }
        // source line 351, bytecode pc 346
        (this.m_last_skill_type_lieu = _skill_type);
    }
},
    _reloadData_SkillType: function(model) {
    var _skill_type, _offset;
    // source line 357, bytecode pc 17
    (_skill_type = model.getSkillType());
    if ((this.m_last_skill_type === _skill_type)) {
        // source line 360, bytecode pc 34
        return void 0;
    } else {
        // source line 364, bytecode pc 73
        xs.Utils.Node.removeFromParentSafe(this.m_view_skill_type);
        // source line 365, bytecode pc 81
        (this.m_view_skill_type = null);
        if (!this.m_view_skill_type) {
            // source line 368, bytecode pc 151
            (this.m_view_skill_type = xs.Factorys.Sprite.create("Cmn02_icon_skill_type", "Cmn02", [ _skill_type ]));
            // source line 369, bytecode pc 180
            this.m_view_skill_type.setAnchorPoint(xsc.ap_rt);
            // source line 373, bytecode pc 258
            (_offset = cc.p((xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
            // source line 375, bytecode pc 336
            xs.Utils.Node.attachNodes(this, this.m_view_skill_type, { desc: "rt", offset: _offset }, this.Cfg.Constant.Other);
        }
        // source line 378, bytecode pc 346
        (this.m_last_skill_type = _skill_type);
    }
},
    _reloadData_LvBg: function(model) {
    var _grade, _offset;
    // source line 385, bytecode pc 22
    this._checkModel(model, "getGrade");
    // source line 386, bytecode pc 40
    (_grade = model.getGrade());
    if ((this.m_spriteLvBg && (this.m_spriteLvBg.m_grade !== _grade))) {
        // source line 389, bytecode pc 106
        xs.Utils.Node.removeChildSafe(this.m_spriteLvBg);
        // source line 390, bytecode pc 114
        (this.m_spriteLvBg = null);
    }
    if (!this.m_spriteLvBg) {
        // source line 396, bytecode pc 184
        (this.m_spriteLvBg = xs.Factorys.Sprite.create("icon_rb_level", "Cmn02", [ _grade ]));
        // source line 397, bytecode pc 213
        this.m_spriteLvBg.setAnchorPoint(xs.ap_rb);
        // source line 400, bytecode pc 292
        (_offset = cc.p((xs.Cfg.Resource.Head.w / 2), (-xs.Cfg.Resource.Head.h / 2)));
        // source line 403, bytecode pc 370
        xs.Utils.Node.attachNodes(this, this.m_spriteLvBg, { desc: "c", offset: _offset }, this.Cfg.Constant.LvBg);
        // source line 405, bytecode pc 385
        (this.m_spriteLvBg.m_grade = _grade);
    }
},
    _reloadData_Lv: function(model) {
    var _level, _offset;
    // source line 411, bytecode pc 22
    this._checkModel(model, "getLevel");
    // source line 412, bytecode pc 40
    (_level = model.getLevel());
    if (!this.lvLabel) {
        // source line 415, bytecode pc 91
        (this.lvLabel = xs.Factorys.Label.createByStyleId("LS_Nomb1"));
        // source line 420, bytecode pc 176
        (_offset = cc.p(((xs.Cfg.Resource.Head.w / 2) - 13), ((-xs.Cfg.Resource.Head.h / 2) + 10)));
        // source line 423, bytecode pc 254
        xs.Utils.Node.attachNodes(this, this.lvLabel, { desc: "c", offset: _offset }, this.Cfg.Constant.Lv);
    }
    if (this.lvLabel) {
        // source line 427, bytecode pc 293
        this.lvLabel.setString(("" + _level));
    }
},
    _reloadData_SkillName: function(model) {
    var _partNum, _maxNum, _model, _offset;
    // source line 433, bytecode pc 22
    this._checkModel(model, "getLevel");
    // source line 435, bytecode pc 40
    (_partNum = model.getNum());
    // source line 436, bytecode pc 58
    (_maxNum = model.getComposePieceNum());
    // source line 438, bytecode pc 84
    (_model = { cur: _partNum, max: _maxNum });
    if (!this.m_textView) {
        // source line 442, bytecode pc 150
        (this.m_textView = xs.Views.TextProgressView.create(_model, { labelId: "Label_IconPartMax_Round" }));
        // source line 447, bytecode pc 205
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Head.h / 2) - 30)));
        // source line 454, bytecode pc 283
        xs.Utils.Node.attachNodes(this, this.m_textView, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    } else {
        // source line 458, bytecode pc 310
        this.m_textView.reloadData(_model);
    }
},
    _reloadData_PartMax: function(model) {
    var _partNum, _maxNum, _model, _offset;
    // source line 464, bytecode pc 22
    this._checkModel(model, "getLevel");
    // source line 466, bytecode pc 40
    (_partNum = model.getNum());
    // source line 467, bytecode pc 58
    (_maxNum = model.getComposePieceNum());
    // source line 469, bytecode pc 84
    (_model = { cur: _partNum, max: _maxNum });
    if (!this.m_textView) {
        // source line 473, bytecode pc 150
        (this.m_textView = xs.Views.TextProgressView.create(_model, { labelId: "Label_IconPartMax_Round" }));
        // source line 478, bytecode pc 205
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Head.h / 2) - 30)));
        // source line 485, bytecode pc 283
        xs.Utils.Node.attachNodes(this, this.m_textView, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    } else {
        // source line 489, bytecode pc 310
        this.m_textView.reloadData(_model);
    }
},
    _reloadData_Num: function(model) {
    var _num, _offset;
    // source line 498, bytecode pc 22
    this._checkModel(model, "getNum");
    // source line 500, bytecode pc 40
    (_num = model.getNum());
    if (!this.numLabel) {
        // source line 527, bytecode pc 95
        (this.numLabel = xs.Factorys.Label.createByStyleIdWithString("LS_EXPInf", _num));
        // source line 530, bytecode pc 150
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Head.h / 2) + 14)));
        // source line 536, bytecode pc 228
        xs.Utils.Node.attachNodes(this, this.numLabel, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    }
    if (this.numLabel) {
        // source line 545, bytecode pc 267
        this.numLabel.setString(("x" + _num));
    }
},
    isFateOn: function() {
    // source line 551, bytecode pc 13
    return (this.m_isFateOn || false);
},
    setFateOn: function(flag) {
    if ((flag !== this.m_isFateOn)) {
        // source line 559, bytecode pc 24
        (this.m_isFateOn = flag);
        // source line 562, bytecode pc 37
        this._updateFateOnView();
    }
},
    _getLazyInitFateOnView: function() {
    var _offset;
    if (!this.lazyFateOnView) {
        // source line 568, bytecode pc 56
        (this.lazyFateOnView = xs.Factorys.Sprite.create("icon_rt_fate", "Cmn02"));
        // source line 569, bytecode pc 85
        this.lazyFateOnView.setAnchorPoint(xs.ap_rt);
        // source line 572, bytecode pc 163
        (_offset = cc.p((xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
        // source line 574, bytecode pc 235
        xs.Utils.Node.attachNodes(this._getLazyInitBgView(), this.lazyFateOnView, { desc: "c", offset: _offset });
    }
    // source line 576, bytecode pc 242
    return this.lazyFateOnView;
},
    _updateFateOnView: function() {
    var _view;
    // source line 581, bytecode pc 15
    (_view = this._getLazyInitFateOnView());
    // source line 582, bytecode pc 43
    _view.setVisible(this.isFateOn());
},
    createGradeAndAdd: function() {
},
    _reloadData_Hint: function(model) {
    var _offset;
    // source line 593, bytecode pc 22
    this._checkModel(model, "isNew");
    if (!this.hintView) {
        // source line 597, bytecode pc 79
        (this.hintView = xs.Factorys.Sprite.create("icon_rt_new", "Cmn02"));
        // source line 598, bytecode pc 108
        this.hintView.setAnchorPoint(xs.ap_rt);
        // source line 601, bytecode pc 186
        (_offset = cc.p((xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
        // source line 604, bytecode pc 258
        xs.Utils.Node.attachNodes(this._getLazyInitBgView(), this.hintView, { desc: "c", offset: _offset });
    }
    if (this.hintView) {
        // source line 609, bytecode pc 302
        this.hintView.setVisible(model.isNew());
    }
},
    _reloadData_Soul: function(model) {
    // source line 617, bytecode pc 1
    return void 0;
},
    isEqued: function() {
    // source line 643, bytecode pc 6
    return this.m_isEqued;
},
    setEqued: function(flag) {
    if ((flag !== this.m_isEqued)) {
        // source line 651, bytecode pc 24
        (this.m_isEqued = flag);
        // source line 654, bytecode pc 37
        this._updateEquedView();
    }
},
    _getLazyInitEquedView: function() {
    var _offset;
    if (!this.lazyEquedView) {
        // source line 660, bytecode pc 56
        (this.lazyEquedView = xs.Factorys.Sprite.create("icon_lt_equipped", "Cmn02"));
        // source line 661, bytecode pc 85
        this.lazyEquedView.setAnchorPoint(xs.ap_lt);
        // source line 664, bytecode pc 164
        (_offset = cc.p((-xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
        // source line 666, bytecode pc 236
        xs.Utils.Node.attachNodes(this._getLazyInitBgView(), this.lazyEquedView, { desc: "c", offset: _offset });
    }
    // source line 668, bytecode pc 243
    return this.lazyEquedView;
},
    _updateEquedView: function() {
    var _view;
    // source line 673, bytecode pc 15
    (_view = this._getLazyInitEquedView());
    // source line 674, bytecode pc 43
    _view.setVisible(this.isEqued());
},
    _reloadData_Hp: function(model) {
    var _pos;
    if (!this.hpView) {
        // source line 680, bytecode pc 61
        (this.hpView = xs.Views.HpProgressView.create({ type: "s" }));
        // source line 681, bytecode pc 115
        (_pos = cc.p(0, (-10 - (xs.Cfg.Resource.Head.h / 2))));
        // source line 682, bytecode pc 198
        xs.Utils.Node.attachNodes(this, this.hpView, { desc: "cb", offset: _pos }, this.Cfg.Constant.Bg.Hp);
    }
},
    getHp: function() {
    // source line 695, bytecode pc 6
    return this.hpView;
},
    _reloadData_InTeam: function(model) {
    var _offset;
    if (!this.inteamView) {
        // source line 703, bytecode pc 56
        (this.inteamView = xs.Factorys.Sprite.create("icon_lt_onteam", "Cmn02"));
        // source line 704, bytecode pc 85
        this.inteamView.setAnchorPoint(xs.ap_lt);
        // source line 707, bytecode pc 164
        (_offset = cc.p((-xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
        // source line 710, bytecode pc 236
        xs.Utils.Node.attachNodes(this._getLazyInitBgView(), this.inteamView, { desc: "c", offset: _offset });
    }
    if (this.inteamView) {
        // source line 715, bytecode pc 328
        this.inteamView.setVisible(xs.Profile.GameData.Mgr.getInstance().Team.isInTeam(model.getPkId()));
    }
},
    reloadData_TeamIdx: function(idx, scaleX) {
    var _idx, _offset;
    if ((this._cache_idxView_idx == idx)) {
        // source line 725, bytecode pc 16
        return void 0;
    }
    // source line 728, bytecode pc 25
    (_idx = (idx + 1));
    // source line 730, bytecode pc 59
    xs.Utils.Node.safeRemoveChild(this.idxView);
    // source line 731, bytecode pc 67
    (this.idxView = null);
    if (_idx) {
        // source line 737, bytecode pc 133
        (this.idxView = xs.Factorys.Sprite.create("icon_lt_idx", "Cmn02", [ _idx ]));
        // source line 738, bytecode pc 162
        this.idxView.setAnchorPoint(xs.ap_lt);
        // source line 742, bytecode pc 247
        (_offset = cc.p(-((xs.Cfg.Resource.Head.w / 2) + 9), ((xs.Cfg.Resource.Head.h / 2) + 9)));
        // source line 752, bytecode pc 325
        xs.Utils.Node.attachNodes(this, this.idxView, { offset: _offset, desc: "lt" }, this.Cfg.Constant.Other);
        if (this.getBgViewFlipX()) {
            // source line 756, bytecode pc 371
            this.idxView.setAnchorPoint(xs.ap_rt);
            // source line 757, bytecode pc 425
            this.idxView.setPosition(cc.p(-_offset.x, _offset.y));
            // source line 758, bytecode pc 445
            this.idxView.setFlipX(true);
        }
        // source line 762, bytecode pc 455
        (this._cache_idxView_idx = idx);
    }
},
    reloadData_killNum: function(killNum) {
    var _offset, _offsetKillNumLab;
    if ((this._cache_killView_num == killNum)) {
        // source line 770, bytecode pc 16
        return void 0;
    }
    if ((killNum > 0)) {
        if (((this.killView == null) || (this.killView === undefined))) {
            // source line 774, bytecode pc 102
            (this.killView = xs.Factorys.Sprite.create("GuildDialog_lianshadi", "GuildDialog"));
            // source line 777, bytecode pc 187
            (_offset = cc.p(((xs.Cfg.Resource.Head.w / 2) * 0.3), -(xs.Cfg.Resource.Head.h / 2)));
            // source line 786, bytecode pc 265
            xs.Utils.Node.attachNodes(this, this.killView, { offset: _offset, desc: "c" }, this.Cfg.Constant.Other);
        }
        if (((this.killNumLab == null) || (this.killNumLab === undefined))) {
            // source line 791, bytecode pc 335
            (this.killNumLab = xs.Factorys.Label.createByStyleId("LS_liansha"));
            // source line 792, bytecode pc 359
            this.killNumLab.setString("");
            // source line 793, bytecode pc 384
            (_offsetKillNumLab = cc.p(10, 0));
            // source line 801, bytecode pc 467
            xs.Utils.Node.attachNodes(this.killView, this.killNumLab, { offset: _offsetKillNumLab, desc: "c" }, this.Cfg.Constant.Other);
        }
        // source line 805, bytecode pc 487
        this.killView.setFlipX(true);
        // source line 806, bytecode pc 518
        this.killNumLab.setFlipX(this.getBgViewFlipX());
        // source line 809, bytecode pc 582
        this.killNumLab.setString(xs.Tools.String.createStringWithArgsArray("union_playerHead_killNum", [ killNum ]));
    } else {
        if (this.killView) {
            // source line 814, bytecode pc 618
            this.killView.setVisible(false);
        }
    }
    // source line 818, bytecode pc 628
    (this._cache_killView_num = killNum);
},
    _reloadData_Name: function(model) {
    var _str, _pos;
    // source line 827, bytecode pc 17
    (_str = model.getNameString());
    if (!this.nameView) {
        // source line 831, bytecode pc 68
        (this.nameView = xs.Factorys.Label.createByStyleId("LS_ZbJn"));
        // source line 833, bytecode pc 122
        (_pos = cc.p(0, (-13 - (xs.Cfg.Resource.Head.h / 2))));
        // source line 835, bytecode pc 205
        xs.Utils.Node.attachNodes(this, this.nameView, { desc: "cb", offset: _pos }, this.Cfg.Constant.Bg.Name);
    }
    if (this.nameView) {
        // source line 839, bytecode pc 238
        this.nameView.setString(_str);
    }
},
    _reloadData_PieceName: function(model) {
    var _nameString, _pos;
    // source line 844, bytecode pc 50
    (_nameString = (model.getNameString() + xs.Tools.String.createString("auto_name_31")));
    if (!this.nameView) {
        // source line 848, bytecode pc 101
        (this.nameView = xs.Factorys.Label.createByStyleId("LS_ZbJn"));
        // source line 850, bytecode pc 155
        (_pos = cc.p(0, (-10 - (xs.Cfg.Resource.Head.h / 2))));
        // source line 852, bytecode pc 238
        xs.Utils.Node.attachNodes(this, this.nameView, { desc: "cb", offset: _pos }, this.Cfg.Constant.Bg.Name);
    }
    if (this.nameView) {
        // source line 856, bytecode pc 271
        this.nameView.setString(_nameString);
    }
},
    enableSelected: function() {
    // source line 865, bytecode pc 31
    this.setOnClickCallBack(function() {
    // source line 864, bytecode pc 26
    this.setSelected(!this.isSelected());
}.bind(this));
},
    reloadData_deadMask: function(isShow) {
    if (isShow) {
        if (!this.deadMask) {
            // source line 873, bytecode pc 64
            (this.deadMask = xs.Factorys.Sprite.create("Cmn02_icon_mask", "Cmn02"));
            // source line 874, bytecode pc 86
            this.deadMask.setOpacity(170);
            // source line 881, bytecode pc 156
            xs.Utils.Node.attachNodes(this, this.deadMask, { desc: "c" }, this.Cfg.Constant.Mask);
        }
        // source line 884, bytecode pc 176
        this.deadMask.setVisible(true);
    } else {
        if (this.deadMask) {
            // source line 888, bytecode pc 212
            this.deadMask.setVisible(false);
        }
    }
},
    _reloadData_SkillAdvancedLv: function(model) {
    var _lvNum, _offset, _offset2;
    if ((model.name && (model.name !== "xs.Models.Skill"))) {
        // source line 898, bytecode pc 34
        return void 0;
    }
    // source line 900, bytecode pc 52
    (_lvNum = model.getAdvancedLevel());
    if (!this.m_advancedLv) {
        // source line 903, bytecode pc 103
        (this.m_advancedLv = xs.Factorys.Label.createByStyleId("LS_Lv"));
        // source line 904, bytecode pc 148
        (this._xingXing = xs.Factorys.Sprite.create("Cmn03_chuizi", "Cmn03"));
        // source line 905, bytecode pc 172
        this._xingXing.setScale(0.3);
        // source line 908, bytecode pc 257
        (_offset = cc.p(((-xs.Cfg.Resource.Head.w / 2) + 20), ((xs.Cfg.Resource.Head.h / 2) - 72)));
        // source line 912, bytecode pc 342
        (_offset2 = cc.p(((-xs.Cfg.Resource.Head.w / 2) + 41), ((xs.Cfg.Resource.Head.h / 2) - 72)));
        // source line 915, bytecode pc 420
        xs.Utils.Node.attachNodes(this, this.m_advancedLv, { desc: "c", offset: _offset2 }, this.Cfg.Constant.Other);
        // source line 916, bytecode pc 498
        xs.Utils.Node.attachNodes(this, this._xingXing, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    }
    if (this.m_advancedLv) {
        // source line 920, bytecode pc 531
        this.m_advancedLv.setString(_lvNum);
    }
    if ((_lvNum == 0)) {
        // source line 924, bytecode pc 561
        this.m_advancedLv.setVisible(false);
        // source line 925, bytecode pc 581
        this._xingXing.setVisible(false);
    } else {
        // source line 928, bytecode pc 606
        this.m_advancedLv.setVisible(true);
        // source line 929, bytecode pc 626
        this._xingXing.setVisible(true);
    }
},
    isSelected: function() {
    // source line 936, bytecode pc 13
    return (this.m_isSelected || false);
},
    setSelected: function(flag) {
    if ((flag !== this.m_isSelected)) {
        // source line 944, bytecode pc 24
        (this.m_isSelected = flag);
        // source line 946, bytecode pc 50
        this.log("selected1", this.m_isSelected);
        // source line 947, bytecode pc 63
        this._updateSelectedView();
    }
},
    _getLazyInitSelectedView: function() {
    if (!this.lazySelectedView) {
        // source line 953, bytecode pc 56
        (this.lazySelectedView = xs.Factorys.Sprite.create("head_select", "Cmn02"));
        // source line 958, bytecode pc 120
        xs.Utils.Node.attachNodes(this._getLazyInitBgView(), this.lazySelectedView, { desc: "c" });
    }
    // source line 963, bytecode pc 127
    return this.lazySelectedView;
},
    _updateSelectedView: function() {
    var _selectedView;
    // source line 968, bytecode pc 15
    (_selectedView = this._getLazyInitSelectedView());
    // source line 969, bytecode pc 43
    _selectedView.setVisible(this.isSelected());
}
}));
// source line 994, bytecode pc 529
(xs.Views.Icon.IconStyleA.create = function(objCfg, viewCfg) {
    var _view, _objCfg;
    // source line 998, bytecode pc 28
    (_view = new xs.Views.Icon.IconStyleA());
    // source line 1000, bytecode pc 47
    (_objCfg = (objCfg || {}));
    // source line 1004, bytecode pc 70
    _view.init(_objCfg, viewCfg);
    // source line 1006, bytecode pc 96
    xs.Utils.makeDebugPoint(_view);
    // source line 1007, bytecode pc 122
    xs.Utils.makeOriginal(_view);
    // source line 1009, bytecode pc 126
    return _view;
});
