// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/GoldDrawDialog.js:1
// source line 114, bytecode pc 481
(xs.Views.Dialog.GoldDrawDialog = xs.Views.HungerLayer.extend({
    name: "GoldDrawDialog",
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var toastModel, jiangJunZhanNum, itemModel, sprite;
    // source line 16, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 19
    (toastModel = params);
    // source line 20, bytecode pc 55
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_14_GoldTenDraw.ccbi", this));
    // source line 22, bytecode pc 98
    this.ccbNode.setContentSize(cc.size(696, 603));
    // source line 23, bytecode pc 145
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 24, bytecode pc 229
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: cc.p(0, 0), sc: true });
    // source line 26, bytecode pc 237
    (this.m_title = null);
    // source line 27, bytecode pc 245
    (this.m_singlePrice = null);
    // source line 28, bytecode pc 253
    (this.m_tenPrice = null);
    // source line 29, bytecode pc 261
    (this.m_tip = null);
    // source line 30, bytecode pc 269
    (this.m_closeBtn = null);
    // source line 31, bytecode pc 277
    (this.m_shenjiangLabel = null);
    // source line 33, bytecode pc 325
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 35, bytecode pc 376
    this.m_title.setString(xs.Tools.String.createString("titleStr_DrawGeneral"));
    // source line 40, bytecode pc 458
    this.m_singlePrice.setString(xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_GoldWineGlass));
    // source line 41, bytecode pc 540
    this.m_tenPrice.setString(xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_JiangJunZhan));
    if (((toastModel.getGoldGeneralDrawTimes() === 0) || !toastModel.isFirstDrawByYuanBao())) {
        // source line 47, bytecode pc 642
        this.m_tip.setStringByStrings([ xs.Tools.String.createString("auto_name_415") ]);
    } else {
        // source line 49, bytecode pc 761
        this.m_tip.setStringByStrings([
    xs.Tools.String.createString("auto_name_416"),
    toastModel.getGoldGeneralDrawTimes(),
    xs.Tools.String.createString("auto_name_417")
]);
    }
    if (xs.isVersionForPublish) {
    }
    // source line 57, bytecode pc 800
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 58, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 62, bytecode pc 868
    (this.singleBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(this.cfg.singleDraw.tag)));
    // source line 63, bytecode pc 892
    this.singleBtn.setOnClickCallBack(function() {
    // source line 64, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 65, bytecode pc 77
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_SingleDraw, { isTenDraw: false });
});
    // source line 69, bytecode pc 960
    (this.tenBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(this.cfg.tenDraw.tag)));
    // source line 70, bytecode pc 984
    this.tenBtn.setOnClickCallBack(function() {
    // source line 71, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 72, bytecode pc 77
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_TenDraw, { isTenDraw: true });
});
    // source line 75, bytecode pc 1051
    (jiangJunZhanNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_JiangJunZhan));
    if ((jiangJunZhanNum > 0)) {
        // source line 78, bytecode pc 1083
        this.m_tenPrice.setString(jiangJunZhanNum);
        // source line 79, bytecode pc 1150
        (itemModel = xs.Profile.GameData.Mgr.getInstance().Items.getByItemId(xs.Models.ItemID_JiangJunZhan));
        // source line 80, bytecode pc 1174
        (sprite = itemModel.createPartView("head1"));
        // source line 82, bytecode pc 1195
        sprite.setScale(0.7);
        // source line 85, bytecode pc 1235
        xs.Utils.replaceNode(this.ccbNode, 102, sprite, false, true);
    }
    // source line 88, bytecode pc 1237
    return true;
},
    onEnter: function() {
    // source line 92, bytecode pc 12
    this._super();
    // source line 94, bytecode pc 54
    this.singleBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.singleDraw.priority));
    // source line 95, bytecode pc 96
    this.tenBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.tenDraw.priority));
    // source line 96, bytecode pc 138
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
},
    setBaseTouchPriority: function(priority) {
    // source line 100, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    cfg: {
        singleDraw: { tag: 13, priority: -1 },
        tenDraw: { tag: 14, priority: -1 },
        closeBtn: { priority: -1 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_title", id: "LS_popUI1" },
            { tag: 11, type: "ls_ext", name: "m_tip", ids: [ "LS_popUI4", "LS_popUI5", "LS_popUI4" ] },
            { tag: 15, type: "ls", name: "m_singlePrice", id: "LS_danyao" },
            { tag: 16, type: "ls", name: "m_tenPrice", id: "LS_danyao" },
            { tag: 20, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
            { tag: 31, name: "m_shenjiangLabel" }
        ]
    }
}));
// source line 119, bytecode pc 512
(xs.Views.Dialog.GoldDrawDialog.create = function(params) {
    var ret;
    // source line 120, bytecode pc 28
    (ret = new xs.Views.Dialog.GoldDrawDialog());
    if ((ret && ret.init(params))) {
        // source line 122, bytecode pc 64
        return ret;
    }
    // source line 124, bytecode pc 66
    return null;
});
// source line 131, bytecode pc 637
xs.Views.Mgr.registerDialog("GoldDrawDialog", {
    "class": xs.Views.Dialog.GoldDrawDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    dlgType: xs.Cfg.Scene.CommonScene.Dialog,
    viewType: xs.Constant_ViewType_Dlg
});
