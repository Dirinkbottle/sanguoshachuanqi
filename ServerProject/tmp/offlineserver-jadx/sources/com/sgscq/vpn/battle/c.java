package com.sgscq.vpn.battle;

import com.sgscq.vpn.handler.k0;
import com.sgscq.vpn.handler.w;
import com.sgscq.vpn.handler.y;
import com.sgscq.vpn.handler.z;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f220a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f221b;

    public /* synthetic */ c(Object obj, int i2) {
        this.f220a = i2;
        this.f221b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i2 = this.f220a;
        Object obj3 = this.f221b;
        switch (i2) {
            case 0:
                f fVar = (f) obj3;
                BattleUnit battleUnit = (BattleUnit) obj;
                BattleUnit battleUnit2 = (BattleUnit) obj2;
                int iA = Integer.MAX_VALUE;
                int iA2 = battleUnit == null ? Integer.MAX_VALUE : fVar.a(battleUnit);
                if (battleUnit2 == null) {
                    fVar.getClass();
                } else {
                    iA = fVar.a(battleUnit2);
                }
                return Integer.compare(iA2, iA);
            case 1:
                w wVar = (w) obj3;
                Map map = (Map) obj;
                Map map2 = (Map) obj2;
                String str = w.f1012e;
                k0 k0Var = wVar.f1016a;
                int i3 = k0Var.i(k0Var.i(999, "team_position", map), "position", map);
                k0 k0Var2 = wVar.f1016a;
                return Integer.compare(i3, k0Var2.i(k0Var2.i(999, "team_position", map2), "position", map2));
            default:
                y yVar = (y) obj3;
                return Integer.compare(z.t(yVar.f1037c, (Map) obj2), z.t(yVar.f1037c, (Map) obj));
        }
    }
}
