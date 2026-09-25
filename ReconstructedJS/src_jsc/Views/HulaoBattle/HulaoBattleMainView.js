// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HulaoBattle/HulaoBattleMainView.js:1
// source line 274, bytecode pc 643
(xs.Views.HulaoBattleMainView = cc.Layer.extend({
    name: "xs.Views.HulaoBattleMainView",
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_title_1", id: "LS_danyao", stringId: "HulaoBattle_title1" },
        { tag: 2, type: "ls", name: "m_title_2", id: "LS_zhanchang_zi1", stringId: "HulaoBattle_title2" },
        { tag: 3, type: "ls", name: "m_content_1", id: "LS_mainUI3", stringId: "HulaoBattle_content1" },
        { tag: 4, type: "ls", name: "m_title_3", id: "LS_danyao", stringId: "HulaoBattle_title3" },
        { tag: 5, type: "ls", name: "m_tips", id: "LS_fightUI1", stringId: "HulaoBattle_tips" },
        { tag: 20, type: "btn", name: "m_battleBtn", id: "Btn_btn1" },
        { tag: 11, name: "m_icon_1" },
        { tag: 12, name: "m_icon_2" },
        { tag: 13, name: "m_icon_3" }
    ],
    cfg: { GemLightZOrder: 12 },
    ctor: function() {
    // source line 23, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    var visibleSize;
    // source line 28, bytecode pc 26
    xs.log_zhz("HulaoBattleMainView-data", data);
    if (!this._super()) {
        // source line 30, bytecode pc 46
        return false;
    }
    // source line 32, bytecode pc 54
    (this.m_ccbNode = null);
    // source line 33, bytecode pc 62
    (this.m_battleBtn = null);
    // source line 34, bytecode pc 70
    (this.m_title_1 = null);
    // source line 35, bytecode pc 78
    (this.m_title_3 = null);
    // source line 36, bytecode pc 86
    (this.m_gemLightArm = null);
    // source line 37, bytecode pc 111
    (visibleSize = xs.director.getVisibleSize());
    // source line 39, bytecode pc 160
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.HulaoBattleMainView));
    // source line 41, bytecode pc 182
    this.m_ccbNode.setContentSize(visibleSize);
    // source line 43, bytecode pc 225
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 44, bytecode pc 303
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", offset: cc.p(0, 0) });
    // source line 48, bytecode pc 347
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("HuLaoBattle_Instruction"));
    // source line 49, bytecode pc 457
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "rt", offset: cc.p((-xs.Views.MainMenuView.Width - 60), -100), sc: true }, null);
    // source line 52, bytecode pc 477
    this._amendCcbiPos(this.m_ccbNode);
    // source line 54, bytecode pc 494
    this.setHulaoData(data);
    // source line 56, bytecode pc 496
    return true;
},
    setHulaoData: function(data) {
    var label;
    if (this.m_gemLightArm) {
        // source line 60, bytecode pc 28
        this.m_gemLightArm.removeFromParent();
        // source line 61, bytecode pc 36
        (this.m_gemLightArm = null);
    }
    // source line 64, bytecode pc 66
    (this.m_stage = parseInt(data.stage));
    // source line 66, bytecode pc 96
    (this.m_mode = parseInt(data.mode));
    // source line 68, bytecode pc 126
    (this.m_status = parseInt(data.status));
    if (!this.m_mode) {
        // source line 71, bytecode pc 189
        this.m_battleBtn.setString(xs.Tools.String.createString("HulaoBattle_btn_battle"));
        // source line 74, bytecode pc 226
        this.m_battleBtn.setOnClickCallBack(function() {
    // source line 73, bytecode pc 39
    xs.Views.Mgr.showDialogByName("HulaoBattleSelectDifficulty", this.m_stage);
}.bind(this));
    } else {
        /* TODO_BYTECODE pc=238 opcode=tableswitch reason=tableswitch_target_invalid */
    }
    // source line 105, bytecode pc 736
    this.m_title_1.setString(xs.Tools.String.createStringWithArgsArray("HulaoBattle_title1", [ xs.Tools.String.convNumberString(this.m_stage) ]));
    // source line 109, bytecode pc 830
    this.m_title_3.setString(xs.Tools.String.createStringWithArgsArray("HulaoBattle_title3", [ xs.Tools.String.convNumberString(this.m_stage) ]));
    // source line 112, bytecode pc 850
    this.setRewardData(this.m_stage);
    /* TODO_BYTECODE detached_function_object=1 name=_anonymous_ see recovery outline */
    /* TODO_BYTECODE detached_function_object=2 name=_anonymous_ see recovery outline */
},
    goToGarrisonLayoutDialog: function(_data) {
    // source line 141, bytecode pc 148
    xs.Tools.Net.requestHuLaoBattleLineUp({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    stage: _data.stage,
    mode: _data.mode
}, function(data) {
    var param;
    if (data.return_info) {
        if (xs.Utils.isEmpty(data.return_info.left_info)) {
            // source line 126, bytecode pc 83
            (data.return_info.left_info.general_list = this.getTeamGeneralsData());
            // source line 127, bytecode pc 103
            (data.return_info.left_info.total_fortune = 0);
            // source line 128, bytecode pc 123
            (data.return_info.left_info.consume_fortune = 1);
        }
        // source line 133, bytecode pc 184
        (param = { data: data.return_info, stage: _data.stage, mode: _data.mode });
        // source line 135, bytecode pc 221
        xs.Views.Mgr.showDialogByName("GarrisonLayoutDialog", param);
    }
}, function(data) {
}, this);
},
    getTeamGeneralsData: function() {
    var general_list, teamGeneralsData, i, data;
    // source line 145, bytecode pc 8
    (general_list = []);
    // source line 146, bytecode pc 59
    (teamGeneralsData = xs.Profile.GameData.Mgr.getInstance().Team.getGeneralsInTeam());
    // source line 148, bytecode pc 64
    (i = 0);
    while ((i < teamGeneralsData.length)) {
        // source line 157, bytecode pc 240
        (data = {
    pk_id: teamGeneralsData[i].getPkId(),
    general_id: teamGeneralsData[i].getId(),
    general_level: teamGeneralsData[i].getLevel(),
    fighting: xs.Profile.GameData.Mgr.getInstance().Generals.getAttr(teamGeneralsData[i], xs.Constant_AttrType_FightPoint),
    fortune: 0,
    hp: 100,
    current_hp: 100
});
        // source line 160, bytecode pc 259
        general_list.push(data);
        // source line 148, bytecode pc 274
        i++;
    }
    // source line 164, bytecode pc 296
    return general_list;
},
    showRewardAnimation: function(data) {
    var m_iconTag, m_icon;
    // source line 168, bytecode pc 24
    (m_iconTag = (10 + parseInt(data)));
    // source line 169, bytecode pc 49
    (m_icon = this.m_ccbNode.getChildByTag(m_iconTag));
    if (!this.m_gemLightArm) {
        // source line 171, bytecode pc 105
        (this.m_gemLightArm = xs.Views.Armature.AutoAudioArmature.create("GemLight"));
        // source line 172, bytecode pc 138
        this.m_gemLightArm.setPosition(m_icon.getPosition());
        // source line 173, bytecode pc 168
        this.m_gemLightArm.setZOrder(this.cfg.GemLightZOrder);
        // source line 174, bytecode pc 211
        this.m_gemLightArm.playAniById("ani_gemlight", { loop: true, speed: 1 });
        // source line 175, bytecode pc 247
        xs.Utils.Node.attachNodes(this, this.m_gemLightArm);
    }
},
    getHulaoBattleReward: function(stage, mode) {
    // source line 198, bytecode pc 126
    xs.Tools.Net.requestHulaoRecieve({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    stage: stage,
    mode: mode
}, function(data) {
    // source line 185, bytecode pc 41
    xs.Views.Mgr.showDialogByName("GetPropsDialog", data.add_list);
    // source line 194, bytecode pc 152
    xs.Tools.Net.requestHulaoMain({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 190, bytecode pc 21
    this.setHulaoData(data.return_info);
}, function(data) {
}, this);
}, function(data) {
}, this);
},
    setRewardData: function(param) {
    var data, rewardList, i, _itemId, _itemTag;
    // source line 202, bytecode pc 23
    (data = xs.Cfg.System.sgs_hulao_reward_conf);
    // source line 203, bytecode pc 34
    (rewardList = data[param]);
    if (!xs.Utils.isEmpty(rewardList)) {
        for (var i in rewardList) {
            if (!(rewardList.hasOwnProperty(i))) continue;
            // source line 207, bytecode pc 117
            (_itemId = rewardList[i][0]);
            // source line 208, bytecode pc 142
            (_itemTag = (10 + parseInt(i)));
            // source line 209, bytecode pc 163
            this.setExchangeIcon(_itemId, _itemTag);
        }
    }
},
    setExchangeIcon: function(itemId, m_iconTag) {
    var m_icon, param, head, btn;
    // source line 216, bytecode pc 24
    (m_icon = this.m_ccbNode.getChildByTag(m_iconTag));
    // source line 217, bytecode pc 70
    (param = xs.Models.Item.createWithBase(itemId));
    // source line 218, bytecode pc 94
    (head = param.createIcon_GradeAndName());
    // source line 219, bytecode pc 128
    (btn = xs.Views.Btn.createInvisibleWithChild(head));
    // source line 220, bytecode pc 158
    btn.setPosition(m_icon.getPosition());
    // source line 226, bytecode pc 192
    btn.setOnClickCallBack(function() {
    if ((param instanceof xs.Models.Item)) {
        // source line 224, bytecode pc 52
        this.packeageDetailCallback(itemId);
    }
}.bind(this));
    // source line 227, bytecode pc 209
    btn.setSwallowTouch(false);
    // source line 228, bytecode pc 226
    btn.setZoomOnTouchDown(false);
    // source line 229, bytecode pc 245
    btn.setTag(m_iconTag);
    if (this.m_ccbNode.getChildByTag((m_iconTag + 999))) {
        // source line 232, bytecode pc 328
        xs.Utils.Node.safeRemoveChild(this.m_ccbNode.getChildByTag((m_iconTag + 999)));
    }
    // source line 234, bytecode pc 366
    xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
    // source line 235, bytecode pc 397
    xs.Utils.Node.safeRemoveChild(m_icon);
    // source line 236, bytecode pc 418
    btn.setTouchPriority(-1000);
},
    packeageDetailCallback: function(data) {
    // source line 241, bytecode pc 36
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", data);
},
    _amendCcbiPos: function(mCcbi) {
    var mChilds, mChildIdx, mChild, mOriginalPos;
    // source line 246, bytecode pc 17
    (mChilds = mCcbi.getChildren());
    if (mChilds) {
        for (var mChildIdx in mChilds) {
            // source line 249, bytecode pc 52
            (mChild = mChilds[mChildIdx]);
            if (!(mChild.getPosition)) continue;
            // source line 251, bytecode pc 83
            (mOriginalPos = mChild.getPosition());
            // source line 252, bytecode pc 115
            mChild.setPosition(this._ip4sPosTransform(mOriginalPos));
        }
    }
},
    _ip4sPosTransform: function(mPos) {
    var visibleSize, mScaleW, mScaleH;
    // source line 261, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 262, bytecode pc 40
    (mScaleW = (visibleSize.width / 960));
    // source line 263, bytecode pc 56
    (mScaleH = (visibleSize.height / 640));
    // source line 264, bytecode pc 99
    return cc.p((mPos.x * mScaleW), (mPos.y * mScaleH));
},
    onEnter: function() {
    // source line 269, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 272, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 275, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 276, bytecode pc 31
    this.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 277, bytecode pc 58
    this.m_battleBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 282, bytecode pc 669
(xs.Views.HulaoBattleMainView.create = function(data) {
    var view;
    // source line 283, bytecode pc 23
    (view = new xs.Views.HulaoBattleMainView());
    if ((view && view.init(data))) {
        // source line 285, bytecode pc 59
        return view;
    }
    // source line 287, bytecode pc 84
    xs.assert(false, "xs.Views.HulaoBattleMainView.create error!");
    // source line 288, bytecode pc 86
    return null;
});
