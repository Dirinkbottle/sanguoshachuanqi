// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Chaos/ChaosHomeView.js:1
// source line 347, bytecode pc 567
(xs.Views.ChaosHomeView = cc.Layer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 58
    (this.m_oneStepComposeButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 20, bytecode pc 101
    this.m_oneStepComposeButton.setAnchorPoint(cc.p(1, 0.5));
    // source line 21, bytecode pc 152
    this.m_oneStepComposeButton.setString(xs.Tools.String.createString("GemsOneStepCompose"));
    // source line 22, bytecode pc 179
    this.m_oneStepComposeButton.addCallBackForEvent(this, this.OneStepComposeCallBack);
    // source line 28, bytecode pc 288
    xs.Utils.Node.attachNodes(this, this.m_oneStepComposeButton, { desc: "rt", sc: true, offset: { x: (-xs.Views.MainMenuView.Width - 30), y: -280 } });
    // source line 32, bytecode pc 313
    (visibleSize = xs.director.getVisibleSize());
    // source line 33, bytecode pc 329
    this.setBaseTouchPriority(-1);
    // source line 36, bytecode pc 353
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 37, bytecode pc 368
    this.setTouchEnabled(true);
    // source line 38, bytecode pc 370
    return true;
},
    OneStepComposeCallBack: function() {
    var skill_list, i;
    // source line 42, bytecode pc 8
    (skill_list = []);
    // source line 43, bytecode pc 13
    (i = 0);
    while ((i < this.skillPieceArray.length)) {
        if (this.skillPieceArray[i].canCompose()) {
            // source line 45, bytecode pc 82
            skill_list.push(this.skillPieceArray[i].getId());
        }
        // source line 43, bytecode pc 96
        (i = (+i + 1));
    }
    if ((skill_list.length == 0)) {
        // source line 50, bytecode pc 193
        xs.Views.Mgr.showToast(xs.Tools.String.createString("NotHaveEnoughPiece"));
        // source line 51, bytecode pc 195
        return void 0;
    }
    // source line 73, bytecode pc 327
    xs.Tools.Net.requestOneStepSkillCompose({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    skill_ids: skill_list
}, function(data) {
    var param;
    if (data.return_info) {
        if (!xs.Utils.isEmpty(data.return_info.add_list)) {
            // source line 61, bytecode pc 63
            (param = {});
            // source line 62, bytecode pc 85
            (param.adds = data.return_info.add_list);
            // source line 63, bytecode pc 126
            (param.title = xs.Tools.String.createString("gems_str_ComposeOK"));
            // source line 64, bytecode pc 163
            xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
            // source line 65, bytecode pc 206
            xs.Tools.Net.requestChaosSkillPiece({}, this.updateView, this);
            // source line 68, bytecode pc 254
            xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        }
    }
}.bind(this), function() {
}, this);
},
    onEnterTransitionDidFinish: function() {
    // source line 80, bytecode pc 12
    this._super();
    try {
        // source line 84, bytecode pc 56
        xs.Tools.Net.requestChaosSkillPiece({}, this.updateView, this);
    } catch (e) {
        // source line 87, bytecode pc 92
        xs.warnException(e);
        /* TODO_BYTECODE pc=93 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    onExitTransitionDidStart: function() {
    // source line 94, bytecode pc 12
    this._super();
    // source line 95, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_ChaosCountDown);
},
    updateView: function(jsonObj) {
    var bookArray, skillPiecesInfo, i, _model, skillPiece, teachers;
    // source line 99, bytecode pc 11
    (this.skillPieceArray = []);
    // source line 100, bytecode pc 20
    (bookArray = []);
    // source line 102, bytecode pc 37
    (skillPiecesInfo = jsonObj.return_info.piece_info);
    // source line 103, bytecode pc 42
    (i = 0);
    while ((i < skillPiecesInfo.length)) {
        // source line 104, bytecode pc 86
        (_model = xs.Models.SkillPiece.createWithJson(skillPiecesInfo[i]));
        if (_model.isExpBook()) {
            // source line 106, bytecode pc 124
            bookArray.push(_model);
        } else {
            // source line 108, bytecode pc 151
            this.skillPieceArray.push(_model);
        }
        // source line 111, bytecode pc 215
        (skillPiece = xs.Profile.GameData.Mgr.getInstance().SkillPieces.getByPkId(skillPiecesInfo[i].id));
        if (skillPiece) {
            // source line 113, bytecode pc 251
            skillPiece.setNum(skillPiecesInfo[i].num);
        }
        // source line 103, bytecode pc 265
        (i = (+i + 1));
    }
    // source line 116, bytecode pc 312
    (this.skillPieceArray = this.skillPieceArray.concat(bookArray));
    // source line 118, bytecode pc 321
    (teachers = []);
    // source line 119, bytecode pc 326
    (i = 0);
    while ((i < this.skillPieceArray.length)) {
        // source line 120, bytecode pc 396
        teachers.push(xs.Models.General.createWithBase(this.skillPieceArray[i].getTeacher()));
        // source line 119, bytecode pc 410
        (i = (+i + 1));
    }
    // source line 122, bytecode pc 450
    this.skillPieceArray.reverse();
    if (!this.avoidWarCcb) {
        // source line 126, bytecode pc 496
        (this.avoidWarCcb = xs.ccb_reader.load("ccb3/0_8_3_TipInfoBar.ccbi"));
        // source line 127, bytecode pc 583
        xs.Utils.Node.attachNodes(this, this.avoidWarCcb, { desc: "lt", offset: cc.p(130, -110), sc: true });
        // source line 128, bytecode pc 631
        xs.Utils.UI.replaceCcbByCfg(this.avoidWarCcb, this.cfg.avoidWarCfg, this);
        // source line 129, bytecode pc 671
        (this.avoidWarBtn = xs.Views.Btn.createInvisibleWithParent(this.avoidWar));
        // source line 130, bytecode pc 706
        this.avoidWarBtn.setTouchPriority(this.cfg.avoidWar_btn.priority);
        // source line 134, bytecode pc 743
        this.avoidWarBtn.setOnClickCallBack(function() {
    // source line 133, bytecode pc 32
    xs.Views.Mgr.showDialogByName("AvoidWarDialog");
}.bind(this));
        // source line 136, bytecode pc 790
        xs.Utils.Notify.addObserver(this, this.updateAvoidWarCountDown, xs.Constant_Notify_ModelChange_ChaosCountDown);
    }
    if (xs.isVersionForPublish) {
        if (this.m_timeNum) {
            // source line 141, bytecode pc 836
            this.m_timeNum.setVisible(false);
        }
        if (this.m_timeStr) {
            // source line 144, bytecode pc 867
            this.m_timeStr.setVisible(false);
        }
        if (this.avoidWar) {
            // source line 147, bytecode pc 898
            this.avoidWar.setVisible(false);
        }
        if (this.m_NoWarPic) {
            // source line 150, bytecode pc 929
            this.m_NoWarPic.setVisible(false);
        }
    } else {
        // source line 154, bytecode pc 981
        xs.Utils.Notify.addObserver(this, this.updateAvoidWarCountDown, xs.Constant_Notify_ModelChange_ChaosCountDown);
    }
    if (this.skillPiecesShow) {
        // source line 158, bytecode pc 1026
        xs.Utils.Node.removeFromParentSafe(this.skillPiecesShow);
    }
    // source line 160, bytecode pc 1070
    (this.skillPiecesShow = xs.Views.SkillPieceIconShow.create(this.skillPieceArray, teachers));
    // source line 161, bytecode pc 1112
    this.skillPiecesShow.setBaseTouchPriority((this.m_baseTouchPriority + this.cfg.skillPiecesShow.priority));
    // source line 162, bytecode pc 1148
    xs.Utils.Node.attachNodes(this, this.skillPiecesShow);
    if (this.skillPiecesShow) {
        // source line 165, bytecode pc 1190
        this.updateSkillPiece(this.skillPiecesShow.getCurSelect());
    }
    // source line 169, bytecode pc 1229
    (this.skillPieceModel = xs.Scene.Mgr.loadStatusAndClear("skillPieceModel"));
    if (this.skillPieceModel) {
        // source line 171, bytecode pc 1245
        (i = 0);
        while ((i < this.skillPieceArray.length)) {
            if ((this.skillPieceArray[i].getId() === this.skillPieceModel.getId())) {
                // source line 173, bytecode pc 1317
                this.skillPiecesShow.setCurSelectByIdx(i);
            }
            // source line 171, bytecode pc 1331
            (i = (+i + 1));
        }
    }
    // source line 178, bytecode pc 1395
    xs.Guide.GuideMgr.endStepBySequence([ "130104" ]);
},
    updateSkillPiece: function(skillPiece) {
    var visibleSize, i, dailyAdventure;
    // source line 182, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    if (!skillPiece) {
        // source line 185, bytecode pc 66
        (skillPiece = this.skillPiecesShow.getCurSelect());
    } else {
        // source line 187, bytecode pc 76
        (i = 0);
        while ((i < this.skillPieceArray.length)) {
            if ((skillPiece.getId() === this.skillPieceArray[i].getId())) {
                // source line 189, bytecode pc 149
                (this.skillPieceArray[i] = skillPiece);
                break;
            }
            // source line 187, bytecode pc 168
            (i = (+i + 1));
        }
    }
    if (!this.skillPieceCCb) {
        // source line 197, bytecode pc 236
        (this.skillPieceCCb = xs.ccb_reader.load("ccb3/0_8_3_SkillPiece.ccbi"));
        // source line 199, bytecode pc 330
        xs.Utils.Node.attachNodes(this, this.skillPieceCCb, { desc: "cb", offset: cc.p(0, (visibleSize.height / 10)), sc: true });
        // source line 201, bytecode pc 389
        (this.selectSkillPiece = xs.Utils.replaceIcon(this.skillPieceCCb, 10, skillPiece.createIcon_GradeAndPieceNameAndNumMax()));
        // source line 203, bytecode pc 429
        (this.iconBtn = xs.Views.Btn.createInvisibleWithParent(this.selectSkillPiece));
        // source line 204, bytecode pc 471
        this.iconBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.skillPieceIcon.priority));
        // source line 207, bytecode pc 542
        (this.chaosBtn = xs.Utils.replaceButton(this.skillPieceCCb, 11, xs.Views.Btn.create("Btn_Snatch")));
    } else {
        // source line 209, bytecode pc 575
        this.selectSkillPiece.reloadData(skillPiece);
    }
    // source line 217, bytecode pc 669
    this.iconBtn.setOnClickCallBack(function() {
    // source line 215, bytecode pc 56
    xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: this.skillModel, flag: false });
}.bind({ skillModel: xs.Models.Skill.createWithBase(skillPiece.getId()) }));
    // source line 219, bytecode pc 710
    (dailyAdventure = xs.Models.DailyAdventure.create(xs.Constant_DailyAdventure_ModelType_Chaos));
    if (dailyAdventure.getIsAdventureUp()) {
        // source line 221, bytecode pc 752
        xs.log("抢夺奇遇up");
        if (!this.upBtn) {
            // source line 223, bytecode pc 785
            (this.upBtn = dailyAdventure.createUpBtn());
            // source line 229, bytecode pc 896
            xs.Utils.Node.attachNodes(this, this.upBtn, { desc: "cb", offset: cc.p(105, ((visibleSize.height / 10) + 270)), sc: true }, this.cfg.dailyAdventureBtn);
        }
        // source line 232, bytecode pc 916
        this.upBtn.setVisible(true);
    } else {
        if (this.upBtn) {
            // source line 236, bytecode pc 952
            this.upBtn.setVisible(false);
        }
    }
    if ((skillPiece.getNum() < skillPiece.getComposePieceNum())) {
        // source line 241, bytecode pc 1049
        this.chaosBtn.setString(xs.Tools.String.createString("chaos_toSnatch"));
        // source line 244, bytecode pc 1086
        this.chaosBtn.setOnClickCallBack(function() {
    // source line 243, bytecode pc 61
    xs.Scene.Mgr.changeSceneByName("ChaosFightScene", { skillPieceModel: this.skillPiecesShow.getCurSelect() });
}.bind(this));
    } else {
        // source line 246, bytecode pc 1142
        this.chaosBtn.setString(xs.Tools.String.createString("chaos_compose"));
        // source line 269, bytecode pc 1179
        this.chaosBtn.setOnClickCallBack(function() {
    // source line 268, bytecode pc 86
    xs.Tools.Net.requestWarLordExchange({ skill_id: this.skillPiecesShow.getCurSelect().getId(), ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    // source line 256, bytecode pc 36
    xs.Scene.Mgr.saveStatus("SkillCompound_RandEvent", _modelMap);
    // source line 258, bytecode pc 113
    this.getParent().m_listener.compoundSkill(xs.Models.Skill.createWithBase(skillPiece.getId()));
}, function(errInfo) {
    if ((errInfo.error_code === "e_2020")) {
        // source line 263, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_58"));
        // source line 265, bytecode pc 121
        xs.Tools.Net.requestChaosSkillPiece({}, this.updateView, this);
    }
    // source line 267, bytecode pc 123
    return true;
}, this);
}.bind(this));
    }
    // source line 272, bytecode pc 1221
    this.chaosBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn.priority));
},
    onTouchBegan: function(touch, e) {
    var boundingRect;
    // source line 278, bytecode pc 20
    (boundingRect = this.skillPiecesShow.getIconShowBounding());
    // source line 279, bytecode pc 43
    (this.startPos = this.convertTouchToNodeSpace(touch));
    if (cc.rectContainsPoint(boundingRect, this.startPos)) {
        // source line 281, bytecode pc 77
        return false;
    }
    // source line 284, bytecode pc 79
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    if (this.skillPiecesShow) {
        // source line 294, bytecode pc 33
        (this.endPos = this.convertTouchToNodeSpace(touch));
        if (((this.endPos.x - this.startPos.x) > 10)) {
            // source line 297, bytecode pc 82
            this.skillPiecesShow.next();
        } else {
            if (((this.endPos.x - this.startPos.x) < -10)) {
                // source line 300, bytecode pc 136
                this.skillPiecesShow.prev();
            }
        }
        // source line 303, bytecode pc 167
        this.updateSkillPiece(this.skillPiecesShow.getCurSelect());
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 308, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 309, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 310, bytecode pc 54
    this.m_oneStepComposeButton.setTouchPriority(this.m_baseTouchPriority);
},
    updateAvoidWarCountDown: function() {
    var tt;
    // source line 315, bytecode pc 61
    (tt = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChaosCountDown());
    // source line 317, bytecode pc 133
    xs.Utils.setCcbLabel(this.avoidWarCcb, this.cfg.avoidWar_time.tag, xs.Utils.convertSecondToTime(tt));
},
    cfg: {
        skillPiecesShow: { priority: -1 },
        btn: { priority: -1 },
        skillPieceIcon: { priority: -1 },
        avoidWar_time: { tag: 10 },
        avoidWar_btn: { tag: 11, priority: -1 },
        avoidWarCfg: [
            { tag: 1, type: "ls", id: "LS_qiangduo_time", stringId: "auto_name_55" },
            { tag: 2, type: "ls", id: "LS_qiangduo_time", stringId: "auto_name_56" },
            { tag: 3, type: "ls", id: "LS_qiangduo_time", stringId: "auto_name_57", name: "m_timeStr" },
            { tag: 10, type: "ls", id: "LS_Nomb1", string: "00:00:00", name: "m_timeNum" },
            { tag: 20, name: "m_NoWarPic" },
            { tag: 11, name: "avoidWar" }
        ],
        dailyAdventureBtn: { tag: -1, zOrder: 100 }
    }
}));
// source line 352, bytecode pc 593
(xs.Views.ChaosHomeView.create = function() {
    var ret;
    // source line 353, bytecode pc 23
    (ret = new xs.Views.ChaosHomeView());
    if ((ret && ret.init())) {
        // source line 355, bytecode pc 55
        return ret;
    }
    // source line 358, bytecode pc 84
    xs.assert(false, "xs.Views.ChaosHomeView create fail!", ret);
    // source line 360, bytecode pc 86
    return null;
});
