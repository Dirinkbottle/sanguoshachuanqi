// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/MeridianPoint.js:1
// source line 196, bytecode pc 299
(xs.Models.MeridianPoint = xs.Models.Base.extend({
    name: "xs.Models.MeridianPoint",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    detailType: { gong: "1", fang: "2", xue: "3", zhi: "4" },
    init: function() {
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 31
    (this.m_meridianTop = "1");
    // source line 23, bytecode pc 43
    (this.m_meridian = "1");
    // source line 24, bytecode pc 55
    (this.m_meridianPoint = "1");
    // source line 27, bytecode pc 99
    (this.m_meridianPointCfg = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_MeridianPoint));
    // source line 29, bytecode pc 111
    (this.m_meridianPointName = "");
    // source line 30, bytecode pc 123
    (this.m_meridianPointBuffType = "1");
    // source line 31, bytecode pc 135
    (this.m_meridianPointBuffValue = "0");
    // source line 32, bytecode pc 147
    (this.m_mailiItemNum = "0");
    // source line 35, bytecode pc 155
    (this.m_meridianPointIsOpen = false);
    // source line 37, bytecode pc 157
    return true;
},
    loadJson: function(json) {
    var _data;
    // source line 40, bytecode pc 25
    (this.m_meridianTop = (json.meridianTop || "1"));
    // source line 41, bytecode pc 51
    (this.m_meridian = (json.meridian || "1"));
    // source line 42, bytecode pc 77
    (this.m_meridianPoint = (json.meridianPoint || "1"));
    if (!xs.Utils.isEmpty(this.m_meridianPointCfg)) {
        if (!xs.Utils.isEmpty(this.m_meridianPointCfg[this.m_meridianTop][this.m_meridian][this.m_meridianPoint])) {
            // source line 47, bytecode pc 197
            (_data = this.m_meridianPointCfg[this.m_meridianTop][this.m_meridian][this.m_meridianPoint]);
            // source line 49, bytecode pc 223
            (this.m_meridianPointName = (_data.point_name || ""));
            // source line 50, bytecode pc 249
            (this.m_meridianPointBuffType = (_data.buff_type || "1"));
            // source line 51, bytecode pc 275
            (this.m_meridianPointBuffValue = (_data.buff_value || "0"));
            // source line 52, bytecode pc 301
            (this.m_mailiItemNum = (_data.item_num || "0"));
        }
    }
},
    setMeridianPointState: function(state) {
    // source line 57, bytecode pc 9
    (this.m_meridianPointIsOpen = state);
},
    getMeridianPointState: function() {
    // source line 60, bytecode pc 6
    return this.m_meridianPointIsOpen;
},
    getMeridianPointName: function() {
    if (xs.Utils.isEmpty(this.m_meridianPointName)) {
        // source line 64, bytecode pc 39
        return this.m_meridianPointName;
    } else {
        // source line 66, bytecode pc 78
        return xs.Tools.String.createString(this.m_meridianPointName);
    }
},
    getMeridianPointBuffType: function() {
    // source line 70, bytecode pc 6
    return this.m_meridianPointBuffType;
},
    getMeridianPointBuffValueNum: function() {
    // source line 73, bytecode pc 21
    return parseInt(this.m_meridianPointBuffValue);
},
    getMeridianPointBuffValue: function() {
    // source line 76, bytecode pc 12
    return ("+" + this.m_meridianPointBuffValue);
},
    getMeridianPointMaiLiItemNum: function() {
    // source line 79, bytecode pc 6
    return this.m_mailiItemNum;
},
    getMeridianPointBuffValueIcon: function() {
    // source line 82, bytecode pc 19
    return this.createDetailIcon(this.m_meridianPointBuffType);
},
    getLastData: function(meridianTop, meridian, meridianPoint) {
    var _meridianPoint, _meridian, _meridianTop;
    // source line 85, bytecode pc 8
    (_meridianPoint = (meridianPoint - 1));
    if ((_meridianPoint == 0)) {
        // source line 87, bytecode pc 27
        (_meridian = (meridian - 1));
        if ((_meridian == 0)) {
            // source line 89, bytecode pc 46
            (_meridianTop = (meridianTop - 1));
            if ((_meridianTop == 0)) {
                // source line 94, bytecode pc 81
                return { meridianTop: 1, meridian: 1, meridianPoint: 1 }
            } else {
                // source line 101, bytecode pc 115
                return { meridianTop: _meridianTop, meridian: 8, meridianPoint: 30 }
            }
        } else {
            // source line 109, bytecode pc 150
            return { meridianTop: meridianTop, meridian: _meridian, meridianPoint: 30 }
        }
    } else {
        // source line 119, bytecode pc 186
        return { meridianTop: meridianTop, meridian: meridian, meridianPoint: _meridianPoint }
    }
},
    getNextData: function(meridianTop, meridian, meridianPoint) {
    var _meridianPoint, _meridian, _meridianTop;
    // source line 124, bytecode pc 8
    (_meridianPoint = (meridianPoint + 1));
    if ((_meridianPoint == 31)) {
        // source line 126, bytecode pc 28
        (_meridian = (meridian + 1));
        if ((_meridian == 9)) {
            // source line 128, bytecode pc 48
            (_meridianTop = (meridianTop + 1));
            if ((_meridianTop == 9)) {
                // source line 133, bytecode pc 87
                return { meridianTop: 8, meridian: 8, meridianPoint: 30 }
            } else {
                // source line 140, bytecode pc 119
                return { meridianTop: _meridianTop, meridian: 1, meridianPoint: 1 }
            }
        } else {
            // source line 148, bytecode pc 153
            return { meridianTop: meridianTop, meridian: _meridian, meridianPoint: 1 }
        }
    } else {
        // source line 158, bytecode pc 189
        return { meridianTop: meridianTop, meridian: meridian, meridianPoint: _meridianPoint }
    }
},
    getLastMeridianPointName: function() {
    var _data, _cfg;
    if (((this.m_meridianPoint == "1") && ((this.m_meridian == "1") && (this.m_meridianTop == "1")))) {
        // source line 165, bytecode pc 58
        return "";
    } else {
        // source line 168, bytecode pc 145
        (_data = this.getLastData(parseInt(this.m_meridianTop), parseInt(this.m_meridian), parseInt(this.m_meridianPoint)));
        // source line 169, bytecode pc 215
        (_cfg = this.m_meridianPointCfg[_data.meridianTop.toString()][_data.meridian.toString()][_data.meridianPoint.toString()]);
        if (!xs.Utils.isEmpty(_cfg.point_name)) {
            // source line 172, bytecode pc 287
            return xs.Tools.String.createString(_cfg.point_name);
        } else {
            // source line 174, bytecode pc 298
            return "";
        }
    }
},
    getNextMeridianPointName: function() {
    var _data, _cfg;
    if (((this.m_meridianPoint == "30") && ((this.m_meridian == "8") && (this.m_meridianTop == "8")))) {
        // source line 181, bytecode pc 58
        return "";
    } else {
        // source line 184, bytecode pc 145
        (_data = this.getNextData(parseInt(this.m_meridianTop), parseInt(this.m_meridian), parseInt(this.m_meridianPoint)));
        // source line 186, bytecode pc 215
        (_cfg = this.m_meridianPointCfg[_data.meridianTop.toString()][_data.meridian.toString()][_data.meridianPoint.toString()]);
        if (!xs.Utils.isEmpty(_cfg.point_name)) {
            // source line 189, bytecode pc 287
            return xs.Tools.String.createString(_cfg.point_name);
        } else {
            // source line 191, bytecode pc 298
            return "";
        }
    }
},
    createDetailIcon: function(type) {
    var icon;
    // source line 197, bytecode pc 4
    (icon = null);
    // source line 198, bytecode pc 8
    switch (type) {
        case this.detailType.gong:
        // source line 201, bytecode pc 119
        (icon = xs.Factorys.Sprite.create("icon_atk1", "Cmn01"));
        break;
        case this.detailType.fang:
        // source line 206, bytecode pc 166
        (icon = xs.Factorys.Sprite.create("icon_def1", "Cmn01"));
        break;
        case this.detailType.xue:
        // source line 211, bytecode pc 213
        (icon = xs.Factorys.Sprite.create("icon_hp1", "Cmn01"));
        break;
        case this.detailType.zhi:
        // source line 216, bytecode pc 260
        (icon = xs.Factorys.Sprite.create("icon_int1", "Cmn01"));
        break;
        default:
        break;
    }
    // source line 220, bytecode pc 269
    return icon;
}
}));
// source line 224, bytecode pc 325
(xs.Models.MeridianPoint.createWithJson = function(json) {
    var card;
    // source line 225, bytecode pc 23
    (card = new xs.Models.MeridianPoint());
    if ((card && card.init())) {
        // source line 227, bytecode pc 70
        card.loadJson(json);
        // source line 228, bytecode pc 74
        return card;
    }
    // source line 230, bytecode pc 97
    xs.warn("xs.Models.MeridianPoint.createWithJson");
    // source line 231, bytecode pc 99
    return null;
});
