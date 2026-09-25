// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HpProgressView.js:1
// source line 341, bytecode pc 502
(xs.Views.HpProgressView = xs.Views.BaseView.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    body: null,
    bg: null,
    prg: null,
    prgExt: null,
    name: "xs.Views.HpProgressView",
    Cfg: {
        spriteBg: {
            s: { area: "Cmn01", frameName: "prg_blood_bg_s" },
            n: { area: "Cmn02", frameName: "Cmn02_hp_prg_01" }
        },
        spriteBody: {
            s: { area: "Cmn01", frameName: "prg_blood_body_s" },
            n: { area: "Cmn02", frameName: "Cmn02_hp_prg_03" },
            n_bot: { area: "Cmn02", frameName: "Cmn02_hp_prg_02" }
        },
        spriteFrame: { n: { area: "Cmn02", frameName: "Cmn02_hp_prg_04" } }
    },
    getPrg: function() {
    // source line 58, bytecode pc 6
    return this.prg;
},
    getPrgBot: function() {
    // source line 62, bytecode pc 6
    return this.prgExt;
},
    _initModel: function() {
    // source line 68, bytecode pc 7
    (this.hpCur = 1);
    // source line 69, bytecode pc 15
    (this.hpMax = 1);
},
    _updateHpByModel: function(model) {
    // source line 74, bytecode pc 26
    xs.assert(model, "updateHp,model is null");
    // source line 76, bytecode pc 53
    xs.log_zj("_updateHpByModel", model);
    if (((model.hpMax !== null) && (model.hpMax !== undefined))) {
        // source line 80, bytecode pc 103
        (this.hpMax = model.hpMax);
    }
    if (((model.hpCur !== null) && (model.hpCur !== undefined))) {
        // source line 85, bytecode pc 153
        (this.hpCur = model.hpCur);
    }
},
    _getPercent: function() {
    var _ret;
    // source line 93, bytecode pc 4
    (_ret = 0);
    if ((this.hpCur === this.hpMax)) {
        // source line 95, bytecode pc 28
        (_ret = 99);
    } else {
        // source line 98, bytecode pc 53
        (_ret = ((100 * this.hpCur) / this.hpMax));
    }
    // source line 103, bytecode pc 57
    return _ret;
},
    ctor: function() {
    // source line 109, bytecode pc 12
    this._super();
    // source line 110, bytecode pc 47
    cc.associateWithNative(this, xs.Views.BaseView);
},
    init: function(viewCfg) {
    var _spriteIdBg, _spriteIdBody, _spriteIdBody_bot, _spriteIdFrame;
    // source line 116, bytecode pc 12
    this._super();
    // source line 118, bytecode pc 27
    this.setCascadeOpacityEnabled(true);
    // source line 119, bytecode pc 42
    this.setCascadeColorEnabled(true);
    // source line 123, bytecode pc 55
    this._initModel();
    // source line 125, bytecode pc 93
    this.setAnchorPoint(cc.p(0.5, 1));
    // source line 127, bytecode pc 98
    (_spriteIdBg = null);
    // source line 128, bytecode pc 103
    (_spriteIdBody = null);
    // source line 129, bytecode pc 108
    (_spriteIdBody_bot = null);
    // source line 130, bytecode pc 113
    (_spriteIdFrame = null);
    if ((viewCfg.type === "n")) {
        // source line 134, bytecode pc 152
        (_spriteIdBg = this.Cfg.spriteBg.n);
        // source line 135, bytecode pc 172
        (_spriteIdBody = this.Cfg.spriteBody.n);
        // source line 136, bytecode pc 192
        (_spriteIdFrame = this.Cfg.spriteFrame.n);
    } else {
        if ((viewCfg.type === "n_2")) {
            // source line 139, bytecode pc 236
            (_spriteIdBg = this.Cfg.spriteBg.n);
            // source line 140, bytecode pc 256
            (_spriteIdBody = this.Cfg.spriteBody.n);
            // source line 141, bytecode pc 276
            (_spriteIdFrame = this.Cfg.spriteFrame.n);
            // source line 142, bytecode pc 296
            (_spriteIdBody_bot = this.Cfg.spriteBody.n_bot);
        } else {
            // source line 145, bytecode pc 321
            (_spriteIdBg = this.Cfg.spriteBg.s);
            // source line 146, bytecode pc 341
            (_spriteIdBody = this.Cfg.spriteBody.s);
        }
    }
    // source line 150, bytecode pc 392
    (this.bg = xs.Factorys.Sprite.create(_spriteIdBg.frameName, _spriteIdBg.area));
    // source line 151, bytecode pc 412
    this.bg.setCascadeOpacityEnabled(true);
    // source line 152, bytecode pc 432
    this.bg.setCascadeColorEnabled(true);
    // source line 153, bytecode pc 485
    xs.Utils.Node.attachNodes(this, this.bg, { desc: "lb" });
    // source line 154, bytecode pc 514
    this.bg.getTexture().setAntiAliasTexParameters();
    // source line 158, bytecode pc 565
    (this.body = xs.Factorys.Sprite.create(_spriteIdBody.frameName, _spriteIdBody.area));
    // source line 159, bytecode pc 585
    this.body.setCascadeOpacityEnabled(true);
    // source line 160, bytecode pc 605
    this.body.setCascadeColorEnabled(true);
    // source line 161, bytecode pc 634
    this.body.getTexture().setAntiAliasTexParameters();
    // source line 165, bytecode pc 669
    (this.prg = cc.ProgressTimer.create(this.body));
    // source line 166, bytecode pc 698
    this.prg.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 167, bytecode pc 745
    this.prg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 168, bytecode pc 784
    this.prg.setMidpoint(cc.p(0, 0));
    // source line 169, bytecode pc 823
    this.prg.setBarChangeRate(cc.p(1, 0));
    // source line 170, bytecode pc 910
    this.prg.setPosition(cc.p((this.bg.getContentSize().width / 2), (this.bg.getContentSize().height / 2)));
    // source line 171, bytecode pc 930
    this.prg.setCascadeOpacityEnabled(true);
    // source line 172, bytecode pc 950
    this.prg.setCascadeColorEnabled(true);
    if (_spriteIdBody_bot) {
        // source line 181, bytecode pc 1009
        (this.bodyExt = xs.Factorys.Sprite.create(_spriteIdBody_bot.frameName, _spriteIdBody_bot.area));
        // source line 182, bytecode pc 1029
        this.bodyExt.setCascadeOpacityEnabled(true);
        // source line 183, bytecode pc 1049
        this.bodyExt.setCascadeColorEnabled(true);
        // source line 184, bytecode pc 1078
        this.bodyExt.getTexture().setAntiAliasTexParameters();
        // source line 186, bytecode pc 1113
        (this.prgExt = cc.ProgressTimer.create(this.bodyExt));
        // source line 187, bytecode pc 1133
        this.prgExt.setCascadeOpacityEnabled(true);
        // source line 188, bytecode pc 1153
        this.prgExt.setCascadeColorEnabled(true);
        // source line 189, bytecode pc 1182
        this.prgExt.setType(cc.PROGRESS_TIMER_TYPE_BAR);
        // source line 190, bytecode pc 1229
        this.prgExt.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 191, bytecode pc 1268
        this.prgExt.setMidpoint(cc.p(0, 0));
        // source line 192, bytecode pc 1307
        this.prgExt.setBarChangeRate(cc.p(1, 0));
        // source line 193, bytecode pc 1394
        this.prgExt.setPosition(cc.p((this.bg.getContentSize().width / 2), (this.bg.getContentSize().height / 2)));
        // source line 195, bytecode pc 1452
        xs.Utils.Node.attachNodes(this.bg, this.prgExt, { desc: "c" });
        // source line 197, bytecode pc 1483
        this.prgExt.setPercentage(this._getPercent());
    }
    // source line 201, bytecode pc 1541
    xs.Utils.Node.attachNodes(this.bg, this.prg, { desc: "c" });
    if (_spriteIdFrame) {
        // source line 205, bytecode pc 1600
        (this.m_spriteFrame = xs.Factorys.Sprite.create(_spriteIdFrame.frameName, _spriteIdFrame.area));
        // source line 206, bytecode pc 1629
        this.m_spriteFrame.setAnchorPoint(xs.ap_lb);
        // source line 207, bytecode pc 1658
        this.m_spriteFrame.getTexture().setAntiAliasTexParameters();
        // source line 208, bytecode pc 1716
        xs.Utils.Node.attachNodes(this.bg, this.m_spriteFrame, { desc: "lb" });
    }
    // source line 212, bytecode pc 1747
    this.prg.setPercentage(this._getPercent());
},
    setBaseColor: function(c3c) {
    // source line 223, bytecode pc 27
    this.getPrg().setColor(c3c);
    // source line 224, bytecode pc 55
    this.getPrgBot().setColor(c3c);
},
    updateHp: function(cur, max) {
    var _model;
    // source line 231, bytecode pc 25
    (_model = { hpCur: cur, hpMax: max });
    // source line 233, bytecode pc 42
    this._updateHpByModel(_model);
    // source line 234, bytecode pc 73
    this.prg.setPercentage(this._getPercent());
    if (this.prgExt) {
        // source line 237, bytecode pc 115
        this.prgExt.setPercentage(this._getPercent());
    }
},
    createUpdatePercentageAction: function(dp) {
    var _p, _action;
    // source line 243, bytecode pc 15
    (_p = this._getPercent());
    // source line 249, bytecode pc 48
    (_action = cc.ProgressTo.create(dp, _p));
    // source line 252, bytecode pc 87
    return cc.TargetedAction.create(this.getPrg(), _action);
},
    createUpdateAction: function(dp, model, view) {
    var _p, _action;
    // source line 257, bytecode pc 4
    (_p = 0);
    if ((model.hpCur === model.hpMax)) {
        // source line 259, bytecode pc 32
        (_p = 99);
    } else {
        // source line 262, bytecode pc 61
        (_p = ((100 * model.hpCur) / model.hpMax));
    }
    // source line 268, bytecode pc 94
    (_action = cc.ProgressTo.create(dp, _p));
    // source line 273, bytecode pc 124
    return cc.TargetedAction.create(view, _action);
},
    createUpdatePercentageAction_Bot: function(dp) {
    var _p, _action;
    // source line 277, bytecode pc 15
    (_p = this._getPercent());
    // source line 283, bytecode pc 48
    (_action = cc.ProgressTo.create(dp, _p));
    // source line 286, bytecode pc 87
    return cc.TargetedAction.create(this.getPrgBot(), _action);
},
    createUpdateHpAction_onHit: function(hp_lose, hp_max, dp) {
    var _tmpHpCur, _model;
    // source line 298, bytecode pc 13
    (_tmpHpCur = (this.hpCur - hp_lose));
    if ((_tmpHpCur < 0)) {
        // source line 300, bytecode pc 28
        (_tmpHpCur = 0);
    }
    // source line 305, bytecode pc 54
    (_model = { hpCur: _tmpHpCur, hpMax: hp_max });
    // source line 310, bytecode pc 71
    this._updateHpByModel(_model);
    // source line 312, bytecode pc 105
    return this.createUpdateAction(dp, _model, this.getPrg());
},
    createUpdateHpAction_onOver: function(hp_cur, hp_max, dp) {
    var _model;
    // source line 324, bytecode pc 25
    (_model = { hpCur: hp_cur, hpMax: hp_max });
    // source line 329, bytecode pc 42
    this._updateHpByModel(_model);
    // source line 334, bytecode pc 147
    return xs.Utils.Action.combineSpawn([
    this.createUpdateAction(0, _model, this.getPrg()),
    this.createUpdateAction(dp, _model, this.getPrgBot())
]);
},
    createUpdateHpActions: function(data) {
    var _param, _dp, _input, _data, _model, _loopIdx, _stack, _hpFromStack, _tmpHpCur, _actions;
    // source line 349, bytecode pc 11
    (_param = data.data);
    // source line 350, bytecode pc 23
    (_dp = data.dp);
    // source line 351, bytecode pc 35
    (_input = data.input);
    // source line 352, bytecode pc 47
    (_data = _input.params);
    // source line 353, bytecode pc 57
    (_model = {});
    // source line 354, bytecode pc 69
    (_loopIdx = _input.loopIdx);
    if ((_param.useStack === true)) {
        // source line 359, bytecode pc 101
        (_stack = _input.itemStack.hp);
        if ((_loopIdx >= _stack.length)) {
            // source line 362, bytecode pc 123
            (_loopIdx = 0);
        }
        // source line 364, bytecode pc 141
        (_hpFromStack = (_stack[_loopIdx] || 0));
        // source line 366, bytecode pc 184
        xs.log_zj("in hp", [ _hpFromStack, _stack ]);
        if ((_param.add === true)) {
            // source line 370, bytecode pc 217
            (_tmpHpCur = (this.hpCur + _hpFromStack));
            if ((_tmpHpCur > this.hpMax)) {
                // source line 372, bytecode pc 242
                (_tmpHpCur = this.hpMax);
            }
        } else {
            // source line 376, bytecode pc 261
            (_tmpHpCur = (this.hpCur - _hpFromStack));
            if ((_tmpHpCur < 0)) {
                // source line 378, bytecode pc 276
                (_tmpHpCur = 0);
            }
        }
        // source line 382, bytecode pc 299
        this.log("useStack-hpCur", _tmpHpCur);
        // source line 384, bytecode pc 311
        (_model.hpCur = _tmpHpCur);
        // source line 385, bytecode pc 328
        (_model.hpMax = _data.hpMax);
    } else {
        // source line 392, bytecode pc 350
        (_model.hpCur = _data.hpCur);
        // source line 393, bytecode pc 367
        (_model.hpMax = _data.hpMax);
    }
    // source line 398, bytecode pc 376
    (_actions = []);
    if ((_param.type === "bot")) {
        // source line 402, bytecode pc 455
        xs.log_zj("hp-bot-model", { cur: this.hpCur, max: this.hpMax, toModel: _model });
        // source line 404, bytecode pc 504
        _actions.push(this.createUpdateAction(_dp, _model, this.getPrgBot()));
    } else {
        if ((_param.type === "top")) {
            // source line 410, bytecode pc 588
            xs.log_zj("hp-top-model", { cur: this.hpCur, max: this.hpMax, toModel: _model });
            // source line 413, bytecode pc 637
            _actions.push(this.createUpdateAction(_dp, _model, this.getPrg()));
        } else {
            // source line 417, bytecode pc 667
            xs.assert(false, "hp update type");
        }
    }
    // source line 420, bytecode pc 694
    xs.log_zj("createUpdateHpActions _model", _model);
    // source line 424, bytecode pc 711
    this._updateHpByModel(_model);
    // source line 426, bytecode pc 742
    return xs.Utils.Action.combineSequence(_actions);
}
}));
// source line 440, bytecode pc 528
(xs.Views.HpProgressView.create = function(viewCfg) {
    var _viewCfg, _view;
    // source line 445, bytecode pc 18
    (_viewCfg = (viewCfg || {}));
    // source line 447, bytecode pc 42
    (_view = new xs.Views.HpProgressView());
    // source line 449, bytecode pc 61
    _view.init(viewCfg);
    // source line 451, bytecode pc 105
    _view.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 453, bytecode pc 122
    _view.setVisible(true);
    if (_viewCfg.pos) {
        // source line 456, bytecode pc 159
        _view.setPosition(viewCfg.pos);
    }
    // source line 460, bytecode pc 185
    xs.Utils.makeDebugPoint(_view);
    // source line 461, bytecode pc 211
    xs.Utils.makeOriginal(_view);
    // source line 463, bytecode pc 215
    return _view;
});
