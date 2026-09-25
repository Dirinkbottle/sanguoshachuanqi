// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AutoMultiKillSelectDialog.js:1
// source line 488, bytecode pc 743
(xs.Views.Dialog.AutoMultiKillSelectDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    var player, itemInfo, _itemUsedTimes, bagItemInfo, selectBg;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 27
    (this.m_challengeNum = 0);
    // source line 18, bytecode pc 35
    (this.m_killNumLabel = null);
    // source line 19, bytecode pc 43
    (this.m_totalChallengePriceLabel = null);
    // source line 20, bytecode pc 51
    (this.m_totalPeachPriceLabel = null);
    // source line 21, bytecode pc 59
    (this.m_confirmBtn = null);
    // source line 22, bytecode pc 67
    (this.m_btnClose = null);
    // source line 23, bytecode pc 75
    (this.m_IsSelect = false);
    // source line 24, bytecode pc 90
    (this.m_hard = data.hard);
    // source line 26, bytecode pc 98
    (this.m_buyChallengeYuanBao = 0);
    // source line 27, bytecode pc 106
    (this.m_hardPiece = 0);
    // source line 29, bytecode pc 114
    (this.m_erroCode = null);
    // source line 31, bytecode pc 129
    (this.dungeonModel = data.model);
    // source line 33, bytecode pc 155
    (this.m_costPower = data.model.getCostPower());
    // source line 34, bytecode pc 181
    (this.m_dungenMaxKill = data.model.getDungeonTimes());
    // source line 36, bytecode pc 227
    (this.m_dungenSubKill = (data.model.getDungeonTimes() - data.model.getPlayedTimes()));
    // source line 37, bytecode pc 239
    (this.m_peachPieceList = []);
    // source line 39, bytecode pc 251
    (this.m_challengeItemPieceList = []);
    // source line 41, bytecode pc 302
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 42, bytecode pc 323
    (this.m_playerYuanBao = player.getPlayerYuanBao());
    // source line 43, bytecode pc 344
    (this.m_playerTiLi = player.getPlayerCurTiLi());
    // source line 45, bytecode pc 398
    (this.m_bigBaoZiNum = xs.Profile.GameData.Mgr.getInstance().Items.getBigBaoZiNum());
    // source line 46, bytecode pc 452
    (this.m_smallBaoZiNum = xs.Profile.GameData.Mgr.getInstance().Items.getSmallBaoZiNum());
    // source line 50, bytecode pc 457
    (itemInfo = null);
    if (this.m_hard) {
        // source line 52, bytecode pc 546
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(xs.Models.ItemID_RecoveryEliteDungeonTimes));
        // source line 53, bytecode pc 567
        (_itemUsedTimes = this.dungeonModel.getRecoveryBuyTimes());
        // source line 54, bytecode pc 579
        (itemInfo.used_num = _itemUsedTimes);
        if ((itemInfo.used_num >= itemInfo.length)) {
            // source line 56, bytecode pc 629
            (itemInfo.price = itemInfo[(itemInfo.used_num - 1)].item_price);
        } else {
            // source line 58, bytecode pc 660
            (itemInfo.price = itemInfo[itemInfo.used_num].item_price);
        }
        // source line 61, bytecode pc 690
        (this.m_hardPiece = parseInt(itemInfo.price));
    } else {
        // source line 63, bytecode pc 773
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(xs.Models.ItemID_RecoveryDungeonTimes));
    }
    // source line 65, bytecode pc 803
    (this.m_tiaozhanUsed_num = parseInt(itemInfo.used_num));
    // source line 66, bytecode pc 833
    (this.m_tiaozhanAll_num = parseInt(itemInfo.all_num));
    // source line 70, bytecode pc 911
    (bagItemInfo = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getItemConditionByItemId(xs.Models.ItemID_PowerWithVipCondition));
    // source line 71, bytecode pc 941
    (this.m_baoziUsed_num = parseInt(bagItemInfo.used_num));
    // source line 72, bytecode pc 971
    (this.m_baoziAll_num = parseInt(bagItemInfo.all_num));
    // source line 73, bytecode pc 1001
    (this.m_baoziEffect = parseInt(bagItemInfo.effect_value));
    // source line 76, bytecode pc 1014
    this.getMaxChallengeNum();
    // source line 80, bytecode pc 1050
    (this.ccbNode = xs.ccb_reader.load("ccb3/autoMultiKillSelectDialog.ccbi", this));
    // source line 81, bytecode pc 1093
    this.ccbNode.setContentSize(cc.size(524, 304));
    // source line 82, bytecode pc 1140
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 85, bytecode pc 1199
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 87, bytecode pc 1247
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 91, bytecode pc 1319
    (this.add1Btn = xs.Utils.replaceButton(this.ccbNode, 7, xs.Views.Button.ChangeNumBtn.create(1)));
    // source line 92, bytecode pc 1357
    this.add1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 95, bytecode pc 1430
    (this.decrease1Btn = xs.Utils.replaceButton(this.ccbNode, 5, xs.Views.Button.ChangeNumBtn.create(2)));
    // source line 96, bytecode pc 1468
    this.decrease1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 99, bytecode pc 1541
    (this.add10Btn = xs.Utils.replaceButton(this.ccbNode, 8, xs.Views.Button.ChangeNumBtn.create(3)));
    // source line 100, bytecode pc 1579
    this.add10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 103, bytecode pc 1652
    (this.decrease10Btn = xs.Utils.replaceButton(this.ccbNode, 4, xs.Views.Button.ChangeNumBtn.create(4)));
    // source line 104, bytecode pc 1690
    this.decrease10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 107, bytecode pc 1763
    (this.MaxBtn = xs.Utils.replaceButton(this.ccbNode, 9, xs.Views.Button.ChangeNumBtn.create(5)));
    // source line 108, bytecode pc 1801
    this.MaxBtn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 110, bytecode pc 1839
    this.m_confirmBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 111, bytecode pc 1877
    this.m_btnClose.setOnClickCallBack(this.onClose.bind(this));
    // source line 115, bytecode pc 1901
    (selectBg = this.ccbNode.getChildByTag(13));
    // source line 116, bytecode pc 1928
    (this.m_selectPic = this.ccbNode.getChildByTag(14));
    // source line 117, bytecode pc 1948
    this.m_selectPic.setVisible(false);
    // source line 118, bytecode pc 1985
    (this.m_selectButton = xs.Views.Btn.createInvisibleWithParent(selectBg));
    // source line 119, bytecode pc 2023
    this.m_selectButton.setOnClickCallBack(this.gouXuanCallBack.bind(this));
    // source line 122, bytecode pc 2047
    this.m_killNumLabel.setString("0");
    // source line 123, bytecode pc 2078
    this.m_totalChallengePriceLabel.setString(("0/" + this.m_playerYuanBao));
    // source line 124, bytecode pc 2109
    this.m_totalPeachPriceLabel.setString(("0/" + this.m_playerYuanBao));
    // source line 127, bytecode pc 2111
    return true;
},
    getMaxChallengeNum: function() {
    if ((this.m_tiaozhanUsed_num == this.m_tiaozhanAll_num)) {
        if (xs.Utils.isEmpty(this.m_erroCode)) {
            // source line 132, bytecode pc 58
            (this.m_erroCode = 1);
        }
        // source line 134, bytecode pc 71
        (this.m_MaxKill = this.m_dungenSubKill);
    } else {
        if ((this.m_baoziUsed_num == this.m_baoziAll_num)) {
            if (xs.Utils.isEmpty(this.m_erroCode)) {
                // source line 137, bytecode pc 136
                (this.m_erroCode = 4);
            }
            // source line 139, bytecode pc 145
            (this.m_MaxKill = 99);
        } else {
            // source line 141, bytecode pc 184
            (this.m_MaxKill = (((this.m_tiaozhanAll_num - this.m_tiaozhanUsed_num) * this.m_dungenMaxKill) + this.m_dungenSubKill));
            if ((this.m_MaxKill > 99)) {
                // source line 144, bytecode pc 207
                (this.m_MaxKill = 99);
            }
        }
    }
},
    onEnter: function() {
    // source line 151, bytecode pc 12
    this._super();
    // source line 152, bytecode pc 25
    this.requestBaoZiPriceData();
},
    onExit: function() {
    // source line 155, bytecode pc 12
    this._super();
},
    requestBaoZiPriceData: function() {
    var listData, _listData, peachPriceData, challengePiceData;
    // source line 159, bytecode pc 34
    (listData = xs.Profile.GameData.BuyPeachPriceData.getPeachPriceList());
    // source line 160, bytecode pc 69
    (_listData = xs.Profile.GameData.BuyPeachPriceData.getChallengePiceList());
    if ((xs.Utils.isEmpty(listData) || xs.Utils.isEmpty(_listData))) {
        // source line 162, bytecode pc 145
        (peachPriceData = []);
        // source line 163, bytecode pc 160
        (challengePiceData = []);
        // source line 200, bytecode pc 265
        xs.Tools.Net.requireMultiKillSpecialInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(jsonObj) {
    var data, i, _data;
    if (jsonObj.return_info) {
        if (jsonObj.return_info.power_price) {
            // source line 171, bytecode pc 47
            (data = jsonObj.return_info.power_price);
            // source line 172, bytecode pc 52
            (i = 0);
            while ((i < data.length)) {
                if (!xs.Utils.isEmpty(data[i].item_price)) {
                    // source line 174, bytecode pc 147
                    peachPriceData.push(parseInt(data[i].item_price));
                }
                // source line 172, bytecode pc 162
                i++;
            }
            if (jsonObj.return_info.ordinary_price) {
                // source line 179, bytecode pc 215
                (_data = jsonObj.return_info.ordinary_price);
                // source line 180, bytecode pc 220
                (i = 0);
                while ((i < _data.length)) {
                    if (!xs.Utils.isEmpty(_data[i].item_price)) {
                        // source line 182, bytecode pc 315
                        challengePiceData.push(parseInt(_data[i].item_price));
                    }
                    // source line 180, bytecode pc 330
                    i++;
                }
                // source line 187, bytecode pc 390
                xs.Profile.GameData.BuyPeachPriceData.setPeachPriceList(peachPriceData);
                // source line 188, bytecode pc 432
                xs.Profile.GameData.BuyPeachPriceData.setChallengePiceList(challengePiceData);
                // source line 189, bytecode pc 448
                (this.m_peachPieceList = peachPriceData);
                // source line 190, bytecode pc 464
                (this.m_challengeItemPieceList = challengePiceData);
                // source line 192, bytecode pc 495
                (this.m_challengeMaxNum = this.getFightNumAndYuanBao(this.m_MaxKill).num);
                // source line 193, bytecode pc 503
                (this.m_challengeMinNum = 0);
            }
        }
    }
}, this);
    } else {
        // source line 204, bytecode pc 280
        (this.m_peachPieceList = listData);
        // source line 205, bytecode pc 290
        (this.m_challengeItemPieceList = _listData);
        // source line 207, bytecode pc 321
        (this.m_challengeMaxNum = this.getFightNumAndYuanBao(this.m_MaxKill).num);
        // source line 208, bytecode pc 329
        (this.m_challengeMinNum = 0);
    }
},
    getBuyChallengeItemPieceByNum: function(num) {
    var num_1, num_2, idx, length;
    if ((num <= this.m_dungenSubKill)) {
        // source line 216, bytecode pc 16
        return 0;
    } else {
        // source line 218, bytecode pc 40
        (num_1 = ((this.m_dungenSubKill + 1) % this.m_dungenMaxKill));
        // source line 219, bytecode pc 54
        (num_2 = (num % this.m_dungenMaxKill));
        if ((num_1 == num_2)) {
            // source line 221, bytecode pc 109
            (idx = (parseInt(((num - this.m_dungenSubKill) / this.m_dungenMaxKill)) + this.m_tiaozhanUsed_num));
            // source line 222, bytecode pc 124
            (length = this.m_challengeItemPieceList.length);
            if ((idx >= length)) {
                // source line 224, bytecode pc 164
                return parseInt(this.m_challengeItemPieceList[(length - 1)]);
            }
            // source line 226, bytecode pc 190
            return parseInt(this.m_challengeItemPieceList[idx]);
        } else {
            // source line 229, bytecode pc 197
            return 0;
        }
    }
},
    getFightNumAndYuanBao: function(num) {
    var totalXuYaoTiLi, totalYuanBao, buyPeachNum, maxNum, bagBaoZiTiLi, totalTiGongTiLi, onceBool, i, buyChallengeItemPiece, _needYuanbao, usedBaoNum, piece, nextYuanbao;
    // source line 234, bytecode pc 4
    (totalXuYaoTiLi = 0);
    // source line 235, bytecode pc 9
    (totalYuanBao = 0);
    // source line 236, bytecode pc 14
    (buyPeachNum = 0);
    // source line 237, bytecode pc 19
    (maxNum = 0);
    // source line 239, bytecode pc 27
    (this.m_buyChallengeYuanBao = 0);
    // source line 241, bytecode pc 57
    (bagBaoZiTiLi = (((this.m_smallBaoZiNum * 5) + (this.m_bigBaoZiNum * 50)) + this.m_playerTiLi));
    // source line 242, bytecode pc 62
    (totalTiGongTiLi = 0);
    if (this.m_IsSelect) {
        // source line 244, bytecode pc 80
        (totalTiGongTiLi = bagBaoZiTiLi);
    } else {
        // source line 246, bytecode pc 95
        (totalTiGongTiLi = this.m_playerTiLi);
    }
    if ((num == 0)) {
        // source line 252, bytecode pc 124
        return { num: 0, yuanBao: 0 }
    }
    // source line 256, bytecode pc 129
    (onceBool = true);
    // source line 258, bytecode pc 134
    (i = 1);
    while ((i <= num)) {
        // source line 260, bytecode pc 145
        (buyChallengeItemPiece = 0);
        if (this.m_hard) {
            if ((i > this.m_dungenSubKill)) {
                if (onceBool) {
                    // source line 264, bytecode pc 189
                    (buyChallengeItemPiece = this.m_hardPiece);
                    // source line 265, bytecode pc 194
                    (onceBool = false);
                }
            }
        } else {
            // source line 269, bytecode pc 219
            (buyChallengeItemPiece = this.getBuyChallengeItemPieceByNum(i));
        }
        // source line 272, bytecode pc 237
        (_needYuanbao = ((this.m_buyChallengeYuanBao + buyChallengeItemPiece) + totalYuanBao));
        if ((_needYuanbao >= this.m_playerYuanBao)) {
            if (xs.Utils.isEmpty(this.m_erroCode)) {
                // source line 275, bytecode pc 294
                (this.m_erroCode = 2);
            }
            break;
        }
        // source line 279, bytecode pc 316
        (this.m_buyChallengeYuanBao = (this.m_buyChallengeYuanBao + buyChallengeItemPiece));
        // source line 281, bytecode pc 330
        (totalXuYaoTiLi = (totalXuYaoTiLi + this.m_costPower));
        if ((totalXuYaoTiLi > this.m_playerTiLi)) {
            if (this.m_IsSelect) {
                if ((totalXuYaoTiLi > bagBaoZiTiLi)) {
                    if ((totalXuYaoTiLi > totalTiGongTiLi)) {
                        // source line 286, bytecode pc 394
                        (usedBaoNum = (this.m_baoziUsed_num + buyPeachNum));
                        if ((usedBaoNum < this.m_baoziAll_num)) {
                            // source line 289, bytecode pc 423
                            (totalTiGongTiLi = (totalTiGongTiLi + this.m_baoziEffect));
                            // source line 290, bytecode pc 443
                            (piece = this.getPeachPiece(usedBaoNum));
                            // source line 291, bytecode pc 454
                            (nextYuanbao = (totalYuanBao + piece));
                            if ((nextYuanbao >= this.m_playerYuanBao)) {
                                if (xs.Utils.isEmpty(this.m_erroCode)) {
                                    // source line 294, bytecode pc 511
                                    (this.m_erroCode = 3);
                                }
                                break;
                            }
                            // source line 298, bytecode pc 531
                            buyPeachNum++;
                            // source line 299, bytecode pc 542
                            (totalYuanBao = (totalYuanBao + piece));
                        } else {
                            if (xs.Utils.isEmpty(this.m_erroCode)) {
                                // source line 303, bytecode pc 589
                                (this.m_erroCode = 4);
                            }
                            break;
                        }
                    }
                }
            } else {
                if ((totalXuYaoTiLi > totalTiGongTiLi)) {
                    // source line 311, bytecode pc 625
                    (usedBaoNum = (this.m_baoziUsed_num + buyPeachNum));
                    if ((usedBaoNum < this.m_baoziAll_num)) {
                        // source line 314, bytecode pc 654
                        (totalTiGongTiLi = (totalTiGongTiLi + this.m_baoziEffect));
                        // source line 315, bytecode pc 674
                        (piece = this.getPeachPiece(usedBaoNum));
                        // source line 316, bytecode pc 685
                        (nextYuanbao = (totalYuanBao + piece));
                        if ((nextYuanbao >= this.m_playerYuanBao)) {
                            if (xs.Utils.isEmpty(this.m_erroCode)) {
                                // source line 319, bytecode pc 742
                                (this.m_erroCode = 3);
                            }
                            break;
                        }
                        // source line 323, bytecode pc 762
                        buyPeachNum++;
                        // source line 324, bytecode pc 773
                        (totalYuanBao = (totalYuanBao + piece));
                    } else {
                        if (xs.Utils.isEmpty(this.m_erroCode)) {
                            // source line 327, bytecode pc 820
                            (this.m_erroCode = 4);
                        }
                        break;
                    }
                }
            }
        }
        // source line 334, bytecode pc 840
        maxNum++;
        // source line 258, bytecode pc 855
        i++;
    }
    // source line 338, bytecode pc 891
    return { num: maxNum, yuanBao: totalYuanBao }
},
    getErroCode: function() {
    if (xs.Utils.isEmpty(this.m_erroCode)) {
        // source line 343, bytecode pc 34
        return void 0;
    }
    // source line 345, bytecode pc 41
    switch (this.m_erroCode) {
        case 1:
        // source line 347, bytecode pc 102
        xs.Views.Mgr.showToastByStringId("AutoMultiKill_erro_1");
        break;
        case 2:
        // source line 350, bytecode pc 140
        xs.Views.Mgr.showToastByStringId("AutoMultiKill_erro_2");
        break;
        case 3:
        // source line 353, bytecode pc 178
        xs.Views.Mgr.showToastByStringId("AutoMultiKill_erro_3");
        break;
        case 4:
        // source line 356, bytecode pc 216
        xs.Views.Mgr.showToastByStringId("AutoMultiKill_erro_4");
        break;
        default:
        // source line 359, bytecode pc 257
        xs.warn((("this.m_erroCode error! " + this.m_erroCode) + " is not found!"));
        break;
    }
},
    getPeachPiece: function(idex) {
    var length;
    // source line 365, bytecode pc 14
    (length = this.m_peachPieceList.length);
    if ((idex >= length)) {
        // source line 368, bytecode pc 54
        return parseInt(this.m_peachPieceList[(length - 1)]);
    }
    // source line 370, bytecode pc 80
    return parseInt(this.m_peachPieceList[idex]);
},
    gouXuanCallBack: function() {
    var totalMoney;
    if (this.m_IsSelect) {
        // source line 374, bytecode pc 30
        this.m_selectPic.setVisible(false);
        // source line 375, bytecode pc 38
        (this.m_IsSelect = false);
    } else {
        // source line 377, bytecode pc 63
        this.m_selectPic.setVisible(true);
        // source line 378, bytecode pc 71
        (this.m_IsSelect = true);
    }
    // source line 381, bytecode pc 79
    (this.m_erroCode = null);
    // source line 382, bytecode pc 92
    this.getMaxChallengeNum();
    // source line 383, bytecode pc 123
    (this.m_challengeMaxNum = this.getFightNumAndYuanBao(this.m_MaxKill).num);
    if ((this.m_challengeNum > this.m_challengeMaxNum)) {
        // source line 385, bytecode pc 154
        (this.m_challengeNum = this.m_challengeMaxNum);
    }
    // source line 388, bytecode pc 182
    (totalMoney = this.getFightNumAndYuanBao(this.m_challengeNum).yuanBao);
    // source line 391, bytecode pc 213
    this.m_killNumLabel.setString((this.m_challengeNum + ""));
    // source line 392, bytecode pc 248
    this.m_totalPeachPriceLabel.setString(((totalMoney + "/") + this.m_playerYuanBao));
    // source line 393, bytecode pc 286
    this.m_totalChallengePriceLabel.setString(((this.m_buyChallengeYuanBao + "/") + this.m_playerYuanBao));
},
    onClose: function() {
    // source line 397, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onClick: function() {
    if ((0 == this.m_challengeNum)) {
        // source line 401, bytecode pc 45
        xs.Views.Mgr.showToastByStringId("AutoMultiKill_5");
        // source line 402, bytecode pc 47
        return void 0;
    }
    // source line 425, bytecode pc 214
    xs.Tools.Net.requireMultiKillSpecial({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    dungeon_id: this.dungeonModel.getId(),
    fight_num: this.m_challengeNum,
    eat_baoZi: (this.m_IsSelect ? 1 : 0),
    ignoreRandEvent: true
}, function(jsonObj, _modelMap) {
    // source line 414, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 416, bytecode pc 63
    xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
    // source line 418, bytecode pc 120
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 423, bytecode pc 223
    xs.Views.Mgr.showDialogByName("MulitiFightDialog", {
    mulitiFightModel: xs.Models.MulitiFightInfo.create(jsonObj),
    dungeonName: this.dungeonModel.getName(),
    showListDialog: true
});
}, this);
},
    onChgNum: function(sender) {
    var totalMoney;
    // source line 429, bytecode pc 3
    switch (sender) {
        case this.add1Btn:
        if ((this.m_challengeNum < this.m_challengeMaxNum)) {
            // source line 432, bytecode pc 96
            (this.m_challengeNum = (this.m_challengeNum + 1));
        }
        break;
        case this.decrease1Btn:
        if ((this.m_challengeNum > this.m_challengeMinNum)) {
            // source line 437, bytecode pc 134
            (this.m_challengeNum = (this.m_challengeNum - 1));
        }
        break;
        case this.add10Btn:
        // source line 441, bytecode pc 193
        (((this.m_challengeNum + 10) < this.m_challengeMaxNum) ? (this.m_challengeNum = (this.m_challengeNum + 10)) : (this.m_challengeNum = this.m_challengeMaxNum));
        break;
        case this.decrease10Btn:
        // source line 446, bytecode pc 252
        (((this.m_challengeNum - 10) > this.m_challengeMinNum) ? (this.m_challengeNum = (this.m_challengeNum - 10)) : (this.m_challengeNum = this.m_challengeMinNum));
        break;
        case this.MaxBtn:
        // source line 449, bytecode pc 270
        (this.m_challengeNum = this.m_challengeMaxNum);
        break;
        default:
        break;
    }
    if ((this.m_challengeNum == this.m_challengeMaxNum)) {
        // source line 453, bytecode pc 306
        this.getErroCode();
    }
    // source line 455, bytecode pc 337
    this.m_killNumLabel.setString((this.m_challengeNum + ""));
    // source line 456, bytecode pc 365
    (totalMoney = this.getFightNumAndYuanBao(this.m_challengeNum).yuanBao);
    // source line 457, bytecode pc 400
    this.m_totalPeachPriceLabel.setString(((totalMoney + "/") + this.m_playerYuanBao));
    // source line 458, bytecode pc 438
    this.m_totalChallengePriceLabel.setString(((this.m_buyChallengeYuanBao + "/") + this.m_playerYuanBao));
},
    setBaseTouchPriority: function(priority) {
    // source line 462, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 463, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 465, bytecode pc 56
    this.add1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 466, bytecode pc 83
    this.decrease1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 467, bytecode pc 110
    this.add10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 468, bytecode pc 137
    this.decrease10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 469, bytecode pc 164
    this.MaxBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 471, bytecode pc 191
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 472, bytecode pc 218
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 473, bytecode pc 245
    this.m_selectButton.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "m_titleLabel", id: "LS_popUI1", stringId: "AutoMultiKill_1" },
            { tag: 3, type: "ls", name: "m_tipLabel", id: "LS_popUI2", stringId: "AutoMultiKill_2" },
            { tag: 6, type: "ls", name: "m_killNumLabel", id: "LS_popUI4" },
            { tag: 10, type: "ls", name: "m_xiaoHaoLabel", id: "LS_popUI2", stringId: "AutoMultiKill_3" },
            { tag: 15, type: "ls", name: "m_youXianLabel", id: "LS_popUI2", stringId: "AutoMultiKill_7" },
            { tag: 12, type: "ls", name: "m_totalChallengePriceLabel", id: "LS_liebiaoInf2" },
            { tag: 21, type: "ls", name: "m_taoziXiaohao", id: "LS_popUI2", stringId: "AutoMultiKill_8" },
            { tag: 23, type: "ls", name: "m_totalPeachPriceLabel", id: "LS_liebiaoInf2" },
            { tag: 16, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" },
            { tag: 2, type: "btn", name: "m_btnClose", id: "Btn_Close" }
        ]
    }
}));
// source line 493, bytecode pc 774
(xs.Views.Dialog.AutoMultiKillSelectDialog.create = function(data) {
    var ret;
    // source line 494, bytecode pc 28
    (ret = new xs.Views.Dialog.AutoMultiKillSelectDialog());
    if ((ret && ret.init(data))) {
        // source line 496, bytecode pc 64
        return ret;
    }
    // source line 498, bytecode pc 66
    return null;
});
// source line 503, bytecode pc 854
xs.Views.Mgr.registerDialog("AutoMultiKillSelectDialog", { "class": xs.Views.Dialog.AutoMultiKillSelectDialog, styleType: xs.Constant_DlgStyleType_Small });
