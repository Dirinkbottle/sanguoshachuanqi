package com.sgscq.vpn.battle;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class BattleSkill {
    private final int advancedLevel;
    private final String animationSkill;
    private final String code;
    private final boolean explicitTriggerNode;
    private final int firstTriggerAction;
    private final int firstTriggerMaxAction;
    private final int firstTriggerMinAction;
    private final String id;
    private final BattleAttribute majorAttribute;
    private final boolean mandatoryTrigger;
    private final double[] params;
    private final int repeatTriggerMaxAction;
    private final int repeatTriggerMinAction;
    private final BattleSkillTemplateSpec spec;
    private final BattleSkillTemplate template;
    private final int triggerInterval;
    private final BattleSkillType type;

    public static class Builder {
        private int advancedLevel;
        private String animationSkill;
        private String code;
        private boolean explicitTriggerNode;
        private int firstTriggerAction;
        private int firstTriggerMaxAction;
        private int firstTriggerMinAction;
        private final String id;
        private BattleAttribute majorAttribute;
        private boolean mandatoryTrigger;
        private double[] params;
        private int repeatTriggerMaxAction;
        private int repeatTriggerMinAction;
        private BattleSkillTemplateSpec spec;
        private BattleSkillTemplate template;
        private int triggerInterval;
        private BattleSkillType type;

        private Builder(String str) {
            this.type = BattleSkillType.NONE;
            this.template = BattleSkillTemplate.SINGLE_ATTRIBUTE_DAMAGE;
            this.majorAttribute = BattleAttribute.ATTACK;
            this.params = new double[0];
            this.firstTriggerAction = 4;
            this.triggerInterval = 4;
            this.id = str;
            this.code = str;
            this.animationSkill = str;
        }

        private static int clampScheduleAction(int i2, int i3) {
            return Math.max(1, Math.min(Math.max(1, i3), i2));
        }

        private static double[] normalizeParams(String str, double[] dArr) {
            double[] dArrCopyOf = dArr == null ? new double[0] : Arrays.copyOf(dArr, dArr.length);
            if ("311015".equals(str) && dArrCopyOf.length >= 2) {
                double d2 = dArrCopyOf[0];
                dArrCopyOf[0] = dArrCopyOf[1];
                dArrCopyOf[1] = d2;
            }
            return dArrCopyOf;
        }

        public Builder advancedLevel(int i2) {
            this.advancedLevel = Math.max(0, i2);
            return this;
        }

        public Builder animationSkill(String str) {
            this.animationSkill = str;
            return this;
        }

        public BattleSkill build() {
            return new BattleSkill(this);
        }

        public Builder code(String str) {
            this.code = str;
            return this;
        }

        public Builder firstTriggerAction(int i2) {
            this.firstTriggerAction = Math.max(1, Math.min(4, i2));
            this.explicitTriggerNode = true;
            return this;
        }

        public Builder majorAttribute(BattleAttribute battleAttribute) {
            this.majorAttribute = battleAttribute;
            return this;
        }

        public Builder mandatoryTrigger(boolean z) {
            this.mandatoryTrigger = z;
            return this;
        }

        public Builder params(double... dArr) {
            this.params = normalizeParams(this.id, dArr);
            return this;
        }

        public Builder spec(BattleSkillTemplateSpec battleSkillTemplateSpec) {
            this.spec = battleSkillTemplateSpec;
            return this;
        }

        public Builder template(BattleSkillTemplate battleSkillTemplate) {
            this.template = battleSkillTemplate;
            return this;
        }

        public Builder triggerSchedule(int i2, int i3, int i4, int i5, int i6) {
            int iMax = Math.max(1, i6);
            this.triggerInterval = iMax;
            int iClampScheduleAction = clampScheduleAction(i2, iMax);
            this.firstTriggerMinAction = iClampScheduleAction;
            this.firstTriggerMaxAction = Math.max(iClampScheduleAction, clampScheduleAction(i3, this.triggerInterval));
            int iClampScheduleAction2 = clampScheduleAction(i4, this.triggerInterval);
            this.repeatTriggerMinAction = iClampScheduleAction2;
            this.repeatTriggerMaxAction = Math.max(iClampScheduleAction2, clampScheduleAction(i5, this.triggerInterval));
            this.explicitTriggerNode = true;
            return this;
        }

        public Builder type(BattleSkillType battleSkillType) {
            this.type = battleSkillType;
            return this;
        }
    }

    private BattleSkill(Builder builder) {
        this.id = builder.id;
        this.code = builder.code;
        this.animationSkill = builder.animationSkill;
        this.type = builder.type;
        BattleSkillTemplate battleSkillTemplate = builder.template;
        this.template = battleSkillTemplate;
        this.spec = builder.spec == null ? BattleSkillTemplateSpec.simple(battleSkillTemplate, defaultTargetRule(battleSkillTemplate), defaultAnimationPolicy(battleSkillTemplate)) : builder.spec;
        this.majorAttribute = builder.majorAttribute;
        this.params = builder.params;
        this.advancedLevel = builder.advancedLevel;
        this.firstTriggerAction = builder.firstTriggerAction;
        this.firstTriggerMinAction = builder.firstTriggerMinAction;
        this.firstTriggerMaxAction = builder.firstTriggerMaxAction;
        this.repeatTriggerMinAction = builder.repeatTriggerMinAction;
        this.repeatTriggerMaxAction = builder.repeatTriggerMaxAction;
        this.triggerInterval = builder.triggerInterval;
        this.explicitTriggerNode = builder.explicitTriggerNode;
        this.mandatoryTrigger = builder.mandatoryTrigger;
    }

    public static Builder builder(String str) {
        return new Builder(str);
    }

    private static BattleSkillAnimationPolicy defaultAnimationPolicy(BattleSkillTemplate battleSkillTemplate) {
        return (battleSkillTemplate == BattleSkillTemplate.UNKNOWN || battleSkillTemplate == BattleSkillTemplate.NO_EFFECT) ? BattleSkillAnimationPolicy.NORMAL_ATTACK_FALLBACK : BattleSkillAnimationPolicy.EMIT_SKILL_ROUND;
    }

    private static BattleSkillTargetRule defaultTargetRule(BattleSkillTemplate battleSkillTemplate) {
        if (battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_ATTRIBUTE_DAMAGE || battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_DAMAGE_AND_ALLY_HEAL || battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_HEAL) {
            return BattleSkillTargetRule.ALL_ACTIVE_ENEMIES;
        }
        if (battleSkillTemplate == BattleSkillTemplate.ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS) {
            return BattleSkillTargetRule.ALL_ACTIVE_ENEMIES_AND_ALLIES;
        }
        if (battleSkillTemplate == BattleSkillTemplate.TWO_ENEMY_ATTRIBUTE_DAMAGE) {
            return BattleSkillTargetRule.FIRST_TWO_ACTIVE_ENEMIES;
        }
        if (battleSkillTemplate == BattleSkillTemplate.DAMAGE_WITH_DAMAGE_DEALT_REDUCTION) {
            return BattleSkillTargetRule.RANDOM_TWO_ACTIVE_ENEMIES;
        }
        if (battleSkillTemplate == BattleSkillTemplate.TWO_MALE_ENEMY_ATTRIBUTE_DAMAGE) {
            return BattleSkillTargetRule.FIRST_TWO_ACTIVE_MALE_ENEMIES;
        }
        return (battleSkillTemplate == BattleSkillTemplate.HEAL_LOWEST_ALLY || battleSkillTemplate == BattleSkillTemplate.HEAL_AND_DAMAGE_BONUS || battleSkillTemplate == BattleSkillTemplate.HEAL_AND_DAMAGE_REDUCTION) ? BattleSkillTargetRule.LOWEST_HP_RATE_ALLY : BattleSkillTargetRule.NORMAL_COUNTERPART;
    }

    public int getAdvancedLevel() {
        return this.advancedLevel;
    }

    public String getAnimationSkill() {
        return this.animationSkill;
    }

    public String getCode() {
        return this.code;
    }

    public int getFirstTriggerAction() {
        return this.firstTriggerAction;
    }

    public int getFirstTriggerMaxAction() {
        return this.firstTriggerMaxAction;
    }

    public int getFirstTriggerMinAction() {
        return this.firstTriggerMinAction;
    }

    public String getId() {
        return this.id;
    }

    public BattleAttribute getMajorAttribute() {
        return this.majorAttribute;
    }

    public double getParam(int i2) {
        if (i2 >= 0) {
            double[] dArr = this.params;
            if (i2 < dArr.length) {
                return dArr[i2];
            }
        }
        return 0.0d;
    }

    public int getParamCount() {
        return this.params.length;
    }

    public int getRepeatTriggerMaxAction() {
        return this.repeatTriggerMaxAction;
    }

    public int getRepeatTriggerMinAction() {
        return this.repeatTriggerMinAction;
    }

    public BattleSkillTemplateSpec getSpec() {
        return this.spec;
    }

    public BattleSkillTemplate getTemplate() {
        return this.template;
    }

    public int getTriggerInterval() {
        return this.triggerInterval;
    }

    public BattleSkillType getType() {
        return this.type;
    }

    public boolean hasConfiguredTriggerSchedule() {
        int i2;
        int i3 = this.firstTriggerMinAction;
        return i3 > 0 && this.firstTriggerMaxAction >= i3 && (i2 = this.repeatTriggerMinAction) > 0 && this.repeatTriggerMaxAction >= i2;
    }

    public boolean hasExplicitTriggerNode() {
        return this.explicitTriggerNode;
    }

    public boolean isMandatoryTrigger() {
        return this.mandatoryTrigger;
    }
}
