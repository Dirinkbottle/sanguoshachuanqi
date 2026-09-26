package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public class BattleSkillEffect {
    private final int paramIndex;
    private final BattleAttribute sourceAttribute;
    private final BattleEffectTarget target;
    private final BattleEffectType type;

    public static class Builder {
        private int paramIndex;
        private BattleAttribute sourceAttribute;
        private final BattleEffectTarget target;
        private final BattleEffectType type;

        private Builder(BattleEffectType battleEffectType, BattleEffectTarget battleEffectTarget) {
            this.type = battleEffectType;
            this.target = battleEffectTarget;
        }

        public BattleSkillEffect build() {
            return new BattleSkillEffect(this);
        }

        public Builder paramIndex(int i2) {
            this.paramIndex = i2;
            return this;
        }

        public Builder sourceAttribute(BattleAttribute battleAttribute) {
            this.sourceAttribute = battleAttribute;
            return this;
        }
    }

    private BattleSkillEffect(Builder builder) {
        this.type = builder.type == null ? BattleEffectType.NEEDS_MANUAL_IMPLEMENTATION : builder.type;
        this.target = builder.target == null ? BattleEffectTarget.UNKNOWN : builder.target;
        this.sourceAttribute = builder.sourceAttribute == null ? BattleAttribute.ATTACK : builder.sourceAttribute;
        this.paramIndex = Math.max(0, builder.paramIndex);
    }

    public static Builder builder(BattleEffectType battleEffectType, BattleEffectTarget battleEffectTarget) {
        return new Builder(battleEffectType, battleEffectTarget);
    }

    public int getParamIndex() {
        return this.paramIndex;
    }

    public BattleAttribute getSourceAttribute() {
        return this.sourceAttribute;
    }

    public BattleEffectTarget getTarget() {
        return this.target;
    }

    public BattleEffectType getType() {
        return this.type;
    }
}
