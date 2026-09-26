package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public class BattleAction {
    private final BattleUnit actor;
    private final Kind kind;
    private final BattleSkill skill;
    private final BattleUnit target;

    public enum Kind {
        NORMAL_ATTACK,
        SKILL
    }

    private BattleAction(Kind kind, BattleUnit battleUnit, BattleUnit battleUnit2, BattleSkill battleSkill) {
        this.kind = kind;
        this.actor = battleUnit;
        this.target = battleUnit2;
        this.skill = battleSkill;
    }

    public static BattleAction normalAttack(BattleUnit battleUnit, BattleUnit battleUnit2) {
        return new BattleAction(Kind.NORMAL_ATTACK, battleUnit, battleUnit2, null);
    }

    public static BattleAction skill(BattleUnit battleUnit, BattleSkill battleSkill) {
        return new BattleAction(Kind.SKILL, battleUnit, null, battleSkill);
    }

    public BattleUnit getActor() {
        return this.actor;
    }

    public Kind getKind() {
        return this.kind;
    }

    public BattleSkill getSkill() {
        return this.skill;
    }

    public BattleUnit getTarget() {
        return this.target;
    }
}
