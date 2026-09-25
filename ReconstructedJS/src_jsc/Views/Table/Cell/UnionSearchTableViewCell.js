// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/UnionSearchTableViewCell.js:1
// source line 78, bytecode pc 335
(xs.Views.Table.Cell.UnionSearchTableViewCell = xs.Views.Table.Cell.BaseTableViewExtraCell.extend({
    name: "UnionSearchTableViewCell",
    ccbCfg: [
        { name: "m_nameLab", tag: 1, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_presidentName", tag: 5, type: "ls", id: "LS_liebiaoInf" },
        { name: "m_unionLevel", tag: 3, type: "ls", id: "LS_huodong_title" },
        { name: "m_unionMemberNum", tag: 4, type: "ls", id: "LS_paihangNomb" }
    ],
    initWithData: function(data) {
    // source line 12, bytecode pc 35
    (this._bgCCBNode = cc.BuilderReader.load("ccb3/join_guild_01.ccbi", this));
    // source line 13, bytecode pc 75
    this._bgCCBNode.setPosition(cc.p(10, 0));
    // source line 14, bytecode pc 95
    this.addChild(this._bgCCBNode);
    // source line 17, bytecode pc 134
    (this._joinBtn = xs.Views.Btn.createByStyleId("BS_Btn_longGold"));
    // source line 18, bytecode pc 176
    (pos = this._bgCCBNode.getChildByTag(6).getPosition());
    // source line 19, bytecode pc 200
    this._joinBtn.setPosition(pos);
    // source line 20, bytecode pc 225
    this._bgCCBNode.addChild(this._joinBtn);
    // source line 21, bytecode pc 242
    this.setJoinBtn(data);
    // source line 22, bytecode pc 262
    this._joinBtn.setEnabled(false);
    // source line 24, bytecode pc 305
    xs.Utils.UI.replaceCcbByCfg(this._bgCCBNode, this.ccbCfg, this);
    // source line 26, bytecode pc 307
    return true;
},
    updateCell: function(data) {
    // source line 30, bytecode pc 22
    xs.log("UnionSearchTableViewCell updateCell");
    // source line 31, bytecode pc 49
    xs.dump("data ", data);
    // source line 32, bytecode pc 59
    (this._data = data);
    // source line 33, bytecode pc 86
    this.m_nameLab.setString(data.union_name);
    // source line 34, bytecode pc 113
    this.m_unionLevel.setString(data.union_level);
    // source line 35, bytecode pc 155
    this.m_unionMemberNum.setString(((data.user_num + "/") + data.user_limit));
    // source line 36, bytecode pc 182
    this.m_presidentName.setString(data.union_sign);
    // source line 37, bytecode pc 199
    this.setJoinBtn(data);
},
    setJoinBtn: function(data) {
    if ((data.apply_state == 1)) {
        // source line 42, bytecode pc 65
        this._joinBtn.setString(xs.Tools.String.createString("auto_name_515"));
        // source line 43, bytecode pc 85
        this._joinBtn.setEventOnDisable(true);
        // source line 44, bytecode pc 105
        this._joinBtn.setEnabled(true);
        // source line 47, bytecode pc 142
        this._joinBtn.setOnClickCallBack(function() {
    // source line 46, bytecode pc 12
    this.btnCallback();
}.bind(this));
    } else {
        if ((data.apply_state == 2)) {
            // source line 50, bytecode pc 214
            this._joinBtn.setString(xs.Tools.String.createString("auto_name_516"));
            // source line 51, bytecode pc 251
            this._joinBtn.setOnClickCallBack(function() {
}.bind(this));
            // source line 52, bytecode pc 271
            this._joinBtn.setEventOnDisable(false);
            // source line 53, bytecode pc 291
            this._joinBtn.setEnabled(false);
        } else {
            if ((data.apply_state == 3)) {
                // source line 56, bytecode pc 363
                this._joinBtn.setString(xs.Tools.String.createString("auto_name_517"));
                // source line 57, bytecode pc 400
                this._joinBtn.setOnClickCallBack(function() {
}.bind(this));
                // source line 58, bytecode pc 420
                this._joinBtn.setEventOnDisable(false);
                // source line 59, bytecode pc 440
                this._joinBtn.setEnabled(false);
            }
        }
    }
},
    btnCallback: function() {
    // source line 64, bytecode pc 29
    this.parent.requestApply(this._data.union_id);
    // source line 65, bytecode pc 80
    this._joinBtn.setString(xs.Tools.String.createString("auto_name_517"));
    // source line 66, bytecode pc 100
    this._joinBtn.setTouchEnabled(false);
    // source line 67, bytecode pc 120
    this._joinBtn.setEnabled(false);
    // source line 70, bytecode pc 157
    this._joinBtn.setOnClickCallBack(function() {
}.bind(this));
    // source line 71, bytecode pc 171
    (this._data.apply_state = 3);
    // source line 72, bytecode pc 198
    xs.Tools.Statistic.UnionApplyEvent();
},
    updateCellEx: function(idx) {
    // source line 76, bytecode pc 22
    xs.log("UnionSearchTableViewCell updateCellEx");
},
    setBaseTouchPriority: function(priority) {
    // source line 79, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 80, bytecode pc 36
    this._joinBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 83, bytecode pc 371
(xs.Views.Table.Cell.UnionSearchTableViewCell.create = function(data, parent) {
    var ret;
    // source line 84, bytecode pc 33
    (ret = new xs.Views.Table.Cell.UnionSearchTableViewCell());
    if ((ret && ret.initWithData(data))) {
        // source line 86, bytecode pc 77
        (ret.parent = parent);
        // source line 87, bytecode pc 81
        return ret;
    }
    // source line 89, bytecode pc 100
    this.error("UnionSearchTableViewCell.create:");
    // source line 90, bytecode pc 102
    return null;
});
