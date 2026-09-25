// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/HulaoBattle/HulaoBattleMainScene.js:1
// source line 49, bytecode pc 93
(xs.Scene.HulaoBattleMainScene = cc.Scene.extend({
    name: "xs.Scene.HulaoBattleMainScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(data) {
    var visibleSize;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 46
    xs.log_zhz("data", data);
    // source line 15, bytecode pc 71
    (visibleSize = xs.director.getVisibleSize());
    // source line 17, bytecode pc 104
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 18, bytecode pc 143
    (this.m_GeneralBg = xs.Factorys.Sprite.createWithFileName("big_picture/big_picture_hulaoguan.png"));
    // source line 19, bytecode pc 179
    xs.Tools.UI.addSpriteAsBg(this, this.m_GeneralBg);
    // source line 22, bytecode pc 212
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 23, bytecode pc 251
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 26, bytecode pc 310
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 30, bytecode pc 402
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 31, bytecode pc 423
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 32, bytecode pc 443
    this.m_pageView.setListener(this);
    // source line 33, bytecode pc 525
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("HulaoBattle_name"), xs.Views.HulaoBattleMainView, { param: data });
    // source line 36, bytecode pc 584
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 38, bytecode pc 635
    this.m_pageView.setHintIcon([ 0 ], [ xs.Constant_HintType_HuLaoBattle ], true);
    // source line 41, bytecode pc 698
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.SkillScene.mainmenu));
    // source line 44, bytecode pc 700
    return true;
},
    onEnter: function() {
    // source line 47, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 50, bytecode pc 12
    this._super();
}
}));
// source line 53, bytecode pc 119
(xs.Scene.HulaoBattleMainScene.create = function(data) {
    var sc;
    // source line 55, bytecode pc 23
    (sc = new xs.Scene.HulaoBattleMainScene());
    if ((sc && sc.init(data))) {
        // source line 57, bytecode pc 59
        return sc;
    }
    // source line 59, bytecode pc 84
    xs.assert(false, "xs.Scene.HulaoBattleMainScene.create error!");
    // source line 60, bytecode pc 86
    return null;
});
// source line 65, bytecode pc 194
xs.Scene.Mgr.registerScene("HulaoBattleMainScene", { "class": xs.Scene.HulaoBattleMainScene, type: xs.Constant_SceneType_Cmn });
