// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/ToastModel.js:1
// source line 408, bytecode pc 867
(xs.Models.Toast = cc.Class.extend({
    name: "xs.Models.Toast",
    init: function(jsonObj) {
    // source line 11, bytecode pc 16
    this.update(jsonObj);
    // source line 13, bytecode pc 24
    (this.bUpdateForGold = false);
    // source line 14, bytecode pc 32
    (this.bUpdateForSilver = false);
    // source line 15, bytecode pc 40
    (this.bUpdateForCopper = false);
    // source line 17, bytecode pc 42
    return true;
},
    update: function(jsonObj) {
    var i, obj;
    // source line 22, bytecode pc 33
    (this.timeStamp = Date.parse(new Date()));
    // source line 25, bytecode pc 46
    (this.goldInfo = {});
    // source line 26, bytecode pc 86
    (this.goldInfo.freeEndTime = parseInt(jsonObj.gold_info.free_end_time));
    // source line 27, bytecode pc 126
    (this.goldInfo.freeTimes = parseInt(jsonObj.gold_info.free_times));
    // source line 28, bytecode pc 161
    (this.goldInfo.price = parseInt(jsonObj.gold_price));
    // source line 31, bytecode pc 174
    (this.silverInfo = {});
    // source line 32, bytecode pc 214
    (this.silverInfo.freeEndTime = parseInt(jsonObj.silver_info.free_end_time));
    // source line 33, bytecode pc 254
    (this.silverInfo.freeTimes = parseInt(jsonObj.silver_info.free_times));
    // source line 34, bytecode pc 289
    (this.silverInfo.price = parseInt(jsonObj.silver_price));
    // source line 37, bytecode pc 302
    (this.copperInfo = {});
    // source line 38, bytecode pc 342
    (this.copperInfo.freeEndTime = parseInt(jsonObj.copper_info.free_end_time));
    // source line 39, bytecode pc 382
    (this.copperInfo.freeTimes = parseInt(jsonObj.copper_info.free_times));
    // source line 40, bytecode pc 417
    (this.copperInfo.price = parseInt(jsonObj.copper_price));
    // source line 43, bytecode pc 447
    (this.needTimes = parseInt(jsonObj.need_times));
    // source line 46, bytecode pc 477
    (this.m_firstDrawByYuanBao = parseInt(jsonObj.first_time_consume_gold));
    // source line 49, bytecode pc 507
    (this.goldTenDrawPrice = parseInt(jsonObj.multi_price));
    // source line 52, bytecode pc 519
    (this.showGenerals = []);
    // source line 53, bytecode pc 524
    (i = 0);
    while ((i < jsonObj.show_general_list.length)) {
        // source line 54, bytecode pc 540
        (obj = {});
        // source line 55, bytecode pc 566
        (obj.generalId = jsonObj.show_general_list[i].general_id);
        // source line 57, bytecode pc 607
        (obj.tagId = parseInt(jsonObj.show_general_list[i].tag_id));
        // source line 58, bytecode pc 648
        (obj.showTime = parseInt(jsonObj.show_general_list[i].show_time));
        // source line 59, bytecode pc 689
        (obj.disappearTime = parseInt(jsonObj.show_general_list[i].disappear_time));
        // source line 60, bytecode pc 711
        this.showGenerals.push(obj);
        // source line 53, bytecode pc 726
        i++;
    }
    // source line 64, bytecode pc 791
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.countDown);
    // source line 65, bytecode pc 846
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.countDown, 1, cc.REPEAT_FOREVER);
    // source line 67, bytecode pc 859
    this.updateCupInfo();
},
    updateCountTime: function() {
    var curTimeStamp, timeOffset;
    // source line 71, bytecode pc 30
    (curTimeStamp = Date.parse(new Date()));
    // source line 72, bytecode pc 48
    (timeOffset = ((curTimeStamp - this.timeStamp) / 1000));
    // source line 74, bytecode pc 98
    (this.goldCountTime = (((this.goldInfo.freeEndTime - timeOffset) >= 0) ? (this.goldInfo.freeEndTime - timeOffset) : 0));
    // source line 75, bytecode pc 148
    (this.silverCountTime = (((this.silverInfo.freeEndTime - timeOffset) >= 0) ? (this.silverInfo.freeEndTime - timeOffset) : 0));
    // source line 76, bytecode pc 198
    (this.copperCountTime = (((this.copperInfo.freeEndTime - timeOffset) >= 0) ? (this.copperInfo.freeEndTime - timeOffset) : 0));
},
    getShowGenerals: function() {
    // source line 81, bytecode pc 6
    return this.showGenerals;
},
    createToastDesk: function() {
    var goldBtnBg, silverBg, copperBg;
    // source line 86, bytecode pc 12
    this.updateCountTime();
    // source line 89, bytecode pc 48
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_14_Toast_WineCup.ccbi", this));
    // source line 90, bytecode pc 90
    this.ccbNode.setContentSize(cc.size(782, 102));
    // source line 92, bytecode pc 98
    (this.m_copperPrice = null);
    // source line 93, bytecode pc 106
    (this.m_silverPrice = null);
    // source line 94, bytecode pc 114
    (this.m_goldPrice = null);
    // source line 95, bytecode pc 122
    (this.m_copperInfo = null);
    // source line 96, bytecode pc 130
    (this.m_silverInfo = null);
    // source line 97, bytecode pc 138
    (this.m_goldInfo = null);
    // source line 99, bytecode pc 186
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 101, bytecode pc 229
    (goldBtnBg = this.ccbNode.getChildByTag(this.cfg.goldCup.bg.tag));
    // source line 102, bytecode pc 272
    (silverBg = this.ccbNode.getChildByTag(this.cfg.silverCup.bg.tag));
    // source line 103, bytecode pc 315
    (copperBg = this.ccbNode.getChildByTag(this.cfg.copperCup.bg.tag));
    // source line 105, bytecode pc 352
    (this.goldBtn = xs.Views.Btn.createInvisibleWithParent(goldBtnBg));
    // source line 106, bytecode pc 372
    this.goldBtn.setZoomOnTouchDown(false);
    // source line 107, bytecode pc 409
    (this.silverBtn = xs.Views.Btn.createInvisibleWithParent(silverBg));
    // source line 108, bytecode pc 429
    this.silverBtn.setZoomOnTouchDown(false);
    // source line 109, bytecode pc 466
    (this.copperBtn = xs.Views.Btn.createInvisibleWithParent(copperBg));
    // source line 110, bytecode pc 486
    this.copperBtn.setZoomOnTouchDown(false);
    // source line 112, bytecode pc 530
    (this.arm_gold = xs.Views.Armature.AutoAudioArmature.create("Arm_ToastDesk"));
    // source line 113, bytecode pc 573
    this.arm_gold.playAniById("taostEnabled", { loop: true, speed: 1 });
    // source line 114, bytecode pc 597
    this.arm_gold.setScaleX(1.3);
    // source line 115, bytecode pc 655
    xs.Utils.Node.attachNodes(this.goldBtn, this.arm_gold, { desc: "c" });
    // source line 117, bytecode pc 699
    (this.arm_silver = xs.Views.Armature.AutoAudioArmature.create("Arm_ToastDesk"));
    // source line 118, bytecode pc 742
    this.arm_silver.playAniById("taostEnabled", { loop: true, speed: 1 });
    // source line 119, bytecode pc 766
    this.arm_silver.setScaleX(1.3);
    // source line 120, bytecode pc 824
    xs.Utils.Node.attachNodes(this.silverBtn, this.arm_silver, { desc: "c" });
    // source line 122, bytecode pc 868
    (this.arm_copper = xs.Views.Armature.AutoAudioArmature.create("Arm_ToastDesk"));
    // source line 123, bytecode pc 911
    this.arm_copper.playAniById("taostEnabled", { loop: true, speed: 1 });
    // source line 124, bytecode pc 935
    this.arm_copper.setScaleX(1.3);
    // source line 125, bytecode pc 993
    xs.Utils.Node.attachNodes(this.copperBtn, this.arm_copper, { desc: "c" });
    // source line 132, bytecode pc 1006
    this.updateCupInfo();
    // source line 133, bytecode pc 1019
    this.updateDeskInfo();
    // source line 135, bytecode pc 1026
    return this.ccbNode;
},
    updateCupInfo: function() {
    if (this.ccbNode) {
        // source line 142, bytecode pc 92
        this.m_copperPrice.setString(xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopperWineGlass));
        // source line 143, bytecode pc 174
        this.m_silverPrice.setString(xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_SilverWineGlass));
        // source line 144, bytecode pc 256
        this.m_goldPrice.setString(xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_GoldWineGlass));
    }
},
    updateDeskInfo: function() {
    if (this.ccbNode) {
        if (((this.goldInfo.freeTimes > 0) && (this.goldCountTime <= 0))) {
            // source line 154, bytecode pc 125
            this.m_goldInfo.setString(xs.Tools.String.createString("str_Store_freeChance").convWithArgs([ this.goldInfo.freeTimes ]));
            // source line 155, bytecode pc 145
            this.arm_gold.setVisible(true);
        } else {
            // source line 158, bytecode pc 250
            this.m_goldInfo.setString(xs.Tools.String.createString("str_Store_endFree").convWithArgs([ xs.Utils.convertSecondToTime(this.goldCountTime) ]));
            // source line 159, bytecode pc 270
            this.arm_gold.setVisible(false);
        }
        if (((this.silverInfo.freeTimes > 0) && (this.silverCountTime <= 0))) {
            // source line 164, bytecode pc 385
            this.m_silverInfo.setString(xs.Tools.String.createString("str_Store_freeChance").convWithArgs([ this.silverInfo.freeTimes ]));
            // source line 165, bytecode pc 405
            this.arm_silver.setVisible(true);
        } else {
            // source line 168, bytecode pc 510
            this.m_silverInfo.setString(xs.Tools.String.createString("str_Store_endFree").convWithArgs([ xs.Utils.convertSecondToTime(this.silverCountTime) ]));
            // source line 169, bytecode pc 530
            this.arm_silver.setVisible(false);
        }
        if (((this.copperInfo.freeTimes > 0) && (this.copperCountTime <= 0))) {
            // source line 174, bytecode pc 645
            this.m_copperInfo.setString(xs.Tools.String.createString("str_Store_freeChance").convWithArgs([ this.copperInfo.freeTimes ]));
            // source line 175, bytecode pc 665
            this.arm_copper.setVisible(true);
        } else {
            if (((this.copperInfo.freeTimes > 0) && (this.copperCountTime > 0))) {
                // source line 178, bytecode pc 802
                this.m_copperInfo.setString(xs.Tools.String.createString("str_Store_endFree").convWithArgs([ xs.Utils.convertSecondToTime(this.copperCountTime) ]));
                // source line 179, bytecode pc 822
                this.arm_copper.setVisible(false);
            } else {
                if ((this.copperInfo.freeTimes === 0)) {
                    // source line 181, bytecode pc 896
                    this.m_copperInfo.setString(xs.Tools.String.createString("str_Store_freeOver"));
                    // source line 182, bytecode pc 916
                    this.arm_copper.setVisible(false);
                }
            }
        }
        if (this.isFirstDrawByYuanBao()) {
            // source line 187, bytecode pc 986
            this.ccbNode.getChildByTag(this.cfg.goldCup.first_tip_1.tag).setVisible(false);
            // source line 188, bytecode pc 1039
            this.ccbNode.getChildByTag(this.cfg.goldCup.first_tip_2.tag).setVisible(false);
        } else {
            // source line 190, bytecode pc 1097
            this.ccbNode.getChildByTag(this.cfg.goldCup.first_tip_1.tag).setVisible(true);
            // source line 191, bytecode pc 1150
            this.ccbNode.getChildByTag(this.cfg.goldCup.first_tip_2.tag).setVisible(true);
        }
    }
},
    getGoldBtn: function() {
    // source line 198, bytecode pc 6
    return this.goldBtn;
},
    getSilverBtn: function() {
    // source line 202, bytecode pc 6
    return this.silverBtn;
},
    getCopperBtn: function() {
    // source line 206, bytecode pc 6
    return this.copperBtn;
},
    countDown: function() {
    // source line 210, bytecode pc 12
    this.updateCountTime();
    if ((this.goldCountTime > 0)) {
        // source line 213, bytecode pc 52
        this.goldCountTime--;
        // source line 214, bytecode pc 60
        (this.bUpdateForGold = false);
    } else {
        // source line 216, bytecode pc 78
        (this.goldInfo.freeTimes = 1);
        if (!this.bUpdateForGold) {
            // source line 219, bytecode pc 138
            xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
            // source line 220, bytecode pc 146
            (this.bUpdateForGold = true);
        }
    }
    if ((this.silverCountTime > 0)) {
        // source line 225, bytecode pc 186
        this.silverCountTime--;
        // source line 226, bytecode pc 194
        (this.bUpdateForSilver = false);
    } else {
        // source line 228, bytecode pc 212
        (this.silverInfo.freeTimes = 1);
        if (!this.bUpdateForSilver) {
            // source line 231, bytecode pc 272
            xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
            // source line 232, bytecode pc 280
            (this.bUpdateForSilver = true);
        }
    }
    if ((this.copperCountTime > 0)) {
        // source line 237, bytecode pc 320
        this.copperCountTime--;
        // source line 238, bytecode pc 328
        (this.bUpdateForCopper = false);
    } else {
        if (!this.bUpdateForCopper) {
            // source line 242, bytecode pc 393
            xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
            // source line 243, bytecode pc 401
            (this.bUpdateForCopper = true);
        }
    }
    if ((xs.Scene.Mgr.getCurSceneName() == "StoreScene")) {
        // source line 248, bytecode pc 451
        this.updateDeskInfo();
    }
},
    isFirstDrawByYuanBao: function() {
    if ((this.m_firstDrawByYuanBao === 1)) {
        // source line 255, bytecode pc 14
        return true;
    } else {
        if ((this.m_firstDrawByYuanBao === 0)) {
            // source line 257, bytecode pc 34
            return false;
        }
    }
},
    getGoldInfo: function() {
    // source line 263, bytecode pc 6
    return this.goldInfo;
},
    getGoldFreeTimes: function() {
    // source line 268, bytecode pc 11
    return this.goldInfo.freeTimes;
},
    getGoldItemNum: function() {
    // source line 273, bytecode pc 11
    return this.goldInfo.item_num;
},
    getGoldFreeEndTime: function() {
    // source line 278, bytecode pc 6
    return this.goldCountTime;
},
    getSilverInfo: function() {
    // source line 283, bytecode pc 6
    return this.silverInfo;
},
    getSilverFreeTimes: function() {
    // source line 288, bytecode pc 11
    return this.silverInfo.freeTimes;
},
    getSilverItemNum: function() {
    // source line 293, bytecode pc 11
    return this.silverInfo.item_num;
},
    getSilverFreeEndTime: function() {
    // source line 298, bytecode pc 6
    return this.silverCountTime;
},
    getCopperInfo: function() {
    // source line 303, bytecode pc 6
    return this.copperInfo;
},
    getCopperFreeTimes: function() {
    // source line 308, bytecode pc 11
    return this.copperInfo.freeTimes;
},
    getCopperItemNum: function() {
    // source line 313, bytecode pc 11
    return this.copperInfo.item_num;
},
    getCopperFreeEndTime: function() {
    // source line 318, bytecode pc 6
    return this.copperCountTime;
},
    getDrawPrice: function(drawType) {
    // source line 324, bytecode pc 3
    switch (drawType) {
        case xs.Constant_Grade_God:
        case xs.Constant_Grade_Demon:
        // source line 327, bytecode pc 90
        return this.goldTenDrawPrice;
        case xs.Constant_Grade_Gold:
        // source line 329, bytecode pc 102
        return this.goldInfo.price;
        case xs.Constant_Grade_Silver:
        // source line 331, bytecode pc 114
        return this.silverInfo.price;
        case xs.Constant_Grade_Copper:
        // source line 333, bytecode pc 126
        return this.copperInfo.price;
        default:
        break;
    }
},
    getGoldGeneralDrawTimes: function() {
    // source line 339, bytecode pc 6
    return this.needTimes;
},
    getTotalToastTimes: function() {
    var count;
    // source line 344, bytecode pc 12
    this.updateCountTime();
    // source line 346, bytecode pc 17
    (count = 0);
    if (((this.goldCountTime <= 0) && (this.getGoldFreeTimes() > 0))) {
        // source line 350, bytecode pc 59
        (count = (count + 1));
    }
    if (((this.silverCountTime <= 0) && (this.getSilverFreeTimes() > 0))) {
        // source line 358, bytecode pc 101
        (count = (count + 1));
    }
    if (((this.copperCountTime <= 0) && (this.getCopperFreeTimes() > 0))) {
        // source line 369, bytecode pc 143
        (count = (count + 1));
    }
    // source line 372, bytecode pc 147
    return count;
},
    unschedule: function() {
},
    cfg: {
        goldCup: {
            bg: { tag: 31 },
            price: { tag: 32 },
            infoLabel: { tag: 30 },
            first_tip_1: { tag: 33 },
            first_tip_2: { tag: 34 }
        },
        silverCup: { bg: { tag: 21 }, price: { tag: 22 }, infoLabel: { tag: 20 } },
        copperCup: { bg: { tag: 11 }, price: { tag: 12 }, infoLabel: { tag: 10 } },
        ccbCfg: [
            { tag: 12, type: "ls", name: "m_copperPrice", id: "LS_danyao" },
            { tag: 22, type: "ls", name: "m_silverPrice", id: "LS_danyao" },
            { tag: 32, type: "ls", name: "m_goldPrice", id: "LS_danyao" },
            { tag: 10, type: "ls", name: "m_copperInfo", id: "LS_fightUI1" },
            { tag: 20, type: "ls", name: "m_silverInfo", id: "LS_fightUI1" },
            { tag: 30, type: "ls", name: "m_goldInfo", id: "LS_fightUI1" }
        ]
    }
}));
// source line 413, bytecode pc 893
(xs.Models.Toast.create = function(jsonObj) {
    var ret;
    // source line 414, bytecode pc 23
    (ret = new xs.Models.Toast());
    if ((ret && ret.init(jsonObj))) {
        // source line 416, bytecode pc 59
        return ret;
    }
    // source line 418, bytecode pc 61
    return null;
});
