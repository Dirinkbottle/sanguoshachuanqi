package com.sgscq.vpn.battle;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BattleScenario {
    private final List<BattleAction> actions;
    private final List<BattleUnit> allies;
    private final double allyGovern;
    private final List<BattleUnit> enemies;
    private final double enemyGovern;
    private final double[] xiaoyongMarks;

    public BattleScenario(List<BattleUnit> list, List<BattleUnit> list2, List<BattleAction> list3) {
        this(list, list2, list3, 0.0d, 0.0d);
    }

    private double initialXiaoyongMarks(List<BattleUnit> list) {
        double dMax = 0.0d;
        for (BattleUnit battleUnit : list) {
            if (battleUnit != null) {
                dMax = Math.max(dMax, battleUnit.getStateValue(BattleState.XIAOYONG_MARK));
            }
        }
        return dMax;
    }

    private void syncXiaoyongUnitStates(int i2) {
        for (BattleUnit battleUnit : i2 == 0 ? this.allies : this.enemies) {
            if (battleUnit != null) {
                BattleState battleState = BattleState.XIAOYONG_MARK;
                battleUnit.consumeStateValue(battleState);
                double d2 = this.xiaoyongMarks[i2];
                if (d2 > 0.0d) {
                    battleUnit.addState(battleState, d2);
                }
            }
        }
    }

    private boolean validSide(int i2) {
        return i2 >= 0 && i2 < this.xiaoyongMarks.length;
    }

    public void addXiaoyongMarks(int i2, double d2) {
        if (!validSide(i2) || d2 <= 0.0d) {
            return;
        }
        double[] dArr = this.xiaoyongMarks;
        dArr[i2] = dArr[i2] + d2;
        syncXiaoyongUnitStates(i2);
    }

    public double consumeXiaoyongMarks(int i2, double d2) {
        if (!validSide(i2) || d2 <= 0.0d) {
            return 0.0d;
        }
        double dMin = Math.min(this.xiaoyongMarks[i2], d2);
        double[] dArr = this.xiaoyongMarks;
        dArr[i2] = dArr[i2] - dMin;
        syncXiaoyongUnitStates(i2);
        return dMin;
    }

    public List<BattleAction> getActions() {
        return this.actions;
    }

    public List<BattleUnit> getAllUnits() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.allies);
        arrayList.addAll(this.enemies);
        return arrayList;
    }

    public List<BattleUnit> getAllies() {
        return this.allies;
    }

    public double getAllyGovern() {
        return this.allyGovern;
    }

    public List<BattleUnit> getEnemies() {
        return this.enemies;
    }

    public double getEnemyGovern() {
        return this.enemyGovern;
    }

    public List<BattleUnit> getOpponents(BattleUnit battleUnit) {
        return battleUnit.getSide() == 0 ? this.enemies : this.allies;
    }

    public double getXiaoyongMarks(int i2) {
        if (validSide(i2)) {
            return this.xiaoyongMarks[i2];
        }
        return 0.0d;
    }

    public BattleScenario(List<BattleUnit> list, List<BattleUnit> list2, List<BattleAction> list3, double d2, double d3) {
        double[] dArr = new double[2];
        this.xiaoyongMarks = dArr;
        list = list == null ? Collections.emptyList() : list;
        this.allies = list;
        list2 = list2 == null ? Collections.emptyList() : list2;
        this.enemies = list2;
        this.actions = list3 == null ? Collections.emptyList() : list3;
        this.allyGovern = Math.max(0.0d, d2);
        this.enemyGovern = Math.max(0.0d, d3);
        dArr[0] = initialXiaoyongMarks(list);
        dArr[1] = initialXiaoyongMarks(list2);
        syncXiaoyongUnitStates(0);
        syncXiaoyongUnitStates(1);
    }
}
