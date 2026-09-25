// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/EquipRefineTableViewCell.js:1
// source line 115, bytecode pc 128
(xs.Views.Table.EquipRefineTableViewCell = xs.Views.Table.MultiColumnTableViewCell.extend({
    name: "EquipRefineTableViewCell",
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
},
    _createIcon: function(idx) {
    var icon;
    // source line 13, bytecode pc 45
    (icon = xs.Views.Icon.IconWrapped.create(this.data[idx]));
    // source line 14, bytecode pc 49
    return icon;
},
    updateCell: function(data) {
    var i;
    // source line 18, bytecode pc 9
    (this.data = data);
    // source line 19, bytecode pc 22
    this.removeAllChildren();
    // source line 20, bytecode pc 34
    (this.iconArray = []);
    // source line 22, bytecode pc 39
    (i = 0);
    while ((i < data.length)) {
        if ((xs.Utils.isEmpty(this.data[i]) == true)) {
            break;
        }
        // source line 26, bytecode pc 116
        (this.iconArray[i] = this._createIcon(i));
        // source line 28, bytecode pc 211
        xs.Utils.Node.attachNodes(this, this.iconArray[i], { desc: "lb", sc: true, offset: { x: (54 + (114 * i)), y: 53 } });
        // source line 29, bytecode pc 241
        this.iconArray[i].reloadData(data[i]);
        // source line 30, bytecode pc 265
        this.iconArray[i].setSwallowTouch(false);
        // source line 32, bytecode pc 288
        xs.log("xs.Views.Table.EquipRefineTableViewCell updateCell");
        // source line 45, bytecode pc 367
        this.iconArray[i].setOnClickCallBack(function() {
    // source line 35, bytecode pc 22
    xs.log("xs.Views.Table.EquipRefineTableViewCell updateCell setOnClickCallBack");
    if (this.self._parent.IsMaxLevel()) {
        // source line 37, bytecode pc 109
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
        // source line 38, bytecode pc 111
        return void 0;
    }
    // source line 40, bytecode pc 129
    this.model.addSelectNum();
    // source line 41, bytecode pc 154
    this.icon.reloadData(this.model);
    // source line 44, bytecode pc 192
    xs.Utils.Notify.postNotification(xs.Constant_Notify_EquipSelectChange);
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        // source line 72, bytecode pc 446
        this.iconArray[i].setLongTimeTouchCallBack(function() {
    var subExp, refineStonePiece, subNum, maxNum;
    // source line 49, bytecode pc 22
    xs.log("xs.Views.Table.EquipRefineTableViewCell updateCell setOnClickCallBack");
    if (this.self._parent.IsMaxLevel()) {
        // source line 51, bytecode pc 109
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
        // source line 52, bytecode pc 111
        return void 0;
    }
    // source line 55, bytecode pc 137
    (subExp = this.self._parent.getSubMaxExp());
    // source line 56, bytecode pc 169
    (refineStonePiece = this.model.getOriModel().getEatedRefineExp());
    if (((subExp <= 0) || (subExp < refineStonePiece))) {
        // source line 58, bytecode pc 194
        return void 0;
    }
    // source line 60, bytecode pc 205
    (subNum = (subExp / refineStonePiece));
    // source line 61, bytecode pc 226
    (maxNum = this.model.getMaxNum());
    if ((subNum > maxNum)) {
        // source line 63, bytecode pc 256
        this.model.setSelectMaxNum();
    } else {
        // source line 65, bytecode pc 302
        this.model.setSelectNum(parseInt((subExp / refineStonePiece)));
    }
    // source line 68, bytecode pc 327
    this.icon.reloadData(this.model);
    // source line 71, bytecode pc 365
    xs.Utils.Notify.postNotification(xs.Constant_Notify_EquipSelectChange);
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        // source line 82, bytecode pc 525
        this.iconArray[i].setOnClickCallBack_SubBtn(function() {
    // source line 77, bytecode pc 17
    this.model.subSelectNum();
    // source line 78, bytecode pc 42
    this.icon.reloadData(this.model);
    // source line 81, bytecode pc 80
    xs.Utils.Notify.postNotification(xs.Constant_Notify_EquipSelectChange);
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        // source line 90, bytecode pc 604
        this.iconArray[i].setLongOnClickCallBack_SubBtn(function() {
    // source line 85, bytecode pc 17
    this.model.setSelectMinNum();
    // source line 86, bytecode pc 42
    this.icon.reloadData(this.model);
    // source line 89, bytecode pc 80
    xs.Utils.Notify.postNotification(xs.Constant_Notify_EquipSelectChange);
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        if (this.m_baseTouchPriority) {
            // source line 94, bytecode pc 646
            this.iconArray[i].setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 22, bytecode pc 660
        (i = (+i + 1));
    }
},
    setListener: function(listener) {
    // source line 101, bytecode pc 9
    (this.m_listener = listener);
},
    getSelectIconPosArray: function() {
    var posArray, i, worldPos;
    // source line 104, bytecode pc 8
    (posArray = []);
    // source line 105, bytecode pc 13
    (i = 0);
    while ((i < this.data.length)) {
        if (this.data[i].isSelected()) {
            // source line 107, bytecode pc 83
            (worldPos = this.convertToWorldSpace(this.iconArray[i].getPosition()));
            // source line 109, bytecode pc 102
            posArray.push(worldPos);
        }
        // source line 105, bytecode pc 116
        (i = (+i + 1));
    }
    // source line 112, bytecode pc 142
    return posArray;
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 116, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 117, bytecode pc 14
    (i = 0);
    while ((i < this.iconArray.length)) {
        // source line 118, bytecode pc 51
        this.iconArray[i].setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 117, bytecode pc 65
        (i = (+i + 1));
    }
}
}));
// source line 123, bytecode pc 159
(xs.Views.Table.EquipRefineTableViewCell.create = function(model) {
    var object;
    // source line 124, bytecode pc 28
    (object = new xs.Views.Table.EquipRefineTableViewCell());
    if ((object && object.initWithData(model))) {
        // source line 126, bytecode pc 64
        return object;
    }
    // source line 128, bytecode pc 89
    xs.assert(false, "xs.Views.Table.EquipRefineTableViewCell.create error");
    // source line 129, bytecode pc 91
    return null;
});
