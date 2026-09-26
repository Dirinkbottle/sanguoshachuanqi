package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public final class BattleSkillTemplateSpecResolver {
    private BattleSkillTemplateSpecResolver() {
    }

    private static BattleSkillAnimationPolicy animationPolicy(BattleSkillTemplate battleSkillTemplate, BattleSkillDescriptor battleSkillDescriptor, String str) {
        if (battleSkillTemplate == BattleSkillTemplate.IMMUNE_AND_COUNTER_DAMAGE) {
            return hasAny(str, "场上血最多敌军", "血最多敌军") ? BattleSkillAnimationPolicy.COUNTER_DAMAGE_ONLY : BattleSkillAnimationPolicy.SPLIT_IMMUNE_COUNTER;
        }
        return (battleSkillTemplate == BattleSkillTemplate.UNKNOWN || battleSkillTemplate == BattleSkillTemplate.NO_EFFECT) ? BattleSkillAnimationPolicy.NORMAL_ATTACK_FALLBACK : BattleSkillAnimationPolicy.EMIT_SKILL_ROUND;
    }

    private static BattleSkillEnemyFieldPolicy enemyFieldPolicy(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule, String str) {
        if (battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_HEAL || battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS || (battleSkillTargetRule == BattleSkillTargetRule.ALL_ACTIVE_ENEMIES_AND_ALLIES && hasAny(str, "或回复", "或恢复", "或增加己方", "或增加友方"))) {
            return BattleSkillEnemyFieldPolicy.ALLOW_ALLY_FALLBACK;
        }
        return hasAny(str, "立即进行一次攻击", "立即进行一次普通攻击") ? BattleSkillEnemyFieldPolicy.REQUIRE_ACTIVE_ENEMY : BattleSkillTemplateSpec.simple(battleSkillTemplate, battleSkillTargetRule).getEnemyFieldPolicy();
    }

    private static boolean hasAny(String str, String... strArr) {
        if (str != null && str.length() != 0) {
            String lowerCase = str.toLowerCase();
            for (String str2 : strArr) {
                if (str2 != null && str2.length() > 0 && lowerCase.contains(str2.toLowerCase())) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean isPreAttackStateBuff(BattleSkillTemplate battleSkillTemplate, BattleSkillDescriptor battleSkillDescriptor) {
        if ("2".equals(battleSkillDescriptor.getSkillType())) {
            return battleSkillTemplate == BattleSkillTemplate.DAMAGE_BONUS_BUFF || battleSkillTemplate == BattleSkillTemplate.DAMAGE_REDUCTION_BUFF || battleSkillTemplate == BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF;
        }
        return false;
    }

    private static boolean isTianxiang(BattleSkillDescriptor battleSkillDescriptor) {
        if (battleSkillDescriptor == null) {
            return false;
        }
        String code = battleSkillDescriptor.getCode();
        return "tianxiang".equals(code) || (code != null && code.startsWith("tianxiang_v")) || "331008".equals(code);
    }

    public static BattleSkillTemplateSpec resolve(BattleSkillDescriptor battleSkillDescriptor) {
        BattleSkillTemplate battleSkillTemplateResolve = BattleSkillTemplateResolver.resolve(battleSkillDescriptor);
        if (battleSkillDescriptor == null) {
            return BattleSkillTemplateSpec.simple(BattleSkillTemplate.UNKNOWN, BattleSkillTargetRule.NORMAL_COUNTERPART);
        }
        String strCombinedText = battleSkillDescriptor.combinedText();
        BattleSkillTargetRule battleSkillTargetRuleTargetRule = targetRule(battleSkillDescriptor, strCombinedText);
        BattleSkillAnimationPolicy battleSkillAnimationPolicyAnimationPolicy = animationPolicy(battleSkillTemplateResolve, battleSkillDescriptor, strCombinedText);
        BattleSkillEnemyFieldPolicy battleSkillEnemyFieldPolicyEnemyFieldPolicy = enemyFieldPolicy(battleSkillTemplateResolve, battleSkillTargetRuleTargetRule, strCombinedText);
        boolean zHasAny = hasAny(strCombinedText, "出场技", "出场时");
        if (isPreAttackStateBuff(battleSkillTemplateResolve, battleSkillDescriptor)) {
            BattleSkillTemplateSpec battleSkillTemplateSpecPreAttackBuff = BattleSkillTemplateSpec.preAttackBuff(battleSkillTemplateResolve, battleSkillTargetRuleTargetRule, battleSkillAnimationPolicyAnimationPolicy, battleSkillEnemyFieldPolicyEnemyFieldPolicy);
            return zHasAny ? battleSkillTemplateSpecPreAttackBuff.withOnEntrySkill() : battleSkillTemplateSpecPreAttackBuff;
        }
        BattleSkillTemplateSpec battleSkillTemplateSpecSimple = BattleSkillTemplateSpec.simple(battleSkillTemplateResolve, battleSkillTargetRuleTargetRule, battleSkillAnimationPolicyAnimationPolicy, battleSkillEnemyFieldPolicyEnemyFieldPolicy);
        return zHasAny ? battleSkillTemplateSpecSimple.withOnEntrySkill() : battleSkillTemplateSpecSimple;
    }

    private static BattleSkillTargetRule targetRule(BattleSkillDescriptor battleSkillDescriptor, String str) {
        String range = battleSkillDescriptor.getRange();
        if (isTianxiang(battleSkillDescriptor)) {
            return BattleSkillTargetRule.ATTACKER;
        }
        if (hasAny(str, "敌方所有援军")) {
            return BattleSkillTargetRule.ENEMY_BACKUPS;
        }
        if (hasAny(range, "敌方场上单体和敌方1名援军", "敌方场上单体和敌方一名援军")) {
            return BattleSkillTargetRule.ACTIVE_ENEMY_AND_BACKUP;
        }
        if (hasAny(range, "敌方场上单体和敌方2名援军", "敌方场上单体和敌方两名援军")) {
            return BattleSkillTargetRule.ACTIVE_ENEMY_AND_TWO_BACKUPS;
        }
        if (hasAny(range, "敌方全体和自身", "自身和敌方全体")) {
            return BattleSkillTargetRule.SELF_AND_ALL_ACTIVE_ENEMIES;
        }
        if (hasAny(range, "敌方全体和己方全体", "敌方全体和已方全体", "敌方场上全体或己方场上全体", "敌方全体或己方全体")) {
            return BattleSkillTargetRule.ALL_ACTIVE_ENEMIES_AND_ALLIES;
        }
        if (hasAny(str, "场上血最多敌军", "血最多敌军")) {
            return BattleSkillTargetRule.HIGHEST_HP_ACTIVE_ENEMY;
        }
        if (hasAny(str, "场上血最少敌军", "血最少敌军", "敌方血量最少")) {
            return BattleSkillTargetRule.LOWEST_HP_ACTIVE_ENEMY;
        }
        if (hasAny(str, "防最低敌军", "防最低单体", "防御最低")) {
            return BattleSkillTargetRule.LOWEST_DEFENSE_ACTIVE_ENEMY;
        }
        if (hasAny(str, "场上防最高敌军", "防最高敌军", "防御最高敌军")) {
            return BattleSkillTargetRule.HIGHEST_DEFENSE_ACTIVE_ENEMY;
        }
        if (hasAny(str, "场上攻最高敌军", "攻最高敌军", "攻击最高敌军", "敌方场上一名攻击最高的角色", "攻击最高的角色")) {
            return BattleSkillTargetRule.HIGHEST_ATTACK_ACTIVE_ENEMY;
        }
        if (hasAny(str, "场上智最高友军", "场上智最高己方")) {
            return BattleSkillTargetRule.HIGHEST_WISDOM_ACTIVE_ALLY;
        }
        if (hasAny(str, "场上攻最高友军", "攻最高友军")) {
            return BattleSkillTargetRule.HIGHEST_ATTACK_ACTIVE_ALLY;
        }
        if (hasAny(str, "场上四维最高友军", "四维最高友军")) {
            return BattleSkillTargetRule.HIGHEST_ALL_STATS_ACTIVE_ALLY;
        }
        if (hasAny(range, "敌方2名男性", "敌方两名男性")) {
            return BattleSkillTargetRule.FIRST_TWO_ACTIVE_MALE_ENEMIES;
        }
        if (hasAny(range, "自身") && !hasAny(range, "敌方")) {
            return BattleSkillTargetRule.SELF;
        }
        if (hasAny(range, "敌方全体", "敌方场上全体")) {
            return BattleSkillTargetRule.ALL_ACTIVE_ENEMIES;
        }
        if (hasAny(range, "己方另外2名", "己方另外两名", "己方另两名", "已方另外2名", "已方另外两名", "已方另两名")) {
            return BattleSkillTargetRule.FIRST_TWO_OTHER_ACTIVE_ALLIES;
        }
        if (hasAny(range, "己方全体", "己方场上全体", "已方全体", "已方场上全体")) {
            return BattleSkillTargetRule.ALL_ACTIVE_ALLIES;
        }
        if (hasAny(range, "援军")) {
            return BattleSkillTargetRule.ACTIVE_ENEMY_AND_BACKUP;
        }
        if (hasAny(range, "随机2名", "随机两名")) {
            return BattleSkillTargetRule.RANDOM_TWO_ACTIVE_ENEMIES;
        }
        if (hasAny(range, "2名", "两名")) {
            return BattleSkillTargetRule.FIRST_TWO_ACTIVE_ENEMIES;
        }
        return hasAny(range, "己方血量最少", "已方血量最少", "场上血最少己方") ? BattleSkillTargetRule.LOWEST_HP_RATE_ALLY : BattleSkillTargetRule.NORMAL_COUNTERPART;
    }
}
