// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/PictureActivityDialog.js:1
// source line 159, bytecode pc 518
(xs.Scene.Party.PictureActivityDialog = xs.Views.HungerLayer.extend({
    name: "PictureActivityDialog",
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelTitle", id: "LS_huodong_title", stringId: "auto_name_179" },
        { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" },
        { tag: 4, name: "m_spriteBg" }
    ],
    ad_cfg: {
        rechargeRebate: {
            tile: xs.Tools.String.createString("auto_name_180"),
            fileName: "big_picture/HuodongScene02_ad_chongzhifanli.png",
            bg_pos: cc.p(467, 283),
            lab_pos: cc.p(645, 484),
            isTime: true
        },
        sendLingJu: {
            tile: xs.Tools.String.createString("auto_name_181"),
            fileName: "big_picture/HuodongScene02_ad_lingju.png",
            bg_pos: cc.p(467, 293),
            lab_pos: cc.p(645, 484),
            isTime: false
        }
    },
    init: function(params, idx) {
    var m_bg;
    if (!this._super()) {
        // source line 45, bytecode pc 19
        return false;
    }
    // source line 48, bytecode pc 27
    (this.m_labelTitle = null);
    // source line 49, bytecode pc 35
    (this.m_btnExit = null);
    // source line 50, bytecode pc 43
    (this.m_spriteBg = null);
    // source line 51, bytecode pc 64
    (this.m_type = params.getPartyEventType());
    // source line 52, bytecode pc 72
    (this.m_cfg = null);
    // source line 54, bytecode pc 123
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Party_advertisement, this));
    // source line 56, bytecode pc 209
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c", offset: cc.p(-466, -306) });
    // source line 58, bytecode pc 252
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.CCB_Cfg, this);
    if ((this.m_type == xs.Constant_PartyType_PresentYuanbao)) {
        // source line 61, bytecode pc 292
        (this.m_cfg = this.ad_cfg.rechargeRebate);
        // source line 63, bytecode pc 354
        (this._labelRecharge = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
        // source line 64, bytecode pc 407
        this._labelRecharge.setString(0, xs.Tools.String.createString("auto_name_182"));
        // source line 65, bytecode pc 484
        this._labelRecharge.setString(1, (parseInt(params.recharge) + xs.Tools.String.createString("auto_name_161")));
        // source line 66, bytecode pc 513
        this._labelRecharge.setAnchorPoint(xs.ap_lc);
        // source line 67, bytecode pc 541
        this._ccbNode.addChild(this._labelRecharge, 2);
        // source line 68, bytecode pc 583
        this._labelRecharge.setPosition(cc.p(40, 494));
    } else {
        if ((this.m_type == xs.Constant_PartyType_Advertisement_noTime)) {
            if ((params.getBg() == xs.Constant_PartyType_Advertisement_sendLingJu)) {
                // source line 71, bytecode pc 658
                (this.m_cfg = this.ad_cfg.sendLingJu);
            } else {
                // source line 73, bytecode pc 681
                (this.m_cfg = this.ad_cfg.sendLingJu);
            }
        }
    }
    // source line 77, bytecode pc 719
    xs.log("bgbgbg:", params.getBg());
    // source line 80, bytecode pc 749
    xs.dump("this.m_cfg", this.m_cfg);
    // source line 81, bytecode pc 791
    (m_bg = xs.Factorys.Sprite.createWithFileName(this.m_cfg.fileName));
    // source line 82, bytecode pc 821
    this.m_labelTitle.setString(this.m_cfg.tile);
    // source line 83, bytecode pc 848
    m_bg.setPosition(this.m_cfg.bg_pos);
    // source line 84, bytecode pc 870
    this._ccbNode.addChild(m_bg);
    if (this.m_cfg.isTime) {
        if (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().isStartTime(idx)) {
            // source line 90, bytecode pc 1019
            (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().adPresentTime(idx) || 0));
            // source line 91, bytecode pc 1041
            this.schedule(this.onCountDown, 1);
        } else {
            // source line 93, bytecode pc 1117
            (this.m_residueTime = (xs.Profile.GameData.PushInfo.getInstance().getPartyInfo().getContinueTime(idx) || 0));
        }
        // source line 96, bytecode pc 1179
        (this._labelExt = xs.Views.Label.LabelExt.createWithStyles([ "LS_paihangNomb", "LS_danyao" ]));
        // source line 97, bytecode pc 1232
        this._labelExt.setString(0, xs.Tools.String.createString("auto_name_157"));
        // source line 98, bytecode pc 1258
        this._labelExt.setString(1, "");
        // source line 99, bytecode pc 1287
        this._labelExt.setAnchorPoint(xs.ap_c);
        // source line 100, bytecode pc 1312
        this._ccbNode.addChild(this._labelExt);
        // source line 101, bytecode pc 1342
        this._labelExt.setPosition(this.m_cfg.lab_pos);
        // source line 103, bytecode pc 1355
        this.onCountDown();
    }
    // source line 109, bytecode pc 1379
    this.m_btnExit.setOnClickCallBack(function() {
    // source line 110, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 115, bytecode pc 1381
    return true;
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 120, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 123, bytecode pc 27
    return mNum;
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((this.m_residueTime <= 0)) {
        // source line 131, bytecode pc 20
        (this.m_residueTime = 0);
        // source line 132, bytecode pc 40
        this.unschedule(this.onCountDown);
    }
    // source line 138, bytecode pc 71
    (hours = Math.floor((this.m_residueTime / 3600)));
    // source line 139, bytecode pc 105
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 140, bytecode pc 122
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 144, bytecode pc 211
    this._labelExt.setString(1, ((((("" + this.timeDispose(hours)) + ":") + this.timeDispose(minute)) + ":") + this.timeDispose(seconds)));
    // source line 146, bytecode pc 226
    (this.m_residueTime = (this.m_residueTime - 1));
},
    onEnter: function() {
    // source line 150, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 154, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 155, bytecode pc 36
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onExit: function() {
    // source line 160, bytecode pc 12
    this._super();
    // source line 161, bytecode pc 32
    this.unschedule(this.onCountDown);
}
}));
// source line 165, bytecode pc 549
(xs.Scene.Party.PictureActivityDialog.create = function(params, idx) {
    var ret;
    // source line 166, bytecode pc 28
    (ret = new xs.Scene.Party.PictureActivityDialog());
    if ((ret && ret.init(params, idx))) {
        // source line 168, bytecode pc 68
        return ret;
    }
    // source line 170, bytecode pc 70
    return null;
});
// source line 175, bytecode pc 629
xs.Views.Mgr.registerDialog("PictureActivityDialog", { "class": xs.Scene.Party.PictureActivityDialog, styleType: xs.Constant_DlgStyleType_Large });
