package com.sgscq.vpn.handler;

import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f1041b = {0, 0, 500, 5000, 10000, 20000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1042c = {0, 10, 30, 60, 100, 119};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f1043a;

    public z0(k0 k0Var) {
        this.f1043a = k0Var;
    }

    public static LinkedHashMap A(String... strArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= strArr.length) {
                return linkedHashMap;
            }
            linkedHashMap.put(strArr[i2], strArr[i3]);
            i2 += 2;
        }
    }

    public static String B(Object obj) {
        return obj == null ? "" : String.valueOf(obj);
    }

    public static LinkedHashMap C() {
        return p5.z0("error_code", 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
    }

    public static String a(Object obj, String... strArr) {
        if (!(obj instanceof Map)) {
            return B(obj);
        }
        Map map = (Map) obj;
        for (String str : strArr) {
            String strB = B(map.get(str));
            if (p(strB)) {
                return strB;
            }
        }
        return "";
    }

    public static String b(Object obj, String str) {
        if (!(obj instanceof Map)) {
            return str;
        }
        Map map = (Map) obj;
        String strB = B(map.getOrDefault("position", map.getOrDefault("pos", map.getOrDefault("skill_position", str))));
        return p(strB) ? strB : str;
    }

    public static void d(Map map) {
        map.put("major_pk_id", "");
        map.put("position", "0");
        map.put("lieutenant_skill_id", "");
        map.put("skill_type_lieutenant", "");
        map.put("ls_type", "0");
        map.put("ls_value", "0");
    }

    public static void e(Map map, ArrayList arrayList, m.f fVar) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String strR = r((Map) it.next());
            Map mapK = k("General", strR, map);
            for (Map map2 : w1.f0("Equipment", map)) {
                if (strR.equals(w(map2))) {
                    String strB = B(map2.get("pk_id"));
                    String strI = i(map2);
                    if (mapK != null && !strI.isEmpty()) {
                        if (strB.equals(B(mapK.getOrDefault("equipment_".concat(strI), mapK.getOrDefault("equipment_id_".concat(strI), ""))))) {
                            mapK.put("equipment_".concat(strI), "0");
                            mapK.put("equipment_id_".concat(strI), "0");
                            mapK.put("equip_id_".concat(strI), "0");
                        }
                        if ("3".equals(strI)) {
                            if (strB.equals(B(mapK.get("mount_id")))) {
                                mapK.put("mount_id", "0");
                            }
                            if (strB.equals(B(mapK.get("horse_id")))) {
                                mapK.put("horse_id", "0");
                            }
                        }
                    }
                    map2.put("general_pk_id", null);
                    map2.put("general_id", null);
                    map2.put("user_general_id", null);
                    map2.put("is_wear", "0");
                    map2.put("wear", "0");
                    ((Set) fVar.f1809b).add(strR);
                    ((Set) fVar.f1811d).add(strB);
                }
            }
        }
    }

    public static ArrayList f(List list) {
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            LinkedHashMap linkedHashMapV = v((Map) it.next());
            String strB = B(linkedHashMapV.getOrDefault("general_pk_id", linkedHashMapV.getOrDefault("pk_id", "")));
            String strB2 = B(linkedHashMapV.getOrDefault("general_position", linkedHashMapV.getOrDefault("position", linkedHashMapV.getOrDefault("team_position", ""))));
            if (!strB.isEmpty() && !"0".equals(strB) && !"null".equalsIgnoreCase(strB) && linkedHashSet.add(strB) && (strB2.isEmpty() || linkedHashSet2.add(strB2))) {
                arrayList.add(linkedHashMapV);
            }
        }
        return arrayList;
    }

    public static ArrayList g(Map map) {
        ArrayList<Map> arrayListC0 = p5.c0(f(w1.f0("TeamGeneral", map)), map);
        for (Map map2 : arrayListC0) {
            String strR = r(map2);
            ArrayList arrayList = new ArrayList();
            for (Map map3 : w1.f0("Equipment", map)) {
                if (strR.equals(w(map3))) {
                    arrayList.add(map3);
                }
            }
            arrayList.sort(new n.b(15));
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String strB = B(((Map) it.next()).get("pk_id"));
                if (!strB.isEmpty()) {
                    arrayList2.add(strB);
                }
            }
            map2.put("equipments_list", arrayList2);
            ArrayList arrayList3 = new ArrayList();
            for (Map map4 : w1.f0("General", map)) {
                if (strR.equals(B(map4.get("major_pk_id")))) {
                    String strB2 = B(map4.get("pk_id"));
                    if (!strB2.isEmpty()) {
                        arrayList3.add(p5.z0("general_pk_id", strB2, "position", B(map4.getOrDefault("position", "1")), "lieutenant_skill_id", B(map4.getOrDefault("lieutenant_skill_id", ""))));
                    }
                }
            }
            arrayList3.sort(new n.b(16));
            map2.put("assist_general_list", arrayList3);
        }
        return arrayListC0;
    }

    public static ArrayList h(Map map) {
        Object obj = map.get("most_team_info");
        ArrayList arrayList = new ArrayList();
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    Map map2 = (Map) obj2;
                    arrayList.add(s(y(map2.get("snapshot_version")), String.valueOf(map2.getOrDefault("team_id", String.valueOf(arrayList.size() + 1))), j(map2)));
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(s(2, "1", g(map)));
        }
        map.put("most_team_info", arrayList);
        return arrayList;
    }

    public static String i(Map map) {
        char cCharAt;
        String strB = B(map.getOrDefault("equipment_pos", map.getOrDefault("equipment_type", map.getOrDefault("pos", ""))));
        if (p(strB)) {
            return strB;
        }
        String strB2 = B(map.getOrDefault("equipment_id", map.getOrDefault("id", "")));
        return (!strB2.startsWith("2") || strB2.length() < 2 || (cCharAt = strB2.charAt(1)) < '1' || cCharAt > '4') ? "" : String.valueOf(cCharAt);
    }

    public static ArrayList j(Map map) {
        Object obj = map.get("team");
        if (!(obj instanceof List)) {
            Object obj2 = map.get("data");
            if (obj2 instanceof Map) {
                obj = ((Map) obj2).get("team");
            }
        }
        if (!(obj instanceof List)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj3 : (List) obj) {
            if (obj3 instanceof Map) {
                arrayList.add(v((Map) obj3));
            }
        }
        return arrayList;
    }

    public static Map k(String str, String str2, Map map) {
        if (!p(str2)) {
            return null;
        }
        for (Map map2 : w1.f0(str, map)) {
            if (str2.equals(B(map2.get("pk_id")))) {
                return map2;
            }
        }
        return null;
    }

    public static ArrayList l(String str, ArrayList arrayList, Map map) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map mapK = k(str, (String) it.next(), map);
            if (mapK != null) {
                arrayList2.add(mapK);
            }
        }
        return arrayList2;
    }

    public static boolean n(String str, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((Map) it.next()).containsKey(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean o(String str) {
        return "team.getMostTeamInfo".equals(str) || "team.addTeamInfo".equals(str) || "team.saveTeamInfo".equals(str) || "team.loadTeamInfo".equals(str);
    }

    public static boolean p(String str) {
        return (str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) ? false : true;
    }

    public static List q(Object obj) {
        return obj instanceof List ? (List) obj : new ArrayList();
    }

    public static String r(Map map) {
        return B(map.getOrDefault("general_pk_id", map.getOrDefault("pk_id", "")));
    }

    public static LinkedHashMap s(int i2, String str, ArrayList arrayList) {
        ArrayList arrayListF = f(arrayList);
        LinkedHashMap linkedHashMapR = c.a.r("team_id", str, "id", str);
        linkedHashMapR.put("data", p5.z0("team", arrayListF, new Object[0]));
        linkedHashMapR.put("team", arrayListF);
        linkedHashMapR.put("Ability", 0);
        linkedHashMapR.put("Fighting", 0);
        if (i2 > 0) {
            linkedHashMapR.put("snapshot_version", Integer.valueOf(i2));
        }
        return linkedHashMapR;
    }

    public static LinkedHashMap t(ArrayList arrayList) {
        return p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList());
    }

    public static ArrayList u(int i2, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            ArrayList arrayListL0 = p5.L0(i2, j(map));
            linkedHashMap.put("team", arrayListL0);
            linkedHashMap.put("data", p5.z0("team", arrayListL0, new Object[0]));
            arrayList2.add(linkedHashMap);
        }
        return arrayList2;
    }

    public static LinkedHashMap v(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        String strB = B(linkedHashMap.getOrDefault("pk_id", ""));
        String strB2 = B(linkedHashMap.getOrDefault("general_pk_id", ""));
        if (strB2.isEmpty()) {
            strB2 = strB;
        }
        String strB3 = B(linkedHashMap.getOrDefault("general_position", linkedHashMap.getOrDefault("position", "")));
        if (!strB.isEmpty()) {
            linkedHashMap.put("pk_id", strB);
        }
        if (!strB2.isEmpty()) {
            linkedHashMap.put("general_pk_id", strB2);
        }
        if (!strB3.isEmpty()) {
            linkedHashMap.put("position", strB3);
            linkedHashMap.put("general_position", strB3);
            linkedHashMap.put("team_position", strB3);
        }
        if (!linkedHashMap.containsKey("skill_list")) {
            linkedHashMap.put("skill_list", new ArrayList());
        }
        if (!linkedHashMap.containsKey("equipments_list")) {
            linkedHashMap.put("equipments_list", new ArrayList());
        }
        if (!linkedHashMap.containsKey("assist_general_list")) {
            linkedHashMap.put("assist_general_list", new ArrayList());
        }
        return linkedHashMap;
    }

    public static String w(Map map) {
        String strB = B(map.getOrDefault("general_pk_id", map.getOrDefault("user_general_id", map.getOrDefault("general_id", ""))));
        return p(strB) ? strB : "";
    }

    public static String x(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return (strValueOf.isEmpty() || "null".equals(strValueOf)) ? str2 : strValueOf;
    }

    public static int y(Object obj) {
        if (obj == null) {
            obj = "0";
        }
        return w1.l2(String.valueOf(obj), 0);
    }

    public static ArrayList z(Object obj) {
        ArrayList arrayList = new ArrayList();
        Iterator it = q(obj).iterator();
        while (it.hasNext()) {
            String strB = B(it.next());
            if (p(strB) && !arrayList.contains(strB)) {
                arrayList.add(strB);
            }
        }
        return arrayList;
    }

    public final LinkedHashMap c(String str, Map map, Map map2, String... strArr) {
        k0 k0Var = this.f1043a;
        return p5.u1(k0Var.f904d.j(map2, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map), k0Var.i(k0Var.b(), "user_energy", map), k0Var.i(k0Var.d(), "user_power", map), k0Var.j(k0Var.a(), map), str, map), strArr));
    }

    /* JADX WARN: Code duplicated, block: B:158:0x045c A[PHI: r44 r47
      0x045c: PHI (r44v17 java.lang.String) = (r44v19 java.lang.String), (r44v19 java.lang.String), (r44v21 java.lang.String) binds: [B:153:0x044f, B:155:0x0457, B:149:0x043a] A[DONT_GENERATE, DONT_INLINE]
      0x045c: PHI (r47v8 java.lang.String) = (r47v10 java.lang.String), (r47v10 java.lang.String), (r47v11 java.lang.String) binds: [B:153:0x044f, B:155:0x0457, B:149:0x043a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:161:0x0460  */
    /* JADX WARN: Code duplicated, block: B:247:0x06d2  */
    public final byte[] m(String str, Map map) {
        k0 k0Var;
        h5 h5Var;
        String str2;
        Object obj;
        LinkedHashMap linkedHashMapC;
        LinkedHashMap linkedHashMapC2;
        int i2;
        String str3;
        ArrayList arrayList;
        String str4;
        int i3;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        Serializable serializable;
        String str13;
        String str14;
        boolean z;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        Iterator it;
        String str24;
        String str25;
        Iterator it2;
        String strB;
        LinkedHashMap linkedHashMapA;
        String str26;
        String str27;
        String str28;
        String str29;
        String str30;
        boolean z2;
        Object obj2;
        String str31;
        String str32;
        String str33;
        if (!o(str)) {
            return null;
        }
        k0 k0Var2 = this.f1043a;
        String strE = k0Var2.e(map);
        h5 h5Var2 = k0Var2.f904d;
        Map mapW0 = h5Var2.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        com.sgscq.vpn.cloud.m0.Y1(strE, mapW0, map, k0Var2.f903c);
        int iG0 = h5Var2.g0(mapW0);
        String str34 = "id";
        String str35 = "team_id";
        String str36 = "TeamGeneral";
        if (!"team.addTeamInfo".equals(str)) {
            k0Var = k0Var2;
            h5Var = h5Var2;
            if ("team.saveTeamInfo".equals(str)) {
                ArrayList arrayListH = h(mapW0);
                int i4 = 1;
                int iMax = Math.max(1, y(x("team_id", "1", map)));
                while (arrayListH.size() < iMax) {
                    arrayListH.add(s(0, String.valueOf(arrayListH.size() + i4), new ArrayList()));
                    i4 = 1;
                }
                int i5 = iMax - 1;
                arrayListH.set(i5, s(2, String.valueOf(iMax), g(mapW0)));
                mapW0.put("most_team_info", arrayListH);
                ArrayList arrayListU = u(iG0, arrayListH);
                LinkedHashMap linkedHashMapC3 = C();
                linkedHashMapC3.put("team_id", String.valueOf(iMax));
                linkedHashMapC3.put("team_info", arrayListU.get(i5));
                linkedHashMapC3.put("most_team_info", arrayListU);
                linkedHashMapC3.put("cmn_modules", "TeamGeneral");
                linkedHashMapC3.put("cmn", c(strE, mapW0, mapW0, "TeamGeneral"));
                linkedHashMapC2 = linkedHashMapC3;
            } else {
                if ("team.loadTeamInfo".equals(str)) {
                    ArrayList arrayListH2 = h(mapW0);
                    int iMax2 = Math.max(1, y(x("team_id", "1", map)));
                    Map mapS = iMax2 <= arrayListH2.size() ? (Map) arrayListH2.get(iMax2 - 1) : s(0, String.valueOf(iMax2), new ArrayList());
                    ArrayList arrayListJ = j(mapS);
                    ArrayList arrayListF = f(w1.f0("TeamGeneral", mapW0));
                    mapW0.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", f(arrayListJ)));
                    m.f fVar = new m.f();
                    boolean z3 = y(mapS.get("snapshot_version")) >= 2;
                    String str37 = "skill_list";
                    boolean z4 = z3 || n("skill_list", arrayListJ);
                    String str38 = "equipments_list";
                    boolean z5 = z3 || n("equipments_list", arrayListJ);
                    String str39 = "assist_general_list";
                    boolean z6 = z3 || n("assist_general_list", arrayListJ);
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    Iterator it3 = arrayListJ.iterator();
                    while (it3.hasNext()) {
                        linkedHashSet.add(r((Map) it3.next()));
                        str35 = str35;
                    }
                    String str40 = str35;
                    Iterator it4 = linkedHashSet.iterator();
                    while (true) {
                        boolean zHasNext = it4.hasNext();
                        i2 = iMax2;
                        str3 = "ls_value";
                        arrayList = arrayListH2;
                        str4 = "ls_type";
                        i3 = iG0;
                        str5 = "skill_type_lieutenant";
                        str6 = str34;
                        str7 = "lieutenant_skill_id";
                        str8 = str36;
                        str9 = "0";
                        str10 = str39;
                        str11 = "";
                        str12 = str38;
                        serializable = fVar.f1809b;
                        str13 = str37;
                        str14 = "General";
                        z = z6;
                        str15 = "major_pk_id";
                        if (!zHasNext) {
                            break;
                        }
                        Iterator it5 = it4;
                        String str41 = (String) it4.next();
                        ArrayList arrayList2 = arrayListF;
                        Map mapK = k("General", str41, mapW0);
                        if (mapK != null) {
                            String strB2 = B(mapK.get("major_pk_id"));
                            if (p(strB2)) {
                                d(mapK);
                                Set set = (Set) serializable;
                                set.add(str41);
                                Map mapK2 = k("General", strB2, mapW0);
                                if (mapK2 != null) {
                                    mapK2.put("lieutenant_skill_id", "");
                                    mapK2.put("skill_type_lieutenant", "");
                                    mapK2.put("ls_type", "0");
                                    mapK2.put("ls_value", "0");
                                }
                                set.add(strB2);
                            }
                        }
                        arrayListF = arrayList2;
                        iMax2 = i2;
                        arrayListH2 = arrayList;
                        iG0 = i3;
                        str34 = str6;
                        str36 = str8;
                        str39 = str10;
                        str38 = str12;
                        str37 = str13;
                        z6 = z;
                        it4 = it5;
                    }
                    ArrayList arrayList3 = arrayListF;
                    String str42 = "BuddyGeneral";
                    Iterator it6 = w1.f0("BuddyGeneral", mapW0).iterator();
                    while (true) {
                        str16 = str42;
                        str17 = "general_pk_id";
                        str18 = str3;
                        str19 = "pk_id";
                        if (!it6.hasNext()) {
                            break;
                        }
                        Iterator it7 = it6;
                        Map map2 = (Map) it6.next();
                        String str43 = str4;
                        String strB3 = B(map2.get("pk_id"));
                        String str44 = str5;
                        String strB4 = B(map2.get("general_pk_id"));
                        String str45 = str7;
                        String str46 = str15;
                        String strB5 = B(map2.get("suspended_general_pk_id"));
                        if (!p(strB3)) {
                            String str47 = p(strB5) ? strB5 : strB4;
                            if (p(str47)) {
                                if (linkedHashSet.contains(str47)) {
                                    if (!str47.equals(strB5)) {
                                        map2.put("suspended_general_pk_id", str47);
                                        fVar.f1808a = true;
                                    }
                                    if (p(strB4)) {
                                        map2.put("general_pk_id", "");
                                        fVar.f1808a = true;
                                    }
                                } else {
                                    map2.put("pk_id", str47);
                                    map2.put("general_pk_id", str47);
                                    map2.remove("suspended_general_pk_id");
                                    fVar.f1808a = true;
                                }
                            }
                        } else if (linkedHashSet.contains(strB3)) {
                            map2.put("suspended_general_pk_id", strB3);
                            map2.put("pk_id", "");
                            map2.put("general_pk_id", "");
                            fVar.f1808a = true;
                        } else {
                            if (!strB3.equals(strB4)) {
                                map2.put("general_pk_id", strB3);
                                fVar.f1808a = true;
                            }
                            if (map2.remove("suspended_general_pk_id") != null) {
                                fVar.f1808a = true;
                            }
                        }
                        str7 = str45;
                        str42 = str16;
                        str3 = str18;
                        it6 = it7;
                        str4 = str43;
                        str5 = str44;
                        str15 = str46;
                    }
                    String str48 = str4;
                    String str49 = str15;
                    String str50 = str5;
                    String str51 = str7;
                    Object obj3 = fVar.f1810c;
                    String str52 = "Skill";
                    if (z4) {
                        Iterator it8 = arrayListJ.iterator();
                        while (it8.hasNext()) {
                            String strR = r((Map) it8.next());
                            Iterator it9 = it8;
                            Map mapK3 = k(str14, strR, mapW0);
                            for (Map map3 : w1.f0(str52, mapW0)) {
                                str52 = str52;
                                str11 = str11;
                                if (strR.equals(B(map3.get("general_pk_id")))) {
                                    String strB6 = B(map3.get(str19));
                                    if (mapK3 != null) {
                                        str29 = str19;
                                        str30 = str14;
                                        z2 = B(map3.get(str19)).equals(B(mapK3.get("general_naturalskill_id")));
                                        if (!z2) {
                                            map3.put("general_pk_id", 0);
                                            map3.put("position", "0");
                                            map3.put("pos", "0");
                                            map3.put("skill_position", "0");
                                            ((Set) obj3).add(strB6);
                                            ((Set) serializable).add(strR);
                                        }
                                        str14 = str30;
                                        str19 = str29;
                                    } else {
                                        str29 = str19;
                                        str30 = str14;
                                    }
                                    String strB7 = B(map3.get("is_natural"));
                                    if ("1".equals(strB7) || "true".equalsIgnoreCase(strB7)) {
                                    }
                                    if (!z2) {
                                        map3.put("general_pk_id", 0);
                                        map3.put("position", "0");
                                        map3.put("pos", "0");
                                        map3.put("skill_position", "0");
                                        ((Set) obj3).add(strB6);
                                        ((Set) serializable).add(strR);
                                    }
                                    str14 = str30;
                                    str19 = str29;
                                }
                            }
                            it8 = it9;
                        }
                    }
                    String str53 = str19;
                    String str54 = str52;
                    String str55 = str14;
                    String str56 = str11;
                    if (z5) {
                        e(mapW0, arrayList3, fVar);
                        e(mapW0, arrayListJ, fVar);
                    }
                    if (z) {
                        Iterator it10 = arrayListJ.iterator();
                        while (it10.hasNext()) {
                            String strR2 = r((Map) it10.next());
                            String str57 = str55;
                            boolean z7 = false;
                            for (Map map4 : w1.f0(str57, mapW0)) {
                                Iterator it11 = it10;
                                if (strR2.equals(B(map4.get(str49)))) {
                                    String strB8 = B(map4.get(str53));
                                    d(map4);
                                    ((Set) serializable).add(strB8);
                                    z7 = true;
                                }
                                it10 = it11;
                            }
                            Iterator it12 = it10;
                            String str58 = str53;
                            if (z7) {
                                Map mapK4 = k(str57, strR2, mapW0);
                                if (mapK4 == null) {
                                    str26 = str51;
                                    str27 = str56;
                                    str28 = str18;
                                } else {
                                    str26 = str51;
                                    str27 = str56;
                                    mapK4.put(str26, str27);
                                    mapK4.put(str50, str27);
                                    mapK4.put(str48, "0");
                                    str28 = str18;
                                    mapK4.put(str28, "0");
                                }
                                ((Set) serializable).add(strR2);
                            } else {
                                str26 = str51;
                                str27 = str56;
                                obj3 = obj3;
                                str28 = str18;
                            }
                            str18 = str28;
                            str53 = str58;
                            str55 = str57;
                            str56 = str27;
                            it10 = it12;
                            obj3 = obj3;
                            str51 = str26;
                        }
                    }
                    String str59 = str51;
                    String str60 = str55;
                    String str61 = str56;
                    String str62 = str53;
                    Object obj4 = obj3;
                    if (z4) {
                        Iterator it13 = arrayListJ.iterator();
                        while (it13.hasNext()) {
                            Map map5 = (Map) it13.next();
                            String strR3 = r(map5);
                            Iterator it14 = it13;
                            String str63 = str13;
                            Iterator it15 = q(map5.get(str63)).iterator();
                            while (true) {
                                str13 = str63;
                                if (it15.hasNext()) {
                                    Object next = it15.next();
                                    Iterator it16 = it15;
                                    String strA = a(next, str62, "skill_pk_id");
                                    String str64 = str61;
                                    String str65 = str9;
                                    str54 = str54;
                                    Map mapK5 = k(str54, strA, mapW0);
                                    if (mapK5 != null && k(str60, strR3, mapW0) != null) {
                                        fVar.f(com.sgscq.vpn.cloud.m0.s(mapW0, A("user_general_id", strR3, "new_skill_id", strA, "skill_pos", b(next, B(mapK5.getOrDefault("position", mapK5.getOrDefault("pos", "2")))))));
                                    }
                                    it15 = it16;
                                    str63 = str13;
                                    str9 = str65;
                                    str61 = str64;
                                }
                            }
                            it13 = it14;
                        }
                    }
                    String str66 = str61;
                    String str67 = str9;
                    if (z5) {
                        Iterator it17 = arrayListJ.iterator();
                        while (it17.hasNext()) {
                            Map map6 = (Map) it17.next();
                            String strR4 = r(map6);
                            String str68 = str12;
                            Iterator it18 = q(map6.get(str68)).iterator();
                            while (it18.hasNext()) {
                                Iterator it19 = it17;
                                String strA2 = a(it18.next(), str62, "equipment_pk_id", "equipment_id");
                                if (k("Equipment", strA2, mapW0) != null && k(str60, strR4, mapW0) != null) {
                                    fVar.f(com.sgscq.vpn.cloud.m0.q(mapW0, A("user_general_id", strR4, "new_equipment_id", strA2)));
                                }
                                it17 = it19;
                            }
                            str12 = str68;
                        }
                    }
                    String str69 = "skill_id";
                    if (z) {
                        Iterator it20 = arrayListJ.iterator();
                        while (it20.hasNext()) {
                            Map map7 = (Map) it20.next();
                            String strR5 = r(map7);
                            String str70 = str10;
                            Iterator it21 = q(map7.get(str70)).iterator();
                            while (it21.hasNext()) {
                                Object next2 = it21.next();
                                Iterator it22 = it20;
                                String strA3 = a(next2, "general_pk_id", str62, "lieutenant_pk_id");
                                if (k(str60, strR5, mapW0) == null || k(str60, strA3, mapW0) == null) {
                                    it2 = it21;
                                } else {
                                    String strB9 = b(next2, "1");
                                    String[] strArr = {str59, "skill_id"};
                                    if (next2 instanceof Map) {
                                        Map map8 = (Map) next2;
                                        int i6 = 0;
                                        it2 = it21;
                                        while (true) {
                                            if (i6 < 2) {
                                                strB = B(map8.get(strArr[i6]));
                                                if (p(strB)) {
                                                    break;
                                                }
                                                i6++;
                                            }
                                        }
                                        linkedHashMapA = A("major_user_general_id", strR5, "lieutenant_user_general_id", strA3, "position", strB9);
                                        if (!strB.isEmpty()) {
                                            linkedHashMapA.put(str59, strB);
                                        }
                                        fVar.f(com.sgscq.vpn.cloud.m0.r(mapW0, linkedHashMapA));
                                    } else {
                                        it2 = it21;
                                    }
                                    strB = str66;
                                    linkedHashMapA = A("major_user_general_id", strR5, "lieutenant_user_general_id", strA3, "position", strB9);
                                    if (!strB.isEmpty()) {
                                        linkedHashMapA.put(str59, strB);
                                    }
                                    fVar.f(com.sgscq.vpn.cloud.m0.r(mapW0, linkedHashMapA));
                                }
                                it20 = it22;
                                it21 = it2;
                                str62 = str62;
                            }
                            str10 = str70;
                        }
                    }
                    if (fVar.f1808a) {
                        str20 = str8;
                        Iterator it23 = w1.f0(str20, mapW0).iterator();
                        while (it23.hasNext()) {
                            String strR6 = r((Map) it23.next());
                            if (p(strR6)) {
                                ((Set) serializable).add(strR6);
                            }
                        }
                    } else {
                        str20 = str8;
                    }
                    Set set2 = (Set) serializable;
                    Iterator it24 = set2.iterator();
                    while (it24.hasNext()) {
                        String str71 = (String) it24.next();
                        Map mapK6 = k(str60, str71, mapW0);
                        if (mapK6 == null) {
                            str23 = str69;
                            it = it24;
                            str24 = str6;
                            str22 = str54;
                        } else {
                            ArrayList arrayList4 = new ArrayList();
                            str22 = str54;
                            for (Map map9 : w1.f0(str22, mapW0)) {
                                Iterator it25 = it24;
                                if (str71.equals(B(map9.get(str17)))) {
                                    String strB10 = B(map9.get(str69));
                                    if (strB10.isEmpty()) {
                                        str25 = str6;
                                        strB10 = B(map9.get(str25));
                                    } else {
                                        str25 = str6;
                                    }
                                    if (!f.c(strB10)) {
                                        arrayList4.add(new LinkedHashMap(map9));
                                    }
                                } else {
                                    str69 = str69;
                                    str25 = str6;
                                }
                                str6 = str25;
                                str69 = str69;
                                it24 = it25;
                            }
                            str23 = str69;
                            it = it24;
                            str24 = str6;
                            arrayList4.sort(new n.b(14));
                            mapK6.put("gSkill", arrayList4);
                            mapK6.put("general_skills", arrayList4);
                        }
                        Map mapK7 = k(str60, str71, mapW0);
                        if (mapK7 != null) {
                            Iterator it26 = w1.f0(str20, mapW0).iterator();
                            while (it26.hasNext()) {
                                Map map10 = (Map) it26.next();
                                if (str71.equals(r(map10))) {
                                    int i7 = 1;
                                    while (i7 <= 4) {
                                        String str72 = str24;
                                        String str73 = str17;
                                        Iterator it27 = it26;
                                        String str74 = str20;
                                        String str75 = str67;
                                        String strB11 = B(mapK7.getOrDefault(a.b0.a("equipment_", i7), mapK7.getOrDefault("equipment_id_" + i7, str75)));
                                        if (!p(strB11)) {
                                            strB11 = str75;
                                        }
                                        map10.put("equipment_" + i7, strB11);
                                        map10.put("equipment_id_" + i7, strB11);
                                        map10.put("equip_id_" + i7, strB11);
                                        i7++;
                                        str67 = str75;
                                        str17 = str73;
                                        str24 = str72;
                                        it26 = it27;
                                        str20 = str74;
                                    }
                                    String str76 = str20;
                                    String str77 = str67;
                                    map10.put("mount_id", B(mapK7.getOrDefault("mount_id", mapK7.getOrDefault("horse_id", str77))));
                                    map10.put("horse_id", B(mapK7.getOrDefault("horse_id", mapK7.getOrDefault("mount_id", str77))));
                                    str17 = str17;
                                    str24 = str24;
                                    it26 = it26;
                                    str20 = str76;
                                }
                            }
                        }
                        String str78 = str20;
                        str6 = str24;
                        String str79 = str17;
                        String str80 = str67;
                        w1.a1(null).F2(str71, mapW0);
                        str67 = str80;
                        str54 = str22;
                        str69 = str23;
                        it24 = it;
                        str17 = str79;
                        str20 = str78;
                    }
                    String str81 = str20;
                    String str82 = str54;
                    ArrayList arrayListU2 = u(i3, arrayList);
                    ArrayList arrayListL0 = p5.L0(i3, arrayListJ);
                    LinkedHashMap linkedHashMapC4 = C();
                    linkedHashMapC4.put(str40, String.valueOf(i2));
                    linkedHashMapC4.put("team_info", arrayListU2);
                    linkedHashMapC4.put("team", arrayListL0);
                    linkedHashMapC4.put("return_info", p5.z0("this_team_info", p5.z0(str40, String.valueOf(i2), "team", arrayListL0), new Object[0]));
                    linkedHashMapC4.put("changed_general_pk_ids", new ArrayList(set2));
                    Set set3 = (Set) obj4;
                    linkedHashMapC4.put("changed_skill_ids", new ArrayList(set3));
                    Set set4 = (Set) fVar.f1811d;
                    linkedHashMapC4.put("changed_equipment_pk_ids", new ArrayList(set4));
                    linkedHashMapC4.put("buddy_changed", Boolean.valueOf(fVar.f1808a));
                    ArrayList arrayList5 = new ArrayList();
                    if (!set2.isEmpty()) {
                        arrayList5.add(str60);
                    }
                    if (!set3.isEmpty()) {
                        arrayList5.add(str82);
                    }
                    if (!set4.isEmpty()) {
                        arrayList5.add("Equipment");
                    }
                    arrayList5.add(str81);
                    if (fVar.f1808a) {
                        str21 = str16;
                        arrayList5.add(str21);
                    } else {
                        str21 = str16;
                    }
                    StringBuilder sb = new StringBuilder();
                    Iterator it28 = arrayList5.iterator();
                    if (it28.hasNext()) {
                        while (true) {
                            sb.append((CharSequence) it28.next());
                            if (!it28.hasNext()) {
                                break;
                            }
                            sb.append((CharSequence) ",");
                        }
                    }
                    linkedHashMapC4.put("cmn_modules", sb.toString());
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    ArrayList arrayListZ = z(linkedHashMapC4.get("changed_general_pk_ids"));
                    ArrayList arrayListZ2 = z(linkedHashMapC4.get("changed_skill_ids"));
                    ArrayList arrayListZ3 = z(linkedHashMapC4.get("changed_equipment_pk_ids"));
                    if (!arrayListZ.isEmpty()) {
                        linkedHashMap.put(str60, t(l(str60, arrayListZ, mapW0)));
                    }
                    if (!arrayListZ2.isEmpty()) {
                        linkedHashMap.put(str82, t(l(str82, arrayListZ2, mapW0)));
                    }
                    if (!arrayListZ3.isEmpty()) {
                        linkedHashMap.put("Equipment", t(l("Equipment", arrayListZ3, mapW0)));
                    }
                    linkedHashMap.put(str81, p5.z0("del", new ArrayList(), "upd", p5.c0(w1.f0(str81, mapW0), mapW0), "add", new ArrayList()));
                    if (Boolean.TRUE.equals(linkedHashMapC4.get("buddy_changed"))) {
                        linkedHashMap.put(str21, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList(w1.f0(str21, mapW0))));
                    }
                    str2 = strE;
                    linkedHashMapC = c(str2, mapW0, linkedHashMap, String.valueOf(linkedHashMapC4.get("cmn_modules")).split(","));
                    linkedHashMapC2 = linkedHashMapC4;
                    obj = "cmn";
                } else {
                    str2 = strE;
                    ArrayList arrayListH3 = h(mapW0);
                    mapW0.put("most_team_info", arrayListH3);
                    LinkedHashMap linkedHashMapC5 = C();
                    linkedHashMapC5.put("team_info", u(iG0, arrayListH3));
                    linkedHashMapC5.put("cmn_modules", "TeamGeneral");
                    obj = "cmn";
                    linkedHashMapC = c(str2, mapW0, mapW0, "TeamGeneral");
                    linkedHashMapC2 = linkedHashMapC5;
                }
                linkedHashMapC2.put(obj, linkedHashMapC);
            }
            h5Var.S0(str2, mapW0);
            return k0Var.n(p5.s1(linkedHashMapC2));
        }
        ArrayList arrayListH4 = h(mapW0);
        k0Var = k0Var2;
        int iMax3 = Math.max(1, y(x("team_id", x("id", String.valueOf(arrayListH4.size() + 1), map), map)));
        if (iMax3 > 5) {
            str33 = "阵容未配置";
            h5Var = h5Var2;
            obj2 = "cmn";
        } else {
            int iY = y(mapW0.get("user_gold"));
            boolean z8 = iMax3 > arrayListH4.size();
            h5Var = h5Var2;
            obj2 = "cmn";
            int i8 = (iMax3 < 1 || iMax3 >= 6) ? 0 : f1041b[iMax3];
            int i9 = (iMax3 < 1 || iMax3 >= 6) ? 0 : f1042c[iMax3];
            if (!z8 || y(mapW0.get("user_level")) >= i9) {
                if (!z8 || iY >= i8) {
                    while (arrayListH4.size() < iMax3) {
                        arrayListH4.add(s(0, String.valueOf(arrayListH4.size() + 1), new ArrayList()));
                        strE = strE;
                    }
                    str31 = strE;
                    mapW0.put("most_team_info", arrayListH4);
                    if (z8) {
                        mapW0.put("user_gold", Integer.valueOf(iY - i8));
                    }
                    linkedHashMapC2 = C();
                    linkedHashMapC2.put("team_id", String.valueOf(iMax3));
                    linkedHashMapC2.put("team_info", u(iG0, arrayListH4));
                    linkedHashMapC2.put("cmn_modules", "Player,TeamGeneral");
                } else {
                    str32 = "元宝不足";
                }
                strE = str31;
                linkedHashMapC2.put(obj2, c(strE, mapW0, mapW0, "Player", "TeamGeneral"));
            } else {
                str32 = "等级不足";
            }
            str33 = str32;
        }
        linkedHashMapC2 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str33);
        str31 = strE;
        strE = str31;
        linkedHashMapC2.put(obj2, c(strE, mapW0, mapW0, "Player", "TeamGeneral"));
        str2 = strE;
        h5Var.S0(str2, mapW0);
        return k0Var.n(p5.s1(linkedHashMapC2));
    }
}
