// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/TreasureBox.js:1
// source line 245, bytecode pc 203
(xs.Models.TreasureBox = cc.Class.extend({
    name: "xs.Models.TreasureBox",
    init: function(TreasureInfo) {
    // source line 10, bytecode pc 60
    (this.type = ((TreasureInfo.type === "dungeon") ? xs.Models.Chapter_Type_Dungeon : xs.Models.Chapter_Type_TreasureBox));
    // source line 11, bytecode pc 75
    (this.treasureName = TreasureInfo.name);
    // source line 12, bytecode pc 112
    (this.pos = xs.Utils.parseIntSafe(TreasureInfo.position));
    // source line 13, bytecode pc 127
    (this.open_need_star = TreasureInfo.open_need_star);
    // source line 14, bytecode pc 142
    (this.hasStar = TreasureInfo.has_star);
    // source line 15, bytecode pc 157
    (this.direction = TreasureInfo.direction);
    // source line 16, bytecode pc 194
    (this.boxStatus = xs.Utils.parseIntSafe(TreasureInfo.can_open));
    // source line 17, bytecode pc 209
    (this.itemId = TreasureInfo.item_id);
    // source line 18, bytecode pc 224
    (this.boxId = TreasureInfo.box_id);
    // source line 21, bytecode pc 226
    return true;
},
    createView: function() {
    var styleModel, i, animation;
    // source line 29, bytecode pc 60
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.itemId));
    // source line 32, bytecode pc 81
    (styleModel = this.obj_item.getStyleModel());
    // source line 48, bytecode pc 104
    (this.boxView = this.createBoxView(styleModel));
    // source line 54, bytecode pc 117
    (this.borderImage = this.boxView);
    // source line 56, bytecode pc 122
    (i = 0);
    while ((i < this.direction.length)) {
        // source line 58, bytecode pc 155
        (animation = this.createRoadAni(this.direction[i]));
        // source line 60, bytecode pc 234
        xs.Utils.Node.attachNodes(this.borderImage, animation.sprite, { desc: "c", offset: animation.offset, sc: false });
        if ((this.getBoxStatus() === xs.TreasureBox_Status_Closed)) {
            // source line 63, bytecode pc 308
            animation.sprite.playAniById("disableAnimation", { loop: true, speed: 4 });
        }
        // source line 56, bytecode pc 323
        i++;
    }
    // source line 68, bytecode pc 440
    xs.Utils.Node.attachNodes(this.borderImage, this.getStarStatusLabel(), { desc: "cb", offset: cc.p(0, 25), sc: false });
    // source line 70, bytecode pc 487
    this.borderImage.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 71, bytecode pc 528
    this.borderImage.setContentSize(cc.size(99, 118));
    // source line 72, bytecode pc 568
    (this.touchBtn = xs.Views.Btn.createInvisibleWithChild(this.borderImage));
    // source line 73, bytecode pc 589
    this.touchBtn.setTouchPriority(-1);
    // source line 74, bytecode pc 609
    this.touchBtn.setZoomOnTouchDown(false);
    // source line 76, bytecode pc 616
    return this.touchBtn;
},
    createBoxView: function(styleModel) {
    var head1Sprite, boxBtm, boxTop, light, particleAction;
    // source line 80, bytecode pc 19
    (head1Sprite = this.createHeadeIcon(styleModel));
    // source line 82, bytecode pc 61
    (boxBtm = xs.Factorys.Sprite.create("DungeonView_baoxiangb", "DungeonView"));
    // source line 83, bytecode pc 103
    (boxTop = xs.Factorys.Sprite.create("DungeonView_baoxiangf", "DungeonView"));
    if ((this.getBoxStatus() === xs.TreasureBox_Status_Closed)) {
        // source line 87, bytecode pc 207
        xs.Utils.Node.attachNodes(boxBtm, head1Sprite, { desc: "c", offset: { x: 0, y: 20 } });
        // source line 88, bytecode pc 259
        xs.Utils.Node.attachNodes(boxBtm, boxTop, { desc: "c" });
    } else {
        if ((this.getBoxStatus() === xs.TreasureBox_Status_Open)) {
            // source line 93, bytecode pc 334
            (light = xs.Factorys.Sprite.create("DungeonView_finish_light", "DungeonView"));
            // source line 94, bytecode pc 410
            xs.Utils.Node.attachNodes(boxBtm, head1Sprite, { desc: "c", offset: { x: 0, y: 20 } });
            // source line 95, bytecode pc 486
            xs.Utils.Node.attachNodes(boxBtm, light, { desc: "c", offset: { x: 0, y: 25 } });
            // source line 96, bytecode pc 538
            xs.Utils.Node.attachNodes(boxBtm, boxTop, { desc: "c" });
            // source line 100, bytecode pc 645
            light.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.FadeIn.create(1), cc.FadeOut.create(1))));
            // source line 104, bytecode pc 681
            (particleAction = xs.Factorys.Particle.create("ParticleTreasureBox"));
            // source line 106, bytecode pc 786
            xs.Utils.Node.attachNodes(boxBtm, particleAction, { desc: "lb", offset: cc.p((boxBtm.getContentSize().width / 2), 30), sc: true });
        } else {
            if ((this.getBoxStatus() === xs.TreasureBox_Status_Getted)) {
                // source line 110, bytecode pc 871
                xs.Utils.Node.attachNodes(boxBtm, boxTop, { desc: "c" });
            }
        }
    }
    // source line 113, bytecode pc 875
    return boxBtm;
},
    createHeadeIcon: function(styleModel) {
    var head1Sp, headBtm, mask;
    // source line 117, bytecode pc 23
    (head1Sp = styleModel.createPartView("head1"));
    // source line 119, bytecode pc 42
    switch (styleModel.getGrade()) {
        case 1:
        // source line 121, bytecode pc 112
        (headBtm = xs.Factorys.Sprite.create("DungeonView_equ_1", "DungeonView"));
        break;
        case 2:
        // source line 124, bytecode pc 159
        (headBtm = xs.Factorys.Sprite.create("DungeonView_equ_2", "DungeonView"));
        break;
        case 3:
        // source line 127, bytecode pc 206
        (headBtm = xs.Factorys.Sprite.create("DungeonView_equ_3", "DungeonView"));
        break;
        case 4:
        // source line 130, bytecode pc 253
        (headBtm = xs.Factorys.Sprite.create("DungeonView_equ_4", "DungeonView"));
        break;
        default:
        // source line 133, bytecode pc 281
        xs.log("getGrade err");
        break;
    }
    if ((this.obj_item.getStyleId() == xs.Const_Item_Style_Item)) {
        // source line 140, bytecode pc 371
        xs.Utils.Node.attachNodes(headBtm, head1Sp, { desc: "c" });
    } else {
        // source line 143, bytecode pc 443
        (head1Sp = xs.Utils.Node.createCircleSprite(head1Sp, "DungeonView_mask", "DungeonView", xs.Cfg.Resource.TreasureBox));
        // source line 144, bytecode pc 485
        (mask = xs.Factorys.Sprite.create("Cmn01_Dungeon_border_mask", "Cmn01"));
        // source line 145, bytecode pc 537
        xs.Utils.Node.attachNodes(headBtm, head1Sp, { desc: "c" });
        // source line 146, bytecode pc 621
        xs.Utils.Node.attachNodes(headBtm, mask, { desc: "c", offset: cc.p(0, 10), sc: false });
    }
    // source line 149, bytecode pc 625
    return headBtm;
},
    createRoadAni: function(dir) {
    var ani, toUp, toDown, toLeft, toRight;
    // source line 154, bytecode pc 21
    (ani = { sprite: null, offset: null });
    // source line 155, bytecode pc 25
    switch (dir) {
        case "1":
        // source line 157, bytecode pc 111
        (toUp = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 158, bytecode pc 129
        toUp.setRotation(-90);
        // source line 159, bytecode pc 147
        toUp.setZOrder(-1);
        // source line 160, bytecode pc 187
        toUp.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 161, bytecode pc 199
        (ani.sprite = toUp);
        // source line 162, bytecode pc 229
        (ani.offset = cc.p(0, -40));
        break;
        case "2":
        // source line 165, bytecode pc 275
        (toDown = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 166, bytecode pc 293
        toDown.setRotation(90);
        // source line 167, bytecode pc 311
        toDown.setZOrder(-1);
        // source line 168, bytecode pc 351
        toDown.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 169, bytecode pc 363
        (ani.sprite = toDown);
        // source line 170, bytecode pc 393
        (ani.offset = cc.p(0, -40));
        break;
        case "3":
        // source line 173, bytecode pc 439
        (toLeft = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 174, bytecode pc 458
        toLeft.setRotation(180);
        // source line 175, bytecode pc 476
        toLeft.setZOrder(-1);
        // source line 176, bytecode pc 516
        toLeft.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 177, bytecode pc 528
        (ani.sprite = toLeft);
        // source line 178, bytecode pc 562
        (ani.offset = cc.p(75, -0));
        break;
        case "4":
        // source line 181, bytecode pc 608
        (toRight = xs.Views.Armature.AutoAudioArmature.create("Arm_DungeonRoad"));
        // source line 182, bytecode pc 626
        toRight.setZOrder(-1);
        // source line 183, bytecode pc 666
        toRight.playAniById("normalAnimation", { loop: false, speed: 1 });
        // source line 184, bytecode pc 678
        (ani.sprite = toRight);
        // source line 185, bytecode pc 712
        (ani.offset = cc.p(75, -0));
        break;
        default:
        break;
    }
    // source line 188, bytecode pc 721
    return ani;
},
    getStarStatusLabel: function() {
    var node, starBg, star, starNum, label;
    // source line 192, bytecode pc 24
    (node = cc.Node.create());
    // source line 193, bytecode pc 66
    (starBg = xs.Factorys.Sprite.create("Cmn01_Dungeon_TreasureBoxStarBg", "Cmn01"));
    // source line 194, bytecode pc 108
    (star = xs.Factorys.Sprite.create("Cmn01_Dungeon_GradeStar", "Cmn01"));
    // source line 195, bytecode pc 129
    star.setScale(0.4);
    // source line 196, bytecode pc 212
    xs.Utils.Node.attachNodes(node, starBg, { desc: "c", offset: cc.p(0, 0), sc: false });
    // source line 197, bytecode pc 296
    xs.Utils.Node.attachNodes(starBg, star, { desc: "cl", offset: cc.p(15, 0), sc: false });
    // source line 199, bytecode pc 319
    (starNum = ((this.hasStar + "/") + this.open_need_star));
    // source line 200, bytecode pc 369
    (label = xs.Views.Label.LabelExt.createWithStyles([ "LS_Nomb1" ]));
    // source line 201, bytecode pc 388
    label.setString(starNum);
    // source line 203, bytecode pc 472
    xs.Utils.Node.attachNodes(starBg, label, { desc: "lb", offset: cc.p(22, 0), sc: false });
    // source line 205, bytecode pc 476
    return node;
},
    getPos: function() {
    // source line 209, bytecode pc 6
    return this.pos;
},
    getType: function() {
    // source line 213, bytecode pc 6
    return this.type;
},
    getBoxStatus: function() {
    // source line 217, bytecode pc 6
    return this.boxStatus;
},
    setBoxStatus: function(status) {
    // source line 221, bytecode pc 9
    (this.boxStatus = status);
},
    isCanIn: function() {
    if ((this.boxStatus == 2)) {
        // source line 226, bytecode pc 15
        return true;
    } else {
        // source line 228, bytecode pc 22
        return false;
    }
},
    getTreasureName: function() {
    // source line 234, bytecode pc 33
    return xs.Tools.Ml.createString(this.treasureName);
},
    getModelName: function() {
    // source line 238, bytecode pc 6
    return this.name;
},
    getItemId: function() {
    // source line 242, bytecode pc 6
    return this.itemId;
},
    getId: function() {
    // source line 246, bytecode pc 6
    return this.boxId;
}
}));
// source line 251, bytecode pc 229
(xs.Models.TreasureBox.create = function(TreasureInfo) {
    var ret;
    // source line 252, bytecode pc 23
    (ret = new xs.Models.TreasureBox());
    if ((ret && ret.init(TreasureInfo))) {
        // source line 254, bytecode pc 59
        return ret;
    }
    // source line 256, bytecode pc 61
    return null;
});
