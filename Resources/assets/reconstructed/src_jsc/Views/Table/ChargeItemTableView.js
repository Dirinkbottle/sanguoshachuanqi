// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/ChargeItemTableView.js:1
// source line 399, bytecode pc 188
(xs.Views.Table.ChargeItemTableView = xs.Views.Table.BaseTableView.extend({
    name: "ChargeItemTableView",
    init: function() {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 43
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 16, bytecode pc 67
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 18, bytecode pc 80
    this.getProductList();
    // source line 20, bytecode pc 82
    return true;
},
    onEnter: function() {
    // source line 24, bytecode pc 12
    this._super();
    // source line 25, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.getProductList, xs.Constant_Notify_Event_ChargeSucess);
},
    onExit: function() {
    // source line 29, bytecode pc 12
    this._super();
    // source line 30, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_ChargeSucess);
},
    getProductList: function() {
    var param;
    // source line 35, bytecode pc 9
    (param = {});
    if (xsc.Tools.PaySys.isUsingAppStore()) {
        // source line 37, bytecode pc 75
        (param.special_channel = xs.Tools.Jsb.getChannelId());
    } else {
        if (xsc.Tools.PaySys.isUsingAnySdk()) {
            // source line 40, bytecode pc 146
            (param.special_channel = xs.AnySdk.AnySdkHelp_js.getChannelId());
        } else {
            if (xsc.Tools.PaySys.isUsing3rdSdk()) {
                // source line 43, bytecode pc 241
                (param.special_channel = xs.JsbConnecter.getInstance().invoke("Get3rdChName", "Get3rdChName", "|"));
            } else {
                if (xsc.Tools.PaySys.isUsingEasySdk()) {
                    if ((xs.Tools.Jsb.EasySdk.Payment.getPlatformId() == "appstore")) {
                        // source line 47, bytecode pc 338
                        (param.special_channel = "210016");
                    } else {
                        // source line 49, bytecode pc 388
                        (param.special_channel = xs.Tools.Jsb.EasySdk.Payment.getPlatformIds());
                        // source line 50, bytecode pc 420
                        cc.log(("param.special_channel " + param.special_channel));
                        if ((param.special_channel == "googlepay")) {
                            // source line 53, bytecode pc 453
                            (param.special_channel = "FacebookGooglePay");
                        }
                    }
                }
            }
        }
    }
    // source line 58, bytecode pc 493
    xs.Tools.Net.requestChargeItemList(param, this.onResponse, this);
},
    onResponse: function(jsonData) {
    // source line 62, bytecode pc 14
    (this.itemDataList = jsonData.product_list);
    // source line 63, bytecode pc 27
    this.refreshDataAndReload();
},
    refreshData: function() {
    if (this.itemDataList) {
        // source line 70, bytecode pc 23
        (this.arrayModel = this.itemDataList);
    }
},
    createCell: function(idx) {
    // source line 76, bytecode pc 37
    return xs.Views.ChargeItemCell.create(this.arrayModel[idx]);
},
    makeViewSize: function() {
    // source line 81, bytecode pc 24
    return cc.size(512, 470);
},
    makeCellSize: function() {
    // source line 85, bytecode pc 23
    return cc.size(495, 110);
},
    tableCellTouched: function(table, cell) {
    var idx, param;
    if ((xs.isVersionForPublish && !xs.temp_3rd)) {
        if (!xs.isAdult) {
            // source line 117, bytecode pc 83
            this.schedule(function() {
    // source line 93, bytecode pc 12
    this.unschedule();
    // source line 94, bytecode pc 50
    xs.Views.Mgr._myreleaseViewByType(xs.Constant_ViewType_Dlg);
    // source line 114, bytecode pc 230
    xs.Views.Mgr.showDialogByName("common", {
    title: "IdCardBinding_10",
    content: "IdCardBinding_11",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("IdCardBinding_18"),
    leftCB: function() {
    // source line 101, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 104, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((xs.Profile.UserCfg.getLoginType() === xs.Constant_LoginType_Visitor)) {
        // source line 106, bytecode pc 101
        xs.Views.Mgr.showToastByStringId("IdCardBinding_9");
    } else {
        if (xs.isAdult) {
            // source line 109, bytecode pc 154
            xs.Views.Mgr.showToastByStringId("IdCardBinding_7");
        } else {
            // source line 111, bytecode pc 192
            xs.Views.Mgr.showDialogByName("IdCardBindingDialog");
        }
    }
}.bind(this)
});
}.bind(this), 1, false);
            // source line 118, bytecode pc 85
            return void 0;
        }
    }
    // source line 123, bytecode pc 103
    (idx = cell.getIdx());
    if ((xsc.app_channel == xsc.Const_Proj_channel_BF40003)) {
        // source line 126, bytecode pc 189
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_chongzhi_tips_nochongzhi"));
        // source line 127, bytecode pc 191
        return void 0;
    }
    // source line 129, bytecode pc 208
    (this.selectedItemData = this.arrayModel[idx]);
    // source line 130, bytecode pc 230
    (this.selectedPkId = this.arrayModel[idx].pk_id);
    // source line 132, bytecode pc 279
    (this.item = xs.Models.Item.createWithBase(this.arrayModel[idx].item_id));
    // source line 134, bytecode pc 313
    xs.dump("this.arrayModel", this.arrayModel[idx]);
    // source line 135, bytecode pc 347
    xs.log(("xs.app_account_sys = " + xs.app_account_sys));
    if (xsc.Tools.PaySys.isUsingAppStore()) {
        // source line 141, bytecode pc 445
        xs.JsbConnecter.getInstance().invoke("AppStore", "pay", ("" + this.arrayModel[idx].pk_id));
    } else {
        // source line 147, bytecode pc 460
        (param = {});
        // source line 148, bytecode pc 484
        (param.product_id = this.arrayModel[idx].pk_id);
        if (xsc.Tools.PaySys.isUsingAnySdk()) {
            // source line 152, bytecode pc 540
            (param.s_type = ("" + xs.app_indentify));
            // source line 153, bytecode pc 575
            (param.special_channel = xs.AnySdk.AnySdkHelp_js.getChannelId());
        } else {
            if (xsc.Tools.PaySys.isUsing3rdSdk()) {
                // source line 156, bytecode pc 670
                (param.special_channel = xs.JsbConnecter.getInstance().invoke("Get3rdChName", "Get3rdChName", "|"));
            } else {
                if (xsc.Tools.PaySys.isUsingEasySdk()) {
                    if ((xs.Tools.Jsb.EasySdk.Payment.getPlatformId() == "appstore")) {
                        // source line 160, bytecode pc 767
                        (param.special_channel = "210016");
                    } else {
                        // source line 162, bytecode pc 817
                        (param.special_channel = xs.Tools.Jsb.EasySdk.Payment.getPlatformIds());
                        // source line 163, bytecode pc 849
                        cc.log(("param.special_channel " + param.special_channel));
                        if ((param.special_channel == "googlepay")) {
                            // source line 166, bytecode pc 882
                            (param.special_channel = "FacebookGooglePay");
                        }
                    }
                } else {
                    if (xsc.Tools.PaySys.isUsingAliPay()) {
                        // source line 171, bytecode pc 932
                        (param.order_type = "1001");
                    }
                }
            }
        }
        // source line 173, bytecode pc 979
        xs.Tools.Net.requestCreateOrder(param, this.onResponse_CreateOrder, this.onResponse_Error, this);
    }
},
    onResponse_CreateOrder: function(jsonData) {
    var order, _platform, _paramStr, _req_url0, mPlayerName, _ext;
    // source line 181, bytecode pc 26
    xs.dump("onResponse_CreateOrder", jsonData);
    // source line 183, bytecode pc 36
    (order = {});
    // source line 184, bytecode pc 51
    (order.pk_id = this.selectedPkId);
    // source line 185, bytecode pc 73
    (order.tradeno = jsonData.return_info.order_id);
    // source line 186, bytecode pc 95
    (order.uid = jsonData.return_info.user_id);
    // source line 187, bytecode pc 117
    (order.user_id = jsonData.return_info.user_id);
    // source line 188, bytecode pc 139
    (order.amount = jsonData.return_info.product_price);
    // source line 189, bytecode pc 203
    (order.title = ((this.selectedItemData.product_title == "") ? this.item.getNameString() : this.selectedItemData.product_title));
    // source line 190, bytecode pc 267
    (order.desc = ((this.selectedItemData.product_desc == "") ? this.item.getDescString() : this.selectedItemData.product_desc));
    // source line 191, bytecode pc 279
    (order.paytype = 1001);
    // source line 194, bytecode pc 316
    xs.Scene.Mgr.saveStatus("CurrentOrder", order);
    // source line 198, bytecode pc 346
    (_platform = xs.Tools.Jsb.getPlatform());
    // source line 200, bytecode pc 370
    (_paramStr = JSON.stringify(order));
    // source line 202, bytecode pc 425
    xs.log("xs.Profile.UserCfg.getGameAddr().domain", xs.Profile.UserCfg.getGameAddr().domain);
    // source line 205, bytecode pc 472
    (_req_url0 = (("http://" + xs.Profile.UserCfg.getGameAddr().domain) + "/?do=pay.createTrade"));
    if (xsc.Tools.PaySys.isUsingEasySdk()) {
        if ((xs.Profile.UserCfg.getLoginType() != xs.Constant_LoginType_Visitor)) {
            // source line 238, bytecode pc 1028
            xs.Tools.Jsb.EasySdk.Payment.pay({
    app_role_id: xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId(),
    role_name: xs.gd_mgr.getInstance().Player.getPlayer().getPlayerName(),
    app_order_id: order.tradeno,
    product_id: order.pk_id,
    product_price: order.amount,
    product_count: 1,
    product_name: order.title,
    server_id: ("" + xs.Profile.UserCfg.getGameAddr().id),
    game_currency_rate: 10,
    app_currency_type: "RMB",
    easy_uid: xs.EasySdk.Account.getAccountInfo().easy_uid,
    easy_session: xs.EasySdk.Account.getAccountInfo().easy_session,
    platform_uid: xs.EasySdk.Account.getAccountInfo().platform_uid,
    platform_session: xs.EasySdk.Account.getAccountInfo().platform_session,
    app_uid: "",
    app_ext1: "",
    app_ext2: "",
    easy_appkey_base64: (xs.EasySdk.Payment.getEasyAppKeyBase64() || "easy_appkey_base64_is_null")
});
        } else {
            // source line 269, bytecode pc 1450
            xs.Tools.Jsb.EasySdk.Payment.pay({
    app_role_id: xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId(),
    role_name: xs.gd_mgr.getInstance().Player.getPlayer().getPlayerName(),
    app_order_id: order.tradeno,
    product_id: order.pk_id,
    product_price: order.amount,
    product_count: 1,
    product_name: order.title,
    server_id: ("" + xs.Profile.UserCfg.getGameAddr().id),
    game_currency_rate: 10,
    app_currency_type: "RMB",
    app_uid: xs.Scene.Mgr.loadStatus("AccountInfo").getAccountId(),
    easy_uid: "",
    easy_session: "",
    platform_uid: "",
    platform_session: "",
    app_ext1: "",
    app_ext2: "",
    easy_appkey_base64: (xs.EasySdk.Payment.getEasyAppKeyBase64() || "easy_appkey_base64_is_null")
});
        }
    } else {
        if ((_platform === "ios")) {
            if (xsc.Tools.PaySys.isUsingAliPay()) {
                // source line 279, bytecode pc 1559
                xs.JsbConnecter.getInstance().invoke("Alipay", "pay", ((_req_url0 + "|") + _paramStr));
            } else {
                if (xsc.Tools.PaySys.isUsing3rdSdk()) {
                    // source line 284, bytecode pc 1647
                    (mPlayerName = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerName());
                    // source line 285, bytecode pc 1665
                    (mPlayerName = mPlayerName.removeSlash());
                    // source line 304, bytecode pc 2115
                    xs.JsbConnecter.getInstance().invoke("Thirdpay", "third_pay", ((((((((((((((((((((("" + order.pk_id) + "|") + order.title) + "|") + parseInt(order.amount)) + "|") + 1) + "|") + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId()) + "|") + mPlayerName) + "|") + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel()) + "|") + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerYuanBao()) + "|") + xs.Profile.UserCfg.getGameAddr().id) + "|") + JSON.stringify({
    bf_orderId: ("" + order.tradeno),
    bf_serverId: ("" + xs.Profile.UserCfg.getGameAddr().id),
    s_type: ("" + xs.app_indentify)
})) + "|") + "|"));
                }
            }
        } else {
            if ((_platform === "android")) {
                if (xsc.Tools.PaySys.isUsingAliPay()) {
                    // source line 330, bytecode pc 2307
                    xs.JsbConnecter.getInstance().invoke("Alipay", "pay_ext", ((((((((((((("" + order.tradeno) + "|") + order.uid) + "|") + "UNUSE_NOW") + "|") + order.title) + "|") + order.desc) + "|") + order.amount) + "|") + _req_url0));
                } else {
                    if (xsc.Tools.PaySys.isUsingAnySdk()) {
                        if ((jsonData.return_info.ext == null)) {
                            // source line 352, bytecode pc 2476
                            (_ext = JSON.stringify({
    bf_orderId: ("" + order.tradeno),
    bf_serverId: ("" + xs.Profile.UserCfg.getGameAddr().id),
    s_type: ("" + xs.app_indentify)
}));
                        } else {
                            // source line 355, bytecode pc 2498
                            (_ext = jsonData.return_info.ext);
                        }
                        // source line 363, bytecode pc 2812
                        xs.AnySdk.AnySdkHelp_js.pay(order.pk_id, order.title, parseInt(order.amount), 1, xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId(), xs.gd_mgr.getInstance().Player.getPlayer().getPlayerName().removeSlash(), xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel(), xs.gd_mgr.getInstance().Player.getPlayer().getPlayerYuanBao(), xs.Profile.UserCfg.getGameAddr().id, _ext);
                    } else {
                        if (xsc.Tools.PaySys.isUsing3rdSdk()) {
                            // source line 384, bytecode pc 3354
                            xs.JsbConnecter.getInstance().invoke("Thirdpay", "third_pay", ((((((((((((((((((((("" + order.pk_id) + "|") + order.title) + "|") + parseInt(order.amount)) + "|") + 1) + "|") + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId()) + "|") + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerName().removeSlash()) + "|") + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel()) + "|") + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerYuanBao()) + "|") + xs.Profile.UserCfg.getGameAddr().id) + "|") + JSON.stringify({
    bf_orderId: ("" + order.tradeno),
    bf_serverId: ("" + xs.Profile.UserCfg.getGameAddr().id),
    s_type: ("" + xs.app_indentify)
})) + "|") + "|"));
                        } else {
                            // source line 388, bytecode pc 3378
                            this.error("_build err");
                        }
                    }
                }
            }
        }
    }
    // source line 397, bytecode pc 3411
    xs.Tools.Statistic.event("1700011");
},
    onResponse_Error: function(data) {
    if ((data.error_code == "e_20002")) {
        // source line 407, bytecode pc 192
        xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("IdCardBinding_104"),
    contentText: xs.Tools.String.createString("IdCardBinding_105"),
    btnText: xs.Tools.String.createString("auto_name_76"),
    btnCallback: function() {
    // source line 406, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this)
});
    }
    // source line 410, bytecode pc 194
    return true;
}
}));
// source line 416, bytecode pc 219
(xs.Views.Table.ChargeItemTableView.create = function() {
    var ret;
    // source line 417, bytecode pc 28
    (ret = new xs.Views.Table.ChargeItemTableView());
    if ((ret && ret.init())) {
        // source line 419, bytecode pc 60
        return ret;
    }
    // source line 422, bytecode pc 89
    xs.assert(false, "xs.Views.Table.ChargeItemTableView.create fail", ret);
    // source line 423, bytecode pc 91
    return null;
});
