// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/SubMenu/PartyMenuScene.js:1
// source line 646, bytecode pc 274
(xs.Scene.PartyMenuLayer = xs.Views.HungerLayer.extend({
    Constant_OffsetPartyMenu: 1,
    name: "PartyMenuLayer",
    init: function() {
    var visibleSize, visibleOrigin;
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 24, bytecode pc 35
    (this.m_mainMenu = null);
    // source line 25, bytecode pc 43
    (this.m_multiPageMenu = null);
    // source line 26, bytecode pc 51
    (this.m_coverLayer = null);
    // source line 27, bytecode pc 59
    (this.m_adNum = 0);
    // source line 30, bytecode pc 106
    (this.m_items = [ null, null, null, null, null, null, null ]);
    // source line 31, bytecode pc 153
    (this.m_hintIcons = [ null, null, null, null, null, null, null ]);
    // source line 35, bytecode pc 178
    (visibleSize = xs.director.getVisibleSize());
    // source line 36, bytecode pc 203
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 39, bytecode pc 243
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Cmn);
    // source line 42, bytecode pc 276
    (this.horn = xs.Views.HornView.create());
    // source line 43, bytecode pc 315
    this.horn.setAnchorPoint(cc.p(0, 0));
    // source line 44, bytecode pc 374
    xs.Utils.Node.attachNodes(this, this.horn, { desc: "lb", sc: true });
    // source line 46, bytecode pc 387
    this._refresh_models();
    // source line 48, bytecode pc 420
    (this.m_multiPageMenu = xs.Views.MultiPagesMenuView.create());
    // source line 49, bytecode pc 440
    this.m_multiPageMenu.setDelegate(this);
    // source line 50, bytecode pc 476
    xs.Utils.Node.attachNodes(this, this.m_multiPageMenu);
    // source line 53, bytecode pc 539
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, false, xs.Scene.PartyMenuLayer.cfg.m_mainMenu));
    // source line 54, bytecode pc 560
    this.m_mainMenu.setZOrder(10);
    // source line 56, bytecode pc 593
    (this.m_coverLayer = xs.Views.HungerLayer.create());
    // source line 57, bytecode pc 629
    xs.Utils.Node.attachNodes(this, this.m_coverLayer);
    // source line 59, bytecode pc 644
    this.setBaseTouchPriority(0);
    // source line 61, bytecode pc 646
    return true;
},
    updataMenus: function() {
    var m_Index;
    // source line 65, bytecode pc 46
    (this.m_items = [ null, null, null, null, null, null, null ]);
    // source line 66, bytecode pc 93
    (this.m_hintIcons = [ null, null, null, null, null, null, null ]);
    // source line 69, bytecode pc 106
    this._refresh_models();
    // source line 71, bytecode pc 121
    (m_Index = this.m_multiPageMenu.m_pageIndex);
    // source line 73, bytecode pc 141
    this.m_multiPageMenu.removeFromParent(true);
    // source line 76, bytecode pc 187
    (this.m_multiPageMenu = xs.Views.MultiPagesMenuView.create({ isAction: false }));
    // source line 77, bytecode pc 207
    this.m_multiPageMenu.setDelegate(this);
    // source line 78, bytecode pc 243
    xs.Utils.Node.attachNodes(this, this.m_multiPageMenu);
    // source line 79, bytecode pc 265
    this.m_multiPageMenu.setPageIndexNoAction(m_Index);
    // source line 81, bytecode pc 321
    this.m_multiPageMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.PartyMenuLayer.cfg.m_multiPageMenu.priority));
},
    requestAndUpdataMenus: function() {
    // source line 97, bytecode pc 45
    xs.Tools.Net.requestPushDataInfo(function() {
    // source line 95, bytecode pc 17
    this.layer.updataMenus();
}, { layer: this });
},
    _isCurrentActivity: function(m_type) {
    if (((m_type == xs.Constant_PartyType_Level) || ((m_type == xs.Constant_PartyType_Count) || ((m_type == xs.Constant_PartyType_Continuous) || ((m_type == xs.Constant_PartyType_Training) || ((m_type == xs.Constant_PartyType_FstCharge) || ((m_type == xs.Constant_PartyType_Feast) || ((m_type == xs.Constant_PartyType_Tiger) || ((m_type == xs.Constant_PartyType_Wishing) || ((m_type == xs.Constant_PartyType_MonthCard) || ((m_type == xs.Constant_PartyType_RechargeDouble) || ((m_type == xs.Constant_PartyType_Advertisement_haveTime) || ((m_type == xs.Constant_PartyType_Advertisement_noTime) || ((m_type == xs.Constant_PartyType_AdvertisementeRechargeGiftsH) || ((m_type == xs.Constant_PartyType_AdvertisementCollectGod) || ((m_type == xs.Constant_PartyType_Advertisement_fightRanking) || ((m_type == xs.Constant_PartyType_AddConsume) || ((m_type == xs.Constant_PartyType_PresentLuxun) || ((m_type == xs.Constant_PartyType_PresentYuanbao) || ((m_type == xs.Constant_PartyType_MonthLegend) || ((m_type == xs.Constant_PartyType_LadderCompetition) || ((m_type == xs.Constant_PartyType_MonthSignin) || ((m_type == xs.Constant_PartyType_AddConsume_Bundle) || ((m_type == xs.Constant_PartyType_Level_Bundle) || ((m_type == xs.Constant_PartyType_Count_Bundle) || ((m_type == xs.Constant_PartyType_Continuous_Bundle) || ((m_type == xs.Constant_PartyType_MonthSignin_Bundle) || ((m_type == xs.Constant_PartyType_AdvertisementeRechargeGiftsH_Bundle) || ((m_type == xs.Constant_PartyType_AdvertisementCollectGod_Bundle) || ((m_type == xs.Constant_PartyType_Advertisement_fightRanking_Bundle) || ((m_type == xs.Constant_PartyType_LadderCompetition_Bundle) || ((m_type == xs.Constant_PartyType_DailyCheck) || ((m_type == xs.Constant_PartyType_DailyCheck_Bundle) || ((m_type == xs.Constant_PartyType_PresentLuxun_Bundle) || ((m_type == xs.Constant_PartyType_Recharge_Rank) || ((m_type == xs.Constant_PartyType_Consume_Rank) || ((m_type == xs.Constant_PartyType_DailyRechargeAward_Bundle) || ((m_type == xs.Constant_PartyType_ContinuousRecharge) || ((m_type == xs.Constant_PartyType_Double11) || ((m_type == xs.Constant_PartyType_Finish_Dungeon) || ((m_type == xs.Constant_PartyType_Accumulat_Pay) || (m_type == xs.Constant_PartyType_Accumulat_Summon)))))))))))))))))))))))))))))))))))))))))) {
        // source line 146, bytecode pc 820
        return true;
    }
    // source line 148, bytecode pc 822
    return false;
},
    _refresh_type_orders: function() {
    var model, _partyInfo, _numParty, i, _event;
    // source line 154, bytecode pc 11
    (this.m_type_orders = []);
    if ((xs.Tools.Party.getTrainingNum() > 0)) {
        // source line 158, bytecode pc 86
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_Training, null));
        // source line 160, bytecode pc 127
        this.m_type_orders.push({ model: model, order: 1000 });
    }
    if ((xs.Tools.Party.getFstChargeNum() > 0)) {
        // source line 165, bytecode pc 202
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_FstCharge, null));
        // source line 167, bytecode pc 243
        this.m_type_orders.push({ model: model, order: 9002 });
    }
    if ((xs.Tools.Party.getWishingNum() > 0)) {
        // source line 173, bytecode pc 318
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_Wishing, null));
        // source line 175, bytecode pc 359
        this.m_type_orders.push({ model: model, order: 9000 });
    }
    if ((xs.Tools.Party.getMonthCardNum() > 0)) {
        // source line 180, bytecode pc 434
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_MonthCard, null));
        // source line 182, bytecode pc 475
        this.m_type_orders.push({ model: model, order: 9003 });
    }
    if ((xs.Tools.Party.getRechargeDoubleNum() > 0)) {
        // source line 187, bytecode pc 550
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_RechargeDouble, null));
        // source line 189, bytecode pc 591
        this.m_type_orders.push({ model: model, order: 9001 });
    }
    if ((xs.Tools.Party.getTigerNum() > 0)) {
        // source line 194, bytecode pc 666
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_Tiger, null));
        // source line 196, bytecode pc 707
        this.m_type_orders.push({ model: model, order: 3000 });
    }
    if ((xs.Tools.Party.getFeastNum() > 0)) {
        // source line 201, bytecode pc 782
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_Feast, null));
        // source line 203, bytecode pc 823
        this.m_type_orders.push({ model: model, order: 2000 });
    }
    if ((xs.Tools.Party.getDouble11() > 0)) {
        // source line 207, bytecode pc 898
        (model = new xs.Scene.PartyMenuScene.MenuItemModel(xs.Constant_PartyType_Double11, null));
        // source line 209, bytecode pc 939
        this.m_type_orders.push({ model: model, order: 900 });
    }
    // source line 213, bytecode pc 985
    (_partyInfo = xs.Profile.GameData.PushInfo.getInstance().getPartyInfo());
    // source line 214, bytecode pc 1003
    (_numParty = _partyInfo.getPartyEventNum());
    // source line 216, bytecode pc 1008
    (i = 0);
    while ((i < _numParty)) {
        // source line 217, bytecode pc 1036
        (_event = _partyInfo.getPartyEventByIdx(i));
        if (this._isCurrentActivity(_event.getPartyEventType())) {
            // source line 224, bytecode pc 1116
            (model = new xs.Scene.PartyMenuScene.MenuItemModel(_event.getPartyEventType(), _event));
            // source line 230, bytecode pc 1196
            this.m_type_orders.push({ type: _event.getPartyEventType(), order: (8000 - i), event: _event, model: model, idx: i });
        } else {
            // source line 234, bytecode pc 1220
            _partyInfo.removePartyByIdx(i);
            // source line 235, bytecode pc 1266
            (_partyInfo = xs.Profile.GameData.PushInfo.getInstance().getPartyInfo());
            // source line 236, bytecode pc 1284
            (_numParty = _partyInfo.getPartyEventNum());
            // source line 237, bytecode pc 1293
            (i = (i - 1));
        }
        // source line 216, bytecode pc 1313
        i++;
    }
    // source line 244, bytecode pc 1350
    this.m_type_orders.sort(function(a, b) {
    // source line 245, bytecode pc 17
    return (a.order < b.order);
});
},
    _refresh_models: function() {
    // source line 252, bytecode pc 12
    this._refresh_type_orders();
    // source line 254, bytecode pc 25
    (this.m_menuItemModels = this.m_type_orders);
},
    setBaseTouchPriority: function(priority) {
    // source line 261, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 262, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 263, bytecode pc 85
    this.m_multiPageMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.PartyMenuLayer.cfg.m_multiPageMenu.priority));
    // source line 264, bytecode pc 141
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.PartyMenuLayer.cfg.m_mainMenu.priority));
    if (this.m_coverLayer) {
        // source line 266, bytecode pc 208
        this.m_coverLayer.setTouchPriority((this.m_baseTouchPriority + xs.Scene.PartyMenuLayer.cfg.m_coverLayer.priority));
    }
    // source line 268, bytecode pc 264
    this.horn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_horn.priority));
},
    onEnterTransitionDidFinish: function() {
    // source line 272, bytecode pc 12
    this._super();
    // source line 273, bytecode pc 25
    this.requestAndUpdataMenus();
    // source line 275, bytecode pc 72
    xs.Utils.Notify.addObserver(this, this.updataMenus, xs.Constant_Notify_HintChange_All);
    // source line 276, bytecode pc 119
    xs.Utils.Notify.addObserver(this, this.updataMenus, xs.Constant_Notify_Event_SlotMachines);
    // source line 277, bytecode pc 166
    xs.Utils.Notify.addObserver(this, this.requestAndUpdataMenus, xs.Constant_Notify_Event_ChargeSucess);
},
    onExitTransitionDidStart: function() {
    // source line 282, bytecode pc 12
    this._super();
    // source line 283, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_All);
    // source line 284, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_SlotMachines);
    // source line 285, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ChargeSucess);
},
    MPMV_MenusNum: function() {
    // source line 292, bytecode pc 26
    return xs.Tools.Party.getPartyNum();
},
    MPMV_MenusNumEachPage: function() {
    // source line 295, bytecode pc 2
    return 6;
},
    MPMV_MenuPositionAtIndex: function(index) {
    var eachPageMenuNum, pageMenuIndex, contentSize, y_add, x_add, x_inc, y_inc, x, y, _ret;
    // source line 300, bytecode pc 15
    (eachPageMenuNum = this.MPMV_MenusNumEachPage());
    // source line 303, bytecode pc 26
    (pageMenuIndex = (index % eachPageMenuNum));
    // source line 305, bytecode pc 42
    (contentSize = this.getContentSize());
    // source line 306, bytecode pc 60
    (contentSize.width = (contentSize.width - 110));
    // source line 307, bytecode pc 78
    (y_add = ((contentSize.height * 9) / 40));
    // source line 308, bytecode pc 97
    (x_add = (contentSize.width / (eachPageMenuNum / 2)));
    // source line 310, bytecode pc 150
    (x_inc = (((pageMenuIndex % (eachPageMenuNum / 2)) === 0) ? 0.58 : (((pageMenuIndex % (eachPageMenuNum / 2)) * 0.92) + 0.58)));
    // source line 311, bytecode pc 177
    (y_inc = ((pageMenuIndex >= (eachPageMenuNum / 2)) ? 1 : 3));
    // source line 314, bytecode pc 188
    (x = (x_inc * x_add));
    // source line 315, bytecode pc 199
    (y = (y_inc * y_add));
    // source line 317, bytecode pc 230
    (_ret = cc.p(x, (y + 40)));
    // source line 319, bytecode pc 234
    return _ret;
},
    MPMV_MenuOffsetAtIndex: function(index) {
    // source line 323, bytecode pc 10
    return cc.POINT_ZERO;
},
    MPMV_MenuEventRect: function(index) {
    // source line 326, bytecode pc 36
    return { x: 4, y: 4, width: 240, height: 230 }
},
    MPMV_LastBtnPos: function() {
    var pos;
    // source line 329, bytecode pc 78
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lc", sc: true, offset: { x: 16, y: 0 } }));
    // source line 330, bytecode pc 82
    return pos;
},
    MPMV_NextBtnPos: function() {
    var pos;
    // source line 333, bytecode pc 78
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "rc", sc: true, offset: { x: -126, y: 0 } }));
    // source line 334, bytecode pc 82
    return pos;
},
    MPMV_MenuForIndex: function(index) {
    var _sprite, _node;
    // source line 341, bytecode pc 29
    (_sprite = this.m_menuItemModels[index].model.createMenuSprite());
    // source line 343, bytecode pc 60
    xs.Utils.Node.makeDebugBoundRect(_sprite);
    // source line 344, bytecode pc 91
    xs.Utils.Node.makeDebugPoint(_sprite);
    // source line 346, bytecode pc 116
    (_node = cc.Node.create());
    // source line 347, bytecode pc 156
    _node.setContentSize(cc.size(230, 190));
    // source line 348, bytecode pc 182
    _node.setAnchorPoint(xs.ap_c);
    // source line 350, bytecode pc 196
    (this.m_items[index] = _node);
    // source line 352, bytecode pc 250
    xs.Utils.Node.attachNodes(_node, _sprite, { desc: "c" }, null);
    // source line 354, bytecode pc 267
    this._updateHintIconByIdx(index);
    // source line 356, bytecode pc 271
    return _node;
},
    _refresh_HintIcon: function() {
    var i;
    // source line 361, bytecode pc 4
    (i = 0);
    while ((i < this.m_menuItemModels.length)) {
        // source line 362, bytecode pc 27
        this._updateHintIconByIdx(i);
        // source line 361, bytecode pc 42
        i++;
    }
},
    _updateHintIconByIdx: function(index) {
    var hintNum, _hintOffset, hintIcon;
    // source line 369, bytecode pc 29
    (hintNum = this.m_menuItemModels[index].model.getHintNum());
    // source line 374, bytecode pc 55
    (_hintOffset = cc.p(115, 105));
    if ((this.m_hintIcons[index] != undefined)) {
        // source line 380, bytecode pc 114
        xs.Utils.Node.removeChildSafe(this.m_hintIcons[index]);
        // source line 381, bytecode pc 126
        (this.m_hintIcons[index] = null);
    }
    if ((hintNum > 0)) {
        // source line 385, bytecode pc 170
        (hintIcon = xs.Tools.UI.generalHintIcon(hintNum));
        if ((this.m_items[index] != undefined)) {
            // source line 387, bytecode pc 205
            (this.m_hintIcons[index] = hintIcon);
            // source line 388, bytecode pc 274
            xs.Utils.Node.attachNodes(this.m_items[index], hintIcon, { desc: "c", offset: _hintOffset }, null);
        }
    }
},
    MPMV_MenuTouchedInIndex: function(menu, index) {
    var _item_model, _item_event;
    // source line 400, bytecode pc 24
    (_item_model = this.m_menuItemModels[index].model);
    // source line 401, bytecode pc 49
    (_item_event = this.m_menuItemModels[index].event);
    if (_item_event) {
        // source line 406, bytecode pc 108
        xs.Tools.Statistic.event_party(_item_model.m_type, _item_event.getInstanceId());
    } else {
        // source line 409, bytecode pc 149
        xs.Tools.Statistic.event_party(_item_model.m_type);
    }
    if ((_item_model.m_type === xs.Constant_PartyType_Training)) {
        // source line 414, bytecode pc 206
        xs.Scene.Mgr.changeSceneByName("GeneralTrainingScene");
    } else {
        if ((_item_model.m_type === xs.Constant_PartyType_FstCharge)) {
            // source line 418, bytecode pc 268
            xs.Views.Mgr.showDialogByName("FirstChargeDialog");
        } else {
            if ((_item_model.m_type === xs.Constant_PartyType_Feast)) {
                // source line 422, bytecode pc 330
                xs.Views.Mgr.showDialogByName("PartyDialogEat");
            } else {
                if ((_item_model.m_type === xs.Constant_PartyType_Tiger)) {
                    // source line 426, bytecode pc 392
                    xs.Views.Mgr.showDialogByName("SlotMachinesActivities");
                } else {
                    if ((_item_model.m_type === xs.Constant_PartyType_Wishing)) {
                        // source line 430, bytecode pc 448
                        xs.Tools.Scene.gotoWishingScene();
                    } else {
                        if ((_item_model.m_type === xs.Constant_PartyType_MonthCard)) {
                            // source line 435, bytecode pc 521
                            xs.Views.Mgr.showDialogByName("RechargeAwardDialog", xs.Constant_PartyType_MonthCard);
                        } else {
                            if ((_item_model.m_type === xs.Constant_PartyType_RechargeDouble)) {
                                // source line 439, bytecode pc 594
                                xs.Views.Mgr.showDialogByName("RechargeAwardDialog", xs.Constant_PartyType_RechargeDouble);
                            } else {
                                if (((_item_model.m_type === xs.Constant_PartyType_LadderCompetition) || (_item_model.m_type === xs.Constant_PartyType_LadderCompetition_Bundle))) {
                                    // source line 446, bytecode pc 722
                                    xs.Views.Mgr.showDialogByName("LadderCompetitionDialog", { modelEvent: _item_event, mIdx: this.m_menuItemModels[index].idx });
                                } else {
                                    if (((_item_model.m_type === xs.Constant_PartyType_PresentYuanbao) || (_item_model.m_type === xs.Constant_PartyType_Advertisement_noTime))) {
                                        // source line 453, bytecode pc 835
                                        xs.Views.Mgr.showDialogByName("PictureActivityDialog", _item_event, this.m_menuItemModels[index].idx);
                                    } else {
                                        if ((_item_model.m_type === xs.Constant_PartyType_MonthLegend)) {
                                            if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
                                                // source line 458, bytecode pc 939
                                                xs.Views.Mgr.showToastByStringKey("str_need_bind_bf_account");
                                            } else {
                                                // source line 479, bytecode pc 1017
                                                xs.Tools.Net.requestPushDataInfo(function() {
    var _layer, _index, _maxIdx, _modelEvent;
    // source line 463, bytecode pc 9
    (_layer = this.layer);
    // source line 464, bytecode pc 19
    (_index = this.index);
    // source line 466, bytecode pc 36
    (_maxIdx = _layer.m_menuItemModels.length);
    // source line 468, bytecode pc 57
    (_modelEvent = _layer.m_menuItemModels[_index].event);
    if ((!_modelEvent || ((this.thisType != _modelEvent.getPartyEventType()) || (_index >= _maxIdx)))) {
        // source line 470, bytecode pc 166
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_activityOverdue"));
        // source line 471, bytecode pc 168
        return void 0;
    }
    // source line 474, bytecode pc 209
    xs.Views.Mgr.showDialogByName("MonthLegendDialog", _modelEvent, _index);
}, { layer: this, index: index, thisType: _item_model.m_type });
                                            }
                                        } else {
                                            if (((_item_model.m_type === xs.Constant_PartyType_Advertisement_fightRanking) || (_item_model.m_type === xs.Constant_PartyType_Advertisement_fightRanking_Bundle))) {
                                                // source line 492, bytecode pc 1145
                                                xs.Views.Mgr.showDialogByName("AdvertisementDialog", { modelEvent: _item_event, mIdx: this.m_menuItemModels[index].idx });
                                            } else {
                                                if ((_item_model.m_type === xs.Constant_PartyType_MonthSignin)) {
                                                    // source line 500, bytecode pc 1197
                                                    xs.log("Constant_PartyType_MonthSignin");
                                                    if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
                                                        // source line 502, bytecode pc 1272
                                                        xs.Views.Mgr.showToastByStringKey("str_need_bind_bf_account");
                                                    } else {
                                                        // source line 525, bytecode pc 1350
                                                        xs.Tools.Net.requestPushDataInfo(function() {
    var _layer, _index, _maxIdx, _modelEvent;
    // source line 506, bytecode pc 9
    (_layer = this.layer);
    // source line 507, bytecode pc 19
    (_index = this.index);
    // source line 508, bytecode pc 36
    (_maxIdx = _layer.m_menuItemModels.length);
    // source line 510, bytecode pc 57
    (_modelEvent = _layer.m_menuItemModels[_index].event);
    if ((!_modelEvent || ((this.thisType != _modelEvent.getPartyEventType()) || (_index >= _maxIdx)))) {
        // source line 512, bytecode pc 166
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_activityOverdue"));
        // source line 513, bytecode pc 168
        return void 0;
    }
    // source line 518, bytecode pc 224
    xs.Views.Mgr.showDialogByName("PartyDialog", { modelEvent: _modelEvent, mIdx: _index });
}, { layer: this, index: index, thisType: _item_model.m_type });
                                                    }
                                                } else {
                                                    if (((_item_model.m_type == xs.Constant_PartyType_Level) || ((_item_model.m_type == xs.Constant_PartyType_Count) || ((_item_model.m_type == xs.Constant_PartyType_Continuous) || ((_item_model.m_type == xs.Constant_PartyType_AdvertisementeRechargeGiftsH) || ((_item_model.m_type == xs.Constant_PartyType_AdvertisementCollectGod) || ((_item_model.m_type == xs.Constant_PartyType_AddConsume) || ((_item_model.m_type == xs.Constant_PartyType_PresentLuxun) || ((_item_model.m_type == xs.Constant_PartyType_MonthSignin) || ((_item_model.m_type == xs.Constant_PartyType_DailyCheck) || (_item_model.m_type == xs.Constant_PartyType_Accumulat_Pay))))))))))) {
                                                        // source line 563, bytecode pc 1677
                                                        xs.Tools.Net.requestPushDataInfo(function() {
    var _layer, _index, _maxIdx, _modelEvent;
    // source line 544, bytecode pc 9
    (_layer = this.layer);
    // source line 545, bytecode pc 19
    (_index = this.index);
    // source line 547, bytecode pc 36
    (_maxIdx = _layer.m_menuItemModels.length);
    // source line 549, bytecode pc 57
    (_modelEvent = _layer.m_menuItemModels[_index].event);
    if ((!_modelEvent || ((this.thisType != _modelEvent.getPartyEventType()) || (_index >= _maxIdx)))) {
        // source line 551, bytecode pc 166
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_activityOverdue"));
        // source line 552, bytecode pc 168
        return void 0;
    }
    // source line 557, bytecode pc 244
    xs.Views.Mgr.showDialogByName("PartyDialog", { modelEvent: _modelEvent, mIdx: _layer.m_menuItemModels[index].idx });
}, { layer: this, index: index, thisType: _item_model.m_type });
                                                    } else {
                                                        if (((_item_model.m_type == xs.Constant_PartyType_AddConsume_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_Level_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_Count_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_Continuous_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_MonthSignin_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_AdvertisementeRechargeGiftsH_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_AdvertisementCollectGod_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_PresentLuxun_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_DailyCheck_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_DailyRechargeAward_Bundle) || ((_item_model.m_type == xs.Constant_PartyType_ContinuousRecharge) || ((_item_model.m_type == xs.Constant_PartyType_Finish_Dungeon) || (_item_model.m_type == xs.Constant_PartyType_Accumulat_Summon)))))))))))))) {
                                                            // source line 604, bytecode pc 2079
                                                            xs.Tools.Net.requestPushDataInfo(function() {
    var _layer, _index, _maxIdx, _modelEvent;
    // source line 585, bytecode pc 9
    (_layer = this.layer);
    // source line 586, bytecode pc 19
    (_index = this.index);
    // source line 588, bytecode pc 36
    (_maxIdx = _layer.m_menuItemModels.length);
    // source line 590, bytecode pc 57
    (_modelEvent = _layer.m_menuItemModels[_index].event);
    if ((!_modelEvent || ((this.thisType != _modelEvent.getPartyEventType()) || (_index >= _maxIdx)))) {
        // source line 592, bytecode pc 166
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_activityOverdue"));
        // source line 593, bytecode pc 168
        return void 0;
    }
    // source line 598, bytecode pc 244
    xs.Views.Mgr.showDialogByName("PartyDialogExt", { modelEvent: _modelEvent, mIdx: _layer.m_menuItemModels[index].idx });
}, { layer: this, index: index, thisType: _item_model.m_type });
                                                        } else {
                                                            if (((_item_model.m_type === xs.Constant_PartyType_Recharge_Rank) || (_item_model.m_type === xs.Constant_PartyType_Consume_Rank))) {
                                                                // source line 630, bytecode pc 2206
                                                                xs.Tools.Net.requestPushDataInfo(function() {
    var _layer, _index, _maxIdx, _modelEvent;
    // source line 611, bytecode pc 9
    (_layer = this.layer);
    // source line 612, bytecode pc 19
    (_index = this.index);
    // source line 614, bytecode pc 36
    (_maxIdx = _layer.m_menuItemModels.length);
    // source line 616, bytecode pc 57
    (_modelEvent = _layer.m_menuItemModels[_index].event);
    if ((!_modelEvent || ((this.thisType != _modelEvent.getPartyEventType()) || (_index >= _maxIdx)))) {
        // source line 618, bytecode pc 166
        xs.Views.Mgr.showToast(xs.Tools.String.createString("toast_activityOverdue"));
        // source line 619, bytecode pc 168
        return void 0;
    }
    // source line 623, bytecode pc 216
    xs.Views.Mgr.showDialogByName("RechargeRankDialog", { modelEvent: _modelEvent });
}, { layer: this, index: index, thisType: _item_model.m_type });
                                                            } else {
                                                                if ((_item_model.m_type === xs.Constant_PartyType_Double11)) {
                                                                    // source line 636, bytecode pc 2268
                                                                    xs.Tools.Net.requestPushDataInfo(function() {
    // source line 637, bytecode pc 32
    xs.Views.Mgr.showDialogByName("Double11Dialog");
});
                                                                } else {
                                                                    // source line 642, bytecode pc 2305
                                                                    xs.error("unknow party type", _item_model.m_type);
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
    MPMV_MenuActionDone: function() {
    // source line 647, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_coverLayer);
    // source line 648, bytecode pc 41
    (this.m_coverLayer = null);
}
}));
// source line 652, bytecode pc 300
(xs.Scene.PartyMenuLayer.create = function() {
    var layer;
    // source line 653, bytecode pc 23
    (layer = new xs.Scene.PartyMenuLayer());
    if ((layer && layer.init())) {
        // source line 655, bytecode pc 55
        return layer;
    }
    // source line 657, bytecode pc 78
    xs.warn("xs.Scene.PartyMenuLayer.create error!");
    // source line 658, bytecode pc 80
    return null;
});
// source line 677, bytecode pc 421
(xs.Scene.PartyMenuLayer.cfg = {
    m_mainMenu: { zOrder: 0, tag: -1, priority: -2 },
    m_multiPageMenu: { zOrder: 0, tag: -1, priority: -1 },
    m_coverLayer: { zOrder: 10, tag: -1, priority: -5 }
});
// source line 686, bytecode pc 485
(xs.Scene.PartyMenuScene = cc.Scene.extend({
    ctor: function() {
    // source line 683, bytecode pc 12
    this._super();
    // source line 684, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var layer;
    if (!this._super()) {
        // source line 688, bytecode pc 19
        return false;
    }
    // source line 691, bytecode pc 49
    (layer = xs.Scene.PartyMenuLayer.create());
    // source line 692, bytecode pc 82
    xs.Utils.Node.attachNodes(this, layer);
    // source line 694, bytecode pc 84
    return true;
}
}));
// source line 698, bytecode pc 511
(xs.Scene.PartyMenuScene.create = function() {
    var scene;
    // source line 699, bytecode pc 23
    (scene = new xs.Scene.PartyMenuScene());
    if ((scene && scene.init())) {
        // source line 701, bytecode pc 55
        return scene;
    }
    // source line 703, bytecode pc 78
    xs.warn("xs.Scene.PartyMenuScene.create error!");
    // source line 704, bytecode pc 80
    return null;
});
// source line 708, bytecode pc 563
(xs.Scene.PartyMenuScene.MenuItemModel = (xs.Scene.PartyMenuScene.MenuItemModel || function(type, partyEvent) {
    // source line 710, bytecode pc 9
    (this.m_type = type);
    // source line 711, bytecode pc 19
    (this.m_partyEvent = partyEvent);
    // source line 713, bytecode pc 31
    (this.createMenuSprite = function() {
    var _sprite, _modelEvent;
    if ((this.m_type === xs.Constant_PartyType_Training)) {
        // source line 718, bytecode pc 71
        (_sprite = xs.Factorys.Sprite.create("huodong_training", "HuodongScene01", null, true));
    } else {
        if ((this.m_type === xs.Constant_PartyType_FstCharge)) {
            // source line 721, bytecode pc 144
            (_sprite = xs.Factorys.Sprite.create("huodong_firstCharge", "HuodongScene01", null, true));
        } else {
            if ((this.m_type === xs.Constant_PartyType_Feast)) {
                // source line 724, bytecode pc 217
                (_sprite = xs.Factorys.Sprite.create("huodong_feast", "HuodongScene01", null, true));
            } else {
                if ((this.m_type === xs.Constant_PartyType_Tiger)) {
                    // source line 727, bytecode pc 290
                    (_sprite = xs.Factorys.Sprite.create("huodong_tiger", "HuodongScene01", null, true));
                } else {
                    if ((this.m_type === xs.Constant_PartyType_Wishing)) {
                        // source line 730, bytecode pc 363
                        (_sprite = xs.Factorys.Sprite.create("huodong_wishing", "HuodongScene01", null, true));
                    } else {
                        if ((this.m_type === xs.Constant_PartyType_MonthCard)) {
                            // source line 733, bytecode pc 436
                            (_sprite = xs.Factorys.Sprite.create("huodong_mothCard", "HuodongScene01", null, true));
                        } else {
                            if ((this.m_type === xs.Constant_PartyType_RechargeDouble)) {
                                if ((xs.rechargeRate == 4)) {
                                    // source line 737, bytecode pc 527
                                    (_sprite = xs.Factorys.Sprite.create("huodong_rechargeSi", "HuodongScene01", null, true));
                                } else {
                                    // source line 740, bytecode pc 578
                                    (_sprite = xs.Factorys.Sprite.create("huodong_rechargeDouble", "HuodongScene01", null, true));
                                }
                            } else {
                                if (((this.m_type === xs.Constant_PartyType_PresentLuxun) || (this.m_type === xs.Constant_PartyType_PresentLuxun_Bundle))) {
                                    // source line 745, bytecode pc 638
                                    (_modelEvent = this.m_partyEvent);
                                    if ((_modelEvent.getBg() == xs.Constant_PartyType_SongMoWuJaing)) {
                                        // source line 748, bytecode pc 714
                                        (_sprite = xs.Factorys.Sprite.create("huodong_songmojiang", "HuodongScene01", null, true));
                                    } else {
                                        if ((_modelEvent.getBg() == xs.Constant_PartyType_BingFengHaoLi)) {
                                            // source line 751, bytecode pc 795
                                            (_sprite = xs.Factorys.Sprite.create("huodong_binfenhaoli", "HuodongScene01", null, true));
                                        } else {
                                            // source line 755, bytecode pc 846
                                            (_sprite = xs.Factorys.Sprite.create("huodong_presentLuxun", "HuodongScene01", null, true));
                                        }
                                    }
                                } else {
                                    if ((this.m_type === xs.Constant_PartyType_MonthSignin)) {
                                        // source line 759, bytecode pc 919
                                        (_sprite = xs.Factorys.Sprite.create("huodong_monthSignin", "HuodongScene01", null, true));
                                    } else {
                                        if ((this.m_type === xs.Constant_PartyType_MonthLegend)) {
                                            // source line 762, bytecode pc 992
                                            (_sprite = xs.Factorys.Sprite.create("huodong_monthLegend", "HuodongScene01", null, true));
                                        } else {
                                            if ((this.m_type === xs.Constant_PartyType_ContinuousRecharge)) {
                                                // source line 765, bytecode pc 1065
                                                (_sprite = xs.Factorys.Sprite.create("huodong_continuousRecharge", "HuodongScene01", null, true));
                                            } else {
                                                if ((this.m_type === xs.Constant_PartyType_Advertisement_noTime)) {
                                                    // source line 768, bytecode pc 1138
                                                    (_sprite = xs.Factorys.Sprite.create("huodong_sendLingJu", "HuodongScene01", null, true));
                                                } else {
                                                    if ((this.m_type === xs.Constant_PartyType_AddConsume_Bundle)) {
                                                        // source line 771, bytecode pc 1175
                                                        (_modelEvent = this.m_partyEvent);
                                                        if ((_modelEvent.getBg() == xs.Constant_PartyType_Ganoderma)) {
                                                            // source line 773, bytecode pc 1251
                                                            (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume_Ganoderma", "HuodongScene01", null, true));
                                                        } else {
                                                            if ((_modelEvent.getBg() == xs.Constant_PartyType_Skill)) {
                                                                // source line 776, bytecode pc 1332
                                                                (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume_Skill", "HuodongScene01", null, true));
                                                            } else {
                                                                if ((_modelEvent.getBg() == xs.Constant_PartyType_Lvbu)) {
                                                                    // source line 778, bytecode pc 1413
                                                                    (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume_Shenlvbu", "HuodongScene01", null, true));
                                                                } else {
                                                                    if ((_modelEvent.getBg() == xs.Constant_PartyType_Lvmeng)) {
                                                                        // source line 780, bytecode pc 1494
                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume_Shenlvmeng", "HuodongScene01", null, true));
                                                                    } else {
                                                                        // source line 782, bytecode pc 1545
                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume", "HuodongScene01", null, true));
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        if (((this.m_type === xs.Constant_PartyType_Recharge_Rank) || (this.m_type === xs.Constant_PartyType_Consume_Rank))) {
                                                            // source line 787, bytecode pc 1641
                                                            (_sprite = xs.Factorys.Sprite.create("huodong_RechargeOrConsumeRank", "HuodongScene01", null, true));
                                                        } else {
                                                            if ((this.m_type === xs.Constant_PartyType_Double11)) {
                                                                // source line 791, bytecode pc 1714
                                                                (_sprite = xs.Factorys.Sprite.create("HuodongScene01_baowuduihuan", "HuodongScene01", null, true));
                                                            } else {
                                                                // source line 794, bytecode pc 1729
                                                                (_modelEvent = this.m_partyEvent);
                                                                if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Level)) {
                                                                    if ((_modelEvent.getBg() == xs.Constant_PartyType_new)) {
                                                                        // source line 802, bytecode pc 1835
                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_level_new", "HuodongScene01", null, true));
                                                                    } else {
                                                                        // source line 805, bytecode pc 1886
                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_level", "HuodongScene01", null, true));
                                                                    }
                                                                } else {
                                                                    if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Count)) {
                                                                        if ((_modelEvent.getBg() == xs.Constant_PartyType_whereIs)) {
                                                                            // source line 810, bytecode pc 1997
                                                                            (_sprite = xs.Factorys.Sprite.create("huodong_whereIs", "HuodongScene01", null, true));
                                                                        } else {
                                                                            if ((_modelEvent.getBg() == xs.Constant_PartyType_new)) {
                                                                                // source line 815, bytecode pc 2078
                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_count_new", "HuodongScene01", null, true));
                                                                            } else {
                                                                                if ((_modelEvent.getBg() == xs.Constant_PartyType_meiriqiandao2)) {
                                                                                    // source line 818, bytecode pc 2159
                                                                                    (_sprite = xs.Factorys.Sprite.create("huodong_count_meiriqiandao2", "HuodongScene01", null, true));
                                                                                } else {
                                                                                    // source line 822, bytecode pc 2210
                                                                                    (_sprite = xs.Factorys.Sprite.create("huodong_count", "HuodongScene01", null, true));
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Continuous)) {
                                                                            if ((_modelEvent.getBg() == xs.Constant_PartyType_new)) {
                                                                                // source line 828, bytecode pc 2321
                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_continuous_new", "HuodongScene01", null, true));
                                                                            } else {
                                                                                // source line 831, bytecode pc 2372
                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_continuous", "HuodongScene01", null, true));
                                                                            }
                                                                        } else {
                                                                            if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_AdvertisementeRechargeGiftsH)) {
                                                                                // source line 836, bytecode pc 2453
                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_Advertisement_rechargeGifts", "HuodongScene01", null, true));
                                                                            } else {
                                                                                if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_AdvertisementCollectGod)) {
                                                                                    // source line 840, bytecode pc 2534
                                                                                    (_sprite = xs.Factorys.Sprite.create("huodong_Advertisement_setGodWill", "HuodongScene01", null, true));
                                                                                } else {
                                                                                    if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_PresentYuanbao)) {
                                                                                        // source line 844, bytecode pc 2615
                                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_presentYuanbao", "HuodongScene01", null, true));
                                                                                    } else {
                                                                                        if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_LadderCompetition)) {
                                                                                            // source line 849, bytecode pc 2696
                                                                                            (_sprite = xs.Factorys.Sprite.create("huodong_ladderCompetition", "HuodongScene01", null, true));
                                                                                        } else {
                                                                                            if (((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Advertisement_fightRanking) || (_modelEvent.getPartyEventType() === xs.Constant_PartyType_Advertisement_fightRanking_Bundle))) {
                                                                                                // source line 854, bytecode pc 2808
                                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_Advertisement_fightRanking", "HuodongScene01", null, true));
                                                                                            } else {
                                                                                                if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_AddConsume)) {
                                                                                                    // source line 856, bytecode pc 2853
                                                                                                    (_modelEvent = this.m_partyEvent);
                                                                                                    if ((_modelEvent.getBg() == xs.Constant_PartyType_Ganoderma)) {
                                                                                                        // source line 858, bytecode pc 2929
                                                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume_Ganoderma", "HuodongScene01", null, true));
                                                                                                    } else {
                                                                                                        if ((_modelEvent.getBg() == xs.Constant_PartyType_Skill)) {
                                                                                                            // source line 861, bytecode pc 3010
                                                                                                            (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume_Skill", "HuodongScene01", null, true));
                                                                                                        } else {
                                                                                                            // source line 863, bytecode pc 3061
                                                                                                            (_sprite = xs.Factorys.Sprite.create("huodong_AddConsume", "HuodongScene01", null, true));
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Level_Bundle)) {
                                                                                                        // source line 867, bytecode pc 3142
                                                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_level_new", "HuodongScene01", null, true));
                                                                                                    } else {
                                                                                                        if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Finish_Dungeon)) {
                                                                                                            // source line 869, bytecode pc 3223
                                                                                                            (_sprite = xs.Factorys.Sprite.create("huodong_tongguanjiangli", "HuodongScene01", null, true));
                                                                                                        } else {
                                                                                                            if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Accumulat_Pay)) {
                                                                                                                // source line 871, bytecode pc 3304
                                                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_lianschong7tian", "HuodongScene01", null, true));
                                                                                                            } else {
                                                                                                                if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Accumulat_Summon)) {
                                                                                                                    // source line 873, bytecode pc 3385
                                                                                                                    (_sprite = xs.Factorys.Sprite.create("huodong_songshuxiangxiang", "HuodongScene01", null, true));
                                                                                                                } else {
                                                                                                                    if (((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Count_Bundle) || ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_DailyCheck) || (_modelEvent.getPartyEventType() === xs.Constant_PartyType_DailyCheck_Bundle)))) {
                                                                                                                        // source line 880, bytecode pc 3528
                                                                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_count_new", "HuodongScene01", null, true));
                                                                                                                    } else {
                                                                                                                        if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_Continuous_Bundle)) {
                                                                                                                            // source line 885, bytecode pc 3609
                                                                                                                            (_sprite = xs.Factorys.Sprite.create("huodong_continuous_new", "HuodongScene01", null, true));
                                                                                                                        } else {
                                                                                                                            if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_MonthSignin_Bundle)) {
                                                                                                                                // source line 890, bytecode pc 3690
                                                                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_monthSignin", "HuodongScene01", null, true));
                                                                                                                            } else {
                                                                                                                                if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_AdvertisementeRechargeGiftsH_Bundle)) {
                                                                                                                                    // source line 895, bytecode pc 3771
                                                                                                                                    (_sprite = xs.Factorys.Sprite.create("huodong_Advertisement_rechargeGifts", "HuodongScene01", null, true));
                                                                                                                                } else {
                                                                                                                                    if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_AdvertisementCollectGod_Bundle)) {
                                                                                                                                        // source line 900, bytecode pc 3852
                                                                                                                                        (_sprite = xs.Factorys.Sprite.create("huodong_Advertisement_setGodWill", "HuodongScene01", null, true));
                                                                                                                                    } else {
                                                                                                                                        if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_LadderCompetition_Bundle)) {
                                                                                                                                            // source line 905, bytecode pc 3933
                                                                                                                                            (_sprite = xs.Factorys.Sprite.create("huodong_ladderCompetition", "HuodongScene01", null, true));
                                                                                                                                        } else {
                                                                                                                                            if ((_modelEvent.getPartyEventType() === xs.Constant_PartyType_DailyRechargeAward_Bundle)) {
                                                                                                                                                // source line 910, bytecode pc 4014
                                                                                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_DailyRechargeAward", "HuodongScene01", null, true));
                                                                                                                                            } else {
                                                                                                                                                // source line 915, bytecode pc 4057
                                                                                                                                                cc.log(("party type----------" + _modelEvent.getPartyEventType()));
                                                                                                                                                // source line 916, bytecode pc 4103
                                                                                                                                                (_sprite = xs.Factorys.Sprite.create("huodong_level", "HuodongScene01", null, true));
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
    // source line 922, bytecode pc 4107
    return _sprite;
});
    // source line 925, bytecode pc 43
    (this.getHintNum = function() {
    var hintNum;
    if ((this.m_type === xs.Constant_PartyType_Training)) {
        // source line 929, bytecode pc 66
        (hintNum = xs.gd_mgr.getInstance().Hint.trainHintInfoCount());
    } else {
        if ((this.m_type === xs.Constant_PartyType_FstCharge)) {
            // source line 932, bytecode pc 134
            (hintNum = xs.gd_mgr.getInstance().Hint.fstpayHintInfoCount());
        } else {
            if ((this.m_type === xs.Constant_PartyType_Feast)) {
                // source line 935, bytecode pc 230
                (hintNum = (xs.Profile.GameData.PushInfo.getInstance().getFeastInfo().isEatAble() ? 1 : 0));
            } else {
                if ((this.m_type === xs.Constant_PartyType_Tiger)) {
                    // source line 938, bytecode pc 314
                    (hintNum = xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().getIsDraw());
                } else {
                    if ((this.m_type === xs.Constant_PartyType_Wishing)) {
                        // source line 940, bytecode pc 404
                        (hintNum = (xs.Profile.GameData.Mgr.getInstance().Hint.getWishinHint() ? 1 : 0));
                    } else {
                        if (((this.m_type === xs.Constant_PartyType_MonthCard) || ((this.m_type === xs.Constant_PartyType_RechargeDouble) || ((this.m_type === xs.Constant_PartyType_PresentYuanbao) || ((this.m_type === xs.Constant_PartyType_Advertisement_noTime) || ((this.m_type === xs.Constant_PartyType_MonthLegend) || ((this.m_type === xs.Constant_PartyType_LadderCompetition) || (this.m_type === xs.Constant_PartyType_Double11)))))))) {
                            // source line 950, bytecode pc 574
                            (hintNum = 0);
                        } else {
                            // source line 953, bytecode pc 612
                            (hintNum = (this.m_partyEvent.isReceiveAble() ? 1 : 0));
                        }
                    }
                }
            }
        }
    }
    // source line 955, bytecode pc 616
    return hintNum;
});
}));
// source line 988, bytecode pc 675
xs.Scene.Mgr.registerScene("PartyMenuScene", {
    "class": xs.Scene.PartyMenuScene,
    type: xs.Constant_SceneType_Main,
    area: [ "HuodongScene01", "HuodongScene02", "Cmn01" ]
});
