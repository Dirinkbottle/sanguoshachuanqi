// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/CombatTableViewCell.js:1
// source line 119, bytecode pc 128
(xs.Views.Table.CombatTableViewCell = xs.Views.Table.MultiColumnTableViewCell.extend({
    name: "CombatTableViewCell",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
},
    _createIcon: function(idx) {
    var icon;
    // source line 15, bytecode pc 45
    (icon = xs.Views.Icon.IconWrapped.create(this.data[idx]));
    // source line 16, bytecode pc 49
    return icon;
},
    updateCell: function(data) {
    var i;
    // source line 21, bytecode pc 9
    (this.data = data);
    if (!this.iconArray) {
        // source line 24, bytecode pc 47
        (this.iconArray = new Array(data.length));
    } else {
        // source line 26, bytecode pc 57
        (i = 0);
        while ((i < this.iconArray.length)) {
            if ((i >= this.data.length)) {
                // source line 29, bytecode pc 121
                xs.Utils.Node.removeChildSafe(this.iconArray[i]);
                // source line 30, bytecode pc 133
                (this.iconArray[i] = null);
            }
            // source line 26, bytecode pc 147
            (i = (+i + 1));
        }
    }
    // source line 35, bytecode pc 174
    (i = 0);
    while ((i < data.length)) {
        if (!this.iconArray[i]) {
            // source line 37, bytecode pc 223
            (this.iconArray[i] = this._createIcon(i));
            // source line 39, bytecode pc 318
            xs.Utils.Node.attachNodes(this, this.iconArray[i], { desc: "lb", sc: true, offset: { x: (52 + (104 * i)), y: 53 } });
        }
        // source line 41, bytecode pc 348
        this.iconArray[i].reloadData(data[i]);
        // source line 42, bytecode pc 372
        this.iconArray[i].setSwallowTouch(false);
        // source line 43, bytecode pc 397
        this.iconArray[i].setTouchPriority(-1);
        // source line 60, bytecode pc 476
        this.iconArray[i].setOnClickCallBack(function() {
    if (this.self.m_listener.isToMaxLevel()) {
        // source line 48, bytecode pc 86
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_496"));
        // source line 49, bytecode pc 88
        return void 0;
    }
    // source line 51, bytecode pc 106
    this.model.addSelectNum();
    // source line 52, bytecode pc 131
    this.icon.reloadData(this.model);
    if ((this.self.modelType === xs.Views.Table.CombatTableView_General)) {
        // source line 55, bytecode pc 243
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
    } else {
        // source line 58, bytecode pc 323
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
    }
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        // source line 78, bytecode pc 555
        this.iconArray[i].setLongTimeTouchCallBack(function() {
    if (this.self.m_listener.isToMaxLevel()) {
        // source line 66, bytecode pc 86
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_496"));
        // source line 67, bytecode pc 88
        return void 0;
    }
    // source line 69, bytecode pc 136
    this.model.setSelectNum(this.self.m_listener.getMaxNeedNum(this.model));
    // source line 70, bytecode pc 161
    this.icon.reloadData(this.model);
    if ((this.self.modelType === xs.Views.Table.CombatTableView_General)) {
        // source line 73, bytecode pc 273
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
    } else {
        // source line 76, bytecode pc 353
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
    }
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        // source line 93, bytecode pc 634
        this.iconArray[i].setOnClickCallBack_SubBtn(function() {
    // source line 83, bytecode pc 17
    this.model.subSelectNum();
    // source line 84, bytecode pc 42
    this.icon.reloadData(this.model);
    if ((this.self.modelType === xs.Views.Table.CombatTableView_General)) {
        // source line 88, bytecode pc 154
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
    } else {
        // source line 91, bytecode pc 234
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
    }
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        // source line 106, bytecode pc 713
        this.iconArray[i].setLongOnClickCallBack_SubBtn(function() {
    // source line 96, bytecode pc 19
    this.model.setSelectNum(0);
    // source line 97, bytecode pc 44
    this.icon.reloadData(this.model);
    if ((this.self.modelType === xs.Views.Table.CombatTableView_General)) {
        // source line 101, bytecode pc 156
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
    } else {
        // source line 104, bytecode pc 236
        xs.Profile.GameData.Mgr.getInstance().Combat.getNotify().postNotification(xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
    }
}.bind({ model: data[i], self: this, icon: this.iconArray[i] }));
        // source line 35, bytecode pc 727
        (i = (+i + 1));
    }
},
    setModelType: function(type) {
    // source line 112, bytecode pc 9
    (this.modelType = type);
},
    setListener: function(listener) {
    // source line 116, bytecode pc 9
    (this.m_listener = listener);
},
    getSelectIconPosArray: function() {
    var posArray, i, worldPos;
    // source line 120, bytecode pc 8
    (posArray = []);
    // source line 121, bytecode pc 13
    (i = 0);
    while ((i < this.data.length)) {
        if (this.data[i].isSelected()) {
            // source line 123, bytecode pc 83
            (worldPos = this.convertToWorldSpace(this.iconArray[i].getPosition()));
            // source line 125, bytecode pc 102
            posArray.push(worldPos);
        }
        // source line 121, bytecode pc 116
        (i = (+i + 1));
    }
    // source line 128, bytecode pc 142
    return posArray;
}
}));
// source line 132, bytecode pc 159
(xs.Views.Table.CombatTableViewCell.create = function(data, type) {
    var object;
    // source line 133, bytecode pc 28
    (object = new xs.Views.Table.CombatTableViewCell());
    // source line 134, bytecode pc 47
    object.setModelType(type);
    if ((object && object.initWithData(data))) {
        // source line 136, bytecode pc 83
        return object;
    }
    // source line 138, bytecode pc 108
    xs.assert(false, "xs.Views.Table.CombatTableViewCell.create error");
    // source line 139, bytecode pc 110
    return null;
});
