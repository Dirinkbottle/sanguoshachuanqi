// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/WishingScene.js:1
// source line 597, bytecode pc 413
(xs.Scene.WishingAgaView = cc.Layer.extend({
    name: "WishingAgaView",
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var visibleSize, teachers, i, m_says, speakWords, iconBarBg, iconBarArrowRight, m_wishingGenIdx;
    // source line 31, bytecode pc 7
    (this.m_isGratis = false);
    // source line 32, bytecode pc 15
    (this.m_liuxingNum = 0);
    // source line 35, bytecode pc 39
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 36, bytecode pc 54
    this.setTouchEnabled(true);
    // source line 38, bytecode pc 79
    (visibleSize = xs.director.getVisibleSize());
    // source line 40, bytecode pc 139
    (this.generalArray = xs.Profile.GameData.PushInfo.getInstance().getWishinInfo().getGeneras());
    // source line 41, bytecode pc 199
    (this.generalGoalArray = xs.Profile.GameData.PushInfo.getInstance().getWishinInfo().getGeneraGoals());
    // source line 42, bytecode pc 259
    (this.EnableArray = xs.Profile.GameData.PushInfo.getInstance().getWishinInfo().getEnables());
    // source line 48, bytecode pc 268
    (teachers = []);
    // source line 49, bytecode pc 273
    (i = 0);
    while ((i < this.generalArray.length)) {
        // source line 50, bytecode pc 305
        teachers.push(this.generalArray[i]);
        // source line 49, bytecode pc 320
        i++;
    }
    // source line 53, bytecode pc 356
    teachers.reverse();
    // source line 56, bytecode pc 437
    (this.tableView = xs.Views.Table.SkillPieceTableView.create(this.generalArray, cc.size(((visibleSize.width - 130) - 100), 107)));
    // source line 57, bytecode pc 457
    this.tableView.setListener(this);
    // source line 59, bytecode pc 475
    (this.generalCount = this.generalArray.length);
    // source line 60, bytecode pc 492
    (this.focusIdx = (teachers.length - 1));
    // source line 62, bytecode pc 549
    (m_says = xs.Profile.GameData.PushInfo.getInstance().getWishinInfo().getGeneraSays());
    // source line 65, bytecode pc 572
    (speakWords = new Array(teachers.length));
    // source line 66, bytecode pc 577
    (i = 0);
    while ((i < speakWords.length)) {
        // source line 68, bytecode pc 598
        (speakWords[i] = m_says[i]);
        // source line 66, bytecode pc 613
        i++;
    }
    // source line 72, bytecode pc 646
    speakWords.reverse();
    // source line 77, bytecode pc 699
    (this.generalShow = xs.Views.GeneralPlayView.create(xs.Views.GeneralPlayViewType_Foot, teachers));
    // source line 81, bytecode pc 721
    this.generalShow.setWords(speakWords);
    // source line 83, bytecode pc 741
    this.generalShow.setNeedAutoDismissSpeak(false);
    // source line 84, bytecode pc 761
    this.generalShow.setNeedAutoPlay(false);
    // source line 85, bytecode pc 781
    this.generalShow.setEnabled(false);
    // source line 86, bytecode pc 805
    this.generalShow.setSpeakSpeed(0.6);
    // source line 87, bytecode pc 830
    this.generalShow.setIndex(this.focusIdx);
    // source line 88, bytecode pc 915
    xs.Utils.Node.attachNodes(this, this.generalShow, { desc: "lb", offset: { x: 300, y: -20 }, sc: true });
    // source line 91, bytecode pc 951
    (this.ccbNode_IconBar = xs.ccb_reader.load("ccb3/0_8_3_SkillIconShow.ccbi", this));
    // source line 92, bytecode pc 989
    (iconBarBg = this.ccbNode_IconBar.getChildByTag(this.cfg.bg.tag));
    // source line 93, bytecode pc 1037
    iconBarBg.setPreferredSize(cc.size((visibleSize.width - 130), 107));
    // source line 94, bytecode pc 1088
    this.ccbNode_IconBar.setContentSize(cc.size((visibleSize.width - 130), 107));
    // source line 95, bytecode pc 1127
    this.ccbNode_IconBar.setAnchorPoint(cc.p(0, 1));
    // source line 97, bytecode pc 1224
    xs.Utils.Node.attachNodes(this, this.ccbNode_IconBar, { desc: "lb", offset: cc.p(0, ((visibleSize.height - 108) + 15)), sc: false });
    // source line 99, bytecode pc 1262
    (iconBarArrowRight = this.ccbNode_IconBar.getChildByTag(this.cfg.rightArrow.tag));
    // source line 100, bytecode pc 1293
    iconBarArrowRight.setPositionX(((visibleSize.width - 130) - 30));
    // source line 108, bytecode pc 1342
    (this.liuxingMode = xs.Models.Item.createWithBase(xs.Models.ItemID_Wishing));
    // source line 109, bytecode pc 1355
    this.updataLiuxing();
    // source line 116, bytecode pc 1427
    (this.topTip = xs.Factorys.Label.createByStyleIdWithString("LS_qiangduo_Inf", xs.Tools.String.createString("auto_name_184")));
    // source line 118, bytecode pc 1517
    xs.Utils.Node.attachNodes(this, this.topTip, { desc: "lt", offset: cc.p(300, (visibleSize.height - 70)) });
    // source line 122, bytecode pc 1577
    (this.m_isGratis = xs.Profile.GameData.PushInfo.getInstance().getWishinInfo().getIsFree());
    // source line 126, bytecode pc 1593
    (m_wishingGenIdx = this.idxForGenId());
    // source line 128, bytecode pc 1612
    this.setCurSelectByIdx(m_wishingGenIdx, true);
    // source line 134, bytecode pc 1614
    return true;
},
    updataLiuxing: function() {
    // source line 138, bytecode pc 69
    (this.m_liuxingNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Wishing));
    // source line 139, bytecode pc 101
    (this.m_liuxingNum = ((this.m_liuxingNum == null) ? 0 : this.m_liuxingNum));
    // source line 140, bytecode pc 126
    this.liuxingMode.setNum(this.m_liuxingNum);
    if (!this.propLiuxing) {
        // source line 143, bytecode pc 162
        (this.propLiuxing = this.liuxingMode.createIcon_GradeAndNumAndName());
        // source line 145, bytecode pc 260
        xs.Utils.Node.attachNodes(this, this.propLiuxing, { desc: "lb", offset: cc.p(70, 70), sc: false }, this.cfg.liuxing);
    } else {
        // source line 148, bytecode pc 289
        (this.propLiuxing = this.liuxingMode.createIcon_GradeAndNumAndName());
        // source line 149, bytecode pc 337
        xs.Utils.replaceIcon(this, this.cfg.liuxing.tag, this.propLiuxing);
        // source line 150, bytecode pc 367
        xs.log_hsq("replaceIconpp", this.propLiuxing);
    }
},
    getMailDBKey: function() {
    var player;
    // source line 156, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 157, bytecode pc 78
    return (player.getPlayerId() + this._getMailDBKeySuffix());
},
    _getMailDBKeySuffix: function() {
    // source line 162, bytecode pc 5
    return "_sgs_wishingGen";
},
    readLocalSql: function() {
    var _result, _data, _empty;
    // source line 169, bytecode pc 46
    (_data = xs.Utils.LocalStore.getItem(this.getMailDBKey()));
    if ((_data == "")) {
        // source line 173, bytecode pc 69
        (_empty = "{\"pk_id\":\"0\"}");
        // source line 175, bytecode pc 113
        xs.Utils.LocalStore.setItem(this.getMailDBKey(), _empty);
        // source line 176, bytecode pc 120
        (_data = _empty);
    }
    try {
        // source line 180, bytecode pc 145
        (_result = JSON.parse(_data));
    } catch (e) {
        // source line 183, bytecode pc 181
        xs.warnException(e);
        // source line 186, bytecode pc 201
        (_result = { pk_id: "0" });
        /* TODO_BYTECODE pc=202 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 190, bytecode pc 214
    return _result;
},
    writeLocalSql: function(dict) {
    var _objArray, _str;
    // source line 196, bytecode pc 6
    (_objArray = dict);
    // source line 197, bytecode pc 30
    (_str = JSON.stringify(_objArray));
    // source line 199, bytecode pc 74
    xs.Utils.LocalStore.setItem(this.getMailDBKey(), _str);
},
    updataShow: function() {
    if (this.m_isGratis) {
        // source line 207, bytecode pc 61
        this.conlabel.setString(xs.Tools.String.createString("auto_name_185"));
        // source line 208, bytecode pc 81
        this.propLiuxing.setVisible(false);
        // source line 210, bytecode pc 132
        this.chaosBtn.setString(xs.Tools.String.createString("auto_name_186"));
    } else {
        // source line 215, bytecode pc 188
        this.conlabel.setString(xs.Tools.String.createString("auto_name_187"));
        // source line 216, bytecode pc 208
        this.propLiuxing.setVisible(true);
        // source line 217, bytecode pc 259
        this.chaosBtn.setString(xs.Tools.String.createString("auto_name_188"));
    }
},
    addAction: function(mParent) {
    var visibleSize;
    // source line 228, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 230, bytecode pc 68
    (this.m_loadArm = xs.Views.Armature.AutoAudioArmature.create("Arm_WishingAga"));
    // source line 231, bytecode pc 93
    mParent.addChild(this.m_loadArm, 3);
    // source line 232, bytecode pc 152
    this.m_loadArm.setPosition(cc.p((visibleSize.width / 2), (visibleSize.height / 2)));
    // source line 234, bytecode pc 172
    this.m_loadArm.setVisible(false);
    // source line 236, bytecode pc 216
    (this.m_liuxingArm = xs.Views.Armature.AutoAudioArmature.create("Arm_WishingAga"));
    // source line 237, bytecode pc 241
    mParent.addChild(this.m_liuxingArm, 3);
    // source line 238, bytecode pc 300
    this.m_liuxingArm.setPosition(cc.p((visibleSize.width / 2), (visibleSize.height / 2)));
},
    onEnter: function() {
    // source line 243, bytecode pc 12
    this._super();
    // source line 245, bytecode pc 45
    xs.Tools.Statistic.event("onEnter_WishingAgaView");
},
    onEnterTransitionDidFinish: function() {
    // source line 249, bytecode pc 12
    this._super();
    // source line 253, bytecode pc 33
    this.tableView.setTouchPriority(-33);
    // source line 254, bytecode pc 124
    xs.Utils.Node.attachNodes(this.ccbNode_IconBar, this.tableView, { desc: "lb", offset: cc.p(50, -3), sc: false });
},
    onExit: function() {
},
    next: function() {
    // source line 264, bytecode pc 26
    this.focusIdx++;
    if ((this.focusIdx >= this.generalCount)) {
        // source line 266, bytecode pc 71
        this.focusIdx--;
        // source line 267, bytecode pc 73
        return void 0;
    }
    // source line 269, bytecode pc 91
    this.generalShow.nextTile();
    // source line 270, bytecode pc 109
    this.tableView.prev();
},
    prev: function() {
    // source line 275, bytecode pc 26
    this.focusIdx--;
    if ((this.focusIdx < 0)) {
        // source line 277, bytecode pc 66
        this.focusIdx++;
        // source line 278, bytecode pc 68
        return void 0;
    }
    // source line 281, bytecode pc 86
    this.generalShow.lastTile();
    // source line 282, bytecode pc 104
    this.tableView.next();
},
    idxForGenId: function() {
    var genId, i, m_id;
    // source line 286, bytecode pc 20
    (genId = this.readLocalSql().pk_id);
    // source line 287, bytecode pc 25
    (i = 0);
    while ((i < this.generalArray.length)) {
        // source line 288, bytecode pc 56
        (m_id = this.generalArray[i].getId());
        if ((m_id == genId)) {
            // source line 290, bytecode pc 78
            return ("" + i);
        }
        // source line 287, bytecode pc 93
        i++;
    }
    // source line 295, bytecode pc 120
    return "0";
},
    setCurSelectByIdx: function(idx, isUpTable) {
    // source line 299, bytecode pc 26
    xs.log("m_idx", idx);
    // source line 300, bytecode pc 45
    (this.focusIdx = ((this.generalCount - 1) - idx));
    // source line 301, bytecode pc 70
    this.generalShow.setIndex(this.focusIdx);
    // source line 303, bytecode pc 96
    this.updateSkillPiece(this.getCurSelect());
    if (isUpTable) {
        // source line 305, bytecode pc 126
        this.tableView.setIdx(idx);
    }
},
    _replaceProp: function(props) {
    var i, m_json, m_numTxtLab, m_numLab, _add, m_icon;
    // source line 316, bytecode pc 4
    (i = 1);
    while ((i <= 4)) {
        // source line 318, bytecode pc 29
        (m_json = props[("" + (i - 1))]);
        // source line 325, bytecode pc 65
        (m_numTxtLab = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
        // source line 326, bytecode pc 101
        (m_numLab = xs.Factorys.Label.createByStyleId("LS_ZbJn"));
        // source line 327, bytecode pc 135
        (_add = xs.Factorys.Add.createWithJson(m_json));
        // source line 328, bytecode pc 153
        (m_icon = _add.createHeadView());
        // source line 330, bytecode pc 189
        m_numTxtLab.setString(("x" + _add.getShowNumString()));
        // source line 331, bytecode pc 219
        m_numLab.setString(_add.getNameString());
        // source line 332, bytecode pc 318
        xs.Utils.Node.attachNodes(m_icon, m_numTxtLab, { desc: "cb", offset: cc.p(0, -30) }, { zOrder: 2, tag: 2 });
        // source line 333, bytecode pc 417
        xs.Utils.Node.attachNodes(m_icon, m_numLab, { desc: "cb", offset: cc.p(0, -59) }, { zOrder: 2, tag: 3 });
        // source line 336, bytecode pc 449
        this.m_loadArm.replaceSkin(("touxiang0" + i), m_icon);
        // source line 316, bytecode pc 464
        i++;
    }
},
    removeOutAll: function() {
    // source line 347, bytecode pc 19
    this.m_loadArm.setVisible(true);
    // source line 348, bytecode pc 57
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_WinshingOut);
},
    removeInAll: function() {
    // source line 357, bytecode pc 19
    this.m_loadArm.setVisible(false);
    // source line 358, bytecode pc 57
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_WinshingIn);
},
    updateSkillPiece: function(general) {
    var visibleSize, m_num, i, isEnable;
    // source line 363, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 364, bytecode pc 29
    (m_num = 0);
    if (!general) {
        // source line 367, bytecode pc 54
        (general = this.getCurSelect());
    } else {
        // source line 369, bytecode pc 64
        (i = 0);
        while ((i < this.generalArray.length)) {
            if ((general.getId() === this.generalArray[i].getId())) {
                // source line 371, bytecode pc 125
                (this.generalArray[i] = general);
                // source line 372, bytecode pc 132
                (m_num = i);
                break;
            }
            // source line 369, bytecode pc 152
            i++;
        }
    }
    // source line 378, bytecode pc 187
    (general = this.generalGoalArray[m_num]);
    // source line 379, bytecode pc 197
    (this.m_genIdx = m_num);
    if (!this.skillPieceCCb) {
        // source line 382, bytecode pc 243
        (this.skillPieceCCb = xs.ccb_reader.load("ccb3/0_8_3_SkillPiece.ccbi"));
        // source line 384, bytecode pc 338
        xs.Utils.Node.attachNodes(this, this.skillPieceCCb, { desc: "cb", offset: cc.p(100, (visibleSize.height / 10)), sc: true });
        // source line 386, bytecode pc 391
        (this.selectSkillPiece = xs.Utils.replaceIcon(this.skillPieceCCb, 10, general.createIcon_GradeAndName()));
        // source line 388, bytecode pc 431
        (this.iconBtn = xs.Views.Btn.createInvisibleWithParent(this.selectSkillPiece));
        // source line 389, bytecode pc 452
        this.iconBtn.setTouchPriority(-35);
        // source line 392, bytecode pc 523
        (this.chaosBtn = xs.Utils.replaceButton(this.skillPieceCCb, 11, xs.Views.Btn.createByStyleId("BS_Btn2")));
        // source line 394, bytecode pc 568
        (this.conlabel = xs.Factorys.Label.createByStyleIdWithString("LS_fightUI1", ""));
        // source line 395, bytecode pc 593
        this.selectSkillPiece.addChild(this.conlabel);
        // source line 396, bytecode pc 636
        this.conlabel.setPosition(cc.p(0, -190));
        // source line 400, bytecode pc 687
        this.chaosBtn.setString(xs.Tools.String.createString("auto_name_186"));
        // source line 401, bytecode pc 708
        this.chaosBtn.setTouchPriority(-36);
        // source line 402, bytecode pc 728
        this.chaosBtn.setEventOnDisable(true);
        // source line 403, bytecode pc 766
        this.chaosBtn.setOnClickCallBack(this.startWishing.bind(this));
    } else {
        // source line 407, bytecode pc 793
        this.selectSkillPiece.reloadData(general);
    }
    // source line 410, bytecode pc 807
    (isEnable = this.EnableArray[m_num]);
    // source line 411, bytecode pc 820
    this.updataShow();
    // source line 421, bytecode pc 908
    this.iconBtn.setOnClickCallBack(function() {
    // source line 420, bytecode pc 60
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.skillModel, type: "achieve_nothave" });
}.bind({ skillModel: xs.Models.General.createWithBase(general.getId()) }));
    if (isEnable) {
        // source line 424, bytecode pc 936
        this.chaosBtn.setEnabled(true);
        // source line 425, bytecode pc 956
        this.iconBtn.setEnabled(true);
    } else {
        // source line 427, bytecode pc 1012
        this.chaosBtn.setString(xs.Tools.String.createString("auto_name_51"));
        // source line 428, bytecode pc 1032
        this.chaosBtn.setEnabled(false);
        // source line 429, bytecode pc 1052
        this.iconBtn.setEnabled(false);
    }
},
    startWishing: function() {
    var m_num;
    // source line 439, bytecode pc 9
    (m_num = this.m_genIdx);
    if (!this.EnableArray[m_num]) {
        // source line 441, bytecode pc 85
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_189"));
        // source line 442, bytecode pc 87
        return void 0;
    }
    // source line 444, bytecode pc 139
    this.writeLocalSql({ pk_id: ("" + this.generalArray[m_num].getId()) });
    if (((this.m_liuxingNum <= 0) && !this.m_isGratis)) {
        // source line 447, bytecode pc 225
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_190"));
    } else {
        // source line 529, bytecode pc 399
        xs.Tools.Net.requestWishingStart({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    general_id: this.generalArray[m_num].getId(),
    forcepush: true
}, function(params) {
    var m_idx, m_items, m_addItems, liuxAct, beginAct, endAct, actions;
    // source line 466, bytecode pc 19
    (this.m_isGratis = params.return_info.wish_free);
    // source line 467, bytecode pc 36
    (m_idx = params.return_info.item_index);
    // source line 468, bytecode pc 53
    (m_items = params.return_info.item_list);
    // source line 469, bytecode pc 76
    (m_addItems = params.return_info.add_list);
    // source line 473, bytecode pc 89
    this.updataShow();
    // source line 474, bytecode pc 102
    this.removeOutAll();
    // source line 475, bytecode pc 115
    this.updataLiuxing();
    if ((m_idx > 3)) {
        // source line 478, bytecode pc 132
        (m_idx = 3);
    }
    // source line 481, bytecode pc 159
    (liuxAct = this.m_liuxingArm.createPlayAction("wishingLiuxing"));
    // source line 482, bytecode pc 186
    (beginAct = this.m_loadArm.createPlayAction("wishingStart"));
    // source line 483, bytecode pc 219
    (endAct = this.m_loadArm.createPlayAction(("end_" + (m_idx + 1))));
    // source line 485, bytecode pc 236
    this._replaceProp(m_items);
    // source line 510, bytecode pc 330
    (actions = xs.Utils.Action.combineSequence([
    beginAct,
    endAct,
    cc.CallFunc.create(function() {
    var _add, obj;
    // source line 496, bytecode pc 12
    this.removeInAll();
    // source line 503, bytecode pc 25
    (_add = m_addItems);
    // source line 507, bytecode pc 65
    (obj = xs.Views.Mgr.showDialogByName("GetPropsDialog", _add));
    // source line 508, bytecode pc 113
    obj.setTitleString(xs.Tools.String.createString("auto_name_191"));
}.bind(this))
]));
    // source line 515, bytecode pc 347
    this.runAction(actions);
    // source line 516, bytecode pc 364
    this.runAction(liuxAct);
}.bind(this), function(params) {
    // source line 522, bytecode pc 26
    xs.dump("params", params);
    if ((params.error_code === "e_1005")) {
        // source line 524, bytecode pc 72
        xs.Views.Mgr.hideDialog();
        // source line 525, bytecode pc 74
        return true;
    }
    // source line 527, bytecode pc 76
    return true;
}.bind(this), this);
    }
},
    getCurSelect: function() {
    // source line 537, bytecode pc 27
    return this.generalArray[((this.generalArray.length - 1) - this.focusIdx)];
},
    getIconShowBounding: function() {
    // source line 541, bytecode pc 17
    return this.ccbNode_IconBar.getBoundingBox();
},
    onTouchBegan: function(touch, e) {
    var boundingRect;
    // source line 549, bytecode pc 15
    (boundingRect = this.getIconShowBounding());
    // source line 550, bytecode pc 38
    (this.startPos = this.convertTouchToNodeSpace(touch));
    if (cc.rectContainsPoint(boundingRect, this.startPos)) {
        // source line 552, bytecode pc 72
        return false;
    }
    // source line 555, bytecode pc 74
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    if (this.ccbNode_IconBar) {
        // source line 565, bytecode pc 33
        (this.endPos = this.convertTouchToNodeSpace(touch));
        if (((this.endPos.x - this.startPos.x) > 10)) {
            // source line 568, bytecode pc 77
            this.next();
        } else {
            if (((this.endPos.x - this.startPos.x) < -10)) {
                // source line 571, bytecode pc 126
                this.prev();
            }
        }
        // source line 574, bytecode pc 152
        this.updateSkillPiece(this.getCurSelect());
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 579, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 580, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 581, bytecode pc 54
    this.tableView.setTouchPriority(this.m_baseTouchPriority);
},
    cfg: {
        leftArrow: { tag: 10 },
        rightArrow: { tag: 11 },
        bg: { tag: 12 },
        liuxing: { zOrder: 2, tag: 35 }
    }
}));
// source line 606, bytecode pc 439
(xs.Scene.WishingAgaView.create = function() {
    var ret;
    // source line 607, bytecode pc 23
    (ret = new xs.Scene.WishingAgaView());
    if ((ret && ret.init())) {
        // source line 609, bytecode pc 55
        return ret;
    }
    // source line 611, bytecode pc 57
    return null;
});
// source line 732, bytecode pc 592
(xs.Scene.WishingScene = cc.Scene.extend({
    ctor: function() {
    // source line 623, bytecode pc 12
    this._super();
    // source line 624, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var visibleSize;
    // source line 633, bytecode pc 18
    this.log("======");
    // source line 634, bytecode pc 28
    (this.params = params);
    // source line 635, bytecode pc 64
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 638, bytecode pc 104
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_ChooseGirl);
    // source line 641, bytecode pc 137
    (this.playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 642, bytecode pc 176
    this.playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 643, bytecode pc 235
    xs.Utils.Node.attachNodes(this, this.playerInfo, { desc: "lt", sc: true });
    // source line 654, bytecode pc 327
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 38))));
    // source line 656, bytecode pc 347
    this.pageView.setListener(this);
    // source line 657, bytecode pc 414
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("wishing"), xs.Scene.WishingAgaView);
    // source line 658, bytecode pc 473
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 659, bytecode pc 504
    this.pageView.getCurSelPageView().addAction(this);
    // source line 665, bytecode pc 544
    this.pageView.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 669, bytecode pc 581
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 672, bytecode pc 621
    this.sideMenu.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 675, bytecode pc 642
    this.sideMenu.setBaseTouchPriority(-30);
    // source line 679, bytecode pc 644
    return true;
},
    onEnter: function() {
    if ((this.params !== undefined)) {
        // source line 686, bytecode pc 69
        this.pageView.selectPage(this.params.selPageIndex).selCurFirstCard(this.params.cardIdx);
    }
},
    back: function() {
    var _modelMap;
    // source line 692, bytecode pc 19
    this.reincarnationView.removeFromParent(true);
    // source line 693, bytecode pc 43
    this.runEffectAction(xs.Constant_NodeEffectEvent_Revert);
    // source line 696, bytecode pc 79
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("GeneralCompound_RandEvent"));
    if (_modelMap) {
        // source line 698, bytecode pc 124
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    }
    // source line 702, bytecode pc 172
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    _removeOutAll: function() {
    // source line 706, bytecode pc 33
    xs.Tools.UI.removeOut(this.playerInfo);
    // source line 707, bytecode pc 67
    xs.Tools.UI.removeOut(this.sideMenu);
    // source line 708, bytecode pc 101
    xs.Tools.UI.removeOut(this.pageView);
},
    _removeInAll: function() {
    // source line 713, bytecode pc 33
    xs.Tools.UI.removeIn(this.playerInfo);
    // source line 714, bytecode pc 67
    xs.Tools.UI.removeIn(this.sideMenu);
    // source line 715, bytecode pc 101
    xs.Tools.UI.removeIn(this.pageView);
},
    onEnterTransitionDidFinish: function() {
    // source line 720, bytecode pc 12
    this._super();
    // source line 721, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this._removeOutAll, xs.Constant_Notify_Event_WinshingOut);
    // source line 722, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this._removeInAll, xs.Constant_Notify_Event_WinshingIn);
},
    onExitTransitionDidStart: function() {
    // source line 726, bytecode pc 12
    this._super();
    // source line 727, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_WinshingOut);
    // source line 728, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_WinshingIn);
},
    cfg: { reincarnationView: { priority: -30 } }
}));
// source line 739, bytecode pc 618
(xs.Scene.WishingScene.create = function(params) {
    var ret;
    // source line 740, bytecode pc 22
    xs.log("======");
    // source line 741, bytecode pc 46
    (ret = new xs.Scene.WishingScene());
    if ((ret && ret.init(params))) {
        // source line 743, bytecode pc 105
        xs.Views.Mgr.dismissLoadingLayer();
        // source line 744, bytecode pc 109
        return ret;
    }
    // source line 747, bytecode pc 111
    return null;
});
// source line 755, bytecode pc 712
xs.Scene.Mgr.registerScene("WishingScene", { "class": xs.Scene.WishingScene, area: [ "WujiangScene01" ], type: xs.Constant_SceneType_General });
