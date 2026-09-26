package com.sgscq.vpn.battle;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BattleUnit[] f216b = new BattleUnit[3];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f219e;

    public b(List list, int i2) {
        list = list == null ? Collections.emptyList() : list;
        this.f215a = list;
        this.f217c = i2;
        this.f218d = Math.min(3, list.size());
        int i3 = 0;
        while (true) {
            int i4 = this.f218d;
            if (i3 >= i4) {
                this.f219e = i4;
                return;
            } else {
                this.f216b[i3] = (BattleUnit) this.f215a.get(i3);
                i3++;
            }
        }
    }

    public final boolean a() {
        return b(0) != null;
    }

    public final BattleUnit b(int i2) {
        BattleUnit[] battleUnitArr = this.f216b;
        BattleUnit battleUnit = (i2 < 0 || i2 >= battleUnitArr.length) ? null : battleUnitArr[i2];
        if (battleUnit != null && battleUnit.isAlive()) {
            return battleUnit;
        }
        for (BattleUnit battleUnit2 : battleUnitArr) {
            if (battleUnit2 != null && battleUnit2.isAlive()) {
                return battleUnit2;
            }
        }
        return null;
    }
}
