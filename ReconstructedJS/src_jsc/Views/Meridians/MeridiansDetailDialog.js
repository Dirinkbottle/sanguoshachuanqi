// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Meridians/MeridiansDetailDialog.js:1
// source line 151, bytecode pc 251
(xs.Views.MeridiansDetailDialog = xs.Views.HungerLayer.extend({
    name: "MeridiansDetailDialog",
    ccbCfg: [
        { tag: 1, type: "ls", id: "LS_popUI1", stringId: "MeridiansMain_10" },
        { tag: 2, name: "m_closeBtn", type: "btn", id: "Btn_Close" }
    ],
    init: function(data) {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 19, bytecode pc 35
    (this.m_closeBtn = null);
    // source line 20, bytecode pc 43
    (this.m_selectButton_1 = null);
    // source line 21, bytecode pc 55
    (this.m_scrollViewList = []);
    // source line 23, bytecode pc 65
    (this.m_data = data);
    // source line 24, bytecode pc 101
    (this.m_button_num = parseInt(data.getMerdianTopLevel()));
    // source line 26, bytecode pc 152
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MeridiansDetailDialog, this));
    // source line 27, bytecode pc 195
    this.m_ccbNode.setContentSize(cc.size(915, 630));
    // source line 28, bytecode pc 242
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 34, bytecode pc 324
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", offset: { x: 0, y: 0 }, sc: true });
    // source line 35, bytecode pc 367
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 37, bytecode pc 405
    this.m_closeBtn.setOnClickCallBack(this.closeCallback.bind(this));
    // source line 38, bytecode pc 432
    (this.m_selectButton_1 = this.m_ccbNode.getChildByTag(3));
    // source line 41, bytecode pc 434
    return true;
},
    createScrollListView: function(idx) {
    var scrollViewSize, _EffectScrollView;
    // source line 44, bytecode pc 27
    (scrollViewSize = cc.size(710, 548));
    // source line 45, bytecode pc 61
    (_EffectScrollView = xs.Views.ScrollView.create(scrollViewSize));
    // source line 46, bytecode pc 97
    _EffectScrollView.setAnchorPoint(cc.p(0, 0));
    // source line 47, bytecode pc 135
    _EffectScrollView.setPosition(cc.p(26, 16));
    // source line 48, bytecode pc 157
    _EffectScrollView.setBaseTouchPriority(this.m_baseTouchPriority);
    // source line 49, bytecode pc 195
    xs.Utils.Node.attachNodes(this.m_ccbNode, _EffectScrollView);
    // source line 54, bytecode pc 263
    _EffectScrollView.addChildrenView(xs.Views.DetailsListView.create({ param: this.m_data, idx: idx }));
    // source line 58, bytecode pc 331
    _EffectScrollView.addChildrenView(xs.Views.AcupointListView.create({ param: this.m_data, idx: idx }));
    // source line 60, bytecode pc 346
    _EffectScrollView.resizeView();
    // source line 62, bytecode pc 360
    (this.m_scrollViewList[idx] = _EffectScrollView);
},
    createChangeButton: function(num) {
    var firstButtonPositionX, firstButtonPositionY, i, numStr, selectButton;
    // source line 66, bytecode pc 20
    (firstButtonPositionX = this.m_selectButton_1.getPositionX());
    // source line 67, bytecode pc 41
    (firstButtonPositionY = this.m_selectButton_1.getPositionY());
    // source line 69, bytecode pc 46
    (i = 1);
    while ((i <= num)) {
        // source line 70, bytecode pc 86
        (numStr = xs.Tools.String.convNumberString(i));
        if ((i == 1)) {
            // source line 72, bytecode pc 132
            (selectButton = xs.Views.Btn.createByStyleId("BS_QueueTeamTablePage"));
            // source line 73, bytecode pc 176
            selectButton.setAnchorPoint(cc.p(0.5, 0.5));
            // source line 74, bytecode pc 237
            selectButton.setString(xs.Tools.String.createStringWithArgsArray("MeridiansMain_11", [ numStr ]));
            if (this.m_baseTouchPriority) {
                // source line 76, bytecode pc 272
                selectButton.setTouchPriority((this.m_baseTouchPriority - 1));
            } else {
                // source line 78, bytecode pc 295
                selectButton.setTouchPriority(-5);
            }
            // source line 80, bytecode pc 351
            selectButton.addCallBackForEvent(this, this.selectButtonCallBack.bind({ self: this, tag: i }));
            // source line 81, bytecode pc 396
            xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_selectButton_1, selectButton);
            // source line 82, bytecode pc 406
            (this.m_selectButton_1 = selectButton);
        } else {
            // source line 84, bytecode pc 455
            (this[("m_selectButton_" + i)] = xs.Views.Btn.createByStyleId("BS_QueueTeamTablePage"));
            // source line 85, bytecode pc 507
            this[("m_selectButton_" + i)].setAnchorPoint(cc.p(0.5, 0.5));
            // source line 86, bytecode pc 576
            this[("m_selectButton_" + i)].setString(xs.Tools.String.createStringWithArgsArray("MeridiansMain_11", [ numStr ]));
            if (this.m_baseTouchPriority) {
                // source line 88, bytecode pc 619
                this[("m_selectButton_" + i)].setTouchPriority((this.m_baseTouchPriority - 1));
            } else {
                // source line 90, bytecode pc 650
                this[("m_selectButton_" + i)].setTouchPriority(-5);
            }
            // source line 92, bytecode pc 714
            this[("m_selectButton_" + i)].addCallBackForEvent(this, this.selectButtonCallBack.bind({ self: this, tag: i }));
            // source line 93, bytecode pc 771
            this[("m_selectButton_" + i)].setPosition(cc.p(firstButtonPositionX, (firstButtonPositionY - ((i - 1) * 68))));
            // source line 94, bytecode pc 817
            xs.Utils.Node.attachNodes(this.m_ccbNode, this[("m_selectButton_" + i)]);
        }
        // source line 69, bytecode pc 831
        (i = (+i + 1));
    }
    if (this.m_selectButton_1) {
        // source line 99, bytecode pc 876
        this.m_selectButton_1.setSelected(true);
    }
},
    setSelectButtonStatus: function(num) {
    var i;
    // source line 103, bytecode pc 4
    (i = 1);
    while ((i <= this.m_button_num)) {
        if (this[("m_selectButton_" + i)]) {
            // source line 105, bytecode pc 51
            this[("m_selectButton_" + i)].setSelected(false);
        }
        // source line 103, bytecode pc 65
        (i = (+i + 1));
    }
    if (this[("m_selectButton_" + num)]) {
        // source line 109, bytecode pc 123
        this[("m_selectButton_" + num)].setSelected(true);
    }
    if (xs.Utils.isEmpty(this.m_scrollViewList[num])) {
        // source line 113, bytecode pc 177
        this.createScrollListView(num);
    } else {
        // source line 116, bytecode pc 207
        this.m_scrollViewList[num].setPositionX(26);
    }
    // source line 120, bytecode pc 212
    (i = 1);
    while ((i <= this.m_button_num)) {
        if ((i != num)) {
            if (!xs.Utils.isEmpty(this.m_scrollViewList[i])) {
                // source line 124, bytecode pc 294
                this.m_scrollViewList[i].setPositionX(3000);
            }
        }
        // source line 120, bytecode pc 308
        (i = (+i + 1));
    }
},
    selectButtonCallBack: function() {
    var self, tag;
    // source line 133, bytecode pc 9
    (self = this.self);
    // source line 134, bytecode pc 19
    (tag = this.tag);
    // source line 136, bytecode pc 38
    self.setSelectButtonStatus(tag);
},
    closeCallback: function() {
    // source line 142, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onEnter: function() {
    // source line 145, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 149, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 152, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 153, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 154, bytecode pc 56
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 155, bytecode pc 76
    this.createChangeButton(this.m_button_num);
    // source line 156, bytecode pc 91
    this.createScrollListView(1);
}
}));
// source line 160, bytecode pc 277
(xs.Views.MeridiansDetailDialog.create = function(data) {
    var ret;
    // source line 161, bytecode pc 23
    (ret = new xs.Views.MeridiansDetailDialog());
    if ((ret && ret.init(data))) {
        // source line 163, bytecode pc 59
        return ret;
    }
    // source line 165, bytecode pc 61
    return null;
});
// source line 170, bytecode pc 352
xs.Views.Mgr.registerDialog("MeridiansDetailDialog", { "class": xs.Views.MeridiansDetailDialog, styleType: xs.Constant_DlgStyleType_Large });
