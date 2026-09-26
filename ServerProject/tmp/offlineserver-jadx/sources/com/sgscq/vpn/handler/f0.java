package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
import com.sgscq.vpn.e5;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class f0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f826b = {0, 50, 225, 1000};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f827a;

    public f0(k0 k0Var) {
        this.f827a = k0Var;
    }

    public static List a(Map map) {
        if (map == null) {
            return new ArrayList();
        }
        Object obj = map.get("bore_list");
        return obj instanceof List ? (List) obj : c.a.o(map, "bore_list");
    }

    public static void b(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            map2.put("del", new ArrayList());
            map2.put("upd", new ArrayList());
        }
    }

    public static int c(String str, Map map) {
        List listF0 = w1.f0("Item", map);
        for (Map map2 : new ArrayList(listF0)) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iN = n(map2.get("item_num"), n(map2.get("num"), 0));
                if (iN < 1) {
                    return 0;
                }
                int i2 = iN - 1;
                map2.put("item_num", Integer.valueOf(i2));
                map2.put("num", Integer.valueOf(i2));
                map2.put("total_num", Integer.valueOf(i2));
                List listL = l(d("Item", map));
                ArrayList arrayList = new ArrayList();
                if (i2 <= 0) {
                    listF0.remove(map2);
                    String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
                    if (!strValueOf.isEmpty() && !listL.contains(strValueOf)) {
                        listL.add(strValueOf);
                    }
                } else {
                    arrayList.add(map2);
                }
                map.put("Item", p5.z0("del", listL, "upd", arrayList, "add", listF0));
                return 1;
            }
        }
        return 0;
    }

    public static Map d(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        LinkedHashMap linkedHashMapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
        map.put(str, linkedHashMapZ0);
        return linkedHashMapZ0;
    }

    public static LinkedHashMap e(String str, int i2) {
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", Boolean.FALSE, "msg", str, "error_code", Integer.valueOf(i2));
        linkedHashMapZ0.put("cmn_modules", "");
        return linkedHashMapZ0;
    }

    public static Map f(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("Equipment", map)) {
            if (c.a.A(map2, "pk_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static Map g(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("Equipment", map)) {
            if (i(str, map2) != null) {
                return map2;
            }
        }
        return null;
    }

    public static Map h(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("Gems", map)) {
            if (c.a.A(map2, "pk_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static Map i(String str, Map map) {
        if (map != null && str != null && !str.isEmpty()) {
            for (Map map2 : a(map)) {
                if (c.a.A(map2, "bore_id", str)) {
                    return map2;
                }
            }
        }
        return null;
    }

    public static String j(Map map) {
        return map == null ? "" : c.a.j(map, "id", "", "gem_id");
    }

    public static List l(Map map) {
        Object obj = map == null ? null : map.get("del");
        if (obj instanceof List) {
            return (List) obj;
        }
        ArrayList arrayList = new ArrayList();
        if (map != null) {
            map.put("del", arrayList);
        }
        return arrayList;
    }

    public static ArrayList m(Map... mapArr) {
        ArrayList arrayList = new ArrayList();
        if (mapArr == null) {
            return arrayList;
        }
        for (Map map : mapArr) {
            if (map != null && !arrayList.contains(map)) {
                arrayList.add(map);
            }
        }
        return arrayList;
    }

    public static int n(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static LinkedHashMap o(Map map, String str, Map... mapArr) {
        Map map2;
        ArrayList arrayList = new ArrayList();
        w1 w1VarA1 = w1.a1(null);
        for (Map map3 : mapArr) {
            String str2 = "";
            if (map3 != null) {
                Object obj = map3.get("general_pk_id");
                if (obj == null || String.valueOf(obj).isEmpty() || "0".equals(String.valueOf(obj))) {
                    obj = map3.get("user_general_id");
                }
                if (obj == null || String.valueOf(obj).isEmpty() || "0".equals(String.valueOf(obj))) {
                    obj = map3.get("general_id");
                }
                String strValueOf = obj == null ? "" : String.valueOf(obj);
                if (!"null".equalsIgnoreCase(strValueOf) && !"0".equals(strValueOf)) {
                    str2 = strValueOf;
                }
            }
            if (!str2.isEmpty()) {
                w1VarA1.F2(str2, map);
                if (str2.isEmpty()) {
                    map2 = null;
                    break;
                }
                Iterator it = w1.f0("General", map).iterator();
                do {
                    if (!it.hasNext()) {
                        map2 = null;
                        break;
                    }
                    map2 = (Map) it.next();
                } while (!c.a.A(map2, "pk_id", str2));
                if (map2 != null && !arrayList.contains(map2)) {
                    arrayList.add(map2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return p(str);
        }
        map.put("General", p5.z0("del", new ArrayList(), "upd", arrayList, "add", w1.f0("General", map)));
        w1.H2(map);
        return p(str.concat(",General,TeamGeneral"));
    }

    public static LinkedHashMap p(String str) {
        Boolean bool = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0);
        linkedHashMapZ0.put("return_info", p5.z0("result", bool, new Object[0]));
        linkedHashMapZ0.put("cmn_modules", str);
        return linkedHashMapZ0;
    }

    public static void q(Map map, Map... mapArr) {
        map.put("Equipment", p5.z0("del", new ArrayList(), "upd", m(mapArr), "add", w1.f0("Equipment", map)));
    }

    public static void r(Map map, Map... mapArr) {
        map.put("Gems", p5.z0("del", l(d("Gems", map)), "upd", m(mapArr), "add", w1.f0("Gems", map)));
    }

    /* JADX WARN: Code duplicated, block: B:151:0x03de  */
    /* JADX WARN: Code duplicated, block: B:254:0x06e4  */
    public final byte[] k(String str, Map map) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int iN;
        int i2;
        Map map2;
        LinkedHashMap linkedHashMapE;
        String str7;
        String str8;
        char c2;
        int i3;
        String str9;
        int iN2;
        int i4;
        Map mapH;
        String str10;
        int i5;
        String strTrim;
        if (!("gem.lock".equals(str) || "gem.unlock".equals(str) || "gem.chgProperty".equals(str) || "gem.gemInset".equals(str) || "gem.gemRemove".equals(str) || "gem.gemInherit".equals(str) || "gem.bore".equals(str) || "gem.gemCompose".equals(str))) {
            return null;
        }
        k0 k0Var = this.f827a;
        String strE = k0Var.e(map);
        h5 h5Var = k0Var.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map3 = mapW0;
        String str11 = "Gems";
        String str12 = "";
        if (!"gem.lock".equals(str)) {
            if ("gem.unlock".equals(str)) {
                String str13 = (String) map.getOrDefault("bore_id", "");
                Map mapG = g(str13, map3);
                Map mapI = i(str13, mapG);
                if (mapI != null) {
                    mapI.put("is_lock", 0);
                }
                q(map3, mapG);
                linkedHashMapE = p("Equipment");
            } else {
                str2 = "gem.chgProperty";
                if ("gem.chgProperty".equals(str)) {
                    Map mapF = f((String) map.getOrDefault("user_equipment_id", (String) map.getOrDefault("equipment_id", "")), map3);
                    if (mapF != null) {
                        Iterator it = a(mapF).iterator();
                        int i6 = 0;
                        while (it.hasNext()) {
                            if (n(((Map) it.next()).get("is_lock"), 0) == 1) {
                                i6++;
                            }
                        }
                        int i7 = i6 < 4 ? f826b[i6] : 0;
                        if (i7 > 0 && n(map3.get("user_gold"), 0) < i7) {
                            str10 = "元宝不足";
                        } else if (c("600077", map3) <= 0) {
                            str10 = "缺少洗炼石";
                        } else {
                            if (i7 > 0) {
                                map3.put("user_gold", Integer.valueOf(n(map3.get("user_gold"), 0) - i7));
                            }
                            for (Map map4 : a(mapF)) {
                                if (n(map4.get("is_lock"), 0) != 1) {
                                    map4.put("bore_type", Integer.valueOf(ThreadLocalRandom.current().nextInt(1, 5)));
                                }
                            }
                            q(map3, mapF);
                            linkedHashMapE = p("Equipment,Item");
                        }
                        linkedHashMapE = e(str10, 1);
                    } else {
                        q(map3, mapF);
                        linkedHashMapE = p("Equipment,Item");
                    }
                    str5 = "Equipment";
                    str3 = "user_gold";
                    str11 = str11;
                } else {
                    str3 = "user_gold";
                    if ("gem.gemInset".equals(str)) {
                        String str14 = (String) map.getOrDefault("bore_id", "");
                        String str15 = (String) map.getOrDefault("user_gem_id", "");
                        Map mapG2 = g(str14, map3);
                        Map mapI2 = i(str14, mapG2);
                        Map mapH2 = h(str15, map3);
                        if (mapI2 == null || mapH2 == null) {
                            str4 = "Equipment";
                            i3 = 1;
                            str9 = "宝石镶嵌参数无效";
                        } else {
                            int iN3 = n(mapI2.get("bore_type"), 0);
                            str4 = "Equipment";
                            Map mapI0 = w1.a1(null).I0(j(mapH2));
                            if (mapI0 == null) {
                                i4 = 0;
                                iN2 = 0;
                            } else {
                                iN2 = n(mapI0.get("type"), 0);
                                i4 = 0;
                            }
                            if (iN2 <= 0) {
                                iN2 = n(mapH2.get("type"), i4);
                            }
                            if (iN3 <= 0 || iN2 <= 0 || iN3 != iN2) {
                                i3 = 1;
                                str9 = "宝石属性与孔位不匹配";
                            } else {
                                String strValueOf = String.valueOf(mapI2.getOrDefault("user_gem_id", ""));
                                if (str15.equals(strValueOf)) {
                                    Map[] mapArr = new Map[1];
                                    mapArr[i4] = mapG2;
                                    linkedHashMapE = o(map3, "Equipment,Gems", mapArr);
                                } else if (n(mapH2.get("total_num"), i4) - n(mapH2.get("used_num"), i4) <= 0) {
                                    linkedHashMapE = e("宝石数量不足", 7007);
                                } else {
                                    if (strValueOf.isEmpty() || "0".equals(strValueOf)) {
                                        mapH = null;
                                    } else {
                                        mapH = h(strValueOf, map3);
                                        if (mapH != null) {
                                            mapH.put("used_num", Integer.valueOf(Math.max(0, n(mapH.get("used_num"), 0) - 1)));
                                        }
                                    }
                                    mapI2.put("user_gem_id", str15);
                                    mapI2.put("gem_id", j(mapH2));
                                    mapH2.put("used_num", Integer.valueOf(n(mapH2.get("used_num"), 0) + 1));
                                    q(map3, mapG2);
                                    r(map3, mapH, mapH2);
                                    linkedHashMapE = o(map3, "Equipment,Gems", mapG2);
                                }
                            }
                        }
                        linkedHashMapE = e(str9, i3);
                    } else {
                        str4 = "Equipment";
                        if ("gem.gemRemove".equals(str)) {
                            String str16 = (String) map.getOrDefault("bore_id", "");
                            String strValueOf2 = (String) map.getOrDefault("user_gem_id", "");
                            Map mapG3 = g(str16, map3);
                            Map mapI3 = i(str16, mapG3);
                            if ((strValueOf2 == null || strValueOf2.isEmpty()) && mapI3 != null) {
                                strValueOf2 = String.valueOf(mapI3.getOrDefault("user_gem_id", ""));
                            }
                            Map mapH3 = h(strValueOf2, map3);
                            if (mapI3 != null) {
                                mapI3.put("user_gem_id", "");
                                mapI3.put("gem_id", "");
                            }
                            if (mapH3 == null) {
                                c2 = 0;
                            } else {
                                mapH3.put("used_num", Integer.valueOf(Math.max(0, n(mapH3.get("used_num"), 0) - 1)));
                                c2 = 0;
                            }
                            Map[] mapArr2 = new Map[1];
                            mapArr2[c2] = mapG3;
                            q(map3, mapArr2);
                            Map[] mapArr3 = new Map[1];
                            mapArr3[c2] = mapH3;
                            r(map3, mapArr3);
                            Map[] mapArr4 = new Map[1];
                            mapArr4[c2] = mapG3;
                            linkedHashMapE = o(map3, "Equipment,Gems", mapArr4);
                        } else {
                            if ("gem.gemInherit".equals(str)) {
                                String str17 = (String) map.getOrDefault("to_equipment_id", "");
                                String str18 = (String) map.getOrDefault("from_equipment_id", "");
                                if (str17 == null || str17.isEmpty() || str18 == null || str18.isEmpty() || str17.equals(str18)) {
                                    str5 = str4;
                                    linkedHashMapE = e("装备继承参数无效", 1);
                                } else {
                                    Map mapF2 = f(str17, map3);
                                    Map mapF3 = f(str18, map3);
                                    if (mapF2 == null || mapF3 == null || mapF2 == mapF3) {
                                        str5 = str4;
                                        linkedHashMapE = e("装备继承参数无效", 1);
                                    } else {
                                        List listA = a(mapF3);
                                        ArrayList arrayList = new ArrayList();
                                        Iterator it2 = listA.iterator();
                                        while (it2.hasNext()) {
                                            arrayList.add(new LinkedHashMap((Map) it2.next()));
                                        }
                                        String strValueOf3 = String.valueOf(mapF2.getOrDefault("pk_id", str17));
                                        int i8 = 0;
                                        while (i8 < arrayList.size()) {
                                            Map map5 = (Map) arrayList.get(i8);
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(strValueOf3);
                                            sb.append("_b");
                                            i8++;
                                            sb.append(i8);
                                            map5.put("bore_id", sb.toString());
                                        }
                                        mapF2.put("bore_list", arrayList);
                                        mapF3.put("bore_list", new ArrayList());
                                        q(map3, mapF2, mapF3);
                                        Map[] mapArr5 = {mapF2, mapF3};
                                        str5 = str4;
                                        linkedHashMapE = o(map3, str5, mapArr5);
                                    }
                                }
                            } else {
                                str5 = str4;
                                if ("gem.bore".equals(str)) {
                                    String str19 = (String) map.getOrDefault("user_equipment_id", (String) map.getOrDefault("equipment_id", ""));
                                    Map mapF4 = f(str19, map3);
                                    if (mapF4 != null) {
                                        List listA2 = a(mapF4);
                                        if (listA2.size() >= 5) {
                                            str8 = "已达打孔上限";
                                        } else if (c("600076", map3) <= 0) {
                                            str8 = "缺少打孔石";
                                        } else {
                                            int size = listA2.size() + 1;
                                            listA2.add(p5.z0("bore_id", String.valueOf(mapF4.getOrDefault("pk_id", str19)) + "_b" + size, "bore_type", Integer.valueOf(((size - 1) % 4) + 1), "is_lock", 0, "user_gem_id", "", "gem_id", ""));
                                            mapF4.put("bore_list", listA2);
                                        }
                                        linkedHashMapE = e(str8, 1);
                                    }
                                    q(map3, mapF4);
                                    linkedHashMapE = p("Equipment,Item");
                                    map3 = map3;
                                    str12 = "";
                                } else {
                                    str5 = str5;
                                    map3 = map3;
                                    str11 = str11;
                                    str12 = "";
                                    e5 e5Var = new e5(this, 2);
                                    String str20 = map == null ? str12 : (String) map.getOrDefault("user_gem_id", str12);
                                    int iN4 = n(map == null ? null : map.get("multi"), 0);
                                    Map mapH4 = h(str20, map3);
                                    String str21 = map == null ? str12 : (String) map.getOrDefault("type", str12);
                                    if (str21 == null || str21.isEmpty()) {
                                        str6 = str12;
                                    } else {
                                        int iN5 = n(str21, -1);
                                        if (iN5 < 1 || iN5 > 4) {
                                            str7 = str21;
                                        } else {
                                            String strJ = j(mapH4);
                                            str7 = str21;
                                            if (strJ.matches("60[1-4]\\d{3}")) {
                                                int iN6 = n(strJ.substring(2, 3), -1);
                                                int iN7 = n(strJ.substring(4), 0);
                                                if (iN7 > 0) {
                                                    if (iN5 == iN6) {
                                                        iN7++;
                                                    }
                                                    str6 = "60" + iN5 + String.format("%03d", Integer.valueOf(iN7));
                                                }
                                            }
                                        }
                                        str6 = str7;
                                    }
                                    if (mapH4 == null || (!str6.isEmpty() && e5Var.test(str6))) {
                                        if (mapH4 == null) {
                                            i2 = 0;
                                            iN = 0;
                                        } else {
                                            iN = n(mapH4.get("total_num"), 0) - n(mapH4.get("used_num"), 0);
                                            i2 = 0;
                                        }
                                        int iMax = Math.max(i2, Math.min(iN4 > 0 ? iN / 3 : 1, iN / 3));
                                        if (mapH4 != null && iMax > 0) {
                                            mapH4.put("total_num", Integer.valueOf(n(mapH4.get("total_num"), i2) - (iMax * 3)));
                                            if (n(mapH4.get("total_num"), i2) <= 0) {
                                                String strValueOf4 = String.valueOf(mapH4.getOrDefault("pk_id", str12));
                                                if (!strValueOf4.isEmpty()) {
                                                    w1.f0(str11, map3).remove(mapH4);
                                                    List listL = l(d(str11, map3));
                                                    if (!listL.contains(strValueOf4)) {
                                                        listL.add(strValueOf4);
                                                    }
                                                }
                                                mapH4 = null;
                                            }
                                        }
                                        if (iMax > 0 && str6 != null && !str6.isEmpty()) {
                                            Iterator it3 = w1.f0(str11, map3).iterator();
                                            while (true) {
                                                if (!it3.hasNext()) {
                                                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                                                    c.a.x(str11, map3, linkedHashMap, "pk_id", "id", str6);
                                                    l.b(linkedHashMap, "gem_id", str6, iMax, "total_num");
                                                    linkedHashMap.put("used_num", 0);
                                                    linkedHashMap.put("is_new", Boolean.TRUE);
                                                    w1.f0(str11, map3).add(linkedHashMap);
                                                    map2 = linkedHashMap;
                                                    break;
                                                }
                                                Map map6 = (Map) it3.next();
                                                if (str6.equals(j(map6))) {
                                                    map6.put("total_num", Integer.valueOf(n(map6.get("total_num"), 0) + iMax));
                                                    map2 = map6;
                                                    break;
                                                }
                                            }
                                        } else {
                                            map2 = null;
                                        }
                                        ArrayList arrayList2 = new ArrayList();
                                        if (mapH4 != null) {
                                            arrayList2.add(mapH4);
                                        }
                                        if (map2 != null && map2 != mapH4) {
                                            arrayList2.add(map2);
                                        }
                                        r(map3, (Map[]) arrayList2.toArray(new Map[0]));
                                        LinkedHashMap linkedHashMapP = p(str11);
                                        if (map2 != null) {
                                            linkedHashMapP.put("add_list", Arrays.asList(p5.z0("type", 9, "id", str6, "num", Integer.valueOf(iMax))));
                                        }
                                        linkedHashMapE = linkedHashMapP;
                                    } else {
                                        linkedHashMapE = e("已达最高合成等级", 7008);
                                    }
                                }
                            }
                            str5 = str5;
                            str11 = str11;
                        }
                    }
                    str5 = str4;
                    str5 = str5;
                    str11 = str11;
                }
            }
            if (str2.equals(str) && Boolean.TRUE.equals(linkedHashMapE.get("result"))) {
                p.e("114", map3);
            }
            JSONObject jSONObjectT = k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), str3, map3), k0Var.i(k0Var.b(), "user_energy", map3), k0Var.i(k0Var.d(), "user_power", map3), k0Var.j(k0Var.a(), map3), strE, map3);
            String strValueOf5 = String.valueOf(linkedHashMapE.getOrDefault("cmn_modules", str12));
            ArrayList arrayList3 = new ArrayList();
            for (String str22 : strValueOf5.split(",")) {
                strTrim = str22.trim();
                if (strTrim.isEmpty() && !arrayList3.contains(strTrim)) {
                    arrayList3.add(strTrim);
                }
            }
            linkedHashMapE.put("cmn", p5.u1(h5Var.j(map3, jSONObjectT, (String[]) arrayList3.toArray(new String[0]))));
            b(str5, map3);
            b(str11, map3);
            b("General", map3);
            b("Item", map3);
            h5Var.S0(strE, map3);
            return k0Var.n(p5.s1(linkedHashMapE));
        }
        String str23 = (String) map.getOrDefault("bore_id", "");
        Map mapG4 = g(str23, map3);
        Map mapI4 = i(str23, mapG4);
        if (mapI4 != null) {
            mapI4.put("is_lock", 1);
        }
        q(map3, mapG4);
        linkedHashMapE = p("Equipment");
        str2 = "gem.chgProperty";
        str5 = "Equipment";
        str3 = "user_gold";
        str11 = str11;
        if (str2.equals(str)) {
            p.e("114", map3);
        }
        JSONObject jSONObjectT2 = k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), str3, map3), k0Var.i(k0Var.b(), "user_energy", map3), k0Var.i(k0Var.d(), "user_power", map3), k0Var.j(k0Var.a(), map3), strE, map3);
        String strValueOf6 = String.valueOf(linkedHashMapE.getOrDefault("cmn_modules", str12));
        ArrayList arrayList4 = new ArrayList();
        while (i5 < r7) {
            strTrim = str22.trim();
            if (strTrim.isEmpty()) {
            }
        }
        linkedHashMapE.put("cmn", p5.u1(h5Var.j(map3, jSONObjectT2, (String[]) arrayList4.toArray(new String[0]))));
        b(str5, map3);
        b(str11, map3);
        b("General", map3);
        b("Item", map3);
        h5Var.S0(strE, map3);
        return k0Var.n(p5.s1(linkedHashMapE));
    }
}
