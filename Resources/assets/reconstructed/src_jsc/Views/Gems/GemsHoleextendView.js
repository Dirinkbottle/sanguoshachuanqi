// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/GemsHoleextendView.js:1
// source line 397, bytecode pc 188
(xs.Views.Gems.GemsHoleextendView = cc.Layer.extend({
    init: function(viewType) {
    var visibleOrigin, visibleSize, arrow;
    if (!this._super()) {
        // source line 5, bytecode pc 19
        return false;
    }
    // source line 7, bytecode pc 29
    (this.viewType = viewType);
    // source line 9, bytecode pc 37
    (this.m_gemsEquipmentAddL = null);
    // source line 10, bytecode pc 45
    (this.m_gemsEquipmentAddR = null);
    // source line 11, bytecode pc 53
    (this.m_extendBtn = null);
    // source line 13, bytecode pc 61
    (this.m_repDateL = null);
    // source line 14, bytecode pc 69
    (this.m_repDateR = null);
    // source line 15, bytecode pc 77
    (this.m_replaceDialog = null);
    // source line 16, bytecode pc 85
    (this.m_gemsEquipmentAdd = null);
    // source line 18, bytecode pc 93
    (this.isNeedRefresh = true);
    // source line 19, bytecode pc 101
    (this.isBoreListHaveGems = false);
    // source line 20, bytecode pc 109
    (this.m_card = null);
    // source line 22, bytecode pc 134
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 23, bytecode pc 159
    (visibleSize = xs.director.getVisibleSize());
    // source line 24, bytecode pc 167
    (this.m_baseTouchPriority = 0);
    // source line 26, bytecode pc 205
    (this.m_gemsEquipmentAddL = xs.Views.Gems.GemsEquipmentAdd.create());
    // source line 27, bytecode pc 252
    this.m_gemsEquipmentAddL.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 28, bytecode pc 274
    this.m_gemsEquipmentAddL.setListener(this, true);
    // source line 29, bytecode pc 299
    this.m_gemsEquipmentAddL.m_descLab2.setVisible(false);
    // source line 30, bytecode pc 395
    xs.Utils.Node.attachNodes(this, this.m_gemsEquipmentAddL, { desc: "cl", sc: true, offset: { x: ((visibleSize.width / 4) - 50), y: -100 } });
    // source line 32, bytecode pc 433
    (this.m_gemsEquipmentAddR = xs.Views.Gems.GemsEquipmentAdd.create());
    // source line 33, bytecode pc 480
    this.m_gemsEquipmentAddR.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 34, bytecode pc 502
    this.m_gemsEquipmentAddR.setListener(this, false);
    // source line 35, bytecode pc 527
    this.m_gemsEquipmentAddR.m_descLab1.setVisible(false);
    // source line 36, bytecode pc 623
    xs.Utils.Node.attachNodes(this, this.m_gemsEquipmentAddR, { desc: "c", sc: true, offset: { x: ((visibleSize.width / 4) - 40), y: -100 } });
    // source line 39, bytecode pc 665
    (arrow = xs.Factorys.Sprite.create("gemsScene_arrow", "GemsScene"));
    // source line 40, bytecode pc 746
    xs.Utils.Node.attachNodes(this, arrow, { desc: "c", sc: true, offset: { x: -20, y: -20 } });
    // source line 42, bytecode pc 785
    (this.m_extendBtn = xs.Views.Btn.create("Btn_Gems_Extend"));
    // source line 43, bytecode pc 812
    this.m_extendBtn.addCallBackForEvent(this, this._extendBtnCallback);
    // source line 44, bytecode pc 896
    xs.Utils.Node.attachNodes(this, this.m_extendBtn, { desc: "cb", offset: { x: -20, y: 75 }, sc: true });
    // source line 45, bytecode pc 916
    this.m_extendBtn.setVisible(false);
    // source line 47, bytecode pc 929
    this._updateData();
    // source line 49, bytecode pc 931
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 53, bytecode pc 12
    this._super();
},
    EquipmentAdd_addcallback: function(params) {
    var arr;
    // source line 59, bytecode pc 9
    (this.m_gemsEquipmentAdd = params);
    if (params) {
        // source line 63, bytecode pc 77
        (this.m_replaceDialogL = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps));
        if (this.m_repDateL) {
            // source line 65, bytecode pc 115
            this.m_replaceDialogL.setReplaceData(this.m_repDateL, false);
        }
        if (this.m_repDateR) {
            // source line 70, bytecode pc 162
            this.m_replaceDialogL.setHideData([ this.m_repDateR ], true);
        } else {
            // source line 73, bytecode pc 193
            this.m_replaceDialogL.setHideData([], true);
        }
        // source line 74, bytecode pc 213
        this.m_replaceDialogL.setListener(this);
    } else {
        // source line 79, bytecode pc 278
        (this.m_replaceDialogR = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps));
        if (this.m_repDateR) {
            // source line 81, bytecode pc 316
            this.m_replaceDialogR.setReplaceData(this.m_repDateR, false);
        }
        if (this.m_repDateL) {
            // source line 85, bytecode pc 378
            (arr = xs.Profile.GameData.Mgr.getInstance().Equipments.getGradeGodEpsWithoutHole());
            // source line 86, bytecode pc 400
            arr.push(this.m_repDateL);
            // source line 90, bytecode pc 424
            this.m_replaceDialogR.setHideData(arr, true);
        } else {
            // source line 97, bytecode pc 497
            this.m_replaceDialogR.setHideData(xs.Profile.GameData.Mgr.getInstance().Equipments.getGradeGodEpsWithoutHole(), true);
        }
        // source line 101, bytecode pc 517
        this.m_replaceDialogR.setListener(this);
    }
},
    ReplaceCardDialog_replaceCard: function(data) {
    // source line 109, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if (this.m_gemsEquipmentAdd) {
        // source line 113, bytecode pc 47
        (this.m_repDateL = data);
    } else {
        // source line 117, bytecode pc 62
        (this.m_repDateR = data);
    }
    // source line 120, bytecode pc 86
    this._updateView(data, this.m_gemsEquipmentAdd);
    if (this.m_replaceDialog) {
        // source line 122, bytecode pc 115
        this.m_replaceDialog.replaceSuccess();
    }
},
    ReplaceCardDialog_close: function() {
},
    _updateView: function(data, params) {
    var m_cardBtn;
    if (data) {
        if (!xs.Utils.isEmpty(data.getBoreList())) {
            // source line 136, bytecode pc 76
            this._setGemsIcon(params, data);
        } else {
            // source line 139, bytecode pc 104
            this._setNullGems(params);
        }
        // source line 142, bytecode pc 124
        this.m_extendBtn.setVisible(true);
        // source line 143, bytecode pc 144
        this.m_extendBtn.setEnabled(false);
        if (!params) {
            // source line 148, bytecode pc 184
            this.m_gemsEquipmentAddR.m_descLab2.setVisible(false);
            // source line 150, bytecode pc 194
            (this.m_repDateR = data);
            // source line 152, bytecode pc 215
            (this.m_card = data.createCard());
            // source line 153, bytecode pc 237
            this.m_card.reloadData(data);
            // source line 154, bytecode pc 278
            this.m_card.setPosition(this.m_gemsEquipmentAddR.m_eqsBg.getPosition());
            // source line 156, bytecode pc 360
            xs.Utils.replaceNode(this.m_gemsEquipmentAddR.m_ccbNode, xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[6].tag, this.m_card, true);
            // source line 157, bytecode pc 397
            (m_cardBtn = xs.Views.Btn.createInvisibleWithParent(this.m_card));
            // source line 161, bytecode pc 431
            m_cardBtn.setOnClickCallBack(function() {
    // source line 160, bytecode pc 22
    this.EquipmentAdd_addcallback(params);
}.bind(this));
        } else {
            // source line 167, bytecode pc 461
            this.m_gemsEquipmentAddL.m_descLab1.setVisible(false);
            // source line 169, bytecode pc 471
            (this.m_repDateL = data);
            // source line 171, bytecode pc 492
            (this.m_card = data.createCard());
            // source line 172, bytecode pc 514
            this.m_card.reloadData(data);
            // source line 173, bytecode pc 555
            this.m_card.setPosition(this.m_gemsEquipmentAddL.m_eqsBg.getPosition());
            // source line 175, bytecode pc 637
            xs.Utils.replaceNode(this.m_gemsEquipmentAddL.m_ccbNode, xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[6].tag, this.m_card, true);
            // source line 176, bytecode pc 674
            (m_cardBtn = xs.Views.Btn.createInvisibleWithParent(this.m_card));
            // source line 180, bytecode pc 708
            m_cardBtn.setOnClickCallBack(function() {
    // source line 179, bytecode pc 22
    this.EquipmentAdd_addcallback(params);
}.bind(this));
        }
        if ((this.m_repDateL && this.m_repDateR)) {
            // source line 184, bytecode pc 751
            this.m_extendBtn.setEnabled(true);
        }
        if ((!this.m_repDateR || xs.Utils.isEmpty(this.m_repDateR.getBoreList()))) {
            // source line 188, bytecode pc 828
            this.m_extendBtn.setEnabled(false);
        }
    }
},
    _setNullGems: function(params) {
    var m_NullGemsString, mGemsIdx;
    // source line 197, bytecode pc 41
    (m_NullGemsString = xs.Factorys.Label.createByStyleIdWithStringId("LS_bntSign_zhuce", "gems_str_nullGems"));
    // source line 199, bytecode pc 46
    (mGemsIdx = 0);
    while ((mGemsIdx < xs.Views.Gems.GemsHoleextendView.cfg.mGemNum)) {
        if ((mGemsIdx != 2)) {
            if (!params) {
                // source line 202, bytecode pc 148
                this.m_gemsEquipmentAddR.m_ccbNode.getChildByTag(xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[mGemsIdx].tag).setVisible(false);
            } else {
                // source line 204, bytecode pc 229
                this.m_gemsEquipmentAddL.m_ccbNode.getChildByTag(xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[mGemsIdx].tag).setVisible(false);
            }
        }
        // source line 199, bytecode pc 244
        mGemsIdx++;
    }
    if (!params) {
        // source line 209, bytecode pc 372
        xs.Utils.replaceNode(this.m_gemsEquipmentAddR.m_ccbNode, xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[2].tag, m_NullGemsString, true);
    } else {
        // source line 211, bytecode pc 456
        xs.Utils.replaceNode(this.m_gemsEquipmentAddL.m_ccbNode, xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[2].tag, m_NullGemsString, true);
    }
},
    _setGemsIcon: function(params, data) {
    var mGemsIdx, mSp;
    // source line 217, bytecode pc 4
    (mGemsIdx = 0);
    while ((mGemsIdx < xs.Views.Gems.GemsHoleextendView.cfg.mGemNum)) {
        // source line 219, bytecode pc 34
        (mSp = this._getGemState(mGemsIdx, data));
        if (!params) {
            // source line 222, bytecode pc 123
            xs.Utils.replaceNode(this.m_gemsEquipmentAddR.m_ccbNode, xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[mGemsIdx].tag, mSp, true);
        } else {
            // source line 224, bytecode pc 208
            xs.Utils.replaceNode(this.m_gemsEquipmentAddL.m_ccbNode, xs.Views.Gems.GemsEquipmentAdd.cfg.ccbCfg[mGemsIdx].tag, mSp, true);
        }
        // source line 217, bytecode pc 223
        mGemsIdx++;
    }
},
    _getGemState: function(gemIdx, data) {
    var mNodeBg, mGemDate, mGemId, mBoreType, mGemsMode, mSp, mHoleTypeString, mHoleSp, mLockedGem;
    // source line 229, bytecode pc 33
    xs.Utils.Node.removeFromParentSafe(this.m_cardR);
    // source line 230, bytecode pc 75
    (mNodeBg = xs.Factorys.Sprite.create("Cmn03_baoshikongdi", "Cmn03"));
    // source line 232, bytecode pc 99
    (mGemDate = this._getHoleDateByEpsAndIdx(data, gemIdx));
    if (mGemDate) {
        // source line 235, bytecode pc 119
        (mGemId = mGemDate.user_gem_id);
        // source line 236, bytecode pc 131
        (mBoreType = mGemDate.bore_type);
        if ((0 != mGemId)) {
            // source line 240, bytecode pc 196
            (mGemsMode = xs.Profile.GameData.Mgr.getInstance().Gems.getByPkId(mGemId));
            // source line 241, bytecode pc 214
            (mSp = mGemsMode.createIcon_GradeAndAttribute());
            // source line 242, bytecode pc 235
            mSp.setScale(0.6);
            // source line 244, bytecode pc 239
            return mSp;
        } else {
            if ((0 != mBoreType)) {
                // source line 247, bytecode pc 263
                (mHoleTypeString = "Cmn03_fangxingKong");
                if ((xs.Constant_AttrType_Atk == mBoreType)) {
                    // source line 249, bytecode pc 291
                    (mHoleTypeString = "Cmn03_sanjiaoKong");
                } else {
                    if ((xs.Constant_AttrType_Def == mBoreType)) {
                        // source line 251, bytecode pc 324
                        (mHoleTypeString = "Cmn03_fangxingKong");
                    } else {
                        if ((xs.Constant_AttrType_Hp == mBoreType)) {
                            // source line 253, bytecode pc 357
                            (mHoleTypeString = "Cmn03_yuanxingKong");
                        } else {
                            if ((xs.Constant_AttrType_Int == mBoreType)) {
                                // source line 255, bytecode pc 390
                                (mHoleTypeString = "Cmn03_lingxingKong");
                            }
                        }
                    }
                }
                // source line 258, bytecode pc 430
                (mHoleSp = xs.Factorys.Sprite.create(mHoleTypeString, "Cmn03"));
                // source line 259, bytecode pc 482
                xs.Utils.Node.attachNodes(mNodeBg, mHoleSp, { desc: "c" });
                // source line 260, bytecode pc 503
                mNodeBg.setScale(0.6);
                // source line 261, bytecode pc 507
                return mNodeBg;
            }
        }
    }
    // source line 264, bytecode pc 549
    (mLockedGem = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
    // source line 265, bytecode pc 601
    xs.Utils.Node.attachNodes(mNodeBg, mLockedGem, { desc: "c" });
    // source line 266, bytecode pc 622
    mNodeBg.setScale(0.6);
    // source line 267, bytecode pc 626
    return mNodeBg;
},
    _getHoleDateByEpsAndIdx: function(mEps, idx) {
    var mList;
    // source line 271, bytecode pc 17
    (mList = mEps.getBoreList());
    if ((mList.length == 0)) {
        // source line 273, bytecode pc 34
        return null;
    } else {
        if ((idx < mList.length)) {
            // source line 275, bytecode pc 64
            return mList[idx];
        }
    }
    // source line 277, bytecode pc 66
    return null;
},
    _extendBtnCallback: function() {
    var mBoreListL, idx, dialog;
    if ((!this.m_repDateL && !this.m_repDateR)) {
        // source line 284, bytecode pc 26
        return void 0;
    }
    // source line 292, bytecode pc 47
    (mBoreListL = this.m_repDateL.getBoreList());
    if (!xs.Utils.isEmpty(mBoreListL)) {
        // source line 298, bytecode pc 83
        (idx = 0);
        while ((idx < xs.Views.Gems.GemsHoleextendView.cfg.mGemNum)) {
            if (mBoreListL[idx]) {
                if ((0 != mBoreListL[idx].user_gem_id)) {
                    // source line 303, bytecode pc 128
                    (this.isBoreListHaveGems = true);
                    break;
                } else {
                    // source line 307, bytecode pc 146
                    (this.isBoreListHaveGems = false);
                }
            }
            // source line 298, bytecode pc 161
            idx++;
        }
        if (this.isBoreListHaveGems) {
            // source line 315, bytecode pc 245
            xs.Views.Mgr.showToastByStringKey("gems_str_extendGemsCondition1");
        } else {
            // source line 346, bytecode pc 420
            (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 324, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 327, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 344, bytecode pc 181
    xs.Tools.Net.requestGemsInherit({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    to_equipment_id: this.m_repDateL.getPkId(),
    from_equipment_id: this.m_repDateR.getPkId()
}, function(jsonData) {
    if (jsonData.result) {
        // source line 336, bytecode pc 45
        xs.Views.Mgr.showToastByStringKey("gems_str_extendGemsSuccess");
        // source line 337, bytecode pc 58
        this._updateData();
    }
}, function() {
}, this);
}.bind(this)
}));
            // source line 347, bytecode pc 438
            (dialog = dialog.getRealDialog());
            // source line 348, bytecode pc 486
            dialog.setContentText(xs.Tools.String.createString("gems_str_extendGemsCondition2"));
            // source line 349, bytecode pc 534
            dialog.setTitleByString(xs.Tools.String.createString("auto_name_223"));
        }
    } else {
        // source line 370, bytecode pc 694
        xs.Tools.Net.requestGemsInherit({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    to_equipment_id: this.m_repDateL.getPkId(),
    from_equipment_id: this.m_repDateR.getPkId()
}, function(jsonData) {
    if (jsonData.result) {
        // source line 362, bytecode pc 45
        xs.Views.Mgr.showToastByStringKey("gems_str_extendGemsSuccess");
        // source line 363, bytecode pc 58
        this._updateData();
    }
}, function() {
}, this);
    }
},
    _updateData: function() {
    var m_newrepDateRid, m_newrepDateLid, m_newrepDateR, m_newrepDateL;
    if ((this.m_repDateL && this.m_repDateR)) {
        // source line 379, bytecode pc 43
        (m_newrepDateRid = this.m_repDateR.getPkId());
        // source line 380, bytecode pc 64
        (m_newrepDateLid = this.m_repDateL.getPkId());
        // source line 382, bytecode pc 119
        (m_newrepDateR = xs.Profile.GameData.Mgr.getInstance().Equipments.getEpsDateForPkId(m_newrepDateRid));
        // source line 383, bytecode pc 174
        (m_newrepDateL = xs.Profile.GameData.Mgr.getInstance().Equipments.getEpsDateForPkId(m_newrepDateLid));
        // source line 385, bytecode pc 193
        this._updateView(m_newrepDateL, true);
        // source line 386, bytecode pc 212
        this._updateView(m_newrepDateR, false);
    }
},
    refreshFromMenuClick: function() {
    if (this.isNeedRefresh) {
        // source line 393, bytecode pc 23
        this._updateData();
    }
},
    setBaseTouchPriority: function(priority) {
}
}));
// source line 418, bytecode pc 295
(xs.Views.Gems.GemsHoleextendView.cfg = {
    mGemNum: 5,
    m_mainMenu: { zOrder: 5, tag: -1, priority: -5 },
    m_gemsEquipmentAddR: { priority: -1 },
    m_gemsEquipmentAddL: { priority: -1 }
});
// source line 422, bytecode pc 326
(xs.Views.Gems.GemsHoleextendView.create = function(viewType) {
    var ret;
    // source line 423, bytecode pc 28
    (ret = new xs.Views.Gems.GemsHoleextendView());
    if ((ret && ret.init(viewType))) {
        // source line 425, bytecode pc 64
        return ret;
    }
    // source line 427, bytecode pc 87
    xs.warn("xs.Views.Gems.GemsHoleextendView.create error!");
    // source line 428, bytecode pc 89
    return null;
});
