// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Chaos/ChaosScene.js:1
// source line 121, bytecode pc 158
(xs.Scene.ChaosScene = cc.Scene.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var visibleSize, playerInfo;
    // source line 14, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 37
    (visibleSize = xs.director.getVisibleSize());
    // source line 18, bytecode pc 54
    this.setTag(800);
    // source line 21, bytecode pc 94
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Chaos);
    // source line 24, bytecode pc 124
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 25, bytecode pc 160
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 26, bytecode pc 216
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 28, bytecode pc 235
    playerInfo.setTag(801);
    // source line 32, bytecode pc 272
    playerInfo.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 37, bytecode pc 364
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 56))));
    // source line 38, bytecode pc 384
    this.pageView.setListener(this);
    // source line 39, bytecode pc 451
    this.pageView.addPageWhitConstruct(xs.Factorys.String.create("1071010015"), xs.Views.ChaosHomeView);
    // source line 40, bytecode pc 486
    this.pageView.setBaseTouchPriority(this.cfg.pageView.priority);
    // source line 41, bytecode pc 545
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 45, bytecode pc 585
    this.pageView.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 48, bytecode pc 607
    this.pageView.setTag(802);
    // source line 51, bytecode pc 670
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Scene.ChaosScene.cfg.sideBarMenu));
    // source line 52, bytecode pc 705
    this.m_mainMenu.setBaseTouchPriority(this.cfg.sideBar.priority);
    // source line 54, bytecode pc 727
    this.pageView.setTag(803);
    // source line 56, bytecode pc 778
    this.pageView.setHintIcon([ 0 ], [ xs.Constant_HintType_Pvp_Chaos ], true);
    // source line 60, bytecode pc 818
    this.m_mainMenu.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 63, bytecode pc 820
    return true;
},
    onEnterTransitionDidFinish: function() {
    var _modelMap;
    // source line 67, bytecode pc 12
    this._super();
    // source line 69, bytecode pc 48
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PvpFight_RandEvent"));
    if ((_modelMap && (_modelMap.RandEvent.length > 0))) {
        // source line 74, bytecode pc 133
        this.runAction(cc.CallFunc.create(function() {
    // source line 73, bytecode pc 34
    xs.Views.Mgr.showDialogByName("RandEvent", this);
}.bind(_modelMap)));
    }
},
    compoundSkill: function(skillModel) {
    // source line 80, bytecode pc 15
    (this.skillModel = skillModel);
    // source line 86, bytecode pc 58
    this.runEffectAction(xs.Constant_NodeEffectEvent_Disappear, function() {
    // source line 83, bytecode pc 42
    (this.skillCompound = xs.Views.SkillCompoundView.create(skillModel));
    // source line 84, bytecode pc 77
    this.skillCompound.setBaseTouchPriority(this.cfg.compoundView.priority);
    // source line 85, bytecode pc 97
    this.addChild(this.skillCompound);
}.bind(this));
},
    back: function() {
    var _modelMap, skillPiece;
    // source line 90, bytecode pc 19
    this.skillCompound.removeFromParent(true);
    // source line 91, bytecode pc 43
    this.runEffectAction(xs.Constant_NodeEffectEvent_Revert);
    // source line 94, bytecode pc 79
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("SkillCompound_RandEvent"));
    if (_modelMap) {
        // source line 96, bytecode pc 124
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    }
    // source line 100, bytecode pc 172
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    if (this.pageView.selectPage(0).updateSkillPiece) {
        if (xs.Profile.GameData.Mgr.getInstance().SkillPieces.isThisPkIdExists(this.skillModel.getId())) {
            // source line 105, bytecode pc 340
            (skillPiece = xs.Profile.GameData.Mgr.getInstance().SkillPieces.getByPkId(this.skillModel.getId()));
            // source line 106, bytecode pc 375
            this.pageView.selectPage(0).updateSkillPiece(skillPiece);
        } else {
            // source line 108, bytecode pc 413
            xs.Scene.Mgr.changeSceneByName("ChaosScene");
        }
    }
},
    cfg: { pageView: { priority: -1 }, sideBar: { priority: -20 }, compoundView: { priority: -40 } }
}));
// source line 139, bytecode pc 273
(xs.Scene.ChaosScene.cfg = {
    priority: -1,
    pageView: { priority: -1 },
    sideBarMenu: { tag: -1, priority: -20, zOrder: 1 },
    fightResuleView: { tag: -1, priority: -30, zOrder: 20 }
});
// source line 143, bytecode pc 299
(xs.Scene.ChaosScene.create = function() {
    var ret;
    // source line 144, bytecode pc 23
    (ret = new xs.Scene.ChaosScene());
    if ((ret && ret.init())) {
        // source line 146, bytecode pc 55
        return ret;
    }
    // source line 148, bytecode pc 57
    return null;
});
// source line 155, bytecode pc 374
xs.Scene.Mgr.registerScene("ChaosScene", { "class": xs.Scene.ChaosScene, type: xs.Constant_SceneType_Challenge });
