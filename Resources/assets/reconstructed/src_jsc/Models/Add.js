// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Add.js:1
// source line 13, bytecode pc 25
(xs.Models.AddType_General = xs.Constant_ObjType_General);
// source line 15, bytecode pc 51
(xs.Models.AddType_Equipment = xs.Constant_ObjType_Equipment);
// source line 16, bytecode pc 77
(xs.Models.AddType_Skill = xs.Constant_ObjType_Skill);
// source line 17, bytecode pc 103
(xs.Models.AddType_Item = xs.Constant_ObjType_Item);
// source line 18, bytecode pc 129
(xs.Models.AddType_GeneralSoul = xs.Constant_ObjType_GeneralSoul);
// source line 19, bytecode pc 155
(xs.Models.AddType_SkillFragment = xs.Constant_ObjType_SkillPiece);
// source line 20, bytecode pc 181
(xs.Models.AddType_EquipmentPiece = xs.Constant_ObjType_EquipmentPiece);
// source line 21, bytecode pc 207
(xs.Models.AddType_Gems = xs.Constant_ObjType_Gems);
// source line 22, bytecode pc 233
(xs.Models.AddType_PlayerAttr = xs.Constant_ObjType_PlayerAttr);
// source line 27, bytecode pc 250
(xs.Models.AddPlayerInfoType_TiLi = 1);
// source line 28, bytecode pc 268
(xs.Models.AddPlayerInfoType_JingLi = 2);
// source line 29, bytecode pc 286
(xs.Models.AddPlayerInfoType_TongQian = 3);
// source line 30, bytecode pc 304
(xs.Models.AddPlayerInfoType_YuanBao = 4);
// source line 31, bytecode pc 322
(xs.Models.AddPlayerInfoType_GoldSoul = 5);
// source line 32, bytecode pc 340
(xs.Models.AddPlayerInfoType_SilverSoul = 6);
// source line 33, bytecode pc 358
(xs.Models.AddPlayerInfoType_Salary = 7);
// source line 34, bytecode pc 376
(xs.Models.AddPlayerInfoType_Fragment = 8);
// source line 35, bytecode pc 394
(xs.Models.AddPlayerInfoType_Battle = 9);
// source line 36, bytecode pc 412
(xs.Models.AddPlayerInfoType_TeamPoint = 10);
// source line 37, bytecode pc 430
(xs.Models.AddPlayerInfoType_Exp = 12);
// source line 38, bytecode pc 448
(xs.Models.AddPlayerInfoType_UnionScore = 13);
// source line 137, bytecode pc 692
(xs.Models.Add = cc.Class.extend({
    name: "xs.Models.Add",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    // source line 52, bytecode pc 7
    (this.m_addType = 0);
    // source line 53, bytecode pc 15
    (this.m_addNum = 1);
    // source line 54, bytecode pc 23
    (this.m_addLevel = 1);
    // source line 55, bytecode pc 31
    (this.m_id = 0);
    // source line 56, bytecode pc 39
    (this.m_createViewObj = null);
    // source line 57, bytecode pc 41
    return true;
},
    loadJson: function(data) {
    // source line 63, bytecode pc 36
    (this.m_addType = xs.Utils.parseIntSafe(data.type));
    // source line 64, bytecode pc 80
    (this.m_addNum = xs.Utils.parseIntSafe((data.num || 1)));
    // source line 65, bytecode pc 124
    (this.m_addLevel = xs.Utils.parseIntSafe((data.level || 1)));
    // source line 66, bytecode pc 139
    (this.m_id = data.id);
    // source line 67, bytecode pc 152
    this._createModel();
},
    _createModel: function() {
    // source line 76, bytecode pc 84
    (this.m_createViewObj = xs.Tools.Model.createModelWithBase(this.getAddType(), this.getAddId(), this.getAddNum(), this.getAddLevel()));
    // source line 79, bytecode pc 86
    return true;
},
    createHeadView: function() {
    // source line 83, bytecode pc 23
    return this.getCreateViewObj().createHeadView();
},
    createIcon_NumAndName: function(viewCfg) {
    // source line 87, bytecode pc 23
    return this.getCreateViewObj().createIcon_GradeAndNumAndName();
},
    getNameString: function() {
    // source line 91, bytecode pc 23
    return this.getCreateViewObj().getNameString();
},
    getTxtLabString: function() {
    var _txt_lab;
    // source line 95, bytecode pc 35
    (_txt_lab = xs.Tools.String.createString("str_Worship_num"));
    // source line 96, bytecode pc 39
    return _txt_lab;
},
    getShowNumString: function() {
    // source line 99, bytecode pc 34
    return xs.Utils.parseStringSafe(this.getAddNum());
},
    getAddType: function() {
    // source line 105, bytecode pc 6
    return this.m_addType;
},
    getAddNum: function() {
    // source line 109, bytecode pc 6
    return this.m_addNum;
},
    getAddLevel: function() {
    // source line 113, bytecode pc 6
    return this.m_addLevel;
},
    getAddId: function() {
    // source line 118, bytecode pc 6
    return this.m_id;
},
    getCreateViewObj: function() {
    // source line 122, bytecode pc 6
    return this.m_createViewObj;
},
    getGradeForSort: function() {
    var _obj;
    // source line 127, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 129, bytecode pc 33
        return 1000;
    }
    // source line 131, bytecode pc 48
    return _obj.getSortGrade();
},
    getTypeSort: function() {
    var _type;
    // source line 138, bytecode pc 47
    (_type = (this.getCreateViewObj() ? this.getCreateViewObj().name : "null"));
    if ((_type == "xs.Models.Equipment")) {
        // source line 140, bytecode pc 63
        return 0;
    } else {
        if ((_type == "EquipmentPiece")) {
            // source line 142, bytecode pc 84
            return 1;
        } else {
            if ((_type == "Skill")) {
                // source line 144, bytecode pc 106
                return 2;
            } else {
                if ((_type == "xs.Models.Item")) {
                    // source line 146, bytecode pc 128
                    return 3;
                } else {
                    // source line 148, bytecode pc 136
                    return 100;
                }
            }
        }
    }
}
}));
// source line 159, bytecode pc 751
(xs.Models.AddItem = xs.Models.Add.extend({
    getGradeForSort: function() {
    var _obj;
    // source line 160, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 162, bytecode pc 33
        return 1000;
    }
    // source line 164, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 169, bytecode pc 777
(xs.Models.AddItem.create = function() {
    var add;
    // source line 170, bytecode pc 23
    (add = new xs.Models.AddItem());
    if ((add && add.init())) {
        // source line 172, bytecode pc 55
        return add;
    }
    // source line 175, bytecode pc 80
    xs.assert(false, "xs.Models.AddItem.create ");
    // source line 176, bytecode pc 82
    return null;
});
// source line 198, bytecode pc 846
(xs.Models.AddEquipment = xs.Models.Add.extend({
    createHeadView: function() {
    var _model, _ret;
    // source line 187, bytecode pc 15
    (_model = this.getCreateViewObj());
    // source line 193, bytecode pc 71
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true }, null));
    // source line 195, bytecode pc 90
    _ret.reloadData(_model);
    // source line 196, bytecode pc 94
    return _ret;
},
    getGradeForSort: function() {
    var _obj;
    // source line 199, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 201, bytecode pc 33
        return 1000;
    }
    // source line 203, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 230, bytecode pc 872
(xs.Models.AddEquipment.create = function() {
    var add;
    // source line 231, bytecode pc 23
    (add = new xs.Models.AddEquipment());
    if ((add && add.init())) {
        // source line 233, bytecode pc 55
        return add;
    }
    // source line 236, bytecode pc 80
    xs.assert(false, "xs.Models.AddEquipment.create ");
    // source line 237, bytecode pc 82
    return null;
});
// source line 253, bytecode pc 951
(xs.Models.AddEquipmentPiece = xs.Models.Add.extend({
    createHeadView: function() {
    // source line 247, bytecode pc 23
    return this.getCreateViewObj().createIcon_Grade();
},
    getNameString: function() {
    // source line 251, bytecode pc 56
    return (this.getCreateViewObj().getNameString() + xs.Tools.String.createString("auto_name_10"));
},
    getGradeForSort: function() {
    var _obj;
    // source line 254, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 256, bytecode pc 33
        return 1000;
    }
    // source line 258, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 263, bytecode pc 977
(xs.Models.AddEquipmentPiece.create = function() {
    var add;
    // source line 264, bytecode pc 23
    (add = new xs.Models.AddEquipmentPiece());
    if ((add && add.init())) {
        // source line 266, bytecode pc 55
        return add;
    }
    // source line 269, bytecode pc 80
    xs.assert(false, "xs.Models.AddEquipmentPiece.create ");
    // source line 270, bytecode pc 82
    return null;
});
// source line 292, bytecode pc 1046
(xs.Models.AddSkill = xs.Models.Add.extend({
    createHeadView: function() {
    var _model, _ret;
    // source line 281, bytecode pc 15
    (_model = this.getCreateViewObj());
    // source line 287, bytecode pc 71
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true }, null));
    // source line 289, bytecode pc 90
    _ret.reloadData(_model);
    // source line 290, bytecode pc 94
    return _ret;
},
    getGradeForSort: function() {
    var _obj;
    // source line 293, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 295, bytecode pc 33
        return 1000;
    }
    // source line 297, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 302, bytecode pc 1072
(xs.Models.AddSkill.create = function() {
    var add;
    // source line 303, bytecode pc 23
    (add = new xs.Models.AddSkill());
    if ((add && add.init())) {
        // source line 305, bytecode pc 55
        return add;
    }
    // source line 307, bytecode pc 80
    xs.assert(false, "xs.Models.AddSkill.create ");
    // source line 308, bytecode pc 82
    return null;
});
// source line 323, bytecode pc 1151
(xs.Models.AddSkillFragment = xs.Models.Add.extend({
    createHeadView: function() {
    // source line 318, bytecode pc 23
    return this.getCreateViewObj().createIcon_Grade();
},
    getNameString: function() {
    // source line 321, bytecode pc 56
    return (this.getCreateViewObj().getNameString() + xs.Tools.String.createString("auto_name_10"));
},
    getGradeForSort: function() {
    var _obj;
    // source line 324, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 326, bytecode pc 33
        return 1000;
    }
    // source line 328, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 332, bytecode pc 1177
(xs.Models.AddSkillFragment.create = function() {
    var add;
    // source line 333, bytecode pc 23
    (add = new xs.Models.AddSkillFragment());
    if ((add && add.init())) {
        // source line 335, bytecode pc 55
        return add;
    }
    // source line 339, bytecode pc 80
    xs.assert(false, "xs.Models.AddSkillFragment.create ");
    // source line 340, bytecode pc 82
    return null;
});
// source line 362, bytecode pc 1246
(xs.Models.AddGeneral = xs.Models.Add.extend({
    createHeadView: function() {
    var _model, _ret;
    // source line 351, bytecode pc 15
    (_model = this.getCreateViewObj());
    // source line 357, bytecode pc 71
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true }, null));
    // source line 359, bytecode pc 90
    _ret.reloadData(_model);
    // source line 360, bytecode pc 94
    return _ret;
},
    getGradeForSort: function() {
    var _obj;
    // source line 363, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 365, bytecode pc 33
        return 1000;
    }
    // source line 367, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 371, bytecode pc 1272
(xs.Models.AddGeneral.create = function() {
    var add;
    // source line 372, bytecode pc 23
    (add = new xs.Models.AddGeneral());
    if ((add && add.init())) {
        // source line 374, bytecode pc 55
        return add;
    }
    // source line 377, bytecode pc 80
    xs.assert(false, "xs.Models.AddGeneral.create ");
    // source line 378, bytecode pc 82
    return null;
});
// source line 389, bytecode pc 1341
(xs.Models.AddGeneralSoul = xs.Models.Add.extend({
    getNameString: function() {
    // source line 387, bytecode pc 56
    return (this.getCreateViewObj().getNameString() + xs.Tools.String.createString("soul"));
},
    getGradeForSort: function() {
    var _obj;
    // source line 390, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 392, bytecode pc 33
        return 1000;
    }
    // source line 394, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 398, bytecode pc 1367
(xs.Models.AddGeneralSoul.create = function() {
    var add;
    // source line 399, bytecode pc 23
    (add = new xs.Models.AddGeneralSoul());
    if ((add && add.init())) {
        // source line 401, bytecode pc 55
        return add;
    }
    // source line 404, bytecode pc 80
    xs.assert(false, "xs.Models.AddGeneralSoul.create ");
    // source line 405, bytecode pc 82
    return null;
});
// source line 484, bytecode pc 1516
(xs.Models.AddPlayerInfo = xs.Models.Add.extend({
    init: function() {
    if (!this._super()) {
        // source line 411, bytecode pc 19
        return false;
    }
    // source line 415, bytecode pc 21
    return true;
},
    loadJson: function(data) {
    // source line 418, bytecode pc 16
    this._super(data);
},
    _createModel: function() {
    // source line 423, bytecode pc 1
    return null;
},
    createHeadView: function() {
    // source line 427, bytecode pc 17
    return this._createView().iconSp;
},
    getNameString: function() {
    // source line 431, bytecode pc 17
    return this._createView().name;
},
    getTxtLabString: function() {
    // source line 435, bytecode pc 17
    return this._createView().labTxt;
},
    getShowNumString: function() {
    // source line 438, bytecode pc 52
    return (this._createView().preNum + xs.Utils.parseStringSafe(this.getAddNum()));
},
    _createView: function() {
    var _obj, _id, _model;
    // source line 442, bytecode pc 9
    (_obj = {});
    // source line 443, bytecode pc 40
    (_id = parseInt(this.getAddId()));
    // source line 444, bytecode pc 44
    switch (_id) {
        case xs.Models.AddPlayerInfoType_TiLi:
        case xs.Models.AddPlayerInfoType_JingLi:
        case xs.Models.AddPlayerInfoType_Battle:
        case xs.Models.AddPlayerInfoType_TongQian:
        case xs.Models.AddPlayerInfoType_YuanBao:
        case xs.Models.AddPlayerInfoType_TeamPoint:
        case xs.Models.AddPlayerInfoType_Exp:
        case xs.Models.AddPlayerInfoType_UnionScore:
        // source line 455, bytecode pc 280
        (_model = xs.Models.PlayerAttr.createWithJson({ id: this.getAddId(), num: this.getAddNum() }));
        // source line 456, bytecode pc 303
        (_obj.iconSp = _model.createIcon_Grade());
        // source line 457, bytecode pc 326
        (_obj.name = _model.getNameString());
        // source line 458, bytecode pc 349
        (_obj.labTxt = _model.getTxtLabString());
        // source line 459, bytecode pc 372
        (_obj.preNum = _model.getNumPreString());
        break;
        default:
        // source line 466, bytecode pc 434
        xs.assert(false, ((("info type error__createView!" + this.getAddId()) + "_") + this.getAddType()));
        break;
    }
    // source line 473, bytecode pc 443
    return _obj;
},
    getCreateViewObj: function() {
    // source line 477, bytecode pc 1
    return null;
},
    getGradeForSort: function() {
    // source line 485, bytecode pc 3
    return 1000;
}
}));
// source line 489, bytecode pc 1542
(xs.Models.AddPlayerInfo.create = function() {
    var add;
    // source line 490, bytecode pc 23
    (add = new xs.Models.AddPlayerInfo());
    if ((add && add.init())) {
        // source line 492, bytecode pc 55
        return add;
    }
    // source line 495, bytecode pc 57
    return null;
});
// source line 505, bytecode pc 1601
(xs.Models.AddGems = xs.Models.Add.extend({
    getGradeForSort: function() {
    var _obj;
    // source line 506, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 508, bytecode pc 33
        return 1000;
    }
    // source line 510, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 514, bytecode pc 1627
(xs.Models.AddGems.create = function() {
    var add;
    // source line 515, bytecode pc 23
    (add = new xs.Models.AddGems());
    if ((add && add.init())) {
        // source line 517, bytecode pc 55
        return add;
    }
    // source line 520, bytecode pc 80
    xs.assert(false, "xs.Models.AddGems.create ");
    // source line 521, bytecode pc 82
    return null;
});
// source line 530, bytecode pc 1686
(xs.Models.AddGoddess = xs.Models.Add.extend({
    getGradeForSort: function() {
    var _obj;
    // source line 531, bytecode pc 15
    (_obj = this.getCreateViewObj());
    if (!_obj.getSortGrade) {
        // source line 533, bytecode pc 33
        return 1000;
    }
    // source line 535, bytecode pc 48
    return _obj.getSortGrade();
}
}));
// source line 539, bytecode pc 1712
(xs.Models.AddGoddess.create = function() {
    var add;
    // source line 540, bytecode pc 23
    (add = new xs.Models.AddGoddess());
    if ((add && add.init())) {
        // source line 542, bytecode pc 55
        return add;
    }
    // source line 545, bytecode pc 80
    xs.assert(false, "xs.Models.AddGoddess.create ");
    // source line 546, bytecode pc 82
    return null;
});
