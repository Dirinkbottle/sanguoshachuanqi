// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/SkillListTableView.js:1
// source line 340, bytecode pc 231
(xs.Views.Table.SkillListTableView = xs.Views.Table.MultiColumnTableView.extend({
    name: "SkillListTableView",
    Cfg: { modelTypes: [ xs.Constant_Notify_ModelChange_Skill ], maxLength: 250 },
    refreshData: function() {
    var _tmpData, _tmpJuanZHou, i;
    // source line 17, bytecode pc 32
    (_tmpData = (this._parent.getCloneData() || {}));
    // source line 19, bytecode pc 83
    (_tmpJuanZHou = xs.Profile.GameData.Mgr.getInstance().Items.getExpJuanZhou());
    // source line 20, bytecode pc 95
    (this._allCloneData = []);
    if (((_tmpData.length > 0) || (_tmpJuanZHou.length > 0))) {
        // source line 24, bytecode pc 131
        (i = 0);
        while ((i < _tmpJuanZHou.length)) {
            // source line 25, bytecode pc 190
            this._allCloneData.push(xs.Models.ShowData.create(_tmpJuanZHou[i]));
            // source line 24, bytecode pc 204
            (i = (+i + 1));
        }
        // source line 27, bytecode pc 228
        (i = 0);
        while ((i < _tmpData.length)) {
            // source line 28, bytecode pc 287
            this._allCloneData.push(xs.Models.ShowData.create(_tmpData[i]));
            // source line 27, bytecode pc 301
            (i = (+i + 1));
        }
        // source line 31, bytecode pc 363
        (this.arrayModel = xs.Views.Table.changeDimensionsOneToTwo(this._allCloneData, 4));
    } else {
        // source line 33, bytecode pc 380
        (this.arrayModel = []);
    }
},
    onSortChg: function(sortedData) {
},
    createCell: function(idx) {
    var cell;
    // source line 43, bytecode pc 57
    (cell = xs.Views.Table.Cell.SkillListTableViewCell.create(this.arrayModel[idx], this._parent));
    // source line 45, bytecode pc 61
    return cell;
},
    makeViewSize: function() {
    var size;
    // source line 49, bytecode pc 27
    (size = cc.size(425, 310));
    if ((this._viewSize != null)) {
        // source line 51, bytecode pc 50
        (size = this._viewSize);
    }
    // source line 53, bytecode pc 54
    return size;
},
    tableCellTouched: function(table, cell) {
    // source line 60, bytecode pc 1
    return true;
},
    getViewSize: function() {
    // source line 63, bytecode pc 6
    return this._viewSize;
},
    getSelectIconPosArray: function() {
    var posArray, arr, i, cell;
    // source line 68, bytecode pc 8
    (posArray = []);
    // source line 69, bytecode pc 17
    (arr = []);
    // source line 70, bytecode pc 22
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 71, bytecode pc 48
        (cell = this.cellAtIndex(i));
        if (cell) {
            // source line 74, bytecode pc 89
            (posArray = posArray.concat(cell.getSelectIconPosArray()));
        }
        // source line 70, bytecode pc 103
        (i = (+i + 1));
    }
    // source line 78, bytecode pc 129
    return posArray;
},
    setAllSilverBeSelected: function() {
    var _totalExp, _curExp, _addExp, expPerUnit, itemId, i, cell, j, item;
    // source line 82, bytecode pc 20
    (_totalExp = this._parent.getMaxSkillExp());
    // source line 83, bytecode pc 52
    (_curExp = this._parent._getPreviewCloneData().getTotalExp());
    // source line 84, bytecode pc 73
    (_addExp = this._parent._caculateSelectDataExp());
    // source line 85, bytecode pc 78
    (expPerUnit = null);
    // source line 86, bytecode pc 84
    (itemId = -1);
    // source line 88, bytecode pc 89
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 90, bytecode pc 115
        (cell = this.cellAtIndex(i));
        // source line 91, bytecode pc 120
        (j = 0);
        while ((j < this.arrayModel[i].length)) {
            // source line 93, bytecode pc 144
            (item = this.arrayModel[i][j]);
            if (((item.getSelectNum() == 0) && ((item.getOriModel().getGrade() == xs.Constant_Grade_Silver) && (item.getOriModel().getId() != xs.Models.ItemID_JuanZhou_chuji)))) {
                if ((expPerUnit == null)) {
                    // source line 97, bytecode pc 293
                    (itemId = item.getOriModel().getId());
                    // source line 98, bytecode pc 322
                    (expPerUnit = item.getOriModel().getEatedProExp());
                } else {
                    if ((itemId != item.getOriModel().getId())) {
                        // source line 104, bytecode pc 390
                        (itemId = item.getOriModel().getId());
                        // source line 105, bytecode pc 419
                        (expPerUnit = item.getOriModel().getEatedProExp());
                    }
                }
                // source line 111, bytecode pc 434
                item.addSelectNum();
                // source line 112, bytecode pc 445
                (_addExp = (_addExp + expPerUnit));
                // source line 113, bytecode pc 504
                this._parent.getSelectData().set(item.getOriModel().getPkId(), item);
                if (cell) {
                    // source line 116, bytecode pc 531
                    cell.reloadItem(j);
                }
                if (((_addExp + _curExp) >= _totalExp)) {
                    // source line 119, bytecode pc 549
                    return void 0;
                }
            }
            // source line 91, bytecode pc 563
            (j = (+j + 1));
        }
        // source line 88, bytecode pc 603
        (i = (+i + 1));
    }
},
    setAllGoldBeSelected: function() {
    var _totalExp, _curExp, _addExp, expPerUnit, itemId, i, cell, j, item;
    // source line 157, bytecode pc 20
    (_totalExp = this._parent.getMaxSkillExp());
    // source line 158, bytecode pc 52
    (_curExp = this._parent._getPreviewCloneData().getTotalExp());
    // source line 159, bytecode pc 73
    (_addExp = this._parent._caculateSelectDataExp());
    // source line 160, bytecode pc 78
    (expPerUnit = null);
    // source line 161, bytecode pc 84
    (itemId = -1);
    // source line 163, bytecode pc 89
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 165, bytecode pc 115
        (cell = this.cellAtIndex(i));
        // source line 166, bytecode pc 120
        (j = 0);
        while ((j < this.arrayModel[i].length)) {
            // source line 168, bytecode pc 144
            (item = this.arrayModel[i][j]);
            if (((item.getSelectNum() == 0) && ((item.getOriModel().getGrade() == xs.Constant_Grade_Gold) && (item.getOriModel().getId() != xs.Models.ItemID_JuanZhou_zhongji)))) {
                if ((expPerUnit == null)) {
                    // source line 172, bytecode pc 293
                    (itemId = item.getOriModel().getId());
                    // source line 173, bytecode pc 322
                    (expPerUnit = item.getOriModel().getEatedProExp());
                } else {
                    if ((itemId != item.getOriModel().getId())) {
                        // source line 179, bytecode pc 390
                        (itemId = item.getOriModel().getId());
                        // source line 180, bytecode pc 419
                        (expPerUnit = item.getOriModel().getEatedProExp());
                    }
                }
                // source line 186, bytecode pc 434
                item.addSelectNum();
                // source line 187, bytecode pc 445
                (_addExp = (_addExp + expPerUnit));
                // source line 188, bytecode pc 504
                this._parent.getSelectData().set(item.getOriModel().getPkId(), item);
                if (cell) {
                    // source line 191, bytecode pc 531
                    cell.reloadItem(j);
                }
                if (((_addExp + _curExp) >= _totalExp)) {
                    // source line 194, bytecode pc 549
                    return void 0;
                }
            }
            // source line 166, bytecode pc 563
            (j = (+j + 1));
        }
        // source line 163, bytecode pc 603
        (i = (+i + 1));
    }
},
    setAllJuanZhouBeSelected: function() {
    var _totalExp, _curExp, _addExp, i, cell, j, item, startIndex, totalNum, expPerUnit, loseNum, addNum;
    // source line 230, bytecode pc 20
    (_totalExp = this._parent.getMaxSkillExp());
    // source line 231, bytecode pc 52
    (_curExp = this._parent._getPreviewCloneData().getTotalExp());
    // source line 232, bytecode pc 73
    (_addExp = this._parent._caculateSelectDataExp());
    // source line 234, bytecode pc 78
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 236, bytecode pc 104
        (cell = this.cellAtIndex(i));
        // source line 237, bytecode pc 109
        (j = 0);
        while ((j < this.arrayModel[i].length)) {
            // source line 239, bytecode pc 133
            (item = this.arrayModel[i][j]);
            if (((item.getOriModel().getId() == xs.Models.ItemID_JuanZhou_chuji) || ((item.getOriModel().getId() == xs.Models.ItemID_JuanZhou_zhongji) || (item.getOriModel().getId() == xs.Models.ItemID_JuanZhou_gaoji)))) {
                // source line 244, bytecode pc 291
                (startIndex = item.getSelectNum());
                // source line 245, bytecode pc 320
                (totalNum = item.getOriModel().getNum());
                if ((startIndex < totalNum)) {
                    // source line 249, bytecode pc 361
                    (expPerUnit = item.getOriModel().getEatedProExp());
                    // source line 250, bytecode pc 372
                    (loseNum = (totalNum - startIndex));
                    if (((((loseNum * expPerUnit) + _addExp) + _curExp) > _totalExp)) {
                        // source line 253, bytecode pc 432
                        (addNum = Math.ceil((((_totalExp - _addExp) - _curExp) / expPerUnit)));
                        // source line 254, bytecode pc 455
                        item.setSelectNum((startIndex + addNum));
                        // source line 255, bytecode pc 470
                        (_addExp = (_addExp + (addNum * expPerUnit)));
                    } else {
                        // source line 259, bytecode pc 490
                        item.setSelectMaxNum();
                        // source line 260, bytecode pc 505
                        (_addExp = (_addExp + (loseNum * expPerUnit)));
                    }
                }
                // source line 264, bytecode pc 564
                this._parent.getSelectData().set(item.getOriModel().getPkId(), item);
                if (cell) {
                    // source line 268, bytecode pc 591
                    cell.reloadItem(j);
                }
                if (((_addExp + _curExp) >= _totalExp)) {
                    // source line 272, bytecode pc 609
                    return void 0;
                }
            }
            // source line 237, bytecode pc 623
            (j = (+j + 1));
        }
        // source line 234, bytecode pc 663
        (i = (+i + 1));
    }
},
    setAllGodBookBeSelected: function() {
    var _totalExp, _curExp, _addExp, expPerUnit, i, cell, j, item;
    // source line 281, bytecode pc 22
    xs.log_ck("SkillListTableView setAllGodBookBeSelected");
    // source line 282, bytecode pc 43
    (_totalExp = this._parent.getMaxSkillExp());
    // source line 283, bytecode pc 75
    (_curExp = this._parent._getPreviewCloneData().getTotalExp());
    // source line 284, bytecode pc 96
    (_addExp = this._parent._caculateSelectDataExp());
    // source line 285, bytecode pc 101
    (expPerUnit = null);
    // source line 287, bytecode pc 106
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 289, bytecode pc 132
        (cell = this.cellAtIndex(i));
        // source line 290, bytecode pc 137
        (j = 0);
        while ((j < this.arrayModel[i].length)) {
            // source line 292, bytecode pc 161
            (item = this.arrayModel[i][j]);
            if (((item.getSelectNum() == 0) && (item.getOriModel().getId() == xs.Models.ItemID_GodBook))) {
                if ((expPerUnit == null)) {
                    // source line 295, bytecode pc 268
                    (expPerUnit = item.getOriModel().getEatedProExp());
                }
                // source line 298, bytecode pc 283
                item.addSelectNum();
                // source line 299, bytecode pc 294
                (_addExp = (_addExp + expPerUnit));
                // source line 300, bytecode pc 353
                this._parent.getSelectData().set(item.getOriModel().getPkId(), item);
                if (cell) {
                    // source line 303, bytecode pc 380
                    cell.reloadItem(j);
                }
                if (((_addExp + _curExp) >= _totalExp)) {
                    // source line 306, bytecode pc 398
                    return void 0;
                }
            }
            // source line 290, bytecode pc 412
            (j = (+j + 1));
        }
        // source line 287, bytecode pc 452
        (i = (+i + 1));
    }
},
    selectMaxLength: function(i, j) {
    // source line 342, bytecode pc 24
    return ((((i + 1) * 4) + j) > this.Cfg.maxLength);
}
}));
// source line 357, bytecode pc 262
(xs.Views.Table.SkillListTableView.create = function(viewSize, cellData, target) {
    var ret;
    // source line 359, bytecode pc 28
    (ret = new xs.Views.Table.SkillListTableView());
    // source line 360, bytecode pc 40
    (ret._viewSize = viewSize);
    // source line 361, bytecode pc 52
    (ret._cellData = cellData);
    // source line 362, bytecode pc 64
    (ret._parent = target);
    if ((ret && ret.init())) {
        // source line 365, bytecode pc 96
        return ret;
    }
    // source line 367, bytecode pc 115
    this.error("SkillListTableView.create:");
    // source line 368, bytecode pc 117
    return null;
});
