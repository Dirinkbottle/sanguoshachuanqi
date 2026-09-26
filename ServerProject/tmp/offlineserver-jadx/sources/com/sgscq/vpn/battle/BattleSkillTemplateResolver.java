package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public final class BattleSkillTemplateResolver {
    private BattleSkillTemplateResolver() {
    }

    private static boolean hasAny(String str, String... strArr) {
        if (str != null && str.length() != 0) {
            for (String str2 : strArr) {
                if (str2 != null && str2.length() > 0 && str.contains(str2.toLowerCase())) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean hasDamage(String str) {
        return hasAny(str, "伤害", "普通攻击");
    }

    private static boolean hasDeathTriggerText(String str) {
        return hasAny(str, "阵亡时", "死亡时", "血量为0", "血量为 0");
    }

    private static boolean hasOffensiveDamage(String str) {
        String strWithoutDamageModifierPhrases = withoutDamageModifierPhrases(str);
        if (hasAny(strWithoutDamageModifierPhrases, "造成攻击", "造成防御", "造成智力", "造成伤害", "普通攻击")) {
            return true;
        }
        int iIndexOf = strWithoutDamageModifierPhrases.indexOf("造成");
        if (iIndexOf < 0) {
            return false;
        }
        return hasAny(strWithoutDamageModifierPhrases.substring(iIndexOf), "攻击力伤害", "防御力伤害", "智力伤害");
    }

    private static boolean isBaiyinSkill(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "baiyin".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isContinuousSelfBuffSkill(BattleSkillDescriptor battleSkillDescriptor) {
        String code;
        if (battleSkillDescriptor == null || !"2".equals(battleSkillDescriptor.getSkillType()) || (code = battleSkillDescriptor.getCode()) == null) {
            return false;
        }
        return code.startsWith("luoshen") || code.startsWith("xiaoji");
    }

    private static boolean isDeathPreventionText(String str) {
        return hasAny(str, "阵亡时", "死亡时", "阵亡", "血量为0", "血量为 0") && hasAny(str, "复活", "恢复自身血量", "血量恢复", "可承受", "承受额外伤害");
    }

    private static boolean isDeathTriggerPhase(String str) {
        return hasAny(str, "阵亡时", "死亡时", "阵亡后", "死亡后", "血量为0", "血量为 0");
    }

    private static boolean isDuodaoSkill(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "duodao".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    private static boolean isEnemyDamageOrAllyDamageBonus(String str) {
        return hasAny(str, "敌方全体", "敌方场上全体") && hasAny(str, "或增加己方全体下一次造成的伤害", "或增加己方场上全体下一次造成的伤害", "或增加己方全体下次造成的伤害", "或增加已方全体下一次造成的伤害") && hasAny(str, "增加值为发动者智力", "增加值为自身智力", "智力的");
    }

    private static boolean isFenchengSkill(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "fencheng".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isFuluSkill(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "fulu".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isIgnoreDefenseText(String str) {
        int iIndexOf = str.indexOf("无视");
        while (iIndexOf >= 0) {
            if (str.substring(iIndexOf, Math.min(str.length(), iIndexOf + 10)).contains("防御")) {
                return true;
            }
            iIndexOf = str.indexOf("无视", iIndexOf + 1);
        }
        return false;
    }

    private static boolean isJiangSkill(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "jiang".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isJijiangSkill(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "jijiang".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isJiuyuanSkill(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "jiuyuan".equals(battleSkillDescriptor.getCode());
    }

    private static boolean isMultiHitAllEnemyDamageAndSelfReduction(BattleSkillDescriptor battleSkillDescriptor, String str, boolean z) {
        return z && battleSkillDescriptor != null && hasAny(str, "多段施放", "多段伤害") && hasAny(battleSkillDescriptor.getRange(), "敌方全体和自身", "自身和敌方全体") && hasAny(str, "减少自身下一次受到的伤害", "减少自身下一次受到");
    }

    private static boolean isNextDamageBuff(String str) {
        return hasAny(str, "造成的伤害增加", "下一次造成的伤害增加", "下一次造成伤害增加", "下次造成伤害增加", "增加目标下一次造成的伤害", "增加自身下一次造成的伤害", "自身下一次伤害增加", "下一次伤害增加", "提升自身下一次造成的伤害", "增加下一回合自身造成的伤害");
    }

    private static boolean isNextDamageDealtReduction(String str) {
        return hasAny(str, "下一次造成的伤害减少", "下一次造成伤害减少", "下一次造成伤害降低", "减少目标下一次造成的伤害", "下一次伤害减少", "攻击者下一次伤害减少");
    }

    private static boolean isNextDamageReductionBuff(String str) {
        return hasAny(str, "受到的伤害减少", "减少目标下一次受到", "减少目标下一次所受", "减少受到的伤害", "减少自身下一次受到", "减少自身下一次所受", "减少己方", "减少敌方全体下一次造成");
    }

    private static boolean isNextDamageTakenBonus(String str) {
        return hasAny(str, "下一次受到的伤害增加", "下一次受到伤害增加", "受到的伤害增加", "增加目标下一次受到的伤害", "增加该目标下一次受到的伤害", "增加其下一次受到的伤害", "使目标下一次受到的伤害增加");
    }

    private static boolean isOtherTwoAllyText(String str) {
        return hasAny(str, "己方另外2名", "己方另外两名", "己方另两名", "已方另外2名", "已方另外两名", "已方另两名");
    }

    private static boolean isPureRepeatedDamageBuff(BattleSkillDescriptor battleSkillDescriptor, String str) {
        return battleSkillDescriptor != null && hasAny(battleSkillDescriptor.getRange(), "自身") && hasAny(str, "下一次伤害增加", "下一次造成的伤害增加", "下次造成伤害增加") && !hasAny(str, "造成攻击力伤害", "造成智力伤害", "造成防御力伤害", "对目标造成");
    }

    private static boolean isQinyinDescriptor(BattleSkillDescriptor battleSkillDescriptor) {
        if (battleSkillDescriptor == null) {
            return false;
        }
        String code = battleSkillDescriptor.getCode();
        return "qinyin".equals(code) || "331023".equals(code);
    }

    private static boolean isSelfDamageBonusAndEnemyDamageDealtReduction(String str) {
        return hasAny(str, "自身下一次造成的伤害增加", "增加自身下一次造成的伤害", "自身下一次伤害增加", "增加自身下一次伤害") && isNextDamageDealtReduction(str);
    }

    private static boolean isSelfOnlyRange(BattleSkillDescriptor battleSkillDescriptor) {
        return battleSkillDescriptor != null && "自身".equals(battleSkillDescriptor.getRange().trim());
    }

    private static boolean isSpecialSelfPassive(BattleSkillDescriptor battleSkillDescriptor) {
        String code = battleSkillDescriptor == null ? "" : battleSkillDescriptor.getCode();
        return "xueyi".equals(code) || "lianpo".equals(code) || "shengjie".equals(code) || "guipu".equals(code) || "jili".equals(code) || "shenji".equals(code) || "juejing".equals(code) || "bupo".equals(code);
    }

    private static boolean isStackingAttributeGainText(String str) {
        return hasAny(str, "增加自身在本场战斗", "增加自身攻击", "增加自身防御", "增加自身智力", "增加自身在本次战斗", "攻、防、智", "归心状态", "层归心");
    }

    private static boolean isWeiwuFlameMarkSkill(BattleSkillDescriptor battleSkillDescriptor) {
        String code;
        if (battleSkillDescriptor == null || (code = battleSkillDescriptor.getCode()) == null) {
            return false;
        }
        return code.startsWith("tuntian") || "quanji".equals(code);
    }

    private static boolean isXiaoyongMultiHitSkill(BattleSkillDescriptor battleSkillDescriptor) {
        if (battleSkillDescriptor == null) {
            return false;
        }
        return "shuangxiong".equals(battleSkillDescriptor.getCode()) || "pojun".equals(battleSkillDescriptor.getCode());
    }

    public static BattleSkillTemplate resolve(BattleSkillDescriptor battleSkillDescriptor) {
        if (battleSkillDescriptor == null) {
            return BattleSkillTemplate.UNKNOWN;
        }
        if (battleSkillDescriptor.isEmptySkill()) {
            return BattleSkillTemplate.NO_EFFECT;
        }
        String strCombinedText = battleSkillDescriptor.combinedText();
        String skillType = battleSkillDescriptor.getSkillType();
        if (!"4".equals(skillType) && isDeathPreventionText(strCombinedText)) {
            return BattleSkillTemplate.REVIVE_OR_DEATH_PREVENT;
        }
        boolean z = "1".equals(skillType) || "2".equals(skillType) || "3".equals(skillType);
        if ("4".equals(skillType) || (hasAny(strCombinedText, "装备后", "装备", "被动") && !(z && hasDamage(strCombinedText)))) {
            if (!isSpecialSelfPassive(battleSkillDescriptor) && !isSelfOnlyRange(battleSkillDescriptor)) {
                if (hasAny(strCombinedText, "全体", "队友", "友方")) {
                    return BattleSkillTemplate.PASSIVE_AURA;
                }
                return hasAny(strCombinedText, "普通攻击") ? BattleSkillTemplate.PASSIVE_ON_NORMAL_ATTACK : BattleSkillTemplate.PASSIVE_ATTRIBUTE_GAIN;
            }
            return BattleSkillTemplate.PASSIVE_ATTRIBUTE_GAIN;
        }
        boolean zHasAny = hasAny(strCombinedText, "回复", "恢复", "吸收", "吸血");
        boolean zHasDamage = hasDamage(strCombinedText);
        if (isContinuousSelfBuffSkill(battleSkillDescriptor)) {
            return (battleSkillDescriptor.getCode() != null && battleSkillDescriptor.getCode().startsWith("luoshen") && hasAny(strCombinedText, "减少自身下一次受到", "减少自身下一次所受")) ? BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF : BattleSkillTemplate.DAMAGE_BONUS_BUFF;
        }
        if (isDuodaoSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF;
        }
        if (isBaiyinSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.NO_EFFECT;
        }
        if (isJiuyuanSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.IMMUNE_NEXT_DAMAGE;
        }
        if (isWeiwuFlameMarkSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.MARK_AND_EXPLODE;
        }
        if ("quhu".equals(battleSkillDescriptor.getCode())) {
            return BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF;
        }
        if (isQinyinDescriptor(battleSkillDescriptor) && hasAny(strCombinedText, "火箭")) {
            return BattleSkillTemplate.QINYIN_FIRE_ARROW;
        }
        if (hasAny(strCombinedText, "星标记", "颗星", "火箭") && hasAny(strCombinedText, "火箭")) {
            return BattleSkillTemplate.FENGWU_STAR_FIRE_ARROW;
        }
        if ("fengwu".equals(battleSkillDescriptor.getCode())) {
            return BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF;
        }
        if (isFenchengSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.ALL_ENEMY_ATTRIBUTE_DAMAGE;
        }
        if (isFuluSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.HEAL_LOWEST_ALLY;
        }
        if (hasAny(strCombinedText, "血池")) {
            return BattleSkillTemplate.BLOOD_POOL_DAMAGE;
        }
        if (hasAny(strCombinedText, "复制", "随机技能", "化身")) {
            return BattleSkillTemplate.COPY_OR_RANDOM_SKILL;
        }
        if (hasAny(strCombinedText, "偷取")) {
            return BattleSkillTemplate.STEAL_ATTRIBUTE;
        }
        if ("2".equals(skillType) && hasAny(strCombinedText, "击毙后", "击杀后", "打死敌将")) {
            return BattleSkillTemplate.ON_KILL_CONTROL;
        }
        if (isJijiangSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.DAMAGE_BONUS_BUFF;
        }
        if ("3".equals(skillType) && isStackingAttributeGainText(strCombinedText)) {
            return BattleSkillTemplate.STACKING_ATTRIBUTE_GAIN;
        }
        if (isSelfDamageBonusAndEnemyDamageDealtReduction(strCombinedText)) {
            return BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF;
        }
        if (battleSkillDescriptor.getCode() != null && battleSkillDescriptor.getCode().startsWith("jieyin")) {
            return resolveHealTemplate(battleSkillDescriptor, strCombinedText);
        }
        if (hasAny(strCombinedText, "额外进行一次普通攻击", "追击一次普通攻击", "追加一次普通攻击", "立即进行一次攻击", "再次进行一次攻击")) {
            return BattleSkillTemplate.EXTRA_NORMAL_ATTACK;
        }
        if (isDeathTriggerPhase(battleSkillDescriptor.getPhase()) || (isEmpty(battleSkillDescriptor.getPhase()) && hasDeathTriggerText(strCombinedText))) {
            return isDeathPreventionText(strCombinedText) ? BattleSkillTemplate.REVIVE_OR_DEATH_PREVENT : BattleSkillTemplate.DEATH_DAMAGE;
        }
        if (hasAny(strCombinedText, "免受", "免疫", "免伤", "闪避本次伤害")) {
            return hasDamage(strCombinedText) ? BattleSkillTemplate.IMMUNE_AND_COUNTER_DAMAGE : BattleSkillTemplate.IMMUNE_NEXT_DAMAGE;
        }
        if (isOtherTwoAllyText(strCombinedText) && hasAny(strCombinedText, "受到的伤害", "所受伤害")) {
            return BattleSkillTemplate.TWO_OTHER_ALLY_DAMAGE_REDUCTION;
        }
        if ("3".equals(skillType) && zHasAny && !hasOffensiveDamage(strCombinedText)) {
            return resolveHealTemplate(battleSkillDescriptor, strCombinedText);
        }
        if (zHasDamage && hasAny(strCombinedText, "封印", "无法施放技能", "技能无效")) {
            return BattleSkillTemplate.DAMAGE_WITH_SEAL;
        }
        if ("3".equals(skillType) && hasOffensiveDamage(strCombinedText)) {
            return isStackingAttributeGainText(strCombinedText) ? BattleSkillTemplate.STACKING_ATTRIBUTE_GAIN : BattleSkillTemplate.COUNTER_DAMAGE;
        }
        if (hasAny(strCombinedText, "行动后") && hasAny(strCombinedText, "未使用攻击技能")) {
            return BattleSkillTemplate.POST_ACTION_DAMAGE_TAKEN_BONUS_AND_SELF_REDUCTION;
        }
        if (isJiangSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.MULTI_HIT_ATTRIBUTE_DAMAGE;
        }
        if (isMultiHitAllEnemyDamageAndSelfReduction(battleSkillDescriptor, strCombinedText, zHasDamage)) {
            return BattleSkillTemplate.MULTI_HIT_ALL_ENEMY_DAMAGE_AND_SELF_REDUCTION;
        }
        if (zHasDamage && isEnemyDamageOrAllyDamageBonus(strCombinedText)) {
            return BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS;
        }
        if (!hasOffensiveDamage(strCombinedText) && isNextDamageDealtReduction(strCombinedText)) {
            return BattleSkillTemplate.DAMAGE_DEALT_REDUCTION_BUFF;
        }
        if (isNextDamageBuff(strCombinedText)) {
            return hasAny(strCombinedText, "受到的伤害减少", "受到的伤害", "所受伤害") ? BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF : BattleSkillTemplate.DAMAGE_BONUS_BUFF;
        }
        if (isNextDamageTakenBonus(strCombinedText)) {
            return (zHasDamage && hasOffensiveDamage(strCombinedText)) ? BattleSkillTemplate.DAMAGE_WITH_DAMAGE_TAKEN_BONUS : BattleSkillTemplate.DAMAGE_TAKEN_BONUS_BUFF;
        }
        if (zHasDamage && zHasAny && hasAny(strCombinedText, "或回复", "或恢复", "或 回复", "或 恢复")) {
            return BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_HEAL;
        }
        if (zHasDamage && zHasAny && hasAny(strCombinedText, "敌方全体", "全体")) {
            return BattleSkillTemplate.ALL_ENEMY_DAMAGE_AND_ALLY_HEAL;
        }
        if (zHasDamage && hasAny(strCombinedText, "吸收", "吸血")) {
            return BattleSkillTemplate.DAMAGE_AND_LIFE_STEAL;
        }
        if (isXiaoyongMultiHitSkill(battleSkillDescriptor)) {
            return BattleSkillTemplate.MULTI_HIT_ATTRIBUTE_DAMAGE;
        }
        if (zHasDamage && hasAny(strCombinedText, "消耗自身", "失去")) {
            return BattleSkillTemplate.SELF_COST_DAMAGE;
        }
        if (zHasDamage && hasAny(strCombinedText, "设下埋伏", "伏兵") && hasAny(strCombinedText, "释放主动技能", "施放主动技能", "主动技能") && hasAny(strCombinedText, "取消")) {
            return BattleSkillTemplate.DAMAGE_WITH_ACTIVE_SKILL_AMBUSH;
        }
        if (zHasDamage && hasAny(strCombinedText, "无法行动", "冻结", "冻", "冰冻")) {
            return BattleSkillTemplate.DAMAGE_WITH_STUN;
        }
        if (zHasDamage && hasAny(strCombinedText, "回复量减少", "生命值回复量", "治疗值回复")) {
            return BattleSkillTemplate.SINGLE_DAMAGE_WITH_HEAL_REDUCTION;
        }
        if (zHasDamage && hasAny(strCombinedText, "援军的数目") && hasAny(strCombinedText, "随机分配", "随机") && hasAny(strCombinedText, "无视", "防御")) {
            return BattleSkillTemplate.BACKUP_COUNT_RANDOM_IGNORE_DEFENSE_DAMAGE;
        }
        if (zHasDamage && !isPureRepeatedDamageBuff(battleSkillDescriptor, strCombinedText) && hasAny(strCombinedText, "连续", "多次", "两次", "2次", "随机分配")) {
            return hasAny(strCombinedText, "随机分配", "随机") ? BattleSkillTemplate.RANDOM_MULTI_HIT_ATTRIBUTE_DAMAGE : BattleSkillTemplate.MULTI_HIT_ATTRIBUTE_DAMAGE;
        }
        if (zHasDamage && hasAny(strCombinedText, "受到的伤害增加", "受伤害增加", "受到伤害增加")) {
            return BattleSkillTemplate.DAMAGE_WITH_DAMAGE_TAKEN_BONUS;
        }
        if (zHasDamage && hasAny(strCombinedText, "敌方2名男性", "敌方两名男性")) {
            return BattleSkillTemplate.TWO_MALE_ENEMY_ATTRIBUTE_DAMAGE;
        }
        if (zHasDamage && hasOffensiveDamage(strCombinedText) && hasAny(strCombinedText, "造成的伤害减少", "伤害减少", "减少目标下一次造成", "伤害将减少发动者")) {
            return BattleSkillTemplate.DAMAGE_WITH_DAMAGE_DEALT_REDUCTION;
        }
        if (zHasAny && isNextDamageReductionBuff(strCombinedText)) {
            return resolveHealTemplate(battleSkillDescriptor, strCombinedText);
        }
        if (isNextDamageReductionBuff(strCombinedText)) {
            return isOtherTwoAllyText(strCombinedText) ? BattleSkillTemplate.TWO_OTHER_ALLY_DAMAGE_REDUCTION : BattleSkillTemplate.DAMAGE_REDUCTION_BUFF;
        }
        if (zHasDamage && hasAny(strCombinedText, "敌方2名角色", "敌方两名角色", "敌方随机2名武将", "敌方随机两名武将", "敌方随机2名场上武将", "敌方随机两名场上武将", "敌方随机2名上场武将", "敌方随机两名上场武将")) {
            return BattleSkillTemplate.TWO_ENEMY_ATTRIBUTE_DAMAGE;
        }
        if (zHasDamage && isIgnoreDefenseText(strCombinedText)) {
            return BattleSkillTemplate.DAMAGE_WITH_IGNORE_DEFENSE;
        }
        if (zHasDamage && hasAny(strCombinedText, "高于目标", "低于30", "低于50", "额外造成")) {
            return BattleSkillTemplate.DAMAGE_WITH_CONDITIONAL_BONUS;
        }
        if (isMultiHitAllEnemyDamageAndSelfReduction(battleSkillDescriptor, strCombinedText, zHasDamage)) {
            return BattleSkillTemplate.MULTI_HIT_ALL_ENEMY_DAMAGE_AND_SELF_REDUCTION;
        }
        if (zHasDamage && hasAny(battleSkillDescriptor.getRange(), "全体", "场上全体")) {
            return BattleSkillTemplate.ALL_ENEMY_ATTRIBUTE_DAMAGE;
        }
        if (zHasAny) {
            return resolveHealTemplate(battleSkillDescriptor, strCombinedText);
        }
        if (hasAny(strCombinedText, "行动后") && hasAny(strCombinedText, "未使用攻击技能")) {
            return BattleSkillTemplate.POST_ACTION_DAMAGE_TAKEN_BONUS_AND_SELF_REDUCTION;
        }
        if (!hasOffensiveDamage(strCombinedText) && isNextDamageDealtReduction(strCombinedText)) {
            return BattleSkillTemplate.DAMAGE_DEALT_REDUCTION_BUFF;
        }
        if (isNextDamageBuff(strCombinedText)) {
            return hasAny(strCombinedText, "受到的伤害减少", "受到的伤害", "所受伤害") ? BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF : BattleSkillTemplate.DAMAGE_BONUS_BUFF;
        }
        if (isSelfDamageBonusAndEnemyDamageDealtReduction(strCombinedText)) {
            return BattleSkillTemplate.DAMAGE_BONUS_AND_REDUCTION_BUFF;
        }
        if (isNextDamageTakenBonus(strCombinedText)) {
            return BattleSkillTemplate.DAMAGE_TAKEN_BONUS_BUFF;
        }
        if (isNextDamageReductionBuff(strCombinedText)) {
            return isOtherTwoAllyText(strCombinedText) ? BattleSkillTemplate.TWO_OTHER_ALLY_DAMAGE_REDUCTION : BattleSkillTemplate.DAMAGE_REDUCTION_BUFF;
        }
        return zHasDamage ? BattleSkillTemplate.SINGLE_ATTRIBUTE_DAMAGE : BattleSkillTemplate.UNKNOWN;
    }

    private static BattleSkillTemplate resolveHealTemplate(BattleSkillDescriptor battleSkillDescriptor, String str) {
        if (hasAny(str, "自身和己方1名男性", "自身和己方一名男性")) {
            return BattleSkillTemplate.HEAL_SELF_AND_WOUNDED_MALE_ALLY;
        }
        if (hasAny(battleSkillDescriptor.getRange(), "全体") || hasAny(str, "己方全体", "友方全体")) {
            return BattleSkillTemplate.HEAL_ALL_ALLIES;
        }
        if (hasAny(str, "造成的伤害增加", "下一次造成的伤害")) {
            return BattleSkillTemplate.HEAL_AND_DAMAGE_BONUS;
        }
        return hasAny(str, "受到的伤害", "所受伤害") ? BattleSkillTemplate.HEAL_AND_DAMAGE_REDUCTION : BattleSkillTemplate.HEAL_LOWEST_ALLY;
    }

    private static String withoutDamageModifierPhrases(String str) {
        return str == null ? "" : str.replace("下一次造成伤害减少", "").replace("下一次造成的伤害减少", "").replace("下一次造成伤害降低", "").replace("下一次造成的伤害增加", "").replace("下一次造成伤害增加", "").replace("下次造成伤害增加", "").replace("减少目标下一次造成的伤害", "").replace("增加目标下一次造成的伤害", "");
    }
}
