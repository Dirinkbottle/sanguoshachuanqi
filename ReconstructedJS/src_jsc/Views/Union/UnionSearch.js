// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionSearch.js:1
// source line 196, bytecode pc 266
(xs.Views.Union.UnionSearch = xs.Views.HungerLayer.extend({
    ccbCfg: [
        { tag: 50, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 1, type: "ls", id: "LS_huodong_title", stringId: "auto_name_572" }
    ],
    init: function(params) {
    var position, pos, _cbg;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 27
    (this.btnClose = null);
    // source line 17, bytecode pc 78
    xs.Views.Union.UnionSearch.setModel(params.param.return_info.union_list);
    // source line 20, bytecode pc 114
    (this._bgCCBNode = cc.BuilderReader.load("ccb3/GuildDialog.ccbi", this));
    // source line 24, bytecode pc 198
    xs.Utils.Node.attachNodes(this, this._bgCCBNode, { desc: "c", offset: { x: -467, y: -306 } });
    // source line 26, bytecode pc 262
    this._bgCCBNode.getChildByTag(1).setString(xs.Tools.String.createString("auto_name_572"));
    // source line 27, bytecode pc 305
    xs.Utils.UI.replaceCcbByCfg(this._bgCCBNode, this.ccbCfg, this);
    // source line 28, bytecode pc 329
    this.btnClose.setOnClickCallBack(function() {
    // source line 29, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 31, bytecode pc 365
    (this._bottomCCBNode = cc.BuilderReader.load("ccb3/join_guild_02.ccbi", this));
    // source line 32, bytecode pc 391
    (position = cc.p(30, 15));
    // source line 33, bytecode pc 413
    this._bottomCCBNode.setPosition(position);
    // source line 34, bytecode pc 438
    this._bgCCBNode.addChild(this._bottomCCBNode);
    // source line 36, bytecode pc 477
    (this._createUnion = xs.Views.Btn.create("Btn_btn2"));
    // source line 37, bytecode pc 511
    (pos = this._bottomCCBNode.getChildByTag(1).getPosition());
    // source line 38, bytecode pc 533
    this._createUnion.setPosition(pos);
    // source line 39, bytecode pc 584
    this._createUnion.setString(xs.Tools.String.createString("auto_name_518"));
    // source line 40, bytecode pc 609
    this._bottomCCBNode.addChild(this._createUnion);
    // source line 41, bytecode pc 633
    this._createUnion.setOnClickCallBack(function() {
    // source line 42, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 43, bytecode pc 59
    xs.Views.Mgr.showDialogByName("UnionCreate");
});
    // source line 47, bytecode pc 672
    (this._updateBtn = xs.Views.Btn.create("Btn_btn2"));
    // source line 48, bytecode pc 707
    (pos = this._bottomCCBNode.getChildByTag(4).getPosition());
    // source line 49, bytecode pc 729
    this._updateBtn.setPosition(pos);
    // source line 50, bytecode pc 780
    this._updateBtn.setString(xs.Tools.String.createString("auto_name_573"));
    // source line 51, bytecode pc 805
    this._bottomCCBNode.addChild(this._updateBtn);
    // source line 54, bytecode pc 842
    this._updateBtn.setOnClickCallBack(function() {
    // source line 53, bytecode pc 12
    this.requestGetUnionInfo();
}.bind(this));
    // source line 56, bytecode pc 881
    (this._searchBtn = xs.Views.Btn.createByStyleId("BS_SearchButton"));
    // source line 57, bytecode pc 916
    (pos = this._bottomCCBNode.getChildByTag(3).getPosition());
    // source line 58, bytecode pc 938
    this._searchBtn.setPosition(pos);
    // source line 59, bytecode pc 963
    this._bottomCCBNode.addChild(this._searchBtn);
    // source line 67, bytecode pc 1000
    this._searchBtn.setOnClickCallBack(function() {
    var _text;
    // source line 61, bytecode pc 20
    (_text = this._signEditBoxDeclaration.getText());
    if ((_text && (_text.length > 0))) {
        // source line 63, bytecode pc 61
        this.requestSearch(_text);
    } else {
        // source line 65, bytecode pc 126
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_574"));
    }
}.bind(this));
    // source line 69, bytecode pc 1013
    this.createUnionDeclarationEditBox();
    // source line 71, bytecode pc 1021
    (this._tableView = null);
    // source line 72, bytecode pc 1077
    (_cbg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.GuildDialog.GuildDialog_di_5.frameName));
    // source line 73, bytecode pc 1115
    _cbg.setPosition(cc.p(17, 105));
    // source line 74, bytecode pc 1155
    _cbg.setPreferredSize(cc.size(900, 425));
    // source line 75, bytecode pc 1191
    _cbg.setAnchorPoint(cc.p(0, 0));
    // source line 76, bytecode pc 1213
    this._bgCCBNode.addChild(_cbg);
    // source line 79, bytecode pc 1226
    this.resetTableview();
    // source line 80, bytecode pc 1228
    return true;
},
    createUnionDeclarationEditBox: function() {
    var bgsprite, pos;
    // source line 85, bytecode pc 55
    (bgsprite = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.GuildDialog.GuildDialog_di_5.frameName));
    // source line 86, bytecode pc 90
    (pos = this._bottomCCBNode.getChildByTag(2).getPosition());
    // source line 87, bytecode pc 146
    (this._signEditBoxDeclaration = cc.EditBox.create(cc.size(325, 55), bgsprite));
    // source line 88, bytecode pc 190
    this._signEditBoxDeclaration.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 89, bytecode pc 234
    this._signEditBoxDeclaration.setFontColor(cc.c3b(122, 68, 3));
    // source line 90, bytecode pc 255
    this._signEditBoxDeclaration.setPlaceholderFontSize(16);
    // source line 91, bytecode pc 276
    this._signEditBoxDeclaration.setFontSize(16);
    // source line 92, bytecode pc 327
    this._signEditBoxDeclaration.setPlaceHolder(xs.Tools.String.createString("auto_name_575"));
    // source line 93, bytecode pc 356
    this._signEditBoxDeclaration.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 94, bytecode pc 376
    this._signEditBoxDeclaration.setDelegate(this);
    // source line 95, bytecode pc 400
    this._signEditBoxDeclaration.setText("");
    // source line 96, bytecode pc 422
    this._signEditBoxDeclaration.setPosition(pos);
    // source line 98, bytecode pc 463
    xs.Utils.Node.attachNodes(this._bottomCCBNode, this._signEditBoxDeclaration);
    // source line 102, bytecode pc 488
    (this.editBoxEditingDidBegin = function(editBox) {
    // source line 101, bytecode pc 22
    xs.log("editBox DidBegin !");
}.bind(this));
    // source line 112, bytecode pc 513
    (this.editBoxEditingDidEnd = function(editBox) {
    var _filterResult;
    // source line 105, bytecode pc 22
    xs.log("editBox DidEnd !");
    if ((this._signEditBoxDeclaration.getText() && (this._signEditBoxDeclaration.getText().length > 0))) {
        // source line 107, bytecode pc 83
        (_filterResult = "");
        // source line 108, bytecode pc 131
        (_filterResult = xs.Tools.UI.FilteringSensitiveWords(this._signEditBoxDeclaration.getText()));
        // source line 109, bytecode pc 153
        this._signEditBoxDeclaration.setText(_filterResult);
        // source line 110, bytecode pc 161
        (this._signEditBox_status = null);
    }
}.bind(this));
    // source line 117, bytecode pc 538
    (this.editBoxTextChanged = function(editBox, text) {
    // source line 115, bytecode pc 26
    xs.log(("editBox, TextChanged, text: " + text));
    // source line 116, bytecode pc 34
    (this._signEditBox_status = true);
}.bind(this));
    // source line 123, bytecode pc 563
    (this.editBoxReturn = function(editBox) {
    var _text;
    // source line 120, bytecode pc 22
    xs.log("editBox editBoxReturn !");
    // source line 121, bytecode pc 70
    (_text = xs.Tools.UI.FilteringSensitiveWords(this._signEditBoxDeclaration.getText()));
    // source line 122, bytecode pc 92
    this._signEditBoxDeclaration.setText(_text);
}.bind(this));
},
    resetTableview: function() {
    var _model;
    // source line 127, bytecode pc 22
    xs.log("UnionSearch resetTableview");
    if (this._tableView) {
        // source line 129, bytecode pc 67
        xs.Utils.Node.safeRemoveChild(this._tableView);
    }
    // source line 131, bytecode pc 102
    (_model = xs.Views.Union.UnionSearch.getModel());
    // source line 132, bytecode pc 146
    (this._tableView = xs.Views.Table.UnionSearchTableView.create(_model, this));
    // source line 133, bytecode pc 187
    this._tableView.setPosition(cc.p(15, 110));
    // source line 134, bytecode pc 212
    this._bgCCBNode.addChild(this._tableView);
},
    requestGetUnionInfo: function() {
    // source line 145, bytecode pc 73
    xs.Tools.Net.requestGetUnionInfo({}, function(data) {
    // source line 140, bytecode pc 16
    this.responseBack(data);
}.bind(this), function(data) {
    // source line 143, bytecode pc 16
    this.responseBack(data);
}.bind(this), this);
},
    requestApply: function(data) {
    // source line 160, bytecode pc 74
    xs.Tools.Net.requestApply({ union_id: data }, function() {
    if ((data.result == true)) {
    }
}, function(data) {
}.bind(this), this);
},
    responseBack: function(data) {
    // source line 165, bytecode pc 22
    xs.log("UnionSearch responseBack");
    // source line 166, bytecode pc 49
    xs.dump("UnionSearch responseBack data ", data);
    // source line 167, bytecode pc 95
    xs.Views.Union.UnionSearch.setModel(data.return_info.union_list);
    // source line 168, bytecode pc 108
    this.resetTableview();
    // source line 169, bytecode pc 133
    this._tableView.setTouchPriority(this.m_baseTouchPriority);
},
    requestSearch: function(text) {
    // source line 179, bytecode pc 81
    xs.Tools.Net.requestGetUnionInfo({ union_name: text }, function(data) {
    // source line 174, bytecode pc 16
    this.searchBack(data);
}.bind(this), function(data) {
    // source line 177, bytecode pc 16
    this.searchBack(data);
}.bind(this), this);
},
    searchBack: function(data) {
    // source line 184, bytecode pc 22
    xs.log("UnionSearch searchBack");
    // source line 185, bytecode pc 49
    xs.dump("UnionSearch searchBack data ", data);
    // source line 186, bytecode pc 95
    xs.Views.Union.UnionSearch.setModel(data.return_info.union_list);
    // source line 187, bytecode pc 108
    this.resetTableview();
    // source line 188, bytecode pc 133
    this._tableView.setTouchPriority(this.m_baseTouchPriority);
},
    onEnter: function() {
    // source line 191, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 194, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 197, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 198, bytecode pc 36
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 199, bytecode pc 63
    this._createUnion.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 200, bytecode pc 90
    this._updateBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 201, bytecode pc 117
    this._searchBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 202, bytecode pc 144
    this._signEditBoxDeclaration.setTouchPriority((this.m_baseTouchPriority - 1));
    if (this._tableView) {
        // source line 204, bytecode pc 180
        this._tableView.setTouchPriority(this.m_baseTouchPriority);
        // source line 205, bytecode pc 207
        this._tableView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    }
}
}));
// source line 210, bytecode pc 297
(xs.Views.Union.UnionSearch.create = function(params) {
    var ret;
    // source line 211, bytecode pc 28
    (ret = new xs.Views.Union.UnionSearch());
    if ((ret && ret.init(params))) {
        // source line 213, bytecode pc 64
        return ret;
    }
    // source line 215, bytecode pc 66
    return null;
});
// source line 218, bytecode pc 328
(xs.Views.Union.UnionSearch.load = function() {
    // source line 219, bytecode pc 32
    xs.Factorys.Sprite.load("GuildDialog");
});
// source line 221, bytecode pc 359
(xs.Views.Union.UnionSearch.unload = function() {
    // source line 222, bytecode pc 32
    xs.Factorys.Sprite.unload("GuildDialog");
});
// source line 228, bytecode pc 449
xs.Views.Mgr.registerDialog("UnionSearch", { "class": xs.Views.Union.UnionSearch, styleType: xs.Constant_DlgStyleType_Large, area: "DlgCmn" });
// source line 230, bytecode pc 480
(xs.Views.Union.UnionSearch.setModel = function(data) {
    // source line 231, bytecode pc 28
    (xs.Views.Union.UnionSearch._model = data);
});
// source line 233, bytecode pc 511
(xs.Views.Union.UnionSearch.getModel = function() {
    // source line 234, bytecode pc 25
    return xs.Views.Union.UnionSearch._model;
});
