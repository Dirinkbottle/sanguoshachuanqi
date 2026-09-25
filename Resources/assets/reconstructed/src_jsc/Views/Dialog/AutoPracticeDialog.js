// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AutoPracticeDialog.js:1
// source line 327, bytecode pc 213
(xs.Views.Dialog.AutoPracticeDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.AutoPracticeDialog",
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(params) {
    var i;
    // source line 10, bytecode pc 14
    (this.param = params.idx);
    // source line 11, bytecode pc 29
    (this.talent = params.talent);
    // source line 12, bytecode pc 44
    (this.pkid = params.pkId);
    // source line 13, bytecode pc 78
    (this.ccbNode = xs.ccb_reader.load("ccb3/AutoPracticeDialog.ccbi"));
    // source line 14, bytecode pc 125
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 15, bytecode pc 209
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: cc.p(0, 0), sc: true });
    // source line 17, bytecode pc 217
    (this.m_closeBtn = null);
    // source line 18, bytecode pc 225
    (this.m_confirmBtn = null);
    // source line 20, bytecode pc 233
    (this.m_title = null);
    // source line 21, bytecode pc 241
    (this.m_countNumLabel = null);
    // source line 22, bytecode pc 249
    (this.m_totalGanodermaLabel = null);
    // source line 23, bytecode pc 257
    (this.m_totalPriceLabel = null);
    // source line 25, bytecode pc 265
    (this.m_choose_1 = null);
    // source line 26, bytecode pc 273
    (this.m_choose_2 = null);
    // source line 27, bytecode pc 281
    (this.m_choose_3 = null);
    // source line 28, bytecode pc 289
    (this.m_choose_4 = null);
    // source line 29, bytecode pc 297
    (this.m_choose_5 = null);
    // source line 30, bytecode pc 305
    (this.m_choose_6 = null);
    // source line 31, bytecode pc 313
    (this.m_choose_7 = null);
    // source line 32, bytecode pc 321
    (this.m_choose_8 = null);
    // source line 33, bytecode pc 329
    (this.m_choose_9 = null);
    // source line 34, bytecode pc 337
    (this.m_choose_10 = null);
    // source line 35, bytecode pc 345
    (this.m_choose_11 = null);
    // source line 36, bytecode pc 353
    (this.m_choose_12 = null);
    // source line 37, bytecode pc 361
    (this.m_choose_13 = null);
    // source line 39, bytecode pc 369
    (this.isGain = null);
    // source line 40, bytecode pc 377
    (this.isMulti = null);
    // source line 43, bytecode pc 384
    switch (this.param) {
        case 0:
        // source line 45, bytecode pc 421
        (this.costGanoderma = 5);
        // source line 46, bytecode pc 429
        (this.costYuanbao = 0);
        // source line 47, bytecode pc 437
        (this.isGain = 0);
        // source line 48, bytecode pc 445
        (this.isMulti = 0);
        break;
        case 1:
        // source line 51, bytecode pc 459
        (this.costGanoderma = 5);
        // source line 52, bytecode pc 467
        (this.costYuanbao = 1);
        // source line 53, bytecode pc 475
        (this.isGain = 1);
        // source line 54, bytecode pc 483
        (this.isMulti = 0);
        break;
        case 2:
        // source line 57, bytecode pc 497
        (this.costGanoderma = 50);
        // source line 58, bytecode pc 505
        (this.costYuanbao = 0);
        // source line 59, bytecode pc 513
        (this.isGain = 0);
        // source line 60, bytecode pc 521
        (this.isMulti = 1);
        break;
        case 3:
        // source line 63, bytecode pc 535
        (this.costGanoderma = 50);
        // source line 64, bytecode pc 544
        (this.costYuanbao = 10);
        // source line 65, bytecode pc 552
        (this.isGain = 1);
        // source line 66, bytecode pc 560
        (this.isMulti = 1);
        break;
        default:
        break;
    }
    // source line 70, bytecode pc 632
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, xs.Views.Dialog.AutoPracticeDialog.cfg.ccbCfg, this);
    // source line 72, bytecode pc 670
    this.m_closeBtn.setOnClickCallBack(this.onBtnClicked.bind(this));
    // source line 73, bytecode pc 708
    this.m_confirmBtn.setOnClickCallBack(this.onBtnClicked.bind(this));
    // source line 75, bytecode pc 713
    (i = 1);
    while ((i <= 13)) {
        // source line 76, bytecode pc 762
        this[("m_choose_" + i)].setOnClickCallBack(this.onBtnClicked.bind(this));
        // source line 77, bytecode pc 781
        this.setChooseVisible(i, false);
        // source line 75, bytecode pc 795
        (i = (+i + 1));
    }
    // source line 80, bytecode pc 826
    this.setChooseVisible(13, true);
    // source line 82, bytecode pc 846
    this.setTitleByIdx(this.param);
    // source line 84, bytecode pc 861
    this.setPracticeNum(0);
    // source line 86, bytecode pc 876
    this.setGanodermaInfo(0);
    // source line 88, bytecode pc 891
    this.setYuanBaoInfo(0);
    // source line 91, bytecode pc 964
    (this.add1Btn = xs.Utils.replaceButton(this.ccbNode, 204, xs.Views.Button.ChangeNumBtn.create(1)));
    // source line 92, bytecode pc 1002
    this.add1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 95, bytecode pc 1076
    (this.decrease1Btn = xs.Utils.replaceButton(this.ccbNode, 202, xs.Views.Button.ChangeNumBtn.create(2)));
    // source line 96, bytecode pc 1114
    this.decrease1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 99, bytecode pc 1188
    (this.add10Btn = xs.Utils.replaceButton(this.ccbNode, 205, xs.Views.Button.ChangeNumBtn.create(3)));
    // source line 100, bytecode pc 1226
    this.add10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 103, bytecode pc 1300
    (this.decrease10Btn = xs.Utils.replaceButton(this.ccbNode, 201, xs.Views.Button.ChangeNumBtn.create(4)));
    // source line 104, bytecode pc 1338
    this.decrease10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 107, bytecode pc 1412
    (this.maxBtn = xs.Utils.replaceButton(this.ccbNode, 200, xs.Views.Button.ChangeNumBtn.create(5)));
    // source line 108, bytecode pc 1450
    this.maxBtn.setOnClickCallBack(this.onChgNum.bind(this));
    if ((this.getChooseTagById(13) == true)) {
        // source line 112, bytecode pc 1554
        (this.maxNum = ((this.getMaxPracticeNum(this.costGanoderma, this.costYuanbao) < this.talent) ? this.getMaxPracticeNum(this.costGanoderma, this.costYuanbao) : this.talent));
    } else {
        // source line 114, bytecode pc 1592
        (this.maxNum = this.getMaxPracticeNum(this.costGanoderma, this.costYuanbao));
    }
    // source line 115, bytecode pc 1600
    (this.minNum = 0);
    // source line 116, bytecode pc 1608
    (this.buyNum = 0);
    // source line 117, bytecode pc 1610
    return true;
},
    setTitleByIdx: function(param) {
    // source line 120, bytecode pc 54
    this.m_title.setString(xs.Tools.String.createString(("AutoPractice_str_" + param)));
},
    setPracticeNum: function(param) {
    // source line 123, bytecode pc 21
    this.m_countNumLabel.setString(param);
},
    getMaxPracticeNum: function(gano, yuanbao) {
    var numYuanbao, numGanoderam;
    // source line 126, bytecode pc 80
    (numYuanbao = parseInt((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao() / yuanbao)));
    // source line 127, bytecode pc 150
    (numGanoderam = parseInt((xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum() / gano)));
    if ((yuanbao != 0)) {
        // source line 129, bytecode pc 184
        return ((numGanoderam < numYuanbao) ? numGanoderam : numYuanbao);
    } else {
        // source line 131, bytecode pc 193
        return numGanoderam;
    }
},
    setGanodermaInfo: function(param) {
    var costGanoderma;
    // source line 134, bytecode pc 13
    (costGanoderma = (param * this.costGanoderma));
    // source line 135, bytecode pc 89
    this.m_totalGanodermaLabel.setString(((costGanoderma + "/") + xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum()));
},
    setYuanBaoInfo: function(param) {
    var costYuanBao;
    // source line 138, bytecode pc 13
    (costYuanBao = (param * this.costYuanbao));
    // source line 139, bytecode pc 100
    this.m_totalPriceLabel.setString(((costYuanBao + "/") + xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao()));
},
    getChooseTagById: function(param) {
    // source line 142, bytecode pc 11
    return this[("m_choose_tag_" + param)];
},
    setChooseTagById: function(param, tag) {
    // source line 145, bytecode pc 14
    (this[("m_choose_tag_" + param)] = tag);
},
    setChooseVisible: function(param, visible) {
    var choose_tag;
    // source line 148, bytecode pc 25
    (choose_tag = (900 + parseInt(param)));
    if ((typeof(visible) !== "undefined")) {
        // source line 151, bytecode pc 77
        this.ccbNode.getChildByTag(choose_tag).setVisible(visible);
        // source line 152, bytecode pc 98
        this.setChooseTagById(param, visible);
    } else {
        // source line 156, bytecode pc 154
        this.ccbNode.getChildByTag(choose_tag).setVisible(!this.getChooseTagById(param));
        // source line 157, bytecode pc 189
        this.setChooseTagById(param, !this.getChooseTagById(param));
    }
    // source line 159, bytecode pc 225
    this.ccbNode.getChildByTag(param).setZOrder(9);
    // source line 160, bytecode pc 261
    this.ccbNode.getChildByTag(choose_tag).setZOrder(10);
},
    getAllChooseStatus: function() {
    var _chooseStatus, i;
    // source line 163, bytecode pc 9
    (_chooseStatus = {});
    // source line 164, bytecode pc 14
    (i = 1);
    while ((i <= 12)) {
        if (this.getChooseTagById(i)) {
            // source line 167, bytecode pc 50
            (_chooseStatus[i] = 1);
        } else {
            // source line 170, bytecode pc 64
            (_chooseStatus[i] = 0);
        }
        // source line 164, bytecode pc 78
        (i = (+i + 1));
    }
    // source line 173, bytecode pc 95
    return _chooseStatus;
},
    onChgNum: function(sender) {
    if ((this.getChooseTagById(13) == true)) {
        // source line 179, bytecode pc 103
        (this.maxNum = ((this.getMaxPracticeNum(this.costGanoderma, this.costYuanbao) < this.talent) ? this.getMaxPracticeNum(this.costGanoderma, this.costYuanbao) : this.talent));
    } else {
        // source line 181, bytecode pc 141
        (this.maxNum = this.getMaxPracticeNum(this.costGanoderma, this.costYuanbao));
    }
    // source line 182, bytecode pc 145
    switch (sender) {
        case this.add1Btn:
        if ((this.buyNum < this.maxNum)) {
            // source line 185, bytecode pc 238
            (this.buyNum = (this.buyNum + 1));
        }
        break;
        case this.decrease1Btn:
        if ((this.buyNum > this.minNum)) {
            // source line 190, bytecode pc 276
            (this.buyNum = (this.buyNum - 1));
        }
        break;
        case this.add10Btn:
        // source line 194, bytecode pc 335
        (((this.buyNum + 10) < this.maxNum) ? (this.buyNum = (this.buyNum + 10)) : (this.buyNum = this.maxNum));
        break;
        case this.decrease10Btn:
        // source line 199, bytecode pc 394
        (((this.buyNum - 10) > this.minNum) ? (this.buyNum = (this.buyNum - 10)) : (this.buyNum = this.minNum));
        break;
        case this.maxBtn:
        // source line 204, bytecode pc 412
        (this.buyNum = this.maxNum);
        break;
        default:
        break;
    }
    // source line 208, bytecode pc 437
    this.setPracticeNum(this.buyNum);
    // source line 209, bytecode pc 457
    this.setGanodermaInfo(this.buyNum);
    // source line 210, bytecode pc 477
    this.setYuanBaoInfo(this.buyNum);
},
    onBtnClicked: function(sender) {
    var i, dialog;
    // source line 215, bytecode pc 3
    switch (sender) {
        case this.m_choose_1:
        // source line 217, bytecode pc 188
        this.setChooseVisible(1);
        break;
        case this.m_choose_2:
        // source line 220, bytecode pc 209
        this.setChooseVisible(2);
        break;
        case this.m_choose_3:
        // source line 223, bytecode pc 230
        this.setChooseVisible(3);
        break;
        case this.m_choose_4:
        // source line 226, bytecode pc 251
        this.setChooseVisible(4);
        break;
        case this.m_choose_5:
        // source line 229, bytecode pc 272
        this.setChooseVisible(5);
        break;
        case this.m_choose_6:
        // source line 232, bytecode pc 293
        this.setChooseVisible(6);
        break;
        case this.m_choose_7:
        // source line 235, bytecode pc 314
        this.setChooseVisible(7);
        break;
        case this.m_choose_8:
        // source line 238, bytecode pc 335
        this.setChooseVisible(8);
        break;
        case this.m_choose_9:
        // source line 241, bytecode pc 356
        this.setChooseVisible(9);
        break;
        case this.m_choose_10:
        // source line 244, bytecode pc 377
        this.setChooseVisible(10);
        break;
        case this.m_choose_11:
        // source line 247, bytecode pc 398
        this.setChooseVisible(11);
        break;
        case this.m_choose_12:
        // source line 250, bytecode pc 419
        this.setChooseVisible(12);
        break;
        case this.m_choose_13:
        // source line 253, bytecode pc 440
        this.setChooseVisible(13);
        break;
        case this.m_confirmBtn:
        // source line 256, bytecode pc 453
        (this.canClick = false);
        for (var i in this.getAllChooseStatus()) {
            if (!((this.getAllChooseStatus()[i] == true))) continue;
            // source line 260, bytecode pc 509
            (this.canClick = true);
            break;
        }
        if (this.canClick) {
            if ((this.buyNum > 0)) {
                if (this.getChooseTagById(13)) {
                    // source line 267, bytecode pc 579
                    this._requestAutoPractice();
                } else {
                    // source line 269, bytecode pc 611
                    xs.Views.Mgr.hideDialog();
                    // source line 280, bytecode pc 781
                    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 276, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 279, bytecode pc 12
    this._requestAutoPractice();
}.bind(this)
}));
                    // source line 281, bytecode pc 799
                    (dialog = dialog.getRealDialog());
                    // source line 282, bytecode pc 847
                    dialog.setContentText(xs.Tools.String.createString("AutoPractice_str_toast_1"));
                    // source line 283, bytecode pc 895
                    dialog.setTitleByString(xs.Tools.String.createString("auto_name_223"));
                }
            } else {
                // source line 286, bytecode pc 960
                xs.Views.Mgr.showToast(xs.Tools.String.createString("AutoPractice_str_toast_num"));
            }
        } else {
            // source line 290, bytecode pc 1025
            xs.Views.Mgr.showToast(xs.Tools.String.createString("AutoPractice_str_toast"));
        }
        break;
        case this.m_closeBtn:
        // source line 294, bytecode pc 1057
        xs.Views.Mgr.hideDialog();
        break;
        default:
        break;
    }
},
    _requestAutoPractice: function() {
    var yuanbao, ganoderma;
    // source line 299, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 300, bytecode pc 94
    (yuanbao = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
    // source line 301, bytecode pc 151
    (ganoderma = xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum());
    // source line 324, bytecode pc 355
    xs.Tools.Net.requestAutoPractice({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_general_id: this.pkid,
    is_gain: this.isGain,
    is_multi: this.isMulti,
    cultivate_num: this.buyNum,
    is_need_talent: (this.getChooseTagById(13) ? 1 : 0),
    cultivate_rule: this.getAllChooseStatus()
}, function(data) {
    // source line 318, bytecode pc 91
    xs.Views.Mgr.showDialogByName("AutoPracticeResultDialog", { yuanbao: yuanbao, ganoderma: ganoderma, pkId: this.pkid, cultivate_info: data.attr_info });
}, function(data) {
}, this);
},
    setBaseTouchPriority: function(priority) {
    // source line 328, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 329, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 331, bytecode pc 56
    this.add1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 332, bytecode pc 83
    this.decrease1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 333, bytecode pc 110
    this.add10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 334, bytecode pc 137
    this.decrease10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 335, bytecode pc 164
    this.maxBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 337, bytecode pc 191
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 338, bytecode pc 218
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 340, bytecode pc 245
    this.m_choose_1.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 341, bytecode pc 272
    this.m_choose_2.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 342, bytecode pc 299
    this.m_choose_3.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 343, bytecode pc 326
    this.m_choose_4.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 344, bytecode pc 353
    this.m_choose_5.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 345, bytecode pc 380
    this.m_choose_6.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 346, bytecode pc 407
    this.m_choose_7.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 347, bytecode pc 434
    this.m_choose_8.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 348, bytecode pc 461
    this.m_choose_9.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 349, bytecode pc 488
    this.m_choose_10.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 350, bytecode pc 515
    this.m_choose_11.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 351, bytecode pc 542
    this.m_choose_12.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 352, bytecode pc 569
    this.m_choose_13.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 381, bytecode pc 1290
(xs.Views.Dialog.AutoPracticeDialog.cfg = {
    ccbCfg: [
        { tag: 100, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
        { tag: 999, type: "btn", name: "m_confirmBtn", id: "Btn_StartPractice" },
        { tag: 101, type: "ls", name: "m_title", id: "LS_popUI1" },
        { tag: 102, type: "ls", stringId: "AutoPractice_str_stop", id: "LS_popUI2" },
        { tag: 103, type: "ls", stringId: "AutoPractice_str_count", id: "LS_popUI2" },
        { tag: 104, type: "ls", stringId: "AutoPractice_str_used", id: "LS_popUI2" },
        { tag: 105, type: "ls", name: "m_totalGanodermaLabel", id: "LS_liebiaoInf2" },
        { tag: 106, type: "ls", name: "m_totalPriceLabel", id: "LS_liebiaoInf2" },
        { tag: 203, type: "ls", name: "m_countNumLabel", id: "LS_popUI4" },
        { tag: 1, type: "bs", name: "m_choose_1", id: "BS_ChooseBtn" },
        { tag: 2, type: "bs", name: "m_choose_2", id: "BS_ChooseBtn" },
        { tag: 3, type: "bs", name: "m_choose_3", id: "BS_ChooseBtn" },
        { tag: 4, type: "bs", name: "m_choose_4", id: "BS_ChooseBtn" },
        { tag: 5, type: "bs", name: "m_choose_5", id: "BS_ChooseBtn" },
        { tag: 6, type: "bs", name: "m_choose_6", id: "BS_ChooseBtn" },
        { tag: 7, type: "bs", name: "m_choose_7", id: "BS_ChooseBtn" },
        { tag: 8, type: "bs", name: "m_choose_8", id: "BS_ChooseBtn" },
        { tag: 9, type: "bs", name: "m_choose_9", id: "BS_ChooseBtn" },
        { tag: 10, type: "bs", name: "m_choose_10", id: "BS_ChooseBtn" },
        { tag: 11, type: "bs", name: "m_choose_11", id: "BS_ChooseBtn" },
        { tag: 12, type: "bs", name: "m_choose_12", id: "BS_ChooseBtn" },
        { tag: 13, type: "bs", name: "m_choose_13", id: "BS_ChooseBtn" }
    ]
});
// source line 385, bytecode pc 1321
(xs.Views.Dialog.AutoPracticeDialog.create = function(params) {
    var layer;
    // source line 386, bytecode pc 28
    (layer = new xs.Views.Dialog.AutoPracticeDialog());
    if ((layer && layer.init(params))) {
        // source line 388, bytecode pc 64
        return layer;
    }
    // source line 390, bytecode pc 66
    return null;
});
// source line 394, bytecode pc 1401
xs.Views.Mgr.registerDialog("AutoPracticeDialog", { "class": xs.Views.Dialog.AutoPracticeDialog, styleType: xs.Constant_DlgStyleType_Small });
