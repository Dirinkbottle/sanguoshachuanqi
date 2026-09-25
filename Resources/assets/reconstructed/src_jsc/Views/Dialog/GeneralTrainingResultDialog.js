// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/GeneralTrainingResultDialog.js:1
// source line 47, bytecode pc 88
(xs.Views.Dialog.GeneralTrainingResultTile = cc.Node.extend({
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 22, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 26, bytecode pc 35
    (this.m_tileData = null);
    // source line 28, bytecode pc 43
    (this.m_headSp = null);
    // source line 29, bytecode pc 51
    (this.m_nameLab = null);
    // source line 30, bytecode pc 59
    (this.m_expLab = null);
    // source line 31, bytecode pc 67
    (this.m_extExpLab = null);
    // source line 32, bytecode pc 75
    (this.m_befLevelLab = null);
    // source line 33, bytecode pc 83
    (this.m_atfLevelLab = null);
    // source line 34, bytecode pc 91
    (this.m_arrow = null);
    // source line 36, bytecode pc 142
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GeneralTrainingResultTile, this));
    // source line 37, bytecode pc 178
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 39, bytecode pc 245
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Dialog.GeneralTrainingResultTile.cfg.ccbCfg, this);
    // source line 41, bytecode pc 247
    return true;
},
    setTileData: function(data) {
    // source line 44, bytecode pc 9
    (this.m_tileData = data);
    // source line 45, bytecode pc 22
    this.updateView();
},
    updateView: function() {
    var general, head, contentSize, pos;
    if (this.m_tileData) {
        // source line 50, bytecode pc 79
        (general = xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(this.m_tileData.getPkId()));
        // source line 51, bytecode pc 97
        (head = general.createHeadView());
        // source line 52, bytecode pc 130
        head.setPosition(this.m_headSp.getPosition());
        // source line 53, bytecode pc 163
        xs.Utils.Node.attachNodes(this, head);
        // source line 54, bytecode pc 197
        xs.Utils.Node.safeRemoveChild(this.m_headSp);
        // source line 55, bytecode pc 207
        (this.m_headSp = head);
        // source line 57, bytecode pc 240
        this.m_nameLab.setString(general.getNameString());
        if ((this.m_tileData.getExp() === 0)) {
            // source line 59, bytecode pc 288
            this.m_expLab.setString("");
        } else {
            // source line 61, bytecode pc 335
            this.m_expLab.setString(("+" + this.m_tileData.getExp()));
        }
        if ((this.m_tileData.getExtraExp() === 0)) {
            // source line 64, bytecode pc 383
            this.m_extExpLab.setString("");
        } else {
            // source line 66, bytecode pc 430
            this.m_extExpLab.setString(("+" + this.m_tileData.getExtraExp()));
        }
        // source line 68, bytecode pc 466
        this.m_befLevelLab.setString(this.m_tileData.getBeforeLevel());
        // source line 69, bytecode pc 502
        this.m_atfLevelLab.setString(this.m_tileData.getNowLevel());
        // source line 71, bytecode pc 523
        (contentSize = this.m_expLab.getContentSize());
        // source line 72, bytecode pc 544
        (pos = this.m_expLab.getPosition());
        // source line 74, bytecode pc 565
        (contentSize = this.m_befLevelLab.getContentSize());
        // source line 75, bytecode pc 586
        (pos = this.m_befLevelLab.getPosition());
        // source line 76, bytecode pc 634
        this.m_arrow.setPosition(((pos.x + contentSize.width) + 14), pos.y);
        // source line 77, bytecode pc 655
        (contentSize = this.m_arrow.getContentSize());
        // source line 78, bytecode pc 676
        (pos = this.m_arrow.getPosition());
        // source line 79, bytecode pc 744
        this.m_atfLevelLab.setPosition(cc.p(((pos.x + (contentSize.width / 2)) + 6), pos.y));
    }
}
}));
// source line 85, bytecode pc 119
(xs.Views.Dialog.GeneralTrainingResultTile.create = function() {
    var node;
    // source line 86, bytecode pc 28
    (node = new xs.Views.Dialog.GeneralTrainingResultTile());
    if ((node && node.init())) {
        // source line 88, bytecode pc 60
        return node;
    }
    // source line 90, bytecode pc 62
    return null;
});
// source line 124, bytecode pc 450
(xs.Views.Dialog.GeneralTrainingResultTile.cfg = {
    ccbCfg: [
        { name: "m_headSp", tag: 11 },
        { name: "m_nameLab", tag: 12, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_expLab", tag: 13, type: "ls", id: "LS_Lv" },
        { name: "m_extExpLab", tag: 14, type: "ls", id: "LS_green" },
        { name: "m_befLevelLab", tag: 15, type: "ls", id: "LS_Lv" },
        { name: "m_atfLevelLab", tag: 16, type: "ls", id: "LS_Lv" },
        { name: "m_arrow", tag: 17 }
    ]
});
// source line 173, bytecode pc 559
(xs.Views.Dialog.GeneralTrainingResultCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 132, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 136, bytecode pc 12
    this._super();
    // source line 137, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 142, bytecode pc 19
        return false;
    }
    // source line 144, bytecode pc 43
    this.setAnchorPoint(xs.ap_lb);
    // source line 145, bytecode pc 80
    this.setContentSize(cc.size(504, 105));
    // source line 148, bytecode pc 139
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_0_7_kuangdi.frameName));
    // source line 149, bytecode pc 181
    this.m_bg.setContentSize(cc.size(504, 105));
    // source line 150, bytecode pc 210
    this.m_bg.setAnchorPoint(xs.ap_lb);
    // source line 151, bytecode pc 248
    (this.m_leftTile = xs.Views.Dialog.GeneralTrainingResultTile.create());
    // source line 153, bytecode pc 286
    (this.m_rightTile = xs.Views.Dialog.GeneralTrainingResultTile.create());
    // source line 154, bytecode pc 326
    this.m_leftTile.setPosition(cc.p(0, -20));
    // source line 155, bytecode pc 368
    this.m_rightTile.setPosition(cc.p(245, -20));
    // source line 156, bytecode pc 393
    this.m_bg.addChild(this.m_leftTile);
    // source line 157, bytecode pc 418
    this.m_bg.addChild(this.m_rightTile);
    // source line 159, bytecode pc 438
    this.addChild(this.m_bg);
    // source line 162, bytecode pc 440
    return true;
},
    onEnter: function() {
    // source line 166, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 170, bytecode pc 12
    this._super();
},
    update: function(leftDate, rightDate) {
    if (rightDate) {
        // source line 177, bytecode pc 27
        this.m_rightTile.setVisible(true);
        // source line 178, bytecode pc 49
        this.m_rightTile.setTileData(rightDate);
    } else {
        // source line 181, bytecode pc 74
        this.m_rightTile.setVisible(false);
    }
    if (leftDate) {
        // source line 186, bytecode pc 102
        this.m_leftTile.setVisible(true);
        // source line 187, bytecode pc 124
        this.m_leftTile.setTileData(leftDate);
    } else {
        // source line 190, bytecode pc 149
        this.m_leftTile.setVisible(false);
    }
}
}));
// source line 198, bytecode pc 590
(xs.Views.Dialog.GeneralTrainingResultCell.create = function() {
    var cell;
    // source line 199, bytecode pc 28
    (cell = new xs.Views.Dialog.GeneralTrainingResultCell());
    if ((cell && cell.init())) {
        // source line 201, bytecode pc 60
        return cell;
    }
    // source line 204, bytecode pc 62
    return null;
});
// source line 437, bytecode pc 744
(xs.Views.Dialog.GeneralTrainingResultDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 213, bytecode pc 12
    this._super();
},
    init: function(trainingData, jsonData) {
    var visibleSize, visibleOrigin, general, card;
    if (!this._super()) {
        // source line 217, bytecode pc 19
        return false;
    }
    // source line 220, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 222, bytecode pc 39
    (this.m_tilesData = []);
    // source line 224, bytecode pc 47
    (this.m_ccbNode = null);
    // source line 227, bytecode pc 55
    (this.m_speakLab = null);
    // source line 228, bytecode pc 63
    (this.m_speakBg = null);
    // source line 229, bytecode pc 71
    (this.m_card = null);
    // source line 230, bytecode pc 79
    (this.m_confirmBtn = null);
    // source line 231, bytecode pc 87
    (this.m_closeBtn = null);
    // source line 232, bytecode pc 95
    (this.m_tileBg1 = null);
    // source line 233, bytecode pc 103
    (this.m_tileBg2 = null);
    // source line 234, bytecode pc 111
    (this.m_tileBg3 = null);
    // source line 235, bytecode pc 119
    (this.m_tileBg4 = null);
    // source line 238, bytecode pc 144
    (visibleSize = xs.director.getVisibleSize());
    // source line 239, bytecode pc 169
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 241, bytecode pc 220
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GeneralTrainingResult, this));
    // source line 242, bytecode pc 263
    this.m_ccbNode.setContentSize(cc.size(932, 622));
    // source line 243, bytecode pc 302
    this.m_ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 249, bytecode pc 392
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true, offset: { x: -466, y: -310 } });
    // source line 253, bytecode pc 459
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Dialog.GeneralTrainingResultDialog.cfg.ccbCfg, this);
    // source line 255, bytecode pc 480
    this.m_speakBg.setZOrder(2);
    // source line 256, bytecode pc 501
    this.m_speakLab.setZOrder(2);
    // source line 257, bytecode pc 522
    this.m_tileBg1.setZOrder(2);
    // source line 258, bytecode pc 543
    this.m_tileBg2.setZOrder(2);
    // source line 259, bytecode pc 564
    this.m_tileBg3.setZOrder(2);
    // source line 260, bytecode pc 585
    this.m_tileBg4.setZOrder(2);
    // source line 261, bytecode pc 605
    this.m_tileBg1.setVisible(false);
    // source line 262, bytecode pc 625
    this.m_tileBg2.setVisible(false);
    // source line 263, bytecode pc 645
    this.m_tileBg3.setVisible(false);
    // source line 264, bytecode pc 665
    this.m_tileBg4.setVisible(false);
    // source line 265, bytecode pc 686
    this.m_confirmBtn.setZOrder(2);
    // source line 267, bytecode pc 724
    this.m_confirmBtn.setOnClickCallBack(this.closeCallback.bind(this));
    // source line 268, bytecode pc 762
    this.m_closeBtn.setOnClickCallBack(this.closeCallback.bind(this));
    // source line 271, bytecode pc 779
    this._initData(jsonData);
    // source line 273, bytecode pc 824
    (general = xs.Models.General.createWithBase(trainingData.getGeneralId()));
    // source line 274, bytecode pc 842
    (card = general.createCardView());
    // source line 275, bytecode pc 875
    card.setPosition(this.m_card.getPosition());
    // source line 276, bytecode pc 913
    xs.Utils.Node.attachNodes(this.m_ccbNode, card);
    // source line 277, bytecode pc 947
    xs.Utils.Node.safeRemoveChild(this.m_card);
    // source line 278, bytecode pc 957
    (this.m_card = card);
    // source line 280, bytecode pc 990
    this.m_speakLab.setString(trainingData.getEndSpeak());
    // source line 283, bytecode pc 1045
    (this.m_tableView = cc.TableView.create(this, cc.size(504, 400)));
    // source line 284, bytecode pc 1074
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 285, bytecode pc 1094
    this.m_tableView.setDelegate(this);
    // source line 286, bytecode pc 1123
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 288, bytecode pc 1209
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_tableView, { desc: "c", offset: { x: -80, y: -210 } });
    // source line 289, bytecode pc 1227
    this.m_tableView.reloadData();
    // source line 292, bytecode pc 1229
    return true;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 295, bytecode pc 23
    return cc.size(504, 115);
},
    tableCellAtIndex: function(table, idx) {
    var cell, leftDate, rightDate, rigtDateIdx, maxNum;
    // source line 301, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 303, bytecode pc 61
        (cell = xs.Views.Dialog.GeneralTrainingResultCell.create());
    }
    // source line 305, bytecode pc 78
    (leftDate = this.m_tilesData[(idx * 2)]);
    // source line 306, bytecode pc 83
    (rightDate = null);
    // source line 307, bytecode pc 95
    (rigtDateIdx = ((idx * 2) + 1));
    // source line 308, bytecode pc 110
    (maxNum = this.m_tilesData.length);
    if ((rigtDateIdx < maxNum)) {
        // source line 310, bytecode pc 136
        (rightDate = this.m_tilesData[rigtDateIdx]);
    }
    // source line 313, bytecode pc 159
    cell.update(leftDate, rightDate);
    // source line 316, bytecode pc 163
    return cell;
},
    numberOfCellsInTableView: function(table) {
    var mNum;
    // source line 320, bytecode pc 39
    (mNum = xs.Utils.ceilSafe((this.m_tilesData.length / 2)));
    // source line 321, bytecode pc 43
    return mNum;
},
    setBaseTouchPriority: function(priority) {
    // source line 326, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 327, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 329, bytecode pc 90
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Dialog.GeneralTrainingResultDialog.cfg.m_confirmBtn.priority));
    // source line 330, bytecode pc 117
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 332, bytecode pc 178
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Dialog.GeneralTrainingResultDialog.cfg.m_closeBtn.priority));
},
    closeCallback: function() {
    // source line 335, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    _initData: function(jsonData) {
    var i, data;
    // source line 407, bytecode pc 4
    (i = 0);
    while ((i < jsonData.length)) {
        // source line 408, bytecode pc 48
        (data = xs.Models.GeneralTrainingResultTileData.createWithJson(jsonData[i]));
        // source line 409, bytecode pc 70
        this.m_tilesData.push(data);
        // source line 407, bytecode pc 83
        (i = (+i + 1));
    }
},
    initTiles: function(jsonData) {
    var x_first, x_second, y_offset, y_add, y, x, i, tile;
    // source line 414, bytecode pc 16
    this._initData(jsonData);
    // source line 416, bytecode pc 23
    (x_first = 374);
    // source line 417, bytecode pc 30
    (x_second = 620);
    // source line 418, bytecode pc 37
    (y_offset = 386);
    // source line 419, bytecode pc 43
    (y_add = 114);
    // source line 420, bytecode pc 50
    (y = y_offset);
    // source line 421, bytecode pc 57
    (x = x_first);
    // source line 422, bytecode pc 62
    (i = 0);
    while ((i < this.m_tilesData.length)) {
        // source line 423, bytecode pc 103
        (tile = xs.Views.Dialog.GeneralTrainingResultTile.create());
        if (((i % 2) === 0)) {
            // source line 425, bytecode pc 123
            (x = x_first);
        } else {
            // source line 427, bytecode pc 135
            (x = x_second);
        }
        // source line 429, bytecode pc 175
        (y = (y_offset - (xs.Utils.parseIntSafe((i / 2)) * y_add)));
        // source line 430, bytecode pc 215
        tile.setPosition(cc.p(x, y));
        // source line 431, bytecode pc 241
        tile.setTileData(this.m_tilesData[i]);
        // source line 432, bytecode pc 259
        tile.setZOrder(2);
        // source line 433, bytecode pc 297
        xs.Utils.Node.attachNodes(this.m_ccbNode, tile);
        // source line 422, bytecode pc 310
        (i = (+i + 1));
    }
},
    updateView: function() {
}
}));
// source line 442, bytecode pc 775
(xs.Views.Dialog.GeneralTrainingResultDialog.create = function(trainingData, jsonData) {
    var layer;
    // source line 443, bytecode pc 28
    (layer = new xs.Views.Dialog.GeneralTrainingResultDialog());
    if ((layer && layer.init(trainingData, jsonData))) {
        // source line 445, bytecode pc 68
        return layer;
    }
    // source line 447, bytecode pc 70
    return null;
});
// source line 497, bytecode pc 1240
(xs.Views.Dialog.GeneralTrainingResultDialog.cfg = {
    ccbCfg: [
        { name: "m_speakLab", tag: 12, type: "ls", id: "LS_mainUI3" },
        { name: "m_speakBg", tag: 11 },
        { name: "m_card", tag: 13 },
        { name: "m_confirmBtn", tag: 14, type: "btn", id: "Btn_Confirm", offset: cc.p(38, -50) },
        { name: "m_closeBtn", tag: 15, type: "btn", id: "Btn_Close" },
        { name: "m_tileBg1", tag: 16 },
        { name: "m_tileBg2", tag: 17 },
        { name: "m_tileBg3", tag: 18 },
        { name: "m_tileBg4", tag: 19 },
        { name: "m_titleLab", tag: 20, type: "ls", stringId: "auto_name_414", id: "LS_popUI1" }
    ],
    m_confirmBtn: { priority: -1 },
    m_closeBtn: { priority: -1 }
});
// source line 503, bytecode pc 1320
xs.Views.Mgr.registerDialog("GeneralTrainingResultDialog", { "class": xs.Views.Dialog.GeneralTrainingResultDialog, styleType: xs.Constant_DlgStyleType_Large });
