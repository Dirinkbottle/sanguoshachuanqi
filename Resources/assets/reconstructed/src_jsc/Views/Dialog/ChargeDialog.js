// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/ChargeDialog.js:1
// source line 179, bytecode pc 726
(xs.Views.Dialog.ChargeDialog = xs.Views.HungerLayer.extend({
    name: "ChargeDialog",
    init: function(model) {
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 55
    (this.ccbNode = cc.BuilderReader.load("ccb3/ChargeScene.ccbi", this));
    // source line 15, bytecode pc 98
    this.ccbNode.setContentSize(cc.size(932, 619));
    // source line 16, bytecode pc 145
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 17, bytecode pc 198
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 19, bytecode pc 206
    (this.m_btnClose = null);
    // source line 20, bytecode pc 214
    (this.m_processTxt = null);
    // source line 21, bytecode pc 222
    (this.m_vipLevel = null);
    // source line 23, bytecode pc 270
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 24, bytecode pc 294
    this.m_btnClose.setOnClickCallBack(function() {
    // source line 25, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 30, bytecode pc 327
    (this.progressTimer = xs.Views.BlueProgressTimer.create());
    // source line 31, bytecode pc 351
    this.progressTimer.setScaleX(1.411764705882353);
    // source line 32, bytecode pc 404
    xs.Utils.replaceNode(this.ccbNode, this.cfg.progressTimer.tag, this.progressTimer);
    // source line 36, bytecode pc 442
    (this.m_chargeTableView = xs.Views.Table.ChargeItemTableView.create());
    // source line 37, bytecode pc 536
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_chargeTableView, { desc: "c", offset: cc.p(-48, -260), sc: false });
    // source line 41, bytecode pc 538
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 45, bytecode pc 12
    this._super();
    // source line 46, bytecode pc 25
    this.updateInfo();
},
    onEnter: function() {
    // source line 50, bytecode pc 12
    this._super();
    // source line 52, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateInfo, xs.Constant_Notify_Event_ChargeSucess);
},
    onExit: function() {
    // source line 56, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ChargeSucess);
},
    updateInfo: function() {
    var vipLevel, vipLevel_next, chargedYuanBao, nextVipYuanBao, vip_bg, i, hight_Vip, vipGift, _obj_item, adds, _adds, j, add;
    // source line 66, bytecode pc 67
    (vipLevel = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 67, bytecode pc 129
    (vipLevel_next = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerNextVipLevel());
    // source line 68, bytecode pc 190
    this.m_vipLevel.setString((xs.Tools.String.createString("auto_name_vip") + vipLevel));
    // source line 69, bytecode pc 214
    this.m_vipLevel.setScale(0.65);
    // source line 72, bytecode pc 238
    this.m_btnCheckVip.setOnClickCallBack(function() {
    // source line 73, bytecode pc 42
    xs.Views.Mgr.showDialogByName("ChargePrivilegeDialog", vipLevel);
});
    // source line 77, bytecode pc 300
    (chargedYuanBao = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargedYuanBao());
    // source line 78, bytecode pc 362
    (nextVipYuanBao = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getNextVipYuanBao());
    // source line 80, bytecode pc 394
    this.m_processTxt.setString(((chargedYuanBao + "/") + nextVipYuanBao));
    // source line 82, bytecode pc 423
    this.progressTimer.setPercentage(((chargedYuanBao * 100) / nextVipYuanBao));
    // source line 85, bytecode pc 536
    this.m_vipTip_1.setStringByStrings([
    xs.Tools.String.createString("auto_name_333"),
    ("" + (nextVipYuanBao - chargedYuanBao)),
    xs.Tools.String.createString("auto_name_27")
]);
    // source line 86, bytecode pc 636
    this.m_vipTip_2.setStringByStrings([
    xs.Tools.String.createString("auto_name_334"),
    (xs.Tools.String.createString("auto_name_vip") + vipLevel_next)
]);
    if ((vipLevel == this.getMaxVip())) {
        // source line 88, bytecode pc 683
        this.m_vipTip_1.setVisible(false);
        // source line 89, bytecode pc 703
        this.m_vipTip_2.setVisible(false);
    }
    if ((vipLevel === this.getMaxVip())) {
        // source line 93, bytecode pc 768
        (vip_bg = this.ccbNode.getChildByTag(this.cfg.vipGifBg.tag));
        // source line 94, bytecode pc 785
        vip_bg.setVisible(false);
        // source line 95, bytecode pc 790
        (i = 0);
        while ((i < 3)) {
            // source line 96, bytecode pc 848
            this.ccbNode.getChildByTag(this.cfg.vipGiftIcon[i].tag).setVisible(false);
            // source line 95, bytecode pc 863
            i++;
        }
        // source line 100, bytecode pc 917
        (hight_Vip = xs.Factorys.Sprite.create("Cmn01_Zuigaovip", "Cmn01"));
        // source line 106, bytecode pc 1030
        xs.Utils.Node.attachNodes(this.ccbNode, hight_Vip, { desc: "lb", sc: true, offset: { x: vip_bg.getPositionX(), y: (vip_bg.getPositionY() + 10) } });
    } else {
        // source line 114, bytecode pc 1059
        this.m_nexVipTxt.setScale(0.65);
        // source line 115, bytecode pc 1114
        this.m_nexVipTxt.setString((xs.Tools.String.createString("auto_name_vip") + vipLevel_next));
        // source line 118, bytecode pc 1156
        (vipGift = xs.Models.VipCfg.createWithBase(((vipLevel_next - 1) + "")));
        // source line 119, bytecode pc 1222
        (_obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(vipGift.getGiftId()));
        // source line 121, bytecode pc 1240
        (adds = _obj_item.getGiftPack());
        // source line 123, bytecode pc 1249
        (_adds = []);
        // source line 125, bytecode pc 1254
        (j = 0);
        while ((j < adds.length)) {
            // source line 126, bytecode pc 1310
            _adds.push(xs.Factorys.Add.createWithJson(adds[j]));
            // source line 125, bytecode pc 1325
            j++;
        }
        // source line 129, bytecode pc 1396
        _adds.sort(xs.Tools.Sort.by(xs.Constant_SortType_AddList_Default));
        // source line 131, bytecode pc 1401
        (i = 0);
        while ((i < 3)) {
            if ((i < _adds.length)) {
                // source line 134, bytecode pc 1435
                (add = _adds[i]);
                // source line 135, bytecode pc 1500
                xs.Utils.replaceNode(this.ccbNode, this.cfg.vipGiftIcon[i].tag, add.createIcon_NumAndName());
            } else {
                // source line 137, bytecode pc 1557
                this.ccbNode.getChildByTag(this.cfg.vipGiftIcon[i].tag).setVisible(false);
            }
            // source line 131, bytecode pc 1572
            i++;
        }
    }
},
    getMaxVip: function() {
    var starIdx, mVipCfg, maxVip;
    // source line 144, bytecode pc 8
    (starIdx = "-1");
    // source line 145, bytecode pc 49
    (mVipCfg = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Vip));
    // source line 146, bytecode pc 55
    (maxVip = -1);
    while (mVipCfg[starIdx]) {
        // source line 148, bytecode pc 91
        (starIdx = ((parseInt(starIdx) + 1) + ""));
        // source line 150, bytecode pc 100
        (maxVip = (maxVip + 1));
    }
    // source line 152, bytecode pc 117
    return maxVip;
},
    setBaseTouchPriority: function(priority) {
    // source line 157, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 158, bytecode pc 51
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.m_btnClose.priority));
    // source line 159, bytecode pc 93
    this.m_btnCheckVip.setTouchPriority((this.m_baseTouchPriority + this.cfg.m_btnCheckVip.priority));
    // source line 160, bytecode pc 135
    this.m_chargeTableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.m_tableView.priority));
},
    cfg: {
        m_btnClose: { priority: -1 },
        m_btnCheckVip: { priority: -1 },
        progressTimer: { tag: 18 },
        vipGiftIcon: [ { tag: 15 }, { tag: 16 }, { tag: 17 } ],
        vipGifBg: { tag: 30 },
        m_tableView: { priority: -1 },
        ccbCfg: [
            { tag: 10, type: "ls", id: "LS_huodong_title", stringId: "auto_name_115" },
            { tag: 11, type: "ls", name: "m_vipLevel", id: "LS_qianghua_done" },
            { tag: 13, type: "btn", name: "m_btnCheckVip", id: "Btn_CheckVip" },
            {
                tag: 14,
                type: "ls_ext",
                name: "m_vipTip_1",
                ids: [ "LS_wujiangInf1", "LS_liebiaoInf2", "LS_wujiangInf1" ]
            },
            { tag: 21, type: "ls_ext", name: "m_vipTip_2", ids: [ "LS_wujiangInf1", "LS_liebiaoInf2" ] },
            { tag: 19, type: "ls", name: "m_processTxt", id: "LS_EXPInf" },
            { tag: 20, type: "btn", name: "m_btnClose", id: "Btn_Close" },
            { tag: 22, type: "ls", name: "m_nexVipTxt", id: "LS_qianghua_done" }
        ]
    }
}));
// source line 184, bytecode pc 757
(xs.Views.Dialog.ChargeDialog.create = function() {
    var ret;
    // source line 185, bytecode pc 28
    (ret = new xs.Views.Dialog.ChargeDialog());
    if ((ret && ret.init())) {
        // source line 187, bytecode pc 60
        return ret;
    }
    // source line 189, bytecode pc 62
    return null;
});
// source line 192, bytecode pc 788
(xs.Views.Dialog.ChargeDialog.load = function() {
    // source line 193, bytecode pc 32
    xs.Factorys.Sprite.load("SellTag");
});
// source line 196, bytecode pc 819
(xs.Views.Dialog.ChargeDialog.unload = function() {
    // source line 197, bytecode pc 32
    xs.Factorys.Sprite.unload("SellTag");
});
// source line 202, bytecode pc 899
xs.Views.Mgr.registerDialog("ChargeDialog", { "class": xs.Views.Dialog.ChargeDialog, styleType: xs.Constant_DlgStyleType_Large });
