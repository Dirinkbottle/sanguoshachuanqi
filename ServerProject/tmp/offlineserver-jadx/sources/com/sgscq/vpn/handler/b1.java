package com.sgscq.vpn.handler;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.battle.BattleResult;
import com.sgscq.vpn.battle.BattleScenario;
import com.sgscq.vpn.battle.BattleStarCalculator;
import com.sgscq.vpn.battle.BattleUnit;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.n1;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w1;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class b1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f773b = {3, 6, 9, 30, 60, 90, 150, 300};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f774c = {20, 30, 45};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f775d = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 186, 198, 486, 513, 540, 567, 594, 621, 648, 675, 702, 729, 756, 783, 813, 846, 882, 1248, 1296, 1344, 1392, 1440, 1488, 1536, 1584, 1632, 1680, 1728, 1776, 1824, 1872, 1920, 1968, 2016, 2064, 2112, 2160, 2208, 2256, 2304, 2352, 2400, 2448, 2496, 2544, 2592, 2640, 2688, 2736, 2784, 2832, 2880, 2928, 2976, 3024, 3072, 3120, 3168, 3216, 3264, 3312, 3360, 3408, 3456, 3504, 3552, 3600, 3648, 3696, 3762, 3830, 3900, 4965, 5040, 5115, 5190, 5265, 5340, 5415, 5490, 5565, 5640, 5715, 5790, 5865, 5940, 6015, 6090, 6165, 6240, 6315, 6390, 6465, 6540, 6615, 6690, 6765, 6840, 6915, 6990, 7065, 7140, 7215, 7290, 7365, 7440, 7515, 7590, 7665, 7740, 7815, 7890, 7965, 8040, 8115, 8190, 8265, 8340, 8415, 8490, 8565, 8640};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f776e = {3, 6, 7};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f777f = {3, 6, 9};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f778g = {0, 1, 2};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f779a;

    public b1(k0 k0Var) {
        this.f779a = k0Var;
    }

    public static LinkedHashMap A(String str) {
        return p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str, "error_code", -1);
    }

    public static boolean A0(List list) {
        boolean z;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Map map = (Map) it.next();
                String[] strArr = {"use_difficulty_profile", "difficulty_profile"};
                if (map != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 < 2) {
                            Object obj = map.get(strArr[i2]);
                            if ((!(obj instanceof Boolean) || !((Boolean) obj).booleanValue()) && b0(obj, 0) == 0) {
                                String strTrim = obj == null ? "" : String.valueOf(obj).trim();
                                if (!"true".equalsIgnoreCase(strTrim) && !"yes".equalsIgnoreCase(strTrim)) {
                                    i2++;
                                }
                            }
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
        }
        return list != null && list.size() >= 60;
    }

    public static Map B(String str, List list) {
        if (str != null && !str.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Map map = (Map) it.next();
                if (c.a.A(map, "pk_id", str)) {
                    return map;
                }
            }
        }
        return null;
    }

    public static String B0(Object obj) {
        String strC0 = C0(obj);
        if ("genie_rank".equals(strC0) || "gold_rank".equals(strC0) || "silver_rank".equals(strC0) || "copper_rank".equals(strC0)) {
            return strC0;
        }
        return null;
    }

    public static Map C(String str, Map map) {
        if (str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("General", map)) {
            if (c.a.B(map2, "pk_id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static String C0(Object obj) {
        if (obj == null) {
            return null;
        }
        String strTrim = String.valueOf(obj).trim();
        if (strTrim.isEmpty() || "null".equalsIgnoreCase(strTrim)) {
            return null;
        }
        return strTrim;
    }

    public static String D(String... strArr) {
        for (String str : strArr) {
            if (str != null && !str.trim().isEmpty() && !"null".equalsIgnoreCase(str.trim())) {
                return str.trim();
            }
        }
        return "";
    }

    /* JADX WARN: Code duplicated, block: B:44:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:46:0x02a5  */
    public static ArrayList E(int i2, int i3, Map map) {
        ArrayList arrayList;
        int i4;
        String str;
        LinkedHashMap linkedHashMapZ0;
        String str2;
        Map map2;
        LinkedHashMap linkedHashMapZ1;
        ArrayList arrayList2 = new ArrayList();
        int iMax = Math.max(0, i2) % 3;
        if (iMax != 0 && iMax != 1) {
            int iMax2 = Math.max(0, b0(map.get("tower_gold_chest_god_pity_count"), 0)) + 1;
            int iMax3 = Math.max(0, b0(map.get("tower_gold_chest_god_fragment_pity_count"), 0)) + 1;
            boolean z = iMax2 >= 500;
            boolean z2 = iMax3 >= 100;
            if (z) {
                map.put("tower_gold_chest_god_pity_count", Integer.valueOf(iMax2 % 500));
                map.put("tower_gold_chest_god_fragment_pity_count", Integer.valueOf(iMax3));
                String strX = x(new Random());
                linkedHashMapZ1 = p5.z0("type", 3, "id", strX, "item_id", strX, "equipment_id", strX, "equip_id", strX, "num", 1, "item_num", 1, "item_type", 18, "pk_id", a(strX, map).get("pk_id"));
            } else if (z2) {
                map.put("tower_gold_chest_god_pity_count", Integer.valueOf(iMax2));
                map.put("tower_gold_chest_god_fragment_pity_count", Integer.valueOf(iMax3 % 100));
                String strX2 = x(new Random());
                String strI = c.a.i("9", strX2);
                linkedHashMapZ1 = p5.z0("pk_id", com.sgscq.vpn.cloud.m0.b1(1, strI, strX2, map).get("pk_id"), "id", strX2, "equipment_id", strX2, "equip_id", strX2, "item_id", strI, "piece_id", strI, "num", Integer.valueOf(Math.max(1, 1)), "item_num", Integer.valueOf(Math.max(1, 1)), "item_type", 15, "type", 8, "level", 1, "is_new", Boolean.TRUE);
            } else {
                String str3 = "pk_id";
                map.put("tower_gold_chest_god_pity_count", Integer.valueOf(iMax2));
                map.put("tower_gold_chest_god_fragment_pity_count", Integer.valueOf(iMax3));
                String str4 = Math.max(0, Math.min(99, i3)) < 45 ? "791490" : "791491";
                int iZ0 = z0(str4);
                List listF0 = w1.f0("Item", map);
                Iterator it = listF0.iterator();
                while (true) {
                    arrayList = arrayList2;
                    str2 = str3;
                    if (!it.hasNext()) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        c.a.x("Item", map, linkedHashMap, str2, "id", str4);
                        linkedHashMap.put("item_id", str4);
                        linkedHashMap.put("num", Integer.valueOf(Math.max(1, 1)));
                        linkedHashMap.put("item_num", Integer.valueOf(Math.max(1, 1)));
                        linkedHashMap.put("total_num", Integer.valueOf(Math.max(1, 1)));
                        linkedHashMap.put("item_type", Integer.valueOf(iZ0));
                        linkedHashMap.put("type", String.valueOf(iZ0));
                        linkedHashMap.put("is_new", Boolean.TRUE);
                        listF0.add(linkedHashMap);
                        map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                        map2 = linkedHashMap;
                        break;
                    }
                    map2 = (Map) it.next();
                    Iterator it2 = it;
                    if (c.a.C(map2, "id", "", "item_id", str4)) {
                        int iB0 = b0(map2.get("num"), 0);
                        if (iB0 <= 0) {
                            iB0 = b0(map2.get("item_num"), 0);
                        }
                        if (iB0 <= 0) {
                            iB0 = b0(map2.get("total_num"), 0);
                        }
                        int iMax4 = Math.max(1, 1) + iB0;
                        map2.put("num", Integer.valueOf(iMax4));
                        map2.put("item_num", Integer.valueOf(iMax4));
                        map2.put("total_num", Integer.valueOf(iMax4));
                        map2.put("item_type", Integer.valueOf(iZ0));
                        map2.put("type", String.valueOf(iZ0));
                        map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                        break;
                    }
                    it = it2;
                    str3 = str2;
                    arrayList2 = arrayList;
                }
                linkedHashMapZ0 = p5.z0("type", 5, "id", str4, "item_id", str4, "num", 1, "item_num", 1, "item_type", Integer.valueOf(z0(str4)), "pk_id", map2.get(str2));
            }
            arrayList2.add(linkedHashMapZ1);
            return arrayList2;
        }
        arrayList = arrayList2;
        int iMax5 = Math.max(0, Math.min(99, i3));
        if (iMax == 0) {
            if (iMax5 < 90) {
                i4 = 4;
            } else {
                i4 = 3;
            }
        } else if (iMax5 < 60) {
            i4 = 4;
        } else if (iMax5 < 90) {
            i4 = 3;
        } else {
            i4 = 2;
        }
        Random random = new Random((((long) (iMax + 1)) * 6133) + ((long) iMax5));
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList3 = new ArrayList();
        for (String str5 : w1VarA1.h0()) {
            Map mapZ0 = w1VarA1.z0(str5);
            if (mapZ0 != null && b0(mapZ0.get("grade"), 4) == i4) {
                arrayList3.add(str5);
            }
        }
        if (!arrayList3.isEmpty()) {
            str = (String) arrayList3.get(random.nextInt(arrayList3.size()));
        } else if (i4 == 1) {
            str = "111001";
        } else if (i4 != 2) {
            str = i4 != 3 ? "211001" : "213001";
        } else {
            str = "212002";
        }
        String str6 = str;
        linkedHashMapZ0 = p5.z0("type", 3, "id", str6, "item_id", str6, "equipment_id", str6, "equip_id", str6, "num", 1, "item_num", 1, "item_type", 3, "pk_id", a(str6, map).get("pk_id"));
        ArrayList arrayList4 = arrayList;
        arrayList4.add(linkedHashMapZ0);
        return arrayList4;
    }

    public static boolean G(Map map) {
        return b0(map.get("tower_point_progress"), 0) > 0 || b0(map.get("tower_fight_times"), 0) > 0;
    }

    public static boolean H(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        Calendar calendarN = N(str);
        Calendar calendarN2 = N(str2);
        if (calendarN == null || calendarN2 == null) {
            return false;
        }
        calendarN.add(5, 1);
        return calendarN.get(1) == calendarN2.get(1) && calendarN.get(6) == calendarN2.get(6);
    }

    public static boolean I(Map map) {
        Object obj = map.get("tower_run_ended");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return b0(obj, 0) != 0;
    }

    public static String J(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static BattleUnit K(int i2, int i3, String str, String str2, LinkedHashMap linkedHashMap) {
        e eVar = new e(str, i2, i3);
        eVar.f812d = linkedHashMap;
        eVar.f815g = str2;
        eVar.a(300.0d, 100.0d, 100.0d);
        eVar.s = 0.0d;
        eVar.t = 0.0d;
        eVar.u = 0.0d;
        eVar.v = 0.0d;
        return f.a(eVar);
    }

    public static void L(int i2, int i3, int i4, String str, Map map) {
        map.put("tower_run_ended", 1);
        map.put("tower_last_run_point_progress", Integer.valueOf(i2));
        map.put("tower_last_run_max_point_progress", Integer.valueOf(i3));
        map.put("tower_last_run_total_integration", Integer.valueOf(i4));
        map.put("tower_last_run_coin_reward", Long.valueOf(Math.max(0L, c0(map.get("tower_run_coin_reward")))));
        boolean z = false;
        map.put("tower_last_run_is_in_xiuluo", Integer.valueOf(b0(map.get("tower_is_in_xiuluo"), 0)));
        Object obj = map.get("tower_run_enemy_counts");
        map.put("tower_last_run_enemy_counts", !(obj instanceof List) ? new ArrayList() : new ArrayList((List) obj));
        map.put("tower_last_run_end_reason", str);
        map.put("tower_last_run_rank_board", U(map));
        int iT = t(map);
        map.put("tower_last_run_rank", Integer.valueOf(iT));
        int iB0 = b0(map.get("tower_best_rank"), 0);
        if (iB0 <= 0 || iT < iB0) {
            map.put("tower_best_rank", Integer.valueOf(iT));
        }
        String strA0 = a0(map);
        if (strA0 != null) {
            map.put("tower_last_run_day", strA0);
        }
        map.put("tower_last_run_claimed_box_ids", new ArrayList(n(map)));
        String strC0 = C0(map.get("tower_run_day"));
        if (strC0 == null) {
            strC0 = r0(c7.f());
        }
        String strC1 = C0(map.get("tower_clear_streak_day"));
        if (strC0.equals(strC1)) {
            return;
        }
        if (i2 < 150) {
            map.put("tower_clear_streak", 0);
            map.put("tower_clear_streak_day", strC0);
        } else {
            String strU = U(map);
            String strB0 = B0(map.get("tower_clear_streak_board"));
            int iB1 = b0(map.get("tower_clear_streak"), 0);
            if (strU.equals(strB0) && H(strC1, strC0)) {
                z = true;
            }
            int i5 = z ? 1 + iB1 : 1;
            map.put("tower_clear_streak", Integer.valueOf(i5));
            map.put("tower_clear_streak_day", strC0);
            map.put("tower_clear_streak_board", strU);
            if (i5 >= 3) {
                map.put("tower_xiuluo_ready", 1);
                map.put("tower_xiuluo_board", strU);
                return;
            }
        }
        map.remove("tower_xiuluo_ready");
    }

    public static void M(int i2, ArrayList arrayList, LinkedHashMap linkedHashMap) {
        arrayList.add(linkedHashMap);
        j0(i2, arrayList);
        while (arrayList.size() > 20) {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public static Calendar N(String str) {
        if (str != null && str.length() == 8) {
            try {
                int i2 = Integer.parseInt(str.substring(0, 4));
                int i3 = Integer.parseInt(str.substring(4, 6));
                int i4 = Integer.parseInt(str.substring(6, 8));
                Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Asia/Shanghai"));
                calendar.clear();
                calendar.set(i2, i3 - 1, i4, 0, 0, 0);
                return calendar;
            } catch (RuntimeException unused) {
            }
        }
        return null;
    }

    public static String O(int i2) {
        return i2 + "%";
    }

    public static LinkedHashMap P(Map map, boolean z) {
        int iB0 = z ? b0(map.get("tower_last_run_point_progress"), 0) : Math.max(b0(map.get("tower_max_point_progress"), 0), b0(map.get("tower_point_progress"), 0));
        int iB1 = b0(map.get(z ? "tower_last_run_total_integration" : "tower_total_integration"), 0);
        String strD = D(String.valueOf(map.getOrDefault("account_uid", "")), String.valueOf(map.getOrDefault("player_id", "")), String.valueOf(map.getOrDefault("uid", "")), String.valueOf(map.getOrDefault("user_id", "")), "100001");
        String strW = w(map);
        return p5.z0("rank", 0, "user_id", strD, "player_id", strD, "user_name", D(String.valueOf(map.getOrDefault("user_nickname", "")), String.valueOf(map.getOrDefault("nickname", "")), String.valueOf(map.getOrDefault("user_name", "")), "Player"), "user_nickname", D(String.valueOf(map.getOrDefault("user_nickname", "")), String.valueOf(map.getOrDefault("nickname", "")), String.valueOf(map.getOrDefault("user_name", "")), "Player"), "nickname", D(String.valueOf(map.getOrDefault("user_nickname", "")), String.valueOf(map.getOrDefault("nickname", "")), String.valueOf(map.getOrDefault("user_name", "")), "Player"), "user_vip_level", Integer.valueOf(b0(map.get("user_vip_level"), 0)), "user_level", Integer.valueOf(b0(map.get("user_level"), 1)), "point_progress", Integer.valueOf(iB0), "total_integration", Integer.valueOf(iB1), "reward_gold", 0, "reward_point", 0, "general_id", strW, "general_skin", strW, "user_general_skin", strW);
    }

    public static int Q(Map map) {
        Iterator it = w1.f0("TeamGeneral", map).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int iN0 = n0((Map) it.next());
            if (iN0 >= 1 && iN0 != Integer.MAX_VALUE) {
                i2++;
            }
        }
        return i2;
    }

    public static void R(String str, String str2, ArrayList arrayList, LinkedHashMap linkedHashMap) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        linkedHashMap.put(str, arrayList);
        d(str2, linkedHashMap);
    }

    public static void S(Object obj, String str, LinkedHashMap linkedHashMap) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.isEmpty()) {
                return;
            }
            Object obj2 = linkedHashMap.get(str);
            Map mapZ0 = obj2 instanceof Map ? (Map) obj2 : p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
            Object obj3 = mapZ0.get("upd");
            List arrayList = obj3 instanceof List ? (List) obj3 : new ArrayList();
            for (Object obj4 : list) {
                if (obj4 instanceof Map) {
                    c(arrayList, (Map) obj4);
                }
            }
            mapZ0.put("upd", arrayList);
            linkedHashMap.put(str, mapZ0);
        }
    }

    public static void T(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (it.hasNext()) {
            int iB0 = b0(((Map) it.next()).get("type"), 5);
            if (iB0 == 3) {
                z2 = true;
            } else if (iB0 == 8) {
                z3 = true;
            } else {
                z = true;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            arrayList2.add("Item");
        }
        if (z2) {
            arrayList2.add("Equipment");
        }
        if (z3) {
            arrayList2.add("EquipmentPiece");
        }
        linkedHashMap.put("cmn_modules", J(arrayList2));
    }

    public static String U(Map map) {
        String strB0;
        if (I(map) || !G(map) || (strB0 = B0(map.get("tower_run_rank_board"))) == null) {
            strB0 = null;
        }
        return strB0 != null ? strB0 : j(b0(map.get("user_level"), 1));
    }

    public static LinkedHashMap V(Map map, p7 p7Var) {
        String strC0;
        ArrayList arrayListW = W(1, 15, p7Var);
        ArrayList arrayListW2 = W(2, 20, p7Var);
        ArrayList arrayListW3 = W(3, 25, p7Var);
        ArrayList arrayListW4 = W(4, 30, p7Var);
        boolean z = false;
        if (!G(map) && B0(map.get("tower_last_run_rank_board")) != null && b0(map.get("tower_last_run_point_progress"), 0) > 0 && ((strC0 = C0(map.get("tower_last_run_day"))) == null || r0(c7.f()).equals(strC0))) {
            z = true;
        }
        LinkedHashMap linkedHashMapP = P(map, z);
        String strB0 = z ? B0(map.get("tower_last_run_rank_board")) : U(map);
        if ("genie_rank".equals(strB0)) {
            M(4, arrayListW4, linkedHashMapP);
        } else if ("gold_rank".equals(strB0)) {
            M(3, arrayListW3, linkedHashMapP);
        } else if ("silver_rank".equals(strB0)) {
            M(2, arrayListW2, linkedHashMapP);
        } else {
            M(1, arrayListW, linkedHashMapP);
        }
        return p5.z0("copper_rank", arrayListW, "silver_rank", arrayListW2, "gold_rank", arrayListW3, "genie_rank", arrayListW4);
    }

    public static ArrayList W(int i2, int i3, p7 p7Var) {
        List arrayList;
        LinkedHashMap linkedHashMap;
        int i4 = i2;
        ArrayList arrayList2 = new ArrayList();
        int i5 = 0;
        int i6 = 20;
        if (p7Var == null) {
            arrayList = Collections.emptyList();
        } else {
            int i7 = (i4 - 1) * 20;
            p7Var.e();
            ArrayList arrayList3 = new ArrayList();
            synchronized (p7Var.f1293a) {
                for (v5 v5Var : p7Var.f1304l.values()) {
                    if (v5Var.f1459a.startsWith("robot_")) {
                        arrayList3.add(v5Var);
                    }
                }
            }
            arrayList3.sort(Comparator.comparingInt(new n1(3)).thenComparing(new n.a(19)));
            int iMax = Math.max(0, Math.min(i7, arrayList3.size()));
            arrayList = new ArrayList(arrayList3.subList(iMax, Math.max(iMax, Math.min(Math.max(0, 20) + iMax, arrayList3.size()))));
        }
        int i8 = 1;
        int i9 = 1;
        while (i9 <= i6) {
            int iMax2 = Math.max(i8, (21 - i9) * 2);
            int i10 = (i4 + 2) * iMax2;
            int i11 = ((i4 - 1) * i6) + i9;
            if (i9 <= arrayList.size()) {
                linkedHashMap = ((v5) arrayList.get(i9 - 1)).m(i11);
            } else {
                String[] strArr = p0.f955a;
                int iMax3 = Math.max(i8, i11);
                linkedHashMap = new LinkedHashMap(p0.s(iMax3, i5, p0.U(iMax3)));
            }
            ArrayList arrayList4 = arrayList2;
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            arrayList4.add(p5.z0("rank", Integer.valueOf(i9), "user_id", linkedHashMap.get("user_id"), "player_id", linkedHashMap.get("player_id"), "user_name", linkedHashMap.get("nickname"), "user_nickname", linkedHashMap.get("nickname"), "nickname", linkedHashMap2.get("nickname"), "user_vip_level", linkedHashMap2.get("user_vip_level"), "user_level", Integer.valueOf(Math.max(i3, b0(linkedHashMap2.get("user_level"), i3))), "point_progress", Integer.valueOf(iMax2), "total_integration", Integer.valueOf(i10), "reward_gold", 0, "reward_point", 0, "general_id", linkedHashMap2.get("general_id"), "general_skin", linkedHashMap2.get("general_skin"), "user_general_skin", linkedHashMap2.get("user_general_skin")));
            i9++;
            i4 = i2;
            arrayList2 = arrayList4;
            i8 = i8;
            i6 = i6;
            i5 = 0;
            arrayList = arrayList;
        }
        ArrayList arrayList5 = arrayList2;
        j0(i4, arrayList5);
        return arrayList5;
    }

    public static void X(Map map) {
        map.put("tower_point_progress", 0);
        map.put("tower_fight_times", 0);
        map.put("tower_total_integration", 0);
        map.put("tower_having_integration", 0);
        map.put("tower_board_integration", 0);
        map.put("tower_pending_stronger_batch", 0);
        map.put("tower_run_coin_reward", 0L);
        map.put("tower_run_enemy_counts", new ArrayList());
        map.put("tower_attack_percent", 0);
        map.put("tower_defense_percent", 0);
        map.put("tower_hp_percent", 0);
        map.put("tower_wisdom_percent", 0);
        map.put("tower_claimed_box_ids", new ArrayList());
        map.remove("tower_run_rank_board");
        map.remove("tower_run_start_time");
    }

    public static LinkedHashMap Y(String str, String str2, long j2) {
        return p5.z0("id", str, "general_id", str2, "front_info", "1v1", "general_ids", p5.v0(str2), "coin", Long.valueOf(j2), "reward_info", new ArrayList());
    }

    public static ArrayList Z(Map map) {
        long jQ0 = q0(map, b0(map.get("tower_point_progress"), 0) + 1, 1, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Y("1", p5.j1(1), jQ0));
        arrayList.add(Y("2", p5.j1(2), jQ0));
        arrayList.add(Y("3", p5.j1(3), jQ0));
        return arrayList;
    }

    public static LinkedHashMap a(String str, Map map) {
        List listF0 = w1.f0("Equipment", map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Equipment", map, linkedHashMap, "pk_id", "equipment_id", str);
        linkedHashMap.put("id", str);
        linkedHashMap.put("level", 1);
        linkedHashMap.put("num", 1);
        w1.a1(null).R(str, linkedHashMap);
        linkedHashMap.put("general_pk_id", null);
        linkedHashMap.put("general_id", null);
        linkedHashMap.put("user_general_id", null);
        linkedHashMap.put("is_wear", "0");
        linkedHashMap.put("wear", "0");
        listF0.add(linkedHashMap);
        map.put("Equipment", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
        return linkedHashMap;
    }

    public static String a0(Map map) {
        String strC0 = C0(map.get("tower_run_day"));
        if (strC0 != null) {
            return strC0;
        }
        long jC0 = c0(map.get("tower_run_start_time"));
        if (jC0 > 0) {
            return r0(jC0 * 1000);
        }
        return null;
    }

    public static void b(LinkedHashMap linkedHashMap, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                String strC0 = C0(it.next());
                if (strC0 != null) {
                    linkedHashMap.put(strC0, Boolean.TRUE);
                }
            }
            return;
        }
        if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object value = entry.getValue();
                Boolean bool = Boolean.TRUE;
                if (bool.equals(value) || (((value instanceof Number) && ((Number) value).intValue() != 0) || "true".equalsIgnoreCase(String.valueOf(value)) || "1".equals(String.valueOf(value)))) {
                    String strC1 = C0(entry.getKey());
                    if (strC1 != null) {
                        linkedHashMap.put(strC1, bool);
                    }
                }
            }
        }
    }

    public static int b0(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static void c(List list, Map map) {
        if (map == null) {
            return;
        }
        String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (c.a.B((Map) it.next(), "pk_id", "", strValueOf)) {
                return;
            }
        }
        list.add(map);
    }

    public static long c0(Object obj) {
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            try {
                return Long.parseLong(String.valueOf(obj));
            } catch (NumberFormatException unused) {
                return 0L;
            }
        } catch (NumberFormatException unused2) {
            return (long) Double.parseDouble(String.valueOf(obj));
        }
    }

    public static void d(String str, LinkedHashMap linkedHashMap) {
        if (str == null || str.isEmpty()) {
            return;
        }
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("cmn_modules", ""));
        ArrayList arrayList = new ArrayList();
        for (String str2 : strValueOf.split(",")) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty() && !arrayList.contains(strTrim)) {
                arrayList.add(strTrim);
            }
        }
        if (!arrayList.contains(str)) {
            arrayList.add(str);
        }
        linkedHashMap.put("cmn_modules", J(arrayList));
    }

    public static Map d0(int i2, List list, Map map) {
        Object obj;
        int iF;
        String strK0 = k0("other_id", k0("id", "1", map), map);
        int iMax = Math.max(0, i2);
        Type type = c1.f794a;
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (strK0 != null && strK0.startsWith("team_")) {
            String strSubstring = strK0.substring(5);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Map map2 = (Map) it.next();
                if (strSubstring.equals(String.valueOf(c1.f(map2.get("order"), -1)))) {
                    return map2;
                }
            }
        }
        List listG = c1.g(iMax, list);
        if (strK0 == null || (iF = c1.f(strK0, -1) - 1) < 0 || iF >= listG.size()) {
            obj = listG.isEmpty() ? list.get(0) : listG.get(0);
        } else {
            obj = listG.get(iF);
        }
        return (Map) obj;
    }

    public static void e(j jVar, LinkedHashMap linkedHashMap) {
        jVar.b(linkedHashMap);
        if (jVar.f881a) {
            d("Atlas", linkedHashMap);
        }
        ArrayList arrayList = new ArrayList();
        jVar.a(new LinkedHashMap(), arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d((String) it.next(), linkedHashMap);
        }
    }

    public static void e0(String str, Map map) {
        int iMax;
        int i2;
        StringBuilder sb;
        String str2;
        String strC0 = C0(map.get("tower_last_run_day"));
        if (strC0 == null || strC0.equals(str) || strC0.equals(C0(map.get("tower_rank_reward_settled_day"))) || (iMax = Math.max(0, b0(map.get("tower_last_run_point_progress"), 0))) <= 0) {
            return;
        }
        String strB0 = B0(map.get("tower_last_run_rank_board"));
        if (strB0 == null) {
            strB0 = j(b0(map.get("user_level"), 1));
        }
        if ("genie_rank".equals(strB0)) {
            i2 = 4;
        } else if ("gold_rank".equals(strB0)) {
            i2 = 3;
        } else {
            i2 = "silver_rank".equals(strB0) ? 2 : 1;
        }
        int iMax2 = Math.max(1, b0(map.get("tower_last_run_rank"), 41));
        int iMax3 = Math.max(0, b0(map.get("tower_last_run_total_integration"), 0));
        int i3 = iMax2 <= 20 ? ((21 - iMax2) * ((i2 + 1) * 400)) / 20 : 0;
        int i4 = (iMax3 / 10) + (i2 * 3);
        if (iMax2 <= 40) {
            Object obj = map.get("email_list");
            if (!(obj instanceof List)) {
                obj = map.get("mail_list");
            }
            List arrayList = obj instanceof List ? (List) obj : new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (i3 > 0) {
                arrayList2.add(p5.z0("item_id", "600034", "id", "600034", "item_num", Integer.valueOf(i3), "num", Integer.valueOf(i3), "item_type", 16, "type", 5));
            }
            long jG = c7.g();
            String strConcat = "tower_rank_".concat(strC0);
            if (iMax2 <= 20) {
                sb = new StringBuilder("您在昨日的过关斩将系统中获得");
                sb.append(iMax2);
                sb.append("名，一共闯过");
                sb.append(iMax);
                sb.append("关，总积分为");
                sb.append(iMax3);
                sb.append("分，特奖励");
                sb.append(i3);
                sb.append("元宝，");
                sb.append(i4);
                str2 = "将魂，希望再接再厉！";
            } else {
                sb = new StringBuilder("您在昨日的过关斩将系统中获得");
                sb.append(iMax2);
                sb.append("名，一共闯过");
                sb.append(iMax);
                sb.append("关，总积分为");
                sb.append(iMax3);
                sb.append("分，很遗憾未获得元宝奖励，特赠送");
                sb.append(i4);
                str2 = "将魂，您将在今日的过关斩将系统中自动获得。";
            }
            sb.append(str2);
            String string = sb.toString();
            int i5 = (int) jG;
            Integer numValueOf = Integer.valueOf(i5);
            Integer numValueOf2 = Integer.valueOf(i5);
            Integer numValueOf3 = Integer.valueOf(i5);
            Integer numValueOf4 = Integer.valueOf(i5 + 2592000);
            Boolean bool = Boolean.FALSE;
            arrayList.add(0, p5.z0("mail_id", strConcat, "email_id", strConcat, "id", strConcat, "pk_id", strConcat, "mail_type", "gift", "email_type", "gift", "origin_mail_type", "system", "title", "过关斩将昨日排名奖励", "email_title", "过关斩将昨日排名奖励", "content", string, "email_content", string, "sender", "系统", "email_sender", "系统", "email_sender_nickname", "系统", "from_user", "系统", "email_time_offset", 0, "send_time", numValueOf, "create_time", numValueOf2, "time", numValueOf3, "expire_time", numValueOf4, "is_read", bool, "is_accepted", bool, "is_attach_get", "0", "status", 0, "reward_list", arrayList2, "reward", arrayList2, "rewards", arrayList2));
            map.put("email_list", arrayList);
            map.put("mail_list", arrayList);
            map.put("tower_rank_reward_soul_pending", Integer.valueOf(Math.max(0, b0(map.get("tower_rank_reward_soul_pending"), 0)) + i4));
            strC0 = strC0;
        }
        map.put("tower_rank_reward_settled_day", strC0);
    }

    public static void f(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, j jVar, String... strArr) {
        ArrayList<String> arrayList = new ArrayList();
        jVar.a(new LinkedHashMap(), arrayList);
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Collections.addAll(arrayList2, p(linkedHashMap2));
        for (String str : arrayList) {
            boolean z = false;
            for (String str2 : strArr) {
                if (str.equals(str2)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                linkedHashMap.remove(str);
            }
        }
        jVar.a(linkedHashMap, arrayList2);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList2.iterator();
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
        linkedHashMap2.put("cmn_modules", sb.toString());
    }

    public static j f0(List list, Map map) {
        j jVar;
        String strR0 = r0(c7.f());
        int iT = t(map);
        String strC0 = C0(map.get("tower_surrender_rank_day"));
        int iB0 = b0(map.get("tower_surrender_previous_rank"), 0);
        if (strC0 == null || iB0 <= 0) {
            map.put("tower_surrender_rank_day", strR0);
            map.put("tower_surrender_previous_rank", Integer.valueOf(iT));
            jVar = new j();
        } else if (strC0.equals(strR0)) {
            map.put("tower_surrender_previous_rank", Integer.valueOf(iT));
            jVar = new j();
        } else {
            boolean zH = H(strC0, strR0);
            y0.m(map, list, "20", "40", iB0, 60 * ((long) 1) * 60, strC0);
            if (!zH) {
                Object obj = map.get("surrender_rank_duration");
                if (obj instanceof Map) {
                    Map map2 = (Map) obj;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Object obj2 = ((Map) it.next()).get("surrender_tasks");
                        if (obj2 instanceof List) {
                            for (Object obj3 : (List) obj2) {
                                if (obj3 instanceof Map) {
                                    Map map3 = (Map) obj3;
                                    if (c.a.B(map3, "surrender_type", "", "20")) {
                                        Object obj4 = map2.get(String.valueOf(map3.getOrDefault("surrender_id", "")));
                                        if (obj4 instanceof Map) {
                                            Map map4 = (Map) obj4;
                                            map4.put("current", 0);
                                            map4.put("remainder_seconds", 0);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            map.put("tower_surrender_rank_day", strR0);
            map.put("tower_surrender_previous_rank", Integer.valueOf(iT));
            jVar = y0.c(list, map);
        }
        String strC1 = C0(map.get("tower_daily_day"));
        if (strC1 == null || !strR0.equals(strC1)) {
            map.put("tower_daily_day", strR0);
            map.put("tower_daily_fight_times", 0);
            map.put("tower_daily_max_total_integration", 0);
        }
        String strA0 = a0(map);
        if (strA0 == null) {
            if (!I(map) && G(map)) {
                int iB1 = b0(map.get("tower_point_progress"), 0);
                L(iB1, Math.max(iB1, b0(map.get("tower_max_point_progress"), 0)), b0(map.get("tower_total_integration"), 0), "daily", map);
            }
            e0(strR0, map);
            return jVar;
        }
        if (!strR0.equals(strA0) && G(map)) {
            if (I(map)) {
                e0(strR0, map);
                return jVar;
            }
            int iB2 = b0(map.get("tower_point_progress"), 0);
            L(iB2, Math.max(iB2, b0(map.get("tower_max_point_progress"), 0)), b0(map.get("tower_total_integration"), 0), "daily", map);
            e0(strR0, map);
        }
        return jVar;
    }

    public static void g(Map map) {
        int iMax = Math.max(0, b0(map.get("tower_rank_reward_soul_pending"), 0));
        if (iMax <= 0) {
            return;
        }
        map.put("tower_having_integration", Integer.valueOf(Math.max(0, b0(map.get("tower_having_integration"), 0)) + iMax));
        map.remove("tower_rank_reward_soul_pending");
    }

    public static boolean g0(Map map) {
        if (I(map)) {
            return true;
        }
        return b0(map.get("tower_point_progress"), 0) <= 0 && b0(map.get("tower_fight_times"), 0) <= 0;
    }

    public static LinkedHashMap h(List list, Map map) {
        long jQ0;
        f0(Collections.emptyList(), map);
        if (Math.max(0, 3 - Math.max(0, b0(map.get("tower_daily_fight_times"), 0))) <= 0) {
            return A("今日挑战次数已用完");
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        b(linkedHashMap, map.get("tower_claimed_box_ids"));
        b(linkedHashMap, map.get("tower_last_run_claimed_box_ids"));
        Iterator it = new ArrayList(linkedHashMap.keySet()).iterator();
        while (it.hasNext()) {
            int i2 = -1;
            int iB0 = b0((String) it.next(), -1);
            int[] iArr = {410000, 420000, 430000, 440000};
            for (int i3 = 0; i3 < 4; i3++) {
                int i4 = (iB0 - iArr[i3]) - 1;
                if (i4 >= 0 && i4 < 90) {
                    i2 = i4;
                    break;
                }
            }
            if (i2 >= 0 && i2 < 90) {
                arrayList.addAll(E(i2, w0(i2, map), map));
            }
        }
        int iMax = Math.max(0, b0(map.get("tower_point_progress"), 0));
        long jQ1 = 0;
        long jMax = Math.max(0L, c0(map.get("tower_run_coin_reward")));
        if (iMax <= 0 || jMax <= 0) {
            int iMax2 = Math.max(0, b0(map.get("tower_last_run_point_progress"), 0));
            long jMax2 = Math.max(0L, c0(map.get("tower_last_run_coin_reward")));
            if (iMax > 0 || iMax2 <= 0 || jMax2 <= 0) {
                int i5 = iMax > 0 ? iMax : iMax2;
                boolean z = iMax <= 0 && iMax2 > 0;
                Object obj = map.get(iMax > 0 ? "tower_run_enemy_counts" : "tower_last_run_enemy_counts");
                if (!(obj instanceof List)) {
                    jQ0 = 0;
                    break;
                }
                List list2 = (List) obj;
                int iMin = Math.min(Math.max(0, i5), Math.min(150, list2.size()));
                int i6 = 0;
                jQ0 = 0;
                while (i6 < iMin) {
                    int iB1 = b0(list2.get(i6), 0);
                    if (iB1 <= 0) {
                        jQ0 = 0;
                        break;
                    }
                    i6++;
                    jQ0 += q0(map, i6, iB1, z);
                }
                if (jQ0 > 0) {
                    jQ1 = jQ0;
                } else {
                    int i7 = 0;
                    while (i7 < Math.min(i5, 150)) {
                        int i8 = i7 + 1;
                        jQ1 += q0(map, i8, y(i7, list, Collections.emptyMap()), z);
                        i7 = i8;
                    }
                }
                jMax = jQ1;
            } else {
                jMax = jMax2;
            }
        }
        p5.b(jMax, map);
        r(map);
        LinkedHashMap linkedHashMapM0 = m0();
        linkedHashMapM0.put("fight_result", l(map, true, 0, jMax, 0, arrayList, b0(map.get("tower_point_progress"), 0), 1, 1));
        LinkedHashMap linkedHashMapM = m(list, map);
        linkedHashMapM.put("add_list", arrayList);
        linkedHashMapM0.put("return_info", linkedHashMapM);
        linkedHashMapM0.put("add_list", arrayList);
        T(arrayList, linkedHashMapM0);
        return linkedHashMapM0;
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

    public static double i(double[] dArr, int i2, double d2) {
        if (dArr != null && dArr.length > i2) {
            double d3 = dArr[i2];
            if (d3 > 0.0d) {
                return d3;
            }
        }
        return d2;
    }

    public static LinkedHashMap i0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList());
        arrayList.add(new ArrayList());
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(p5.z0("id", "112001", "hpCur", 1000, "hpMax", 1000, "name", "Player"));
        arrayList2.add(p5.z0("id", p5.i1(102), "hpCur", 800, "hpMax", 800, "name", "Tower"));
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayListV0 = p5.v0(0);
        ArrayList arrayListV1 = p5.v0(1);
        LinkedHashMap linkedHashMapZ0 = p5.z0("hpCur", 0, "hpMax", 800, "hp", 800, "event", p5.v0("death"), "cure", 0);
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(linkedHashMapZ0);
        arrayList3.add(p5.z0("round", 1, "from", arrayListV0, "to", arrayListV1, "skill", "Attack_Knife", "skillId", "0", "type", 0, "params", p5.z0("to", arrayList4, new Object[0])));
        return p5.z0("init", p5.z0("first", 0, "roundMax", 15, "cards_size0", 1, "cards_size1", 1, "backups_size0", 0, "backups_size1", 0, "info", arrayList, "cards", arrayList2, "roundCur", 1, "skipRounds", 1), "rounds", arrayList3);
    }

    public static String j(int i2) {
        if (i2 >= 30) {
            return "genie_rank";
        }
        if (i2 >= 25) {
            return "gold_rank";
        }
        return i2 >= 20 ? "silver_rank" : "copper_rank";
    }

    public static void j0(int i2, ArrayList arrayList) {
        Collections.sort(arrayList, new c.n(6));
        int i3 = (i2 + 1) * 400;
        int i4 = 0;
        while (i4 < arrayList.size()) {
            Map map = (Map) arrayList.get(i4);
            i4++;
            map.put("rank", Integer.valueOf(i4));
            map.put("reward_gold", Integer.valueOf(i4 <= 20 ? ((21 - i4) * i3) / 20 : 0));
            map.put("reward_point", Integer.valueOf(Math.max(0, b0(map.get("total_integration"), 0) / 10) + (i2 * 3)));
        }
    }

    public static String k0(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return (strValueOf.isEmpty() || "null".equals(strValueOf)) ? str2 : strValueOf;
    }

    public static LinkedHashMap l(Map map, boolean z, int i2, long j2, int i3, ArrayList arrayList, int i4, int i5, int i6) {
        return p5.z0("success", Boolean.valueOf(z), "is_win", Integer.valueOf(z ? 1 : 0), "fight_type", 3, "fight_calculate_info", p5.z0("star_level", Integer.valueOf(BattleStarCalculator.calculate(z, i5, i6)), "rounds", Integer.valueOf(i2), "residue_team_num", Integer.valueOf(z ? Math.max(0, i5) : 0), "residue_team_percent", Integer.valueOf((!z || i6 <= 0) ? 0 : BattleStarCalculator.ceilPercent(i5, i6)), "extra_integration", Integer.valueOf(i3), "max_total_integration", Integer.valueOf(b0(map.get("tower_total_integration"), 0)), "point_progress", Integer.valueOf(Math.max(0, i4)), "total_integration", Integer.valueOf(b0(map.get("tower_total_integration"), 0))), "player_info", p5.z0("user_coin", Long.valueOf(p5.x(map)), new Object[0]), "drop_info", p5.z0("user_coin", Long.valueOf(j2), "point", Integer.valueOf(i3)), "add_list", new ArrayList(), "add_list_other", arrayList, "show_general_info", new ArrayList());
    }

    public static ArrayList l0(Map map) {
        int[] iArr;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int iB0 = b0(map.get("tower_having_integration"), 0);
        if ((b0(map.get("tower_pending_stronger_batch"), 0) > 0) && iB0 >= 3) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                iArr = f773b;
                if (i3 >= 8) {
                    break;
                }
                if (iArr[i3] <= iB0) {
                    i4 = i3;
                }
                i3++;
            }
            int iMax = Math.max(0, Math.min(i4 - 2, 5));
            int[] iArr2 = {iArr[iMax], iArr[iMax + 1], iArr[iMax + 2]};
            int[] iArr3 = {1, 2, 3, 4};
            Random random = new Random((((long) b0(map.get("tower_point_progress"), 0)) * 193) + (((long) b0(map.get("tower_total_integration"), 0)) * 97) + (((long) iB0) * 53));
            for (int i5 = 3; i5 > 0; i5--) {
                int iNextInt = random.nextInt(i5 + 1);
                int i6 = iArr3[i5];
                iArr3[i5] = iArr3[iNextInt];
                iArr3[iNextInt] = i6;
            }
            int[] iArr4 = {iArr3[0], iArr3[1], iArr3[2]};
            while (i2 < 3) {
                int i7 = i2 + 1;
                String strValueOf = String.valueOf(i7);
                int i8 = iArr4[i2];
                int i9 = iArr2[i2];
                arrayList.add(p5.z0("id", strValueOf, "stronger_type", Integer.valueOf(i8), "need_integration", Integer.valueOf(i9), "incre_per", O(i9)));
                i2 = i7;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:42:0x02c9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v22, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v27 */
    public static LinkedHashMap m(List list, Map map) {
        ArrayList arrayListZ;
        int i2;
        Boolean boolValueOf = Boolean.valueOf(g0(map));
        Object[] objArr = new Object[28];
        ?? r4 = 0;
        objArr[0] = "index_info";
        objArr[1] = p5.z0("left_times", Integer.valueOf(Math.max(0, 3 - Math.max(0, b0(map.get("tower_daily_fight_times"), 0)))), "fight_times", Integer.valueOf(Math.max(0, b0(map.get("tower_daily_fight_times"), 0))), "max_point_progress", Integer.valueOf(b0(map.get("tower_max_point_progress"), 0)), "max_total_integration", Integer.valueOf(u(map)), "rank", Integer.valueOf(o(map)));
        objArr[2] = "rank_info";
        objArr[3] = V(map, null);
        objArr[4] = "tower_common_info";
        objArr[5] = p5.z0("point_info", p5.z0("total_integration", Integer.valueOf(b0(map.get("tower_total_integration"), 0)), "having_integration", Integer.valueOf(b0(map.get("tower_having_integration"), 0))), "property_stronger_info", p5.z0("attack_percent", O(b0(map.get("tower_attack_percent"), 0)), "defense_percent", O(b0(map.get("tower_defense_percent"), 0)), "hp_percent", O(b0(map.get("tower_hp_percent"), 0)), "wisdom_percent", O(b0(map.get("tower_wisdom_percent"), 0))));
        objArr[6] = "robot_info";
        if (list == null || list.isEmpty()) {
            arrayListZ = Z(map);
        } else {
            ArrayList arrayList = new ArrayList(c1.g(b0(map.get("tower_point_progress"), 0), list));
            arrayListZ = new ArrayList();
            int iB0 = b0(map.get("tower_point_progress"), 0) + 1;
            int i3 = 0;
            for (int i4 = 3; i3 < i4; i4 = 3) {
                Map map2 = i3 < arrayList.size() ? (Map) arrayList.get(i3) : null;
                int iT0 = t0(i3);
                ArrayList arrayListV0 = v0(iT0, list, map2);
                if (arrayListV0.isEmpty()) {
                    int i5 = i3 + 1;
                    arrayListZ.add(Y(String.valueOf(i5), p5.j1(i5), q0(map, iB0, 1, r4)));
                } else {
                    arrayListZ.add(p5.z0("id", c1.e(map2), "general_id", arrayListV0.get(r4), "general_ids", arrayListV0, "front_info", x0(iT0, list, map, map2) + "v" + Math.max(1, arrayListV0.size()), "coin", Long.valueOf(q0(map, iB0, arrayListV0.size(), r4)), "reward_info", new ArrayList()));
                }
                i3++;
                r4 = 0;
            }
            if (arrayListZ.isEmpty()) {
                arrayListZ = Z(map);
            }
        }
        objArr[7] = arrayListZ;
        objArr[8] = "stronger_info";
        objArr[9] = l0(map);
        objArr[10] = "box_info";
        ArrayList arrayList2 = new ArrayList();
        int iS = s(map);
        ArrayList arrayListN = n(map);
        int i6 = 0;
        int iMin = Math.min(Math.max(0, b0(map.get("tower_point_progress"), 0) / 5), Math.max(0, 29)) * 3;
        int i7 = 0;
        while (i7 < 3) {
            int i8 = iMin + i7;
            String strP0 = p0(i8, map);
            boolean zContains = arrayListN.contains(strP0);
            int i9 = f774c[Math.max(i6, i8) % 3];
            arrayList2.add(p5.z0("box_id", strP0, "box_condition", Integer.valueOf(i9), "status", Integer.valueOf(zContains ? 3 : iS >= i9 ? 2 : 1), "is_open", Boolean.valueOf(zContains)));
            i7++;
            i6 = 0;
        }
        objArr[11] = arrayList2;
        objArr[12] = "box_id";
        objArr[13] = n(map);
        objArr[14] = "box_integration";
        objArr[15] = Integer.valueOf(s(map));
        objArr[16] = "point_name";
        objArr[17] = y0(map);
        objArr[18] = "stage_name";
        objArr[19] = y0(map);
        objArr[20] = "front_type";
        objArr[21] = Integer.valueOf(o(map));
        objArr[22] = "is_go_xiuluo";
        if (g0(map)) {
            i2 = b0(map.get("tower_xiuluo_ready"), 0) != 0 ? 1 : 0;
        }
        objArr[23] = Integer.valueOf(i2);
        objArr[24] = "is_in_xiuluo";
        objArr[25] = Integer.valueOf(b0(map.get("tower_is_in_xiuluo"), 0));
        objArr[26] = "xiuluo_add";
        objArr[27] = p5.z0("add_list", new ArrayList(), new Object[0]);
        return p5.z0("is_start", boolValueOf, objArr);
    }

    public static LinkedHashMap m0() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static ArrayList n(Map map) {
        Object obj = map.get("tower_claimed_box_ids");
        ArrayList arrayList = new ArrayList();
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 != null && !String.valueOf(obj2).isEmpty()) {
                    arrayList.add(String.valueOf(obj2));
                }
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object value = entry.getValue();
                if (Boolean.TRUE.equals(value) || (((value instanceof Number) && ((Number) value).intValue() != 0) || "true".equalsIgnoreCase(String.valueOf(value)) || "1".equals(String.valueOf(value)))) {
                    arrayList.add((String) entry.getKey());
                }
            }
        }
        return arrayList;
    }

    public static int n0(Map map) {
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

    public static int o(Map map) {
        String strU = U(map);
        if ("genie_rank".equals(strU)) {
            return 1;
        }
        if ("gold_rank".equals(strU)) {
            return 2;
        }
        return "silver_rank".equals(strU) ? 3 : 4;
    }

    public static int o0(Map map) {
        if (b0(map.get("tower_is_in_xiuluo"), 0) != 0) {
            return 8;
        }
        String strU = U(map);
        if ("genie_rank".equals(strU)) {
            return 5;
        }
        if ("gold_rank".equals(strU)) {
            return 3;
        }
        return "silver_rank".equals(strU) ? 2 : 1;
    }

    public static String[] p(LinkedHashMap linkedHashMap) {
        String[] strArrSplit = String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",");
        ArrayList arrayList = new ArrayList();
        for (String str : strArrSplit) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static String p0(int i2, Map map) {
        int i3;
        String strU = U(map);
        if ("genie_rank".equals(strU)) {
            i3 = 410000;
        } else if ("gold_rank".equals(strU)) {
            i3 = 420000;
        } else {
            i3 = "silver_rank".equals(strU) ? 430000 : 440000;
        }
        return String.valueOf(i3 + i2 + 1);
    }

    public static int q(Map map, Map map2) {
        int iCompare = Integer.compare(b0(map2.get("point_progress"), 0), b0(map.get("point_progress"), 0));
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = Integer.compare(b0(map2.get("total_integration"), 0), b0(map.get("total_integration"), 0));
        return iCompare2 != 0 ? iCompare2 : String.valueOf(map.getOrDefault("user_id", "")).compareTo(String.valueOf(map2.getOrDefault("user_id", "")));
    }

    public static long q0(Map map, int i2, int i3, boolean z) {
        String strU;
        int iMax = Math.max(1, Math.min(150, Math.max(1, Math.min(150, i2))));
        if (!z || (strU = B0(map.get("tower_last_run_rank_board"))) == null) {
            strU = U(map);
        }
        if ("genie_rank".equals(strU)) {
            boolean z2 = false;
            if (!z || !map.containsKey("tower_last_run_is_in_xiuluo") ? b0(map.get("tower_is_in_xiuluo"), 0) != 0 : b0(map.get("tower_last_run_is_in_xiuluo"), 0) != 0) {
                z2 = true;
            }
            iMax = z2 ? 8640 : f775d[iMax - 1];
        }
        return ((long) iMax) * 915 * ((long) Math.max(1, i3));
    }

    public static void r(Map map) {
        int iMax = Math.max(0, b0(map.get("tower_daily_fight_times"), 0)) + 1;
        if (iMax > 3) {
            return;
        }
        map.put("tower_daily_fight_times", Integer.valueOf(iMax));
        long jB0 = ((long) b0(map.get("tower_total_challenge_times"), 0)) + ((long) 1);
        map.put("tower_total_challenge_times", Integer.valueOf(jB0 > 2147483647L ? Integer.MAX_VALUE : (int) jB0));
    }

    public static String r0(long j2) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Asia/Shanghai"));
        calendar.setTimeInMillis(j2);
        return String.format("%04d%02d%02d", Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5)));
    }

    public static int s(Map map) {
        if (map.containsKey("tower_board_integration")) {
            return Math.max(0, b0(map.get("tower_board_integration"), 0));
        }
        int iMax = Math.max(0, b0(map.get("tower_fight_times"), 0));
        int iMax2 = Math.max(0, b0(map.get("tower_total_integration"), 0));
        if (iMax > 0 && iMax % 5 == 0) {
            return 0;
        }
        int i2 = f774c[2];
        int i3 = iMax2 % i2;
        return (i3 != 0 || iMax2 <= 0) ? i3 : i2;
    }

    public static int s0(int i2, List list, Map map, Map map2) {
        int iFloorMod;
        String strK0 = k0("other_id", k0("id", "1", map), map);
        int iB0 = b0(strK0, -1);
        if (iB0 >= 1 && iB0 <= 3) {
            return t0(iB0 - 1);
        }
        List listG = c1.g(Math.max(0, i2), list);
        for (int i3 = 0; i3 < listG.size(); i3++) {
            String strE = c1.e((Map) listG.get(i3));
            if (strK0.equals(strE)) {
                return t0(i3);
            }
            if (map2 != null && c1.e(map2).equals(strE)) {
                return t0(i3);
            }
        }
        if (strK0 == null || !strK0.startsWith("team_") || list == null || list.isEmpty() || (iFloorMod = Math.floorMod((b0(strK0.substring(5), -1) - 1) - Math.max(0, i2), list.size())) < 0 || iFloorMod >= 3) {
            return 0;
        }
        return t0(iFloorMod);
    }

    public static int t(Map map) {
        int i2;
        int i3;
        String strU = U(map);
        int i4 = 1;
        if ("genie_rank".equals(strU)) {
            i2 = 4;
        } else if ("gold_rank".equals(strU)) {
            i2 = 3;
        } else {
            i2 = "silver_rank".equals(strU) ? 2 : 1;
        }
        if (i2 == 4) {
            i3 = 30;
        } else if (i2 == 3) {
            i3 = 25;
        } else {
            i3 = i2 == 2 ? 20 : 15;
        }
        LinkedHashMap linkedHashMapP = P(map, false);
        ArrayList arrayListW = W(i2, i3, null);
        for (int i5 = 21; i5 <= 40; i5++) {
            String[] strArr = p0.f955a;
            int iMax = Math.max(1, ((i2 - 1) * 40) + i5);
            arrayListW.add(p5.z0("user_id", new LinkedHashMap(p0.s(iMax, 0, p0.U(iMax))).get("user_id"), "point_progress", 1, "total_integration", Integer.valueOf(41 - i5)));
        }
        Iterator it = arrayListW.iterator();
        while (it.hasNext()) {
            if (q((Map) it.next(), linkedHashMapP) < 0) {
                i4++;
            }
        }
        return i4;
    }

    public static int t0(int i2) {
        return (i2 < 0 || i2 >= 3) ? Math.max(0, Math.min(2, i2)) : f778g[i2];
    }

    public static int u(Map map) {
        int iMax = Math.max(0, b0(map.get("tower_daily_max_total_integration"), 0));
        String strR0 = r0(c7.f());
        if (strR0.equals(a0(map))) {
            iMax = Math.max(iMax, Math.max(0, b0(map.get("tower_total_integration"), 0)));
        }
        return strR0.equals(C0(map.get("tower_last_run_day"))) ? Math.max(iMax, Math.max(0, b0(map.get("tower_last_run_total_integration"), 0))) : iMax;
    }

    public static int u0(Map map) {
        return Math.min(150, Math.max(1, b0(map.get("tower_point_progress"), 1)));
    }

    public static int v(int[] iArr, int i2, int i3) {
        return iArr.length == 0 ? Math.max(1, i3) : Math.max(1, iArr[Math.max(0, Math.min(iArr.length - 1, i2))]);
    }

    public static ArrayList v0(int i2, List list, Map map) {
        int iV;
        ArrayList arrayListA = c1.a(map);
        if (arrayListA.isEmpty()) {
            return arrayListA;
        }
        int size = arrayListA.size();
        String[] strArr = {"enemy_count", "enemy_available_count", "battle_count"};
        if (map == null) {
            iV = 0;
            break;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= 3) {
                iV = 0;
                break;
            }
            iV = b0(map.get(strArr[i3]), 0);
            if (iV > 0) {
                break;
            }
            i3++;
        }
        if (iV <= 0) {
            iV = A0(list) ? v(f777f, i2, size) : Math.max(1, size);
        }
        int iMax = Math.max(1, iV);
        if (i2 == 0 || !A0(list)) {
            iMax = Math.min(arrayListA.size(), iMax);
        }
        ArrayList arrayList = new ArrayList(iMax);
        for (int i4 = 0; i4 < iMax; i4++) {
            arrayList.add((String) arrayListA.get(i4 % arrayListA.size()));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public static String w(Map map) {
        String strTrim;
        Object obj = map.get("general_skin");
        if (obj == null) {
            strTrim = null;
        } else {
            strTrim = String.valueOf(obj).trim();
            if (strTrim.isEmpty() || "0".equals(strTrim) || "null".equalsIgnoreCase(strTrim)) {
                strTrim = null;
            }
        }
        if (strTrim != null) {
            return strTrim;
        }
        ArrayList arrayList = new ArrayList(w1.f0("TeamGeneral", map));
        Collections.sort(arrayList, new c.n(8));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map mapC = C(String.valueOf(((Map) it.next()).getOrDefault("general_pk_id", "")), map);
            if (mapC != null) {
                return c.a.j(mapC, "id", "112001", "general_id");
            }
        }
        Object obj2 = map.get("first_choose_general");
        return (obj2 == null || String.valueOf(obj2).isEmpty() || "0".equals(String.valueOf(obj2))) ? "112001" : String.valueOf(obj2);
    }

    public static int w0(int i2, Map map) {
        return new Random((((long) b0(map.get("tower_point_progress"), 0)) * 1543) + (((long) b0(map.get("tower_total_integration"), 0)) * 3571) + (((long) (i2 + 1)) * 7919)).nextInt(100);
    }

    public static String x(Random random) {
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList = new ArrayList();
        for (String str : w1VarA1.h0()) {
            Map mapZ0 = w1VarA1.z0(str);
            if (mapZ0 != null && c.a.A(mapZ0, "grade", "1")) {
                try {
                    double d2 = Double.parseDouble(String.valueOf(mapZ0.getOrDefault("effect_value", "0")));
                    if (d2 >= 135.0d && d2 <= 150.0d) {
                        arrayList.add(str);
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        Collections.sort(arrayList);
        return !arrayList.isEmpty() ? (String) arrayList.get(random.nextInt(arrayList.size())) : "211002";
    }

    public static int x0(int i2, List list, Map map, Map map2) {
        String[] strArr = {"player_count", "player_available_count", "ally_count"};
        int i3 = 0;
        if (map2 != null) {
            for (int i4 = 0; i4 < 3; i4++) {
                int iB0 = b0(map2.get(strArr[i4]), 0);
                if (iB0 > 0) {
                    i3 = iB0;
                    break;
                }
            }
        }
        if (i3 > 0) {
            return i3;
        }
        return A0(list) ? v(f776e, i2, Math.max(1, Q(map))) : Math.max(1, Q(map));
    }

    public static int y(int i2, List list, Map map) {
        Map mapD0 = d0(i2, list, map);
        return Math.max(1, v0(s0(i2, list, map, mapD0), list, mapD0).size());
    }

    public static String y0(Map map) {
        return "point_" + Math.max(1, Math.min(150, b0(map.get("tower_point_progress"), 0) + 1)) + "01";
    }

    public static ArrayList z() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("pk_id", "1", "item_id", "230001", "discount_gold_soul", 0, "discount_silver_soul", 10));
        return arrayList;
    }

    public static int z0(String str) {
        return ("791491".equals(str) || "600004".equals(str) || "600005".equals(str) || "600006".equals(str)) ? 4 : 2;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:104:0x03de  */
    /* JADX WARN: Code duplicated, block: B:128:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:213:0x09e7  */
    /* JADX WARN: Code duplicated, block: B:216:0x0a11  */
    /* JADX WARN: Code duplicated, block: B:218:0x0a38  */
    /* JADX WARN: Code duplicated, block: B:219:0x0a3a  */
    /* JADX WARN: Code duplicated, block: B:220:0x0a3f  */
    /* JADX WARN: Code duplicated, block: B:223:0x0a49  */
    /* JADX WARN: Code duplicated, block: B:224:0x0a57  */
    /* JADX WARN: Code duplicated, block: B:227:0x0a60  */
    /* JADX WARN: Code duplicated, block: B:228:0x0a65  */
    /* JADX WARN: Code duplicated, block: B:231:0x0a6f  */
    /* JADX WARN: Code duplicated, block: B:233:0x0ade  */
    /* JADX WARN: Code duplicated, block: B:234:0x0ae6  */
    /* JADX WARN: Code duplicated, block: B:238:0x0af6 A[LOOP:5: B:236:0x0af0->B:238:0x0af6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:241:0x0b28  */
    /* JADX WARN: Code duplicated, block: B:244:0x0b47  */
    /* JADX WARN: Code duplicated, block: B:245:0x0b4a  */
    /* JADX WARN: Code duplicated, block: B:247:0x0b61  */
    /* JADX WARN: Code duplicated, block: B:257:0x0b98  */
    /* JADX WARN: Code duplicated, block: B:260:0x0ba1  */
    /* JADX WARN: Code duplicated, block: B:263:0x0bad  */
    /* JADX WARN: Code duplicated, block: B:264:0x0bbd  */
    /* JADX WARN: Code duplicated, block: B:265:0x0bbf  */
    /* JADX WARN: Code duplicated, block: B:268:0x0c25  */
    /* JADX WARN: Code duplicated, block: B:269:0x0c27  */
    /* JADX WARN: Code duplicated, block: B:272:0x0c72  */
    /* JADX WARN: Code duplicated, block: B:275:0x0c7f  */
    /* JADX WARN: Code duplicated, block: B:278:0x0c99 A[LOOP:6: B:276:0x0c93->B:278:0x0c99, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:280:0x0ce7  */
    /* JADX WARN: Code duplicated, block: B:284:0x0d0a  */
    /* JADX WARN: Code duplicated, block: B:340:0x0e96  */
    /* JADX WARN: Code duplicated, block: B:343:0x0e9f  */
    /* JADX WARN: Code duplicated, block: B:350:0x0ebf  */
    /* JADX WARN: Code duplicated, block: B:352:0x0ec2  */
    /* JADX WARN: Code duplicated, block: B:354:0x0ee0  */
    /* JADX WARN: Code duplicated, block: B:356:0x0ee8  */
    /* JADX WARN: Code duplicated, block: B:358:0x0ef4  */
    /* JADX WARN: Code duplicated, block: B:359:0x0efa  */
    /* JADX WARN: Code duplicated, block: B:362:0x0f0d  */
    /* JADX WARN: Code duplicated, block: B:364:0x0f17  */
    /* JADX WARN: Code duplicated, block: B:370:0x0f2c  */
    /* JADX WARN: Code duplicated, block: B:373:0x0f47  */
    /* JADX WARN: Code duplicated, block: B:375:0x0f55  */
    /* JADX WARN: Code duplicated, block: B:376:0x0f61  */
    /* JADX WARN: Code duplicated, block: B:378:0x0f65  */
    /* JADX WARN: Code duplicated, block: B:379:0x0f71  */
    /* JADX WARN: Code duplicated, block: B:382:0x1008  */
    /* JADX WARN: Code duplicated, block: B:384:0x101b  */
    /* JADX WARN: Code duplicated, block: B:385:0x1023  */
    /* JADX WARN: Code duplicated, block: B:393:0x0f7c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:394:0x0f21 A[EDGE_INSN: B:394:0x0f21->B:366:0x0f21 BREAK  A[LOOP:1: B:360:0x0f05->B:365:0x0f1c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:396:0x0f1c A[SYNTHETIC] */
    public final byte[] F(String str, Map map) {
        List arrayList;
        Context context;
        k0 k0Var;
        Object obj;
        j jVar;
        String str2;
        String str3;
        String str4;
        String str5;
        LinkedHashMap linkedHashMapM0;
        Map map2;
        int i2;
        int iB0;
        int i3;
        String str6;
        LinkedHashMap linkedHashMapM1;
        String str7;
        boolean z;
        int iB1;
        int iB2;
        int iB3;
        int iB4;
        int iB5;
        int iS;
        int i4;
        int i5;
        Object obj2;
        int i6;
        int i7;
        List list;
        Object obj3;
        Object obj4;
        int i8;
        int i9;
        String str8;
        a1 a1Var;
        boolean z2;
        Map map3;
        Object obj5;
        List list2;
        int size;
        int i10;
        int i11;
        int i12;
        long jQ0;
        long j2;
        int iY;
        ArrayList arrayList2;
        List list3;
        int i13;
        a1 a1Var2;
        boolean z3;
        ArrayList arrayList3;
        LinkedHashMap linkedHashMapM2;
        boolean z4;
        int i14;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        j jVarC;
        Iterator it;
        int i15;
        int i16;
        Object obj6;
        ArrayList arrayList4;
        int iMax;
        int iMax2;
        int i17;
        int iMax3;
        int i18;
        ArrayList arrayListN;
        int i19;
        int iMax4;
        int i20;
        boolean z5;
        int i21;
        ArrayList arrayListV0;
        Object obj7;
        String str15;
        int i22;
        List list4;
        String str16;
        int i23;
        int i24;
        String str17;
        int i25;
        double d2;
        double d3;
        Map mapC;
        String str18;
        Map map4;
        int i26;
        LinkedHashMap linkedHashMapA;
        ArrayList arrayList5;
        Object obj8;
        j jVar2;
        boolean z6;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        LinkedHashMap linkedHashMap;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        Object obj9;
        Object obj10;
        ArrayList arrayList9;
        Iterator it2;
        ArrayList arrayList10;
        Object next;
        Iterator it3;
        Map map5;
        String strValueOf;
        int iB6;
        p7 p7VarH;
        Object obj11;
        Map map6;
        if (!(str != null && str.startsWith("tower."))) {
            return null;
        }
        k0 k0Var2 = this.f779a;
        String strE = k0Var2.e(map);
        Context context2 = k0Var2.f901a;
        h5 h5Var = k0Var2.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        try {
            String strA = com.sgscq.vpn.o0.a(context2, "surrenders.json");
            if (strA == null || strA.isEmpty() || (arrayList = (List) new a.o().e(strA, new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.TowerHandler$1
            }.getType())) == null) {
                arrayList = new ArrayList();
            }
        } catch (RuntimeException unused) {
            arrayList = new ArrayList();
        }
        List list5 = arrayList;
        j jVarF0 = f0(list5, mapW0);
        h5Var.S0(strE, mapW0);
        String str25 = "surrender_changed_equipment_pieces";
        String str26 = "EquipmentPiece";
        String str27 = "surrender_changed_equipment";
        String str28 = "surrender_changed_souls";
        String str29 = "surrender_changed_items";
        String str30 = "Item";
        String str31 = "surrender_changed_skills";
        String str32 = "pk_id";
        String str33 = "tower.towerFightPass";
        String str34 = "surrender_changed_atlas";
        String str35 = "return_info";
        if (!"tower.towerExchangeList".equals(str)) {
            context = context2;
            k0Var = k0Var2;
            if ("tower.towerExchange".equals(str)) {
                String strK0 = k0("pk_id", k0("id", "1", map), map);
                Iterator it4 = z().iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        map4 = (Map) z().get(0);
                        i26 = 0;
                        break;
                    }
                    map4 = (Map) it4.next();
                    if (c.a.A(map4, "pk_id", strK0)) {
                        i26 = 0;
                        break;
                    }
                }
                int iB7 = b0(map4.get("discount_silver_soul"), i26);
                int iB8 = b0(mapW0.get("tower_having_integration"), i26);
                if (iB8 < iB7) {
                    linkedHashMapA = A("积分不足");
                } else {
                    mapW0.put("tower_having_integration", Integer.valueOf(iB8 - iB7));
                    LinkedHashMap linkedHashMapA2 = a(String.valueOf(map4.get("item_id")), mapW0);
                    LinkedHashMap linkedHashMapM3 = m0();
                    linkedHashMapM3.put("return_info", p5.z0("equipment_info", z(), new Object[0]));
                    LinkedHashMap linkedHashMapZ0 = p5.z0("type", 3, "id", linkedHashMapA2.get("equipment_id"), "num", 1, "pk_id", linkedHashMapA2.get("pk_id"));
                    ArrayList arrayList11 = new ArrayList();
                    arrayList11.add(linkedHashMapZ0);
                    linkedHashMapM3.put("add_list", arrayList11);
                    LinkedHashMap linkedHashMapZ1 = p5.z0("pk_id", linkedHashMapA2.get("pk_id"), new Object[0]);
                    ArrayList arrayList12 = new ArrayList();
                    arrayList12.add(linkedHashMapZ1);
                    linkedHashMapM3.put("changed_equipment_ids", arrayList12);
                    linkedHashMapM3.put("cmn_modules", "Equipment");
                    linkedHashMapA = linkedHashMapM3;
                }
                h5Var.S0(strE, mapW0);
                e(jVarF0, linkedHashMapA);
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapW0);
                ArrayList arrayList13 = new ArrayList();
                Object obj12 = linkedHashMapA.get("changed_equipment_ids");
                if (obj12 instanceof List) {
                    ArrayList arrayList14 = new ArrayList();
                    for (Object obj13 : (List) obj12) {
                        if (obj13 instanceof Map) {
                            obj13 = ((Map) obj13).get("pk_id");
                            if (obj13 != null && !String.valueOf(obj13).isEmpty()) {
                                arrayList14.add(String.valueOf(obj13));
                            }
                        } else if (obj13 != null && !String.valueOf(obj13).isEmpty()) {
                            arrayList14.add(String.valueOf(obj13));
                        }
                    }
                    arrayList5 = arrayList14;
                } else {
                    arrayList5 = new ArrayList();
                }
                Iterator it5 = arrayList5.iterator();
                while (it5.hasNext()) {
                    Map mapB = B((String) it5.next(), w1.f0("Equipment", mapW0));
                    if (mapB != null) {
                        arrayList13.add(mapB);
                    }
                }
                linkedHashMap2.put("Equipment", p5.z0("del", new ArrayList(), "upd", arrayList13, "add", new ArrayList()));
                f(linkedHashMap2, linkedHashMapA, jVarF0, "Equipment");
                linkedHashMapA.put("cmn", k(strE, linkedHashMap2, p(linkedHashMapA)));
                return k0Var.n(p5.s1(linkedHashMapA));
            }
            obj = "type";
            jVar = jVarF0;
            if ("tower.towerFightBefore".equals(str)) {
                List listB = c1.b(context);
                boolean zI = I(mapW0);
                f0(Collections.emptyList(), mapW0);
                if (zI && I(mapW0)) {
                    X(mapW0);
                    g(mapW0);
                    mapW0.put("tower_run_ended", 0);
                }
                LinkedHashMap linkedHashMapM4 = m0();
                linkedHashMapM4.put("return_info", m(listB, mapW0));
                Boolean bool = Boolean.TRUE;
                Object[] objArr = new Object[2];
                int iMax5 = 0;
                objArr[0] = "leftTimes";
                if (I(mapW0)) {
                    iMax5 = 5;
                } else if (b0(mapW0.get("tower_point_progress"), 0) < 150) {
                    iMax5 = 5 - (Math.max(0, b0(mapW0.get("tower_fight_times"), 0)) % 5);
                }
                objArr[1] = Integer.valueOf(iMax5);
                linkedHashMapM4.put("fight_before_info", p5.z0("canFight", bool, objArr));
                linkedHashMapM0 = linkedHashMapM4;
                str2 = "tower.towerFight";
                str3 = "Equipment";
                obj = obj;
                jVar = jVar;
                str5 = str;
            } else if ("tower.towerFight".equals(str)) {
                List listB2 = c1.b(context);
                f0(Collections.emptyList(), mapW0);
                if (I(mapW0) || !G(mapW0)) {
                    str2 = "tower.towerFight";
                    z = false;
                    if (Math.max(0, 3 - Math.max(0, b0(mapW0.get("tower_daily_fight_times"), 0))) > 0) {
                        X(mapW0);
                        g(mapW0);
                        mapW0.put("tower_run_ended", 0);
                    }
                    if (z) {
                        iB1 = b0(mapW0.get("tower_fight_times"), 0);
                        iB2 = b0(mapW0.get("tower_point_progress"), 0);
                        iB3 = b0(mapW0.get("tower_max_point_progress"), 0);
                        iB4 = b0(mapW0.get("tower_total_integration"), 0);
                        iB5 = b0(mapW0.get("tower_having_integration"), 0);
                        iS = s(mapW0);
                        b0(mapW0.get("tower_pending_stronger_batch"), 0);
                        i4 = iB2 + 1;
                        i5 = iB1 + 1;
                        mapW0.put("tower_point_progress", Integer.valueOf(i4));
                        if (listB2 != null || listB2.isEmpty()) {
                            obj2 = "tower_max_point_progress";
                            i6 = i4;
                            i7 = i5;
                            list = listB2;
                            obj3 = "tower_fight_times";
                            obj4 = "tower_point_progress";
                            i8 = iB4;
                            i9 = iB2;
                            str8 = "pk_id";
                            a1Var = new a1(i0(), true, 1, 1, 1);
                        } else {
                            i7 = i5;
                            String strK1 = k0("other_id", k0("id", "1", map), map);
                            obj2 = "tower_max_point_progress";
                            int iMax6 = Math.max(0, b0(mapW0.get("tower_point_progress"), 0) - 1);
                            Map mapD0 = d0(iMax6, listB2, map);
                            int iS0 = s0(iMax6, listB2, map, mapD0);
                            ArrayList arrayListV1 = v0(iS0, listB2, mapD0);
                            if (arrayListV1.isEmpty()) {
                                a1Var = new a1(i0(), true, 1, 1, 1);
                                i6 = i4;
                                list = listB2;
                                obj3 = "tower_fight_times";
                                obj4 = "tower_point_progress";
                                i8 = iB4;
                                i9 = iB2;
                                str8 = "pk_id";
                            } else {
                                ArrayList arrayList15 = new ArrayList();
                                List listF0 = w1.f0("General", mapW0);
                                if (listF0 == null || listF0.isEmpty()) {
                                    i6 = i4;
                                    i8 = iB4;
                                    i9 = iB2;
                                    str8 = "pk_id";
                                } else {
                                    i8 = iB4;
                                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                    Iterator it6 = listF0.iterator();
                                    while (true) {
                                        i6 = i4;
                                        if (!it6.hasNext()) {
                                            break;
                                        }
                                        int i27 = iB2;
                                        Map map7 = (Map) it6.next();
                                        if (map7 == null) {
                                            str18 = str32;
                                        } else {
                                            map7.remove("bound_lieutenants");
                                            String strValueOf2 = String.valueOf(map7.getOrDefault(str32, map7.getOrDefault("general_pk_id", "")));
                                            if (strValueOf2.isEmpty()) {
                                                str18 = str32;
                                            } else {
                                                str18 = str32;
                                                if (!"null".equalsIgnoreCase(strValueOf2)) {
                                                    linkedHashMap3.put(strValueOf2, map7);
                                                }
                                            }
                                        }
                                        str32 = str18;
                                        i4 = i6;
                                        iB2 = i27;
                                    }
                                    i9 = iB2;
                                    str8 = str32;
                                    if (!linkedHashMap3.isEmpty()) {
                                        Iterator it7 = listF0.iterator();
                                        while (it7.hasNext()) {
                                            Map map8 = (Map) it7.next();
                                            if (map8 != null) {
                                                Iterator it8 = it7;
                                                Map map9 = (Map) linkedHashMap3.get(String.valueOf(map8.getOrDefault("major_pk_id", "")));
                                                if (map9 == null) {
                                                    it7 = it8;
                                                } else {
                                                    LinkedHashMap linkedHashMap4 = linkedHashMap3;
                                                    Object obj14 = map9.get("bound_lieutenants");
                                                    List arrayList16 = obj14 instanceof List ? (List) obj14 : new ArrayList();
                                                    arrayList16.add(map8);
                                                    map9.put("bound_lieutenants", arrayList16);
                                                    it7 = it8;
                                                    linkedHashMap3 = linkedHashMap4;
                                                }
                                            }
                                        }
                                    }
                                }
                                ArrayList arrayList17 = new ArrayList(w1.f0("TeamGeneral", mapW0));
                                Collections.sort(arrayList17, new c.n(7));
                                double dB0 = b0(mapW0.get("tower_hp_percent"), 0);
                                double dB1 = b0(mapW0.get("tower_attack_percent"), 0);
                                double dB2 = b0(mapW0.get("tower_defense_percent"), 0);
                                Object obj15 = "tower_point_progress";
                                double dB3 = b0(mapW0.get("tower_wisdom_percent"), 0);
                                Iterator it9 = arrayList17.iterator();
                                while (true) {
                                    obj7 = obj15;
                                    str15 = "general_id";
                                    i22 = iS0;
                                    list4 = listB2;
                                    str16 = "玩家";
                                    if (!it9.hasNext()) {
                                        break;
                                    }
                                    Iterator it10 = it9;
                                    Map map10 = (Map) it9.next();
                                    Map map11 = mapD0;
                                    int iN0 = n0(map10);
                                    double d4 = dB3;
                                    if (iN0 < 1 || iN0 == Integer.MAX_VALUE || (mapC = C(String.valueOf(map10.getOrDefault("general_pk_id", "")), mapW0)) == null) {
                                        d2 = dB0;
                                        d3 = d4;
                                    } else {
                                        String strValueOf3 = String.valueOf(mapC.getOrDefault("general_id", mapC.getOrDefault("id", w(mapW0))));
                                        int size2 = arrayList15.size();
                                        String strValueOf4 = String.valueOf(mapC.getOrDefault("general_name", mapW0.getOrDefault("user_nickname", "玩家")));
                                        e eVarH = f.h(0, size2, strValueOf3);
                                        eVarH.f812d = mapC;
                                        eVarH.f813e = mapW0;
                                        eVarH.f815g = strValueOf4;
                                        eVarH.a(300.0d, 100.0d, 100.0d);
                                        d2 = dB0;
                                        eVarH.s = d2;
                                        eVarH.t = dB1;
                                        eVarH.u = dB2;
                                        d3 = d4;
                                        eVarH.v = d3;
                                        arrayList15.add(f.a(eVarH));
                                    }
                                    dB0 = d2;
                                    mapD0 = map11;
                                    obj15 = obj7;
                                    listB2 = list4;
                                    dB3 = d3;
                                    iS0 = i22;
                                    it9 = it10;
                                }
                                Map map12 = mapD0;
                                if (arrayList15.isEmpty()) {
                                    i23 = 0;
                                    arrayList15.add(K(0, 0, w(mapW0), String.valueOf(mapW0.getOrDefault("user_nickname", "玩家")), null));
                                } else {
                                    i23 = 0;
                                }
                                Map map13 = map12;
                                int iMax7 = Math.max(1, x0(i22, list4, mapW0, map13));
                                if (arrayList15.size() > iMax7) {
                                    arrayList15 = new ArrayList(arrayList15.subList(i23, iMax7));
                                }
                                w1 w1VarA1 = w1.a1(null);
                                ArrayList arrayList18 = new ArrayList();
                                int iU0 = u0(mapW0);
                                double dMax = ((((double) Math.max(1, Math.min(150, u0(mapW0)))) * 0.2d) + 1.0d) * ((double) o0(mapW0));
                                int i28 = iU0 == 150 ? 149 : iU0;
                                list = list4;
                                double dMax2 = ((((double) Math.max(1, Math.min(150, i28))) * 0.2d) + 1.0d) * ((double) o0(mapW0));
                                if (iU0 == 150) {
                                    dMax2 *= 10.0d;
                                }
                                Iterator it11 = arrayListV1.iterator();
                                while (it11.hasNext()) {
                                    String str36 = (String) it11.next();
                                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                    Iterator it12 = it11;
                                    int size3 = arrayList18.size();
                                    Map map14 = map13;
                                    double[] dArrK0 = w1VarA1.K0(str36);
                                    Map map15 = mapW0;
                                    double d5 = (((double) size3) * 0.03d) + 1.0d;
                                    linkedHashMap5.put(str15, str36);
                                    ArrayList arrayList19 = arrayList18;
                                    int i29 = i28;
                                    linkedHashMap5.put("hp", Double.valueOf(Math.max(800.0d, (i(dArrK0, 0, 900.0d) * d5) + ((double) (i28 * 60))) * dMax2));
                                    linkedHashMap5.put("atk", Double.valueOf(Math.max(120.0d, (i(dArrK0, 1, 260.0d) * d5) + ((double) (iU0 * 10))) * dMax));
                                    double d6 = iU0 * 5;
                                    linkedHashMap5.put("def", Double.valueOf(Math.max(80.0d, (i(dArrK0, 2, 120.0d) * d5) + d6) * dMax));
                                    linkedHashMap5.put("wis", Double.valueOf(Math.max(80.0d, (i(dArrK0, 3, 120.0d) * d5) + d6) * dMax));
                                    arrayList19.add(K(1, size3, str36, w1VarA1.R0(str36), linkedHashMap5));
                                    arrayList18 = arrayList19;
                                    it11 = it12;
                                    str15 = str15;
                                    i28 = i29;
                                    dMax2 = dMax2;
                                    map13 = map14;
                                    mapW0 = map15;
                                    str16 = str16;
                                    arrayList15 = arrayList15;
                                }
                                Map map16 = map13;
                                ArrayList<BattleUnit> arrayList20 = arrayList15;
                                ArrayList arrayList21 = arrayList18;
                                Map map17 = mapW0;
                                String str37 = str16;
                                w1.a1(null).getClass();
                                int iB = w1.B(map17);
                                if (iB <= 0) {
                                    iB = Math.max(1, arrayList20.size());
                                }
                                int iMax8 = Math.max(1, arrayList21.size());
                                o.h hVarA = o.h.a();
                                obj4 = obj7;
                                mapW0 = map17;
                                obj3 = "tower_fight_times";
                                new Random((((long) b0(mapW0.get(obj3), 0)) * 17) + (((long) b0(mapW0.get(obj4), 0)) * 31) + ((long) (strK1 == null ? 0 : strK1.hashCode())));
                                BattleResult battleResultB = hVarA.b(new BattleScenario(arrayList20, arrayList21, null, iB, iMax8));
                                Map<String, Object> fightInfo = battleResultB.getFightInfo();
                                Object obj16 = fightInfo.get("init");
                                if (obj16 instanceof Map) {
                                    Map map18 = (Map) obj16;
                                    String strValueOf5 = String.valueOf(mapW0.getOrDefault("user_nickname", str37));
                                    String strW = w(mapW0);
                                    ArrayList arrayListA = c1.a(map16);
                                    if (arrayListA.isEmpty()) {
                                        str17 = "112001";
                                        i24 = 0;
                                    } else {
                                        i24 = 0;
                                        str17 = (String) arrayListA.get(0);
                                    }
                                    String str38 = str17;
                                    int iB9 = b0(mapW0.get("fighting"), b0(mapW0.get("fightPoint"), i24));
                                    int iMax9 = Math.max(1, (int) Math.round(((((double) Math.max(1, Math.min(150, u0(mapW0)))) * 0.2d) + 1.0d) * ((double) o0(mapW0)) * ((double) (((u0(mapW0) * 280) + 1800) * Math.max(1, iMax8)))));
                                    String strValueOf6 = String.valueOf(map16 != null ? map16.getOrDefault("team_name", "过关守将") : "过关守将");
                                    map18.put("info", p5.v0(p5.z0("name", strValueOf5, "nickname", strValueOf5, "player_name", strValueOf5, "userName", strValueOf5, "teamPoint", Integer.valueOf(iB), "fighting", Integer.valueOf(iB9), "fight_point", Integer.valueOf(iB9), "general_id", strW, "general_skin", strW, "user_general_skin", strW, "teamLeader", strW, "team_leader", strW, "head", strW, "avatar", strW, "user_ability", Integer.valueOf(iB), "leadership_num", Integer.valueOf(iB), "leadershipNum", Integer.valueOf(iB), "user_leadership_num", Integer.valueOf(iB), "evolution_image_status", Boolean.valueOf(h0(0, map18))), p5.z0("name", strValueOf6, "nickname", strValueOf6, "player_name", strValueOf6, "userName", strValueOf6, "teamPoint", Integer.valueOf(iMax8), "fighting", Integer.valueOf(iMax9), "fight_point", Integer.valueOf(iMax9), "general_id", str38, "general_skin", str38, "user_general_skin", str38, "teamLeader", str38, "team_leader", str38, "head", str38, "avatar", str38, "user_ability", Integer.valueOf(iMax8), "leadership_num", Integer.valueOf(iMax8), "leadershipNum", Integer.valueOf(iMax8), "user_leadership_num", Integer.valueOf(iMax8), "evolution_image_status", Boolean.valueOf(h0(1, map18)))));
                                    i25 = 1;
                                } else {
                                    i25 = 1;
                                }
                                Object obj17 = fightInfo.get("init");
                                if (obj17 instanceof Map) {
                                    ((Map) obj17).put("skipRounds", Integer.valueOf(i25));
                                }
                                int i30 = 0;
                                for (BattleUnit battleUnit : arrayList20) {
                                    if (battleUnit != null && battleUnit.isAlive()) {
                                        i30++;
                                    }
                                }
                                a1Var = new a1(fightInfo, battleResultB.isSuccess(), battleResultB.getRoundCount(), i30, arrayList20.size());
                            }
                        }
                        z2 = a1Var.f754b;
                        if (z2) {
                            obj5 = obj4;
                            int iMax10 = Math.max(0, b0(mapW0.get(obj5), 0) - 1);
                            map3 = map;
                            list2 = list;
                            Map mapD1 = d0(iMax10, list2, map3);
                            arrayListV0 = v0(s0(iMax10, list2, map3, mapD1), list2, mapD1);
                            if (arrayListV0.isEmpty()) {
                                size = 1;
                            } else {
                                size = arrayListV0.size();
                            }
                        } else {
                            map3 = map;
                            obj5 = obj4;
                            list2 = list;
                            size = 0;
                        }
                        i10 = size;
                        if (z2) {
                            i12 = i9;
                            i11 = i6;
                            jQ0 = q0(mapW0, i11, y(i12, list2, map3), false);
                        } else {
                            i11 = i6;
                            i12 = i9;
                            jQ0 = 0;
                        }
                        j2 = jQ0;
                        if (z2) {
                            iY = y(i12, list2, map3);
                        } else {
                            iY = 0;
                        }
                        arrayList2 = new ArrayList();
                        if (z2) {
                            i15 = i8 + i10;
                            i16 = iS + i10;
                            mapW0.put(obj2, Integer.valueOf(Math.max(i11, iB3)));
                            mapW0.put("tower_total_integration", Integer.valueOf(i15));
                            mapW0.put("tower_daily_max_total_integration", Integer.valueOf(Math.max(u(mapW0), Math.max(0, i15))));
                            mapW0.put("tower_having_integration", Integer.valueOf(iB5 + i10));
                            mapW0.put("tower_board_integration", Integer.valueOf(i16));
                            p5.b(j2, mapW0);
                            list3 = list2;
                            a1Var2 = a1Var;
                            mapW0.put("tower_run_coin_reward", Long.valueOf(Math.max(0L, c0(mapW0.get("tower_run_coin_reward"))) + j2));
                            obj6 = mapW0.get("tower_run_enemy_counts");
                            if (obj6 instanceof List) {
                                arrayList4 = new ArrayList((List) obj6);
                            } else {
                                arrayList4 = new ArrayList();
                            }
                            iMax = Math.max(0, i12);
                            while (arrayList4.size() <= iMax) {
                                arrayList4.add(0);
                            }
                            arrayList4.set(iMax, Integer.valueOf(Math.max(1, iY)));
                            mapW0.put("tower_run_enemy_counts", arrayList4);
                            mapW0.put(obj3, Integer.valueOf(i7));
                            iMax2 = Math.max(0, iB1) / 3;
                            i17 = i7;
                            iMax3 = Math.max(0, i17) / 3;
                            if (iMax3 > iMax2) {
                                mapW0.put("tower_pending_stronger_batch", Integer.valueOf(iMax3 * 3));
                            }
                            mapW0.put("tower_run_ended", 0);
                            i18 = iB1 / 5;
                            arrayList3 = new ArrayList();
                            if (i16 <= iS) {
                                i13 = i10;
                            } else {
                                arrayListN = n(mapW0);
                                i19 = 0;
                                iMax4 = Math.max(0, Math.min(87, i18 * 3));
                                i13 = i10;
                                i20 = 3;
                                z5 = false;
                                while (i19 < i20) {
                                    int i31 = iMax4 + i19;
                                    int i32 = iMax4;
                                    i21 = f774c[Math.max(0, i31) % 3];
                                    if (iS >= i21 && i16 >= i21) {
                                        String strP0 = p0(i31, mapW0);
                                        if (!arrayListN.contains(strP0)) {
                                            int iW0 = w0(i31, mapW0);
                                            arrayListN.add(strP0);
                                            arrayList3.addAll(E(i31, iW0, mapW0));
                                            z5 = true;
                                        }
                                    }
                                    i19++;
                                    i20 = 3;
                                    iMax4 = i32;
                                }
                                if (z5) {
                                    mapW0.put("tower_claimed_box_ids", arrayListN);
                                }
                            }
                            if (i17 % 5 == 0) {
                                mapW0.put("tower_board_integration", 0);
                            }
                            if (i11 >= 150) {
                                L(i11, Math.max(i11, iB3), i15, "complete", mapW0);
                                r(mapW0);
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                        } else {
                            list3 = list2;
                            i13 = i10;
                            a1Var2 = a1Var;
                            mapW0.put(obj5, 0);
                            mapW0.put(obj2, Integer.valueOf(iB3));
                            mapW0.put("tower_total_integration", Integer.valueOf(i8));
                            mapW0.put("tower_having_integration", Integer.valueOf(iB5));
                            mapW0.put("tower_board_integration", Integer.valueOf(iS));
                            mapW0.put(obj3, 0);
                            mapW0.put("tower_pending_stronger_batch", 0);
                            L(i12, iB3, i8, "fail", mapW0);
                            r(mapW0);
                            z3 = true;
                            arrayList3 = arrayList2;
                        }
                        linkedHashMapM2 = m0();
                        a1 a1Var3 = a1Var2;
                        linkedHashMapM2.put("fight_info", a1Var3.f753a);
                        z4 = a1Var3.f754b;
                        if (z4) {
                            i14 = i11;
                        } else {
                            i14 = i12;
                        }
                        str35 = "return_info";
                        str32 = str8;
                        linkedHashMapM2.put("fight_result", l(mapW0, z4, a1Var3.f755c, j2, i13, arrayList3, i14, a1Var3.f756d, a1Var3.f757e));
                        linkedHashMapM2.put(str35, m(list3, mapW0));
                        T(arrayList3, linkedHashMapM2);
                        if (z3) {
                            jVarC = y0.c(list5, mapW0);
                            if (jVarC.c()) {
                                jVarC.b(linkedHashMapM2);
                                ArrayList arrayList22 = new ArrayList();
                                jVarC.a(new LinkedHashMap(), arrayList22);
                                it = arrayList22.iterator();
                                while (it.hasNext()) {
                                    d((String) it.next(), linkedHashMapM2);
                                }
                                b0 b0Var = (b0) jVarC.f883c;
                                str4 = "surrender_changed_generals";
                                R(str4, "General", b0Var.f764a, linkedHashMapM2);
                                str31 = str31;
                                R(str31, "Skill", b0Var.f765b, linkedHashMapM2);
                                str14 = str29;
                                str30 = str30;
                                R(str14, str30, b0Var.f766c, linkedHashMapM2);
                                str13 = str28;
                                R(str13, "GeneralSoul", b0Var.f767d, linkedHashMapM2);
                                str3 = "Equipment";
                                str12 = str27;
                                R(str12, str3, b0Var.f768e, linkedHashMapM2);
                                str10 = str25;
                                str11 = str26;
                                R(str10, str11, b0Var.f769f, linkedHashMapM2);
                                str9 = str34;
                                R(str9, "Atlas", b0Var.f770g, linkedHashMapM2);
                            } else {
                                str3 = "Equipment";
                                str9 = str34;
                                str10 = str25;
                                str11 = str26;
                                str12 = str27;
                                str13 = str28;
                                str14 = str29;
                                str30 = str30;
                                str31 = str31;
                                str4 = "surrender_changed_generals";
                            }
                        } else {
                            str3 = "Equipment";
                            str9 = str34;
                            str10 = str25;
                            str11 = str26;
                            str12 = str27;
                            str13 = str28;
                            str14 = str29;
                            str30 = str30;
                            str31 = str31;
                            str4 = "surrender_changed_generals";
                        }
                        linkedHashMapM0 = linkedHashMapM2;
                    } else {
                        linkedHashMapM0 = A("今日挑战次数已用完");
                        str32 = "pk_id";
                        str10 = str25;
                        str11 = str26;
                        str12 = str27;
                        str13 = str28;
                        str14 = str29;
                        str30 = str30;
                        str31 = str31;
                        str4 = "surrender_changed_generals";
                        str9 = str34;
                        str35 = "return_info";
                        str3 = "Equipment";
                    }
                    if (Boolean.TRUE.equals(linkedHashMapM0.get("result"))) {
                        p.e("111", mapW0);
                    }
                    strE = strE;
                    h5Var.S0(strE, mapW0);
                    str34 = str9;
                    str29 = str14;
                    str28 = str13;
                    str27 = str12;
                    str25 = str10;
                    str5 = str;
                    h5Var = h5Var;
                    str26 = str11;
                    str33 = str33;
                } else {
                    str2 = "tower.towerFight";
                }
                mapW0.put("tower_run_day", r0(c7.f()));
                if (c0(mapW0.get("tower_run_start_time")) <= 0) {
                    mapW0.put("tower_run_start_time", Long.valueOf(c7.g()));
                }
                if (B0(mapW0.get("tower_run_rank_board")) == null) {
                    mapW0.put("tower_run_rank_board", j(b0(mapW0.get("user_level"), 1)));
                }
                z = true;
                if (z) {
                    linkedHashMapM0 = A("今日挑战次数已用完");
                    str32 = "pk_id";
                    str10 = str25;
                    str11 = str26;
                    str12 = str27;
                    str13 = str28;
                    str14 = str29;
                    str30 = str30;
                    str31 = str31;
                    str4 = "surrender_changed_generals";
                    str9 = str34;
                    str35 = "return_info";
                    str3 = "Equipment";
                } else {
                    iB1 = b0(mapW0.get("tower_fight_times"), 0);
                    iB2 = b0(mapW0.get("tower_point_progress"), 0);
                    iB3 = b0(mapW0.get("tower_max_point_progress"), 0);
                    iB4 = b0(mapW0.get("tower_total_integration"), 0);
                    iB5 = b0(mapW0.get("tower_having_integration"), 0);
                    iS = s(mapW0);
                    b0(mapW0.get("tower_pending_stronger_batch"), 0);
                    i4 = iB2 + 1;
                    i5 = iB1 + 1;
                    mapW0.put("tower_point_progress", Integer.valueOf(i4));
                    if (listB2 != null) {
                        obj2 = "tower_max_point_progress";
                        i6 = i4;
                        i7 = i5;
                        list = listB2;
                        obj3 = "tower_fight_times";
                        obj4 = "tower_point_progress";
                        i8 = iB4;
                        i9 = iB2;
                        str8 = "pk_id";
                        a1Var = new a1(i0(), true, 1, 1, 1);
                    } else {
                        obj2 = "tower_max_point_progress";
                        i6 = i4;
                        i7 = i5;
                        list = listB2;
                        obj3 = "tower_fight_times";
                        obj4 = "tower_point_progress";
                        i8 = iB4;
                        i9 = iB2;
                        str8 = "pk_id";
                        a1Var = new a1(i0(), true, 1, 1, 1);
                    }
                    z2 = a1Var.f754b;
                    if (z2) {
                        obj5 = obj4;
                        int iMax11 = Math.max(0, b0(mapW0.get(obj5), 0) - 1);
                        map3 = map;
                        list2 = list;
                        Map mapD2 = d0(iMax11, list2, map3);
                        arrayListV0 = v0(s0(iMax11, list2, map3, mapD2), list2, mapD2);
                        if (arrayListV0.isEmpty()) {
                            size = 1;
                        } else {
                            size = arrayListV0.size();
                        }
                    } else {
                        map3 = map;
                        obj5 = obj4;
                        list2 = list;
                        size = 0;
                    }
                    i10 = size;
                    if (z2) {
                        i12 = i9;
                        i11 = i6;
                        jQ0 = q0(mapW0, i11, y(i12, list2, map3), false);
                    } else {
                        i11 = i6;
                        i12 = i9;
                        jQ0 = 0;
                    }
                    j2 = jQ0;
                    if (z2) {
                        iY = y(i12, list2, map3);
                    } else {
                        iY = 0;
                    }
                    arrayList2 = new ArrayList();
                    if (z2) {
                        i15 = i8 + i10;
                        i16 = iS + i10;
                        mapW0.put(obj2, Integer.valueOf(Math.max(i11, iB3)));
                        mapW0.put("tower_total_integration", Integer.valueOf(i15));
                        mapW0.put("tower_daily_max_total_integration", Integer.valueOf(Math.max(u(mapW0), Math.max(0, i15))));
                        mapW0.put("tower_having_integration", Integer.valueOf(iB5 + i10));
                        mapW0.put("tower_board_integration", Integer.valueOf(i16));
                        p5.b(j2, mapW0);
                        list3 = list2;
                        a1Var2 = a1Var;
                        mapW0.put("tower_run_coin_reward", Long.valueOf(Math.max(0L, c0(mapW0.get("tower_run_coin_reward"))) + j2));
                        obj6 = mapW0.get("tower_run_enemy_counts");
                        if (obj6 instanceof List) {
                            arrayList4 = new ArrayList((List) obj6);
                        } else {
                            arrayList4 = new ArrayList();
                        }
                        iMax = Math.max(0, i12);
                        while (arrayList4.size() <= iMax) {
                            arrayList4.add(0);
                        }
                        arrayList4.set(iMax, Integer.valueOf(Math.max(1, iY)));
                        mapW0.put("tower_run_enemy_counts", arrayList4);
                        mapW0.put(obj3, Integer.valueOf(i7));
                        iMax2 = Math.max(0, iB1) / 3;
                        i17 = i7;
                        iMax3 = Math.max(0, i17) / 3;
                        if (iMax3 > iMax2) {
                            mapW0.put("tower_pending_stronger_batch", Integer.valueOf(iMax3 * 3));
                        }
                        mapW0.put("tower_run_ended", 0);
                        i18 = iB1 / 5;
                        arrayList3 = new ArrayList();
                        if (i16 <= iS) {
                            i13 = i10;
                        } else {
                            arrayListN = n(mapW0);
                            i19 = 0;
                            iMax4 = Math.max(0, Math.min(87, i18 * 3));
                            i13 = i10;
                            i20 = 3;
                            z5 = false;
                            while (i19 < i20) {
                                int i33 = iMax4 + i19;
                                int i34 = iMax4;
                                i21 = f774c[Math.max(0, i33) % 3];
                                if (iS >= i21) {
                                }
                                i19++;
                                i20 = 3;
                                iMax4 = i34;
                            }
                            if (z5) {
                                mapW0.put("tower_claimed_box_ids", arrayListN);
                            }
                        }
                        if (i17 % 5 == 0) {
                            mapW0.put("tower_board_integration", 0);
                        }
                        if (i11 >= 150) {
                            L(i11, Math.max(i11, iB3), i15, "complete", mapW0);
                            r(mapW0);
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                    } else {
                        list3 = list2;
                        i13 = i10;
                        a1Var2 = a1Var;
                        mapW0.put(obj5, 0);
                        mapW0.put(obj2, Integer.valueOf(iB3));
                        mapW0.put("tower_total_integration", Integer.valueOf(i8));
                        mapW0.put("tower_having_integration", Integer.valueOf(iB5));
                        mapW0.put("tower_board_integration", Integer.valueOf(iS));
                        mapW0.put(obj3, 0);
                        mapW0.put("tower_pending_stronger_batch", 0);
                        L(i12, iB3, i8, "fail", mapW0);
                        r(mapW0);
                        z3 = true;
                        arrayList3 = arrayList2;
                    }
                    linkedHashMapM2 = m0();
                    a1 a1Var4 = a1Var2;
                    linkedHashMapM2.put("fight_info", a1Var4.f753a);
                    z4 = a1Var4.f754b;
                    if (z4) {
                        i14 = i11;
                    } else {
                        i14 = i12;
                    }
                    str35 = "return_info";
                    str32 = str8;
                    linkedHashMapM2.put("fight_result", l(mapW0, z4, a1Var4.f755c, j2, i13, arrayList3, i14, a1Var4.f756d, a1Var4.f757e));
                    linkedHashMapM2.put(str35, m(list3, mapW0));
                    T(arrayList3, linkedHashMapM2);
                    if (z3) {
                        jVarC = y0.c(list5, mapW0);
                        if (jVarC.c()) {
                            str3 = "Equipment";
                            str9 = str34;
                            str10 = str25;
                            str11 = str26;
                            str12 = str27;
                            str13 = str28;
                            str14 = str29;
                            str30 = str30;
                            str31 = str31;
                            str4 = "surrender_changed_generals";
                        } else {
                            jVarC.b(linkedHashMapM2);
                            ArrayList arrayList23 = new ArrayList();
                            jVarC.a(new LinkedHashMap(), arrayList23);
                            it = arrayList23.iterator();
                            while (it.hasNext()) {
                                d((String) it.next(), linkedHashMapM2);
                            }
                            b0 b0Var2 = (b0) jVarC.f883c;
                            str4 = "surrender_changed_generals";
                            R(str4, "General", b0Var2.f764a, linkedHashMapM2);
                            str31 = str31;
                            R(str31, "Skill", b0Var2.f765b, linkedHashMapM2);
                            str14 = str29;
                            str30 = str30;
                            R(str14, str30, b0Var2.f766c, linkedHashMapM2);
                            str13 = str28;
                            R(str13, "GeneralSoul", b0Var2.f767d, linkedHashMapM2);
                            str3 = "Equipment";
                            str12 = str27;
                            R(str12, str3, b0Var2.f768e, linkedHashMapM2);
                            str10 = str25;
                            str11 = str26;
                            R(str10, str11, b0Var2.f769f, linkedHashMapM2);
                            str9 = str34;
                            R(str9, "Atlas", b0Var2.f770g, linkedHashMapM2);
                        }
                    } else {
                        str3 = "Equipment";
                        str9 = str34;
                        str10 = str25;
                        str11 = str26;
                        str12 = str27;
                        str13 = str28;
                        str14 = str29;
                        str30 = str30;
                        str31 = str31;
                        str4 = "surrender_changed_generals";
                    }
                    linkedHashMapM0 = linkedHashMapM2;
                }
                if (Boolean.TRUE.equals(linkedHashMapM0.get("result"))) {
                    p.e("111", mapW0);
                }
                strE = strE;
                h5Var.S0(strE, mapW0);
                str34 = str9;
                str29 = str14;
                str28 = str13;
                str27 = str12;
                str25 = str10;
                str5 = str;
                h5Var = h5Var;
                str26 = str11;
                str33 = str33;
            } else {
                strE = strE;
                str35 = "return_info";
                str2 = "tower.towerFight";
                str32 = "pk_id";
                str25 = str25;
                str27 = str27;
                str28 = str28;
                str30 = str30;
                str31 = str31;
                str34 = str34;
                str3 = "Equipment";
                obj = obj;
                jVar = jVar;
                h5Var = h5Var;
                str26 = str26;
                str4 = "surrender_changed_generals";
                str29 = str29;
                str5 = str;
                if ("tower.towerBeStronger".equals(str5)) {
                    f0(Collections.emptyList(), mapW0);
                    String strK2 = k0("id", "1", map);
                    Iterator it13 = l0(mapW0).iterator();
                    do {
                        if (!it13.hasNext()) {
                            map2 = null;
                            break;
                        }
                        map2 = (Map) it13.next();
                    } while (!c.a.A(map2, "id", strK2));
                    if (map2 == null) {
                        str7 = "奖励已刷新";
                    } else {
                        int iB10 = b0(map2.get("stronger_type"), 1);
                        int iB11 = b0(map2.get("need_integration"), 0);
                        Object obj18 = map2.get("incre_per");
                        if (obj18 == null) {
                            i3 = 0;
                            iB0 = 0;
                        } else {
                            String strTrim = String.valueOf(obj18).trim();
                            if (strTrim.endsWith("%")) {
                                strTrim = strTrim.substring(0, strTrim.length() - 1).trim();
                                i2 = 0;
                            } else {
                                i2 = 0;
                            }
                            int i35 = i2;
                            iB0 = b0(strTrim, i2);
                            i3 = i35;
                        }
                        int iB12 = b0(mapW0.get("tower_having_integration"), i3);
                        if (iB12 < iB11) {
                            str7 = "积分不足";
                        } else {
                            mapW0.put("tower_having_integration", Integer.valueOf(iB12 - iB11));
                            mapW0.put("tower_pending_stronger_batch", Integer.valueOf(i3));
                            if (iB10 == 2) {
                                str6 = "tower_defense_percent";
                            } else if (iB10 == 3) {
                                str6 = "tower_hp_percent";
                            } else {
                                str6 = iB10 == 4 ? "tower_wisdom_percent" : "tower_attack_percent";
                            }
                            mapW0.put(str6, Integer.valueOf(b0(mapW0.get(str6), 0) + iB0));
                            linkedHashMapM1 = m0();
                            linkedHashMapM1.put(str35, m(new ArrayList(), mapW0));
                        }
                        linkedHashMapM0 = linkedHashMapM1;
                        str33 = str33;
                    }
                    linkedHashMapM1 = A(str7);
                    linkedHashMapM0 = linkedHashMapM1;
                    str33 = str33;
                } else {
                    str33 = str33;
                    if (str33.equals(str5)) {
                        linkedHashMapM0 = h(c1.b(context), mapW0);
                    } else {
                        List listB3 = c1.b(context);
                        boolean zI2 = I(mapW0);
                        f0(Collections.emptyList(), mapW0);
                        if (zI2 && I(mapW0)) {
                            X(mapW0);
                            g(mapW0);
                            mapW0.put("tower_run_ended", 0);
                        }
                        linkedHashMapM0 = m0();
                        LinkedHashMap linkedHashMapM = m(listB3, mapW0);
                        linkedHashMapM0.put(str35, linkedHashMapM);
                        linkedHashMapM0.put("tower_info", linkedHashMapM);
                    }
                }
                h5Var.S0(strE, mapW0);
            }
            obj8 = linkedHashMapM0.get(str35);
            if ((obj8 instanceof Map) && ((Map) obj8).containsKey("rank_info")) {
                p7VarH = p7.h(context);
                p7VarH.i();
                obj11 = linkedHashMapM0.get(str35);
                if (obj11 instanceof Map) {
                    map6 = (Map) obj11;
                    if (map6.containsKey("rank_info")) {
                        map6.put("rank_info", V(mapW0, p7VarH));
                    }
                }
            }
            h5Var.S0(strE, mapW0);
            jVar2 = jVar;
            e(jVar2, linkedHashMapM0);
            if (!str2.equals(str5) || str33.equals(str5)) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6) {
                linkedHashMap = new LinkedHashMap(mapW0);
                arrayList6 = new ArrayList();
                arrayList7 = new ArrayList();
                arrayList8 = new ArrayList();
                obj9 = linkedHashMapM0.get("fight_result");
                if (obj9 instanceof Map) {
                    obj10 = ((Map) obj9).get("add_list_other");
                    if (obj10 instanceof List) {
                        arrayList9 = new ArrayList();
                        it2 = ((List) obj10).iterator();
                        while (true) {
                            str19 = strE;
                            if (it2.hasNext()) {
                                break;
                            }
                            next = it2.next();
                            Iterator it14 = it2;
                            if (next instanceof Map) {
                                arrayList9.add((Map) next);
                            }
                            it2 = it14;
                            strE = str19;
                        }
                        arrayList10 = arrayList9;
                    } else {
                        arrayList10 = new ArrayList();
                    }
                    it3 = arrayList10.iterator();
                    while (it3.hasNext()) {
                        map5 = (Map) it3.next();
                        Iterator it15 = it3;
                        strValueOf = String.valueOf(map5.getOrDefault(str32, ""));
                        if (!strValueOf.isEmpty()) {
                            iB6 = b0(map5.get(obj), 5);
                            if (iB6 == 3) {
                                c(arrayList7, B(strValueOf, w1.f0(str3, mapW0)));
                            } else if (iB6 == 8) {
                                c(arrayList8, B(strValueOf, w1.f0(str26, mapW0)));
                            } else {
                                c(arrayList6, B(strValueOf, w1.f0(str30, mapW0)));
                            }
                        }
                        it3 = it15;
                    }
                    linkedHashMap.put(str30, p5.z0("del", new ArrayList(), "upd", arrayList6, "add", new ArrayList()));
                    linkedHashMap.put(str3, p5.z0("del", new ArrayList(), "upd", arrayList7, "add", new ArrayList()));
                    linkedHashMap.put(str26, p5.z0("del", new ArrayList(), "upd", arrayList8, "add", new ArrayList()));
                    S(linkedHashMapM0.get(str4), "General", linkedHashMap);
                    S(linkedHashMapM0.get(str31), "Skill", linkedHashMap);
                    str23 = str29;
                    S(linkedHashMapM0.get(str23), str30, linkedHashMap);
                    str22 = str28;
                    S(linkedHashMapM0.get(str22), "GeneralSoul", linkedHashMap);
                    str21 = str27;
                    S(linkedHashMapM0.get(str21), str3, linkedHashMap);
                    str20 = str25;
                    S(linkedHashMapM0.get(str20), str26, linkedHashMap);
                    str24 = str34;
                    S(linkedHashMapM0.get(str24), "Atlas", linkedHashMap);
                } else {
                    arrayList10 = new ArrayList();
                }
                str19 = strE;
                it3 = arrayList10.iterator();
                while (it3.hasNext()) {
                    map5 = (Map) it3.next();
                    Iterator it16 = it3;
                    strValueOf = String.valueOf(map5.getOrDefault(str32, ""));
                    if (!strValueOf.isEmpty()) {
                        iB6 = b0(map5.get(obj), 5);
                        if (iB6 == 3) {
                            c(arrayList7, B(strValueOf, w1.f0(str3, mapW0)));
                        } else if (iB6 == 8) {
                            c(arrayList8, B(strValueOf, w1.f0(str26, mapW0)));
                        } else {
                            c(arrayList6, B(strValueOf, w1.f0(str30, mapW0)));
                        }
                    }
                    it3 = it16;
                }
                linkedHashMap.put(str30, p5.z0("del", new ArrayList(), "upd", arrayList6, "add", new ArrayList()));
                linkedHashMap.put(str3, p5.z0("del", new ArrayList(), "upd", arrayList7, "add", new ArrayList()));
                linkedHashMap.put(str26, p5.z0("del", new ArrayList(), "upd", arrayList8, "add", new ArrayList()));
                S(linkedHashMapM0.get(str4), "General", linkedHashMap);
                S(linkedHashMapM0.get(str31), "Skill", linkedHashMap);
                str23 = str29;
                S(linkedHashMapM0.get(str23), str30, linkedHashMap);
                str22 = str28;
                S(linkedHashMapM0.get(str22), "GeneralSoul", linkedHashMap);
                str21 = str27;
                S(linkedHashMapM0.get(str21), str3, linkedHashMap);
                str20 = str25;
                S(linkedHashMapM0.get(str20), str26, linkedHashMap);
                str24 = str34;
                S(linkedHashMapM0.get(str24), "Atlas", linkedHashMap);
            } else {
                str19 = strE;
                str20 = str25;
                str21 = str27;
                str22 = str28;
                str23 = str29;
                str24 = str34;
                linkedHashMap = new LinkedHashMap(mapW0);
            }
            if (z6) {
                f(linkedHashMap, linkedHashMapM0, jVar2, str30, str3, str26);
            } else {
                f(linkedHashMap, linkedHashMapM0, jVar2, new String[0]);
            }
            linkedHashMapM0.put("cmn", k(str19, linkedHashMap, p(linkedHashMapM0)));
            linkedHashMapM0.remove(str4);
            linkedHashMapM0.remove(str31);
            linkedHashMapM0.remove(str23);
            linkedHashMapM0.remove(str22);
            linkedHashMapM0.remove(str21);
            linkedHashMapM0.remove(str20);
            linkedHashMapM0.remove(str24);
            return k0Var.n(p5.s1(linkedHashMapM0));
        }
        linkedHashMapM0 = m0();
        linkedHashMapM0.put("return_info", p5.z0("equipment_info", z(), new Object[0]));
        k0Var = k0Var2;
        context = context2;
        obj = "type";
        jVar = jVarF0;
        str2 = "tower.towerFight";
        str5 = str;
        str3 = "Equipment";
        str4 = "surrender_changed_generals";
        obj8 = linkedHashMapM0.get(str35);
        if (obj8 instanceof Map) {
            p7VarH = p7.h(context);
            p7VarH.i();
            obj11 = linkedHashMapM0.get(str35);
            if (obj11 instanceof Map) {
                map6 = (Map) obj11;
                if (map6.containsKey("rank_info")) {
                    map6.put("rank_info", V(mapW0, p7VarH));
                }
            }
        }
        h5Var.S0(strE, mapW0);
        jVar2 = jVar;
        e(jVar2, linkedHashMapM0);
        if (str2.equals(str5)) {
            z6 = true;
        } else {
            z6 = true;
        }
        if (z6) {
            linkedHashMap = new LinkedHashMap(mapW0);
            arrayList6 = new ArrayList();
            arrayList7 = new ArrayList();
            arrayList8 = new ArrayList();
            obj9 = linkedHashMapM0.get("fight_result");
            if (obj9 instanceof Map) {
                arrayList10 = new ArrayList();
            } else {
                obj10 = ((Map) obj9).get("add_list_other");
                if (obj10 instanceof List) {
                    arrayList10 = new ArrayList();
                } else {
                    arrayList9 = new ArrayList();
                    it2 = ((List) obj10).iterator();
                    while (true) {
                        str19 = strE;
                        if (it2.hasNext()) {
                            break;
                            break;
                        }
                        next = it2.next();
                        Iterator it17 = it2;
                        if (next instanceof Map) {
                            arrayList9.add((Map) next);
                        }
                        it2 = it17;
                        strE = str19;
                    }
                    arrayList10 = arrayList9;
                }
                it3 = arrayList10.iterator();
                while (it3.hasNext()) {
                    map5 = (Map) it3.next();
                    Iterator it18 = it3;
                    strValueOf = String.valueOf(map5.getOrDefault(str32, ""));
                    if (!strValueOf.isEmpty()) {
                        iB6 = b0(map5.get(obj), 5);
                        if (iB6 == 3) {
                            c(arrayList7, B(strValueOf, w1.f0(str3, mapW0)));
                        } else if (iB6 == 8) {
                            c(arrayList8, B(strValueOf, w1.f0(str26, mapW0)));
                        } else {
                            c(arrayList6, B(strValueOf, w1.f0(str30, mapW0)));
                        }
                    }
                    it3 = it18;
                }
                linkedHashMap.put(str30, p5.z0("del", new ArrayList(), "upd", arrayList6, "add", new ArrayList()));
                linkedHashMap.put(str3, p5.z0("del", new ArrayList(), "upd", arrayList7, "add", new ArrayList()));
                linkedHashMap.put(str26, p5.z0("del", new ArrayList(), "upd", arrayList8, "add", new ArrayList()));
                S(linkedHashMapM0.get(str4), "General", linkedHashMap);
                S(linkedHashMapM0.get(str31), "Skill", linkedHashMap);
                str23 = str29;
                S(linkedHashMapM0.get(str23), str30, linkedHashMap);
                str22 = str28;
                S(linkedHashMapM0.get(str22), "GeneralSoul", linkedHashMap);
                str21 = str27;
                S(linkedHashMapM0.get(str21), str3, linkedHashMap);
                str20 = str25;
                S(linkedHashMapM0.get(str20), str26, linkedHashMap);
                str24 = str34;
                S(linkedHashMapM0.get(str24), "Atlas", linkedHashMap);
            }
            str19 = strE;
            it3 = arrayList10.iterator();
            while (it3.hasNext()) {
                map5 = (Map) it3.next();
                Iterator it19 = it3;
                strValueOf = String.valueOf(map5.getOrDefault(str32, ""));
                if (!strValueOf.isEmpty()) {
                    iB6 = b0(map5.get(obj), 5);
                    if (iB6 == 3) {
                        c(arrayList7, B(strValueOf, w1.f0(str3, mapW0)));
                    } else if (iB6 == 8) {
                        c(arrayList8, B(strValueOf, w1.f0(str26, mapW0)));
                    } else {
                        c(arrayList6, B(strValueOf, w1.f0(str30, mapW0)));
                    }
                }
                it3 = it19;
            }
            linkedHashMap.put(str30, p5.z0("del", new ArrayList(), "upd", arrayList6, "add", new ArrayList()));
            linkedHashMap.put(str3, p5.z0("del", new ArrayList(), "upd", arrayList7, "add", new ArrayList()));
            linkedHashMap.put(str26, p5.z0("del", new ArrayList(), "upd", arrayList8, "add", new ArrayList()));
            S(linkedHashMapM0.get(str4), "General", linkedHashMap);
            S(linkedHashMapM0.get(str31), "Skill", linkedHashMap);
            str23 = str29;
            S(linkedHashMapM0.get(str23), str30, linkedHashMap);
            str22 = str28;
            S(linkedHashMapM0.get(str22), "GeneralSoul", linkedHashMap);
            str21 = str27;
            S(linkedHashMapM0.get(str21), str3, linkedHashMap);
            str20 = str25;
            S(linkedHashMapM0.get(str20), str26, linkedHashMap);
            str24 = str34;
            S(linkedHashMapM0.get(str24), "Atlas", linkedHashMap);
        } else {
            str19 = strE;
            str20 = str25;
            str21 = str27;
            str22 = str28;
            str23 = str29;
            str24 = str34;
            linkedHashMap = new LinkedHashMap(mapW0);
        }
        if (z6) {
            f(linkedHashMap, linkedHashMapM0, jVar2, str30, str3, str26);
        } else {
            f(linkedHashMap, linkedHashMapM0, jVar2, new String[0]);
        }
        linkedHashMapM0.put("cmn", k(str19, linkedHashMap, p(linkedHashMapM0)));
        linkedHashMapM0.remove(str4);
        linkedHashMapM0.remove(str31);
        linkedHashMapM0.remove(str23);
        linkedHashMapM0.remove(str22);
        linkedHashMapM0.remove(str21);
        linkedHashMapM0.remove(str20);
        linkedHashMapM0.remove(str24);
        return k0Var.n(p5.s1(linkedHashMapM0));
    }

    public final LinkedHashMap k(String str, LinkedHashMap linkedHashMap, String... strArr) {
        k0 k0Var = this.f779a;
        return p5.u1(k0Var.f904d.j(linkedHashMap, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", linkedHashMap), k0Var.i(k0Var.b(), "user_energy", linkedHashMap), k0Var.i(k0Var.d(), "user_power", linkedHashMap), k0Var.j(k0Var.a(), linkedHashMap), str, linkedHashMap), strArr));
    }
}
