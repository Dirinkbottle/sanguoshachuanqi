// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Store/ToastView.js:1
// source line 401, bytecode pc 388
(xs.Views.ToastView = cc.Layer.extend({
    name: "xs.Views.ToastView",
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var disappearTimeLabelBg;
    // source line 16, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 36
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 19, bytecode pc 51
    this.setTouchEnabled(true);
    // source line 26, bytecode pc 113
    (this.disappearTimeLabel = xs.Views.Label.LabelExt.createWithStyles([ "LS_qiangduo_Inf", "LS_wujiangName1" ]));
    // source line 27, bytecode pc 182
    this.disappearTimeLabel.setStringByStrings([ xs.Tools.String.createString("auto_name_205"), "0:0:0" ]);
    // source line 32, bytecode pc 271
    xs.Utils.Node.attachNodes(this, this.disappearTimeLabel, { desc: "lt", offset: cc.p(10, -150), sc: false });
    // source line 35, bytecode pc 291
    this.disappearTimeLabel.setVisible(false);
    // source line 37, bytecode pc 333
    (disappearTimeLabelBg = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 38, bytecode pc 373
    disappearTimeLabelBg.setAnchorPoint(cc.p(0, 0.5));
    // source line 39, bytecode pc 433
    disappearTimeLabelBg.setPosition(cc.p(0, (this.disappearTimeLabel.getContentSize().height / 2)));
    // source line 40, bytecode pc 458
    this.disappearTimeLabel.addChild(disappearTimeLabelBg, -1);
    // source line 44, bytecode pc 550
    (this.generalShowNode = xs.Views.GeneralCardShow.create(xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getShowGenerals()));
    // source line 45, bytecode pc 570
    this.generalShowNode.setListener(this);
    // source line 46, bytecode pc 655
    xs.Utils.Node.attachNodes(this, this.generalShowNode, { desc: "cl", offset: cc.p(0, -20), sc: true });
    // source line 49, bytecode pc 709
    (this.toastInfo = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo());
    // source line 51, bytecode pc 717
    (this.m_bToastLocked = false);
    if (xs.isVersionForPublish) {
    }
    // source line 62, bytecode pc 745
    this.updateDesk();
    // source line 65, bytecode pc 753
    (this.m_bToastByPay = false);
    // source line 67, bytecode pc 755
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 71, bytecode pc 12
    this._super();
    // source line 73, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onToast_gold_single, xs.Constant_Notify_Event_SingleDraw);
    // source line 74, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.onToast_gold_ten, xs.Constant_Notify_Event_TenDraw);
},
    onExit: function() {
    // source line 78, bytecode pc 12
    this._super();
    // source line 80, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_SingleDraw);
    // source line 81, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_TenDraw);
    // source line 84, bytecode pc 151
    xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().unschedule();
},
    stopGeneralShow: function() {
    // source line 88, bytecode pc 17
    this.generalShowNode.stop();
},
    onTouchBegan: function(touch, e) {
    // source line 92, bytecode pc 7
    (this.moveStart = false);
    // source line 93, bytecode pc 15
    (this.touchBegan = true);
    // source line 94, bytecode pc 23
    (this.touchStartTime = 0);
    // source line 95, bytecode pc 25
    return true;
},
    onTouchMoved: function(touch, e) {
    if ((this.moveStart === false)) {
        // source line 100, bytecode pc 35
        (this.moveStartPoint = this.convertTouchToNodeSpace(touch));
        // source line 101, bytecode pc 43
        (this.moveStart = true);
    }
},
    onTouchEnded: function(touch, e) {
    var endPoint;
    if ((this.touchStartTime >= 5)) {
        // source line 107, bytecode pc 15
        return void 0;
    }
    if ((this.moveStart === false)) {
        // source line 112, bytecode pc 30
        return void 0;
    }
    // source line 115, bytecode pc 50
    (endPoint = this.convertTouchToNodeSpace(touch));
    if (((endPoint.x - this.moveStartPoint.x) < -20)) {
        // source line 117, bytecode pc 98
        this.generalShowNode.moveTo(true);
    } else {
        if (((endPoint.x - this.moveStartPoint.x) > 20)) {
            // source line 119, bytecode pc 151
            this.generalShowNode.moveTo(false);
        }
    }
    // source line 121, bytecode pc 159
    (this.touchBegan = false);
},
    onToast_gold_single: function() {
    var player, itemNum, userItem, param;
    // source line 127, bytecode pc 22
    xs.log("onToast_gold_single");
    if (this.m_bToastLocked) {
        // source line 129, bytecode pc 35
        return void 0;
    }
    // source line 131, bytecode pc 43
    (this.m_bToastLocked = true);
    // source line 132, bytecode pc 51
    (this.m_bToastByPay = false);
    // source line 134, bytecode pc 102
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 135, bytecode pc 176
    (itemNum = (xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_GoldWineGlass) || 0));
    if (((this.toastInfo.getGoldFreeTimes() > 0) || (itemNum > 0))) {
        if ((this.toastInfo.getGoldFreeTimes() <= 0)) {
            // source line 139, bytecode pc 243
            (this.m_bToastByPay = true);
        }
        // source line 141, bytecode pc 310
        (userItem = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_GoldWineGlass));
        // source line 142, bytecode pc 333
        (param = { type: 2, ignoreRandEvent: true });
        if (userItem) {
            // source line 143, bytecode pc 383
            (param = { type: 2, ignoreRandEvent: true, user_item_id: userItem.getPkId() });
        }
        // source line 148, bytecode pc 455
        xs.Tools.Net.requireToast(param, this.onToastResult_gold.bind(this), function() {
    // source line 147, bytecode pc 7
    (this.m_bToastLocked = false);
}.bind(this), this);
    } else {
        // source line 151, bytecode pc 487
        xs.Tools.UI.showGoldNotEnough();
        // source line 152, bytecode pc 495
        (this.m_bToastLocked = false);
    }
},
    onToast_gold_ten: function(params) {
    var isTenDraw, userItem, param;
    // source line 159, bytecode pc 22
    xs.log("onToast_gold_ten");
    if (this.m_bToastLocked) {
        // source line 161, bytecode pc 35
        return void 0;
    }
    // source line 163, bytecode pc 43
    (this.m_bToastLocked = true);
    // source line 164, bytecode pc 55
    (isTenDraw = params.isTenDraw);
    if (isTenDraw) {
        if (((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() >= this.toastInfo.getDrawPrice(xs.Constant_Grade_God)) || (xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_JiangJunZhan) > 0))) {
            // source line 173, bytecode pc 293
            (userItem = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_JiangJunZhan));
            // source line 174, bytecode pc 322
            (param = { type: 2, ignoreRandEvent: true, is_multi: 1 });
            if (userItem) {
                // source line 175, bytecode pc 378
                (param = { type: 2, ignoreRandEvent: true, is_multi: 1, user_item_id: userItem.getPkId() });
            }
            // source line 180, bytecode pc 450
            xs.Tools.Net.requireToast(param, this.onToastResult_tenGold.bind(this), function() {
    // source line 179, bytecode pc 7
    (this.m_bToastLocked = false);
}.bind(this), this);
        } else {
            // source line 182, bytecode pc 482
            xs.Tools.UI.showGoldNotEnough();
            // source line 183, bytecode pc 490
            (this.m_bToastLocked = false);
        }
    } else {
        // source line 186, bytecode pc 503
        (this.m_bToastLocked = false);
    }
},
    onToast_silver: function() {
    var haveMoney, itemNum, userItem, param;
    if (this.m_bToastLocked) {
        // source line 193, bytecode pc 12
        return void 0;
    }
    // source line 195, bytecode pc 20
    (this.m_bToastLocked = true);
    // source line 196, bytecode pc 28
    (this.m_bToastByPay = false);
    // source line 198, bytecode pc 90
    (haveMoney = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
    // source line 199, bytecode pc 164
    (itemNum = (xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_SilverWineGlass) || 0));
    if (((this.toastInfo.getSilverFreeTimes() > 0) || (itemNum > 0))) {
        // source line 201, bytecode pc 207
        (this.m_bToastLocked = true);
        if ((this.toastInfo.getSilverFreeTimes() <= 0)) {
            // source line 203, bytecode pc 239
            (this.m_bToastByPay = true);
        }
        // source line 205, bytecode pc 306
        (userItem = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_SilverWineGlass));
        // source line 206, bytecode pc 329
        (param = { type: 3, ignoreRandEvent: true });
        if (userItem) {
            // source line 207, bytecode pc 379
            (param = { type: 3, ignoreRandEvent: true, user_item_id: userItem.getPkId() });
        }
        // source line 211, bytecode pc 451
        xs.Tools.Net.requireToast(param, this.onToastResult_silver.bind(this), function() {
    // source line 210, bytecode pc 7
    (this.m_bToastLocked = false);
}.bind(this), this);
    } else {
        // source line 214, bytecode pc 483
        xs.Tools.UI.showGoldNotEnough();
        // source line 215, bytecode pc 491
        (this.m_bToastLocked = false);
    }
},
    onToast_copper: function() {
    var itemNum, userItem, param;
    if (this.m_bToastLocked) {
        // source line 222, bytecode pc 12
        return void 0;
    }
    // source line 224, bytecode pc 20
    (this.m_bToastByPay = false);
    // source line 226, bytecode pc 94
    (itemNum = (xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopperWineGlass) || 0));
    if ((((this.toastInfo.getCopperFreeTimes() > 0) && (this.toastInfo.getCopperFreeEndTime() === 0)) || (itemNum > 0))) {
        // source line 228, bytecode pc 162
        (this.m_bToastLocked = true);
        if (((this.toastInfo.getCopperFreeTimes() <= 0) || (this.toastInfo.getCopperFreeEndTime() > 0))) {
            // source line 230, bytecode pc 219
            (this.m_bToastByPay = true);
        }
        // source line 232, bytecode pc 286
        (userItem = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_CopperWineGlass));
        // source line 233, bytecode pc 309
        (param = { type: 4, ignoreRandEvent: true });
        if (userItem) {
            // source line 234, bytecode pc 359
            (param = { type: 4, ignoreRandEvent: true, user_item_id: userItem.getPkId() });
        }
        // source line 240, bytecode pc 431
        xs.Tools.Net.requireToast(param, this.onToastResult_copper.bind(this), function() {
    // source line 239, bytecode pc 7
    (this.m_bToastLocked = false);
}.bind(this), this);
    } else {
        // source line 242, bytecode pc 463
        xs.Tools.UI.showGoldNotEnough();
        // source line 243, bytecode pc 471
        (this.m_bToastLocked = false);
    }
},
    onToastResult_tenGold: function(jsonData, _modelMap) {
    var price;
    // source line 248, bytecode pc 20
    this.onToastResult(jsonData, _modelMap);
    // source line 250, bytecode pc 93
    (price = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getDrawPrice(xs.Constant_Grade_God));
    // source line 251, bytecode pc 142
    xs.Tools.Statistic.buy(xs.Models.ItemID_JiangJunZhan, 1, price);
},
    onToastResult_gold: function(jsonData, _modelMap) {
    var price;
    // source line 255, bytecode pc 20
    this.onToastResult(jsonData, _modelMap);
    // source line 256, bytecode pc 93
    (price = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getDrawPrice(xs.Constant_Grade_Gold));
    if (this.m_bToastByPay) {
        // source line 258, bytecode pc 153
        xs.Tools.Statistic.buy(xs.Models.ItemID_GoldWineGlass, 1, price);
    }
},
    onToastResult_silver: function(jsonData, _modelMap) {
    var price;
    // source line 263, bytecode pc 20
    this.onToastResult(jsonData, _modelMap);
    // source line 264, bytecode pc 93
    (price = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getDrawPrice(xs.Constant_Grade_Silver));
    if (this.m_bToastByPay) {
        // source line 266, bytecode pc 153
        xs.Tools.Statistic.buy(xs.Models.ItemID_SilverWineGlass, 1, price);
    }
},
    onToastResult_copper: function(jsonData, _modelMap) {
    var price;
    // source line 271, bytecode pc 20
    this.onToastResult(jsonData, _modelMap);
    // source line 272, bytecode pc 93
    (price = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getDrawPrice(xs.Constant_Grade_Copper));
    if (this.m_bToastByPay) {
        // source line 274, bytecode pc 153
        xs.Tools.Statistic.buy(xs.Models.ItemID_CopperWineGlass, 1, price);
    }
},
    onToastResult: function(jsonData, _modelMap) {
    // source line 281, bytecode pc 36
    xs.Scene.Mgr.saveStatus("Toast_RandEvent", _modelMap);
    // source line 284, bytecode pc 93
    xs.Profile.GameData.Mgr.getInstance().ToastInfo.update(jsonData.user_wine_info);
    // source line 287, bytecode pc 141
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 290, bytecode pc 168
    this.m_listener.showToastResult(jsonData.reward_info);
},
    setToastLocked: function(bLocked) {
    // source line 295, bytecode pc 9
    (this.m_bToastLocked = bLocked);
},
    updateDesk: function() {
    var visibleSize, contentSize;
    // source line 300, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    if (!this.deskView) {
        // source line 303, bytecode pc 71
        (this.deskView = this.toastInfo.createToastDesk());
        // source line 304, bytecode pc 92
        (contentSize = this.deskView.getContentSize());
        // source line 306, bytecode pc 207
        xs.Utils.Node.attachNodes(this, this.deskView, {
    desc: "cb",
    offset: { x: (-(contentSize.width + xs.Views.MainMenuView.Width) / 2), y: 80 },
    sc: true
});
    }
    if (!this.goldBtn) {
        // source line 310, bytecode pc 284
        (this.goldBtn = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getGoldBtn());
        // source line 317, bytecode pc 321
        this.goldBtn.setOnClickCallBack(function() {
    if ((this.toastInfo.getGoldFreeTimes() > 0)) {
        // source line 313, bytecode pc 36
        this.onToast_gold_single();
    } else {
        // source line 315, bytecode pc 81
        xs.Views.Mgr.showDialogByName("GoldDrawDialog", this.toastInfo);
    }
}.bind(this));
        if (!xs.Guide.GuideMgr.getIsOver()) {
            // source line 319, bytecode pc 377
            this.goldBtn.setGuideTag("3002");
        }
    }
    if (!this.silverBtn) {
        // source line 324, bytecode pc 454
        (this.silverBtn = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getSilverBtn());
        // source line 325, bytecode pc 492
        this.silverBtn.setOnClickCallBack(this.onToast_silver.bind(this));
    }
    if (!this.copperBtn) {
        // source line 329, bytecode pc 569
        (this.copperBtn = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getCopperBtn());
        // source line 330, bytecode pc 607
        this.copperBtn.setOnClickCallBack(this.onToast_copper.bind(this));
    }
},
    updateCupInfo: function() {
    // source line 340, bytecode pc 109
    xs.Utils.setCcbLabel(this.cupInfoBar, this.cfg.goldCupNum.tag, xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_GoldWineGlass));
    // source line 343, bytecode pc 219
    xs.Utils.setCcbLabel(this.cupInfoBar, this.cfg.silverCupNum.tag, xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_SilverWineGlass));
    // source line 346, bytecode pc 329
    xs.Utils.setCcbLabel(this.cupInfoBar, this.cfg.copperCup.tag, xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopperWineGlass));
},
    confirmBuy: function(good, num) {
    // source line 350, bytecode pc 39
    xs.Tools.Net.getInstance().setListener(this);
    // source line 351, bytecode pc 94
    xs.Tools.Net.getInstance().BuyGood(good, num, this, this.m_baseTouchPriority);
},
    buyGoodSuccessCallback: function(data) {
    // source line 358, bytecode pc 12
    this.updateDesk();
},
    setListener: function(listener) {
    // source line 362, bytecode pc 9
    (this.m_listener = listener);
},
    timer: function(dt) {
    if ((this.touchBegan === true)) {
        // source line 367, bytecode pc 38
        (this.touchStartTime = (+this.touchStartTime + 1));
    } else {
        // source line 369, bytecode pc 52
        (this.touchStartTime = 0);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 374, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 375, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 376, bytecode pc 56
    this.goldBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 377, bytecode pc 83
    this.silverBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 378, bytecode pc 110
    this.copperBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    if (xs.isVersionForPublish) {
    }
},
    showDisappearTimeLabel: function(args) {
    // source line 386, bytecode pc 21
    this.disappearTimeLabel.setStringByStrings(args);
    // source line 387, bytecode pc 41
    this.disappearTimeLabel.setVisible(true);
},
    hideDisappearTimeLabel: function() {
    // source line 390, bytecode pc 19
    this.disappearTimeLabel.setVisible(false);
},
    cfg: { goldCupNum: { tag: 12 }, silverCupNum: { tag: 11 }, copperCup: { tag: 10 } }
}));
// source line 406, bytecode pc 414
(xs.Views.ToastView.create = function() {
    var ret;
    // source line 407, bytecode pc 23
    (ret = new xs.Views.ToastView());
    if ((ret && ret.init())) {
        // source line 409, bytecode pc 55
        return ret;
    }
    // source line 411, bytecode pc 57
    return null;
});
// source line 577, bytecode pc 498
(xs.Views.ToastResultView = cc.Node.extend({
    ctor: function() {
    // source line 418, bytecode pc 12
    this._super();
    // source line 419, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(rewardInfo) {
    var awardGeneral, awardSoul, generalModel, actionArray, _arm1, _arm2, _arm3, tipLabel, _arm4, arm_DrawSoul, drawidx, drawModel, i, soulModel, headIcon, btn_offset;
    // source line 423, bytecode pc 12
    this._super();
    // source line 424, bytecode pc 26
    (awardGeneral = rewardInfo.general[0]);
    // source line 425, bytecode pc 38
    (awardSoul = rewardInfo.general_soul);
    // source line 426, bytecode pc 106
    (generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getById(awardGeneral.id)[0]);
    if (!generalModel) {
        // source line 428, bytecode pc 148
        xs.dump("awardGeneral", awardGeneral);
    }
    // source line 431, bytecode pc 157
    (actionArray = []);
    // source line 434, bytecode pc 198
    (_arm1 = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawGeneral"));
    // source line 435, bytecode pc 225
    (this.card = generalModel.createCard_Toast());
    // source line 436, bytecode pc 245
    this.card.setVisible(false);
    // source line 437, bytecode pc 273
    _arm1.replaceSkin("card", this.card);
    // source line 438, bytecode pc 313
    _arm1.playAniById("idle", { speed: 1, loop: false });
    // source line 439, bytecode pc 395
    xs.Utils.Node.attachNodes(this, _arm1, { desc: "c", offset: cc.p(0, 30), sc: true });
    // source line 442, bytecode pc 436
    (_arm2 = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawGeneral"));
    // source line 443, bytecode pc 476
    _arm2.playAniById("idle", { speed: 1, loop: false });
    // source line 444, bytecode pc 558
    xs.Utils.Node.attachNodes(this, _arm2, { desc: "c", offset: cc.p(0, 30), sc: true });
    // source line 446, bytecode pc 613
    actionArray.push(_arm1.createPlayAction("drawGeneral", { speed: 1, loop: false }));
    // source line 447, bytecode pc 668
    actionArray.push(_arm2.createPlayAction("faguang", { speed: 1, loop: true }));
    // source line 450, bytecode pc 711
    actionArray.push(cc.CallFunc.create(function() {
    // source line 451, bytecode pc 20
    generalModel.playAudioEffect();
}));
    if ((awardGeneral.type === "2")) {
        // source line 456, bytecode pc 771
        (_arm3 = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawGeneral"));
        // source line 457, bytecode pc 853
        xs.Utils.Node.attachNodes(this, _arm3, { desc: "c", offset: cc.p(0, 30), sc: true });
        // source line 461, bytecode pc 975
        (tipLabel = xs.Factorys.Label.createByStyleIdWithString("LS_wujiangName1", xs.Tools.String.createString("str_Store_autoConvert").convWithArgs([ generalModel.getNameString(), awardGeneral.num ])));
        // source line 462, bytecode pc 992
        tipLabel.setVisible(false);
        // source line 463, bytecode pc 1017
        _arm3.replaceSkin("txt", tipLabel);
        // source line 465, bytecode pc 1057
        _arm3.playAniById("idle", { speed: 1, loop: false });
        // source line 466, bytecode pc 1112
        actionArray.push(_arm3.createPlayAction("toSoulTip", { speed: 1, loop: false }));
    }
    if ((xs.Constant_Grade_God === generalModel.getGrade())) {
        // source line 472, bytecode pc 1189
        (_arm4 = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawGeneral"));
        // source line 473, bytecode pc 1229
        _arm4.playAniById("idle", { speed: 1, loop: false });
        // source line 474, bytecode pc 1311
        xs.Utils.Node.attachNodes(this, _arm4, { desc: "c", offset: cc.p(0, 30), sc: true });
        // source line 475, bytecode pc 1366
        actionArray.push(_arm4.createPlayAction("godTip", { speed: 1, loop: false }));
    }
    if ((awardSoul && (awardSoul.length !== 0))) {
        // source line 480, bytecode pc 1431
        (arm_DrawSoul = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawSoul"));
        // source line 482, bytecode pc 1436
        (drawidx = 0);
        // source line 483, bytecode pc 1447
        (drawModel = null);
        // source line 485, bytecode pc 1452
        (i = 0);
        while ((i < awardSoul.length)) {
            // source line 486, bytecode pc 1501
            (soulModel = xs.Models.GeneralSoul.createWithBase(awardSoul[i].id));
            // source line 487, bytecode pc 1529
            soulModel.setNum(awardSoul[i].num);
            // source line 488, bytecode pc 1547
            (headIcon = soulModel.createIcon_GradeAndNum());
            // source line 489, bytecode pc 1564
            headIcon.setVisible(false);
            // source line 490, bytecode pc 1595
            arm_DrawSoul.replaceSkin(("touxiang0" + (i + 1)), headIcon);
            if ((awardSoul[i].status === true)) {
                // source line 493, bytecode pc 1621
                (drawidx = i);
                // source line 494, bytecode pc 1634
                (drawModel = soulModel);
            }
            // source line 485, bytecode pc 1648
            (i = (+i + 1));
        }
        // source line 498, bytecode pc 1712
        (soulModel = xs.Models.GeneralSoul.createWithBase(drawModel.id));
        // source line 501, bytecode pc 1834
        (tipLabel = xs.Factorys.Label.createByStyleIdWithString("LS_wujiangName1", xs.Tools.String.createString("str_Store_congratsGet").convWithArgs([ soulModel.getNameString(), drawModel.num ])));
        // source line 502, bytecode pc 1851
        tipLabel.setVisible(false);
        // source line 503, bytecode pc 1876
        arm_DrawSoul.replaceSkin("tipInfo", tipLabel);
        // source line 505, bytecode pc 1958
        xs.Utils.Node.attachNodes(this, arm_DrawSoul, { desc: "cb", offset: cc.p(0, 100), sc: true });
        // source line 506, bytecode pc 1998
        arm_DrawSoul.playAniById("idle", { speed: 1, loop: false });
        // source line 507, bytecode pc 2053
        actionArray.push(arm_DrawSoul.createPlayAction("drawSoul_front", { speed: 1, loop: false }));
        // source line 510, bytecode pc 2114
        actionArray.push(arm_DrawSoul.createPlayAction(("drawSoul_" + (drawidx + 1)), { speed: 1, loop: false }));
        // source line 513, bytecode pc 2147
        (btn_offset = cc.p(300, 50));
    } else {
        // source line 515, bytecode pc 2183
        (btn_offset = cc.p(0, 100));
    }
    // source line 527, bytecode pc 2239
    actionArray.push(cc.CallFunc.create(function() {
    var btn;
    // source line 521, bytecode pc 54
    (btn = xs.Views.Btn.createInvisible(cc.size(250, 350)));
    // source line 522, bytecode pc 78
    btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 523, bytecode pc 160
    xs.Utils.Node.attachNodes(this, btn, { desc: "c", offset: cc.p(0, 30), sc: true });
    // source line 526, bytecode pc 194
    btn.setOnClickCallBack(function() {
    // source line 525, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: generalModel, type: "achieve_have" });
}.bind(this));
}.bind(this)));
    if ((awardSoul && (awardSoul.length !== 0))) {
        // source line 547, bytecode pc 2319
        actionArray.push(cc.CallFunc.create(function() {
    var soulRefGeneral, btn;
    // source line 534, bytecode pc 56
    (soulRefGeneral = xs.Models.General.createWithBase(drawModel.getId()));
    // source line 535, bytecode pc 109
    (btn = xs.Views.Btn.createInvisible(cc.size(92, 92)));
    // source line 536, bytecode pc 133
    btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 537, bytecode pc 215
    xs.Utils.Node.attachNodes(this, btn, { desc: "cb", offset: cc.p(0, 100), sc: true });
    // source line 546, bytecode pc 249
    btn.setOnClickCallBack(function() {
    if (xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(drawModel)) {
        // source line 541, bytecode pc 125
        xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: soulRefGeneral, type: "achieve_have" });
    } else {
        // source line 544, bytecode pc 194
        xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: soulRefGeneral, type: "achieve_nothave" });
    }
}.bind(this));
}.bind(this)));
    }
    // source line 566, bytecode pc 2375
    actionArray.push(cc.CallFunc.create(function() {
    // source line 553, bytecode pc 38
    (this.continueBtn = xs.Views.Btn.create("Btn_Continue"));
    // source line 554, bytecode pc 65
    this.continueBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 555, bytecode pc 138
    xs.Utils.Node.attachNodes(this, this.continueBtn, { desc: "cb", offset: btn_offset, sc: true });
    // source line 559, bytecode pc 175
    this.continueBtn.setOnClickCallBack(function() {
    // source line 557, bytecode pc 14
    this.removeFromParent(true);
    // source line 558, bytecode pc 32
    this.m_listener.backFromToastResult();
}.bind(this));
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 562, bytecode pc 229
        this.continueBtn.setGuideTag(3003);
        // source line 564, bytecode pc 271
        xs.Guide.GuideMgr.endStepBySequence([ "40001_before" ]);
    }
}.bind(this)));
    // source line 568, bytecode pc 2419
    this.runAction(xs.Utils.Action.combineSequence(actionArray));
    // source line 570, bytecode pc 2421
    return true;
},
    setListener: function(listener) {
    // source line 574, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 578, bytecode pc 9
    (this.m_baseTouchPriority = priority);
}
}));
// source line 582, bytecode pc 524
(xs.Views.ToastResultView.create = function(rewardInfo) {
    var ret;
    // source line 583, bytecode pc 23
    (ret = new xs.Views.ToastResultView());
    if ((ret && ret.init(rewardInfo))) {
        // source line 585, bytecode pc 59
        return ret;
    }
    // source line 587, bytecode pc 61
    return null;
});
// source line 715, bytecode pc 608
(xs.Views.ToastResultView_ten = cc.Node.extend({
    ctor: function() {
    // source line 594, bytecode pc 12
    this._super();
    // source line 595, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(rewardInfo) {
    var actionArray, _arm1, generals, i, generalModel, cardStr, boneStr, light, tipLabel, generalSous, _arm2, soulModel, headIcon, soulNameLb, nameStr, num;
    // source line 599, bytecode pc 12
    this._super();
    // source line 601, bytecode pc 21
    (actionArray = []);
    // source line 603, bytecode pc 62
    (_arm1 = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawGeneral"));
    // source line 605, bytecode pc 144
    xs.Utils.Node.attachNodes(this, _arm1, { desc: "c", offset: cc.p(0, 30), sc: true });
    // source line 607, bytecode pc 162
    (generals = rewardInfo.general);
    // source line 608, bytecode pc 167
    (i = 0);
    while ((i < generals.length)) {
        // source line 609, bytecode pc 245
        (generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getById(generals[i].id)[0]);
        // source line 610, bytecode pc 254
        (cardStr = "");
        // source line 611, bytecode pc 263
        (boneStr = "");
        if (((i + 1) < 10)) {
            // source line 613, bytecode pc 291
            (cardStr = ("card0" + (i + 1)));
            // source line 614, bytecode pc 306
            (boneStr = ("bone0" + (i + 1)));
        } else {
            // source line 616, bytecode pc 326
            (cardStr = ("card" + (i + 1)));
            // source line 617, bytecode pc 341
            (boneStr = ("bone" + (i + 1)));
        }
        // source line 620, bytecode pc 375
        _arm1.replaceSkin(cardStr, generalModel.createCard_Toast());
        if ((xs.Constant_Grade_God === generalModel.getGrade())) {
            // source line 626, bytecode pc 446
            (light = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawGeneral"));
            // source line 627, bytecode pc 486
            light.playAniById("draw_light", { speed: 1, loop: true });
            // source line 628, bytecode pc 509
            _arm1.replaceSkin(boneStr, light);
        }
        // source line 633, bytecode pc 578
        (tipLabel = xs.Factorys.Label.createByStyleIdWithString("LS_wujiangName1", xs.Tools.String.createString("str_Store_changePsyche")));
        // source line 634, bytecode pc 595
        tipLabel.setVisible(false);
        // source line 635, bytecode pc 620
        _arm1.replaceSkin("txt", tipLabel);
        // source line 608, bytecode pc 634
        (i = (+i + 1));
    }
    // source line 638, bytecode pc 714
    actionArray.push(_arm1.createPlayAction("draw_ten", { speed: 1, loop: false }));
    // source line 642, bytecode pc 726
    (generalSous = rewardInfo.general_soul);
    if ((generalSous.length > 0)) {
        // source line 644, bytecode pc 782
        (_arm2 = xs.Views.Armature.AutoAudioArmature.create("Arm_Toast_DrawSoul"));
        // source line 645, bytecode pc 864
        xs.Utils.Node.attachNodes(this, _arm2, { desc: "c", offset: cc.p(0, 30), sc: true });
        // source line 647, bytecode pc 869
        (i = 0);
        while ((i < generalSous.length)) {
            // source line 648, bytecode pc 918
            (soulModel = xs.Models.GeneralSoul.createWithBase(generalSous[i].id));
            // source line 649, bytecode pc 946
            soulModel.setNum(generalSous[i].num);
            // source line 650, bytecode pc 964
            (headIcon = soulModel.createIcon_GradeAndNum());
            // source line 651, bytecode pc 981
            headIcon.setVisible(false);
            // source line 652, bytecode pc 1012
            _arm2.replaceSkin(("touxiang0" + (i + 1)), headIcon);
            // source line 657, bytecode pc 1063
            (soulNameLb = xs.Factorys.Label.createByStyleIdWithString("LS_wujiangName1", soulModel.getNameString()));
            // source line 658, bytecode pc 1084
            soulNameLb.setScale(0.8);
            // source line 659, bytecode pc 1093
            (nameStr = "");
            if (((i + 1) < 10)) {
                // source line 661, bytecode pc 1121
                (nameStr = ("name0" + (i + 1)));
            } else {
                // source line 663, bytecode pc 1141
                (nameStr = ("name" + (i + 1)));
            }
            // source line 665, bytecode pc 1164
            _arm2.replaceSkin(nameStr, soulNameLb);
            // source line 647, bytecode pc 1178
            (i = (+i + 1));
        }
        // source line 667, bytecode pc 1237
        _arm2.playAniById("idle", { speed: 1, loop: false });
        // source line 669, bytecode pc 1249
        (num = generalSous.length);
        // source line 670, bytecode pc 1308
        actionArray.push(_arm2.createPlayAction(("getSoul_" + num), { speed: 1, loop: false }));
    }
    // source line 692, bytecode pc 1364
    actionArray.push(cc.CallFunc.create(function() {
    var _offSet, i, _generalModel, btn;
    // source line 676, bytecode pc 29
    (_offSet = cc.p(-360, 210));
    // source line 677, bytecode pc 34
    (i = 0);
    while ((i < generals.length)) {
        // source line 678, bytecode pc 112
        (_generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getById(generals[i].id)[0]);
        if ((i === 5)) {
            // source line 680, bytecode pc 137
            (_offSet.x = -360);
            // source line 681, bytecode pc 148
            (_offSet.y = -10);
        }
        // source line 683, bytecode pc 173
        (_offSet.x = (-360 + (180 * (i % 5))));
        // source line 684, bytecode pc 227
        (btn = xs.Views.Btn.createInvisible(cc.size(120, 180)));
        // source line 685, bytecode pc 251
        btn.setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 686, bytecode pc 315
        xs.Utils.Node.attachNodes(this, btn, { desc: "c", offset: _offSet, sc: true });
        // source line 690, bytecode pc 362
        btn.setOnClickCallBack(function() {
    // source line 689, bytecode pc 60
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.generalModel, type: "achieve_have" });
}.bind({ generalModel: _generalModel }));
        // source line 677, bytecode pc 376
        (i = (+i + 1));
    }
}.bind(this)));
    // source line 704, bytecode pc 1420
    actionArray.push(cc.CallFunc.create(function() {
    // source line 697, bytecode pc 38
    (this.continueBtn = xs.Views.Btn.create("Btn_Continue"));
    // source line 698, bytecode pc 65
    this.continueBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 699, bytecode pc 152
    xs.Utils.Node.attachNodes(this, this.continueBtn, { desc: "cb", offset: cc.p(350, 100), sc: true });
    // source line 703, bytecode pc 189
    this.continueBtn.setOnClickCallBack(function() {
    // source line 701, bytecode pc 14
    this.removeFromParent(true);
    // source line 702, bytecode pc 32
    this.m_listener.backFromToastResult();
}.bind(this));
}.bind(this)));
    // source line 706, bytecode pc 1464
    this.runAction(xs.Utils.Action.combineSequence(actionArray));
    // source line 708, bytecode pc 1466
    return true;
},
    setListener: function(listener) {
    // source line 712, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 716, bytecode pc 9
    (this.m_baseTouchPriority = priority);
}
}));
// source line 720, bytecode pc 634
(xs.Views.ToastResultView_ten.create = function(rewardInfo) {
    var ret;
    // source line 721, bytecode pc 23
    (ret = new xs.Views.ToastResultView_ten());
    if ((ret && ret.init(rewardInfo))) {
        // source line 723, bytecode pc 59
        return ret;
    }
    // source line 725, bytecode pc 61
    return null;
});
