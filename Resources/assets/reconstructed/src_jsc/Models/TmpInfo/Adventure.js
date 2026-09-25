// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/TmpInfo/Adventure.js:1
// source line 105, bytecode pc 168
(xs.Models.TmpInfo.Adventure = cc.Class.extend({
    name: "xs.Models.TmpInfo.Adventure",
    init: function() {
    // source line 7, bytecode pc 12
    (this.info = {});
    // source line 8, bytecode pc 20
    (this.type = 0);
    // source line 9, bytecode pc 28
    (this.num = 0);
    // source line 10, bytecode pc 30
    return true;
},
    loadJson: function(data) {
    // source line 15, bytecode pc 14
    (this.info = data.info);
    // source line 16, bytecode pc 44
    (this.type = parseInt(data.type));
    // source line 17, bytecode pc 74
    (this.num = parseInt(data.num));
},
    getType: function() {
    // source line 21, bytecode pc 6
    return this.type;
},
    getNum: function() {
    // source line 25, bytecode pc 6
    return this.num;
},
    getCard: function() {
    var _obj_soul;
    // source line 29, bytecode pc 30
    this.assert(this.info.card, "the Adventure config card is null");
    // source line 30, bytecode pc 93
    (_obj_soul = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase(this.info.card));
    // source line 31, bytecode pc 119
    return _obj_soul.getRes().createOriginalSprite_Foot();
},
    getIcon: function() {
    var _obj;
    // source line 35, bytecode pc 30
    this.assert(this.info.icon, "the Adventure config icon is null");
    // source line 36, bytecode pc 43
    switch (this.getType()) {
        case xs.SpecificDialog.Adventure_Gereral_Soul:
        case xs.SpecificDialog.Adventure_Training:
        // source line 39, bytecode pc 211
        (_obj = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.createWithBase(this.info.icon));
        break;
        case xs.SpecificDialog.Adventure_Skill_Piece:
        // source line 42, bytecode pc 279
        (_obj = xs.Profile.GameData.Mgr.getInstance().SkillPieces.createWithBase(this.info.icon));
        break;
        case xs.SpecificDialog.Adventure_Box:
        case xs.SpecificDialog.Adventure_Item:
        // source line 46, bytecode pc 347
        (_obj = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.info.icon));
        // source line 47, bytecode pc 362
        return _obj.createIcon_GradeAndNum();
        break;
        default:
        // source line 50, bytecode pc 386
        this.error("the adventure type is error!!");
        break;
    }
    // source line 54, bytecode pc 401
    return _obj.createHeadView();
},
    getTalking: function() {
    var _str_talking;
    // source line 60, bytecode pc 116
    (_str_talking = (xs.Utils.isEmpty(this.info.talking) ? xs.Tools.String.createString("auto_name_46") : xs.Factorys.String.create(this.info.talking)));
    // source line 61, bytecode pc 120
    return _str_talking;
},
    getTitle: function() {
    var _str_title;
    // source line 67, bytecode pc 116
    (_str_title = (xs.Utils.isEmpty(this.info.title) ? xs.Tools.String.createString("auto_name_46") : xs.Factorys.String.create(this.info.title)));
    // source line 68, bytecode pc 120
    return _str_title;
},
    getName: function() {
    var _str_title;
    // source line 74, bytecode pc 41
    (_str_title = xs.Factorys.String.create(this.info.name));
    if (xs.Utils.isEmpty(this.info.name)) {
        // source line 77, bytecode pc 112
        return xs.Tools.String.createString("auto_name_46");
    }
    // source line 79, bytecode pc 125
    switch (this.getType()) {
        case xs.SpecificDialog.Adventure_Gereral_Soul:
        // source line 81, bytecode pc 270
        (_str_title = (_str_title + xs.Tools.String.createString("soul")));
        break;
        case xs.SpecificDialog.Adventure_Training:
        // source line 84, bytecode pc 315
        (_str_title = (_str_title + xs.Tools.String.createString("auto_name_48")));
        break;
        case xs.SpecificDialog.Adventure_Skill_Piece:
        // source line 87, bytecode pc 360
        (_str_title = (_str_title + xs.Tools.String.createString("auto_name_10")));
        break;
        case xs.SpecificDialog.Adventure_Box:
        case xs.SpecificDialog.Adventure_Item:
        break;
        default:
        // source line 93, bytecode pc 389
        this.error("the adventure type is error!!");
        break;
    }
    // source line 96, bytecode pc 393
    return _str_title;
},
    getPkId: function() {
    // source line 101, bytecode pc 11
    return this.info.pk_id;
},
    getTrainingNum: function() {
    // source line 106, bytecode pc 11
    return this.info.num;
}
}));
// source line 110, bytecode pc 199
(xs.Models.TmpInfo.Adventure.createWithJson = function(data) {
    var _ret;
    // source line 111, bytecode pc 28
    (_ret = new xs.Models.TmpInfo.Adventure());
    if ((_ret && _ret.init())) {
        // source line 113, bytecode pc 75
        _ret.loadJson(data);
        // source line 114, bytecode pc 79
        return _ret;
    }
    // source line 116, bytecode pc 81
    return null;
});
