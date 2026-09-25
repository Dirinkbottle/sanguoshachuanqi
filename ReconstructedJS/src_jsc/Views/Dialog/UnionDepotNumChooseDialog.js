// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionDepotNumChooseDialog.js:1
// source line 176, bytecode pc 519
(xs.Views.Dialog.UnionDepotNumChooseDialog = xs.Views.HungerLayer.extend({
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "m_titleLabel", id: "LS_popUI1" },
            { tag: 2, type: "ls", name: "m_tipLabel", id: "LS_popUI2" },
            { tag: 3, type: "ls", name: "m_distributionNumLabel", id: "LS_popUI4" },
            { tag: 4, type: "ls", name: "m_leftNum", id: "LS_liebiaoInf2" },
            { tag: 16, type: "btn", name: "m_cancelBtn", id: "Btn_Cancel" },
            { tag: 17, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" },
            { tag: 50, type: "btn", name: "m_btnClose", id: "Btn_Close" },
            { tag: 51, type: "ls", name: "m_leftNumLabel", id: "LS_popUI2" }
        ]
    },
    ctor: function() {
    // source line 20, bytecode pc 12
    this._super();
    // source line 21, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(itemInfo) {
    if (!this._super()) {
        // source line 26, bytecode pc 19
        return false;
    }
    // source line 28, bytecode pc 27
    (this.m_titleLabel = null);
    // source line 29, bytecode pc 35
    (this.m_tipLabel = null);
    // source line 30, bytecode pc 43
    (this.m_distributionNumLabel = null);
    // source line 31, bytecode pc 51
    (this.m_leftNum = null);
    // source line 32, bytecode pc 59
    (this.m_cancelBtn = null);
    // source line 33, bytecode pc 67
    (this.m_confirmBtn = null);
    // source line 34, bytecode pc 75
    (this.m_btnClose = null);
    // source line 35, bytecode pc 83
    (this.m_leftNumLabel = null);
    // source line 36, bytecode pc 91
    (this.m_ccbNode = null);
    // source line 37, bytecode pc 101
    (this.m_itemInfo = itemInfo);
    // source line 38, bytecode pc 109
    (this.m_distributionNum = 1);
    // source line 39, bytecode pc 117
    (this.m_listener = null);
    // source line 40, bytecode pc 166
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.UnionDepotNumChooseDialog));
    // source line 41, bytecode pc 209
    this.m_ccbNode.setContentSize(cc.size(524, 304));
    // source line 42, bytecode pc 256
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 45, bytecode pc 315
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", xsc: true });
    // source line 47, bytecode pc 363
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.cfg.ccbCfg, this);
    // source line 48, bytecode pc 414
    this.m_titleLabel.setString(xs.Tools.String.createString("lblStr_unionDepotNumChsDlgTtl"));
    // source line 49, bytecode pc 465
    this.m_tipLabel.setString(xs.Tools.String.createString("lblStr_unionDepotNumChsDlgDes"));
    // source line 50, bytecode pc 516
    this.m_leftNumLabel.setString(xs.Tools.String.createString("lblStr_unionDepotLeftNum"));
    // source line 57, bytecode pc 588
    (this.add1Btn = xs.Utils.replaceButton(this.m_ccbNode, 14, xs.Views.Button.ChangeNumBtn.create(1)));
    // source line 58, bytecode pc 626
    this.add1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 61, bytecode pc 699
    (this.decrease1Btn = xs.Utils.replaceButton(this.m_ccbNode, 13, xs.Views.Button.ChangeNumBtn.create(2)));
    // source line 62, bytecode pc 737
    this.decrease1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 65, bytecode pc 810
    (this.add10Btn = xs.Utils.replaceButton(this.m_ccbNode, 15, xs.Views.Button.ChangeNumBtn.create(3)));
    // source line 66, bytecode pc 848
    this.add10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 69, bytecode pc 921
    (this.decrease10Btn = xs.Utils.replaceButton(this.m_ccbNode, 12, xs.Views.Button.ChangeNumBtn.create(4)));
    // source line 70, bytecode pc 959
    this.decrease10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 72, bytecode pc 997
    this.m_confirmBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 73, bytecode pc 1035
    this.m_cancelBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 74, bytecode pc 1073
    this.m_btnClose.setOnClickCallBack(this.onClose.bind(this));
    // source line 75, bytecode pc 1091
    (this.maxNum = this.m_itemInfo.maxNum);
    // source line 76, bytecode pc 1099
    (this.minNum = 1);
    // source line 86, bytecode pc 1123
    this.m_distributionNumLabel.setString("1");
    // source line 87, bytecode pc 1173
    this.m_leftNum.setString((((this.m_itemInfo.maxNum - 1) + "/") + this.m_itemInfo.maxNum));
    // source line 89, bytecode pc 1208
    xs.log("itemInfo_num", this.m_itemInfo.maxNum);
    // source line 92, bytecode pc 1210
    return true;
},
    onClose: function() {
    // source line 96, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setListener: function(listener) {
    // source line 99, bytecode pc 9
    (this.m_listener = listener);
},
    onChgNum: function(sender) {
    // source line 103, bytecode pc 3
    switch (sender) {
        case this.add1Btn:
        if ((this.m_distributionNum < this.maxNum)) {
            // source line 106, bytecode pc 85
            (this.m_distributionNum = (this.m_distributionNum + 1));
        }
        break;
        case this.decrease1Btn:
        if ((this.m_distributionNum > this.minNum)) {
            // source line 111, bytecode pc 123
            (this.m_distributionNum = (this.m_distributionNum - 1));
        }
        break;
        case this.add10Btn:
        // source line 115, bytecode pc 182
        (((this.m_distributionNum + 10) < this.maxNum) ? (this.m_distributionNum = (this.m_distributionNum + 10)) : (this.m_distributionNum = this.maxNum));
        break;
        case this.decrease10Btn:
        // source line 120, bytecode pc 241
        (((this.m_distributionNum - 10) > this.minNum) ? (this.m_distributionNum = (this.m_distributionNum - 10)) : (this.m_distributionNum = this.minNum));
        break;
        default:
        break;
    }
    // source line 124, bytecode pc 277
    this.m_distributionNumLabel.setString((this.m_distributionNum + ""));
    // source line 125, bytecode pc 332
    this.m_leftNum.setString((((this.m_itemInfo.maxNum - this.m_distributionNum) + "/") + this.m_itemInfo.maxNum));
    // source line 127, bytecode pc 362
    xs.log("num", this.m_distributionNum);
},
    onClick: function(sender) {
    // source line 131, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((sender === this.m_confirmBtn)) {
        // source line 172, bytecode pc 214
        xs.Tools.Net.requestAllotDepot({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    member_id: this.m_itemInfo.member_id,
    pk_id: this.m_itemInfo.pk_id,
    num: this.m_distributionNum,
    forcepush: true
}, function(data) {
    // source line 141, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("str_UnionDepot_AllotSuccess"));
    // source line 142, bytecode pc 89
    (this.m_listener.m_itemInfo.maxNum = (this.maxNum - this.m_distributionNum));
    // source line 157, bytecode pc 152
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_AddUnionLogAndRefresh, { content: data.return_info.log_content });
    if ((this.m_listener.m_itemInfo.maxNum == 0)) {
        // source line 161, bytecode pc 202
        xs.Views.Mgr.hideDialog();
        if ((this.m_listener.m_listener.m_listener.m_listener.m_listener && this.m_listener.m_listener.m_listener.m_listener.m_listener._readUnionDepotList)) {
            // source line 164, bytecode pc 308
            this.m_listener.m_listener.m_listener.m_listener.m_listener._readUnionDepotList();
        }
    }
}.bind(this), function(data) {
}, this);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 177, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 178, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 179, bytecode pc 56
    this.add1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 180, bytecode pc 83
    this.decrease1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 181, bytecode pc 110
    this.add10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 182, bytecode pc 137
    this.decrease10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 184, bytecode pc 164
    this.m_cancelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 185, bytecode pc 191
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 186, bytecode pc 218
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 192, bytecode pc 550
(xs.Views.Dialog.UnionDepotNumChooseDialog.create = function(itemInfo) {
    var ret;
    // source line 193, bytecode pc 28
    (ret = new xs.Views.Dialog.UnionDepotNumChooseDialog());
    if ((ret && ret.init(itemInfo))) {
        // source line 195, bytecode pc 64
        return ret;
    }
    // source line 197, bytecode pc 66
    return null;
});
// source line 202, bytecode pc 630
xs.Views.Mgr.registerDialog("UnionDepotNumChooseDialog", { "class": xs.Views.Dialog.UnionDepotNumChooseDialog, styleType: xs.Constant_DlgStyleType_Small });
