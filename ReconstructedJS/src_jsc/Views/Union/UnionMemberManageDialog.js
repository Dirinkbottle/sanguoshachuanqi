// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionMemberManageDialog.js:1
// source line 177, bytecode pc 597
(xs.Views.Union.UnionMemberManageDialog = xs.Views.HungerLayer.extend({
    name: "UnionMemberManageDialog",
    cfg_manageName: {
        kickOut: {
            name: xs.Tools.String.createString("auto_name_559"),
            onClickCallBackType: xs.Constant_UnionMember_Kick,
            conStr: xs.Tools.String.createString("auto_name_560")
        },
        makeOver: {
            name: xs.Tools.String.createString("auto_name_561"),
            onClickCallBackType: xs.Constant_UnionMember_Transfer,
            conStr: xs.Tools.String.createString("auto_name_562")
        },
        demotion: {
            name: xs.Tools.String.createString("auto_name_563"),
            onClickCallBackType: xs.Constant_UnionMember_ToCommon,
            conStr: xs.Tools.String.createString("auto_name_564")
        },
        promotion: {
            name: xs.Tools.String.createString("auto_name_565"),
            onClickCallBackType: xs.Constant_UnionMember_ToDeputyPresident,
            conStr: xs.Tools.String.createString("auto_name_566")
        },
        check: {
            name: xs.Tools.String.createString("auto_name_567"),
            onClickCallBackType: xs.Constant_UnionMember_Check,
            conStr: ""
        }
    },
    ctor: function() {
    // source line 22, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    var _pos, i, m_cfg;
    if (!this._super()) {
        // source line 34, bytecode pc 19
        return false;
    }
    // source line 36, bytecode pc 34
    (this.user_type = param.user_type);
    // source line 37, bytecode pc 49
    (this.other_type = param.other_type);
    // source line 38, bytecode pc 64
    (this.other_name = param.other_name);
    // source line 39, bytecode pc 79
    (this.other_id = param.other_id);
    // source line 42, bytecode pc 138
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 43, bytecode pc 185
    this.m_bg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 46, bytecode pc 197
    (this.btnList = []);
    // source line 48, bytecode pc 224
    (_pos = cc.p(250, 20));
    if ((this.user_type == xs.Constant_President)) {
        if ((this.other_type == xs.Constant_DeputyPresident)) {
            // source line 52, bytecode pc 298
            this.btnList.push(this.cfg_manageName.kickOut);
            // source line 53, bytecode pc 328
            this.btnList.push(this.cfg_manageName.makeOver);
            // source line 54, bytecode pc 358
            this.btnList.push(this.cfg_manageName.demotion);
        } else {
            if ((this.other_type == xs.Constant_Member)) {
                // source line 58, bytecode pc 415
                this.btnList.push(this.cfg_manageName.kickOut);
                // source line 59, bytecode pc 445
                this.btnList.push(this.cfg_manageName.makeOver);
                // source line 60, bytecode pc 475
                this.btnList.push(this.cfg_manageName.promotion);
            } else {
                if ((this.other_type == xs.Constant_President)) {
                }
            }
        }
    } else {
        if ((this.user_type == xs.Constant_DeputyPresident)) {
            if ((this.other_type == xs.Constant_President)) {
            } else {
                if ((this.other_type == xs.Constant_Member)) {
                    // source line 76, bytecode pc 608
                    this.btnList.push(this.cfg_manageName.kickOut);
                } else {
                    if ((this.other_type == xs.Constant_DeputyPresident)) {
                    }
                }
            }
        } else {
            if ((this.user_type == xs.Constant_Member)) {
            }
        }
    }
    // source line 97, bytecode pc 692
    this.btnList.push(this.cfg_manageName.check);
    // source line 99, bytecode pc 757
    this.m_bg.setContentSize(cc.size(500, (135 + (77 * (this.btnList.length || 1)))));
    // source line 100, bytecode pc 833
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c", offset: { x: 0, y: 0 } });
    // source line 103, bytecode pc 905
    (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithString("LS_popUI1", xs.Tools.String.createString("auto_name_568")));
    // source line 105, bytecode pc 987
    xs.Utils.Node.attachNodes(this.m_bg, this.m_headLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    // source line 107, bytecode pc 1026
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 108, bytecode pc 1109
    xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
    // source line 109, bytecode pc 1147
    this.m_closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    if ((this.btnList.length >= 2)) {
        // source line 112, bytecode pc 1184
        this.btnList.reverse();
    }
    // source line 115, bytecode pc 1189
    (i = 0);
    while ((i < this.btnList.length)) {
        // source line 116, bytecode pc 1209
        (m_cfg = this.btnList[i]);
        // source line 117, bytecode pc 1253
        (this[("MemButton" + i)] = xs.Views.Btn.createByStyleId("BS_ChannelSgs"));
        // source line 118, bytecode pc 1291
        this[("MemButton" + i)].setString(("" + m_cfg.name));
        // source line 122, bytecode pc 1371
        this[("MemButton" + i)].setOnClickCallBack(this.onClickCallBack.bind({ layer: this, type: m_cfg.onClickCallBackType, conStr: m_cfg.conStr }));
        // source line 124, bytecode pc 1441
        this[("MemButton" + i)].setPosition(cc.p(_pos.x, ((_pos.y + (77 * (i + 1))) - 20)));
        // source line 125, bytecode pc 1471
        this.m_bg.addChild(this[("MemButton" + i)]);
        // source line 115, bytecode pc 1485
        (i = (+i + 1));
    }
    // source line 131, bytecode pc 1509
    return true;
},
    onClickCallBack: function() {
    var Union;
    if ((this.type == xs.Constant_UnionMember_Check)) {
        // source line 143, bytecode pc 93
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_UnionMember, { type: this.type, otherId: this.layer.other_id });
        // source line 144, bytecode pc 95
        return void 0;
    }
    // source line 161, bytecode pc 278
    (Union = xs.Views.Mgr.showDialogByName("common", {
    title: "",
    content: "",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 151, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 157, bytecode pc 87
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_UnionMember, { type: this.type, otherId: this.layer.other_id, otherName: this.layer.other_name });
    // source line 159, bytecode pc 114
    xs.Views.Mgr.hideDialog();
    // source line 160, bytecode pc 141
    xs.Views.Mgr.hideDialog();
}.bind(this)
}));
    // source line 163, bytecode pc 296
    (Union = Union.getRealDialog());
    // source line 164, bytecode pc 350
    Union.setContentText(this.conStr.convWithArgs([ this.layer.other_name ]));
    // source line 165, bytecode pc 398
    Union.setTitleByString(xs.Tools.String.createString("auto_name_569"));
},
    onCloseBtn: function() {
    // source line 172, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 178, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 179, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 181, bytecode pc 56
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 182, bytecode pc 61
    (i = 0);
    while ((i < this.btnList.length)) {
        if (this[("MemButton" + i)]) {
            // source line 184, bytecode pc 115
            this[("MemButton" + i)].setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 182, bytecode pc 129
        (i = (+i + 1));
    }
}
}));
// source line 193, bytecode pc 628
(xs.Views.Union.UnionMemberManageDialog.create = function(param) {
    var ret;
    // source line 194, bytecode pc 28
    (ret = new xs.Views.Union.UnionMemberManageDialog());
    if ((ret && ret.init(param))) {
        // source line 196, bytecode pc 64
        return ret;
    }
    // source line 198, bytecode pc 89
    xs.assert(false, "xs.Views.Union.UnionMemberManageDialog.create err");
    // source line 199, bytecode pc 91
    return null;
});
// source line 205, bytecode pc 708
xs.Views.Mgr.registerDialog("UnionMemberManageDialog", { "class": xs.Views.Union.UnionMemberManageDialog, styleType: xs.Constant_DlgStyleType_Small });
