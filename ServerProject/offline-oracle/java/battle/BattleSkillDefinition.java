package com.sgscq.vpn.battle;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BattleSkillDefinition {
    private final String code;
    private final List<BattleSkillEffect> effects;
    private final boolean mandatoryTrigger;
    private final boolean requiresNoAttackSkillThisTurn;
    private final BattleTriggerPhase triggerPhase;

    public static class Builder {
        private final String code;
        private final List<BattleSkillEffect> effects;
        private boolean mandatoryTrigger;
        private boolean requiresNoAttackSkillThisTurn;
        private BattleTriggerPhase triggerPhase;

        private Builder(String str) {
            this.triggerPhase = BattleTriggerPhase.UNKNOWN;
            this.effects = new ArrayList();
            this.code = str;
        }

        public BattleSkillDefinition build() {
            return new BattleSkillDefinition(this);
        }

        public Builder effect(BattleSkillEffect battleSkillEffect) {
            if (battleSkillEffect != null) {
                this.effects.add(battleSkillEffect);
            }
            return this;
        }

        public Builder mandatoryTrigger(boolean z) {
            this.mandatoryTrigger = z;
            return this;
        }

        public Builder requiresNoAttackSkillThisTurn(boolean z) {
            this.requiresNoAttackSkillThisTurn = z;
            return this;
        }

        public Builder triggerPhase(BattleTriggerPhase battleTriggerPhase) {
            this.triggerPhase = battleTriggerPhase;
            return this;
        }
    }

    private BattleSkillDefinition(Builder builder) {
        this.code = builder.code == null ? "" : builder.code;
        this.triggerPhase = builder.triggerPhase == null ? BattleTriggerPhase.UNKNOWN : builder.triggerPhase;
        this.mandatoryTrigger = builder.mandatoryTrigger;
        this.requiresNoAttackSkillThisTurn = builder.requiresNoAttackSkillThisTurn;
        this.effects = Collections.unmodifiableList(new ArrayList(builder.effects));
    }

    public static Builder builder(String str) {
        return new Builder(str);
    }

    public String getCode() {
        return this.code;
    }

    public List<BattleSkillEffect> getEffects() {
        return this.effects;
    }

    public BattleTriggerPhase getTriggerPhase() {
        return this.triggerPhase;
    }

    public boolean isMandatoryTrigger() {
        return this.mandatoryTrigger;
    }

    public boolean requiresNoAttackSkillThisTurn() {
        return this.requiresNoAttackSkillThisTurn;
    }
}
