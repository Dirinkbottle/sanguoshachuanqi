// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/Double11Dialog.js:1
// source line 366, bytecode pc 1615
(xs.Scene.Party.Double11Dialog = xs.Views.HungerLayer.extend({
    name: "Double11Dialog",
    cfg: {
        card: { tag: 3, zOrder: 2 },
        content: { tag: 103, zOrder: 3 },
        background3: { tag: 102, zOrder: 0 },
        background3_deng: { tag: 104, zOrder: 1 },
        background3_left: { tag: 1020, zOrder: 1 },
        background3_right: { tag: 1023, zOrder: 1 },
        background3_button: { tag: 34, zOrder: 1 },
        background3_label: { tag: 9, zOrder: 1 },
        sprite1: { tag: 1000, zOrder: 3 },
        m_icon: { priority: -1 },
        CCB_Cfg: [
            {
                tag: 1,
                type: "ls",
                name: "m_labelTitle",
                id: "LS_huodong_title",
                stringId: "party_double11_title"
            },
            { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" },
            { tag: 3, name: "m_partyCard" },
            {
                tag: 7,
                type: "ls",
                name: "m_labelChangeTimes1",
                id: "LS_ZbJn",
                stringId: "party_double11_changeTimes"
            },
            {
                tag: 8,
                type: "ls",
                name: "m_labelChangeTimes2",
                id: "LS_ZbJn",
                stringId: "party_double11_changeTimes"
            },
            {
                tag: 9,
                type: "ls",
                name: "m_labelChangeTimes3",
                id: "LS_ZbJn",
                stringId: "party_double11_changeTimes"
            },
            {
                tag: 14,
                type: "btn",
                name: "m_exchangeButton1",
                id: "Btn_btn3",
                stringId: "union_shopExchangeButton"
            },
            {
                tag: 24,
                type: "btn",
                name: "m_exchangeButton2",
                id: "Btn_btn3",
                stringId: "union_shopExchangeButton"
            },
            {
                tag: 34,
                type: "btn",
                name: "m_exchangeButton3",
                id: "Btn_btn3",
                stringId: "union_shopExchangeButton"
            },
            {
                tag: 34,
                type: "btn",
                name: "m_exchangeButton3",
                id: "Btn_btn3",
                stringId: "union_shopExchangeButton"
            },
            { tag: 99, type: "ls", name: "m_labelSubTitle", id: "LS_danyao", string: "" },
            { tag: 71, type: "ls", name: "m_goodname1", id: "LS_daojuName" },
            { tag: 72, type: "ls", name: "m_goodname2", id: "LS_daojuName" },
            { tag: 73, type: "ls", name: "m_goodname3", id: "LS_daojuName", string: "" },
            { tag: 74, type: "ls", name: "m_goodname4", id: "LS_daojuName" },
            { tag: 75, type: "ls", name: "m_goodname5", id: "LS_daojuName", string: "" },
            { tag: 76, type: "ls", name: "m_goodname6", id: "LS_daojuName" },
            { tag: 77, type: "ls", name: "m_goodname7", id: "LS_daojuName", string: "" },
            { tag: 1000, name: "m_icon1" },
            { tag: 1001, name: "m_icon2" },
            { tag: 1003, name: "m_icon3" },
            { tag: 1010, name: "m_icon4" },
            { tag: 1013, name: "m_icon5" },
            { tag: 1020, name: "m_icon6" },
            { tag: 1023, name: "m_icon7" }
        ]
    },
    init: function() {
    var _obj, card;
    if (!this._super()) {
        // source line 79, bytecode pc 19
        return false;
    }
    // source line 81, bytecode pc 27
    (this.m_labelTitle = null);
    // source line 82, bytecode pc 35
    (this.m_btnExit = null);
    // source line 83, bytecode pc 43
    (this.m_partyCard = null);
    // source line 84, bytecode pc 51
    (this.m_exchangeButton1 = null);
    // source line 85, bytecode pc 59
    (this.m_exchangeButton2 = null);
    // source line 86, bytecode pc 67
    (this.m_exchangeButton3 = null);
    // source line 88, bytecode pc 75
    (this.m_goodname1 = null);
    // source line 89, bytecode pc 83
    (this.m_goodname2 = null);
    // source line 90, bytecode pc 91
    (this.m_goodname4 = null);
    // source line 91, bytecode pc 99
    (this.m_goodname6 = null);
    // source line 93, bytecode pc 107
    (this.m_goodData = null);
    // source line 95, bytecode pc 115
    (this.label = null);
    // source line 97, bytecode pc 166
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Party_Double11, this));
    // source line 98, bytecode pc 252
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c", offset: cc.p(-466, -306) });
    // source line 99, bytecode pc 300
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.cfg.CCB_Cfg, this);
    // source line 102, bytecode pc 324
    this.m_btnExit.setOnClickCallBack(function() {
    // source line 103, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 107, bytecode pc 381
    (_obj = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase("142020"));
    // source line 108, bytecode pc 410
    (card = _obj.getRes().createOriginalSprite_Foot());
    // source line 109, bytecode pc 431
    card.setScale(1.4);
    // source line 110, bytecode pc 449
    card.setRotation(-25);
    // source line 111, bytecode pc 501
    xs.Utils.replaceNode(this._ccbNode, this.cfg.card.tag, card, true);
    // source line 112, bytecode pc 561
    (this.rewardList = xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().getRewardList());
    // source line 115, bytecode pc 616
    this.m_exchangeButton1.setOnClickCallBack(this.showMultiItemExchangeDialog.bind({ listener: this, param: 0 }));
    // source line 116, bytecode pc 671
    this.m_exchangeButton2.setOnClickCallBack(this.showMultiItemExchangeDialog.bind({ listener: this, param: 1 }));
    // source line 117, bytecode pc 727
    this.m_exchangeButton3.setOnClickCallBack(this.showMultiItemExchangeDialog.bind({ listener: this, param: 2 }));
    // source line 120, bytecode pc 740
    this.setPartyDeadline();
    // source line 122, bytecode pc 753
    this.setSpriteZOrder();
    // source line 124, bytecode pc 766
    this.setGoodData();
    // source line 126, bytecode pc 768
    return true;
},
    onEnter: function() {
    // source line 130, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 134, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 135, bytecode pc 36
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 136, bytecode pc 63
    this.m_exchangeButton1.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 137, bytecode pc 90
    this.m_exchangeButton2.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 138, bytecode pc 117
    this.m_exchangeButton3.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onExit: function() {
    // source line 142, bytecode pc 12
    this._super();
},
    setSpriteZOrder: function() {
    // source line 146, bytecode pc 19
    this.m_partyCard.setZOrder(1);
    // source line 147, bytecode pc 82
    this._ccbNode.getChildByTag(this.cfg.content.tag).setZOrder(this.cfg.content.zOrder);
    // source line 148, bytecode pc 145
    this._ccbNode.getChildByTag(this.cfg.sprite1.tag).setZOrder(this.cfg.sprite1.zOrder);
    // source line 150, bytecode pc 208
    this._ccbNode.getChildByTag(this.cfg.background3_deng.tag).setZOrder(this.cfg.background3_deng.zOrder);
    // source line 151, bytecode pc 271
    this._ccbNode.getChildByTag(this.cfg.background3_left.tag).setZOrder(this.cfg.background3_left.zOrder);
    // source line 152, bytecode pc 334
    this._ccbNode.getChildByTag(this.cfg.background3_right.tag).setZOrder(this.cfg.background3_right.zOrder);
    // source line 153, bytecode pc 397
    this._ccbNode.getChildByTag(this.cfg.background3_label.tag).setZOrder(this.cfg.background3_label.zOrder);
    // source line 154, bytecode pc 460
    this._ccbNode.getChildByTag(this.cfg.background3_button.tag).setZOrder(this.cfg.background3_button.zOrder);
},
    setGoodData: function() {
    var data, i, item_list, _package, _packageTag, _exchangeTag, j, _item, __itemTag;
    // source line 159, bytecode pc 56
    (data = xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().getRewardList());
    // source line 161, bytecode pc 61
    (i = 0);
    while ((i < data.length)) {
        // source line 163, bytecode pc 83
        (item_list = data[i].item_list);
        // source line 164, bytecode pc 142
        (_package = xs.Models.Game.Package.createWithJson(data[i].object.firstObj()));
        // source line 165, bytecode pc 161
        (_packageTag = (("10" + i) + "3"));
        // source line 166, bytecode pc 171
        (_exchangeTag = (i + 7));
        // source line 167, bytecode pc 218
        this.setExchangeIcon(_package, _packageTag, data[i].exchange_num, data[i].max_num);
        // source line 168, bytecode pc 261
        this.setExchangeNum(data[i].exchange_num, data[i].max_num, _exchangeTag);
        // source line 169, bytecode pc 266
        (j = 0);
        while ((j < item_list.length)) {
            // source line 170, bytecode pc 318
            xs.log_zhz((("item_list[" + j) + "].type"), item_list[j].type);
            // source line 171, bytecode pc 360
            (_item = this.createStyleModel(item_list[j].type, item_list[j].id));
            // source line 172, bytecode pc 377
            (__itemTag = (("10" + i) + j));
            // source line 173, bytecode pc 424
            this.setExchangeIcon(_item, __itemTag, item_list[j].need_num, item_list[j].total_num);
            if (((parseInt(item_list[j].total_num) - parseInt(item_list[j].need_num)) < 0)) {
                // source line 176, bytecode pc 490
                switch (i) {
                    case 0:
                    // source line 178, bytecode pc 534
                    this.m_exchangeButton1.setEnabled(false);
                    break;
                    case 1:
                    // source line 181, bytecode pc 559
                    this.m_exchangeButton2.setEnabled(false);
                    break;
                    case 2:
                    // source line 184, bytecode pc 584
                    this.m_exchangeButton3.setEnabled(false);
                    break;
                    default:
                    break;
                }
            }
            // source line 169, bytecode pc 608
            (j = (+j + 1));
        }
        // source line 161, bytecode pc 641
        (i = (+i + 1));
    }
},
    createStyleModel: function(type, id) {
    var _model;
    // source line 198, bytecode pc 22
    switch (parseInt(type)) {
        case xs.Constant_ObjType_Equipment:
        // source line 200, bytecode pc 151
        (_model = xs.Models.Equipment.createWithBase(id));
        break;
        case xs.Constant_ObjType_Skill:
        // source line 203, bytecode pc 190
        (_model = xs.Models.Skill.createWithBase(id));
        break;
        case xs.Constant_ObjType_Item:
        // source line 206, bytecode pc 229
        (_model = xs.Models.Item.createWithBase(id));
        break;
        case xs.Constant_ObjType_GeneralSoul:
        // source line 209, bytecode pc 268
        (_model = xs.Models.GeneralSoul.createWithBase(id));
        break;
        case xs.Constant_ObjType_SkillPiece:
        // source line 212, bytecode pc 307
        (_model = xs.Models.SkillPiece.createWithBase(id));
        break;
        case xs.Constant_ObjType_EquipmentPiece:
        // source line 215, bytecode pc 346
        (_model = xs.Models.EquipmentPiece.createWithBase(id));
        break;
        default:
        // source line 218, bytecode pc 382
        xs.error("type error", type, id);
        break;
    }
    // source line 222, bytecode pc 391
    return _model;
},
    setExchangeNum: function(canExchangeNum, maxNum, _exchangeTag) {
    // source line 227, bytecode pc 79
    this._ccbNode.getChildByTag(_exchangeTag).setString((((xs.Tools.String.createString("party_double11_changeTimes") + canExchangeNum) + "/") + maxNum));
    if (((parseInt(maxNum) - parseInt(canExchangeNum)) == 0)) {
        // source line 231, bytecode pc 127
        switch (_exchangeTag) {
            case 7:
            // source line 233, bytecode pc 171
            this.m_exchangeButton1.setEnabled(false);
            break;
            case 8:
            // source line 236, bytecode pc 196
            this.m_exchangeButton2.setEnabled(false);
            break;
            case 9:
            // source line 239, bytecode pc 221
            this.m_exchangeButton3.setEnabled(false);
            break;
            default:
            break;
        }
    }
    if ((parseInt(maxNum) == 999)) {
        // source line 247, bytecode pc 293
        this._ccbNode.getChildByTag(_exchangeTag).setVisible(false);
    }
},
    setExchangeIcon: function(param, m_iconTag, canExchangeNum, maxNum) {
    var m_icon, head, _nameString, btn, label;
    // source line 250, bytecode pc 24
    (m_icon = this._ccbNode.getChildByTag(m_iconTag));
    if ((param instanceof xs.Models.Game.Package)) {
        // source line 252, bytecode pc 83
        (head = param.createIcon_GradeAndName());
    } else {
        // source line 254, bytecode pc 112
        (head = param.createIcon_Grade());
        // source line 255, bytecode pc 136
        (_nameString = param.getNameString());
        // source line 256, bytecode pc 140
        switch (m_iconTag) {
            case "1000":
            // source line 258, bytecode pc 221
            this._ccbNode.getChildByTag(71).setString(_nameString);
            break;
            case "1001":
            // source line 261, bytecode pc 262
            this._ccbNode.getChildByTag(72).setString(_nameString);
            break;
            case "1010":
            // source line 264, bytecode pc 303
            this._ccbNode.getChildByTag(74).setString(_nameString);
            break;
            case "1020":
            // source line 267, bytecode pc 344
            this._ccbNode.getChildByTag(76).setString(_nameString);
            break;
            default:
            break;
        }
    }
    // source line 273, bytecode pc 388
    (btn = xs.Views.Btn.createInvisibleWithChild(head));
    // source line 274, bytecode pc 418
    btn.setPosition(m_icon.getPosition());
    // source line 280, bytecode pc 452
    btn.setOnClickCallBack(function() {
    if ((param instanceof xs.Models.Game.Package)) {
        // source line 278, bytecode pc 57
        this.packeageDetailCallback(param);
    }
}.bind(this));
    // source line 281, bytecode pc 469
    btn.setSwallowTouch(false);
    // source line 282, bytecode pc 486
    btn.setZoomOnTouchDown(false);
    // source line 283, bytecode pc 505
    btn.setTag(m_iconTag);
    if (this._ccbNode.getChildByTag((m_iconTag + 999))) {
        // source line 286, bytecode pc 588
        xs.Utils.Node.safeRemoveChild(this._ccbNode.getChildByTag((m_iconTag + 999)));
    }
    // source line 288, bytecode pc 656
    (label = xs.Views.Label.LabelExt.createWithStyles([ "LS_ZbJn", "LS_ZbJn", "LS_ZbJn" ]));
    // source line 289, bytecode pc 692
    label.setAnchorPoint(cc.p(1, 0));
    // source line 292, bytecode pc 810
    label.setPosition(cc.p((btn.getPosition().x + (btn.getContentSize().width / 2)), (btn.getPosition().y - (btn.getContentSize().height / 2))));
    // source line 297, bytecode pc 854
    label.setStringByStrings([ maxNum, "/", canExchangeNum ]);
    // source line 299, bytecode pc 872
    label.setZOrder(100);
    // source line 300, bytecode pc 895
    label.setTag((m_iconTag + 999));
    // source line 301, bytecode pc 933
    xs.Utils.Node.attachNodes(this._ccbNode, label);
    // source line 302, bytecode pc 971
    xs.Utils.Node.attachNodes(this._ccbNode, btn);
    // source line 303, bytecode pc 1002
    xs.Utils.Node.safeRemoveChild(m_icon);
    // source line 304, bytecode pc 1023
    btn.setTouchPriority(-1000);
},
    packeageDetailCallback: function(data) {
    // source line 308, bytecode pc 47
    xs.Views.Mgr.showDialogByName("ShowAddListDialog", data.getData());
},
    setPartyDeadline: function() {
    var isStart, position, parent;
    // source line 312, bytecode pc 56
    (isStart = xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().isStartTime());
    if (isStart) {
        // source line 314, bytecode pc 131
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().getPresentTime() || 0));
        // source line 316, bytecode pc 153
        this.schedule(this.onCountDown, 1);
    } else {
        // source line 318, bytecode pc 225
        (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().getContinueTime() || 0));
    }
    // source line 321, bytecode pc 246
    (position = this.m_labelSubTitle.getPosition());
    // source line 322, bytecode pc 267
    (parent = this.m_labelSubTitle.getParent());
    // source line 323, bytecode pc 329
    (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
    // source line 324, bytecode pc 382
    this._labelExt.setString(0, xs.Tools.String.createString("auto_name_122"));
    // source line 325, bytecode pc 408
    this._labelExt.setString(1, "");
    // source line 326, bytecode pc 437
    this._labelExt.setAnchorPoint(xs.ap_c);
    // source line 327, bytecode pc 459
    parent.addChild(this._labelExt);
    // source line 328, bytecode pc 481
    this._labelExt.setPosition(position);
    // source line 329, bytecode pc 494
    this.onCountDown();
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 335, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 336, bytecode pc 71
        this.m_labelSubTitle.setString(xs.Tools.String.createString("auto_name_149"));
        // source line 337, bytecode pc 97
        this._labelExt.setString(0, "");
        // source line 338, bytecode pc 123
        this._labelExt.setString(1, "");
        // source line 339, bytecode pc 125
        return void 0;
    }
    // source line 342, bytecode pc 156
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 343, bytecode pc 190
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 344, bytecode pc 207
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 348, bytecode pc 296
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 350, bytecode pc 311
    (this.m_residueTime = (this.m_residueTime - 1));
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 355, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 358, bytecode pc 27
    return mNum;
},
    freshExchangeData: function() {
    // source line 362, bytecode pc 22
    xs.log_zhz("freshExchangeData");
    // source line 363, bytecode pc 35
    this.setGoodData();
},
    showMultiItemExchangeDialog: function() {
    var param;
    // source line 367, bytecode pc 9
    (param = this.param);
    // source line 368, bytecode pc 57
    (this.listener.multiBuyDialog = xs.Views.Mgr.showDialogByName("MultiItemExchangeDialog", param));
    // source line 369, bytecode pc 87
    this.listener.multiBuyDialog.setListener(this.listener);
}
}));
// source line 373, bytecode pc 1646
(xs.Scene.Party.Double11Dialog.create = function(params) {
    var ret;
    // source line 374, bytecode pc 28
    (ret = new xs.Scene.Party.Double11Dialog());
    if ((ret && ret.init(params))) {
        // source line 376, bytecode pc 64
        return ret;
    }
    // source line 378, bytecode pc 66
    return null;
});
// source line 383, bytecode pc 1726
xs.Views.Mgr.registerDialog("Double11Dialog", { "class": xs.Scene.Party.Double11Dialog, styleType: xs.Constant_DlgStyleType_Large });
