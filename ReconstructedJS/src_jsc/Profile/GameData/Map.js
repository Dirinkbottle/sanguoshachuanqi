// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Map.js:1
// source line 276, bytecode pc 218
(xs.Profile.GameData.Map = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Map",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 16, bytecode pc 16
    this._super(param);
    // source line 19, bytecode pc 28
    (this.chapters = []);
    // source line 22, bytecode pc 40
    (this.hardChapters = []);
    // source line 25, bytecode pc 52
    (this.curMapId = "");
    // source line 27, bytecode pc 64
    (this.curHardMapId = "");
    // source line 29, bytecode pc 66
    return true;
},
    update: function(mapInfo) {
    var curChapterInfo, i, chapterModel, chapter;
    // source line 34, bytecode pc 9
    (this.mapInfo = mapInfo);
    if ((this.curMapId === "")) {
        // source line 37, bytecode pc 91
        (this.curMapId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerMapStep());
    }
    if ((this.curHardMapId === "")) {
        // source line 41, bytecode pc 173
        (this.curHardMapId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerEliteMapStep());
    }
    if ((this.mapInfo.chapter_list[0].map_type === "1")) {
        // source line 46, bytecode pc 219
        (curChapterInfo = this.mapInfo.chapter_details[0]);
        if (((this.chapters.length === 0) || (this.mapInfo.chapter_list.length !== this.chapters.length))) {
            // source line 49, bytecode pc 303
            (this.chapters = [ this.mapInfo.chapter_list.length ]);
            // source line 50, bytecode pc 308
            (i = 0);
            while ((i < this.mapInfo.chapter_list.length)) {
                // source line 51, bytecode pc 360
                (chapterModel = xs.Models.Chapter.create(this.mapInfo.chapter_list[i]));
                if ((chapterModel.getChapterId() === this.curMapId)) {
                    // source line 53, bytecode pc 405
                    chapterModel.updateDetail(curChapterInfo);
                }
                // source line 55, bytecode pc 419
                (this.chapters[i] = chapterModel);
                // source line 50, bytecode pc 434
                i++;
            }
        }
    } else {
        if ((this.mapInfo.chapter_list[0].map_type === "2")) {
            // source line 60, bytecode pc 511
            (curChapterInfo = this.mapInfo.chapter_details[0]);
            // source line 64, bytecode pc 539
            (this.hardChapters.length = this.mapInfo.chapter_list.length);
            // source line 65, bytecode pc 544
            (i = 0);
            while ((i < this.mapInfo.chapter_list.length)) {
                if ((this.hardChapters[i] && (this.hardChapters[i].getChapterId && (this.hardChapters[i].getChapterId() == this.mapInfo.chapter_list[i].map_id)))) {
                    // source line 71, bytecode pc 652
                    (chapterModel = this.hardChapters[i]);
                    // source line 72, bytecode pc 683
                    chapterModel.updateInfo(this.mapInfo.chapter_list[i]);
                } else {
                    // source line 77, bytecode pc 734
                    (chapterModel = xs.Models.Chapter.create(this.mapInfo.chapter_list[i]));
                    // source line 78, bytecode pc 748
                    (this.hardChapters[i] = chapterModel);
                }
                if ((chapterModel.getChapterId() === this.curHardMapId)) {
                    // source line 84, bytecode pc 793
                    chapterModel.updateDetail(curChapterInfo);
                }
                // source line 65, bytecode pc 808
                i++;
            }
        }
    }
    // source line 91, bytecode pc 839
    (i = 0);
    while ((i < this.mapInfo.chapter_list.length)) {
        if (this.mapInfo.chapter_details[i]) {
            // source line 94, bytecode pc 902
            (chapter = this.getMapObjByMapId(this.mapInfo.chapter_details[i].map_id));
            if (chapter) {
                // source line 97, bytecode pc 941
                chapter.updateDetail(this.mapInfo.chapter_details[i]);
            }
        }
        // source line 91, bytecode pc 956
        i++;
    }
    // source line 102, bytecode pc 984
    return void 0;
},
    getCurMap: function(bIsHard) {
    if (bIsHard) {
        // source line 107, bytecode pc 37
        xs.log_xjf("获取精英mapId", this.curHardMapId);
        // source line 108, bytecode pc 57
        return this.getMapObjByMapId(this.curHardMapId);
    }
    // source line 110, bytecode pc 77
    return this.getMapObjByMapId(this.curMapId);
},
    setCurMapId: function(mapId, bIsHard) {
    if (bIsHard) {
        // source line 115, bytecode pc 34
        xs.log_xjf("设置精英mapId", mapId);
        // source line 116, bytecode pc 44
        (this.curHardMapId = mapId);
    } else {
        // source line 118, bytecode pc 59
        (this.curMapId = mapId);
    }
},
    getCurMapId: function(bIsHard) {
    if (bIsHard) {
        // source line 124, bytecode pc 14
        return this.curHardMapId;
    }
    // source line 126, bytecode pc 21
    return this.curMapId;
},
    getMapObjByMapId: function(map_id) {
    var i;
    // source line 133, bytecode pc 4
    (i = 0);
    while ((i < this.hardChapters.length)) {
        if ((this.hardChapters[i].getChapterId() === map_id)) {
            // source line 135, bytecode pc 51
            return this.hardChapters[i];
        }
        // source line 133, bytecode pc 66
        i++;
    }
    // source line 139, bytecode pc 92
    (i = 0);
    while ((i < this.chapters.length)) {
        if ((this.chapters[i].getChapterId() === map_id)) {
            // source line 141, bytecode pc 139
            return this.chapters[i];
        }
        // source line 139, bytecode pc 154
        i++;
    }
    // source line 145, bytecode pc 177
    return null;
},
    getNextChapterId: function(bIsHard) {
    var i;
    if (bIsHard) {
        // source line 151, bytecode pc 12
        (i = 0);
        while ((i < this.hardChapters.length)) {
            if ((this.curHardMapId === this.hardChapters[i].getChapterId())) {
                if ((i < (this.hardChapters.length - 1))) {
                    if (this.hardChapters[(i + 1)].isCanIn()) {
                        // source line 155, bytecode pc 125
                        return this.hardChapters[(i + 1)].getChapterId();
                    } else {
                        // source line 157, bytecode pc 132
                        return null;
                    }
                } else {
                    // source line 160, bytecode pc 139
                    return null;
                }
            }
            // source line 151, bytecode pc 154
            i++;
        }
    } else {
        // source line 165, bytecode pc 185
        (i = 0);
        while ((i < this.chapters.length)) {
            if ((this.curMapId === this.chapters[i].getChapterId())) {
                if ((i < (this.chapters.length - 1))) {
                    if (this.chapters[(i + 1)].isCanIn()) {
                        // source line 169, bytecode pc 298
                        return this.chapters[(i + 1)].getChapterId();
                    } else {
                        // source line 171, bytecode pc 305
                        return null;
                    }
                } else {
                    // source line 174, bytecode pc 312
                    return null;
                }
            }
            // source line 165, bytecode pc 327
            i++;
        }
    }
},
    getPrevChapterId: function(bIsHard) {
    var i;
    if (bIsHard) {
        // source line 185, bytecode pc 12
        (i = 0);
        while ((i < this.hardChapters.length)) {
            if ((this.curHardMapId === this.hardChapters[i].getChapterId())) {
                if ((i > 0)) {
                    if (this.hardChapters[(i - 1)].isCanIn()) {
                        // source line 189, bytecode pc 113
                        return this.hardChapters[(i - 1)].getChapterId();
                    } else {
                        // source line 191, bytecode pc 120
                        return null;
                    }
                } else {
                    // source line 194, bytecode pc 127
                    return null;
                }
            }
            // source line 185, bytecode pc 142
            i++;
        }
    } else {
        // source line 199, bytecode pc 173
        (i = 0);
        while ((i < this.chapters.length)) {
            if ((this.curMapId === this.chapters[i].getChapterId())) {
                if ((i > 0)) {
                    if (this.chapters[(i - 1)].isCanIn()) {
                        // source line 203, bytecode pc 274
                        return this.chapters[(i - 1)].getChapterId();
                    } else {
                        // source line 205, bytecode pc 281
                        return null;
                    }
                } else {
                    // source line 208, bytecode pc 288
                    return null;
                }
            }
            // source line 199, bytecode pc 303
            i++;
        }
    }
},
    getNewestMapId: function(bIsHard) {
    var mapid, i;
    // source line 218, bytecode pc 8
    (mapid = "");
    if (bIsHard) {
        // source line 220, bytecode pc 21
        (i = 0);
        while ((i < this.hardChapters.length)) {
            if (this.hardChapters[i].isCanIn()) {
                // source line 222, bytecode pc 78
                (mapid = this.hardChapters[i].getChapterId());
            }
            // source line 220, bytecode pc 93
            i++;
        }
    } else {
        // source line 226, bytecode pc 124
        (i = 0);
        while ((i < this.chapters.length)) {
            if (this.chapters[i].isCanIn()) {
                // source line 228, bytecode pc 181
                (mapid = this.chapters[i].getChapterId());
            }
            // source line 226, bytecode pc 196
            i++;
        }
    }
    // source line 233, bytecode pc 221
    return mapid;
},
    getNewestMap: function(bIsHard) {
    // source line 238, bytecode pc 29
    return this.getMapObjByMapId(this.getNewestMapId(bIsHard));
},
    nextIsNewest: function(bIsHard) {
    if ((this.getNextChapterId(bIsHard) === this.getNewestMapId(bIsHard))) {
        // source line 245, bytecode pc 39
        return true;
    }
    // source line 247, bytecode pc 41
    return false;
},
    isStepOver: function(mapId, dungeonId) {
    var i, curDunegeonStep;
    // source line 253, bytecode pc 4
    (i = 0);
    while ((i < this.chapters.length)) {
        if ((this.chapters[i].getChapterId() === mapId)) {
            // source line 255, bytecode pc 102
            (curDunegeonStep = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerDungeonStep());
            if ((curDunegeonStep >= dungeonId)) {
                // source line 257, bytecode pc 116
                return true;
            } else {
                // source line 259, bytecode pc 158
                xs.warn(((("isStepOver error! curDunegeonStep:" + curDunegeonStep) + " dungeonId:") + dungeonId));
                // source line 260, bytecode pc 160
                return false;
            }
        }
        // source line 253, bytecode pc 175
        i++;
    }
    // source line 266, bytecode pc 258
    (curDunegeonStep = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerEliteDungeonStep());
    if ((curDunegeonStep >= dungeonId)) {
        // source line 268, bytecode pc 272
        return true;
    } else {
        // source line 270, bytecode pc 314
        xs.warn(((("isStepOver error! curDunegeonStep:" + curDunegeonStep) + " dungeonId:") + dungeonId));
        // source line 271, bytecode pc 316
        return false;
    }
},
    isEliteMap: function(mapId) {
    var i;
    // source line 277, bytecode pc 4
    (i = 0);
    while ((i < this.chapters.length)) {
        if ((this.chapters[i].getChapterId() === mapId)) {
            // source line 279, bytecode pc 42
            return false;
        }
        // source line 277, bytecode pc 57
        i++;
    }
    // source line 282, bytecode pc 80
    return true;
}
}));
// source line 287, bytecode pc 249
(xs.Profile.GameData.Map.create = function(param) {
    var _str, _cls_name, obj;
    // source line 288, bytecode pc 11
    (_str = param.play_id);
    // source line 289, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Map);
    // source line 290, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 293, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 296, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 298, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 299, bytecode pc 179
        return obj;
    }
    // source line 301, bytecode pc 202
    xs.error("xs.Profile.GameData.Map.create failed");
    // source line 302, bytecode pc 204
    return null;
});
