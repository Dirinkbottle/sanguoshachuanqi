package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f840b = {0, 1, 8, 15, 20, 25, 30, 35, 40, 100, 115, 130, 145, 160, 175, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f841a;

    public g(k0 k0Var) {
        this.f841a = k0Var;
    }

    public static List a(Map map) {
        Object obj = map.get("BuddyGeneral");
        if (obj instanceof List) {
            return (List) obj;
        }
        List listF0 = w1.f0("BuddyGeneral", map);
        if (!listF0.isEmpty()) {
            return listF0;
        }
        ArrayList arrayList = new ArrayList();
        map.put("BuddyGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList));
        return arrayList;
    }

    public static LinkedHashMap b(Map map) {
        Object obj = map.get("BuddyGeneral");
        if (!(obj instanceof Map)) {
            return p5.z0("BuddyGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
        }
        Map map2 = (Map) obj;
        ArrayList arrayList = map2.get("del") instanceof List ? new ArrayList((List) map2.get("del")) : new ArrayList();
        if (map2.get("upd") instanceof List) {
            new ArrayList((List) map2.get("upd"));
        } else {
            new ArrayList();
        }
        List listF0 = w1.f0("BuddyGeneral", map);
        return p5.z0("BuddyGeneral", p5.z0("del", arrayList, "upd", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", listF0}, map, "BuddyGeneral"), "add", new ArrayList(listF0)), new Object[0]);
    }

    public static Map c(int i2, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (i2 == c.a.e(map, "position", 0)) {
                return map;
            }
        }
        return null;
    }

    public static Map d(String str, Map map) {
        for (Map map2 : w1.f0("General", map)) {
            if (c.a.B(map2, "pk_id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static void f(List list, Map map, Map map2) {
        map.put("BuddyGeneral", p5.z0("del", new ArrayList(), "upd", p5.v0(map2), "add", list));
    }

    public static LinkedHashMap g() {
        Boolean bool = Boolean.TRUE;
        return p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]), "cmn_modules", "BuddyGeneral");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:101:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:103:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:120:0x0323  */
    /* JADX WARN: Code duplicated, block: B:127:0x0347  */
    /* JADX WARN: Code duplicated, block: B:128:0x038a  */
    /* JADX WARN: Code duplicated, block: B:148:0x0291 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x025c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x02ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x02e9 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x032f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x031d A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0264  */
    /* JADX WARN: Code duplicated, block: B:82:0x026c  */
    /* JADX WARN: Code duplicated, block: B:94:0x028d  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final byte[] e(String str, Map map) {
        k0 k0Var;
        String str2;
        Object obj;
        Object obj2;
        String str3;
        Object obj3;
        Object obj4;
        Object obj5;
        Map mapC;
        Object obj6;
        ArrayList arrayList;
        String str4;
        Iterator it;
        Iterator it2;
        LinkedHashMap linkedHashMapG;
        LinkedHashMap linkedHashMapB;
        String str5;
        String str6;
        Map mapD;
        String strJ;
        boolean z;
        Object obj7;
        String str7;
        String str8;
        String str9;
        String str10;
        Map map2;
        Map mapZ0;
        Object obj8;
        String str11;
        if (!("buddy.activatePosition".equals(str) || "buddy.setBuddy".equals(str))) {
            return null;
        }
        k0 k0Var2 = this.f841a;
        String strE = k0Var2.e(map);
        h5 h5Var = k0Var2.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map3 = mapW0;
        String str12 = "cmn_modules";
        String str13 = "General";
        String str14 = "TeamGeneral";
        String str15 = "delta_data";
        if ("buddy.activatePosition".equals(str)) {
            int iMax = Math.max(1, w1.l2((String) map.getOrDefault("position", ""), 1));
            List listA = a(map3);
            Map mapC2 = c(iMax, listA);
            if (mapC2 == null) {
                int[] iArr = f840b;
                k0Var = k0Var2;
                int i2 = (iMax < 0 || iMax >= 25) ? iArr[24] : iArr[iMax];
                Iterator it3 = w1.f0("Item", map3).iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        str7 = str15;
                        str8 = str12;
                        str9 = str14;
                        str10 = str13;
                        map2 = null;
                        break;
                    }
                    str10 = str13;
                    map2 = (Map) it3.next();
                    str9 = str14;
                    str7 = str15;
                    str8 = str12;
                    if (c.a.C(map2, "id", "", "item_id", "600065")) {
                        break;
                    }
                    str13 = str10;
                    str14 = str9;
                    str15 = str7;
                    str12 = str8;
                }
                int iL2 = map2 == null ? 0 : w1.l2(c.a.k(map2, "total_num", "0", "item_num", "num"), 0);
                if (i2 <= 0 || iL2 >= i2) {
                    if (i2 > 0) {
                        int i3 = iL2 - i2;
                        if (map2 != null) {
                            map2.put("num", Integer.valueOf(i3));
                            map2.put("item_num", Integer.valueOf(i3));
                            map2.put("total_num", Integer.valueOf(i3));
                        }
                    }
                    mapZ0 = p5.z0("pk_id", "", "position", Integer.valueOf(iMax));
                    listA.add(mapZ0);
                } else {
                    Boolean bool = Boolean.FALSE;
                    linkedHashMapG = p5.z0("ret", -1, "code", -1, "result", bool, "msg", "诏令数量不足", "error_code", -1, "return_info", p5.z0("result", bool, new Object[0]));
                    str11 = str7;
                    obj8 = "Item";
                }
                str5 = str10;
                str6 = str11;
                obj = obj8;
                str4 = str9;
            } else {
                obj7 = "Item";
                str7 = "delta_data";
                k0Var = k0Var2;
                str8 = "cmn_modules";
                str9 = "TeamGeneral";
                str10 = "General";
                map2 = null;
                mapZ0 = mapC2;
            }
            Collections.sort(listA, new n.b(9));
            f(listA, map3, mapZ0);
            linkedHashMapG = g();
            LinkedHashMap linkedHashMapB2 = b(map3);
            if (map2 != null) {
                obj8 = obj7;
                linkedHashMapB2.put(obj8, p5.z0("del", new ArrayList(), "upd", p5.v0(map2), "add", new ArrayList()));
                linkedHashMapG.put(str8, "BuddyGeneral,Item");
            } else {
                obj8 = obj7;
            }
            str11 = str7;
            linkedHashMapG.put(str11, linkedHashMapB2);
            str5 = str10;
            str6 = str11;
            obj = obj8;
            str4 = str9;
        } else {
            k0Var = k0Var2;
            String str16 = (String) map.getOrDefault("user_general_id", (String) map.getOrDefault("general_pk_id", ""));
            int iMax2 = Math.max(1, w1.l2((String) map.getOrDefault("position", "1"), 1));
            List<Map> listA2 = a(map3);
            ArrayList arrayList2 = new ArrayList();
            if (str16 == null || str16.isEmpty() || "0".equals(str16)) {
                str2 = "delta_data";
                obj = "Item";
            } else {
                obj = "Item";
                Map mapD2 = d(str16, map3);
                str2 = "delta_data";
                if (mapD2 != null) {
                    obj2 = "cmn_modules";
                    String strValueOf = String.valueOf(mapD2.getOrDefault("major_pk_id", ""));
                    if (!strValueOf.isEmpty() && !"0".equals(strValueOf)) {
                        str3 = "del";
                        if (!"null".equalsIgnoreCase(strValueOf)) {
                            Map mapD3 = d(strValueOf, map3);
                            mapD2.put("major_pk_id", "");
                            mapD2.put("position", "0");
                            mapD2.put("lieutenant_skill_id", "");
                            obj3 = "add";
                            mapD2.put("skill_type_lieutenant", "");
                            obj4 = "upd";
                            mapD2.put("ls_type", "0");
                            obj5 = "position";
                            mapD2.put("ls_value", "0");
                            arrayList2.add(str16);
                            if (mapD3 != null) {
                                mapD3.put("lieutenant_skill_id", "");
                                mapD3.put("skill_type_lieutenant", "");
                                mapD3.put("ls_type", "0");
                                mapD3.put("ls_value", "0");
                                arrayList2.add(strValueOf);
                                w1.a1(null).F2(strValueOf, map3);
                            }
                        }
                        for (Map map4 : listA2) {
                            if (str16 != null || str16.isEmpty() || "0".equals(str16) || !(c.a.B(map4, "pk_id", "", str16) || c.a.B(map4, "general_pk_id", "", str16) || c.a.B(map4, "suspended_general_pk_id", "", str16))) {
                                z = false;
                            } else {
                                z = true;
                            }
                            if (!z) {
                                map4.put("pk_id", "");
                                map4.put("general_pk_id", "");
                                map4.remove("suspended_general_pk_id");
                            }
                        }
                        mapC = c(iMax2, listA2);
                        if (mapC == null) {
                            obj6 = obj5;
                            mapC = p5.z0("pk_id", "", "general_pk_id", "", obj6, Integer.valueOf(iMax2));
                            listA2.add(mapC);
                        } else {
                            obj6 = obj5;
                        }
                        if (str16 == null) {
                            str16 = "";
                        }
                        mapC.put("pk_id", str16);
                        mapC.put("general_pk_id", str16);
                        mapC.remove("suspended_general_pk_id");
                        mapC.put(obj6, Integer.valueOf(iMax2));
                        Collections.sort(listA2, new n.b(9));
                        f(listA2, map3, mapC);
                        arrayList = new ArrayList();
                        w1 w1VarA1 = w1.a1(null);
                        str4 = "TeamGeneral";
                        it = w1.f0(str4, map3).iterator();
                        while (it.hasNext()) {
                            strJ = c.a.j((Map) it.next(), "pk_id", "", "general_pk_id");
                            if (strJ.isEmpty() && !"0".equals(strJ)) {
                                w1VarA1.F2(strJ, map3);
                                Map mapD4 = d(strJ, map3);
                                if (mapD4 != null && !arrayList.contains(mapD4)) {
                                    arrayList.add(mapD4);
                                }
                            }
                        }
                        it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            mapD = d((String) it2.next(), map3);
                            if (mapD == null && !arrayList.contains(mapD)) {
                                arrayList.add(mapD);
                            }
                        }
                        linkedHashMapG = g();
                        linkedHashMapB = b(map3);
                        if (arrayList.isEmpty()) {
                            str5 = "General";
                        } else {
                            Object obj9 = obj3;
                            Object obj10 = obj4;
                            String str17 = str3;
                            str5 = "General";
                            linkedHashMapB.put(str5, p5.z0(str17, new ArrayList(), obj10, arrayList, obj9, new ArrayList()));
                            linkedHashMapB.put(str4, p5.z0(str17, new ArrayList(), obj10, new ArrayList(), obj9, new ArrayList(w1.f0(str4, map3))));
                            linkedHashMapG.put(obj2, "BuddyGeneral,General,TeamGeneral");
                        }
                        str6 = str2;
                        linkedHashMapG.put(str6, linkedHashMapB);
                    }
                    obj3 = "add";
                    obj4 = "upd";
                    obj5 = "position";
                    while (r2.hasNext()) {
                        if (str16 != null) {
                            z = false;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            map4.put("pk_id", "");
                            map4.put("general_pk_id", "");
                            map4.remove("suspended_general_pk_id");
                        }
                    }
                    mapC = c(iMax2, listA2);
                    if (mapC == null) {
                        obj6 = obj5;
                        mapC = p5.z0("pk_id", "", "general_pk_id", "", obj6, Integer.valueOf(iMax2));
                        listA2.add(mapC);
                    } else {
                        obj6 = obj5;
                    }
                    if (str16 == null) {
                        str16 = "";
                    }
                    mapC.put("pk_id", str16);
                    mapC.put("general_pk_id", str16);
                    mapC.remove("suspended_general_pk_id");
                    mapC.put(obj6, Integer.valueOf(iMax2));
                    Collections.sort(listA2, new n.b(9));
                    f(listA2, map3, mapC);
                    arrayList = new ArrayList();
                    w1 w1VarA2 = w1.a1(null);
                    str4 = "TeamGeneral";
                    it = w1.f0(str4, map3).iterator();
                    while (it.hasNext()) {
                        strJ = c.a.j((Map) it.next(), "pk_id", "", "general_pk_id");
                        if (strJ.isEmpty()) {
                        }
                    }
                    it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        mapD = d((String) it2.next(), map3);
                        if (mapD == null) {
                        }
                    }
                    linkedHashMapG = g();
                    linkedHashMapB = b(map3);
                    if (arrayList.isEmpty()) {
                        Object obj11 = obj3;
                        Object obj12 = obj4;
                        String str18 = str3;
                        str5 = "General";
                        linkedHashMapB.put(str5, p5.z0(str18, new ArrayList(), obj12, arrayList, obj11, new ArrayList()));
                        linkedHashMapB.put(str4, p5.z0(str18, new ArrayList(), obj12, new ArrayList(), obj11, new ArrayList(w1.f0(str4, map3))));
                        linkedHashMapG.put(obj2, "BuddyGeneral,General,TeamGeneral");
                    } else {
                        str5 = "General";
                    }
                    str6 = str2;
                    linkedHashMapG.put(str6, linkedHashMapB);
                }
                str3 = "del";
                obj3 = "add";
                obj4 = "upd";
                obj5 = "position";
                while (r2.hasNext()) {
                    if (str16 != null) {
                        z = false;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        map4.put("pk_id", "");
                        map4.put("general_pk_id", "");
                        map4.remove("suspended_general_pk_id");
                    }
                }
                mapC = c(iMax2, listA2);
                if (mapC == null) {
                    obj6 = obj5;
                    mapC = p5.z0("pk_id", "", "general_pk_id", "", obj6, Integer.valueOf(iMax2));
                    listA2.add(mapC);
                } else {
                    obj6 = obj5;
                }
                if (str16 == null) {
                    str16 = "";
                }
                mapC.put("pk_id", str16);
                mapC.put("general_pk_id", str16);
                mapC.remove("suspended_general_pk_id");
                mapC.put(obj6, Integer.valueOf(iMax2));
                Collections.sort(listA2, new n.b(9));
                f(listA2, map3, mapC);
                arrayList = new ArrayList();
                w1 w1VarA3 = w1.a1(null);
                str4 = "TeamGeneral";
                it = w1.f0(str4, map3).iterator();
                while (it.hasNext()) {
                    strJ = c.a.j((Map) it.next(), "pk_id", "", "general_pk_id");
                    if (strJ.isEmpty()) {
                    }
                }
                it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    mapD = d((String) it2.next(), map3);
                    if (mapD == null) {
                    }
                }
                linkedHashMapG = g();
                linkedHashMapB = b(map3);
                if (arrayList.isEmpty()) {
                    Object obj13 = obj3;
                    Object obj14 = obj4;
                    String str19 = str3;
                    str5 = "General";
                    linkedHashMapB.put(str5, p5.z0(str19, new ArrayList(), obj14, arrayList, obj13, new ArrayList()));
                    linkedHashMapB.put(str4, p5.z0(str19, new ArrayList(), obj14, new ArrayList(), obj13, new ArrayList(w1.f0(str4, map3))));
                    linkedHashMapG.put(obj2, "BuddyGeneral,General,TeamGeneral");
                } else {
                    str5 = "General";
                }
                str6 = str2;
                linkedHashMapG.put(str6, linkedHashMapB);
            }
            obj2 = "cmn_modules";
            str3 = "del";
            obj3 = "add";
            obj4 = "upd";
            obj5 = "position";
            while (r2.hasNext()) {
                if (str16 != null) {
                    z = false;
                } else {
                    z = false;
                }
                if (!z) {
                    map4.put("pk_id", "");
                    map4.put("general_pk_id", "");
                    map4.remove("suspended_general_pk_id");
                }
            }
            mapC = c(iMax2, listA2);
            if (mapC == null) {
                obj6 = obj5;
                mapC = p5.z0("pk_id", "", "general_pk_id", "", obj6, Integer.valueOf(iMax2));
                listA2.add(mapC);
            } else {
                obj6 = obj5;
            }
            if (str16 == null) {
                str16 = "";
            }
            mapC.put("pk_id", str16);
            mapC.put("general_pk_id", str16);
            mapC.remove("suspended_general_pk_id");
            mapC.put(obj6, Integer.valueOf(iMax2));
            Collections.sort(listA2, new n.b(9));
            f(listA2, map3, mapC);
            arrayList = new ArrayList();
            w1 w1VarA4 = w1.a1(null);
            str4 = "TeamGeneral";
            it = w1.f0(str4, map3).iterator();
            while (it.hasNext()) {
                strJ = c.a.j((Map) it.next(), "pk_id", "", "general_pk_id");
                if (strJ.isEmpty()) {
                }
            }
            it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                mapD = d((String) it2.next(), map3);
                if (mapD == null) {
                }
            }
            linkedHashMapG = g();
            linkedHashMapB = b(map3);
            if (arrayList.isEmpty()) {
                Object obj15 = obj3;
                Object obj16 = obj4;
                String str110 = str3;
                str5 = "General";
                linkedHashMapB.put(str5, p5.z0(str110, new ArrayList(), obj16, arrayList, obj15, new ArrayList()));
                linkedHashMapB.put(str4, p5.z0(str110, new ArrayList(), obj16, new ArrayList(), obj15, new ArrayList(w1.f0(str4, map3))));
                linkedHashMapG.put(obj2, "BuddyGeneral,General,TeamGeneral");
            } else {
                str5 = "General";
            }
            str6 = str2;
            linkedHashMapG.put(str6, linkedHashMapB);
        }
        Map map5 = linkedHashMapG.get(str6) instanceof Map ? (Map) linkedHashMapG.get(str6) : map3;
        k0 k0Var3 = k0Var;
        JSONObject jSONObjectT = k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", map3), k0Var3.i(k0Var3.b(), "user_energy", map3), k0Var3.i(k0Var3.d(), "user_power", map3), k0Var3.j(k0Var3.a(), map3), strE, map3);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add("BuddyGeneral");
        Object obj17 = obj;
        if (map5.containsKey(obj17)) {
            arrayList3.add(obj17);
        }
        if (map5.containsKey(str5)) {
            arrayList3.add(str5);
        }
        if (map5.containsKey(str4)) {
            arrayList3.add(str4);
        }
        linkedHashMapG.put("cmn", p5.u1(h5Var.j(map5, jSONObjectT, (String[]) arrayList3.toArray(new String[0]))));
        h5Var.S0(strE, map3);
        return k0Var3.n(p5.s1(linkedHashMapG));
    }
}
