// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Climb/ClimbLadderScene.js:1
// source line 1, bytecode pc 21
(xs.Scene.ClimbLadderLayer = {});
// source line 29, bytecode pc 218
(xs.Scene.ClimbLadderLayer.cfg = {
    m_infoBar: { zOrder: 0, tag: -1, priority: -1 },
    m_mainMenu: { zOrder: 0, tag: -1, priority: -2 },
    m_pfkgView: { priority: -1 },
    m_artifactStoreyView: { priority: -1 },
    m_ranklistviews: { priority: -3 },
    m_StartBattleScene: { priority: -3 },
    lackMessagePop: { priority: -20 },
    exchangePopLayer: { priority: -20 }
});
// source line 121, bytecode pc 362
(xs.Scene.ClimbLadderScene = cc.Scene.extend({
    name: "ClimbLadderScene",
    ctor: function() {
    // source line 38, bytecode pc 12
    this._super();
},
    init: function() {
    if (!this._super()) {
        // source line 42, bytecode pc 19
        return false;
    }
    // source line 44, bytecode pc 59
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Climp);
    // source line 50, bytecode pc 67
    (this.m_baseTouchPriority = 0);
    // source line 51, bytecode pc 75
    (this._StartBattlelayer = null);
    // source line 52, bytecode pc 83
    (this._PFKGlayer = null);
    // source line 53, bytecode pc 85
    return true;
},
    onEnter: function() {
    // source line 56, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.requestService, xs.Constant_Notify_QuickClimbLandderEnd);
    // source line 59, bytecode pc 82
    xs.log("ClimbLadderScene onEnter");
    // source line 61, bytecode pc 115
    xs.Tools.Statistic.event("onEnter_ClimbLadderScene");
},
    onEnterTransitionDidFinish: function() {
    // source line 64, bytecode pc 12
    this._super();
    // source line 65, bytecode pc 25
    this.requestService();
},
    onExit: function() {
    // source line 70, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_QuickClimbLandderEnd);
    // source line 71, bytecode pc 52
    this._super();
},
    requestService: function() {
    var param;
    // source line 75, bytecode pc 9
    (param = {});
    // source line 77, bytecode pc 49
    xs.Tools.Net.requestClimbLadderStartInfo(param, this.requestCallback, this);
},
    requestCallback: function(data) {
    var _model, _modelStart;
    // source line 82, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this._StartBattlelayer);
    // source line 83, bytecode pc 67
    xs.Utils.Node.safeRemoveChild(this._PFKGlayer);
    // source line 84, bytecode pc 75
    (this._StartBattlelayer = null);
    // source line 85, bytecode pc 83
    (this._PFKGlayer = null);
    // source line 87, bytecode pc 118
    (_model = xs.Scene.ClimbLadderScene.Model.getInstance());
    // source line 88, bytecode pc 137
    _model.setData(data);
    // source line 91, bytecode pc 172
    (_modelStart = xs.Scene.StartBattleScene.Model.getInstance());
    // source line 92, bytecode pc 191
    _modelStart.setData(data);
    if ((_model.IsStart() == true)) {
        // source line 96, bytecode pc 245
        (this._PFKGlayer = xs.Views.ClimbLadderPFKGView.create());
        // source line 98, bytecode pc 301
        this._PFKGlayer.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.ClimbLadderLayer.cfg.m_pfkgView.priority));
        // source line 99, bytecode pc 337
        xs.Utils.Node.attachNodes(this, this._PFKGlayer);
        // source line 100, bytecode pc 350
        (this._PFKGlayer._parent = this);
    } else {
        // source line 104, bytecode pc 388
        (this._StartBattlelayer = xs.Scene.StartBattleScene.create());
        // source line 105, bytecode pc 444
        this._StartBattlelayer.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.ClimbLadderLayer.cfg.m_StartBattleScene.priority));
        // source line 106, bytecode pc 466
        this._StartBattlelayer.requestCallback(data);
        // source line 107, bytecode pc 502
        xs.Utils.Node.attachNodes(this, this._StartBattlelayer);
        // source line 108, bytecode pc 515
        (this._StartBattlelayer._parent = this);
    }
    // source line 113, bytecode pc 557
    xs.Guide.GuideMgr.endStepBySequence([ "170104" ]);
},
    requeryRequestService: function() {
    // source line 119, bytecode pc 12
    this.requestService();
},
    update: function() {
}
}));
// source line 137, bytecode pc 441
(xs.Scene.ClimbLadderScene.Model = cc.Class.extend({
    setData: function(data) {
    // source line 131, bytecode pc 9
    (this._data = data);
},
    getData: function() {
    // source line 134, bytecode pc 6
    return this._data;
},
    IsStart: function() {
    // source line 138, bytecode pc 16
    return this._data.return_info.is_start;
}
}));
// source line 141, bytecode pc 472
(xs.Scene.ClimbLadderScene.Model.getInstance = function() {
    if ((xs.Scene.ClimbLadderScene.Model.s_Model == null)) {
        // source line 143, bytecode pc 82
        (xs.Scene.ClimbLadderScene.Model.s_Model = new xs.Scene.ClimbLadderScene.Model());
    }
    // source line 145, bytecode pc 108
    return xs.Scene.ClimbLadderScene.Model.s_Model;
});
// source line 150, bytecode pc 498
(xs.Scene.ClimbLadderScene.create = function() {
    var sc;
    // source line 151, bytecode pc 23
    (sc = new xs.Scene.ClimbLadderScene());
    if ((sc && sc.init())) {
        // source line 153, bytecode pc 55
        return sc;
    }
    // source line 155, bytecode pc 80
    xs.assert(false, "xs.Scene.ClimbLadderScene.create error!");
    // source line 156, bytecode pc 82
    return null;
});
// source line 169, bytecode pc 613
xs.Scene.Mgr.registerScene("ClimbLadderScene", {
    "class": xs.Scene.ClimbLadderScene,
    area: [ "PVEpatapaihangxitongScene01" ],
    type: xs.Constant_SceneType_Challenge,
    audio: { bgId: "Audio_BG_Climp" }
});
