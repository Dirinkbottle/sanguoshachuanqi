package com.sgscq.vpn;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class t5 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f1401k = {"141002", "111012", "111005", "131009", "131010", "134001", "111006", "121006", "114001", "111003", "141012", "121011"};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Map f1402l = Collections.synchronizedMap(new r5());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final List f1403m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final n5 f1407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f1408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f1409f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1410g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f1411h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final s5 f1412i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final y0 f1413j;

    static {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, "老谋深算的张合", "固若金汤的颜靓", "博览群书的魏烟", "心惊肉跳的廖华", "乘虚而入的荀于", "老奸巨猾的典为", "伺机待发的于近", "乘虚而入的吕萌");
        f1403m = Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007c  */
    public t5(Context context, String str) {
        List<String> list;
        List listEmptyList;
        boolean z;
        String strA = o0.a(context, "i18n.json");
        List list2 = f1403m;
        if (strA != null && !strA.isEmpty()) {
            try {
                Map map = (Map) new a.o().e(strA, new TypeToken<Map<String, String>>() { // from class: com.sgscq.vpn.RobotOpponentGenerator$3
                }.getType());
                ArrayList arrayList = new ArrayList();
                if (map != null) {
                    for (Map.Entry entry : map.entrySet()) {
                        if (((String) entry.getKey()).matches("robot_\\d+") && entry.getValue() != null && !((String) entry.getValue()).trim().isEmpty()) {
                            arrayList.add(((String) entry.getValue()).trim());
                        }
                    }
                }
                list = arrayList.isEmpty() ? list2 : arrayList;
            } catch (RuntimeException unused) {
            }
        }
        this.f1412i = new s5(this, 8, 0);
        this.f1413j = new y0(this, 2);
        String str2 = str == null ? "" : str;
        this.f1404a = str2;
        ArrayList arrayList2 = new ArrayList();
        if (list != null) {
            for (String str3 : list) {
                String strTrim = str3 == null ? "" : str3.trim();
                if (strTrim == null || strTrim.isEmpty() || strTrim.matches("robot_\\d+")) {
                    z = false;
                    break;
                }
                String[] strArr = {"防御队", "攻击队", "阵容", "队伍", "测试队", "初级队", "中级队", "高级队", "终极队"};
                int i2 = 0;
                while (true) {
                    if (i2 >= 9) {
                        z = true;
                        break;
                    } else {
                        if (strTrim.contains(strArr[i2])) {
                            z = false;
                            break;
                        }
                        i2++;
                    }
                }
                if (z) {
                    arrayList2.add(strTrim);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            arrayList2.addAll(list2);
        }
        Collections.shuffle(arrayList2, new Random(u(str2)));
        this.f1405b = Collections.unmodifiableList(arrayList2);
        this.f1410g = Math.max(0, 0);
        String strA2 = o0.a(context, "user_levels.json");
        if (strA2 == null || strA2.trim().isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            try {
                List list3 = (List) new a.o().e(strA2, new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.RobotOpponentGenerator$4
                }.getType());
                listEmptyList = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
            } catch (RuntimeException unused2) {
                listEmptyList = Collections.emptyList();
            }
        }
        this.f1411h = listEmptyList;
        n5 n5Var = new n5(context);
        this.f1407d = n5Var;
        List listN = p5.n();
        this.f1408e = e(n5Var, listN);
        ArrayList arrayList3 = new ArrayList(listN);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = n5Var.f1230g.iterator();
        while (it.hasNext()) {
            for (String str4 : ((i5) it.next()).f1059b) {
                if (n5Var.l(str4)) {
                    linkedHashSet.add(str4);
                }
            }
        }
        for (String str5 : new ArrayList(linkedHashSet)) {
            if (!arrayList3.contains(str5)) {
                arrayList3.add(str5);
            }
        }
        List listE = e(this.f1407d, arrayList3);
        this.f1409f = listE;
        this.f1406c = this.f1404a + "|" + this.f1405b.hashCode() + "|team=" + this.f1410g + "|levels=" + this.f1411h.hashCode() + "|generals=" + listE.hashCode();
    }

    public static void c(Map map, Map map2) {
        String[] strArr = {"hp", "atk", "def", "wis", "base_hp", "base_attack", "base_defense", "base_wisdom", "base_fighting", "attr_hp", "attr_attack", "attr_defense", "attr_wisdom", "general_hp", "general_attack", "general_defense", "general_wisdom", "general_hp_attr", "general_attack_attr", "general_defense_attr", "general_wisdom_attr", "fighting", "fight_point", "fighting_point", "general_fighting"};
        for (int i2 = 0; i2 < 25; i2++) {
            String str = strArr[i2];
            if (map.containsKey(str)) {
                map2.put(str, map.get(str));
            }
        }
    }

    public static int d(int i2, int i3, int i4, int i5, int i6) {
        if (i6 <= i5) {
            return i5;
        }
        int i7 = i4 * 265443576;
        return Math.floorMod(i7 + (i3 * 12345) + (i2 * 1103515245), (i6 - i5) + 1) + i5;
    }

    public static List e(n5 n5Var, List list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (n5Var.l(str)) {
                arrayList2.add(str);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                if (n5Var.d(str, str.hashCode(), hashSet).a()) {
                    arrayList.add(str);
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = arrayList2;
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0051  */
    public static LinkedHashMap f(w1 w1Var, String str, String str2, int i2, int i3, String str3, String str4, boolean z) {
        double[] dArr;
        int i4;
        int iMax;
        double d2;
        LinkedHashMap linkedHashMap = new LinkedHashMap(w1Var.Y1(str2));
        boolean z2 = !z;
        double[] dArrM0 = w1Var.M0(i2, 1, str2);
        if (dArrM0 == null || dArrM0.length <= 4) {
            dArr = null;
        } else {
            double dMax = Math.max(1.0d, dArrM0[0]);
            double dMax2 = Math.max(1.0d, dArrM0[1]);
            double dMax3 = Math.max(1.0d, dArrM0[2]);
            double dMax4 = Math.max(1.0d, dArrM0[3]);
            double dMax5 = Math.max(1.0d, dArrM0[4]);
            if (z2) {
                double d3 = i3;
                if (d3 > dMax5) {
                    d2 = d3 / dMax5;
                } else {
                    d2 = 1.0d;
                }
            } else {
                d2 = 1.0d;
            }
            double dMin = Math.min(1.35d, d2);
            double d4 = dMax * dMin;
            double d5 = dMax2 * dMin;
            double d6 = dMax3 * dMin;
            double d7 = dMin * dMax4;
            dArr = new double[]{dMax, dMax2, dMax3, dMax4, d4, d5, d6, d7, w1.x(d4, d5, d6, d7), d4 - dMax, d5 - dMax2, d6 - dMax3, d7 - dMax4};
        }
        double[] dArr2 = dArr;
        double dMax6 = dArr2 != null ? dArr2[0] : Math.max(100.0d, ((double) i3) * 0.55d);
        double dMax7 = dArr2 != null ? dArr2[1] : Math.max(20.0d, ((double) i3) * 0.12d);
        double dMax8 = dArr2 != null ? dArr2[2] : Math.max(10.0d, ((double) i3) * 0.06d);
        double dMax9 = dArr2 != null ? dArr2[3] : Math.max(10.0d, ((double) i3) * 0.06d);
        if (dArr2 != null) {
            dMax6 = dArr2[4];
        }
        if (dArr2 != null) {
            dMax7 = dArr2[5];
        }
        double d8 = dMax7;
        if (dArr2 != null) {
            dMax8 = dArr2[6];
        }
        double d9 = dMax8;
        if (dArr2 != null) {
            dMax9 = dArr2[7];
        }
        if (dArr2 != null) {
            i4 = 1;
            iMax = Math.max(1, (int) Math.round(dArr2[8]));
        } else {
            double d10 = i3;
            double dMax10 = Math.max(100.0d, 0.55d * d10);
            double dMax11 = Math.max(20.0d, d10 * 0.12d);
            double d11 = d10 * 0.06d;
            int iRound = (int) Math.round(w1.x(dMax10, dMax11, Math.max(10.0d, d11), Math.max(10.0d, d11)));
            i4 = 1;
            iMax = Math.max(1, iRound);
        }
        int i5 = i4;
        linkedHashMap.put("pk_id", str);
        linkedHashMap.put("id", str2);
        linkedHashMap.put("general_id", str2);
        linkedHashMap.put("general_pk_id", str);
        linkedHashMap.put("general_name", w1Var.R0(str2));
        c.a.z(linkedHashMap, "card_type", "1", i2, "level", i2, "general_level");
        linkedHashMap.put("hp", Double.valueOf(dMax6));
        linkedHashMap.put("atk", Double.valueOf(d8));
        linkedHashMap.put("def", Double.valueOf(d9));
        linkedHashMap.put("wis", Double.valueOf(dMax9));
        linkedHashMap.put("general_hp", Double.valueOf(dMax6));
        linkedHashMap.put("general_attack", Double.valueOf(d8));
        linkedHashMap.put("general_defense", Double.valueOf(d9));
        linkedHashMap.put("general_wisdom", Double.valueOf(dMax9));
        linkedHashMap.put("attr_hp", Double.valueOf(dMax6));
        linkedHashMap.put("attr_attack", Double.valueOf(d8));
        linkedHashMap.put("attr_defense", Double.valueOf(d9));
        linkedHashMap.put("attr_wisdom", Double.valueOf(dMax9));
        linkedHashMap.put("base_hp", Double.valueOf(dMax6));
        linkedHashMap.put("base_attack", Double.valueOf(d8));
        linkedHashMap.put("base_defense", Double.valueOf(d9));
        linkedHashMap.put("base_wisdom", Double.valueOf(dMax9));
        linkedHashMap.put("general_hp_attr", Double.valueOf(dMax6));
        linkedHashMap.put("general_attack_attr", Double.valueOf(d8));
        linkedHashMap.put("general_defense_attr", Double.valueOf(d9));
        linkedHashMap.put("general_wisdom_attr", Double.valueOf(dMax9));
        linkedHashMap.put("fighting", Integer.valueOf(iMax));
        linkedHashMap.put("general_fighting", Integer.valueOf(iMax));
        linkedHashMap.put("fight_point", Integer.valueOf(iMax));
        if (dArr2 != null && dArr2.length > 12) {
            r(linkedHashMap, "hp", dArr2[9]);
            r(linkedHashMap, "attack", dArr2[10]);
            r(linkedHashMap, "defense", dArr2[11]);
            r(linkedHashMap, "wisdom", dArr2[12]);
        }
        linkedHashMap.put("major_pk_id", str3);
        linkedHashMap.put("position", str4);
        linkedHashMap.put("star_level", Integer.valueOf(i2 >= 50 ? 5 : i5));
        linkedHashMap.put("general_star", Integer.valueOf(i2 < 50 ? i5 : 5));
        linkedHashMap.put("status", "1");
        linkedHashMap.put("general_status", "1");
        com.sgscq.vpn.handler.l.b(linkedHashMap, "get_time", "1", 0, "exp");
        linkedHashMap.put("general_avatar", str2);
        linkedHashMap.put("general_painting", str2);
        return linkedHashMap;
    }

    public static boolean g(int i2, w1 w1Var, String str) {
        if (w1Var.i0().isEmpty()) {
            return true;
        }
        double[] dArrM0 = w1Var.M0(i2, 1, str);
        return dArrM0 != null && dArrM0.length > 4 && dArrM0[4] > 0.0d;
    }

    public static boolean h(w1 w1Var, List list, int i2, int i3) {
        int i4 = 0;
        while (true) {
            if (i4 >= list.size()) {
                return true;
            }
            if (!g(i4 < i3 ? i2 : 1, w1Var, (String) list.get(i4))) {
                return false;
            }
            i4++;
        }
    }

    public static int i(Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        try {
            return (int) Math.round(Double.parseDouble(String.valueOf(obj)));
        } catch (RuntimeException unused) {
            return i2;
        }
    }

    public static int j(int i2) {
        return ((int) Math.round(s(i2) * 99.0d)) + 1;
    }

    public static ArrayList l(k5 k5Var, Set set) {
        ArrayList arrayList = new ArrayList();
        if (k5Var == null) {
            return arrayList;
        }
        for (String str : k5Var.f1113b) {
            if (!set.contains(str) && !arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static LinkedHashMap m(List list) {
        ArrayList arrayList = new ArrayList();
        Object[] objArr = new Object[4];
        objArr[0] = "upd";
        objArr[1] = new ArrayList();
        objArr[2] = "add";
        if (list == null) {
            list = new ArrayList();
        }
        objArr[3] = list;
        return p5.z0("del", arrayList, objArr);
    }

    public static int o(int i2, int i3, int i4) {
        int iMax = Math.max(1, i2 * 3);
        double dS = s(i3);
        return Math.max(1, Math.min(iMax - 1, ((int) Math.round(((double) i2) * (((dS * 0.38d) + 0.22d) - (((double) i4) * 0.025d)))) + d(i3, i4, 17, -4, 4)));
    }

    public static LinkedHashMap q(int i2, int i3, int i4, int i5, String str, String str2) {
        String strA = a.b0.a("robot_", i2);
        Object[] objArr = new Object[48];
        objArr[0] = "user_id";
        objArr[1] = strA;
        objArr[2] = "account_uid";
        objArr[3] = strA;
        objArr[4] = "uid";
        objArr[5] = strA;
        objArr[6] = "player_type";
        objArr[7] = 1;
        objArr[8] = "nickname";
        objArr[9] = str2;
        objArr[10] = "nick";
        objArr[11] = str2;
        objArr[12] = "nickName";
        objArr[13] = str2;
        objArr[14] = "roleName";
        objArr[15] = str2;
        objArr[16] = "user_nickname";
        objArr[17] = str2;
        objArr[18] = "user_name";
        objArr[19] = str2;
        objArr[20] = "user_nick";
        objArr[21] = str2;
        objArr[22] = "userName";
        objArr[23] = str2;
        objArr[24] = "player_level";
        objArr[25] = Integer.valueOf(i3);
        objArr[26] = "user_level";
        objArr[27] = Integer.valueOf(i3);
        objArr[28] = "level";
        objArr[29] = Integer.valueOf(i3);
        objArr[30] = "fighting";
        objArr[31] = Integer.valueOf(i4);
        objArr[32] = "fight_point";
        objArr[33] = Integer.valueOf(i4);
        objArr[34] = "fightPoint";
        objArr[35] = Integer.valueOf(i4);
        objArr[36] = "ladder_rank";
        objArr[37] = Integer.valueOf(i2);
        objArr[38] = "general_id";
        objArr[39] = str;
        objArr[40] = "general_skin";
        objArr[41] = str;
        objArr[42] = "head";
        objArr[43] = str;
        objArr[44] = "avatar";
        objArr[45] = str;
        objArr[46] = "user_vip_level";
        objArr[47] = Integer.valueOf(i2 > 10 ? Math.max(0, i3 / 10) : 15);
        LinkedHashMap linkedHashMapZ0 = p5.z0("player_id", strA, objArr);
        Integer numValueOf = Integer.valueOf(i5);
        Integer numValueOf2 = Integer.valueOf(i5);
        Boolean bool = Boolean.FALSE;
        linkedHashMapZ0.putAll(p5.z0("user_experience", 0, "user_charge_count", 0, "current_charge_gold", 0, "count_charge_gold", 0, "user_coin", 1, "user_gold", 1, "user_power", 1, "user_power_date", 0, "user_energy", 1, "user_energy_date", 0, "gold_soul", 0, "sliver_soul", 0, "user_sign", "", "user_last_login_time", 1, "user_ability", numValueOf, "ladder_rank_salary", 0, "ladder_challenging_num", 0, "leadership_num", numValueOf2, "first_choose_general", str, "first_wine_general", str, "freshman_step", "80000", "triple_speed", bool, "triple_speed_vip_level", 0, "item_count", new LinkedHashMap(), "user_map_step", "500001", "user_position_step", 501001, "user_elite_map_step", "10501", "user_elite_position_step", "1050100101", "dungeon_cold_time", 0, "cd_item_price", 0, "base_cold_time", 0, "to_danger_time", 0, "user_honor", 0, "union_id", 0, "union_name", "", "user_role", 0, "user_donate", 0, "donate_num", 0, "donate_state", bool, "union_war_sign_up", bool));
        linkedHashMapZ0.put("rank_story_progress", Integer.valueOf((Math.max(1, Math.min(54, (int) Math.round((((double) i3) * 54.0d) / 100.0d))) * 100) + Math.floorMod(i2 * 7, 18) + 1));
        return linkedHashMapZ0;
    }

    public static void r(LinkedHashMap linkedHashMap, String str, double d2) {
        if (d2 <= 1.0E-4d) {
            return;
        }
        linkedHashMap.put("culture_attr_".concat(str), Double.valueOf(d2));
        linkedHashMap.put("cultivate_attr_".concat(str), Double.valueOf(d2));
    }

    public static double s(int i2) {
        return (1000.0d - ((double) Math.max(1, Math.min(1000, i2)))) / 999.0d;
    }

    public static long u(String str) {
        if (str == null) {
            str = "";
        }
        long jCharAt = -3750763034362895579L;
        for (int i2 = 0; i2 < str.length(); i2++) {
            jCharAt = (jCharAt ^ ((long) str.charAt(i2))) * 1099511628211L;
        }
        return jCharAt;
    }

    public static void v(Map map) {
        map.put("hp", map.get("attr_hp"));
        map.put("atk", map.get("attr_attack"));
        map.put("def", map.get("attr_defense"));
        map.put("wis", map.get("attr_wisdom"));
    }

    /* JADX WARN: Code duplicated, block: B:147:0x08f3  */
    /* JADX WARN: Code duplicated, block: B:149:0x08f9  */
    /* JADX WARN: Code duplicated, block: B:151:0x0928  */
    /* JADX WARN: Code duplicated, block: B:152:0x0932  */
    /* JADX WARN: Code duplicated, block: B:155:0x093b  */
    /* JADX WARN: Code duplicated, block: B:157:0x0941  */
    /* JADX WARN: Code duplicated, block: B:158:0x0949  */
    /* JADX WARN: Code duplicated, block: B:162:0x09f9  */
    /* JADX WARN: Code duplicated, block: B:163:0x0a03  */
    /* JADX WARN: Code duplicated, block: B:166:0x0a39  */
    public final v5 a(int i2, List list) {
        n5 n5Var;
        int i3;
        w1 w1Var;
        int i4;
        List listSubList;
        int iMax;
        ArrayList arrayList;
        int i5;
        String str;
        int i6;
        double d2;
        m5 m5Var;
        int i7;
        m5 m5Var2;
        int iMax2;
        ArrayList arrayList2;
        String str2;
        LinkedHashMap linkedHashMapZ0;
        ArrayList arrayList3;
        LinkedHashMap linkedHashMap;
        Object obj;
        int i8;
        LinkedHashMap linkedHashMap2;
        ArrayList arrayList4;
        int i9;
        ArrayList arrayList5;
        int i10;
        int i11;
        int i12;
        String str3;
        w1 w1Var2;
        double[] dArrM0;
        ArrayList arrayList6;
        int iRound;
        int i13;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        w1 w1VarA1 = w1.a1(null);
        int iJ = j(i2);
        int iMax3 = this.f1410g;
        if (iMax3 <= 0) {
            iMax3 = Math.max(2, w1VarA1.h1(iJ));
        }
        int i14 = iMax3;
        int iMax4 = Math.max(1, Math.min(i14, (i14 + 1) / 2));
        int iK = k(iJ);
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        t tVarT = t(i2, i14, iMax4, list);
        ArrayList arrayList14 = arrayList13;
        HashSet hashSet = new HashSet((Set) tVarT.f1371a);
        List list2 = (List) tVarT.f1372b;
        ArrayList arrayList15 = arrayList12;
        List list3 = (List) tVarT.f1373c;
        ArrayList arrayList16 = arrayList11;
        List list4 = (List) tVarT.f1374d;
        double dS = s(i2);
        List list5 = list4;
        ArrayList arrayList17 = arrayList10;
        int iRound2 = (int) Math.round((dS * 499000.0d * dS) + 1000.0d);
        ArrayList arrayList18 = arrayList9;
        int iMin = Math.min(10000, Math.max(1, (int) Math.round(((double) iRound2) * 0.1d)));
        if (i2 <= 10) {
            iMin = Math.min(iMin, 400);
        }
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList19 = arrayList8;
        sb.append(this.f1404a);
        sb.append("|fighting|");
        sb.append(i2);
        HashSet hashSet2 = hashSet;
        t tVar = tVarT;
        int iMax5 = Math.max(1, (((int) Math.floorMod(u(sb.toString()), (((long) iMin) * 2) + 1)) - iMin) + iRound2);
        if (i2 > 10) {
            double dS2 = s(10);
            iMax5 = Math.min(iMax5, ((int) Math.round(((499000.0d * dS2) * dS2) + 1000.0d)) - 1000);
        }
        double[] dArr = {1.15d, 1.1d, 1.05d, 0.95d, 0.9d, 0.85d};
        double[] dArr2 = new double[list2.size()];
        int iMax6 = Math.max(1, Math.min(iMax4, list2.size()));
        int i15 = 0;
        double d3 = 0.0d;
        while (i15 < iMax6) {
            ArrayList arrayList20 = arrayList7;
            int i16 = iK;
            int i17 = iMax4;
            double[] dArrM1 = w1VarA1.M0(Math.max(1, iJ * 3), 1, (String) list2.get(i15));
            double dMax = Math.max(1.0d, (dArrM1 == null || dArrM1.length <= 4) ? 1.0d : dArrM1[4]) * ((((j5) list3.get(i15)).f1087a.f1199b / 100.0d) + 1.0d) * dArr[Math.min(i15, 5)];
            dArr2[i15] = dMax;
            d3 += dMax;
            i15++;
            arrayList7 = arrayList20;
            iK = i16;
            iMax4 = i17;
            i14 = i14;
        }
        ArrayList arrayList21 = arrayList7;
        int i18 = iMax4;
        int i19 = iK;
        int i20 = i14;
        int size = list2.size();
        int[] iArr = new int[size];
        int iMax7 = Math.max(iMax6, iMax5);
        int i21 = 0;
        int i22 = 0;
        while (i21 < iMax6) {
            int iMax8 = Math.max(1, Math.min(i21 == iMax6 + (-1) ? iMax7 - i22 : (int) Math.round((((double) iMax7) * dArr2[i21]) / d3), (iMax7 - i22) - ((iMax6 - i21) - 1)));
            iArr[i21] = iMax8;
            i22 += iMax8;
            i21++;
        }
        while (iMax6 < size) {
            double[] dArrM2 = w1VarA1.M0(o(iJ, 0, iMax6), 1, (String) list2.get(iMax6));
            iArr[iMax6] = (dArrM2 == null || dArrM2.length <= 4) ? 1 : Math.max(1, (int) Math.round(dArrM2[4]));
            iMax6++;
        }
        int i23 = 0;
        int i24 = 0;
        while (true) {
            n5Var = this.f1407d;
            i3 = i20;
            if (i23 >= i3) {
                break;
            }
            String str4 = (String) list2.get(i23);
            j5 j5Var = (j5) list3.get(i23);
            int i25 = (i23 * 13) + (i2 * 97);
            int i26 = i18;
            boolean z = i23 >= i26;
            int iO = z ? o(iJ, i2, i23) : Math.max(1, iJ * 3);
            int i27 = iArr[i23];
            StringBuilder sb2 = new StringBuilder("robot_");
            sb2.append(i2);
            int[] iArr2 = iArr;
            sb2.append("_g");
            String str5 = "_g";
            int i28 = i23 + 1;
            sb2.append(i28);
            String string = sb2.toString();
            HashSet hashSet3 = hashSet2;
            String str6 = "robot_";
            t tVar2 = tVar;
            LinkedHashMap linkedHashMapF = f(w1VarA1, string, str4, iO, i27, "", "0", z);
            int i29 = i(linkedHashMapF.get("fighting"), i27);
            int i30 = i24 + i29;
            linkedHashMapF.put("robot_primary_attr_type", Integer.valueOf(j5Var.f1087a.f1198a));
            m5 m5Var3 = j5Var.f1087a;
            linkedHashMapF.put("robot_max_fate_percent", Double.valueOf(m5Var3.f1199b));
            ArrayList arrayList22 = arrayList14;
            List list6 = list2;
            int i31 = iO;
            ArrayList arrayList23 = arrayList15;
            List list7 = list3;
            List list8 = list5;
            ArrayList arrayList24 = arrayList16;
            m5 m5Var4 = m5Var3;
            ArrayList arrayList25 = arrayList18;
            int i32 = i28;
            ArrayList arrayList26 = arrayList19;
            int i33 = iJ;
            ArrayList arrayList27 = arrayList21;
            String str7 = "pk_id";
            j5 j5Var2 = j5Var;
            Object obj2 = "general_pk_id";
            LinkedHashMap linkedHashMapN = n(w1VarA1, string, str4, i31, j5Var.f1093g, i25);
            ArrayList arrayList28 = new ArrayList();
            arrayList28.add(linkedHashMapN);
            arrayList25.add(linkedHashMapN);
            String strP = j5Var2.f1088b;
            if (!n5Var.m(strP)) {
                strP = n5.p(i2 + i23, (List) n5Var.f1226c.get(Integer.valueOf(j5Var2.f1089c)), Collections.emptySet());
            }
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            StringBuilder sb3 = new StringBuilder();
            String str8 = string;
            sb3.append(str8);
            sb3.append("_fate");
            linkedHashMap5.put(str7, sb3.toString());
            linkedHashMap5.put(obj2, str8);
            linkedHashMap5.put("skill_id", strP);
            linkedHashMap5.put("id", strP);
            linkedHashMap5.put("position", "2");
            linkedHashMap5.put("pos", "2");
            linkedHashMap5.put("skill_position", "2");
            linkedHashMap5.put("level", Integer.valueOf(Math.min(30, Math.max(1, i31))));
            linkedHashMap5.put("skill_level", Integer.valueOf(Math.min(30, Math.max(1, i31))));
            String str9 = "card_type";
            linkedHashMap5.put("card_type", "4");
            linkedHashMap5.put("is_natural", Boolean.FALSE);
            linkedHashMap5.put("get_time", "1");
            linkedHashMap5.put("exp", "0");
            linkedHashMap5.put("extra_level", "0");
            linkedHashMap5.put("advanced_level", "0");
            w1VarA1.S(strP, linkedHashMap5);
            linkedHashMap5.put("skill_type", Integer.valueOf(j5Var2.f1089c));
            arrayList28.add(linkedHashMap5);
            arrayList25.add(linkedHashMap5);
            Object obj3 = "general_naturalskill_id";
            linkedHashMapF.put(obj3, linkedHashMapN.get(str7));
            Object obj4 = "gSkill";
            linkedHashMapF.put(obj4, arrayList28);
            Object obj5 = "general_skills";
            linkedHashMapF.put(obj5, arrayList28);
            if (z) {
                arrayList = new ArrayList();
                obj4 = obj4;
                j5Var2 = j5Var2;
                i5 = i33;
                obj5 = obj5;
            } else {
                int i34 = i33;
                if (i34 < 20) {
                    iMax = 0;
                } else {
                    double dS3 = s(i2);
                    int iFloor = (int) Math.floor((((double) d(i2, i23, 23, -1, 1)) * 0.35d) + (((1.8d * dS3) + ((Math.max(0.0d, Math.min(1.0d, ((double) (i34 - 20)) / 80.0d)) * 1.4d) + 1.0d)) - (((double) i23) * 0.25d)));
                    if (i34 >= 90 && dS3 >= 0.95d && i23 < 3) {
                        iFloor = 4;
                    }
                    iMax = Math.max(0, Math.min(4, iFloor));
                }
                if (iMax <= 0) {
                    arrayList = new ArrayList();
                    i5 = i34;
                } else {
                    int iMax9 = Math.max(1, i34 * 3);
                    double dS4 = s(i2);
                    obj3 = obj3;
                    arrayList25 = arrayList25;
                    double d4 = i23;
                    double d5 = d4;
                    int iRound3 = ((int) Math.round(((double) iMax9) * (((0.55d * dS4) + 0.35d) - (0.035d * d4)))) + d(i2, i23, 31, -12, 12);
                    if (i34 >= 90 && dS4 >= 0.98d && i23 == 0) {
                        iRound3 = iMax9;
                    }
                    int iMax10 = Math.max(1, Math.min(iMax9, iRound3));
                    String[] strArr = com.sgscq.vpn.handler.p0.f955a;
                    ArrayList arrayListP = com.sgscq.vpn.handler.p0.p(0, Math.max(0, i32 - 1), Math.max(1, iMax10), 100, str4, str8);
                    arrayList = arrayListP.size() > iMax ? new ArrayList(arrayListP.subList(0, iMax)) : arrayListP;
                    Iterator it = arrayList.iterator();
                    int i35 = i2;
                    int i36 = i23;
                    while (it.hasNext()) {
                        Map map = (Map) it.next();
                        Iterator it2 = it;
                        String strJ = c.a.j(map, "equipment_type", "1", "equipment_pos");
                        ArrayList arrayList29 = arrayList;
                        w1 w1Var3 = w1VarA1;
                        String str10 = str6;
                        StringBuilder sb4 = new StringBuilder(str10);
                        sb4.append(i35);
                        String str11 = strP;
                        sb4.append("_eq_");
                        int i37 = i32;
                        sb4.append(i37);
                        String str12 = str8;
                        sb4.append("_");
                        sb4.append(strJ);
                        map.put(str7, sb4.toString());
                        StringBuilder sb5 = new StringBuilder(str10);
                        sb5.append(i35);
                        String str13 = str5;
                        sb5.append(str13);
                        sb5.append(i37);
                        map.put(obj2, sb5.toString());
                        Object obj6 = obj2;
                        map.put("general_id", str10 + i35 + str13 + i37);
                        map.put("user_general_id", str10 + i35 + str13 + i37);
                        map.put(str9, "3");
                        map.put("get_time", "1");
                        map.put("exp", "0");
                        String strValueOf = String.valueOf(map.get("refine_bonus_type"));
                        if ("shangshen_jinglian_up".equals(strValueOf) || "zhongshen_jinglian_up".equals(strValueOf) || "xiashen_jinglian_up".equals(strValueOf)) {
                            i6 = 11;
                        } else if ("shangjin_jinglian_up".equals(strValueOf) || "xiajin_jinglian_up".equals(strValueOf) || "liejin_jinglian_up".equals(strValueOf) || "zhongjin_jinglian_up".equals(strValueOf)) {
                            i6 = 8;
                        } else if ("zhongyin_jinglian_up".equals(strValueOf)) {
                            i6 = 3;
                        } else if ("xiayin_jinglian_up".equals(strValueOf)) {
                            i6 = 2;
                        } else if ("shangyin_jinglian_up".equals(strValueOf)) {
                            i6 = 4;
                        } else {
                            "tong_jinglian_up".equals(strValueOf);
                            i6 = 1;
                        }
                        if (i6 <= 0) {
                            i6 = 1;
                        }
                        str5 = str13;
                        String str14 = str9;
                        map.put("refine_level", Integer.valueOf(Math.max(1, Math.min(i6, ((int) Math.round(((double) i6) * (i34 < 30 ? 0.0d : (((((double) i34) / 100.0d) * 0.18d) + ((s(i2) * 0.58d) + 0.18d)) - (0.04d * d5)))) + d(i35, i36, i(map.get("equipment_pos"), 1), -1, 1)))));
                        if (i34 < 40) {
                            i7 = i34;
                            i36 = i36;
                            m5Var = m5Var4;
                            d2 = d5;
                        } else {
                            int iMax11 = Math.max(1, Math.min(4, w1.l2(String.valueOf(map.getOrDefault("equipment_pos", map.getOrDefault("equipment_type", "1"))), 1)));
                            double d6 = ((double) (i34 - 40)) / 60.0d;
                            d2 = d5;
                            int i38 = i34;
                            int i39 = 1;
                            int iMax12 = Math.max(1, Math.min(5, (int) Math.floor((((double) d(i2, i23, iMax11, -1, 1)) * 0.25d) + (((Math.max(0.0d, Math.min(1.0d, d6)) * 1.4d) + ((s(i2) * 2.7d) + 1.0d)) - (d5 * 0.25d)))));
                            ArrayList arrayList30 = new ArrayList();
                            int i40 = 1;
                            while (i39 <= iMax12) {
                                if (iMax11 == 3) {
                                    iMax2 = 3;
                                    m5Var2 = m5Var4;
                                } else {
                                    m5Var2 = m5Var4;
                                    iMax2 = Math.max(i40, Math.min(4, m5Var2.f1198a));
                                }
                                double dS5 = s(i2);
                                int iFloorMod = Math.floorMod((i39 * 7) + (iMax11 * 5) + (i23 * 11) + (i2 * 37), 100);
                                if (dS5 >= 0.85d) {
                                    if (iFloorMod >= 85) {
                                        iMax2 = 3;
                                    }
                                } else if (iFloorMod >= 55) {
                                    iMax2 = Math.floorMod(i2 + i23 + iMax11 + i39, 4) + 1;
                                }
                                double dS6 = s(i2);
                                m5 m5Var5 = m5Var2;
                                double d7 = d6;
                                int iRound4 = (int) Math.round((((Math.max(0.0d, Math.min(1.0d, d6)) * 2.2d) + ((5.5d * dS6) + 1.0d)) - (d2 * 0.35d)) + ((double) d(i2, i23, i39, -1, 1)));
                                int i41 = i38;
                                if (i41 >= 90 && dS6 >= 0.98d && i23 == 0) {
                                    iRound4 = Math.max(iRound4, 8);
                                }
                                int iMax13 = Math.max(1, Math.min(9, iRound4));
                                String str15 = "60" + iMax2 + "00" + iMax13;
                                String str16 = str10 + i2 + "_gem_" + i37 + "_" + iMax11 + "_" + iMax2 + "_" + iMax13 + "_" + i39;
                                arrayList30.add(p5.z0("bore_id", String.valueOf(i39), "bore_type", String.valueOf(iMax2), "user_gem_id", str16, "gem_id", str15, "is_lock", 0));
                                arrayList24.add(p5.z0(str7, str16, "id", str15, "gem_id", str15, "level", Integer.valueOf(iMax13), "gem_level", Integer.valueOf(iMax13), "type", Integer.valueOf(iMax2), "num", 1, "total_num", 1, "used_num", 1, "card_type", "5", "get_time", "1", "exp", "0"));
                                i39++;
                                i38 = i41;
                                iMax12 = iMax12;
                                d6 = d7;
                                m5Var4 = m5Var5;
                                i40 = 1;
                                iMax11 = iMax11;
                            }
                            m5Var = m5Var4;
                            i7 = i38;
                            map.put("bore_list", arrayList30);
                            i36 = i23;
                            i35 = i2;
                        }
                        str6 = str10;
                        i34 = i7;
                        arrayList24 = arrayList24;
                        it = it2;
                        arrayList = arrayList29;
                        obj2 = obj6;
                        d5 = d2;
                        str9 = str14;
                        str8 = str12;
                        w1VarA1 = w1Var3;
                        m5Var4 = m5Var;
                        i32 = i37;
                        strP = str11;
                    }
                    i5 = i34;
                    strP = strP;
                    w1VarA1 = w1VarA1;
                    m5Var4 = m5Var4;
                    arrayList24 = arrayList24;
                    i32 = i32;
                    str = str8;
                    linkedHashMapF = linkedHashMapF;
                }
                com.sgscq.vpn.handler.p0.j(arrayList, linkedHashMapF);
                arrayList2 = arrayList17;
                arrayList2.addAll(arrayList);
                arrayList27.add(linkedHashMapF);
                str2 = str;
                linkedHashMapZ0 = p5.z0(str7, str2, "general_id", str4, "general_pk_id", str, "position", String.valueOf(i32), "general_position", String.valueOf(i32), "general_fighting", Integer.valueOf(i29), "general_hp", linkedHashMapF.get("hp"), "general_attack", linkedHashMapF.get("atk"), "general_defense", linkedHashMapF.get("def"), "general_wisdom", linkedHashMapF.get("wis"));
                com.sgscq.vpn.handler.p0.j(arrayList, linkedHashMapZ0);
                arrayList3 = arrayList26;
                arrayList3.add(linkedHashMapZ0);
                linkedHashMap = new LinkedHashMap(linkedHashMapF);
                linkedHashMap.put("fate_skill_id", strP);
                obj = "bound_lieutenants";
                linkedHashMap.put(obj, new ArrayList());
                if (i19 > 0) {
                    i11 = 1;
                    i12 = i19;
                    while (i11 <= i12) {
                        int i42 = i11 - 1;
                        int i43 = i12;
                        j5 j5Var3 = j5Var2;
                        str3 = (String) j5Var3.f1090d.get(i42);
                        int i44 = i5;
                        HashSet hashSet4 = hashSet3;
                        hashSet4.add(str3);
                        Object obj7 = obj;
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(str2);
                        int i45 = i32;
                        sb6.append("_lt");
                        sb6.append(i11);
                        String string2 = sb6.toString();
                        if (z) {
                            w1Var2 = w1VarA1;
                            dArrM0 = w1Var2.M0(1, 1, str3);
                        } else {
                            w1Var2 = w1VarA1;
                            dArrM0 = null;
                        }
                        LinkedHashMap linkedHashMap6 = linkedHashMap;
                        if (dArrM0 != null) {
                            arrayList6 = arrayList3;
                            if (dArrM0.length > 4) {
                                iRound = (int) Math.round(dArrM0[4]);
                            }
                            ArrayList arrayList31 = arrayList2;
                            String str17 = str7;
                            Object obj8 = obj4;
                            m5 m5Var6 = m5Var4;
                            LinkedHashMap linkedHashMapF2 = f(w1Var2, string2, str3, i31, Math.max(1, iRound), str2, String.valueOf(i11), z);
                            linkedHashMapF2.put("lieutenant_skill_id", m5Var6.f1200c);
                            linkedHashMapF2.put("skill_type_lieutenant", m5Var6.f1200c);
                            linkedHashMapF2.put("ls_type", String.valueOf(m5Var6.f1198a));
                            i13 = i11;
                            w1VarA1 = w1Var2;
                            Object obj9 = obj5;
                            String str18 = str2;
                            hashSet3 = hashSet4;
                            linkedHashMap3 = linkedHashMapZ0;
                            Object obj10 = obj3;
                            int i46 = i31;
                            ArrayList arrayList32 = arrayList6;
                            LinkedHashMap linkedHashMapN2 = n(w1Var2, string2, str3, i31, ((Integer) j5Var3.f1091e.get(i42)).intValue(), (i11 * 71) + i25);
                            linkedHashMapF2.put(obj10, linkedHashMapN2.get(str17));
                            linkedHashMapF2.put(obj8, p5.v0(linkedHashMapN2));
                            linkedHashMapF2.put(obj9, p5.v0(linkedHashMapN2));
                            arrayList27.add(linkedHashMapF2);
                            ArrayList arrayList33 = arrayList25;
                            arrayList33.add(linkedHashMapN2);
                            ((List) linkedHashMap6.get(obj7)).add(linkedHashMapF2);
                            if (i13 == 1) {
                                linkedHashMap4 = linkedHashMap3;
                                linkedHashMap4.put("deputy_general_id", str3);
                            } else {
                                linkedHashMap4 = linkedHashMap3;
                            }
                            i11 = i13 + 1;
                            arrayList25 = arrayList33;
                            obj = obj7;
                            linkedHashMap = linkedHashMap6;
                            obj3 = obj10;
                            i32 = i45;
                            j5Var2 = j5Var3;
                            i31 = i46;
                            arrayList2 = arrayList31;
                            arrayList3 = arrayList32;
                            arrayList24 = arrayList24;
                            linkedHashMapZ0 = linkedHashMap4;
                            str7 = str17;
                            obj5 = obj9;
                            i12 = i43;
                            str2 = str18;
                            obj4 = obj8;
                            i5 = i44;
                        } else {
                            arrayList6 = arrayList3;
                        }
                        iRound = i29 / 3;
                        ArrayList arrayList34 = arrayList2;
                        String str19 = str7;
                        Object obj11 = obj4;
                        m5 m5Var7 = m5Var4;
                        LinkedHashMap linkedHashMapF3 = f(w1Var2, string2, str3, i31, Math.max(1, iRound), str2, String.valueOf(i11), z);
                        linkedHashMapF3.put("lieutenant_skill_id", m5Var7.f1200c);
                        linkedHashMapF3.put("skill_type_lieutenant", m5Var7.f1200c);
                        linkedHashMapF3.put("ls_type", String.valueOf(m5Var7.f1198a));
                        i13 = i11;
                        w1VarA1 = w1Var2;
                        Object obj12 = obj5;
                        String str110 = str2;
                        hashSet3 = hashSet4;
                        linkedHashMap3 = linkedHashMapZ0;
                        Object obj13 = obj3;
                        int i47 = i31;
                        ArrayList arrayList35 = arrayList6;
                        LinkedHashMap linkedHashMapN3 = n(w1Var2, string2, str3, i31, ((Integer) j5Var3.f1091e.get(i42)).intValue(), (i11 * 71) + i25);
                        linkedHashMapF3.put(obj13, linkedHashMapN3.get(str19));
                        linkedHashMapF3.put(obj11, p5.v0(linkedHashMapN3));
                        linkedHashMapF3.put(obj12, p5.v0(linkedHashMapN3));
                        arrayList27.add(linkedHashMapF3);
                        ArrayList arrayList36 = arrayList25;
                        arrayList36.add(linkedHashMapN3);
                        ((List) linkedHashMap6.get(obj7)).add(linkedHashMapF3);
                        if (i13 == 1) {
                            linkedHashMap4 = linkedHashMap3;
                            linkedHashMap4.put("deputy_general_id", str3);
                        } else {
                            linkedHashMap4 = linkedHashMap3;
                        }
                        i11 = i13 + 1;
                        arrayList25 = arrayList36;
                        obj = obj7;
                        linkedHashMap = linkedHashMap6;
                        obj3 = obj13;
                        i32 = i45;
                        j5Var2 = j5Var3;
                        i31 = i47;
                        arrayList2 = arrayList34;
                        arrayList3 = arrayList35;
                        arrayList24 = arrayList24;
                        linkedHashMapZ0 = linkedHashMap4;
                        str7 = str19;
                        obj5 = obj12;
                        i12 = i43;
                        str2 = str110;
                        obj4 = obj11;
                        i5 = i44;
                    }
                    i9 = i12;
                    i8 = i32;
                    linkedHashMap2 = linkedHashMap;
                    arrayList19 = arrayList3;
                    arrayList17 = arrayList2;
                    i10 = i5;
                    arrayList4 = arrayList24;
                    arrayList5 = arrayList25;
                } else {
                    i8 = i32;
                    linkedHashMap2 = linkedHashMap;
                    arrayList19 = arrayList3;
                    arrayList17 = arrayList2;
                    arrayList4 = arrayList24;
                    i9 = i19;
                    arrayList5 = arrayList25;
                    i10 = i5;
                }
                arrayList22.add(linkedHashMap2);
                list2 = list6;
                list3 = list7;
                i18 = i26;
                i20 = i3;
                iJ = i10;
                hashSet2 = hashSet3;
                tVar = tVar2;
                i24 = i30;
                arrayList15 = arrayList23;
                list5 = list8;
                arrayList16 = arrayList4;
                w1VarA1 = w1VarA1;
                arrayList18 = arrayList5;
                arrayList14 = arrayList22;
                arrayList21 = arrayList27;
                i19 = i9;
                i23 = i8;
                iArr = iArr2;
            }
            str = str8;
            com.sgscq.vpn.handler.p0.j(arrayList, linkedHashMapF);
            arrayList2 = arrayList17;
            arrayList2.addAll(arrayList);
            arrayList27.add(linkedHashMapF);
            str2 = str;
            linkedHashMapZ0 = p5.z0(str7, str2, "general_id", str4, "general_pk_id", str, "position", String.valueOf(i32), "general_position", String.valueOf(i32), "general_fighting", Integer.valueOf(i29), "general_hp", linkedHashMapF.get("hp"), "general_attack", linkedHashMapF.get("atk"), "general_defense", linkedHashMapF.get("def"), "general_wisdom", linkedHashMapF.get("wis"));
            com.sgscq.vpn.handler.p0.j(arrayList, linkedHashMapZ0);
            arrayList3 = arrayList26;
            arrayList3.add(linkedHashMapZ0);
            linkedHashMap = new LinkedHashMap(linkedHashMapF);
            linkedHashMap.put("fate_skill_id", strP);
            obj = "bound_lieutenants";
            linkedHashMap.put(obj, new ArrayList());
            if (i19 > 0) {
                i11 = 1;
                i12 = i19;
                while (i11 <= i12) {
                    int i48 = i11 - 1;
                    int i49 = i12;
                    j5 j5Var4 = j5Var2;
                    str3 = (String) j5Var4.f1090d.get(i48);
                    int i410 = i5;
                    HashSet hashSet5 = hashSet3;
                    hashSet5.add(str3);
                    Object obj14 = obj;
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(str2);
                    int i411 = i32;
                    sb7.append("_lt");
                    sb7.append(i11);
                    String string3 = sb7.toString();
                    if (z) {
                        w1Var2 = w1VarA1;
                        dArrM0 = w1Var2.M0(1, 1, str3);
                    } else {
                        w1Var2 = w1VarA1;
                        dArrM0 = null;
                    }
                    LinkedHashMap linkedHashMap7 = linkedHashMap;
                    if (dArrM0 != null) {
                        arrayList6 = arrayList3;
                        if (dArrM0.length > 4) {
                            iRound = (int) Math.round(dArrM0[4]);
                        }
                        ArrayList arrayList37 = arrayList2;
                        String str111 = str7;
                        Object obj15 = obj4;
                        m5 m5Var8 = m5Var4;
                        LinkedHashMap linkedHashMapF4 = f(w1Var2, string3, str3, i31, Math.max(1, iRound), str2, String.valueOf(i11), z);
                        linkedHashMapF4.put("lieutenant_skill_id", m5Var8.f1200c);
                        linkedHashMapF4.put("skill_type_lieutenant", m5Var8.f1200c);
                        linkedHashMapF4.put("ls_type", String.valueOf(m5Var8.f1198a));
                        i13 = i11;
                        w1VarA1 = w1Var2;
                        Object obj16 = obj5;
                        String str112 = str2;
                        hashSet3 = hashSet5;
                        linkedHashMap3 = linkedHashMapZ0;
                        Object obj17 = obj3;
                        int i412 = i31;
                        ArrayList arrayList38 = arrayList6;
                        LinkedHashMap linkedHashMapN4 = n(w1Var2, string3, str3, i31, ((Integer) j5Var4.f1091e.get(i48)).intValue(), (i11 * 71) + i25);
                        linkedHashMapF4.put(obj17, linkedHashMapN4.get(str111));
                        linkedHashMapF4.put(obj15, p5.v0(linkedHashMapN4));
                        linkedHashMapF4.put(obj16, p5.v0(linkedHashMapN4));
                        arrayList27.add(linkedHashMapF4);
                        ArrayList arrayList39 = arrayList25;
                        arrayList39.add(linkedHashMapN4);
                        ((List) linkedHashMap7.get(obj14)).add(linkedHashMapF4);
                        if (i13 == 1) {
                            linkedHashMap4 = linkedHashMap3;
                            linkedHashMap4.put("deputy_general_id", str3);
                        } else {
                            linkedHashMap4 = linkedHashMap3;
                        }
                        i11 = i13 + 1;
                        arrayList25 = arrayList39;
                        obj = obj14;
                        linkedHashMap = linkedHashMap7;
                        obj3 = obj17;
                        i32 = i411;
                        j5Var2 = j5Var4;
                        i31 = i412;
                        arrayList2 = arrayList37;
                        arrayList3 = arrayList38;
                        arrayList24 = arrayList24;
                        linkedHashMapZ0 = linkedHashMap4;
                        str7 = str111;
                        obj5 = obj16;
                        i12 = i49;
                        str2 = str112;
                        obj4 = obj15;
                        i5 = i410;
                    } else {
                        arrayList6 = arrayList3;
                    }
                    iRound = i29 / 3;
                    ArrayList arrayList310 = arrayList2;
                    String str113 = str7;
                    Object obj18 = obj4;
                    m5 m5Var9 = m5Var4;
                    LinkedHashMap linkedHashMapF5 = f(w1Var2, string3, str3, i31, Math.max(1, iRound), str2, String.valueOf(i11), z);
                    linkedHashMapF5.put("lieutenant_skill_id", m5Var9.f1200c);
                    linkedHashMapF5.put("skill_type_lieutenant", m5Var9.f1200c);
                    linkedHashMapF5.put("ls_type", String.valueOf(m5Var9.f1198a));
                    i13 = i11;
                    w1VarA1 = w1Var2;
                    Object obj19 = obj5;
                    String str114 = str2;
                    hashSet3 = hashSet5;
                    linkedHashMap3 = linkedHashMapZ0;
                    Object obj110 = obj3;
                    int i413 = i31;
                    ArrayList arrayList311 = arrayList6;
                    LinkedHashMap linkedHashMapN5 = n(w1Var2, string3, str3, i31, ((Integer) j5Var4.f1091e.get(i48)).intValue(), (i11 * 71) + i25);
                    linkedHashMapF5.put(obj110, linkedHashMapN5.get(str113));
                    linkedHashMapF5.put(obj18, p5.v0(linkedHashMapN5));
                    linkedHashMapF5.put(obj19, p5.v0(linkedHashMapN5));
                    arrayList27.add(linkedHashMapF5);
                    ArrayList arrayList312 = arrayList25;
                    arrayList312.add(linkedHashMapN5);
                    ((List) linkedHashMap7.get(obj14)).add(linkedHashMapF5);
                    if (i13 == 1) {
                        linkedHashMap4 = linkedHashMap3;
                        linkedHashMap4.put("deputy_general_id", str3);
                    } else {
                        linkedHashMap4 = linkedHashMap3;
                    }
                    i11 = i13 + 1;
                    arrayList25 = arrayList312;
                    obj = obj14;
                    linkedHashMap = linkedHashMap7;
                    obj3 = obj110;
                    i32 = i411;
                    j5Var2 = j5Var4;
                    i31 = i413;
                    arrayList2 = arrayList310;
                    arrayList3 = arrayList311;
                    arrayList24 = arrayList24;
                    linkedHashMapZ0 = linkedHashMap4;
                    str7 = str113;
                    obj5 = obj19;
                    i12 = i49;
                    str2 = str114;
                    obj4 = obj18;
                    i5 = i410;
                }
                i9 = i12;
                i8 = i32;
                linkedHashMap2 = linkedHashMap;
                arrayList19 = arrayList3;
                arrayList17 = arrayList2;
                i10 = i5;
                arrayList4 = arrayList24;
                arrayList5 = arrayList25;
            } else {
                i8 = i32;
                linkedHashMap2 = linkedHashMap;
                arrayList19 = arrayList3;
                arrayList17 = arrayList2;
                arrayList4 = arrayList24;
                i9 = i19;
                arrayList5 = arrayList25;
                i10 = i5;
            }
            arrayList22.add(linkedHashMap2);
            list2 = list6;
            list3 = list7;
            i18 = i26;
            i20 = i3;
            iJ = i10;
            hashSet2 = hashSet3;
            tVar = tVar2;
            i24 = i30;
            arrayList15 = arrayList23;
            list5 = list8;
            arrayList16 = arrayList4;
            w1VarA1 = w1VarA1;
            arrayList18 = arrayList5;
            arrayList14 = arrayList22;
            arrayList21 = arrayList27;
            i19 = i9;
            i23 = i8;
            iArr = iArr2;
        }
        List list9 = list5;
        w1 w1Var4 = w1VarA1;
        int i50 = i24;
        int i51 = iJ;
        Object obj20 = "bound_lieutenants";
        HashSet hashSet6 = hashSet2;
        ArrayList arrayList40 = arrayList14;
        ArrayList arrayList41 = arrayList15;
        ArrayList arrayList42 = arrayList16;
        ArrayList<Map> arrayList43 = arrayList21;
        Object obj21 = "position";
        Object obj22 = "general_skills";
        ArrayList arrayList44 = arrayList18;
        Object obj23 = "general_naturalskill_id";
        String str20 = "robot_";
        n5 n5Var2 = n5Var;
        Set setEmptySet = (Set) tVar.f1375e;
        HashSet hashSet7 = new HashSet();
        hashSet7.addAll(hashSet6);
        if (setEmptySet == null) {
            setEmptySet = Collections.emptySet();
        }
        ArrayList arrayList45 = new ArrayList();
        if (list9 != null) {
            arrayList45.addAll(list9);
        }
        arrayList45.sort(new q5(setEmptySet, hashSet7, 0));
        ArrayList arrayList46 = new ArrayList();
        int iMax14 = Math.max(0, 24);
        Iterator it3 = arrayList45.iterator();
        while (it3.hasNext()) {
            k5 k5Var = (k5) it3.next();
            Iterator it4 = it3;
            ArrayList arrayListL = l(k5Var, hashSet7);
            ArrayList arrayList47 = arrayList44;
            int size2 = iMax14 - arrayList46.size();
            if (arrayListL.isEmpty() || size2 <= 0) {
                i4 = iMax14;
            } else {
                i4 = iMax14;
                if (arrayListL.size() <= size2) {
                    listSubList = arrayListL;
                    arrayList46.addAll(listSubList);
                    hashSet7.addAll(listSubList);
                } else if (k5Var.f1115d) {
                    listSubList = arrayListL;
                    listSubList = arrayListL.subList(0, size2);
                    listSubList = arrayListL;
                    arrayList46.addAll(listSubList);
                    hashSet7.addAll(listSubList);
                } else {
                    listSubList = arrayListL;
                }
            }
            it3 = it4;
            iMax14 = i4;
            arrayList44 = arrayList47;
        }
        ArrayList arrayList48 = arrayList44;
        List listUnmodifiableList = Collections.unmodifiableList(arrayList46);
        int i52 = 0;
        while (i52 < listUnmodifiableList.size()) {
            String str21 = (String) listUnmodifiableList.get(i52);
            StringBuilder sb8 = new StringBuilder(str20);
            sb8.append(i2);
            sb8.append("_b");
            int i53 = i52 + 1;
            sb8.append(i53);
            String string4 = sb8.toString();
            String str22 = str20;
            Object obj24 = obj23;
            LinkedHashMap linkedHashMapF6 = f(w1Var4, string4, str21, i51, Math.max(1, i50 / Math.max(8, i3 * 8)), "", "0", false);
            obj22 = obj22;
            Object obj25 = obj21;
            LinkedHashMap linkedHashMapN6 = n(w1Var4, string4, str21, i51, n5Var2.o(str21), (i52 * 17) + (i2 * 131));
            linkedHashMapF6.put(obj24, linkedHashMapN6.get("pk_id"));
            linkedHashMapF6.put("gSkill", p5.v0(linkedHashMapN6));
            linkedHashMapF6.put(obj22, p5.v0(linkedHashMapN6));
            arrayList43.add(linkedHashMapF6);
            arrayList48.add(linkedHashMapN6);
            arrayList41.add(p5.z0("pk_id", string4, "general_pk_id", string4, obj25, String.valueOf(i53)));
            hashSet6.add(str21);
            obj21 = obj25;
            n5Var2 = n5Var2;
            listUnmodifiableList = listUnmodifiableList;
            i52 = i53;
            arrayList40 = arrayList40;
            str20 = str22;
            obj23 = obj24;
            obj20 = obj20;
        }
        String str23 = str20;
        ArrayList<Map> arrayList49 = arrayList40;
        Object obj26 = obj20;
        ArrayList arrayListC0 = com.sgscq.vpn.cloud.m0.c0();
        LinkedHashMap linkedHashMap8 = new LinkedHashMap();
        linkedHashMap8.put("General", m(arrayList43));
        linkedHashMap8.put("TeamGeneral", m(arrayList19));
        linkedHashMap8.put("Skill", m(arrayList48));
        linkedHashMap8.put("Equipment", m(arrayList17));
        linkedHashMap8.put("Gem", m(arrayList42));
        linkedHashMap8.put("Combat", m(arrayListC0));
        linkedHashMap8.put("BuddyGeneral", m(arrayList41));
        for (Map map2 : arrayList43) {
            String strValueOf2 = String.valueOf(map2.getOrDefault("pk_id", ""));
            if (strValueOf2.isEmpty()) {
                w1Var = w1Var4;
            } else {
                w1Var = w1Var4;
                w1Var.F2(strValueOf2, linkedHashMap8);
            }
            v(map2);
            w1Var4 = w1Var;
        }
        LinkedHashMap linkedHashMap9 = new LinkedHashMap();
        for (Map map3 : arrayList43) {
            linkedHashMap9.put(String.valueOf(map3.get("pk_id")), map3);
        }
        for (Map map4 : arrayList49) {
            Map map5 = (Map) linkedHashMap9.get(String.valueOf(map4.get("pk_id")));
            if (map5 != null) {
                c(map5, map4);
            }
            Object obj27 = obj26;
            for (Map map6 : (List) map4.get(obj27)) {
                Map map7 = (Map) linkedHashMap9.get(String.valueOf(map6.get("pk_id")));
                if (map7 != null) {
                    c(map7, map6);
                }
            }
            obj26 = obj27;
        }
        Iterator it5 = arrayList49.iterator();
        int i54 = 0;
        while (it5.hasNext()) {
            i54 += i(((Map) it5.next()).get("fighting"), 0);
        }
        String strA = a.b0.a(str23, i2);
        List list10 = this.f1405b;
        String str24 = (String) list10.get((i2 - 1) % list10.size());
        return new v5(strA, str24, i51, i54, i2, false, "", q(i2, i51, i54, i3, String.valueOf(((Map) arrayList49.get(0)).get("general_id")), str24), arrayList43, arrayList19, arrayList48, arrayList17, arrayList42, arrayListC0, arrayList41, arrayList49);
    }

    public final v5 b(int i2) {
        w1 w1VarA1 = w1.a1(null);
        int iJ = j(i2);
        int i3 = this.f1410g;
        int iMax = i3 > 0 ? i3 : Math.max(2, w1VarA1.h1(iJ));
        int iMax2 = Math.max(1, Math.min(iMax, (iMax + 1) / 2));
        int iK = k(iJ);
        List list = (List) t(i2, iMax, iMax2, Collections.emptyList()).f1372b;
        v5 v5VarA = a(i2, list);
        int i4 = v5VarA.f1462d;
        String strA = a.b0.a("robot_", i2);
        List list2 = this.f1405b;
        String str = (String) list2.get((i2 - 1) % list2.size());
        String str2 = (String) list.get(0);
        LinkedHashMap linkedHashMapQ = q(i2, iJ, i4, iMax, str2, str);
        linkedHashMapQ.put("max_general_fighting", Integer.valueOf(v5VarA.o()));
        return v5.n(strA, str, iJ, i4, i2, linkedHashMapQ, str2, list, iMax, iK * iMax, this.f1413j);
    }

    public final int k(int i2) {
        int iMax = Math.max(1, i2);
        List list = this.f1411h;
        if (!list.isEmpty()) {
            return Math.max(0, Math.min(2, w1.l2(String.valueOf(((Map) list.get(Math.min(iMax - 1, list.size() - 1))).get("lieutenant_num")), 0)));
        }
        if (iMax >= 20) {
            return 2;
        }
        return iMax >= 10 ? 1 : 0;
    }

    public final LinkedHashMap n(w1 w1Var, String str, String str2, int i2, int i3, int i4) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String strT0 = w1Var.T0(str2);
        Map mapK1 = w1Var.k1(strT0);
        int iE = mapK1 != null ? c.a.e(mapK1, "skill_type", 0) : 0;
        if (i3 < 1 || i3 > 4) {
            i3 = 1;
        }
        n5 n5Var = this.f1407d;
        if (iE != i3 || !n5.n(n5Var.f1224a.k1(strT0))) {
            strT0 = n5.p(i4, (List) n5Var.f1226c.get(Integer.valueOf(i3)), Collections.emptySet());
        }
        linkedHashMap.put("pk_id", str);
        linkedHashMap.put("general_pk_id", str);
        linkedHashMap.put("skill_id", strT0);
        linkedHashMap.put("id", strT0);
        linkedHashMap.put("position", "1");
        linkedHashMap.put("pos", "1");
        linkedHashMap.put("skill_position", "1");
        linkedHashMap.put("level", Integer.valueOf(Math.min(30, Math.max(1, i2))));
        linkedHashMap.put("skill_level", Integer.valueOf(Math.min(30, Math.max(1, i2))));
        linkedHashMap.put("card_type", "4");
        linkedHashMap.put("get_time", "1");
        linkedHashMap.put("exp", "0");
        linkedHashMap.put("extra_level", "0");
        linkedHashMap.put("advanced_level", "0");
        linkedHashMap.put("is_natural", Boolean.TRUE);
        w1Var.S(strT0, linkedHashMap);
        linkedHashMap.put("skill_type", Integer.valueOf(i3));
        return linkedHashMap;
    }

    public final a7 p(int i2, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(arrayList);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(linkedHashSet);
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            String str = (String) arrayList.get(i3);
            int i4 = (i3 * 131) + i2;
            HashSet hashSet = new HashSet(linkedHashSet);
            n5 n5Var = this.f1407d;
            j5 j5VarD = n5Var.d(str, i4, hashSet);
            if (!j5VarD.a()) {
                ArrayList arrayListC = n5Var.c(str, i4, new HashSet(linkedHashSet));
                if (arrayListC.isEmpty()) {
                    return null;
                }
                j5VarD = (j5) arrayListC.get(0);
            }
            arrayList2.add(j5VarD);
            linkedHashSet2.addAll(j5VarD.f1090d);
        }
        return new a7(linkedHashSet2, arrayList2);
    }

    /* JADX WARN: Code duplicated, block: B:265:0x044a A[SYNTHETIC] */
    public final t t(int i2, int i3, int i4, List list) {
        String str;
        n5 n5Var;
        n5 n5Var2;
        int i5;
        int i6;
        List<String> list2;
        List arrayList;
        a7 a7VarP;
        w1 w1Var;
        int i7;
        ArrayList arrayList2;
        i5 i5Var;
        List list3;
        List list4;
        a7 a7Var;
        List list5;
        String str2;
        ArrayList arrayList3;
        String str3;
        String str4;
        List list6;
        w1 w1Var2;
        int i8;
        ArrayList arrayList4;
        l5 l5Var;
        String str5;
        t5 t5Var = this;
        int i9 = i2;
        int i10 = i3;
        int i11 = i4;
        w1 w1VarA1 = w1.a1(null);
        int iJ = j(i2);
        ArrayList arrayList5 = new ArrayList();
        int i12 = 0;
        while (true) {
            str = "";
            if (i12 >= i10) {
                break;
            }
            if (i12 < list.size()) {
                str5 = (String) list.get(i12);
            } else {
                if (i9 <= 10) {
                    String[] strArr = f1401k;
                    if (i12 == 0) {
                        str = strArr[i9 - 1];
                    } else if (i12 == 1 && i9 <= 2) {
                        str = strArr[i9 + 9];
                    }
                }
                str5 = str;
            }
            arrayList5.add(str5);
            i12++;
        }
        ArrayList arrayList6 = new ArrayList();
        List<String> list7 = t5Var.f1409f;
        for (String str6 : list7) {
            if (g(iJ, w1VarA1, str6)) {
                arrayList6.add(str6);
            }
        }
        Iterator it = arrayList5.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            n5Var = t5Var.f1407d;
            if (!zHasNext) {
                break;
            }
            String str7 = (String) it.next();
            if (n5Var.l(str7) && g(iJ, w1VarA1, str7) && !arrayList6.contains(str7)) {
                arrayList6.add(str7);
            }
        }
        List listEmptyList = Collections.emptyList();
        int i13 = 0;
        t5 t5Var2 = t5Var;
        List listEmptyList2 = Collections.emptyList();
        while (true) {
            if (i13 >= 64) {
                n5Var2 = n5Var;
                List list8 = listEmptyList2;
                i5 = 0;
                i6 = i11;
                list2 = list8;
                arrayList = listEmptyList;
                a7VarP = null;
                break;
            }
            List list9 = listEmptyList;
            int i14 = (i13 * 1009) + (i9 * 97);
            ArrayList arrayList7 = n5Var.f1230g;
            n5Var2 = n5Var;
            List list10 = listEmptyList2;
            int iMax = Math.max(0, i10);
            int iMax2 = Math.max(0, Math.min(i11, iMax));
            ArrayList arrayListU = n5.u(arrayList6);
            ArrayList arrayList8 = arrayList6;
            LinkedHashSet linkedHashSet = new LinkedHashSet(arrayListU);
            int i15 = i13;
            ArrayList arrayList9 = new ArrayList(Collections.nCopies(iMax, str));
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            String str8 = str;
            List list11 = list7;
            for (int i16 = 0; i16 < Math.min(iMax, arrayList5.size()); i16++) {
                String str9 = (String) arrayList5.get(i16);
                if (str9 != null && linkedHashSet.contains(str9) && linkedHashSet2.add(str9)) {
                    arrayList9.set(i16, str9);
                }
            }
            int i17 = iMax2 >= 6 ? 5 : iMax2;
            if (i17 < 2 || arrayList7 == null) {
                w1Var = w1VarA1;
                i7 = iJ;
                arrayList2 = arrayList5;
                i5Var = null;
            } else {
                Iterator it2 = arrayList7.iterator();
                l5 l5Var2 = null;
                i5 i5Var2 = null;
                while (it2.hasNext()) {
                    Iterator it3 = it2;
                    i5 i5Var3 = (i5) it2.next();
                    if (i5Var3 == null) {
                        w1Var2 = w1VarA1;
                        i8 = iJ;
                        arrayList4 = arrayList5;
                    } else {
                        w1Var2 = w1VarA1;
                        List<String> list12 = i5Var3.f1059b;
                        i8 = iJ;
                        int i18 = 0;
                        int i19 = 0;
                        for (String str10 : list12) {
                            ArrayList arrayList10 = arrayList5;
                            if (linkedHashSet.contains(str10)) {
                                i18++;
                                if (!linkedHashSet2.contains(str10)) {
                                    i19++;
                                }
                            }
                            arrayList5 = arrayList10;
                        }
                        arrayList4 = arrayList5;
                        int i20 = 0;
                        for (int i21 = 0; i21 < Math.min(iMax2, arrayList9.size()); i21++) {
                            if (list12.contains(arrayList9.get(i21))) {
                                i20++;
                            }
                        }
                        int iMin = Math.min(i17, Math.min(n5.g(iMax2, arrayList9), i19) + i20);
                        if (iMin >= Math.min(2, i17)) {
                            l5Var = new l5(iMin == i17 ? 1 : 0, i18 == i17 ? 1 : 0, iMin, i20, i5Var3.f1060c, -Math.abs(i18 - i17), -Math.floorMod((i5Var3.f1058a.hashCode() * 31) + i14, Integer.MAX_VALUE));
                        }
                        if (l5Var == null && (l5Var2 == null || l5Var.compareTo(l5Var2) > 0)) {
                            l5Var2 = l5Var;
                            i5Var2 = i5Var3;
                        }
                        w1VarA1 = w1Var2;
                        it2 = it3;
                        iJ = i8;
                        arrayList5 = arrayList4;
                    }
                    l5Var = null;
                    if (l5Var == null) {
                    }
                    w1VarA1 = w1Var2;
                    it2 = it3;
                    iJ = i8;
                    arrayList5 = arrayList4;
                }
                w1Var = w1VarA1;
                i7 = iJ;
                arrayList2 = arrayList5;
                i5Var = i5Var2;
            }
            if (i5Var != null) {
                int i22 = 0;
                int i23 = 0;
                while (true) {
                    int iMin2 = Math.min(iMax2, arrayList9.size());
                    list6 = i5Var.f1059b;
                    if (i22 >= iMin2) {
                        break;
                    }
                    if (list6.contains(arrayList9.get(i22))) {
                        i23++;
                    }
                    i22++;
                }
                int iMin3 = Math.min(i17, n5.g(iMax2, arrayList9) + i23);
                int iHashCode = i5Var.f1058a.hashCode() + i14;
                ArrayList<String> arrayList11 = new ArrayList();
                if (list6 != null && !list6.isEmpty()) {
                    int iFloorMod = Math.floorMod(iHashCode, list6.size());
                    for (int i24 = 0; i24 < list6.size(); i24++) {
                        arrayList11.add((String) list6.get((iFloorMod + i24) % list6.size()));
                    }
                }
                for (String str11 : arrayList11) {
                    if (i23 >= iMin3) {
                        break;
                    }
                    if (linkedHashSet.contains(str11) && !linkedHashSet2.contains(str11)) {
                        int i25 = 0;
                        while (true) {
                            if (i25 >= Math.min(iMax2, arrayList9.size())) {
                                i25 = -1;
                                break;
                            }
                            if (((String) arrayList9.get(i25)).isEmpty()) {
                                break;
                            }
                            i25++;
                        }
                        if (i25 < 0) {
                            break;
                        }
                        arrayList9.set(i25, str11);
                        linkedHashSet2.add(str11);
                        i23++;
                    }
                }
            }
            for (int i26 = 0; i26 < iMax; i26++) {
                if (((String) arrayList9.get(i26)).isEmpty()) {
                    int i27 = (i26 * 97) + i14;
                    if (arrayListU.isEmpty()) {
                        str4 = str8;
                        break;
                    }
                    int iFloorMod2 = Math.floorMod(i27, arrayListU.size());
                    int i28 = 0;
                    while (true) {
                        if (i28 >= arrayListU.size()) {
                            str4 = str8;
                            break;
                        }
                        str4 = (String) arrayListU.get((iFloorMod2 + i28) % arrayListU.size());
                        if (!linkedHashSet2.contains(str4)) {
                            break;
                        }
                        i28++;
                    }
                    if (!str4.isEmpty()) {
                        arrayList9.set(i26, str4);
                        linkedHashSet2.add(str4);
                    }
                }
            }
            ArrayList arrayList12 = new ArrayList(Collections.unmodifiableList(arrayList9));
            w1 w1VarA2 = w1.a1(null);
            HashSet hashSet = new HashSet(arrayList12);
            i6 = i4;
            i5 = 0;
            int iMax3 = Math.max(0, i6);
            while (iMax3 < arrayList12.size()) {
                if (iMax3 < arrayList2.size()) {
                    arrayList3 = arrayList2;
                    str3 = (String) arrayList3.get(iMax3);
                } else {
                    arrayList3 = arrayList2;
                    str3 = str8;
                }
                if (str3 == null || str3.isEmpty()) {
                    String str12 = (String) arrayList12.get(iMax3);
                    List list13 = this.f1408e;
                    if (list13.contains(str12) && g(1, w1VarA2, str12)) {
                        break;
                        break;
                    }
                    int i29 = 0;
                    while (true) {
                        if (i29 >= list13.size()) {
                            break;
                        }
                        String str13 = (String) list13.get(Math.floorMod((iMax3 * 149) + i14 + i29, list13.size()));
                        if (!hashSet.contains(str13) && g(1, w1VarA2, str13)) {
                            hashSet.remove(str12);
                            hashSet.add(str13);
                            arrayList12.set(iMax3, str13);
                            break;
                        }
                        i29++;
                    }
                }
                iMax3++;
                arrayList2 = arrayList3;
            }
            w1VarA1 = w1Var;
            int i30 = i7;
            ArrayList arrayList13 = arrayList2;
            if (h(w1VarA1, arrayList12, i30, i6)) {
                a7VarP = p(i14, arrayList12);
                if (a7VarP == null && list.isEmpty()) {
                    HashSet hashSet2 = new HashSet(arrayList12);
                    int size = arrayList12.size() - 1;
                    while (true) {
                        if (size < 0) {
                            list3 = list11;
                            a7Var = null;
                            break;
                        }
                        if (size >= arrayList13.size() || (str2 = (String) arrayList13.get(size)) == null || str2.isEmpty()) {
                            int i31 = 0;
                            while (i31 < list11.size()) {
                                int i32 = (size * 137) + i14;
                                list3 = list11;
                                String str14 = (String) list3.get(Math.floorMod(i32 + i31, list11.size()));
                                if (!hashSet2.contains(str14)) {
                                    ArrayList arrayList14 = new ArrayList(arrayList12);
                                    arrayList14.set(size, str14);
                                    a7 a7VarP2 = p((i31 * 1009) + i32, arrayList14);
                                    if (a7VarP2 != null) {
                                        a7Var = new a7(arrayList14, a7VarP2);
                                        break;
                                    }
                                }
                                i31++;
                                list11 = list3;
                            }
                        }
                        size--;
                        list11 = list11;
                    }
                    if (a7Var != null) {
                        list5 = (List) a7Var.f190a;
                        if (h(w1VarA1, list5, i30, i6)) {
                            a7VarP = (a7) a7Var.f191b;
                        }
                        list4 = list5;
                        list10 = arrayList12;
                    }
                    if (a7VarP != null) {
                        list4 = list5;
                        arrayList = new ArrayList(list4);
                        list2 = arrayList12;
                        break;
                    }
                    list4 = list5;
                    list10 = arrayList12;
                } else {
                    list3 = list11;
                }
                list4 = arrayList12;
                if (a7VarP != null) {
                    list4 = list5;
                    arrayList = new ArrayList(list4);
                    list2 = arrayList12;
                    break;
                }
                list4 = list5;
                list10 = arrayList12;
            } else {
                list3 = list11;
            }
            i13 = i15 + 1;
            i9 = i2;
            i10 = i3;
            i11 = i6;
            t5Var2 = this;
            list7 = list3;
            listEmptyList2 = list10;
            listEmptyList = list9;
            n5Var = n5Var2;
            arrayList6 = arrayList8;
            str = str8;
            arrayList5 = arrayList13;
            iJ = i30;
        }
        if (a7VarP != null) {
            n5 n5Var3 = n5Var2;
            HashSet hashSet3 = new HashSet((Set) a7VarP.f190a);
            List list14 = (List) a7VarP.f191b;
            ArrayList arrayList15 = new ArrayList();
            HashSet hashSet4 = new HashSet();
            while (i5 < i3) {
                String str15 = (String) arrayList.get(i5);
                j5 j5Var = (j5) list14.get(i5);
                if (i5 < i6) {
                    List<k5> listI = n5Var3.i(str15);
                    arrayList15.addAll(listI);
                    for (k5 k5Var : listI) {
                        if (k5Var.f1116e == j5Var.f1087a.f1198a) {
                            hashSet4.add(k5Var.f1112a);
                        }
                    }
                }
                i5++;
            }
            return new t(hashSet3, arrayList, list14, arrayList15, hashSet4);
        }
        StringBuilder sb = new StringBuilder("Unable to build complete robot formation for rank ");
        sb.append(i2);
        sb.append(" with ");
        sb.append(i3);
        sb.append(" mains: ");
        ArrayList arrayList16 = new ArrayList();
        for (String str16 : list2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str16);
            sb2.append("/");
            n5 n5Var4 = n5Var2;
            sb2.append(n5Var4.t(str16).f1198a);
            sb2.append("/");
            sb2.append(n5Var4.o(str16));
            arrayList16.add(sb2.toString());
        }
        n5 n5Var5 = n5Var2;
        sb.append(arrayList16.toString());
        sb.append(", candidates=");
        int i33 = i2 * 97;
        HashSet hashSet5 = new HashSet(list2);
        ArrayList arrayList17 = new ArrayList();
        while (i5 < list2.size()) {
            arrayList17.add(Integer.valueOf(n5Var5.c((String) list2.get(i5), (i5 * 131) + i33, hashSet5).size()));
            i5++;
        }
        sb.append(arrayList17);
        throw new IllegalStateException(sb.toString());
    }
}
