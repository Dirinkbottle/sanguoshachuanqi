// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/WorshipWinePopNode.js:1
// source line 143, bytecode pc 153
(xs.Views.WorshipWineInfoCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 12, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 23, bytecode pc 35
    (this.m_ccbNode = null);
    // source line 24, bytecode pc 43
    (this.m_icon = null);
    // source line 25, bytecode pc 51
    (this.m_titleLab = null);
    // source line 26, bytecode pc 59
    (this.m_descLab = null);
    // source line 27, bytecode pc 67
    (this.m_numLab = null);
    // source line 28, bytecode pc 75
    (this.m_numTxt = null);
    // source line 29, bytecode pc 83
    (this.m_priceIcon = null);
    // source line 30, bytecode pc 91
    (this.m_priceNumLab = null);
    // source line 31, bytecode pc 99
    (this.m_btn = null);
    // source line 33, bytecode pc 107
    (this.m_cellData = null);
    // source line 34, bytecode pc 115
    (this.m_listener = null);
    // source line 36, bytecode pc 166
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.WorshipWineInfoCell, this));
    // source line 37, bytecode pc 202
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 39, bytecode pc 264
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.WorshipWineInfoCell.cfg.ccbCfg, this);
    // source line 41, bytecode pc 266
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 44, bytecode pc 12
    this._super();
    // source line 46, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 49, bytecode pc 71
            (touchPriority = parent.getTouchPriority());
            // source line 50, bytecode pc 88
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 53, bytecode pc 111
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 57, bytecode pc 12
    this._super();
},
    setCellData: function(data) {
    // source line 60, bytecode pc 9
    (this.m_cellData = data);
    // source line 61, bytecode pc 22
    this.updateView();
},
    setBaseTouchPriority: function(priority) {
    // source line 64, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    if (this.m_btn.setTouchPriority) {
        // source line 66, bytecode pc 81
        this.m_btn.setTouchPriority((this.m_baseTouchPriority + xs.Views.WorshipWineInfoCell.cfg.m_btn.priority));
    }
},
    updateView: function() {
    var icon, str, contentSize, pos;
    if (this.m_cellData) {
        // source line 74, bytecode pc 46
        this.m_titleLab.setString(this.m_cellData.getNameString());
        // source line 75, bytecode pc 82
        this.m_descLab.setString(this.m_cellData.getDescString());
        // source line 77, bytecode pc 118
        xs.Utils.Node.fastSetVisible(this.m_numLab, true);
        // source line 78, bytecode pc 154
        xs.Utils.Node.fastSetVisible(this.m_priceIcon, true);
        // source line 79, bytecode pc 190
        xs.Utils.Node.fastSetVisible(this.m_priceNumLab, true);
        if ((this.m_cellData instanceof xs.Models.Good)) {
            // source line 84, bytecode pc 253
            xs.Utils.Node.fastSetVisible(this.m_numLab, false);
            // source line 86, bytecode pc 274
            (icon = this.m_cellData.createHeadView());
            // source line 87, bytecode pc 307
            icon.setPosition(this.m_icon.getPosition());
            // source line 88, bytecode pc 345
            xs.Utils.Node.attachNodes(this.m_ccbNode, icon);
            // source line 89, bytecode pc 379
            xs.Utils.Node.safeRemoveChild(this.m_icon);
            // source line 90, bytecode pc 389
            (this.m_icon = icon);
            // source line 92, bytecode pc 425
            (str = xs.Tools.String.createString("str_Worship_price"));
            // source line 93, bytecode pc 447
            this.m_numTxt.setString(str);
            // source line 94, bytecode pc 483
            this.m_priceNumLab.setString(this.m_cellData.getPrice());
            // source line 96, bytecode pc 504
            (contentSize = this.m_numTxt.getContentSize());
            // source line 97, bytecode pc 525
            (pos = this.m_numTxt.getPosition());
            // source line 98, bytecode pc 590
            this.m_priceIcon.setPosition(cc.p(((pos.x + contentSize.width) + 20), pos.y));
            // source line 99, bytecode pc 611
            (contentSize = this.m_priceIcon.getContentSize());
            // source line 100, bytecode pc 632
            (pos = this.m_priceIcon.getPosition());
            // source line 101, bytecode pc 697
            this.m_priceNumLab.setPosition(cc.p((pos.x + (contentSize.width / 2)), pos.y));
            // source line 103, bytecode pc 733
            (str = xs.Tools.String.createString("str_Worship_buy"));
            // source line 104, bytecode pc 755
            this.m_btn.setString(str);
            // source line 105, bytecode pc 782
            this.m_btn.addCallBackForEvent(this, this.buyWineCallback);
        }
        if ((this.m_cellData instanceof xs.Models.Item)) {
            // source line 111, bytecode pc 845
            xs.Utils.Node.fastSetVisible(this.m_priceIcon, false);
            // source line 112, bytecode pc 881
            xs.Utils.Node.fastSetVisible(this.m_priceNumLab, false);
            // source line 114, bytecode pc 902
            (icon = this.m_cellData.createIcon_GradeAndNum());
            // source line 115, bytecode pc 935
            icon.setPosition(this.m_icon.getPosition());
            // source line 116, bytecode pc 973
            xs.Utils.Node.attachNodes(this.m_ccbNode, icon);
            // source line 117, bytecode pc 1007
            xs.Utils.Node.safeRemoveChild(this.m_icon);
            // source line 118, bytecode pc 1017
            (this.m_icon = icon);
            // source line 120, bytecode pc 1053
            (str = xs.Tools.String.createString("str_Worship_num"));
            // source line 121, bytecode pc 1075
            this.m_numTxt.setString(str);
            // source line 122, bytecode pc 1111
            this.m_numLab.setString(this.m_cellData.getItemNum());
            // source line 124, bytecode pc 1132
            (contentSize = this.m_numTxt.getContentSize());
            // source line 125, bytecode pc 1153
            (pos = this.m_numTxt.getPosition());
            // source line 126, bytecode pc 1215
            this.m_numLab.setPosition(cc.p((pos.x + contentSize.width), pos.y));
            // source line 129, bytecode pc 1251
            (str = xs.Tools.String.createString("str_Worship_use"));
            // source line 130, bytecode pc 1273
            this.m_btn.setString(str);
            // source line 131, bytecode pc 1300
            this.m_btn.addCallBackForEvent(this, this.useWineCallback);
        }
    }
},
    setListener: function(listener) {
    // source line 136, bytecode pc 9
    (this.m_listener = listener);
},
    useWineCallback: function() {
    if (this.m_listener) {
        // source line 140, bytecode pc 35
        this.m_listener.useWine(this.m_cellData);
    }
},
    buyWineCallback: function() {
    if (this.m_listener) {
        if ((this.m_cellData instanceof xs.Models.Item)) {
            // source line 146, bytecode pc 62
            this.m_listener.useWine(this.m_cellData);
        } else {
            if ((this.m_cellData instanceof xs.Models.Good)) {
                // source line 148, bytecode pc 119
                this.m_listener.buyWine(this.m_cellData);
            }
        }
    }
}
}));
// source line 154, bytecode pc 179
(xs.Views.WorshipWineInfoCell.create = function() {
    var cell;
    // source line 155, bytecode pc 23
    (cell = new xs.Views.WorshipWineInfoCell());
    if ((cell && cell.init())) {
        // source line 157, bytecode pc 55
        return cell;
    }
    // source line 159, bytecode pc 80
    xs.assert(false, "xs.Views.WorshipWineInfoCell.create error");
    // source line 160, bytecode pc 82
    return null;
});
// source line 175, bytecode pc 580
(xs.Views.WorshipWineInfoCell.cfg = {
    ccbCfg: [
        { name: "m_icon", tag: 10 },
        { name: "m_titleLab", tag: 11, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_descLab", tag: 12, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_numLab", tag: 14, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_numTxt", tag: 13, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_priceIcon", tag: 16 },
        { name: "m_priceNumLab", tag: 17, type: "ls", id: "LS_liebiaoInf2" },
        { name: "m_btn", tag: 15, type: "btn", id: "Btn_btn3", string: "" }
    ],
    m_btn: { priority: -1 }
});
// source line 379, bytecode pc 824
(xs.Views.WorshipWinePopNode = cc.Node.extend({
    ctor: function() {
    // source line 182, bytecode pc 12
    this._super();
    // source line 183, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(params) {
    if (!this._super()) {
        // source line 187, bytecode pc 19
        return false;
    }
    // source line 189, bytecode pc 31
    (this.m_generalIdFromWorshipInfoView = params[0]);
    // source line 190, bytecode pc 61
    xs.log_zhz("m_generalDataFromWorshipInfoView", this.m_generalIdFromWorshipInfoView);
    // source line 191, bytecode pc 69
    (this.m_baseTouchPriority = 0);
    // source line 192, bytecode pc 77
    (this.m_tableView = null);
    // source line 193, bytecode pc 89
    (this.m_dataSource = []);
    // source line 194, bytecode pc 101
    (this.m_leakItemIDs = []);
    // source line 195, bytecode pc 109
    (this.m_listener = null);
    // source line 197, bytecode pc 147
    this.setContentSize(cc.size(600, 450));
    // source line 199, bytecode pc 202
    (this.m_tableView = cc.TableView.create(this, cc.size(600, 450)));
    // source line 200, bytecode pc 222
    this.m_tableView.setDelegate(this);
    // source line 201, bytecode pc 251
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 202, bytecode pc 280
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 203, bytecode pc 319
    this.m_tableView.setAnchorPoint(cc.p(0, 0));
    // source line 205, bytecode pc 355
    xs.Utils.Node.attachNodes(this, this.m_tableView);
    // source line 207, bytecode pc 357
    return true;
},
    onEnter: function() {
    // source line 210, bytecode pc 12
    this._super();
    // source line 212, bytecode pc 25
    this.initDataSource();
},
    onExit: function() {
    // source line 215, bytecode pc 12
    this._super();
},
    initDataSource: function() {
    var length, leakIDs, param;
    // source line 220, bytecode pc 14
    (length = this.m_dataSource.length);
    // source line 221, bytecode pc 38
    this.m_dataSource.splice(0, length);
    // source line 224, bytecode pc 153
    (leakIDs = xs.Profile.GameData.Mgr.getInstance().Items.chkById(xs.Profile.GameData.Mgr.getInstance().Items.getIdsByType(xs.Models.ItemType_JiShi)));
    if ((leakIDs.length > 0)) {
        // source line 231, bytecode pc 191
        xs.log("..........leakIDs.length > 0");
        // source line 232, bytecode pc 201
        (param = {});
        // source line 233, bytecode pc 213
        (param.item_id = leakIDs);
        // source line 234, bytecode pc 253
        xs.Tools.Net.requestLimitGoodsList(param, this.requestLimitGoodsListSuccessCallback, this);
    } else {
        // source line 236, bytecode pc 281
        xs.log("..........leakIDs.length <= 0");
        // source line 237, bytecode pc 294
        this.addExistItemInDataSource();
        // source line 238, bytecode pc 307
        this.sortDataSource();
        // source line 239, bytecode pc 320
        this.updateView();
    }
},
    requestLimitGoodsListSuccessCallback: function(jsonData) {
    var goodList, i, good;
    // source line 243, bytecode pc 11
    (goodList = jsonData.item_list);
    // source line 244, bytecode pc 16
    (i = 0);
    while ((i < goodList.length)) {
        // source line 245, bytecode pc 60
        (good = xs.Models.Good.createWithJson(goodList[i]));
        // source line 246, bytecode pc 82
        this.m_dataSource.push(good);
        // source line 244, bytecode pc 95
        (i = (+i + 1));
    }
    // source line 248, bytecode pc 126
    this.addExistItemInDataSource();
    // source line 249, bytecode pc 139
    this.sortDataSource();
    // source line 250, bytecode pc 152
    this.updateView();
},
    addExistItemInDataSource: function() {
    var _arr_items_legacy, key, thousandWine, hundredWine, tenWine, masterLegacyId, masterLegacy, breachMaxLevel, isShowWithGeneralID, _arr_items_new, teshuWine;
    // source line 254, bytecode pc 66
    (_arr_items_legacy = xs.Profile.GameData.Mgr.getInstance().Items.getIdsByType(xs.Models.ItemType_JiShi));
    for (var key in _arr_items_legacy) {
        if ((_arr_items_legacy[key] === xs.Models.ItemID_ThousandWine)) {
            // source line 257, bytecode pc 177
            (thousandWine = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_ThousandWine));
            if (thousandWine) {
                // source line 259, bytecode pc 207
                this.m_dataSource.push(thousandWine);
            }
        } else {
            if ((_arr_items_legacy[key] === xs.Models.ItemID_HundredWine)) {
                // source line 263, bytecode pc 307
                (hundredWine = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_HundredWine));
                if (hundredWine) {
                    // source line 265, bytecode pc 337
                    this.m_dataSource.push(hundredWine);
                }
            } else {
                if ((_arr_items_legacy[key] === xs.Models.ItemID_TenWine)) {
                    // source line 269, bytecode pc 437
                    (tenWine = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_TenWine));
                    if (tenWine) {
                        // source line 271, bytecode pc 467
                        this.m_dataSource.push(tenWine);
                    }
                } else {
                    // source line 274, bytecode pc 483
                    (masterLegacyId = _arr_items_legacy[key]);
                    // source line 275, bytecode pc 538
                    (masterLegacy = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(masterLegacyId));
                    if (!(masterLegacy)) continue;
                    // source line 277, bytecode pc 576
                    xs.log_zhz("this.m_generalIdFromWorshipInfoView", this.m_generalIdFromWorshipInfoView);
                    // source line 278, bytecode pc 646
                    (breachMaxLevel = xs.Models.General.createWithBase(xs.Utils.parseStringSafe(this.m_generalIdFromWorshipInfoView)).getBreachLevelMax());
                    // source line 279, bytecode pc 673
                    xs.log_zhz("breachMaxLevel", breachMaxLevel);
                    if (!((breachMaxLevel >= 5))) continue;
                    // source line 282, bytecode pc 720
                    (isShowWithGeneralID = xs.Tools.CfgData.getGlobalConf("OneSacrificeRestriction"));
                    // source line 283, bytecode pc 747
                    xs.log_zhz("isShowWithGeneralID", isShowWithGeneralID);
                    // source line 284, bytecode pc 774
                    xs.log_zhz("masterLegacyId", masterLegacyId);
                    // source line 285, bytecode pc 805
                    xs.log_zhz("isShowWithGeneralID[masterLegacyId]", isShowWithGeneralID[masterLegacyId]);
                    if (isShowWithGeneralID[masterLegacyId]) {
                        if ((xs.Utils.parseStringSafe(isShowWithGeneralID[masterLegacyId]) == xs.Utils.parseStringSafe(this.m_generalIdFromWorshipInfoView))) {
                            // source line 288, bytecode pc 902
                            this.m_dataSource.push(masterLegacy);
                        }
                    } else {
                        // source line 291, bytecode pc 929
                        this.m_dataSource.push(masterLegacy);
                    }
                }
            }
        }
    }
    // source line 296, bytecode pc 1004
    (_arr_items_new = xs.Profile.GameData.Mgr.getInstance().Items.getIdsByType(xs.Models.ItemType_ChuanChenFu_JiPin));
    for (var key in _arr_items_new) {
        if (!((_arr_items_new[key] === xs.Models.ItemID_TeShu_ChuanChen))) continue;
        // source line 299, bytecode pc 1115
        (teshuWine = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_TeShu_ChuanChen));
        if (!(teshuWine)) continue;
        // source line 301, bytecode pc 1145
        this.m_dataSource.push(teshuWine);
    }
},
    sortDataSource: function() {
    // source line 308, bytecode pc 23
    this.m_dataSource.sort(function(a, b) {
    // source line 309, bytecode pc 47
    return (parseInt(a.id) < parseInt(b.id));
});
},
    getDataInDataSourceByItemID: function(item_id) {
    var i, data;
    // source line 328, bytecode pc 4
    (i = 0);
    while ((i < this.m_dataSource.length)) {
        // source line 329, bytecode pc 24
        (data = this.m_dataSource[i]);
        if ((data.item_id === item_id)) {
            // source line 331, bytecode pc 45
            return data;
        }
        // source line 328, bytecode pc 58
        (i = (+i + 1));
    }
    // source line 334, bytecode pc 106
    xs.warn("wineInfo can not init", item_id);
    // source line 335, bytecode pc 108
    return null;
},
    setListener: function(listener) {
    // source line 338, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 341, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 342, bytecode pc 65
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Views.WorshipWinePopNode.cfg.m_tableView.priority));
},
    updateView: function() {
    // source line 345, bytecode pc 17
    this.m_tableView.reloadData();
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 351, bytecode pc 17
    (idx = cell.getIdx());
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 355, bytecode pc 24
    return cc.size(600, 150);
},
    tableCellAtIndex: function(table, idx) {
    var cell, data;
    // source line 358, bytecode pc 26
    xs.log(("###########tableView cell  idx: " + idx));
    // source line 359, bytecode pc 44
    (cell = table.dequeueCell());
    // source line 360, bytecode pc 58
    (data = this.m_dataSource[idx]);
    if (!cell) {
        // source line 362, bytecode pc 97
        (cell = xs.Views.WorshipWineInfoCell.create());
    }
    // source line 365, bytecode pc 116
    cell.setCellData(data);
    // source line 366, bytecode pc 133
    cell.setListener(this);
    // source line 367, bytecode pc 137
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 370, bytecode pc 11
    return this.m_dataSource.length;
},
    useWine: function(item) {
    if (this.m_listener) {
        // source line 376, bytecode pc 32
        this.m_listener.WorshipWinePopNode_useWine(item);
    }
},
    buyWine: function(good) {
    if (this.m_listener) {
        // source line 381, bytecode pc 32
        this.m_listener.WorshipWinePopNode_buyWine(good);
    }
}
}));
// source line 387, bytecode pc 850
(xs.Views.WorshipWinePopNode.create = function(params) {
    var cell;
    // source line 388, bytecode pc 27
    (cell = new xs.Views.WorshipWinePopNode(params));
    if ((cell && cell.init(params))) {
        // source line 390, bytecode pc 63
        return cell;
    }
    // source line 392, bytecode pc 88
    xs.assert(false, "xs.Views.WorshipWinePopNode.create error");
    // source line 393, bytecode pc 90
    return null;
});
// source line 401, bytecode pc 913
(xs.Views.WorshipWinePopNode.cfg = { m_tableView: { priority: -1 }, successPopLayer: { priority: -20 } });
