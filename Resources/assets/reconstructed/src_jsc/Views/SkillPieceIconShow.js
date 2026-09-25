// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SkillPieceIconShow.js:1
// source line 132, bytecode pc 208
(xs.Views.SkillPieceIconShow = cc.Node.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(skillPieceArray, teachers) {
    var visibleSize, speakWords, i, str, iconBarBg, iconBarArrowRight;
    // source line 13, bytecode pc 9
    (this.skillPieceArray = skillPieceArray);
    // source line 14, bytecode pc 34
    (visibleSize = xs.director.getVisibleSize());
    // source line 17, bytecode pc 112
    (this.tableView = xs.Views.Table.SkillPieceTableView.create(skillPieceArray, cc.size(((visibleSize.width - 130) - 100), 107)));
    // source line 18, bytecode pc 132
    this.tableView.setListener(this);
    // source line 20, bytecode pc 147
    (this.skillPieceCount = skillPieceArray.length);
    // source line 21, bytecode pc 164
    (this.focusIdx = (teachers.length - 1));
    // source line 24, bytecode pc 187
    (speakWords = new Array(teachers.length));
    // source line 25, bytecode pc 192
    (i = 0);
    while ((i < speakWords.length)) {
        // source line 28, bytecode pc 317
        (str = xs.Tools.String.createString("1071310030").convWithArgs([
    skillPieceArray[((speakWords.length - 1) - i)].getComposePieceNum(),
    skillPieceArray[((speakWords.length - 1) - i)].getNameString()
]));
        // source line 30, bytecode pc 328
        (speakWords[i] = str);
        // source line 25, bytecode pc 343
        i++;
    }
    // source line 38, bytecode pc 414
    (this.generalShow = xs.Views.GeneralPlayView.create(xs.Views.GeneralPlayViewType_Foot, teachers));
    // source line 42, bytecode pc 436
    this.generalShow.setWords(speakWords);
    // source line 43, bytecode pc 456
    this.generalShow.setNeedAutoDismissSpeak(false);
    // source line 44, bytecode pc 476
    this.generalShow.setNeedAutoPlay(false);
    // source line 45, bytecode pc 496
    this.generalShow.setEnabled(false);
    // source line 46, bytecode pc 520
    this.generalShow.setSpeakSpeed(0.6);
    // source line 47, bytecode pc 545
    this.generalShow.setIndex(this.focusIdx);
    // source line 48, bytecode pc 630
    xs.Utils.Node.attachNodes(this, this.generalShow, { desc: "lb", offset: { x: 200, y: -20 }, sc: true });
    // source line 51, bytecode pc 666
    (this.ccbNode_IconBar = xs.ccb_reader.load("ccb3/0_8_3_SkillIconShow.ccbi", this));
    // source line 52, bytecode pc 704
    (iconBarBg = this.ccbNode_IconBar.getChildByTag(this.cfg.bg.tag));
    // source line 53, bytecode pc 752
    iconBarBg.setPreferredSize(cc.size((visibleSize.width - 130), 107));
    // source line 54, bytecode pc 803
    this.ccbNode_IconBar.setContentSize(cc.size((visibleSize.width - 130), 107));
    // source line 55, bytecode pc 842
    this.ccbNode_IconBar.setAnchorPoint(cc.p(0, 1));
    // source line 57, bytecode pc 936
    xs.Utils.Node.attachNodes(this, this.ccbNode_IconBar, { desc: "lb", offset: cc.p(0, (visibleSize.height - 108)), sc: false });
    // source line 59, bytecode pc 974
    (iconBarArrowRight = this.ccbNode_IconBar.getChildByTag(this.cfg.rightArrow.tag));
    // source line 60, bytecode pc 1005
    iconBarArrowRight.setPositionX(((visibleSize.width - 130) - 30));
    // source line 63, bytecode pc 1007
    return true;
},
    onEnter: function() {
    // source line 67, bytecode pc 12
    this._super();
},
    onEnterTransitionDidFinish: function() {
    // source line 74, bytecode pc 28
    xs.log("onEnterTransitionDidFinish-SkillPieceIconShow", "begin");
    // source line 75, bytecode pc 41
    this._super();
    // source line 77, bytecode pc 66
    this.tableView.setTouchPriority(this.m_baseTouchPriority);
    // source line 78, bytecode pc 157
    xs.Utils.Node.attachNodes(this.ccbNode_IconBar, this.tableView, { desc: "lb", offset: cc.p(50, -3), sc: false });
    // source line 80, bytecode pc 186
    xs.log("onEnterTransitionDidFinish-SkillPieceIconShow", "end");
},
    next: function() {
    // source line 85, bytecode pc 26
    this.focusIdx++;
    if ((this.focusIdx >= this.skillPieceCount)) {
        // source line 87, bytecode pc 71
        this.focusIdx--;
        // source line 88, bytecode pc 73
        return void 0;
    }
    // source line 90, bytecode pc 91
    this.generalShow.nextTile();
    // source line 91, bytecode pc 109
    this.tableView.prev();
},
    prev: function() {
    // source line 96, bytecode pc 26
    this.focusIdx--;
    if ((this.focusIdx < 0)) {
        // source line 98, bytecode pc 66
        this.focusIdx++;
        // source line 99, bytecode pc 68
        return void 0;
    }
    // source line 102, bytecode pc 86
    this.generalShow.lastTile();
    // source line 103, bytecode pc 104
    this.tableView.next();
},
    setCurSelectByIdx: function(idx) {
    // source line 107, bytecode pc 18
    (this.focusIdx = ((this.skillPieceCount - 1) - idx));
    // source line 108, bytecode pc 43
    this.generalShow.setIndex(this.focusIdx);
    // source line 109, bytecode pc 80
    this.getParent().updateSkillPiece(this.getCurSelect());
},
    getCurSelect: function() {
    // source line 113, bytecode pc 27
    return this.skillPieceArray[((this.skillPieceArray.length - 1) - this.focusIdx)];
},
    getIconShowBounding: function() {
    // source line 117, bytecode pc 17
    return this.ccbNode_IconBar.getBoundingBox();
},
    setBaseTouchPriority: function(priority) {
    // source line 121, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    cfg: { leftArrow: { tag: 10 }, rightArrow: { tag: 11 }, bg: { tag: 12 } }
}));
// source line 137, bytecode pc 234
(xs.Views.SkillPieceIconShow.create = function(skillPieceArray, teachers) {
    var ret;
    // source line 138, bytecode pc 23
    (ret = new xs.Views.SkillPieceIconShow());
    if ((ret && ret.init(skillPieceArray, teachers))) {
        // source line 140, bytecode pc 63
        return ret;
    }
    // source line 143, bytecode pc 92
    xs.assert(false, "xs.Views.SkillPieceIconShow create fail", ret);
    // source line 145, bytecode pc 94
    return null;
});
