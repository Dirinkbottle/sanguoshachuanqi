// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/Adventure.js:1
// source line 4, bytecode pc 16
(xs.SpecificDialog.Adventure_Box = 1);
// source line 5, bytecode pc 34
(xs.SpecificDialog.Adventure_Item = 2);
// source line 6, bytecode pc 52
(xs.SpecificDialog.Adventure_Gereral_Soul = 3);
// source line 7, bytecode pc 70
(xs.SpecificDialog.Adventure_Training = 5);
// source line 8, bytecode pc 88
(xs.SpecificDialog.Adventure_Skill_Piece = 8);
// source line 31, bytecode pc 236
(xs.SpecificDialog.Adventure_Cmn_Cfg = {
    talking_bg: { tag: 8 },
    name: { tag: 9 },
    title: { tag: 10 },
    talking: { tag: 11 },
    card: { tag: 12 },
    icon: { tag: 13 },
    reward: { tag: 100 }
});
// source line 43, bytecode pc 294
(xs.SpecificDialog.Adventure_Chest_Cfg = { right_button: { tag: 15 }, button_bottom_2: { tag: 21 } });
// source line 50, bytecode pc 334
(xs.SpecificDialog.Adventure_ForageTask_Cfg = { right_button: { tag: 15 } });
// source line 59, bytecode pc 374
(xs.SpecificDialog.Adventure_Exp_Cfg = { right_button: { tag: 15 } });
// source line 67, bytecode pc 414
(xs.SpecificDialog.Adventure_Treasure_Cfg = { left_button: { tag: 14 } });
// source line 74, bytecode pc 454
(xs.SpecificDialog.Adventure_General_Cfg = { right_button: { tag: 15 } });
// source line 80, bytecode pc 494
(xs.SpecificDialog.Achieve_Cfg = { left_button: { tag: 14 } });
// source line 207, bytecode pc 811
(xs.SpecificDialog._BaseAdventure = xs.SpecificDialog.base.extend({
    loadCCBI: function() {
    var visibleSize, pos;
    // source line 89, bytecode pc 25
    this.assert(this._ccb_name, "the _ccb_name is empty!");
    // source line 90, bytecode pc 60
    (this._ccbNode = xs.ccb_reader.load(this._ccb_name));
    // source line 91, bytecode pc 103
    xs.log(((("this._ccbNode is " + this._ccbNode) + ",") + this._ccb_name));
    // source line 93, bytecode pc 146
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 95, bytecode pc 159
    this.setCommonTag();
    // source line 96, bytecode pc 172
    this.setBtnTag();
    // source line 97, bytecode pc 185
    this.setHideTag();
    // source line 98, bytecode pc 198
    this.setSpecialTag();
    // source line 100, bytecode pc 223
    (visibleSize = xs.director.getVisibleSize());
    // source line 103, bytecode pc 275
    (pos = cc.p(((visibleSize.width - 888) / 2), ((visibleSize.height - 543) / 2)));
    // source line 104, bytecode pc 297
    this._ccbNode.setPosition(pos);
    // source line 106, bytecode pc 333
    xs.Utils.Node.attachNodes(this, this._ccbNode);
},
    ccbCfg: [
        { tag: 10, type: "ls", name: "_titleLabel", id: "LS_danyao" },
        { tag: 100, type: "ls", id: "LS_wujiangName", stringId: "auto_name_306" },
        { tag: 9, type: "ls", id: "LS_ZbJn" },
        { tag: 11, type: "ls", id: "LS_mainUI3" }
    ],
    setCommonTag: function(_model) {
    var _talking_obj, _talking_bg_obj, _iconName, _icon, _rewardName;
    // source line 133, bytecode pc 72
    this._ccbNode.getChildByTag(xs.SpecificDialog.Adventure_Cmn_Cfg.name.tag).setString(this._model.getName());
    // source line 134, bytecode pc 108
    this._titleLabel.setString(this._model.getTitle());
    // source line 135, bytecode pc 130
    this._titleLabel.setZOrder(999);
    // source line 137, bytecode pc 177
    (_talking_obj = this._ccbNode.getChildByTag(xs.SpecificDialog.Adventure_Cmn_Cfg.talking.tag));
    // source line 138, bytecode pc 210
    _talking_obj.setString(this._model.getTalking());
    // source line 139, bytecode pc 228
    _talking_obj.setZOrder(2);
    // source line 141, bytecode pc 275
    (_talking_bg_obj = this._ccbNode.getChildByTag(xs.SpecificDialog.Adventure_Cmn_Cfg.talking_bg.tag));
    // source line 142, bytecode pc 292
    _talking_bg_obj.setZOrder(1);
    // source line 145, bytecode pc 339
    (_iconName = this._ccbNode.getChildByTag(xs.SpecificDialog.Adventure_Cmn_Cfg.name.tag));
    // source line 146, bytecode pc 357
    _iconName.setZOrder(2);
    // source line 148, bytecode pc 404
    (_icon = this._ccbNode.getChildByTag(xs.SpecificDialog.Adventure_Cmn_Cfg.icon.tag));
    // source line 149, bytecode pc 422
    _icon.setZOrder(2);
    // source line 151, bytecode pc 469
    (_rewardName = this._ccbNode.getChildByTag(xs.SpecificDialog.Adventure_Cmn_Cfg.reward.tag));
    // source line 152, bytecode pc 487
    _rewardName.setZOrder(2);
    // source line 155, bytecode pc 562
    xs.Utils.replaceNode(this._ccbNode, xs.SpecificDialog.Adventure_Cmn_Cfg.card.tag, this._model.getCard(), true);
    // source line 156, bytecode pc 635
    xs.Utils.replaceNode(this._ccbNode, xs.SpecificDialog.Adventure_Cmn_Cfg.icon.tag, this._model.getIcon());
},
    setBtnTag: function() {
    // source line 168, bytecode pc 99
    (this.button_right = xs.Utils.replaceButton(this._ccbNode, xs.SpecificDialog.Adventure_Chest_Cfg.right_button.tag, "Btn_btn1", xs.Tools.String.createString("auto_name_76")));
    // source line 169, bytecode pc 123
    this.button_right.addOnClickCallBack(function() {
    // source line 170, bytecode pc 18
    this.log("u click the right button");
});
},
    setHideTag: function() {
},
    setSpecialTag: function() {
},
    init: function(params) {
    // source line 182, bytecode pc 22
    xs.log_zhz("xs.SpecificDialog._BaseAdventure init11");
    // source line 183, bytecode pc 35
    (this._ccbNode = {});
    // source line 184, bytecode pc 62
    xs.log_zhz("xs.SpecificDialog._BaseAdventure params", params);
    // source line 185, bytecode pc 84
    (this.param = (params || {}));
    // source line 186, bytecode pc 114
    xs.log_zhz("xs.SpecificDialog._BaseAdventure params", this.param);
    // source line 187, bytecode pc 144
    (this._model = (this.param.model || {}));
    // source line 188, bytecode pc 174
    xs.log_zhz("xs.SpecificDialog._BaseAdventure param", this._model);
    // source line 189, bytecode pc 200
    this.assert(this._model, "the adventure model is error!");
    if (!this._super(params)) {
        // source line 191, bytecode pc 224
        return false;
    }
    // source line 193, bytecode pc 232
    (this._titleLabel = null);
    // source line 196, bytecode pc 234
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 200, bytecode pc 11
    (this.m_baseTouchPriority = (priority - 1));
    // source line 201, bytecode pc 73
    (!xs.Utils.isEmpty(this.button_left) && this.button_left.setTouchPriority((this.m_baseTouchPriority - 1)));
    // source line 202, bytecode pc 135
    (!xs.Utils.isEmpty(this.button_right) && this.button_right.setTouchPriority((this.m_baseTouchPriority - 1)));
},
    getRealDialog: function() {
    // source line 205, bytecode pc 1
    return this;
},
    getViewNode: function() {
    // source line 208, bytecode pc 6
    return this._ccbNode;
}
}));
// source line 303, bytecode pc 967
(xs.SpecificDialog.AdventureChest = xs.SpecificDialog._BaseAdventure.extend({
    ccbCfg_AC: [ { tag: 21, type: "ls", id: "LS_ZbJn" } ],
    _getKeyNum: function() {
    var _related_id, _key_num;
    // source line 223, bytecode pc 15
    (_related_id = this._getRelatedId());
    // source line 224, bytecode pc 70
    (_key_num = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(_related_id));
    // source line 225, bytecode pc 74
    return _key_num;
},
    _getRelatedId: function() {
    var item_obj, _related_id;
    // source line 230, bytecode pc 68
    (item_obj = xs.Profile.GameData.Mgr.getInstance().Items.getByPkId(this._model.getPkId()));
    // source line 232, bytecode pc 86
    (_related_id = item_obj.getRelatedId());
    // source line 233, bytecode pc 109
    this.assert(_related_id, "the _related_id is null!");
    // source line 234, bytecode pc 113
    return _related_id;
},
    setBtnTag: function() {
    var _funcCancel;
    // source line 241, bytecode pc 20
    (_funcCancel = this.param.cancelFunc);
    // source line 251, bytecode pc 120
    (this.button_right = xs.Utils.replaceButton(this._ccbNode, xs.SpecificDialog.Adventure_Chest_Cfg.right_button.tag, "Btn_btn1", xs.Tools.String.createString("auto_name_76")));
    // source line 256, bytecode pc 157
    this.button_right.setOnClickCallBack(function() {
    // source line 253, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("AdventureChest");
    // source line 254, bytecode pc 62
    (_funcCancel && _funcCancel());
    // source line 255, bytecode pc 75
    this._clickCallBack();
}.bind(this));
},
    _clickCallBack: function() {
},
    setSpecialTag: function() {
    var _key_num, item_obj, _related_id, _related_obj;
    // source line 288, bytecode pc 42
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg_AC, this);
    // source line 289, bytecode pc 58
    (_key_num = this._getKeyNum());
    // source line 290, bytecode pc 127
    (item_obj = xs.Profile.GameData.Mgr.getInstance().Items.getByPkId(this._model.getPkId()));
    // source line 292, bytecode pc 145
    (_related_id = item_obj.getRelatedId());
    // source line 293, bytecode pc 168
    this.assert(_related_id, "the _related_id is null!");
    // source line 296, bytecode pc 223
    (_related_obj = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(_related_id));
    // source line 298, bytecode pc 363
    this._ccbNode.getChildByTag(xs.SpecificDialog.Adventure_Chest_Cfg.button_bottom_2.tag).setString((((xs.Tools.String.createString("auto_name_307") + _key_num) + xs.Tools.String.createString("auto_name_308")) + _related_obj.getNameString()));
},
    init: function(params) {
    // source line 304, bytecode pc 26
    (this._ccb_name = xs.Cfg.CCBI.AdventureChest);
    if (!this._super(params)) {
        // source line 306, bytecode pc 50
        return false;
    }
    // source line 309, bytecode pc 52
    return true;
}
}));
// source line 317, bytecode pc 1087
xs.Views.Mgr.registerDialog("AdventureChest", {
    "class": xs.SpecificDialog.AdventureChest,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
// source line 345, bytecode pc 1166
(xs.SpecificDialog.AdventureForageTask = xs.SpecificDialog._BaseAdventure.extend({
    setBtnTag: function() {
    var _funcCancel;
    // source line 329, bytecode pc 99
    (this.button_right = xs.Utils.replaceButton(this._ccbNode, xs.SpecificDialog.Adventure_ForageTask_Cfg.right_button.tag, "Btn_btn1", xs.Tools.String.createString("auto_name_76")));
    // source line 331, bytecode pc 123
    this.button_right.addOnClickCallBack(function() {
    // source line 332, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("AdventureForageTask");
});
    // source line 335, bytecode pc 138
    (_funcCancel = this.param.cancelFunc);
    // source line 336, bytecode pc 178
    (_funcCancel ? this.button_right.addOnClickCallBack(_funcCancel) : "");
},
    setHideTag: function() {
},
    init: function(params) {
    // source line 346, bytecode pc 26
    (this._ccb_name = xs.Cfg.CCBI.AdventureForageTask);
    if (!this._super(params)) {
        // source line 348, bytecode pc 50
        return false;
    }
    // source line 350, bytecode pc 52
    return true;
}
}));
// source line 358, bytecode pc 1286
xs.Views.Mgr.registerDialog("AdventureForageTask", {
    "class": xs.SpecificDialog.AdventureForageTask,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
// source line 390, bytecode pc 1375
(xs.SpecificDialog.AdventureExp = xs.SpecificDialog._BaseAdventure.extend({
    setBtnTag: function() {
    var _funcCancel;
    // source line 372, bytecode pc 99
    (this.button_right = xs.Utils.replaceButton(this._ccbNode, xs.SpecificDialog.Adventure_Exp_Cfg.right_button.tag, "Btn_btn1", xs.Tools.String.createString("auto_name_76")));
    // source line 373, bytecode pc 123
    this.button_right.addOnClickCallBack(function() {
    // source line 374, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("AdventureExp");
});
    // source line 376, bytecode pc 138
    (_funcCancel = this.param.cancelFunc);
    // source line 377, bytecode pc 178
    (_funcCancel ? this.button_right.addOnClickCallBack(_funcCancel) : "");
},
    setHideTag: function() {
},
    setSpecialTag: function() {
},
    init: function(params) {
    // source line 391, bytecode pc 26
    (this._ccb_name = xs.Cfg.CCBI.AdventureExp);
    if (!this._super(params)) {
        // source line 393, bytecode pc 50
        return false;
    }
    // source line 395, bytecode pc 52
    return true;
}
}));
// source line 403, bytecode pc 1495
xs.Views.Mgr.registerDialog("AdventureExp", {
    "class": xs.SpecificDialog.AdventureExp,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
// source line 422, bytecode pc 1574
(xs.SpecificDialog.AdventureTreasure = xs.SpecificDialog._BaseAdventure.extend({
    setBtnTag: function() {
    var _funcCancel;
    // source line 410, bytecode pc 20
    (_funcCancel = this.param.cancelFunc);
    // source line 412, bytecode pc 120
    (this.button_left = xs.Utils.replaceButton(this._ccbNode, xs.SpecificDialog.Adventure_Treasure_Cfg.left_button.tag, "Btn_btn1", xs.Tools.String.createString("auto_name_76")));
    // source line 413, bytecode pc 144
    this.button_left.addOnClickCallBack(function() {
    // source line 414, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("AdventureTreasure");
    // source line 415, bytecode pc 62
    (_funcCancel && _funcCancel());
});
},
    setHideTag: function() {
},
    init: function(params) {
    // source line 423, bytecode pc 26
    (this._ccb_name = xs.Cfg.CCBI.AdventureTreasure);
    if (!this._super(params)) {
        // source line 425, bytecode pc 50
        return false;
    }
    // source line 427, bytecode pc 52
    return true;
}
}));
// source line 436, bytecode pc 1694
xs.Views.Mgr.registerDialog("AdventureTreasure", {
    "class": xs.SpecificDialog.AdventureTreasure,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
// source line 463, bytecode pc 1773
(xs.SpecificDialog.AdventureGeneral = xs.SpecificDialog._BaseAdventure.extend({
    setBtnTag: function() {
    var _funcCancel;
    // source line 451, bytecode pc 99
    (this.button_right = xs.Utils.replaceButton(this._ccbNode, xs.SpecificDialog.Adventure_General_Cfg.right_button.tag, "Btn_btn1", xs.Tools.String.createString("auto_name_76")));
    // source line 452, bytecode pc 123
    this.button_right.addOnClickCallBack(function() {
    // source line 453, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("AdventureGeneral");
});
    // source line 456, bytecode pc 138
    (_funcCancel = this.param.cancelFunc);
    // source line 457, bytecode pc 178
    (_funcCancel ? this.button_right.addOnClickCallBack(_funcCancel) : "");
},
    setHideTag: function() {
},
    init: function(params) {
    // source line 464, bytecode pc 26
    (this._ccb_name = xs.Cfg.CCBI.AdventureGeneral);
    if (!this._super(params)) {
        // source line 466, bytecode pc 50
        return false;
    }
    // source line 468, bytecode pc 52
    return true;
}
}));
// source line 476, bytecode pc 1893
xs.Views.Mgr.registerDialog("AdventureGeneral", {
    "class": xs.SpecificDialog.AdventureGeneral,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
// source line 520, bytecode pc 1982
(xs.SpecificDialog.Achieve = xs.SpecificDialog._BaseAdventure.extend({
    setBtnTag: function() {
    // source line 488, bytecode pc 99
    (this.button_left = xs.Utils.replaceButton(this._ccbNode, xs.SpecificDialog.Achieve_Cfg.left_button.tag, "Btn_btn1", xs.Tools.String.createString("auto_name_309")));
    // source line 494, bytecode pc 136
    this.button_left.addOnClickCallBack(function() {
    // source line 490, bytecode pc 22
    xs.log("222222222222222222");
    // source line 491, bytecode pc 55
    xs.Views.Mgr.hideDialogByName("Achieve");
    // source line 492, bytecode pc 113
    xs.Views.Mgr.showDialogByName("achieveGiftPackDialog", this._model.getItemId(), this.param);
}.bind(this));
},
    setHideTag: function() {
},
    init: function(params) {
    var _size;
    // source line 500, bytecode pc 26
    (this._ccb_name = xs.Cfg.CCBI.Achieve);
    // source line 501, bytecode pc 70
    (this._bg = xs.Views.Armature.AutoAudioArmature.create("Arm_Surrender"));
    // source line 502, bytecode pc 106
    xs.Utils.Node.attachNodes(this, this._bg);
    // source line 503, bytecode pc 131
    (_size = xs.director.getVisibleSize());
    // source line 504, bytecode pc 178
    xs.log(((("Achieve _size is " + _size.width) + ",") + _size.height));
    // source line 505, bytecode pc 237
    this._bg.setPosition(cc.p((_size.width / 2), (_size.height / 2)));
    // source line 506, bytecode pc 257
    this._bg.setVisible(false);
    if (!this._super(params)) {
        // source line 510, bytecode pc 281
        return false;
    }
    // source line 512, bytecode pc 325
    (this.arm = xs.Views.Armature.AutoAudioArmature.create("Arm_Surrender"));
    // source line 515, bytecode pc 408
    xs.Utils.Node.attachNodes(this._ccbNode, this.arm, { desc: "c", offset: cc.p(0, 0) });
    // source line 517, bytecode pc 428
    this.arm.setVisible(false);
    // source line 518, bytecode pc 430
    return true;
},
    onEnterTransitionDidFinish: function() {
    var _action1, _action2;
    // source line 521, bytecode pc 22
    xs.log("onEnterTransitionDidFinish");
    // source line 522, bytecode pc 34
    (this._actionarray = []);
    // source line 523, bytecode pc 91
    this._actionarray.push(cc.DelayTime.create(((30 / xs.fps) / 2)));
    // source line 537, bytecode pc 135
    (_action1 = cc.CallFunc.create(function() {
    // source line 532, bytecode pc 19
    this._bg.setVisible(true);
    // source line 535, bytecode pc 62
    this._bg.playAniById("ani_effect", { loop: false, speed: 1 });
}.bind(this)));
    // source line 538, bytecode pc 157
    this._actionarray.push(_action1);
    // source line 546, bytecode pc 201
    (_action2 = cc.CallFunc.create(function() {
    // source line 541, bytecode pc 19
    this.arm.setVisible(true);
    // source line 544, bytecode pc 62
    this.arm.playAniById("ani_bg", { loop: false, speed: 1 });
}.bind(this)));
    // source line 547, bytecode pc 223
    this._actionarray.push(_action2);
    // source line 548, bytecode pc 270
    this.runAction(xs.Utils.Action.combineSequence(this._actionarray));
}
}));
// source line 553, bytecode pc 2008
(xs.SpecificDialog.Achieve.load = function() {
    // source line 555, bytecode pc 32
    xs.Factorys.Sprite.load("AdventureDialog");
});
// source line 558, bytecode pc 2034
(xs.SpecificDialog.Achieve.unload = function() {
    // source line 560, bytecode pc 32
    xs.Factorys.Sprite.unload("AdventureDialog");
});
// source line 569, bytecode pc 2154
xs.Views.Mgr.registerDialog("Achieve", {
    "class": xs.SpecificDialog.Achieve,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
// source line 596, bytecode pc 2243
(xs.Views.Dialog.achieveGiftPackDialog = xs.Views.Dialog._BaseAddListDialog.extend({
    init: function(item_id, param) {
    var _title, _btn_txt, _obj_item, adds;
    // source line 575, bytecode pc 35
    (_title = xs.Tools.String.createString("auto_name_310"));
    // source line 576, bytecode pc 71
    (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    // source line 578, bytecode pc 81
    (this._param = param);
    // source line 580, bytecode pc 136
    (_obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(item_id));
    // source line 582, bytecode pc 186
    this.assert((_obj_item.getItemType() === xs.Models.ItemType_Gift), "the item is not a gift pack!!");
    // source line 584, bytecode pc 204
    (adds = _obj_item.getGiftPack());
    // source line 586, bytecode pc 229
    this._super(adds, _title, _btn_txt);
    // source line 588, bytecode pc 231
    return true;
},
    centerBtnCallback: function() {
    var _funcCancel;
    // source line 592, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("achieveGiftPackDialog");
    // source line 593, bytecode pc 47
    (_funcCancel = this._param.cancelFunc);
    // source line 594, bytecode pc 65
    (_funcCancel && _funcCancel());
},
    closeCallback: function() {
    // source line 597, bytecode pc 12
    this.centerBtnCallback();
}
}));
// source line 601, bytecode pc 2274
(xs.Views.Dialog.achieveGiftPackDialog.create = function(item_id, param) {
    var ret;
    // source line 602, bytecode pc 28
    (ret = new xs.Views.Dialog.achieveGiftPackDialog());
    if ((ret && ret.init(item_id, param))) {
        // source line 604, bytecode pc 68
        return ret;
    }
    // source line 606, bytecode pc 70
    return null;
});
// source line 613, bytecode pc 2399
xs.Views.Mgr.registerDialog("achieveGiftPackDialog", {
    "class": xs.Views.Dialog.achieveGiftPackDialog,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
// source line 617, bytecode pc 2420
(xs.SpecificDialog.Adventure = function(params) {
    var _model;
    // source line 618, bytecode pc 23
    (_model = (params.model || {}));
    // source line 619, bytecode pc 38
    switch (_model.getType()) {
        case xs.SpecificDialog.Adventure_Gereral_Soul:
        // source line 621, bytecode pc 180
        xs.Views.Mgr.showDialogByName("AdventureGeneral", params);
        break;
        case xs.SpecificDialog.Adventure_Training:
        // source line 625, bytecode pc 222
        xs.Views.Mgr.showDialogByName("AdventureExp", params);
        break;
        case xs.SpecificDialog.Adventure_Skill_Piece:
        // source line 629, bytecode pc 264
        xs.Views.Mgr.showDialogByName("AdventureForageTask", params);
        break;
        case xs.SpecificDialog.Adventure_Box:
        // source line 633, bytecode pc 306
        xs.Views.Mgr.showDialogByName("AdventureChest", params);
        break;
        case xs.SpecificDialog.Adventure_Item:
        // source line 636, bytecode pc 348
        xs.Views.Mgr.showDialogByName("AdventureTreasure", params);
        break;
        default:
        // source line 639, bytecode pc 372
        this.error("the adventure type is error!!");
        break;
    }
});
