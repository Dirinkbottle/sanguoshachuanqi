// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/TaskCell.js:1
// source line 368, bytecode pc 629
(xs.Views.Table.Cell.TaskCell = xs.Views.Table.Cell.BaseCell.extend({
    draw: function(ctx) {
    // source line 6, bytecode pc 16
    this._super(ctx);
},
    posCfg: { icon1_x: 190, step: 130 },
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_taskTitleLabel", id: "LS_wujiangInf1", stringId: "auto_name_509" },
        { tag: 2, type: "ls", name: "m_taskDescLabel", id: "LS_jinengInf1", stringId: "auto_name_510" },
        { tag: 3, type: "ls", name: "m_taskRewardLabel", id: "LS_jinengInf1", stringId: "auto_name_511" },
        { tag: 5, type: "ls", name: "m_taskRewardNumLabel_1", id: "LS_Lv", string: "100" },
        { tag: 7, type: "ls", name: "m_taskRewardNumLabel_2", id: "LS_Lv", string: "200" },
        {
            tag: 8,
            type: "ls",
            name: "m_taskProgressLabel",
            id: "LS_liebiaoInf2",
            string: "1/10",
            offset: cc.p(70, 0)
        },
        { tag: 21, type: "btn", name: "m_taskBtn", id: "Btn_btn3", stringId: "auto_name_101" }
    ],
    init: function(data) {
    if (!this._super()) {
        // source line 25, bytecode pc 19
        return false;
    }
    // source line 28, bytecode pc 29
    (this.taskData = data);
    // source line 30, bytecode pc 37
    (this.m_taskTitleLabel = null);
    // source line 31, bytecode pc 45
    (this.m_taskDescLabel = null);
    // source line 32, bytecode pc 53
    (this.m_taskRewardLabel = null);
    // source line 33, bytecode pc 61
    (this.m_taskRewardIcon_1 = null);
    // source line 34, bytecode pc 69
    (this.m_taskRewardIcon_2 = null);
    // source line 35, bytecode pc 77
    (this.m_taskRewardNumLabel_1 = null);
    // source line 36, bytecode pc 85
    (this.m_taskRewardNumLabel_2 = null);
    // source line 37, bytecode pc 93
    (this.m_taskProgressLabel = null);
    // source line 38, bytecode pc 101
    (this.m_taskIcon = null);
    // source line 39, bytecode pc 109
    (this.m_taskBtn = null);
    // source line 41, bytecode pc 145
    (this.ccbNode = cc.BuilderReader.load("ccb3/TaskCell.ccbi", this));
    // source line 42, bytecode pc 184
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 46, bytecode pc 268
    xs.Utils.Node.attachNodes(this, this.ccbNode, { offset: cc.p(0, 0), desc: "lb", sc: false });
    // source line 48, bytecode pc 311
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 50, bytecode pc 349
    (this.m_taskRewardIcon_1 = xs.Utils.getChildByTag(this.ccbNode, 4));
    // source line 51, bytecode pc 387
    (this.m_taskRewardIcon_2 = xs.Utils.getChildByTag(this.ccbNode, 6));
    // source line 52, bytecode pc 425
    (this.m_taskIcon = xs.Utils.getChildByTag(this.ccbNode, 20));
    // source line 54, bytecode pc 445
    this.m_taskBtn.setSwallowTouch(false);
    // source line 55, bytecode pc 465
    this.m_taskBtn.setZoomOnTouchDown(false);
    // source line 56, bytecode pc 503
    this.m_taskBtn.setOnClickCallBack(this.taskBtnClick.bind(this));
    // source line 57, bytecode pc 532
    this.m_taskProgressLabel.setAnchorPoint(xs.ap_rc);
    // source line 61, bytecode pc 534
    return true;
},
    onEnter: function() {
    // source line 65, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 70, bytecode pc 12
    this._super();
},
    updateCell: function(taskData) {
    var add, _iconView, _model, _btn_invisible, i, rewordDataView, _tag, p, newP, tmp, newBtn;
    if (taskData) {
        // source line 76, bytecode pc 17
        (this.taskData = taskData);
        // source line 77, bytecode pc 53
        this.m_taskTitleLabel.setString(this.taskData.getTitle());
        // source line 78, bytecode pc 89
        this.m_taskDescLabel.setString(this.taskData.getDesc());
        // source line 80, bytecode pc 124
        xs.log_xjf(("this.taskData.icon = " + this.taskData.icon));
        // source line 86, bytecode pc 193
        (add = xs.Factorys.Add.createWithJson({ id: this.taskData.icon, type: this.taskData.icon_type }));
        // source line 89, bytecode pc 211
        (_iconView = add.createHeadView());
        // source line 90, bytecode pc 251
        xs.Utils.Node.replaceChildSafe(this, this.m_taskIcon, _iconView);
        // source line 91, bytecode pc 261
        (this.m_taskIcon = _iconView);
        // source line 94, bytecode pc 308
        (_model = xs.Models.Game.Package.createWithJson(this.taskData.reword_list));
        // source line 96, bytecode pc 352
        (_btn_invisible = xs.Views.Button.Factory.Audio.createInvisibleWithParent(_iconView));
        // source line 101, bytecode pc 388
        _btn_invisible.setOnClickCallBack(function() {
    var _model_pack;
    // source line 99, bytecode pc 4
    (_model_pack = this);
    // source line 100, bytecode pc 52
    xs.Views.Mgr.showDialogByName("GetPropsDialog", _model_pack.getData());
}.bind(_model));
        // source line 103, bytecode pc 398
        (this.m_taskIconBtn = _btn_invisible);
        // source line 106, bytecode pc 403
        (i = 0);
        while ((i < _model.getData().length)) {
            // source line 107, bytecode pc 444
            (rewordDataView = xs.Views.Icon.IconPackage.create());
            // source line 108, bytecode pc 473
            rewordDataView.reloadRewordData(_model, i, 0.38);
            // source line 110, bytecode pc 510
            rewordDataView.attr({ ap: xs.ap_c });
            // source line 112, bytecode pc 519
            (_tag = (i + 1));
            // source line 113, bytecode pc 564
            xs.Utils.Node.replaceChildSafe(this, this[("m_taskRewardIcon_" + _tag)], rewordDataView);
            // source line 114, bytecode pc 579
            (this[("m_taskRewardIcon_" + _tag)] = rewordDataView);
            // source line 115, bytecode pc 632
            this[("m_taskRewardNumLabel_" + _tag)].setString(("" + _model.getData()[i].num));
            if ((_tag >= 2)) {
                // source line 122, bytecode pc 754
                (p = cc.p(((this[("m_taskRewardIcon_" + (_tag - 1))].getPosition().x + 40) + this[("m_taskRewardNumLabel_" + (_tag - 1))].getContentSize().width), this[("m_taskRewardIcon_" + _tag)].getPosition().y));
                // source line 124, bytecode pc 785
                (newP = cc.p(0, p.y));
                // source line 125, bytecode pc 790
                (tmp = 1);
                while ((p.x >= newP.x)) {
                    // source line 127, bytecode pc 845
                    (tmp = (+tmp + 1));
                    // source line 127, bytecode pc 864
                    (newP = cc.p((this.posCfg.icon1_x + (this.posCfg.step * +tmp)), newP.y));
                }
                // source line 130, bytecode pc 914
                this[("m_taskRewardIcon_" + _tag)].setPosition(newP);
                // source line 133, bytecode pc 994
                this[("m_taskRewardNumLabel_" + _tag)].setPosition(cc.p((newP.x + 24), this[("m_taskRewardNumLabel_" + _tag)].getPosition().y));
            }
            // source line 106, bytecode pc 1008
            (i = (+i + 1));
        }
        // source line 139, bytecode pc 1104
        this.m_taskProgressLabel.setString(((("" + this.taskData.getTaskValue()) + "/") + this.taskData.getTaskObjectiveNum()));
        // source line 141, bytecode pc 1109
        (newBtn = null);
        // source line 143, bytecode pc 1127
        switch (this.taskData.getStatus()) {
            case xs.Constant_TaskStatus_UnFinished:
            // source line 147, bytecode pc 1213
            (newBtn = xs.Views.Btn.create("Btn_btn3"));
            if ((xs.Utils.parseIntSafe(this.taskData.getScene()) == 0)) {
                // source line 150, bytecode pc 1307
                newBtn.setString(xs.Tools.String.createString("auto_name_512"));
                // source line 151, bytecode pc 1324
                newBtn.setEnabled(false);
            } else {
                // source line 154, bytecode pc 1377
                newBtn.setString(xs.Tools.String.createString("auto_name_513"));
                // source line 155, bytecode pc 1394
                newBtn.setEnabled(true);
            }
            break;
            case xs.Constant_TaskStatus_Finished_CanReceived:
            // source line 161, bytecode pc 1435
            (newBtn = xs.Views.Btn.create("Btn_TaskReceive"));
            // source line 162, bytecode pc 1483
            newBtn.setString(xs.Tools.String.createString("auto_name_101"));
            // source line 163, bytecode pc 1500
            newBtn.setEnabled(true);
            break;
            case xs.Constant_TaskStatus_Finished_Received:
            // source line 167, bytecode pc 1541
            (newBtn = xs.Views.Btn.create("Btn_btn3"));
            // source line 168, bytecode pc 1589
            newBtn.setString(xs.Tools.String.createString("auto_name_100"));
            // source line 169, bytecode pc 1606
            newBtn.setEnabled(false);
            break;
            default:
            // source line 173, bytecode pc 1640
            xs.warn("taskStatus err", "taskStatus err");
            // source line 174, bytecode pc 1661
            newBtn.setString("err");
            // source line 175, bytecode pc 1678
            newBtn.setEnabled(false);
            break;
        }
        if (newBtn) {
            // source line 179, bytecode pc 1736
            xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_taskBtn, newBtn);
            // source line 180, bytecode pc 1746
            (this.m_taskBtn = newBtn);
            // source line 181, bytecode pc 1766
            this.m_taskBtn.setSwallowTouch(false);
            // source line 182, bytecode pc 1786
            this.m_taskBtn.setZoomOnTouchDown(false);
            // source line 183, bytecode pc 1824
            this.m_taskBtn.setOnClickCallBack(this.taskBtnClick.bind(this));
        }
    }
},
    taskBtnClick: function() {
    // source line 189, bytecode pc 17
    switch (this.taskData.getStatus()) {
        case xs.Constant_TaskStatus_UnFinished:
        // source line 192, bytecode pc 98
        this.changeSceneWithTag(this.taskData.getScene());
        break;
        case xs.Constant_TaskStatus_Finished_CanReceived:
        // source line 197, bytecode pc 116
        this.requestTaskRecieve();
        break;
        case xs.Constant_TaskStatus_Finished_Received:
        // source line 201, bytecode pc 181
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_514"));
        break;
        default:
        // source line 205, bytecode pc 215
        xs.warn("taskStatus err", "taskStatus err");
        break;
    }
},
    requestTaskRecieve: function() {
    // source line 239, bytecode pc 145
    xs.Tools.Net.requestTaskRecieve({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    task_pk_id: this.taskData.pk_id,
    forcepush: true
}, function(data) {
    var param;
    if (data.result) {
        // source line 226, bytecode pc 22
        (param = {});
        // source line 227, bytecode pc 51
        (param.adds = (data.list || {}));
        // source line 228, bytecode pc 92
        (param.title = xs.Tools.String.createString("auto_name_128"));
        // source line 229, bytecode pc 129
        xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
    }
    // source line 233, bytecode pc 187
    xs.Utils.Notify.postNotification(xs.Constant_Notify_TaskReceive, { list: data.task_list });
}.bind(this), function(data) {
}, this);
},
    setBaseTouchPriority: function(priority) {
    // source line 244, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 245, bytecode pc 36
    this.m_taskBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 246, bytecode pc 63
    this.m_taskIconBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    changeSceneWithTag: function(tag) {
    var intTag, curHardMapId, mapInfo, m_bInHardChapter;
    // source line 251, bytecode pc 28
    (intTag = xs.Utils.parseIntSafe(tag));
    // source line 253, bytecode pc 40
    (xs.isTaskGoScene = true);
    // source line 254, bytecode pc 44
    switch (intTag) {
        case xs.Constant_SceneDef.ChaosScene:
        // source line 258, bytecode pc 442
        xs.Scene.Mgr.changeSceneByName("ChaosScene");
        break;
        case xs.Constant_SceneDef.LadderScene:
        // source line 262, bytecode pc 480
        xs.Scene.Mgr.changeSceneByName("LadderScene");
        break;
        case xs.Constant_SceneDef.ClimbLadderScene:
        // source line 266, bytecode pc 518
        xs.Scene.Mgr.changeSceneByName("ClimbLadderScene");
        break;
        case xs.Constant_SceneDef.TeamBuildScene:
        // source line 272, bytecode pc 556
        xs.Scene.Mgr.changeSceneByName("TeamBuildScene");
        break;
        case xs.Constant_SceneDef.AgaScene:
        // source line 276, bytecode pc 594
        xs.Scene.Mgr.changeSceneByName("AgaScene");
        break;
        case xs.Constant_SceneDef.EquipmentScene:
        // source line 280, bytecode pc 632
        xs.Scene.Mgr.changeSceneByName("EquipmentScene");
        break;
        case xs.Constant_SceneDef.SkillScene:
        // source line 284, bytecode pc 670
        xs.Scene.Mgr.changeSceneByName("SkillScene");
        break;
        case xs.Constant_SceneDef.CombatScene:
        // source line 288, bytecode pc 708
        xs.Scene.Mgr.changeSceneByName("CombatScene");
        break;
        case xs.Constant_SceneDef.BagScene:
        // source line 292, bytecode pc 746
        xs.Scene.Mgr.changeSceneByName("BagScene");
        break;
        case xs.Constant_SceneDef.MeridianScene:
        // source line 296, bytecode pc 764
        this.goToMeridianScene();
        break;
        case xs.Constant_SceneDef.FightChapters_nor:
        // source line 302, bytecode pc 804
        xs.Scene.Mgr.saveStatus("m_bInHardChapter", false);
        // source line 303, bytecode pc 837
        xs.Scene.Mgr.changeSceneByName("FightChapters");
        break;
        case xs.Constant_SceneDef.FightChapters_hard:
        // source line 307, bytecode pc 904
        (curHardMapId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerEliteMapStep());
        // source line 308, bytecode pc 959
        (mapInfo = xs.Profile.GameData.Mgr.getInstance().Map.getMapObjByMapId(curHardMapId));
        if (!mapInfo) {
            // source line 311, bytecode pc 973
            (m_bInHardChapter = true);
            // source line 312, bytecode pc 1029
            xs.Profile.GameData.Mgr.getInstance().Map.setCurMapId(curHardMapId, m_bInHardChapter);
            // source line 324, bytecode pc 1079
            xs.Tools.Net.requireChapterInfo({ map_id: curHardMapId }, function(jsonObj) {
    // source line 320, bytecode pc 56
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 321, bytecode pc 91
    xs.Scene.Mgr.saveStatus("m_bInHardChapter", true);
    // source line 322, bytecode pc 124
    xs.Scene.Mgr.changeSceneByName("FightChapters");
}, this);
        } else {
            // source line 328, bytecode pc 1119
            xs.Scene.Mgr.saveStatus("m_bInHardChapter", true);
            // source line 329, bytecode pc 1152
            xs.Scene.Mgr.changeSceneByName("FightChapters");
        }
        break;
        case xs.Constant_SceneDef.PartyMenuScene:
        // source line 336, bytecode pc 1190
        xs.Scene.Mgr.changeSceneByName("PartyMenuScene");
        break;
        case xs.Constant_SceneDef.WishingScene:
        // source line 340, bytecode pc 1222
        xs.Tools.Scene.gotoWishingScene();
        break;
        case xs.Constant_SceneDef.StoreScene_DuiJiu:
        // source line 346, bytecode pc 1260
        xs.Scene.Mgr.changeSceneByName("StoreScene");
        break;
        case xs.Constant_SceneDef.StoreScene_DaoJu:
        // source line 350, bytecode pc 1311
        xs.Scene.Mgr.changeSceneByName("StoreScene", { pageIdx: 1 });
        break;
        case xs.Constant_SceneDef.StoreScene_LiBao:
        // source line 354, bytecode pc 1363
        xs.Scene.Mgr.changeSceneByName("StoreScene", { pageIdx: 2 });
        break;
        case xs.Constant_SceneDef.GuildDialog:
        // source line 360, bytecode pc 1401
        xs.Views.Mgr.showDialogByName("GuildDialog");
        break;
        default:
        break;
    }
},
    goToMeridianScene: function() {
    var needLevel, _level, _data;
    // source line 369, bytecode pc 40
    (needLevel = xs.Tools.CfgData.getGlobalConf("MeridianConf").user_level);
    // source line 370, bytecode pc 102
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < needLevel)) {
        // source line 372, bytecode pc 198
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("auto_name_52", [ needLevel.toString() ]));
    } else {
        // source line 374, bytecode pc 254
        (_data = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getAllMeridianTopModel());
        if (xs.Utils.isEmpty(_data)) {
            // source line 376, bytecode pc 344
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MeridiansMain_21"));
            // source line 377, bytecode pc 346
            return void 0;
        }
        // source line 379, bytecode pc 383
        xs.Scene.Mgr.changeSceneByName("MeridiansMainScene", _data);
    }
}
}));
// source line 386, bytecode pc 665
(xs.Views.Table.Cell.TaskCell.create = function(data) {
    var ret;
    // source line 387, bytecode pc 33
    (ret = new xs.Views.Table.Cell.TaskCell());
    if ((ret && ret.init(data))) {
        // source line 389, bytecode pc 69
        return ret;
    }
    // source line 391, bytecode pc 98
    xs.assert(false, "xs.Views.TaskCell.create fail!", ret);
    // source line 392, bytecode pc 100
    return null;
});
