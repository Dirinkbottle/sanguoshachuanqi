package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public final class BattleStarCalculator {
    private BattleStarCalculator() {
    }

    public static int calculate(boolean z, int i2, int i3) {
        if (!z) {
            return 0;
        }
        int iCeilPercent = ceilPercent(i2, i3);
        if (iCeilPercent >= 78) {
            return 3;
        }
        if (iCeilPercent >= 50) {
            return 2;
        }
        return iCeilPercent >= 10 ? 1 : 0;
    }

    public static int ceilPercent(int i2, int i3) {
        if (i3 <= 0 || i2 <= 0) {
            return 0;
        }
        long j2 = i3;
        return (int) Math.min(100L, (((Math.min(i2, j2) * 100) + j2) - 1) / j2);
    }
}
