// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ActivitiesShow6Icon.js:1
// source line 312, bytecode pc 354
(xs.Views.ActivitiesShow6Icon = cc.Node.extend({
    name: "xs.Views.ActivitiesShow6Icon",
    ccbCfg: [
        { tag: 1, name: "m_party_1" },
        { tag: 2, name: "m_party_2" },
        { tag: 3, name: "m_party_3" },
        { tag: 4, name: "m_party_4" },
        { tag: 5, name: "m_party_5" },
        { tag: 6, name: "m_party_6" }
    ],
    ctor: function() {
    // source line 23, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 29, bytecode pc 19
        return false;
    }
    // source line 32, bytecode pc 70
    (this.node = xs.ccb_reader.load(xs.Cfg.CCBI.ActivitiesShow6Icon, this));
    // source line 33, bytecode pc 109
    this.node.setAnchorPoint(cc.p(0, 0));
    // source line 34, bytecode pc 145
    xs.Utils.Node.attachNodes(this, this.node);
    // source line 35, bytecode pc 188
    xs.Utils.UI.replaceCcbByCfg(this.node, this.ccbCfg, this);
    // source line 37, bytecode pc 190
    return true;
},
    _refresh_event_models: function() {
    // source line 41, bytecode pc 12
    this._getPartyInfo();
    // source line 43, bytecode pc 32
    this._setMainMenuSceneIcon(this.m_event_models);
},
    onEnterTransitionDidFinish: function() {
    // source line 46, bytecode pc 12
    this._super();
    // source line 48, bytecode pc 25
    this.requestAndUpdataEvent();
    // source line 50, bytecode pc 72
    xs.Utils.Notify.addObserver(this, this._refresh_event_models, xs.Constant_Notify_HintChange_All);
    // source line 51, bytecode pc 119
    xs.Utils.Notify.addObserver(this, this._refresh_event_models, xs.Constant_Notify_Event_SlotMachines);
    // source line 52, bytecode pc 166
    xs.Utils.Notify.addObserver(this, this.requestAndUpdataEvent, xs.Constant_Notify_Event_ChargeSucess);
},
    onExitTransitionDidStart: function() {
    // source line 57, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_All);
    // source line 59, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_SlotMachines);
    // source line 60, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ChargeSucess);
},
    requestAndUpdataEvent: function() {
    // source line 69, bytecode pc 45
    xs.Tools.Net.requestPushDataInfo(function() {
    // source line 67, bytecode pc 17
    this.layer._refresh_event_models();
}, { layer: this });
},
    _getCurSpriteName: function() {
    // source line 75, bytecode pc 5
    return "MainMenuScene01_ad";
},
    _isActivitiesShowType: function(m_type) {
    // source line 99, bytecode pc 434
    return ((m_type == xs.Constant_PartyType_Level) || ((m_type == xs.Constant_PartyType_Count) || ((m_type == xs.Constant_PartyType_Continuous) || ((m_type == xs.Constant_PartyType_FstCharge) || ((m_type == xs.Constant_PartyType_Tiger) || ((m_type == xs.Constant_PartyType_MonthCard) || ((m_type == xs.Constant_PartyType_RechargeDouble) || ((m_type == xs.Constant_PartyType_AdvertisementeRechargeGiftsH) || ((m_type == xs.Constant_PartyType_AdvertisementCollectGod) || ((m_type == xs.Constant_PartyType_AddConsume) || ((m_type == xs.Constant_PartyType_PresentYuanbao) || ((m_type == xs.Constant_PartyType_Advertisement_fightRanking) || ((m_type == xs.Constant_PartyType_AddConsume_Bundle) || ((m_type == xs.Constant_PartyType_Level_Bundle) || ((m_type == xs.Constant_PartyType_Count_Bundle) || ((m_type == xs.Constant_PartyType_Continuous_Bundle) || ((m_type == xs.Constant_PartyType_AdvertisementeRechargeGiftsH_Bundle) || ((m_type == xs.Constant_PartyType_AdvertisementCollectGod_Bundle) || ((m_type == xs.Constant_PartyType_Advertisement_fightRanking_Bundle) || ((m_type == xs.Constant_PartyType_ContinuousRecharge) || ((m_type == xs.Constant_PartyType_DailyCheck) || (m_type == xs.Constant_PartyType_DailyCheck_Bundle))))))))))))))))))))));
},
    _getPartyInfo: function() {
    var _partyInfo, _numParty, i, _event, _eventType;
    // source line 103, bytecode pc 11
    (this.m_event_models = []);
    if ((xs.isVersionForPublish && !xs.temp_3rd)) {
        if (!xs.isAdult) {
            // source line 111, bytecode pc 123
            this.m_event_models.push({ name: "版署实名认证", type: xs.Constant_PartyType_IdCardBinding, order: 1000, hintNum: 0 });
        }
    }
    if ((xs.Tools.Party.getFstChargeNum() > 0)) {
        // source line 121, bytecode pc 255
        this.m_event_models.push({
    name: "首充",
    type: xs.Constant_PartyType_FstCharge,
    order: 11,
    hintNum: xs.gd_mgr.getInstance().Hint.fstpayHintInfoCount()
});
    }
    if ((xs.Tools.Party.getMonthCardNum() > 0)) {
        // source line 130, bytecode pc 351
        this.m_event_models.push({ name: "超级月卡", type: xs.Constant_PartyType_MonthCard, order: 12, hintNum: 0 });
    }
    if ((xs.Tools.Party.getRechargeDoubleNum() > 0)) {
        // source line 139, bytecode pc 447
        this.m_event_models.push({ name: "双倍充值", type: xs.Constant_PartyType_RechargeDouble, order: 13, hintNum: 0 });
    }
    if ((xs.Tools.Party.getTigerNum() > 0)) {
        // source line 148, bytecode pc 595
        this.m_event_models.push({
    name: "钱生钱",
    type: xs.Constant_PartyType_Tiger,
    order: 10,
    hintNum: xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().getIsDraw()
});
    }
    // source line 152, bytecode pc 641
    (_partyInfo = xs.Profile.GameData.PushInfo.getInstance().getPartyInfo());
    // source line 153, bytecode pc 659
    (_numParty = _partyInfo.getPartyEventNum());
    // source line 155, bytecode pc 664
    (i = 0);
    while ((i < _numParty)) {
        // source line 156, bytecode pc 692
        (_event = _partyInfo.getPartyEventByIdx(i));
        // source line 157, bytecode pc 710
        (_eventType = _event.getPartyEventType());
        if (this._isActivitiesShowType(_eventType)) {
            // source line 169, bytecode pc 824
            this.m_event_models.push({
    type: _eventType,
    order: _event.getPartyEventOrder(),
    event: _event,
    idx: i,
    hintNum: this.getHintNum(_eventType, _event)
});
        } else {
            // source line 173, bytecode pc 848
            _partyInfo.removePartyByIdx(i);
            // source line 174, bytecode pc 894
            (_partyInfo = xs.Profile.GameData.PushInfo.getInstance().getPartyInfo());
            // source line 175, bytecode pc 912
            (_numParty = _partyInfo.getPartyEventNum());
            // source line 176, bytecode pc 921
            (i = (i - 1));
        }
        // source line 155, bytecode pc 940
        (i = (+i + 1));
    }
    // source line 180, bytecode pc 978
    this.m_event_models.sort(function(a, b) {
    // source line 181, bytecode pc 17
    return (a.order < b.order);
});
    // source line 184, bytecode pc 991
    this._getPartyInfo_reset();
},
    getHintNum: function(m_type, m_partyEvent) {
    var hintNum;
    // source line 188, bytecode pc 4
    (hintNum = 0);
    if ((m_type === xs.Constant_PartyType_Training)) {
        // source line 190, bytecode pc 64
        (hintNum = xs.gd_mgr.getInstance().Hint.trainHintInfoCount());
    } else {
        if ((m_type === xs.Constant_PartyType_FstCharge)) {
            // source line 193, bytecode pc 129
            (hintNum = xs.gd_mgr.getInstance().Hint.fstpayHintInfoCount());
        } else {
            if ((m_type === xs.Constant_PartyType_Feast)) {
                // source line 196, bytecode pc 222
                (hintNum = (xs.Profile.GameData.PushInfo.getInstance().getFeastInfo().isEatAble() ? 1 : 0));
            } else {
                if ((m_type === xs.Constant_PartyType_Tiger)) {
                    // source line 199, bytecode pc 303
                    (hintNum = xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().getIsDraw());
                } else {
                    if ((m_type === xs.Constant_PartyType_Wishing)) {
                        // source line 201, bytecode pc 390
                        (hintNum = (xs.Profile.GameData.Mgr.getInstance().Hint.getWishinHint() ? 1 : 0));
                    } else {
                        if (((m_type === xs.Constant_PartyType_MonthCard) || ((m_type === xs.Constant_PartyType_RechargeDouble) || ((m_type === xs.Constant_PartyType_PresentYuanbao) || ((m_type === xs.Constant_PartyType_Advertisement_noTime) || ((m_type === xs.Constant_PartyType_MonthLegend) || ((m_type === xs.Constant_PartyType_LadderCompetition) || (m_type === xs.Constant_PartyType_Double11)))))))) {
                            // source line 211, bytecode pc 539
                            (hintNum = 0);
                        } else {
                            // source line 214, bytecode pc 574
                            (hintNum = (m_partyEvent.isReceiveAble() ? 1 : 0));
                        }
                    }
                }
            }
        }
    }
    // source line 216, bytecode pc 578
    return hintNum;
},
    _getPartyInfo_reset: function() {
    var i;
    for (var i in this.m_event_models) {
        if (((this.m_event_models[i].type == xs.Constant_PartyType_DailyCheck) || (this.m_event_models[i].type == xs.Constant_PartyType_DailyCheck_Bundle))) {
            // source line 222, bytecode pc 89
            (this.isOpen17 = true);
        } else {
            if (!(((this.m_event_models[i].type == xs.Constant_PartyType_Count) || (this.m_event_models[i].type == xs.Constant_PartyType_Count_Bundle)))) continue;
            if (!(this.isOpen17)) continue;
            // source line 226, bytecode pc 192
            this.m_event_models.splice(i, 1);
        }
    }
},
    btnClickCallBack: function(param) {
    var event, index;
    // source line 231, bytecode pc 23
    (event = param.event);
    // source line 232, bytecode pc 41
    (index = param.idx);
    if (((event.getPartyEventType() == xs.Constant_PartyType_Level) || ((event.getPartyEventType() == xs.Constant_PartyType_Count) || ((event.getPartyEventType() == xs.Constant_PartyType_Continuous) || ((event.getPartyEventType() == xs.Constant_PartyType_AdvertisementeRechargeGiftsH) || ((event.getPartyEventType() == xs.Constant_PartyType_AdvertisementCollectGod) || ((event.getPartyEventType() == xs.Constant_PartyType_AddConsume) || (event.getPartyEventType() == xs.Constant_PartyType_DailyCheck)))))))) {
        // source line 269, bytecode pc 378
        xs.Tools.Net.requestPushDataInfo(function() {
    var _layer, _index, _maxIdx, _modelEvent;
    // source line 247, bytecode pc 9
    (_layer = this.layer);
    // source line 248, bytecode pc 19
    (_index = this.index);
    // source line 250, bytecode pc 37
    (_maxIdx = param.maxIdx);
    // source line 253, bytecode pc 50
    (_modelEvent = event);
    if ((!_modelEvent || ((this.thisType != _modelEvent.getPartyEventType()) || (_index >= _maxIdx)))) {
        // source line 255, bytecode pc 159
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_activityOverdue"));
        // source line 256, bytecode pc 161
        return void 0;
    }
    // source line 263, bytecode pc 231
    xs.Views.Mgr.showDialogByName("PartyDialog", { modelEvent: _modelEvent, mIdx: _layer.m_event_models[_index].idx });
}, { layer: this, index: index, thisType: event.getPartyEventType() });
    } else {
        if (((event.getPartyEventType() == xs.Constant_PartyType_AddConsume_Bundle) || ((event.getPartyEventType() == xs.Constant_PartyType_Level_Bundle) || ((event.getPartyEventType() == xs.Constant_PartyType_Count_Bundle) || ((event.getPartyEventType() == xs.Constant_PartyType_Continuous_Bundle) || ((event.getPartyEventType() == xs.Constant_PartyType_MonthSignin_Bundle) || ((event.getPartyEventType() == xs.Constant_PartyType_AdvertisementeRechargeGiftsH_Bundle) || ((event.getPartyEventType() == xs.Constant_PartyType_AdvertisementCollectGod_Bundle) || ((event.getPartyEventType() == xs.Constant_PartyType_ContinuousRecharge) || (event.getPartyEventType() == xs.Constant_PartyType_DailyCheck_Bundle)))))))))) {
            // source line 307, bytecode pc 794
            xs.Tools.Net.requestPushDataInfo(function() {
    var _layer, _index, _maxIdx, _modelEvent;
    // source line 285, bytecode pc 9
    (_layer = this.layer);
    // source line 286, bytecode pc 19
    (_index = this.index);
    // source line 288, bytecode pc 37
    (_maxIdx = param.maxIdx);
    // source line 291, bytecode pc 50
    (_modelEvent = event);
    if ((!_modelEvent || ((this.thisType != _modelEvent.getPartyEventType()) || (_index >= _maxIdx)))) {
        // source line 293, bytecode pc 159
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_activityOverdue"));
        // source line 294, bytecode pc 161
        return void 0;
    }
    // source line 301, bytecode pc 231
    xs.Views.Mgr.showDialogByName("PartyDialogExt", { modelEvent: _modelEvent, mIdx: _layer.m_event_models[_index].idx });
}, { layer: this, index: index, thisType: event.getPartyEventType() });
        }
    }
},
    _setMainMenuSceneIcon: function(eventArry) {
    var _eventlength, i, _eventType, _event, _pic, _btnclick, hintNum, _sprite, hintIcon, _icon;
    // source line 314, bytecode pc 34
    (_eventlength = ((eventArry.length >= 6) ? 6 : eventArry.length));
    if (this.node) {
        // source line 317, bytecode pc 50
        (i = 0);
        while ((i < (6 - _eventlength))) {
            if (this.node.getChildByTag((6 - i))) {
                // source line 319, bytecode pc 123
                this.node.getChildByTag((6 - i)).setVisible(false);
            }
            // source line 317, bytecode pc 137
            (i = (+i + 1));
        }
    }
    // source line 323, bytecode pc 159
    (i = 0);
    while ((i < _eventlength)) {
        // source line 324, bytecode pc 181
        (_eventType = eventArry[i].type);
        // source line 325, bytecode pc 197
        (_event = eventArry[i].event);
        // source line 328, bytecode pc 206
        (_pic = "");
        // source line 329, bytecode pc 215
        (_btnclick = function() {
    // source line 330, bytecode pc 22
    xs.log_zhz("btnclick");
});
        // source line 332, bytecode pc 231
        (hintNum = eventArry[i].hintNum);
        // source line 333, bytecode pc 235
        switch (_eventType) {
            case xs.Constant_PartyType_FstCharge:
            // source line 337, bytecode pc 594
            (_btnclick = function() {
    // source line 338, bytecode pc 32
    xs.Views.Mgr.showDialogByName("FirstChargeDialog");
});
            // source line 340, bytecode pc 603
            (_pic = "02");
            break;
            case xs.Constant_PartyType_Tiger:
            // source line 345, bytecode pc 617
            (_btnclick = function() {
    // source line 346, bytecode pc 32
    xs.Views.Mgr.showDialogByName("SlotMachinesActivities");
});
            // source line 348, bytecode pc 626
            (_pic = "15");
            break;
            case xs.Constant_PartyType_MonthCard:
            // source line 353, bytecode pc 640
            (_btnclick = function() {
    // source line 354, bytecode pc 43
    xs.Views.Mgr.showDialogByName("RechargeAwardDialog", xs.Constant_PartyType_MonthCard);
});
            // source line 356, bytecode pc 649
            (_pic = "01");
            break;
            case xs.Constant_PartyType_RechargeDouble:
            // source line 361, bytecode pc 663
            (_btnclick = function() {
    // source line 362, bytecode pc 43
    xs.Views.Mgr.showDialogByName("RechargeAwardDialog", xs.Constant_PartyType_RechargeDouble);
});
            // source line 364, bytecode pc 672
            (_pic = "03");
            break;
            case xs.Constant_PartyType_Level:
            case xs.Constant_PartyType_Level_Bundle:
            // source line 372, bytecode pc 750
            (_btnclick = function() {
    // source line 371, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            // source line 373, bytecode pc 759
            (_pic = "06");
            break;
            case xs.Constant_PartyType_Count:
            case xs.Constant_PartyType_Count_Bundle:
            // source line 381, bytecode pc 837
            (_btnclick = function() {
    // source line 380, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            if ((_event.getBg() == xs.Constant_PartyType_new)) {
                // source line 383, bytecode pc 876
                (_pic = "05");
            } else {
                if ((_event.getBg() == xs.Constant_PartyType_meiriqiandao2)) {
                    // source line 386, bytecode pc 920
                    (_pic = "04");
                }
            }
            break;
            case xs.Constant_PartyType_Continuous:
            case xs.Constant_PartyType_Continuous_Bundle:
            // source line 395, bytecode pc 998
            (_btnclick = function() {
    // source line 394, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            // source line 396, bytecode pc 1007
            (_pic = "07");
            break;
            case xs.Constant_PartyType_AdvertisementeRechargeGiftsH:
            case xs.Constant_PartyType_AdvertisementeRechargeGiftsH_Bundle:
            // source line 404, bytecode pc 1085
            (_btnclick = function() {
    // source line 403, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            // source line 405, bytecode pc 1094
            (_pic = "09");
            break;
            case xs.Constant_PartyType_AdvertisementCollectGod:
            case xs.Constant_PartyType_AdvertisementCollectGod_Bundle:
            // source line 413, bytecode pc 1172
            (_btnclick = function() {
    // source line 412, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            // source line 414, bytecode pc 1181
            (_pic = "10");
            break;
            case xs.Constant_PartyType_AddConsume:
            case xs.Constant_PartyType_AddConsume_Bundle:
            // source line 422, bytecode pc 1259
            (_btnclick = function() {
    // source line 421, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            if ((_event.getBg() == xs.Constant_PartyType_Ganoderma)) {
                // source line 424, bytecode pc 1298
                (_pic = "13");
            } else {
                if ((_event.getBg() == xs.Constant_PartyType_Skill)) {
                    // source line 427, bytecode pc 1342
                    (_pic = "14");
                } else {
                    // source line 429, bytecode pc 1356
                    (_pic = "16");
                }
            }
            break;
            case xs.Constant_PartyType_PresentYuanbao:
            // source line 439, bytecode pc 1410
            (_btnclick = function() {
    // source line 438, bytecode pc 63
    xs.Views.Mgr.showDialogByName("PictureActivityDialog", this.param, this._self.m_event_models[this.idx].idx);
}.bind({ _self: this, param: _event, idx: i }));
            // source line 440, bytecode pc 1419
            (_pic = "11");
            break;
            case xs.Constant_PartyType_Advertisement_fightRanking:
            case xs.Constant_PartyType_Advertisement_fightRanking_Bundle:
            // source line 454, bytecode pc 1473
            (_btnclick = function() {
    // source line 452, bytecode pc 78
    xs.Views.Mgr.showDialogByName("LadderCompetitionDialog", { modelEvent: this.param, mIdx: this._self.m_event_models[this.idx].idx });
}.bind({ _self: this, param: _event, idx: i }));
            // source line 455, bytecode pc 1482
            (_pic = "12");
            break;
            case xs.Constant_PartyType_ContinuousRecharge:
            // source line 462, bytecode pc 1560
            (_btnclick = function() {
    // source line 461, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            // source line 463, bytecode pc 1569
            (_pic = "08");
            break;
            case xs.Constant_PartyType_DailyCheck:
            case xs.Constant_PartyType_DailyCheck_Bundle:
            // source line 471, bytecode pc 1647
            (_btnclick = function() {
    // source line 470, bytecode pc 24
    this._self.btnClickCallBack(this.param);
}.bind({ _self: this, param: { event: _event, idx: i, maxIdx: eventArry.length } }));
            // source line 472, bytecode pc 1656
            (_pic = "05");
            break;
            case xs.Constant_PartyType_IdCardBinding:
            // source line 475, bytecode pc 1670
            (_btnclick = function() {
    if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
        // source line 477, bytecode pc 74
        xs.Views.Mgr.showToastByStringId("IdCardBinding_9");
    } else {
        if (xs.isAdult) {
            // source line 480, bytecode pc 127
            xs.Views.Mgr.showToastByStringId("IdCardBinding_7");
        } else {
            // source line 482, bytecode pc 165
            xs.Views.Mgr.showDialogByName("IdCardBindingDialog");
        }
    }
});
            // source line 486, bytecode pc 1679
            (_pic = "17");
            break;
            default:
            break;
        }
        if ((_pic != "")) {
            // source line 490, bytecode pc 1760
            (_sprite = xs.Factorys.Sprite.create(this._getCurSpriteName(), "MainMenuScene01", [ _pic ]));
            // source line 491, bytecode pc 1797
            (this.m_Btn = xs.Views.Btn.createInvisibleWithParent(_sprite));
            // source line 492, bytecode pc 1832
            this.m_Btn.setOnClickCallBack(_btnclick.bind(this));
            // source line 493, bytecode pc 1873
            xs.Utils.replaceNode(this.node, (i + 1), _sprite, true);
            // source line 495, bytecode pc 1901
            (hintIcon = this.node.getChildByTag((i + 100)));
            if (hintIcon) {
                // source line 497, bytecode pc 1924
                hintIcon.removeFromParent();
            }
            if ((hintNum > 0)) {
                // source line 500, bytecode pc 1961
                (_icon = this.node.getChildByTag((i + 1)));
                if (_icon) {
                    // source line 502, bytecode pc 2011
                    (hintIcon = xs.Factorys.Sprite.create("Cmn01_Hint_NumBg", "Cmn01"));
                    // source line 503, bytecode pc 2032
                    hintIcon.setScale(0.6);
                    // source line 512, bytecode pc 2166
                    xs.Utils.Node.attachNodes(this.node, hintIcon, { desc: "lb", offset: { x: (_icon.getPositionX() + 40), y: (_icon.getPositionY() + 40) } }, { tag: (i + 100), zOrder: 1 });
                }
            }
        } else {
            // source line 518, bytecode pc 2208
            this.node.getChildByTag((i + 1)).setVisible(false);
        }
        // source line 323, bytecode pc 2222
        (i = (+i + 1));
    }
}
}));
// source line 525, bytecode pc 380
(xs.Views.ActivitiesShow6Icon.create = function(params) {
    var ret;
    // source line 526, bytecode pc 23
    (ret = new xs.Views.ActivitiesShow6Icon());
    if ((ret && ret.init(params))) {
        // source line 528, bytecode pc 59
        return ret;
    }
    // source line 531, bytecode pc 84
    xs.assert(false, "xs.Views.ActivitiesShow6Icon.create err");
    // source line 532, bytecode pc 86
    return null;
});
