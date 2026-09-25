// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/SkillListTableViewCell.js:1
// source line 179, bytecode pc 203
(xs.Views.Table.Cell.SkillListTableViewCell = xs.Views.Table.MultiColumnTableViewCell.extend({
    name: "SkillListTableViewCell",
    ctor: function() {
    // source line 5, bytecode pc 12
    this._super();
},
    initWithData: function(data) {
    // source line 8, bytecode pc 9
    (this._data = data);
    // source line 9, bytecode pc 11
    return true;
},
    updateCell: function(data) {
    var i, icon, size;
    // source line 14, bytecode pc 22
    xs.log("xs.Views.Table.Cell.SkillListTableViewCell updateCell ");
    // source line 15, bytecode pc 35
    this.removeAllChildren();
    // source line 16, bytecode pc 45
    (this._data = data);
    // source line 17, bytecode pc 57
    (this.iconArray = []);
    // source line 19, bytecode pc 62
    (i = 0);
    while ((i < this._data.length)) {
        if ((xs.Utils.isEmpty(this._data[i]) == true)) {
            break;
        }
        // source line 23, bytecode pc 132
        (icon = this._createIcon(i));
        // source line 24, bytecode pc 150
        (size = icon.getContentSize());
        // source line 26, bytecode pc 172
        this.iconArray.push(icon);
        // source line 32, bytecode pc 260
        xs.Utils.Node.attachNodes(this, icon, { desc: "lb", sc: true, offset: { x: (52 + (104 * i)), y: 70 } });
        // source line 19, bytecode pc 274
        (i = (+i + 1));
    }
},
    _createIcon: function(index) {
    var _wrapmodle, _cell;
    // source line 46, bytecode pc 13
    (_wrapmodle = this._data[index]);
    // source line 48, bytecode pc 35
    xs.Debug.testBegin();
    // source line 49, bytecode pc 74
    (_cell = xs.Views.Icon.IconWrapped.create(_wrapmodle));
    // source line 50, bytecode pc 96
    xs.Debug.testEnd();
    // source line 51, bytecode pc 154
    _cell.setOnClickCallBack(this._addCallback.bind([ _cell, _wrapmodle, this ]));
    // source line 53, bytecode pc 212
    _cell.setOnClickCallBack_SubBtn(this._subCallback.bind([ _cell, _wrapmodle, this ]));
    // source line 55, bytecode pc 260
    _cell.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 1));
    // source line 58, bytecode pc 277
    _cell.setSwallowTouch(false);
    // source line 63, bytecode pc 289
    (_cell._wrapmodle = _wrapmodle);
    // source line 65, bytecode pc 293
    return _cell;
},
    _chooseCallback: function() {
    // source line 68, bytecode pc 22
    xs.log("_chooseCallback");
},
    _addCallback: function() {
    var celldata, _cell, _this;
    // source line 71, bytecode pc 22
    xs.log("_addCallback");
    // source line 72, bytecode pc 29
    (celldata = this[1]);
    // source line 73, bytecode pc 36
    (_cell = this[0]);
    // source line 74, bytecode pc 44
    (_this = this[2]);
    // source line 75, bytecode pc 82
    xs.log(("isAddSelectNumAble is " + celldata.isAddSelectNumAble()));
    if (celldata.isAddSelectNumAble()) {
        if (!_this._parent.isMaxExp()) {
            // source line 78, bytecode pc 186
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_Equipment_TheHightest"));
            // source line 79, bytecode pc 188
            return void 0;
        }
        // source line 81, bytecode pc 203
        celldata.addSelectNum();
        // source line 82, bytecode pc 222
        _cell.reloadData(celldata);
        // source line 83, bytecode pc 283
        _this._parent.getSelectData().set(celldata.getOriModel().getPkId(), celldata);
        // source line 84, bytecode pc 369
        xs.log(((("_this._parent.getSelectData size is " + _this._parent.getSelectData().size()) + ",") + celldata.getOriModel().getPkId()));
        // source line 85, bytecode pc 389
        _this._parent.updateCardPercentageAdd();
    }
},
    _subCallback: function() {
    var celldata, _cell, _this;
    // source line 89, bytecode pc 22
    xs.log("_subCallback");
    // source line 90, bytecode pc 29
    (celldata = this[1]);
    // source line 91, bytecode pc 36
    (_cell = this[0]);
    // source line 92, bytecode pc 44
    (_this = this[2]);
    // source line 93, bytecode pc 82
    xs.log(("isSubSelectNumAble is " + celldata.isSubSelectNumAble()));
    if (celldata.isSubSelectNumAble()) {
        // source line 95, bytecode pc 116
        celldata.subSelectNum();
        // source line 96, bytecode pc 154
        xs.log("num select sub", celldata.getSelectNum());
        // source line 97, bytecode pc 173
        _cell.reloadData(celldata);
        if ((celldata.getSelectNum() == 0)) {
            // source line 100, bytecode pc 255
            _this._parent.getSelectData().remove(celldata.getOriModel().getPkId(), celldata);
        }
        // source line 103, bytecode pc 275
        _this._parent.updateCardPercentageSub();
    }
},
    getSelectIconPosArray: function() {
    var posArray, i, worldPos;
    // source line 108, bytecode pc 8
    (posArray = []);
    // source line 109, bytecode pc 13
    (i = 0);
    while ((i < this.iconArray.length)) {
        if ((this.iconArray[i]._wrapmodle.getSelectNum() > 0)) {
            // source line 112, bytecode pc 90
            (worldPos = this.convertToWorldSpace(this.iconArray[i].getPosition()));
            // source line 113, bytecode pc 134
            xs.log(("location:" + JSON.stringify(worldPos)));
            // source line 114, bytecode pc 153
            posArray.push(worldPos);
        }
        // source line 109, bytecode pc 167
        (i = (+i + 1));
    }
    // source line 117, bytecode pc 193
    return posArray;
},
    setAllSilverBeSelected: function() {
    var i;
    // source line 120, bytecode pc 4
    (i = 0);
    while ((i < this.iconArray.length)) {
        // source line 121, bytecode pc 66
        xs.log(("SkillListTableViewCell setAllSilverBeSelected " + this._data[i].getOriModel().getGrade()));
        if ((this._data[i].getOriModel().getGrade() == xs.Constant_Grade_Silver)) {
            // source line 124, bytecode pc 137
            xs.log_ck("银色书");
            if (!this._parent.isMaxExp()) {
                // source line 127, bytecode pc 162
                return void 0;
            }
            // source line 129, bytecode pc 189
            this.iconArray[i]._wrapmodle.addSelectNum();
            // source line 130, bytecode pc 227
            this.iconArray[i].reloadData(this.iconArray[i]._wrapmodle);
            // source line 131, bytecode pc 310
            this._parent.getSelectData().set(this.iconArray[i]._wrapmodle.getOriModel().getPkId(), this.iconArray[i]._wrapmodle);
        }
        // source line 120, bytecode pc 324
        (i = (+i + 1));
    }
},
    setAllGoldBeSelected: function() {
    var i;
    // source line 137, bytecode pc 4
    (i = 0);
    while ((i < this.iconArray.length)) {
        if ((this._data[i].getOriModel().getGrade() == xs.Constant_Grade_Gold)) {
            // source line 140, bytecode pc 81
            xs.log_ck("金色书");
            if (!this._parent.isMaxExp()) {
                // source line 143, bytecode pc 106
                return void 0;
            }
            // source line 146, bytecode pc 133
            this.iconArray[i]._wrapmodle.addSelectNum();
            // source line 147, bytecode pc 171
            this.iconArray[i].reloadData(this.iconArray[i]._wrapmodle);
            // source line 148, bytecode pc 254
            this._parent.getSelectData().set(this.iconArray[i]._wrapmodle.getOriModel().getPkId(), this.iconArray[i]._wrapmodle);
        }
        // source line 137, bytecode pc 268
        (i = (+i + 1));
    }
},
    setAllGodBookBeSelected: function() {
    var i;
    // source line 153, bytecode pc 4
    (i = 0);
    while ((i < this.iconArray.length)) {
        if ((this._data[i].getOriModel().getId() == xs.Models.ItemID_GodBook)) {
            if (!this._parent.isMaxExp()) {
                // source line 160, bytecode pc 88
                return void 0;
            }
            // source line 162, bytecode pc 111
            xs.log_ck("setAllGodBookBeSelected cell item");
            // source line 164, bytecode pc 138
            this.iconArray[i]._wrapmodle.addSelectNum();
            // source line 165, bytecode pc 176
            this.iconArray[i].reloadData(this.iconArray[i]._wrapmodle);
            // source line 166, bytecode pc 259
            this._parent.getSelectData().set(this.iconArray[i]._wrapmodle.getOriModel().getPkId(), this.iconArray[i]._wrapmodle);
        }
        // source line 153, bytecode pc 273
        (i = (+i + 1));
    }
},
    reloadItem: function(index) {
    // source line 172, bytecode pc 37
    this.iconArray[index].reloadData(this.iconArray[index]._wrapmodle);
},
    reloadJuanZhou: function() {
    var i;
    // source line 180, bytecode pc 4
    (i = 0);
    while ((i < this.iconArray.length)) {
        if (((this._data[i].getOriModel().getId() == xs.Models.ItemID_JuanZhou_chuji) || ((this._data[i].getOriModel().getId() == xs.Models.ItemID_JuanZhou_zhongji) || (this._data[i].getOriModel().getId() == xs.Models.ItemID_JuanZhou_gaoji)))) {
            // source line 184, bytecode pc 209
            this.iconArray[i].reloadData(this.iconArray[i]._wrapmodle);
        }
        // source line 180, bytecode pc 223
        (i = (+i + 1));
    }
}
}));
// source line 195, bytecode pc 239
(xs.Views.Table.Cell.SkillListTableViewCell.create = function(data, target) {
    var object;
    // source line 196, bytecode pc 22
    xs.log("xs.Views.Table.Cell.SkillListTableViewCell");
    // source line 197, bytecode pc 56
    (object = new xs.Views.Table.Cell.SkillListTableViewCell());
    // source line 198, bytecode pc 68
    (object._parent = target);
    // source line 199, bytecode pc 100
    xs.log(("target2 name is " + target.name));
    if ((object && object.initWithData(data))) {
        // source line 201, bytecode pc 136
        return object;
    }
    // source line 203, bytecode pc 161
    xs.assert(false, "xs.Views.Table.SkillListTableViewCell.create error");
    // source line 204, bytecode pc 163
    return null;
});
