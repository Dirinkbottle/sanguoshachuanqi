package com.sgscq.vpn.battle;

import java.util.EnumSet;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.sgscq.vpn.battle.BattleState, still in use, count: 1, list:
  (r0v0 com.sgscq.vpn.battle.BattleState) from 0x028b: INVOKE 
  (r0v0 com.sgscq.vpn.battle.BattleState)
  (wrap com.sgscq.vpn.battle.BattleState[]:0x0287: FILLED_NEW_ARRAY 
  (r3v0 com.sgscq.vpn.battle.BattleState)
  (r4v0 com.sgscq.vpn.battle.BattleState)
  (r5v0 com.sgscq.vpn.battle.BattleState)
  (r6v0 com.sgscq.vpn.battle.BattleState)
  (r7v0 com.sgscq.vpn.battle.BattleState)
  (r8v0 com.sgscq.vpn.battle.BattleState)
  (r9v0 com.sgscq.vpn.battle.BattleState)
  (r10v0 com.sgscq.vpn.battle.BattleState)
  (r11v0 com.sgscq.vpn.battle.BattleState)
  (r12v0 com.sgscq.vpn.battle.BattleState)
 A[WRAPPED] elemType: com.sgscq.vpn.battle.BattleState)
 STATIC call: java.util.EnumSet.of(java.lang.Enum, java.lang.Enum[]):java.util.EnumSet A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>, E extends java.lang.Enum<E>[]):java.util.EnumSet<E extends java.lang.Enum<E>> VARARG (c), VARARG_CALL, WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class BattleState {
    NEXT_HEAL_REDUCTION,
    NEXT_DAMAGE_BONUS,
    NEXT_DAMAGE_DEALT_REDUCTION,
    NEXT_DAMAGE_REDUCTION,
    NEXT_DAMAGE_TAKEN_BONUS,
    NEXT_DAMAGE_TAKEN_REDUCTION,
    NEXT_DAMAGE_TAKEN_CAP_ONE,
    NEXT_ATTACK_BONUS,
    NEXT_ATTACK_REDUCTION,
    NEXT_DEFENSE_BONUS,
    NEXT_DEFENSE_REDUCTION,
    TAUNT_TARGET_ROUNDS,
    TAUNT_REFRESH_NEXT_ROUND,
    TAUNT_PENDING_DAMAGE_TAKEN_REDUCTION,
    TAUNT_DAMAGE_TAKEN_REDUCTION,
    FANGZHU_FOCUS_ROUNDS,
    ACTIVE_SKILL_AMBUSH_DAMAGE,
    ACTIVE_SKILL_AMBUSH_TRIGGERED,
    REN_MARK,
    XIAOYONG_MARK,
    XUEYI_MARK,
    WEIWU_FLAME_MARK,
    WEIWU_FLAME_TURNS,
    TUNTIAN_MARK,
    ZHAOXIN_BLOOD_POOL,
    QUANJI_MARK,
    QUANJI_MARK_TURNS,
    SP_LIEGONG_CHASE_ROUNDS,
    GUIXIN_STACK,
    LIANPO_TRIGGERED,
    JUEJING_SKILL_SHIELD,
    FENGWU_STAR,
    RAOSHE_TRIGGERED,
    JIUYUAN_RESCUED,
    HUITIAN_TRIGGERED,
    REVIVE_ONCE_TRIGGERED,
    TONGJI_TRIGGER_COUNT,
    ZHENGNAN_STAGE,
    QIAOBIAN_PENDING_STUN,
    QIAOBIAN_PENDING_GROUP_DAMAGE,
    YIYANG_LEVEL,
    YIYANG_MARK_SHOWN,
    ENTRY_SKILL_TRIGGERED,
    YIJUE_STAGE_SEAL,
    YIJUE_ROUND_SEAL,
    SEALED,
    STUNNED,
    TURNED_OVER,
    QINGNANG_SKILL_SHIELD,
    FANJI_TURNS,
    FANJI_PENDING_DAMAGE,
    POJIA_MARK,
    POJIA_TURNS,
    XURUO_MARK,
    XURUO_TURNS,
    ZHUIJI_TURNS,
    BACKUP_FROZEN,
    TIANNIAN,
    TIANNIAN_ROUND;

    private static final EnumSet<BattleState> ONE_SHOT_BUFFS = EnumSet.of(new BattleState(), new BattleState(), new BattleState(), new BattleState(), new BattleState(), new BattleState(), new BattleState(), new BattleState(), new BattleState(), new BattleState(), new BattleState());

    static {
    }

    private BattleState() {
        super(str, i);
    }

    public static BattleState valueOf(String str) {
        return (BattleState) Enum.valueOf(BattleState.class, str);
    }

    public static BattleState[] values() {
        return (BattleState[]) $VALUES.clone();
    }

    public boolean isOneShotBuff() {
        return ONE_SHOT_BUFFS.contains(this);
    }
}
