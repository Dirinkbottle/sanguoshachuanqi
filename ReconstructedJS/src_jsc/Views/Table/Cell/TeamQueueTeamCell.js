// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/TeamQueueTeamCell.js:1
// source line 63, bytecode pc 103
(xs.Views.Table.Cell.TeamQueueTeamCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 12, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.m_icon = null);
    // source line 23, bytecode pc 35
    (this.m_arrow = null);
    // source line 24, bytecode pc 43
    (this.m_data = null);
    // source line 25, bytecode pc 51
    (this.m_alterBg = null);
    // source line 26, bytecode pc 59
    (this.m_alterLab = null);
    // source line 28, bytecode pc 95
    this.setContentSize(cc.size(100, 120));
    // source line 33, bytecode pc 140
    (this.m_arrow = xs.Factorys.Sprite.create("select_arrow", "Zuduijiemian"));
    // source line 34, bytecode pc 183
    this.m_arrow.setAnchorPoint(cc.p(0.5, 1));
    // source line 35, bytecode pc 207
    this.m_arrow.setScale(0.8);
    // source line 37, bytecode pc 302
    xs.Utils.Node.attachNodes(this, this.m_arrow, { desc: "ct", sc: false }, xs.Views.Table.Cell.TeamQueueTeamCell.cfg.m_arrow);
    // source line 42, bytecode pc 347
    (this.m_alterBg = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 43, bytecode pc 371
    this.m_alterBg.setScaleX(0.18);
    // source line 44, bytecode pc 395
    this.m_alterBg.setScaleY(0.5);
    // source line 46, bytecode pc 515
    xs.Utils.Node.attachNodes(this, this.m_alterBg, { desc: "cb", sc: false, offset: { x: 4, y: 42 } }, xs.Views.Table.Cell.TeamQueueTeamCell.cfg.m_alterBg);
    // source line 48, bytecode pc 554
    (this.m_alterLab = xs.Factorys.Label.createByStyleId("LS_ZbJn"));
    // source line 49, bytecode pc 578
    this.m_alterLab.setStringById("str_QueueTeam_replace");
    // source line 51, bytecode pc 698
    xs.Utils.Node.attachNodes(this, this.m_alterLab, { desc: "cb", sc: false, offset: { x: 2, y: 42 } }, xs.Views.Table.Cell.TeamQueueTeamCell.cfg.m_alterLab);
    // source line 53, bytecode pc 718
    this.m_arrow.setVisible(false);
    // source line 54, bytecode pc 738
    this.m_alterBg.setVisible(false);
    // source line 55, bytecode pc 758
    this.m_alterLab.setVisible(false);
    // source line 57, bytecode pc 760
    return true;
},
    setCellData: function(data) {
    // source line 60, bytecode pc 9
    (this.m_data = data);
    // source line 61, bytecode pc 22
    this.updateCell();
},
    updateCell: function() {
    var general;
    // source line 64, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 65, bytecode pc 41
    (this.m_icon = null);
    if (this.m_data) {
        if (!this.m_data.m_teamData) {
            // source line 69, bytecode pc 71
            return void 0;
        }
        // source line 72, bytecode pc 134
        (general = xs.Profile.GameData.Mgr.getInstance().Team.getGeneral(this.m_data.m_teamData));
        if (!general) {
            // source line 74, bytecode pc 145
            return void 0;
        }
        // source line 77, bytecode pc 166
        (this.m_icon = general.createIcon_Grade());
        // source line 78, bytecode pc 188
        this.m_icon.reloadData(general);
        // source line 82, bytecode pc 265
        xs.Utils.Node.attachNodes(this, this.m_icon, { desc: "cb", offset: { x: 0, y: 50 } });
        if (this.m_data.b_isWakeUp) {
            // source line 85, bytecode pc 301
            this.m_arrow.setVisible(true);
            // source line 86, bytecode pc 321
            this.m_alterBg.setVisible(true);
            // source line 87, bytecode pc 341
            this.m_alterLab.setVisible(true);
        } else {
            // source line 89, bytecode pc 366
            this.m_arrow.setVisible(false);
            // source line 90, bytecode pc 386
            this.m_alterBg.setVisible(false);
            // source line 91, bytecode pc 406
            this.m_alterLab.setVisible(false);
        }
    }
}
}));
// source line 98, bytecode pc 139
(xs.Views.Table.Cell.TeamQueueTeamCell.create = function() {
    var cell;
    // source line 99, bytecode pc 33
    (cell = new xs.Views.Table.Cell.TeamQueueTeamCell());
    if ((cell && cell.init())) {
        // source line 101, bytecode pc 65
        return cell;
    }
    // source line 103, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.TeamQueueTeamCell.create error!");
    // source line 104, bytecode pc 90
    return null;
});
// source line 118, bytecode pc 251
(xs.Views.Table.Cell.TeamQueueTeamCell.cfg = {
    m_arrow: { zOrder: 2, tag: -1 },
    m_alterBg: { zOrder: 2, tag: -1 },
    m_alterLab: { zOrder: 2, tag: -1 }
});
