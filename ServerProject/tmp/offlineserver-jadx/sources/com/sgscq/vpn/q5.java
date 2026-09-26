package com.sgscq.vpn;

import com.sgscq.vpn.battle.BattleUnit;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q5 implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1326c;

    public /* synthetic */ q5(Object obj, Object obj2, int i2) {
        this.f1324a = i2;
        this.f1325b = obj;
        this.f1326c = obj2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i2 = this.f1324a;
        Object obj3 = this.f1326c;
        Object obj4 = this.f1325b;
        switch (i2) {
            case 0:
                Set set = (Set) obj4;
                Set set2 = (Set) obj3;
                k5 k5Var = (k5) obj;
                k5 k5Var2 = (k5) obj2;
                int iCompare = Boolean.compare(set.contains(k5Var2.f1112a), set.contains(k5Var.f1112a));
                if (iCompare != 0) {
                    return iCompare;
                }
                int size = t5.l(k5Var2, set2).size();
                double d2 = k5Var2.f1114c;
                double d3 = size == 0 ? 0.0d : d2 / ((double) size);
                int size2 = t5.l(k5Var, set2).size();
                double d4 = k5Var.f1114c;
                int iCompare2 = Double.compare(d3, size2 != 0 ? d4 / ((double) size2) : 0.0d);
                if (iCompare2 != 0) {
                    return iCompare2;
                }
                int iCompare3 = Double.compare(d2, d4);
                return iCompare3 != 0 ? iCompare3 : k5Var.f1112a.compareTo(k5Var2.f1112a);
            case 1:
                p7 p7Var = (p7) obj4;
                Map map = (Map) obj3;
                String str = (String) obj;
                String str2 = (String) obj2;
                HashMap map2 = p7.t;
                p7Var.getClass();
                int iCompare4 = Integer.compare(((Integer) map.getOrDefault(str, Integer.MAX_VALUE)).intValue(), ((Integer) map.getOrDefault(str2, Integer.MAX_VALUE)).intValue());
                if (iCompare4 != 0) {
                    return iCompare4;
                }
                int iCompare5 = Integer.compare(!p7.k(str) ? 1 : 0, !p7.k(str2) ? 1 : 0);
                if (iCompare5 != 0) {
                    return iCompare5;
                }
                LinkedHashMap linkedHashMap = p7Var.f1304l;
                v5 v5Var = (v5) linkedHashMap.get(str);
                v5 v5Var2 = (v5) linkedHashMap.get(str2);
                int iCompare6 = Integer.compare(v5Var2 != null ? v5Var2.f1462d : 0, v5Var == null ? 0 : v5Var.f1462d);
                return iCompare6 != 0 ? iCompare6 : str.compareTo(str2);
            default:
                com.sgscq.vpn.battle.f fVar = (com.sgscq.vpn.battle.f) obj4;
                Map map3 = (Map) obj3;
                BattleUnit battleUnit = (BattleUnit) obj;
                BattleUnit battleUnit2 = (BattleUnit) obj2;
                fVar.getClass();
                return Integer.compare(fVar.b(battleUnit.getSide(), ((Integer) map3.get(battleUnit)).intValue()), fVar.b(battleUnit2.getSide(), ((Integer) map3.get(battleUnit2)).intValue()));
        }
    }
}
