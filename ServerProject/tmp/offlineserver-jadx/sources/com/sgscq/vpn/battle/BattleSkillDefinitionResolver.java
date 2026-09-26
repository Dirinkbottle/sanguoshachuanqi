package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public final class BattleSkillDefinitionResolver {
    private BattleSkillDefinitionResolver() {
    }

    private static void addGenericEffects(BattleSkillDefinition.Builder builder, BattleSkillDescriptor battleSkillDescriptor, String str, BattleAttribute battleAttribute) {
        int i2;
        BattleEffectTarget battleEffectTargetTarget = isTianxiang(battleSkillDescriptor) ? BattleEffectTarget.ATTACKER : target(battleSkillDescriptor.getRange(), str);
        int i3 = 1;
        if (hasDamage(str)) {
            builder.effect(effect(BattleEffectType.ATTRIBUTE_DAMAGE, battleEffectTargetTarget, battleAttribute, 0));
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (hasAny(str, "回复", "恢复", "吸收", "吸血")) {
            builder.effect(effect(BattleEffectType.HEAL, healingTarget(battleSkillDescriptor.getRange(), str), battleAttribute, i2));
            i2 = 1;
        }
        if (hasAny(str, "下一次造成的伤害增加", "下一次伤害增加", "下次造成伤害增加")) {
            builder.effect(effect(BattleEffectType.NEXT_DAMAGE_BONUS, battleEffectTargetTarget, battleAttribute, i2));
            i2 = 1;
        }
        if (hasAny(str, "下一次造成的伤害减少", "下一次造成伤害减少")) {
            builder.effect(effect(BattleEffectType.NEXT_DAMAGE_DEALT_REDUCTION, battleEffectTargetTarget, battleAttribute, i2));
            i2 = 1;
        }
        if (hasAny(str, "下一次受到的伤害增加", "下一次受到伤害增加", "受到的伤害增加", "增加目标下一次受到的伤害", "增加该目标下一次受到的伤害", "增加其下一次受到的伤害", "使目标下一次受到的伤害增加")) {
            builder.effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_BONUS, battleEffectTargetTarget, battleAttribute, i2));
            i2 = 1;
        }
        if (hasAny(str, "下一次受到的伤害减少", "下一次所受伤害", "减少受到的伤害", "化解")) {
            builder.effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_REDUCTION, battleEffectTargetTarget, battleAttribute, i2));
            i2 = 1;
        }
        if (hasAny(str, "封印")) {
            builder.effect(effect(BattleEffectType.SEAL, battleEffectTargetTarget, battleAttribute, i2));
            i2 = 1;
        }
        if (hasAny(str, "无法行动", "冻结")) {
            builder.effect(effect(BattleEffectType.STUN, battleEffectTargetTarget, battleAttribute, i2));
        } else {
            i3 = i2;
        }
        if (i3 == 0) {
            builder.effect(effect(BattleEffectType.NEEDS_MANUAL_IMPLEMENTATION, battleEffectTargetTarget, battleAttribute, 0));
        }
    }

    private static BattleSkillEffect effect(BattleEffectType battleEffectType, BattleEffectTarget battleEffectTarget, BattleAttribute battleAttribute, int i2) {
        return BattleSkillEffect.builder(battleEffectType, battleEffectTarget).sourceAttribute(battleAttribute).paramIndex(i2).build();
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

    private static boolean hasDamage(String str) {
        return hasAny(str, "伤害系数", "造成攻击力伤害", "造成智力伤害", "造成防御力伤害", "无视防御", "造成等量的伤害");
    }

    private static BattleEffectTarget healingTarget(String str, String str2) {
        if (hasAny(str, "全体") && hasAny(str, "己方", "已方")) {
            return BattleEffectTarget.ALL_ACTIVE_ALLIES;
        }
        if (!hasAny(str, "血最少己方", "血量最少") && hasAny(str, "自身")) {
            return BattleEffectTarget.SELF;
        }
        return BattleEffectTarget.LOWEST_HP_RATE_ALLY;
    }

    private static boolean isFengwu(BattleSkillDescriptor battleSkillDescriptor) {
        return "fengwu".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isHujia(BattleSkillDescriptor battleSkillDescriptor) {
        return "hujia".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isJijiang(BattleSkillDescriptor battleSkillDescriptor) {
        return "jijiang".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isMumu(BattleSkillDescriptor battleSkillDescriptor) {
        return "mumu".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isQicai(BattleSkillDescriptor battleSkillDescriptor) {
        return "qicai".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isQuhu(BattleSkillDescriptor battleSkillDescriptor) {
        return "quhu".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isTianxiang(BattleSkillDescriptor battleSkillDescriptor) {
        if (battleSkillDescriptor == null) {
            return false;
        }
        return "tianxiang".equals(battleSkillDescriptor.getCode()) || "331008".equals(battleSkillDescriptor.getCode());
    }

    public static BattleSkillDefinition resolve(BattleSkillDescriptor battleSkillDescriptor) {
        if (battleSkillDescriptor == null) {
            return BattleSkillDefinition.builder("").build();
        }
        String strCombinedText = battleSkillDescriptor.combinedText();
        BattleAttribute battleAttributeSourceAttribute = sourceAttribute(battleSkillDescriptor);
        BattleSkillDefinition.Builder builderRequiresNoAttackSkillThisTurn = BattleSkillDefinition.builder(battleSkillDescriptor.getCode()).triggerPhase(triggerPhase(battleSkillDescriptor.getPhase(), strCombinedText)).mandatoryTrigger(hasAny(strCombinedText, "必触发", "必定")).requiresNoAttackSkillThisTurn(hasAny(strCombinedText, "未使用攻击技能"));
        if (isMumu(battleSkillDescriptor)) {
            return builderRequiresNoAttackSkillThisTurn.effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_REDUCTION, BattleEffectTarget.SELF, battleAttributeSourceAttribute, 0)).effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_BONUS, BattleEffectTarget.ALL_ACTIVE_ENEMIES, battleAttributeSourceAttribute, 1)).build();
        }
        if (isFengwu(battleSkillDescriptor)) {
            return builderRequiresNoAttackSkillThisTurn.effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_BONUS, BattleEffectTarget.ALL_ACTIVE_ENEMIES, battleAttributeSourceAttribute, 0)).effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_REDUCTION, BattleEffectTarget.LOWEST_HP_RATE_ALLY, battleAttributeSourceAttribute, 1)).build();
        }
        if (isQicai(battleSkillDescriptor)) {
            return builderRequiresNoAttackSkillThisTurn.effect(effect(BattleEffectType.ATTRIBUTE_DAMAGE, BattleEffectTarget.ALL_ACTIVE_ENEMIES, battleAttributeSourceAttribute, 0)).effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_REDUCTION, BattleEffectTarget.SELF, battleAttributeSourceAttribute, 3)).build();
        }
        if (isQuhu(battleSkillDescriptor)) {
            BattleEffectType battleEffectType = BattleEffectType.NEXT_DAMAGE_BONUS;
            BattleEffectTarget battleEffectTarget = BattleEffectTarget.HIGHEST_ALL_STATS_ACTIVE_ALLY;
            return builderRequiresNoAttackSkillThisTurn.effect(effect(battleEffectType, battleEffectTarget, battleAttributeSourceAttribute, 0)).effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_REDUCTION, battleEffectTarget, battleAttributeSourceAttribute, 1)).effect(effect(BattleEffectType.IMMEDIATE_ACTION, battleEffectTarget, battleAttributeSourceAttribute, 2)).build();
        }
        if (isHujia(battleSkillDescriptor)) {
            return builderRequiresNoAttackSkillThisTurn.effect(effect(BattleEffectType.NEXT_DAMAGE_DEALT_REDUCTION, BattleEffectTarget.ALL_ACTIVE_ENEMIES, battleAttributeSourceAttribute, 0)).effect(effect(BattleEffectType.NEXT_DAMAGE_TAKEN_REDUCTION, BattleEffectTarget.SELF, battleAttributeSourceAttribute, 1)).build();
        }
        if (isJijiang(battleSkillDescriptor)) {
            return builderRequiresNoAttackSkillThisTurn.effect(effect(BattleEffectType.NEXT_DAMAGE_BONUS, BattleEffectTarget.ALL_ACTIVE_ALLIES, battleAttributeSourceAttribute, 0)).effect(effect(BattleEffectType.ATTRIBUTE_DAMAGE, BattleEffectTarget.NORMAL_COUNTERPART, battleAttributeSourceAttribute, 1)).build();
        }
        addGenericEffects(builderRequiresNoAttackSkillThisTurn, battleSkillDescriptor, strCombinedText, battleAttributeSourceAttribute);
        return builderRequiresNoAttackSkillThisTurn.build();
    }

    private static BattleAttribute sourceAttribute(BattleSkillDescriptor battleSkillDescriptor) {
        String strCombinedText = battleSkillDescriptor.combinedText();
        if (hasAny(strCombinedText, "智力伤害", "智力的")) {
            return BattleAttribute.WISDOM;
        }
        if (hasAny(strCombinedText, "防御力伤害", "防御力的")) {
            return BattleAttribute.DEFENSE;
        }
        if (hasAny(strCombinedText, "血量", "血池")) {
            return BattleAttribute.HP;
        }
        String majorProperty = battleSkillDescriptor.getMajorProperty();
        if ("2".equals(majorProperty)) {
            return BattleAttribute.DEFENSE;
        }
        if ("3".equals(majorProperty)) {
            return BattleAttribute.HP;
        }
        return "4".equals(majorProperty) ? BattleAttribute.WISDOM : BattleAttribute.ATTACK;
    }

    private static BattleEffectTarget target(String str, String str2) {
        if (hasAny(str2, "敌方所有援军")) {
            return BattleEffectTarget.ENEMY_BACKUPS;
        }
        if (hasAny(str, "敌方场上单体和敌方1名援军", "敌方场上单体和敌方一名援军")) {
            return BattleEffectTarget.ACTIVE_ENEMY_AND_BACKUP;
        }
        if (hasAny(str, "敌方场上单体和敌方2名援军", "敌方场上单体和敌方两名援军")) {
            return BattleEffectTarget.ACTIVE_ENEMY_AND_TWO_BACKUPS;
        }
        if (hasAny(str, "敌方全体", "敌方场上全体")) {
            return BattleEffectTarget.ALL_ACTIVE_ENEMIES;
        }
        if (hasAny(str, "己方另外2名", "己方另外两名", "己方另两名", "已方另外2名", "已方另外两名", "已方另两名")) {
            return BattleEffectTarget.OTHER_TWO_ACTIVE_ALLIES;
        }
        if (hasAny(str, "己方全体", "已方全体", "己方场上全体", "已方场上全体")) {
            return BattleEffectTarget.ALL_ACTIVE_ALLIES;
        }
        if (hasAny(str, "己方血量最少", "已方血量最少", "场上血最少己方")) {
            return BattleEffectTarget.LOWEST_HP_RATE_ALLY;
        }
        if (hasAny(str, "场上四维最高友军")) {
            return BattleEffectTarget.HIGHEST_ALL_STATS_ACTIVE_ALLY;
        }
        if (hasAny(str, "场上攻最高友军")) {
            return BattleEffectTarget.HIGHEST_ATTACK_ACTIVE_ALLY;
        }
        if (hasAny(str, "场上智最高友军", "场上智最高己方")) {
            return BattleEffectTarget.HIGHEST_WISDOM_ACTIVE_ALLY;
        }
        if (hasAny(str, "场上攻最高敌军", "攻最高敌军")) {
            return BattleEffectTarget.HIGHEST_ATTACK_ACTIVE_ENEMY;
        }
        if (hasAny(str, "场上血最多敌军", "血最多敌军")) {
            return BattleEffectTarget.HIGHEST_HP_ACTIVE_ENEMY;
        }
        if (hasAny(str, "场上血最少敌军", "血最少敌军", "敌方血量最少")) {
            return BattleEffectTarget.LOWEST_HP_ACTIVE_ENEMY;
        }
        if (hasAny(str, "防最低", "防御最低")) {
            return BattleEffectTarget.LOWEST_DEFENSE_ACTIVE_ENEMY;
        }
        if (hasAny(str, "防最高", "防御最高")) {
            return BattleEffectTarget.HIGHEST_DEFENSE_ACTIVE_ENEMY;
        }
        if (hasAny(str, "敌方2名男性", "敌方两名男性")) {
            return BattleEffectTarget.FIRST_TWO_ACTIVE_MALE_ENEMIES;
        }
        if (hasAny(str, "援军")) {
            return BattleEffectTarget.ACTIVE_ENEMY_AND_BACKUP;
        }
        if (hasAny(str, "随机2名", "随机两名")) {
            return BattleEffectTarget.RANDOM_TWO_ACTIVE_ENEMIES;
        }
        if (hasAny(str, "2名", "两名")) {
            return BattleEffectTarget.FIRST_TWO_ACTIVE_ENEMIES;
        }
        if (hasAny(str, "敌方攻击者")) {
            return BattleEffectTarget.ATTACKER;
        }
        if (hasAny(str2, "援军的数目")) {
            return BattleEffectTarget.RANDOM_ACTIVE_ENEMIES_BY_BACKUP_COUNT;
        }
        if (hasAny(str, "随机单体")) {
            return BattleEffectTarget.RANDOM_ACTIVE_ENEMY;
        }
        return hasAny(str, "自身") ? BattleEffectTarget.SELF : BattleEffectTarget.NORMAL_COUNTERPART;
    }

    private static BattleTriggerPhase triggerPhase(String str, String str2) {
        if (hasAny(str, "行动前")) {
            return BattleTriggerPhase.BEFORE_ACTION;
        }
        if (hasAny(str, "行动时")) {
            return BattleTriggerPhase.ON_ACTION;
        }
        if (hasAny(str, "行动后")) {
            return BattleTriggerPhase.AFTER_ACTION;
        }
        if (hasAny(str, "普通攻击时")) {
            return BattleTriggerPhase.ON_NORMAL_ATTACK;
        }
        if (hasAny(str, "受到普通伤害前")) {
            return BattleTriggerPhase.BEFORE_NORMAL_DAMAGE_TAKEN;
        }
        if (hasAny(str, "受到普通伤害后", "受伤后")) {
            return BattleTriggerPhase.AFTER_NORMAL_DAMAGE_TAKEN;
        }
        if (hasAny(str, "受到技能伤害后")) {
            return BattleTriggerPhase.AFTER_SKILL_DAMAGE_TAKEN;
        }
        if (hasAny(str, "阵亡时", "血量为0")) {
            return BattleTriggerPhase.ON_DEATH;
        }
        if (hasAny(str, "阵亡后")) {
            return BattleTriggerPhase.AFTER_DEATH;
        }
        if (hasAny(str, "击毙后", "击杀后")) {
            return BattleTriggerPhase.AFTER_KILL;
        }
        if (hasAny(str, "被动", "装备后")) {
            return BattleTriggerPhase.PASSIVE;
        }
        return hasAny(str2, "相应阶段") ? BattleTriggerPhase.MATCHING_PHASE : BattleTriggerPhase.UNKNOWN;
    }
}
