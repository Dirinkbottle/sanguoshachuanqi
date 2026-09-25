// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Store/StoreScene.js:1
// source line 298, bytecode pc 264
(xs.Scene.StoreScene = cc.Scene.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var visibleSize, visibleOrigin;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 29
    (this.params = params);
    // source line 23, bytecode pc 37
    (this.m_baseTouchPriority = 0);
    // source line 24, bytecode pc 45
    (this.m_itemView = null);
    // source line 25, bytecode pc 53
    (this.m_giftView = null);
    // source line 27, bytecode pc 78
    (visibleSize = xs.director.getVisibleSize());
    // source line 28, bytecode pc 103
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 30, bytecode pc 120
    this.setContentSize(visibleSize);
    // source line 33, bytecode pc 160
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Toast);
    // source line 36, bytecode pc 193
    (this.playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 37, bytecode pc 232
    this.playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 38, bytecode pc 291
    xs.Utils.Node.attachNodes(this, this.playerInfo, { desc: "lt", sc: true });
    // source line 41, bytecode pc 331
    this.playerInfo.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 45, bytecode pc 423
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 48, bytecode pc 463
    this.pageView.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 53, bytecode pc 543
    this.pageView.addPageWhitConstruct(xs.Factorys.String.create("1071010003"), xs.Views.ToastView, { listener: this });
    // source line 56, bytecode pc 643
    this.pageView.addPageWhitConstruct(xs.Factorys.String.create("1071010004"), xs.Views.StoreItemView, { listener: this, param: xs.Views.StoreItemViewType_Item });
    // source line 59, bytecode pc 743
    this.pageView.addPageWhitConstruct(xs.Factorys.String.create("1071010005"), xs.Views.StoreItemView, { listener: this, param: xs.Views.StoreItemViewType_Gift });
    // source line 61, bytecode pc 802
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 63, bytecode pc 873
    this.pageView.setHintIcon([ 0, 2 ], [ xs.Constant_HintType_Store_Toast, xs.Constant_HintType_Store_Gift ], true);
    // source line 66, bytecode pc 912
    (this.btnPreview = xs.Views.Btn.create("Btn_Previews"));
    // source line 67, bytecode pc 955
    this.btnPreview.setAnchorPoint(cc.p(0.5, 1));
    // source line 68, bytecode pc 1044
    xs.Utils.Node.attachNodes(this, this.btnPreview, { desc: "rt", sc: true, offset: cc.p(-190, -80) });
    // source line 71, bytecode pc 1084
    this.btnPreview.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 73, bytecode pc 1108
    this.btnPreview.setOnClickCallBack(function() {
    // source line 74, bytecode pc 32
    xs.Views.Mgr.showDialogByName("GeneralPreviewDialog");
});
    // source line 78, bytecode pc 1147
    (this.btnCharge = xs.Views.Btn.create("Btn_Recharge"));
    // source line 79, bytecode pc 1190
    this.btnCharge.setAnchorPoint(cc.p(0.5, 1));
    // source line 81, bytecode pc 1279
    xs.Utils.Node.attachNodes(this, this.btnCharge, { desc: "rt", sc: true, offset: cc.p(-190, -10) });
    // source line 84, bytecode pc 1319
    this.btnCharge.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 86, bytecode pc 1343
    this.btnCharge.setOnClickCallBack(function() {
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargeCount() <= 0)) {
        // source line 89, bytecode pc 97
        xs.Views.Mgr.showDialogByName("FirstChargeDialog");
    } else {
        // source line 91, bytecode pc 135
        xs.Views.Mgr.showDialogByName("ChargeDialog");
    }
});
    // source line 96, bytecode pc 1380
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, false));
    // source line 100, bytecode pc 1420
    this.sideMenu.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 104, bytecode pc 1453
    (this.horn = xs.Views.HornView.create());
    // source line 105, bytecode pc 1512
    xs.Utils.Node.attachNodes(this, this.horn, { desc: "lb", sc: true });
    // source line 108, bytecode pc 1552
    this.horn.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 112, bytecode pc 1591
    (this.mShenMiStore = xs.Views.Btn.create("Btn_ShenMiStore"));
    // source line 113, bytecode pc 1677
    xs.Utils.Node.attachNodes(this, this.mShenMiStore, { desc: "ct", sc: true, offset: cc.p(-10, -20) });
    // source line 114, bytecode pc 1716
    this.mShenMiStore.setAnchorPoint(cc.p(0, 1));
    // source line 118, bytecode pc 1756
    this.mShenMiStore.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 121, bytecode pc 1780
    this.mShenMiStore.setOnClickCallBack(function() {
    // source line 122, bytecode pc 31
    xs.Views.Dialog.MysteryStoreDialog.showWithSurrenderInfo();
});
    // source line 128, bytecode pc 1796
    this.setBaseTouchPriority(-1);
    // source line 130, bytecode pc 1798
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 134, bytecode pc 12
    this._super();
    // source line 136, bytecode pc 63
    xs.Guide.GuideMgr.endStepBySequence([ "30102", "40101_before" ]);
    if ((this.params && this.params.pageIdx)) {
        // source line 139, bytecode pc 121
        this.pageView.selectPage(this.params.pageIdx);
    }
},
    onCleanUpBeforeSceneExit: function() {
    var page;
    // source line 144, bytecode pc 22
    (page = this.pageView.getPageByIdx(0));
    if (page) {
        // source line 146, bytecode pc 45
        page.stopGeneralShow();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 151, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 153, bytecode pc 51
    this.sideMenu.setBaseTouchPriority((this.m_baseTouchPriority + this.cfg.sideBar.priority));
    // source line 154, bytecode pc 93
    this.pageView.setBaseTouchPriority((this.m_baseTouchPriority + this.cfg.pageView.priority));
    // source line 155, bytecode pc 135
    this.btnCharge.setTouchPriority((this.m_baseTouchPriority + this.cfg.chargeBtn.priority));
    // source line 156, bytecode pc 177
    this.btnPreview.setTouchPriority((this.m_baseTouchPriority + this.cfg.previewBtn.priority));
    // source line 157, bytecode pc 233
    this.horn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_horn.priority));
    // source line 158, bytecode pc 260
    this.mShenMiStore.setTouchPriority((this.m_baseTouchPriority - 1));
},
    showToastResult: function(rewardInfo) {
    var data;
    // source line 164, bytecode pc 41
    xs.Guide.GuideMgr.endStepBySequence([ "40000" ]);
    if ((rewardInfo.general.length > 1)) {
        // source line 167, bytecode pc 98
        (this.toastResultView = xs.Views.ToastResultView_ten.create(rewardInfo));
    } else {
        // source line 169, bytecode pc 140
        (this.toastResultView = xs.Views.ToastResultView.create(rewardInfo));
    }
    // source line 172, bytecode pc 182
    this.toastResultView.setBaseTouchPriority((this.m_baseTouchPriority + this.cfg.toastResult.priority));
    // source line 173, bytecode pc 202
    this.toastResultView.setListener(this);
    // source line 174, bytecode pc 220
    this.toastResultView.retain();
    // source line 177, bytecode pc 230
    (data = {});
    // source line 178, bytecode pc 263
    (data.rect = cc.rect(0, 0, 0, 0));
    // source line 179, bytecode pc 273
    (data.delay = 0);
    // source line 180, bytecode pc 283
    (data.isClickHand = false);
    // source line 181, bytecode pc 316
    xs.Views.Mgr.showHollowOutLayer(data, this);
    // source line 188, bytecode pc 359
    this.runEffectAction(xs.Constant_NodeEffectEvent_Disappear, function() {
    // source line 184, bytecode pc 28
    xs.Views.Mgr.hideHollowOutLayer(this);
    // source line 185, bytecode pc 48
    this.addChild(this.toastResultView);
    // source line 186, bytecode pc 66
    this.toastResultView.release();
    // source line 187, bytecode pc 97
    this.pageView.getCurSelPageView().setToastLocked(false);
}.bind(this));
},
    backFromToastResult: function() {
    var data, _modelMap;
    // source line 194, bytecode pc 9
    (data = {});
    // source line 195, bytecode pc 42
    (data.rect = cc.rect(0, 0, 0, 0));
    // source line 196, bytecode pc 52
    (data.delay = 0);
    // source line 197, bytecode pc 62
    (data.isClickHand = false);
    // source line 198, bytecode pc 95
    xs.Views.Mgr.showHollowOutLayer(data, this);
    // source line 204, bytecode pc 138
    this.runEffectAction(xs.Constant_NodeEffectEvent_Revert, function() {
    // source line 201, bytecode pc 28
    xs.Views.Mgr.hideHollowOutLayer(this);
    // source line 203, bytecode pc 70
    xs.Guide.GuideMgr.endStepBySequence([ "40002" ]);
}.bind(this));
    // source line 207, bytecode pc 174
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("Toast_RandEvent"));
    if (_modelMap) {
        // source line 209, bytecode pc 219
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    }
},
    buyGood: function(good) {
    if (!good.isPurchased()) {
        if (!good.isAbleToBuy()) {
            // source line 218, bytecode pc 99
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Store_is_close"));
        } else {
            // source line 221, bytecode pc 164
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Store_vipDeficiency"));
        }
        // source line 224, bytecode pc 166
        return void 0;
    }
    if ((good.getCanBuyNum() > 1)) {
        // source line 227, bytecode pc 204
        this.showMultiBuyDialog(good);
    } else {
        // source line 229, bytecode pc 226
        this.showBuyDialog(good);
    }
},
    showMultiBuyDialog: function(good) {
    // source line 236, bytecode pc 42
    (this.multiBuyDialog = xs.Views.Mgr.showDialogByName("MultiItemBuyDialog", good));
    // source line 237, bytecode pc 62
    this.multiBuyDialog.setListener(this);
},
    showBuyDialog: function(good) {
    var promptStr, itemPrice, itemName, dialog;
    // source line 243, bytecode pc 4
    (promptStr = null);
    // source line 244, bytecode pc 28
    (itemPrice = good.getPrice());
    // source line 245, bytecode pc 52
    (itemName = good.getNameString());
    // source line 247, bytecode pc 108
    (promptStr = xs.Tools.String.createStringWithArgsArray("MysteryStorePrompt_6", [ itemPrice, itemName ]));
    // source line 248, bytecode pc 129
    xs.log_ck(promptStr);
    // source line 263, bytecode pc 310
    (dialog = xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "1071310069",
    content: promptStr,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 255, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 258, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 259, bytecode pc 66
    xs.Tools.Net.getInstance().setListener(this);
    // source line 261, bytecode pc 156
    xs.Tools.Net.getInstance().BuyGood(good, 1, this, (this.m_baseTouchPriority + xs.Cfg.Scene.StoreScene.BuyGoodsSuccessPopView.priority));
}.bind(this)
}));
},
    confirmBuy: function(good, buyNum) {
    // source line 269, bytecode pc 39
    xs.Tools.Net.getInstance().setListener(this);
    // source line 271, bytecode pc 125
    xs.Tools.Net.getInstance().BuyGood(good, buyNum, this, (this.m_baseTouchPriority + xs.Cfg.Scene.StoreScene.BuyGoodsSuccessPopView.priority));
},
    buyGoodSuccessCallback: function(data) {
    var curView;
    // source line 276, bytecode pc 20
    (curView = this.pageView.getCurSelPageView());
    if ((curView && curView.refreshStore)) {
        // source line 278, bytecode pc 57
        curView.refreshStore();
    }
    // source line 281, bytecode pc 111
    xs.Tools.Statistic.buy(data.item_id, data.purchased_num, data.discount_price);
},
    cfg: {
        sideBar: { priority: -20 },
        chargeBtn: { priority: -1 },
        previewBtn: { priority: -1 },
        pageView: { priority: -1 },
        toastResult: { priority: -1 }
    }
}));
// source line 303, bytecode pc 290
(xs.Scene.StoreScene.create = function(params) {
    var ret;
    // source line 304, bytecode pc 23
    (ret = new xs.Scene.StoreScene());
    if ((ret && ret.init(params))) {
        // source line 306, bytecode pc 59
        return ret;
    }
    // source line 308, bytecode pc 61
    return null;
});
// source line 319, bytecode pc 432
xs.Scene.Mgr.registerScene("StoreScene", {
    "class": xs.Scene.StoreScene,
    area: [ "DuiJiuScene01", "SellTag", "SecretShop", "Duijiu" ],
    type: xs.Constant_SceneType_Cmn,
    audio: { bgId: "Audio_BG_Toast" }
});
