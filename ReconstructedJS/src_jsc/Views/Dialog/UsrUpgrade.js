// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UsrUpgrade.js:1
// source line 165, bytecode pc 441
(xs.Views.Dialog.UsrUpgrade = xs.Views.HungerLayer.extend({
    name: "UsrUpgrade",
    ccbCfg_Tag1: { tag: 1, type: "ls", name: "label1String", id: "LS_danyao" },
    ccbCfg: [
        { tag: 1, type: "ls", name: "label2String", id: "LS_popUI4" },
        { tag: 2, type: "ls", name: "label3String", id: "LS_popUI5" },
        { tag: 3, type: "ls", name: "label4String", id: "LS_popUI4" },
        { tag: 4, type: "ls", name: "label5String", id: "LS_popUI2" },
        { tag: 5, type: "ls", name: "label6String", id: "LS_mainUI4" },
        { tag: 6, type: "ls", name: "label7String", id: "LS_mainUI4" }
    ],
    ctor: function() {
    // source line 20, bytecode pc 12
    this._super();
},
    init: function(arg) {
    var player, data, _funcCancel, tag1String, tag2String, tag3String, tag4String, tag5String, tag6String, tag7String, visibleSize, node1, node2, buttonFunction;
    try {
        if (!this._super()) {
            // source line 29, bytecode pc 20
            return false;
        }
        // source line 33, bytecode pc 71
        (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
        // source line 34, bytecode pc 136
        xs.Utils.Statistic.getInstance().addAndSend("Umeng_setUserLevel", ("" + player.getPlayerLevel()));
        // source line 37, bytecode pc 168
        this.assert(arg.model, "need arg.model", arg);
        // source line 39, bytecode pc 176
        (this.label1String = null);
        // source line 40, bytecode pc 184
        (this.label2String = null);
        // source line 41, bytecode pc 192
        (this.label3String = null);
        // source line 42, bytecode pc 200
        (this.label4String = null);
        // source line 43, bytecode pc 208
        (this.label5String = null);
        // source line 44, bytecode pc 216
        (this.label6String = null);
        // source line 45, bytecode pc 224
        (this.label7String = null);
        // source line 48, bytecode pc 248
        (data = (arg.model || {}));
        // source line 49, bytecode pc 260
        (_funcCancel = arg.cancelFunc);
        // source line 58, bytecode pc 316
        (tag1String = (data.getString1() || xs.Tools.String.createString("auto_name_472")));
        // source line 59, bytecode pc 372
        (tag2String = (data.getString2() || xs.Tools.String.createString("auto_name_473")));
        // source line 60, bytecode pc 401
        (tag3String = (data.getLevel() || "1"));
        // source line 61, bytecode pc 457
        (tag4String = (data.getString3() || xs.Tools.String.createString("auto_name_206")));
        // source line 62, bytecode pc 513
        (tag5String = (data.getString4() || xs.Tools.String.createString("auto_name_474")));
        // source line 63, bytecode pc 542
        (tag6String = (data.getGoldNum() || "0"));
        // source line 64, bytecode pc 571
        (tag7String = (data.getSoldNum() || "0"));
        // source line 68, bytecode pc 596
        (visibleSize = xs.director.getVisibleSize());
        // source line 70, bytecode pc 647
        (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.user_upgrade, this));
        // source line 76, bytecode pc 747
        xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "cb", sc: true, offset: { x: -325, y: ((visibleSize.height / 2) - 305) } });
        // source line 80, bytecode pc 770
        (node1 = this.m_ccbNode.getChildByTag(1));
        // source line 81, bytecode pc 794
        (node2 = this.m_ccbNode.getChildByTag(2));
        // source line 83, bytecode pc 834
        xs.Utils.UI.replaceCcbByCfg(node2, this.ccbCfg, this);
        // source line 84, bytecode pc 874
        xs.Utils.UI.replaceCcbByCfgEntity(node1, this.ccbCfg_Tag1, this);
        // source line 86, bytecode pc 896
        this.label1String.setString(tag1String);
        // source line 87, bytecode pc 918
        this.label2String.setString(tag2String);
        // source line 88, bytecode pc 940
        this.label3String.setString(tag3String);
        // source line 89, bytecode pc 962
        this.label4String.setString(tag4String);
        // source line 90, bytecode pc 984
        this.label5String.setString(tag5String);
        // source line 91, bytecode pc 1006
        this.label6String.setString(tag6String);
        // source line 92, bytecode pc 1028
        this.label7String.setString(tag7String);
        // source line 131, bytecode pc 1105
        (this.button = xs.Utils.replaceButton(this.m_ccbNode, 8, "Btn_btn1", xs.Tools.String.createString("auto_name_465")));
        // source line 132, bytecode pc 1114
        (buttonFunction = function() {
    // source line 134, bytecode pc 26
    xs.Views.Mgr.hideRandEventDialog();
});
        // source line 138, bytecode pc 1136
        this.button.addOnClickCallBack(buttonFunction);
        if (_funcCancel) {
            // source line 143, bytecode pc 1166
            this.button.addOnClickCallBack(_funcCancel);
        }
        // source line 149, bytecode pc 1188
        this.button.setGuideTag(4003);
        // source line 151, bytecode pc 1190
        return true;
    } catch (e) {
        // source line 154, bytecode pc 1231
        xs.Debug.warnException(e);
        /* TODO_BYTECODE pc=1232 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 158, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 159, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 160, bytecode pc 56
    this.button.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onEnterTransitionDidFinish: function() {
    // source line 167, bytecode pc 28
    xs.log("onEnterTransitionDidFinish", "begin");
    // source line 170, bytecode pc 55
    xs.Tools.Net.requestCheckWanPuActive();
    try {
        // source line 176, bytecode pc 69
        this._super();
        // source line 178, bytecode pc 99
        xs.audio.playEffect("Audio_EFF_UserUp_A", false);
        // source line 183, bytecode pc 159
        this.runAction(xs.Utils.Node.createDelayAction((24 / xs.fps), function() {
    // source line 184, bytecode pc 29
    xs.audio.playEffect("Audio_EFF_UserUp_B", false);
}));
    } catch (e) {
        // source line 192, bytecode pc 195
        xs.warnException(e);
        /* TODO_BYTECODE pc=196 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 195, bytecode pc 233
    xs.log("onEnterTransitionDidFinish", "end");
}
}));
// source line 210, bytecode pc 472
(xs.Views.Dialog.UsrUpgrade.create = function(arg) {
    var ret;
    // source line 211, bytecode pc 28
    (ret = new xs.Views.Dialog.UsrUpgrade());
    if ((ret && ret.init(arg))) {
        // source line 213, bytecode pc 64
        return ret;
    }
    // source line 215, bytecode pc 66
    return null;
});
// source line 223, bytecode pc 597
xs.Views.Mgr.registerDialog("UsrUpgrade", {
    "class": xs.Views.Dialog.UsrUpgrade,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
