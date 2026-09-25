// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HandbookCell.js:1
// source line 74, bytecode pc 133
(xs.Views.HandbookCell = cc.TableViewCell.extend({
    name: "HandbookCell",
    ctor: function() {
    // source line 5, bytecode pc 12
    this._super();
},
    onExit: function() {
},
    releaseAllCache: function() {
    var _callback;
    // source line 17, bytecode pc 8
    (_callback = function(key, value) {
    // source line 18, bytecode pc 14
    value.release();
});
    // source line 20, bytecode pc 30
    this._IconCache.forEach(_callback);
    // source line 21, bytecode pc 48
    this._IconCache.clear();
    // source line 22, bytecode pc 56
    (this._IconCache = null);
},
    exit: function() {
},
    init: function(allcelldata, numinrow, table, numRow, iconArray) {
    // source line 27, bytecode pc 9
    (this.m_numOfRow = numRow);
    // source line 28, bytecode pc 19
    (this.m_table = table);
    // source line 30, bytecode pc 29
    (this.m_numOfCellInRow = numinrow);
    // source line 31, bytecode pc 44
    (this.m_cellCallBack = allcelldata.callBack);
    // source line 33, bytecode pc 54
    (this._IconCache = iconArray);
    // source line 34, bytecode pc 56
    return true;
},
    update: function(allcelldata) {
    var index, i, cellIndex, cellDetailData, _model, _icon, body, bodySize;
    // source line 38, bytecode pc 9
    (this.m_allCellData = allcelldata);
    // source line 39, bytecode pc 26
    (index = (this.m_numOfCellInRow * this.m_numOfRow));
    // source line 40, bytecode pc 31
    (i = 0);
    while ((((index + i) < this.m_allCellData.length) && (i < this.m_numOfCellInRow))) {
        // source line 41, bytecode pc 48
        (cellIndex = (index + i));
        // source line 42, bytecode pc 58
        (cellDetailData = {});
        if ((this.m_allCellData != null)) {
            // source line 44, bytecode pc 85
            (cellDetailData = this.m_allCellData[cellIndex]);
        }
        // source line 46, bytecode pc 103
        (_model = cellDetailData.getModel());
        if ((_model != null)) {
            if ((this._IconCache.get(_model.getId()) == null)) {
                // source line 50, bytecode pc 176
                (_icon = this.createCell(cellDetailData, i));
                // source line 51, bytecode pc 213
                this._IconCache.set(_model.getId(), _icon);
                // source line 52, bytecode pc 228
                _icon.retain();
            } else {
                // source line 54, bytecode pc 269
                (body = this._IconCache.get(_model.getId()));
                if ((body.getParent() != null)) {
                    // source line 56, bytecode pc 321
                    xs.Utils.Node.safeRemoveChild(body);
                }
                // source line 58, bytecode pc 339
                (bodySize = body.getBodySize());
                // source line 64, bytecode pc 451
                xs.Utils.Node.attachNodes(this, body, {
    desc: "lb",
    sc: true,
    offset: { x: ((10 + (bodySize.width / 2)) + (114 * i)), y: ((bodySize.height / 2) + 30) }
});
            }
        }
        // source line 40, bytecode pc 465
        (i = (+i + 1));
    }
},
    createCell: function(cellData, index) {
},
    updateCellView: function(table, numRow, allcelldata) {
    // source line 81, bytecode pc 12
    this.removeAllChildren();
    // source line 83, bytecode pc 22
    (this.m_numOfRow = numRow);
    // source line 84, bytecode pc 32
    (this.m_table = table);
    // source line 85, bytecode pc 49
    this.update(allcelldata);
}
}));
// source line 95, bytecode pc 159
(xs.Views.HandbookCell.create = function(allcelldata, numinrow, table, numRow, iconArray) {
    var object;
    // source line 97, bytecode pc 23
    (object = new xs.Views.HandbookCell());
    if ((object && object.init(allcelldata, numinrow, table, numRow, iconArray))) {
        // source line 100, bytecode pc 75
        return object;
    }
    // source line 102, bytecode pc 100
    xs.assert(false, "xs.Views.ListTableViewDelegateAndDataSource.create error");
    // source line 103, bytecode pc 102
    return null;
});
// source line 109, bytecode pc 228
(xs.Views.HandbookCellOfGeneralPreview = xs.Views.HandbookCell.extend({
    name: "HandbookCellOfGeneralPreview",
    createCell: function(cellData, index) {
    var cellfunc, bodySize;
    // source line 115, bytecode pc 21
    (cellfunc = function() {
    if ((this.m_cellCallBack != null)) {
        // source line 112, bytecode pc 45
        this.m_cellCallBack(cellData, index);
    }
}.bind(this));
    // source line 117, bytecode pc 48
    (this.m_endButton = cellData.createIcon_GradeAndName());
    // source line 119, bytecode pc 72
    this.m_endButton.setTouchPriority(-8888);
    // source line 120, bytecode pc 94
    this.m_endButton.setOnClickCallBack(cellfunc);
    // source line 121, bytecode pc 114
    this.m_endButton.setSwallowTouch(false);
    // source line 124, bytecode pc 135
    (bodySize = this.m_endButton.getBodySize());
    // source line 125, bytecode pc 155
    (bodySize.width = (bodySize.width + 10));
    // source line 132, bytecode pc 276
    xs.Utils.Node.attachNodes(this, this.m_endButton, {
    desc: "lb",
    sc: true,
    offset: { x: ((10 + (bodySize.width / 2)) + (114 * index)), y: ((bodySize.height / 2) + 30) }
});
    // source line 136, bytecode pc 283
    return this.m_endButton;
}
}));
// source line 141, bytecode pc 254
(xs.Views.HandbookCellOfGeneralPreview.create = function(allcelldata, numinrow, table, numRow, iconArray) {
    var obj;
    // source line 143, bytecode pc 23
    (obj = new xs.Views.HandbookCellOfGeneralPreview());
    if ((obj && obj.init(allcelldata, numinrow, table, numRow, iconArray))) {
        // source line 145, bytecode pc 75
        return obj;
    }
    // source line 147, bytecode pc 100
    xs.assert(false, "xs.Views.HandbookCellOfGeneralPreview.create error");
    // source line 148, bytecode pc 102
    return null;
});
// source line 156, bytecode pc 323
(xs.Views.HandbookCellOfGeneral = xs.Views.HandbookCell.extend({
    name: "HandbookCellOfGeneral",
    createCell: function(cellData, index) {
    var cellfunc, bodySize;
    // source line 167, bytecode pc 21
    (cellfunc = function() {
    if ((this.m_cellCallBack != null)) {
        // source line 164, bytecode pc 45
        this.m_cellCallBack(cellData, index);
    }
}.bind(this));
    if ((cellData.getAtlasStatus() == xs.Models.Altas_Status_Own)) {
        // source line 173, bytecode pc 89
        (this.m_endButton = cellData.createIcon_GradeAndName());
    } else {
        if ((cellData.getAtlasStatus() == xs.Models.Altas_Status_None)) {
            // source line 178, bytecode pc 162
            (this.m_endButton = cellData.createIcon_GradeAndName());
            // source line 179, bytecode pc 182
            this.m_endButton.setDarkMask(true);
        } else {
            // source line 184, bytecode pc 214
            (this.m_endButton = cellData.createIcon_GradeAndName());
            // source line 185, bytecode pc 234
            this.m_endButton.setSurrender(true);
        }
    }
    // source line 190, bytecode pc 256
    this.m_endButton.setOnClickCallBack(cellfunc);
    // source line 192, bytecode pc 276
    this.m_endButton.setSwallowTouch(false);
    // source line 197, bytecode pc 297
    (bodySize = this.m_endButton.getBodySize());
    // source line 198, bytecode pc 317
    (bodySize.width = (bodySize.width + 10));
    // source line 205, bytecode pc 438
    xs.Utils.Node.attachNodes(this, this.m_endButton, {
    desc: "lb",
    sc: true,
    offset: { x: ((10 + (bodySize.width / 2)) + (114 * index)), y: ((bodySize.height / 2) + 30) }
});
    // source line 219, bytecode pc 445
    return this.m_endButton;
}
}));
// source line 224, bytecode pc 349
(xs.Views.HandbookCellOfGeneral.create = function(allcelldata, numinrow, table, numRow, iconArray) {
    var obj;
    // source line 226, bytecode pc 23
    (obj = new xs.Views.HandbookCellOfGeneral());
    if ((obj && obj.init(allcelldata, numinrow, table, numRow, iconArray))) {
        // source line 228, bytecode pc 75
        return obj;
    }
    // source line 230, bytecode pc 100
    xs.assert(false, "xs.Views.HandbookCellOfGeneral.create error");
    // source line 231, bytecode pc 102
    return null;
});
// source line 237, bytecode pc 418
(xs.Views.HandbookCellOfGoddess = xs.Views.HandbookCell.extend({
    name: "HandbookCellOfGoddess",
    createCell: function(cellData, index) {
    var cellfunc, bodySize;
    // source line 243, bytecode pc 21
    (cellfunc = function() {
    if ((this.m_cellCallBack != null)) {
        // source line 241, bytecode pc 45
        this.m_cellCallBack(cellData, index);
    }
}.bind(this));
    if ((cellData.getAtlasStatus() == xs.Models.Altas_Status_Own)) {
        // source line 248, bytecode pc 89
        (this.m_endButton = cellData.createIconAndName());
    } else {
        if ((cellData.getAtlasStatus() == xs.Models.Altas_Status_None)) {
            // source line 254, bytecode pc 162
            (this.m_endButton = cellData.createIconAndName());
            // source line 255, bytecode pc 182
            this.m_endButton.setDarkMask(true);
        }
    }
    // source line 259, bytecode pc 204
    this.m_endButton.setOnClickCallBack(cellfunc);
    // source line 260, bytecode pc 224
    this.m_endButton.setSwallowTouch(false);
    // source line 263, bytecode pc 245
    (bodySize = this.m_endButton.getBodySize());
    // source line 264, bytecode pc 265
    (bodySize.width = (bodySize.width + 10));
    // source line 270, bytecode pc 386
    xs.Utils.Node.attachNodes(this, this.m_endButton, {
    desc: "lb",
    sc: true,
    offset: { x: ((10 + (bodySize.width / 2)) + (114 * index)), y: ((bodySize.height / 2) + 30) }
});
    // source line 274, bytecode pc 393
    return this.m_endButton;
}
}));
// source line 279, bytecode pc 444
(xs.Views.HandbookCellOfGoddess.create = function(allcelldata, numinrow, table, numRow, iconArray) {
    var obj;
    // source line 281, bytecode pc 23
    (obj = new xs.Views.HandbookCellOfGoddess());
    if ((obj && obj.init(allcelldata, numinrow, table, numRow, iconArray))) {
        // source line 283, bytecode pc 75
        return obj;
    }
    // source line 285, bytecode pc 100
    xs.assert(false, "xs.Views.HandbookCellOfGoddess.create error");
    // source line 286, bytecode pc 102
    return null;
});
// source line 292, bytecode pc 513
(xs.Views.HandbookCellOfSkill = xs.Views.HandbookCell.extend({
    name: "HandbookCellOfSkill",
    createCell: function(cellData, index) {
    var cellfunc, bodySize;
    // source line 301, bytecode pc 21
    (cellfunc = function() {
    // source line 296, bytecode pc 22
    xs.log("xs.Views.HandbookCellOfSkill cellfunc");
    if ((this.m_cellCallBack != null)) {
        // source line 299, bytecode pc 68
        this.m_cellCallBack(cellData, index);
    }
}.bind(this));
    // source line 303, bytecode pc 48
    (this.m_endButton = cellData.createIcon_GradeAndName());
    // source line 305, bytecode pc 70
    this.m_endButton.setOnClickCallBack(cellfunc);
    // source line 308, bytecode pc 90
    this.m_endButton.setSwallowTouch(false);
    if ((cellData.getAtlasStatus() == 0)) {
        // source line 312, bytecode pc 137
        this.m_endButton.setDarkMask(true);
    }
    // source line 314, bytecode pc 158
    (bodySize = this.m_endButton.getBodySize());
    // source line 315, bytecode pc 178
    (bodySize.width = (bodySize.width + 10));
    // source line 321, bytecode pc 299
    xs.Utils.Node.attachNodes(this, this.m_endButton, {
    desc: "lb",
    sc: true,
    offset: { x: ((10 + (bodySize.width / 2)) + (114 * index)), y: ((bodySize.height / 2) + 30) }
});
    // source line 324, bytecode pc 306
    return this.m_endButton;
}
}));
// source line 327, bytecode pc 539
(xs.Views.HandbookCellOfSkill.create = function(allcelldata, numinrow, table, numRow, iconArray) {
    var obj;
    // source line 329, bytecode pc 23
    (obj = new xs.Views.HandbookCellOfSkill());
    if ((obj && obj.init(allcelldata, numinrow, table, numRow, iconArray))) {
        // source line 331, bytecode pc 75
        return obj;
    }
    // source line 333, bytecode pc 100
    xs.assert(false, "xs.Views.HandbookCellOfSkill.create error");
    // source line 334, bytecode pc 102
    return null;
});
// source line 339, bytecode pc 608
(xs.Views.HandbookCellOfWeapon = xs.Views.HandbookCell.extend({
    name: "HandbookCellOfWeapon",
    createCell: function(cellData, index) {
    var cellfunc, bodySize;
    // source line 346, bytecode pc 21
    (cellfunc = function() {
    if ((this.m_cellCallBack != null)) {
        // source line 344, bytecode pc 45
        this.m_cellCallBack(cellData, index);
    }
}.bind(this));
    // source line 347, bytecode pc 48
    (this.m_endButton = cellData.createIcon_GradeAndName());
    // source line 348, bytecode pc 70
    this.m_endButton.setOnClickCallBack(cellfunc);
    // source line 351, bytecode pc 90
    this.m_endButton.setSwallowTouch(false);
    if ((cellData.getAtlasStatus() == 0)) {
        // source line 355, bytecode pc 137
        this.m_endButton.setDarkMask(true);
    }
    // source line 357, bytecode pc 158
    (bodySize = this.m_endButton.getBodySize());
    // source line 358, bytecode pc 178
    (bodySize.width = (bodySize.width + 10));
    // source line 364, bytecode pc 299
    xs.Utils.Node.attachNodes(this, this.m_endButton, {
    desc: "lb",
    sc: true,
    offset: { x: ((10 + (bodySize.width / 2)) + (114 * index)), y: ((bodySize.height / 2) + 30) }
});
    // source line 367, bytecode pc 306
    return this.m_endButton;
}
}));
// source line 370, bytecode pc 634
(xs.Views.HandbookCellOfWeapon.create = function(allcelldata, numinrow, table, numRow, iconArray) {
    var obj;
    // source line 372, bytecode pc 23
    (obj = new xs.Views.HandbookCellOfWeapon());
    if ((obj && obj.init(allcelldata, numinrow, table, numRow, iconArray))) {
        // source line 374, bytecode pc 75
        return obj;
    }
    // source line 376, bytecode pc 100
    xs.assert(false, "xs.Views.HandbookCellOfWeapon.create error");
    // source line 377, bytecode pc 102
    return null;
});
// source line 389, bytecode pc 713
(xs.Views.HandbookCellOfSkillFate = xs.Views.HandbookCell.extend({
    name: "HandbookCellOfSkillFate",
    initWithData: function() {
    var i, cellData;
    // source line 384, bytecode pc 4
    (i = 0);
    while ((i < 4)) {
        // source line 385, bytecode pc 20
        (cellData = {});
        // source line 386, bytecode pc 41
        this.createCell(cellData, i);
        // source line 384, bytecode pc 55
        (i = (+i + 1));
    }
},
    createCell: function(cellData, index) {
    // source line 392, bytecode pc 50
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AchievementHeadCell, this));
    // source line 398, bytecode pc 137
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: true, offset: { x: (100 * index), y: 0 } });
}
}));
// source line 404, bytecode pc 739
(xs.Views.HandbookCellOfSkillFate.create = function(allcelldata, numinrow, table, numRow) {
    var obj;
    // source line 406, bytecode pc 23
    (obj = new xs.Views.HandbookCellOfSkillFate());
    if ((obj && obj.init(allcelldata, numinrow, table, numRow))) {
        // source line 408, bytecode pc 71
        return obj;
    }
    // source line 410, bytecode pc 96
    xs.assert(false, "xs.Views.HandbookCellOfSkillFate.create error");
    // source line 411, bytecode pc 98
    return null;
});
// source line 423, bytecode pc 818
(xs.Views.HandbookCellOfWeaponFate = xs.Views.HandbookCell.extend({
    name: "HandbookCellOfWeaponFate",
    initWithData: function() {
    var i, cellData;
    // source line 418, bytecode pc 4
    (i = 0);
    while ((i < 4)) {
        // source line 419, bytecode pc 20
        (cellData = {});
        // source line 420, bytecode pc 41
        this.createCell(cellData, i);
        // source line 418, bytecode pc 55
        (i = (+i + 1));
    }
},
    createCell: function(cellData, index) {
    // source line 426, bytecode pc 50
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AchievementHeadCell, this));
    // source line 432, bytecode pc 137
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", sc: true, offset: { x: (100 * index), y: 0 } });
}
}));
// source line 438, bytecode pc 844
(xs.Views.HandbookCellOfWeaponFate.create = function(allcelldata, numinrow, table, numRow) {
    var obj;
    // source line 440, bytecode pc 23
    (obj = new xs.Views.HandbookCellOfWeaponFate());
    if ((obj && obj.init(allcelldata, numinrow, table, numRow))) {
        // source line 442, bytecode pc 71
        return obj;
    }
    // source line 444, bytecode pc 96
    xs.assert(false, "xs.Views.HandbookCellOfWeaponFate.create error");
    // source line 445, bytecode pc 98
    return null;
});
