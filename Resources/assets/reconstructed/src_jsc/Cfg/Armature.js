// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Cfg/Armature.js:1
// source line 4258, bytecode pc 28361
(xs.Cfg.Armature = {
    Arm_NewPlay: {
        name: "Newplay",
        animations: {
            ani_play1: { name: "ani_newplay01", fc: 1 },
            ani_play2: { name: "ani_newplay02", fc: 8 },
            ani_play3: { name: "ani_newplay03", fc: 50 },
            ani_play4: { name: "ani_newplay04", fc: 69 },
            ani_play5: { name: "ani_newplay05", fc: 28 },
            ani_play6: { name: "ani_newplay06", fc: 14 },
            ani_play7: { name: "ani_newplay07", fc: 13 },
            ani_play8: { name: "ani_newplay08", fc: 55 },
            ani_play9: { name: "ani_newplay09", fc: 18, loop: true },
            ani_play10: { name: "ani_newplay10", fc: 14 },
            ani_play11: { name: "ani_newplay11", fc: 45 }
        }
    },
    Arm_FightStar: {
        name: "fightStar",
        animations: {
            star0: { name: "star0", fc: 1 },
            star1: { name: "star1", fc: 1 },
            star2: { name: "star2", fc: 1 },
            star3: { name: "star3", fc: 1 },
            idle: { name: "idle", fc: 1 },
            star3to2: { name: "star3to2", fc: 34 },
            star2to1: { name: "star2to1", fc: 34 },
            star1to0: { name: "star1to0", fc: 34 }
        }
    },
    Arm_Hurt_All: {
        name: "hurt_all",
        animations: {
            ani_hurt_all_l: { name: "ani_hurt_all01", fc: 19 },
            ani_hurt_all_r: { name: "ani_hurt_all02", fc: 19 }
        },
        bones: { bone_text: { name: "bone_text" } }
    },
    Arm_Fight_Card: {
        name: "hurt",
        animations: {
            ani_from_attack_hit: { name: "ani_from_attack_hit", fc: 8 },
            ani_hit_normal: { name: "ani_hit_normal", fc: 4 },
            ani_hit_stiff: { name: "ani_hit_stiff", fc: 1 },
            ani_hit_miss: { name: "ani_hit_miss", fc: 8 },
            ani_hit_fly: { name: "ani_hit_fly", fc: 21 },
            ani_hit_back: { name: "ani_hit_back", fc: 24 },
            ani_xuechi: { name: "ani_xuechi", fc: 66 },
            ani_scle_change: { name: "ani_scle_change", fc: 24 },
            ani_kun: { name: "ani_kun", fc: 14 },
            ani_idle: { name: "ani_idle", fc: 0 },
            ani_hit_flat: { name: "ani_hit_flat", fc: 24 },
            ani_over_skill_back: { name: "ani_over_skill_back", fc: 4 },
            ani_over_skill_death: { name: "ani_over_skill2_death", fc: 23 },
            ani_over_skill_ghost: { name: "ani_over_skill2_ghost", fc: 22 },
            ani_idle_ghost: { name: "ani_idle_ghost", fc: 16 },
            ani_enter: { name: "ani_enter", fc: 16 },
            ani_appear_sword: { name: "ani_appear_sword", fc: 5 },
            ani_status_sword: { name: "ani_status_sword", fc: 4 },
            ani_attack_sword: { name: "ani_attack_sword", fc: 7 },
            ani_appear_hammer: { name: "ani_appear_hammer", fc: 5 },
            ani_status_hammer: { name: "ani_status_hammer", fc: 11 },
            ani_attack_hammer: { name: "ani_attack_hammer", fc: 8 },
            ani_appear_spear: { name: "ani_appear_spear", fc: 5 },
            ani_status_spear: { name: "ani_status_spear", fc: 10 },
            ani_attack_spear: { name: "ani_attack_spear", fc: 8 },
            ani_appear_knife: { name: "ani_appear_knife", fc: 5 },
            ani_status_knife: { name: "ani_status_knife", fc: 8 },
            ani_attack_knife: { name: "ani_attack_knife", fc: 7 },
            ani_appear_pike: { name: "ani_appear_qiang", fc: 5 },
            ani_status_pike: { name: "ani_status_qiang", fc: 10 },
            ani_attack_pike: { name: "ani_attack_qiang", fc: 8 },
            ani_appear_chopper: { name: "ani_appear_dao", fc: 5 },
            ani_status_chopper: { name: "ani_status_dao", fc: 4 },
            ani_attack_chopper: { name: "ani_attack_dao", fc: 7 },
            ani_appear_axe: { name: "ani_appear_fuzi", fc: 5 },
            ani_status_axe: { name: "ani_status_fuzi", fc: 10 },
            ani_attack_axe: { name: "ani_attack_fuzi", fc: 8 },
            ani_appear_claw: { name: "ani_appear_claw", fc: 5 },
            ani_status_claw: { name: "ani_status_claw", fc: 3 },
            ani_attack_claw: { name: "ani_attack_claw", fc: 9 },
            ani_back_claw: { name: "ani_back_claw", fc: 6 },
            ani_appear_bow: { name: "ani_appear_bow", fc: 5 },
            ani_status_bow: { name: "ani_status_bow", fc: 13 },
            ani_attack_bow: { name: "ani_attack_bow", fc: 10 },
            ani_appear_fan: { name: "ani_appear_fan", fc: 5 },
            ani_status_fan: { name: "ani_status_fan", fc: 4 },
            ani_attack_fan: { name: "ani_attack_fan", fc: 9 },
            ani_appear_fangong: { name: "hurt_fangong" }
        },
        bones: {
            card: { name: "kapai" },
            shadow0: { name: "kapai01" },
            shadow1: { name: "kapai02" },
            shadow2: { name: "kapai03" }
        }
    },
    Arm_Fight_Weapon: {
        name: "weaponsoflight",
        plists: [ "fencheng" ],
        animations: {
            ani_effect_bow_to: { name: "ani_effect_bow_to", fc: 9 },
            ani_effect_fan_to: { name: "ani_effect_fan_to", fc: 9 }
        }
    },
    Arm_Loading: {
        name: "loading",
        animations: {
            begin: { name: "loadingBegin", fc: 3 },
            loading: { name: "loading", fc: 55 },
            end: { name: "loadingEnd", fc: 3 }
        }
    },
    Arm_Hand_Click: { name: "xinshou", animations: { hand_click: { name: "ani_xinshou_dian", fc: 14 } } },
    Arm_Reinforce: {
        name: "reinforce",
        plists: [ "reinforce" ],
        animations: { normal: { name: "normal", fc: 41 }, cri: { name: "cri", fc: 41 } }
    },
    Arm_Fight_SkillName: {
        name: "fightSkillName",
        animations: {
            ani_name_normal: { name: "ani_name_normal", fc: 16 },
            ani_name_super_0: { name: "ani_name_super_0", fc: 20 },
            ani_name_super_1: { name: "ani_name_super_1", fc: 20 },
            ani_name_ss_0: { name: "ani_name_big_0", fc: 17 },
            ani_name_ss_1: { name: "ani_name_big_1", fc: 17 },
            ani_name_super_bg_start: { name: "ani_jin_star", fc: 2 },
            ani_name_super_bg_status: { name: "ani_jin_loop", fc: 1 },
            ani_name_super_bg_end: { name: "ani_jin_end", fc: 4 },
            ani_name_ss_bg_start: { name: "ani_shen_star", fc: 2 },
            ani_name_ss_bg_status: { name: "ani_shen_loop", fc: 1 },
            ani_name_ss_bg_end: { name: "ani_shen_end", fc: 4 },
            ani_buff_atk_add: { name: "ani_buff_atkup", fc: 20 },
            ani_buff_def_add: { name: "ani_buff_dexup", fc: 20 },
            ani_buff_int_add: { name: "ani_buff_intup", fc: 20 },
            ani_buff_atk_sub: { name: "ani_buff_atkdown", fc: 20 },
            ani_buff_def_sub: { name: "ani_buff_dexdown", fc: 20 },
            ani_buff_int_sub: { name: "ani_buff_intdown", fc: 20 },
            ani_buff_atkdef_add: { name: "ani_buff_atkdefup", fc: 23 },
            ani_buff_atkdef_sub: { name: "ani_buff_atkdefdown", fc: 27 },
            ani_buff_treat_sub: { name: "ani_buff_treatdown", fc: 21 },
            ani_buff_atk_add_backup: { name: "ani_buff_atkup_yuanjun", fc: 20 },
            ani_buff_def_add_backup: { name: "ani_buff_dexup_yuanjun", fc: 20 },
            ani_buff_int_add_backup: { name: "ani_buff_intup_yuanjun", fc: 20 },
            ani_buff_atk_sub_backup: { name: "ani_buff_atkdown_yuanjun", fc: 20 },
            ani_buff_def_sub_backup: { name: "ani_buff_dexdown_yuanjun", fc: 20 },
            ani_buff_int_sub_backup: { name: "ani_buff_dexdown_yuanjun", fc: 20 },
            ani_buff_hp_add: { name: "ani_blood_add", fc: 20 },
            ani_exp_kapai: { name: "ani_exp_kapai", fc: 31 },
            ani_exp_lvup_kapai: { name: "ani_exp_lvup_kapai", fc: 41 },
            ani_exp_yuanjun: { name: "ani_exp_yuanjun", fc: 23 },
            ani_exp_lvup_yuanjun: { name: "ani_exp_lvup_yuanjun", fc: 25 },
            ani_text_hurt: { name: "ani_blood_hurt", fc: 20 },
            ani_text_cure: { name: "ani_blood_add", fc: 20 },
            ani_text_hurt_n: { name: "ani_blood_hurt_n", fc: 14 },
            idle: { name: "idle", fc: 1 },
            ani_finish_far: { name: "ani_fatal_scene", fc: 51 },
            ani_finish_near: { name: "ani_fatal_text", fc: 39 }
        },
        bones: {
            skillName: { name: "skin_name" },
            skillFrom: { name: "skin_card" },
            labelExp: { name: "exp" },
            labelLv: { name: "lvup" },
            labelBlood: { name: "lvup" }
        }
    },
    Arm_Fight_GangLie: {
        name: "ganglie",
        plists: [ "ganglie" ],
        animations: {
            ani_from0: { name: "ain_from0", fc: 30 },
            ani_to0: { name: "ani_to0", fc: 44 },
            idle: { name: "idle", fc: 1 }
        }
    },
    Arm_Fight_XueJi: {
        name: "xueji",
        plists: [ "xueji" ],
        animations: { ani_to: { name: "ani_to", fc: 10 }, ani_to_mid: { name: "ani_to_mid", fc: 27 } }
    },
    Arm_Fight_QiangXi: {
        name: "qiangxi",
        plists: [ "qiangxi" ],
        animations: { ani_from: { name: "ani_from", fc: 22 }, ani_to: { name: "ani_to", fc: 18 } }
    },
    Arm_Fight_GuiXin: {
        name: "skill_guixin",
        plists: [ "skill_guixin" ],
        animations: { ani_from: { name: "ani_from", fc: 45 }, ani_to: { name: "ani_to", fc: 32 } }
    },
    Arm_Fight_ZhaoXin: {
        name: "skill_zhaoxin",
        plists: [ "skill_zhaoxin" ],
        animations: { ani_from: { name: "ani_from", fc: 38 }, ani_to: { name: "ani_to", fc: 68 } }
    },
    Arm_Fight_XuanFeng: {
        name: "skill_xuanfeng",
        plists: [ "skill_xuanfeng" ],
        animations: { ani_from: { name: "ani_from", fc: 17 }, ani_to: { name: "ani_to", fc: 35 } }
    },
    Arm_Fight_GuHuo: {
        name: "guhuo",
        plists: [ "guhuo" ],
        animations: {
            ani_from0_a: { name: "ani_from0", fc: 35 },
            ani_to0_a: { name: "ani_to0", fc: 64 },
            ani_from0_b: { name: "ani_from1", fc: 35 },
            ani_to0_b: { name: "ani_to1", fc: 64 },
            idle: { name: "idle", fc: 1 }
        }
    },
    Arm_Fight_QiCe: {
        name: "qice",
        plists: [ "qice" ],
        animations: {
            ani_to_dmg: { name: "ani_to", fc: 30 },
            ani_from_near: { name: "ani_from_near", fc: 44 },
            idle: { name: "idle", fc: 1 }
        }
    },
    Arm_Fight_ZhiHeng: {
        name: "zhiheng",
        plists: [ "zhiheng" ],
        animations: {
            ani_to_atk: { name: "ani_from_atk", fc: 27 },
            ani_to_def: { name: "ani_from_def", fc: 27 },
            ani_from: { name: "ani_from", fc: 22 }
        }
    },
    Arm_Fight_TuXi: {
        name: "tuxi",
        plists: [ "tuxi", "xianzhen" ],
        animations: {
            ani_from0: { name: "ani_from0", fc: 14 },
            ani_from1: { name: "ani_from1", fc: 39 },
            ani_to: { name: "ani_to", fc: 29 }
        }
    },
    Arm_Fight_JuShou: {
        name: "skill_jushou",
        plists: [ "skill_jushou" ],
        animations: { ani_from: { name: "ani_from", fc: 33 } }
    },
    Arm_Fight_YingZi: {
        name: "skill_yingzi",
        plists: [ "skill_yingzi01", "skill_yingzi02", "skill_yingzi03" ],
        animations: { ani_from: { name: "ani_from", fc: 51 } }
    },
    Arm_Fight_LongDan: {
        name: "skill_longdan",
        plists: [ "skill_longdan01", "skill_longdan02" ],
        animations: { ani_from: { name: "ani_from", fc: 56 } }
    },
    Arm_Fight_JiAng: {
        name: "skill_jiang",
        plists: [ "skill_jiang01", "skill_jiang02" ],
        animations: {
            ani_from_loop_hit: { name: "ani_from00", fc: 18 },
            ani_from_over: { name: "ani_from01", fc: 22 }
        }
    },
    Arm_Fight_XinSheng: {
        name: "skill_xinsheng",
        plists: [ "skill_xinsheng01", "skill_xinsheng02" ],
        animations: { ani_from: { name: "ani_from", fc: 85 } }
    },
    Arm_Fight_EnYuan: {
        name: "skill_enyuan",
        plists: [ "skill_enyuan01", "skill_enyuan02", "skill_enyuan03" ],
        animations: {
            ani_to: { name: "ani_to", fc: 43 },
            ani_from0: { name: "ani_from0", fc: 27 },
            ani_from1: { name: "ani_from1", fc: 56 }
        }
    },
    Arm_Fight_Skill_DiMeng: {
        name: "skill_dimeng",
        plists: [ "skill_dimeng", "dujin" ],
        animations: { ani_from: { name: "ani_from", fc: 34 }, ani_to: { name: "ani_to", fc: 25 } }
    },
    Arm_Fight_Skill_FengWu: {
        name: "fengwu",
        plists: [ "fengwu", "fengwu_debuff" ],
        animations: {
            ani_to_def_sub_behind: { name: "ani_to0_far", fc: 78 },
            ani_to_def_sub: { name: "ani_to1", fc: 99 },
            ani_from_near: { name: "ani_from0_near", fc: 62 },
            ani_to_def_add: { name: "ani_from1", fc: 78 }
        }
    },
    Arm_Fight_Skill_QinYin: {
        name: "qinyin",
        plists: [ "qinyin" ],
        animations: {
            ani_to_mid: { name: "ani_to0_mid", fc: 55 },
            ani_to_far: { name: "ani_to1_far", fc: 55 },
            ani_to_near: { name: "ani_to2_near", fc: 47 },
            ani_from: { name: "ani_from", fc: 47 }
        }
    },
    Arm_Fight_HaoShi: {
        name: "skill_haoshi",
        plists: [ "skill_haoshi01", "skill_haoshi02", "skill_haoshi03" ],
        animations: {
            ani_from_far: { name: "ani_from_far", fc: 47 },
            ani_from_near: { name: "ani_from_near", fc: 56 }
        }
    },
    Arm_Fight_HuJian: {
        name: "skill_hujia",
        plists: [ "skill_hujia01", "skill_hujia02", "skill_hujia03" ],
        animations: {
            ani_from_far: { name: "ani_from_far", fc: 75 },
            ani_from02: { name: "ani_from", fc: 71 },
            ani_to: { name: "ani_to", fc: 54 }
        }
    },
    Arm_Fight_JieYin: { name: "jieyin", plists: [ "jieyin" ], animations: { ani_from0: { name: "ani_from0", fc: 77 } } },
    Arm_Fight_JieYinV5: {
        name: "skill_jieyin_jinjie",
        plists: [ "skill_jieyin_jinjie" ],
        animations: { ani_from_jinjie: { name: "ani_from_jinjie", fc: 22 } }
    },
    Arm_Fight_QiXi: {
        name: "skill_qixi",
        plists: [ "skill_qixi" ],
        animations: {
            ani_from: { name: "ani_from", fc: 17 },
            ani_from0: { name: "ani_from0", fc: 16 },
            ani_from1: { name: "ani_from1", fc: 16 }
        },
        bones: { card: { name: "card" } }
    },
    Arm_Fight_MoLeiJi: {
        name: "skill_moleiji",
        plists: [ "skill_moleiji01", "skill_moleiji02" ],
        animations: {
            ani_from0: { name: "ani_from0", fc: 19 },
            ani_from1: { name: "ani_from1", fc: 59 },
            ani_to: { name: "ani_to", fc: 40 }
        }
    },
    Arm_Fight_JueQing: {
        name: "jueqing",
        plists: [ "jueqing" ],
        animations: { ani_from0: { name: "ani_from0", fc: 25 }, ani_to0: { name: "ani_to0", fc: 10 } }
    },
    Arm_Fight_LianYing: {
        name: "lianying",
        plists: [ "lianying" ],
        animations: {
            ani_from0_begin: { name: "ani_from0_begin", fc: 24 },
            ani_from0_loop: { name: "ani_from0_atk", fc: 8 },
            ani_from0_end: { name: "ani_from0_end", fc: 6 },
            ani_to0: { name: "ani_to0", fc: 6 },
            ani_idle: { name: "idle", fc: 1 }
        }
    },
    Arm_Fight_LuoShen: {
        name: "luoshen",
        plists: [ "luoshen", "jueqing" ],
        animations: {
            ani_from_begin: { name: "ani_from0", fc: 21 },
            ani_from_loop: { name: "ani_from1", fc: 27 },
            ani_from_end: { name: "ani_from2", fc: 31 }
        }
    },
    Arm_Fight_LuoShen_JinJie: {
        name: "luoshen_jinjie",
        plists: [ "luoshen", "jueqing" ],
        animations: { ani_from_buff: { name: "ani_from_buff", fc: 27 }, ani_from_end: { name: "ani_from2", fc: 31 } }
    },
    Arm_Fight_LuoYi: {
        name: "luoyi",
        plists: [ "luoyi" ],
        animations: { ani_from0: { name: "ani_from0", fc: 32 }, ani_to0: { name: "ani_to0", fc: 15 } }
    },
    Arm_Fight_LieGong: {
        name: "liegong",
        plists: [ "liegong", "ganglie" ],
        animations: { ani_from0: { name: "ani_from0", fc: 48 }, ani_to0: { name: "ani_to0", fc: 18 } }
    },
    Arm_Fight_JianYing: {
        name: "skill_jianying",
        plists: [ "skill_jianying" ],
        animations: { ani_from: { name: "ani_from", fc: 26 } }
    },
    Arm_Fight_TianYi: {
        name: "tianyi",
        plists: [ "tianyi" ],
        animations: { ani_from: { name: "ani_from", fc: 21 }, ani_to: { name: "ani_to", fc: 16 } }
    },
    Arm_Fight_RenJia: {
        name: "skill_renjia",
        plists: [ "skill_renjia01", "skill_renjia02" ],
        animations: { ani_from: { name: "ani_form", fc: 30 }, ani_to: { name: "ani_to", fc: 60 } }
    },
    Arm_Fight_LieRen: {
        name: "skill_lieren",
        plists: [ "skill_lieren01", "skill_lieren02", "skill_lieren03" ],
        animations: {
            ani_from01: { name: "ani_from01", fc: 28 },
            ani_from02: { name: "ani_from02", fc: 98 },
            ani_to01: { name: "ani_to01", fc: 62 },
            ani_to02: { name: "ani_to02", fc: 95 }
        }
    },
    Arm_Fight_QiaoBian: {
        name: "skill_qiaobian",
        plists: [ "skill_qiaobian02", "skill_qiaobian01" ],
        animations: {
            ani_from2_far: { name: "ani_from2_far", fc: 43 },
            ani_to2: { name: "ani_to2", fc: 52 },
            ani_to1: { name: "ani_to1", fc: 56 },
            ani_from0_far: { name: "ani_from0_far", fc: 51 },
            ani_from1: { name: "ani_from1", fc: 48 }
        }
    },
    Arm_Fight_ZhuiKong: {
        name: "Skill_zhuikong",
        plists: [ "skill_zhuikong" ],
        animations: {
            ani_from: { name: "ani_from", fc: 22 },
            ani_to: { name: "ani_to", fc: 69 },
            ani_to_far: { name: "ani_to_far", fc: 30 }
        }
    },
    Arm_Fight_XianZhen: {
        name: "xianzhen",
        plists: [ "xianzhen" ],
        animations: { ani_from: { name: "ani_from", fc: 42 }, ani_to: { name: "ani_to", fc: 48 } }
    },
    Arm_Fight_LongDan2: {
        name: "skill_longdan02",
        plists: [ "skill_longdan03" ],
        animations: { ani_from: { name: "ani_from", fc: 42 }, ani_to: { name: "ani_to", fc: 48 } }
    },
    Arm_Fight_GongXin: {
        name: "skill_gongxin",
        plists: [ "skill_gongxin01", "skill_gongxin02" ],
        animations: {
            ani_to_near: { name: "ani_to_near", fc: 49 },
            ani_to: { name: "ani_to", fc: 62 },
            ani_from: { name: "ani_from", fc: 28 }
        }
    },
    Arm_Fight_ShenSu: {
        name: "shensu",
        plists: [ "shensu" ],
        animations: { ani_from: { name: "ani_from", fc: 2 }, ani_to: { name: "ani_to", fc: 23 } }
    },
    Arm_Fight_LianPo: {
        name: "skill_lianpo",
        plists: [ "skill_lianpo" ],
        animations: { ani_from: { name: "ani_from", fc: 45 } }
    },
    Arm_Fight_XiaoQi: { name: "xiaoqi", plists: [ "xiaoqi" ], animations: { ani_to: { name: "ani_to", fc: 18 } } },
    Arm_Fight_XiaoJi1: {
        name: "xiaoji",
        plists: [ "xiaoji" ],
        animations: {
            ani_from_begin: { name: "ani_from0", fc: 4 },
            ani_from_loop: { name: "ani_from1", fc: 46 },
            ani_from_end: { name: "ani_from2", fc: 7 }
        }
    },
    Arm_Fight_GongQi: { name: "xiaoqi", plists: [ "xiaoqi" ], animations: { ani_to: { name: "ani_to", fc: 18 } } },
    Arm_Fight_QiangWu: {
        name: "qiangwu",
        plists: [ "qiangwu" ],
        animations: {
            ani_to_mid: { name: "ani_to0_mid", fc: 32 },
            ani_to_far: { name: "ani_to1_far", fc: 32 },
            ani_to: { name: "ani_to2", fc: 25 }
        }
    },
    Arm_Fight_FanJian: {
        name: "fanjian",
        plists: [ "fanjian" ],
        animations: { ani_from: { name: "ani_from", fc: 16 }, ani_to: { name: "ani_to", fc: 13 } }
    },
    Arm_Fight_FanJian_v4: {
        name: "skill_fanjian_v4",
        plists: [ "skill_fanjian_v4" ],
        animations: { ani_to: { name: "ani_to", fc: 19 } }
    },
    Arm_Fight_Status_Yun: {
        name: "skill_yun",
        plists: [ "skill_yun" ],
        animations: {
            yun_effect: { name: "ani_yun_play01", fc: 14 },
            yun_begin: { name: "ani_yun_play02", fc: 16 },
            yun_end: { name: "ani_yun_stop", fc: 5 },
            yun_status: { name: "ani_yun_status", fc: 0 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_Status_Fu: {
        name: "skill_fu",
        plists: [ "skill_yun" ],
        animations: {
            fu_effect: { name: "ani_fu_play", fc: 5 },
            fu_begin: { name: "ani_fu_play", fc: 5 },
            fu_end: { name: "ani_fu_stop", fc: 5 },
            fu_status: { name: "ani_fu_status", fc: 0 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_Status_XueChi: {
        name: "xuechi",
        plists: [ "xuechi" ],
        animations: {
            xuechi_effect: { name: "ani_play_xuechi", fc: 9 },
            xuechi_begin: { name: "ani_play_xuechi", fc: 9 },
            xuechi_end: { name: "ani_stop_xuechi", fc: 10 },
            xuechi_status: { name: "ani_status_xuechi", fc: 48 }
        }
    },
    Arm_Fight_Status_Nuyan: {
        name: "skill_quanji",
        plists: [ "skill_quanji" ],
        animations: {
            nuyan_effect: { name: "ani_nuyan_play", fc: 12 },
            nuyan_begin: { name: "ani_nuyan_play", fc: 12 },
            nuyan_end: { name: "ani_nuyan_stop", fc: 8 },
            nuyan_status: { name: "ani_nuyan_status", fc: 22 },
            ani_to: { name: "ani_to", fc: 18 },
            ani_from: { name: "ani_from", fc: 41 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_Status_JuShou: {
        name: "skill_jushou_v3",
        plists: [ "skill_jushou_v3" ],
        animations: {
            card_back_effect: { name: "ani_play", fc: 11 },
            card_back_begin: { name: "ani_play", fc: 11 },
            card_back_end: { name: "ani_stop", fc: 11 },
            card_back_status: { name: "ani_status", fc: 1 }
        }
    },
    Arm_Fight_Status_JuShou_Back: {
        name: "skill_jushou_v4",
        plists: [ "skill_jushou_v4" ],
        animations: { ani_from: { name: "ani_from", fc: 12 } }
    },
    Arm_Fight_Status_MianYi: {
        name: "eff_mianyi",
        plists: [ "eff_mianyi" ],
        animations: { ani_mianyi: { name: "ani_mianyi", fc: 40 }, idle: { name: "idle", fc: 0 } }
    },
    Arm_Fight_Status_GuiXin: {
        name: "skill_guixin_dun",
        plists: [ "skill_guixin_dun" ],
        animations: {
            dun01_effect: { name: "ani_dun01_play", fc: 14 },
            dun01_begin: { name: "ani_dun01_play", fc: 14 },
            dun01_end: { name: "ani_dun01_stop", fc: 5 },
            dun01_status: { name: "ani_dun01_status", fc: 0 },
            dun02_effect: { name: "ani_dun02_play", fc: 14 },
            dun02_begin: { name: "ani_dun02_play", fc: 14 },
            dun02_end: { name: "ani_dun02_stop", fc: 5 },
            dun02_status: { name: "ani_dun02_status", fc: 0 },
            dun03_effect: { name: "ani_dun03_play", fc: 14 },
            dun03_begin: { name: "ani_dun03_play", fc: 14 },
            dun03_end: { name: "ani_dun03_stop", fc: 5 },
            dun03_status: { name: "ani_dun03_status", fc: 0 },
            dun04_effect: { name: "ani_dun04_play", fc: 14 },
            dun04_begin: { name: "ani_dun04_play", fc: 14 },
            dun04_end: { name: "ani_dun04_stop", fc: 5 },
            dun04_status: { name: "ani_dun04_status", fc: 0 },
            dun05_effect: { name: "ani_dun05_play", fc: 14 },
            dun05_begin: { name: "ani_dun05_play", fc: 14 },
            dun05_end: { name: "ani_dun05_stop", fc: 5 },
            dun05_status: { name: "ani_dun05_status", fc: 0 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_Status_TianNian: {
        name: "biaoji_tiannian",
        animations: {
            tiannian01_effect: { name: "ani_tiannian01_play", fc: 14 },
            tiannian01_begin: { name: "ani_tiannian01_play", fc: 14 },
            tiannian01_end: { name: "ani_tiannian01_stop", fc: 5 },
            tiannian01_status: { name: "ani_tiannian01_status", fc: 0 },
            tiannian02_effect: { name: "ani_tiannian02_play", fc: 14 },
            tiannian02_begin: { name: "ani_tiannian02_play", fc: 14 },
            tiannian02_end: { name: "ani_tiannian02_stop", fc: 5 },
            tiannian02_status: { name: "ani_tiannian02_status", fc: 0 },
            tiannian03_effect: { name: "ani_tiannian03_play", fc: 14 },
            tiannian03_begin: { name: "ani_tiannian03_play", fc: 14 },
            tiannian03_end: { name: "ani_tiannian03_stop", fc: 5 },
            tiannian03_status: { name: "ani_tiannian03_status", fc: 0 },
            tiannian04_effect: { name: "ani_tiannian04_play", fc: 14 },
            tiannian04_begin: { name: "ani_tiannian04_play", fc: 14 },
            tiannian04_end: { name: "ani_tiannian04_stop", fc: 5 },
            tiannian04_status: { name: "ani_tiannian04_status", fc: 0 },
            tiannian05_effect: { name: "ani_tiannian05_play", fc: 14 },
            tiannian05_begin: { name: "ani_tiannian05_play", fc: 14 },
            tiannian05_end: { name: "ani_tiannian05_stop", fc: 5 },
            tiannian05_status: { name: "ani_tiannian5_status", fc: 0 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_Status_XiaoYong: {
        name: "xiaoyong",
        animations: {
            xiaoyong01_effect: { name: "ani_xiaoyong01_play", fc: 7 },
            xiaoyong01_begin: { name: "ani_xiaoyong01_play", fc: 7 },
            xiaoyong01_end: { name: "ani_xiaoyong01_stop", fc: 5 },
            xiaoyong01_status: { name: "ani_xiaoyong01_status", fc: 40 },
            xiaoyong02_effect: { name: "ani_xiaoyong02_play", fc: 7 },
            xiaoyong02_begin: { name: "ani_xiaoyong02_play", fc: 7 },
            xiaoyong02_end: { name: "ani_xiaoyong02_stop", fc: 5 },
            xiaoyong02_status: { name: "ani_xiaoyong02_status", fc: 40 },
            xiaoyong03_effect: { name: "ani_xiaoyong03_play", fc: 7 },
            xiaoyong03_begin: { name: "ani_xiaoyong03_play", fc: 7 },
            xiaoyong03_end: { name: "ani_xiaoyong03_stop", fc: 5 },
            xiaoyong03_status: { name: "ani_xiaoyong03_status", fc: 40 },
            xiaoyong04_effect: { name: "ani_xiaoyong04_play", fc: 7 },
            xiaoyong04_begin: { name: "ani_xiaoyong04_play", fc: 7 },
            xiaoyong04_end: { name: "ani_xiaoyong04_stop", fc: 5 },
            xiaoyong04_status: { name: "ani_xiaoyong04_status", fc: 40 },
            xiaoyong05_effect: { name: "ani_xiaoyong05_play", fc: 7 },
            xiaoyong05_begin: { name: "ani_xiaoyong05_play", fc: 7 },
            xiaoyong05_end: { name: "ani_xiaoyong05_stop", fc: 5 },
            xiaoyong05_status: { name: "ani_xiaoyong05_status", fc: 40 },
            xiaoyong06_effect: { name: "ani_xiaoyong06_play", fc: 7 },
            xiaoyong06_begin: { name: "ani_xiaoyong06_play", fc: 7 },
            xiaoyong06_end: { name: "ani_xiaoyong06_stop", fc: 5 },
            xiaoyong06_status: { name: "ani_xiaoyong06_status", fc: 40 },
            xiaoyong07_effect: { name: "ani_xiaoyong07_play", fc: 7 },
            xiaoyong07_begin: { name: "ani_xiaoyong07_play", fc: 7 },
            xiaoyong07_end: { name: "ani_xiaoyong07_stop", fc: 5 },
            xiaoyong07_status: { name: "ani_xiaoyong07_status", fc: 40 },
            xiaoyong08_effect: { name: "ani_xiaoyong08_play", fc: 7 },
            xiaoyong08_begin: { name: "ani_xiaoyong08_play", fc: 7 },
            xiaoyong08_end: { name: "ani_xiaoyong08_stop", fc: 5 },
            xiaoyong08_status: { name: "ani_xiaoyong08_status", fc: 40 },
            xiaoyong09_effect: { name: "ani_xiaoyong09_play", fc: 7 },
            xiaoyong09_begin: { name: "ani_xiaoyong09_play", fc: 7 },
            xiaoyong09_end: { name: "ani_xiaoyong09_stop", fc: 5 },
            xiaoyong09_status: { name: "ani_xiaoyong09_status", fc: 40 }
        }
    },
    Arm_Fight_Status_Star: {
        name: "Buff_FengWu",
        plists: [ "Buff_FengWu" ],
        animations: {
            star01_effect: { name: "ani_buff_play_1", fc: 5 },
            star01_begin: { name: "ani_buff_play_1", fc: 5 },
            star01_end: { name: "ani_buff_stop_1", fc: 5 },
            star01_status: { name: "ani_buff_status_1", fc: 0 },
            star02_effect: { name: "ani_buff_play_2", fc: 5 },
            star02_begin: { name: "ani_buff_play_2", fc: 5 },
            star02_end: { name: "ani_buff_stop_2", fc: 5 },
            star02_status: { name: "ani_buff_status_2", fc: 0 },
            star03_effect: { name: "ani_buff_play_3", fc: 5 },
            star03_begin: { name: "ani_buff_play_3", fc: 5 },
            star03_end: { name: "ani_buff_stop_3", fc: 5 },
            star03_status: { name: "ani_buff_status_3", fc: 0 },
            star04_effect: { name: "ani_buff_play_4", fc: 5 },
            star04_begin: { name: "ani_buff_play_4", fc: 5 },
            star04_end: { name: "ani_buff_stop_4", fc: 5 },
            star04_status: { name: "ani_buff_status_4", fc: 0 },
            star05_effect: { name: "ani_buff_play_5", fc: 5 },
            star05_begin: { name: "ani_buff_play_5", fc: 5 },
            star05_end: { name: "ani_buff_stop_5", fc: 5 },
            star05_status: { name: "ani_buff_status_5", fc: 0 },
            star06_effect: { name: "ani_buff_play_6", fc: 5 },
            star06_begin: { name: "ani_buff_play_6", fc: 5 },
            star06_end: { name: "ani_buff_stop_6", fc: 5 },
            star06_status: { name: "ani_buff_status_6", fc: 0 },
            star07_effect: { name: "ani_buff_play_7", fc: 5 },
            star07_begin: { name: "ani_buff_play_7", fc: 5 },
            star07_end: { name: "ani_buff_stop_7", fc: 5 },
            star07_status: { name: "ani_buff_status_7", fc: 0 },
            star08_effect: { name: "ani_buff_play_8", fc: 5 },
            star08_begin: { name: "ani_buff_play_8", fc: 5 },
            star08_end: { name: "ani_buff_stop_8", fc: 5 },
            star08_status: { name: "ani_buff_status_8", fc: 0 },
            star09_effect: { name: "ani_buff_play_9", fc: 5 },
            star09_begin: { name: "ani_buff_play_9", fc: 5 },
            star09_end: { name: "ani_buff_stop_9", fc: 5 },
            star09_status: { name: "ani_buff_status_9", fc: 0 }
        }
    },
    Arm_Fight_Status_JueJing: {
        name: "skill_juejing",
        plists: [ "skill_juejing" ],
        animations: {
            ani_from: { name: "ani_from", fc: 40 },
            juejing_effect: { name: "juejing_play", fc: 5 },
            juejing_begin: { name: "juejing_play", fc: 5 },
            juejing_status: { name: "juejing_status", fc: 29 },
            juejing_end: { name: "juejing_stop", fc: 5 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_Status_ZhuiJi: {
        name: "skill_spliegong",
        plists: [ "skill_spliegong" ],
        animations: {
            zhuiji_effect: { name: "ani_zhuiji_play", fc: 5 },
            zhuiji_begin: { name: "ani_zhuiji_play", fc: 5 },
            zhuiji_status: { name: "ani_zhuiji_status", fc: 30 },
            zhuiji_end: { name: "ani_zhuiji_stop", fc: 5 }
        }
    },
    Arm_Fight_Status_FanGong: {
        name: "buff_fangong",
        plists: [ "buff_fangong" ],
        animations: {
            fangong_effect: { name: "ani_fangong_play", fc: 5 },
            fangong_begin: { name: "ani_fangong_play", fc: 5 },
            fangong_status: { name: "ani_fangong_status", fc: 1 },
            fangong_end: { name: "ani_fangong_stop", fc: 5 }
        }
    },
    Arm_Fight_Status_PoJia: {
        name: "buff_pojia",
        plists: [ "buff_pojia" ],
        animations: {
            pojia_effect: { name: "ani_pojia_play", fc: 5 },
            pojia_begin: { name: "ani_pojia_play", fc: 5 },
            pojia_status: { name: "ani_pojia_status", fc: 1 },
            pojia_end: { name: "ani_pojia_stop", fc: 5 }
        }
    },
    Arm_Fight_Status_XuRuo: {
        name: "buff_xuruo",
        plists: [ "buff_xuruo" ],
        animations: {
            xuruo_effect: { name: "ani_xuruo_play", fc: 5 },
            xuruo_begin: { name: "ani_xuruo_play", fc: 5 },
            xuruo_status: { name: "ani_xuruo_status", fc: 30 },
            xuruo_end: { name: "ani_xuruo_stop", fc: 5 }
        }
    },
    Arm_Fight_Status_SpLieGong: {
        name: "skill_spliegong",
        plists: [ "skill_spliegong" ],
        animations: {
            ani_from: { name: "ani_from", fc: 28 },
            ani_to: { name: "ani_to", fc: 44 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_Status_QinYin: {
        name: "Skill_Qinyin",
        plists: [ "Skill_Qinyin" ],
        animations: {
            qinyin_effect: { name: "ani_qinyin_play", fc: 9 },
            qinyin_begin: { name: "ani_qinyin_play", fc: 9 },
            qinyin_status: { name: "ani_qinyin_status", fc: 29 },
            qinyin_end: { name: "ani_qinyin_stop", fc: 9 },
            ani_to01: { name: "ani_to01", fc: 37 },
            ani_to02: { name: "ani_to02", fc: 54 },
            idle: { name: "idle", fc: 0 }
        }
    },
    Arm_Fight_ZaiQi: {
        name: "skill_zaiqi",
        plists: [ "skill_zaiqi" ],
        animations: { ani_from: { name: "ani_from", fc: 67 } }
    },
    Arm_Fight_Status_ZaiQi: {
        name: "zaiqi_buff",
        plists: [ "zaiqi_buff" ],
        animations: {
            zaiqi_effect: { name: "ani_zaiqi_play", fc: 5 },
            zaiqi_begin: { name: "ani_zaiqi_play", fc: 5 },
            zaiqi_end: { name: "ani_zaiqi_stop", fc: 3 },
            zaiqi_status: { name: "ani_zaiqi_status", fc: 35 }
        }
    },
    Arm_Fight_Status: {
        name: "guose",
        animations: {
            feng_effect: { name: "ani_feng_play01", fc: 36 },
            feng_begin: { name: "ani_feng_play02", fc: 4 },
            feng_end: { name: "ani_feng_stop", fc: 4 },
            feng_status: { name: "ani_feng_status", fc: 0 },
            le_effect: { name: "ani_le_play01", fc: 33 },
            le_begin: { name: "ani_le_play02", fc: 5 },
            le_end: { name: "ani_le_stop", fc: 5 },
            le_status: { name: "ani_le_status", fc: 0 },
            ani_from: { name: "ani_from", fc: 24 },
            ani_to: { name: "ani_to", fc: 33 }
        }
    },
    Arm_Treat: { name: "treat", plists: [ "treat" ], animations: { treat: { name: "Animation", fc: 17 } } },
    Arm_SkillLight: { name: "skill-light", animations: { treat: { name: "skill-light", fc: 12 } } },
    Arm_Enter: { name: "come-on", animations: { makeLight: { name: "head-light", fc: 8 } } },
    Arm_Fight_Buff: {
        name: "buff_down",
        plists: [ "buff_down" ],
        animations: { ani_buff_down: { name: "ani_buffdown", fc: 28 }, ani_buff_up: { name: "ani_buffup", fc: 33 } }
    },
    Arm_Fight_Buff01: { name: "buff01", animations: { ani_effect_miss: { name: "ani_effect_miss", fc: 8 } } },
    Arm_Freeze: {
        name: "iconhurt",
        plists: [ "iconhurt" ],
        animations: {
            begin: { name: "ani_dongjie_play", fc: 3 },
            end: { name: "ani_dongjie_stop", fc: 5 },
            status: { name: "ani_dongjie_status", fc: 5 }
        }
    },
    Arm_Lock: {
        name: "skill_zhuiyi_v5",
        plists: [ "skill_zhuiyi_v5" ],
        animations: {
            begin: { name: "ani_from_play", fc: 26 },
            end: { name: "ani_from_stop", fc: 6 },
            status: { name: "ani_from_xian_loop", fc: 24 }
        }
    },
    Arm_Fight_Fire: {
        name: "huoji",
        plists: [ "huoji" ],
        animations: { ani_to_mid: { name: "ani_from", fc: 31 }, ani_to: { name: "ani_to", fc: 33 } }
    },
    Arm_Fight_KuLou: {
        name: "Skill_qiaobian_v5",
        plists: [ "Skill_qiaobian_v5" ],
        animations: { ani_to: { name: "ani_to", fc: 75 } }
    },
    Arm_Fight_PoJun: {
        name: "skill_pojun",
        plists: [ "skill_pojun" ],
        animations: { ani_from: { name: "ani_from", fc: 19 }, ani_to: { name: "ani_to", fc: 26 } }
    },
    Arm_Fight_BaiYin: {
        name: "skill_baiyin",
        plists: [ "skill_baiyin" ],
        animations: { ani_from: { name: "ani_from", fc: 36 } }
    },
    Arm_Fight_JiJaing_v5: {
        name: "skill_jijiang_v5",
        plists: [ "skill_jijiang_v5" ],
        animations: { ani_from: { name: "ani_from", fc: 25 }, ani_from_: { name: "ani_from_", fc: 35 } }
    },
    Arm_Fight_HuJia_v4: {
        name: "skill_hujia_v4",
        plists: [ "skill_hujia_v4" ],
        animations: { ani_from: { name: "ani_from", fc: 46 } }
    },
    Arm_Fight_TunTian: {
        name: "skill_tuntian",
        plists: [ "skill_tuntian" ],
        animations: { ani_from: { name: "ani_from", fc: 41 } }
    },
    Arm_Fight_TieJi: {
        name: "tieqi",
        plists: [ "tieqi" ],
        animations: { ani_from: { name: "ani_from", fc: 17 }, ani_to: { name: "ani-to", fc: 18 } }
    },
    Arm_Fight_YanYu: { name: "yanyu", plists: [ "tieqi" ], animations: { ani_to: { name: "ani_to", fc: 18 } } },
    Arm_Fight_WuShuang: {
        name: "wushuang",
        plists: [ "wushuang", "qiangwu" ],
        animations: { ani_from_mid: { name: "ani_from", fc: 38 }, ani_to: { name: "ani_to", fc: 27 } }
    },
    Arm_Fight_TianZhao: {
        name: "skill_tianzhao",
        plists: [ "skill_tianzhao" ],
        animations: { ani_from_mid: { name: "ani_from", fc: 24 }, ani_to: { name: "ani_to", fc: 38 } }
    },
    Arm_Fight_GuiPu: {
        name: "skill_guipu",
        plists: [ "skill_guipu" ],
        animations: { ani_from_mid: { name: "ani_from", fc: 50 }, ani_to: { name: "ani_to", fc: 38 } }
    },
    Arm_Fight_ZhengNan: {
        name: "skill_zhengnang",
        plists: [ "skill_zhengnang" ],
        animations: { ani_from: { name: "ani_from", fc: 27 }, ani_to: { name: "ani_to", fc: 48 } }
    },
    Arm_Fight_ZhiDao: {
        name: "skill_zhidao",
        plists: [ "skill_zhidao" ],
        animations: {
            ani_from_01: { name: "ani_from_01", fc: 9 },
            ani_from_02: { name: "ani_from_02", fc: 21 },
            ani_to: { name: "ani_to", fc: 16 }
        }
    },
    Arm_Fight_MuMu: {
        name: "skill_mumu",
        plists: [ "skill_mumu" ],
        animations: {
            ani_from_01: { name: "ani_from01", fc: 32 },
            ani_from_02: { name: "ani_from02", fc: 20 },
            ani_to: { name: "ani_to", fc: 25 }
        }
    },
    Arm_Fight_PanDing: {
        name: "Eff_Panding",
        plists: [ "Eff_Panding" ],
        animations: {
            ani_panding: { name: "ani_panding", fc: 43 },
            ani_shibai: { name: "ani_shibai", fc: 40 },
            ani_chenggong: { name: "ani_chenggong", fc: 40 },
            ani_dachenggong: { name: "ani_dachenggong", fc: 40 }
        }
    },
    Arm_Fight_SPLeiJi: {
        name: "Eff_SpLeiji",
        plists: [ "Eff_SpLeiji" ],
        animations: { ani_to: { name: "ani_to", fc: 31 } }
    },
    Arm_Fight_SPTieQi: {
        name: "Eff_SpTieqi",
        plists: [ "Eff_SpTieqi" ],
        animations: { ani_to: { name: "ani_to", fc: 17 } }
    },
    Arm_Fight_YiBing_V3: {
        name: "skill_yingbing_v3",
        plists: [ "skill_yingbing_v3" ],
        animations: { ani_to: { name: "ani_to", fc: 26 } }
    },
    Arm_Fight_YiCong_V5: {
        name: "skill_yicong_v5",
        plists: [ "skill_yicong_v5" ],
        animations: { ani_from: { name: "ani_from", fc: 35 } }
    },
    Arm_Fight_FuHun: {
        name: "skill_fuhun",
        plists: [ "skill_fuhun" ],
        animations: {
            idle: { name: "idle", fc: 0 },
            ani_from: { name: "ani_from", fc: 36 },
            ani_to: { name: "ani_to", fc: 25 }
        }
    },
    Arm_Fight_YanYan: {
        name: "skill_yanyan",
        plists: [ "skill_yanyan" ],
        animations: { ani_from_mid: { name: "ani_from", fc: 46 } }
    },
    Arm_Fight_YingHun: {
        name: "skill_yinghun",
        plists: [ "skill_yinghun01", "skill_yinghun02", "skill_yinghun03" ],
        animations: { ani_from: { name: "ani_from", fc: 60 }, ani_to: { name: "ani_to", fc: 80 } }
    },
    Arm_Fight_WuShuangV3: {
        name: "skill_wushuang_jinjie",
        plists: [ "skill_wushuang_jinjie" ],
        animations: { ani_to_wushuang: { name: "ani_to_wushuang", fc: 16 } }
    },
    Arm_Fight_WuQian: {
        name: "wuqian",
        plists: [ "wuqian" ],
        animations: { ani_from_near: { name: "ani_from_near", fc: 24 }, ani_to: { name: "ani_to", fc: 8 } }
    },
    Arm_Fight_JiJiang: {
        name: "skill_jijiang",
        plists: [ "skill_jijiang01", "skill_jijiang02", "skill_jijiang03" ],
        animations: {
            ani_from01: { name: "ani_from01", fc: 37 },
            ani_from02: { name: "ani_from02", fc: 64 },
            ani_to: { name: "ani_to", fc: 47 }
        }
    },
    Arm_Fight_YiJi: {
        name: "yiji",
        plists: [ "yiji", "jueqing" ],
        animations: { ani_from: { name: "ani_from", fc: 39 }, ani_to: { name: "ani_to", fc: 23 } }
    },
    Arm_Fight_MoKuRou: {
        name: "skill_mokurou",
        plists: [ "skill_mokurou01", "skill_mokurou02" ],
        animations: {
            ani_from0: { name: "ani_from0", fc: 25 },
            ani_to0: { name: "ani_from1", fc: 44 },
            ani_from1: { name: "ani_from2", fc: 20 }
        }
    },
    Arm_Fight_JianXiong: {
        name: "jianxiong",
        plists: [ "jianxiong" ],
        animations: { ani_from: { name: "ani_from", fc: 59 } }
    },
    Arm_Fight_MingCe: { name: "mingce", plists: [ "mingce" ], animations: { ani_to: { name: "ani_to", fc: 30 } } },
    Arm_Fight_FangQuan: {
        name: "fangquan",
        plists: [ "fangquan" ],
        animations: { ani_from: { name: "ani_from", fc: 45 }, ani_to: { name: "ani_to", fc: 37 } }
    },
    Arm_Fight_QuHu: {
        name: "skill_quhu",
        plists: [ "skill_quhu" ],
        animations: {
            ani_from1: { name: "ani_from1", fc: 23 },
            ani_from2: { name: "ani_from2", fc: 43 },
            ani_to: { name: "ani_from2", fc: 43 }
        }
    },
    Arm_Fight_QingNang: { name: "qingnang", plists: [ "qingnang" ], animations: { ani_to: { name: "ani_to", fc: 49 } } },
    Arm_Fight_Skill_YaoWu: {
        name: "skill_yaowu",
        plists: [ "skill_yaowu01", "skill_yaowu02" ],
        animations: { ani_from: { name: "ani_from", fc: 12 }, ani_to: { name: "ani_to", fc: 31 } }
    },
    Arm_Fight_LiJian: {
        name: "lijian",
        plists: [ "lijian", "jieyin" ],
        animations: {
            ani_from_mid: { name: "ani_from", fc: 64 },
            ani_to: { name: "ani_to1", fc: 24 },
            ani_to_near: { name: "ani_to2", fc: 33 }
        },
        bones: { juese01: { name: "juese01" }, juese02: { name: "juese02" } }
    },
    Arm_Fight_HuJiao: { name: "hujiao", plists: [ "hujiao" ], animations: { ani_to: { name: "ani_to", fc: 18 } } },
    Arm_Fight_RenDe: { name: "rende", plists: [ "rende" ], animations: { ani_to_mid: { name: "ani_to", fc: 64 } } },
    Arm_Fight_WuHun: {
        name: "skill_wuhun",
        plists: [ "skill_wuhun01", "skill_wuhun02" ],
        animations: { ani_from: { name: "ani_from", fc: 37 }, ani_from_far: { name: "ani_from_far", fc: 34 } }
    },
    Arm_Fight_Thunder: { name: "leiji", plists: [ "leiji" ], animations: { ani_to: { name: "ani_to", fc: 30 } } },
    Arm_Fight_FangZhu: {
        name: "skill_fangzhu",
        plists: [ "skill_fangzhu" ],
        animations: { ani_from: { name: "ani_from", fc: 21 }, ani_to: { name: "ani_to", fc: 19 } }
    },
    Arm_Fight_TianXiang: {
        name: "tianxiang",
        plists: [ "tianxiang" ],
        animations: { ani_from: { name: "ani_from", fc: 23 }, ani_to: { name: "ani_to", fc: 15 } }
    },
    Arm_Fight_TianXiang_jinjie: {
        name: "tianxiang_jinjie",
        plists: [ "tianxiang_jinjie" ],
        animations: { ani_from: { name: "ani_from", fc: 23 }, ani_to: { name: "ani_to", fc: 15 } }
    },
    Arm_Fight_NiePan: { name: "niepan", plists: [ "niepan" ], animations: { ani_from: { name: "ani_from", fc: 52 } } },
    Arm_Fight_HuiTian: {
        name: "skill_huitian",
        plists: [ "skill_huitian", "niepan" ],
        animations: { ani_from0: { name: "ani_from0", fc: 20 }, ani_from1: { name: "ani_from1", fc: 20 } }
    },
    Arm_Fight_JiuShi: {
        name: "skill_jiushi",
        plists: [ "skill_jiushi01", "skill_jiushi02" ],
        animations: { ani_from01: { name: "ani_from01", fc: 50 }, ani_from02: { name: "ani_from02", fc: 73 } }
    },
    Arm_Fight_JiuYuan: {
        name: "skill_jiuyuan",
        plists: [ "skill_jiuyuan01", "skill_jiuyuan02" ],
        animations: { ani_from01: { name: "ani_from01", fc: 53 }, ani_from02: { name: "ani_from02", fc: 50 } }
    },
    Arm_Fight_DuJin: {
        name: "dujin",
        plists: [ "dujin" ],
        animations: { ani_from: { name: "ani_from", fc: 6 }, ani_to: { name: "ani_to", fc: 16 } }
    },
    Arm_Fight_PaoXiao_Evil: {
        name: "skill_mo_paoxiao",
        plists: [ "paoxiao" ],
        animations: { ani_from: { name: "ani_from", fc: 40 }, ani_to: { name: "ani_to", fc: 41 } }
    },
    Arm_Fight_PaoXiao: { name: "paoxiao", plists: [ "paoxiao" ], animations: { ani_from: { name: "ani_from", fc: 40 } } },
    Arm_Fight_KuangGu: { name: "kuanggu", plists: [ "kuanggu" ], animations: { ani_from: { name: "ani_from", fc: 24 } } },
    Arm_Fight_DuanLiang: {
        name: "skill_duanliang",
        plists: [ "skill_duanliang" ],
        animations: { ani_from: { name: "ani_from", fc: 24 }, ani_to: { name: "ani_to", fc: 36 } }
    },
    Arm_Fight_KuRou: {
        name: "skill_kurou",
        plists: [ "skill_kurou" ],
        animations: { ani_from: { name: "ani_from", fc: 25 } }
    },
    Arm_Fight_WuSheng: { name: "wusheng", plists: [ "wusheng" ], animations: { ani_from: { name: "ani_from", fc: 51 } } },
    Arm_Fight_DangXian: {
        name: "dangxian",
        plists: [ "dangxian", "wusheng" ],
        animations: { ani_from: { name: "ani_from", fc: 30 } }
    },
    Arm_Fight_LongYin: {
        name: "longling",
        plists: [ "longling", "xueji", "dangxian" ],
        animations: { ani_from: { name: "ani_from", fc: 41 } }
    },
    Arm_Fight_XueShang: {
        name: "xueshang",
        plists: [ "xueshang" ],
        animations: { ani_from: { name: "ani_from", fc: 46 }, ani_to: { name: "ani_to", fc: 48 } }
    },
    Arm_Fight_XingWu: {
        name: "skill_xingwu",
        plists: [ "skill_xingwu" ],
        animations: { ani_from: { name: "ani_from", fc: 42 }, ani_to: { name: "ani_to", fc: 35 } }
    },
    Arm_Fight_LuanJi: {
        name: "luanji",
        plists: [ "luanji" ],
        animations: { ani_from: { name: "ani_from", fc: 23 }, ani_to: { name: "ani_to", fc: 37 } }
    },
    Arm_Fight_FenCheng: {
        name: "fencheng",
        plists: [ "fencheng" ],
        animations: { ani_from: { name: "ani_from", fc: 25 }, ani_to: { name: "ani_to", fc: 11 } }
    },
    Arm_Fight_TiaoXin: {
        name: "skill_tiaoxin",
        plists: [ "skill_tiaoxin01", "skill_tiaoxin02" ],
        animations: {
            ani_from0: { name: "ani_from1", fc: 26 },
            ani_from1: { name: "ani_from2", fc: 31 },
            ani_to: { name: "ani_to", fc: 27 }
        }
    },
    Arm_Fight_LuanWu: {
        name: "skill_luanwu",
        plists: [ "skill_luanwu01", "skill_luanwu02" ],
        animations: {
            ani_from0: { name: "ani_from_far", fc: 30 },
            ani_from1: { name: "ani_from", fc: 44 },
            ani_to: { name: "ani_to", fc: 71 }
        }
    },
    Arm_Fight_GanLu: {
        name: "ganlu",
        plists: [ "ganlu01", "ganlu02", "rain" ],
        animations: { ani_from: { name: "ani_from", fc: 40 }, ani_to: { name: "ani_to", fc: 41 } }
    },
    Arm_Fight_GanLu_V5: {
        name: "skill_ganlu_v5",
        plists: [ "skill_ganlu_v5" ],
        animations: { ani_from: { name: "ani_from", fc: 51 }, ani_to: { name: "ani_to", fc: 34 } }
    },
    Arm_Fight_TongJi: {
        name: "skill_tongji",
        plists: [ "skill_tongji" ],
        animations: {
            ani_from: { name: "ani_from", fc: 35 },
            ani_from_far: { name: "ani_from_far", fc: 30 },
            ani_to: { name: "ani_to", fc: 17 }
        }
    },
    Arm_Fight_RaoShe: {
        name: "skill_raoshe",
        plists: [ "skill_raoshe" ],
        animations: { ani_from: { name: "ani_from", fc: 61 }, ani_to: { name: "ani_to", fc: 19 } }
    },
    Arm_Fight_SPLuanJi: {
        name: "skill_spluanji",
        plists: [ "skill_spluanji" ],
        animations: {
            ani_from: { name: "ani_from", fc: 62 },
            ani_from_extra: { name: "ani_from_all", fc: 44 },
            ani_to1: { name: "ani_to_01", fc: 30 },
            ani_to2: { name: "ani_to_02", fc: 48 }
        }
    },
    Arm_Fight_ShuangXiong: {
        name: "skill_shuangxiong",
        plists: [ "skill_shuangxiong" ],
        animations: { ani_to_left: { name: "ani_to_left", fc: 26 }, ani_to_right: { name: "ani_to_right", fc: 26 } }
    },
    Arm_Fight_ShuangXiong_V5: {
        name: "skill_shuangxiong_v5",
        plists: [ "skill_shuangxiong_v5" ],
        animations: { ani_to: { name: "ani_to", fc: 19 } }
    },
    Arm_Fight_QiCai: {
        name: "skill_qicai",
        plists: [ "skill_qicai" ],
        animations: {
            ani_from0: { name: "ani_from0", fc: 10 },
            ani_from1: { name: "ani_from1", fc: 18 },
            ani_to: { name: "ani_to", fc: 16 }
        }
    },
    Arm_Fight_GuiCai: {
        name: "skill_guicai",
        plists: [ "skill_guicai" ],
        animations: { ani_from: { name: "ani_from", fc: 40 }, ani_to0: { name: "ani_to_yuanjun", fc: 51 } }
    },
    Arm_Fight_BuQu: { name: "buqu", plists: [ "buqu" ], animations: { ani_from: { name: "ani_from", fc: 36 } } },
    Arm_Fight_YiZhong: { name: "yizhong", plists: [ "yizhong" ], animations: { ani_from: { name: "ani_from", fc: 47 } } },
    Arm_Fight_ShenFen: {
        name: "skill_shenfen",
        plists: [ "skill_shenfen01", "skill_shenfen02" ],
        animations: {
            ani_from: { name: "ani_from", fc: 40 },
            ani_to_mid: { name: "ani_to0_mid", fc: 72 },
            ani_to: { name: "ani_to1", fc: 65 }
        }
    },
    Arm_Fight_FuLuan: {
        name: "skill_fuluan",
        plists: [ "skill_fuluan" ],
        animations: { ani_from: { name: "ani_from", fc: 35 }, ani_to: { name: "ani_to", fc: 40 } }
    },
    Arm_Fight_SheFu: {
        name: "skill_shefu",
        plists: [ "skill_shefu01", "skill_shefu02", "skill_shefu03" ],
        animations: {
            ani_from: { name: "ani_from", fc: 19 },
            ani_to_far: { name: "ani_to_far", fc: 29 },
            ani_to1: { name: "ani_to1", fc: 72 },
            ani_to_debuff: { name: "ani_to_debuff", fc: 23 }
        }
    },
    Arm_Fight_JiJiaoZhiShi: {
        name: "Skill_JiJiaozhishi",
        plists: [ "Skill_JiJiaozhishi" ],
        animations: { ani_to: { name: "ani_to", fc: 36 } }
    },
    Arm_Fight_YiJue: {
        name: "Skill_Yijue",
        plists: [ "Skill_Yijue" ],
        animations: { ani_to: { name: "ani_to", fc: 50 } }
    },
    Arm_Fight_Openning: {
        name: "kaichang",
        plists: [ "kaichang" ],
        animations: { kaichang01: { name: "kaichang01", fc: 54 }, kaichang02: { name: "kaichang02", fc: 30 } },
        bones: {
            general_side0: { name: "juese01" },
            general_side1: { name: "juese02" },
            name_side0: { name: "mingzi01" },
            name_side1: { name: "mingzi02" },
            shuzi01: { name: "shuzi01" },
            shuzi02: { name: "shuzi02" },
            you01: { name: "you01" },
            you02: { name: "you02" },
            zuo01: { name: "zuo01" },
            zuo02: { name: "zuo02" }
        }
    },
    Arm_AwakeBox_Light: {
        name: "Baox_Jx_bj",
        plists: [ "Baox_Jx_bj" ],
        animations: { Baox_Jx_bj_ani: { name: "Baox_Jx_bj_ani", fc: 117 } }
    },
    Arm_Toast_DrawGeneral: {
        name: "DrawGeneral",
        animations: {
            drawGeneral: { name: "drawGeneral", fc: 85 },
            godTip: { name: "godTip", fc: 36 },
            toSoulTip: { name: "toSoulTip", fc: 2 },
            idle: { name: "idle", fc: 0 },
            faguang: { name: "faguang", fc: 29 },
            draw_ten: { name: "draw_ten", fc: 73 },
            draw_light: { name: "draw_light", fc: 59 }
        },
        replaceSkin: {
            card: "card",
            toSoulTip: "txt",
            card01: "card01",
            card02: "card02",
            card03: "card03",
            card04: "card04",
            card05: "card05",
            card06: "card06",
            card07: "card07",
            card08: "card08",
            card09: "card09",
            card10: "card10",
            bone01: "bone01",
            bone02: "bone02",
            bone03: "bone03",
            bone04: "bone04",
            bone05: "bone05",
            bone06: "bone06",
            bone07: "bone07",
            bone08: "bone08",
            bone09: "bone09",
            bone10: "bone10"
        }
    },
    Arm_Toast_DrawSoul: {
        name: "DrawSoulAni",
        animations: {
            idle: { name: "idle", fc: 0 },
            drawSoul_front: { name: "drawSoul_front", fc: 75 },
            drawSoul_1: { name: "drawSoul_1", fc: 81 },
            drawSoul_2: { name: "drawSoul_2", fc: 87 },
            drawSoul_3: { name: "drawSoul_3", fc: 90 },
            drawSoul_4: { name: "drawSoul_4", fc: 75 },
            drawSoul_5: { name: "drawSoul_5", fc: 72 },
            drawSoul_6: { name: "drawSoul_6", fc: 79 },
            getSoul_1: { name: "getSoul_1", fc: 8 },
            getSoul_2: { name: "getSoul_2", fc: 12 },
            getSoul_3: { name: "getSoul_3", fc: 16 },
            getSoul_4: { name: "getSoul_4", fc: 20 },
            getSoul_5: { name: "getSoul_5", fc: 24 },
            getSoul_6: { name: "getSoul_6", fc: 28 }
        },
        replaceSkin: {
            tipInfo: "tipInfo",
            touxiang_1: "touxiang01",
            touxiang_2: "touxiang02",
            touxiang_3: "touxiang03",
            touxiang_4: "touxiang04",
            touxiang_5: "touxiang05",
            touxiang_6: "touxiang06",
            name01: "name01",
            name02: "name02",
            name03: "name03",
            name04: "name04",
            name05: "name05",
            name06: "name06"
        }
    },
    Arm_ToastDesk: {
        name: "particle",
        animations: { idle: { name: "idle", fc: 0 }, taostEnabled: { name: "ani_duijiu_particle", fc: 18 } }
    },
    Arm_UpgradeCard_LevelUp: {
        name: "LevelUpAni",
        plists: [ "DuiJiuScene01" ],
        animations: {
            idle: { name: "idle", fc: 0 },
            levelUpLight: { name: "levelUpLight", fc: 9 },
            eatCardFinish: { name: "eatCardFinish", fc: 26 }
        }
    },
    Arm_DungeonRoad: {
        name: "DungeonRoadAni",
        plists: [ "Dungeon" ],
        animations: {
            normalAnimation: { name: "normalAnimation", fc: 0 },
            disableAnimation: { name: "disableAnimation", fc: 0 },
            moveToAnimation: { name: "moveToAnimation", fc: 7 }
        }
    },
    Arm_DungeonOpen: {
        name: "DungeonOpen",
        plists: [ "Dungeon" ],
        animations: {
            idle: { name: "idle", fc: 0 },
            bigFire: { name: "bigFire", fc: 33 },
            smallFire: { name: "smallFire", fc: 44 }
        },
        replaceSkin: { dungeonView: "dungeonView", dungeon_hui: "dungeon_hui" }
    },
    Arm_Surrender: {
        name: "surrender",
        animations: {
            idle: { name: "idle", fc: 0 },
            ani_bg: { name: "ani_bg", fc: 5 },
            ani_effect: { name: "ani_effect", fc: 5 }
        }
    },
    Arm_guideArrow: {
        name: "roomguide",
        animations: {
            idle: { name: "idle", fc: 0 },
            guide: { name: "ani_room_guide", fc: 29 },
            normal: { name: "ani_room", fc: 0 }
        }
    },
    Arm_Reincarnation: {
        name: "Reincarnation",
        plists: [ "reincarnation" ],
        animations: {
            idle: { name: "idle", fc: 0 },
            reincarnation: { name: "reincarnation", fc: 33 },
            lightFlash: { name: "lightFlash", fc: 30 }
        },
        replaceSkin: { card: "card", dialog: "dialog" }
    },
    Arm_HeroCard_JueXing: {
        name: "Juexing_Ani",
        plists: [ "Juexing" ],
        animations: { idle: { name: "idle", fc: 0 }, awake: { name: "juexing_ani", fc: 70 } },
        replaceSkin: { card: "card" }
    },
    Arm_Fengyin_kapai: {
        name: "Fengyin_kapai",
        plists: [ "Fengyin_kapai" ],
        animations: {
            Fengyin_ani: { name: "ani_fengyin", fc: 60 },
            idle: { name: "idle", fc: 0 },
            Fengyin_jingzhen: { name: "ani_jingzhen", fc: 1 }
        }
    },
    Arm_EnterGame: {
        name: "denglugame",
        plists: [ "0_6_4_DengluScene01" ],
        animations: { enterGame: { name: "ani_denglugame", fc: 23 } }
    },
    Arm_SlotMachines: {
        name: "laohuji",
        plists: [ "laohuji" ],
        animations: {
            laohuji_1: { name: "ani_laohuji_1", fc: 23 },
            laohuji_2: { name: "ani_laohuji_2", fc: 26 },
            laohuji_3: { name: "ani_laohuji_3", fc: 29 },
            laohuji_4: { name: "ani_laohuji_4", fc: 32 },
            laohuji_5: { name: "ani_laohuji_5", fc: 35 },
            wing: { name: "ani_yuanbao", fc: 38 }
        },
        replaceSkin: { text_1: "text01", text_2: "text02", text_3: "text03", text_4: "text04", text_5: "text05" }
    },
    Arm_WishingAga: {
        name: "XuYuan",
        plists: [ "XuYuan" ],
        animations: {
            end_1: { name: "XuYuan_end01", fc: 65 },
            end_2: { name: "XuYuan_end02", fc: 68 },
            end_3: { name: "XuYuan_end03", fc: 65 },
            end_4: { name: "XuYuan_end04", fc: 66 },
            wishingLiuxing: { name: "XuYuan_liuxing", fc: 34 },
            wishingStart: { name: "XuYuan_start", fc: 35 }
        },
        replaceSkin: { prop_1: "touxiang01", prop_2: "touxiang02", prop_3: "touxiang03", prop_4: "touxiang04" }
    },
    Arm_Lianmai: {
        name: "Lianmai",
        plists: [ "Lianmai01", "Lianmai02" ],
        animations: { Liammai: { name: "Liammai", fc: 36 } }
    },
    GemLight: {
        name: "GemLight",
        plists: [ "GemLight" ],
        animations: { idle: { name: "idle", fc: 0 }, ani_gemlight: { name: "ani_gemlight", fc: 31 } }
    },
    UnionWar_HeadFight: {
        name: "unionWar_headFight",
        plists: [ "hurt" ],
        animations: {
            idle: { name: "idle", fc: 2 },
            atk: { name: "ani_atk", fc: 8 },
            back: { name: "ani_back", fc: 14 },
            fly: { name: "ani_fly", fc: 10 }
        },
        bones: { icon: { name: "icon" } }
    }
});
