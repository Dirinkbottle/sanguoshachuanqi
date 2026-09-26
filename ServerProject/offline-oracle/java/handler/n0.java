package com.sgscq.vpn.handler;

import com.sgscq.vpn.l7;
import com.sgscq.vpn.n1;
import com.sgscq.vpn.n7;
import com.sgscq.vpn.o7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.v5;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f938a;

    public n0(ArrayList arrayList) {
        this.f938a = arrayList;
    }

    public static n0 a(Map map, String str, String str2, String str3, p7 p7Var) {
        long j2;
        int iMax = Math.max(1, Math.min(3, b(str3, 1)));
        int iB = b(map.get("user_level"), b(map.get("level"), 1));
        int iB2 = b(map.get("user_fighting"), b(map.get("fighting"), 1));
        String str4 = String.valueOf(str) + "|" + str2 + "|" + str3;
        char c2 = 0;
        long jCharAt = 1125899906842597L;
        for (int i2 = 0; i2 < str4.length(); i2++) {
            jCharAt = (jCharAt * 31) + ((long) str4.charAt(i2));
        }
        long jB = (((long) b(map.get("hulao_refresh"), 0)) * 1000003) + jCharAt;
        double dMax = (((double) (Math.max(1, Math.min(6, b(str2, 1))) - 1)) * 0.08d) + 1.0d;
        int iMax2 = Math.max(1, Math.min(6, b(str2, 1))) - 1;
        ArrayList arrayList = new ArrayList();
        if (p7Var != null) {
            p7Var.e();
            ArrayList arrayList2 = new ArrayList();
            synchronized (p7Var.f1293a) {
                for (v5 v5Var : p7Var.f1304l.values()) {
                    if (v5Var != null && !v5Var.f1459a.equals(str) && p7.k(v5Var.f1459a) && !v5Var.f1464f && v5Var.t > 0) {
                        arrayList2.add(v5Var);
                    }
                }
            }
            arrayList2.sort(Comparator.comparingInt(new l7(iB, 1)).thenComparingLong(new n7(iB2, 0)).thenComparingLong(new o7(jB, 0)));
            for (v5 v5Var2 : p7.l(iMax, arrayList2)) {
                long j3 = jB;
                char c3 = c2;
                int[] iArrD = d(iB, iB2, dMax, iMax2, iMax, arrayList.size());
                arrayList.add(e(v5Var2, iArrD[c3], iArrD[1], arrayList.size(), j3, true));
                jB = j3;
                c2 = c3;
            }
        }
        long j4 = jB;
        char c4 = c2;
        int size = iMax - arrayList.size();
        if (p7Var != null) {
            p7Var.e();
            ArrayList arrayList3 = new ArrayList();
            synchronized (p7Var.f1293a) {
                for (v5 v5Var3 : p7Var.f1304l.values()) {
                    if (v5Var3 != null && !v5Var3.f1459a.equals(str) && v5Var3.f1459a.startsWith("robot_") && v5Var3.t > 0) {
                        arrayList3.add(v5Var3);
                    }
                }
            }
            long j5 = j4;
            arrayList3.sort(Comparator.comparingInt(new l7(iB, 4)).thenComparingLong(new n7(iB2, 2)).thenComparingLong(new o7(j5, 4)));
            for (v5 v5Var4 : p7.l(size, arrayList3)) {
                if (arrayList.size() >= iMax) {
                    break;
                }
                long j6 = j5;
                int[] iArrD2 = d(iB, iB2, dMax, iMax2, iMax, arrayList.size());
                arrayList.add(e(v5Var4, iArrD2[c4], iArrD2[1], arrayList.size(), j6, false));
                j5 = j6;
            }
            j2 = j5;
        } else {
            j2 = j4;
        }
        while (arrayList.size() < iMax) {
            int[] iArrD3 = d(iB, iB2, dMax, iMax2, iMax, arrayList.size());
            int i3 = iArrD3[c4];
            int i4 = iArrD3[1];
            int size2 = arrayList.size();
            String str5 = "robot_hulao_" + Math.floorMod((((long) size2) * 31) + j2, 100000L);
            ArrayList arrayListC = c(new ArrayList(), i3, i4, size2, j2);
            arrayList.add(new m0(str5, "天梯对手" + (size2 + 1), Math.max(1, i3), Math.max(1, i4), Math.max(1, arrayListC.size()), arrayListC));
        }
        return new n0(arrayList);
    }

    public static int b(Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        try {
            return (int) Math.round(Double.parseDouble(String.valueOf(obj)));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static ArrayList c(ArrayList arrayList, int i2, int i3, int i4, long j2) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new LinkedHashMap((Map) it.next()));
        }
        arrayList2.sort(Comparator.comparingInt(new n1(5)));
        int i5 = 0;
        if (arrayList2.size() > 3) {
            arrayList2 = new ArrayList(arrayList2.subList(0, 3));
        }
        while (arrayList2.size() < 3) {
            int size = arrayList2.size();
            String strI1 = p5.i1((int) Math.floorMod((((long) size) * 17) + (((long) i4) * 31) + j2, Integer.MAX_VALUE));
            int iMax = Math.max(1000, (size * 100) + (i4 * 500) + (Math.max(1, i3) / 3));
            int iMax2 = Math.max(1000, iMax / 4);
            String str = "ai_" + i4 + "_" + size;
            Integer numValueOf = Integer.valueOf(Math.max(1, i2));
            Integer numValueOf2 = Integer.valueOf(size + 1);
            Integer numValueOf3 = Integer.valueOf(iMax);
            Integer numValueOf4 = Integer.valueOf(iMax);
            Integer numValueOf5 = Integer.valueOf(iMax2);
            Integer numValueOf6 = Integer.valueOf(Math.max(300, iMax / 12));
            int i6 = iMax / 24;
            arrayList2.add(p5.z0("pk_id", str, "general_id", strI1, "general_level", numValueOf, "position", numValueOf2, "general_fighting", numValueOf3, "fighting", numValueOf4, "hp", numValueOf5, "atk", numValueOf6, "def", Integer.valueOf(Math.max(100, i6)), "wis", Integer.valueOf(Math.max(100, i6))));
        }
        while (i5 < arrayList2.size()) {
            Map map = (Map) arrayList2.get(i5);
            i5++;
            map.put("position", Integer.valueOf(i5));
            map.putIfAbsent("general_level", Integer.valueOf(Math.max(1, i2)));
            map.putIfAbsent("general_fighting", Integer.valueOf(Math.max(1000, Math.max(1, i3) / 3)));
        }
        return arrayList2;
    }

    public static int[] d(int i2, int i3, double d2, int i4, int i5, int i6) {
        return new int[]{Math.max(1, i2 + i4 + ((i6 * 2) - (i5 - 1))), Math.max(1000, (int) Math.round(((double) Math.max(1, i3)) * d2 * ((((double) i6) * 0.2d) + 0.8d)))};
    }

    public static m0 e(v5 v5Var, int i2, int i3, int i4, long j2, boolean z) {
        ArrayList arrayList = new ArrayList();
        int i5 = 1;
        if (v5Var != null) {
            ArrayList arrayList2 = new ArrayList(v5Var.s);
            int i6 = 0;
            while (i6 < arrayList2.size() && i6 < 3) {
                String str = (String) arrayList2.get(i6);
                if (str != null && !str.isEmpty()) {
                    int iMax = Math.max(1000, Math.max(i5, i3) / 3);
                    int iMax2 = Math.max(1000, iMax / 4);
                    StringBuilder sb = new StringBuilder();
                    sb.append(v5Var.f1459a);
                    sb.append("_summary_");
                    int i7 = i6 + 1;
                    sb.append(i7);
                    String string = sb.toString();
                    Integer numValueOf = Integer.valueOf(Math.max(i5, i2));
                    Integer numValueOf2 = Integer.valueOf(i7);
                    Integer numValueOf3 = Integer.valueOf(iMax);
                    Integer numValueOf4 = Integer.valueOf(iMax);
                    Integer numValueOf5 = Integer.valueOf(iMax2);
                    Integer numValueOf6 = Integer.valueOf(Math.max(300, iMax / 12));
                    int i8 = iMax / 24;
                    arrayList.add(p5.z0("pk_id", string, "general_id", str, "general_level", numValueOf, "position", numValueOf2, "general_fighting", numValueOf3, "fighting", numValueOf4, "hp", numValueOf5, "atk", numValueOf6, "def", Integer.valueOf(Math.max(100, i8)), "wis", Integer.valueOf(Math.max(100, i8)), "route", Integer.valueOf(i4 + 1)));
                }
                i6++;
                i5 = 1;
            }
        }
        return new m0(v5Var.f1459a, v5Var.f1460b, i2, Math.max(1, i3), Math.max(1, v5Var.k()), c(arrayList, i2, i3, i4, j2));
    }
}
