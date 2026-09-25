// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/ReplaceCardDialog.js:1
// source line 11, bytecode pc 21
(xs.Views.Dialog.ReplaceCardDialog_Type_General = 0);
// source line 12, bytecode pc 43
(xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral1 = 1);
// source line 13, bytecode pc 66
(xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral2 = 2);
// source line 14, bytecode pc 89
(xs.Views.Dialog.ReplaceCardDialog_Type_Skill1 = 3);
// source line 15, bytecode pc 112
(xs.Views.Dialog.ReplaceCardDialog_Type_Skill2 = 4);
// source line 16, bytecode pc 135
(xs.Views.Dialog.ReplaceCardDialog_Type_MTips = 5);
// source line 17, bytecode pc 158
(xs.Views.Dialog.ReplaceCardDialog_Type_Mount = 6);
// source line 18, bytecode pc 181
(xs.Views.Dialog.ReplaceCardDialog_Type_Armor = 7);
// source line 19, bytecode pc 204
(xs.Views.Dialog.ReplaceCardDialog_Type_Weapon = 8);
// source line 21, bytecode pc 227
(xs.Views.Dialog.ReplaceCardDialog_Type_Worship = 9);
// source line 23, bytecode pc 250
(xs.Views.Dialog.ReplaceCardDialog_Type_Buddy = 10);
// source line 25, bytecode pc 273
(xs.Views.Dialog.ReplaceCardDialog_Type_BattlePlayer = 11);
// source line 27, bytecode pc 296
(xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps = 12);
// source line 29, bytecode pc 319
(xs.Views.Dialog.ReplaceCardDialog_Type_HuLaoBattle = 13);
// source line 31, bytecode pc 342
(xs.Views.Dialog.ReplaceCardDialog_Type_DisplayCard = 14);
// source line 134, bytecode pc 526
(xs.Views.Dialog.ReplaceCardDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.ReplaceCardDialog",
    init: function(cardType) {
    var visibleSize, contentSize, offset_y, offset_x;
    if (!this._super()) {
        // source line 40, bytecode pc 19
        return false;
    }
    // source line 42, bytecode pc 42
    xs.log("xs.Views.Dialog.ReplaceCardDialog......init.......0");
    // source line 43, bytecode pc 50
    (this.m_baseTouchPriority = 0);
    // source line 44, bytecode pc 58
    (this.m_cardPanel = null);
    // source line 45, bytecode pc 66
    (this.m_cardList = null);
    // source line 46, bytecode pc 74
    (this.m_cardType = null);
    // source line 47, bytecode pc 82
    (this.m_replaceData = null);
    // source line 48, bytecode pc 90
    (this.m_listener = null);
    // source line 49, bytecode pc 98
    (this.m_successData = null);
    // source line 50, bytecode pc 106
    (this.m_onGeneralData = null);
    // source line 52, bytecode pc 116
    (this.m_cardType = cardType);
    // source line 54, bytecode pc 141
    (visibleSize = xs.director.getVisibleSize());
    // source line 56, bytecode pc 181
    (this.m_cardPanel = xs.Views.ReplaceCardPanel.create(this.m_cardType));
    // source line 57, bytecode pc 202
    (contentSize = this.m_cardPanel.getContentSize());
    // source line 58, bytecode pc 218
    (offset_y = (-contentSize.height / 2));
    // source line 59, bytecode pc 243
    (offset_x = -((visibleSize.width / 8) + contentSize.width));
    // source line 65, bytecode pc 329
    xs.Utils.Node.attachNodes(this, this.m_cardPanel, { desc: "c", sc: true, offset: { x: offset_x, y: offset_y } });
    // source line 69, bytecode pc 369
    (this.m_cardList = xs.Views.ReplaceCardList.create(this.m_cardType));
    // source line 70, bytecode pc 390
    (contentSize = this.m_cardPanel.getContentSize());
    // source line 71, bytecode pc 406
    (offset_y = (-contentSize.height / 2));
    // source line 72, bytecode pc 433
    (offset_x = ((visibleSize.width / 20) - (contentSize.width / 2)));
    // source line 78, bytecode pc 519
    xs.Utils.Node.attachNodes(this, this.m_cardList, { desc: "c", sc: true, offset: { x: offset_x, y: offset_y } });
    // source line 81, bytecode pc 539
    this.m_cardList.setListener(this);
    // source line 84, bytecode pc 562
    xs.log("xs.Views.Dialog.ReplaceCardDialog......init.....1");
    // source line 85, bytecode pc 564
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 88, bytecode pc 12
    this._super();
    // source line 90, bytecode pc 81
    xs.Guide.GuideMgr.endStepBySequence([ "40105", "70104", "150106", "160105" ]);
},
    setBaseTouchPriority: function(priority) {
    // source line 93, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 94, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 95, bytecode pc 54
    this.m_cardList.setBaseTouchPriority(this.m_baseTouchPriority);
},
    setReplaceData: function(data, isReload) {
    // source line 98, bytecode pc 9
    (this.m_replaceData = data);
    // source line 99, bytecode pc 34
    this.m_cardPanel.setCardData(this.m_replaceData);
    // source line 100, bytecode pc 63
    this.m_cardList.setReplaceData(this.m_replaceData, isReload);
},
    setOnGeneralData: function(data, isReload) {
    // source line 103, bytecode pc 9
    (this.m_onGeneralData = data);
    // source line 104, bytecode pc 38
    this.m_cardList.setOnGeneralData(this.m_onGeneralData, isReload);
},
    setHideData: function(arrayData, isReload) {
    // source line 107, bytecode pc 25
    this.m_cardList.setHideData(arrayData, isReload);
},
    setSuccessData: function(data) {
    // source line 110, bytecode pc 9
    (this.m_successData = data);
},
    setListener: function(listener) {
    // source line 113, bytecode pc 9
    (this.m_listener = listener);
},
    replaceSuccess: function() {
    // source line 117, bytecode pc 12
    this.ReplaceCardList_closeCallback();
},
    ReplaceCardList_closeCallback: function() {
    // source line 122, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if (this.m_listener) {
        // source line 124, bytecode pc 55
        this.m_listener.ReplaceCardDialog_close();
    }
},
    ReplaceCardList_replaceCallback: function(data) {
    // source line 129, bytecode pc 16
    this.setSuccessData(data);
    if (this.m_listener) {
        // source line 131, bytecode pc 56
        this.m_listener.ReplaceCardDialog_replaceCard(data, this.m_cardType);
    }
},
    getCardList: function() {
    // source line 135, bytecode pc 6
    return this.m_cardList;
}
}));
// source line 139, bytecode pc 557
(xs.Views.Dialog.ReplaceCardDialog.create = function(cardType) {
    var dialog;
    // source line 140, bytecode pc 28
    (dialog = new xs.Views.Dialog.ReplaceCardDialog());
    if ((dialog && dialog.init(cardType))) {
        // source line 142, bytecode pc 64
        return dialog;
    }
    // source line 144, bytecode pc 87
    xs.warn("xs.Views.Dialog.ReplaceCardDialog.create error！");
    // source line 145, bytecode pc 89
    return null;
});
// source line 148, bytecode pc 589
(xs.Views.Dialog.ReplaceCardDialog.cfg = {});
// source line 154, bytecode pc 669
xs.Views.Mgr.registerDialog("ReplaceCardDialog", { "class": xs.Views.Dialog.ReplaceCardDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 165, bytecode pc 732
(xs.Views.Dialog.ReplaceCardDialog.Plugins = {
    plugins: {},
    registerPlugin: function(cardType, plugin) {
    // source line 163, bytecode pc 13
    (this.plugins[cardType] = plugin);
},
    getPlugin: function(cardType) {
    // source line 167, bytecode pc 10
    return this.plugins[cardType];
}
});
// source line 227, bytecode pc 869
(xs.Views.Dialog.ReplaceCardDialog_Type_General_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 174, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 178, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_General);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 188, bytecode pc 180
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_General_Default
});
        // source line 190, bytecode pc 211
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 194, bytecode pc 315
        return xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 199, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceTeam");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 203, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 207, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectTeam");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 211, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_inUp");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 214, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceGeneralCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 218, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: data }));
    // source line 221, bytecode pc 82
    detailDialog.setDisplayType({ type: "achieve_have" });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 225, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goShop");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 228, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
});
// source line 232, bytecode pc 948
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_General, xs.Views.Dialog.ReplaceCardDialog_Type_General_Plugin);
// source line 304, bytecode pc 1105
(xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral1_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 237, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 241, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeGeneralLieutenant);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 253, bytecode pc 206
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_General_Default,
    pos: param.pos,
    general_pk_id: param.general_pk_id
});
        // source line 255, bytecode pc 237
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 259, bytecode pc 341
        return xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 264, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceLieutenant");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 268, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 272, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectLieutenant");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 276, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_btnSpecialEnabled: function(onGeneral, data) {
    var isUnique;
    if ((!onGeneral || !data)) {
        // source line 280, bytecode pc 20
        return false;
    }
    // source line 283, bytecode pc 101
    (isUnique = xs.Profile.GameData.Mgr.getInstance().Generals.isThisLieutenantCanBeSet(onGeneral, data.getPkId(), xs.Constant_Lieutenant_Pos_Second));
    // source line 284, bytecode pc 106
    return !isUnique;
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 287, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceGeneralSkillCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 291, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: data }));
    // source line 294, bytecode pc 82
    detailDialog.setDisplayType({ type: "achieve_have" });
},
    ReplaceCardList_Plugin_getPosition: function() {
    // source line 299, bytecode pc 10
    return xs.Constant_Lieutenant_Pos_Second;
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 302, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goShop");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 305, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
});
// source line 309, bytecode pc 1184
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral1, xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral1_Plugin);
// source line 380, bytecode pc 1341
(xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral2_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 314, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 317, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeGeneralLieutenant);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 329, bytecode pc 206
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_General_Default,
    pos: param.pos,
    general_pk_id: param.general_pk_id
});
        // source line 331, bytecode pc 237
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 335, bytecode pc 341
        return xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 340, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceLieutenant");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 344, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 348, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectLieutenant");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 352, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_btnSpecialEnabled: function(onGeneral, data) {
    var isUnique;
    if ((!onGeneral || !data)) {
        // source line 356, bytecode pc 20
        return false;
    }
    // source line 359, bytecode pc 101
    (isUnique = xs.Profile.GameData.Mgr.getInstance().Generals.isThisLieutenantCanBeSet(onGeneral, data.getPkId(), xs.Constant_Lieutenant_Pos_First));
    // source line 360, bytecode pc 106
    return !isUnique;
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 363, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceGeneralSkillCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 367, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: data }));
    // source line 370, bytecode pc 82
    detailDialog.setDisplayType({ type: "achieve_have" });
},
    ReplaceCardList_Plugin_getPosition: function() {
    // source line 375, bytecode pc 10
    return xs.Constant_Lieutenant_Pos_First;
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 378, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goShop");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 381, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
});
// source line 385, bytecode pc 1420
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral2, xs.Views.Dialog.ReplaceCardDialog_Type_AssistantGeneral2_Plugin);
// source line 461, bytecode pc 1577
(xs.Views.Dialog.ReplaceCardDialog_Type_Skill1_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 390, bytecode pc 14
    panel.showSkill();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 393, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeSkill);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    // source line 396, bytecode pc 22
    xs.log("ReplaceCardDialog_Type_Skill1_Plugin ReplaceCardList_Plugin_dataSource");
    if ((param.filterType && param.filterResult)) {
        // source line 406, bytecode pc 229
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Skills.getListWithoutNaturalSkillAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Skills, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_Skill_Default,
    pos: param.pos,
    general_pk_id: param.general_pk_id
});
        // source line 408, bytecode pc 260
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 412, bytecode pc 364
        return xs.Profile.GameData.Mgr.getInstance().Skills.getListWithoutNaturalSkillAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Skills, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 417, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceSkill");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 421, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 425, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectSkill");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 429, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_btnSpecialEnabled: function(onGeneral, data) {
    var isUnique;
    if ((!onGeneral || !data)) {
        // source line 433, bytecode pc 20
        return false;
    }
    // source line 436, bytecode pc 101
    (isUnique = xs.Profile.GameData.Mgr.getInstance().Generals.isThisSkillCanBeSet(onGeneral, data.getPkId(), xs.Constant_Skill_Pos_Second));
    // source line 437, bytecode pc 106
    return !isUnique;
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 440, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceSkillCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 444, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: data }));
    // source line 447, bytecode pc 78
    detailDialog.setDisplayType({ flag: false });
},
    ReplaceCardList_Plugin_getPosition: function() {
    // source line 452, bytecode pc 10
    return xs.Constant_Skill_Pos_Second;
},
    ReplaceCardList_Plugin_getAlter: function() {
    if (xs.Profile.Permission.isLock(xs.Constant_Permission_Chaos)) {
        // source line 456, bytecode pc 74
        return xs.Tools.String.createString("str_ReplaceDialog_goChapterSkill");
    } else {
        // source line 458, bytecode pc 112
        return xs.Tools.String.createString("str_ReplaceDialog_goChaos");
    }
},
    ReplaceCardList_Plugin_alterCallback: function() {
    if (xs.Profile.Permission.isLock(xs.Constant_Permission_Chaos)) {
        // source line 463, bytecode pc 74
        xs.Scene.Mgr.changeSceneByName("FightChapters");
    } else {
        // source line 465, bytecode pc 112
        xs.Scene.Mgr.changeSceneByName("ChaosScene");
    }
}
});
// source line 470, bytecode pc 1656
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_Skill1, xs.Views.Dialog.ReplaceCardDialog_Type_Skill1_Plugin);
// source line 537, bytecode pc 1803
(xs.Views.Dialog.ReplaceCardDialog_Type_Skill2_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 475, bytecode pc 14
    panel.showSkill();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 478, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeSkill);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 490, bytecode pc 206
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Skills.getListWithoutNaturalSkillAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Skills, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_Skill_Default,
    pos: param.pos,
    general_pk_id: param.general_pk_id
});
        // source line 492, bytecode pc 237
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 496, bytecode pc 341
        return xs.Profile.GameData.Mgr.getInstance().Skills.getListWithoutNaturalSkillAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Skills, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 501, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceSkill");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 505, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 509, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectSkill");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 513, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 516, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceSkillCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 520, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: data }));
    // source line 523, bytecode pc 78
    detailDialog.setDisplayType({ flag: false });
},
    ReplaceCardList_Plugin_getPosition: function() {
    // source line 528, bytecode pc 10
    return xs.Constant_Skill_Pos_First;
},
    ReplaceCardList_Plugin_getAlter: function() {
    if (xs.Profile.Permission.isLock(xs.Constant_Permission_Chaos)) {
        // source line 532, bytecode pc 74
        return xs.Tools.String.createString("str_ReplaceDialog_goChapterSkill");
    } else {
        // source line 534, bytecode pc 112
        return xs.Tools.String.createString("str_ReplaceDialog_goChaos");
    }
},
    ReplaceCardList_Plugin_alterCallback: function() {
    if (xs.Profile.Permission.isLock(xs.Constant_Permission_Chaos)) {
        // source line 539, bytecode pc 74
        xs.Scene.Mgr.changeSceneByName("FightChapters");
    } else {
        // source line 541, bytecode pc 112
        xs.Scene.Mgr.changeSceneByName("ChaosScene");
    }
}
});
// source line 546, bytecode pc 1882
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_Skill2, xs.Views.Dialog.ReplaceCardDialog_Type_Skill2_Plugin);
// source line 603, bytecode pc 2019
(xs.Views.Dialog.ReplaceCardDialog_Type_MTips_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 551, bytecode pc 14
    panel.showKit();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 554, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeEquipMent);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 564, bytecode pc 180
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Equipments.getKitListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_Equipment_Default
});
        // source line 566, bytecode pc 211
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 570, bytecode pc 315
        return xs.Profile.GameData.Mgr.getInstance().Equipments.getKitListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 575, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceKit");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 579, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 583, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectKit");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 587, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 590, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceEquipmentCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 594, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: data }));
    // source line 597, bytecode pc 78
    detailDialog.setDisplayType({ flag: false });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 601, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goChapterEqu");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 604, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}
});
// source line 608, bytecode pc 2098
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_MTips, xs.Views.Dialog.ReplaceCardDialog_Type_MTips_Plugin);
// source line 665, bytecode pc 2235
(xs.Views.Dialog.ReplaceCardDialog_Type_Mount_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 613, bytecode pc 14
    panel.showMount();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 616, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeEquipMent);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 626, bytecode pc 180
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Equipments.getMountListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_Equipment_Default
});
        // source line 628, bytecode pc 211
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 632, bytecode pc 315
        return xs.Profile.GameData.Mgr.getInstance().Equipments.getMountListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 637, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceMount");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 641, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 645, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectMount");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 649, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 652, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceEquipmentCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 656, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: data }));
    // source line 659, bytecode pc 78
    detailDialog.setDisplayType({ flag: false });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 663, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goChapterEqu");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 666, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}
});
// source line 670, bytecode pc 2314
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_Mount, xs.Views.Dialog.ReplaceCardDialog_Type_Mount_Plugin);
// source line 728, bytecode pc 2451
(xs.Views.Dialog.ReplaceCardDialog_Type_Armor_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 675, bytecode pc 14
    panel.showArmor();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 678, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeEquipMent);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 688, bytecode pc 180
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Equipments.getArmorListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_Equipment_Default
});
        // source line 690, bytecode pc 211
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 694, bytecode pc 315
        return xs.Profile.GameData.Mgr.getInstance().Equipments.getArmorListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 700, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceArmor");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 704, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 708, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectArmor");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 712, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 715, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceEquipmentCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 719, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: data }));
    // source line 722, bytecode pc 78
    detailDialog.setDisplayType({ flag: false });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 726, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goChapterEqu");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 729, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}
});
// source line 733, bytecode pc 2530
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_Armor, xs.Views.Dialog.ReplaceCardDialog_Type_Armor_Plugin);
// source line 790, bytecode pc 2667
(xs.Views.Dialog.ReplaceCardDialog_Type_Weapon_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 738, bytecode pc 14
    panel.showWeapon();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 741, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeEquipMent);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 751, bytecode pc 180
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Equipments.getWeaponListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_Equipment_Default
});
        // source line 753, bytecode pc 211
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 757, bytecode pc 315
        return xs.Profile.GameData.Mgr.getInstance().Equipments.getWeaponListWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 762, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceWeapon");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 766, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 770, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectWeapon");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 774, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_equ");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 777, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceEquipmentCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 781, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: data }));
    // source line 784, bytecode pc 78
    detailDialog.setDisplayType({ flag: false });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 788, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goChapterEqu");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 791, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}
});
// source line 795, bytecode pc 2746
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_Weapon, xs.Views.Dialog.ReplaceCardDialog_Type_Weapon_Plugin);
// source line 852, bytecode pc 2883
(xs.Views.Dialog.ReplaceCardDialog_Type_Worship_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 800, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 803, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_General);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 812, bytecode pc 165
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndNotInLieutenantAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType
});
        // source line 815, bytecode pc 207
        return xs.Tools.Filter.filterData(filterParam).reverse();
    } else {
        // source line 819, bytecode pc 311
        return xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndNotInLieutenantAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 824, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceOblation");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 828, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 832, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectOblation");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 836, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_select");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 839, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceGeneralCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 843, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: data }));
    // source line 846, bytecode pc 82
    detailDialog.setDisplayType({ type: "achieve_nothave" });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 850, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goShop");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 853, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
});
// source line 857, bytecode pc 2962
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_Worship, xs.Views.Dialog.ReplaceCardDialog_Type_Worship_Plugin);
// source line 918, bytecode pc 3099
(xs.Views.Dialog.ReplaceCardDialog_Type_Buddy_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 863, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 868, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_General);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 879, bytecode pc 180
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_General_Default
});
        // source line 881, bytecode pc 211
        return xs.Tools.Filter.filterData(filterParam);
    } else {
        // source line 885, bytecode pc 315
        return xs.Profile.GameData.Mgr.getInstance().Generals.getListNotInTeamAndPkId.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList);
    }
},
    ReplaceCardList_Plugin_title: function() {
    // source line 890, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceBuddy");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 894, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 898, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectBuddy");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 902, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_inUp");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 905, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceGeneralSkillCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 909, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: data }));
    // source line 912, bytecode pc 82
    detailDialog.setDisplayType({ type: "achieve_have" });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 916, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_goShop");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 919, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("StoreScene");
}
});
// source line 923, bytecode pc 3178
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_Buddy, xs.Views.Dialog.ReplaceCardDialog_Type_Buddy_Plugin);
// source line 984, bytecode pc 3315
(xs.Views.Dialog.ReplaceCardDialog_Type_BattlePlayer_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 929, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 934, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_ChangeBattlePlayer);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    // source line 939, bytecode pc 30
    xs.dump("ReplaceCardList_Plugin_dataSource param", param);
    if ((param.filterType && param.filterResult)) {
        // source line 947, bytecode pc 233
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getPlayerListNotInPlayerId.apply(xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar(), param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_BattlePlayer_Default
});
    } else {
        // source line 954, bytecode pc 388
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getPlayerListNotInPlayerId.apply(xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar(), param.uncludeList),
    sortConditions: xs.Constant_SortType_BattlePlayer_Default
});
    }
    // source line 957, bytecode pc 419
    return xs.Tools.Filter.filterData(filterParam);
},
    ReplaceCardList_Plugin_title: function() {
    // source line 961, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replacePlayer");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 965, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 969, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectPlayer");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 973, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_inUp");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 976, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceBattlePlayerCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 982, bytecode pc 32
    return xs.Tools.String.createString("str_goTop");
},
    ReplaceCardList_Plugin_alterCallback: function(tableView) {
    // source line 988, bytecode pc 102
    tableView.setContentOffset(cc.p(tableView.getContentOffset().x, (tableView.getViewSize().height - tableView.getContainer().getContentSize().height)));
}
});
// source line 994, bytecode pc 3394
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_BattlePlayer, xs.Views.Dialog.ReplaceCardDialog_Type_BattlePlayer_Plugin);
// source line 1056, bytecode pc 3531
(xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 999, bytecode pc 14
    panel.showArmor();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 1002, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_Equipment);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    // source line 1005, bytecode pc 4
    (filterParam = null);
    // source line 1006, bytecode pc 31
    xs.dump("ReplaceCardDialog_Type_GemsEps_Plugin param", param);
    if ((param.filterType && param.filterResult)) {
        // source line 1014, bytecode pc 212
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Equipments.getGradeGodEpsWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_Equipment_DefaultWithIsEquipped
});
    } else {
        // source line 1020, bytecode pc 319
        (filterParam = xs.Profile.GameData.Mgr.getInstance().Equipments.getGradeGodEpsWithoutPkId.apply(xs.Profile.GameData.Mgr.getInstance().Equipments, param.uncludeList));
    }
    // source line 1024, bytecode pc 350
    return xs.Tools.Filter.filterData(filterParam);
},
    ReplaceCardList_Plugin_title: function() {
    // source line 1028, bytecode pc 32
    return xs.Tools.String.createString("1070910020");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 1032, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 1036, bytecode pc 32
    return xs.Tools.String.createString("1070910023");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 1040, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_select");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 1043, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceEquipmentCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 1047, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: data }));
    // source line 1050, bytecode pc 78
    detailDialog.setDisplayType({ flag: false });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 1054, bytecode pc 32
    return xs.Tools.String.createString("gems_str_goStoreEqu");
},
    ReplaceCardList_Plugin_alterCallback: function() {
    // source line 1057, bytecode pc 26
    xs.Views.Dialog.gotoStoreScene();
}
});
// source line 1061, bytecode pc 3557
(xs.Views.Dialog.gotoStoreScene = function() {
    var storeItemView;
    // source line 1063, bytecode pc 4
    (storeItemView = 1);
    // source line 1064, bytecode pc 47
    (storeScene = xs.Scene.Mgr.changeSceneByName("StoreScene"));
    // source line 1065, bytecode pc 73
    storeScene.pageView.selectPage(storeItemView);
});
// source line 1068, bytecode pc 3636
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps, xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps_Plugin);
// source line 1129, bytecode pc 3773
(xs.Views.Dialog.ReplaceCardDialog_Type_HuLaoBattle_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 1076, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 1081, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_General);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    if ((param.filterType && param.filterResult)) {
        // source line 1093, bytecode pc 94
        (filterParam = {
    data: param.uncludeList,
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_General_Default
});
    } else {
        // source line 1098, bytecode pc 137
        (filterParam = { data: param.uncludeList, sortConditions: xs.Constant_SortType_General_Default });
    }
    // source line 1102, bytecode pc 146
    return filterParam.data;
},
    ReplaceCardList_Plugin_title: function() {
    // source line 1106, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replaceTeam");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 1110, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 1114, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_selectTeam");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 1118, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_inUp");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 1121, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceHULaoBattleGeneralCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 1127, bytecode pc 32
    return xs.Tools.String.createString("str_goTop");
},
    ReplaceCardList_Plugin_alterCallback: function(tableView) {
    // source line 1133, bytecode pc 102
    tableView.setContentOffset(cc.p(tableView.getContentOffset().x, (tableView.getViewSize().height - tableView.getContainer().getContentSize().height)));
}
});
// source line 1139, bytecode pc 3852
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_HuLaoBattle, xs.Views.Dialog.ReplaceCardDialog_Type_HuLaoBattle_Plugin);
// source line 1223, bytecode pc 3989
(xs.Views.Dialog.ReplaceCardDialog_Type_DisplayCard_Plugin = {
    ReplaceCardPanel_Plugin_updateView: function(panel) {
    // source line 1145, bytecode pc 14
    panel.showGeneral();
},
    ReplaceCardList_Plugin_sortController: function() {
    // source line 1150, bytecode pc 37
    return xs.Views.SortController.create(xs.Constant_FilterStyle_DisplayGenerals);
},
    ReplaceCardList_Plugin_dataSource: function(param) {
    var filterParam;
    // source line 1156, bytecode pc 12
    switch (param.filterResult) {
        case xs.Constant_FilterIdx_God:
        // source line 1158, bytecode pc 111
        (param.filterResult = xs.Constant_Grade_God);
        break;
        case xs.Constant_FilterIdx_Gold:
        // source line 1161, bytecode pc 135
        (param.filterResult = xs.Constant_Grade_Gold);
        break;
        case xs.Constant_FilterIdx_Silver:
        // source line 1164, bytecode pc 159
        (param.filterResult = xs.Constant_Grade_Silver);
        break;
        case xs.Constant_FilterIdx_Copper:
        // source line 1167, bytecode pc 183
        (param.filterResult = xs.Constant_Grade_Copper);
        break;
        case xs.Constant_FilterIdx_Demon:
        // source line 1170, bytecode pc 207
        (param.filterResult = xs.Constant_Grade_Demon);
        break;
        default:
        break;
    }
    if ((param.filterType && param.filterResult)) {
        // source line 1180, bytecode pc 393
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralInAll.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList),
    result: param.filterResult,
    filterConditions: param.filterType,
    sortConditions: xs.Constant_SortType_General_Default
});
    } else {
        // source line 1187, bytecode pc 526
        (filterParam = {
    data: xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralInAll.apply(xs.Profile.GameData.Mgr.getInstance().Generals, param.uncludeList),
    sortConditions: xs.Constant_SortType_General_Default
});
    }
    // source line 1191, bytecode pc 557
    return xs.Tools.Filter.filterData(filterParam);
},
    ReplaceCardList_Plugin_title: function() {
    // source line 1195, bytecode pc 32
    return xs.Tools.String.createString("str_RepDialog_repDisCard");
},
    ReplaceCardList_Plugin_btnStr: function() {
    // source line 1199, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_replace");
},
    ReplaceCardList_Plugin_title_ep: function() {
    // source line 1203, bytecode pc 32
    return xs.Tools.String.createString("str_RepDialog_selDisCard");
},
    ReplaceCardList_Plugin_btnStr_ep: function() {
    // source line 1207, bytecode pc 32
    return xs.Tools.String.createString("str_ReplaceDialog_inUp");
},
    ReplaceCardList_Plugin_tableViewCell: function() {
    // source line 1210, bytecode pc 36
    return xs.Views.Table.Cell.ReplaceGeneralCell.create();
},
    ReplaceCardList_Plugin_showDetail: function(data) {
    var detailDialog;
    // source line 1214, bytecode pc 50
    (detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: data }));
    // source line 1217, bytecode pc 82
    detailDialog.setDisplayType({ type: "achieve_have" });
},
    ReplaceCardList_Plugin_getAlter: function() {
    // source line 1221, bytecode pc 32
    return xs.Tools.String.createString("str_goTop");
},
    ReplaceCardList_Plugin_alterCallback: function(tableView) {
    // source line 1227, bytecode pc 102
    tableView.setContentOffset(cc.p(tableView.getContentOffset().x, (tableView.getViewSize().height - tableView.getContainer().getContentSize().height)));
}
});
// source line 1233, bytecode pc 4068
xs.Views.Dialog.ReplaceCardDialog.Plugins.registerPlugin(xs.Views.Dialog.ReplaceCardDialog_Type_DisplayCard, xs.Views.Dialog.ReplaceCardDialog_Type_DisplayCard_Plugin);
