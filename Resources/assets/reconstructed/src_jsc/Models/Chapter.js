// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Chapter.js:1
// source line 6, bytecode pc 16
(xs.Models.Chapter_Type_Dungeon = 1);
// source line 7, bytecode pc 34
(xs.Models.Chapter_Type_TreasureBox = 2);
// source line 139, bytecode pc 298
(xs.Models.Chapter = cc.Class.extend({
    name: "xs.Models.Chapter",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function(chapterInfo) {
    // source line 16, bytecode pc 14
    (this.chapter_id = chapterInfo.map_id);
    // source line 17, bytecode pc 29
    (this.chapter_name = chapterInfo.map_name);
    // source line 18, bytecode pc 44
    (this.canShow = chapterInfo.can_show);
    // source line 19, bytecode pc 59
    (this.canIn = chapterInfo.can_in);
    // source line 22, bytecode pc 71
    (this.dungeons = []);
    // source line 24, bytecode pc 73
    return true;
},
    updateInfo: function(chapterInfo) {
    // source line 28, bytecode pc 14
    (this.canShow = chapterInfo.can_show);
    // source line 29, bytecode pc 29
    (this.canIn = chapterInfo.can_in);
},
    updateDetail: function(chapterInfo) {
    // source line 33, bytecode pc 14
    (this.chapter_id = chapterInfo.map_id);
    // source line 34, bytecode pc 29
    (this.chapter_name = chapterInfo.map_name);
    // source line 35, bytecode pc 44
    (this.chapter_bg = chapterInfo.map_bgimage);
    // source line 36, bytecode pc 59
    (this.canIn = chapterInfo.can_in);
    // source line 39, bytecode pc 81
    this.initDungeons(chapterInfo.dungeon_info);
    // source line 42, bytecode pc 89
    (this.buffed = true);
},
    initDungeons: function(dungeonsInfo) {
    var i;
    // source line 48, bytecode pc 11
    (this.dungeons = []);
    // source line 49, bytecode pc 16
    (i = 0);
    while ((i < dungeonsInfo.length)) {
        if ((dungeonsInfo[i].type === "dungeon")) {
            // source line 51, bytecode pc 98
            this.dungeons.push(xs.Models.Dungeon.create(dungeonsInfo[i]));
        } else {
            if ((dungeonsInfo[i].type === "box")) {
                // source line 54, bytecode pc 179
                this.dungeons.push(xs.Models.TreasureBox.create(dungeonsInfo[i]));
            } else {
                // source line 57, bytecode pc 211
                this.error("type err", dungeonsInfo[i]);
            }
        }
        // source line 49, bytecode pc 226
        i++;
    }
},
    getDungeons: function() {
    // source line 64, bytecode pc 6
    return this.dungeons;
},
    getDungeonByPos: function(pos) {
    var i;
    // source line 69, bytecode pc 4
    (i = 0);
    while ((i < this.dungeons.length)) {
        if ((this.dungeons[i].getPos() === pos)) {
            // source line 71, bytecode pc 51
            return this.dungeons[i];
        }
        // source line 69, bytecode pc 66
        i++;
    }
    // source line 75, bytecode pc 89
    return null;
},
    getChapterId: function() {
    // source line 79, bytecode pc 6
    return this.chapter_id;
},
    getName: function() {
    // source line 83, bytecode pc 33
    return xs.Tools.Ml.createString(this.chapter_name);
},
    isCanShow: function() {
    // source line 87, bytecode pc 6
    return this.canShow;
},
    isCanIn: function() {
    // source line 91, bytecode pc 6
    return this.canIn;
},
    isBuffer: function() {
    // source line 95, bytecode pc 6
    return this.buffed;
},
    getNextDungeon: function(dungeonPos, direction) {
    var pos;
    if ((direction === 3)) {
        // source line 101, bytecode pc 20
        (pos = (dungeonPos + 4));
        // source line 102, bytecode pc 37
        return this.getDungeonByPos(pos);
    } else {
        if ((direction === 1)) {
            // source line 104, bytecode pc 61
            (pos = (dungeonPos + 1));
            // source line 105, bytecode pc 78
            return this.getDungeonByPos(pos);
        } else {
            // source line 107, bytecode pc 85
            return null;
        }
    }
},
    getNextDungeonsById: function(dungeonId) {
    var curDungeon;
    // source line 114, bytecode pc 19
    (curDungeon = this.getDungeonById(dungeonId));
    // source line 115, bytecode pc 34
    return curDungeon.getUnlockedIds();
},
    getChapterBg: function() {
    var resModel;
    // source line 120, bytecode pc 47
    (resModel = xs.Models.Resource.createWithBase(this.chapter_bg, xs.Constant_ResType_Map));
    // source line 121, bytecode pc 62
    return resModel.createBgSprite_Map();
},
    getChapterBgId: function() {
    // source line 125, bytecode pc 6
    return this.chapter_bg;
},
    getDungeonById: function(dungeonId) {
    var i;
    // source line 129, bytecode pc 4
    (i = 0);
    while ((i < this.dungeons.length)) {
        if ((this.dungeons[i].getId() === dungeonId)) {
            // source line 131, bytecode pc 51
            return this.dungeons[i];
        }
        // source line 129, bytecode pc 66
        i++;
    }
    // source line 135, bytecode pc 89
    return null;
},
    getBossDungeonId: function() {
    var maxDungeon, i, id;
    // source line 140, bytecode pc 4
    (maxDungeon = 0);
    // source line 141, bytecode pc 9
    (i = 0);
    while ((i < this.dungeons.length)) {
        // source line 142, bytecode pc 55
        (id = parseInt(this.dungeons[i].getId()));
        if (((id > maxDungeon) && (this.dungeons[i].getType() === xs.Models.Chapter_Type_Dungeon))) {
            // source line 144, bytecode pc 117
            (maxDungeon = id);
        }
        // source line 141, bytecode pc 132
        i++;
    }
    // source line 147, bytecode pc 180
    xs.log(("getBossDungeonId:" + maxDungeon));
    // source line 148, bytecode pc 190
    return (maxDungeon + "");
}
}));
// source line 152, bytecode pc 324
(xs.Models.Chapter.create = function(chapterInfo) {
    var ret;
    // source line 153, bytecode pc 23
    (ret = new xs.Models.Chapter());
    if ((ret && ret.init(chapterInfo))) {
        // source line 155, bytecode pc 59
        return ret;
    }
});
