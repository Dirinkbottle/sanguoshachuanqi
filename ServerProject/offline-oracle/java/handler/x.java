package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
import com.sgscq.vpn.d5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.z2;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1023c = {126, 180, 225, 282, 323, 487, 653, 778, 952, 1027, 1114, 1222, 1383};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1024d = {11, 17, 22, 28, 31, 47, 63, 75, 91, 98, 107, 117, 132};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1025e = {80, 115, 144, 181, 213, 321, 431, 513, 627, 677, 734, 806, 912, 1064, 1296, 1572, 1869, 2366, 2884, 3464, 3936, 4754, 5694, 7154, 8861, 9590, 10828, 12178, 13116, 14942, 15969, 17827, 20002, 21757, 24577, 27801, 30442, 34479, 39023, 42843, 48382, 54528, 59655, 66978, 73676, 81043, 89148, 98062, 107869, 113262, 118925, 124871, 131115, 137671};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f1026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile HashMap f1027b;

    public x(k0 k0Var) {
        this.f1026a = k0Var;
    }

    public static boolean A(String str, Map map) {
        int iY;
        if (map == null || str == null || str.isEmpty()) {
            return false;
        }
        String strValueOf = String.valueOf(map.getOrDefault("dungeon_times_day", ""));
        if (str.equals(strValueOf)) {
            return false;
        }
        map.put("dungeon_times_day", str);
        if (strValueOf.isEmpty()) {
            return true;
        }
        Object obj = map.get("dungeon_times");
        Map mapW = w(obj);
        if (mapW != null && !mapW.isEmpty()) {
            Map mapW2 = w(map.get("dungeon_fight_counts"));
            Iterator it = mapW.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                String str2 = (String) ((Map.Entry) it.next()).getKey();
                if (p(str2) && (iY = y(str2, mapW)) > y(str2, mapW2)) {
                    if (mapW2 != null && str2 != null) {
                        mapW2.put(t(str2), Integer.valueOf(Math.max(0, iY)));
                    }
                    z = true;
                }
            }
            if (z) {
                map.put("dungeon_fight_counts", p5.s1(mapW2));
            }
        }
        mapW.keySet().removeIf(new d5(3));
        Object objS1 = mapW;
        if (!(obj instanceof Map)) {
            objS1 = p5.s1(mapW);
        }
        map.put("dungeon_times", objS1);
        a("dungeon_times_extra", map);
        a("elite_dungeon_times_extra", map);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0040  */
    public static int B(int i2, String str, HashMap map) {
        boolean zBooleanValue;
        if (o(str)) {
            if (map == null) {
                zBooleanValue = false;
            } else {
                Object obj = map.get("hidden");
                if (obj instanceof Boolean) {
                    zBooleanValue = ((Boolean) obj).booleanValue();
                } else if (!(obj instanceof Number) ? !("true".equalsIgnoreCase(String.valueOf(obj)) || "1".equals(String.valueOf(obj))) : ((Number) obj).intValue() == 0) {
                    zBooleanValue = true;
                } else {
                    zBooleanValue = false;
                }
            }
            if (zBooleanValue) {
                return 3;
            }
        }
        if (i2 > 0) {
            return i2;
        }
        return o(str) ? 10 : 5;
    }

    public static int C(int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return 0;
        }
        return Math.max(0, (int) Math.round(((double) (i2 * i3)) / 5.0d));
    }

    public static double D(int i2) {
        double dPow;
        if (i2 <= 24) {
            dPow = Math.pow(1.14d, i2 - 20);
        } else {
            if (i2 > 39) {
                return Math.pow(1.15d, i2 - 39) * Math.pow(1.205d, 19.0d) * 1598.51d;
            }
            dPow = Math.pow(1.205d, i2 - 20);
        }
        return dPow * 1598.51d;
    }

    public static void a(String str, Map map) {
        Object objS1;
        Object obj = map.get(str);
        boolean z = obj instanceof Map;
        if (z || (obj instanceof String)) {
            Map mapW = w(obj);
            mapW.keySet().removeIf(new d5(4));
            objS1 = mapW;
            if (!z) {
                objS1 = p5.s1(mapW);
            }
        } else if (obj == null) {
            return;
        } else {
            objS1 = 0;
        }
        map.put(str, objS1);
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:137:0x023c  */
    /* JADX WARN: Code duplicated, block: B:178:0x0294  */
    /* JADX WARN: Code duplicated, block: B:179:0x0296  */
    /* JADX WARN: Code duplicated, block: B:187:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:188:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:190:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:191:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:192:0x02af  */
    /* JADX WARN: Code duplicated, block: B:229:0x033e  */
    /* JADX WARN: Code duplicated, block: B:47:0x0110  */
    /* JADX WARN: Code duplicated, block: B:48:0x0117  */
    /* JADX WARN: Code duplicated, block: B:50:0x011b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0121  */
    /* JADX WARN: Code duplicated, block: B:53:0x012e  */
    /* JADX WARN: Code duplicated, block: B:73:0x016b  */
    public static int h(w1 w1Var, String str) {
        int i2;
        int i3;
        int iCeil;
        int i4;
        int iMax;
        int iS;
        double d2;
        int i5;
        int i6;
        List<String> listN0;
        List listN1;
        int i7;
        int i8;
        l.c cVar;
        int i9;
        double d3;
        String strT = t(str);
        if (strT.length() < 7 || !strT.startsWith("105")) {
            i2 = -1;
        } else {
            try {
                i2 = Integer.parseInt(strT.substring(3, 5));
            } catch (Exception unused) {
                i2 = -1;
            }
        }
        if (i2 < 1 || i2 > 54) {
            i3 = 0;
            iCeil = -1;
        } else {
            String strT2 = t(str);
            if (strT2.length() < 8 || !strT2.startsWith("105")) {
                i7 = -1;
            } else {
                try {
                    i7 = Integer.parseInt(strT2.substring(5, 8));
                } catch (Exception unused2) {
                    i7 = -1;
                }
            }
            if (i2 <= 4) {
                i8 = 4;
            } else if (i2 <= 14) {
                i8 = 5;
            } else {
                i8 = i2 <= 23 ? 6 : 7;
            }
            int i10 = i8 + 1;
            if (i7 < 1 || i7 > i10) {
                i3 = 0;
                iCeil = -1;
            } else {
                if (i2 > 23) {
                    if (i2 > 37) {
                        double dPow = Math.pow(1.25d, i2 - 37);
                        cVar = new l.c((int) Math.round(51972.0d * dPow), (int) Math.round(dPow * 5471.0d), 0);
                    } else {
                        int i11 = i2 - 24;
                        long j2 = 13 - i11;
                        long j3 = i11;
                        long j4 = (((long) 51972) * j3) + (((long) 31627) * j2);
                        long j5 = 13;
                        long j6 = j5 / 2;
                        int i12 = (int) ((((((long) 5471) * j3) + (((long) 3365) * j2)) + j6) / j5);
                        i3 = 0;
                        cVar = new l.c((int) ((j6 + j4) / j5), i12, 0);
                    }
                    i9 = cVar.f1783a;
                    if (i7 <= i8) {
                        iCeil = ((i7 - 1) * cVar.f1784b) + i9;
                    } else {
                        if (i2 <= 23) {
                            d3 = 0.568d;
                        } else {
                            d3 = 0.649d;
                        }
                        iCeil = (int) Math.ceil(((double) i9) * d3);
                    }
                } else if (i2 <= 13) {
                    int i13 = i2 - 1;
                    cVar = new l.c(f1023c[i13], f1024d[i13], 0);
                } else {
                    double d4 = ((double) (i2 - 13)) / 11.0d;
                    cVar = new l.c((int) Math.round(Math.pow(22.86840202458424d, d4) * 1383.0d), (int) Math.round(Math.pow(25.492424242424242d, d4) * 132.0d), 0);
                }
                i3 = 0;
                i9 = cVar.f1783a;
                if (i7 <= i8) {
                    iCeil = ((i7 - 1) * cVar.f1784b) + i9;
                } else {
                    if (i2 <= 23) {
                        d3 = 0.568d;
                    } else {
                        d3 = 0.649d;
                    }
                    iCeil = (int) Math.ceil(((double) i9) * d3);
                }
            }
        }
        if (iCeil >= 0) {
            return iCeil;
        }
        HashMap mapX0 = w1Var == null ? null : w1Var.x0(u(str));
        int iR = r(str);
        if (iR < 1 || iR > 54) {
            i4 = -1;
        } else {
            if (mapX0 == null) {
                iMax = i3;
            } else {
                Object obj = mapX0.get("boss_tier");
                if (obj instanceof Number) {
                    iMax = ((Number) obj).intValue();
                } else if (obj instanceof String) {
                    try {
                        iMax = Integer.parseInt((String) obj);
                    } catch (Exception unused3) {
                        iMax = i3;
                    }
                } else {
                    iMax = i3;
                }
            }
            if (iMax <= 0) {
                int iR2 = r(str);
                int iS2 = s(str);
                if (iR2 < 1 || iR2 > 54 || iS2 <= 0) {
                    iMax = i3;
                } else {
                    int size = (w1Var == null || (listN1 = w1Var.n0(String.valueOf(iR2 + 500))) == null) ? i3 : listN1.size();
                    if (size <= 0) {
                        if (iR2 < 1 || iR2 > 54) {
                            size = i3;
                        } else if (iR2 <= 17) {
                            size = new int[]{6, 7, 9, 10, 10, 12, 12, 13, 14, 15, 15, 15, 16, 16, 16, 17, 17}[iR2 - 1];
                        } else if (iR2 <= 21) {
                            size = 18;
                        } else {
                            size = iR2 <= 24 ? 19 : 20;
                        }
                    }
                    if (iS2 != size) {
                        iMax = i3;
                    } else {
                        iMax = iR2 <= 24 ? 6 : 7;
                    }
                }
                if (iMax <= 0) {
                    if (!Boolean.TRUE.equals(q(w1Var, mapX0))) {
                        iMax = i3;
                    } else if (w1Var == null) {
                        iMax = 1;
                    } else {
                        int iR3 = r(str);
                        int iS3 = s(str);
                        if (iR3 < 1 || iR3 > 54 || iS3 <= 0 || (listN0 = w1Var.n0(String.valueOf(iR3 + 500))) == null || listN0.isEmpty()) {
                            iMax = 1;
                        } else {
                            String strT3 = t(str);
                            int i14 = i3;
                            for (String str2 : listN0) {
                                if (Boolean.TRUE.equals(q(w1Var, w1Var.x0(str2)))) {
                                    i14++;
                                }
                                if (strT3.equals(t(str2))) {
                                    break;
                                }
                            }
                            iMax = Math.max(1, i14);
                        }
                    }
                }
            }
            Boolean boolQ = q(w1Var, mapX0);
            int i15 = (iMax > 0 || Boolean.TRUE.equals(boolQ)) ? 1 : i3;
            if (i15 != 0 && iMax <= 0) {
                iMax = 1;
            }
            if (i15 == 0 && boolQ == null) {
                int iS4 = s(str);
                int iR4 = r(str);
                if (iS4 <= 0 || iR4 < 18 || iR4 > 54) {
                    i5 = i3;
                } else if (iR4 <= 24) {
                    if (iS4 == 4) {
                        i5 = 1;
                    } else if (iS4 == 8) {
                        i5 = 2;
                    } else if (iS4 == 12) {
                        i5 = 3;
                    } else if (iS4 == 18) {
                        i5 = 6;
                    } else if (iS4 == 15) {
                        i6 = 4;
                        i5 = i6;
                    } else if (iS4 != 16) {
                        i5 = i3;
                    } else {
                        i5 = 5;
                    }
                } else if (iR4 > 39) {
                    i6 = 4;
                    if (iS4 == 4) {
                        i5 = 1;
                    } else if (iS4 == 8) {
                        i5 = 2;
                    } else if (iS4 != 12) {
                        switch (iS4) {
                            case 18:
                                i5 = i6;
                                break;
                            case 19:
                                i5 = 5;
                                break;
                            case 20:
                                i5 = 7;
                                break;
                            default:
                                i5 = i3;
                                break;
                        }
                    } else {
                        i5 = 3;
                    }
                } else if (iS4 == 4) {
                    i5 = 1;
                } else if (iS4 == 8) {
                    i5 = 2;
                } else if (iS4 == 12) {
                    i5 = 3;
                } else if (iS4 != 16) {
                    switch (iS4) {
                        case 18:
                            i5 = 5;
                            break;
                        case 19:
                            i5 = 6;
                            break;
                        case 20:
                            i5 = 7;
                            break;
                        default:
                            i5 = i3;
                            break;
                    }
                } else {
                    i6 = 4;
                    i5 = i6;
                }
                i15 = (i5 > 0 || (mapX0 != null && "boss".equals(String.valueOf(mapX0.getOrDefault("type", ""))))) ? 1 : i3;
                iMax = i5;
            }
            if (i15 == 0 || iMax > 0) {
                int iR5 = r(str);
                if (iR5 < 1 || iR5 > 54 || (iS = s(str)) <= 0) {
                    i4 = -1;
                } else {
                    double D = D(iR5);
                    if (i15 == 0) {
                        d2 = (D + ((double) iS)) - 1.0d;
                    } else {
                        double[] dArr = iR5 <= 24 ? new double[]{1.342d, 1.476d, 1.61d, 1.744d, 1.878d, 2.012d} : new double[]{1.342d, 1.476d, 1.61d, 1.744d, 1.878d, 2.012d, 2.146d};
                        if (iMax <= 0 || iMax > dArr.length) {
                            i4 = -1;
                        } else {
                            d2 = D * dArr[iMax - 1];
                        }
                    }
                    int iRound = (int) Math.round(d2);
                    int iRound2 = (int) Math.round(D(iR5) * (iR5 <= 24 ? 2.012d : 2.146d));
                    long j7 = ((long) iRound) * ((long) f1025e[iR5 - 1]);
                    long j8 = iRound2;
                    i4 = (int) (((j8 / 2) + j7) / j8);
                }
            } else {
                i4 = -1;
            }
        }
        return i4 >= 0 ? i4 : i3;
    }

    public static Map k(Map map) {
        Object obj = map.get("dungeon_times");
        if (obj instanceof Map) {
            return (Map) obj;
        }
        if (obj instanceof String) {
            try {
                return p5.u1((String) obj);
            } catch (Exception unused) {
            }
        }
        return new HashMap();
    }

    public static void n(String str, Map map) {
        A(c7.b(), map);
        boolean z = false;
        if (str != null && !str.isEmpty()) {
            Map mapW = w(map.get("dungeon_fight_counts"));
            String strT = t(str);
            int iY = y(strT, mapW) + 1;
            if (mapW != null && strT != null) {
                mapW.put(t(strT), Integer.valueOf(Math.max(0, iY)));
            }
            map.put("dungeon_fight_counts", p5.s1(mapW));
        }
        String str2 = o(str) ? "elite_dungeon_times_extra" : "dungeon_times_extra";
        String strT2 = t(str);
        Object obj = map.get(str2);
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            int iX = x(strT2, map2);
            if (iX > 0) {
                z(iX - 1, strT2, map2);
                map.put(str2, map2);
                z = true;
            }
        } else {
            int iV = v(0, str2, map);
            if (iV > 0) {
                map.put(str2, Integer.valueOf(iV - 1));
                z = true;
            }
        }
        if (z) {
            return;
        }
        Map mapK = k(map);
        z(x(str, mapK) + 1, str, mapK);
        map.put("dungeon_times", p5.s1(mapK));
    }

    public static boolean o(String str) {
        return str != null && str.startsWith("105");
    }

    public static boolean p(String str) {
        String strT = t(str);
        if (strT.length() < 3) {
            return false;
        }
        if (strT.startsWith("105")) {
            return true;
        }
        try {
            int i2 = Integer.parseInt(strT.substring(0, 3));
            return i2 >= 501 && i2 <= 554;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0036  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040  */
    /* JADX WARN: Code duplicated, block: B:22:0x0047  */
    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    /* JADX WARN: Code duplicated, block: B:28:0x0055 A[PHI: r2
      0x0055: PHI (r2v13 int) = (r2v7 int), (r2v19 int) binds: [B:27:0x0053, B:17:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x0057  */
    /* JADX WARN: Code duplicated, block: B:31:0x0061  */
    /* JADX WARN: Code duplicated, block: B:33:0x0069 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:40:0x0085  */
    /* JADX WARN: Code duplicated, block: B:41:0x008c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static Boolean q(w1 w1Var, HashMap map) {
        Object obj;
        int iIntValue;
        Object obj2;
        List list;
        Map mapJ0;
        Object obj3;
        int iIntValue2 = -1;
        if (map != null) {
            Object obj4 = map.get("enemy_grades");
            if (obj4 instanceof List) {
                List list2 = (List) obj4;
                if (list2.size() > 1) {
                    Object obj5 = list2.get(1);
                    if (obj5 instanceof Number) {
                        iIntValue = ((Number) obj5).intValue();
                    } else if (obj5 instanceof String) {
                        try {
                            iIntValue = Integer.parseInt((String) obj5);
                        } catch (Exception unused) {
                            iIntValue = -1;
                        }
                    } else {
                        iIntValue = -1;
                    }
                    if (iIntValue > 0) {
                        iIntValue2 = iIntValue;
                    } else {
                        obj = map.get("second_enemy_grade");
                        if (obj instanceof Number) {
                            iIntValue = ((Number) obj).intValue();
                        } else if (obj instanceof String) {
                            try {
                                iIntValue = Integer.parseInt((String) obj);
                            } catch (Exception unused2) {
                                iIntValue = -1;
                            }
                        } else {
                            iIntValue = -1;
                        }
                        if (iIntValue > 0) {
                            iIntValue2 = iIntValue;
                        } else {
                            obj2 = map.get("enemies");
                            if (obj2 instanceof List) {
                                list = (List) obj2;
                                if (list.size() > 1 && w1Var != null && (mapJ0 = w1Var.J0(String.valueOf(list.get(1)))) != null) {
                                    obj3 = mapJ0.get("grade");
                                    if (obj3 instanceof Number) {
                                        iIntValue2 = ((Number) obj3).intValue();
                                    } else if (obj3 instanceof String) {
                                        try {
                                            iIntValue2 = Integer.parseInt((String) obj3);
                                        } catch (Exception unused3) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    obj = map.get("second_enemy_grade");
                    if (obj instanceof Number) {
                        iIntValue = ((Number) obj).intValue();
                    } else if (obj instanceof String) {
                        iIntValue = Integer.parseInt((String) obj);
                    } else {
                        iIntValue = -1;
                    }
                    if (iIntValue > 0) {
                        iIntValue2 = iIntValue;
                    } else {
                        obj2 = map.get("enemies");
                        if (obj2 instanceof List) {
                            list = (List) obj2;
                            if (list.size() > 1) {
                                obj3 = mapJ0.get("grade");
                                if (obj3 instanceof Number) {
                                    iIntValue2 = ((Number) obj3).intValue();
                                } else if (obj3 instanceof String) {
                                    iIntValue2 = Integer.parseInt((String) obj3);
                                }
                            }
                        }
                    }
                }
            } else {
                obj = map.get("second_enemy_grade");
                if (obj instanceof Number) {
                    iIntValue = ((Number) obj).intValue();
                } else if (obj instanceof String) {
                    iIntValue = Integer.parseInt((String) obj);
                } else {
                    iIntValue = -1;
                }
                if (iIntValue > 0) {
                    iIntValue2 = iIntValue;
                } else {
                    obj2 = map.get("enemies");
                    if (obj2 instanceof List) {
                        list = (List) obj2;
                        if (list.size() > 1) {
                            obj3 = mapJ0.get("grade");
                            if (obj3 instanceof Number) {
                                iIntValue2 = ((Number) obj3).intValue();
                            } else if (obj3 instanceof String) {
                                iIntValue2 = Integer.parseInt((String) obj3);
                            }
                        }
                    }
                }
            }
        }
        if (iIntValue2 <= 0) {
            return null;
        }
        return Boolean.valueOf(iIntValue2 != 4);
    }

    public static int r(String str) {
        String strT = t(str);
        if (strT.length() >= 3 && !strT.startsWith("105")) {
            try {
                return Integer.parseInt(strT.substring(0, 3)) - 500;
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static int s(String str) {
        String strT = t(str);
        if (strT.length() >= 6 && !strT.startsWith("105")) {
            try {
                return Integer.parseInt(strT.substring(3, 6));
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static String t(String str) {
        if (str == null) {
            return "";
        }
        if (!str.startsWith("105") || str.length() < 8) {
            return str.length() >= 6 ? str.substring(0, 6) : str;
        }
        return str.substring(0, 8);
    }

    public static String u(String str) {
        if (str == null) {
            return "";
        }
        String strTrim = str.trim();
        if (!strTrim.matches("105\\d{5}")) {
            return strTrim;
        }
        return strTrim.substring(0, 5) + strTrim.substring(5, 8) + "01";
    }

    public static int v(int i2, String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return i2;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (Exception unused) {
            return i2;
        }
    }

    public static Map w(Object obj) {
        if (obj instanceof Map) {
            return (Map) obj;
        }
        if (!(obj instanceof String)) {
            return new LinkedHashMap();
        }
        String str = (String) obj;
        try {
            LinkedHashMap linkedHashMapU1 = p5.u1(str);
            if (!linkedHashMapU1.isEmpty()) {
                return linkedHashMapU1;
            }
        } catch (Exception unused) {
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Matcher matcher = Pattern.compile("\"([^\"]+)\"\\s*:\\s*(-?\\d+)").matcher(str);
        while (matcher.find()) {
            try {
                linkedHashMap.put(matcher.group(1), Long.valueOf(Long.parseLong(matcher.group(2))));
            } catch (NumberFormatException unused2) {
            }
        }
        return linkedHashMap;
    }

    public static int x(String str, Map map) {
        if (map == null) {
            return 0;
        }
        Object obj = map.get(str);
        if (obj == null) {
            obj = map.get(t(str));
        }
        if (obj == null && str != null && str.length() == 6) {
            obj = map.get(str.concat("01"));
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static int y(String str, Map map) {
        if (map != null && str != null) {
            Object obj = map.get(str);
            if (obj == null) {
                obj = map.get(t(str));
            }
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            if (obj instanceof String) {
                try {
                    return Integer.parseInt((String) obj);
                } catch (NumberFormatException unused) {
                }
            }
        }
        return 0;
    }

    public static void z(int i2, String str, Map map) {
        if (map == null || str == null) {
            return;
        }
        String strT = t(str);
        if (str.length() == 6) {
            str = str.concat("01");
        }
        map.remove(str);
        map.put(strT, Integer.valueOf(i2));
    }

    public final List b(String str) {
        String strTrim;
        try {
            w1 w1VarA1 = w1.a1(this.f1026a.f901a);
            if (w1VarA1.C == null) {
                w1VarA1.J1();
            }
            HashMap map = w1VarA1.C;
            if (str == null) {
                strTrim = "";
            } else {
                strTrim = str.trim();
                if (strTrim.matches("\\d{6}")) {
                    strTrim = strTrim.concat("01");
                }
            }
            return m((String) map.get(strTrim));
        } catch (Exception e2) {
            StringBuilder sbB = a.b0.b("[DungeonService] getAfterPlotDialogs ", str, ": ");
            sbB.append(e2.getMessage());
            z2.c("SGSCQ_SRV", sbB.toString());
            return Collections.emptyList();
        }
    }

    public final int c(String str, Map map) {
        int iV;
        int i2 = i(str, map);
        A(c7.b(), map);
        int iMax = Math.max(0, i2 - x(str, k(map)));
        Object obj = map.get(o(str) ? "elite_dungeon_times_extra" : "dungeon_times_extra");
        if (obj instanceof Map) {
            iV = x(t(str), (Map) obj);
        } else {
            iV = v(0, o(str) ? "elite_dungeon_times_extra" : "dungeon_times_extra", map);
        }
        return iMax + Math.max(0, iV);
    }

    public final List d(String str) {
        String strTrim;
        try {
            w1 w1VarA1 = w1.a1(this.f1026a.f901a);
            if (w1VarA1.C == null) {
                w1VarA1.J1();
            }
            if (str == null) {
                strTrim = "";
            } else {
                strTrim = str.trim();
                if (strTrim.matches("\\d{6}")) {
                    strTrim = strTrim.concat("01");
                }
            }
            if (!w1VarA1.C.containsKey(strTrim)) {
                strTrim = null;
            }
            return m(strTrim);
        } catch (Exception e2) {
            StringBuilder sbB = a.b0.b("[DungeonService] getBeforePlotDialogs ", str, ": ");
            sbB.append(e2.getMessage());
            z2.c("SGSCQ_SRV", sbB.toString());
            return Collections.emptyList();
        }
    }

    public final int e(String str) {
        Map mapF = f(str);
        return w1.a1(this.f1026a.f901a).w0(u(str), mapF != null ? v(100, "dungeon_coin", mapF) : 100, "coin");
    }

    public final Map f(String str) {
        Object obj;
        if (str == null) {
            return null;
        }
        if (this.f1027b != null) {
            obj = this.f1027b.get(str);
        } else {
            HashMap map = new HashMap();
            try {
                w1 w1VarA1 = w1.a1(this.f1026a.f901a);
                if (w1VarA1.y == null) {
                    w1VarA1.K1();
                }
                HashMap map2 = w1VarA1.y;
                if (map2 != null) {
                    map.putAll(map2);
                }
            } catch (Exception e2) {
                c.a.D(e2, new StringBuilder("[DungeonService] Failed to build dungeon config cache: "), "SGSCQ_SRV");
            }
            this.f1027b = map;
            z2.e("SGSCQ_SRV", "[DungeonService] Cached " + map.size() + " dungeon configs");
            obj = map.get(str);
        }
        return (Map) obj;
    }

    public final List g(String str) {
        w1 w1VarA1 = w1.a1(this.f1026a.f901a);
        String strU = u(str);
        HashMap mapX0 = w1VarA1.x0(strU);
        if (mapX0 != null && mapX0.containsKey("drops")) {
            return w1VarA1.u0(strU);
        }
        Map mapF = f(str);
        if (mapF == null) {
            return Collections.emptyList();
        }
        Object obj = mapF.get("dungeon_drop");
        return obj instanceof List ? (List) obj : Collections.emptyList();
    }

    public final int i(String str, Map map) {
        Map mapF = f(str);
        int iW0 = w1.a1(this.f1026a.f901a).w0(u(str), mapF == null ? 99 : v(99, "dungeon_times", mapF), "times");
        if (o(str)) {
            return iW0;
        }
        return Math.min(iW0, v(v(0, "user_vip_level", map), "vip_level", map) < 12 ? 50 : 99);
    }

    public final int j(String str) {
        Map mapF = f(str);
        int iV = 10;
        if (mapF != null) {
            iV = v(o(str) ? 10 : 5, "dungeon_cost_power", mapF);
        } else if (!o(str)) {
            iV = 5;
        }
        w1 w1VarA1 = w1.a1(this.f1026a.f901a);
        String strU = u(str);
        return B(w1VarA1.w0(strU, iV, "power"), str, w1VarA1.x0(strU));
    }

    public final int l(String str, String str2) {
        Map mapU1;
        Map mapW0 = this.f1026a.f904d.w0(str);
        if (mapW0 == null) {
            mapU1 = new HashMap();
        } else {
            Object obj = mapW0.get("dungeon_stars");
            if (obj instanceof Map) {
                mapU1 = (Map) obj;
            } else if (obj instanceof String) {
                try {
                    mapU1 = p5.u1((String) obj);
                } catch (Exception unused) {
                    mapU1 = new HashMap();
                }
            } else {
                mapU1 = new HashMap();
            }
        }
        return x(str2, mapU1);
    }

    public final List m(String str) {
        if (str == null || str.isEmpty()) {
            return Collections.emptyList();
        }
        try {
            List listT0 = w1.a1(this.f1026a.f901a).t0(str);
            return listT0 != null ? listT0 : Collections.emptyList();
        } catch (Exception e2) {
            StringBuilder sbB = a.b0.b("[DungeonService] Failed to get dialogs for ", str, ": ");
            sbB.append(e2.getMessage());
            z2.c("SGSCQ_SRV", sbB.toString());
            return Collections.emptyList();
        }
    }
}
