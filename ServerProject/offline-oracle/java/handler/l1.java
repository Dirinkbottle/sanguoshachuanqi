package com.sgscq.vpn.handler;

import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.v5;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes.dex */
public final class l1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f916f = {64, 32, 32, 32, 16, 16, 16, 8, 8, 8, 4, 4, 4, 2, 2, 2, 1, 1, 1, 1};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f917g = {1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String[] f918h = {"12:00:00", "12:00:00", "13:36:00", "12:00:00", "12:00:00", "12:48:00", "12:00:00", "12:00:00", "12:24:00", "12:00:00", "13:30:00", "13:42:00", "12:00:00", "13:30:00", "13:36:00", "14:30:00", "12:00:00", "12:03:00", "17:00:00", "18:00:00"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f921c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f922d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f923e = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f919a = "1.0.1.14067+23|world-war";

    public l1(p7 p7Var, String str, int i2) {
        if (p7Var == null) {
            throw new IllegalArgumentException("robot roster is required");
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        a(arrayList, linkedHashSet, p7Var.n(i2, 128, h("1.0.1.14067+23|world-war".concat("|world-war-level")), str));
        if (arrayList.size() < 128) {
            a(arrayList, linkedHashSet, p7Var.m(250000, h("1.0.1.14067+23|world-war".concat("|world-war-fighting")), str));
        }
        if (arrayList.size() < 128) {
            throw new IllegalStateException("World War requires 128 robot participants");
        }
        ArrayList<v5> arrayList2 = new ArrayList(arrayList.subList(0, 128));
        arrayList2.sort(Comparator.comparingLong(new ToLongFunction() { // from class: com.sgscq.vpn.handler.i1
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return l1.h(this.f880a.f919a + "|participant|" + ((v5) obj).f1459a);
            }
        }));
        this.f920b = arrayList2;
        for (v5 v5Var : arrayList2) {
            this.f921c.put(v5Var.f1459a, v5Var);
        }
        k1 k1VarF = f(1, d(1, "opening", this.f920b));
        k1 k1VarF2 = f(2, d(2, "survival", k1VarF.f909b));
        k1 k1VarF3 = f(3, d(3, "upper", k1VarF.f908a));
        k1 k1VarF4 = f(5, d(5, "survival", f(4, c(d(4, "survival", k1VarF2.f908a), d(4, "upper-drop", k1VarF3.f909b))).f908a));
        k1 k1VarF5 = f(6, d(6, "upper", k1VarF3.f908a));
        k1 k1VarF6 = f(8, d(8, "survival", f(7, c(d(7, "survival", k1VarF4.f908a), d(7, "upper-drop", k1VarF5.f909b))).f908a));
        k1 k1VarF7 = f(9, d(9, "upper", k1VarF5.f908a));
        k1 k1VarF8 = f(11, d(11, "survival", f(10, c(d(10, "survival", k1VarF6.f908a), d(10, "upper-drop", k1VarF7.f909b))).f908a));
        k1 k1VarF9 = f(12, d(12, "upper", k1VarF7.f908a));
        k1 k1VarF10 = f(14, d(14, "survival", f(13, c(d(13, "survival", k1VarF8.f908a), d(13, "upper-drop", k1VarF9.f909b))).f908a));
        k1 k1VarF11 = f(15, d(15, "upper", k1VarF9.f908a));
        k1 k1VarF12 = f(17, d(17, "survival-final", f(16, c(d(16, "survival", k1VarF10.f908a), d(16, "upper-drop", k1VarF11.f909b))).f908a));
        k1 k1VarF13 = f(18, d(18, "upper-final", k1VarF11.f908a));
        f(20, c(k1VarF13.f909b, f(19, c(k1VarF13.f908a, k1VarF12.f908a)).f909b));
    }

    public static void a(ArrayList arrayList, LinkedHashSet linkedHashSet, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v5 v5Var = (v5) it.next();
            if (linkedHashSet.add(v5Var.f1459a)) {
                arrayList.add(v5Var);
            }
        }
    }

    public static LinkedHashMap b(v5 v5Var) {
        String str = v5Var.f1459a;
        String str2 = v5Var.f1460b;
        int i2 = v5Var.f1461c;
        return p5.z0("player_id", str, "user_id", str, "uid", str, "nickname", str2, "nick", str2, "server_id", 1, "level", Integer.valueOf(i2), "user_level", Integer.valueOf(i2), "fightPoint", Double.valueOf(v5Var.f1462d));
    }

    public static ArrayList c(List list, List list2) {
        if (list.size() != list2.size()) {
            throw new IllegalStateException("World War bracket groups must be balanced");
        }
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add((v5) list.get(i2));
            arrayList.add((v5) list2.get(i2));
        }
        return arrayList;
    }

    public static ArrayList e(int i2, List list) {
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < list.size()) {
            v5 v5Var = (v5) list.get(i3);
            i3++;
            LinkedHashMap linkedHashMapG = g(i3, v5Var);
            linkedHashMapG.put("rank", Integer.valueOf(i2));
            arrayList.add(linkedHashMapG);
        }
        return arrayList;
    }

    public static LinkedHashMap g(int i2, v5 v5Var) {
        String str = v5Var.f1459a;
        String str2 = v5Var.f1460b;
        int i3 = v5Var.f1461c;
        Integer numValueOf = Integer.valueOf(i3);
        Integer numValueOf2 = Integer.valueOf(i3);
        Integer numValueOf3 = Integer.valueOf(i2);
        Boolean bool = Boolean.TRUE;
        return p5.z0("uid", str, "player_id", str, "nick", str2, "nickname", str2, "server_id", 1, "level", numValueOf, "user_level", numValueOf2, "session", numValueOf3, "point", 0, "support_sum", 0, "can_support", bool, "can_overview", bool);
    }

    public static long h(String str) {
        long jCharAt = -3750763034362895579L;
        for (int i2 = 0; i2 < str.length(); i2++) {
            jCharAt = (jCharAt ^ ((long) str.charAt(i2))) * 1099511628211L;
        }
        return jCharAt ^ (jCharAt >>> 33);
    }

    public final ArrayList d(final int i2, final String str, List list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.sort(Comparator.comparingLong(new ToLongFunction() { // from class: com.sgscq.vpn.handler.j1
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return l1.h(this.f888a.f919a + "|round|" + i2 + "|" + str + "|" + ((v5) obj).f1459a);
            }
        }));
        return arrayList;
    }

    public final k1 f(int i2, ArrayList arrayList) {
        int i3 = f916f[i2 - 1];
        int i4 = i3 * 2;
        if (arrayList.size() != i4) {
            throw new IllegalStateException("World War round " + i2 + " requires " + i4 + " participants but received " + arrayList.size());
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        int i5 = 0;
        while (i5 < i3) {
            int i6 = i5 * 2;
            v5 v5Var = (v5) arrayList.get(i6);
            boolean z = true;
            v5 v5Var2 = (v5) arrayList.get(i6 + 1);
            int i7 = i5 + 1;
            v5 v5Var3 = v5Var.f1462d >= v5Var2.f1462d ? v5Var : v5Var2;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f919a);
            sb.append("|winner|");
            sb.append(i2);
            sb.append("|");
            sb.append(i7);
            sb.append("|");
            sb.append(v5Var.f1459a);
            sb.append("|");
            sb.append(v5Var2.f1459a);
            if (!(((int) Math.floorMod(h(sb.toString()), (long) 100)) < 15) ? v5Var3 != v5Var : v5Var3 != v5Var2) {
                z = false;
            }
            ArrayList arrayList5 = new ArrayList();
            i5 = i7;
            LinkedHashMap linkedHashMapG = g(i5, v5Var);
            LinkedHashMap linkedHashMapG2 = g(i5, v5Var2);
            Boolean bool = Boolean.TRUE;
            if (z) {
                linkedHashMapG.put("win", bool);
            } else {
                linkedHashMapG2.put("win", bool);
            }
            arrayList5.add(linkedHashMapG);
            arrayList5.add(linkedHashMapG2);
            arrayList2.add(arrayList5);
            arrayList3.add(z ? v5Var : v5Var2);
            if (z) {
                v5Var = v5Var2;
            }
            arrayList4.add(v5Var);
        }
        this.f922d.add(arrayList2);
        k1 k1Var = new k1(arrayList3, arrayList4);
        this.f923e.add(k1Var);
        return k1Var;
    }
}
