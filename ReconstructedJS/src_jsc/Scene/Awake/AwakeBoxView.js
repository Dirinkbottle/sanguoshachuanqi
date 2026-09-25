// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Awake/AwakeBoxView.js:1
// source line 395, bytecode pc 448
(xs.Views.AwakeBoxView = cc.Layer.extend({
    name: "xs.Views.AwakeBoxView",
    ccbCfg_Box: [
        { tag: 10, type: "btn", name: "m_UpdateBtn", id: "Btn_btn6", stringId: "AwakeBoxUpdate" },
        { tag: 12, type: "ls", name: "m_update_sprice_label", id: "LS_yuanfenInf2" },
        { tag: 101, type: "ls", name: "m_free_update_label", id: "LS_yuanfenInf2" }
    ],
    ccbCfg_Button: [
        { tag: 12, type: "ls", name: "m_gold_sprice_label", id: "LS_yuanfenInf2" },
        { tag: 13, type: "ls", name: "m_copper_sprice_label", id: "LS_yuanfenInf2" }
    ],
    ctor: function() {
    // source line 23, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    onEnter: function() {
    // source line 28, bytecode pc 12
    this._super();
},
    init: function() {
    var goldBtnBg, copperBg;
    // source line 32, bytecode pc 12
    this._super();
    // source line 34, bytecode pc 20
    (this.m_UpdateBtn = null);
    // source line 35, bytecode pc 28
    (this.m_update_sprice_label = null);
    // source line 36, bytecode pc 36
    (this.m_free_update_label = null);
    // source line 37, bytecode pc 44
    (this.m_gold_sprice_label = null);
    // source line 38, bytecode pc 52
    (this.m_copper_sprice_label = null);
    // source line 39, bytecode pc 60
    (this.m_update_yuanbao = null);
    // source line 41, bytecode pc 109
    (this.m_evolutionChestInfo = xs.Profile.GameData.PushInfo.getInstance().getEvolutionChestInfo());
    // source line 42, bytecode pc 127
    (this.m_chest_list = this.m_evolutionChestInfo.m_chest_list);
    // source line 43, bytecode pc 145
    (this.m_free_times = this.m_evolutionChestInfo.m_free_times);
    // source line 44, bytecode pc 163
    (this.m_refresh_times = this.m_evolutionChestInfo.m_refresh_times);
    // source line 45, bytecode pc 181
    (this.m_open_times = this.m_evolutionChestInfo.m_open_times);
    // source line 46, bytecode pc 199
    (this.m_free_refresh_times = this.m_evolutionChestInfo.m_free_refresh_times);
    // source line 48, bytecode pc 222
    (this.refresh_price = this.m_evolutionChestInfo.m_cost.refresh_price);
    // source line 49, bytecode pc 245
    (this.single_price = this.m_evolutionChestInfo.m_cost.single_price);
    // source line 50, bytecode pc 268
    (this.multi_price = this.m_evolutionChestInfo.m_cost.multi_price);
    // source line 54, bytecode pc 345
    (this.stone_num = (xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_EvolutionStone) || 0));
    // source line 57, bytecode pc 396
    (this.ccb_Node = xs.ccb_reader.load(xs.Cfg.CCBI.EvolutionBaoxiang, this));
    // source line 58, bytecode pc 439
    this.ccb_Node.setContentSize(cc.size(860, 340));
    // source line 59, bytecode pc 486
    this.ccb_Node.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 60, bytecode pc 572
    xs.Utils.Node.attachNodes(this, this.ccb_Node, { desc: "c", sc: true, offset: cc.p(-40, 10) });
    // source line 62, bytecode pc 615
    xs.Utils.UI.replaceCcbByCfg(this.ccb_Node, this.ccbCfg_Box, this);
    // source line 64, bytecode pc 653
    this.m_UpdateBtn.setOnClickCallBack(this.updateBtnClicked.bind(this));
    // source line 66, bytecode pc 680
    (this.m_update_yuanbao = this.ccb_Node.getChildByTag(100));
    // source line 70, bytecode pc 731
    (this.ccb_Btn = xs.ccb_reader.load(xs.Cfg.CCBI.EvolutionControl, this));
    // source line 71, bytecode pc 773
    this.ccb_Btn.setContentSize(cc.size(540, 120));
    // source line 72, bytecode pc 820
    this.ccb_Btn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 73, bytecode pc 909
    xs.Utils.Node.attachNodes(this, this.ccb_Btn, { desc: "c", sc: true, offset: cc.p(-40, -240) });
    // source line 75, bytecode pc 952
    xs.Utils.UI.replaceCcbByCfg(this.ccb_Btn, this.ccbCfg_Button, this);
    // source line 79, bytecode pc 975
    (goldBtnBg = this.ccb_Btn.getChildByTag(1));
    // source line 80, bytecode pc 999
    (copperBg = this.ccb_Btn.getChildByTag(10));
    // source line 81, bytecode pc 1026
    (this.keySprite = this.ccb_Btn.getChildByTag(14));
    // source line 82, bytecode pc 1053
    (this.qianSprite = this.ccb_Btn.getChildByTag(15));
    // source line 85, bytecode pc 1090
    (this.goldBtn = xs.Views.Btn.createInvisibleWithParent(goldBtnBg));
    // source line 86, bytecode pc 1110
    this.goldBtn.setZoomOnTouchDown(false);
    // source line 87, bytecode pc 1148
    this.goldBtn.setOnClickCallBack(this.goldBtnClicked.bind(this));
    // source line 88, bytecode pc 1185
    (this.copperBtn = xs.Views.Btn.createInvisibleWithParent(copperBg));
    // source line 89, bytecode pc 1205
    this.copperBtn.setZoomOnTouchDown(false);
    // source line 90, bytecode pc 1243
    this.copperBtn.setOnClickCallBack(this.copperBtnClicked.bind(this));
    // source line 92, bytecode pc 1287
    (this.arm_gold = xs.Views.Armature.AutoAudioArmature.create("Arm_ToastDesk"));
    // source line 93, bytecode pc 1330
    this.arm_gold.playAniById("taostEnabled", { loop: true, speed: 1 });
    // source line 94, bytecode pc 1350
    this.arm_gold.setScaleX(1);
    // source line 95, bytecode pc 1408
    xs.Utils.Node.attachNodes(this.goldBtn, this.arm_gold, { desc: "c" });
    // source line 99, bytecode pc 1447
    (this.label_0 = xs.Factorys.Label.createByStyleId("LS_zhanchang_zi2"));
    // source line 100, bytecode pc 1490
    this.label_0.setAnchorPoint(cc.p(0, 0.5));
    // source line 101, bytecode pc 1514
    this.label_0.setStringById("AwakeBoxViewTips");
    // source line 104, bytecode pc 1553
    (this.label_1 = xs.Factorys.Label.createByStyleId("LS_qiangduo_Inf"));
    // source line 105, bytecode pc 1596
    this.label_1.setAnchorPoint(cc.p(0, 0.5));
    // source line 106, bytecode pc 1620
    this.label_1.setStringById("AwakeBoxLabel1");
    // source line 107, bytecode pc 1709
    xs.Utils.Node.attachNodes(this, this.label_1, { desc: "lt", sc: false, offset: cc.p(15, -140) });
    // source line 108, bytecode pc 1748
    (this.label_2 = xs.Factorys.Label.createByStyleId("LS_qiangduo_Inf"));
    // source line 109, bytecode pc 1791
    this.label_2.setAnchorPoint(cc.p(0, 0.5));
    // source line 110, bytecode pc 1815
    this.label_2.setStringById("AwakeBoxLabel2");
    // source line 111, bytecode pc 1904
    xs.Utils.Node.attachNodes(this, this.label_2, { desc: "lt", sc: false, offset: cc.p(15, -180) });
    // source line 112, bytecode pc 1943
    (this.stone_label = xs.Factorys.Label.createByStyleId("LS_yuanfenInf2"));
    // source line 113, bytecode pc 1986
    this.stone_label.setAnchorPoint(cc.p(0, 0.5));
    // source line 114, bytecode pc 2026
    this.stone_label.setString(String(this.stone_num));
    // source line 116, bytecode pc 2141
    xs.Utils.Node.attachNodes(this, this.stone_label, { desc: "lt", sc: false, offset: cc.p(((15 + this.label_2.getContentSize().width) + 10), -180) });
    // source line 119, bytecode pc 2180
    (this.m_SpiritStoneBtn = xs.Views.Btn.create("Btn_SpiritStone"));
    // source line 120, bytecode pc 2266
    xs.Utils.Node.attachNodes(this, this.m_SpiritStoneBtn, { desc: "ct", sc: true, offset: cc.p(80, -20) });
    // source line 121, bytecode pc 2305
    this.m_SpiritStoneBtn.setAnchorPoint(cc.p(0, 1));
    // source line 129, bytecode pc 2354
    this.m_SpiritStoneBtn.setOnClickCallBack(this.showConvertDlg.bind({ self: this }));
    // source line 131, bytecode pc 2367
    this.updateBoxList();
    // source line 133, bytecode pc 2380
    this.updateUI();
    // source line 136, bytecode pc 2382
    return true;
},
    setListener: function(listener) {
    // source line 140, bytecode pc 9
    (this.m_listener = listener);
},
    showConvertDlg: function() {
    var self;
    // source line 144, bytecode pc 9
    (self = this.self);
    // source line 145, bytecode pc 45
    xs.Views.Dialog.SpiritStoneDialog.showWithSurrenderInfo(self);
},
    updateSpiritStoneNum: function() {
    // source line 149, bytecode pc 69
    (this.stone_num = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_EvolutionStone));
    // source line 150, bytecode pc 109
    this.stone_label.setString(String(this.stone_num));
},
    getEvolutionChest: function() {
    // source line 172, bytecode pc 136
    xs.Tools.Net.requestEvolutionChestList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var mEvoChest;
    // source line 160, bytecode pc 45
    (mEvoChest = xs.Profile.GameData.PushInfo.getInstance().getEvolutionChestInfo());
    // source line 161, bytecode pc 64
    mEvoChest.loadJson(params);
}.bind(this), function(params) {
    if ((params.error_code === "e_1005")) {
        // source line 168, bytecode pc 20
        return true;
    }
    // source line 170, bytecode pc 22
    return false;
}.bind(this), this);
},
    goldBtnClicked: function() {
    if ((this.m_free_times <= 0)) {
        // source line 178, bytecode pc 32
        this.arm_gold.setVisible(false);
    }
    // source line 225, bytecode pc 169
    xs.Tools.Net.requestEvolutionChestOpen({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var arr, index;
    if (params.reward_info) {
        // source line 188, bytecode pc 21
        (arr = []);
        for (var index in params.reward_info) {
            if (!(params.reward_info.hasOwnProperty(index))) continue;
            if ((index == "extra_stone")) {
            } else {
                if ((index == "extra_best")) {
                    // source line 195, bytecode pc 133
                    arr.push(params.reward_info[index][0]);
                } else {
                    if ((index == "cost")) {
                    } else {
                        // source line 199, bytecode pc 185
                        arr.push(params.reward_info[index]);
                    }
                }
            }
        }
        // source line 205, bytecode pc 217
        this.m_listener.showOpenBoxResult(1, arr);
        // source line 206, bytecode pc 230
        this.refreshData();
        // source line 207, bytecode pc 245
        (this.m_free_times = params.free_times);
        // source line 209, bytecode pc 258
        this.updateUI();
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_evolution_1011")) {
        // source line 218, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("AwakeActiveDisable1"));
    }
    if (((params.error_code === "e_1005") || (params.error_code === "e_evolution_1011"))) {
        // source line 221, bytecode pc 144
        xs.Views.Mgr.hideDialog();
        // source line 222, bytecode pc 146
        return true;
    }
    // source line 224, bytecode pc 148
    return false;
}.bind(this), this);
},
    copperBtnClicked: function() {
    // source line 276, bytecode pc 136
    xs.Tools.Net.requestEvolutionChestOpenTen({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var arr, index;
    if (params.reward_info) {
        // source line 239, bytecode pc 21
        (arr = []);
        for (var index in params.reward_info) {
            if (!(params.reward_info.hasOwnProperty(index))) continue;
            if ((index == "extra_stone")) {
            } else {
                if ((index == "extra_best")) {
                    // source line 246, bytecode pc 133
                    arr.push(params.reward_info[index][0]);
                } else {
                    if ((index == "cost")) {
                    } else {
                        // source line 250, bytecode pc 185
                        arr.push(params.reward_info[index]);
                    }
                }
            }
        }
        // source line 255, bytecode pc 218
        this.m_listener.showOpenBoxResult(10, arr);
        // source line 256, bytecode pc 231
        this.refreshData();
        // source line 257, bytecode pc 246
        (this.m_free_times = params.free_times);
        // source line 258, bytecode pc 259
        this.updateUI();
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_evolution_1011")) {
        // source line 269, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("AwakeActiveDisable1"));
    }
    if (((params.error_code === "e_1005") || (params.error_code === "e_evolution_1011"))) {
        // source line 272, bytecode pc 144
        xs.Views.Mgr.hideDialog();
        // source line 273, bytecode pc 146
        return true;
    }
    // source line 275, bytecode pc 148
    return false;
}.bind(this), this);
},
    updateUI: function() {
    // source line 281, bytecode pc 22
    xs.log("updateUI ");
    // source line 282, bytecode pc 62
    this.stone_label.setString(String(this.stone_num));
    // source line 283, bytecode pc 87
    this.m_copper_sprice_label.setString(this.multi_price);
    // source line 284, bytecode pc 112
    this.m_update_sprice_label.setString(this.refresh_price);
    // source line 286, bytecode pc 179
    this.m_free_update_label.setString(xs.Tools.String.createStringWithArgsArray("AwakeBoxViewFreeUpdateLabel", [ this.m_free_refresh_times ]));
    if ((this.m_free_refresh_times <= 0)) {
        // source line 289, bytecode pc 212
        this.m_free_update_label.setVisible(false);
        // source line 290, bytecode pc 232
        this.m_update_sprice_label.setVisible(true);
        // source line 291, bytecode pc 252
        this.m_update_yuanbao.setVisible(true);
    } else {
        // source line 293, bytecode pc 277
        this.m_free_update_label.setVisible(true);
        // source line 294, bytecode pc 297
        this.m_update_sprice_label.setVisible(false);
        // source line 295, bytecode pc 317
        this.m_update_yuanbao.setVisible(false);
    }
    if ((this.m_free_times <= 0)) {
        // source line 299, bytecode pc 350
        this.arm_gold.setVisible(false);
        // source line 300, bytecode pc 375
        this.m_gold_sprice_label.setString(this.single_price);
        // source line 301, bytecode pc 395
        this.keySprite.setVisible(false);
        // source line 302, bytecode pc 415
        this.qianSprite.setVisible(true);
    } else {
        // source line 304, bytecode pc 440
        this.arm_gold.setVisible(true);
        // source line 305, bytecode pc 465
        this.m_gold_sprice_label.setString(this.m_free_times);
        // source line 306, bytecode pc 485
        this.keySprite.setVisible(true);
        // source line 307, bytecode pc 505
        this.qianSprite.setVisible(false);
    }
},
    updateBoxList: function() {
    var i, _replaceNode, _anrchorPoint, _position, _zOrder, id, num, type, node, model, head, str_num, lab_num, _arm1, item_type, _view_lt, _offset;
    // source line 314, bytecode pc 4
    (i = 0);
    while ((i < this.m_chest_list.length)) {
        // source line 315, bytecode pc 35
        (_replaceNode = this.ccb_Node.getChildByTag(i));
        // source line 316, bytecode pc 53
        (_anrchorPoint = _replaceNode.getAnchorPoint());
        // source line 317, bytecode pc 71
        (_position = _replaceNode.getPosition());
        // source line 318, bytecode pc 89
        (_zOrder = _replaceNode.getZOrder());
        // source line 321, bytecode pc 108
        (id = this.m_chest_list[i].item_id);
        // source line 322, bytecode pc 127
        (num = this.m_chest_list[i].item_num);
        // source line 323, bytecode pc 146
        (type = this.m_chest_list[i].grade);
        // source line 328, bytecode pc 171
        (node = cc.Node.create());
        // source line 330, bytecode pc 205
        (model = xs.Models.Item.createWithBase(id));
        // source line 331, bytecode pc 223
        (head = model.createIcon_Grade());
        // source line 335, bytecode pc 251
        (str_num = ("x" + String(num)));
        // source line 336, bytecode pc 287
        (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
        // source line 338, bytecode pc 306
        lab_num.setString(str_num);
        // source line 339, bytecode pc 391
        xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
        if ((Number(type) > 3)) {
            // source line 343, bytecode pc 458
            (_arm1 = xs.Views.Armature.AutoAudioArmature.create("Arm_AwakeBox_Light"));
            // source line 345, bytecode pc 498
            _arm1.playAniById("Baox_Jx_bj_ani", { speed: 1, loop: true });
            // source line 347, bytecode pc 519
            _arm1.setScale(1.1);
            // source line 349, bytecode pc 554
            xs.Utils.Node.attachNodes(node, _arm1);
        }
        // source line 352, bytecode pc 581
        xs.log("---- id = ", id);
        // source line 353, bytecode pc 614
        (item_type = xs.Cfg.System.sgs_item[id].item_type);
        if ((item_type == xs.Models.ItemType_Evolution_Baowu)) {
            // source line 357, bytecode pc 680
            (_view_lt = xs.Factorys.Sprite.create("icon_lt_piece", "Cmn02"));
            // source line 358, bytecode pc 706
            (_offset = cc.p(-46, 54));
            // source line 359, bytecode pc 732
            _view_lt.setAnchorPoint(xs.ap_lt);
            // source line 360, bytecode pc 750
            _view_lt.setZOrder(10);
            // source line 361, bytecode pc 810
            xs.Utils.Node.attachNodes(head, _view_lt, { desc: "lt", offset: _offset });
        }
        // source line 364, bytecode pc 845
        xs.Utils.Node.attachNodes(node, head);
        // source line 366, bytecode pc 864
        node.setTag(i);
        // source line 367, bytecode pc 883
        node.setZOrder(_zOrder);
        // source line 368, bytecode pc 902
        node.setAnchorPoint(_anrchorPoint);
        // source line 369, bytecode pc 921
        node.setPosition(_position);
        // source line 371, bytecode pc 959
        xs.Utils.Node.attachNodes(this.ccb_Node, node);
        // source line 372, bytecode pc 990
        xs.Utils.Node.safeRemoveChild(_replaceNode);
        // source line 314, bytecode pc 1004
        (i = (+i + 1));
    }
},
    refreshData: function() {
    // source line 380, bytecode pc 48
    (this.m_evolutionChestInfo = xs.Profile.GameData.PushInfo.getInstance().getEvolutionChestInfo());
    // source line 381, bytecode pc 66
    (this.m_chest_list = this.m_evolutionChestInfo.m_chest_list);
    // source line 382, bytecode pc 84
    (this.m_free_times = this.m_evolutionChestInfo.m_free_times);
    // source line 383, bytecode pc 102
    (this.m_refresh_times = this.m_evolutionChestInfo.m_refresh_times);
    // source line 384, bytecode pc 120
    (this.m_open_times = this.m_evolutionChestInfo.m_open_times);
    // source line 385, bytecode pc 138
    (this.m_free_refresh_times = this.m_evolutionChestInfo.m_free_refresh_times);
    // source line 388, bytecode pc 161
    (this.refresh_price = this.m_evolutionChestInfo.m_cost.refresh_price);
    // source line 389, bytecode pc 184
    (this.single_price = this.m_evolutionChestInfo.m_cost.single_price);
    // source line 390, bytecode pc 207
    (this.multi_price = this.m_evolutionChestInfo.m_cost.multi_price);
    // source line 392, bytecode pc 277
    (this.stone_num = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_EvolutionStone));
},
    updateBtnClicked: function() {
    // source line 421, bytecode pc 136
    xs.Tools.Net.requestEvolutionChestRefresh({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var mEvoChest;
    // source line 402, bytecode pc 45
    (mEvoChest = xs.Profile.GameData.PushInfo.getInstance().getEvolutionChestInfo());
    // source line 403, bytecode pc 64
    mEvoChest.loadJson(params);
    if (mEvoChest.getResult()) {
        // source line 406, bytecode pc 96
        this.refreshData();
        // source line 407, bytecode pc 109
        this.updateBoxList();
        // source line 408, bytecode pc 122
        this.updateUI();
        // source line 409, bytecode pc 162
        this.stone_label.setString(String(this.stone_num));
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_1005")) {
        // source line 417, bytecode pc 45
        xs.Views.Mgr.hideDialog();
        // source line 418, bytecode pc 47
        return true;
    }
    // source line 420, bytecode pc 49
    return false;
}.bind(this), this);
}
}));
// source line 431, bytecode pc 474
(xs.Views.AwakeBoxView.create = function() {
    var ret;
    // source line 432, bytecode pc 23
    (ret = new xs.Views.AwakeBoxView());
    if ((ret && ret.init())) {
        // source line 434, bytecode pc 55
        return ret;
    }
    // source line 436, bytecode pc 57
    return null;
});
// source line 629, bytecode pc 548
(xs.Views.AwakeBoxResultView = cc.Node.extend({
    ctor: function() {
    // source line 442, bytecode pc 12
    this._super();
    // source line 443, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(param) {
    var actionArray, type, id, num, _arm1, scale1, model, head, str_num, lab_num, item_type, _view_lt, _offset, scale2;
    // source line 447, bytecode pc 12
    this._super();
    // source line 449, bytecode pc 21
    (actionArray = []);
    // source line 450, bytecode pc 35
    (type = param[0].type);
    // source line 451, bytecode pc 49
    (id = param[0].id);
    // source line 452, bytecode pc 63
    (num = param[0].num);
    if ((Number(type) > 3)) {
        // source line 454, bytecode pc 130
        (_arm1 = xs.Views.Armature.AutoAudioArmature.create("Arm_AwakeBox_Light"));
        // source line 455, bytecode pc 170
        _arm1.playAniById("Baox_Jx_bj_ani", { speed: 1, loop: true });
        // source line 456, bytecode pc 187
        _arm1.setScale(0);
        // source line 457, bytecode pc 269
        xs.Utils.Node.attachNodes(this, _arm1, { desc: "c", offset: cc.p(0, 30), sc: true });
        // source line 459, bytecode pc 306
        (scale1 = cc.ScaleTo.create(0.3, 1.5));
        // source line 461, bytecode pc 325
        _arm1.runAction(scale1);
    }
    // source line 468, bytecode pc 359
    (model = xs.Models.Item.createWithBase(id));
    // source line 469, bytecode pc 377
    (head = model.createIcon_Grade());
    // source line 470, bytecode pc 405
    (str_num = ("x" + String(num)));
    // source line 471, bytecode pc 441
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 473, bytecode pc 460
    lab_num.setString(str_num);
    // source line 474, bytecode pc 545
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 476, bytecode pc 578
    (item_type = xs.Cfg.System.sgs_item[id].item_type);
    if ((item_type == xs.Models.ItemType_Evolution_Baowu)) {
        // source line 479, bytecode pc 644
        (_view_lt = xs.Factorys.Sprite.create("icon_lt_piece", "Cmn02"));
        // source line 480, bytecode pc 670
        (_offset = cc.p(-46, 54));
        // source line 481, bytecode pc 696
        _view_lt.setAnchorPoint(xs.ap_lt);
        // source line 482, bytecode pc 714
        _view_lt.setZOrder(10);
        // source line 483, bytecode pc 774
        xs.Utils.Node.attachNodes(head, _view_lt, { desc: "lt", offset: _offset });
    }
    // source line 486, bytecode pc 791
    head.setScale(0);
    // source line 487, bytecode pc 873
    xs.Utils.Node.attachNodes(this, head, { desc: "c", sc: true, offset: cc.p(0, 30) });
    // source line 488, bytecode pc 906
    (scale2 = cc.ScaleTo.create(0.3, 1));
    // source line 489, bytecode pc 925
    head.runAction(scale2);
    // source line 564, bytecode pc 981
    actionArray.push(cc.CallFunc.create(function() {
    var player;
    // source line 497, bytecode pc 29
    xs.audio.playEffect("Audio_EFF_TuPo", false);
    // source line 499, bytecode pc 68
    (this.continueBtn = xs.Views.Btn.create("Btn_AwakeBoxOpenAgain"));
    // source line 500, bytecode pc 160
    xs.Utils.Node.attachNodes(this, this.continueBtn, { desc: "c", offset: cc.p(-150, -170), sc: true });
    // source line 501, bytecode pc 209
    (this.m_evolutionChestInfo = xs.Profile.GameData.PushInfo.getInstance().getEvolutionChestInfo());
    // source line 502, bytecode pc 232
    (this.single_price = this.m_evolutionChestInfo.m_cost.single_price);
    // source line 503, bytecode pc 283
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if ((player.getPlayerYuanBao() < this.single_price)) {
        // source line 506, bytecode pc 329
        this.continueBtn.setEnabled(false);
    }
    // source line 554, bytecode pc 366
    this.continueBtn.setOnClickCallBack(function() {
    // source line 510, bytecode pc 14
    this.removeFromParent(true);
    // source line 553, bytecode pc 151
    xs.Tools.Net.requestEvolutionChestOpen({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var arr, index;
    if (params.reward_info) {
        // source line 518, bytecode pc 21
        (arr = []);
        for (var index in params.reward_info) {
            if (!(params.reward_info.hasOwnProperty(index))) continue;
            if ((index == "extra_stone")) {
            } else {
                if ((index == "extra_best")) {
                    // source line 525, bytecode pc 133
                    arr.push(params.reward_info[index][0]);
                } else {
                    if ((index == "cost")) {
                    } else {
                        // source line 529, bytecode pc 185
                        arr.push(params.reward_info[index]);
                    }
                }
            }
        }
        // source line 534, bytecode pc 217
        this.m_listener.showOpenBoxResult(1, arr);
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_evolution_1011")) {
        // source line 544, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("AwakeActiveDisable1"));
    }
    if (((params.error_code === "e_1005") || ((params.error_code === "e_2012") || (params.error_code === "e_evolution_1011")))) {
        // source line 547, bytecode pc 155
        this.m_listener.backFromOpenBoxResult();
        // source line 549, bytecode pc 157
        return true;
    }
    // source line 552, bytecode pc 159
    return false;
}.bind(this), this);
}.bind(this));
    // source line 556, bytecode pc 405
    (this.againBtn = xs.Views.Btn.create("Btn_Confirm_3"));
    // source line 557, bytecode pc 495
    xs.Utils.Node.attachNodes(this, this.againBtn, { desc: "c", offset: cc.p(150, -170), sc: true });
    // source line 561, bytecode pc 532
    this.againBtn.setOnClickCallBack(function() {
    // source line 559, bytecode pc 14
    this.removeFromParent(true);
    // source line 560, bytecode pc 32
    this.m_listener.backFromOpenBoxResult();
}.bind(this));
}.bind(this)));
    // source line 619, bytecode pc 1037
    actionArray.push(cc.CallFunc.create(function() {
    var str_gongxi, lab_gongxi, str, lab, _str, _node, _toast_bg;
    // source line 568, bytecode pc 35
    (str_gongxi = xs.Tools.String.createString("AwakeBoxGongxi"));
    // source line 569, bytecode pc 71
    (lab_gongxi = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 571, bytecode pc 90
    lab_gongxi.setString(str_gongxi);
    // source line 572, bytecode pc 173
    xs.Utils.Node.attachNodes(this, lab_gongxi, { desc: "c", offset: cc.p(0, 210), sc: true });
    // source line 575, bytecode pc 209
    (str = xs.Tools.String.createString("AwakeBoxLingshi"));
    // source line 578, bytecode pc 245
    (lab = xs.Factorys.Label.createByStyleId("LS_wujiangName1"));
    if (((str.length > 18) && (str.indexOf("\n") < 0))) {
        // source line 585, bytecode pc 340
        (_str = ((str.substring(0, 18) + "\n") + str.substring(18)));
    } else {
        // source line 588, bytecode pc 352
        (_str = str);
    }
    // source line 592, bytecode pc 371
    lab.setString(_str);
    // source line 595, bytecode pc 396
    (_node = cc.Node.create());
    // source line 596, bytecode pc 442
    _node.setZOrder(xs.Cfg.Scene.CommonScene.FlutterText.zOrder);
    // source line 597, bytecode pc 488
    _node.setTag(xs.Cfg.Scene.CommonScene.FlutterText.tag);
    // source line 598, bytecode pc 530
    (_toast_bg = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 601, bytecode pc 551
    _toast_bg.setScaleX(0.75);
    // source line 606, bytecode pc 635
    xs.Utils.Node.attachNodes(_node, _toast_bg, { desc: "c", offset: cc.p(10, 0), sc: false });
    // source line 612, bytecode pc 719
    xs.Utils.Node.attachNodes(_node, lab, { desc: "c", offset: cc.p(-10, 0), sc: false });
    // source line 615, bytecode pc 804
    xs.Utils.Node.attachNodes(this, _node, { desc: "c", offset: cc.p(0, -250), sc: true });
}.bind(this)));
    // source line 622, bytecode pc 1081
    this.runAction(xs.Utils.Action.combineSequence(actionArray));
    // source line 626, bytecode pc 1083
    return true;
},
    setListener: function(listener) {
    // source line 630, bytecode pc 9
    (this.m_listener = listener);
}
}));
// source line 635, bytecode pc 574
(xs.Views.AwakeBoxResultView.create = function(param) {
    var ret;
    // source line 637, bytecode pc 23
    (ret = new xs.Views.AwakeBoxResultView());
    if ((ret && ret.init(param))) {
        // source line 639, bytecode pc 59
        return ret;
    }
    // source line 641, bytecode pc 61
    return null;
});
// source line 930, bytecode pc 648
(xs.Views.AwakeBoxResultView_Ten = cc.Node.extend({
    ctor: function() {
    // source line 646, bytecode pc 12
    this._super();
    // source line 647, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(param) {
    var actionArray, iconList, offsetArray, i;
    // source line 651, bytecode pc 12
    this._super();
    // source line 653, bytecode pc 21
    (actionArray = []);
    // source line 655, bytecode pc 34
    (iconList = param);
    // source line 669, bytecode pc 474
    (offsetArray = [
    { set: cc.p(-260, 170) },
    { set: cc.p(-130, 170) },
    { set: cc.p(0, 170) },
    { set: cc.p(130, 170) },
    { set: cc.p(260, 170) },
    { set: cc.p(-260, 40) },
    { set: cc.p(-130, 40) },
    { set: cc.p(0, 40) },
    { set: cc.p(130, 40) },
    { set: cc.p(260, 40) },
    { set: cc.p(0, -90) }
]);
    // source line 672, bytecode pc 482
    (this.index = 0);
    // source line 674, bytecode pc 487
    (i = 0);
    while ((i < iconList.length)) {
        // source line 790, bytecode pc 549
        actionArray.push(cc.CallFunc.create(function() {
    var delayTime, type, id, num, _arm1, scale1, model, head, str_num, lab_num, str_baowu, lab_baowu, item_type, _view_lt, _offset, scale2;
    if ((this.index == (iconList.length - 1))) {
        // source line 677, bytecode pc 54
        (delayTime = cc.DelayTime.create(1));
        // source line 734, bytecode pc 136
        this.runAction(cc.Sequence.create(delayTime, cc.CallFunc.create(function() {
    var id, num, type, _arm1, scale1, model, head, str_num, lab_num, str_baowu, lab_baowu, item_type, _view_lt, _offset, scale2;
    // source line 681, bytecode pc 24
    (id = iconList[this.index].id);
    // source line 682, bytecode pc 49
    (num = iconList[this.index].num);
    // source line 683, bytecode pc 74
    (type = iconList[this.index].type);
    if ((Number(type) > 3)) {
        // source line 686, bytecode pc 141
        (_arm1 = xs.Views.Armature.AutoAudioArmature.create("Arm_AwakeBox_Light"));
        // source line 688, bytecode pc 181
        _arm1.playAniById("Baox_Jx_bj_ani", { speed: 1, loop: true });
        // source line 689, bytecode pc 198
        _arm1.setScale(0);
        // source line 691, bytecode pc 280
        xs.Utils.Node.attachNodes(this, _arm1, { desc: "c", offset: offsetArray[this.index].set, sc: true });
        // source line 693, bytecode pc 317
        (scale1 = cc.ScaleTo.create(0.3, 1.1));
        // source line 695, bytecode pc 336
        _arm1.runAction(scale1);
    }
    // source line 698, bytecode pc 363
    xs.log("---- model id == ", id);
    // source line 700, bytecode pc 397
    (model = xs.Models.Item.createWithBase(id));
    // source line 701, bytecode pc 415
    (head = model.createIcon_Grade());
    // source line 702, bytecode pc 443
    (str_num = ("x" + String(num)));
    // source line 703, bytecode pc 479
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    if ((this.index == (iconList.length - 1))) {
        // source line 707, bytecode pc 543
        (str_baowu = xs.Tools.String.createString("AwakeBoxBaowu"));
        // source line 708, bytecode pc 579
        (lab_baowu = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
        // source line 709, bytecode pc 598
        lab_baowu.setString(str_baowu);
        // source line 710, bytecode pc 683
        xs.Utils.Node.attachNodes(head, lab_baowu, { desc: "c", offset: cc.p(5, -60), sc: false });
    }
    // source line 713, bytecode pc 716
    (item_type = xs.Cfg.System.sgs_item[id].item_type);
    if ((item_type == xs.Models.ItemType_Evolution_Baowu)) {
        // source line 716, bytecode pc 782
        (_view_lt = xs.Factorys.Sprite.create("icon_lt_piece", "Cmn02"));
        // source line 717, bytecode pc 808
        (_offset = cc.p(-46, 54));
        // source line 718, bytecode pc 834
        _view_lt.setAnchorPoint(xs.ap_lt);
        // source line 719, bytecode pc 852
        _view_lt.setZOrder(10);
        // source line 720, bytecode pc 912
        xs.Utils.Node.attachNodes(head, _view_lt, { desc: "lt", offset: _offset });
    }
    // source line 723, bytecode pc 931
    lab_num.setString(str_num);
    // source line 724, bytecode pc 1016
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 726, bytecode pc 1034
    head.setScale(2);
    // source line 727, bytecode pc 1116
    xs.Utils.Node.attachNodes(this, head, { desc: "c", offset: offsetArray[this.index].set, sc: true });
    // source line 728, bytecode pc 1149
    (scale2 = cc.ScaleTo.create(0.3, 1));
    // source line 729, bytecode pc 1168
    head.runAction(scale2);
    // source line 730, bytecode pc 1194
    (this.index = (+this.index + 1));
}.bind(this), this)));
    } else {
        // source line 737, bytecode pc 166
        (type = iconList[this.index].type);
        // source line 738, bytecode pc 191
        (id = iconList[this.index].id);
        // source line 739, bytecode pc 216
        (num = iconList[this.index].num);
        if ((Number(type) > 3)) {
            // source line 742, bytecode pc 283
            (_arm1 = xs.Views.Armature.AutoAudioArmature.create("Arm_AwakeBox_Light"));
            // source line 744, bytecode pc 323
            _arm1.playAniById("Baox_Jx_bj_ani", { speed: 1, loop: true });
            // source line 745, bytecode pc 340
            _arm1.setScale(0);
            // source line 747, bytecode pc 422
            xs.Utils.Node.attachNodes(this, _arm1, { desc: "c", offset: offsetArray[this.index].set, sc: true });
            // source line 749, bytecode pc 459
            (scale1 = cc.ScaleTo.create(0.3, 1.1));
            // source line 751, bytecode pc 478
            _arm1.runAction(scale1);
        }
        // source line 754, bytecode pc 512
        (model = xs.Models.Item.createWithBase(id));
        // source line 755, bytecode pc 530
        (head = model.createIcon_Grade());
        // source line 756, bytecode pc 558
        (str_num = ("x" + String(num)));
        // source line 757, bytecode pc 594
        (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
        if ((this.index == (iconList.length - 1))) {
            // source line 760, bytecode pc 658
            (str_baowu = xs.Tools.String.createString("AwakeBoxBaowu"));
            // source line 761, bytecode pc 694
            (lab_baowu = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
            // source line 762, bytecode pc 713
            lab_baowu.setString(str_baowu);
            // source line 763, bytecode pc 798
            xs.Utils.Node.attachNodes(head, lab_baowu, { desc: "c", offset: cc.p(5, -60), sc: false });
        }
        // source line 766, bytecode pc 817
        lab_num.setString(str_num);
        // source line 767, bytecode pc 902
        xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
        // source line 769, bytecode pc 935
        (item_type = xs.Cfg.System.sgs_item[id].item_type);
        if ((item_type == xs.Models.ItemType_Evolution_Baowu)) {
            // source line 772, bytecode pc 1001
            (_view_lt = xs.Factorys.Sprite.create("icon_lt_piece", "Cmn02"));
            // source line 773, bytecode pc 1027
            (_offset = cc.p(-46, 54));
            // source line 774, bytecode pc 1053
            _view_lt.setAnchorPoint(xs.ap_lt);
            // source line 775, bytecode pc 1071
            _view_lt.setZOrder(10);
            // source line 776, bytecode pc 1131
            xs.Utils.Node.attachNodes(head, _view_lt, { desc: "lt", offset: _offset });
        }
        // source line 779, bytecode pc 1148
        head.setScale(0);
        // source line 780, bytecode pc 1230
        xs.Utils.Node.attachNodes(this, head, { desc: "c", offset: offsetArray[this.index].set, sc: true });
        // source line 781, bytecode pc 1263
        (scale2 = cc.ScaleTo.create(0.3, 1));
        // source line 782, bytecode pc 1282
        head.runAction(scale2);
        // source line 783, bytecode pc 1308
        (this.index = (+this.index + 1));
    }
}.bind(this)));
        // source line 674, bytecode pc 563
        (i = (+i + 1));
    }
    // source line 867, bytecode pc 644
    actionArray.push(cc.CallFunc.create(function() {
    var player;
    // source line 796, bytecode pc 29
    xs.audio.playEffect("Audio_EFF_ZhuanShi", false);
    // source line 798, bytecode pc 68
    (this.continueBtn = xs.Views.Btn.create("Btn_AwakeBoxOpenAgain"));
    // source line 799, bytecode pc 160
    xs.Utils.Node.attachNodes(this, this.continueBtn, { desc: "c", offset: cc.p(-150, -200), sc: true });
    // source line 801, bytecode pc 209
    (this.m_evolutionChestInfo = xs.Profile.GameData.PushInfo.getInstance().getEvolutionChestInfo());
    // source line 802, bytecode pc 232
    (this.multi_price = this.m_evolutionChestInfo.m_cost.multi_price);
    // source line 803, bytecode pc 283
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if ((player.getPlayerYuanBao() < this.multi_price)) {
        // source line 806, bytecode pc 329
        this.continueBtn.setEnabled(false);
    }
    // source line 857, bytecode pc 366
    this.continueBtn.setOnClickCallBack(function() {
    // source line 810, bytecode pc 14
    this.removeFromParent(true);
    // source line 855, bytecode pc 151
    xs.Tools.Net.requestEvolutionChestOpenTen({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var arr, index;
    if (params.reward_info) {
        // source line 819, bytecode pc 21
        (arr = []);
        for (var index in params.reward_info) {
            if (!(params.reward_info.hasOwnProperty(index))) continue;
            if ((index == "extra_stone")) {
            } else {
                if ((index == "extra_best")) {
                    // source line 826, bytecode pc 133
                    arr.push(params.reward_info[index][0]);
                } else {
                    if ((index == "cost")) {
                    } else {
                        // source line 830, bytecode pc 185
                        arr.push(params.reward_info[index]);
                    }
                }
            }
        }
        // source line 835, bytecode pc 218
        this.m_listener.showOpenBoxResult(10, arr);
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_evolution_1011")) {
        // source line 847, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("AwakeActiveDisable1"));
    }
    if (((params.error_code === "e_1005") || (params.error_code === "e_evolution_1011"))) {
        // source line 851, bytecode pc 135
        this.m_listener.backFromOpenBoxResult();
        // source line 852, bytecode pc 137
        return true;
    }
    // source line 854, bytecode pc 139
    return false;
}.bind(this), this);
}.bind(this));
    // source line 859, bytecode pc 405
    (this.againBtn = xs.Views.Btn.create("Btn_Confirm_3"));
    // source line 860, bytecode pc 495
    xs.Utils.Node.attachNodes(this, this.againBtn, { desc: "c", offset: cc.p(150, -200), sc: true });
    // source line 864, bytecode pc 532
    this.againBtn.setOnClickCallBack(function() {
    // source line 862, bytecode pc 14
    this.removeFromParent(true);
    // source line 863, bytecode pc 32
    this.m_listener.backFromOpenBoxResult();
}.bind(this));
}.bind(this)));
    // source line 922, bytecode pc 700
    actionArray.push(cc.CallFunc.create(function() {
    var str_gongxi, lab_gongxi, str, lab, _str, _node, _toast_bg;
    // source line 871, bytecode pc 35
    (str_gongxi = xs.Tools.String.createString("AwakeBoxGongxi"));
    // source line 872, bytecode pc 71
    (lab_gongxi = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 874, bytecode pc 90
    lab_gongxi.setString(str_gongxi);
    // source line 875, bytecode pc 173
    xs.Utils.Node.attachNodes(this, lab_gongxi, { desc: "c", offset: cc.p(0, 260), sc: true });
    // source line 878, bytecode pc 209
    (str = xs.Tools.String.createString("AwakeBoxLingshiTen"));
    // source line 881, bytecode pc 245
    (lab = xs.Factorys.Label.createByStyleId("LS_wujiangName1"));
    if (((str.length > 18) && (str.indexOf("\n") < 0))) {
        // source line 888, bytecode pc 340
        (_str = ((str.substring(0, 18) + "\n") + str.substring(18)));
    } else {
        // source line 891, bytecode pc 352
        (_str = str);
    }
    // source line 895, bytecode pc 371
    lab.setString(_str);
    // source line 898, bytecode pc 396
    (_node = cc.Node.create());
    // source line 899, bytecode pc 442
    _node.setZOrder(xs.Cfg.Scene.CommonScene.FlutterText.zOrder);
    // source line 900, bytecode pc 488
    _node.setTag(xs.Cfg.Scene.CommonScene.FlutterText.tag);
    // source line 901, bytecode pc 530
    (_toast_bg = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 904, bytecode pc 551
    _toast_bg.setScaleX(0.75);
    // source line 909, bytecode pc 635
    xs.Utils.Node.attachNodes(_node, _toast_bg, { desc: "c", offset: cc.p(10, 0), sc: false });
    // source line 915, bytecode pc 719
    xs.Utils.Node.attachNodes(_node, lab, { desc: "c", offset: cc.p(-10, 0), sc: false });
    // source line 918, bytecode pc 804
    xs.Utils.Node.attachNodes(this, _node, { desc: "c", offset: cc.p(0, -275), sc: true });
}.bind(this)));
    // source line 925, bytecode pc 744
    this.runAction(xs.Utils.Action.combineSequence(actionArray));
    // source line 927, bytecode pc 746
    return true;
},
    setListener: function(listener) {
    // source line 931, bytecode pc 9
    (this.m_listener = listener);
}
}));
// source line 935, bytecode pc 674
(xs.Views.AwakeBoxResultView_Ten.create = function(param) {
    var ret;
    // source line 936, bytecode pc 23
    (ret = new xs.Views.AwakeBoxResultView_Ten());
    if ((ret && ret.init(param))) {
        // source line 938, bytecode pc 59
        return ret;
    }
    // source line 940, bytecode pc 61
    return null;
});
