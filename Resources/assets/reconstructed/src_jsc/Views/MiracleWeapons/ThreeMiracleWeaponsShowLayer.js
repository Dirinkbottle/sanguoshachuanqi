// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MiracleWeapons/ThreeMiracleWeaponsShowLayer.js:1
// source line 385, bytecode pc 253
(xs.Views.ThreeMiracleWeaponsShowLayer = cc.Layer.extend({
    name: "xs.Views.ThreeMiracleWeaponsShowLayer",
    ccbCfg: [],
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    var visibleSize, mainMenuWidth, size;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 43
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 18, bytecode pc 58
    this.setTouchEnabled(true);
    // source line 21, bytecode pc 66
    (this.m_lightPoint = null);
    // source line 22, bytecode pc 74
    (this.m_twoWeapon = 0);
    // source line 24, bytecode pc 89
    (this.m_weaponsList = data.list);
    // source line 25, bytecode pc 97
    (this.m_index = null);
    // source line 26, bytecode pc 105
    (this.m_middleIndex = null);
    // source line 28, bytecode pc 117
    (this.m_showThreeWeaponsList = []);
    // source line 30, bytecode pc 142
    (visibleSize = xs.director.getVisibleSize());
    // source line 31, bytecode pc 166
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 33, bytecode pc 212
    (size = cc.size((visibleSize.width - mainMenuWidth), (visibleSize.height - 150)));
    // source line 34, bytecode pc 229
    this.setContentSize(size);
    // source line 36, bytecode pc 268
    (this.FirstWeaponPosition = cc.p((size.width / 6), 210));
    // source line 37, bytecode pc 307
    (this.SecondWeaponPosition = cc.p((size.width / 2), 230));
    // source line 38, bytecode pc 349
    (this.ThirdWeaponPosition = cc.p(((size.width / 6) * 5), 210));
    // source line 42, bytecode pc 371
    this.initWeaponsListShow(data.index);
    // source line 44, bytecode pc 373
    return true;
},
    updateThisViewAndData: function(data) {
    var i;
    // source line 48, bytecode pc 7
    (this.m_lightPoint = null);
    // source line 49, bytecode pc 15
    (this.m_twoWeapon = 0);
    // source line 51, bytecode pc 23
    (this.m_index = null);
    // source line 52, bytecode pc 31
    (this.m_middleIndex = null);
    // source line 54, bytecode pc 36
    (i = 0);
    while ((i < 3)) {
        if (this.m_showThreeWeaponsList[i]) {
            // source line 56, bytecode pc 95
            xs.Utils.Node.safeRemoveChild(this.m_showThreeWeaponsList[i]);
        }
        // source line 54, bytecode pc 109
        (i = (+i + 1));
    }
    // source line 59, bytecode pc 134
    (this.m_showThreeWeaponsList = []);
    // source line 62, bytecode pc 149
    (this.m_weaponsList = data.list);
    // source line 64, bytecode pc 171
    this.initWeaponsListShow(data.index);
},
    onEnter: function() {
    // source line 69, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 72, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 75, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    setListener: function(listener) {
    // source line 79, bytecode pc 9
    (this.m_listener = listener);
},
    createWeaponByData: function(data) {
    var spBg, EquType, sp, spFrame, soSuo;
    // source line 84, bytecode pc 55
    (spBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_tucen.frameName));
    // source line 85, bytecode pc 95
    spBg.setContentSize(cc.size(430, 310));
    // source line 86, bytecode pc 113
    spBg.setRotation(90);
    // source line 88, bytecode pc 131
    (EquType = data.getEquipmentType());
    if (((EquType == xs.Models.Equipment_Type_Atk) || (EquType == xs.Models.Equipment_Type_Def))) {
        // source line 90, bytecode pc 204
        (sp = data.createPartView("equ1"));
        // source line 91, bytecode pc 244
        sp.setPosition(cc.p(215, 155));
        // source line 92, bytecode pc 263
        spBg.addChild(sp);
        // source line 93, bytecode pc 281
        sp.setRotation(-90);
        // source line 94, bytecode pc 302
        sp.setScale(0.8);
        // source line 95, bytecode pc 319
        sp.setZOrder(0);
    } else {
        // source line 97, bytecode pc 348
        (sp = data.createPartView("equ1"));
        // source line 98, bytecode pc 388
        sp.setPosition(cc.p(215, 155));
        // source line 99, bytecode pc 407
        spBg.addChild(sp);
        // source line 100, bytecode pc 425
        sp.setRotation(-90);
        // source line 101, bytecode pc 446
        sp.setScale(0.8);
        // source line 102, bytecode pc 463
        sp.setZOrder(0);
        // source line 104, bytecode pc 487
        (spFrame = data.createPartView("equ2"));
        // source line 105, bytecode pc 527
        spFrame.setPosition(cc.p(215, 155));
        // source line 106, bytecode pc 546
        spBg.addChild(spFrame);
        // source line 107, bytecode pc 564
        spFrame.setRotation(-90);
        // source line 108, bytecode pc 585
        spFrame.setScale(0.8);
        // source line 109, bytecode pc 602
        spFrame.setZOrder(1);
    }
    if ((data.getStatus() == 0)) {
        // source line 116, bytecode pc 665
        (soSuo = xs.Factorys.Sprite.create("Cmn03_locked", "Cmn03"));
        // source line 117, bytecode pc 683
        soSuo.setRotation(-90);
        // source line 118, bytecode pc 723
        soSuo.setPosition(cc.p(215, 155));
        // source line 119, bytecode pc 742
        spBg.addChild(soSuo);
        // source line 120, bytecode pc 763
        soSuo.setScale(0.8);
        // source line 121, bytecode pc 781
        soSuo.setZOrder(2);
    }
    // source line 125, bytecode pc 785
    return spBg;
},
    getThreeWeaponsByIndex: function(index) {
    var weaponsListLength, threeWeapons, nextIndex, lastIndex;
    // source line 128, bytecode pc 14
    (weaponsListLength = this.m_weaponsList.length);
    // source line 129, bytecode pc 23
    (threeWeapons = []);
    // source line 130, bytecode pc 32
    (nextIndex = (index + 1));
    // source line 131, bytecode pc 41
    (lastIndex = (index - 1));
    if ((lastIndex >= 0)) {
        // source line 133, bytecode pc 77
        threeWeapons.push(this.m_weaponsList[lastIndex]);
    } else {
        // source line 135, bytecode pc 110
        threeWeapons.push(this.m_weaponsList[(weaponsListLength - 1)]);
    }
    // source line 138, bytecode pc 136
    threeWeapons.push(this.m_weaponsList[index]);
    if ((nextIndex == weaponsListLength)) {
        // source line 141, bytecode pc 172
        threeWeapons.push(this.m_weaponsList[0]);
    } else {
        // source line 143, bytecode pc 203
        threeWeapons.push(this.m_weaponsList[nextIndex]);
    }
    // source line 146, bytecode pc 207
    return threeWeapons;
},
    initWeaponsListShow: function(index) {
    var weaponsListLength, secondWeapon, thirdWeapon, threeWeapons, firstWeapon;
    // source line 151, bytecode pc 9
    (this.m_index = index);
    // source line 152, bytecode pc 17
    (this.m_middleIndex = 1);
    // source line 154, bytecode pc 32
    (weaponsListLength = this.m_weaponsList.length);
    if ((weaponsListLength == 1)) {
        // source line 156, bytecode pc 67
        (secondWeapon = this.createWeaponByData(this.m_weaponsList[0]));
        // source line 157, bytecode pc 89
        secondWeapon.setPosition(this.SecondWeaponPosition);
        // source line 158, bytecode pc 106
        this.addChild(secondWeapon);
        // source line 160, bytecode pc 128
        this.m_showThreeWeaponsList.push(secondWeapon);
    } else {
        if ((weaponsListLength == 2)) {
            // source line 163, bytecode pc 169
            (secondWeapon = this.createWeaponByData(this.m_weaponsList[0]));
            // source line 164, bytecode pc 186
            this.addChild(secondWeapon);
            // source line 165, bytecode pc 211
            (thirdWeapon = this.createWeaponByData(this.m_weaponsList[1]));
            // source line 166, bytecode pc 228
            this.addChild(thirdWeapon);
            if ((index == 0)) {
                // source line 168, bytecode pc 246
                (this.m_twoWeapon = 1);
                // source line 169, bytecode pc 268
                secondWeapon.setPosition(this.SecondWeaponPosition);
                // source line 170, bytecode pc 290
                thirdWeapon.setPosition(this.ThirdWeaponPosition);
            } else {
                if ((index == 1)) {
                    // source line 173, bytecode pc 314
                    (this.m_twoWeapon = 2);
                    // source line 174, bytecode pc 336
                    secondWeapon.setPosition(this.FirstWeaponPosition);
                    // source line 175, bytecode pc 358
                    thirdWeapon.setPosition(this.SecondWeaponPosition);
                }
            }
            // source line 178, bytecode pc 380
            this.m_showThreeWeaponsList.push(secondWeapon);
            // source line 179, bytecode pc 402
            this.m_showThreeWeaponsList.push(thirdWeapon);
        } else {
            // source line 181, bytecode pc 427
            (threeWeapons = this.getThreeWeaponsByIndex(index));
            // source line 182, bytecode pc 449
            (firstWeapon = this.createWeaponByData(threeWeapons[0]));
            // source line 183, bytecode pc 471
            firstWeapon.setPosition(this.FirstWeaponPosition);
            // source line 184, bytecode pc 488
            this.addChild(firstWeapon);
            // source line 186, bytecode pc 510
            (secondWeapon = this.createWeaponByData(threeWeapons[1]));
            // source line 187, bytecode pc 532
            secondWeapon.setPosition(this.SecondWeaponPosition);
            // source line 189, bytecode pc 549
            this.addChild(secondWeapon);
            // source line 192, bytecode pc 572
            (thirdWeapon = this.createWeaponByData(threeWeapons[2]));
            // source line 193, bytecode pc 594
            thirdWeapon.setPosition(this.ThirdWeaponPosition);
            // source line 194, bytecode pc 611
            this.addChild(thirdWeapon);
            // source line 196, bytecode pc 633
            this.m_showThreeWeaponsList.push(firstWeapon);
            // source line 197, bytecode pc 655
            this.m_showThreeWeaponsList.push(secondWeapon);
            // source line 198, bytecode pc 677
            this.m_showThreeWeaponsList.push(thirdWeapon);
        }
    }
},
    nextWeapon: function() {
    var weaponsListLength, moveToMiddle, moveToFirst, next, last, nextNextIndex, nextWeaponPosition, nextWeapon;
    // source line 206, bytecode pc 14
    (weaponsListLength = this.m_weaponsList.length);
    if ((weaponsListLength == 1)) {
        // source line 208, bytecode pc 26
        return void 0;
    }
    if ((weaponsListLength == 2)) {
        if ((this.m_twoWeapon == 1)) {
            // source line 215, bytecode pc 88
            (moveToMiddle = cc.MoveTo.create(0.16, this.SecondWeaponPosition));
            // source line 216, bytecode pc 112
            this.m_showThreeWeaponsList[1].runAction(moveToMiddle);
            // source line 219, bytecode pc 150
            (moveToFirst = cc.MoveTo.create(0.16, this.FirstWeaponPosition));
            // source line 220, bytecode pc 174
            this.m_showThreeWeaponsList[0].runAction(moveToFirst);
            // source line 223, bytecode pc 182
            (this.m_index = 1);
            if (this.m_listener) {
                // source line 225, bytecode pc 218
                this.m_listener.updateMiddleWeapon(this.m_index);
            }
            // source line 227, bytecode pc 238
            this.updateView(this.m_index);
            // source line 228, bytecode pc 247
            (this.m_twoWeapon = 2);
        }
        // source line 231, bytecode pc 249
        return void 0;
    }
    // source line 234, bytecode pc 275
    (next = this.getNext(this.m_middleIndex, 3));
    // source line 235, bytecode pc 313
    (moveToMiddle = cc.MoveTo.create(0.16, this.SecondWeaponPosition));
    // source line 237, bytecode pc 339
    this.m_showThreeWeaponsList[next].runAction(moveToMiddle);
    // source line 240, bytecode pc 377
    (moveToFirst = cc.MoveTo.create(0.16, this.FirstWeaponPosition));
    // source line 241, bytecode pc 406
    this.m_showThreeWeaponsList[this.m_middleIndex].runAction(moveToFirst);
    // source line 244, bytecode pc 432
    (last = this.getLast(this.m_middleIndex, 3));
    // source line 245, bytecode pc 470
    xs.Utils.Node.safeRemoveChild(this.m_showThreeWeaponsList[last]);
    // source line 246, bytecode pc 505
    (nextNextIndex = this.getNext(this.m_index, this.m_weaponsList.length));
    // source line 247, bytecode pc 537
    (nextWeaponPosition = this.getNext(nextNextIndex, this.m_weaponsList.length));
    // source line 248, bytecode pc 564
    (nextWeapon = this.createWeaponByData(this.m_weaponsList[nextWeaponPosition]));
    // source line 249, bytecode pc 601
    nextWeapon.setPosition(this.m_showThreeWeaponsList[next].getPosition());
    // source line 250, bytecode pc 618
    this.addChild(nextWeapon);
    // source line 251, bytecode pc 632
    (this.m_showThreeWeaponsList[last] = nextWeapon);
    // source line 255, bytecode pc 658
    (this.m_middleIndex = (+this.m_middleIndex + 1));
    // source line 256, bytecode pc 685
    (this.m_index = (+this.m_index + 1));
    if ((this.m_middleIndex == 3)) {
        // source line 258, bytecode pc 708
        (this.m_middleIndex = 0);
    }
    if ((this.m_index == weaponsListLength)) {
        // source line 261, bytecode pc 731
        (this.m_index = 0);
    }
    if (this.m_listener) {
        // source line 265, bytecode pc 767
        this.m_listener.updateMiddleWeapon(this.m_index);
    }
    // source line 268, bytecode pc 787
    this.updateView(this.m_index);
},
    lastWeapon: function() {
    var weaponsListLength, moveToMiddle, moveToFirst, last, moveToThird, next, lastIndex, nextWeaponPosition, nextWeapon;
    // source line 272, bytecode pc 14
    (weaponsListLength = this.m_weaponsList.length);
    if ((weaponsListLength == 1)) {
        // source line 274, bytecode pc 26
        return void 0;
    }
    if ((weaponsListLength == 2)) {
        if ((this.m_twoWeapon == 2)) {
            // source line 281, bytecode pc 89
            (moveToMiddle = cc.MoveTo.create(0.16, this.ThirdWeaponPosition));
            // source line 282, bytecode pc 113
            this.m_showThreeWeaponsList[1].runAction(moveToMiddle);
            // source line 285, bytecode pc 151
            (moveToFirst = cc.MoveTo.create(0.16, this.SecondWeaponPosition));
            // source line 286, bytecode pc 175
            this.m_showThreeWeaponsList[0].runAction(moveToFirst);
            // source line 289, bytecode pc 183
            (this.m_index = 0);
            if (this.m_listener) {
                // source line 291, bytecode pc 219
                this.m_listener.updateMiddleWeapon(this.m_index);
            }
            // source line 294, bytecode pc 239
            this.updateView(this.m_index);
            // source line 295, bytecode pc 247
            (this.m_twoWeapon = 1);
        }
        // source line 298, bytecode pc 249
        return void 0;
    }
    // source line 301, bytecode pc 275
    (last = this.getLast(this.m_middleIndex, 3));
    // source line 302, bytecode pc 313
    (moveToMiddle = cc.MoveTo.create(0.16, this.SecondWeaponPosition));
    // source line 304, bytecode pc 339
    this.m_showThreeWeaponsList[last].runAction(moveToMiddle);
    // source line 307, bytecode pc 377
    (moveToThird = cc.MoveTo.create(0.16, this.ThirdWeaponPosition));
    // source line 308, bytecode pc 406
    this.m_showThreeWeaponsList[this.m_middleIndex].runAction(moveToThird);
    // source line 311, bytecode pc 432
    (next = this.getNext(this.m_middleIndex, 3));
    // source line 312, bytecode pc 470
    xs.Utils.Node.safeRemoveChild(this.m_showThreeWeaponsList[next]);
    // source line 313, bytecode pc 505
    (lastIndex = this.getLast(this.m_index, this.m_weaponsList.length));
    // source line 314, bytecode pc 537
    (nextWeaponPosition = this.getLast(lastIndex, this.m_weaponsList.length));
    // source line 315, bytecode pc 564
    (nextWeapon = this.createWeaponByData(this.m_weaponsList[nextWeaponPosition]));
    // source line 316, bytecode pc 601
    nextWeapon.setPosition(this.m_showThreeWeaponsList[last].getPosition());
    // source line 317, bytecode pc 618
    this.addChild(nextWeapon);
    // source line 318, bytecode pc 632
    (this.m_showThreeWeaponsList[next] = nextWeapon);
    // source line 322, bytecode pc 658
    (this.m_middleIndex = (+this.m_middleIndex - 1));
    // source line 323, bytecode pc 685
    (this.m_index = (+this.m_index - 1));
    if ((this.m_middleIndex < 0)) {
        // source line 325, bytecode pc 708
        (this.m_middleIndex = 2);
    }
    if ((this.m_index < 0)) {
        // source line 328, bytecode pc 733
        (this.m_index = (weaponsListLength - 1));
    }
    if (this.m_listener) {
        // source line 332, bytecode pc 769
        this.m_listener.updateMiddleWeapon(this.m_index);
    }
    // source line 334, bytecode pc 789
    this.updateView(this.m_index);
},
    updateView: function(index) {
},
    getNext: function(index, listLength) {
    var next;
    // source line 344, bytecode pc 8
    (next = (index + 1));
    if ((next >= listLength)) {
        // source line 346, bytecode pc 25
        (next = 0);
    }
    // source line 348, bytecode pc 29
    return next;
},
    getLast: function(index, listLength) {
    var last;
    // source line 351, bytecode pc 8
    (last = (index - 1));
    if ((last < 0)) {
        // source line 353, bytecode pc 27
        (last = (listLength - 1));
    }
    // source line 355, bytecode pc 31
    return last;
},
    isTouchInContent: function(touch) {
    var touchLoc, contentSize, x, y;
    // source line 359, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 361, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 362, bytecode pc 53
    (contentSize = this.getContentSize());
    // source line 363, bytecode pc 65
    (x = touchLoc.x);
    // source line 364, bytecode pc 77
    (y = touchLoc.y);
    if (((x > 0) && ((x < contentSize.width) && ((y > 0) && (y < contentSize.height))))) {
        // source line 366, bytecode pc 136
        return true;
    }
    // source line 368, bytecode pc 138
    return false;
},
    onTouchBegan: function(touch, e) {
    var touchLoc;
    if (!this.isTouchInContent(touch)) {
        // source line 373, bytecode pc 23
        return false;
    }
    // source line 375, bytecode pc 41
    (touchLoc = touch.getLocation());
    // source line 377, bytecode pc 61
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 378, bytecode pc 71
    (this.m_beginTouchLoc = touchLoc);
    // source line 379, bytecode pc 73
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    var touchLoc;
    // source line 387, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 388, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    if (((touchLoc.x - this.m_beginTouchLoc.x) >= 30)) {
        // source line 390, bytecode pc 78
        this.lastWeapon();
    }
    if (((touchLoc.x - this.m_beginTouchLoc.x) <= -30)) {
        // source line 393, bytecode pc 119
        this.nextWeapon();
    }
}
}));
// source line 397, bytecode pc 279
(xs.Views.ThreeMiracleWeaponsShowLayer.create = function(data) {
    var view;
    // source line 398, bytecode pc 23
    (view = new xs.Views.ThreeMiracleWeaponsShowLayer());
    if ((view && view.init(data))) {
        // source line 400, bytecode pc 59
        return view;
    }
    // source line 402, bytecode pc 84
    xs.assert(false, "xs.Views.ThreeMiracleWeaponsShowLayer.create error!");
    // source line 403, bytecode pc 86
    return null;
});
