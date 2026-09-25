// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/CommonDialog.js:1
// source line 35, bytecode pc 133
(xs.Views.Dialog.CommonDialog = xs.Views.HungerLayer.extend({
    name: "CommonDialog",
    ctor: function() {
    // source line 5, bytecode pc 12
    this._super();
},
    loadCCBI: function(params) {
    // source line 10, bytecode pc 22
    xs.error("xs.Views.CommonDialog can't use this function");
},
    showDialog: function(params) {
    // source line 14, bytecode pc 22
    xs.error("xs.Views.CommonDialog can't use this function");
},
    init: function() {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 56
    (this.m_baseTouchPriority = xs.Cfg.Scene.CommonScene.Dialog.priority);
    // source line 22, bytecode pc 76
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 24, bytecode pc 89
    this.loadCCBI();
    // source line 27, bytecode pc 91
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 30, bytecode pc 11
    (this.m_baseTouchPriority = (priority - 1));
},
    getViewNode: function() {
    // source line 33, bytecode pc 22
    xs.error("getViewNode must be override");
},
    getBaseTouchPriority: function() {
    // source line 36, bytecode pc 6
    return this.m_baseTouchPriority;
}
}));
// source line 83, bytecode pc 252
(xs.Views.Dialog.ButtonDialog = xs.Views.Dialog.CommonDialog.extend({
    addButton: function(btnText, btnCallback, btnPosition, btnStyle) {
    var tmpstr, cb, button;
    // source line 46, bytecode pc 17
    (tmpstr = (btnText || "button"));
    // source line 47, bytecode pc 49
    (cb = (btnCallback || this.removeSelf.bind(this)));
    // source line 48, bytecode pc 87
    (button = xs.Views.Btn.createWithString(btnStyle, tmpstr));
    // source line 49, bytecode pc 106
    button.setPosition(btnPosition);
    // source line 50, bytecode pc 125
    button.setOnClickCallBack(cb);
    // source line 51, bytecode pc 149
    button.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 52, bytecode pc 187
    xs.Utils.Node.attachNodes(this._ccbNode, button);
    // source line 53, bytecode pc 191
    return button;
},
    addLabel: function(str, pos, labelStyleId) {
    var tmpstr, _labelStyleId, contentlabel;
    // source line 57, bytecode pc 17
    (tmpstr = (str || "label"));
    // source line 58, bytecode pc 35
    (_labelStyleId = (labelStyleId || "LS_popUI2"));
    // source line 59, bytecode pc 69
    (contentlabel = xs.Factorys.Label.createByStyleId(_labelStyleId));
    // source line 60, bytecode pc 88
    contentlabel.setString(tmpstr);
    // source line 61, bytecode pc 107
    contentlabel.setPosition(pos);
    // source line 62, bytecode pc 145
    xs.Utils.Node.attachNodes(this._ccbNode, contentlabel);
    // source line 64, bytecode pc 149
    return contentlabel;
},
    removeSelf: function() {
    // source line 69, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    updateSize: function(newSize, defaultSize) {
    // source line 73, bytecode pc 22
    xs.error("updateSize must be override");
},
    addContentNode: function(node, pos) {
    // source line 79, bytecode pc 18
    node.setPosition(pos);
    // source line 80, bytecode pc 56
    xs.Utils.Node.attachNodes(this._ccbNode, node);
    // source line 81, bytecode pc 60
    return node;
},
    addButtonByBtnId: function(id, btnCallback) {
    var button;
    // source line 84, bytecode pc 33
    (button = xs.Views.Btn.create(id));
    // source line 87, bytecode pc 76
    button.setOnClickCallBack((btnCallback || function() {
    // source line 86, bytecode pc 12
    this.removeSelf();
}.bind(this)));
    // source line 88, bytecode pc 100
    button.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 89, bytecode pc 104
    return button;
}
}));
// source line 319, bytecode pc 581
(xs.Views.Dialog.TwoButtonDialog = xs.Views.Dialog.ButtonDialog.extend({
    name: "TwoButtonDialog",
    cfg: {
        title: 1,
        content: 2,
        rightBtn: 4,
        leftBtn: 3,
        tag5: 5,
        tag6: 6,
        titlebg: 7,
        bg1: 8,
        bg2: 10,
        bg3: 9
    },
    loadCCBI: function() {
    var bgsize, contentSize, visibleSize, nodesize;
    // source line 110, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.CommonDialogNew, this));
    // source line 112, bytecode pc 93
    this._ccbNode.getChildByTag(this.cfg.title).setVisible(false);
    // source line 113, bytecode pc 136
    this._ccbNode.getChildByTag(this.cfg.content).setVisible(false);
    // source line 114, bytecode pc 179
    this._ccbNode.getChildByTag(this.cfg.rightBtn).setVisible(false);
    // source line 115, bytecode pc 222
    this._ccbNode.getChildByTag(this.cfg.leftBtn).setVisible(false);
    // source line 116, bytecode pc 265
    this._ccbNode.getChildByTag(this.cfg.tag5).setVisible(false);
    // source line 117, bytecode pc 308
    this._ccbNode.getChildByTag(this.cfg.tag6).setVisible(false);
    // source line 121, bytecode pc 344
    (this._bg1 = this._ccbNode.getChildByTag(this.cfg.bg1));
    // source line 124, bytecode pc 372
    (bgsize = cc.size(441, 250));
    // source line 125, bytecode pc 394
    this._bg1.setPreferredSize(bgsize);
    // source line 131, bytecode pc 453
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c", sc: true });
    // source line 134, bytecode pc 474
    (contentSize = this._bg1.getContentSize());
    // source line 135, bytecode pc 499
    (visibleSize = xs.director.getVisibleSize());
    // source line 137, bytecode pc 527
    (nodesize = cc.size(441, 250));
    // source line 138, bytecode pc 610
    this._ccbNode.setPosition(cc.p(((visibleSize.width / 2) - (nodesize.width / 2)), ((visibleSize.height / 2) - (nodesize.height / 2))));
    // source line 139, bytecode pc 644
    xs.Utils.Node.makeDebugPoint(this._ccbNode);
},
    showDialog: function(titleStringId, contentStringId, leftBtnText, rightBtnText, leftBtnCallback, rightBtnCallback, contentParams) {
    // source line 142, bytecode pc 16
    this.setTitleByStringId(titleStringId);
    // source line 143, bytecode pc 37
    this.setLeftButton(leftBtnText, leftBtnCallback);
    // source line 144, bytecode pc 58
    this.setRightButton(rightBtnText, rightBtnCallback);
    // source line 145, bytecode pc 105
    (this._defaultLabelSize = this._ccbNode.getChildByTag(this.cfg.content).getContentSize());
    // source line 146, bytecode pc 180
    (this._contentlabel = xs.Utils.replaceLabel(this._ccbNode, this.cfg.content, [ "LS_popUI2" ], [ contentStringId ]));
    if (contentParams) {
        // source line 148, bytecode pc 210
        this._contentlabel.setStringParams(contentParams);
    }
    // source line 153, bytecode pc 248
    this.updateSize(this._contentlabel.getContentSize(), this._defaultLabelSize);
},
    showDialogWithString: function(titleString, contentString, leftBtnText, rightBtnText, leftBtnCallback, rightBtnCallback, contentParams) {
    // source line 158, bytecode pc 16
    this.setTitleByString(titleString);
    // source line 160, bytecode pc 37
    this.setLeftButton(leftBtnText, leftBtnCallback);
    // source line 162, bytecode pc 58
    this.setRightButton(rightBtnText, rightBtnCallback);
    // source line 164, bytecode pc 105
    (this._defaultLabelSize = this._ccbNode.getChildByTag(this.cfg.content).getContentSize());
    // source line 166, bytecode pc 180
    (this._contentlabel = xs.Utils.replaceLabelWithString(this._ccbNode, this.cfg.content, [ "LS_popUI2" ], [ contentString ]));
    if (contentParams) {
        // source line 168, bytecode pc 210
        this._contentlabel.setStringParams(contentParams);
    }
    // source line 171, bytecode pc 248
    this.updateSize(this._contentlabel.getContentSize(), this._defaultLabelSize);
},
    setTitleByStringId: function(stringId) {
    // source line 177, bytecode pc 74
    (this._titlelabel = xs.Utils.replaceLabel(this._ccbNode, this.cfg.title, [ "LS_popUI1" ], [ stringId ]));
    // source line 178, bytecode pc 81
    return this._titlelabel;
},
    setTitleByString: function(titleString) {
    // source line 182, bytecode pc 22
    xs.log("xs.Views.Dialog.TwoButtonDialog setTitleByString begin");
    // source line 183, bytecode pc 97
    (this._titlelabel = xs.Utils.replaceLabelWithString(this._ccbNode, this.cfg.title, [ "LS_popUI1" ], [ titleString ]));
    // source line 184, bytecode pc 104
    return this._titlelabel;
},
    getTitleText: function() {
    // source line 188, bytecode pc 6
    return this._titlelabel;
},
    setLeftButtonByBtnId: function(id, cb) {
    var newBtn;
    if ((id == null)) {
        // source line 192, bytecode pc 11
        return null;
    }
    // source line 195, bytecode pc 35
    (newBtn = this.addButtonByBtnId(id, cb));
    // source line 196, bytecode pc 86
    (this._leftbutton = xs.Utils.replaceButton(this._ccbNode, this.cfg.leftBtn, newBtn));
    // source line 197, bytecode pc 93
    return this._leftbutton;
},
    setLeftButton: function(str, callback) {
    var tmpstr, ccbnode, pos;
    // source line 200, bytecode pc 44
    (tmpstr = (str || xs.Tools.String.createString("auto_name_146")));
    // source line 201, bytecode pc 77
    (ccbnode = this._ccbNode.getChildByTag(this.cfg.leftBtn));
    // source line 203, bytecode pc 95
    (pos = ccbnode.getPosition());
    if ((this._leftbutton != null)) {
        // source line 205, bytecode pc 142
        xs.Utils.Node.safeRemoveChild(this._leftbutton);
    }
    // source line 207, bytecode pc 179
    (this._leftbutton = this.addButton(tmpstr, callback, pos, "Btn_btn1"));
    // source line 208, bytecode pc 186
    return this._leftbutton;
},
    getLeftButton: function() {
    // source line 211, bytecode pc 6
    return this._leftbutton;
},
    setRightButtonByBtnId: function(id, cb) {
    var newBtn;
    if ((id == null)) {
        // source line 215, bytecode pc 11
        return null;
    }
    // source line 218, bytecode pc 35
    (newBtn = this.addButtonByBtnId(id, cb));
    // source line 219, bytecode pc 86
    (this._rightbutton = xs.Utils.replaceButton(this._ccbNode, this.cfg.rightBtn, newBtn));
    // source line 220, bytecode pc 93
    return this._rightbutton;
},
    setRightButton: function(str, callback) {
    var tmpstr, ccbnode, pos;
    // source line 223, bytecode pc 44
    (tmpstr = (str || xs.Tools.String.createString("auto_name_76")));
    // source line 224, bytecode pc 77
    (ccbnode = this._ccbNode.getChildByTag(this.cfg.rightBtn));
    // source line 226, bytecode pc 95
    (pos = ccbnode.getPosition());
    if ((this._rightbutton != null)) {
        // source line 228, bytecode pc 142
        xs.Utils.Node.safeRemoveChild(this._rightbutton);
        // source line 229, bytecode pc 150
        (this._rightbutton = null);
    }
    // source line 231, bytecode pc 187
    (this._rightbutton = this.addButton(tmpstr, callback, pos, "Btn_btn1"));
    // source line 232, bytecode pc 194
    return this._rightbutton;
},
    getRightButton: function() {
    // source line 235, bytecode pc 6
    return this._rightbutton;
},
    setContentText: function(str) {
    var tmpstr, pos;
    // source line 238, bytecode pc 17
    (tmpstr = (str || "content"));
    // source line 239, bytecode pc 61
    (pos = this._ccbNode.getChildByTag(this.cfg.content).getPosition());
    // source line 240, bytecode pc 95
    xs.Utils.Node.safeRemoveChild(this._contentlabel);
    // source line 241, bytecode pc 128
    (this._contentlabel = this.addLabel(tmpstr, pos, "LS_popUI2"));
    // source line 243, bytecode pc 166
    this.updateSize(this._contentlabel.getContentSize(), this._defaultLabelSize);
    // source line 244, bytecode pc 173
    return this._contentlabel;
},
    getContentText: function() {
    // source line 247, bytecode pc 6
    return this._contentlabel;
},
    updateSize: function(newSize, defaultLabelSize) {
    var newLabelSize, addSize, oldBGSize, newBGSize, oldTitlePos, newTitlePos, newBGPos, oldButtonSize, newLeftButtonPos, newRightButtonPos, _oldCCBNodeSize, _newCCBNodeSize, m_parent, _x, _y;
    // source line 252, bytecode pc 46
    xs.log_dqy(((("newSize is:" + newSize.width) + ",") + newSize.height));
    if (((newSize.width > defaultLabelSize.width) || (newSize.height > defaultLabelSize.height))) {
        // source line 256, bytecode pc 129
        (newLabelSize = cc.size(defaultLabelSize.width, defaultLabelSize.height));
        if ((newSize.width > defaultLabelSize.width)) {
            // source line 258, bytecode pc 168
            (newLabelSize.width = newSize.width);
        }
        if ((newSize.height > defaultLabelSize.height)) {
            // source line 261, bytecode pc 207
            (newLabelSize.height = newSize.height);
        }
        // source line 264, bytecode pc 254
        xs.log_dqy(((("defaultsize is:" + defaultLabelSize.width) + ",") + defaultLabelSize.height));
        // source line 265, bytecode pc 310
        (addSize = cc.size((newLabelSize.width - defaultLabelSize.width), (newLabelSize.height - defaultLabelSize.height)));
        // source line 267, bytecode pc 331
        (oldBGSize = this._bg1.getContentSize());
        // source line 268, bytecode pc 387
        (newBGSize = cc.size((oldBGSize.width + addSize.width), (oldBGSize.height + addSize.height)));
        // source line 269, bytecode pc 409
        this._bg1.setPreferredSize(newBGSize);
        // source line 272, bytecode pc 456
        xs.log_dqy(((("newBGSize is " + newBGSize.width) + ",") + newBGSize.height));
        // source line 274, bytecode pc 477
        (oldTitlePos = this._titlelabel.getPosition());
        // source line 275, bytecode pc 527
        (newTitlePos = cc.p(oldTitlePos.x, (oldTitlePos.y + (addSize.height / 2))));
        // source line 276, bytecode pc 549
        this._titlelabel.setPosition(newTitlePos);
        // source line 280, bytecode pc 570
        (newBGPos = this._bg1.getPosition());
        // source line 281, bytecode pc 591
        (oldButtonSize = this._leftbutton.getContentSize());
        // source line 283, bytecode pc 667
        (newLeftButtonPos = cc.p(this._leftbutton.getPosition().x, (((newBGPos.y - (newBGSize.height / 2)) + oldButtonSize.height) - 10)));
        // source line 284, bytecode pc 689
        this._leftbutton.setPosition(newLeftButtonPos);
        // source line 287, bytecode pc 765
        (newRightButtonPos = cc.p(this._rightbutton.getPosition().x, (((newBGPos.y - (newBGSize.height / 2)) + oldButtonSize.height) - 10)));
        // source line 288, bytecode pc 787
        this._rightbutton.setPosition(newRightButtonPos);
        // source line 291, bytecode pc 808
        (_oldCCBNodeSize = this._ccbNode.getContentSize());
        // source line 292, bytecode pc 864
        (_newCCBNodeSize = cc.size((_oldCCBNodeSize.width + addSize.width), (_oldCCBNodeSize.height + addSize.height)));
        // source line 293, bytecode pc 886
        this._ccbNode.setContentSize(_newCCBNodeSize);
        // source line 301, bytecode pc 902
        (m_parent = this.getParent());
        if ((m_parent && m_parent.m_closeBtn)) {
            // source line 304, bytecode pc 956
            (_x = (m_parent.m_closeBtn.getPositionX() + addSize.width));
            // source line 305, bytecode pc 979
            (_y = m_parent.m_closeBtn.getPositionY());
            // source line 306, bytecode pc 1024
            m_parent.m_closeBtn.setPosition(cc.p(_x, _y));
        }
    }
},
    getTitleNode: function() {
    // source line 312, bytecode pc 6
    return this._bg1;
},
    setBaseTouchPriority: function(priority) {
    // source line 315, bytecode pc 11
    (this.m_baseTouchPriority = (priority - 1));
    // source line 316, bytecode pc 38
    this._leftbutton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 317, bytecode pc 65
    this._rightbutton.setTouchPriority((this.m_baseTouchPriority - 1));
},
    getViewNode: function() {
    // source line 320, bytecode pc 6
    return this._ccbNode;
}
}));
// source line 324, bytecode pc 607
(xs.Views.Dialog.createTwoButtonDialog = function(titleStringId, contentStringId, leftBtnText, rightBtnText, leftBtnCallback, rightBtnCallback, contentParams) {
    var obj;
    // source line 326, bytecode pc 28
    (obj = new xs.Views.Dialog.TwoButtonDialog());
    if ((obj && obj.init())) {
        // source line 328, bytecode pc 99
        obj.showDialog(titleStringId, contentStringId, leftBtnText, rightBtnText, leftBtnCallback, rightBtnCallback, contentParams);
        // source line 329, bytecode pc 103
        return obj;
    }
    // source line 331, bytecode pc 126
    xs.error("can't create xs.Views.Dialog.TwoButtonDialog");
    // source line 332, bytecode pc 128
    return null;
});
// source line 335, bytecode pc 633
(xs.Views.Dialog.createOneButtonDialog = function(titleText, contentText, btnText, btnCallback) {
    var obj, changeObj;
    // source line 336, bytecode pc 22
    xs.log_dqy("xs.Views.Dialog.createOneButtonDialog begin");
    // source line 337, bytecode pc 51
    (obj = new xs.Views.Dialog.TwoButtonDialog());
    // source line 339, bytecode pc 60
    (changeObj = function(target) {
    var str, posLeft, posContent, pos, button;
    // source line 341, bytecode pc 50
    (str = (btnText || xs.Tools.String.createString("auto_name_76")));
    // source line 343, bytecode pc 78
    target.getLeftButton().setVisible(false);
    // source line 344, bytecode pc 106
    target.getRightButton().setVisible(false);
    // source line 346, bytecode pc 135
    (posLeft = target.getRightButton().getPosition());
    // source line 347, bytecode pc 164
    (posContent = target.getContentText().getPosition());
    // source line 348, bytecode pc 202
    (pos = cc.p(posContent.x, posLeft.y));
    // source line 349, bytecode pc 240
    (button = target.setRightButton(btnText, btnCallback));
    // source line 351, bytecode pc 259
    button.setPosition(pos);
    // source line 352, bytecode pc 282
    xs.log_dqy("xs.Views.Dialog.createOneButtonDialog changeObj end");
});
    if ((obj && obj.init())) {
        // source line 355, bytecode pc 111
        xs.log_dqy("xs.Views.Dialog.createOneButtonDialog begin 1 ");
        // source line 356, bytecode pc 142
        obj.showDialogWithString(titleText, contentText, null, null, null, null);
        // source line 358, bytecode pc 155
        changeObj(obj);
        // source line 360, bytecode pc 169
        (obj.name = "OneButtonDialog");
        // source line 364, bytecode pc 198
        (obj.setButton = function(btnText, btnCallback) {
    // source line 363, bytecode pc 20
    return this.setLeftButton(btnText, btnCallback);
}.bind(obj));
        // source line 367, bytecode pc 227
        (obj.setButtonByBtnId = function(id) {
    // source line 366, bytecode pc 16
    return this.setLeftButtonByBtnId(id);
}.bind(obj));
        // source line 368, bytecode pc 250
        xs.log_dqy("xs.Views.Dialog.createOneButtonDialog end");
        // source line 369, bytecode pc 254
        return obj;
    }
    // source line 371, bytecode pc 277
    xs.error("can't create xs.Views.Dialog.TwoButtonDialog");
    // source line 372, bytecode pc 279
    return null;
});
// source line 385, bytecode pc 722
(xs.Views.Dialog.TwoButtonDialogWithContentNode = xs.Views.Dialog.TwoButtonDialog.extend({
    name: "TwoButtonDialogWithContentNode",
    showDialog: function(titleStringId, contentNode, leftBtnId, rightBtnId, leftBtnCallback, rightBtnCallback) {
    var defaultLabelSize;
    // source line 378, bytecode pc 16
    this.setTitleByStringId(titleStringId);
    // source line 379, bytecode pc 37
    this.setLeftButtonByBtnId(leftBtnId, leftBtnCallback);
    // source line 380, bytecode pc 58
    this.setRightButtonByBtnId(rightBtnId, rightBtnCallback);
    // source line 381, bytecode pc 78
    (contentNode = this.setContentNode(contentNode));
    // source line 382, bytecode pc 122
    (defaultLabelSize = this._ccbNode.getChildByTag(this.cfg.content).getContentSize());
    // source line 383, bytecode pc 154
    this.updateSize(contentNode.getContentSize(), defaultLabelSize);
},
    setContentNode: function(node) {
    var pos;
    // source line 386, bytecode pc 43
    (pos = this._ccbNode.getChildByTag(this.cfg.content).getPosition());
    // source line 387, bytecode pc 70
    (this._contentNode = this.addContentNode(node, pos));
    // source line 388, bytecode pc 77
    return this._contentNode;
}
}));
// source line 392, bytecode pc 748
(xs.Views.Dialog.createTwoButtonDialogWithContentNode = function(titleStringId, contentNode, leftBtnId, rightBtnId, leftBtnCallback, rightBtnCallback) {
    var obj;
    // source line 393, bytecode pc 28
    (obj = new xs.Views.Dialog.TwoButtonDialogWithContentNode());
    if ((obj && obj.init())) {
        // source line 395, bytecode pc 95
        obj.showDialog(titleStringId, contentNode, leftBtnId, rightBtnId, leftBtnCallback, rightBtnCallback);
        // source line 396, bytecode pc 99
        return obj;
    }
    // source line 398, bytecode pc 101
    return null;
});
// source line 414, bytecode pc 837
(xs.Views.Dialog.NewTwoButtonDialogWithContentNode = xs.Views.Dialog.TwoButtonDialog.extend({
    name: "NewTwoButtonDialogWithContentNode",
    showDialog: function(titleStringId, contentNode, leftBtnTxt, rightBtnTxt, leftBtnCallback, rightBtnCallback) {
    var defaultLabelSize;
    // source line 407, bytecode pc 16
    this.setTitleByStringId(titleStringId);
    // source line 408, bytecode pc 37
    this.setLeftButton(leftBtnTxt, leftBtnCallback);
    // source line 409, bytecode pc 58
    this.setRightButton(rightBtnTxt, rightBtnCallback);
    // source line 410, bytecode pc 78
    (contentNode = this.setContentNode(contentNode));
    // source line 411, bytecode pc 122
    (defaultLabelSize = this._ccbNode.getChildByTag(this.cfg.content).getContentSize());
    // source line 412, bytecode pc 154
    this.updateSize(contentNode.getContentSize(), defaultLabelSize);
},
    setContentNode: function(node) {
    var pos;
    // source line 415, bytecode pc 43
    (pos = this._ccbNode.getChildByTag(this.cfg.content).getPosition());
    // source line 416, bytecode pc 70
    (this._contentNode = this.addContentNode(node, pos));
    // source line 417, bytecode pc 77
    return this._contentNode;
}
}));
// source line 421, bytecode pc 863
(xs.Views.Dialog.createNewTwoButtonDialogWithContentNode = function(titleStringId, contentNode, leftBtnTxt, rightBtnTxt, leftBtnCallback, rightBtnCallback) {
    var obj;
    // source line 422, bytecode pc 28
    (obj = new xs.Views.Dialog.NewTwoButtonDialogWithContentNode());
    if ((obj && obj.init())) {
        // source line 424, bytecode pc 95
        obj.showDialog(titleStringId, contentNode, leftBtnTxt, rightBtnTxt, leftBtnCallback, rightBtnCallback);
        // source line 425, bytecode pc 99
        return obj;
    }
    // source line 427, bytecode pc 101
    return null;
});
