// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/AllGemsListDialog.js:1
// source line 93, bytecode pc 158
(xs.Views.AllGemsListDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var gemlistArray, i, num;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 36
    (this.m_gemsList = new Array());
    // source line 18, bytecode pc 87
    (gemlistArray = xs.Profile.GameData.Mgr.getInstance().Gems.getAll());
    // source line 19, bytecode pc 92
    (i = 0);
    while ((i < gemlistArray.length)) {
        // source line 20, bytecode pc 127
        (num = (gemlistArray[i].total_num - gemlistArray[i].used_num));
        if ((num != 0)) {
            // source line 22, bytecode pc 163
            this.m_gemsList.push(gemlistArray[i]);
        }
        // source line 19, bytecode pc 177
        (i = (+i + 1));
    }
    // source line 25, bytecode pc 227
    (this.m_defaultSize = cc.size(930, 606));
    // source line 27, bytecode pc 286
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 28, bytecode pc 315
    this.m_bg.setAnchorPoint(xs.ap_c);
    // source line 29, bytecode pc 340
    this.m_bg.setContentSize(this.m_defaultSize);
    // source line 31, bytecode pc 399
    (this.m_bgCon = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 32, bytecode pc 428
    this.m_bgCon.setAnchorPoint(xs.ap_c);
    // source line 33, bytecode pc 485
    this.m_bgCon.setContentSize(cc.size(895, (this.m_defaultSize.height * 0.85)));
    // source line 35, bytecode pc 544
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c", sc: true });
    // source line 36, bytecode pc 630
    xs.Utils.Node.attachNodes(this.m_bg, this.m_bgCon, { desc: "c", offset: { x: -0, y: -30 } });
    // source line 38, bytecode pc 675
    (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithStringId("LS_huodong_title", "gems_composeTitle"));
    // source line 40, bytecode pc 757
    xs.Utils.Node.attachNodes(this.m_bg, this.m_headLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    // source line 42, bytecode pc 796
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 43, bytecode pc 879
    xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
    // source line 46, bytecode pc 916
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 45, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 49, bytecode pc 985
    (this.m_tableView = cc.TableView.create(this, cc.size(882, (this.m_defaultSize.height * 0.82))));
    // source line 50, bytecode pc 1014
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 51, bytecode pc 1055
    this.m_tableView.setPosition(cc.p(25, 24));
    // source line 52, bytecode pc 1075
    this.m_tableView.setDelegate(this);
    // source line 53, bytecode pc 1104
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 54, bytecode pc 1129
    this.m_bg.addChild(this.m_tableView);
    // source line 55, bytecode pc 1147
    this.m_tableView.reloadData();
    // source line 60, bytecode pc 1149
    return true;
},
    onEnter: function() {
    // source line 63, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 66, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 69, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 70, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 71, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 72, bytecode pc 83
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 83, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 86, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 88, bytecode pc 56
        (cell = xs.Views.AllGemsListCell.create());
    }
    // source line 90, bytecode pc 77
    cell.update(this, idx);
    // source line 91, bytecode pc 81
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 94, bytecode pc 11
    return this.m_gemsList.length;
}
}));
// source line 97, bytecode pc 184
(xs.Views.AllGemsListDialog.create = function() {
    var retObj;
    // source line 98, bytecode pc 23
    (retObj = new xs.Views.AllGemsListDialog());
    if ((retObj && retObj.init())) {
        // source line 100, bytecode pc 55
        return retObj;
    }
    // source line 102, bytecode pc 57
    return null;
});
// source line 107, bytecode pc 259
xs.Views.Mgr.registerDialog("AllGemsListDialog", { "class": xs.Views.AllGemsListDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 181, bytecode pc 653
(xs.Views.AllGemsListCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_labelName", tag: 2, type: "ls_ext", ids: [ "LS_paihangNomb", "LS_yishangzhen" ] },
        { name: "m_iconPos", tag: 1 },
        { name: "m_labelDes", tag: 3, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_labelNum", tag: 4, type: "ls_ext", ids: [ "LS_liebiaoInf", "LS_green" ] },
        { name: "m_operationBtn", tag: 5, type: "btn", id: "Btn_btn3", stringId: "gems_composeSelect" }
    ],
    draw: function(ctx) {
    // source line 121, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 125, bytecode pc 12
    this._super();
    // source line 126, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 131, bytecode pc 19
        return false;
    }
    // source line 134, bytecode pc 27
    (this.m_listener = null);
    // source line 135, bytecode pc 35
    (this.m_selectGemPosition = null);
    // source line 137, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 138, bytecode pc 51
    (this.m_labelName = null);
    // source line 139, bytecode pc 59
    (this.m_iconPos = null);
    // source line 140, bytecode pc 67
    (this.m_labelDes = null);
    // source line 141, bytecode pc 75
    (this.m_labelNum = null);
    // source line 142, bytecode pc 83
    (this.m_operationBtn = null);
    // source line 143, bytecode pc 91
    (this.m_gemList = null);
    // source line 145, bytecode pc 142
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemsReolaceSoph, this));
    // source line 146, bytecode pc 178
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 147, bytecode pc 221
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 149, bytecode pc 259
    this.m_operationBtn.setOnClickCallBack(this.onTouchCallBack.bind(this));
    // source line 150, bytecode pc 279
    this.m_operationBtn.setSwallowTouch(false);
    // source line 151, bytecode pc 299
    this.m_operationBtn.setZoomOnTouchDown(false);
    // source line 154, bytecode pc 301
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 157, bytecode pc 12
    this._super();
    // source line 158, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 161, bytecode pc 63
            (this.m_parentView = parent);
            // source line 162, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 163, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 166, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 170, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 173, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 174, bytecode pc 36
    this.m_operationBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onTouchCallBack: function() {
    // source line 178, bytecode pc 44
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GemSelect, this.m_gemList);
    // source line 179, bytecode pc 71
    xs.Views.Mgr.hideDialog();
},
    update: function(par, num) {
    var canUseNum, mIconPos;
    // source line 182, bytecode pc 9
    (this.par = par);
    // source line 183, bytecode pc 19
    (this.m_selectGemPosition = num);
    // source line 184, bytecode pc 41
    (this.m_gemList = this.par.m_gemsList[num]);
    // source line 188, bytecode pc 77
    this.m_labelName.setString(this.m_gemList.getNameString());
    // source line 189, bytecode pc 113
    this.m_labelDes.setString(this.m_gemList.getDescString());
    // source line 191, bytecode pc 140
    (canUseNum = (this.m_gemList.total_num - this.m_gemList.used_num));
    if ((canUseNum <= 0)) {
        // source line 198, bytecode pc 219
        this.m_labelNum.setStringByStrings([ xs.Tools.String.createString("gems_str_residueNum"), "0" ]);
    } else {
        // source line 200, bytecode pc 291
        this.m_labelNum.setStringByStrings([ xs.Tools.String.createString("gems_str_residueNum"), canUseNum ]);
    }
    if ((canUseNum < 3)) {
        // source line 204, bytecode pc 322
        this.m_operationBtn.setEnabled(false);
    } else {
        // source line 206, bytecode pc 347
        this.m_operationBtn.setEnabled(true);
    }
    if (!this.m_icon) {
        // source line 210, bytecode pc 380
        (mIconPos = this.m_iconPos.getPosition());
        // source line 211, bytecode pc 404
        (this.m_icon = this.m_gemList.createIcon_GradeAndAttribute());
        // source line 213, bytecode pc 445
        xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_icon);
        // source line 214, bytecode pc 467
        this.m_icon.setPosition(mIconPos);
    } else {
        // source line 216, bytecode pc 497
        this.m_icon.reloadData(this.m_gemList);
    }
}
}));
// source line 223, bytecode pc 679
(xs.Views.AllGemsListCell.create = function() {
    var cell;
    // source line 224, bytecode pc 23
    (cell = new xs.Views.AllGemsListCell());
    if ((cell && cell.init())) {
        // source line 226, bytecode pc 55
        return cell;
    }
    // source line 229, bytecode pc 57
    return null;
});
