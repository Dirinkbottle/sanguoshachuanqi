// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/SpecificDialog.js:1
// source line 1, bytecode pc 16
(xs.SpecificDialog = {});
// source line 47, bytecode pc 140
(xs.SpecificDialog.base = xs.Views.Dialog.CommonDialog.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
},
    loadCCBI: function() {
},
    init: function(params) {
    if (!this._super(params)) {
        // source line 12, bytecode pc 23
        return false;
    }
    // source line 14, bytecode pc 25
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 17, bytecode pc 27
    this.getRealDialog().setBaseTouchPriority(priority);
},
    getRealDialog: function() {
    // source line 21, bytecode pc 34
    return (this._dialog || xs.error("getRealDialog() must return valid object"));
},
    addCloseButton: function() {
    var _dialog, _titleCCNode, _contentSize, _btnContentSize, _x, _y;
    // source line 26, bytecode pc 15
    (_dialog = this.getRealDialog());
    // source line 27, bytecode pc 33
    (_titleCCNode = _dialog.getTitleNode());
    // source line 28, bytecode pc 51
    (_contentSize = _titleCCNode.getContentSize());
    // source line 29, bytecode pc 90
    (this.m_closeBtn = xs.Views.Btn.create("Btn_Close"));
    // source line 30, bytecode pc 114
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 31, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 33, bytecode pc 135
    (_btnContentSize = this.m_closeBtn.getContentSize());
    // source line 34, bytecode pc 150
    (_x = (_contentSize.width - 32));
    // source line 35, bytecode pc 165
    (_y = (_contentSize.height - 32));
    // source line 41, bytecode pc 253
    xs.Utils.Node.attachNodes(_titleCCNode, this.m_closeBtn, { desc: "lb", sc: true, offset: { x: _x, y: _y } });
    // source line 45, bytecode pc 288
    this.m_closeBtn.setTouchPriority((_dialog.getBaseTouchPriority() - 1));
},
    setCloseBtnVisible: function(flag) {
    // source line 48, bytecode pc 21
    this.m_closeBtn.setVisible(flag);
}
}));
// source line 59, bytecode pc 219
(xs.SpecificDialog.common = xs.SpecificDialog.base.extend({
    ctor: function() {
    // source line 56, bytecode pc 12
    this._super();
},
    loadCCBI: function() {
},
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 62, bytecode pc 23
        return false;
    }
    // source line 64, bytecode pc 42
    (param = (params || {}));
    // source line 66, bytecode pc 129
    (this._dialog = xs.Views.Dialog.createTwoButtonDialog(param.title, param.content, param.leftText, param.rightText, param.leftCB, param.rightCB));
    // source line 67, bytecode pc 165
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 69, bytecode pc 178
    this.addCloseButton();
    // source line 70, bytecode pc 180
    return true;
}
}));
// source line 75, bytecode pc 294
xs.Views.Mgr.registerDialog("common", { "class": xs.SpecificDialog.common, styleType: xs.Constant_DlgStyleType_Small });
// source line 85, bytecode pc 373
(xs.SpecificDialog.NewCommon = xs.SpecificDialog.base.extend({
    ctor: function() {
    // source line 82, bytecode pc 12
    this._super();
},
    loadCCBI: function() {
},
    init: function(params) {
    var param, contentlabel;
    if (!this._super(params)) {
        // source line 88, bytecode pc 23
        return false;
    }
    // source line 90, bytecode pc 42
    (param = (params || {}));
    // source line 91, bytecode pc 78
    (contentlabel = xs.Factorys.Label.createByStyleId("LS_popUI2"));
    // source line 92, bytecode pc 102
    contentlabel.setString(param.content);
    // source line 94, bytecode pc 184
    (this._dialog = xs.Views.Dialog.createNewTwoButtonDialogWithContentNode(param.title, contentlabel, param.leftText, param.rightText, param.leftCB, param.rightCB));
    // source line 95, bytecode pc 220
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 96, bytecode pc 233
    this.addCloseButton();
    // source line 97, bytecode pc 235
    return true;
}
}));
// source line 102, bytecode pc 448
xs.Views.Mgr.registerDialog("NewCommon", { "class": xs.SpecificDialog.NewCommon, styleType: xs.Constant_DlgStyleType_Small });
// source line 118, bytecode pc 517
(xs.SpecificDialog.OneBtnDialog = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 110, bytecode pc 23
        return false;
    }
    // source line 112, bytecode pc 42
    (param = (params || {}));
    // source line 113, bytecode pc 111
    (this._dialog = xs.Views.Dialog.createOneButtonDialog(param.titleText, param.contentText, param.btnText, param.btnCallback));
    // source line 114, bytecode pc 147
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 115, bytecode pc 160
    this.addCloseButton();
    // source line 116, bytecode pc 162
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 119, bytecode pc 16
    this._super(priority);
    // source line 121, bytecode pc 51
    this._dialog.getRightButton().setTouchPriority((priority - 1));
}
}));
// source line 127, bytecode pc 592
xs.Views.Mgr.registerDialog("OneBtnDialog", { "class": xs.SpecificDialog.OneBtnDialog, styleType: xs.Constant_DlgStyleType_Small });
// source line 142, bytecode pc 661
(xs.SpecificDialog.OneBtnNoCloseDialog = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 135, bytecode pc 23
        return false;
    }
    // source line 137, bytecode pc 42
    (param = (params || {}));
    // source line 138, bytecode pc 111
    (this._dialog = xs.Views.Dialog.createOneButtonDialog(param.titleText, param.contentText, param.btnText, param.btnCallback));
    // source line 139, bytecode pc 147
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 140, bytecode pc 149
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 143, bytecode pc 16
    this._super(priority);
    // source line 145, bytecode pc 51
    this._dialog.getRightButton().setTouchPriority((priority - 1));
}
}));
// source line 151, bytecode pc 736
xs.Views.Mgr.registerDialog("OneBtnNoCloseDialog", { "class": xs.SpecificDialog.OneBtnNoCloseDialog, styleType: xs.Constant_DlgStyleType_Small });
// source line 155, bytecode pc 757
(xs.SpecificDialog.createGanodermaNotEnough = function(flag) {
    var obj;
    // source line 156, bytecode pc 4
    (obj = null);
    // source line 158, bytecode pc 120
    (obj = xs.Views.Dialog.createTwoButtonDialog("1070910025", "1070910026", xs.Tools.String.createString("auto_name_319"), xs.Tools.String.createString("auto_name_454"), null, function() {
    // source line 159, bytecode pc 45
    xs.Scene.Mgr.changeSceneByName("LadderScene", { pageIdx: 1 });
}));
    // source line 161, bytecode pc 124
    return obj;
});
// source line 165, bytecode pc 816
(xs.SpecificDialog.GanodermaNotEnough = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 167, bytecode pc 23
        return false;
    }
    // source line 169, bytecode pc 42
    (param = (params || {}));
    // source line 170, bytecode pc 79
    (this._dialog = xs.SpecificDialog.createGanodermaNotEnough(param.flag));
    // source line 171, bytecode pc 115
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 172, bytecode pc 128
    this.addCloseButton();
    // source line 173, bytecode pc 130
    return true;
}
}));
// source line 178, bytecode pc 891
xs.Views.Mgr.registerDialog("GanodermaNotEnough", { "class": xs.SpecificDialog.GanodermaNotEnough, styleType: xs.Constant_DlgStyleType_Small });
// source line 545, bytecode pc 1202
(xs.SpecificDialog.NotEnoughAndBuy = xs.SpecificDialog.base.extend({
    init: function(params) {
    var _ccbNode, itemModel, itemInfo, descStr, tipStr, priceStr, itemNum;
    if (!this._super(params)) {
        // source line 186, bytecode pc 29
        return false;
    }
    // source line 188, bytecode pc 45
    (this.params = params);
    // source line 192, bytecode pc 93
    (_ccbNode = cc.BuilderReader.load(xs.Cfg.CCBI.CommonDialogStyle2, this));
    // source line 193, bytecode pc 137
    _ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 195, bytecode pc 145
    (this.m_desc = null);
    // source line 196, bytecode pc 153
    (this.m_tip = null);
    // source line 197, bytecode pc 161
    (this.m_price = null);
    // source line 198, bytecode pc 206
    xs.Utils.UI.replaceCcbByCfg(_ccbNode, this.cfg.ccbCfg, this);
    // source line 200, bytecode pc 257
    (itemModel = xs.Models.Item.createWithBase((params.item_id + "")));
    // source line 201, bytecode pc 272
    switch (params.item_id) {
        case xs.Models.ItemID_PowerWithVipCondition:
        // source line 205, bytecode pc 480
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(params.item_id));
        // source line 206, bytecode pc 569
        (descStr = xs.Tools.String.createString("quickBuyPowerTip").convWithArgs([ itemInfo.name, itemInfo.effect_value ]));
        // source line 207, bytecode pc 591
        this.m_desc.setString(descStr);
        // source line 209, bytecode pc 649
        xs.Utils.replaceIcon(_ccbNode, this.cfg.icon.tag, itemModel.createIcon_Grade());
        if ((itemInfo.next_vip_level && itemInfo.next_all_num)) {
            // source line 213, bytecode pc 795
            (tipStr = xs.Tools.String.createString("quickBuyDungeonTimesTip_2").convWithArgs([ itemInfo.used_num, itemInfo.next_vip_level, itemInfo.next_all_num ]));
            // source line 214, bytecode pc 817
            this.m_tip.setString(tipStr);
        } else {
            // source line 216, bytecode pc 842
            this.m_tip.setVisible(false);
        }
        // source line 247, bytecode pc 935
        (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1070910038", _ccbNode, "Btn_Snatch", "Btn_RecoverPower", function() {
    // source line 226, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("ChallengeMenuScene");
    // source line 227, bytecode pc 59
    xs.Views.Mgr.hideDialog();
}.bind(this), function() {
    if ((parseInt(itemInfo.used_num) < parseInt(itemInfo.all_num))) {
        // source line 243, bytecode pc 163
        xs.Tools.Net.requestQuickBuy({ item_id: this.params.item_id, item_num: 1, currency_type: 1, disCountPrice: itemInfo.price }, function(jsonObj) {
    // source line 240, bytecode pc 58
    xs.Tools.Statistic.buy(params.item_id, 1, itemInfo.price);
    // source line 241, bytecode pc 116
    xs.Views.Mgr.showToastByStringId("1071310049", [ jsonObj.add_list[0].num ]);
    // source line 242, bytecode pc 143
    xs.Views.Mgr.hideDialog();
}.bind(this));
    } else {
        // source line 245, bytecode pc 201
        xs.Views.Mgr.showToastByStringId("1071310048");
    }
}.bind(this)));
        // source line 248, bytecode pc 948
        this.addCloseButton();
        // source line 250, bytecode pc 1019
        (priceStr = xs.Tools.String.createString("price_yuanbao").convWithArgs([ itemInfo.price ]));
        // source line 251, bytecode pc 1086
        this.m_price.setStringByStrings([ xs.Tools.String.createString("priceStr"), priceStr ]);
        break;
        case xs.Models.ItemID_EnergyWithVipCondition:
        // source line 257, bytecode pc 1174
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(params.item_id));
        // source line 259, bytecode pc 1263
        (descStr = xs.Tools.String.createString("quickBuyEnergyTip").convWithArgs([ itemInfo.name, itemInfo.effect_value ]));
        // source line 260, bytecode pc 1285
        this.m_desc.setString(descStr);
        // source line 262, bytecode pc 1343
        xs.Utils.replaceIcon(_ccbNode, this.cfg.icon.tag, itemModel.createIcon_Grade());
        if ((itemInfo.next_vip_level && itemInfo.next_all_num)) {
            // source line 266, bytecode pc 1489
            (tipStr = xs.Tools.String.createString("quickBuyDungeonTimesTip_2").convWithArgs([ itemInfo.used_num, itemInfo.next_vip_level, itemInfo.next_all_num ]));
            // source line 268, bytecode pc 1511
            this.m_tip.setString(tipStr);
        } else {
            // source line 270, bytecode pc 1536
            this.m_tip.setVisible(false);
        }
        // source line 298, bytecode pc 1629
        (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1071310210", _ccbNode, "Btn_GoDungeon", "Btn_RecoverEnergy", function() {
    // source line 279, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 280, bytecode pc 59
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}.bind(this), function() {
    if ((parseInt(itemInfo.used_num) < parseInt(itemInfo.all_num))) {
        // source line 294, bytecode pc 163
        xs.Tools.Net.requestQuickBuy({ item_id: this.params.item_id, item_num: 1, currency_type: 1, disCountPrice: itemInfo.price }, function(jsonObj) {
    // source line 291, bytecode pc 58
    xs.Tools.Statistic.buy(params.item_id, 1, itemInfo.price);
    // source line 292, bytecode pc 116
    xs.Views.Mgr.showToastByStringId("1071310051", [ jsonObj.add_list[0].num ]);
    // source line 293, bytecode pc 143
    xs.Views.Mgr.hideDialog();
}.bind(this));
    } else {
        // source line 296, bytecode pc 201
        xs.Views.Mgr.showToastByStringId("1071310050");
    }
}.bind(this)));
        // source line 299, bytecode pc 1642
        this.addCloseButton();
        // source line 301, bytecode pc 1713
        (priceStr = xs.Tools.String.createString("price_yuanbao").convWithArgs([ itemInfo.price ]));
        // source line 302, bytecode pc 1780
        this.m_price.setStringByStrings([ xs.Tools.String.createString("priceStr"), priceStr ]);
        break;
        case xs.Models.ItemID_BattleWithVipCondition:
        // source line 308, bytecode pc 1868
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(params.item_id));
        // source line 310, bytecode pc 1901
        xs.dump("itemInfo", itemInfo);
        // source line 312, bytecode pc 1990
        (descStr = xs.Tools.String.createString("quickBuyChgTimesTip").convWithArgs([ itemInfo.name, itemInfo.effect_value ]));
        // source line 313, bytecode pc 2012
        this.m_desc.setString(descStr);
        // source line 315, bytecode pc 2070
        xs.Utils.replaceIcon(_ccbNode, this.cfg.icon.tag, itemModel.createIcon_Grade());
        // source line 318, bytecode pc 2090
        this.m_tip.setVisible(false);
        // source line 320, bytecode pc 2156
        (itemNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(params.item_id));
        if ((itemNum > 0)) {
            // source line 343, bytecode pc 2259
            (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1071310212", _ccbNode, "Btn_Cancel", "Btn_Use", function() {
    // source line 328, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this), function() {
    var param;
    // source line 331, bytecode pc 9
    (param = {});
    // source line 332, bytecode pc 91
    (param.user_item_id = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(params.item_id).getPkId());
    // source line 333, bytecode pc 101
    (param.item_num = 1);
    // source line 341, bytecode pc 146
    xs.Tools.Net.requestUseItem(param, function(jsonObj) {
    // source line 335, bytecode pc 57
    xs.Views.Mgr.showToastByStringId("1071310053", [ jsonObj.add_list[0].num ]);
    // source line 336, bytecode pc 84
    xs.Views.Mgr.hideDialog();
}, function() {
}, this);
}.bind(this)));
            // source line 346, bytecode pc 2319
            (priceStr = xs.Tools.String.createString("havedNum").convWithArgs([ itemNum ]));
            // source line 347, bytecode pc 2386
            this.m_price.setStringByStrings([ xs.Tools.String.createString("haved"), priceStr ]);
        } else {
            // source line 370, bytecode pc 2484
            (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1071310212", _ccbNode, "Btn_Cancel", "Btn_RecoverTimes", function() {
    // source line 356, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this), function() {
    // source line 369, bytecode pc 99
    xs.Tools.Net.requestQuickBuy({ item_id: this.params.item_id, item_num: 1, currency_type: 1, disCountPrice: itemInfo.price }, function(jsonObj) {
    // source line 366, bytecode pc 58
    xs.Tools.Statistic.buy(params.item_id, 1, itemInfo.price);
    // source line 367, bytecode pc 116
    xs.Views.Mgr.showToastByStringId("1071310053", [ jsonObj.add_list[0].num ]);
    // source line 368, bytecode pc 143
    xs.Views.Mgr.hideDialog();
}.bind(this));
}.bind(this)));
            // source line 371, bytecode pc 2497
            this.addCloseButton();
            // source line 373, bytecode pc 2568
            (priceStr = xs.Tools.String.createString("price_yuanbao").convWithArgs([ itemInfo.price ]));
            // source line 374, bytecode pc 2635
            this.m_price.setStringByStrings([ xs.Tools.String.createString("priceStr"), priceStr ]);
        }
        break;
        case xs.Models.ItemID_TenChallengeCard:
        // source line 381, bytecode pc 2723
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(params.item_id));
        // source line 383, bytecode pc 2756
        xs.dump("itemInfo", itemInfo);
        // source line 385, bytecode pc 2845
        (descStr = xs.Tools.String.createString("quickBuyTenChgTimesTip").convWithArgs([ itemInfo.name, itemInfo.effect_value ]));
        // source line 386, bytecode pc 2867
        this.m_desc.setString(descStr);
        // source line 388, bytecode pc 2925
        xs.Utils.replaceIcon(_ccbNode, this.cfg.icon.tag, itemModel.createIcon_Grade());
        // source line 391, bytecode pc 2945
        this.m_tip.setVisible(false);
        // source line 393, bytecode pc 3011
        (itemNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(params.item_id));
        if ((itemNum > 0)) {
            // source line 416, bytecode pc 3114
            (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1071310212", _ccbNode, "Btn_Cancel", "Btn_Use", function() {
    // source line 402, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this), function() {
    var param;
    // source line 405, bytecode pc 9
    (param = {});
    // source line 406, bytecode pc 91
    (param.user_item_id = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(params.item_id).getPkId());
    // source line 407, bytecode pc 101
    (param.item_num = 1);
    // source line 415, bytecode pc 146
    xs.Tools.Net.requestUseItem(param, function(jsonObj) {
    // source line 409, bytecode pc 57
    xs.Views.Mgr.showToastByStringId("1071310053", [ jsonObj.add_list[0].num ]);
    // source line 410, bytecode pc 84
    xs.Views.Mgr.hideDialog();
}, function() {
}, this);
}.bind(this)));
            // source line 419, bytecode pc 3174
            (priceStr = xs.Tools.String.createString("havedNum").convWithArgs([ itemNum ]));
            // source line 420, bytecode pc 3241
            this.m_price.setStringByStrings([ xs.Tools.String.createString("haved"), priceStr ]);
        } else {
            // source line 443, bytecode pc 3339
            (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1071310212", _ccbNode, "Btn_Cancel", "Btn_RecoverTimes", function() {
    // source line 429, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this), function() {
    // source line 442, bytecode pc 99
    xs.Tools.Net.requestQuickBuy({ item_id: this.params.item_id, item_num: 1, currency_type: 1, disCountPrice: itemInfo.price }, function(jsonObj) {
    // source line 439, bytecode pc 58
    xs.Tools.Statistic.buy(params.item_id, 1, itemInfo.price);
    // source line 440, bytecode pc 116
    xs.Views.Mgr.showToastByStringId("1071310053", [ jsonObj.add_list[0].num ]);
    // source line 441, bytecode pc 143
    xs.Views.Mgr.hideDialog();
}.bind(this));
}.bind(this)));
            // source line 444, bytecode pc 3352
            this.addCloseButton();
            // source line 446, bytecode pc 3423
            (priceStr = xs.Tools.String.createString("price_yuanbao").convWithArgs([ itemInfo.price ]));
            // source line 447, bytecode pc 3490
            this.m_price.setStringByStrings([ xs.Tools.String.createString("priceStr"), priceStr ]);
        }
        break;
        case xs.Models.ItemID_RecoveryEliteDungeonTimes:
        case xs.Models.ItemID_RecoveryDungeonTimes:
        // source line 455, bytecode pc 3578
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(params.item_id));
        // source line 457, bytecode pc 3658
        (descStr = xs.Tools.String.createString("quickBuyDungeonTimesTip").convWithArgs([ itemInfo.name, "" ]));
        // source line 458, bytecode pc 3680
        this.m_desc.setString(descStr);
        // source line 460, bytecode pc 3738
        xs.Utils.replaceIcon(_ccbNode, this.cfg.icon.tag, itemModel.createIcon_Grade());
        if (itemInfo) {
            if ((params.itemUsedTimes !== null)) {
                // source line 463, bytecode pc 3802
                (itemInfo.used_num = params.itemUsedTimes);
                if ((itemInfo.used_num >= itemInfo.length)) {
                    // source line 465, bytecode pc 3882
                    (itemInfo.price = itemInfo[(itemInfo.used_num - 1)].item_price);
                } else {
                    // source line 467, bytecode pc 3931
                    (itemInfo.price = itemInfo[itemInfo.used_num].item_price);
                }
            }
            // source line 471, bytecode pc 4038
            (tipStr = xs.Tools.String.createString("quickBuyDungeonTimesTip_2").convWithArgs([ itemInfo.used_num, itemInfo.next_vip_level, itemInfo.next_all_num ]));
            // source line 473, bytecode pc 4060
            this.m_tip.setString(tipStr);
        } else {
            // source line 475, bytecode pc 4085
            this.m_tip.setVisible(false);
        }
        // source line 501, bytecode pc 4178
        (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("", _ccbNode, "Btn_Cancel", "Btn_RecoverTimes", function() {
    // source line 484, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this), function() {
    // source line 500, bytecode pc 126
    xs.Tools.Net.requestQuickBuy({
    item_id: this.params.item_id,
    item_num: 1,
    currency_type: 1,
    disCountPrice: itemInfo.price,
    extra_param: this.params.dungeon.getId()
}, function(jsonObj) {
    // source line 496, bytecode pc 58
    xs.Tools.Statistic.buy(params.item_id, 1, itemInfo.price);
    // source line 497, bytecode pc 83
    this.params.dungeon.setPlayedTimes(0);
    // source line 498, bytecode pc 121
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_DungeonTimes);
    // source line 499, bytecode pc 148
    xs.Views.Mgr.hideDialog();
}.bind(this));
}.bind(this)));
        // source line 502, bytecode pc 4234
        this._dialog._titlelabel.setString(xs.Tools.String.createString("auto_name_455"));
        // source line 504, bytecode pc 4247
        this.addCloseButton();
        // source line 506, bytecode pc 4318
        (priceStr = xs.Tools.String.createString("price_yuanbao").convWithArgs([ itemInfo.price ]));
        // source line 507, bytecode pc 4385
        this.m_price.setStringByStrings([ xs.Tools.String.createString("priceStr"), priceStr ]);
        break;
        default:
        break;
    }
    // source line 512, bytecode pc 4410
    this.addChild(this._dialog);
    // source line 514, bytecode pc 4412
    return true;
},
    cfg: {
        desc: { tag: 10 },
        icon: { tag: 11 },
        tip: { tag: 12 },
        priceStr: { tag: 13 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_desc", id: "LS_popUI2" },
            { tag: 12, type: "ls", name: "m_tip", id: "LS_popUI2" },
            { tag: 13, type: "ls_ext", name: "m_price", ids: [ "LS_popUI2", "LS_popUI3" ] }
        ]
    }
}));
// source line 550, bytecode pc 1228
(xs.SpecificDialog.NotEnoughAndBuy.create = function(params) {
    var ret;
    // source line 551, bytecode pc 23
    (ret = new xs.SpecificDialog.NotEnoughAndBuy());
    if ((ret && ret.init(params))) {
        // source line 553, bytecode pc 59
        return ret;
    }
    // source line 556, bytecode pc 88
    xs.assert(false, "xs.SpecificDialog.NotEnoughAndBuy.create fail", ret);
    // source line 558, bytecode pc 90
    return null;
});
// source line 562, bytecode pc 1303
xs.Views.Mgr.registerDialog("NotEnoughAndBuy", { "class": xs.SpecificDialog.NotEnoughAndBuy, styleType: xs.Constant_DlgStyleType_Small });
// source line 565, bytecode pc 1324
(xs.SpecificDialog.createGoldNotEnough = function() {
    var obj, func, _ccbNode;
    // source line 566, bytecode pc 4
    (obj = null);
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargeCount() > 0)) {
        // source line 569, bytecode pc 78
        (func = function() {
    // source line 570, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 571, bytecode pc 59
    xs.Views.Mgr.showDialogByName("ChargeDialog");
});
        // source line 573, bytecode pc 192
        (obj = xs.Views.Dialog.createTwoButtonDialog("1070910027", "1070910028", xs.Tools.String.createString("auto_name_319"), xs.Tools.String.createString("auto_name_115"), null, func));
        // source line 574, bytecode pc 196
        return obj;
    } else {
        // source line 577, bytecode pc 249
        (_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.CommonDialogStyle1, this));
        // source line 578, bytecode pc 258
        (func = function() {
});
        // source line 581, bytecode pc 302
        _ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 582, bytecode pc 360
        (obj = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1070910027", _ccbNode, "Btn_ShutDown", "Btn_Charge", null, func));
        // source line 583, bytecode pc 364
        return obj;
    }
});
// source line 588, bytecode pc 1383
(xs.SpecificDialog.GoldNotEnough = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 590, bytecode pc 23
        return false;
    }
    // source line 592, bytecode pc 42
    (param = (params || {}));
    // source line 593, bytecode pc 79
    (this._dialog = xs.SpecificDialog.createGoldNotEnough(param.flag));
    // source line 594, bytecode pc 115
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 595, bytecode pc 128
    this.addCloseButton();
    // source line 596, bytecode pc 130
    return true;
}
}));
// source line 601, bytecode pc 1458
xs.Views.Mgr.registerDialog("GoldNotEnough", { "class": xs.SpecificDialog.GoldNotEnough, styleType: xs.Constant_DlgStyleType_Small });
// source line 605, bytecode pc 1479
(xs.SpecificDialog.createChallengeNotEnough = function(params) {
    var fightTimes, price, vipLevel, obj;
    // source line 606, bytecode pc 9
    (this.dungeonModel = params);
    // source line 607, bytecode pc 36
    (fightTimes = (this.dungeonModel.getPlayedTimes() + ""));
    // source line 608, bytecode pc 69
    (price = (this.dungeonModel.getResetChgTimesPrice() + ""));
    // source line 610, bytecode pc 131
    (vipLevel = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 612, bytecode pc 136
    (obj = null);
    if ((vipLevel < 3)) {
        // source line 617, bytecode pc 298
        (obj = xs.Views.Dialog.createTwoButtonDialog("1070910043", "1070910044", xs.Tools.String.createString("auto_name_146"), xs.Tools.String.createString("auto_name_115"), null, function() {
    // source line 616, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_456"));
}, [ fightTimes, "3", price ]));
    } else {
        // source line 634, bytecode pc 467
        (obj = xs.Views.Dialog.createTwoButtonDialog("1070910043", "1070910044", xs.Tools.String.createString("auto_name_146"), xs.Tools.String.createString("auto_name_457"), null, function() {
    // source line 633, bytecode pc 120
    xs.Tools.Net.requestQuickBuy({
    item_id: xs.Models.ItemID_RecoveryDungeonTimes,
    item_num: 1,
    extra_param: this.dungeonModel.getId(),
    currency_type: 1,
    disCountPrice: price
}, function(jsonObj) {
    // source line 629, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_458"));
    // source line 630, bytecode pc 79
    this.dungeonModel.setPlayedTimes(0);
    // source line 631, bytecode pc 117
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_DungeonTimes);
    // source line 632, bytecode pc 144
    xs.Views.Mgr.hideDialog();
}.bind(this));
}.bind(this), [ fightTimes, "3", price ]));
    }
    // source line 637, bytecode pc 471
    return obj;
});
// source line 641, bytecode pc 1538
(xs.SpecificDialog.ChallengeNotEnough = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 643, bytecode pc 23
        return false;
    }
    // source line 645, bytecode pc 42
    (param = (params || {}));
    // source line 646, bytecode pc 74
    (this._dialog = xs.SpecificDialog.createChallengeNotEnough(param));
    // source line 647, bytecode pc 110
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 648, bytecode pc 123
    this.addCloseButton();
    // source line 649, bytecode pc 125
    return true;
}
}));
// source line 654, bytecode pc 1613
xs.Views.Mgr.registerDialog("ChallengeNotEnough", { "class": xs.SpecificDialog.ChallengeNotEnough, styleType: xs.Constant_DlgStyleType_Small });
// source line 658, bytecode pc 1634
(xs.SpecificDialog.createEditSignatureDialog = function() {
    var ccbCfg, _ccbNode, func, bgsprite, pos;
    // source line 664, bytecode pc 55
    (ccbCfg = [ { tag: 100, type: "ls", id: "LS_popUI2", stringId: "1070910011" } ]);
    // source line 667, bytecode pc 103
    (_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.EditSignatureDialog, this));
    // source line 695, bytecode pc 125
    (func = function() {
    var param, tmpfunc, _cmd_string;
    // source line 669, bytecode pc 9
    (param = {});
    // source line 670, bytecode pc 18
    (tmpfunc = function() {
    // source line 672, bytecode pc 22
    xs.log("个性签名修改成功");
    // source line 673, bytecode pc 112
    xs.Tools.Statistic.setUserInfo(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), 0, 0);
});
    // source line 675, bytecode pc 44
    (param.sign = this._signEditBox.getText());
    // source line 677, bytecode pc 62
    (_cmd_string = ("" + param.sign));
    if (xs.Tools.CmdShell.doShell(_cmd_string)) {
        // source line 680, bytecode pc 99
        return void 0;
    }
    if ((param.sign != null)) {
        // source line 684, bytecode pc 158
        (param.sign = xs.Tools.UI.FilteringSensitiveWords(param.sign));
    }
    if (((param.sign == null) || (param.sign == ""))) {
        // source line 687, bytecode pc 253
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_459"));
        // source line 688, bytecode pc 255
        return void 0;
    }
    // source line 691, bytecode pc 282
    xs.Views.Mgr.hideDialog();
    if ((param.sign != xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerSignature())) {
        // source line 693, bytecode pc 391
        xs.Tools.Net.requestSaveUserSign(param, tmpfunc, this);
    }
}.bind(this));
    // source line 696, bytecode pc 169
    _ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 698, bytecode pc 206
    xs.Utils.UI.replaceCcbByCfg(_ccbNode, ccbCfg, this);
    // source line 701, bytecode pc 262
    (bgsprite = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_0_7_youshidi.frameName));
    // source line 702, bytecode pc 293
    (pos = _ccbNode.getChildByTag(1).getPosition());
    // source line 703, bytecode pc 349
    (this._signEditBox = cc.EditBox.create(cc.size(365, 56), bgsprite));
    // source line 704, bytecode pc 393
    this._signEditBox.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 705, bytecode pc 437
    this._signEditBox.setFontColor(cc.c3b(122, 68, 3));
    // source line 706, bytecode pc 458
    this._signEditBox.setPlaceholderFontSize(26);
    // source line 707, bytecode pc 479
    this._signEditBox.setFontSize(26);
    // source line 708, bytecode pc 530
    this._signEditBox.setPlaceHolder(xs.Tools.String.createString("auto_name_460"));
    // source line 709, bytecode pc 559
    this._signEditBox.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 710, bytecode pc 579
    this._signEditBox.setDelegate(this);
    // source line 711, bytecode pc 603
    this._signEditBox.setText("");
    // source line 712, bytecode pc 625
    this._signEditBox.setPosition(pos);
    // source line 713, bytecode pc 677
    this._signEditBox.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    // source line 714, bytecode pc 715
    xs.Utils.Node.attachNodes(_ccbNode, this._signEditBox);
    // source line 719, bytecode pc 740
    (this.editBoxEditingDidBegin = function(editBox) {
    // source line 717, bytecode pc 22
    xs.log("editBox DidBegin !");
}.bind(this));
    // source line 733, bytecode pc 765
    (this.editBoxEditingDidEnd = function(editBox) {
    var _filterResult;
    // source line 722, bytecode pc 22
    xs.log("editBox DidEnd !");
    if ((this._signEditBox.getText() != null)) {
        if ((this._signEditBox.getText().length > 0)) {
            // source line 725, bytecode pc 84
            (_filterResult = "");
            if ((this._signEditBox.getText() != "cmd debug")) {
                // source line 727, bytecode pc 160
                (_filterResult = xs.Tools.UI.FilteringSensitiveWords(this._signEditBox.getText()));
                // source line 728, bytecode pc 182
                this._signEditBox.setText(_filterResult);
            }
            // source line 730, bytecode pc 190
            (this._signEditBox_status = null);
        }
    }
}.bind(this));
    // source line 738, bytecode pc 790
    (this.editBoxTextChanged = function(editBox, text) {
    // source line 736, bytecode pc 26
    xs.log(("editBox, TextChanged, text: " + text));
    // source line 737, bytecode pc 34
    (this._signEditBox_status = true);
}.bind(this));
    // source line 748, bytecode pc 815
    (this.editBoxReturn = function(editBox) {
    var _text;
    // source line 741, bytecode pc 22
    xs.log("editBox editBoxReturn !");
    if ((this._signEditBox.getText() != null)) {
        if ((this._signEditBox.getText() != "cmd debug")) {
            // source line 744, bytecode pc 122
            (_text = xs.Tools.UI.FilteringSensitiveWords(this._signEditBox.getText()));
            // source line 745, bytecode pc 144
            this._signEditBox.setText(_text);
        }
    }
}.bind(this));
    // source line 750, bytecode pc 876
    (this._obj = xs.Views.Dialog.createTwoButtonDialogWithContentNode("dialog_01", _ccbNode, "Btn_Cancel", "Btn_Confirm_2", null, func));
    // source line 751, bytecode pc 883
    return this._obj;
});
// source line 754, bytecode pc 1693
(xs.SpecificDialog.EditSignatureDialog = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 756, bytecode pc 23
        return false;
    }
    // source line 758, bytecode pc 42
    (param = (params || {}));
    // source line 759, bytecode pc 70
    (this._dialog = xs.SpecificDialog.createEditSignatureDialog());
    // source line 760, bytecode pc 106
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 761, bytecode pc 119
    this.addCloseButton();
    // source line 762, bytecode pc 121
    return true;
}
}));
// source line 767, bytecode pc 1768
xs.Views.Mgr.registerDialog("EditSignatureDialog", { "class": xs.SpecificDialog.EditSignatureDialog, styleType: xs.Constant_DlgStyleType_Small });
// source line 770, bytecode pc 1789
(xs.SpecificDialog.createPlayerChangeNameDialog = function() {
    var cfg, _ccbNode, func, bgsprite, pos, size, diceFunc;
    // source line 785, bytecode pc 126
    (cfg = {
    editBox: 1,
    dice: 2,
    ccbCfg: [
        { tag: 10, type: "ls", id: "LS_popUI2", stringId: "1070910014" },
        { tag: 11, type: "ls", id: "LS_popUI2", stringId: "1070910015" }
    ]
});
    // source line 789, bytecode pc 174
    (_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.PlayerChangeNameDialog, this));
    // source line 791, bytecode pc 216
    xs.Utils.UI.replaceCcbByCfg(_ccbNode, cfg.ccbCfg, this);
    // source line 857, bytecode pc 238
    (func = function() {
    var param, tmpfunc, errfunc;
    // source line 794, bytecode pc 9
    (param = {});
    // source line 795, bytecode pc 18
    (tmpfunc = function() {
    var player, userInfoArgs;
    // source line 796, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 797, bytecode pc 68
    xs.Guide.GuideMgr.endStepBySequence([ "20000" ]);
    // source line 798, bytecode pc 91
    xs.log("名字修改成功");
    if (xsc.Tools.PaySys.isUsingEasySdk()) {
        if ((xs.Guide.GuideMgr.getIsOver() == false)) {
            // source line 804, bytecode pc 293
            xs.Tools.Jsb.EasySdk.Statistic.event_createRole({
    account_id: xs.Tools.Jsb.getDeviceId(),
    role_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId()
});
        }
    }
    // source line 809, bytecode pc 383
    xs.Tools.Statistic.setUserInfo(xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), 0, 0);
    // source line 812, bytecode pc 434
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 819, bytecode pc 603
    (userInfoArgs = ((((((((((((player.getPlayerId() + "|") + player.getPlayerName()) + "|") + player.getPlayerLevel()) + "|") + xs.Profile.UserCfg.getGameAddr().id) + "|") + xs.Profile.UserCfg.getGameAddr().name) + "|") + "selectRole") + "|") + player.getPlayerVipLevel()));
    // source line 820, bytecode pc 652
    xs.JsbConnecter.getInstance().invoke("UserInfo", "", userInfoArgs);
});
    // source line 822, bytecode pc 27
    (errfunc = function(params) {
    // source line 824, bytecode pc 26
    xs.dump("params", params);
    if ((params.error_code === "e_8047")) {
        // source line 826, bytecode pc 105
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_577"));
        // source line 827, bytecode pc 107
        return true;
    }
});
    // source line 830, bytecode pc 53
    (param.nickname = this._signEditBox.getText());
    if ((param.nickname != null)) {
        // source line 838, bytecode pc 100
        xs.log(("IsHaveSensitiveWords " + param.nickname));
        if (xs.Tools.UI.IsHaveSensitiveWords(param.nickname)) {
            // source line 840, bytecode pc 200
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_461"));
            // source line 841, bytecode pc 202
            return void 0;
        }
    }
    if (((param.nickname == null) || (param.sign == ""))) {
        // source line 845, bytecode pc 297
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_462"));
        // source line 846, bytecode pc 299
        return void 0;
    }
    if ((param.nickname != xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerName())) {
        // source line 850, bytecode pc 412
        xs.Tools.Net.requestSaveUserNewName(param, tmpfunc, errfunc, this);
    } else {
        // source line 853, bytecode pc 444
        xs.Views.Mgr.hideDialog();
        // source line 854, bytecode pc 504
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_463"));
    }
}.bind(this));
    // source line 858, bytecode pc 282
    _ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 861, bytecode pc 338
    (bgsprite = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_0_7_youshidi.frameName));
    // source line 862, bytecode pc 376
    (pos = _ccbNode.getChildByTag(cfg.editBox).getPosition());
    // source line 863, bytecode pc 414
    (size = _ccbNode.getChildByTag(cfg.editBox).getContentSize());
    // source line 864, bytecode pc 450
    (this._signEditBox = cc.EditBox.create(size, bgsprite));
    // source line 865, bytecode pc 494
    this._signEditBox.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 866, bytecode pc 538
    this._signEditBox.setFontColor(cc.c3b(122, 68, 3));
    // source line 867, bytecode pc 559
    this._signEditBox.setPlaceholderFontSize(26);
    // source line 868, bytecode pc 580
    this._signEditBox.setFontSize(26);
    // source line 869, bytecode pc 631
    this._signEditBox.setPlaceHolder(xs.Tools.String.createString("auto_name_464"));
    // source line 870, bytecode pc 660
    this._signEditBox.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 871, bytecode pc 680
    this._signEditBox.setDelegate(this);
    // source line 872, bytecode pc 704
    this._signEditBox.setText("");
    // source line 873, bytecode pc 726
    this._signEditBox.setPosition(pos);
    // source line 874, bytecode pc 778
    this._signEditBox.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    // source line 875, bytecode pc 816
    xs.Utils.Node.attachNodes(_ccbNode, this._signEditBox);
    // source line 880, bytecode pc 841
    (this.editBoxEditingDidBegin = function(editBox) {
}.bind(this));
    // source line 894, bytecode pc 866
    (this.editBoxEditingDidEnd = function(editBox) {
    var _text;
    // source line 883, bytecode pc 29
    xs.log(("editBox DidEnd !" + this._signEditBox_status));
    // source line 886, bytecode pc 50
    (_text = this._signEditBox.getText());
    if (((_text !== null) && ((_text !== undefined) && (_text.length > 0)))) {
        // source line 891, bytecode pc 99
        (this._signEditBox_status = null);
    }
}.bind(this));
    // source line 899, bytecode pc 891
    (this.editBoxTextChanged = function(editBox, text) {
    // source line 898, bytecode pc 7
    (this._signEditBox_status = true);
}.bind(this));
    // source line 913, bytecode pc 916
    (this.editBoxReturn = function(editBox) {
    var _text;
    // source line 902, bytecode pc 22
    xs.log("editBox editBoxReturn !");
    if ((this._signEditBox.getText() != null)) {
        // source line 909, bytecode pc 94
        (_text = xs.Tools.UI.FilteringSensitiveWords(this._signEditBox.getText()));
        // source line 910, bytecode pc 116
        this._signEditBox.setText(_text);
    }
}.bind(this));
    // source line 915, bytecode pc 990
    (this._btnDice = xs.Utils.replaceButton(_ccbNode, cfg.dice, xs.Views.Btn.createByStyleId("BS_DiceButton")));
    // source line 916, bytecode pc 1042
    this._btnDice.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    // source line 922, bytecode pc 1064
    (diceFunc = function() {
    var str;
    // source line 920, bytecode pc 29
    (str = xs.Tools.Model.getRandomName());
    // source line 921, bytecode pc 51
    this._signEditBox.setText(str);
}.bind(this));
    // source line 924, bytecode pc 1086
    this._btnDice.setOnClickCallBack(diceFunc);
    // source line 928, bytecode pc 1210
    this._btnDice.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.RotateBy.create(0.1, -20), cc.RotateBy.create(0.1, 20))));
    if ((xs.Guide.GuideMgr.getIsOver() == false)) {
        // source line 932, bytecode pc 1304
        (this._obj = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1070910013", _ccbNode, "Btn_Cancel", "Btn_Confirm_2", null, func));
        // source line 933, bytecode pc 1335
        this._obj.getLeftButton().setEnabled(false);
    } else {
        // source line 936, bytecode pc 1401
        (this._obj = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1070910013", _ccbNode, "Btn_Cancel", "Btn_Confirm_2", null, func));
    }
    // source line 940, bytecode pc 1408
    return this._obj;
});
// source line 943, bytecode pc 1848
(xs.SpecificDialog.PlayerChangeNameDialog = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 945, bytecode pc 23
        return false;
    }
    // source line 947, bytecode pc 42
    (param = (params || {}));
    // source line 948, bytecode pc 70
    (this._dialog = xs.SpecificDialog.createPlayerChangeNameDialog());
    // source line 949, bytecode pc 106
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 951, bytecode pc 108
    return true;
}
}));
// source line 956, bytecode pc 1923
xs.Views.Mgr.registerDialog("PlayerChangeNameDialog", { "class": xs.SpecificDialog.PlayerChangeNameDialog, styleType: xs.Constant_DlgStyleType_Small });
