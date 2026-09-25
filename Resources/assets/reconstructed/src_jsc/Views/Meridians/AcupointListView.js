// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Meridians/AcupointListView.js:1
// source line 70, bytecode pc 112
(xs.Views.AcupointListView = cc.Layer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    _constNum: { height: 930 },
    init: function(data) {
    var ViewHeight, i, data_1, _height, meridianName, j, data_2, cell;
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 34
    (this.m_data = data.param);
    // source line 20, bytecode pc 49
    (this.m_idx = data.idx);
    // source line 21, bytecode pc 80
    (this.m_meridianModelList = this.m_data.getOneMeridianTopAllMeridiansModel(this.m_idx));
    // source line 22, bytecode pc 98
    (this.m_meridianNum = this.m_meridianModelList.length);
    // source line 25, bytecode pc 120
    (ViewHeight = (this._constNum.height * this.m_meridianNum));
    // source line 26, bytecode pc 158
    this.setContentSize(cc.size(680, ViewHeight));
    // source line 29, bytecode pc 163
    (i = 0);
    while ((i < this.m_meridianNum)) {
        // source line 30, bytecode pc 194
        (data_1 = this.m_meridianModelList[i].getAllMeridianPointModels());
        // source line 31, bytecode pc 222
        (_height = (this._constNum.height * ((this.m_meridianNum - i) - 1)));
        // source line 34, bytecode pc 280
        (meridianName = xs.Factorys.Label.createByStyleIdWithString("LS_BntHui", this.m_meridianModelList[i].getMeridianName()));
        // source line 35, bytecode pc 324
        meridianName.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 41, bytecode pc 411
        xs.Utils.Node.attachNodes(this, meridianName, { desc: "lb", sc: true, offset: { x: 340, y: (_height + 916) } });
        // source line 44, bytecode pc 416
        (j = 1);
        while ((j <= 15)) {
            // source line 47, bytecode pc 467
            (data_2 = { data_1: data_1[((2 * j) - 2)], data_2: data_1[((2 * j) - 1)] });
            // source line 49, bytecode pc 501
            (cell = xs.Views.AcupointListCell.create(data_2));
            // source line 50, bytecode pc 541
            cell.setAnchorPoint(cc.p(0, 0.5));
            // source line 56, bytecode pc 633
            xs.Utils.Node.attachNodes(this, cell, { desc: "lb", sc: true, offset: { x: 0, y: ((_height + 930) - (60 * j)) } });
            // source line 44, bytecode pc 648
            j++;
        }
        // source line 29, bytecode pc 675
        i++;
    }
    // source line 62, bytecode pc 693
    return true;
},
    onEnter: function() {
    // source line 65, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 68, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 71, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 72, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 75, bytecode pc 138
(xs.Views.AcupointListView.create = function(data) {
    var ret;
    // source line 76, bytecode pc 23
    (ret = new xs.Views.AcupointListView());
    if ((ret && ret.init(data))) {
        // source line 78, bytecode pc 59
        return ret;
    }
    // source line 80, bytecode pc 61
    return null;
});
// source line 172, bytecode pc 515
(xs.Views.AcupointListCell = cc.Layer.extend({
    ctor: function() {
    // source line 87, bytecode pc 12
    this._super();
    // source line 88, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [
        { tag: 2, type: "ls", id: "LS_jinengInf1", name: "m_acupointName_1" },
        { tag: 4, type: "ls", id: "LS_Lv", name: "m_acupointDetail_1" },
        { tag: 9, type: "ls", id: "LS_TiXing", name: "m_acupointInf" },
        { tag: 6, type: "ls", id: "LS_jinengInf1", name: "m_acupointName_2" },
        { tag: 8, type: "ls", id: "LS_Lv", name: "m_acupointDetail_2" }
    ],
    detailType: { gong: 1, fang: 2, xue: 3, zhi: 4 },
    init: function(data) {
    var willHaveIcon, detailIcon, _detailIcon;
    if (!this._super()) {
        // source line 106, bytecode pc 19
        return false;
    }
    // source line 108, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 109, bytecode pc 35
    (this.m_acupointName_1 = null);
    // source line 110, bytecode pc 43
    (this.m_acupointDetail_1 = null);
    // source line 111, bytecode pc 51
    (this.m_acupointInf = null);
    // source line 112, bytecode pc 59
    (this.m_acupointName_2 = null);
    // source line 113, bytecode pc 67
    (this.m_acupointDetail_2 = null);
    // source line 115, bytecode pc 104
    this.setContentSize(cc.size(680, 60));
    // source line 117, bytecode pc 155
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AcupointListCell, this));
    // source line 118, bytecode pc 197
    this.m_ccbNode.setContentSize(cc.size(680, 60));
    // source line 119, bytecode pc 240
    this.m_ccbNode.setAnchorPoint(cc.p(0, 0.5));
    // source line 120, bytecode pc 299
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: true });
    // source line 121, bytecode pc 342
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 124, bytecode pc 368
    (this.m_acupointIcon_1 = this.m_ccbNode.getChildByTag(1));
    // source line 125, bytecode pc 395
    (this.m_acupointIcon_2 = this.m_ccbNode.getChildByTag(5));
    // source line 128, bytecode pc 422
    (this.m_detailIcon_1 = this.m_ccbNode.getChildByTag(3));
    // source line 129, bytecode pc 449
    (this.m_detailIcon_2 = this.m_ccbNode.getChildByTag(7));
    // source line 131, bytecode pc 469
    this.m_acupointInf.setVisible(false);
    // source line 133, bytecode pc 484
    (this.m_data_1 = data.data_1);
    // source line 134, bytecode pc 499
    (this.m_data_2 = data.data_2);
    if (!this.m_data_1.getMeridianPointState()) {
        // source line 137, bytecode pc 564
        (willHaveIcon = xs.Factorys.Sprite.create("jingmai_weizhi", "MeridiansMainScene"));
        // source line 138, bytecode pc 609
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_acupointIcon_1, willHaveIcon);
        // source line 139, bytecode pc 619
        (this.m_acupointIcon_1 = willHaveIcon);
    }
    if (!this.m_data_2.getMeridianPointState()) {
        // source line 143, bytecode pc 684
        (willHaveIcon = xs.Factorys.Sprite.create("jingmai_weizhi", "MeridiansMainScene"));
        // source line 144, bytecode pc 729
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_acupointIcon_2, willHaveIcon);
        // source line 145, bytecode pc 739
        (this.m_acupointIcon_2 = willHaveIcon);
    }
    // source line 149, bytecode pc 760
    (detailIcon = this.m_data_1.getMeridianPointBuffValueIcon());
    // source line 150, bytecode pc 805
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_detailIcon_1, detailIcon);
    // source line 151, bytecode pc 815
    (this.m_detailIcon_1 = detailIcon);
    // source line 154, bytecode pc 836
    (_detailIcon = this.m_data_2.getMeridianPointBuffValueIcon());
    // source line 155, bytecode pc 881
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_detailIcon_2, _detailIcon);
    // source line 156, bytecode pc 891
    (this.m_detailIcon_2 = _detailIcon);
    // source line 158, bytecode pc 927
    this.m_acupointName_1.setString(this.m_data_1.getMeridianPointName());
    // source line 159, bytecode pc 963
    this.m_acupointDetail_1.setString(this.m_data_1.getMeridianPointBuffValue());
    // source line 160, bytecode pc 999
    this.m_acupointName_2.setString(this.m_data_2.getMeridianPointName());
    // source line 161, bytecode pc 1035
    this.m_acupointDetail_2.setString(this.m_data_2.getMeridianPointBuffValue());
    // source line 164, bytecode pc 1037
    return true;
},
    onEnter: function() {
    // source line 167, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 170, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 173, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 174, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 178, bytecode pc 541
(xs.Views.AcupointListCell.create = function(data) {
    var ret;
    // source line 179, bytecode pc 23
    (ret = new xs.Views.AcupointListCell());
    if ((ret && ret.init(data))) {
        // source line 181, bytecode pc 59
        return ret;
    }
    // source line 183, bytecode pc 61
    return null;
});
