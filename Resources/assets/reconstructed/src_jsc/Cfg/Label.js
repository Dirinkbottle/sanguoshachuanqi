// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Cfg/Label.js:1
// source line 107, bytecode pc 612
(xs.Cfg.Label = (xs.Cfg.Label || {
    Default: { styleId: "Default", stringId: "0000000" },
    Label_TEST_TTF: { styleId: "Default", stringId: "0000000" },
    Label_TEST_BMF: { styleId: "LS_BMF_Default", stringId: "0000000" },
    Label_LC: { styleId: "LS_LC", stringId: "0000000" },
    Label_RC: { styleId: "LS_RC", stringId: "0000000" },
    Label_Yellow: { styleId: "LS_Yellow", stringId: "0000000" },
    Label_Dungeon_TreasureBoxStar: { styleId: "LS_Dungeon_TreasureBoxStar", stringId: "0000000" },
    Label_BMF_Default: { styleId: "LS_BMF_Default", stringId: "0000000" },
    Label_Fight_TeamPoint_0: { styleId: "LS_fightUI1", stringId: "auto_name_7" },
    Label_Fight_DeathNum_0: { styleId: "LS_fightUI1", stringId: "auto_name_8" },
    Label_Fight_BackupNum: { styleId: "LS_fightUI2", string: "$1/$2" },
    Label_Fight_Round: { styleId: "LS_Lv", stringId: "auto_name_9" },
    Label_IconPartMax_Round: { styleId: "LS_Lv", string: "$1/$2" },
    Label_Fight_Hurt: { styleId: "LS_Fight_Hurt", stringId: "str_fight_hurt" },
    Label_Fight_Cure: { styleId: "LS_Fight_Cure", stringId: "str_fight_cure" },
    Label_Fight_SkillName: { styleId: "LS_Fight_SkillName" },
    Label_Fight_Pvp_LeaderName: { styleId: "LS_piaozi" },
    Label_Fight_Pvp_TeamPoint: { styleId: "LS_TeamPoint" },
    Label_Fight_Exp: { styleId: "LS_Fight_Cure" },
    Label_Fight_Lv: { styleId: "LS_Fight_Hurt" }
}));
// source line 212, bytecode pc 1448
(xs.Cfg.LabelStyle = (xs.Cfg.LabelStyle || {
    Default: {
        alignH: cc.TEXT_ALIGNMENT_CENTER,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_TTF,
        fontId: "Default"
    },
    LS_LC: {
        alignH: cc.TEXT_ALIGNMENT_LEFT,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_TTF,
        fontId: "Default"
    },
    LS_RC: {
        alignH: cc.TEXT_ALIGNMENT_RIGHT,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_TTF,
        fontId: "Default"
    },
    LS_General_Name: {
        alignH: cc.TEXT_ALIGNMENT_CENTER,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_BOTTOM,
        fontType: xs.Constant_FontType_TTF,
        fontId: "Default"
    },
    LS_General_Lv: {
        alignH: cc.TEXT_ALIGNMENT_CENTER,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_TTF,
        fontId: "Default"
    },
    LS_Fight_SkillName: {
        alignH: cc.TEXT_ALIGNMENT_CENTER,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_BMF,
        fontId: "BMF_Fight_SkillName"
    },
    LS_Fight_Hurt: {
        alignH: cc.TEXT_ALIGNMENT_CENTER,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_BMF,
        fontId: "BMF_Fight_Hurt"
    },
    LS_Fight_Cure: {
        alignH: cc.TEXT_ALIGNMENT_CENTER,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_BMF,
        fontId: "BMF_Fight_Cure"
    },
    LS_Yellow: {
        alignH: cc.TEXT_ALIGNMENT_CENTER,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_TTF,
        fontId: "TTF_Yellow"
    },
    LS_Dungeon_TreasureBoxStar: { alignH: cc.TEXT_ALIGNMENT_CENTER, fontType: xs.Constant_FontType_TTF, fontId: "TTF_Yellow" },
    LS_BMF_Default: { alignH: cc.TEXT_ALIGNMENT_CENTER, fontType: xs.Constant_FontType_BMF, fontId: "Default" },
    LS_wujiangName: { alignH: 1, fontType: 2, fontId: "BMF_wujiangName", alignV: 1 },
    LS_TeamPoint: {
        alignH: 1,
        alignV: cc.VERTICAL_TEXT_ALIGNMENT_CENTER,
        fontType: xs.Constant_FontType_TTF,
        fontId: "TTF_piaozi"
    }
}));
