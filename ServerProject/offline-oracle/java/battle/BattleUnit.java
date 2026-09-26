package com.sgscq.vpn.battle;

import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BattleUnit {
    private static final ThreadLocal<Long> CURRENT_BUFF_PHASE;
    private double attack;
    private double defense;
    private final boolean evolutionImageStatus;
    private final int generalSex;
    private double hpCur;
    private double hpMax;
    private final String id;
    private final String name;
    private final String normalAttackSkill;
    private final Map<BattleState, Long> oneShotBuffPhase;
    private final double orbit;
    private final int side;
    private final BattleSkill skill;
    private final List<BattleSkill> skills;
    private final int slot;
    private final Map<BattleState, Double> stateAttributeDeltas;
    private final Map<BattleState, Double> states;
    private final boolean storyGuest;
    private double wisdom;

    /* JADX INFO: renamed from: com.sgscq.vpn.battle.BattleUnit$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sgscq$vpn$battle$BattleAttribute;
        static final /* synthetic */ int[] $SwitchMap$com$sgscq$vpn$battle$BattleState;

        static {
            int[] iArr = new int[BattleState.values().length];
            $SwitchMap$com$sgscq$vpn$battle$BattleState = iArr;
            try {
                iArr[BattleState.NEXT_ATTACK_BONUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleState[BattleState.NEXT_DEFENSE_BONUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleState[BattleState.NEXT_DEFENSE_REDUCTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleState[BattleState.TAUNT_DAMAGE_TAKEN_REDUCTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[BattleAttribute.values().length];
            $SwitchMap$com$sgscq$vpn$battle$BattleAttribute = iArr2;
            try {
                iArr2[BattleAttribute.HP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleAttribute[BattleAttribute.ATTACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleAttribute[BattleAttribute.DEFENSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sgscq$vpn$battle$BattleAttribute[BattleAttribute.WISDOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class Builder {
        private double attack;
        private double attackPercentBonus;
        private double defense;
        private double defensePercentBonus;
        private boolean evolutionImageStatus;
        private int generalSex;
        private double hp;
        private double hpPercentBonus;
        private final String id;
        private String name;
        private String normalAttackSkill;
        private double orbit;
        private int side;
        private final List<BattleSkill> skills;
        private int slot;
        private boolean storyGuest;
        private double wisdom;
        private double wisdomPercentBonus;

        private Builder(String str) {
            this.generalSex = 0;
            this.hp = 1.0d;
            this.attack = 1.0d;
            this.defense = 0.0d;
            this.wisdom = 1.0d;
            this.orbit = 1.0d;
            this.normalAttackSkill = "Attack_Knife";
            this.skills = new ArrayList();
            this.id = str;
            this.name = str;
        }

        public Builder attack(double d2) {
            this.attack = d2;
            return this;
        }

        public Builder attackPercentBonus(double d2) {
            this.attackPercentBonus = Math.max(0.0d, d2);
            return this;
        }

        public BattleUnit build() {
            return new BattleUnit(this, null);
        }

        public Builder defense(double d2) {
            this.defense = d2;
            return this;
        }

        public Builder defensePercentBonus(double d2) {
            this.defensePercentBonus = Math.max(0.0d, d2);
            return this;
        }

        public Builder evolutionImageStatus(boolean z) {
            this.evolutionImageStatus = z;
            return this;
        }

        public Builder generalSex(int i2) {
            this.generalSex = i2;
            return this;
        }

        public Builder hp(double d2) {
            this.hp = d2;
            return this;
        }

        public Builder hpPercentBonus(double d2) {
            this.hpPercentBonus = Math.max(0.0d, d2);
            return this;
        }

        public Builder name(String str) {
            this.name = str;
            return this;
        }

        public Builder normalAttackSkill(String str) {
            this.normalAttackSkill = str;
            return this;
        }

        public Builder orbit(double d2) {
            this.orbit = d2;
            return this;
        }

        public Builder side(int i2) {
            this.side = i2;
            return this;
        }

        public Builder skill(BattleSkill battleSkill) {
            if (battleSkill != null) {
                this.skills.add(battleSkill);
            }
            return this;
        }

        public Builder skills(List<BattleSkill> list) {
            if (list != null) {
                Iterator<BattleSkill> it = list.iterator();
                while (it.hasNext()) {
                    skill(it.next());
                }
            }
            return this;
        }

        public Builder slot(int i2) {
            this.slot = i2;
            return this;
        }

        public Builder storyGuest(boolean z) {
            this.storyGuest = z;
            return this;
        }

        public Builder wisdom(double d2) {
            this.wisdom = d2;
            return this;
        }

        public Builder wisdomPercentBonus(double d2) {
            this.wisdomPercentBonus = Math.max(0.0d, d2);
            return this;
        }

        public /* synthetic */ Builder(String str, AnonymousClass1 anonymousClass1) {
            this(str);
        }
    }

    static {
        final g gVar = new g();
        CURRENT_BUFF_PHASE = new ThreadLocal() { // from class: com.sgscq.vpn.battle.h
            @Override // java.lang.ThreadLocal
            public final /* synthetic */ Object initialValue() {
                return gVar.get();
            }
        };
    }

    private BattleUnit(Builder builder) {
        this.states = new EnumMap(BattleState.class);
        this.stateAttributeDeltas = new EnumMap(BattleState.class);
        this.oneShotBuffPhase = new EnumMap(BattleState.class);
        this.id = builder.id;
        this.name = builder.name;
        this.side = builder.side;
        this.slot = builder.slot;
        this.storyGuest = builder.storyGuest;
        this.generalSex = builder.generalSex;
        this.evolutionImageStatus = builder.evolutionImageStatus;
        double dApplyPercentBonus = applyPercentBonus(builder.hp, builder.hpPercentBonus);
        this.hpMax = dApplyPercentBonus;
        this.hpCur = dApplyPercentBonus;
        this.attack = applyPercentBonus(builder.attack, builder.attackPercentBonus);
        this.defense = applyPercentBonus(builder.defense, builder.defensePercentBonus);
        this.wisdom = applyPercentBonus(builder.wisdom, builder.wisdomPercentBonus);
        this.orbit = builder.orbit;
        this.normalAttackSkill = builder.normalAttackSkill;
        List<BattleSkill> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(builder.skills));
        this.skills = listUnmodifiableList;
        this.skill = listUnmodifiableList.isEmpty() ? null : listUnmodifiableList.get(0);
    }

    private double addAttributeAndReturnDelta(BattleAttribute battleAttribute, double d2) {
        if (battleAttribute == null || d2 == 0.0d) {
            return 0.0d;
        }
        double attribute = getAttribute(battleAttribute);
        int i2 = AnonymousClass1.$SwitchMap$com$sgscq$vpn$battle$BattleAttribute[battleAttribute.ordinal()];
        if (i2 == 1) {
            double dMax = Math.max(1.0d, this.hpMax + d2);
            this.hpMax = dMax;
            this.hpCur = Math.min(dMax, Math.max(0.0d, this.hpCur + d2));
        } else if (i2 == 2) {
            this.attack = Math.max(0.0d, this.attack + d2);
        } else if (i2 == 3) {
            this.defense = Math.max(0.0d, this.defense + d2);
        } else if (i2 == 4) {
            this.wisdom = Math.max(0.0d, this.wisdom + d2);
        }
        return getAttribute(battleAttribute) - attribute;
    }

    private static double applyPercentBonus(double d2, double d3) {
        return d3 <= 0.0d ? d2 : Math.floor(((d3 + 100.0d) * d2) / 100.0d);
    }

    private void applyStateAttributeDelta(BattleState battleState, double d2) {
        BattleAttribute battleAttributeStateAttribute = stateAttribute(battleState);
        double dStateAttributeDelta = stateAttributeDelta(battleState, d2);
        if (battleAttributeStateAttribute != null) {
            if (dStateAttributeDelta != 0.0d) {
                double dAddAttributeAndReturnDelta = addAttributeAndReturnDelta(battleAttributeStateAttribute, dStateAttributeDelta);
                if (dAddAttributeAndReturnDelta != 0.0d) {
                    Double d3 = this.stateAttributeDeltas.get(battleState);
                    this.stateAttributeDeltas.put(battleState, Double.valueOf((d3 != null ? d3.doubleValue() : 0.0d) + dAddAttributeAndReturnDelta));
                }
            }
        }
    }

    public static void beginBuffPhase() {
        ThreadLocal<Long> threadLocal = CURRENT_BUFF_PHASE;
        threadLocal.set(Long.valueOf(threadLocal.get().longValue() + 1));
    }

    public static Builder builder(String str) {
        return new Builder(str, null);
    }

    private void clearState(BattleState battleState) {
        if (this.states.containsKey(battleState)) {
            this.states.remove(battleState);
            rollbackStateAttribute(battleState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$static$0() {
        return 0L;
    }

    private void rollbackStateAttribute(BattleState battleState) {
        Double dRemove = this.stateAttributeDeltas.remove(battleState);
        BattleAttribute battleAttributeStateAttribute = stateAttribute(battleState);
        if (battleAttributeStateAttribute == null || dRemove == null || dRemove.doubleValue() == 0.0d) {
            return;
        }
        addAttributeAndReturnDelta(battleAttributeStateAttribute, -dRemove.doubleValue());
    }

    private BattleAttribute stateAttribute(BattleState battleState) {
        if (battleState == null) {
            return null;
        }
        int i2 = AnonymousClass1.$SwitchMap$com$sgscq$vpn$battle$BattleState[battleState.ordinal()];
        if (i2 == 1) {
            return BattleAttribute.ATTACK;
        }
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            return BattleAttribute.DEFENSE;
        }
        return null;
    }

    private double stateAttributeDelta(BattleState battleState, double d2) {
        if (battleState == null || d2 == 0.0d) {
            return 0.0d;
        }
        int i2 = AnonymousClass1.$SwitchMap$com$sgscq$vpn$battle$BattleState[battleState.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                return -d2;
            }
            if (i2 != 4) {
                return 0.0d;
            }
        }
        return d2;
    }

    public void addAllAttributesPercent(double d2) {
        if (d2 == 0.0d) {
            return;
        }
        addAttribute(BattleAttribute.HP, (this.hpMax * d2) / 100.0d);
        addAttribute(BattleAttribute.ATTACK, (this.attack * d2) / 100.0d);
        addAttribute(BattleAttribute.DEFENSE, (this.defense * d2) / 100.0d);
        addAttribute(BattleAttribute.WISDOM, (this.wisdom * d2) / 100.0d);
    }

    public void addAttribute(BattleAttribute battleAttribute, double d2) {
        addAttributeAndReturnDelta(battleAttribute, d2);
    }

    public void addState(BattleState battleState, double d2) {
        if (battleState.isOneShotBuff()) {
            if (d2 <= 0.0d) {
                return;
            }
            long jLongValue = CURRENT_BUFF_PHASE.get().longValue();
            Long l2 = this.oneShotBuffPhase.get(battleState);
            if (l2 == null || l2.longValue() != jLongValue) {
                clearState(battleState);
                this.oneShotBuffPhase.put(battleState, Long.valueOf(jLongValue));
            }
        }
        this.states.put(battleState, Double.valueOf(getStateValue(battleState) + d2));
        applyStateAttributeDelta(battleState, d2);
    }

    public boolean consumeState(BattleState battleState) {
        double stateValue = getStateValue(battleState);
        if (stateValue <= 0.0d) {
            return false;
        }
        double d2 = stateValue - 1.0d;
        if (d2 > 0.0d) {
            this.states.put(battleState, Double.valueOf(d2));
            return true;
        }
        this.states.remove(battleState);
        rollbackStateAttribute(battleState);
        return true;
    }

    public double consumeStateValue(BattleState battleState) {
        double stateValue = getStateValue(battleState);
        if (stateValue > 0.0d) {
            this.states.remove(battleState);
        }
        rollbackStateAttribute(battleState);
        return stateValue;
    }

    public void damage(double d2) {
        if (d2 <= 0.0d || !isAlive()) {
            return;
        }
        this.hpCur = Math.max(0.0d, this.hpCur - d2);
    }

    public double getAttack() {
        return this.attack;
    }

    public double getAttribute(BattleAttribute battleAttribute) {
        int i2 = AnonymousClass1.$SwitchMap$com$sgscq$vpn$battle$BattleAttribute[battleAttribute.ordinal()];
        if (i2 == 1) {
            return this.hpMax;
        }
        if (i2 == 2) {
            return this.attack;
        }
        if (i2 != 3) {
            return i2 != 4 ? this.attack : this.wisdom;
        }
        return this.defense;
    }

    public double getDefense() {
        return this.defense;
    }

    public int getGeneralSex() {
        return this.generalSex;
    }

    public double getHpCur() {
        return this.hpCur;
    }

    public double getHpMax() {
        return this.hpMax;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getNormalAttackSkill() {
        return this.normalAttackSkill;
    }

    public double getOrbit() {
        return this.orbit;
    }

    public int getSide() {
        return this.side;
    }

    public BattleSkill getSkill() {
        return this.skill;
    }

    public List<BattleSkill> getSkills() {
        return this.skills;
    }

    public int getSlot() {
        return this.slot;
    }

    public double getStateValue(BattleState battleState) {
        Double d2 = this.states.get(battleState);
        if (d2 == null) {
            return 0.0d;
        }
        return d2.doubleValue();
    }

    public double getWisdom() {
        return this.wisdom;
    }

    public boolean hasEvolutionImage() {
        return this.evolutionImageStatus;
    }

    public boolean hasState(BattleState battleState) {
        return this.states.containsKey(battleState);
    }

    public void heal(double d2) {
        if (d2 <= 0.0d || !isAlive()) {
            return;
        }
        this.hpCur = Math.min(this.hpMax, this.hpCur + d2);
    }

    public boolean isAlive() {
        return this.hpCur > 0.0d;
    }

    public boolean isMale() {
        return this.generalSex == 1;
    }

    public boolean isStoryGuest() {
        return this.storyGuest;
    }

    public boolean isWounded() {
        return isAlive() && this.hpCur < this.hpMax;
    }

    public void revive(double d2) {
        if (d2 <= 0.0d) {
            return;
        }
        this.hpCur = Math.min(this.hpMax, d2);
    }

    public void scaleStats(double d2, double d3, double d4, double d5) {
        double dRound = Math.round(this.hpMax * d2);
        this.hpMax = dRound;
        this.hpCur = dRound;
        this.attack = Math.round(this.attack * d3);
        this.defense = Math.round(this.defense * d4);
        this.wisdom = Math.round(this.wisdom * d5);
    }

    public /* synthetic */ BattleUnit(Builder builder, AnonymousClass1 anonymousClass1) {
        this(builder);
    }

    public double consumeStateValue(BattleState battleState, double d2) {
        double stateValue = getStateValue(battleState);
        if (stateValue <= 0.0d || d2 <= 0.0d) {
            return 0.0d;
        }
        double dMin = Math.min(stateValue, d2);
        double d3 = stateValue - dMin;
        BattleAttribute battleAttributeStateAttribute = stateAttribute(battleState);
        if (d3 <= 1.0E-6d) {
            this.states.remove(battleState);
            rollbackStateAttribute(battleState);
        } else if (battleAttributeStateAttribute == null) {
            this.states.put(battleState, Double.valueOf(d3));
        } else {
            rollbackStateAttribute(battleState);
            this.states.remove(battleState);
            addState(battleState, d3);
        }
        return dMin;
    }
}
