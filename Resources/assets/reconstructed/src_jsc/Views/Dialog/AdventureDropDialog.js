// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AdventureDropDialog.js:1
// source line 36, bytecode pc 103
(xs.Views.Dialog.AdventureDropDialog = xs.Views.HungerLayer.extend({
    name: "AdventureDropDialog",
    init: function(data) {
    var _title, _btn_txt, showList;
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 20
    (this.m_baseTouchPriority = 0);
    // source line 11, bytecode pc 28
    (this.m_buySuccessPopLayer = null);
    // source line 12, bytecode pc 67
    (_title = xs.Tools.String.createString(data.title));
    // source line 13, bytecode pc 103
    (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    // source line 15, bytecode pc 123
    (this.m_otherData = data.otherData.RandEvent);
    // source line 16, bytecode pc 162
    (showList = xs.Views.AdventrueDropList.create(data.dropData));
    // source line 18, bytecode pc 211
    (this.m_buySuccessPopLayer = xs.Views.MessagePopView.create(xs.Views.MessagePopViewType_One));
    // source line 19, bytecode pc 233
    this.m_buySuccessPopLayer.setTitle(_title);
    // source line 20, bytecode pc 255
    this.m_buySuccessPopLayer.setContentNode(showList);
    // source line 21, bytecode pc 275
    this.m_buySuccessPopLayer.setListener(this);
    // source line 22, bytecode pc 297
    this.m_buySuccessPopLayer.setCenterBtnTxt(_btn_txt);
    // source line 23, bytecode pc 361
    xs.Utils.Node.attachNodes(this, this.m_buySuccessPopLayer, null, xs.Cfg.Scene.CommonScene.Dialog);
},
    setBaseTouchPriority: function(priority) {
    // source line 26, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 27, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 28, bytecode pc 56
    this.m_buySuccessPopLayer.setBaseTouchPriority((this.m_baseTouchPriority - 1));
},
    centerBtnCallback: function() {
    // source line 31, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((this.m_otherData.length != 0)) {
        // source line 33, bytecode pc 95
        xs.Views.Mgr.showDialogByName("RandEvent", { RandEvent: this.m_otherData });
    }
},
    closeCallback: function() {
    // source line 37, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((this.m_otherData.length != 0)) {
        // source line 39, bytecode pc 95
        xs.Views.Mgr.showDialogByName("RandEvent", { RandEvent: this.m_otherData });
    }
}
}));
// source line 46, bytecode pc 183
xs.Views.Mgr.registerDialog("AdventureDropDialog", { "class": xs.Views.Dialog.AdventureDropDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 108, bytecode pc 317
(xs.Views.AdventrueDropList = cc.Node.extend({
    ctor: function() {
    // source line 53, bytecode pc 12
    this._super();
    // source line 54, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(dataSource) {
    if (!this._super()) {
        // source line 58, bytecode pc 19
        return false;
    }
    // source line 63, bytecode pc 27
    (this.m_tableView = null);
    // source line 64, bytecode pc 36
    (this.m_maxLine = 3);
    // source line 65, bytecode pc 46
    (this.m_dataSource = dataSource);
    // source line 66, bytecode pc 64
    (this.m_realLine = this.m_dataSource.length);
    // source line 67, bytecode pc 72
    (this.m_tableViewLine = 0);
    // source line 68, bytecode pc 114
    (this.m_tableViewLine = ((this.m_realLine > this.m_maxLine) ? this.m_maxLine : this.m_realLine));
    // source line 70, bytecode pc 161
    this.setContentSize(cc.size(462, ((110 * this.m_tableViewLine) + 20)));
    // source line 72, bytecode pc 225
    (this.m_tableView = cc.TableView.create(this, cc.size(462, ((110 * this.m_tableViewLine) + 20))));
    // source line 73, bytecode pc 245
    this.m_tableView.setDelegate(this);
    // source line 74, bytecode pc 274
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 75, bytecode pc 303
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 76, bytecode pc 342
    this.m_tableView.setAnchorPoint(cc.p(0, 0));
    // source line 78, bytecode pc 378
    xs.Utils.Node.attachNodes(this, this.m_tableView);
    // source line 80, bytecode pc 380
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 83, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 84, bytecode pc 34
    this.m_tableView.setTouchPriority(this.m_baseTouchPriority);
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 92, bytecode pc 23
    return cc.size(462, 110);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    try {
        // source line 96, bytecode pc 18
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 98, bytecode pc 57
            (cell = xs.Views.AdventureDropListCell.create());
        }
        // source line 100, bytecode pc 83
        cell.setCellData(this.m_dataSource[idx]);
        // source line 101, bytecode pc 87
        return cell;
    } catch (e) {
        // source line 103, bytecode pc 129
        xs.warnException("AdventureDropListCell", e);
        /* TODO_BYTECODE pc=130 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    numberOfCellsInTableView: function(table) {
    // source line 109, bytecode pc 6
    return this.m_realLine;
}
}));
// source line 113, bytecode pc 343
(xs.Views.AdventrueDropList.create = function(dataSource) {
    var list;
    // source line 114, bytecode pc 23
    (list = new xs.Views.AdventrueDropList());
    if ((list && list.init(dataSource))) {
        // source line 116, bytecode pc 59
        return list;
    }
    // source line 118, bytecode pc 61
    return null;
});
// source line 174, bytecode pc 516
(xs.Views.AdventureDropListCell = cc.TableViewCell.extend({
    cfg: { head: { tag: 111 } },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    draw: function(ctx) {
    // source line 134, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 137, bytecode pc 12
    this._super();
    // source line 138, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 142, bytecode pc 19
        return false;
    }
    // source line 144, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 145, bytecode pc 35
    (this.m_cellData = null);
    // source line 146, bytecode pc 43
    (this.m_type = null);
    // source line 148, bytecode pc 51
    (this.m_ccbNode = null);
    // source line 149, bytecode pc 59
    (this.m_icon = null);
    // source line 150, bytecode pc 67
    (this.m_nameLab = null);
    // source line 151, bytecode pc 75
    (this.m_numTxtLab = null);
    // source line 152, bytecode pc 83
    (this.m_numLab = null);
    // source line 154, bytecode pc 120
    this.setContentSize(cc.size(320, 110));
    // source line 156, bytecode pc 171
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.ItemShowListCell, this));
    // source line 157, bytecode pc 207
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 159, bytecode pc 269
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.AdventureDropListCell.cfg.ccbCfg, this);
    // source line 161, bytecode pc 271
    return true;
},
    setBaseTouchPriority: function(priority) {
    var _head;
    // source line 164, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 165, bytecode pc 47
    (_head = this.m_icon.getChildByTag(this.cfg.head.tag));
    if (_head) {
        // source line 167, bytecode pc 108
        _head.setTouchPriority((this.m_baseTouchPriority + xs.Views.AdventureDropListCell.cfg.m_icon.priority));
    }
},
    setCellData: function(data) {
    // source line 171, bytecode pc 9
    (this.m_cellData = data);
    // source line 172, bytecode pc 22
    this.updateView();
},
    updateView: function() {
    var _add, _head, contentSize, pos;
    // source line 176, bytecode pc 14
    (_add = this.m_cellData.model);
    // source line 178, bytecode pc 32
    (_head = _add.getIcon());
    // source line 179, bytecode pc 65
    _head.setPosition(this.m_icon.getPosition());
    // source line 180, bytecode pc 103
    xs.Utils.Node.attachNodes(this.m_ccbNode, _head);
    // source line 181, bytecode pc 137
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 182, bytecode pc 169
    _head.setTag(this.cfg.head.tag);
    // source line 183, bytecode pc 179
    (this.m_icon = _head);
    // source line 186, bytecode pc 212
    this.m_nameLab.setString(_add.getName());
    // source line 187, bytecode pc 245
    this.m_numLab.setString(_add.getNum());
    // source line 189, bytecode pc 266
    (contentSize = this.m_numTxtLab.getContentSize());
    // source line 190, bytecode pc 287
    (pos = this.m_numTxtLab.getPosition());
    // source line 191, bytecode pc 349
    this.m_numLab.setPosition(cc.p((pos.x + contentSize.width), pos.y));
}
}));
// source line 197, bytecode pc 542
(xs.Views.AdventureDropListCell.create = function() {
    var cell;
    // source line 198, bytecode pc 23
    (cell = new xs.Views.AdventureDropListCell());
    if ((cell && cell.init())) {
        // source line 200, bytecode pc 55
        return cell;
    }
    // source line 202, bytecode pc 57
    return null;
});
// source line 227, bytecode pc 775
(xs.Views.AdventureDropListCell.cfg = {
    ccbCfg: [
        { name: "m_icon", tag: 10 },
        { name: "m_nameLab", tag: 11, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_numTxtLab", tag: 12, type: "ls", id: "LS_liebiaoInf", stringId: "str_Worship_num" },
        { name: "m_numLab", tag: 13, type: "ls", id: "LS_liebiaoInf2" }
    ],
    m_icon: { priority: -1 }
});
