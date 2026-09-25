// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Card/General.js:1
// source line 490, bytecode pc 517
(xs.Views.Card.General = (xs.Views.Card.General || xs.Views.BaseView.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Views.Card.General",
    Cfg: {
        frameSize: cc.size(314, 432),
        Constant: {
            Bg: {
                zOrder: 1,
                tag: 1,
                Hp: { zOrder: 2, tag: 2 },
                Lv_Bg: { zOrder: 3, tag: 3 },
                Lv_Text: { zOrder: 4, tag: 4 }
            },
            Info: { zOrder: 100, tag: 100 },
            Surrender: { zOrder: 180, tag: 180 },
            SellMark: { zOrder: 200, tag: 200 }
        }
    },
    ctor: function() {
    // source line 53, bytecode pc 12
    this._super();
    // source line 54, bytecode pc 47
    cc.associateWithNative(this, xs.Views.BaseView);
},
    updateSellMark: function(idx) {
    // source line 59, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_sellMark);
    // source line 60, bytecode pc 41
    (this.m_sellMark = null);
    if (((idx !== 0) && ((idx !== null) && (idx !== undefined)))) {
        // source line 63, bytecode pc 135
        (this.m_sellMark = xs.Factorys.Sprite.create("SellTag_Card", "SellTag", [ idx ]));
        if (this.m_sellMark) {
            // source line 65, bytecode pc 170
            this.m_sellMark.setScale(1.6);
            // source line 73, bytecode pc 275
            xs.Utils.Node.attachNodes(this, this.m_sellMark, { desc: "c", offset: cc.p(130, 180), sc: false }, this.Cfg.Constant.SellMark);
        }
    }
},
    updateHp: function(cur, max) {
    if (this.hpView) {
        // source line 83, bytecode pc 36
        this.hpView.updateHp(cur, max);
    } else {
        // source line 85, bytecode pc 60
        this.error("need this.hpView");
    }
},
    createBgSpriteAndAdd: function(model) {
    // source line 94, bytecode pc 16
    this.createBodySkin_v3(model);
},
    getBodySize: function() {
    // source line 103, bytecode pc 94
    return cc.size((xs.Cfg.Resource.Card.w * this.getScaleX()), (xs.Cfg.Resource.Card.h * this.getScaleY()));
},
    init: function(viewCfg) {
    // source line 110, bytecode pc 24
    this.log("init", "begin");
    // source line 114, bytecode pc 37
    this._super();
    // source line 116, bytecode pc 45
    (this.bgSprite = null);
    // source line 117, bytecode pc 53
    (this.hpView = null);
    // source line 118, bytecode pc 61
    (this.viewCfg = null);
    // source line 121, bytecode pc 83
    (this.viewCfg = (viewCfg || {}));
    // source line 124, bytecode pc 102
    this._create_property_boolean_auto("Surrender");
    // source line 126, bytecode pc 117
    this.setCascadeOpacityEnabled(true);
    // source line 128, bytecode pc 150
    xs.Utils.Node.initByViewCfg(this, viewCfg);
    // source line 129, bytecode pc 158
    (this.markShowFengyin = false);
    if ((this.viewCfg.markShowFengyin != null)) {
        // source line 131, bytecode pc 191
        (this.markShowFengyin = viewCfg.markShowFengyin);
    }
    // source line 132, bytecode pc 216
    this.log("init", "end");
},
    getHp: function() {
    // source line 136, bytecode pc 6
    return this.hpView;
},
    setOnClickCallBack: function(func) {
    // source line 145, bytecode pc 9
    (this.m_onClickCallBack = func);
    if (this.btn) {
        // source line 147, bytecode pc 45
        this.btn.setOnClickCallBack(this.m_onClickCallBack);
    }
},
    reloadData: function(model) {
    if ((this.m_id !== model.getId())) {
        // source line 157, bytecode pc 46
        (this.m_id = model.getId());
        // source line 158, bytecode pc 63
        this._reload_id(model);
    }
    if ((this.objCfg.lv === true)) {
        // source line 162, bytecode pc 98
        this._reloadData_Lv(model);
    }
    if ((this.objCfg.sur === true)) {
    }
    if ((this.objCfg.hint === true)) {
        // source line 168, bytecode pc 151
        this._reloadData_Hint(model);
    }
    if ((this.objCfg.hp === true)) {
        // source line 171, bytecode pc 186
        this._reloadData_Hp(model);
    }
    if ((this.objCfg.fp === true)) {
        // source line 174, bytecode pc 221
        this._reloadData_Fp(model);
    }
    if ((this.objCfg.type === true)) {
        // source line 177, bytecode pc 256
        this._reloadData_Type(model);
    }
},
    _reload_id: function(model) {
    // source line 184, bytecode pc 24
    this.markFuncBegin("_reload_id", "begin");
    // source line 188, bytecode pc 32
    (this.nodeId = this);
    // source line 193, bytecode pc 71
    this.nodeId.setContentSize(cc.size(0, 0));
    // source line 196, bytecode pc 100
    this.nodeId.setAnchorPoint(xs.ap_c);
    // source line 199, bytecode pc 134
    xs.Utils.Node.safeRemoveChild(this.spriteBg);
    // source line 200, bytecode pc 161
    (this.spriteBg = model.createPartView("v3_card1"));
    // source line 201, bytecode pc 181
    this.spriteBg.setCascadeOpacityEnabled(true);
    // source line 202, bytecode pc 210
    this.spriteBg.getTexture().setAntiAliasTexParameters();
    // source line 204, bytecode pc 268
    xs.Utils.Node.attachNodes(this.nodeId, this.spriteBg, { base: "c" });
    // source line 208, bytecode pc 302
    xs.Utils.Node.safeRemoveChild(this.labelName);
    // source line 209, bytecode pc 329
    (this.labelName = model.createPartView("name"));
    // source line 210, bytecode pc 369
    this.labelName.setAligns(xs.AlignH_Center, xs.AlignV_Bottom);
    // source line 212, bytecode pc 389
    this.labelName.setCascadeOpacityEnabled(true);
    // source line 217, bytecode pc 475
    xs.Utils.Node.attachNodes(this.nodeId, this.labelName, { base: "c", offset: { x: -113, y: -145 } });
    // source line 222, bytecode pc 509
    xs.Utils.Node.safeRemoveChild(this.spriteCountry);
    // source line 223, bytecode pc 536
    (this.spriteCountry = model.createPartView("icon_country"));
    // source line 224, bytecode pc 565
    this.spriteCountry.setAnchorPoint(xs.ap_c);
    // source line 225, bytecode pc 585
    this.spriteCountry.setCascadeOpacityEnabled(true);
    // source line 230, bytecode pc 669
    xs.Utils.Node.attachNodes(this.nodeId, this.spriteCountry, { base: "c", offset: { x: -120, y: 181 } });
    // source line 235, bytecode pc 703
    xs.Utils.Node.safeRemoveChild(this.spriteQuality);
    // source line 236, bytecode pc 730
    (this.spriteQuality = model.createPartView("icon_quality"));
    // source line 237, bytecode pc 759
    this.spriteQuality.setAnchorPoint(xs.ap_c);
    // source line 238, bytecode pc 779
    this.spriteQuality.setCascadeOpacityEnabled(true);
    // source line 243, bytecode pc 865
    xs.Utils.Node.attachNodes(this.nodeId, this.spriteQuality, { base: "c", offset: { x: 120, y: -183 } });
    if ((this.m_side === 1)) {
        // source line 248, bytecode pc 900
        this.labelName.setRotationY(180);
        // source line 249, bytecode pc 922
        this.spriteCountry.setRotationY(180);
        // source line 250, bytecode pc 944
        this.spriteQuality.setRotationY(180);
    }
    if (this.markShowFengyin) {
        // source line 257, bytecode pc 993
        xs.log_ck(("显示武将" + model.getNameString()));
        // source line 259, bytecode pc 1027
        xs.Utils.Node.safeRemoveChild(this.animFengying);
        // source line 260, bytecode pc 1071
        (this.animFengying = xs.Views.Armature.AutoAudioArmature.create("Arm_Fengyin_kapai"));
        // source line 262, bytecode pc 1129
        xs.Utils.Node.attachNodes(this.nodeId, this.animFengying, { desc: "c" });
        if (!model.isAwaked()) {
            if (model.isCanAwaked()) {
                // source line 272, bytecode pc 1205
                this.animFengying.playAniById("Fengyin_ani", { loop: true });
            } else {
                // source line 276, bytecode pc 1234
                this.animFengying.playAniById("Fengyin_jingzhen");
            }
        } else {
            // source line 280, bytecode pc 1259
            this.animFengying.setVisible(false);
        }
    }
    // source line 284, bytecode pc 1284
    this.markFuncBegin("_reload_id", "end");
},
    _reloadData_Type: function(model) {
    var _strType, _offset;
    // source line 291, bytecode pc 22
    this._checkModel(model, "getNaturalSkillTypeToString");
    // source line 293, bytecode pc 40
    (_strType = model.getNaturalSkillTypeToString());
    if (!this.labelType) {
        // source line 300, bytecode pc 91
        (this.labelType = xs.Factorys.Label.createByStyleId("LS_Card_Shuxing"));
        // source line 303, bytecode pc 146
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Card.h / 2) + 30)));
        // source line 309, bytecode pc 224
        xs.Utils.Node.attachNodes(this, this.labelType, { desc: "bc", offset: _offset }, this.Cfg.Constant.Info);
    }
    if (this.labelType) {
        // source line 313, bytecode pc 257
        this.labelType.setString(_strType);
    }
},
    _reloadData_Fp: function(model) {
    var _fp, _smallIcon, _bg, _offset;
    // source line 320, bytecode pc 22
    this._checkModel(model, "getAttrNaked");
    // source line 322, bytecode pc 51
    (_fp = model.getAttrNaked(xs.Constant_AttrType_FightPoint));
    if (!this.fpLabel) {
        // source line 325, bytecode pc 102
        (this.fpLabel = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
        // source line 327, bytecode pc 143
        (_smallIcon = xs.Tools.UI.createEffectTypeSmallIcon(xs.Constant_AttrType_FightPoint));
        // source line 330, bytecode pc 185
        (_bg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
        // source line 331, bytecode pc 211
        _bg.setAnchorPoint(xs.ap_lb);
        // source line 333, bytecode pc 296
        (_offset = cc.p(((-xs.Cfg.Resource.Card.w / 2) + 15), ((xs.Cfg.Resource.Card.h / 2) + 15)));
        // source line 338, bytecode pc 368
        xs.Utils.Node.attachNodes(_bg, this.fpLabel, { desc: "c" }, this.Cfg.Constant.Info);
        // source line 341, bytecode pc 437
        xs.Utils.Node.attachNodes(_bg, _smallIcon, { desc: "lc" }, this.Cfg.Constant.Info);
        // source line 347, bytecode pc 512
        xs.Utils.Node.attachNodes(this, _bg, { desc: "c", offset: _offset }, this.Cfg.Constant.Info);
    }
    if (this.fpLabel) {
        // source line 351, bytecode pc 567
        this.fpLabel.setString(xs.Utils.floorSafe(_fp));
    }
},
    _reloadData_Hp: function(model) {
    var _pos;
    if (!this.hpView) {
        // source line 400, bytecode pc 61
        (this.hpView = xs.Views.HpProgressView.create({ type: "n_2" }));
        // source line 402, bytecode pc 90
        (_pos = cc.p(-25, -181));
        // source line 406, bytecode pc 173
        xs.Utils.Node.attachNodes(this, this.hpView, { desc: "cb", offset: _pos }, this.Cfg.Constant.Bg.Hp);
    }
},
    _reloadData_Lv: function(model) {
    var _lv, _offset0, _bg, _offset;
    // source line 421, bytecode pc 22
    this._checkModel(model, "getLevel");
    // source line 423, bytecode pc 40
    (_lv = model.getLevel());
    if (!this.lvLabel) {
        // source line 426, bytecode pc 91
        (this.lvLabel = xs.Factorys.Label.createByStyleId("LS_mainLv"));
        // source line 427, bytecode pc 177
        (_offset0 = cc.p(((-xs.Cfg.Resource.Card.w / 2) + 28), ((-xs.Cfg.Resource.Card.h / 2) + 28)));
        // source line 431, bytecode pc 260
        xs.Utils.Node.attachNodes(this, this.lvLabel, { desc: "c", offset: _offset0 }, this.Cfg.Constant.Bg.Lv_Text);
        // source line 435, bytecode pc 302
        (_bg = xs.Factorys.Sprite.create("card_lb_lv", "Cmn02"));
        // source line 436, bytecode pc 328
        _bg.setAnchorPoint(xs.ap_lb);
        // source line 437, bytecode pc 408
        (_offset = cc.p((-xs.Cfg.Resource.Card.w / 2), (-xs.Cfg.Resource.Card.h / 2)));
        // source line 441, bytecode pc 488
        xs.Utils.Node.attachNodes(this, _bg, { desc: "c", offset: _offset }, this.Cfg.Constant.Bg.Lv_Bg);
    }
    if (this.lvLabel) {
        // source line 445, bytecode pc 521
        this.lvLabel.setString(_lv);
    }
},
    _reloadData_Hint: function(model) {
    var _offset;
    // source line 451, bytecode pc 22
    this._checkModel(model, "isNew");
    if (!this.hintView) {
        // source line 455, bytecode pc 79
        (this.hintView = xs.Factorys.Sprite.create("card_rt_new", "Cmn02"));
        // source line 456, bytecode pc 108
        this.hintView.setAnchorPoint(xs.ap_rt);
        // source line 459, bytecode pc 186
        (_offset = cc.p((xs.Cfg.Resource.Card.w / 2), (xs.Cfg.Resource.Card.h / 2)));
        // source line 465, bytecode pc 264
        xs.Utils.Node.attachNodes(this, this.hintView, { desc: "c", offset: _offset }, this.Cfg.Constant.Info);
    }
    if (this.hintView) {
        // source line 470, bytecode pc 308
        this.hintView.setVisible(model.isNew());
    }
},
    _getLazyInitSurrenderView: function() {
    var _offset;
    if (!this.lazySurrenderView) {
        // source line 492, bytecode pc 56
        (this.lazySurrenderView = xs.Factorys.Sprite.create("card_rt_sur", "Cmn02"));
        // source line 493, bytecode pc 85
        this.lazySurrenderView.setAnchorPoint(xs.ap_rt);
        // source line 496, bytecode pc 169
        (_offset = cc.p(((xs.Cfg.Resource.Card.w / 2) + 10), ((xs.Cfg.Resource.Card.h / 2) + 15)));
        // source line 502, bytecode pc 247
        xs.Utils.Node.attachNodes(this, this.lazySurrenderView, { desc: "c", offset: _offset }, this.Cfg.Constant.Surrender);
    }
    // source line 505, bytecode pc 254
    return this.lazySurrenderView;
}
})));
// source line 520, bytecode pc 548
(xs.Views.Card.General.create = function(objCfg, viewCfg) {
    var _view, _cfgObj, arguments;
    // source line 520, bytecode pc 4
    (arguments = arguments);
    // source line 522, bytecode pc 39
    xs.assert((arguments.length <= 2), "xs.Views.Card.General no longer need model");
    // source line 524, bytecode pc 68
    (_view = new xs.Views.Card.General());
    // source line 526, bytecode pc 87
    (_cfgObj = (objCfg || {}));
    // source line 528, bytecode pc 111
    (_view.objCfg = (objCfg || {}));
    // source line 529, bytecode pc 135
    (_view.viewCfg = (viewCfg || {}));
    // source line 532, bytecode pc 159
    (_view.m_side = (_cfgObj.side || 0));
    // source line 533, bytecode pc 183
    (_view.hp = (_cfgObj.hp || false));
    // source line 538, bytecode pc 202
    _view.init(viewCfg);
    // source line 540, bytecode pc 228
    xs.Utils.makeDebugPoint(_view);
    // source line 541, bytecode pc 254
    xs.Utils.makeOriginal(_view);
    // source line 543, bytecode pc 258
    return _view;
});
