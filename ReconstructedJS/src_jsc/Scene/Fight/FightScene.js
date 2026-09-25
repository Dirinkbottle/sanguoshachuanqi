// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Fight/FightScene.js:1
// source line 4259, bytecode pc 1287
(xs.Scene.FightSceneLayer = cc.Layer.extend({
    dump: xs.Debug.emptyFunc,
    log: xs.Debug.emptyFunc,
    name: "FightSceneLayer",
    Cfg: xs.Cfg.Scene.FightScene,
    Step_Init: 0,
    Step_Story0_Enter: 1,
    Step_Story0_Loop: 2,
    Step_Story0_Exit: 3,
    Step_Open_Enter: 4,
    Step_Open_Loop: 5,
    Step_Open_Exit: 6,
    Step_FightProcess_Enter: 7,
    Step_FightProcess_Loop: 8,
    Step_FightProcess_Exit: 9,
    Step_Story1_Enter: 10,
    Step_Story1_Loop: 11,
    Step_Story1_Exit: 12,
    Step_Result_Enter: 13,
    Step_Result_Exp_Loop: 15,
    Step_Result_Idle_Loop: 16,
    Step_Result_Exit: 17,
    Step_Exit_Enter: 100,
    Step_Exit_Loop: 101,
    Step_None: 200,
    markFuncBegin: xs.Debug.emptyFunc,
    init: function(params) {
    try {
        // source line 53, bytecode pc 19
        this.markFuncBegin("fight init");
        // source line 57, bytecode pc 32
        this._super();
        // source line 59, bytecode pc 42
        (this.params = params);
        // source line 63, bytecode pc 84
        (this.model = xs.Models.TmpInfo.Fight.create(params));
        // source line 65, bytecode pc 126
        (this.m_model_result = xs.Models.TmpInfo.Fight.create(params));
        // source line 70, bytecode pc 158
        (this.status = [ {}, {} ]);
        // source line 73, bytecode pc 166
        (this.m_npf_idx = 0);
        // source line 75, bytecode pc 194
        (this.m_layer_normal = cc.Layer.create());
        // source line 76, bytecode pc 230
        xs.Utils.Node.attachNodes(this, this.m_layer_normal);
        // source line 81, bytecode pc 257
        this.initViews(this.model, this.m_layer_normal);
        // source line 84, bytecode pc 270
        this.initControl();
        // source line 86, bytecode pc 283
        this._initNC();
        // source line 93, bytecode pc 323
        this.initPvp(this.model, this.initControl.bind(this));
        // source line 96, bytecode pc 338
        this.setInfoUIVisible(false);
        // source line 98, bytecode pc 357
        this.markFuncEnd("fight init");
    } catch (e) {
        // source line 101, bytecode pc 389
        this.warnException(e);
        /* TODO_BYTECODE pc=390 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 104, bytecode pc 400
    return true;
},
    createRemoveFakePvpOpeningAction: function() {
    // source line 113, bytecode pc 40
    return cc.CallFunc.create(function() {
    // source line 111, bytecode pc 19
    this.m_arm_openning.removeFromParent(true);
    // source line 112, bytecode pc 27
    (this.m_arm_openning = null);
}.bind(this));
},
    _initNC: function() {
    // source line 118, bytecode pc 32
    (this.m_fnc = xs.Utils.Notify.create());
},
    getFightNotifyCenter: function() {
    // source line 122, bytecode pc 6
    return this.m_fnc;
},
    initPvp: function(model, funcAfterAni) {
    if ((this.params.openType === xs.Constant_FightScene_OpenType_Pve)) {
        // source line 129, bytecode pc 28
        return true;
    } else {
        if (((model.getFstSide() === 0) || (model.getFstSide() === 1))) {
            // source line 137, bytecode pc 120
            (this.m_arm_openning = xs.Views.Armature.AutoAudioArmature.create("Arm_Fight_Openning"));
            // source line 138, bytecode pc 144
            this.m_arm_openning.playAniById("kaichang01");
            // source line 139, bytecode pc 175
            this.m_arm_openning.getAnimation().gotoAndPause(0);
            // source line 145, bytecode pc 222
            xs.Utils.Node.attachNodes(this.getNear(), this.m_arm_openning);
        } else {
            // source line 165, bytecode pc 257
            xs.error("need first flag", this.params);
        }
    }
},
    _getCardLayoutCfgBySideAndOffset: function(model, side, offset) {
    // source line 170, bytecode pc 33
    return xs.Cfg.Scene.FightScene.layout[side][offset];
},
    revertViews: function() {
    var _model, _tmpModel, i, _cards_size, j, _view, _pos, _backup_side_size;
    // source line 178, bytecode pc 9
    (_model = this.model);
    // source line 179, bytecode pc 14
    (_tmpModel = null);
    // source line 184, bytecode pc 19
    (i = 0);
    while ((i < 2)) {
        // source line 185, bytecode pc 47
        (_cards_size = _model.getCardsSizeBySide(i));
        // source line 186, bytecode pc 52
        (j = 0);
        while ((j < _cards_size)) {
            // source line 188, bytecode pc 84
            (_tmpModel = _model.getCardModelBySideAndOffset(i, j));
            if (_tmpModel) {
                // source line 191, bytecode pc 110
                (_view = this.cardViews[i][j]);
                if ((i === 0)) {
                    // source line 195, bytecode pc 141
                    _view.playAni("ani_idle");
                    // source line 196, bytecode pc 158
                    _view.setVisible(false);
                    // source line 200, bytecode pc 185
                    (_pos = this._makeCardPostion(((3 * i) + j)));
                    // source line 204, bytecode pc 204
                    _view.setPosition(_pos);
                    // source line 205, bytecode pc 219
                    _view.updateHpFull();
                } else {
                    // source line 210, bytecode pc 241
                    _view.setVisible(false);
                }
            } else {
                // source line 214, bytecode pc 289
                this.error("_tmpModel is null", [ i, j ], _model);
            }
            // source line 186, bytecode pc 303
            (j = (+j + 1));
        }
        // source line 184, bytecode pc 331
        (i = (+i + 1));
    }
    // source line 219, bytecode pc 349
    (i = 0);
    while ((i < this.backupViews.length)) {
        // source line 221, bytecode pc 360
        (_view = null);
        // source line 223, bytecode pc 365
        (_tmpModel = null);
        // source line 225, bytecode pc 387
        (_backup_side_size = _model.getBackupsSizeBySide(i));
        // source line 227, bytecode pc 392
        (j = 0);
        while ((j < _backup_side_size)) {
            // source line 229, bytecode pc 416
            (_view = this.backupViews[i][j]);
            // source line 231, bytecode pc 431
            _view.revertPosition();
            // source line 232, bytecode pc 446
            _view.revert_head();
            // source line 233, bytecode pc 461
            _view.updateHpFull();
            if ((i === 0)) {
                // source line 239, bytecode pc 488
                _view.setVisible(true);
            } else {
                // source line 243, bytecode pc 510
                _view.setVisible(false);
            }
            // source line 227, bytecode pc 524
            (j = (+j + 1));
        }
        // source line 219, bytecode pc 552
        (i = (+i + 1));
    }
},
    initViews: function(model, layer) {
    var _sizeAll, _oriPoint, i, _cards_size, j, _tmpModel, _view, _viewCfg, _pos, _posY, _backup_side_size, _sizeVs, roundLabel, _backupBg, _offsetX, _sizeBackupBg;
    // source line 252, bytecode pc 18
    this.markFuncBegin("views init");
    // source line 254, bytecode pc 26
    (this.centerNode = null);
    // source line 255, bytecode pc 34
    (this.near = null);
    // source line 256, bytecode pc 42
    (this.mid = null);
    // source line 261, bytecode pc 102
    (this.cardViews = [ [ null, null, null ], [ null, null, null ] ]);
    // source line 267, bytecode pc 132
    (this.backupViews = [ [], [] ]);
    // source line 270, bytecode pc 154
    (this.backupBgs = [ null, null ]);
    // source line 271, bytecode pc 176
    (this.backUpNum = [ null, null ]);
    // source line 272, bytecode pc 198
    (this.userInfo = [ null, null ]);
    // source line 273, bytecode pc 220
    (this.labelUserName = [ null, null ]);
    // source line 274, bytecode pc 242
    (this.labelLeaderPointPre = [ null, null ]);
    // source line 275, bytecode pc 264
    (this.labelLeaderPoint = [ null, null ]);
    // source line 276, bytecode pc 286
    (this.labelDeathNumPre = [ null, null ]);
    // source line 277, bytecode pc 308
    (this.labelDeathNum = [ null, null ]);
    // source line 279, bytecode pc 316
    (this.bg = null);
    // source line 280, bytecode pc 324
    (this.vs = null);
    // source line 281, bytecode pc 332
    (this.roundInfo = null);
    // source line 283, bytecode pc 357
    (_sizeAll = xs.director.getVisibleSize());
    // source line 284, bytecode pc 382
    (_oriPoint = xs.director.getVisibleOrigin());
    // source line 288, bytecode pc 410
    (this.centerNode = cc.Node.create());
    // source line 289, bytecode pc 502
    xs.Utils.Node.attachNodes(layer, this.centerNode, { desc: "c", sc: true }, xs.Cfg.Constant.Scene.FightDemo.Center);
    // source line 292, bytecode pc 507
    (i = 0);
    while ((i < 2)) {
        // source line 293, bytecode pc 535
        (_cards_size = model.getCardsSizeBySide(i));
        // source line 294, bytecode pc 540
        (j = 0);
        while ((j < _cards_size)) {
            // source line 296, bytecode pc 572
            (_tmpModel = model.getCardModelBySideAndOffset(i, j));
            if (_tmpModel) {
                // source line 301, bytecode pc 585
                (_view = null);
                // source line 303, bytecode pc 613
                (_viewCfg = this._getCardLayoutCfgBySideAndOffset(model, i, j));
                // source line 306, bytecode pc 640
                (_pos = this._makeCardPostion(((3 * i) + j)));
                // source line 313, bytecode pc 691
                (_view = xs.Views.Card.Fight.createWithSideIdx(i, j, _tmpModel, _viewCfg));
                // source line 315, bytecode pc 712
                _view.playAni("ani_idle");
                // source line 318, bytecode pc 775
                _view.setZOrder((xs.Cfg.Constant.Scene.FightDemo.Center.Card.zOrder + (j * 10)));
                // source line 319, bytecode pc 838
                _view.setTag((xs.Cfg.Constant.Scene.FightDemo.Center.Card.tag + (j * 10)));
                // source line 320, bytecode pc 857
                _view.setPosition(_pos);
                // source line 321, bytecode pc 874
                _view.setVisible(false);
                // source line 325, bytecode pc 912
                xs.Utils.Node.attachNodes(this.centerNode, _view);
                // source line 336, bytecode pc 938
                xs.Utils.makeOriginal(_view);
                if ((_tmpModel.isBoss === true)) {
                    // source line 341, bytecode pc 1010
                    xs.Utils.Node.initByViewCfg(_view, xs.Cfg.Scene.FightScene.layout_boss);
                }
                // source line 345, bytecode pc 1028
                (this.cardViews[i][j] = _view);
            } else {
                // source line 348, bytecode pc 1076
                this.error("_tmpModel is null", [ i, j ], model);
            }
            // source line 294, bytecode pc 1090
            (j = (+j + 1));
        }
        // source line 292, bytecode pc 1118
        (i = (+i + 1));
    }
    // source line 355, bytecode pc 1159
    (this.near = cc.Node.create());
    // source line 356, bytecode pc 1176
    (this.near.name = "near");
    // source line 357, bytecode pc 1196
    this.near.setVisible(true);
    // source line 358, bytecode pc 1290
    xs.Utils.Node.attachNodes(this.centerNode, this.near, { desc: "lb" }, xs.Cfg.Constant.Scene.FightDemo.Center.Near);
    // source line 359, bytecode pc 1344
    xs.Utils.makeDebugPoint(this.near, cc.c4f(0, 0, 1, 1));
    // source line 362, bytecode pc 1372
    (this.m_node_far = cc.Node.create());
    // source line 363, bytecode pc 1389
    (this.m_node_far.name = "far");
    // source line 364, bytecode pc 1409
    this.m_node_far.setVisible(true);
    // source line 365, bytecode pc 1503
    xs.Utils.Node.attachNodes(this.centerNode, this.m_node_far, { desc: "lb" }, xs.Cfg.Constant.Scene.FightDemo.Center.Far);
    // source line 366, bytecode pc 1557
    xs.Utils.makeDebugPoint(this.m_node_far, cc.c4f(0, 0, 1, 1));
    // source line 369, bytecode pc 1585
    (this.mid = cc.Node.create());
    // source line 370, bytecode pc 1605
    this.mid.setVisible(true);
    // source line 373, bytecode pc 1716
    xs.Utils.Node.attachNodes(this.centerNode, this.mid, { base: "lb", offset: { x: 0 } }, xs.Cfg.Constant.Scene.FightDemo.Center.Mid);
    // source line 374, bytecode pc 1745
    xs.Utils.makeDebugPoint(this.mid);
    // source line 377, bytecode pc 1798
    (this.m_layerColor_near = cc.LayerColor.create(cc.c4b(0, 0, 0, 0)));
    // source line 378, bytecode pc 1818
    this.m_layerColor_near.setVisible(false);
    // source line 379, bytecode pc 1910
    xs.Utils.Node.attachNodes(layer, this.m_layerColor_near, { desc: "lb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI_BlackMask);
    // source line 384, bytecode pc 1928
    (_posY = ((_sizeAll.height / 2) + 2));
    // source line 386, bytecode pc 1933
    (i = 0);
    while ((i < this.backupViews.length)) {
        // source line 388, bytecode pc 1944
        (_view = null);
        // source line 390, bytecode pc 1949
        (_tmpModel = null);
        // source line 392, bytecode pc 1971
        (_backup_side_size = model.getBackupsSizeBySide(i));
        // source line 394, bytecode pc 1976
        (j = 0);
        while ((j < _backup_side_size)) {
            // source line 396, bytecode pc 2008
            (_tmpModel = model.getBackupModelBySideAndOffset(i, j));
            // source line 405, bytecode pc 2093
            (_view = xs.Views.Card.Fight.createHeadWithSideIdx(i, j, _tmpModel, { posY: _posY, offsetX: 98, marginX: 1.5, head: true }));
            // source line 408, bytecode pc 2114
            _view.setScale(0.85);
            // source line 409, bytecode pc 2140
            xs.Utils.makeOriginal(_view);
            // source line 410, bytecode pc 2216
            xs.Utils.Node.attachNodes(this.centerNode, _view, null, xs.Cfg.Constant.Scene.FightDemo.Center.Backup);
            // source line 411, bytecode pc 2233
            _view.setVisible(false);
            // source line 413, bytecode pc 2251
            (this.backupViews[i][j] = _view);
            // source line 394, bytecode pc 2265
            (j = (+j + 1));
        }
        // source line 386, bytecode pc 2293
        (i = (+i + 1));
    }
    // source line 419, bytecode pc 2360
    (this.vs = xs.Factorys.Sprite.create("VS", "FightScene01"));
    // source line 420, bytecode pc 2403
    this.vs.setAnchorPoint(cc.p(0.5, 1));
    // source line 421, bytecode pc 2521
    xs.Utils.Node.attachNodes(layer, this.vs, { desc: "ct", sc: true, offset: cc.p(0, -5) }, xs.Cfg.Constant.Scene.FightDemo.Bg1);
    // source line 423, bytecode pc 2542
    (_sizeVs = this.vs.getContentSize());
    // source line 427, bytecode pc 2586
    (this.armFightStar = xs.Views.Armature.AutoAudioArmature.create("Arm_FightStar"));
    // source line 428, bytecode pc 2629
    this.armFightStar.playAniById("star3", { loop: true, speed: 1 });
    // source line 429, bytecode pc 2757
    xs.Utils.Node.attachNodes(layer, this.armFightStar, { desc: "ct", sc: true, offset: cc.p(0, (-_sizeVs.height - 40)) }, xs.Cfg.Constant.Scene.FightDemo.Bg1);
    if (!xs.Utils.isEmpty(this.params.round)) {
        // source line 436, bytecode pc 2832
        (roundLabel = xs.Factorys.Label.createByStyleId("LS_huodong_day"));
        // source line 437, bytecode pc 2853
        roundLabel.setString("");
        // source line 438, bytecode pc 2978
        xs.Utils.Node.attachNodes(layer, roundLabel, { desc: "ct", sc: true, offset: cc.p(0, (-_sizeVs.height - 20)) }, xs.Cfg.Constant.Scene.FightDemo.Bg1);
        // source line 439, bytecode pc 2990
        switch (this.params.round) {
            case xs.Constant_HuLaoBattle_First_Round:
            // source line 441, bytecode pc 3088
            roundLabel.setString(xs.Tools.String.createString("HulaoBattle_fight_1"));
            break;
            case xs.Constant_HuLaoBattle_Second_Round:
            // source line 444, bytecode pc 3141
            roundLabel.setString(xs.Tools.String.createString("HulaoBattle_fight_2"));
            break;
            case xs.Constant_HuLaoBattle_Third_Round:
            // source line 447, bytecode pc 3194
            roundLabel.setString(xs.Tools.String.createString("HulaoBattle_fight_3"));
            break;
            default:
            // source line 450, bytecode pc 3230
            this.error("round ,error", this.params.round);
            break;
        }
    }
    // source line 460, bytecode pc 3247
    switch (this.params.fightType) {
        case xs.Constant_FightScene_Type_Map:
        if (this.params.resModel) {
            // source line 466, bytecode pc 3432
            (this.bg = this.params.resModel.createBgSprite_Fight());
        } else {
            // source line 469, bytecode pc 3456
            this.error("this.params.resModel need");
            // source line 470, bytecode pc 3504
            (this.bg = xs.Tools.UI.addBgByType(layer, xs.Constant_BgType_Fight_NewPlayer));
        }
        // source line 472, bytecode pc 3573
        xs.Utils.Node.attachBgSprite(layer, this.bg, xs.Cfg.Constant.Scene.FightDemo.Bg);
        break;
        case xs.Constant_FightScene_Type_FriendFight:
        case xs.Constant_FightScene_Type_UnionWar:
        case xs.Constant_FightScene_Type_Ladder:
        // source line 477, bytecode pc 3626
        (this.bg = xs.Tools.UI.addBgByType(layer, xs.Constant_BgType_Fight_Ladder));
        break;
        case xs.Constant_FightScene_Type_Copy:
        // source line 480, bytecode pc 3679
        (this.bg = xs.Tools.UI.addBgByType(layer, xs.Constant_BgType_Fight_Copy));
        break;
        case xs.Constant_FightScene_Type_Climp:
        // source line 483, bytecode pc 3732
        (this.bg = xs.Tools.UI.addBgByType(layer, xs.Constant_BgType_Fight_Climp));
        break;
        case xs.Constant_FightScene_Type_Chaos:
        // source line 486, bytecode pc 3785
        (this.bg = xs.Tools.UI.addBgByType(layer, xs.Constant_BgType_Fight_Chaos));
        break;
        case xs.Constant_FightScene_Type_NewPlayer:
        // source line 489, bytecode pc 3838
        (this.bg = xs.Tools.UI.addBgByType(layer, xs.Constant_BgType_Fight_NewPlayer_New));
        break;
        case xs.Constant_FightScene_Type_SkillPreview:
        // source line 492, bytecode pc 3891
        (this.bg = xs.Tools.UI.addBgByType(layer, xs.Constant_BgType_Fight_NewPlayer));
        break;
        default:
        // source line 495, bytecode pc 3927
        this.error("fightType ,error", this.params.fightType);
        break;
    }
    // source line 504, bytecode pc 3987
    (this.m_bgBlack = cc.LayerColor.create(cc.c4b(0, 0, 0, 128)));
    // source line 505, bytecode pc 4007
    this.m_bgBlack.setVisible(false);
    // source line 506, bytecode pc 4064
    this.m_bgBlack.setContentSize(cc.size(xsc.sw_max, xsc.sh_max));
    // source line 507, bytecode pc 4093
    this.m_bgBlack.setAnchorPoint(xsc.ap_c);
    // source line 508, bytecode pc 4113
    this.m_bgBlack.ignoreAnchorPointForPosition(false);
    // source line 509, bytecode pc 4188
    xs.Utils.Node.attachNodes(this.bg, this.m_bgBlack, { desc: "c", offset: { x: 0 } });
    // source line 516, bytecode pc 4245
    (this.m_sprite_bg_red = cc.LayerColor.create(cc.c4b(255, 0, 0, 128)));
    // source line 517, bytecode pc 4265
    this.m_sprite_bg_red.setVisible(false);
    // source line 518, bytecode pc 4322
    this.m_sprite_bg_red.setContentSize(cc.size(xsc.sw_max, xsc.sh_max));
    // source line 519, bytecode pc 4351
    this.m_sprite_bg_red.setAnchorPoint(xsc.ap_c);
    // source line 520, bytecode pc 4371
    this.m_sprite_bg_red.ignoreAnchorPointForPosition(false);
    // source line 521, bytecode pc 4446
    xs.Utils.Node.attachNodes(this.bg, this.m_sprite_bg_red, { desc: "c", offset: { x: 0 } });
    // source line 524, bytecode pc 4490
    (this.armSkillName = xs.Views.Armature.AutoAudioArmature.create("Arm_Fight_SkillName"));
    // source line 525, bytecode pc 4510
    this.armSkillName.setVisible(false);
    // source line 526, bytecode pc 4602
    xs.Utils.Node.attachNodes(layer, this.armSkillName, { base: "lb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    // source line 535, bytecode pc 4671
    (this.roundInfo = xs.Views.TextProgressView.create({ cur: 0, max: 1 }, { labelId: "Label_Fight_Round" }));
    // source line 542, bytecode pc 4796
    xs.Utils.Node.attachNodes(layer, this.roundInfo, { desc: "tc", offset: cc.p(0, ((-_sizeVs.height - 20) - 50)) }, xs.Cfg.Constant.Scene.FightDemo.Bg1);
    // source line 545, bytecode pc 4801
    (i = 0);
    while ((i < 2)) {
        // source line 550, bytecode pc 4849
        (_backupBg = xs.Factorys.Sprite.create("backup_bg", "FightScene01"));
        // source line 551, bytecode pc 4877
        (_offsetX = ((((i === 0) ? -1 : 1) * 80) / 2));
        // source line 552, bytecode pc 4929
        _backupBg.setAnchorPoint(cc.p(((i === 1) ? 0 : 1), 1));
        // source line 553, bytecode pc 4951
        _backupBg.setFlipX(!(i === 1));
        // source line 554, bytecode pc 4977
        xs.Utils.makeDebugPoint(_backupBg);
        // source line 559, bytecode pc 5093
        xs.Utils.Node.attachNodes(layer, _backupBg, { desc: "tc", offset: cc.p(_offsetX, 0), sc: true }, xs.Cfg.Constant.Scene.FightDemo.Bg1);
        // source line 561, bytecode pc 5107
        (this.backupBgs[i] = _backupBg);
        // source line 567, bytecode pc 5180
        (this.backUpNum[i] = xs.Views.TextProgressView.create({ cur: 0, max: 0 }, { labelId: "Label_Fight_BackupNum" }));
        // source line 573, bytecode pc 5336
        xs.Utils.Node.attachNodes(_backupBg, this.backUpNum[i], { desc: ((i === 0) ? "rt" : "lt"), offset: cc.p((((i === 0) ? 1 : -1) * -40), -19) }, xs.Cfg.Constant.Scene.FightDemo.Bg1);
        // source line 576, bytecode pc 5396
        this.backUpNum[i].update(model.getBackUpNumCur(i), model.getBackUpNumMax(i));
        // source line 545, bytecode pc 5410
        (i = (+i + 1));
    }
    // source line 593, bytecode pc 5441
    (_sizeBackupBg = _backupBg.getContentSize());
    // source line 597, bytecode pc 5446
    (i = 0);
    while ((i < 2)) {
        // source line 599, bytecode pc 5484
        (this.userInfo[i] = cc.Node.create());
        // source line 600, bytecode pc 5542
        this.userInfo[i].setAnchorPoint(((i === 0) ? xs.ap_lt : xs.ap_rt));
        // source line 601, bytecode pc 5587
        this.userInfo[i].setContentSize(cc.size(0, 300));
        // source line 602, bytecode pc 5609
        this.userInfo[i].makeDebugBoundRect();
        // source line 603, bytecode pc 5631
        this.userInfo[i].makeDebugPoint();
        // source line 605, bytecode pc 5674
        (this.labelUserName[i] = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
        // source line 606, bytecode pc 5732
        this.labelUserName[i].setAlignH(((i === 0) ? xs.AlignH_Left : xs.AlignH_Right));
        // source line 609, bytecode pc 5775
        (this.labelLeaderPointPre[i] = xs.Factorys.Label.createByLabelId("Label_Fight_TeamPoint_0"));
        // source line 610, bytecode pc 5833
        this.labelLeaderPointPre[i].setAlignH(((i === 0) ? xs.AlignH_Left : xs.AlignH_Right));
        // source line 612, bytecode pc 5855
        this.labelLeaderPointPre[i].makeDebugBoundRect();
        // source line 613, bytecode pc 5877
        this.labelLeaderPointPre[i].makeDebugPoint();
        // source line 615, bytecode pc 5920
        (this.labelLeaderPoint[i] = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
        // source line 616, bytecode pc 5978
        this.labelLeaderPoint[i].setAlignH(((i === 0) ? xs.AlignH_Left : xs.AlignH_Right));
        // source line 617, bytecode pc 6000
        this.labelLeaderPoint[i].makeDebugBoundRect();
        // source line 618, bytecode pc 6022
        this.labelLeaderPoint[i].makeDebugPoint();
        // source line 620, bytecode pc 6065
        (this.labelDeathNumPre[i] = xs.Factorys.Label.createByLabelId("Label_Fight_DeathNum_0"));
        // source line 621, bytecode pc 6123
        this.labelDeathNumPre[i].setAlignH(((i === 0) ? xs.AlignH_Left : xs.AlignH_Right));
        // source line 623, bytecode pc 6145
        this.labelDeathNumPre[i].makeDebugBoundRect();
        // source line 624, bytecode pc 6167
        this.labelDeathNumPre[i].makeDebugPoint();
        // source line 626, bytecode pc 6210
        (this.labelDeathNum[i] = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
        // source line 627, bytecode pc 6268
        this.labelDeathNum[i].setAlignH(((i === 0) ? xs.AlignH_Left : xs.AlignH_Right));
        // source line 628, bytecode pc 6290
        this.labelDeathNum[i].makeDebugBoundRect();
        // source line 629, bytecode pc 6312
        this.labelDeathNum[i].makeDebugPoint();
        if ((i === 0)) {
            // source line 632, bytecode pc 6355
            this.labelLeaderPointPre[i].setNext(this.labelLeaderPoint[i]);
            // source line 633, bytecode pc 6388
            this.labelDeathNumPre[i].setNext(this.labelDeathNum[i]);
        } else {
            // source line 636, bytecode pc 6426
            this.labelLeaderPoint[i].setLast(this.labelLeaderPointPre[i]);
            // source line 637, bytecode pc 6459
            this.labelDeathNum[i].setLast(this.labelDeathNumPre[i]);
        }
        // source line 640, bytecode pc 6525
        xs.Utils.Node.attachNodes(this.userInfo[i], this.labelUserName[i], { base: "lt" });
        if ((i === 0)) {
            // source line 643, bytecode pc 6619
            xs.Utils.Node.attachNodes(this.userInfo[i], this.labelLeaderPointPre[i], { base: "lt", offset: { y: -30 } });
            // source line 644, bytecode pc 6703
            xs.Utils.Node.attachNodes(this.userInfo[i], this.labelDeathNumPre[i], { base: "lt", offset: { y: -60 } });
        } else {
            // source line 647, bytecode pc 6792
            xs.Utils.Node.attachNodes(this.userInfo[i], this.labelLeaderPoint[i], { base: "lt", offset: { y: -30 } });
            // source line 648, bytecode pc 6876
            xs.Utils.Node.attachNodes(this.userInfo[i], this.labelDeathNum[i], { base: "lt", offset: { y: -60 } });
        }
        // source line 655, bytecode pc 7028
        xs.Utils.Node.attachNodes(layer, this.userInfo[i], { desc: ((i === 0) ? "tl" : "tr"), sc: true, offset: cc.p(0, (-_sizeBackupBg.height - 60)) }, xs.Cfg.Constant.Scene.FightDemo.Bg1);
        // source line 659, bytecode pc 7049
        this._updateUserInfo(i, model);
        // source line 597, bytecode pc 7063
        (i = (+i + 1));
    }
    // source line 665, bytecode pc 7115
    (this.btnClose = xs.Views.Btn.createByStyleId("BS_Corner2_RB"));
    // source line 666, bytecode pc 7139
    this.btnClose.setStringById("str_fight_skip");
    // source line 667, bytecode pc 7168
    this.btnClose.setAnchorPoint(xs.ap_rb);
    // source line 668, bytecode pc 7206
    this.btnClose.setOnClickCallBack(this.btnOnClickCallBack_SkipFightProcess.bind(this));
    // source line 669, bytecode pc 7226
    this.btnClose.setEventOnDisable(true);
    // source line 670, bytecode pc 7246
    this.btnClose.setVisible(false);
    // source line 671, bytecode pc 7338
    xs.Utils.Node.attachNodes(layer, this.btnClose, { desc: "rb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    // source line 676, bytecode pc 7377
    (this.btnSpeed = xs.Views.Btn.createByStyleId("BS_Corner2_LB"));
    // source line 677, bytecode pc 7425
    this.btnSpeed.setStringById("str_fight_speed", [ model.getSpeedText() ]);
    // source line 680, bytecode pc 7463
    this.btnSpeed.setOnClickCallBack(this._btnOnClickCallBack_SpeedSwitch.bind(this));
    // source line 681, bytecode pc 7492
    this.btnSpeed.setAnchorPoint(xs.ap_lb);
    // source line 682, bytecode pc 7512
    this.btnSpeed.setVisible(false);
    // source line 684, bytecode pc 7604
    xs.Utils.Node.attachNodes(layer, this.btnSpeed, { desc: "lb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    // source line 685, bytecode pc 7624
    this.btnSpeed.setEventOnDisable(true);
    if (!xs.Utils.isEmpty(this.params.round)) {
        // source line 690, bytecode pc 7684
        this.model.setSpeedIdx(2);
        // source line 692, bytecode pc 7729
        this.btnSpeed.setStringParams([ this.model.getSpeedText() ]);
    }
    // source line 696, bytecode pc 7742
    this._freshEnabled();
    // source line 699, bytecode pc 7759
    this._updateRoundNum(model);
    // source line 701, bytecode pc 7778
    this.markFuncEnd("views init");
},
    _freshEnabled: function() {
    // source line 705, bytecode pc 30
    this.btnSpeed.setEnabled(this._can_change_speed());
},
    _getLazyInitFinishArm: function(type) {
    if ((0 === type)) {
        if (!this.arm_bg) {
            // source line 713, bytecode pc 65
            (this.arm_bg = xs.Views.Armature.AutoAudioArmature.create("Arm_Fight_SkillName"));
            // source line 714, bytecode pc 85
            this.arm_bg.setVisible(false);
            // source line 715, bytecode pc 166
            xs.Utils.Node.attachNodes(this.bg, this.arm_bg, { desc: "c", sc: true, offset: { x: 0 } });
        }
        // source line 718, bytecode pc 173
        return this.arm_bg;
    } else {
        if (!this.arm_bg_near) {
            // source line 723, bytecode pc 234
            (this.arm_bg_near = xs.Views.Armature.AutoAudioArmature.create("Arm_Fight_SkillName"));
            // source line 724, bytecode pc 254
            this.arm_bg_near.setVisible(false);
            // source line 725, bytecode pc 366
            xs.Utils.Node.attachNodes(this.m_layer_normal, this.arm_bg_near, { desc: "c", sc: true, offset: { x: 0 } }, xs.Cfg.Constant.Scene.FightDemo.UI);
        }
        // source line 728, bytecode pc 373
        return this.arm_bg_near;
    }
},
    getBg: function() {
    // source line 733, bytecode pc 6
    return this.bg;
},
    getBlackBg: function() {
    // source line 738, bytecode pc 6
    return this.m_bgBlack;
},
    getBg_Blood: function() {
    // source line 742, bytecode pc 6
    return this.m_sprite_bg_red;
},
    getMid: function() {
    // source line 760, bytecode pc 6
    return this.mid;
},
    getUserInfos: function() {
    // source line 764, bytecode pc 6
    return this.userInfo;
},
    getRoundInfo: function() {
    // source line 768, bytecode pc 6
    return this.roundInfo;
},
    getFightStar: function() {
    // source line 772, bytecode pc 6
    return this.armFightStar;
},
    getModel: function() {
    // source line 776, bytecode pc 6
    return this.model;
},
    getNear: function() {
    // source line 780, bytecode pc 6
    return this.near;
},
    getFar: function() {
    // source line 784, bytecode pc 6
    return this.m_node_far;
},
    getCenter: function() {
    // source line 788, bytecode pc 6
    return this.centerNode;
},
    _getPolicyIdx: function() {
    var _posCfg, _radioMid01, _radioMid12, _winSize, _radio;
    // source line 793, bytecode pc 23
    (_posCfg = xs.Cfg.Scene.DesignResolutionMap);
    // source line 795, bytecode pc 73
    (_radioMid01 = (((_posCfg[0].w / _posCfg[0].h) + (_posCfg[1].w / _posCfg[1].h)) / 2));
    // source line 796, bytecode pc 125
    (_radioMid12 = (((_posCfg[1].w / _posCfg[1].h) + (_posCfg[2].w / _posCfg[2].h)) / 2));
    // source line 798, bytecode pc 150
    (_winSize = xs.director.getWinSize());
    // source line 799, bytecode pc 171
    (_radio = (_winSize.width / _winSize.height));
    if ((_radioMid01 > _radio)) {
        // source line 803, bytecode pc 185
        return 0;
    } else {
        if ((_radioMid12 < _radio)) {
            // source line 806, bytecode pc 205
            return 2;
        } else {
            // source line 809, bytecode pc 212
            return 1;
        }
    }
},
    _makeCardPostion: function(idx) {
    var _policyIdx, _posCfg, _posArr, _pos, _winSizeW, _winSizeH, _visibleSize, _visibleOrigin, _visibleH, _visibleW, _retX, _retY;
    // source line 814, bytecode pc 15
    (_policyIdx = this._getPolicyIdx());
    // source line 817, bytecode pc 44
    (_posCfg = xs.Cfg.Scene.FightScene.CardPos);
    // source line 819, bytecode pc 55
    (_posArr = _posCfg[_policyIdx]);
    if ((idx < 3)) {
        // source line 823, bytecode pc 81
        (_pos = _posArr[idx]);
    } else {
        if ((idx === 3)) {
            // source line 826, bytecode pc 143
            (_pos = cc.p((-1 * _posArr[2].x), _posArr[0].y));
        } else {
            if ((idx === 4)) {
                // source line 829, bytecode pc 204
                (_pos = cc.p((-1 * _posArr[1].x), _posArr[1].y));
            } else {
                if ((idx === 5)) {
                    // source line 832, bytecode pc 266
                    (_pos = cc.p((-1 * _posArr[0].x), _posArr[2].y));
                }
            }
        }
    }
    // source line 835, bytecode pc 299
    (_winSizeW = xs.Cfg.Scene.DesignResolutionMap[_policyIdx].w);
    // source line 836, bytecode pc 332
    (_winSizeH = xs.Cfg.Scene.DesignResolutionMap[_policyIdx].h);
    // source line 838, bytecode pc 357
    (_visibleSize = xs.director.getVisibleSize());
    // source line 839, bytecode pc 382
    (_visibleOrigin = xs.director.getVisibleOrigin());
    // source line 841, bytecode pc 394
    (_visibleH = _visibleSize.height);
    // source line 842, bytecode pc 406
    (_visibleW = _visibleSize.width);
    if ((idx < 3)) {
        // source line 846, bytecode pc 469
        (_pos = cc.p((_pos.x - (_winSizeW / 2)), ((_winSizeH / 2) - _pos.y)));
    } else {
        // source line 849, bytecode pc 526
        (_pos = cc.p(((_winSizeW / 2) + _pos.x), ((_winSizeH / 2) - _pos.y)));
    }
    // source line 852, bytecode pc 552
    (_retX = ((_pos.x / (_winSizeW / 2)) * (_visibleW / 2)));
    // source line 853, bytecode pc 578
    (_retY = ((_pos.y / (_winSizeH / 2)) * (_visibleH / 2)));
    // source line 855, bytecode pc 603
    return cc.p(_retX, _retY);
},
    _updateUserInfo: function(side, model) {
    var _info, _deathNum;
    // source line 859, bytecode pc 27
    (_info = (model.info[side] || {}));
    // source line 860, bytecode pc 50
    (_deathNum = (model.deathNum[side] || 0));
    // source line 864, bytecode pc 92
    this.labelUserName[side].setString((_info.userName || ""));
    // source line 865, bytecode pc 134
    this.labelLeaderPoint[side].setString((_info.teamPoint || "0"));
    // source line 866, bytecode pc 166
    this.labelDeathNum[side].setString(("" + _deathNum));
    // source line 867, bytecode pc 188
    this.labelUserName[side].refreshLayout();
    // source line 868, bytecode pc 210
    this.labelLeaderPoint[side].refreshLayout();
    // source line 869, bytecode pc 232
    this.labelDeathNum[side].refreshLayout();
},
    _updateRoundNum: function(model) {
    // source line 876, bytecode pc 62
    this.roundInfo.reloadData({ cur: model.getRoundCur(), max: model.getRoundMax() });
    // source line 880, bytecode pc 97
    this.btnClose.setEnabled((model.canSkip() === true));
},
    _updateStarNum: function(curStarNum) {
    if (!xs.Utils.isEmpty(this.params.round)) {
        // source line 887, bytecode pc 40
        return void 0;
    }
    if ((curStarNum == 3)) {
        // source line 891, bytecode pc 75
        this.armFightStar.playAniById("star3");
    } else {
        if ((curStarNum == 2)) {
            // source line 894, bytecode pc 115
            this.armFightStar.playAniById("star3to2");
        } else {
            if ((curStarNum == 1)) {
                // source line 897, bytecode pc 154
                this.armFightStar.playAniById("star2to1");
            } else {
                if ((curStarNum == 0)) {
                    // source line 900, bytecode pc 193
                    this.armFightStar.playAniById("star1to0");
                } else {
                    // source line 903, bytecode pc 221
                    this.error("curStarNum err", curStarNum);
                }
            }
        }
    }
},
    initControl: function() {
    // source line 909, bytecode pc 12
    (this.step0 = this.Step_Init);
},
    createGeneralAudioEffectAction: function(data) {
    var _ret, _para, _sounderIdx, _json, _modelGeneral, _speedVoiceType, _speedText, _rand;
    // source line 914, bytecode pc 4
    (_ret = null);
    // source line 916, bytecode pc 21
    (_para = data.input.para);
    // source line 919, bytecode pc 35
    (_sounderIdx = _para.fromIdxs[0]);
    // source line 921, bytecode pc 67
    (_json = _para.env.model.getCardModelByIdx(_sounderIdx));
    // source line 926, bytecode pc 106
    (_modelGeneral = xs.Models.General.createWithBase(_json.id));
    if ((_modelGeneral.getNaturalSkillId() === _para.model.skillId)) {
        // source line 934, bytecode pc 167
        (_speedVoiceType = _para.env.model.getSpeedVoiceType());
        if ((_speedVoiceType === xs.Constant_SkillVoiceType_2)) {
            // source line 940, bytecode pc 196
            (_speedText = 2);
        } else {
            // source line 944, bytecode pc 259
            (_rand = (xs.Utils.floorSafe((xs.Utils.Math.random() * 100)) % 2));
            // source line 946, bytecode pc 268
            (_speedText = (_rand + 1));
        }
        // source line 964, bytecode pc 405
        (_ret = cc.CallFunc.create(function() {
    var _speed, _skillName, _fileName;
    // source line 953, bytecode pc 9
    (_speed = this.speed);
    // source line 954, bytecode pc 19
    (_skillName = this.skillName);
    // source line 955, bytecode pc 48
    (_fileName = (((("Voice/eff_" + _skillName) + "_") + _speed) + ".mp3"));
    // source line 959, bytecode pc 76
    xs.audio.playEffectByFile(_fileName, false);
}.bind({
    speed: _speedText,
    skillName: xs.Profile.GameData.Mgr.getInstance().Generals.getNaturalSkill(_modelGeneral).getSkillCode(),
    env: _para.env
})));
    }
    // source line 971, bytecode pc 409
    return _ret;
},
    createBlackOthersAction: function(data) {
    if ((data.data.revert === true)) {
        // source line 981, bytecode pc 89
        return cc.CallFunc.create(function() {
    // source line 980, bytecode pc 42
    this.blackHalf_Others_revert(data.data.flag, data);
}.bind(data.input.para.env));
    }
    // source line 988, bytecode pc 153
    return cc.CallFunc.create(function() {
    // source line 987, bytecode pc 42
    this.blackHalf_Others(data.data.flag, data);
}.bind(data.input.para.env));
},
    blackHalf_Others: function(isBlack, data) {
    var _fromViews, _toViews, i, j, _isFromOrTo, k, _tmp;
    // source line 997, bytecode pc 32
    (_fromViews = (data.input.para.fromViews || []));
    // source line 998, bytecode pc 65
    (_toViews = (data.input.para.toViews || []));
    // source line 1000, bytecode pc 70
    (i = 0);
    while ((i < this.cardViews.length)) {
        // source line 1001, bytecode pc 81
        (j = 0);
        while ((j < this.cardViews[i].length)) {
            if (this.cardViews[i][j]) {
                // source line 1007, bytecode pc 111
                (_isFromOrTo = false);
                // source line 1009, bytecode pc 116
                (k = 0);
                while ((k < _fromViews.length)) {
                    // source line 1010, bytecode pc 133
                    (_tmp = _fromViews[k]);
                    if ((_tmp === this.cardViews[i][j])) {
                        // source line 1012, bytecode pc 161
                        (_isFromOrTo = true);
                        break;
                    }
                    // source line 1009, bytecode pc 180
                    (k = (+k + 1));
                }
                if ((_isFromOrTo === false)) {
                    // source line 1018, bytecode pc 214
                    (k = 0);
                    while ((k < _toViews.length)) {
                        // source line 1019, bytecode pc 231
                        (_tmp = _toViews[k]);
                        if ((_tmp === this.cardViews[i][j])) {
                            // source line 1021, bytecode pc 259
                            (_isFromOrTo = true);
                            break;
                        }
                        // source line 1018, bytecode pc 278
                        (k = (+k + 1));
                    }
                }
                if (_isFromOrTo) {
                } else {
                    if (isBlack) {
                        // source line 1032, bytecode pc 373
                        this.cardViews[i][j].setBaseColor(cc.c3b(128, 128, 128));
                    } else {
                        // source line 1035, bytecode pc 433
                        this.cardViews[i][j].setBaseColor(cc.c3b(255, 255, 255));
                    }
                }
            }
            // source line 1001, bytecode pc 447
            (j = (+j + 1));
        }
        // source line 1000, bytecode pc 487
        (i = (+i + 1));
    }
},
    blackHalf_Others_revert: function(isBlack, data) {
    var i, j;
    // source line 1085, bytecode pc 4
    (i = 0);
    while ((i < this.cardViews.length)) {
        // source line 1086, bytecode pc 15
        (j = 0);
        while ((j < this.cardViews[i].length)) {
            if (this.cardViews[i][j]) {
                // source line 1090, bytecode pc 95
                this.cardViews[i][j].setBaseColor(cc.c3b(255, 255, 255));
            }
            // source line 1086, bytecode pc 109
            (j = (+j + 1));
        }
        // source line 1085, bytecode pc 149
        (i = (+i + 1));
    }
},
    createHideFromAction: function(data) {
    // source line 1110, bytecode pc 42
    return cc.CallFunc.create(function() {
    var _fromViews, i;
    // source line 1103, bytecode pc 19
    (_fromViews = this.input.para.fromViews);
    // source line 1104, bytecode pc 24
    (i = 0);
    while ((i < _fromViews.length)) {
        // source line 1105, bytecode pc 51
        _fromViews[i].setVisible(false);
        // source line 1104, bytecode pc 65
        (i = (+i + 1));
    }
}.bind(data));
},
    createShowFromAction: function(data) {
    // source line 1127, bytecode pc 42
    return cc.CallFunc.create(function() {
    var _fromViews, i;
    // source line 1120, bytecode pc 19
    (_fromViews = this.input.para.fromViews);
    // source line 1121, bytecode pc 24
    (i = 0);
    while ((i < _fromViews.length)) {
        // source line 1122, bytecode pc 51
        _fromViews[i].setVisible(true);
        // source line 1121, bytecode pc 65
        (i = (+i + 1));
    }
}.bind(data));
},
    createHideOthersAction: function(data) {
    var _actions, _ret;
    // source line 1135, bytecode pc 24
    this.markFuncBegin("createHideOthersAction", "begin");
    // source line 1149, bytecode pc 33
    (_actions = []);
    if (data.input.tmpViewFrom) {
        // source line 1155, bytecode pc 124
        _actions.push(cc.TargetedAction.create(data.input.tmpViewFrom, cc.Show.create()));
    }
    if (data.input.tmpViewTo) {
        // source line 1164, bytecode pc 215
        _actions.push(cc.TargetedAction.create(data.input.tmpViewTo, cc.Show.create()));
    }
    // source line 1199, bytecode pc 331
    (_ret = xs.Utils.Action.combineSequence([
    cc.CallFunc.create(function() {
    var data, _env, _fromViews, _toViews, _from_to, k, _views, i, _tmp;
    // source line 1177, bytecode pc 4
    (data = this);
    // source line 1178, bytecode pc 24
    (_env = this.input.para.env);
    // source line 1180, bytecode pc 41
    _env.setVisible_AllCards(false);
    // source line 1182, bytecode pc 63
    (_fromViews = data.input.para.fromViews);
    // source line 1183, bytecode pc 85
    (_toViews = data.input.para.toViews);
    // source line 1185, bytecode pc 108
    (_from_to = [ _fromViews, _toViews ]);
    // source line 1187, bytecode pc 113
    (k = 0);
    while ((k < _from_to.length)) {
        // source line 1189, bytecode pc 130
        (_views = _from_to[k]);
        // source line 1191, bytecode pc 135
        (i = 0);
        while ((i < _views.length)) {
            // source line 1192, bytecode pc 152
            (_tmp = _views[i]);
            // source line 1193, bytecode pc 169
            _tmp.setVisible(true);
            // source line 1191, bytecode pc 183
            (i = (+i + 1));
        }
        // source line 1187, bytecode pc 216
        (k = (+k + 1));
    }
}.bind(data)),
    xs.Utils.Action.combineSpawn(_actions)
]));
    // source line 1204, bytecode pc 356
    this.markFuncEnd("createHideOthersAction", "end");
    // source line 1206, bytecode pc 360
    return _ret;
},
    createShakeAction: function(data) {
    var _actions, i, j, _ret;
    // source line 1211, bytecode pc 24
    this.markFuncBegin("createShakeAction", "begin");
    // source line 1221, bytecode pc 33
    (_actions = []);
    // source line 1233, bytecode pc 38
    (i = 0);
    while ((i < this.cardViews.length)) {
        // source line 1234, bytecode pc 49
        (j = 0);
        while ((j < this.cardViews[i].length)) {
            if ((data.input.tmpViewTo === this.cardViews[i][j])) {
            } else {
                if (this.cardViews[i][j]) {
                    // source line 1250, bytecode pc 441
                    _actions.push(cc.TargetedAction.create(this.cardViews[i][j], xs.Utils.Action.combineSequence([
    cc.MoveBy.create((2 / xs.fps), cc.p(0, -8)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, 6)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, -4)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, 6))
])));
                }
            }
            // source line 1234, bytecode pc 455
            (j = (+j + 1));
        }
        // source line 1233, bytecode pc 495
        (i = (+i + 1));
    }
    // source line 1267, bytecode pc 844
    _actions.push(cc.TargetedAction.create(this.getBg(), xs.Utils.Action.combineSequence([
    cc.MoveBy.create((2 / xs.fps), cc.p(0, -8)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, 6)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, -4)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, 6))
])));
    // source line 1273, bytecode pc 878
    (_ret = xs.Utils.Action.combineSpawn(_actions));
    // source line 1275, bytecode pc 903
    this.markFuncEnd("createShakeAction", "end");
    // source line 1277, bytecode pc 907
    return _ret;
},
    createHurtAllEffectAction: function(data) {
    var _input, _base_dp, _params_to, _hpAll, _count, i, _tmp, _labelText, _keyAni, _actionPlay;
    // source line 1283, bytecode pc 11
    (_input = data.input);
    // source line 1289, bytecode pc 30
    (_base_dp = (data.dp || 1));
    // source line 1291, bytecode pc 57
    (_params_to = _input.para.model.params.to);
    if (!_params_to) {
        // source line 1294, bytecode pc 68
        return null;
    }
    // source line 1298, bytecode pc 73
    (_hpAll = 0);
    // source line 1301, bytecode pc 78
    (_count = 0);
    // source line 1302, bytecode pc 83
    (i = 0);
    while ((i < _params_to.length)) {
        // source line 1304, bytecode pc 100
        (_tmp = _params_to[i]);
        if (((_tmp.hp > 0) && !_tmp.isCure)) {
            // source line 1307, bytecode pc 168
            (_hpAll = (_hpAll + xs.Utils.parseIntSafe(_tmp.hp)));
            // source line 1308, bytecode pc 182
            (_count = (+_count + 1));
        }
        // source line 1302, bytecode pc 197
        (i = (+i + 1));
    }
    if ((_count <= 1)) {
        if ((_input.loopNum && (_input.loopNum > 1))) {
        } else {
            // source line 1318, bytecode pc 262
            return null;
        }
    }
    if (!this.m_armHurtAll) {
        // source line 1326, bytecode pc 318
        (this.m_armHurtAll = xs.Views.Armature.AutoAudioArmature.create("Arm_Hurt_All"));
        // source line 1327, bytecode pc 338
        this.m_armHurtAll.setVisible(false);
        // source line 1328, bytecode pc 444
        xs.Utils.Node.attachNodes(this.getNear(), this.m_armHurtAll, { base: "lb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.Center.Near);
    }
    // source line 1331, bytecode pc 480
    (_labelText = xs.Factorys.Label.createByStyleId("LS_FightHurt_all"));
    // source line 1332, bytecode pc 505
    _labelText.setString(("" + _hpAll));
    // source line 1333, bytecode pc 542
    _labelText.setAligns(xs.AlignH_Right, xs.AlignV_Center);
    // source line 1337, bytecode pc 570
    this.m_armHurtAll.replaceSkinByBoneKey("bone_text", _labelText);
    // source line 1340, bytecode pc 575
    (_keyAni = null);
    if (((_input.sideFrom === 0) && (_input.sideTo === 1))) {
        // source line 1342, bytecode pc 615
        (_keyAni = "ani_hurt_all_r");
    } else {
        // source line 1345, bytecode pc 629
        (_keyAni = "ani_hurt_all_l");
    }
    // source line 1348, bytecode pc 669
    (_actionPlay = this.m_armHurtAll.createPlayAction(_keyAni, { speed: _base_dp }));
    // source line 1353, bytecode pc 763
    return xs.Utils.Action.combineSequence([ _actionPlay, cc.TargetedAction.create(this.m_armHurtAll, cc.Hide.create()) ]);
},
    createFinishEffectAction: function(data) {
    var _env, _actions, _ret;
    // source line 1363, bytecode pc 27
    (_env = data.input.para.env);
    // source line 1365, bytecode pc 36
    (_actions = []);
    // source line 1413, bytecode pc 111
    _actions.push(cc.CallFunc.create(function() {
    var _data, _env, _fromViews, _toViews, _from_to, k, _views, i, _tmp, _childsTmp, j;
    // source line 1376, bytecode pc 9
    (_data = this.data);
    // source line 1377, bytecode pc 37
    (_env = data.input.para.env);
    // source line 1379, bytecode pc 65
    (_fromViews = data.input.para.fromViews);
    // source line 1380, bytecode pc 93
    (_toViews = data.input.para.toViews);
    // source line 1382, bytecode pc 116
    (_from_to = [ _fromViews, _toViews ]);
    // source line 1385, bytecode pc 121
    (k = 0);
    while ((k < _from_to.length)) {
        // source line 1387, bytecode pc 138
        (_views = _from_to[k]);
        // source line 1389, bytecode pc 143
        (i = 0);
        while ((i < _views.length)) {
            // source line 1390, bytecode pc 160
            (_tmp = _views[i]);
            // source line 1391, bytecode pc 175
            _tmp.pauseSchedulerAndActions();
            if (_tmp.arm) {
                // source line 1393, bytecode pc 219
                _tmp.arm.getAnimation().pause();
            }
            // source line 1396, bytecode pc 237
            (_childsTmp = _tmp.getChildren());
            // source line 1397, bytecode pc 242
            (j = 0);
            while ((j < _childsTmp.length)) {
                // source line 1398, bytecode pc 267
                _childsTmp[j].pauseSchedulerAndActions();
                // source line 1397, bytecode pc 281
                (j = (+j + 1));
            }
            // source line 1389, bytecode pc 314
            (i = (+i + 1));
        }
        // source line 1385, bytecode pc 347
        (k = (+k + 1));
    }
    // source line 1404, bytecode pc 381
    _env.pauseSchedulerAndActions();
    // source line 1405, bytecode pc 411
    _env._getLazyInitFinishArm(0).setVisible(true);
    // source line 1406, bytecode pc 445
    _env._getLazyInitFinishArm(0).playAniById("ani_finish_far");
    // source line 1407, bytecode pc 475
    _env._getLazyInitFinishArm(1).setVisible(true);
    // source line 1408, bytecode pc 509
    _env._getLazyInitFinishArm(1).playAniById("ani_finish_near");
}.bind({ data: data })));
    // source line 1421, bytecode pc 199
    _actions.push(cc.TargetedAction.create(_env.getBg(), cc.DelayTime.create((30 / xs.fps))));
    // source line 1463, bytecode pc 311
    _actions.push(cc.TargetedAction.create(_env.getBg(), cc.CallFunc.create(function() {
    var _data, _env, _fromViews, _toViews, _from_to, k, _views, i, _tmp, _childsTmp, j;
    // source line 1433, bytecode pc 9
    (_data = this.data);
    // source line 1434, bytecode pc 37
    (_env = data.input.para.env);
    // source line 1436, bytecode pc 65
    (_fromViews = data.input.para.fromViews);
    // source line 1437, bytecode pc 93
    (_toViews = data.input.para.toViews);
    // source line 1439, bytecode pc 116
    (_from_to = [ _fromViews, _toViews ]);
    // source line 1441, bytecode pc 121
    (k = 0);
    while ((k < _from_to.length)) {
        // source line 1443, bytecode pc 138
        (_views = _from_to[k]);
        // source line 1445, bytecode pc 143
        (i = 0);
        while ((i < _views.length)) {
            // source line 1446, bytecode pc 160
            (_tmp = _views[i]);
            // source line 1447, bytecode pc 175
            _tmp.resumeSchedulerAndActions();
            if (_tmp.arm) {
                // source line 1449, bytecode pc 219
                _tmp.arm.getAnimation().resume();
            }
            // source line 1452, bytecode pc 237
            (_childsTmp = _tmp.getChildren());
            // source line 1453, bytecode pc 242
            (j = 0);
            while ((j < _childsTmp.length)) {
                // source line 1454, bytecode pc 267
                _childsTmp[j].resumeSchedulerAndActions();
                // source line 1453, bytecode pc 281
                (j = (+j + 1));
            }
            // source line 1445, bytecode pc 314
            (i = (+i + 1));
        }
        // source line 1441, bytecode pc 347
        (k = (+k + 1));
    }
    // source line 1458, bytecode pc 381
    _env.resumeSchedulerAndActions();
    // source line 1460, bytecode pc 411
    _env._getLazyInitFinishArm(0).setVisible(false);
    // source line 1461, bytecode pc 441
    _env._getLazyInitFinishArm(1).setVisible(false);
}.bind({ data: data }))));
    // source line 1468, bytecode pc 345
    (_ret = xs.Utils.Action.combineSequence(_actions));
    // source line 1469, bytecode pc 360
    _ret.retain();
    // source line 1479, bytecode pc 403
    return cc.CallFunc.create(function() {
    // source line 1477, bytecode pc 39
    xs.Scene.Mgr.getRunningScene().runAction(this);
    // source line 1478, bytecode pc 52
    this.release();
}.bind(_ret));
    // source line 1482, bytecode pc 405
    return null;
},
    setVisible_AllCards: function(flag) {
    var i, j;
    // source line 1488, bytecode pc 4
    (i = 0);
    while ((i < this.cardViews.length)) {
        // source line 1489, bytecode pc 15
        (j = 0);
        while ((j < this.cardViews[i].length)) {
            if (this.cardViews[i][j]) {
                // source line 1491, bytecode pc 70
                this.cardViews[i][j].setVisible(flag);
            }
            // source line 1489, bytecode pc 84
            (j = (+j + 1));
        }
        // source line 1488, bytecode pc 124
        (i = (+i + 1));
    }
},
    createShowAllAction: function(data) {
    // source line 1507, bytecode pc 57
    return cc.CallFunc.create(function() {
    // source line 1505, bytecode pc 14
    this.setVisible_AllCards(true);
}.bind(data.input.para.env));
},
    createBgAction: function(data) {
    var _flag, _type, _base_dp, _ret;
    // source line 1513, bytecode pc 16
    (_flag = data.data.flag);
    // source line 1514, bytecode pc 33
    (_type = data.data.type);
    // source line 1518, bytecode pc 52
    (_base_dp = (data.dp || 1));
    // source line 1522, bytecode pc 100
    xs.assert(((_type === "super") || (_type === "ss")), "_type error");
    if ((_type === "super")) {
        if (_flag) {
            // source line 1538, bytecode pc 262
            (_ret = xs.Utils.Action.combineSequence([
    this._getLazyInitFinishArm(0).createPlayAction("ani_name_super_bg_start", { speed: _base_dp }),
    this._getLazyInitFinishArm(0).createPlayAction("ani_name_super_bg_status", { speed: _base_dp })
]));
        } else {
            // source line 1545, bytecode pc 353
            (_ret = xs.Utils.Action.combineSequence([ this._getLazyInitFinishArm(0).createPlayAction("ani_name_super_bg_end", { speed: _base_dp }) ]));
        }
    } else {
        if ((_type === "ss")) {
            if (_flag) {
                // source line 1560, bytecode pc 516
                (_ret = xs.Utils.Action.combineSequence([
    this._getLazyInitFinishArm(0).createPlayAction("ani_name_ss_bg_start", { speed: _base_dp }),
    this._getLazyInitFinishArm(0).createPlayAction("ani_name_ss_bg_status", { speed: _base_dp })
]));
            } else {
                // source line 1567, bytecode pc 607
                (_ret = xs.Utils.Action.combineSequence([ this._getLazyInitFinishArm(0).createPlayAction("ani_name_ss_bg_end", { speed: _base_dp }) ]));
            }
        } else {
            // source line 1573, bytecode pc 631
            this.error("_type error");
        }
    }
    // source line 1579, bytecode pc 635
    return _ret;
},
    createCardsOpenActions: function(data) {
    var _initData, _dp, _isResultOpen, _actions, _sideLengths, i, j, _tmp, _actionsSeq, _ret;
    // source line 1595, bytecode pc 24
    this.markFuncBegin("createBackupsOpenActions", "begin");
    // source line 1597, bytecode pc 51
    (_initData = data.input.para.env.model);
    // source line 1599, bytecode pc 63
    (_dp = data.dp);
    // source line 1601, bytecode pc 80
    (_isResultOpen = data.data.isResultOpen);
    // source line 1604, bytecode pc 89
    (_actions = []);
    // source line 1608, bytecode pc 122
    (_sideLengths = [ _initData.cards_size0, _initData.cards_size1 ]);
    // source line 1613, bytecode pc 127
    (i = 0);
    while ((i < 2)) {
        if ((_isResultOpen && (i === 1))) {
        } else {
            // source line 1619, bytecode pc 162
            (j = 0);
            while ((j < _sideLengths[i])) {
                // source line 1620, bytecode pc 186
                (_tmp = this.cardViews[i][j]);
                // source line 1622, bytecode pc 213
                xs.assert(_tmp, "this.cardViews[i][j] is null");
                // source line 1625, bytecode pc 222
                (_actionsSeq = []);
                // source line 1628, bytecode pc 259
                _actionsSeq.push(cc.Hide.create());
                // source line 1631, bytecode pc 314
                _actionsSeq.push(cc.DelayTime.create(((_dp * 16) / xs.fps)));
                // source line 1634, bytecode pc 380
                _actionsSeq.push(cc.MoveBy.create((_dp * 0), cc.p(0, 192)));
                // source line 1637, bytecode pc 417
                _actionsSeq.push(cc.Show.create());
                // source line 1640, bytecode pc 497
                _actionsSeq.push(cc.MoveBy.create(((_dp * 4) / xs.fps), cc.p(0, -200)));
                // source line 1643, bytecode pc 573
                _actionsSeq.push(cc.MoveBy.create(((_dp * 1) / xs.fps), cc.p(0, 12)));
                // source line 1646, bytecode pc 649
                _actionsSeq.push(cc.MoveBy.create(((_dp * 1) / xs.fps), cc.p(0, -4)));
                // source line 1652, bytecode pc 721
                _actions.push(cc.TargetedAction.create(_tmp, xs.Utils.Action.combineSequence(_actionsSeq)));
                // source line 1619, bytecode pc 735
                (j = (+j + 1));
            }
        }
        // source line 1613, bytecode pc 767
        (i = (+i + 1));
    }
    // source line 1662, bytecode pc 814
    (_ret = xs.Utils.Action.combineSpawn(_actions));
    // source line 1665, bytecode pc 848
    this.markFuncEnd("createBackupsOpenActions", ("end:" + _actions.length));
    // source line 1667, bytecode pc 852
    return _ret;
},
    createBackupsOpenActions: function(data) {
    var _envModel, _dp, _actions, _sideLengths, i, j, _tmp, factor, _actionsSeq, _ret;
    // source line 1673, bytecode pc 24
    this.log("createBackupsOpenActions", "begin");
    // source line 1675, bytecode pc 51
    (_envModel = data.input.para.env.model);
    // source line 1677, bytecode pc 63
    (_dp = data.dp);
    // source line 1679, bytecode pc 72
    (_actions = []);
    // source line 1684, bytecode pc 105
    (_sideLengths = [ _envModel.backups_size0, _envModel.backups_size1 ]);
    // source line 1689, bytecode pc 110
    (i = 0);
    while ((i < 2)) {
        if (((i === 1) && data.data.isResultOpen)) {
        } else {
            // source line 1695, bytecode pc 155
            (j = 0);
            while ((j < _sideLengths[i])) {
                // source line 1696, bytecode pc 179
                (_tmp = this.backupViews[i][j]);
                // source line 1698, bytecode pc 206
                xs.assert(_tmp, "this.backupViews[i][j]");
                // source line 1701, bytecode pc 228
                (factor = ((i === 0) ? 1 : -1));
                // source line 1703, bytecode pc 237
                (_actionsSeq = []);
                // source line 1706, bytecode pc 274
                _actionsSeq.push(cc.Hide.create());
                // source line 1709, bytecode pc 329
                _actionsSeq.push(cc.DelayTime.create(((_dp * 8) / xs.fps)));
                // source line 1712, bytecode pc 401
                _actionsSeq.push(cc.MoveBy.create((_dp * 0), cc.p((factor * -238), 0)));
                // source line 1715, bytecode pc 438
                _actionsSeq.push(cc.Show.create());
                // source line 1718, bytecode pc 520
                _actionsSeq.push(cc.MoveBy.create(((_dp * 4) / xs.fps), cc.p((factor * 298), 0)));
                // source line 1721, bytecode pc 601
                _actionsSeq.push(cc.MoveBy.create(((_dp * 3) / xs.fps), cc.p((factor * -68), 0)));
                // source line 1724, bytecode pc 681
                _actionsSeq.push(cc.MoveBy.create(((_dp * 1) / xs.fps), cc.p((factor * 8), 0)));
                // source line 1731, bytecode pc 753
                _actions.push(cc.TargetedAction.create(_tmp, xs.Utils.Action.combineSequence(_actionsSeq)));
                // source line 1695, bytecode pc 767
                (j = (+j + 1));
            }
        }
        // source line 1689, bytecode pc 799
        (i = (+i + 1));
    }
    // source line 1738, bytecode pc 835
    this.dump("_actions", _actions);
    // source line 1741, bytecode pc 869
    (_ret = xs.Utils.Action.combineSpawn(_actions));
    // source line 1744, bytecode pc 903
    this.log("createBackupsOpenActions", ("end:" + _actions.length));
    // source line 1746, bytecode pc 907
    return _ret;
},
    createLianYingActions: function(data) {
    var _num, _input, _dp, _fromView, _toView, _actionsFrom, _actionsTo, i, _fromTmpAction;
    // source line 1754, bytecode pc 29
    xs.dump("1111", data, 2);
    // source line 1756, bytecode pc 71
    xs.dump("2222", data.input.para.model);
    // source line 1758, bytecode pc 98
    (_num = data.input.para.model.num);
    // source line 1759, bytecode pc 110
    (_input = data.input);
    // source line 1760, bytecode pc 122
    (_dp = data.dp);
    // source line 1762, bytecode pc 162
    (_fromView = xs.Factorys.Skill.getViewByName(_input, "from"));
    // source line 1763, bytecode pc 202
    (_toView = xs.Factorys.Skill.getViewByName(_input, "to"));
    // source line 1771, bytecode pc 256
    xs.dump("3333", { baseDp: data.dp, num: _num }, 2);
    // source line 1778, bytecode pc 265
    (_actionsFrom = []);
    // source line 1779, bytecode pc 274
    (_actionsTo = []);
    // source line 1781, bytecode pc 279
    (i = 0);
    while ((i < _num)) {
        // source line 1788, bytecode pc 350
        (_fromTmpAction = _fromView.createPlayAniActions({ dp: _dp, data: { aniId: "ani_attack_sword", control: {} } }));
        // source line 1793, bytecode pc 369
        _actionsFrom.push(_fromTmpAction);
        // source line 1794, bytecode pc 386
        _actionsTo.push(null);
        // source line 1781, bytecode pc 400
        (i = (+i + 1));
    }
    // source line 1801, bytecode pc 515
    return xs.Utils.Action.combineSpawn([ xs.Utils.Action.combineSequence(_actionsFrom), xs.Utils.Action.combineSequence(_actionsTo) ]);
},
    createSkillAction: function(itemRef) {
    var _actions;
    // source line 1826, bytecode pc 8
    (_actions = []);
    if ((itemRef.getSkillName() === "lianying")) {
        // source line 1829, bytecode pc 61
        _actions.push(this.createLianYingActions());
    } else {
        if ((itemRef.getSkillName() === "luoshen")) {
        }
    }
    // source line 1834, bytecode pc 119
    _actions.push(this.createActionStartScheduleUpdate());
    // source line 1837, bytecode pc 150
    return xs.Utils.Action.combineSequence(_actions);
},
    createSuperSkillNameAction: function(data) {
    var _type, _base_dp, _aniKey, _para, _env, _modelSkill, _string, _idxFrom, _cardObj, _modelGeneral, _arm, _skill_code, _spriteSkillName, _cfgArray, _tmpSprite, _ret;
    // source line 1846, bytecode pc 16
    (_type = data.data.type);
    // source line 1850, bytecode pc 56
    xs.assert(((_type === 0) || (_type === 1)), "createSuperSkillNameAction type error");
    // source line 1852, bytecode pc 75
    (_base_dp = (data.dp || 1));
    // source line 1854, bytecode pc 84
    (_aniKey = "");
    // source line 1856, bytecode pc 107
    xs.log("------ 99999999 ------");
    // source line 1862, bytecode pc 124
    (_para = data.input.para);
    // source line 1863, bytecode pc 136
    (_env = _para.env);
    // source line 1865, bytecode pc 173
    xs.log("***** 8888 _para.model.skillId = ", _para.model.skillId);
    // source line 1867, bytecode pc 228
    (_modelSkill = xs.Models.Skill.createWithBase((_para.model.skillId || "TODO")));
    // source line 1868, bytecode pc 246
    (_string = _modelSkill.getNameString());
    // source line 1874, bytecode pc 263
    (_idxFrom = data.input.tmpIdxFrom);
    // source line 1876, bytecode pc 296
    (_cardObj = _env.getModel().getCardModelByIdx(_idxFrom));
    // source line 1877, bytecode pc 335
    (_modelGeneral = xs.Models.General.createWithBase(_cardObj.id));
    // source line 1881, bytecode pc 347
    (_arm = _env.armSkillName);
    // source line 1895, bytecode pc 365
    (_skill_code = _modelSkill.getSkillCode());
    // source line 1897, bytecode pc 392
    xs.log("-----0000 skill_code = ", _skill_code);
    if ((_skill_code == "shenmijineng")) {
        if ((xs.Scene.Fight.SkillNameEx[_para.model.skill] != undefined)) {
            // source line 1900, bytecode pc 509
            xs.log("------ 11111 xs.Scene.Fight.SkillNameEx[_para.model.skill] = ", xs.Scene.Fight.SkillNameEx[_para.model.skill]);
            // source line 1901, bytecode pc 547
            (_skill_code = xs.Scene.Fight.SkillNameEx[_para.model.skill]);
            // source line 1902, bytecode pc 574
            xs.log("------- 1111111 _skill_code = ", _skill_code);
        } else {
            // source line 1905, bytecode pc 606
            xs.log("------- 2222222 _skill_code = ", _skill_code);
        }
    }
    if ((_skill_code.indexOf("mo_") == 0)) {
        // source line 1910, bytecode pc 654
        (_skill_code = _skill_code.substr(3));
    }
    // source line 1915, bytecode pc 700
    (_spriteSkillName = xs.Factorys.Sprite.createWithFileName((("FightScene03/FightScene03_" + _skill_code) + ".png")));
    if (_spriteSkillName) {
        // source line 1919, bytecode pc 733
        _arm.replaceSkinByBoneKey("skillName", _spriteSkillName);
    }
    // source line 1933, bytecode pc 765
    (_cfgArray = [ "ani_name_super_", "ani_name_ss_" ]);
    // source line 1936, bytecode pc 776
    (_aniKey = _cfgArray[_type]);
    if ((data.input.sideFrom === 0)) {
        // source line 1940, bytecode pc 809
        (_aniKey = (_aniKey + "0"));
        // source line 1944, bytecode pc 856
        _arm.replaceSkinByBoneKey("skillFrom", _modelGeneral.getRes().createOriginalSprite_Waist());
        // source line 1945, bytecode pc 949
        xs.Utils.Node.attachNodes(this, _arm, { pc: true, base: "lb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    } else {
        if ((data.input.sideFrom === 1)) {
            // source line 1949, bytecode pc 987
            (_aniKey = (_aniKey + "1"));
            // source line 1952, bytecode pc 1016
            (_tmpSprite = _modelGeneral.getRes().createOriginalSprite_Waist());
            // source line 1953, bytecode pc 1035
            _tmpSprite.setRotationY(180);
            // source line 1954, bytecode pc 1060
            _arm.replaceSkinByBoneKey("skillFrom", _tmpSprite);
            // source line 1955, bytecode pc 1153
            xs.Utils.Node.attachNodes(this, _arm, { pc: true, base: "rb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
        } else {
            // source line 1959, bytecode pc 1177
            this.error("need data.input.sideFrom");
        }
    }
    // source line 1962, bytecode pc 1200
    _arm.playAniById("idle", null);
    // source line 1969, bytecode pc 1324
    (_ret = xs.Utils.Action.combineSequence([
    _arm.createPlayAction(_aniKey, { speed: _base_dp }),
    cc.TargetedAction.create(_arm, cc.Hide.create())
]));
    // source line 1981, bytecode pc 1328
    return _ret;
},
    createSuperGoddessNameAction: function(data) {
    var _type, _base_dp, _aniKey, _para, _env, _arm, _spriteSkillName, _cfgArray, _tmpSprite, _ret;
    // source line 1988, bytecode pc 16
    (_type = data.data.type);
    // source line 1992, bytecode pc 56
    xs.assert(((_type === 0) || (_type === 1)), "createSuperGoddessNameAction type error");
    // source line 1994, bytecode pc 75
    (_base_dp = (data.dp || 1));
    // source line 1996, bytecode pc 84
    (_aniKey = "");
    // source line 1998, bytecode pc 101
    (_para = data.input.para);
    // source line 2000, bytecode pc 113
    (_env = _para.env);
    // source line 2002, bytecode pc 125
    (_arm = _env.armSkillName);
    // source line 2005, bytecode pc 161
    (_spriteSkillName = xs.Factorys.Sprite.createWithFileName("FightScene03/FightScene03_.png"));
    if (_spriteSkillName) {
        // source line 2008, bytecode pc 194
        _arm.replaceSkinByBoneKey("skillName", _spriteSkillName);
    }
    // source line 2017, bytecode pc 226
    (_cfgArray = [ "ani_name_super_", "ani_name_ss_" ]);
    // source line 2020, bytecode pc 237
    (_aniKey = _cfgArray[_type]);
    // source line 2021, bytecode pc 274
    xs.log_hsq("mskillId", _para.model.skillId);
    // source line 2024, bytecode pc 340
    (_tmpSprite = xs.Models.Resource.createWithBase(_para.model.skillId, xs.Constant_ResType_General).createOriginalSprite_Waist());
    if ((data.input.sideFrom === 0)) {
        // source line 2028, bytecode pc 373
        (_aniKey = (_aniKey + "0"));
        // source line 2030, bytecode pc 398
        _arm.replaceSkinByBoneKey("skillFrom", _tmpSprite);
        // source line 2031, bytecode pc 491
        xs.Utils.Node.attachNodes(this, _arm, { pc: true, base: "lb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    } else {
        if ((data.input.sideFrom === 1)) {
            // source line 2035, bytecode pc 529
            (_aniKey = (_aniKey + "1"));
            // source line 2037, bytecode pc 548
            _tmpSprite.setRotationY(180);
            // source line 2038, bytecode pc 573
            _arm.replaceSkinByBoneKey("skillFrom", _tmpSprite);
            // source line 2039, bytecode pc 666
            xs.Utils.Node.attachNodes(this, _arm, { pc: true, base: "rb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
        } else {
            // source line 2043, bytecode pc 690
            this.error("need data.input.sideFrom");
        }
    }
    // source line 2046, bytecode pc 713
    _arm.playAniById("idle", null);
    // source line 2052, bytecode pc 837
    (_ret = xs.Utils.Action.combineSequence([
    _arm.createPlayAction(_aniKey, { speed: _base_dp }),
    cc.TargetedAction.create(_arm, cc.Hide.create())
]));
    // source line 2057, bytecode pc 841
    return _ret;
},
    createResultExpLevelAction: function(data) {
    var _para, _env, _envModel, _base_dp, _fightModel, _actionsSpawn, i, _targetView, _aniKey, _arm, _labelExp, _labelLvup, _idx, _actionAdd, _ret;
    // source line 2064, bytecode pc 16
    (_para = data.input.para);
    // source line 2065, bytecode pc 28
    (_env = _para.env);
    // source line 2066, bytecode pc 45
    (_envModel = _para.env.model);
    // source line 2068, bytecode pc 64
    (_base_dp = (data.dp || 1));
    // source line 2073, bytecode pc 81
    (_fightModel = _env.params.fightData);
    // source line 2078, bytecode pc 90
    (_actionsSpawn = []);
    // source line 2080, bytecode pc 95
    (i = 0);
    while ((i < (_envModel.cards_size0 + _envModel.backups_size0))) {
        // source line 2082, bytecode pc 106
        (_targetView = null);
        // source line 2083, bytecode pc 111
        (_aniKey = null);
        // source line 2085, bytecode pc 152
        (_arm = xs.Views.Armature.AutoAudioArmature.create("Arm_Fight_SkillName"));
        // source line 2087, bytecode pc 157
        (_labelExp = null);
        // source line 2088, bytecode pc 162
        (_labelLvup = null);
        // source line 2090, bytecode pc 167
        (_idx = null);
        if ((i < _envModel.cards_size0)) {
            // source line 2094, bytecode pc 191
            (_idx = i);
            // source line 2096, bytecode pc 209
            (_targetView = _env.cardViews[0][_idx]);
            if (_fightModel.isGeneralLevelup(_idx)) {
                // source line 2099, bytecode pc 241
                (_aniKey = "ani_exp_lvup_kapai");
                // source line 2102, bytecode pc 329
                (_labelLvup = xs.Factorys.Label.createByStyleIdWithString("LS_Fight_Cure", (xs.Tools.String.createString("auto_name_Lv") + _fightModel.getGeneralLevelNowByIdx(_idx))));
                // source line 2105, bytecode pc 366
                _arm.setPosition(cc.p(0, -50));
            } else {
                // source line 2108, bytecode pc 380
                (_aniKey = "ani_exp_kapai");
            }
        } else {
            // source line 2114, bytecode pc 401
            (_idx = (i - _envModel.cards_size0));
            // source line 2116, bytecode pc 419
            (_targetView = _env.backupViews[0][_idx]);
            if (_fightModel.isGeneralLevelup(_idx)) {
                // source line 2118, bytecode pc 451
                (_aniKey = "ani_exp_lvup_yuanjun");
                // source line 2120, bytecode pc 539
                (_labelLvup = xs.Factorys.Label.createByStyleIdWithString("LS_Fight_Cure", (xs.Tools.String.createString("auto_name_Lv") + _fightModel.getGeneralLevelNowByIdx(_idx))));
            } else {
                // source line 2125, bytecode pc 553
                (_aniKey = "ani_exp_yuanjun");
            }
        }
        // source line 2130, bytecode pc 647
        (_labelExp = xs.Factorys.Label.createByStyleIdWithString("LS_Fight_Cure", ((xs.Tools.String.createString("auto_name_Exp") + "+") + _fightModel.getGeneralExpChangeByIdx(_idx))));
        // source line 2132, bytecode pc 696
        _labelExp.setStringParams([ ("" + _fightModel.getGeneralExpChangeByIdx(_idx)) ]);
        if (_labelExp) {
            // source line 2135, bytecode pc 725
            _labelExp.setScale(0.7);
            // source line 2136, bytecode pc 750
            _arm.replaceSkinByBoneKey("labelExp", _labelExp);
        }
        if (_labelLvup) {
            // source line 2140, bytecode pc 779
            _labelLvup.setScale(0.7);
            // source line 2141, bytecode pc 804
            _arm.replaceSkinByBoneKey("labelLv", _labelLvup);
        }
        // source line 2147, bytecode pc 825
        _arm.playAniById("idle");
        // source line 2148, bytecode pc 842
        _arm.setVisible(true);
        // source line 2150, bytecode pc 894
        xs.Utils.Node.attachNodes(_targetView, _arm, null, _targetView.getCfg_ArmEffect());
        // source line 2153, bytecode pc 899
        (_actionAdd = null);
        // source line 2166, bytecode pc 1032
        _actionsSpawn.push(xs.Utils.Action.combineSequence([
    _actionAdd,
    xs.Utils.Action.combineSpawn([ _arm.createPlayAction(_aniKey, { speed: _base_dp }) ]),
    null
]));
        // source line 2080, bytecode pc 1046
        (i = (+i + 1));
    }
    // source line 2173, bytecode pc 1108
    (_ret = xs.Utils.Action.combineSpawn(_actionsSpawn));
    // source line 2178, bytecode pc 1112
    return _ret;
},
    createResultLevelAction: function() {
    // source line 2182, bytecode pc 1
    return null;
},
    createMoveIconsActions: function(data) {
    // source line 2191, bytecode pc 16
    return this.createBackupIconsFixActions(data);
},
    createBackupIconsFixActions: function(data) {
    var _initData, _dp, _length, _actions, _count, i, _cardModel, _side, _idx, _posX, _tmpView, _ret;
    // source line 2200, bytecode pc 26
    (_initData = data.input.para.env.model);
    // source line 2202, bytecode pc 38
    (_dp = data.dp);
    // source line 2207, bytecode pc 68
    (_length = ((_initData.cards_size0 + _initData.cards_size1) + _initData.backups_size0));
    // source line 2209, bytecode pc 77
    (_actions = []);
    // source line 2211, bytecode pc 82
    (_count = 0);
    // source line 2214, bytecode pc 103
    (i = (_initData.cards_size0 + _initData.cards_size1));
    while ((i < _initData.cardDatas.length)) {
        if ((_length === i)) {
            // source line 2218, bytecode pc 126
            (_count = 0);
        }
        // source line 2221, bytecode pc 148
        (_cardModel = _initData.getCardModelByIdx(i));
        if ((_cardModel === null)) {
            // source line 2226, bytecode pc 172
            (_count = (+_count + 1));
        } else {
            // source line 2230, bytecode pc 201
            (_side = ((i < _length) ? 0 : 1));
            if ((_side === 0)) {
                // source line 2233, bytecode pc 240
                (_idx = (i - (_initData.cards_size0 + _initData.cards_size1)));
            } else {
                // source line 2236, bytecode pc 256
                (_idx = (i - _length));
            }
            // source line 2241, bytecode pc 289
            (_posX = this.backupViews[_side][(_idx - _count)].makeHeadPosX());
            // source line 2243, bytecode pc 307
            (_tmpView = this.backupViews[_side][_idx]);
            // source line 2248, bytecode pc 410
            _actions.push(cc.TargetedAction.create(_tmpView, cc.MoveTo.create(_dp, cc.p(_posX, _tmpView.getPositionY()))));
        }
        // source line 2214, bytecode pc 424
        (i = (+i + 1));
    }
    // source line 2255, bytecode pc 482
    (_ret = xs.Utils.Action.combineSpawn(_actions));
    // source line 2259, bytecode pc 486
    return _ret;
},
    updateBackupNum: function(side) {
    // source line 2265, bytecode pc 65
    this.backUpNum[side].update(this.model.getBackUpNumCur(side), this.model.getBackUpNumMax(side));
},
    updateRoundInfo: function(para, input) {
    var _pre;
    // source line 2271, bytecode pc 24
    this.markFuncBegin("updateRoundInfo", "begin");
    // source line 2272, bytecode pc 46
    (_pre = para.model.params.pre);
    // source line 2274, bytecode pc 73
    this.model.setRoundCur(_pre.roundCur);
    // source line 2275, bytecode pc 93
    this._updateRoundNum(this.model);
    // source line 2277, bytecode pc 118
    this.markFuncEnd("updateRoundInfo", "end");
},
    showRoundFinish: function(para) {
    var _pre;
    // source line 2283, bytecode pc 21
    (_pre = para.model.params.pre);
    // source line 2285, bytecode pc 94
    xs.Views.Mgr.showToastByStringId("str_fight_round_overflow", [ (_pre.round || 100) ], { _speedScale: 4 });
},
    updateStarInfo: function(para, input) {
    var _starNumCur;
    // source line 2290, bytecode pc 24
    this.markFuncBegin("updateStarInfo", "begin");
    // source line 2292, bytecode pc 51
    (_starNumCur = para.model.params.pre.StarNumCur);
    if (_starNumCur) {
        if (xs.Utils.isEmpty(this.params.round)) {
            // source line 2296, bytecode pc 114
            this._updateStarNum(_starNumCur);
        }
    }
    // source line 2301, bytecode pc 139
    this.markFuncEnd("updateStarInfo", "begin");
},
    updateDeathNum: function(para, input, side) {
    // source line 2308, bytecode pc 24
    this.markFuncBegin("updateDeathNum", "begin");
    /* TODO_BYTECODE pc=69 opcode=toid reason=opcode_handler_not_implemented */
    // source line 2312, bytecode pc 83
    (this.model.deathNum[undefined /* TODO_BYTECODE pc=69 opcode=toid reason=opcode_handler_not_implemented */] = (+this.model.deathNum[undefined /* TODO_BYTECODE pc=69 opcode=toid reason=opcode_handler_not_implemented */] + 1));
    // source line 2314, bytecode pc 136
    this._updateUserInfo(((side === 0) ? input.sideFrom : input.sideTo), this.model);
    // source line 2316, bytecode pc 161
    this.markFuncEnd("updateDeathNum", "end");
},
    createShowStoryAction: function(data) {
    var _model, _plot_cfg, _rounds;
    // source line 2322, bytecode pc 21
    (_model = data.input.para.model);
    // source line 2326, bytecode pc 34
    this.unscheduleUpdate();
    // source line 2330, bytecode pc 84
    (_plot_cfg = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Plot_Dialog, _model.skillId));
    // source line 2336, bytecode pc 118
    (_rounds = xs.Models.FightRoundList.createWithStoryItems(_plot_cfg));
    // source line 2338, bytecode pc 141
    this.assert(_rounds, "_rounds is null");
    // source line 2355, bytecode pc 201
    return cc.CallFunc.create(function() {
    // source line 2343, bytecode pc 26
    xs.Tools.Sys.free_when_fight_story();
    // source line 2350, bytecode pc 105
    xs.Views.Mgr.showDialogByName("Story", {
    rounds: this.rounds,
    funcNext: function() {
    // source line 2349, bytecode pc 12
    this.startUpdate();
}.bind(this.env)
});
}.bind({ rounds: _rounds, env: this }));
},
    createUpdateDeathNumAction: function(data) {
    var _ret;
    // source line 2374, bytecode pc 85
    (_ret = cc.CallFunc.create(function(sender, __data) {
    // source line 2368, bytecode pc 33
    this.layer.updateDeathNum(null, this.input, this.side);
}.bind({ side: data.data.side, input: data.input, layer: this })));
    // source line 2379, bytecode pc 99
    (_ret.tag = "action_createUpdateDeathNum");
    // source line 2381, bytecode pc 103
    return _ret;
},
    updateModel: function(para, input) {
    // source line 2388, bytecode pc 24
    this.markFuncBegin("fightscene updateModel", "begin");
    // source line 2389, bytecode pc 68
    para.env.model.update_cards_idx(para.model.params.pre);
    // source line 2390, bytecode pc 106
    this.dump("tmp cardDatas after", para.env.model.cardDatas);
    // source line 2391, bytecode pc 131
    this.markFuncEnd("fightscene updateModel", "end");
},
    updateBackupModel: function(para, input) {
    var _paramsTo, i, _event;
    // source line 2398, bytecode pc 24
    this.markFuncBegin("updateBackupModel", "begin");
    // source line 2400, bytecode pc 46
    (_paramsTo = para.model.params.to);
    if (!_paramsTo) {
        // source line 2403, bytecode pc 57
        return void 0;
    }
    // source line 2407, bytecode pc 62
    (i = 0);
    while ((i < _paramsTo.length)) {
        // source line 2408, bytecode pc 84
        (_event = _paramsTo[i].event);
        if (_event) {
            if (((_event.indexOf("backup") >= 0) && (_event.indexOf("death") >= 0))) {
                // source line 2411, bytecode pc 187
                para.env.model.setCardModelByIdx(para.toIdxs[i], null);
            }
        }
        // source line 2407, bytecode pc 201
        (i = (+i + 1));
    }
    // source line 2419, bytecode pc 245
    this.markFuncEnd("updateBackupModel", "end");
},
    useNewBody: function(para, input) {
    var _params, _leaveIdx, _idx, _side, _card;
    // source line 2425, bytecode pc 24
    this.markFuncBegin("FightScene useNewBody", "begin");
    // source line 2427, bytecode pc 46
    (_params = para.model.params.pre);
    // source line 2428, bytecode pc 58
    (_leaveIdx = _params.leaveIdx);
    // source line 2431, bytecode pc 83
    (_idx = this.model.getOffsetByIdx(_leaveIdx));
    // source line 2432, bytecode pc 108
    (_side = this.model.getSideByIdx(_leaveIdx));
    // source line 2437, bytecode pc 133
    (_card = para.env.cardViews[_side][_idx]);
    // source line 2439, bytecode pc 156
    _card.useNewBody(para, input);
    // source line 2443, bytecode pc 173
    _card.setScale(1);
    // source line 2446, bytecode pc 198
    this.markFuncEnd("FightScene useNewBody", "end");
},
    setInfoUIVisible: function(flag) {
    // source line 2452, bytecode pc 21
    this.roundInfo.setVisible(flag);
    // source line 2453, bytecode pc 45
    this.userInfo[0].setVisible(flag);
    // source line 2454, bytecode pc 69
    this.userInfo[1].setVisible(flag);
    // source line 2455, bytecode pc 93
    this.backupBgs[0].setVisible(flag);
    // source line 2456, bytecode pc 117
    this.backupBgs[1].setVisible(flag);
    // source line 2457, bytecode pc 139
    this.vs.setVisible(flag);
    // source line 2458, bytecode pc 161
    this.armFightStar.setVisible(flag);
},
    _can_change_speed: function() {
    if ((this.params.fightType === xs.Constant_FightScene_Type_NewPlayer)) {
        // source line 2467, bytecode pc 28
        return false;
    } else {
        // source line 2469, bytecode pc 35
        return true;
    }
},
    _btnOnClickCallBack_SpeedSwitch: function() {
    var _can_change_speed, _speed, speed3Result;
    // source line 2478, bytecode pc 15
    (_can_change_speed = this._can_change_speed());
    if (!_can_change_speed) {
        // source line 2481, bytecode pc 26
        return void 0;
    }
    // source line 2485, bytecode pc 47
    (_speed = this.model.getSpeedTag());
    if ((_speed === 1)) {
        // source line 2489, bytecode pc 75
        this.model.changeSpeed();
    } else {
        if ((_speed === 2)) {
            // source line 2491, bytecode pc 121
            (speed3Result = xs.Profile.Permission.isUnLock_fightSpeed3());
            if (speed3Result.result) {
                // source line 2494, bytecode pc 152
                this.model.changeSpeed();
            } else {
                // source line 2496, bytecode pc 177
                this.model.setSpeedIdx(0);
                // source line 2497, bytecode pc 213
                xs.Views.Mgr.showToast(speed3Result.desc);
            }
        } else {
            if ((_speed === 3)) {
                // source line 2501, bytecode pc 249
                this.model.setSpeedIdx(0);
            }
        }
    }
    // source line 2504, bytecode pc 294
    this.btnSpeed.setStringParams([ this.model.getSpeedText() ]);
    // source line 2506, bytecode pc 307
    this._freshEnabled();
},
    getSpeed: function() {
    if ((this.step0 === this.Step_FightProcess_Loop)) {
        if ((this.params.fightType === xs.Constant_FightScene_Type_NewPlayer)) {
            // source line 2523, bytecode pc 77
            this.btnSpeed.setStringParams([ "3" ]);
            // source line 2524, bytecode pc 95
            return this.model.getNewPlayerSpeed();
        } else {
            // source line 2527, bytecode pc 118
            return this.model.getSpeed();
        }
    } else {
        // source line 2530, bytecode pc 125
        return 1;
    }
},
    startUpdate: function() {
    if (!this.m_is_update_running) {
        // source line 2543, bytecode pc 41
        this.log(("startUpdate at " + new Date()));
        // source line 2545, bytecode pc 54
        this.scheduleUpdate();
        // source line 2546, bytecode pc 62
        (this.m_is_update_running = true);
    }
},
    stopUpdate: function() {
    // source line 2554, bytecode pc 12
    this.unscheduleUpdate();
    // source line 2555, bytecode pc 20
    (this.m_is_update_running = false);
},
    btnOnClickCallBack_SkipFightProcess: function() {
    if (this.m_is_skipping) {
        // source line 2564, bytecode pc 70
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_79"));
        // source line 2565, bytecode pc 90
        this.btnClose.setEnabled(false);
        // source line 2567, bytecode pc 92
        return void 0;
    }
    if ((this.model.canSkip() === true)) {
        if ((this.step0 === this.Step_FightProcess_Loop)) {
            // source line 2575, bytecode pc 147
            (this.step0 = this.Step_FightProcess_Exit);
            // source line 2577, bytecode pc 155
            (this.m_is_skipping = true);
            // source line 2579, bytecode pc 175
            this.btnClose.setEnabled(false);
        }
    } else {
        // source line 2590, bytecode pc 213
        xs.Views.Mgr.showToastByStringId("str_SkipFail");
    }
},
    load_laststep: function() {
    // source line 2596, bytecode pc 12
    this.startUpdate();
},
    createBlackMaskAction_goto: function(opcityTo, stepGoto, isSwitch) {
    var _action;
    // source line 2604, bytecode pc 4
    (_action = null);
    // source line 2633, bytecode pc 258
    return xs.Utils.Action.combineSequence([
    cc.TargetedAction.create(this.m_layerColor_near, cc.Show.create()),
    _action,
    cc.CallFunc.create(function() {
    // source line 2617, bytecode pc 19
    this.centerNode.setVisible(false);
    // source line 2618, bytecode pc 39
    this.btnClose.setVisible(false);
    // source line 2619, bytecode pc 59
    this.btnSpeed.setVisible(false);
}.bind(this)),
    cc.TargetedAction.create(this.m_layerColor_near, cc.FadeTo.create((8 / xs.fps), opcityTo)),
    cc.CallFunc.create(function() {
    // source line 2631, bytecode pc 15
    (this.step0 = stepGoto);
    // source line 2632, bytecode pc 28
    this.startUpdate();
}.bind(this))
]);
},
    createBlackMaskAction: function(opcityTo, stepGoto, isSwitch, isIgnoreFadeIn) {
    var _action;
    // source line 2643, bytecode pc 4
    (_action = null);
    // source line 2698, bytecode pc 326
    return xs.Utils.Action.combineSequence([
    cc.TargetedAction.create(this.m_layerColor_near, cc.Show.create()),
    cc.TargetedAction.create(this.m_layerColor_near, cc.FadeIn.create((6 / xs.fps))),
    _action,
    cc.CallFunc.create(function() {
    // source line 2663, bytecode pc 19
    this.centerNode.setVisible(false);
    // source line 2664, bytecode pc 39
    this.btnClose.setVisible(false);
    // source line 2665, bytecode pc 59
    this.btnSpeed.setVisible(false);
}.bind(this)),
    cc.TargetedAction.create(this.m_layerColor_near, cc.FadeTo.create((8 / xs.fps), opcityTo)),
    cc.CallFunc.create(function() {
    // source line 2693, bytecode pc 15
    (this.step0 = stepGoto);
    // source line 2695, bytecode pc 28
    this.startUpdate();
}.bind(this))
]);
},
    _clearAllTemp: function() {
    // source line 2738, bytecode pc 39
    xs.Utils.Node.removeFromParentSafe(this.getCenter());
    // source line 2739, bytecode pc 79
    xs.Utils.Node.removeFromParentSafe(this.getNear());
    // source line 2740, bytecode pc 119
    xs.Utils.Node.removeFromParentSafe(this.getMid());
    // source line 2741, bytecode pc 159
    xs.Utils.Node.removeFromParentSafe(this.getBlackBg());
    // source line 2742, bytecode pc 199
    xs.Utils.Node.removeFromParentSafe(this.getBg_Blood());
    // source line 2744, bytecode pc 233
    xs.Utils.Node.removeFromParentSafe(this.armFightStar);
    // source line 2745, bytecode pc 267
    xs.Utils.Node.removeFromParentSafe(this.armSkillName);
    // source line 2746, bytecode pc 301
    xs.Utils.Node.removeFromParentSafe(this.arm_bg);
    // source line 2747, bytecode pc 335
    xs.Utils.Node.removeFromParentSafe(this.arm_bg_near);
},
    _update_ext: function(fDelta) {
    var _step0, _haveStory1;
    // source line 2769, bytecode pc 9
    (_step0 = this.step0);
    if (((this.m_last_step0 === _step0) && (this.m_last_step0 === this.Step_FightProcess_Exit))) {
        // source line 2775, bytecode pc 45
        return void 0;
    }
    // source line 2777, bytecode pc 55
    (this.m_last_step0 = _step0);
    if ((_step0 === this.Step_None)) {
        // source line 2781, bytecode pc 72
        return void 0;
    }
    if ((_step0 !== this.Step_Result_Idle_Loop)) {
    }
    if ((_step0 === this.Step_Init)) {
        // source line 2789, bytecode pc 115
        (this.step0 = this.Step_Story0_Enter);
        // source line 2790, bytecode pc 132
        this.update(fDelta);
    } else {
        if ((_step0 === this.Step_Story0_Enter)) {
            // source line 2794, bytecode pc 165
            (this.step0 = this.Step_Story0_Loop);
            // source line 2795, bytecode pc 182
            this.update(fDelta);
        } else {
            if ((_step0 === this.Step_Story0_Loop)) {
                if (this.doStoryRound(0, this.Step_Story0_Exit)) {
                    // source line 2800, bytecode pc 241
                    this.stopUpdate();
                } else {
                    // source line 2803, bytecode pc 259
                    (this.step0 = this.Step_Story0_Exit);
                    // source line 2804, bytecode pc 276
                    this.update(fDelta);
                }
            } else {
                if ((_step0 === this.Step_Story0_Exit)) {
                    // source line 2808, bytecode pc 309
                    (this.step0 = this.Step_Open_Enter);
                    // source line 2809, bytecode pc 326
                    this.update(fDelta);
                } else {
                    if ((_step0 === this.Step_Open_Enter)) {
                        // source line 2818, bytecode pc 359
                        (this.step0 = this.Step_Open_Loop);
                        // source line 2819, bytecode pc 376
                        this.update(fDelta);
                    } else {
                        if ((_step0 === this.Step_Open_Loop)) {
                            if (this.doOpenRound()) {
                                // source line 2823, bytecode pc 426
                                this.stopUpdate();
                            } else {
                                // source line 2826, bytecode pc 444
                                (this.step0 = this.Step_Open_Exit);
                                // source line 2827, bytecode pc 461
                                this.update(fDelta);
                            }
                        } else {
                            if ((_step0 === this.Step_Open_Exit)) {
                                // source line 2831, bytecode pc 494
                                (this.step0 = this.Step_FightProcess_Enter);
                                // source line 2832, bytecode pc 511
                                this.update(fDelta);
                            } else {
                                if ((_step0 === this.Step_FightProcess_Enter)) {
                                    // source line 2837, bytecode pc 551
                                    this.btnClose.setVisible(true);
                                    // source line 2838, bytecode pc 571
                                    this.btnSpeed.setVisible(true);
                                    // source line 2840, bytecode pc 584
                                    (this.step0 = this.Step_FightProcess_Loop);
                                    // source line 2841, bytecode pc 601
                                    this.update(fDelta);
                                } else {
                                    if ((_step0 === this.Step_FightProcess_Loop)) {
                                        // source line 2845, bytecode pc 648
                                        xs.Tools.Sys.free_when_fight_round();
                                        if (this.doShowRound()) {
                                            // source line 2848, bytecode pc 678
                                            this.stopUpdate();
                                        } else {
                                            // source line 2856, bytecode pc 696
                                            (this.step0 = this.Step_FightProcess_Exit);
                                            // source line 2857, bytecode pc 713
                                            this.update(fDelta);
                                        }
                                    } else {
                                        if ((_step0 === this.Step_FightProcess_Exit)) {
                                            // source line 2863, bytecode pc 753
                                            this.btnClose.setVisible(false);
                                            // source line 2864, bytecode pc 773
                                            this.btnSpeed.setVisible(false);
                                            // source line 2866, bytecode pc 791
                                            (_haveStory1 = this._haveStory(1));
                                            if (_haveStory1) {
                                                // source line 2869, bytecode pc 812
                                                this.stopUpdate();
                                                // source line 2871, bytecode pc 851
                                                this.runAction(this.createBlackMaskAction(143, this.Step_Story1_Enter, false));
                                            } else {
                                                // source line 2876, bytecode pc 869
                                                this.stopUpdate();
                                                if (this.params.fightData.isSuccess()) {
                                                    // source line 2880, bytecode pc 933
                                                    this.runAction(this.createBlackMaskAction(0, this.Step_Result_Enter, true));
                                                } else {
                                                    // source line 2885, bytecode pc 977
                                                    this.runAction(this.createBlackMaskAction(143, this.Step_Result_Enter, true));
                                                }
                                            }
                                        } else {
                                            if ((_step0 === this.Step_Story1_Enter)) {
                                                // source line 2894, bytecode pc 1010
                                                (this.step0 = this.Step_Story1_Loop);
                                                // source line 2895, bytecode pc 1027
                                                this.update(fDelta);
                                            } else {
                                                if ((_step0 === this.Step_Story1_Loop)) {
                                                    if (this.doStoryRound(1, this.Step_Story1_Exit)) {
                                                        // source line 2901, bytecode pc 1086
                                                        this.stopUpdate();
                                                        // source line 2902, bytecode pc 1099
                                                        (this.step0 = this.Step_None);
                                                    } else {
                                                        // source line 2907, bytecode pc 1117
                                                        (this.step0 = this.Step_Story1_Exit);
                                                        // source line 2908, bytecode pc 1134
                                                        this.update(fDelta);
                                                    }
                                                } else {
                                                    if ((_step0 === this.Step_Story1_Exit)) {
                                                        if (this.params.fightData.isSuccess()) {
                                                            // source line 2924, bytecode pc 1194
                                                            this.stopUpdate();
                                                            // source line 2926, bytecode pc 1231
                                                            this.runAction(this.createBlackMaskAction_goto(0, this.Step_Result_Enter, true));
                                                        } else {
                                                            // source line 2931, bytecode pc 1249
                                                            this.stopUpdate();
                                                            // source line 2933, bytecode pc 1288
                                                            this.runAction(this.createBlackMaskAction_goto(143, this.Step_Result_Enter, true));
                                                        }
                                                    } else {
                                                        if ((_step0 === this.Step_Result_Enter)) {
                                                            if (((this.params.fightType === xs.Constant_FightScene_Type_NewPlayer) || (this.params.fightType === xs.Constant_FightScene_Type_SkillPreview))) {
                                                                // source line 2945, bytecode pc 1376
                                                                this.stopUpdate();
                                                                // source line 2947, bytecode pc 1394
                                                                this.params.funcFinish();
                                                                // source line 2949, bytecode pc 1407
                                                                (this.step0 = this.Step_Exit_Loop);
                                                            } else {
                                                                // source line 2954, bytecode pc 1425
                                                                this.doResultRound_showDlg();
                                                                // source line 2956, bytecode pc 1438
                                                                (this.step0 = this.Step_Result_Exp_Loop);
                                                                // source line 2957, bytecode pc 1455
                                                                this.update(fDelta);
                                                            }
                                                        } else {
                                                            if ((_step0 === this.Step_Result_Exp_Loop)) {
                                                                if (this.doResultRound()) {
                                                                    // source line 2962, bytecode pc 1505
                                                                    this.stopUpdate();
                                                                } else {
                                                                    // source line 2965, bytecode pc 1529
                                                                    this.log("Step_Result_Idle_Loop");
                                                                    // source line 2966, bytecode pc 1542
                                                                    (this.step0 = this.Step_Result_Idle_Loop);
                                                                    // source line 2967, bytecode pc 1559
                                                                    this.update(fDelta);
                                                                }
                                                            } else {
                                                                if ((_step0 === this.Step_Result_Idle_Loop)) {
                                                                } else {
                                                                    if ((_step0 === this.Step_Result_Exit)) {
                                                                        // source line 2975, bytecode pc 1612
                                                                        (this.step0 = this.Step_Exit_Enter);
                                                                        // source line 2976, bytecode pc 1629
                                                                        this.update(fDelta);
                                                                    } else {
                                                                        if ((_step0 === this.Step_Exit_Enter)) {
                                                                            // source line 2982, bytecode pc 1662
                                                                            (this.step0 = this.Step_Exit_Loop);
                                                                        } else {
                                                                            if ((_step0 === this.Step_Exit_Loop)) {
                                                                                // source line 2988, bytecode pc 1695
                                                                                this.stopUpdate();
                                                                            } else {
                                                                                // source line 2991, bytecode pc 1729
                                                                                xs.assert(false, "_step0 error", _step0);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
},
    update: function(fDelta) {
    // source line 2997, bytecode pc 16
    this._update_ext(fDelta);
},
    onFightArmatureFrameEvent_hit_card: function(obj, params) {
    var _view_card, _param, _events, _speed_radio, _key_ani;
    // source line 3003, bytecode pc 11
    (_view_card = obj.view);
    // source line 3004, bytecode pc 23
    (_param = obj.param);
    // source line 3005, bytecode pc 35
    (_events = obj.events);
    // source line 3006, bytecode pc 47
    (_speed_radio = obj.speed_radio);
    // source line 3008, bytecode pc 59
    (_key_ani = params.key_ani);
    if (!obj.is_backup) {
        // source line 3028, bytecode pc 147
        _view_card.runAction(xs.Utils.Action.combineSpawn([ _view_card.createPlayAniAction(_key_ani, _speed_radio) ]));
    }
},
    onFightArmatureFrameEvent_over_card: function(obj, params) {
    var _view_card, _param, _events, _key_ani, _speed_radio, _pos_ori, _action_moveto_ori, _action_ani;
    // source line 3048, bytecode pc 11
    (_view_card = obj.view);
    // source line 3049, bytecode pc 23
    (_param = obj.param);
    // source line 3050, bytecode pc 35
    (_events = obj.events);
    // source line 3052, bytecode pc 47
    (_key_ani = params.key_ani);
    // source line 3053, bytecode pc 59
    (_speed_radio = obj.speed_radio);
    if (!obj.is_backup) {
        // source line 3069, bytecode pc 90
        (_pos_ori = _view_card.original.pos);
        // source line 3070, bytecode pc 137
        (_action_moveto_ori = cc.MoveTo.create(((4 / xs.fps) * _speed_radio), _pos_ori));
        if (obj.is_death) {
            // source line 3079, bytecode pc 214
            (_action_ani = xs.Utils.Action.combineSequence([ _view_card.createPlayAniAction("ani_over_skill_death", _speed_radio) ]));
        } else {
            if (obj.is_ghost) {
                // source line 3088, bytecode pc 296
                (_action_ani = xs.Utils.Action.combineSequence([ _view_card.createPlayAniAction("ani_over_skill_ghost", _speed_radio) ]));
            } else {
                // source line 3098, bytecode pc 391
                (_action_ani = xs.Utils.Action.combineSequence([
    _view_card.createPlayAniAction(_key_ani, _speed_radio),
    _view_card.createPlayAniAction("ani_over_skill_back", _speed_radio)
]));
            }
        }
        // source line 3107, bytecode pc 453
        _view_card.runAction(xs.Utils.Action.combineSpawn([ _action_ani, _action_moveto_ori ]));
    }
},
    onFightArmatureFrameEvent_ani_card: function(obj, params) {
    var _view_card, _key_ani, _speed_radio, _action_ani;
    // source line 3127, bytecode pc 11
    (_view_card = obj.view);
    // source line 3131, bytecode pc 23
    (_key_ani = params.key_ani);
    // source line 3132, bytecode pc 35
    (_speed_radio = obj.speed_radio);
    if (!obj.is_backup) {
        // source line 3140, bytecode pc 111
        (_action_ani = xs.Utils.Action.combineSequence([ _view_card.createPlayAniAction(_key_ani, _speed_radio) ]));
        // source line 3147, bytecode pc 166
        _view_card.runAction(xs.Utils.Action.combineSpawn([ _action_ani ]));
    }
},
    onFightArmatureFrameEvent_higher_card: function(obj) {
    var _view_card, _param, _events, _action_high;
    // source line 3164, bytecode pc 11
    (_view_card = obj.view);
    // source line 3165, bytecode pc 23
    (_param = obj.param);
    // source line 3166, bytecode pc 35
    (_events = obj.events);
    if (!obj.is_backup) {
        // source line 3177, bytecode pc 207
        (_action_high = xs.Utils.Action.combineSequence([ cc.MoveBy.create((4 / xs.fps), cc.p(0, 30)), cc.MoveBy.create((4 / xs.fps), cc.p(0, -10)) ]));
        // source line 3184, bytecode pc 226
        _view_card.runAction(_action_high);
    }
},
    onFightArmatureFrameEvent_hit_text: function(obj) {
    var _view_card, _param, _events, _env, _hp_lose, _speed_radio, _is_backup, _pos_local, _scale, _arm_hurt_text, _label_hurt, _pos_card_in_world;
    // source line 3197, bytecode pc 11
    (_view_card = obj.view);
    // source line 3198, bytecode pc 23
    (_param = obj.param);
    // source line 3199, bytecode pc 35
    (_events = obj.events);
    // source line 3200, bytecode pc 47
    (_env = obj.env);
    // source line 3201, bytecode pc 59
    (_hp_lose = obj.hp_lose);
    // source line 3202, bytecode pc 71
    (_speed_radio = obj.speed_radio);
    // source line 3204, bytecode pc 106
    (_is_backup = (_events && (_events.indexOf("backup") >= 0)));
    // source line 3206, bytecode pc 164
    (_pos_local = (_is_backup ? cc.p(0, 0) : cc.p(0, 120)));
    // source line 3207, bytecode pc 187
    (_scale = (_is_backup ? 0.5 : 1));
    // source line 3212, bytecode pc 232
    (_arm_hurt_text = xs.Views.Armature.FightArmature.create("Arm_Fight_SkillName", null, null));
    // source line 3214, bytecode pc 268
    (_label_hurt = xs.Factorys.Label.createByLabelId("Label_Fight_Hurt"));
    // source line 3215, bytecode pc 296
    _label_hurt.setStringParams([ _hp_lose ]);
    // source line 3217, bytecode pc 321
    _arm_hurt_text.replaceSkinByBoneKey("labelBlood", _label_hurt);
    // source line 3220, bytecode pc 343
    (_pos_card_in_world = _view_card.convertToWorldSpace(_pos_local));
    // source line 3223, bytecode pc 362
    _arm_hurt_text.setPosition(_pos_card_in_world);
    // source line 3225, bytecode pc 381
    _arm_hurt_text.setScale(_scale);
    // source line 3229, bytecode pc 400
    _env.addChild(_arm_hurt_text);
    // source line 3230, bytecode pc 421
    _arm_hurt_text.playAniById("idle");
    // source line 3237, bytecode pc 527
    _arm_hurt_text.runAction(xs.Utils.Action.combineSequence([
    _arm_hurt_text.createPlayAction("ani_text_hurt"),
    xs.Utils.Node.createRemoveSelfAction(_arm_hurt_text)
]));
},
    onFightArmatureFrameEvent_hit_hp: function(obj) {
    var _view_card, _param, _events, _hp_lose, _hp_max, _hp_cur;
    // source line 3246, bytecode pc 11
    (_view_card = obj.view);
    // source line 3247, bytecode pc 23
    (_param = obj.param);
    // source line 3248, bytecode pc 35
    (_events = obj.events);
    // source line 3249, bytecode pc 47
    (_hp_lose = obj.hp_lose);
    // source line 3250, bytecode pc 59
    (_hp_max = obj.hp_max);
    // source line 3251, bytecode pc 71
    (_hp_cur = obj.hp_cur);
    // source line 3254, bytecode pc 124
    xs.log_zj((((((("onFightArmatureFrameEvent_hit_hp:" + " sub ") + _hp_lose) + ",") + _hp_cur) + " / ") + _hp_max));
    if (!obj.is_backup) {
        // source line 3265, bytecode pc 214
        _view_card.runAction(xs.Utils.Action.combineSequence([ _view_card.createUpdateHpAction_onHit(_hp_lose, _hp_max, 0) ]));
    }
},
    onFightArmatureFrameEvent_over_hp: function(obj) {
    var _view_card, _param, _events, _hp_lose, _hp_cur, _hp_max;
    // source line 3279, bytecode pc 11
    (_view_card = obj.view);
    // source line 3280, bytecode pc 23
    (_param = obj.param);
    // source line 3281, bytecode pc 35
    (_events = obj.events);
    // source line 3282, bytecode pc 47
    (_hp_lose = obj.hp_lose);
    // source line 3283, bytecode pc 59
    (_hp_cur = obj.hp_cur);
    // source line 3284, bytecode pc 71
    (_hp_max = obj.hp_max);
    // source line 3287, bytecode pc 108
    xs.log_zj(((("onFightArmatureFrameEvent_over_hp:" + _hp_cur) + " / ") + _hp_max));
    if (!obj.is_backup) {
        // source line 3297, bytecode pc 210
        _view_card.runAction(xs.Utils.Action.combineSequence([ _view_card.createUpdateHpAction_onOver(_hp_cur, _hp_max, (7 / xs.fps)) ]));
    }
},
    onFightArmatureFrameEvent_buff: function(obj, cfg) {
    var _view_card, _param, _events, _env, _hp_lose, _hp_cure, _is_backup, _pos_local, _scale, _arm_hurt_text, _pos_card_in_world, _ani_name, _label_cure;
    // source line 3311, bytecode pc 26
    xs.log_zj("onFightArmatureFrameEvent_buff", cfg);
    // source line 3313, bytecode pc 38
    (_view_card = obj.view);
    // source line 3314, bytecode pc 50
    (_param = obj.param);
    // source line 3315, bytecode pc 62
    (_events = obj.events);
    // source line 3316, bytecode pc 74
    (_env = obj.env);
    // source line 3317, bytecode pc 86
    (_hp_lose = obj.hp_lose);
    // source line 3318, bytecode pc 98
    (_hp_cure = obj.hp_cure);
    // source line 3321, bytecode pc 133
    (_is_backup = (_events && (_events.indexOf("backup") >= 0)));
    // source line 3327, bytecode pc 157
    (_pos_local = cc.p(0, 0));
    // source line 3328, bytecode pc 180
    (_scale = (_is_backup ? 0.5 : 1));
    // source line 3333, bytecode pc 225
    (_arm_hurt_text = xs.Views.Armature.FightArmature.create("Arm_Fight_SkillName", null, null));
    // source line 3343, bytecode pc 247
    (_pos_card_in_world = _view_card.convertToWorldSpace(_pos_local));
    // source line 3345, bytecode pc 266
    _arm_hurt_text.setPosition(_pos_card_in_world);
    // source line 3347, bytecode pc 285
    _arm_hurt_text.setScale(_scale);
    // source line 3351, bytecode pc 304
    _env.addChild(_arm_hurt_text);
    // source line 3352, bytecode pc 325
    _arm_hurt_text.playAniById("idle");
    // source line 3354, bytecode pc 358
    (_ani_name = ((("ani_buff_" + cfg.buff) + "_") + cfg.ope));
    // source line 3356, bytecode pc 385
    xs.log_zj("onFightArmatureFrameEvent_buff.ani_name", _ani_name);
    if (("hp" == cfg.buff)) {
        if ((cfg.ope == "add")) {
            // source line 3363, bytecode pc 459
            (_label_cure = xs.Factorys.Label.createByLabelId("Label_Fight_Cure"));
            // source line 3364, bytecode pc 487
            _label_cure.setStringParams([ _hp_cure ]);
            // source line 3365, bytecode pc 512
            _arm_hurt_text.replaceSkinByBoneKey("labelBlood", _label_cure);
        } else {
            // source line 3368, bytecode pc 540
            xs.error("not support yet");
        }
    }
    // source line 3376, bytecode pc 644
    _arm_hurt_text.runAction(xs.Utils.Action.combineSequence([
    _arm_hurt_text.createPlayAction(_ani_name),
    xs.Utils.Node.createRemoveSelfAction(_arm_hurt_text)
]));
},
    onFightArmatureFrameEvent: function(params) {
    var _frameEventName, _context, _para, _env, _model, _params, _queue, _speed_radio, _views_to, _views_from, _is_done, i, _view_to, _param_to, _param_once, _events_to, _events_once, _queue_to_hp, _hp_lose, _hp_max, _hp_cur, _hp_cure, _is_backup, _is_ghost, _is_death, _is_finish, _obj, _action, _str_left, _str_hurt_type, _str_ope, _str_buff, _view_from, _param_from, _events_from;
    // source line 3386, bytecode pc 11
    (_frameEventName = params.frameEventName);
    // source line 3387, bytecode pc 23
    (_context = params.context);
    // source line 3388, bytecode pc 35
    (_para = _context.para);
    // source line 3389, bytecode pc 47
    (_env = _para.env);
    // source line 3390, bytecode pc 59
    (_model = _para.model);
    // source line 3391, bytecode pc 71
    (_params = _model.params);
    // source line 3392, bytecode pc 83
    (_queue = _context.queue);
    // source line 3393, bytecode pc 95
    (_speed_radio = _context.speed_radio);
    // source line 3398, bytecode pc 125
    xs.log_zj("onFightArmatureFrameEvent-model", _model, 2);
    // source line 3399, bytecode pc 160
    xs.log_zj("onFightArmatureFrameEvent-para", _context.para, 2);
    // source line 3403, bytecode pc 206
    xs.log_zj("onFightArmatureFrameEvent", { _frameEventName: _frameEventName, _speed_radio: _speed_radio });
    // source line 3408, bytecode pc 218
    (_views_to = _para.toViews);
    // source line 3409, bytecode pc 230
    (_views_from = _para.fromViews);
    // source line 3413, bytecode pc 266
    xs.log_zj(("_views_to.length:" + _views_to.length));
    // source line 3415, bytecode pc 271
    (i = 0);
    while ((i < _views_to.length)) {
        // source line 3419, bytecode pc 288
        (_view_to = _views_to[i]);
        // source line 3420, bytecode pc 304
        (_param_to = _params.to[i]);
        // source line 3421, bytecode pc 328
        (_param_once = (_params.once || {}));
        // source line 3422, bytecode pc 340
        (_events_to = _param_to.event);
        // source line 3423, bytecode pc 363
        (_events_once = (_param_once.event || []));
        // source line 3424, bytecode pc 384
        (_queue_to_hp = _queue.to[i].hp);
        // source line 3425, bytecode pc 400
        (_hp_lose = (_queue_to_hp[0] || 0));
        // source line 3426, bytecode pc 412
        (_hp_max = _param_to.hpMax);
        // source line 3427, bytecode pc 424
        (_hp_cur = _param_to.hpCur);
        // source line 3429, bytecode pc 443
        (_hp_cure = (_param_to.cure || 0));
        // source line 3432, bytecode pc 478
        (_is_backup = (_events_to && (_events_to.indexOf("backup") >= 0)));
        // source line 3433, bytecode pc 513
        (_is_ghost = (_events_to && (_events_to.indexOf("ghost") >= 0)));
        // source line 3434, bytecode pc 548
        (_is_death = (_events_to && (_events_to.indexOf("death") >= 0)));
        // source line 3435, bytecode pc 583
        (_is_finish = (_events_to && (_events_to.indexOf("finish") >= 0)));
        // source line 3450, bytecode pc 697
        (_obj = {
    view: _view_to,
    param: _param_to,
    events: _events_to,
    env: _env,
    hp_lose: _hp_lose,
    hp_max: _hp_max,
    hp_cur: _hp_cur,
    hp_cure: _hp_cure,
    is_backup: _is_backup,
    is_ghost: _is_ghost,
    is_death: _is_death,
    is_finish: _is_finish,
    speed_radio: _speed_radio
});
        // source line 3460, bytecode pc 702
        (_action = null);
        if ((_frameEventName == "to_hurt_hit")) {
            // source line 3464, bytecode pc 750
            this.onFightArmatureFrameEvent_hit_card(_obj, { key_ani: "ani_hit_stiff" });
            // source line 3467, bytecode pc 767
            this.onFightArmatureFrameEvent_hit_text(_obj);
            // source line 3470, bytecode pc 784
            this.onFightArmatureFrameEvent_hit_hp(_obj);
            // source line 3472, bytecode pc 799
            _queue_to_hp.shift();
            // source line 3473, bytecode pc 804
            (_is_done = true);
        } else {
            if ((_frameEventName == "ani_to_hit_normal")) {
                // source line 3480, bytecode pc 857
                this.onFightArmatureFrameEvent_hit_card(_obj, { key_ani: "ani_hit_normal" });
                // source line 3481, bytecode pc 862
                (_is_done = true);
            } else {
                if ((_frameEventName.indexOf("to_hurt") == 0)) {
                    // source line 3485, bytecode pc 915
                    (_str_left = _frameEventName.substr(8));
                    // source line 3486, bytecode pc 936
                    (_str_hurt_type = _str_left.substr(5));
                    // source line 3489, bytecode pc 974
                    this.onFightArmatureFrameEvent_over_card(_obj, { key_ani: ("ani_hit_" + _str_hurt_type) });
                    // source line 3492, bytecode pc 991
                    this.onFightArmatureFrameEvent_hit_text(_obj);
                    if ((_str_hurt_type == "hit")) {
                        // source line 3497, bytecode pc 1022
                        this.onFightArmatureFrameEvent_hit_hp(_obj);
                        // source line 3498, bytecode pc 1037
                        _queue_to_hp.shift();
                    } else {
                        // source line 3501, bytecode pc 1059
                        this.onFightArmatureFrameEvent_over_hp(_obj);
                    }
                    // source line 3505, bytecode pc 1064
                    (_is_done = true);
                } else {
                    if ((_frameEventName == "to_higher")) {
                        // source line 3512, bytecode pc 1100
                        this.onFightArmatureFrameEvent_higher_card(_obj);
                        // source line 3513, bytecode pc 1105
                        (_is_done = true);
                    } else {
                        if ((_frameEventName.indexOf("to_buff") == 0)) {
                            // source line 3517, bytecode pc 1158
                            (_str_left = _frameEventName.substr(8));
                            // source line 3518, bytecode pc 1181
                            (_str_ope = _str_left.substr(0, 3));
                            // source line 3519, bytecode pc 1202
                            (_str_buff = _str_left.substr(4));
                            // source line 3528, bytecode pc 1242
                            this.onFightArmatureFrameEvent_buff(_obj, { ope: _str_ope, buff: _str_buff });
                            if ((_str_buff == "hp")) {
                                // source line 3535, bytecode pc 1273
                                this.onFightArmatureFrameEvent_over_hp(_obj);
                            }
                            // source line 3538, bytecode pc 1278
                            (_is_done = true);
                        }
                    }
                }
            }
        }
        // source line 3415, bytecode pc 1297
        (i = (+i + 1));
    }
    if (_is_done) {
        // source line 3551, bytecode pc 1347
        xs.log_zj("done");
        // source line 3552, bytecode pc 1349
        return void 0;
    }
    // source line 3555, bytecode pc 1354
    (i = 0);
    while ((i < _views_from.length)) {
        // source line 3557, bytecode pc 1391
        xs.log_zj(("_param_from111 - " + i), _param_from);
        // source line 3559, bytecode pc 1402
        (_view_from = _views_from[i]);
        // source line 3560, bytecode pc 1418
        (_param_from = _params.from[i]);
        // source line 3561, bytecode pc 1430
        (_events_from = _param_from.event);
        // source line 3562, bytecode pc 1442
        (_hp_max = _param_from.hpMax);
        // source line 3563, bytecode pc 1454
        (_hp_cur = _param_from.hpCur);
        // source line 3565, bytecode pc 1489
        (_is_backup = (_events_from && (_events_from.indexOf("backup") >= 0)));
        // source line 3566, bytecode pc 1524
        (_is_ghost = (_events_from && (_events_from.indexOf("ghost") >= 0)));
        // source line 3567, bytecode pc 1559
        (_is_death = (_events_from && (_events_from.indexOf("death") >= 0)));
        // source line 3568, bytecode pc 1594
        (_is_finish = (_events_from && (_events_from.indexOf("finish") >= 0)));
        // source line 3572, bytecode pc 1613
        (_hp_cure = (_param_from.cure || 0));
        // source line 3575, bytecode pc 1644
        xs.log_zj(("_param_from - " + i), _param_from);
        // source line 3577, bytecode pc 1679
        (_is_backup = (_events_from && (_events_from.indexOf("backup") >= 0)));
        // source line 3592, bytecode pc 1793
        (_obj = {
    view: _view_from,
    param: _param_from,
    events: _events_from,
    env: _env,
    hp_cure: _hp_cure,
    hp_lose: _hp_lose,
    hp_cur: _hp_cur,
    hp_max: _hp_max,
    is_backup: _is_backup,
    is_ghost: _is_ghost,
    is_death: _is_death,
    is_finish: _is_finish,
    speed_radio: _speed_radio
});
        // source line 3600, bytecode pc 1798
        (_action = null);
        if ((_frameEventName == "from_hurt_hit")) {
            // source line 3606, bytecode pc 1829
            this.onFightArmatureFrameEvent_hit_card(_obj);
            // source line 3609, bytecode pc 1846
            this.onFightArmatureFrameEvent_hit_text(_obj);
            // source line 3612, bytecode pc 1863
            this.onFightArmatureFrameEvent_hit_hp(_obj);
        } else {
            if ((_frameEventName == "from_hurt_over_fly")) {
            } else {
                if ((_frameEventName == "from_higher")) {
                    // source line 3618, bytecode pc 1918
                    this.onFightArmatureFrameEvent_higher_card(_obj);
                } else {
                    if ((_frameEventName.indexOf("ani_from_attack_hit") == 0)) {
                        // source line 3621, bytecode pc 1984
                        this.onFightArmatureFrameEvent_ani_card(_obj, { key_ani: "ani_from_attack_hit" });
                    } else {
                        if ((_frameEventName.indexOf("from_buff") == 0)) {
                            // source line 3625, bytecode pc 2037
                            (_str_left = _frameEventName.substr(10));
                            // source line 3626, bytecode pc 2060
                            (_str_ope = _str_left.substr(0, 3));
                            // source line 3627, bytecode pc 2081
                            (_str_buff = _str_left.substr(4));
                            // source line 3634, bytecode pc 2121
                            this.onFightArmatureFrameEvent_buff(_obj, { ope: _str_ope, buff: _str_buff });
                            if ((_str_buff == "hp")) {
                                // source line 3642, bytecode pc 2152
                                this.onFightArmatureFrameEvent_over_hp(_obj);
                            }
                        } else {
                            // source line 3646, bytecode pc 2184
                            xs.error("_frameEventName", _frameEventName);
                        }
                    }
                }
            }
        }
        // source line 3555, bytecode pc 2198
        (i = (+i + 1));
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 3657, bytecode pc 12
    this._super();
    // source line 3660, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.openSkipButton, xs.Constant_Notify_FightScene_OpenSkipBtn);
    // source line 3664, bytecode pc 120
    this.getFightNotifyCenter().addObserver(this, this.onFightArmatureFrameEvent, xs.Views.Armature.FightArmature.Event_FrameEvent, null);
},
    onExitTransitionDidStart: function() {
    // source line 3673, bytecode pc 12
    this.stopUpdate();
    // source line 3674, bytecode pc 25
    (this.step0 = this.Step_Exit_Loop);
    // source line 3678, bytecode pc 77
    this.getFightNotifyCenter().removeObserver(this, xs.Views.Armature.FightArmature.Event_FrameEvent);
    // source line 3682, bytecode pc 117
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_FightScene_OpenSkipBtn);
    // source line 3684, bytecode pc 130
    this._super();
},
    openSkipButton: function() {
    // source line 3691, bytecode pc 12
    (this.model.roundSkip = 1);
    // source line 3692, bytecode pc 32
    this.btnClose.setEnabled(true);
},
    _haveStory: function(idx) {
    var _rounds;
    // source line 3697, bytecode pc 18
    (_rounds = this.model.roundsStory[idx]);
    if (((_rounds === null) || (_rounds === undefined))) {
        // source line 3699, bytecode pc 45
        return false;
    } else {
        // source line 3702, bytecode pc 52
        return true;
    }
},
    doStoryRound: function(idx, stepNext) {
    var _rounds, _unuse_mask;
    try {
        // source line 3709, bytecode pc 19
        (_rounds = this.model.roundsStory[idx]);
        if (((_rounds === null) || (_rounds === undefined))) {
            // source line 3712, bytecode pc 46
            return false;
        }
        // source line 3715, bytecode pc 55
        (_unuse_mask = (idx === 1));
        // source line 3717, bytecode pc 82
        xs.dump("_unuse_mask", _unuse_mask);
        // source line 3735, bytecode pc 161
        xs.Views.Mgr.showDialogByName("Story", {
    rounds: _rounds,
    unuse_mask: _unuse_mask,
    funcNext: function() {
    // source line 3725, bytecode pc 32
    xs.log("doStoryRound-stepNext", stepNext);
    if ((stepNext === this.Step_Story1_Exit)) {
        // source line 3729, bytecode pc 83
        xs.log(("'doStoryRound-stepNext ： Step_Story1_Exit , now step0 is " + this.step0));
    }
    // source line 3733, bytecode pc 99
    (this.step0 = stepNext);
    // source line 3734, bytecode pc 112
    this.startUpdate();
}.bind(this)
});
    } catch (e) {
        // source line 3746, bytecode pc 197
        xs.warnException(e);
        // source line 3747, bytecode pc 199
        return false;
    }
    // source line 3749, bytecode pc 214
    return true;
},
    doOpenRound: function() {
    var _rounds, _item;
    try {
        // source line 3756, bytecode pc 15
        (_rounds = this.model.roundsOpen);
        // source line 3757, bytecode pc 33
        (_item = _rounds.getCurItem());
        if (((_item === null) || (_item === undefined))) {
            // source line 3759, bytecode pc 60
            return false;
        }
        // source line 3761, bytecode pc 75
        _rounds.nextIdx();
        // source line 3763, bytecode pc 92
        _item.doShow(this);
    } catch (e) {
        // source line 3767, bytecode pc 128
        xs.warnException(e);
        // source line 3768, bytecode pc 130
        return false;
    }
    // source line 3770, bytecode pc 145
    return true;
},
    _doResultOpenRound: function() {
    var _rounds, _item;
    try {
        // source line 3777, bytecode pc 15
        (_rounds = this.model.roundsResultOpen);
        // source line 3778, bytecode pc 33
        (_item = _rounds.getCurItem());
        if (((_item === null) || (_item === undefined))) {
            // source line 3780, bytecode pc 60
            return false;
        }
        // source line 3782, bytecode pc 75
        _rounds.nextIdx();
        // source line 3784, bytecode pc 92
        _item.doShow(this);
    } catch (e) {
        // source line 3787, bytecode pc 128
        xs.warnException(e);
        // source line 3788, bytecode pc 130
        return false;
    }
    // source line 3790, bytecode pc 145
    return true;
},
    doShowRound: function() {
    var _item, _rounds;
    // source line 3797, bytecode pc 18
    (_rounds = this.model.roundsFight);
    // source line 3798, bytecode pc 36
    (_item = _rounds.getCurItem());
    if ((this.params.fightType === xs.Constant_FightScene_Type_NewPlayer)) {
        // source line 3802, bytecode pc 112
        (this.m_npf_idx = (+this.m_npf_idx + 1));
        // source line 3802, bytecode pc 117
        xs.Tools.Statistic.event_forNewPlayerFight(+this.m_npf_idx);
    }
    if (xs.skipFightIfErr) {
        try {
            if (((_item === null) || (_item === undefined))) {
                // source line 3808, bytecode pc 160
                return false;
            }
            // source line 3809, bytecode pc 175
            _rounds.nextIdx();
            // source line 3810, bytecode pc 192
            _item.doShow(this);
            // source line 3812, bytecode pc 194
            return true;
        } catch (e) {
            // source line 3815, bytecode pc 226
            this.warnException(e);
            // source line 3816, bytecode pc 307
            xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_80") + _item.getSkill()) + ")"));
            // source line 3817, bytecode pc 330
            xs.warn("skipFightIfErr ...");
            // source line 3819, bytecode pc 332
            return false;
        }
    } else {
        if (((_item === null) || (_item === undefined))) {
            // source line 3824, bytecode pc 377
            return false;
        }
        // source line 3826, bytecode pc 392
        _rounds.nextIdx();
        // source line 3828, bytecode pc 409
        _item.doShow(this);
    }
    // source line 3830, bytecode pc 411
    return true;
},
    doResultRound_showDlg: function() {
    try {
        if (!this.params.fightData.isShowFightResult()) {
            // source line 3839, bytecode pc 55
            xs.Scene.Mgr.gotoLastScene();
            // source line 3840, bytecode pc 57
            return void 0;
        }
        // source line 3850, bytecode pc 152
        xs.Views.Mgr.showDialogByName("FightResult", {
    model: this.params.fightData,
    replayFunc: function() {
    // source line 3848, bytecode pc 12
    this._fightResult_replayFunc();
}.bind(this),
    confirmFunc: this.params.funcFinish
});
        // source line 3855, bytecode pc 154
        return false;
    } catch (e) {
        // source line 3859, bytecode pc 190
        xs.warnException(e);
        // source line 3860, bytecode pc 192
        return false;
    }
},
    _fightResult_replayFunc: function() {
    var _param;
    // source line 3868, bytecode pc 9
    (_param = {});
    // source line 3869, bytecode pc 28
    (_param.mode = xs.Constant_FightScene_Mode_Replay);
    // source line 3871, bytecode pc 48
    (_param.openType = this.params.openType);
    // source line 3872, bytecode pc 68
    (_param.fightType = this.params.fightType);
    // source line 3873, bytecode pc 88
    (_param.fightData = this.params.fightData);
    // source line 3874, bytecode pc 108
    (_param.storyData = this.params.storyData);
    // source line 3875, bytecode pc 128
    (_param.resModel = this.params.resModel);
    // source line 3876, bytecode pc 148
    (_param.funcFinish = this.params.funcFinish);
    // source line 3880, bytecode pc 185
    xs.Scene.Mgr.changeSceneByName("FightScene", _param);
},
    doResultRound: function() {
    var _rounds, _item;
    try {
        // source line 3890, bytecode pc 15
        (_rounds = this.model.roundsResult);
        // source line 3891, bytecode pc 33
        (_item = _rounds.getCurItem());
        if (((_item === null) || (_item === undefined))) {
            // source line 3893, bytecode pc 60
            return false;
        }
        // source line 3895, bytecode pc 75
        _rounds.nextIdx();
        // source line 3896, bytecode pc 92
        _item.doShow(this);
        // source line 3900, bytecode pc 94
        return true;
    } catch (e) {
        // source line 3904, bytecode pc 130
        xs.warnException(e);
        // source line 3905, bytecode pc 132
        return false;
    }
    // source line 3907, bytecode pc 147
    return true;
},
    getOpenTypeSkillName: function() {
    if ((this.params.openType === xs.Constant_FightScene_OpenType_Pve)) {
        // source line 3913, bytecode pc 32
        return "EmptySkill";
    } else {
        if ((this.model.getFstSide() === 0)) {
            // source line 3916, bytecode pc 67
            return "Open_Pvp_0";
        } else {
            if ((this.model.getFstSide() === 1)) {
                // source line 3919, bytecode pc 102
                return "Open_Pvp_1";
            } else {
                // source line 3922, bytecode pc 137
                xs.error("need first flag", this.params);
            }
        }
    }
},
    callfunc_nextRound: function(sender, layer) {
    // source line 3927, bytecode pc 12
    this.startUpdate();
    // source line 3929, bytecode pc 39
    xs.Tools.Sys.free_when_fight_round_callfunc_nextRound();
},
    createActionStartScheduleUpdate: function() {
    // source line 3937, bytecode pc 52
    return cc.CallFunc.create(this.callfunc_nextRound.bind(this), xs.unuse_this);
},
    createStartStatusActions: function(data) {
    var _statusId, _baseDp, _side, _statusCfg, _arm, _offset, _visibleSize, _offsetX, _offsetY, _actionBegin, _actionStatus, _arrActions, _ret;
    // source line 3948, bytecode pc 16
    (_statusId = data.data.statusId);
    // source line 3949, bytecode pc 43
    xs.log("----- 1111111 : _statusId = ", _statusId);
    // source line 3950, bytecode pc 80
    xs.log("----- 2222222 data.input.sideFrom  = ", data.input.sideFrom);
    // source line 3952, bytecode pc 99
    (_baseDp = (data.dp || 1));
    // source line 3955, bytecode pc 130
    (_side = ((data.input.sideFrom === 0) ? 1 : 0));
    if (this.status[_side][_statusId]) {
        // source line 3959, bytecode pc 151
        return null;
    }
    // source line 3964, bytecode pc 170
    (_statusCfg = this.Cfg.StatusMap[_statusId]);
    // source line 3969, bytecode pc 214
    (_arm = xs.Views.Armature.AutoAudioArmature.create(_statusCfg.armId));
    // source line 3971, bytecode pc 226
    (_offset = _statusCfg.offset);
    // source line 3973, bytecode pc 251
    (_visibleSize = xs.director.getVisibleSize());
    // source line 3978, bytecode pc 282
    (_offsetX = (((_side === 1) ? -1 : 1) * _offset.x));
    // source line 3979, bytecode pc 306
    (_offsetY = ((_visibleSize.height / 2) - _offset.y));
    // source line 3985, bytecode pc 435
    xs.Utils.Node.attachNodes(this.getNear(), _arm, { desc: "ct", offset: { x: _offsetX, y: _offsetY } }, xs.Cfg.Constant.Scene.FightDemo.Center.Near.Tmp);
    if ((_side === 0)) {
        // source line 3989, bytecode pc 479
        _arm.setRotationY((_arm.getRotationY() + 180));
    }
    // source line 3994, bytecode pc 497
    (this.status[_side][_statusId] = _arm);
    // source line 3995, bytecode pc 512
    _arm.retain();
    // source line 3998, bytecode pc 539
    xs.assert(_arm, "error");
    // source line 4000, bytecode pc 556
    _arm.setVisible(false);
    // source line 4008, bytecode pc 616
    (_actionBegin = xs.Factorys.Armature.createPlayActions(_arm, _statusCfg.armId, "begin", {}, _baseDp));
    // source line 4017, bytecode pc 682
    (_actionStatus = xs.Factorys.Armature.createPlayActions(_arm, _statusCfg.armId, "status", { loop: true }, _baseDp));
    // source line 4020, bytecode pc 691
    (_arrActions = []);
    // source line 4021, bytecode pc 710
    _arrActions.push(_actionBegin);
    // source line 4022, bytecode pc 729
    _arrActions.push(_actionStatus);
    // source line 4024, bytecode pc 763
    (_ret = xs.Utils.Action.combineSequence(_arrActions));
    // source line 4028, bytecode pc 767
    return _ret;
},
    createCancelStatusActions: function(data) {
    var _statusId, _baseDp, _sideArr, _sideActions, _side, _arm, _statusCfg, _actionCancel, _arrActions, i;
    // source line 4034, bytecode pc 16
    (_statusId = data.data.statusId);
    // source line 4035, bytecode pc 35
    (_baseDp = (data.dp || 1));
    // source line 4036, bytecode pc 73
    (_sideArr = (data.input.para.model.side || []));
    // source line 4038, bytecode pc 111
    this.dump("23234", data.input.para.model);
    // source line 4040, bytecode pc 120
    (_sideActions = []);
    if ((_statusId == "lock")) {
        // source line 4043, bytecode pc 165
        (_side = ((data.input.sideFrom === 0) ? 1 : 0));
        // source line 4045, bytecode pc 183
        (_arm = this.status[_side][_statusId]);
        // source line 4048, bytecode pc 202
        (_statusCfg = this.Cfg.StatusMap[_statusId]);
        // source line 4050, bytecode pc 233
        xs.assert(_arm, "cancel null status ???", _statusId);
        // source line 4058, bytecode pc 299
        (_actionCancel = xs.Factorys.Armature.createPlayActions(_arm, _statusCfg.armId, "end", { loop: false }, _baseDp));
        // source line 4061, bytecode pc 308
        (_arrActions = []);
        // source line 4062, bytecode pc 327
        _arrActions.push(_actionCancel);
        // source line 4080, bytecode pc 421
        _arrActions.push(cc.CallFunc.create(function() {
    var _layer, _statusId, _side;
    // source line 4067, bytecode pc 9
    (_layer = this.layer);
    // source line 4068, bytecode pc 19
    (_statusId = this.statusId);
    // source line 4069, bytecode pc 29
    (_side = this.side);
    // source line 4070, bytecode pc 87
    _layer.status[_side][_statusId].getParent().removeChild(_layer.status[_side][_statusId], true);
    // source line 4071, bytecode pc 115
    _layer.status[_side][_statusId].release();
    // source line 4072, bytecode pc 133
    (_layer.status[_side][_statusId] = null);
}.bind({ layer: this, statusId: _statusId, side: _side }), xs.unuse_this));
        // source line 4085, bytecode pc 467
        _sideActions.push(xs.Utils.Action.combineSequence(_arrActions));
        // source line 4088, bytecode pc 498
        return xs.Utils.Action.combineSpawn(_sideActions);
    }
    // source line 4091, bytecode pc 503
    (i = 0);
    while ((i < _sideArr.length)) {
        // source line 4092, bytecode pc 520
        (_side = _sideArr[i]);
        // source line 4093, bytecode pc 538
        (_arm = this.status[_side][_statusId]);
        // source line 4096, bytecode pc 557
        (_statusCfg = this.Cfg.StatusMap[_statusId]);
        // source line 4098, bytecode pc 588
        xs.assert(_arm, "cancel null status ???", _statusId);
        // source line 4106, bytecode pc 654
        (_actionCancel = xs.Factorys.Armature.createPlayActions(_arm, _statusCfg.armId, "end", { loop: false }, _baseDp));
        // source line 4109, bytecode pc 663
        (_arrActions = []);
        // source line 4110, bytecode pc 682
        _arrActions.push(_actionCancel);
        // source line 4128, bytecode pc 776
        _arrActions.push(cc.CallFunc.create(function() {
    var _layer, _statusId, _side;
    // source line 4115, bytecode pc 9
    (_layer = this.layer);
    // source line 4116, bytecode pc 19
    (_statusId = this.statusId);
    // source line 4117, bytecode pc 29
    (_side = this.side);
    // source line 4118, bytecode pc 87
    _layer.status[_side][_statusId].getParent().removeChild(_layer.status[_side][_statusId], true);
    // source line 4119, bytecode pc 115
    _layer.status[_side][_statusId].release();
    // source line 4120, bytecode pc 133
    (_layer.status[_side][_statusId] = null);
}.bind({ layer: this, statusId: _statusId, side: _side }), xs.unuse_this));
        // source line 4133, bytecode pc 822
        _sideActions.push(xs.Utils.Action.combineSequence(_arrActions));
        // source line 4091, bytecode pc 836
        (i = (+i + 1));
    }
    // source line 4136, bytecode pc 886
    return xs.Utils.Action.combineSpawn(_sideActions);
},
    createClearStatusActions: function(data) {
    var _arrActions, _data;
    // source line 4142, bytecode pc 13
    (_data = {});
    // source line 4143, bytecode pc 30
    (_data.dp = data.dp);
    // source line 4144, bytecode pc 47
    (_data.data = data.data);
    // source line 4145, bytecode pc 66
    (_data.data.statusId = "le");
    if (this[_data.data.statusId]) {
        // source line 4150, bytecode pc 112
        (_arrActions = this.createStatusActions(_data, "end"));
        // source line 4151, bytecode pc 129
        (this[_data.data.statusId] = null);
    }
    // source line 4154, bytecode pc 160
    return xs.Utils.Action.combineSpawn(_arrActions);
},
    createStatusActions: function(data, type) {
    var _statusId, _dp, _arrActions, _armatureCfg, _aniName, _armatureInfo, _aniInfo, _armature, _statusKey, _visibleSize, _offsetX, _offsetY, _data;
    // source line 4166, bytecode pc 24
    this.log("createStatusActions", "begin");
    // source line 4168, bytecode pc 41
    (_statusId = data.data.statusId);
    // source line 4170, bytecode pc 53
    (_dp = data.dp);
    // source line 4172, bytecode pc 62
    (_arrActions = []);
    // source line 4175, bytecode pc 81
    (_armatureCfg = this.Cfg.statusMap[_statusId]);
    // source line 4177, bytecode pc 124
    xs.assert(_armatureCfg, "_statusId err", _statusId, this.Cfg.statusMap);
    // source line 4180, bytecode pc 131
    (_aniName = type);
    // source line 4182, bytecode pc 154
    (_armatureInfo = xs.Cfg.Armature[_armatureCfg]);
    // source line 4183, bytecode pc 197
    xs.assert(_armatureInfo, "_armatureName err", _statusId, this.Cfg.statusMap);
    // source line 4184, bytecode pc 213
    (_aniInfo = _armatureInfo.animations[_aniName]);
    // source line 4185, bytecode pc 248
    xs.assert(_aniInfo, "_aniName err", _statusId, _aniName);
    // source line 4188, bytecode pc 279
    (_statusKey = ((_statusId + "_side_") + data.input.sideFrom));
    // source line 4190, bytecode pc 325
    xs.assert(data.input.sideFrom, "_input.fromSides ??", data.input);
    // source line 4192, bytecode pc 352
    xs.dump("_statusKey", _statusKey);
    if (((this[_statusKey] === undefined) || (this[_statusKey] === null))) {
        // source line 4196, bytecode pc 415
        (_armature = xs.Factorys.Armature.create(_armatureCfg));
        // source line 4198, bytecode pc 432
        _armature.setVisible(false);
        // source line 4201, bytecode pc 457
        (_visibleSize = xs.director.getVisibleSize());
        // source line 4203, bytecode pc 509
        (_offsetX = (((data.input.sideFrom === 0) ? -1 : 1) * _posMap[_statusId].offset.x));
        // source line 4205, bytecode pc 544
        (_offsetY = ((_visibleSize.height / 2) - _posMap[_statusId].offset.y));
        if ((data.input.sideFrom === 0)) {
            // source line 4211, bytecode pc 598
            _armature.setRotationY((_armature.getRotationY() + 180));
        }
        // source line 4214, bytecode pc 721
        xs.Utils.Node.attachNodes(this.near, _armature, { desc: "ct", offset: { x: _offsetX, y: _offsetY } }, xs.Cfg.Constant.Scene.FightDemo.Center.Near.Tmp);
        // source line 4216, bytecode pc 730
        (this[_statusKey] = _armature);
    } else {
        // source line 4221, bytecode pc 744
        (_armature = this[_statusKey]);
        // source line 4222, bytecode pc 771
        xs.assert(_armature, "find _armature cache failed");
    }
    // source line 4235, bytecode pc 850
    (_data = {
    statusId: _statusId,
    aniInfo: _aniInfo,
    armatureName: _armatureCfg,
    armatureInfo: _armatureInfo,
    armature: _armature,
    type: type,
    speed: _dp,
    control: data.control
});
    // source line 4238, bytecode pc 862
    (_data.armature = _armature);
    // source line 4243, bytecode pc 912
    _arrActions.push(cc.CallFunc.create(this.callfunc_createStatusActions, this, _data));
    // source line 4246, bytecode pc 917
    (_data = null);
    // source line 4249, bytecode pc 959
    (_dp = ((_aniInfo.fc / xs.Cfg.Constant.Ani.framePerSec) * _dp));
    // source line 4251, bytecode pc 1021
    _arrActions.push(cc.DelayTime.create((_dp + xs.Skill.Cfg.dp_fix_play)));
    // source line 4253, bytecode pc 1046
    this.log("createStatusActions", "end");
    // source line 4255, bytecode pc 1050
    return _arrActions;
},
    callfunc_createStatusActions: function(sender, data) {
    var _aniInfo, _armature, _animation, _type;
    // source line 4261, bytecode pc 11
    (_aniInfo = data.aniInfo);
    // source line 4262, bytecode pc 23
    (_armature = data.armature);
    // source line 4263, bytecode pc 41
    (_animation = _armature.getAnimation());
    // source line 4264, bytecode pc 76
    _animation.setSpeedScale((xs.ani_scale / data.speed));
    // source line 4265, bytecode pc 88
    (_type = data.type);
    // source line 4267, bytecode pc 105
    _armature.setVisible(true);
    // source line 4270, bytecode pc 157
    _animation.play(_aniInfo.name, -1, -1, ((_type === "status") ? 1 : 0));
}
}));
// source line 4375, bytecode pc 1401
(xs.Scene.FightScene = cc.Scene.extend({
    name: "FightScene",
    ctor: function() {
    // source line 4321, bytecode pc 12
    this._super();
    // source line 4322, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    // source line 4327, bytecode pc 12
    this._super();
    // source line 4329, bytecode pc 22
    (this.params = params);
    // source line 4331, bytecode pc 41
    (this.view = { main: null });
    // source line 4332, bytecode pc 49
    (this.step0 = 0);
},
    init0: function() {
    var layer;
    // source line 4338, bytecode pc 23
    (layer = new xs.Scene.FightSceneLayer());
    // source line 4339, bytecode pc 45
    layer.init(this.params);
    // source line 4341, bytecode pc 63
    layer.setTag(111);
    // source line 4343, bytecode pc 78
    (this.view.main = layer);
    // source line 4344, bytecode pc 101
    this.view.main.retain();
},
    init1: function() {
    // source line 4355, bytecode pc 40
    xs.Utils.Node.attachNodes(this, this.view.main);
    // source line 4357, bytecode pc 63
    this.view.main.release();
    // source line 4358, bytecode pc 86
    this.view.main.load_laststep();
},
    onEnterTransitionDidFinish: function() {
    // source line 4362, bytecode pc 12
    this._super();
    // source line 4363, bytecode pc 72
    xs.Guide.GuideMgr.endStepBySequence([ "00301", "30000", "60000" ]);
},
    update: function(fDelta) {
    // source line 4380, bytecode pc 6
    switch (this.step0) {
        case 0:
        // source line 4384, bytecode pc 57
        xs.Views.Mgr.displayLoadingLayer();
        // source line 4385, bytecode pc 83
        (this.step0 = (+this.step0 + 1));
        break;
        case 1:
        // source line 4390, bytecode pc 102
        this.init0();
        // source line 4391, bytecode pc 128
        (this.step0 = (+this.step0 + 1));
        break;
        case 2:
        // source line 4399, bytecode pc 147
        this.init1();
        // source line 4402, bytecode pc 174
        xs.Views.Mgr.dismissLoadingLayer();
        // source line 4403, bytecode pc 182
        (this.step0 = 0);
        // source line 4404, bytecode pc 195
        this.unscheduleUpdate();
        break;
        default:
        // source line 4408, bytecode pc 219
        this.error("xs.Scene.FightScene step error");
        break;
    }
}
}));
// source line 4453, bytecode pc 1874
(xs.Scene.FightScene.Cfg = {
    devMode: ((xs.release !== true) && false),
    Open: {
        rounds: [
            { skill: "Open_Init", type: xs.Cfg.Constant.Models.FightRoundItem.Type._1vs1 },
            { skill: "Open_Pvp", type: xs.Cfg.Constant.Models.FightRoundItem.Type._1vs1 },
            { skill: "Open_Cmn", type: xs.Cfg.Constant.Models.FightRoundItem.Type._1vs1 },
            { skill: "Open_Exit", type: xs.Cfg.Constant.Models.FightRoundItem.Type._1vs1 }
        ]
    },
    Result: {
        rounds: [
            { skill: "Result_Init", type: xs.Cfg.Constant.Models.FightRoundItem.Type._1vs1 },
            { skill: "Result_Cmn", type: xs.Cfg.Constant.Models.FightRoundItem.Type._1vs1 },
            { skill: "Result_ExpAndLevel" }
        ]
    }
});
// source line 4459, bytecode pc 1900
(xs.Scene.FightScene.create = function(params) {
    var _ret;
    // source line 4461, bytecode pc 23
    (_ret = new xs.Scene.FightScene());
    // source line 4462, bytecode pc 42
    _ret.init(params);
    // source line 4463, bytecode pc 46
    return _ret;
});
// source line 4493, bytecode pc 2160
xs.Scene.Mgr.registerScene("FightScene", {
    "class": xs.Scene.FightScene,
    area: [
        "FightScene01",
        "FightScene02",
        "FightScene10",
        "FightScene11",
        "FightScene12",
        "FightScene13",
        "FightScene14",
        "FightScene15"
    ],
    loadFuncs: [ "init0", "init1" ],
    needLoading: false,
    preLoad: { LabelBMFont: [ "BMF_Fight_SkillName", "BMF_Fight_Cure", "BMF_Fight_Hurt" ] },
    audio: { bgId: "Audio_BG_Fight" },
    type: xs.Constant_SceneType_Cmn
});
