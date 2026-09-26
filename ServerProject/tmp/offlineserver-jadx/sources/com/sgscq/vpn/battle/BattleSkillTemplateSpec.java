package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public class BattleSkillTemplateSpec {
    private final BattleSkillAnimationPolicy animationPolicy;
    private final boolean continuesWithNormalAttack;
    private final BattleSkillEnemyFieldPolicy enemyFieldPolicy;
    private final boolean onEntrySkill;
    private final BattleSkillTargetRule targetRule;
    private final BattleSkillTemplate template;

    /* JADX INFO: renamed from: com.sgscq.vpn.battle.BattleSkillTemplateSpec$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate;

        static {
            int[] iArr = new int[BattleSkillTemplate.values().length];
            $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate = iArr;
            try {
                iArr[BattleSkillTemplate.SINGLE_ATTRIBUTE_DAMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.TWO_ENEMY_ATTRIBUTE_DAMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.ALL_ENEMY_ATTRIBUTE_DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.TWO_MALE_ENEMY_ATTRIBUTE_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.MULTI_HIT_ATTRIBUTE_DAMAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.RANDOM_MULTI_HIT_ATTRIBUTE_DAMAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.MULTI_HIT_ALL_ENEMY_DAMAGE_AND_SELF_REDUCTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.BACKUP_COUNT_RANDOM_IGNORE_DEFENSE_DAMAGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.SINGLE_DAMAGE_WITH_HEAL_REDUCTION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_WITH_SEAL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_WITH_STUN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_WITH_ACTIVE_SKILL_AMBUSH.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_WITH_DAMAGE_TAKEN_BONUS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_WITH_DAMAGE_DEALT_REDUCTION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_WITH_IGNORE_DEFENSE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_WITH_CONDITIONAL_BONUS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_AND_LIFE_STEAL.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.SELF_COST_DAMAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.ALL_ENEMY_DAMAGE_AND_ALLY_HEAL.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_TAKEN_BONUS_BUFF.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DAMAGE_DEALT_REDUCTION_BUFF.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.POST_ACTION_DAMAGE_TAKEN_BONUS_AND_SELF_REDUCTION.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.IMMUNE_AND_COUNTER_DAMAGE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.COUNTER_DAMAGE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.DEATH_DAMAGE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.BLOOD_POOL_DAMAGE.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.MARK_AND_EXPLODE.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.ON_KILL_CONTROL.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.EXTRA_NORMAL_ATTACK.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[BattleSkillTemplate.STEAL_ATTRIBUTE.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
        }
    }

    private BattleSkillTemplateSpec(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule, BattleSkillAnimationPolicy battleSkillAnimationPolicy, BattleSkillEnemyFieldPolicy battleSkillEnemyFieldPolicy, boolean z) {
        this(battleSkillTemplate, battleSkillTargetRule, battleSkillAnimationPolicy, battleSkillEnemyFieldPolicy, z, false);
    }

    private static BattleSkillEnemyFieldPolicy defaultEnemyFieldPolicy(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule) {
        if (battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_HEAL || battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS) {
            return BattleSkillEnemyFieldPolicy.ALLOW_ALLY_FALLBACK;
        }
        if (battleSkillTargetRule == BattleSkillTargetRule.ALL_ACTIVE_ENEMIES || battleSkillTargetRule == BattleSkillTargetRule.RANDOM_TWO_ACTIVE_ENEMIES || battleSkillTargetRule == BattleSkillTargetRule.FIRST_TWO_ACTIVE_ENEMIES || battleSkillTargetRule == BattleSkillTargetRule.FIRST_TWO_ACTIVE_MALE_ENEMIES || battleSkillTargetRule == BattleSkillTargetRule.LOWEST_HP_ACTIVE_ENEMY || battleSkillTargetRule == BattleSkillTargetRule.LOWEST_DEFENSE_ACTIVE_ENEMY || battleSkillTargetRule == BattleSkillTargetRule.HIGHEST_ATTACK_ACTIVE_ENEMY || battleSkillTargetRule == BattleSkillTargetRule.HIGHEST_DEFENSE_ACTIVE_ENEMY || battleSkillTargetRule == BattleSkillTargetRule.HIGHEST_HP_ACTIVE_ENEMY || battleSkillTargetRule == BattleSkillTargetRule.ACTIVE_ENEMY_AND_BACKUP || battleSkillTargetRule == BattleSkillTargetRule.ACTIVE_ENEMY_AND_TWO_BACKUPS || battleSkillTargetRule == BattleSkillTargetRule.SELF_AND_ALL_ACTIVE_ENEMIES || battleSkillTargetRule == BattleSkillTargetRule.ALL_ACTIVE_ENEMIES_AND_ALLIES) {
            return BattleSkillEnemyFieldPolicy.REQUIRE_ACTIVE_ENEMY;
        }
        return (battleSkillTargetRule == BattleSkillTargetRule.NORMAL_COUNTERPART && requiresActiveEnemyTarget(battleSkillTemplate)) ? BattleSkillEnemyFieldPolicy.REQUIRE_ACTIVE_ENEMY : BattleSkillEnemyFieldPolicy.NOT_REQUIRED;
    }

    public static BattleSkillTemplateSpec preAttackBuff(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule, BattleSkillAnimationPolicy battleSkillAnimationPolicy) {
        return preAttackBuff(battleSkillTemplate, battleSkillTargetRule, battleSkillAnimationPolicy, defaultEnemyFieldPolicy(battleSkillTemplate, battleSkillTargetRule));
    }

    private static boolean requiresActiveEnemyTarget(BattleSkillTemplate battleSkillTemplate) {
        if (battleSkillTemplate == null) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate[battleSkillTemplate.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
                return true;
            default:
                return false;
        }
    }

    public static BattleSkillTemplateSpec simple(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule) {
        return simple(battleSkillTemplate, battleSkillTargetRule, BattleSkillAnimationPolicy.EMIT_SKILL_ROUND);
    }

    public boolean continuesWithNormalAttack() {
        return this.continuesWithNormalAttack;
    }

    public boolean emitsOwnRound() {
        return this.animationPolicy != BattleSkillAnimationPolicy.SILENT_STATE_CHANGE;
    }

    public BattleSkillAnimationPolicy getAnimationPolicy() {
        return this.animationPolicy;
    }

    public BattleSkillEnemyFieldPolicy getEnemyFieldPolicy() {
        return this.enemyFieldPolicy;
    }

    public BattleSkillTargetRule getTargetRule() {
        return this.targetRule;
    }

    public BattleSkillTemplate getTemplate() {
        return this.template;
    }

    public boolean isOnEntrySkill() {
        return this.onEntrySkill;
    }

    public BattleSkillTemplateSpec withOnEntrySkill() {
        return new BattleSkillTemplateSpec(this.template, this.targetRule, this.animationPolicy, this.enemyFieldPolicy, this.continuesWithNormalAttack, true);
    }

    private BattleSkillTemplateSpec(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule, BattleSkillAnimationPolicy battleSkillAnimationPolicy, BattleSkillEnemyFieldPolicy battleSkillEnemyFieldPolicy, boolean z, boolean z2) {
        this.template = battleSkillTemplate == null ? BattleSkillTemplate.UNKNOWN : battleSkillTemplate;
        this.targetRule = battleSkillTargetRule == null ? BattleSkillTargetRule.NORMAL_COUNTERPART : battleSkillTargetRule;
        this.animationPolicy = battleSkillAnimationPolicy == null ? BattleSkillAnimationPolicy.EMIT_SKILL_ROUND : battleSkillAnimationPolicy;
        this.enemyFieldPolicy = battleSkillEnemyFieldPolicy == null ? BattleSkillEnemyFieldPolicy.NOT_REQUIRED : battleSkillEnemyFieldPolicy;
        this.continuesWithNormalAttack = z;
        this.onEntrySkill = z2;
    }

    public static BattleSkillTemplateSpec preAttackBuff(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule, BattleSkillAnimationPolicy battleSkillAnimationPolicy, BattleSkillEnemyFieldPolicy battleSkillEnemyFieldPolicy) {
        return new BattleSkillTemplateSpec(battleSkillTemplate, battleSkillTargetRule, battleSkillAnimationPolicy, battleSkillEnemyFieldPolicy, true);
    }

    public static BattleSkillTemplateSpec simple(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule, BattleSkillAnimationPolicy battleSkillAnimationPolicy) {
        return new BattleSkillTemplateSpec(battleSkillTemplate, battleSkillTargetRule, battleSkillAnimationPolicy, defaultEnemyFieldPolicy(battleSkillTemplate, battleSkillTargetRule), false);
    }

    public static BattleSkillTemplateSpec simple(BattleSkillTemplate battleSkillTemplate, BattleSkillTargetRule battleSkillTargetRule, BattleSkillAnimationPolicy battleSkillAnimationPolicy, BattleSkillEnemyFieldPolicy battleSkillEnemyFieldPolicy) {
        return new BattleSkillTemplateSpec(battleSkillTemplate, battleSkillTargetRule, battleSkillAnimationPolicy, battleSkillEnemyFieldPolicy, false);
    }
}
