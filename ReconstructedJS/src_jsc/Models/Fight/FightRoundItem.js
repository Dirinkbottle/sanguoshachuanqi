// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Fight/FightRoundItem.js:1
// source line 378, bytecode pc 173
(xs.Models.FightRoundItem = cc.Class.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Models.FightRoundItem",
    toDebugString: function() {
    if ((xs.Cfg.Debug === false)) {
        // source line 19, bytecode pc 27
        return "debug off";
    }
    // source line 31, bytecode pc 221
    return ((((((((((((((((" " + ((this.type !== undefined) ? xs.Cfg.Constant.Models.FightRoundItem.Type.Debug[this.type] : "error")) + " ") + "[") + this.from) + "] ") + this.skill) + "[") + this.to) + "] ") + " -> ") + xs.Debug.toJsonString(this.params)) + " type is ") + this.type) + " num is ") + this.num) + ";");
},
    doShow: function(envLayer) {
    // source line 37, bytecode pc 41
    xs.log_zj("RightRoundItem", ("" + this.toDebugString()));
    // source line 39, bytecode pc 48
    switch (this.type) {
        default:
        // source line 41, bytecode pc 98
        xs.error("FightRoundItem unknow type", this.type);
        break;
        case 0:
        // source line 45, bytecode pc 120
        this.doShowNvsN(envLayer);
        break;
        case 1:
        // source line 48, bytecode pc 142
        this.doShowStory(envLayer);
        break;
    }
},
    doShowBySkillName: function(envLayer) {
    var _action;
    // source line 68, bytecode pc 19
    (_action = envLayer.createSkillAction(this));
    // source line 69, bytecode pc 38
    envLayer.runAction(_action);
},
    createPara: function(envLayer) {
    var _toViews, _fromViews, _fromFars, _toFars, _fromNears, _toNears, _fromSides, _toSides, _fromIdxs, _toIdxs, _cardNum, _modelEnv, _idx, _side, _view, _arr, _arrNames, _tmp, i, j, _isBackup, _isCure, _hpCur, _hpMax, _jsonCardData, _model, _para;
    // source line 75, bytecode pc 8
    (_toViews = []);
    // source line 76, bytecode pc 17
    (_fromViews = []);
    // source line 77, bytecode pc 26
    (_fromFars = []);
    // source line 78, bytecode pc 35
    (_toFars = []);
    // source line 79, bytecode pc 44
    (_fromNears = []);
    // source line 80, bytecode pc 53
    (_toNears = []);
    // source line 81, bytecode pc 62
    (_fromSides = []);
    // source line 82, bytecode pc 71
    (_toSides = []);
    // source line 85, bytecode pc 80
    (_fromIdxs = []);
    // source line 86, bytecode pc 89
    (_toIdxs = []);
    // source line 89, bytecode pc 120
    (_cardNum = (envLayer.model.cards_size0 + envLayer.model.cards_size1));
    // source line 91, bytecode pc 138
    (_modelEnv = envLayer.getModel());
    // source line 93, bytecode pc 143
    (_idx = 0);
    // source line 94, bytecode pc 148
    (_side = 0);
    // source line 97, bytecode pc 181
    (_arr = [ this.from, this.to ]);
    // source line 99, bytecode pc 208
    (_arrNames = [ "from", "to" ]);
    // source line 106, bytecode pc 217
    (i = 0);
    while ((i < _arr.length)) {
        // source line 107, bytecode pc 228
        (j = 0);
        while ((j < _arr[i].length)) {
            // source line 110, bytecode pc 249
            (_tmp = _arr[i][j]);
            // source line 112, bytecode pc 254
            (_isBackup = false);
            // source line 114, bytecode pc 276
            (_side = _modelEnv.getSideByIdx(_tmp));
            // source line 115, bytecode pc 298
            (_idx = _modelEnv.getOffsetByIdx(_tmp));
            // source line 118, bytecode pc 303
            (_isCure = false);
            if ((_tmp < _cardNum)) {
                // source line 126, bytecode pc 320
                (_isBackup = false);
                // source line 127, bytecode pc 340
                (_view = envLayer.cardViews[_side][_idx]);
            } else {
                // source line 130, bytecode pc 350
                (_isBackup = true);
                // source line 131, bytecode pc 370
                (_view = envLayer.backupViews[_side][_idx]);
            }
            // source line 134, bytecode pc 426
            xs.assert(_view, "_view must exist", { i: i, j: j, "this": this });
            // source line 138, bytecode pc 450
            (this.params = (this.params || []));
            // source line 139, bytecode pc 490
            (this.params[_arrNames[i]] = (this.params[_arrNames[i]] || []));
            // source line 140, bytecode pc 539
            (this.params[_arrNames[i]][j] = (this.params[_arrNames[i]][j] || {}));
            // source line 141, bytecode pc 597
            (this.params[_arrNames[i]][j].event = (this.params[_arrNames[i]][j].event || []));
            if ((_isBackup === true)) {
                // source line 143, bytecode pc 648
                this.params[_arrNames[i]][j].event.push("backup");
            }
            if (this.params[_arrNames[i]][j].cure) {
                // source line 148, bytecode pc 681
                (_isCure = true);
            }
            if ((_isCure === true)) {
                // source line 156, bytecode pc 738
                (this.params[_arrNames[i]][j].hp = this.params[_arrNames[i]][j].cure);
                // source line 157, bytecode pc 763
                (this.params[_arrNames[i]][j].isCure = true);
            }
            // source line 161, bytecode pc 790
            (_hpCur = this.params[_arrNames[i]][j].hpCur);
            // source line 162, bytecode pc 817
            (_hpMax = this.params[_arrNames[i]][j].hpMax);
            if (((_hpCur !== null) && (_hpCur !== undefined))) {
                // source line 168, bytecode pc 875
                (_jsonCardData = envLayer.getModel().getCardModelByIdx(_tmp));
                // source line 169, bytecode pc 887
                (_jsonCardData.hpCur = _hpCur);
            }
            if (((_hpMax !== null) && (_hpMax !== undefined))) {
                // source line 173, bytecode pc 945
                (_jsonCardData = envLayer.getModel().getCardModelByIdx(_tmp));
                // source line 174, bytecode pc 957
                (_jsonCardData.hpMax = _hpMax);
            }
            if ((i == 0)) {
                // source line 178, bytecode pc 986
                _fromViews.push(_view);
                // source line 179, bytecode pc 1005
                _fromSides.push(_side);
                // source line 180, bytecode pc 1024
                _fromIdxs.push(_tmp);
            } else {
                // source line 183, bytecode pc 1048
                _toViews.push(_view);
                // source line 184, bytecode pc 1067
                _toSides.push(_side);
                // source line 185, bytecode pc 1086
                _toIdxs.push(_tmp);
            }
            // source line 107, bytecode pc 1100
            (j = (+j + 1));
        }
        // source line 106, bytecode pc 1137
        (i = (+i + 1));
    }
    // source line 198, bytecode pc 1161
    (i = 0);
    while ((i < this.from.length)) {
        // source line 200, bytecode pc 1181
        (_tmp = this.from[i]);
        // source line 203, bytecode pc 1230
        this.dump("cardModel", envLayer.getModel().getCardModelByIdx(_tmp));
        // source line 205, bytecode pc 1263
        (_model = envLayer.getModel().getCardModelByIdx(_tmp));
        // source line 198, bytecode pc 1277
        (i = (+i + 1));
    }
    if ((this.skill === "Open_Pvp")) {
        // source line 217, bytecode pc 1337
        (this.skill = envLayer.getOpenTypeSkillName());
    }
    // source line 238, bytecode pc 1428
    (_para = {
    model: this,
    env: envLayer,
    near: envLayer.getNear(),
    fromViews: _fromViews,
    toViews: _toViews,
    fromSides: _fromSides,
    toSides: _toSides,
    fromIdxs: _fromIdxs,
    toIdxs: _toIdxs
});
    // source line 256, bytecode pc 1432
    return _para;
},
    doShowNvsN: function(envLayer) {
    var _para, _actionSkill;
    // source line 266, bytecode pc 18
    this.markFuncBegin("doShowNvsN");
    // source line 272, bytecode pc 38
    (_para = this.createPara(envLayer));
    // source line 276, bytecode pc 72
    (_actionSkill = xs.Factorys.Skill.create(_para));
    // source line 289, bytecode pc 150
    envLayer.runAction(xs.Utils.Action.combineSequence([ _actionSkill, _para.env.createActionStartScheduleUpdate() ]));
    // source line 294, bytecode pc 169
    this.markFuncEnd("doShowNvsN");
},
    doShowStory: function(envLayer) {
    var _para, _actionSkill;
    // source line 299, bytecode pc 18
    this.markFuncBegin("doShowStory");
    // source line 303, bytecode pc 38
    (_para = this.createPara(envLayer));
    // source line 305, bytecode pc 72
    (_actionSkill = xs.Factorys.Skill.create(_para));
    // source line 316, bytecode pc 127
    envLayer.runAction(xs.Utils.Action.combineSequence([ _actionSkill ]));
    // source line 322, bytecode pc 146
    this.markFuncEnd("doShowStory");
},
    init: function(data) {
    var mNum, mIdx;
    // source line 331, bytecode pc 21
    (this.num = (data.num || 0));
    // source line 332, bytecode pc 43
    (this.from = (data.from || 0));
    // source line 333, bytecode pc 65
    (this.to = (data.to || 0));
    // source line 334, bytecode pc 91
    (this.skill = (data.skill || ""));
    // source line 335, bytecode pc 113
    (this.type = (data.type || 0));
    // source line 336, bytecode pc 157
    (this.params = xs.Utils.clone((data.params || null)));
    // source line 337, bytecode pc 179
    (this.side = (data.side || null));
    // source line 338, bytecode pc 201
    (this.skillId = (data.skillId || null));
    // source line 339, bytecode pc 223
    (this.cnum = (data.cnum || null));
    if ((this.skill === "xiaoji")) {
        // source line 344, bytecode pc 256
        (this.num = (this.num - 3));
        if ((this.num < 0)) {
            // source line 346, bytecode pc 277
            (this.num = 0);
        }
    }
    if ((this.skill === "jiang")) {
        // source line 354, bytecode pc 320
        (this.to = [ data.to[0] ]);
    }
    if ((this.skill === "qicai")) {
        // source line 360, bytecode pc 354
        (mNum = data.to.length);
        // source line 361, bytecode pc 366
        (this.to = []);
        // source line 362, bytecode pc 371
        (mIdx = 0);
        while ((mIdx < mNum)) {
            // source line 365, bytecode pc 385
            (this.num = 1);
            if ((data.to[mIdx] != data.from[0])) {
                // source line 367, bytecode pc 444
                this.to.push(data.to[mIdx]);
            }
            // source line 362, bytecode pc 458
            (mIdx = (+mIdx + 1));
        }
    }
},
    getSkill: function() {
    // source line 379, bytecode pc 6
    return this.skill;
}
}));
