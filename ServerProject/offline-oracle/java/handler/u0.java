package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.y2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public final class u0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f999b = {1, 2, 3, 5, 10};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1000c = {700, 150, 80, 50, 20};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1001d = {250, 450, 150, 100, 50};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1002e = {100, 200, 450, 150, 100};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f1003f = {50, 100, 200, 450, 200};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f1004a;

    public u0(k0 k0Var) {
        this.f1004a = k0Var;
    }

    public static Map a(int i2, Map map) {
        List<Map> listF0 = w1.f0("Item", map);
        for (Map map2 : listF0) {
            if (c.a.C(map2, "id", "", "item_id", "600095")) {
                int iR = r(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0) + i2;
                map2.put("num", Integer.valueOf(iR));
                map2.put("item_num", Integer.valueOf(iR));
                map.put("Item", p5.z0("del", new ArrayList(), "upd", Arrays.asList(map2), "add", listF0));
                return map2;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Item", map, linkedHashMap, "pk_id", "id", "600095");
        c.a.z(linkedHashMap, "item_id", "600095", i2, "num", i2, "item_num");
        linkedHashMap.put("item_type", 1);
        linkedHashMap.put("type", "1");
        linkedHashMap.put("is_new", Boolean.TRUE);
        listF0.add(linkedHashMap);
        map.put("Item", p5.z0("del", new ArrayList(), "upd", Arrays.asList(linkedHashMap), "add", listF0));
        return linkedHashMap;
    }

    public static boolean b(Map map) {
        int iR = r(map.get("pulse_value"), 0);
        if (iR <= 0) {
            return false;
        }
        a(iR, map);
        map.put("pulse_value", 0);
        return true;
    }

    public static int d(Map map) {
        int iR = r(map.get("top_level"), 1);
        return r(map.get("top_level"), 1) == iR && r(map.get("meridian_level"), 1) >= 8 && r(map.get("point_level"), 0) >= 30 ? iR : Math.max(0, iR - 1);
    }

    public static Map e(LinkedHashMap linkedHashMap, Map map) {
        Object obj = linkedHashMap.get("delta_data");
        return obj instanceof Map ? (Map) obj : map;
    }

    public static LinkedHashMap f(String str, Map map) {
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            return p5.z0(str, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
        }
        Map map2 = (Map) obj;
        return p5.z0(str, p5.z0("del", map2.get("del") instanceof List ? new ArrayList((List) map2.get("del")) : new ArrayList(), "upd", map2.get("upd") instanceof List ? new ArrayList((List) map2.get("upd")) : new ArrayList(), "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0(str, map)}, map, str)), new Object[0]);
    }

    public static LinkedHashMap g(String str) {
        return p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str, "error_code", -1);
    }

    public static boolean i(Map map) {
        return r(map.get("top_level"), 1) >= 8 && r(map.get("meridian_level"), 1) >= 8 && r(map.get("point_level"), 0) >= 30;
    }

    public static boolean j(String str) {
        return "pulse.getList".equals(str) || "pulse.practicePulse".equals(str) || "pulse.pulseCollect".equals(str) || "meridian.light".equals(str) || "meridian.multiLight".equals(str);
    }

    public static int k(Map map) {
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.C(map2, "id", "", "item_id", "600095")) {
                return r(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0);
            }
        }
        return 0;
    }

    public static int l(Map map) {
        int iR = r(map.get("top_level"), 1);
        int iR2 = r(map.get("meridian_level"), 1);
        int i2 = 0;
        int iR3 = r(map.get("point_level"), 0);
        int i3 = 1;
        int i4 = 1;
        int i5 = 0;
        int iN = 0;
        while (true) {
            int i6 = i2 + 1;
            if (i2 >= 1928 || (i3 == iR && i4 == iR2 && i5 == iR3)) {
                break;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("top_level", String.valueOf(i3));
            linkedHashMap.put("meridian_level", String.valueOf(i4));
            linkedHashMap.put("point_level", String.valueOf(i5));
            iN += n(linkedHashMap);
            if (i5 >= 30) {
                if (i4 >= 8) {
                    if (i3 >= 8) {
                        break;
                    }
                    i3++;
                    i5 = 1;
                    i4 = 1;
                } else {
                    i4++;
                    i5 = 1;
                }
            } else {
                i5++;
            }
            i2 = i6;
        }
        return iN;
    }

    public static LinkedHashMap m(String str, String str2, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Skill", map, linkedHashMap, "pk_id", "general_pk_id", str);
        linkedHashMap.put("skill_id", str2);
        linkedHashMap.put("id", str2);
        linkedHashMap.put("skill_code", str2);
        linkedHashMap.put("card_type", "4");
        linkedHashMap.put("level", "1");
        linkedHashMap.put("skill_level", "1");
        linkedHashMap.put("position", "0");
        linkedHashMap.put("pos", "0");
        linkedHashMap.put("skill_position", "0");
        linkedHashMap.put("get_time", String.valueOf(c7.g()));
        linkedHashMap.put("is_natural", Boolean.FALSE);
        linkedHashMap.put("exp", "0");
        linkedHashMap.put("extra_level", "0");
        linkedHashMap.put("advanced_level", "0");
        return linkedHashMap;
    }

    public static int n(Map map) {
        int iR = r(map.get("top_level"), 1);
        int iR2 = r(map.get("meridian_level"), 1);
        int iR3 = r(map.get("point_level"), 0);
        int i2 = iR3 >= 30 ? 1 : iR3 + 1;
        try {
            int iI1 = w1.Z0().i1(iR, iR2, i2);
            if (iI1 > 0) {
                return iI1;
            }
        } catch (IllegalStateException unused) {
        }
        int i3 = (i2 + 1) / 2;
        return i3 <= 4 ? i3 + 2 : i3 * 2;
    }

    public static void o(LinkedHashMap linkedHashMap, Map map) {
        t(map);
        int iR = r(map.get("pulse_count"), 5);
        int iR2 = r(map.get("pulse_value"), 0);
        int iK = k(map);
        int iMax = Math.max(1, Math.min(5, r(map.get("pulse_slot"), 1)));
        LinkedHashMap linkedHashMapZ0 = p5.z0("pulse_base", String.valueOf(new int[]{8, 20, 38, 65, 106}[Math.max(1, Math.min(5, iMax)) - 1]), "pulse_gold", String.valueOf(new int[]{0, 50, 50, 80, 160}[Math.max(1, Math.min(5, iMax)) - 1]), "pulse_num", String.valueOf(iMax));
        linkedHashMap.put("pulse_total", String.valueOf(iK));
        linkedHashMap.put("pulse_value", String.valueOf(iR2));
        linkedHashMap.put("pulse_count", String.valueOf(iR));
        linkedHashMap.put("pulse_list", linkedHashMapZ0);
        linkedHashMap.put("pulse_info", p5.z0("pulse_total", String.valueOf(iK), "pulse_value", String.valueOf(iR2), "pulse_count", String.valueOf(iR), "pulse_list", linkedHashMapZ0));
        linkedHashMap.put("meridian_list", new ArrayList());
        linkedHashMap.put("meridian_point_list", new ArrayList());
        linkedHashMap.put("meridian_top_list", w1.f0("MeridianTop", map));
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0076  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:85:0x015f  */
    public static void p(w1 w1Var, Map map) {
        int i2;
        char c2;
        Map map2;
        double d2;
        double d3;
        Map map3;
        double d4;
        Map map4;
        if (w1Var == null) {
            return;
        }
        int i3 = 1;
        int iR = r(map.get("top_level"), 1);
        int iR2 = r(map.get("meridian_level"), 1);
        int i4 = 0;
        int iR3 = r(map.get("point_level"), 0);
        char c3 = 4;
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        int i5 = 1;
        while (i5 <= iR) {
            int i6 = i5 == iR ? iR2 : 8;
            int i7 = i3;
            while (i7 <= i6) {
                int i8 = (i5 == iR && i7 == iR2) ? iR3 : 30;
                int i9 = i3;
                while (i9 <= i8) {
                    w1 w1VarZ0 = w1.Z0();
                    w1VarZ0.T1();
                    Map map5 = (Map) w1VarZ0.L.get(String.valueOf(i5));
                    if (map5 == null || (map4 = (Map) map5.get(String.valueOf(i7))) == null) {
                        map3 = null;
                    } else {
                        Object obj = map4.get(String.valueOf(i9));
                        if (obj instanceof Map) {
                            map3 = (Map) obj;
                        } else {
                            map3 = null;
                        }
                    }
                    if (map3 != null) {
                        int iR4 = r(map3.getOrDefault("buff_type", "0"), i4);
                        Object orDefault = map3.getOrDefault("buff_value", "0");
                        if (orDefault == null) {
                            d4 = 0.0d;
                        } else {
                            try {
                                d4 = Double.parseDouble(String.valueOf(orDefault));
                            } catch (NumberFormatException unused) {
                                d4 = 0.0d;
                            }
                        }
                        if (iR4 >= i3 && iR4 <= 4 && d4 != 0.0d) {
                            int i10 = iR4 - 1;
                            dArr[i10] = dArr[i10] + d4;
                        }
                    }
                    i9++;
                    i4 = 0;
                }
                if (i8 >= 30 && i5 == iR && i7 == iR2) {
                    w1 w1VarZ1 = w1.Z0();
                    w1VarZ1.S1();
                    Object obj2 = w1VarZ1.S.get(String.valueOf(i5));
                    if (obj2 instanceof Map) {
                        Object obj3 = ((Map) obj2).get(String.valueOf(i7));
                        if (obj3 instanceof Map) {
                            map2 = (Map) obj3;
                        } else {
                            map2 = null;
                        }
                    } else {
                        map2 = null;
                    }
                    if (map2 == null) {
                        i2 = iR;
                        c2 = 4;
                    } else {
                        Object obj4 = map2.get("buff");
                        if (obj4 instanceof Map) {
                            Map map6 = (Map) obj4;
                            Object obj5 = map6.get("1");
                            Object obj6 = map6.get("2");
                            if (obj5 instanceof Map) {
                                int i11 = i3;
                                while (i11 <= 4) {
                                    int i12 = i11 - 1;
                                    double d5 = dArr[i12];
                                    int i13 = iR;
                                    Object obj7 = ((Map) obj5).get(String.valueOf(i11));
                                    if (obj7 == null) {
                                        d3 = 0.0d;
                                    } else {
                                        try {
                                            d3 = Double.parseDouble(String.valueOf(obj7));
                                        } catch (NumberFormatException unused2) {
                                            d3 = 0.0d;
                                        }
                                    }
                                    dArr[i12] = d3 + d5;
                                    i11++;
                                    iR = i13;
                                }
                            }
                            i2 = iR;
                            if (obj6 instanceof Map) {
                                c2 = 4;
                                for (int i14 = 1; i14 <= 4; i14++) {
                                    int i15 = i14 - 1;
                                    double d6 = dArr2[i15];
                                    Object obj8 = ((Map) obj6).get(String.valueOf(i14));
                                    if (obj8 == null) {
                                        d2 = 0.0d;
                                    } else {
                                        try {
                                            d2 = Double.parseDouble(String.valueOf(obj8));
                                        } catch (NumberFormatException unused3) {
                                            d2 = 0.0d;
                                        }
                                    }
                                    dArr2[i15] = d2 + d6;
                                }
                            }
                        } else {
                            i2 = iR;
                        }
                        c2 = 4;
                    }
                } else {
                    i2 = iR;
                    c2 = 4;
                }
                i7++;
                c3 = c2;
                iR = i2;
                i3 = 1;
                i4 = 0;
            }
            i5++;
            i3 = 1;
            i4 = 0;
        }
        int i16 = i4;
        map.put("gong", String.valueOf(Math.round(((dArr2[i16] / 100.0d) + 1.0d) * dArr[i16])));
        map.put("fang", String.valueOf(Math.round(((dArr2[1] / 100.0d) + 1.0d) * dArr[1])));
        map.put("xue", String.valueOf(Math.round(((dArr2[2] / 100.0d) + 1.0d) * dArr[2])));
        map.put("zhi", String.valueOf(Math.round(((dArr2[3] / 100.0d) + 1.0d) * dArr[3])));
    }

    public static boolean q(Map map) {
        String strB = c7.b();
        String strValueOf = String.valueOf(map.getOrDefault("pulse_day", ""));
        if (strValueOf.isEmpty()) {
            map.put("pulse_day", strB);
            return true;
        }
        if (!strB.equals(strValueOf)) {
            map.put("pulse_day", strB);
        } else if (map.containsKey("pulse_slot")) {
            return false;
        }
        map.put("pulse_count", 5);
        map.put("pulse_slot", 1);
        return true;
    }

    public static int r(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static LinkedHashMap s() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static void t(Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map map2 : w1.f0("MeridianTop", map)) {
            int iL = l(map2);
            if (r(map2.get("item_num"), -1) != iL) {
                map2.put("item_num", Integer.valueOf(iL));
            }
            arrayList.add(map2);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        map.put("MeridianTop", p5.z0("del", new ArrayList(), "upd", arrayList, "add", w1.f0("MeridianTop", map)));
    }

    public final LinkedHashMap c(String str, Map map, Map map2) {
        k0 k0Var = (k0) this.f1004a;
        return p5.u1(((k0) k0Var.k().f808b).f904d.j(map, ((k0) k0Var.k().f808b).f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), str, map2), "Item", "MeridianTop"));
    }

    /* JADX WARN: Code duplicated, block: B:104:0x030a  */
    /* JADX WARN: Code duplicated, block: B:107:0x0329 A[LOOP:2: B:102:0x02e2->B:107:0x0329, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x0388  */
    /* JADX WARN: Code duplicated, block: B:111:0x038c  */
    /* JADX WARN: Code duplicated, block: B:168:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:169:0x04ef  */
    /* JADX WARN: Code duplicated, block: B:172:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:175:0x050e A[LOOP:6: B:170:0x04f7->B:175:0x050e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:178:0x0516  */
    /* JADX WARN: Code duplicated, block: B:180:0x0528  */
    /* JADX WARN: Code duplicated, block: B:183:0x053a  */
    /* JADX WARN: Code duplicated, block: B:199:0x05f6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:200:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:212:0x0624  */
    /* JADX WARN: Code duplicated, block: B:215:0x062d  */
    /* JADX WARN: Code duplicated, block: B:218:0x0644  */
    /* JADX WARN: Code duplicated, block: B:220:0x0660 A[LOOP:8: B:216:0x063e->B:220:0x0660, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:223:0x06a5  */
    /* JADX WARN: Code duplicated, block: B:225:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:227:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:234:0x0719  */
    /* JADX WARN: Code duplicated, block: B:237:0x0728 A[LOOP:9: B:235:0x0722->B:237:0x0728, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:241:0x0773  */
    /* JADX WARN: Code duplicated, block: B:244:0x0783  */
    /* JADX WARN: Code duplicated, block: B:247:0x0793  */
    /* JADX WARN: Code duplicated, block: B:268:0x02d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:269:0x02d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:? A[LOOP:1: B:95:0x02c3->B:270:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x0338 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x031a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:284:0x0511 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:0x0514 A[EDGE_INSN: B:285:0x0514->B:177:0x0514 BREAK  A[LOOP:6: B:170:0x04f7->B:175:0x050e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:0x056b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:0x06c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x066d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x078f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:295:? A[LOOP:10: B:242:0x077d->B:295:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:94:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c9  */
    public final byte[] h(String str, Map map) {
        String str2;
        u0 u0Var;
        String str3;
        String strTrim;
        String str4;
        Iterator it;
        boolean z;
        boolean z2;
        List listF0;
        Iterator it2;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        boolean z3;
        Object obj;
        Object obj2;
        String str13;
        Map map2;
        int i2;
        ArrayList arrayList;
        int iD;
        String str14;
        String str15;
        int i3;
        ArrayList arrayList2;
        String str16;
        String str17;
        int i4;
        Object obj3;
        Object obj4;
        String str18;
        String str19;
        String str20;
        Object obj5;
        List listF1;
        Iterator it3;
        String str21;
        String str22;
        String str23;
        Object obj6;
        LinkedHashMap linkedHashMapS;
        ArrayList arrayList3;
        String str24;
        ArrayList arrayList4;
        Iterator it4;
        Iterator it5;
        Map map3;
        String str25;
        String str26;
        int iMax;
        ArrayList arrayList5;
        ArrayList arrayList6;
        String strValueOf;
        String str27;
        List listF2;
        int i5;
        int i6;
        int i7;
        w1 w1VarZ0;
        String str28;
        String strValueOf2;
        Iterator it6;
        int i8;
        Map map4;
        int i9;
        String str29;
        List listF3;
        Iterator it7;
        String str30;
        String str31;
        Map mapM;
        Object obj7;
        Object obj8;
        String str32;
        Map map5;
        String str33;
        int iR;
        int iR2;
        Iterator it8;
        Map map6;
        Object obj9;
        LinkedHashMap linkedHashMapS2;
        Object obj10;
        List listAsList;
        d1 d1VarK;
        Object obj11;
        int[] iArr;
        int i10;
        int i11;
        String str34;
        Object obj12;
        Object obj13;
        Map mapA = null;
        if (!j(str)) {
            return null;
        }
        e0 e0Var = this.f1004a;
        k0 k0Var = (k0) e0Var;
        String strE = k0Var.e(map);
        Map mapW0 = ((k0) k0Var.k().f808b).f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        int i12 = 3;
        if (!"pulse.practicePulse".equals(str)) {
            k0Var = k0Var;
            str2 = strE;
            Object obj14 = "cmn";
            String str35 = "delta_data";
            String str36 = "Item";
            String str37 = "item_id";
            if ("pulse.pulseCollect".equals(str)) {
                int iR3 = r(mapW0.get("pulse_value"), 0);
                if (iR3 > 0) {
                    mapA = a(iR3, mapW0);
                    mapW0.put("pulse_value", 0);
                }
                linkedHashMapS2 = s();
                o(linkedHashMapS2, mapW0);
                if (mapA == null) {
                    listAsList = new ArrayList();
                } else {
                    int iR4 = r(mapA.get("item_type"), 1);
                    listAsList = Arrays.asList(p5.z0("pk_id", mapA.get("pk_id"), "id", mapA.get("id"), "item_id", mapA.get("item_id"), "num", Integer.valueOf(iR3), "item_num", Integer.valueOf(iR3), "item_type", Integer.valueOf(iR4), "type", Integer.valueOf(y2.s(iR4))));
                }
                linkedHashMapS2.put("add_list", listAsList);
                linkedHashMapS2.put("reward_list", listAsList);
                if (mapA != null) {
                    linkedHashMapS2.put("delta_data", f("Item", mapW0));
                }
                d1VarK = k0Var.k();
                obj11 = obj14;
            } else {
                u0Var = this;
                Object obj15 = obj14;
                if ("meridian.light".equals(str) || "meridian.multiLight".equals(str)) {
                    boolean zEquals = "meridian.multiLight".equals(str);
                    String[] strArr = {"user_general_id", "general_pk_id", "pk_id"};
                    String str38 = "";
                    if (map == null) {
                        str3 = "general_pk_id";
                    } else {
                        str3 = "general_pk_id";
                        int i13 = 0;
                        while (true) {
                            if (i13 < i12) {
                                String str39 = (String) map.get(strArr[i13]);
                                if (str39 != null && !str39.trim().isEmpty()) {
                                    strTrim = str39.trim();
                                    break;
                                }
                                i13++;
                                i12 = 3;
                            }
                        }
                        if (strTrim.isEmpty()) {
                            str27 = "缺少玩家武将编号";
                            str6 = str2;
                            obj10 = obj15;
                        } else {
                            int iK = k(mapW0);
                            str4 = "MeridianTop";
                            it = w1.f0("MeridianTop", mapW0).iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    z = false;
                                    break;
                                }
                                if (c.a.B((Map) it.next(), "user_general_id", "", strTrim)) {
                                    z = true;
                                    break;
                                }
                            }
                            z2 = z;
                            listF0 = w1.f0("MeridianTop", mapW0);
                            it2 = listF0.iterator();
                            while (true) {
                                str5 = "0";
                                str6 = str2;
                                str7 = "1";
                                str8 = str35;
                                str9 = "point_level";
                                str10 = str37;
                                str11 = str36;
                                str12 = "top_level";
                                z3 = zEquals;
                                if (it2.hasNext()) {
                                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                                    c.a.x("MeridianTop", mapW0, linkedHashMap, "pk_id", "user_general_id", strTrim);
                                    LinkedHashMap linkedHashMap2 = linkedHashMap;
                                    linkedHashMap2.put("top_level", "1");
                                    linkedHashMap2.put("meridian_level", "1");
                                    l.b(linkedHashMap2, "point_level", "0", 0, "item_num");
                                    listF0.add(linkedHashMap2);
                                    obj = "upd";
                                    obj2 = "add";
                                    str13 = "del";
                                    str4 = "MeridianTop";
                                    mapW0.put(str4, p5.z0(str13, new ArrayList(), obj, Arrays.asList(linkedHashMap2), obj2, listF0));
                                    map2 = linkedHashMap2;
                                    break;
                                }
                                it8 = it2;
                                map6 = (Map) it2.next();
                                if (c.a.B(map6, "user_general_id", "", strTrim)) {
                                    obj = "upd";
                                    obj2 = "add";
                                    str13 = "del";
                                    map2 = map6;
                                    break;
                                }
                                str2 = str6;
                                str35 = str8;
                                str37 = str10;
                                str36 = str11;
                                zEquals = z3;
                                it2 = it8;
                            }
                            if (z3) {
                                i2 = Integer.MAX_VALUE;
                            } else {
                                i2 = 1;
                            }
                            arrayList = new ArrayList();
                            iD = d(map2);
                            str14 = str4;
                            str15 = "id";
                            i3 = 0;
                            while (true) {
                                arrayList2 = arrayList;
                                str16 = str13;
                                str17 = "General";
                                if (i3 < i2 || i(map2)) {
                                    i4 = i3;
                                    obj3 = obj;
                                    obj4 = obj2;
                                    str18 = str38;
                                    str19 = "skill_id";
                                    str20 = "Skill";
                                    obj5 = null;
                                    break;
                                }
                                i5 = i2;
                                int iN = n(map2);
                                Object obj16 = obj;
                                if (iK - i3 < iN) {
                                    i4 = i3;
                                    obj4 = obj2;
                                    obj5 = "脉力不足";
                                    obj3 = obj16;
                                    str18 = str38;
                                    str19 = "skill_id";
                                    str20 = "Skill";
                                    break;
                                }
                                Object obj17 = obj2;
                                int iR5 = r(map2.get(str9), 0);
                                String str40 = "Skill";
                                int iR6 = r(map2.get("meridian_level"), 1);
                                String str41 = "skill_id";
                                int iR7 = r(map2.get(str12), 1);
                                if (iR5 >= 30) {
                                    i7 = 1;
                                    i6 = 1;
                                } else {
                                    i6 = iR5 + 1;
                                    i7 = 1;
                                }
                                i4 = i3;
                                int i14 = (i6 != i7 || iR5 < 30 || iR6 < 8) ? 0 : iR7 + 1;
                                if (i14 > 0) {
                                    Iterator it9 = w1.f0("General", mapW0).iterator();
                                    while (true) {
                                        if (!it9.hasNext()) {
                                            str18 = str38;
                                            iR = 0;
                                            break;
                                        }
                                        Map map7 = (Map) it9.next();
                                        str18 = str38;
                                        if (c.a.B(map7, "pk_id", str18, strTrim)) {
                                            iR = r(map7.getOrDefault("general_level", map7.getOrDefault("level", str7)), 1);
                                            break;
                                        }
                                        str38 = str18;
                                    }
                                    try {
                                        Map mapJ1 = w1.Z0().j1(i14);
                                        iR2 = mapJ1 != null ? r(mapJ1.getOrDefault("general_level", str5), 0) : 0;
                                    } catch (IllegalStateException unused) {
                                    }
                                    if (iR < iR2) {
                                        obj5 = "武将等级不足";
                                        obj3 = obj16;
                                        obj4 = obj17;
                                        str20 = str40;
                                        str19 = str41;
                                        break;
                                    }
                                } else {
                                    str18 = str38;
                                }
                                int iR8 = r(map2.get(str12), 1);
                                int iR9 = r(map2.get("meridian_level"), 1);
                                int iR10 = r(map2.get(str9), 0);
                                if (iR10 < 30) {
                                    iR10++;
                                } else if (iR9 < 8) {
                                    iR9++;
                                    iR10 = 1;
                                } else if (iR8 < 8) {
                                    iR8++;
                                    iR10 = 1;
                                    iR9 = 1;
                                }
                                map2.put(str12, String.valueOf(iR8));
                                map2.put("meridian_level", String.valueOf(iR9));
                                map2.put(str9, String.valueOf(iR10));
                                int i15 = i4 + iN;
                                int iD2 = d(map2);
                                int i16 = iD;
                                while (i16 < iD2) {
                                    i16++;
                                    try {
                                        Map mapJ2 = w1.Z0().j1(i16);
                                        if (mapJ2 != null) {
                                            str28 = str41;
                                            try {
                                                strValueOf2 = String.valueOf(mapJ2.getOrDefault(str28, str18));
                                            } catch (IllegalStateException unused2) {
                                                strValueOf2 = str18;
                                            }
                                            if (strValueOf2.isEmpty()) {
                                                mapM = p5.z0(str28, str18, new Object[0]);
                                                i8 = iD2;
                                            } else {
                                                it6 = w1.f0("General", mapW0).iterator();
                                                while (true) {
                                                    if (it6.hasNext()) {
                                                        i8 = iD2;
                                                        map4 = null;
                                                        break;
                                                    }
                                                    i8 = iD2;
                                                    map4 = (Map) it6.next();
                                                    if (c.a.B(map4, "pk_id", str18, strTrim)) {
                                                        break;
                                                    }
                                                    iD2 = i8;
                                                }
                                                if (map4 == null) {
                                                    i9 = i15;
                                                    str29 = str40;
                                                    listF3 = w1.f0(str29, mapW0);
                                                    it7 = listF3.iterator();
                                                    while (true) {
                                                        if (it7.hasNext()) {
                                                            str30 = str7;
                                                            str31 = str5;
                                                            mapM = m(strTrim, strValueOf2, mapW0);
                                                            listF3.add(mapM);
                                                            obj7 = obj16;
                                                            obj8 = obj17;
                                                            str32 = str16;
                                                            mapW0.put(str29, p5.z0(str32, new ArrayList(), obj7, new ArrayList(), obj8, listF3));
                                                            break;
                                                        }
                                                        str30 = str7;
                                                        map5 = (Map) it7.next();
                                                        str31 = str5;
                                                        str33 = str3;
                                                        if (!c.a.B(map5, str33, str18, strTrim) && c.a.B(map5, str28, str18, strValueOf2)) {
                                                            mapM = map5;
                                                            str3 = str33;
                                                            str32 = str16;
                                                            obj7 = obj16;
                                                            obj8 = obj17;
                                                            break;
                                                        }
                                                        str3 = str33;
                                                        str5 = str31;
                                                        str7 = str30;
                                                    }
                                                } else {
                                                    mapM = p5.z0(str28, str18, new Object[0]);
                                                }
                                                arrayList2.add(mapM);
                                                arrayList2 = arrayList2;
                                                str16 = str32;
                                                obj17 = obj8;
                                                i15 = i9;
                                                str12 = str12;
                                                str5 = str31;
                                                str7 = str30;
                                                str40 = str29;
                                                obj16 = obj7;
                                                iD2 = i8;
                                                str9 = str9;
                                                str41 = str28;
                                            }
                                            i9 = i15;
                                            str30 = str7;
                                            str29 = str40;
                                            str31 = str5;
                                            str33 = str3;
                                            str3 = str33;
                                            str32 = str16;
                                            obj7 = obj16;
                                            obj8 = obj17;
                                            break;
                                            arrayList2.add(mapM);
                                            arrayList2 = arrayList2;
                                            str16 = str32;
                                            obj17 = obj8;
                                            i15 = i9;
                                            str12 = str12;
                                            str5 = str31;
                                            str7 = str30;
                                            str40 = str29;
                                            obj16 = obj7;
                                            iD2 = i8;
                                            str9 = str9;
                                            str41 = str28;
                                        } else {
                                            str28 = str41;
                                        }
                                    } catch (IllegalStateException unused3) {
                                    }
                                    strValueOf2 = str18;
                                    if (strValueOf2.isEmpty()) {
                                        mapM = p5.z0(str28, str18, new Object[0]);
                                        i8 = iD2;
                                    } else {
                                        it6 = w1.f0("General", mapW0).iterator();
                                        while (true) {
                                            if (it6.hasNext()) {
                                                i8 = iD2;
                                                map4 = null;
                                                break;
                                            }
                                            i8 = iD2;
                                            map4 = (Map) it6.next();
                                            if (c.a.B(map4, "pk_id", str18, strTrim)) {
                                                break;
                                                break;
                                            }
                                            iD2 = i8;
                                        }
                                        if (map4 == null) {
                                            i9 = i15;
                                            str29 = str40;
                                            listF3 = w1.f0(str29, mapW0);
                                            it7 = listF3.iterator();
                                            while (true) {
                                                if (it7.hasNext()) {
                                                    str30 = str7;
                                                    str31 = str5;
                                                    mapM = m(strTrim, strValueOf2, mapW0);
                                                    listF3.add(mapM);
                                                    obj7 = obj16;
                                                    obj8 = obj17;
                                                    str32 = str16;
                                                    mapW0.put(str29, p5.z0(str32, new ArrayList(), obj7, new ArrayList(), obj8, listF3));
                                                    break;
                                                    break;
                                                }
                                                str30 = str7;
                                                map5 = (Map) it7.next();
                                                str31 = str5;
                                                str33 = str3;
                                                if (!c.a.B(map5, str33, str18, strTrim)) {
                                                }
                                                str3 = str33;
                                                str5 = str31;
                                                str7 = str30;
                                            }
                                        } else {
                                            mapM = p5.z0(str28, str18, new Object[0]);
                                        }
                                        arrayList2.add(mapM);
                                        arrayList2 = arrayList2;
                                        str16 = str32;
                                        obj17 = obj8;
                                        i15 = i9;
                                        str12 = str12;
                                        str5 = str31;
                                        str7 = str30;
                                        str40 = str29;
                                        obj16 = obj7;
                                        iD2 = i8;
                                        str9 = str9;
                                        str41 = str28;
                                    }
                                    i9 = i15;
                                    str30 = str7;
                                    str29 = str40;
                                    str31 = str5;
                                    str33 = str3;
                                    str3 = str33;
                                    str32 = str16;
                                    obj7 = obj16;
                                    obj8 = obj17;
                                    break;
                                    arrayList2.add(mapM);
                                    arrayList2 = arrayList2;
                                    str16 = str32;
                                    obj17 = obj8;
                                    i15 = i9;
                                    str12 = str12;
                                    str5 = str31;
                                    str7 = str30;
                                    str40 = str29;
                                    obj16 = obj7;
                                    iD2 = i8;
                                    str9 = str9;
                                    str41 = str28;
                                }
                                int i17 = i15;
                                String str42 = str7;
                                String str43 = str5;
                                String str44 = str9;
                                String str45 = str16;
                                Object obj18 = obj16;
                                ArrayList arrayList7 = arrayList2;
                                String str46 = str12;
                                Object obj19 = obj17;
                                try {
                                    w1VarZ0 = w1.Z0();
                                } catch (IllegalStateException unused4) {
                                    w1VarZ0 = null;
                                }
                                p(w1VarZ0, map2);
                                arrayList = arrayList7;
                                str13 = str45;
                                obj2 = obj19;
                                i3 = i17;
                                str12 = str46;
                                str5 = str43;
                                str7 = str42;
                                iD = i16;
                                str38 = str18;
                                i2 = i5;
                                obj = obj18;
                                str9 = str44;
                            }
                            if (i4 <= 0) {
                                if (!z2) {
                                    listF2 = w1.f0(str14, mapW0);
                                    if (listF2.remove(map2) && listF2.isEmpty()) {
                                        mapW0.remove(str14);
                                    }
                                }
                                if (obj5 == null && "武将等级不足".equals(obj5)) {
                                    str27 = "武将等级不足，无法点亮下一层经脉";
                                    obj10 = obj15;
                                } else {
                                    linkedHashMapS = g(i(map2) ? "经脉已满" : "脉力不足");
                                    obj9 = obj15;
                                }
                            } else {
                                listF1 = w1.f0(str11, mapW0);
                                it3 = new ArrayList(listF1).iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        str21 = str20;
                                        str22 = str17;
                                        str23 = str19;
                                        obj6 = "item_num";
                                        break;
                                    }
                                    it5 = it3;
                                    map3 = (Map) it3.next();
                                    str22 = str17;
                                    str21 = str20;
                                    str23 = str19;
                                    str25 = str10;
                                    str26 = str15;
                                    if (!c.a.C(map3, str26, str18, str25, "600095")) {
                                        obj6 = "item_num";
                                        iMax = Math.max(0, r(map3.getOrDefault("num", map3.getOrDefault(obj6, 0)), 0) - i4);
                                        map3.put("num", Integer.valueOf(iMax));
                                        map3.put(obj6, Integer.valueOf(iMax));
                                        arrayList5 = new ArrayList();
                                        arrayList6 = new ArrayList();
                                        if (iMax <= 0) {
                                            strValueOf = String.valueOf(map3.getOrDefault("pk_id", str18));
                                            if (!strValueOf.isEmpty()) {
                                                arrayList5.add(strValueOf);
                                            }
                                            listF1.remove(map3);
                                        } else {
                                            arrayList6.add(map3);
                                        }
                                        mapW0.put(str11, p5.z0(str16, arrayList5, obj3, arrayList6, obj4, listF1));
                                        break;
                                    }
                                    it3 = it5;
                                    str10 = str25;
                                    str15 = str26;
                                    str17 = str22;
                                    str20 = str21;
                                    str19 = str23;
                                }
                                map2.put(obj6, Integer.valueOf(l(map2)));
                                mapW0.put(str14, p5.z0(str16, new ArrayList(), obj3, Arrays.asList(map2), obj4, w1.f0(str14, mapW0)));
                                try {
                                    w1.Z0().F2(strTrim, mapW0);
                                } catch (IllegalStateException unused5) {
                                }
                                linkedHashMapS = s();
                                linkedHashMapS.put("meridian_info", map2);
                                linkedHashMapS.put(obj6, map2.get(obj6));
                                if (!arrayList2.isEmpty()) {
                                    arrayList4 = new ArrayList();
                                    it4 = arrayList2.iterator();
                                    while (it4.hasNext()) {
                                        String str47 = str23;
                                        arrayList4.add(p5.z0(str47, ((Map) it4.next()).get(str47), new Object[0]));
                                    }
                                    linkedHashMapS.put("meridian_skill_list", arrayList4);
                                }
                                LinkedHashMap linkedHashMapF = f(str11, mapW0);
                                LinkedHashMap linkedHashMapF2 = f(str14, mapW0);
                                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                linkedHashMap3.putAll(linkedHashMapF);
                                linkedHashMap3.putAll(linkedHashMapF2);
                                LinkedHashMap linkedHashMapF3 = f(str21, mapW0);
                                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                                linkedHashMap4.putAll(linkedHashMap3);
                                linkedHashMap4.putAll(linkedHashMapF3);
                                arrayList3 = new ArrayList();
                                if (!strTrim.isEmpty()) {
                                    str24 = str22;
                                    for (Map map8 : w1.f0(str24, mapW0)) {
                                        if (c.a.B(map8, "pk_id", str18, strTrim)) {
                                            arrayList3.add(map8);
                                            break;
                                        }
                                    }
                                } else {
                                    str24 = str22;
                                }
                                LinkedHashMap linkedHashMapZ0 = p5.z0(str24, p5.z0(str16, new ArrayList(), obj3, arrayList3, obj4, new ArrayList()), "TeamGeneral", p5.z0(str16, new ArrayList(), obj3, p5.c0(w1.f0("TeamGeneral", mapW0), mapW0), obj4, new ArrayList()));
                                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                linkedHashMap5.putAll(linkedHashMap4);
                                linkedHashMap5.putAll(linkedHashMapZ0);
                                linkedHashMapS.put(str8, linkedHashMap5);
                                obj9 = obj15;
                            }
                            linkedHashMapS2 = linkedHashMapS;
                            String str48 = str6;
                            k0Var.k().T0(str48, mapW0);
                            linkedHashMapS2.put(obj9, c(str48, e(linkedHashMapS2, mapW0), mapW0));
                        }
                        linkedHashMapS = g(str27);
                        obj9 = obj10;
                        linkedHashMapS2 = linkedHashMapS;
                        String str49 = str6;
                        k0Var.k().T0(str49, mapW0);
                        linkedHashMapS2.put(obj9, c(str49, e(linkedHashMapS2, mapW0), mapW0));
                    }
                    strTrim = "";
                    if (strTrim.isEmpty()) {
                        str27 = "缺少玩家武将编号";
                        str6 = str2;
                        obj10 = obj15;
                    } else {
                        int iK2 = k(mapW0);
                        str4 = "MeridianTop";
                        it = w1.f0("MeridianTop", mapW0).iterator();
                        while (true) {
                            if (it.hasNext()) {
                                z = false;
                                break;
                            }
                            if (c.a.B((Map) it.next(), "user_general_id", "", strTrim)) {
                                z = true;
                                break;
                            }
                        }
                        z2 = z;
                        listF0 = w1.f0("MeridianTop", mapW0);
                        it2 = listF0.iterator();
                        while (true) {
                            str5 = "0";
                            str6 = str2;
                            str7 = "1";
                            str8 = str35;
                            str9 = "point_level";
                            str10 = str37;
                            str11 = str36;
                            str12 = "top_level";
                            z3 = zEquals;
                            if (it2.hasNext()) {
                                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                                c.a.x("MeridianTop", mapW0, linkedHashMap6, "pk_id", "user_general_id", strTrim);
                                LinkedHashMap linkedHashMap7 = linkedHashMap6;
                                linkedHashMap7.put("top_level", "1");
                                linkedHashMap7.put("meridian_level", "1");
                                l.b(linkedHashMap7, "point_level", "0", 0, "item_num");
                                listF0.add(linkedHashMap7);
                                obj = "upd";
                                obj2 = "add";
                                str13 = "del";
                                str4 = "MeridianTop";
                                mapW0.put(str4, p5.z0(str13, new ArrayList(), obj, Arrays.asList(linkedHashMap7), obj2, listF0));
                                map2 = linkedHashMap7;
                                break;
                            }
                            it8 = it2;
                            map6 = (Map) it2.next();
                            if (c.a.B(map6, "user_general_id", "", strTrim)) {
                                obj = "upd";
                                obj2 = "add";
                                str13 = "del";
                                map2 = map6;
                                break;
                            }
                            str2 = str6;
                            str35 = str8;
                            str37 = str10;
                            str36 = str11;
                            zEquals = z3;
                            it2 = it8;
                        }
                        if (z3) {
                            i2 = Integer.MAX_VALUE;
                        } else {
                            i2 = 1;
                        }
                        arrayList = new ArrayList();
                        iD = d(map2);
                        str14 = str4;
                        str15 = "id";
                        i3 = 0;
                        while (true) {
                            arrayList2 = arrayList;
                            str16 = str13;
                            str17 = "General";
                            if (i3 < i2) {
                            }
                            i4 = i3;
                            obj3 = obj;
                            obj4 = obj2;
                            str18 = str38;
                            str19 = "skill_id";
                            str20 = "Skill";
                            obj5 = null;
                            p(w1VarZ0, map2);
                            arrayList = arrayList7;
                            str13 = str45;
                            obj2 = obj19;
                            i3 = i17;
                            str12 = str46;
                            str5 = str43;
                            str7 = str42;
                            iD = i16;
                            str38 = str18;
                            i2 = i5;
                            obj = obj18;
                            str9 = str44;
                        }
                        if (i4 <= 0) {
                            if (!z2) {
                                listF2 = w1.f0(str14, mapW0);
                                if (listF2.remove(map2)) {
                                    mapW0.remove(str14);
                                }
                            }
                            if (obj5 == null) {
                            }
                            linkedHashMapS = g(i(map2) ? "经脉已满" : "脉力不足");
                            obj9 = obj15;
                        } else {
                            listF1 = w1.f0(str11, mapW0);
                            it3 = new ArrayList(listF1).iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    str21 = str20;
                                    str22 = str17;
                                    str23 = str19;
                                    obj6 = "item_num";
                                    break;
                                }
                                it5 = it3;
                                map3 = (Map) it3.next();
                                str22 = str17;
                                str21 = str20;
                                str23 = str19;
                                str25 = str10;
                                str26 = str15;
                                if (!c.a.C(map3, str26, str18, str25, "600095")) {
                                    obj6 = "item_num";
                                    iMax = Math.max(0, r(map3.getOrDefault("num", map3.getOrDefault(obj6, 0)), 0) - i4);
                                    map3.put("num", Integer.valueOf(iMax));
                                    map3.put(obj6, Integer.valueOf(iMax));
                                    arrayList5 = new ArrayList();
                                    arrayList6 = new ArrayList();
                                    if (iMax <= 0) {
                                        strValueOf = String.valueOf(map3.getOrDefault("pk_id", str18));
                                        if (!strValueOf.isEmpty()) {
                                            arrayList5.add(strValueOf);
                                        }
                                        listF1.remove(map3);
                                    } else {
                                        arrayList6.add(map3);
                                    }
                                    mapW0.put(str11, p5.z0(str16, arrayList5, obj3, arrayList6, obj4, listF1));
                                    break;
                                }
                                it3 = it5;
                                str10 = str25;
                                str15 = str26;
                                str17 = str22;
                                str20 = str21;
                                str19 = str23;
                            }
                            map2.put(obj6, Integer.valueOf(l(map2)));
                            mapW0.put(str14, p5.z0(str16, new ArrayList(), obj3, Arrays.asList(map2), obj4, w1.f0(str14, mapW0)));
                            w1.Z0().F2(strTrim, mapW0);
                            linkedHashMapS = s();
                            linkedHashMapS.put("meridian_info", map2);
                            linkedHashMapS.put(obj6, map2.get(obj6));
                            if (!arrayList2.isEmpty()) {
                                arrayList4 = new ArrayList();
                                it4 = arrayList2.iterator();
                                while (it4.hasNext()) {
                                    String str410 = str23;
                                    arrayList4.add(p5.z0(str410, ((Map) it4.next()).get(str410), new Object[0]));
                                }
                                linkedHashMapS.put("meridian_skill_list", arrayList4);
                            }
                            LinkedHashMap linkedHashMapF4 = f(str11, mapW0);
                            LinkedHashMap linkedHashMapF5 = f(str14, mapW0);
                            LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                            linkedHashMap8.putAll(linkedHashMapF4);
                            linkedHashMap8.putAll(linkedHashMapF5);
                            LinkedHashMap linkedHashMapF6 = f(str21, mapW0);
                            LinkedHashMap linkedHashMap9 = new LinkedHashMap();
                            linkedHashMap9.putAll(linkedHashMap8);
                            linkedHashMap9.putAll(linkedHashMapF6);
                            arrayList3 = new ArrayList();
                            if (!strTrim.isEmpty()) {
                                str24 = str22;
                                while (r9.hasNext()) {
                                    if (c.a.B(map8, "pk_id", str18, strTrim)) {
                                        arrayList3.add(map8);
                                        break;
                                    }
                                }
                            } else {
                                str24 = str22;
                            }
                            LinkedHashMap linkedHashMapZ1 = p5.z0(str24, p5.z0(str16, new ArrayList(), obj3, arrayList3, obj4, new ArrayList()), "TeamGeneral", p5.z0(str16, new ArrayList(), obj3, p5.c0(w1.f0("TeamGeneral", mapW0), mapW0), obj4, new ArrayList()));
                            LinkedHashMap linkedHashMap10 = new LinkedHashMap();
                            linkedHashMap10.putAll(linkedHashMap9);
                            linkedHashMap10.putAll(linkedHashMapZ1);
                            linkedHashMapS.put(str8, linkedHashMap10);
                            obj9 = obj15;
                        }
                        linkedHashMapS2 = linkedHashMapS;
                        String str411 = str6;
                        k0Var.k().T0(str411, mapW0);
                        linkedHashMapS2.put(obj9, c(str411, e(linkedHashMapS2, mapW0), mapW0));
                    }
                    linkedHashMapS = g(str27);
                    obj9 = obj10;
                    linkedHashMapS2 = linkedHashMapS;
                    String str412 = str6;
                    k0Var.k().T0(str412, mapW0);
                    linkedHashMapS2.put(obj9, c(str412, e(linkedHashMapS2, mapW0), mapW0));
                } else {
                    boolean z4 = b(mapW0) || q(mapW0);
                    q(mapW0);
                    b(mapW0);
                    linkedHashMapS2 = s();
                    o(linkedHashMapS2, mapW0);
                    linkedHashMapS2.put(obj15, u0Var.c(str2, mapW0, mapW0));
                    if (z4) {
                        k0Var.k().T0(str2, mapW0);
                    }
                }
            }
            return k0Var.n(p5.s1(linkedHashMapS2));
        }
        int iA = p5.A(e0Var != null ? ((k0) e0Var).f901a : null);
        int i18 = 5;
        if (iA >= 5) {
            iArr = f1003f;
        } else if (iA >= 3) {
            iArr = f1002e;
        } else {
            iArr = iA >= 1 ? f1001d : f1000c;
        }
        int iMax2 = Math.max(0, Math.min(999, ThreadLocalRandom.current().nextInt(1000)));
        int i19 = 0;
        int i20 = 0;
        while (true) {
            int length = iArr.length;
            int[] iArr2 = f999b;
            if (i19 >= length) {
                i10 = iArr2[4];
                break;
            }
            i20 += iArr[i19];
            if (iMax2 < i20) {
                i10 = iArr2[i19];
                break;
            }
            i19++;
        }
        q(mapW0);
        int iR11 = r(mapW0.get("pulse_count"), 5);
        int iMax3 = Math.max(1, Math.min(5, r(mapW0.get("pulse_slot"), 1)));
        if (iR11 <= 0) {
            str34 = "练脉次数不足";
            obj13 = "cmn";
        } else {
            Object obj20 = "cmn";
            int i21 = new int[]{0, 50, 50, 80, 160}[Math.max(1, Math.min(5, iMax3)) - 1];
            int iR12 = r(mapW0.get("user_gold"), 0);
            if (iR12 < i21) {
                str34 = "元宝不足";
                obj13 = obj20;
            } else {
                int iMax4 = 1;
                if (iMax3 == 1) {
                    i11 = 8;
                } else {
                    iMax4 = Math.max(1, i10);
                    i18 = 5;
                    i11 = new int[]{8, 20, 38, 65, 106}[Math.max(1, Math.min(5, iMax3)) - 1] * iMax4;
                }
                mapW0.put("pulse_slot", Integer.valueOf(iMax3 >= i18 ? 1 : iMax3 + 1));
                if (iMax3 >= i18) {
                    mapW0.put("pulse_count", Integer.valueOf(iR11 - 1));
                }
                if (i21 > 0) {
                    mapW0.put("user_gold", Integer.valueOf(iR12 - i21));
                }
                b(mapW0);
                Map mapA2 = a(i11, mapW0);
                mapW0.put("pulse_value", 0);
                t(mapW0);
                LinkedHashMap linkedHashMapS3 = s();
                o(linkedHashMapS3, mapW0);
                linkedHashMapS3.put("pulse_multiple", String.valueOf(iMax4));
                linkedHashMapS3.put("consume_gold", Integer.valueOf(i21));
                linkedHashMapS3.put("user_gold", mapW0.getOrDefault("user_gold", Integer.valueOf(iR12)));
                linkedHashMapS3.put("pulse_value", String.valueOf(i11));
                linkedHashMapS3.put("pulse_item_pk", mapA2.get("pk_id"));
                linkedHashMapS2 = linkedHashMapS3;
                obj12 = obj20;
            }
            d1VarK = k0Var.k();
            str2 = strE;
            obj11 = obj12;
        }
        linkedHashMapS2 = g(str34);
        o(linkedHashMapS2, mapW0);
        k0Var = k0Var;
        strE = strE;
        obj12 = obj13;
        d1VarK = k0Var.k();
        str2 = strE;
        obj11 = obj12;
        d1VarK.T0(str2, mapW0);
        u0Var = this;
        linkedHashMapS2.put(obj11, u0Var.c(str2, e(linkedHashMapS2, mapW0), mapW0));
        return k0Var.n(p5.s1(linkedHashMapS2));
    }
}
