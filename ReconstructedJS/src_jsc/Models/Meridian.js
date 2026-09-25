// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Meridian.js:1
// source line 121, bytecode pc 218
(xs.Models.Meridian = xs.Models.Base.extend({
    name: "xs.Models.Meridian",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 31
    (this.m_meridianTop = "1");
    // source line 19, bytecode pc 43
    (this.m_meridian = "1");
    // source line 20, bytecode pc 55
    (this.m_meridianPoint = "1");
    // source line 21, bytecode pc 63
    (this.m_isHeightest = false);
    // source line 24, bytecode pc 107
    (this.m_meridianCfg = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Meridian));
    // source line 26, bytecode pc 119
    (this.m_meridianName = "");
    // source line 27, bytecode pc 131
    (this.m_meridianBuffType = "1");
    // source line 28, bytecode pc 143
    (this.m_meridianBuffValue = "0");
    // source line 29, bytecode pc 155
    (this.m_meridianValueType = "1");
    // source line 30, bytecode pc 163
    (this.m_meridianIsOpen = false);
    // source line 32, bytecode pc 165
    return true;
},
    loadJson: function(json) {
    var _data;
    // source line 35, bytecode pc 25
    (this.m_meridianTop = (json.meridianTop || "1"));
    // source line 36, bytecode pc 51
    (this.m_meridian = (json.meridian || "1"));
    // source line 37, bytecode pc 77
    (this.m_meridianPoint = (json.meridianPoint || "1"));
    // source line 39, bytecode pc 99
    (this.m_isHeightest = (json.isHeightest || false));
    if (!xs.Utils.isEmpty(this.m_meridianCfg)) {
        if (!xs.Utils.isEmpty(this.m_meridianCfg[this.m_meridianTop][this.m_meridian])) {
            // source line 43, bytecode pc 205
            (_data = this.m_meridianCfg[this.m_meridianTop][this.m_meridian]);
            // source line 45, bytecode pc 231
            (this.m_meridianName = (_data.meridian_name || ""));
            // source line 46, bytecode pc 257
            (this.m_meridianBuffType = (_data.buff_type || "1"));
            // source line 47, bytecode pc 283
            (this.m_meridianBuffValue = (_data.buff_value || "0"));
            // source line 48, bytecode pc 309
            (this.m_meridianValueType = (_data.value_type || "1"));
        }
    }
},
    getAllMeridianPointModels: function() {
    var data, i, pointModel;
    // source line 56, bytecode pc 8
    (data = []);
    // source line 58, bytecode pc 13
    (i = 1);
    while ((i <= 30)) {
        // source line 63, bytecode pc 86
        (pointModel = xs.Models.MeridianPoint.createWithJson({ meridianTop: this.m_meridianTop, meridian: this.m_meridian, meridianPoint: i }));
        if (this.m_meridianIsOpen) {
            // source line 67, bytecode pc 114
            pointModel.setMeridianPointState(true);
        } else {
            if ((i < this.m_meridianPoint)) {
                // source line 70, bytecode pc 151
                pointModel.setMeridianPointState(true);
            }
        }
        if (this.m_isHeightest) {
            // source line 74, bytecode pc 179
            pointModel.setMeridianPointState(true);
        }
        // source line 76, bytecode pc 198
        data.push(pointModel);
        // source line 58, bytecode pc 213
        i++;
    }
    // source line 79, bytecode pc 229
    return data;
},
    setMeridianState: function(state) {
    // source line 82, bytecode pc 9
    (this.m_meridianIsOpen = state);
},
    getMeridianState: function() {
    // source line 85, bytecode pc 6
    return this.m_meridianIsOpen;
},
    getMeridianName: function() {
    if (xs.Utils.isEmpty(this.m_meridianName)) {
        // source line 89, bytecode pc 39
        return this.m_meridianName;
    } else {
        // source line 91, bytecode pc 78
        return xs.Tools.String.createString(this.m_meridianName);
    }
},
    getMeridianBuffType: function() {
    // source line 95, bytecode pc 6
    return this.m_meridianBuffType;
},
    isHaveBuff: function() {
    if ((this.m_meridianBuffType == "0")) {
        // source line 99, bytecode pc 18
        return false;
    }
    // source line 101, bytecode pc 20
    return true;
},
    getbuffValueType: function() {
    // source line 104, bytecode pc 6
    return this.m_meridianValueType;
},
    getbuffValue: function() {
    // source line 107, bytecode pc 6
    return this.m_meridianBuffValue;
},
    getMeridianBuffValue: function() {
    if ((this.m_meridianBuffType == "0")) {
        // source line 111, bytecode pc 22
        return "";
    }
    if ((this.m_meridianValueType == "1")) {
        // source line 114, bytecode pc 52
        return ("+" + this.m_meridianBuffValue);
    } else {
        if ((this.m_meridianValueType == "2")) {
            // source line 117, bytecode pc 93
            return (("+" + this.m_meridianBuffValue) + "％");
        }
    }
    // source line 119, bytecode pc 99
    return "+0";
},
    getMeridianBuffTypeStr: function() {
    var str;
    // source line 122, bytecode pc 8
    (str = "");
    // source line 124, bytecode pc 15
    switch (this.m_meridianBuffType) {
        case "1":
        // source line 126, bytecode pc 106
        (str = xs.Tools.String.createString("MeridiansMain_13"));
        break;
        case "2":
        // source line 129, bytecode pc 147
        (str = xs.Tools.String.createString("MeridiansMain_14"));
        break;
        case "3":
        // source line 132, bytecode pc 188
        (str = xs.Tools.String.createString("MeridiansMain_15"));
        break;
        case "4":
        // source line 135, bytecode pc 229
        (str = xs.Tools.String.createString("MeridiansMain_16"));
        break;
        case "0":
        // source line 138, bytecode pc 243
        (str = "");
        break;
        default:
        // source line 141, bytecode pc 284
        xs.warn((("getMeridianBuffTypeStr error! type " + this.m_meridianBuffType) + " is not found!"));
        break;
    }
    // source line 143, bytecode pc 288
    return str;
}
}));
// source line 147, bytecode pc 244
(xs.Models.Meridian.createWithJson = function(json) {
    var card;
    // source line 148, bytecode pc 23
    (card = new xs.Models.Meridian());
    if ((card && card.init())) {
        // source line 150, bytecode pc 70
        card.loadJson(json);
        // source line 151, bytecode pc 74
        return card;
    }
    // source line 153, bytecode pc 97
    xs.warn("xs.Models.Meridian.createWithJson");
    // source line 154, bytecode pc 99
    return null;
});
