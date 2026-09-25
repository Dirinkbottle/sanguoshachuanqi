// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HulaoBattle/LightenLuckDialog.js:1
// source line 131, bytecode pc 519
(xs.Views.LightenLuckDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.LightenLuckDialog",
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title", stringId: "LightenLuck01" },
        { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 3, type: "ls", name: "m_nowLuck", id: "LS_wujiangInf2", stringId: "LightenLuck02" },
        { tag: 4, type: "ls", name: "m_luckNum", id: "LS_wujiangInf2" },
        { tag: 5, type: "ls", name: "m_LuckIntro", id: "LS_fightUI2", stringId: "LightenLuck03" },
        { tag: 6, type: "btn", name: "m_sure", id: "Btn_btn1", stringId: "auto_name_76" }
    ],
    init: function(param) {
    var key;
    if (!this._super()) {
        // source line 25, bytecode pc 19
        return false;
    }
    // source line 27, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 28, bytecode pc 35
    (this.btnClose = null);
    // source line 29, bytecode pc 43
    (this.m_sure = null);
    // source line 30, bytecode pc 51
    (this.m_tableView = null);
    // source line 31, bytecode pc 59
    (this.m_luckNum = null);
    // source line 32, bytecode pc 67
    (this.m_LuckIntro = null);
    // source line 34, bytecode pc 82
    (this.m_generalList = param.generalsList);
    // source line 35, bytecode pc 97
    (this.m_total_fortune = param.total_fortune);
    // source line 36, bytecode pc 112
    (this.m_consume_fortune = param.consume_fortune);
    // source line 38, bytecode pc 127
    (this.m_record_fortune = param.total_fortune);
    for (var key in this.m_generalList) {
        if (!(this.m_generalList.hasOwnProperty(key))) continue;
        if (!((this.m_generalList[key].general_data.fortune == 1))) continue;
        // source line 43, bytecode pc 249
        (this.m_record_fortune = (Number(this.m_record_fortune) - Number(this.m_consume_fortune)));
    }
    // source line 49, bytecode pc 308
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.LightenLuckDialog, this));
    // source line 50, bytecode pc 351
    this.m_ccbNode.setContentSize(cc.size(600, 620));
    // source line 51, bytecode pc 398
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 54, bytecode pc 457
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true });
    // source line 57, bytecode pc 500
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 60, bytecode pc 538
    this.btnClose.setOnClickCallBack(this.closeCallBack.bind(this));
    // source line 63, bytecode pc 576
    this.m_sure.setOnClickCallBack(this.sureCallBack.bind(this));
    // source line 65, bytecode pc 601
    this.m_luckNum.setString(this.m_record_fortune);
    // source line 66, bytecode pc 660
    this.m_LuckIntro.setPositionX((this.m_luckNum.getPositionX() + this.m_luckNum.getContentSize().width));
    // source line 69, bytecode pc 711
    this.m_LuckIntro.setString(xs.Tools.String.createString("LightenLuck03"));
    // source line 73, bytecode pc 766
    (this.m_tableView = cc.TableView.create(this, cc.size(560, 416)));
    // source line 74, bytecode pc 795
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 75, bytecode pc 815
    this.m_tableView.setDelegate(this);
    // source line 76, bytecode pc 844
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 77, bytecode pc 929
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_tableView, { desc: "lb", offset: cc.p(12, 86) });
    // source line 78, bytecode pc 947
    this.m_tableView.reloadData();
    // source line 81, bytecode pc 949
    return true;
},
    onEnter: function() {
    // source line 84, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 88, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 91, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 92, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 93, bytecode pc 57
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 94, bytecode pc 85
    this.m_sure.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 95, bytecode pc 113
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 2));
},
    closeCallBack: function() {
    // source line 98, bytecode pc 44
    xs.Utils.Notify.postNotification(xs.Constant_Notify_GarrisonLayout_lighten_refresh, this.m_generalList);
    // source line 99, bytecode pc 71
    xs.Views.Mgr.hideDialog();
},
    sureCallBack: function() {
    // source line 102, bytecode pc 44
    xs.Utils.Notify.postNotification(xs.Constant_Notify_GarrisonLayout_lighten_refresh, this.m_generalList);
    // source line 103, bytecode pc 71
    xs.Views.Mgr.hideDialog();
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 109, bytecode pc 23
    return cc.size(560, 114);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 112, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 114, bytecode pc 56
        (cell = xs.Views.LightenLuckCell.create());
    }
    // source line 116, bytecode pc 77
    cell.update(this, idx);
    // source line 117, bytecode pc 81
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_generalList) {
        // source line 123, bytecode pc 22
        return this.m_generalList.length;
    }
    // source line 125, bytecode pc 24
    return 0;
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
}
}));
// source line 135, bytecode pc 545
(xs.Views.LightenLuckDialog.create = function(param) {
    var ret;
    // source line 136, bytecode pc 23
    (ret = new xs.Views.LightenLuckDialog());
    if ((ret && ret.init(param))) {
        // source line 138, bytecode pc 59
        return ret;
    }
    // source line 140, bytecode pc 84
    xs.assert(false, "xs.Views.LightenLuckDialog.create err");
    // source line 141, bytecode pc 86
    return null;
});
// source line 145, bytecode pc 620
xs.Views.Mgr.registerDialog("LightenLuckDialog", { "class": xs.Views.LightenLuckDialog, styleType: xs.Constant_ViewType_Dlg });
// source line 287, bytecode pc 895
(xs.Views.LightenLuckCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_GeneralName", tag: 3, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_FightPower", tag: 4, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_button", tag: 5, type: "btn", id: "Btn_lighten" }
    ],
    draw: function(ctx) {
    // source line 159, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 162, bytecode pc 12
    this._super();
    // source line 163, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 167, bytecode pc 19
        return false;
    }
    // source line 170, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 171, bytecode pc 35
    (this.m_GeneralName = null);
    // source line 172, bytecode pc 43
    (this.m_FightPower = null);
    // source line 173, bytecode pc 51
    (this.m_quenchPic = null);
    // source line 174, bytecode pc 59
    (this.m_button = null);
    // source line 176, bytecode pc 67
    (this.m_generalPic = null);
    // source line 179, bytecode pc 75
    (this.m_data = null);
    // source line 180, bytecode pc 83
    (this.m_idx = null);
    // source line 183, bytecode pc 134
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.LightenLuckCell, this));
    // source line 185, bytecode pc 213
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", offset: cc.p(20, 0) });
    // source line 186, bytecode pc 256
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 189, bytecode pc 294
    (this.m_quenchPic = xs.Utils.getChildByTag(this.m_ccbNode, 6));
    // source line 192, bytecode pc 331
    (this.m_generalPic = xs.Utils.getChildByTag(this.m_ccbNode, 1));
    // source line 195, bytecode pc 369
    (this.m_gradeIcon = xs.Utils.getChildByTag(this.m_ccbNode, 2));
    // source line 199, bytecode pc 371
    return true;
},
    update: function(par, num) {
    var generalStr, generalFightStr, generalLevel, model, _icon, gradeIcon, lightIcon, btn;
    // source line 203, bytecode pc 9
    (this.m_data = par);
    // source line 204, bytecode pc 19
    (this.m_idx = num);
    // source line 207, bytecode pc 59
    (generalStr = this.m_data.m_generalList[num].general_data.general_id.toString());
    // source line 208, bytecode pc 99
    (generalFightStr = this.m_data.m_generalList[num].general_data.fighting.toString());
    // source line 209, bytecode pc 128
    (generalLevel = this.m_data.m_generalList[num].general_data.general_level);
    // source line 211, bytecode pc 162
    (model = xs.Models.General.createWithBase(generalStr));
    // source line 212, bytecode pc 181
    model.setLevel(generalLevel);
    // source line 213, bytecode pc 199
    (_icon = model.createIcon_GradeAndLv());
    // source line 214, bytecode pc 244
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_generalPic, _icon);
    // source line 215, bytecode pc 254
    (this.m_generalPic = _icon);
    if (model.getNameString()) {
        // source line 220, bytecode pc 306
        this.m_GeneralName.setString(model.getNameString());
    } else {
        // source line 222, bytecode pc 335
        this.m_GeneralName.setString("");
    }
    // source line 226, bytecode pc 368
    this.m_FightPower.setString((generalFightStr || "0"));
    // source line 229, bytecode pc 386
    (gradeIcon = model.createGradeSmallIcon());
    // source line 230, bytecode pc 419
    gradeIcon.setPosition(this.m_gradeIcon.getPosition());
    // source line 231, bytecode pc 457
    xs.Utils.Node.attachNodes(this.m_ccbNode, gradeIcon);
    // source line 232, bytecode pc 491
    xs.Utils.Node.safeRemoveChild(this.m_gradeIcon);
    // source line 233, bytecode pc 501
    (this.m_gradeIcon = gradeIcon);
    if ((this.m_data.m_generalList[num].general_data.fortune == 1)) {
        // source line 237, bytecode pc 575
        (lightIcon = xs.Factorys.Sprite.create("HuLaoBattle_icon_yunshida", "HuLaoBattleScene"));
        // source line 239, bytecode pc 609
        (btn = xs.Views.Btn.createInvisibleWithChild(lightIcon));
        if (this.m_baseTouchPriority) {
            // source line 242, bytecode pc 644
            btn.setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 244, bytecode pc 679
        btn.setOnClickCallBack(this.lightenButtonCallBack.bind(this));
        // source line 245, bytecode pc 724
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_quenchPic, btn);
        // source line 246, bytecode pc 734
        (this.m_quenchPic = btn);
    } else {
        // source line 249, bytecode pc 781
        (lightIcon = xs.Factorys.Sprite.create("HuLaoBattle_icon_yunshida_hui", "HuLaoBattleScene"));
        // source line 251, bytecode pc 815
        (btn = xs.Views.Btn.createInvisibleWithChild(lightIcon));
        if (this.m_baseTouchPriority) {
            // source line 254, bytecode pc 850
            btn.setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 256, bytecode pc 885
        btn.setOnClickCallBack(this.lightenButtonCallBack.bind(this));
        // source line 257, bytecode pc 930
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_quenchPic, btn);
        // source line 258, bytecode pc 940
        (this.m_quenchPic = btn);
    }
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 265, bytecode pc 12
    this._super();
    // source line 266, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 269, bytecode pc 63
            (this.m_parentView = parent);
            // source line 270, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 271, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 276, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 281, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 284, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 285, bytecode pc 36
    this.m_quenchPic.setTouchPriority((this.m_baseTouchPriority - 1));
},
    lightenButtonCallBack: function() {
    var fortuneNum, lightIcon, btn;
    if ((this.m_data.m_generalList[this.m_idx].general_data.fortune == 0)) {
        // source line 291, bytecode pc 91
        (fortuneNum = (Number(this.m_data.m_record_fortune) - Number(this.m_data.m_consume_fortune)));
        if ((fortuneNum < 0)) {
            // source line 294, bytecode pc 161
            xs.Views.Mgr.showToast(xs.Tools.String.createString("LightenLuck04"));
            // source line 295, bytecode pc 163
            return void 0;
        }
    }
    if ((this.m_data.m_generalList[this.m_idx].general_data.fortune == 1)) {
        // source line 304, bytecode pc 228
        (this.m_data.m_generalList[this.m_idx].general_data.fortune = 0);
        // source line 306, bytecode pc 293
        (this.m_data.m_record_fortune = (Number(this.m_data.m_record_fortune) + Number(this.m_data.m_consume_fortune)));
        // source line 308, bytecode pc 335
        (lightIcon = xs.Factorys.Sprite.create("HuLaoBattle_icon_yunshida_hui", "HuLaoBattleScene"));
        // source line 310, bytecode pc 369
        (btn = xs.Views.Btn.createInvisibleWithChild(lightIcon));
        if (this.m_baseTouchPriority) {
            // source line 313, bytecode pc 404
            btn.setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 315, bytecode pc 439
        btn.setOnClickCallBack(this.lightenButtonCallBack.bind(this));
        // source line 316, bytecode pc 484
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_quenchPic, btn);
        // source line 317, bytecode pc 494
        (this.m_quenchPic = btn);
    } else {
        // source line 322, bytecode pc 529
        (this.m_data.m_generalList[this.m_idx].general_data.fortune = 1);
        // source line 324, bytecode pc 594
        (this.m_data.m_record_fortune = (Number(this.m_data.m_record_fortune) - Number(this.m_data.m_consume_fortune)));
        // source line 326, bytecode pc 636
        (lightIcon = xs.Factorys.Sprite.create("HuLaoBattle_icon_yunshida", "HuLaoBattleScene"));
        // source line 328, bytecode pc 670
        (btn = xs.Views.Btn.createInvisibleWithChild(lightIcon));
        if (this.m_baseTouchPriority) {
            // source line 331, bytecode pc 705
            btn.setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 333, bytecode pc 740
        btn.setOnClickCallBack(this.lightenButtonCallBack.bind(this));
        // source line 334, bytecode pc 785
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_quenchPic, btn);
        // source line 335, bytecode pc 795
        (this.m_quenchPic = btn);
    }
    // source line 338, bytecode pc 830
    this.m_data.m_luckNum.setString(this.m_data.m_record_fortune);
    // source line 339, bytecode pc 904
    this.m_data.m_LuckIntro.setPositionX((this.m_data.m_luckNum.getPositionX() + this.m_data.m_luckNum.getContentSize().width));
}
}));
// source line 344, bytecode pc 921
(xs.Views.LightenLuckCell.create = function() {
    var cell;
    // source line 345, bytecode pc 23
    (cell = new xs.Views.LightenLuckCell());
    if ((cell && cell.init())) {
        // source line 347, bytecode pc 55
        return cell;
    }
    // source line 349, bytecode pc 57
    return null;
});
