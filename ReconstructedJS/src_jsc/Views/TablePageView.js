// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/TablePageView.js:1
// source line 393, bytecode pc 283
(xs.Views.TablePage = cc.Node.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.oldViewPosX = 0);
    // source line 22, bytecode pc 44
    (this.viewArrays = new Array());
    // source line 23, bytecode pc 61
    (this.pageButtonStrings = new Array());
    // source line 24, bytecode pc 78
    (this.pageButtons = new Array());
    // source line 25, bytecode pc 86
    (this.curPageView = null);
    // source line 26, bytecode pc 95
    (this.curSelIdx = -1);
    // source line 28, bytecode pc 112
    (this.viewConstructArrays = new Array());
    // source line 29, bytecode pc 129
    (this.viewDataArrays = new Array());
    // source line 31, bytecode pc 138
    (this.m_baseTouchPriority = -1);
    // source line 33, bytecode pc 155
    (this.pageButtonsEnabled = new Array());
    // source line 34, bytecode pc 172
    (this.pageButtonsClickFunc = new Array());
    // source line 36, bytecode pc 184
    (this.pageButtonClass = "Btn_TablePage");
    // source line 38, bytecode pc 186
    return true;
},
    onEnter: function() {
    // source line 42, bytecode pc 12
    this._super();
    // source line 45, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateHint, xs.Constant_Notify_HintChange_All);
},
    addPageWhitConstruct: function(pageName, pageViewClass, data, pageButtonClass) {
    // source line 49, bytecode pc 21
    this.viewConstructArrays.push(pageViewClass);
    if ((pageButtonClass !== null)) {
        // source line 51, bytecode pc 52
        (this.pageButtonClass = (pageButtonClass || "Btn_TablePage"));
    }
    // source line 53, bytecode pc 74
    this.viewDataArrays.push(data);
    // source line 54, bytecode pc 96
    this.pageButtonStrings.push(pageName);
    // source line 56, bytecode pc 113
    this.addPageButton(pageName);
    // source line 57, bytecode pc 144
    this.pageButtonsEnabled.push({ canUse: true });
    // source line 58, bytecode pc 159
    this.selectPage(0);
},
    addPage: function(pageName, pageView, pageButtonClass) {
    if (pageView.setBaseTouchPriority) {
        // source line 64, bytecode pc 58
        pageView.setBaseTouchPriority(xs.Views.TablePage.cfg.view.priority);
    }
    if ((pageButtonClass !== null)) {
        // source line 67, bytecode pc 89
        (this.pageButtonClass = (pageButtonClass || "Btn_TablePage"));
    }
    // source line 69, bytecode pc 106
    pageView.setVisible(false);
    // source line 70, bytecode pc 127
    (this.oldViewPosX = pageView.getPositionX());
    // source line 71, bytecode pc 146
    pageView.setPositionX(3000);
    // source line 73, bytecode pc 168
    this.viewArrays.push(pageView);
    // source line 74, bytecode pc 185
    this.addChild(pageView);
    // source line 75, bytecode pc 207
    this.pageButtonStrings.push(pageName);
    // source line 78, bytecode pc 224
    this.addPageButton(pageName);
    // source line 79, bytecode pc 255
    this.pageButtonsEnabled.push({ canUse: true });
    // source line 80, bytecode pc 270
    this.selectPage(0);
},
    selectPage: function(idx) {
    var pageView, i;
    if ((idx === this.curSelIdx)) {
        // source line 86, bytecode pc 21
        return this.curPageView;
    }
    // source line 88, bytecode pc 31
    (this.curSelIdx = idx);
    if ((this.curPageView !== null)) {
        // source line 91, bytecode pc 64
        this.curPageView.setVisible(false);
        // source line 92, bytecode pc 88
        (this.oldViewPosX = this.curPageView.getPositionX());
        // source line 93, bytecode pc 110
        this.curPageView.setPositionX(3000);
    }
    if (!this.viewArrays[idx]) {
        if ((this.viewDataArrays[idx] && this.viewDataArrays[idx].param)) {
            // source line 98, bytecode pc 203
            (pageView = this.viewConstructArrays[idx].create(this.viewDataArrays[idx].param));
        } else {
            // source line 100, bytecode pc 233
            (pageView = this.viewConstructArrays[idx].create());
        }
        if ((pageView.setListener && (this.viewDataArrays[idx] && this.viewDataArrays[idx].listener))) {
            // source line 104, bytecode pc 314
            pageView.setListener(this.viewDataArrays[idx].listener);
        }
        if (pageView.setBaseTouchPriority) {
            // source line 108, bytecode pc 380
            pageView.setBaseTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.view.priority));
        }
        // source line 110, bytecode pc 394
        (this.viewArrays[idx] = pageView);
        // source line 111, bytecode pc 411
        this.addChild(pageView);
        // source line 112, bytecode pc 428
        (this.curPageView = this.viewArrays[idx]);
    } else {
        // source line 114, bytecode pc 450
        (this.curPageView = this.viewArrays[idx]);
    }
    // source line 117, bytecode pc 455
    (i = 0);
    while ((i < this.pageButtons.length)) {
        if ((i !== idx)) {
            // source line 119, bytecode pc 497
            this.pageButtons[i].setSelected(false);
        } else {
            // source line 121, bytecode pc 526
            this.pageButtons[i].setSelected(true);
        }
        // source line 117, bytecode pc 541
        i++;
    }
    // source line 125, bytecode pc 582
    this.curPageView.setVisible(true);
    // source line 126, bytecode pc 607
    this.curPageView.setPositionX(this.oldViewPosX);
    if (this.curPageView.refreshFromMenuClick) {
        // source line 129, bytecode pc 641
        this.curPageView.refreshFromMenuClick();
    }
    // source line 132, bytecode pc 654
    this.notifyPageChg();
    // source line 134, bytecode pc 661
    return this.curPageView;
},
    getCurSelPage: function() {
    // source line 139, bytecode pc 6
    return this.curSelIdx;
},
    getCurSelPageView: function() {
    // source line 143, bytecode pc 6
    return this.curPageView;
},
    getPageByIdx: function(idx) {
    if ((idx < this.viewArrays.length)) {
        // source line 149, bytecode pc 30
        return this.viewArrays[idx];
    }
    // source line 151, bytecode pc 32
    return null;
},
    getPageCount: function() {
    // source line 156, bytecode pc 11
    return this.viewArrays.length;
},
    addPageButton: function(pageName) {
    var pageBtn, btnContentSize;
    if ((pageName == null)) {
        // source line 162, bytecode pc 18
        (pageName = "");
    }
    // source line 165, bytecode pc 59
    (pageBtn = xs.Views.Btn.createWithString(this.pageButtonClass, pageName));
    // source line 166, bytecode pc 99
    (btnContentSize = pageBtn.getTitleLabelForState(cc.CONTROL_STATE_NORMAL).getContentSize());
    // source line 167, bytecode pc 146
    pageBtn.setPreferredSize(cc.size((btnContentSize.width + 60), 53));
    // source line 168, bytecode pc 182
    pageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 169, bytecode pc 199
    pageBtn.setZoomOnTouchDown(false);
    // source line 170, bytecode pc 234
    pageBtn.setOnClickCallBack(this.touchDownAction.bind(this));
    // source line 171, bytecode pc 287
    pageBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.btn.priority));
    // source line 177, bytecode pc 403
    xs.Utils.Node.attachNodes(this, pageBtn, { desc: "lb", offset: this.getAdjustPos(this.pageButtons.length), sc: false }, xs.Cfg.Scene.AgaScene.tablePage.pageButton);
    // source line 179, bytecode pc 425
    this.pageButtons.push(pageBtn);
    if ((pageName == "")) {
        // source line 183, bytecode pc 468
        this.setPageButtonVisible((this.pageButtons.length - 1), false);
    }
},
    setPageButtonEnabled: function(idx, canUse, touchFunc) {
    // source line 188, bytecode pc 24
    (this.pageButtonsEnabled[idx] = { canUse: canUse });
    if (touchFunc) {
        // source line 190, bytecode pc 46
        (this.pageButtonsClickFunc[idx] = touchFunc);
    }
},
    setPageButtonVisible: function(idx, visible) {
    // source line 195, bytecode pc 25
    this.pageButtons[idx].setVisible(visible);
},
    touchDownAction: function(sender, controlEvent) {
    var i;
    // source line 200, bytecode pc 4
    (i = 0);
    while ((i < this.pageButtons.length)) {
        if ((this.pageButtons[i] === sender)) {
            if (this.pageButtonsEnabled[i].canUse) {
                break;
            } else {
                if (this.pageButtonsClickFunc[i]) {
                    // source line 208, bytecode pc 91
                    this.pageButtonsClickFunc[i]();
                } else {
                    // source line 212, bytecode pc 156
                    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
                }
                // source line 214, bytecode pc 158
                return void 0;
            }
        }
        // source line 200, bytecode pc 173
        i++;
    }
    // source line 219, bytecode pc 211
    sender.setSelected(true);
    // source line 220, bytecode pc 216
    (i = 0);
    while ((i < this.pageButtons.length)) {
        if ((this.pageButtons[i] !== sender)) {
            // source line 223, bytecode pc 265
            this.pageButtons[i].setSelected(false);
        } else {
            if ((this.curSelIdx !== i)) {
                // source line 225, bytecode pc 302
                this.selectPage(i);
            }
        }
        // source line 220, bytecode pc 317
        i++;
    }
},
    getAdjustPos: function(idx) {
    var visibleSize, frontPos, frontSize, pos;
    // source line 231, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    if ((idx === 0)) {
        // source line 233, bytecode pc 83
        return cc.p(-15, this.getContentSize().height);
    } else {
        // source line 235, bytecode pc 115
        (frontPos = this.pageButtons[(idx - 1)].getPosition());
        // source line 236, bytecode pc 142
        (frontSize = this.pageButtons[(idx - 1)].getContentSize());
        // source line 237, bytecode pc 201
        (pos = cc.p(((frontPos.x + frontSize.width) - 15), this.getContentSize().height));
        // source line 238, bytecode pc 205
        return pos;
    }
},
    getAdjustPosForHintIcon: function(idx) {
    // source line 244, bytecode pc 41
    return cc.p(this.getAdjustPos(idx).x, -15);
},
    setListener: function(listener) {
    // source line 249, bytecode pc 9
    (this.m_listener = listener);
},
    getListener: function() {
    // source line 253, bytecode pc 6
    return this.m_listener;
},
    notifyPageChg: function() {
    if (((this.m_listener !== undefined) && this.m_listener.onPageChange)) {
        // source line 258, bytecode pc 58
        this.m_listener.onPageChange(this.curSelIdx);
    }
},
    setHintIcon: function(hintPageIdxs, hintTypes, bAutoUpdate) {
    var i, pageIdx, hintNum;
    // source line 263, bytecode pc 20
    (this.hintPageIdxs = (hintPageIdxs || []));
    // source line 264, bytecode pc 41
    (this.hintTypes = (hintTypes || []));
    // source line 265, bytecode pc 51
    (this.m_autoUpdate = bAutoUpdate);
    // source line 267, bytecode pc 56
    (i = 0);
    while ((i < this.hintPageIdxs.length)) {
        // source line 268, bytecode pc 76
        (pageIdx = this.hintPageIdxs[i]);
        // source line 269, bytecode pc 81
        (hintNum = 0);
        // source line 271, bytecode pc 89
        switch (hintTypes[i]) {
            case xs.Constant_HintType_Camp_Reincarnation:
            // source line 273, bytecode pc 550
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.generalReinHintInfoCount());
            break;
            case xs.Constant_HintType_Camp_Breach:
            // source line 276, bytecode pc 606
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.generalBreachHintInfoCount());
            break;
            case xs.Constant_HintType_Camp_Bag:
            // source line 279, bytecode pc 662
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.conBagHintInfoCount());
            break;
            case xs.Constant_HintType_Camp_GemBag:
            // source line 282, bytecode pc 718
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.gemBagHintInfoCount());
            break;
            case xs.Constant_HintType_Camp_EquPiece:
            // source line 285, bytecode pc 774
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.equipmentHintInfoCount());
            break;
            case xs.Constant_HintType_Pvp_Ladder:
            // source line 288, bytecode pc 830
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.ladderHintInfoCount());
            break;
            case xs.Constant_HintType_Pvp_Ladder_Salary:
            // source line 291, bytecode pc 886
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.ladderHintInfoCount_salary());
            break;
            case xs.Constant_HintType_Pvp_Ladder_Honor:
            // source line 294, bytecode pc 942
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.ladderHintInfoCount_honor());
            break;
            case xs.Constant_HintType_Pvp_Chaos:
            // source line 297, bytecode pc 998
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.chaosHintInfoCount());
            break;
            case xs.Constant_HintType_Pvp_Climb:
            // source line 300, bytecode pc 1054
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.climbHintInfoCount());
            break;
            case xs.Constant_HintType_Party_Train:
            // source line 303, bytecode pc 1110
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.trainHintInfoCount());
            break;
            case xs.Constant_HintType_Store_Toast:
            // source line 306, bytecode pc 1166
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.toastHintInfoCount());
            break;
            case xs.Constant_HintType_Store_Gift:
            // source line 309, bytecode pc 1222
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.giftHintInfoCount());
            break;
            case xs.Constant_HintType_Pvp_DecisiveBattle:
            // source line 312, bytecode pc 1278
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.decisiveBattleInfoCount());
            break;
            case xs.Constant_HintType_Pvp_LadderWar_exchange:
            // source line 314, bytecode pc 1329
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.ladderWarExchangeCounts());
            break;
            case xs.Constant_HintType_Pvp_LadderWar_worship:
            // source line 317, bytecode pc 1385
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.ladderWarInfoCount());
            break;
            case xs.Constant_HintType_Pvp_GoddessFight:
            // source line 320, bytecode pc 1441
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.GoddessHintCount());
            break;
            case xs.Constant_HintType_Pvp_LocalLadderWar_exchange:
            // source line 323, bytecode pc 1497
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.localLadderWarExchangeCounts());
            break;
            case xs.Constant_HintType_Pvp_LocalLadderWar_worship:
            // source line 326, bytecode pc 1553
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.localLadderWarInfoCount());
            break;
            case xs.Constant_HintType_Pvp_LocalDecisiveBattle:
            // source line 329, bytecode pc 1609
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.localDecisiveBattleInfoCount());
            break;
            case xs.Constant_HintType_HuLaoBattle:
            // source line 332, bytecode pc 1665
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.hulaoBattleHintInfoCount());
            break;
            case xs.Constant_HintType_Camp_Awake:
            // source line 335, bytecode pc 1721
            (hintNum = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getAllGeneralCanAwakeNum());
            break;
            case xs.Constant_HintType_Mail_System:
            case xs.Constant_HintType_Mail_Friend:
            case xs.Constant_HintType_Mail_Award:
            case xs.Constant_HintType_Mail_Report:
            case xs.Constant_HintType_Mail_Charge:
            // source line 343, bytecode pc 1785
            (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.getHintMailCount(hintTypes[i]));
            break;
            default:
            // source line 347, bytecode pc 1811
            this.setIconNum(pageIdx, hintNum);
            // source line 267, bytecode pc 1826
            i++;
            break;
        }
    }
},
    updateHint: function() {
    if ((this.hintPageIdxs && (this.hintTypes && this.m_autoUpdate))) {
        // source line 353, bytecode pc 68
        this.setHintIcon(this.hintPageIdxs, this.hintTypes, this.m_autoUpdate);
    }
},
    setIconNum: function(pageIdx, hintNum) {
    var hintIcon, _offset;
    // source line 358, bytecode pc 19
    (hintIcon = this.getChildByTag(pageIdx));
    if (hintIcon) {
        // source line 360, bytecode pc 42
        hintIcon.removeFromParent();
    }
    if ((this.pageButtons[pageIdx] && (hintNum > 0))) {
        // source line 364, bytecode pc 102
        (hintIcon = xs.Tools.UI.generalHintIcon(hintNum));
        // source line 365, bytecode pc 121
        hintIcon.setTag(pageIdx);
        // source line 366, bytecode pc 139
        hintIcon.setZOrder(10);
        // source line 367, bytecode pc 161
        (_offset = this.getAdjustPosForHintIcon((pageIdx + 1)));
        // source line 368, bytecode pc 219
        xs.Utils.Node.attachNodes(this, hintIcon, { desc: "lt", offset: _offset });
    }
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 373, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 374, bytecode pc 14
    (i = 0);
    while ((i < this.viewArrays.length)) {
        if ((this.viewArrays[i] && this.viewArrays[i].setBaseTouchPriority)) {
            // source line 376, bytecode pc 116
            this.viewArrays[i].setBaseTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.view.priority));
        } else {
            if ((this.viewArrays[i] && this.viewArrays[i].setTouchPriority)) {
                // source line 379, bytecode pc 217
                this.viewArrays[i].setTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.view.priority));
            }
        }
        // source line 374, bytecode pc 232
        i++;
    }
    // source line 382, bytecode pc 258
    (i = 0);
    while ((i < this.pageButtons.length)) {
        if ((this.pageButtons[i] && this.pageButtons[i].setBaseTouchPriority)) {
            // source line 384, bytecode pc 360
            this.pageButtons[i].setBaseTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.btn.priority));
        } else {
            if ((this.pageButtons[i] && this.pageButtons[i].setTouchPriority)) {
                // source line 387, bytecode pc 461
                this.pageButtons[i].setTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.btn.priority));
            }
        }
        // source line 382, bytecode pc 476
        i++;
    }
},
    onExit: function() {
    // source line 394, bytecode pc 12
    this._super();
    // source line 397, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_All);
}
}));
// source line 410, bytecode pc 357
(xs.Views.TablePage.cfg = { btn: { zOrder: 0, priority: -20 }, view: { zOrder: 0, priority: 0 } });
// source line 416, bytecode pc 383
(xs.Views.TablePage.create = function(contentSize) {
    var ret;
    // source line 418, bytecode pc 23
    (ret = new xs.Views.TablePage());
    if ((ret && ret.init())) {
        // source line 420, bytecode pc 70
        ret.setContentSize(contentSize);
        // source line 421, bytecode pc 74
        return ret;
    } else {
        // source line 423, bytecode pc 81
        return null;
    }
});
// source line 429, bytecode pc 409
(xs.Views.TablePage.getTableViewSize = function() {
    var visibleSize;
    // source line 430, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 431, bytecode pc 69
    return cc.size(840, (visibleSize.height - 160));
});
// source line 436, bytecode pc 435
(xs.Views.TablePage.getTableViewOffset = function() {
    var visibleSize, offset_x;
    // source line 437, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 438, bytecode pc 75
    (offset_x = (((visibleSize.width - xs.Views.MainMenuView.Width) - 840) / 2));
    // source line 439, bytecode pc 99
    return cc.p(offset_x, 40);
});
