// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/MultiItemExchangeDialog.js:1
// source line 172, bytecode pc 584
(xs.Views.Dialog.MultiItemExchangeDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(good) {
    var rewardList, i, item_list;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 76
    (rewardList = xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().getRewardList());
    // source line 16, bytecode pc 90
    (this.good = rewardList[good]);
    // source line 17, bytecode pc 98
    (this.buyNum = 1);
    // source line 20, bytecode pc 106
    (this.minNum = 1);
    // source line 21, bytecode pc 136
    (this.maxNum = (this.good.max_num - this.good.exchange_num));
    // source line 23, bytecode pc 141
    (i = 0);
    while ((i < this.good.item_list.length)) {
        // source line 24, bytecode pc 166
        (item_list = this.good.item_list[i]);
        // source line 25, bytecode pc 207
        xs.log_zhz("item_list.total_num/item_list.need_num", (item_list.total_num / item_list.need_num));
        // source line 26, bytecode pc 271
        (this.maxNum = ((this.maxNum <= (item_list.total_num / item_list.need_num)) ? this.maxNum : (item_list.total_num / item_list.need_num)));
        // source line 23, bytecode pc 285
        (i = (+i + 1));
    }
    // source line 36, bytecode pc 348
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_8_5_MultiItemBuyDialog.ccbi", this));
    // source line 37, bytecode pc 391
    this.ccbNode.setContentSize(cc.size(524, 304));
    // source line 38, bytecode pc 438
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 41, bytecode pc 497
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 44, bytecode pc 505
    (this.m_titleLabel = null);
    // source line 45, bytecode pc 513
    (this.m_tipLabel = null);
    // source line 46, bytecode pc 521
    (this.m_buyNumLabel = null);
    // source line 47, bytecode pc 529
    (this.m_totalPriceLabel = null);
    // source line 48, bytecode pc 537
    (this.m_cancelBtn = null);
    // source line 49, bytecode pc 545
    (this.m_confirmBtn = null);
    // source line 50, bytecode pc 553
    (this.m_btnClose = null);
    // source line 51, bytecode pc 561
    (this.m_unlook = null);
    // source line 52, bytecode pc 569
    (this.m_exchange_numlabel = null);
    // source line 54, bytecode pc 617
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 56, bytecode pc 641
    this.m_buyNumLabel.setString("1");
    // source line 60, bytecode pc 713
    (this.add1Btn = xs.Utils.replaceButton(this.ccbNode, 14, xs.Views.Button.ChangeNumBtn.create(1)));
    // source line 61, bytecode pc 751
    this.add1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 64, bytecode pc 824
    (this.decrease1Btn = xs.Utils.replaceButton(this.ccbNode, 13, xs.Views.Button.ChangeNumBtn.create(2)));
    // source line 65, bytecode pc 862
    this.decrease1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 68, bytecode pc 935
    (this.add10Btn = xs.Utils.replaceButton(this.ccbNode, 15, xs.Views.Button.ChangeNumBtn.create(3)));
    // source line 69, bytecode pc 973
    this.add10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 72, bytecode pc 1046
    (this.decrease10Btn = xs.Utils.replaceButton(this.ccbNode, 12, xs.Views.Button.ChangeNumBtn.create(4)));
    // source line 73, bytecode pc 1084
    this.decrease10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 76, bytecode pc 1104
    this.m_unlook.setVisible(false);
    // source line 78, bytecode pc 1174
    this.m_exchange_numlabel.setStringByStrings([ xs.Tools.String.createString("multi_exchange_numlabel"), this.maxNum ]);
    // source line 79, bytecode pc 1203
    this.m_exchange_numlabel.setAnchorPoint(xs.ap_c);
    // source line 80, bytecode pc 1241
    this.m_confirmBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 81, bytecode pc 1279
    this.m_cancelBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 82, bytecode pc 1317
    this.m_btnClose.setOnClickCallBack(this.onClose.bind(this));
    // source line 84, bytecode pc 1319
    return true;
},
    setListener: function(listener) {
    // source line 88, bytecode pc 9
    (this.m_listener = listener);
},
    onClose: function() {
    // source line 92, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onClick: function(sender) {
    // source line 96, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((sender === this.m_confirmBtn)) {
        // source line 98, bytecode pc 64
        xs.log_zhz("requestPartyDouble");
        // source line 115, bytecode pc 271
        xs.Tools.Net.requestPartyDouble({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    instance_id: xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().getInstanceId(),
    exchange_id: this.good.exchange_id,
    num: this.buyNum
}, function(data) {
    // source line 107, bytecode pc 26
    xs.log_zhz("data", data);
    // source line 108, bytecode pc 58
    xs.log_zhz("data.activity_exchange", data.activity_exchange);
    // source line 109, bytecode pc 121
    xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().loadJson(data.activity_exchange);
    if ((this.m_listener != null)) {
        // source line 111, bytecode pc 152
        this.m_listener.freshExchangeData();
    }
    // source line 113, bytecode pc 194
    xs.Views.Mgr.showDialogByName("GetPropsDialog", data.add_list);
}.bind(this), function() {
});
    }
},
    onChgNum: function(sender) {
    // source line 123, bytecode pc 3
    switch (sender) {
        case this.add1Btn:
        if ((this.buyNum < this.maxNum)) {
            // source line 126, bytecode pc 85
            (this.buyNum = (this.buyNum + 1));
        }
        break;
        case this.decrease1Btn:
        if ((this.buyNum > this.minNum)) {
            // source line 131, bytecode pc 123
            (this.buyNum = (this.buyNum - 1));
        }
        break;
        case this.add10Btn:
        // source line 135, bytecode pc 182
        (((this.buyNum + 10) < this.maxNum) ? (this.buyNum = (this.buyNum + 10)) : (this.buyNum = this.maxNum));
        break;
        case this.decrease10Btn:
        // source line 140, bytecode pc 241
        (((this.buyNum - 10) > this.minNum) ? (this.buyNum = (this.buyNum - 10)) : (this.buyNum = this.minNum));
        break;
        default:
        break;
    }
    // source line 144, bytecode pc 277
    this.m_buyNumLabel.setString((this.buyNum + ""));
},
    setBaseTouchPriority: function(priority) {
    // source line 149, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 150, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 152, bytecode pc 56
    this.add1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 153, bytecode pc 83
    this.decrease1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 154, bytecode pc 110
    this.add10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 155, bytecode pc 137
    this.decrease10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 157, bytecode pc 164
    this.m_cancelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 158, bytecode pc 191
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 159, bytecode pc 218
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "m_titleLabel", id: "LS_popUI1", stringId: "multi_exchange_title" },
            { tag: 2, type: "ls", name: "m_tipLabel", id: "LS_popUI2", stringId: "multi_exchange_tip" },
            { tag: 3, type: "ls", name: "m_buyNumLabel", id: "LS_popUI4" },
            { tag: 4, type: "ls", name: "m_totalPriceLabel", id: "LS_liebiaoInf2" },
            { tag: 16, type: "btn", name: "m_cancelBtn", id: "Btn_Cancel" },
            { tag: 17, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" },
            { tag: 50, type: "btn", name: "m_btnClose", id: "Btn_Close" },
            { tag: 51, type: "ls_ext", name: "m_exchange_numlabel", ids: [ "LS_popUI2", "LS_wujiangInf1" ] },
            { tag: 52, name: "m_unlook" }
        ]
    }
}));
// source line 177, bytecode pc 615
(xs.Views.Dialog.MultiItemExchangeDialog.create = function(good) {
    var ret;
    // source line 178, bytecode pc 28
    (ret = new xs.Views.Dialog.MultiItemExchangeDialog());
    if ((ret && ret.init(good))) {
        // source line 180, bytecode pc 64
        return ret;
    }
    // source line 182, bytecode pc 66
    return null;
});
// source line 187, bytecode pc 695
xs.Views.Mgr.registerDialog("MultiItemExchangeDialog", { "class": xs.Views.Dialog.MultiItemExchangeDialog, styleType: xs.Constant_DlgStyleType_Small });
