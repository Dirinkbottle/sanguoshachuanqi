// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/RandEvent.js:1
// source line 216, bytecode pc 179
(xs.Views.Dialog.RandEvent = (xs.Views.Dialog.RandEvent || xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.RandEvent",
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 41
    (this.param = (param || {}));
    // source line 29, bytecode pc 49
    (this.step = 0);
    // source line 31, bytecode pc 57
    (this.m_step0 = 0);
    // source line 33, bytecode pc 59
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 41, bytecode pc 32
    xs.Factorys.Sprite.load("AdventureDialog");
    // source line 44, bytecode pc 45
    this._super();
    // source line 45, bytecode pc 53
    (this.m_step0 = 0);
    // source line 46, bytecode pc 66
    this.unscheduleUpdate();
    // source line 47, bytecode pc 79
    this.scheduleUpdate();
},
    onExitTransitionDidStart: function() {
    // source line 54, bytecode pc 12
    this._super();
    // source line 55, bytecode pc 25
    this.unscheduleUpdate();
    // source line 58, bytecode pc 58
    xs.Factorys.Sprite.unload("AdventureDialog");
},
    update: function(fDelta) {
    if ((this.m_step0 === 0)) {
        // source line 68, bytecode pc 39
        this.m_step0++;
    } else {
        // source line 73, bytecode pc 61
        this._update(fDelta);
    }
},
    getGuideData: function(param) {
    var data;
    // source line 77, bytecode pc 23
    (data = xs.Cfg.System.sgs_function_level_conf);
    if (data[param]) {
        // source line 79, bytecode pc 43
        return data[param];
    }
    // source line 81, bytecode pc 45
    return false;
},
    _update: function(fDelta) {
    var _RandEvent, i;
    try {
        // source line 87, bytecode pc 15
        (_RandEvent = this.param.RandEvent);
        // source line 89, bytecode pc 25
        (i = this.step);
        while ((i < _RandEvent.length)) {
            // source line 91, bytecode pc 58
            this.step++;
            // source line 93, bytecode pc 71
            switch (_RandEvent[i].type) {
                case xs.Constant_RandEvent_upGrade:
                // source line 96, bytecode pc 149
                this.unscheduleUpdate();
                // source line 97, bytecode pc 176
                xs.Views.Mgr.hideAllDialog();
                if (this.getGuideData(_RandEvent[i].model.getLevel())) {
                    // source line 103, bytecode pc 339
                    xs.Views.Mgr.showDialogByName("UsrUpgradeNew", {
    model: _RandEvent[i].model,
    guideCfg: this.getGuideData(_RandEvent[i].model.getLevel()),
    cancelFunc: this.callback_scheduleUpdate.bind(this)
});
                } else {
                    // source line 109, bytecode pc 435
                    xs.Views.Mgr.showDialogByName("UsrUpgrade", {
    model: _RandEvent[i].model,
    cancelFunc: this.callback_scheduleUpdate.bind(this),
    callfuncAfterAttach: function() {
    var _ret;
    // source line 110, bytecode pc 4
    (_ret = false);
    if ((_ret === false)) {
        // source line 112, bytecode pc 55
        (_ret = xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_InTeam));
    }
    if ((_ret === false)) {
        // source line 115, bytecode pc 106
        (_ret = xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Ladder));
    }
    if ((_ret === false)) {
        // source line 118, bytecode pc 157
        (_ret = xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Chaos));
    }
    if ((_ret === false)) {
        // source line 121, bytecode pc 208
        (_ret = xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Develop));
    }
    if ((_ret === false)) {
        // source line 124, bytecode pc 259
        (_ret = xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Climb));
    }
    if ((_ret === false)) {
        // source line 127, bytecode pc 307
        xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_Lieutenant);
    }
    if ((_ret === false)) {
        if ((xs.Scene.Mgr.getRunningScene().name == "FightChapters")) {
            // source line 132, bytecode pc 397
            xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_EliteDuplicate);
        }
    }
    if ((_ret === false)) {
        // source line 136, bytecode pc 445
        xs.Guide.GuideMgr.checkAndGuide(xs.Constant_Guide_RefineEquip);
    }
}
});
                }
                // source line 141, bytecode pc 437
                return void 0;
                break;
                case xs.Constant_RandEvent_achieve:
                // source line 147, bytecode pc 455
                this.unscheduleUpdate();
                // source line 151, bytecode pc 536
                xs.Views.Mgr.showDialogByName("Achieve", { model: _RandEvent[i].model, cancelFunc: this.callback_scheduleUpdate.bind(this) });
                // source line 154, bytecode pc 538
                return void 0;
                break;
                case xs.Constant_RandEvent_adventure:
                // source line 159, bytecode pc 556
                this.unscheduleUpdate();
                // source line 163, bytecode pc 626
                xs.SpecificDialog.Adventure({ model: _RandEvent[i].model, cancelFunc: this.callback_scheduleUpdate.bind(this) });
                // source line 165, bytecode pc 628
                return void 0;
                break;
                case xs.Constant_RandEvent_achieve_new:
                // source line 171, bytecode pc 646
                this.unscheduleUpdate();
                // source line 177, bytecode pc 751
                xs.Views.Mgr.showDialogByName("AchieveDialog", _RandEvent[i].model.getGid(), { model: _RandEvent[i].model, cancelFunc: this.callback_scheduleUpdate.bind(this) });
                // source line 180, bytecode pc 753
                return void 0;
                break;
                default:
                // source line 184, bytecode pc 777
                this.error("the rand event type is error");
                break;
            }
            // source line 89, bytecode pc 797
            i++;
        }
        if (this.param.lastFunc) {
            // source line 194, bytecode pc 849
            this.param.lastFunc();
        } else {
            // source line 196, bytecode pc 887
            xs.Views.Mgr.hideDialogByName("RandEvent");
        }
    } catch (e) {
        // source line 199, bytecode pc 935
        xs.Views.Mgr.hideDialogByName("RandEvent");
        /* TODO_BYTECODE pc=936 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    callback_scheduleUpdate: function() {
    // source line 206, bytecode pc 29
    xs.dump("callback_scheduleUpdate", this.name);
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 209, bytecode pc 166
        xs.Guide.GuideMgr.endStepBySequence([ "150101", "120115", "130101", "140101", "170101", "160101", "190101", "200101" ]);
        // source line 210, bytecode pc 199
        xs.Views.Mgr.hideDialogByName("RandEvent");
    } else {
        // source line 212, bytecode pc 217
        this.scheduleUpdate();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 219, bytecode pc 16
    this.setTouchPriority(priority);
}
})));
// source line 237, bytecode pc 210
(xs.Views.Dialog.RandEvent.create = function(param) {
    var _ret;
    // source line 238, bytecode pc 28
    (_ret = new xs.Views.Dialog.RandEvent());
    // source line 239, bytecode pc 47
    _ret.init(param);
    // source line 240, bytecode pc 51
    return _ret;
});
// source line 247, bytecode pc 335
xs.Views.Mgr.registerDialog("RandEvent", {
    "class": xs.Views.Dialog.RandEvent,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent,
    styleType: xs.Constant_DlgStyleType_None,
    viewType: xs.Constant_ViewType_RandEvent
});
