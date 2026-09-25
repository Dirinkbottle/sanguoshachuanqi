// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionCreate.js:1
// source line 179, bytecode pc 351
(xs.Views.Union.UnionCreate = xs.Views.HungerLayer.extend({
    name: "UnionCreate",
    ccbCfg: [
        { tag: 50, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 10, type: "ls", name: "_title", id: "LS_huodong_title", stringId: "auto_name_518" },
        { tag: 3, type: "ls", name: "_costNum", id: "LS_paihangNomb", string: "500" },
        { tag: 4, type: "bs", name: "btnUnionCreate", id: "BS_Btn2" }
    ],
    init: function() {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.btnClose = null);
    // source line 20, bytecode pc 35
    (this.btnUnionCreate = null);
    // source line 21, bytecode pc 71
    (this.ccbNode = cc.BuilderReader.load("ccb3/create_guild.ccbi", this));
    // source line 25, bytecode pc 155
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: { x: -258, y: -211 } });
    // source line 27, bytecode pc 198
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 30, bytecode pc 211
    this.createUnionNameEditBox();
    // source line 32, bytecode pc 224
    this.createUnionDeclarationEditBox();
    // source line 35, bytecode pc 248
    this.btnClose.setOnClickCallBack(function() {
    // source line 36, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 38, bytecode pc 299
    this.btnUnionCreate.setString(xs.Tools.String.createString("auto_name_518"));
    // source line 41, bytecode pc 336
    this.btnUnionCreate.setOnClickCallBack(function() {
    // source line 40, bytecode pc 12
    this.requestCreateUnion();
}.bind(this));
    // source line 42, bytecode pc 338
    return true;
},
    createUnionNameEditBox: function() {
    var bgsprite, pos;
    // source line 46, bytecode pc 55
    (bgsprite = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_0_7_youshidi.frameName));
    // source line 47, bytecode pc 89
    (pos = this.ccbNode.getChildByTag(1).getPosition());
    // source line 48, bytecode pc 145
    (this._signEditBox = cc.EditBox.create(cc.size(462, 45), bgsprite));
    // source line 49, bytecode pc 189
    this._signEditBox.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 50, bytecode pc 233
    this._signEditBox.setFontColor(cc.c3b(122, 68, 3));
    // source line 51, bytecode pc 254
    this._signEditBox.setPlaceholderFontSize(22);
    // source line 52, bytecode pc 275
    this._signEditBox.setFontSize(22);
    // source line 53, bytecode pc 326
    this._signEditBox.setPlaceHolder(xs.Tools.String.createString("auto_name_519"));
    // source line 54, bytecode pc 355
    this._signEditBox.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 55, bytecode pc 375
    this._signEditBox.setDelegate(this);
    // source line 56, bytecode pc 399
    this._signEditBox.setText("");
    // source line 57, bytecode pc 421
    this._signEditBox.setPosition(pos);
    // source line 58, bytecode pc 462
    xs.Utils.Node.attachNodes(this.ccbNode, this._signEditBox);
},
    createUnionDeclarationEditBox: function() {
    var bgsprite, pos;
    // source line 87, bytecode pc 55
    (bgsprite = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_0_7_youshidi.frameName));
    // source line 88, bytecode pc 90
    (pos = this.ccbNode.getChildByTag(2).getPosition());
    // source line 89, bytecode pc 146
    (this._signEditBoxDeclaration = cc.EditBox.create(cc.size(462, 66), bgsprite));
    // source line 90, bytecode pc 190
    this._signEditBoxDeclaration.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 91, bytecode pc 234
    this._signEditBoxDeclaration.setFontColor(cc.c3b(122, 68, 3));
    // source line 92, bytecode pc 255
    this._signEditBoxDeclaration.setPlaceholderFontSize(22);
    // source line 93, bytecode pc 276
    this._signEditBoxDeclaration.setFontSize(22);
    // source line 94, bytecode pc 327
    this._signEditBoxDeclaration.setPlaceHolder(xs.Tools.String.createString("auto_name_520"));
    // source line 95, bytecode pc 356
    this._signEditBoxDeclaration.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 96, bytecode pc 376
    this._signEditBoxDeclaration.setDelegate(this);
    // source line 97, bytecode pc 400
    this._signEditBoxDeclaration.setText("");
    // source line 98, bytecode pc 422
    this._signEditBoxDeclaration.setPosition(pos);
    // source line 100, bytecode pc 463
    xs.Utils.Node.attachNodes(this.ccbNode, this._signEditBoxDeclaration);
    // source line 104, bytecode pc 488
    (this.editBoxEditingDidBegin = function(editBox) {
    // source line 103, bytecode pc 22
    xs.log("editBox DidBegin !");
}.bind(this));
    // source line 119, bytecode pc 513
    (this.editBoxEditingDidEnd = function(editBox) {
    var _filterResult;
    // source line 107, bytecode pc 22
    xs.log("editBox DidEnd !");
    if ((editBox.getText() && (editBox.getText().length > 0))) {
        // source line 109, bytecode pc 77
        (_filterResult = "");
        // source line 110, bytecode pc 122
        (_filterResult = xs.Tools.UI.FilteringSensitiveWords(editBox.getText()));
        if ((editBox == this._signEditBoxDeclaration)) {
            // source line 112, bytecode pc 159
            this._signEditBoxDeclaration.setText(_filterResult);
            // source line 113, bytecode pc 167
            (this._signEditBox_status = null);
        } else {
            if ((editBox == this._signEditBox)) {
                // source line 115, bytecode pc 209
                this._signEditBox.setText(_filterResult);
                // source line 116, bytecode pc 217
                (this._signEditBox_status = null);
            }
        }
    }
}.bind(this));
    // source line 124, bytecode pc 538
    (this.editBoxTextChanged = function(editBox, text) {
    // source line 122, bytecode pc 26
    xs.log(("editBox, TextChanged, text: " + text));
    // source line 123, bytecode pc 34
    (this._signEditBox_status = true);
}.bind(this));
    // source line 137, bytecode pc 563
    (this.editBoxReturn = function(editBox) {
    var _text;
    // source line 127, bytecode pc 22
    xs.log("editBox editBoxReturn !");
    // source line 128, bytecode pc 67
    (_text = xs.Tools.UI.FilteringSensitiveWords(editBox.getText()));
    if ((editBox == this._signEditBoxDeclaration)) {
        // source line 130, bytecode pc 104
        this._signEditBoxDeclaration.setText(_text);
    } else {
        if ((editBox == this._signEditBox)) {
            // source line 133, bytecode pc 146
            this._signEditBox.setText(_text);
        }
    }
}.bind(this));
},
    responseBack: function(data) {
    // source line 140, bytecode pc 26
    xs.dump("Union UnionCreate responseBack", data);
    if ((data.result >= 1)) {
        // source line 142, bytecode pc 68
        xs.Views.Mgr.hideDialog();
        // source line 143, bytecode pc 101
        xs.Views.Mgr.showDialogByName("UnionDialog");
        // source line 144, bytecode pc 103
        return true;
    }
},
    requestCreateUnion: function() {
    var goldNum;
    // source line 148, bytecode pc 22
    xs.log("Union UnionCreate requestCreateUnion");
    // source line 150, bytecode pc 84
    (goldNum = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
    if ((goldNum < 500)) {
        // source line 152, bytecode pc 156
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_521"));
        // source line 153, bytecode pc 158
        return void 0;
    }
    if (!this._signEditBox.getText()) {
        // source line 156, bytecode pc 241
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_522"));
        // source line 157, bytecode pc 243
        return void 0;
    }
    if ((this._signEditBox.getText().length > 16)) {
        // source line 160, bytecode pc 333
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_523"));
        // source line 161, bytecode pc 335
        return void 0;
    }
    if (!this._signEditBoxDeclaration.getText()) {
        // source line 164, bytecode pc 418
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_524"));
        // source line 165, bytecode pc 420
        return void 0;
    }
    if ((this._signEditBoxDeclaration.getText().length > 60)) {
        // source line 168, bytecode pc 510
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_525"));
        // source line 169, bytecode pc 512
        return void 0;
    }
    // source line 174, bytecode pc 606
    xs.Tools.Net.requestCreateUnion({ union_name: this._signEditBox.getText(), union_sign: this._signEditBoxDeclaration.getText() }, this.responseBack, this.responseBack, this);
},
    onEnter: function() {
    // source line 177, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 180, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 181, bytecode pc 36
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 182, bytecode pc 64
    this._signEditBox.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 183, bytecode pc 92
    this._signEditBoxDeclaration.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 184, bytecode pc 120
    this.btnUnionCreate.setTouchPriority((this.m_baseTouchPriority - 2));
}
}));
// source line 188, bytecode pc 382
(xs.Views.Union.UnionCreate.create = function() {
    var ret;
    // source line 189, bytecode pc 28
    (ret = new xs.Views.Union.UnionCreate());
    if ((ret && ret.init())) {
        // source line 191, bytecode pc 60
        return ret;
    }
    // source line 193, bytecode pc 62
    return null;
});
// source line 199, bytecode pc 472
xs.Views.Mgr.registerDialog("UnionCreate", { "class": xs.Views.Union.UnionCreate, styleType: xs.Constant_DlgStyleType_Large, area: "DlgCmn" });
