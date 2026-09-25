// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AutoPracticeResultDialog.js:1
// source line 137, bytecode pc 143
(xs.Views.Dialog.AutoPracticeResultDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.AutoPracticeResultDialog",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(params) {
    var yuanbao, ganoderma, _pk_id, cultivate_info, new_yuanbao, new_ganoderma, atk_attr, def_attr, hp_attr, int_attr;
    // source line 14, bytecode pc 11
    (yuanbao = params.yuanbao);
    // source line 15, bytecode pc 23
    (ganoderma = params.ganoderma);
    // source line 16, bytecode pc 35
    (_pk_id = params.pkId);
    // source line 17, bytecode pc 47
    (cultivate_info = params.cultivate_info);
    // source line 19, bytecode pc 62
    (this.cultivate_num = cultivate_info.cultivate_num);
    // source line 20, bytecode pc 77
    (this.cultivate_attr = cultivate_info.cultivate_attr);
    // source line 22, bytecode pc 111
    (this.ccbNode = xs.ccb_reader.load("ccb3/AutoPracticeResult.ccbi"));
    // source line 23, bytecode pc 158
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 24, bytecode pc 242
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: cc.p(0, 0), sc: true });
    // source line 26, bytecode pc 250
    (this.m_confirmBtn = null);
    // source line 28, bytecode pc 258
    (this.m_result_GanodermaLabel = null);
    // source line 29, bytecode pc 266
    (this.m_result_PriceLabel = null);
    // source line 31, bytecode pc 274
    (this.m_result_count = null);
    // source line 32, bytecode pc 282
    (this.m_result_cost = null);
    // source line 34, bytecode pc 290
    (this.m_result_Atk_total = null);
    // source line 35, bytecode pc 298
    (this.m_result_Def_total = null);
    // source line 36, bytecode pc 306
    (this.m_result_Hp_total = null);
    // source line 37, bytecode pc 314
    (this.m_result_Inf_total = null);
    // source line 39, bytecode pc 322
    (this.m_result_Atk = null);
    // source line 40, bytecode pc 330
    (this.m_result_Def = null);
    // source line 41, bytecode pc 338
    (this.m_result_Hp = null);
    // source line 42, bytecode pc 346
    (this.m_result_Inf = null);
    // source line 44, bytecode pc 354
    (this.m_result_Atk_up = null);
    // source line 45, bytecode pc 362
    (this.m_result_Def_up = null);
    // source line 46, bytecode pc 370
    (this.m_result_Hp_up = null);
    // source line 47, bytecode pc 378
    (this.m_result_Inf_up = null);
    // source line 49, bytecode pc 386
    (this.m_result_Atk_down = null);
    // source line 50, bytecode pc 394
    (this.m_result_Def_down = null);
    // source line 51, bytecode pc 402
    (this.m_result_Hp_down = null);
    // source line 52, bytecode pc 410
    (this.m_result_Inf_down = null);
    // source line 53, bytecode pc 477
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, xs.Views.Dialog.AutoPracticeResultDialog.cfg.ccbCfg, this);
    // source line 54, bytecode pc 501
    this.m_confirmBtn.setOnClickCallBack(function() {
    // source line 55, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 58, bytecode pc 521
    this.setPracticeCount(this.cultivate_num);
    // source line 59, bytecode pc 583
    (new_yuanbao = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
    // source line 60, bytecode pc 634
    (new_ganoderma = xs.Profile.GameData.Mgr.getInstance().Items.getGanodermaNum());
    // source line 61, bytecode pc 663
    this.setResultCost((ganoderma - new_ganoderma), (yuanbao - new_yuanbao));
    // source line 63, bytecode pc 697
    (atk_attr = this.getCultivate_Attr(this.cultivate_attr, xs.Constant_AttrType_Atk));
    // source line 64, bytecode pc 731
    (def_attr = this.getCultivate_Attr(this.cultivate_attr, xs.Constant_AttrType_Def));
    // source line 65, bytecode pc 765
    (hp_attr = this.getCultivate_Attr(this.cultivate_attr, xs.Constant_AttrType_Hp));
    // source line 66, bytecode pc 799
    (int_attr = this.getCultivate_Attr(this.cultivate_attr, xs.Constant_AttrType_Int));
    // source line 71, bytecode pc 857
    (this.generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(_pk_id));
    // source line 72, bytecode pc 931
    this.setUpDownVisible(xs.Constant_AttrType_Atk, this.generalModel.getAttrNaked(xs.Constant_AttrType_Atk), this.getUpDownByAttr(atk_attr), atk_attr);
    // source line 73, bytecode pc 1005
    this.setUpDownVisible(xs.Constant_AttrType_Def, this.generalModel.getAttrNaked(xs.Constant_AttrType_Def), this.getUpDownByAttr(def_attr), def_attr);
    // source line 74, bytecode pc 1079
    this.setUpDownVisible(xs.Constant_AttrType_Hp, this.generalModel.getAttrNaked(xs.Constant_AttrType_Hp), this.getUpDownByAttr(hp_attr), hp_attr);
    // source line 75, bytecode pc 1153
    this.setUpDownVisible(xs.Constant_AttrType_Int, this.generalModel.getAttrNaked(xs.Constant_AttrType_Int), this.getUpDownByAttr(int_attr), int_attr);
    // source line 77, bytecode pc 1155
    return true;
},
    getCultivate_Attr: function(cultivate_attr, attrType) {
    var i;
    for (var i in xs.Utils.clone(cultivate_attr)) {
        // source line 83, bytecode pc 41
        switch (attrType) {
            case xs.Constant_AttrType_Atk:
            if ((cultivate_attr[i].field == "attr_attack")) {
                // source line 86, bytecode pc 142
                return cultivate_attr[i].val;
            }
            break;
            case xs.Constant_AttrType_Def:
            if ((cultivate_attr[i].field == "attr_defense")) {
                // source line 90, bytecode pc 185
                return cultivate_attr[i].val;
            }
            break;
            case xs.Constant_AttrType_Hp:
            if ((cultivate_attr[i].field == "attr_hp")) {
                // source line 94, bytecode pc 228
                return cultivate_attr[i].val;
            }
            break;
            case xs.Constant_AttrType_Int:
            if ((cultivate_attr[i].field == "attr_wisdom")) {
                // source line 98, bytecode pc 271
                return cultivate_attr[i].val;
            }
            break;
            default:
            break;
        }
    }
},
    getUpDownByAttr: function(param) {
    if ((param > 0)) {
        // source line 107, bytecode pc 11
        return true;
    } else {
        if ((param < 0)) {
            // source line 109, bytecode pc 28
            return false;
        }
    }
},
    setPracticeCount: function(count) {
    // source line 114, bytecode pc 63
    this.m_result_count.setString(xs.Tools.String.createStringWithArgsArray("AutoPractice_str_result_count", [ count ]));
},
    setResultCost: function(cost_ganoderma, cost_yuanbao) {
    // source line 118, bytecode pc 27
    this.m_result_PriceLabel.setString(("X" + cost_yuanbao));
    // source line 119, bytecode pc 55
    this.m_result_GanodermaLabel.setString(("X" + cost_ganoderma));
},
    setUpDownVisible: function(tag, total, up, upDownNum) {
    var total_tag, updown_tag, upDownNum_tag;
    // source line 123, bytecode pc 24
    (total_tag = (10 + parseInt(tag)));
    // source line 124, bytecode pc 61
    this.ccbNode.getChildByTag(total_tag).setString(total);
    if (up) {
        // source line 126, bytecode pc 99
        (updown_tag = ((100 + (parseInt(tag) * 10)) + 1));
    } else {
        // source line 128, bytecode pc 135
        (updown_tag = ((100 + (parseInt(tag) * 10)) + 2));
    }
    // source line 130, bytecode pc 170
    this.ccbNode.getChildByTag(updown_tag).setVisible(true);
    // source line 131, bytecode pc 198
    (upDownNum_tag = (100 + (parseInt(tag) * 10)));
    // source line 134, bytecode pc 235
    this.ccbNode.getChildByTag(upDownNum_tag).setString(upDownNum);
},
    setBaseTouchPriority: function(priority) {
    // source line 138, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 139, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 141, bytecode pc 56
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 177, bytecode pc 1096
(xs.Views.Dialog.AutoPracticeResultDialog.cfg = {
    ccbCfg: [
        { tag: 999, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" },
        { tag: 101, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "AutoPractice_str_result" },
        {
            tag: 102,
            type: "ls",
            name: "m_result_count",
            id: "LS_popUI2",
            stringId: "AutoPractice_str_result_count"
        },
        {
            tag: 103,
            type: "ls",
            name: "m_result_cost",
            id: "LS_popUI2",
            stringId: "AutoPractice_str_result_cost"
        },
        { tag: 104, type: "ls", name: "m_result_GanodermaLabel", id: "LS_liebiaoInf2" },
        { tag: 105, type: "ls", name: "m_result_PriceLabel", id: "LS_liebiaoInf2" },
        { tag: 11, type: "ls", name: "m_result_Atk_total", id: "LS_mainUI4" },
        { tag: 12, type: "ls", name: "m_result_Def_total", id: "LS_mainUI4" },
        { tag: 13, type: "ls", name: "m_result_Hp_total", id: "LS_mainUI4" },
        { tag: 14, type: "ls", name: "m_result_Inf_total", id: "LS_mainUI4" },
        { tag: 110, type: "ls", name: "m_result_Atk", id: "LS_mainUI4" },
        { tag: 120, type: "ls", name: "m_result_Def", id: "LS_mainUI4" },
        { tag: 130, type: "ls", name: "m_result_Hp", id: "LS_mainUI4" },
        { tag: 140, type: "ls", name: "m_result_Inf", id: "LS_mainUI4" },
        { tag: 111, name: "m_result_Atk_up" },
        { tag: 121, name: "m_result_Def_up" },
        { tag: 131, name: "m_result_Hp_up" },
        { tag: 141, name: "m_result_Inf_up" },
        { tag: 112, name: "m_result_Atk_down" },
        { tag: 122, name: "m_result_Def_down" },
        { tag: 132, name: "m_result_Hp_down" },
        { tag: 142, name: "m_result_Inf_down" }
    ]
});
// source line 182, bytecode pc 1127
(xs.Views.Dialog.AutoPracticeResultDialog.create = function(params) {
    var layer;
    // source line 183, bytecode pc 28
    (layer = new xs.Views.Dialog.AutoPracticeResultDialog());
    if ((layer && layer.init(params))) {
        // source line 185, bytecode pc 64
        return layer;
    }
    // source line 187, bytecode pc 66
    return null;
});
// source line 191, bytecode pc 1207
xs.Views.Mgr.registerDialog("AutoPracticeResultDialog", { "class": xs.Views.Dialog.AutoPracticeResultDialog, styleType: xs.Constant_DlgStyleType_Small });
