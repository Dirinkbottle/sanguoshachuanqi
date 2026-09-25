// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MainMenuBtnView.js:1
// source line 231, bytecode pc 289
(xs.Views.MainMenuBtnView = cc.Layer.extend({
    ccbCfg: [ { name: "m_clickBtn", tag: 1, type: "btn", id: "Btn_MainMenuViewBtn_2" } ],
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var visibleSize;
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 27
    (this.m_clickBtn = null);
    // source line 18, bytecode pc 35
    (this.m_clickBtn_mail = null);
    // source line 19, bytecode pc 43
    (this.m_clickBtn_beStronger = null);
    // source line 20, bytecode pc 51
    (this.m_clickBtn_achieve = null);
    // source line 21, bytecode pc 59
    (this.m_clickBtn_task = null);
    // source line 22, bytecode pc 67
    (this.m_clickBtn_union = null);
    // source line 23, bytecode pc 75
    (this.m_clickBtn_setting = null);
    // source line 24, bytecode pc 83
    (this.m_clickBtn_chat = null);
    // source line 25, bytecode pc 91
    (this.m_clickBtn_rank = null);
    // source line 27, bytecode pc 142
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MainMenuBtnView, this));
    // source line 28, bytecode pc 181
    this.m_ccbNode.setAnchorPoint(cc.p(1, 0));
    // source line 29, bytecode pc 206
    (visibleSize = xs.director.getVisibleSize());
    // source line 31, bytecode pc 279
    this.setContentSize(cc.size(xs.Views.MainMenuBtnView.Cfg.contentSize.width, (visibleSize.height / 6)));
    // source line 38, bytecode pc 385
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, {
    desc: "rb",
    sc: true,
    offset: { x: (-visibleSize.width + 52), y: ((visibleSize.height / 6) - 55) }
});
    // source line 42, bytecode pc 428
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 43, bytecode pc 466
    this.m_clickBtn.setOnClickCallBack(this._m_clickBtnCallBack.bind(this));
    // source line 45, bytecode pc 507
    (this.m_clickBtn_mail = xs.Views.MainMenuViewCell.create(null, "BS_MainMenuViewBtn_mail"));
    // source line 46, bytecode pc 534
    this.m_clickBtn_mail.setUp(this.mailBtnClick, this);
    // source line 49, bytecode pc 573
    xs.Utils.replaceNode(this.m_ccbNode, 2, this.m_clickBtn_mail);
    // source line 51, bytecode pc 614
    (this.m_clickBtn_beStronger = xs.Views.MainMenuViewCell.create(null, "BS_MainMenuViewBtn_beStronger"));
    // source line 52, bytecode pc 641
    this.m_clickBtn_beStronger.setUp(this.beStrongerBtnClick, this);
    // source line 55, bytecode pc 680
    xs.Utils.replaceNode(this.m_ccbNode, 3, this.m_clickBtn_beStronger);
    // source line 57, bytecode pc 721
    (this.m_clickBtn_achieve = xs.Views.MainMenuViewCell.create(null, "BS_MainMenuViewBtn_achieve"));
    // source line 58, bytecode pc 748
    this.m_clickBtn_achieve.setUp(this.achieveBtnClick, this);
    // source line 61, bytecode pc 787
    xs.Utils.replaceNode(this.m_ccbNode, 4, this.m_clickBtn_achieve);
    // source line 63, bytecode pc 828
    (this.m_clickBtn_task = xs.Views.MainMenuViewCell.create(null, "BS_TaskBtn"));
    // source line 64, bytecode pc 855
    this.m_clickBtn_task.setUp(this.taskBtnClick, this);
    // source line 67, bytecode pc 894
    xs.Utils.replaceNode(this.m_ccbNode, 5, this.m_clickBtn_task);
    // source line 69, bytecode pc 935
    (this.m_clickBtn_union = xs.Views.MainMenuViewCell.create(null, "BS_UnionBtn"));
    // source line 70, bytecode pc 962
    this.m_clickBtn_union.setUp(this.unionBtnClick, this);
    // source line 73, bytecode pc 1001
    xs.Utils.replaceNode(this.m_ccbNode, 6, this.m_clickBtn_union);
    // source line 75, bytecode pc 1042
    (this.m_clickBtn_setting = xs.Views.MainMenuViewCell.create(null, "BS_ShortCut_Setting"));
    // source line 76, bytecode pc 1069
    this.m_clickBtn_setting.setUp(this.settingBtnClick, this);
    // source line 79, bytecode pc 1108
    xs.Utils.replaceNode(this.m_ccbNode, 7, this.m_clickBtn_setting);
    // source line 81, bytecode pc 1149
    (this.m_clickBtn_chat = xs.Views.MainMenuViewCell.create(null, "BS_ChatBtn"));
    // source line 82, bytecode pc 1176
    this.m_clickBtn_chat.setUp(this.chatBtnClick, this);
    // source line 85, bytecode pc 1215
    xs.Utils.replaceNode(this.m_ccbNode, 8, this.m_clickBtn_chat);
    // source line 88, bytecode pc 1256
    (this.m_clickBtn_rank = xs.Views.MainMenuViewCell.create(null, "BS_RankBtn"));
    // source line 89, bytecode pc 1283
    this.m_clickBtn_rank.setUp(this.rankBtnClick, this);
    // source line 91, bytecode pc 1322
    xs.Utils.replaceNode(this.m_ccbNode, 9, this.m_clickBtn_rank);
    // source line 93, bytecode pc 1335
    this.updateHintView();
    // source line 94, bytecode pc 1351
    this.setBaseTouchPriority(-1);
    // source line 95, bytecode pc 1385
    xs.log_hsq("Main_Btn_State:", xs.Main_Btn_State);
    if (xs.Main_Btn_State) {
        // source line 97, bytecode pc 1413
        this.menuClick();
    }
    // source line 100, bytecode pc 1415
    return true;
},
    _m_clickBtnCallBack: function() {
    // source line 104, bytecode pc 22
    xs.log_hsq("_m_clickBtnCallBack");
    // source line 105, bytecode pc 34
    (xs.Main_Btn_State = false);
    // source line 106, bytecode pc 70
    xs.Utils.Node.setVisibleSafe(this.m_ccbNode, false);
    // source line 108, bytecode pc 111
    (this.m_menuBtn = xs.Views.MainMenuViewCell.create(null, "BS_MainMenuViewBtn"));
    // source line 109, bytecode pc 138
    this.m_menuBtn.setUp(this.menuClick, this);
    // source line 110, bytecode pc 187
    this.m_menuBtn.setBaseTouchPriority(xs.Cfg.Scene.MainMenuScene.m_menuBtn.priority);
    // source line 114, bytecode pc 359
    this.m_menuBtn.setHintPoint((xs.Profile.GameData.Mgr.getInstance().Hint.haveMenuHintInfo() || (xs.Profile.GameData.Mgr.getInstance().Hint.haveTaskHintInfo() || xs.Profile.GameData.Mgr.getInstance().Hint.haveUnionHintInfo())));
    // source line 116, bytecode pc 395
    xs.Utils.Node.attachNodes(this, this.m_menuBtn);
},
    onEnterTransitionDidFinish: function() {
    try {
        // source line 122, bytecode pc 13
        this._super();
        // source line 123, bytecode pc 31
        this.m_ccbNode.stopAllActions();
    } catch (e) {
        // source line 126, bytecode pc 67
        xs.warnException(e);
        /* TODO_BYTECODE pc=68 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    onEnter: function() {
    // source line 131, bytecode pc 12
    this._super();
    // source line 135, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateHintView, xs.Constant_Notify_HintChange_All);
},
    onExit: function() {
    // source line 140, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_All);
    // source line 141, bytecode pc 52
    this._super();
},
    updateHintView: function() {
    // source line 144, bytecode pc 65
    this.m_clickBtn_mail.setHintPoint(xs.Profile.GameData.Mgr.getInstance().Hint.normalMailCount());
    // source line 145, bytecode pc 131
    this.m_clickBtn_task.setHintPoint(xs.Profile.GameData.Mgr.getInstance().Hint.haveTaskHintInfo());
    // source line 146, bytecode pc 197
    this.m_clickBtn_union.setHintPoint(xs.Profile.GameData.Mgr.getInstance().Hint.haveUnionHintInfo());
    // source line 147, bytecode pc 263
    this.m_clickBtn_setting.setHintPoint(xs.Profile.GameData.Mgr.getInstance().Hint.haveMenuHintInfo());
},
    menuClick: function() {
    // source line 155, bytecode pc 35
    xs.Utils.Node.setVisibleSafe(this.m_ccbNode, true);
    // source line 156, bytecode pc 71
    xs.Utils.Node.setVisibleSafe(this.m_menuBtn, false);
},
    mailBtnClick: function() {
    // source line 161, bytecode pc 45
    xs.Scene.Mgr.changeSceneByName("MailSystemScene", { index: 0 });
},
    beStrongerBtnClick: function() {
    // source line 166, bytecode pc 32
    xs.Views.Mgr.showDialogByName("BecomeStrongerDialog");
},
    achieveBtnClick: function() {
    var _tmp, _surrenderArr, i;
    // source line 170, bytecode pc 82
    (_tmp = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralInAll().sort(xs.Tools.Sort.byGradeAndId_generals_order_asc));
    // source line 171, bytecode pc 91
    (_surrenderArr = []);
    // source line 172, bytecode pc 96
    (i = 0);
    while ((i < _tmp.length)) {
        if (!xs.Profile.GameData.Mgr.getInstance().Generals.isSurrender(_tmp[i])) {
            // source line 174, bytecode pc 186
            _surrenderArr.push(_tmp[i]);
        }
        // source line 172, bytecode pc 201
        i++;
    }
    // source line 180, bytecode pc 272
    xs.Views.Dialog.AgaSurrenderDialog.showWithSurrenderInfo({ datas: _surrenderArr, idxInit: 0 });
},
    settingBtnClick: function() {
    // source line 186, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MenuMenuScene");
},
    chatBtnClick: function() {
    // source line 190, bytecode pc 31
    xs.Views.Dialog.ChatDialog.show();
},
    rankBtnClick: function() {
    // source line 193, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("RankScene");
},
    unionBtnClick: function() {
    // source line 198, bytecode pc 49
    xs.Tools.Net.requestGetUnionInfo({}, this.responseUnionBack, this.responseUnionBack_err, this);
},
    taskBtnClick: function() {
    var _result;
    // source line 202, bytecode pc 29
    (_result = xs.Profile.Permission.isUnLock_dailyTask());
    if (_result.result) {
        // source line 204, bytecode pc 75
        xs.Views.Mgr.showDialogByName("DailyTaskDialog");
    } else {
        // source line 207, bytecode pc 116
        xs.Views.Mgr.showToast(_result.desc);
    }
},
    responseUnionBack: function(data) {
    if ((data.result >= 1)) {
        // source line 214, bytecode pc 41
        xs.Views.Mgr.hideDialog();
        if ((data.return_info.has_joined >= 1)) {
            // source line 217, bytecode pc 129
            xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().updateBaseUnionUserInfo(data.return_info);
            // source line 218, bytecode pc 197
            xs.Profile.GameData.Mgr.getInstance().Union.getUnion().loadJson(data.return_info);
            // source line 220, bytecode pc 230
            xs.Views.Mgr.showDialogByName("UnionDialog");
        } else {
            // source line 222, bytecode pc 283
            xs.Views.Mgr.showDialogByName("UnionSearch", { param: data });
        }
        // source line 224, bytecode pc 285
        return true;
    }
},
    responseUnionBack_err: function(data) {
    // source line 228, bytecode pc 35
    xs.Views.Mgr.showToast(data.msg);
    // source line 229, bytecode pc 37
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 233, bytecode pc 13
    (this.m_baseTouchPriority = (priority - 555));
    // source line 234, bytecode pc 44
    xs.log_hsq("mainMenu priority:", (priority - 555));
    // source line 236, bytecode pc 64
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 237, bytecode pc 91
    this.m_clickBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 238, bytecode pc 118
    this.m_clickBtn_mail.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 239, bytecode pc 145
    this.m_clickBtn_beStronger.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 240, bytecode pc 172
    this.m_clickBtn_achieve.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 241, bytecode pc 199
    this.m_clickBtn_task.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 242, bytecode pc 226
    this.m_clickBtn_union.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 243, bytecode pc 253
    this.m_clickBtn_setting.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 244, bytecode pc 280
    this.m_clickBtn_chat.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 245, bytecode pc 307
    this.m_clickBtn_rank.setBaseTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 253, bytecode pc 340
(xs.Views.MainMenuBtnView.Cfg = { contentSize: { width: 110, height: 0 } });
// source line 256, bytecode pc 366
(xs.Views.MainMenuBtnView.create = function() {
    var node;
    // source line 257, bytecode pc 23
    (node = new xs.Views.MainMenuBtnView());
    if ((node && node.init())) {
        // source line 259, bytecode pc 55
        return node;
    }
    // source line 261, bytecode pc 57
    return null;
});
