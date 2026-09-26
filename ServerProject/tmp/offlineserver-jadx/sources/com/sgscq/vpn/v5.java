package com.sgscq.vpn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class v5 {
    public static final ConcurrentHashMap x = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1464f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f1465g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinkedHashMap f1466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f1467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f1468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f1469k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List f1470l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f1471m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f1472n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List f1473o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final List f1474p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f1475q;
    public Map r;
    public final List s;
    public final int t;
    public final int u;
    public final boolean v;
    public final u5 w;

    public v5(String str, String str2, int i2, int i3, int i4, Map map, String str3, List list, int i5, int i6, u5 u5Var) {
        this.f1459a = str;
        this.f1460b = str2;
        this.f1461c = i2;
        this.f1462d = i3;
        this.f1463e = i4;
        this.f1464f = false;
        this.f1465g = "";
        this.f1466h = c(map);
        this.f1467i = Collections.emptyList();
        this.f1468j = Collections.emptyList();
        this.f1469k = Collections.emptyList();
        this.f1470l = Collections.emptyList();
        this.f1471m = Collections.emptyList();
        this.f1472n = Collections.emptyList();
        this.f1473o = Collections.emptyList();
        this.f1474p = Collections.emptyList();
        this.f1475q = (str3 == null || str3.isEmpty()) ? "131001" : str3;
        this.s = Collections.unmodifiableList(list == null ? new ArrayList() : new ArrayList(list));
        this.t = Math.max(0, i5);
        this.u = Math.max(0, i6);
        this.v = true;
        this.w = u5Var;
    }

    public static LinkedHashMap c(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map == null) {
            return linkedHashMap;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) x.putIfAbsent(str, str);
            if (str2 != null) {
                str = str2;
            }
            linkedHashMap.put(str, e(entry.getValue()));
        }
        return linkedHashMap;
    }

    public static List d(List list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(c((Map) it.next()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static Object e(Object obj) {
        if (obj instanceof Map) {
            return c((Map) obj);
        }
        if (!(obj instanceof List)) {
            return obj;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(e(it.next()));
        }
        return arrayList;
    }

    public static ArrayList g(List list, LinkedHashSet linkedHashSet) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (linkedHashSet.contains(w("general_pk_id", w("user_general_id", w("owner_general_id", "", map), map), map))) {
                arrayList.add(c(map));
            }
        }
        return arrayList;
    }

    public static v5 h(com.sgscq.vpn.cloud.r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("云端对手档案为空");
        }
        String str = rVar.f472a;
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.isEmpty()) {
            throw new IllegalArgumentException("云端对手 ID 缺失");
        }
        String strConcat = "cloud_".concat(strTrim);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str2 = rVar.f473b;
        linkedHashMap.put("user_nickname", str2);
        linkedHashMap.put("nickname", str2);
        linkedHashMap.put("user_level", Integer.valueOf(rVar.f474c));
        linkedHashMap.put("user_vip_level", Integer.valueOf(rVar.f475d));
        double d2 = rVar.f476e;
        linkedHashMap.put("user_fighting", Double.valueOf(d2));
        linkedHashMap.put("fighting", Double.valueOf(d2));
        linkedHashMap.put("ladder_rank", Integer.valueOf(rVar.f477f));
        linkedHashMap.put("ladder_rank_verified_until_ms", Long.valueOf(rVar.f478g));
        linkedHashMap.put("govern", Integer.valueOf(rVar.f479h));
        linkedHashMap.put("TeamGeneral", q(rVar.f480i));
        linkedHashMap.put("BuddyGeneral", q(rVar.f481j));
        linkedHashMap.put("General", q(rVar.f482k));
        linkedHashMap.put("Skill", q(rVar.f483l));
        linkedHashMap.put("Equipment", q(rVar.f484m));
        v5 v5VarJ = j(strConcat, linkedHashMap);
        return new v5(v5VarJ.f1459a, v5VarJ.f1460b, v5VarJ.f1461c, v5VarJ.f1462d, v5VarJ.f1463e, false, "", v5VarJ.f1466h, v5VarJ.f1467i, v5VarJ.f1468j, v5VarJ.f1469k, v5VarJ.f1470l, v5VarJ.f1471m, v5VarJ.f1472n, v5VarJ.f1473o, v5VarJ.f1474p, true);
    }

    public static v5 i(Map map) {
        Boolean bool = Boolean.TRUE;
        if (!bool.equals(map.get("lazy_summary"))) {
            return new v5(w("id", "", map), w("nickname", "", map), l(map.get("level"), 1), l(map.get("fighting"), 1), l(map.get("base_rank"), 0), bool.equals(map.get("player_backed")), w("player_uid", "", map), (Map) map.get("player_info"), t(map.get("general_info")), t(map.get("team_info")), t(map.get("skill_info")), t(map.get("equipment_info")), t(map.get("gem_info")), t(map.get("combat_info")), t(map.get("buddy_info")), t(map.get("fight_team")));
        }
        String strW = w("id", "", map);
        String strW2 = w("nickname", "", map);
        int iL = l(map.get("level"), 1);
        int iL2 = l(map.get("fighting"), 1);
        int iL3 = l(map.get("base_rank"), 0);
        Map map2 = (Map) map.get("player_info");
        String strW3 = w("leader_general_id", "131001", map);
        Object obj = map.get("main_general_ids");
        ArrayList arrayList = new ArrayList();
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(it.next()));
            }
        }
        return n(strW, strW2, iL, iL2, iL3, map2, strW3, arrayList, l(map.get("team_size"), 0), l(map.get("deputy_count"), 0), null);
    }

    public static v5 j(String str, Map map) {
        String str2;
        String str3;
        boolean z;
        String str4;
        String str5;
        int iL;
        ArrayList arrayList;
        Map map2;
        String strW;
        String str6;
        String str7;
        int i2;
        String str8;
        ArrayList arrayList2;
        List<Map> listF0 = w1.f0("General", map);
        ArrayList<Map> arrayList3 = new ArrayList();
        Iterator it = w1.f0("TeamGeneral", map).iterator();
        while (it.hasNext()) {
            arrayList3.add(c((Map) it.next()));
        }
        arrayList3.sort(new n.b(6));
        List listF1 = w1.f0("BuddyGeneral", map);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it2 = arrayList3.iterator();
        while (true) {
            str2 = "general_pk_id";
            if (!it2.hasNext()) {
                break;
            }
            Map map3 = (Map) it2.next();
            String strW2 = w("general_pk_id", w("user_general_id", "", map3), map3);
            if (!strW2.isEmpty()) {
                linkedHashSet.add(strW2);
            }
        }
        Iterator it3 = listF1.iterator();
        while (true) {
            str3 = "pk_id";
            if (!it3.hasNext()) {
                break;
            }
            Map map4 = (Map) it3.next();
            String strW3 = w("pk_id", w("general_pk_id", w("user_general_id", "", map4), map4), map4);
            if (!strW3.isEmpty()) {
                linkedHashSet.add(strW3);
            }
        }
        if (linkedHashSet.isEmpty()) {
            for (Map map5 : listF0) {
                String strW4 = w("pk_id", w("general_pk_id", "", map5), map5);
                if (!strW4.isEmpty()) {
                    linkedHashSet.add(strW4);
                }
            }
        }
        do {
            Iterator it4 = listF0.iterator();
            z = false;
            while (true) {
                str4 = "major_pk_id";
                if (!it4.hasNext()) {
                    break;
                }
                Map map6 = (Map) it4.next();
                String strW5 = w("major_pk_id", "", map6);
                String strW6 = w("pk_id", w("general_pk_id", "", map6), map6);
                if (!strW6.isEmpty() && linkedHashSet.contains(strW5) && linkedHashSet.add(strW6)) {
                    z = true;
                }
            }
        } while (z);
        ArrayList<Map> arrayList4 = new ArrayList();
        for (Map map7 : listF0) {
            if (linkedHashSet.contains(w("pk_id", w("general_pk_id", "", map7), map7))) {
                arrayList4.add(c(map7));
            }
        }
        ArrayList arrayListG = g(w1.f0("Skill", map), linkedHashSet);
        ArrayList arrayListG2 = g(w1.f0("Equipment", map), linkedHashSet);
        List listEmptyList = Collections.emptyList();
        String str9 = "user_level";
        int iL2 = l(map.get("user_level"), l(map.get("level"), 1));
        String str10 = "fighting";
        String str11 = "fightPoint";
        int iL3 = l(map.get("user_fighting"), l(map.get("fighting"), l(map.get("fightPoint"), 1)));
        String str12 = "general_fighting";
        if (iL3 <= 1) {
            Iterator it5 = arrayList3.iterator();
            iL = 0;
            while (it5.hasNext()) {
                Map map8 = (Map) it5.next();
                iL += l(map8.get("general_fighting"), l(map8.get("fighting"), 0));
                it5 = it5;
                str11 = str11;
            }
            str5 = str11;
        } else {
            str5 = "fightPoint";
            iL = iL3;
        }
        String str13 = "user_nickname";
        String strW7 = w("user_nickname", w("nickname", "玩家", map), map);
        ArrayList arrayList5 = new ArrayList();
        for (Map map9 : arrayList3) {
            ArrayList arrayList6 = arrayList3;
            String str14 = str10;
            String strW8 = w(str2, w(str3, "", map9), map9);
            Iterator it6 = arrayList4.iterator();
            while (true) {
                if (!it6.hasNext()) {
                    str6 = str9;
                    str7 = str2;
                    i2 = iL;
                    str8 = str4;
                    arrayList2 = arrayList4;
                    break;
                }
                i2 = iL;
                Map map10 = (Map) it6.next();
                str6 = str9;
                if (strW8.equals(w(str3, "", map10))) {
                    LinkedHashMap linkedHashMapC = c(map10);
                    String[] strArr = {"position", "general_position", "team_position", str12};
                    int i3 = 0;
                    while (i3 < 4) {
                        String str15 = strArr[i3];
                        if (map9.containsKey(str15)) {
                            linkedHashMapC.put(str15, e(map9.get(str15)));
                        }
                        i3++;
                        strArr = strArr;
                    }
                    if (!linkedHashMapC.containsKey("position") && map9.containsKey("general_position")) {
                        linkedHashMapC.put("position", e(map9.get("general_position")));
                    }
                    ArrayList arrayList7 = new ArrayList();
                    for (Map map11 : arrayList4) {
                        if (strW8.equals(w(str4, "", map11))) {
                            arrayList7.add(c(map11));
                        }
                    }
                    arrayList7.sort(new n.b(7));
                    linkedHashMapC.put("bound_lieutenants", arrayList7);
                    ArrayList arrayList8 = new ArrayList();
                    Object obj = linkedHashMapC.get("gSkill");
                    if (obj instanceof List) {
                        Iterator it7 = ((List) obj).iterator();
                        while (it7.hasNext()) {
                            arrayList8.add(e(it7.next()));
                        }
                    }
                    ArrayList arrayList9 = new ArrayList();
                    Iterator it8 = arrayList8.iterator();
                    while (true) {
                        str8 = str4;
                        arrayList2 = arrayList4;
                        if (!it8.hasNext()) {
                            break;
                        }
                        Object next = it8.next();
                        Iterator it9 = it8;
                        if (next instanceof Map) {
                            Map map12 = (Map) next;
                            arrayList9.add(w("skill_id", w("id", "", map12), map12));
                        }
                        str4 = str8;
                        it8 = it9;
                        arrayList4 = arrayList2;
                    }
                    Iterator it10 = arrayListG.iterator();
                    while (it10.hasNext()) {
                        Map map13 = (Map) it10.next();
                        it10 = it10;
                        if (strW8.equals(w(str2, "", map13))) {
                            String str16 = str2;
                            String str17 = strW8;
                            if (l(map13.get("position"), l(map13.get("skill_position"), 1)) > 1) {
                                String strW9 = w("skill_id", w("id", "", map13), map13);
                                if (!strW9.isEmpty()) {
                                    if (!linkedHashMapC.containsKey("fate_skill_id")) {
                                        linkedHashMapC.put("fate_skill_id", strW9);
                                    }
                                    if (!arrayList9.contains(strW9)) {
                                        arrayList8.add(c(map13));
                                        arrayList9.add(strW9);
                                    }
                                }
                            }
                            str2 = str16;
                            strW8 = str17;
                        }
                    }
                    str7 = str2;
                    if (!arrayList8.isEmpty()) {
                        linkedHashMapC.put("gSkill", arrayList8);
                    }
                    arrayList5.add(linkedHashMapC);
                    break;
                }
                str9 = str6;
                iL = i2;
            }
            str3 = str3;
            str13 = str13;
            str12 = str12;
            str4 = str8;
            str9 = str6;
            arrayList3 = arrayList6;
            str10 = str14;
            iL = i2;
            iL2 = iL2;
            arrayList4 = arrayList2;
            str2 = str7;
        }
        String str18 = str9;
        int i4 = iL2;
        String str19 = str10;
        ArrayList arrayList10 = arrayList3;
        int i5 = iL;
        ArrayList arrayList11 = arrayList4;
        String str20 = str13;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (!(value instanceof Map) && !(value instanceof List)) {
                linkedHashMap.put((String) entry.getKey(), value);
            }
        }
        linkedHashMap.put("player_id", str);
        linkedHashMap.put("user_id", str);
        linkedHashMap.put("uid", str);
        linkedHashMap.put("account_uid", str);
        linkedHashMap.put("nickname", strW7);
        c.a.z(linkedHashMap, str20, strW7, i4, "player_level", i4, str18);
        linkedHashMap.put("level", Integer.valueOf(i4));
        linkedHashMap.put(str19, Integer.valueOf(i5));
        linkedHashMap.put("fight_point", Integer.valueOf(i5));
        linkedHashMap.put(str5, Integer.valueOf(i5));
        String[] strArr2 = {"general_skin", "user_general_skin"};
        int i6 = 0;
        while (true) {
            if (i6 >= 2) {
                arrayList = arrayList5;
                map2 = map;
                strW = "";
                break;
            }
            arrayList = arrayList5;
            map2 = map;
            Object obj2 = map2.get(strArr2[i6]);
            if (obj2 != null) {
                strW = String.valueOf(obj2).trim();
                if (!strW.isEmpty() && !"0".equals(strW) && !"null".equalsIgnoreCase(strW)) {
                    break;
                }
            }
            i6++;
            arrayList5 = arrayList;
        }
        if (strW.isEmpty() && !arrayList.isEmpty()) {
            strW = w("general_id", "", (Map) arrayList.get(0));
        }
        String strF = p5.F(strW, map2);
        if (!strF.isEmpty()) {
            linkedHashMap.put("general_skin", strF);
            linkedHashMap.put("user_general_skin", strF);
            linkedHashMap.put("head", strF);
            linkedHashMap.put("avatar", strF);
        }
        return new v5(str, strW7, i4, i5, l(map2.get("ladder_rank"), 1001), true, str, linkedHashMap, arrayList11, arrayList10, arrayListG, arrayListG2, listEmptyList, w1.f0("Combat", map2), listF1, arrayList);
    }

    public static int l(Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        try {
            return (int) Math.round(Double.parseDouble(String.valueOf(obj)));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static v5 n(String str, String str2, int i2, int i3, int i4, Map map, String str3, List list, int i5, int i6, u5 u5Var) {
        return new v5(str, str2, i2, i3, i4, map, str3, list, i5, i6, u5Var);
    }

    public static int p(int i2, List list) {
        if (list == null) {
            return i2;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            i2 = Math.max(i2, l(map.get("general_fighting"), l(map.get("fighting"), 0)));
        }
        return i2;
    }

    public static LinkedHashMap q(List list) {
        ArrayList arrayList = new ArrayList();
        Object[] objArr = new Object[4];
        objArr[0] = "upd";
        objArr[1] = new ArrayList();
        objArr[2] = "add";
        objArr[3] = list == null ? new ArrayList() : d(list);
        return p5.z0("del", arrayList, objArr);
    }

    public static List t(Object obj) {
        return obj instanceof List ? (List) obj : new ArrayList();
    }

    public static String w(String str, String str2, Map map) {
        if (map == null || map.get(str) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(map.get(str));
        return (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) ? str2 : strValueOf;
    }

    public final v5 a(com.sgscq.vpn.cloud.h0 h0Var) {
        return n(this.f1459a, this.f1460b, this.f1461c, this.f1462d, this.f1463e, this.f1466h, this.f1475q, this.s, this.t, this.u, h0Var);
    }

    public final Map b() {
        return this.r;
    }

    public final List f() {
        v5 v5VarA;
        u5 u5Var;
        boolean z = this.v;
        if (!z) {
            return d(this.f1474p);
        }
        if (!z || (u5Var = this.w) == null || (v5VarA = u5Var.a(this)) == null || v5VarA == this) {
            v5VarA = this;
        }
        return v5VarA == this ? Collections.emptyList() : v5VarA.f();
    }

    public final int k() {
        String[] strArr = {"govern", "leadership_num", "leadershipNum", "user_leadership_num", "user_ability", "teamPoint"};
        for (int i2 = 0; i2 < 6; i2++) {
            int iL = l(this.f1466h.get(strArr[i2]), 0);
            if (iL > 0) {
                return iL;
            }
        }
        return Math.max(1, this.t);
    }

    public final LinkedHashMap m(int i2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ladder_rank", Integer.valueOf(i2));
        String str = this.f1459a;
        linkedHashMap.put("player_id", str);
        linkedHashMap.put("user_id", str);
        linkedHashMap.put("account_uid", str);
        linkedHashMap.put("uid", str);
        linkedHashMap.put("player_type", 1);
        String str2 = this.f1460b;
        linkedHashMap.put("nickname", str2);
        linkedHashMap.put("user_nickname", str2);
        linkedHashMap.put("user_name", str2);
        linkedHashMap.put("user_nick", str2);
        linkedHashMap.put("userName", str2);
        linkedHashMap.put("roleName", str2);
        int i3 = this.f1461c;
        c.a.s(i3, linkedHashMap, "player_level", i3, "user_level", i3, "level");
        int i4 = this.f1462d;
        c.a.s(i4, linkedHashMap, "fighting", i4, "fight_point", i4, "fightPoint");
        LinkedHashMap linkedHashMap2 = this.f1466h;
        String strW = w("general_skin", w("user_general_skin", "", linkedHashMap2), linkedHashMap2);
        boolean zIsEmpty = strW.isEmpty();
        String str3 = this.f1475q;
        if (zIsEmpty) {
            strW = str3;
        }
        linkedHashMap.put("general_id", str3);
        linkedHashMap.put("general_skin", strW);
        linkedHashMap.put("user_general_skin", strW);
        linkedHashMap.put("head", strW);
        linkedHashMap.put("avatar", strW);
        linkedHashMap.put("to_attack", 1);
        linkedHashMap.put("is_enemy", 1);
        linkedHashMap.put("team_size", Integer.valueOf(this.t));
        int iK = k();
        linkedHashMap.put("user_ability", Integer.valueOf(iK));
        linkedHashMap.put("leadership_num", Integer.valueOf(iK));
        linkedHashMap.put("leadershipNum", Integer.valueOf(iK));
        linkedHashMap.put("user_leadership_num", Integer.valueOf(iK));
        linkedHashMap.put("govern", Integer.valueOf(iK));
        String[] strArr = {"user_vip_level", "vip_level", "user_sign", "union_id", "union_name", "user_role", "title", "title_id"};
        for (int i5 = 0; i5 < 8; i5++) {
            String str4 = strArr[i5];
            if (linkedHashMap2.containsKey(str4)) {
                linkedHashMap.put(str4, e(linkedHashMap2.get(str4)));
            }
        }
        linkedHashMap.put("rank_name", p5.T0(i2));
        linkedHashMap.put("fight_salary", Integer.valueOf(p5.f1(i2) / 10));
        if (!(linkedHashMap.get("user_vip_level") instanceof Number)) {
            linkedHashMap.put("user_vip_level", 0);
        }
        if (!(linkedHashMap.get("vip_level") instanceof Number)) {
            linkedHashMap.put("vip_level", 0);
        }
        return linkedHashMap;
    }

    public final int o() {
        int iP = p(p(p(l(this.f1466h.get("max_general_fighting"), 0), this.f1468j), this.f1474p), this.f1467i);
        return iP > 0 ? iP : this.f1462d;
    }

    public final Map r() {
        v5 v5VarA;
        u5 u5Var;
        boolean z = this.v;
        if (z) {
            if (!z || (u5Var = this.w) == null || (v5VarA = u5Var.a(this)) == null || v5VarA == this) {
                v5VarA = this;
            }
            if (v5VarA != this) {
                return v5VarA.r();
            }
        }
        LinkedHashMap linkedHashMapB = com.sgscq.vpn.cloud.m0.B(this.f1466h, this.f1467i, this.f1468j, this.f1469k, this.f1472n, this.f1470l, this.f1471m, this.f1473o);
        Object obj = linkedHashMapB.get("return_info");
        if (obj instanceof Map) {
            ((Map) obj).remove("gem_info");
        }
        Object obj2 = linkedHashMapB.get("other_player_data");
        if (obj2 instanceof Map) {
            ((Map) obj2).remove("gem_info");
        }
        Object obj3 = linkedHashMapB.get("info");
        if (obj3 instanceof Map) {
            for (Object obj4 : ((Map) obj3).values()) {
                if (obj4 instanceof Map) {
                    Map map = (Map) obj4;
                    map.remove("gem_info");
                    Object obj5 = map.get("cmn");
                    if (obj5 instanceof Map) {
                        ((Map) obj5).remove("gem_info");
                    }
                }
            }
        }
        return linkedHashMapB;
    }

    public final int s(int i2) {
        if (i2 == 2) {
            return this.f1461c;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return k();
            }
            return i2 == 1 ? o() : this.f1462d;
        }
        int iU = u();
        if (iU < 500000) {
            return Math.max(101, iU);
        }
        int i3 = (iU / 1000) - 500;
        int i4 = iU % 1000;
        if (i3 <= 0 || i4 <= 0) {
            return 101;
        }
        return (i3 * 100) + i4;
    }

    public final int u() {
        String[] strArr = {"rank_story_progress", "last_map_id", "map_id", "user_position_step", "user_map_step"};
        for (int i2 = 0; i2 < 5; i2++) {
            int iL = l(this.f1466h.get(strArr[i2]), 0);
            if (iL > 0) {
                return iL;
            }
        }
        return 0;
    }

    public final LinkedHashMap v() {
        String str = this.f1460b;
        Integer numValueOf = Integer.valueOf(this.f1461c);
        Integer numValueOf2 = Integer.valueOf(this.f1462d);
        Integer numValueOf3 = Integer.valueOf(this.f1463e);
        Boolean boolValueOf = Boolean.valueOf(this.f1464f);
        String str2 = this.f1465g;
        LinkedHashMap linkedHashMap = this.f1466h;
        boolean z = this.v;
        LinkedHashMap linkedHashMapZ0 = p5.z0("id", this.f1459a, "nickname", str, "level", numValueOf, "fighting", numValueOf2, "base_rank", numValueOf3, "player_backed", boolValueOf, "player_uid", str2, "player_info", linkedHashMap, "lazy_summary", Boolean.valueOf(z), "leader_general_id", this.f1475q, "main_general_ids", this.s, "team_size", Integer.valueOf(this.t), "deputy_count", Integer.valueOf(this.u));
        if (z) {
            return linkedHashMapZ0;
        }
        linkedHashMapZ0.putAll(p5.z0("general_info", this.f1467i, "team_info", this.f1468j, "skill_info", this.f1469k, "equipment_info", this.f1470l, "gem_info", this.f1471m, "combat_info", this.f1472n, "buddy_info", this.f1473o, "fight_team", this.f1474p));
        return linkedHashMapZ0;
    }

    public final v5 x(int i2) {
        LinkedHashMap linkedHashMapC = c(this.f1466h);
        linkedHashMapC.put("ladder_rank", Integer.valueOf(i2));
        return this.v ? n(this.f1459a, this.f1460b, this.f1461c, this.f1462d, i2, linkedHashMapC, this.f1475q, this.s, this.t, this.u, this.w) : new v5(this.f1459a, this.f1460b, this.f1461c, this.f1462d, i2, this.f1464f, this.f1465g, linkedHashMapC, this.f1467i, this.f1468j, this.f1469k, this.f1470l, this.f1471m, this.f1472n, this.f1473o, this.f1474p, true);
    }

    public v5(String str, String str2, int i2, int i3, int i4, boolean z, String str3, Map map, List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8) {
        this(str, str2, i2, i3, i4, z, str3, map, list, list2, list3, list4, list5, list6, list7, list8, false);
    }

    public v5(String str, String str2, int i2, int i3, int i4, boolean z, String str3, Map map, List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8, boolean z2) {
        this.f1459a = str;
        this.f1460b = str2;
        this.f1461c = i2;
        this.f1462d = i3;
        this.f1463e = i4;
        this.f1464f = z;
        this.f1465g = str3 == null ? "" : str3;
        LinkedHashMap linkedHashMapC = c(map);
        this.f1466h = linkedHashMapC;
        this.f1467i = z2 ? list : d(list);
        this.f1468j = z2 ? list2 : d(list2);
        this.f1469k = z2 ? list3 : d(list3);
        this.f1470l = z2 ? list4 : d(list4);
        this.f1471m = z2 ? list5 : d(list5);
        this.f1472n = z2 ? list6 : d(list6);
        this.f1473o = z2 ? list7 : d(list7);
        List listD = z2 ? list8 : d(list8);
        this.f1474p = listD;
        this.f1475q = w("general_id", "131001", listD.isEmpty() ? linkedHashMapC : (Map) listD.get(0));
        ArrayList arrayList = new ArrayList();
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            arrayList.add(w("general_id", "", (Map) it.next()));
        }
        this.s = Collections.unmodifiableList(arrayList);
        this.t = this.f1474p.size();
        Iterator it2 = this.f1467i.iterator();
        int i5 = 0;
        while (it2.hasNext()) {
            if (!w("major_pk_id", "", (Map) it2.next()).isEmpty()) {
                i5++;
            }
        }
        this.u = i5;
        this.v = false;
        this.w = null;
    }
}
