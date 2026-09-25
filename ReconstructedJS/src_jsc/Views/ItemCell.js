// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ItemCell.js:1
// source line 85, bytecode pc 133
(xs.Views.ItemCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 13, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 25, bytecode pc 35
    (this.m_listener = null);
    // source line 27, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 28, bytecode pc 51
    (this.m_nameLab = null);
    // source line 29, bytecode pc 59
    (this.m_head = null);
    // source line 30, bytecode pc 67
    (this.m_descLab = null);
    // source line 31, bytecode pc 75
    (this.m_numTxtLab = null);
    // source line 32, bytecode pc 83
    (this.m_numLab = null);
    // source line 33, bytecode pc 91
    (this.m_centerBtn = null);
    // source line 34, bytecode pc 99
    (this.m_fastBtn = null);
    // source line 36, bytecode pc 150
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.ItemCell, this));
    // source line 37, bytecode pc 186
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 39, bytecode pc 248
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.ItemCell.cfg.ccbCfg, this);
    // source line 42, bytecode pc 286
    this.m_centerBtn.setOnClickCallBack(this.centerBtnCallback.bind(this));
    // source line 43, bytecode pc 306
    this.m_centerBtn.setSwallowTouch(false);
    // source line 44, bytecode pc 326
    this.m_centerBtn.setZoomOnTouchDown(false);
    // source line 46, bytecode pc 364
    this.m_fastBtn.setOnClickCallBack(this.fastBtnCallback.bind(this));
    // source line 47, bytecode pc 384
    this.m_fastBtn.setSwallowTouch(false);
    // source line 48, bytecode pc 404
    this.m_fastBtn.setZoomOnTouchDown(false);
    // source line 50, bytecode pc 406
    return true;
},
    centerBtnCallback: function() {
},
    fastBtnCallback: function() {
},
    setBaseTouchPriority: function(priority) {
    // source line 59, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 61, bytecode pc 65
    this.m_centerBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.ItemCell.cfg.m_centerBtn.priority));
    // source line 62, bytecode pc 121
    this.m_fastBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.ItemCell.cfg.m_fastBtn.priority));
    if ((this.m_head && this.m_head.setTouchPriority)) {
        // source line 64, bytecode pc 205
        this.m_head.setTouchPriority((this.m_baseTouchPriority + xs.Views.ItemCell.cfg.m_head.priority));
    }
},
    setListener: function(listener) {
    // source line 68, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 72, bytecode pc 12
    this._super();
    // source line 74, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 77, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 79, bytecode pc 88
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 82, bytecode pc 111
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 86, bytecode pc 12
    this._super();
}
}));
// source line 92, bytecode pc 159
(xs.Views.ItemCell.create = function() {
    var cell;
    // source line 93, bytecode pc 23
    (cell = new xs.Views.ItemCell());
    if ((cell && cell.init())) {
        // source line 95, bytecode pc 55
        return cell;
    }
    // source line 97, bytecode pc 57
    return null;
});
// source line 117, bytecode pc 579
(xs.Views.ItemCell.cfg = {
    ccbCfg: [
        { name: "m_nameLab", tag: 13, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_head", tag: 12 },
        { name: "m_descLab", tag: 14, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_numTxtLab", tag: 15, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_numLab", tag: 16, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_centerBtn", tag: 17, type: "btn", id: "Btn_btn3", string: "" },
        { name: "m_fastBtn", tag: 18, type: "btn", id: "Btn_btn3", string: "" }
    ],
    m_head: { priority: -1 },
    m_centerBtn: { priority: -1 },
    m_fastBtn: { priority: -1 }
});
// source line 346, bytecode pc 708
(xs.Views.BagItemCell = xs.Views.ItemCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 128, bytecode pc 19
        return false;
    }
    // source line 130, bytecode pc 27
    (this.m_itemData = null);
    // source line 131, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 132, bytecode pc 44
    (this.m_continuousOpen = 1);
    // source line 134, bytecode pc 46
    return true;
},
    setItemData: function(itemData) {
    // source line 137, bytecode pc 9
    (this.m_itemData = itemData);
    // source line 138, bytecode pc 22
    this.updateView();
},
    updateView: function() {
    var head, btn, selfNum, maxOpenNum, relateNum, smallNum, str, contentSize, pos, _view_lt, _offset, isRedDot, isnewState;
    if (this.m_itemData) {
        // source line 143, bytecode pc 31
        (head = this.m_itemData.createHeadViewAndState());
        if ((this.m_itemData.getItemType() === xs.Models.ItemType_Gift)) {
            // source line 148, bytecode pc 103
            (btn = xs.Views.Btn.createInvisibleWithChild(head));
            // source line 149, bytecode pc 136
            btn.setPosition(this.m_head.getPosition());
            // source line 150, bytecode pc 171
            btn.setOnClickCallBack(this.detailCallback.bind(this));
            // source line 151, bytecode pc 188
            btn.setSwallowTouch(false);
            // source line 152, bytecode pc 205
            btn.setZoomOnTouchDown(false);
            // source line 153, bytecode pc 243
            xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
            // source line 154, bytecode pc 277
            xs.Utils.Node.safeRemoveChild(this.m_head);
            // source line 155, bytecode pc 287
            (this.m_head = btn);
        } else {
            // source line 159, bytecode pc 326
            (btn = xs.Views.Btn.createInvisibleWithChild(head));
            // source line 161, bytecode pc 359
            btn.setPosition(this.m_head.getPosition());
            // source line 162, bytecode pc 394
            btn.setOnClickCallBack(this.detailCallback.bind(this));
            // source line 163, bytecode pc 411
            btn.setSwallowTouch(false);
            // source line 164, bytecode pc 428
            btn.setZoomOnTouchDown(false);
            // source line 165, bytecode pc 445
            btn.setEnabled(false);
            // source line 166, bytecode pc 483
            xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
            // source line 167, bytecode pc 517
            xs.Utils.Node.safeRemoveChild(this.m_head);
            // source line 168, bytecode pc 527
            (this.m_head = btn);
        }
        // source line 173, bytecode pc 563
        xs.Utils.Node.fastSetVisible(this.m_fastBtn, false);
        // source line 175, bytecode pc 584
        (selfNum = this.m_itemData.getItemNum());
        if (((this.m_itemData.getItemType() === xs.Models.ItemType_Evolution_Item) && (this.m_itemData.getItemId() !== "600206"))) {
            // source line 180, bytecode pc 692
            xs.log("----- itemId = ", this.m_itemData.getItemId());
            // source line 181, bytecode pc 728
            xs.Utils.Node.fastSetVisible(this.m_fastBtn, true);
            // source line 182, bytecode pc 795
            xs.Tools.UI.setButtonTitle(this.m_fastBtn, xs.Tools.String.createString("resolveBox_1"));
            // source line 183, bytecode pc 805
            (this.m_continuousOpen = selfNum);
        }
        if (((this.m_itemData.getItemType() === xs.Models.ItemType_Box) || ((this.m_itemData.getItemType() === xs.Models.ItemType_Key) || ((this.m_itemData.getItemType() === xs.Models.ItemType_TiLi) || ((this.m_itemData.getItemType() === xs.Models.ItemType_JingLi) || (this.m_itemData.getItemType() === xs.Models.ItemType_Gift)))))) {
            // source line 191, bytecode pc 1005
            (maxOpenNum = 10);
            // source line 192, bytecode pc 1074
            (relateNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(this.m_itemData.getRelatedId()));
            if (((relateNum >= 2) && (selfNum >= 2))) {
                // source line 195, bytecode pc 1133
                xs.Utils.Node.fastSetVisible(this.m_fastBtn, true);
                // source line 196, bytecode pc 1160
                (smallNum = ((relateNum < selfNum) ? relateNum : selfNum));
                // source line 197, bytecode pc 1170
                (this.m_continuousOpen = smallNum);
                if ((smallNum > maxOpenNum)) {
                    // source line 199, bytecode pc 1249
                    xs.Tools.UI.setButtonTitle(this.m_fastBtn, xs.Tools.String.createString("openBox_1"));
                } else {
                    // source line 201, bytecode pc 1358
                    xs.Tools.UI.setButtonTitle(this.m_fastBtn, ((xs.Tools.String.createString("auto_name_288") + smallNum) + xs.Tools.String.createString("auto_name_289")));
                }
            } else {
                if (((this.m_itemData.getRelatedId() === "0") && (selfNum >= 2))) {
                    // source line 205, bytecode pc 1439
                    xs.Utils.Node.fastSetVisible(this.m_fastBtn, true);
                    // source line 206, bytecode pc 1449
                    (this.m_continuousOpen = selfNum);
                    if ((selfNum > maxOpenNum)) {
                        // source line 208, bytecode pc 1528
                        xs.Tools.UI.setButtonTitle(this.m_fastBtn, xs.Tools.String.createString("openBox_1"));
                    } else {
                        // source line 210, bytecode pc 1637
                        xs.Tools.UI.setButtonTitle(this.m_fastBtn, ((xs.Tools.String.createString("auto_name_288") + selfNum) + xs.Tools.String.createString("auto_name_289")));
                    }
                }
            }
        }
        // source line 215, bytecode pc 1673
        this.m_nameLab.setString(this.m_itemData.getNameString());
        // source line 216, bytecode pc 1709
        this.m_descLab.setString(this.m_itemData.getDescString());
        // source line 217, bytecode pc 1745
        this.m_numLab.setString(this.m_itemData.getItemNum());
        // source line 218, bytecode pc 1781
        (str = xs.Tools.String.createString("str_Bag_num"));
        // source line 219, bytecode pc 1803
        this.m_numTxtLab.setString(str);
        // source line 220, bytecode pc 1824
        (contentSize = this.m_numTxtLab.getContentSize());
        // source line 221, bytecode pc 1845
        (pos = this.m_numTxtLab.getPosition());
        // source line 222, bytecode pc 1907
        this.m_numLab.setPosition(cc.p((pos.x + contentSize.width), pos.y));
        // source line 224, bytecode pc 1999
        xs.Tools.UI.setButtonTitle(this.m_centerBtn, (this.m_itemData.getBtnNameByIdx(0) || xs.Tools.String.createString("auto_name_290")));
        if ((this.m_itemData.getItemType() == xs.Models.ItemType_CertainTicket)) {
            // source line 228, bytecode pc 2057
            this.m_centerBtn.setVisible(false);
        } else {
            // source line 230, bytecode pc 2082
            this.m_centerBtn.setVisible(true);
        }
        if (!xs.Guide.GuideMgr.getIsOver()) {
            // source line 234, bytecode pc 2139
            this.m_centerBtn.setGuideTag(this.m_spGuideTag);
        }
        if ((this.m_itemData.getItemType() === xs.Models.ItemType_Evolution_Baowu)) {
            if ((this.m_itemData.getItemId() != "600209")) {
                // source line 244, bytecode pc 2225
                this.m_centerBtn.setVisible(true);
                // source line 245, bytecode pc 2292
                xs.Tools.UI.setButtonTitle(this.m_centerBtn, xs.Tools.String.createString("1070610003"));
            } else {
                // source line 249, bytecode pc 2317
                this.m_centerBtn.setVisible(false);
            }
            // source line 252, bytecode pc 2359
            (_view_lt = xs.Factorys.Sprite.create("icon_lt_piece", "Cmn02"));
            // source line 253, bytecode pc 2385
            (_offset = cc.p(-46, 54));
            // source line 254, bytecode pc 2411
            _view_lt.setAnchorPoint(xs.ap_lt);
            // source line 255, bytecode pc 2429
            _view_lt.setZOrder(10);
            // source line 256, bytecode pc 2489
            xs.Utils.Node.attachNodes(head, _view_lt, { desc: "lt", offset: _offset });
        }
        // source line 268, bytecode pc 2494
        (isRedDot = false);
        if (((xs.Scene.Mgr.loadStatus("BagScene_onEnter") ? (this.m_itemData.getItemType() === xs.Models.ItemType_Gift) : ((this.m_itemData.getItemType() === xs.Models.ItemType_Gift) || ((this.m_itemData.getItemType() === xs.Models.ItemType_Box) || ((this.m_itemData.getItemType() === xs.Models.ItemType_TiLi) || (this.m_itemData.getItemType() === xs.Models.ItemType_JingLi))))) && !this.m_itemData.getNewStatus())) {
            if (((this.m_itemData.getItemType() === xs.Models.ItemType_Box) || (this.m_itemData.getItemType() === xs.Models.ItemType_Key))) {
                // source line 279, bytecode pc 2894
                (relateNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(this.m_itemData.getRelatedId()));
                if ((this.m_itemData.getRelatedId() !== "0")) {
                    if ((relateNum > 0)) {
                        // source line 283, bytecode pc 2937
                        (isRedDot = true);
                    }
                } else {
                    // source line 286, bytecode pc 2947
                    (isRedDot = true);
                }
            } else {
                // source line 292, bytecode pc 2957
                (isRedDot = true);
            }
        }
        // source line 301, bytecode pc 3002
        (this.newPoint = xs.Factorys.Sprite.create("icon_lt_propNew", "Cmn02"));
        // source line 306, bytecode pc 3105
        xs.Utils.Node.attachNodes(head, this.newPoint, { desc: "rt", offset: cc.p(38, 38) }, { zOrder: 12, tag: 12 });
        // source line 308, bytecode pc 3148
        (isnewState = (this.m_itemData.getNewStatus ? this.m_itemData.getNewStatus() : false));
        if (!isnewState) {
            // source line 310, bytecode pc 3177
            this.newPoint.setVisible(false);
        }
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 319, bytecode pc 16
    this._super(priority);
},
    setSpGuideTag: function(tag) {
    // source line 323, bytecode pc 9
    (this.m_spGuideTag = tag);
    // source line 324, bytecode pc 22
    this.updateView();
},
    detailCallback: function() {
    if (this.m_listener) {
        // source line 329, bytecode pc 35
        this.m_listener.itemDetailCallback(this.m_itemData);
    } else {
        // source line 331, bytecode pc 69
        xs.warn("detailCallback", "need m_listener");
    }
},
    centerBtnCallback: function() {
    // source line 335, bytecode pc 12
    this._super();
    if (this.m_listener) {
        // source line 340, bytecode pc 48
        this.m_listener.BagItemCell_centerBtnCallback(this.m_itemData);
    } else {
        // source line 343, bytecode pc 82
        xs.warn("BagItemCell", "need m_listener");
    }
},
    fastBtnCallback: function() {
    // source line 347, bytecode pc 12
    this._super();
    if (this.m_listener) {
        // source line 350, bytecode pc 55
        this.m_listener.BagItemCell_fastBtnCallback(this.m_itemData, this.m_continuousOpen);
    } else {
        // source line 353, bytecode pc 89
        xs.warn("BagItemCell", "need m_listener");
    }
}
}));
// source line 358, bytecode pc 734
(xs.Views.BagItemCell.create = function() {
    var cell;
    // source line 359, bytecode pc 23
    (cell = new xs.Views.BagItemCell());
    if ((cell && cell.init())) {
        // source line 361, bytecode pc 55
        return cell;
    }
    // source line 364, bytecode pc 57
    return null;
});
// source line 575, bytecode pc 903
(xs.Views.StoreItemCell = xs.Views.Table.Cell.BaseCmnStyleDCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 373, bytecode pc 19
        return false;
    }
    // source line 376, bytecode pc 27
    (this.m_goodData = null);
    // source line 377, bytecode pc 35
    (this.m_listener = null);
    // source line 379, bytecode pc 55
    this.m_btn.setEventOnDisable(true);
    // source line 380, bytecode pc 93
    this.m_btn.setOnClickCallBack(this.centerBtnCallback.bind(this));
    // source line 382, bytecode pc 95
    return true;
},
    onEnter: function() {
    // source line 385, bytecode pc 12
    this._super();
    // source line 386, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateCloseTimeLabel, xs.Constant_Notify_Store_CloseTimeUpdate);
},
    onExit: function() {
    // source line 389, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Store_CloseTimeUpdate);
    // source line 390, bytecode pc 52
    this._super();
},
    setGoodData: function(data) {
    // source line 394, bytecode pc 9
    (this.m_goodData = data);
    // source line 395, bytecode pc 22
    this.updateCell();
},
    setListener: function(listener) {
    // source line 398, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 401, bytecode pc 16
    this._super(priority);
    if (this.m_icon) {
        if (this.m_icon.setTouchPriority) {
            // source line 404, bytecode pc 99
            this.m_icon.setTouchPriority((this.m_baseTouchPriority + xs.Views.StoreItemCell.cfg.m_icon.priority));
        }
    }
},
    formatCell: function() {
    // source line 409, bytecode pc 12
    this._super();
    // source line 410, bytecode pc 32
    this.m_icon.setVisible(true);
    // source line 411, bytecode pc 52
    this.m_btn.setVisible(true);
    // source line 412, bytecode pc 72
    this.m_nameLab.setVisible(true);
    // source line 413, bytecode pc 92
    this.m_descLab.setVisible(true);
    // source line 414, bytecode pc 112
    this.m_originalPriceTxtLab.setVisible(true);
    // source line 415, bytecode pc 132
    this.m_originalPriceIcon.setVisible(true);
    // source line 416, bytecode pc 152
    this.m_originalPriceLab.setVisible(true);
    // source line 417, bytecode pc 172
    this.m_discountPriceTxtLab.setVisible(true);
    // source line 418, bytecode pc 192
    this.m_discountPriceIcon.setVisible(true);
    // source line 419, bytecode pc 212
    this.m_discountPriceLab.setVisible(true);
    // source line 420, bytecode pc 232
    this.m_validNumTxtLab.setVisible(true);
    // source line 421, bytecode pc 252
    this.m_validNumLab.setVisible(true);
},
    updateCell: function() {
    var head, btn, _nameString, _descString, originalPrice, discountPrice, str, available, contentSize, pos;
    if (this.m_goodData) {
        // source line 426, bytecode pc 55
        (head = this.m_goodData.getItem().createIcon({ grade: true }));
        // source line 427, bytecode pc 88
        head.setSellTag(this.m_goodData.getTagId());
        // source line 428, bytecode pc 122
        (btn = xs.Views.Btn.createInvisibleWithChild(head));
        // source line 429, bytecode pc 155
        btn.setPosition(this.m_icon.getPosition());
        // source line 430, bytecode pc 190
        btn.setOnClickCallBack(this.detailCallback.bind(this));
        // source line 431, bytecode pc 207
        btn.setSwallowTouch(false);
        // source line 432, bytecode pc 224
        btn.setZoomOnTouchDown(false);
        // source line 433, bytecode pc 262
        xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
        // source line 434, bytecode pc 296
        xs.Utils.Node.safeRemoveChild(this.m_icon);
        // source line 435, bytecode pc 306
        (this.m_icon = btn);
        if ((this.m_goodData.getItem().getItemType() !== xs.Models.ItemType_Gift)) {
            // source line 438, bytecode pc 375
            this.m_icon.setEnabled(false);
        }
        // source line 442, bytecode pc 457
        (_nameString = ((this.m_goodData.getItemTitle() != "") ? this.m_goodData.getItemTitle() : this.m_goodData.getItem().getNameString()));
        // source line 443, bytecode pc 539
        (_descString = ((this.m_goodData.getItemDesc() != "") ? this.m_goodData.getItemDesc() : this.m_goodData.getItem().getDescString()));
        // source line 445, bytecode pc 561
        this.m_nameLab.setString(_nameString);
        // source line 447, bytecode pc 583
        this.m_descLab.setString(_descString);
        // source line 451, bytecode pc 604
        (originalPrice = this.m_goodData.getOriginalPrice());
        // source line 452, bytecode pc 625
        (discountPrice = this.m_goodData.getPrice());
        if ((originalPrice === discountPrice)) {
            // source line 454, bytecode pc 673
            (str = xs.Tools.String.createString("str_Store_Price"));
            // source line 455, bytecode pc 695
            this.m_originalPriceTxtLab.setString(str);
            // source line 456, bytecode pc 731
            xs.Utils.Node.fastSetVisible(this.m_discountPriceTxtLab, false);
            // source line 457, bytecode pc 767
            xs.Utils.Node.fastSetVisible(this.m_discountPriceIcon, false);
            // source line 458, bytecode pc 803
            xs.Utils.Node.fastSetVisible(this.m_discountPriceLab, false);
            // source line 460, bytecode pc 825
            this.m_originalPriceLab.setString(originalPrice);
            // source line 461, bytecode pc 845
            this.m_yuanjiaHuaxian.setVisible(false);
        } else {
            // source line 463, bytecode pc 886
            (str = xs.Tools.String.createString("str_Store_originPrice"));
            // source line 464, bytecode pc 908
            this.m_originalPriceTxtLab.setString(str);
            // source line 465, bytecode pc 944
            xs.Utils.Node.fastSetVisible(this.m_discountPriceTxtLab, true);
            // source line 466, bytecode pc 980
            xs.Utils.Node.fastSetVisible(this.m_discountPriceIcon, true);
            // source line 467, bytecode pc 1016
            xs.Utils.Node.fastSetVisible(this.m_discountPriceLab, true);
            // source line 469, bytecode pc 1052
            this.m_originalPriceLab.setString(this.m_goodData.getOriginalPrice());
            // source line 470, bytecode pc 1088
            this.m_discountPriceLab.setString(this.m_goodData.getPrice());
            // source line 472, bytecode pc 1108
            this.m_yuanjiaHuaxian.setVisible(true);
        }
        if ((this.m_goodData.getPurchaseNum() === -1)) {
            // source line 476, bytecode pc 1169
            xs.Utils.Node.fastSetVisible(this.m_validNumTxtLab, false);
            // source line 477, bytecode pc 1205
            xs.Utils.Node.fastSetVisible(this.m_validNumLab, false);
        } else {
            // source line 479, bytecode pc 1246
            xs.Utils.Node.fastSetVisible(this.m_validNumTxtLab, true);
            // source line 480, bytecode pc 1282
            xs.Utils.Node.fastSetVisible(this.m_validNumLab, true);
            // source line 481, bytecode pc 1321
            (available = (this.m_goodData.getPurchaseNum() - this.m_goodData.getPurchasedNum()));
            // source line 482, bytecode pc 1367
            this.m_validNumLab.setString(((available + "/") + this.m_goodData.getPurchaseNum()));
        }
        // source line 485, bytecode pc 1403
        (str = xs.Tools.String.createString("str_Store_buy"));
        // source line 486, bytecode pc 1441
        xs.Tools.UI.setButtonTitle(this.m_btn, str);
        if (this.m_goodData.isPurchased()) {
            // source line 490, bytecode pc 1483
            this.m_btn.setEnabled(true);
        } else {
            // source line 494, bytecode pc 1508
            this.m_btn.setEnabled(false);
        }
        if ((this.m_goodData.getCloseTime() > -1)) {
            if (!this.closeTimeLabel) {
                // source line 500, bytecode pc 1584
                (this.closeTimeLabel = xs.Factorys.Label.createByStyleId("LS_liebiaoInf2"));
                // source line 507, bytecode pc 1718
                xs.Utils.Node.attachNodes(this, this.closeTimeLabel, { desc: "lb", offset: cc.p(this.m_btn.getPositionX(), (this.m_btn.getPositionY() + 50)) }, { zOrder: 12, tag: 12 });
            }
            // source line 511, bytecode pc 1738
            this.closeTimeLabel.setVisible(true);
            // source line 512, bytecode pc 1751
            this.updateCloseTimeLabel();
        } else {
            if (this.closeTimeLabel) {
                // source line 516, bytecode pc 1787
                this.closeTimeLabel.setVisible(false);
            }
        }
        // source line 521, bytecode pc 1832
        (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
        // source line 526, bytecode pc 1935
        xs.Utils.Node.attachNodes(head, this.hintPoint, { desc: "rt", offset: cc.p(38, 38) }, { zOrder: 12, tag: 12 });
        if ((this.m_goodData.isPurchased() && ((this.m_goodData.getItem().getItemType() == xs.Models.ItemType_Gift) && this.m_goodData.getIsNotice()))) {
        } else {
            // source line 535, bytecode pc 2055
            this.hintPoint.setVisible(false);
        }
        // source line 539, bytecode pc 2076
        (contentSize = this.m_originalPriceTxtLab.getContentSize());
        // source line 540, bytecode pc 2097
        (pos = this.m_originalPriceTxtLab.getPosition());
        // source line 541, bytecode pc 2162
        this.m_originalPriceIcon.setPosition(cc.p(((pos.x + contentSize.width) - 8), pos.y));
        // source line 542, bytecode pc 2183
        (contentSize = this.m_originalPriceIcon.getContentSize());
        // source line 543, bytecode pc 2204
        (pos = this.m_originalPriceIcon.getPosition());
        // source line 544, bytecode pc 2252
        this.m_originalPriceLab.setPosition(((pos.x + contentSize.width) - 2), pos.y);
        // source line 546, bytecode pc 2273
        (contentSize = this.m_discountPriceTxtLab.getContentSize());
        // source line 547, bytecode pc 2294
        (pos = this.m_discountPriceTxtLab.getPosition());
        // source line 548, bytecode pc 2359
        this.m_discountPriceIcon.setPosition(cc.p(((pos.x + contentSize.width) - 8), pos.y));
        // source line 549, bytecode pc 2380
        (contentSize = this.m_discountPriceIcon.getContentSize());
        // source line 550, bytecode pc 2401
        (pos = this.m_discountPriceIcon.getPosition());
        // source line 551, bytecode pc 2466
        this.m_discountPriceLab.setPosition(cc.p(((pos.x + contentSize.width) - 2), pos.y));
        // source line 553, bytecode pc 2487
        (contentSize = this.m_validNumTxtLab.getContentSize());
        // source line 554, bytecode pc 2508
        (pos = this.m_validNumTxtLab.getPosition());
        // source line 555, bytecode pc 2570
        this.m_validNumLab.setPosition(cc.p((pos.x + contentSize.width), pos.y));
    }
},
    detailCallback: function() {
    if (this.m_listener) {
        // source line 562, bytecode pc 35
        this.m_listener.goodDetailCallback(this.m_goodData);
    } else {
        // source line 564, bytecode pc 69
        xs.warn("detailCallback", "need m_listener");
    }
},
    centerBtnCallback: function() {
    if (this.m_listener) {
        // source line 570, bytecode pc 35
        this.m_listener.centerBtnCallback(this.m_goodData);
    }
},
    updateCloseTimeLabel: function() {
    var strRealTime;
    if (this.closeTimeLabel) {
        if ((this.m_goodData.getCloseTime() > -1)) {
            // source line 578, bytecode pc 78
            (strRealTime = xs.Utils.convertSecondToTime(this.m_goodData.getCloseTime()));
            // source line 579, bytecode pc 106
            this.closeTimeLabel.setString(("" + strRealTime));
        }
    }
}
}));
// source line 587, bytecode pc 948
(xs.Views.StoreItemCell.cfg = { m_icon: { priority: -1 } });
// source line 591, bytecode pc 974
(xs.Views.StoreItemCell.create = function() {
    var cell;
    // source line 592, bytecode pc 23
    (cell = new xs.Views.StoreItemCell());
    if ((cell && cell.init())) {
        // source line 594, bytecode pc 55
        return cell;
    }
    // source line 596, bytecode pc 57
    return null;
});
