// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ItemShowList.js:1
// source line 9, bytecode pc 16
(xs.Views.ItemShowListType_Item = 1);
// source line 10, bytecode pc 34
(xs.Views.ItemShowListType_Add = 2);
// source line 11, bytecode pc 52
(xs.Views.ItemShowListType_Good = 3);
// source line 12, bytecode pc 70
(xs.Views.ItemShowListType_Equipment = 4);
// source line 106, bytecode pc 253
(xs.Views.ItemShowListCell = cc.TableViewCell.extend({
    cfg: { head: { tag: 111 } },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    draw: function(ctx) {
    // source line 25, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 28, bytecode pc 12
    this._super();
    // source line 29, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 33, bytecode pc 19
        return false;
    }
    // source line 35, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 36, bytecode pc 35
    (this.m_cellData = null);
    // source line 37, bytecode pc 43
    (this.m_type = null);
    // source line 39, bytecode pc 51
    (this.m_ccbNode = null);
    // source line 40, bytecode pc 59
    (this.m_icon = null);
    // source line 41, bytecode pc 67
    (this.m_nameLab = null);
    // source line 42, bytecode pc 75
    (this.m_numTxtLab = null);
    // source line 43, bytecode pc 83
    (this.m_numLab = null);
    // source line 45, bytecode pc 120
    this.setContentSize(cc.size(320, 110));
    // source line 47, bytecode pc 171
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.ItemShowListCell, this));
    // source line 48, bytecode pc 207
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 50, bytecode pc 269
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.ItemShowListCell.cfg.ccbCfg, this);
    // source line 52, bytecode pc 271
    return true;
},
    setBaseTouchPriority: function(priority) {
    var _head;
    // source line 55, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 59, bytecode pc 47
    (_head = this.m_icon.getChildByTag(this.cfg.head.tag));
    if (_head) {
        // source line 61, bytecode pc 108
        _head.setTouchPriority((this.m_baseTouchPriority + xs.Views.ItemShowListCell.cfg.m_icon.priority));
    }
},
    setCellData: function(data, type) {
    // source line 65, bytecode pc 9
    (this.m_cellData = data);
    // source line 66, bytecode pc 19
    (this.m_type = type);
    // source line 67, bytecode pc 32
    this.updateView();
},
    showParticulars: function() {
    var _add, iconType, _id, _model;
    // source line 71, bytecode pc 9
    (_add = this.m_cellData);
    // source line 74, bytecode pc 21
    (iconType = _add.m_addType);
    if (((iconType == xs.Constant_ObjType_Equipment) || (iconType == xs.Constant_ObjType_EquipmentPiece))) {
        // source line 79, bytecode pc 72
        (_id = _add.m_id);
        // source line 80, bytecode pc 106
        (_model = xs.Models.Equipment.createWithBase(_id));
        // source line 82, bytecode pc 154
        xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: _model });
    } else {
        if (((iconType == xs.Constant_ObjType_Skill) || (iconType == xs.Constant_ObjType_SkillPiece))) {
            // source line 87, bytecode pc 210
            (_id = _add.m_id);
            // source line 88, bytecode pc 244
            (_model = xs.Models.Skill.createWithBase(_id));
            // source line 90, bytecode pc 292
            xs.Views.Mgr.showDialogByName("SkillNoPanel", { skillData: _model });
        } else {
            if (((iconType == xs.Constant_ObjType_General) || (iconType == xs.Constant_ObjType_GeneralSoul))) {
                // source line 96, bytecode pc 348
                (_id = _add.m_id);
                // source line 97, bytecode pc 382
                (_model = xs.Models.General.createWithBase(_id));
                // source line 99, bytecode pc 430
                xs.Views.Mgr.showDialogByName("GeneralHDWithoutSurrend", { generalData: _model });
            }
        }
    }
},
    updateView: function() {
    var _add, _head, icon, contentSize, pos;
    // source line 109, bytecode pc 9
    (_add = this.m_cellData);
    // source line 111, bytecode pc 27
    (_head = _add.createHeadView());
    // source line 112, bytecode pc 61
    (icon = xs.Views.Btn.createInvisibleWithChild(_head));
    // source line 113, bytecode pc 94
    icon.setPosition(this.m_icon.getPosition());
    // source line 114, bytecode pc 132
    xs.Utils.Node.attachNodes(this.m_ccbNode, icon);
    // source line 115, bytecode pc 166
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 117, bytecode pc 201
    _head.setOnClickCallBack(this.showParticulars.bind(this));
    // source line 118, bytecode pc 233
    _head.setTag(this.cfg.head.tag);
    // source line 121, bytecode pc 243
    (this.m_icon = icon);
    // source line 122, bytecode pc 276
    this.m_nameLab.setString(_add.getNameString());
    // source line 124, bytecode pc 283
    switch (this.m_type) {
        case xs.Views.ItemShowListType_Item:
        // source line 126, bytecode pc 401
        this.m_numTxtLab.setString(_add.getTxtLabString());
        // source line 127, bytecode pc 434
        this.m_numLab.setString(_add.getShowNumString());
        break;
        case xs.Views.ItemShowListType_Equipment:
        // source line 130, bytecode pc 472
        this.m_numTxtLab.setString(_add.getTxtLabString());
        // source line 131, bytecode pc 505
        this.m_numLab.setString(_add.getShowNumString());
        break;
        case xs.Views.ItemShowListType_Add:
        // source line 134, bytecode pc 543
        this.m_numTxtLab.setString(_add.getTxtLabString());
        // source line 135, bytecode pc 576
        this.m_numLab.setString(_add.getShowNumString());
        break;
        case xs.Views.ItemShowListType_Good:
        break;
        default:
        break;
    }
    // source line 143, bytecode pc 612
    (contentSize = this.m_numTxtLab.getContentSize());
    // source line 144, bytecode pc 633
    (pos = this.m_numTxtLab.getPosition());
    // source line 145, bytecode pc 695
    this.m_numLab.setPosition(cc.p((pos.x + contentSize.width), pos.y));
}
}));
// source line 151, bytecode pc 279
(xs.Views.ItemShowListCell.create = function() {
    var cell;
    // source line 152, bytecode pc 23
    (cell = new xs.Views.ItemShowListCell());
    if ((cell && cell.init())) {
        // source line 154, bytecode pc 55
        return cell;
    }
    // source line 156, bytecode pc 57
    return null;
});
// source line 180, bytecode pc 502
(xs.Views.ItemShowListCell.cfg = {
    ccbCfg: [
        { name: "m_icon", tag: 10 },
        { name: "m_nameLab", tag: 11, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_numTxtLab", tag: 12, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_numLab", tag: 13, type: "ls", id: "LS_liebiaoInf2" }
    ],
    m_icon: { priority: -1 }
});
// source line 268, bytecode pc 646
(xs.Views.ItemShowList = cc.Node.extend({
    ctor: function() {
    // source line 187, bytecode pc 12
    this._super();
    // source line 188, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(dataSource, type) {
    if (!this._super()) {
        // source line 192, bytecode pc 19
        return false;
    }
    // source line 195, bytecode pc 27
    (this.m_tableView = null);
    // source line 196, bytecode pc 36
    (this.m_maxLine = 3);
    // source line 197, bytecode pc 46
    (this.m_dataSource = dataSource);
    // source line 198, bytecode pc 56
    (this.m_type = type);
    // source line 199, bytecode pc 74
    (this.m_realLine = this.m_dataSource.length);
    // source line 201, bytecode pc 82
    (this.m_tableViewLine = 0);
    // source line 202, bytecode pc 124
    (this.m_tableViewLine = ((this.m_realLine > this.m_maxLine) ? this.m_maxLine : this.m_realLine));
    // source line 204, bytecode pc 171
    this.setContentSize(cc.size(462, ((110 * this.m_tableViewLine) + 20)));
    // source line 206, bytecode pc 235
    (this.m_tableView = cc.TableView.create(this, cc.size(462, ((110 * this.m_tableViewLine) + 20))));
    // source line 207, bytecode pc 255
    this.m_tableView.setDelegate(this);
    // source line 208, bytecode pc 284
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 209, bytecode pc 313
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 210, bytecode pc 352
    this.m_tableView.setAnchorPoint(cc.p(0, 0));
    // source line 212, bytecode pc 388
    xs.Utils.Node.attachNodes(this, this.m_tableView);
    // source line 214, bytecode pc 390
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 217, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 218, bytecode pc 34
    this.m_tableView.setTouchPriority(this.m_baseTouchPriority);
    // source line 219, bytecode pc 58
    this.setChildTouchPriority(this.m_tableView, priority);
},
    setChildTouchPriority: function(node, priority) {
    var _childsTmp, j, m_childsTmp;
    // source line 223, bytecode pc 17
    (_childsTmp = node.getChildren());
    // source line 224, bytecode pc 22
    (j = 0);
    while ((j < _childsTmp.length)) {
        if (_childsTmp[j].setBaseTouchPriority) {
            // source line 226, bytecode pc 70
            _childsTmp[j].setBaseTouchPriority((priority - 1));
        }
        // source line 229, bytecode pc 92
        (m_childsTmp = _childsTmp[j].getChildren());
        if ((m_childsTmp && (m_childsTmp != []))) {
            // source line 232, bytecode pc 140
            this.setChildTouchPriority(_childsTmp[j], priority);
        }
        // source line 224, bytecode pc 154
        (j = (+j + 1));
    }
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 242, bytecode pc 17
    (idx = cell.getIdx());
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 247, bytecode pc 23
    return cc.size(462, 110);
},
    tableCellAtIndex: function(table, idx) {
    var cell, data;
    try {
        // source line 253, bytecode pc 18
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 255, bytecode pc 57
            (cell = xs.Views.ItemShowListCell.create());
        }
        // source line 257, bytecode pc 71
        (data = this.m_dataSource[idx]);
        // source line 260, bytecode pc 97
        cell.setCellData(data, this.m_type);
        // source line 261, bytecode pc 101
        return cell;
    } catch (e) {
        // source line 263, bytecode pc 143
        xs.warnException("ItemShowList", e);
        /* TODO_BYTECODE pc=144 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    numberOfCellsInTableView: function(table) {
    // source line 269, bytecode pc 6
    return this.m_realLine;
}
}));
// source line 273, bytecode pc 672
(xs.Views.ItemShowList.create = function(dataSource, type) {
    var list;
    // source line 274, bytecode pc 23
    (list = new xs.Views.ItemShowList());
    if ((list && list.init(dataSource, type))) {
        // source line 277, bytecode pc 63
        return list;
    }
    // source line 279, bytecode pc 65
    return null;
});
