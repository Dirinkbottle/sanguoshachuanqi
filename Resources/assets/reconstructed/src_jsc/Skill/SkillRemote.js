// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Skill/SkillRemote.js:1
// source line 3345, bytecode pc 22323
xs.Utils.extendScope(xs.Cfg.Skill, {
    qinyin: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_5",
                    "P_Delay_Frame_1"
                ],
                _type: "P_Hurt_Back_Over_IgnoreOther"
            },
            _effect_from: { _delay: null, _type: "P_QinYin_Effect_From_Near" },
            _effect_to_far: "P_QinYin_Effect_Far_To_Once",
            _effect_to_mid: "P_QinYin_Effect_Mid_To_Once",
            _effect_to_near: "P_QinYin_Effect_Near_To_Once",
            _effect_to_cure: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_2" ], _type: "P_Hp_Add_To_FS" },
            _effect_to_yinran: { _delay: [ "P_Delay_Frame_20", "P_Delay_Frame_20", "P_Delay_Frame_20" ], _type: "P_HuoYan_Begin" }
        }
    },
    fengwu: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from_near: "P_FengWu_Effect_Near_From_Once",
            _effect_to_def_add: {
                _delay: [
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_2"
                ],
                _type: "P_Def_Add_To_FS"
            },
            _effect_to_def_sub: { _delay: [ "P_Delay_Frame_68", "P_Delay_Frame_10" ], _type: "P_Def_Sub_To_Not_FS" },
            _effect_to: { _delay: null, _type: "P_FengWu_Effect_To" },
            _effect_from: { _delay: null, _type: "P_FengWu_Effect_From" }
        }
    },
    dimeng: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_4" ], _type: "P_Hurt_Fly_Over_IgnoreOther" },
            _effect_to_def_add: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_2" ], _type: "P_Def_Add_To_FS" },
            _effect_to_atk_sub: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_4" ], _type: "P_Def_Sub_To_Not_FS" },
            _effect_to: { _delay: null, _type: "P_DiMeng_Effect_To_Def_Sub" },
            _effect_from: { _delay: null, _type: "P_DiMeng_Effect_To_Def_Add" }
        }
    },
    qiaobian_before: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_Hurt_V3_Over" },
            _hurt1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over_NOHURT" },
            _effect_from: { _delay: null, _type: "P_QiaoBianBefore_Effect_From" },
            _effect_to: { _delay: null, _type: "P_QiaoBianBefore_Effect_To" },
            _effect_to_def_add: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_Def_Add_From" },
            _effect_to_def_sub: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_Def_Sub_To" }
        }
    },
    qiaobian_after: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_46", "P_Delay_Frame_3" ], _type: "P_Hurt_V3_Over" },
            _effect_from: { _delay: null, _type: "P_QiaoBianAfter_Effect_From0" },
            _effect_from1: { _delay: null, _type: "P_QiaoBianAfter_Effect_From1" },
            _effect_to: { _delay: null, _type: "P_QiaoBianAfter_Effect_To" }
        }
    },
    qiaobian_v5_before: { extend: "qiaobian_before" },
    qiaobian_v5_after: { extend: "qiaobian_after" },
    qiaobian_v5: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_Hurt_V3_Over" },
            _hurt1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over" },
            _effect1: { _delay: [ "P_Delay_Frame_46", "P_Delay_Frame_3" ], _type: "P_QiaoBian_Effect_To_Mid" }
        }
    },
    zhuikong: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: "P_ZhuiKong_Effect_From" },
            _effect_to: { _type: "P_ZhuiKong_Effect_To" },
            _effect_to_far: { _type: "P_ZhuiKong_Effect_To_Far" }
        }
    },
    zhuikong_v3: {
        extend: "zhuikong",
        _attack: { _effect_to1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_BaoJi_Effect_To" } }
    },
    zhuikong_v4: { extend: "zhuikong_v3" },
    zhuikong_v5: { extend: "zhuikong_v4" },
    renjia: {
        extend: "template.T_Remote_Normal",
        _name: "P_Normal_Skill_Yellow",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_2" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: "P_RenJia_Effect_From" },
            _effect_to: { _delay: null, _type: "P_RenJia_Effect_To" }
        }
    },
    lueying: {
        extend: "template.T_Remote_Normal",
        _name: "P_Normal_Skill_Yellow",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to1: { _delay: "P_Delay_Frame_1", _type: "P_Atk_Sub_To" },
            _effect_to: { _delay: "P_Delay_Frame_6", _type: "P_BuffSub_Effect_To" }
        }
    },
    shesheng: {
        extend: "template.T_Remote_Normal",
        _name: "P_Normal_Skill_Yellow",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_from1: { _delay: "P_Delay_Frame_6", _type: "P_Cure_From" },
            _effect_to: { _delay: null, _type: null }
        }
    },
    nuyan: {
        extend: "template.T_Remote_Normal",
        _name: "P_Normal_Skill_Yellow",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_from1: { _delay: "P_Delay_Frame_1", _type: null },
            _effect_to: { _delay: null, _type: null }
        }
    },
    lieren: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 4 },
        _attack: {
            type: "Spawn",
            _hurt0: {
                _delay0: [ "P_Delay_Frame_26", "P_Delay_Frame_10" ],
                _type0: "P_Hurt_Hit_NoFs",
                params: { idx: 0 }
            },
            _hurt1: {
                _delay0: [ "P_Delay_Frame_37", "P_Delay_Frame_10" ],
                _type0: "P_Hurt_Hit_NoFs",
                params: { idx: 1 }
            },
            _hurt2: {
                _delay0: [ "P_Delay_Frame_46", "P_Delay_Frame_10" ],
                _type0: "P_Hurt_Hit_NoFs",
                params: { idx: 2 }
            },
            _hurt3: {
                _delay: [ "P_Delay_Frame_68", "P_Delay_Frame_6" ],
                _type: { type: "Spawn", "0": "P_Hurt_Back_Over_NFS", params: { idx: 3 } }
            },
            _hurt: { _delay: [ "P_Delay_Frame_68", "P_Delay_Frame_6" ], _type: null },
            _effect_from1: { _delay: null, _type: "P_LieRen_Effect_From1" },
            _effect_from2: { _delay: null, _type: "P_LieRen_Effect_From2" },
            _effect_from_atkUp: { _delay: [ "P_Delay_Frame_68", "P_Delay_Frame_2" ], _type: "P_Atk_Add_From_Noatk" },
            _effect_from_intUp: { _delay: [ "P_Delay_Frame_68", "P_Delay_Frame_10" ], _type: "P_Int_Add_From_Nowis" },
            _effect_to1: { _delay: null, _type: "P_TianYi_LieRen_To1" },
            _effect_to2: { _delay: null, _type: "P_TianYi_LieRen_To2" },
            _effect_to_atkSub: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5" ], _type: "P_Atk_Sub_To" },
            _effect_to_intSub: { _delay: [ "P_Delay_Frame_46", "P_Delay_Frame_4" ], _type: "P_Int_Sub_To" }
        }
    },
    tianyi: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: "P_TianYi_Effect_From" },
            _effect_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5" ], _type: "P_TianYi_Effect_To" }
        }
    },
    tianyi_v3: {
        extend: "tianyi",
        _attack: {
            type: "Spawn",
            _effect_to1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5" ], _type: "P_Def_Sub_To" },
            _effect_to2: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5" ], _type: "P_BuffSub_Effect_To" }
        }
    },
    tianyi_v5: { extend: "tianyi_v3" },
    tianyi_v5_yun: {
        extend: "tianyi_v3",
        _attack: { type: "Spawn", _effect_to3: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5" ], _type: null } }
    },
    gongxin: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_3" ],
                _type: "P_Hurt_Back_Over"
            },
            _effect_from: { _delay: null, _type: "P_Gongxin_Effect_From" },
            _effect_from1: { _delay: null, _type: "P_Gongxin_Effect_From_Mid" },
            _effect_to: { _delay: null, _type: "P_Gongxin_Effect_To1" }
        }
    },
    xianzhen: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_7" ],
                _type: "P_Hurt_Back_Over"
            },
            _effect_from: { _delay: null, _type: "P_XianZhen_Effect_From" },
            _effect_to: { _delay: null, _type: "P_XianZhen_Effect_To" }
        }
    },
    shensu: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 2 },
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_1" ], _type: "P_Hurt_Hit" },
            _hurt_over: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_5" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: "P_ShenSu_Effect_From" },
            _effect_to: { _delay: null, _type: "P_ShenSu_Effect_To" }
        }
    },
    xiaoqi: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_2", _type: "P_Hurt_Back_Over" },
            _effect_to: { _delay: null, _type: "P_XiaoQi_Effect_To" }
        }
    },
    liegong: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_68", _type: "P_Hurt_Fly_Over" },
            _effect_from: { _delay: null, _type: "P_LieGong_Effect_From" },
            _effect_to: { _delay: "P_Delay_Frame_68", _type: "P_LieGong_Effect_To" }
        }
    },
    shenggong: { extend: "liegong" },
    spliegong: {
        extend: "liegong",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_68", _type: "P_Hurt_Fly_Over" },
            _effect_from: { _delay: null, _type: "P_SpLieGong_Effect_From" },
            _effect_to: { _delay: "P_Delay_Frame_30", _type: "P_SpLieGong_Effect_To" }
        }
    },
    spliegong_extra: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: "P_Delay_Frame_4", _type: "P_Hurt_Back_Over" },
            _effect_to: { _delay: null, _type: "P_Bow_Effect_To" },
            _effect_from: { _type: "P_Bow_Effect_From" }
        }
    },
    xingwu: {
        extend: "template.T_Remote_Super",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_55", "P_Delay_Frame_2" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: "P_XingWu_Effect_From" },
            _effect_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_XingWu_Effect_To" }
        }
    },
    huoji: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_3", "P_Delay_Frame_4" ], _type: "P_Hurt_Back_Over" },
            _effect: { _type: "P_HuoJi_Effect_To_Mid" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_Fire_Effect_To" },
            _effect_to1: { _delay: null, _type: "P_ShuangXiong_Effect_To_BaoJi" }
        }
    },
    huoji_enter: { _attack: { _effect_to: { _delay: null, _type: null } } },
    shenji: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ], _type: "P_Hurt_Back_Over" },
            _effect: { _type: "P_WuQian_Effect_From_Near" },
            _effect_to: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_WuQian_Effect_To"
            }
        }
    },
    yanyan: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over_IDLE" },
            _effect_from: { _type: "P_Fire_Effect_From" },
            _effect_to: { _type: null }
        }
    },
    yanyan_extra: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: "P_YanYan_Effect_From_Mid" }
        }
    },
    fuluan: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_7", "P_Delay_Frame_1" ],
                _type: "P_Hurt_Back_Over_IDLE"
            },
            _effect_from: { _type: "P_FuLuan_Effect_From" },
            _effect_to: { _type: null }
        }
    },
    fuluan_extra: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over_FL" },
            _effect_to: { _type: "P_FuLuan_Effect_To" }
        }
    },
    fuluan_hp_add: { _attack: { type: "Spawn", _buff_to: { _delay: null, _type: "P_Hp_Add_To" } } },
    huoji_new: { extend: "huoji", _attack: { _effect1: { _type: "P_HuoJi_Effect_To_Mid_RY" } } },
    jianying: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_JianYing_Effect_From" },
            _effect_to: { _delay: null, _type: null }
        }
    },
    jianying_v5: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Sequence",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_JianYing_Effect_From" },
            _effect_to: { _delay: null, _type: null },
            _effect_from1: { _delay: [ "P_Delay_Frame_10" ], _type: "P_JianYing_Cure_From" }
        }
    },
    qiangwu: {
        extend: "template.T_Remote_Super",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_7", _type: "P_Hurt_Back_Over" },
            _effect_far: { _type: "P_QiangWu_Effect_To_Far" },
            _effect_mid: { _type: "P_QiangWu_Effect_To_Mid" },
            _effect_from: { _type: null },
            _effect_to: { _delay: "P_Delay_Frame_4", _type: "P_QiangWu_Effect_To" }
        }
    },
    shenfen: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: {
                _delay: [
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_10",
                    "P_Delay_Frame_1"
                ],
                _type: { type: "Spawn", "0": "P_Hurt_Back_Over_From", "1": "P_Hurt_Fly_Over" }
            },
            _effect_from: { _type: "P_ShenFen_Effect_From" },
            _effect_to: { _type: "P_ShenFen_Effect_To" }
        }
    },
    fu: {
        extend: "template.T_Super",
        _main: {
            type: "Spawn",
            _effect_from: [ "P_Fu_Effect_From" ],
            _hurt: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Hurt_Normal_Over" ]
        }
    },
    shefu: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 3 },
        _attack: {
            _hurt: null,
            _hurt0: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Hurt_Hit", params: { idx: 0 } },
            _hurt1: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_2" ], _type: "P_Hurt_Hit", params: { idx: 1 } },
            _hurt2: { _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_3" ], _type: "P_Hurt_Fly_Over", params: { idx: 2 } },
            _effect_from: { _type: "P_ShenFen_Effect_From" },
            _effect_to0_far: { _type: "P_SheFu_Effect_To0_Far" },
            _effect_to1: { _type: "P_SheFu_Effect_To1" }
        }
    },
    yinghun: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_55" ], _type: [ "P_Hurt_Fly_Over" ] },
            _effect: { _type: null },
            _effect_from: { _type: "P_YingHun_Effect_From" },
            _effect_to: { _type: "P_YingHun_Effect_To" },
            _buff_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_55" ], _type: "P_Def_Sub_To" },
            _buff_to1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_55" ], _type: "P_BuffSub_Effect_To" }
        }
    },
    wushuang: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ], _type: "P_Hurt_Fly_Over" },
            _effect: { _type: "P_WuShuang_Effect_From_Mid" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_WuShuang_Effect_To" }
        }
    },
    wushuang_v3: {
        extend: "wushuang",
        _attack: {
            _buff: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_Atk_Sub_To_NoBak"
            },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_WuShuangV3_Effect_To"
            }
        }
    },
    wushuang_v5: { extend: "wushuang_v3" },
    wuqian: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ], _type: "P_Hurt_Back_Over" },
            _effect: { _type: "P_WuQian_Effect_From_Near" },
            _effect_from: { _type: null },
            _effect_to: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_WuQian_Effect_To"
            }
        }
    },
    jijiang: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_1" ], _type: "P_Hurt_Back_Over_NFS" },
            _buff_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_4" ], _type: "P_Atk_Add_To_FS" },
            _effect_from: { _type: "P_JiJiang_Effect_From1" },
            _effect_to_friendly: { _type: "P_JiJiang_Effect_To_FS" },
            _effect_to: { _type: "P_JiJiang_Effect_To" }
        }
    },
    jijiang_v3: { extend: "jijiang" },
    jijiang_v4: {
        extend: "jijiang",
        _effect_to1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_2" ], _type: "P_Hp_Add_To_FS" }
    },
    jijiang_v5: {
        extend: "jijiang",
        _effect_to2: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_2" ], _type: "P_Hp_Add_To_FS" }
    },
    jijiang_v5_enter: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over" },
            _effect: { _delay: null, _type: "P_JiJiang_Effect_From1_Mid" },
            _effect1: { _delay: null, _type: "P_JiJiang_Effect_From2_Mid" }
        }
    },
    hujia_v4_enter: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_HuJia_Effect_From_Mid" },
            _effect_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Nuyan_Begin_QJ" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ],
                _type: [ "P_Nuyan_Effect_To", "P_Nuyan_End_Boom" ]
            }
        }
    },
    hujia_v5_enter: { extend: "hujia_v4_enter" },
    hujia_v4: { extend: "hujia" },
    hujia_v5: { extend: "hujia" },
    wwny: {
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_Hurt_Back_Over_FS"
            },
            _effect_from: { _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4", "P_Delay_Frame_4" ], _type: "P_Hp_Add_To_NOFS" }
        }
    },
    xiaoyong_1: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_1_Begin" }
        }
    },
    xiaoyong_2: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_2_Begin" }
        }
    },
    xiaoyong_3: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_3_Begin" }
        }
    },
    xiaoyong_4: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_4_Begin" }
        }
    },
    xiaoyong_5: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_5_Begin" }
        }
    },
    xiaoyong_6: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_6_Begin" }
        }
    },
    xiaoyong_7: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_7_Begin" }
        }
    },
    xiaoyong_8: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_8_Begin" }
        }
    },
    xiaoyong_9: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_XiaoYong_9_Begin" }
        }
    },
    tiannian_1: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_TianNian_1_Begin" }
        }
    },
    tiannian_2: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_TianNian_2_Begin" }
        }
    },
    tiannian_3: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_TianNian_3_Begin" }
        }
    },
    tiannian_4: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_TianNian_4_Begin" }
        }
    },
    tiannian_5: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_TianNian_5_Begin" }
        }
    },
    guixin_dun_1: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_GuiXin_1_Begin" }
        }
    },
    guixin_dun_2: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_GuiXin_2_Begin" }
        }
    },
    guixin_dun_3: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_GuiXin_3_Begin" }
        }
    },
    guixin_dun_4: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_GuiXin_4_Begin" }
        }
    },
    guixin_dun_5: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_GuiXin_5_Begin" }
        }
    },
    guixin: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_26" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: "P_GuiXin_Effect_From" },
            _effect_to: { _delay: [ "P_Delay_Frame_26" ], _type: "P_GuiXin_Effect_To" }
        }
    },
    zhaoxin: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over_ZhaoXin" },
            _effect_from: { _delay: null, _type: "P_ZhaoXin_Effect_From" },
            _effect_to1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10" ], _type: "P_XueChi_End_Blood" },
            _effect_to: { _delay: null, _type: "P_ZhaoXin_Effect_To" }
        }
    },
    zhaoxin_v4: {
        extend: "zhaoxin",
        _attack: { _effect_from1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_20" ], _type: "P_Cure_From" } }
    },
    tuntian: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over_BOOM" },
            _effect_from: { _delay: null, _type: "P_TunTian_Effect_From_Mid" },
            _effect_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Nuyan_Begin_QJ" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ],
                _type: [ "P_Nuyan_Effect_To", "P_Nuyan_End_Boom" ]
            }
        }
    },
    tuntian_v2: {
        extend: "tuntian",
        _effect_to2: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: [ "P_Atk_Add_From" ] }
    },
    tuntian_v3: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over_BOOM" },
            _effect_from: { _delay: null, _type: "P_TunTian_Effect_From_Mid" },
            _effect_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Nuyan_Begin_QJ" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ],
                _type: [ "P_Nuyan_Effect_To", "P_Nuyan_End_Boom" ]
            },
            _effect_to2: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: [ "P_Atk_Add_From" ] },
            _effect_to3: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_30" ], _type: "P_Hp_Add_From" }
        }
    },
    tuntian_v4: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over_BOOM" },
            _effect_from: { _delay: null, _type: "P_TunTian_Effect_From_Mid" },
            _effect_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Nuyan_Begin_QJ" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ],
                _type: [ "P_Nuyan_Effect_To", "P_Nuyan_End_Boom" ]
            },
            _effect_to2: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: [ "P_Atk_Add_From" ] },
            _effect_to3: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_30" ], _type: "P_Hp_Add_From" }
        }
    },
    tuntian_v5: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_5", "P_Delay_Frame_30" ], _type: "P_Hurt_Back_Over_BOOM" },
            _effect_from: { _delay: null, _type: "P_TunTian_Effect_From_Mid" },
            _effect_to: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Nuyan_Begin_QJ" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ],
                _type: [ "P_Nuyan_Effect_To", "P_Nuyan_End_Boom" ]
            },
            _effect_to2: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: [ "P_Atk_Add_From" ] },
            _effect_to3: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_30" ], _type: "P_Hp_Add_From" }
        }
    },
    xueji: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_4", "P_Delay_Frame_2" ], _type: "P_Hurt_Back_Over" },
            _effect: { _type: "P_XueJi_Effect_To_Mid" },
            _effect_from: { _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_4", "P_Delay_Frame_2" ], _type: "P_XueJi_Effect_To" }
        }
    },
    qiangxi: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_2" ],
                _type: "P_Hurt_Back_Over"
            },
            _effect: { _type: "P_Hp_Sub_From" },
            _effect_from: { _type: "P_QiangXi_Effect_From" },
            _effect_to: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_2" ],
                _type: "P_QiangXi_Effect_To"
            }
        }
    },
    tieji: {
        extend: "template.T_Remote_SS",
        _attack_before: "P_TieJi_Effect_From",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_2", _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_TieJi_Effect_To" }
        }
    },
    tieqi: { extend: "tieji" },
    yanyu: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_2", _type: "P_Hurt_Back_Over" },
            _effect_from: { _type: null },
            _effect_to: { _type: "P_YanYu_Effect_To" }
        }
    },
    poxi: { extend: "yanyu" },
    luanji: {
        extend: "template.T_Remote_Super",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_4" ], _type: "P_Hurt_Back_Over" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_LuanJi_Effect_From" },
            _effect_to: { _delay: null, _type: "P_LuanJi_Effect_To" }
        }
    },
    mo_luanwu: { extend: "luanwu" },
    mo_luanwu_0: {},
    mo_luanwu_1: { extend: "luanwu" },
    luanwu: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 6 },
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _hurt0: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_1" ], _type: "P_Hurt_Hit", params: { idx: 0 } },
            _hurt1: { _delay: [ "P_Delay_Frame_37" ], _type: "P_Hurt_Hit", params: { idx: 1 } },
            _hurt2: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_Hurt_Hit", params: { idx: 2 } },
            _hurt3: { _delay: [ "P_Delay_Frame_46", "P_Delay_Frame_3" ], _type: "P_Hurt_Hit", params: { idx: 3 } },
            _hurt4: { _delay: [ "P_Delay_Frame_55" ], _type: "P_Hurt_Hit", params: { idx: 4 } },
            _hurt5: {
                _delay: [ "P_Delay_Frame_55", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_Hurt_Fly_Over",
                params: { idx: 5 }
            },
            _effect: { _delay: null, _type: null },
            _effect_from0: { _delay: null, _type: "P_LuanWu_Effect_From0" },
            _effect_from1: { _delay: null, _type: "P_LuanWu_Effect_From1" },
            _effect_to: { _delay: null, _type: "P_LuanWu_Effect_To" }
        }
    },
    baiyin_luanwu: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 6 },
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _hurt0: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_1" ], _type: "P_Hurt_Hit", params: { idx: 0 } },
            _hurt1: { _delay: [ "P_Delay_Frame_37" ], _type: "P_Hurt_Hit", params: { idx: 1 } },
            _hurt2: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_Hurt_Hit", params: { idx: 2 } },
            _hurt3: { _delay: [ "P_Delay_Frame_46", "P_Delay_Frame_3" ], _type: "P_Hurt_Hit", params: { idx: 3 } },
            _hurt4: { _delay: [ "P_Delay_Frame_55" ], _type: "P_Hurt_Hit", params: { idx: 4 } },
            _hurt5: {
                _delay: [ "P_Delay_Frame_55", "P_Delay_Frame_4", "P_Delay_Frame_4" ],
                _type: "P_Hurt_Fly_Over",
                params: { idx: 5 }
            },
            _effect: { _delay: null, _type: null },
            _effect_from0: { _delay: null, _type: "P_BaiYin_Effect_From_Mid" },
            _effect_to: { _delay: null, _type: "P_LuanWu_Effect_To" }
        }
    },
    ganlu: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5" ], _type: "P_Hurt_Back_Over" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_GanLu_Effect_From" },
            _effect_from1: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_5" ], _type: "P_Cure_From" },
            _effect_to: { _delay: null, _type: "P_GanLu_Effect_To" }
        }
    },
    buyi: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_10" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: "P_GanLu_V5_Effect_From" },
            _effect_to: {
                _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_10", "P_Delay_Frame_10" ],
                _type: "P_GanLu_V5_Effect_To"
            }
        }
    },
    qicai: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _text: { _type: "P_QiCai_Text" },
            _hurt: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5" ], _type: "P_Hurt_Back_Over_No_Text" },
            _hurt1: { _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10" ], _type: "P_Hurt_Normal_Over_No_Text" },
            _hurt2: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10", "P_Delay_Frame_10" ],
                _type: "P_Hurt_Normal_Over_No_Text"
            },
            _effect: { _delay: null, _type: null },
            _effect_from0: { _delay: null, _type: "P_QiCai_Effect_From0" },
            _effect_from1: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5" ], _type: "P_QiCai_Effect_From1" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_10" ],
                _type: [ "P_QiCai_Effect_To", "P_QiCai_Effect_ToR", "P_QiCai_Effect_To" ]
            },
            _effect_to2: {
                _delay: [ "P_Delay_Frame_10" ],
                _type: [
                    "P_ShuangXiong_Effect_To_BaoJi",
                    "P_ShuangXiong_Effect_To_BaoJi",
                    "P_ShuangXiong_Effect_To_BaoJi"
                ]
            },
            _buff: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5" ], _type: "P_Def_Add_From" }
        }
    },
    qicai_v4: {
        extend: "qicai",
        _attack: {
            _effect_from0: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5" ], _type: "P_Def_Add_From" },
            _effect_from1: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_10" ], _type: "P_Cure_From" }
        }
    },
    qicai_v5_enter: { _attack: { _effect_to: { _delay: null, _type: null } } },
    baiyin_qicai: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5", "P_Delay_Frame_10", "P_Delay_Frame_5" ],
                _type: "P_Hurt_Back_Over_NOHURT"
            },
            _effect: { _delay: null, _type: null },
            _effect_from0: { _delay: null, _type: "P_BaiYin_Effect_From_Mid" },
            _effect_to1: {
                _delay: [ "P_Delay_Frame_10", "P_Delay_Frame_10" ],
                _type: [ "P_QiCai_Effect_To", "P_QiCai_Effect_ToR", "P_QiCai_Effect_To", "P_Delay_Frame_5" ]
            },
            _buff: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_5" ], _type: "P_Def_Add_From" }
        }
    },
    guicai: {
        extend: "template.T_Remote_SS",
        _name: "P_Super_Skill",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_37" ], _type: "P_Hurt_Back_Over" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_GuiCai_Effect_From" },
            _effect_to: { _delay: null, _type: "P_GuiCai_Effect_To", _black_end: null },
            _effect_to1: { _delay: "P_Delay_Frame_37", _type: "P_Freeze_Begin", _black_end: "P_SS_BG_End" }
        }
    },
    fencheng: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_5", _type: "P_Hurt_Back_Over" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_FenCheng_Effect_From" },
            _effect_to: { _delay: null, _type: "P_FenCheng_Effect_To" },
            _buff: [ "P_Delay_Frame_5", "P_Delay_Frame_4", "P_Def_Sub_To" ]
        }
    },
    tiaoxin: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_5" ], _type: "P_Hurt_Fly_Over" },
            _effect: { _delay: [ "P_Delay_Frame_50", "P_Delay_Frame_2" ], _type: "P_TiaoXin_Effect_to" },
            _effect_from0: { _delay: null, _type: "P_TiaoXin_Effect_From0" },
            _effect_from1: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_7" ], _type: "P_TiaoXin_Effect_From1" },
            _buff_to1: [ "P_Delay_Frame_10", "P_BuffSub_Effect_ToByNo" ],
            _buff_to2: [ "P_Delay_Frame_10", "P_Def_Sub_ToByDef" ],
            _buff_from1: [ "P_Delay_Frame_10", "P_Delay_Frame_7", "P_Def_Add_From" ],
            _buff_from2: [ "P_Delay_Frame_10", "P_Delay_Frame_7", "P_BuffAdd_Effect_From" ]
        }
    },
    caijian: { extend: "fencheng", _attack: { _buff: null } },
    zhiyan: { extend: "fencheng", _attack: { _buff: null } },
    xuanfeng: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: "P_Delay_Frame_5", _type: "P_Hurt_Fly_Over" },
            _effect: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_XuanFeng_Effect_From" },
            _effect_to: { _delay: null, _type: "P_XuanFeng_Effect_To" },
            _buff: [ "P_Delay_Frame_10", "P_Delay_Frame_3", "P_Atk_Sub_To" ]
        }
    },
    seli_TEST: {
        extend: "template.T_Remote_0",
        _attack: { type: "Spawn", _hurt: { _type: "P_Hurt_Normal_Over" }, _effect: {} }
    },
    guipu: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_GuiPu_Effect_From_Mid" },
            _hurt: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_30" ], _type: "P_GuiPu_Effect_To" },
            _effect_to1: { _delay: [ "P_Delay_Frame_37" ], _type: "P_Cure_To" }
        }
    },
    zhengnan: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _effect_from: { _type: "P_ZhengNan_Effect_From" },
            _hurt: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_30" ], _type: "P_ZhengNan_Effect_To" }
        }
    },
    zhengnan_hp_add: { _attack: { type: "Spawn", _effect_to: { _delay: null, _type: "P_Cure_To" } } },
    qingnang_dun: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_QingNangDun_Effect_To" }
        }
    },
    zaiqi: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_ZaiQi_Effect_From" },
            _effect_to: { _delay: [ "P_Delay_Frame_55" ], _type: "P_Cure_To" }
        }
    },
    zaiqi_add: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_ZaiQi_Begin" }
        }
    },
    zaiqi_end: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_ZaiQi_End" }
        }
    },
    zhidao: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_6" ], _type: "P_Hurt_Over" },
            _effect_from1: { _delay: null, _type: "P_ZhiDao_Effect_From_01" },
            _effect_from2: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_2" ], _type: "P_ZhiDao_Effect_From_02" },
            _effect_from_atkUp: { _delay: [ "P_Delay_Frame_55", "P_Delay_Frame_2" ], _type: "P_Atk_Add_From" },
            _effect_from_defUp: { _delay: [ "P_Delay_Frame_68", "P_Delay_Frame_11", "P_Delay_Frame_3" ], _type: "P_Def_Add_From" },
            _effect_to1: { _delay: [ "P_Delay_Frame_7", "P_Delay_Frame_5" ], _type: "P_ZhiDao_Effect_To" },
            _effect_to_atkSub: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_5" ], _type: "P_Atk_Sub_To" },
            _effect_to_DefSub: { _delay: [ "P_Delay_Frame_46", "P_Delay_Frame_10" ], _type: "P_Def_Sub_To" }
        }
    },
    jili: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _effect_from: { _delay: null, _type: null },
            _hurt: { _delay: null, _type: null },
            _effect_to_add: { _delay: null, _type: "P_JiLi_Effect_To_Add" },
            _effect_to_not_fs_atkUp: { _delay: null, _type: "P_Atk_Add_To_Add" },
            _effect_to: { _type: "P_JiLi_Effect_To_Reduce" },
            _effect_to_atkSub: { _type: "P_Atk_Sub_To_Reduce" }
        }
    },
    mumu: {
        extend: "template.T_SS",
        _attack: {
            type: "Spawn",
            _effect_from1: { _delay: null, _type: "P_MuMu_Effect_From_01" },
            _effect_from2: { _delay: [ "P_Delay_Frame_7", "P_Delay_Frame_5" ], _type: "P_MuMu_Effect_From_Mid" },
            _buff_from: { _delay: [ "P_Delay_Frame_4", "P_Delay_Frame_10" ], _type: "P_Def_Add_From" },
            _effect_to1: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_2" ], _type: "P_MuMu_Effect_To" },
            _buff_to: { _delay: [ "P_Delay_Frame_26", "P_Delay_Frame_11", "P_Delay_Frame_3" ], _type: "P_Def_Sub_To" }
        }
    },
    fuhun_skill: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" },
            _effect_from: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_11" ], _type: "P_FuHun_Effect_From" },
            _effect_to: { _delay: null, _type: "P_FuHun_Effect_To" }
        }
    },
    panding: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: "P_PanDing_Effect_To" },
            _effect_to1: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_To01" },
            _effect_to2: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_To02" },
            _effect_to3: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_To03" }
        }
    },
    spleidian: {
        extend: "template.T_Remote_Super",
        _attack: {
            type: "Spawn",
            _hurt: {
                _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_30", "P_Delay_Frame_50" ],
                _type: "P_Hurt_Back_Over",
                params: { effectType: xs.Constant_EffectPlayType_Single_Random }
            },
            _effect_from: { _delay: null, _type: "P_PanDing_Effect_From" },
            _effect_from1: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_From01" },
            _effect_from2: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_From02" },
            _effect_from3: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_6" ], _type: "P_PanDing_Effect_From03" },
            _effect_to: { _delay: [ "P_Delay_Frame_37", "P_Delay_Frame_50" ], _type: "P_SPLeiJi_Effect_To" }
        }
    },
    spleidian_extra: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over" },
            _effect_to: { _delay: null, _type: "P_SPLeiJi_Effect_To" }
        }
    },
    spleiji_extra: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Back_Over" },
            _effect_to: { _delay: null, _type: "P_SPLeiJi_Effect_To" }
        }
    },
    sptieqi: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" },
            _effect_to: { _delay: null, _type: "P_SPTieQi_Effect_To" }
        }
    },
    yicong: { extend: "template.T_Remote_SS" },
    yicong_v3: {
        extend: "yicong",
        _attack: { type: "Spawn", _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" } }
    },
    yicong_v4: {
        extend: "yicong_v3",
        _attack: { type: "Spawn", _effect_to: { _delay: null, _type: "P_Def_Sub_To" } }
    },
    yicong_v5: { extend: "yicong_v4", _attack: { _effect_from: { _delay: null, _type: "P_YiCong_Effect_From" } } },
    yingbing: {
        extend: "template.T_Remote_SS",
        _attack: { type: "Spawn", _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" } }
    },
    yingbing_v3: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" },
            _effect_to: { _delay: null, _type: "P_YingBing_Effect_To" }
        }
    },
    yingbing_v4: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: "P_Hurt_Normal_Over" },
            _effect_to: { _delay: null, _type: "P_YingBing_Effect_To" },
            _effect_from: { _delay: null, _type: "P_Int_Add_From_NoFail" }
        }
    },
    juejing_dun: {
        extend: "template.T_Remote_SS",
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_6" ], _type: "P_JueJingDun_Effect_From" },
            _effect_to1: { _delay: [ "P_Delay_Frame_46" ], _type: "P_JueJingDun_Begin" }
        }
    },
    xuruo_add: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to1: { _delay: [ "P_Delay_Frame_6" ], _type: "P_XuRuo_Begin" }
        }
    },
    fanji_add: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_FanJi_Begin" }
        }
    },
    pojia_add: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_PoJia_Begin" }
        }
    },
    zhuiji_add: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_ZhuiJi_Begin" }
        }
    },
    yinran_add: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: "P_HuoYan_Begin_Copy" }
        }
    },
    star_1: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_1_Begin" }
        }
    },
    star_2: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_2_Begin" }
        }
    },
    star_3: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_3_Begin" }
        }
    },
    star_4: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_4_Begin" }
        }
    },
    star_5: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_5_Begin" }
        }
    },
    star_6: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_6_Begin" }
        }
    },
    star_7: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_7_Begin" }
        }
    },
    star_8: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_8_Begin" }
        }
    },
    star_9: {
        _attack: {
            type: "Spawn",
            _hurt: { _delay: null, _type: null },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: [ "P_Delay_Frame_5" ], _type: "P_Star_9_Begin" }
        }
    },
    jijiaozhishi: {
        extend: "template.T_Remote_SS",
        property: { hps: { type: xs.Constant_FightScene_HpsType_Average }, loopNum: 1 },
        _attack: {
            _hurt: {
                _delay: [ "P_Delay_Frame_10" ],
                _type: { "0": "P_JiJiaoZhiShi_Hit_Loop", "1": "P_Hurt_Back_Over" }
            },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: "P_JiJiaoZhiShi_Effect_To" }
        }
    },
    yijue: {
        extend: "template.T_Remote_SS",
        _attack: {
            _hurt: { _delay: [ "P_Delay_Frame_30", "P_Delay_Frame_20" ], _type: "P_Hurt_Back_Over" },
            _effect_from: { _delay: null, _type: null },
            _effect_to: { _delay: null, _type: "P_YiJue_Effect_To" }
        }
    }
});
