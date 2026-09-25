// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AgaSurrenderDialog.js:1
// source line 326, bytecode pc 450
(xs.Views.Dialog.AgaSurrenderDialog = xs.Views.HungerLayer.extend({
    name: "AgaSurrenderDialog",
    clickType: { previous: 1, next: 2 },
    cfg: {
        btnClose: { priority: -1 },
        btnPreviousPage: { priority: -1 },
        btnNextPage: { priority: -1 },
        ccbCfg: [
            { tag: 20, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 21, type: "btn", name: "btnPreviousPage", id: "Btn_PreviousePage" },
            { tag: 22, type: "btn", name: "btnNextPage", id: "Btn_NextPage" },
            { tag: 11, type: "ls", name: "dialogTitle", id: "LS_huodong_title", stringId: "general_condition" }
        ]
    },
    init: function(params) {
    var _idx, _datas, surrenderBG;
    if (!this._super()) {
        // source line 28, bytecode pc 19
        return false;
    }
    // source line 33, bytecode pc 38
    (_idx = (params.idxInit || 0));
    // source line 34, bytecode pc 50
    (_datas = params.datas);
    // source line 38, bytecode pc 73
    this.dump("_idx", _idx);
    // source line 41, bytecode pc 96
    this.dump("_datas", _datas);
    // source line 45, bytecode pc 110
    (this.selectedGeneralData = _datas[_idx]);
    // source line 46, bytecode pc 122
    (this.cacheList = []);
    // source line 47, bytecode pc 130
    (this.isFirstRequest = true);
    // source line 50, bytecode pc 140
    (this.arrGeneralDatas = _datas);
    // source line 51, bytecode pc 159
    (this.selectedIdx = this.getSelectIdx());
    // source line 53, bytecode pc 167
    (this.agaView = null);
    // source line 54, bytecode pc 175
    (this.surrenderView = null);
    // source line 55, bytecode pc 183
    (this.tableView = null);
    // source line 57, bytecode pc 191
    (this.btnClose = null);
    // source line 58, bytecode pc 199
    (this.btnPreviousPage = null);
    // source line 59, bytecode pc 207
    (this.btnNextPage = null);
    // source line 61, bytecode pc 243
    (this.ccbNode = cc.BuilderReader.load("ccb3/AgaSurrender.ccbi", this));
    // source line 62, bytecode pc 286
    this.ccbNode.setContentSize(cc.size(953, 637));
    // source line 63, bytecode pc 333
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 64, bytecode pc 386
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 67, bytecode pc 434
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 75, bytecode pc 479
    (this.tableView = xs.Views.Table.AgaHeadTableView.create(this.arrGeneralDatas));
    // source line 77, bytecode pc 517
    this.tableView.setClickCallBack(this.refreshViewWithModelGeneral.bind(this));
    // source line 78, bytecode pc 602
    xs.Utils.Node.attachNodes(this.ccbNode, this.tableView, { desc: "lb", offset: cc.p(36, 7) });
    // source line 79, bytecode pc 622
    this.tableView.setZOrder(1);
    // source line 82, bytecode pc 662
    this.tableView.selectHeadIcon(this.tableView, this.getSelectIdx(), false);
    // source line 87, bytecode pc 686
    this.btnClose.setOnClickCallBack(function() {
    // source line 88, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 94, bytecode pc 723
    this.btnPreviousPage.setOnClickCallBack(function() {
    // source line 93, bytecode pc 24
    this.changeView(this.clickType.previous);
}.bind(this));
    // source line 99, bytecode pc 760
    this.btnNextPage.setOnClickCallBack(function() {
    // source line 98, bytecode pc 24
    this.changeView(this.clickType.next);
}.bind(this));
    // source line 102, bytecode pc 784
    (surrenderBG = this.ccbNode.getChildByTag(13));
    // source line 103, bytecode pc 802
    surrenderBG.setZOrder(3);
    // source line 106, bytecode pc 822
    this.refreshViewWithModelGeneral(this.selectedGeneralData);
    // source line 108, bytecode pc 824
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 112, bytecode pc 12
    this._super();
    // source line 113, bytecode pc 54
    xs.Guide.GuideMgr.endStepBySequence([ "180104" ]);
},
    setBaseTouchPriority: function(priority) {
    // source line 117, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 118, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 119, bytecode pc 93
    this.btnPreviousPage.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnPreviousPage.priority));
    // source line 120, bytecode pc 135
    this.btnNextPage.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnNextPage.priority));
    // source line 121, bytecode pc 163
    this.tableView.setTouchPriority((this.m_baseTouchPriority - 10));
},
    changeView: function(playerClickType) {
    if ((playerClickType == this.clickType.previous)) {
        // source line 127, bytecode pc 58
        (this.selectedIdx = ((this.selectedIdx > 0) ? (this.selectedIdx - 1) : this.selectedIdx));
    } else {
        // source line 131, bytecode pc 114
        (this.selectedIdx = ((this.selectedIdx < (this.arrGeneralDatas.length - 1)) ? (this.selectedIdx + 1) : this.selectedIdx));
    }
    // source line 135, bytecode pc 134
    (this.selectedGeneralData = this.arrGeneralDatas[this.selectedIdx]);
    // source line 137, bytecode pc 174
    this.tableView.selectHeadIcon(this.tableView, this.getSelectIdx(), false);
    // source line 139, bytecode pc 187
    this.checkTableViewOffset();
    // source line 141, bytecode pc 207
    this.refreshViewWithModelGeneral(this.selectedGeneralData);
},
    refreshViewWithModelGeneral: function(generalData) {
    var pos, list, param;
    // source line 146, bytecode pc 15
    (this.selectedGeneralData = generalData);
    // source line 147, bytecode pc 34
    (this.selectedIdx = this.getSelectIdx());
    // source line 150, bytecode pc 68
    xs.Utils.Node.safeRemoveChild(this.agaView);
    // source line 151, bytecode pc 102
    xs.Utils.Node.safeRemoveChild(this.surrenderView);
    if ((this.arrGeneralDatas.length <= 1)) {
        // source line 155, bytecode pc 140
        this.btnPreviousPage.setVisible(false);
        // source line 156, bytecode pc 160
        this.btnNextPage.setVisible(false);
    } else {
        if ((this.selectedIdx == 0)) {
            // source line 160, bytecode pc 198
            this.btnPreviousPage.setVisible(false);
            // source line 161, bytecode pc 218
            this.btnNextPage.setVisible(true);
        } else {
            if ((this.selectedIdx == (this.arrGeneralDatas.length - 1))) {
                // source line 164, bytecode pc 268
                this.btnPreviousPage.setVisible(true);
                // source line 165, bytecode pc 288
                this.btnNextPage.setVisible(false);
            } else {
                // source line 168, bytecode pc 313
                this.btnPreviousPage.setVisible(true);
                // source line 169, bytecode pc 333
                this.btnNextPage.setVisible(true);
            }
        }
    }
    // source line 174, bytecode pc 360
    (this.agaView = generalData.createCard_Detail());
    // source line 175, bytecode pc 395
    (pos = this.ccbNode.getChildByTag(12).getPosition());
    // source line 176, bytecode pc 417
    this.agaView.setPosition(pos);
    // source line 177, bytecode pc 437
    this.agaView.setZOrder(0);
    // source line 178, bytecode pc 478
    xs.Utils.Node.attachNodes(this.ccbNode, this.agaView);
    // source line 182, bytecode pc 531
    (list = this.cacheList[xs.Utils.parseStringSafe(generalData.getId())]);
    // source line 183, bytecode pc 539
    (this.surrenderShowAwaked = false);
    if (list) {
        // source line 185, bytecode pc 570
        xs.log("有缓存");
        // source line 187, bytecode pc 619
        (this.hasAwakedSurrender = ((list != null) && ((list.evolution_surrender_list != null) && (list.evolution_surrender_list.length > 0))));
        // source line 188, bytecode pc 632
        (this.surrenderShowAwaked = this.hasAwakedSurrender);
        if (this.hasAwakedSurrender) {
            // source line 191, bytecode pc 670
            (this.surrenderView = this.createSurrenderView(list, 1, true));
        } else {
            // source line 195, bytecode pc 702
            (this.surrenderView = this.createSurrenderView(list, 0, false));
        }
        // source line 197, bytecode pc 727
        this.surrenderView.setBaseTouchPriority(this.m_baseTouchPriority);
        // source line 198, bytecode pc 768
        xs.Utils.Node.attachNodes(this.ccbNode, this.surrenderView);
    } else {
        // source line 201, bytecode pc 796
        xs.log("无缓存");
        // source line 203, bytecode pc 831
        (param = { general_id: generalData.getId() });
        // source line 227, bytecode pc 870
        xs.Tools.Net.requestGetSurrenderList(param, function(data) {
    var surrenderList;
    // source line 207, bytecode pc 6
    (surrenderList = data);
    // source line 208, bytecode pc 55
    (this.hasAwakedSurrender = ((surrenderList != null) && ((surrenderList.evolution_surrender_list != null) && (surrenderList.evolution_surrender_list.length > 0))));
    // source line 209, bytecode pc 68
    (this.surrenderShowAwaked = this.hasAwakedSurrender);
    if (this.hasAwakedSurrender) {
        // source line 211, bytecode pc 106
        (this.surrenderView = this.createSurrenderView(surrenderList, 1, true));
    } else {
        // source line 213, bytecode pc 138
        (this.surrenderView = this.createSurrenderView(surrenderList, 0, false));
    }
    // source line 216, bytecode pc 163
    this.surrenderView.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 217, bytecode pc 204
    xs.Utils.Node.attachNodes(this.ccbNode, this.surrenderView);
    // source line 219, bytecode pc 257
    (this.cacheList[xs.Utils.parseStringSafe(generalData.getId())] = data);
    if (this.isFirstRequest) {
        // source line 223, bytecode pc 276
        (this.isFirstRequest = false);
        // source line 224, bytecode pc 289
        this.checkTableViewOffset();
    }
}, this);
    }
},
    createSurrenderView: function(surrenderList, status, hasAwakedSurrender) {
    var surModel, surrenderView, surrenderData, i;
    // source line 233, bytecode pc 18
    this.log("createSurrenderView");
    // source line 234, bytecode pc 41
    this.dump("this.selectedGeneralData getSurrender ", surrenderList);
    // source line 235, bytecode pc 97
    (surModel = xs.Models.Surrender.createWithJson(this.selectedGeneralData.getId(), surrenderList, status));
    // source line 236, bytecode pc 152
    (surrenderView = xs.Views.ScrollView.create(cc.size(490, 412)));
    // source line 237, bytecode pc 192
    surrenderView.setPosition(cc.p(406, 128));
    // source line 238, bytecode pc 210
    surrenderView.setZOrder(4);
    // source line 239, bytecode pc 222
    (surrenderData = surModel.surrender_list);
    // source line 240, bytecode pc 245
    this.dump("surrenderData ", surrenderData);
    // source line 244, bytecode pc 315
    surrenderView.addChildrenView(xs.DetailDialogComponent.createDStyleP({ itemid: surModel.item_id, status: surModel.item_status }));
    // source line 247, bytecode pc 329
    (i = (surrenderData.length - 1));
    while ((i >= 0)) {
        // source line 250, bytecode pc 399
        surrenderView.addChildrenView(xs.DetailDialogComponent.createDStyleO({ surrenderData: surrenderData[i], index: i }));
        // source line 247, bytecode pc 413
        (i = (+i - 1));
    }
    if (hasAwakedSurrender) {
        // source line 260, bytecode pc 513
        surrenderView.addChildrenView(xs.DetailDialogComponent.createDStyleSwitch({ itemid: this.selectedGeneralData.getId(), status: status, listener: this }));
    }
    // source line 265, bytecode pc 528
    surrenderView.resizeView();
    // source line 266, bytecode pc 532
    return surrenderView;
},
    onSwitchSurrender: function(surrenderShowAwaked) {
    var generalData, list;
    if ((this.surrenderShowAwaked != surrenderShowAwaked)) {
        if (this.surrenderView) {
            // source line 271, bytecode pc 59
            xs.Utils.Node.safeRemoveChild(this.surrenderView);
            // source line 272, bytecode pc 67
            (this.surrenderView = null);
        }
        // source line 274, bytecode pc 77
        (this.surrenderShowAwaked = surrenderShowAwaked);
        // source line 275, bytecode pc 87
        (generalData = this.selectedGeneralData);
        // source line 276, bytecode pc 134
        (list = this.cacheList[xs.Utils.parseStringSafe(generalData.getId())]);
        if ((list != null)) {
            if (this.surrenderShowAwaked) {
                // source line 280, bytecode pc 182
                (this.surrenderView = this.createSurrenderView(list, 1, true));
            } else {
                // source line 282, bytecode pc 214
                (this.surrenderView = this.createSurrenderView(list, 0, true));
            }
            // source line 283, bytecode pc 239
            this.surrenderView.setBaseTouchPriority(this.m_baseTouchPriority);
            // source line 284, bytecode pc 280
            xs.Utils.Node.attachNodes(this.ccbNode, this.surrenderView);
        }
    }
},
    checkTableViewOffset: function() {
    var _offsetX, _maxOffsetX, _minOffsetX, nowContentOffsetX;
    if (!this.tableView) {
        // source line 295, bytecode pc 34
        xs.log("tableView为空!");
        // source line 296, bytecode pc 36
        return void 0;
    }
    // source line 299, bytecode pc 66
    xs.log(("当前选择的 idx = " + this.selectedIdx));
    // source line 300, bytecode pc 71
    (_offsetX = 0);
    // source line 302, bytecode pc 92
    (_maxOffsetX = (((8 - (this.selectedIdx + 1)) * 115) - 30));
    // source line 303, bytecode pc 106
    (_minOffsetX = ((_maxOffsetX - 805) + 30));
    // source line 305, bytecode pc 143
    xs.log(((("应该存在的范围" + _minOffsetX) + " ~ ") + _maxOffsetX));
    // source line 308, bytecode pc 169
    (nowContentOffsetX = this.tableView.getContentOffset().x);
    // source line 309, bytecode pc 196
    xs.log("当前offset = ", nowContentOffsetX);
    if ((nowContentOffsetX < _minOffsetX)) {
        // source line 313, bytecode pc 215
        (_offsetX = _minOffsetX);
        // source line 314, bytecode pc 242
        xs.log(("当前offset 低于最小要求 " + _offsetX));
        // source line 315, bytecode pc 285
        this.tableView.setContentOffset(cc.p(_offsetX, 0), true);
    } else {
        if ((nowContentOffsetX > _maxOffsetX)) {
            // source line 319, bytecode pc 309
            (_offsetX = _maxOffsetX);
            // source line 320, bytecode pc 336
            xs.log(("当前offset 高于最大要求 " + _offsetX));
            // source line 321, bytecode pc 379
            this.tableView.setContentOffset(cc.p(_offsetX, 0), true);
        }
    }
},
    getSelectIdx: function() {
    var i, tmpGeneralData;
    // source line 327, bytecode pc 4
    (i = 0);
    while ((i < this.arrGeneralDatas.length)) {
        // source line 328, bytecode pc 24
        (tmpGeneralData = this.arrGeneralDatas[i]);
        if ((tmpGeneralData.getId() == this.selectedGeneralData.getId())) {
            // source line 330, bytecode pc 65
            return i;
        }
        // source line 327, bytecode pc 79
        (i = (+i + 1));
    }
    // source line 333, bytecode pc 103
    return 0;
}
}));
// source line 338, bytecode pc 481
(xs.Views.Dialog.AgaSurrenderDialog.showWithSurrenderInfo = function(params) {
    // source line 341, bytecode pc 36
    xs.Views.Mgr.showDialogByName("AgaSurrenderDialog", params);
});
// source line 345, bytecode pc 512
(xs.Views.Dialog.AgaSurrenderDialog.create = function(params) {
    var ret;
    // source line 346, bytecode pc 28
    (ret = new xs.Views.Dialog.AgaSurrenderDialog());
    if ((ret && ret.init(params))) {
        // source line 348, bytecode pc 64
        return ret;
    }
    // source line 350, bytecode pc 66
    return null;
});
// source line 354, bytecode pc 575
(xs.Views.Dialog.AgaSurrenderDialog_SurrenderGuide = (xs.Views.Dialog.AgaSurrenderDialog_SurrenderGuide || {
    create: function() {
    var obj, _id_general, _rs, _modelGeneral, param;
    // source line 357, bytecode pc 28
    (obj = new xs.Views.Dialog.AgaSurrenderDialog());
    // source line 359, bytecode pc 70
    (_id_general = xs.Tools.CfgData.getGlobalConf("GuideChapter_Surrender_GeneralId", "142022"));
    // source line 360, bytecode pc 121
    (_rs = xs.gd_mgr.getInstance().Generals.getById(("" + _id_general)));
    if (!xs.Utils.isEmpty(_rs)) {
        // source line 364, bytecode pc 165
        (_modelGeneral = _rs[0]);
    } else {
        // source line 367, bytecode pc 197
        xs.error(("cant find general instance by id: " + _id_general));
    }
    // source line 374, bytecode pc 230
    (param = { datas: [ _modelGeneral ], idxInit: 0 });
    if ((obj && obj.init(param))) {
        // source line 377, bytecode pc 266
        return obj;
    }
    // source line 379, bytecode pc 268
    return null;
}
}));
// source line 386, bytecode pc 665
xs.Views.Mgr.registerDialog("AgaSurrenderDialog", {
    "class": xs.Views.Dialog.AgaSurrenderDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "DlgCmn"
});
// source line 392, bytecode pc 755
xs.Views.Mgr.registerDialog("AgaSurrenderDialog_SurrenderGuide", {
    "class": xs.Views.Dialog.AgaSurrenderDialog_SurrenderGuide,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "DlgCmn"
});
