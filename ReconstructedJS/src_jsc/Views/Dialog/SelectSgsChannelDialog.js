// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/SelectSgsChannelDialog.js:1
// source line 162, bytecode pc 456
(xs.Views.Dialog.SelectSgsChannelDialog = xs.Views.HungerLayer.extend({
    name: "SelectSgsChannelDialog",
    cfg_server: [
        { serverName: xs.Tools.String.createString("auto_name_423"), serverNum: 1 },
        { serverName: xs.Tools.String.createString("auto_name_424"), serverNum: 2 },
        { serverName: xs.Tools.String.createString("auto_name_425"), serverNum: 3 },
        { serverName: xs.Tools.String.createString("auto_name_426"), serverNum: 5 },
        { serverName: xs.Tools.String.createString("auto_name_427"), serverNum: 8 },
        { serverName: xs.Tools.String.createString("auto_name_428"), serverNum: 9 }
    ],
    ctor: function() {
    // source line 23, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    var _pos, i, m_cfg;
    if (!this._super()) {
        // source line 35, bytecode pc 19
        return false;
    }
    // source line 37, bytecode pc 34
    (this.type = param.type);
    // source line 38, bytecode pc 49
    (this.instance_id = param.instance_id);
    // source line 41, bytecode pc 108
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 42, bytecode pc 155
    this.m_bg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 43, bytecode pc 198
    this.m_bg.setContentSize(cc.size(500, 600));
    // source line 44, bytecode pc 274
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c", offset: { x: 0, y: 0 } });
    // source line 47, bytecode pc 346
    (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithString("LS_popUI1", xs.Tools.String.createString("auto_name_429")));
    // source line 49, bytecode pc 428
    xs.Utils.Node.attachNodes(this.m_bg, this.m_headLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    // source line 51, bytecode pc 467
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 52, bytecode pc 550
    xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
    // source line 53, bytecode pc 588
    this.m_closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 56, bytecode pc 616
    (_pos = cc.p(250, 480));
    if ((this.type == xs.Constant_Sgs_Total)) {
        // source line 58, bytecode pc 677
        (this.MobilePhoneButton = xs.Views.Btn.createByStyleId("BS_ChannelSgs"));
        // source line 59, bytecode pc 728
        this.MobilePhoneButton.setString(xs.Tools.String.createString("auto_name_430"));
        // source line 60, bytecode pc 766
        this.MobilePhoneButton.setOnClickCallBack(this.onMobilePhoneTouch.bind(this));
        // source line 61, bytecode pc 788
        this.MobilePhoneButton.setPosition(_pos);
        // source line 62, bytecode pc 813
        this.m_bg.addChild(this.MobilePhoneButton);
        // source line 64, bytecode pc 818
        (i = 0);
        while ((i < this.cfg_server.length)) {
            // source line 65, bytecode pc 838
            (m_cfg = this.cfg_server[i]);
            // source line 66, bytecode pc 882
            (this[("OLButton" + i)] = xs.Views.Btn.createByStyleId("BS_ChannelSgs"));
            // source line 67, bytecode pc 947
            this[("OLButton" + i)].setString((xs.Tools.String.createString("auto_name_431") + m_cfg.serverName));
            // source line 68, bytecode pc 1014
            this[("OLButton" + i)].setOnClickCallBack(this.onOLTouch.bind({ layer: this, idx: m_cfg.serverNum }));
            // source line 69, bytecode pc 1081
            this[("OLButton" + i)].setPosition(cc.p(_pos.x, (_pos.y - (80 * (i + 1)))));
            // source line 70, bytecode pc 1111
            this.m_bg.addChild(this[("OLButton" + i)]);
            // source line 64, bytecode pc 1125
            (i = (+i + 1));
        }
    } else {
        if ((this.type == xs.Constant_Sgs_MobilePhone)) {
            // source line 76, bytecode pc 1213
            (this.MobilePhoneButton = xs.Views.Btn.createByStyleId("BS_ChannelSgs"));
            // source line 77, bytecode pc 1264
            this.MobilePhoneButton.setString(xs.Tools.String.createString("auto_name_430"));
            // source line 78, bytecode pc 1302
            this.MobilePhoneButton.setOnClickCallBack(this.onMobilePhoneTouch.bind(this));
            // source line 79, bytecode pc 1324
            this.MobilePhoneButton.setPosition(_pos);
            // source line 80, bytecode pc 1349
            this.m_bg.addChild(this.MobilePhoneButton);
        } else {
            if ((this.type == xs.Constant_Sgs_OL)) {
                // source line 83, bytecode pc 1381
                (i = 0);
                while ((i < this.cfg_server.length)) {
                    // source line 84, bytecode pc 1401
                    (m_cfg = this.cfg_server[i]);
                    // source line 85, bytecode pc 1445
                    (this[("OLButton" + i)] = xs.Views.Btn.createByStyleId("BS_ChannelSgs"));
                    // source line 86, bytecode pc 1510
                    this[("OLButton" + i)].setString((xs.Tools.String.createString("auto_name_431") + m_cfg.serverName));
                    // source line 87, bytecode pc 1590
                    this[("OLButton" + i)].setOnClickCallBack(this.onOLTouch.bind({ layer: this, idx: m_cfg.serverNum, name: m_cfg.serverName }));
                    // source line 88, bytecode pc 1655
                    this[("OLButton" + i)].setPosition(cc.p(_pos.x, (_pos.y - (80 * i))));
                    // source line 89, bytecode pc 1685
                    this.m_bg.addChild(this[("OLButton" + i)]);
                    // source line 83, bytecode pc 1699
                    (i = (+i + 1));
                }
            }
        }
    }
    // source line 95, bytecode pc 1723
    return true;
},
    onMobilePhoneTouch: function() {
    var dialog;
    // source line 102, bytecode pc 22
    xs.log("onMobilePhoneTouch!!!");
    // source line 114, bytecode pc 205
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "",
    content: "",
    leftText: xs.Tools.String.createString("auto_name_101"),
    rightText: xs.Tools.String.createString("auto_name_146"),
    leftCB: function() {
    // source line 108, bytecode pc 61
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetChannelAward, { cooperator: "mobile", cooperator_server_id: 10 });
    // source line 109, bytecode pc 88
    xs.Views.Mgr.hideDialog();
    // source line 110, bytecode pc 115
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 113, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this)
}));
    // source line 116, bytecode pc 223
    (dialog = dialog.getRealDialog());
    // source line 117, bytecode pc 331
    dialog.setContentText(((xs.Tools.String.createString("auto_name_432") + xs.Profile.UserCfg.getLoginAccount()) + xs.Tools.String.createString("auto_name_433")));
    // source line 118, bytecode pc 379
    dialog.setTitleByString(xs.Tools.String.createString("auto_name_434"));
},
    onOLTouch: function() {
    var dialog;
    // source line 124, bytecode pc 29
    xs.log(("idxxxxx" + this.idx));
    // source line 135, bytecode pc 212
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "",
    content: "",
    leftText: xs.Tools.String.createString("auto_name_101"),
    rightText: xs.Tools.String.createString("auto_name_146"),
    leftCB: function() {
    // source line 129, bytecode pc 65
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GetChannelAward, { cooperator: "ol", cooperator_server_id: this.idx });
    // source line 130, bytecode pc 92
    xs.Views.Mgr.hideDialog();
    // source line 131, bytecode pc 119
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 134, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this)
}));
    // source line 137, bytecode pc 230
    (dialog = dialog.getRealDialog());
    // source line 138, bytecode pc 378
    dialog.setContentText(((((xs.Tools.String.createString("auto_name_432") + xs.Profile.UserCfg.getLoginAccount()) + xs.Tools.String.createString("auto_name_435")) + this.name) + xs.Tools.String.createString("auto_name_436")));
    // source line 139, bytecode pc 426
    dialog.setTitleByString(xs.Tools.String.createString("auto_name_434"));
},
    onCloseBtn: function() {
    // source line 157, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 163, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 164, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 166, bytecode pc 56
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    if (this.MobilePhoneButton) {
        // source line 168, bytecode pc 94
        this.MobilePhoneButton.setTouchPriority((this.m_baseTouchPriority - 1));
    }
    // source line 170, bytecode pc 99
    (i = 0);
    while ((i < this.cfg_server.length)) {
        if (this[("OLButton" + i)]) {
            // source line 172, bytecode pc 153
            this[("OLButton" + i)].setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 170, bytecode pc 167
        (i = (+i + 1));
    }
}
}));
// source line 181, bytecode pc 487
(xs.Views.Dialog.SelectSgsChannelDialog.create = function(param) {
    var ret;
    // source line 182, bytecode pc 28
    (ret = new xs.Views.Dialog.SelectSgsChannelDialog());
    if ((ret && ret.init(param))) {
        // source line 184, bytecode pc 64
        return ret;
    }
    // source line 186, bytecode pc 89
    xs.assert(false, "xs.Views.Dialog.SelectSgsChannelDialog.create err");
    // source line 187, bytecode pc 91
    return null;
});
// source line 193, bytecode pc 567
xs.Views.Mgr.registerDialog("SelectSgsChannelDialog", { "class": xs.Views.Dialog.SelectSgsChannelDialog, styleType: xs.Constant_DlgStyleType_Small });
