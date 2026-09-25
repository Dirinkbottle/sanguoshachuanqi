// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/TemplatePartStatus.js:1
// source line 28, bytecode pc 230
(xs.Cfg.Skill.template.part.TP_Le_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "le" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status", ui: true },
            timelines: { _play: { aniId: "le_effect" } }
        }
    }
});
// source line 51, bytecode pc 461
(xs.Cfg.Skill.template.part.TP_Nuyan_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (12 / xs.fps) }, _status: { data: { statusId: "nuyan" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_Nuyan", ui: true },
            timelines: { _play: { aniId: "nuyan_effect" } }
        }
    }
});
// source line 75, bytecode pc 692
(xs.Cfg.Skill.template.part.TP_GuiXin_1_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "dun01" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_GuiXin", ui: true },
            timelines: { _play: { aniId: "dun01_effect" } }
        }
    }
});
// source line 98, bytecode pc 923
(xs.Cfg.Skill.template.part.TP_GuiXin_2_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "dun02" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_GuiXin", ui: true },
            timelines: { _play: { aniId: "dun02_effect" } }
        }
    }
});
// source line 121, bytecode pc 1154
(xs.Cfg.Skill.template.part.TP_GuiXin_3_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "dun03" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_GuiXin", ui: true },
            timelines: { _play: { aniId: "dun03_effect" } }
        }
    }
});
// source line 144, bytecode pc 1385
(xs.Cfg.Skill.template.part.TP_GuiXin_4_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "dun04" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_GuiXin", ui: true },
            timelines: { _play: { aniId: "dun04_effect" } }
        }
    }
});
// source line 167, bytecode pc 1616
(xs.Cfg.Skill.template.part.TP_GuiXin_5_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "dun05" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_GuiXin", ui: true },
            timelines: { _play: { aniId: "dun05_effect" } }
        }
    }
});
// source line 190, bytecode pc 1847
(xs.Cfg.Skill.template.part.TP_TianNian_1_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "tiannian01" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_TianNian", ui: true },
            timelines: { _play: { aniId: "tiannian01_effect" } }
        }
    }
});
// source line 213, bytecode pc 2078
(xs.Cfg.Skill.template.part.TP_TianNian_2_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "tiannian02" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_TianNian", ui: true },
            timelines: { _play: { aniId: "tiannian02_effect" } }
        }
    }
});
// source line 236, bytecode pc 2309
(xs.Cfg.Skill.template.part.TP_TianNian_3_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "tiannian03" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_TianNian", ui: true },
            timelines: { _play: { aniId: "tiannian03_effect" } }
        }
    }
});
// source line 259, bytecode pc 2540
(xs.Cfg.Skill.template.part.TP_TianNian_4_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "tiannian04" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_TianNian", ui: true },
            timelines: { _play: { aniId: "tiannian04_effect" } }
        }
    }
});
// source line 282, bytecode pc 2771
(xs.Cfg.Skill.template.part.TP_TianNian_5_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (14 / xs.fps) }, _status: { data: { statusId: "tiannian05" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_TianNian", ui: true },
            timelines: { _play: { aniId: "tiannian05_effect" } }
        }
    }
});
// source line 305, bytecode pc 3002
(xs.Cfg.Skill.template.part.TP_XiaoYong_1_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong01" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong01_effect" } }
        }
    }
});
// source line 328, bytecode pc 3233
(xs.Cfg.Skill.template.part.TP_XiaoYong_2_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong02" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong02_effect" } }
        }
    }
});
// source line 351, bytecode pc 3464
(xs.Cfg.Skill.template.part.TP_XiaoYong_3_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong03" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong03_effect" } }
        }
    }
});
// source line 374, bytecode pc 3695
(xs.Cfg.Skill.template.part.TP_XiaoYong_4_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong04" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong04_effect" } }
        }
    }
});
// source line 397, bytecode pc 3926
(xs.Cfg.Skill.template.part.TP_XiaoYong_5_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong05" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong05_effect" } }
        }
    }
});
// source line 420, bytecode pc 4157
(xs.Cfg.Skill.template.part.TP_XiaoYong_6_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong06" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong06_effect" } }
        }
    }
});
// source line 443, bytecode pc 4388
(xs.Cfg.Skill.template.part.TP_XiaoYong_7_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong07" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong07_effect" } }
        }
    }
});
// source line 466, bytecode pc 4619
(xs.Cfg.Skill.template.part.TP_XiaoYong_8_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong08" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong08_effect" } }
        }
    }
});
// source line 489, bytecode pc 4850
(xs.Cfg.Skill.template.part.TP_XiaoYong_9_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "xiaoyong09" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XiaoYong", ui: true },
            timelines: { _play: { aniId: "xiaoyong09_effect" } }
        }
    }
});
// source line 501, bytecode pc 4962
(xs.Cfg.Skill.template.part.TP_XiaoYong_1_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong01" } } }
        }
    }
});
// source line 512, bytecode pc 5074
(xs.Cfg.Skill.template.part.TP_XiaoYong_2_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong02" } } }
        }
    }
});
// source line 523, bytecode pc 5186
(xs.Cfg.Skill.template.part.TP_XiaoYong_3_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong03" } } }
        }
    }
});
// source line 534, bytecode pc 5298
(xs.Cfg.Skill.template.part.TP_XiaoYong_4_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong04" } } }
        }
    }
});
// source line 545, bytecode pc 5410
(xs.Cfg.Skill.template.part.TP_XiaoYong_5_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong05" } } }
        }
    }
});
// source line 556, bytecode pc 5522
(xs.Cfg.Skill.template.part.TP_XiaoYong_6_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong06" } } }
        }
    }
});
// source line 567, bytecode pc 5634
(xs.Cfg.Skill.template.part.TP_XiaoYong_7_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong07" } } }
        }
    }
});
// source line 578, bytecode pc 5746
(xs.Cfg.Skill.template.part.TP_XiaoYong_8_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong08" } } }
        }
    }
});
// source line 589, bytecode pc 5858
(xs.Cfg.Skill.template.part.TP_XiaoYong_9_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xiaoyong09" } } }
        }
    }
});
// source line 612, bytecode pc 6089
(xs.Cfg.Skill.template.part.TP_JuShou_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "card_back" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_JuShou", ui: true },
            timelines: { _play: { aniId: "card_back_effect" } }
        }
    }
});
// source line 623, bytecode pc 6201
(xs.Cfg.Skill.template.part.TP_JuShou_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "card_back" } } }
        }
    }
});
// source line 646, bytecode pc 6432
(xs.Cfg.Skill.template.part.TP_XueChi_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (9 / xs.fps) }, _status: { data: { statusId: "xuechi" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_XueChi", ui: true },
            timelines: { _play: { aniId: "xuechi_effect" } }
        }
    }
});
// source line 657, bytecode pc 6544
(xs.Cfg.Skill.template.part.TP_XueChi_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xuechi" } } }
        }
    }
});
// source line 668, bytecode pc 6656
(xs.Cfg.Skill.template.part.TP_GuiXin_1_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "dun01" } } }
        }
    }
});
// source line 679, bytecode pc 6768
(xs.Cfg.Skill.template.part.TP_GuiXin_2_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "dun02" } } }
        }
    }
});
// source line 690, bytecode pc 6880
(xs.Cfg.Skill.template.part.TP_GuiXin_3_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "dun03" } } }
        }
    }
});
// source line 701, bytecode pc 6992
(xs.Cfg.Skill.template.part.TP_GuiXin_4_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "dun04" } } }
        }
    }
});
// source line 712, bytecode pc 7104
(xs.Cfg.Skill.template.part.TP_GuiXin_5_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "dun05" } } }
        }
    }
});
// source line 723, bytecode pc 7216
(xs.Cfg.Skill.template.part.TP_TianNian_1_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "tiannian01" } } }
        }
    }
});
// source line 734, bytecode pc 7328
(xs.Cfg.Skill.template.part.TP_TianNian_2_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "tiannian02" } } }
        }
    }
});
// source line 745, bytecode pc 7440
(xs.Cfg.Skill.template.part.TP_TianNian_3_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "tiannian03" } } }
        }
    }
});
// source line 756, bytecode pc 7552
(xs.Cfg.Skill.template.part.TP_TianNian_4_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "tiannian04" } } }
        }
    }
});
// source line 767, bytecode pc 7664
(xs.Cfg.Skill.template.part.TP_TianNian_5_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "tiannian05" } } }
        }
    }
});
// source line 791, bytecode pc 7895
(xs.Cfg.Skill.template.part.TP_Fu_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "fu" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_Fu", ui: true },
            timelines: { _play: { aniId: "fu_effect" } }
        }
    }
});
// source line 814, bytecode pc 8126
(xs.Cfg.Skill.template.part.TP_Yun_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "yun" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_Yun", ui: true },
            timelines: { _play: { aniId: "yun_effect" } }
        }
    }
});
// source line 837, bytecode pc 8357
(xs.Cfg.Skill.template.part.TP_Yun_Begin_From = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin_From",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "yun" } } }
        },
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Status_Yun", ui: true },
            timelines: { _play: { aniId: "yun_effect" } }
        }
    }
});
// source line 864, bytecode pc 8691
(xs.Cfg.Skill.template.part.TP_Feng_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (32 / xs.fps) }, _status: { data: { statusId: "feng" } } },
            property: { ignore: [ "backup", "death", "ghost", "add" ] }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status", ui: true, ignore: [ "backup", "death", "ghost", "add" ] },
            timelines: { _play: { aniId: "feng_effect" } }
        }
    }
});
// source line 875, bytecode pc 8803
(xs.Cfg.Skill.template.part.TP_Le_End = {
    items: {
        _status: { extend: "template.item.TI_CardStatus_End", timelines: { _status: { data: { statusId: "le" } } } }
    }
});
// source line 886, bytecode pc 8915
(xs.Cfg.Skill.template.part.TP_Nuyan_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "nuyan" } } }
        }
    }
});
// source line 897, bytecode pc 9027
(xs.Cfg.Skill.template.part.TP_Yun_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "yun" } } }
        }
    }
});
// source line 908, bytecode pc 9139
(xs.Cfg.Skill.template.part.TP_Fu_End = {
    items: {
        _status: { extend: "template.item.TI_CardStatus_End", timelines: { _status: { data: { statusId: "fu" } } } }
    }
});
// source line 919, bytecode pc 9251
(xs.Cfg.Skill.template.part.TP_Feng_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "feng" } } }
        }
    }
});
// source line 927, bytecode pc 9320
(xs.Cfg.Skill.template.part.TP_Freeze_Begin = { items: { _TI_Freeze_begin: { extend: "template.item.TI_Freeze_Begin" } } });
// source line 933, bytecode pc 9389
(xs.Cfg.Skill.template.part.TP_Freeze_End = { items: { _TI_Freeze_End: { extend: "template.item.TI_Freeze_End" } } });
// source line 939, bytecode pc 9458
(xs.Cfg.Skill.template.part.TP_Lock_Begin = { items: { _TI_Freeze_begin: { extend: "template.item.TI_Lock_Begin" } } });
// source line 945, bytecode pc 9527
(xs.Cfg.Skill.template.part.TP_Lock_End = { items: { _TI_Freeze_End: { extend: "template.item.TI_Lock_End" } } });
// source line 951, bytecode pc 9596
(xs.Cfg.Skill.template.part.TP_Backup_Nuyan_Begin = { items: { _TI_Freeze_begin: { extend: "template.item.TI_Freeze_Begin" } } });
// source line 976, bytecode pc 9827
(xs.Cfg.Skill.template.part.TP_ZaiQi_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "zaiqi" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_ZaiQi", ui: true },
            timelines: { _play: { aniId: "zaiqi_effect" } }
        }
    }
});
// source line 987, bytecode pc 9939
(xs.Cfg.Skill.template.part.TP_ZaiQi_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "zaiqi" } } }
        }
    }
});
// source line 1011, bytecode pc 10170
(xs.Cfg.Skill.template.part.TP_JueJingDun_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "juejing" } } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_JueJing", ui: true },
            timelines: { _play: { aniId: "juejing_effect" } }
        }
    }
});
// source line 1024, bytecode pc 10282
(xs.Cfg.Skill.template.part.TP_JueJingDun_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "juejing" } } }
        }
    }
});
// source line 1037, bytecode pc 10433
(xs.Cfg.Skill.template.part.TP_PoJia_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "pojia" } } }
        }
    }
});
// source line 1049, bytecode pc 10545
(xs.Cfg.Skill.template.part.TP_PoJia_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "pojia" } } }
        }
    }
});
// source line 1062, bytecode pc 10696
(xs.Cfg.Skill.template.part.TP_XuRuo_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "xuruo" } } }
        }
    }
});
// source line 1074, bytecode pc 10808
(xs.Cfg.Skill.template.part.TP_XuRuo_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "xuruo" } } }
        }
    }
});
// source line 1086, bytecode pc 10959
(xs.Cfg.Skill.template.part.TP_FanJi_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin_From",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "fangong" } } }
        }
    }
});
// source line 1098, bytecode pc 11071
(xs.Cfg.Skill.template.part.TP_FanJi_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "fangong" } } }
        }
    }
});
// source line 1111, bytecode pc 11222
(xs.Cfg.Skill.template.part.TP_ZhuiJi_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin_From",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "zhuiji" } } }
        }
    }
});
// source line 1123, bytecode pc 11334
(xs.Cfg.Skill.template.part.TP_ZhuiJi_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "zhuiji" } } }
        }
    }
});
// source line 1138, bytecode pc 11506
(xs.Cfg.Skill.template.part.TP_HuoYan_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            property: { trigger: "yinran_add" },
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "qinyin" } } }
        }
    }
});
// source line 1150, bytecode pc 11657
(xs.Cfg.Skill.template.part.TP_HuoYan_Begin_Copy = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (5 / xs.fps) }, _status: { data: { statusId: "qinyin" } } }
        }
    }
});
// source line 1161, bytecode pc 11769
(xs.Cfg.Skill.template.part.TP_HuoYan_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "qinyin" } } }
        }
    }
});
// source line 1173, bytecode pc 11920
(xs.Cfg.Skill.template.part.TP_Star_1_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star01" } } }
        }
    }
});
// source line 1185, bytecode pc 12071
(xs.Cfg.Skill.template.part.TP_Star_2_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star02" } } }
        }
    }
});
// source line 1197, bytecode pc 12222
(xs.Cfg.Skill.template.part.TP_Star_3_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star03" } } }
        }
    }
});
// source line 1209, bytecode pc 12373
(xs.Cfg.Skill.template.part.TP_Star_4_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star04" } } }
        }
    }
});
// source line 1221, bytecode pc 12524
(xs.Cfg.Skill.template.part.TP_Star_5_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star05" } } }
        }
    }
});
// source line 1233, bytecode pc 12675
(xs.Cfg.Skill.template.part.TP_Star_6_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star06" } } }
        }
    }
});
// source line 1257, bytecode pc 12948
(xs.Cfg.Skill.template.part.TP_Star_7_Begin = {
    items: {
        _status0: {
            property: { type: "to", belong: "to", ignore: [ "backup" ] },
            timelines: [ { type: "createAction", name: "createPlayAniActions", data: { aniId: "ani_idle" } } ]
        },
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (6 / xs.fps) }, _status: { data: { statusId: "star07" } } }
        }
    }
});
// source line 1270, bytecode pc 13099
(xs.Cfg.Skill.template.part.TP_Star_8_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star08" } } }
        }
    }
});
// source line 1283, bytecode pc 13250
(xs.Cfg.Skill.template.part.TP_Star_9_Begin = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_Begin",
            timelines: { _delay: { type: "DelayTime", dp: (7 / xs.fps) }, _status: { data: { statusId: "star09" } } }
        }
    }
});
// source line 1295, bytecode pc 13362
(xs.Cfg.Skill.template.part.TP_Star_1_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star01" } } }
        }
    }
});
// source line 1306, bytecode pc 13474
(xs.Cfg.Skill.template.part.TP_Star_2_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star02" } } }
        }
    }
});
// source line 1317, bytecode pc 13586
(xs.Cfg.Skill.template.part.TP_Star_3_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star03" } } }
        }
    }
});
// source line 1328, bytecode pc 13698
(xs.Cfg.Skill.template.part.TP_Star_4_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star04" } } }
        }
    }
});
// source line 1339, bytecode pc 13810
(xs.Cfg.Skill.template.part.TP_Star_5_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star05" } } }
        }
    }
});
// source line 1350, bytecode pc 13922
(xs.Cfg.Skill.template.part.TP_Star_6_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star06" } } }
        }
    }
});
// source line 1361, bytecode pc 14034
(xs.Cfg.Skill.template.part.TP_Star_7_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star07" } } }
        }
    }
});
// source line 1372, bytecode pc 14146
(xs.Cfg.Skill.template.part.TP_Star_8_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star08" } } }
        }
    }
});
// source line 1383, bytecode pc 14258
(xs.Cfg.Skill.template.part.TP_Star_9_End = {
    items: {
        _status: {
            extend: "template.item.TI_CardStatus_End",
            timelines: { _status: { data: { statusId: "star09" } } }
        }
    }
});
