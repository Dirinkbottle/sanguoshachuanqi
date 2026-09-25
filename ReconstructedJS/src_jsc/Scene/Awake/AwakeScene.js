// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Awake/AwakeScene.js:1
// source line 13, bytecode pc 73
(xs.Scene.AwakeScene = cc.Scene.extend({
    name: "xs.Scene.AwakeScene",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var visibleSize, mainMenuWidth, playerInfo;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 34
    (this.generalId = param.generalId);
    // source line 20, bytecode pc 70
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 21, bytecode pc 87
    this.setContentSize(visibleSize);
    // source line 23, bytecode pc 111
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 26, bytecode pc 151
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_TuTeng);
    // source line 29, bytecode pc 181
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 30, bytecode pc 217
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 31, bytecode pc 273
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 34, bytecode pc 310
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 37, bytecode pc 402
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 38, bytecode pc 423
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 39, bytecode pc 443
    this.m_pageView.setListener(this);
    // source line 41, bytecode pc 545
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("AwakeTuTengTitle"), xs.Views.AwakeLayer, { listener: this, param: { generalId: this.generalId } });
    // source line 44, bytecode pc 604
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 49, bytecode pc 648
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("txt_evolution_instruction"));
    // source line 51, bytecode pc 736
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lb", offset: cc.p(60, 110), sc: true }, null);
    // source line 53, bytecode pc 738
    return true;
}
}));
// source line 59, bytecode pc 99
(xs.Scene.AwakeScene.create = function(param) {
    var sc;
    // source line 60, bytecode pc 23
    (sc = new xs.Scene.AwakeScene());
    if ((sc && sc.init(param))) {
        // source line 63, bytecode pc 59
        return sc;
    }
    // source line 65, bytecode pc 84
    xs.assert(false, "xs.Scene.MiracleWeaponScene.create error!");
    // source line 66, bytecode pc 86
    return null;
});
// source line 71, bytecode pc 174
xs.Scene.Mgr.registerScene("AwakeScene", { "class": xs.Scene.AwakeScene, type: xs.Constant_SceneType_Cmn });
