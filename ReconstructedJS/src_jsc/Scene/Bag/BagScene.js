// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Bag/BagScene.js:1
// source line 862, bytecode pc 588
(xs.Scene.BagLayer = xs.Views.HungerLayer.extend({
    name: "BagLayer",
    ctor: function() {
    // source line 17, bytecode pc 12
    this._super();
},
    init: function() {
    var visibleSize, visibleOrigin, titler;
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 25, bytecode pc 35
    (this.m_tableView = null);
    // source line 26, bytecode pc 62
    (this.m_tableViewSize = cc.size(0, 0));
    // source line 27, bytecode pc 74
    (this.m_dataSource = []);
    // source line 28, bytecode pc 82
    (this.m_mainMenu = null);
    // source line 29, bytecode pc 90
    (this.m_pageView = null);
    // source line 30, bytecode pc 98
    (this.m_curItemData = null);
    // source line 32, bytecode pc 111
    (this.m_isNewDic = {});
    // source line 34, bytecode pc 126
    this.setIsEatEvent(true);
    // source line 36, bytecode pc 151
    (visibleSize = xs.director.getVisibleSize());
    // source line 37, bytecode pc 176
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 39, bytecode pc 209
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 42, bytecode pc 239
    (titler = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 43, bytecode pc 275
    titler.setAnchorPoint(cc.p(0, 1));
    // source line 44, bytecode pc 331
    xs.Utils.Node.attachNodes(this, titler, { desc: "lt", sc: true });
    // source line 46, bytecode pc 397
    (this.m_pageView = xs.Views.TablePage.create(cc.size(846, (visibleSize.height - 56))));
    // source line 48, bytecode pc 451
    (this.m_dataSource = xs.Profile.GameData.Mgr.getInstance().Items.getAll());
    // source line 50, bytecode pc 491
    (this.m_tableViewSize = cc.size(846, (visibleSize.height - 152)));
    // source line 51, bytecode pc 528
    (this.m_tableView = cc.TableView.create(this, this.m_tableViewSize));
    // source line 52, bytecode pc 548
    this.m_tableView.setDelegate(this);
    // source line 53, bytecode pc 577
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 54, bytecode pc 606
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 55, bytecode pc 681
    this.m_tableView.setPosition(cc.p((visibleOrigin.x + (((visibleSize.width - 100) - 840) / 2)), (visibleOrigin.y + 30)));
    // source line 58, bytecode pc 701
    this.reloadTableViewPositionY(this.m_tableView);
    // source line 60, bytecode pc 739
    (this.m_gemView = xs.Views.Gems.GemsBagView.create());
    // source line 62, bytecode pc 797
    this.m_pageView.addPage(xs.Tools.String.createString("str_bag"), this.m_tableView);
    // source line 63, bytecode pc 855
    this.m_pageView.addPage(xs.Tools.String.createString("gems_str_gemsBag"), this.m_gemView);
    // source line 64, bytecode pc 940
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true }, xs.Scene.BagLayer.cfg.m_pageView);
    // source line 66, bytecode pc 991
    this.m_pageView.setHintIcon([ 0 ], [ xs.Constant_HintType_Camp_Bag ], true);
    // source line 67, bytecode pc 1042
    this.m_pageView.setHintIcon([ 1 ], [ xs.Constant_HintType_Camp_GemBag ], true);
    // source line 68, bytecode pc 1062
    this.m_pageView.setListener(this);
    // source line 71, bytecode pc 1125
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Scene.BagLayer.cfg.m_mainMenu));
    // source line 72, bytecode pc 1145
    this.m_mainMenu.setListener(this);
    // source line 74, bytecode pc 1160
    this.setBaseTouchPriority(0);
    // source line 76, bytecode pc 1162
    return true;
},
    closeButtonCallBack: function() {
    var key, _idx;
    for (var key in this.m_isNewDic) {
        if (!(this.m_isNewDic.hasOwnProperty(key))) continue;
        // source line 82, bytecode pc 58
        (_idx = this.m_isNewDic[key]);
        if (!(this.m_dataSource[_idx])) continue;
        // source line 84, bytecode pc 97
        this.m_dataSource[_idx].setNewStatus(false);
    }
    if (this.m_gemView) {
        // source line 90, bytecode pc 134
        this.m_gemView.setGemListStatus();
    }
    // source line 94, bytecode pc 182
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 96, bytecode pc 209
    xs.Scene.Mgr.gotoLastScene();
},
    onPageChange: function(pageIdx) {
    var curView;
    // source line 101, bytecode pc 20
    (curView = this.m_pageView.getCurSelPageView());
    if ((curView && curView._updateDate)) {
        // source line 103, bytecode pc 57
        curView._updateDate();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 108, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 109, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 110, bytecode pc 85
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Scene.BagLayer.cfg.m_tableView.priority));
    // source line 111, bytecode pc 141
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.BagLayer.cfg.m_mainMenu.priority));
},
    backCallback: function() {
    // source line 115, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
},
    onEnter: function() {
    // source line 118, bytecode pc 12
    this._super();
    // source line 120, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshBagItemList, xs.Constant_Notify_ModelChange_Item);
},
    onEnterTransitionDidFinish: function() {
    // source line 123, bytecode pc 12
    this._super();
    // source line 125, bytecode pc 72
    xs.Guide.GuideMgr.endStepBySequence([ "60104", "70101_before", "80101_before" ]);
},
    onExit: function() {
    // source line 129, bytecode pc 22
    xs.log_hsq("bagScene onExit");
    // source line 131, bytecode pc 62
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Item);
    // source line 151, bytecode pc 75
    this._super();
},
    refreshBagItemList: function() {
    var pos, offset, size;
    // source line 154, bytecode pc 53
    (this.m_dataSource = xs.Profile.GameData.Mgr.getInstance().Items.getAll());
    // source line 158, bytecode pc 107
    (pos = xs.Utils.clone(this.m_tableView.getContainer().getPosition()));
    // source line 159, bytecode pc 150
    (offset = xs.Utils.clone(this.m_tableView.getContentOffset()));
    // source line 161, bytecode pc 168
    this.m_tableView.reloadData();
    // source line 163, bytecode pc 222
    (size = xs.Utils.clone(this.m_tableView.getContainer().getContentSize()));
    if ((this.m_tableViewSize.height < size.height)) {
        if (((this.m_tableViewSize.height - offset.y) >= size.height)) {
            // source line 166, bytecode pc 283
            return void 0;
        }
        // source line 168, bytecode pc 307
        this.m_tableView.setContentOffset(offset, 0);
    }
},
    reloadTableViewPositionY: function(table) {
    var _length, _idx, i, y;
    // source line 172, bytecode pc 14
    (_length = this.m_dataSource.length);
    // source line 173, bytecode pc 19
    (_idx = 0);
    // source line 174, bytecode pc 24
    (i = 0);
    while ((i < this.m_dataSource.length)) {
        if (this.m_dataSource[i].getNewStatus()) {
            // source line 176, bytecode pc 63
            (_idx = i);
            break;
        }
        // source line 174, bytecode pc 82
        (i = (+i + 1));
    }
    // source line 180, bytecode pc 130
    (y = (((_length - _idx) * 120) - this.m_tableViewSize.height));
    // source line 181, bytecode pc 169
    table.setContentOffset(cc.p(0, -y));
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 189, bytecode pc 17
    (idx = cell.getIdx());
    // source line 190, bytecode pc 44
    xs.log_hsq(("tableCellTouched : " + idx));
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 193, bytecode pc 23
    return cc.size(860, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell, data;
    try {
        // source line 198, bytecode pc 18
        (cell = table.dequeueCell());
        // source line 199, bytecode pc 32
        (data = this.m_dataSource[idx]);
        if (!cell) {
            // source line 201, bytecode pc 71
            (cell = xs.Views.BagItemCell.create());
        } else {
            if (data.getNewStatus()) {
                // source line 204, bytecode pc 109
                (this.m_isNewDic[idx] = idx);
            }
        }
        // source line 207, bytecode pc 128
        cell.setItemData(data);
        // source line 208, bytecode pc 145
        cell.setListener(this);
        if ((idx === 0)) {
            // source line 211, bytecode pc 174
            cell.setSpGuideTag(3008);
        } else {
            // source line 213, bytecode pc 197
            cell.setSpGuideTag(-1);
        }
    } catch (e) {
        // source line 217, bytecode pc 244
        xs.Debug.warnException("xs.Scene.BagLayer", e);
        /* TODO_BYTECODE pc=245 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 221, bytecode pc 257
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 224, bytecode pc 11
    return this.m_dataSource.length;
},
    itemDetailCallback: function(item) {
    if ((item.getItemType() === xs.Models.ItemType_Gift)) {
        // source line 232, bytecode pc 82
        xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", item.getId());
    }
},
    confirmSelect: function(num) {
    var param;
    // source line 237, bytecode pc 9
    (param = {});
    // source line 238, bytecode pc 35
    (param.user_item_id = this.m_curItemData.getPkId());
    // source line 239, bytecode pc 47
    (param.item_num = num);
    if ((this.m_curItemData.getItemType() === xs.Models.ItemType_Evolution_Item)) {
        // source line 242, bytecode pc 108
        xs.log("---觉醒道具分解---");
        // source line 243, bytecode pc 155
        xs.Tools.Net.requestResolveItem(param, this.useItemSuccessCallback, this.useItemFailCallback, this);
        // source line 244, bytecode pc 157
        return void 0;
    }
    // source line 246, bytecode pc 180
    xs.log("----- 2222222 confirmSelect -----");
    // source line 247, bytecode pc 227
    xs.Tools.Net.requestUseItem(param, this.useItemSuccessCallback, this.useItemFailCallback, this);
},
    BagItemCell_fastBtnCallback: function(itemData, itemNum) {
    var equipmentNum;
    if ((itemData.getItemType() === xs.Models.ItemType_Evolution_Item)) {
        // source line 253, bytecode pc 44
        (this.m_curItemData = itemData);
        // source line 256, bytecode pc 106
        (this.selectBoxDialog = xs.Views.Mgr.showDialogByName("SelectResolveNumDialog", { param: itemData, num: itemNum }));
        // source line 257, bytecode pc 126
        this.selectBoxDialog.setListener(this);
        // source line 258, bytecode pc 128
        return void 0;
    }
    // source line 261, bytecode pc 184
    (equipmentNum = xs.Profile.GameData.Mgr.getInstance().Equipments.getAll().length);
    if ((equipmentNum > xs.Const_Equipment_Max)) {
        // source line 274, bytecode pc 383
        xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 270, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 273, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
        // source line 276, bytecode pc 385
        return void 0;
    }
    // source line 279, bytecode pc 395
    (this.m_curItemData = itemData);
    if ((itemNum > 10)) {
        // source line 283, bytecode pc 468
        (this.selectBoxDialog = xs.Views.Mgr.showDialogByName("SelectOpenBoxNumDialog", { param: itemData, num: itemNum }));
        // source line 284, bytecode pc 488
        this.selectBoxDialog.setListener(this);
    } else {
        // source line 287, bytecode pc 510
        this.useItem(itemNum);
    }
},
    BagItemCell_centerBtnCallback: function(itemData) {
    var param;
    // source line 291, bytecode pc 9
    (this.m_curItemData = itemData);
    // source line 294, bytecode pc 32
    xs.log_ck("点击类型");
    // source line 295, bytecode pc 67
    xs.log_ck(this.m_curItemData.getItemType());
    if (this.m_curItemData) {
        if (((this.m_curItemData.item_id == xs.Models.ItemID_CopyShuJia) || ((this.m_curItemData.item_id == xs.Models.ItemID_CopyTenYear) || ((this.m_curItemData.item_id == xs.Models.ItemID_CopyChristmas) || (this.m_curItemData.item_id == xs.Models.ItemID_CopyNewYear))))) {
            // source line 302, bytecode pc 222
            this.gotoPublicCopyScene();
            // source line 303, bytecode pc 224
            return void 0;
        } else {
            if ((this.m_curItemData.item_id == xs.Models.ItemID_LingYun)) {
                // source line 305, bytecode pc 274
                this.gotoBeautyScene();
                // source line 306, bytecode pc 276
                return void 0;
            }
        }
        // source line 310, bytecode pc 294
        switch (this.m_curItemData.getItemType()) {
            case xs.Models.ItemType_Gift:
            case xs.Models.ItemType_Guild_Contribute:
            // source line 314, bytecode pc 1232
            this.giftCallback();
            break;
            case xs.Models.ItemType_Box:
            // source line 319, bytecode pc 1250
            this.boxCallback();
            break;
            case xs.Models.ItemType_TongQian:
            case xs.Models.ItemType_YuanBao:
            // source line 325, bytecode pc 1268
            this.tongQianCallback();
            break;
            case xs.Models.ItemType_Key:
            // source line 330, bytecode pc 1286
            this.keyCallback();
            break;
            case xs.Models.ItemType_TiLi:
            case xs.Models.ItemType_TiLiLimit:
            // source line 336, bytecode pc 1304
            this.tiLiCallback();
            break;
            case xs.Models.ItemType_JingLi:
            case xs.Models.ItemType_JingLiLimit:
            // source line 342, bytecode pc 1322
            this.jingLiCallback();
            break;
            case xs.Models.ItemType_JiShi:
            case xs.Models.ItemType_ChuanChenFu_JiPin:
            // source line 348, bytecode pc 1340
            this.flashCardCallback();
            break;
            case xs.Models.ItemType_LianDan:
            // source line 353, bytecode pc 1358
            this.lianDanCallback();
            break;
            case xs.Models.ItemType_Training:
            // source line 358, bytecode pc 1376
            this.trainingCallback();
            break;
            case xs.Models.ItemType_ChangeName:
            // source line 363, bytecode pc 1394
            this.changeNameCallback();
            break;
            case xs.Models.ItemType_Exp:
            // source line 368, bytecode pc 1412
            this.expCallback();
            break;
            case xs.Models.ItemType_AddFightChance:
            // source line 373, bytecode pc 1430
            this.addFightChanceCallback();
            break;
            case xs.Models.ItemType_AddEquipProperty:
            // source line 378, bytecode pc 1448
            this.addEquipPropertyCallback();
            break;
            case xs.Models.ItemType_FlashCard:
            // source line 383, bytecode pc 1466
            this.flashCardCallback();
            break;
            case xs.Models.ItemType_WineGlass:
            case xs.Models.ItemType_Free_WineGlass:
            // source line 389, bytecode pc 1484
            this.wineGlassCallback();
            break;
            case xs.Models.ItemType_AvoidWarCard:
            // source line 394, bytecode pc 1499
            (param = {});
            // source line 395, bytecode pc 1525
            (param.user_item_id = this.m_curItemData.getPkId());
            // source line 396, bytecode pc 1535
            (param.item_num = 1);
            // source line 403, bytecode pc 1580
            xs.Tools.Net.requestUseItem(param, function() {
    // source line 398, bytecode pc 32
    xs.Views.Mgr.showToastByStringKey("str_useAvoidCardSucess");
}, function() {
}, this);
            break;
            case xs.Models.ItemType_Equipment:
            case xs.Models.ItemType_EquipmentPiece:
            case xs.Models.ItemType_Skill:
            case xs.Models.ItemType_GeneralSoul:
            case xs.Models.ItemType_SkillPiece:
            case xs.Models.ItemType_General:
            // source line 415, bytecode pc 1608
            xs.log_hsq("......处理脏数据");
            // source line 416, bytecode pc 1621
            this.useItem();
            break;
            case xs.Models.ItemType_ExperienceMaster:
            case xs.Models.ItemType_DungeonCD:
            case xs.Models.ItemType_DungeonNum:
            // source line 423, bytecode pc 1649
            xs.log_hsq("chichichi");
            // source line 424, bytecode pc 1662
            this.useItem();
            break;
            case xs.Models.ItemType_Laba:
            // source line 430, bytecode pc 1680
            this.useLabaCallback();
            break;
            case xs.Models.ItemType_Wishing:
            // source line 435, bytecode pc 1698
            this.useWishingCallback();
            break;
            case xs.Models.ItemType_HunShi:
            // source line 440, bytecode pc 1716
            this.useHunShiCallback();
            break;
            case xs.Models.ItemType_Assizes:
            // source line 445, bytecode pc 1734
            this.goLittleFriends();
            break;
            case xs.Models.ItemType_DaKong:
            // source line 450, bytecode pc 1752
            this.goDaKong();
            break;
            case xs.Models.ItemType_RefineStone:
            // source line 455, bytecode pc 1790
            xs.Scene.Mgr.changeSceneByName("EquipmentScene");
            break;
            case xs.Models.ItemType_Evolution_Item:
            // source line 460, bytecode pc 1848
            xs.Scene.Mgr.changeSceneByName("AgaScene", { selPageIndex: 3, cardIdx: 0 });
            break;
            case xs.Models.ItemType_XiLian:
            // source line 465, bytecode pc 1866
            this.goXiLian();
            break;
            case xs.Models.ItemType_Gem:
            // source line 470, bytecode pc 1884
            this.useGem();
            break;
            case xs.Models.ItemType_ZhuTie:
            // source line 476, bytecode pc 1902
            this.goShenbing();
            break;
            case xs.Models.ItemType_MeridianItem:
            // source line 481, bytecode pc 1920
            this.goMeridianView();
            break;
            case xs.Models.ItemType_GoddessSurface:
            // source line 486, bytecode pc 1938
            this.openGoddessSkin();
            break;
            case xs.Models.ItemType_CertainTicket:
            break;
            case xs.Models.ItemType_JuanZhou:
            // source line 495, bytecode pc 1961
            this.addSkillPropertyCallback();
            break;
            case xs.Models.ItemType_Evolution_Baowu:
            // source line 501, bytecode pc 1983
            this.synthetiseItem(itemData);
            break;
            default:
            // source line 507, bytecode pc 2014
            this.assert("need valid this.m_curItemData.getItemType", this.m_curItemData);
            break;
        }
    } else {
        // source line 513, bytecode pc 2050
        this.error("need valid this.m_curItemData", this.m_curItemData);
    }
},
    synthetiseItem: function(data) {
    var num, param, name, strContent;
    // source line 527, bytecode pc 56
    (num = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById("600209"));
    if (((data.item_num + num) < 30)) {
        // source line 531, bytecode pc 136
        xs.Views.Mgr.showToast(xs.Tools.String.createString("BaoWuSuiPianBuZhu"));
    } else {
        // source line 536, bytecode pc 157
        (param = {});
        // source line 537, bytecode pc 186
        (param.user_item_id = data.getPkId());
        if ((data.item_num < 30)) {
            // source line 540, bytecode pc 228
            (param.universal_num = (30 - data.item_num));
        } else {
            // source line 543, bytecode pc 249
            (param.universal_num = 0);
        }
        // source line 545, bytecode pc 261
        (name = data._nameString);
        // source line 547, bytecode pc 297
        (strContent = xs.Tools.String.createString("synthetiseItem_content1"));
        if ((param.universal_num == 0)) {
            // source line 550, bytecode pc 410
            (strContent = ((strContent + xs.Tools.String.createStringWithArgsArray("synthetiseItem_content2", [ 30, name ])) + xs.Tools.String.createString("synthetiseItem_content4")));
            // source line 551, bytecode pc 437
            xs.log_ck(("strContent:" + strContent));
        } else {
            // source line 556, bytecode pc 612
            (strContent = (((strContent + xs.Tools.String.createStringWithArgsArray("synthetiseItem_content2", [ (30 - param.universal_num), name ])) + xs.Tools.String.createStringWithArgsArray("synthetiseItem_content3", [ ("" + param.universal_num) ])) + xs.Tools.String.createString("synthetiseItem_content4")));
        }
        // source line 559, bytecode pc 639
        xs.log_ck(("name:" + name));
        // source line 572, bytecode pc 817
        xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "synthetiseItem_title",
    content: strContent,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 567, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 570, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 571, bytecode pc 79
    xs.Tools.Net.requestSynthetise(param, this.useItemSuccessCallback, this.useItemFailCallback, this);
}.bind(this)
});
    }
},
    goMeridianView: function() {
    var needLevel, _level, _data;
    // source line 580, bytecode pc 40
    (needLevel = xs.Tools.CfgData.getGlobalConf("MeridianConf").user_level);
    // source line 581, bytecode pc 102
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < needLevel)) {
        // source line 583, bytecode pc 198
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("auto_name_52", [ needLevel.toString() ]));
    } else {
        // source line 585, bytecode pc 254
        (_data = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getAllMeridianTopModel());
        if (xs.Utils.isEmpty(_data)) {
            // source line 587, bytecode pc 344
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MeridiansMain_21"));
            // source line 588, bytecode pc 346
            return void 0;
        }
        // source line 590, bytecode pc 383
        xs.Scene.Mgr.changeSceneByName("MeridiansMainScene", _data);
    }
},
    giftCallback: function() {
    // source line 596, bytecode pc 22
    xs.log("......giftCallback");
    // source line 597, bytecode pc 35
    this.useItem();
},
    boxCallback: function() {
    // source line 601, bytecode pc 22
    xs.log("......boxCallback");
    // source line 602, bytecode pc 35
    this.useItem();
},
    tongQianCallback: function() {
    // source line 606, bytecode pc 22
    xs.log("......tongQianCallback");
    // source line 607, bytecode pc 35
    this.useItem();
},
    keyCallback: function() {
    // source line 611, bytecode pc 22
    xs.log("......keyCallback");
    // source line 612, bytecode pc 35
    this.useItem();
},
    tiLiCallback: function() {
    // source line 616, bytecode pc 22
    xs.log("......tiLiCallback");
    // source line 617, bytecode pc 35
    this.useItem();
},
    jingLiCallback: function() {
    // source line 621, bytecode pc 22
    xs.log("......jingLiCallback");
    // source line 622, bytecode pc 35
    this.useItem();
},
    jiShiCallback: function() {
    // source line 626, bytecode pc 22
    xs.log("......jiShiCallback");
    // source line 627, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("WorshipScene");
},
    lianDanCallback: function() {
    // source line 631, bytecode pc 22
    xs.log("......lianDanCallback");
    // source line 632, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("AgaScene");
},
    trainingCallback: function() {
    // source line 636, bytecode pc 22
    xs.log("......trainingCallback");
    // source line 637, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("GeneralTrainingScene");
},
    changeNameCallback: function() {
    // source line 641, bytecode pc 22
    xs.log("......changeNameCallback");
    // source line 642, bytecode pc 55
    xs.Views.Mgr.showDialogByName("PlayerInfoDialog");
},
    expCallback: function() {
    // source line 646, bytecode pc 22
    xs.log("......expCallback");
    // source line 647, bytecode pc 55
    xs.Views.Mgr.showDialogByName("PlayerInfoDialog");
},
    addFightChanceCallback: function() {
    // source line 651, bytecode pc 22
    xs.log("......addFightChanceCallback");
    // source line 652, bytecode pc 35
    this.useItem();
},
    addEquipPropertyCallback: function() {
    // source line 656, bytecode pc 22
    xs.log("......addEquipPropertyCallback");
    // source line 657, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
},
    addSkillPropertyCallback: function() {
    // source line 661, bytecode pc 22
    xs.log("......addSkillPropertyCallback");
    // source line 662, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("SkillScene");
},
    flashCardCallback: function() {
    // source line 666, bytecode pc 22
    xs.log("......flashCardCallback");
    // source line 667, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("AgaScene");
},
    wineGlassCallback: function() {
    // source line 671, bytecode pc 22
    xs.log("......wineGlassCallback");
    // source line 672, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("StoreScene");
},
    useLabaCallback: function() {
    // source line 676, bytecode pc 31
    xs.Views.Dialog.ChatDialog.show();
},
    useWishingCallback: function() {
    // source line 680, bytecode pc 26
    xs.Tools.Scene.gotoWishingScene();
},
    useHunShiCallback: function() {
    // source line 684, bytecode pc 31
    xs.Views.Dialog.MysteryStoreDialog.showWithSurrenderInfo();
},
    gotoPublicCopyScene: function() {
    if (((xs.festivalType != null) && ((xs.festivalType == 6) || ((xs.festivalType == 7) || ((xs.festivalType == 8) || (xs.festivalType == 9)))))) {
        // source line 689, bytecode pc 125
        xs.Scene.Mgr.changeSceneByName("PublicCopyScene");
    } else {
        // source line 691, bytecode pc 190
        xs.Views.Mgr.showToast(xs.Tools.String.createString("ActivityNotOpen"));
    }
},
    gotoBeautyScene: function() {
    // source line 695, bytecode pc 26
    xs.Tools.Scene.gotoBeautyScene();
},
    goLittleFriends: function() {
    var param;
    // source line 702, bytecode pc 21
    (param = { playerId: null, playerData: null });
    // source line 704, bytecode pc 58
    xs.Scene.Mgr.changeSceneByName("BuddyScene", param);
},
    goDaKong: function() {
    var _level;
    // source line 708, bytecode pc 61
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < 40)) {
        // source line 710, bytecode pc 132
        xs.Views.Mgr.showToast(xs.Tools.String.createString("gem_baoshi_suoding"));
        // source line 711, bytecode pc 134
        return void 0;
    }
    if (!xs.isShowGem) {
        // source line 715, bytecode pc 210
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        // source line 716, bytecode pc 212
        return void 0;
    }
    // source line 718, bytecode pc 258
    xs.Scene.Mgr.changeSceneByName("GemsScene", { index: 0 });
},
    goXiLian: function() {
    var _level;
    // source line 722, bytecode pc 61
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < 40)) {
        // source line 724, bytecode pc 132
        xs.Views.Mgr.showToast(xs.Tools.String.createString("gem_baoshi_suoding"));
        // source line 725, bytecode pc 134
        return void 0;
    }
    if (!xs.isShowGem) {
        // source line 730, bytecode pc 210
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        // source line 731, bytecode pc 212
        return void 0;
    }
    // source line 734, bytecode pc 258
    xs.Scene.Mgr.changeSceneByName("GemsScene", { index: 1 });
},
    useGem: function() {
    // source line 739, bytecode pc 12
    this.useItem();
},
    goShenbing: function() {
    var List, data;
    if (xs.isShowMagic) {
        // source line 745, bytecode pc 65
        (List = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getAll());
        if ((List.length === 0)) {
            // source line 747, bytecode pc 140
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_null"));
        } else {
            // source line 751, bytecode pc 169
            (data = { list: List, index: 0 });
            // source line 754, bytecode pc 206
            xs.Scene.Mgr.changeSceneByName("SelectMiracleWeaponsScene", data);
        }
    } else {
        // source line 757, bytecode pc 271
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
    }
},
    openGoddessSkin: function() {
},
    useItem: function(num) {
    var equipmentNum, useNum, itemNum, relateNum, relateName, strKey, result, param;
    // source line 769, bytecode pc 55
    (equipmentNum = xs.Profile.GameData.Mgr.getInstance().Equipments.getAll().length);
    // source line 770, bytecode pc 60
    (useNum = 1);
    if (num) {
        // source line 772, bytecode pc 75
        (useNum = num);
    }
    // source line 774, bytecode pc 144
    (itemNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(this.m_curItemData.getItemId()));
    if ((itemNum < useNum)) {
        // source line 776, bytecode pc 189
        xs.Views.Mgr.showToastByStringKey("str_itemNotEnough");
        // source line 777, bytecode pc 191
        return void 0;
    }
    if (((this.m_curItemData.getItemType() === xs.Models.ItemType_Box) || (this.m_curItemData.getItemType() === xs.Models.ItemType_Key))) {
        // source line 781, bytecode pc 337
        (relateNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(this.m_curItemData.getRelatedId()));
        // source line 782, bytecode pc 391
        (relateName = xs.Tools.Ml.createString(("itemname" + this.m_curItemData.getRelatedId())));
        if ((this.m_curItemData.getRelatedId() !== "0")) {
            if ((relateNum < useNum)) {
                // source line 786, bytecode pc 440
                (strKey = "str_boxNotEnough");
                if ((this.m_curItemData.getItemType() === xs.Models.ItemType_Box)) {
                    // source line 788, bytecode pc 487
                    (strKey = "str_keyNotEnough");
                }
                // source line 791, bytecode pc 551
                xs.Views.Mgr.showToast((relateName + xs.Tools.String.createString("auto_name_54")));
                // source line 792, bytecode pc 553
                return void 0;
            } else {
                if ((equipmentNum > xs.Const_Equipment_Max)) {
                    // source line 807, bytecode pc 757
                    xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 803, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 806, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
                    // source line 809, bytecode pc 759
                    return void 0;
                }
            }
        }
    }
    if ((this.m_curItemData.getItemType() === xs.Models.ItemType_Gift)) {
        if ((equipmentNum > xs.Const_Equipment_Max)) {
            // source line 829, bytecode pc 996
            xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 825, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 828, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
            // source line 831, bytecode pc 998
            return void 0;
        }
    }
    if ((this.m_curItemData.getBaseAddType() == xs.Const_Item_Style_GoddessSurface)) {
        // source line 841, bytecode pc 1100
        (result = xs.Profile.GameData.Mgr.getInstance().Goddess.isHaveGoddessBySkinId(this.m_curItemData.getBaseAddId()));
        if (!result) {
            // source line 843, bytecode pc 1169
            xs.Views.Mgr.showToast(xs.Tools.String.createString("goddess_noGoddessSkin"));
            // source line 844, bytecode pc 1171
            return void 0;
        }
    }
    // source line 848, bytecode pc 1181
    (param = {});
    // source line 849, bytecode pc 1207
    (param.user_item_id = this.m_curItemData.getPkId());
    // source line 850, bytecode pc 1219
    (param.item_num = useNum);
    // source line 852, bytecode pc 1266
    xs.Tools.Net.requestUseItem(param, this.useItemSuccessCallback, this.useItemFailCallback, this);
},
    useItemSuccessCallback: function(data) {
    // source line 856, bytecode pc 53
    (this.m_dataSource = xs.Profile.GameData.Mgr.getInstance().Items.getAll());
    // source line 857, bytecode pc 104
    xs.Tools.Net.getInstance().UseItemSuccess(data, null, this.m_curItemData);
    // source line 860, bytecode pc 152
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    useItemFailCallback: function(data) {
    if ((data.error_code == "e_6025")) {
        // source line 864, bytecode pc 54
        xs.Views.Mgr.showToast(data.msg);
    }
    if ((data.error_code == "e_godness_1004")) {
        // source line 887, bytecode pc 253
        xs.Views.Mgr.showDialogByName("common", {
    title: "giftPrompt",
    content: "deleteGoddessPrompt",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 873, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 886, bytecode pc 158
    xs.Tools.Net.requestDeleteItem({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    item_id: this.m_curItemData.getItemId()
}, function() {
    // source line 881, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 882, bytecode pc 59
    xs.Views.Mgr.showToastByStringKey("deleteGoddessSuccess");
}.bind(this), function() {
}.bind(this), this);
}.bind(this)
});
        // source line 889, bytecode pc 255
        return true;
    }
    if ((data.error_code == "e_godness_1007")) {
        // source line 913, bytecode pc 454
        xs.Views.Mgr.showDialogByName("common", {
    title: "giftPrompt",
    content: "deleteGoddessSkillPrompt",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 898, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 912, bytecode pc 158
    xs.Tools.Net.requestDeleteItem({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    item_id: this.m_curItemData.getItemId()
}, function() {
    // source line 906, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 907, bytecode pc 59
    xs.Views.Mgr.showToastByStringKey("deleteGoddessSkillSuccess");
}.bind(this), function() {
}.bind(this), this);
}.bind(this)
});
        // source line 914, bytecode pc 456
        return true;
    }
    // source line 916, bytecode pc 458
    return true;
}
}));
// source line 922, bytecode pc 614
(xs.Scene.BagLayer.create = function() {
    var layer;
    // source line 923, bytecode pc 23
    (layer = new xs.Scene.BagLayer());
    if ((layer && layer.init())) {
        // source line 925, bytecode pc 55
        return layer;
    }
    // source line 927, bytecode pc 57
    return null;
});
// source line 948, bytecode pc 757
(xs.Scene.BagLayer.cfg = {
    m_mainMenu: { zOrder: 0, tag: -1, priority: -5 },
    m_pageView: { zOrder: 0, tag: -1, priority: -5 },
    m_tableView: { priority: -2 },
    detailPopLayer: { priority: -20 },
    successPopLayer: { priority: -20 }
});
// source line 958, bytecode pc 821
(xs.Scene.BagScene = cc.Scene.extend({
    ctor: function() {
    // source line 955, bytecode pc 12
    this._super();
    // source line 956, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var badLayer;
    if (!this._super()) {
        // source line 960, bytecode pc 19
        return false;
    }
    // source line 963, bytecode pc 49
    (badLayer = xs.Scene.BagLayer.create());
    // source line 964, bytecode pc 82
    xs.Utils.Node.attachNodes(this, badLayer);
    // source line 966, bytecode pc 84
    return true;
}
}));
// source line 970, bytecode pc 847
(xs.Scene.BagScene.create = function() {
    var scene;
    // source line 971, bytecode pc 23
    (scene = new xs.Scene.BagScene());
    if ((scene && scene.init())) {
        // source line 973, bytecode pc 55
        return scene;
    }
    // source line 975, bytecode pc 57
    return null;
});
// source line 982, bytecode pc 922
xs.Scene.Mgr.registerScene("BagScene", { "class": xs.Scene.BagScene, type: xs.Constant_SceneType_Cmn });
