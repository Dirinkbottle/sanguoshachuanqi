// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/ChargePrivilegeDialog.js:1
// source line 139, bytecode pc 596
(xs.Views.Dialog.ChargePrivilegeDialog = xs.Views.HungerLayer.extend({
    name: "ChargePrivilegeDialog",
    clickType: { previous: 1, next: 2 },
    cfg: {
        btnClose: { priority: -1 },
        btnPreviousPage: { priority: -1 },
        btnNextPage: { priority: -1 },
        btnViewGiftBag: { priority: -1 },
        ccbCfg: [
            { tag: 12, type: "ls", name: "lblVipTitle", id: "LS_qianghua_done" },
            {
                tag: 13,
                type: "ls_ext",
                name: "lblVipGiftBag",
                ids: [ "LS_wujiangName1", "LS_qianghua_done", "LS_wujiangName1" ]
            },
            { tag: 14, type: "ls", name: "lblDesc", id: "LS_popUI2" },
            { tag: 20, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 21, type: "btn", name: "btnViewGiftBag", id: "Btn_ViewGiftBag" },
            { tag: 22, type: "btn", name: "btnPreviousPage", id: "Btn_PreviousePage" },
            { tag: 23, type: "btn", name: "btnNextPage", id: "Btn_NextPage" }
        ]
    },
    init: function(vipLevel) {
    var i, cfgData, titleSprite;
    if (!this._super()) {
        // source line 34, bytecode pc 19
        return false;
    }
    // source line 38, bytecode pc 29
    (this.vipLevel = vipLevel);
    // source line 39, bytecode pc 48
    (this.maxVipLevel = this.getMaxVip());
    // source line 40, bytecode pc 60
    (this.dataSource = []);
    // source line 42, bytecode pc 68
    (this.btnClose = null);
    // source line 43, bytecode pc 76
    (this.btnPreviousPage = null);
    // source line 44, bytecode pc 84
    (this.btnNextPage = null);
    // source line 45, bytecode pc 92
    (this.btnViewGiftBag = null);
    // source line 46, bytecode pc 100
    (this.lblVipTitle = null);
    // source line 47, bytecode pc 108
    (this.lblVipGiftBag = null);
    // source line 48, bytecode pc 116
    (this.dialogTitle = null);
    // source line 49, bytecode pc 124
    (this.lblDesc = null);
    // source line 52, bytecode pc 129
    (i = 0);
    while ((i < (this.maxVipLevel + 1))) {
        // source line 53, bytecode pc 177
        (cfgData = xs.Models.VipCfg.createWithBase(((i - 1) + "")));
        // source line 55, bytecode pc 199
        this.dataSource.push(cfgData);
        // source line 52, bytecode pc 212
        (i = (+i + 1));
    }
    // source line 58, bytecode pc 266
    (this.ccbNode = cc.BuilderReader.load("ccb3/ChargePrivilege.ccbi", this));
    // source line 59, bytecode pc 309
    this.ccbNode.setContentSize(cc.size(862, 619));
    // source line 60, bytecode pc 356
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 61, bytecode pc 409
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 64, bytecode pc 457
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 66, bytecode pc 481
    (titleSprite = this.ccbNode.getChildByTag(11));
    // source line 67, bytecode pc 553
    (this.dialogTitle = xs.Factorys.Label.createByStyleIdWithString("LS_huodong_title", xs.Tools.String.createString("auto_name_220")));
    // source line 69, bytecode pc 637
    this.dialogTitle.setPosition(cc.p((titleSprite.getContentSize().width / 2), (titleSprite.getContentSize().height * 0.6)));
    // source line 70, bytecode pc 659
    titleSprite.addChild(this.dialogTitle);
    // source line 73, bytecode pc 683
    this.btnClose.setOnClickCallBack(function() {
    // source line 74, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 77, bytecode pc 707
    this.lblVipTitle.setScale(0.7);
    // source line 78, bytecode pc 733
    this.lblVipGiftBag.setFontScaleAtIndex(1, 0.5);
    // source line 83, bytecode pc 770
    this.btnPreviousPage.setOnClickCallBack(function() {
    // source line 82, bytecode pc 24
    this.changeView(this.clickType.previous);
}.bind(this));
    // source line 88, bytecode pc 807
    this.btnNextPage.setOnClickCallBack(function() {
    // source line 87, bytecode pc 24
    this.changeView(this.clickType.next);
}.bind(this));
    // source line 94, bytecode pc 844
    this.btnViewGiftBag.setOnClickCallBack(function() {
    var cfgData;
    // source line 92, bytecode pc 16
    (cfgData = this.dataSource[this.vipLevel]);
    // source line 93, bytecode pc 64
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", cfgData.getGiftId());
}.bind(this));
    // source line 97, bytecode pc 861
    this.refreshView(vipLevel);
    // source line 99, bytecode pc 863
    return true;
},
    getMaxVip: function() {
    var starIdx, mVipCfg, maxVip;
    // source line 103, bytecode pc 8
    (starIdx = "-1");
    // source line 104, bytecode pc 49
    (mVipCfg = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Vip));
    // source line 105, bytecode pc 55
    (maxVip = -1);
    while (mVipCfg[starIdx]) {
        // source line 107, bytecode pc 91
        (starIdx = ((parseInt(starIdx) + 1) + ""));
        // source line 109, bytecode pc 100
        (maxVip = (maxVip + 1));
    }
    // source line 111, bytecode pc 117
    return maxVip;
},
    onEnter: function() {
    // source line 116, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 120, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 121, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 122, bytecode pc 93
    this.btnPreviousPage.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnPreviousPage.priority));
    // source line 123, bytecode pc 135
    this.btnNextPage.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnNextPage.priority));
    // source line 124, bytecode pc 177
    this.btnViewGiftBag.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnViewGiftBag.priority));
},
    changeView: function(playerClickType) {
    if ((playerClickType == this.clickType.previous)) {
        // source line 130, bytecode pc 58
        (this.vipLevel = ((this.vipLevel > 0) ? (this.vipLevel - 1) : this.vipLevel));
    } else {
        // source line 134, bytecode pc 107
        (this.vipLevel = ((this.vipLevel < this.maxVipLevel) ? (this.vipLevel + 1) : this.vipLevel));
    }
    // source line 136, bytecode pc 127
    this.refreshView(this.vipLevel);
},
    refreshView: function(vipLevel) {
    var cfgData;
    if ((vipLevel == 0)) {
        // source line 141, bytecode pc 29
        this.btnPreviousPage.setVisible(false);
    } else {
        if ((vipLevel == this.maxVipLevel)) {
            // source line 144, bytecode pc 69
            this.btnNextPage.setVisible(false);
        } else {
            // source line 147, bytecode pc 94
            this.btnPreviousPage.setVisible(true);
            // source line 148, bytecode pc 114
            this.btnNextPage.setVisible(true);
        }
    }
    // source line 152, bytecode pc 208
    this.lblVipTitle.setString((((xs.Tools.String.createString("auto_name_vip") + " ") + vipLevel) + xs.Tools.String.createString("auto_name_335")));
    // source line 154, bytecode pc 344
    this.lblVipGiftBag.setStringByStrings([
    xs.Tools.String.createString("str_Vip_CanBuy"),
    (xs.Tools.String.createString("auto_name_vip") + vipLevel),
    xs.Tools.String.createString("str_Vip_Gift")
]);
    // source line 156, bytecode pc 358
    (cfgData = this.dataSource[vipLevel]);
    // source line 157, bytecode pc 391
    this.lblDesc.setStringById(cfgData.getDescStringId());
}
}));
// source line 161, bytecode pc 627
(xs.Views.Dialog.ChargePrivilegeDialog.create = function(vipLevel) {
    var ret;
    // source line 162, bytecode pc 28
    (ret = new xs.Views.Dialog.ChargePrivilegeDialog());
    if ((ret && ret.init(vipLevel))) {
        // source line 164, bytecode pc 64
        return ret;
    }
    // source line 166, bytecode pc 66
    return null;
});
// source line 172, bytecode pc 717
xs.Views.Mgr.registerDialog("ChargePrivilegeDialog", {
    "class": xs.Views.Dialog.ChargePrivilegeDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "DlgCmn"
});
