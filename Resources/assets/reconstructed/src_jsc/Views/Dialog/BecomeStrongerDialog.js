// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/BecomeStrongerDialog.js:1
// source line 113, bytecode pc 1176
(xs.Views.Dialog.BecomeStrongerDialog = xs.Views.HungerLayer.extend({
    name: "BecomeStrongerDialog",
    _data: [
        {
            name: "becomeStrongerName_1",
            introduction: "becomeStrongerIntro_1",
            iconName: "Cmn02_IconPlayerAttr_Exp",
            openLevel: "1",
            sceneType: "1"
        },
        {
            name: "becomeStrongerName_2",
            introduction: "becomeStrongerIntro_2",
            iconName: "Cmn02_zhuangbeiqianghua",
            openLevel: "1",
            sceneType: "2"
        },
        {
            name: "becomeStrongerName_3",
            introduction: "becomeStrongerIntro_3",
            iconName: "Cmn02_jinengshenji",
            openLevel: "1",
            sceneType: "3"
        },
        {
            name: "becomeStrongerName_4",
            introduction: "becomeStrongerIntro_4",
            iconName: "Cmn02_wujiangtupo",
            openLevel: "1",
            sceneType: "4"
        },
        {
            name: "becomeStrongerName_5",
            introduction: "becomeStrongerIntro_5",
            iconName: "Cmn02_wujiangxiulian",
            openLevel: "1",
            sceneType: "5"
        },
        {
            name: "becomeStrongerName_6",
            introduction: "becomeStrongerIntro_6",
            iconName: "Cmn02_zhuangbeijinglian",
            openLevel: "18",
            sceneType: "6"
        },
        {
            name: "becomeStrongerName_7",
            introduction: "becomeStrongerIntro_7",
            iconName: "Cmn02_zhuangbeibaoshi",
            openLevel: "40",
            sceneType: "7"
        },
        {
            name: "becomeStrongerName_8",
            introduction: "becomeStrongerIntro_8",
            iconName: "Cmn02_shenbingyangcheng",
            openLevel: "50",
            sceneType: "8"
        },
        {
            name: "becomeStrongerName_9",
            introduction: "becomeStrongerIntro_9",
            iconName: "Cmn02_datongjingmai",
            openLevel: "35",
            sceneType: "9"
        },
        {
            name: "becomeStrongerName_10",
            introduction: "becomeStrongerIntro_10",
            iconName: "Cmn02_huoquwujiang",
            openLevel: "1",
            sceneType: "10"
        },
        {
            name: "becomeStrongerName_11",
            introduction: "becomeStrongerIntro_11",
            iconName: "Cmn02_huoquzhuangbei",
            openLevel: "1",
            sceneType: "11"
        },
        {
            name: "becomeStrongerName_12",
            introduction: "becomeStrongerIntro_12",
            iconName: "Cmn02_huoqujineng",
            openLevel: "1",
            sceneType: "12"
        },
        {
            name: "becomeStrongerName_13",
            introduction: "becomeStrongerIntro_13",
            iconName: "Cmn02_shenmiyoushang",
            openLevel: "1",
            sceneType: "13"
        },
        {
            name: "becomeStrongerName_14",
            introduction: "becomeStrongerIntro_14",
            iconName: "Cmn02_nvshenchuzhan",
            openLevel: "10",
            sceneType: "14"
        },
        {
            name: "becomeStrongerName_15",
            introduction: "becomeStrongerIntro_15",
            iconName: "Cmn02_zhanjishengji",
            openLevel: "5",
            sceneType: "15"
        }
    ],
    ccbCfg: [
        { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" }
    ],
    init: function() {
    var _levelPlayer, i;
    if (!this._super()) {
        // source line 30, bytecode pc 19
        return false;
    }
    // source line 32, bytecode pc 27
    (this.ccbNode = null);
    // source line 33, bytecode pc 35
    (this.btnClose = null);
    // source line 34, bytecode pc 43
    (this.lblTitle = null);
    // source line 35, bytecode pc 55
    (this.m_dataList = []);
    // source line 37, bytecode pc 91
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionActiveDialog.ccbi", this));
    // source line 38, bytecode pc 134
    this.ccbNode.setContentSize(cc.size(935, 613));
    // source line 39, bytecode pc 181
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 40, bytecode pc 234
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 41, bytecode pc 277
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 45, bytecode pc 301
    this.btnClose.setOnClickCallBack(function() {
    // source line 46, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 49, bytecode pc 352
    this.lblTitle.setString(xs.Tools.String.createString("becomeStrongerTitle"));
    // source line 51, bytecode pc 379
    (this.m_titleBg = this.ccbNode.getChildByTag(3));
    if (this.m_titleBg) {
        // source line 53, bytecode pc 410
        this.m_titleBg.setVisible(false);
    }
    // source line 57, bytecode pc 462
    (_levelPlayer = xs.gd_mgr.getInstance().Player.getPlayer().getPlayerLevel());
    // source line 58, bytecode pc 467
    (i = 0);
    while ((i < this._data.length)) {
        if ((_levelPlayer >= parseInt(this._data[i].openLevel))) {
            // source line 60, bytecode pc 541
            this.m_dataList.push(this._data[i]);
        }
        // source line 58, bytecode pc 555
        (i = (+i + 1));
    }
    // source line 65, bytecode pc 632
    (this.m_tableView = cc.TableView.create(this, cc.size(895, 506)));
    // source line 66, bytecode pc 661
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 67, bytecode pc 702
    this.m_tableView.setPosition(cc.p(27, 22));
    // source line 68, bytecode pc 722
    this.m_tableView.setDelegate(this);
    // source line 69, bytecode pc 751
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 70, bytecode pc 776
    this.ccbNode.addChild(this.m_tableView);
    // source line 71, bytecode pc 794
    this.m_tableView.reloadData();
    // source line 74, bytecode pc 796
    return true;
},
    onEnter: function() {
    // source line 78, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 82, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 86, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 87, bytecode pc 36
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + 1));
    // source line 88, bytecode pc 63
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + 1));
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 98, bytecode pc 24
    return cc.size(882, 128);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 103, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 105, bytecode pc 61
        (cell = xs.Views.Dialog.BecomeStrongerTableViewCell.create());
    }
    // source line 109, bytecode pc 87
    cell.update(this.m_dataList[idx]);
    // source line 111, bytecode pc 91
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_dataList) {
        // source line 115, bytecode pc 22
        return this.m_dataList.length;
    }
    // source line 117, bytecode pc 24
    return 0;
}
}));
// source line 121, bytecode pc 1207
(xs.Views.Dialog.BecomeStrongerDialog.create = function() {
    var ret;
    // source line 122, bytecode pc 28
    (ret = new xs.Views.Dialog.BecomeStrongerDialog());
    if ((ret && ret.init())) {
        // source line 124, bytecode pc 60
        return ret;
    }
    // source line 126, bytecode pc 62
    return null;
});
// source line 132, bytecode pc 1297
xs.Views.Mgr.registerDialog("BecomeStrongerDialog", {
    "class": xs.Views.Dialog.BecomeStrongerDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "DlgCmn"
});
// source line 606, bytecode pc 1627
(xs.Views.Dialog.BecomeStrongerTableViewCell = cc.TableViewCell.extend({
    ctor: function() {
    // source line 140, bytecode pc 12
    this._super();
    // source line 141, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    ccbCfg: [
        { tag: 2, type: "ls", name: "m_becomeStrongerName", id: "LS_wujiangInf1" },
        { tag: 3, type: "ls", name: "m_becomeStrongerIntro", id: "LS_daojuName" },
        { tag: 4, type: "btn", name: "m_goBtn", id: "Btn_btn3", stringId: "auto_name_513" }
    ],
    init: function() {
    if (!this._super()) {
        // source line 151, bytecode pc 19
        return false;
    }
    // source line 153, bytecode pc 27
    (this.ccbNode = null);
    // source line 154, bytecode pc 35
    (this.m_becomeStrongerName = null);
    // source line 155, bytecode pc 43
    (this.m_becomeStrongerIntro = null);
    // source line 156, bytecode pc 51
    (this.m_goBtn = null);
    // source line 157, bytecode pc 59
    (this.m_icon = null);
    // source line 159, bytecode pc 95
    (this.ccbNode = cc.BuilderReader.load("ccb3/BecomeStrongerDialogCell.ccbi", this));
    // source line 160, bytecode pc 134
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 164, bytecode pc 218
    xs.Utils.Node.attachNodes(this, this.ccbNode, { offset: cc.p(0, 0), desc: "lb", sc: false });
    // source line 166, bytecode pc 261
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 169, bytecode pc 287
    (this.m_icon = this.ccbNode.getChildByTag(1));
    // source line 171, bytecode pc 307
    this.m_goBtn.setEnabled(true);
    // source line 172, bytecode pc 327
    this.m_goBtn.setEventOnDisable(true);
    // source line 174, bytecode pc 329
    return true;
},
    setGoButtonStatus: function(type) {
    var result, _bool, _HaveSkillResult, num, _HaveEquipmentResult, _RefineStoneResult, goddessModel;
    // source line 178, bytecode pc 3
    switch (type) {
        case 1:
        // source line 181, bytecode pc 95
        this.m_goBtn.setEnabled(true);
        // source line 186, bytecode pc 132
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 184, bytecode pc 34
    xs.Scene.Mgr.saveStatus("m_bInHardChapter", false);
    // source line 185, bytecode pc 67
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}.bind(this));
        break;
        case 2:
        // source line 191, bytecode pc 188
        (result = xs.Profile.GameData.Mgr.getInstance().Team.getNotAllEquipmentsStrongerIsHighest());
        // source line 192, bytecode pc 226
        (_bool = ((result.haveCanEquip && result.moneyEnough) ? true : false));
        if (_bool) {
            // source line 194, bytecode pc 254
            this.m_goBtn.setEnabled(true);
            // source line 197, bytecode pc 291
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 196, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this));
        } else {
            // source line 199, bytecode pc 316
            this.m_goBtn.setEnabled(false);
            if (!result.haveCanEquip) {
                // source line 203, bytecode pc 367
                this.m_goBtn.setOnClickCallBack(function() {
    // source line 202, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("becomeStronger_1");
}.bind(this));
            } else {
                if (!result.moneyEnough) {
                    // source line 208, bytecode pc 423
                    this.m_goBtn.setOnClickCallBack(function() {
    // source line 207, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("becomeStronger_2");
}.bind(this));
                }
            }
        }
        break;
        case 3:
        // source line 216, bytecode pc 479
        (result = xs.Profile.GameData.Mgr.getInstance().Team.getIsAllSkillsIsHighest());
        if (result) {
            // source line 218, bytecode pc 507
            this.m_goBtn.setEnabled(false);
            // source line 222, bytecode pc 544
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 221, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("becomeStronger_10");
}.bind(this));
        } else {
            // source line 225, bytecode pc 600
            (_HaveSkillResult = xs.Profile.GameData.Mgr.getInstance().Skills.isHaveSkillCanBeEaten());
            if (_HaveSkillResult) {
                // source line 227, bytecode pc 628
                this.m_goBtn.setEnabled(true);
                // source line 231, bytecode pc 665
                this.m_goBtn.setOnClickCallBack(function() {
    // source line 230, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("SkillScene");
}.bind(this));
            } else {
                // source line 233, bytecode pc 690
                this.m_goBtn.setEnabled(false);
                // source line 247, bytecode pc 727
                this.m_goBtn.setOnClickCallBack(function() {
    // source line 246, bytecode pc 179
    xs.Views.Mgr.showDialogByName("common", {
    title: "becomeStronger_4",
    content: "becomeStronger_11",
    leftText: xs.Tools.String.createString("chaos_toSnatch"),
    rightText: xs.Tools.String.createString("auto_name_146"),
    leftCB: function() {
    // source line 242, bytecode pc 26
    xs.Tools.Scene.gotoChaos();
}.bind(this),
    rightCB: function() {
    // source line 245, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this)
});
}.bind(this));
            }
        }
        break;
        case 4:
        // source line 254, bytecode pc 783
        (result = xs.Profile.GameData.Mgr.getInstance().Generals.isHaveCanBreachGeneral());
        if (result) {
            // source line 256, bytecode pc 811
            this.m_goBtn.setEnabled(true);
            // source line 260, bytecode pc 848
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 259, bytecode pc 52
    xs.Scene.Mgr.changeSceneByName("AgaScene", { selPageIndex: 2, cardIdx: 0 });
}.bind(this));
        } else {
            // source line 262, bytecode pc 873
            this.m_goBtn.setEnabled(false);
            // source line 300, bytecode pc 910
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 299, bytecode pc 179
    xs.Views.Mgr.showDialogByName("common", {
    title: "becomeStronger_4",
    content: "becomeStronger_3",
    leftText: xs.Tools.String.createString("auto_name_343"),
    rightText: xs.Tools.String.createString("str_upgrade_guide_6"),
    leftCB: function() {
    // source line 271, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}.bind(this),
    rightCB: function() {
    var curHardMapId, mapInfo, m_bInHardChapter;
    // source line 275, bytecode pc 61
    (curHardMapId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerEliteMapStep());
    // source line 276, bytecode pc 116
    (mapInfo = xs.Profile.GameData.Mgr.getInstance().Map.getMapObjByMapId(curHardMapId));
    if (!mapInfo) {
        // source line 279, bytecode pc 130
        (m_bInHardChapter = true);
        // source line 280, bytecode pc 186
        xs.Profile.GameData.Mgr.getInstance().Map.setCurMapId(curHardMapId, m_bInHardChapter);
        // source line 292, bytecode pc 236
        xs.Tools.Net.requireChapterInfo({ map_id: curHardMapId }, function(jsonObj) {
    // source line 288, bytecode pc 56
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 289, bytecode pc 91
    xs.Scene.Mgr.saveStatus("m_bInHardChapter", true);
    // source line 290, bytecode pc 124
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}, this);
    } else {
        // source line 296, bytecode pc 276
        xs.Scene.Mgr.saveStatus("m_bInHardChapter", true);
        // source line 297, bytecode pc 309
        xs.Scene.Mgr.changeSceneByName("FightChapters");
    }
}.bind(this)
});
}.bind(this));
        }
        break;
        case 5:
        // source line 307, bytecode pc 966
        (num = xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum());
        if ((num >= 5)) {
            // source line 309, bytecode pc 997
            this.m_goBtn.setEnabled(true);
            // source line 312, bytecode pc 1034
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 311, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("AgaScene");
}.bind(this));
        } else {
            // source line 315, bytecode pc 1059
            this.m_goBtn.setEnabled(false);
            // source line 330, bytecode pc 1096
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 329, bytecode pc 179
    xs.Views.Mgr.showDialogByName("common", {
    title: "becomeStronger_4",
    content: "becomeStronger_5",
    leftText: xs.Tools.String.createString("auto_name_351"),
    rightText: xs.Tools.String.createString("becomeStronger_6"),
    leftCB: function() {
    // source line 324, bytecode pc 26
    xs.Tools.Scene.gotoLadder();
}.bind(this),
    rightCB: function() {
    // source line 328, bytecode pc 46
    xs.Scene.Mgr.changeSceneByName("StoreScene", { pageIdx: 2 });
}.bind(this)
});
}.bind(this));
        }
        break;
        case 6:
        // source line 337, bytecode pc 1152
        (result = xs.Profile.GameData.Mgr.getInstance().Team.getIsAllEquipmentsRefineIsHighest());
        if (result) {
            // source line 339, bytecode pc 1211
            (_HaveEquipmentResult = xs.Profile.GameData.Mgr.getInstance().Equipments.isHaveEquipmentCanBeEaten());
            // source line 340, bytecode pc 1262
            (_RefineStoneResult = xs.Profile.GameData.Mgr.getInstance().Items.isHaveRefineStone());
            if ((_HaveEquipmentResult || _RefineStoneResult)) {
                // source line 342, bytecode pc 1299
                this.m_goBtn.setEnabled(true);
                // source line 346, bytecode pc 1336
                this.m_goBtn.setOnClickCallBack(function() {
    // source line 345, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this));
            } else {
                // source line 348, bytecode pc 1361
                this.m_goBtn.setEnabled(false);
                // source line 364, bytecode pc 1398
                this.m_goBtn.setOnClickCallBack(function() {
    // source line 363, bytecode pc 179
    xs.Views.Mgr.showDialogByName("common", {
    title: "becomeStronger_4",
    content: "becomeStronger_13",
    leftText: xs.Tools.String.createString("becomeStronger_14"),
    rightText: xs.Tools.String.createString("auto_name_346"),
    leftCB: function() {
    // source line 357, bytecode pc 34
    xs.Scene.Mgr.saveStatus("m_bInHardChapter", false);
    // source line 358, bytecode pc 67
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}.bind(this),
    rightCB: function() {
    // source line 362, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("BagScene");
}.bind(this)
});
}.bind(this));
            }
        } else {
            // source line 368, bytecode pc 1423
            this.m_goBtn.setEnabled(true);
            // source line 372, bytecode pc 1460
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 371, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("becomeStronger_12");
}.bind(this));
        }
        break;
        case 7:
        // source line 378, bytecode pc 1521
        (num = xs.Profile.GameData.Mgr.getInstance().Gems.getAll().length);
        if ((num > 0)) {
            // source line 380, bytecode pc 1551
            this.m_goBtn.setEnabled(true);
            // source line 384, bytecode pc 1588
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 383, bytecode pc 12
    this.gemsCallback();
}.bind(this));
        } else {
            // source line 387, bytecode pc 1613
            this.m_goBtn.setEnabled(false);
            // source line 401, bytecode pc 1650
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 400, bytecode pc 179
    xs.Views.Mgr.showDialogByName("common", {
    title: "becomeStronger_4",
    content: "becomeStronger_7",
    leftText: xs.Tools.String.createString("becomeStronger_8"),
    rightText: xs.Tools.String.createString("auto_name_146"),
    leftCB: function() {
    // source line 396, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("BagScene");
}.bind(this),
    rightCB: function() {
    // source line 399, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this)
});
}.bind(this));
        }
        break;
        case 8:
        // source line 409, bytecode pc 1675
        this.m_goBtn.setEnabled(true);
        // source line 413, bytecode pc 1712
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 412, bytecode pc 12
    this.miracleWeaponCallback();
}.bind(this));
        break;
        case 9:
        // source line 418, bytecode pc 1737
        this.m_goBtn.setEnabled(true);
        // source line 422, bytecode pc 1774
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 421, bytecode pc 12
    this.goPracticeMeridiansCallback();
}.bind(this));
        break;
        case 10:
        // source line 427, bytecode pc 1799
        this.m_goBtn.setEnabled(true);
        // source line 431, bytecode pc 1836
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 430, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}.bind(this));
        break;
        case 11:
        // source line 436, bytecode pc 1861
        this.m_goBtn.setEnabled(true);
        // source line 441, bytecode pc 1898
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 439, bytecode pc 34
    xs.Scene.Mgr.saveStatus("m_bInHardChapter", false);
    // source line 440, bytecode pc 67
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}.bind(this));
        break;
        case 12:
        // source line 446, bytecode pc 1923
        this.m_goBtn.setEnabled(true);
        // source line 451, bytecode pc 1960
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 449, bytecode pc 34
    xs.Scene.Mgr.saveStatus("m_bInHardChapter", false);
    // source line 450, bytecode pc 67
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}.bind(this));
        break;
        case 13:
        // source line 456, bytecode pc 1985
        this.m_goBtn.setEnabled(true);
        // source line 460, bytecode pc 2022
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 459, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}.bind(this));
        break;
        case 14:
        // source line 465, bytecode pc 2067
        (goddessModel = xs.Profile.GameData.Mgr.getInstance().Goddess);
        if ((goddessModel.getHaveGoddessNum() == 0)) {
            // source line 467, bytecode pc 2108
            this.m_goBtn.setEnabled(false);
            // source line 471, bytecode pc 2145
            this.m_goBtn.setOnClickCallBack(function() {
    // source line 470, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("goddess_noSelect01");
}.bind(this));
        } else {
            if (goddessModel.isStrongestInFight()) {
                // source line 474, bytecode pc 2189
                this.m_goBtn.setEnabled(false);
                // source line 478, bytecode pc 2226
                this.m_goBtn.setOnClickCallBack(function() {
    // source line 477, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("becomeStronger_9");
}.bind(this));
            } else {
                // source line 480, bytecode pc 2251
                this.m_goBtn.setEnabled(true);
                // source line 484, bytecode pc 2288
                this.m_goBtn.setOnClickCallBack(function() {
    // source line 483, bytecode pc 12
    this.goddessCallback();
}.bind(this));
            }
        }
        break;
        case 15:
        // source line 491, bytecode pc 2313
        this.m_goBtn.setEnabled(true);
        // source line 495, bytecode pc 2350
        this.m_goBtn.setOnClickCallBack(function() {
    // source line 494, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("CombatScene");
}.bind(this));
        break;
        default:
        break;
    }
},
    miracleWeaponCallback: function() {
    var List, data;
    if (xs.isShowMagic) {
        // source line 506, bytecode pc 65
        (List = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getAll());
        if ((List.length === 0)) {
            // source line 508, bytecode pc 140
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_null"));
        } else {
            // source line 512, bytecode pc 169
            (data = { list: List, index: 0 });
            // source line 515, bytecode pc 206
            xs.Scene.Mgr.changeSceneByName("SelectMiracleWeaponsScene", data);
        }
    } else {
        // source line 518, bytecode pc 271
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
    }
},
    goddessCallback: function() {
    var _level;
    // source line 524, bytecode pc 61
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < 10)) {
        // source line 526, bytecode pc 132
        xs.Views.Mgr.showToast(xs.Tools.String.createString("goddess_suoding"));
    } else {
        // source line 529, bytecode pc 170
        xs.Scene.Mgr.changeSceneByName("GoddessMainScene");
    }
},
    goPracticeMeridiansCallback: function() {
    var needLevel, _level;
    // source line 533, bytecode pc 40
    (needLevel = xs.Tools.CfgData.getGlobalConf("PulseConf").unlock_level);
    // source line 534, bytecode pc 102
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < needLevel)) {
        // source line 536, bytecode pc 198
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("auto_name_52", [ needLevel.toString() ]));
    } else {
        // source line 538, bytecode pc 236
        xs.Scene.Mgr.changeSceneByName("PracticeMeridiansMainScene");
    }
},
    gemsCallback: function() {
    var _level;
    if (xs.isShowGem) {
        // source line 545, bytecode pc 76
        (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
        if ((_level < 40)) {
            // source line 547, bytecode pc 147
            xs.Views.Mgr.showToast(xs.Tools.String.createString("gem_baoshi_suoding"));
        } else {
            // source line 549, bytecode pc 185
            xs.Scene.Mgr.changeSceneByName("GemsScene");
        }
    } else {
        // source line 552, bytecode pc 250
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
    }
},
    createIconByData: function(data) {
    var _bg, _ret, _icon;
    // source line 558, bytecode pc 56
    (_bg = xs.Factorys.Sprite.create("Cmn02_equ_head0", "Cmn02", [ "1" ]));
    // source line 559, bytecode pc 98
    (_ret = xs.Factorys.Sprite.create("head_quality_0", "Cmn02"));
    // source line 563, bytecode pc 181
    xs.Utils.Node.attachNodes(_bg, _ret, { offset: cc.p(0, 0), desc: "c", sc: false });
    // source line 566, bytecode pc 226
    (_icon = xs.Factorys.Sprite.create(data.iconName, "Cmn02"));
    // source line 570, bytecode pc 309
    xs.Utils.Node.attachNodes(_bg, _icon, { offset: cc.p(0, 0), desc: "c", sc: false });
    // source line 573, bytecode pc 313
    return _bg;
},
    update: function(data) {
    var _icon;
    // source line 576, bytecode pc 37
    this.m_becomeStrongerName.setStringById((data.name || ""));
    // source line 577, bytecode pc 75
    this.m_becomeStrongerIntro.setStringById((data.introduction || ""));
    // source line 579, bytecode pc 95
    (_icon = this.createIconByData(data));
    // source line 580, bytecode pc 140
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_icon, _icon);
    // source line 581, bytecode pc 150
    (this.m_icon = _icon);
    // source line 585, bytecode pc 187
    this.setGoButtonStatus(parseInt(data.sceneType));
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 588, bytecode pc 12
    this._super();
    // source line 589, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 592, bytecode pc 63
            (this.m_parentView = parent);
            // source line 593, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 595, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 600, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 604, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 607, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 608, bytecode pc 36
    this.m_goBtn.setTouchPriority((this.m_baseTouchPriority + 1));
}
}));
// source line 612, bytecode pc 1658
(xs.Views.Dialog.BecomeStrongerTableViewCell.create = function() {
    var cell;
    // source line 613, bytecode pc 28
    (cell = new xs.Views.Dialog.BecomeStrongerTableViewCell());
    if ((cell && cell.init())) {
        // source line 615, bytecode pc 60
        return cell;
    }
    // source line 617, bytecode pc 62
    return null;
});
