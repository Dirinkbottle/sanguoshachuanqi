// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderChartView.js:1
// source line 53, bytecode pc 149
(xs.Views.LadderChartView = cc.Layer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, offset_y, playerLadderInfo;
    // source line 14, bytecode pc 30
    (this.viewCellSize = cc.size(260, 520));
    // source line 15, bytecode pc 66
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 18, bytecode pc 106
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Ladder);
    // source line 20, bytecode pc 150
    (offset_y = (((visibleSize.height - 640) > 0) ? ((visibleSize.height - 640) / 2) : 0));
    // source line 22, bytecode pc 184
    (this.infoBarNode = xs.ccb_reader.load("ccb3/beta_1_tiantipaihangdi.ccbi"));
    // source line 23, bytecode pc 278
    xs.Utils.Node.attachNodes(this, this.infoBarNode, { desc: "rt", offset: cc.p(-470, -(51 + offset_y)), sc: true });
    // source line 25, bytecode pc 286
    (this.m_rankingInfo = null);
    // source line 26, bytecode pc 334
    xs.Utils.UI.replaceCcbByCfg(this.infoBarNode, this.cfg.info_ccbCfg, this);
    // source line 28, bytecode pc 385
    (playerLadderInfo = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo());
    if (playerLadderInfo.isInTop10()) {
        // source line 31, bytecode pc 482
        this.m_rankingInfo.setStringByStrings([ xs.Tools.String.createString("chartInfoStr_in"), playerLadderInfo.getLadderRank() ]);
    } else {
        // source line 34, bytecode pc 565
        this.m_rankingInfo.setStringByStrings([ xs.Tools.String.createString("chartInfoStr_out"), playerLadderInfo.getLadderRank() ]);
    }
    // source line 39, bytecode pc 603
    (this.tableView = xs.Views.Table.LadderChartTableView.create());
    // source line 41, bytecode pc 704
    xs.Utils.Node.attachNodes(this, this.tableView, { desc: "lb", offset: cc.p(0, (((visibleSize.height - 640) / 2) + 30)), sc: true });
    // source line 44, bytecode pc 741
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 47, bytecode pc 743
    return true;
},
    cfg: {
        info_ccbCfg: [
            { tag: 10, type: "ls_ext", name: "m_rankingInfo", ids: [ "LS_qiangduo_Inf", "LS_wujiangName1" ] }
        ]
    }
}));
// source line 58, bytecode pc 175
(xs.Views.LadderChartView.create = function() {
    var ret;
    // source line 59, bytecode pc 23
    (ret = new xs.Views.LadderChartView());
    if ((ret && ret.init())) {
        // source line 61, bytecode pc 55
        return ret;
    }
    // source line 63, bytecode pc 57
    return null;
});
