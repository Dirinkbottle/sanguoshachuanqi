// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Card.js:1
// source line 600, bytecode pc 182
(xs.Tools.Card = (xs.Tools.Card || {
    name: "tools.card",
    createPartView_Cmn: function(model, partName) {
    var _ret, _grade;
    // source line 15, bytecode pc 4
    (_ret = null);
    if ((partName === "head2")) {
        // source line 21, bytecode pc 36
        (_grade = model.getGrade());
        if ((_grade === 0)) {
            // source line 24, bytecode pc 69
            xs.warn("_grade is 0 error !! 0 -> 1");
            // source line 26, bytecode pc 74
            (_grade = 1);
        }
        // source line 32, bytecode pc 179
        (_ret = xs.Factorys.Sprite.create(xs.Cfg.Resource.Path.Head2.key, xs.Cfg.Resource.Path.Head2.area, [ _grade ]));
    } else {
        // source line 36, bytecode pc 211
        this.assert(_ret, "createPartView_Cmn partName err:", partName);
    }
    // source line 39, bytecode pc 238
    this.assert(_ret, "createPartView_Cmn _ret  err:", partName);
    // source line 41, bytecode pc 242
    return _ret;
},
    createPartView_General: function(model, partName) {
    var _type, _quality, _paintId, _ret, _frameName, headSprite, _strName, _file, _filePath;
    // source line 46, bytecode pc 22
    this.markFuncBegin("createPartView_General", partName);
    if (!partName) {
        // source line 49, bytecode pc 56
        this.error("createPartView", "partName is null");
        // source line 50, bytecode pc 58
        return null;
    }
    // source line 53, bytecode pc 76
    (_type = model.getObrit());
    // source line 54, bytecode pc 94
    (_quality = model.getGrade());
    // source line 55, bytecode pc 123
    (_paintId = model.getRes().getPaintingId());
    // source line 57, bytecode pc 128
    (_ret = null);
    if ((partName === "head0")) {
        if ((_type === 0)) {
            // source line 61, bytecode pc 175
            xs.warn("_type is 0 error !! 0 -> 1");
            // source line 63, bytecode pc 180
            (_type = 1);
        }
        // source line 65, bytecode pc 224
        (_frameName = ((xs.Cfg.Resource.Path.Head0.framename_pre + "_") + _type));
        // source line 66, bytecode pc 264
        (_ret = xs.Factorys.Sprite.create(_frameName, "Cmn02"));
    } else {
        if ((partName === "head1")) {
            // source line 69, bytecode pc 312
            (_ret = model.getRes().createHeadSprite());
        } else {
            if ((partName === "head2")) {
                // source line 72, bytecode pc 355
                (_ret = this.createPartView_Cmn(model, partName));
            } else {
                if ((partName === "circleHead")) {
                    // source line 75, bytecode pc 403
                    (headSprite = model.getRes().createChapterHeadSprite());
                    // source line 77, bytecode pc 437
                    (_ret = xs.Utils.Node.createCircleSprite(headSprite));
                } else {
                    if ((partName === "normalskill")) {
                        // source line 80, bytecode pc 480
                        (_ret = model.createPartView("head1"));
                    } else {
                        if ((partName === "name")) {
                            // source line 83, bytecode pc 517
                            (_strName = model.getNameString());
                            if ((xs.dog_check === true)) {
                                // source line 86, bytecode pc 570
                                (_ret = xs.Factorys.Label.createByStyleId("Default"));
                            } else {
                                // source line 89, bytecode pc 611
                                (_ret = xs.Factorys.Label.createByStyleId("LS_wujiangName2"));
                            }
                            // source line 92, bytecode pc 641
                            _ret.setString(_strName.toWordBreak());
                        } else {
                            if ((partName.indexOf("card") >= 0)) {
                                // source line 97, bytecode pc 678
                                (_file = null);
                                if ((partName === "card0")) {
                                    // source line 100, bytecode pc 760
                                    (_file = xs.Tools.Card.getImgFileName(partName, _paintId, model.getObrit(), model.getGrade()));
                                    // source line 101, bytecode pc 794
                                    (_ret = xs.Factorys.Sprite.createWithFileName(_file));
                                } else {
                                    if ((partName === "v3_card1")) {
                                        // source line 105, bytecode pc 879
                                        (_filePath = ((xs.Cfg.Resource.Path.Card1_V3.file_pre + model.getRes().getPaintingId()) + ".png"));
                                        // source line 107, bytecode pc 913
                                        (_ret = xs.Factorys.Sprite.createWithFileName(_filePath));
                                    } else {
                                        if ((partName === "card_chart")) {
                                            // source line 111, bytecode pc 961
                                            (_ret = model.getRes().createCard_LadderChart());
                                        } else {
                                            // source line 114, bytecode pc 985
                                            this.error("1231");
                                        }
                                    }
                                }
                            } else {
                                if ((partName === "icon_quality")) {
                                    // source line 118, bytecode pc 1059
                                    (_ret = xs.Factorys.Sprite.create("Cmn02_quality", "Cmn02", [ _quality ]));
                                } else {
                                    if ((partName === "icon_country")) {
                                        // source line 121, bytecode pc 1124
                                        (_ret = xs.Factorys.Sprite.create(("Cmn02_country_" + _type), "Cmn02"));
                                    } else {
                                        // source line 124, bytecode pc 1154
                                        this.error("partName err", partName, this);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 128, bytecode pc 1196
    this.assert(_ret, "createPartView _ret  err:", partName, model.getRes());
    // source line 130, bytecode pc 1223
    this.markFuncEnd("createPartView_General", (partName + _ret));
    // source line 132, bytecode pc 1227
    return _ret;
},
    createPartView_Equ: function(model, partName) {
    var _quality, _paintId, _ret, _file, _strName;
    if (!partName) {
        // source line 140, bytecode pc 33
        this.error("createPartView", "partName is null");
        // source line 141, bytecode pc 35
        return null;
    }
    // source line 144, bytecode pc 53
    (_quality = model.getGrade());
    // source line 145, bytecode pc 82
    (_paintId = model.getRes().getPaintingId());
    // source line 147, bytecode pc 87
    (_ret = null);
    // source line 148, bytecode pc 92
    (_file = null);
    if ((partName === "head0")) {
        // source line 151, bytecode pc 158
        return xs.Factorys.Sprite.create("Cmn02_equ_head0", "Cmn02", [ _quality ]);
    } else {
        if ((partName === "head1")) {
            // source line 155, bytecode pc 203
            return model.getRes().createHeadSprite();
        } else {
            if ((partName === "head2")) {
                // source line 159, bytecode pc 246
                (_ret = this.createPartView_Cmn(model, partName));
            } else {
                if ((partName === "name")) {
                    // source line 163, bytecode pc 283
                    (_strName = model.getNameString());
                    if ((xs.dog_check === true)) {
                        // source line 166, bytecode pc 336
                        (_ret = xs.Factorys.Label.createByStyleId("Default"));
                    } else {
                        // source line 169, bytecode pc 377
                        (_ret = xs.Factorys.Label.createByStyleId("LS_zhuangbeiName"));
                    }
                    // source line 172, bytecode pc 396
                    _ret.setString(_strName);
                    // source line 173, bytecode pc 400
                    return _ret;
                } else {
                    if ((partName === "equ0")) {
                        // source line 179, bytecode pc 481
                        return xs.Factorys.Sprite.createWithFileName(((_quality == xs.Constant_Grade_God) ? "equ_cmn/Cmn02_equ0_god.png" : "equ_cmn/Cmn02_equ0_other.png"));
                    } else {
                        if ((partName === "equ1")) {
                            // source line 183, bytecode pc 568
                            (_file = xs.Tools.Card.getImgFileName(partName, _paintId, model.getObrit(), model.getGrade()));
                            // source line 184, bytecode pc 602
                            (_ret = xs.Factorys.Sprite.createWithFileName(_file));
                        } else {
                            if ((partName === "equ2")) {
                                // source line 190, bytecode pc 689
                                return xs.Factorys.Sprite.createWithFileName(((xs.Cfg.Resource.Path.Equ2.file_pre + _quality) + ".png"));
                            } else {
                                if ((partName === "icon_quality")) {
                                    // source line 194, bytecode pc 760
                                    return xs.Factorys.Sprite.create("Cmn02_quality", "Cmn02", [ _quality ]);
                                } else {
                                    if ((partName === "pos_type")) {
                                        // source line 198, bytecode pc 842
                                        return xs.Factorys.Sprite.create("card_equ_pos", "Cmn02", [ model.getPosType() ]);
                                    } else {
                                        // source line 201, bytecode pc 874
                                        this.error("partName err", partName, model);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 204, bytecode pc 920
    xs.assert(_ret, "createPartView _ret  err:", partName, model.getRes());
    // source line 206, bytecode pc 924
    return _ret;
},
    createPartView_Skill: function(model, partName) {
    var _paintId, _file;
    if ((partName === "equ1")) {
        // source line 214, bytecode pc 42
        (_paintId = model.getRes().getPaintingId());
        // source line 216, bytecode pc 112
        (_file = xs.Tools.Card.getImgFileName("skill1", _paintId, model.getObrit(), model.getGrade()));
        // source line 217, bytecode pc 143
        return xs.Factorys.Sprite.createWithFileName(_file);
    } else {
        // source line 220, bytecode pc 169
        return this.createPartView_Equ(model, partName);
    }
},
    createPartView_PlayerAttr: function(model, partName) {
    if ((partName === "head1")) {
        // source line 230, bytecode pc 50
        switch (xs.Utils.parseIntSafe(model.getId())) {
            case xs.Models.AddPlayerInfoType_TiLi:
            // source line 233, bytecode pc 334
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_TiLi", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_JingLi:
            // source line 238, bytecode pc 378
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_JingLi", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_Battle:
            // source line 242, bytecode pc 422
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_Battle", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_TongQian:
            // source line 246, bytecode pc 466
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_TongQian", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_YuanBao:
            // source line 251, bytecode pc 510
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_YuanBao", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_TeamPoint:
            // source line 255, bytecode pc 554
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_TeamPoint", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_Exp:
            // source line 258, bytecode pc 598
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_Exp", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_UnionScore:
            // source line 262, bytecode pc 642
            return xs.Factorys.Sprite.create("Cmn02_IconPlayerAttr_TiLi", "Cmn02");
            break;
            case xs.Models.AddPlayerInfoType_Salary:
            case xs.Models.AddPlayerInfoType_Fragment:
            case xs.Models.AddPlayerInfoType_GoldSoul:
            case xs.Models.AddPlayerInfoType_SilverSoul:
            default:
            // source line 272, bytecode pc 681
            this.error(("createPartView_PlayerAttr:" + model.getId()));
            // source line 273, bytecode pc 720
            return xs.Factorys.Sprite.create("icon_yuanBao", "Cmn01");
            break;
        }
    } else {
        // source line 280, bytecode pc 751
        return this.createPartView_Item(model, partName);
    }
},
    createPartView_Item: function(model, partName) {
    var _ret, _quality, _frameName, _fileName;
    if (!partName) {
        // source line 289, bytecode pc 33
        this.error("createPartView", "partName is null");
        // source line 290, bytecode pc 35
        return null;
    }
    // source line 293, bytecode pc 40
    (_ret = null);
    // source line 295, bytecode pc 58
    (_quality = model.getGrade());
    // source line 296, bytecode pc 87
    xs.assert((_quality != 0), "Grade is 0");
    if ((partName === "head0")) {
        // source line 300, bytecode pc 145
        (_frameName = ((xs.Cfg.Resource.Path.Head0.framename_pre + "_") + _quality));
        // source line 301, bytecode pc 185
        (_ret = xs.Factorys.Sprite.create(_frameName, "Cmn02"));
    } else {
        if ((partName === "head1")) {
            // source line 305, bytecode pc 270
            (_fileName = ((xs.Cfg.Resource.Path.Item1.file_pre + model.getRes().getPaintingId()) + ".png"));
            // source line 306, bytecode pc 304
            (_ret = xs.Factorys.Sprite.createWithFileName(_fileName));
        } else {
            if ((partName === "head2")) {
                // source line 309, bytecode pc 347
                (_ret = this.createPartView_Cmn(model, partName));
            } else {
                if ((partName === "Equ_Head0")) {
                    // source line 312, bytecode pc 421
                    (_ret = xs.Factorys.Sprite.create("Cmn02_equ_head0", "Cmn02", [ _quality ]));
                } else {
                    // source line 315, bytecode pc 453
                    this.error("partName err", partName, model);
                }
            }
        }
    }
    // source line 318, bytecode pc 484
    xs.assert(_ret, "createPartView _ret  err:", partName);
    // source line 320, bytecode pc 488
    return _ret;
},
    createPartView_Gems: function(model, partName) {
    var _ret, _quality, _fileName;
    if (!partName) {
        // source line 328, bytecode pc 33
        this.error("createPartView", "partName is null");
        // source line 329, bytecode pc 35
        return null;
    }
    // source line 332, bytecode pc 40
    (_ret = null);
    // source line 334, bytecode pc 58
    (_quality = model.getGrade());
    if ((partName === "head0")) {
        // source line 339, bytecode pc 127
        (_ret = xs.Factorys.Sprite.create("Cmn02_equ_head0", "Cmn02", [ _quality ]));
    } else {
        if ((partName === "head1")) {
            // source line 344, bytecode pc 212
            (_fileName = ((xs.Cfg.Resource.Path.Item1.file_pre + model.getRes().getPaintingId()) + ".png"));
            // source line 345, bytecode pc 246
            (_ret = xs.Factorys.Sprite.createWithFileName(_fileName));
        } else {
            if ((partName === "head2")) {
                // source line 348, bytecode pc 289
                (_ret = this.createPartView_Cmn(model, partName));
            } else {
                // source line 351, bytecode pc 321
                this.error("partName err", partName, model);
            }
        }
    }
    // source line 354, bytecode pc 352
    xs.assert(_ret, "createPartView _ret  err:", partName);
    // source line 356, bytecode pc 356
    return _ret;
},
    createPartView_Goddess: function(model, partName) {
    var _ret, _quality, _strName, _filePath;
    // source line 360, bytecode pc 22
    this.markFuncBegin("createPartView_General", partName);
    if (!partName) {
        // source line 363, bytecode pc 56
        this.error("createPartView", "partName is null");
        // source line 364, bytecode pc 58
        return null;
    }
    // source line 367, bytecode pc 63
    (_ret = null);
    // source line 369, bytecode pc 81
    (_quality = model.getGrade());
    if ((partName === "head0")) {
        // source line 372, bytecode pc 149
        (_ret = xs.Factorys.Sprite.create("Cmn02_equ_head0", "Cmn02", [ 4 ]));
    } else {
        if ((partName === "head1")) {
            // source line 374, bytecode pc 197
            (_ret = model.getRes().createHeadSprite());
        } else {
            if ((partName === "head2")) {
                // source line 379, bytecode pc 319
                (_ret = xs.Factorys.Sprite.create(xs.Cfg.Resource.Path.Head2.key, xs.Cfg.Resource.Path.Head2.area, [ 1 ]));
            } else {
                if ((partName === "name")) {
                    // source line 382, bytecode pc 356
                    (_strName = model.getNameString());
                    if ((xs.dog_check === true)) {
                        // source line 385, bytecode pc 409
                        (_ret = xs.Factorys.Label.createByStyleId("Default"));
                    } else {
                        // source line 388, bytecode pc 450
                        (_ret = xs.Factorys.Label.createByStyleId("LS_wujiangName2"));
                    }
                    // source line 391, bytecode pc 480
                    _ret.setString(_strName.toWordBreak());
                } else {
                    if ((partName === "v3_card1")) {
                        // source line 394, bytecode pc 565
                        (_filePath = ((xs.Cfg.Resource.Path.Card1_V3.file_pre + model.getRes().getPaintingId()) + ".png"));
                        // source line 395, bytecode pc 599
                        (_ret = xs.Factorys.Sprite.createWithFileName(_filePath));
                    } else {
                        if ((partName === "Equ_Head0")) {
                            // source line 399, bytecode pc 673
                            (_ret = xs.Factorys.Sprite.create("Cmn02_equ_head0", "Cmn02", [ _quality ]));
                        } else {
                            if ((partName === "icon_country")) {
                                // source line 401, bytecode pc 734
                                (_ret = xs.Factorys.Sprite.create("Cmn02_country_5", "Cmn02"));
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 404, bytecode pc 776
    this.assert(_ret, "createPartView _ret  err:", partName, model.getRes());
    // source line 406, bytecode pc 803
    this.markFuncEnd("createPartView_General", (partName + _ret));
    // source line 408, bytecode pc 807
    return _ret;
},
    getImgFileName: function(partName, paintingId, obrit, quality) {
    var _type, _quality, _file;
    // source line 413, bytecode pc 6
    (_type = obrit);
    // source line 416, bytecode pc 13
    (_quality = quality);
    if ((partName === "card0")) {
        // source line 420, bytecode pc 81
        (_file = (((xs.Cfg.Resource.Path.Card0.file_pre + "_") + _type) + ".png"));
    } else {
        if ((partName === "equ1")) {
            // source line 423, bytecode pc 144
            (_file = ((xs.Cfg.Resource.Path.Equ1.file_pre + paintingId) + ".png"));
        } else {
            if ((partName === "skill1")) {
                // source line 426, bytecode pc 207
                (_file = ((xs.Cfg.Resource.Path.Skill1.file_pre + paintingId) + ".png"));
            } else {
                // source line 429, bytecode pc 241
                xs.assert(false, "partName err", partName);
            }
        }
    }
    // source line 432, bytecode pc 245
    return _file;
},
    createHeadView: function(model, type, type_sub) {
    var _ret;
    // source line 472, bytecode pc 7
    switch (type) {
        case xs.Const_Item_Style_General:
        case xs.Const_Item_Style_Equ:
        case xs.Const_Item_Style_Skill:
        case xs.Const_Item_Style_GeneralSoul:
        case xs.Const_Item_Style_SkillPiece:
        case xs.Const_Item_Style_EquPiece:
        case xs.Const_Item_Style_Goddess:
        case xs.Const_Item_Style_GoddessSurface:
        // source line 481, bytecode pc 200
        (_ret = xs.Tools.Card.createHeadView_General_Equ_Skill(model, type));
        break;
        case xs.Const_Item_Style_Item:
        // source line 484, bytecode pc 239
        (_ret = xs.Tools.Card.createHeadView_Item(model));
        break;
        case xs.Constant_ObjType_PlayerAttr:
        default:
        // source line 498, bytecode pc 271
        xs.error("createHeadView err", type);
        break;
    }
    // source line 501, bytecode pc 280
    return _ret;
},
    createHeadView_General_Equ_Skill: function(model, type) {
    var _func, _bgSprite0, _bgSprite1, _bgSprite2, _view_lt, _offset;
    // source line 508, bytecode pc 7
    switch (type) {
        case xs.Const_Item_Style_GeneralSoul:
        case xs.Const_Item_Style_General:
        // source line 511, bytecode pc 156
        (_func = xs.Tools.Card.createPartView_General);
        break;
        case xs.Const_Item_Style_Equ:
        case xs.Const_Item_Style_EquPiece:
        // source line 515, bytecode pc 185
        (_func = xs.Tools.Card.createPartView_Equ);
        break;
        case xs.Const_Item_Style_Skill:
        case xs.Const_Item_Style_SkillPiece:
        // source line 519, bytecode pc 214
        (_func = xs.Tools.Card.createPartView_Skill);
        break;
        case xs.Const_Item_Style_Gems:
        // source line 522, bytecode pc 243
        (_func = xs.Tools.Card.createPartView_Gems);
        break;
        case xs.Const_Item_Style_Goddess:
        // source line 525, bytecode pc 272
        (_func = xs.Tools.Card.createPartView_Goddess);
        break;
        default:
        break;
    }
    // source line 529, bytecode pc 319
    (_bgSprite0 = _func.apply(this, [ model, "head0" ]));
    // source line 530, bytecode pc 361
    (_bgSprite1 = _func.apply(this, [ model, "head1" ]));
    // source line 531, bytecode pc 403
    (_bgSprite2 = _func.apply(this, [ model, "head2" ]));
    // source line 534, bytecode pc 429
    _bgSprite0.setAnchorPoint(xs.ap_c);
    // source line 535, bytecode pc 455
    _bgSprite1.setAnchorPoint(xs.ap_c);
    // source line 536, bytecode pc 481
    _bgSprite2.setAnchorPoint(xs.ap_c);
    // source line 538, bytecode pc 533
    xs.Utils.Node.attachNodes(_bgSprite1, _bgSprite0, { base: "c" });
    // source line 539, bytecode pc 609
    xs.Utils.Node.attachNodes(_bgSprite1, _bgSprite2, { base: "c", offset: { x: 1, y: -2 } });
    // source line 541, bytecode pc 627
    _bgSprite0.setZOrder(-1);
    // source line 542, bytecode pc 644
    _bgSprite2.setZOrder(1);
    // source line 544, bytecode pc 661
    _bgSprite0.setCascadeOpacityEnabled(true);
    // source line 545, bytecode pc 678
    _bgSprite1.setCascadeOpacityEnabled(true);
    // source line 546, bytecode pc 695
    _bgSprite2.setCascadeOpacityEnabled(true);
    // source line 547, bytecode pc 712
    _bgSprite0.setCascadeColorEnabled(true);
    // source line 548, bytecode pc 729
    _bgSprite1.setCascadeColorEnabled(true);
    // source line 549, bytecode pc 746
    _bgSprite2.setCascadeColorEnabled(true);
    // source line 554, bytecode pc 758
    switch (type) {
        case xs.Const_Item_Style_GeneralSoul:
        // source line 556, bytecode pc 850
        (_view_lt = xs.Factorys.Sprite.create("icon_lt_soul", "Cmn02"));
        // source line 557, bytecode pc 876
        (_offset = cc.p(-8, 6));
        break;
        case xs.Const_Item_Style_EquPiece:
        case xs.Const_Item_Style_SkillPiece:
        // source line 561, bytecode pc 923
        (_view_lt = xs.Factorys.Sprite.create("icon_lt_piece", "Cmn02"));
        // source line 562, bytecode pc 949
        (_offset = cc.p(-8, 6));
        break;
        default:
        break;
    }
    if (_view_lt) {
        // source line 567, bytecode pc 988
        _view_lt.setAnchorPoint(xs.ap_lt);
        // source line 568, bytecode pc 1006
        _view_lt.setZOrder(10);
        // source line 569, bytecode pc 1066
        xs.Utils.Node.attachNodes(_bgSprite1, _view_lt, { desc: "lt", offset: _offset });
    }
    // source line 572, bytecode pc 1070
    return _bgSprite1;
},
    createHeadView_Item: function(model) {
    var _model, _bgSprite0, _bgSprite1, _bgSprite2;
    // source line 577, bytecode pc 6
    (_model = model);
    // source line 579, bytecode pc 30
    (_bgSprite0 = _model.createPartView("Equ_Head0"));
    // source line 580, bytecode pc 54
    (_bgSprite1 = _model.createPartView("head1"));
    // source line 581, bytecode pc 78
    (_bgSprite2 = _model.createPartView("head2"));
    // source line 583, bytecode pc 104
    _bgSprite0.setAnchorPoint(xs.ap_c);
    // source line 584, bytecode pc 130
    _bgSprite1.setAnchorPoint(xs.ap_c);
    // source line 585, bytecode pc 156
    _bgSprite2.setAnchorPoint(xs.ap_c);
    // source line 587, bytecode pc 174
    _bgSprite1.setZOrder(2);
    // source line 588, bytecode pc 191
    _bgSprite2.setZOrder(1);
    // source line 591, bytecode pc 268
    xs.Utils.Node.attachNodes(_bgSprite0, _bgSprite2, { base: "c", offset: { x: 3, y: -2 } });
    // source line 592, bytecode pc 338
    xs.Utils.Node.attachNodes(_bgSprite0, _bgSprite1, { base: "c", offset: { x: 3 } });
    // source line 594, bytecode pc 342
    return _bgSprite0;
},
    calculateAttrType_FightPoint: function(atk, def, hp, wis) {
    // source line 601, bytecode pc 43
    return xs.Utils.floorSafe((((atk + def) + (hp * 0.4)) + wis));
}
}));
