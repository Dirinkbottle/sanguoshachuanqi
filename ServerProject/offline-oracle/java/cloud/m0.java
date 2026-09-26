package com.sgscq.vpn.cloud;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Base64;
import com.sgscq.vpn.a7;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.handler.e1;
import com.sgscq.vpn.handler.f1;
import com.sgscq.vpn.n1;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.t2;
import com.sgscq.vpn.t6;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.y2;
import com.sgscq.vpn.z2;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f413a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f414b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f416d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile byte[] f421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile Boolean f422j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile String[] f426n;
    public static volatile String[] r;
    public static volatile LinkedHashMap s;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Type[] f417e = new Type[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f418f = {"121007", "171010", "171013", "171016", "171003", "111031", "171005", "171017", "122014", "142013", "141024", "121024", "165007", "111015", "165008", "141014", "131021", "131022", "141009", "171015", "171008", "171009", "171006", "141023", "121023", "152001", "111029", "152002"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f419g = {"121010"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f420h = {45, 112, -72, 113, -98, 40, -98, -19, 69, -95, -63, 101, -88, 100, -124, 57, 49, 114, -26, 66, -64, -93, 48, -40, 47, -87, -12, -11, 111, 45, 58, -65};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final byte[] f423k = {90, 63, -63, -114, 114, 75, -99, 22};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final byte[] f424l = {64, 120, 76, -102, -115, 1, 51, -51, 66, 122, 65, -98, -35, 82, 101, -54, 21, 42, 26, -51, -39, 81, 54, -49, 71, 127, 75, -54, -113, 80, 52, -52, 125, 54, 29, -116, -82, 87, 96, -117, 66, 22, 61, -88, -83, 48, 69, -77, 0, 26, 55, -119, -122, 11, 109, -80, 78, 12, 60, -108, -98, 5, 73, -93, 2, 69, 28, -101, -117, 6, 108, -107, 18, 44, 22, -112, -128, 105, 77, -127, 20, 126, 35, -88, -86, 10, 78, -65, 46, 126, 55, -85, -124, 11, 78, -81, 49, 34, 52, -88, -90, 15, 90, -127, 62, 126, 52, -107, -71, 83, 78, -65, 54, 54, 55, -88, -95, 25, 77, -127, 19, 41, 35, -88, -66, 13, 89, -84, 78, 58, 35, -88, -94, 21, 97, -55, 0, 114, 115, -105, -104, 23, 115, -120, 77, 96, 86, -109, -103, 13, 98, -105, 18, 42, 15, -106, -100, 77, 100, -110, 3, 39, 12, -99, -62, 10, 108, -44, 4, 40, 10, -100, -99, 60, 108, -102, 2, 59, 17, -48, -115, 5, 103, -110, 22, 33, 86, -112, -115, 22, 119, -109, 89, 39, 13, -110, -128};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final byte[] f425m = {119, 111, 88, -33, -82, 104, 77, -57, -4, 117};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final byte[] f427o = {90, 63, -63, -114, 114, 75, -99, 22};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final byte[] f428p = {50, 75, -75, -2, 1, 113, -78, 57, 51, 89, -91, -25, 19, 37, -77, 120, 63, 75, -18, -17, 93, 39, -24, 120, 59, 83, -92, -21, 4, 34, -19, 126, 46, 75, -79, -3, 72, 100, -78, 103, 55, 17, -80, -1, 92, 40, -14, 123, 117, 78, -18, -54, 30, 61, -9, 36, 108, 80, -122, -37, 55, 35, -23, 98, 42, 76, -5, -95, 93, 56, -19, 119, 57, 90, -17, -20, 27, 39, -12, 116, 51, 83, -88, -96, 17, 36, -16, 57, 107, 8, -14, -74, 74, 120, -85, 47, 111};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final byte[] f429q = {90, 32, -34, -112, 79, 111};
    public static final int[] t = {0, 1, 2, 5, 8, 12};
    public static final int[][] u = {new int[0], new int[]{1, 2}, new int[]{2, 1}, new int[]{3, 1}, new int[]{4, 1}, new int[]{1, 3}, new int[]{2, 3}, new int[]{3, 2}, new int[]{4, 2}, new int[]{1, 4}, new int[]{2, 4}, new int[]{3, 4}, new int[]{4, 3}};
    public static final String[] v = {"evolution_info"};
    public static final String[] w = {"api.sgscq.com", "oauth.sgscq.com"};
    public static final String[] x = {"sgscq.com", "ifdian.net"};

    public static LinkedHashMap A(LinkedHashMap linkedHashMap, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        return B(linkedHashMap, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, new ArrayList(), new ArrayList());
    }

    public static Map A0(String str, List list) {
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

    public static int A1(Map map) {
        if (map == null) {
            return 0;
        }
        return m1(m1(m1(0, "total_num", map), "item_num", map), "num", map);
    }

    public static ArrayList A2(Map map) {
        ArrayList arrayList = new ArrayList();
        List<Map> listF0 = w1.f0("General", map);
        HashMap map2 = new HashMap();
        for (Map map3 : listF0) {
            String strValueOf = String.valueOf(map3.getOrDefault("pk_id", ""));
            if (!strValueOf.isEmpty()) {
                map2.put(strValueOf, map3);
            }
        }
        ArrayList arrayList2 = new ArrayList(w1.f0("TeamGeneral", map));
        arrayList2.sort(Comparator.comparingInt(new n1(8)).thenComparing(new n.a(23)));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Map map4 = (Map) map2.get(String.valueOf(((Map) it.next()).getOrDefault("general_pk_id", "")));
            if (map4 != null && !arrayList.contains(map4)) {
                arrayList.add(map4);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r14v18, types: [java.lang.Object, java.util.HashMap, java.util.LinkedHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.sgscq.vpn.w1] */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, java.util.ArrayList] */
    public static LinkedHashMap B(LinkedHashMap linkedHashMap, List list, List list2, List list3, List list4, List list5, List list6, List list7) {
        int i2;
        String str;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String str2;
        Map map;
        Map map2;
        ?? linkedHashMap2;
        Map map3;
        String strT0;
        Map map4;
        int i3;
        LinkedHashMap linkedHashMap3 = linkedHashMap == null ? new LinkedHashMap() : new LinkedHashMap(linkedHashMap);
        ArrayList<Map> arrayListZ = Z(list);
        ArrayList arrayListZ2 = Z(list2);
        ArrayList arrayListZ3 = Z(list3);
        ArrayList arrayListZ4 = Z(list4);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayListZ4.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map map5 = (Map) it.next();
            Object obj = map5.get("combat_type");
            Object obj2 = map5.get("type");
            if (obj2 == null) {
                i3 = 0;
            } else {
                try {
                    i3 = (int) Double.parseDouble(String.valueOf(obj2));
                } catch (NumberFormatException unused) {
                    i3 = 0;
                }
            }
            if (obj != null) {
                try {
                    i3 = (int) Double.parseDouble(String.valueOf(obj));
                } catch (NumberFormatException unused2) {
                }
            }
            if (i3 >= 1 && i3 <= 4) {
                linkedHashSet.add(Integer.valueOf(i3));
            }
        }
        for (i2 = 1; i2 <= 4; i2++) {
            if (!linkedHashSet.contains(Integer.valueOf(i2))) {
                arrayListZ4.add(U(i2));
            }
        }
        ArrayList arrayListZ5 = Z(list5);
        ArrayList arrayListZ6 = Z(list6);
        ArrayList arrayListZ7 = Z(list7);
        String str3 = "uid";
        String str4 = "user_id";
        String str5 = "player_id";
        String strS2 = S2("player_id", S2("user_id", S2("uid", "0", linkedHashMap3), linkedHashMap3), linkedHashMap3);
        linkedHashMap3.put("player_id", strS2);
        linkedHashMap3.put("user_id", strS2);
        linkedHashMap3.put("uid", strS2);
        linkedHashMap3.put("account_uid", strS2);
        String strS3 = S2("nickname", S2("user_nickname", S2("nick", "Player", linkedHashMap3), linkedHashMap3), linkedHashMap3);
        linkedHashMap3.put("nickname", strS3);
        linkedHashMap3.put("nick", strS3);
        linkedHashMap3.put("nickName", strS3);
        linkedHashMap3.put("roleName", strS3);
        linkedHashMap3.put("user_nickname", strS3);
        linkedHashMap3.put("user_name", strS3);
        ?? A1 = w1.a1(null);
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        Iterator it2 = arrayListZ3.iterator();
        while (true) {
            str = "";
            if (!it2.hasNext()) {
                break;
            }
            Map map6 = (Map) it2.next();
            String strS4 = S2("pk_id", "", map6);
            if (!strS4.isEmpty()) {
                linkedHashMap4.put(strS4, map6);
            }
        }
        Iterator it3 = arrayListZ.iterator();
        while (it3.hasNext()) {
            Map map7 = (Map) it3.next();
            String strS5 = S2("pk_id", str, map7);
            Iterator it4 = it3;
            String str6 = str5;
            String strS6 = S2("general_id", S2("id", str, map7), map7);
            String str7 = str4;
            String str8 = strS5.isEmpty() ? strS6 : strS5;
            map7.put("pk_id", str8);
            map7.put("general_pk_id", str8);
            map7.put("general_id", strS6);
            map7.put("id", strS6);
            ?? arrayList4 = new ArrayList();
            String str9 = str3;
            String str10 = "gSkill";
            ArrayList arrayList5 = arrayListZ4;
            Object obj3 = map7.get("gSkill");
            LinkedHashMap linkedHashMap5 = linkedHashMap3;
            if (obj3 instanceof List) {
                Iterator it5 = ((List) obj3).iterator();
                while (it5.hasNext()) {
                    Object next = it5.next();
                    Iterator it6 = it5;
                    if (next instanceof Map) {
                        LinkedHashMap linkedHashMap6 = new LinkedHashMap((Map) next);
                        linkedHashMap6.put("general_pk_id", str8);
                        String strS7 = S2("pk_id", str, linkedHashMap6);
                        if (!strS7.isEmpty()) {
                            linkedHashMap4.put(strS7, linkedHashMap6);
                        }
                    }
                    it5 = it6;
                }
            }
            Iterator it7 = linkedHashMap4.values().iterator();
            while (it7.hasNext()) {
                Map map8 = (Map) it7.next();
                Iterator it8 = it7;
                if (str8.equals(S2("general_pk_id", str, map8))) {
                    arrayList4.add(map8);
                }
                it7 = it8;
            }
            Iterator it9 = arrayList4.iterator();
            while (true) {
                arrayList2 = arrayListZ2;
                arrayList3 = arrayListZ3;
                str2 = str10;
                if (!it9.hasNext()) {
                    map = map7;
                    Iterator it10 = arrayList4.iterator();
                    while (true) {
                        if (!it10.hasNext()) {
                            map2 = null;
                            break;
                        }
                        map2 = (Map) it10.next();
                        Iterator it11 = it10;
                        if ("1".equals(S2("position", S2("pos", str, map2), map2))) {
                            break;
                        }
                        it10 = it11;
                    }
                } else {
                    map2 = (Map) it9.next();
                    Iterator it12 = it9;
                    map = map7;
                    if (Boolean.TRUE.equals(map2.get("is_natural")) || "true".equalsIgnoreCase(String.valueOf(map2.get("is_natural")))) {
                        break;
                    }
                    str10 = str2;
                    it9 = it12;
                    map7 = map;
                    arrayListZ3 = arrayList3;
                    arrayListZ2 = arrayList2;
                }
            }
            if (map2 != null || arrayList4.isEmpty()) {
                linkedHashMap2 = map2;
            } else {
                map4 = (Map) arrayList4.get(0);
                map4.put("is_natural", Boolean.TRUE);
                map4.put("position", 1);
                map4.put("pos", 1);
                map4.put("skill_position", 1);
            }
            if (linkedHashMap2 == 0 && !strS6.isEmpty() && (strT0 = A1.T0(strS6)) != null && !strT0.isEmpty() && !"0".equals(strT0)) {
                linkedHashMap2 = map4;
                linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("pk_id", str8 + "_natural_skill");
                linkedHashMap2.put("general_pk_id", str8);
                linkedHashMap2.put("skill_id", strT0);
                linkedHashMap2.put("id", strT0);
                c.a.z(linkedHashMap2, "skill_code", strT0, 1, "position", 1, "pos");
                c.a.s(1, linkedHashMap2, "skill_position", 1, "level", 1, "skill_level");
                linkedHashMap2.put("is_natural", Boolean.TRUE);
                A1.S(strT0, linkedHashMap2);
                linkedHashMap4.put(String.valueOf(linkedHashMap2.get("pk_id")), linkedHashMap2);
                arrayList4.add(0, linkedHashMap2);
            }
            if (linkedHashMap2 != 0) {
                map3 = map;
                map3.put("general_naturalskill_id", linkedHashMap2.get("pk_id"));
                arrayList4.remove(linkedHashMap2);
                arrayList4.add(0, linkedHashMap2);
            } else {
                map3 = map;
            }
            map3.put(str2, arrayList4);
            map3.put("general_skills", arrayList4);
            it3 = it4;
            str5 = str6;
            str4 = str7;
            str3 = str9;
            arrayListZ4 = arrayList5;
            str = str;
            arrayListZ3 = arrayList3;
            linkedHashMap3 = linkedHashMap5;
            arrayListZ2 = arrayList2;
        }
        LinkedHashMap linkedHashMap7 = linkedHashMap3;
        ArrayList arrayList6 = arrayListZ2;
        String str11 = str;
        String str12 = str5;
        String str13 = str4;
        String str14 = str3;
        ArrayList arrayList7 = arrayListZ4;
        int i4 = 1;
        arrayListZ3.clear();
        arrayListZ3.addAll(linkedHashMap4.values());
        LinkedHashMap linkedHashMap8 = new LinkedHashMap();
        for (Map map9 : arrayListZ) {
            linkedHashMap8.put(String.valueOf(map9.get("pk_id")), map9);
        }
        if (arrayList6.isEmpty()) {
            for (Map map10 : arrayListZ) {
                String str15 = str11;
                if (S2("major_pk_id", str15, map10).isEmpty()) {
                    String strValueOf = String.valueOf(map10.get("pk_id"));
                    arrayList = arrayList6;
                    arrayList.add(p5.z0("pk_id", strValueOf, "general_pk_id", strValueOf, "general_id", map10.get("general_id"), "position", Integer.valueOf(i4)));
                    i4++;
                } else {
                    arrayList = arrayList6;
                }
                str11 = str15;
                arrayList6 = arrayList;
            }
        }
        String str16 = str11;
        ArrayList<Map> arrayList8 = arrayList6;
        for (Map map11 : arrayList8) {
            String strS8 = S2("general_pk_id", S2("pk_id", str16, map11), map11);
            Map map12 = (Map) linkedHashMap8.get(strS8);
            if (map12 == null) {
                String strS9 = S2("general_id", str16, map11);
                for (Map map13 : arrayListZ) {
                    if (strS9.equals(S2("general_id", str16, map13))) {
                        strS8 = String.valueOf(map13.get("pk_id"));
                        map12 = map13;
                        break;
                    }
                }
            }
            map11.put("pk_id", strS8);
            map11.put("general_pk_id", strS8);
            if (map12 != null) {
                map11.put("general_id", map12.get("general_id"));
            }
        }
        ArrayList arrayList9 = arrayListZ3;
        LinkedHashMap linkedHashMapZ0 = p5.z0("user_info", linkedHashMap7, "player_info", linkedHashMap7, "general_info", G1(arrayListZ), "team_info", arrayList8, "skill_info", G1(arrayListZ3), "combat_info", arrayList7, "equipment_info", G1(arrayListZ5), "gem_info", G1(arrayListZ6), "buddy_info", arrayListZ7);
        LinkedHashMap linkedHashMapZ1 = p5.z0(S2(str12, S2(str13, S2(str14, "0", linkedHashMap7), linkedHashMap7), linkedHashMap7), p5.z0("user_info", linkedHashMap7, "player_info", linkedHashMap7, "general_info", G1(arrayListZ), "team_info", arrayList8, "skill_info", G1(arrayList9), "combat_info", arrayList7, "equipment_info", G1(arrayListZ5), "gem_info", G1(arrayListZ6), "buddy_info", arrayListZ7, "cmn", linkedHashMapZ0), new Object[0]);
        LinkedHashMap linkedHashMapZ2 = p5.z0("player_info", linkedHashMap7, "general_info", arrayListZ, "team_info", arrayList8, "skill_info", arrayList9, "combat_info", arrayList7, "equipment_info", arrayListZ5, "gem_info", arrayListZ6, "buddy_info", arrayListZ7, "cmn", linkedHashMapZ0, "info", linkedHashMapZ1);
        LinkedHashMap linkedHashMapZ3 = p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
        linkedHashMapZ3.put("return_info", linkedHashMapZ2);
        linkedHashMapZ3.put("other_player_data", linkedHashMapZ2);
        linkedHashMapZ3.put("info", linkedHashMapZ1);
        return linkedHashMapZ3;
    }

    public static Map B0(String str, List list) {
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

    public static int B1(Map map) {
        return w1.l2(c.a.k(map, "total_num", "0", "item_num", "num"), 0);
    }

    public static int B2(String str, Map map) {
        if (map == null) {
            return 0;
        }
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return (int) ((Number) obj).doubleValue();
        }
        if (obj == null) {
            return 0;
        }
        try {
            return (int) Double.parseDouble(String.valueOf(obj).trim());
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static LinkedHashMap C(int i2, String str, ArrayList arrayList, Map map) {
        LinkedHashMap linkedHashMapR = c.a.r("user_general_id", str, "general_pk_id", str);
        linkedHashMapR.put("pkId", str);
        linkedHashMapR.put("general_id", String.valueOf(map.getOrDefault("general_id", "")));
        linkedHashMapR.put("culture_level", Integer.valueOf(g1(0, "culture_level", map)));
        linkedHashMapR.put("culture_info", map.get("culture_info"));
        linkedHashMapR.put("cultivate_num", Integer.valueOf(i2));
        linkedHashMapR.put("ganoderma_num", Integer.valueOf(g1(0, "ganoderma_num", map)));
        linkedHashMapR.put("cultivate_attr", arrayList);
        Z1("hp", linkedHashMapR, map);
        Z1("attack", linkedHashMapR, map);
        Z1("defense", linkedHashMapR, map);
        Z1("wisdom", linkedHashMapR, map);
        a2("hp", linkedHashMapR, map);
        a2("attack", linkedHashMapR, map);
        a2("defense", linkedHashMapR, map);
        a2("wisdom", linkedHashMapR, map);
        return linkedHashMapR;
    }

    public static Map C0(String str, List list) {
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

    public static int C1(Map map) {
        int i2 = 0;
        for (Map map2 : J1(map)) {
            if ("600012".equals(String.valueOf(map2.getOrDefault("item_id", map2.get("id"))))) {
                int iMax = Math.max(0, B1(map2));
                if (i2 > Integer.MAX_VALUE - iMax) {
                    return Integer.MAX_VALUE;
                }
                i2 += iMax;
            }
        }
        return i2;
    }

    public static void C2(int i2, Map map, boolean z) {
        map.put(z ? "elite_dungeon_times_buy_day" : "dungeon_times_buy_day", c7.b());
        map.put(z ? "elite_dungeon_times_buy_used" : "dungeon_times_buy_used", Integer.valueOf(Math.max(0, i2)));
    }

    public static LinkedHashMap D(Map map, LinkedHashMap linkedHashMap) {
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("pkId", ""));
        ArrayList arrayList = new ArrayList();
        Map mapW0 = w0(strValueOf, w1.f0("General", map));
        if (mapW0 != null && !arrayList.contains(mapW0)) {
            arrayList.add(mapW0);
        }
        ArrayList arrayList2 = new ArrayList();
        Map mapF0 = F0(map);
        if (mapF0 != null && !arrayList2.contains(mapF0)) {
            arrayList2.add(mapF0);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("General", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()));
        linkedHashMap2.put("Item", p5.z0("del", new ArrayList(), "upd", arrayList2, "add", new ArrayList()));
        if (String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).contains("TeamGeneral")) {
            linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", map)), "add", new ArrayList()));
        }
        return linkedHashMap2;
    }

    public static Map D0(String str, List list) {
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

    public static String D1(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (i2 < arrayList.size()) {
            if (i2 > 0) {
                sb.append(i2 == 1 ? ", " : "/");
            }
            sb.append((String) arrayList.get(i2));
            i2++;
        }
        return sb.toString();
    }

    public static void D2(int i2, String str, Map map) {
        if (o1(str)) {
            C2(i2, map, p1(str));
            return;
        }
        String strH2 = h2(str);
        String strJ2 = j2(str);
        if (strH2.isEmpty() || strJ2.isEmpty()) {
            return;
        }
        map.put(strH2, c7.b());
        map.put(strJ2, Integer.valueOf(Math.max(0, i2)));
    }

    public static LinkedHashMap E(Map map, LinkedHashMap linkedHashMap) {
        ArrayList arrayList;
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("pkId", ""));
        String strValueOf2 = String.valueOf(linkedHashMap.getOrDefault("general_id", ""));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        Map mapX0 = x0(strValueOf, w1.f0("General", map));
        ArrayList arrayList3 = new ArrayList();
        if (mapX0 != null) {
            arrayList3.add(mapX0);
        }
        linkedHashMap2.put("General", p5.z0("del", arrayList2, "upd", arrayList3, "add", new ArrayList()));
        ArrayList arrayList4 = new ArrayList();
        String strValueOf3 = String.valueOf(linkedHashMap.getOrDefault("deleted_soul_pk_id", ""));
        if (!strValueOf3.isEmpty()) {
            arrayList4.add(strValueOf3);
        }
        Object[] objArr = new Object[4];
        objArr[0] = "upd";
        if (strValueOf3.isEmpty()) {
            Map mapJ0 = J0(strValueOf2, map);
            arrayList = new ArrayList();
            if (mapJ0 != null) {
                arrayList.add(mapJ0);
            }
        } else {
            arrayList = new ArrayList();
        }
        objArr[1] = arrayList;
        objArr[2] = "add";
        objArr[3] = new ArrayList();
        linkedHashMap2.put("GeneralSoul", p5.z0("del", arrayList4, objArr));
        linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", map)), "add", new ArrayList()));
        return linkedHashMap2;
    }

    public static Map E0(String str, Map map) {
        if (!((str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) ? false : true)) {
            return null;
        }
        for (Map map2 : w1.f0("General", map)) {
            if (c.a.B(map2, "pk_id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static long E1(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            return Long.parseLong(String.valueOf(obj));
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static void E2(int i2, Map map) {
        map.put("breachLevel", Integer.valueOf(i2));
        map.put("star_level", Integer.valueOf(i2));
        map.put("general_star", Integer.valueOf(i2));
        map.put("insight_level", Integer.valueOf(i2));
    }

    public static LinkedHashMap F(Map map, LinkedHashMap linkedHashMap) {
        ArrayList arrayList;
        ArrayList arrayList2;
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("pkId", ""));
        String strValueOf2 = String.valueOf(linkedHashMap.getOrDefault("general_id", ""));
        boolean zEquals = Boolean.TRUE.equals(linkedHashMap.get("is_new"));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Map mapY0 = y0(strValueOf, w1.f0("General", map));
        Map mapY1 = y0(strValueOf, w1.f0("Skill", map));
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        if (mapY0 != null) {
            arrayList4.add(mapY0);
        }
        linkedHashMap2.put("General", p5.z0("del", arrayList3, "upd", arrayList4, "add", new ArrayList()));
        ArrayList arrayList5 = new ArrayList();
        Object[] objArr = new Object[4];
        objArr[0] = "upd";
        if (zEquals) {
            arrayList = new ArrayList();
            if (mapY1 != null) {
                arrayList.add(mapY1);
            }
        } else {
            arrayList = new ArrayList();
        }
        objArr[1] = arrayList;
        objArr[2] = "add";
        objArr[3] = new ArrayList();
        linkedHashMap2.put("Skill", p5.z0("del", arrayList5, objArr));
        ArrayList arrayList6 = new ArrayList();
        String strValueOf3 = String.valueOf(linkedHashMap.getOrDefault("deleted_soul_pk_id", ""));
        if (!strValueOf3.isEmpty()) {
            arrayList6.add(strValueOf3);
        }
        Object[] objArr2 = new Object[4];
        objArr2[0] = "upd";
        if (strValueOf3.isEmpty()) {
            Map mapK0 = K0(strValueOf2, map);
            arrayList2 = new ArrayList();
            if (mapK0 != null) {
                arrayList2.add(mapK0);
            }
        } else {
            arrayList2 = new ArrayList();
        }
        objArr2[1] = arrayList2;
        objArr2[2] = "add";
        objArr2[3] = new ArrayList();
        linkedHashMap2.put("GeneralSoul", p5.z0("del", arrayList6, objArr2));
        return linkedHashMap2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003b  */
    /* JADX WARN: Code duplicated, block: B:17:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:? A[LOOP:0: B:9:0x0035->B:18:?, LOOP_END, SYNTHETIC] */
    public static Map F0(Map map) {
        ArrayList<Map> arrayList = new ArrayList();
        Object obj = map.get("Item");
        if (!(obj instanceof Map)) {
            if (obj instanceof List) {
            }
            for (Map map2 : arrayList) {
                if (c.a.A(map2, "item_id", "600012")) {
                    return map2;
                }
            }
            return null;
        }
        Map map3 = (Map) obj;
        i(map3.get("add"), arrayList);
        i(map3.get("upd"), arrayList);
        obj = map3.get("update_list");
        i(obj, arrayList);
        while (r3.hasNext()) {
            if (c.a.A(map2, "item_id", "600012")) {
                return map2;
            }
        }
        return null;
    }

    public static long F1(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj != null) {
            try {
                return Long.parseLong(String.valueOf(obj));
            } catch (Exception unused) {
            }
        }
        return 0L;
    }

    public static LinkedHashMap F2(int i2, String str, String str2, String str3) {
        LinkedHashMap linkedHashMapR = c.a.r("player_id", str, "user_id", str);
        linkedHashMapR.put("nickname", str2);
        c.a.z(linkedHashMapR, "user_nick", str2, i2, "player_level", i2, "user_level");
        com.sgscq.vpn.handler.l.b(linkedHashMapR, "general_id", str3, 1, "server_id");
        return linkedHashMapR;
    }

    public static LinkedHashMap G(Map map, LinkedHashMap linkedHashMap) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if ("cleanup_mystery_general".equals(String.valueOf(linkedHashMap.getOrDefault("action", "")))) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
            linkedHashMap2.put("General", p5.z0("del", K2("removed_general_pk_ids", linkedHashMap), "upd", new ArrayList(), "add", new ArrayList()));
            linkedHashMap2.put("Skill", p5.z0("del", K2("removed_skill_pk_ids", linkedHashMap), "upd", new ArrayList(), "add", new ArrayList()));
            linkedHashMap2.put("TeamGeneral", p5.z0("del", K2("removed_team_general_pk_ids", linkedHashMap), "upd", I0("TeamGeneral", K2("changed_team_general_pk_ids", linkedHashMap), map), "add", new ArrayList()));
            linkedHashMap2.put("BuddyGeneral", p5.z0("del", K2("removed_buddy_general_pk_ids", linkedHashMap), "upd", I0("BuddyGeneral", K2("changed_buddy_general_pk_ids", linkedHashMap), map), "add", new ArrayList()));
            return linkedHashMap2;
        }
        if ("1".equals(String.valueOf(linkedHashMap.getOrDefault("type", "")))) {
            LinkedHashMap linkedHashMap3 = new LinkedHashMap(map);
            ArrayList arrayList3 = new ArrayList();
            Object obj = linkedHashMap.get("changed_general_pk_ids");
            if (obj instanceof List) {
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : (List) obj) {
                    if (obj2 != null && !String.valueOf(obj2).isEmpty()) {
                        arrayList4.add(String.valueOf(obj2));
                    }
                }
                arrayList2 = arrayList4;
            } else {
                arrayList2 = new ArrayList();
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Map mapZ0 = z0((String) it.next(), w1.f0("General", map));
                if (mapZ0 != null && !arrayList3.contains(mapZ0)) {
                    arrayList3.add(mapZ0);
                }
            }
            if (!arrayList3.isEmpty()) {
                linkedHashMap3.put("General", p5.z0("del", new ArrayList(), "upd", arrayList3, "add", new ArrayList()));
            }
            linkedHashMap3.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", map)), "add", new ArrayList()));
            return linkedHashMap3;
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(map);
        Map mapZ1 = z0(String.valueOf(linkedHashMap.getOrDefault("user_general_id", "")), w1.f0("General", map));
        ArrayList arrayList5 = new ArrayList();
        Object obj3 = linkedHashMap.get("changed_skill_ids");
        if (obj3 instanceof List) {
            ArrayList arrayList6 = new ArrayList();
            for (Object obj4 : (List) obj3) {
                if (obj4 != null && !String.valueOf(obj4).isEmpty()) {
                    arrayList6.add(String.valueOf(obj4));
                }
            }
            arrayList = arrayList6;
        } else {
            arrayList = new ArrayList();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Map mapZ2 = z0((String) it2.next(), w1.f0("Skill", map));
            if (mapZ2 != null) {
                arrayList5.add(mapZ2);
            }
        }
        ArrayList arrayList7 = new ArrayList();
        Object[] objArr = new Object[4];
        objArr[0] = "upd";
        objArr[1] = mapZ1 == null ? new ArrayList() : p5.v0(mapZ1);
        objArr[2] = "add";
        objArr[3] = new ArrayList();
        linkedHashMap4.put("General", p5.z0("del", arrayList7, objArr));
        linkedHashMap4.put("Skill", p5.z0("del", new ArrayList(), "upd", arrayList5, "add", new ArrayList()));
        linkedHashMap4.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", map)), "add", new ArrayList()));
        return linkedHashMap4;
    }

    public static Map G0(String str, Map map) {
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.A(map2, "item_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static LinkedHashMap G1(ArrayList arrayList) {
        return p5.z0("update_list", arrayList, "del_list", new ArrayList());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002b A[Catch: all -> 0x005e, TryCatch #0 {all -> 0x005e, blocks: (B:8:0x000d, B:10:0x001f, B:12:0x002b, B:13:0x002e, B:15:0x0034, B:19:0x0048, B:22:0x004c, B:16:0x0039, B:17:0x003e), top: B:26:0x000d }] */
    public static byte[] G2(Context context) throws CloneNotSupportedException {
        byte[] bArrDigest;
        Object objClone;
        Signature[] apkContentsSigners;
        byte[] bArr = f421i;
        if (bArr != null) {
            objClone = bArr.clone();
        } else {
            try {
                Context applicationContext = context.getApplicationContext();
                PackageManager packageManager = applicationContext.getPackageManager();
                String packageName = applicationContext.getPackageName();
                if (Build.VERSION.SDK_INT >= 28) {
                    SigningInfo signingInfo = packageManager.getPackageInfo(packageName, 134217728).signingInfo;
                    if (signingInfo != null) {
                        apkContentsSigners = signingInfo.hasMultipleSigners() ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();
                    } else {
                        bArrDigest = new byte[32];
                    }
                    f421i = bArrDigest;
                    objClone = bArrDigest.clone();
                } else {
                    apkContentsSigners = packageManager.getPackageInfo(packageName, 64).signatures;
                }
                if (apkContentsSigners == null || apkContentsSigners.length == 0) {
                    bArrDigest = new byte[32];
                } else {
                    bArrDigest = MessageDigest.getInstance("SHA-256").digest(apkContentsSigners[0].toByteArray());
                }
            } catch (Throwable unused) {
                bArrDigest = new byte[32];
            }
            f421i = bArrDigest;
            objClone = bArrDigest.clone();
        }
        return (byte[]) objClone;
    }

    public static LinkedHashMap H(Map map, LinkedHashMap linkedHashMap) {
        Map mapG0;
        Map mapG1;
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("target_user_general_id", ""));
        String strValueOf2 = String.valueOf(linkedHashMap.getOrDefault("source_user_general_id", ""));
        String strValueOf3 = String.valueOf(linkedHashMap.getOrDefault("item_id", ""));
        ArrayList arrayList = new ArrayList();
        Map mapA0 = A0(strValueOf, w1.f0("General", map));
        if (mapA0 != null) {
            arrayList.add(mapA0);
        }
        Map mapA1 = A0(strValueOf2, w1.f0("General", map));
        if (mapA1 != null && mapA1 != mapA0) {
            arrayList.add(mapA1);
        }
        Iterator it = h(strValueOf, map).iterator();
        while (it.hasNext()) {
            Map mapA2 = A0((String) it.next(), w1.f0("General", map));
            if (mapA2 != null && !arrayList.contains(mapA2)) {
                arrayList.add(mapA2);
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("General", p5.z0("del", new ArrayList(d0("General", map)), "upd", arrayList, "add", new ArrayList()));
        linkedHashMap2.put("Skill", p5.z0("del", new ArrayList(d0("Skill", map)), "upd", new ArrayList(), "add", new ArrayList()));
        Map mapG2 = G0(strValueOf3, map);
        ArrayList arrayList2 = new ArrayList();
        if (mapG2 != null) {
            arrayList2.add(mapG2);
        }
        Object obj = linkedHashMap.get("info");
        if (m1(0, "ganoderma", obj instanceof Map ? (Map) obj : new LinkedHashMap()) > 0 && (mapG1 = G0("600012", map)) != null && !arrayList2.contains(mapG1)) {
            arrayList2.add(mapG1);
        }
        Object obj2 = linkedHashMap.get("info");
        if (m1(0, "maili", obj2 instanceof Map ? (Map) obj2 : new LinkedHashMap()) > 0 && (mapG0 = G0("600095", map)) != null && !arrayList2.contains(mapG0)) {
            arrayList2.add(mapG0);
        }
        linkedHashMap2.put("Item", p5.z0("del", new ArrayList(d0("Item", map)), "upd", arrayList2, "add", new ArrayList()));
        linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(d0("TeamGeneral", map)), "upd", new ArrayList(w1.f0("TeamGeneral", map)), "add", new ArrayList()));
        ArrayList arrayList3 = new ArrayList(d0("MeridianTop", map));
        Object[] objArr = new Object[4];
        objArr[0] = "upd";
        ArrayList arrayList4 = new ArrayList();
        Map mapH0 = H0(String.valueOf(linkedHashMap.getOrDefault("source_user_general_id", "")), map);
        if (mapH0 != null) {
            arrayList4.add(mapH0);
        }
        objArr[1] = arrayList4;
        objArr[2] = "add";
        objArr[3] = new ArrayList();
        linkedHashMap2.put("MeridianTop", p5.z0("del", arrayList3, objArr));
        if (Boolean.TRUE.equals(linkedHashMap.get("result"))) {
            T("General", map);
            T("Skill", map);
            T("TeamGeneral", map);
            T("Item", map);
            T("MeridianTop", map);
        }
        return linkedHashMap2;
    }

    public static Map H0(String str, Map map) {
        if (str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("MeridianTop", map)) {
            if (c.a.B(map2, "user_general_id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static boolean H1(String str) {
        String lowerCase = str == null ? "" : str.trim().toLowerCase(Locale.ROOT);
        String[] strArr = x;
        for (int i2 = 0; i2 < 2; i2++) {
            String str2 = strArr[i2];
            if (lowerCase.equals(str2)) {
                return true;
            }
            if (lowerCase.endsWith("." + str2)) {
                return true;
            }
        }
        return false;
    }

    public static int H2(Map map) {
        if (map == null) {
            return 0;
        }
        int iW = W(L0(map.get("skill_id"), map.get("id"), map.get("skill_code")));
        if (r1(iW)) {
            return iW;
        }
        int iE = c.a.e(map, "skill_type", 0);
        if (r1(iE)) {
            return iE;
        }
        return 0;
    }

    public static LinkedHashMap I(Map map, LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        Iterator it = J2(linkedHashMap.get("changed_general_pk_ids")).iterator();
        while (it.hasNext()) {
            Map mapB0 = B0((String) it.next(), w1.f0("General", map));
            if (mapB0 != null && !arrayList.contains(mapB0)) {
                arrayList.add(mapB0);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = J2(linkedHashMap.get("changed_equipment_pk_ids")).iterator();
        while (it2.hasNext()) {
            Map mapB1 = B0((String) it2.next(), w1.f0("Equipment", map));
            if (mapB1 != null && !arrayList2.contains(mapB1)) {
                arrayList2.add(mapB1);
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("General", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()));
        linkedHashMap2.put("Equipment", p5.z0("del", new ArrayList(), "upd", arrayList2, "add", new ArrayList()));
        linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", p5.c0(w1.f0("TeamGeneral", map), map), "add", new ArrayList()));
        return linkedHashMap2;
    }

    public static ArrayList I0(String str, ArrayList arrayList, Map map) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map mapZ0 = z0((String) it.next(), w1.f0(str, map));
            if (mapZ0 != null) {
                arrayList2.add(mapZ0);
            }
        }
        return arrayList2;
    }

    public static void I1(ArrayList arrayList, Map map, LinkedHashMap linkedHashMap) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map mapE0 = E0((String) it.next(), map);
            if (mapE0 != null) {
                arrayList2.add(mapE0);
            }
        }
        linkedHashMap.put("General", e0(arrayList2));
        linkedHashMap.put("TeamGeneral", e0(new ArrayList(w1.f0("TeamGeneral", map))));
    }

    public static int I2(Map map) {
        return Math.max(Math.max(Math.max(Math.max(1, m1(0, "insight_level", map)), m1(0, "general_star", map)), m1(0, "star_level", map)), m1(0, "breachLevel", map));
    }

    public static LinkedHashMap J(Map map, LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        Object obj = linkedHashMap.get("changed_general_pk_ids");
        ArrayList arrayList2 = new ArrayList();
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList2.add(String.valueOf(it.next()));
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Map mapC0 = C0((String) it2.next(), w1.f0("General", map));
            if (mapC0 != null && !arrayList.contains(mapC0)) {
                arrayList.add(mapC0);
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("General", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()));
        linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", map)), "add", new ArrayList()));
        if (Boolean.TRUE.equals(linkedHashMap.get("buddy_changed"))) {
            linkedHashMap2.put("BuddyGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList(w1.f0("BuddyGeneral", map))));
        }
        return linkedHashMap2;
    }

    public static Map J0(String str, Map map) {
        if (str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("GeneralSoul", map)) {
            if (c.a.A(map2, "general_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static ArrayList J1(Map map) {
        ArrayList arrayList = new ArrayList();
        Object obj = map.get("Item");
        if (!(obj instanceof Map)) {
            if (obj instanceof List) {
            }
            return arrayList;
        }
        Map map2 = (Map) obj;
        j(map2.get("add"), arrayList);
        j(map2.get("upd"), arrayList);
        obj = map2.get("update_list");
        j(obj, arrayList);
        return arrayList;
    }

    public static ArrayList J2(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (!(obj instanceof List)) {
            return arrayList;
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next()));
        }
        return arrayList;
    }

    public static LinkedHashMap K(Map map, LinkedHashMap linkedHashMap) {
        ArrayList arrayList;
        ArrayList arrayList2;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
        ArrayList arrayList3 = new ArrayList();
        Object obj = linkedHashMap.get("changed_skill_ids");
        if (obj instanceof List) {
            ArrayList arrayList4 = new ArrayList();
            for (Object obj2 : (List) obj) {
                if (obj2 != null && !String.valueOf(obj2).isEmpty()) {
                    arrayList4.add(String.valueOf(obj2));
                }
            }
            arrayList = arrayList4;
        } else {
            arrayList = new ArrayList();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map mapD0 = D0((String) it.next(), w1.f0("Skill", map));
            if (mapD0 != null) {
                arrayList3.add(mapD0);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Object obj3 = linkedHashMap.get("changed_general_pk_ids");
        if (obj3 instanceof List) {
            ArrayList arrayList6 = new ArrayList();
            for (Object obj4 : (List) obj3) {
                if (obj4 != null && !String.valueOf(obj4).isEmpty()) {
                    arrayList6.add(String.valueOf(obj4));
                }
            }
            arrayList2 = arrayList6;
        } else {
            arrayList2 = new ArrayList();
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Map mapD1 = D0((String) it2.next(), w1.f0("General", map));
            if (mapD1 != null) {
                arrayList5.add(mapD1);
            }
        }
        linkedHashMap2.put("General", p5.z0("del", new ArrayList(), "upd", arrayList5, "add", new ArrayList()));
        linkedHashMap2.put("Skill", p5.z0("del", new ArrayList(), "upd", arrayList3, "add", new ArrayList()));
        linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", p5.c0(w1.f0("TeamGeneral", map), map), "add", new ArrayList()));
        return linkedHashMap2;
    }

    public static Map K0(String str, Map map) {
        for (Map map2 : w1.f0("GeneralSoul", map)) {
            if (c.a.A(map2, "general_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static LinkedHashMap K1(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map map2 : w1.f0("General", map)) {
            String strQ2 = Q2("pk_id", "", map2);
            if (!strQ2.isEmpty()) {
                linkedHashMap.put(strQ2, Q2("general_naturalskill_id", "", map2));
            }
        }
        return linkedHashMap;
    }

    public static ArrayList K2(String str, LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get(str);
        if (!(obj instanceof List)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : (List) obj) {
            if (obj2 != null && !String.valueOf(obj2).isEmpty()) {
                arrayList.add(String.valueOf(obj2));
            }
        }
        return arrayList;
    }

    public static LinkedHashMap L(String str, Map map) {
        String str2;
        Object obj;
        boolean z;
        ArrayList<Map> arrayListY = Y(w1.f0("General", map));
        ArrayList<Map> arrayListY2 = Y(w1.f0("TeamGeneral", map));
        if (arrayListY.isEmpty()) {
            Double dValueOf = Double.valueOf(100.0d);
            Double dValueOf2 = Double.valueOf(20.0d);
            Double dValueOf3 = Double.valueOf(10.0d);
            str2 = "pk_id";
            obj = "1";
            arrayListY.add(p5.z0(str2, obj, "general_id", "101001", "level", 1, "name", "PlayerGeneral", "attr_hp", dValueOf, "attr_attack", dValueOf2, "attr_defense", dValueOf3, "attr_wisdom", dValueOf3, "fighting", Double.valueOf(80.0d)));
        } else {
            str2 = "pk_id";
            obj = "1";
        }
        if (arrayListY2.isEmpty()) {
            Map map2 = (Map) arrayListY.get(0);
            arrayListY2.add(p5.z0(str2, obj, "general_id", String.valueOf(map2.get("general_id")), "general_pk_id", String.valueOf(map2.get(str2)), "position", 1));
        }
        for (Map map3 : arrayListY) {
            P1(map3, "attr_hp", "hp", 100.0d);
            P1(map3, "attr_attack", "atk", 20.0d);
            P1(map3, "attr_defense", "def", 10.0d);
            P1(map3, "attr_wisdom", "wis", 10.0d);
            P1(map3, "fighting", "fighting", 80.0d);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map map4 : arrayListY2) {
            String strN2 = N2("general_pk_id", N2("user_general_id", "", map4), map4);
            if (!strN2.isEmpty()) {
                linkedHashSet.add(strN2);
            }
        }
        if (linkedHashSet.isEmpty()) {
            Iterator it = arrayListY.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(String.valueOf(((Map) it.next()).get(str2)));
            }
        }
        do {
            z = false;
            for (Map map5 : arrayListY) {
                String strN3 = N2("major_pk_id", "", map5);
                String strN4 = N2(str2, "", map5);
                if (!strN4.isEmpty() && linkedHashSet.contains(strN3) && linkedHashSet.add(strN4)) {
                    z = true;
                }
            }
        } while (z);
        ArrayList arrayList = new ArrayList();
        for (Map map6 : arrayListY) {
            if (linkedHashSet.contains(N2(str2, N2("general_pk_id", "", map6), map6))) {
                arrayList.add(map6);
            }
        }
        ArrayList arrayListU0 = u0(map, "Skill", linkedHashSet);
        ArrayList arrayListU1 = u0(map, "Equipment", linkedHashSet);
        ArrayList arrayListY3 = Y(w1.f0("Combat", map));
        String strN5 = N2("player_id", N2("uid", "100001", map), map);
        if (str != null && !str.isEmpty()) {
            strN5 = str;
        }
        String strN6 = N2("user_nickname", N2("nickname", N2("nick", "Player", map), map), map);
        String strN7 = N2("general_skin", N2("user_general_skin", arrayList.isEmpty() ? "101001" : String.valueOf(((Map) arrayList.get(0)).getOrDefault("general_id", "101001")), map), map);
        int iJ1 = j1(j1(1, "player_level", map), "user_level", map);
        Iterator it2 = arrayList.iterator();
        double d2 = 0.0d;
        double dG0 = 0.0d;
        while (it2.hasNext()) {
            dG0 = g0((Map) it2.next(), "fighting", d2) + dG0;
            d2 = 0.0d;
        }
        double dG1 = g0(map, "user_fighting", dG0);
        return A(p5.z0("player_id", strN5, "user_id", strN5, "uid", strN5, "account_uid", strN5, "nickname", strN6, "nick", strN6, "nickName", strN6, "roleName", strN6, "user_nickname", strN6, "user_name", strN6, "player_level", Integer.valueOf(iJ1), "user_level", Integer.valueOf(iJ1), "user_vip_level", Integer.valueOf(j1(0, "user_vip_level", map)), "fightPoint", Double.valueOf(dG1), "fighting", Double.valueOf(dG1), "server_id", Integer.valueOf(j1(1, "server_id", map)), "ladder_rank", Integer.valueOf(j1(0, "ladder_rank", map)), "rank_name", N2("rank_name", "", map), "general_id", strN7, "general_skin", strN7, "user_general_skin", strN7, "head", strN7, "avatar", strN7), arrayList, arrayListY2, arrayListU0, arrayListY3, arrayListU1);
    }

    public static String L0(Object... objArr) {
        for (Object obj : objArr) {
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                if (!strValueOf.isEmpty() && !"null".equalsIgnoreCase(strValueOf)) {
                    return strValueOf;
                }
            }
        }
        return "";
    }

    public static int L1(Map map, Map map2) {
        if (map2 == null) {
            return 0;
        }
        String strM2 = M2("pk_id", M2("general_pk_id", "", map2), map2);
        String strM3 = M2("general_naturalskill_id", "", map2);
        Map map3 = null;
        for (Map map4 : w1.f0("Skill", map)) {
            if (strM2.equals(M2("general_pk_id", "", map4)) && !s1(map4)) {
                if (map3 == null) {
                    map3 = map4;
                }
                String strM4 = M2("pk_id", "", map4);
                if ((!strM3.isEmpty() && strM3.equals(strM4)) || t1(map2, map4)) {
                    return H2(map4);
                }
            }
        }
        Map mapJ0 = w1.a1(null).J0(M2("general_id", M2("id", "", map2), map2));
        if (mapJ0 != null) {
            int iW = W(M2("general_naturalskill_id", "", mapJ0));
            if (r1(iW)) {
                return iW;
            }
        }
        return H2(map3);
    }

    public static String L2(String str, String str2, LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get(str);
        if (obj == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) ? str2 : strValueOf;
    }

    public static Type M(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new c.b(M(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new c.c(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new c.b(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new c.d(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static String M0(Map map, String... strArr) {
        for (String str : strArr) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    public static int M1(int i2, Context context, String str) {
        int iI2;
        int iH0;
        if (!o1(str)) {
            int iI3 = i2(i2, context, str);
            int iMax = Math.max(0, i2);
            do {
                iMax++;
                if (iMax > 15) {
                    return iI3;
                }
                iI2 = i2(iMax, context, str);
            } while (iI2 <= iI3);
            return iI2;
        }
        boolean zP1 = p1(str);
        int iH1 = h0(i2, context, zP1);
        int iMax2 = Math.max(0, i2);
        do {
            iMax2++;
            if (iMax2 > 15) {
                return iH1;
            }
            iH0 = h0(iMax2, context, zP1);
        } while (iH0 <= iH1);
        return iH0;
    }

    public static String M2(String str, String str2, Map map) {
        if (map == null) {
            return str2;
        }
        String strL0 = L0(map.get(str));
        return strL0.isEmpty() ? str2 : strL0;
    }

    public static void N(Type type) {
        p5.v(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    public static String N0(Map map, String... strArr) {
        for (String str : strArr) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    public static int N1(int i2, Context context, String str) {
        if (!o1(str)) {
            int iI2 = i2(i2, context, str);
            for (int iMax = Math.max(0, i2) + 1; iMax <= 15; iMax++) {
                if (i2(iMax, context, str) > iI2) {
                    return iMax;
                }
            }
            return Math.max(1, i2);
        }
        boolean zP1 = p1(str);
        int iH0 = h0(i2, context, zP1);
        for (int iMax2 = Math.max(0, i2) + 1; iMax2 <= 15; iMax2++) {
            if (h0(iMax2, context, zP1) > iH0) {
                return iMax2;
            }
        }
        return Math.max(1, i2);
    }

    public static String N2(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return strValueOf.isEmpty() ? str2 : strValueOf;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    public static ArrayList O(long j2, String str, Map map) {
        boolean z;
        f1 f1Var;
        ArrayList arrayList = new ArrayList();
        if (!"0".equals(str)) {
            f1[] f1VarArrValues = f1.values();
            int length = f1VarArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    f1Var = null;
                    break;
                }
                f1Var = f1VarArrValues[i2];
                if (f1Var.f832a.equals(str)) {
                    break;
                }
                i2++;
            }
            z = f1Var != null;
        }
        if (!z) {
            return arrayList;
        }
        for (Map map2 : W2(map)) {
            r2(j2, map2);
            if (h1(map2.get("training_status"), 1) == 0 && ("0".equals(str) || c.a.A(map2, "general_leader_id", str))) {
                arrayList.add(map2);
            }
        }
        arrayList.sort(Comparator.comparingLong(new e1()));
        return arrayList;
    }

    public static String O0(Map map, String... strArr) {
        for (String str : strArr) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    public static String O1(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty() || "null".equalsIgnoreCase(strTrim)) {
            return null;
        }
        return strTrim;
    }

    public static String O2(String str, String str2, Map map) {
        Object obj = map.get(str);
        return (obj == null || String.valueOf(obj).isEmpty()) ? str2 : String.valueOf(obj);
    }

    public static double P(double d2, double d3) {
        if (d2 >= 0.0d) {
            return d2;
        }
        return -Math.min(Math.abs(d2), Math.max(0.0d, d3));
    }

    public static String P0(Map map, String... strArr) {
        for (String str : strArr) {
            String strU1 = U1(str, "", map);
            if (!strU1.isEmpty()) {
                return strU1;
            }
        }
        return "";
    }

    public static void P1(Map map, String str, String str2, double d2) {
        double dG0 = g0(map, str, g0(map, str2, d2));
        map.put(str, Double.valueOf(dG0));
        map.put(str2, Double.valueOf(dG0));
    }

    public static String P2(String str, String str2, Map map) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null || String.valueOf(obj).isEmpty()) ? str2 : String.valueOf(obj);
    }

    public static void Q(String str, Map map) {
        map.remove("culture_attr_".concat(str));
        map.remove("cultivate_attr_".concat(str));
    }

    public static String Q0(Map map, String... strArr) {
        for (String str : strArr) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    public static LinkedHashMap Q1(LinkedHashMap linkedHashMap, boolean z) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        String strL2 = L2("player_id", L2("user_id", "", linkedHashMap2), linkedHashMap2);
        String strL3 = L2("nickname", L2("user_nick", L2("user_nickname", "Player", linkedHashMap2), linkedHashMap2), linkedHashMap2);
        int iE1 = e1(e1(1, "user_level", linkedHashMap2), "player_level", linkedHashMap2);
        String strL4 = L2("general_id", L2("general_skin", "112001", linkedHashMap2), linkedHashMap2);
        linkedHashMap2.put("player_id", strL2);
        linkedHashMap2.put("user_id", strL2);
        linkedHashMap2.put("uid", strL2);
        linkedHashMap2.put("nickname", strL3);
        linkedHashMap2.put("user_nickname", strL3);
        linkedHashMap2.put("user_nick", strL3);
        linkedHashMap2.put("name", strL3);
        c.a.z(linkedHashMap2, "player_name", strL3, iE1, "player_level", iE1, "user_level");
        linkedHashMap2.put("level", Integer.valueOf(iE1));
        linkedHashMap2.put("general_id", strL4);
        linkedHashMap2.put("general_skin", strL4);
        linkedHashMap2.put("user_general_skin", strL4);
        linkedHashMap2.put("server_id", Integer.valueOf(e1(1, "server_id", linkedHashMap2)));
        if (z) {
            linkedHashMap2.put("player_type", 1);
            linkedHashMap2.put("to_attack", 1);
        }
        return linkedHashMap2;
    }

    public static String Q2(String str, String str2, Map map) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null || String.valueOf(obj).isEmpty()) ? str2 : String.valueOf(obj);
    }

    public static void R(Map map) {
        map.put("major_pk_id", "");
        map.put("position", "0");
        map.put("lieutenant_skill_id", "");
        map.put("skill_type_lieutenant", "");
        map.put("ls_type", "0");
        map.put("ls_value", "0");
    }

    public static String R0(Map map, String... strArr) {
        for (String str : strArr) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    public static Integer R1(String str) {
        if (str != null && str.matches("\\d+")) {
            try {
                return Integer.valueOf(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public static String R2(String str, String str2, Map map) {
        Object obj = map.get(str);
        return (obj == null || String.valueOf(obj).isEmpty()) ? str2 : String.valueOf(obj);
    }

    public static int S(String str, Map map) {
        List listF0 = w1.f0("GeneralSoul", map);
        int iMax = 0;
        for (int size = listF0.size() - 1; size >= 0; size--) {
            Map map2 = (Map) listF0.get(size);
            if (str.equals(String.valueOf(map2.getOrDefault("general_id", map2.getOrDefault("id", map2.get("pk_id")))))) {
                iMax += Math.max(0, w1.l2(String.valueOf(map2.getOrDefault("num", map2.getOrDefault("item_num", "0"))), 0));
                listF0.remove(size);
            }
        }
        return iMax;
    }

    public static String S0(Map map, String... strArr) {
        for (String str : strArr) {
            String str2 = (String) map.get(str);
            if (str2 != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return "";
    }

    public static String S1(Map map) {
        String strP2 = P2("general_pk_id", P2("user_general_id", P2("general_id", "", map), map), map);
        return ("0".equals(strP2) || "null".equalsIgnoreCase(strP2)) ? "" : strP2;
    }

    public static String S2(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) ? str2 : strValueOf;
    }

    public static void T(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("del");
            if (obj2 instanceof List) {
                ((List) obj2).clear();
            }
        }
    }

    public static String T0(Map map) {
        Object obj = map.get("general_pk_id");
        if (obj == null) {
            obj = map.get("pk_id");
        }
        if (obj == null) {
            obj = map.get("general_id");
        }
        return obj == null ? "" : String.valueOf(obj);
    }

    public static LinkedHashMap T1(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        LinkedHashMap linkedHashMapQ1 = Q1(linkedHashMap, false);
        LinkedHashMap linkedHashMapQ2 = Q1(linkedHashMap2, true);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("player", linkedHashMapQ1);
        linkedHashMap3.put("enemy", linkedHashMapQ2);
        String[] strArr = {"player_id", "user_id", "uid", "player_type", "to_attack", "nickname", "user_nickname", "user_nick", "name", "player_name", "player_level", "user_level", "level", "general_id", "general_skin", "user_general_skin", "server_id"};
        for (int i2 = 0; i2 < 17; i2++) {
            String str = strArr[i2];
            linkedHashMap3.put(str, linkedHashMapQ2.get(str));
        }
        return linkedHashMap3;
    }

    public static LinkedHashMap T2() {
        Boolean bool = Boolean.TRUE;
        return p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static LinkedHashMap U(int i2) {
        return p5.z0("pk_id", String.valueOf(i2), "id", String.valueOf(i2), "combat_type", String.valueOf(i2), "type", String.valueOf(i2), "level", "1", "combat_level", "1", "exp", "0", "combat_exp", "0", "open_level", "1", "is_open", Boolean.TRUE);
    }

    public static double U0(int i2) {
        double dDoubleValue;
        if (i2 >= 14) {
            dDoubleValue = 0.25d;
        } else if (i2 >= 12) {
            dDoubleValue = 0.18d;
        } else if (i2 >= 10) {
            dDoubleValue = 0.17d;
        } else if (i2 >= 8) {
            dDoubleValue = 0.16d;
        } else if (i2 >= 7) {
            dDoubleValue = 0.15d;
        } else {
            dDoubleValue = i2 >= 1 ? 0.05d : 0.0d;
        }
        Map mapD3 = d3(i2, null);
        if (mapD3 == null) {
            return dDoubleValue;
        }
        Object obj = mapD3.get("general_more_exp");
        if (obj instanceof Number) {
            dDoubleValue = ((Number) obj).doubleValue();
        } else if (obj instanceof String) {
            try {
                dDoubleValue = Double.parseDouble(((String) obj).trim());
            } catch (Exception unused) {
            }
        }
        return Math.max(0.0d, dDoubleValue);
    }

    public static String U1(String str, String str2, Map map) {
        String str3 = (String) map.get(str);
        return (str3 == null || str3.isEmpty()) ? str2 : str3;
    }

    public static LinkedHashMap U2(LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get("culture_info");
        Boolean bool = Boolean.TRUE;
        return p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]), "info", linkedHashMap, "attr_info", linkedHashMap, "culture_info", obj, "cultivate_info", linkedHashMap);
    }

    public static LinkedHashMap V(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map == null) {
            return linkedHashMap;
        }
        String[] strArr = {"ret", "code", "result", "msg", "error_code"};
        for (int i2 = 0; i2 < 5; i2++) {
            String str = strArr[i2];
            if (map.containsKey(str)) {
                linkedHashMap.put(str, map.get(str));
            }
        }
        Object obj = map.get("return_info");
        if (obj instanceof Map) {
            linkedHashMap.put("return_info", obj);
        }
        Object obj2 = map.get("other_player_data");
        if (obj2 instanceof Map) {
            linkedHashMap.put("other_player_data", obj2);
        }
        Object linkedHashMap2 = map.get("info");
        if (!(linkedHashMap2 instanceof Map)) {
            linkedHashMap2 = new LinkedHashMap();
        }
        linkedHashMap.put("info", linkedHashMap2);
        return linkedHashMap;
    }

    public static String V1(String str, String str2, Map map) {
        String str3 = (String) map.get(str);
        return (str3 == null || str3.isEmpty()) ? str2 : str3;
    }

    public static LinkedHashMap V2() {
        Boolean bool = Boolean.TRUE;
        return p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static int W(String str) {
        Map mapK1;
        if (str == null || str.isEmpty() || "0".equals(str) || (mapK1 = w1.a1(null).k1(str)) == null) {
            return 0;
        }
        int iE = c.a.e(mapK1, "skill_type", 0);
        if (r1(iE)) {
            return iE;
        }
        return 0;
    }

    public static String W1(String str, String str2, Map map) {
        String str3 = (String) map.get(str);
        return str3 == null ? str2 : str3;
    }

    public static List W2(Map map) {
        Object obj = map.get("TrainingInfo");
        if (!(obj instanceof Map)) {
            ArrayList arrayList = new ArrayList();
            map.put("TrainingInfo", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList));
            return arrayList;
        }
        Map map2 = (Map) obj;
        Object obj2 = map2.get("add");
        if (obj2 instanceof List) {
            return (List) obj2;
        }
        ArrayList arrayListO = c.a.o(map2, "add");
        if (!(map2.get("del") instanceof List)) {
            map2.put("del", new ArrayList());
        }
        if (!(map2.get("upd") instanceof List)) {
            map2.put("upd", new ArrayList());
        }
        return arrayListO;
    }

    public static void X(String str, Map map, Map map2, String... strArr) {
        for (String str2 : strArr) {
            Object obj = map.get(str2);
            if (obj != null && !String.valueOf(obj).isEmpty()) {
                map2.put(str, obj);
                return;
            }
        }
    }

    public static Type X0(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i2 = 0; i2 < length; i2++) {
                Class<?> cls3 = interfaces[i2];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i2];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return X0(cls.getGenericInterfaces()[i2], interfaces[i2], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return X0(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static int X1(Object obj, int i2) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt(((String) obj).trim());
            } catch (Exception unused) {
            }
        }
        return i2;
    }

    public static t6 X2(Map map, int i2, long j2, int i3, com.sgscq.vpn.handler.q qVar) {
        LinkedHashMap linkedHashMapZ0;
        if (i2 <= 0) {
            return new t6(0, new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        int iMax = Math.max(0, h1(map.get("training_power_progress"), 0)) + i2;
        int i4 = 0;
        while (iMax >= 250) {
            double dA = qVar.a();
            f1 f1Var = dA < 0.3333333333333333d ? f1.SUN_JIAN : dA < 0.6666666666666666d ? f1.ZHAO_YUN : f1.LV_BU;
            int iMax2 = Math.max(100, i3);
            List<Map> listW2 = W2(map);
            int i5 = 1;
            if (listW2.size() >= 30) {
                Map map2 = null;
                for (Map map3 : listW2) {
                    if (h1(map3.get("training_status"), i5) == 2 && (map2 == null || E1(map3.get("created_at")) < E1(map2.get("created_at")))) {
                        map2 = map3;
                    }
                    i5 = 1;
                }
                if (map2 == null) {
                    linkedHashMapZ0 = null;
                } else {
                    listW2.remove(map2);
                    int iH1 = h1(map.get("training_sequence"), 0) + 1;
                    map.put("training_sequence", Integer.valueOf(iH1));
                    long j3 = f1Var.f835d;
                    linkedHashMapZ0 = p5.z0("user_training_id", "training_" + j2 + "_" + iH1, "general_leader_id", f1Var.f832a, "created_at", Long.valueOf(j2), "finish_at", Long.valueOf(j3 + j2), "to_end_time", Long.valueOf(j3), "training_status", 1, "exp", Integer.valueOf(Math.max(100, f1Var.f836e * iMax2)), "magatama_need", Integer.valueOf(f1Var.f837f), "speak_words_desc", f1Var.f838g, "training_end_speak_words", "练兵已成，请主公检阅。", "description", f1Var.f839h, "card_name", f1Var.f833b);
                    listW2.add(linkedHashMapZ0);
                }
            } else {
                int iH2 = h1(map.get("training_sequence"), 0) + 1;
                map.put("training_sequence", Integer.valueOf(iH2));
                long j4 = f1Var.f835d;
                linkedHashMapZ0 = p5.z0("user_training_id", "training_" + j2 + "_" + iH2, "general_leader_id", f1Var.f832a, "created_at", Long.valueOf(j2), "finish_at", Long.valueOf(j4 + j2), "to_end_time", Long.valueOf(j4), "training_status", 1, "exp", Integer.valueOf(Math.max(100, f1Var.f836e * iMax2)), "magatama_need", Integer.valueOf(f1Var.f837f), "speak_words_desc", f1Var.f838g, "training_end_speak_words", "练兵已成，请主公检阅。", "description", f1Var.f839h, "card_name", f1Var.f833b);
                listW2.add(linkedHashMapZ0);
            }
            if (linkedHashMapZ0 == null) {
                break;
            }
            iMax -= 250;
            i4++;
            String str = f1Var.f832a;
            arrayList.add(p5.z0("type", "5", "num", "1", "info", p5.z0("card", str, "icon", str, "pk_id", String.valueOf(linkedHashMapZ0.get("user_training_id")), "num", "1", "title", f1Var.f834c.replace("meeting_", "meeting_t"), "talking", f1Var.f834c, "name", f1Var.f832a + "01")));
        }
        map.put("training_power_progress", Integer.valueOf(iMax));
        return new t6(i4, arrayList);
    }

    public static ArrayList Y(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new LinkedHashMap((Map) it.next()));
        }
        return arrayList;
    }

    public static Class Y0(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            p5.v(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) Y0(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return Y0(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static boolean Y1(String str, Map map, Map map2, SharedPreferences sharedPreferences) {
        boolean z;
        if (map2 == null) {
            z = false;
        } else {
            String strO1 = O1((String) map2.get("step"));
            String strO2 = O1((String) map2.get("freshman_step"));
            String strO3 = O1((String) map2.get("server_step"));
            String strO4 = O1((String) map2.get("guide_step"));
            if (strO2 == null) {
                strO2 = strO1;
            }
            if (strO3 == null) {
                strO3 = strO1;
            }
            if (strO4 != null) {
                strO1 = strO4;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (strO2 != null) {
                linkedHashMap.put("freshman_step", strO2);
            }
            if (strO3 != null) {
                linkedHashMap.put("server_step", strO3);
            }
            if (strO1 != null) {
                linkedHashMap.put("guide_step", strO1);
            }
            String[] strArr = {"freshman_step", "server_step", "guide_step"};
            Integer num = null;
            for (int i2 = 0; i2 < 3; i2++) {
                Object obj = map.get(strArr[i2]);
                Integer numR1 = R1(obj == null ? null : String.valueOf(obj));
                if (numR1 != null && (num == null || numR1.intValue() > num.intValue())) {
                    num = numR1;
                }
            }
            boolean z2 = false;
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Integer numR2 = R1((String) entry.getValue());
                if (num == null || numR2 == null || numR2.intValue() >= num.intValue()) {
                    map.put((String) entry.getKey(), entry.getValue());
                    Integer numR3 = R1((String) entry.getValue());
                    if (numR3 != null && (num == null || numR3.intValue() > num.intValue())) {
                        num = numR3;
                    }
                    z2 = true;
                }
            }
            String strO5 = O1((String) map2.get("guide_completed"));
            if (strO5 != null) {
                map.put("guide_completed", Boolean.valueOf("true".equalsIgnoreCase(strO5)));
                z = true;
            } else {
                z = z2;
            }
        }
        if (!z || sharedPreferences == null || str == null || str.isEmpty()) {
            return z;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        g2("freshman_step", linkedHashMap2, map);
        g2("server_step", linkedHashMap2, map);
        g2("guide_step", linkedHashMap2, map);
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            StringBuilder sbB = a.b0.b("guide_", str, "_");
            sbB.append((String) entry2.getKey());
            editorEdit.putString(sbB.toString(), (String) entry2.getValue());
        }
        if (map.containsKey("guide_completed")) {
            editorEdit.putBoolean(com.sgscq.vpn.handler.l.a("guide_", str, "_guide_completed"), Boolean.TRUE.equals(map.get("guide_completed")));
        }
        editorEdit.apply();
        return true;
    }

    public static String Y2(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static ArrayList Z(List list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (map != null) {
                arrayList.add(new LinkedHashMap(map));
            }
        }
        return arrayList;
    }

    public static void Z1(String str, LinkedHashMap linkedHashMap, Map map) {
        Object obj = map.get("base_".concat(str));
        if (obj != null) {
            linkedHashMap.put("base_".concat(str), obj);
        }
    }

    public static LinkedHashMap Z2() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.FALSE, "msg", "功能暂未开放", "error_code", 1);
    }

    public static double a(Map map, String str, double d2) {
        double dL2 = l2(map.get("attr_".concat(str)));
        double dP = P(d2, dL2);
        if (dP == 0.0d) {
            return 0.0d;
        }
        String strConcat = "culture_attr_".concat(str);
        map.put(strConcat, Double.valueOf(l2(map.get(strConcat)) + dP));
        String strConcat2 = "base_".concat(str);
        if (map.containsKey(strConcat2)) {
            map.put(strConcat2, Double.valueOf(Math.max(0.0d, l2(map.get(strConcat2)) + dP)));
        }
        double dMax = Math.max(0.0d, dL2 + dP);
        map.put("attr_".concat(str), Double.valueOf(dMax));
        map.put("general_" + str + "_attr", Double.valueOf(dMax));
        map.put("general_".concat(str), Double.valueOf(dMax));
        return dP;
    }

    public static int a0(Map map, boolean z) {
        if (map == null) {
            return 0;
        }
        String strB = c7.b();
        String str = z ? "elite_dungeon_times_buy_day" : "dungeon_times_buy_day";
        String str2 = z ? "elite_dungeon_times_buy_used" : "dungeon_times_buy_used";
        if (c.a.B(map, str, "", strB)) {
            return Math.max(0, X1(map.get(str2), 0));
        }
        return 0;
    }

    public static Type a1(Type type, Class cls, Class cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        p5.v(cls2.isAssignableFrom(cls));
        return z2(type, cls, X0(type, cls, cls2), new HashMap());
    }

    public static void a2(String str, LinkedHashMap linkedHashMap, Map map) {
        Object obj = map.get("attr_".concat(str));
        if (obj == null) {
            obj = map.get("general_".concat(str));
        }
        if (obj == null) {
            obj = map.get("general_" + str + "_attr");
        }
        if (obj == null) {
            return;
        }
        linkedHashMap.put("attr_".concat(str), obj);
        linkedHashMap.put("general_".concat(str), obj);
        linkedHashMap.put("general_" + str + "_attr", obj);
    }

    public static String[] a3() {
        boolean zVerify;
        if (r != null) {
            return r;
        }
        byte[] bArr = f428p;
        byte[] bArr2 = f427o;
        byte[] bArr3 = new byte[97];
        for (int i2 = 0; i2 < 97; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2 % 8]);
        }
        String str = new String(bArr3, StandardCharsets.UTF_8);
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1PuQeMcKabRF0aPKGRcQp9QpaTr5lxrnyoWBt0dx4meKDnkkeIMVYfkbqChig8NRpdRtyP9WAEsTVtTkGlxMvX3rEP9jS/jkVU8TZZkZaPHQCkkgMx1yw6u+j3cBNUT4u4NqnrHi+ygleaaaB7ZqEh0wzL9zVwDzZV82dqXKp66N5HVwYuS7YVHw3n4Ij+vjTSoWc2UsZmCraOnl60ssHrZTFqbPdLX04v9HBPrW4gS+4Pa9a91oOYKvFvL7xZDqMabYjSVLxcfmPCQrjAua+1bukoW+Pj8gwPbz19UGWFJVO8gQfgmxLhmFgA9SQ9Lb4E33LSg3VHJAX23Md815UQIDAQAB", 0)));
            java.security.Signature signature = java.security.Signature.getInstance("SHA256withRSA");
            signature.initVerify(publicKeyGeneratePublic);
            signature.update(str.getBytes(StandardCharsets.UTF_8));
            zVerify = signature.verify(Base64.decode("w00MOvKxMJWMJ9P3//V/0Mua+e5XMtyv0q9AMKqxeYGIjpuYI6vhGJPmhg9FGvsFH6ijmKAUxE6r7AlDnc+55hDTfs5LLu3oopDyiJsFUEFstcAKi19/k6KS/WyvlDNNopSJHIAPw4g8E++RESOJmaYRVO37tf1iU4fC+d8djDIhUZaz7CP6ukyD7/ULAA+RGWGq6aack9QJNxg3IKdg3mRPfXyIZ3IX0zWgnwJdq6yBF15j9pkJv721CG16avM+Gg1hFw4Nj9l0TrNr+rZJkSd3eASi1vQjSyPr0FXOycoM0/ez3yu+4zhb9uNarW3DaZEaETrc0W6LWZGctTrbJg==", 0));
        } catch (Exception unused) {
            zVerify = false;
        }
        if (!zVerify) {
            r = new String[]{"", "", ""};
            return r;
        }
        byte[] bArr4 = f429q;
        byte[] bArr5 = new byte[6];
        for (int i3 = 0; i3 < 6; i3++) {
            bArr5[i3] = (byte) (bArr4[i3] ^ bArr2[i3 % 8]);
        }
        String[] strArr = new String[3];
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = i4 * 2;
            int i6 = bArr5[i5] & 255;
            strArr[i4] = str.substring(i6, (bArr5[i5 + 1] & 255) + i6);
        }
        r = strArr;
        return strArr;
    }

    public static void b(String str, ArrayList arrayList) {
        if (str.isEmpty() || arrayList.contains(str)) {
            return;
        }
        arrayList.add(str);
    }

    public static int b0(String str, Map map) {
        if (o1(str)) {
            return a0(map, p1(str));
        }
        String strH2 = h2(str);
        String strJ2 = j2(str);
        if (map == null || strH2.isEmpty() || strJ2.isEmpty()) {
            return 0;
        }
        if (c7.b().equals(String.valueOf(map.getOrDefault(strH2, "")))) {
            return Math.max(0, X1(map.get(strJ2), 0));
        }
        return 0;
    }

    public static Map b1(int i2, String str, String str2, Map map) {
        String strSubstring;
        boolean z;
        int iMax;
        List<Map> listF0 = w1.f0("EquipmentPiece", map);
        int i3 = 1;
        if (str2 != null && !str2.isEmpty()) {
            strSubstring = str2;
        } else if (str == null) {
            strSubstring = "";
        } else {
            strSubstring = (str.length() == 7 && str.startsWith("9")) ? str.substring(1) : str;
        }
        Map mapR = null;
        int i4 = -1;
        for (Map map2 : listF0) {
            if (map2 != null) {
                String[] strArr = {"pk_id", "id", "equipment_id", "equip_id", "item_id", "piece_id"};
                int i5 = 0;
                while (true) {
                    if (i5 >= 6) {
                        z = false;
                        break;
                    }
                    String strValueOf = String.valueOf(map2.getOrDefault(strArr[i5], ""));
                    if (!strValueOf.isEmpty() && ((!strSubstring.isEmpty() && strSubstring.equals(strValueOf)) || (!str.isEmpty() && str.equals(strValueOf)))) {
                        z = true;
                        break;
                    }
                    i5++;
                }
                if (z && (iMax = Math.max(Math.max(f1("num", map2), f1("item_num", map2)), f1("equipment_piece_num", map2))) > i4) {
                    mapR = map2;
                    i4 = iMax;
                }
            }
            i3 = 1;
        }
        int iMax2 = Math.max(i3, i2);
        if (mapR == null) {
            mapR = c.a.r("pk_id", strSubstring, "piece_id", str);
            mapR.put("num", 0);
            mapR.put("item_num", 0);
            listF0.add(mapR);
        }
        int iMax3 = Math.max(Math.max(f1("num", mapR), f1("item_num", mapR)), f1("equipment_piece_num", mapR)) + iMax2;
        mapR.put("id", strSubstring);
        mapR.put("equipment_id", strSubstring);
        mapR.put("equip_id", strSubstring);
        mapR.put("item_id", str);
        if (!mapR.containsKey("piece_id")) {
            mapR.put("piece_id", str);
        }
        mapR.put("num", Integer.valueOf(iMax3));
        mapR.put("item_num", Integer.valueOf(iMax3));
        if (mapR.containsKey("equipment_piece_num")) {
            mapR.put("equipment_piece_num", Integer.valueOf(iMax3));
        }
        c.a.t(15, mapR, "item_type", 8, "type");
        mapR.put("is_new", Boolean.TRUE);
        map.put("EquipmentPiece", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
        return mapR;
    }

    public static void b2(Map map, double d2) {
        String strValueOf = String.valueOf(Math.round(d2 * 100.0d) / 100.0d);
        map.put("fighting", strValueOf);
        map.put("fight_point", strValueOf);
        map.put("fighting_point", strValueOf);
        map.put("general_fighting", strValueOf);
        map.put("base_fighting", strValueOf);
    }

    public static boolean b3(Context context) throws CloneNotSupportedException {
        boolean z;
        Boolean bool = f422j;
        if (bool != null) {
            return bool.booleanValue();
        }
        byte[] bArrG2 = G2(context);
        int length = bArrG2.length;
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = true;
                break;
            }
            if (bArrG2[i2] != 0) {
                z = false;
                break;
            }
            i2++;
        }
        if (!z && Arrays.equals(bArrG2, f420h)) {
            z2 = true;
        }
        f422j = Boolean.valueOf(z2);
        return z2;
    }

    public static void c(String str, ArrayList arrayList) {
        if (str == null || str.isEmpty() || arrayList.contains(str)) {
            return;
        }
        arrayList.add(str);
    }

    public static ArrayList c0() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 <= 4; i2++) {
            arrayList.add(U(i2));
        }
        return arrayList;
    }

    public static Map c1(int i2, String str, Map map) {
        String strSubstring;
        if (str == null) {
            strSubstring = "";
        } else {
            strSubstring = (str.length() == 7 && str.startsWith("9")) ? str.substring(1) : str;
        }
        return b1(i2, str, strSubstring, map);
    }

    public static void c2(Map map, String str, double d2) {
        map.put("attr_".concat(str), Double.valueOf(d2));
        map.put("general_" + str + "_attr", Double.valueOf(d2));
        map.put("general_".concat(str), Double.valueOf(d2));
    }

    public static int c3(int i2) {
        if (i2 >= 14) {
            return 8;
        }
        if (i2 >= 12) {
            return 7;
        }
        if (i2 >= 10) {
            return 6;
        }
        if (i2 >= 9) {
            return 5;
        }
        if (i2 >= 8) {
            return 4;
        }
        if (i2 >= 7) {
            return 3;
        }
        if (i2 >= 6) {
            return 2;
        }
        return i2 >= 4 ? 1 : 0;
    }

    public static void d(String str, ArrayList arrayList) {
        if (str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str) || arrayList.contains(str)) {
            return;
        }
        arrayList.add(str);
    }

    public static List d0(String str, Map map) {
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            return new ArrayList();
        }
        Object obj2 = ((Map) obj).get("del");
        return obj2 instanceof List ? (List) obj2 : new ArrayList();
    }

    public static boolean d1(Object obj, String str) {
        if (!(obj instanceof List)) {
            return false;
        }
        for (Object obj2 : (List) obj) {
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("general_id");
                if (str.equals(obj3 != null ? obj3.toString() : null) && u1(map.get("status")) && u1(map.get("surrender_status"))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void d2(Map map, String str, double d2) {
        map.put("attr_".concat(str), Double.valueOf(d2));
        map.put("general_" + str + "_attr", Double.valueOf(d2));
        map.put("general_".concat(str), Double.valueOf(d2));
    }

    public static Map d3(int i2, Context context) {
        LinkedHashMap linkedHashMap = s;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
            if (context != null) {
                try {
                    String strA = com.sgscq.vpn.o0.a(context, "vip_levels.json");
                    LinkedHashMap linkedHashMapU1 = (strA == null || strA.isEmpty()) ? null : p5.u1(strA);
                    if (linkedHashMapU1 != null) {
                        for (Map.Entry entry : linkedHashMapU1.entrySet()) {
                            if (entry.getValue() instanceof Map) {
                                linkedHashMap.put((String) entry.getKey(), (Map) entry.getValue());
                            }
                        }
                    }
                } catch (Exception unused) {
                    linkedHashMap.clear();
                }
                if (!linkedHashMap.isEmpty()) {
                    s = linkedHashMap;
                }
            }
        }
        if (linkedHashMap.isEmpty()) {
            return null;
        }
        return (Map) linkedHashMap.get(String.valueOf(Math.max(-1, Math.min(14, i2 - 1))));
    }

    public static void e(Map map, String str, double d2) {
        if (d2 == 0.0d) {
            return;
        }
        String strValueOf = String.valueOf(Math.round((k2(str, map) + d2) * 100.0d) / 100.0d);
        map.put("attr_".concat(str), strValueOf);
        map.put("general_" + str + "_attr", strValueOf);
    }

    public static LinkedHashMap e0(ArrayList arrayList) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("del", new ArrayList());
        linkedHashMap.put("upd", arrayList);
        linkedHashMap.put("add", new ArrayList());
        return linkedHashMap;
    }

    public static int e1(int i2, String str, LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj == null) {
            return i2;
        }
        try {
            return Integer.parseInt(String.valueOf(obj));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static void e2(Map map, String str, double d2) {
        String strValueOf = String.valueOf(Math.round(d2 * 100.0d) / 100.0d);
        map.put("attr_".concat(str), strValueOf);
        map.put("general_" + str + "_attr", strValueOf);
        map.put("base_".concat(str), strValueOf);
    }

    public static LinkedHashMap e3(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String[] strArr = {"attack", "defense", "hp", "wisdom"};
        for (int i2 = 0; i2 < 4; i2++) {
            String str = strArr[i2];
            Object obj = map.get("base_" + str);
            if (obj == null || String.valueOf(obj).isEmpty()) {
                obj = map.get("attr_" + str);
            }
            linkedHashMap.put(str, Long.valueOf((long) Math.floor(l2(obj))));
        }
        return linkedHashMap;
    }

    public static void f(Map map, String str, String str2, String str3, HashSet hashSet) {
        for (Map map2 : w1.f0("General", map)) {
            if (str.equals(M2("major_pk_id", "", map2)) && !M2("pk_id", "", map2).equals(str2) && (str3 == null || !str3.equals(M2("position", "", map2)))) {
                int iL1 = L1(map, map2);
                if (r1(iL1)) {
                    hashSet.add(Integer.valueOf(iL1));
                }
            }
        }
    }

    public static double f0(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    public static int f1(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj == null) {
            return 0;
        }
        try {
            return Integer.parseInt(String.valueOf(obj).trim());
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static void f2(String str, HashMap map) {
        Object obj = map.get(str);
        if (obj == null || String.valueOf(obj).isEmpty() || "0".equals(String.valueOf(obj))) {
            map.put(str, "1");
        }
    }

    public static ArrayList f3(LinkedHashMap linkedHashMap, Map map) {
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMapE3 = e3(map);
        String[] strArr = {"attack", "defense", "hp", "wisdom"};
        for (int i2 = 0; i2 < 4; i2++) {
            String str = strArr[i2];
            long jLongValue = ((Long) linkedHashMap.getOrDefault(str, 0L)).longValue();
            arrayList.add(p5.z0("field", c.a.i("attr_", str), "val", Long.valueOf(((Long) linkedHashMapE3.getOrDefault(str, 0L)).longValue() - jLongValue)));
        }
        return arrayList;
    }

    public static void g(int i2, int i3, String str, Map map) {
        List<Map> listF0 = w1.f0("Item", map);
        for (Map map2 : listF0) {
            if (str.equals(String.valueOf(map2.getOrDefault("item_id", map2.get("id"))))) {
                int iMax = Math.max(0, i2) + A1(map2);
                map2.put("num", Integer.valueOf(iMax));
                map2.put("item_num", Integer.valueOf(iMax));
                map2.put("total_num", Integer.valueOf(iMax));
                map2.put("id", str);
                map2.put("item_id", str);
                map2.put("item_type", Integer.valueOf(i3));
                map2.put("type", String.valueOf(i3));
                return;
            }
        }
        int iMax2 = Math.max(0, i2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Item", map, linkedHashMap, "pk_id", "id", str);
        linkedHashMap.put("item_id", str);
        linkedHashMap.put("is_new", Boolean.TRUE);
        linkedHashMap.put("item_type", Integer.valueOf(i3));
        linkedHashMap.put("type", String.valueOf(i3));
        linkedHashMap.put("effect_time", 0);
        linkedHashMap.put("num", Integer.valueOf(iMax2));
        linkedHashMap.put("item_num", Integer.valueOf(iMax2));
        linkedHashMap.put("total_num", Integer.valueOf(iMax2));
        listF0.add(linkedHashMap);
    }

    public static double g0(Map map, String str, double d2) {
        if (map != null && map.get(str) != null) {
            try {
                return Double.parseDouble(String.valueOf(map.get(str)));
            } catch (Exception unused) {
            }
        }
        return d2;
    }

    public static int g1(int i2, String str, Map map) {
        return map == null ? i2 : c.a.e(map, str, i2);
    }

    public static void g2(String str, LinkedHashMap linkedHashMap, Map map) {
        String strO1;
        if (map.containsKey(str) && (strO1 = O1(String.valueOf(map.get(str)))) != null) {
            linkedHashMap.put(str, strO1);
        }
    }

    public static ArrayList h(String str, Map map) {
        boolean z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if ((str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) ? false : true) {
            linkedHashSet.add(str);
        }
        Map mapE0 = E0(str, map);
        if (mapE0 != null) {
            String strValueOf = String.valueOf(mapE0.getOrDefault("major_pk_id", ""));
            if ((strValueOf.isEmpty() || "0".equals(strValueOf) || "null".equalsIgnoreCase(strValueOf)) ? false : true) {
                linkedHashSet.add(strValueOf);
            }
        }
        Iterator it = w1.f0("BuddyGeneral", map).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (str.equals(T0((Map) it.next()))) {
                z = true;
                break;
            }
        }
        if (z) {
            Iterator it2 = w1.f0("TeamGeneral", map).iterator();
            while (it2.hasNext()) {
                String strT0 = T0((Map) it2.next());
                if ((strT0.isEmpty() || "0".equals(strT0) || "null".equalsIgnoreCase(strT0)) ? false : true) {
                    linkedHashSet.add(strT0);
                }
            }
        }
        return new ArrayList(linkedHashSet);
    }

    public static int h0(int i2, Context context, boolean z) {
        int i3;
        if (!z && i2 < 3) {
            return 0;
        }
        String str = z ? "elite_dungeon_buy_limit" : "dungeon_buy_privilege";
        if (!z) {
            i3 = i2 >= 13 ? 99 : 50;
        } else if (i2 >= 9) {
            i3 = 2;
        } else {
            i3 = i2 >= 5 ? 1 : 0;
        }
        Map mapD3 = d3(i2, context);
        return mapD3 == null ? i3 : Math.max(0, X1(mapD3.get(str), i3));
    }

    public static int h1(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static String h2(String str) {
        if ("600028".equals(str)) {
            return "power_buy_day";
        }
        if ("600029".equals(str)) {
            return "energy_buy_day";
        }
        return ("600018".equals(str) || "600100".equals(str)) ? "battle_buy_day" : "";
    }

    public static void i(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if ((obj2 instanceof Map) && !arrayList.contains(obj2)) {
                    arrayList.add((Map) obj2);
                }
            }
        }
    }

    public static boolean i0(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return Objects.equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return i0(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static int i1(int i2, String str, Map map) {
        return map == null ? i2 : c.a.e(map, str, i2);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00ca  */
    public static int i2(int i2, Context context, String str) {
        String str2;
        int i3;
        Map mapD3;
        int iMax = 99;
        if ("600030".equals(str)) {
            if (i2 < 6) {
                iMax = 0;
            }
        } else if (o1(str)) {
            iMax = h0(i2, context, p1(str));
        } else {
            if ("600028".equals(str)) {
                str2 = "item_power_limit";
            } else if ("600029".equals(str)) {
                str2 = "item_energy_limit";
            } else {
                str2 = ("600018".equals(str) || "600100".equals(str)) ? "item_battle_limit" : "";
            }
            if ("600028".equals(str) || "600029".equals(str)) {
                if (i2 >= 9) {
                    iMax = 46;
                } else if (i2 >= 7) {
                    iMax = 21;
                } else if (i2 >= 6) {
                    iMax = 6;
                } else if (i2 >= 5) {
                    iMax = 5;
                } else {
                    iMax = 4;
                    if (i2 < 4) {
                        iMax = 3;
                        if (i2 < 3) {
                            iMax = 2;
                            if (i2 < 2) {
                                iMax = 1;
                            }
                        }
                    }
                }
            } else if ("600018".equals(str) || "600100".equals(str)) {
                iMax = Math.max(6, Math.min(20, Math.max(0, i2) + 5));
            }
            if (context == null || !("600028".equals(str) || "600029".equals(str))) {
                i3 = 0;
            } else {
                com.sgscq.vpn.h hVar = new com.sgscq.vpn.h(0, context);
                com.sgscq.vpn.f fVarJ = hVar.j();
                if (hVar.f()) {
                    i3 = t[Math.max(0, Math.min(5, fVarJ.f668f))];
                } else {
                    i3 = 0;
                }
            }
            if (str2.isEmpty() || (mapD3 = d3(i2, context)) == null) {
                iMax += i3;
            } else {
                int iMax2 = Math.max(0, X1(mapD3.get(str2), iMax));
                iMax = (("600018".equals(str) || "600100".equals(str)) && iMax2 <= 1) ? Math.max(iMax2, X1(mapD3.get("ladder_challenge_num"), iMax)) : iMax2 + i3;
            }
        }
        return p5.B0(iMax, context);
    }

    public static void j(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if ((obj2 instanceof Map) && !arrayList.contains(obj2)) {
                    arrayList.add((Map) obj2);
                }
            }
        }
    }

    public static String j0(Map map) {
        char cCharAt;
        String strP2 = P2("equipment_pos", P2("equipment_type", P2("pos", "", map), map), map);
        if ("0".equals(strP2) || "null".equalsIgnoreCase(strP2) || strP2.isEmpty()) {
            String strP3 = P2("equipment_id", P2("id", "", map), map);
            strP2 = (strP3 == null || strP3.length() < 2 || !strP3.startsWith("2") || strP3.length() < 6 || (cCharAt = strP3.charAt(1)) < '1' || cCharAt > '4') ? "" : String.valueOf(cCharAt - '0');
            if (!strP2.isEmpty()) {
                map.put("equipment_pos", strP2);
                map.put("equipment_type", strP2);
            }
        }
        return ("0".equals(strP2) || "null".equalsIgnoreCase(strP2)) ? "" : strP2;
    }

    public static int j1(int i2, String str, Map map) {
        return c.a.e(map, str, i2);
    }

    public static String j2(String str) {
        if ("600028".equals(str)) {
            return "power_buy_used";
        }
        if ("600029".equals(str)) {
            return "energy_buy_used";
        }
        return ("600018".equals(str) || "600100".equals(str)) ? "battle_buy_used" : "";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x0086  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:64:0x0123  */
    public static void k(Map map, String str, double d2) {
        double d3;
        double d4;
        double d5;
        double d6;
        if (d2 == 0.0d) {
            return;
        }
        double dM2 = m2(str, map);
        if (d2 >= 0.0d) {
            d5 = 0.0d;
            d4 = d2;
        } else {
            double dMax = Math.max(0.0d, dM2);
            String strConcat = "base_".concat(str);
            double dMax2 = map.containsKey(strConcat) ? Math.max(0.0d, f0(map.get(strConcat))) : dMax;
            String strJ = c.a.j(map, "id", "", "general_id");
            if (!strJ.isEmpty()) {
                double[] dArrM0 = w1.a1(null).M0(Math.max(1, g1(g1(1, "level", map), "general_level", map)), Math.max(1, g1(g1(1, "breachLevel", map), "insight_level", map)), strJ);
                if (dArrM0 != null && dArrM0.length >= 4) {
                    str.hashCode();
                    switch (str) {
                        case "attack":
                            d3 = dArrM0[1];
                            break;
                        case "wisdom":
                            d3 = dArrM0[3];
                            break;
                        case "hp":
                            d3 = dArrM0[0];
                            break;
                        case "defense":
                            d3 = dArrM0[2];
                            break;
                        default:
                            d3 = Double.NaN;
                            break;
                    }
                } else {
                    d3 = Double.NaN;
                }
            } else {
                d3 = Double.NaN;
            }
            double dMax3 = Double.isNaN(d3) ? Double.NaN : Math.max(0.0d, f0(map.get("culture_attr_".concat(str))) + d3);
            if (!Double.isNaN(dMax3)) {
                dMax2 = Math.min(dMax2, dMax3);
            }
            d4 = -Math.min(Math.abs(d2), Math.min(dMax, dMax2));
            d5 = 0.0d;
        }
        if (d4 == d5) {
            return;
        }
        if (d4 != d5) {
            String strConcat2 = "culture_attr_".concat(str);
            map.put(strConcat2, Double.valueOf(f0(map.get(strConcat2)) + d4));
        }
        if (d4 == d5) {
            d6 = 0.0d;
        } else {
            String strConcat3 = "base_".concat(str);
            if (map.containsKey(strConcat3)) {
                map.put(strConcat3, Double.valueOf(Math.max(0.0d, f0(map.get(strConcat3)) + d4)));
                d6 = 0.0d;
            } else {
                d6 = 0.0d;
            }
        }
        double dMax4 = Math.max(d6, dM2 + d4);
        map.put("attr_".concat(str), Double.valueOf(dMax4));
        map.put("general_" + str + "_attr", Double.valueOf(dMax4));
        map.put("general_".concat(str), Double.valueOf(dMax4));
    }

    public static LinkedHashMap k0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static int k1(int i2, String str, Map map) {
        return map == null ? i2 : c.a.e(map, str, i2);
    }

    public static double k2(String str, Map map) {
        Object obj = map.get("attr_".concat(str));
        if (obj == null) {
            obj = map.get("general_" + str + "_attr");
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    /* JADX WARN: Code duplicated, block: B:143:0x0264  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:91:0x0151  */
    public static LinkedHashMap l(Map map, Map map2) {
        boolean z;
        int i2;
        int i3;
        String str;
        Map map3;
        int i4;
        String str2;
        int i5;
        String str3;
        String strM0 = M0(map2, "user_general_id", "general_pk_id", "pk_id");
        Map mapW0 = w0(strM0, w1.f0("General", map));
        if (mapW0 == null) {
            str3 = "武将不存在";
        } else {
            String strM1 = M0(map2, "cultivate_num", "num");
            int i6 = 1;
            int iL2 = strM1.isEmpty() ? 1 : w1.l2(strM1, 1);
            if ("1".equals(M0(map2, "is_multi", "multi")) || "true".equalsIgnoreCase(M0(map2, "is_multi", "multi"))) {
                iL2 *= 10;
            }
            int iMax = Math.max(1, iL2);
            boolean z2 = "1".equals(M0(map2, "is_gain", "gain")) || "true".equalsIgnoreCase(M0(map2, "is_gain", "gain"));
            int i7 = iMax * 5;
            Map mapF0 = F0(map);
            int iZ1 = z1(mapF0);
            if (iZ1 < i7) {
                str3 = "灵芝不足";
            } else {
                int iG1 = g1(0, "user_gold", map);
                if (!z2 || iG1 >= iMax) {
                    com.sgscq.vpn.handler.g0 g0VarU = p5.U(iMax, mapW0, z2);
                    boolean[] zArr = new boolean[5];
                    for (int i8 = 1; i8 <= 4; i8++) {
                        zArr[i8] = true;
                    }
                    ArrayList arrayList = new ArrayList();
                    while (true) {
                        if (i6 > 4) {
                            z = false;
                            break;
                        }
                        if (zArr[i6]) {
                            z = true;
                            break;
                        }
                        i6++;
                    }
                    int i9 = 0;
                    for (int i10 = 1; i10 <= 4; i10++) {
                        if (zArr[i10]) {
                            i9++;
                        }
                    }
                    int i11 = g0VarU.f842a;
                    if (!z) {
                        i2 = i11;
                        i3 = i2;
                    } else if (!(i11 <= 0 || i11 >= 5 || zArr[i11])) {
                        i2 = i11;
                        i3 = 1;
                        while (true) {
                            if (i3 > 4) {
                                i3 = 1;
                                break;
                            }
                            if (zArr[i3]) {
                                break;
                            }
                            i3++;
                        }
                    } else {
                        i2 = i11;
                        i3 = i2;
                    }
                    boolean z3 = i3 <= 0 || i3 >= 5 || zArr[i3];
                    String[] strArr = p5.N;
                    int i12 = g0VarU.f844c;
                    if (z3 && i12 > 0) {
                        arrayList.add(p5.z0("field", strArr[i3], "val", Double.valueOf(i12)));
                    }
                    int i13 = g0VarU.f845d;
                    int i14 = g0VarU.f843b;
                    if (z) {
                        if (i9 > 1) {
                            if (i14 <= 0 || i14 >= 5 || zArr[i14]) {
                                if (i14 <= 0) {
                                }
                            }
                        }
                    } else if (i14 <= 0 && i13 < 0) {
                        arrayList.add(p5.z0("field", strArr[i14], "val", Double.valueOf(i13)));
                    }
                    if (arrayList.isEmpty() && i12 > 0) {
                        int i15 = 1;
                        while (true) {
                            if (i15 > 4) {
                                i15 = 1;
                                break;
                            }
                            if (zArr[i15]) {
                                break;
                            }
                            i15++;
                        }
                        arrayList.add(p5.z0("field", strArr[i15], "val", Double.valueOf(i12)));
                    }
                    if (arrayList.size() == 2) {
                        int i16 = iZ1 - i7;
                        if (mapF0 != 0) {
                            mapF0.put("num", Integer.valueOf(i16));
                            mapF0.put("item_num", Integer.valueOf(i16));
                            mapF0.put("total_num", Integer.valueOf(i16));
                        }
                        if (z2) {
                            str = "user_gold";
                            map3 = map;
                            map3.put(str, Integer.valueOf(iG1 - iMax));
                        } else {
                            str = "user_gold";
                            map3 = map;
                        }
                        if (iMax <= 0) {
                            i4 = iMax;
                        } else {
                            i4 = iMax;
                            long jG1 = ((long) g1(0, "surrender_total_cultivate_times", map3)) + ((long) i4);
                            map3.put("surrender_total_cultivate_times", Integer.valueOf(jG1 > 2147483647L ? Integer.MAX_VALUE : (int) jG1));
                        }
                        Object obj = mapW0.get("culture_info");
                        LinkedHashMap linkedHashMap = obj instanceof Map ? new LinkedHashMap((Map) obj) : new LinkedHashMap();
                        double d2 = i12;
                        boolean z4 = z2;
                        double dMax = Math.max(1, i4);
                        int iRound = (int) Math.round(d2 / dMax);
                        int iRound2 = (int) Math.round(((double) Math.abs(i13)) / dMax);
                        if (i2 <= 0 || (i5 = i2) >= 5 || i14 <= 0 || i14 >= 5 || iRound <= 0) {
                            str2 = "修炼药丸";
                        } else {
                            String[][] strArr2 = p5.O;
                            if (iRound >= strArr2[i5].length || iRound2 <= 0) {
                                str2 = "修炼药丸";
                            } else {
                                String[][] strArr3 = p5.P;
                                if (iRound2 >= strArr3[i14].length) {
                                    str2 = "修炼药丸";
                                } else {
                                    str2 = strArr2[i5][iRound] + strArr3[i14][iRound2] + "丸";
                                }
                            }
                        }
                        linkedHashMap.put("item_name", str2);
                        linkedHashMap.put("pending", Boolean.TRUE);
                        linkedHashMap.put("culture_attr", arrayList);
                        linkedHashMap.put("cultivate_attr", arrayList);
                        linkedHashMap.put("cultivate_num", Integer.valueOf(i4));
                        linkedHashMap.put("talent_point_cost", Integer.valueOf(g0VarU.f846e));
                        mapW0.put("culture_info", linkedHashMap);
                        mapW0.put("n", linkedHashMap);
                        LinkedHashMap linkedHashMapU2 = U2(C(i4, strM0, arrayList, mapW0));
                        linkedHashMapU2.put("pkId", strM0);
                        linkedHashMapU2.put("cultivate_num", Integer.valueOf(i4));
                        linkedHashMapU2.put("yuanbao", Integer.valueOf(g1(0, str, map)));
                        linkedHashMapU2.put("ganoderma", Integer.valueOf(z1(mapF0)));
                        linkedHashMapU2.put("cmn_modules", z4 ? "Player,General,Item" : "General,Item");
                        return linkedHashMapU2;
                    }
                    str3 = "当前属性无法继续修炼";
                } else {
                    str3 = "元宝不足";
                }
            }
        }
        return k0(str3);
    }

    public static LinkedHashMap l0(String str) {
        if ("soul not enough".equals(str)) {
            str = "魂魄不足";
        }
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static int l1(int i2, String str, Map map) {
        return c.a.e(map, str, i2);
    }

    public static double l2(Object obj) {
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0390  */
    public static LinkedHashMap m(Map map, Map map2) {
        boolean z;
        String str;
        Map map3;
        String strU1 = U1("type", "", map2);
        String str2 = "pk_id";
        if ("99".equals(strU1) || "1".equals(U1("cleanup_mystery_general", "", map2))) {
            Object obj = "cmn_modules";
            String str3 = "pk_id";
            ArrayList arrayList = new ArrayList();
            List listF0 = w1.f0("General", map);
            for (int size = listF0.size() - 1; size >= 0; size--) {
                Map map4 = (Map) listF0.get(size);
                if (map4 != null) {
                    if (!"100000".equals(O2("general_id", O2("id", "", map4), map4))) {
                        String strO2 = O2("general_name", O2("name", "", map4), map4);
                        if (!strO2.contains("神秘武将") && !strO2.contains("神密武将")) {
                            z = false;
                        }
                    }
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    String strO3 = O2(str3, O2("general_pk_id", "", map4), map4);
                    if (!strO3.isEmpty()) {
                        arrayList.add(strO3);
                    }
                    listF0.remove(size);
                }
            }
            String str4 = "General,Skill,TeamGeneral,BuddyGeneral";
            String str5 = "changed_buddy_general_pk_ids";
            ArrayList arrayList2 = arrayList;
            String str6 = "";
            if (arrayList.isEmpty()) {
                LinkedHashMap linkedHashMapV2 = V2();
                linkedHashMapV2.put("action", "cleanup_mystery_general");
                linkedHashMapV2.put("removed_general_count", 0);
                linkedHashMapV2.put("removed_general_pk_ids", new ArrayList());
                linkedHashMapV2.put("removed_skill_pk_ids", new ArrayList());
                linkedHashMapV2.put("removed_team_general_pk_ids", new ArrayList());
                linkedHashMapV2.put("removed_buddy_general_pk_ids", new ArrayList());
                linkedHashMapV2.put("changed_team_general_pk_ids", new ArrayList());
                linkedHashMapV2.put("changed_buddy_general_pk_ids", new ArrayList());
                linkedHashMapV2.put(obj, "General,Skill,TeamGeneral,BuddyGeneral");
                return linkedHashMapV2;
            }
            ArrayList arrayList3 = new ArrayList();
            List listF1 = w1.f0("Skill", map);
            int size2 = listF1.size() - 1;
            while (size2 >= 0) {
                Object obj2 = obj;
                Map map5 = (Map) listF1.get(size2);
                String str7 = str4;
                String str8 = str6;
                String str9 = str5;
                String strO4 = O2(str3, str8, map5);
                String str10 = str3;
                ArrayList arrayList4 = arrayList2;
                if (arrayList4.contains(O2("general_pk_id", str8, map5)) || arrayList4.contains(strO4)) {
                    if (!strO4.isEmpty()) {
                        arrayList3.add(strO4);
                    }
                    listF1.remove(size2);
                }
                size2--;
                arrayList2 = arrayList4;
                str5 = str9;
                obj = obj2;
                str3 = str10;
                str6 = str8;
                str4 = str7;
            }
            ArrayList arrayList5 = arrayList2;
            j0 j0VarT2 = t2("TeamGeneral", arrayList5, map);
            j0 j0VarT3 = t2("BuddyGeneral", arrayList5, map);
            LinkedHashMap linkedHashMapV3 = V2();
            linkedHashMapV3.put("action", "cleanup_mystery_general");
            linkedHashMapV3.put("removed_general_count", Integer.valueOf(arrayList5.size()));
            linkedHashMapV3.put("removed_general_pk_ids", arrayList5);
            linkedHashMapV3.put("removed_skill_pk_ids", arrayList3);
            linkedHashMapV3.put("removed_team_general_pk_ids", j0VarT2.f370a);
            linkedHashMapV3.put("removed_buddy_general_pk_ids", j0VarT3.f370a);
            linkedHashMapV3.put("changed_team_general_pk_ids", j0VarT2.f371b);
            linkedHashMapV3.put(str5, j0VarT3.f371b);
            linkedHashMapV3.put(obj, str4);
            return linkedHashMapV3;
        }
        String str11 = "id";
        if (!"1".equals(strU1)) {
            if (!"4".equals(strU1)) {
                return n0("不支持的卸下类型");
            }
            String strP0 = P0(map2, "user_general_id", "general_pk_id", "pk_id");
            String strU2 = U1("position", U1("pos", "2", map2), map2);
            String strP1 = P0(map2, "object_instance_id", "object_id", "user_skill_id", "skill_pk_id");
            Map mapZ0 = z0(strP0, w1.f0("General", map));
            if (mapZ0 == null) {
                return n0("武将不存在");
            }
            Map mapZ1 = z0(strP1, w1.f0("Skill", map));
            if (mapZ1 == null) {
                return n0("技能不存在");
            }
            if (!strP0.equals(O2("general_pk_id", "", mapZ1)) || !strU2.equals(O2("position", O2("pos", "", mapZ1), mapZ1))) {
                return n0("技能未装备");
            }
            mapZ1.put("general_pk_id", 0);
            mapZ1.put("position", "0");
            mapZ1.put("pos", "0");
            mapZ1.put("skill_position", "0");
            ArrayList arrayList6 = new ArrayList();
            Iterator it = w1.f0("Skill", map).iterator();
            while (it.hasNext()) {
                Map map6 = (Map) it.next();
                if (strP0.equals(O2("general_pk_id", "", map6))) {
                    String str12 = str11;
                    Iterator it2 = it;
                    if (!com.sgscq.vpn.handler.f.c(O2("skill_id", O2(str12, "", map6), map6))) {
                        arrayList6.add(new LinkedHashMap(map6));
                    }
                    it = it2;
                    str11 = str12;
                }
            }
            arrayList6.sort(new n.b(10));
            mapZ0.put("gSkill", arrayList6);
            mapZ0.put("general_skills", arrayList6);
            w1.a1(null).F2(strP0, map);
            LinkedHashMap linkedHashMapV4 = V2();
            linkedHashMapV4.put("user_general_id", strP0);
            linkedHashMapV4.put("object_instance_id", strP1);
            linkedHashMapV4.put("position", strU2);
            linkedHashMapV4.put("type", strU1);
            linkedHashMapV4.put("changed_skill_ids", p5.v0(strP1));
            linkedHashMapV4.put("cmn_modules", "General,Skill,TeamGeneral");
            return linkedHashMapV4;
        }
        String strP2 = P0(map2, "user_general_id", "general_pk_id", "pk_id");
        String strU3 = U1("position", U1("pos", "2", map2), map2);
        String strP3 = P0(map2, "object_instance_id", "object_id", "user_general_lieutenant_id", "lieutenant_pk_id");
        Map mapZ2 = z0(strP3, w1.f0("General", map));
        if (mapZ2 != null && strP2.equals(O2("major_pk_id", "", mapZ2)) && strU3.equals(O2("position", "", mapZ2))) {
            if (strP2.isEmpty()) {
                map3 = null;
                break;
            }
            Iterator it3 = w1.f0("TeamGeneral", map).iterator();
            while (true) {
                if (!it3.hasNext()) {
                    map3 = null;
                    break;
                }
                map3 = (Map) it3.next();
                Iterator it4 = it3;
                if (strP2.equals(O2("general_pk_id", "", map3)) || strP2.equals(O2("user_general_id", "", map3))) {
                    break;
                }
                it3 = it4;
            }
            if (map3 != null) {
                if (!strP3.isEmpty() && (strP3.equals(O2("lieutenant_pk_id_".concat(strU3), "", map3)) || strP3.equals(O2("general_pk_id_".concat(strU3), "", map3)) || strP3.equals(O2("general_lieutenant_id_".concat(strU3), "", map3)))) {
                    map3.put("lieutenant_general_id_".concat(strU3), "0");
                    map3.put("lieutenant_pk_id_".concat(strU3), "0");
                    map3.put("general_pk_id_".concat(strU3), "0");
                    map3.put("general_lieutenant_id_".concat(strU3), "0");
                }
                ArrayList arrayList7 = new ArrayList();
                d(strP2, arrayList7);
                Map mapZ3 = z0(strP2, w1.f0("General", map));
                Map map7 = map3;
                if (mapZ3 != null) {
                    mapZ3.put("lieutenant_skill_id", "");
                    mapZ3.put("skill_type_lieutenant", "");
                    mapZ3.put("ls_type", "0");
                    mapZ3.put("ls_value", "0");
                }
                Iterator it5 = w1.f0("General", map).iterator();
                while (it5.hasNext()) {
                    Map map8 = (Map) it5.next();
                    Iterator it6 = it5;
                    String strO5 = O2(str2, "", map8);
                    String str13 = str2;
                    if (strP2.equals(O2("major_pk_id", "", map8)) && strU3.equals(O2("position", "", map8))) {
                        map8.put("major_pk_id", "");
                        map8.put("position", "0");
                        map8.put("lieutenant_skill_id", "");
                        map8.put("skill_type_lieutenant", "");
                        map8.put("ls_type", "0");
                        map8.put("ls_value", "0");
                        d(strO5, arrayList7);
                    }
                    it5 = it6;
                    str2 = str13;
                }
                String str14 = str2;
                for (Map map9 : w1.f0("TeamGeneral", map)) {
                    d(O2("general_pk_id", O2("user_general_id", "", map9), map9), arrayList7);
                }
                w1 w1VarA1 = w1.a1(null);
                Iterator it7 = arrayList7.iterator();
                while (it7.hasNext()) {
                    w1VarA1.F2((String) it7.next(), map);
                }
                LinkedHashMap linkedHashMapV5 = V2();
                linkedHashMapV5.put("user_general_id", strP2);
                linkedHashMapV5.put("object_instance_id", strP3);
                linkedHashMapV5.put("position", strU3);
                linkedHashMapV5.put("type", strU1);
                linkedHashMapV5.put("changed_team_general_id", String.valueOf(map7.getOrDefault(str14, "")));
                linkedHashMapV5.put("changed_general_pk_ids", arrayList7);
                linkedHashMapV5.put("cmn_modules", arrayList7.isEmpty() ? "TeamGeneral" : "General,TeamGeneral");
                return linkedHashMapV5;
            }
            str = "阵容武将不存在";
        } else {
            str = "副将未上阵";
        }
        return n0(str);
    }

    public static LinkedHashMap m0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static int m1(int i2, String str, Map map) {
        return map == null ? i2 : c.a.e(map, str, i2);
    }

    public static double m2(String str, Map map) {
        Object obj = map.get("general_".concat(str));
        if (obj == null) {
            obj = map.get("attr_".concat(str));
        }
        return f0(obj);
    }

    public static LinkedHashMap n(Map map, Map map2, int i2, int i3, double[] dArr, double[] dArr2) {
        Map map3;
        String str;
        String str2;
        String strN0 = N0(map2, "user_general_id", "general_pk_id", "pk_id");
        Map mapX0 = x0(strN0, w1.f0("General", map));
        if (mapX0 == null) {
            return l0("武将不存在");
        }
        String strN1 = N0(map2, "general_id");
        if (strN1.isEmpty()) {
            Object obj = mapX0.get("general_id");
            strN1 = (obj == null || String.valueOf(obj).isEmpty()) ? "" : String.valueOf(obj);
        }
        if (strN1.isEmpty()) {
            return l0("武将不存在");
        }
        int iI1 = i1(0, "insight_level", mapX0);
        if (iI1 <= 0) {
            iI1 = Math.max(1, i1(1, "general_star", mapX0));
        }
        if (i2 <= 0 || iI1 < i2) {
            int iI2 = i1(i1(1, "level", mapX0), "general_level", mapX0);
            int i4 = i3 > 0 ? i3 : (iI1 * 15) + 30;
            Map mapJ0 = J0(strN1, map);
            String str3 = strN1;
            int iI3 = i1(i1(0, "total_num", mapJ0), "num", mapJ0);
            if (iI3 >= i4) {
                String strValueOf = mapJ0 == null ? "" : String.valueOf(mapJ0.getOrDefault("pk_id", ""));
                int i5 = iI1 + 1;
                int i6 = iI1;
                mapX0.put("insight_level", Integer.valueOf(i5));
                mapX0.put("breachLevel", Integer.valueOf(i5));
                int i7 = i5 - 1;
                int iMax = Math.max(0, i7);
                mapX0.put("star_level", Integer.valueOf(iMax));
                mapX0.put("general_star", Integer.valueOf(iMax));
                w1.a1(null).E2(null, mapX0);
                if (dArr == null || dArr.length < 5) {
                    map3 = mapJ0;
                    str = "num";
                } else {
                    c2(mapX0, "hp", dArr[0]);
                    c2(mapX0, "attack", dArr[1]);
                    c2(mapX0, "defense", dArr[2]);
                    c2(mapX0, "wisdom", dArr[3]);
                    double d2 = dArr[4];
                    mapX0.put("fighting", Double.valueOf(d2));
                    str = "num";
                    mapX0.put("fight_point", Double.valueOf(d2));
                    map3 = mapJ0;
                    mapX0.put("fighting_point", Double.valueOf(d2));
                    mapX0.put("general_fighting", Double.valueOf(d2));
                    double d3 = dArr[4];
                    ArrayList<Map> arrayList = new ArrayList();
                    if (!strN0.isEmpty()) {
                        for (Map map4 : w1.f0("TeamGeneral", map)) {
                            if (c.a.B(map4, "general_pk_id", "", strN0) || c.a.B(map4, "general_id", "", strN0) || c.a.B(map4, "pk_id", "", strN0)) {
                                arrayList.add(map4);
                            }
                        }
                    }
                    for (Map map5 : arrayList) {
                        map5.put("fighting", Double.valueOf(d3));
                        map5.put("general_fighting", Double.valueOf(d3));
                        map5.put("fight_point", Double.valueOf(d3));
                    }
                }
                int i8 = iI3 - i4;
                if (i8 > 0) {
                    Map map6 = map3;
                    if (map6 != null) {
                        c.a.t(i8, map6, str, i8, "total_num");
                    }
                } else if (map3 != null) {
                    w1.f0("GeneralSoul", map).remove(map3);
                }
                long jI1 = ((long) i1(0, "surrender_total_breakthrough_times", map)) + ((long) 1);
                map.put("surrender_total_breakthrough_times", Integer.valueOf(jI1 > 2147483647L ? Integer.MAX_VALUE : (int) jI1));
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("user_general_id", strN0);
                linkedHashMap.put("general_pk_id", strN0);
                linkedHashMap.put("general_id", str3);
                linkedHashMap.put("insight_level_before", String.valueOf(Math.max(0, i6 - 1)));
                linkedHashMap.put("insight_level_now", String.valueOf(Math.max(0, i7)));
                linkedHashMap.put("general_level_before", String.valueOf(iI2));
                linkedHashMap.put("general_level_now", String.valueOf(iI2));
                linkedHashMap.put("attr_hp", Double.valueOf(w(dArr2, dArr, 0)));
                linkedHashMap.put("attr_attack", Double.valueOf(w(dArr2, dArr, 1)));
                linkedHashMap.put("attr_defense", Double.valueOf(w(dArr2, dArr, 2)));
                linkedHashMap.put("attr_wisdom", Double.valueOf(w(dArr2, dArr, 3)));
                Boolean bool = Boolean.TRUE;
                LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
                linkedHashMapZ0.put("info", linkedHashMap);
                linkedHashMapZ0.put("pkId", strN0);
                com.sgscq.vpn.handler.l.b(linkedHashMapZ0, "general_id", str3, i4, "cost_soul");
                if (i8 <= 0) {
                    linkedHashMapZ0.put("deleted_soul_pk_id", strValueOf);
                }
                linkedHashMapZ0.put("cmn_modules", "General,GeneralSoul,TeamGeneral");
                return linkedHashMapZ0;
            }
            str2 = "魂魄不足";
        } else {
            str2 = "突破已达到最高等级";
        }
        return l0(str2);
    }

    public static LinkedHashMap n0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static int n1(int i2, String str, Map map) {
        return c.a.e(map, str, i2);
    }

    public static int n2(Map map) {
        Object obj = null;
        if (map != null) {
            String[] strArr = {"vip_level", "user_vip_level", "vipLevel"};
            for (int i2 = 0; i2 < 3; i2++) {
                String str = strArr[i2];
                if (map.containsKey(str)) {
                    obj = map.get(str);
                    break;
                }
            }
        }
        return X1(obj, 0);
    }

    public static LinkedHashMap o(Map map, Map map2, t2 t2Var, int i2, int i3, int i4, double[] dArr) {
        String str;
        String str2;
        LinkedHashMap linkedHashMapZ0;
        String str3;
        String str4;
        String str5;
        String str6 = "pk_id";
        String strO0 = O0(map2, "user_general_id", "general_pk_id", "pk_id");
        String strO1 = O0(map2, "general_id");
        Map mapY0 = y0(strO0, w1.f0("General", map));
        if (strO1.isEmpty() && mapY0 != null) {
            Object obj = mapY0.get("general_id");
            strO1 = (obj == null || String.valueOf(obj).isEmpty()) ? "" : String.valueOf(obj);
        }
        if (strO1.isEmpty()) {
            str5 = "武将不存在";
        } else {
            y2 y2Var = t2Var.f1392a;
            if (w1.a1(y2Var.f1549b).C1(strO1)) {
                boolean z = mapY0 == null;
                int iMax = z ? 0 : Math.max(1, k1(k1(1, "insight_level", mapY0), "general_star", mapY0));
                if (z || i2 <= 0 || iMax < i2) {
                    int i5 = z ? i3 : i4;
                    if (i5 <= 0) {
                        i5 = 30;
                        if (!z) {
                            i5 = 30 + (iMax * 15);
                        }
                    }
                    Map mapK0 = K0(strO1, map);
                    String str7 = "insight_level";
                    int iK1 = k1(k1(0, "total_num", mapK0), "num", mapK0);
                    if (iK1 >= i5) {
                        String strValueOf = mapK0 != null ? String.valueOf(mapK0.getOrDefault("pk_id", "")) : "";
                        if (z) {
                            String strD2 = w1.d2(map);
                            w1 w1VarA1 = w1.a1(y2Var.f1549b);
                            HashMap mapY1 = w1VarA1.Y1(strO1);
                            mapY1.put("pk_id", strD2);
                            mapY1.put("general_pk_id", strD2);
                            w1VarA1.t2(strD2, mapY1);
                            HashMap mapZ1 = w1.a1(y2Var.f1549b).Z1(strO1);
                            mapZ1.put("pk_id", strD2);
                            mapZ1.put("general_pk_id", strD2);
                            if (strD2 == null || strD2.isEmpty()) {
                                str4 = strD2;
                                str = strValueOf;
                            } else {
                                mapY1.put("pk_id", strD2);
                                mapY1.put("general_pk_id", strD2);
                                mapY1.put("general_id", strO1);
                                str = strValueOf;
                                mapY1.put("general_status", "1");
                                mapY1.put("status", "1");
                                mapY1.put("general_naturalskill_id", strD2);
                                mapZ1.put("pk_id", strD2);
                                mapZ1.put("general_pk_id", strD2);
                                mapZ1.put("is_natural", Boolean.TRUE);
                                f2("position", mapZ1);
                                f2("pos", mapZ1);
                                f2("skill_position", mapZ1);
                                Object obj2 = mapY1.get("gSkill");
                                if (!(obj2 instanceof List) || ((List) obj2).isEmpty()) {
                                    mapY1.put("gSkill", p5.v0(mapZ1));
                                }
                                Object obj3 = mapY1.get("general_skills");
                                str4 = strD2;
                                if (!(obj3 instanceof List) || ((List) obj3).isEmpty()) {
                                    mapY1.put("general_skills", mapY1.get("gSkill"));
                                }
                            }
                            w1.f0("General", map).add(mapY1);
                            w1.f0("Skill", map).add(mapZ1);
                            str2 = str4;
                            str6 = "pk_id";
                            z = z;
                        } else {
                            str = strValueOf;
                            int i6 = iMax + 1;
                            mapY0.put("breachLevel", Integer.valueOf(i6));
                            mapY0.put("star_level", Integer.valueOf(i6));
                            mapY0.put("general_star", Integer.valueOf(i6));
                            str7 = str7;
                            mapY0.put(str7, Integer.valueOf(i6));
                            if (dArr != null && dArr.length >= 5) {
                                d2(mapY0, "hp", dArr[0]);
                                d2(mapY0, "attack", dArr[1]);
                                d2(mapY0, "defense", dArr[2]);
                                d2(mapY0, "wisdom", dArr[3]);
                                double d2 = dArr[4];
                                mapY0.put("fighting", Double.valueOf(d2));
                                mapY0.put("fight_point", Double.valueOf(d2));
                                mapY0.put("fighting_point", Double.valueOf(d2));
                                mapY0.put("general_fighting", Double.valueOf(d2));
                            }
                            str2 = strO0;
                        }
                        int i7 = iK1 - i5;
                        if (i7 <= 0) {
                            if (mapK0 != null) {
                                w1.f0("GeneralSoul", map).remove(mapK0);
                            }
                        } else if (mapK0 != null) {
                            c.a.t(i7, mapK0, "num", i7, "total_num");
                        }
                        Boolean bool = Boolean.TRUE;
                        LinkedHashMap linkedHashMapZ1 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
                        linkedHashMapZ1.put("pkId", str2);
                        linkedHashMapZ1.put("general_id", strO1);
                        linkedHashMapZ1.put("cost_soul", Integer.valueOf(i5));
                        linkedHashMapZ1.put("is_new", Boolean.valueOf(z));
                        if (i7 <= 0) {
                            linkedHashMapZ1.put("deleted_soul_pk_id", str);
                        }
                        linkedHashMapZ1.put("cmn_modules", z ? "General,Skill,GeneralSoul" : "General,GeneralSoul");
                        if (z) {
                            linkedHashMapZ0 = p5.z0("general", p5.v0(p5.z0(str6, str2, "general_pk_id", str2, "general_id", strO1, "id", strO1, "general_star", 1, "general_level", 1, "num", 1, "card_type", 1)), new Object[0]);
                            str3 = "reward_info";
                        } else {
                            linkedHashMapZ0 = p5.z0("user_general_id", str2, "general_pk_id", str2, "general_id", strO1, "insight_level_now", Integer.valueOf(Math.max(0, k1(1, str7, y0(str2, w1.f0("General", map))) - 1)));
                            str3 = "info";
                        }
                        linkedHashMapZ1.put(str3, linkedHashMapZ0);
                        return linkedHashMapZ1;
                    }
                    str5 = "武将魂不足";
                } else {
                    str5 = "突破已达到最高等级";
                }
            } else {
                str5 = "该武将不可转世";
            }
        }
        return m0(str5);
    }

    public static LinkedHashMap o0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static boolean o1(String str) {
        return "600031".equals(str) || "600035".equals(str);
    }

    public static void o2(String str, Map map, Map map2) {
        ArrayList arrayList = new ArrayList();
        for (Map map3 : w1.f0("Skill", map)) {
            if (str.equals(R2("general_pk_id", "", map3)) && !com.sgscq.vpn.handler.f.c(R2("skill_id", R2("id", "", map3), map3))) {
                arrayList.add(new LinkedHashMap(map3));
            }
        }
        arrayList.sort(new n.b(11));
        map2.put("gSkill", arrayList);
        map2.put("general_skills", arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0285  */
    /* JADX WARN: Code duplicated, block: B:102:0x02af A[PHI: r30
      0x02af: PHI (r30v5 int) = (r30v2 int), (r30v6 int) binds: [B:98:0x027d, B:95:0x025a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:106:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:110:0x030f  */
    /* JADX WARN: Code duplicated, block: B:111:0x0311  */
    /* JADX WARN: Code duplicated, block: B:115:0x0348  */
    /* JADX WARN: Code duplicated, block: B:118:0x034c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0350  */
    /* JADX WARN: Code duplicated, block: B:120:0x0352 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:121:0x0354  */
    /* JADX WARN: Code duplicated, block: B:124:0x0361  */
    /* JADX WARN: Code duplicated, block: B:125:0x0379  */
    /* JADX WARN: Code duplicated, block: B:128:0x0387  */
    /* JADX WARN: Code duplicated, block: B:132:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:135:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:139:0x043e  */
    /* JADX WARN: Code duplicated, block: B:142:0x0476  */
    /* JADX WARN: Code duplicated, block: B:145:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:150:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:153:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:156:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:159:0x0513  */
    /* JADX WARN: Code duplicated, block: B:160:0x0515  */
    /* JADX WARN: Code duplicated, block: B:162:0x056d  */
    /* JADX WARN: Code duplicated, block: B:166:0x0579  */
    /* JADX WARN: Code duplicated, block: B:167:0x057e  */
    /* JADX WARN: Code duplicated, block: B:170:0x0587  */
    /* JADX WARN: Code duplicated, block: B:172:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:175:0x05ad  */
    /* JADX WARN: Code duplicated, block: B:177:0x05b9  */
    /* JADX WARN: Code duplicated, block: B:180:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:181:0x05c9  */
    /* JADX WARN: Code duplicated, block: B:184:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:185:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:191:0x0436 A[EDGE_INSN: B:191:0x0436->B:137:0x0436 BREAK  A[LOOP:0: B:130:0x0394->B:136:0x0426], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x0426 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:56:0x011c  */
    /* JADX WARN: Code duplicated, block: B:90:0x0245  */
    /* JADX WARN: Code duplicated, block: B:93:0x0254  */
    /* JADX WARN: Code duplicated, block: B:95:0x025a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0279  */
    /* JADX WARN: Code duplicated, block: B:99:0x027f  */
    public static LinkedHashMap p(Map map, Map map2, com.sgscq.vpn.handler.h0 h0Var) {
        String str;
        int i2;
        int iMin;
        double[] dArrM0;
        String str2;
        int i3;
        int i4;
        double[] dArr;
        double[] dArr2;
        double[] dArr3;
        int iFloor;
        String str3;
        double[] dArrM1;
        int iM1;
        boolean z;
        double dK2;
        double dK3;
        int i5;
        boolean z2;
        double dK4;
        double dK5;
        int iRound;
        int i6;
        String str4;
        String str5;
        String str6;
        w1 w1Var;
        Iterator it;
        int i7;
        String str7;
        String str8;
        String str9;
        String str10;
        int iMax;
        double[] dArr4;
        Map mapH0;
        int iL;
        int i8;
        String str11;
        int iA1;
        String strValueOf;
        String strValueOf2;
        Object obj;
        Map map3;
        Object objO;
        List list;
        String str12;
        Map map4;
        String str13;
        String strGroup;
        String strQ0 = Q0(map2, "user_general_id", "target_user_general_id");
        String strQ1 = Q0(map2, "user_death_general_id", "source_user_general_id");
        String strQ2 = Q0(map2, "item_id", "sacrifice_item_id");
        if (strQ2.isEmpty()) {
            strQ2 = "600011";
        }
        String strQ3 = Q0(map2, "sacrifice_type");
        Map mapA0 = A0(strQ0, w1.f0("General", map));
        Map mapA1 = A0(strQ1, w1.f0("General", map));
        if (mapA0 == null || mapA1 == null) {
            str = "武将不存在";
        } else {
            Map mapG0 = G0(strQ2, map);
            if (A1(mapG0) < 1) {
                str = "道具数量不足";
            } else {
                if (h0Var.f859d == 1) {
                    if (h0Var.f871p != null) {
                        int iQ0 = h0Var.f860e.isEmpty() ? 0 : h0Var.f871p.Q0(h0Var.f860e);
                        int iQ1 = h0Var.f861f.isEmpty() ? 0 : h0Var.f871p.Q0(h0Var.f861f);
                        if (iQ0 < 6 || iQ1 < 6) {
                            str13 = "e_2045";
                        } else {
                            w1 w1Var2 = h0Var.f871p;
                            if (w1Var2 == null || strQ2.isEmpty()) {
                                strGroup = "";
                            } else {
                                String strV0 = w1Var2.V0("OneSacrificeRestriction", "");
                                if (strV0.isEmpty()) {
                                    strGroup = "";
                                } else {
                                    Matcher matcher = Pattern.compile("\"" + Pattern.quote(strQ2) + "\"\\s*:\\s*\"?(\\d+)\"?").matcher(strV0);
                                    if (matcher.find()) {
                                        strGroup = matcher.group(1);
                                    } else {
                                        strGroup = "";
                                    }
                                }
                            }
                            if (!strGroup.isEmpty() && !strGroup.equals(h0Var.f860e)) {
                                str13 = "e_2044";
                            }
                        }
                        if (!str13.isEmpty()) {
                            LinkedHashMap linkedHashMapO0 = o0(str13);
                            linkedHashMapO0.put("error_code", str13);
                            return linkedHashMapO0;
                        }
                    } else {
                        strQ3 = strQ3;
                    }
                    if (m1(0, "culture_level", mapA0) > 0) {
                        str13 = "e_2047";
                    } else {
                        str13 = m1(0, "master_sacrificed", mapA0) > 0 ? "e_2046" : "";
                    }
                    if (!str13.isEmpty()) {
                        LinkedHashMap linkedHashMapO1 = o0(str13);
                        linkedHashMapO1.put("error_code", str13);
                        return linkedHashMapO1;
                    }
                } else {
                    strQ3 = strQ3;
                }
                int iM2 = m1(m1(1, "level", mapA0), "general_level", mapA0);
                String str14 = strQ2;
                int iI2 = I2(mapA0);
                long jMax = Math.max(h0Var.f867l, Math.max(F1("general_exp", mapA1), F1("general_experience", mapA1)));
                long jMax2 = Math.max(0L, h0Var.f869n);
                long jC0 = jMax2;
                long jMax3 = Math.max(h0Var.f868m, Math.max(Math.max(0L, F1("exp", mapA0)) + jMax2, Math.max(F1("general_exp", mapA0), F1("general_experience", mapA0))));
                long jFloor = (long) Math.floor((((long) h0Var.f857b) * jMax) / 100.0d);
                long j2 = jMax3 + jFloor;
                int i9 = h0Var.f856a * 4;
                int iMin2 = (h0Var.f871p == null || h0Var.f860e.isEmpty()) ? Math.min(i9, ((int) (jFloor / 1000)) + iM2) : h0Var.f871p.P0(i9, h0Var.f860e, j2);
                if (iMin2 < iM2) {
                    iMin2 = iM2;
                }
                mapA0.put("general_level", String.valueOf(iMin2));
                mapA0.put("level", String.valueOf(iMin2));
                if (iMin2 != iM2) {
                    jC0 = 0;
                }
                if (h0Var.f871p != null && !h0Var.f860e.isEmpty()) {
                    jC0 = h0Var.f871p.c0(h0Var.f860e, iMin2);
                }
                mapA0.put("exp", String.valueOf(Math.max(0L, j2 - jC0)));
                String strValueOf3 = String.valueOf(Math.max(0L, j2));
                mapA0.put("general_exp", strValueOf3);
                mapA0.put("general_experience", strValueOf3);
                int iI3 = I2(mapA1);
                if (h0Var.f862g == h0Var.f863h) {
                    i2 = iI2;
                    if (iI3 <= i2 || (iMin = Math.min(iI3, h0Var.f864i)) < i2) {
                    }
                    E2(iMin, mapA0);
                    if (h0Var.f871p != null || h0Var.f860e.isEmpty()) {
                        dArrM0 = null;
                    } else {
                        dArrM0 = h0Var.f871p.M0(iMin2, iMin, h0Var.f860e);
                    }
                    str2 = "attack";
                    i3 = iMin;
                    if (dArrM0 != null) {
                        i4 = i2;
                        if (dArrM0.length >= 5) {
                            e2(mapA0, "hp", dArrM0[0]);
                            e2(mapA0, "attack", dArrM0[1]);
                            e2(mapA0, "defense", dArrM0[2]);
                            e2(mapA0, "wisdom", dArrM0[3]);
                            b2(mapA0, dArrM0[4]);
                        }
                        dArr2 = dArrM0;
                        dArr3 = dArr2;
                        int iM3 = m1(0, "ganoderma_num", mapA1);
                        iFloor = (int) Math.floor(((double) (Math.max(0, iM3 - Math.floorMod(iM3, 5)) * h0Var.f858c)) / 100.0d);
                        str3 = "talent_point";
                        if (iMin2 <= iM2) {
                            iM1 = 0;
                            dArrM1 = null;
                        } else {
                            int iM4 = m1(0, "talent_point", mapA0);
                            LinkedHashMap linkedHashMap = new LinkedHashMap(mapA0);
                            dArrM1 = null;
                            w1.a1(null).g(iM2, iMin2, linkedHashMap);
                            iM1 = m1(iM4, "talent_point", linkedHashMap) - iM4;
                        }
                        if (h0Var.f859d == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        dK2 = k2("hp", mapA1);
                        dK3 = k2("attack", mapA1);
                        i5 = iMin2;
                        z2 = z;
                        dK4 = k2("defense", mapA1);
                        dK5 = k2("wisdom", mapA1);
                        iRound = (int) Math.round(dK2 + dK3 + dK4 + dK5);
                        int iM5 = m1(0, "talent_point", mapA0) + iM1;
                        if (!z2) {
                            iRound = 0;
                        }
                        i6 = iM5 - iRound;
                        if (i6 < 0) {
                            if (iM1 == 0 || z2) {
                                mapA0.put("talent_point", String.valueOf(i6));
                            }
                            str4 = "hp";
                            if (z2) {
                                e(mapA0, str4, dK2);
                                e(mapA0, "attack", dK3);
                                str5 = "defense";
                                e(mapA0, str5, dK4);
                                str6 = "wisdom";
                                e(mapA0, str6, dK5);
                                mapA0.put("master_sacrificed", "1");
                            } else {
                                str5 = "defense";
                                str6 = "wisdom";
                            }
                            w1Var = h0Var.f871p;
                            if (w1Var != null) {
                                w1Var.F2(strQ0, map);
                            }
                            it = w1.f0("TeamGeneral", map).iterator();
                            while (true) {
                                i7 = iM1;
                                str7 = str6;
                                str8 = str5;
                                str9 = str2;
                                str10 = str4;
                                if (it.hasNext()) {
                                    break;
                                }
                                map4 = (Map) it.next();
                                Iterator it2 = it;
                                String str15 = str3;
                                if (!c.a.C(map4, "pk_id", "", "general_pk_id", strQ0)) {
                                    X("general_level", mapA0, map4, "general_level", "level");
                                    X("level", mapA0, map4, "general_level", "level");
                                    X("general_hp", mapA0, map4, "attr_hp", "general_hp_attr", "base_hp");
                                    X("general_attack", mapA0, map4, "attr_attack", "general_attack_attr", "base_attack");
                                    X("general_defense", mapA0, map4, "attr_defense", "general_defense_attr", "base_defense");
                                    X("general_wisdom", mapA0, map4, "attr_wisdom", "general_wisdom_attr", "base_wisdom");
                                    X("fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                    X("general_fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                    X("fight_point", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                }
                                iM1 = i7;
                                str2 = str9;
                                it = it2;
                                str4 = str10;
                                str3 = str15;
                                str5 = str8;
                                str6 = str7;
                            }
                            String str16 = str3;
                            if (iFloor > 0) {
                                g(iFloor, 19, "600012", map);
                            }
                            mapA1.put(r6, "1");
                            mapA1.put("level", "1");
                            mapA1.put("exp", "0");
                            mapA1.put("general_exp", "0");
                            mapA1.put("general_experience", "0");
                            iMax = Math.max(0, Math.max(m1(0, "magic_talent_point_bonus", mapA1), h0Var.f870o));
                            mapA1.put(str16, String.valueOf(iMax));
                            if (iMax > 0) {
                                mapA1.put("magic_talent_point_bonus", String.valueOf(iMax));
                            }
                            mapA1.put("ganoderma_num", "0");
                            mapA1.put("culture_level", "0");
                            mapA1.put("culture_info", new LinkedHashMap());
                            Q(str10, mapA1);
                            Q(str9, mapA1);
                            Q(str8, mapA1);
                            Q(str7, mapA1);
                            E2(1, mapA1);
                            if (h0Var.f871p == null && (str12 = h0Var.f861f) != null && !str12.isEmpty()) {
                                dArrM1 = h0Var.f871p.M0(1, 1, h0Var.f861f);
                            }
                            dArr4 = dArrM1;
                            if (dArr4 != null || dArr4.length < 5) {
                                e2(mapA1, str10, 0.0d);
                                e2(mapA1, str9, 0.0d);
                                e2(mapA1, str8, 0.0d);
                                e2(mapA1, str7, 0.0d);
                                b2(mapA1, 0.0d);
                            } else {
                                e2(mapA1, str10, dArr4[0]);
                                e2(mapA1, str9, dArr4[1]);
                                e2(mapA1, str8, dArr4[2]);
                                e2(mapA1, str7, dArr4[3]);
                                b2(mapA1, dArr4[4]);
                            }
                            mapH0 = H0(strQ1, map);
                            if (mapH0 == null) {
                                i8 = 0;
                            } else {
                                iL = com.sgscq.vpn.handler.u0.l(mapH0);
                                mapH0.put("top_level", "1");
                                mapH0.put("meridian_level", "1");
                                mapH0.put("point_level", "0");
                                mapH0.put("item_num", 0);
                                mapH0.put("gong", "0");
                                mapH0.put("fang", "0");
                                mapH0.put("xue", "0");
                                mapH0.put("zhi", "0");
                                map.put("MeridianTop", p5.z0("del", new ArrayList(), "upd", new ArrayList(Collections.singletonList(mapH0)), "add", w1.f0("MeridianTop", map)));
                                if (iL > 0) {
                                    g(iL, 45, "600095", map);
                                }
                                i8 = iL;
                            }
                            if (h0Var.f871p != null) {
                                str11 = strQ0;
                                q2(str11, map);
                            } else {
                                str11 = r11;
                            }
                            iA1 = A1(mapG0) - 1;
                            if (iA1 <= 0) {
                                strValueOf2 = String.valueOf(mapG0.getOrDefault("pk_id", ""));
                                w1.f0("Item", map).remove(mapG0);
                                if (!strValueOf2.isEmpty()) {
                                    obj = map.get("Item");
                                    if (obj instanceof Map) {
                                        map3 = (Map) obj;
                                        objO = map3.get("del");
                                        if (!(objO instanceof List)) {
                                            objO = c.a.o(map3, "del");
                                        }
                                        list = (List) objO;
                                        if (!list.contains(strValueOf2)) {
                                            list.add(strValueOf2);
                                        }
                                    }
                                }
                            } else {
                                mapG0.put("total_num", Integer.valueOf(iA1));
                                mapG0.put("num", Integer.valueOf(iA1));
                                mapG0.put("item_num", Integer.valueOf(iA1));
                            }
                            LinkedHashMap linkedHashMapR = c.a.r("user_general_id", str11, "user_death_general_id", strQ1);
                            if (strQ3.isEmpty()) {
                                strValueOf = String.valueOf(h0Var.f859d);
                            } else {
                                strValueOf = strQ3;
                            }
                            linkedHashMapR.put("sacrifice_type", strValueOf);
                            linkedHashMapR.put("insight_level_before", Integer.valueOf(Math.max(0, i4 - 1)));
                            linkedHashMapR.put("insight_level_now", Integer.valueOf(Math.max(0, i3 - 1)));
                            linkedHashMapR.put("general_level_before", Integer.valueOf(iM2));
                            linkedHashMapR.put("general_level_now", Integer.valueOf(i5));
                            linkedHashMapR.put("attr_hp", Double.valueOf(x(h0Var.f866k, dArr3, 0)));
                            linkedHashMapR.put("attr_attack", Double.valueOf(x(h0Var.f866k, dArr3, 1)));
                            linkedHashMapR.put("attr_defense", Double.valueOf(x(h0Var.f866k, dArr3, 2)));
                            linkedHashMapR.put("attr_wisdom", Double.valueOf(x(h0Var.f866k, dArr3, 3)));
                            linkedHashMapR.put(str16, Integer.valueOf(i7));
                            linkedHashMapR.put("ganoderma", Integer.valueOf(iFloor));
                            linkedHashMapR.put("maili", Integer.valueOf(i8));
                            Boolean bool = Boolean.TRUE;
                            LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
                            linkedHashMapZ0.put("info", linkedHashMapR);
                            linkedHashMapZ0.put("target_user_general_id", str11);
                            linkedHashMapZ0.put("source_user_general_id", strQ1);
                            com.sgscq.vpn.handler.l.b(linkedHashMapZ0, "item_id", str14, i8, "pulse_back");
                            linkedHashMapZ0.put("cmn_modules", "General,Skill,Item,TeamGeneral,MeridianTop");
                            return linkedHashMapZ0;
                        }
                        str = "天赋点不足";
                    } else {
                        i4 = i2;
                    }
                    dArr = h0Var.f865j;
                    if (dArr != null) {
                        if (dArr.length >= 5) {
                            e2(mapA0, "hp", dArr[0]);
                            e2(mapA0, "attack", h0Var.f865j[1]);
                            e2(mapA0, "defense", h0Var.f865j[2]);
                            e2(mapA0, "wisdom", h0Var.f865j[3]);
                            b2(mapA0, h0Var.f865j[4]);
                            dArr2 = dArr;
                        }
                        dArr3 = dArr2;
                        int iM6 = m1(0, "ganoderma_num", mapA1);
                        iFloor = (int) Math.floor(((double) (Math.max(0, iM6 - Math.floorMod(iM6, 5)) * h0Var.f858c)) / 100.0d);
                        str3 = "talent_point";
                        if (iMin2 <= iM2) {
                            iM1 = 0;
                            dArrM1 = null;
                        } else {
                            int iM7 = m1(0, "talent_point", mapA0);
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapA0);
                            dArrM1 = null;
                            w1.a1(null).g(iM2, iMin2, linkedHashMap2);
                            iM1 = m1(iM7, "talent_point", linkedHashMap2) - iM7;
                        }
                        if (h0Var.f859d == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        dK2 = k2("hp", mapA1);
                        dK3 = k2("attack", mapA1);
                        i5 = iMin2;
                        z2 = z;
                        dK4 = k2("defense", mapA1);
                        dK5 = k2("wisdom", mapA1);
                        iRound = (int) Math.round(dK2 + dK3 + dK4 + dK5);
                        int iM8 = m1(0, "talent_point", mapA0) + iM1;
                        if (!z2) {
                            iRound = 0;
                        }
                        i6 = iM8 - iRound;
                        if (i6 < 0) {
                            if (iM1 == 0) {
                                mapA0.put("talent_point", String.valueOf(i6));
                            } else {
                                mapA0.put("talent_point", String.valueOf(i6));
                            }
                            str4 = "hp";
                            if (z2) {
                                e(mapA0, str4, dK2);
                                e(mapA0, "attack", dK3);
                                str5 = "defense";
                                e(mapA0, str5, dK4);
                                str6 = "wisdom";
                                e(mapA0, str6, dK5);
                                mapA0.put("master_sacrificed", "1");
                            } else {
                                str5 = "defense";
                                str6 = "wisdom";
                            }
                            w1Var = h0Var.f871p;
                            if (w1Var != null) {
                                w1Var.F2(strQ0, map);
                            }
                            it = w1.f0("TeamGeneral", map).iterator();
                            while (true) {
                                i7 = iM1;
                                str7 = str6;
                                str8 = str5;
                                str9 = str2;
                                str10 = str4;
                                if (it.hasNext()) {
                                    break;
                                    break;
                                }
                                map4 = (Map) it.next();
                                Iterator it3 = it;
                                String str17 = str3;
                                if (!c.a.C(map4, "pk_id", "", "general_pk_id", strQ0)) {
                                    X("general_level", mapA0, map4, "general_level", "level");
                                    X("level", mapA0, map4, "general_level", "level");
                                    X("general_hp", mapA0, map4, "attr_hp", "general_hp_attr", "base_hp");
                                    X("general_attack", mapA0, map4, "attr_attack", "general_attack_attr", "base_attack");
                                    X("general_defense", mapA0, map4, "attr_defense", "general_defense_attr", "base_defense");
                                    X("general_wisdom", mapA0, map4, "attr_wisdom", "general_wisdom_attr", "base_wisdom");
                                    X("fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                    X("general_fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                    X("fight_point", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                }
                                iM1 = i7;
                                str2 = str9;
                                it = it3;
                                str4 = str10;
                                str3 = str17;
                                str5 = str8;
                                str6 = str7;
                            }
                            String str18 = str3;
                            if (iFloor > 0) {
                                g(iFloor, 19, "600012", map);
                            }
                            mapA1.put(r6, "1");
                            mapA1.put("level", "1");
                            mapA1.put("exp", "0");
                            mapA1.put("general_exp", "0");
                            mapA1.put("general_experience", "0");
                            iMax = Math.max(0, Math.max(m1(0, "magic_talent_point_bonus", mapA1), h0Var.f870o));
                            mapA1.put(str18, String.valueOf(iMax));
                            if (iMax > 0) {
                                mapA1.put("magic_talent_point_bonus", String.valueOf(iMax));
                            }
                            mapA1.put("ganoderma_num", "0");
                            mapA1.put("culture_level", "0");
                            mapA1.put("culture_info", new LinkedHashMap());
                            Q(str10, mapA1);
                            Q(str9, mapA1);
                            Q(str8, mapA1);
                            Q(str7, mapA1);
                            E2(1, mapA1);
                            if (h0Var.f871p == null) {
                            }
                            dArr4 = dArrM1;
                            if (dArr4 != null) {
                                e2(mapA1, str10, 0.0d);
                                e2(mapA1, str9, 0.0d);
                                e2(mapA1, str8, 0.0d);
                                e2(mapA1, str7, 0.0d);
                                b2(mapA1, 0.0d);
                            } else {
                                e2(mapA1, str10, 0.0d);
                                e2(mapA1, str9, 0.0d);
                                e2(mapA1, str8, 0.0d);
                                e2(mapA1, str7, 0.0d);
                                b2(mapA1, 0.0d);
                            }
                            mapH0 = H0(strQ1, map);
                            if (mapH0 == null) {
                                i8 = 0;
                            } else {
                                iL = com.sgscq.vpn.handler.u0.l(mapH0);
                                mapH0.put("top_level", "1");
                                mapH0.put("meridian_level", "1");
                                mapH0.put("point_level", "0");
                                mapH0.put("item_num", 0);
                                mapH0.put("gong", "0");
                                mapH0.put("fang", "0");
                                mapH0.put("xue", "0");
                                mapH0.put("zhi", "0");
                                map.put("MeridianTop", p5.z0("del", new ArrayList(), "upd", new ArrayList(Collections.singletonList(mapH0)), "add", w1.f0("MeridianTop", map)));
                                if (iL > 0) {
                                    g(iL, 45, "600095", map);
                                }
                                i8 = iL;
                            }
                            if (h0Var.f871p != null) {
                                str11 = strQ0;
                                q2(str11, map);
                            } else {
                                str11 = r11;
                            }
                            iA1 = A1(mapG0) - 1;
                            if (iA1 <= 0) {
                                strValueOf2 = String.valueOf(mapG0.getOrDefault("pk_id", ""));
                                w1.f0("Item", map).remove(mapG0);
                                if (!strValueOf2.isEmpty()) {
                                    obj = map.get("Item");
                                    if (obj instanceof Map) {
                                        map3 = (Map) obj;
                                        objO = map3.get("del");
                                        if (!(objO instanceof List)) {
                                            objO = c.a.o(map3, "del");
                                        }
                                        list = (List) objO;
                                        if (!list.contains(strValueOf2)) {
                                            list.add(strValueOf2);
                                        }
                                    }
                                }
                            } else {
                                mapG0.put("total_num", Integer.valueOf(iA1));
                                mapG0.put("num", Integer.valueOf(iA1));
                                mapG0.put("item_num", Integer.valueOf(iA1));
                            }
                            LinkedHashMap linkedHashMapR2 = c.a.r("user_general_id", str11, "user_death_general_id", strQ1);
                            if (strQ3.isEmpty()) {
                                strValueOf = String.valueOf(h0Var.f859d);
                            } else {
                                strValueOf = strQ3;
                            }
                            linkedHashMapR2.put("sacrifice_type", strValueOf);
                            linkedHashMapR2.put("insight_level_before", Integer.valueOf(Math.max(0, i4 - 1)));
                            linkedHashMapR2.put("insight_level_now", Integer.valueOf(Math.max(0, i3 - 1)));
                            linkedHashMapR2.put("general_level_before", Integer.valueOf(iM2));
                            linkedHashMapR2.put("general_level_now", Integer.valueOf(i5));
                            linkedHashMapR2.put("attr_hp", Double.valueOf(x(h0Var.f866k, dArr3, 0)));
                            linkedHashMapR2.put("attr_attack", Double.valueOf(x(h0Var.f866k, dArr3, 1)));
                            linkedHashMapR2.put("attr_defense", Double.valueOf(x(h0Var.f866k, dArr3, 2)));
                            linkedHashMapR2.put("attr_wisdom", Double.valueOf(x(h0Var.f866k, dArr3, 3)));
                            linkedHashMapR2.put(str18, Integer.valueOf(i7));
                            linkedHashMapR2.put("ganoderma", Integer.valueOf(iFloor));
                            linkedHashMapR2.put("maili", Integer.valueOf(i8));
                            Boolean bool2 = Boolean.TRUE;
                            LinkedHashMap linkedHashMapZ1 = p5.z0("ret", 0, "code", 0, "result", bool2, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool2, new Object[0]));
                            linkedHashMapZ1.put("info", linkedHashMapR2);
                            linkedHashMapZ1.put("target_user_general_id", str11);
                            linkedHashMapZ1.put("source_user_general_id", strQ1);
                            com.sgscq.vpn.handler.l.b(linkedHashMapZ1, "item_id", str14, i8, "pulse_back");
                            linkedHashMapZ1.put("cmn_modules", "General,Skill,Item,TeamGeneral,MeridianTop");
                            return linkedHashMapZ1;
                        }
                        str = "天赋点不足";
                    }
                    dArr2 = dArrM0;
                    dArr3 = dArr2;
                    int iM9 = m1(0, "ganoderma_num", mapA1);
                    iFloor = (int) Math.floor(((double) (Math.max(0, iM9 - Math.floorMod(iM9, 5)) * h0Var.f858c)) / 100.0d);
                    str3 = "talent_point";
                    if (iMin2 <= iM2) {
                        iM1 = 0;
                        dArrM1 = null;
                    } else {
                        int iM10 = m1(0, "talent_point", mapA0);
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap(mapA0);
                        dArrM1 = null;
                        w1.a1(null).g(iM2, iMin2, linkedHashMap3);
                        iM1 = m1(iM10, "talent_point", linkedHashMap3) - iM10;
                    }
                    if (h0Var.f859d == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    dK2 = k2("hp", mapA1);
                    dK3 = k2("attack", mapA1);
                    i5 = iMin2;
                    z2 = z;
                    dK4 = k2("defense", mapA1);
                    dK5 = k2("wisdom", mapA1);
                    iRound = (int) Math.round(dK2 + dK3 + dK4 + dK5);
                    int iM11 = m1(0, "talent_point", mapA0) + iM1;
                    if (!z2) {
                        iRound = 0;
                    }
                    i6 = iM11 - iRound;
                    if (i6 < 0) {
                        if (iM1 == 0) {
                            mapA0.put("talent_point", String.valueOf(i6));
                        } else {
                            mapA0.put("talent_point", String.valueOf(i6));
                        }
                        str4 = "hp";
                        if (z2) {
                            e(mapA0, str4, dK2);
                            e(mapA0, "attack", dK3);
                            str5 = "defense";
                            e(mapA0, str5, dK4);
                            str6 = "wisdom";
                            e(mapA0, str6, dK5);
                            mapA0.put("master_sacrificed", "1");
                        } else {
                            str5 = "defense";
                            str6 = "wisdom";
                        }
                        w1Var = h0Var.f871p;
                        if (w1Var != null) {
                            w1Var.F2(strQ0, map);
                        }
                        it = w1.f0("TeamGeneral", map).iterator();
                        while (true) {
                            i7 = iM1;
                            str7 = str6;
                            str8 = str5;
                            str9 = str2;
                            str10 = str4;
                            if (it.hasNext()) {
                                break;
                                break;
                            }
                            map4 = (Map) it.next();
                            Iterator it4 = it;
                            String str19 = str3;
                            if (!c.a.C(map4, "pk_id", "", "general_pk_id", strQ0)) {
                                X("general_level", mapA0, map4, "general_level", "level");
                                X("level", mapA0, map4, "general_level", "level");
                                X("general_hp", mapA0, map4, "attr_hp", "general_hp_attr", "base_hp");
                                X("general_attack", mapA0, map4, "attr_attack", "general_attack_attr", "base_attack");
                                X("general_defense", mapA0, map4, "attr_defense", "general_defense_attr", "base_defense");
                                X("general_wisdom", mapA0, map4, "attr_wisdom", "general_wisdom_attr", "base_wisdom");
                                X("fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                X("general_fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                X("fight_point", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                            }
                            iM1 = i7;
                            str2 = str9;
                            it = it4;
                            str4 = str10;
                            str3 = str19;
                            str5 = str8;
                            str6 = str7;
                        }
                        String str110 = str3;
                        if (iFloor > 0) {
                            g(iFloor, 19, "600012", map);
                        }
                        mapA1.put(r6, "1");
                        mapA1.put("level", "1");
                        mapA1.put("exp", "0");
                        mapA1.put("general_exp", "0");
                        mapA1.put("general_experience", "0");
                        iMax = Math.max(0, Math.max(m1(0, "magic_talent_point_bonus", mapA1), h0Var.f870o));
                        mapA1.put(str110, String.valueOf(iMax));
                        if (iMax > 0) {
                            mapA1.put("magic_talent_point_bonus", String.valueOf(iMax));
                        }
                        mapA1.put("ganoderma_num", "0");
                        mapA1.put("culture_level", "0");
                        mapA1.put("culture_info", new LinkedHashMap());
                        Q(str10, mapA1);
                        Q(str9, mapA1);
                        Q(str8, mapA1);
                        Q(str7, mapA1);
                        E2(1, mapA1);
                        if (h0Var.f871p == null) {
                        }
                        dArr4 = dArrM1;
                        if (dArr4 != null) {
                            e2(mapA1, str10, 0.0d);
                            e2(mapA1, str9, 0.0d);
                            e2(mapA1, str8, 0.0d);
                            e2(mapA1, str7, 0.0d);
                            b2(mapA1, 0.0d);
                        } else {
                            e2(mapA1, str10, 0.0d);
                            e2(mapA1, str9, 0.0d);
                            e2(mapA1, str8, 0.0d);
                            e2(mapA1, str7, 0.0d);
                            b2(mapA1, 0.0d);
                        }
                        mapH0 = H0(strQ1, map);
                        if (mapH0 == null) {
                            i8 = 0;
                        } else {
                            iL = com.sgscq.vpn.handler.u0.l(mapH0);
                            mapH0.put("top_level", "1");
                            mapH0.put("meridian_level", "1");
                            mapH0.put("point_level", "0");
                            mapH0.put("item_num", 0);
                            mapH0.put("gong", "0");
                            mapH0.put("fang", "0");
                            mapH0.put("xue", "0");
                            mapH0.put("zhi", "0");
                            map.put("MeridianTop", p5.z0("del", new ArrayList(), "upd", new ArrayList(Collections.singletonList(mapH0)), "add", w1.f0("MeridianTop", map)));
                            if (iL > 0) {
                                g(iL, 45, "600095", map);
                            }
                            i8 = iL;
                        }
                        if (h0Var.f871p != null) {
                            str11 = strQ0;
                            q2(str11, map);
                        } else {
                            str11 = r11;
                        }
                        iA1 = A1(mapG0) - 1;
                        if (iA1 <= 0) {
                            strValueOf2 = String.valueOf(mapG0.getOrDefault("pk_id", ""));
                            w1.f0("Item", map).remove(mapG0);
                            if (!strValueOf2.isEmpty()) {
                                obj = map.get("Item");
                                if (obj instanceof Map) {
                                    map3 = (Map) obj;
                                    objO = map3.get("del");
                                    if (!(objO instanceof List)) {
                                        objO = c.a.o(map3, "del");
                                    }
                                    list = (List) objO;
                                    if (!list.contains(strValueOf2)) {
                                        list.add(strValueOf2);
                                    }
                                }
                            }
                        } else {
                            mapG0.put("total_num", Integer.valueOf(iA1));
                            mapG0.put("num", Integer.valueOf(iA1));
                            mapG0.put("item_num", Integer.valueOf(iA1));
                        }
                        LinkedHashMap linkedHashMapR3 = c.a.r("user_general_id", str11, "user_death_general_id", strQ1);
                        if (strQ3.isEmpty()) {
                            strValueOf = String.valueOf(h0Var.f859d);
                        } else {
                            strValueOf = strQ3;
                        }
                        linkedHashMapR3.put("sacrifice_type", strValueOf);
                        linkedHashMapR3.put("insight_level_before", Integer.valueOf(Math.max(0, i4 - 1)));
                        linkedHashMapR3.put("insight_level_now", Integer.valueOf(Math.max(0, i3 - 1)));
                        linkedHashMapR3.put("general_level_before", Integer.valueOf(iM2));
                        linkedHashMapR3.put("general_level_now", Integer.valueOf(i5));
                        linkedHashMapR3.put("attr_hp", Double.valueOf(x(h0Var.f866k, dArr3, 0)));
                        linkedHashMapR3.put("attr_attack", Double.valueOf(x(h0Var.f866k, dArr3, 1)));
                        linkedHashMapR3.put("attr_defense", Double.valueOf(x(h0Var.f866k, dArr3, 2)));
                        linkedHashMapR3.put("attr_wisdom", Double.valueOf(x(h0Var.f866k, dArr3, 3)));
                        linkedHashMapR3.put(str110, Integer.valueOf(i7));
                        linkedHashMapR3.put("ganoderma", Integer.valueOf(iFloor));
                        linkedHashMapR3.put("maili", Integer.valueOf(i8));
                        Boolean bool3 = Boolean.TRUE;
                        LinkedHashMap linkedHashMapZ2 = p5.z0("ret", 0, "code", 0, "result", bool3, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool3, new Object[0]));
                        linkedHashMapZ2.put("info", linkedHashMapR3);
                        linkedHashMapZ2.put("target_user_general_id", str11);
                        linkedHashMapZ2.put("source_user_general_id", strQ1);
                        com.sgscq.vpn.handler.l.b(linkedHashMapZ2, "item_id", str14, i8, "pulse_back");
                        linkedHashMapZ2.put("cmn_modules", "General,Skill,Item,TeamGeneral,MeridianTop");
                        return linkedHashMapZ2;
                    }
                    str = "天赋点不足";
                } else {
                    i2 = iI2;
                }
                iMin = i2;
                E2(iMin, mapA0);
                if (h0Var.f871p != null) {
                    dArrM0 = null;
                } else {
                    dArrM0 = null;
                }
                str2 = "attack";
                i3 = iMin;
                if (dArrM0 != null) {
                    i4 = i2;
                    if (dArrM0.length >= 5) {
                        e2(mapA0, "hp", dArrM0[0]);
                        e2(mapA0, "attack", dArrM0[1]);
                        e2(mapA0, "defense", dArrM0[2]);
                        e2(mapA0, "wisdom", dArrM0[3]);
                        b2(mapA0, dArrM0[4]);
                    }
                    dArr2 = dArrM0;
                    dArr3 = dArr2;
                    int iM12 = m1(0, "ganoderma_num", mapA1);
                    iFloor = (int) Math.floor(((double) (Math.max(0, iM12 - Math.floorMod(iM12, 5)) * h0Var.f858c)) / 100.0d);
                    str3 = "talent_point";
                    if (iMin2 <= iM2) {
                        iM1 = 0;
                        dArrM1 = null;
                    } else {
                        int iM13 = m1(0, "talent_point", mapA0);
                        LinkedHashMap linkedHashMap4 = new LinkedHashMap(mapA0);
                        dArrM1 = null;
                        w1.a1(null).g(iM2, iMin2, linkedHashMap4);
                        iM1 = m1(iM13, "talent_point", linkedHashMap4) - iM13;
                    }
                    if (h0Var.f859d == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    dK2 = k2("hp", mapA1);
                    dK3 = k2("attack", mapA1);
                    i5 = iMin2;
                    z2 = z;
                    dK4 = k2("defense", mapA1);
                    dK5 = k2("wisdom", mapA1);
                    iRound = (int) Math.round(dK2 + dK3 + dK4 + dK5);
                    int iM14 = m1(0, "talent_point", mapA0) + iM1;
                    if (!z2) {
                        iRound = 0;
                    }
                    i6 = iM14 - iRound;
                    if (i6 < 0) {
                        if (iM1 == 0) {
                            mapA0.put("talent_point", String.valueOf(i6));
                        } else {
                            mapA0.put("talent_point", String.valueOf(i6));
                        }
                        str4 = "hp";
                        if (z2) {
                            e(mapA0, str4, dK2);
                            e(mapA0, "attack", dK3);
                            str5 = "defense";
                            e(mapA0, str5, dK4);
                            str6 = "wisdom";
                            e(mapA0, str6, dK5);
                            mapA0.put("master_sacrificed", "1");
                        } else {
                            str5 = "defense";
                            str6 = "wisdom";
                        }
                        w1Var = h0Var.f871p;
                        if (w1Var != null) {
                            w1Var.F2(strQ0, map);
                        }
                        it = w1.f0("TeamGeneral", map).iterator();
                        while (true) {
                            i7 = iM1;
                            str7 = str6;
                            str8 = str5;
                            str9 = str2;
                            str10 = str4;
                            if (it.hasNext()) {
                                break;
                                break;
                            }
                            map4 = (Map) it.next();
                            Iterator it5 = it;
                            String str111 = str3;
                            if (!c.a.C(map4, "pk_id", "", "general_pk_id", strQ0)) {
                                X("general_level", mapA0, map4, "general_level", "level");
                                X("level", mapA0, map4, "general_level", "level");
                                X("general_hp", mapA0, map4, "attr_hp", "general_hp_attr", "base_hp");
                                X("general_attack", mapA0, map4, "attr_attack", "general_attack_attr", "base_attack");
                                X("general_defense", mapA0, map4, "attr_defense", "general_defense_attr", "base_defense");
                                X("general_wisdom", mapA0, map4, "attr_wisdom", "general_wisdom_attr", "base_wisdom");
                                X("fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                X("general_fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                X("fight_point", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                            }
                            iM1 = i7;
                            str2 = str9;
                            it = it5;
                            str4 = str10;
                            str3 = str111;
                            str5 = str8;
                            str6 = str7;
                        }
                        String str112 = str3;
                        if (iFloor > 0) {
                            g(iFloor, 19, "600012", map);
                        }
                        mapA1.put(r6, "1");
                        mapA1.put("level", "1");
                        mapA1.put("exp", "0");
                        mapA1.put("general_exp", "0");
                        mapA1.put("general_experience", "0");
                        iMax = Math.max(0, Math.max(m1(0, "magic_talent_point_bonus", mapA1), h0Var.f870o));
                        mapA1.put(str112, String.valueOf(iMax));
                        if (iMax > 0) {
                            mapA1.put("magic_talent_point_bonus", String.valueOf(iMax));
                        }
                        mapA1.put("ganoderma_num", "0");
                        mapA1.put("culture_level", "0");
                        mapA1.put("culture_info", new LinkedHashMap());
                        Q(str10, mapA1);
                        Q(str9, mapA1);
                        Q(str8, mapA1);
                        Q(str7, mapA1);
                        E2(1, mapA1);
                        if (h0Var.f871p == null) {
                        }
                        dArr4 = dArrM1;
                        if (dArr4 != null) {
                            e2(mapA1, str10, 0.0d);
                            e2(mapA1, str9, 0.0d);
                            e2(mapA1, str8, 0.0d);
                            e2(mapA1, str7, 0.0d);
                            b2(mapA1, 0.0d);
                        } else {
                            e2(mapA1, str10, 0.0d);
                            e2(mapA1, str9, 0.0d);
                            e2(mapA1, str8, 0.0d);
                            e2(mapA1, str7, 0.0d);
                            b2(mapA1, 0.0d);
                        }
                        mapH0 = H0(strQ1, map);
                        if (mapH0 == null) {
                            i8 = 0;
                        } else {
                            iL = com.sgscq.vpn.handler.u0.l(mapH0);
                            mapH0.put("top_level", "1");
                            mapH0.put("meridian_level", "1");
                            mapH0.put("point_level", "0");
                            mapH0.put("item_num", 0);
                            mapH0.put("gong", "0");
                            mapH0.put("fang", "0");
                            mapH0.put("xue", "0");
                            mapH0.put("zhi", "0");
                            map.put("MeridianTop", p5.z0("del", new ArrayList(), "upd", new ArrayList(Collections.singletonList(mapH0)), "add", w1.f0("MeridianTop", map)));
                            if (iL > 0) {
                                g(iL, 45, "600095", map);
                            }
                            i8 = iL;
                        }
                        if (h0Var.f871p != null) {
                            str11 = strQ0;
                            q2(str11, map);
                        } else {
                            str11 = r11;
                        }
                        iA1 = A1(mapG0) - 1;
                        if (iA1 <= 0) {
                            strValueOf2 = String.valueOf(mapG0.getOrDefault("pk_id", ""));
                            w1.f0("Item", map).remove(mapG0);
                            if (!strValueOf2.isEmpty()) {
                                obj = map.get("Item");
                                if (obj instanceof Map) {
                                    map3 = (Map) obj;
                                    objO = map3.get("del");
                                    if (!(objO instanceof List)) {
                                        objO = c.a.o(map3, "del");
                                    }
                                    list = (List) objO;
                                    if (!list.contains(strValueOf2)) {
                                        list.add(strValueOf2);
                                    }
                                }
                            }
                        } else {
                            mapG0.put("total_num", Integer.valueOf(iA1));
                            mapG0.put("num", Integer.valueOf(iA1));
                            mapG0.put("item_num", Integer.valueOf(iA1));
                        }
                        LinkedHashMap linkedHashMapR4 = c.a.r("user_general_id", str11, "user_death_general_id", strQ1);
                        if (strQ3.isEmpty()) {
                            strValueOf = String.valueOf(h0Var.f859d);
                        } else {
                            strValueOf = strQ3;
                        }
                        linkedHashMapR4.put("sacrifice_type", strValueOf);
                        linkedHashMapR4.put("insight_level_before", Integer.valueOf(Math.max(0, i4 - 1)));
                        linkedHashMapR4.put("insight_level_now", Integer.valueOf(Math.max(0, i3 - 1)));
                        linkedHashMapR4.put("general_level_before", Integer.valueOf(iM2));
                        linkedHashMapR4.put("general_level_now", Integer.valueOf(i5));
                        linkedHashMapR4.put("attr_hp", Double.valueOf(x(h0Var.f866k, dArr3, 0)));
                        linkedHashMapR4.put("attr_attack", Double.valueOf(x(h0Var.f866k, dArr3, 1)));
                        linkedHashMapR4.put("attr_defense", Double.valueOf(x(h0Var.f866k, dArr3, 2)));
                        linkedHashMapR4.put("attr_wisdom", Double.valueOf(x(h0Var.f866k, dArr3, 3)));
                        linkedHashMapR4.put(str112, Integer.valueOf(i7));
                        linkedHashMapR4.put("ganoderma", Integer.valueOf(iFloor));
                        linkedHashMapR4.put("maili", Integer.valueOf(i8));
                        Boolean bool4 = Boolean.TRUE;
                        LinkedHashMap linkedHashMapZ3 = p5.z0("ret", 0, "code", 0, "result", bool4, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool4, new Object[0]));
                        linkedHashMapZ3.put("info", linkedHashMapR4);
                        linkedHashMapZ3.put("target_user_general_id", str11);
                        linkedHashMapZ3.put("source_user_general_id", strQ1);
                        com.sgscq.vpn.handler.l.b(linkedHashMapZ3, "item_id", str14, i8, "pulse_back");
                        linkedHashMapZ3.put("cmn_modules", "General,Skill,Item,TeamGeneral,MeridianTop");
                        return linkedHashMapZ3;
                    }
                    str = "天赋点不足";
                } else {
                    i4 = i2;
                }
                dArr = h0Var.f865j;
                if (dArr != null) {
                    if (dArr.length >= 5) {
                        e2(mapA0, "hp", dArr[0]);
                        e2(mapA0, "attack", h0Var.f865j[1]);
                        e2(mapA0, "defense", h0Var.f865j[2]);
                        e2(mapA0, "wisdom", h0Var.f865j[3]);
                        b2(mapA0, h0Var.f865j[4]);
                        dArr2 = dArr;
                    }
                    dArr3 = dArr2;
                    int iM15 = m1(0, "ganoderma_num", mapA1);
                    iFloor = (int) Math.floor(((double) (Math.max(0, iM15 - Math.floorMod(iM15, 5)) * h0Var.f858c)) / 100.0d);
                    str3 = "talent_point";
                    if (iMin2 <= iM2) {
                        iM1 = 0;
                        dArrM1 = null;
                    } else {
                        int iM16 = m1(0, "talent_point", mapA0);
                        LinkedHashMap linkedHashMap5 = new LinkedHashMap(mapA0);
                        dArrM1 = null;
                        w1.a1(null).g(iM2, iMin2, linkedHashMap5);
                        iM1 = m1(iM16, "talent_point", linkedHashMap5) - iM16;
                    }
                    if (h0Var.f859d == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    dK2 = k2("hp", mapA1);
                    dK3 = k2("attack", mapA1);
                    i5 = iMin2;
                    z2 = z;
                    dK4 = k2("defense", mapA1);
                    dK5 = k2("wisdom", mapA1);
                    iRound = (int) Math.round(dK2 + dK3 + dK4 + dK5);
                    int iM17 = m1(0, "talent_point", mapA0) + iM1;
                    if (!z2) {
                        iRound = 0;
                    }
                    i6 = iM17 - iRound;
                    if (i6 < 0) {
                        if (iM1 == 0) {
                            mapA0.put("talent_point", String.valueOf(i6));
                        } else {
                            mapA0.put("talent_point", String.valueOf(i6));
                        }
                        str4 = "hp";
                        if (z2) {
                            e(mapA0, str4, dK2);
                            e(mapA0, "attack", dK3);
                            str5 = "defense";
                            e(mapA0, str5, dK4);
                            str6 = "wisdom";
                            e(mapA0, str6, dK5);
                            mapA0.put("master_sacrificed", "1");
                        } else {
                            str5 = "defense";
                            str6 = "wisdom";
                        }
                        w1Var = h0Var.f871p;
                        if (w1Var != null) {
                            w1Var.F2(strQ0, map);
                        }
                        it = w1.f0("TeamGeneral", map).iterator();
                        while (true) {
                            i7 = iM1;
                            str7 = str6;
                            str8 = str5;
                            str9 = str2;
                            str10 = str4;
                            if (it.hasNext()) {
                                break;
                                break;
                            }
                            map4 = (Map) it.next();
                            Iterator it6 = it;
                            String str113 = str3;
                            if (!c.a.C(map4, "pk_id", "", "general_pk_id", strQ0)) {
                                X("general_level", mapA0, map4, "general_level", "level");
                                X("level", mapA0, map4, "general_level", "level");
                                X("general_hp", mapA0, map4, "attr_hp", "general_hp_attr", "base_hp");
                                X("general_attack", mapA0, map4, "attr_attack", "general_attack_attr", "base_attack");
                                X("general_defense", mapA0, map4, "attr_defense", "general_defense_attr", "base_defense");
                                X("general_wisdom", mapA0, map4, "attr_wisdom", "general_wisdom_attr", "base_wisdom");
                                X("fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                X("general_fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                                X("fight_point", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                            }
                            iM1 = i7;
                            str2 = str9;
                            it = it6;
                            str4 = str10;
                            str3 = str113;
                            str5 = str8;
                            str6 = str7;
                        }
                        String str114 = str3;
                        if (iFloor > 0) {
                            g(iFloor, 19, "600012", map);
                        }
                        mapA1.put(r6, "1");
                        mapA1.put("level", "1");
                        mapA1.put("exp", "0");
                        mapA1.put("general_exp", "0");
                        mapA1.put("general_experience", "0");
                        iMax = Math.max(0, Math.max(m1(0, "magic_talent_point_bonus", mapA1), h0Var.f870o));
                        mapA1.put(str114, String.valueOf(iMax));
                        if (iMax > 0) {
                            mapA1.put("magic_talent_point_bonus", String.valueOf(iMax));
                        }
                        mapA1.put("ganoderma_num", "0");
                        mapA1.put("culture_level", "0");
                        mapA1.put("culture_info", new LinkedHashMap());
                        Q(str10, mapA1);
                        Q(str9, mapA1);
                        Q(str8, mapA1);
                        Q(str7, mapA1);
                        E2(1, mapA1);
                        if (h0Var.f871p == null) {
                        }
                        dArr4 = dArrM1;
                        if (dArr4 != null) {
                            e2(mapA1, str10, 0.0d);
                            e2(mapA1, str9, 0.0d);
                            e2(mapA1, str8, 0.0d);
                            e2(mapA1, str7, 0.0d);
                            b2(mapA1, 0.0d);
                        } else {
                            e2(mapA1, str10, 0.0d);
                            e2(mapA1, str9, 0.0d);
                            e2(mapA1, str8, 0.0d);
                            e2(mapA1, str7, 0.0d);
                            b2(mapA1, 0.0d);
                        }
                        mapH0 = H0(strQ1, map);
                        if (mapH0 == null) {
                            i8 = 0;
                        } else {
                            iL = com.sgscq.vpn.handler.u0.l(mapH0);
                            mapH0.put("top_level", "1");
                            mapH0.put("meridian_level", "1");
                            mapH0.put("point_level", "0");
                            mapH0.put("item_num", 0);
                            mapH0.put("gong", "0");
                            mapH0.put("fang", "0");
                            mapH0.put("xue", "0");
                            mapH0.put("zhi", "0");
                            map.put("MeridianTop", p5.z0("del", new ArrayList(), "upd", new ArrayList(Collections.singletonList(mapH0)), "add", w1.f0("MeridianTop", map)));
                            if (iL > 0) {
                                g(iL, 45, "600095", map);
                            }
                            i8 = iL;
                        }
                        if (h0Var.f871p != null) {
                            str11 = strQ0;
                            q2(str11, map);
                        } else {
                            str11 = r11;
                        }
                        iA1 = A1(mapG0) - 1;
                        if (iA1 <= 0) {
                            strValueOf2 = String.valueOf(mapG0.getOrDefault("pk_id", ""));
                            w1.f0("Item", map).remove(mapG0);
                            if (!strValueOf2.isEmpty()) {
                                obj = map.get("Item");
                                if (obj instanceof Map) {
                                    map3 = (Map) obj;
                                    objO = map3.get("del");
                                    if (!(objO instanceof List)) {
                                        objO = c.a.o(map3, "del");
                                    }
                                    list = (List) objO;
                                    if (!list.contains(strValueOf2)) {
                                        list.add(strValueOf2);
                                    }
                                }
                            }
                        } else {
                            mapG0.put("total_num", Integer.valueOf(iA1));
                            mapG0.put("num", Integer.valueOf(iA1));
                            mapG0.put("item_num", Integer.valueOf(iA1));
                        }
                        LinkedHashMap linkedHashMapR5 = c.a.r("user_general_id", str11, "user_death_general_id", strQ1);
                        if (strQ3.isEmpty()) {
                            strValueOf = String.valueOf(h0Var.f859d);
                        } else {
                            strValueOf = strQ3;
                        }
                        linkedHashMapR5.put("sacrifice_type", strValueOf);
                        linkedHashMapR5.put("insight_level_before", Integer.valueOf(Math.max(0, i4 - 1)));
                        linkedHashMapR5.put("insight_level_now", Integer.valueOf(Math.max(0, i3 - 1)));
                        linkedHashMapR5.put("general_level_before", Integer.valueOf(iM2));
                        linkedHashMapR5.put("general_level_now", Integer.valueOf(i5));
                        linkedHashMapR5.put("attr_hp", Double.valueOf(x(h0Var.f866k, dArr3, 0)));
                        linkedHashMapR5.put("attr_attack", Double.valueOf(x(h0Var.f866k, dArr3, 1)));
                        linkedHashMapR5.put("attr_defense", Double.valueOf(x(h0Var.f866k, dArr3, 2)));
                        linkedHashMapR5.put("attr_wisdom", Double.valueOf(x(h0Var.f866k, dArr3, 3)));
                        linkedHashMapR5.put(str114, Integer.valueOf(i7));
                        linkedHashMapR5.put("ganoderma", Integer.valueOf(iFloor));
                        linkedHashMapR5.put("maili", Integer.valueOf(i8));
                        Boolean bool5 = Boolean.TRUE;
                        LinkedHashMap linkedHashMapZ4 = p5.z0("ret", 0, "code", 0, "result", bool5, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool5, new Object[0]));
                        linkedHashMapZ4.put("info", linkedHashMapR5);
                        linkedHashMapZ4.put("target_user_general_id", str11);
                        linkedHashMapZ4.put("source_user_general_id", strQ1);
                        com.sgscq.vpn.handler.l.b(linkedHashMapZ4, "item_id", str14, i8, "pulse_back");
                        linkedHashMapZ4.put("cmn_modules", "General,Skill,Item,TeamGeneral,MeridianTop");
                        return linkedHashMapZ4;
                    }
                    str = "天赋点不足";
                }
                dArr2 = dArrM0;
                dArr3 = dArr2;
                int iM18 = m1(0, "ganoderma_num", mapA1);
                iFloor = (int) Math.floor(((double) (Math.max(0, iM18 - Math.floorMod(iM18, 5)) * h0Var.f858c)) / 100.0d);
                str3 = "talent_point";
                if (iMin2 <= iM2) {
                    iM1 = 0;
                    dArrM1 = null;
                } else {
                    int iM19 = m1(0, "talent_point", mapA0);
                    LinkedHashMap linkedHashMap6 = new LinkedHashMap(mapA0);
                    dArrM1 = null;
                    w1.a1(null).g(iM2, iMin2, linkedHashMap6);
                    iM1 = m1(iM19, "talent_point", linkedHashMap6) - iM19;
                }
                if (h0Var.f859d == 1) {
                    z = true;
                } else {
                    z = false;
                }
                dK2 = k2("hp", mapA1);
                dK3 = k2("attack", mapA1);
                i5 = iMin2;
                z2 = z;
                dK4 = k2("defense", mapA1);
                dK5 = k2("wisdom", mapA1);
                iRound = (int) Math.round(dK2 + dK3 + dK4 + dK5);
                int iM110 = m1(0, "talent_point", mapA0) + iM1;
                if (!z2) {
                    iRound = 0;
                }
                i6 = iM110 - iRound;
                if (i6 < 0) {
                    if (iM1 == 0) {
                        mapA0.put("talent_point", String.valueOf(i6));
                    } else {
                        mapA0.put("talent_point", String.valueOf(i6));
                    }
                    str4 = "hp";
                    if (z2) {
                        e(mapA0, str4, dK2);
                        e(mapA0, "attack", dK3);
                        str5 = "defense";
                        e(mapA0, str5, dK4);
                        str6 = "wisdom";
                        e(mapA0, str6, dK5);
                        mapA0.put("master_sacrificed", "1");
                    } else {
                        str5 = "defense";
                        str6 = "wisdom";
                    }
                    w1Var = h0Var.f871p;
                    if (w1Var != null) {
                        w1Var.F2(strQ0, map);
                    }
                    it = w1.f0("TeamGeneral", map).iterator();
                    while (true) {
                        i7 = iM1;
                        str7 = str6;
                        str8 = str5;
                        str9 = str2;
                        str10 = str4;
                        if (it.hasNext()) {
                            break;
                            break;
                        }
                        map4 = (Map) it.next();
                        Iterator it7 = it;
                        String str115 = str3;
                        if (!c.a.C(map4, "pk_id", "", "general_pk_id", strQ0)) {
                            X("general_level", mapA0, map4, "general_level", "level");
                            X("level", mapA0, map4, "general_level", "level");
                            X("general_hp", mapA0, map4, "attr_hp", "general_hp_attr", "base_hp");
                            X("general_attack", mapA0, map4, "attr_attack", "general_attack_attr", "base_attack");
                            X("general_defense", mapA0, map4, "attr_defense", "general_defense_attr", "base_defense");
                            X("general_wisdom", mapA0, map4, "attr_wisdom", "general_wisdom_attr", "base_wisdom");
                            X("fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                            X("general_fighting", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                            X("fight_point", mapA0, map4, "general_fighting", "fighting", "fight_point", "fighting_point");
                        }
                        iM1 = i7;
                        str2 = str9;
                        it = it7;
                        str4 = str10;
                        str3 = str115;
                        str5 = str8;
                        str6 = str7;
                    }
                    String str116 = str3;
                    if (iFloor > 0) {
                        g(iFloor, 19, "600012", map);
                    }
                    mapA1.put(r6, "1");
                    mapA1.put("level", "1");
                    mapA1.put("exp", "0");
                    mapA1.put("general_exp", "0");
                    mapA1.put("general_experience", "0");
                    iMax = Math.max(0, Math.max(m1(0, "magic_talent_point_bonus", mapA1), h0Var.f870o));
                    mapA1.put(str116, String.valueOf(iMax));
                    if (iMax > 0) {
                        mapA1.put("magic_talent_point_bonus", String.valueOf(iMax));
                    }
                    mapA1.put("ganoderma_num", "0");
                    mapA1.put("culture_level", "0");
                    mapA1.put("culture_info", new LinkedHashMap());
                    Q(str10, mapA1);
                    Q(str9, mapA1);
                    Q(str8, mapA1);
                    Q(str7, mapA1);
                    E2(1, mapA1);
                    if (h0Var.f871p == null) {
                    }
                    dArr4 = dArrM1;
                    if (dArr4 != null) {
                        e2(mapA1, str10, 0.0d);
                        e2(mapA1, str9, 0.0d);
                        e2(mapA1, str8, 0.0d);
                        e2(mapA1, str7, 0.0d);
                        b2(mapA1, 0.0d);
                    } else {
                        e2(mapA1, str10, 0.0d);
                        e2(mapA1, str9, 0.0d);
                        e2(mapA1, str8, 0.0d);
                        e2(mapA1, str7, 0.0d);
                        b2(mapA1, 0.0d);
                    }
                    mapH0 = H0(strQ1, map);
                    if (mapH0 == null) {
                        i8 = 0;
                    } else {
                        iL = com.sgscq.vpn.handler.u0.l(mapH0);
                        mapH0.put("top_level", "1");
                        mapH0.put("meridian_level", "1");
                        mapH0.put("point_level", "0");
                        mapH0.put("item_num", 0);
                        mapH0.put("gong", "0");
                        mapH0.put("fang", "0");
                        mapH0.put("xue", "0");
                        mapH0.put("zhi", "0");
                        map.put("MeridianTop", p5.z0("del", new ArrayList(), "upd", new ArrayList(Collections.singletonList(mapH0)), "add", w1.f0("MeridianTop", map)));
                        if (iL > 0) {
                            g(iL, 45, "600095", map);
                        }
                        i8 = iL;
                    }
                    if (h0Var.f871p != null) {
                        str11 = strQ0;
                        q2(str11, map);
                    } else {
                        str11 = r11;
                    }
                    iA1 = A1(mapG0) - 1;
                    if (iA1 <= 0) {
                        strValueOf2 = String.valueOf(mapG0.getOrDefault("pk_id", ""));
                        w1.f0("Item", map).remove(mapG0);
                        if (!strValueOf2.isEmpty()) {
                            obj = map.get("Item");
                            if (obj instanceof Map) {
                                map3 = (Map) obj;
                                objO = map3.get("del");
                                if (!(objO instanceof List)) {
                                    objO = c.a.o(map3, "del");
                                }
                                list = (List) objO;
                                if (!list.contains(strValueOf2)) {
                                    list.add(strValueOf2);
                                }
                            }
                        }
                    } else {
                        mapG0.put("total_num", Integer.valueOf(iA1));
                        mapG0.put("num", Integer.valueOf(iA1));
                        mapG0.put("item_num", Integer.valueOf(iA1));
                    }
                    LinkedHashMap linkedHashMapR6 = c.a.r("user_general_id", str11, "user_death_general_id", strQ1);
                    if (strQ3.isEmpty()) {
                        strValueOf = String.valueOf(h0Var.f859d);
                    } else {
                        strValueOf = strQ3;
                    }
                    linkedHashMapR6.put("sacrifice_type", strValueOf);
                    linkedHashMapR6.put("insight_level_before", Integer.valueOf(Math.max(0, i4 - 1)));
                    linkedHashMapR6.put("insight_level_now", Integer.valueOf(Math.max(0, i3 - 1)));
                    linkedHashMapR6.put("general_level_before", Integer.valueOf(iM2));
                    linkedHashMapR6.put("general_level_now", Integer.valueOf(i5));
                    linkedHashMapR6.put("attr_hp", Double.valueOf(x(h0Var.f866k, dArr3, 0)));
                    linkedHashMapR6.put("attr_attack", Double.valueOf(x(h0Var.f866k, dArr3, 1)));
                    linkedHashMapR6.put("attr_defense", Double.valueOf(x(h0Var.f866k, dArr3, 2)));
                    linkedHashMapR6.put("attr_wisdom", Double.valueOf(x(h0Var.f866k, dArr3, 3)));
                    linkedHashMapR6.put(str116, Integer.valueOf(i7));
                    linkedHashMapR6.put("ganoderma", Integer.valueOf(iFloor));
                    linkedHashMapR6.put("maili", Integer.valueOf(i8));
                    Boolean bool6 = Boolean.TRUE;
                    LinkedHashMap linkedHashMapZ5 = p5.z0("ret", 0, "code", 0, "result", bool6, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool6, new Object[0]));
                    linkedHashMapZ5.put("info", linkedHashMapR6);
                    linkedHashMapZ5.put("target_user_general_id", str11);
                    linkedHashMapZ5.put("source_user_general_id", strQ1);
                    com.sgscq.vpn.handler.l.b(linkedHashMapZ5, "item_id", str14, i8, "pulse_back");
                    linkedHashMapZ5.put("cmn_modules", "General,Skill,Item,TeamGeneral,MeridianTop");
                    return linkedHashMapZ5;
                }
                str = "天赋点不足";
            }
        }
        return o0(str);
    }

    public static LinkedHashMap p0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static boolean p1(String str) {
        return "600035".equals(str);
    }

    public static int p2(int i2, String str, Map map) {
        List listF0 = w1.f0("Item", map);
        if (listF0 == null) {
            return 0;
        }
        for (int i3 = 0; i3 < listF0.size(); i3++) {
            Map map2 = (Map) listF0.get(i3);
            if (map2 != null && str.equals(c.a.k(map2, "pk_id", "", "id", "item_id"))) {
                int iMax = Math.max(0, w1.l2(String.valueOf(map2.getOrDefault("item_num", map2.getOrDefault("num", "0"))), 0));
                int iMin = Math.min(iMax, i2);
                int i4 = iMax - iMin;
                if (i4 <= 0) {
                    listF0.remove(i3);
                } else {
                    c.a.t(i4, map2, "item_num", i4, "num");
                }
                return iMin;
            }
        }
        return 0;
    }

    public static LinkedHashMap q(Map map, Map map2) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        Object obj;
        ArrayList arrayList;
        String strR0 = R0(map2, "user_general_id", "general_pk_id", "pk_id");
        String strR1 = R0(map2, "new_equipment_id", "equip_id", "equipment_id", "user_equipment_id");
        Map mapB0 = B0(strR0, w1.f0("General", map));
        Map mapB1 = B0(strR1, w1.f0("Equipment", map));
        if (mapB0 == null) {
            return p0("武将不存在");
        }
        if (mapB1 == null) {
            return p0("装备不存在");
        }
        String strJ0 = j0(mapB1);
        if (strJ0.isEmpty()) {
            return p0("装备栏位不存在");
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b(strR0, arrayList2);
        b(strR1, arrayList3);
        String strS1 = S1(mapB1);
        String str10 = "horse_id";
        ArrayList arrayList4 = arrayList3;
        Object obj2 = "user_general_id";
        String str11 = "";
        String str12 = "general_pk_id";
        String str13 = "pk_id";
        if (strS1.isEmpty() || strR0.equals(strS1)) {
            str = "General";
        } else {
            Map mapB2 = B0(strS1, w1.f0("General", map));
            if (mapB2 == null) {
                str = "General";
            } else {
                str = "General";
                if (strR1.equals(P2("equipment_".concat(strJ0), P2("equipment_id_".concat(strJ0), "", mapB2), mapB2))) {
                    mapB2.put("equipment_".concat(strJ0), "0");
                    mapB2.put("equipment_id_".concat(strJ0), "0");
                    mapB2.put("equip_id_".concat(strJ0), "0");
                }
                if ("3".equals(strJ0)) {
                    if (strR1.equals(P2("mount_id", "", mapB2))) {
                        mapB2.put("mount_id", "0");
                    }
                    if (strR1.equals(P2("horse_id", "", mapB2))) {
                        mapB2.put("horse_id", "0");
                    }
                }
            }
            b(strS1, arrayList2);
        }
        Iterator it = w1.f0("Equipment", map).iterator();
        while (it.hasNext()) {
            Map map3 = (Map) it.next();
            Iterator it2 = it;
            String str14 = str13;
            ArrayList arrayList5 = arrayList2;
            String strP2 = P2(str14, "", map3);
            if (strP2.equals(strR1)) {
                str6 = strR1;
                str7 = str10;
                str8 = strR0;
            } else {
                str6 = strR1;
                str7 = str10;
                str8 = strR0;
                if (str8.equals(S1(map3)) && strJ0.equals(j0(map3))) {
                    strR0 = str8;
                    str9 = str12;
                    map3.put(str9, null);
                    map3.put("general_id", null);
                    obj = obj2;
                    map3.put(obj, null);
                    map3.put("is_wear", "0");
                    map3.put("wear", "0");
                    arrayList = arrayList4;
                    b(strP2, arrayList);
                }
                obj2 = obj;
                arrayList4 = arrayList;
                str12 = str9;
                arrayList2 = arrayList5;
                strR1 = str6;
                str10 = str7;
                str13 = str14;
                it = it2;
            }
            strR0 = str8;
            arrayList = arrayList4;
            obj = obj2;
            str9 = str12;
            obj2 = obj;
            arrayList4 = arrayList;
            str12 = str9;
            arrayList2 = arrayList5;
            strR1 = str6;
            str10 = str7;
            str13 = str14;
            it = it2;
        }
        String str15 = strR1;
        String str16 = str10;
        Object obj3 = obj2;
        String str17 = str12;
        String str18 = str13;
        ArrayList arrayList6 = arrayList2;
        String str19 = "0";
        String str20 = "equipment_";
        mapB0.put("equipment_".concat(strJ0), P2(str18, "", mapB1));
        mapB0.put("equipment_id_".concat(strJ0), P2(str18, "", mapB1));
        mapB0.put("equip_id_".concat(strJ0), P2(str18, "", mapB1));
        if ("3".equals(strJ0)) {
            mapB0.put("mount_id", P2(str18, "", mapB1));
            str2 = str16;
            mapB0.put(str2, P2(str18, "", mapB1));
        } else {
            str2 = str16;
        }
        String str21 = strR0;
        mapB1.put(str17, str21);
        mapB1.put("general_id", str21);
        mapB1.put(obj3, str21);
        mapB1.put("is_wear", "1");
        mapB1.put("wear", "1");
        String str22 = "equipment_pos";
        mapB1.put("equipment_pos", strJ0);
        w1 w1VarA1 = w1.a1(null);
        Iterator it3 = arrayList6.iterator();
        while (it3.hasNext()) {
            String str23 = (String) it3.next();
            Iterator it4 = it3;
            str = str;
            Map mapB3 = B0(str23, w1.f0(str, map));
            if (mapB3 == null) {
                str3 = str22;
                str4 = str11;
                str5 = str17;
            } else {
                Iterator it5 = w1.f0("TeamGeneral", map).iterator();
                while (it5.hasNext()) {
                    it5 = it5;
                    Map map4 = (Map) it5.next();
                    str22 = str22;
                    if (str23.equals(P2(str17, P2(str18, str11, map4), map4))) {
                        int i2 = 1;
                        String str24 = str11;
                        while (i2 <= 4) {
                            String str25 = str20;
                            String str26 = str18;
                            String strA = a.b0.a(str25, i2);
                            String str27 = str17;
                            String str28 = str19;
                            String strP3 = P2(strA, P2("equipment_id_" + i2, str28, mapB3), mapB3);
                            if (strP3.isEmpty()) {
                                strP3 = str28;
                            }
                            map4.put(strA, strP3);
                            map4.put("equipment_id_" + i2, strP3);
                            map4.put("equip_id_" + i2, strP3);
                            i2++;
                            str19 = str28;
                            str18 = str26;
                            str20 = str25;
                            str17 = str27;
                        }
                        String str29 = str17;
                        String str30 = str19;
                        map4.put("mount_id", P2("mount_id", P2(str2, str30, mapB3), mapB3));
                        map4.put(str2, P2(str2, P2("mount_id", str30, mapB3), mapB3));
                        str11 = str24;
                        str20 = str20;
                        str17 = str29;
                    }
                }
                str3 = str22;
                str4 = str11;
                str5 = str17;
            }
            String str31 = str19;
            String str32 = str20;
            String str33 = str18;
            w1VarA1.F2(str23, map);
            it3 = it4;
            str19 = str31;
            str22 = str3;
            str18 = str33;
            str11 = str4;
            str20 = str32;
            str17 = str5;
        }
        String str34 = str22;
        Boolean bool = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
        linkedHashMapZ0.put(obj3, str21);
        linkedHashMapZ0.put("new_equipment_id", str15);
        linkedHashMapZ0.put("equipment_id", str15);
        linkedHashMapZ0.put(str34, strJ0);
        linkedHashMapZ0.put("changed_general_pk_ids", arrayList6);
        linkedHashMapZ0.put("changed_equipment_pk_ids", arrayList4);
        linkedHashMapZ0.put("cmn_modules", "General,Equipment,TeamGeneral");
        return linkedHashMapZ0;
    }

    public static LinkedHashMap q0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static boolean q1(String str) {
        if (str != null && (str.startsWith("magic.") || str.startsWith("evolution.") || str.startsWith("beauty.") || str.startsWith("hulao.") || str.startsWith("evolutionChest.") || str.startsWith("pulse.") || str.startsWith("meridian.") || str.startsWith("skillRefine."))) {
            if (str.startsWith("magic.") || str.startsWith("hulao.") || str.startsWith("evolution.") || str.startsWith("evolutionChest.") || str.startsWith("pulse.") || str.startsWith("meridian.")) {
                return true;
            }
        }
        return false;
    }

    public static ArrayList q2(String str, Map map) {
        ArrayList arrayListH = h(str, map);
        w1 w1VarA1 = w1.a1(null);
        Iterator it = arrayListH.iterator();
        while (it.hasNext()) {
            w1VarA1.F2((String) it.next(), map);
        }
        return arrayListH;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x026e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0298  */
    /* JADX WARN: Code duplicated, block: B:106:0x029b  */
    /* JADX WARN: Code duplicated, block: B:110:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:111:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:122:0x030d A[LOOP:3: B:120:0x0307->B:122:0x030d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:126:0x0339  */
    /* JADX WARN: Code duplicated, block: B:142:0x03b0  */
    public static LinkedHashMap r(Map map, Map map2) {
        boolean z;
        String str;
        boolean z2;
        String str2;
        String str3;
        ArrayList arrayList;
        String str4;
        String str5;
        String str6;
        Map mapC0;
        String strY2;
        String strS0 = S0(map2, "major_user_general_id", "master_user_general_id", "main_user_general_id", "general_user_id", "user_general_id", "general_pk_id", "pk_id");
        String strS1 = S0(map2, "lieutenant_user_general_id", "lieutenant_general_id", "assistant_general_id", "assistant_user_general_id", "sub_user_general_id", "vice_user_general_id");
        String str7 = "skill_type_lieutenant";
        String strS2 = S0(map2, "position", "pos", "lieutenant_position", "skill_type_lieutenant");
        if (strS2.isEmpty()) {
            strS2 = "1";
        }
        Map mapC1 = C0(strS0, w1.f0("General", map));
        Map mapC2 = C0(strS1, w1.f0("General", map));
        if (mapC1 == null || mapC2 == null) {
            return q0("副将不存在");
        }
        int iL1 = L1(map, v0(strS1, w1.f0("General", map)));
        if (r1(iL1)) {
            HashSet hashSet = new HashSet();
            Iterator it = w1.f0("Skill", map).iterator();
            while (it.hasNext()) {
                Map map3 = (Map) it.next();
                Iterator it2 = it;
                if (strS0.equals(M2("general_pk_id", "", map3)) && !s1(map3)) {
                    int iH2 = H2(map3);
                    if (r1(iH2)) {
                        hashSet.add(Integer.valueOf(iH2));
                    }
                }
                it = it2;
            }
            f(map, strS0, strS1, strS2, hashSet);
            z = !hashSet.contains(Integer.valueOf(iL1));
        } else {
            z = true;
        }
        if (!z) {
            return q0("技能类型重复");
        }
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMapK1 = K1(map);
        if (w1.x2(map)) {
            Iterator it3 = K1(map).entrySet().iterator();
            while (it3.hasNext()) {
                Map.Entry entry = (Map.Entry) it3.next();
                Iterator it4 = it3;
                String str8 = str7;
                if (!((String) entry.getValue()).equals(linkedHashMapK1.get(entry.getKey()))) {
                    c((String) entry.getKey(), arrayList2);
                }
                str7 = str8;
                it3 = it4;
            }
        }
        String str9 = str7;
        c(strS0, arrayList2);
        c(strS1, arrayList2);
        String strQ2 = Q2("major_pk_id", "", mapC2);
        if (!strQ2.equals(strS0)) {
            c(strQ2, arrayList2);
        }
        String str10 = "null";
        if (strS1.isEmpty() || "0".equals(strS1) || "null".equalsIgnoreCase(strS1)) {
            str = "null";
            z2 = false;
        } else {
            Iterator it5 = w1.f0("BuddyGeneral", map).iterator();
            z2 = false;
            while (it5.hasNext()) {
                Iterator it6 = it5;
                Map map4 = (Map) it5.next();
                String str11 = str10;
                if (c.a.B(map4, "pk_id", "", strS1) || c.a.B(map4, "general_pk_id", "", strS1) || c.a.B(map4, "suspended_general_pk_id", "", strS1)) {
                    map4.put("pk_id", "");
                    map4.put("general_pk_id", "");
                    map4.remove("suspended_general_pk_id");
                    if (map4.containsKey("user_general_id")) {
                        map4.put("user_general_id", "");
                    }
                    z2 = true;
                }
                it5 = it6;
                str10 = str11;
            }
            str = str10;
        }
        Iterator it7 = w1.f0("General", map).iterator();
        while (it7.hasNext()) {
            Map map5 = (Map) it7.next();
            Iterator it8 = it7;
            if (strS1.equals(Q2("major_pk_id", "", map5))) {
                R(map5);
                c(Q2("pk_id", "", map5), arrayList2);
            }
            it7 = it8;
        }
        R(mapC2);
        Iterator it9 = w1.f0("General", map).iterator();
        while (it9.hasNext()) {
            Map map6 = (Map) it9.next();
            it9 = it9;
            String strQ3 = Q2("pk_id", "", map6);
            if (!strQ3.equals(strS1)) {
                String str12 = strS1;
                if (strS0.equals(Q2("major_pk_id", "", map6)) && strS2.equals(Q2("position", "", map6))) {
                    R(map6);
                    c(strQ3, arrayList2);
                }
                strS1 = str12;
            }
        }
        String str13 = strS1;
        String strS3 = S0(map2, "lieutenant_skill_id", "skill_id", "skill_code");
        w1 w1VarA1 = w1.a1(null);
        if (!strS3.isEmpty() && !"0".equals(strS3)) {
            str2 = str;
            if (str2.equalsIgnoreCase(strS3) || w1VarA1.e1(strS3) == null) {
            }
            mapC2.put("major_pk_id", strS0);
            mapC2.put("position", strS2);
            if (strS3.isEmpty()) {
                str3 = strS3;
                arrayList = arrayList2;
                str4 = "pk_id";
                str2 = str2;
                str5 = strS2;
                str6 = str9;
                mapC1.put("lieutenant_skill_id", "");
                mapC1.put(str6, "");
                mapC1.put("ls_type", "0");
                mapC1.put("ls_value", "0");
                mapC2.put("lieutenant_skill_id", "");
                mapC2.put(str6, "");
                mapC2.put("ls_type", "0");
                mapC2.put("ls_value", "0");
            } else {
                mapC1.put("lieutenant_skill_id", strS3);
                str5 = strS2;
                str6 = str9;
                mapC1.put(str6, strS3);
                mapC2.put("lieutenant_skill_id", strS3);
                mapC2.put(str6, strS3);
                str3 = strS3;
                strY2 = w1.a1(null).y2(mapC2);
                arrayList = arrayList2;
                str4 = "pk_id";
                if (strY2.isEmpty()) {
                    w1.a1(null).G2(mapC1, strY2, 0.0d);
                }
                if (!strY2.isEmpty()) {
                    w1.a1(null).G2(mapC2, strY2, 0.0d);
                }
            }
            if (!strQ2.isEmpty() && !strQ2.equals(strS0) && (mapC0 = C0(strQ2, w1.f0("General", map))) != null) {
                mapC0.put("lieutenant_skill_id", "");
                mapC0.put(str6, "");
                mapC0.put("ls_type", "0");
                mapC0.put("ls_value", "0");
            }
            for (Map map7 : w1.f0("TeamGeneral", map)) {
                c(Q2("general_pk_id", Q2(str4, "", map7), map7), arrayList);
            }
            ArrayList<String> arrayList3 = arrayList;
            w1 w1VarA2 = w1.a1(null);
            w1VarA2.F2(str13, map);
            for (String str14 : arrayList3) {
                if (str14 == null && !str14.isEmpty() && !"0".equals(str14)) {
                    String str15 = str2;
                    if (!str15.equalsIgnoreCase(str14) && !str14.equals(str13)) {
                        w1VarA2.F2(str14, map);
                    }
                    str2 = str15;
                }
            }
            Boolean bool = Boolean.TRUE;
            LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
            linkedHashMapZ0.put("major_user_general_id", strS0);
            linkedHashMapZ0.put("lieutenant_user_general_id", str13);
            linkedHashMapZ0.put("position", str5);
            linkedHashMapZ0.put("lieutenant_skill_id", str3);
            linkedHashMapZ0.put("changed_general_pk_ids", arrayList3);
            linkedHashMapZ0.put("buddy_changed", Boolean.valueOf(z2));
            linkedHashMapZ0.put("cmn_modules", z2 ? "General,BuddyGeneral" : "General");
            return linkedHashMapZ0;
        }
        str2 = str;
        strS3 = w1VarA1.y2(mapC2);
        mapC2.put("major_pk_id", strS0);
        mapC2.put("position", strS2);
        if (strS3.isEmpty()) {
            mapC1.put("lieutenant_skill_id", strS3);
            str5 = strS2;
            str6 = str9;
            mapC1.put(str6, strS3);
            mapC2.put("lieutenant_skill_id", strS3);
            mapC2.put(str6, strS3);
            str3 = strS3;
            strY2 = w1.a1(null).y2(mapC2);
            arrayList = arrayList2;
            str4 = "pk_id";
            if (strY2.isEmpty()) {
                w1.a1(null).G2(mapC1, strY2, 0.0d);
            }
            if (!strY2.isEmpty()) {
                w1.a1(null).G2(mapC2, strY2, 0.0d);
            }
        } else {
            str3 = strS3;
            arrayList = arrayList2;
            str4 = "pk_id";
            str2 = str2;
            str5 = strS2;
            str6 = str9;
            mapC1.put("lieutenant_skill_id", "");
            mapC1.put(str6, "");
            mapC1.put("ls_type", "0");
            mapC1.put("ls_value", "0");
            mapC2.put("lieutenant_skill_id", "");
            mapC2.put(str6, "");
            mapC2.put("ls_type", "0");
            mapC2.put("ls_value", "0");
        }
        if (!strQ2.isEmpty()) {
            mapC0.put("lieutenant_skill_id", "");
            mapC0.put(str6, "");
            mapC0.put("ls_type", "0");
            mapC0.put("ls_value", "0");
        }
        while (r1.hasNext()) {
            c(Q2("general_pk_id", Q2(str4, "", map7), map7), arrayList);
        }
        ArrayList<String> arrayList4 = arrayList;
        w1 w1VarA3 = w1.a1(null);
        w1VarA3.F2(str13, map);
        while (r5.hasNext()) {
            if (str14 == null) {
            }
        }
        Boolean bool2 = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ1 = p5.z0("ret", 0, "code", 0, "result", bool2, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool2, new Object[0]));
        linkedHashMapZ1.put("major_user_general_id", strS0);
        linkedHashMapZ1.put("lieutenant_user_general_id", str13);
        linkedHashMapZ1.put("position", str5);
        linkedHashMapZ1.put("lieutenant_skill_id", str3);
        linkedHashMapZ1.put("changed_general_pk_ids", arrayList4);
        linkedHashMapZ1.put("buddy_changed", Boolean.valueOf(z2));
        linkedHashMapZ1.put("cmn_modules", z2 ? "General,BuddyGeneral" : "General");
        return linkedHashMapZ1;
    }

    public static LinkedHashMap r0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static boolean r1(int i2) {
        return i2 >= 1 && i2 <= 4;
    }

    public static void r2(long j2, Map map) {
        if (map == null) {
            return;
        }
        if (h1(map.get("training_status"), 1) == 2) {
            map.put("to_end_time", 0L);
            return;
        }
        long jE1 = E1(map.get("finish_at"));
        if (jE1 <= 0) {
            return;
        }
        long jMax = Math.max(0L, jE1 - j2);
        map.put("to_end_time", Long.valueOf(jMax));
        map.put("training_status", Integer.valueOf(jMax <= 0 ? 0 : 1));
    }

    public static LinkedHashMap s(Map map, Map map2) {
        String strV1;
        String strV2;
        String str;
        Map map3;
        String str2;
        Map map4;
        String str3;
        Map mapD0;
        String str4 = "pk_id";
        String[] strArr = {"user_general_id", "general_pk_id", "pk_id"};
        int i2 = 0;
        while (true) {
            if (i2 >= 3) {
                strV1 = "";
                break;
            }
            strV1 = V1(strArr[i2], "", map2);
            if (!strV1.isEmpty()) {
                break;
            }
            i2++;
        }
        String[] strArr2 = {"new_skill_id", "user_skill_id", "skill_pk_id", "skill_id"};
        int i3 = 0;
        while (true) {
            if (i3 >= 4) {
                strV2 = "";
                break;
            }
            strV2 = V1(strArr2[i3], "", map2);
            if (!strV2.isEmpty()) {
                break;
            }
            i3++;
        }
        String strV3 = V1("skill_pos", V1("position", V1("pos", "2", map2), map2), map2);
        Map mapD1 = D0(strV1, w1.f0("General", map));
        if (mapD1 == null) {
            return r0("武将不存在");
        }
        String str5 = "Skill";
        Map mapD2 = D0(strV2, w1.f0("Skill", map));
        if (mapD2 == null) {
            return r0("技能不存在");
        }
        int iH2 = H2(v0(strV2, w1.f0("Skill", map)));
        boolean z = true;
        if (r1(iH2)) {
            Map mapV0 = v0(strV1, w1.f0("General", map));
            HashSet hashSet = new HashSet();
            for (Map map5 : w1.f0("Skill", map)) {
                Map map6 = mapD1;
                String str6 = str5;
                if (strV2.equals(M2(str4, "", map5)) || !strV1.equals(M2("general_pk_id", "", map5)) || s1(map5)) {
                    map4 = mapV0;
                    str3 = str4;
                } else {
                    if (t1(mapV0, map5)) {
                        map4 = mapV0;
                        str3 = str4;
                    } else {
                        map4 = mapV0;
                        str3 = str4;
                        if (strV3.equals(L0(map5.get("skill_position"), map5.get("position"), map5.get("pos")))) {
                        }
                    }
                    int iH3 = H2(map5);
                    if (r1(iH3)) {
                        hashSet.add(Integer.valueOf(iH3));
                    }
                }
                str5 = str6;
                mapD1 = map6;
                mapV0 = map4;
                str4 = str3;
            }
            str = str4;
            map3 = mapD1;
            str2 = str5;
            f(map, strV1, null, null, hashSet);
            z = !hashSet.contains(Integer.valueOf(iH2));
        } else {
            str = "pk_id";
            map3 = mapD1;
            str2 = "Skill";
        }
        if (!z) {
            return r0("技能类型重复");
        }
        String strR2 = R2("general_pk_id", "", mapD2);
        ArrayList arrayList = new ArrayList();
        for (Map map7 : w1.f0(str2, map)) {
            if (map7 != mapD2 && strV1.equals(R2("general_pk_id", "", map7)) && strV3.equals(R2("position", R2("pos", "", map7), map7))) {
                map7.put("general_pk_id", 0);
                map7.put("position", "0");
                map7.put("pos", "0");
                map7.put("skill_position", "0");
                arrayList.add(map7);
            }
        }
        mapD2.put("general_pk_id", strV1);
        mapD2.put("position", strV3);
        mapD2.put("pos", strV3);
        mapD2.put("skill_position", strV3);
        arrayList.add(mapD2);
        o2(strV1, map, map3);
        w1.a1(null).F2(strV1, map);
        if (v1(strR2) && !strR2.equals(strV1) && (mapD0 = D0(strR2, w1.f0("General", map))) != null) {
            o2(strR2, map, mapD0);
            w1.a1(null).F2(strR2, map);
        }
        Boolean bool = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
        linkedHashMapZ0.put("user_general_id", strV1);
        linkedHashMapZ0.put("general_pk_id", strV1);
        linkedHashMapZ0.put("new_skill_id", strV2);
        linkedHashMapZ0.put("skill_pos", strV3);
        linkedHashMapZ0.put("skill_info", mapD2);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str7 = str;
            String strR3 = R2(str7, "", (Map) it.next());
            if (!strR3.isEmpty()) {
                arrayList2.add(strR3);
            }
            str = str7;
        }
        linkedHashMapZ0.put("changed_skill_ids", arrayList2);
        ArrayList arrayList3 = new ArrayList();
        if (v1(strV1) && !arrayList3.contains(strV1)) {
            arrayList3.add(strV1);
        }
        if (v1(strR2) && !strR2.equals(strV1) && v1(strR2) && !arrayList3.contains(strR2)) {
            arrayList3.add(strR2);
        }
        linkedHashMapZ0.put("changed_general_pk_ids", arrayList3);
        linkedHashMapZ0.put("cmn_modules", "General,Skill,TeamGeneral");
        return linkedHashMapZ0;
    }

    public static LinkedHashMap s0(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", 1, "code", 1, "result", bool, "msg", str, "error_code", 1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static boolean s1(Map map) {
        return map != null && com.sgscq.vpn.handler.f.c(L0(map.get("skill_id"), map.get("id"), map.get("skill_code")));
    }

    public static void s2(Map map, Map map2) {
        String strValueOf = String.valueOf(map2.getOrDefault("user_training_id", ""));
        if (strValueOf.isEmpty()) {
            return;
        }
        Iterator it = W2(map).iterator();
        while (it.hasNext()) {
            if (c.a.B((Map) it.next(), "user_training_id", "", strValueOf)) {
                it.remove();
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:146:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:181:0x032b  */
    /* JADX WARN: Code duplicated, block: B:184:0x0337  */
    /* JADX WARN: Code duplicated, block: B:192:0x035e  */
    /* JADX WARN: Code duplicated, block: B:194:0x0361  */
    /* JADX WARN: Code duplicated, block: B:196:0x0364  */
    /* JADX WARN: Code duplicated, block: B:198:0x0367  */
    /* JADX WARN: Code duplicated, block: B:199:0x036a  */
    /* JADX WARN: Code duplicated, block: B:200:0x036d  */
    /* JADX WARN: Code duplicated, block: B:201:0x036f  */
    /* JADX WARN: Code duplicated, block: B:202:0x0371  */
    /* JADX WARN: Code duplicated, block: B:210:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:224:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:228:0x0400  */
    /* JADX WARN: Code duplicated, block: B:233:0x0422  */
    /* JADX WARN: Code duplicated, block: B:234:0x042b  */
    /* JADX WARN: Code duplicated, block: B:237:0x0434  */
    /* JADX WARN: Code duplicated, block: B:240:0x043b  */
    /* JADX WARN: Code duplicated, block: B:243:0x0442  */
    /* JADX WARN: Code duplicated, block: B:244:0x0449  */
    /* JADX WARN: Code duplicated, block: B:257:0x048d  */
    /* JADX WARN: Code duplicated, block: B:313:0x06e7  */
    /* JADX WARN: Code duplicated, block: B:315:0x06ec  */
    /* JADX WARN: Code duplicated, block: B:317:0x06f9  */
    /* JADX WARN: Code duplicated, block: B:318:0x0700  */
    /* JADX WARN: Code duplicated, block: B:320:0x0717  */
    /* JADX WARN: Code duplicated, block: B:321:0x071b  */
    /* JADX WARN: Code duplicated, block: B:325:0x0875  */
    /* JADX WARN: Code duplicated, block: B:326:0x0878  */
    /* JADX WARN: Code duplicated, block: B:343:0x048f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:350:0x0340 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:351:0x034f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:352:0x037a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:354:0x0331 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:355:0x0331 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:356:0x0331 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:359:0x03af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:360:0x03c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:361:0x03d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:362:0x03cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:0x03d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x03a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x03a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:367:0x03a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:371:0x0409 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:373:0x03fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x013e  */
    /* JADX WARN: Code duplicated, block: B:62:0x014e  */
    public static LinkedHashMap t(Map map, Map map2) {
        Map map3;
        boolean z;
        LinkedHashMap linkedHashMap;
        String str;
        String str2;
        int i2;
        String str3;
        String str4;
        int i3;
        String str5;
        int i4;
        j0 j0Var;
        String str6;
        int i5;
        String str7;
        String str8;
        String str9;
        String str10;
        Map map4;
        String str11;
        String str12;
        String str13;
        String str14;
        int iB1;
        int iMin;
        int i6;
        long jE;
        int i7;
        String str15;
        int i8;
        String str16;
        String str17;
        int i9;
        String str18;
        boolean[][] zArr;
        int i10;
        ArrayList arrayList;
        Iterator it;
        int i11;
        Object next;
        Map map5;
        int iH0;
        double dL2;
        String str19;
        double dA;
        String str20;
        double dAbs;
        ArrayList arrayList2;
        Map map6;
        double dL3;
        Map map7;
        double dL4;
        int iH1;
        String str21;
        boolean[] zArr2;
        boolean z2;
        String str22;
        int[] iArr;
        String str23 = "";
        String str24 = "user_general_id";
        String strW1 = W1("user_general_id", W1("pk_id", "", map2), map2);
        String str25 = "General";
        if (strW1 == null || strW1.isEmpty()) {
            map3 = null;
            break;
        }
        Iterator it2 = w1.f0("General", map).iterator();
        do {
            if (!it2.hasNext()) {
                map3 = null;
                break;
            }
            map3 = (Map) it2.next();
        } while (!c.a.A(map3, "pk_id", strW1));
        if (map3 == null) {
            return s0("武将不存在");
        }
        String str26 = "cultivate_num";
        int i12 = 1;
        int iMax = Math.max(1, w1.l2(W1("cultivate_num", "1", map2), 1));
        String str27 = "0";
        if (x1(W1("is_multi", "0", map2)) || x1(W1("multi", "0", map2))) {
            iMax *= 10;
        }
        boolean z3 = "1".equals(W1("is_gain", "0", map2)) || "true".equalsIgnoreCase(W1("is_gain", "false", map2));
        boolean[][] zArr3 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 5, 5);
        String strW2 = W1("cultivate_rule", "", map2);
        boolean z4 = (strW2 == null || strW2.trim().isEmpty()) ? false : true;
        boolean z5 = false;
        Object obj = "pk_id";
        while (i12 <= 12) {
            String str28 = str26;
            String str29 = str24;
            String strW3 = W1("cultivate_rule[" + i12 + "]", W1("cultivate_rule." + i12, "", map2), map2);
            if (strW3.isEmpty()) {
                if (Pattern.compile("(^|[\\{,\\s])\"?" + i12 + "\"?\\s*[:=]\\s*(0|1|true|false)", 2).matcher(strW2 == null ? "" : strW2).find()) {
                    if (Pattern.compile("(^|[\\{,\\s])\"?" + i12 + "\"?\\s*[:=]\\s*(1|true)", 2).matcher(strW2 == null ? "" : strW2).find()) {
                        if (i12 > 0) {
                            iArr = u[i12];
                            if (iArr.length >= 2) {
                                zArr3[iArr[0]][iArr[1]] = true;
                            }
                        }
                    }
                    z5 = true;
                }
            } else {
                if (x1(strW3)) {
                    if (i12 > 0 && i12 < 13) {
                        iArr = u[i12];
                        if (iArr.length >= 2) {
                            zArr3[iArr[0]][iArr[1]] = true;
                        }
                    }
                }
                z5 = true;
            }
            i12++;
            str26 = str28;
            str24 = str29;
        }
        String str30 = str24;
        String str31 = str26;
        if (!z4 && !z5) {
            zArr3 = null;
        }
        if (zArr3 == null) {
            z = true;
            break loop2;
        }
        int i13 = 1;
        loop2: while (true) {
            if (i13 >= zArr3.length) {
                z = false;
                break;
            }
            if (zArr3[i13] != null) {
                int i14 = 1;
                while (true) {
                    boolean[] zArr4 = zArr3[i13];
                    if (i14 >= zArr4.length) {
                        continue;
                    } else {
                        if (zArr4[i14]) {
                            z = true;
                            break loop2;
                        }
                        i14++;
                    }
                }
            }
            i13++;
        }
        if (!z) {
            return s0("未选择修炼类型");
        }
        int i15 = iMax * 5;
        int i16 = z3 ? iMax : 0;
        int iF = c.a.f(map, "user_gold", "0", 0);
        if (iF < i16) {
            return s0("元宝不足");
        }
        int iC1 = C1(map);
        if (iC1 < i15) {
            return s0("灵芝不足");
        }
        boolean zX1 = x1(W1("is_need_talent", "0", map2));
        LinkedHashMap linkedHashMapE3 = e3(map3);
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            String str32 = "talent_point";
            if (i20 >= iMax) {
                linkedHashMap = linkedHashMapE3;
                str = str23;
                str2 = str25;
                i2 = iC1;
                str3 = strW1;
                str4 = "talent_point";
                i3 = i17;
                str5 = str27;
                i4 = iF;
                break;
            }
            int i21 = iMax;
            int iF2 = c.a.f(map3, "talent_point", str27, 0);
            str = str23;
            i4 = iF;
            i2 = iC1;
            str3 = strW1;
            String str33 = "attr_";
            if (iF2 <= 0) {
                if (zX1) {
                    linkedHashMap = linkedHashMapE3;
                    str2 = str25;
                    str16 = "talent_point";
                    i3 = i17;
                    str5 = str27;
                } else {
                    int i22 = 1;
                    str2 = str25;
                    while (true) {
                        if (i22 > 4) {
                            linkedHashMap = linkedHashMapE3;
                            i8 = i20;
                            str16 = str32;
                            i3 = i17;
                            str5 = str27;
                            z2 = false;
                            break;
                        }
                        linkedHashMap = linkedHashMapE3;
                        int i23 = 1;
                        for (int i24 = 4; i23 <= i24; i24 = 4) {
                            if (i22 != i23 && (zArr3 == null || zArr3[i22][i23])) {
                                if (i23 == 1) {
                                    str22 = "attack";
                                } else if (i23 == 2) {
                                    str22 = "defense";
                                } else if (i23 != 3) {
                                    str22 = i23 != 4 ? str : "wisdom";
                                } else {
                                    str22 = "hp";
                                }
                                i3 = i17;
                                str5 = str27;
                                double dL5 = l2(map3.get("attr_".concat(str22)));
                                i8 = i20;
                                str16 = str32;
                                if (P(-1.0d, dL5) < 0.0d) {
                                    z2 = true;
                                    break;
                                }
                            } else {
                                i8 = i20;
                                str16 = str32;
                                i3 = i17;
                                str5 = str27;
                            }
                            i23++;
                            str27 = str5;
                            i17 = i3;
                            str32 = str16;
                            i20 = i8;
                        }
                        i22++;
                        linkedHashMapE3 = linkedHashMap;
                    }
                    if (!z2) {
                    }
                }
                str4 = str16;
                break;
            }
            linkedHashMap = linkedHashMapE3;
            str2 = str25;
            i8 = i20;
            str16 = "talent_point";
            i3 = i17;
            str5 = str27;
            com.sgscq.vpn.handler.g0 g0VarU = p5.U(1, map3, z3);
            ArrayList arrayList3 = new ArrayList();
            int i25 = g0VarU.f845d;
            int iAbs = Math.abs(i25);
            boolean z6 = z3;
            int i26 = g0VarU.f842a;
            if (i26 > 0) {
                i9 = i8;
                if (i26 >= 5) {
                    str17 = "wisdom";
                } else {
                    int i27 = g0VarU.f843b;
                    if (zArr3 == null) {
                        str17 = "wisdom";
                    } else if (i27 > 0) {
                        str17 = "wisdom";
                        if (i27 < 5 && i27 != i26 && iAbs > 0 && i25 < 0) {
                            if (!(i26 <= 0 || i26 >= zArr3.length || (zArr2 = zArr3[i26]) == null || i27 <= 0 || i27 >= zArr2.length || zArr2[i27])) {
                            }
                        }
                    } else {
                        str17 = "wisdom";
                    }
                    String[] strArr = p5.N;
                    zArr = zArr3;
                    str18 = "attack";
                    arrayList3.add(p5.z0("field", strArr[i26], "val", Double.valueOf(g0VarU.f844c)));
                    if (i27 > 0 && i27 < 5 && i27 != i26 && i25 < 0) {
                        arrayList3.add(p5.z0("field", strArr[i27], "val", Double.valueOf(i25)));
                    }
                }
                if (iF2 <= 0) {
                    dAbs = 0.0d;
                    for (Object obj2 : arrayList3) {
                        if (!(obj2 instanceof Map)) {
                            map7 = (Map) obj2;
                            dL4 = l2(map7.get("val"));
                            if (dL4 < 0.0d) {
                                iH1 = p5.H0(String.valueOf(map7.get("field")));
                                if (iH1 != 1) {
                                    str21 = str18;
                                } else if (iH1 != 2) {
                                    str21 = "defense";
                                } else if (iH1 != 3) {
                                    str21 = "hp";
                                } else if (iH1 != 4) {
                                    str21 = str;
                                } else {
                                    str21 = str17;
                                }
                                if (str21.isEmpty()) {
                                    dAbs += Math.abs(P(dL4, l2(map3.get(str33.concat(str21)))));
                                    iF2 = iF2;
                                    str33 = str33;
                                }
                            }
                        }
                    }
                    i10 = iF2;
                    arrayList2 = new ArrayList();
                    for (Object obj3 : arrayList3) {
                        if (!(obj3 instanceof Map)) {
                            map6 = (Map) obj3;
                            if (p5.H0(String.valueOf(map6.get("field"))) <= 0) {
                                dL3 = l2(map6.get("val"));
                                if (dL3 <= 0.0d) {
                                    arrayList2.add(map6);
                                } else if (dAbs <= 0.0d) {
                                    double dMin = Math.min(dL3, dAbs);
                                    arrayList2.add(p5.z0("field", map6.get("field"), "val", Double.valueOf(dMin)));
                                    dAbs -= dMin;
                                }
                            }
                        }
                    }
                    arrayList3 = arrayList2;
                } else {
                    i10 = iF2;
                }
                arrayList = new ArrayList();
                it = arrayList3.iterator();
                while (it.hasNext()) {
                    next = it.next();
                    if (!(next instanceof Map)) {
                        map5 = (Map) next;
                        iH0 = p5.H0(String.valueOf(map5.get("field")));
                        dL2 = l2(map5.get("val"));
                        if (iH0 == 1) {
                            str19 = str18;
                            dA = a(map3, str19, dL2);
                        } else {
                            str19 = str18;
                            dA = 0.0d;
                        }
                        if (iH0 == 2) {
                            dA = a(map3, "defense", dL2);
                        }
                        if (iH0 == 3) {
                            dA = a(map3, "hp", dL2);
                        }
                        if (iH0 == 4) {
                            str20 = str17;
                            dA = a(map3, str20, dL2);
                        } else {
                            str20 = str17;
                        }
                        if (iH0 > 0 && dA != 0.0d) {
                            arrayList.add(p5.z0("field", map5.get("field"), "val", Double.valueOf(dA)));
                        }
                        str17 = str20;
                        it = it;
                        str18 = str19;
                    }
                }
                if (!arrayList.isEmpty() && (i11 = g0VarU.f846e) > 0) {
                    map3.put(str16, String.valueOf(Math.max(0, i10 - i11)));
                    i19 += i11;
                }
                if (!arrayList.isEmpty()) {
                    i18++;
                }
                i17 = i3 + 1;
                i20 = i9 + 1;
                zX1 = zX1;
                iMax = i21;
                str23 = str;
                iC1 = i2;
                iF = i4;
                strW1 = str3;
                str25 = str2;
                linkedHashMapE3 = linkedHashMap;
                str27 = str5;
                z3 = z6;
                zArr3 = zArr;
            } else {
                str17 = "wisdom";
                i9 = i8;
            }
            str18 = "attack";
            zArr = zArr3;
            if (iF2 <= 0) {
                dAbs = 0.0d;
                while (r0.hasNext()) {
                    if (!(obj2 instanceof Map)) {
                        map7 = (Map) obj2;
                        dL4 = l2(map7.get("val"));
                        if (dL4 < 0.0d) {
                            iH1 = p5.H0(String.valueOf(map7.get("field")));
                            if (iH1 != 1) {
                                str21 = str18;
                            } else if (iH1 != 2) {
                                str21 = "defense";
                            } else if (iH1 != 3) {
                                str21 = "hp";
                            } else if (iH1 != 4) {
                                str21 = str;
                            } else {
                                str21 = str17;
                            }
                            if (str21.isEmpty()) {
                                dAbs += Math.abs(P(dL4, l2(map3.get(str33.concat(str21)))));
                                iF2 = iF2;
                                str33 = str33;
                            }
                        }
                    }
                }
                i10 = iF2;
                arrayList2 = new ArrayList();
                while (r2.hasNext()) {
                    if (!(obj3 instanceof Map)) {
                        map6 = (Map) obj3;
                        if (p5.H0(String.valueOf(map6.get("field"))) <= 0) {
                            dL3 = l2(map6.get("val"));
                            if (dL3 <= 0.0d) {
                                arrayList2.add(map6);
                            } else if (dAbs <= 0.0d) {
                                double dMin2 = Math.min(dL3, dAbs);
                                arrayList2.add(p5.z0("field", map6.get("field"), "val", Double.valueOf(dMin2)));
                                dAbs -= dMin2;
                            }
                        }
                    }
                }
                arrayList3 = arrayList2;
            } else {
                i10 = iF2;
            }
            arrayList = new ArrayList();
            it = arrayList3.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (!(next instanceof Map)) {
                    map5 = (Map) next;
                    iH0 = p5.H0(String.valueOf(map5.get("field")));
                    dL2 = l2(map5.get("val"));
                    if (iH0 == 1) {
                        str19 = str18;
                        dA = a(map3, str19, dL2);
                    } else {
                        str19 = str18;
                        dA = 0.0d;
                    }
                    if (iH0 == 2) {
                        dA = a(map3, "defense", dL2);
                    }
                    if (iH0 == 3) {
                        dA = a(map3, "hp", dL2);
                    }
                    if (iH0 == 4) {
                        str20 = str17;
                        dA = a(map3, str20, dL2);
                    } else {
                        str20 = str17;
                    }
                    if (iH0 > 0) {
                        arrayList.add(p5.z0("field", map5.get("field"), "val", Double.valueOf(dA)));
                    }
                    str17 = str20;
                    it = it;
                    str18 = str19;
                }
            }
            if (!arrayList.isEmpty()) {
                map3.put(str16, String.valueOf(Math.max(0, i10 - i11)));
                i19 += i11;
            }
            if (!arrayList.isEmpty()) {
                i18++;
            }
            i17 = i3 + 1;
            i20 = i9 + 1;
            zX1 = zX1;
            iMax = i21;
            str23 = str;
            iC1 = i2;
            iF = i4;
            strW1 = str3;
            str25 = str2;
            linkedHashMapE3 = linkedHashMap;
            str27 = str5;
            z3 = z6;
            zArr3 = zArr;
        }
        String str34 = "general_pk_id";
        String str35 = "pkId";
        String str36 = "Item";
        if (i3 <= 0) {
            if (c.a.f(map3, str4, str5, 0) > 0) {
                return s0("没有可修炼属性");
            }
            ArrayList arrayListF3 = f3(linkedHashMap, map3);
            LinkedHashMap linkedHashMapZ0 = p5.z0("pending", Boolean.FALSE, "cultivate_num", 0, "cultivate_attr", arrayListF3, "culture_attr", arrayListF3, "talent_point_cost", 0);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put(str2, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
            linkedHashMap2.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
            LinkedHashMap linkedHashMapT2 = T2();
            String str37 = str3;
            linkedHashMapT2.put("pkId", str37);
            linkedHashMapT2.put(str30, str37);
            linkedHashMapT2.put("general_pk_id", str37);
            linkedHashMapT2.put(str31, 0);
            linkedHashMapT2.put("cost_ganoderma", 0);
            linkedHashMapT2.put("cost_yuanbao", 0);
            linkedHashMapT2.put("ganoderma", Integer.valueOf(i2));
            linkedHashMapT2.put("yuanbao", Integer.valueOf(i4));
            linkedHashMapT2.put("cultivate_attr", arrayListF3);
            linkedHashMapT2.put("culture_attr", arrayListF3);
            linkedHashMapT2.put("talent_point_cost", 0);
            linkedHashMapT2.put("info", linkedHashMapZ0);
            linkedHashMapT2.put("attr_info", linkedHashMapZ0);
            linkedHashMapT2.put("cultivate_info", linkedHashMapZ0);
            linkedHashMapT2.put("cmn_modules", "General,Item");
            linkedHashMapT2.put("delta_data", linkedHashMap2);
            return linkedHashMapT2;
        }
        String str38 = str30;
        String str39 = str3;
        LinkedHashMap linkedHashMap3 = linkedHashMap;
        String str40 = str5;
        String str41 = str2;
        int i28 = i3 * 5;
        int i29 = z3 != 0 ? i3 : 0;
        if (C1(map) >= i28) {
            str6 = "cost_ganoderma";
            j0Var = new j0(1);
            Iterator it3 = J1(map).iterator();
            i5 = i28;
            while (it3.hasNext()) {
                Iterator it4 = it3;
                Map map8 = (Map) it3.next();
                if (i28 <= 0) {
                    break;
                }
                String str42 = str34;
                String str43 = str38;
                if ("600012".equals(String.valueOf(map8.getOrDefault("item_id", map8.get("id")))) && (iMin = Math.min((iB1 = B1(map8)), i28)) > 0) {
                    int i30 = iB1 - iMin;
                    int i31 = i28 - iMin;
                    map8.put("num", Integer.valueOf(i30));
                    map8.put("item_num", Integer.valueOf(i30));
                    map8.put("total_num", Integer.valueOf(i30));
                    if (i30 <= 0) {
                        obj = obj;
                        str13 = str;
                        String strValueOf = String.valueOf(map8.getOrDefault(obj, str13));
                        if (!strValueOf.isEmpty()) {
                            j0Var.f371b.add(strValueOf);
                        }
                        Object obj4 = map.get(str36);
                        str14 = str35;
                        if (obj4 instanceof Map) {
                            Map map9 = (Map) obj4;
                            Object obj5 = map9.get("add");
                            str12 = str36;
                            if (obj5 instanceof List) {
                                ((List) obj5).remove(map8);
                            }
                            Object obj6 = map9.get("upd");
                            if (obj6 instanceof List) {
                                ((List) obj6).remove(map8);
                            }
                            Object obj7 = map9.get("update_list");
                            if (obj7 instanceof List) {
                                ((List) obj7).remove(map8);
                            }
                        } else {
                            str12 = str36;
                        }
                    } else {
                        str12 = str36;
                        str13 = str;
                        str14 = str35;
                        j0Var.f370a.add(map8);
                    }
                    i28 = i31;
                } else {
                    str12 = str36;
                    str13 = str;
                    str14 = str35;
                }
                str35 = str14;
                it3 = it4;
                str38 = str43;
                str36 = str12;
                str = str13;
                str34 = str42;
            }
            str7 = str38;
            str8 = str34;
            str9 = str36;
            str10 = str;
            map4 = map;
            str11 = str35;
            if (i28 != 0) {
            }
            if (j0Var == null) {
                return s0("灵芝不足");
            }
            map4.put("user_gold", Integer.valueOf(i4 - i29));
            if (i3 <= 0) {
                i6 = i3;
            } else {
                i6 = i3;
                jE = ((long) c.a.e(map4, "surrender_total_cultivate_times", 0)) + ((long) i6);
                if (jE > 2147483647L) {
                    i7 = Integer.MAX_VALUE;
                } else {
                    i7 = (int) jE;
                }
                map4.put("surrender_total_cultivate_times", Integer.valueOf(i7));
            }
            map3.put("culture_level", Integer.valueOf(w1.l2(String.valueOf(map3.getOrDefault("culture_level", str40)), 0) + i6));
            int iF3 = c.a.f(map3, "ganoderma_num", str40, 0);
            map3.put("ganoderma_num", Integer.valueOf(Math.max(0, iF3 - Math.floorMod(iF3, 5)) + (i18 * 5)));
            w1.a1(null).F2(str39, map4);
            ArrayList arrayListF4 = f3(linkedHashMap3, map3);
            LinkedHashMap linkedHashMapZ1 = p5.z0("pending", Boolean.FALSE, "cultivate_num", Integer.valueOf(i6), "cultivate_attr", arrayListF4, "culture_attr", arrayListF4, "talent_point_cost", Integer.valueOf(i19));
            map3.put("culture_info", str10);
            map3.put("n", str10);
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            linkedHashMap4.put(str41, p5.z0("del", new ArrayList(), "upd", p5.v0(map3), "add", new ArrayList()));
            j0 j0Var2 = j0Var;
            String str44 = str9;
            linkedHashMap4.put(str44, p5.z0("del", j0Var2.f371b, "upd", j0Var2.f370a, "add", new ArrayList()));
            linkedHashMap4.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", map4)), "add", new ArrayList()));
            map4.put("TeamGeneral", p5.z0("del", c.a.n("del", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0(str41, map4)}, map4, str41), new Object[]{"upd", new ArrayList(), "add", w1.f0(str44, map4)}, map4, str44), "upd", new ArrayList(), "add", w1.f0("TeamGeneral", map4)));
            LinkedHashMap linkedHashMapT3 = T2();
            linkedHashMapT3.put(str11, str39);
            linkedHashMapT3.put(str7, str39);
            c.a.z(linkedHashMapT3, str8, str39, i6, str31, i5, str6);
            c.a.s(i29, linkedHashMapT3, "cost_yuanbao", i2, "ganoderma", i4, "yuanbao");
            linkedHashMapT3.put("cultivate_attr", arrayListF4);
            linkedHashMapT3.put("culture_attr", arrayListF4);
            linkedHashMapT3.put("talent_point_cost", Integer.valueOf(i19));
            linkedHashMapT3.put("info", linkedHashMapZ1);
            linkedHashMapT3.put("attr_info", linkedHashMapZ1);
            linkedHashMapT3.put("cultivate_info", linkedHashMapZ1);
            if (z3) {
                str15 = "Player,General,Item,TeamGeneral";
            } else {
                str15 = "General,Item,TeamGeneral";
            }
            linkedHashMapT3.put("cmn_modules", str15);
            linkedHashMapT3.put("delta_data", linkedHashMap4);
            return linkedHashMapT3;
        }
        str7 = str38;
        i5 = i28;
        str8 = "general_pk_id";
        str9 = "Item";
        str6 = "cost_ganoderma";
        str10 = str;
        map4 = map;
        str11 = "pkId";
        j0Var = null;
        if (j0Var == null) {
            return s0("灵芝不足");
        }
        map4.put("user_gold", Integer.valueOf(i4 - i29));
        if (i3 <= 0) {
            i6 = i3;
        } else {
            i6 = i3;
            jE = ((long) c.a.e(map4, "surrender_total_cultivate_times", 0)) + ((long) i6);
            if (jE > 2147483647L) {
                i7 = Integer.MAX_VALUE;
            } else {
                i7 = (int) jE;
            }
            map4.put("surrender_total_cultivate_times", Integer.valueOf(i7));
        }
        map3.put("culture_level", Integer.valueOf(w1.l2(String.valueOf(map3.getOrDefault("culture_level", str40)), 0) + i6));
        int iF4 = c.a.f(map3, "ganoderma_num", str40, 0);
        map3.put("ganoderma_num", Integer.valueOf(Math.max(0, iF4 - Math.floorMod(iF4, 5)) + (i18 * 5)));
        w1.a1(null).F2(str39, map4);
        ArrayList arrayListF5 = f3(linkedHashMap3, map3);
        LinkedHashMap linkedHashMapZ2 = p5.z0("pending", Boolean.FALSE, "cultivate_num", Integer.valueOf(i6), "cultivate_attr", arrayListF5, "culture_attr", arrayListF5, "talent_point_cost", Integer.valueOf(i19));
        map3.put("culture_info", str10);
        map3.put("n", str10);
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        linkedHashMap5.put(str41, p5.z0("del", new ArrayList(), "upd", p5.v0(map3), "add", new ArrayList()));
        j0 j0Var3 = j0Var;
        String str45 = str9;
        linkedHashMap5.put(str45, p5.z0("del", j0Var3.f371b, "upd", j0Var3.f370a, "add", new ArrayList()));
        linkedHashMap5.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", map4)), "add", new ArrayList()));
        map4.put("TeamGeneral", p5.z0("del", c.a.n("del", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0(str41, map4)}, map4, str41), new Object[]{"upd", new ArrayList(), "add", w1.f0(str45, map4)}, map4, str45), "upd", new ArrayList(), "add", w1.f0("TeamGeneral", map4)));
        LinkedHashMap linkedHashMapT4 = T2();
        linkedHashMapT4.put(str11, str39);
        linkedHashMapT4.put(str7, str39);
        c.a.z(linkedHashMapT4, str8, str39, i6, str31, i5, str6);
        c.a.s(i29, linkedHashMapT4, "cost_yuanbao", i2, "ganoderma", i4, "yuanbao");
        linkedHashMapT4.put("cultivate_attr", arrayListF5);
        linkedHashMapT4.put("culture_attr", arrayListF5);
        linkedHashMapT4.put("talent_point_cost", Integer.valueOf(i19));
        linkedHashMapT4.put("info", linkedHashMapZ2);
        linkedHashMapT4.put("attr_info", linkedHashMapZ2);
        linkedHashMapT4.put("cultivate_info", linkedHashMapZ2);
        if (z3) {
            str15 = "Player,General,Item,TeamGeneral";
        } else {
            str15 = "General,Item,TeamGeneral";
        }
        linkedHashMapT4.put("cmn_modules", str15);
        linkedHashMapT4.put("delta_data", linkedHashMap5);
        return linkedHashMapT4;
    }

    public static String[] t0(Context context) throws CloneNotSupportedException {
        boolean zVerify;
        if (f426n != null) {
            return f426n;
        }
        byte[] bArrG2 = G2(context);
        byte[] bArr = new byte[8];
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i2] = (byte) (f423k[i2] ^ bArrG2[i2 % bArrG2.length]);
        }
        byte[] bArr2 = f424l;
        byte[] bArr3 = new byte[197];
        for (int i3 = 0; i3 < 197; i3++) {
            bArr3[i3] = (byte) (bArr2[i3] ^ bArr[i3 % 8]);
        }
        String str = new String(bArr3, StandardCharsets.UTF_8);
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAraRXRWyF6mFdTnYU62RUukXJnpCp9jecDyv6JnOq9vXuI0Y/3wF6kyJTHHPIQps2o82caxhWCUVahrn7h510yEjhFIqs3nTQgNuzt6gZXYKV15e+EeSG2kuaGbbZqXSPG1uJFh01J5uvN+mHMT2srCoNPq+2wYFZp/SgClm2r1D8Ry2nRUeRe4XiDcWFHuK62MuMcTOpuE26LAJKQzQNiahM4AA9KIyDJ/yIu2iqhKEeIKk7ckOJxlBeBLWP/An75o7UDUDk/D9b/9iGbHQky38+tfNLZM+FJOSzhrd4HmuiYE61nXdf5cqf4PpA5CPjEZlYRRnNIIk1lb0K1gUHhwIDAQAB", 0)));
            java.security.Signature signature = java.security.Signature.getInstance("SHA256withRSA");
            signature.initVerify(publicKeyGeneratePublic);
            signature.update(str.getBytes(StandardCharsets.UTF_8));
            zVerify = signature.verify(Base64.decode("SumahmwZKSJMPNYTdM524fjsuFnyxf5u9bAml9n99MeYSKQQiDqF6hnc1kHWuyOkHs+8wnBWT5Gg0jqJV3dj0EYkleD74eFSfXsOVxO5IwAP4HLYmijc61kJy080MgO8IkdJb+QXnwv8otewMoUqYDM0bwd7KYhowqIU0Yxisgte2Ru71MU9UjP03aCYsA1EpB5QSBcD7vBoAufRarFbio4zRrXIn2AgU8HO+p5bQNAEsQiOmGOAaHOhge11Eif+kvJePklsgKNAUvP2TU8vhEPbekRghEcTa2U/RpL9fzNkxqiYBbfGH7WFgpKDbHsxlNuMHnbgOnN+cLocuP6qlw==", 0));
        } catch (Exception unused) {
            zVerify = false;
        }
        if (zVerify) {
            byte[] bArr4 = f425m;
            byte[] bArr5 = new byte[10];
            for (int i4 = 0; i4 < 10; i4++) {
                bArr5[i4] = (byte) (bArr4[i4] ^ bArr[i4 % 8]);
            }
            String[] strArr = new String[5];
            for (int i5 = 0; i5 < 5; i5++) {
                int i6 = i5 * 2;
                try {
                    int i7 = bArr5[i6] & 255;
                    int i8 = bArr5[i6 + 1] & 255;
                    int i9 = i7 + i8;
                    if (i9 <= str.length() && i7 >= 0 && i8 >= 0) {
                        strArr[i5] = str.substring(i7, i9);
                    }
                    f426n = new String[]{"", "", "", "", ""};
                    return f426n;
                } catch (Throwable unused2) {
                    f426n = new String[]{"", "", "", "", ""};
                }
            }
            f426n = strArr;
            return strArr;
        }
        f426n = new String[]{"", "", "", "", ""};
        return f426n;
    }

    public static boolean t1(Map map, Map map2) {
        if (map2 == null) {
            return false;
        }
        String strM2 = map == null ? "" : M2("general_naturalskill_id", "", map);
        if (!strM2.isEmpty() && strM2.equals(M2("pk_id", "", map2))) {
            return true;
        }
        Object obj = map2.get("is_natural");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        String strValueOf = String.valueOf(obj);
        if ("1".equals(strValueOf) || "true".equalsIgnoreCase(strValueOf)) {
            return true;
        }
        return "1".equals(L0(map2.get("skill_position"), map2.get("position"), map2.get("pos")));
    }

    public static j0 t2(String str, ArrayList arrayList, Map map) {
        j0 j0Var = new j0(2);
        List listF0 = w1.f0(str, map);
        for (int size = listF0.size() - 1; size >= 0; size--) {
            Map map2 = (Map) listF0.get(size);
            String strO2 = O2("pk_id", "", map2);
            if (arrayList.contains(O2("general_pk_id", O2("user_general_id", "", map2), map2)) || arrayList.contains(strO2)) {
                if (!strO2.isEmpty()) {
                    j0Var.f370a.add(strO2);
                }
                listF0.remove(size);
            } else {
                boolean z = false;
                for (String str2 : new ArrayList(map2.keySet())) {
                    if (arrayList.contains(String.valueOf(map2.get(str2)))) {
                        map2.put(str2, "0");
                        z = true;
                    }
                }
                if (z && !strO2.isEmpty()) {
                    j0Var.f371b.add(strO2);
                }
            }
        }
        return j0Var;
    }

    public static LinkedHashMap u(Map map, Map map2) {
        Object obj;
        int i2;
        LinkedHashMap linkedHashMapU2;
        int iG1;
        String strM0 = M0(map2, "user_general_id", "general_pk_id", "pk_id");
        Map mapW0 = w0(strM0, w1.f0("General", map));
        if (mapW0 == null) {
            return k0("武将不存在");
        }
        Object obj2 = mapW0.get("culture_info");
        LinkedHashMap linkedHashMap = obj2 instanceof Map ? new LinkedHashMap((Map) obj2) : new LinkedHashMap();
        String str = "user_general_id";
        String str2 = "general_pk_id";
        if (Boolean.TRUE.equals(linkedHashMap.get("pending"))) {
            ArrayList arrayListY = y(linkedHashMap);
            obj = "cmn_modules";
            if (!"0".equals(M0(map2, "is_take", "take"))) {
                k(mapW0, "hp", z(3, arrayListY));
                k(mapW0, "attack", z(1, arrayListY));
                k(mapW0, "defense", z(2, arrayListY));
                k(mapW0, "wisdom", z(4, arrayListY));
                int iMax = Math.max(1, g1(1, "cultivate_num", linkedHashMap));
                int iG2 = g1(g1(0, "culture_level", mapW0), "level", linkedHashMap) + iMax;
                int iG3 = g1(0, "ganoderma_num", mapW0);
                int iMax2 = (iMax * 5) + Math.max(0, iG3 - Math.floorMod(iG3, 5));
                int iG4 = g1(0, "talent_point_cost", linkedHashMap);
                if (iG4 > 0) {
                    mapW0.put("talent_point", String.valueOf(Math.max(0, g1(0, "talent_point", mapW0) - iG4)));
                }
                linkedHashMap.put("level", Integer.valueOf(iG2));
                linkedHashMap.put("pending", Boolean.FALSE);
                mapW0.put("culture_info", "");
                mapW0.put("n", "");
                mapW0.put("culture_level", Integer.valueOf(iG2));
                mapW0.put("ganoderma_num", Integer.valueOf(iMax2));
                w1 w1VarA1 = w1.a1(null);
                if (w1VarA1.J0(String.valueOf(mapW0.getOrDefault("general_id", mapW0.getOrDefault("id", "")))) != null) {
                    w1VarA1.F2(strM0, map);
                    i2 = iG2;
                } else {
                    double dM2 = m2("hp", mapW0);
                    double dM3 = m2("attack", mapW0);
                    double dM4 = m2("defense", mapW0);
                    double dM5 = m2("wisdom", mapW0);
                    double dX = w1.x(dM2, dM3, dM4, dM5);
                    mapW0.put("fighting", Double.valueOf(dX));
                    mapW0.put("fight_point", Double.valueOf(dX));
                    mapW0.put("fighting_point", Double.valueOf(dX));
                    mapW0.put("general_fighting", Double.valueOf(dX));
                    Iterator it = w1.f0("TeamGeneral", map).iterator();
                    while (it.hasNext()) {
                        Iterator it2 = it;
                        Map map3 = (Map) it.next();
                        String str3 = str;
                        int i3 = iG2;
                        String str4 = str2;
                        if (c.a.C(map3, str3, "", str4, strM0)) {
                            map3.put("general_hp", Double.valueOf(dM2));
                            map3.put("general_attack", Double.valueOf(dM3));
                            map3.put("general_defense", Double.valueOf(dM4));
                            map3.put("general_wisdom", Double.valueOf(dM5));
                            map3.put("general_fighting", Double.valueOf(dX));
                            map3.put("fighting", Double.valueOf(dX));
                            map3.put("fight_point", Double.valueOf(dX));
                        }
                        iG2 = i3;
                        str = str3;
                        str2 = str4;
                        it = it2;
                    }
                    i2 = iG2;
                }
                LinkedHashMap linkedHashMapC = C(g1(1, "cultivate_num", linkedHashMap), strM0, arrayListY, mapW0);
                linkedHashMapC.put("culture_level", Integer.valueOf(i2));
                linkedHashMapC.put("ganoderma_num", Integer.valueOf(iMax2));
                LinkedHashMap linkedHashMapU3 = U2(linkedHashMapC);
                linkedHashMapU3.put("pkId", strM0);
                linkedHashMapU3.put("yuanbao", Integer.valueOf(g1(0, "user_gold", map)));
                linkedHashMapU3.put("ganoderma", Integer.valueOf(z1(F0(map))));
                linkedHashMapU3.put(obj, "General,Item,TeamGeneral");
                return linkedHashMapU3;
            }
            mapW0.put("culture_info", "");
            mapW0.put("n", "");
            linkedHashMapU2 = U2(C(g1(1, "cultivate_num", linkedHashMap), strM0, arrayListY, mapW0));
            linkedHashMapU2.put("pkId", strM0);
            iG1 = g1(0, "user_gold", map);
        } else {
            mapW0.put("culture_info", "");
            mapW0.put("n", "");
            linkedHashMapU2 = U2(C(g1(1, "cultivate_num", linkedHashMap), strM0, y(linkedHashMap), mapW0));
            linkedHashMapU2.put("pkId", strM0);
            iG1 = g1(0, "user_gold", map);
            obj = "cmn_modules";
        }
        linkedHashMapU2.put("yuanbao", Integer.valueOf(iG1));
        linkedHashMapU2.put("ganoderma", Integer.valueOf(z1(F0(map))));
        linkedHashMapU2.put(obj, "General,Item");
        return linkedHashMapU2;
    }

    public static ArrayList u0(Map map, String str, LinkedHashSet linkedHashSet) {
        ArrayList arrayList = new ArrayList();
        for (Map map2 : w1.f0(str, map)) {
            if (linkedHashSet.contains(N2("general_pk_id", N2("user_general_id", N2("owner_general_id", "", map2), map2), map2))) {
                arrayList.add(new LinkedHashMap(map2));
            }
        }
        return arrayList;
    }

    public static boolean u1(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue() == 1.0d;
        }
        if (obj == null) {
            return false;
        }
        try {
            return Double.parseDouble(obj.toString()) == 1.0d;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x028b  */
    /* JADX WARN: Code duplicated, block: B:166:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:167:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:170:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:175:0x0422  */
    /* JADX WARN: Code duplicated, block: B:176:0x0425  */
    /* JADX WARN: Code duplicated, block: B:178:0x0428  */
    /* JADX WARN: Code duplicated, block: B:184:0x043c  */
    /* JADX WARN: Code duplicated, block: B:188:0x0456  */
    /* JADX WARN: Code duplicated, block: B:190:0x045e  */
    /* JADX WARN: Code duplicated, block: B:191:0x0465  */
    /* JADX WARN: Code duplicated, block: B:193:0x0476  */
    /* JADX WARN: Code duplicated, block: B:196:0x0499  */
    /* JADX WARN: Code duplicated, block: B:198:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:204:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:207:0x04da  */
    /* JADX WARN: Code duplicated, block: B:209:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:212:0x04f6  */
    /* JADX WARN: Code duplicated, block: B:215:0x0503  */
    /* JADX WARN: Code duplicated, block: B:217:0x0513  */
    /* JADX WARN: Code duplicated, block: B:220:0x0521  */
    /* JADX WARN: Code duplicated, block: B:222:0x0527  */
    /* JADX WARN: Code duplicated, block: B:226:0x0543  */
    /* JADX WARN: Code duplicated, block: B:228:0x0549  */
    /* JADX WARN: Code duplicated, block: B:231:0x057a  */
    /* JADX WARN: Code duplicated, block: B:233:0x0588  */
    /* JADX WARN: Code duplicated, block: B:234:0x059c  */
    /* JADX WARN: Code duplicated, block: B:280:0x0408 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:282:0x03f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:0x04ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:0x052f A[EDGE_INSN: B:290:0x052f->B:224:0x052f BREAK  A[LOOP:9: B:210:0x04f2->B:223:0x052a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:293:0x052a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x015f  */
    /* JADX WARN: Instruction removed from duplicated block: B:233:0x0588, please report this as an issue */
    public static com.sgscq.vpn.handler.a0 u2(Map map, a7 a7Var) {
        ArrayList arrayList;
        ArrayList arrayList2;
        a7 a7Var2;
        String str;
        String str2;
        String str3;
        String str4;
        ArrayList arrayList3;
        Map map2;
        ArrayList arrayList4;
        String str5;
        String str6;
        String str7;
        int size;
        com.sgscq.vpn.handler.a0 a0Var;
        Map map3;
        int i2;
        Iterator it;
        int i3;
        String str8;
        String str9;
        com.sgscq.vpn.handler.a0 a0Var2;
        Map map4;
        String str10;
        String str11;
        int i4;
        String str12;
        String str13;
        String str14;
        Map map5;
        boolean z;
        String str15;
        String str16;
        boolean z2;
        List listF0;
        ArrayList arrayList5;
        int size2;
        String str17;
        Iterator it2;
        Map map6;
        Object obj;
        String strC2;
        List list;
        int size3;
        Object obj2;
        Map map7;
        String strC3;
        Object obj3;
        Map map8;
        Object orDefault;
        String str18;
        String strC4;
        int iB2;
        String strValueOf;
        int iB3;
        com.sgscq.vpn.handler.a0 a0Var3;
        boolean z3;
        boolean z4;
        boolean z5;
        String str19;
        a7 a7Var3 = a7Var;
        com.sgscq.vpn.handler.a0 a0Var4 = new com.sgscq.vpn.handler.a0();
        if (map == null || a7Var3 == null) {
            return a0Var4;
        }
        String str20 = "surrender_progress";
        Object obj4 = map.get("surrender_progress");
        Map linkedHashMap = obj4 instanceof Map ? (Map) obj4 : new LinkedHashMap();
        if (linkedHashMap.isEmpty()) {
            return a0Var4;
        }
        Iterator it3 = new ArrayList(a7Var.a()).iterator();
        loop0: while (true) {
            a7 a7Var4 = a7Var3;
            while (true) {
                boolean zHasNext = it3.hasNext();
                arrayList = a0Var4.f752h;
                String str21 = " soulsCleared=";
                String str22 = "SGSCQ_SRV";
                if (!zHasNext) {
                    break loop0;
                }
                String str23 = (String) it3.next();
                if (str23 != null) {
                    if (!str23.isEmpty() && com.sgscq.vpn.handler.d0.N(str23, linkedHashMap) && !linkedHashMap.containsKey("evolution_soul_granted_".concat(str23))) {
                        Map mapB = a7Var4.b(str23);
                        if (mapB == null) {
                            arrayList2 = new ArrayList();
                        } else {
                            Object obj5 = mapB.get("evolution_rewards");
                            if (obj5 instanceof List) {
                                ArrayList arrayList6 = new ArrayList();
                                for (Object obj6 : (List) obj5) {
                                    if (obj6 instanceof Map) {
                                        arrayList6.add((Map) obj6);
                                    }
                                }
                                arrayList2 = arrayList6;
                            } else {
                                arrayList2 = new ArrayList();
                            }
                        }
                        if (!arrayList2.isEmpty()) {
                            ArrayList arrayList7 = new ArrayList();
                            Iterator it4 = arrayList2.iterator();
                            int i5 = 0;
                            int i6 = 0;
                            Iterator it5 = it3;
                            int i7 = 0;
                            while (true) {
                                a7Var2 = a7Var4;
                                str = str20;
                                str2 = "";
                                str3 = str21;
                                str4 = "type";
                                arrayList3 = arrayList;
                                if (!it4.hasNext()) {
                                    break;
                                }
                                Iterator it6 = it4;
                                Map map9 = (Map) it4.next();
                                String str24 = str23;
                                if (B2("type", map9) == 6) {
                                    String strValueOf2 = String.valueOf(map9.getOrDefault("id", ""));
                                    int iB4 = B2("num", map9);
                                    if (!strValueOf2.isEmpty() && iB4 > 0) {
                                        int iP2 = p2(iB4, strValueOf2, map);
                                        i5 += iP2;
                                        a0Var4.f750f += S(strValueOf2, map);
                                        w1.k(iB4, strValueOf2, map);
                                        arrayList7.add(strValueOf2);
                                        i6 += iB4;
                                        i7 = (iB4 - iP2) + i7;
                                    }
                                }
                                str23 = str24;
                                a7Var4 = a7Var2;
                                str20 = str;
                                str21 = str3;
                                arrayList = arrayList3;
                                it4 = it6;
                            }
                            String str25 = str23;
                            if (i6 <= 0) {
                                a0Var = a0Var4;
                                map3 = linkedHashMap;
                                a7Var4 = a7Var2;
                            } else {
                                String str26 = "skill_id";
                                int i8 = i7;
                                String str27 = "skill_code";
                                int i9 = i5;
                                String str28 = " instances=";
                                int i10 = i6;
                                String str29 = "general_id";
                                com.sgscq.vpn.handler.a0 a0Var5 = a0Var4;
                                String str30 = "num";
                                if (arrayList7.isEmpty()) {
                                    map2 = linkedHashMap;
                                    str5 = "";
                                    str7 = "General";
                                    str6 = "type";
                                    arrayList4 = arrayList7;
                                    size = 0;
                                } else {
                                    LinkedHashSet linkedHashSet = new LinkedHashSet(arrayList7);
                                    w1.a1(null).getClass();
                                    if (linkedHashSet.isEmpty()) {
                                        map2 = linkedHashMap;
                                    } else {
                                        map2 = linkedHashMap;
                                        List listF1 = w1.f0("General", map);
                                        if (!listF1.isEmpty()) {
                                            str7 = "General";
                                            ArrayList arrayList8 = new ArrayList();
                                            int size4 = listF1.size();
                                            while (true) {
                                                str5 = str2;
                                                int i11 = size4 - 1;
                                                str6 = str4;
                                                if (i11 < 0) {
                                                    break;
                                                }
                                                Map map10 = (Map) listF1.get(i11);
                                                ArrayList arrayList9 = arrayList7;
                                                String strC5 = w1.C2(map10.getOrDefault("general_id", map10.get("id")));
                                                if (!strC5.isEmpty() && linkedHashSet.contains(strC5)) {
                                                    String strC6 = w1.C2(map10.getOrDefault("pk_id", map10.get("general_pk_id")));
                                                    if (!strC6.isEmpty()) {
                                                        arrayList8.add(strC6);
                                                    }
                                                    listF1.remove(i11);
                                                }
                                                str4 = str6;
                                                arrayList7 = arrayList9;
                                                size4 = i11;
                                                str2 = str5;
                                            }
                                            arrayList4 = arrayList7;
                                            if (!arrayList8.isEmpty()) {
                                                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                                Iterator it7 = w1.f0("Skill", map).iterator();
                                                while (it7.hasNext()) {
                                                    Map map11 = (Map) it7.next();
                                                    String strC7 = w1.C2(map11.get("pk_id"));
                                                    Iterator it8 = it7;
                                                    String strC8 = w1.C2(map11.get("general_pk_id"));
                                                    if (arrayList8.contains(strC7) || arrayList8.contains(strC8)) {
                                                        String strC9 = w1.C2(map11.getOrDefault("skill_id", map11.getOrDefault("id", map11.get("skill_code"))));
                                                        if (!strC9.isEmpty()) {
                                                            linkedHashSet2.add(strC9);
                                                        }
                                                    }
                                                    it7 = it8;
                                                }
                                                w1.w2(arrayList8, map);
                                                w1.v2("TeamGeneral", arrayList8, map);
                                                w1.v2("BuddyGeneral", arrayList8, map);
                                                w1.F(map, linkedHashSet, linkedHashSet2);
                                                z2.e("SGSCQ_SRV", "[GeneralReclaim] removed generals=" + linkedHashSet + " instances=" + arrayList8.size() + " skills=" + linkedHashSet2);
                                                size = arrayList8.size();
                                            }
                                        }
                                        size = 0;
                                    }
                                    str5 = "";
                                    str7 = "General";
                                    str6 = "type";
                                    arrayList4 = arrayList7;
                                    size = 0;
                                }
                                Iterator it9 = arrayList4.iterator();
                                int i12 = 0;
                                while (it9.hasNext()) {
                                    String str31 = (String) it9.next();
                                    Map mapB2 = a7Var.b(str31);
                                    if (mapB2 == null) {
                                        i2 = 0;
                                        it = it9;
                                        i3 = i12;
                                        str8 = str29;
                                        str9 = str28;
                                        a0Var2 = a0Var5;
                                        map4 = map2;
                                        str10 = str6;
                                        str11 = str5;
                                        i4 = size;
                                        String str32 = str30;
                                        str12 = str27;
                                        str13 = str26;
                                        str14 = str32;
                                    } else {
                                        Object obj7 = mapB2.get("rewards");
                                        if (obj7 instanceof List) {
                                            LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                                            List list2 = (List) obj7;
                                            for (Object obj8 : list2) {
                                                it9 = it9;
                                                if (obj8 instanceof Map) {
                                                    Map map12 = (Map) obj8;
                                                    String str33 = str6;
                                                    int i13 = size;
                                                    int iB5 = B2(str33, map12);
                                                    int i14 = i12;
                                                    String str34 = str5;
                                                    String strValueOf3 = String.valueOf(map12.getOrDefault("id", str34));
                                                    if (strValueOf3.isEmpty()) {
                                                        str19 = str22;
                                                    } else {
                                                        str19 = str22;
                                                        if (iB5 == 4 || iB5 == 7) {
                                                            linkedHashSet3.add(strValueOf3);
                                                        }
                                                    }
                                                    size = i13;
                                                    str22 = str19;
                                                    str5 = str34;
                                                    str6 = str33;
                                                    i12 = i14;
                                                }
                                            }
                                            it = it9;
                                            i3 = i12;
                                            String str35 = str6;
                                            str11 = str5;
                                            i4 = size;
                                            String str36 = str22;
                                            Map map13 = map2;
                                            boolean zQ = com.sgscq.vpn.handler.d0.Q(str31, map13);
                                            if (zQ) {
                                                map5 = map13;
                                            } else {
                                                if (linkedHashSet3.isEmpty()) {
                                                    map5 = map13;
                                                    z3 = false;
                                                } else {
                                                    Iterator it10 = w1.f0("Skill", map).iterator();
                                                    while (true) {
                                                        if (it10.hasNext()) {
                                                            Iterator it11 = it10;
                                                            Map map14 = (Map) it10.next();
                                                            map5 = map13;
                                                            if (linkedHashSet3.contains(String.valueOf(map14.getOrDefault(str26, map14.getOrDefault("id", map14.get(str27)))))) {
                                                                z3 = true;
                                                            } else {
                                                                map13 = map5;
                                                                it10 = it11;
                                                            }
                                                        } else {
                                                            map5 = map13;
                                                            z3 = false;
                                                        }
                                                    }
                                                }
                                                if (!z3) {
                                                    z = zQ;
                                                    str16 = str28;
                                                    if (linkedHashSet3.isEmpty()) {
                                                        str15 = str26;
                                                        z4 = false;
                                                    } else {
                                                        Iterator it12 = w1.f0("Atlas", map).iterator();
                                                        while (true) {
                                                            if (it12.hasNext()) {
                                                                Iterator it13 = it12;
                                                                Map map15 = (Map) it12.next();
                                                                str15 = str26;
                                                                if (linkedHashSet3.contains(String.valueOf(map15.get(str26))) && !"0".equals(String.valueOf(map15.getOrDefault("atlas_status", "0")))) {
                                                                    z4 = true;
                                                                } else {
                                                                    it12 = it13;
                                                                    str26 = str15;
                                                                }
                                                            } else {
                                                                str15 = str26;
                                                                z4 = false;
                                                            }
                                                        }
                                                    }
                                                    if (!z4) {
                                                        Iterator it14 = w1.f0("Atlas", map).iterator();
                                                        while (true) {
                                                            if (!it14.hasNext()) {
                                                                z5 = false;
                                                                break;
                                                            }
                                                            Map map16 = (Map) it14.next();
                                                            if (c.a.C(map16, "pk_id", str11, str29, str31) && c.a.B(map16, "atlas_status", "0", "2")) {
                                                                z5 = true;
                                                                break;
                                                            }
                                                        }
                                                        if (!z5) {
                                                            z2 = false;
                                                        }
                                                    }
                                                    if (z2) {
                                                        for (Object obj9 : list2) {
                                                            if (obj9 instanceof Map) {
                                                                Map map17 = (Map) obj9;
                                                                iB2 = B2(str35, map17);
                                                                strValueOf = String.valueOf(map17.getOrDefault("id", str11));
                                                                String str37 = str30;
                                                                iB3 = B2(str37, map17);
                                                                if (strValueOf.isEmpty()) {
                                                                    a0Var3 = a0Var5;
                                                                } else if (iB2 != 5 || iB2 == 8) {
                                                                    a0Var3 = a0Var5;
                                                                    a0Var3.f747c = p2(iB3, strValueOf, map) + a0Var3.f747c;
                                                                } else if (iB2 == 6) {
                                                                    a0Var3 = a0Var5;
                                                                    a0Var3.f750f = S(strValueOf, map) + a0Var3.f750f;
                                                                } else {
                                                                    a0Var3 = a0Var5;
                                                                }
                                                                a0Var5 = a0Var3;
                                                                str30 = str37;
                                                            }
                                                        }
                                                        a0Var2 = a0Var5;
                                                        str14 = str30;
                                                        if (linkedHashSet3.isEmpty()) {
                                                            str12 = str27;
                                                            str10 = str35;
                                                            str8 = str29;
                                                            str22 = str36;
                                                            str9 = str16;
                                                            str13 = str15;
                                                        } else {
                                                            HashSet hashSet = w1.U;
                                                            if (linkedHashSet3.isEmpty()) {
                                                                str12 = str27;
                                                                str10 = str35;
                                                                str13 = str15;
                                                            } else {
                                                                listF0 = w1.f0("Skill", map);
                                                                arrayList5 = new ArrayList();
                                                                size2 = listF0.size() - 1;
                                                                while (size2 >= 0) {
                                                                    map8 = (Map) listF0.get(size2);
                                                                    String str38 = str35;
                                                                    orDefault = map8.getOrDefault("id", map8.get(str27));
                                                                    String str39 = str27;
                                                                    str18 = str15;
                                                                    if (linkedHashSet3.contains(w1.C2(map8.getOrDefault(str18, orDefault)))) {
                                                                        strC4 = w1.C2(map8.get("pk_id"));
                                                                        if (!strC4.isEmpty()) {
                                                                            arrayList5.add(strC4);
                                                                        }
                                                                        listF0.remove(size2);
                                                                    }
                                                                    size2--;
                                                                    str15 = str18;
                                                                    str35 = str38;
                                                                    str27 = str39;
                                                                }
                                                                str12 = str27;
                                                                str10 = str35;
                                                                str13 = str15;
                                                                if (!arrayList5.isEmpty()) {
                                                                    str17 = str7;
                                                                    it2 = w1.f0(str17, map).iterator();
                                                                    while (it2.hasNext()) {
                                                                        map6 = (Map) it2.next();
                                                                        obj = map6.get("general_skills");
                                                                        String str40 = str17;
                                                                        if (obj instanceof List) {
                                                                            list = (List) obj;
                                                                            size3 = list.size();
                                                                            while (true) {
                                                                                size3--;
                                                                                if (size3 < 0) {
                                                                                    break;
                                                                                }
                                                                                Iterator it15 = it2;
                                                                                obj2 = list.get(size3);
                                                                                String str41 = str29;
                                                                                if (obj2 instanceof Map) {
                                                                                    map7 = (Map) obj2;
                                                                                    strC3 = w1.C2(map7.get("pk_id"));
                                                                                    obj3 = map7.get(str13);
                                                                                    if (obj3 == null) {
                                                                                        obj3 = map7.get("id");
                                                                                    }
                                                                                    String strC10 = w1.C2(obj3);
                                                                                    if (arrayList5.contains(strC3) || linkedHashSet3.contains(strC10)) {
                                                                                        list.remove(size3);
                                                                                    }
                                                                                }
                                                                                it2 = it15;
                                                                                str29 = str41;
                                                                            }
                                                                        }
                                                                        Iterator it16 = it2;
                                                                        String str42 = str29;
                                                                        strC2 = w1.C2(map6.get("gSkill"));
                                                                        if (arrayList5.contains(strC2) || linkedHashSet3.contains(strC2)) {
                                                                            map6.put("gSkill", str11);
                                                                        }
                                                                        str17 = str40;
                                                                        it2 = it16;
                                                                        str29 = str42;
                                                                    }
                                                                    str7 = str17;
                                                                    str8 = str29;
                                                                    StringBuilder sb = new StringBuilder("[SkillReclaim] removed skills=");
                                                                    sb.append(linkedHashSet3);
                                                                    str9 = str16;
                                                                    sb.append(str9);
                                                                    sb.append(arrayList5.size());
                                                                    str22 = str36;
                                                                    z2.e(str22, sb.toString());
                                                                    arrayList5.size();
                                                                }
                                                            }
                                                            str8 = str29;
                                                            str22 = str36;
                                                            str9 = str16;
                                                        }
                                                        if (z) {
                                                            map4 = map5;
                                                            map4.remove("claimed_" + str31);
                                                        } else {
                                                            map4 = map5;
                                                        }
                                                        LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                                                        linkedHashSet4.add(str31);
                                                        w1.F(map, linkedHashSet4, linkedHashSet3);
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 0;
                                                        str8 = str29;
                                                        a0Var2 = a0Var5;
                                                        str14 = str30;
                                                        map4 = map5;
                                                        str22 = str36;
                                                        str12 = str27;
                                                        str10 = str35;
                                                        str9 = str16;
                                                        str13 = str15;
                                                    }
                                                }
                                                z2 = true;
                                                if (z2) {
                                                    i2 = 0;
                                                    str8 = str29;
                                                    a0Var2 = a0Var5;
                                                    str14 = str30;
                                                    map4 = map5;
                                                    str22 = str36;
                                                    str12 = str27;
                                                    str10 = str35;
                                                    str9 = str16;
                                                    str13 = str15;
                                                } else {
                                                    while (r1.hasNext()) {
                                                        if (obj9 instanceof Map) {
                                                            Map map18 = (Map) obj9;
                                                            iB2 = B2(str35, map18);
                                                            strValueOf = String.valueOf(map18.getOrDefault("id", str11));
                                                            String str310 = str30;
                                                            iB3 = B2(str310, map18);
                                                            if (strValueOf.isEmpty()) {
                                                                a0Var3 = a0Var5;
                                                            } else if (iB2 != 5) {
                                                                a0Var3 = a0Var5;
                                                                a0Var3.f747c = p2(iB3, strValueOf, map) + a0Var3.f747c;
                                                            } else {
                                                                a0Var3 = a0Var5;
                                                                a0Var3.f747c = p2(iB3, strValueOf, map) + a0Var3.f747c;
                                                            }
                                                            a0Var5 = a0Var3;
                                                            str30 = str310;
                                                        }
                                                    }
                                                    a0Var2 = a0Var5;
                                                    str14 = str30;
                                                    if (linkedHashSet3.isEmpty()) {
                                                        HashSet hashSet2 = w1.U;
                                                        if (linkedHashSet3.isEmpty()) {
                                                            str12 = str27;
                                                            str10 = str35;
                                                            str13 = str15;
                                                        } else {
                                                            listF0 = w1.f0("Skill", map);
                                                            arrayList5 = new ArrayList();
                                                            size2 = listF0.size() - 1;
                                                            while (size2 >= 0) {
                                                                map8 = (Map) listF0.get(size2);
                                                                String str311 = str35;
                                                                orDefault = map8.getOrDefault("id", map8.get(str27));
                                                                String str312 = str27;
                                                                str18 = str15;
                                                                if (linkedHashSet3.contains(w1.C2(map8.getOrDefault(str18, orDefault)))) {
                                                                    strC4 = w1.C2(map8.get("pk_id"));
                                                                    if (!strC4.isEmpty()) {
                                                                        arrayList5.add(strC4);
                                                                    }
                                                                    listF0.remove(size2);
                                                                }
                                                                size2--;
                                                                str15 = str18;
                                                                str35 = str311;
                                                                str27 = str312;
                                                            }
                                                            str12 = str27;
                                                            str10 = str35;
                                                            str13 = str15;
                                                            if (!arrayList5.isEmpty()) {
                                                                str17 = str7;
                                                                it2 = w1.f0(str17, map).iterator();
                                                                while (it2.hasNext()) {
                                                                    map6 = (Map) it2.next();
                                                                    obj = map6.get("general_skills");
                                                                    String str43 = str17;
                                                                    if (obj instanceof List) {
                                                                        list = (List) obj;
                                                                        size3 = list.size();
                                                                        while (true) {
                                                                            size3--;
                                                                            if (size3 < 0) {
                                                                                break;
                                                                                break;
                                                                            }
                                                                            Iterator it17 = it2;
                                                                            obj2 = list.get(size3);
                                                                            String str44 = str29;
                                                                            if (obj2 instanceof Map) {
                                                                                map7 = (Map) obj2;
                                                                                strC3 = w1.C2(map7.get("pk_id"));
                                                                                obj3 = map7.get(str13);
                                                                                if (obj3 == null) {
                                                                                    obj3 = map7.get("id");
                                                                                }
                                                                                String strC11 = w1.C2(obj3);
                                                                                if (arrayList5.contains(strC3)) {
                                                                                    list.remove(size3);
                                                                                } else {
                                                                                    list.remove(size3);
                                                                                }
                                                                            }
                                                                            it2 = it17;
                                                                            str29 = str44;
                                                                        }
                                                                    }
                                                                    Iterator it18 = it2;
                                                                    String str45 = str29;
                                                                    strC2 = w1.C2(map6.get("gSkill"));
                                                                    if (arrayList5.contains(strC2)) {
                                                                        map6.put("gSkill", str11);
                                                                    } else {
                                                                        map6.put("gSkill", str11);
                                                                    }
                                                                    str17 = str43;
                                                                    it2 = it18;
                                                                    str29 = str45;
                                                                }
                                                                str7 = str17;
                                                                str8 = str29;
                                                                StringBuilder sb2 = new StringBuilder("[SkillReclaim] removed skills=");
                                                                sb2.append(linkedHashSet3);
                                                                str9 = str16;
                                                                sb2.append(str9);
                                                                sb2.append(arrayList5.size());
                                                                str22 = str36;
                                                                z2.e(str22, sb2.toString());
                                                                arrayList5.size();
                                                            }
                                                        }
                                                        str8 = str29;
                                                        str22 = str36;
                                                        str9 = str16;
                                                    } else {
                                                        str12 = str27;
                                                        str10 = str35;
                                                        str8 = str29;
                                                        str22 = str36;
                                                        str9 = str16;
                                                        str13 = str15;
                                                    }
                                                    if (z) {
                                                        map4 = map5;
                                                        map4.remove("claimed_" + str31);
                                                    } else {
                                                        map4 = map5;
                                                    }
                                                    LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                                                    linkedHashSet5.add(str31);
                                                    w1.F(map, linkedHashSet5, linkedHashSet3);
                                                    i2 = 1;
                                                }
                                            }
                                            z = zQ;
                                            str15 = str26;
                                            str16 = str28;
                                            z2 = true;
                                            if (z2) {
                                                i2 = 0;
                                                str8 = str29;
                                                a0Var2 = a0Var5;
                                                str14 = str30;
                                                map4 = map5;
                                                str22 = str36;
                                                str12 = str27;
                                                str10 = str35;
                                                str9 = str16;
                                                str13 = str15;
                                            } else {
                                                while (r1.hasNext()) {
                                                    if (obj9 instanceof Map) {
                                                        Map map19 = (Map) obj9;
                                                        iB2 = B2(str35, map19);
                                                        strValueOf = String.valueOf(map19.getOrDefault("id", str11));
                                                        String str313 = str30;
                                                        iB3 = B2(str313, map19);
                                                        if (strValueOf.isEmpty()) {
                                                            a0Var3 = a0Var5;
                                                        } else if (iB2 != 5) {
                                                            a0Var3 = a0Var5;
                                                            a0Var3.f747c = p2(iB3, strValueOf, map) + a0Var3.f747c;
                                                        } else {
                                                            a0Var3 = a0Var5;
                                                            a0Var3.f747c = p2(iB3, strValueOf, map) + a0Var3.f747c;
                                                        }
                                                        a0Var5 = a0Var3;
                                                        str30 = str313;
                                                    }
                                                }
                                                a0Var2 = a0Var5;
                                                str14 = str30;
                                                if (linkedHashSet3.isEmpty()) {
                                                    HashSet hashSet3 = w1.U;
                                                    if (linkedHashSet3.isEmpty()) {
                                                        str12 = str27;
                                                        str10 = str35;
                                                        str13 = str15;
                                                    } else {
                                                        listF0 = w1.f0("Skill", map);
                                                        arrayList5 = new ArrayList();
                                                        size2 = listF0.size() - 1;
                                                        while (size2 >= 0) {
                                                            map8 = (Map) listF0.get(size2);
                                                            String str314 = str35;
                                                            orDefault = map8.getOrDefault("id", map8.get(str27));
                                                            String str315 = str27;
                                                            str18 = str15;
                                                            if (linkedHashSet3.contains(w1.C2(map8.getOrDefault(str18, orDefault)))) {
                                                                strC4 = w1.C2(map8.get("pk_id"));
                                                                if (!strC4.isEmpty()) {
                                                                    arrayList5.add(strC4);
                                                                }
                                                                listF0.remove(size2);
                                                            }
                                                            size2--;
                                                            str15 = str18;
                                                            str35 = str314;
                                                            str27 = str315;
                                                        }
                                                        str12 = str27;
                                                        str10 = str35;
                                                        str13 = str15;
                                                        if (!arrayList5.isEmpty()) {
                                                            str17 = str7;
                                                            it2 = w1.f0(str17, map).iterator();
                                                            while (it2.hasNext()) {
                                                                map6 = (Map) it2.next();
                                                                obj = map6.get("general_skills");
                                                                String str46 = str17;
                                                                if (obj instanceof List) {
                                                                    list = (List) obj;
                                                                    size3 = list.size();
                                                                    while (true) {
                                                                        size3--;
                                                                        if (size3 < 0) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        Iterator it19 = it2;
                                                                        obj2 = list.get(size3);
                                                                        String str47 = str29;
                                                                        if (obj2 instanceof Map) {
                                                                            map7 = (Map) obj2;
                                                                            strC3 = w1.C2(map7.get("pk_id"));
                                                                            obj3 = map7.get(str13);
                                                                            if (obj3 == null) {
                                                                                obj3 = map7.get("id");
                                                                            }
                                                                            String strC12 = w1.C2(obj3);
                                                                            if (arrayList5.contains(strC3)) {
                                                                                list.remove(size3);
                                                                            } else {
                                                                                list.remove(size3);
                                                                            }
                                                                        }
                                                                        it2 = it19;
                                                                        str29 = str47;
                                                                    }
                                                                }
                                                                Iterator it110 = it2;
                                                                String str48 = str29;
                                                                strC2 = w1.C2(map6.get("gSkill"));
                                                                if (arrayList5.contains(strC2)) {
                                                                    map6.put("gSkill", str11);
                                                                } else {
                                                                    map6.put("gSkill", str11);
                                                                }
                                                                str17 = str46;
                                                                it2 = it110;
                                                                str29 = str48;
                                                            }
                                                            str7 = str17;
                                                            str8 = str29;
                                                            StringBuilder sb3 = new StringBuilder("[SkillReclaim] removed skills=");
                                                            sb3.append(linkedHashSet3);
                                                            str9 = str16;
                                                            sb3.append(str9);
                                                            sb3.append(arrayList5.size());
                                                            str22 = str36;
                                                            z2.e(str22, sb3.toString());
                                                            arrayList5.size();
                                                        }
                                                    }
                                                    str8 = str29;
                                                    str22 = str36;
                                                    str9 = str16;
                                                } else {
                                                    str12 = str27;
                                                    str10 = str35;
                                                    str8 = str29;
                                                    str22 = str36;
                                                    str9 = str16;
                                                    str13 = str15;
                                                }
                                                if (z) {
                                                    map4 = map5;
                                                    map4.remove("claimed_" + str31);
                                                } else {
                                                    map4 = map5;
                                                }
                                                LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                                                linkedHashSet6.add(str31);
                                                w1.F(map, linkedHashSet6, linkedHashSet3);
                                                i2 = 1;
                                            }
                                        } else {
                                            i2 = 0;
                                            it = it9;
                                            i3 = i12;
                                            str8 = str29;
                                            str9 = str28;
                                            a0Var2 = a0Var5;
                                            map4 = map2;
                                            str10 = str6;
                                            str11 = str5;
                                            i4 = size;
                                            String str316 = str30;
                                            str12 = str27;
                                            str13 = str26;
                                            str14 = str316;
                                        }
                                    }
                                    map2 = map4;
                                    str5 = str11;
                                    str28 = str9;
                                    it9 = it;
                                    str29 = str8;
                                    i12 = i3 + i2;
                                    size = i4;
                                    str6 = str10;
                                    a0Var5 = a0Var2;
                                    String str49 = str14;
                                    str26 = str13;
                                    str27 = str12;
                                    str30 = str49;
                                }
                                int i15 = size;
                                int i16 = i12;
                                a0Var = a0Var5;
                                map3 = map2;
                                map3.put("evolution_soul_granted_".concat(str25), "1");
                                a0Var.f745a = true;
                                a0Var.f746b += i10;
                                a0Var.f747c += i9;
                                a0Var.f748d += i8;
                                a0Var.f749e += i15;
                                a0Var.f751g += i16;
                                arrayList3.add(str25);
                                z2.e(str22, "[SoulRepair] general=" + str25 + " souls+" + i10 + str3 + a0Var.f750f + " items-" + i9 + " consumedLeft=" + i8 + " generalsRemoved=" + i15 + " surrenderReclaimed=" + i16 + " soulIds=" + arrayList4);
                                a7Var4 = a7Var;
                            }
                            linkedHashMap = map3;
                            a0Var4 = a0Var;
                            it3 = it5;
                            str20 = str;
                        }
                    }
                }
            }
            a7Var3 = a7Var;
        }
        String str50 = str20;
        Map map20 = linkedHashMap;
        com.sgscq.vpn.handler.a0 a0Var6 = a0Var4;
        if (a0Var6.f745a) {
            map.put(str50, map20);
            z2.e("SGSCQ_SRV", "[SoulRepair] repaired generals=" + arrayList + " souls=" + a0Var6.f746b + " soulsCleared=" + a0Var6.f750f + " reclaimedItems=" + a0Var6.f747c + " consumedItemsNotRecoverable=" + a0Var6.f748d + " removedGenerals=" + a0Var6.f749e + " surrendersReclaimed=" + a0Var6.f751g);
        }
        return a0Var6;
    }

    public static void v(LinkedHashMap linkedHashMap, Map map) {
        if (map == null) {
            return;
        }
        ArrayList arrayListY = Y(w1.f0("EvolutionInfo", map));
        if (arrayListY.isEmpty()) {
            return;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("update_list", arrayListY);
        linkedHashMap2.put("del_list", new ArrayList());
        Object obj = linkedHashMap.get("return_info");
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            Object obj2 = map2.get("cmn");
            if (obj2 instanceof Map) {
                ((Map) obj2).put("evolution_info", linkedHashMap2);
            }
            Object obj3 = map2.get("info");
            if (obj3 instanceof Map) {
                for (Object obj4 : ((Map) obj3).values()) {
                    if (obj4 instanceof Map) {
                        Object obj5 = ((Map) obj4).get("cmn");
                        if (obj5 instanceof Map) {
                            ((Map) obj5).put("evolution_info", linkedHashMap2);
                        }
                    }
                }
            }
        }
    }

    public static Map v0(String str, List list) {
        if (str.isEmpty()) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (str.equals(M2("pk_id", "", map))) {
                return map;
            }
        }
        return null;
    }

    public static boolean v1(String str) {
        return (str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    public static Map v2(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        LinkedHashMap linkedHashMap3;
        Object obj = linkedHashMap2.get("cmn");
        if (obj instanceof Map) {
            linkedHashMap3 = new LinkedHashMap();
            String str = v[0];
            Object obj2 = ((Map) obj).get(str);
            if (obj2 != null) {
                linkedHashMap3.put(str, obj2);
            }
            if (linkedHashMap3.isEmpty()) {
                linkedHashMap3 = null;
            }
        } else {
            linkedHashMap3 = null;
        }
        linkedHashMap2.put("cmn", linkedHashMap);
        if (linkedHashMap3 == null) {
            return linkedHashMap2;
        }
        Object linkedHashMap4 = linkedHashMap2.get("cmn");
        if (!(linkedHashMap4 instanceof Map)) {
            linkedHashMap4 = new LinkedHashMap();
            linkedHashMap2.put("cmn", linkedHashMap4);
        }
        ((Map) linkedHashMap4).putAll(linkedHashMap3);
        return linkedHashMap2;
    }

    public static double w(double[] dArr, double[] dArr2, int i2) {
        if (dArr == null || dArr2 == null || i2 >= dArr.length || i2 >= dArr2.length) {
            return 0.0d;
        }
        return Math.round((dArr2[i2] - dArr[i2]) * 10.0d) / 10.0d;
    }

    public static Map w0(String str, List list) {
        if (str.isEmpty()) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (c.a.A(map, "pk_id", str)) {
                return map;
            }
        }
        return null;
    }

    public static int w2(Map map, boolean z) {
        String strB = c7.b();
        String str = z ? "elite_dungeon_times_buy_day" : "dungeon_times_buy_day";
        String str2 = z ? "elite_dungeon_times_buy_used" : "dungeon_times_buy_used";
        if (c.a.B(map, str, "", strB)) {
            return Math.max(0, X1(map.get(str2), 0));
        }
        map.put(str, strB);
        map.put(str2, 0);
        return 0;
    }

    public static double x(double[] dArr, double[] dArr2, int i2) {
        if (dArr == null || dArr2 == null || i2 >= dArr.length || i2 >= dArr2.length) {
            return 0.0d;
        }
        return Math.round((dArr2[i2] - dArr[i2]) * 10.0d) / 10.0d;
    }

    public static Map x0(String str, List list) {
        if (str.isEmpty()) {
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (c.a.A(map, "pk_id", str)) {
                return map;
            }
        }
        return null;
    }

    public static boolean x1(String str) {
        return "1".equals(String.valueOf(str)) || "true".equalsIgnoreCase(String.valueOf(str));
    }

    public static int x2(String str, Map map) {
        if (o1(str)) {
            return w2(map, p1(str));
        }
        String strH2 = h2(str);
        String strJ2 = j2(str);
        if (strH2.isEmpty() || strJ2.isEmpty()) {
            return 0;
        }
        String strB = c7.b();
        if (c.a.B(map, strH2, "", strB)) {
            return Math.max(0, X1(map.get(strJ2), 0));
        }
        map.put(strH2, strB);
        map.put(strJ2, 0);
        return 0;
    }

    public static ArrayList y(LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get("cultivate_attr");
        if (!(obj instanceof List)) {
            obj = linkedHashMap.get("culture_attr");
        }
        if (obj instanceof List) {
            return new ArrayList((List) obj);
        }
        com.sgscq.vpn.handler.g0 g0VarU = p5.U(1, new LinkedHashMap(), false);
        return p5.v0(p5.z0("field", Integer.valueOf(g0VarU.f842a), "val", Double.valueOf(g0VarU.f844c)), p5.z0("field", Integer.valueOf(g0VarU.f843b), "val", Double.valueOf(g0VarU.f845d)));
    }

    public static Map y0(String str, List list) {
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

    public static boolean y1(String str) {
        return "600028".equals(str) || "600029".equals(str) || "600018".equals(str) || "600100".equals(str) || o1(str);
    }

    public static String y2(String str, String str2) {
        switch (str) {
            case "111004":
                return "愿得一心人，白头不相离。";
            case "111006":
                return "曹魏多名将，张辽为第一。";
            case "111008":
                return "才略绝异冠一世，姿颜笑语性阔达。";
            case "111010":
                return "谋能应机王佐才，居中持重举贤明。";
            case "111012":
                return "天资文藻魏文帝，何远之有旷古贤。";
            case "111013":
                return "身长八尺姿颜伟，两扶幼主舍其谁。";
            case "111014":
                return "英雄魂断定军山，恃勇不怯终成空。";
            case "112012":
                return "远而望之，皎若太阳升朝霞；迫而察之，灼若芙蕖出渌波。";
            case "121005":
                return "愿守中军帐，常伴君一人。";
            case "121006":
                return "一骑绝尘走千里，五关斩将震坤乾。";
            case "121007":
                return "蜀之诸将，惟飞最雄。";
            case "121010":
                return "若论风貌诗书品，雄秀当推锦马超。";
            case "121017":
                return "献计征蜀真明策，势如破竹乃凤雏。";
            case "131004":
                return "烟波江渚上，翩翩美周郎。";
            case "131005":
                return "折节读书见精博，克己让人国士风。";
            case "131008":
                return "乔公二女秀色钟，秋水并蒂开芙蓉。";
            case "131009":
                return "陆逊运良筹，能分吴国忧。";
            case "131011":
                return "东吴大帝有爱妃，宽容慈惠有淑德。";
            case "131012":
                return "矢志全忠孝，东莱太史慈。";
            case "131013":
                return "屡立战功成名将，轻财重义国士风。";
            case "131017":
                return "身先士卒震江东，无坚不陷不可当。";
            case "131018":
                return "志在取鳞心探虎，遂使东吴分中土。";
            case "141003":
                return "沉鱼落雁不为过，闭月羞花贵为真。";
            case "141004":
                return "出门白骨蔽平原，宁为贱医救水火。";
            case "141005":
                return "粗衣布袍貌不平，壮怀远志天下清。";
            case "141010":
                return "三国英雄士，四朝经济臣。";
            default:
                return str2;
        }
    }

    public static double z(int i2, ArrayList arrayList) {
        String str;
        if (i2 == 1) {
            str = "attr_attack";
        } else if (i2 == 2) {
            str = "attr_defense";
        } else if (i2 != 3) {
            str = i2 != 4 ? "" : "attr_wisdom";
        } else {
            str = "attr_hp";
        }
        for (Object obj : arrayList) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                Object obj2 = map.get("field");
                if (str.equals(String.valueOf(obj2)) || i2 == w1.l2(String.valueOf(obj2), 0)) {
                    return f0(map.get("val"));
                }
            }
        }
        return 0.0d;
    }

    public static Map z0(String str, List list) {
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

    public static int z1(Map map) {
        if (map == null) {
            return 0;
        }
        return g1(g1(g1(0, "total_num", map), "item_num", map), "num", map);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x0086  */
    /* JADX WARN: Code duplicated, block: B:47:0x0098  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:60:0x00da  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:69:0x0103  */
    /* JADX WARN: Code duplicated, block: B:70:0x010a  */
    /* JADX WARN: Code duplicated, block: B:72:0x011b  */
    /* JADX WARN: Code duplicated, block: B:78:0x012c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0133  */
    /* JADX WARN: Code duplicated, block: B:94:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v10, types: [java.lang.Object, java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v19, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v3, types: [c.d] */
    /* JADX WARN: Type inference failed for: r11v4, types: [c.d] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public static Type z2(Type type, Class cls, Type type2, HashMap map) {
        Type[] lowerBounds;
        Type[] upperBounds;
        Type typeZ2;
        Type[] upperBounds2;
        Type typeZ3;
        Type[] lowerBounds2;
        Type typeZ4;
        boolean z;
        Type[] actualTypeArguments;
        int length;
        Type cVar;
        Type typeZ5;
        Type genericComponentType;
        Type typeZ6;
        TypeVariable typeVariable;
        TypeVariable typeVariable2 = null;
        do {
            int i2 = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (!(type2 instanceof Class)) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length != 1) {
                                    break;
                                }
                                if (typeZ2 instanceof WildcardType) {
                                    upperBounds2 = ((WildcardType) typeZ2).getUpperBounds();
                                } else {
                                    upperBounds2 = new Type[]{typeZ2};
                                }
                                type2 = new c.d(upperBounds2, f417e);
                                break;
                            }
                            typeZ3 = z2(type, cls, lowerBounds[0], map);
                            if (typeZ3 != lowerBounds[0]) {
                                break;
                            }
                            if (typeZ3 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeZ3).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeZ3};
                            }
                            type2 = new c.d(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType = type2.getOwnerType();
                        typeZ4 = z2(type, cls, ownerType, map);
                        z = !Objects.equals(typeZ4, ownerType);
                        actualTypeArguments = type2.getActualTypeArguments();
                        length = actualTypeArguments.length;
                        while (i2 < length) {
                            typeZ5 = z2(type, cls, actualTypeArguments[i2], map);
                            if (Objects.equals(typeZ5, actualTypeArguments[i2])) {
                                if (!z) {
                                    actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                    z = true;
                                }
                                actualTypeArguments[i2] = typeZ5;
                            }
                            i2++;
                        }
                        if (z) {
                            break;
                        }
                        cVar = new c.c(typeZ4, type2.getRawType(), actualTypeArguments);
                        type2 = cVar;
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeZ6 = z2(type, cls, genericComponentType, map);
                    if (Objects.equals(genericComponentType, typeZ6)) {
                        cVar = new c.b(typeZ6);
                        type2 = cVar;
                        break;
                    }
                    break;
                }
                Class cls2 = (Class) type2;
                if (!cls2.isArray()) {
                    if (type2 instanceof GenericArrayType) {
                        if (type2 instanceof ParameterizedType) {
                            if (type2 instanceof WildcardType) {
                                break;
                            }
                            type2 = (WildcardType) type2;
                            lowerBounds = type2.getLowerBounds();
                            upperBounds = type2.getUpperBounds();
                            if (lowerBounds.length == 1) {
                                if (upperBounds.length != 1 && (typeZ2 = z2(type, cls, upperBounds[0], map)) != upperBounds[0]) {
                                    if (typeZ2 instanceof WildcardType) {
                                        upperBounds2 = ((WildcardType) typeZ2).getUpperBounds();
                                    } else {
                                        upperBounds2 = new Type[]{typeZ2};
                                    }
                                    type2 = new c.d(upperBounds2, f417e);
                                    break;
                                }
                                break;
                                break;
                            }
                            typeZ3 = z2(type, cls, lowerBounds[0], map);
                            if (typeZ3 != lowerBounds[0]) {
                                break;
                            }
                            if (typeZ3 instanceof WildcardType) {
                                lowerBounds2 = ((WildcardType) typeZ3).getLowerBounds();
                            } else {
                                lowerBounds2 = new Type[]{typeZ3};
                            }
                            type2 = new c.d(new Type[]{Object.class}, lowerBounds2);
                            break;
                        }
                        type2 = (ParameterizedType) type2;
                        Type ownerType2 = type2.getOwnerType();
                        typeZ4 = z2(type, cls, ownerType2, map);
                        z = !Objects.equals(typeZ4, ownerType2);
                        actualTypeArguments = type2.getActualTypeArguments();
                        length = actualTypeArguments.length;
                        while (i2 < length) {
                            typeZ5 = z2(type, cls, actualTypeArguments[i2], map);
                            if (Objects.equals(typeZ5, actualTypeArguments[i2])) {
                                if (!z) {
                                    actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                    z = true;
                                }
                                actualTypeArguments[i2] = typeZ5;
                            }
                            i2++;
                        }
                        if (z) {
                            break;
                        }
                        cVar = new c.c(typeZ4, type2.getRawType(), actualTypeArguments);
                        type2 = cVar;
                        break;
                    }
                    type2 = (GenericArrayType) type2;
                    genericComponentType = type2.getGenericComponentType();
                    typeZ6 = z2(type, cls, genericComponentType, map);
                    if (Objects.equals(genericComponentType, typeZ6)) {
                        break;
                    }
                    cVar = new c.b(typeZ6);
                    type2 = cVar;
                    break;
                }
                Class<?> componentType = cls2.getComponentType();
                Type typeZ7 = z2(type, cls, componentType, map);
                if (!Objects.equals(componentType, typeZ7)) {
                    cVar = new c.b(typeZ7);
                    type2 = cVar;
                    break;
                }
                type2 = cls2;
                break;
            }
            typeVariable = (TypeVariable) type2;
            Type type3 = (Type) map.get(typeVariable);
            if (type3 != null) {
                return type3 == Void.TYPE ? type2 : type3;
            }
            map.put(typeVariable, Void.TYPE);
            if (typeVariable2 == null) {
                typeVariable2 = typeVariable;
            }
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 == null) {
                type2 = typeVariable;
            } else {
                Type typeX0 = X0(type, cls, cls3);
                if (typeX0 instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    int length2 = typeParameters.length;
                    while (true) {
                        if (i2 >= length2) {
                            throw new NoSuchElementException();
                        }
                        if (typeVariable.equals(typeParameters[i2])) {
                            type2 = ((ParameterizedType) typeX0).getActualTypeArguments()[i2];
                            break;
                        }
                        i2++;
                    }
                } else {
                    type2 = typeVariable;
                }
            }
        } while (type2 != typeVariable);
        if (typeVariable2 != null) {
            map.put(typeVariable2, type2);
        }
        return type2;
    }

    public abstract Method V0(Class cls, Field field);

    public abstract Constructor W0(Class cls);

    public abstract String[] Z0(Class cls);

    public abstract boolean w1(Class cls);
}
