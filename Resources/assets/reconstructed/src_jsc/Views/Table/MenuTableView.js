// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/MenuTableView.js:1
// source line 68, bytecode pc 93
(xs.Views.MenuTableViewCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 6, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(cfg, cellSize) {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 27
    (this.isSelected = false);
    // source line 19, bytecode pc 48
    this.updateCell(cfg, cellSize);
    // source line 21, bytecode pc 50
    return true;
},
    updateCell: function(cfg, cellSize) {
    var bg;
    // source line 25, bytecode pc 12
    this.removeAllChildren();
    // source line 26, bytecode pc 63
    (this.m_headIcon = xs.Factorys.Sprite.create(cfg.imgName, cfg.area));
    // source line 27, bytecode pc 176
    xs.Utils.Node.attachNodes(this, this.m_headIcon, {
    desc: "lb",
    offset: { x: (cellSize.width / 2), y: ((this.m_headIcon.getContentSize().height / 2) + 4) }
});
    // source line 29, bytecode pc 221
    (bg = xs.Factorys.Sprite.create("GuildDialog_weixuanzhong", cfg.area));
    // source line 30, bytecode pc 334
    xs.Utils.Node.attachNodes(this, bg, { desc: "lb", offset: { x: (cellSize.width / 2), y: (cellSize.height / 2) } }, { zOrder: -2, tag: 0 });
    if ((cfg.tag == "unionDonate")) {
        if (xs.Profile.GameData.Mgr.getInstance().Hint.getHintUnionForType(xs.Constant_HintType_Union_Donate)) {
            // source line 35, bytecode pc 461
            (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
            // source line 36, bytecode pc 482
            this.hintPoint.setZOrder(10);
            // source line 37, bytecode pc 567
            xs.Utils.Node.attachNodes(this.m_headIcon, this.hintPoint, { desc: "rt", offset: cc.p(-20, -10) });
        }
    } else {
        if ((cfg.tag == "unionShop")) {
            if (xs.Profile.GameData.Mgr.getInstance().Hint.getHintUnionForType(xs.Constant_HintType_Union_Shop)) {
                // source line 43, bytecode pc 699
                (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
                // source line 44, bytecode pc 720
                this.hintPoint.setZOrder(10);
                // source line 45, bytecode pc 805
                xs.Utils.Node.attachNodes(this.m_headIcon, this.hintPoint, { desc: "rt", offset: cc.p(-20, -10) });
            }
        } else {
            if ((cfg.tag == "unionDepot")) {
                if (xs.Profile.GameData.Mgr.getInstance().Hint.getHintUnionForType(xs.Constant_HintType_Union_Depot)) {
                    // source line 52, bytecode pc 937
                    (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
                    // source line 53, bytecode pc 958
                    this.hintPoint.setZOrder(10);
                    // source line 54, bytecode pc 1043
                    xs.Utils.Node.attachNodes(this.m_headIcon, this.hintPoint, { desc: "rt", offset: cc.p(-20, -10) });
                }
            } else {
                if ((cfg.tag == "unionWar")) {
                    if (xs.Profile.GameData.Mgr.getInstance().Hint.getHintUnionForType(xs.Constant_HintType_UnionWar_signup)) {
                        // source line 60, bytecode pc 1175
                        (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
                        // source line 61, bytecode pc 1196
                        this.hintPoint.setZOrder(10);
                        // source line 62, bytecode pc 1281
                        xs.Utils.Node.attachNodes(this.m_headIcon, this.hintPoint, { desc: "rt", offset: cc.p(-20, -10) });
                    }
                }
            }
        }
    }
},
    addSelectedIcon: function(icon, cellSize, zOrder, tag) {
    // source line 69, bytecode pc 115
    xs.Utils.Node.attachNodes(this, icon, { desc: "lb", offset: { x: (cellSize.width / 2), y: (cellSize.height / 2) } }, { zOrder: zOrder, tag: tag });
}
}));
// source line 73, bytecode pc 119
(xs.Views.MenuTableViewCell.create = function(cfg, cellSize) {
    var ret;
    // source line 74, bytecode pc 23
    (ret = new xs.Views.MenuTableViewCell());
    if ((ret && ret.init(cfg, cellSize))) {
        // source line 76, bytecode pc 63
        return ret;
    }
    // source line 79, bytecode pc 92
    xs.assert(false, "xs.Views.MenuTableViewCell.create fail!", ret);
    // source line 80, bytecode pc 94
    return null;
});
// source line 243, bytecode pc 328
(xs.Views.Table.MenuTableView = xs.Views.Table.BaseTableView.extend({
    name: "MenuTableView",
    init: function(param) {
    // source line 89, bytecode pc 14
    (this.viewSize = param.viewSize);
    // source line 90, bytecode pc 29
    (this.cellSize = param.cellSize);
    // source line 91, bytecode pc 44
    (this.selectedImgCfg = param.selectedImgCfg);
    // source line 92, bytecode pc 52
    (this.lastSelectIdx = 0);
    if (!this._super()) {
        // source line 96, bytecode pc 72
        return false;
    }
    // source line 99, bytecode pc 87
    (this.arrayModel = param.itemCfg);
    // source line 101, bytecode pc 95
    (this.m_cell_cache_use = true);
    // source line 103, bytecode pc 119
    this.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 104, bytecode pc 143
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 106, bytecode pc 204
    (this.m_selectedIcon = xs.Factorys.Sprite.create(param.selectedImgCfg.imgName, param.selectedImgCfg.area));
    // source line 107, bytecode pc 222
    this.m_selectedIcon.retain();
    // source line 108, bytecode pc 224
    return true;
},
    onExit: function() {
    // source line 112, bytecode pc 17
    this.m_selectedIcon.release();
    // source line 113, bytecode pc 30
    this._super();
},
    setSelectedMenuIdx: function(idx) {
    // source line 117, bytecode pc 9
    (this.lastSelectIdx = idx);
    // source line 118, bytecode pc 22
    this.reloadData();
},
    setClickCallBack: function(callBack) {
    // source line 123, bytecode pc 9
    (this._callBack = callBack);
},
    refreshData: function() {
},
    createCell: function(idx) {
    // source line 134, bytecode pc 44
    return xs.Views.MenuTableViewCell.create(this.arrayModel[idx], this.cellSize);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    try {
        if (this.m_cell_cache_use) {
            // source line 140, bytecode pc 16
            (cell = null);
            if (this.m_cell_cache[idx]) {
                // source line 142, bytecode pc 45
                (cell = this.m_cell_cache[idx]);
                // source line 143, bytecode pc 78
                cell.updateCell(this.arrayModel[idx], this.cellSize);
            } else {
                // source line 146, bytecode pc 103
                (cell = this.createCell(idx));
                // source line 147, bytecode pc 136
                cell.updateCell(this.arrayModel[idx], this.cellSize);
                // source line 149, bytecode pc 150
                (this.m_cell_cache[idx] = cell);
                // source line 150, bytecode pc 172
                this.m_cell_cache[idx].retain();
            }
            if ((this.lastSelectIdx == idx)) {
                // source line 155, bytecode pc 221
                xs.Utils.Node.safeRemoveChild(this.m_selectedIcon);
                // source line 156, bytecode pc 274
                cell.addSelectedIcon(this.m_selectedIcon, this.cellSize, this.selectedImgCfg.zOrder, this.selectedImgCfg.tag);
            }
            // source line 158, bytecode pc 278
            return cell;
        }
    } catch (e) {
        // source line 161, bytecode pc 310
        this.warnException(e);
        /* TODO_BYTECODE pc=311 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 164, bytecode pc 323
    return cell;
},
    makeViewSize: function() {
    // source line 169, bytecode pc 40
    return cc.size(this.viewSize.width, this.viewSize.height);
},
    makeCellSize: function() {
    // source line 173, bytecode pc 40
    return cc.size(this.cellSize.width, this.cellSize.height);
},
    tableCellTouched: function(table, cell) {
    var isCallbackOk;
    // source line 177, bytecode pc 37
    xs.log(("点击->idx = " + cell.getIdx()));
    if ((cell.getIdx() != this.lastSelectIdx)) {
        if ((this._callBack != null)) {
            // source line 181, bytecode pc 129
            (isCallbackOk = this._callBack(this.arrayModel[cell.getIdx()], cell.getIdx()));
            if (isCallbackOk) {
                // source line 183, bytecode pc 171
                this.selectHeadIcon(table, cell.getIdx(), false);
            }
        }
    }
},
    selectHeadIcon: function(table, index, isCallBack) {
    var cell;
    // source line 192, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_selectedIcon);
    // source line 195, bytecode pc 57
    (cell = this.tableCellAtIndex(table, index));
    // source line 196, bytecode pc 78
    (this.lastSelectIdx = cell.getIdx());
    // source line 197, bytecode pc 131
    cell.addSelectedIcon(this.m_selectedIcon, this.cellSize, this.selectedImgCfg.zOrder, this.selectedImgCfg.tag);
},
    moveMenu: function(direction) {
    var offsetOld, t;
    // source line 201, bytecode pc 15
    (offsetOld = this.getContentOffset());
    // source line 202, bytecode pc 27
    (t = offsetOld.x);
    if ((t < 0)) {
        while (1) {
            // source line 205, bytecode pc 62
            (t = (t + this.cellSize.width));
            // source line 206, bytecode pc 104
            xs.log(("offsetOld.x = " + offsetOld.x), ("t =" + t));
            if ((t > 0)) {
                break;
            }
        }
    }
    if ((direction == 0)) {
        // source line 215, bytecode pc 156
        (t = -(t - this.cellSize.width));
        if ((t == 0)) {
            // source line 217, bytecode pc 181
            (t = this.cellSize.width);
        }
    } else {
        // source line 221, bytecode pc 194
        (t = -t);
        if ((t == 0)) {
            // source line 223, bytecode pc 220
            (t = -this.cellSize.width);
        }
    }
    if ((direction == 0)) {
        if (((offsetOld.x + t) > 0)) {
            // source line 229, bytecode pc 251
            return void 0;
        }
    } else {
        if ((((offsetOld.x + t) + this.getContentSize().width) < this.viewSize.width)) {
            // source line 233, bytecode pc 305
            return void 0;
        }
    }
    // source line 236, bytecode pc 359
    this.setContentOffset(cc.p((offsetOld.x + t), offsetOld.y), true);
},
    moveToLeft: function() {
    // source line 240, bytecode pc 14
    this.moveMenu(0);
},
    moveToRight: function() {
    // source line 244, bytecode pc 14
    this.moveMenu(1);
}
}));
// source line 248, bytecode pc 359
(xs.Views.Table.MenuTableView.create = function(param) {
    var ret;
    // source line 249, bytecode pc 28
    (ret = new xs.Views.Table.MenuTableView());
    if ((ret && ret.init(param))) {
        // source line 251, bytecode pc 64
        return ret;
    }
    // source line 254, bytecode pc 93
    xs.assert(false, "xs.Views.Table.MenuTableView.create fail", ret);
    // source line 255, bytecode pc 95
    return null;
});
