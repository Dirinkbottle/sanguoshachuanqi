// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/common.js:1
// source line 760, bytecode pc 2645
(xs.Profile.GameData = cc.Class.extend({
    name: "xs.Profile.GameData",
    dump: xs.Debug.emptyFunc,
    Cfg: {
        dataDescs: [
            {
                propertyName: "m_player",
                key: "user_info",
                "class": xs.Models.Player,
                mgrType: xs.Constant_GD_MgrType_SingletonType,
                notifyName: xs.Constant_Notify_ModelChange_UserInfo,
                sortChangeNotifyName: "",
                indexProperty: [],
                indexName: "m_player_index"
            },
            {
                propertyName: "m_generals",
                key: "general_info",
                "class": xs.Models.General,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_General,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_General_SortChange,
                indexProperty: [ "getMajorPkId" ],
                indexName: "m_generals_index"
            },
            {
                propertyName: "m_general_souls",
                key: "general_soul_info",
                "class": xs.Models.GeneralSoul,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_GeneralSoul,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_GeneralSoul_SortChange,
                indexProperty: [],
                indexName: "m_general_souls_index"
            },
            {
                propertyName: "m_skills",
                key: "skill_info",
                "class": xs.Models.Skill,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_Skill,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Skill_SortChange,
                indexProperty: [ "getGeneralPkId", "getSkillType" ],
                indexName: "m_skills_index"
            },
            {
                propertyName: "m_equs",
                key: "equipment_info",
                "class": xs.Models.Equipment,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_Equ,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Equ_SortChange,
                indexProperty: [ "getGeneralPkId" ],
                indexName: "m_equs_index"
            },
            {
                propertyName: "m_items",
                key: "item_info",
                "class": xs.Models.Item,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_Item,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Item_SortChange,
                indexProperty: [],
                indexName: "m_items_index"
            },
            {
                propertyName: "m_combats",
                key: "combat_info",
                "class": xs.Models.Combat,
                mgrType: xs.Constant_GD_MgrType_ReplaceType,
                notifyName: xs.Constant_Notify_ModelChange_Combat,
                indexProperty: [],
                indexName: "m_combats_index"
            },
            {
                propertyName: "m_team_general",
                key: "team_info",
                "class": xs.Models.TeamGeneral,
                mgrType: xs.Constant_GD_MgrType_ReplaceType,
                notifyName: xs.Constant_Notify_ModelChange_TeamGeneral,
                indexProperty: [],
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Team_SortChange,
                indexName: "m_team_general_index"
            },
            {
                propertyName: "m_equ_pieces",
                key: "equipment_piece_info",
                "class": xs.Models.EquipmentPiece,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_EquPiece,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_EquPiece_SortChange,
                indexProperty: [],
                indexName: "m_equ_pieces_index"
            },
            {
                propertyName: "m_atlas",
                key: "atlas_info",
                "class": xs.Models.Atlas,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_Atlas,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Atlas_SortChange,
                indexProperty: [],
                indexName: "m_atlas_index"
            },
            {
                propertyName: "m_skill_pieces",
                key: "skill_piece_info",
                "class": xs.Models.SkillPiece,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_SkillPiece,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_SkillPiece_SortChange,
                indexProperty: [],
                indexName: "m_skill_pieces_index"
            },
            {
                propertyName: "m_push",
                key: "push",
                "class": xs.Models.PushInfo,
                mgrType: xs.Constant_GD_MgrType_SingletonType,
                notifyName: xs.Constant_Notify_ModelChange_Push,
                sortChangeNotifyName: "",
                indexProperty: [],
                indexName: "m_push_index"
            },
            {
                propertyName: "m_adInfo",
                key: "adInfo",
                "class": xs.Models.AdInfo,
                mgrType: xs.Constant_GD_MgrType_SingletonType,
                notifyName: xs.Constant_Notify_ModelChange_AD,
                sortChangeNotifyName: "",
                indexProperty: [],
                indexName: "m_adInfo_index"
            },
            {
                propertyName: "m_union",
                key: "union_info",
                "class": xs.Models.Union,
                mgrType: xs.Constant_GD_MgrType_SingletonType,
                notifyName: xs.Constant_Notify_ModelChange_UnionInfo,
                sortChangeNotifyName: "",
                indexProperty: [],
                indexName: "m_union_index"
            },
            {
                propertyName: "m_buddy_general",
                key: "buddy_info",
                "class": xs.Models.BuddyGeneral,
                mgrType: xs.Constant_GD_MgrType_ReplaceType,
                notifyName: xs.Constant_Notify_ModelChange_BuddyGeneral,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Buddy_SortChange,
                indexProperty: [],
                indexName: "m_buddy_general_index"
            },
            {
                propertyName: "m_unionWar",
                key: "unionWar",
                "class": xs.Models.UnionWar,
                mgrType: xs.Constant_GD_MgrType_SingletonType,
                notifyName: xs.Constant_Notify_ModelChange_UnionWar,
                sortChangeNotifyName: "",
                indexProperty: [],
                indexName: "m_unionWar_index"
            },
            {
                propertyName: "m_gem",
                key: "gem_info",
                "class": xs.Models.Gems,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_Gem,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Gems_SortChange,
                indexProperty: [],
                indexName: "m_gem_index"
            },
            {
                propertyName: "m_magicalEqus",
                key: "magic_info",
                "class": xs.Models.MagicalEqu,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_MagicalEqu,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_MagicalEqus_SortChange,
                indexProperty: [],
                indexName: "m_magicalEqu_index"
            },
            {
                propertyName: "m_goddess",
                key: "godness_info",
                "class": xs.Models.Goddess,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_Goddess,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Goddess_SortChange,
                indexProperty: [],
                indexName: "m_goddess_index"
            },
            {
                propertyName: "m_meridianTop",
                key: "meridian_info",
                "class": xs.Models.MeridianTop,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_MeridianTop,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_MeridianTop_SortChange,
                indexProperty: [],
                indexName: "m_meridianTop_index"
            },
            {
                propertyName: "m_evolutionInfo",
                key: "evolution_info",
                "class": xs.Models.EvolutionInfo,
                mgrType: xs.Constant_GD_MgrType_MapType,
                notifyName: xs.Constant_Notify_ModelChange_Evolution,
                sortChangeNotifyName: xs.Constant_Notify_ModelChange_Evolution_SortChange,
                indexProperty: [],
                indexName: "m_evolutionInfo_index"
            }
        ]
    },
    getDataDescByNameType: function(nameType) {
    var _dataDesc;
    // source line 269, bytecode pc 18
    (_dataDesc = this.Cfg.dataDescs[nameType]);
    // source line 271, bytecode pc 22
    return _dataDesc;
},
    getDataByNameType: function(nameType) {
    var _dataDesc;
    // source line 276, bytecode pc 19
    (_dataDesc = this.getDataDescByNameType(nameType));
    // source line 277, bytecode pc 35
    return this.private[_dataDesc.propertyName];
},
    init: function(isNotify) {
    var _dataDescs, i, _desc;
    // source line 283, bytecode pc 7
    (this.isFirstTimeInitCmnData = true);
    // source line 285, bytecode pc 20
    (this.private = {});
    // source line 287, bytecode pc 37
    (this._isNotify = (isNotify || false));
    // source line 290, bytecode pc 45
    (this._notifyCenter = null);
    // source line 291, bytecode pc 78
    (this._notifyCenter = xs.Utils.Notify.create());
    // source line 293, bytecode pc 104
    (_dataDescs = (this.Cfg.dataDescs || []));
    // source line 295, bytecode pc 109
    (i = 0);
    while ((i < _dataDescs.length)) {
        // source line 296, bytecode pc 126
        (_desc = _dataDescs[i]);
        if ((_desc.mgrType === xs.Constant_GD_MgrType_MapType)) {
            // source line 300, bytecode pc 172
            (this.private[_desc.propertyName] = {});
            // source line 301, bytecode pc 234
            (this.private[_desc.indexName] = new xs.Profile.GameData.Index.create(this.private[_desc.propertyName]));
        } else {
            if ((_desc.mgrType === xs.Constant_GD_MgrType_SingletonType)) {
                // source line 303, bytecode pc 292
                (this.private[_desc.propertyName] = new _desc["class"]());
                // source line 304, bytecode pc 319
                this.private[_desc.propertyName].init();
            } else {
                if ((_desc.mgrType === xs.Constant_GD_MgrType_ReplaceType)) {
                    // source line 307, bytecode pc 369
                    (this.private[_desc.propertyName] = []);
                } else {
                    // source line 309, bytecode pc 397
                    this.error("_desc.mgrType err", _desc);
                }
            }
        }
        // source line 295, bytecode pc 412
        i++;
    }
    // source line 313, bytecode pc 432
    return true;
},
    updateRespData: function(jsonResp) {
    var _jsonResp, _notifyNames, i, _modelMap;
    // source line 319, bytecode pc 18
    (_jsonResp = (jsonResp || {}));
    // source line 362, bytecode pc 40
    this.refreshCacheDataEveryDay(_jsonResp.refresh_info);
    // source line 363, bytecode pc 77
    (_notifyNames = this.updateCmnData((_jsonResp.cmn || {})));
    // source line 366, bytecode pc 82
    (i = 0);
    while ((i < _notifyNames.length)) {
        // source line 368, bytecode pc 123
        xs.Utils.Notify.postNotification(_notifyNames[i]);
        // source line 366, bytecode pc 138
        i++;
    }
    // source line 371, bytecode pc 188
    (_modelMap = this.updateOtherData((_jsonResp || {})));
    // source line 372, bytecode pc 192
    return _modelMap;
},
    updateOtherData: function(jsonResp) {
    var _rs_obj, _model, player, userInfoArgs, _meeting_info, i;
    // source line 380, bytecode pc 9
    (_rs_obj = {});
    // source line 381, bytecode pc 23
    (_rs_obj.RandEvent = []);
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 385, bytecode pc 59
        return _rs_obj;
    }
    if (!xs.Utils.isEmpty(jsonResp.user_level_up_info)) {
        // source line 390, bytecode pc 139
        (_model = xs.Models.TmpInfo.UsrUpgrade.createWithJson(jsonResp.user_level_up_info));
        // source line 393, bytecode pc 189
        _rs_obj.RandEvent.push({ type: xs.Constant_RandEvent_upGrade, model: _model });
        // source line 397, bytecode pc 240
        (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
        // source line 404, bytecode pc 409
        (userInfoArgs = ((((((((((((player.getPlayerId() + "|") + player.getPlayerName()) + "|") + player.getPlayerLevel()) + "|") + xs.Profile.UserCfg.getGameAddr().id) + "|") + xs.Profile.UserCfg.getGameAddr().name) + "|") + "levelUp") + "|") + player.getPlayerVipLevel()));
        // source line 405, bytecode pc 458
        xs.JsbConnecter.getInstance().invoke("UserInfo", "", userInfoArgs);
    }
    if (!xs.Utils.isEmpty(jsonResp.meeting_info)) {
        // source line 411, bytecode pc 506
        (_meeting_info = jsonResp.meeting_info);
        // source line 412, bytecode pc 511
        (i = 0);
        while ((i < _meeting_info.length)) {
            // source line 413, bytecode pc 560
            (_model = xs.Models.TmpInfo.Adventure.createWithJson(_meeting_info[i]));
            // source line 416, bytecode pc 610
            _rs_obj.RandEvent.push({ type: xs.Constant_RandEvent_adventure, model: _model });
            // source line 412, bytecode pc 625
            i++;
        }
    }
    if (!xs.Utils.isEmpty(jsonResp.surrender_info)) {
        // source line 425, bytecode pc 723
        (_model = xs.Models.TmpInfo.Achieve.loadData(jsonResp.surrender_info));
        // source line 426, bytecode pc 728
        (i = 0);
        while ((i < _model.length)) {
            // source line 429, bytecode pc 788
            _rs_obj.RandEvent.push({ type: xs.Constant_RandEvent_achieve_new, model: _model[i] });
            if (((0 != _model[i].all_status) && _model[i].getGeneralReceive())) {
                // source line 434, bytecode pc 885
                _rs_obj.RandEvent.push({ type: xs.Constant_RandEvent_achieve, model: _model[i] });
            }
            // source line 426, bytecode pc 900
            i++;
        }
    }
    if (!xs.Utils.isEmpty(jsonResp.surrender_info)) {
        // source line 443, bytecode pc 998
        (_model = xs.Models.TmpInfo.Achieve.loadDataAwake(jsonResp.surrender_info));
        // source line 444, bytecode pc 1003
        (i = 0);
        while ((i < _model.length)) {
            // source line 447, bytecode pc 1063
            _rs_obj.RandEvent.push({ type: xs.Constant_RandEvent_achieve_new, model: _model[i] });
            if (((0 != _model[i].all_status) && _model[i].getGeneralReceive())) {
                // source line 452, bytecode pc 1160
                _rs_obj.RandEvent.push({ type: xs.Constant_RandEvent_achieve, model: _model[i] });
            }
            // source line 444, bytecode pc 1175
            i++;
        }
    }
    // source line 458, bytecode pc 1197
    return _rs_obj;
},
    updateCmnData: function(jsonCmn) {
    var _notifyNames, _dataDescs, i, _desc, _info, _isDataChange, _isItemIncrease, _class, _del_list, _up_list, _notify_params, j, _del, _objMap, _up, _model, _item_num_old, _item_num_new, _modelArray;
    if (jsonCmn.general_skin) {
        // source line 467, bytecode pc 31
        (xs.player_skin = jsonCmn.general_skin);
    }
    if (jsonCmn.server_version) {
        // source line 468, bytecode pc 63
        (xs.sinfo_game_ver = jsonCmn.server_version);
    }
    if (jsonCmn.cfg_version) {
        // source line 469, bytecode pc 95
        (xs.sinfo_cfg_ver = jsonCmn.cfg_version);
    }
    if (jsonCmn.opt_cfg_version) {
        // source line 470, bytecode pc 127
        (xs.sinfo_optcfg_ver = jsonCmn.opt_cfg_version);
    }
    if (jsonCmn.server_time) {
        // source line 472, bytecode pc 159
        (xs.sinfo_server_time = jsonCmn.server_time);
        // source line 473, bytecode pc 195
        (xs.sinfo_local_time = (new Date().getTime() / 1000));
    }
    if (xs.Utils.isSet(jsonCmn.offset_time)) {
        // source line 478, bytecode pc 253
        (xs.sinfo_offset_time = (jsonCmn.offset_time * 1000));
    } else {
        // source line 480, bytecode pc 274
        (xs.sinfo_offset_time = 28800000);
    }
    // source line 483, bytecode pc 283
    (_notifyNames = []);
    // source line 486, bytecode pc 309
    (_dataDescs = (this.Cfg.dataDescs || []));
    // source line 487, bytecode pc 314
    (i = 0);
    while ((i < _dataDescs.length)) {
        // source line 488, bytecode pc 331
        (_desc = _dataDescs[i]);
        // source line 492, bytecode pc 347
        (_info = jsonCmn[_desc.key]);
        if (((_info === null) || (_info === undefined))) {
        } else {
            // source line 497, bytecode pc 382
            (_isDataChange = false);
            // source line 499, bytecode pc 387
            (_isItemIncrease = false);
            // source line 501, bytecode pc 399
            (_class = _desc["class"]);
            if ((_desc.mgrType === xs.Constant_GD_MgrType_MapType)) {
                // source line 505, bytecode pc 446
                (_del_list = (_info.del_list || []));
                // source line 506, bytecode pc 469
                (_up_list = (_info.update_list || []));
                // source line 513, bytecode pc 509
                (_notify_params = { del: [], add: [], upd: [] });
                if (((_del_list.length > 0) || (_up_list.length > 0))) {
                    // source line 517, bytecode pc 545
                    (_isDataChange = true);
                }
                // source line 521, bytecode pc 550
                (j = 0);
                while ((j < _del_list.length)) {
                    // source line 522, bytecode pc 567
                    (_del = _del_list[j]);
                    // source line 523, bytecode pc 586
                    (_objMap = this.private[_desc.propertyName]);
                    // source line 524, bytecode pc 613
                    this.assert(_objMap, "need _objMap", _objMap);
                    if ((_desc["class"] === xs.Models.General)) {
                        // source line 529, bytecode pc 663
                        this.clearGeneralSoulCache(_objMap[_del]);
                    }
                    // source line 532, bytecode pc 687
                    _notify_params.del.push(_del);
                    // source line 534, bytecode pc 695
                    delete _objMap[_del];
                    // source line 521, bytecode pc 710
                    j++;
                }
                // source line 538, bytecode pc 733
                (j = 0);
                while ((j < _up_list.length)) {
                    // source line 539, bytecode pc 750
                    (_up = _up_list[j]);
                    // source line 540, bytecode pc 769
                    (_objMap = this.private[_desc.propertyName]);
                    // source line 541, bytecode pc 796
                    this.assert(_objMap, "need _objMap", _objMap);
                    if (((_objMap[_up.pk_id] !== null) && (_objMap[_up.pk_id] !== undefined))) {
                        // source line 545, bytecode pc 855
                        (_model = _objMap[_up.pk_id]);
                        if (((_desc["class"] === xs.Models.Item) || (_desc["class"] === xs.Models.Gems))) {
                            // source line 549, bytecode pc 932
                            (_item_num_old = _model.getItemNum());
                        }
                        // source line 552, bytecode pc 951
                        _model.loadJson(_up);
                        // source line 553, bytecode pc 980
                        _notify_params.upd.push(_up.pk_id);
                        if (((_desc["class"] === xs.Models.Item) || (_desc["class"] === xs.Models.Gems))) {
                            // source line 557, bytecode pc 1057
                            (_item_num_new = _model.getItemNum());
                            // source line 558, bytecode pc 1084
                            xs.log_hsq("update _item_num_new", _item_num_new);
                            // source line 559, bytecode pc 1111
                            xs.log_hsq("update _item_num_old", _item_num_old);
                            // source line 560, bytecode pc 1129
                            ((_item_num_new > _item_num_old) && (_isItemIncrease = true));
                        }
                    } else {
                        if ((_desc.propertyName == "m_gem")) {
                            // source line 565, bytecode pc 1176
                            xs.log_hsq("update length");
                            // source line 566, bytecode pc 1208
                            xs.log_hsq("update length", _desc.propertyName);
                        }
                        // source line 570, bytecode pc 1230
                        (_model = _class.createWithJson(_up));
                        // source line 571, bytecode pc 1246
                        (_objMap[_up.pk_id] = _model);
                        // source line 572, bytecode pc 1275
                        _notify_params.add.push(_up.pk_id);
                        // source line 575, bytecode pc 1340
                        (((_desc["class"] === xs.Models.Item) || (_desc["class"] === xs.Models.Gems)) && (_isItemIncrease = true));
                    }
                    if ((_desc.propertyName == "m_gem")) {
                        // source line 579, bytecode pc 1382
                        xs.log_hsq("update length");
                        // source line 580, bytecode pc 1414
                        xs.log_hsq("update class", _desc["class"]);
                    }
                    if ((((_desc["class"] === xs.Models.Item) || (_desc["class"] === xs.Models.Gems)) && _isItemIncrease)) {
                        // source line 586, bytecode pc 1508
                        this.setItemStatus(_objMap[_up.pk_id]);
                    }
                    if ((_desc["class"] === xs.Models.General)) {
                        // source line 591, bytecode pc 1563
                        this.clearGeneralSoulCache(_objMap[_up.pk_id]);
                    }
                    // source line 538, bytecode pc 1578
                    j++;
                }
                if (_isDataChange) {
                    if (!xs.Utils.isEmpty(_desc.indexProperty)) {
                        // source line 602, bytecode pc 1667
                        this.private[_desc.indexName].deleteIndexAll();
                    }
                    if (this._isNotify) {
                        // source line 607, bytecode pc 1715
                        this.getNotifyCenter().postNotification(_desc.sortChangeNotifyName, _notify_params);
                    }
                }
            } else {
                if ((_desc.mgrType === xs.Constant_GD_MgrType_SingletonType)) {
                    // source line 616, bytecode pc 1775
                    this.private[_desc.propertyName].update(_info);
                    // source line 617, bytecode pc 1780
                    (_isDataChange = true);
                } else {
                    if ((_desc.mgrType === xs.Constant_GD_MgrType_ReplaceType)) {
                        // source line 619, bytecode pc 1818
                        (_modelArray = []);
                        // source line 620, bytecode pc 1823
                        (j = 0);
                        while ((j < _info.length)) {
                            // source line 622, bytecode pc 1867
                            _modelArray.push(_class.createWithJson(_info[j]));
                            // source line 620, bytecode pc 1882
                            j++;
                        }
                        // source line 624, bytecode pc 1919
                        (this.private[_desc.propertyName] = _modelArray);
                        // source line 625, bytecode pc 1924
                        (_isDataChange = true);
                        // source line 627, bytecode pc 1975
                        this.getNotifyCenter().postNotification(_desc.sortChangeNotifyName, { upd: {} });
                    } else {
                        // source line 630, bytecode pc 2003
                        this.error("_desc.mgrType err", _desc);
                    }
                }
            }
            if ((_isDataChange && this._isNotify)) {
                // source line 634, bytecode pc 2047
                _notifyNames.push(_desc.notifyName);
            }
        }
        // source line 487, bytecode pc 2062
        i++;
    }
    // source line 645, bytecode pc 2102
    (_isDataChange && this._firstTimeInitCmnData());
    // source line 649, bytecode pc 2106
    return _notifyNames;
},
    clearGeneralSoulCache: function(general_obj) {
    var _arr_soul_all, i;
    // source line 654, bytecode pc 32
    (_arr_soul_all = this.getModelsByTypeAndFilter(xs.Constant_GameData_GeneralSoul, []));
    // source line 655, bytecode pc 37
    (i = 0);
    while ((i < _arr_soul_all.length)) {
        if ((_arr_soul_all[i].getId() == general_obj.getId())) {
            // source line 657, bytecode pc 100
            _arr_soul_all[i]._delReferenceGeneralCache();
        }
        // source line 655, bytecode pc 115
        i++;
    }
},
    setItemStatus: function(item_obj) {
    if (!this.isFirstTimeInitCmnData) {
        // source line 665, bytecode pc 28
        item_obj.setNewStatus(true);
    }
},
    getModelByTypeAndPkId: function(nameType, pkId) {
    var _modelsMap, _ret;
    // source line 673, bytecode pc 19
    (_modelsMap = this.getDataByNameType(nameType));
    // source line 675, bytecode pc 66
    this.assert(pkId, "getModelByTypeAndPkId", [ nameType, pkId ], _modelsMap);
    // source line 677, bytecode pc 77
    (_ret = _modelsMap[pkId]);
    if (_ret) {
        // source line 680, bytecode pc 89
        return _ret;
    } else {
        // source line 683, bytecode pc 127
        this.warn(((("getModelByTypeAndPkId ret null:" + nameType) + "|") + pkId));
    }
    // source line 686, bytecode pc 131
    return _ret;
},
    getModelsByTypeAndFilter: function(nameType, filterArray) {
    var _modelsMap, _retArray, _filterArray, key_pk_id, _tmpModel, _isIgnore, j;
    // source line 693, bytecode pc 19
    (_modelsMap = this.getDataByNameType(nameType));
    // source line 695, bytecode pc 28
    (_retArray = []);
    // source line 698, bytecode pc 46
    (_filterArray = (filterArray || []));
    for (var key_pk_id in _modelsMap) {
        if (!(_modelsMap.hasOwnProperty(key_pk_id))) continue;
        // source line 704, bytecode pc 96
        (_tmpModel = _modelsMap[key_pk_id]);
        // source line 706, bytecode pc 101
        (_isIgnore = false);
        // source line 707, bytecode pc 106
        (j = 0);
        while ((j < _filterArray.length)) {
            if ((_tmpModel.isIgnoreByFilter(_filterArray[i]) === true)) {
                // source line 709, bytecode pc 148
                (_isIgnore = true);
            }
            // source line 707, bytecode pc 163
            j++;
        }
        if ((_isIgnore === true)) {
        } else {
            // source line 716, bytecode pc 215
            _retArray.push(_tmpModel);
        }
    }
    // source line 719, bytecode pc 227
    return _retArray;
},
    getModelsByTypeAndIndex: function(nameType, indexName, indexValue) {
    var _dataDesc, _arr, _retArray, i;
    // source line 727, bytecode pc 19
    (_dataDesc = this.getDataDescByNameType(nameType));
    // source line 729, bytecode pc 50
    this.private[_dataDesc.indexName].createIndex(indexName);
    // source line 731, bytecode pc 88
    (_arr = this.private[_dataDesc.indexName].findWithIndex(indexName, indexValue));
    if ((_arr == -1)) {
        // source line 735, bytecode pc 122
        return this.getModelsByTypeAndFilter(nameType, []);
    }
    // source line 738, bytecode pc 131
    (_retArray = []);
    // source line 740, bytecode pc 136
    (i = 0);
    while ((i < _arr.length)) {
        // source line 741, bytecode pc 182
        _retArray.push(this.getModelByTypeAndPkId(nameType, _arr[i]));
        // source line 740, bytecode pc 197
        i++;
    }
    // source line 744, bytecode pc 219
    return _retArray;
},
    refreshCacheDataEveryDay: function(refresh_data) {
    if (((undefined !== refresh_data) && ((undefined !== refresh_data.status) && (true === refresh_data.status)))) {
        // source line 750, bytecode pc 72
        xs.log("be refreshed data here: map etc;");
    }
},
    getNotifyCenter: function() {
    // source line 755, bytecode pc 25
    this.assert(this._notifyCenter, "the notityCenter is error");
    // source line 756, bytecode pc 32
    return this._notifyCenter;
},
    _firstTimeInitCmnData: function() {
    // source line 761, bytecode pc 19
    (this.isFirstTimeInitCmnData && (this.isFirstTimeInitCmnData = false));
}
}));
// source line 767, bytecode pc 2671
(xs.Profile.GameData.create = function(isNotify) {
    var obj;
    // source line 768, bytecode pc 23
    (obj = new xs.Profile.GameData());
    if ((obj && obj.init(isNotify))) {
        // source line 771, bytecode pc 59
        return obj;
    }
    // source line 773, bytecode pc 82
    xs.error("xs.Profile.GameData.create failed");
    // source line 774, bytecode pc 84
    return null;
});
