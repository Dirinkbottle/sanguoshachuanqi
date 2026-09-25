// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/EquipmentReinforceView.js:1
// source line 154, bytecode pc 138
(xs.Views.EquipmentReinforceView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
},
    init: function() {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 20, bytecode pc 35
    (this.m_listener = null);
    // source line 21, bytecode pc 43
    (this.b_isReinforced = false);
    // source line 22, bytecode pc 51
    (this.m_ccbNode = null);
    // source line 23, bytecode pc 59
    (this.m_equipmentData = null);
    // source line 24, bytecode pc 67
    (this.m_backBtn = null);
    // source line 25, bytecode pc 75
    (this.m_reinforceBtn = null);
    // source line 27, bytecode pc 83
    (this.m_equip = null);
    // source line 29, bytecode pc 91
    (this.m_equipGradeIcon = null);
    // source line 33, bytecode pc 99
    (this.m_levelUpLab = null);
    // source line 34, bytecode pc 107
    (this.m_changeLab = null);
    // source line 35, bytecode pc 115
    (this.m_costLab = null);
    // source line 36, bytecode pc 123
    (this.m_totalLab = null);
    // source line 38, bytecode pc 131
    (this.m_lastLv = 0);
    // source line 39, bytecode pc 139
    (this.m_lastEffect = 0);
    // source line 41, bytecode pc 154
    this.setIsEatEvent(true);
    // source line 43, bytecode pc 183
    xs.Tools.UI.addTransparentBg(this);
    // source line 45, bytecode pc 234
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.EquipmentReinfoceView, this));
    // source line 51, bytecode pc 324
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true, offset: { x: -150, y: -275 } });
    // source line 55, bytecode pc 379
    (this.m_equip = this.m_ccbNode.getChildByTag(xs.Views.EquipmentReinforceView.cfg.m_equip.tag));
    // source line 56, bytecode pc 434
    (this.m_levelLab = this.m_ccbNode.getChildByTag(xs.Views.EquipmentReinforceView.cfg.m_levelLab.tag));
    // source line 57, bytecode pc 489
    (this.m_equipGradeIcon = this.m_ccbNode.getChildByTag(xs.Views.EquipmentReinforceView.cfg.m_equipGradeIcon.tag));
    // source line 60, bytecode pc 544
    (this.m_levelUpLab = this.m_ccbNode.getChildByTag(xs.Views.EquipmentReinforceView.cfg.m_levelUpLab.tag));
    // source line 61, bytecode pc 599
    (this.m_changeLab = this.m_ccbNode.getChildByTag(xs.Views.EquipmentReinforceView.cfg.m_changeLab.tag));
    // source line 62, bytecode pc 654
    (this.m_costLab = this.m_ccbNode.getChildByTag(xs.Views.EquipmentReinforceView.cfg.m_costLab.tag));
    // source line 63, bytecode pc 709
    (this.m_totalLab = this.m_ccbNode.getChildByTag(xs.Views.EquipmentReinforceView.cfg.m_totalLab.tag));
    // source line 65, bytecode pc 781
    (this.m_backBtn = xs.Views.Btn.createWithString("Btn_CircularMenu_TTF", xs.Tools.String.createString("btnStr_return")));
    // source line 66, bytecode pc 820
    this.m_backBtn.setAnchorPoint(cc.p(1, 0));
    // source line 67, bytecode pc 840
    this.m_backBtn.setZoomOnTouchDown(false);
    // source line 68, bytecode pc 878
    this.m_backBtn.addCallBackForEvent(this, this.backCallback, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 74, bytecode pc 962
    xs.Utils.Node.attachNodes(this, this.m_backBtn, { desc: "rb", sc: true, offset: { x: -2, y: 108 } });
    // source line 78, bytecode pc 1034
    (this.m_reinforceBtn = xs.Views.Btn.createWithString("Btn_CircularMenu_TTF", xs.Tools.String.createString("str_Equipment_Strongger")));
    // source line 79, bytecode pc 1073
    this.m_reinforceBtn.setAnchorPoint(cc.p(1, 0));
    // source line 80, bytecode pc 1093
    this.m_reinforceBtn.setZoomOnTouchDown(false);
    // source line 81, bytecode pc 1131
    this.m_reinforceBtn.addCallBackForEvent(this, this.reinforceCallback, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    // source line 87, bytecode pc 1215
    xs.Utils.Node.attachNodes(this, this.m_reinforceBtn, { desc: "rb", sc: true, offset: { x: -2, y: 2 } });
    // source line 91, bytecode pc 1217
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 94, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 95, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 96, bytecode pc 85
    this.m_backBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.EquipmentReinforceView.cfg.m_backBtn.priority));
    // source line 97, bytecode pc 141
    this.m_reinforceBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.EquipmentReinforceView.cfg.m_reinforceBtn.priority));
},
    setEquipmentData: function(data) {
    // source line 100, bytecode pc 9
    (this.m_equipmentData = data);
    // source line 101, bytecode pc 22
    this.updateView();
},
    setListener: function(listener) {
    // source line 104, bytecode pc 9
    (this.m_listener = listener);
},
    backCallback: function() {
    if (this.b_isReinforced) {
        if (this.m_listener) {
            // source line 110, bytecode pc 39
            this.m_listener.reinforceEquipmentFinished();
        }
    }
    // source line 114, bytecode pc 54
    this.removeFromParent(true);
},
    reinforceCallback: function() {
    var param;
    // source line 118, bytecode pc 23
    (this.m_lastLv = this.m_equipmentData.getLevel());
    // source line 119, bytecode pc 47
    (this.m_lastEffect = this.m_equipmentData.getEffectValue());
    // source line 121, bytecode pc 57
    (param = {});
    // source line 122, bytecode pc 83
    (param.user_equipment_id = this.m_equipmentData.getPkId());
    // source line 123, bytecode pc 123
    xs.Tools.Net.requestEquipmentReinforce(param, this.reinforceSuccessCallback, this);
},
    reinforceSuccessCallback: function(data) {
    // source line 137, bytecode pc 7
    (this.b_isReinforced = true);
    // source line 152, bytecode pc 34
    this.updateView(this.m_lastLv, this.m_lastEffect);
},
    updateView: function(lastLv, lastEffect) {
    var equip, effectName;
    if (this.m_equipmentData) {
        // source line 156, bytecode pc 31
        (equip = this.m_equipmentData.createCardView());
        // source line 157, bytecode pc 64
        equip.setPosition(this.m_equip.getPosition());
        // source line 158, bytecode pc 102
        xs.Utils.Node.attachNodes(this.m_ccbNode, equip);
        // source line 159, bytecode pc 136
        xs.Utils.Node.safeRemoveChild(this.m_equip);
        // source line 160, bytecode pc 146
        (this.m_equip = equip);
        if (lastLv) {
            // source line 173, bytecode pc 233
            this.m_levelUpLab.setString((((xs.Tools.String.createString("str_Worship_lv") + lastLv) + "->") + this.m_equipmentData.getLevel()));
        } else {
            // source line 175, bytecode pc 262
            this.m_levelUpLab.setString("");
        }
        if (lastEffect) {
            // source line 178, bytecode pc 279
            (effectName = "");
            // source line 179, bytecode pc 312
            switch (parseInt(this.m_equipmentData.getEffectType())) {
                case xs.Models.Equipment_Type_Atk:
                // source line 182, bytecode pc 433
                (effectName = xs.Tools.String.createString("auto_name_275"));
                break;
                case xs.Models.Equipment_Type_Def:
                // source line 187, bytecode pc 474
                (effectName = xs.Tools.String.createString("auto_name_276"));
                break;
                case xs.Models.Equipment_Type_Hp:
                // source line 192, bytecode pc 515
                (effectName = xs.Tools.String.createString("auto_name_277"));
                break;
                case xs.Models.Equipment_Type_Int:
                // source line 197, bytecode pc 556
                (effectName = xs.Tools.String.createString("auto_name_278"));
                break;
                default:
                // source line 202, bytecode pc 598
                xs.assert(false, (("equipment type : " + type) + "Error!"));
                break;
            }
            // source line 206, bytecode pc 653
            this.m_changeLab.setString((((effectName + lastEffect) + "->") + this.m_equipmentData.getEffectValue()));
        } else {
            // source line 208, bytecode pc 682
            this.m_changeLab.setString("");
        }
        // source line 217, bytecode pc 751
        this.m_costLab.setString((xs.Tools.String.createString("auto_name_279") + this.m_equipmentData.getUpgradeCoinNeed()));
    } else {
        // source line 220, bytecode pc 776
        this.m_equip.setVisible(false);
        // source line 223, bytecode pc 796
        this.m_equipGradeIcon.setVisible(false);
        // source line 227, bytecode pc 820
        this.m_levelUpLab.setString("");
        // source line 228, bytecode pc 844
        this.m_changeLab.setString("");
        // source line 229, bytecode pc 868
        this.m_costLab.setString("");
    }
    // source line 232, bytecode pc 978
    this.m_totalLab.setString((xs.Tools.String.createString("auto_name_280") + xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerTongQian()));
    if (this.m_equipmentData.isMaxLv()) {
        // source line 235, bytecode pc 1020
        this.m_reinforceBtn.setEnabled(false);
        // source line 236, bytecode pc 1071
        this.m_costLab.setString(xs.Tools.String.createString("auto_name_281"));
    }
}
}));
// source line 242, bytecode pc 164
(xs.Views.EquipmentReinforceView.create = function() {
    var layer;
    // source line 243, bytecode pc 23
    (layer = new xs.Views.EquipmentReinforceView());
    if ((layer && layer.init())) {
        // source line 245, bytecode pc 55
        return layer;
    }
    // source line 248, bytecode pc 57
    return null;
});
// source line 286, bytecode pc 389
(xs.Views.EquipmentReinforceView.cfg = {
    m_backBtn: { priority: -5 },
    m_reinforceBtn: { priority: -5 },
    m_equip: { tag: 10 },
    m_levelLab: { tag: 11 },
    m_equipGradeIcon: { tag: 14 },
    m_equipTypeIcon: { tag: 12 },
    m_equipEffectLab: { tag: 13 },
    m_levelUpLab: { tag: 15 },
    m_changeLab: { tag: 16 },
    m_costLab: { tag: 17 },
    m_totalLab: { tag: 18 }
});
