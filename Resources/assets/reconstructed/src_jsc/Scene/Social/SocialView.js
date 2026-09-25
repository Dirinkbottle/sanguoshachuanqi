// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Social/SocialView.js:1
// source line 7, bytecode pc 16
(xs.Views.SocialView_Type_QuasiFriends = 1);
// source line 8, bytecode pc 34
(xs.Views.SocialView_Type_Friends = 2);
// source line 9, bytecode pc 52
(xs.Views.SocialView_Type_Foe = 3);
// source line 279, bytecode pc 196
(xs.Views.SocialView = cc.Layer.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(type) {
    var visibleSize, searchBtn, editBg, pos;
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 29
    (this.viewType = type);
    // source line 23, bytecode pc 65
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 25, bytecode pc 103
    (this.socialTableView = xs.Views.Table.SocialTableView.create());
    // source line 29, bytecode pc 193
    xs.Utils.Node.attachNodes(this, this.socialTableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    if (((this.viewType === xs.Views.SocialView_Type_QuasiFriends) || (this.viewType === xs.Views.SocialView_Type_Friends))) {
        // source line 35, bytecode pc 284
        (this.searchCcbNode = xs.ccb_reader.load("ccb3/0_6_3_SearchEditor.ccbi", this));
        // source line 36, bytecode pc 326
        this.searchCcbNode.setContentSize(cc.size(409, 48));
        // source line 37, bytecode pc 369
        this.searchCcbNode.setAnchorPoint(cc.p(0.5, 1));
        // source line 41, bytecode pc 493
        xs.Utils.Node.attachNodes(this, this.searchCcbNode, {
    desc: "lt",
    offset: cc.p((360 + (((visibleSize.width - 360) - xs.Views.MainMenuView.Width) / 2)), -45),
    sc: true
});
        // source line 44, bytecode pc 517
        (searchBtn = this.searchCcbNode.getChildByTag(11));
        // source line 45, bytecode pc 534
        searchBtn.setZOrder(1);
        // source line 46, bytecode pc 552
        searchBtn.setTouchPriority(-3);
        // source line 47, bytecode pc 600
        searchBtn.addTargetWithActionForControlEvents(this, this.onSearchBtnClicked.bind(this), cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
        // source line 49, bytecode pc 624
        (editBg = this.searchCcbNode.getChildByTag(10));
        // source line 50, bytecode pc 642
        (pos = editBg.getPosition());
        // source line 51, bytecode pc 657
        editBg.removeFromParent();
        // source line 52, bytecode pc 713
        (this.m_searchEditBox = cc.EditBox.create(cc.size(345, 48), editBg));
        // source line 53, bytecode pc 752
        this.m_searchEditBox.setAnchorPoint(cc.p(0, 0));
        // source line 54, bytecode pc 772
        this.m_searchEditBox.setZOrder(0);
        // source line 55, bytecode pc 794
        this.m_searchEditBox.setPosition(pos);
        // source line 56, bytecode pc 815
        this.m_searchEditBox.setFontSize(20);
        // source line 57, bytecode pc 860
        this.m_searchEditBox.setPlaceholderFontColor(cc.c3b(135, 86, 34));
        // source line 59, bytecode pc 901
        this.m_searchEditBox.setFontColor(cc.c3b(0, 0, 0));
        // source line 60, bytecode pc 930
        this.m_searchEditBox.setInputFlag(cc.EDITBOX_INPUT_MODE_SINGLELINE);
        // source line 61, bytecode pc 959
        this.m_searchEditBox.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
        // source line 62, bytecode pc 979
        this.m_searchEditBox.setDelegate(this);
        // source line 63, bytecode pc 1003
        this.m_searchEditBox.setText("");
        // source line 64, bytecode pc 1028
        this.searchCcbNode.addChild(this.m_searchEditBox);
        if ((this.viewType === xs.Views.SocialView_Type_QuasiFriends)) {
            // source line 68, bytecode pc 1106
            this.m_searchEditBox.setPlaceHolder(xs.Tools.String.createString("auto_name_201"));
        } else {
            // source line 72, bytecode pc 1162
            this.m_searchEditBox.setPlaceHolder(xs.Tools.String.createString("friendInputName"));
        }
    }
    // source line 77, bytecode pc 1164
    return true;
},
    onEnter: function() {
    // source line 86, bytecode pc 12
    this._super();
    if ((this.viewType === xs.Views.SocialView_Type_QuasiFriends)) {
        // source line 88, bytecode pc 86
        xs.Utils.Notify.addObserver(this, this.updateSocial, xs.Constant_Notify_ModelChange_Social_req);
        // source line 89, bytecode pc 129
        xs.Tools.Net.requestQuasiFriends({}, this.onResponse, this);
    } else {
        if ((this.viewType === xs.Views.SocialView_Type_Friends)) {
            // source line 91, bytecode pc 208
            xs.Utils.Notify.addObserver(this, this.updateSocial, xs.Constant_Notify_ModelChange_Social_del);
            // source line 92, bytecode pc 255
            xs.Utils.Notify.addObserver(this, this.saveViewInfo, xs.Constant_Notify_Social_SaveFriendViewInfo);
            // source line 93, bytecode pc 298
            xs.Tools.Net.requestFriends({}, this.onResponse, this);
        } else {
            if ((this.viewType === xs.Views.SocialView_Type_Foe)) {
                // source line 95, bytecode pc 377
                xs.Utils.Notify.addObserver(this, this.updateSocial, xs.Constant_Notify_ModelChange_Social_foe);
                // source line 96, bytecode pc 420
                xs.Tools.Net.requestFoes({}, this.onResponse, this);
            }
        }
    }
},
    onExit: function() {
    if ((this.viewType === xs.Views.SocialView_Type_QuasiFriends)) {
        // source line 102, bytecode pc 66
        xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Social_req);
    } else {
        if ((this.viewType === xs.Views.SocialView_Type_Friends)) {
            // source line 104, bytecode pc 138
            xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Social_SaveFriendViewInfo);
            // source line 105, bytecode pc 178
            xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Social_del);
        } else {
            if ((this.viewType === xs.Views.SocialView_Type_Foe)) {
                // source line 107, bytecode pc 250
                xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Social_foe);
            }
        }
    }
    // source line 109, bytecode pc 263
    this._super();
},
    onResponse: function(jsObj) {
    var friendSearchKey, friendTableViewOffsetY;
    if ((this.viewType === xs.Views.SocialView_Type_QuasiFriends)) {
        // source line 114, bytecode pc 46
        (this.datas = jsObj.return_info.user_make_friends);
        // source line 115, bytecode pc 78
        this.socialTableView.setData(this.datas, this.viewType);
        // source line 116, bytecode pc 96
        this.socialTableView.reloadData();
    } else {
        if ((this.viewType === xs.Views.SocialView_Type_Friends)) {
            // source line 118, bytecode pc 148
            (this.datas = jsObj.return_info.friends);
            if ((this.datas.length == 0)) {
                // source line 120, bytecode pc 178
                (this.local_friends_cache = []);
            } else {
                // source line 123, bytecode pc 207
                (this.local_friends_cache = this.datas.Clone());
            }
            // source line 126, bytecode pc 245
            (friendSearchKey = xs.Scene.Mgr.loadStatus("friendSearchKey", null));
            // source line 127, bytecode pc 283
            (friendTableViewOffsetY = xs.Scene.Mgr.loadStatus("friendTableViewOffsetY", null));
            if (((friendSearchKey != null) && (friendSearchKey != "null"))) {
                // source line 133, bytecode pc 330
                this.m_searchEditBox.setText(friendSearchKey);
                // source line 134, bytecode pc 343
                this.onSearchCallBack();
            } else {
                // source line 137, bytecode pc 380
                this.socialTableView.setData(this.datas, this.viewType);
                // source line 138, bytecode pc 398
                this.socialTableView.reloadData();
            }
            if ((friendTableViewOffsetY != null)) {
                // source line 142, bytecode pc 471
                this.socialTableView.setContentOffset(cc.p(0, xs.Utils.parseIntSafe(friendTableViewOffsetY)));
            }
            if ((this.datas.length === 0)) {
                // source line 147, bytecode pc 561
                (this.tipLab = xs.Factorys.LabelTTF.create(xs.Tools.String.createString("auto_name_202"), "TTF_SortButton"));
                // source line 148, bytecode pc 620
                xs.Utils.Node.attachNodes(this, this.tipLab, { desc: "c", sc: true });
            } else {
                if (this.tipLab) {
                    // source line 150, bytecode pc 654
                    this.tipLab.removeFromParent();
                }
            }
        } else {
            if ((this.viewType === xs.Views.SocialView_Type_Foe)) {
                // source line 154, bytecode pc 706
                (this.datas = jsObj.return_info.enemys);
                // source line 155, bytecode pc 738
                this.socialTableView.setData(this.datas, this.viewType);
                // source line 156, bytecode pc 756
                this.socialTableView.reloadData();
                if ((this.datas.length === 0)) {
                    // source line 160, bytecode pc 846
                    (this.tipLab = xs.Factorys.LabelTTF.create(xs.Tools.String.createString("auto_name_203"), "TTF_SortButton"));
                    // source line 163, bytecode pc 905
                    xs.Utils.Node.attachNodes(this, this.tipLab, { desc: "c", sc: true });
                } else {
                    if (this.tipLab) {
                        // source line 166, bytecode pc 939
                        this.tipLab.removeFromParent();
                    }
                }
            }
        }
    }
},
    onSearchBtnClicked: function() {
    var searchKey;
    if ((this.viewType === xs.Views.SocialView_Type_Friends)) {
        // source line 173, bytecode pc 47
        (searchKey = this.m_searchEditBox.getText());
        // source line 174, bytecode pc 90
        xs.Scene.Mgr.saveStatus("friendSearchKey", ("" + searchKey));
    }
    // source line 177, bytecode pc 103
    this.onSearchCallBack();
},
    onSearchCallBack: function() {
    var searchKey, keyType, i, name, tmp;
    // source line 181, bytecode pc 20
    (searchKey = this.m_searchEditBox.getText());
    if ((this.viewType === xs.Views.SocialView_Type_QuasiFriends)) {
        if (!searchKey) {
            // source line 186, bytecode pc 99
            xs.Tools.Net.requestQuasiFriends({}, this.onResponse, this);
            // source line 187, bytecode pc 101
            return void 0;
        }
        // source line 190, bytecode pc 106
        (keyType = 1);
        if (parseInt(searchKey)) {
            // source line 192, bytecode pc 135
            (keyType = 2);
        } else {
            // source line 194, bytecode pc 145
            (keyType = 1);
        }
        // source line 201, bytecode pc 217
        xs.Tools.Net.requestSearchUser({ search_word: searchKey, limit: 50, page: 1, type: keyType }, this.onSearchResponse, this);
    } else {
        if (!searchKey) {
            // source line 207, bytecode pc 244
            (this.datas = this.local_friends_cache);
        } else {
            if ((this.local_friends_cache.length == 0)) {
                // source line 211, bytecode pc 279
                (this.datas = []);
            } else {
                // source line 214, bytecode pc 308
                (this.datas = this.local_friends_cache.Clone());
            }
            // source line 216, bytecode pc 325
            (i = (this.datas.length - 1));
            while ((i >= 0)) {
                // source line 217, bytecode pc 350
                (name = this.datas[i].name);
                // source line 218, bytecode pc 372
                (tmp = name.match(searchKey));
                if (((tmp === null) || (tmp.length === 0))) {
                    // source line 220, bytecode pc 422
                    this.datas.splice(i, 1);
                }
                // source line 216, bytecode pc 437
                i--;
            }
        }
        if ((this.datas && (this.datas.length === 0))) {
            // source line 226, bytecode pc 538
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_204"));
        }
        // source line 229, bytecode pc 570
        this.socialTableView.setData(this.datas, this.viewType);
        // source line 230, bytecode pc 588
        this.socialTableView.reloadData();
    }
},
    onSearchResponse: function(jsObj) {
    // source line 238, bytecode pc 19
    (this.datas = jsObj.return_info.search_user);
    if ((this.datas === null)) {
        // source line 241, bytecode pc 92
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_204"));
    }
    // source line 244, bytecode pc 124
    this.socialTableView.setData(this.datas, this.viewType);
    // source line 245, bytecode pc 142
    this.socialTableView.reloadData();
},
    updateSocial: function(params) {
    var arrModel, invitedNum, i, model;
    // source line 250, bytecode pc 8
    switch (params.type) {
        case xs.Views.SocialView_Type_QuasiFriends:
        // source line 253, bytecode pc 94
        (arrModel = this.socialTableView.getArrayModel());
        // source line 254, bytecode pc 99
        (invitedNum = 0);
        // source line 255, bytecode pc 104
        (i = 0);
        while ((i < arrModel.length)) {
            // source line 256, bytecode pc 121
            (model = arrModel[i]);
            if (model.isInvited) {
                // source line 258, bytecode pc 149
                invitedNum++;
            } else {
                break;
            }
            // source line 255, bytecode pc 174
            i++;
        }
        if (((invitedNum != 0) && (invitedNum == arrModel.length))) {
            // source line 266, bytecode pc 263
            xs.Tools.Net.requestQuasiFriends({}, this.onResponse, this);
        }
        break;
        case xs.Views.SocialView_Type_Friends:
        // source line 271, bytecode pc 311
        xs.Tools.Net.requestFriends({}, this.onResponse, this);
        break;
        case xs.Views.SocialView_Type_Foe:
        // source line 274, bytecode pc 359
        xs.Tools.Net.requestFoes({}, this.onResponse, this);
        break;
        default:
        break;
    }
},
    saveViewInfo: function() {
    // source line 280, bytecode pc 22
    xs.log_xjf("保存好友界面信息");
    // source line 282, bytecode pc 79
    xs.Scene.Mgr.saveStatus("friendTableViewOffsetY", ("" + this.socialTableView.getContentOffsetY()));
}
}));
// source line 287, bytecode pc 222
(xs.Views.SocialView.create = function(type) {
    var ret;
    // source line 288, bytecode pc 23
    (ret = new xs.Views.SocialView());
    if ((ret && ret.init(type))) {
        // source line 290, bytecode pc 59
        return ret;
    }
    // source line 292, bytecode pc 61
    return null;
});
