// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AwakeInfoDialog.js:1
// source line 231, bytecode pc 678
(xs.Views.Dialog.AwakeInfoDialog = xs.Views.Dialog.CommonDialog.extend({
    name: "AwakeInfoDialog",
    ccbCfg: [
        { tag: 105, type: "ls", name: "txt_hp", id: "LS_mainUI4" },
        { tag: 106, type: "ls", name: "txt_atk", id: "LS_mainUI4" },
        { tag: 107, type: "ls", name: "txt_def", id: "LS_mainUI4" },
        { tag: 108, type: "ls", name: "txt_int", id: "LS_mainUI4" },
        { tag: 109, type: "btn", name: "m_btnClose", id: "Btn_Close" },
        { tag: 100, type: "btn", name: "m_btnBiaoQian1", id: "Btn_QueueTeamTablePage" },
        { tag: 101, type: "btn", name: "m_btnBiaoQian2", id: "Btn_QueueTeamTablePage" },
        { tag: 102, type: "btn", name: "m_btnBiaoQian3", id: "Btn_QueueTeamTablePage" },
        { tag: 103, type: "btn", name: "m_btnBiaoQian4", id: "Btn_QueueTeamTablePage" },
        { tag: 104, type: "btn", name: "m_btnBiaoQian5", id: "Btn_QueueTeamTablePage" }
    ],
    loadCCBI: function() {
    var _visibleSize, _ccbNodeSize;
    // source line 39, bytecode pc 24
    (_visibleSize = xs.director.getVisibleSize());
    // source line 41, bytecode pc 75
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AwakeInfoDialog, this));
    // source line 42, bytecode pc 96
    (_ccbNodeSize = this._ccbNode.getContentSize());
    // source line 43, bytecode pc 128
    xs.log_ck(("_ccbNodeSize.width" + _ccbNodeSize.width));
    // source line 44, bytecode pc 160
    xs.log_ck(("_ccbNodeSize.height" + _ccbNodeSize.height));
    // source line 50, bytecode pc 280
    xs.Utils.Node.attachNodes(this, this._ccbNode, {
    desc: "lb",
    sc: true,
    offset: {
        x: ((_visibleSize.width - _ccbNodeSize.width) / 2),
        y: ((_visibleSize.height - _ccbNodeSize.height) / 2)
    }
});
    // source line 54, bytecode pc 288
    (this.m_btnClose = null);
    // source line 56, bytecode pc 331
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 57, bytecode pc 369
    this.m_btnClose.setOnClickCallBack(this.onClose.bind(this));
    // source line 59, bytecode pc 382
    this.initChangeButton();
    // source line 61, bytecode pc 459
    this.m_btnBiaoQian1.setString(xs.Tools.String.createString("evolution_main_level").convWithArgs([ "一" ]));
    // source line 64, bytecode pc 536
    this.m_btnBiaoQian2.setString(xs.Tools.String.createString("evolution_main_level").convWithArgs([ "二" ]));
    // source line 66, bytecode pc 613
    this.m_btnBiaoQian3.setString(xs.Tools.String.createString("evolution_main_level").convWithArgs([ "三" ]));
    // source line 68, bytecode pc 690
    this.m_btnBiaoQian4.setString(xs.Tools.String.createString("evolution_main_level").convWithArgs([ "四" ]));
    // source line 70, bytecode pc 767
    this.m_btnBiaoQian5.setString(xs.Tools.String.createString("evolution_main_level").convWithArgs([ "五" ]));
    // source line 72, bytecode pc 822
    (this.m_tableView = cc.TableView.create(this, cc.size(450, 350)));
    // source line 73, bytecode pc 851
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 74, bytecode pc 892
    this.m_tableView.setPosition(cc.p(65, 30));
    // source line 75, bytecode pc 912
    this.m_tableView.setDelegate(this);
    // source line 76, bytecode pc 941
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 77, bytecode pc 966
    this._ccbNode.addChild(this.m_tableView);
    // source line 78, bytecode pc 984
    this.m_tableView.reloadData();
    // source line 80, bytecode pc 992
    (this._allData = null);
},
    showDialog: function(params) {
    // source line 87, bytecode pc 22
    xs.log("showDialog evolutionInfo");
    // source line 92, bytecode pc 46
    this.txt_hp.setString("0");
    // source line 93, bytecode pc 70
    this.txt_atk.setString("0");
    // source line 94, bytecode pc 94
    this.txt_def.setString("0");
    // source line 95, bytecode pc 118
    this.txt_int.setString("0");
    // source line 98, bytecode pc 138
    (this.evolution_level = params.evolutionInfo.evolution_level);
    // source line 101, bytecode pc 158
    (this.sub_level = params.evolutionInfo.sub_level);
    // source line 102, bytecode pc 173
    (this.evolutionInfo = params.evolutionInfo);
    // source line 104, bytecode pc 195
    (this.isPreview = (params.isPreview || false));
    if (params.isPreview) {
        // source line 107, bytecode pc 216
        (this.evolution_level = 1);
        // source line 108, bytecode pc 225
        (this.sub_level = 7);
        // source line 109, bytecode pc 240
        this.onSwitchPage(0);
    } else {
        if ((this.evolution_level == 0)) {
            // source line 115, bytecode pc 273
            this.onSwitchPage(0);
        } else {
            // source line 117, bytecode pc 300
            this.onSwitchPage((this.evolution_level - 1));
        }
    }
},
    onEnter: function() {
},
    onExit: function() {
},
    onClose: function() {
    // source line 127, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    // source line 129, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 130, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 131, bytecode pc 56
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 132, bytecode pc 83
    this.m_btnBiaoQian1.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 133, bytecode pc 110
    this.m_btnBiaoQian2.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 134, bytecode pc 137
    this.m_btnBiaoQian3.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 135, bytecode pc 164
    this.m_btnBiaoQian4.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 136, bytecode pc 191
    this.m_btnBiaoQian5.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 137, bytecode pc 218
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    initChangeButton: function() {
    var i;
    // source line 141, bytecode pc 11
    (this.m_biaoQianBtns = []);
    // source line 142, bytecode pc 36
    this.m_biaoQianBtns.push(this.m_btnBiaoQian1);
    // source line 143, bytecode pc 61
    this.m_biaoQianBtns.push(this.m_btnBiaoQian2);
    // source line 144, bytecode pc 86
    this.m_biaoQianBtns.push(this.m_btnBiaoQian3);
    // source line 145, bytecode pc 111
    this.m_biaoQianBtns.push(this.m_btnBiaoQian4);
    // source line 146, bytecode pc 136
    this.m_biaoQianBtns.push(this.m_btnBiaoQian5);
    // source line 148, bytecode pc 141
    (i = 0);
    while ((i < this.m_biaoQianBtns.length)) {
        // source line 150, bytecode pc 210
        this.m_biaoQianBtns[i].addCallBackForEvent(this, this.selectButtonCallBack.bind({ self: this, tag: i }));
        // source line 148, bytecode pc 224
        (i = (+i + 1));
    }
},
    selectButtonCallBack: function() {
    var self, index;
    // source line 156, bytecode pc 9
    (self = this.self);
    // source line 157, bytecode pc 19
    (index = this.tag);
    if ((this.isPreview || ((index > self.evolution_level) || ((index == self.evolution_level) && (self.sub_level != 7))))) {
        // source line 162, bytecode pc 143
        xs.Views.Mgr.showToast(xs.Tools.String.createString("evolution_level_unread"));
    } else {
        // source line 165, bytecode pc 167
        self.onSwitchPage(index);
    }
},
    onSwitchPage: function(index) {
    var i;
    // source line 170, bytecode pc 4
    (i = 0);
    while ((i < this.m_biaoQianBtns.length)) {
        if ((i == index)) {
            // source line 174, bytecode pc 46
            this.m_biaoQianBtns[i].setSelected(true);
        } else {
            // source line 178, bytecode pc 75
            this.m_biaoQianBtns[i].setSelected(false);
        }
        // source line 170, bytecode pc 89
        (i = (+i + 1));
    }
    // source line 182, bytecode pc 128
    this.onShowPage(index);
},
    onShowPage: function(index) {
    var selectLevel, param;
    if (((this.selectedIndex == null) || (this.selectedIndex != index))) {
        // source line 189, bytecode pc 38
        (this.selectedIndex = index);
        // source line 190, bytecode pc 47
        (selectLevel = (index + 1));
        // source line 191, bytecode pc 52
        (param = 0);
        if ((this.evolution_level == selectLevel)) {
            // source line 193, bytecode pc 77
            (param = this.sub_level);
        } else {
            if ((this.evolution_level < selectLevel)) {
                // source line 195, bytecode pc 102
                (param = 0);
            } else {
                // source line 197, bytecode pc 113
                (param = 7);
            }
        }
        // source line 198, bytecode pc 145
        (this._configView = this.evolutionInfo.getBuffConfsView(selectLevel, param));
        if ((this._configView != null)) {
            // source line 201, bytecode pc 176
            (this._allData = this._configView.viewData);
            // source line 203, bytecode pc 206
            this.txt_hp.setString(this._configView.hp);
            // source line 204, bytecode pc 236
            this.txt_atk.setString(this._configView.atk);
            // source line 205, bytecode pc 266
            this.txt_def.setString(this._configView.def);
            // source line 206, bytecode pc 296
            this.txt_int.setString(this._configView.int);
        }
        // source line 211, bytecode pc 314
        this.m_tableView.reloadData();
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 215, bytecode pc 22
    xs.log_ck("tableCellSizeForIndex");
    // source line 216, bytecode pc 46
    return cc.size(460, 40);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 221, bytecode pc 22
    xs.log_ck("tableCellAtIndex");
    // source line 222, bytecode pc 40
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 224, bytecode pc 79
        (cell = xs.Views.AwakeTableCell.create());
    }
    // source line 227, bytecode pc 105
    cell.update(this._allData[idx]);
    // source line 229, bytecode pc 109
    return cell;
},
    numberOfCellsInTableView: function(table) {
    var length;
    // source line 233, bytecode pc 22
    xs.log_ck("numberOfCellsInTableView");
    // source line 234, bytecode pc 27
    (length = 0);
    if ((this._allData != null)) {
        // source line 236, bytecode pc 55
        (length = this._allData.length);
    }
    // source line 237, bytecode pc 59
    return length;
}
}));
// source line 241, bytecode pc 709
(xs.Views.Dialog.AwakeInfoDialog.create = function(evolutionInfo) {
    var obj;
    // source line 243, bytecode pc 28
    (obj = new xs.Views.Dialog.AwakeInfoDialog());
    if ((obj && obj.init())) {
        // source line 245, bytecode pc 75
        obj.showDialog(evolutionInfo);
        // source line 247, bytecode pc 79
        return obj;
    }
    // source line 249, bytecode pc 127
    xs.error((((" xs.Views.Dialog.AwakeInfoDialog.create error, " + obj) + ",") + obj.init()));
    // source line 250, bytecode pc 129
    return null;
});
// source line 256, bytecode pc 789
xs.Views.Mgr.registerDialog("AwakeInfoDialog", { "class": xs.Views.Dialog.AwakeInfoDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 297, bytecode pc 893
(xs.Views.AwakeTableCell = cc.TableViewCell.extend({
    ctor: function() {
    // source line 262, bytecode pc 12
    this._super();
    // source line 263, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    var centerY;
    if (!this._super()) {
        // source line 267, bytecode pc 19
        return false;
    }
    // source line 269, bytecode pc 25
    (centerY = 20);
    // source line 270, bytecode pc 62
    this.setContentSize(cc.size(460, 40));
    // source line 271, bytecode pc 100
    this.setAnchorPoint(cc.p(0, 0.5));
    // source line 273, bytecode pc 145
    (this.m_LightPointPic = xs.Factorys.Sprite.create("liangdian", "Cmn01"));
    // source line 274, bytecode pc 192
    this.m_LightPointPic.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 275, bytecode pc 234
    this.m_LightPointPic.setPosition(cc.p(20, centerY));
    // source line 276, bytecode pc 258
    this.m_LightPointPic.setScale(0.7);
    // source line 277, bytecode pc 278
    this.addChild(this.m_LightPointPic);
    // source line 279, bytecode pc 323
    (this.m_DarkPointPic = xs.Factorys.Sprite.create("andian", "Cmn01"));
    // source line 280, bytecode pc 365
    this.m_DarkPointPic.setPosition(cc.p(20, centerY));
    // source line 281, bytecode pc 412
    this.m_DarkPointPic.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 282, bytecode pc 436
    this.m_DarkPointPic.setScale(0.7);
    // source line 283, bytecode pc 456
    this.addChild(this.m_DarkPointPic);
    // source line 285, bytecode pc 458
    return true;
},
    onEnter: function() {
    // source line 289, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 292, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 295, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    update: function(param) {
    var enable, i, offx, centerY, item, itemView;
    // source line 298, bytecode pc 4
    (enable = false);
    if ((param != null)) {
        // source line 301, bytecode pc 26
        (enable = param.enable);
    }
    // source line 304, bytecode pc 49
    this.m_DarkPointPic.setVisible(!enable);
    // source line 305, bytecode pc 71
    this.m_LightPointPic.setVisible(enable);
    if (((this._childNodes != null) && (this._childNodes.length > 0))) {
        // source line 309, bytecode pc 108
        (i = 0);
        while ((i < this._childNodes.length)) {
            // source line 311, bytecode pc 140
            this.removeChild(this._childNodes[i], true);
            // source line 309, bytecode pc 154
            (i = (+i + 1));
        }
    }
    // source line 315, bytecode pc 184
    (this._childNodes = null);
    if (((param != null) && ((param.array != null) && (param.array.length > 0)))) {
        // source line 319, bytecode pc 237
        (offx = 40);
        // source line 320, bytecode pc 243
        (centerY = 20);
        // source line 321, bytecode pc 255
        (this._childNodes = []);
        // source line 322, bytecode pc 260
        (i = 0);
        while ((i < param.array.length)) {
            // source line 324, bytecode pc 282
            (item = param.array[i]);
            // source line 325, bytecode pc 287
            (itemView = null);
            if (((item >= 10) && (item < 20))) {
                // source line 328, bytecode pc 320
                (item = (item % 10));
                // source line 329, bytecode pc 376
                (itemView = xs.Factorys.Sprite.create(param.png[item], param.plist[item]));
                // source line 330, bytecode pc 416
                itemView.setPosition(cc.p(offx, centerY));
                // source line 331, bytecode pc 456
                itemView.setAnchorPoint(cc.p(0, 0.5));
                // source line 332, bytecode pc 473
                this.addChild(itemView);
                // source line 333, bytecode pc 500
                (offx = (offx + itemView.getContentSize().width));
            } else {
                if (((item >= 0) && (item < 10))) {
                    // source line 338, bytecode pc 570
                    (itemView = xs.Factorys.Label.createByStyleId(param.txtType[item]));
                    // source line 339, bytecode pc 610
                    itemView.setAnchorPoint(cc.p(0, 0.5));
                    // source line 340, bytecode pc 650
                    itemView.setPosition(cc.p(offx, centerY));
                    // source line 341, bytecode pc 678
                    itemView.setString(param.txt[item]);
                    // source line 342, bytecode pc 695
                    this.addChild(itemView);
                    // source line 343, bytecode pc 722
                    (offx = (offx + itemView.getContentSize().width));
                }
            }
            if ((itemView != null)) {
                // source line 347, bytecode pc 754
                this._childNodes.push(itemView);
            }
            // source line 322, bytecode pc 768
            (i = (+i + 1));
        }
    }
}
}));
// source line 358, bytecode pc 919
(xs.Views.AwakeTableCell.create = function() {
    var cell;
    // source line 359, bytecode pc 23
    (cell = new xs.Views.AwakeTableCell());
    if ((cell && cell.init())) {
        // source line 361, bytecode pc 55
        return cell;
    }
    // source line 363, bytecode pc 57
    return null;
});
