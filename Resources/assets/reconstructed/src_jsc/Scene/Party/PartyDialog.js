// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/PartyDialog.js:1
// source line 7, bytecode pc 52
(xs.Scene.Party.PartyDialog = (xs.Scene.Party.PartyDialog || {}));
// source line 524, bytecode pc 683
(xs.Scene.Party.PartyDialog.PartyDialogCmn = (xs.Scene.Party.PartyDialog.PartyDialogCmn || xs.Views.HungerLayer.extend({
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
    // source line 39, bytecode pc 12
    this._super();
    // source line 40, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    if (!this._super()) {
        // source line 45, bytecode pc 19
        return false;
    }
    // source line 48, bytecode pc 48
    xs.log("PartyDialogCmn", "init");
    // source line 51, bytecode pc 63
    (this.m_modelEvent = param.modelEvent);
    // source line 53, bytecode pc 71
    (this.m_labelTitle = null);
    // source line 54, bytecode pc 79
    (this.m_btnExit = null);
    // source line 55, bytecode pc 87
    (this.m_labelSubTitle = null);
    // source line 56, bytecode pc 95
    (this.m_btnConfirm = null);
    // source line 57, bytecode pc 103
    (this.m_labelInfo = null);
    // source line 60, bytecode pc 111
    (this.m_spriteLeft_32 = null);
    // source line 61, bytecode pc 120
    (this.m_iconNum = 7);
    // source line 64, bytecode pc 171
    (this.m_ccb = xs.ccb_reader.load(xs.Cfg.CCBI.Party_Cmn, this));
    // source line 66, bytecode pc 200
    this.m_ccb.setAnchorPoint(xs.ap_c);
    // source line 72, bytecode pc 243
    this.m_ccb.setContentSize(cc._size(932, 619));
    // source line 75, bytecode pc 296
    xs.Utils.Node.attachNodes(this, this.m_ccb, { desc: "c" });
    // source line 81, bytecode pc 339
    xs.Utils.UI.replaceCcbByCfg(this.m_ccb, this.CCB_Cfg, this);
    // source line 87, bytecode pc 376
    this.m_btnExit.setOnClickCallBack(function() {
    // source line 86, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 91, bytecode pc 435
    (this.m_spriteLeft = xs.Factorys.Sprite.createWithFileName((("huodong_left/HuodongScene01_cmn_left" + this.CCB_Cfg_LeftSprite.params[0]) + ".png")));
    // source line 92, bytecode pc 471
    this.m_spriteLeft.setPosition(this.m_spriteLeft_32.getPosition());
    // source line 93, bytecode pc 500
    this.m_spriteLeft.setAnchorPoint(xs.ap_c);
    // source line 94, bytecode pc 525
    this.m_ccb.addChild(this.m_spriteLeft);
    // source line 104, bytecode pc 562
    this.m_btnConfirm.setOnClickCallBack(function() {
    // source line 103, bytecode pc 12
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 106, bytecode pc 582
    this.m_btnConfirm.setEventOnDisable(true);
    // source line 110, bytecode pc 602
    this.m_spriteLeft_32.setVisible(false);
    // source line 113, bytecode pc 615
    this._initIndex();
    // source line 114, bytecode pc 628
    this._initContent();
    // source line 118, bytecode pc 672
    (this._arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 119, bytecode pc 716
    (this._arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 121, bytecode pc 759
    this._arm_left.playAniById("guide", { loop: true, speed: 1 });
    // source line 122, bytecode pc 802
    this._arm_right.playAniById("guide", { loop: true, speed: 1 });
    // source line 124, bytecode pc 842
    (this.m_nextBtn = xs.Views.Btn.createInvisibleWithChild(this._arm_right));
    // source line 125, bytecode pc 880
    this.m_nextBtn.setOnClickCallBack(this._nextClick.bind(this));
    // source line 126, bytecode pc 923
    this.m_nextBtn.setPosition(cc.p(927, 280));
    // source line 127, bytecode pc 978
    xs.Utils.Node.attachNodes(this.m_ccb, this.m_nextBtn, null, this.sortView.paging);
    // source line 129, bytecode pc 1018
    (this.m_lastBtn = xs.Views.Btn.createInvisibleWithChild(this._arm_left));
    // source line 130, bytecode pc 1056
    this.m_lastBtn.addOnClickCallBack(this._lastClick.bind(this));
    // source line 131, bytecode pc 1099
    this.m_lastBtn.setPosition(cc.p(347, 280));
    // source line 132, bytecode pc 1121
    this.m_lastBtn.setRotationY(180);
    // source line 133, bytecode pc 1176
    xs.Utils.Node.attachNodes(this.m_ccb, this.m_lastBtn, null, this.sortView.paging);
    // source line 137, bytecode pc 1178
    return true;
},
    isMaxNumber: function(mStrId) {
    var _reward_list, _receivedNum, i;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 142, bytecode pc 38
        (_reward_list = this.m_modelEvent.m_reward_list);
        // source line 143, bytecode pc 43
        (_receivedNum = 0);
        // source line 145, bytecode pc 48
        (i = 0);
        while ((i < _reward_list.length)) {
            if (_reward_list[i].status.is_received) {
                // source line 147, bytecode pc 91
                _receivedNum++;
            }
            // source line 145, bytecode pc 106
            i++;
        }
        if ((_receivedNum == _reward_list.length)) {
            if (mStrId) {
                // source line 155, bytecode pc 207
                xs.Views.Mgr.showToast(xs.Tools.String.createString(mStrId));
            } else {
                // source line 157, bytecode pc 272
                xs.Views.Mgr.showToast(xs.Tools.String.createString("str_party_jishenjiang_tishi"));
            }
            // source line 160, bytecode pc 274
            return true;
        }
    }
    // source line 164, bytecode pc 276
    return false;
},
    _initIndex: function() {
    var _reward_list, _receivedNum, i;
    // source line 171, bytecode pc 14
    (_reward_list = this.m_modelEvent.m_reward_list);
    // source line 172, bytecode pc 53
    (this.m_pageNum = Math.ceil((_reward_list.length / this.m_iconNum)));
    // source line 173, bytecode pc 59
    (_receivedNum = -1);
    // source line 175, bytecode pc 64
    (i = 0);
    while ((i < _reward_list.length)) {
        if (_reward_list[i].status.is_received) {
            // source line 177, bytecode pc 107
            _receivedNum++;
        }
        // source line 175, bytecode pc 122
        i++;
    }
    // source line 180, bytecode pc 166
    (this.m_signInNum = ((_receivedNum < 0) ? 0 : _receivedNum));
    // source line 184, bytecode pc 203
    (this.m_pageIndex = Math.floor((this.m_signInNum / this.m_iconNum)));
    if (((((_receivedNum + 1) % this.m_iconNum) == 0) && ((this.m_signInNum != 0) && (_receivedNum < (_reward_list.length - 1))))) {
        // source line 192, bytecode pc 271
        (this.m_pageIndex = (this.m_pageIndex + 1));
    }
},
    _nextClick: function() {
    // source line 201, bytecode pc 14
    (this.m_pageIndex = (this.m_pageIndex + 1));
    if ((this.m_pageIndex > (this.m_pageNum - 1))) {
        // source line 203, bytecode pc 49
        (this.m_pageIndex = (this.m_pageNum - 1));
    }
    // source line 205, bytecode pc 62
    this.updateSwapBtn();
    // source line 206, bytecode pc 75
    this._fresh_rewards();
},
    _lastClick: function() {
    // source line 211, bytecode pc 14
    (this.m_pageIndex = (this.m_pageIndex - 1));
    if ((this.m_pageIndex < 0)) {
        // source line 213, bytecode pc 35
        (this.m_pageIndex = 0);
    }
    // source line 215, bytecode pc 48
    this.updateSwapBtn();
    // source line 216, bytecode pc 61
    this._fresh_rewards();
},
    updateSwapBtn: function() {
    // source line 221, bytecode pc 19
    this.m_lastBtn.setVisible(true);
    // source line 222, bytecode pc 39
    this.m_nextBtn.setVisible(true);
    // source line 223, bytecode pc 59
    this._arm_left.setVisible(true);
    // source line 224, bytecode pc 79
    this._arm_right.setVisible(true);
    if ((this.m_pageIndex === 0)) {
        // source line 226, bytecode pc 112
        this.m_lastBtn.setVisible(false);
        // source line 227, bytecode pc 132
        this._arm_left.setVisible(false);
    }
    if ((this.m_pageIndex === (this.m_pageNum - 1))) {
        // source line 230, bytecode pc 172
        this.m_nextBtn.setVisible(false);
        // source line 231, bytecode pc 192
        this._arm_right.setVisible(false);
    }
},
    onBtnConfirmClickCallBack: function() {
    var _instance_id;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 239, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_129"));
        }
        // source line 242, bytecode pc 103
        return void 0;
    }
    // source line 245, bytecode pc 124
    (_instance_id = this.m_modelEvent.getInstanceId());
    // source line 277, bytecode pc 191
    xs.Tools.Net.requestPartyReceive({ instance_id: _instance_id, forcepush: true }, function(data) {
    var _tmpModelEvent, _jsonParty, i, _jsonEvent, _modelNew;
    // source line 252, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_128"));
    // source line 256, bytecode pc 69
    (_tmpModelEvent = this.m_modelEvent);
    // source line 259, bytecode pc 81
    (_jsonParty = data.activity_list);
    // source line 261, bytecode pc 86
    (i = 0);
    while ((i < _jsonParty.length)) {
        // source line 262, bytecode pc 103
        (_jsonEvent = _jsonParty[i]);
        if (_tmpModelEvent.isSameInstance(_jsonEvent.instance_id)) {
            // source line 269, bytecode pc 165
            (_modelNew = xs.Models.PartyEventBase.createWithJson(_jsonEvent));
            // source line 271, bytecode pc 182
            this.reloadData(_modelNew);
            break;
        }
        // source line 261, bytecode pc 202
        i++;
    }
    // source line 276, bytecode pc 262
    xs.Tools.Net.getInstance().UseItemSuccess(data);
}.bind(this));
},
    onEnterTransitionDidFinish: function() {
    // source line 307, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 317, bytecode pc 12
    this._super();
},
    callfunc_push_notify: function() {
},
    _fresh_btn: function() {
    if (this.m_modelEvent.isReceiveAble()) {
        // source line 329, bytecode pc 41
        this.m_btnConfirm.setEnabled(true);
    } else {
        // source line 332, bytecode pc 66
        this.m_btnConfirm.setEnabled(false);
    }
},
    _fresh_info: function() {
    var _cur, _max;
    // source line 338, bytecode pc 20
    (_cur = this.m_modelEvent.getRewordsNumOfReceived());
    // source line 339, bytecode pc 41
    (_max = this.m_modelEvent.getRewordsNum());
    // source line 341, bytecode pc 94
    this.m_labelInfo.setString(0, xs.Tools.String.createString("auto_name_100"));
    // source line 342, bytecode pc 128
    this.m_labelInfo.setString(1, ((_cur + "/") + _max));
    // source line 343, bytecode pc 182
    this.m_labelInfo.setString(2, xs.Tools.String.createString("auto_name_131"));
},
    _fresh_rewards: function() {
    var i, _tmpView, _modeNum, _modelEvent, _Maxnum, _tmpNode, _modelWrapped, _labelExt, _btn, pos;
    // source line 372, bytecode pc 4
    (i = 0);
    while ((i < 8)) {
        // source line 373, bytecode pc 24
        (_tmpView = this.m_iconAwards[i]);
        // source line 374, bytecode pc 45
        (_modeNum = (i + (this.m_pageIndex * this.m_iconNum)));
        // source line 375, bytecode pc 55
        (_modelEvent = this.m_modelEvent);
        // source line 377, bytecode pc 73
        (_Maxnum = _modelEvent.getRewordsNum());
        if ((typeof(_tmpView) != "undefined")) {
            if (((_modeNum < _Maxnum) && (i < this.m_iconNum))) {
                // source line 384, bytecode pc 144
                (_tmpNode = this.m_ccb.getChildByTag((10 + i)));
                // source line 385, bytecode pc 161
                _tmpView.setVisible(true);
                // source line 386, bytecode pc 178
                _tmpView.removeFromParent(true);
                // source line 387, bytecode pc 198
                (_modelWrapped = this._createModelWrappedByIdx(_modeNum));
                if (xs.Utils.isEmpty(_modelWrapped)) {
                    // source line 389, bytecode pc 230
                    return void 0;
                }
                // source line 393, bytecode pc 276
                (this.m_iconAwards[i] = xs.Views.Icon.IconWrappedWithLabel.create(_modelWrapped));
                // source line 397, bytecode pc 296
                (_labelExt = this._createLabelExtTitle(_modelWrapped));
                // source line 398, bytecode pc 322
                _labelExt.setAnchorPoint(xs.ap_c);
                // source line 401, bytecode pc 348
                this.m_iconAwards[i].setNodeTitle(_labelExt);
                // source line 403, bytecode pc 373
                (_btn = this.m_iconAwards[i].getViewOri());
                // source line 411, bytecode pc 431
                _btn.setOnClickCallBack(function() {
    if ((this.model.getItemType() === xs.Models.ItemType_Gift)) {
        // source line 408, bytecode pc 88
        xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", this.model.getId());
    }
}.bind({ model: _modelWrapped.getModelOri() }));
                // source line 416, bytecode pc 449
                (pos = _tmpNode.getPosition());
                // source line 417, bytecode pc 475
                this.m_iconAwards[i].setPosition(pos);
                // source line 418, bytecode pc 515
                _tmpNode.getParent().addChild(this.m_iconAwards[i], 3);
            } else {
                // source line 421, bytecode pc 537
                _tmpView.setVisible(false);
            }
        }
        // source line 372, bytecode pc 552
        i++;
    }
    if (this.m_baseTouchPriority) {
        // source line 428, bytecode pc 580
        (i = 0);
        while ((i < this.m_iconAwards.length)) {
            // source line 429, bytecode pc 600
            (_tmpView = this.m_iconAwards[i]);
            if ((typeof(_tmpView) != "undefined")) {
                // source line 432, bytecode pc 650
                _tmpView.getViewOri().setTouchPriority((this.m_baseTouchPriority - 1));
            }
            // source line 428, bytecode pc 665
            i++;
        }
    }
},
    reloadData: function(modelEvent) {
    // source line 444, bytecode pc 9
    (this.m_modelEvent = modelEvent);
    // source line 446, bytecode pc 22
    this._freshAll();
},
    _freshAll: function() {
    // source line 451, bytecode pc 18
    this.log("_freshAll");
    // source line 454, bytecode pc 31
    this._fresh_btn();
    // source line 457, bytecode pc 44
    this._fresh_info();
    // source line 460, bytecode pc 57
    this._initIndex();
    // source line 463, bytecode pc 70
    this._fresh_rewards();
    // source line 466, bytecode pc 83
    this.updateSwapBtn();
},
    setBaseTouchPriority: function(priority) {
    var i, _tmpView;
    // source line 475, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 476, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 478, bytecode pc 56
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 479, bytecode pc 83
    this.m_btnConfirm.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 482, bytecode pc 88
    (i = 0);
    while ((i < this.m_iconAwards.length)) {
        // source line 483, bytecode pc 108
        (_tmpView = this.m_iconAwards[i]);
        if ((typeof(_tmpView) != "undefined")) {
            // source line 486, bytecode pc 158
            _tmpView.getViewOri().setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 482, bytecode pc 173
        i++;
    }
    if (this.m_lastBtn) {
        // source line 492, bytecode pc 233
        this.m_lastBtn.setTouchPriority((this.m_baseTouchPriority - 2));
    }
    if (this.m_nextBtn) {
        // source line 495, bytecode pc 272
        this.m_nextBtn.setTouchPriority((this.m_baseTouchPriority - 2));
    }
},
    _createModelWrappedByIdx: function(idx) {
    var _json, _dataExt, _modelWrapped;
    // source line 504, bytecode pc 24
    (_json = this.m_modelEvent.getRewordByIdx(idx));
    // source line 508, bytecode pc 53
    (_dataExt = { status: _json.status, isNextReward: false });
    // source line 511, bytecode pc 83
    (_dataExt.isNextReward = this.m_modelEvent.isNextRewardIdx(idx));
    // source line 516, bytecode pc 153
    (_modelWrapped = xs.Models.DataWrapped.create(xs.Tools.Model.createModel(_json.object), _dataExt));
    // source line 519, bytecode pc 157
    return _modelWrapped;
},
    _initContent: function() {
    var _modelEvent, _num, i, _tmpNode, _modelWrapped, _btn, pos;
    // source line 526, bytecode pc 11
    (this.m_iconAwards = []);
    // source line 528, bytecode pc 21
    (_modelEvent = this.m_modelEvent);
    // source line 530, bytecode pc 39
    (_num = _modelEvent.getRewordsNum());
    // source line 532, bytecode pc 44
    (i = 0);
    while ((i < 8)) {
        // source line 533, bytecode pc 78
        (_tmpNode = this.m_ccb.getChildByTag((10 + i)));
        // source line 534, bytecode pc 95
        _tmpNode.setVisible(false);
        if (((i >= _num) || (i >= this.m_iconNum))) {
        } else {
            // source line 540, bytecode pc 148
            (_modelWrapped = this._createModelWrappedByIdx(i));
            // source line 543, bytecode pc 194
            (this.m_iconAwards[i] = xs.Views.Icon.IconWrappedWithLabel.create(_modelWrapped));
            // source line 547, bytecode pc 219
            (_btn = this.m_iconAwards[i].getViewOri());
            // source line 554, bytecode pc 277
            _btn.setOnClickCallBack(function() {
    if ((this.model.getItemType() === xs.Models.ItemType_Gift)) {
        // source line 551, bytecode pc 88
        xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", this.model.getId());
    }
}.bind({ model: _modelWrapped.getModelOri() }));
            // source line 557, bytecode pc 295
            (pos = _tmpNode.getPosition());
            // source line 558, bytecode pc 321
            this.m_iconAwards[i].setPosition(pos);
            // source line 559, bytecode pc 361
            _tmpNode.getParent().addChild(this.m_iconAwards[i], 3);
        }
        // source line 532, bytecode pc 376
        i++;
    }
}
})));
// source line 620, bytecode pc 944
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Level = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Level || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", stringId: "auto_name_132" },
    CCB_Cfg_LeftSprite: {
        tag: 30,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 1 ]
    },
    name: "PartyDialogCmn_Level",
    init: function(param) {
    var m_pos;
    if (!this._super(param)) {
        // source line 584, bytecode pc 23
        return false;
    }
    // source line 587, bytecode pc 52
    xs.log("PartyDialog_Level", "init");
    // source line 589, bytecode pc 103
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_133"));
    // source line 591, bytecode pc 154
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 594, bytecode pc 197
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 597, bytecode pc 218
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 598, bytecode pc 277
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), (m_pos.y + 21)));
    // source line 600, bytecode pc 290
    this._freshAll();
    // source line 614, bytecode pc 327
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 608, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_135"));
        }
        // source line 610, bytecode pc 103
        return void 0;
    }
    // source line 613, bytecode pc 116
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 617, bytecode pc 329
    return true;
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 622, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 623, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 625, bytecode pc 93
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 626, bytecode pc 120
    _labelExt.setString(0, ("" + _tmpParam));
    // source line 627, bytecode pc 170
    _labelExt.setString(1, xs.Tools.String.createString("auto_name_136"));
    // source line 629, bytecode pc 174
    return _labelExt;
}
})));
// source line 681, bytecode pc 1206
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Count = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Count || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", stringId: "auto_name_137" },
    CCB_Cfg_LeftSprite: {
        tag: 31,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 2 ]
    },
    name: "PartyDialogCmn_Count",
    init: function(param) {
    var m_pos;
    if (!this._super(param)) {
        // source line 645, bytecode pc 23
        return false;
    }
    // source line 648, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_138"));
    // source line 650, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 655, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 656, bytecode pc 189
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 657, bytecode pc 248
    this.m_spriteLeft.setPosition(cc.p((m_pos.x - 13), (m_pos.y - 8)));
    // source line 673, bytecode pc 285
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 666, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
        }
    } else {
        // source line 671, bytecode pc 119
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 676, bytecode pc 298
    this._freshAll();
    // source line 678, bytecode pc 300
    return true;
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 683, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 684, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 686, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 687, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_141"));
    // source line 688, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 689, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 691, bytecode pc 234
    return _labelExt;
}
})));
// source line 735, bytecode pc 1468
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Continuous = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Continuous || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 3 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", stringId: "auto_name_142" },
    name: "PartyDialogCmn_Continuous",
    init: function(param) {
    if (!this._super(param)) {
        // source line 704, bytecode pc 23
        return false;
    }
    // source line 707, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_143"));
    // source line 709, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 713, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 727, bytecode pc 205
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 720, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
        // source line 723, bytecode pc 85
        return void 0;
    }
    // source line 726, bytecode pc 98
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 730, bytecode pc 218
    this._freshAll();
    // source line 732, bytecode pc 220
    return true;
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 737, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 738, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 740, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 741, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_144"));
    // source line 742, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 743, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 745, bytecode pc 234
    return _labelExt;
}
})));
// source line 853, bytecode pc 1750
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Recharge = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Recharge || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
        // source line 759, bytecode pc 23
        return false;
    }
    // source line 762, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_145"));
    // source line 764, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 768, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 769, bytecode pc 181
    this._freshAll();
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 772, bytecode pc 324
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 773, bytecode pc 346
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 775, bytecode pc 427
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 777, bytecode pc 448
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 778, bytecode pc 504
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 779, bytecode pc 525
    (position = this.m_labelSubTitle.getPosition());
    // source line 780, bytecode pc 546
    (parent = this.m_labelSubTitle.getParent());
    // source line 781, bytecode pc 608
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 782, bytecode pc 661
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 783, bytecode pc 687
    this._labelExt.setString(1, "");
    // source line 784, bytecode pc 716
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 785, bytecode pc 738
    parent.addChild(this._labelExt);
    // source line 786, bytecode pc 760
    this._labelExt.setPosition(position);
    // source line 787, bytecode pc 773
    this.onCountDown();
    // source line 818, bytecode pc 810
    this.m_btnConfirm.setOnClickCallBack(function() {
    var dialog;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 803, bytecode pc 198
            (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_115"),
    leftCB: function() {
    // source line 801, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 804, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 805, bytecode pc 59
    xs.Views.Mgr.showDialogByName("ChargeDialog");
}
}));
            // source line 807, bytecode pc 216
            (dialog = dialog.getRealDialog());
            // source line 808, bytecode pc 264
            dialog.setContentText(xs.Tools.String.createString("auto_name_147"));
            // source line 809, bytecode pc 312
            dialog.setTitleByString(xs.Tools.String.createString("auto_name_148"));
        }
    } else {
        // source line 815, bytecode pc 330
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 821, bytecode pc 812
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 825, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 828, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 836, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 837, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 838, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 839, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 840, bytecode pc 125
        return void 0;
    }
    // source line 843, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 844, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 845, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 849, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 851, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 855, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 856, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 858, bytecode pc 93
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_dayNomb", "LS_huodong_dayNomb" ]));
    // source line 859, bytecode pc 116
    _labelExt.setString(0, "Vip");
    // source line 860, bytecode pc 143
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 861, bytecode pc 147
    return _labelExt;
}
})));
// source line 968, bytecode pc 2032
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Collect = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Collect || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
        // source line 875, bytecode pc 23
        return false;
    }
    // source line 878, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_150"));
    // source line 880, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 884, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 885, bytecode pc 181
    this._freshAll();
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 888, bytecode pc 324
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 889, bytecode pc 346
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 891, bytecode pc 427
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 893, bytecode pc 448
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 894, bytecode pc 507
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 27), (m_pos.y + 10)));
    // source line 895, bytecode pc 528
    (position = this.m_labelSubTitle.getPosition());
    // source line 896, bytecode pc 549
    (parent = this.m_labelSubTitle.getParent());
    // source line 897, bytecode pc 611
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 898, bytecode pc 664
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 899, bytecode pc 690
    this._labelExt.setString(1, "");
    // source line 900, bytecode pc 719
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 901, bytecode pc 741
    parent.addChild(this._labelExt);
    // source line 902, bytecode pc 763
    this._labelExt.setPosition(position);
    // source line 903, bytecode pc 776
    this.onCountDown();
    // source line 933, bytecode pc 813
    this.m_btnConfirm.setOnClickCallBack(function() {
    var dialog;
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 921, bytecode pc 198
            (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_151"),
    leftCB: function() {
    // source line 919, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 922, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
}));
            // source line 924, bytecode pc 216
            (dialog = dialog.getRealDialog());
            // source line 925, bytecode pc 264
            dialog.setContentText(xs.Tools.String.createString("auto_name_152"));
            // source line 926, bytecode pc 312
            dialog.setTitleByString(xs.Tools.String.createString("auto_name_153"));
        }
    } else {
        // source line 931, bytecode pc 330
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 936, bytecode pc 815
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 940, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 943, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 951, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 952, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 953, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 954, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 955, bytecode pc 125
        return void 0;
    }
    // source line 958, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 959, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 960, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 964, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 966, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 970, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 971, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 973, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 974, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_154"));
    // source line 975, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 976, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_155"));
    // source line 978, bytecode pc 234
    return _labelExt;
}
})));
// source line 1068, bytecode pc 2314
(xs.Scene.Party.PartyDialog.AddConsume = (xs.Scene.Party.PartyDialog.AddConsume || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
    if (!this._super(param)) {
        // source line 991, bytecode pc 23
        return false;
    }
    // source line 994, bytecode pc 74
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_156"));
    // source line 996, bytecode pc 125
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1000, bytecode pc 168
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1001, bytecode pc 181
    this._freshAll();
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1004, bytecode pc 324
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1005, bytecode pc 346
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1007, bytecode pc 427
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1009, bytecode pc 448
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1010, bytecode pc 504
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 1011, bytecode pc 525
    (position = this.m_labelSubTitle.getPosition());
    // source line 1012, bytecode pc 546
    (parent = this.m_labelSubTitle.getParent());
    // source line 1013, bytecode pc 608
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1014, bytecode pc 661
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_157"));
    // source line 1015, bytecode pc 687
    this._labelExt.setString(1, "");
    // source line 1016, bytecode pc 716
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1017, bytecode pc 738
    parent.addChild(this._labelExt);
    // source line 1018, bytecode pc 760
    this._labelExt.setPosition(position);
    // source line 1019, bytecode pc 773
    this.onCountDown();
    // source line 1020, bytecode pc 794
    (parent = this.m_labelInfo.getParent());
    // source line 1021, bytecode pc 814
    this.m_labelInfo.setVisible(false);
    // source line 1022, bytecode pc 883
    (label = xs.Factorys.Label.createByStyleIdWithString("LS_cardWujiangName", xs.Tools.String.createString("auto_name_158")));
    // source line 1023, bytecode pc 904
    (pos = this.m_labelInfo.getPosition());
    // source line 1024, bytecode pc 960
    label.setPosition(cc.p((pos.x - 26), (pos.y + 23)));
    // source line 1026, bytecode pc 1006
    (_png = xs.Factorys.Sprite.create("icon_yuanBao", "Cmn01", null, true));
    // source line 1027, bytecode pc 1062
    _png.setPosition(cc.p((pos.x - 80), (pos.y - 10)));
    // source line 1028, bytecode pc 1112
    (label2 = xs.Factorys.Label.createByStyleIdWithString("LS_Lv", param.modelEvent.instance_addConsume));
    // source line 1029, bytecode pc 1145
    label2.setPosition(this.m_labelInfo.getPosition());
    // source line 1030, bytecode pc 1201
    label2.setPosition(cc.p((pos.x - 50), (pos.y - 10)));
    // source line 1031, bytecode pc 1241
    label2.setAnchorPoint(cc.p(0, 0.5));
    // source line 1033, bytecode pc 1260
    parent.addChild(label);
    // source line 1034, bytecode pc 1279
    parent.addChild(label2);
    // source line 1035, bytecode pc 1298
    parent.addChild(_png);
    // source line 1036, bytecode pc 1300
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1040, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1043, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1051, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1052, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1053, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1054, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1055, bytecode pc 125
        return void 0;
    }
    // source line 1058, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1059, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1060, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1064, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1066, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _png, _labelExt;
    // source line 1070, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1071, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1072, bytecode pc 80
    (_png = xs.Factorys.Sprite.create("icon_yuanBao", "Cmn01", null, true));
    // source line 1073, bytecode pc 120
    _png.setAnchorPoint(cc.p(0, 0.5));
    // source line 1074, bytecode pc 158
    _png.setContentSize(cc.size(115, 24));
    // source line 1077, bytecode pc 226
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_Lv", "LS_huodong_day" ]));
    // source line 1078, bytecode pc 249
    _labelExt.setString(0, "");
    // source line 1079, bytecode pc 276
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1080, bytecode pc 300
    _labelExt.setString(2, "");
    // source line 1081, bytecode pc 319
    _png.addChild(_labelExt);
    // source line 1082, bytecode pc 359
    _labelExt.setAnchorPoint(cc.p(0, 0.5));
    // source line 1083, bytecode pc 397
    _labelExt.setPosition(cc.p(37, 11));
    // source line 1084, bytecode pc 424
    xs.dump("xxxxxx", _png);
    // source line 1085, bytecode pc 428
    return _png;
}
})));
// source line 1199, bytecode pc 2565
(xs.Scene.Party.PartyDialog.PartyDialogCmn_presentLuxun = xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
        // source line 1099, bytecode pc 51
        (this.CCB_Cfg_LeftSprite.params = [ 14 ]);
    } else {
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_BingFengHaoLi)) {
            // source line 1101, bytecode pc 108
            (this.CCB_Cfg_LeftSprite.params = [ 16 ]);
        } else {
            // source line 1103, bytecode pc 136
            (this.CCB_Cfg_LeftSprite.params = [ 8 ]);
        }
    }
    if (!this._super(param)) {
        // source line 1107, bytecode pc 160
        return false;
    }
    // source line 1112, bytecode pc 211
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1117, bytecode pc 254
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1119, bytecode pc 275
    (m_pos = this.m_spriteLeft.getPosition());
    if ((param.modelEvent.instance_bg == xs.Constant_PartyType_SongMoWuJaing)) {
        // source line 1121, bytecode pc 355
        this.m_labelTitle.setString(xs.Tools.String.createString("party_songMoJiangHeadStr"));
        // source line 1122, bytecode pc 411
        this.m_spriteLeft.setPosition(cc.p(m_pos.x, (m_pos.y + 7)));
    } else {
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_BingFengHaoLi)) {
            // source line 1124, bytecode pc 496
            this.m_labelTitle.setString(xs.Tools.String.createString("party_songbinfenghaoli"));
            // source line 1125, bytecode pc 555
            this.m_spriteLeft.setPosition(cc.p((m_pos.x - 35), (m_pos.y + 20)));
        } else {
            // source line 1128, bytecode pc 611
            this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_159"));
            // source line 1129, bytecode pc 667
            this.m_spriteLeft.setPosition(cc.p(m_pos.x, (m_pos.y + 17)));
        }
    }
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1133, bytecode pc 810
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1134, bytecode pc 832
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1136, bytecode pc 913
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1138, bytecode pc 934
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1139, bytecode pc 990
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 1140, bytecode pc 1011
    (position = this.m_labelSubTitle.getPosition());
    // source line 1141, bytecode pc 1032
    (parent = this.m_labelSubTitle.getParent());
    // source line 1142, bytecode pc 1094
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1143, bytecode pc 1147
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_157"));
    // source line 1144, bytecode pc 1173
    this._labelExt.setString(1, "");
    // source line 1145, bytecode pc 1202
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1146, bytecode pc 1224
    parent.addChild(this._labelExt);
    // source line 1147, bytecode pc 1246
    this._labelExt.setPosition(position);
    // source line 1148, bytecode pc 1259
    this.onCountDown();
    // source line 1151, bytecode pc 1272
    this._freshAll();
    // source line 1153, bytecode pc 1293
    (parent = this.m_labelInfo.getParent());
    // source line 1154, bytecode pc 1314
    (pos = this.m_labelInfo.getPosition());
    // source line 1155, bytecode pc 1370
    this.m_labelInfo.setPosition(cc.p(pos.x, (pos.y - 15)));
    // source line 1156, bytecode pc 1429
    (label = xs.Views.Label.LabelExt.createWithStyles([ "LS_cardWujiangName", "LS_popUI5" ]));
    // source line 1157, bytecode pc 1479
    label.setString(0, xs.Tools.String.createString("auto_name_160"));
    // source line 1158, bytecode pc 1558
    label.setString(1, (parseInt(param.modelEvent.recharge) + xs.Tools.String.createString("auto_name_161")));
    // source line 1159, bytecode pc 1584
    label.setAnchorPoint(xs.ap_c);
    // source line 1160, bytecode pc 1637
    label.setPosition(cc.p(pos.x, (pos.y + 14)));
    // source line 1161, bytecode pc 1656
    parent.addChild(label);
    // source line 1165, bytecode pc 1658
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1170, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1173, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1181, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1182, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1183, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1184, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1185, bytecode pc 125
        return void 0;
    }
    // source line 1188, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1189, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1190, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1194, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1196, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, mYuan, _labelExt;
    // source line 1201, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1202, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1204, bytecode pc 70
    (mYuan = xs.Tools.String.createString("LuxunParty_dollar"));
    if ((xsc.Tools.ProductSys.getArea() == xsc.Const_Area_TW)) {
        // source line 1206, bytecode pc 121
        (mYuan = "");
    }
    // source line 1209, bytecode pc 189
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1210, bytecode pc 239
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_162"));
    // source line 1211, bytecode pc 266
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1212, bytecode pc 288
    _labelExt.setString(2, mYuan);
    // source line 1214, bytecode pc 292
    return _labelExt;
}
}));
// source line 1335, bytecode pc 2857
(xs.Scene.Party.PartyDialog.PartyDialogCmn_MonthSignin = (xs.Scene.Party.PartyDialog.PartyDialogCmn_MonthSignin || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
        // source line 1227, bytecode pc 23
        return false;
    }
    // source line 1230, bytecode pc 32
    (this.m_iconNum = 8);
    // source line 1234, bytecode pc 40
    (this.m_pageIndex = 0);
    // source line 1235, bytecode pc 49
    (this.m_pageNum = 3);
    // source line 1236, bytecode pc 57
    (this.m_signInNum = 0);
    // source line 1238, bytecode pc 108
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_163"));
    // source line 1240, bytecode pc 159
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1245, bytecode pc 202
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1246, bytecode pc 253
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_164"));
    // source line 1250, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1251, bytecode pc 330
    this.m_spriteLeft.setPosition(cc.p(m_pos.x, (m_pos.y + 41)));
    // source line 1266, bytecode pc 367
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 1258, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
        }
        // source line 1260, bytecode pc 103
        return void 0;
    }
    // source line 1263, bytecode pc 158
    xs.Views.Mgr.showDialogByName("SelectSgsChannelDialog", { type: xs.Constant_Sgs_OL });
}.bind(this));
    // source line 1270, bytecode pc 380
    this._freshAll();
    // source line 1272, bytecode pc 382
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 1277, bytecode pc 12
    this._super();
    // source line 1278, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onBtnAwardCallBack, xs.Constant_Notify_Event_GetChannelAward);
},
    onExitTransitionDidStart: function() {
    // source line 1283, bytecode pc 12
    this._super();
    // source line 1284, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GetChannelAward);
},
    onBtnAwardCallBack: function(param) {
    var _instance_id;
    // source line 1288, bytecode pc 20
    (_instance_id = this.m_modelEvent.getInstanceId());
    // source line 1327, bytecode pc 124
    xs.Tools.Net.requestPartyReceive({
    instance_id: _instance_id,
    extra_param: { cooperator: param.cooperator, cooperator_server_id: param.cooperator_server_id },
    forcepush: true
}, function(data) {
    var _tmpModelEvent, _jsonParty, i, _jsonEvent, _modelNew;
    // source line 1301, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_128"));
    // source line 1305, bytecode pc 69
    (_tmpModelEvent = this.m_modelEvent);
    // source line 1308, bytecode pc 81
    (_jsonParty = data.activity_list);
    // source line 1310, bytecode pc 86
    (i = 0);
    while ((i < _jsonParty.length)) {
        // source line 1311, bytecode pc 103
        (_jsonEvent = _jsonParty[i]);
        if (_tmpModelEvent.isSameInstance(_jsonEvent.instance_id)) {
            // source line 1318, bytecode pc 165
            (_modelNew = xs.Models.PartyEventBase.createWithJson(_jsonEvent));
            // source line 1320, bytecode pc 182
            this.reloadData(_modelNew);
            break;
        }
        // source line 1310, bytecode pc 202
        i++;
    }
    // source line 1325, bytecode pc 233
    this._initIndex();
}.bind(this));
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1337, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1338, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1340, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1341, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_123"));
    // source line 1342, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1343, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 1345, bytecode pc 234
    return _labelExt;
}
})));
// source line 1417, bytecode pc 3139
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Level_new = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Level_new || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
        // source line 1358, bytecode pc 23
        return false;
    }
    // source line 1363, bytecode pc 31
    (this.m_pageIndex = 0);
    // source line 1364, bytecode pc 40
    (this.m_pageNum = 3);
    // source line 1365, bytecode pc 48
    (this.m_signInNum = 0);
    // source line 1366, bytecode pc 57
    (this.m_iconNum = 7);
    // source line 1369, bytecode pc 108
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1374, bytecode pc 151
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1375, bytecode pc 202
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_165"));
    // source line 1376, bytecode pc 253
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_166"));
    // source line 1380, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1381, bytecode pc 333
    this.m_spriteLeft.setPosition(cc.p((m_pos.x - 10), (m_pos.y - 8)));
    // source line 1396, bytecode pc 370
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        if (!this.isMaxNumber()) {
            // source line 1388, bytecode pc 101
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_135"));
        }
        // source line 1390, bytecode pc 103
        return void 0;
    }
    // source line 1395, bytecode pc 116
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 1400, bytecode pc 383
    this._freshAll();
    // source line 1402, bytecode pc 385
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 1407, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 1412, bytecode pc 12
    this._super();
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1419, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1420, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1422, bytecode pc 93
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1423, bytecode pc 120
    _labelExt.setString(0, ("" + _tmpParam));
    // source line 1424, bytecode pc 170
    _labelExt.setString(1, xs.Tools.String.createString("auto_name_136"));
    // source line 1426, bytecode pc 174
    return _labelExt;
}
})));
// source line 1505, bytecode pc 3421
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Count_new = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Count_new || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
        // source line 1441, bytecode pc 23
        return false;
    }
    // source line 1446, bytecode pc 31
    (this.m_pageIndex = 0);
    // source line 1447, bytecode pc 40
    (this.m_pageNum = 3);
    // source line 1448, bytecode pc 48
    (this.m_signInNum = 0);
    // source line 1449, bytecode pc 57
    (this.m_iconNum = 7);
    // source line 1452, bytecode pc 108
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1457, bytecode pc 151
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1458, bytecode pc 202
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_167"));
    // source line 1459, bytecode pc 253
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_168"));
    // source line 1464, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1465, bytecode pc 333
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 10), (m_pos.y + 10)));
    // source line 1484, bytecode pc 370
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 1474, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
    } else {
        // source line 1478, bytecode pc 101
        this.onBtnConfirmClickCallBack();
    }
}.bind(this));
    // source line 1488, bytecode pc 383
    this._freshAll();
    // source line 1490, bytecode pc 385
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 1495, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 1500, bytecode pc 12
    this._super();
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1507, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1508, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1510, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1511, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_141"));
    // source line 1512, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1513, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 1515, bytecode pc 234
    return _labelExt;
}
})));
// source line 1594, bytecode pc 3746
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Continuous_new = (xs.Scene.Party.PartyDialog.PartyDialogCmn_Continuous_new || xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
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
        // source line 1535, bytecode pc 23
        return false;
    }
    // source line 1540, bytecode pc 31
    (this.m_pageIndex = 0);
    // source line 1541, bytecode pc 40
    (this.m_pageNum = 3);
    // source line 1542, bytecode pc 48
    (this.m_signInNum = 0);
    // source line 1543, bytecode pc 57
    (this.m_iconNum = 7);
    // source line 1546, bytecode pc 108
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1551, bytecode pc 151
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1552, bytecode pc 202
    this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_169"));
    // source line 1553, bytecode pc 253
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_170"));
    // source line 1558, bytecode pc 274
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1559, bytecode pc 333
    this.m_spriteLeft.setPosition(cc.p((m_pos.x - 10), (m_pos.y - 6)));
    // source line 1574, bytecode pc 370
    this.m_btnConfirm.setOnClickCallBack(function() {
    if ((this.m_modelEvent.isReceiveAble() === false)) {
        // source line 1566, bytecode pc 83
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_140"));
        // source line 1568, bytecode pc 85
        return void 0;
    }
    // source line 1573, bytecode pc 98
    this.onBtnConfirmClickCallBack();
}.bind(this));
    // source line 1578, bytecode pc 383
    this._freshAll();
    // source line 1580, bytecode pc 385
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 1585, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 1590, bytecode pc 12
    this._super();
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1596, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1597, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1599, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1600, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("auto_name_144"));
    // source line 1601, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1602, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("auto_name_40"));
    // source line 1604, bytecode pc 234
    return _labelExt;
}
})));
// source line 1732, bytecode pc 4248
(xs.Scene.Party.PartyDialog.PartyDialogEat = (xs.Scene.Party.PartyDialog.PartyDialogEat || xs.Views.HungerLayer.extend({
    name: "PartyDialogEat",
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelTitle", id: "LS_huodong_title" },
        { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" },
        { tag: 3, type: "bs", name: "m_btnConfirm", id: "BS_Party_Confirm" },
        {
            tag: 20,
            type: "ls",
            name: "m_labelText",
            id: "LS_mainUI3",
            string: xs.Tools.String.createString("auto_name_171")
        },
        { tag: 6, type: "ls", name: "m_labelInfo", id: "LS_cardWujiangName" },
        { tag: 10, name: "m_food0" },
        { tag: 11, name: "m_food1" },
        { tag: 12, name: "m_food2" }
    ],
    ctor: function() {
    // source line 1629, bytecode pc 12
    this._super();
    // source line 1630, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    if (!this._super(param)) {
        // source line 1635, bytecode pc 23
        return false;
    }
    // source line 1638, bytecode pc 31
    (this.m_labelTitle = null);
    // source line 1639, bytecode pc 39
    (this.m_labelText = null);
    // source line 1640, bytecode pc 47
    (this.m_btnExit = null);
    // source line 1641, bytecode pc 55
    (this.m_btnConfirm = null);
    // source line 1642, bytecode pc 63
    (this.m_labelInfo = null);
    // source line 1643, bytecode pc 71
    (this.m_food0 = null);
    // source line 1644, bytecode pc 79
    (this.m_food1 = null);
    // source line 1645, bytecode pc 87
    (this.m_food2 = null);
    // source line 1648, bytecode pc 138
    (this.m_ccb = xs.ccb_reader.load(xs.Cfg.CCBI.Party_Eat, this));
    // source line 1649, bytecode pc 167
    this.m_ccb.setAnchorPoint(xs.ap_c);
    // source line 1652, bytecode pc 210
    this.m_ccb.setContentSize(cc._size(932, 619));
    // source line 1655, bytecode pc 263
    xs.Utils.Node.attachNodes(this, this.m_ccb, { desc: "c" });
    // source line 1659, bytecode pc 306
    xs.Utils.UI.replaceCcbByCfg(this.m_ccb, this.CCB_Cfg, this);
    // source line 1665, bytecode pc 343
    this.m_btnExit.setOnClickCallBack(function() {
    // source line 1664, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 1668, bytecode pc 394
    this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_172"));
    // source line 1669, bytecode pc 445
    this.m_labelInfo.setString(xs.Tools.String.createString("auto_name_173"));
    // source line 1670, bytecode pc 496
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_174"));
    // source line 1698, bytecode pc 533
    this.m_btnConfirm.setOnClickCallBack(function() {
    // source line 1696, bytecode pc 77
    xs.Tools.Net.requestPartyReceivePower({ forcepush: true }, function(data) {
    // source line 1680, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_175"));
    // source line 1682, bytecode pc 122
    xs.Profile.GameData.PushInfo.getInstance().getFeastInfo().loadJson(data.timing_power);
    // source line 1684, bytecode pc 135
    this.freshView();
}.bind(this), function(data) {
    // source line 1688, bytecode pc 22
    this.dump("data22", data);
    // source line 1690, bytecode pc 50
    this.log("data2332", data.error_code);
    if ((data.error_code === "e_3002")) {
        // source line 1693, bytecode pc 129
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_176"));
        // source line 1694, bytecode pc 131
        return true;
    }
}.bind(this));
}.bind(this));
    // source line 1700, bytecode pc 553
    this.m_btnConfirm.setEventOnDisable(true);
    // source line 1702, bytecode pc 566
    this.freshView();
    // source line 1706, bytecode pc 568
    return true;
},
    freshView: function() {
    if (xs.Profile.GameData.PushInfo.getInstance().getFeastInfo().isEatAble()) {
        // source line 1712, bytecode pc 77
        this.m_food0.setVisible(true);
        // source line 1713, bytecode pc 97
        this.m_food1.setVisible(true);
        // source line 1714, bytecode pc 117
        this.m_food2.setVisible(true);
        // source line 1716, bytecode pc 137
        this.m_btnConfirm.setEnabled(true);
        // source line 1718, bytecode pc 188
        this.m_labelInfo.setString(xs.Tools.String.createString("auto_name_177"));
    } else {
        // source line 1721, bytecode pc 213
        this.m_food0.setVisible(false);
        // source line 1722, bytecode pc 233
        this.m_food1.setVisible(false);
        // source line 1723, bytecode pc 253
        this.m_food2.setVisible(false);
        // source line 1725, bytecode pc 273
        this.m_btnConfirm.setEnabled(false);
        // source line 1727, bytecode pc 324
        this.m_labelInfo.setString(xs.Tools.String.createString("auto_name_178"));
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 1733, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 1734, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 1736, bytecode pc 56
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 1737, bytecode pc 83
    this.m_btnConfirm.setTouchPriority((this.m_baseTouchPriority - 1));
}
})));
// source line 1849, bytecode pc 4499
(xs.Scene.Party.PartyDialog.PartyDialogCmn_Accumulat_Pay = xs.Scene.Party.PartyDialog.PartyDialogCmn.extend({
    CCB_Cfg_LeftSprite: {
        tag: 32,
        type: "sprite",
        name: "m_spriteLeft",
        id: "HuodongScene01_cmn_left",
        area: "HuodongScene01",
        params: [ 21 ]
    },
    CCB_Cfg_SubTitle: { tag: 3, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
    name: "PartyDialogCmn_Accumulat_Pay",
    init: function(param) {
    var m_pos, position, parent;
    // source line 1748, bytecode pc 26
    xs.log_hsq("PartyDialogCmn_presentLuxun", param);
    if (!this._super(param)) {
        // source line 1759, bytecode pc 50
        return false;
    }
    // source line 1764, bytecode pc 101
    this.m_btnConfirm.setString(xs.Tools.String.createString("auto_name_134"));
    // source line 1769, bytecode pc 144
    xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccb, this.CCB_Cfg_SubTitle, this);
    // source line 1771, bytecode pc 165
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1780, bytecode pc 216
    this.m_labelTitle.setString(xs.Tools.String.createString("HD_Accumulat_Pay_Title"));
    // source line 1781, bytecode pc 269
    this.m_spriteLeft.setPosition(cc.p(m_pos.x, m_pos.y));
    if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(param.mIdx)) {
        // source line 1785, bytecode pc 412
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(param.mIdx) || 0));
        // source line 1786, bytecode pc 434
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 1788, bytecode pc 515
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(param.mIdx) || 0));
    }
    // source line 1790, bytecode pc 536
    (m_pos = this.m_spriteLeft.getPosition());
    // source line 1791, bytecode pc 592
    this.m_spriteLeft.setPosition(cc.p((m_pos.x + 17), m_pos.y));
    // source line 1792, bytecode pc 613
    (position = this.m_labelSubTitle.getPosition());
    // source line 1793, bytecode pc 634
    (parent = this.m_labelSubTitle.getParent());
    // source line 1794, bytecode pc 696
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 1795, bytecode pc 749
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_157"));
    // source line 1796, bytecode pc 775
    this._labelExt.setString(1, "");
    // source line 1797, bytecode pc 804
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 1798, bytecode pc 826
    parent.addChild(this._labelExt);
    // source line 1799, bytecode pc 848
    this._labelExt.setPosition(position);
    // source line 1800, bytecode pc 861
    this.onCountDown();
    // source line 1803, bytecode pc 874
    this._freshAll();
    // source line 1815, bytecode pc 876
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 1820, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 1823, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 1831, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 1832, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 1833, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 1834, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 1835, bytecode pc 125
        return void 0;
    }
    // source line 1838, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 1839, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 1840, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 1844, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 1846, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    _createLabelExtTitle: function(modelWrapped) {
    var _modelWrapped, _tmpParam, _labelExt;
    // source line 1851, bytecode pc 6
    (_modelWrapped = modelWrapped);
    // source line 1852, bytecode pc 34
    (_tmpParam = _modelWrapped.getModelExt().status.condition);
    // source line 1854, bytecode pc 102
    (_labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_huodong_day", "LS_huodong_dayNomb", "LS_huodong_day" ]));
    // source line 1855, bytecode pc 152
    _labelExt.setString(0, xs.Tools.String.createString("HD_Accumulat_Pay_ItemTitle_t"));
    // source line 1856, bytecode pc 179
    _labelExt.setString(1, ("" + _tmpParam));
    // source line 1857, bytecode pc 230
    _labelExt.setString(2, xs.Tools.String.createString("HD_Accumulat_Pay_ItemTitle_end"));
    // source line 1859, bytecode pc 234
    return _labelExt;
}
}));
// source line 1864, bytecode pc 4530
(xs.Scene.Party.PartyDialog.create = function(param) {
    var _ret;
    // source line 1866, bytecode pc 4
    (_ret = null);
    // source line 1867, bytecode pc 31
    xs.dump("param----", param);
    // source line 1868, bytecode pc 74
    xs.log("param+++", param.modelEvent.getPartyEventType());
    // source line 1869, bytecode pc 94
    switch (param.modelEvent.getPartyEventType()) {
        case xs.Constant_PartyType_Level:
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_new)) {
            // source line 1873, bytecode pc 312
            (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Level_new());
        } else {
            // source line 1875, bytecode pc 351
            (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Level());
        }
        break;
        case xs.Constant_PartyType_Count:
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_new)) {
            // source line 1880, bytecode pc 419
            (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Count_new());
        } else {
            // source line 1882, bytecode pc 458
            (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Count());
        }
        break;
        case xs.Constant_PartyType_DailyCheck:
        // source line 1887, bytecode pc 497
        (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Count_new());
        break;
        case xs.Constant_PartyType_Continuous:
        if ((param.modelEvent.instance_bg == xs.Constant_PartyType_new)) {
            // source line 1892, bytecode pc 565
            (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Continuous_new());
        } else {
            // source line 1894, bytecode pc 604
            (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Continuous());
        }
        break;
        case xs.Constant_PartyType_AdvertisementeRechargeGiftsH:
        // source line 1898, bytecode pc 643
        (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Recharge());
        break;
        case xs.Constant_PartyType_AdvertisementCollectGod:
        // source line 1901, bytecode pc 682
        (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Collect());
        break;
        case xs.Constant_PartyType_AddConsume:
        // source line 1904, bytecode pc 721
        (_ret = new xs.Scene.Party.PartyDialog.AddConsume());
        break;
        case xs.Constant_PartyType_PresentLuxun:
        // source line 1907, bytecode pc 760
        (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_presentLuxun());
        break;
        case xs.Constant_PartyType_MonthSignin:
        // source line 1911, bytecode pc 799
        (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_MonthSignin());
        break;
        case xs.Constant_PartyType_Accumulat_Pay:
        // source line 1914, bytecode pc 838
        (_ret = new xs.Scene.Party.PartyDialog.PartyDialogCmn_Accumulat_Pay());
        break;
        default:
        // source line 1917, bytecode pc 866
        this.error("PartyDialog.create", param);
        break;
    }
    // source line 1920, bytecode pc 890
    _ret.init(param);
    // source line 1922, bytecode pc 894
    return _ret;
});
// source line 1925, bytecode pc 4566
(xs.Scene.Party.PartyDialog.PartyDialogEat.create = function(param) {
    var _ret;
    // source line 1926, bytecode pc 33
    (_ret = new xs.Scene.Party.PartyDialog.PartyDialogEat());
    // source line 1927, bytecode pc 52
    _ret.init(param);
    // source line 1928, bytecode pc 56
    return _ret;
});
// source line 1934, bytecode pc 4646
xs.Views.Mgr.registerDialog("PartyDialog", { "class": xs.Scene.Party.PartyDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 1939, bytecode pc 4731
xs.Views.Mgr.registerDialog("PartyDialogEat", { "class": xs.Scene.Party.PartyDialog.PartyDialogEat, styleType: xs.Constant_DlgStyleType_Large });
