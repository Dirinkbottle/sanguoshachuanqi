// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Rank/RankScene.js:1
// source line 141, bytecode pc 153
(xs.Scene.RankScene = cc.Scene.extend({
    name: "xs.Scene.RankScene",
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, i, posX, posY, labelBgA, labelBg;
    // source line 15, bytecode pc 39
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Climp);
    // source line 17, bytecode pc 64
    (visibleSize = xs.director.getVisibleSize());
    // source line 25, bytecode pc 153
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), visibleSize.height)));
    // source line 26, bytecode pc 189
    xs.Utils.Node.attachNodes(this, this.m_pageView);
    // source line 28, bytecode pc 201
    (this._pages = []);
    // source line 29, bytecode pc 206
    (i = 0);
    while ((i < 5)) {
        // source line 31, bytecode pc 244
        (this._pages[i] = cc.Node.create());
        // source line 32, bytecode pc 310
        this.m_pageView.addPage(xs.Tools.String.createString(("rank_tab_name_index" + i)), this._pages[i]);
        // source line 29, bytecode pc 325
        i++;
    }
    // source line 40, bytecode pc 357
    this.m_pageView.setListener(this);
    // source line 41, bytecode pc 377
    this.m_pageView.setZOrder(0);
    // source line 45, bytecode pc 402
    (visibleSize = xs.director.getVisibleSize());
    // source line 47, bytecode pc 409
    (posX = 755);
    // source line 48, bytecode pc 424
    (posY = (visibleSize.height - 20));
    // source line 50, bytecode pc 466
    (labelBgA = xs.Factorys.Sprite.create("Cmn01_dingbu", "Cmn01"));
    // source line 51, bytecode pc 487
    labelBgA.setScaleX(0.6);
    // source line 52, bytecode pc 513
    labelBgA.setAnchorPoint(xs.ap_lc);
    // source line 53, bytecode pc 553
    labelBgA.setPosition(cc.p(posX, posY));
    // source line 54, bytecode pc 586
    xs.Utils.Node.attachNodes(this, labelBgA);
    // source line 56, bytecode pc 625
    (this._labelA = xs.Factorys.Label.createByStyleId("LS_qiangduo_Inf"));
    // source line 57, bytecode pc 654
    this._labelA.setAnchorPoint(xs.ap_lc);
    // source line 58, bytecode pc 700
    this._labelA.setPosition(cc.p((posX + 20), posY));
    // source line 59, bytecode pc 751
    this._labelA.setString(xs.Tools.String.createString("rank_top_txt3"));
    // source line 60, bytecode pc 787
    xs.Utils.Node.attachNodes(this, this._labelA);
    // source line 62, bytecode pc 826
    (this._label2A = xs.Factorys.Label.createByStyleId("LS_Lv"));
    // source line 63, bytecode pc 855
    this._label2A.setAnchorPoint(xs.ap_lc);
    // source line 64, bytecode pc 902
    this._label2A.setPosition(cc.p((posX + 130), posY));
    // source line 65, bytecode pc 926
    this._label2A.setString("0");
    // source line 66, bytecode pc 962
    xs.Utils.Node.attachNodes(this, this._label2A);
    // source line 68, bytecode pc 972
    (posY = (posY - 35));
    // source line 69, bytecode pc 1014
    (labelBg = xs.Factorys.Sprite.create("Cmn01_dingbu", "Cmn01"));
    // source line 70, bytecode pc 1035
    labelBg.setScaleX(0.6);
    // source line 71, bytecode pc 1061
    labelBg.setAnchorPoint(xs.ap_lc);
    // source line 72, bytecode pc 1101
    labelBg.setPosition(cc.p(posX, posY));
    // source line 73, bytecode pc 1134
    xs.Utils.Node.attachNodes(this, labelBg);
    // source line 75, bytecode pc 1173
    (this._label = xs.Factorys.Label.createByStyleId("LS_qiangduo_Inf"));
    // source line 76, bytecode pc 1202
    this._label.setAnchorPoint(xs.ap_lc);
    // source line 77, bytecode pc 1248
    this._label.setPosition(cc.p((posX + 20), posY));
    // source line 78, bytecode pc 1299
    this._label.setString(xs.Tools.String.createString("rank_top_txt1"));
    // source line 79, bytecode pc 1335
    xs.Utils.Node.attachNodes(this, this._label);
    // source line 81, bytecode pc 1374
    (this._label2 = xs.Factorys.Label.createByStyleId("LS_Lv"));
    // source line 82, bytecode pc 1403
    this._label2.setAnchorPoint(xs.ap_lc);
    // source line 83, bytecode pc 1450
    this._label2.setPosition(cc.p((posX + 130), posY));
    // source line 84, bytecode pc 1474
    this._label2.setString("0");
    // source line 85, bytecode pc 1510
    xs.Utils.Node.attachNodes(this, this._label2);
    // source line 90, bytecode pc 1525
    this.onPageChange(1);
    // source line 91, bytecode pc 1562
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 92, bytecode pc 1583
    this.m_mainMenu.setBaseTouchPriority(-100);
    // source line 94, bytecode pc 1585
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 97, bytecode pc 12
    this._super();
    // source line 98, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onRankLickCntDown, xs.Constant_Notify_Rank_lick_cnt_down);
    // source line 99, bytecode pc 72
    this.updateData();
},
    onExit: function() {
    // source line 103, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Rank_lick_cnt_down);
    // source line 104, bytecode pc 52
    this._super();
},
    updateData: function() {
    // source line 107, bytecode pc 42
    xs.Tools.Net.requestRank({}, this.onResponse, this);
},
    onResponse: function(jsonObj) {
    // source line 111, bytecode pc 14
    (this.datas = jsonObj.rank);
    // source line 112, bytecode pc 29
    this.onPageChange(0);
},
    onRankLickCntDown: function() {
    if ((this.rankLickCnt && (this.rankLickCnt > 0))) {
        // source line 117, bytecode pc 39
        (this.rankLickCnt = (this.rankLickCnt - 1));
        // source line 118, bytecode pc 64
        this._label2A.setString(this.rankLickCnt);
    }
},
    onPageChange: function(idx) {
    // source line 124, bytecode pc 26
    xs.log_ck(("onPageChange" + idx));
    // source line 125, bytecode pc 39
    this._resetTableView();
    // source line 126, bytecode pc 56
    this._displayPage(idx);
},
    _resetTableView: function() {
    var i;
    if (this._pageViewCaches) {
        // source line 132, bytecode pc 15
        (i = 0);
        while ((i < 5)) {
            if ((this._pageViewCaches[i] != null)) {
                // source line 136, bytecode pc 62
                this._pageViewCaches[i].setVisible(false);
            }
            // source line 132, bytecode pc 77
            i++;
        }
    }
},
    _displayPage: function(idx) {
    var user_rank, rank_list, rank_lick_cnt, visibleSize;
    // source line 142, bytecode pc 16
    (this._mSelIndex = (idx || 0));
    // source line 143, bytecode pc 26
    (idx = this._mSelIndex);
    if (((this._label2 != null) && ((this._label != null) && ((this.datas != null) && (this.datas[this._mSelIndex] != null))))) {
        // source line 147, bytecode pc 110
        (user_rank = this.datas[this._mSelIndex].user_rank);
        // source line 148, bytecode pc 132
        (rank_list = this.datas[this._mSelIndex].rank_list);
        // source line 149, bytecode pc 147
        (rank_lick_cnt = this.datas.free_times);
        if ((user_rank < 0)) {
            // source line 152, bytecode pc 208
            this._label.setString(xs.Tools.String.createString("rank_top_txt2"));
            // source line 153, bytecode pc 228
            this._label2.setVisible(false);
        } else {
            // source line 157, bytecode pc 284
            this._label.setString(xs.Tools.String.createString("rank_top_txt1"));
            // source line 158, bytecode pc 308
            this._label2.setString((user_rank + 1));
            // source line 159, bytecode pc 328
            this._label2.setVisible(true);
        }
        // source line 161, bytecode pc 350
        this._label2A.setString(rank_lick_cnt);
        // source line 162, bytecode pc 360
        (this.rankLickCnt = rank_lick_cnt);
        if ((this._pageViewCaches == null)) {
            // source line 164, bytecode pc 385
            (this._pageViewCaches = []);
        }
        if ((this._pageViewCaches[idx] == null)) {
            // source line 167, bytecode pc 429
            xs.log_ck(("创建子项" + idx));
            // source line 169, bytecode pc 479
            (this._pageViewCaches[idx] = xs.Views.Table.RankTableView.create(rank_list, idx));
            // source line 171, bytecode pc 504
            (visibleSize = xs.director.getVisibleSize());
            // source line 172, bytecode pc 564
            this._pageViewCaches[idx].setPosition(cc.p(0, (((visibleSize.height - 640) / 2) + 20)));
            // source line 173, bytecode pc 613
            xs.Utils.Node.attachNodes(this._pages[idx], this._pageViewCaches[idx]);
            // source line 175, bytecode pc 637
            this._pageViewCaches[idx].setZOrder(0);
        } else {
            // source line 179, bytecode pc 666
            this._pageViewCaches[idx].setVisible(true);
        }
    } else {
        if ((this._pageViewCaches && this._pageViewCaches[idx])) {
            // source line 186, bytecode pc 722
            this._pageViewCaches[idx].setVisible(false);
        }
    }
}
}));
// source line 197, bytecode pc 179
(xs.Scene.RankScene.create = function() {
    var view;
    // source line 198, bytecode pc 23
    (view = new xs.Scene.RankScene());
    if ((view && view.init())) {
        // source line 200, bytecode pc 55
        return view;
    }
    // source line 202, bytecode pc 57
    return null;
});
// source line 209, bytecode pc 254
xs.Scene.Mgr.registerScene("RankScene", { "class": xs.Scene.RankScene, type: xs.Constant_SceneType_Cmn });
