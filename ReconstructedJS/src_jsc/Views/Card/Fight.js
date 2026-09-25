// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Card/Fight.js:1
// source line 1329, bytecode pc 2301
(xs.Views.Card.Fight = (xs.Views.Card.Fight || xs.Views.BaseView.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Views.Card.Fight",
    body_s: null,
    body_m: null,
    bgSprite: null,
    bgSprite1: null,
    bgSprite2: null,
    hp: null,
    spriteMask: null,
    viewCfg: null,
    Cfg: {
        Constant: {
            Body_Move: {
                zOrder: 1,
                tag: 1,
                Tmp: { zOrder: 10000, tag: 10000 },
                Bg: { zOrder: 1, tag: 1, Hp: { zOrder: 1000, tag: 1000 } }
            },
            Body_Static: { zOrder: 20, tag: 20, Tmp: { zOrder: 1, tag: 1 } },
            ArmEffect: { zOrder: 201, tag: 201 }
        },
        StatusMap: {
            le: { boneName: "le", armId: "Arm_Fight_Status" },
            feng: { boneName: "feng", armId: "Arm_Fight_Status" },
            yun: { boneName: "yun", armId: "Arm_Fight_Status_Yun" },
            fu: { boneName: "fu", armId: "Arm_Fight_Status_Fu" },
            card_back: { boneName: "card_back", armId: "Arm_Fight_Status_JuShou" },
            nuyan: { boneName: "nuyan", armId: "Arm_Fight_Status_Nuyan" },
            xuechi: { boneName: "xuechi", armId: "Arm_Fight_Status_XueChi" },
            tiannian01: { boneName: "tiannian01", armId: "Arm_Fight_Status_TianNian" },
            tiannian02: { boneName: "tiannian02", armId: "Arm_Fight_Status_TianNian" },
            tiannian03: { boneName: "tiannian03", armId: "Arm_Fight_Status_TianNian" },
            tiannian04: { boneName: "tiannian04", armId: "Arm_Fight_Status_TianNian" },
            tiannian05: { boneName: "tiannian05", armId: "Arm_Fight_Status_TianNian" },
            dun01: { boneName: "dun01", armId: "Arm_Fight_Status_GuiXin" },
            dun02: { boneName: "dun02", armId: "Arm_Fight_Status_GuiXin" },
            dun03: { boneName: "dun03", armId: "Arm_Fight_Status_GuiXin" },
            dun04: { boneName: "dun04", armId: "Arm_Fight_Status_GuiXin" },
            dun05: { boneName: "dun05", armId: "Arm_Fight_Status_GuiXin" },
            tiannian: { boneName: "tiannian", armId: "Arm_Fight_Status_TianNian" },
            x: { boneName: "x", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong: { boneName: "xiaoyong", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong01: { boneName: "xiaoyong_01", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong02: { boneName: "xiaoyong_02", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong03: { boneName: "xiaoyong_03", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong04: { boneName: "xiaoyong_04", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong05: { boneName: "xiaoyong_05", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong06: { boneName: "xiaoyong_06", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong07: { boneName: "xiaoyong_07", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong08: { boneName: "xiaoyong_08", armId: "Arm_Fight_Status_XiaoYong" },
            xiaoyong09: { boneName: "xiaoyong_09", armId: "Arm_Fight_Status_XiaoYong" },
            zaiqi: { boneName: "zaiqi", armId: "Arm_Fight_Status_ZaiQi" },
            juejing: { boneName: "juejing", armId: "Arm_Fight_Status_JueJing" },
            fangong: { boneName: "fangong", armId: "Arm_Fight_Status_FanGong" },
            pojia: { boneName: "pojia", armId: "Arm_Fight_Status_PoJia" },
            xuruo: { boneName: "xuruo", armId: "Arm_Fight_Status_XuRuo" },
            zhuiji: { boneName: "zhuiji", armId: "Arm_Fight_Status_ZhuiJi" },
            qinyin: { boneName: "qinyin", armId: "Arm_Fight_Status_QinYin" },
            star: { boneName: "fw_star", armId: "Arm_Fight_Status_Star" },
            star01: { boneName: "fw_01", armId: "Arm_Fight_Status_Star" },
            star02: { boneName: "fw_02", armId: "Arm_Fight_Status_Star" },
            star03: { boneName: "fw_03", armId: "Arm_Fight_Status_Star" },
            star04: { boneName: "fw_04", armId: "Arm_Fight_Status_Star" },
            star05: { boneName: "fw_05", armId: "Arm_Fight_Status_Star" },
            star06: { boneName: "fw_06", armId: "Arm_Fight_Status_Star" },
            star07: { boneName: "fw_07", armId: "Arm_Fight_Status_Star" },
            star08: { boneName: "fw_08", armId: "Arm_Fight_Status_Star" },
            star09: { boneName: "fw_09", armId: "Arm_Fight_Status_Star" }
        }
    },
    getCfg_ArmEffect: function() {
    // source line 263, bytecode pc 16
    return this.Cfg.Constant.ArmEffect;
},
    ctor: function() {
    // source line 268, bytecode pc 12
    this._super();
    // source line 269, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    getStatus: function(statusId) {
    // source line 273, bytecode pc 10
    return this.status[statusId];
},
    setStatus: function(statusId, arm) {
    // source line 277, bytecode pc 13
    return (this.status[statusId] = arm);
},
    setVisibleAble: function(flag) {
    // source line 281, bytecode pc 9
    (this.m_bVisibleAble = flag);
},
    getVisibleAble: function() {
    // source line 285, bytecode pc 6
    return this.m_bVisibleAble;
},
    revertPosition: function() {
    var _posX, _posY;
    // source line 289, bytecode pc 15
    (_posX = this.makeHeadPosX());
    // source line 290, bytecode pc 31
    (_posY = this.makeHeadPosY());
    // source line 296, bytecode pc 52
    this.setPosition(_posX, _posY);
},
    setVisible: function(flag) {
    if (flag) {
        if (this.m_bVisibleAble) {
            // source line 307, bytecode pc 35
            this._super(flag);
        }
    } else {
        // source line 311, bytecode pc 57
        this._super(flag);
    }
},
    createHurtHitHigherAction: function(data) {
    var _input, _data, _view, _arrActions, _idx, _y0, _y1, _action_0, _action_1;
    // source line 320, bytecode pc 11
    (_input = data.input);
    // source line 321, bytecode pc 23
    (_data = data.data);
    // source line 323, bytecode pc 52
    xs.dump("_input", _input, 1);
    // source line 324, bytecode pc 79
    xs.dump("_data", _data);
    // source line 326, bytecode pc 91
    (_view = _input.itemView);
    // source line 328, bytecode pc 100
    (_arrActions = []);
    if (!xs.test_idx) {
        // source line 331, bytecode pc 128
        (xs.test_idx = 0);
    }
    // source line 334, bytecode pc 142
    (_idx = xs.test_idx);
    // source line 336, bytecode pc 155
    (_y0 = (20 + (_idx * 10)));
    // source line 337, bytecode pc 168
    (_y1 = (-10 + (_idx * 10)));
    // source line 341, bytecode pc 230
    (_action_0 = cc.MoveBy.create((4 / xs.fps), cc.p(0, _y0)));
    // source line 346, bytecode pc 292
    (_action_1 = cc.MoveBy.create((4 / xs.fps), cc.p(0, _y1)));
    // source line 349, bytecode pc 311
    _arrActions.push(_action_0);
    // source line 350, bytecode pc 330
    _arrActions.push(_action_1);
    // source line 355, bytecode pc 361
    return xs.Utils.Action.combineSequence(_arrActions);
},
    createLeaveAction: function() {
    var _action, _ret;
    // source line 360, bytecode pc 8
    (_action = []);
    // source line 364, bytecode pc 69
    _action.push(cc.TargetedAction.create(this, cc.Hide.create()));
    // source line 372, bytecode pc 125
    _action.push(cc.CallFunc.create(function() {
    // source line 371, bytecode pc 14
    this.setVisibleAble(false);
}.bind(this)));
    // source line 376, bytecode pc 159
    (_ret = xs.Utils.Action.combineSequence(_action));
    // source line 377, bytecode pc 163
    return _ret;
},
    createTemporaryVisableAction: function(data) {
    var _action, _ret;
    if ((data.data.num == 0)) {
        // source line 383, bytecode pc 38
        (this.canvisable = this.getVisibleAble());
        if (this.canvisable) {
            // source line 385, bytecode pc 51
            return void 0;
        }
        // source line 388, bytecode pc 60
        (_action = []);
        // source line 392, bytecode pc 121
        _action.push(cc.TargetedAction.create(this, cc.Show.create()));
        // source line 400, bytecode pc 177
        _action.push(cc.CallFunc.create(function() {
    // source line 399, bytecode pc 14
    this.setVisibleAble(true);
}.bind(this)));
        // source line 404, bytecode pc 211
        (_ret = xs.Utils.Action.combineSequence(_action));
        // source line 405, bytecode pc 215
        return _ret;
    } else {
        if ((data.data.num == 1)) {
            if (this.canvisable) {
                // source line 408, bytecode pc 253
                return void 0;
            }
            // source line 411, bytecode pc 262
            (_action = []);
            // source line 415, bytecode pc 323
            _action.push(cc.TargetedAction.create(this, cc.Hide.create()));
            // source line 423, bytecode pc 379
            _action.push(cc.CallFunc.create(function() {
    // source line 422, bytecode pc 14
    this.setVisibleAble(false);
}.bind(this)));
            // source line 427, bytecode pc 413
            (_ret = xs.Utils.Action.combineSequence(_action));
            // source line 428, bytecode pc 417
            return _ret;
        }
    }
},
    createStartStatusActions: function(data) {
    var _statusId, _baseDp, _statusCfg, _arrActions, _arm, _bone, _actionBegin, _actionStatus, _ret;
    // source line 434, bytecode pc 24
    this.log("createStartStatusActions", "begin");
    // source line 436, bytecode pc 41
    (_statusId = data.data.statusId);
    // source line 437, bytecode pc 60
    (_baseDp = (data.dp || 1));
    // source line 442, bytecode pc 79
    (_statusCfg = this.Cfg.StatusMap[_statusId]);
    // source line 444, bytecode pc 110
    xs.assert(_statusCfg, "_statusCfg err", _statusId);
    // source line 447, bytecode pc 119
    (_arrActions = []);
    // source line 451, bytecode pc 139
    (_arm = this.getStatus(_statusId));
    // source line 453, bytecode pc 158
    (_bone = this.statusBones[_statusCfg.boneName]);
    // source line 470, bytecode pc 243
    _arrActions.push(cc.CallFunc.create(function(sender, ___param) {
    var _bone, _arm;
    // source line 462, bytecode pc 6
    (_bone = this[0]);
    // source line 463, bytecode pc 13
    (_arm = this[1]);
    // source line 466, bytecode pc 32
    _bone.changeDisplayWithIndex(1, true);
}.bind([ _bone, _arm ]), xs.unuse_this));
    // source line 480, bytecode pc 313
    (_actionBegin = xs.Factorys.Armature.createPlayActions(_arm, _statusCfg.armId, ((_statusId + "_") + "begin"), {}, _baseDp));
    // source line 489, bytecode pc 389
    (_actionStatus = xs.Factorys.Armature.createPlayActions(_arm, _statusCfg.armId, ((_statusId + "_") + "status"), { loop: true }, _baseDp));
    // source line 492, bytecode pc 408
    _arrActions.push(_actionBegin);
    // source line 493, bytecode pc 427
    _arrActions.push(_actionStatus);
    // source line 495, bytecode pc 461
    (_ret = xs.Utils.Action.combineSequence(_arrActions));
    // source line 499, bytecode pc 486
    this.log("createStartStatusActions", "end");
    // source line 501, bytecode pc 490
    return _ret;
},
    createCancelStatusActions: function(data) {
    var _statusId, _arm, _baseDp, _statusCfg, _arrActions, _actionCancel, _bone, _ret;
    // source line 506, bytecode pc 24
    this.log("createCancelStatusActions", "begin");
    // source line 508, bytecode pc 41
    (_statusId = data.data.statusId);
    // source line 509, bytecode pc 61
    (_arm = this.getStatus(_statusId));
    if (!_arm) {
        // source line 515, bytecode pc 72
        return null;
    }
    // source line 518, bytecode pc 91
    (_baseDp = (data.dp || 1));
    // source line 520, bytecode pc 110
    (_statusCfg = this.Cfg.StatusMap[_statusId]);
    // source line 524, bytecode pc 119
    (_arrActions = []);
    // source line 532, bytecode pc 189
    (_actionCancel = xs.Factorys.Armature.createPlayActions(_arm, _statusCfg.armId, ((_statusId + "_") + "end"), {}, _baseDp));
    // source line 534, bytecode pc 208
    _arrActions.push(_actionCancel);
    // source line 539, bytecode pc 227
    (_bone = this.statusBones[_statusCfg.boneName]);
    // source line 552, bytecode pc 296
    _arrActions.push(cc.CallFunc.create(function(sender, data) {
    var _bone;
    // source line 544, bytecode pc 4
    (_bone = this);
    // source line 546, bytecode pc 23
    _bone.changeDisplayWithIndex(0, true);
}.bind(_bone), xs.unuse_this));
    // source line 556, bytecode pc 330
    (_ret = xs.Utils.Action.combineSequence(_arrActions));
    // source line 557, bytecode pc 334
    return _ret;
},
    revert_head: function() {
    // source line 562, bytecode pc 21
    this.skin.setOpacity(255);
    // source line 563, bytecode pc 54
    this.getHp().body.setOpacity(255);
    // source line 564, bytecode pc 87
    this.getHp().bg.setOpacity(255);
},
    createDisappearActions: function(data) {
    var _arrActions, _dp, _fadeOutAction, _ret;
    // source line 570, bytecode pc 24
    this.log("createDisappearActions", "begin");
    // source line 572, bytecode pc 47
    this.dump("createDisappearActions 111", this, 1);
    // source line 574, bytecode pc 56
    (_arrActions = []);
    // source line 575, bytecode pc 68
    (_dp = data.dp);
    // source line 577, bytecode pc 97
    (_fadeOutAction = cc.FadeOut.create(_dp));
    // source line 587, bytecode pc 308
    _arrActions.push(cc.Spawn.create.apply(cc.Spawn, [
    cc.TargetedAction.create(this.skin, _fadeOutAction),
    cc.TargetedAction.create(this.getHp().body, _fadeOutAction.clone()),
    cc.TargetedAction.create(this.getHp().bg, _fadeOutAction.clone())
]));
    // source line 604, bytecode pc 409
    _arrActions.push(cc.CallFunc.create(function(sender, side) {
    var _param;
    // source line 596, bytecode pc 4
    (_param = this);
    // source line 597, bytecode pc 33
    _param.env.updateBackupNum(_param.side);
}.bind({ env: data.input.para.env, side: this.side }), xs));
    // source line 608, bytecode pc 454
    (_ret = cc.Sequence.create.apply(cc.Sequence, _arrActions));
    // source line 610, bytecode pc 479
    this.log("createDisappearActions", "end");
    // source line 612, bytecode pc 483
    return _ret;
},
    createGhostView: function() {
    var _viewCfg, _ghost;
    // source line 627, bytecode pc 31
    (_viewCfg = xs.Utils.clone(this.viewCfg));
    // source line 628, bytecode pc 41
    (_viewCfg.ghost = true);
    // source line 634, bytecode pc 101
    (_ghost = xs.Views.Card.Fight.createWithSideIdx(this.side, this.idx, this.model, _viewCfg));
    // source line 637, bytecode pc 127
    _ghost.arm.setOpacity(178.5);
    // source line 639, bytecode pc 131
    return _ghost;
},
    createGhostViewOther: function(armId) {
    var _viewCfg, _ghost;
    // source line 646, bytecode pc 31
    (_viewCfg = xs.Utils.clone(this.viewCfg));
    // source line 647, bytecode pc 41
    (_viewCfg.ghost = true);
    // source line 654, bytecode pc 105
    (_ghost = xs.Views.Card.Fight.createWithSideIdxByOtherArm(this.side, this.idx, this.model, _viewCfg, armId));
    // source line 657, bytecode pc 131
    _ghost.arm.setOpacity(178.5);
    // source line 659, bytecode pc 135
    return _ghost;
},
    getSkin: function() {
    // source line 666, bytecode pc 29
    xs.assert(this.skin, "--297");
    // source line 667, bytecode pc 36
    return this.skin;
},
    getNodeRGBA: function() {
    // source line 672, bytecode pc 6
    return this.bgSprite;
},
    getHp: function() {
    var _ret;
    if ((this.viewCfg.head === true)) {
        // source line 680, bytecode pc 42
        (_ret = this.skin.getHp());
    } else {
        // source line 683, bytecode pc 77
        xs.assert(this.skin, "--307");
        // source line 684, bytecode pc 98
        (_ret = this.skin.getHp());
        // source line 685, bytecode pc 128
        xs.assert(this.skin, "--309");
    }
    // source line 688, bytecode pc 132
    return _ret;
},
    _createBodySkin: function() {
    var _model, _generalView;
    // source line 698, bytecode pc 41
    (_model = xs.Models.General.createWithBase(this.model.id));
    // source line 699, bytecode pc 63
    _model.setSide(this.side);
    // source line 700, bytecode pc 90
    (_model.evolution_image_status = (this.model.evolution_image_status || false));
    // source line 701, bytecode pc 120
    (_generalView = _model.createCard_FightSkin(this.viewCfg.body_skin));
    // source line 702, bytecode pc 137
    _generalView.setCascadeOpacityEnabled(true);
    // source line 704, bytecode pc 176
    _generalView.updateHp(this.model.hpCur, this.model.hpMax);
    // source line 705, bytecode pc 180
    return _generalView;
},
    _createBodySkin_shadow: function() {
    var _model, _generalView;
    // source line 714, bytecode pc 41
    (_model = xs.Models.General.createWithBase(this.model.id));
    // source line 715, bytecode pc 63
    _model.setSide(this.side);
    // source line 716, bytecode pc 90
    (_model.evolution_image_status = (this.model.evolution_image_status || false));
    // source line 717, bytecode pc 120
    (_generalView = _model.createCard_Grade(this.viewCfg.body_skin));
    // source line 718, bytecode pc 137
    _generalView.setCascadeOpacityEnabled(true);
    // source line 720, bytecode pc 141
    return _generalView;
},
    removeSkin: function() {
},
    _createBodyAndAdd: function() {
    // source line 737, bytecode pc 27
    (this.body_s = cc.NodeRGBA.create());
    // source line 738, bytecode pc 97
    xs.Utils.Node.attachNodes(this, this.body_s, { desc: "c" }, this.Cfg.Constant.Body_Static);
    if ((this.side === 1)) {
        // source line 744, bytecode pc 149
        this.body_s.setScaleX((this.body_s.getScaleX() * -1));
    }
    // source line 747, bytecode pc 177
    (this.body_m = cc.NodeRGBA.create());
    // source line 748, bytecode pc 247
    xs.Utils.Node.attachNodes(this, this.body_m, { desc: "c" }, this.Cfg.Constant.Body_Move);
},
    createBoneStatus: function() {
    var _statucMap, _i, _boneName, _armId, _bone, _arm;
    // source line 758, bytecode pc 14
    (_statucMap = this.Cfg.StatusMap);
    // source line 760, bytecode pc 45
    xs.assert(!this.statusBones, "this.statusBones");
    // source line 761, bytecode pc 58
    (this.statusBones = {});
    for (var _i in _statucMap) {
        if (!(_statucMap.hasOwnProperty(_i))) continue;
        // source line 764, bytecode pc 133
        xs.log("------- boneName = ", _statucMap[_i].boneName);
        // source line 765, bytecode pc 149
        (_boneName = _statucMap[_i].boneName);
        // source line 766, bytecode pc 165
        (_armId = _statucMap[_i].armId);
        // source line 767, bytecode pc 190
        (_bone = this.arm.getBone(_boneName));
        if (_bone) {
            // source line 773, bytecode pc 237
            _bone.addDisplay(cc.Node.create(), 0);
            // source line 775, bytecode pc 276
            (_arm = xs.Views.Armature.AutoAudioArmature.create(_armId));
            // source line 786, bytecode pc 297
            this.setStatus(_i, _arm);
            // source line 788, bytecode pc 318
            _bone.addDisplay(_arm, 1);
            // source line 790, bytecode pc 337
            _bone.changeDisplayWithIndex(0, true);
            // source line 794, bytecode pc 351
            (this.statusBones[_boneName] = _bone);
            if ((this.side === 1)) {
                // source line 797, bytecode pc 382
                _bone.setScaleX(-1);
            }
        } else {
            // source line 802, bytecode pc 412
            xs.assert(false, "no status bone");
        }
    }
},
    setBaseColor: function(c3c) {
    // source line 815, bytecode pc 21
    this.arm.setColor(c3c);
    // source line 816, bytecode pc 49
    this.getHp().setBaseColor(c3c);
},
    updateSkin: function() {
    // source line 822, bytecode pc 18
    (this.skin = this._createBodySkin());
    // source line 824, bytecode pc 48
    xs.assert(this.skin, "this.skin is null");
    // source line 829, bytecode pc 79
    this.arm.replaceSkinByBoneKey("card", this.skin);
    // source line 832, bytecode pc 116
    this.arm.replaceSkinByBoneKey("shadow0", this._createBodySkin_shadow());
    // source line 833, bytecode pc 153
    this.arm.replaceSkinByBoneKey("shadow1", this._createBodySkin_shadow());
    // source line 834, bytecode pc 190
    this.arm.replaceSkinByBoneKey("shadow2", this._createBodySkin_shadow());
},
    updateSkinOther: function() {
    // source line 845, bytecode pc 18
    (this.skin = this._createBodySkin());
    // source line 847, bytecode pc 48
    xs.assert(this.skin, "this.skin is null");
    // source line 848, bytecode pc 79
    this.arm.replaceSkinByBoneKey("card", this.skin);
},
    playAni: function(aniId, control) {
    var _control;
    // source line 856, bytecode pc 18
    (_control = (control || {}));
    // source line 858, bytecode pc 48
    xs.assert(this.arm, "this.arm is null");
    // source line 860, bytecode pc 70
    this.arm.playAniById(aniId);
},
    createPlayAniAction: function(key_ani, speed) {
    var _speed, _control, _action;
    // source line 884, bytecode pc 13
    (_speed = (speed || 1));
    if (!this.arm) {
        // source line 887, bytecode pc 52
        xs.error("this.arm is null,ignore", key_ani);
        // source line 888, bytecode pc 54
        return null;
    }
    // source line 891, bytecode pc 72
    (_control = { speed: speed });
    // source line 895, bytecode pc 101
    (_action = this.arm.createPlayAction(key_ani, _control));
    // source line 898, bytecode pc 105
    return _action;
},
    createPlayAniActions: function(outterData) {
    var _control, action, events, eventsCfg, _i, _actionNames, _j, _name;
    if (!this.arm) {
        // source line 907, bytecode pc 40
        xs.error("FightScene", "this.arm is null,ignore ");
        // source line 908, bytecode pc 42
        return null;
    }
    // source line 917, bytecode pc 65
    (_control = { speed: outterData.dp });
    // source line 921, bytecode pc 104
    (action = this.arm.createPlayAction(outterData.data.aniId, _control));
    // source line 932, bytecode pc 109
    (events = null);
    if ((outterData.data.events && true)) {
        // source line 934, bytecode pc 144
        (events = {});
        // source line 935, bytecode pc 161
        (eventsCfg = outterData.data.events);
        for (var _i in eventsCfg) {
            if (!(eventsCfg.hasOwnProperty(_i))) continue;
            // source line 942, bytecode pc 214
            (events[_i] = {});
            // source line 944, bytecode pc 230
            (_actionNames = eventsCfg[_i].actions);
            for (var _j in _actionNames) {
                if (!(_actionNames.hasOwnProperty(_j))) continue;
                // source line 948, bytecode pc 280
                (_name = _actionNames[_j]);
                // source line 951, bytecode pc 309
                (events[_i][_j] = outterData.input.listeners[_name]);
            }
        }
        // source line 981, bytecode pc 399
        this.arm.getAnimation().setFrameEventCallFunc(function(bone, frameEventName, originFrameIndex, currentFrameIndex) {
    var _event, _actions, _i;
    // source line 961, bytecode pc 13
    (_event = this.events[frameEventName]);
    if (_event) {
        // source line 964, bytecode pc 30
        (_actions = []);
        for (var _i in _event) {
            if (!(_event.hasOwnProperty(_i))) continue;
            if (!(_event[_i])) continue;
            // source line 967, bytecode pc 104
            _actions.push(_event[_i]);
        }
        // source line 972, bytecode pc 161
        this.who.runAction(xs.Utils.Action.combineSpawn(_actions));
    }
}.bind({ who: this.arm, events: events }), this);
    }
    // source line 985, bytecode pc 403
    return action;
},
    _reloadData_armById: function(id) {
    if (this.arm) {
        // source line 993, bytecode pc 28
        this.arm.removeFromParent();
    }
    // source line 996, bytecode pc 70
    (this.arm = xs.Views.Armature.AutoAudioArmature.create(id));
    // source line 998, bytecode pc 150
    xs.Utils.Node.attachNodes(this.body_s, this.arm, { desc: "lb" }, this.Cfg.Constant.Body_Move.Bg);
    // source line 1000, bytecode pc 163
    this.updateSkinOther();
},
    createPlayOtherArmActions: function(outterData) {
    var _control, action, events, eventsCfg, _i, _actionNames, _j, _name;
    if (!this.arm) {
        // source line 1014, bytecode pc 40
        xs.error("FightScene", "this.arm is null,ignore ");
        // source line 1015, bytecode pc 42
        return null;
    }
    // source line 1024, bytecode pc 65
    (_control = { speed: outterData.dp });
    // source line 1028, bytecode pc 104
    (action = this.arm.createPlayAction(outterData.data.aniId, _control));
    // source line 1041, bytecode pc 109
    (events = null);
    if ((outterData.data.events && true)) {
        // source line 1043, bytecode pc 144
        (events = {});
        // source line 1044, bytecode pc 161
        (eventsCfg = outterData.data.events);
        for (var _i in eventsCfg) {
            if (!(eventsCfg.hasOwnProperty(_i))) continue;
            // source line 1051, bytecode pc 214
            (events[_i] = {});
            // source line 1053, bytecode pc 230
            (_actionNames = eventsCfg[_i].actions);
            for (var _j in _actionNames) {
                if (!(_actionNames.hasOwnProperty(_j))) continue;
                // source line 1057, bytecode pc 280
                (_name = _actionNames[_j]);
                // source line 1060, bytecode pc 309
                (events[_i][_j] = outterData.input.listeners[_name]);
            }
        }
        // source line 1090, bytecode pc 399
        this.arm.getAnimation().setFrameEventCallFunc(function(bone, frameEventName, originFrameIndex, currentFrameIndex) {
    var _event, _actions, _i;
    // source line 1070, bytecode pc 13
    (_event = this.events[frameEventName]);
    if (_event) {
        // source line 1073, bytecode pc 30
        (_actions = []);
        for (var _i in _event) {
            if (!(_event.hasOwnProperty(_i))) continue;
            if (!(_event[_i])) continue;
            // source line 1076, bytecode pc 104
            _actions.push(_event[_i]);
        }
        // source line 1081, bytecode pc 161
        this.who.runAction(xs.Utils.Action.combineSpawn(_actions));
    }
}.bind({ who: this.arm, events: events }), this);
    }
    // source line 1094, bytecode pc 403
    return action;
},
    createUpdateHpActions: function(data) {
    var _ret;
    // source line 1103, bytecode pc 30
    (_ret = this.getHp().createUpdateHpActions(data));
    // source line 1106, bytecode pc 34
    return _ret;
},
    createUpdateHpAction_onHit: function(hp_lose, hp_max, dp) {
    // source line 1111, bytecode pc 35
    return this.getHp().createUpdateHpAction_onHit(hp_lose, hp_max, dp);
},
    createUpdateHpAction_onOver: function(hp_cur, hp_max, dp) {
    // source line 1115, bytecode pc 35
    return this.getHp().createUpdateHpAction_onOver(hp_cur, hp_max, dp);
},
    useNewBody: function(para, input) {
    var _idxBackup, _idxLeave, _cardInfo, _statusArray, i, _tmpArm;
    // source line 1123, bytecode pc 26
    (_idxBackup = para.model.params.pre.backupIdx);
    // source line 1124, bytecode pc 53
    (_idxLeave = para.model.params.pre.leaveIdx);
    // source line 1126, bytecode pc 85
    (_cardInfo = para.env.model.getCardModelByIdx(_idxBackup));
    // source line 1128, bytecode pc 95
    (this.model = _cardInfo);
    // source line 1130, bytecode pc 145
    xs.assert(_cardInfo, "_cardInfo ", _idxBackup, para.env.model.cardDatas);
    // source line 1134, bytecode pc 158
    this.removeSkin();
    // source line 1135, bytecode pc 171
    this.updateSkin();
    // source line 1138, bytecode pc 186
    this.setVisibleAble(true);
    // source line 1139, bytecode pc 201
    this.setVisible(false);
    // source line 1144, bytecode pc 624
    (_statusArray = [
    "le",
    "feng",
    "yun",
    "fu",
    "nuyan",
    "dun01",
    "dun02",
    "dun03",
    "dun04",
    "dun05",
    "xuechi",
    "xiaoyong_01",
    "xiaoyong_02",
    "xiaoyong_03",
    "xiaoyong_04",
    "xiaoyong_05",
    "xiaoyong_06",
    "xiaoyong_07",
    "zaiqi",
    "juejing",
    "fangong",
    "pojia",
    "xuruo",
    "zhuiji",
    "qinyin",
    "xiaoyong_08",
    "xiaoyong_09",
    "xiaoyong",
    "x",
    "tiannian",
    "tiannian01",
    "tiannian02",
    "tiannian03",
    "tiannian04",
    "tiannian05",
    "card_back",
    "fw_star",
    "fw_01",
    "fw_02",
    "fw_03",
    "fw_04",
    "fw_05",
    "fw_06",
    "fw_07",
    "fw_08",
    "fw_09"
]);
    // source line 1147, bytecode pc 629
    (i = 0);
    while ((i < _statusArray.length)) {
        // source line 1148, bytecode pc 659
        (_tmpArm = this.getStatus(_statusArray[i]));
        if (_tmpArm) {
            // source line 1150, bytecode pc 684
            _tmpArm.setVisible(false);
        }
        // source line 1147, bytecode pc 698
        (i = (+i + 1));
    }
},
    init: function(viewCfg) {
    // source line 1160, bytecode pc 24
    this.log("init", "begin");
    // source line 1164, bytecode pc 37
    this._super();
    // source line 1167, bytecode pc 59
    (this.viewCfg = (viewCfg || {}));
    // source line 1169, bytecode pc 72
    (this.status = {});
    // source line 1171, bytecode pc 80
    (this.m_bVisibleAble = true);
    // source line 1174, bytecode pc 93
    this._createBodyAndAdd();
    // source line 1177, bytecode pc 126
    xs.Utils.Node.initByViewCfg(this, viewCfg);
    // source line 1179, bytecode pc 151
    this.log("init", "end");
},
    reloadData: function(model, armId) {
    // source line 1184, bytecode pc 43
    (this.model = xs.Utils.clone((model || {})));
    // source line 1186, bytecode pc 85
    xs.assert(this.model.id, "CardFightView,model error", this.model);
    if ((this.viewCfg.head === true)) {
        // source line 1191, bytecode pc 116
        this._reloadData_head();
    } else {
        if ((this.viewCfg.armBody === true)) {
            if (armId) {
                // source line 1195, bytecode pc 164
                this._reloadData_armById(armId);
            } else {
                // source line 1197, bytecode pc 182
                this._reloadData_arm();
            }
        } else {
            // source line 1202, bytecode pc 212
            xs.assert(false, "no createBgSpriteAndAdd");
        }
    }
    // source line 1207, bytecode pc 249
    this.updateHp(this.model.hpCur, this.model.hpMax);
},
    updateHpFull: function() {
    // source line 1212, bytecode pc 27
    this.getHp().updateHp(1, 1);
},
    updateHp: function(cur, max) {
    // source line 1216, bytecode pc 31
    this.getHp().updateHp(cur, max);
},
    _reloadData_head: function() {
    var _modelGeneral, _generalIcon;
    // source line 1223, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.bgSprite);
    // source line 1225, bytecode pc 75
    (_modelGeneral = xs.Models.General.createWithBase(this.model.id));
    // source line 1226, bytecode pc 102
    (_modelGeneral.evolution_image_status = (this.model.evolution_image_status || false));
    // source line 1227, bytecode pc 120
    (_generalIcon = _modelGeneral.createIcon_Fight());
    // source line 1228, bytecode pc 137
    _generalIcon.setCascadeOpacityEnabled(true);
    // source line 1231, bytecode pc 147
    (this.bgSprite = _generalIcon);
    // source line 1232, bytecode pc 157
    (this.skin = _generalIcon);
    // source line 1234, bytecode pc 237
    xs.Utils.Node.attachNodes(this.body_m, this.bgSprite, { desc: "lb" }, this.Cfg.Constant.Body_Move.Bg);
},
    _reloadData_arm: function() {
    // source line 1240, bytecode pc 26
    this.assert(!this.arm, "this.arm exit???");
    // source line 1241, bytecode pc 70
    (this.arm = xs.Views.Armature.AutoAudioArmature.create("Arm_Fight_Card"));
    // source line 1243, bytecode pc 150
    xs.Utils.Node.attachNodes(this.body_s, this.arm, { desc: "lb" }, this.Cfg.Constant.Body_Move.Bg);
    // source line 1245, bytecode pc 163
    this.updateSkin();
    // source line 1246, bytecode pc 176
    this.createBoneStatus();
},
    onExitTransitionDidStart: function() {
    var _armLe, _armFeng, _armYun, _armFu;
    // source line 1254, bytecode pc 12
    this._super();
    // source line 1256, bytecode pc 34
    (_armLe = this.getStatus("le"));
    if (_armLe) {
        // source line 1258, bytecode pc 57
        _armLe.unscheduleUpdate();
    }
    // source line 1263, bytecode pc 79
    (_armFeng = this.getStatus("feng"));
    if (_armFeng) {
        // source line 1266, bytecode pc 102
        _armFeng.unscheduleUpdate();
    }
    // source line 1268, bytecode pc 124
    (_armYun = this.getStatus("yun"));
    if (_armYun) {
        // source line 1271, bytecode pc 147
        _armYun.unscheduleUpdate();
    }
    // source line 1273, bytecode pc 169
    (_armFu = this.getStatus("fu"));
    if (_armFu) {
        // source line 1276, bytecode pc 192
        _armFu.unscheduleUpdate();
    }
},
    getBodySize: function() {
    var _skinSize;
    if ((this.viewCfg.armBody === true)) {
        // source line 1295, bytecode pc 38
        (_skinSize = this.skin.getBodySize());
        // source line 1302, bytecode pc 99
        return cc.size((_skinSize.width * this.getScaleX()), (_skinSize.height * this.getScaleY()));
    } else {
        // source line 1307, bytecode pc 117
        return this.getContentSize();
    }
},
    getBodyStatic: function() {
    // source line 1313, bytecode pc 6
    return this.body_s;
},
    getBodyMove: function() {
    // source line 1317, bytecode pc 6
    return this.body_m;
},
    makeHeadPosX: function() {
    var _offsetX, _marginX, _width;
    // source line 1322, bytecode pc 14
    (_offsetX = this.viewCfg.offsetX);
    // source line 1323, bytecode pc 29
    (_marginX = this.viewCfg.marginX);
    // source line 1324, bytecode pc 58
    (_width = xs.Cfg.Resource.Head.w);
    // source line 1326, bytecode pc 106
    return (((_offsetX + (this.idx * (_width + _marginX))) + (_width / 2)) * ((this.side === 0) ? -1 : 1));
},
    makeHeadPosY: function() {
    var _offsetY, _height;
    // source line 1330, bytecode pc 8
    (_offsetY = -0);
    // source line 1332, bytecode pc 37
    (_height = xs.Cfg.Resource.Head.h);
    // source line 1334, bytecode pc 60
    return ((this.viewCfg.posY + _offsetY) - (_height / 2));
}
})));
// source line 1344, bytecode pc 2332
(xs.Views.Card.Fight.create = function(model, viewCfg) {
    var _view;
    // source line 1349, bytecode pc 28
    (_view = new xs.Views.Card.Fight());
    // source line 1351, bytecode pc 38
    (_view.side = 0);
    // source line 1354, bytecode pc 67
    xs.log("xs.Views.Card.Fight.create", "init begin");
    // source line 1355, bytecode pc 86
    _view.init(viewCfg);
    // source line 1356, bytecode pc 115
    xs.log("xs.Views.Card.Fight.create", "init end");
    // source line 1357, bytecode pc 134
    _view.reloadData(model);
    // source line 1368, bytecode pc 160
    xs.Utils.makeDebugPoint(_view);
    // source line 1369, bytecode pc 186
    xs.Utils.makeOriginal(_view);
    // source line 1373, bytecode pc 190
    return _view;
});
// source line 1376, bytecode pc 2363
(xs.Views.Card.Fight.createWithSideIdx = function(side, idx, model, viewCfg) {
    var _view;
    // source line 1381, bytecode pc 28
    (_view = new xs.Views.Card.Fight());
    // source line 1383, bytecode pc 40
    (_view.side = side);
    // source line 1384, bytecode pc 52
    (_view.idx = idx);
    // source line 1387, bytecode pc 80
    (_view.name = (_view.name + ((side * 3) + idx)));
    // source line 1389, bytecode pc 99
    _view.init(viewCfg);
    // source line 1390, bytecode pc 118
    _view.reloadData(model);
    // source line 1393, bytecode pc 144
    xs.Utils.makeDebugPoint(_view);
    // source line 1401, bytecode pc 148
    return _view;
});
// source line 1404, bytecode pc 2394
(xs.Views.Card.Fight.createWithSideIdxByOtherArm = function(side, idx, model, viewCfg, armId) {
    var _view;
    // source line 1407, bytecode pc 28
    (_view = new xs.Views.Card.Fight());
    // source line 1409, bytecode pc 40
    (_view.side = side);
    // source line 1410, bytecode pc 52
    (_view.idx = idx);
    // source line 1413, bytecode pc 80
    (_view.name = (_view.name + ((side * 3) + idx)));
    // source line 1415, bytecode pc 99
    _view.init(viewCfg);
    // source line 1416, bytecode pc 122
    _view.reloadData(model, armId);
    // source line 1419, bytecode pc 148
    xs.Utils.makeDebugPoint(_view);
    // source line 1422, bytecode pc 152
    return _view;
});
// source line 1426, bytecode pc 2425
(xs.Views.Card.Fight.createHeadWithSideIdx = function(side, idx, model, viewCfg) {
    var _ret, _posX, _posY;
    // source line 1431, bytecode pc 28
    (_ret = new xs.Views.Card.Fight());
    // source line 1433, bytecode pc 40
    (_ret.idx = idx);
    // source line 1434, bytecode pc 52
    (_ret.side = side);
    // source line 1436, bytecode pc 71
    _ret.init(viewCfg);
    // source line 1437, bytecode pc 90
    _ret.reloadData(model);
    // source line 1439, bytecode pc 108
    (_posX = _ret.makeHeadPosX());
    // source line 1440, bytecode pc 126
    (_posY = _ret.makeHeadPosY());
    // source line 1446, bytecode pc 149
    _ret.setPosition(_posX, _posY);
    // source line 1449, bytecode pc 175
    xs.Utils.makeDebugPoint(_ret);
    // source line 1453, bytecode pc 179
    return _ret;
});
