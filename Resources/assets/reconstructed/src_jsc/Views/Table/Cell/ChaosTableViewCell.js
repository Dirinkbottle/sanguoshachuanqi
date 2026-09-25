// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/ChaosTableViewCell.js:1
// source line 192, bytecode pc 463
(xs.Views.ChaosTableViewCell = xs.Views.Table.Cell.BaseCell.extend({
    draw: function(ctx) {
    // source line 7, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(model, skillPieceModel) {
    // source line 16, bytecode pc 9
    (this.skillPieceModel = skillPieceModel);
    // source line 17, bytecode pc 18
    (this.m_baseTouchPriority = -1);
    // source line 19, bytecode pc 54
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_8_3_ChaosCell.ccbi", this));
    // source line 20, bytecode pc 97
    this.ccbNode.setContentSize(cc.size(265, 407));
    // source line 21, bytecode pc 136
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 22, bytecode pc 220
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 24, bytecode pc 228
    (this.m_name = null);
    // source line 25, bytecode pc 236
    (this.m_chgBtn = null);
    // source line 26, bytecode pc 244
    (this.m_chgQuickBtn = null);
    // source line 27, bytecode pc 252
    (this.m_lv = null);
    // source line 28, bytecode pc 300
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 30, bytecode pc 317
    this.updateCell(model);
    // source line 32, bytecode pc 319
    return true;
},
    updateCell: function(model) {
    // source line 36, bytecode pc 9
    (this.model = model);
    // source line 37, bytecode pc 42
    this.m_name.setString(model.getPlayerNick());
    // source line 38, bytecode pc 75
    this.m_lv.setString(model.getLevel());
    // source line 39, bytecode pc 95
    this.m_lv.setZOrder(1);
    if (!this.userCard) {
        // source line 42, bytecode pc 174
        (this.userCard = xs.Utils.replaceNode(this.ccbNode, this.cfg.card.tag, model.createCardView_Chart()));
    } else {
        // source line 44, bytecode pc 201
        this.userCard.reloadData(model);
    }
    // source line 47, bytecode pc 249
    this.ccbNode.getChildByTag(this.cfg.topBorder.tag).setZOrder(1);
    // source line 48, bytecode pc 297
    this.ccbNode.getChildByTag(this.cfg.bottomBorder.tag).setZOrder(1);
    // source line 49, bytecode pc 345
    this.ccbNode.getChildByTag(this.cfg.probability.tag).setZOrder(1);
    // source line 50, bytecode pc 393
    this.ccbNode.getChildByTag(this.cfg.lv.tag).setZOrder(1);
    // source line 52, bytecode pc 421
    this.showProbability(model.getProbability());
    if (this.m_chgBtn) {
        // source line 55, bytecode pc 483
        this.m_chgBtn.setString(xs.Tools.String.createString("fight"));
        // source line 56, bytecode pc 504
        this.m_chgBtn.setTouchPriority(-1);
        // source line 59, bytecode pc 541
        this.m_chgBtn.setOnClickCallBack(function() {
    // source line 58, bytecode pc 23
    this.fightClick(xs.Constants_FightQuickType_Nor);
}.bind(this));
    }
    if (this.m_chgQuickBtn) {
        // source line 62, bytecode pc 603
        this.m_chgQuickBtn.setString(xs.Tools.String.createString("quickFight"));
        // source line 63, bytecode pc 624
        this.m_chgQuickBtn.setTouchPriority(-1);
        // source line 66, bytecode pc 661
        this.m_chgQuickBtn.setOnClickCallBack(function() {
    // source line 65, bytecode pc 23
    this.fightClick(xs.Constants_FightQuickType_Quick);
}.bind(this));
    }
},
    fightClick: function(fightQuickType) {
    var cd, dialog;
    // source line 71, bytecode pc 32
    xs.log(("fightQuickType" + fightQuickType));
    // source line 72, bytecode pc 94
    (cd = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChaosCountDown());
    if (((cd > 0) && (this.model.getPlayerType() === 1))) {
        // source line 83, bytecode pc 304
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_76"),
    rightText: xs.Tools.String.createString("auto_name_146"),
    leftCB: function() {
    // source line 80, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 81, bytecode pc 49
    this.gotoFight(fightQuickType);
}.bind(this),
    rightCB: function() {
    // source line 84, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
})._dialog);
        // source line 87, bytecode pc 352
        dialog.setTitleByString(xs.Tools.String.createString("auto_name_486"));
        // source line 88, bytecode pc 400
        dialog.setContentText(xs.Tools.String.createString("auto_name_487"));
    } else {
        // source line 91, bytecode pc 428
        this.gotoFight(fightQuickType);
    }
},
    gotoFight: function(fightQuickType) {
    var _result, id, type;
    if ((fightQuickType == xs.Constants_FightQuickType_Quick)) {
        // source line 99, bytecode pc 54
        (_result = xs.Profile.Permission.isUnLock_chaoFight());
        if (!_result.result) {
            // source line 101, bytecode pc 104
            xs.Views.Mgr.showToast(_result.desc);
            // source line 102, bytecode pc 106
            return void 0;
        }
    }
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerCurQiLi() > 0)) {
        // source line 110, bytecode pc 204
        xs.Tools.Statistic.event("fight_qiangduo_begin");
        // source line 112, bytecode pc 225
        (id = this.model.getPlayerId());
        // source line 113, bytecode pc 246
        (type = this.model.getPlayerType());
        // source line 148, bytecode pc 338
        xs.Tools.Net.requestChaosFight({ other_id: id, type: type, skill_id: this.skillPieceModel.getId(), ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    // source line 122, bytecode pc 39
    xs.Scene.Mgr.saveStatus("skillPieceModel", this.skillPieceModel);
    // source line 124, bytecode pc 76
    xs.Scene.Mgr.saveStatus("PvpFight_RandEvent", _modelMap);
    if ((fightQuickType == xs.Constants_FightQuickType_Nor)) {
        // source line 131, bytecode pc 172
        xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_Chaos, xs.Models.FightInfo.create(jsonObj), null);
    } else {
        // source line 137, bytecode pc 235
        xs.Views.QuickFightView.showWithFightInfo(xs.Models.FightInfo.create(jsonObj));
    }
}, function(errInfo) {
    if ((errInfo.error_code === "e_8032")) {
        // source line 143, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_488"));
        // source line 144, bytecode pc 80
        return true;
    } else {
        if ((errInfo.error_code === "e_00005")) {
            // source line 146, bytecode pc 106
            return true;
        }
    }
}, this);
    } else {
        // source line 151, bytecode pc 403
        xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_EnergyWithVipCondition });
    }
},
    showProbability: function(pro) {
    // source line 156, bytecode pc 3
    switch (pro) {
        case 1:
        // source line 159, bytecode pc 116
        xs.Utils.replaceNode(this.ccbNode, this.cfg.probability.tag, xs.Factorys.Sprite.create("Cmn03_gailv_1", "Cmn03"));
        break;
        case 2:
        // source line 163, bytecode pc 206
        xs.Utils.replaceNode(this.ccbNode, this.cfg.probability.tag, xs.Factorys.Sprite.create("Cmn03_gailv_2", "Cmn03"));
        break;
        case 3:
        // source line 167, bytecode pc 296
        xs.Utils.replaceNode(this.ccbNode, this.cfg.probability.tag, xs.Factorys.Sprite.create("Cmn03_gailv_3", "Cmn03"));
        break;
        case 4:
        // source line 171, bytecode pc 386
        xs.Utils.replaceNode(this.ccbNode, this.cfg.probability.tag, xs.Factorys.Sprite.create("Cmn03_gailv_4", "Cmn03"));
        break;
        default:
        break;
    }
},
    cfg: {
        name: { tag: 10 },
        topBorder: { tag: 11 },
        bottomBorder: { tag: 12 },
        card: { tag: 13 },
        probability: { tag: 14 },
        challengeBtn: { tag: 15 },
        lv: { tag: 17 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_name", id: "LS_huodong_day" },
            { tag: 16, type: "ls", name: "m_lv", id: "LS_Lv" },
            { tag: 21, type: "btn", name: "m_chgBtn", id: "Btn_NewFight" },
            { tag: 20, type: "btn", name: "m_chgQuickBtn", id: "Btn_NewQuickFight" }
        ]
    }
}));
// source line 197, bytecode pc 489
(xs.Views.ChaosTableViewCell.create = function(model, skillId) {
    var ret;
    // source line 198, bytecode pc 23
    (ret = new xs.Views.ChaosTableViewCell());
    if ((ret && ret.init(model, skillId))) {
        // source line 200, bytecode pc 63
        return ret;
    }
    // source line 203, bytecode pc 92
    xs.assert(false, "xs.Views.ChaosTableViewCell.create fail!", ret);
    // source line 205, bytecode pc 94
    return null;
});
