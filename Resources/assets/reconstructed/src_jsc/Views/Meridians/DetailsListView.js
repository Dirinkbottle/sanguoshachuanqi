// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Meridians/DetailsListView.js:1
// source line 104, bytecode pc 150
(xs.Views.DetailsListView = cc.Layer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [ { tag: 2, type: "ls", id: "LS_jinengInf1", name: "m_acupointName_1" } ],
    init: function(data) {
    var meridianTopNum, willHaveIcon, skillDescStr, meridianTopNumStr, descStr, n, _height, i, cell, strNum, height;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 34
    (this.m_data = data.param);
    // source line 18, bytecode pc 49
    (this.m_idx = data.idx);
    // source line 19, bytecode pc 80
    (this.m_meridianBuffModelList = this.m_data.getAllHaveBuffMeridiansModel(this.m_idx));
    // source line 21, bytecode pc 88
    (this.m_acupointName_1 = null);
    // source line 24, bytecode pc 139
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MeridiansListCell, this));
    // source line 25, bytecode pc 181
    this.m_ccbNode.setContentSize(cc.size(680, 120));
    // source line 26, bytecode pc 224
    this.m_ccbNode.setAnchorPoint(cc.p(0, 0.5));
    // source line 30, bytecode pc 307
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: true, offset: { x: 0, y: 60 } });
    // source line 32, bytecode pc 350
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 34, bytecode pc 376
    (this.m_haveIcon = this.m_ccbNode.getChildByTag(1));
    // source line 35, bytecode pc 412
    (meridianTopNum = parseInt(this.m_data.getMerdianTopLevel()));
    if ((meridianTopNum <= this.m_idx)) {
        if (!this.m_data.getIsHeightest()) {
            // source line 38, bytecode pc 492
            (willHaveIcon = xs.Factorys.Sprite.create("jingmai_weizhi", "MeridiansMainScene"));
            // source line 39, bytecode pc 537
            xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_haveIcon, willHaveIcon);
            // source line 40, bytecode pc 547
            (this.m_haveIcon = willHaveIcon);
        }
    }
    // source line 46, bytecode pc 637
    (skillDescStr = xs.Models.MeridianTop.createWithJson({ top_level: this.m_idx.toString(), meridian_level: "1", point_level: "1" }).getMeridianTopSkillDesc());
    // source line 48, bytecode pc 674
    (meridianTopNumStr = xs.Tools.String.convNumberString(this.m_idx));
    // source line 49, bytecode pc 723
    (descStr = xs.Tools.String.createStringWithArgsArray("MeridiansMain_22", [ meridianTopNumStr ]));
    // source line 50, bytecode pc 749
    this.m_acupointName_1.setString((skillDescStr + descStr));
    // source line 52, bytecode pc 764
    (n = this.m_meridianBuffModelList.length);
    // source line 53, bytecode pc 780
    (_height = ((120 + (60 * n)) - 30));
    // source line 54, bytecode pc 785
    (i = 1);
    while ((i <= n)) {
        // source line 55, bytecode pc 834
        (cell = xs.Views.DetailsListCell.create(this.m_meridianBuffModelList[(i - 1)]));
        // source line 56, bytecode pc 874
        cell.setAnchorPoint(cc.p(0, 0.5));
        // source line 63, bytecode pc 964
        xs.Utils.Node.attachNodes(this, cell, { desc: "lb", sc: true, offset: { x: 0, y: (_height - (60 * (i - 1))) } });
        // source line 54, bytecode pc 978
        (i = (+i + 1));
    }
    // source line 69, bytecode pc 1034
    (willHaveIcon = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 70, bytecode pc 1078
    willHaveIcon.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 76, bytecode pc 1168
    xs.Utils.Node.attachNodes(this, willHaveIcon, { desc: "lb", sc: true, offset: { x: 340, y: (150 + (60 * n)) } });
    // source line 80, bytecode pc 1205
    (strNum = xs.Tools.String.convNumberString(this.m_idx));
    // source line 82, bytecode pc 1290
    (this.fightNumLabel = xs.Factorys.Label.createByStyleIdWithString("LS_BntHui", xs.Tools.String.createStringWithArgsArray("MeridiansMain_25", [ strNum ])));
    // source line 88, bytecode pc 1377
    xs.Utils.Node.attachNodes(willHaveIcon, this.fightNumLabel, { desc: "lb", sc: true, offset: { x: 280, y: 30 } });
    // source line 92, bytecode pc 1394
    (height = ((150 + (60 * n)) + 50));
    // source line 94, bytecode pc 1432
    this.setContentSize(cc.size(680, height));
    // source line 96, bytecode pc 1434
    return true;
},
    onEnter: function() {
    // source line 99, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 102, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 105, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 106, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 110, bytecode pc 176
(xs.Views.DetailsListView.create = function(data) {
    var ret;
    // source line 111, bytecode pc 23
    (ret = new xs.Views.DetailsListView());
    if ((ret && ret.init(data))) {
        // source line 113, bytecode pc 59
        return ret;
    }
    // source line 115, bytecode pc 61
    return null;
});
// source line 229, bytecode pc 576
(xs.Views.DetailsListCell = cc.Layer.extend({
    ctor: function() {
    // source line 122, bytecode pc 12
    this._super();
    // source line 123, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [
        { tag: 2, type: "ls", id: "LS_jinengInf1", name: "m_acupointName_1" },
        { tag: 4, type: "ls", id: "LS_Lv", name: "m_acupointDetail_1" },
        { tag: 9, type: "ls", id: "LS_TiXing", name: "m_acupointInf" },
        { tag: 6, type: "ls", id: "LS_jinengInf1", name: "m_acupointName_2" },
        { tag: 8, type: "ls", id: "LS_Lv", name: "m_acupointDetail_2" }
    ],
    detailType: { gong: "1", fang: "2", xue: "3", zhi: "4" },
    init: function(data) {
    var willHaveIcon, detailIcon, str;
    if (!this._super()) {
        // source line 141, bytecode pc 19
        return false;
    }
    // source line 143, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 144, bytecode pc 35
    (this.m_acupointName_1 = null);
    // source line 145, bytecode pc 43
    (this.m_acupointDetail_1 = null);
    // source line 146, bytecode pc 51
    (this.m_acupointInf = null);
    // source line 147, bytecode pc 59
    (this.m_acupointName_2 = null);
    // source line 148, bytecode pc 67
    (this.m_acupointDetail_2 = null);
    // source line 151, bytecode pc 77
    (this.m_data = data);
    // source line 153, bytecode pc 114
    this.setContentSize(cc.size(680, 60));
    // source line 155, bytecode pc 165
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AcupointListCell, this));
    // source line 156, bytecode pc 207
    this.m_ccbNode.setContentSize(cc.size(680, 60));
    // source line 157, bytecode pc 250
    this.m_ccbNode.setAnchorPoint(cc.p(0, 0.5));
    // source line 158, bytecode pc 309
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: true });
    // source line 159, bytecode pc 352
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 163, bytecode pc 378
    (this.m_acupointIcon_1 = this.m_ccbNode.getChildByTag(1));
    // source line 164, bytecode pc 405
    (this.m_acupointIcon_2 = this.m_ccbNode.getChildByTag(5));
    // source line 166, bytecode pc 432
    (this.m_detailIcon_1 = this.m_ccbNode.getChildByTag(3));
    // source line 167, bytecode pc 459
    (this.m_detailIcon_2 = this.m_ccbNode.getChildByTag(7));
    if (!this.m_data.getMeridianState()) {
        // source line 171, bytecode pc 524
        (willHaveIcon = xs.Factorys.Sprite.create("jingmai_weizhi", "MeridiansMainScene"));
        // source line 172, bytecode pc 569
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_acupointIcon_1, willHaveIcon);
        // source line 173, bytecode pc 579
        (this.m_acupointIcon_1 = willHaveIcon);
    }
    // source line 176, bytecode pc 613
    (detailIcon = this.createDetailIcon(this.m_data.getMeridianBuffType()));
    // source line 177, bytecode pc 658
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_detailIcon_1, detailIcon);
    // source line 178, bytecode pc 668
    (this.m_detailIcon_1 = detailIcon);
    // source line 180, bytecode pc 719
    this.m_acupointName_1.setString(xs.Tools.String.createString("MeridiansMain_27"));
    // source line 181, bytecode pc 755
    this.m_acupointDetail_1.setString(this.m_data.getMeridianBuffValue());
    // source line 182, bytecode pc 818
    (str = xs.Tools.String.createStringWithArgsArray("MeridiansMain_19", [ this.m_data.getMeridianName() ]));
    // source line 183, bytecode pc 840
    this.m_acupointInf.setString(str);
    // source line 187, bytecode pc 860
    this.m_acupointName_2.setVisible(false);
    // source line 188, bytecode pc 880
    this.m_acupointDetail_2.setVisible(false);
    // source line 189, bytecode pc 900
    this.m_acupointIcon_2.setVisible(false);
    // source line 190, bytecode pc 920
    this.m_detailIcon_2.setVisible(false);
    // source line 195, bytecode pc 922
    return true;
},
    createDetailIcon: function(type) {
    var icon;
    // source line 198, bytecode pc 4
    (icon = null);
    // source line 199, bytecode pc 8
    switch (type) {
        case this.detailType.gong:
        // source line 202, bytecode pc 119
        (icon = xs.Factorys.Sprite.create("icon_atk1", "Cmn01"));
        break;
        case this.detailType.fang:
        // source line 207, bytecode pc 166
        (icon = xs.Factorys.Sprite.create("icon_def1", "Cmn01"));
        break;
        case this.detailType.xue:
        // source line 212, bytecode pc 213
        (icon = xs.Factorys.Sprite.create("icon_hp1", "Cmn01"));
        break;
        case this.detailType.zhi:
        // source line 217, bytecode pc 260
        (icon = xs.Factorys.Sprite.create("icon_int1", "Cmn01"));
        break;
        default:
        break;
    }
    // source line 221, bytecode pc 269
    return icon;
},
    onEnter: function() {
    // source line 224, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 227, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 230, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 231, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 235, bytecode pc 602
(xs.Views.DetailsListCell.create = function(data) {
    var ret;
    // source line 236, bytecode pc 23
    (ret = new xs.Views.DetailsListCell());
    if ((ret && ret.init(data))) {
        // source line 238, bytecode pc 59
        return ret;
    }
    // source line 240, bytecode pc 61
    return null;
});
