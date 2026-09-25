// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Style/headers.js:1
// source line 5, bytecode pc 20
(xs.Models.Style = function(jsonStyle) {
    // source line 8, bytecode pc 14
    (this.m_style_id = jsonStyle.style_id);
    // source line 9, bytecode pc 29
    (this.m_style_desc = jsonStyle.style_desc);
    // source line 10, bytecode pc 55
    (this.m_style_name = (jsonStyle.style_name || ""));
    // source line 12, bytecode pc 67
    (this.getStyleId = function() {
    // source line 13, bytecode pc 21
    return parseInt(this.m_style_id);
});
    // source line 16, bytecode pc 79
    (this.getStyleDesc = function() {
    // source line 17, bytecode pc 6
    return this.m_style_desc;
});
    // source line 20, bytecode pc 91
    (this.createView_Head = function() {
    var _model;
    // source line 21, bytecode pc 15
    (_model = this.createStyleModel());
    // source line 22, bytecode pc 59
    return xs.Tools.Card.createHeadView(_model, this.getStyleId());
});
    // source line 25, bytecode pc 103
    (this.createView_HeadAndName = function() {
    var _model, mHead, _ret;
    // source line 26, bytecode pc 15
    (_model = this.createStyleModel());
    // source line 27, bytecode pc 33
    (mHead = _model.createIcon_Grade());
    // source line 28, bytecode pc 69
    (_ret = xs.Factorys.Label.createByStyleId("LS_daojuName"));
    if ((this.m_style_name != "")) {
        // source line 30, bytecode pc 108
        _ret.setString(this.m_style_name);
    } else {
        // source line 32, bytecode pc 176
        _ret.setString((_model.getNameString() + xs.Tools.String.createString("str_Vip_Gift")));
    }
    // source line 34, bytecode pc 252
    xs.Utils.Node.attachNodes(mHead, _ret, { base: "c", offset: { x: 0, y: -60 } });
    // source line 36, bytecode pc 256
    return mHead;
});
    // source line 39, bytecode pc 115
    (this.createStyleModel = function() {
    var _model;
    // source line 42, bytecode pc 16
    switch (this.getStyleId()) {
        case xs.Const_Item_Style_General:
        // source line 44, bytecode pc 169
        (_model = xs.Models.General.createWithBase(this.getStyleDesc()));
        break;
        case xs.Const_Item_Style_Equ:
        // source line 47, bytecode pc 217
        (_model = xs.Models.Equipment.createWithBase(this.getStyleDesc()));
        break;
        case xs.Const_Item_Style_Skill:
        // source line 50, bytecode pc 265
        (_model = xs.Models.Skill.createWithBase(this.getStyleDesc()));
        break;
        case xs.Const_Item_Style_Item:
        // source line 53, bytecode pc 313
        (_model = xs.Models.Item.createWithBase(this.getStyleDesc()));
        break;
        case xs.Const_Item_Style_GeneralSoul:
        // source line 56, bytecode pc 361
        (_model = xs.Models.GeneralSoul.createWithBase(this.getStyleDesc()));
        break;
        case xs.Const_Item_Style_SkillPiece:
        // source line 59, bytecode pc 409
        (_model = xs.Models.SkillPiece.createWithBase(this.getStyleDesc()));
        break;
        case xs.Const_Item_Style_EquPiece:
        // source line 62, bytecode pc 457
        (_model = xs.Models.EquipmentPiece.createWithBase(this.getStyleDesc()));
        break;
        default:
        // source line 65, bytecode pc 498
        xs.error("getStyleId error", this.getStyleId());
        break;
    }
    // source line 69, bytecode pc 507
    return _model;
});
});
