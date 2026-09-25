// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/PlayerInfoDialog.js:1
// source line 245, bytecode pc 203
(xs.Views.Dialog.PlayerInfoDialog = xs.Views.HungerLayer.extend({
    init: function() {
    var pos, firstTeam;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 16, bytecode pc 35
    (this.m_expProgressTimer = null);
    // source line 19, bytecode pc 43
    (this.m_closeBtn = null);
    // source line 20, bytecode pc 51
    (this.m_BigBg = null);
    // source line 21, bytecode pc 59
    (this.m_cardBtn = null);
    // source line 22, bytecode pc 67
    (this.m_head = null);
    // source line 23, bytecode pc 75
    (this.m_expBg = null);
    // source line 24, bytecode pc 83
    (this.m_expProgress = null);
    // source line 25, bytecode pc 91
    (this.m_nameLab = null);
    // source line 26, bytecode pc 99
    (this.m_lvLab = null);
    // source line 27, bytecode pc 107
    (this.m_vipLab = null);
    // source line 28, bytecode pc 115
    (this.m_fightLab = null);
    // source line 29, bytecode pc 123
    (this.m_expLab = null);
    // source line 30, bytecode pc 131
    (this.m_yuanBaoLab = null);
    // source line 31, bytecode pc 139
    (this.m_tongQianLab = null);
    // source line 32, bytecode pc 147
    (this.m_teamLab = null);
    // source line 33, bytecode pc 155
    (this.m_commandLab = null);
    // source line 34, bytecode pc 163
    (this.m_tiLiLab = null);
    // source line 35, bytecode pc 171
    (this.m_tiLiNextTimeLab = null);
    // source line 36, bytecode pc 179
    (this.m_tiLiAllTimeLab = null);
    // source line 37, bytecode pc 187
    (this.m_jingLiLab = null);
    // source line 38, bytecode pc 195
    (this.m_jingLiNextTimeLab = null);
    // source line 39, bytecode pc 203
    (this.m_jingLiAllTimeLab = null);
    // source line 40, bytecode pc 211
    (this.m_signLab = null);
    // source line 41, bytecode pc 219
    (this.m_changeNameBtn = null);
    // source line 42, bytecode pc 227
    (this.m_vipBtn = null);
    // source line 43, bytecode pc 235
    (this.m_editSignBtn = null);
    // source line 44, bytecode pc 243
    (this.m_lvBg = null);
    // source line 45, bytecode pc 251
    (this.playeridLab = null);
    // source line 46, bytecode pc 259
    (this._displayGeneral = null);
    // source line 48, bytecode pc 267
    (this.m_jingLiNextTimeLab_static = null);
    // source line 49, bytecode pc 275
    (this.m_jingLiAllTimeLab_static = null);
    // source line 50, bytecode pc 283
    (this.m_tiLiNextTimeLab_static = null);
    // source line 51, bytecode pc 291
    (this.m_tiLiAllTimeLab_static = null);
    // source line 53, bytecode pc 342
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.PlayerInfoDialog, this));
    // source line 57, bytecode pc 432
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true, offset: { x: -258, y: -314 } });
    // source line 59, bytecode pc 499
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.Dialog.PlayerInfoDialog.cfg.ccbCfg, this);
    // source line 67, bytecode pc 571
    (this.m_jingLiNextTimeLab = xs.Factorys.Label.createByStyleId("LS_liebiaoInf2").setAligns(xs.AlignH_Left, xs.AlignV_Center));
    // source line 68, bytecode pc 643
    (this.m_jingLiAllTimeLab = xs.Factorys.Label.createByStyleId("LS_liebiaoInf2").setAligns(xs.AlignH_Left, xs.AlignV_Center));
    // source line 69, bytecode pc 715
    (this.m_tiLiNextTimeLab = xs.Factorys.Label.createByStyleId("LS_liebiaoInf2").setAligns(xs.AlignH_Left, xs.AlignV_Center));
    // source line 70, bytecode pc 787
    (this.m_tiLiAllTimeLab = xs.Factorys.Label.createByStyleId("LS_liebiaoInf2").setAligns(xs.AlignH_Left, xs.AlignV_Center));
    // source line 72, bytecode pc 812
    this.m_jingLiNextTimeLab_static.setNext(this.m_jingLiNextTimeLab);
    // source line 73, bytecode pc 837
    this.m_jingLiAllTimeLab_static.setNext(this.m_jingLiAllTimeLab);
    // source line 74, bytecode pc 862
    this.m_tiLiNextTimeLab_static.setNext(this.m_tiLiNextTimeLab);
    // source line 75, bytecode pc 887
    this.m_tiLiAllTimeLab_static.setNext(this.m_tiLiAllTimeLab);
    // source line 77, bytecode pc 925
    this.m_closeBtn.addOnClickCallBack(this.closeCallback.bind(this));
    // source line 80, bytecode pc 946
    (pos = this.m_expProgress.getPosition());
    // source line 81, bytecode pc 964
    this.m_expProgress.removeFromParent();
    // source line 84, bytecode pc 999
    (this.m_expProgressTimer = cc.ProgressTimer.create(this.m_expProgress));
    // source line 85, bytecode pc 1021
    this.m_expProgressTimer.setPosition(pos);
    // source line 86, bytecode pc 1050
    this.m_expProgressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 87, bytecode pc 1089
    this.m_expProgressTimer.setMidpoint(cc.p(0, 0));
    // source line 88, bytecode pc 1128
    this.m_expProgressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 89, bytecode pc 1169
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_expProgressTimer);
    // source line 90, bytecode pc 1190
    this.m_BigBg.setZOrder(-2);
    // source line 91, bytecode pc 1210
    this.m_expProgressTimer.setZOrder(1);
    // source line 92, bytecode pc 1231
    this.m_lvBg.setZOrder(2);
    // source line 93, bytecode pc 1252
    this.m_lvLab.setZOrder(3);
    // source line 100, bytecode pc 1297
    (this.playeridLab = xs.Factorys.Label.createByStyleIdWithString("LS_wujiangInf1", ""));
    // source line 101, bytecode pc 1378
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.playeridLab, { desc: "c", offset: { x: 0, y: 0 } });
    // source line 102, bytecode pc 1421
    this.playeridLab.setAnchorPoint(cc.p(0, 0.5));
    // source line 105, bytecode pc 1459
    this.m_cardBtn.addOnClickCallBack(this.showReplaceCardDialogCallback.bind(this));
    // source line 106, bytecode pc 1497
    this.m_changeNameBtn.addOnClickCallBack(this.changeNameCallback.bind(this));
    // source line 107, bytecode pc 1535
    this.m_vipBtn.addOnClickCallBack(this.vipCallback.bind(this));
    // source line 108, bytecode pc 1573
    this.m_editSignBtn.addOnClickCallBack(this.editSignCallback.bind(this));
    if (xs.player_skin) {
        // source line 111, bytecode pc 1653
        (this._displayGeneral = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralModelByGeneralId(xs.player_skin));
        if ((this._displayGeneral == null)) {
            // source line 113, bytecode pc 1710
            (this._displayGeneral = xs.Models.General.createWithBase(xs.player_skin));
        }
    }
    if (!this._displayGeneral) {
        // source line 117, bytecode pc 1775
        (firstTeam = xs.Profile.GameData.Mgr.getInstance().Team.getTeamGeneralInPos(1));
        // source line 118, bytecode pc 1833
        (this._displayGeneral = xs.Profile.GameData.Mgr.getInstance().Team.getGeneral(firstTeam));
    }
    // source line 120, bytecode pc 1846
    this.updatePlayerInfo();
    // source line 122, bytecode pc 1848
    return true;
},
    onEnter: function() {
    // source line 125, bytecode pc 12
    this._super();
    // source line 129, bytecode pc 113
    xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getNotifyCenter(xs.Constant_Notify_ModelChange_TiliQili).addObserver(this, this.updatePlayerTiLiAndJingLi, xs.Constant_Notify_ModelChange_TiliQili);
    // source line 132, bytecode pc 160
    xs.Utils.Notify.addObserver(this, this.updatePlayerInfo, xs.Constant_Notify_ModelChange_UserInfo);
},
    onExit: function() {
    // source line 137, bytecode pc 93
    xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getNotifyCenter(xs.Constant_Notify_ModelChange_TiliQili).removeObserver(this, xs.Constant_Notify_ModelChange_TiliQili);
    // source line 139, bytecode pc 133
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 141, bytecode pc 146
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 144, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 145, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 147, bytecode pc 90
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Dialog.PlayerInfoDialog.cfg.m_closeBtn.priority));
    // source line 149, bytecode pc 151
    this.m_changeNameBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Dialog.PlayerInfoDialog.cfg.m_changeNameBtn.priority));
    // source line 151, bytecode pc 212
    this.m_vipBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Dialog.PlayerInfoDialog.cfg.m_vipBtn.priority));
    // source line 153, bytecode pc 273
    this.m_editSignBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Dialog.PlayerInfoDialog.cfg.m_editSignBtn.priority));
    // source line 155, bytecode pc 334
    this.m_cardBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.Dialog.PlayerInfoDialog.cfg.m_cardBtn.priority));
},
    showReplaceCardDialogCallback: function() {
    // source line 158, bytecode pc 59
    (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_DisplayCard));
    // source line 159, bytecode pc 86
    this.m_replaceDialog.setReplaceData(this._displayGeneral, false);
    // source line 160, bytecode pc 122
    this.m_replaceDialog.setHideData([ this._displayGeneral ], true);
    // source line 161, bytecode pc 142
    this.m_replaceDialog.setListener(this);
},
    ReplaceCardDialog_replaceCard: function(data, cardType) {
    // source line 165, bytecode pc 26
    xs.log_zhz("replaceCard", data);
    // source line 167, bytecode pc 36
    (this._displayGeneral = data);
    // source line 168, bytecode pc 49
    this.updatePlayerInfo();
    // source line 169, bytecode pc 76
    xs.Views.Mgr.hideDialog();
    // source line 170, bytecode pc 104
    this._requestChangeGeneralSkin(data.getId());
},
    ReplaceCardDialog_close: function() {
    // source line 175, bytecode pc 7
    (this.m_replaceDialog = null);
},
    _requestChangeGeneralSkin: function(data) {
    // source line 188, bytecode pc 118
    xs.Tools.Net.requestChangeGeneralSkin({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    general_skin: data
}, function(data) {
    // source line 184, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("str_chgSkin_Successfully"));
}, function(data) {
}, this);
},
    closeCallback: function() {
    // source line 192, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    changeNameCallback: function() {
    var changeNamePage;
    // source line 197, bytecode pc 66
    (changeNamePage = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_ChangeNamePage));
    if (changeNamePage) {
        if ((changeNamePage.getItemNum() > 0)) {
            // source line 202, bytecode pc 128
            xs.Views.Mgr.showDialogByName("PlayerChangeNameDialog");
            // source line 203, bytecode pc 130
            return void 0;
        }
    }
    // source line 207, bytecode pc 190
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_419"));
},
    vipCallback: function() {
    // source line 210, bytecode pc 81
    xs.Views.Mgr.showDialogByName("ChargePrivilegeDialog", xs.gd_mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
},
    editSignCallback: function() {
    // source line 214, bytecode pc 32
    xs.Views.Mgr.showDialogByNameWithStack("EditSignatureDialog");
},
    setPlayerDisplayCard: function(general) {
    var card;
    // source line 217, bytecode pc 50
    (card = xs.Utils.replaceGeneralCard(this.m_ccbNode, 999, general.createCardView()));
    // source line 218, bytecode pc 68
    card.setZOrder(-1);
    // source line 219, bytecode pc 89
    card.setScale(0.9);
    // source line 220, bytecode pc 108
    card.setTag(999);
},
    updatePlayerInfo: function() {
    var player;
    // source line 224, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 225, bytecode pc 70
    this.setPlayerDisplayCard(this._displayGeneral);
    // source line 226, bytecode pc 103
    this.m_nameLab.setString(player.getPlayerName());
    // source line 227, bytecode pc 136
    this.m_vipLab.setString(player.getPlayerVipLevel());
    // source line 228, bytecode pc 169
    this.m_lvLab.setString(player.getPlayerLevel());
    // source line 229, bytecode pc 235
    this.m_teamLab.setString(xs.Profile.GameData.Mgr.getInstance().Team.getTeamLengthPercentageString());
    // source line 230, bytecode pc 301
    this.m_fightLab.setString(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
    // source line 231, bytecode pc 334
    this.m_expLab.setString(player.getPlayerExpPercentageFormat());
    // source line 232, bytecode pc 367
    this.m_commandLab.setString(player.getPlayerAbility());
    // source line 233, bytecode pc 400
    this.m_yuanBaoLab.setString(player.getPlayerYuanBao());
    // source line 234, bytecode pc 433
    this.m_tongQianLab.setString(player.getPlayerTongQianToString());
    // source line 235, bytecode pc 466
    this.m_signLab.setString(player.getPlayerSignature());
    // source line 236, bytecode pc 499
    this.m_expProgressTimer.setPercentage(player.getPlayerExpPercentage());
    // source line 238, bytecode pc 544
    this.playeridLab.setString((("(" + player.getPlayerId()) + ")"));
    // source line 240, bytecode pc 638
    this.playeridLab.setPosition(cc.p((this.m_nameLab.getPositionX() + this.m_nameLab.getContentSize().width), this.m_nameLab.getPositionY()));
    // source line 242, bytecode pc 651
    this.updatePlayerTiLiAndJingLi();
},
    updatePlayerTiLiAndJingLi: function() {
    var player;
    // source line 247, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 248, bytecode pc 83
    this.m_tiLiLab.setString(player.getPlayerTiLiPercentage());
    // source line 249, bytecode pc 116
    this.m_jingLiLab.setString(player.getPlayerJingLiPercentage());
    // source line 252, bytecode pc 149
    this.m_tiLiNextTimeLab.setString(player.getPlayerNextTiLiRecoverTimeFormat());
    // source line 253, bytecode pc 182
    this.m_tiLiAllTimeLab.setString(player.getPlayerAllTiLiRecoverTimeFormat());
    // source line 255, bytecode pc 215
    this.m_jingLiNextTimeLab.setString(player.getPlayerNextJingLiRecoverTimeFormat());
    // source line 256, bytecode pc 248
    this.m_jingLiAllTimeLab.setString(player.getPlayerAllJingLiRecoverTimeFormat());
}
}));
// source line 260, bytecode pc 234
(xs.Views.Dialog.PlayerInfoDialog.create = function() {
    var dialog;
    // source line 261, bytecode pc 28
    (dialog = new xs.Views.Dialog.PlayerInfoDialog());
    if ((dialog && dialog.init())) {
        // source line 263, bytecode pc 60
        return dialog;
    }
    // source line 265, bytecode pc 83
    xs.warn("xs.Views.Dialog.PlayerInfoDialog.create error!");
    // source line 266, bytecode pc 85
    return null;
});
// source line 339, bytecode pc 2027
(xs.Views.Dialog.PlayerInfoDialog.cfg = {
    ccbCfg: [
        { name: "m_BigBg", tag: 11 },
        { name: "m_card", tag: 999 },
        { name: "m_cardBtn", tag: 9999, type: "bs", id: "BS_Btn2", stringId: "playerInfo_setCard" },
        { name: "m_closeBtn", tag: 10, type: "btn", id: "Btn_Close" },
        { name: "m_changeNameBtn", tag: 29, type: "bs", id: "BS_Btn2", stringId: "1070910013" },
        { name: "m_vipBtn", tag: 30, type: "bs", id: "BS_Btn2", stringId: "1070610021" },
        { name: "m_editSignBtn", tag: 31, type: "bs", id: "BS_Btn2", stringId: "1070910010" },
        { name: "m_nameLab", tag: 14, type: "ls", id: "LS_wujiangInf1" },
        { name: "m_lvLab", tag: 15, type: "ls", id: "LS_mainLv" },
        { name: "m_vipLab", tag: 16, type: "ls", id: "LS_Lv" },
        { name: "m_fightLab", tag: 17, type: "ls", id: "LS_mainUI4" },
        { name: "m_expLab", tag: 40, type: "ls", id: "LS_EXPInf" },
        { name: "m_yuanBaoLab", tag: 18, type: "ls", id: "LS_money" },
        { name: "m_tongQianLab", tag: 19, type: "ls", id: "LS_mainUI4" },
        { name: "m_teamLab", tag: 20, type: "ls", id: "LS_mainUI4" },
        { name: "m_commandLab", tag: 21, type: "ls", id: "LS_mainUI4" },
        { name: "m_tiLiLab", tag: 22, type: "ls", id: "LS_mainUI4" },
        { name: "m_jingLiLab", tag: 25, type: "ls", id: "LS_mainUI4" },
        { name: "m_signLab", tag: 28, type: "ls", id: "LS_jinengInf1" },
        { name: "m_labelTitle_static", tag: 100, type: "ls", id: "LS_popUI1", stringId: "1070910012" },
        { name: "m_yuanBaoLab_static", tag: 118, type: "ls", id: "LS_wujiangInf1", stringId: "1071110001" },
        {
            name: "m_tongQianLab_static",
            tag: 119,
            type: "ls",
            id: "LS_wujiangInf1",
            stringId: "1071110002"
        },
        { name: "m_teamLab_static", tag: 120, type: "ls", id: "LS_wujiangInf1", stringId: "1071110003" },
        { name: "m_commandLab_static", tag: 121, type: "ls", id: "LS_wujiangInf1", stringId: "1071110004" },
        { name: "m_tiLiLab_static", tag: 122, type: "ls", id: "LS_wujiangInf1", stringId: "1071110005" },
        { name: "m_jingLiLab_static", tag: 125, type: "ls", id: "LS_wujiangInf1", stringId: "1071110008" },
        { name: "m_signLab_static", tag: 128, type: "ls", id: "LS_wujiangInf1", stringId: "1071110011" },
        {
            name: "m_jingLiNextTimeLab_static",
            tag: 126,
            type: "ls",
            id: "LS_wujiangInf2",
            stringId: "1071110009"
        },
        {
            name: "m_jingLiAllTimeLab_static",
            tag: 127,
            type: "ls",
            id: "LS_wujiangInf2",
            stringId: "1071110010"
        },
        {
            name: "m_tiLiNextTimeLab_static",
            tag: 123,
            type: "ls",
            id: "LS_wujiangInf2",
            stringId: "1071110006"
        },
        {
            name: "m_tiLiAllTimeLab_static",
            tag: 124,
            type: "ls",
            id: "LS_wujiangInf2",
            stringId: "1071110007"
        },
        { name: "m_expBg", tag: 12 },
        { name: "m_expProgress", tag: 13 },
        { name: "m_lvBg", tag: 32 }
    ],
    m_closeBtn: { priority: -1 },
    m_changeNameBtn: { priority: -1 },
    m_vipBtn: { priority: -1 },
    m_editSignBtn: { priority: -1 },
    m_cardBtn: { priority: -1 }
});
// source line 345, bytecode pc 2107
xs.Views.Mgr.registerDialog("PlayerInfoDialog", { "class": xs.Views.Dialog.PlayerInfoDialog, styleType: xs.Constant_DlgStyleType_Large });
