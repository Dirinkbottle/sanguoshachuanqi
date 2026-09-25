// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ChatContentLayer.js:1
// source line 358, bytecode pc 399
(xs.Views.ChatContentLayer = cc.Layer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    cfg: {
        onceCheckTime: 1,
        btnSendChat: { priority: -1 },
        ccbCfg: [
            { tag: 14, type: "btn", name: "btnSendChat", id: "Btn_SendChat" },
            { tag: 23, type: "ls", name: "lblLaba", id: "LS_popUI5", string: "x0" },
            { tag: 22, type: "ls", name: "lblInputTitle", id: "LS_bnt2", string: "" }
        ]
    },
    init: function(chatType) {
    var _editBoxSize, inputTitleBG, bg;
    if (!this._super()) {
        // source line 30, bytecode pc 19
        return false;
    }
    // source line 33, bytecode pc 36
    (this.msgReadyQueueArr = new Array());
    // source line 34, bytecode pc 44
    (this.msgArr = null);
    // source line 37, bytecode pc 71
    (_editBoxSize = cc.size(560, 56));
    // source line 39, bytecode pc 81
    (this.chatTypeData = chatType);
    // source line 40, bytecode pc 90
    switch (chatType.channel) {
        case xs.ChatType_World.channel:
        // source line 43, bytecode pc 224
        (this.msgArr = xs.Models.ChatMessageManager.getInstance().worldMsgQueue.concat());
        // source line 44, bytecode pc 251
        (_editBoxSize = cc.size(446, 56));
        break;
        case xs.ChatType_Guild.channel:
        // source line 48, bytecode pc 305
        (this.msgArr = xs.Models.ChatMessageManager.getInstance().guildMsgQueue.concat());
        break;
        case xs.ChatType_Private.channel:
        // source line 53, bytecode pc 359
        (this.msgArr = xs.Models.ChatMessageManager.getInstance().privateMsgQueue.concat());
        break;
        case xs.ChatType_Duijiu.channel:
        // source line 57, bytecode pc 413
        (this.msgArr = xs.Models.ChatMessageManager.getInstance().duijiuMsgQueue.concat());
        break;
        default:
        // source line 60, bytecode pc 441
        xs.log("错误!聊天类型未定义!!");
        break;
    }
    // source line 65, bytecode pc 454
    (this.m_baseTouchPriority = 0);
    // source line 66, bytecode pc 462
    (this.m_tableViewSize = null);
    // source line 67, bytecode pc 470
    (this.m_tableView = null);
    // source line 68, bytecode pc 478
    (this.lblLaba = null);
    // source line 69, bytecode pc 486
    (this.btnSendChat = null);
    // source line 70, bytecode pc 494
    (this.lblInputTitle = null);
    // source line 73, bytecode pc 536
    (this.ccbNode = cc.BuilderReader.load(this.chatTypeData.ccbName, this));
    // source line 74, bytecode pc 579
    this.ccbNode.setContentSize(cc.size(800, 460));
    // source line 75, bytecode pc 618
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 76, bytecode pc 671
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb" });
    // source line 78, bytecode pc 719
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 81, bytecode pc 732
    this.updateLaba();
    // source line 84, bytecode pc 763
    (this.m_tableViewSize = cc.size(788, 379));
    // source line 85, bytecode pc 800
    (this.m_tableView = cc.TableView.create(this, this.m_tableViewSize));
    // source line 86, bytecode pc 829
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 87, bytecode pc 858
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 88, bytecode pc 878
    this.m_tableView.setDelegate(this);
    // source line 89, bytecode pc 919
    this.m_tableView.setPosition(cc.p(10, 70));
    // source line 90, bytecode pc 939
    this.addChild(this.m_tableView);
    if ((this.m_tableView.getContentSize().height >= this.m_tableView.getViewSize().height)) {
        // source line 93, bytecode pc 1030
        this.m_tableView.setContentOffset(cc.p(0, 0), false);
    }
    // source line 97, bytecode pc 1054
    (inputTitleBG = this.ccbNode.getChildByTag(30));
    // source line 98, bytecode pc 1072
    inputTitleBG.setZOrder(2);
    // source line 99, bytecode pc 1093
    this.lblInputTitle.setZOrder(3);
    // source line 101, bytecode pc 1150
    this.lblInputTitle.setString(xs.Tools.String.createString(this.chatTypeData.channelName));
    // source line 104, bytecode pc 1206
    (bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_0_7_kuangdi.frameName));
    // source line 105, bytecode pc 1242
    (this.editBox = cc.EditBox.create(_editBoxSize, bg));
    // source line 106, bytecode pc 1281
    this.editBox.setAnchorPoint(cc.p(0, 0));
    // source line 107, bytecode pc 1322
    this.editBox.setPosition(cc.p(94, 4));
    // source line 108, bytecode pc 1366
    this.editBox.setPlaceholderFontColor(cc.c3b(153, 32, 0));
    // source line 109, bytecode pc 1387
    this.editBox.setPlaceholderFontSize(28);
    // source line 110, bytecode pc 1411
    this.editBox.setFontName("Arial");
    // source line 111, bytecode pc 1432
    this.editBox.setFontSize(28);
    // source line 112, bytecode pc 1476
    this.editBox.setFontColor(cc.c3b(153, 32, 0));
    // source line 113, bytecode pc 1505
    this.editBox.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 114, bytecode pc 1534
    this.editBox.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 115, bytecode pc 1554
    this.editBox.setDelegate(this);
    // source line 116, bytecode pc 1581
    this.ccbNode.addChild(this.editBox, 1);
    if ((chatType.channel == xs.ChatType_Duijiu.channel)) {
        // source line 120, bytecode pc 1644
        this.ccbNode.getChildByTag(15).setVisible(false);
        // source line 121, bytecode pc 1677
        this.ccbNode.getChildByTag(1).setVisible(false);
        // source line 122, bytecode pc 1711
        this.ccbNode.getChildByTag(2).setVisible(false);
        // source line 123, bytecode pc 1728
        inputTitleBG.setVisible(false);
        // source line 124, bytecode pc 1748
        this.lblLaba.setVisible(false);
        // source line 125, bytecode pc 1768
        this.btnSendChat.setVisible(false);
        // source line 126, bytecode pc 1788
        this.lblInputTitle.setVisible(false);
        // source line 127, bytecode pc 1832
        this.editBox.setPosition(cc.p(94, -4444));
        // source line 128, bytecode pc 1852
        this.editBox.setVisible(false);
        // source line 129, bytecode pc 1876
        this.editBox.setText("");
    } else {
        // source line 131, bytecode pc 1915
        this.ccbNode.getChildByTag(15).setVisible(true);
        // source line 132, bytecode pc 1948
        this.ccbNode.getChildByTag(1).setVisible(true);
        // source line 133, bytecode pc 1982
        this.ccbNode.getChildByTag(2).setVisible(true);
        // source line 134, bytecode pc 1999
        inputTitleBG.setVisible(true);
        // source line 135, bytecode pc 2019
        this.lblLaba.setVisible(true);
        // source line 136, bytecode pc 2039
        this.btnSendChat.setVisible(true);
        // source line 137, bytecode pc 2059
        this.lblInputTitle.setVisible(true);
        // source line 138, bytecode pc 2100
        this.editBox.setPosition(cc.p(94, 4));
        // source line 139, bytecode pc 2120
        this.editBox.setVisible(true);
    }
    // source line 218, bytecode pc 2157
    this.btnSendChat.setOnClickCallBack(function() {
    var text;
    // source line 147, bytecode pc 20
    (text = this.editBox.getText());
    if ((text != null)) {
        if (xs.isSpecialTime) {
            // source line 153, bytecode pc 105
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_specialtime"));
            // source line 154, bytecode pc 107
            return void 0;
        }
        if (xs.Tools.UI.IsHaveSensitiveWords(text)) {
            // source line 159, bytecode pc 202
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_haveSensitiveWords"));
            // source line 160, bytecode pc 204
            return void 0;
        }
        // source line 163, bytecode pc 238
        (text = xs.Tools.UI.FilteringSensitiveWords(text));
        if (((text == null) || (text == ""))) {
            // source line 166, bytecode pc 323
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_258"));
            // source line 167, bytecode pc 325
            return void 0;
        }
        // source line 212, bytecode pc 506
        xs.Views.Mgr.reqUrl(xs.Cfg.Url.sendMessage, {
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    channel: this.chatTypeData.channel,
    message: text,
    send_to: ""
}, function(resData) {
    if (resData) {
        // source line 182, bytecode pc 56
        xs.Models.ChatMessageManager.getInstance().requestNewMsgFromServer_Success(resData.chat_msg, true);
    }
    // source line 184, bytecode pc 69
    this.updateLaba();
    // source line 185, bytecode pc 93
    this.editBox.setText("");
}.bind(this), function(resData) {
    var dialog;
    if ((resData.error_code == "e_8035")) {
        // source line 198, bytecode pc 175
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 196, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 199, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
}));
        // source line 201, bytecode pc 193
        (dialog = dialog.getRealDialog());
        // source line 202, bytecode pc 241
        dialog.setContentText(xs.Tools.String.createString("auto_name_257"));
        // source line 203, bytecode pc 262
        dialog.setTitleByString("");
        // source line 205, bytecode pc 264
        return true;
    } else {
        // source line 208, bytecode pc 271
        return false;
    }
}, false, null);
    } else {
        // source line 215, bytecode pc 571
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_258"));
    }
}.bind(this));
    // source line 220, bytecode pc 2159
    return true;
},
    onEnter: function() {
    // source line 224, bytecode pc 12
    this._super();
    // source line 230, bytecode pc 60
    xs.Utils.Notify.addObserver(this, this.addNewMessage, this.chatTypeData.notify);
    // source line 233, bytecode pc 102
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this._checkQueue);
    // source line 234, bytecode pc 167
    xs.director.getScheduler().scheduleCallbackForTarget(this, this._checkQueue, this.cfg.onceCheckTime, cc.REPEAT_FOREVER);
},
    onExit: function() {
    // source line 238, bytecode pc 41
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this._checkQueue);
    // source line 240, bytecode pc 82
    xs.Utils.Notify.removeObserver(this, this.chatTypeData.notify);
    // source line 241, bytecode pc 95
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 245, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    if (this.m_tableView) {
        // source line 247, bytecode pc 42
        this.m_tableView.setTouchPriority(priority);
    }
    // source line 250, bytecode pc 69
    this.editBox.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 251, bytecode pc 111
    this.btnSendChat.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnSendChat.priority));
},
    addNewMessage: function(params) {
    if (params.chatModelArray) {
        if ((params.isShowNow == true)) {
            if (params.isShowNow) {
                // source line 260, bytecode pc 64
                this.showNewContent(params.chatModelArray, true);
            }
        } else {
            // source line 265, bytecode pc 102
            (this.msgReadyQueueArr = this.msgReadyQueueArr.concat(params.chatModelArray));
        }
    }
},
    _checkQueue: function() {
    var tmpArr;
    if ((this.msgReadyQueueArr.length > 0)) {
        // source line 273, bytecode pc 31
        (tmpArr = new Array());
        // source line 274, bytecode pc 55
        tmpArr.push(this.msgReadyQueueArr[0]);
        // source line 275, bytecode pc 74
        this.showNewContent(tmpArr, false);
        // source line 276, bytecode pc 92
        this.msgReadyQueueArr.shift();
    }
},
    updateLaba: function() {
    var labaNum;
    // source line 282, bytecode pc 66
    (labaNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Laba));
    // source line 283, bytecode pc 89
    (labaNum = ((labaNum == null) ? 0 : labaNum));
    // source line 284, bytecode pc 117
    this.lblLaba.setString(("x" + labaNum));
},
    showNewContent: function(chatModelArray, isShowNew) {
    var _height, i, offsetOld, offsetOld_after;
    if (((chatModelArray == null) || (chatModelArray.length == 0))) {
        // source line 291, bytecode pc 27
        return void 0;
    }
    // source line 294, bytecode pc 55
    (this.msgArr = this.msgArr.concat(chatModelArray));
    // source line 295, bytecode pc 60
    (_height = 0);
    // source line 296, bytecode pc 65
    (i = 0);
    while ((i < chatModelArray.length)) {
        // source line 297, bytecode pc 97
        (_height = (_height + chatModelArray[i].getCellHeight()));
        // source line 296, bytecode pc 112
        i++;
    }
    // source line 301, bytecode pc 151
    (offsetOld = this.m_tableView.getContentOffset());
    // source line 303, bytecode pc 193
    (offsetOld_after = cc.p(offsetOld.x, (offsetOld.y - _height)));
    // source line 305, bytecode pc 211
    this.m_tableView.reloadData();
    if ((isShowNew == true)) {
        if ((this.m_tableView.getContentSize().height >= this.m_tableView.getViewSize().height)) {
            // source line 310, bytecode pc 294
            xs.log("定位到新信息");
            // source line 312, bytecode pc 316
            this.m_tableView.setContentOffset(offsetOld_after);
            // source line 313, bytecode pc 364
            this.m_tableView.setContentOffset(cc.p(offsetOld.x, 0), true);
        }
    } else {
        if ((offsetOld.y < -20)) {
            // source line 319, bytecode pc 407
            this.m_tableView.setContentOffset(offsetOld_after);
        } else {
            if (((offsetOld.y <= 0) && (offsetOld.y >= -20))) {
                // source line 323, bytecode pc 466
                this.m_tableView.setContentOffset(offsetOld_after);
                // source line 324, bytecode pc 514
                this.m_tableView.setContentOffset(cc.p(offsetOld.x, 0), true);
            } else {
                // source line 328, bytecode pc 541
                this.m_tableView.setContentOffset(offsetOld_after);
            }
        }
    }
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    var chatModel;
    // source line 342, bytecode pc 13
    (chatModel = this.msgArr[idx]);
    // source line 343, bytecode pc 54
    return cc.size(chatModel.cellWidth, chatModel.getCellHeight());
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 347, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 350, bytecode pc 77
        (cell = xs.Views.Table.Cell.ChatContentCell.create(this.msgArr[idx]));
    } else {
        // source line 353, bytecode pc 108
        cell.updateCell(this.msgArr[idx]);
    }
    // source line 356, bytecode pc 112
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 359, bytecode pc 11
    return this.msgArr.length;
}
}));
// source line 389, bytecode pc 425
(xs.Views.ChatContentLayer.create = function(chatType) {
    var layer;
    // source line 390, bytecode pc 23
    (layer = new xs.Views.ChatContentLayer());
    if ((layer && layer.init(chatType))) {
        // source line 392, bytecode pc 59
        return layer;
    }
    // source line 394, bytecode pc 61
    return null;
});
