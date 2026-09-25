// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/PartEffect.js:1
// source line 19, bytecode pc 116
(xs.Cfg.Skill.part.P_LianYing_Effect_Begin = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LianYing" },
            timelines: { _play: { aniId: "ani_from0_begin" } }
        }
    }
});
// source line 34, bytecode pc 233
(xs.Cfg.Skill.part.P_LuoShen_Effect_Begin = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuoShen" },
            timelines: { _play: { aniId: "ani_from_begin" } }
        }
    }
});
// source line 48, bytecode pc 350
(xs.Cfg.Skill.part.P_XiaoJi1_Effect_Begin = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_XiaoJi1" },
            timelines: { _play: { aniId: "ani_from_begin" } }
        }
    }
});
// source line 64, bytecode pc 517
(xs.Cfg.Skill.part.P_Haoshi_Effect_Far_Mid_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Far_Once_From",
            property: { armatureId: "Arm_Fight_HaoShi", pos: { base: "c", offset: cc.p(-260, 0) } },
            timelines: { _play: { aniId: "ani_from_far" } }
        }
    }
});
// source line 80, bytecode pc 684
(xs.Cfg.Skill.part.P_Haoshi_Effect_Near_Mid_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_Once_From",
            property: { armatureId: "Arm_Fight_HaoShi", pos: { base: "c", offset: cc.p(-260, 0) } },
            timelines: { _play: { aniId: "ani_from_near" } }
        }
    }
});
// source line 95, bytecode pc 801
(xs.Cfg.Skill.part.P_HuJia_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Far_From",
            property: { armatureId: "Arm_Fight_HuJian" },
            timelines: { _play: { aniId: "ani_from_far" } }
        }
    }
});
// source line 110, bytecode pc 918
(xs.Cfg.Skill.part.P_HuJia_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_HuJian" },
            timelines: { _play: { aniId: "ani_from02" } }
        }
    }
});
// source line 124, bytecode pc 1035
(xs.Cfg.Skill.part.P_HuJia_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_HuJian" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 139, bytecode pc 1152
(xs.Cfg.Skill.part.P_JieYin_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_To",
            property: { armatureId: "Arm_Fight_JieYin" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 154, bytecode pc 1269
(xs.Cfg.Skill.part.P_JieYinV5_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JieYinV5" },
            timelines: { _play: { aniId: "ani_from_jinjie" } }
        }
    }
});
// source line 172, bytecode pc 1386
(xs.Cfg.Skill.part.P_GuoSe_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Status" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 186, bytecode pc 1503
(xs.Cfg.Skill.part.P_GuoSe_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 205, bytecode pc 1668
(xs.Cfg.Skill.part.P_Nuyan_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Mid_Once_From",
            property: {
                armatureId: "Arm_Fight_Status_Nuyan",
                pos: { base: null, x: 0, y: 0 },
                mirror: [ "rotationY180" ]
            },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 221, bytecode pc 1804
(xs.Cfg.Skill.part.P_Nuyan_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { trigger: [ "boom" ], armatureId: "Arm_Fight_Status_Nuyan" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 237, bytecode pc 1931
(xs.Cfg.Skill.part.P_FanJian_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_FanJian", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 253, bytecode pc 2112
(xs.Cfg.Skill.part.P_FanJian_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: {
                ignore: [ "second", "third", "fourth", "fifth", "sixth", "seventh" ],
                armatureId: "Arm_Fight_FanJian"
            },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 268, bytecode pc 2239
(xs.Cfg.Skill.part.P_FanJian_Effect_To_Second = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { ignore: "first", armatureId: "Arm_Fight_FanJian_v4" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 290, bytecode pc 2356
(xs.Cfg.Skill.part.P_QiXi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QiXi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 305, bytecode pc 2473
(xs.Cfg.Skill.part.P_JueQing_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JueQing" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 319, bytecode pc 2598
(xs.Cfg.Skill.part.P_JueQing_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_JueQing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 336, bytecode pc 2725
(xs.Cfg.Skill.part.P_Mo_LeiJi_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_MoLeiJi", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 351, bytecode pc 2852
(xs.Cfg.Skill.part.P_Mo_LeiJi_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_MoLeiJi", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 366, bytecode pc 2979
(xs.Cfg.Skill.part.P_Mo_LeiJi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_MoLeiJi", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 381, bytecode pc 3096
(xs.Cfg.Skill.part.P_Thunder_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Thunder" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 396, bytecode pc 3221
(xs.Cfg.Skill.part.P_TianXiang_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TianXiang", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 411, bytecode pc 3346
(xs.Cfg.Skill.part.P_TianXiangV3_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TianXiang_jinjie", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 426, bytecode pc 3471
(xs.Cfg.Skill.part.P_BuQu_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_BuQu", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 441, bytecode pc 3596
(xs.Cfg.Skill.part.P_XinSheng_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_XinSheng", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 455, bytecode pc 3713
(xs.Cfg.Skill.part.P_EnYuan_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_EnYuan" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 469, bytecode pc 3830
(xs.Cfg.Skill.part.P_EnYuan_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_EnYuan" },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 484, bytecode pc 3975
(xs.Cfg.Skill.part.P_EnYuan_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_EnYuan", ignore: [ "backup", "fs" ] },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 500, bytecode pc 4092
(xs.Cfg.Skill.part.P_FangZhu_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_FangZhu" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 514, bytecode pc 4209
(xs.Cfg.Skill.part.P_FangZhu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_FangZhu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 531, bytecode pc 4334
(xs.Cfg.Skill.part.P_TianXiang_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TianXiang", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 546, bytecode pc 4459
(xs.Cfg.Skill.part.P_TianXiangV3_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TianXiang_jinjie", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 561, bytecode pc 4576
(xs.Cfg.Skill.part.P_NiePan_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_NiePan" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 575, bytecode pc 4693
(xs.Cfg.Skill.part.P_HuiTian_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_HuiTian" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 594, bytecode pc 4849
(xs.Cfg.Skill.part.P_HuiTian_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Mid_Once_From",
            property: { armatureId: "Arm_Fight_HuiTian", scale: 1.2, pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 612, bytecode pc 4974
(xs.Cfg.Skill.part.P_JiuShi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JiuShi", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from01" } }
        }
    }
});
// source line 629, bytecode pc 5126
(xs.Cfg.Skill.part.P_JiuShi_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Mid_Once_From",
            property: { armatureId: "Arm_Fight_JiuShi", pos: { base: null, x: 0, y: 0 }, ui: true },
            timelines: { _play: { aniId: "ani_from02" } }
        }
    }
});
// source line 646, bytecode pc 5243
(xs.Cfg.Skill.part.P_JiuYuan_Effect_From01 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JiuYuan" },
            timelines: { _play: { aniId: "ani_from01" } }
        }
    }
});
// source line 660, bytecode pc 5360
(xs.Cfg.Skill.part.P_JiuYuan_Effect_From02 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JiuYuan" },
            timelines: { _play: { aniId: "ani_from02" } }
        }
    }
});
// source line 675, bytecode pc 5477
(xs.Cfg.Skill.part.P_DuJin_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_DuJin" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 693, bytecode pc 5594
(xs.Cfg.Skill.part.P_LiJian_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LiJian" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 709, bytecode pc 5711
(xs.Cfg.Skill.part.P_KuangGu_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_KuangGu" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 723, bytecode pc 5828
(xs.Cfg.Skill.part.P_DuanLiang_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_DuanLiang" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 751, bytecode pc 6054
(xs.Cfg.Skill.part.P_KuRou_Effect_From_Loop = {
    extend: [ "part.P_Atk_Add_From", "template.part.TP_Hurt_From" ],
    property: { loopCtrl: "n-1" },
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_KuRou" },
            timelines: { _play: { aniId: "ani_from" } }
        },
        _effect: { timelines: { _card: { data: { aniId: "ani_hit_normal" } } } },
        _to_hp_bot: null
    }
});
// source line 763, bytecode pc 6167
(xs.Cfg.Skill.part.P_Hurt_Effect_From = {
    extend: "template.part.TP_Hurt_From",
    items: { _effect: { timelines: { _card: { data: { aniId: "ani_hit_normal" } } } }, _to_hp_bot: null }
});
// source line 799, bytecode pc 6284
(xs.Cfg.Skill.part.P_PaoXiao_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_PaoXiao" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 813, bytecode pc 6401
(xs.Cfg.Skill.part.P_PaoXiao_Effect_From_Evil = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_PaoXiao_Evil" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 827, bytecode pc 6518
(xs.Cfg.Skill.part.P_PaoXiao_Effect_To_Evil = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_PaoXiao_Evil" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 841, bytecode pc 6635
(xs.Cfg.Skill.part.P_MoKuRou_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_MoKuRou" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 855, bytecode pc 6752
(xs.Cfg.Skill.part.P_MoKuRou_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_MoKuRou" },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 869, bytecode pc 6869
(xs.Cfg.Skill.part.P_MoKuRou_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_MoKuRou" },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 883, bytecode pc 6986
(xs.Cfg.Skill.part.P_DuanLiang_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_DuanLiang" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 898, bytecode pc 7103
(xs.Cfg.Skill.part.P_YiJi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_YiJi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 911, bytecode pc 7220
(xs.Cfg.Skill.part.P_YiJi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_YiJi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 925, bytecode pc 7337
(xs.Cfg.Skill.part.P_JianXiong_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JianXiong" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 938, bytecode pc 7454
(xs.Cfg.Skill.part.P_JianXiong_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Buff" },
            timelines: { _play: { aniId: "ani_buff_down" } }
        }
    }
});
// source line 952, bytecode pc 7571
(xs.Cfg.Skill.part.P_QuHu_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QuHu" },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 966, bytecode pc 7688
(xs.Cfg.Skill.part.P_QuHu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_UI_To",
            property: { armatureId: "Arm_Fight_QuHu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 980, bytecode pc 7805
(xs.Cfg.Skill.part.P_FangQuan_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_FangQuan" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 993, bytecode pc 7922
(xs.Cfg.Skill.part.P_FangQuan_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_UI_To",
            property: { armatureId: "Arm_Fight_FangQuan" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1007, bytecode pc 8039
(xs.Cfg.Skill.part.P_MingCe_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_UI_To",
            property: { armatureId: "Arm_Fight_MingCe" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1024, bytecode pc 8156
(xs.Cfg.Skill.part.P_YaoWu_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Skill_YaoWu" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1039, bytecode pc 8283
(xs.Cfg.Skill.part.P_YaoWu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Skill_YaoWu", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1054, bytecode pc 8400
(xs.Cfg.Skill.part.P_QingNang_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QingNang" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1077, bytecode pc 8525
(xs.Cfg.Skill.part.P_QingNangDun_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_MianYi", rotationY: 180 },
            timelines: { _play: { aniId: "ani_mianyi" } }
        }
    }
});
// source line 1092, bytecode pc 8642
(xs.Cfg.Skill.part.P_WuSheng_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_WuSheng" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1106, bytecode pc 8759
(xs.Cfg.Skill.part.P_DangXian_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_DangXian" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1120, bytecode pc 8876
(xs.Cfg.Skill.part.P_XueShang_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_XueShang" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1134, bytecode pc 8993
(xs.Cfg.Skill.part.P_XueShang_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_XueShang" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1148, bytecode pc 9110
(xs.Cfg.Skill.part.P_LongYin_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LongYin" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1163, bytecode pc 9235
(xs.Cfg.Skill.part.P_LuanWu_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuanWu", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 1178, bytecode pc 9360
(xs.Cfg.Skill.part.P_LuanWu_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuanWu", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 1198, bytecode pc 9526
(xs.Cfg.Skill.part.P_LuanWu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LuanWu", mirror: [ "rotationY180" ] },
            timelines: { _play: { aniId: "ani_to" } },
            rotationY180: { property: { rotationY: 180 } }
        }
    }
});
// source line 1222, bytecode pc 9722
(xs.Cfg.Skill.part.P_LuanWu_Effect_To_NFS = {
    property: { ignore: [ "fs" ] },
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LuanWu", mirror: [ "rotationY180" ] },
            timelines: { _play: { aniId: "ani_to" } },
            rotationY180: { property: { rotationY: 180 } }
        }
    }
});
// source line 1237, bytecode pc 9839
(xs.Cfg.Skill.part.P_GanLu_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_GanLu" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1251, bytecode pc 9956
(xs.Cfg.Skill.part.P_GanLu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GanLu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1266, bytecode pc 10073
(xs.Cfg.Skill.part.P_GanLu_V5_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_GanLu_V5" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1280, bytecode pc 10190
(xs.Cfg.Skill.part.P_GanLu_V5_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GanLu_V5" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1298, bytecode pc 10342
(xs.Cfg.Skill.part.P_RaoShe_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Mid_Once_From_Near",
            property: { armatureId: "Arm_Fight_RaoShe", pos: { base: null, x: 0, y: 0 }, ui: true },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1312, bytecode pc 10459
(xs.Cfg.Skill.part.P_RaoShe_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_RaoShe" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1327, bytecode pc 10576
(xs.Cfg.Skill.part.P_TongJi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TongJi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1341, bytecode pc 10693
(xs.Cfg.Skill.part.P_TongJi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TongJi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1357, bytecode pc 10810
(xs.Cfg.Skill.part.P_SPLuanJi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_SPLuanJi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1371, bytecode pc 10927
(xs.Cfg.Skill.part.P_SPLuanJi_Effect_From_Extra = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_SPLuanJi" },
            timelines: { _play: { aniId: "ani_from_extra" } }
        }
    }
});
// source line 1385, bytecode pc 11044
(xs.Cfg.Skill.part.P_SPLuanJi_Effect_To1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_SPLuanJi" },
            timelines: { _play: { aniId: "ani_to1" } }
        }
    }
});
// source line 1400, bytecode pc 11161
(xs.Cfg.Skill.part.P_SPLuanJi_Effect_To2 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_SPLuanJi" },
            timelines: { _play: { aniId: "ani_to2" } }
        }
    }
});
// source line 1416, bytecode pc 11297
(xs.Cfg.Skill.part.P_ShuangXiong_Effect_To_BaoJi = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { trigger: [ "baoji" ], armatureId: "Arm_Fight_ShuangXiong_V5" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1431, bytecode pc 11414
(xs.Cfg.Skill.part.P_BaoJi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ShuangXiong_V5" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1447, bytecode pc 11531
(xs.Cfg.Skill.part.P_ShuangXiong_Effect_To_Left = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ShuangXiong" },
            timelines: { _play: { aniId: "ani_to_left" } }
        }
    }
});
// source line 1462, bytecode pc 11648
(xs.Cfg.Skill.part.P_ShuangXiong_Effect_To_Right = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ShuangXiong" },
            timelines: { _play: { aniId: "ani_to_right" } }
        }
    }
});
// source line 1479, bytecode pc 11765
(xs.Cfg.Skill.part.P_TongJi_Effect_From_Far = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_Far_From",
            property: { armatureId: "Arm_Fight_TongJi" },
            timelines: { _play: { aniId: "ani_from_far" } }
        }
    }
});
// source line 1496, bytecode pc 11890
(xs.Cfg.Skill.part.P_QiCai_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QiCai", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 1511, bytecode pc 12007
(xs.Cfg.Skill.part.P_GuiCai_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_GuiCai" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1527, bytecode pc 12132
(xs.Cfg.Skill.part.P_QiCai_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QiCai", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 1541, bytecode pc 12257
(xs.Cfg.Skill.part.P_QiCai_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QiCai", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1555, bytecode pc 12374
(xs.Cfg.Skill.part.P_QiCai_Effect_ToR = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QiCai" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1571, bytecode pc 12491
(xs.Cfg.Skill.part.P_GuiCai_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To_Backup",
            property: { armatureId: "Arm_Fight_GuiCai" },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 1589, bytecode pc 12608
(xs.Cfg.Skill.part.P_GuiCai_Effect_hurt = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To_Backup",
            property: { armatureId: "Arm_Fight_GuiCai" },
            timelines: { _play: { aniId: "ani_hurt" } }
        }
    }
});
// source line 1604, bytecode pc 12725
(xs.Cfg.Skill.part.P_LuanJi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuanJi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1617, bytecode pc 12842
(xs.Cfg.Skill.part.P_LuanJi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LuanJi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1631, bytecode pc 12959
(xs.Cfg.Skill.part.P_XingWu_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_XingWu" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1644, bytecode pc 13076
(xs.Cfg.Skill.part.P_XingWu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_XingWu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1658, bytecode pc 13193
(xs.Cfg.Skill.part.P_TiaoXin_Effect_to = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TiaoXin" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1672, bytecode pc 13310
(xs.Cfg.Skill.part.P_TiaoXin_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TiaoXin" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 1686, bytecode pc 13427
(xs.Cfg.Skill.part.P_TiaoXin_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TiaoXin" },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 1700, bytecode pc 13544
(xs.Cfg.Skill.part.P_FenCheng_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_FenCheng" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1713, bytecode pc 13661
(xs.Cfg.Skill.part.P_FenCheng_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_FenCheng" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1727, bytecode pc 13778
(xs.Cfg.Skill.part.P_XuanFeng_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_XuanFeng" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1740, bytecode pc 13895
(xs.Cfg.Skill.part.P_XuanFeng_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_XuanFeng" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1757, bytecode pc 14012
(xs.Cfg.Skill.part.P_WuShuang_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_WuShuang" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1771, bytecode pc 14129
(xs.Cfg.Skill.part.P_WuShuangV3_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_WuShuangV3" },
            timelines: { _play: { aniId: "ani_to_wushuang" } }
        }
    }
});
// source line 1801, bytecode pc 14246
(xs.Cfg.Skill.part.P_YiZhong_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_YiZhong" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1832, bytecode pc 14445
(xs.Cfg.Skill.part.P_GangLie_Effect = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_GangLie" },
            timelines: { _play: { aniId: "ani_from0" } }
        },
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GangLie", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 1848, bytecode pc 14562
(xs.Cfg.Skill.part.P_GuHuoA_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_GuHuo" },
            timelines: { _play: { aniId: "ani_from0_b" } }
        }
    }
});
// source line 1864, bytecode pc 14687
(xs.Cfg.Skill.part.P_TuXi_Effect_From0 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TuXi", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 1879, bytecode pc 14812
(xs.Cfg.Skill.part.P_TuXi_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TuXi", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 1895, bytecode pc 14947
(xs.Cfg.Skill.part.P_TuXi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TuXi", type: "armature_fight", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 1912, bytecode pc 15064
(xs.Cfg.Skill.part.P_JuShou_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JuShou" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1926, bytecode pc 15181
(xs.Cfg.Skill.part.P_JuShou_Effect_From_V4 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Status_JuShou_Back" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1940, bytecode pc 15298
(xs.Cfg.Skill.part.P_LianPo_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LianPo" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1958, bytecode pc 15425
(xs.Cfg.Skill.part.P_YingZi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_YingZi", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1973, bytecode pc 15548
(xs.Cfg.Skill.part.P_LongDan_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LongDan", ui: true },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 1989, bytecode pc 15671
(xs.Cfg.Skill.part.P_LongDan_Buff_Add_From = {
    items: {
        _from_add_buffs: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_SkillName", ui: true },
            timelines: { _play: { aniId: "ani_buff_atkdef_add" } }
        }
    }
});
// source line 2006, bytecode pc 15794
(xs.Cfg.Skill.part.P_Buff_AtkDef_Add_To = {
    items: {
        _from_add_buffs: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_SkillName", ui: true },
            timelines: { _play: { aniId: "ani_buff_atkdef_add" } }
        }
    }
});
// source line 2025, bytecode pc 15942
(xs.Cfg.Skill.part.P_JiAng_Effect_From_Loop_Hit = {
    property: { loopCtrl: "n-1" },
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JiAng", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_from_loop_hit" } }
        }
    }
});
// source line 2040, bytecode pc 16069
(xs.Cfg.Skill.part.P_JiAng_Effect_From_Over = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JiAng", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_from_over" } }
        }
    }
});
// source line 2055, bytecode pc 16209
(xs.Cfg.Skill.part.P_JiAng_Atk_Add_From = {
    extend: [ "part.P_Atk_Add_To" ],
    items: { _buff: { property: { pos: { base: "to", offset: cc.p(-170, 0) }, ui: true } } }
});
// source line 2070, bytecode pc 16326
(xs.Cfg.Skill.part.P_ZhiHeng_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhiHeng" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2083, bytecode pc 16443
(xs.Cfg.Skill.part.P_ZhiHeng_Atk_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhiHeng" },
            timelines: { _play: { aniId: "ani_to_atk" } }
        }
    }
});
// source line 2096, bytecode pc 16560
(xs.Cfg.Skill.part.P_ZhiHeng_Def_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhiHeng" },
            timelines: { _play: { aniId: "ani_to_def" } }
        }
    }
});
// source line 2112, bytecode pc 16685
(xs.Cfg.Skill.part.P_QiCe_Dmg_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QiCe", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to_dmg" } }
        }
    }
});
// source line 2126, bytecode pc 16810
(xs.Cfg.Skill.part.P_QiCe_Cure_Effect_Near_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Near_Once_From",
            property: { armatureId: "Arm_Fight_QiCe", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from_near" } }
        }
    }
});
// source line 2143, bytecode pc 16935
(xs.Cfg.Skill.part.P_GuHuoA_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GuHuo", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0_b" } }
        }
    }
});
// source line 2158, bytecode pc 17052
(xs.Cfg.Skill.part.P_GuHuoB_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_GuHuo" },
            timelines: { _play: { aniId: "ani_from0_a" } }
        }
    }
});
// source line 2174, bytecode pc 17177
(xs.Cfg.Skill.part.P_GuHuoB_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GuHuo", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0_a" } }
        }
    }
});
// source line 2188, bytecode pc 17294
(xs.Cfg.Skill.part.P_GuiXin_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_GuiXin" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2202, bytecode pc 17411
(xs.Cfg.Skill.part.P_GuiXin_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GuiXin" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2216, bytecode pc 17528
(xs.Cfg.Skill.part.P_ZhaoXin_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhaoXin" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2234, bytecode pc 17666
(xs.Cfg.Skill.part.P_ZhaoXin_Effect_To = {
    property: { ignore: "fs" },
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ZhaoXin" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2249, bytecode pc 17783
(xs.Cfg.Skill.part.P_QiangXi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QiangXi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2262, bytecode pc 17900
(xs.Cfg.Skill.part.P_QiangXi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QiangXi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2277, bytecode pc 18017
(xs.Cfg.Skill.part.P_XueJi_Effect_To_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_XueJi" },
            timelines: { _play: { aniId: "ani_to_mid" } }
        }
    }
});
// source line 2290, bytecode pc 18134
(xs.Cfg.Skill.part.P_XueJi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_XueJi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2305, bytecode pc 18251
(xs.Cfg.Skill.part.P_WuQian_Effect_From_Near = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Near_From",
            property: { armatureId: "Arm_Fight_WuQian" },
            timelines: { _play: { aniId: "ani_from_near" } }
        }
    }
});
// source line 2319, bytecode pc 18368
(xs.Cfg.Skill.part.P_WuQian_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_WuQian" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2333, bytecode pc 18485
(xs.Cfg.Skill.part.P_JiJiang_Effect_From1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JiJiang" },
            timelines: { _play: { aniId: "ani_from01" } }
        }
    }
});
// source line 2347, bytecode pc 18602
(xs.Cfg.Skill.part.P_JiJiang_Effect_To_FS = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To_FS",
            property: { armatureId: "Arm_Fight_JiJiang" },
            timelines: { _play: { aniId: "ani_from02" } }
        }
    }
});
// source line 2361, bytecode pc 18719
(xs.Cfg.Skill.part.P_JiJiang_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To_NFS",
            property: { armatureId: "Arm_Fight_JiJiang" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2375, bytecode pc 18836
(xs.Cfg.Skill.part.P_QiangWu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QiangWu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2389, bytecode pc 18984
(xs.Cfg.Skill.part.P_QiangWu_Effect_To_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_QiangWu", pos: { base: null, x: 240, y: 0 } },
            timelines: { _play: { aniId: "ani_to_mid" } }
        }
    }
});
// source line 2407, bytecode pc 19168
(xs.Cfg.Skill.part.P_QiangWu_Effect_To_Far = {
    items: {
        _effect_qiangwu_to_far: {
            extend: "template.item.TI_Arm_To",
            property: {
                parent: "far",
                type: "armature",
                belong: "to_tmp",
                armatureId: "Arm_Fight_QiangWu",
                pos: { base: null, x: 0, y: 0 },
                rotationY: 180
            },
            timelines: { _play: { aniId: "ani_to_far" } }
        }
    }
});
// source line 2424, bytecode pc 19285
(xs.Cfg.Skill.part.P_YingHun_Effect_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_YingHun" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2440, bytecode pc 19402
(xs.Cfg.Skill.part.P_YingHun_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_YingHun" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2459, bytecode pc 19548
(xs.Cfg.Skill.part.P_WuShuang_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_From",
            property: { armatureId: "Arm_Fight_WuShuang", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from_mid" } }
        }
    }
});
// source line 2485, bytecode pc 19694
(xs.Cfg.Skill.part.P_TianZhao_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_From_Near",
            property: { armatureId: "Arm_Fight_TianZhao", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from_mid" } }
        }
    }
});
// source line 2503, bytecode pc 19840
(xs.Cfg.Skill.part.P_GuiPu_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_From_Near",
            property: { armatureId: "Arm_Fight_GuiPu", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from_mid" } }
        }
    }
});
// source line 2517, bytecode pc 19957
(xs.Cfg.Skill.part.P_GuiPu_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GuiPu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2536, bytecode pc 20074
(xs.Cfg.Skill.part.P_ZhengNan_Effect_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhengNan" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2550, bytecode pc 20191
(xs.Cfg.Skill.part.P_ZhengNan_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ZhengNan" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2569, bytecode pc 20308
(xs.Cfg.Skill.part.P_ZhiDao_Effect_From_01 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhiDao" },
            timelines: { _play: { aniId: "ani_from_01" } }
        }
    }
});
// source line 2585, bytecode pc 20425
(xs.Cfg.Skill.part.P_ZhiDao_Effect_From_02 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhiDao" },
            timelines: { _play: { aniId: "ani_from_02" } }
        }
    }
});
// source line 2599, bytecode pc 20542
(xs.Cfg.Skill.part.P_ZhiDao_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ZhiDao" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2610, bytecode pc 20614
(xs.Cfg.Skill.part.P_JiLi_Effect_To_Add = { extend: "part.P_ZhengNan_Effect_From", property: { trigger: [ "add" ] } });
// source line 2617, bytecode pc 20686
(xs.Cfg.Skill.part.P_JiLi_Effect_To_Reduce = { extend: "part.P_ZhengNan_Effect_To", property: { trigger: [ "reduce" ] } });
// source line 2626, bytecode pc 20749
(xs.Cfg.Skill.part.P_Atk_Add_To_Add = { extend: "part.P_Atk_Add_To", property: { trigger: "add" } });
// source line 2634, bytecode pc 20812
(xs.Cfg.Skill.part.P_Atk_Sub_To_Reduce = { extend: "part.P_Atk_Sub_To", property: { trigger: "reduce" } });
// source line 2652, bytecode pc 20929
(xs.Cfg.Skill.part.P_MuMu_Effect_From_01 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_MuMu" },
            timelines: { _play: { aniId: "ani_from_01" } }
        }
    }
});
// source line 2668, bytecode pc 21075
(xs.Cfg.Skill.part.P_MuMu_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_From_Near",
            property: { armatureId: "Arm_Fight_MuMu", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from_02" } }
        }
    }
});
// source line 2682, bytecode pc 21192
(xs.Cfg.Skill.part.P_MuMu_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_MuMu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2696, bytecode pc 21309
(xs.Cfg.Skill.part.P_FuHun_Effect_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_FuHun" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2709, bytecode pc 21426
(xs.Cfg.Skill.part.P_FuHun_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_FuHun" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2723, bytecode pc 21543
(xs.Cfg.Skill.part.P_PanDing_Effect_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_PanDing" },
            timelines: { _play: { aniId: "ani_panding" } }
        }
    }
});
// source line 2738, bytecode pc 21679
(xs.Cfg.Skill.part.P_PanDing_Effect_From01 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { trigger: [ "fail" ], armatureId: "Arm_Fight_PanDing" },
            timelines: { _play: { aniId: "ani_shibai" } }
        }
    }
});
// source line 2753, bytecode pc 21815
(xs.Cfg.Skill.part.P_PanDing_Effect_From02 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { trigger: [ "win" ], armatureId: "Arm_Fight_PanDing" },
            timelines: { _play: { aniId: "ani_chenggong" } }
        }
    }
});
// source line 2768, bytecode pc 21951
(xs.Cfg.Skill.part.P_PanDing_Effect_From03 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { trigger: [ "success" ], armatureId: "Arm_Fight_PanDing" },
            timelines: { _play: { aniId: "ani_dachenggong" } }
        }
    }
});
// source line 2783, bytecode pc 22076
(xs.Cfg.Skill.part.P_PanDing_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_PanDing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_panding" } }
        }
    }
});
// source line 2799, bytecode pc 22220
(xs.Cfg.Skill.part.P_PanDing_Effect_To01 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { trigger: [ "fail" ], armatureId: "Arm_Fight_PanDing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_shibai" } }
        }
    }
});
// source line 2815, bytecode pc 22364
(xs.Cfg.Skill.part.P_PanDing_Effect_To02 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { trigger: [ "win" ], armatureId: "Arm_Fight_PanDing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_chenggong" } }
        }
    }
});
// source line 2831, bytecode pc 22508
(xs.Cfg.Skill.part.P_PanDing_Effect_To03 = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { trigger: [ "success" ], armatureId: "Arm_Fight_PanDing", rotationY: 180 },
            timelines: { _play: { aniId: "ani_dachenggong" } }
        }
    }
});
// source line 2845, bytecode pc 22625
(xs.Cfg.Skill.part.P_SPLeiJi_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_SPLeiJi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2859, bytecode pc 22742
(xs.Cfg.Skill.part.P_SPTieQi_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_SPTieQi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2873, bytecode pc 22859
(xs.Cfg.Skill.part.P_YiCong_Effect_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_YiCong_V5" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2887, bytecode pc 22976
(xs.Cfg.Skill.part.P_YingBing_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_YiBing_V3" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2911, bytecode pc 23122
(xs.Cfg.Skill.part.P_YanYan_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_From_Near",
            property: { armatureId: "Arm_Fight_YanYan", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from_mid" } }
        }
    }
});
// source line 2932, bytecode pc 23268
(xs.Cfg.Skill.part.P_BaiYin_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_From_Near",
            property: { armatureId: "Arm_Fight_BaiYin", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 2949, bytecode pc 23385
(xs.Cfg.Skill.part.P_TianZhao_Effect_To = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TianZhao" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 2968, bytecode pc 23533
(xs.Cfg.Skill.part.P_HuoJi_Effect_To_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_Fire", pos: { base: null, x: 240, y: 0 } },
            timelines: { _play: { aniId: "ani_to_mid" } }
        }
    }
});
// source line 2987, bytecode pc 23683
(xs.Cfg.Skill.part.P_ZhuiKong_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_From",
            property: { armatureId: "Arm_Fight_ZhuiKong", pos: { base: null, x: -240, y: 0 } },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3006, bytecode pc 23831
(xs.Cfg.Skill.part.P_QiaoBian_Effect_To_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_KuLou", pos: { base: null, x: 240, y: 0 } },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3021, bytecode pc 23977
(xs.Cfg.Skill.part.P_HuJia_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_HuJia_v4", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3036, bytecode pc 24123
(xs.Cfg.Skill.part.P_TunTian_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_TunTian", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3064, bytecode pc 24240
(xs.Cfg.Skill.part.P_PoJun_Effect_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_PoJun" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3078, bytecode pc 24357
(xs.Cfg.Skill.part.P_ZaiQi_Effect_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZaiQi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3093, bytecode pc 24503
(xs.Cfg.Skill.part.P_PoJun_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_PoJun", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3108, bytecode pc 24649
(xs.Cfg.Skill.part.P_JiJiang_Effect_From1_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_JiJaing_v5", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3123, bytecode pc 24795
(xs.Cfg.Skill.part.P_JiJiang_Effect_From2_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_JiJaing_v5", pos: { base: null, x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from_" } }
        }
    }
});
// source line 3143, bytecode pc 24951
(xs.Cfg.Skill.part.P_HuoJi_Effect_To_Mid_RY = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_Fire", pos: { base: null, x: 240, y: 0 }, rotationY: 180 },
            timelines: { _play: { aniId: "ani_to_mid" } }
        }
    }
});
// source line 3162, bytecode pc 25148
(xs.Cfg.Skill.part.P_LiJian_Effect_From_Mid = {
    items: {
        _Near_Fire: {
            property: {
                parent: "mid",
                type: "armature",
                armatureId: "Arm_Fight_LiJian",
                belong: "from_once_tmp",
                rotationY: 180
            },
            timelines: {
                _show: { type: "Show" },
                _play: { type: "createPlayAction", aniId: "ani_from_mid" },
                _hide: { type: "Hide" }
            }
        }
    }
});
// source line 3202, bytecode pc 25479
(xs.Cfg.Skill.part.P_LiJian_Effect_To_Near = {
    items: {
        _Near_Fire: {
            property: {
                parent: "near",
                type: "armature",
                ui: true,
                armatureId: "Arm_Fight_LiJian",
                belong: "to_once_tmp",
                bones: [
                    { key: "juese01", ope: "changeDisplay", skin: { type: "sprite", tos: true, idx: 0 } },
                    { key: "juese02", ope: "changeDisplay", skin: { type: "sprite", tos: true, idx: 1 } }
                ]
            },
            timelines: {
                _show: { type: "Show" },
                _play: { type: "createPlayAction", aniId: "ani_to_near" },
                _hide: { type: "Hide" }
            }
        }
    }
});
// source line 3221, bytecode pc 25627
(xs.Cfg.Skill.part.P_RenDe_Effect_To_Mid = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_RenDe", pos: { base: null, x: 240, y: 0 } },
            timelines: { _play: { aniId: "ani_to_mid" } }
        }
    }
});
// source line 3240, bytecode pc 25777
(xs.Cfg.Skill.part.P_Effect_WuHun_From_Far = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_Far_Once_To",
            property: { armatureId: "Arm_Fight_WuHun", pos: { base: "from", x: 0, y: 0 } },
            timelines: { _play: { aniId: "ani_from_far" } }
        }
    }
});
// source line 3254, bytecode pc 25894
(xs.Cfg.Skill.part.P_Effect_WuHun_From = {
    items: {
        _Near_Fire: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_WuHun" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3293, bytecode pc 26109
(xs.Cfg.Skill.part.P_ShenFen_Effect_To = {
    items: {
        _to_mid: {
            extend: "template.item.TI_Arm_Mid_Once_To",
            property: { armatureId: "Arm_Fight_ShenFen", pos: null, rotationY: 180 },
            timelines: { _play: { aniId: "ani_to_mid" } }
        },
        _to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ShenFen", type: "armature_fight" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3307, bytecode pc 26226
(xs.Cfg.Skill.part.P_ShenFen_Effect_From = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ShenFen" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3321, bytecode pc 26343
(xs.Cfg.Skill.part.P_FuLuan_Effect_From = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_FuLuan" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3335, bytecode pc 26460
(xs.Cfg.Skill.part.P_FuLuan_Effect_To = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_FuLuan" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3349, bytecode pc 26577
(xs.Cfg.Skill.part.P_Fu_Effect_From = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_SheFu" },
            timelines: { _play: { aniId: "ani_to_debuff" } }
        }
    }
});
// source line 3364, bytecode pc 26694
(xs.Cfg.Skill.part.P_SheFu_Effect_From = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_SheFu" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3378, bytecode pc 26811
(xs.Cfg.Skill.part.P_SheFu_Effect_To0_Far = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_Far_Once_To",
            property: { armatureId: "Arm_Fight_SheFu" },
            timelines: { _play: { aniId: "ani_to_far" } }
        }
    }
});
// source line 3392, bytecode pc 26928
(xs.Cfg.Skill.part.P_SheFu_Effect_To1 = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_SheFu" },
            timelines: { _play: { aniId: "ani_to1" } }
        }
    }
});
// source line 3407, bytecode pc 27045
(xs.Cfg.Skill.part.P_LuoYi_Effect_From = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LuoYi" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 3421, bytecode pc 27170
(xs.Cfg.Skill.part.P_LuoYi_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LuoYi", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 3436, bytecode pc 27287
(xs.Cfg.Skill.part.P_LieGong_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LieGong" },
            timelines: { _play: { aniId: "ani_from0" } }
        }
    }
});
// source line 3456, bytecode pc 27443
(xs.Cfg.Skill.part.P_JianYing_Effect_From = {
    property: { loopCtrl: "n-3", delaySpawn: (25 / xs.fps) },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_JianYing" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3471, bytecode pc 27568
(xs.Cfg.Skill.part.P_LieGong_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LieGong", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to0" } }
        }
    }
});
// source line 3487, bytecode pc 27685
(xs.Cfg.Skill.part.P_XianZhen_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_XianZhen" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3500, bytecode pc 27802
(xs.Cfg.Skill.part.P_XianZhen_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_XianZhen" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3514, bytecode pc 27919
(xs.Cfg.Skill.part.P_LongDan_Effect_From1 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LongDan2" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3529, bytecode pc 28046
(xs.Cfg.Skill.part.P_LongDan_Effect_To_NoFs = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LongDan2", ignore: "fs" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3543, bytecode pc 28194
(xs.Cfg.Skill.part.P_Gongxin_Effect_From_Mid = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_Near_Once_From",
            property: { armatureId: "Arm_Fight_GongXin", pos: { base: null, x: 250, y: 0 } },
            timelines: { _play: { aniId: "ani_to_near" } }
        }
    }
});
// source line 3556, bytecode pc 28311
(xs.Cfg.Skill.part.P_Gongxin_Effect_To1 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_GongXin" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3569, bytecode pc 28428
(xs.Cfg.Skill.part.P_Gongxin_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_GongXin" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3583, bytecode pc 28545
(xs.Cfg.Skill.part.P_ShenSu_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ShenSu" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3596, bytecode pc 28662
(xs.Cfg.Skill.part.P_ShenSu_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ShenSu" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3611, bytecode pc 28779
(xs.Cfg.Skill.part.P_XiaoQi_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_XiaoQi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3625, bytecode pc 28896
(xs.Cfg.Skill.part.P_QiaoBianAfter_Effect_From0 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QiaoBian" },
            timelines: { _play: { aniId: "ani_from0_far" } }
        }
    }
});
// source line 3639, bytecode pc 29013
(xs.Cfg.Skill.part.P_QiaoBianAfter_Effect_From1 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QiaoBian" },
            timelines: { _play: { aniId: "ani_from1" } }
        }
    }
});
// source line 3653, bytecode pc 29130
(xs.Cfg.Skill.part.P_QiaoBianAfter_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QiaoBian" },
            timelines: { _play: { aniId: "ani_to1" } }
        }
    }
});
// source line 3667, bytecode pc 29247
(xs.Cfg.Skill.part.P_QiaoBianBefore_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_QiaoBian" },
            timelines: { _play: { aniId: "ani_from2_far" } }
        }
    }
});
// source line 3681, bytecode pc 29364
(xs.Cfg.Skill.part.P_QiaoBianBefore_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_QiaoBian" },
            timelines: { _play: { aniId: "ani_to2" } }
        }
    }
});
// source line 3695, bytecode pc 29481
(xs.Cfg.Skill.part.P_ZhuiKong_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_ZhuiKong" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3709, bytecode pc 29598
(xs.Cfg.Skill.part.P_ZhuiKong_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ZhuiKong" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3723, bytecode pc 29715
(xs.Cfg.Skill.part.P_ZhuiKong_Effect_To_Far = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_ZhuiKong" },
            timelines: { _play: { aniId: "ani_to_far" } }
        }
    }
});
// source line 3738, bytecode pc 29832
(xs.Cfg.Skill.part.P_TianYi_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TianYi" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3752, bytecode pc 29949
(xs.Cfg.Skill.part.P_LieRen_Effect_From1 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LieRen" },
            timelines: { _play: { aniId: "ani_from01" } }
        }
    }
});
// source line 3766, bytecode pc 30066
(xs.Cfg.Skill.part.P_RenJia_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_RenJia" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3779, bytecode pc 30183
(xs.Cfg.Skill.part.P_RenJia_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_RenJia" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3793, bytecode pc 30300
(xs.Cfg.Skill.part.P_LieRen_Effect_From2 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_LieRen" },
            timelines: { _play: { aniId: "ani_from02" } }
        }
    }
});
// source line 3808, bytecode pc 30417
(xs.Cfg.Skill.part.P_TianYi_LieRen_To1 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LieRen" },
            timelines: { _play: { aniId: "ani_to01" } }
        }
    }
});
// source line 3821, bytecode pc 30534
(xs.Cfg.Skill.part.P_TianYi_LieRen_To2 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_LieRen" },
            timelines: { _play: { aniId: "ani_to02" } }
        }
    }
});
// source line 3835, bytecode pc 30651
(xs.Cfg.Skill.part.P_TianYi_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TianYi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3845, bytecode pc 30714
(xs.Cfg.Skill.part.P_Hp_Add_To_FS = { extend: "part.P_Hp_Add_To", property: { trigger: "fs" } });
// source line 3852, bytecode pc 30777
(xs.Cfg.Skill.part.P_Def_Add_To_FS = { extend: "part.P_Def_Add_To", property: { trigger: "fs" } });
// source line 3859, bytecode pc 30840
(xs.Cfg.Skill.part.P_Atk_Add_To_FS = { extend: "part.P_Atk_Add_To", property: { trigger: "fs" } });
// source line 3865, bytecode pc 30903
(xs.Cfg.Skill.part.P_Atk_Add_To_NOT_FS = { extend: "part.P_Atk_Add_To", property: { ignore: "fs" } });
// source line 3871, bytecode pc 30966
(xs.Cfg.Skill.part.P_Def_Sub_To_FS = { extend: "part.P_Def_Sub_To", property: { trigger: "fs" } });
// source line 3878, bytecode pc 31029
(xs.Cfg.Skill.part.P_Def_Sub_To_Not_FS = { extend: "part.P_Def_Sub_To", property: { ignore: "fs" } });
// source line 3885, bytecode pc 31092
(xs.Cfg.Skill.part.P_Atk_Sub_To_FS = { extend: "part.P_Atk_Sub_To", property: { trigger: "fs" } });
// source line 3892, bytecode pc 31155
(xs.Cfg.Skill.part.P_Atk_Sub_To_NOT_FS = { extend: "part.P_Atk_Sub_To", property: { ignore: "fs" } });
// source line 3900, bytecode pc 31198
(xs.Cfg.Skill.part.P_QinYin_Cure_To = { items: {} });
// source line 3927, bytecode pc 31334
(xs.Cfg.Skill.part.P_QinYin_Effect_Hurt_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TianYi", ignore: [ "other" ] },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 3944, bytecode pc 31500
(xs.Cfg.Skill.part.P_QinYin_Effect_From_Near = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: {
                parent: "near",
                armatureId: "Arm_Fight_Skill_QinYin",
                pos: cc.p(-220, 0),
                belong: "from_tmp_once"
            },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 3964, bytecode pc 31686
(xs.Cfg.Skill.part.P_QinYin_Effect_Mid_To_Once = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: {
                armatureId: "Arm_Fight_Skill_QinYin",
                pos: { base: null, x: 320, y: 0 },
                parent: "mid",
                type: "armature",
                rotY: 180,
                belong: "from_tmp_once"
            },
            timelines: { _play: { aniId: "ani_to_mid" } }
        }
    }
});
// source line 3986, bytecode pc 31883
(xs.Cfg.Skill.part.P_FengWu_Effect_From = {
    property: { trigger: "fs" },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: {
                armatureId: "Arm_Fight_Skill_FengWu",
                pos: { base: null, x: 0, y: 0 },
                parent: "to",
                type: "armature",
                belong: "to_tmp"
            },
            timelines: { _play: { aniId: "ani_to_def_add" } }
        }
    }
});
// source line 4008, bytecode pc 32080
(xs.Cfg.Skill.part.P_DiMeng_Effect_To_Def_Sub = {
    property: { ignore: "fs" },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: {
                armatureId: "Arm_Fight_Skill_DiMeng",
                pos: { base: null, x: 0, y: 0 },
                parent: "to",
                type: "armature",
                belong: "to_tmp"
            },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 4028, bytecode pc 32277
(xs.Cfg.Skill.part.P_DiMeng_Effect_To_Def_Add = {
    property: { trigger: "fs" },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: {
                armatureId: "Arm_Fight_Skill_DiMeng",
                pos: { base: null, x: 0, y: 0 },
                parent: "to",
                type: "armature",
                belong: "to_tmp"
            },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 4066, bytecode pc 32607
(xs.Cfg.Skill.part.P_FengWu_Effect_To = {
    property: { ignore: "fs" },
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: {
                armatureId: "Arm_Fight_Skill_FengWu",
                pos: { base: null, x: 0, y: 0 },
                parent: "to",
                type: "armature",
                belong: "to_tmp"
            },
            timelines: { _play: { aniId: "ani_to_def_sub" } }
        },
        _effect_to_behind: {
            extend: "template.item.TI_Arm_To",
            property: {
                armatureId: "Arm_Fight_Skill_FengWu",
                pos: { base: null, x: 0, y: 0 },
                parent: "to",
                type: "armature",
                belong: "to_tmp"
            },
            timelines: { _play: { aniId: "ani_to_def_sub_behind" } }
        }
    }
});
// source line 4086, bytecode pc 32783
(xs.Cfg.Skill.part.P_FengWu_Effect_Near_From_Once = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: {
                armatureId: "Arm_Fight_Skill_FengWu",
                pos: { base: null, x: 0, y: 0 },
                parent: "near",
                type: "armature",
                belong: "from_tmp_once"
            },
            timelines: { _play: { aniId: "ani_from_near" } }
        }
    }
});
// source line 4105, bytecode pc 32969
(xs.Cfg.Skill.part.P_QinYin_Effect_Near_To_Once = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: {
                armatureId: "Arm_Fight_Skill_QinYin",
                pos: { base: null, x: 320, y: 0 },
                parent: "near",
                type: "armature",
                rotY: 180,
                belong: "from_tmp_once"
            },
            timelines: { _play: { aniId: "ani_to_near" } }
        }
    }
});
// source line 4123, bytecode pc 33155
(xs.Cfg.Skill.part.P_QinYin_Effect_Far_To_Once = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: {
                armatureId: "Arm_Fight_Skill_QinYin",
                pos: { base: null, x: 320, y: 0 },
                parent: "far",
                type: "armature",
                rotY: 180,
                belong: "from_tmp_once"
            },
            timelines: { _play: { aniId: "ani_to_far" } }
        }
    }
});
// source line 4149, bytecode pc 33272
(xs.Cfg.Skill.part.P_Fire_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Fire" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 4164, bytecode pc 33389
(xs.Cfg.Skill.part.P_Fire_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Fire" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 4179, bytecode pc 33514
(xs.Cfg.Skill.part.P_YanYu_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_YanYu", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 4193, bytecode pc 33639
(xs.Cfg.Skill.part.P_TieJi_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_TieJi", rotationY: 180 },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 4207, bytecode pc 33764
(xs.Cfg.Skill.part.P_TieJi_Effect_To = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_TieJi", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 4224, bytecode pc 33881
(xs.Cfg.Skill.part.P_JueJingDun_Effect_From = {
    items: {
        _effect: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Status_JueJing" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 4233, bytecode pc 33945
(xs.Cfg.Skill.part.P_JueJing_Effect_To = { items: { _effect: { extend: "template.item.P_JueJing_Hit" } } });
// source line 4246, bytecode pc 34062
(xs.Cfg.Skill.part.P_SpLieGong_Effect_From = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Status_SpLieGong" },
            timelines: { _play: { aniId: "ani_from" } }
        }
    }
});
// source line 4261, bytecode pc 34187
(xs.Cfg.Skill.part.P_SpLieGong_Effect_To = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_SpLieGong", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 4277, bytecode pc 34344
(xs.Cfg.Skill.part.P_QinYin_Effect_To01 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_QinYin", pos: { base: null, x: 100, y: 200 }, rotationY: 180 },
            timelines: { _play: { aniId: "ani_to01" } }
        }
    }
});
// source line 4292, bytecode pc 34469
(xs.Cfg.Skill.part.P_QinYin_Effect_To02 = {
    items: {
        _effect_to: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_Status_QinYin", rotationY: 180 },
            timelines: { _play: { aniId: "ani_to02" } }
        }
    }
});
// source line 4306, bytecode pc 34586
(xs.Cfg.Skill.part.P_QinYin_Effect_To03 = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_From",
            property: { armatureId: "Arm_Fight_Status_QinYin" },
            timelines: { _play: { aniId: "ani_to02" } }
        }
    }
});
// source line 4324, bytecode pc 34742
(xs.Cfg.Skill.part.P_JiJiaoZhiShi_Effect_To = {
    property: { loopCtrl: "n", delaySpawn: (15 / xs.fps) },
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_JiJiaoZhiShi" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
// source line 4338, bytecode pc 34859
(xs.Cfg.Skill.part.P_YiJue_Effect_To = {
    items: {
        _effect_from: {
            extend: "template.item.TI_Arm_To",
            property: { armatureId: "Arm_Fight_YiJue" },
            timelines: { _play: { aniId: "ani_to" } }
        }
    }
});
