// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Goddess.js:1
// source line 281, bytecode pc 378
(xs.Models.Goddess = xs.Models.Card.extend({
    name: "xs.Models.Goddess",
    CfgDataType: xs.Constant_CfgDataType_Goddess,
    ResType: xs.Constant_ResType_General,
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.pk_id = 0);
    // source line 23, bytecode pc 35
    (this.id = 0);
    // source line 24, bytecode pc 43
    (this.resource_id = 0);
    // source line 25, bytecode pc 51
    (this.show_skin = 0);
    // source line 27, bytecode pc 63
    (this.skin_list = []);
    // source line 29, bytecode pc 71
    (this.is_fight = 0);
    // source line 33, bytecode pc 83
    (this.name = "");
    // source line 34, bytecode pc 95
    (this.desc = "");
    // source line 35, bytecode pc 103
    (this.show_fighting = 0);
    // source line 36, bytecode pc 111
    (this.fighting = 0);
    // source line 38, bytecode pc 123
    (this.buff = []);
    // source line 40, bytecode pc 125
    return true;
},
    loadJson: function(json) {
    // source line 46, bytecode pc 16
    (json.id = json.godness_id);
    // source line 47, bytecode pc 33
    this._super(json);
    // source line 49, bytecode pc 48
    (this.pk_id = json.pk_id);
    // source line 50, bytecode pc 63
    (this.id = json.godness_id);
    // source line 51, bytecode pc 78
    (this.resource_id = json.resource_id);
    // source line 52, bytecode pc 93
    (this.show_skin = json.show_skin);
    // source line 54, bytecode pc 108
    (this.skin_list = json.skin_list);
    // source line 56, bytecode pc 123
    (this.is_fight = json.is_fight);
    // source line 57, bytecode pc 138
    (this.godness_fate_id = json.godness_fate_id);
    // source line 58, bytecode pc 170
    xs.log_zhz("godness_fate_id", json.godness_fate_id);
    // source line 59, bytecode pc 183
    this.getBaseDataRef();
},
    createHeadView: function(viewCfg) {
    var _ret;
    if ((this.CfgDataType == xs.Constant_CfgDataType_Goddess)) {
        // source line 64, bytecode pc 38
        return this.createIcon_Grade(viewCfg);
    } else {
        if ((this.CfgDataType == xs.Constant_CfgDataType_GoddessSurface)) {
            // source line 72, bytecode pc 123
            (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, surface: true }, viewCfg));
            // source line 74, bytecode pc 140
            _ret.reloadData(this);
            // source line 75, bytecode pc 144
            return _ret;
        } else {
            // source line 77, bytecode pc 172
            xs.warn("createCardView no cfg type");
        }
    }
},
    createHeadView_General_Equ_Skill: function() {
    // source line 85, bytecode pc 39
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this, xs.Const_Item_Style_Goddess);
},
    getBaseDataRef: function() {
    var mdataObj, mGoddessId, mBaseDataRef;
    // source line 93, bytecode pc 36
    xs.assert(this.id, "need id", this.name);
    if ((this.CfgDataType == xs.Constant_CfgDataType_Goddess)) {
        if (!this.baseDataRef) {
            // source line 99, bytecode pc 117
            (this.baseDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(this.CfgDataType, this.id));
        }
    } else {
        if ((this.CfgDataType == xs.Constant_CfgDataType_GoddessSurface)) {
            if (!this.baseDataRef) {
                // source line 104, bytecode pc 179
                (mdataObj = this._getGoddessId(this.id));
                // source line 105, bytecode pc 191
                (mGoddessId = mdataObj.goddessId);
                // source line 108, bytecode pc 236
                (mBaseDataRef = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Goddess, mGoddessId));
                // source line 110, bytecode pc 257
                (this.baseDataRef = mBaseDataRef.Clone());
                // source line 112, bytecode pc 282
                (this.baseDataRef.resource_id = mdataObj.surfaceCfg.resource_id);
                // source line 113, bytecode pc 292
                (this.id = mGoddessId);
            }
        } else {
            // source line 116, bytecode pc 320
            xs.warn("createCardView no cfg type");
        }
    }
    // source line 118, bytecode pc 340
    this.readCfgData(this.baseDataRef);
    // source line 120, bytecode pc 347
    return this.baseDataRef;
},
    _getGoddessId: function(mSurfaceId) {
    var mGoddessId, surfaceCfg, mGoddess, mSurface;
    // source line 126, bytecode pc 8
    (mGoddessId = "");
    // source line 127, bytecode pc 32
    (surfaceCfg = xs.Cfg.System.sgs_godness_skin);
    for (var mGoddess in surfaceCfg) {
        if (!((typeof(surfaceCfg[mGoddess]) != "function"))) continue;
        for (var mSurface in surfaceCfg[mGoddess]) {
            if (!((mSurface == mSurfaceId))) continue;
            /* TODO_BYTECODE pc=130 opcode=setrval reason=control_or_scope_semantics_not_structured */
            /* TODO_BYTECODE pc=131 opcode=enditer reason=control_or_scope_semantics_not_structured */
            /* TODO_BYTECODE pc=132 opcode=enditer reason=control_or_scope_semantics_not_structured */
        }
    }
    // source line 141, bytecode pc 174
    xs.assert(false, "no find mSurfaceId");
    // source line 142, bytecode pc 176
    return null;
},
    getGrade: function() {
    // source line 146, bytecode pc 1
    return 1;
},
    getPkId: function() {
    // source line 150, bytecode pc 6
    return this.pk_id;
},
    getId: function() {
    // source line 153, bytecode pc 6
    return this.id;
},
    getResourceId: function() {
    // source line 156, bytecode pc 6
    return this.resource_id;
},
    getShowSkin: function() {
    // source line 160, bytecode pc 6
    return this.show_skin;
},
    getSkinList: function() {
    // source line 164, bytecode pc 6
    return this.skin_list;
},
    getNextSkinID: function() {
    var skinList, showId, skinListLength, i, next;
    // source line 167, bytecode pc 4
    (skinList = null);
    // source line 168, bytecode pc 20
    (skinList = this.getSkinList());
    // source line 169, bytecode pc 41
    skinList.push("0");
    // source line 171, bytecode pc 57
    (showId = this.getShowSkin());
    // source line 172, bytecode pc 69
    (skinListLength = skinList.length);
    // source line 173, bytecode pc 74
    (i = 0);
    while ((i < skinListLength)) {
        if ((skinList[i] == showId)) {
            // source line 176, bytecode pc 105
            (next = (i + 1));
            if ((next >= skinListLength)) {
                // source line 178, bytecode pc 123
                return skinList[0];
            } else {
                // source line 180, bytecode pc 136
                return skinList[next];
            }
        }
        // source line 173, bytecode pc 150
        (i = (+i + 1));
    }
},
    getBigFighting: function() {
    // source line 187, bytecode pc 28
    return xs.Utils.parseIntSafe(this.show_fighting);
},
    getSmallFighting: function() {
    // source line 190, bytecode pc 28
    return xs.Utils.parseIntSafe(this.fighting);
},
    getBuffList: function() {
    // source line 193, bytecode pc 17
    return this.getBaseDataRef().buff;
},
    getIsFight: function() {
    // source line 198, bytecode pc 28
    return xs.Utils.parseIntSafe(this.is_fight);
},
    getDescString: function() {
    // source line 201, bytecode pc 33
    return xs.Tools.String.createString(this.desc);
},
    getNameString: function() {
    // source line 204, bytecode pc 33
    return xs.Tools.String.createString(this.name);
},
    getFates: function() {
    var _fatesCfg, i, _fate;
    // source line 211, bytecode pc 11
    (this._fates = []);
    // source line 212, bytecode pc 43
    (_fatesCfg = (this.getBaseDataRef().godness_fate_id || []));
    // source line 213, bytecode pc 48
    (i = 0);
    while ((i < _fatesCfg.length)) {
        // source line 214, bytecode pc 92
        (_fate = xs.Models.GoddessFate.createWithBase(_fatesCfg[i]));
        // source line 215, bytecode pc 114
        this._fates.push(_fate);
        // source line 213, bytecode pc 127
        (i = (+i + 1));
    }
    // source line 218, bytecode pc 152
    return this._fates;
},
    createCardAndName: function() {
    var spriteBg, labelName, spriteCountry;
    // source line 222, bytecode pc 37
    (spriteBg = xs.Tools.Card.createPartView_Goddess(this, "v3_card1"));
    // source line 226, bytecode pc 75
    (labelName = xs.Tools.Card.createPartView_Goddess(this, "name"));
    // source line 227, bytecode pc 112
    labelName.setAligns(xs.AlignH_Center, xs.AlignV_Bottom);
    // source line 228, bytecode pc 129
    labelName.setCascadeOpacityEnabled(true);
    // source line 233, bytecode pc 209
    xs.Utils.Node.attachNodes(spriteBg, labelName, { base: "c", offset: { x: -113, y: -145 } });
    // source line 238, bytecode pc 247
    (spriteCountry = xs.Tools.Card.createPartView_Goddess(this, "icon_country"));
    // source line 239, bytecode pc 273
    spriteCountry.setAnchorPoint(xs.ap_c);
    // source line 240, bytecode pc 290
    spriteCountry.setCascadeOpacityEnabled(true);
    // source line 245, bytecode pc 368
    xs.Utils.Node.attachNodes(spriteBg, spriteCountry, { base: "c", offset: { x: -120, y: 181 } });
    // source line 249, bytecode pc 372
    return spriteBg;
},
    createGoddessBigPic: function() {
    var goddessPic, resourceModel;
    // source line 253, bytecode pc 4
    (goddessPic = null);
    if ((this.show_skin == 0)) {
        // source line 255, bytecode pc 61
        (resourceModel = xs.Models.Resource.createWithBase(this.resource_id, this.ResType));
        // source line 256, bytecode pc 79
        (goddessPic = resourceModel.createOriginalSprite_Foot());
    } else {
        // source line 259, bytecode pc 128
        (resourceModel = xs.Models.Resource.createWithBase(this.show_skin, this.ResType));
        // source line 260, bytecode pc 146
        (goddessPic = resourceModel.createOriginalSprite_Foot());
    }
    // source line 263, bytecode pc 150
    return goddessPic;
},
    createIconAndName: function(viewCfg) {
    var _ret;
    // source line 271, bytecode pc 51
    (_ret = xs.Views.Icon.IconStyleA.create({ name: true }, viewCfg));
    // source line 273, bytecode pc 68
    _ret.reloadData(this);
    // source line 274, bytecode pc 72
    return _ret;
},
    createPartView: function(partName) {
    // source line 278, bytecode pc 32
    return xs.Tools.Card.createPartView_Goddess(this, partName);
},
    readCfgData: function(baseDataRef) {
    // source line 283, bytecode pc 14
    (this.name = baseDataRef.name);
    // source line 284, bytecode pc 29
    (this.desc = baseDataRef.desc);
    // source line 285, bytecode pc 44
    (this.resource_id = baseDataRef.resource_id);
    // source line 286, bytecode pc 66
    (this.show_fighting = (baseDataRef.show_fighting || 0));
    // source line 287, bytecode pc 88
    (this.fighting = (baseDataRef.fighting || 0));
    // source line 288, bytecode pc 114
    (this.buff = (baseDataRef.buff || []));
}
}));
// source line 293, bytecode pc 404
(xs.Models.Goddess.createWithBase = function(id) {
    var card;
    // source line 294, bytecode pc 23
    (card = new xs.Models.Goddess());
    if ((card && card.init())) {
        // source line 297, bytecode pc 70
        card.readBaseData(id);
        // source line 299, bytecode pc 74
        return card;
    }
    // source line 301, bytecode pc 97
    xs.warn("xs.Models.Goddess.createWithBase");
    // source line 302, bytecode pc 99
    return null;
});
// source line 306, bytecode pc 430
(xs.Models.Goddess.createWithBaseSurface = function(id) {
    var card;
    // source line 307, bytecode pc 23
    (card = new xs.Models.Goddess());
    if ((card && card.init())) {
        // source line 310, bytecode pc 70
        (card.CfgDataType = xs.Constant_CfgDataType_GoddessSurface);
        // source line 311, bytecode pc 89
        card.readBaseData(id);
        // source line 313, bytecode pc 93
        return card;
    }
    // source line 315, bytecode pc 116
    xs.warn("xs.Models.Goddess.createWithBaseSurface");
    // source line 316, bytecode pc 118
    return null;
});
// source line 320, bytecode pc 456
(xs.Models.Goddess.createWithJson = function(json) {
    var goddess;
    // source line 321, bytecode pc 23
    (goddess = new xs.Models.Goddess());
    if ((goddess && goddess.init())) {
        // source line 323, bytecode pc 70
        goddess.loadJson(json);
        // source line 324, bytecode pc 74
        return goddess;
    }
    // source line 326, bytecode pc 97
    xs.warn("xs.Models.Goddess.createWithJson");
    // source line 327, bytecode pc 99
    return null;
});
