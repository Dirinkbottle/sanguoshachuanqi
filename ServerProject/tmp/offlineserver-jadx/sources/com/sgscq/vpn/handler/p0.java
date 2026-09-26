package com.sgscq.vpn.handler;

import com.sgscq.vpn.a7;
import com.sgscq.vpn.battle.BattleResult;
import com.sgscq.vpn.battle.BattleScenario;
import com.sgscq.vpn.battle.BattleStarCalculator;
import com.sgscq.vpn.battle.BattleUnit;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.z2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f955a = {"", "211002", "221002", "231007", "241005"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f956b = {"", "shenwuqi_chushou", "shenfangju_chushou", "shenzuoqi_chushou", "shenjinnang_chushou"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f957c = {"", "shenwuqi_qianghua", "shenfangju_qianghua", "shenzuoqi_qianghua", "shenjinnang_qianghua"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final LinkedHashMap f958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LinkedHashMap f959e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final LinkedHashMap f960f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static LinkedHashMap f961g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static LinkedHashMap f962h;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f958d = linkedHashMap;
        f959e = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        f960f = linkedHashMap2;
        linkedHashMap.put("shangshen_jinglian_up", 11);
        linkedHashMap.put("zhongshen_jinglian_up", 11);
        linkedHashMap.put("xiashen_jinglian_up", 11);
        linkedHashMap.put("shangjin_jinglian_up", 8);
        linkedHashMap.put("xiajin_jinglian_up", 8);
        linkedHashMap.put("liejin_jinglian_up", 8);
        linkedHashMap.put("zhongyin_jinglian_up", 3);
        linkedHashMap.put("zhongjin_jinglian_up", 8);
        linkedHashMap.put("xiayin_jinglian_up", 2);
        linkedHashMap.put("tong_jinglian_up", 1);
        linkedHashMap.put("shangyin_jinglian_up", 4);
        c0("111003", "311003", "3", "351003", "2");
        c0("111004", "311004", "2", "351004", "4");
        c0("111008", "311008", "3", "351005", "4");
        c0("111012", "311012", "3", "351006", "0");
        c0("121004", "321004", "2", "351013", "1");
        c0("121010", "321010", "1", "351015", "4");
        c0("131008", "331008", "3", "351023", "4");
        c0("131009", "331009", "1", "351024", "4");
        c0("141003", "341003", "2", "351027", "4");
        c0("141012", "341012", "1", "351033", "4");
        linkedHashMap2.put("311007", "3");
        linkedHashMap2.put("311009", "1");
        linkedHashMap2.put("311014", "2");
        linkedHashMap2.put("321006", "1");
        linkedHashMap2.put("321009", "1");
        linkedHashMap2.put("321013", "1");
        linkedHashMap2.put("321015", "2");
        linkedHashMap2.put("321016", "1");
        linkedHashMap2.put("321018", "1");
        linkedHashMap2.put("322009", "1");
        linkedHashMap2.put("351019", "4");
        linkedHashMap2.put("351020", "4");
    }

    public static LinkedHashMap A(String str) {
        return p5.z0("ret", 1, "code", 1, "result", Boolean.FALSE, "msg", str, "error_code", 1);
    }

    public static void B(int i2, Map map) {
        if (i2 <= 0) {
            return;
        }
        l.c cVarM = w1.a1(null).m(Math.max(1, E(E(1, "level", map), "user_level", map)), Math.max(0, E(E(0, "user_exp", map), "user_experience", map)), i2);
        int i3 = cVarM.f1783a;
        c.a.t(i3, map, "user_level", i3, "level");
        int i4 = cVarM.f1784b;
        map.put("user_experience", Integer.valueOf(i4));
        map.put("user_exp", Integer.valueOf(i4));
        map.put("experience", Integer.valueOf(i4));
    }

    public static boolean C(String str, Map map) {
        String str2 = (String) map.get(str);
        return (str2 == null || str2.trim().isEmpty() || "null".equalsIgnoreCase(str2.trim())) ? false : true;
    }

    public static void D(int i2, String str, Map map) {
        if (map == null || i2 <= 0) {
            return;
        }
        long jE = ((long) E(0, str, map)) + ((long) i2);
        map.put(str, Integer.valueOf(jE > 2147483647L ? Integer.MAX_VALUE : (int) jE));
    }

    public static int E(int i2, String str, Map map) {
        return map == null ? i2 : c.a.e(map, str, i2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[RETURN, SYNTHETIC] */
    public static boolean F(String str) {
        if (!str.isEmpty() && !"0".equals(str)) {
            w1 w1VarA1 = w1.a1(null);
            Map mapJ0 = w1VarA1.J0(str);
            if (mapJ0 == null) {
                if (w1VarA1.i0().isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    Collections.addAll(arrayList, p5.f1274a);
                    if (arrayList.contains(str)) {
                        return true;
                    }
                }
            } else if (w1.p1("1", mapJ0) && p5.a0(w1VarA1, str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean G(Map map) {
        String str = (String) map.get("player_id");
        if (str != null && (str.startsWith("ladder_npc_") || str.startsWith("robot_"))) {
            return true;
        }
        String str2 = (String) map.get("other_user_id");
        if (str2 != null && (str2.startsWith("ladder_npc_") || str2.startsWith("robot_"))) {
            return true;
        }
        if ("1".equals(map.get("player_type"))) {
            return C("ladder_rank", map) || C("rank", map) || C("user_rank", map) || C("ladderRank", map) || C("server_rank", map) || C("target_rank", map);
        }
        return false;
    }

    public static boolean H(String str) {
        return (str == null || str.isEmpty() || "0".equals(str) || (w1.a1(null).k1(str) == null && V(str) == null && !f960f.containsKey(str))) ? false : true;
    }

    public static int I(int i2) {
        return ((int) Math.round(((double) Math.max(0, 10000 - Math.min(10000, Math.max(1, i2)))) * 21.5021502150215d)) + 5000;
    }

    public static String J(int i2, int i3, int i4) {
        int i5 = (i3 * 7) + (i2 * 31) + i4;
        String strI1 = p5.i1(i5);
        for (int i6 = 0; i6 < 2000; i6++) {
            String strI2 = p5.i1(i5 + i6);
            if (!Q(strI2).isEmpty()) {
                return strI2;
            }
        }
        return strI1;
    }

    public static int K(Map map, boolean z) {
        int iMax = Math.max(1, E(E(1, "level", map), "user_level", map));
        int iY0 = w1.a1(null).y0(iMax);
        if (iY0 <= 0) {
            iY0 = h1.b0(iMax, null, "ladder_fight_user_exp");
        }
        if (iY0 <= 0) {
            iY0 = 10;
        }
        if (!z) {
            return iY0;
        }
        long j2 = ((long) iY0) * 2;
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j2;
    }

    public static ArrayList L() {
        ArrayList arrayList = new ArrayList();
        try {
            a7 a7VarV1 = w1.a1(null).V1();
            if (a7VarV1 == null) {
                return arrayList;
            }
            Iterator it = a7VarV1.a().iterator();
            while (it.hasNext()) {
                Map mapB = a7VarV1.b((String) it.next());
                if (mapB != null) {
                    arrayList.add(mapB);
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public static long M(String str, Map map) {
        if (map == null) {
            return 0L;
        }
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj == null) {
            return 0L;
        }
        try {
            return Long.parseLong(String.valueOf(obj));
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static BattleUnit N(int i2, int i3, String str, String str2, Map map, Map map2) {
        e eVar = new e(str, i2, i3);
        eVar.f812d = map;
        eVar.f815g = str2;
        eVar.a(300.0d, 100.0d, 100.0d);
        if (map2 != null) {
            eVar.f813e = map2;
        }
        return f.a(eVar);
    }

    public static String O(String str) {
        return i0(w1.a1(null).T0(str));
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00d4  */
    public static void P(Map map) {
        Long lValueOf;
        if (!map.containsKey("ladder_rank")) {
            map.put("ladder_rank", 9999);
        }
        if (!map.containsKey("ladder_best_rank")) {
            map.put("ladder_best_rank", map.get("ladder_rank"));
        }
        int iE = E(9999, "ladder_rank", map);
        if (E(iE, "ladder_best_rank", map) == 1 && iE > 1) {
            map.put("ladder_rank", 1);
        }
        if (!map.containsKey("ladderChallengeTimes")) {
            map.put("ladderChallengeTimes", Integer.valueOf(w(map)));
        }
        if (!c7.f254i) {
            String strB = c7.b();
            String strValueOf = String.valueOf(map.getOrDefault("ladderChallengeDay", ""));
            if (strValueOf.trim().isEmpty() || "null".equalsIgnoreCase(strValueOf)) {
                map.put("ladderChallengeDay", strB);
            } else if (!strB.equals(strValueOf)) {
                map.put("ladderChallengeTimes", Integer.valueOf(w(map)));
                map.put("ladderChallengeDay", strB);
                map.remove("ladderChallengeRecoverAt");
            }
        }
        long jG = c7.g();
        if (!c7.f254i && jG > 0) {
            int iW = w(map);
            int iMax = Math.max(0, E(iW, "ladderChallengeTimes", map));
            if (iMax >= iW) {
                map.remove("ladderChallengeRecoverAt");
            } else {
                long jM = M("ladderChallengeRecoverAt", map);
                if (jM <= 0 || jM > jG) {
                    lValueOf = Long.valueOf(jG);
                } else {
                    long j2 = (jG - jM) / 600;
                    if (j2 > 0) {
                        int iMin = (int) Math.min(((long) iW) - ((long) iMax), j2);
                        int i2 = iMax + iMin;
                        map.put("ladderChallengeTimes", Integer.valueOf(i2));
                        if (i2 >= iW) {
                            map.remove("ladderChallengeRecoverAt");
                        } else {
                            lValueOf = Long.valueOf((((long) iMin) * 600) + jM);
                        }
                    }
                }
                map.put("ladderChallengeRecoverAt", lValueOf);
            }
        }
        if (map.containsKey("ladderRankSalary")) {
            return;
        }
        map.put("ladderRankSalary", 0);
    }

    public static ArrayList Q(String str) {
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList = new ArrayList();
        for (String str2 : w1VarA1.G0(str)) {
            if (w1VarA1.z0(str2) != null && !arrayList.contains(str2)) {
                arrayList.add(str2);
            }
        }
        Map mapJ0 = w1VarA1.J0(str);
        Object obj = mapJ0 == null ? null : mapJ0.get("general_fate_id");
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                Map mapD0 = w1VarA1.D0(String.valueOf(it.next()));
                Object obj2 = mapD0 == null ? null : mapD0.get("fate_object");
                if (obj2 instanceof List) {
                    String strValueOf = String.valueOf(mapD0.getOrDefault("fate_type", ""));
                    Iterator it2 = ((List) obj2).iterator();
                    while (it2.hasNext()) {
                        String strValueOf2 = String.valueOf(it2.next());
                        boolean z = w1VarA1.z0(strValueOf2) != null;
                        boolean z2 = "3".equals(strValueOf) && strValueOf2.matches("2\\d{5}");
                        if (z || z2) {
                            if (!arrayList.contains(strValueOf2)) {
                                arrayList.add(strValueOf2);
                            }
                        }
                    }
                }
            }
        }
        arrayList.isEmpty();
        return arrayList;
    }

    public static ArrayList R(String str) {
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList = new ArrayList();
        for (String str2 : w1VarA1.H0(str)) {
            if (H(str2) && !arrayList.contains(str2)) {
                arrayList.add(str2);
            }
        }
        String str3 = (String) f959e.get(str);
        if (str3 != null && !arrayList.contains(str3)) {
            arrayList.add(str3);
        }
        Map mapJ0 = w1VarA1.J0(str);
        Iterator it = X(mapJ0 != null ? mapJ0.get("general_fate_id") : null).iterator();
        while (it.hasNext()) {
            Map mapD0 = w1VarA1.D0(String.valueOf(it.next()));
            if (mapD0 != null && c.a.B(mapD0, "fate_type", "", "4")) {
                Iterator it2 = X(mapD0.get("fate_object")).iterator();
                while (it2.hasNext()) {
                    String strValueOf = String.valueOf(it2.next());
                    if (H(strValueOf) && !arrayList.contains(strValueOf)) {
                        arrayList.add(strValueOf);
                    }
                }
            }
        }
        return arrayList;
    }

    public static ArrayList S(int i2, int i3, String str) {
        int iW;
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (String str2 : Q(str)) {
            Map mapZ0 = w1VarA1.z0(str2);
            String strZ = z(str2, mapZ0);
            if (!strZ.isEmpty() && hashSet.add(strZ)) {
                int iMax = Math.max(1, i3);
                if (mapZ0 != null && (iW = W(String.valueOf(mapZ0.getOrDefault("refine_bonus_type", "")).trim())) > 0) {
                    iMax = Math.max(1, Math.min(iMax, iW));
                }
                arrayList.add(new o0(str2, i2, iMax, false));
            }
        }
        for (int i4 = 1; i4 <= 4; i4++) {
            String strValueOf = String.valueOf(i4);
            if (!hashSet.contains(strValueOf)) {
                String str3 = f955a[i4];
                hashSet.add(strValueOf);
                int iW2 = W("xiashen_jinglian_up");
                int iMax2 = Math.max(1, i3);
                if (iW2 > 0) {
                    iMax2 = Math.max(1, Math.min(iMax2, iW2));
                }
                arrayList.add(new o0(str3, i2, iMax2, true));
            }
        }
        return arrayList;
    }

    public static String T(String str, LinkedHashSet linkedHashSet) {
        for (String str2 : R(str)) {
            String strI0 = i0(str2);
            if (!(!strI0.isEmpty() && linkedHashSet.contains(strI0))) {
                return str2;
            }
        }
        return "";
    }

    public static com.sgscq.vpn.config.e U(int i2) {
        int i3 = 5;
        int iMax = Math.max(5, Math.min(100, ((10000 - Math.min(10000, Math.max(1, i2))) / 100) + 5));
        int iMax2 = Math.max(1, iMax * 4);
        int iMax3 = Math.max(1, iMax * 3);
        int iH1 = w1.a1(null).h1(iMax);
        int iMax4 = Math.max(1, iMax);
        if (iMax4 >= 80) {
            i3 = 11;
        } else if (iMax4 >= 60) {
            i3 = 10;
        } else if (iMax4 >= 40) {
            i3 = 9;
        } else if (iMax4 >= 35) {
            i3 = 8;
        } else if (iMax4 >= 25) {
            i3 = 7;
        } else if (iMax4 >= 20) {
            i3 = 6;
        } else if (iMax4 < 15) {
            if (iMax4 >= 11) {
                i3 = 4;
            } else {
                i3 = iMax4 >= 5 ? 3 : 2;
            }
        }
        return new com.sgscq.vpn.config.e(iMax, iMax2, iMax3, Math.max(iH1, i3), 100, 30, 1);
    }

    public static Map V(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        LinkedHashMap linkedHashMap = f962h;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
            String strA = com.sgscq.vpn.o0.a(null, "skills.json");
            for (Object obj : p5.t1(strA)) {
                if (obj instanceof Map) {
                    Map map = (Map) obj;
                    String strValueOf = String.valueOf(map.getOrDefault("id", ""));
                    if (!strValueOf.isEmpty() && !"0".equals(strValueOf)) {
                        linkedHashMap.put(strValueOf, map);
                    }
                }
            }
            if (linkedHashMap.isEmpty()) {
                for (Map.Entry entry : p5.u1(strA).entrySet()) {
                    if (entry.getValue() instanceof Map) {
                        Map map2 = (Map) entry.getValue();
                        String strValueOf2 = String.valueOf(map2.getOrDefault("id", entry.getKey()));
                        if (!strValueOf2.isEmpty() && !"0".equals(strValueOf2)) {
                            linkedHashMap.put(strValueOf2, map2);
                        }
                    }
                }
            }
            f962h = linkedHashMap;
        }
        return (Map) linkedHashMap.get(str);
    }

    public static int W(String str) {
        int size;
        if (str == null || str.isEmpty() || "null".equals(str)) {
            return 0;
        }
        LinkedHashMap linkedHashMap = f961g;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap(f958d);
            String strA = com.sgscq.vpn.o0.a(null, "refine_conf.json");
            if (strA != null && !strA.isEmpty()) {
                try {
                    for (Map.Entry entry : p5.u1(strA).entrySet()) {
                        String str2 = (String) entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof List) {
                            size = ((List) value).size();
                        } else {
                            if (value instanceof Map) {
                                Iterator it = ((Map) value).keySet().iterator();
                                boolean z = false;
                                int iMax = -1;
                                while (it.hasNext()) {
                                    int iL2 = w1.l2(String.valueOf(it.next()), -1);
                                    if (iL2 >= 0) {
                                        if (iL2 == 0) {
                                            z = true;
                                        }
                                        iMax = Math.max(iMax, iL2);
                                    }
                                }
                                if (iMax >= 0) {
                                    if (z) {
                                        iMax++;
                                    }
                                    size = iMax;
                                }
                            }
                            size = 0;
                        }
                        linkedHashMap.put(str2, Integer.valueOf(size));
                    }
                } catch (Exception unused) {
                    linkedHashMap.clear();
                }
            }
            f961g = linkedHashMap;
        }
        Integer num = (Integer) linkedHashMap.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static List X(Object obj) {
        if (obj instanceof List) {
            return (List) obj;
        }
        if (obj == null) {
            return Collections.emptyList();
        }
        String strTrim = String.valueOf(obj).trim();
        return (strTrim.isEmpty() || "0".equals(strTrim) || "null".equalsIgnoreCase(strTrim)) ? Collections.emptyList() : Collections.singletonList(obj);
    }

    public static LinkedHashMap Y(String str, String str2, Object obj, double d2, double d3, double d4, double d5, Object obj2, String str3, String str4) {
        w1 w1VarA1 = w1.a1(null);
        LinkedHashMap linkedHashMap = new LinkedHashMap(w1VarA1.Y1(str2));
        linkedHashMap.put("pk_id", str);
        linkedHashMap.put("id", str2);
        linkedHashMap.put("general_id", str2);
        linkedHashMap.put("general_pk_id", str);
        linkedHashMap.put("card_type", "1");
        linkedHashMap.put("get_time", "1");
        linkedHashMap.put("status", "1");
        linkedHashMap.put("general_status", "1");
        linkedHashMap.put("level", obj);
        linkedHashMap.put("general_level", obj);
        linkedHashMap.put("hp", Double.valueOf(d2));
        linkedHashMap.put("general_hp", Double.valueOf(d2));
        linkedHashMap.put("base_hp", Double.valueOf(d2));
        linkedHashMap.put("attr_hp", Double.valueOf(d2));
        linkedHashMap.put("general_hp_attr", Double.valueOf(d2));
        linkedHashMap.put("atk", Double.valueOf(d3));
        linkedHashMap.put("general_attack", Double.valueOf(d3));
        linkedHashMap.put("base_attack", Double.valueOf(d3));
        linkedHashMap.put("attr_attack", Double.valueOf(d3));
        linkedHashMap.put("general_attack_attr", Double.valueOf(d3));
        linkedHashMap.put("def", Double.valueOf(d4));
        linkedHashMap.put("general_defense", Double.valueOf(d4));
        linkedHashMap.put("base_defense", Double.valueOf(d4));
        linkedHashMap.put("attr_defense", Double.valueOf(d4));
        linkedHashMap.put("general_defense_attr", Double.valueOf(d4));
        linkedHashMap.put("wis", Double.valueOf(d5));
        linkedHashMap.put("general_wisdom", Double.valueOf(d5));
        linkedHashMap.put("base_wisdom", Double.valueOf(d5));
        linkedHashMap.put("attr_wisdom", Double.valueOf(d5));
        linkedHashMap.put("general_wisdom_attr", Double.valueOf(d5));
        linkedHashMap.put("fighting", obj2);
        linkedHashMap.put("general_fighting", obj2);
        linkedHashMap.put("fight_point", obj2);
        linkedHashMap.put("fighting_point", obj2);
        linkedHashMap.put("insight_level", "1");
        linkedHashMap.put("breachLevel", "1");
        linkedHashMap.put("star_level", "1");
        linkedHashMap.put("general_star", "1");
        linkedHashMap.put("major_pk_id", str3 == null ? "" : str3);
        linkedHashMap.put("position", str4);
        linkedHashMap.put("talent_point", "0");
        linkedHashMap.put("ganoderma_num", "0");
        if (!(linkedHashMap.get("culture_info") instanceof Map)) {
            linkedHashMap.put("culture_info", new LinkedHashMap());
        }
        linkedHashMap.put("general_avatar", str2);
        linkedHashMap.put("general_painting", str2);
        linkedHashMap.put("general_painting_id", str2);
        linkedHashMap.put("resource_id", str2);
        Map mapJ0 = w1VarA1.J0(str2);
        if (mapJ0 != null) {
            Object obj3 = mapJ0.get("general_sex");
            if (obj3 != null) {
                linkedHashMap.put("general_sex", obj3);
            }
            Object obj4 = mapJ0.get("general_orbit");
            if (obj4 != null && y(obj4, 0.0d) > 0.0d) {
                linkedHashMap.put("general_orbit", obj4);
            }
        }
        if (!linkedHashMap.containsKey("general_sex")) {
            linkedHashMap.put("general_sex", "0");
        }
        if (y(linkedHashMap.get("general_orbit"), 0.0d) <= 0.0d) {
            linkedHashMap.put("general_orbit", "1");
        }
        return linkedHashMap;
    }

    public static LinkedHashMap Z(String str, int i2, String str2) {
        w1 w1VarA1 = w1.a1(null);
        LinkedHashMap linkedHashMap = new LinkedHashMap(w1VarA1.Z1(str2));
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("skill_id", w1VarA1.T0(str2)));
        if (strValueOf.isEmpty() || "0".equals(strValueOf)) {
            strValueOf = "300000";
        }
        linkedHashMap.put("pk_id", str);
        linkedHashMap.put("general_pk_id", str);
        linkedHashMap.put("skill_id", strValueOf);
        linkedHashMap.put("id", strValueOf);
        linkedHashMap.put("skill_code", strValueOf);
        linkedHashMap.put("pos", "1");
        linkedHashMap.put("position", "1");
        linkedHashMap.put("skill_position", "1");
        linkedHashMap.put("is_natural", Boolean.TRUE);
        linkedHashMap.put("get_time", "1");
        linkedHashMap.put("level", String.valueOf(Math.max(1, i2)));
        linkedHashMap.put("skill_level", String.valueOf(Math.max(1, i2)));
        linkedHashMap.put("exp", "0");
        linkedHashMap.put("card_type", "4");
        e0(strValueOf, linkedHashMap);
        return linkedHashMap;
    }

    public static boolean a(Map map) {
        if (map == null || map.isEmpty() || c7.f254i) {
            return false;
        }
        long jG = c7.g();
        if (jG <= 0) {
            return false;
        }
        long jM = M("ladderSalaryAt", map);
        if (jM <= 0 || jM > jG) {
            map.put("ladderSalaryAt", Long.valueOf(jG));
            return false;
        }
        long j2 = (jG - jM) / 600;
        if (j2 <= 0) {
            return false;
        }
        long jF1 = ((long) p5.f1(E(9999, "ladder_rank", map))) * j2;
        long jE = ((long) E(0, "ladderRankSalary", map)) + jF1;
        int iMax = jE > 2147483647L ? Integer.MAX_VALUE : (int) Math.max(0L, jE);
        c.a.t(iMax, map, "ladderRankSalary", iMax, "ladder_rank_salary");
        D(jF1 > 2147483647L ? Integer.MAX_VALUE : (int) Math.max(0L, jF1), "ladder_total_rank_salary", map);
        map.put("ladderSalaryAt", Long.valueOf((j2 * 600) + jM));
        return true;
    }

    public static int a0(int i2, Map map) {
        String strSubstring = (String) map.get("ladder_rank");
        if (strSubstring == null || strSubstring.isEmpty()) {
            strSubstring = (String) map.get("rank");
        }
        if (strSubstring == null || strSubstring.isEmpty()) {
            strSubstring = (String) map.get("user_rank");
        }
        if (strSubstring == null || strSubstring.isEmpty()) {
            strSubstring = (String) map.get("ladderRank");
        }
        if (strSubstring == null || strSubstring.isEmpty()) {
            strSubstring = (String) map.get("server_rank");
        }
        if (strSubstring == null || strSubstring.isEmpty()) {
            strSubstring = (String) map.get("target_rank");
        }
        String strSubstring2 = null;
        if (strSubstring == null || strSubstring.isEmpty()) {
            String str = (String) map.get("player_id");
            strSubstring = (str == null || !str.startsWith("ladder_npc_")) ? null : str.substring(11);
        }
        if (strSubstring == null || strSubstring.isEmpty()) {
            String str2 = (String) map.get("other_user_id");
            if (str2 != null && str2.startsWith("ladder_npc_")) {
                strSubstring2 = str2.substring(11);
            }
            strSubstring = strSubstring2;
        }
        return w1.l2(strSubstring, i2);
    }

    public static void b(int i2, int i3, List list, LinkedHashMap linkedHashMap) {
        int iMin = Math.min(list.size(), Math.max(0, i3) + Math.max(0, i2));
        for (int iMax = Math.max(0, i2); iMax < iMin; iMax++) {
            Object obj = list.get(iMax);
            if (obj instanceof Map) {
                linkedHashMap.put(Integer.valueOf(iMax), Double.valueOf(y(((Map) obj).get("hpCur"), 0.0d)));
            }
        }
    }

    public static int b0(Map map) {
        w1.a1(null).getClass();
        int iB = w1.B(map);
        if (iB > 0) {
            return iB;
        }
        Iterator it = w1.f0("TeamGeneral", map).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int iE = c.a.e((Map) it.next(), "position", 0);
            if (iE >= 1 && iE <= 3) {
                i2++;
            }
        }
        return Math.max(1, i2 == 0 ? 1 : Math.min(3, i2));
    }

    public static void c(ArrayList arrayList, HashSet hashSet, Map map, int i2, int i3) {
        if (i3 < 1 || !hashSet.add(Integer.valueOf(i3))) {
            return;
        }
        arrayList.add(i3 == i2 ? u(map) : s(i3, arrayList.size(), U(i3)));
    }

    public static void c0(String str, String str2, String str3, String str4, String str5) {
        f959e.put(str, str4);
        LinkedHashMap linkedHashMap = f960f;
        linkedHashMap.put(str2, str3);
        linkedHashMap.put(str4, str5);
    }

    public static void d(ArrayList arrayList, HashSet hashSet, Map map, String str, p7 p7Var, int i2, int i3) {
        if (i3 < 1 || !hashSet.add(Integer.valueOf(i3))) {
            return;
        }
        if (i3 == i2) {
            arrayList.add(u(map));
            return;
        }
        v5 v5VarR = p7Var.r(i3);
        if (v5VarR == null || v5VarR.f1459a.equals(str)) {
            arrayList.add(s(i3, arrayList.size(), U(i3)));
            return;
        }
        LinkedHashMap linkedHashMapM = v5VarR.m(i3);
        linkedHashMapM.put("rank_name", p5.T0(i3));
        linkedHashMapM.put("fight_salary", Integer.valueOf(p5.f1(i3) / 10));
        int iK = v5VarR.k();
        linkedHashMapM.put("user_ability", Integer.valueOf(iK));
        linkedHashMapM.put("leadership_num", Integer.valueOf(iK));
        linkedHashMapM.put("leadershipNum", Integer.valueOf(iK));
        linkedHashMapM.put("user_leadership_num", Integer.valueOf(iK));
        linkedHashMapM.put("govern", Integer.valueOf(iK));
        arrayList.add(linkedHashMapM);
    }

    public static void d0(String str, LinkedHashMap linkedHashMap, Map map) {
        Object obj = map.get(str);
        if (obj != null) {
            linkedHashMap.put(str, obj);
        }
    }

    /* JADX WARN: Code duplicated, block: B:199:0x057b  */
    /* JADX WARN: Code duplicated, block: B:200:0x0582  */
    /* JADX WARN: Code duplicated, block: B:202:0x0585  */
    /* JADX WARN: Code duplicated, block: B:204:0x0589  */
    /* JADX WARN: Code duplicated, block: B:207:0x059a  */
    /* JADX WARN: Code duplicated, block: B:210:0x0647  */
    /* JADX WARN: Code duplicated, block: B:211:0x064c  */
    /* JADX WARN: Code duplicated, block: B:54:0x016e  */
    public static LinkedHashMap e(Map map, Map map2, ArrayList arrayList, p7 p7Var, String str, boolean z) {
        long j2;
        int i2;
        int i3;
        Map map3;
        v5 v5Var;
        int i4;
        int iF1;
        long jF1;
        LinkedHashMap linkedHashMapT;
        Map map4;
        Object obj;
        Iterator it;
        Map map5;
        String str2;
        P(map);
        z2.e("SGSCQ_FIGHT", "applyFight: normalize done");
        g0(map, arrayList, E(9999, "ladder_rank", map), c7.g());
        z2.e("SGSCQ_FIGHT", "applyFight: settleRankDurationAt done");
        a(map);
        z2.e("SGSCQ_FIGHT", "applyFight: accrueRankSalaryInternal done");
        int iE = E(w(map), "ladderChallengeTimes", map);
        if (iE <= 0) {
            str2 = "挑战次数已用完";
        } else {
            if (E(0, "user_energy", map) < 1) {
                map.put("user_energy", 1);
            }
            if (E(0, "user_energy", map) >= 1) {
                long jG = c7.g();
                int iMax = Math.max(0, E(0, "user_energy", map) - 1);
                int iE2 = E(9999, "ladder_rank", map);
                int iA0 = a0(iE2, map2);
                v5 v5VarF0 = f0(iA0, p7Var, map2);
                if (v5VarF0 != null) {
                    iA0 = p7Var.v(v5VarF0.f1459a);
                }
                int i5 = iA0;
                long jCurrentTimeMillis = System.currentTimeMillis();
                StringBuilder sb = new StringBuilder("buildFightOutcome enter target=");
                sb.append(i5);
                sb.append(" npc=");
                sb.append(v5VarF0 == null);
                z2.e("SGSCQ_FIGHT", sb.toString());
                ArrayList<Map> arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList(w1.f0("TeamGeneral", map));
                Collections.sort(arrayList3, new c.n(3));
                Iterator it2 = arrayList3.iterator();
                while (true) {
                    j2 = jG;
                    i2 = iE;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map map6 = (Map) it2.next();
                    Iterator it3 = it2;
                    if (l0(map6) >= 1) {
                        String strValueOf = String.valueOf(map6.getOrDefault("general_pk_id", ""));
                        if (strValueOf.isEmpty()) {
                            map5 = null;
                            break;
                        }
                        Iterator it4 = w1.f0("General", map).iterator();
                        do {
                            if (!it4.hasNext()) {
                                map5 = null;
                                break;
                            }
                            map5 = (Map) it4.next();
                        } while (!c.a.B(map5, "pk_id", "", strValueOf));
                        if (map5 != null) {
                            arrayList2.add(map5);
                        }
                    }
                    it2 = it3;
                    jG = j2;
                    iE = i2;
                }
                if (!arrayList2.isEmpty()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    Iterator it5 = arrayList2.iterator();
                    while (it5.hasNext()) {
                        Map map7 = (Map) it5.next();
                        if (map7 == null) {
                            it = it5;
                        } else {
                            map7.remove("bound_lieutenants");
                            String strValueOf2 = String.valueOf(map7.getOrDefault("pk_id", map7.getOrDefault("general_pk_id", "")));
                            if (strValueOf2.isEmpty()) {
                                it = it5;
                            } else {
                                it = it5;
                                if (!"null".equalsIgnoreCase(strValueOf2)) {
                                    linkedHashMap.put(strValueOf2, map7);
                                }
                            }
                        }
                        it5 = it;
                    }
                    if (!linkedHashMap.isEmpty()) {
                        for (Map map8 : w1.f0("General", map)) {
                            Map map9 = (Map) linkedHashMap.get(String.valueOf(map8.getOrDefault("major_pk_id", "")));
                            if (map9 != null) {
                                Object obj2 = map9.get("bound_lieutenants");
                                List arrayList4 = obj2 instanceof List ? (List) obj2 : new ArrayList();
                                arrayList4.add(map8);
                                map9.put("bound_lieutenants", arrayList4);
                            }
                        }
                    }
                }
                ArrayList arrayList5 = new ArrayList();
                for (Map map10 : arrayList2) {
                    String strValueOf3 = String.valueOf(map10.getOrDefault("general_id", map10.getOrDefault("id", x(map))));
                    int size = arrayList5.size();
                    String strValueOf4 = String.valueOf(map10.getOrDefault("general_name", "玩家"));
                    e eVar = new e(strValueOf3, 0, size);
                    eVar.f812d = map10;
                    eVar.f813e = map;
                    eVar.f815g = strValueOf4;
                    eVar.a(300.0d, 100.0d, 100.0d);
                    arrayList5.add(f.a(eVar));
                }
                if (arrayList5.isEmpty()) {
                    arrayList5.add(N(0, 0, x(map), String.valueOf(map.getOrDefault("user_nickname", "玩家")), null, null));
                }
                z2.e("SGSCQ_FIGHT", "allies built=" + arrayList5.size() + " took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                List listQ = v5VarF0 == null ? q(i5, U(i5)) : v5VarF0.f();
                z2.e("SGSCQ_FIGHT", "enemyTeam built=" + listQ.size() + " took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                Map map11 = v5VarF0 == null ? null : v5VarF0.r;
                ArrayList arrayList6 = new ArrayList();
                Iterator it6 = listQ.iterator();
                while (it6.hasNext()) {
                    Iterator it7 = it6;
                    Map map12 = (Map) it6.next();
                    arrayList6.add(N(1, arrayList6.size(), String.valueOf(map12.getOrDefault("general_id", "131001")), a.b0.a("天梯对手", i5), map12, map11));
                    it6 = it7;
                }
                z2.e("SGSCQ_FIGHT", "enemy units=" + arrayList6.size() + " took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                int iB0 = b0(map);
                LinkedHashMap linkedHashMapS = v5VarF0 == null ? s(i5, 0, U(i5)) : v5VarF0.m(i5);
                int iMax2 = Math.max(1, v5VarF0 == null ? E(U(i5).f566d, "user_ability", linkedHashMapS) : v5VarF0.k());
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                z2.e("SGSCQ_FIGHT", "simulate start allies=" + arrayList5.size() + " enemies=" + arrayList6.size());
                Object obj3 = "general_id";
                BattleResult battleResultB = o.h.a().b(new BattleScenario(arrayList5, arrayList6, null, (double) iB0, (double) iMax2));
                z2.e("SGSCQ_FIGHT", "simulate done took " + (System.currentTimeMillis() - jCurrentTimeMillis2) + "ms rounds=" + battleResultB.getFightInfo().size());
                Map<String, Object> fightInfo = battleResultB.getFightInfo();
                LinkedHashMap linkedHashMap2 = fightInfo == null ? new LinkedHashMap() : new LinkedHashMap(fightInfo);
                linkedHashMap2.put("success", Boolean.valueOf(battleResultB.isSuccess()));
                k(linkedHashMap2, map, i5, iB0, iMax2, linkedHashMapS);
                Object obj4 = linkedHashMap2.get("init");
                if (obj4 instanceof Map) {
                    ((Map) obj4).put("skipRounds", 1);
                }
                linkedHashMap2.put("attacker", u(map));
                linkedHashMap2.put("defender", linkedHashMapS);
                linkedHashMap2.put("enemy_team", listQ);
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                int i6 = 0;
                while (true) {
                    i3 = Integer.MAX_VALUE;
                    if (i6 >= arrayList6.size() || i6 >= listQ.size()) {
                        break;
                    }
                    if (((BattleUnit) arrayList6.get(i6)).isAlive()) {
                        obj = obj3;
                    } else {
                        obj = obj3;
                        String strValueOf5 = String.valueOf(((Map) listQ.get(i6)).getOrDefault(obj, ""));
                        if (!strValueOf5.isEmpty()) {
                            int iE3 = E(0, strValueOf5, linkedHashMap3);
                            linkedHashMap3.put(strValueOf5, Integer.valueOf(iE3 < Integer.MAX_VALUE ? iE3 + 1 : Integer.MAX_VALUE));
                        }
                    }
                    i6++;
                    obj3 = obj;
                }
                boolean zEquals = Boolean.TRUE.equals(linkedHashMap2.get("success"));
                int iMax3 = (!zEquals || i5 >= iE2) ? iE2 : Math.max(1, i5);
                int i7 = iE2 - iMax3;
                int i8 = zEquals ? 2 : 1;
                if (p7Var == null || v5VarF0 == null) {
                    map3 = map;
                    v5Var = v5VarF0;
                    map3.put("ladder_rank", Integer.valueOf(iMax3));
                    map3.put("ladder_best_rank", Integer.valueOf(Math.min(E(iE2, "ladder_best_rank", map3), iMax3)));
                    if (p7Var != null) {
                        if (zEquals && str != null && !str.isEmpty()) {
                            p7Var.e();
                            p7Var.a();
                            synchronized (p7Var.f1293a) {
                                int iT = p7Var.t(str, map3);
                                if (iMax3 > 0 && iMax3 < iT && !p7Var.f1307o.containsKey(Integer.valueOf(iMax3))) {
                                    p7Var.A(str, iMax3);
                                    p7.d(iMax3, map3);
                                    p7Var.f1294b.e(str, iMax3);
                                    p7Var.f1305m.put(str, map3);
                                    p7Var.f1304l.put(str, v5.j(str, map3));
                                }
                            }
                        }
                    }
                    i4 = iMax3;
                    int i9 = i7;
                    if (zEquals) {
                        iF1 = p5.f1(i4) / 10;
                    } else {
                        iF1 = 0;
                    }
                    if (zEquals) {
                        jF1 = ((long) p5.f1(i4)) * 125;
                        if (jF1 < 2147483647L) {
                            i3 = (int) jF1;
                        }
                    } else {
                        i3 = 0;
                    }
                    int iK = K(map3, z);
                    map3.put("ladderChallengeTimes", Integer.valueOf(i2 - 1));
                    j0(j2, map3);
                    v5 v5Var2 = v5Var;
                    map3.put("ladderRankSalary", Integer.valueOf(E(0, "ladderRankSalary", map3) + iF1));
                    D(1, "ladder_total_fight_times", map3);
                    D(iF1, "ladder_total_rank_salary", map3);
                    map3.put("user_honor", Integer.valueOf(E(0, "user_honor", map3) + i8));
                    p5.b(i3, map3);
                    B(iK, map3);
                    p5.e(map3, iMax, Math.max(150, E(150, "max_energy", map3)), j2);
                    j jVarO = m.o(map3, 2, 1);
                    y0.j(arrayList, map3, linkedHashMap3);
                    j jVarC = y0.c(arrayList, map3);
                    LinkedHashMap linkedHashMapK0 = k0();
                    linkedHashMapK0.put("user_info", v(map));
                    linkedHashMapK0.put("fight_info", linkedHashMap2);
                    LinkedHashMap linkedHashMapN = n(iE2, i4, i9, iF1, i8, i3, iK, zEquals, linkedHashMap2);
                    linkedHashMapN.put("hunshi", 0);
                    linkedHashMapK0.put("fight_result", linkedHashMapN);
                    if (p7Var == null) {
                        linkedHashMapT = o(map);
                    } else {
                        linkedHashMapT = t(p7Var, str, map3);
                    }
                    linkedHashMapK0.put("ladder_info", linkedHashMapT);
                    i(linkedHashMapK0, map3, jVarO);
                    l(linkedHashMapK0, v5Var2);
                    m(jVarC, linkedHashMapK0);
                    return linkedHashMapK0;
                }
                v5Var = v5VarF0;
                String str3 = v5Var.f1459a;
                if (!zEquals || str == null || str3 == null || str.equals(str3)) {
                    map3 = map;
                } else {
                    p7Var.e();
                    p7Var.a();
                    synchronized (p7Var.f1293a) {
                        v5 v5Var3 = (v5) p7Var.f1304l.get(str3);
                        if (v5Var3 == null) {
                            map3 = map;
                        } else {
                            map3 = map;
                            int iT2 = p7Var.t(str, map3);
                            int iT3 = p7Var.t(str3, null);
                            if (iT2 > 0 && iT3 > 0 && iT3 < iT2) {
                                p7Var.A(str, iT3);
                                if (!(v5Var3.r != null)) {
                                    p7Var.A(str3, iT2);
                                }
                                p7.d(iT3, map3);
                                p7Var.f1294b.e(str, iT3);
                                p7Var.f1305m.put(str, map3);
                                p7Var.f1304l.put(str, v5.j(str, map3));
                                if (v5Var3.f1464f) {
                                    if (!(v5Var3.r != null) && (map4 = (Map) p7Var.f1305m.get(str3)) != null) {
                                        p7.d(iT2, map4);
                                        p7Var.f1294b.e(str3, iT2);
                                        p7Var.f1305m.put(str3, map4);
                                        p7Var.f1304l.put(str3, v5.j(str3, map4));
                                    }
                                }
                                p7Var.s();
                            }
                        }
                    }
                }
                iMax3 = E(iE2, "ladder_rank", map3);
                i7 = iE2 - iMax3;
                i4 = iMax3;
                int i10 = i7;
                if (zEquals) {
                    iF1 = p5.f1(i4) / 10;
                } else {
                    iF1 = 0;
                }
                if (zEquals) {
                    i3 = 0;
                } else {
                    jF1 = ((long) p5.f1(i4)) * 125;
                    if (jF1 < 2147483647L) {
                        i3 = (int) jF1;
                    }
                }
                int iK2 = K(map3, z);
                map3.put("ladderChallengeTimes", Integer.valueOf(i2 - 1));
                j0(j2, map3);
                v5 v5Var4 = v5Var;
                map3.put("ladderRankSalary", Integer.valueOf(E(0, "ladderRankSalary", map3) + iF1));
                D(1, "ladder_total_fight_times", map3);
                D(iF1, "ladder_total_rank_salary", map3);
                map3.put("user_honor", Integer.valueOf(E(0, "user_honor", map3) + i8));
                p5.b(i3, map3);
                B(iK2, map3);
                p5.e(map3, iMax, Math.max(150, E(150, "max_energy", map3)), j2);
                j jVarO2 = m.o(map3, 2, 1);
                y0.j(arrayList, map3, linkedHashMap3);
                j jVarC2 = y0.c(arrayList, map3);
                LinkedHashMap linkedHashMapK1 = k0();
                linkedHashMapK1.put("user_info", v(map));
                linkedHashMapK1.put("fight_info", linkedHashMap2);
                LinkedHashMap linkedHashMapN2 = n(iE2, i4, i10, iF1, i8, i3, iK2, zEquals, linkedHashMap2);
                linkedHashMapN2.put("hunshi", 0);
                linkedHashMapK1.put("fight_result", linkedHashMapN2);
                if (p7Var == null) {
                    linkedHashMapT = o(map);
                } else {
                    linkedHashMapT = t(p7Var, str, map3);
                }
                linkedHashMapK1.put("ladder_info", linkedHashMapT);
                i(linkedHashMapK1, map3, jVarO2);
                l(linkedHashMapK1, v5Var4);
                m(jVarC2, linkedHashMapK1);
                return linkedHashMapK1;
            }
            str2 = "精力不足";
        }
        return A(str2);
    }

    public static void e0(String str, LinkedHashMap linkedHashMap) {
        Map mapV = V(str);
        if (mapV == null) {
            String str2 = (String) f960f.get(str);
            if (str2 != null) {
                linkedHashMap.put("skill_type", str2);
                return;
            }
            return;
        }
        d0("skill_type", linkedHashMap, mapV);
        d0("upgrade_exp_type", linkedHashMap, mapV);
        d0("upgrade_coin_type", linkedHashMap, mapV);
        d0("eated_exp_type", linkedHashMap, mapV);
        d0("grade", linkedHashMap, mapV);
        d0("fighting", linkedHashMap, mapV);
        d0("fighting_step", linkedHashMap, mapV);
        d0("major_property", linkedHashMap, mapV);
        Object obj = mapV.get("skill_code");
        if (obj == null || String.valueOf(obj).isEmpty()) {
            return;
        }
        linkedHashMap.put("skill_code", obj);
    }

    public static void f(LinkedHashMap linkedHashMap, Object obj, Object obj2) {
        if ((obj instanceof List) && (obj2 instanceof List)) {
            List list = (List) obj;
            List list2 = (List) obj2;
            int iMin = Math.min(list.size(), list2.size());
            for (int i2 = 0; i2 < iMin; i2++) {
                int iL2 = w1.l2(String.valueOf(list.get(i2)), -1);
                if (linkedHashMap.containsKey(Integer.valueOf(iL2))) {
                    Object obj3 = list2.get(i2);
                    if (obj3 instanceof Map) {
                        Map map = (Map) obj3;
                        if (map.containsKey("hpCur")) {
                            linkedHashMap.put(Integer.valueOf(iL2), Double.valueOf(y(map.get("hpCur"), 0.0d)));
                        }
                    }
                }
            }
        }
    }

    public static v5 f0(int i2, p7 p7Var, Map map) {
        if (p7Var == null) {
            return null;
        }
        String str = (String) map.get("player_id");
        if (str == null || str.isEmpty()) {
            str = (String) map.get("other_user_id");
        }
        v5 v5VarG = str != null ? p7Var.g(str) : null;
        return v5VarG != null ? v5VarG : p7Var.r(i2);
    }

    public static LinkedHashMap g(Map map, String str, ArrayList arrayList, p7 p7Var) {
        Map linkedHashMap;
        P(map);
        boolean zG0 = g0(map, arrayList, E(9999, "ladder_rank", map), c7.g());
        boolean zA = a(map);
        if (str == null || str.trim().isEmpty()) {
            linkedHashMap = map;
        } else {
            linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put("account_uid", str);
            linkedHashMap.put("user_id", str);
        }
        LinkedHashMap linkedHashMapK0 = k0();
        linkedHashMapK0.put("ladder_info", p7Var == null ? o(linkedHashMap) : t(p7Var, str, linkedHashMap));
        if (zG0 || zA) {
            m(y0.c(arrayList, map), linkedHashMapK0);
        }
        return linkedHashMapK0;
    }

    public static boolean g0(Map map, ArrayList arrayList, int i2, long j2) {
        if (!arrayList.isEmpty() && j2 > 0) {
            long jM = M("surrender_ladder_rank_duration_at", map);
            if (jM > 0 && jM <= j2) {
                long j3 = j2 - jM;
                if (j3 <= 0) {
                    return false;
                }
                map.put("surrender_ladder_rank_duration_at", Long.valueOf(j2));
                int i3 = j3 >= 2147483647L ? Integer.MAX_VALUE : (int) j3;
                String strValueOf = String.valueOf(j2);
                if (i3 <= 0) {
                    Set set = y0.f1038a;
                    return true;
                }
                y0.m(map, arrayList, "21", "41", i2, i3, strValueOf);
                return true;
            }
            map.put("surrender_ladder_rank_duration_at", Long.valueOf(j2));
        }
        return false;
    }

    public static LinkedHashMap h(Map map, Map map2, ArrayList arrayList, p7 p7Var, String str, boolean z) {
        String str2;
        p7 p7Var2 = p7Var;
        P(map);
        String str3 = "ladder_rank";
        g0(map, arrayList, E(9999, "ladder_rank", map), c7.g());
        a(map);
        String str4 = "ladderChallengeTimes";
        int iE = E(w(map), "ladderChallengeTimes", map);
        if (iE <= 0) {
            str2 = "挑战次数已用完";
        } else {
            int iE2 = E(0, "user_energy", map);
            if (iE2 >= 1) {
                long jG = c7.g();
                int iMin = Math.min(Math.min(10, iE), iE2);
                int iMax = Math.max(0, iE2 - iMin);
                int iE3 = E(9999, "ladder_rank", map);
                int i2 = iE3 - 1;
                int iA0 = a0(Math.max(1, i2), map2);
                v5 v5VarF0 = f0(iA0, p7Var2, map2);
                if (v5VarF0 != null) {
                    iA0 = p7Var2.v(v5VarF0.f1459a);
                }
                int i3 = iA0;
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (i8 < iMin) {
                    int i10 = i4;
                    int iMax2 = p7Var2 == null ? Math.max(1, i2) : i3;
                    map.put(str3, Integer.valueOf(iE3));
                    v5 v5Var = p7Var2 == null ? null : v5VarF0;
                    List listQ = v5Var == null ? q(iMax2, U(iMax2)) : v5Var.f();
                    LinkedHashMap linkedHashMapS = v5Var == null ? s(iMax2, 0, U(iMax2)) : v5Var.m(iMax2);
                    int iB0 = b0(map);
                    int iMax3 = Math.max(1, v5Var == null ? E(U(iMax2).f566d, "user_ability", linkedHashMapS) : v5Var.k());
                    LinkedHashMap linkedHashMapZ0 = p5.z0("init", p5.z0("first", 0, "roundMax", 15, "cards_size0", 0, "cards_size1", 0, "backups_size0", 0, "backups_size1", 0, "info", p5.v0(new LinkedHashMap(), new LinkedHashMap()), "cards", new ArrayList(), "roundCur", 1, "skipRounds", 1), "rounds", new ArrayList(), "success", Boolean.TRUE);
                    ArrayList arrayList4 = arrayList3;
                    String str5 = str4;
                    int i11 = iE;
                    ArrayList arrayList5 = arrayList2;
                    int i12 = iMin;
                    int i13 = i2;
                    v5 v5Var2 = v5VarF0;
                    String str6 = str3;
                    int i14 = iE3;
                    k(linkedHashMapZ0, map, iMax2, iB0, iMax3, linkedHashMapS);
                    linkedHashMapZ0.put("attacker", u(map));
                    linkedHashMapZ0.put("defender", linkedHashMapS);
                    linkedHashMapZ0.put("enemy_team", listQ);
                    int i15 = i14 - i14;
                    int iF1 = p5.f1(i14) / 10;
                    long jF1 = ((long) p5.f1(i14)) * 125;
                    int i16 = jF1 >= 2147483647L ? Integer.MAX_VALUE : (int) jF1;
                    int iK = K(map, z);
                    i9 += iF1;
                    LinkedHashMap linkedHashMapN = n(i14, i14, i15, iF1, 2, i16, iK, true, linkedHashMapZ0);
                    arrayList5.add(linkedHashMapN);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("fight_info", linkedHashMapZ0);
                    linkedHashMap.put("fight_result", linkedHashMapN);
                    arrayList4.add(linkedHashMap);
                    B(iK, map);
                    i8++;
                    i5 += 2;
                    arrayList3 = arrayList4;
                    iE3 = i14;
                    arrayList2 = arrayList5;
                    i4 = i10 + i16;
                    i7 += iK;
                    i2 = i13;
                    str4 = str5;
                    iE = i11;
                    iMin = i12;
                    str3 = str6;
                    i6++;
                    v5VarF0 = v5Var2;
                    p7Var2 = p7Var;
                }
                ArrayList arrayList6 = arrayList3;
                v5 v5Var3 = v5VarF0;
                String str7 = str3;
                String str8 = str4;
                int i17 = iMin;
                int i18 = i4;
                ArrayList arrayList7 = arrayList2;
                int i19 = iE3;
                map.put(str7, Integer.valueOf(i19));
                map.put("ladder_best_rank", Integer.valueOf(Math.min(E(i19, "ladder_best_rank", map), i19)));
                map.put(str8, Integer.valueOf(iE - i17));
                j0(jG, map);
                map.put("ladderRankSalary", Integer.valueOf(E(0, "ladderRankSalary", map) + i9));
                D(i17, "ladder_total_fight_times", map);
                D(i9, "ladder_total_rank_salary", map);
                map.put("user_honor", Integer.valueOf(E(0, "user_honor", map) + i5));
                p5.b(i18, map);
                Iterator it = arrayList7.iterator();
                while (it.hasNext()) {
                    Integer num = 1;
                    num.equals(((Map) it.next()).get("is_win"));
                }
                p5.e(map, iMax, Math.max(150, E(150, "max_energy", map)), jG);
                j jVarO = i17 > 0 ? m.o(map, 2, i17) : j.d();
                j jVarC = y0.c(arrayList, map);
                LinkedHashMap linkedHashMapK0 = k0();
                linkedHashMapK0.put("fight_list", arrayList7);
                linkedHashMapK0.put("win_num", Integer.valueOf(i6));
                linkedHashMapK0.put("total_salary", Integer.valueOf(i9));
                linkedHashMapK0.put("total_honor", Integer.valueOf(i5));
                linkedHashMapK0.put("total_coin", Integer.valueOf(i18));
                linkedHashMapK0.put("fight_result_all", arrayList6);
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("success", Boolean.TRUE);
                linkedHashMap2.put("is_win", 1);
                linkedHashMap2.put("fight_type", 4);
                linkedHashMap2.put("win_num", Integer.valueOf(i6));
                linkedHashMap2.put("salary", Integer.valueOf(i9));
                linkedHashMap2.put("honor", Integer.valueOf(i5));
                linkedHashMap2.put("coin", Integer.valueOf(i18));
                c.a.s(i18, linkedHashMap2, "user_coin", i9, "rank_salary", i5, "reward_honor");
                linkedHashMap2.put("fight_list", arrayList7);
                linkedHashMap2.put("drop_info", arrayList7);
                linkedHashMap2.put("drop_total_info", p5.z0("user_coin", Integer.valueOf(i18), "user_exp", Integer.valueOf(i7), "general_exp", 0, "rank_salary", Integer.valueOf(i9), "reward_honor", Integer.valueOf(i5), "add_list", new ArrayList()));
                linkedHashMap2.put("hunshi", 0);
                linkedHashMapK0.put("fight_result", linkedHashMap2);
                linkedHashMapK0.put("user_info", v(map));
                linkedHashMapK0.put("ladder_info", p7Var == null ? o(map) : t(p7Var, str, map));
                i(linkedHashMapK0, map, jVarO);
                l(linkedHashMapK0, v5Var3);
                m(jVarC, linkedHashMapK0);
                return linkedHashMapK0;
            }
            str2 = "精力不足";
        }
        return A(str2);
    }

    public static boolean h0(int i2, Map map) {
        Object obj = map.get("info");
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        if (i2 < 0 || i2 >= list.size() || !(list.get(i2) instanceof Map)) {
            return false;
        }
        return Boolean.TRUE.equals(((Map) list.get(i2)).get("evolution_image_status"));
    }

    public static void i(LinkedHashMap linkedHashMap, Map map, j jVar) {
        LinkedHashMap linkedHashMapZ0;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i2 = 0;
        for (String str : "Player".split(",")) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                linkedHashSet.add(strTrim);
            }
        }
        Object obj = linkedHashMap.get("delta_data");
        LinkedHashMap linkedHashMap2 = obj instanceof Map ? new LinkedHashMap((Map) obj) : new LinkedHashMap();
        if (jVar.f881a) {
            List list = (List) jVar.f883c;
            linkedHashMap.put("meeting_info", list);
            linkedHashMap.put("meeting_list", list);
            linkedHashMap.put("list", list);
        }
        if (jVar.f882b) {
            for (String str2 : (Set) jVar.f884d) {
                linkedHashSet.add(str2);
                Object obj2 = map.get(str2);
                if (obj2 instanceof Map) {
                    Map map2 = (Map) obj2;
                    linkedHashMapZ0 = p5.z0(str2, p5.z0("del", map2.get("del") instanceof List ? new ArrayList((List) map2.get("del")) : new ArrayList(), "upd", map2.get("upd") instanceof List ? new ArrayList((List) map2.get("upd")) : new ArrayList(), "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0(str2, map)}, map, str2)), new Object[0]);
                    i2 = 0;
                } else {
                    linkedHashMapZ0 = p5.z0(str2, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[i2]);
                }
                linkedHashMap2.putAll(linkedHashMapZ0);
            }
        }
        if (!linkedHashMap2.isEmpty()) {
            linkedHashMap.put("delta_data", linkedHashMap2);
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = linkedHashSet.iterator();
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

    public static String i0(String str) {
        Map mapK1 = w1.a1(null).k1(str);
        if (mapK1 == null) {
            mapK1 = V(str);
        }
        if (mapK1 == null) {
            String str2 = (String) f960f.get(str);
            return str2 == null ? "" : str2;
        }
        String strTrim = String.valueOf(mapK1.getOrDefault("skill_type", "")).trim();
        return (strTrim.isEmpty() || "null".equalsIgnoreCase(strTrim)) ? "" : strTrim;
    }

    public static void j(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            String strJ = c.a.j(map, "equipment_type", "", "equipment_pos");
            if (!strJ.isEmpty() && !"0".equals(strJ) && !"null".equalsIgnoreCase(strJ)) {
                String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
                if (!strValueOf.isEmpty()) {
                    linkedHashMap.put("equipment_".concat(strJ), strValueOf);
                    linkedHashMap.put("equipment_id_".concat(strJ), strValueOf);
                    linkedHashMap.put("equip_id_".concat(strJ), strValueOf);
                    linkedHashMap.put("equipment_level_".concat(strJ), map.get("equipment_level"));
                }
            }
        }
    }

    public static void j0(long j2, Map map) {
        if (c7.f254i || j2 <= 0) {
            return;
        }
        int iW = w(map);
        if (E(iW, "ladderChallengeTimes", map) >= iW || M("ladderChallengeRecoverAt", map) > 0) {
            return;
        }
        map.put("ladderChallengeRecoverAt", Long.valueOf(j2));
    }

    public static void k(LinkedHashMap linkedHashMap, Map map, int i2, int i3, int i4, LinkedHashMap linkedHashMap2) {
        Object obj = linkedHashMap.get("init");
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            String strValueOf = String.valueOf(map.getOrDefault("user_nickname", "玩家"));
            String strX = x(map);
            int iE = E(E(0, "fightPoint", map), "fighting", map);
            String strValueOf2 = String.valueOf(linkedHashMap2.getOrDefault("nickname", "天梯对手" + i2));
            String strValueOf3 = String.valueOf(linkedHashMap2.getOrDefault("general_id", "131001"));
            Math.max(5, Math.min(100, ((10000 - Math.min(10000, Math.max(1, i2))) / 100) + 5));
            int iE2 = E(I(i2), "fighting", linkedHashMap2);
            map2.put("info", p5.v0(p5.z0("name", strValueOf, "nickname", strValueOf, "player_name", strValueOf, "userName", strValueOf, "teamPoint", Integer.valueOf(i3), "fighting", Integer.valueOf(iE), "fight_point", Integer.valueOf(iE), "general_id", strX, "general_skin", strX, "user_general_skin", strX, "teamLeader", strX, "team_leader", strX, "head", strX, "avatar", strX, "user_ability", Integer.valueOf(i3), "leadership_num", Integer.valueOf(i3), "leadershipNum", Integer.valueOf(i3), "user_leadership_num", Integer.valueOf(i3), "evolution_image_status", Boolean.valueOf(h0(0, map2))), p5.z0("name", strValueOf2, "nickname", strValueOf2, "player_name", strValueOf2, "userName", strValueOf2, "teamPoint", Integer.valueOf(i4), "fighting", Integer.valueOf(iE2), "fight_point", Integer.valueOf(iE2), "general_id", strValueOf3, "general_skin", strValueOf3, "user_general_skin", strValueOf3, "teamLeader", strValueOf3, "team_leader", strValueOf3, "head", strValueOf3, "avatar", strValueOf3, "user_ability", Integer.valueOf(i4), "leadership_num", Integer.valueOf(i4), "leadershipNum", Integer.valueOf(i4), "user_leadership_num", Integer.valueOf(i4), "evolution_image_status", Boolean.valueOf(h0(1, map2)))));
        }
    }

    public static LinkedHashMap k0() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static void l(LinkedHashMap linkedHashMap, v5 v5Var) {
        Map map;
        List listF0;
        Map linkedHashMap2;
        if (v5Var == null || (map = v5Var.r) == null || (listF0 = w1.f0("EvolutionInfo", map)) == null || listF0.isEmpty()) {
            return;
        }
        Object obj = linkedHashMap.get("cmn");
        if (obj instanceof Map) {
            linkedHashMap2 = (Map) obj;
        } else {
            linkedHashMap2 = new LinkedHashMap();
            linkedHashMap.put("cmn", linkedHashMap2);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("update_list", new ArrayList(listF0));
        linkedHashMap3.put("del_list", new ArrayList());
        linkedHashMap2.put("evolution_info", linkedHashMap3);
    }

    public static int l0(Map map) {
        if (map == null) {
            return Integer.MAX_VALUE;
        }
        String[] strArr = {"position", "team_position", "general_position"};
        for (int i2 = 0; i2 < 3; i2++) {
            int iE = c.a.e(map, strArr[i2], 0);
            if (iE > 0) {
                return iE;
            }
        }
        return Integer.MAX_VALUE;
    }

    public static void m(j jVar, LinkedHashMap linkedHashMap) {
        if (jVar.c()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Object obj = linkedHashMap.get("cmn_modules");
            if (obj != null) {
                for (String str : String.valueOf(obj).split(",")) {
                    String strTrim = str.trim();
                    if (!strTrim.isEmpty() && !"TeamGeneral".equals(strTrim)) {
                        linkedHashSet.add(strTrim);
                    }
                }
            }
            Object obj2 = linkedHashMap.get("delta_data");
            LinkedHashMap linkedHashMap2 = obj2 instanceof Map ? new LinkedHashMap((Map) obj2) : new LinkedHashMap();
            jVar.a(linkedHashMap2, linkedHashSet);
            jVar.b(linkedHashMap);
            if (!linkedHashMap2.isEmpty()) {
                linkedHashMap.put("delta_data", linkedHashMap2);
            }
            StringBuilder sb = new StringBuilder();
            Iterator it = linkedHashSet.iterator();
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
    }

    public static String m0(Object obj) {
        if (obj == null) {
            return null;
        }
        String strTrim = String.valueOf(obj).trim();
        if (strTrim.isEmpty() || "0".equals(strTrim) || "null".equalsIgnoreCase(strTrim)) {
            return null;
        }
        return strTrim;
    }

    public static LinkedHashMap n(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, LinkedHashMap linkedHashMap) {
        Object obj;
        boolean z2;
        int iE;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("success", Boolean.valueOf(z));
        linkedHashMap2.put("is_win", Integer.valueOf(z ? 1 : 0));
        linkedHashMap2.put("fight_type", 4);
        linkedHashMap2.put("old_rank", Integer.valueOf(i2));
        linkedHashMap2.put("new_rank", Integer.valueOf(i3));
        linkedHashMap2.put("rank_change", Integer.valueOf(i4));
        Object obj2 = linkedHashMap.get("rounds");
        boolean z3 = obj2 instanceof List;
        int iMax = 1;
        if (z3) {
            List list = (List) obj2;
            int i9 = 0;
            for (Object obj3 : list) {
                if (obj3 instanceof Map) {
                    Map map = (Map) obj3;
                    if (c.a.A(map, "skill", "Round")) {
                        Object obj4 = map.get("params");
                        if (obj4 instanceof Map) {
                            Object obj5 = ((Map) obj4).get("pre");
                            if ((obj5 instanceof Map) && (iE = c.a.e((Map) obj5, "roundCur", 0)) > i9) {
                                i9 = iE;
                            }
                        }
                    }
                }
            }
            iMax = i9 > 0 ? i9 : Math.max(1, list.size());
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        Object obj6 = linkedHashMap.get("init");
        if (obj6 instanceof Map) {
            Map map2 = (Map) obj6;
            Object obj7 = map2.get("cards");
            int iF = c.a.f(map2, "cards_size0", "0", 0);
            int iF2 = c.a.f(map2, "cards_size1", "0", 0);
            obj = "rounds";
            int iF3 = c.a.f(map2, "backups_size0", "0", 0);
            if (obj7 instanceof List) {
                List list2 = (List) obj7;
                b(0, iF, list2, linkedHashMap3);
                b(iF + iF2, iF3, list2, linkedHashMap3);
            }
        } else {
            obj = "rounds";
        }
        if (z3) {
            for (Object obj8 : (List) obj2) {
                if (obj8 instanceof Map) {
                    Map map3 = (Map) obj8;
                    Object obj9 = map3.get("params");
                    if (obj9 instanceof Map) {
                        Map map4 = (Map) obj9;
                        f(linkedHashMap3, map3.get("from"), map4.get("from"));
                        f(linkedHashMap3, map3.get("to"), map4.get("to"));
                        if ("enter".equals(String.valueOf(map3.get("skill")))) {
                            Object obj10 = map4.get("pre");
                            if (obj10 instanceof Map) {
                                Map map5 = (Map) obj10;
                                int iE2 = c.a.e(map5, "leaveIdx", -1);
                                int iE3 = c.a.e(map5, "backupIdx", -1);
                                if (iE2 >= 0 && iE3 >= 0 && iE2 != iE3 && linkedHashMap3.containsKey(Integer.valueOf(iE3))) {
                                    linkedHashMap3.put(Integer.valueOf(iE3), Double.valueOf(0.0d));
                                }
                            }
                        }
                    }
                }
            }
        }
        int size = linkedHashMap3.size();
        Iterator it = linkedHashMap3.values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (((Double) it.next()).doubleValue() > 0.0d) {
                i10++;
            }
        }
        if (size <= 0) {
            size = 1;
            z2 = true;
            i10 = 1;
        } else {
            z2 = true;
        }
        LinkedHashMap linkedHashMapZ0 = p5.z0("star_level", Integer.valueOf(BattleStarCalculator.calculate(z2, i10, size)), "rounds", Integer.valueOf(iMax), "residue_team_num", Integer.valueOf(i10), "residue_team_percent", Integer.valueOf(BattleStarCalculator.ceilPercent(i10, size)));
        int iL2 = z ? w1.l2(String.valueOf(linkedHashMapZ0.get("star_level")), 3) : 0;
        linkedHashMap2.put("star_level", Integer.valueOf(iL2));
        linkedHashMap2.put("dungeon_starLevel", Integer.valueOf(iL2));
        linkedHashMap2.put("salary", Integer.valueOf(i5));
        linkedHashMap2.put("honor", Integer.valueOf(i6));
        linkedHashMap2.put("coin", Integer.valueOf(i7));
        linkedHashMap2.put("player_exp", Integer.valueOf(i8));
        linkedHashMap2.put("user_exp", Integer.valueOf(i8));
        linkedHashMap2.put("user_coin", Integer.valueOf(i7));
        linkedHashMap2.put("rank_salary", Integer.valueOf(i5));
        linkedHashMap2.put("reward_honor", Integer.valueOf(i6));
        linkedHashMap2.put("drop_info", p5.z0("user_coin", Integer.valueOf(i7), "user_exp", Integer.valueOf(i8), "general_exp", 0, "rank_salary", Integer.valueOf(i5), "reward_honor", Integer.valueOf(i6), "add_list", new ArrayList()));
        if (linkedHashMap.get("defender") instanceof Map) {
            linkedHashMap2.put("player_info", new LinkedHashMap((Map) linkedHashMap.get("defender")));
        }
        linkedHashMapZ0.put("star_level", Integer.valueOf(iL2));
        linkedHashMapZ0.put("up_rank", Integer.valueOf(i3));
        linkedHashMap2.put("fight_calculate_info", p5.z0("star_level", Integer.valueOf(iL2), "rounds", linkedHashMapZ0.get(obj), "residue_team_num", linkedHashMapZ0.get("residue_team_num"), "residue_team_percent", linkedHashMapZ0.get("residue_team_percent"), "up_rank", Integer.valueOf(i3)));
        return linkedHashMap2;
    }

    public static LinkedHashMap o(Map map) {
        int i2;
        P(map);
        int iE = E(9999, "ladder_rank", map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ladder_rank", Integer.valueOf(iE));
        linkedHashMap.put("best_rank", Integer.valueOf(E(iE, "ladder_best_rank", map)));
        linkedHashMap.put("rank_name", p5.T0(iE));
        linkedHashMap.put("cur_rank_salary", Integer.valueOf(p5.f1(iE)));
        if (iE <= 10) {
            i2 = 1500;
        } else {
            i2 = 1000;
            if (iE > 100) {
                i2 = iE <= 1000 ? 500 : 200;
            }
        }
        linkedHashMap.put("next_rank_salary", Integer.valueOf(i2));
        linkedHashMap.put("ladder_rank_salary", Integer.valueOf(E(0, "ladderRankSalary", map)));
        int iW = w(map);
        linkedHashMap.put("total_challenge_num", Integer.valueOf(iW));
        linkedHashMap.put("challenging_num", Integer.valueOf(E(iW, "ladderChallengeTimes", map)));
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        int iMax = Math.max(1, iE);
        for (int i3 = 1; i3 <= 10; i3++) {
            c(arrayList, hashSet, map, iMax, i3);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = 100; i4 >= 5; i4 -= 5) {
            int i5 = iMax - i4;
            if (i5 > 10) {
                arrayList2.add(Integer.valueOf(i5));
            }
        }
        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
            c(arrayList, hashSet, map, iMax, ((Integer) arrayList2.get(i6)).intValue());
        }
        c(arrayList, hashSet, map, iMax, iMax);
        for (int i7 = 1; i7 <= 5; i7++) {
            c(arrayList, hashSet, map, iMax, iMax + i7);
        }
        linkedHashMap.put("ladder_team", arrayList);
        return linkedHashMap;
    }

    public static ArrayList p(int i2, int i3, int i4, int i5, String str, String str2) {
        String str3;
        ArrayList arrayList = new ArrayList();
        w1 w1VarA1 = w1.a1(null);
        Iterator it = S(i4, i5, str).iterator();
        while (it.hasNext()) {
            o0 o0Var = (o0) it.next();
            String str4 = o0Var.f949a;
            String strZ = z(str4, w1VarA1.z0(str4));
            if (!strZ.isEmpty()) {
                StringBuilder sb = new StringBuilder("ladder_eq_");
                sb.append(i2);
                sb.append("_");
                sb.append(i3 + 1);
                sb.append("_");
                boolean z = o0Var.f952d;
                sb.append(z ? "fallback_" : "");
                sb.append(strZ);
                LinkedHashMap linkedHashMapR = c.a.r("pk_id", sb.toString(), "general_pk_id", str2);
                linkedHashMapR.put("general_id", str2);
                linkedHashMapR.put("user_general_id", str2);
                linkedHashMapR.put("is_wear", "1");
                linkedHashMapR.put("wear", "1");
                Iterator it2 = it;
                int i6 = o0Var.f950b;
                ArrayList arrayList2 = arrayList;
                linkedHashMapR.put("level", Integer.valueOf(i6));
                linkedHashMapR.put("equipment_level", Integer.valueOf(i6));
                int i7 = o0Var.f951c;
                linkedHashMapR.put("refine_level", Integer.valueOf(i7));
                linkedHashMapR.put("refine_exp", 0);
                linkedHashMapR.put("get_time", "1");
                linkedHashMapR.put("exp", "0");
                w1VarA1.R(str4, linkedHashMapR);
                linkedHashMapR.put("general_pk_id", str2);
                linkedHashMapR.put("general_id", str2);
                linkedHashMapR.put("user_general_id", str2);
                linkedHashMapR.put("is_wear", "1");
                c.a.z(linkedHashMapR, "wear", "1", i6, "level", i6, "equipment_level");
                linkedHashMapR.put("refine_level", Integer.valueOf(i7));
                linkedHashMapR.put("refine_exp", 0);
                linkedHashMapR.put("get_time", "1");
                linkedHashMapR.put("exp", "0");
                if (z) {
                    linkedHashMapR.put("equipment_pos", strZ);
                    linkedHashMapR.put("equipment_type", strZ);
                    int iL2 = w1.l2(strZ, 0);
                    if (iL2 > 0 && iL2 < 5) {
                        linkedHashMapR.put("grade", "1");
                        linkedHashMapR.put("sell_type", f956b[iL2]);
                        linkedHashMapR.put("upgrade_coin_type", f957c[iL2]);
                        linkedHashMapR.put("refine_upgrade_exp_type", "xiashen_jinglian");
                        linkedHashMapR.put("refine_eaten_exp_type", "xiashencailiao_jinglian");
                        linkedHashMapR.put("refine_bonus_type", "xiashen_jinglian_up");
                        if ("3".equals(strZ)) {
                            linkedHashMapR.put("fighting", "810");
                            str3 = "630.00";
                        } else {
                            linkedHashMapR.put("fighting", "405");
                            str3 = "135.00";
                        }
                        linkedHashMapR.put("effect_value", str3);
                    }
                }
                arrayList = arrayList2;
                arrayList.add(linkedHashMapR);
                it = it2;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0083  */
    public static ArrayList q(int i2, com.sgscq.vpn.config.e eVar) {
        String str;
        int i3;
        int i4;
        String strI1;
        byte b2;
        int i5 = i2;
        com.sgscq.vpn.config.e eVar2 = eVar;
        int I = I(i2);
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        int i6 = 0;
        while (true) {
            int i7 = eVar2.f566d;
            if (i6 >= i7) {
                return arrayList;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int iMax = I / Math.max(1, i7);
            int i8 = eVar2.f563a;
            int i9 = (i8 * 7) + (i5 * 31) + i6;
            String str2 = "";
            String strJ = "";
            int i10 = 0;
            while (true) {
                if (i10 >= 2000) {
                    str = str2;
                    int i11 = 0;
                    for (int i12 = 2000; i11 < i12; i12 = 2000) {
                        String strI2 = p5.i1(i9 + i11);
                        if (strI2 != null && !strI2.isEmpty() && !hashSet.contains(strI2) && F(strI2) && !O(strI2).isEmpty() && !Q(strI2).isEmpty()) {
                            strJ = strI2;
                            break;
                        }
                        i11++;
                    }
                    break;
                }
                String strI3 = p5.i1(i9 + i10);
                if (strI3 != null && !strI3.isEmpty() && !hashSet.contains(strI3) && F(strI3)) {
                    String strO = O(strI3);
                    if (!strO.isEmpty()) {
                        if (strJ.isEmpty()) {
                            strJ = strI3;
                        }
                        str = str2;
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        if (!strO.isEmpty()) {
                            linkedHashSet.add(strO);
                        }
                        if (!T(strI3, linkedHashSet).isEmpty()) {
                            strJ = strI3;
                            break;
                        }
                    } else {
                        str = str2;
                    }
                } else {
                    str = str2;
                }
                i10++;
                str2 = str;
            }
            if (strJ.isEmpty()) {
                strJ = J(i5, i8, i6);
            }
            hashSet.add(strJ);
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            String strO2 = O(strJ);
            if (!strO2.isEmpty()) {
                linkedHashSet2.add(strO2);
            }
            String strT = T(strJ, linkedHashSet2);
            if (strT != null && !strT.isEmpty()) {
                linkedHashMap.put("fate_skill_id", strT);
                String strI0 = i0(strT);
                if (!strI0.isEmpty()) {
                    linkedHashSet2.add(strI0);
                }
            }
            double[] dArr = {0.0d, 0.0d, 0.0d, 0.0d};
            w1 w1VarA1 = w1.a1(null);
            Iterator it = S(eVar2.f565c, 100, strJ).iterator();
            while (it.hasNext()) {
                o0 o0Var = (o0) it.next();
                it = it;
                String str3 = o0Var.f949a;
                I = I;
                Map mapZ0 = w1VarA1.z0(str3);
                if (mapZ0 != null) {
                    String strZ = z(str3, mapZ0);
                    if (!strZ.isEmpty()) {
                        w1 w1Var = w1VarA1;
                        if ("3".equals(strZ)) {
                            b2 = 0;
                        } else if ("1".equals(strZ)) {
                            b2 = 1;
                        } else if ("2".equals(strZ)) {
                            b2 = 2;
                        } else {
                            b2 = "4".equals(strZ) ? (byte) 3 : (byte) -1;
                        }
                        if (b2 >= 0) {
                            dArr[b2] = Math.floor((((double) Math.max(0, o0Var.f950b - 1)) * y(mapZ0.getOrDefault("effect_step", mapZ0.getOrDefault("effect_value_step", "0")), 0.0d)) + y(mapZ0.get("effect_value"), 0.0d)) + dArr[b2];
                        }
                        arrayList = arrayList;
                        w1VarA1 = w1Var;
                    }
                }
            }
            int i13 = I;
            ArrayList arrayList2 = arrayList;
            linkedHashMap.put("slot", Integer.valueOf(i6));
            linkedHashMap.put("general_id", strJ);
            if (i8 >= 90) {
                i3 = 5;
            } else if (i8 >= 70) {
                i3 = 4;
            } else if (i8 >= 45) {
                i3 = 2;
            } else {
                i3 = i8 >= 20 ? 1 : 0;
            }
            if (i6 < i3) {
                HashSet hashSet3 = new HashSet(hashSet);
                hashSet3.addAll(hashSet2);
                i4 = i2;
                int i14 = (i6 * 2) + (i8 * 11) + (i4 * 37) + 1;
                int i15 = 0;
                while (true) {
                    if (i15 >= 2000) {
                        strI1 = str;
                        break;
                    }
                    strI1 = p5.i1(i14 + i15);
                    if (strI1 != null && !strI1.isEmpty() && !hashSet3.contains(strI1) && F(strI1) && !f959e.containsKey(strI1)) {
                        String strO3 = O(strI1);
                        if (!strO3.isEmpty()) {
                            if (!(!strO3.isEmpty() && linkedHashSet2.contains(strO3))) {
                                if (str.isEmpty()) {
                                    str = strI1;
                                }
                                if (!Q(strI1).isEmpty()) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    }
                    i15++;
                }
                if (!strI1.isEmpty()) {
                    linkedHashMap.put("deputy_general_id", strI1);
                    hashSet2.add(strI1);
                }
            } else {
                i4 = i2;
            }
            int i16 = eVar.f564b;
            linkedHashMap.put("level", Integer.valueOf(i16));
            linkedHashMap.put("fighting", Integer.valueOf(iMax));
            linkedHashMap.put("hp", Double.valueOf(((double) Math.max(600, (i6 * 80) + (i16 * 8) + (iMax / 8))) + dArr[0]));
            linkedHashMap.put("atk", Double.valueOf(((double) Math.max(80, (i6 * 8) + (i16 * 2) + (iMax / 45))) + dArr[1]));
            int i17 = (i6 * 4) + (iMax / 90) + i16;
            linkedHashMap.put("def", Double.valueOf(((double) Math.max(50, i17)) + dArr[2]));
            linkedHashMap.put("wis", Double.valueOf(((double) Math.max(50, i17)) + dArr[3]));
            StringBuilder sb = new StringBuilder("ladder_");
            sb.append(i4);
            sb.append("_");
            int i18 = i6 + 1;
            sb.append(i18);
            j(p(i2, i6, eVar.f565c, eVar.f567e, strJ, sb.toString()), linkedHashMap);
            arrayList2.add(linkedHashMap);
            i6 = i18;
            arrayList = arrayList2;
            I = i13;
            int i19 = i4;
            eVar2 = eVar;
            i5 = i19;
        }
    }

    public static LinkedHashMap r(Map map) {
        ArrayList arrayList;
        int iA0 = a0(1, map);
        com.sgscq.vpn.config.e eVarU = U(iA0);
        LinkedHashMap linkedHashMapS = s(iA0, 0, eVarU);
        ArrayList arrayListQ = q(iA0, eVarU);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayListC0 = com.sgscq.vpn.cloud.m0.c0();
        int i2 = 0;
        while (i2 < arrayListQ.size()) {
            Map map2 = (Map) arrayListQ.get(i2);
            StringBuilder sb = new StringBuilder("ladder_");
            sb.append(iA0);
            sb.append("_");
            int i3 = i2 + 1;
            sb.append(i3);
            String string = sb.toString();
            String strValueOf = String.valueOf(map2.getOrDefault("general_id", "131001"));
            ArrayList arrayList6 = arrayList5;
            double dY = y(map2.get("hp"), 1000.0d);
            ArrayList arrayList7 = arrayList3;
            ArrayList arrayList8 = arrayList2;
            double dY2 = y(map2.get("atk"), 100.0d);
            com.sgscq.vpn.config.e eVar = eVarU;
            ArrayList arrayList9 = arrayListQ;
            double dY3 = y(map2.get("def"), 50.0d);
            double dY4 = y(map2.get("wis"), 50.0d);
            Object obj = map2.get("fighting");
            LinkedHashMap linkedHashMap = linkedHashMapS;
            LinkedHashMap linkedHashMapY = Y(string, strValueOf, map2.get("level"), dY, dY2, dY3, dY4, obj, "", "0");
            int i4 = eVar.f568f;
            LinkedHashMap linkedHashMapZ = Z(string, i4, strValueOf);
            ArrayList arrayList10 = new ArrayList();
            arrayList10.add(linkedHashMapZ);
            String strM0 = m0(map2.get("fate_skill_id"));
            if (strM0 != null) {
                w1 w1VarA1 = w1.a1(null);
                LinkedHashMap linkedHashMapR = c.a.r("pk_id", string + "_skill2", "general_pk_id", string);
                linkedHashMapR.put("skill_id", strM0);
                linkedHashMapR.put("id", strM0);
                linkedHashMapR.put("skill_code", strM0);
                linkedHashMapR.put("card_type", "4");
                linkedHashMapR.put("level", String.valueOf(Math.max(1, i4)));
                linkedHashMapR.put("skill_level", String.valueOf(Math.max(1, i4)));
                linkedHashMapR.put("pos", "2");
                linkedHashMapR.put("position", "2");
                linkedHashMapR.put("skill_position", "2");
                linkedHashMapR.put("is_natural", Boolean.FALSE);
                linkedHashMapR.put("get_time", "1");
                linkedHashMapR.put("exp", "0");
                linkedHashMapR.put("extra_level", "0");
                linkedHashMapR.put("advanced_level", "0");
                w1VarA1.S(strM0, linkedHashMapR);
                e0(strM0, linkedHashMapR);
                arrayList10.add(linkedHashMapR);
                arrayList4.add(linkedHashMapR);
            }
            linkedHashMapY.put("general_naturalskill_id", linkedHashMapZ.get("pk_id"));
            linkedHashMapY.put("gSkill", arrayList10);
            linkedHashMapY.put("general_skills", arrayList10);
            int i5 = iA0;
            ArrayList arrayListP = p(iA0, i2, eVar.f565c, eVar.f567e, strValueOf, string);
            j(arrayListP, linkedHashMapY);
            arrayList8.add(linkedHashMapY);
            arrayList4.add(linkedHashMapZ);
            arrayList6.addAll(arrayListP);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("pk_id", string);
            linkedHashMap2.put("general_id", strValueOf);
            linkedHashMap2.put("general_pk_id", string);
            linkedHashMap2.put("position", String.valueOf(i3));
            linkedHashMap2.put("general_position", String.valueOf(i3));
            linkedHashMap2.put("general_hp", Double.valueOf(dY));
            linkedHashMap2.put("general_attack", Double.valueOf(dY2));
            linkedHashMap2.put("general_defense", Double.valueOf(dY3));
            linkedHashMap2.put("general_wisdom", Double.valueOf(dY4));
            linkedHashMap2.put("general_fighting", obj);
            j(arrayListP, linkedHashMap2);
            if (map2.containsKey("deputy_general_id")) {
                linkedHashMap2.put("deputy_general_id", map2.get("deputy_general_id"));
                String strValueOf2 = String.valueOf(map2.get("deputy_general_id"));
                String str = string + "_lt1";
                LinkedHashMap linkedHashMapY2 = Y(str, strValueOf2, map2.get("level"), Math.max(1.0d, dY * 0.35d), Math.max(1.0d, dY2 * 0.35d), Math.max(1.0d, dY3 * 0.35d), Math.max(1.0d, dY4 * 0.35d), Double.valueOf(Math.max(1.0d, y(obj, 1.0d) * 0.35d)), string, "1");
                LinkedHashMap linkedHashMapZ2 = Z(str, i4, strValueOf2);
                linkedHashMapY2.put("general_naturalskill_id", linkedHashMapZ2.get("pk_id"));
                linkedHashMapY2.put("gSkill", p5.v0(linkedHashMapZ2));
                linkedHashMapY2.put("general_skills", p5.v0(linkedHashMapZ2));
                arrayList8.add(linkedHashMapY2);
                arrayList = arrayList4;
                arrayList.add(linkedHashMapZ2);
            } else {
                arrayList = arrayList4;
            }
            arrayList3 = arrayList7;
            arrayList3.add(linkedHashMap2);
            arrayList4 = arrayList;
            arrayList2 = arrayList8;
            arrayList5 = arrayList6;
            i2 = i3;
            arrayListQ = arrayList9;
            linkedHashMapS = linkedHashMap;
            eVarU = eVar;
            iA0 = i5;
        }
        LinkedHashMap linkedHashMap3 = linkedHashMapS;
        return com.sgscq.vpn.cloud.m0.A(p5.z0("player_id", linkedHashMap3.get("player_id"), "user_id", linkedHashMap3.get("player_id"), "account_uid", linkedHashMap3.get("player_id"), "uid", linkedHashMap3.get("player_id"), "player_type", linkedHashMap3.get("player_type"), "nickname", linkedHashMap3.get("nickname"), "nick", linkedHashMap3.get("nickname"), "nickName", linkedHashMap3.get("nickname"), "roleName", linkedHashMap3.get("nickname"), "user_nickname", linkedHashMap3.get("nickname"), "user_name", linkedHashMap3.get("nickname"), "player_level", linkedHashMap3.get("player_level"), "user_level", linkedHashMap3.get("player_level"), "level", linkedHashMap3.get("player_level"), "user_vip_level", linkedHashMap3.get("user_vip_level"), "user_experience", 0, "user_charge_count", 0, "current_charge_gold", 0, "count_charge_gold", 0, "user_coin", 1, "user_gold", 1, "user_power", 1, "user_power_date", 0, "user_energy", 1, "user_energy_date", 0, "gold_soul", 0, "sliver_soul", 0, "user_sign", "", "user_last_login_time", 1, "fightPoint", linkedHashMap3.get("fighting"), "fight_point", linkedHashMap3.get("fighting"), "user_fighting", linkedHashMap3.get("fighting"), "fighting", linkedHashMap3.get("fighting"), "ladder_rank", Integer.valueOf(iA0), "ladder_rank_salary", linkedHashMap3.get("fight_salary"), "ladder_challenging_num", 0, "rank_name", linkedHashMap3.get("rank_name"), "general_id", linkedHashMap3.get("general_id"), "general_skin", linkedHashMap3.get("general_skin"), "head", linkedHashMap3.get("head"), "avatar", linkedHashMap3.get("avatar"), "user_ability", linkedHashMap3.get("user_ability"), "leadership_num", linkedHashMap3.get("leadership_num"), "first_choose_general", linkedHashMap3.get("general_id"), "first_wine_general", linkedHashMap3.get("general_id"), "freshman_step", "80000", "triple_speed", Boolean.FALSE, "triple_speed_vip_level", 0, "item_count", new LinkedHashMap(), "user_map_step", "500001", "user_position_step", 501001, "user_elite_map_step", "10501", "user_elite_position_step", "1050100101", "dungeon_cold_time", 0, "cd_item_price", 0, "base_cold_time", 0, "to_danger_time", 0, "user_honor", 0, "union_id", 0, "union_name", "", "user_role", 0, "user_donate", 0, "donate_num", 0, "donate_state", 0, "union_war_sign_up", 0), arrayList2, arrayList3, arrayList4, arrayListC0, arrayList5);
    }

    public static LinkedHashMap s(int i2, int i3, com.sgscq.vpn.config.e eVar) {
        int I = I(i2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ladder_rank", Integer.valueOf(i2));
        linkedHashMap.put("player_id", "ladder_npc_" + i2);
        linkedHashMap.put("user_id", "ladder_npc_" + i2);
        linkedHashMap.put("player_type", 1);
        int i4 = eVar.f563a;
        linkedHashMap.put("player_level", Integer.valueOf(i4));
        linkedHashMap.put("user_level", Integer.valueOf(i4));
        linkedHashMap.put("level", Integer.valueOf(i4));
        String str = "天梯对手" + i2;
        String strJ = J(i2, i4, 0);
        linkedHashMap.put("nickname", str);
        linkedHashMap.put("user_nickname", str);
        linkedHashMap.put("user_name", str);
        linkedHashMap.put("user_nick", str);
        linkedHashMap.put("userName", str);
        linkedHashMap.put("roleName", str);
        linkedHashMap.put("user_vip_level", Integer.valueOf(i3 % 4));
        linkedHashMap.put("rank_name", p5.T0(i2));
        linkedHashMap.put("to_attack", 1);
        linkedHashMap.put("is_enemy", 1);
        linkedHashMap.put("general_id", strJ);
        linkedHashMap.put("general_skin", strJ);
        linkedHashMap.put("user_general_skin", strJ);
        linkedHashMap.put("head", strJ);
        linkedHashMap.put("avatar", strJ);
        linkedHashMap.put("fight_salary", Integer.valueOf(p5.f1(i2) / 10));
        linkedHashMap.put("fighting", Integer.valueOf(I));
        linkedHashMap.put("fight_point", Integer.valueOf(I));
        linkedHashMap.put("fightPoint", Integer.valueOf(I));
        int i5 = eVar.f566d;
        linkedHashMap.put("user_ability", Integer.valueOf(i5));
        linkedHashMap.put("leadership_num", Integer.valueOf(i5));
        linkedHashMap.put("leadershipNum", Integer.valueOf(i5));
        linkedHashMap.put("user_leadership_num", Integer.valueOf(i5));
        linkedHashMap.put("govern", Integer.valueOf(i5));
        linkedHashMap.put("team_size", Integer.valueOf(i5));
        return linkedHashMap;
    }

    public static LinkedHashMap t(p7 p7Var, String str, Map map) {
        int i2;
        int i3;
        int iE = E(1001, "ladder_rank", map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ladder_rank", Integer.valueOf(iE));
        linkedHashMap.put("best_rank", Integer.valueOf(E(iE, "ladder_best_rank", map)));
        linkedHashMap.put("rank_name", p5.T0(iE));
        linkedHashMap.put("cur_rank_salary", Integer.valueOf(p5.f1(iE)));
        int i4 = 100;
        if (iE <= 10) {
            i2 = 1500;
        } else {
            i2 = 1000;
            if (iE > 100) {
                i2 = iE <= 1000 ? 500 : 200;
            }
        }
        linkedHashMap.put("next_rank_salary", Integer.valueOf(i2));
        int i5 = 0;
        linkedHashMap.put("ladder_rank_salary", Integer.valueOf(E(0, "ladderRankSalary", map)));
        int iW = w(map);
        linkedHashMap.put("total_challenge_num", Integer.valueOf(iW));
        linkedHashMap.put("challenging_num", Integer.valueOf(E(iW, "ladderChallengeTimes", map)));
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i6 = 1; i6 <= 10; i6++) {
            d(arrayList, hashSet, map, str, p7Var, iE, i6);
        }
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            i3 = 5;
            if (i4 < 5) {
                break;
            }
            int i7 = iE - i4;
            if (i7 > 10) {
                arrayList2.add(Integer.valueOf(i7));
            }
            i4 -= 5;
        }
        while (i5 < arrayList2.size()) {
            d(arrayList, hashSet, map, str, p7Var, iE, ((Integer) arrayList2.get(i5)).intValue());
            i5++;
            i3 = i3;
            arrayList2 = arrayList2;
        }
        int i8 = i3;
        d(arrayList, hashSet, map, str, p7Var, iE, iE);
        for (int i9 = 1; i9 <= i8; i9++) {
            d(arrayList, hashSet, map, str, p7Var, iE, iE + i9);
        }
        linkedHashMap.put("ladder_team", arrayList);
        return linkedHashMap;
    }

    public static LinkedHashMap u(Map map) {
        String strValueOf;
        int iE = E(9999, "ladder_rank", map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ladder_rank", Integer.valueOf(iE));
        String[] strArr = {"account_uid", "player_id", "uid", "user_id"};
        for (int i2 = 0; i2 < 4; i2++) {
            Object obj = map.get(strArr[i2]);
            if (obj != null && !String.valueOf(obj).trim().isEmpty()) {
                strValueOf = String.valueOf(obj);
                l.b(linkedHashMap, "player_id", strValueOf, 1, "player_type");
                linkedHashMap.put("player_level", Integer.valueOf(E(1, "user_level", map)));
                linkedHashMap.put("level", Integer.valueOf(E(1, "user_level", map)));
                String strValueOf2 = String.valueOf(map.getOrDefault("user_nickname", "玩家"));
                String strX = x(map);
                String strF = p5.F(strX, map);
                linkedHashMap.put("nickname", strValueOf2);
                linkedHashMap.put("user_name", strValueOf2);
                linkedHashMap.put("user_nick", strValueOf2);
                linkedHashMap.put("userName", strValueOf2);
                linkedHashMap.put("roleName", strValueOf2);
                linkedHashMap.put("user_vip_level", Integer.valueOf(E(0, "user_vip_level", map)));
                linkedHashMap.put("rank_name", p5.T0(iE));
                linkedHashMap.put("to_attack", 0);
                linkedHashMap.put("is_enemy", 0);
                linkedHashMap.put("general_id", strX);
                linkedHashMap.put("general_skin", strF);
                linkedHashMap.put("user_general_skin", strF);
                linkedHashMap.put("head", strF);
                linkedHashMap.put("avatar", strF);
                linkedHashMap.put("fight_salary", Integer.valueOf(p5.f1(iE) / 10));
                linkedHashMap.put("prob_type", 0);
                int iE2 = E(E(100, "fightPoint", map), "fighting", map);
                linkedHashMap.put("fighting", Integer.valueOf(iE2));
                linkedHashMap.put("fight_point", Integer.valueOf(iE2));
                linkedHashMap.put("fightPoint", Integer.valueOf(iE2));
                int iB0 = b0(map);
                linkedHashMap.put("user_ability", Integer.valueOf(iB0));
                linkedHashMap.put("leadership_num", Integer.valueOf(iB0));
                linkedHashMap.put("leadershipNum", Integer.valueOf(iB0));
                linkedHashMap.put("user_leadership_num", Integer.valueOf(iB0));
                linkedHashMap.put("govern", Integer.valueOf(iB0));
                return linkedHashMap;
            }
        }
        strValueOf = "local-player";
        l.b(linkedHashMap, "player_id", strValueOf, 1, "player_type");
        linkedHashMap.put("player_level", Integer.valueOf(E(1, "user_level", map)));
        linkedHashMap.put("level", Integer.valueOf(E(1, "user_level", map)));
        String strValueOf3 = String.valueOf(map.getOrDefault("user_nickname", "玩家"));
        String strX2 = x(map);
        String strF2 = p5.F(strX2, map);
        linkedHashMap.put("nickname", strValueOf3);
        linkedHashMap.put("user_name", strValueOf3);
        linkedHashMap.put("user_nick", strValueOf3);
        linkedHashMap.put("userName", strValueOf3);
        linkedHashMap.put("roleName", strValueOf3);
        linkedHashMap.put("user_vip_level", Integer.valueOf(E(0, "user_vip_level", map)));
        linkedHashMap.put("rank_name", p5.T0(iE));
        linkedHashMap.put("to_attack", 0);
        linkedHashMap.put("is_enemy", 0);
        linkedHashMap.put("general_id", strX2);
        linkedHashMap.put("general_skin", strF2);
        linkedHashMap.put("user_general_skin", strF2);
        linkedHashMap.put("head", strF2);
        linkedHashMap.put("avatar", strF2);
        linkedHashMap.put("fight_salary", Integer.valueOf(p5.f1(iE) / 10));
        linkedHashMap.put("prob_type", 0);
        int iE3 = E(E(100, "fightPoint", map), "fighting", map);
        linkedHashMap.put("fighting", Integer.valueOf(iE3));
        linkedHashMap.put("fight_point", Integer.valueOf(iE3));
        linkedHashMap.put("fightPoint", Integer.valueOf(iE3));
        int iB1 = b0(map);
        linkedHashMap.put("user_ability", Integer.valueOf(iB1));
        linkedHashMap.put("leadership_num", Integer.valueOf(iB1));
        linkedHashMap.put("leadershipNum", Integer.valueOf(iB1));
        linkedHashMap.put("user_leadership_num", Integer.valueOf(iB1));
        linkedHashMap.put("govern", Integer.valueOf(iB1));
        return linkedHashMap;
    }

    public static LinkedHashMap v(Map map) {
        return p5.z0("ladder_rank", Integer.valueOf(E(9999, "ladder_rank", map)), "ladder_challenging_num", Integer.valueOf(E(w(map), "ladderChallengeTimes", map)), "ladderChallengeTimes", Integer.valueOf(E(w(map), "ladderChallengeTimes", map)), "ladder_rank_salary", Integer.valueOf(E(0, "ladderRankSalary", map)), "ladderRankSalary", Integer.valueOf(E(0, "ladderRankSalary", map)), "user_honor", Integer.valueOf(E(0, "user_honor", map)), "honor", Integer.valueOf(E(0, "user_honor", map)), "user_level", Integer.valueOf(E(E(1, "level", map), "user_level", map)), "level", Integer.valueOf(E(E(1, "level", map), "user_level", map)), "user_exp", Integer.valueOf(E(E(0, "user_experience", map), "user_exp", map)), "user_experience", Integer.valueOf(E(E(0, "user_exp", map), "user_experience", map)), "experience", Integer.valueOf(E(E(E(0, "user_exp", map), "user_experience", map), "experience", map)), "user_energy", Integer.valueOf(E(0, "user_energy", map)), "user_energy_date", Integer.valueOf(E(0, "user_energy_date", map)));
    }

    public static int w(Map map) {
        int iN2 = com.sgscq.vpn.cloud.m0.n2(map);
        int iMax = Math.max(6, Math.min(20, Math.max(0, iN2) + 5));
        Map mapD3 = com.sgscq.vpn.cloud.m0.d3(iN2, null);
        return mapD3 == null ? iMax : Math.max(0, com.sgscq.vpn.cloud.m0.X1(mapD3.get("ladder_challenge_num"), iMax));
    }

    public static String x(Map map) {
        String strM0 = m0(map.get("general_skin"));
        if (strM0 != null) {
            return strM0;
        }
        ArrayList arrayList = new ArrayList(w1.f0("TeamGeneral", map));
        Collections.sort(arrayList, new c.n(4));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String strValueOf = String.valueOf(((Map) it.next()).getOrDefault("general_pk_id", ""));
            for (Map map2 : w1.f0("General", map)) {
                if (c.a.A(map2, "pk_id", strValueOf)) {
                    return String.valueOf(map2.getOrDefault("general_id", "131001"));
                }
            }
        }
        Object obj = map.get("first_choose_general");
        return (obj == null || String.valueOf(obj).isEmpty() || "0".equals(String.valueOf(obj))) ? "131001" : String.valueOf(obj);
    }

    public static double y(Object obj, double d2) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (obj == null) {
            return d2;
        }
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (Exception unused) {
            return d2;
        }
    }

    public static String z(String str, Map map) {
        char cCharAt;
        String strTrim = map == null ? "" : String.valueOf(map.getOrDefault("equipment_pos", map.getOrDefault("equipment_type", ""))).trim();
        if (strTrim.isEmpty() || "0".equals(strTrim) || "null".equalsIgnoreCase(strTrim)) {
            return (str == null || str.length() < 2 || (cCharAt = str.charAt(1)) < '1' || cCharAt > '4') ? "" : String.valueOf(cCharAt);
        }
        return strTrim;
    }
}
