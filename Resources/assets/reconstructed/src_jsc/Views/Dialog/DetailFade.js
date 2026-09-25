// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DetailFade.js:1
// source line 2, bytecode pc 26
(xs.Views.Dialog.DetailFade = {});
// source line 10, bytecode pc 58
(xs.Views.Dialog.DetailFade.GeneralHD = {});
// source line 12, bytecode pc 94
(xs.Views.Dialog.DetailFade.GeneralHD.create = function(params) {
    var param, obj;
    // source line 13, bytecode pc 18
    (param = (params || {}));
    // source line 14, bytecode pc 48
    this.assert((param.generalData != null), " params.generalData");
    // source line 15, bytecode pc 87
    (obj = xs.Views.Dialog.DetailDialogGeneral.create(param));
    // source line 18, bytecode pc 119
    obj.setDisplayType({ type: "achieve_nothave" });
    if ((param.backFlag != null)) {
        // source line 22, bytecode pc 158
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 24, bytecode pc 162
    return obj;
});
// source line 28, bytecode pc 179
xs.Views.Mgr.registerDialog("GeneralHD", { "class": xs.Views.Dialog.DetailFade.GeneralHD, styleType: xs.Constant_DlgStyleType_Large });
// source line 32, bytecode pc 211
(xs.Views.Dialog.DetailFade.GeneralHDWithoutSurrend = {});
// source line 34, bytecode pc 247
(xs.Views.Dialog.DetailFade.GeneralHDWithoutSurrend.create = function(params) {
    var param, obj;
    // source line 35, bytecode pc 18
    (param = (params || {}));
    // source line 36, bytecode pc 48
    this.assert((param.generalData != null), " params.generalData");
    // source line 37, bytecode pc 53
    (obj = null);
    // source line 38, bytecode pc 92
    (obj = xs.Views.Dialog.DetailDialogGeneral.create(param));
    // source line 41, bytecode pc 124
    obj.setDisplayType({ type: "achieve_nothave" });
    if ((param.backFlag != null)) {
        // source line 45, bytecode pc 163
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 47, bytecode pc 167
    return obj;
});
// source line 51, bytecode pc 332
xs.Views.Mgr.registerDialog("GeneralHDWithoutSurrend", {
    "class": xs.Views.Dialog.DetailFade.GeneralHDWithoutSurrend,
    styleType: xs.Constant_DlgStyleType_Large
});
// source line 55, bytecode pc 364
(xs.Views.Dialog.DetailFade.GeneralHDWithTeam = {});
// source line 57, bytecode pc 400
(xs.Views.Dialog.DetailFade.GeneralHDWithTeam.create = function(params) {
    var param, obj;
    // source line 58, bytecode pc 18
    (param = (params || {}));
    // source line 59, bytecode pc 48
    this.assert((param.generalData != null), " params.generalData");
    // source line 60, bytecode pc 53
    (obj = null);
    // source line 61, bytecode pc 92
    (obj = xs.Views.Dialog.DetailDialogGeneral.create(param));
    // source line 63, bytecode pc 124
    obj.setDisplayType({ type: "team" });
    if ((param.backFlag != null)) {
        // source line 67, bytecode pc 163
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 69, bytecode pc 167
    return obj;
});
// source line 73, bytecode pc 485
xs.Views.Mgr.registerDialog("GeneralHDWithTeam", {
    "class": xs.Views.Dialog.DetailFade.GeneralHDWithTeam,
    styleType: xs.Constant_DlgStyleType_Large
});
// source line 78, bytecode pc 517
(xs.Views.Dialog.DetailFade.GeneralHDWithDeptudy = {});
// source line 80, bytecode pc 553
(xs.Views.Dialog.DetailFade.GeneralHDWithDeptudy.create = function(params) {
    var param, obj;
    // source line 81, bytecode pc 18
    (param = (params || {}));
    // source line 82, bytecode pc 48
    this.assert((param.generalData != null), " params.generalData");
    // source line 83, bytecode pc 53
    (obj = null);
    // source line 84, bytecode pc 92
    (obj = xs.Views.Dialog.DetailDialogGeneral.create(param));
    // source line 86, bytecode pc 124
    obj.setDisplayType({ type: "Deputy_General" });
    if ((param.backFlag != null)) {
        // source line 90, bytecode pc 163
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 92, bytecode pc 167
    return obj;
});
// source line 96, bytecode pc 638
xs.Views.Mgr.registerDialog("GeneralHDWithDeptudy", {
    "class": xs.Views.Dialog.DetailFade.GeneralHDWithDeptudy,
    styleType: xs.Constant_DlgStyleType_Large
});
// source line 103, bytecode pc 670
(xs.Views.Dialog.DetailFade.EquipNoPanel = {});
// source line 105, bytecode pc 706
(xs.Views.Dialog.DetailFade.EquipNoPanel.create = function(params) {
    var param, obj;
    // source line 106, bytecode pc 18
    (param = (params || {}));
    // source line 107, bytecode pc 48
    this.assert((param.equipData != null), " params.equipData");
    // source line 108, bytecode pc 53
    (obj = null);
    // source line 109, bytecode pc 92
    (obj = xs.Views.Dialog.DetailDialogEquip.create(param));
    // source line 111, bytecode pc 120
    obj.setDisplayType({ flag: false });
    if ((param.backFlag != null)) {
        // source line 115, bytecode pc 159
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 117, bytecode pc 163
    return obj;
});
// source line 121, bytecode pc 791
xs.Views.Mgr.registerDialog("EquipNoPanel", { "class": xs.Views.Dialog.DetailFade.EquipNoPanel, styleType: xs.Constant_DlgStyleType_Large });
// source line 123, bytecode pc 823
(xs.Views.Dialog.DetailFade.EquipWithPanel = {});
// source line 125, bytecode pc 859
(xs.Views.Dialog.DetailFade.EquipWithPanel.create = function(params) {
    var param, obj;
    // source line 126, bytecode pc 18
    (param = (params || {}));
    // source line 127, bytecode pc 48
    this.assert((param.equipData != null), " params.equipData");
    // source line 128, bytecode pc 53
    (obj = null);
    // source line 129, bytecode pc 92
    (obj = xs.Views.Dialog.DetailDialogEquip.create(param));
    if ((param.backFlag != null)) {
        // source line 132, bytecode pc 131
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 134, bytecode pc 135
    return obj;
});
// source line 138, bytecode pc 944
xs.Views.Mgr.registerDialog("EquipWithPanel", { "class": xs.Views.Dialog.DetailFade.EquipWithPanel, styleType: xs.Constant_DlgStyleType_Large });
// source line 144, bytecode pc 976
(xs.Views.Dialog.DetailFade.SkillNoPanel = {});
// source line 145, bytecode pc 1012
(xs.Views.Dialog.DetailFade.SkillNoPanel.create = function(params) {
    var param, obj;
    // source line 146, bytecode pc 18
    (param = (params || {}));
    // source line 147, bytecode pc 48
    this.assert((param.skillData != null), " params.skillData");
    // source line 148, bytecode pc 53
    (obj = null);
    // source line 149, bytecode pc 92
    (obj = xs.Views.Dialog.DetailDialogSkill.create(param));
    // source line 151, bytecode pc 120
    obj.setDisplayType({ flag: false });
    if ((param.backFlag != null)) {
        // source line 155, bytecode pc 159
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 157, bytecode pc 163
    return obj;
});
// source line 161, bytecode pc 1097
xs.Views.Mgr.registerDialog("SkillNoPanel", { "class": xs.Views.Dialog.DetailFade.SkillNoPanel, styleType: xs.Constant_DlgStyleType_Large });
// source line 164, bytecode pc 1129
(xs.Views.Dialog.DetailFade.SkillWithPanel = {});
// source line 165, bytecode pc 1165
(xs.Views.Dialog.DetailFade.SkillWithPanel.create = function(params) {
    var param, obj;
    // source line 166, bytecode pc 18
    (param = (params || {}));
    // source line 167, bytecode pc 48
    this.assert((param.skillData != null), " params.skillData");
    // source line 168, bytecode pc 53
    (obj = null);
    // source line 169, bytecode pc 92
    (obj = xs.Views.Dialog.DetailDialogSkill.create(param));
    if ((param.backFlag != null)) {
        // source line 173, bytecode pc 131
        obj.setBackToCurrDialog(param.backFlag);
    }
    // source line 175, bytecode pc 135
    return obj;
});
