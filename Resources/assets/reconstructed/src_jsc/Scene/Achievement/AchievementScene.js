// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Achievement/AchievementScene.js:1
// source line 454, bytecode pc 253
(xs.Scene.AchievementScene = cc.Scene.extend({
    NAME: "AchievementScene",
    ctor: function() {
    // source line 5, bytecode pc 22
    xs.log("AchievementScene ctor");
    // source line 6, bytecode pc 35
    this._super();
},
    onEnter: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 35
    xs.log("AchievementScene onEnter");
    // source line 13, bytecode pc 48
    this.requestService();
},
    requestCallback: function(data) {
    // source line 17, bytecode pc 22
    xs.log("requestCallback");
    // source line 18, bytecode pc 39
    this.initWithData(data);
},
    requestService: function() {
    var param;
    // source line 21, bytecode pc 22
    xs.log("requestService");
    // source line 22, bytecode pc 32
    (param = {});
    // source line 23, bytecode pc 72
    xs.Tools.Net.requestAtlasList(param, this.requestCallback, this);
},
    initWithData: function(data) {
    var visibleOrigin, visibleSize, _dataG, _dataS, _dataE, _dataGoddess, playerInfo;
    // source line 26, bytecode pc 24
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 27, bytecode pc 49
    (visibleSize = xs.director.getVisibleSize());
    // source line 44, bytecode pc 59
    (this.m_AllCellData = data);
    // source line 46, bytecode pc 77
    (this.m_AllCellData.atlas_list_local = {});
    // source line 47, bytecode pc 100
    xs.log("Constant_SortType_General_Default");
    // source line 48, bytecode pc 200
    (_dataG = xs.Profile.GameData.Mgr.getInstance().Atlas.getGeneral().sort(xs.Tools.Sort.by(xs.Constant_SortType_Altas_Default)));
    // source line 49, bytecode pc 220
    (this.m_AllCellData.atlas_list_local.general_list = _dataG);
    // source line 51, bytecode pc 243
    xs.log("Constant_SortType_Skill_Default");
    // source line 52, bytecode pc 343
    (_dataS = xs.Profile.GameData.Mgr.getInstance().Atlas.getSkill().sort(xs.Tools.Sort.by(xs.Constant_SortType_Altas_Default)));
    // source line 53, bytecode pc 363
    (this.m_AllCellData.atlas_list_local.skill_list = _dataS);
    // source line 54, bytecode pc 386
    xs.log("Constant_SortType_Equipment_Default");
    // source line 55, bytecode pc 486
    (_dataE = xs.Profile.GameData.Mgr.getInstance().Atlas.getEquipment().sort(xs.Tools.Sort.by(xs.Constant_SortType_Altas_Default)));
    // source line 56, bytecode pc 506
    (this.m_AllCellData.atlas_list_local.equipment_list = _dataE);
    // source line 59, bytecode pc 606
    (_dataGoddess = xs.Profile.GameData.Mgr.getInstance().Atlas.getGoddess().sort(xs.Tools.Sort.by(xs.Constant_SortType_Altas_Default)));
    // source line 60, bytecode pc 626
    (this.m_AllCellData.atlas_list_local.goddess_list = _dataGoddess);
    // source line 63, bytecode pc 656
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 64, bytecode pc 692
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 67, bytecode pc 748
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 69, bytecode pc 840
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 72, bytecode pc 899
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 75, bytecode pc 927
    (this._generalViewNode = cc.Node.create());
    // source line 76, bytecode pc 955
    (this._equipmentViewNode = cc.Node.create());
    // source line 77, bytecode pc 983
    (this._skillViewNode = cc.Node.create());
    // source line 78, bytecode pc 1011
    (this._goddessViewNode = cc.Node.create());
    // source line 84, bytecode pc 1069
    this.m_pageView.addPage(xs.Tools.String.createString("general"), this._generalViewNode);
    // source line 85, bytecode pc 1127
    this.m_pageView.addPage(xs.Tools.String.createString("skill"), this._skillViewNode);
    // source line 86, bytecode pc 1185
    this.m_pageView.addPage(xs.Tools.String.createString("str_ReplaceDialog_equ"), this._equipmentViewNode);
    // source line 87, bytecode pc 1243
    this.m_pageView.addPage(xs.Tools.String.createString("goddess_goddess"), this._goddessViewNode);
    if (this._onPageChange) {
        // source line 90, bytecode pc 1274
        this.onPageChange(this._onPageChange);
        // source line 91, bytecode pc 1299
        this.m_pageView.selectPage(this._onPageChange);
    } else {
        // source line 94, bytecode pc 1328
        this.onPageChange(xs.Constant_AchieveScene_General_Page);
        // source line 95, bytecode pc 1341
        this._createGeneralView();
    }
    // source line 98, bytecode pc 1361
    this.m_pageView.setListener(this);
    // source line 99, bytecode pc 1374
    this.setChildrenPriority();
},
    _createGeneralView: function() {
    var visibleOrigin, visibleSize, generalViewData, viewSize, cellCreateFunc;
    if ((this.m_generalView == null)) {
        // source line 103, bytecode pc 37
        (visibleOrigin = xs.director.getVisibleOrigin());
        // source line 104, bytecode pc 62
        (visibleSize = xs.director.getVisibleSize());
        // source line 106, bytecode pc 72
        (generalViewData = {});
        // source line 107, bytecode pc 82
        (viewSize = this._viewSize);
        // source line 109, bytecode pc 93
        (generalViewData.numberOfCellsInRow = 7);
        // source line 111, bytecode pc 123
        (generalViewData.numberOfCells = this.m_AllCellData.atlas_list_local.general_list.length);
        // source line 113, bytecode pc 155
        (generalViewData.cellSize = cc.size(800, 120));
        // source line 115, bytecode pc 180
        (generalViewData.allCellData = this.m_AllCellData.atlas_list_local.general_list);
        // source line 117, bytecode pc 213
        (generalViewData.allCellData.callBack = this.generalCellCallback.bind(this));
        // source line 118, bytecode pc 250
        xs.log(("generalViewData.allCellData.callBack:" + generalViewData.allCellData.callBack));
        // source line 119, bytecode pc 274
        (cellCreateFunc = xs.Views.HandbookCellOfGeneral.create);
        // source line 121, bytecode pc 315
        (this.m_dataAndDelegate = xs.Views.ListTableViewDelegateAndDataSource.create(generalViewData, cellCreateFunc));
        // source line 123, bytecode pc 338
        xs.MilliSecondLog("_createGeneralView 111");
        // source line 124, bytecode pc 382
        (this.m_generalView = xs.Views.ListTableView.create(this.m_dataAndDelegate, viewSize));
        // source line 125, bytecode pc 405
        xs.MilliSecondLog("_createGeneralView 222");
        // source line 127, bytecode pc 430
        this.m_generalView.setPosition(this._viewPosition);
        // source line 128, bytecode pc 471
        xs.Utils.Node.attachNodes(this._generalViewNode, this.m_generalView);
        // source line 131, bytecode pc 489
        (this._generalViewNode._tableView = this.m_generalView);
        // source line 132, bytecode pc 520
        this._addSortButton(this._generalViewNode, xs.Constant_FilterStyle_GeneralAtlas);
    }
},
    _addSortButton: function(target, sortType) {
    // source line 136, bytecode pc 22
    xs.log("_addSortButton");
    // source line 137, bytecode pc 61
    (target._SortController = xs.Views.SortController.create(sortType));
    // source line 138, bytecode pc 108
    target._SortController.setSortChgCallBack(this.onFilterChange.bind(target._tableView));
    // source line 139, bytecode pc 164
    target._SortController.setBaseTouchPriority(xs.Cfg.Scene.SkillScene.sortView.base.priority);
    // source line 140, bytecode pc 187
    target._SortController.setZOrder(10);
    // source line 144, bytecode pc 278
    xs.Utils.Node.attachNodes(this, target._SortController, { desc: "rt", offset: cc.p(-380, -95), sc: true });
},
    onFilterChange: function(filterType, filterResult) {
    // source line 149, bytecode pc 20
    this.onFilterChange(filterType, filterResult);
},
    _createSkillView: function() {
    var viewSize, visibleOrigin, visibleSize, skillViewData, skillCellCreateFunc;
    if ((this.m_skilllView == null)) {
        // source line 153, bytecode pc 22
        (viewSize = this._viewSize);
        // source line 154, bytecode pc 47
        (visibleOrigin = xs.director.getVisibleOrigin());
        // source line 155, bytecode pc 72
        (visibleSize = xs.director.getVisibleSize());
        // source line 157, bytecode pc 82
        (skillViewData = {});
        // source line 158, bytecode pc 106
        (skillCellCreateFunc = xs.Views.HandbookCellOfSkill.create);
        // source line 160, bytecode pc 117
        (skillViewData.numberOfCellsInRow = 7);
        // source line 162, bytecode pc 147
        (skillViewData.numberOfCells = this.m_AllCellData.atlas_list_local.skill_list.length);
        // source line 164, bytecode pc 179
        (skillViewData.cellSize = cc.size(800, 120));
        // source line 166, bytecode pc 204
        (skillViewData.allCellData = this.m_AllCellData.atlas_list_local.skill_list);
        // source line 168, bytecode pc 237
        (skillViewData.allCellData.callBack = this.skillCellCallback.bind(this));
        // source line 170, bytecode pc 278
        (this.m_skilldataAndDelegate = xs.Views.ListTableViewDelegateAndDataSource.create(skillViewData, skillCellCreateFunc));
        // source line 171, bytecode pc 322
        (this.m_skilllView = xs.Views.ListTableView.create(this.m_skilldataAndDelegate, viewSize));
        // source line 174, bytecode pc 347
        this.m_skilllView.setPosition(this._viewPosition);
        // source line 175, bytecode pc 388
        xs.Utils.Node.attachNodes(this._skillViewNode, this.m_skilllView);
        // source line 177, bytecode pc 406
        (this._skillViewNode._tableView = this.m_skilllView);
        // source line 178, bytecode pc 437
        this._addSortButton(this._skillViewNode, xs.Constant_FilterStyle_SkillAtlas);
    }
},
    _createEquipView: function() {
    var viewSize, visibleOrigin, visibleSize, equipmentViewData, weaponCellCreateFunc;
    if ((this.m_equipmentView == null)) {
        // source line 183, bytecode pc 22
        (viewSize = this._viewSize);
        // source line 184, bytecode pc 47
        (visibleOrigin = xs.director.getVisibleOrigin());
        // source line 185, bytecode pc 72
        (visibleSize = xs.director.getVisibleSize());
        // source line 187, bytecode pc 82
        (equipmentViewData = {});
        // source line 188, bytecode pc 106
        (weaponCellCreateFunc = xs.Views.HandbookCellOfWeapon.create);
        // source line 190, bytecode pc 117
        (equipmentViewData.numberOfCellsInRow = 7);
        // source line 192, bytecode pc 147
        (equipmentViewData.numberOfCells = this.m_AllCellData.atlas_list_local.equipment_list.length);
        // source line 194, bytecode pc 179
        (equipmentViewData.cellSize = cc.size(800, 120));
        // source line 196, bytecode pc 204
        (equipmentViewData.allCellData = this.m_AllCellData.atlas_list_local.equipment_list);
        // source line 198, bytecode pc 237
        (equipmentViewData.allCellData.callBack = this.weaponCellCallback.bind(this));
        // source line 200, bytecode pc 278
        (this.m_equimentdataAndDelegate = xs.Views.ListTableViewDelegateAndDataSource.create(equipmentViewData, weaponCellCreateFunc));
        // source line 201, bytecode pc 322
        (this.m_equipmentView = xs.Views.ListTableView.create(this.m_equimentdataAndDelegate, viewSize));
        // source line 204, bytecode pc 347
        this.m_equipmentView.setPosition(this._viewPosition);
        // source line 205, bytecode pc 388
        xs.Utils.Node.attachNodes(this._equipmentViewNode, this.m_equipmentView);
        // source line 207, bytecode pc 406
        (this._equipmentViewNode._tableView = this.m_equipmentView);
        // source line 208, bytecode pc 437
        this._addSortButton(this._equipmentViewNode, xs.Constant_FilterStyle_EquipmentAtLas);
    }
},
    _createGoddessView: function() {
    var visibleOrigin, visibleSize, goddessViewData, viewSize, cellCreateFunc;
    if ((this.m_goddesslView == null)) {
        // source line 213, bytecode pc 37
        (visibleOrigin = xs.director.getVisibleOrigin());
        // source line 214, bytecode pc 62
        (visibleSize = xs.director.getVisibleSize());
        // source line 216, bytecode pc 72
        (goddessViewData = {});
        // source line 217, bytecode pc 82
        (viewSize = this._viewSize);
        // source line 219, bytecode pc 93
        (goddessViewData.numberOfCellsInRow = 7);
        // source line 221, bytecode pc 123
        (goddessViewData.numberOfCells = this.m_AllCellData.atlas_list_local.goddess_list.length);
        // source line 223, bytecode pc 155
        (goddessViewData.cellSize = cc.size(800, 120));
        // source line 225, bytecode pc 180
        (goddessViewData.allCellData = this.m_AllCellData.atlas_list_local.goddess_list);
        // source line 227, bytecode pc 213
        (goddessViewData.allCellData.callBack = this.goddessCellCallback.bind(this));
        // source line 228, bytecode pc 237
        (cellCreateFunc = xs.Views.HandbookCellOfGoddess.create);
        // source line 229, bytecode pc 278
        (this.m_dataAndDelegate = xs.Views.ListTableViewDelegateAndDataSource.create(goddessViewData, cellCreateFunc));
        // source line 231, bytecode pc 322
        (this.m_goddesslView = xs.Views.ListTableView.create(this.m_dataAndDelegate, viewSize));
        // source line 232, bytecode pc 347
        this.m_goddesslView.setPosition(this._viewPosition);
        // source line 233, bytecode pc 388
        xs.Utils.Node.attachNodes(this._goddessViewNode, this.m_goddesslView);
        // source line 236, bytecode pc 406
        (this._goddessViewNode._tableView = this.m_goddesslView);
    }
},
    init: function(param) {
    var visibleOrigin, visibleSize, _tmpSize;
    // source line 241, bytecode pc 22
    xs.log("AchievementScene init");
    if (!this._super()) {
        // source line 244, bytecode pc 42
        return false;
    }
    // source line 247, bytecode pc 82
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Team);
    // source line 250, bytecode pc 119
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 252, bytecode pc 144
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 253, bytecode pc 169
    (visibleSize = xs.director.getVisibleSize());
    // source line 254, bytecode pc 206
    (_tmpSize = cc.size(800, (visibleSize.height - 160)));
    // source line 255, bytecode pc 216
    (this._viewSize = _tmpSize);
    // source line 256, bytecode pc 282
    (this._viewPosition = cc.p((((visibleSize.width / 2) - 390) - (xs.Views.MainMenuView.Width / 2)), 5));
    if (param) {
        // source line 258, bytecode pc 305
        (this._onPageChange = param.page);
    }
    // source line 260, bytecode pc 307
    return true;
},
    onPageChange: function(idx) {
    var str, str1, str2;
    // source line 263, bytecode pc 26
    xs.log(("onPageChange idx is " + idx));
    if ((this._generalViewNode._SortController != null)) {
        // source line 266, bytecode pc 69
        this._generalViewNode._SortController.setVisible(false);
    }
    if ((this._skillViewNode._SortController != null)) {
        // source line 269, bytecode pc 112
        this._skillViewNode._SortController.setVisible(false);
    }
    if ((this._equipmentViewNode._SortController != null)) {
        // source line 272, bytecode pc 155
        this._equipmentViewNode._SortController.setVisible(false);
    }
    if ((idx == xs.Constant_AchieveScene_Skill_Page)) {
        // source line 278, bytecode pc 303
        (str = xs.Tools.String.createString("ach_skillNum").convWithArgs([
    xs.Profile.GameData.Mgr.getInstance().Atlas.getOwnSkill(),
    this.m_AllCellData.atlas_list_local.skill_list.length
]));
        // source line 279, bytecode pc 320
        this.setLeftLabel(str);
        // source line 280, bytecode pc 333
        this._createSkillView();
        // source line 281, bytecode pc 358
        this._skillViewNode._SortController.setVisible(true);
    } else {
        if ((idx == xs.Constant_AchieveScene_Equipment_Page)) {
            // source line 285, bytecode pc 511
            (str = xs.Tools.String.createString("ach_equipNum").convWithArgs([
    xs.Profile.GameData.Mgr.getInstance().Atlas.getOwnEquipment(),
    this.m_AllCellData.atlas_list_local.equipment_list.length
]));
            // source line 287, bytecode pc 532
            cc.log(str);
            // source line 288, bytecode pc 549
            this.setLeftLabel(str);
            // source line 289, bytecode pc 562
            this._createEquipView();
            // source line 290, bytecode pc 587
            this._equipmentViewNode._SortController.setVisible(true);
        } else {
            if ((idx == xs.Constant_AchieveScene_General_Page)) {
                // source line 295, bytecode pc 740
                (str = xs.Tools.String.createString("ach_generalNum").convWithArgs([
    xs.Profile.GameData.Mgr.getInstance().Atlas.getNumOfOwnGeneral(),
    this.m_AllCellData.atlas_list_local.general_list.length
]));
                // source line 299, bytecode pc 855
                (str1 = xs.Tools.String.createString("ach_leadershipNum").convWithArgs([ xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerAbility() ]));
                // source line 303, bytecode pc 924
                (str2 = xs.Tools.String.createString("ach_surrenderNum").convWithArgs([ this.getNumofSurrendGeneral() ]));
                // source line 305, bytecode pc 949
                this.setLeftLabel(((str + str1) + str2));
                // source line 306, bytecode pc 962
                this._createGeneralView();
                // source line 307, bytecode pc 987
                this._generalViewNode._SortController.setVisible(true);
            } else {
                if ((idx == xs.Constant_AchieveScene_goddess_Page)) {
                    // source line 311, bytecode pc 1115
                    (str = xs.Tools.String.createString("goddess_havedGoddess").convWithArgs([ xs.Profile.GameData.Mgr.getInstance().Goddess.getHaveGoddessNum() ]));
                    // source line 315, bytecode pc 1219
                    (str1 = xs.Tools.String.createString("goddess_havedSkin").convWithArgs([ xs.Profile.GameData.Mgr.getInstance().Goddess.getHaveGoddessSkinNum() ]));
                    // source line 318, bytecode pc 1240
                    this.setLeftLabel((str + str1));
                    // source line 319, bytecode pc 1253
                    this._createGoddessView();
                }
            }
        }
    }
},
    getNumofSurrendGeneral: function() {
    var _num, i;
    // source line 324, bytecode pc 4
    (_num = 0);
    // source line 325, bytecode pc 31
    (i = (this.m_AllCellData.atlas_list_local.general_list.length - 1));
    while ((i >= 0)) {
        if ((this.m_AllCellData.atlas_list_local.general_list[i].atlas_status == xs.Models.Altas_Status_Surrender)) {
            // source line 327, bytecode pc 97
            (_num = (+_num + 1));
        }
        // source line 325, bytecode pc 112
        (i = (+i - 1));
    }
    // source line 330, bytecode pc 128
    return _num;
},
    generalCellCallback: function(cellData, index) {
    var _data, obj;
    // source line 363, bytecode pc 17
    (_data = cellData.getModel());
    if ((cellData.getAtlasStatus() != 0)) {
        // source line 373, bytecode pc 99
        (obj = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _data, type: "achieve_have" }));
    } else {
        // source line 378, bytecode pc 165
        (obj = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _data, type: "achieve_nothave" }));
    }
},
    skillCellCallback: function(cellData, index) {
    var _modelSkill, _skillCode, _data, obj;
    // source line 394, bytecode pc 31
    xs.log(("skillCellCallback:" + cellData.pk_id));
    if ((xs.useSkillPreview === true)) {
        // source line 398, bytecode pc 66
        (_modelSkill = cellData.getModel());
        // source line 399, bytecode pc 84
        (_skillCode = _modelSkill.getSkillCode());
        // source line 400, bytecode pc 111
        xs.log("getSkillCode", _skillCode);
        // source line 403, bytecode pc 148
        xs.Tools.Scene.gotoSkillPreviewFight(_skillCode, function() {
    // source line 404, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_53"));
    // source line 405, bytecode pc 86
    xs.Scene.Mgr.gotoLastScene();
});
    } else {
        // source line 410, bytecode pc 171
        (_data = cellData.getModel());
        // source line 413, bytecode pc 228
        (obj = xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: _data, flag: false }));
    }
},
    goddessCellCallback: function(cellData, index) {
    var _data;
    // source line 428, bytecode pc 9
    (_data = {});
    // source line 429, bytecode pc 32
    (_data.goddessList = cellData.getModel());
    // source line 430, bytecode pc 114
    (_data.goddessSkinList = xs.Profile.GameData.Mgr.getInstance().Goddess.getGoddessSkinListByGoddessId(cellData.getModel().getId()));
    // source line 432, bytecode pc 151
    xs.Views.Mgr.showDialogByName("GoddessAchievementDialog", _data);
},
    weaponCellCallback: function(cellData, index) {
    var _data, obj;
    // source line 437, bytecode pc 31
    xs.log(("weaponCellCallback:" + cellData.pk_id));
    // source line 438, bytecode pc 49
    (_data = cellData.getModel());
    // source line 441, bytecode pc 106
    (obj = xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: _data, flag: false }));
},
    setChildrenPriority: function() {
    // source line 449, bytecode pc 7
    (this.m_baseTouchPriority = 0);
},
    setLeftLabel: function(text) {
    var visibleSize, pos;
    // source line 455, bytecode pc 22
    xs.log("setLeftLabel");
    if ((this._leftLabel == null)) {
        // source line 457, bytecode pc 60
        (visibleSize = xs.director.getVisibleSize());
        // source line 458, bytecode pc 96
        (pos = cc.p(20, (visibleSize.height - 150)));
        // source line 459, bytecode pc 135
        (this._leftLabel = xs.Factorys.Label.createByStyleId("LS_paihangNomb"));
        // source line 460, bytecode pc 157
        this._leftLabel.setPosition(pos);
        // source line 461, bytecode pc 186
        this._leftLabel.setAnchorPoint(xs.ap_lb);
        // source line 463, bytecode pc 222
        xs.Utils.Node.attachNodes(this, this._leftLabel);
    }
    // source line 465, bytecode pc 249
    xs.log(("text is " + text));
    // source line 466, bytecode pc 271
    this._leftLabel.setString(text);
}
}));
// source line 470, bytecode pc 279
(xs.Scene.AchievementScene.create = function(param) {
    var view;
    // source line 471, bytecode pc 23
    (view = new xs.Scene.AchievementScene());
    if ((view && view.init(param))) {
        // source line 473, bytecode pc 59
        return view;
    }
    // source line 475, bytecode pc 84
    xs.assert(false, "can't create AchievementScene");
    // source line 476, bytecode pc 86
    return null;
});
// source line 482, bytecode pc 354
xs.Scene.Mgr.registerScene("AchievementScene", { "class": xs.Scene.AchievementScene, type: xs.Constant_SceneType_Challenge });
