// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/SocialTableViewCell.js:1
// source line 170, bytecode pc 375
(xs.Views.SocialTableViewCell = xs.Views.Table.Cell.BaseCell.extend({
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
    init: function(data, viewType) {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 29
    (this.viewType = viewType);
    // source line 22, bytecode pc 37
    (this.m_name = null);
    // source line 23, bytecode pc 45
    (this.m_lv = null);
    // source line 24, bytecode pc 53
    (this.m_btn = null);
    // source line 25, bytecode pc 61
    (this.m_btnFight = null);
    // source line 27, bytecode pc 95
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_3_FriendCell.ccbi"));
    // source line 28, bytecode pc 115
    this.addChild(this.ccbNode);
    // source line 30, bytecode pc 163
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 33, bytecode pc 180
    this.updateCell(data);
    // source line 35, bytecode pc 188
    (this.buttonTouched = false);
    // source line 37, bytecode pc 190
    return true;
},
    updateCell: function(data) {
    var widthBtn, widthBtnFight;
    // source line 41, bytecode pc 9
    (this.data = data);
    // source line 42, bytecode pc 36
    this.m_name.setString(data.name);
    // source line 43, bytecode pc 63
    this.m_lv.setString(data.level);
    // source line 44, bytecode pc 83
    this.m_btn.setEnabled(true);
    // source line 45, bytecode pc 103
    this.m_btnFight.setVisible(false);
    // source line 47, bytecode pc 110
    switch (this.viewType) {
        case xs.Views.SocialView_Type_QuasiFriends:
        if (this.data.isInvited) {
            // source line 52, bytecode pc 242
            this.m_btn.setString(xs.Tools.String.createString("invited"));
            // source line 53, bytecode pc 262
            this.m_btn.setEnabled(false);
        } else {
            // source line 57, bytecode pc 318
            this.m_btn.setString(xs.Tools.String.createString("invite"));
        }
        break;
        case xs.Views.SocialView_Type_Friends:
        // source line 62, bytecode pc 374
        this.m_btn.setString(xs.Tools.String.createString("message"));
        // source line 63, bytecode pc 394
        this.m_btnFight.setVisible(true);
        break;
        case xs.Views.SocialView_Type_Foe:
        if ((this.data.type == 1)) {
            // source line 68, bytecode pc 468
            this.m_btn.setString(xs.Tools.String.createString("chaos_toSnatch"));
        } else {
            // source line 70, bytecode pc 524
            this.m_btn.setString(xs.Tools.String.createString("toFight"));
        }
        break;
        default:
        break;
    }
    // source line 75, bytecode pc 567
    this.m_btn.setOnClickCallBack(this.onBtnClick.bind(this));
    // source line 76, bytecode pc 609
    this.m_btn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn.priority));
    // source line 77, bytecode pc 629
    this.m_btn.setSwallowTouch(true);
    // source line 80, bytecode pc 667
    this.m_btnFight.setOnClickCallBack(this.onFightBtnClick.bind(this));
    // source line 81, bytecode pc 709
    this.m_btnFight.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn.priority));
    // source line 82, bytecode pc 729
    this.m_btnFight.setSwallowTouch(true);
    // source line 84, bytecode pc 758
    (widthBtn = (this.m_btn.getContentSize().width / 2));
    // source line 85, bytecode pc 787
    (widthBtnFight = (this.m_btnFight.getContentSize().width / 2));
    // source line 86, bytecode pc 834
    this.m_btnFight.setPositionX((((this.m_btn.getPositionX() - widthBtn) - widthBtnFight) - 10));
},
    onBtnClick: function() {
    // source line 90, bytecode pc 7
    (this.buttonTouched = true);
    if ((this.viewType === xs.Views.SocialView_Type_QuasiFriends)) {
        // source line 110, bytecode pc 98
        xs.Tools.Net.requestMakeFriend({ other_id: this.data.id }, function() {
    // source line 96, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_507"));
    // source line 103, bytecode pc 72
    (this.data.isInvited = true);
    // source line 104, bytecode pc 92
    this.updateCell(this.data);
    // source line 106, bytecode pc 157
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Social_req, { type: xs.Views.SocialView_Type_QuasiFriends });
}, function(data) {
}, this);
    } else {
        if ((this.viewType === xs.Views.SocialView_Type_Friends)) {
            // source line 114, bytecode pc 206
            xs.Views.Mgr.showDialogByName("SendMessageDialog", { type: xs.Views.Dialog.SendMessageDialog_Type_SendMsgToFriend, targetUser: this.data });
            // source line 115, bytecode pc 271
            xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Social_del, { type: xs.Views.SocialView_Type_Friends });
        } else {
            if ((this.viewType === xs.Views.SocialView_Type_Foe)) {
                if ((this.data.type == 1)) {
                    // source line 119, bytecode pc 348
                    xs.Tools.Scene.gotoChaos();
                } else {
                    // source line 121, bytecode pc 380
                    xs.Tools.Scene.gotoLadder();
                }
            }
        }
    }
},
    onFightBtnClick: function() {
    // source line 151, bytecode pc 139
    xs.Tools.Net.requestFriendFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.data.id
}, function(jsonData) {
    // source line 139, bytecode pc 37
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Social_SaveFriendViewInfo);
    // source line 144, bytecode pc 108
    xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_FriendFight, xs.Models.FightInfo.create(jsonData), null);
}.bind(this), function(jsonData) {
}, this);
},
    isBtnTouched: function() {
    // source line 156, bytecode pc 6
    return this.buttonTouched;
},
    setBtnTouched: function(bTouched) {
    // source line 160, bytecode pc 9
    (this.buttonTouched = bTouched);
},
    cfg: {
        btn: { priority: -1 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_name", id: "LS_liebiaoInf" },
            { tag: 11, type: "ls", name: "m_lv", id: "LS_Lv" },
            { tag: 12, type: "btn", name: "m_btn", id: "Btn_btn3" },
            { tag: 13, type: "btn", name: "m_btnFight", id: "Btn_btn3", stringId: "friendFight" }
        ]
    }
}));
// source line 175, bytecode pc 401
(xs.Views.SocialTableViewCell.create = function(data, viewType) {
    var ret;
    // source line 176, bytecode pc 23
    (ret = new xs.Views.SocialTableViewCell());
    if ((ret && ret.init(data, viewType))) {
        // source line 178, bytecode pc 63
        return ret;
    }
    // source line 180, bytecode pc 65
    return null;
});
