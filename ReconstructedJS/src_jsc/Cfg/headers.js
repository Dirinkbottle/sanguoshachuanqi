// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Cfg/headers.js:1
// source line 15, bytecode pc 0
var planDatePrefix;
// source line 16, bytecode pc 5
var artDatePrefix;
// source line 17, bytecode pc 10
var mPorName;
// source line 18, bytecode pc 15
var jsOrJsc;
// source line 11, bytecode pc 52
(xs.Cfg = (xs.Cfg || {}));
// source line 13, bytecode pc 95
(xs.Cfg.System = (xs.Cfg.System || {}));
// source line 15, bytecode pc 111
(planDatePrefix = "");
// source line 16, bytecode pc 127
(artDatePrefix = "");
// source line 17, bytecode pc 164
(mPorName = xsc.Tools.ProductSys.getArea());
// source line 18, bytecode pc 180
(jsOrJsc = "");
if (xs.release) {
    // source line 20, bytecode pc 211
    (jsOrJsc = "_jsc");
}
if ((mPorName == xsc.Const_Area_TW)) {
    // source line 23, bytecode pc 260
    (planDatePrefix = (("data_tw" + jsOrJsc) + "/plan"));
    // source line 24, bytecode pc 288
    (artDatePrefix = (("data_tw" + jsOrJsc) + "/art"));
} else {
    if ((mPorName == xsc.Const_Area_CN)) {
        // source line 26, bytecode pc 342
        (planDatePrefix = (("data_cn" + jsOrJsc) + "/plan"));
        // source line 27, bytecode pc 370
        (artDatePrefix = (("data_cn" + jsOrJsc) + "/art"));
    } else {
        // source line 30, bytecode pc 398
        xs.error("no find project name!");
    }
}
// source line 86, bytecode pc 1174
(xs.Cfg.System.files_generated_by_server = [
    (planDatePrefix + "/sgs_combat_level_conf.js"),
    (planDatePrefix + "/sgs_config_btn.js"),
    (planDatePrefix + "/sgs_config_label.js"),
    (planDatePrefix + "/sgs_dungeon_plot_conf.js"),
    (planDatePrefix + "/sgs_dungeon_plot_dialog.js"),
    (planDatePrefix + "/sgs_eated_exp_conf.js"),
    (planDatePrefix + "/sgs_equipments.js"),
    (planDatePrefix + "/sgs_fates.js"),
    (planDatePrefix + "/sgs_general_surrender.js"),
    (planDatePrefix + "/sgs_generals.js"),
    (planDatePrefix + "/sgs_global_conf.js"),
    (planDatePrefix + "/sgs_i18n.js"),
    (planDatePrefix + "/sgs_insight_grow_type.js"),
    (planDatePrefix + "/sgs_item.js"),
    (planDatePrefix + "/sgs_map_conf.js"),
    (planDatePrefix + "/sgs_random_name.js"),
    (planDatePrefix + "/sgs_refine_conf.js"),
    (planDatePrefix + "/sgs_resource.js"),
    (planDatePrefix + "/sgs_sell_conf.js"),
    (planDatePrefix + "/sgs_skill_effect.js"),
    (planDatePrefix + "/sgs_skills.js"),
    (planDatePrefix + "/sgs_surrender.js"),
    (planDatePrefix + "/sgs_upgrade_coin_conf.js"),
    (planDatePrefix + "/sgs_upgrade_exp_conf.js"),
    (planDatePrefix + "/sgs_user_level_conf.js"),
    (planDatePrefix + "/sgs_vip_level_conf.js"),
    (planDatePrefix + "/sgs_lieutenant_skill.js"),
    (planDatePrefix + "/sgs_buddy_conf.js"),
    (planDatePrefix + "/sgs_dungeon_conf.js"),
    (planDatePrefix + "/sgs_union_war_battle_conf.js"),
    (planDatePrefix + "/sgs_gem.js"),
    (planDatePrefix + "/sgs_skill_advanced_conf.js"),
    (planDatePrefix + "/sgs_magic_buff_conf.js"),
    (planDatePrefix + "/sgs_world_war_schedule.js"),
    (planDatePrefix + "/sgs_godness.js"),
    (planDatePrefix + "/sgs_godness_skin.js"),
    (planDatePrefix + "/sgs_hulao_reward_conf.js"),
    (planDatePrefix + "/sgs_melt_conf.js"),
    (planDatePrefix + "/sgs_function_level_conf.js"),
    (planDatePrefix + "/sgs_meridian_top_conf.js"),
    (planDatePrefix + "/sgs_meridian_conf.js"),
    (planDatePrefix + "/sgs_meridian_point_conf.js"),
    (planDatePrefix + "/sgs_godness_fates.js"),
    (planDatePrefix + "/sgs_skill_melt_conf.js"),
    (planDatePrefix + "/sgs_evolution.js"),
    (planDatePrefix + "/sgs_evolution_open_conf.js"),
    (planDatePrefix + "/sgs_evolution_buff_conf.js"),
    (planDatePrefix + "/sgs_evolution_surrender.js"),
    (planDatePrefix + "/sgs_beauty_conf_detail.js"),
    (planDatePrefix + "/sgs_skill_refine_conf.js")
]);
// source line 92, bytecode pc 1245
(xs.Cfg.System.files_generated_by_client = [
    (artDatePrefix + "/sgs_config_ttf.js"),
    (artDatePrefix + "/sgs_config_ls.js"),
    (artDatePrefix + "/sgs_config_bmf.js")
]);
// source line 95, bytecode pc 1288
xs.Utils.require(xs.Cfg.System.files_generated_by_server);
// source line 96, bytecode pc 1331
xs.Utils.require(xs.Cfg.System.files_generated_by_client);
// source line 130, bytecode pc 1539
xs.Utils.require([
    "Cfg/Constant.js",
    "Cfg/Label.js",
    "Cfg/Meta.js",
    "Cfg/Resource/headers.js",
    "Cfg/Langage.js",
    "Cfg/Scene.js",
    "Cfg/Animate.js",
    "Cfg/Sprite.js",
    "Cfg/Armature.js",
    "Cfg/Audio.js",
    "Cfg/Font.js",
    "Cfg/BMFont.js",
    "Cfg/String.js",
    "Cfg/Url.js",
    "Cfg/Particle.js",
    "Cfg/CCBI.js",
    "Cfg/Btn.js",
    "Cfg/Guide.js",
    "Cfg/Fight/headers.js",
    "Cfg/alias.js"
]);
// source line 134, bytecode pc 1560
(xs.Cfg.Tag = "sgs");
// source line 135, bytecode pc 1581
(xs.Cfg.TagWarn = "sgsw");
// source line 136, bytecode pc 1602
(xs.Cfg.TagErr = "sgse");
// source line 139, bytecode pc 1636
(xs.Cfg.DebugZOrder = (xs.Cfg.DebugTag = 10000));
