// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ClimbLadderArtifactStorey.js:1
// source line 132, bytecode pc 203
(xs.Views.ClimbLadderArtifactStorey = cc.Layer.extend({
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleOrigin, visibleSize;
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 23, bytecode pc 35
    (this.m_listener = null);
    // source line 24, bytecode pc 43
    (this.m_tableView = null);
    // source line 25, bytecode pc 55
    (this.m_dataSource = []);
    // source line 26, bytecode pc 63
    (this.m_soulCCBNode = null);
    // source line 27, bytecode pc 71
    (this.m_goldSoulNumLab = null);
    // source line 28, bytecode pc 79
    (this.m_silverSoulNumLab = null);
    // source line 30, bytecode pc 110
    xs.Tools.UI.addContentBg(this, true);
    // source line 32, bytecode pc 135
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 33, bytecode pc 160
    (visibleSize = xs.director.getVisibleSize());
    // source line 35, bytecode pc 211
    (this.m_soulCCBNode = xs.ccb_reader.load(xs.Cfg.CCBI.ArtifactStoreySoulNode, this));
    // source line 41, bytecode pc 298
    xs.Utils.Node.attachNodes(this, this.m_soulCCBNode, { desc: "rt", sc: true, offset: { x: -480, y: -100 } });
    // source line 45, bytecode pc 353
    (this.m_goldSoulNumLab = this.m_soulCCBNode.getChildByTag(xs.Views.ClimbLadderArtifactStorey.cfg.m_goldSoulNumLab.tag));
    // source line 46, bytecode pc 408
    (this.m_silverSoulNumLab = this.m_soulCCBNode.getChildByTag(xs.Views.ClimbLadderArtifactStorey.cfg.m_silverSoulNumLab.tag));
    // source line 50, bytecode pc 448
    (this.m_tableViewSize = cc.size(840, (visibleSize.height - 140)));
    // source line 51, bytecode pc 485
    (this.m_tableView = cc.TableView.create(this, this.m_tableViewSize));
    // source line 52, bytecode pc 514
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 53, bytecode pc 543
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 54, bytecode pc 563
    this.m_tableView.setDelegate(this);
    // source line 55, bytecode pc 638
    this.m_tableView.setPosition(cc.p((visibleOrigin.x + (((visibleSize.width - 100) - 840) / 2)), (visibleOrigin.y + 30)));
    // source line 56, bytecode pc 674
    xs.Utils.Node.attachNodes(this, this.m_tableView);
    // source line 58, bytecode pc 676
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 61, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 62, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 63, bytecode pc 85
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Views.ClimbLadderArtifactStorey.cfg.m_tableView.priority));
},
    onEnter: function() {
    // source line 66, bytecode pc 12
    this._super();
    // source line 67, bytecode pc 25
    this.updateSoulNum();
    // source line 68, bytecode pc 38
    this.requestExchangeList();
},
    onExit: function() {
    // source line 71, bytecode pc 12
    this._super();
},
    requestExchangeList: function() {
    var param;
    // source line 74, bytecode pc 9
    (param = {});
    // source line 75, bytecode pc 49
    xs.Tools.Net.requestArtifactStoreyExchangeList(param, this.requestExchangeListSuccessCallback, this);
},
    requestExchangeListSuccessCallback: function(data) {
    var length, equipmentInfo, i, exchangeData;
    // source line 79, bytecode pc 14
    (length = this.m_dataSource.length);
    // source line 80, bytecode pc 38
    this.m_dataSource.splice(0, length);
    // source line 83, bytecode pc 55
    (equipmentInfo = data.return_info.equipment_info);
    // source line 84, bytecode pc 60
    (i = 0);
    while ((i < equipmentInfo.length)) {
        // source line 85, bytecode pc 104
        (exchangeData = xs.Models.EquipmentExchange.createWithJson(equipmentInfo[i]));
        // source line 86, bytecode pc 126
        this.m_dataSource.push(exchangeData);
        // source line 84, bytecode pc 139
        (i = (+i + 1));
    }
    // source line 89, bytecode pc 175
    this.m_tableView.reloadData();
},
    updateSoulNum: function() {
    // source line 92, bytecode pc 55
    this.m_goldSoulNumLab.setString(xs.Models.Player.getInstance().getPlayerGoldSoul());
    // source line 93, bytecode pc 111
    this.m_silverSoulNumLab.setString(xs.Models.Player.getInstance().getPlayerSilverSoul());
},
    setListener: function(listener) {
    // source line 96, bytecode pc 9
    (this.m_listener = listener);
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 102, bytecode pc 17
    (idx = cell.getIdx());
    // source line 103, bytecode pc 44
    xs.log(("tableCellTouched : " + idx));
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 106, bytecode pc 23
    return cc.size(860, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell, data;
    // source line 109, bytecode pc 32
    xs.log("tableCellAtIndex", ("begin:" + idx));
    try {
        // source line 112, bytecode pc 51
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 114, bytecode pc 90
            (cell = xs.Views.ClimbLadderArtifactStoreyExchangeCell.create());
        }
        // source line 116, bytecode pc 104
        (data = this.m_dataSource[idx]);
        // source line 117, bytecode pc 121
        cell.setListener(this);
        // source line 118, bytecode pc 140
        cell.setExchangeData(data);
        // source line 120, bytecode pc 144
        return cell;
    } catch (e) {
        // source line 122, bytecode pc 186
        xs.warnException("ClimbLadderArtifactStorey", e);
        /* TODO_BYTECODE pc=187 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 125, bytecode pc 224
    xs.log("tableCellAtIndex", "end");
},
    numberOfCellsInTableView: function(table) {
    // source line 128, bytecode pc 11
    return this.m_dataSource.length;
},
    exchangeEquipment: function(data) {
    if (this.m_listener) {
        // source line 134, bytecode pc 32
        this.m_listener.exchangeEquipment(data);
    }
}
}));
// source line 140, bytecode pc 229
(xs.Views.ClimbLadderArtifactStorey.create = function() {
    var view;
    // source line 141, bytecode pc 23
    (view = new xs.Views.ClimbLadderArtifactStorey());
    if ((view && view.init())) {
        // source line 143, bytecode pc 55
        return view;
    }
    // source line 145, bytecode pc 80
    xs.assert(false, "xs.Views.ClimbLadderArtifactStorey.create error!");
    // source line 146, bytecode pc 82
    return null;
});
// source line 157, bytecode pc 310
(xs.Views.ClimbLadderArtifactStorey.cfg = { m_tableView: { priority: -1 }, m_goldSoulNumLab: { tag: 10 }, m_silverSoulNumLab: { tag: 11 } });
// source line 320, bytecode pc 454
(xs.Views.ClimbLadderArtifactStoreyExchangeCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 168, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 171, bytecode pc 12
    this._super();
    // source line 172, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 176, bytecode pc 19
        return false;
    }
    // source line 179, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 180, bytecode pc 35
    (this.m_listener = null);
    // source line 181, bytecode pc 43
    (this.m_exchangeData = null);
    // source line 183, bytecode pc 51
    (this.m_ccbNode = null);
    // source line 184, bytecode pc 59
    (this.m_head = null);
    // source line 185, bytecode pc 67
    (this.m_nameLab = null);
    // source line 186, bytecode pc 75
    (this.m_gradeIcon = null);
    // source line 187, bytecode pc 83
    (this.m_propertyIcon = null);
    // source line 188, bytecode pc 91
    (this.m_propertyLab = null);
    // source line 189, bytecode pc 99
    (this.m_fightIcon = null);
    // source line 190, bytecode pc 107
    (this.m_fightLab = null);
    // source line 191, bytecode pc 115
    (this.m_exchangeBtn = null);
    // source line 192, bytecode pc 123
    (this.m_costGoldSoulTxtLab = null);
    // source line 193, bytecode pc 131
    (this.m_costGoldSoulIcon = null);
    // source line 194, bytecode pc 139
    (this.m_costGoldSoulNumLab = null);
    // source line 195, bytecode pc 147
    (this.m_costSilverSoulTxtLab = null);
    // source line 196, bytecode pc 155
    (this.m_costSilverSoulIcon = null);
    // source line 197, bytecode pc 163
    (this.m_costSilverSoulNumLab = null);
    // source line 200, bytecode pc 214
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.ArtifactStoreyExchangeCell, this));
    // source line 201, bytecode pc 250
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 203, bytecode pc 305
    (this.m_head = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_head.tag));
    // source line 204, bytecode pc 360
    (this.m_nameLab = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_nameLab.tag));
    // source line 205, bytecode pc 415
    (this.m_gradeIcon = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_gradeIcon.tag));
    // source line 206, bytecode pc 470
    (this.m_propertyIcon = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_propertyIcon.tag));
    // source line 207, bytecode pc 525
    (this.m_propertyLab = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_propertyLab.tag));
    // source line 208, bytecode pc 580
    (this.m_fightIcon = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_fightIcon.tag));
    // source line 209, bytecode pc 635
    (this.m_fightLab = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_fightLab.tag));
    // source line 210, bytecode pc 690
    (this.m_costGoldSoulTxtLab = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_costGoldSoulTxtLab.tag));
    // source line 211, bytecode pc 745
    (this.m_costGoldSoulIcon = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_costGoldSoulIcon.tag));
    // source line 212, bytecode pc 800
    (this.m_costGoldSoulNumLab = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_costGoldSoulNumLab.tag));
    // source line 213, bytecode pc 855
    (this.m_costSilverSoulTxtLab = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_costSilverSoulTxtLab.tag));
    // source line 214, bytecode pc 910
    (this.m_costSilverSoulIcon = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_costSilverSoulIcon.tag));
    // source line 215, bytecode pc 965
    (this.m_costSilverSoulNumLab = this.m_ccbNode.getChildByTag(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_costSilverSoulNumLab.tag));
    // source line 218, bytecode pc 1070
    (this.m_exchangeBtn = xs.Utils.replaceButton(this.m_ccbNode, xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_exchangeBtn.tag, "Btn_Bmp_Yellow", xs.Tools.String.createString("btnStr_CDKey")));
    // source line 219, bytecode pc 1097
    this.m_exchangeBtn.addCallBackForEvent(this, this.exchangeBtnCallback);
    // source line 221, bytecode pc 1099
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 224, bytecode pc 12
    this._super();
    // source line 226, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 229, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 230, bytecode pc 88
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 233, bytecode pc 111
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 237, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 240, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 242, bytecode pc 65
    this.m_exchangeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg.m_exchangeBtn.priority));
},
    setListener: function(listener) {
    // source line 245, bytecode pc 9
    (this.m_listener = listener);
},
    setExchangeData: function(data) {
    // source line 249, bytecode pc 9
    (this.m_exchangeData = data);
    // source line 250, bytecode pc 22
    this.updateView();
},
    updateView: function() {
    var head, equipment, gradeIcon, propertyIcon;
    // source line 254, bytecode pc 28
    xs.log("updateView", "begin");
    try {
        if (this.m_exchangeData) {
            // source line 260, bytecode pc 72
            (head = this.m_exchangeData.getItem().createHeadView());
            // source line 261, bytecode pc 105
            head.setPosition(this.m_head.getPosition());
            // source line 262, bytecode pc 138
            xs.Utils.Node.attachNodes(this, head);
            // source line 263, bytecode pc 172
            xs.Utils.Node.safeRemoveChild(this.m_head);
            // source line 264, bytecode pc 182
            (this.m_head = head);
            // source line 265, bytecode pc 211
            xs.log("updateView", "begin1");
            // source line 267, bytecode pc 258
            this.m_nameLab.setString(this.m_exchangeData.getItem().getNameString());
            // source line 269, bytecode pc 287
            xs.log("updateView", "begin2");
            // source line 271, bytecode pc 319
            (equipment = this.m_exchangeData.getItem().getEffectValue_Equipment());
            // source line 273, bytecode pc 348
            xs.log("updateView", "begin3");
            // source line 275, bytecode pc 366
            (gradeIcon = equipment.createGradeSmallIcon());
            // source line 276, bytecode pc 399
            gradeIcon.setPosition(this.m_gradeIcon.getPosition());
            // source line 277, bytecode pc 432
            xs.Utils.Node.attachNodes(this, gradeIcon);
            // source line 278, bytecode pc 466
            xs.Utils.Node.safeRemoveChild(this.m_gradeIcon);
            // source line 279, bytecode pc 476
            (this.m_gradeIcon = gradeIcon);
            // source line 281, bytecode pc 494
            (propertyIcon = equipment.createEffectTypeSmallIcon());
            // source line 282, bytecode pc 527
            propertyIcon.setPosition(this.m_propertyIcon.getPosition());
            // source line 283, bytecode pc 560
            xs.Utils.Node.attachNodes(this, propertyIcon);
            // source line 284, bytecode pc 594
            xs.Utils.Node.safeRemoveChild(this.m_propertyIcon);
            // source line 285, bytecode pc 604
            (this.m_propertyIcon = propertyIcon);
            // source line 287, bytecode pc 643
            this.m_propertyLab.setString(("+" + equipment.getEffectValue()));
            // source line 289, bytecode pc 676
            this.m_fightLab.setString(equipment.getFightPoint());
            // source line 291, bytecode pc 718
            this.m_costGoldSoulNumLab.setString(("" + this.m_exchangeData.getDiscountGoldSoul()));
            // source line 292, bytecode pc 760
            this.m_costSilverSoulNumLab.setString(("" + this.m_exchangeData.getDiscountSilverSoul()));
            if ((this.m_exchangeData.discount_gold_soul === 0)) {
                // source line 295, bytecode pc 798
                this.m_costGoldSoulTxtLab.setVisible(false);
                // source line 296, bytecode pc 818
                this.m_costGoldSoulIcon.setVisible(false);
                // source line 297, bytecode pc 838
                this.m_costGoldSoulNumLab.setVisible(false);
                // source line 299, bytecode pc 880
                this.m_costSilverSoulTxtLab.setPosition(cc.p(171, 19));
                // source line 300, bytecode pc 922
                this.m_costSilverSoulIcon.setPosition(cc.p(235, 23));
                // source line 301, bytecode pc 964
                this.m_costSilverSoulNumLab.setPosition(cc.p(259, 19));
            } else {
                // source line 303, bytecode pc 1011
                this.m_costSilverSoulTxtLab.setPosition(cc.p(446, 19));
                // source line 304, bytecode pc 1053
                this.m_costSilverSoulIcon.setPosition(cc.p(508, 23));
                // source line 305, bytecode pc 1095
                this.m_costSilverSoulNumLab.setPosition(cc.p(532, 19));
            }
            if ((this.m_exchangeData.discount_silver_soul === 0)) {
                // source line 309, bytecode pc 1133
                this.m_costSilverSoulTxtLab.setVisible(false);
                // source line 310, bytecode pc 1153
                this.m_costSilverSoulIcon.setVisible(false);
                // source line 311, bytecode pc 1173
                this.m_costSilverSoulNumLab.setVisible(false);
            }
        }
        // source line 315, bytecode pc 1202
        xs.log("updateView", "end");
    } catch (e) {
        // source line 317, bytecode pc 1244
        xs.warnException("updateView", e);
        /* TODO_BYTECODE pc=1245 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    exchangeBtnCallback: function() {
    if (this.m_listener) {
        // source line 322, bytecode pc 35
        this.m_listener.exchangeEquipment(this.m_exchangeData);
    }
}
}));
// source line 328, bytecode pc 480
(xs.Views.ClimbLadderArtifactStoreyExchangeCell.create = function() {
    var cell;
    // source line 329, bytecode pc 23
    (cell = new xs.Views.ClimbLadderArtifactStoreyExchangeCell());
    if ((cell && cell.init())) {
        // source line 331, bytecode pc 55
        return cell;
    }
    // source line 333, bytecode pc 80
    xs.assert(false, "xs.Views.ClimbLadderArtifactStoreyExchangeCell.create error!");
    // source line 334, bytecode pc 82
    return null;
});
// source line 379, bytecode pc 766
(xs.Views.ClimbLadderArtifactStoreyExchangeCell.cfg = {
    m_head: { tag: 10 },
    m_nameLab: { tag: 11 },
    m_gradeIcon: { tag: 12 },
    m_propertyIcon: { tag: 13 },
    m_propertyLab: { tag: 15 },
    m_fightIcon: { tag: 14 },
    m_fightLab: { tag: 16 },
    m_exchangeBtn: { tag: 17, priority: -1 },
    m_costGoldSoulTxtLab: { tag: 18 },
    m_costGoldSoulIcon: { tag: 19 },
    m_costGoldSoulNumLab: { tag: 20 },
    m_costSilverSoulTxtLab: { tag: 21 },
    m_costSilverSoulIcon: { tag: 22 },
    m_costSilverSoulNumLab: { tag: 23 }
});
