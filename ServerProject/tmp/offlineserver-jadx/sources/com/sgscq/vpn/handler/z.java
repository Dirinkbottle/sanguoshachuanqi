package com.sgscq.vpn.handler;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.a7;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f1040a;

    public z(k0 k0Var) {
        this.f1040a = k0Var;
    }

    public static void a(ArrayList arrayList, Map map) {
        String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (c.a.B((Map) it.next(), "pk_id", "", strValueOf)) {
                return;
            }
        }
        arrayList.add(map);
    }

    public static LinkedHashMap b(Map map, Map map2) {
        int i2;
        String str;
        Map map3;
        Map mapH = h(r("evolution_id", map2), map);
        int iU = mapH == null ? Integer.MIN_VALUE : u(mapH.get("status"), 0);
        int iU2 = mapH == null ? Integer.MIN_VALUE : u(mapH.get("evolution_level"), 0);
        int iU3 = mapH != null ? u(mapH.get("sub_level"), 0) : Integer.MIN_VALUE;
        String strR = r("evolution_id", map2);
        Map mapH2 = h(strR, map);
        if (mapH2 != null) {
            map3 = mapH2;
            i2 = 1;
            str = "surrender_status";
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            i2 = 1;
            str = "surrender_status";
            c.a.x("EvolutionInfo", map, linkedHashMap, "pk_id", "evolution_id", strR);
            String strR2 = r("general_id", map2);
            c.a.z(linkedHashMap, "general_id", strR2.isEmpty() ? strR : strR2, 1, "evolution_level", 1, "sub_level");
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            c.a.z(linkedHashMap2, "fate_ids", "[]", 1, "status", 0, str);
            f(map).add(linkedHashMap2);
            map3 = linkedHashMap2;
        }
        map3.put(r15, Integer.valueOf(i2));
        int i3 = i2;
        map3.put(r13, Integer.valueOf(Math.max(i3, u(map3.get(r13), i3))));
        map3.put(r11, Integer.valueOf(Math.max(i3, u(map3.get(r11), i3))));
        String str2 = str;
        map3.put(str2, Integer.valueOf(u(map3.get(str2), 0)));
        LinkedHashMap linkedHashMapV = v();
        if (((mapH != null && iU == u(map3.get("status"), 0) && iU2 == u(map3.get("evolution_level"), 0) && iU3 == u(map3.get("sub_level"), 0)) ? 0 : i3) != 0) {
            linkedHashMapV.put("delta_data", x(map, map3));
        }
        return linkedHashMapV;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    public static ArrayList c(int i2, int i3, Map map) {
        Object obj;
        if (map == null) {
            return null;
        }
        Object obj2 = map.get(String.valueOf(i2));
        if (obj2 instanceof List) {
            List list = (List) obj2;
            if (i3 < 0 || i3 >= list.size()) {
                obj = null;
            } else {
                obj = list.get(i3);
            }
        } else if (obj2 instanceof Map) {
            obj = ((Map) obj2).get(String.valueOf(i3));
        } else {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        d(obj, arrayList);
        return arrayList;
    }

    public static void d(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                d(it.next(), arrayList);
            }
        } else if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey("value")) {
                d(map.get("value"), arrayList);
            } else if (map.containsKey("buff_type")) {
                arrayList.add(map);
            }
        }
    }

    public static LinkedHashMap e(ArrayList arrayList, Map map) {
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            y yVar = (y) it.next();
            int i2 = yVar.f1037c;
            int i3 = 8;
            if (i2 == 6) {
                str = "GeneralSoul";
            } else if (i2 == 5) {
                str = "Item";
            } else {
                str = i2 == 8 ? "EquipmentPiece" : "";
            }
            if (!str.isEmpty()) {
                ArrayList<Map> arrayListN = n(map, yVar);
                arrayListN.sort(new com.sgscq.vpn.battle.c(yVar, 2));
                int i4 = yVar.f1036b;
                for (Map map2 : arrayListN) {
                    if (i4 <= 0) {
                        break;
                    }
                    int i5 = yVar.f1037c;
                    int iT = t(i5, map2);
                    if (iT > 0) {
                        int iMin = iT - Math.min(iT, i4);
                        i4 -= iT - iMin;
                        c.a.t(iMin, map2, "num", iMin, "item_num");
                        if (i5 == 6) {
                            map2.put("general_soul_num", Integer.valueOf(iMin));
                        }
                        if (i5 == i3 && map2.containsKey("equipment_piece_num")) {
                            map2.put("equipment_piece_num", Integer.valueOf(iMin));
                        }
                        Map mapZ0 = (Map) linkedHashMap.get(str);
                        if (mapZ0 == null) {
                            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                            linkedHashMap.put(str, mapZ0);
                        }
                        if (iMin <= 0) {
                            ((List) mapZ0.get("del")).add(String.valueOf(map2.get("pk_id")));
                            w1.f0(str, map).remove(map2);
                        } else {
                            ((List) mapZ0.get("upd")).add(map2);
                        }
                        i3 = 8;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static List f(Map map) {
        List listF0 = w1.f0("EvolutionInfo", map);
        if (!listF0.isEmpty() || (map.get("EvolutionInfo") instanceof Map)) {
            return listF0;
        }
        ArrayList arrayList = new ArrayList();
        map.put("EvolutionInfo", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList));
        return arrayList;
    }

    public static LinkedHashMap g(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", -1, "code", -1, "result", bool, "msg", str, "error_code", -1, "return_info", p5.z0("result", bool, new Object[0]), "cmn_modules", "EvolutionInfo");
    }

    public static Map h(String str, Map map) {
        if (str.isEmpty()) {
            return null;
        }
        for (Map map2 : f(map)) {
            if (c.a.A(map2, "evolution_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static String i(Map map, String... strArr) {
        for (String str : strArr) {
            Object obj = map.get(str);
            if (obj != null && !String.valueOf(obj).isEmpty()) {
                return String.valueOf(obj);
            }
        }
        return "";
    }

    public static boolean k(Map map, y yVar) {
        Iterator it = n(map, yVar).iterator();
        int iT = 0;
        while (it.hasNext()) {
            iT += t(yVar.f1037c, (Map) it.next());
        }
        return iT >= yVar.f1036b;
    }

    public static boolean l(String str) {
        return "evolution.open".equals(str) || "evolution.changeFate".equals(str) || "evolution.active".equals(str);
    }

    public static boolean m(LinkedHashMap linkedHashMap) {
        return Boolean.TRUE.equals(linkedHashMap.get("result")) && (linkedHashMap.get("delta_data") instanceof Map) && !((Map) linkedHashMap.get("delta_data")).isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    public static ArrayList n(Map map, y yVar) {
        String str;
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i2 = yVar.f1037c;
        if (i2 == 6) {
            str = "GeneralSoul";
        } else if (i2 == 5) {
            str = "Item";
        } else {
            str = i2 == 8 ? "EquipmentPiece" : "";
        }
        if (str.isEmpty()) {
            return arrayList;
        }
        for (Map map2 : w1.f0(str, map)) {
            int i3 = yVar.f1037c;
            String strI = i3 == 6 ? i(map2, "general_id", "pk_id", "id") : i3 == 8 ? i(map2, "equipment_id", "equip_id", "id", "pk_id", "item_id") : i(map2, "item_id", "id", "pk_id");
            String str2 = yVar.f1035a;
            if (!str2.equals(strI)) {
                if (i3 == 8) {
                    String strConcat = "9".concat(str2);
                    z = c.a.A(map2, "pk_id", strConcat) || c.a.A(map2, "item_id", strConcat) || c.a.A(map2, "piece_id", strConcat);
                }
            }
            if (z) {
                arrayList.add(map2);
            }
        }
        return arrayList;
    }

    public static void o(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        LinkedHashMap linkedHashMap3 = linkedHashMap.get("delta_data") instanceof Map ? new LinkedHashMap((Map) linkedHashMap.get("delta_data")) : new LinkedHashMap();
        linkedHashMap3.putAll(linkedHashMap2);
        linkedHashMap.put("delta_data", linkedHashMap3);
        LinkedHashSet linkedHashSetQ = q(linkedHashMap.get("cmn_modules"));
        linkedHashSetQ.addAll(linkedHashMap2.keySet());
        StringBuilder sb = new StringBuilder();
        Iterator it = linkedHashSetQ.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                } else {
                    sb.append((CharSequence) ",");
                }
            }
        }
        linkedHashMap.put("cmn_modules", sb.toString());
    }

    public static void p(ArrayList arrayList, LinkedHashMap linkedHashMap, Map map) {
        boolean z;
        if (arrayList.isEmpty()) {
            return;
        }
        LinkedHashMap linkedHashMap2 = linkedHashMap.get("delta_data") instanceof Map ? new LinkedHashMap((Map) linkedHashMap.get("delta_data")) : new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        Object obj = linkedHashMap2.get("General");
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("upd");
            if (obj2 instanceof List) {
                for (Object obj3 : (List) obj2) {
                    if (obj3 instanceof Map) {
                        a(arrayList2, (Map) obj3);
                    }
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a(arrayList2, (Map) it.next());
        }
        linkedHashMap2.put("General", p5.z0("del", new ArrayList(), "upd", arrayList2, "add", new ArrayList()));
        LinkedHashSet linkedHashSetQ = q(linkedHashMap.get("cmn_modules"));
        linkedHashSetQ.add("General");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            String strJ = c.a.j((Map) it2.next(), "general_pk_id", "", "pk_id");
            if (!strJ.isEmpty()) {
                linkedHashSet.add(strJ);
            }
        }
        if (linkedHashSet.isEmpty()) {
            z = false;
            break;
        }
        List listF0 = w1.f0("TeamGeneral", map);
        Iterator it3 = listF0.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z = false;
                break;
            }
            Map map2 = (Map) it3.next();
            Iterator it4 = it3;
            if (linkedHashSet.contains(String.valueOf(map2.getOrDefault("general_pk_id", map2.getOrDefault("pk_id", ""))))) {
                linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList(listF0)));
                z = true;
                break;
            }
            it3 = it4;
        }
        if (z) {
            linkedHashSetQ.add("TeamGeneral");
        }
        linkedHashMap.put("delta_data", linkedHashMap2);
        StringBuilder sb = new StringBuilder();
        Iterator it5 = linkedHashSetQ.iterator();
        if (it5.hasNext()) {
            while (true) {
                sb.append((CharSequence) it5.next());
                if (!it5.hasNext()) {
                    break;
                } else {
                    sb.append((CharSequence) ",");
                }
            }
        }
        linkedHashMap.put("cmn_modules", sb.toString());
    }

    public static LinkedHashSet q(Object obj) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (obj != null) {
            for (String str : String.valueOf(obj).split(",")) {
                String strTrim = str.trim();
                if (!strTrim.isEmpty()) {
                    linkedHashSet.add(strTrim);
                }
            }
        }
        return linkedHashSet;
    }

    public static String r(String str, Map map) {
        String str2;
        return (map == null || (str2 = (String) map.get(str)) == null) ? "" : str2;
    }

    public static List s(Object obj) {
        try {
            a.o oVar = new a.o();
            if (obj == null) {
                obj = "[]";
            }
            List list = (List) oVar.e(String.valueOf(obj), new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.EvolutionHandler$1
            }.getType());
            return list == null ? new ArrayList() : list;
        } catch (RuntimeException unused) {
            return new ArrayList();
        }
    }

    public static int t(int i2, Map map) {
        Object obj = map.get("num");
        if (obj == null) {
            obj = map.get("item_num");
        }
        if (obj == null) {
            obj = map.get(i2 == 6 ? "general_soul_num" : "equipment_piece_num");
        }
        int iU = u(obj, 0);
        return i2 == 8 ? Math.max(iU, Math.max(u(map.get("item_num"), 0), u(map.get("equipment_piece_num"), 0))) : iU;
    }

    public static int u(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static LinkedHashMap v() {
        Boolean bool = Boolean.TRUE;
        return p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]), "cmn_modules", "EvolutionInfo");
    }

    public static void w(w1 w1Var, ArrayList arrayList, Map map) {
        if (w1Var == null) {
            return;
        }
        for (Map map2 : w1.f0("General", map)) {
            String strJ = c.a.j(map2, "general_pk_id", "", "pk_id");
            if (!strJ.isEmpty() && w1Var.F2(strJ, map)) {
                a(arrayList, map2);
            }
        }
    }

    public static LinkedHashMap x(Map map, Map map2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(map2);
        return p5.z0("EvolutionInfo", p5.z0("del", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", f(map)}, map, "EvolutionInfo"), "upd", arrayList, "add", new ArrayList()), new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:269:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:271:0x06eb  */
    /* JADX WARN: Code duplicated, block: B:275:0x0709  */
    /* JADX WARN: Code duplicated, block: B:276:0x070a A[Catch: RuntimeException -> 0x0728, TryCatch #0 {RuntimeException -> 0x0728, blocks: (B:273:0x06ff, B:276:0x070a, B:277:0x0712, B:279:0x0718, B:281:0x0724), top: B:312:0x06ff }] */
    /* JADX WARN: Code duplicated, block: B:279:0x0718 A[Catch: RuntimeException -> 0x0728, TryCatch #0 {RuntimeException -> 0x0728, blocks: (B:273:0x06ff, B:276:0x070a, B:277:0x0712, B:279:0x0718, B:281:0x0724), top: B:312:0x06ff }] */
    /* JADX WARN: Code duplicated, block: B:286:0x0733  */
    /* JADX WARN: Code duplicated, block: B:288:0x073b  */
    /* JADX WARN: Code duplicated, block: B:289:0x0747  */
    /* JADX WARN: Code duplicated, block: B:292:0x076c A[LOOP:1: B:292:0x076c->B:294:0x077b, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:294:0x077b A[LOOP:1: B:292:0x076c->B:294:0x077b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:298:0x0790  */
    /* JADX WARN: Code duplicated, block: B:299:0x0797  */
    /* JADX WARN: Code duplicated, block: B:302:0x07f6  */
    /* JADX WARN: Code duplicated, block: B:305:0x080a A[LOOP:3: B:301:0x07f4->B:305:0x080a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:308:0x0818  */
    /* JADX WARN: Code duplicated, block: B:319:0x0781 A[EDGE_INSN: B:319:0x0781->B:295:0x0781 BREAK  A[LOOP:1: B:292:0x076c->B:294:0x077b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:321:0x0724 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:323:0x0712 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:326:0x0800 A[SYNTHETIC] */
    public final byte[] j(String str, Map map) {
        k0 k0Var;
        Context context;
        String str2;
        h5 h5Var;
        String str3;
        String str4;
        LinkedHashMap linkedHashMapG;
        char c2;
        int[] iArr;
        String str5;
        String str6;
        String str7;
        w1 w1Var;
        ArrayList arrayList;
        w1 w1Var2;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        Map linkedHashMap;
        Map map2;
        Map linkedHashMap2;
        int i2;
        h5 h5Var2;
        LinkedHashMap linkedHashMapU1;
        ArrayList arrayList2;
        j jVarC;
        LinkedHashMap linkedHashMap3;
        StringBuilder sb;
        Iterator it;
        a7 a7VarV1;
        Iterator it2;
        Map mapB;
        String str14;
        int iU;
        int iMax;
        Map mapH;
        if (!l(str)) {
            return null;
        }
        k0 k0Var2 = this.f1040a;
        String strE = k0Var2.e(map);
        h5 h5Var3 = k0Var2.f904d;
        Map mapW0 = h5Var3.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map3 = mapW0;
        boolean zEquals = "evolution.open".equals(str);
        String str15 = "General";
        Context context2 = k0Var2.f901a;
        String str16 = "觉醒材料不足";
        String str17 = "delta_data";
        String str18 = "evolution_id";
        if (!zEquals) {
            k0Var = k0Var2;
            String str19 = "General";
            context = context2;
            str2 = strE;
            h5Var = h5Var3;
            String str20 = "now";
            String str21 = "left";
            String str22 = "fate_ids";
            String str23 = "请先开启觉醒";
            if ("evolution.changeFate".equals(str)) {
                Map mapH2 = h(r("evolution_id", map), map3);
                if (mapH2 == null || u(mapH2.get("status"), 0) != 1) {
                    str13 = "delta_data";
                    linkedHashMapG = g(str23);
                } else {
                    List<Map> listS = s(mapH2.get("fate_ids"));
                    if (listS.isEmpty()) {
                        str23 = "暂无可选缘分";
                        str13 = "delta_data";
                        linkedHashMapG = g(str23);
                    } else {
                        try {
                            linkedHashMap = (Map) new a.o().e(r("fate_ids", map), new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.handler.EvolutionHandler$2
                            }.getType());
                            if (linkedHashMap == null) {
                                linkedHashMap = new LinkedHashMap();
                            }
                        } catch (RuntimeException unused) {
                            linkedHashMap = new LinkedHashMap();
                        }
                        boolean z = false;
                        for (Map map4 : listS) {
                            String strValueOf = String.valueOf(map4.getOrDefault("left", ""));
                            if (linkedHashMap.containsKey(strValueOf)) {
                                int i3 = u(linkedHashMap.get(strValueOf), 0) == 1 ? 1 : 0;
                                map2 = linkedHashMap;
                                if (u(map4.get("now"), 0) != i3) {
                                    map4.put("now", Integer.valueOf(i3));
                                    z = true;
                                }
                            } else {
                                map2 = linkedHashMap;
                            }
                            linkedHashMap = map2;
                        }
                        mapH2.put("fate_ids", p5.s1(listS));
                        LinkedHashMap linkedHashMapV = v();
                        linkedHashMapV.put("evolution_info", mapH2);
                        if (z) {
                            str13 = "delta_data";
                            linkedHashMapV.put(str13, x(map3, mapH2));
                            ArrayList arrayList3 = new ArrayList();
                            w(w1.a1(null), arrayList3, map3);
                            p(arrayList3, linkedHashMapV, map3);
                        } else {
                            str13 = "delta_data";
                        }
                        linkedHashMapG = linkedHashMapV;
                    }
                }
            } else {
                str3 = "delta_data";
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                for (Map.Entry entry : p5.u1(com.sgscq.vpn.o0.a(context, "evolution_buffs.json")).entrySet()) {
                    String str24 = str23;
                    if (entry.getValue() instanceof Map) {
                        linkedHashMap4.put((String) entry.getKey(), (Map) entry.getValue());
                    }
                    str23 = str24;
                }
                String str25 = str23;
                Map map5 = (Map) linkedHashMap4.get(r("evolution_id", map));
                w1 w1VarA1 = w1.a1(context);
                Map mapH3 = h(r("evolution_id", map), map3);
                if (mapH3 == null || u(mapH3.get("status"), 0) != 1) {
                    context = context;
                    str4 = str25;
                    linkedHashMapG = g(str4);
                } else {
                    int iMax2 = Math.max(1, u(mapH3.get("evolution_level"), 1));
                    str18 = "evolution_id";
                    int iMax3 = Math.max(1, u(mapH3.get("sub_level"), 1));
                    if (iMax2 < 5 || iMax3 < 7) {
                        context = context;
                        c2 = 1;
                        iArr = iMax3 >= 7 ? new int[]{iMax2 + 1, 1} : new int[]{iMax2, iMax3 + 1};
                    } else {
                        iArr = null;
                        c2 = 1;
                    }
                    if (iArr == null) {
                        str4 = "进化已达到最高等级";
                    } else {
                        ArrayList arrayListC = c(iArr[0], iArr[c2], map5);
                        if (arrayListC != null) {
                            Iterator it3 = arrayListC.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    str5 = str20;
                                    str6 = str21;
                                    str7 = str22;
                                    w1Var = w1VarA1;
                                    arrayList = new ArrayList();
                                    break;
                                }
                                Object obj = ((Map) it3.next()).get("item_list");
                                if (obj instanceof List) {
                                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                    Iterator it4 = ((List) obj).iterator();
                                    while (it4.hasNext()) {
                                        it3 = it3;
                                        Object next = it4.next();
                                        it4 = it4;
                                        if (next instanceof List) {
                                            List list = (List) next;
                                            w1Var2 = w1VarA1;
                                            if (list.size() >= 3) {
                                                String strValueOf2 = String.valueOf(list.get(0));
                                                String str26 = str20;
                                                int iMax4 = Math.max(0, u(list.get(1), 0));
                                                String str27 = str21;
                                                int iU2 = u(list.get(2), 0);
                                                String str28 = iU2 + ":" + strValueOf2;
                                                y yVar = (y) linkedHashMap5.get(str28);
                                                String str29 = str22;
                                                linkedHashMap5.put(str28, new y(strValueOf2, iMax4 + (yVar == null ? 0 : yVar.f1036b), iU2));
                                                w1VarA1 = w1Var2;
                                                str20 = str26;
                                                str21 = str27;
                                                str22 = str29;
                                            }
                                        } else {
                                            w1Var2 = w1VarA1;
                                        }
                                        w1VarA1 = w1Var2;
                                    }
                                    str5 = str20;
                                    str6 = str21;
                                    str7 = str22;
                                    w1Var = w1VarA1;
                                    Iterator it5 = it3;
                                    arrayList = new ArrayList(linkedHashMap5.values());
                                    if (!arrayList.isEmpty()) {
                                        break;
                                    }
                                    it3 = it5;
                                    w1VarA1 = w1Var;
                                    str20 = str5;
                                    str21 = str6;
                                    str22 = str7;
                                }
                            }
                        } else {
                            arrayList = null;
                            str5 = "now";
                            str6 = "left";
                            str7 = "fate_ids";
                            w1Var = w1VarA1;
                        }
                        if (arrayList == null) {
                            str12 = "觉醒节点配置不存在";
                        } else {
                            Iterator it6 = arrayList.iterator();
                            while (true) {
                                if (!it6.hasNext()) {
                                    LinkedHashMap linkedHashMapE = e(arrayList, map3);
                                    mapH3.put("evolution_level", Integer.valueOf(iArr[0]));
                                    c.a.t(iArr[1], mapH3, "sub_level", 1, "status");
                                    ArrayList<Map> arrayListC2 = c(iArr[0], iArr[1], map5);
                                    ArrayList arrayList4 = new ArrayList();
                                    for (Map map6 : arrayListC2) {
                                        int iU3 = u(map6.get("buff_type"), 0);
                                        if (iU3 == 5) {
                                            String strValueOf3 = String.valueOf(mapH3.getOrDefault("general_id", ""));
                                            str8 = str19;
                                            if (!strValueOf3.isEmpty()) {
                                                for (Map map7 : w1.f0(str8, map3)) {
                                                    if (c.a.B(map7, "general_id", "", strValueOf3) && u(map7.get("evolution_image_status"), 0) != 1) {
                                                        map7.put("evolution_image_status", 1);
                                                        arrayList4.add(map7);
                                                    }
                                                }
                                            }
                                        } else {
                                            str8 = str19;
                                            if (iU3 == 6) {
                                                mapH3.put("surrender_status", 1);
                                            } else {
                                                if (iU3 == 10) {
                                                    Object obj2 = map6.get("buff_effect");
                                                    if (obj2 instanceof List) {
                                                        List list2 = (List) obj2;
                                                        if (list2.size() >= 2) {
                                                            String strValueOf4 = String.valueOf(list2.get(0));
                                                            String strValueOf5 = String.valueOf(list2.get(1));
                                                            if (!strValueOf4.isEmpty() && !strValueOf5.isEmpty()) {
                                                                str9 = str7;
                                                                List listS2 = s(mapH3.get(str9));
                                                                Iterator it7 = listS2.iterator();
                                                                while (true) {
                                                                    if (!it7.hasNext()) {
                                                                        str10 = str6;
                                                                        str11 = str5;
                                                                        listS2.add(p5.z0(str10, strValueOf4, "right", strValueOf5, str11, 0));
                                                                        mapH3.put(str9, p5.s1(listS2));
                                                                        break;
                                                                    }
                                                                    Map map8 = (Map) it7.next();
                                                                    str10 = str6;
                                                                    if (c.a.A(map8, str10, strValueOf4) && c.a.A(map8, "right", strValueOf5)) {
                                                                        str11 = str5;
                                                                        break;
                                                                    }
                                                                    str6 = str10;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                str19 = str8;
                                                str7 = str9;
                                                str5 = str11;
                                                str6 = str10;
                                            }
                                        }
                                        str11 = str5;
                                        str10 = str6;
                                        str9 = str7;
                                        str19 = str8;
                                        str7 = str9;
                                        str5 = str11;
                                        str6 = str10;
                                    }
                                    w(w1Var, arrayList4, map3);
                                    linkedHashMapG = v();
                                    str3 = str3;
                                    linkedHashMapG.put(str3, x(map3, mapH3));
                                    linkedHashMapG.put("evolution_info", mapH3);
                                    p(arrayList4, linkedHashMapG, map3);
                                    o(linkedHashMapG, linkedHashMapE);
                                } else if (!k(map3, (y) it6.next())) {
                                    str12 = "觉醒材料不足";
                                }
                            }
                        }
                        str4 = str12;
                    }
                    str3 = str3;
                    linkedHashMapG = g(str4);
                }
            }
            if (m(linkedHashMapG)) {
                if (h(r(str18, map), map3) != null) {
                    ArrayList arrayList5 = new ArrayList();
                    w(w1.a1(context), arrayList5, map3);
                    p(arrayList5, linkedHashMapG, map3);
                }
                arrayList2 = new ArrayList();
                try {
                    a7VarV1 = w1.a1(context).V1();
                    if (a7VarV1 == null) {
                        it2 = a7VarV1.a().iterator();
                        while (it2.hasNext()) {
                            mapB = a7VarV1.b((String) it2.next());
                            if (mapB != null) {
                                arrayList2.add(mapB);
                            }
                        }
                    }
                } catch (RuntimeException unused2) {
                }
                jVarC = y0.c(arrayList2, map3);
                if (jVarC.c()) {
                    if (linkedHashMapG.get(str3) instanceof Map) {
                        linkedHashMap3 = new LinkedHashMap((Map) linkedHashMapG.get(str3));
                    } else {
                        linkedHashMap3 = new LinkedHashMap();
                    }
                    LinkedHashSet linkedHashSetQ = q(linkedHashMapG.get("cmn_modules"));
                    jVarC.a(linkedHashMap3, linkedHashSetQ);
                    jVarC.b(linkedHashMapG);
                    linkedHashMapG.put(str3, linkedHashMap3);
                    sb = new StringBuilder();
                    it = linkedHashSetQ.iterator();
                    if (it.hasNext()) {
                        while (true) {
                            sb.append((CharSequence) it.next());
                            if (it.hasNext()) {
                                break;
                            }
                            sb.append((CharSequence) ",");
                        }
                    }
                    linkedHashMapG.put("cmn_modules", sb.toString());
                }
            }
            if (linkedHashMapG.get(str3) instanceof Map) {
                linkedHashMap2 = (Map) linkedHashMapG.get(str3);
            } else {
                linkedHashMap2 = new LinkedHashMap();
            }
            LinkedHashSet linkedHashSetQ2 = q(linkedHashMapG.get("cmn_modules"));
            linkedHashSetQ2.remove("Player");
            String[] strArr = (String[]) linkedHashSetQ2.toArray(new String[0]);
            k0 k0Var3 = k0Var;
            h5Var2 = h5Var;
            linkedHashMapU1 = p5.u1(h5Var2.j(linkedHashMap2, k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", map3), k0Var3.i(k0Var3.b(), "user_energy", map3), k0Var3.i(k0Var3.d(), "user_power", map3), k0Var3.j(k0Var3.a(), map3), str2, map3), strArr));
            for (String str30 : strArr) {
                if ("TeamGeneral".equals(str30)) {
                    linkedHashMapU1.put("team_info", h5Var2.j0(map3));
                    break;
                }
            }
            linkedHashMapG.put("cmn", linkedHashMapU1);
            if (m(linkedHashMapG)) {
                h5Var2.S0(str2, map3);
            }
            return k0Var3.n(p5.s1(linkedHashMapG));
        }
        String strR = r("evolution_id", map);
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        Iterator it8 = p5.t1(com.sgscq.vpn.o0.a(context2, "evolutions.json")).iterator();
        while (it8.hasNext()) {
            String str31 = str16;
            Object next2 = it8.next();
            Iterator it9 = it8;
            if (next2 instanceof Map) {
                Map map9 = (Map) next2;
                linkedHashMap6.put(String.valueOf(map9.get("evolution_id")), map9);
            }
            it8 = it9;
            str16 = str31;
        }
        String str32 = str16;
        Map map10 = (Map) linkedHashMap6.get(strR);
        String strR2 = map10 == null ? r("general_id", map) : String.valueOf(map10.get("general_id"));
        if (strR2.isEmpty() || t0.o(t0.C(2)).contains(strR2) || ((mapH = h(strR, map3)) != null && u(mapH.get("status"), 0) == 1)) {
            LinkedHashMap linkedHashMap7 = new LinkedHashMap();
            Iterator it10 = p5.u1(com.sgscq.vpn.o0.a(context2, "evolution_opens.json")).entrySet().iterator();
            while (it10.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it10.next();
                Iterator it11 = it10;
                if (entry2.getValue() instanceof List) {
                    linkedHashMap7.put((String) entry2.getKey(), (List) entry2.getValue());
                }
                it10 = it11;
                h5Var3 = h5Var3;
            }
            h5Var = h5Var3;
            List list3 = (List) linkedHashMap7.get(strR);
            if (map10 == null || list3 == null || list3.isEmpty()) {
                k0Var = k0Var2;
                context = context2;
                str17 = "delta_data";
                str2 = strE;
                str14 = "觉醒配置不存在";
            } else {
                String strValueOf6 = String.valueOf(map10.get("evolution_id"));
                Map mapH4 = h(strValueOf6, map3);
                if (mapH4 == null || u(mapH4.get("status"), 0) != 1) {
                    String strValueOf7 = String.valueOf(map10.get("general_id"));
                    ArrayList arrayList6 = new ArrayList();
                    Iterator it12 = list3.iterator();
                    while (true) {
                        if (!it12.hasNext()) {
                            k0Var = k0Var2;
                            context = context2;
                            str17 = str17;
                            str2 = strE;
                            LinkedHashMap linkedHashMapE2 = e(arrayList6, map3);
                            LinkedHashMap linkedHashMap8 = new LinkedHashMap(map);
                            linkedHashMap8.put("evolution_id", strValueOf6);
                            linkedHashMap8.put("general_id", strValueOf7);
                            LinkedHashMap linkedHashMapB = b(map3, linkedHashMap8);
                            o(linkedHashMapB, linkedHashMapE2);
                            Map mapH5 = h(strValueOf6, map3);
                            if (mapH5 != null && map10.get("resource_id") != null) {
                                mapH5.put("resource_id", map10.get("resource_id"));
                                linkedHashMapB.put("evolution_info", mapH5);
                            }
                            linkedHashMapG = linkedHashMapB;
                            break;
                        }
                        Map map11 = (Map) it12.next();
                        Iterator it13 = it12;
                        str2 = strE;
                        int iU4 = u(map11.get("type"), 0);
                        String strValueOf8 = String.valueOf(map11.get("object_id"));
                        k0Var = k0Var2;
                        int iMax5 = Math.max(0, u(map11.get("condition"), 0));
                        if (iU4 == 1) {
                            Iterator it14 = w1.f0(str15, map3).iterator();
                            while (true) {
                                if (!it14.hasNext()) {
                                    iMax = 0;
                                    break;
                                }
                                Iterator it15 = it14;
                                Map map12 = (Map) it14.next();
                                if (c.a.A(map12, "general_id", strValueOf7)) {
                                    Object obj3 = map12.get("breach_level");
                                    if (obj3 == null) {
                                        obj3 = map12.get("general_breach_level");
                                    }
                                    if (obj3 == null) {
                                        obj3 = map12.get("break_level");
                                    }
                                    if (obj3 == null) {
                                        obj3 = map12.get("insight_level");
                                    }
                                    if (obj3 == null) {
                                        obj3 = map12.get("breachLevel");
                                    }
                                    iMax = Math.max(0, u(obj3, 0) - 1);
                                    break;
                                }
                                it14 = it15;
                            }
                            if (iMax < iMax5) {
                                str14 = "武将突破等级不足";
                                context = context2;
                                str17 = str17;
                            }
                        } else {
                            str15 = str15;
                        }
                        if (iU4 == 2) {
                            Iterator it16 = w1.f0("MagicalEqu", map3).iterator();
                            while (true) {
                                if (!it16.hasNext()) {
                                    context = context2;
                                    iU = 0;
                                    break;
                                }
                                Map map13 = (Map) it16.next();
                                if (c.a.A(map13, "general_id", strValueOf7)) {
                                    Iterator it17 = it16;
                                    context = context2;
                                    if (u(map13.get("is_open"), 0) == 1) {
                                        iU = u(map13.get("magic_sub_level"), 0) + (u(map13.get("magic_level"), 0) * 100);
                                        break;
                                    }
                                    it16 = it17;
                                    context2 = context;
                                }
                            }
                            if (iU < iMax5) {
                                str14 = "神兵锻造进度不足";
                            }
                        } else {
                            context = context2;
                            str17 = str17;
                        }
                        if (iU4 == 3 || iU4 == 4) {
                            y yVar2 = new y(strValueOf8, iMax5, iU4 == 3 ? 6 : 5);
                            if (k(map3, yVar2)) {
                                arrayList6.add(yVar2);
                            } else {
                                str14 = str32;
                            }
                        }
                        it12 = it13;
                        strE = str2;
                        k0Var2 = k0Var;
                        str15 = str15;
                        str17 = str17;
                        context2 = context;
                    }
                } else {
                    linkedHashMapG = b(map3, map);
                }
                str13 = str17;
            }
            linkedHashMapG = g(str14);
            str13 = str17;
        } else {
            linkedHashMapG = g("该武将觉醒暂未开放");
            h5Var = h5Var3;
        }
        k0Var = k0Var2;
        context = context2;
        str17 = "delta_data";
        str2 = strE;
        str13 = str17;
        str3 = str13;
        str18 = "evolution_id";
        if (m(linkedHashMapG)) {
            if (h(r(str18, map), map3) != null) {
                ArrayList arrayList7 = new ArrayList();
                w(w1.a1(context), arrayList7, map3);
                p(arrayList7, linkedHashMapG, map3);
            }
            arrayList2 = new ArrayList();
            a7VarV1 = w1.a1(context).V1();
            if (a7VarV1 == null) {
                it2 = a7VarV1.a().iterator();
                while (it2.hasNext()) {
                    mapB = a7VarV1.b((String) it2.next());
                    if (mapB != null) {
                        arrayList2.add(mapB);
                    }
                }
            }
            jVarC = y0.c(arrayList2, map3);
            if (jVarC.c()) {
                if (linkedHashMapG.get(str3) instanceof Map) {
                    linkedHashMap3 = new LinkedHashMap((Map) linkedHashMapG.get(str3));
                } else {
                    linkedHashMap3 = new LinkedHashMap();
                }
                LinkedHashSet linkedHashSetQ3 = q(linkedHashMapG.get("cmn_modules"));
                jVarC.a(linkedHashMap3, linkedHashSetQ3);
                jVarC.b(linkedHashMapG);
                linkedHashMapG.put(str3, linkedHashMap3);
                sb = new StringBuilder();
                it = linkedHashSetQ3.iterator();
                if (it.hasNext()) {
                    while (true) {
                        sb.append((CharSequence) it.next());
                        if (it.hasNext()) {
                            break;
                            break;
                        }
                        sb.append((CharSequence) ",");
                    }
                }
                linkedHashMapG.put("cmn_modules", sb.toString());
            }
        }
        if (linkedHashMapG.get(str3) instanceof Map) {
            linkedHashMap2 = (Map) linkedHashMapG.get(str3);
        } else {
            linkedHashMap2 = new LinkedHashMap();
        }
        LinkedHashSet linkedHashSetQ4 = q(linkedHashMapG.get("cmn_modules"));
        linkedHashSetQ4.remove("Player");
        String[] strArr2 = (String[]) linkedHashSetQ4.toArray(new String[0]);
        k0 k0Var4 = k0Var;
        h5Var2 = h5Var;
        linkedHashMapU1 = p5.u1(h5Var2.j(linkedHashMap2, k0Var4.f904d.t((int) c7.g(), k0Var4.i(k0Var4.c(), "user_gold", map3), k0Var4.i(k0Var4.b(), "user_energy", map3), k0Var4.i(k0Var4.d(), "user_power", map3), k0Var4.j(k0Var4.a(), map3), str2, map3), strArr2));
        while (i2 < r4) {
            if ("TeamGeneral".equals(str30)) {
                linkedHashMapU1.put("team_info", h5Var2.j0(map3));
                break;
            }
        }
        linkedHashMapG.put("cmn", linkedHashMapU1);
        if (m(linkedHashMapG)) {
            h5Var2.S0(str2, map3);
        }
        return k0Var4.n(p5.s1(linkedHashMapG));
    }
}
