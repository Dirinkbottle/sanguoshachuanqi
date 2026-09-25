// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/MeridianTop.js:1
// source line 267, bytecode pc 288
(xs.Models.MeridianTop = xs.Models.Base.extend({
    name: "xs.Models.MeridianTop",
    CfgDataType: xs.Constant_CfgDataType_MeridianTop,
    ResType: xs.Constant_ResType_Equ,
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 31
    (this.m_meridianTop = "1");
    // source line 21, bytecode pc 43
    (this.m_meridian = "1");
    // source line 22, bytecode pc 55
    (this.m_meridianPoint = "1");
    // source line 24, bytecode pc 67
    (this.m_general_level = "0");
    // source line 25, bytecode pc 79
    (this.m_skill_id = "0");
    // source line 27, bytecode pc 91
    (this.m_user_general_id = "0");
    // source line 28, bytecode pc 99
    (this.m_isHeightest = false);
    // source line 30, bytecode pc 107
    (this.m_itemNum = 0);
    // source line 32, bytecode pc 151
    (this.m_meridianTopCfg = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_MeridianTop));
    // source line 34, bytecode pc 153
    return true;
},
    loadJson: function(json) {
    var _meridianTop, _meridian, _point, _data;
    if ((json.point_level == "30")) {
        if ((json.meridian_level == "8")) {
            if ((json.top_level == "8")) {
                // source line 41, bytecode pc 64
                (this.m_isHeightest = true);
                // source line 42, bytecode pc 79
                (this.m_meridianTop = json.top_level);
                // source line 43, bytecode pc 94
                (this.m_meridian = json.meridian_level);
                // source line 44, bytecode pc 109
                (this.m_meridianPoint = json.point_level);
            } else {
                // source line 46, bytecode pc 143
                (_meridianTop = (parseInt(json.top_level) + 1));
                // source line 47, bytecode pc 164
                (this.m_meridianTop = _meridianTop.toString());
                // source line 48, bytecode pc 176
                (this.m_meridian = "1");
                // source line 49, bytecode pc 188
                (this.m_meridianPoint = "1");
            }
        } else {
            // source line 52, bytecode pc 222
            (_meridian = (parseInt(json.meridian_level) + 1));
            // source line 53, bytecode pc 248
            (this.m_meridianTop = (json.top_level || "1"));
            // source line 54, bytecode pc 269
            (this.m_meridian = _meridian.toString());
            // source line 55, bytecode pc 281
            (this.m_meridianPoint = "1");
        }
    } else {
        // source line 58, bytecode pc 312
        (this.m_meridianTop = (json.top_level || "1"));
        // source line 59, bytecode pc 338
        (this.m_meridian = (json.meridian_level || "1"));
        if (json.point_level) {
            // source line 61, bytecode pc 380
            (_point = (parseInt(json.point_level) + 1));
            // source line 62, bytecode pc 401
            (this.m_meridianPoint = _point.toString());
        } else {
            // source line 64, bytecode pc 432
            (this.m_meridianPoint = (json.point_level || "1"));
        }
    }
    // source line 67, bytecode pc 458
    (this.m_user_general_id = (json.user_general_id || "0"));
    // source line 68, bytecode pc 480
    (this.m_itemNum = (json.item_num || 0));
    // source line 69, bytecode pc 502
    (this.m_pk_id = (json.pk_id || 0));
    if (!xs.Utils.isEmpty(this.m_meridianTopCfg)) {
        if (!xs.Utils.isEmpty(this.m_meridianTopCfg[this.m_meridianTop])) {
            // source line 73, bytecode pc 594
            (_data = this.m_meridianTopCfg[this.m_meridianTop]);
            // source line 75, bytecode pc 620
            (this.m_general_level = (_data.general_level || "0"));
            // source line 76, bytecode pc 646
            (this.m_skill_id = (_data.skill_id || "0"));
        }
    }
},
    getPkId: function() {
    // source line 81, bytecode pc 6
    return this.m_pk_id;
},
    getMeridianItemNum: function() {
    // source line 84, bytecode pc 6
    return this.m_itemNum;
},
    getIsHeightest: function() {
    // source line 87, bytecode pc 6
    return this.m_isHeightest;
},
    getMerdianTopLevel: function() {
    // source line 90, bytecode pc 6
    return this.m_meridianTop;
},
    getUserGeneralPkid: function() {
    // source line 93, bytecode pc 6
    return this.m_user_general_id;
},
    getMeridianTopGeneralLevel: function() {
    // source line 96, bytecode pc 6
    return this.m_general_level;
},
    getMeridianTopSkillName: function() {
    var skillModel;
    if (xs.Utils.isEmpty(this.m_skill_id)) {
        // source line 100, bytecode pc 39
        return this.m_skill_id;
    } else {
        // source line 102, bytecode pc 81
        (skillModel = xs.Models.Skill.createWithBase(this.m_skill_id));
        // source line 103, bytecode pc 96
        return skillModel.getNameString();
    }
},
    getMeridianTopSkillDesc: function() {
    var skillModel;
    if (xs.Utils.isEmpty(this.m_skill_id)) {
        // source line 108, bytecode pc 39
        return this.m_skill_id;
    } else {
        // source line 110, bytecode pc 81
        (skillModel = xs.Models.Skill.createWithBase(this.m_skill_id));
        // source line 111, bytecode pc 96
        return skillModel.getShortDesc();
    }
},
    getMeridianModel: function() {
    // source line 117, bytecode pc 55
    return xs.Models.Meridian.createWithJson({ meridianTop: this.m_meridianTop, meridian: this.m_meridian });
},
    getMeridianPointModel: function() {
    // source line 124, bytecode pc 66
    return xs.Models.MeridianPoint.createWithJson({ meridianTop: this.m_meridianTop, meridian: this.m_meridian, meridianPoint: this.m_meridianPoint });
},
    getOneMeridianTopAllMeridiansModel: function(meridianTopNum) {
    var _meridianNum, data, i, meridianModel;
    // source line 129, bytecode pc 61
    (_meridianNum = ((meridianTopNum < parseInt(this.m_meridianTop)) ? 8 : parseInt(this.m_meridian)));
    // source line 130, bytecode pc 70
    (data = []);
    // source line 131, bytecode pc 75
    (i = 1);
    while ((i <= _meridianNum)) {
        // source line 137, bytecode pc 167
        (meridianModel = xs.Models.Meridian.createWithJson({
    meridianTop: meridianTopNum.toString(),
    meridian: i,
    meridianPoint: this.m_meridianPoint,
    isHeightest: this.m_isHeightest
}));
        if ((meridianTopNum < parseInt(this.m_meridianTop))) {
            // source line 141, bytecode pc 214
            meridianModel.setMeridianState(true);
        } else {
            if ((i < parseInt(this.m_meridian))) {
                // source line 144, bytecode pc 266
                meridianModel.setMeridianState(true);
            }
        }
        // source line 147, bytecode pc 285
        data.push(meridianModel);
        // source line 131, bytecode pc 300
        i++;
    }
    // source line 149, bytecode pc 317
    return data;
},
    getAllHaveBuffMeridiansModel: function(meridianTopNum) {
    var data, i, meridianModel;
    // source line 152, bytecode pc 8
    (data = []);
    // source line 153, bytecode pc 13
    (i = 1);
    while ((i <= 8)) {
        // source line 158, bytecode pc 105
        (meridianModel = xs.Models.Meridian.createWithJson({
    meridianTop: meridianTopNum.toString(),
    meridian: i.toString(),
    meridianPoint: this.m_meridianPoint
}));
        if ((meridianTopNum < parseInt(this.m_meridianTop))) {
            // source line 162, bytecode pc 152
            meridianModel.setMeridianState(true);
        } else {
            if ((i < parseInt(this.m_meridian))) {
                // source line 165, bytecode pc 204
                meridianModel.setMeridianState(true);
            }
        }
        if (this.getIsHeightest()) {
            // source line 169, bytecode pc 238
            meridianModel.setMeridianState(true);
        }
        if (meridianModel.isHaveBuff()) {
            // source line 172, bytecode pc 276
            data.push(meridianModel);
        }
        // source line 153, bytecode pc 291
        i++;
    }
    // source line 175, bytecode pc 307
    return data;
},
    getMeridianAndMeridianPointBuffValAll: function() {
    var meridianTopNum, meridianNum, meridianPointNum, gongVal, fangVal, xueVal, zhiVal, gong, fang, xue, zhi, addBuffValue, addBuff, isHeightest, i, _meridianNum, j, _bool, meridianModel, _buffType, _buffValueType, _buffValue, _meridianPointNum, k, meridianPointModel, buffType, buffValue;
    // source line 178, bytecode pc 24
    (meridianTopNum = parseInt(this.m_meridianTop));
    // source line 179, bytecode pc 49
    (meridianNum = parseInt(this.m_meridian));
    // source line 180, bytecode pc 74
    (meridianPointNum = parseInt(this.m_meridianPoint));
    // source line 182, bytecode pc 85
    (gongVal = 0);
    // source line 183, bytecode pc 96
    (fangVal = 0);
    // source line 184, bytecode pc 107
    (xueVal = 0);
    // source line 185, bytecode pc 118
    (zhiVal = 0);
    // source line 187, bytecode pc 129
    (gong = 0);
    // source line 188, bytecode pc 140
    (fang = 0);
    // source line 189, bytecode pc 151
    (xue = 0);
    // source line 190, bytecode pc 162
    (zhi = 0);
    // source line 202, bytecode pc 184
    (addBuffValue = function(type, value) {
    if ((type == "1")) {
        // source line 194, bytecode pc 36
        (gongVal = (gongVal + value));
    } else {
        if ((type == "2")) {
            // source line 196, bytecode pc 78
            (fangVal = (fangVal + value));
        } else {
            if ((type == "3")) {
                // source line 198, bytecode pc 120
                (xueVal = (xueVal + value));
            } else {
                if ((type == "4")) {
                    // source line 200, bytecode pc 162
                    (zhiVal = (zhiVal + value));
                }
            }
        }
    }
}.bind(this));
    // source line 213, bytecode pc 206
    (addBuff = function(type, value) {
    if ((type == "1")) {
        // source line 205, bytecode pc 36
        (gong = (gong + value));
    } else {
        if ((type == "2")) {
            // source line 207, bytecode pc 78
            (fang = (fang + value));
        } else {
            if ((type == "3")) {
                // source line 209, bytecode pc 120
                (xue = (xue + value));
            } else {
                if ((type == "4")) {
                    // source line 211, bytecode pc 162
                    (zhi = (zhi + value));
                }
            }
        }
    }
}.bind(this));
    // source line 215, bytecode pc 222
    (isHeightest = this.getIsHeightest());
    // source line 218, bytecode pc 227
    (i = 1);
    while ((i <= meridianTopNum)) {
        // source line 219, bytecode pc 259
        (_meridianNum = ((i < meridianTopNum) ? 8 : meridianNum));
        // source line 220, bytecode pc 264
        (j = 1);
        while ((j <= _meridianNum)) {
            // source line 221, bytecode pc 306
            (_bool = (((i == meridianTopNum) && (j == meridianNum)) ? false : true));
            if ((_bool || isHeightest)) {
                // source line 225, bytecode pc 398
                (meridianModel = xs.Models.Meridian.createWithJson({ meridianTop: i.toString(), meridian: j.toString() }));
                // source line 227, bytecode pc 416
                (_buffType = meridianModel.getMeridianBuffType());
                // source line 228, bytecode pc 434
                (_buffValueType = meridianModel.getbuffValueType());
                // source line 229, bytecode pc 452
                (_buffValue = meridianModel.getbuffValue());
                if ((_buffValueType == "1")) {
                    // source line 231, bytecode pc 498
                    addBuffValue(_buffType, parseInt(_buffValue));
                } else {
                    if ((_buffValueType == "2")) {
                        // source line 233, bytecode pc 549
                        addBuff(_buffType, parseInt(_buffValue));
                    }
                }
            }
            // source line 236, bytecode pc 588
            (_meridianPointNum = (((i == meridianTopNum) && (j == meridianNum)) ? meridianPointNum : 31));
            if (isHeightest) {
                // source line 238, bytecode pc 602
                (_meridianPointNum = 31);
            }
            // source line 240, bytecode pc 607
            (k = 1);
            while ((k < _meridianPointNum)) {
                // source line 244, bytecode pc 707
                (meridianPointModel = xs.Models.MeridianPoint.createWithJson({ meridianTop: i.toString(), meridian: j.toString(), meridianPoint: k.toString() }));
                // source line 246, bytecode pc 725
                (buffType = meridianPointModel.getMeridianPointBuffType());
                // source line 247, bytecode pc 743
                (buffValue = meridianPointModel.getMeridianPointBuffValueNum());
                // source line 248, bytecode pc 775
                addBuffValue(buffType, parseInt(buffValue));
                // source line 240, bytecode pc 790
                k++;
            }
            // source line 220, bytecode pc 818
            j++;
        }
        // source line 218, bytecode pc 846
        i++;
    }
    if ((meridianTopNum > 1)) {
        // source line 257, bytecode pc 998
        return {
    gong: (gongVal * (1 + (gong / 100))),
    fang: (fangVal * (1 + (fang / 100))),
    xue: ((xueVal * (1 + (xue / 100))) * 1.2),
    zhi: (zhiVal * (1 + (zhi / 100)))
}
    }
    // source line 264, bytecode pc 1121
    return {
    gong: (gongVal * (1 + (gong / 100))),
    fang: (fangVal * (1 + (fang / 100))),
    xue: (xueVal * (1 + (xue / 100))),
    zhi: (zhiVal * (1 + (zhi / 100)))
}
},
    getMeridianAndMeridianPointBuffValByType: function(type) {
    var meridianTopNum, meridianNum, meridianPointNum, RealValue, value, isHeightest, i, _meridianNum, j, _bool, meridianModel, _buffType, _buffValueType, _buffValue, _meridianPointNum, k, meridianPointModel, buffType, buffValue;
    // source line 268, bytecode pc 24
    (meridianTopNum = parseInt(this.m_meridianTop));
    // source line 269, bytecode pc 49
    (meridianNum = parseInt(this.m_meridian));
    // source line 270, bytecode pc 74
    (meridianPointNum = parseInt(this.m_meridianPoint));
    // source line 272, bytecode pc 79
    (RealValue = 0);
    // source line 273, bytecode pc 84
    (value = 0);
    // source line 275, bytecode pc 100
    (isHeightest = this.getIsHeightest());
    // source line 277, bytecode pc 105
    (i = 1);
    while ((i <= meridianTopNum)) {
        // source line 278, bytecode pc 137
        (_meridianNum = ((i < meridianTopNum) ? 8 : meridianNum));
        // source line 279, bytecode pc 142
        (j = 1);
        while ((j <= _meridianNum)) {
            // source line 280, bytecode pc 184
            (_bool = (((i == meridianTopNum) && (j == meridianNum)) ? false : true));
            if ((_bool || isHeightest)) {
                // source line 284, bytecode pc 276
                (meridianModel = xs.Models.Meridian.createWithJson({ meridianTop: i.toString(), meridian: j.toString() }));
                // source line 286, bytecode pc 294
                (_buffType = meridianModel.getMeridianBuffType());
                // source line 287, bytecode pc 312
                (_buffValueType = meridianModel.getbuffValueType());
                // source line 288, bytecode pc 330
                (_buffValue = meridianModel.getbuffValue());
                if ((_buffValueType == "1")) {
                    if ((_buffType == type)) {
                        // source line 291, bytecode pc 382
                        (RealValue = (RealValue + parseInt(_buffValue)));
                    }
                } else {
                    if ((_buffValueType == "2")) {
                        if ((_buffType == type)) {
                            // source line 295, bytecode pc 439
                            (value = (value + parseInt(_buffValue)));
                        }
                    }
                }
            }
            // source line 299, bytecode pc 478
            (_meridianPointNum = (((i == meridianTopNum) && (j == meridianNum)) ? meridianPointNum : 31));
            if (isHeightest) {
                // source line 301, bytecode pc 492
                (_meridianPointNum = 31);
            }
            // source line 303, bytecode pc 497
            (k = 1);
            while ((k < _meridianPointNum)) {
                // source line 307, bytecode pc 597
                (meridianPointModel = xs.Models.MeridianPoint.createWithJson({ meridianTop: i.toString(), meridian: j.toString(), meridianPoint: k.toString() }));
                // source line 309, bytecode pc 615
                (buffType = meridianPointModel.getMeridianPointBuffType());
                // source line 310, bytecode pc 633
                (buffValue = meridianPointModel.getMeridianPointBuffValueNum());
                if ((buffType == type)) {
                    // source line 312, bytecode pc 671
                    (RealValue = (RealValue + parseInt(buffValue)));
                }
                // source line 303, bytecode pc 686
                k++;
            }
            // source line 279, bytecode pc 714
            j++;
        }
        // source line 277, bytecode pc 742
        i++;
    }
    if ((meridianTopNum > 1)) {
        if ((type == xs.Constant_AttrType_Hp)) {
            // source line 319, bytecode pc 803
            return ((RealValue * (1 + (value / 100))) * 1.2);
        }
    }
    // source line 322, bytecode pc 816
    return (RealValue * (1 + (value / 100)));
}
}));
// source line 327, bytecode pc 314
(xs.Models.MeridianTop.createWithJson = function(json) {
    var card;
    // source line 328, bytecode pc 23
    (card = new xs.Models.MeridianTop());
    if ((card && card.init())) {
        // source line 330, bytecode pc 70
        card.loadJson(json);
        // source line 331, bytecode pc 74
        return card;
    }
    // source line 333, bytecode pc 97
    xs.warn("xs.Models.MeridianTop.createWithJson");
    // source line 334, bytecode pc 99
    return null;
});
