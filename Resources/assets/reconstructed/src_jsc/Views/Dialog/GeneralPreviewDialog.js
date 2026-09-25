// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/GeneralPreviewDialog.js:1
// source line 298, bytecode pc 360
(xs.Views.Dialog.GeneralPreviewDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
},
    init: function(param) {
    var _tmpSize;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    if (param) {
        // source line 16, bytecode pc 42
        (this._onPageChange = param.page);
    }
    // source line 19, bytecode pc 78
    (this.ccbNode = cc.BuilderReader.load("ccb3/WuJiangYuLanDialog.ccbi", this));
    // source line 20, bytecode pc 121
    this.ccbNode.setContentSize(cc.size(728, 530));
    // source line 21, bytecode pc 168
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 22, bytecode pc 227
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 25, bytecode pc 235
    (this.m_probabilityTxt = null);
    // source line 26, bytecode pc 243
    (this.m_btnClose = null);
    // source line 28, bytecode pc 291
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 29, bytecode pc 315
    this.m_btnClose.setOnClickCallBack(function() {
    // source line 30, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 33, bytecode pc 343
    (this.visibleOrigin = xs.director.getVisibleOrigin());
    // source line 34, bytecode pc 371
    (this.visibleSize = xs.director.getVisibleSize());
    // source line 36, bytecode pc 411
    (_tmpSize = cc.size(728, (this.visibleSize.height - 140)));
    // source line 37, bytecode pc 421
    (this._viewSize = _tmpSize);
    // source line 39, bytecode pc 520
    (this.m_pageView = xs.Views.TablePage.create(cc.size((this.visibleSize.width - xs.Views.MainMenuView.Width), (this.visibleSize.height - 213))));
    // source line 40, bytecode pc 544
    this.m_pageView.setBaseTouchPriority(-8888);
    // source line 41, bytecode pc 591
    this.m_pageView.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 42, bytecode pc 681
    xs.Utils.Node.attachNodes(this.ccbNode, this.m_pageView, { desc: "c", offset: cc.p(0, -106), sc: true });
    // source line 46, bytecode pc 709
    (this._shenViewNode = cc.Node.create());
    // source line 47, bytecode pc 737
    (this._jinViewNode = cc.Node.create());
    // source line 48, bytecode pc 765
    (this._yinViewNode = cc.Node.create());
    // source line 49, bytecode pc 793
    (this._tongViewNode = cc.Node.create());
    // source line 52, bytecode pc 857
    this.m_pageView.addPage(xs.Tools.String.createString("wujiang_yulan_label_shen"), this._shenViewNode, "Btn_PreviewTable");
    // source line 53, bytecode pc 921
    this.m_pageView.addPage(xs.Tools.String.createString("wujiang_yulan_label_jin"), this._jinViewNode, "Btn_PreviewTable");
    // source line 54, bytecode pc 985
    this.m_pageView.addPage(xs.Tools.String.createString("wujiang_yulan_label_yin"), this._yinViewNode, "Btn_PreviewTable");
    // source line 55, bytecode pc 1049
    this.m_pageView.addPage(xs.Tools.String.createString("wujiang_yulan_label_tong"), this._tongViewNode, "Btn_PreviewTable");
    // source line 59, bytecode pc 1051
    return true;
},
    onPageChange: function(idx) {
    var grade, probability;
    // source line 63, bytecode pc 26
    xs.log(("onPageChange idx is " + idx));
    // source line 64, bytecode pc 35
    (grade = (idx + 1));
    // source line 65, bytecode pc 44
    (probability = "");
    // source line 67, bytecode pc 48
    switch (grade) {
        case xs.Constant_PreviewMuType_ShenJiang_Page:
        // source line 70, bytecode pc 153
        (probability = xs.Tools.String.createString(("wujiang_yulan_txt_" + grade)));
        break;
        case xs.Constant_PreviewType_JinJiang_Page:
        // source line 73, bytecode pc 198
        (probability = xs.Tools.String.createString(("wujiang_yulan_txt_" + grade)));
        break;
        case xs.Constant_PreviewType_YinJiang_Page:
        // source line 76, bytecode pc 243
        (probability = xs.Tools.String.createString(("wujiang_yulan_txt_" + grade)));
        break;
        case xs.Constant_PreviewType_TongJiang_Page:
        // source line 79, bytecode pc 288
        (probability = xs.Tools.String.createString(("wujiang_yulan_txt_" + grade)));
        break;
        default:
        break;
    }
    // source line 87, bytecode pc 333
    (probability = xs.Tools.String.createString(("wujiang_yulan_txt_" + grade)));
    // source line 88, bytecode pc 355
    this.m_probabilityTxt.setString(probability);
    // source line 91, bytecode pc 372
    this._createGeneralView(grade);
},
    onEnter: function() {
    // source line 96, bytecode pc 12
    this._super();
    // source line 98, bytecode pc 25
    this.requestService();
},
    requestCallback: function(data) {
    // source line 102, bytecode pc 22
    xs.log("requestCallback");
    if (data.result) {
        // source line 104, bytecode pc 52
        this.initWithData(data);
    }
},
    requestService: function() {
    var param;
    // source line 108, bytecode pc 22
    xs.log("requestService");
    // source line 109, bytecode pc 32
    (param = {});
    // source line 110, bytecode pc 72
    xs.Tools.Net.requestGeneralPreviewList(param, this.requestCallback, this);
},
    getGradeList: function(grade) {
    var list, datalist, len, i, item, general;
    // source line 113, bytecode pc 13
    (grade = (grade || 0));
    // source line 114, bytecode pc 22
    (list = []);
    // source line 115, bytecode pc 37
    (datalist = this.m_AllCellData.wine_info);
    if (!datalist) {
        // source line 116, bytecode pc 52
        return [];
    }
    // source line 117, bytecode pc 64
    (len = datalist.length);
    // source line 118, bytecode pc 69
    (i = 0);
    while ((i < len)) {
        // source line 119, bytecode pc 86
        (item = datalist[i]);
        // source line 120, bytecode pc 120
        (general = xs.Models.GeneralPreview.createWithJson(item));
        if ((item && general)) {
            if (grade) {
                if ((grade == general.getGrade())) {
                    // source line 125, bytecode pc 187
                    list.push(general);
                }
            } else {
                // source line 128, bytecode pc 211
                list.push(general);
            }
        }
        // source line 118, bytecode pc 226
        i++;
    }
    // source line 132, bytecode pc 292
    list.sort(xs.Tools.Sort.by(xs.Constant_SortType_Altas_Default));
    // source line 133, bytecode pc 338
    xs.dump(((("getGradeList  grade:" + grade) + "  len:") + list.length), list);
    // source line 134, bytecode pc 342
    return list;
},
    initWithData: function(data) {
    var _generalList, _dataList;
    // source line 139, bytecode pc 21
    (this.m_AllCellData = (data || {}));
    // source line 140, bytecode pc 39
    (this.m_AllCellData.list_local = {});
    // source line 146, bytecode pc 48
    (_generalList = []);
    // source line 147, bytecode pc 57
    (_dataList = []);
    // source line 169, bytecode pc 97
    (this.m_AllCellData.list_local.shen_list = this.getGradeList(xs.Constant_PreviewMuType_ShenJiang_Page));
    // source line 170, bytecode pc 137
    (this.m_AllCellData.list_local.jin_list = this.getGradeList(xs.Constant_PreviewType_JinJiang_Page));
    // source line 171, bytecode pc 177
    (this.m_AllCellData.list_local.yin_list = this.getGradeList(xs.Constant_PreviewType_YinJiang_Page));
    // source line 172, bytecode pc 217
    (this.m_AllCellData.list_local.tong_list = this.getGradeList(xs.Constant_PreviewType_TongJiang_Page));
    // source line 175, bytecode pc 252
    xs.dump("initWithData local data ", this.m_AllCellData.list_local);
    // source line 178, bytecode pc 272
    this.m_pageView.setListener(this);
    if (this._onPageChange) {
        // source line 181, bytecode pc 303
        this.onPageChange(this._onPageChange);
        // source line 182, bytecode pc 328
        this.m_pageView.selectPage(this._onPageChange);
    } else {
        // source line 185, bytecode pc 359
        this.onPageChange((xs.Constant_PreviewMuType_ShenJiang_Page - 1));
    }
},
    _createGeneralView: function(grade) {
    var generalViewData, viewSize, viewNode, viewPos, touchPriority, cellCreateFunc;
    // source line 192, bytecode pc 9
    (generalViewData = {});
    // source line 193, bytecode pc 37
    (viewSize = cc.size(700, 300));
    // source line 194, bytecode pc 66
    (this._viewPosition = cc.p(-35, 50));
    // source line 196, bytecode pc 77
    (generalViewData.numberOfCellsInRow = 6);
    // source line 198, bytecode pc 109
    (generalViewData.cellSize = cc.size(700, 120));
    // source line 200, bytecode pc 119
    (viewNode = this._shenViewNode);
    // source line 201, bytecode pc 129
    (viewPos = this._viewPosition);
    // source line 202, bytecode pc 138
    (touchPriority = -8888);
    // source line 203, bytecode pc 142
    switch (grade) {
        case xs.Constant_PreviewMuType_ShenJiang_Page:
        // source line 206, bytecode pc 232
        (generalViewData.allCellData = this.m_AllCellData.list_local.shen_list);
        // source line 207, bytecode pc 262
        (generalViewData.numberOfCells = this.m_AllCellData.list_local.shen_list.length);
        // source line 208, bytecode pc 272
        (viewNode = this._shenViewNode);
        break;
        case xs.Constant_PreviewType_JinJiang_Page:
        // source line 211, bytecode pc 302
        (generalViewData.allCellData = this.m_AllCellData.list_local.jin_list);
        // source line 212, bytecode pc 332
        (generalViewData.numberOfCells = this.m_AllCellData.list_local.jin_list.length);
        // source line 213, bytecode pc 342
        (viewNode = this._jinViewNode);
        break;
        case xs.Constant_PreviewType_YinJiang_Page:
        // source line 216, bytecode pc 372
        (generalViewData.allCellData = this.m_AllCellData.list_local.yin_list);
        // source line 217, bytecode pc 402
        (generalViewData.numberOfCells = this.m_AllCellData.list_local.yin_list.length);
        // source line 218, bytecode pc 412
        (viewNode = this._yinViewNode);
        break;
        case xs.Constant_PreviewType_TongJiang_Page:
        // source line 221, bytecode pc 442
        (generalViewData.allCellData = this.m_AllCellData.list_local.tong_list);
        // source line 222, bytecode pc 472
        (generalViewData.numberOfCells = this.m_AllCellData.list_local.tong_list.length);
        // source line 223, bytecode pc 482
        (viewNode = this._tongViewNode);
        break;
        default:
        break;
    }
    if ((viewNode._init == null)) {
        // source line 228, bytecode pc 535
        (generalViewData.allCellData.callBack = this.generalCellCallback.bind(this));
        // source line 229, bytecode pc 547
        (generalViewData.touchPriority = touchPriority);
        // source line 230, bytecode pc 571
        (cellCreateFunc = xs.Views.HandbookCellOfGeneralPreview.create);
        // source line 231, bytecode pc 612
        (this.m_dataAndDelegate = xs.Views.ListTableViewDelegateAndDataSource.create(generalViewData, cellCreateFunc));
        // source line 232, bytecode pc 656
        (this.m_ListView = xs.Views.ListTableView.create(this.m_dataAndDelegate, viewSize));
        // source line 233, bytecode pc 678
        this.m_ListView.setPosition(viewPos);
        // source line 234, bytecode pc 725
        this.m_ListView.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 235, bytecode pc 763
        xs.Utils.Node.attachNodes(viewNode, this.m_ListView);
        // source line 236, bytecode pc 785
        this.m_ListView.setBaseTouchPriority(touchPriority);
        // source line 237, bytecode pc 795
        (viewNode._init = true);
    }
},
    generalCellCallback: function(cellData, index) {
    var _data, obj;
    // source line 277, bytecode pc 17
    (_data = cellData.getModel());
    // source line 278, bytecode pc 40
    this.log("celldata", _data);
    // source line 282, bytecode pc 101
    (obj = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _data, type: "achieve_nothave" }));
},
    setBaseTouchPriority: function(priority) {
    // source line 286, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 287, bytecode pc 51
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.m_btnClose.priority));
},
    cfg: {
        m_btnClose: { priority: -1 },
        m_pageView: { priority: -1 },
        ccbCfg: [
            { tag: 1, type: "ls", id: "LS_huodong_title", stringId: "wujiang_yulan_title" },
            { tag: 3, type: "ls", name: "m_probabilityTxt", id: "LS_EXPInf" },
            { tag: 10, type: "btn", name: "m_btnClose", id: "Btn_Close" }
        ]
    }
}));
// source line 304, bytecode pc 391
(xs.Views.Dialog.GeneralPreviewDialog.create = function(param) {
    var ret;
    // source line 305, bytecode pc 28
    (ret = new xs.Views.Dialog.GeneralPreviewDialog());
    if ((ret && ret.init(param))) {
        // source line 307, bytecode pc 64
        return ret;
    }
    // source line 309, bytecode pc 66
    return null;
});
// source line 312, bytecode pc 422
(xs.Views.Dialog.GeneralPreviewDialog.load = function() {
    // source line 313, bytecode pc 32
    xs.Factorys.Sprite.load("Duijiu");
});
// source line 316, bytecode pc 453
(xs.Views.Dialog.GeneralPreviewDialog.unload = function() {
    // source line 317, bytecode pc 32
    xs.Factorys.Sprite.unload("Duijiu");
});
// source line 322, bytecode pc 533
xs.Views.Mgr.registerDialog("GeneralPreviewDialog", { "class": xs.Views.Dialog.GeneralPreviewDialog, styleType: xs.Constant_DlgStyleType_Large });
