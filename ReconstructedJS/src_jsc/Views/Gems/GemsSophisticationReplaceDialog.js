// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/GemsSophisticationReplaceDialog.js:1
// source line 94, bytecode pc 398
(xs.Views.Gems.GemsSophisticationReplaceCell = cc.TableViewCell.extend({
    ccbCfg: [
        { name: "m_labelName", tag: 2, type: "ls_ext", ids: [ "LS_paihangNomb", "LS_yishangzhen" ] },
        { name: "m_iconPos", tag: 1 },
        { name: "m_labelDes", tag: 3, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_labelQuantity", tag: 4, type: "ls_ext", ids: [ "LS_liebiaoInf", "LS_green" ] },
        { name: "m_operationBtn", tag: 5, type: "btn", id: "Btn_btn3" }
    ],
    draw: function(ctx) {
    // source line 14, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(holeIdx) {
    if (!this._super()) {
        // source line 24, bytecode pc 19
        return false;
    }
    // source line 27, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 28, bytecode pc 35
    (this.m_listener = null);
    // source line 30, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 31, bytecode pc 51
    (this.m_nameLab = null);
    // source line 32, bytecode pc 59
    (this.m_iconPos = null);
    // source line 33, bytecode pc 67
    (this.m_labelDes = null);
    // source line 34, bytecode pc 75
    (this.m_labelQuantity = null);
    // source line 35, bytecode pc 83
    (this.m_operationBtn = null);
    // source line 37, bytecode pc 91
    (this.m_type = 0);
    // source line 38, bytecode pc 101
    (this.m_holeIdx = holeIdx);
    // source line 39, bytecode pc 109
    (this.m_gemPkId = null);
    // source line 42, bytecode pc 160
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemsReolaceSoph, this));
    // source line 43, bytecode pc 196
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 46, bytecode pc 239
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 48, bytecode pc 277
    this.m_operationBtn.setOnClickCallBack(this.onTouchCallBack.bind(this));
    // source line 49, bytecode pc 297
    this.m_operationBtn.setSwallowTouch(false);
    // source line 50, bytecode pc 317
    this.m_operationBtn.setZoomOnTouchDown(false);
    // source line 52, bytecode pc 319
    return true;
},
    onTouchCallBack: function() {
    // source line 59, bytecode pc 57
    this.m_listener.replaceGemsCallBack({ type: this.m_type, holeIdx: this.m_holeIdx, gemPkId: this.m_gemPkId });
},
    setBaseTouchPriority: function(priority) {
    // source line 65, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 67, bytecode pc 36
    this.m_operationBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setListener: function(listener) {
    // source line 72, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 76, bytecode pc 12
    this._super();
    // source line 78, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 81, bytecode pc 63
            (this.m_parentView = parent);
            // source line 82, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 84, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 87, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 91, bytecode pc 12
    this._super();
},
    update: function(par, num) {
    var mThisGemId, mCellDate, mUsedNum, mUserStr, mIconPos;
    // source line 95, bytecode pc 9
    (this.par = par);
    // source line 96, bytecode pc 19
    (this.num = num);
    // source line 97, bytecode pc 34
    (mThisGemId = this.par.m_thisGemId);
    // source line 98, bytecode pc 53
    (mCellDate = this.par.m_gemsList[num]);
    // source line 100, bytecode pc 74
    (this.m_gemPkId = mCellDate.getPkId());
    if ((0 == mThisGemId)) {
        // source line 103, bytecode pc 101
        (this.m_type = xs.Constant_GemsSophistication_Inlay);
    } else {
        if ((this.m_gemPkId == mThisGemId)) {
            // source line 105, bytecode pc 138
            (this.m_type = xs.Constant_GemsSophistication_Dismantle);
        } else {
            // source line 107, bytecode pc 160
            (this.m_type = xs.Constant_GemsSophistication_Change);
        }
    }
    // source line 110, bytecode pc 178
    (mUsedNum = mCellDate.getUsedNum());
    // source line 111, bytecode pc 205
    xs.log_hsq("mUsedNum", mUsedNum);
    // source line 112, bytecode pc 214
    (mUserStr = "");
    if ((0 == mUsedNum)) {
        // source line 114, bytecode pc 233
        (mUserStr = "");
    } else {
        // source line 116, bytecode pc 287
        (mUserStr = xs.Tools.String.createStringWithArgsArray("gems_str_gemsInlayNum", [ mUsedNum ]));
    }
    // source line 118, bytecode pc 314
    xs.log_hsq("mUsedNum09", mUserStr);
    // source line 121, bytecode pc 363
    this.m_labelName.setStringByStrings([ mCellDate.getNameString(), mUserStr ]);
    // source line 123, bytecode pc 386
    xs.log_hsq("mUsedNum10");
    // source line 125, bytecode pc 419
    this.m_labelDes.setString(mCellDate.getDescString());
    // source line 126, bytecode pc 497
    this.m_labelQuantity.setStringByStrings([ xs.Tools.String.createString("gems_str_quantity"), mCellDate.getQuantity() ]);
    if ((this.m_type == xs.Constant_GemsSophistication_Inlay)) {
        // source line 130, bytecode pc 570
        this.m_operationBtn.setString(xs.Tools.String.createString("gems_str_InlayBtn"));
    } else {
        if ((this.m_type == xs.Constant_GemsSophistication_Change)) {
            // source line 132, bytecode pc 648
            this.m_operationBtn.setString(xs.Tools.String.createString("gems_str_repBtn"));
        } else {
            // source line 134, bytecode pc 704
            this.m_operationBtn.setString(xs.Tools.String.createString("gems_str_removeBtn"));
        }
    }
    // source line 136, bytecode pc 727
    xs.log_hsq("mUsedNum11");
    if (!this.m_icon) {
        // source line 140, bytecode pc 760
        (mIconPos = this.m_iconPos.getPosition());
        // source line 141, bytecode pc 781
        (this.m_icon = mCellDate.createIcon_GradeAndAttribute());
        // source line 142, bytecode pc 822
        xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_icon);
        // source line 143, bytecode pc 844
        this.m_icon.setPosition(mIconPos);
    } else {
        // source line 145, bytecode pc 871
        this.m_icon.reloadData(mCellDate);
    }
    // source line 147, bytecode pc 894
    xs.log_hsq("mUsedNum12");
}
}));
// source line 155, bytecode pc 429
(xs.Views.Gems.GemsSophisticationReplaceCell.create = function(holeIdx) {
    var cell;
    // source line 156, bytecode pc 28
    (cell = new xs.Views.Gems.GemsSophisticationReplaceCell());
    if ((cell && cell.init(holeIdx))) {
        // source line 158, bytecode pc 64
        return cell;
    }
    // source line 161, bytecode pc 66
    return null;
});
// source line 327, bytecode pc 653
(xs.Views.Gems.GemsSophisticationReplaceDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 168, bytecode pc 12
    this._super();
    // source line 169, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var mHeadStrId;
    // source line 173, bytecode pc 12
    this._super();
    // source line 175, bytecode pc 24
    (this.m_gemsList = []);
    // source line 176, bytecode pc 39
    (this.m_holeIdx = param.holeIdx);
    // source line 177, bytecode pc 54
    (this.m_thisGemId = param.gemId);
    // source line 178, bytecode pc 69
    (this.m_holeType = param.holeType);
    // source line 180, bytecode pc 99
    xs.log_hsq("this.m_thisGemId", this.m_thisGemId);
    // source line 183, bytecode pc 130
    (this.m_defaultSize = cc.size(930, 606));
    // source line 185, bytecode pc 189
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 186, bytecode pc 218
    this.m_bg.setAnchorPoint(xs.ap_c);
    // source line 187, bytecode pc 243
    this.m_bg.setContentSize(this.m_defaultSize);
    // source line 189, bytecode pc 302
    (this.m_bgCon = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 190, bytecode pc 331
    this.m_bgCon.setAnchorPoint(xs.ap_c);
    // source line 191, bytecode pc 388
    this.m_bgCon.setContentSize(cc.size(895, (this.m_defaultSize.height * 0.85)));
    // source line 193, bytecode pc 447
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c", sc: true });
    // source line 194, bytecode pc 533
    xs.Utils.Node.attachNodes(this.m_bg, this.m_bgCon, { desc: "c", offset: { x: -0, y: -30 } });
    // source line 196, bytecode pc 542
    (mHeadStrId = "gems_str_Inlay");
    if ((this.m_thisGemId != "0")) {
        // source line 198, bytecode pc 568
        (mHeadStrId = "gems_str_RepAndDismantle");
    }
    // source line 200, bytecode pc 611
    (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithStringId("LS_huodong_title", mHeadStrId));
    // source line 202, bytecode pc 693
    xs.Utils.Node.attachNodes(this.m_bg, this.m_headLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    // source line 204, bytecode pc 732
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 205, bytecode pc 815
    xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
    // source line 206, bytecode pc 853
    this.m_closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 209, bytecode pc 922
    (this.m_tableView = cc.TableView.create(this, cc.size(882, (this.m_defaultSize.height * 0.82))));
    // source line 210, bytecode pc 951
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 211, bytecode pc 992
    this.m_tableView.setPosition(cc.p(25, 24));
    // source line 212, bytecode pc 1012
    this.m_tableView.setDelegate(this);
    // source line 214, bytecode pc 1041
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 215, bytecode pc 1066
    this.m_bg.addChild(this.m_tableView);
    // source line 218, bytecode pc 1079
    this._readPlayerList();
    // source line 219, bytecode pc 1097
    this.m_tableView.reloadData();
    // source line 222, bytecode pc 1099
    return true;
},
    onCloseBtn: function() {
    // source line 227, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    _readPlayerList: function() {
    // source line 233, bytecode pc 60
    (this.m_gemsList = xs.Profile.GameData.Mgr.getInstance().Gems.getGemsListForType(this.m_holeType));
},
    onEnterTransitionDidFinish: function() {
    // source line 239, bytecode pc 12
    this._super();
    // source line 240, bytecode pc 29
    xs.log_zx();
},
    onExitTransitionDidStart: function() {
    // source line 246, bytecode pc 12
    this._super();
},
    refreshFromMenuClick: function() {
    if (this.isNeedRefresh) {
        // source line 253, bytecode pc 18
        (this.isNeedRefresh = false);
        // source line 254, bytecode pc 31
        this._readPlayerList();
    }
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    refreshPlayerList: function() {
    var pos, offset, size;
    // source line 276, bytecode pc 53
    (pos = xs.Utils.clone(this.m_tableView.getContainer().getPosition()));
    // source line 277, bytecode pc 96
    (offset = xs.Utils.clone(this.m_tableView.getContentOffset()));
    // source line 279, bytecode pc 114
    this.m_tableView.reloadData();
    // source line 281, bytecode pc 168
    (size = xs.Utils.clone(this.m_tableView.getContainer().getContentSize()));
    if ((this.m_defaultSize.height < size.height)) {
        if (((this.m_defaultSize.height - offset.y) >= size.height)) {
            // source line 284, bytecode pc 229
            return void 0;
        }
        // source line 286, bytecode pc 253
        this.m_tableView.setContentOffset(offset, 0);
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 291, bytecode pc 23
    return cc.size(882, 107);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 296, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 298, bytecode pc 44
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 300, bytecode pc 95
        (cell = xs.Views.Gems.GemsSophisticationReplaceCell.create(this.m_holeIdx));
    }
    // source line 303, bytecode pc 116
    cell.update(this, idx);
    // source line 305, bytecode pc 133
    cell.setListener(this);
    // source line 308, bytecode pc 137
    return cell;
},
    setBaseTouchPriority: function(priority) {
    // source line 312, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 314, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 315, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 316, bytecode pc 83
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    numberOfCellsInTableView: function(table) {
    // source line 320, bytecode pc 11
    return this.m_gemsList.length;
},
    setListener: function(listener) {
    // source line 324, bytecode pc 9
    (this.m_listener = listener);
},
    replaceGemsCallBack: function(param) {
    // source line 328, bytecode pc 21
    this.m_listener.replaceGemsCallBack(param);
}
}));
// source line 334, bytecode pc 684
(xs.Views.Gems.GemsSophisticationReplaceDialog.create = function(param) {
    var retObj;
    // source line 335, bytecode pc 28
    (retObj = new xs.Views.Gems.GemsSophisticationReplaceDialog());
    if ((retObj && retObj.init(param))) {
        // source line 337, bytecode pc 64
        return retObj;
    }
    // source line 339, bytecode pc 66
    return null;
});
// source line 344, bytecode pc 764
xs.Views.Mgr.registerDialog("GemsSophisticationReplaceDialog", {
    "class": xs.Views.Gems.GemsSophisticationReplaceDialog,
    styleType: xs.Constant_DlgStyleType_Large
});
