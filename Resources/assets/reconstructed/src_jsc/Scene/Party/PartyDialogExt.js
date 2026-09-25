// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/PartyDialogExt.js:1
// source line 1, bytecode pc 52
(xs.Scene.Party.PartyDialogExt = (xs.Scene.Party.PartyDialogExt || {}));
// source line 506, bytecode pc 693
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn || xs.Views.HungerLayer.extend({
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelTitle", id: "LS_huodong_title" },
        { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" },
        { tag: 3, type: "ls", name: "m_labelSubTitle", id: "Default" },
        { tag: 4, type: "bs", name: "m_btnConfirm", id: "BS_Party_Confirm" },
        {
            tag: 5,
            type: "ls_ext",
            name: "m_labelInfo",
            ids: [ "LS_cardWujiangName", "LS_popUI5", "LS_cardWujiangName" ]
        },
        { tag: 32, name: "m_spriteLeft_32" }
    ],
    sortView: { paging: { zOrder: 4, tag: -1, priority: -70 } },
    name: "PartyDialogCmn",
    ctor: function() {
    // source line 31, bytecode pc 12
    this._super();
    // source line 32, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    var labeleInfoPositionX, labeleInfoPositionY;
    if (!this._super()) {
        // source line 37, bytecode pc 19
        return false;
    }
    // source line 42, bytecode pc 34
    (this.m_modelEvent = param.modelEvent);
    // source line 44, bytecode pc 42
    (this.m_labelTitle = null);
    // source line 45, bytecode pc 50
    (this.m_btnExit = null);
    // source line 46, bytecode pc 58
    (this.m_labelSubTitle = null);
    // source line 47, bytecode pc 66
    (this.m_btnConfirm = null);
    // source line 48, bytecode pc 74
    (this.m_labelInfo = null);
    // source line 52, bytecode pc 82
    (this.m_spriteLeft_32 = null);
    // source line 53, bytecode pc 91
    (this.m_iconNum = 7);
    // source line 54, bytecode pc 99
    (this.m_CanGet = false);
    // source line 57, bytecode pc 150
    (this.m_ccb = xs.ccb_reader.load(xs.Cfg.CCBI.Party_Cmn, this));
    // source line 59, bytecode pc 179
    this.m_ccb.setAnchorPoint(xs.ap_c);
    // source line 65, bytecode pc 222
    this.m_ccb.setContentSize(cc._size(932, 619));
    // source line 68, bytecode pc 275
    xs.Utils.Node.attachNodes(this, this.m_ccb, { desc: "c" });
    // source line 73, bytecode pc 318
    xs.Utils.UI.replaceCcbByCfg(this.m_ccb, this.CCB_Cfg, this);
    // source line 79, bytecode pc 355
    this.m_btnExit.setOnClickCallBack(function() {
    // source line 78, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 82, bytecode pc 414
    (this.m_spriteLeft = xs.Factorys.Sprite.createWithFileName((("huodong_left/HuodongScene01_cmn_left" + this.CCB_Cfg_LeftSprite.params[0]) + ".png")));
    // source line 83, bytecode pc 450
    this.m_spriteLeft.setPosition(this.m_spriteLeft_32.getPosition());
    // source line 84, bytecode pc 479
    this.m_spriteLeft.setAnchorPoint(xs.ap_c);
    // source line 85, bytecode pc 504
    this.m_ccb.addChild(this.m_spriteLeft);
    // source line 94, bytecode pc 541
    this.m_btnConfirm.setOnClickCallBack(function() {
    // source line 93, bytecode pc 12
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 96, bytecode pc 561
    this.m_btnConfirm.setEventOnDisable(true);
    // source line 98, bytecode pc 581
    this.m_spriteLeft_32.setVisible(false);
    // source line 102, bytecode pc 602
    (labeleInfoPositionX = this.m_labelInfo.getPositionX());
    // source line 103, bytecode pc 623
    (labeleInfoPositionY = this.m_labelInfo.getPositionY());
    // source line 104, bytecode pc 648
    this.m_labelInfo.setPositionY((labeleInfoPositionY - 15));
    // source line 105, bytecode pc 719
    (this.m_rechargedNumLabel = xs.Views.Label.LabelExt.createWithStyles([ "LS_cardWujiangName", "LS_popUI5", "LS_cardWujiangName" ]));
    // source line 106, bytecode pc 772
    this.m_rechargedNumLabel.setString(0, xs.Tools.String.createString("RechargeMoney"));
    // source line 107, bytecode pc 798
    this.m_rechargedNumLabel.setString(1, "0");
    // source line 108, bytecode pc 852
    this.m_rechargedNumLabel.setString(2, xs.Tools.String.createString("MoneyYuan"));
    // source line 109, bytecode pc 881
    this.m_rechargedNumLabel.setAnchorPoint(xs.ap_c);
    // source line 110, bytecode pc 927
    this.m_rechargedNumLabel.setPosition(cc.p(labeleInfoPositionX, (labeleInfoPositionY + 14)));
    // source line 111, bytecode pc 982
    xs.Utils.Node.attachNodes(this.m_ccb, this.m_rechargedNumLabel, null, this.sortView.paging);
    if ((this.m_modelEvent.getPartyEventType() == 125)) {
        // source line 114, bytecode pc 1027
        this.m_rechargedNumLabel.setVisible(true);
    } else {
        // source line 116, bytecode pc 1052
        this.m_rechargedNumLabel.setVisible(false);
    }
    // source line 120, bytecode pc 1065
    this._initIndex();
    // source line 121, bytecode pc 1078
    this._initContent();
    // source line 124, bytecode pc 1122
    (this._arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 125, bytecode pc 1166
    (this._arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 127, bytecode pc 1209
    this._arm_left.playAniById("guide", { loop: true, speed: 1 });
    // source line 128, bytecode pc 1252
    this._arm_right.playAniById("guide", { loop: true, speed: 1 });
    // source line 130, bytecode pc 1292
    (this.m_nextBtn = xs.Views.Btn.createInvisibleWithChild(this._arm_right));
    // source line 131, bytecode pc 1330
    this.m_nextBtn.setOnClickCallBack(this._nextClick.bind(this));
    // source line 132, bytecode pc 1373
    this.m_nextBtn.setPosition(cc.p(927, 280));
    // source line 133, bytecode pc 1428
    xs.Utils.Node.attachNodes(this.m_ccb, this.m_nextBtn, null, this.sortView.paging);
    // source line 135, bytecode pc 1468
    (this.m_lastBtn = xs.Views.Btn.createInvisibleWithChild(this._arm_left));
    // source line 136, bytecode pc 1506
    this.m_lastBtn.addOnClickCallBack(this._lastClick.bind(this));
    // source line 137, bytecode pc 1549
    this.m_lastBtn.setPosition(cc.p(347, 280));
    // source line 138, bytecode pc 1571
    this.m_lastBtn.setRotationY(180);
    // source line 139, bytecode pc 1626
    xs.Utils.Node.attachNodes(this.m_ccb, this.m_lastBtn, null, this.sortView.paging);
    // source line 144, bytecode pc 1628
    return true;
},
    _initIndex: function() {
    var _reward_list, _receivedNum, i;
    // source line 149, bytecode pc 14
    (_reward_list = this.m_modelEvent.m_reward_list);
    // source line 150, bytecode pc 53
    (this.m_pageNum = Math.ceil((_reward_list.length / this.m_iconNum)));
    // source line 151, bytecode pc 59
    (_receivedNum = -1);
    // source line 153, bytecode pc 64
    (i = 0);
    while ((i < _reward_list.length)) {
        if (_reward_list[i].status.is_received) {
            // source line 155, bytecode pc 106
            (_receivedNum = (+_receivedNum + 1));
        }
        // source line 153, bytecode pc 121
        (i = (+i + 1));
    }
    // source line 158, bytecode pc 166
    (this.m_signInNum = ((_receivedNum < 0) ? 0 : _receivedNum));
    // source line 162, bytecode pc 203
    (this.m_pageIndex = Math.floor((this.m_signInNum / this.m_iconNum)));
    if (((((_receivedNum + 1) % this.m_iconNum) == 0) && ((this.m_signInNum != 0) && (_receivedNum < (_reward_list.length - 1))))) {
        // source line 169, bytecode pc 271
        (this.m_pageIndex = (this.m_pageIndex + 1));
    }
},
    _nextClick: function() {
    // source line 176, bytecode pc 14
    (this.m_pageIndex = (this.m_pageIndex + 1));
    if ((this.m_pageIndex > (this.m_pageNum - 1))) {
        // source line 178, bytecode pc 49
        (this.m_pageIndex = (this.m_pageNum - 1));
    }
    // source line 180, bytecode pc 62
    this.updateSwapBtn();
    // source line 181, bytecode pc 75
    this._fresh_rewards();
},
    _lastClick: function() {
    // source line 186, bytecode pc 14
    (this.m_pageIndex = (this.m_pageIndex - 1));
    if ((this.m_pageIndex < 0)) {
        // source line 188, bytecode pc 35
        (this.m_pageIndex = 0);
    }
    // source line 190, bytecode pc 48
    this.updateSwapBtn();
    // source line 191, bytecode pc 61
    this._fresh_rewards();
},
    updateSwapBtn: function() {
    // source line 196, bytecode pc 19
    this.m_lastBtn.setVisible(true);
    // source line 197, bytecode pc 39
    this.m_nextBtn.setVisible(true);
    // source line 198, bytecode pc 59
    this._arm_left.setVisible(true);
    // source line 199, bytecode pc 79
    this._arm_right.setVisible(true);
    if ((this.m_pageIndex === 0)) {
        // source line 201, bytecode pc 112
        this.m_lastBtn.setVisible(false);
        // source line 202, bytecode pc 132
        this._arm_left.setVisible(false);
    }
    if ((this.m_pageIndex === (this.m_pageNum - 1))) {
        // source line 205, bytecode pc 172
        this.m_nextBtn.setVisible(false);
        // source line 206, bytecode pc 192
        this._arm_right.setVisible(false);
    }
},
    isMaxNumber: function(mStrId) {
    var _reward_list, _receivedNum, i;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 213, bytecode pc 38
        (_reward_list = this.m_modelEvent.m_reward_list);
        // source line 214, bytecode pc 43
        (_receivedNum = 0);
        // source line 216, bytecode pc 48
        (i = 0);
        while ((i < _reward_list.length)) {
            if (_reward_list[i].status.is_received) {
                // source line 218, bytecode pc 90
                (_receivedNum = (+_receivedNum + 1));
            }
            // source line 216, bytecode pc 105
            (i = (+i + 1));
        }
        if ((_receivedNum == _reward_list.length)) {
            if (mStrId) {
                // source line 226, bytecode pc 207
                xs.Views.Mgr.showToast(xs.Tools.String.createString(mStrId));
            } else {
                // source line 228, bytecode pc 272
                xs.Views.Mgr.showToast(xs.Tools.String.createString("str_party_jishenjiang_tishi"));
            }
            // source line 231, bytecode pc 274
            return true;
        }
    }
    // source line 235, bytecode pc 276
    return false;
},
    onBtnConfirmClickCallBack: function() {
    var _instance_id;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 242, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_129"));
        }
        // source line 244, bytecode pc 103
        return void 0;
    }
    // source line 247, bytecode pc 124
    (_instance_id = this.m_modelEvent.getInstanceId());
    // source line 279, bytecode pc 191
    xs.Tools.Net.requestPartyReceive({ instance_id: _instance_id, forcepush: true }, function(data) {
    var _tmpModelEvent, _jsonParty, i, _jsonEvent, _modelNew;
    // source line 254, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_128"));
    // source line 258, bytecode pc 69
    (_tmpModelEvent = this.m_modelEvent);
    // source line 261, bytecode pc 81
    (_jsonParty = data.activity_list);
    // source line 263, bytecode pc 86
    (i = 0);
    while ((i < _jsonParty.length)) {
        // source line 264, bytecode pc 103
        (_jsonEvent = _jsonParty[i]);
        if (_tmpModelEvent.isSameInstance(_jsonEvent.instance_id)) {
            // source line 271, bytecode pc 165
            (_modelNew = xs.Models.PartyEventBase.createWithJson(_jsonEvent));
            // source line 273, bytecode pc 182
            this.reloadData(_modelNew);
            break;
        }
        // source line 263, bytecode pc 201
        (i = (+i + 1));
    }
    // source line 278, bytecode pc 262
    xs.Tools.Net.getInstance().UseItemSuccess(data);
}.bind(this));
},
    onEnterTransitionDidFinish: function() {
    // source line 286, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 291, bytecode pc 12
    this._super();
},
    callfunc_push_notify: function() {
},
    _fresh_btn: function() {
    if (this.m_modelEvent.isReceiveAble()) {
        // source line 300, bytecode pc 41
        this.m_btnConfirm.setEnabled(true);
    } else {
        // source line 303, bytecode pc 66
        this.m_btnConfirm.setEnabled(false);
    }
},
    _fresh_info: function() {
    var _cur, _max;
    // source line 309, bytecode pc 20
    (_cur = this.m_modelEvent.getRewordsNumOfReceived());
    // source line 310, bytecode pc 41
    (_max = this.m_modelEvent.getRewordsNum());
    // source line 312, bytecode pc 94
    this.m_labelInfo.setString(0, xs.Tools.String.createString("auto_name_100"));
    // source line 313, bytecode pc 128
    this.m_labelInfo.setString(1, ((_cur + "/") + _max));
    // source line 314, bytecode pc 182
    this.m_labelInfo.setString(2, xs.Tools.String.createString("auto_name_131"));
},
    _fresh_rewards: function() {
    var i, _tmpView, _modeNum, _modelEvent, _Maxnum, _tmpNode, _modelWrapped, _labelExt, _iconView, pos;
    // source line 320, bytecode pc 4
    (i = 0);
    while ((i < 8)) {
        // source line 321, bytecode pc 24
        (_tmpView = this.m_iconAwards[i]);
        // source line 322, bytecode pc 45
        (_modeNum = (i + (this.m_pageIndex * this.m_iconNum)));
        // source line 323, bytecode pc 55
        (_modelEvent = this.m_modelEvent);
        // source line 325, bytecode pc 73
        (_Maxnum = _modelEvent.getRewordsNum());
        if ((typeof(_tmpView) != "undefined")) {
            if (((_modeNum < _Maxnum) && (i < this.m_iconNum))) {
                // source line 332, bytecode pc 144
                (_tmpNode = this.m_ccb.getChildByTag((10 + i)));
                // source line 333, bytecode pc 161
                _tmpView.setVisible(true);
                // source line 334, bytecode pc 178
                _tmpView.removeFromParent(true);
                // source line 335, bytecode pc 198
                (_modelWrapped = this._createModelWrappedByIdx(_modeNum));
                if (xs.Utils.isEmpty(_modelWrapped)) {
                    // source line 337, bytecode pc 230
                    return void 0;
                }
                // source line 341, bytecode pc 276
                (this.m_iconAwards[i] = xs.Views.Icon.IconWrappedWithLabel.create(_modelWrapped));
                // source line 345, bytecode pc 300
                (_labelExt = this._createLabelExtTitle(_modelWrapped, _modeNum));
                // source line 346, bytecode pc 326
                _labelExt.setAnchorPoint(xs.ap_c);
                // source line 349, bytecode pc 352
                this.m_iconAwards[i].setNodeTitle(_labelExt);
                // source line 351, bytecode pc 377
                (_iconView = this.m_iconAwards[i].getViewOri());
                // source line 353, bytecode pc 426
                (_iconView.m_taskIconBtn = xs.Views.Button.Factory.Audio.createInvisibleWithParent(_iconView));
                // source line 361, bytecode pc 478
                _iconView.m_taskIconBtn.setOnClickCallBack(function() {
    var _model_pack;
    // source line 356, bytecode pc 4
    (_model_pack = this);
    if ((_model_pack.getData().length > 0)) {
        // source line 358, bytecode pc 78
        xs.Views.Mgr.showDialogByName("ShowAddListDialog", _model_pack.getData());
    }
}.bind(_modelWrapped.getModelOri()));
                // source line 376, bytecode pc 496
                (pos = _tmpNode.getPosition());
                // source line 377, bytecode pc 556
                this.m_iconAwards[i].setPosition(cc.p(pos.x, (pos.y - 2)));
                // source line 378, bytecode pc 596
                _tmpNode.getParent().addChild(this.m_iconAwards[i], 3);
            } else {
                // source line 381, bytecode pc 618
                _tmpView.setVisible(false);
            }
        }
        // source line 320, bytecode pc 632
        (i = (+i + 1));
    }
    if (this.m_baseTouchPriority) {
        // source line 388, bytecode pc 661
        (i = 0);
        while ((i < this.m_iconAwards.length)) {
            // source line 389, bytecode pc 681
            (_tmpView = this.m_iconAwards[i]);
            if ((typeof(_tmpView) != "undefined")) {
                // source line 392, bytecode pc 736
                _tmpView.getViewOri().m_taskIconBtn.setTouchPriority((this.m_baseTouchPriority - 1));
            }
            // source line 388, bytecode pc 750
            (i = (+i + 1));
        }
    }
},
    reloadData: function(modelEvent) {
    // source line 404, bytecode pc 9
    (this.m_modelEvent = modelEvent);
    // source line 406, bytecode pc 22
    this._freshAll();
},
    _freshAll: function() {
    // source line 413, bytecode pc 7
    (this.m_CanGet = false);
    // source line 415, bytecode pc 20
    this._fresh_btn();
    // source line 418, bytecode pc 33
    this._fresh_info();
    // source line 421, bytecode pc 46
    this._initIndex();
    // source line 424, bytecode pc 59
    this._fresh_rewards();
    // source line 427, bytecode pc 72
    this.updateSwapBtn();
},
    setBaseTouchPriority: function(priority) {
    var i, _tmpView;
    // source line 434, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 435, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 437, bytecode pc 56
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 438, bytecode pc 83
    this.m_btnConfirm.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 441, bytecode pc 88
    (i = 0);
    while ((i < this.m_iconAwards.length)) {
        // source line 442, bytecode pc 108
        (_tmpView = this.m_iconAwards[i]);
        if ((typeof(_tmpView) != "undefined")) {
            // source line 445, bytecode pc 163
            _tmpView.getViewOri().m_taskIconBtn.setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 441, bytecode pc 177
        (i = (+i + 1));
    }
    if (this.m_lastBtn) {
        // source line 451, bytecode pc 238
        this.m_lastBtn.setTouchPriority((this.m_baseTouchPriority - 2));
    }
    if (this.m_nextBtn) {
        // source line 454, bytecode pc 277
        this.m_nextBtn.setTouchPriority((this.m_baseTouchPriority - 2));
    }
},
    _createModelWrappedByIdx: function(idx) {
    var _json, _dataExt, _modelWrapped, _tmpParam;
    // source line 460, bytecode pc 24
    (_json = this.m_modelEvent.getRewordByIdx(idx));
    // source line 464, bytecode pc 53
    (_dataExt = { status: _json.status, isNextReward: false });
    // source line 466, bytecode pc 58
    (_modelWrapped = null);
    if ((this.m_modelEvent.getPartyEventType() == 125)) {
        // source line 468, bytecode pc 113
        (_dataExt.isNextReward = this.m_modelEvent.isNextRewardIdx(idx));
        if (this.m_CanGet) {
            // source line 470, bytecode pc 134
            (_dataExt.isNextReward = false);
        }
        if (!xs.Utils.isEmpty(_json.object)) {
            // source line 476, bytecode pc 256
            (_modelWrapped = xs.Models.DataWrapped.create(xs.Models.Game.Package.createWithJson(_json.object.firstObj()), _dataExt));
            // source line 479, bytecode pc 284
            (_tmpParam = _modelWrapped.getModelExt().status.condition);
            if (_dataExt.isNextReward) {
                // source line 482, bytecode pc 305
                (this.m_CanGet = true);
            }
            // source line 485, bytecode pc 322
            this.setTodayRechargeNum(_modelWrapped);
        }
    } else {
        // source line 489, bytecode pc 357
        (_dataExt.isNextReward = this.m_modelEvent.isNextRewardIdx(idx));
        if (!xs.Utils.isEmpty(_json.object)) {
            // source line 494, bytecode pc 479
            (_modelWrapped = xs.Models.DataWrapped.create(xs.Models.Game.Package.createWithJson(_json.object.firstObj()), _dataExt));
        }
    }
    // source line 498, bytecode pc 483
    return _modelWrapped;
},
    setTodayRechargeNum: function(modelWrapped) {
    var _tmpParam;
    // source line 502, bytecode pc 27
    (_tmpParam = modelWrapped.getModelExt().status.condition);
    // source line 503, bytecode pc 51
    this.m_rechargedNumLabel.setString(1, _tmpParam);
},
    _initContent: function() {
    var _modelEvent, _num, i, _tmpNode, _modelWrapped, _iconView, pos;
    // source line 508, bytecode pc 11
    (this.m_iconAwards = []);
    // source line 510, bytecode pc 21
    (_modelEvent = this.m_modelEvent);
    // source line 512, bytecode pc 39
    (_num = _modelEvent.getRewordsNum());
    // source line 514, bytecode pc 44
    (i = 0);
    while ((i < 8)) {
        // source line 515, bytecode pc 78
        (_tmpNode = this.m_ccb.getChildByTag((10 + i)));
        // source line 516, bytecode pc 95
        _tmpNode.setVisible(false);
        if (((i >= _num) || (i >= this.m_iconNum))) {
        } else {
            // source line 521, bytecode pc 148
            (_modelWrapped = this._createModelWrappedByIdx(i));
            // source line 524, bytecode pc 194
            (this.m_iconAwards[i] = xs.Views.Icon.IconWrappedWithLabel.create(_modelWrapped));
            // source line 528, bytecode pc 219
            (_iconView = this.m_iconAwards[i].getViewOri());
            // source line 530, bytecode pc 268
            (_iconView.m_taskIconBtn = xs.Views.Button.Factory.Audio.createInvisibleWithParent(_iconView));
            // source line 537, bytecode pc 320
            _iconView.m_taskIconBtn.setOnClickCallBack(function() {
    var _model_pack;
    // source line 533, bytecode pc 4
    (_model_pack = this);
    if ((_model_pack.getData().length > 0)) {
        // source line 535, bytecode pc 78
        xs.Views.Mgr.showDialogByName("ShowAddListDialog", _model_pack.getData());
    }
}.bind(_modelWrapped.getModelOri()));
            // source line 540, bytecode pc 338
            (pos = _tmpNode.getPosition());
            // source line 541, bytecode pc 398
            this.m_iconAwards[i].setPosition(cc.p(pos.x, (pos.y - 2)));
            // source line 542, bytecode pc 438
            _tmpNode.getParent().addChild(this.m_iconAwards[i], 3);
        }
        // source line 514, bytecode pc 452
        (i = (+i + 1));
    }
}
})));
// source line 654, bytecode pc 975
(xs.Scene.Party.PartyDialogExt.AddConsume = (xs.Scene.Party.PartyDialogExt.AddConsume || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 7 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "AddConsume",
    init: function(param) {
    var m_pos, position, parent, label, pos, _png, label2;
    if ((param.modelEvent.instance_bg == xs.Constant_PartyType_Lvbu)) {
        // source line 556, bytecode pc 51
        (this.CCB_Cfg_LeftSprite.params = [ 18 ]);
    } else {
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_Lvmeng)) {
            // source line 558, bytecode pc 108
            (this.CCB_Cfg_LeftSprite.params = [ 17 ]);
        } else {
            // source line 561, bytecode pc 136
            (this.CCB_Cfg_LeftSprite.params = [ 7 ]);
        }
    }
    if (!this._super(param)) {
        // source line 565, bytecode pc 160
        return false;
    }
    // source line 569, bytecode pc 211
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_156"));
    // source line 571, bytecode pc 262
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 574, bytecode pc 305
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 575, bytecode pc 318
    this._freshAll();
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 578, bytecode pc 461
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 579, bytecode pc 483
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 581, bytecode pc 564
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 584, bytecode pc 585
    (m_pos = this.m_spriteLeft.getPosition());
    if ((param.modelEvent.instance_bg == xs.Constant_PartyType_Lvbu)) {
        // source line 586, bytecode pc 673
        this.m_spriteLeft.setPosition(cc.p((m_pos.x - 23), (m_pos.y + 55)));
    } else {
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_Lvmeng)) {
            // source line 589, bytecode pc 766
            this.m_spriteLeft.setPosition(cc.p((m_pos.x + 30), (m_pos.y + 10)));
        } else {
            // source line 593, bytecode pc 827
            this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
        }
    }
    // source line 597, bytecode pc 848
    (position = this.m_labelSubTitle.getPosition());
    // source line 598, bytecode pc 869
    (parent = this.m_labelSubTitle.getParent());
    // source line 599, bytecode pc 931
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 600, bytecode pc 984
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_157"));
    // source line 601, bytecode pc 1010
    this._labelExt.setString(1, "");
    // source line 602, bytecode pc 1039
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 603, bytecode pc 1061
    parent.addChild(this._labelExt);
    // source line 604, bytecode pc 1083
    this._labelExt.setPosition(position);
    // source line 605, bytecode pc 1096
    this.onCountDown();
    // source line 606, bytecode pc 1117
    (parent = this.m_labelInfo.getParent());
    // source line 607, bytecode pc 1137
    this.m_labelInfo.setVisible(false);
    // source line 608, bytecode pc 1206
    (label = xs.Factorys.Label.createByStyleIdWithString("LS_cardWujiangName", xs.Tools.String.createString("auto_name_158")));
    // source line 609, bytecode pc 1227
    (pos = this.m_labelInfo.getPosition());
    // source line 610, bytecode pc 1283
    label.setPosition(cc.p((pos.x - 26), (pos.y + 23)));
    // source line 612, bytecode pc 1329
    (_png = xs.Factorys.Sprite.create("icon_yuanBao", "Cmn01", null, true));
    // source line 613, bytecode pc 1385
    _png.setPosition(cc.p((pos.x - 80), (pos.y - 10)));
    // source line 614, bytecode pc 1435
    (label2 = xs.Factorys.Label.createByStyleIdWithString("LS_Lv", param.modelEvent.instance_addConsume));
    // source line 615, bytecode pc 1468
    label2.setPosition(this.m_labelInfo.getPosition());
    // source line 616, bytecode pc 1524
    label2.setPosition(cc.p((pos.x - 50), (pos.y - 10)));
    // source line 617, bytecode pc 1564
    label2.setAnchorPoint(cc.p(0, 0.5));
    // source line 619, bytecode pc 1583
    parent.addChild(label);
    // source line 620, bytecode pc 1602
    parent.addChild(label2);
    // source line 621, bytecode pc 1621
    parent.addChild(_png);
    // source line 623, bytecode pc 1623
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 627, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 630, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 638, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 639, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 640, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 641, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 642, bytecode pc 125
        return void 0;
    }
    // source line 645, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 646, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 647, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 650, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 652, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, _png, _labelExt;
    // source line 656, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 657, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 658, bytecode pc 80
    (_png = xs.Factorys.Sprite.create("icon_yuanBao", "Cmn01", null, true));
    // source line 659, bytecode pc 120
    _png.setAnchorPoint(cc.p(0, 0.5));
    // source line 660, bytecode pc 158
    _png.setContentSize(cc.size(115, 24));
    // source line 663, bytecode pc 226
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_Lv", "LS_huodong_day" ]));
    // source line 664, bytecode pc 249
    _labelExt.setString(0, "");
    // source line 665, bytecode pc 276
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 666, bytecode pc 300
    _labelExt.setString(2, "");
    // source line 667, bytecode pc 319
    _png.addChild(_labelExt);
    // source line 668, bytecode pc 359
    _labelExt.setAnchorPoint(cc.p(0, 0.5));
    // source line 669, bytecode pc 397
    _labelExt.setPosition(cc.p(37, 11));
    // source line 670, bytecode pc 401
    return _png;
}
})));
// source line 738, bytecode pc 1257
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Level_new = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Level_new || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 12 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Level_new",
    init: function(param) {
    var m_pos;
    if (!this._super(param)) {
        // source line 685, bytecode pc 23
        return false;
    }
    // source line 688, bytecode pc 31
    (this.m_pageIndex = 0);
    // source line 689, bytecode pc 40
    (this.m_pageNum = 3);
    // source line 690, bytecode pc 48
    (this.m_signInNum = 0);
    // source line 691, bytecode pc 57
    (this.m_iconNum = 7);
    // source line 694, bytecode pc 108
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 698, bytecode pc 151
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 699, bytecode pc 202
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_165"));
    // source line 700, bytecode pc 253
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_166"));
    // source line 704, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 705, bytecode pc 333
    this.m_spriteLeft.setPosition(cc.p((m_pos.x - 10), (m_pos.y - 8)));
    // source line 718, bytecode pc 370
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 712, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
        }
        // source line 714, bytecode pc 103
        return void 0;
    }
    // source line 717, bytecode pc 116
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 722, bytecode pc 383
    this._freshAll();
    // source line 724, bytecode pc 385
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 729, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 733, bytecode pc 12
    this._super();
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 740, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 741, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 743, bytecode pc 93
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 744, bytecode pc 120
    _labelExt.setString(0, ("" + _tmpParam));
    // source line 745, bytecode pc 170
    _labelExt.setString(1, xs.Tools.String.createString("auto_name_136"));
    // source line 747, bytecode pc 174
    return _labelExt;
}
})));
// source line 818, bytecode pc 1539
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Count_new = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Count_new || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 10 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Count_new",
    init: function(param) {
    var m_pos;
    if (!this._super(param)) {
        // source line 761, bytecode pc 23
        return false;
    }
    // source line 765, bytecode pc 31
    (this.m_pageIndex = 0);
    // source line 766, bytecode pc 40
    (this.m_pageNum = 3);
    // source line 767, bytecode pc 48
    (this.m_signInNum = 0);
    // source line 768, bytecode pc 57
    (this.m_iconNum = 7);
    // source line 771, bytecode pc 108
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 774, bytecode pc 151
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 775, bytecode pc 202
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_167"));
    // source line 776, bytecode pc 253
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_168"));
    // source line 780, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 781, bytecode pc 333
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 10), (m_pos.y + 10)));
    // source line 797, bytecode pc 370
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 790, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
    } else {
        // source line 794, bytecode pc 101
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 801, bytecode pc 383
    this._freshAll();
    // source line 803, bytecode pc 385
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 808, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 813, bytecode pc 12
    this._super();
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 820, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 821, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 823, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 824, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_141"));
    // source line 825, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 826, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 828, bytecode pc 234
    return _labelExt;
}
})));
// source line 898, bytecode pc 1864
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Continuous_new = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Continuous_new || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 11 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Count_new",
    sortView: { paging: { zOrder: 4, tag: -1, priority: -70 } },
    init: function(param) {
    var m_pos;
    if (!this._super(param)) {
        // source line 848, bytecode pc 23
        return false;
    }
    // source line 853, bytecode pc 31
    (this.m_pageIndex = 0);
    // source line 854, bytecode pc 40
    (this.m_pageNum = 3);
    // source line 855, bytecode pc 48
    (this.m_signInNum = 0);
    // source line 856, bytecode pc 57
    (this.m_iconNum = 7);
    // source line 859, bytecode pc 108
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 862, bytecode pc 151
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 863, bytecode pc 202
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_169"));
    // source line 864, bytecode pc 253
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_170"));
    // source line 866, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 867, bytecode pc 333
    this.m_spriteLeft.setPosition(cc.p((m_pos.x - 10), (m_pos.y - 6)));
    // source line 880, bytecode pc 370
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 874, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
        // source line 876, bytecode pc 85
        return void 0;
    }
    // source line 879, bytecode pc 98
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 883, bytecode pc 383
    this._freshAll();
    // source line 885, bytecode pc 385
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 890, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 894, bytecode pc 12
    this._super();
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 900, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 901, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 903, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 904, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_144"));
    // source line 905, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 906, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 908, bytecode pc 234
    return _labelExt;
}
})));
// source line 1030, bytecode pc 2156
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_MonthSignin = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_MonthSignin || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 9 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Continuous",
    init: function(param) {
    var m_pos;
    if (!this._super(param)) {
        // source line 922, bytecode pc 23
        return false;
    }
    // source line 925, bytecode pc 32
    (this.m_iconNum = 8);
    // source line 929, bytecode pc 40
    (this.m_pageIndex = 0);
    // source line 930, bytecode pc 49
    (this.m_pageNum = 3);
    // source line 931, bytecode pc 57
    (this.m_signInNum = 0);
    // source line 933, bytecode pc 108
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_163"));
    // source line 935, bytecode pc 159
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 940, bytecode pc 202
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 941, bytecode pc 253
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_164"));
    // source line 945, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 946, bytecode pc 330
    this.m_spriteLeft.setPosition(cc.p(m_pos.x, (m_pos.y + 41)));
    // source line 961, bytecode pc 367
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 953, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
        }
        // source line 955, bytecode pc 103
        return void 0;
    }
    // source line 958, bytecode pc 158
    xs.Views.Mgr.showDialogByName("SelectSgsChannelDialog", { type: xs.Constant_Sgs_OL });
}.bind(this));
    // source line 965, bytecode pc 380
    this._freshAll();
    // source line 967, bytecode pc 382
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 972, bytecode pc 12
    this._super();
    // source line 973, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onBtnAwardCallBack, xs.Constant_Notify_Event_GetChannelAward);
},
    onExitTransitionDidStart: function() {
    // source line 978, bytecode pc 12
    this._super();
    // source line 979, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GetChannelAward);
},
    onBtnAwardCallBack: function(param) {
    var _instance_id;
    // source line 983, bytecode pc 20
    (_instance_id = this.m_modelEvent.getInstanceId());
    // source line 1022, bytecode pc 124
    xs.Tools.Net.requestPartyReceive({
    instance_id: _instance_id,
    extra_param: { cooperator: param.cooperator, cooperator_server_id: param.cooperator_server_id },
    forcepush: true
}, function(data) {
    var _tmpModelEvent, _jsonParty, i, _jsonEvent, _modelNew;
    // source line 996, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_128"));
    // source line 1000, bytecode pc 69
    (_tmpModelEvent = this.m_modelEvent);
    // source line 1003, bytecode pc 81
    (_jsonParty = data.activity_list);
    // source line 1005, bytecode pc 86
    (i = 0);
    while ((i < _jsonParty.length)) {
        // source line 1006, bytecode pc 103
        (_jsonEvent = _jsonParty[i]);
        if (_tmpModelEvent.isSameInstance(_jsonEvent.instance_id)) {
            // source line 1013, bytecode pc 165
            (_modelNew = xs.Models.PartyEventBase.createWithJson(_jsonEvent));
            // source line 1015, bytecode pc 182
            this.reloadData(_modelNew);
            break;
        }
        // source line 1005, bytecode pc 201
        (i = (+i + 1));
    }
    // source line 1020, bytecode pc 233
    this._initIndex();
}.bind(this));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1032, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1033, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1035, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1036, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_123"));
    // source line 1037, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1038, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 1040, bytecode pc 234
    return _labelExt;
}
})));
// source line 1144, bytecode pc 2438
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Recharge = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Recharge || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 5 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Recharge",
    init: function(param) {
    var m_pos, position, parent;
    if (!this._super(param)) {
        // source line 1054, bytecode pc 23
        return false;
    }
    // source line 1057, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_145"));
    // source line 1059, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1063, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1064, bytecode pc 181
    this._freshAll();
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1067, bytecode pc 324
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1068, bytecode pc 346
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1070, bytecode pc 427
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1072, bytecode pc 448
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1073, bytecode pc 504
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 1074, bytecode pc 525
    (position = this.m_labelSubTitle.getPosition());
    // source line 1075, bytecode pc 546
    (parent = this.m_labelSubTitle.getParent());
    // source line 1076, bytecode pc 608
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1077, bytecode pc 661
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 1078, bytecode pc 687
    this._labelExt.setString(1, "");
    // source line 1079, bytecode pc 716
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1080, bytecode pc 738
    parent.addChild(this._labelExt);
    // source line 1081, bytecode pc 760
    this._labelExt.setPosition(position);
    // source line 1082, bytecode pc 773
    this.onCountDown();
    // source line 1109, bytecode pc 810
    this.m_btnConfirm.setOnClickCallBack(function() {
    var dialog;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 1097, bytecode pc 180
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_115"),
    leftCB: function() {
    // source line 1095, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 1098, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 1099, bytecode pc 59
    xs.Views.Mgr.showDialogByName("ChargeDialog");
}
}));
        // source line 1101, bytecode pc 198
        (dialog = dialog.getRealDialog());
        // source line 1102, bytecode pc 246
        dialog.setContentText(xs.Tools.String.createString("auto_name_147"));
        // source line 1103, bytecode pc 294
        dialog.setTitleByString(xs.Tools.String.createString("auto_name_148"));
    } else {
        // source line 1106, bytecode pc 312
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 1112, bytecode pc 812
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1116, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1119, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1127, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1128, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1129, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1130, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1131, bytecode pc 125
        return void 0;
    }
    // source line 1134, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1135, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1136, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1140, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1142, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1146, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1147, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1149, bytecode pc 93
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_dayNomb", "LS_huodong_dayNomb" ]));
    // source line 1150, bytecode pc 116
    _labelExt.setString(0, "Vip");
    // source line 1151, bytecode pc 143
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1152, bytecode pc 147
    return _labelExt;
}
})));
// source line 1257, bytecode pc 2720
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Collect = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Collect || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 6 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Collect",
    init: function(param) {
    var m_pos, position, parent;
    if (!this._super(param)) {
        // source line 1166, bytecode pc 23
        return false;
    }
    // source line 1169, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_150"));
    // source line 1171, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1175, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1176, bytecode pc 181
    this._freshAll();
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1179, bytecode pc 324
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1180, bytecode pc 346
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1182, bytecode pc 427
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1184, bytecode pc 448
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1185, bytecode pc 507
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 27), (m_pos.y + 10)));
    // source line 1186, bytecode pc 528
    (position = this.m_labelSubTitle.getPosition());
    // source line 1187, bytecode pc 549
    (parent = this.m_labelSubTitle.getParent());
    // source line 1188, bytecode pc 611
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1189, bytecode pc 664
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 1190, bytecode pc 690
    this._labelExt.setString(1, "");
    // source line 1191, bytecode pc 719
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1192, bytecode pc 741
    parent.addChild(this._labelExt);
    // source line 1193, bytecode pc 763
    this._labelExt.setPosition(position);
    // source line 1194, bytecode pc 776
    this.onCountDown();
    // source line 1222, bytecode pc 813
    this.m_btnConfirm.setOnClickCallBack(function() {
    var dialog;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 1211, bytecode pc 198
            (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_151"),
    leftCB: function() {
    // source line 1209, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 1212, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
}));
            // source line 1214, bytecode pc 216
            (dialog = dialog.getRealDialog());
            // source line 1215, bytecode pc 264
            dialog.setContentText(xs.Tools.String.createString("auto_name_152"));
            // source line 1216, bytecode pc 312
            dialog.setTitleByString(xs.Tools.String.createString("auto_name_153"));
        }
    } else {
        // source line 1220, bytecode pc 330
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 1225, bytecode pc 815
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1229, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1232, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1240, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1241, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1242, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1243, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1244, bytecode pc 125
        return void 0;
    }
    // source line 1247, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1248, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1249, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1253, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1255, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1259, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1260, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1262, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1263, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_154"));
    // source line 1264, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1265, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_155"));
    // source line 1267, bytecode pc 234
    return _labelExt;
}
})));
// source line 1356, bytecode pc 3002
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_DailyRecharge = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_DailyRecharge || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 13 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_DailyRecharge",
    init: function(param) {
    var m_pos, position, parent;
    if (!this._super(param)) {
        // source line 1279, bytecode pc 23
        return false;
    }
    // source line 1282, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("DailyRechargeAwardTitle"));
    // source line 1283, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1286, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1289, bytecode pc 311
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1290, bytecode pc 333
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1292, bytecode pc 414
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1295, bytecode pc 435
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1296, bytecode pc 491
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 1298, bytecode pc 512
    (position = this.m_labelSubTitle.getPosition());
    // source line 1299, bytecode pc 533
    (parent = this.m_labelSubTitle.getParent());
    // source line 1300, bytecode pc 595
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1301, bytecode pc 648
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 1302, bytecode pc 674
    this._labelExt.setString(1, "0");
    // source line 1303, bytecode pc 703
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1304, bytecode pc 725
    parent.addChild(this._labelExt);
    // source line 1305, bytecode pc 747
    this._labelExt.setPosition(position);
    // source line 1306, bytecode pc 760
    this.onCountDown();
    // source line 1308, bytecode pc 773
    this._freshAll();
    // source line 1322, bytecode pc 810
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 1316, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_147"));
        // source line 1317, bytecode pc 85
        return true;
    } else {
        // source line 1320, bytecode pc 103
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 1327, bytecode pc 812
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1331, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1334, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1341, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1342, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1343, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1344, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1345, bytecode pc 125
        return void 0;
    }
    // source line 1348, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1349, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1350, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1352, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1354, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _labelExt;
    // source line 1360, bytecode pc 67
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1361, bytecode pc 117
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_141"));
    // source line 1362, bytecode pc 146
    _labelExt.setString(1, ("" + (_modeNum + 1)));
    // source line 1363, bytecode pc 197
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 1365, bytecode pc 201
    return _labelExt;
}
})));
// source line 1484, bytecode pc 3253
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_presentLuxun = xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 8 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_presentLuxun",
    init: function(param) {
    var m_pos, position, parent, pos, label;
    if ((param.modelEvent.instance_bg == xs.Constant_PartyType_SongMoWuJaing)) {
        // source line 1378, bytecode pc 51
        (this.CCB_Cfg_LeftSprite.params = [ 14 ]);
    } else {
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_BingFengHaoLi)) {
            // source line 1380, bytecode pc 108
            (this.CCB_Cfg_LeftSprite.params = [ 16 ]);
        } else {
            // source line 1383, bytecode pc 136
            (this.CCB_Cfg_LeftSprite.params = [ 8 ]);
        }
    }
    if (!this._super(param)) {
        // source line 1387, bytecode pc 160
        return false;
    }
    // source line 1392, bytecode pc 211
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1398, bytecode pc 254
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1400, bytecode pc 275
    (m_pos = this.m_spriteLeft.getPosition());
    if ((param.modelEvent.instance_bg == xs.Constant_PartyType_SongMoWuJaing)) {
        // source line 1403, bytecode pc 355
        this.m_labelTitle.setString(xs.Tools.String.createString("party_songMoJiangHeadStr"));
        // source line 1404, bytecode pc 411
        this.m_spriteLeft.setPosition(cc.p(m_pos.x, (m_pos.y + 7)));
    } else {
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_BingFengHaoLi)) {
            // source line 1406, bytecode pc 496
            this.m_labelTitle.setString(xs.Tools.String.createString("party_songbinfenghaoli"));
            // source line 1407, bytecode pc 555
            this.m_spriteLeft.setPosition(cc.p((m_pos.x - 35), (m_pos.y + 20)));
        } else {
            // source line 1412, bytecode pc 611
            this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_159"));
            // source line 1413, bytecode pc 667
            this.m_spriteLeft.setPosition(cc.p(m_pos.x, (m_pos.y + 17)));
        }
    }
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1417, bytecode pc 810
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1418, bytecode pc 832
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1420, bytecode pc 913
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1423, bytecode pc 934
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1424, bytecode pc 990
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 1425, bytecode pc 1011
    (position = this.m_labelSubTitle.getPosition());
    // source line 1426, bytecode pc 1032
    (parent = this.m_labelSubTitle.getParent());
    // source line 1427, bytecode pc 1094
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1428, bytecode pc 1147
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_157"));
    // source line 1429, bytecode pc 1173
    this._labelExt.setString(1, "");
    // source line 1430, bytecode pc 1202
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1431, bytecode pc 1224
    parent.addChild(this._labelExt);
    // source line 1432, bytecode pc 1246
    this._labelExt.setPosition(position);
    // source line 1433, bytecode pc 1259
    this.onCountDown();
    // source line 1436, bytecode pc 1272
    this._freshAll();
    // source line 1438, bytecode pc 1293
    (parent = this.m_labelInfo.getParent());
    // source line 1439, bytecode pc 1314
    (pos = this.m_labelInfo.getPosition());
    // source line 1440, bytecode pc 1370
    this.m_labelInfo.setPosition(cc.p(pos.x, (pos.y - 15)));
    // source line 1441, bytecode pc 1429
    (label = xs.Views.Label.LabelExt.createWithStyles([ "LS_cardWujiangName", "LS_popUI5" ]));
    // source line 1442, bytecode pc 1479
    label.setString(0, xs.Tools.String.createString("auto_name_160"));
    // source line 1443, bytecode pc 1558
    label.setString(1, (parseInt(param.modelEvent.recharge) + xs.Tools.String.createString("auto_name_161")));
    // source line 1444, bytecode pc 1584
    label.setAnchorPoint(xs.ap_c);
    // source line 1445, bytecode pc 1637
    label.setPosition(cc.p(pos.x, (pos.y + 14)));
    // source line 1446, bytecode pc 1656
    parent.addChild(label);
    // source line 1450, bytecode pc 1658
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1455, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1458, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1466, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1467, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1468, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1469, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1470, bytecode pc 125
        return void 0;
    }
    // source line 1473, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1474, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1475, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1479, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1481, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, mYuan, _labelExt;
    // source line 1486, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1487, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1489, bytecode pc 70
    (mYuan = xs.Tools.String.createString("LuxunParty_dollar"));
    if ((xsc.Tools.ProductSys.getArea() == xsc.Const_Area_TW)) {
        // source line 1491, bytecode pc 121
        (mYuan = "");
    }
    // source line 1494, bytecode pc 189
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1495, bytecode pc 239
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_162"));
    // source line 1496, bytecode pc 266
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1497, bytecode pc 288
    _labelExt.setString(2, mYuan);
    // source line 1499, bytecode pc 292
    return _labelExt;
}
}));
// source line 1589, bytecode pc 3535
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_ContinuousRecharge = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_ContinuousRecharge || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 15 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_ContinuousRecharge",
    init: function(param) {
    var m_pos, position, parent;
    if (!this._super(param)) {
        // source line 1512, bytecode pc 23
        return false;
    }
    // source line 1515, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("party_ContinuousRecharge_head"));
    // source line 1516, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1519, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1522, bytecode pc 311
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1523, bytecode pc 333
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1525, bytecode pc 414
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1528, bytecode pc 435
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1529, bytecode pc 491
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 1531, bytecode pc 512
    (position = this.m_labelSubTitle.getPosition());
    // source line 1532, bytecode pc 533
    (parent = this.m_labelSubTitle.getParent());
    // source line 1533, bytecode pc 595
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1534, bytecode pc 648
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 1535, bytecode pc 674
    this._labelExt.setString(1, "0");
    // source line 1536, bytecode pc 703
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1537, bytecode pc 725
    parent.addChild(this._labelExt);
    // source line 1538, bytecode pc 747
    this._labelExt.setPosition(position);
    // source line 1539, bytecode pc 760
    this.onCountDown();
    // source line 1541, bytecode pc 773
    this._freshAll();
    // source line 1555, bytecode pc 810
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 1549, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_147"));
        // source line 1550, bytecode pc 85
        return true;
    } else {
        // source line 1553, bytecode pc 103
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 1560, bytecode pc 812
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1564, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1567, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1574, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1575, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1576, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1577, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1578, bytecode pc 125
        return void 0;
    }
    // source line 1581, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1582, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1583, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1585, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1587, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _labelExt;
    // source line 1593, bytecode pc 67
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1594, bytecode pc 117
    _labelExt.setString(0, xs.Tools.String.createString("party_ContinuousRecharge_di"));
    // source line 1595, bytecode pc 146
    _labelExt.setString(1, ("" + (_modeNum + 1)));
    // source line 1596, bytecode pc 197
    _labelExt.setString(2, xs.Tools.String.createString("party_ContinuousRecharge_recha"));
    // source line 1598, bytecode pc 201
    return _labelExt;
}
})));
// source line 1689, bytecode pc 3817
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_FinishDungeon = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_FinishDungeon || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 20 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_FinishDungeon",
    init: function(param) {
    var m_pos, position, parent;
    if (!this._super(param)) {
        // source line 1612, bytecode pc 23
        return false;
    }
    // source line 1615, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("FinishDungeonTitle"));
    // source line 1616, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1619, bytecode pc 146
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1620, bytecode pc 202
    this.m_spriteLeft.setPosition(cc.p((m_pos.x - 45), m_pos.y));
    // source line 1623, bytecode pc 245
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1636, bytecode pc 282
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 1630, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("Label_Auto_004"));
        // source line 1631, bytecode pc 85
        return true;
    } else {
        // source line 1634, bytecode pc 103
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1640, bytecode pc 425
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1641, bytecode pc 447
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1643, bytecode pc 528
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1647, bytecode pc 549
    (position = this.m_labelSubTitle.getPosition());
    // source line 1648, bytecode pc 570
    (parent = this.m_labelSubTitle.getParent());
    // source line 1649, bytecode pc 632
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1650, bytecode pc 685
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 1651, bytecode pc 711
    this._labelExt.setString(1, "0");
    // source line 1652, bytecode pc 740
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1653, bytecode pc 762
    parent.addChild(this._labelExt);
    // source line 1654, bytecode pc 784
    this._labelExt.setPosition(position);
    // source line 1655, bytecode pc 797
    this.onCountDown();
    // source line 1657, bytecode pc 810
    this._freshAll();
    // source line 1659, bytecode pc 812
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1664, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1667, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1674, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1675, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1676, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1677, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1678, bytecode pc 125
        return void 0;
    }
    // source line 1681, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1682, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1683, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1685, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1687, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _labelExt;
    // source line 1694, bytecode pc 67
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    if (((_modeNum == 0) || (_modeNum == 2))) {
        // source line 1696, bytecode pc 139
        _labelExt.setString(0, xs.Tools.String.createString("Label_Auto_001"));
    } else {
        // source line 1699, bytecode pc 194
        _labelExt.setString(0, xs.Tools.String.createString("Label_Auto_003"));
    }
    // source line 1701, bytecode pc 198
    switch (_modeNum) {
        case 0:
        // source line 1704, bytecode pc 249
        _labelExt.setString(1, "21");
        break;
        case 1:
        // source line 1707, bytecode pc 277
        _labelExt.setString(1, "14");
        break;
        case 2:
        // source line 1710, bytecode pc 305
        _labelExt.setString(1, "26");
        break;
        case 3:
        // source line 1713, bytecode pc 333
        _labelExt.setString(1, "22");
        break;
        default:
        break;
    }
    // source line 1716, bytecode pc 389
    _labelExt.setString(2, xs.Tools.String.createString("Label_Auto_002"));
    // source line 1718, bytecode pc 393
    return _labelExt;
}
})));
// source line 1809, bytecode pc 4099
(xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Accumulat_Summon = (xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Accumulat_Summon || xs.Scene.Party.PartyDialogExt.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 22 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Accumulat_Summon",
    init: function(param) {
    var m_pos, position, parent;
    if (!this._super(param)) {
        // source line 1732, bytecode pc 23
        return false;
    }
    // source line 1735, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("HD_Accumulat_Summon_Title"));
    // source line 1736, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1739, bytecode pc 146
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1740, bytecode pc 202
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 15), m_pos.y));
    // source line 1743, bytecode pc 245
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1756, bytecode pc 282
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 1750, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("HD_LingQu_Error"));
        // source line 1751, bytecode pc 85
        return true;
    } else {
        // source line 1754, bytecode pc 103
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1760, bytecode pc 425
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1761, bytecode pc 447
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1763, bytecode pc 528
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1767, bytecode pc 549
    (position = this.m_labelSubTitle.getPosition());
    // source line 1768, bytecode pc 570
    (parent = this.m_labelSubTitle.getParent());
    // source line 1769, bytecode pc 632
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1770, bytecode pc 685
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 1771, bytecode pc 711
    this._labelExt.setString(1, "0");
    // source line 1772, bytecode pc 740
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1773, bytecode pc 762
    parent.addChild(this._labelExt);
    // source line 1774, bytecode pc 784
    this._labelExt.setPosition(position);
    // source line 1775, bytecode pc 797
    this.onCountDown();
    // source line 1777, bytecode pc 810
    this._freshAll();
    // source line 1779, bytecode pc 812
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1784, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1787, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1794, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1795, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1796, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1797, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1798, bytecode pc 125
        return void 0;
    }
    // source line 1801, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1802, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1803, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1805, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1807, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped, _modeNum) {
    var _modelWrapped, _tmpParam, type, cnt, _labelExt, num;
    // source line 1811, bytecode pc 6
    (_modelWrapped = modelWrapped);
    if ((_modelWrapped == null)) {
        // source line 1814, bytecode pc 18
        return void 0;
    }
    // source line 1816, bytecode pc 46
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1818, bytecode pc 53
    (type = _tmpParam);
    // source line 1819, bytecode pc 58
    (cnt = 1);
    while ((type >= 10)) {
        // source line 1822, bytecode pc 81
        (type = ((type - (type % 10)) / 10));
        // source line 1823, bytecode pc 91
        (cnt = (cnt * 10));
    }
    // source line 1827, bytecode pc 132
    xs.assert((cnt > 0), "xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Accumulat_Summon data error");
    // source line 1829, bytecode pc 200
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    if ((cnt <= 0)) {
        // source line 1832, bytecode pc 214
        return _labelExt;
    }
    // source line 1834, bytecode pc 229
    (num = (_tmpParam - (type * cnt)));
    // source line 1837, bytecode pc 233
    switch (type) {
        case 1:
        // source line 1840, bytecode pc 307
        _labelExt.setString(0, xs.Tools.String.createString("HD_Accumulat_Summon_ItemTitle_t1"));
        break;
        case 2:
        // source line 1843, bytecode pc 362
        _labelExt.setString(0, xs.Tools.String.createString("HD_Accumulat_Summon_ItemTitle_t2"));
        break;
        case 3:
        // source line 1846, bytecode pc 417
        _labelExt.setString(0, xs.Tools.String.createString("HD_Accumulat_Summon_ItemTitle_t3"));
        break;
        default:
        break;
    }
    // source line 1850, bytecode pc 449
    _labelExt.setString(1, ("" + num));
    // source line 1851, bytecode pc 500
    _labelExt.setString(2, xs.Tools.String.createString("HD_Accumulat_Summon_ItemTitle_end"));
    // source line 1854, bytecode pc 504
    return _labelExt;
}
})));
// source line 1860, bytecode pc 4130
(xs.Scene.Party.PartyDialogExt.create = function(param) {
    var _ret;
    // source line 1862, bytecode pc 4
    (_ret = null);
    // source line 1865, bytecode pc 24
    switch (param.modelEvent.getPartyEventType()) {
        case xs.Constant_PartyType_AddConsume_Bundle:
        // source line 1869, bytecode pc 258
        (_ret = new xs.Scene.Party.PartyDialogExt.AddConsume());
        break;
        case xs.Constant_PartyType_Level_Bundle:
        // source line 1873, bytecode pc 297
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Level_new());
        break;
        case xs.Constant_PartyType_Count_Bundle:
        // source line 1877, bytecode pc 336
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Count_new());
        break;
        case xs.Constant_PartyType_DailyCheck_Bundle:
        // source line 1881, bytecode pc 375
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Count_new());
        break;
        case xs.Constant_PartyType_Continuous_Bundle:
        // source line 1885, bytecode pc 414
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Continuous_new());
        break;
        case xs.Constant_PartyType_MonthSignin_Bundle:
        // source line 1889, bytecode pc 453
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_MonthSignin());
        break;
        case xs.Constant_PartyType_AdvertisementeRechargeGiftsH_Bundle:
        // source line 1893, bytecode pc 492
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Recharge());
        break;
        case xs.Constant_PartyType_AdvertisementCollectGod_Bundle:
        // source line 1897, bytecode pc 531
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Collect());
        break;
        case xs.Constant_PartyType_PresentLuxun_Bundle:
        // source line 1901, bytecode pc 570
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_presentLuxun());
        break;
        case xs.Constant_PartyType_DailyRechargeAward_Bundle:
        // source line 1906, bytecode pc 609
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_DailyRecharge());
        break;
        case xs.Constant_PartyType_ContinuousRecharge:
        // source line 1910, bytecode pc 648
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_ContinuousRecharge());
        break;
        case xs.Constant_PartyType_Finish_Dungeon:
        // source line 1913, bytecode pc 687
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_FinishDungeon());
        break;
        case xs.Constant_PartyType_Accumulat_Summon:
        // source line 1919, bytecode pc 726
        (_ret = new xs.Scene.Party.PartyDialogExt.PartyDialogCmn_Accumulat_Summon());
        break;
        default:
        // source line 1923, bytecode pc 754
        this.error("PartyDialogExt.create", param);
        break;
    }
    // source line 1926, bytecode pc 778
    _ret.init(param);
    // source line 1928, bytecode pc 782
    return _ret;
});
// source line 1933, bytecode pc 4210
xs.Views.Mgr.registerDialog("PartyDialogExt", { "class": xs.Scene.Party.PartyDialogExt, styleType: xs.Constant_DlgStyleType_Large });
