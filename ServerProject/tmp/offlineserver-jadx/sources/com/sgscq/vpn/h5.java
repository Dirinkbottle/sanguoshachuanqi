package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h5 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f734f = {"upd", "update_list"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[][] f735g = {new String[]{"600028", "40"}, new String[]{"600029", "8"}, new String[]{"600018", "3"}, new String[]{"600100", "10"}, new String[]{"600030", "0"}, new String[]{"600031", "1"}, new String[]{"600035", "1"}};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final z4 f737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SharedPreferences f739d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal f736a = new ThreadLocal();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Set f740e = Collections.synchronizedSet(new HashSet());

    public h5(Context context, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        new ConcurrentHashMap();
        this.f738c = context;
        this.f739d = sharedPreferences;
        int i2 = 1;
        if (context == null || sharedPreferences2 == null) {
            this.f737b = new z4(new a.w(14), new t4(new a.w(15), 1, 1), new v4(), 0L);
        } else {
            this.f737b = new z4(new m.e(this, context, sharedPreferences2), new t4(new h(2, context), 128, 262144), new x1(), 750L);
        }
        if (sharedPreferences2 == null) {
            return;
        }
        sharedPreferences2.registerOnSharedPreferenceChangeListener(new s(this, i2));
    }

    public static LinkedHashMap A(Map map) {
        if (map == null) {
            map = new LinkedHashMap();
        }
        int iMax = Math.max(1, K0(K0(1, "level", map), "user_level", map));
        com.sgscq.vpn.handler.p.c(c7.b(), map);
        Map mapF = com.sgscq.vpn.handler.p.f(map);
        Set setB = com.sgscq.vpn.handler.p.b(map);
        int i2 = 0;
        for (com.sgscq.vpn.handler.o oVar : com.sgscq.vpn.handler.p.f953a) {
            if (iMax >= oVar.f942d) {
                String str = oVar.f939a;
                if (!setB.contains(str) && com.sgscq.vpn.handler.p.j(mapF.get(str)) >= oVar.f943e) {
                    i2++;
                }
            }
        }
        return p5.z0("num", Integer.valueOf(i2), new Object[0]);
    }

    public static LinkedHashMap A0(String str, Map map) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (map != null) {
            Object obj = map.get(str);
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                Object obj2 = map2.get("del");
                if (obj2 instanceof List) {
                    arrayList.addAll((List) obj2);
                }
                Object obj3 = map2.get("add");
                Object obj4 = map2.get("upd");
                if (obj4 instanceof List) {
                    List list = (List) obj4;
                    if (list != null && !list.isEmpty()) {
                        LinkedHashMap linkedHashMapF = F(obj3);
                        if (!linkedHashMapF.isEmpty()) {
                            ArrayList arrayList4 = new ArrayList(list.size());
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            for (Object obj5 : list) {
                                String strR0 = R0(obj5);
                                Object obj6 = strR0.isEmpty() ? null : linkedHashMapF.get(strR0);
                                if (obj6 == null) {
                                    arrayList4.add(obj5);
                                } else if (linkedHashSet.add(strR0)) {
                                    arrayList4.add(obj6);
                                }
                            }
                            list = arrayList4;
                        }
                    }
                    arrayList2.addAll(list);
                }
                if (obj3 instanceof List) {
                    arrayList3.addAll((List) obj3);
                }
            }
        }
        F0(str, arrayList2, arrayList);
        F0(str, arrayList3, arrayList);
        if ("Skill".equals(str)) {
            arrayList2.removeIf(new d5(0));
            arrayList3.removeIf(new d5(1));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("del_list", arrayList);
        linkedHashMap.put("update_list", arrayList2);
        linkedHashMap.put("del", arrayList);
        linkedHashMap.put("add", arrayList3);
        linkedHashMap.put("upd", arrayList2);
        return linkedHashMap;
    }

    public static String B0(String str, Map map) {
        return p5.s1(C0(str, map));
    }

    public static LinkedHashMap C(w1 w1Var, Map map, int i2, long j2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String strJ = c.a.j(map, "id", "", "general_id");
        linkedHashMap.put("general_id", strJ);
        linkedHashMap.put("general_name", map.getOrDefault("general_name", w1Var.R0(strJ)));
        linkedHashMap.put("general_painting_id", strJ);
        linkedHashMap.put("general_painting", strJ);
        linkedHashMap.put("general_quality", "5");
        com.sgscq.vpn.handler.l.b(linkedHashMap, "general_star", "1", i2, "tag_id");
        linkedHashMap.put("show_time", 0L);
        linkedHashMap.put("disappear_time", Long.valueOf(j2));
        linkedHashMap.put("general_level", "1");
        linkedHashMap.put("card_type", "1");
        linkedHashMap.put("general_avatar", strJ);
        return linkedHashMap;
    }

    public static LinkedHashMap C0(String str, Map map) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            Object obj2 = map2.get("del");
            if (obj2 instanceof List) {
                arrayList.addAll((List) obj2);
            }
            Object obj3 = map2.get("add");
            if (obj3 instanceof List) {
                arrayList2.addAll((List) obj3);
            }
            Object obj4 = map2.get("upd");
            if (obj4 instanceof List) {
                arrayList2.addAll(S(obj3, (List) obj4));
            }
        }
        F0(str, arrayList2, arrayList);
        if ("Skill".equals(str)) {
            arrayList2.removeIf(new d5(2));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("del_list", arrayList);
        linkedHashMap.put("update_list", arrayList2);
        return linkedHashMap;
    }

    public static int D0(Map map) {
        Object obj = map.get("General");
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            Object obj2 = map2.get("update_list");
            if (obj2 instanceof Collection) {
                return ((Collection) obj2).size();
            }
            Object obj3 = map2.get("add_list");
            if (obj3 instanceof Collection) {
                return ((Collection) obj3).size();
            }
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        return 0;
    }

    public static int E(int i2, String str, Map map) {
        Object obj = map.get(str);
        if (obj == null) {
            return 0;
        }
        try {
            long j2 = Long.parseLong(String.valueOf(obj));
            if (j2 <= 0) {
                return 0;
            }
            long jG = c7.g();
            long j3 = j2 + ((long) i2);
            if (jG >= j3) {
                return 0;
            }
            return (int) (j3 - jG);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static String E0(String str) {
        if (str == null) {
            return "";
        }
        if (!str.startsWith("105") || str.length() < 8) {
            return str.length() >= 6 ? str.substring(0, 6) : str;
        }
        return str.substring(0, 8);
    }

    public static LinkedHashMap F(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!(obj instanceof List)) {
            return linkedHashMap;
        }
        for (Object obj2 : (List) obj) {
            String strR0 = R0(obj2);
            if (!strR0.isEmpty()) {
                linkedHashMap.put(strR0, obj2);
            }
        }
        return linkedHashMap;
    }

    public static void F0(String str, ArrayList arrayList, ArrayList arrayList2) {
        if ("EquipmentPiece".equals(str)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ArrayList arrayList3 = new ArrayList(arrayList.size());
            for (Object obj : arrayList) {
                if (obj instanceof Map) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap((Map) obj);
                    String strValueOf = String.valueOf(linkedHashMap2.getOrDefault("pk_id", ""));
                    String strValueOf2 = String.valueOf(linkedHashMap2.getOrDefault("item_id", ""));
                    String strValueOf3 = String.valueOf(linkedHashMap2.getOrDefault("equipment_id", linkedHashMap2.getOrDefault("equip_id", linkedHashMap2.getOrDefault("id", ""))));
                    boolean z = true;
                    if (strValueOf3.length() == 7 && strValueOf3.startsWith("9")) {
                        strValueOf3 = strValueOf3.substring(1);
                    }
                    if (strValueOf3.length() == 0 && strValueOf2.length() == 7 && strValueOf2.startsWith("9")) {
                        strValueOf3 = strValueOf2.substring(1);
                    }
                    if (strValueOf3.length() == 0 && strValueOf.length() == 7 && strValueOf.startsWith("9")) {
                        strValueOf3 = strValueOf.substring(1);
                    }
                    if (strValueOf3.length() == 0) {
                        arrayList3.add(linkedHashMap2);
                    } else {
                        if (strValueOf2.length() == 0 && strValueOf.length() == 7 && strValueOf.startsWith("9")) {
                            strValueOf2 = strValueOf;
                        }
                        if (strValueOf2.length() > 0) {
                            linkedHashMap2.put("item_id", strValueOf2);
                        }
                        linkedHashMap2.put("pk_id", strValueOf3);
                        linkedHashMap2.put("id", strValueOf3);
                        linkedHashMap2.put("equipment_id", strValueOf3);
                        linkedHashMap2.put("equip_id", strValueOf3);
                        Integer num = (Integer) linkedHashMap.get(strValueOf3);
                        if (num == null) {
                            linkedHashMap.put(strValueOf3, Integer.valueOf(arrayList3.size()));
                            arrayList3.add(linkedHashMap2);
                        } else {
                            Map map = (Map) arrayList3.get(num.intValue());
                            int iMax = Math.max(Math.max(W0(0, "num", linkedHashMap2), W0(0, "item_num", linkedHashMap2)), W0(0, "equipment_piece_num", linkedHashMap2)) + Math.max(Math.max(W0(0, "num", map), W0(0, "item_num", map)), W0(0, "equipment_piece_num", map));
                            map.put("num", Integer.valueOf(iMax));
                            map.put("item_num", Integer.valueOf(iMax));
                            if (map.containsKey("equipment_piece_num")) {
                                map.put("equipment_piece_num", Integer.valueOf(iMax));
                            }
                        }
                        if (strValueOf.length() > 0 && !strValueOf.equals(strValueOf3)) {
                            Iterator it = arrayList2.iterator();
                            do {
                                if (!it.hasNext()) {
                                    z = false;
                                    break;
                                }
                            } while (!strValueOf.equals(String.valueOf(it.next())));
                            if (!z) {
                                arrayList2.add(strValueOf);
                            }
                        }
                    }
                } else {
                    arrayList3.add(obj);
                }
            }
            arrayList.clear();
            arrayList.addAll(arrayList3);
        }
    }

    public static String G0(String str) {
        return (str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) ? "0" : str;
    }

    public static String H0(String str) {
        if (str == null || str.isEmpty() || "0".equals(str) || "null".equals(str)) {
            return "";
        }
        String strTrim = str.trim();
        if (strTrim.matches("500\\d{3}")) {
            try {
                return String.valueOf(Integer.parseInt(strTrim.substring(3)) + 500);
            } catch (NumberFormatException unused) {
                return "";
            }
        }
        if (strTrim.matches("5\\d{2}")) {
            return strTrim;
        }
        if (!strTrim.matches("105000\\d{2}")) {
            return (!strTrim.startsWith("105") || strTrim.length() < 5) ? strTrim : strTrim.substring(0, 5);
        }
        return "105" + strTrim.substring(6);
    }

    public static boolean I(String str, p4 p4Var, boolean z, int i2) {
        if (z && i2 < 9) {
            return false;
        }
        int iJ = J(str);
        int iJ2 = J((String) p4Var.f1272b);
        if (iJ <= 0) {
            return false;
        }
        if (iJ2 <= 0) {
            return iJ <= 1;
        }
        return iJ <= iJ2;
    }

    public static String I0(Object obj) {
        int iL2;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Number) {
            iL2 = ((Number) obj).intValue();
        } else {
            String strValueOf = String.valueOf(obj);
            if (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) {
                return "";
            }
            if (!strValueOf.matches("\\d+\\.0+")) {
                return strValueOf;
            }
            iL2 = w1.l2(strValueOf, 0);
        }
        return String.valueOf(iL2);
    }

    public static int J(String str) {
        String strH0 = H0(str);
        try {
            if (strH0.matches("5\\d{2}")) {
                return Integer.parseInt(strH0) - 500;
            }
            if (!strH0.startsWith("105") || strH0.length() < 5) {
                return 0;
            }
            return Integer.parseInt(strH0.substring(3, 5));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static p4 K(Map map) {
        if (map == null) {
            return new p4("", 1, 3);
        }
        String strX0 = X0("user_position_step", "1", map);
        int iV = V(strX0);
        if (iV <= 0) {
            iV = Math.max(1, W0(1, "user_position_step", map));
        }
        return new p4(H0(X0("user_map_step", "", map)), strX0, iV);
    }

    public static int K0(int i2, String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            double dDoubleValue = ((Number) obj).doubleValue();
            return (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) ? i2 : (int) dDoubleValue;
        }
        if (!(obj instanceof String)) {
            return i2;
        }
        try {
            double d2 = Double.parseDouble((String) obj);
            return (Double.isNaN(d2) || Double.isInfinite(d2)) ? i2 : (int) d2;
        } catch (Exception unused) {
            return i2;
        }
    }

    public static p4 L(Map map, boolean z) {
        Object obj;
        Object obj2;
        if (!z) {
            return K(map);
        }
        if (map == null) {
            obj = 0;
            obj2 = 0;
        } else {
            obj = map.get("user_elite_map_step");
            obj2 = map.get("user_elite_position_step");
        }
        String strValueOf = obj == null ? "" : String.valueOf(obj);
        String strValueOf2 = obj2 == null ? "0" : String.valueOf(obj2);
        int iV = V(strValueOf2);
        if (iV <= 0) {
            iV = Math.max(1, w1.l2(strValueOf2, 1));
        }
        return new p4(H0(strValueOf), strValueOf2, iV);
    }

    public static long L0(long j2, String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return j2;
        }
        try {
            return Long.parseLong((String) obj);
        } catch (Exception unused) {
            return j2;
        }
    }

    public static void M(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    arrayList.add((Map) obj2);
                }
            }
        }
    }

    public static int M0(Map map) {
        Object obj = map.get("data_version");
        if (obj instanceof Number) {
            double dDoubleValue = ((Number) obj).doubleValue();
            if (t0(dDoubleValue)) {
                return (int) dDoubleValue;
            }
            return 0;
        }
        if (obj instanceof String) {
            try {
                double d2 = Double.parseDouble((String) obj);
                if (t0(d2)) {
                    return (int) d2;
                }
                return 0;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static void N(Object obj, String str, LinkedHashMap linkedHashMap) {
        if (obj == null) {
            return;
        }
        String strValueOf = String.valueOf(obj);
        if (strValueOf.isEmpty() || "0".equals(strValueOf) || "null".equalsIgnoreCase(strValueOf)) {
            return;
        }
        linkedHashMap.putIfAbsent(strValueOf, str);
    }

    public static String N0(String str, String str2, Map map) {
        Object obj = map.get(str);
        return obj != null ? obj.toString() : str2;
    }

    public static void O(String str, LinkedHashMap linkedHashMap, Map map, boolean z) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("add");
            if (obj2 instanceof List) {
                for (Object obj3 : (List) obj2) {
                    if (obj3 instanceof Map) {
                        Map map2 = (Map) obj3;
                        Object obj4 = map2.get(z ? "general_pk_id" : "pk_id");
                        String strValueOf = obj4 == null ? "" : String.valueOf(obj4);
                        if (!strValueOf.isEmpty() && !"0".equals(strValueOf) && !"null".equalsIgnoreCase(strValueOf)) {
                            for (int i2 = 1; i2 <= 4; i2++) {
                                N(map2.get("equipment_" + i2), strValueOf, linkedHashMap);
                                N(map2.get("equipment_id_" + i2), strValueOf, linkedHashMap);
                                N(map2.get("equip_id_" + i2), strValueOf, linkedHashMap);
                            }
                            N(map2.get("mount_id"), strValueOf, linkedHashMap);
                            N(map2.get("horse_id"), strValueOf, linkedHashMap);
                        }
                    }
                }
            }
        }
    }

    public static String O0(String str, String str2, Map map) {
        Object obj = map.get(str);
        return obj != null ? obj.toString() : str2;
    }

    public static int P0(String str, Map map) {
        if (map == null) {
            return 0;
        }
        Object obj = map.get(str);
        if (obj == null) {
            obj = map.get(E0(str));
        }
        if (obj == null && str != null && str.length() == 6) {
            obj = map.get(str.concat("01"));
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static LinkedHashMap Q(ArrayList arrayList) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("system", 0);
        linkedHashMap.put("friend", 0);
        linkedHashMap.put("gift", 0);
        linkedHashMap.put("event", 0);
        linkedHashMap.put("pay", 0);
        for (Object obj : arrayList) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                String strY = Y(String.valueOf(map.get("email_type")), String.valueOf(map.get("mail_type")));
                if ("normalUser".equals(strY) || "friendApply".equals(strY)) {
                    strY = "friend";
                } else if ("normalSystem".equals(strY)) {
                    strY = "system";
                }
                if (linkedHashMap.containsKey(strY)) {
                    linkedHashMap.put(strY, Integer.valueOf(((Integer) linkedHashMap.get(strY)).intValue() + 1));
                }
            }
        }
        return linkedHashMap;
    }

    public static Object R(Object obj) {
        if (obj instanceof JSONObject) {
            HashMap map = new HashMap();
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    map.put(next, R(jSONObject.get(next)));
                } catch (JSONException unused) {
                }
            }
            return map;
        }
        if (!(obj instanceof JSONArray)) {
            return obj;
        }
        JSONArray jSONArray = (JSONArray) obj;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                arrayList.add(R(jSONArray.get(i2)));
            } catch (JSONException unused2) {
            }
        }
        return arrayList;
    }

    public static String R0(Object obj) {
        if (!(obj instanceof Map)) {
            return "";
        }
        Map map = (Map) obj;
        Object obj2 = map.get("pk_id");
        if (obj2 == null) {
            obj2 = map.get("id");
        }
        if (obj2 == null || "null".equals(obj2)) {
            return "";
        }
        String strValueOf = String.valueOf(obj2);
        return (strValueOf.isEmpty() || "0".equals(strValueOf)) ? "" : strValueOf;
    }

    public static List S(Object obj, List list) {
        if (list == null || list.isEmpty()) {
            return list;
        }
        LinkedHashMap linkedHashMapF = F(obj);
        if (linkedHashMapF.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj2 : list) {
            String strR0 = R0(obj2);
            if (strR0.isEmpty() || !linkedHashMapF.containsKey(strR0)) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    public static void T(Map map) {
        if (map == null) {
            return;
        }
        for (Object obj : map.values()) {
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                Object obj2 = map2.get("add");
                if (obj2 instanceof List) {
                    String[] strArr = f734f;
                    for (int i2 = 0; i2 < 2; i2++) {
                        String str = strArr[i2];
                        Object obj3 = map2.get(str);
                        if (obj3 instanceof List) {
                            List list = (List) obj3;
                            if (!list.isEmpty()) {
                                List listS = S(obj2, new ArrayList(list));
                                if (listS.size() != list.size()) {
                                    map2.put(str, listS);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static boolean T0(Map map, a7 a7Var, String str) {
        Map mapB;
        return (str == null || str.isEmpty() || ((mapB = a7Var.b(str)) != null && !com.sgscq.vpn.handler.d0.R(map, mapB))) ? false : true;
    }

    public static String U(String str) {
        if (str == null) {
            return "";
        }
        if (!str.startsWith("105") || str.length() < 8) {
            return str.length() >= 6 ? str.substring(0, 6) : str;
        }
        return str.substring(0, 8);
    }

    public static boolean U0(c0 c0Var) {
        return !(c0Var.f233a != 3);
    }

    public static int V(String str) {
        if (str != null && str.length() >= 6) {
            try {
                return (!str.startsWith("105") || str.length() < 8) ? Integer.parseInt(str.substring(3, 6)) : Integer.parseInt(str.substring(5, 8));
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static boolean V0(String str, Map map) {
        Object orDefault = map.getOrDefault("claimed_" + str, "0");
        if (((orDefault instanceof Number) && ((Number) orDefault).intValue() == 1) || "1".equals(String.valueOf(orDefault)) || Boolean.TRUE.equals(orDefault)) {
            return false;
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("rewarded");
            if (((obj2 instanceof Number) && ((Number) obj2).intValue() == 1) || "1".equals(String.valueOf(obj2))) {
                return false;
            }
        }
        return true;
    }

    public static int W0(int i2, String str, Map map) {
        if (map == null) {
            return i2;
        }
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj == null) {
            return i2;
        }
        try {
            return Integer.parseInt(String.valueOf(obj));
        } catch (Exception unused) {
            return i2;
        }
    }

    public static String X0(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return (strValueOf.isEmpty() || "null".equals(strValueOf)) ? str2 : strValueOf;
    }

    public static String Y(String... strArr) {
        for (String str : strArr) {
            if (str != null && !str.trim().isEmpty() && !"null".equals(str)) {
                return str;
            }
        }
        return "";
    }

    public static boolean Y0(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue() != 0.0d;
        }
        if (!(obj instanceof String)) {
            return false;
        }
        String strTrim = ((String) obj).trim();
        return "true".equalsIgnoreCase(strTrim) || "1".equals(strTrim);
    }

    public static String Z0(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        if (str.matches("105\\d{2}")) {
            return "105000" + str.substring(3);
        }
        if (!str.matches("5\\d{2}")) {
            return str;
        }
        try {
            return "500" + String.format("%03d", Integer.valueOf(Integer.parseInt(str.substring(1))));
        } catch (NumberFormatException unused) {
            return str;
        }
    }

    public static boolean a(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        Object obj2 = map.get("skill_id");
        if (obj2 == null) {
            obj2 = map.get("id");
        }
        if (obj2 == null) {
            obj2 = map.get("skill_code");
        }
        String strValueOf = String.valueOf(obj2);
        return strValueOf.length() == 6 && strValueOf.startsWith("39100") && strValueOf.charAt(5) >= '1' && strValueOf.charAt(5) <= '8';
    }

    public static LinkedHashMap a0(String str, Map map) {
        LinkedHashMap linkedHashMapA0 = A0(str, map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("del_list", linkedHashMapA0.getOrDefault("del_list", new ArrayList()));
        linkedHashMap.put("update_list", linkedHashMapA0.getOrDefault("update_list", new ArrayList()));
        return linkedHashMap;
    }

    public static String b0(Map map) {
        Object obj = map.get("General");
        if (!(obj instanceof Map)) {
            return "[]";
        }
        Object obj2 = ((Map) obj).get("add");
        if (!(obj2 instanceof List)) {
            return "[]";
        }
        try {
            return new JSONArray((Collection) obj2).toString();
        } catch (Exception unused) {
            return "[]";
        }
    }

    public static void c(Object obj, ArrayList arrayList) {
        int iL2 = w1.l2(String.valueOf(obj), 0);
        if (iL2 < 1 || iL2 > 4 || arrayList.contains(Integer.valueOf(iL2))) {
            return;
        }
        arrayList.add(Integer.valueOf(iL2));
    }

    public static String c0(w1 w1Var, String str) {
        Object obj;
        w1Var.I1();
        Object obj2 = w1Var.I.get(str);
        String str2 = "";
        if ((obj2 instanceof Map) && (obj = ((Map) obj2).get("bg_image")) != null) {
            String strTrim = String.valueOf(obj).trim();
            if (!"null".equals(strTrim)) {
                str2 = strTrim;
            }
        }
        if (!str2.isEmpty()) {
            return str2;
        }
        if (str != null && str.startsWith("105")) {
            return "930001";
        }
        try {
            return String.format("920%03d", Integer.valueOf(Math.max(1, Math.min(10, Integer.parseInt(str.substring(0, 3)) - 500))));
        } catch (Exception unused) {
            return "920001";
        }
    }

    public static boolean d(int i2, String str, String str2, Map map) {
        if (!map.containsKey(str.concat("_start_day"))) {
            return false;
        }
        int iK0 = K0(31, str.concat("_total_days"), map);
        int iK1 = K0(0, str.concat("_claimed_days"), map);
        if (iK1 >= iK0) {
            return false;
        }
        String strB = c7.b();
        if (strB.equals(O0(str.concat("_last_claim_day"), "", map))) {
            return false;
        }
        Object obj = map.get("email_list");
        if (!(obj instanceof List)) {
            obj = map.get("mail_list");
        }
        List arrayList = obj instanceof List ? (List) obj : new ArrayList();
        int iK2 = K0(i2, str.concat("_daily_gold"), map);
        int i3 = iK1 + 1;
        long jF = c7.f();
        long j2 = jF / 1000;
        String str3 = str + "_" + i3 + "_" + jF;
        LinkedHashMap linkedHashMapZ0 = p5.z0("item_id", "600034", "id", "600034", "item_num", Integer.valueOf(iK2), "num", Integer.valueOf(iK2), "item_type", 16, "type", 5);
        int i4 = (int) j2;
        Integer numValueOf = Integer.valueOf(i4);
        Integer numValueOf2 = Integer.valueOf(i4);
        Integer numValueOf3 = Integer.valueOf(i4);
        Integer numValueOf4 = Integer.valueOf(i4 + 2592000);
        Boolean bool = Boolean.FALSE;
        arrayList.add(0, p5.z0("mail_id", str3, "email_id", str3, "id", str3, "pk_id", str3, "mail_type", "gift", "email_type", "gift", "origin_mail_type", "pay", "title", str2.concat("每日元宝"), "email_title", str2.concat("每日元宝"), "content", str2 + "第 " + i3 + " 天奖励 " + iK2 + " 元宝，请领取附件。", "email_content", str2 + "第 " + i3 + " 天奖励 " + iK2 + " 元宝，请领取附件。", "sender", "系统", "email_sender", "系统", "email_sender_nickname", "系统", "from_user", "系统", "email_time_offset", 0, "send_time", numValueOf, "create_time", numValueOf2, "time", numValueOf3, "expire_time", numValueOf4, "is_read", bool, "is_accepted", bool, "is_attach_get", "0", "status", 0, "reward_list", Collections.singletonList(linkedHashMapZ0), "reward", Collections.singletonList(linkedHashMapZ0), "rewards", Collections.singletonList(linkedHashMapZ0)));
        map.put("email_list", arrayList);
        map.put("mail_list", arrayList);
        map.put(str.concat("_last_claim_day"), strB);
        map.put(str.concat("_claimed_days"), Integer.valueOf(i3));
        return true;
    }

    public static String d0(String str) {
        if (!str.startsWith("105") || str.length() < 5) {
            try {
                int i2 = Integer.parseInt(str) - 500;
                if (i2 <= 0) {
                    return str;
                }
                return "5000" + String.format("%02d", Integer.valueOf(i2)) + "01";
            } catch (NumberFormatException unused) {
                return str;
            }
        }
        try {
            return "105" + ("5000" + String.format("%02d", Integer.valueOf(Integer.parseInt(str.substring(3, 5)))) + "01").substring(1);
        } catch (NumberFormatException unused2) {
            return str;
        }
    }

    public static boolean e(Map map) {
        return d(300, "super_monthly_card", "超级月卡", map) | d(100, "monthly_card", "月卡", map) | false;
    }

    public static void f(ArrayList arrayList, List list) {
        for (Object obj : list) {
            String strR0 = R0(obj);
            if (!strR0.isEmpty()) {
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList.size()) {
                        i2 = -1;
                        break;
                    } else if (strR0.equals(R0(arrayList.get(i2)))) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 >= 0) {
                    arrayList.set(i2, obj);
                }
            }
            arrayList.add(obj);
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:229:0x05b8  */
    /* JADX WARN: Code duplicated, block: B:230:0x05bd  */
    /* JADX WARN: Code duplicated, block: B:269:0x06c1  */
    /* JADX WARN: Code duplicated, block: B:270:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:273:0x06d7  */
    /* JADX WARN: Code duplicated, block: B:281:0x06f7  */
    /* JADX WARN: Code duplicated, block: B:284:0x0700  */
    /* JADX WARN: Code duplicated, block: B:285:0x0709  */
    /* JADX WARN: Code duplicated, block: B:288:0x0713  */
    /* JADX WARN: Code duplicated, block: B:290:0x072a  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:369:0x072d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:382:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:384:0x01ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:388:0x0295 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:389:0x02a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:79:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:83:0x0204  */
    /* JADX WARN: Code duplicated, block: B:96:0x0287  */
    /* JADX WARN: Code duplicated, block: B:99:0x02a0 A[LOOP:18: B:94:0x0281->B:99:0x02a0, LOOP_END] */
    public static boolean g(w1 w1Var, Map map) {
        boolean z;
        Map map2;
        w1 w1Var2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        Map map3;
        boolean zT2;
        Map map4;
        String str7;
        boolean zQ2;
        ArrayList arrayList;
        Object obj;
        Object obj2;
        List list;
        List list2;
        String strT0;
        Object obj3;
        Iterator it;
        String str8;
        boolean z2;
        Map map5;
        String str9;
        boolean z3;
        boolean z4;
        boolean z5;
        Iterator it2;
        HashMap map6;
        HashMap map7;
        String str10;
        boolean zQ3;
        boolean z6;
        boolean z7;
        List list3;
        String str11;
        Iterator it3;
        String str12;
        w1 w1Var3;
        String str13;
        String strValueOf;
        boolean z8;
        ArrayList<Map> arrayList2;
        String str14;
        String strValueOf2;
        String str15;
        String str16;
        boolean z9;
        String str17;
        String str18;
        String str19;
        boolean z10;
        boolean z11;
        String[] strArr = {"freshman_step", "server_step", "guide_step"};
        boolean z12 = false;
        for (int i2 = 0; i2 < 3; i2++) {
            String strValueOf3 = String.valueOf(map.get(strArr[i2]));
            if ("70000".equals(strValueOf3)) {
                z12 = true;
            }
            try {
                if (Integer.parseInt(strValueOf3) > Integer.parseInt("80000")) {
                    z12 = false;
                    break;
                }
            } catch (NumberFormatException unused) {
            }
        }
        String str20 = "";
        if (z12) {
            Iterator it4 = w1.f0("Equipment", map).iterator();
            while (true) {
                if (!it4.hasNext()) {
                    z11 = false;
                    break;
                }
                Map map8 = (Map) it4.next();
                if (w1Var.y1(X0("equipment_id", X0("equip_id", X0("id", "", map8), map8), map8))) {
                    String strX0 = X0("general_pk_id", "", map8);
                    if (Y0(map8.get("is_wear")) || (!strX0.isEmpty() && !"0".equals(strX0) && !"null".equalsIgnoreCase(strX0))) {
                        z11 = true;
                        break;
                    }
                }
            }
            if (z11) {
                map.put("freshman_step", "80000");
                map.put("server_step", "80000");
                map.put("guide_step", "80000");
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        boolean z13 = z | false;
        List listF0 = w1.f0("General", map);
        String str21 = "1";
        String str22 = "gSkill";
        String str23 = "general_skills";
        String str24 = "0";
        String str25 = "general_id";
        String str26 = "null";
        String str27 = "upd";
        String str28 = "del";
        String str29 = "add";
        String str30 = "id";
        String str31 = "Skill";
        String str32 = "skill_id";
        if (listF0.isEmpty()) {
            zT2 = false;
            str = "del";
            str2 = "add";
            str3 = "general_id";
            str4 = "upd";
            str5 = "Skill";
            str6 = "";
            w1Var2 = w1Var;
            map3 = map;
        } else {
            Map map9 = (Map) map.get("Skill");
            if (map9 == null) {
                map2 = map9;
                HashMap map10 = new HashMap();
                map10.put("del", new ArrayList());
                map10.put("add", new ArrayList());
                map10.put("upd", new ArrayList());
                map.put("Skill", map10);
                map2 = map10;
            }
            map2 = map9;
            List listO = (List) map2.get("add");
            if (listO == null) {
                listO = c.a.o(map2, "add");
            }
            Iterator it5 = listF0.iterator();
            boolean zQ4 = false;
            while (it5.hasNext()) {
                it5 = it5;
                Map map11 = (Map) it5.next();
                str28 = str28;
                String strValueOf4 = String.valueOf(map11.getOrDefault("pk_id", str20));
                str29 = str29;
                String strValueOf5 = String.valueOf(map11.getOrDefault(str25, str20));
                str27 = str27;
                str25 = str25;
                if (strValueOf4.isEmpty()) {
                    str31 = str31;
                } else {
                    str31 = str31;
                    String strValueOf6 = String.valueOf(map11.getOrDefault("general_naturalskill_id", strValueOf4));
                    Iterator it6 = listO.iterator();
                    while (true) {
                        if (it6.hasNext()) {
                            map4 = (Map) it6.next();
                            if (map4 != null) {
                                str7 = str20;
                                String strValueOf7 = String.valueOf(map4.getOrDefault("pk_id", str20));
                                if ((!strValueOf4.equals(strValueOf7) && !strValueOf6.equals(strValueOf7)) || (!w1.z1(map4.get("is_natural")) && !strValueOf4.equals(strValueOf7))) {
                                    str20 = str7;
                                }
                            }
                        }
                        if (map4 != null) {
                            zQ2 = w1.q2("1", "position", map4) | w1.q2(strValueOf4, "general_pk_id", map4) | false | w1.q2("1", "pos", map4) | w1.q2("1", "skill_position", map4) | w1.q2(Boolean.TRUE, "is_natural", map4) | zQ4;
                            arrayList = new ArrayList();
                            arrayList.add(map4);
                            obj = map11.get("gSkill");
                            if (obj instanceof List) {
                                list2 = (List) obj;
                                if (list2.isEmpty() || !list2.contains(map4)) {
                                    map11.put("gSkill", arrayList);
                                    zQ2 = true;
                                }
                            } else {
                                map11.put("gSkill", arrayList);
                                zQ2 = true;
                            }
                            obj2 = map11.get("general_skills");
                            if (obj2 instanceof List) {
                                list = (List) obj2;
                                if (list.isEmpty() || !list.contains(map4)) {
                                    map11.put("general_skills", arrayList);
                                    zQ2 = true;
                                }
                            } else {
                                map11.put("general_skills", arrayList);
                                zQ2 = true;
                            }
                            zQ4 = zQ2 | w1.q2(strValueOf4, "general_naturalskill_id", map11);
                            str20 = str7;
                        } else {
                            strT0 = w1Var.T0(strValueOf5);
                            boolean z14 = zQ4;
                            obj3 = map11.get("gSkill");
                            if (((obj3 instanceof List) || ((List) obj3).isEmpty()) && !strT0.isEmpty()) {
                                HashMap mapP = c.a.p("pk_id", strValueOf4, "general_pk_id", strValueOf4);
                                mapP.put(str32, strT0);
                                mapP.put(str30, strT0);
                                mapP.put("skill_code", strT0);
                                mapP.put("pos", "1");
                                mapP.put("position", "1");
                                mapP.put("skill_position", "1");
                                mapP.put("is_natural", Boolean.TRUE);
                                mapP.put("level", "1");
                                mapP.put("card_type", "4");
                                ArrayList arrayList3 = new ArrayList();
                                arrayList3.add(mapP);
                                map11.put("gSkill", arrayList3);
                                map11.put("general_skills", arrayList3);
                                zQ4 = true;
                            } else {
                                zQ4 = z14;
                            }
                            it = listO.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    str8 = str7;
                                    z2 = false;
                                    break;
                                }
                                map5 = (Map) it.next();
                                str8 = str7;
                                if (c.a.B(map5, "pk_id", str8, strValueOf4)) {
                                    zQ4 |= w1.q2(c.a.j(map5, "position", "1", "pos"), "skill_position", map5);
                                    z2 = true;
                                    break;
                                }
                                str7 = str8;
                            }
                            if (z2 && !strT0.isEmpty()) {
                                HashMap mapZ1 = w1Var.Z1(strValueOf5);
                                mapZ1.put("pk_id", strValueOf4);
                                mapZ1.put("general_pk_id", strValueOf4);
                                listO.add(mapZ1);
                                zQ4 = true;
                            }
                            str20 = str8;
                        }
                    }
                }
                str7 = str20;
                map4 = null;
                if (map4 != null) {
                    zQ2 = w1.q2("1", "position", map4) | w1.q2(strValueOf4, "general_pk_id", map4) | false | w1.q2("1", "pos", map4) | w1.q2("1", "skill_position", map4) | w1.q2(Boolean.TRUE, "is_natural", map4) | zQ4;
                    arrayList = new ArrayList();
                    arrayList.add(map4);
                    obj = map11.get("gSkill");
                    if (obj instanceof List) {
                        list2 = (List) obj;
                        if (list2.isEmpty()) {
                            map11.put("gSkill", arrayList);
                            zQ2 = true;
                        } else {
                            map11.put("gSkill", arrayList);
                            zQ2 = true;
                        }
                    } else {
                        map11.put("gSkill", arrayList);
                        zQ2 = true;
                    }
                    obj2 = map11.get("general_skills");
                    if (obj2 instanceof List) {
                        list = (List) obj2;
                        if (list.isEmpty()) {
                            map11.put("general_skills", arrayList);
                            zQ2 = true;
                        } else {
                            map11.put("general_skills", arrayList);
                            zQ2 = true;
                        }
                    } else {
                        map11.put("general_skills", arrayList);
                        zQ2 = true;
                    }
                    zQ4 = zQ2 | w1.q2(strValueOf4, "general_naturalskill_id", map11);
                    str20 = str7;
                } else {
                    strT0 = w1Var.T0(strValueOf5);
                    boolean z15 = zQ4;
                    obj3 = map11.get("gSkill");
                    if (obj3 instanceof List) {
                        HashMap mapP2 = c.a.p("pk_id", strValueOf4, "general_pk_id", strValueOf4);
                        mapP2.put(str32, strT0);
                        mapP2.put(str30, strT0);
                        mapP2.put("skill_code", strT0);
                        mapP2.put("pos", "1");
                        mapP2.put("position", "1");
                        mapP2.put("skill_position", "1");
                        mapP2.put("is_natural", Boolean.TRUE);
                        mapP2.put("level", "1");
                        mapP2.put("card_type", "4");
                        ArrayList arrayList4 = new ArrayList();
                        arrayList4.add(mapP2);
                        map11.put("gSkill", arrayList4);
                        map11.put("general_skills", arrayList4);
                        zQ4 = true;
                    } else {
                        HashMap mapP3 = c.a.p("pk_id", strValueOf4, "general_pk_id", strValueOf4);
                        mapP3.put(str32, strT0);
                        mapP3.put(str30, strT0);
                        mapP3.put("skill_code", strT0);
                        mapP3.put("pos", "1");
                        mapP3.put("position", "1");
                        mapP3.put("skill_position", "1");
                        mapP3.put("is_natural", Boolean.TRUE);
                        mapP3.put("level", "1");
                        mapP3.put("card_type", "4");
                        ArrayList arrayList5 = new ArrayList();
                        arrayList5.add(mapP3);
                        map11.put("gSkill", arrayList5);
                        map11.put("general_skills", arrayList5);
                        zQ4 = true;
                    }
                    it = listO.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            str8 = str7;
                            z2 = false;
                            break;
                        }
                        map5 = (Map) it.next();
                        str8 = str7;
                        if (c.a.B(map5, "pk_id", str8, strValueOf4)) {
                            zQ4 |= w1.q2(c.a.j(map5, "position", "1", "pos"), "skill_position", map5);
                            z2 = true;
                            break;
                        }
                        str7 = str8;
                    }
                    if (z2) {
                    }
                    str20 = str8;
                }
            }
            w1Var2 = w1Var;
            str = str28;
            str2 = str29;
            str3 = str25;
            str4 = str27;
            str5 = str31;
            str6 = str20;
            map3 = map;
            zT2 = zQ4;
        }
        for (Map map12 : w1.f0(r19, map3)) {
            zT2 |= w1Var2.t2(String.valueOf(map12.getOrDefault("pk_id", str6)), map12);
        }
        boolean z16 = z13 | zT2;
        Iterator it7 = w1.f0(r19, map3).iterator();
        boolean z17 = false;
        while (it7.hasNext()) {
            Map map13 = (Map) it7.next();
            boolean zB0 = z17 | w1Var2.b0(map13);
            String[] strArr2 = {str22, str23};
            int i3 = 0;
            boolean z18 = false;
            Iterator it8 = it7;
            while (i3 < 2) {
                String str33 = strArr2[i3];
                String[] strArr3 = strArr2;
                Object obj4 = map13.get(str33);
                if (obj4 instanceof List) {
                    List list4 = (List) obj4;
                    Iterator it9 = list4.iterator();
                    while (true) {
                        if (!it9.hasNext()) {
                            str19 = str21;
                            z10 = false;
                            break;
                        }
                        str19 = str21;
                        Object next = it9.next();
                        Iterator it10 = it9;
                        if ((next instanceof Map) && w1.x1((Map) next)) {
                            z10 = true;
                            break;
                        }
                        str21 = str19;
                        it9 = it10;
                    }
                    if (z10) {
                        ArrayList arrayList6 = new ArrayList();
                        Iterator it11 = list4.iterator();
                        while (it11.hasNext()) {
                            Object next2 = it11.next();
                            Iterator it12 = it11;
                            if (!(next2 instanceof Map) || !w1.x1((Map) next2)) {
                                arrayList6.add(next2);
                            }
                            it11 = it12;
                        }
                        map13.put(str33, arrayList6);
                        z18 = true;
                    }
                } else {
                    str19 = str21;
                }
                i3++;
                strArr2 = strArr3;
                str21 = str19;
            }
            String str34 = str21;
            boolean z19 = zB0 | z18;
            String strC2 = w1.C2(map13.get("pk_id"));
            if (strC2.isEmpty()) {
                strC2 = w1.C2(map13.get("general_pk_id"));
            }
            if (strC2.isEmpty()) {
                z9 = false;
                str16 = str23;
                str15 = str5;
            } else {
                HashMap map14 = new HashMap();
                String str35 = str5;
                for (Iterator it13 = w1.f0(str35, map3).iterator(); it13.hasNext(); it13 = it13) {
                    Map map15 = (Map) it13.next();
                    map14.put(w1.C2(map15.get("pk_id")), w1.C2(map15.get("general_pk_id")));
                }
                String[] strArr4 = {str22, str23};
                int i4 = 2;
                boolean z20 = false;
                int i5 = 0;
                while (i5 < i4) {
                    String str36 = strArr4[i5];
                    String[] strArr5 = strArr4;
                    Object obj5 = map13.get(str36);
                    String str37 = str23;
                    if (obj5 instanceof List) {
                        ArrayList arrayList7 = new ArrayList();
                        Iterator it14 = ((List) obj5).iterator();
                        boolean z21 = false;
                        while (it14.hasNext()) {
                            String str38 = str35;
                            Object next3 = it14.next();
                            Iterator it15 = it14;
                            if (!(next3 instanceof Map) || (str18 = (String) map14.get(w1.C2(((Map) next3).get("pk_id")))) == null || strC2.equals(str18)) {
                                arrayList7.add(next3);
                            } else {
                                z21 = true;
                            }
                            str35 = str38;
                            it14 = it15;
                        }
                        str17 = str35;
                        if (z21) {
                            map13.put(str36, arrayList7);
                            z20 = true;
                        }
                    } else {
                        str17 = str35;
                    }
                    i5++;
                    i4 = 2;
                    strArr4 = strArr5;
                    str23 = str37;
                    str35 = str17;
                }
                str15 = str35;
                str16 = str23;
                z9 = z20;
            }
            z17 = z19 | z9;
            w1Var2 = w1Var;
            str22 = str22;
            it7 = it8;
            str21 = str34;
            str23 = str16;
            str5 = str15;
        }
        String str39 = str21;
        String str40 = str5;
        boolean zX2 = w1.x2(map) | z17 | z16;
        List listF1 = w1.f0("TeamGeneral", map3);
        if (listF1.isEmpty()) {
            z4 = false;
            z3 = zX2;
            str9 = str26;
        } else {
            List<Map> listF2 = w1.f0("General", map3);
            HashMap map16 = new HashMap();
            HashMap map17 = new HashMap();
            for (Map map18 : listF2) {
                String strValueOf8 = String.valueOf(map18.getOrDefault("pk_id", str6));
                if (strValueOf8.isEmpty()) {
                    str11 = str26;
                } else {
                    str11 = str26;
                    if (!str11.equals(strValueOf8)) {
                        map16.put(strValueOf8, map18);
                    }
                }
                String str41 = str3;
                String strValueOf9 = String.valueOf(map18.getOrDefault(str41, str6));
                if (!strValueOf9.isEmpty() && !str11.equals(strValueOf9)) {
                    ((List) map17.computeIfAbsent(strValueOf9, new n.a(6))).add(map18);
                }
                str3 = str41;
                str26 = str11;
            }
            str9 = str26;
            String str42 = str3;
            Iterator it16 = listF1.iterator();
            boolean z22 = false;
            while (it16.hasNext()) {
                Map map19 = (Map) it16.next();
                String strJ = c.a.j(map19, "pk_id", str6, "general_pk_id");
                if (strJ.isEmpty() || str9.equals(strJ)) {
                    z5 = zX2;
                    it2 = it16;
                    map6 = map16;
                    map7 = map17;
                    str10 = str39;
                    it2.remove();
                    zQ3 = true;
                    z22 = zQ3;
                    str30 = str30;
                    str39 = str10;
                    map16 = map6;
                    map17 = map7;
                    zX2 = z5;
                    it16 = it2;
                } else {
                    Map map20 = (Map) map16.get(strJ);
                    if (map20 != null || (list3 = (List) map17.get(String.valueOf(map19.getOrDefault(str42, str6)))) == null) {
                        map6 = map16;
                        map7 = map17;
                        z6 = z22;
                        z22 = true;
                    } else {
                        map6 = map16;
                        map7 = map17;
                        z6 = true;
                        if (list3.size() == 1) {
                            map20 = (Map) list3.get(0);
                            strJ = String.valueOf(map20.getOrDefault("pk_id", strJ));
                            z22 = true;
                        } else {
                            z6 = z22;
                            z22 = true;
                        }
                    }
                    if (map20 == null) {
                        it16.remove();
                        map16 = map6;
                        map17 = map7;
                    } else {
                        String strValueOf10 = String.valueOf(map20.getOrDefault(str42, strJ));
                        str10 = str39;
                        String strJ2 = c.a.j(map19, "position", str10, "general_position");
                        if (strJ2.isEmpty() || str9.equalsIgnoreCase(strJ2)) {
                            z5 = zX2;
                            it2 = it16;
                        } else {
                            z5 = zX2;
                            it2 = it16;
                            try {
                                z7 = ((int) Double.parseDouble(strJ2)) > 0;
                            } catch (Exception unused2) {
                            }
                            if (z7) {
                                str30 = str30;
                                zQ3 = w1.q2(strJ, "pk_id", map19) | z6 | w1.q2(strJ, str30, map19) | w1.q2(strJ, "general_pk_id", map19) | w1.q2(strValueOf10, str42, map19) | w1.q2(str10, "team_id", map19) | w1.q2(strJ2, "team_position", map19) | w1.q2(strJ2, "general_position", map19) | w1.q2(strJ2, "position", map19) | w1Var.F2(strJ, map3);
                            } else {
                                it2.remove();
                                zQ3 = true;
                            }
                            z22 = zQ3;
                            str30 = str30;
                            str39 = str10;
                            map16 = map6;
                            map17 = map7;
                            zX2 = z5;
                            it16 = it2;
                        }
                        if (z7) {
                            it2.remove();
                            zQ3 = true;
                        } else {
                            str30 = str30;
                            zQ3 = w1.q2(strJ, "pk_id", map19) | z6 | w1.q2(strJ, str30, map19) | w1.q2(strJ, "general_pk_id", map19) | w1.q2(strValueOf10, str42, map19) | w1.q2(str10, "team_id", map19) | w1.q2(strJ2, "team_position", map19) | w1.q2(strJ2, "general_position", map19) | w1.q2(strJ2, "position", map19) | w1Var.F2(strJ, map3);
                        }
                        z22 = zQ3;
                        str30 = str30;
                        str39 = str10;
                        map16 = map6;
                        map17 = map7;
                        zX2 = z5;
                        it16 = it2;
                    }
                }
            }
            z3 = zX2;
            if (z22) {
                w1.H2(map);
            }
            z4 = z22;
        }
        boolean z23 = z3 | z4;
        boolean z24 = false;
        for (Map map21 : w1.f0("MeridianTop", map3)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map21);
            com.sgscq.vpn.handler.u0.p(w1Var, map21);
            if (!linkedHashMap.equals(map21)) {
                z24 = true;
            }
        }
        boolean z25 = z23 | z24;
        w1 w1VarA1 = w1.a1(null);
        List<Map> listF3 = w1.f0(str40, map3);
        ArrayList arrayList8 = new ArrayList();
        Iterator it17 = w1.f0("MeridianTop", map3).iterator();
        boolean z26 = false;
        while (it17.hasNext()) {
            Map map22 = (Map) it17.next();
            String strJ3 = c.a.j(map22, "user_general_id", str6, "general_pk_id");
            if (strJ3.isEmpty()) {
                it3 = it17;
                str12 = str24;
            } else {
                str12 = str24;
                if (str12.equals(strJ3) || str9.equalsIgnoreCase(strJ3)) {
                    it3 = it17;
                } else {
                    it3 = it17;
                    if (com.sgscq.vpn.handler.u0.r(map22.get("top_level"), 0) > 0) {
                        int iD = com.sgscq.vpn.handler.u0.d(map22);
                        int i6 = 1;
                        while (i6 <= 8) {
                            try {
                                Map mapJ1 = w1VarA1.j1(i6);
                                if (mapJ1 != null) {
                                    w1Var3 = w1VarA1;
                                    str13 = str32;
                                    try {
                                        strValueOf = String.valueOf(mapJ1.getOrDefault(str13, str6));
                                    } catch (IllegalStateException unused3) {
                                        strValueOf = str6;
                                    }
                                    if (strValueOf.isEmpty()) {
                                        z8 = z26;
                                        str14 = str9;
                                    } else {
                                        z8 = z26;
                                        arrayList2 = new ArrayList();
                                        for (Map map23 : listF3) {
                                            String str43 = str9;
                                            if (!c.a.B(map23, "general_pk_id", str6, strJ3) && c.a.B(map23, str13, str6, strValueOf)) {
                                                arrayList2.add(map23);
                                            }
                                            str9 = str43;
                                        }
                                        str14 = str9;
                                        if (i6 <= iD) {
                                            if (!arrayList2.isEmpty()) {
                                                listF3.add(com.sgscq.vpn.handler.u0.m(strJ3, strValueOf, map3));
                                                z26 = true;
                                            }
                                            i6++;
                                            str32 = str13;
                                            w1VarA1 = w1Var3;
                                            str9 = str14;
                                        } else {
                                            for (Map map24 : arrayList2) {
                                                listF3.remove(map24);
                                                strValueOf2 = String.valueOf(map24.getOrDefault("pk_id", str6));
                                                if (!strValueOf2.isEmpty()) {
                                                    arrayList8.add(strValueOf2);
                                                }
                                                z8 = true;
                                            }
                                        }
                                    }
                                    z26 = z8;
                                    i6++;
                                    str32 = str13;
                                    w1VarA1 = w1Var3;
                                    str9 = str14;
                                } else {
                                    w1Var3 = w1VarA1;
                                    str13 = str32;
                                }
                            } catch (IllegalStateException unused4) {
                            }
                            strValueOf = str6;
                            if (strValueOf.isEmpty()) {
                                z8 = z26;
                                str14 = str9;
                            } else {
                                z8 = z26;
                                arrayList2 = new ArrayList();
                                while (r18.hasNext()) {
                                    String str44 = str9;
                                    if (!c.a.B(map23, "general_pk_id", str6, strJ3)) {
                                    }
                                    str9 = str44;
                                }
                                str14 = str9;
                                if (i6 <= iD) {
                                    if (!arrayList2.isEmpty()) {
                                        listF3.add(com.sgscq.vpn.handler.u0.m(strJ3, strValueOf, map3));
                                        z26 = true;
                                    }
                                    i6++;
                                    str32 = str13;
                                    w1VarA1 = w1Var3;
                                    str9 = str14;
                                } else {
                                    while (r9.hasNext()) {
                                        listF3.remove(map24);
                                        strValueOf2 = String.valueOf(map24.getOrDefault("pk_id", str6));
                                        if (!strValueOf2.isEmpty()) {
                                            arrayList8.add(strValueOf2);
                                        }
                                        z8 = true;
                                    }
                                }
                            }
                            z26 = z8;
                            i6++;
                            str32 = str13;
                            w1VarA1 = w1Var3;
                            str9 = str14;
                        }
                        it17 = it3;
                    }
                    str24 = str12;
                }
            }
            it17 = it3;
            str32 = str32;
            w1VarA1 = w1VarA1;
            str9 = str9;
            str24 = str12;
        }
        if (z26) {
            map3.put(str40, p5.z0(str, arrayList8, str4, new ArrayList(), str2, listF3));
        }
        return com.sgscq.vpn.handler.w.R0(map) | z25 | z26;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0031 A[PHI: r3
      0x0031: PHI (r3v2 java.lang.Object) = (r3v1 java.lang.Object), (r3v5 java.lang.Object) binds: [B:5:0x000f, B:13:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    public static ArrayList h0(Map map) {
        ArrayList arrayList = new ArrayList();
        if (map != null) {
            Object obj = map.get("TeamGeneral");
            if (obj instanceof List) {
                f(arrayList, (List) obj);
            } else if (obj instanceof Map) {
                Map map2 = (Map) obj;
                Object obj2 = map2.get("add");
                if (obj2 instanceof List) {
                    f(arrayList, (List) obj2);
                }
                obj = map2.get("upd");
                if (obj instanceof List) {
                    f(arrayList, (List) obj);
                }
            }
        }
        return arrayList;
    }

    public static LinkedHashMap i(Map map) {
        LinkedHashMap linkedHashMapQ = Q(k0(map));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("climb", p5.z0("num", 0, new Object[0]));
        linkedHashMap.put("training", p5.z0("num", 0, new Object[0]));
        linkedHashMap.put("vipstore", p5.z0("num", 0, new Object[0]));
        linkedHashMap.put("ladderstore", p5.z0("num", 0, new Object[0]));
        linkedHashMap.put("gem_discount", p5.z0("is_open", Boolean.FALSE, "discount", 100));
        linkedHashMap.put("task", A(map));
        for (Map.Entry entry : linkedHashMapQ.entrySet()) {
            linkedHashMap.put(((String) entry.getKey()) + "_email", p5.z0("num", entry.getValue(), new Object[0]));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0030 A[PHI: r2
      0x0030: PHI (r2v2 java.lang.Object) = (r2v1 java.lang.Object), (r2v5 java.lang.Object) binds: [B:6:0x000e, B:14:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    public static ArrayList i0(String str, Map map) {
        ArrayList arrayList = new ArrayList();
        if (map == null) {
            return arrayList;
        }
        Object obj = map.get(str);
        if (obj instanceof List) {
            arrayList.addAll((List) obj);
        } else if (obj instanceof Map) {
            Map map2 = (Map) obj;
            Object obj2 = map2.get("add");
            if (obj2 instanceof List) {
                arrayList.addAll((List) obj2);
            }
            obj = map2.get("upd");
            if (obj instanceof List) {
                arrayList.addAll((List) obj);
            }
        }
        return arrayList;
    }

    public static String k(Object obj) {
        if (!(obj instanceof List)) {
            int iL2 = w1.l2(String.valueOf(obj), 0);
            if (iL2 < 1 || iL2 > 4) {
                return "[]";
            }
            return "[\"" + iL2 + "\"]";
        }
        StringBuilder sb = new StringBuilder("[");
        Iterator it = ((List) obj).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int iL3 = w1.l2(String.valueOf(it.next()), 0);
            if (iL3 >= 1 && iL3 <= 4) {
                int i3 = i2 + 1;
                if (i2 > 0) {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(iL3);
                sb.append("\"");
                i2 = i3;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:111:0x028f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x0290 A[EDGE_INSN: B:112:0x0290->B:84:0x0290 BREAK  A[LOOP:1: B:69:0x0268->B:82:0x028c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:55:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:59:0x021a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x021c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0232  */
    /* JADX WARN: Code duplicated, block: B:67:0x0248  */
    /* JADX WARN: Code duplicated, block: B:71:0x026d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0273  */
    /* JADX WARN: Code duplicated, block: B:74:0x027a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x0286  */
    /* JADX WARN: Code duplicated, block: B:82:0x028c A[LOOP:1: B:69:0x0268->B:82:0x028c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:86:0x0296  */
    /* JADX WARN: Code duplicated, block: B:87:0x029b  */
    /* JADX WARN: Code duplicated, block: B:90:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:92:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:93:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:98:0x027d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static ArrayList k0(Map map) {
        Object obj;
        String str;
        String str2;
        boolean z;
        Object obj2;
        Object[] objArr;
        int i2;
        long jLongValue;
        long jG;
        Object obj3;
        ArrayList arrayList = new ArrayList();
        if (map == null) {
            return arrayList;
        }
        Object obj4 = map.get("email_list");
        if (!(obj4 instanceof List)) {
            obj4 = map.get("mail_list");
        }
        if (!(obj4 instanceof List)) {
            return arrayList;
        }
        Iterator it = ((List) obj4).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof Map) {
                Map map2 = (Map) next;
                Boolean bool = Boolean.TRUE;
                if (!bool.equals(map2.get("is_accepted")) && !c.a.B(map2, "status", "0", "1") && !c.a.B(map2, "is_attach_get", "0", "1")) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
                    Iterator it2 = it;
                    ArrayList arrayList2 = arrayList;
                    String strY = Y(String.valueOf(linkedHashMap.getOrDefault("pk_id", "")), String.valueOf(linkedHashMap.getOrDefault("mail_id", "")), String.valueOf(linkedHashMap.getOrDefault("email_id", "")), String.valueOf(linkedHashMap.getOrDefault("id", "")));
                    if (strY.isEmpty()) {
                        strY = "mail_" + Math.abs(linkedHashMap.hashCode());
                    }
                    linkedHashMap.put("pk_id", strY);
                    linkedHashMap.put("mail_id", strY);
                    linkedHashMap.put("email_id", strY);
                    linkedHashMap.put("id", strY);
                    String strY2 = Y(String.valueOf(linkedHashMap.getOrDefault("email_title", "")), String.valueOf(linkedHashMap.getOrDefault("title", "")), "系统邮件");
                    String strY3 = Y(String.valueOf(linkedHashMap.getOrDefault("email_content", "")), String.valueOf(linkedHashMap.getOrDefault("content", "")), "");
                    String strY4 = Y(String.valueOf(linkedHashMap.getOrDefault("email_sender", "")), String.valueOf(linkedHashMap.getOrDefault("sender", "")), String.valueOf(linkedHashMap.getOrDefault("from_user", "")), "系统");
                    String strY5 = Y(String.valueOf(linkedHashMap.getOrDefault("email_sender_nickname", "")), String.valueOf(linkedHashMap.getOrDefault("sender", "")), String.valueOf(linkedHashMap.getOrDefault("from_user", "")), strY4, "系统");
                    linkedHashMap.put("email_title", strY2);
                    linkedHashMap.put("title", strY2);
                    linkedHashMap.put("email_content", strY3);
                    linkedHashMap.put("content", strY3);
                    linkedHashMap.put("email_sender", strY4);
                    linkedHashMap.put("sender", strY5);
                    linkedHashMap.put("from_user", strY4);
                    linkedHashMap.put("email_sender_nickname", strY5);
                    Object obj5 = linkedHashMap.get("reward_list");
                    if (!(obj5 instanceof List)) {
                        obj5 = linkedHashMap.get("reward");
                    }
                    if (!(obj5 instanceof List)) {
                        obj5 = linkedHashMap.get("rewards");
                    }
                    boolean z2 = obj5 instanceof List;
                    if (z2) {
                        linkedHashMap.put("reward_list", obj5);
                        linkedHashMap.put("reward", obj5);
                        linkedHashMap.put("rewards", obj5);
                        linkedHashMap.put("attach_list", obj5);
                        linkedHashMap.put("attachment", obj5);
                        linkedHashMap.put("attachments", obj5);
                    }
                    int iK0 = 0;
                    if (bool.equals(linkedHashMap.get("is_accepted"))) {
                        obj = "is_attach_get";
                        str = "1";
                        str2 = "0";
                    } else {
                        str2 = "0";
                        str = "1";
                        if (str.equals(String.valueOf(linkedHashMap.getOrDefault("status", str2)))) {
                            obj = "is_attach_get";
                        } else {
                            obj = "is_attach_get";
                            if (!str.equals(String.valueOf(linkedHashMap.getOrDefault(obj, str2)))) {
                                z = false;
                            }
                            if (!z) {
                                str = str2;
                            }
                            linkedHashMap.put(obj, str);
                            obj2 = linkedHashMap.get("email_type");
                            if (((z2 || ((List) obj5).isEmpty()) ? false : true) || z) {
                                if (obj2 != null || String.valueOf(obj2).isEmpty() || String.valueOf(obj2).matches("\\d+")) {
                                }
                                if (!linkedHashMap.containsKey("send_time")) {
                                    linkedHashMap.put("send_time", linkedHashMap.getOrDefault("time", linkedHashMap.getOrDefault("create_time", 0)));
                                }
                                objArr = new Object[]{linkedHashMap.get("send_time"), linkedHashMap.get("create_time"), linkedHashMap.get("time")};
                                i2 = 0;
                                while (true) {
                                    if (i2 >= 3) {
                                        jLongValue = 0;
                                        break;
                                    }
                                    obj3 = objArr[i2];
                                    if (obj3 instanceof Number) {
                                        jLongValue = ((Number) obj3).longValue();
                                    } else if (obj3 == null) {
                                        jLongValue = 0;
                                    } else {
                                        try {
                                            jLongValue = Long.parseLong(String.valueOf(obj3));
                                        } catch (Exception unused) {
                                            jLongValue = 0;
                                        }
                                    }
                                    if (jLongValue > 0) {
                                        break;
                                    }
                                    i2++;
                                }
                                if (jLongValue <= 0) {
                                    iK0 = K0(0, "email_time_offset", linkedHashMap);
                                } else {
                                    jG = c7.g() - jLongValue;
                                    if (jG > 0) {
                                        if (jG > 2147483647L) {
                                            iK0 = Integer.MAX_VALUE;
                                        } else {
                                            iK0 = (int) jG;
                                        }
                                    }
                                }
                                linkedHashMap.put("email_time_offset", Integer.valueOf(iK0));
                                arrayList2.add(linkedHashMap);
                                arrayList = arrayList2;
                                it = it2;
                            } else {
                                linkedHashMap.put("origin_mail_type", Y(String.valueOf(linkedHashMap.getOrDefault("origin_mail_type", "")), String.valueOf(linkedHashMap.getOrDefault("email_type", ""))));
                            }
                            linkedHashMap.put("email_type", "gift");
                            linkedHashMap.put("mail_type", "gift");
                            if (!linkedHashMap.containsKey("send_time")) {
                                linkedHashMap.put("send_time", linkedHashMap.getOrDefault("time", linkedHashMap.getOrDefault("create_time", 0)));
                            }
                            objArr = new Object[]{linkedHashMap.get("send_time"), linkedHashMap.get("create_time"), linkedHashMap.get("time")};
                            i2 = 0;
                            while (true) {
                                if (i2 >= 3) {
                                    jLongValue = 0;
                                    break;
                                }
                                obj3 = objArr[i2];
                                if (obj3 instanceof Number) {
                                    jLongValue = ((Number) obj3).longValue();
                                } else if (obj3 == null) {
                                    jLongValue = 0;
                                } else {
                                    jLongValue = Long.parseLong(String.valueOf(obj3));
                                }
                                if (jLongValue > 0) {
                                    break;
                                    break;
                                }
                                i2++;
                            }
                            if (jLongValue <= 0) {
                                iK0 = K0(0, "email_time_offset", linkedHashMap);
                            } else {
                                jG = c7.g() - jLongValue;
                                if (jG > 0) {
                                    if (jG > 2147483647L) {
                                        iK0 = Integer.MAX_VALUE;
                                    } else {
                                        iK0 = (int) jG;
                                    }
                                }
                            }
                            linkedHashMap.put("email_time_offset", Integer.valueOf(iK0));
                            arrayList2.add(linkedHashMap);
                            arrayList = arrayList2;
                            it = it2;
                        }
                    }
                    z = true;
                    if (!z) {
                        str = str2;
                    }
                    linkedHashMap.put(obj, str);
                    obj2 = linkedHashMap.get("email_type");
                    if ((z2 || ((List) obj5).isEmpty()) ? false : true) {
                        if (obj2 != null) {
                            linkedHashMap.put("email_type", "gift");
                            linkedHashMap.put("mail_type", "gift");
                        } else {
                            linkedHashMap.put("email_type", "gift");
                            linkedHashMap.put("mail_type", "gift");
                        }
                    } else if (obj2 != null) {
                        linkedHashMap.put("email_type", "gift");
                        linkedHashMap.put("mail_type", "gift");
                    } else {
                        linkedHashMap.put("email_type", "gift");
                        linkedHashMap.put("mail_type", "gift");
                    }
                    if (!linkedHashMap.containsKey("send_time")) {
                        linkedHashMap.put("send_time", linkedHashMap.getOrDefault("time", linkedHashMap.getOrDefault("create_time", 0)));
                    }
                    objArr = new Object[]{linkedHashMap.get("send_time"), linkedHashMap.get("create_time"), linkedHashMap.get("time")};
                    i2 = 0;
                    while (true) {
                        if (i2 >= 3) {
                            jLongValue = 0;
                            break;
                        }
                        obj3 = objArr[i2];
                        if (obj3 instanceof Number) {
                            jLongValue = ((Number) obj3).longValue();
                        } else if (obj3 == null) {
                            jLongValue = 0;
                        } else {
                            jLongValue = Long.parseLong(String.valueOf(obj3));
                        }
                        if (jLongValue > 0) {
                            break;
                            break;
                        }
                        i2++;
                    }
                    if (jLongValue <= 0) {
                        iK0 = K0(0, "email_time_offset", linkedHashMap);
                    } else {
                        jG = c7.g() - jLongValue;
                        if (jG > 0) {
                            if (jG > 2147483647L) {
                                iK0 = Integer.MAX_VALUE;
                            } else {
                                iK0 = (int) jG;
                            }
                        }
                    }
                    linkedHashMap.put("email_time_offset", Integer.valueOf(iK0));
                    arrayList2.add(linkedHashMap);
                    arrayList = arrayList2;
                    it = it2;
                }
            }
        }
        return arrayList;
    }

    public static boolean l0(Map map) {
        if (map != null && map.containsKey("data_version")) {
            Object obj = map.get("data_version");
            if (obj instanceof Number) {
                return t0(((Number) obj).doubleValue());
            }
            if (obj instanceof String) {
                try {
                    return t0(Double.parseDouble((String) obj));
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0041  */
    /* JADX WARN: Code duplicated, block: B:20:0x0049 A[PHI: r5
      0x0049: PHI (r5v7 int) = (r5v1 int), (r5v8 int) binds: [B:18:0x0046, B:14:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    public static int m0(String str) {
        int iL2;
        String strSubstring;
        int i2;
        HashMap mapX0 = w1.a1(null).x0(str);
        if (mapX0 == null || !Boolean.TRUE.equals(mapX0.get("hidden")) || (iL2 = w1.l2(String.valueOf(mapX0.get("idx")), 0)) <= 0) {
            return 0;
        }
        if (str == null || !str.startsWith("105")) {
            if (str != null) {
                i2 = 3;
                if (str.length() < 3) {
                    strSubstring = str.substring(0, i2);
                }
            }
            strSubstring = "";
        } else {
            i2 = 5;
            if (str.length() >= 5) {
                strSubstring = str.substring(0, i2);
            } else {
                if (str != null) {
                    i2 = 3;
                    if (str.length() < 3) {
                        strSubstring = str.substring(0, i2);
                    }
                }
                strSubstring = "";
            }
        }
        List listO0 = w1.a1(null).o0(strSubstring);
        if (listO0 != null && !listO0.isEmpty()) {
            List listM0 = w1.a1(null).m0(strSubstring, strSubstring);
            int i3 = 0;
            for (int i4 = 0; i4 < listM0.size(); i4++) {
                HashMap mapX1 = w1.a1(null).x0((String) listM0.get(i4));
                if (mapX1 != null && Boolean.TRUE.equals(mapX1.get("hidden"))) {
                    if (i4 + 1 == iL2 && i3 < listO0.size()) {
                        return w1.l2(String.valueOf(((List) listO0.get(i3)).get(0)), 0);
                    }
                    i3++;
                }
            }
        }
        return 0;
    }

    public static String n(Map map) {
        Object obj = map.get("General");
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("add");
            if (obj2 instanceof List) {
                List list = (List) obj2;
                if (!list.isEmpty()) {
                    y1 y1Var = new y1();
                    int i2 = 0;
                    while (i2 < list.size()) {
                        Map map2 = (Map) list.get(i2);
                        i2++;
                        String strValueOf = String.valueOf(map2.getOrDefault("pk_id", String.valueOf(i2)));
                        try {
                            y1Var.i(strValueOf, new JSONObject(map2).toString());
                        } catch (Exception unused) {
                            y1Var.i(strValueOf, "{}");
                        }
                    }
                    return y1Var.b();
                }
            }
        }
        return "{}";
    }

    public static boolean o0(String str, Map map) {
        if (map == null || str.isEmpty()) {
            return false;
        }
        return c.a.B(map, "_afdian_owner_token", "", str);
    }

    public static boolean p0(String str, List list) {
        if (str == null || !str.startsWith("105") || list.size() <= 5) {
            return false;
        }
        return "hidden".equals(String.valueOf(list.get(5)));
    }

    public static boolean q0(Map map) {
        return l0(map) && M0(map) == 7;
    }

    public static boolean r0(HashMap map) {
        if (map == null) {
            return false;
        }
        Object obj = map.get("hidden");
        return Boolean.TRUE.equals(obj) || "true".equalsIgnoreCase(String.valueOf(obj));
    }

    public static boolean s0(Map map) {
        int iW0 = W0(1, "user_level", map);
        int iW1 = W0(0, "user_experience", map);
        int iW2 = W0(0, "user_position_step", map);
        String strX0 = X0("user_map_step", "", map);
        return iW0 >= 100 && iW1 >= 999999999 && iW2 == 999 && (strX0.startsWith("500") || strX0.startsWith("5"));
    }

    public static boolean t0(double d2) {
        return !Double.isNaN(d2) && !Double.isInfinite(d2) && d2 >= -2.147483648E9d && d2 <= 2.147483647E9d && d2 == Math.rint(d2);
    }

    public static String u0(List list) {
        if (list == null || list.isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder("[");
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i2 > 0) {
                sb.append(",");
            }
            try {
                sb.append(new JSONObject((Map) list.get(i2)).toString());
            } catch (Exception unused) {
                sb.append("{}");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static String v(Map map) {
        ArrayList arrayListK0 = k0(map);
        List list = com.sgscq.vpn.handler.x0.f1028c;
        LinkedHashMap linkedHashMapH = com.sgscq.vpn.handler.x0.H(null, c7.b(), map);
        ArrayList arrayList = new ArrayList();
        com.sgscq.vpn.config.h[][] hVarArr = com.sgscq.vpn.handler.c.f780b;
        LinkedHashMap linkedHashMapZ0 = p5.z0("mail", arrayListK0, "mission", arrayList, "party", com.sgscq.vpn.handler.c.e(c7.f(), map), "wishing", linkedHashMapH.get("wishing"), "wish_info", linkedHashMapH.get("wish_info"), "push_info", w(arrayListK0));
        linkedHashMapZ0.put("task", A(map));
        linkedHashMapZ0.putAll(com.sgscq.vpn.handler.c.g(map, c7.f(), c7.f254i));
        return p5.s1(linkedHashMapZ0);
    }

    public static Map v0(String str, Map map) {
        if (map == null) {
            return Collections.emptyMap();
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        if (obj instanceof String) {
            try {
                return p5.u1((String) obj);
            } catch (Exception unused) {
            }
        }
        return Collections.emptyMap();
    }

    public static LinkedHashMap w(ArrayList arrayList) {
        LinkedHashMap linkedHashMapQ = Q(arrayList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMapQ.entrySet()) {
            linkedHashMap.put(((String) entry.getKey()) + "_email", entry.getValue());
        }
        return linkedHashMap;
    }

    public static String x(int i2, int i3, String str, String str2) {
        int iG = ((int) c7.g()) - 86400;
        y1 y1Var = new y1();
        y1Var.e("serverId", 1);
        y1Var.f("server_id", "1");
        y1Var.f("server_title", "单机服务器");
        y1Var.f("server_url", "cqzx.sanguosha.com/sanguosha_account");
        y1Var.f("serverName", "单机服务器");
        y1Var.f("nickname", str2);
        y1Var.f("nickName", str2);
        y1Var.f("roleName", str2);
        y1Var.f("roleId", str);
        y1Var.f("role_id", str);
        y1Var.f("role_name", str2);
        y1Var.e("roleLevel", i2);
        y1Var.e("role_level", i2);
        y1Var.e("level", i2);
        y1Var.e("lastLoginTime", iG);
        y1Var.e("recentLoginTime", iG);
        y1Var.e("career", 1);
        y1Var.e("avatar", i3);
        return y1Var.b();
    }

    public static long x0(String str, String str2, long j2, long j3) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sbL = c.a.l("[LoginPerf] uid=", str, " step=", str2, " stepMs=");
        sbL.append(jCurrentTimeMillis - j3);
        sbL.append(" totalMs=");
        sbL.append(jCurrentTimeMillis - j2);
        z2.e("SGSCQ_SRV", sbL.toString());
        return jCurrentTimeMillis;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0135 A[Catch: Exception -> 0x0236, TRY_ENTER, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0141 A[Catch: Exception -> 0x0236, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0144 A[Catch: Exception -> 0x0236, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0161  */
    /* JADX WARN: Code duplicated, block: B:75:0x0172 A[Catch: Exception -> 0x0236, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0179 A[Catch: Exception -> 0x0236, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ad A[Catch: Exception -> 0x0236, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:85:0x01bd A[Catch: Exception -> 0x0236, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01e2 A[Catch: Exception -> 0x0236, TryCatch #1 {Exception -> 0x0236, blocks: (B:33:0x00c1, B:35:0x00c9, B:37:0x00d5, B:46:0x00f1, B:48:0x00f9, B:55:0x0117, B:57:0x011f, B:59:0x0125, B:64:0x0135, B:66:0x0141, B:68:0x0149, B:70:0x0163, B:72:0x016b, B:74:0x016f, B:77:0x0179, B:78:0x0196, B:82:0x01b7, B:86:0x01c7, B:88:0x01da, B:91:0x01f3, B:90:0x01e2, B:85:0x01bd, B:81:0x01ad, B:75:0x0172, B:67:0x0144, B:61:0x012a, B:92:0x021f, B:95:0x0228), top: B:105:0x00c1 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:77:0x0179, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:90:0x01e2, please report this as an issue */
    public static String y(List list, Map map) {
        String str;
        String str2;
        String str3;
        List arrayList;
        List arrayList2;
        Object orDefault;
        String strValueOf;
        Object obj;
        List arrayList3;
        String str4 = "evolution_all_status";
        String str5 = "all_status";
        String str6 = "{}";
        try {
            Map map2 = new HashMap();
            Object obj2 = map.get("surrender_progress");
            if (obj2 instanceof Map) {
                map2 = (Map) obj2;
            }
            if (!(obj2 instanceof Map)) {
                map.put("surrender_progress", map2);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ArrayList arrayList4 = new ArrayList(w1.f0("General", map));
            if (arrayList4.isEmpty()) {
                return "{}";
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Iterator it = list.iterator();
            while (true) {
                str2 = "general_id";
                if (!it.hasNext()) {
                    break;
                }
                Map map3 = (Map) it.next();
                linkedHashMap2.put(String.valueOf(map3.get("general_id")), map3);
            }
            Iterator it2 = arrayList4.iterator();
            while (it2.hasNext()) {
                String strValueOf2 = String.valueOf(((Map) it2.next()).get(str2));
                Map map4 = (Map) linkedHashMap2.get(strValueOf2);
                if (map4 != null) {
                    LinkedHashMap linkedHashMapO = com.sgscq.vpn.handler.d0.o(map, map4, com.sgscq.vpn.handler.d0.t0(map));
                    Iterator it3 = it2;
                    int iIntValue = linkedHashMapO.get(str5) instanceof Number ? ((Number) linkedHashMapO.get(str5)).intValue() : 0;
                    LinkedHashMap linkedHashMap3 = linkedHashMap2;
                    List listEmptyList = linkedHashMapO.get("complete_list") instanceof List ? (List) linkedHashMapO.get("complete_list") : Collections.emptyList();
                    String strValueOf3 = String.valueOf(linkedHashMapO.get("item_id"));
                    str = str6;
                    try {
                        int iIntValue2 = linkedHashMapO.get(str4) instanceof Number ? ((Number) linkedHashMapO.get(str4)).intValue() : 0;
                        boolean zQ = com.sgscq.vpn.handler.d0.Q(strValueOf2, map2);
                        boolean zN = com.sgscq.vpn.handler.d0.N(strValueOf2, map2);
                        String str7 = str4;
                        boolean z = true;
                        boolean z2 = iIntValue == 1 && !zQ;
                        LinkedHashMap linkedHashMap4 = linkedHashMap;
                        if (iIntValue2 != 1 || zN || !(linkedHashMapO.get("evolution_rewards") instanceof List) || ((List) linkedHashMapO.get("evolution_rewards")).isEmpty()) {
                            z = false;
                        }
                        if (z2 || z) {
                            Object obj3 = linkedHashMapO.get("surrender_list");
                            if (z2) {
                                str3 = str2;
                                if (obj3 instanceof List) {
                                    arrayList = (List) obj3;
                                }
                                String str8 = str5;
                                if (z2) {
                                    obj = map4.get("rewards");
                                    if (obj instanceof List) {
                                        arrayList3 = (List) obj;
                                    } else {
                                        arrayList3 = new ArrayList();
                                    }
                                    com.sgscq.vpn.handler.d0.J(map, map4, arrayList, arrayList3);
                                    map2.put("claimed_" + strValueOf2, "1");
                                }
                                Object obj4 = linkedHashMapO.get("evolution_surrender_list");
                                if (z || !(obj4 instanceof List)) {
                                    arrayList2 = new ArrayList();
                                } else {
                                    arrayList2 = (List) obj4;
                                }
                                if (z) {
                                    com.sgscq.vpn.handler.d0.J(map, map4, arrayList2, (List) linkedHashMapO.get("evolution_rewards"));
                                    map2.put("claimed_evolution_" + strValueOf2, "1");
                                }
                                map.put("surrender_progress", map2);
                                w1.D2(map);
                                map.put("_login_surrender_dirty", Boolean.TRUE);
                                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                if (z2) {
                                    orDefault = listEmptyList;
                                } else {
                                    orDefault = linkedHashMapO.getOrDefault("evolution_complete_list", Collections.emptyList());
                                }
                                linkedHashMap5.put("complete_list", orDefault);
                                if (z2) {
                                    strValueOf3 = String.valueOf(linkedHashMapO.getOrDefault("evolution_item_id", strValueOf3));
                                }
                                linkedHashMap5.put("item_id", strValueOf3);
                                strValueOf = String.valueOf(map4.getOrDefault("surrender_dialog", ""));
                                if (strValueOf.isEmpty() || "null".equals(strValueOf)) {
                                    strValueOf = strValueOf2 + "02";
                                }
                                linkedHashMap5.put("surrender_dialog", strValueOf);
                                linkedHashMap5.put(str8, Integer.valueOf(iIntValue));
                                linkedHashMap5.put("is_receive", 1);
                                String str9 = str3;
                                linkedHashMap5.put(str9, strValueOf2);
                                linkedHashMap = linkedHashMap4;
                                linkedHashMap.put(strValueOf2, linkedHashMap5);
                                it2 = it3;
                                str2 = str9;
                                str5 = str8;
                                linkedHashMap2 = linkedHashMap3;
                                str6 = str;
                                str4 = str7;
                            } else {
                                str3 = str2;
                            }
                            arrayList = new ArrayList();
                            String str10 = str5;
                            if (z2) {
                                obj = map4.get("rewards");
                                if (obj instanceof List) {
                                    arrayList3 = (List) obj;
                                } else {
                                    arrayList3 = new ArrayList();
                                }
                                com.sgscq.vpn.handler.d0.J(map, map4, arrayList, arrayList3);
                                map2.put("claimed_" + strValueOf2, "1");
                            }
                            Object obj5 = linkedHashMapO.get("evolution_surrender_list");
                            if (z) {
                                arrayList2 = new ArrayList();
                            } else {
                                arrayList2 = new ArrayList();
                            }
                            if (z) {
                                com.sgscq.vpn.handler.d0.J(map, map4, arrayList2, (List) linkedHashMapO.get("evolution_rewards"));
                                map2.put("claimed_evolution_" + strValueOf2, "1");
                            }
                            map.put("surrender_progress", map2);
                            w1.D2(map);
                            map.put("_login_surrender_dirty", Boolean.TRUE);
                            LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                            if (z2) {
                                orDefault = listEmptyList;
                            } else {
                                orDefault = linkedHashMapO.getOrDefault("evolution_complete_list", Collections.emptyList());
                            }
                            linkedHashMap6.put("complete_list", orDefault);
                            if (z2) {
                                strValueOf3 = String.valueOf(linkedHashMapO.getOrDefault("evolution_item_id", strValueOf3));
                            }
                            linkedHashMap6.put("item_id", strValueOf3);
                            strValueOf = String.valueOf(map4.getOrDefault("surrender_dialog", ""));
                            if (strValueOf.isEmpty()) {
                                strValueOf = strValueOf2 + "02";
                            } else {
                                strValueOf = strValueOf2 + "02";
                            }
                            linkedHashMap6.put("surrender_dialog", strValueOf);
                            linkedHashMap6.put(str10, Integer.valueOf(iIntValue));
                            linkedHashMap6.put("is_receive", 1);
                            String str11 = str3;
                            linkedHashMap6.put(str11, strValueOf2);
                            linkedHashMap = linkedHashMap4;
                            linkedHashMap.put(strValueOf2, linkedHashMap6);
                            it2 = it3;
                            str2 = str11;
                            str5 = str10;
                            linkedHashMap2 = linkedHashMap3;
                            str6 = str;
                            str4 = str7;
                        } else {
                            it2 = it3;
                            linkedHashMap2 = linkedHashMap3;
                            str6 = str;
                            str4 = str7;
                            linkedHashMap = linkedHashMap4;
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
            }
            str = str6;
            return linkedHashMap.isEmpty() ? str : p5.s1(p5.z0("general_list", linkedHashMap, new Object[0]));
        } catch (Exception e3) {
            e = e3;
            str = str6;
        }
        c.a.D(e, new StringBuilder("[SurrenderInfo] build failed: "), "SGSCQ_SRV");
        return str;
    }

    public static String z0(String str, Map map) {
        return p5.s1(A0(str, map));
    }

    /* JADX WARN: Code duplicated, block: B:34:0x016d A[EDGE_INSN: B:34:0x016d->B:35:0x016e BREAK  A[LOOP:4: B:25:0x014b->B:358:0x014b]] */
    public final String B(String str) {
        String str2;
        Context context;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        h5 h5Var;
        String str8;
        int i2;
        Map map;
        boolean z;
        long j2;
        int iK0;
        int i3;
        int i4;
        String str9;
        boolean z2;
        boolean z3;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        boolean z4;
        boolean z5;
        String str17;
        boolean z6;
        int i5;
        boolean z7;
        Map mapJ0;
        boolean zE;
        boolean zQ2;
        Iterator it;
        boolean z8;
        boolean z9;
        String str18;
        Map mapF0;
        String str19;
        boolean z10;
        long j3;
        long j4;
        int iK1;
        int i6;
        int i7;
        String str20;
        String str21 = str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iG = (int) c7.g();
        long jF = c7.f();
        String string = this.f739d.getString("player_name", "玩家");
        long jJ0 = J0("resource_coin", 0);
        int iG2 = G();
        int iH = H();
        Context context2 = this.f738c;
        Context applicationContext = context2.getApplicationContext();
        SharedPreferences sharedPreferences = context2.getSharedPreferences("sgscq_passport_v4", 0);
        context2.getSharedPreferences("sgscq_player_v5", 0);
        context2.getSharedPreferences("sgscq_guide_v2", 0);
        applicationContext.getApplicationContext().getSharedPreferences("sgscq_cloud_passport_owner_v1", 0);
        String string2 = (str21 == null || str.isEmpty()) ? "active" : sharedPreferences.getString("passport_" + str21 + "_status", "active");
        String str22 = "general_id";
        String str23 = "first_choose_general";
        String str24 = "General";
        String str25 = "SGSCQ_SRV";
        if ("active".equals(string2)) {
            Map mapW0 = w0(str);
            if (mapW0 != null) {
                Object obj = mapW0.get("General");
                if (!(obj instanceof Map)) {
                    z10 = false;
                    break;
                }
                Object obj2 = ((Map) obj).get("add");
                if (!(obj2 instanceof List)) {
                    z10 = false;
                    break;
                }
                Iterator it2 = ((List) obj2).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z10 = false;
                        break;
                    }
                    Object next = it2.next();
                    if ((next instanceof Map) && !Boolean.TRUE.equals(((Map) next).get("story_guest"))) {
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    String strN0 = N0("first_choose_general", "0", mapW0);
                    if (strN0 == null || strN0.isEmpty() || "0".equals(strN0) || "[]".equals(strN0)) {
                        z2.e("SGSCQ_SRV", "[Login] User " + str21 + " has data but no generals, recreating");
                        mapW0 = null;
                    }
                }
            }
            String str26 = "user_nickname";
            String str27 = "user_level";
            if (mapW0 != null) {
                if (l0(mapW0) && M0(mapW0) >= 0 && M0(mapW0) < 7) {
                    int iK2 = K0(0, "data_version", mapW0);
                    z2.e("SGSCQ_SRV", "[Migration] Migrating data from version " + iK2 + " to 7");
                    if (iK2 < 1) {
                        if (!mapW0.containsKey("data_version")) {
                            mapW0.put("data_version", 1);
                        }
                        if (!mapW0.containsKey("user_sign")) {
                            mapW0.put("user_sign", "Hi");
                        }
                        z2.e("SGSCQ_SRV", "[Migration] V0 -> V1 completed");
                    }
                    mapW0.put("data_version", 7);
                    z2.e("SGSCQ_SRV", "[Player] Migrated: " + str21);
                    z2 = true;
                } else {
                    z2 = false;
                }
                w1 w1VarA1 = w1.a1(context2);
                boolean zG2 = w1VarA1.g2(mapW0);
                boolean zD2 = w1.D2(mapW0);
                Iterator it3 = w1.f0("Item", mapW0).iterator();
                boolean z11 = false;
                while (true) {
                    z3 = z2;
                    str10 = "related_equipment_id";
                    context = context2;
                    str11 = "fate_equip_id";
                    str12 = str26;
                    str13 = "equipment_id";
                    str14 = "item_id";
                    str15 = str27;
                    str16 = "id";
                    if (!it3.hasNext()) {
                        break;
                    }
                    String str28 = str25;
                    Map map2 = (Map) it3.next();
                    if (map2 == null) {
                        str18 = str22;
                        str19 = str24;
                        z9 = zG2;
                        z8 = zD2;
                    } else {
                        String strJ = c.a.j(map2, "id", "", "item_id");
                        Object obj3 = map2.get("fate_equip_id");
                        if (obj3 == null) {
                            obj3 = map2.get("related_equipment_id");
                        }
                        if (obj3 == null) {
                            obj3 = map2.get("equipment_id");
                        }
                        String strValueOf = obj3 == null ? "" : String.valueOf(obj3);
                        if (strValueOf.isEmpty()) {
                            z8 = zD2;
                            Map mapE0 = w1VarA1.E0(strJ);
                            if (mapE0 != null) {
                                strValueOf = String.valueOf(mapE0.getOrDefault("fate_equip_id", ""));
                            }
                        } else {
                            z8 = zD2;
                        }
                        String str29 = strValueOf;
                        z9 = zG2;
                        if (("600045".equals(strJ) || w1VarA1.E0(strJ) != null) && !str29.isEmpty()) {
                            str18 = str22;
                            if (str29.length() >= 2 && (mapF0 = w1VarA1.F0(str29)) != null) {
                                str19 = str24;
                                String strValueOf2 = String.valueOf(mapF0.getOrDefault("box_id", ""));
                                if (!strValueOf2.isEmpty()) {
                                    map2.put("id", strValueOf2);
                                    map2.put("item_id", strValueOf2);
                                    map2.put("base_item_id", String.valueOf(mapF0.getOrDefault("base_item_id", "600045")));
                                    map2.put("resource_id", String.valueOf(mapF0.getOrDefault("resource_id", "600045")));
                                    map2.put("box_id", strValueOf2);
                                    map2.put("fate_box_id", strValueOf2);
                                    map2.put("fate_equip_id", str29);
                                    map2.put("related_equipment_id", str29);
                                    map2.put("equipment_id", str29);
                                    String strValueOf3 = String.valueOf(mapF0.get("name"));
                                    String strValueOf4 = String.valueOf(mapF0.get("desc"));
                                    map2.put("item_title", strValueOf3);
                                    map2.put("item_name", strValueOf3);
                                    map2.put("name", strValueOf3);
                                    map2.put("title", strValueOf3);
                                    map2.put("item_desc", strValueOf4);
                                    map2.put("desc", strValueOf4);
                                    z11 = true;
                                }
                            }
                        } else {
                            str18 = str22;
                        }
                        str19 = str24;
                    }
                    zG2 = z9;
                    z2 = z3;
                    context2 = context;
                    str26 = str12;
                    str27 = str15;
                    str25 = str28;
                    zD2 = z8;
                    str22 = str18;
                    str24 = str19;
                }
                String str30 = str25;
                String str31 = str22;
                String str32 = str24;
                boolean z12 = zG2;
                boolean z13 = zD2;
                Iterator it4 = w1.f0("EquipmentPiece", mapW0).iterator();
                boolean z14 = false;
                while (it4.hasNext()) {
                    Map map3 = (Map) it4.next();
                    if (map3 == null) {
                        it = it4;
                    } else {
                        String strK = c.a.k(map3, "pk_id", "", "id", "item_id");
                        it = it4;
                        if ((strK.length() != 7 || !strK.startsWith("9")) && String.valueOf(map3.getOrDefault("id", "")).length() == 7) {
                            strK = String.valueOf(map3.get("id"));
                        }
                        if (strK.length() == 7 && strK.startsWith("9")) {
                            String strSubstring = strK.substring(1);
                            if (w1VarA1.z0(strSubstring) != null) {
                                if (!c.a.B(map3, "equipment_id", "", strSubstring)) {
                                    map3.put("equipment_id", strSubstring);
                                    z14 = true;
                                }
                                if (!c.a.B(map3, "equip_id", "", strSubstring)) {
                                    map3.put("equip_id", strSubstring);
                                    z14 = true;
                                }
                                if (!c.a.B(map3, "item_id", "", strK)) {
                                    map3.put("item_id", strK);
                                    z14 = true;
                                }
                                if (!c.a.B(map3, "id", "", strSubstring)) {
                                    map3.put("id", strSubstring);
                                    z14 = true;
                                }
                            }
                        }
                    }
                    it4 = it;
                }
                List listF0 = w1.f0("Item", mapW0);
                if (listF0.size() < 2) {
                    z4 = false;
                } else {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    ArrayList arrayList = new ArrayList();
                    Iterator it5 = listF0.iterator();
                    boolean z15 = false;
                    while (it5.hasNext()) {
                        it5 = it5;
                        Map map4 = (Map) it5.next();
                        if (map4 == null) {
                            z5 = z15;
                        } else {
                            z5 = z15;
                            String strJ2 = c.a.j(map4, "id", "", str14);
                            if (!strJ2.isEmpty()) {
                                str17 = str14;
                                String str33 = strJ2 + "#" + c.a.k(map4, str13, "", str10, str11);
                                Map map5 = (Map) linkedHashMap.get(str33);
                                if (map5 == null) {
                                    linkedHashMap.put(str33, map4);
                                    z15 = z5;
                                    str14 = str17;
                                } else {
                                    String str34 = str11;
                                    int iL2 = w1.l2(String.valueOf(map4.getOrDefault("item_num", map4.getOrDefault("num", "0"))), 0) + c.a.g(map5, "num", "0", "item_num", 0);
                                    map5.put("item_num", Integer.valueOf(iL2));
                                    map5.put("num", Integer.valueOf(iL2));
                                    arrayList.add(map4);
                                    z15 = true;
                                    str14 = str17;
                                    str10 = str10;
                                    str13 = str13;
                                    str11 = str34;
                                    linkedHashMap = linkedHashMap;
                                }
                            }
                        }
                        str17 = str14;
                        z15 = z5;
                        str14 = str17;
                    }
                    boolean z16 = z15;
                    if (!arrayList.isEmpty()) {
                        listF0.removeAll(arrayList);
                    }
                    z4 = z16;
                }
                List listF1 = w1.f0("BuddyGeneral", mapW0);
                if (listF1.isEmpty()) {
                    z6 = false;
                } else {
                    Iterator it6 = listF1.iterator();
                    boolean z17 = false;
                    while (it6.hasNext()) {
                        String strK2 = c.a.k((Map) it6.next(), "lieutenant_user_general_id", "", "major_user_general_id", "major_pk_id");
                        if (!strK2.isEmpty() && !"0".equals(strK2) && !"null".equalsIgnoreCase(strK2)) {
                            it6.remove();
                            z17 = true;
                        }
                    }
                    z6 = z17;
                }
                Iterator it7 = w1.f0(str32, mapW0).iterator();
                boolean zQ3 = false;
                while (it7.hasNext()) {
                    Map map6 = (Map) it7.next();
                    String str35 = str31;
                    String strJ3 = c.a.j(map6, str16, "", str35);
                    if (!strJ3.isEmpty() && !"null".equalsIgnoreCase(strJ3) && (mapJ0 = w1VarA1.J0(strJ3)) != null) {
                        String strValueOf5 = String.valueOf(mapJ0.getOrDefault("lieutenant_skill_id", ""));
                        if (strValueOf5.isEmpty() || "0".equals(strValueOf5) || "null".equalsIgnoreCase(strValueOf5)) {
                            zE = w1VarA1.E("skill_type_lieutenant", map6) | zQ3 | w1VarA1.E("lieutenant_skill_id", map6);
                            if (w1.r1(String.valueOf(map6.get("lieutenant_skill_id")))) {
                                zQ2 = w1.q2("0", "ls_type", map6) | zE;
                                zQ3 = w1.q2("0", "ls_value", map6);
                            }
                            zQ3 = zE;
                        } else {
                            if (!c.a.A(map6, "lieutenant_skill_id", strValueOf5)) {
                                map6.put("lieutenant_skill_id", strValueOf5);
                                zQ3 = true;
                            }
                            if (!c.a.A(map6, "skill_type_lieutenant", strValueOf5)) {
                                map6.put("skill_type_lieutenant", strValueOf5);
                                zQ3 = true;
                            }
                            zQ2 = w1VarA1.E2(mapW0, map6);
                        }
                        zE = zQ2 | zQ3;
                        zQ3 = zE;
                    }
                    str31 = str35;
                    it7 = it7;
                    str16 = str16;
                }
                str7 = str31;
                boolean zJ2 = w1.j2(mapW0);
                boolean zG = g(w1VarA1, mapW0);
                if (z12 || z13 || z11 || z14 || z4 || z6 || zQ3 || zJ2 || zG) {
                    StringBuilder sb = new StringBuilder("[Player] Normalized login data: ");
                    str21 = str;
                    sb.append(str21);
                    str2 = str30;
                    z2.e(str2, sb.toString());
                    i5 = 1;
                    z7 = true;
                } else {
                    i5 = 1;
                    str21 = str;
                    z7 = z3;
                    str2 = str30;
                }
                int iK3 = K0(i5, str15, mapW0);
                int iK4 = K0(0, "user_experience", mapW0);
                l.c cVarM = w1VarA1.m(iK3, iK4, 0);
                int i8 = cVarM.f1783a;
                int i9 = cVarM.f1784b;
                if (i8 != iK3 || i9 != iK4) {
                    mapW0.put(str15, Integer.valueOf(i8));
                    mapW0.put("user_experience", Integer.valueOf(i9));
                    z2.e(str2, "[Player] Fixed user level progress: level " + iK3 + " -> " + i8 + ", exp " + iK4 + " -> " + i9);
                    z7 = true;
                }
                if (com.sgscq.vpn.handler.d1.K0(mapW0)) {
                    z2.e(str2, "[Player] Refreshed combat unlocks: " + str21);
                    z7 = true;
                }
                if (e(mapW0)) {
                    z2.e(str2, "[Recharge] Monthly card daily mails appended: " + str21);
                    z7 = true;
                }
                h5Var = this;
                if (z7) {
                    h5Var.S0(str21, mapW0);
                }
                String strO0 = O0(str12, string, mapW0);
                int iK5 = K0(1, str15, mapW0);
                K0(0, "user_vip_level", mapW0);
                str6 = "user_coin";
                long jL0 = L0(h5Var.J0("resource_coin", 0), str6, mapW0);
                str5 = "user_gold";
                int iK6 = K0(0, str5, mapW0);
                str4 = "user_energy";
                int iK7 = K0(G(), str4, mapW0);
                str3 = "user_power";
                str8 = str32;
                i2 = iK6;
                map = mapW0;
                iK0 = K0(H(), str3, mapW0);
                i3 = iK5;
                j2 = jL0;
                z = false;
                i4 = iK7;
                str9 = strO0;
            } else {
                str2 = "SGSCQ_SRV";
                context = context2;
                str23 = "first_choose_general";
                str3 = "user_power";
                str4 = "user_energy";
                str5 = "user_gold";
                str6 = "user_coin";
                str7 = "general_id";
                h5Var = this;
                HashMap mapY0 = y0(str);
                h5Var.S0(str21, mapY0);
                String strO1 = O0("user_nickname", string, mapY0);
                int iK8 = K0(1, "user_level", mapY0);
                K0(0, "user_vip_level", mapY0);
                long jL1 = L0(h5Var.J0("resource_coin", 0), str6, mapY0);
                int iK9 = K0(0, str5, mapY0);
                int iK10 = K0(G(), str4, mapY0);
                int iK11 = K0(H(), str3, mapY0);
                z2.e(str2, "[Player] New: " + str21);
                str8 = "General";
                i2 = iK9;
                map = mapY0;
                z = true;
                j2 = jL1;
                iK0 = iK11;
                i3 = iK8;
                i4 = iK10;
                str9 = strO1;
            }
        } else {
            str9 = string;
            z2.e("SGSCQ_SRV", "[Login] User " + str21 + " is " + string2 + ", forcing new player");
            HashMap mapY1 = y0(str);
            S0(str21, mapY1);
            if (str21 != null && !str.isEmpty()) {
                sharedPreferences.edit().putString("passport_" + str21 + "_status", "active").apply();
                z2.e("SGSCQ_PASSPORT", "Set user status: " + str21 + " -> active");
            }
            z = true;
            i3 = 1;
            context = context2;
            str8 = "General";
            str3 = "user_power";
            str5 = "user_gold";
            str6 = "user_coin";
            str2 = "SGSCQ_SRV";
            h5Var = this;
            i2 = 0;
            map = mapY1;
            j2 = jJ0;
            str23 = "first_choose_general";
            str4 = "user_energy";
            str7 = "general_id";
            iK0 = iH;
            i4 = iG2;
        }
        int i10 = i4;
        String str36 = str4;
        long j5 = j2;
        boolean z18 = z;
        int i11 = iK0;
        String str37 = str2;
        Map map7 = map;
        int i12 = i3;
        long jX0 = x0(str, "load_fix_player", jCurrentTimeMillis, jCurrentTimeMillis);
        String strX = p5.X(context);
        LinkedHashMap linkedHashMap2 = com.sgscq.vpn.handler.t0.f995b;
        LinkedHashMap linkedHashMapU1 = p5.u1(strX);
        LinkedHashSet linkedHashSetC = com.sgscq.vpn.handler.t0.C(5);
        LinkedHashSet linkedHashSetY = com.sgscq.vpn.handler.t0.y(map7);
        List listS = com.sgscq.vpn.handler.t0.s(map7);
        String str38 = str3;
        String str39 = str5;
        int i13 = i2;
        Object obj4 = map7.get("debug_hidden_magical_equ");
        String str40 = str6;
        List listO = obj4 instanceof List ? (List) obj4 : null;
        Iterator it8 = listS.iterator();
        boolean zH = false;
        while (true) {
            j3 = j5;
            if (!it8.hasNext()) {
                break;
            }
            Map map8 = (Map) it8.next();
            long j6 = jX0;
            String strValueOf6 = String.valueOf(map8.get("magic_id"));
            com.sgscq.vpn.handler.q0 q0Var = (com.sgscq.vpn.handler.q0) com.sgscq.vpn.handler.t0.f995b.get(strValueOf6);
            if (q0Var == null || linkedHashSetC.contains(strValueOf6)) {
                if (q0Var == null || linkedHashSetY.contains(q0Var.f965a)) {
                }
                j5 = j3;
                jX0 = j6;
            } else {
                if (listO == null) {
                    Object obj5 = map7.get("debug_hidden_magical_equ");
                    listO = obj5 instanceof List ? (List) obj5 : c.a.o(map7, "debug_hidden_magical_equ");
                }
                if (com.sgscq.vpn.handler.t0.m(String.valueOf(map8.get("magic_id")), listO) == null) {
                    listO.add(map8);
                }
            }
            it8.remove();
            zH = true;
            j5 = j3;
            jX0 = j6;
        }
        long j7 = jX0;
        LinkedHashMap linkedHashMapG = com.sgscq.vpn.handler.t0.g(linkedHashMapU1, linkedHashSetC);
        if (listO != null) {
            Iterator it9 = listO.iterator();
            while (it9.hasNext()) {
                Map map9 = (Map) it9.next();
                String strValueOf7 = String.valueOf(map9.get("magic_id"));
                Map map10 = (Map) linkedHashMapG.get(strValueOf7);
                if (map10 != null && linkedHashSetY.contains(String.valueOf(map10.get(str7)))) {
                    if (com.sgscq.vpn.handler.t0.m(strValueOf7, listS) == null) {
                        listS.add(map9);
                    }
                    it9.remove();
                    zH = true;
                }
            }
            if (listO.isEmpty()) {
                map7.remove("debug_hidden_magical_equ");
            }
        }
        for (Map map11 : linkedHashMapG.values()) {
            String strValueOf8 = String.valueOf(map11.get("magic_id"));
            if (linkedHashSetY.contains(String.valueOf(map11.get(str7)))) {
                map11.put("open_condition", com.sgscq.vpn.handler.t0.t(map7, map11));
                Map mapM = com.sgscq.vpn.handler.t0.m(strValueOf8, com.sgscq.vpn.handler.t0.s(map7));
                if (mapM == null) {
                    listS.add(com.sgscq.vpn.handler.t0.j(map11));
                    zH = true;
                } else {
                    zH |= com.sgscq.vpn.handler.t0.H(mapM, map11);
                }
            }
        }
        w1 w1VarA2 = w1.a1(null);
        for (Map map12 : linkedHashMapG.values()) {
            Map mapM2 = com.sgscq.vpn.handler.t0.m(String.valueOf(map12.get("magic_id")), com.sgscq.vpn.handler.t0.s(map7));
            if (mapM2 != null && com.sgscq.vpn.handler.t0.D(mapM2.get("is_open"), 0) == 1) {
                zH |= !com.sgscq.vpn.handler.t0.G(map7, mapM2, map12, w1VarA2).isEmpty();
            }
        }
        if (zH) {
            com.sgscq.vpn.handler.t0.z(map7);
        }
        Context context3 = context;
        p5.u1(o0.a(context3, "evolution_buffs.json"));
        if (zH | false) {
            h5Var.S0(str21, map7);
            z2.e(str37, "[Login] Refreshed DEBUG magic/evolution derived state: " + str21);
        }
        long jX1 = x0(str, "magic_reconcile", jCurrentTimeMillis, j7);
        if (com.sgscq.vpn.handler.x.A(c7.b(), map7)) {
            h5Var.S0(str21, map7);
            z2.e(str37, "[Dungeon] Reset daily story and elite challenge times: " + str21);
        }
        long jX2 = x0(str, "daily_story", jCurrentTimeMillis, jX1);
        String strZ = h5Var.z(map7);
        long jX3 = x0(str, "surrender_info", jCurrentTimeMillis, jX2);
        if (Boolean.TRUE.equals(map7.get("_login_surrender_dirty"))) {
            map7.remove("_login_surrender_dirty");
            w1.D2(map7);
            h5Var.S0(str21, map7);
            long jL2 = L0(j3, str40, map7);
            int iK12 = K0(i13, str39, map7);
            int iK13 = K0(i10, str36, map7);
            j4 = jL2;
            i6 = iK13;
            iK1 = K0(i11, str38, map7);
            i7 = iK12;
        } else {
            j4 = j3;
            iK1 = i11;
            i6 = i10;
            i7 = i13;
        }
        long jX4 = x0(str, "atlas_sync", jCurrentTimeMillis, jX3);
        int iW0 = w1.a1(context3).W0();
        String strX2 = x(i12, K0(1, "headIcon", map7), str21, str9);
        JSONObject jSONObjectT = t(iG, i7, i6, iK1, j4, str, map7);
        long jX5 = x0(str, "player_data", jCurrentTimeMillis, jX4);
        String strH0 = H0(N0("user_map_step", "", map7));
        if (strH0.isEmpty()) {
            strH0 = Z();
        }
        String strO = h5Var.o(strH0, map7, false);
        long jX6 = x0(str, "map_info", jCurrentTimeMillis, jX5);
        String strD = D();
        int iE = E(1800, "wine_gold_time", map7);
        int iE2 = E(600, "wine_silver_time", map7);
        String str41 = "{\"toast\":[],\"list\":[],\"gold_info\":{\"free_end_time\":" + iE + ",\"free_times\":" + (iE == 0 ? 1 : 0) + ",\"price\":100},\"silver_info\":{\"free_end_time\":" + iE2 + ",\"free_times\":" + (iE2 == 0 ? 1 : 0) + ",\"price\":50},\"copper_info\":{\"free_end_time\":" + E(300, "wine_copper_time", map7) + ",\"free_times\":1,\"price\":20},\"need_times\":5,\"first_time_consume_gold\":" + (map7.containsKey("first_gold_wine") ? 1 : 0) + ",\"multi_price\":900,\"show_general_list\":" + strD + "}";
        long jX7 = x0(str, "wine_info", jCurrentTimeMillis, jX6);
        String strB0 = B0(str8, map7);
        z2.e(str37, "[Login] General module len=" + strB0.length() + " mapFormatLen=" + n(map7).length() + " entries=" + D0(map7));
        StringBuilder sb2 = new StringBuilder("[Login] first_choose_general=");
        sb2.append(N0(str23, "?", map7));
        sb2.append(" first_wine_general=");
        sb2.append(N0("first_wine_general", "?", map7));
        z2.e(str37, sb2.toString());
        String strB1 = B0("Skill", map7);
        String strB2 = B0("Equipment", map7);
        String strB3 = B0("Item", map7);
        String strS1 = p5.s1(h5Var.j0(map7));
        String strB4 = B0("Atlas", map7);
        long jX8 = x0(str, "modules", jCurrentTimeMillis, jX7);
        String strM = h5Var.m(map7, jSONObjectT);
        long jX9 = x0(str, "full_cmn", jCurrentTimeMillis, jX8);
        StringBuilder sb3 = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"message\":\"success\",\"isSuccess\":true,\"serverTime\":");
        sb3.append(jF);
        sb3.append(",\"token\":\"tok_");
        sb3.append(str21);
        sb3.append("\",\"isNew\":");
        sb3.append(z18);
        sb3.append(",\"pushData\":");
        sb3.append(v(map7));
        sb3.append(",");
        String string3 = jSONObjectT.toString();
        sb3.append((CharSequence) string3, 1, string3.length() - 1);
        sb3.append(",\"loginedServerLists\":[");
        c.a.y(sb3, strX2, "],\"serverListLogined\":[", strX2, "],\"loginedData\":[");
        c.a.y(sb3, strX2, "],\"m_userLoginInfo\":{\"serverListLogined\":[", strX2, "],\"loginedServerLists\":[");
        sb3.append(strX2);
        sb3.append("],\"curSelServer\":1,\"m_loginServer\":1,\"length\":1},\"user_info\":");
        sb3.append(jSONObjectT.toString());
        sb3.append(",\"play_id\":\"");
        c.a.y(sb3, str21, "\",\"playId\":\"", str21, "\",\"g_account\":\"");
        sb3.append(str21);
        sb3.append("\",");
        String strN1 = N0("general_skin", "", map7);
        if (strN1.isEmpty()) {
            str20 = "\"general_skin\":null,";
        } else {
            sb3.append("\"general_skin\":\"");
            sb3.append(p5.M(strN1));
            str20 = "\",";
        }
        sb3.append(str20);
        sb3.append("\"server_version\":\"1.0.0\",\"opt_cfg_version\":\"opt_v1\",\"server_time\":");
        sb3.append(iG);
        sb3.append(",\"offset_time\":0,\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":");
        sb3.append(iW0);
        sb3.append(",\"isShowUnionWar\":true,\"rechargeRate\":\"1.0\",\"user_auth\":{\"isAuth\":true,\"isAdult\":true,\"isShowBanShu\":true},\"map_info\":");
        sb3.append(strO);
        sb3.append(",\"mapInfo\":");
        c.a.y(sb3, strO, ",\"wine_info\":", str41, ",\"general_info\":{\"del_list\":[],\"update_list\":[]},\"General\":{\"del_list\":[],\"update_list\":[]},\"skill_info\":{\"del_list\":[],\"update_list\":[]},\"Skill\":{\"del_list\":[],\"update_list\":[]},\"item_info\":{\"del_list\":[],\"update_list\":[]},\"Item\":{\"del_list\":[],\"update_list\":[]},\"team_info\":[],\"TeamGeneral\":[],\"atlas_info\":{\"del_list\":[],\"update_list\":[]},\"Atlas\":{\"del_list\":[],\"update_list\":[]},\"generals\":[],\"generalList\":[],\"general_list\":[],\"Generals\":[],\"skills\":[],\"skillList\":[],\"skill_list\":[],\"Skills\":[],\"items\":[],\"itemList\":[],\"item_list\":[],\"Items\":[],\"team\":[],\"teamList\":[],\"team_list\":[],\"Team\":[],\"GeneralSouls\":[],\"surrender_info\":");
        sb3.append(strZ);
        sb3.append(",\"cmn\":");
        sb3.append(strM);
        sb3.append("}");
        String string4 = sb3.toString();
        z2.e(str37, "[Login] RESPONSE length=" + string4.length() + " cmnLen=" + strM.length() + " mapLen=" + strO.length() + " generalLen=" + strB0.length() + " skillLen=" + strB1.length() + " itemLen=" + strB3.length() + " equipLen=" + strB2.length() + " teamLen=" + strS1.length() + " atlasLen=" + strB4.length() + " totalMs=" + (x0(str, "assemble", jCurrentTimeMillis, jX9) - jCurrentTimeMillis));
        return string4;
    }

    public final String D() {
        w1 w1VarA1 = w1.a1(this.f738c);
        ArrayList arrayList = new ArrayList();
        w1VarA1.T(true);
        Iterator it = w1VarA1.v.iterator();
        while (it.hasNext()) {
            arrayList.add(C(w1VarA1, (Map) it.next(), 0, 0L));
        }
        long jG = c7.g();
        Map mapF1 = w1VarA1.f1(jG, null);
        if (mapF1 != null) {
            arrayList.add(C(w1VarA1, mapF1, 4, w1VarA1.r0(jG * 1000)));
        }
        return p5.s1(arrayList);
    }

    public final int G() {
        return J0("resource_energy", 12);
    }

    public final int H() {
        return J0("resource_power", 150);
    }

    public final int J0(String str, int i2) {
        SharedPreferences sharedPreferences = this.f739d;
        if (sharedPreferences == null) {
            return i2;
        }
        try {
            return Integer.parseInt(sharedPreferences.getString(str, String.valueOf(i2)));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public final LinkedHashMap P(String str, Map map, String str2, String str3, Map map2, long j2) {
        LinkedHashMap linkedHashMap;
        boolean z;
        z4 z4Var = this.f737b;
        synchronized (z4Var.g(str)) {
            long jI = z4.i(map);
            q4 q4VarA = z4Var.f1603b.a(str, jI, str2, str3, map2, j2);
            linkedHashMap = new LinkedHashMap();
            if (q4VarA.f1319a > jI) {
                linkedHashMap = ((n2) z4Var.c(q4VarA.f1321c)).a(map, q4VarA);
                map.put("_persistence_journal_sequence", Long.valueOf(q4VarA.f1319a));
            }
            z4Var.f1606e.c(str, map);
            t4 t4Var = z4Var.f1603b;
            synchronized (t4Var) {
                r4 r4VarC = t4Var.c(str);
                z = r4VarC.f1346b.size() >= t4Var.f1397a || r4VarC.a().getBytes(StandardCharsets.UTF_8).length >= t4Var.f1398b;
            }
            if (z) {
                z4Var.d(str);
            } else {
                z4Var.f1604c.b(str, z4Var.f1605d, new d(z4Var, str, 15));
            }
        }
        return linkedHashMap;
    }

    public final void Q0(String str, n2 n2Var) {
        z4 z4Var = this.f737b;
        z4Var.getClass();
        if (str.isEmpty()) {
            throw new IllegalArgumentException("mutation applier required");
        }
        if (z4Var.f1608g.putIfAbsent(str, n2Var) != null) {
            throw new IllegalStateException("duplicate mutation applier ".concat(str));
        }
    }

    public final void S0(String str, Map map) {
        if (map != null) {
            try {
                map.put("data_version", 7);
            } catch (Exception e2) {
                z2.d("SGSCQ_SRV", "Save player error: " + e2.getMessage(), e2);
                return;
            }
        }
        T(map);
        this.f737b.h(str, map);
        if (this.f740e.add(str)) {
            new m4(this.f738c).g(str);
        }
        z2.e("SGSCQ_SRV", "[SavePlayer] OK uid=" + str + " keys=" + map.size());
    }

    public final void W(LinkedHashMap linkedHashMap) {
        double[] dArrK0;
        int iMax;
        w1 w1VarA1 = w1.a1(this.f738c);
        Object obj = linkedHashMap.get("update_list");
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    Map map = (Map) obj2;
                    String strJ = c.a.j(map, "id", "", "general_id");
                    if (!strJ.isEmpty()) {
                        w1VarA1.b0(map);
                        if (Math.max(0, K0(0, "exp", map)) <= 0 && (iMax = Math.max(0, Math.max(K0(0, "general_exp", map), K0(0, "general_experience", map)))) > 0) {
                            int iMax2 = Math.max(1, K0(K0(1, "general_level", map), "level", map));
                            String strJ2 = c.a.j(map, "id", "", "general_id");
                            long jC0 = iMax;
                            if (iMax2 > 1 && !strJ2.isEmpty()) {
                                jC0 -= w1VarA1.c0(strJ2, iMax2);
                                if (jC0 < 0) {
                                    jC0 = 0;
                                }
                            }
                            map.put("exp", Integer.valueOf(jC0 > 2147483647L ? Integer.MAX_VALUE : (int) jC0));
                        }
                        if (!map.containsKey("general_hp_attr") && (dArrK0 = w1VarA1.K0(strJ)) != null) {
                            map.put("general_hp_attr", String.valueOf(dArrK0[0]));
                            map.put("attr_hp", String.valueOf(dArrK0[0]));
                            map.put("general_attack_attr", String.valueOf(dArrK0[1]));
                            map.put("attr_attack", String.valueOf(dArrK0[1]));
                            map.put("general_defense_attr", String.valueOf(dArrK0[2]));
                            map.put("attr_defense", String.valueOf(dArrK0[2]));
                            map.put("general_wisdom_attr", String.valueOf(dArrK0[3]));
                            map.put("attr_wisdom", String.valueOf(dArrK0[3]));
                            if (dArrK0.length > 5) {
                                map.put("general_hp_step", String.valueOf(dArrK0[5]));
                                map.put("general_attack_step", String.valueOf(dArrK0[6]));
                                map.put("general_defense_step", String.valueOf(dArrK0[7]));
                                map.put("general_wisdom_step", String.valueOf(dArrK0[8]));
                            }
                            StringBuilder sbB = a.b0.b("[Enrich] ", strJ, " hp=");
                            sbB.append(dArrK0[0]);
                            sbB.append(" atk=");
                            sbB.append(dArrK0[1]);
                            sbB.append(" def=");
                            sbB.append(dArrK0[2]);
                            sbB.append(" wis=");
                            sbB.append(dArrK0[3]);
                            z2.b("SGSCQ_SRV", sbB.toString());
                        }
                    }
                }
            }
        }
    }

    public final String X() {
        try {
            ArrayList arrayListG0 = w1.a1(this.f738c).g0();
            if (!arrayListG0.isEmpty()) {
                return (String) arrayListG0.get(0);
            }
        } catch (Throwable unused) {
        }
        return "10501";
    }

    public final String Z() {
        ArrayList arrayListJ0 = w1.a1(this.f738c).j0();
        return arrayListJ0.isEmpty() ? "" : (String) arrayListJ0.get(0);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    public final void b(String str, String str2) {
        boolean z;
        long jG = c7.g();
        SharedPreferences sharedPreferences = this.f739d;
        if (str2 == null) {
            z = false;
        } else {
            String strTrim = str2.trim();
            if (strTrim.isEmpty() || strTrim.contains("获得了，") || strTrim.contains("获得了,") || strTrim.endsWith("获得了") || strTrim.contains("null")) {
                z = false;
            } else {
                z = true;
            }
        }
        if (z) {
            try {
                JSONArray jSONArray = new JSONArray(sharedPreferences.getString("chat_messages", "[]"));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("user_id", "0");
                jSONObject.put("channel", 4);
                jSONObject.put("vip_level", 15);
                String strTrim2 = str.trim();
                if (strTrim2.isEmpty()) {
                    strTrim2 = "玩家";
                }
                jSONObject.put("nickname", strTrim2);
                jSONObject.put("speaker_type", "player");
                jSONObject.put("message", str2);
                jSONObject.put("time", jG);
                jSONArray.put(jSONObject);
                while (jSONArray.length() > 40) {
                    jSONArray.remove(jSONArray.length() - 1);
                }
                sharedPreferences.edit().putString("chat_messages", jSONArray.toString()).apply();
            } catch (Exception e2) {
                c.a.D(e2, new StringBuilder("[ChatMsg] save failed: "), "SGSCQ_SRV");
            }
        }
    }

    public final c0 e0() {
        c0 c0Var = (c0) this.f736a.get();
        return c0Var == null ? c0.f232f : c0Var;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    /* JADX WARN: Code duplicated, block: B:56:0x00db  */
    public final String f0(String str, int i2) {
        String str2;
        String strValueOf;
        int i3;
        int i4;
        w1 w1VarA1 = w1.a1(this.f738c);
        List listV0 = w1VarA1.v0(str);
        if (listV0 == null || listV0.isEmpty()) {
            str2 = null;
        } else {
            if (str == null || !str.startsWith("105") || str.length() < 5) {
                i3 = i2;
            } else {
                try {
                    i3 = Integer.parseInt(str.substring(3, 5));
                } catch (NumberFormatException unused) {
                    i3 = i2;
                }
            }
            if (i3 < 50 || (str2 = (String) listV0.get(0)) == null || str2.trim().isEmpty()) {
                if (listV0.isEmpty()) {
                    str2 = null;
                } else {
                    if (listV0.size() >= 2) {
                        i4 = (listV0.get(1) == null || ((String) listV0.get(1)).trim().isEmpty()) ? 0 : 1;
                    }
                    str2 = (String) listV0.get(i4);
                }
            }
        }
        if (str2 != null && !str2.isEmpty()) {
            return str2;
        }
        HashMap map = w1VarA1.P;
        if (map == null && map == null) {
            w1VarA1.P = new HashMap();
            try {
                Map map2 = (Map) ((Map) w1VarA1.f1494b.d(o0.a(w1VarA1.f1493a, "dungeon_enemies.json"), Map.class)).get("dungeon_npcs");
                if (map2 != null) {
                    for (Map.Entry entry : map2.entrySet()) {
                        Object value = entry.getValue();
                        if (value instanceof List) {
                            List list = (List) value;
                            if (list.isEmpty()) {
                                strValueOf = null;
                            } else {
                                strValueOf = String.valueOf(list.get(0));
                            }
                        } else {
                            strValueOf = null;
                        }
                        if (strValueOf != null) {
                            w1VarA1.P.put((String) entry.getKey(), strValueOf);
                        }
                    }
                }
                z2.e("SGSCQ_SRV", "[loadDungeonNpcs] 加载 " + w1VarA1.P.size() + " 副本NPC映射");
            } catch (Exception e2) {
                c.a.D(e2, new StringBuilder("[loadDungeonNpcs] 失败: "), "SGSCQ_SRV");
            }
        }
        if (str.length() >= 6) {
            str = str.substring(0, 6);
        }
        String str3 = (String) w1VarA1.P.get(str);
        return (str3 == null || str3.isEmpty()) ? w1.q0(i2) : str3;
    }

    public final int g0(Map map) {
        Object orDefault = "1";
        if (map != null) {
            try {
                orDefault = map.getOrDefault("user_level", map.getOrDefault("level", "1"));
            } catch (Exception unused) {
                return 0;
            }
        }
        return w1.a1(this.f738c).h1(w1.l2(String.valueOf(orDefault), 1));
    }

    /* JADX WARN: Code duplicated, block: B:192:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:223:0x0565  */
    /* JADX WARN: Code duplicated, block: B:224:0x056c  */
    /* JADX WARN: Code duplicated, block: B:226:0x0576  */
    /* JADX WARN: Code duplicated, block: B:228:0x057e  */
    /* JADX WARN: Code duplicated, block: B:230:0x0588  */
    /* JADX WARN: Code duplicated, block: B:231:0x058f  */
    /* JADX WARN: Code duplicated, block: B:233:0x0599  */
    /* JADX WARN: Code duplicated, block: B:237:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:244:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:247:0x05c1 A[PHI: r2 r8 r34 r35 r37 r62 r64 r65
      0x05c1: PHI (r2v70 java.lang.String) = 
      (r2v69 java.lang.String)
      (r2v89 java.lang.String)
      (r2v91 java.lang.String)
      (r2v91 java.lang.String)
      (r2v91 java.lang.String)
      (r2v91 java.lang.String)
     binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]
      0x05c1: PHI (r8v30 java.lang.String) = 
      (r8v29 java.lang.String)
      (r8v41 java.lang.String)
      (r8v41 java.lang.String)
      (r8v41 java.lang.String)
      (r8v41 java.lang.String)
      (r8v41 java.lang.String)
     binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]
      0x05c1: PHI (r34v11 com.sgscq.vpn.w1) = 
      (r34v10 com.sgscq.vpn.w1)
      (r34v15 com.sgscq.vpn.w1)
      (r34v15 com.sgscq.vpn.w1)
      (r34v15 com.sgscq.vpn.w1)
      (r34v15 com.sgscq.vpn.w1)
      (r34v15 com.sgscq.vpn.w1)
     binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]
      0x05c1: PHI (r35v2 int) = (r35v1 int), (r35v4 int), (r35v4 int), (r35v4 int), (r35v4 int), (r35v4 int) binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]
      0x05c1: PHI (r37v2 java.lang.String) = 
      (r37v1 java.lang.String)
      (r37v7 java.lang.String)
      (r37v8 java.lang.String)
      (r37v8 java.lang.String)
      (r37v8 java.lang.String)
      (r37v8 java.lang.String)
     binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]
      0x05c1: PHI (r62v5 java.lang.String) = 
      (r62v3 java.lang.String)
      (r62v7 java.lang.String)
      (r62v9 java.lang.String)
      (r62v9 java.lang.String)
      (r62v9 java.lang.String)
      (r62v9 java.lang.String)
     binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]
      0x05c1: PHI (r64v6 java.lang.String) = 
      (r64v5 java.lang.String)
      (r64v9 java.lang.String)
      (r64v10 java.lang.String)
      (r64v10 java.lang.String)
      (r64v10 java.lang.String)
      (r64v10 java.lang.String)
     binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]
      0x05c1: PHI (r65v5 java.lang.String) = 
      (r65v3 java.lang.String)
      (r65v7 java.lang.String)
      (r65v10 java.lang.String)
      (r65v10 java.lang.String)
      (r65v10 java.lang.String)
      (r65v10 java.lang.String)
     binds: [B:246:0x05b9, B:244:0x05b2, B:236:0x05a2, B:238:0x05a5, B:239:0x05a7, B:241:0x05aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:249:0x05c4  */
    /* JADX WARN: Code duplicated, block: B:251:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:254:0x0615  */
    /* JADX WARN: Code duplicated, block: B:255:0x0617  */
    /* JADX WARN: Code duplicated, block: B:258:0x062c  */
    /* JADX WARN: Code duplicated, block: B:259:0x062e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:265:0x0651  */
    /* JADX WARN: Code duplicated, block: B:267:0x0655  */
    /* JADX WARN: Code duplicated, block: B:275:0x0688 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:278:0x068e  */
    /* JADX WARN: Code duplicated, block: B:280:0x0696 A[LOOP:7: B:279:0x0694->B:280:0x0696, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:283:0x06b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:302:0x06f5  */
    /* JADX WARN: Code duplicated, block: B:303:0x06f7  */
    /* JADX WARN: Code duplicated, block: B:306:0x0708  */
    /* JADX WARN: Code duplicated, block: B:307:0x070a  */
    /* JADX WARN: Code duplicated, block: B:309:0x0710  */
    /* JADX WARN: Code duplicated, block: B:310:0x0712  */
    /* JADX WARN: Code duplicated, block: B:313:0x0719  */
    /* JADX WARN: Code duplicated, block: B:314:0x071f  */
    /* JADX WARN: Code duplicated, block: B:317:0x072a  */
    /* JADX WARN: Code duplicated, block: B:318:0x072d  */
    /* JADX WARN: Code duplicated, block: B:321:0x0736  */
    /* JADX WARN: Code duplicated, block: B:325:0x073f  */
    /* JADX WARN: Code duplicated, block: B:328:0x0788  */
    /* JADX WARN: Code duplicated, block: B:329:0x078a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:330:0x078c  */
    /* JADX WARN: Code duplicated, block: B:331:0x078e  */
    /* JADX WARN: Code duplicated, block: B:333:0x07e8  */
    /* JADX WARN: Code duplicated, block: B:336:0x0823  */
    /* JADX WARN: Code duplicated, block: B:486:0x01ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:502:0x05de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x01be  */
    /* JADX WARN: Code duplicated, block: B:71:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:74:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ee A[EDGE_INSN: B:79:0x01ee->B:80:0x01ef BREAK  A[LOOP:2: B:72:0x01c9->B:489:0x01c9]] */
    /* JADX WARN: Code duplicated, block: B:82:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:83:0x0201  */
    /* JADX WARN: Code duplicated, block: B:85:0x0207  */
    /* JADX WARN: Code duplicated, block: B:86:0x0209  */
    public final String h(String str, Map map) {
        List listM0;
        String str2;
        String str3;
        int i2;
        int i3;
        p4 p4Var;
        String str4;
        g5 g5Var;
        g5 g5Var2;
        int iM0;
        String str5;
        int i4;
        ArrayList arrayList;
        String str6;
        ArrayList arrayList2;
        String str7;
        String str8;
        String str9;
        String str10;
        int i5;
        String str11;
        String string;
        int i6;
        int iOptInt;
        String str12;
        String str13;
        String strOptString;
        String str14;
        w1 w1Var;
        String str15;
        int i7;
        int i8;
        Map map2;
        List list;
        String str16;
        int iMax;
        String str17;
        int size;
        int i9;
        int iP0;
        int iMax2;
        boolean zBooleanValue;
        String upperCase;
        int i10;
        String str18;
        String str19;
        String str20;
        int i11;
        HashMap mapX0;
        String str21;
        int iL2;
        int iL3;
        String upperCase2;
        String str22;
        String str23;
        int i12;
        int i13;
        int i14;
        int iMax3;
        String str24;
        p4 p4Var2;
        Integer num;
        int i15;
        int i16;
        int iIntValue;
        String upperCase3;
        int i17;
        Iterator it;
        Integer num2;
        String strH0 = H0(str);
        Context context = this.f738c;
        w1 w1VarA1 = w1.a1(context);
        List listM1 = w1VarA1.m0(strH0, strH0);
        String str25 = "dungeon_info";
        String str26 = "getChapterId";
        String str27 = "map_id";
        String str28 = "can_show";
        if (listM1 == null || listM1.isEmpty()) {
            w1 w1VarA2 = w1.a1(context);
            String strZ = Z();
            if (strZ.isEmpty() || (listM0 = w1VarA2.m0(strZ, strZ)) == null || listM0.isEmpty()) {
                return "{}";
            }
            String strA = com.sgscq.vpn.handler.l.a("[", l((String) listM0.get(0), 1, true, listM0.size() > 1 ? (String) listM0.get(1) : "", 0, 0, true, true, Collections.emptyList(), 1, 0), "]");
            String strZ0 = Z0(strZ);
            y1 y1Var = new y1();
            y1Var.f("map_id", strZ0);
            y1Var.f("map_name", d0(strZ));
            y1Var.f("map_bgimage", c0(w1VarA2, strZ));
            y1Var.g(str28, true);
            y1Var.g("can_in", true);
            y1Var.i("getChapterId", strZ0);
            y1 y1VarH = y1Var.h("updateInfo");
            y1VarH.g(str28, true);
            y1VarH.g("can_in", true);
            y1VarH.b();
            y1Var.i("dungeon_info", strA);
            if (U0(e0())) {
                y1Var.i("dungeons", strA);
            }
            return y1Var.b();
        }
        String str29 = "can_in";
        Map mapV0 = v0("dungeon_stars", map);
        String str30 = "[";
        Map mapV1 = v0("dungeon_times", map);
        String str31 = "]";
        Map mapV2 = v0("chapter_reward_boxes", map);
        p4 p4VarK = K(map);
        int iMax4 = map == null ? 1 : Math.max(1, K0(1, "user_level", map));
        String str32 = "";
        boolean z = strH0 != null && strH0.startsWith("105");
        String str33 = "105";
        if (z) {
            p4VarK = L(map, true);
        }
        p4 p4Var3 = p4VarK;
        boolean zI = I(strH0, p4Var3, z, iMax4);
        List listP0 = w1VarA1.p0(strH0);
        String str34 = "dungeons";
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str35 = "map_name";
        int i18 = 0;
        String str36 = "map_bgimage";
        while (true) {
            str2 = str25;
            if (i18 >= listM1.size()) {
                break;
            }
            int i19 = i18 + 1;
            HashMap mapX1 = w1VarA1.x0((String) listM1.get(i18));
            String str37 = str26;
            linkedHashMap.put(Integer.valueOf(i19), Integer.valueOf(mapX1 != null ? w1.l2(String.valueOf(mapX1.getOrDefault("position", Integer.valueOf(i19))), i19) : i19));
            i18 = i19;
            str25 = str2;
            str26 = str37;
        }
        String str38 = str26;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(listP0);
        arrayList3.addAll(w1VarA1.o0(strH0));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str39 = "L";
        w1 w1Var2 = w1VarA1;
        String str40 = "U";
        String str41 = "position";
        String str42 = "D";
        String str43 = "updateInfo";
        String str44 = "R";
        if (!linkedHashMap.isEmpty()) {
            Iterator it2 = arrayList3.iterator();
            int i20 = 2;
            while (it2.hasNext()) {
                Iterator it3 = it2;
                List list2 = (List) it2.next();
                if (list2 == null || list2.size() < i20 || (num = (Integer) linkedHashMap.get(Integer.valueOf(w1.l2(String.valueOf(list2.get(0)), 0)))) == null || num.intValue() <= 0) {
                    str24 = strH0;
                    p4Var2 = p4Var3;
                } else {
                    String strValueOf = String.valueOf(list2.get(1));
                    int iIntValue2 = num.intValue();
                    if (iIntValue2 <= 0) {
                        str24 = strH0;
                        p4Var2 = p4Var3;
                    } else {
                        p4Var2 = p4Var3;
                        str24 = strH0;
                        String upperCase4 = strValueOf.trim().toUpperCase(Locale.ROOT);
                        if ("U".equals(upperCase4)) {
                            i15 = iIntValue2 - 1;
                        } else if ("D".equals(upperCase4)) {
                            i15 = iIntValue2 + 1;
                        } else if ("L".equals(upperCase4)) {
                            i15 = iIntValue2 - 4;
                        } else if ("R".equals(upperCase4)) {
                            i15 = iIntValue2 + 4;
                        }
                        if (num.intValue() > 0 || i15 <= 0) {
                            i16 = 0;
                        } else {
                            String upperCase5 = strValueOf.trim().toUpperCase(Locale.ROOT);
                            if ("D".equals(upperCase5)) {
                                i16 = i15 - 1;
                            } else if ("R".equals(upperCase5)) {
                                i16 = i15 - 4;
                            } else {
                                i16 = 0;
                            }
                        }
                        if (i16 > 0) {
                            iIntValue = 0;
                            break;
                        }
                        it = linkedHashMap.entrySet().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                iIntValue = 0;
                                break;
                            }
                            Map.Entry entry = (Map.Entry) it.next();
                            num2 = (Integer) entry.getValue();
                            if (num2 == null && num2.intValue() == i16) {
                                iIntValue = ((Integer) entry.getKey()).intValue();
                                break;
                            }
                        }
                        upperCase3 = strValueOf.trim().toUpperCase(Locale.ROOT);
                        if ("D".equals(upperCase3)) {
                            i17 = 2;
                        } else if ("R".equals(upperCase3)) {
                            i17 = 4;
                        } else {
                            i17 = 0;
                        }
                        if (iIntValue <= 0 && i17 > 0) {
                            List arrayList4 = (List) linkedHashMap2.get(Integer.valueOf(iIntValue));
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                                linkedHashMap2.put(Integer.valueOf(iIntValue), arrayList4);
                            }
                            if (!arrayList4.contains(Integer.valueOf(i17))) {
                                arrayList4.add(Integer.valueOf(i17));
                            }
                        }
                    }
                    i15 = 0;
                    if (num.intValue() > 0) {
                        i16 = 0;
                    } else {
                        i16 = 0;
                    }
                    if (i16 > 0) {
                        iIntValue = 0;
                        break;
                    }
                    it = linkedHashMap.entrySet().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            iIntValue = 0;
                            break;
                        }
                        Map.Entry entry2 = (Map.Entry) it.next();
                        num2 = (Integer) entry2.getValue();
                        if (num2 == null) {
                        }
                    }
                    upperCase3 = strValueOf.trim().toUpperCase(Locale.ROOT);
                    if ("D".equals(upperCase3)) {
                        i17 = 2;
                    } else if ("R".equals(upperCase3)) {
                        i17 = 4;
                    } else {
                        i17 = 0;
                    }
                    if (iIntValue <= 0) {
                    }
                }
                i20 = 2;
                p4Var3 = p4Var2;
                it2 = it3;
                strH0 = str24;
            }
        }
        String str45 = strH0;
        p4 p4Var4 = p4Var3;
        int[] iArr = {0};
        ArrayList arrayList5 = new ArrayList();
        int i21 = 0;
        while (i21 < listM1.size()) {
            String str46 = (String) listM1.get(i21);
            int i22 = i21 + 1;
            String str47 = i22 < listM1.size() ? (String) listM1.get(i22) : str32;
            int iP1 = P0(str46, mapV0);
            int iP2 = P0(str46, mapV1);
            Map map3 = mapV1;
            if (!z || iMax4 >= 9) {
                i3 = iMax4;
                if (mapV0 != null && i22 > 1 && i22 <= listM1.size() && (iM0 = m0((String) listM1.get(i22 + (-1)))) > 0 && iM0 <= listM1.size() && P0((String) listM1.get(iM0 + (-1)), mapV0) > 0) {
                    g5Var2 = new g5(true, true, false);
                } else {
                    mapV0 = mapV0;
                    int iJ = J(str45);
                    p4Var = p4Var4;
                    int iJ2 = J((String) p4Var.f1272b);
                    if (iJ <= 0 || iJ2 <= 0) {
                        str4 = str44;
                        boolean z2 = i22 <= 1;
                        g5Var = new g5(z2, z2, i22 <= 1);
                    } else if (iJ < iJ2) {
                        str4 = str44;
                        g5Var2 = new g5(true, true, false);
                    } else {
                        str4 = str44;
                        if (iJ > iJ2) {
                            g5Var2 = new g5(false, false, false);
                        } else {
                            int iV = V((String) p4Var.f1273c);
                            if (iV <= 0) {
                                iV = Math.max(1, p4Var.f1271a);
                            }
                            boolean z3 = i22 <= iV;
                            g5Var = new g5(z3, z3, i22 == iV);
                        }
                    }
                    g5Var2 = g5Var;
                }
                p4 p4Var5 = p4Var;
                int iIntValue3 = ((Integer) linkedHashMap.getOrDefault(Integer.valueOf(i22), Integer.valueOf(i22))).intValue();
                int size2 = arrayList5.size();
                String strI = c.a.i("dungeon:", str46);
                boolean z4 = z;
                String str48 = str29;
                Map map4 = mapV0;
                String str49 = str39;
                str5 = str48;
                String str50 = str30;
                String str51 = str31;
                Map map5 = mapV2;
                String str52 = str33;
                i4 = i22;
                int[] iArr2 = iArr;
                String str53 = str27;
                int i23 = i3;
                String str54 = str35;
                String str55 = str36;
                String str56 = ",";
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                String str57 = str38;
                String str58 = str43;
                String str59 = str4;
                String str60 = str42;
                String str61 = str2;
                String str62 = str41;
                String str63 = str34;
                LinkedHashMap linkedHashMap4 = linkedHashMap;
                List list3 = listM1;
                String str64 = str40;
                w1 w1Var3 = w1Var2;
                arrayList = arrayList5;
                arrayList.add(new f5(iIntValue3, size2, strI, l(str46, i22, g5Var2.f715c, str47, iP1, iP2, g5Var2.f713a, g5Var2.f714b, (List) linkedHashMap2.getOrDefault(Integer.valueOf(i22), Collections.emptyList()), i23, W0(W0(0, "user_vip_level", map), "vip_level", map))));
                w1 w1VarA3 = w1.a1(context);
                String str65 = "id";
                String str66 = "box_id";
                String str67 = "node_type";
                String str68 = "dungeon_position";
                if (listP0 != null || listP0.isEmpty()) {
                    str6 = str28;
                    arrayList2 = arrayList;
                    str7 = "id";
                    str8 = "box_id";
                    str9 = "node_type";
                    str10 = "dungeon_position";
                    i5 = i4;
                    str11 = str5;
                    string = str32;
                } else {
                    StringBuilder sb = new StringBuilder(listP0.size() * 160);
                    Iterator it4 = listP0.iterator();
                    while (true) {
                        Map map6 = map4;
                        List list4 = list3;
                        String str69 = str45;
                        while (true) {
                            if (!it4.hasNext()) {
                                break;
                            }
                            List list5 = (List) it4.next();
                            int iL4 = w1.l2(String.valueOf(list5.get(0)), 0);
                            int i24 = i4;
                            if (iL4 != i24) {
                                i4 = i24;
                            } else {
                                String strValueOf2 = String.valueOf(list5.get(1));
                                Iterator it5 = it4;
                                String strValueOf3 = String.valueOf(list5.get(2));
                                String strValueOf4 = String.valueOf(list5.get(3));
                                ArrayList arrayList6 = arrayList;
                                if (strValueOf4.isEmpty() || "null".equals(strValueOf4)) {
                                    if ("元宝".equals(strValueOf3)) {
                                        strValueOf4 = "600034";
                                    } else if ("银两".equals(strValueOf3) || "金币".equals(strValueOf3) || "铜钱".equals(strValueOf3)) {
                                        strValueOf4 = "600026";
                                    } else if ("灵芝".equals(strValueOf3)) {
                                        strValueOf4 = "600012";
                                    } else if ("勾玉".equals(strValueOf3)) {
                                        strValueOf4 = "600013";
                                    } else {
                                        strValueOf4 = "600026";
                                    }
                                }
                                String str70 = str68;
                                int iL5 = w1.l2(String.valueOf(list5.get(4)), 0);
                                if (iL5 <= 0) {
                                    int i25 = iArr2[0];
                                    try {
                                        str14 = str66;
                                        i14 = 1;
                                        try {
                                            iMax3 = Math.max(1, Integer.parseInt(str45) - 500);
                                        } catch (Exception unused) {
                                            iMax3 = i14;
                                        }
                                    } catch (Exception unused2) {
                                        str14 = str66;
                                        i14 = 1;
                                    }
                                    iL5 = ((Math.max(0, i25) + i14) * iMax3 * 50) + 100;
                                } else {
                                    str14 = str66;
                                }
                                if (iL4 <= 0 || iL4 > list3.size() || (mapX0 = w1VarA3.x0((String) list4.get(iL4 - 1))) == null) {
                                    w1Var = w1VarA3;
                                } else {
                                    Object obj = mapX0.get("grid");
                                    if (obj instanceof List) {
                                        List list6 = (List) obj;
                                        w1Var = w1VarA3;
                                        if (list6.size() >= 2) {
                                            iL3 = w1.l2(String.valueOf(list6.get(0)), 1);
                                            iL2 = w1.l2(String.valueOf(list6.get(1)), 1);
                                            str21 = str62;
                                        }
                                        i7 = iL5;
                                        upperCase2 = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                        str64 = str64;
                                        if (str64.equals(upperCase2)) {
                                            i13 = iL2 - 1;
                                            str62 = str21;
                                            str22 = str60;
                                        } else {
                                            str62 = str21;
                                            str22 = str60;
                                            if (str22.equals(upperCase2)) {
                                                i13 = iL2 + 1;
                                            } else {
                                                int i26 = iL2;
                                                str49 = str49;
                                                if (str49.equals(upperCase2)) {
                                                    iL3--;
                                                    str60 = str22;
                                                    str23 = str59;
                                                } else {
                                                    str60 = str22;
                                                    str23 = str59;
                                                    if (str23.equals(upperCase2)) {
                                                        iL3++;
                                                    } else {
                                                        str59 = str23;
                                                        str15 = str67;
                                                    }
                                                }
                                                str59 = str23;
                                                i12 = i26;
                                                str15 = str67;
                                                if (iL3 < 1 && iL3 <= 6 && i12 >= 1 && i12 <= 4) {
                                                    i8 = ((iL3 - 1) * 4) + i12;
                                                }
                                                if (i8 <= 0) {
                                                    map2 = map4;
                                                    list = list3;
                                                    str69 = str45;
                                                } else if ("null".equals(strValueOf4)) {
                                                    map2 = map6;
                                                    list = list4;
                                                } else {
                                                    str16 = String.valueOf(str45) + String.format(Locale.ROOT, "%03d", Integer.valueOf(Math.max(1, list3.size() + iArr2[0] + 1)));
                                                    if (p0(str69, list5)) {
                                                        iMax = 1;
                                                    } else {
                                                        iMax = Math.max(0, Math.min(iL4, list3.size())) * 3;
                                                    }
                                                    if (p0(str69, list5)) {
                                                        if (map6 != null || iL4 <= 0 || iL4 > list3.size()) {
                                                            str17 = str52;
                                                        } else {
                                                            iMax2 = Math.max(0, P0((String) list4.get(iL4 - 1), map6));
                                                            str17 = str52;
                                                        }
                                                        if (map5 != 0 || str16 == null) {
                                                            zBooleanValue = false;
                                                        } else {
                                                            Object obj2 = map5.get(str16);
                                                            if (obj2 == null) {
                                                                obj2 = map5.get(E0(str16));
                                                            }
                                                            if (obj2 instanceof Boolean) {
                                                                zBooleanValue = ((Boolean) obj2).booleanValue();
                                                            } else if (!(obj2 instanceof Number)) {
                                                                if (obj2 instanceof String) {
                                                                    String strTrim = ((String) obj2).trim();
                                                                    if ("true".equalsIgnoreCase(strTrim) || "1".equals(strTrim)) {
                                                                        zBooleanValue = true;
                                                                    }
                                                                }
                                                                zBooleanValue = false;
                                                            } else if (((Number) obj2).intValue() != 0) {
                                                                zBooleanValue = true;
                                                            } else {
                                                                zBooleanValue = false;
                                                            }
                                                        }
                                                        upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                        if (str64.equals(upperCase)) {
                                                            i10 = 1;
                                                        } else if (str49.equals(upperCase)) {
                                                            i10 = 3;
                                                        } else {
                                                            i10 = 0;
                                                        }
                                                        if (sb.length() > 0) {
                                                            str18 = str56;
                                                            sb.append(str18);
                                                        } else {
                                                            str18 = str56;
                                                        }
                                                        iArr2[0] = iArr2[0] + 1;
                                                        if (str16 == null) {
                                                            str19 = str32;
                                                        } else {
                                                            str19 = str16;
                                                        }
                                                        String strConcat = str19.concat("01");
                                                        if (str16 != null || str16.isEmpty()) {
                                                            str20 = strValueOf4;
                                                        } else {
                                                            str20 = str16;
                                                        }
                                                        str49 = str49;
                                                        String strK = k(Integer.valueOf(i10));
                                                        str52 = str17;
                                                        y1 y1Var2 = new y1();
                                                        str64 = str64;
                                                        y1Var2.f("type", "box");
                                                        map5 = map5;
                                                        String str71 = str15;
                                                        y1Var2.f(str71, "TreasureBox");
                                                        String str72 = str65;
                                                        y1Var2.f(str72, str16);
                                                        str56 = str18;
                                                        String str73 = str14;
                                                        y1Var2.f(str73, str16);
                                                        y1Var2.e(str62, i8);
                                                        y1Var2.e(str70, i8);
                                                        y1Var2.f("name", strConcat);
                                                        y1Var2.e("open_need_star", iMax);
                                                        y1Var2.e("has_star", iMax2);
                                                        if (zBooleanValue) {
                                                            i11 = 3;
                                                        } else if (iMax2 >= iMax) {
                                                            i11 = 2;
                                                        } else {
                                                            i11 = 1;
                                                        }
                                                        y1Var2.e("can_open", i11);
                                                        y1Var2.g("is_claimed", zBooleanValue);
                                                        y1Var2.g("claimed", zBooleanValue);
                                                        y1Var2.i("direction", strK);
                                                        y1Var2.e("dungeon_direction", i10);
                                                        y1Var2.f("item_id", str20);
                                                        y1Var2.f("id_item", str20);
                                                        int i27 = i7;
                                                        y1Var2.e("item_num", i27);
                                                        y1Var2.e("num", i27);
                                                        y1Var2.f("reward_item_id", strValueOf4);
                                                        y1Var2.e("reward_num", i27);
                                                        y1Var2.g(str28, true);
                                                        y1Var2.g(str5, true);
                                                        sb.append(y1Var2.b());
                                                        str68 = str70;
                                                        str65 = str72;
                                                        str67 = str71;
                                                        str66 = str73;
                                                        it4 = it5;
                                                        i4 = i24;
                                                        arrayList = arrayList6;
                                                        w1VarA3 = w1Var;
                                                    } else {
                                                        str17 = str52;
                                                        if (str69 == null && str69.startsWith(str17)) {
                                                            if (map6 != null) {
                                                                int iMax5 = Math.max(0, Math.min(iL4, list3.size()));
                                                                int iP3 = 0;
                                                                for (int i28 = 0; i28 < iMax5; i28++) {
                                                                    iP3 += P0((String) list4.get(i28), map6);
                                                                }
                                                                iMax2 = Math.max(0, Math.min(iP3, iMax5 * 3));
                                                            }
                                                        } else if (map6 != null) {
                                                            size = list3.size();
                                                            iP0 = 0;
                                                            for (i9 = 0; i9 < size; i9++) {
                                                                iP0 += P0((String) list4.get(i9), map6);
                                                            }
                                                            iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                        }
                                                        if (map5 != 0) {
                                                            zBooleanValue = false;
                                                        } else {
                                                            zBooleanValue = false;
                                                        }
                                                        upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                        if (str64.equals(upperCase)) {
                                                            i10 = 1;
                                                        } else if (str49.equals(upperCase)) {
                                                            i10 = 3;
                                                        } else {
                                                            i10 = 0;
                                                        }
                                                        if (sb.length() > 0) {
                                                            str18 = str56;
                                                            sb.append(str18);
                                                        } else {
                                                            str18 = str56;
                                                        }
                                                        iArr2[0] = iArr2[0] + 1;
                                                        if (str16 == null) {
                                                            str19 = str32;
                                                        } else {
                                                            str19 = str16;
                                                        }
                                                        String strConcat2 = str19.concat("01");
                                                        if (str16 != null) {
                                                            str20 = strValueOf4;
                                                        } else {
                                                            str20 = strValueOf4;
                                                        }
                                                        str49 = str49;
                                                        String strK2 = k(Integer.valueOf(i10));
                                                        str52 = str17;
                                                        y1 y1Var3 = new y1();
                                                        str64 = str64;
                                                        y1Var3.f("type", "box");
                                                        map5 = map5;
                                                        String str74 = str15;
                                                        y1Var3.f(str74, "TreasureBox");
                                                        String str75 = str65;
                                                        y1Var3.f(str75, str16);
                                                        str56 = str18;
                                                        String str76 = str14;
                                                        y1Var3.f(str76, str16);
                                                        y1Var3.e(str62, i8);
                                                        y1Var3.e(str70, i8);
                                                        y1Var3.f("name", strConcat2);
                                                        y1Var3.e("open_need_star", iMax);
                                                        y1Var3.e("has_star", iMax2);
                                                        if (zBooleanValue) {
                                                            i11 = 3;
                                                        } else if (iMax2 >= iMax) {
                                                            i11 = 2;
                                                        } else {
                                                            i11 = 1;
                                                        }
                                                        y1Var3.e("can_open", i11);
                                                        y1Var3.g("is_claimed", zBooleanValue);
                                                        y1Var3.g("claimed", zBooleanValue);
                                                        y1Var3.i("direction", strK2);
                                                        y1Var3.e("dungeon_direction", i10);
                                                        y1Var3.f("item_id", str20);
                                                        y1Var3.f("id_item", str20);
                                                        int i29 = i7;
                                                        y1Var3.e("item_num", i29);
                                                        y1Var3.e("num", i29);
                                                        y1Var3.f("reward_item_id", strValueOf4);
                                                        y1Var3.e("reward_num", i29);
                                                        y1Var3.g(str28, true);
                                                        y1Var3.g(str5, true);
                                                        sb.append(y1Var3.b());
                                                        str68 = str70;
                                                        str65 = str75;
                                                        str67 = str74;
                                                        str66 = str76;
                                                        it4 = it5;
                                                        i4 = i24;
                                                        arrayList = arrayList6;
                                                        w1VarA3 = w1Var;
                                                    }
                                                    iMax2 = 0;
                                                    if (map5 != 0) {
                                                        zBooleanValue = false;
                                                    } else {
                                                        zBooleanValue = false;
                                                    }
                                                    upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                    if (str64.equals(upperCase)) {
                                                        i10 = 1;
                                                    } else if (str49.equals(upperCase)) {
                                                        i10 = 3;
                                                    } else {
                                                        i10 = 0;
                                                    }
                                                    if (sb.length() > 0) {
                                                        str18 = str56;
                                                        sb.append(str18);
                                                    } else {
                                                        str18 = str56;
                                                    }
                                                    iArr2[0] = iArr2[0] + 1;
                                                    if (str16 == null) {
                                                        str19 = str32;
                                                    } else {
                                                        str19 = str16;
                                                    }
                                                    String strConcat3 = str19.concat("01");
                                                    if (str16 != null) {
                                                        str20 = strValueOf4;
                                                    } else {
                                                        str20 = strValueOf4;
                                                    }
                                                    str49 = str49;
                                                    String strK3 = k(Integer.valueOf(i10));
                                                    str52 = str17;
                                                    y1 y1Var4 = new y1();
                                                    str64 = str64;
                                                    y1Var4.f("type", "box");
                                                    map5 = map5;
                                                    String str77 = str15;
                                                    y1Var4.f(str77, "TreasureBox");
                                                    String str78 = str65;
                                                    y1Var4.f(str78, str16);
                                                    str56 = str18;
                                                    String str79 = str14;
                                                    y1Var4.f(str79, str16);
                                                    y1Var4.e(str62, i8);
                                                    y1Var4.e(str70, i8);
                                                    y1Var4.f("name", strConcat3);
                                                    y1Var4.e("open_need_star", iMax);
                                                    y1Var4.e("has_star", iMax2);
                                                    if (zBooleanValue) {
                                                        i11 = 3;
                                                    } else if (iMax2 >= iMax) {
                                                        i11 = 2;
                                                    } else {
                                                        i11 = 1;
                                                    }
                                                    y1Var4.e("can_open", i11);
                                                    y1Var4.g("is_claimed", zBooleanValue);
                                                    y1Var4.g("claimed", zBooleanValue);
                                                    y1Var4.i("direction", strK3);
                                                    y1Var4.e("dungeon_direction", i10);
                                                    y1Var4.f("item_id", str20);
                                                    y1Var4.f("id_item", str20);
                                                    int i210 = i7;
                                                    y1Var4.e("item_num", i210);
                                                    y1Var4.e("num", i210);
                                                    y1Var4.f("reward_item_id", strValueOf4);
                                                    y1Var4.e("reward_num", i210);
                                                    y1Var4.g(str28, true);
                                                    y1Var4.g(str5, true);
                                                    sb.append(y1Var4.b());
                                                    str68 = str70;
                                                    str65 = str78;
                                                    str67 = str77;
                                                    str66 = str79;
                                                    it4 = it5;
                                                    i4 = i24;
                                                    arrayList = arrayList6;
                                                    w1VarA3 = w1Var;
                                                }
                                                str68 = str70;
                                                str67 = str15;
                                                str66 = str14;
                                                str28 = str28;
                                                str5 = str5;
                                                arrayList = arrayList6;
                                                map6 = map2;
                                                list4 = list;
                                                str65 = str65;
                                                it4 = it5;
                                                i4 = i24;
                                                w1VarA3 = w1Var;
                                            }
                                            i8 = 0;
                                            if (i8 <= 0) {
                                                map2 = map4;
                                                list = list3;
                                                str69 = str45;
                                            } else if ("null".equals(strValueOf4)) {
                                                map2 = map6;
                                                list = list4;
                                            } else {
                                                str16 = String.valueOf(str45) + String.format(Locale.ROOT, "%03d", Integer.valueOf(Math.max(1, list3.size() + iArr2[0] + 1)));
                                                if (p0(str69, list5)) {
                                                    iMax = 1;
                                                } else {
                                                    iMax = Math.max(0, Math.min(iL4, list3.size())) * 3;
                                                }
                                                if (p0(str69, list5)) {
                                                    if (map6 != null) {
                                                    }
                                                    str17 = str52;
                                                } else {
                                                    str17 = str52;
                                                    if (str69 == null) {
                                                        if (map6 != null) {
                                                            size = list3.size();
                                                            iP0 = 0;
                                                            while (i9 < size) {
                                                                iP0 += P0((String) list4.get(i9), map6);
                                                            }
                                                            iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                        }
                                                    } else if (map6 != null) {
                                                        size = list3.size();
                                                        iP0 = 0;
                                                        while (i9 < size) {
                                                            iP0 += P0((String) list4.get(i9), map6);
                                                        }
                                                        iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                    }
                                                    if (map5 != 0) {
                                                        zBooleanValue = false;
                                                    } else {
                                                        zBooleanValue = false;
                                                    }
                                                    upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                    if (str64.equals(upperCase)) {
                                                        i10 = 1;
                                                    } else if (str49.equals(upperCase)) {
                                                        i10 = 3;
                                                    } else {
                                                        i10 = 0;
                                                    }
                                                    if (sb.length() > 0) {
                                                        str18 = str56;
                                                        sb.append(str18);
                                                    } else {
                                                        str18 = str56;
                                                    }
                                                    iArr2[0] = iArr2[0] + 1;
                                                    if (str16 == null) {
                                                        str19 = str32;
                                                    } else {
                                                        str19 = str16;
                                                    }
                                                    String strConcat4 = str19.concat("01");
                                                    if (str16 != null) {
                                                        str20 = strValueOf4;
                                                    } else {
                                                        str20 = strValueOf4;
                                                    }
                                                    str49 = str49;
                                                    String strK4 = k(Integer.valueOf(i10));
                                                    str52 = str17;
                                                    y1 y1Var5 = new y1();
                                                    str64 = str64;
                                                    y1Var5.f("type", "box");
                                                    map5 = map5;
                                                    String str710 = str15;
                                                    y1Var5.f(str710, "TreasureBox");
                                                    String str711 = str65;
                                                    y1Var5.f(str711, str16);
                                                    str56 = str18;
                                                    String str712 = str14;
                                                    y1Var5.f(str712, str16);
                                                    y1Var5.e(str62, i8);
                                                    y1Var5.e(str70, i8);
                                                    y1Var5.f("name", strConcat4);
                                                    y1Var5.e("open_need_star", iMax);
                                                    y1Var5.e("has_star", iMax2);
                                                    if (zBooleanValue) {
                                                        i11 = 3;
                                                    } else if (iMax2 >= iMax) {
                                                        i11 = 2;
                                                    } else {
                                                        i11 = 1;
                                                    }
                                                    y1Var5.e("can_open", i11);
                                                    y1Var5.g("is_claimed", zBooleanValue);
                                                    y1Var5.g("claimed", zBooleanValue);
                                                    y1Var5.i("direction", strK4);
                                                    y1Var5.e("dungeon_direction", i10);
                                                    y1Var5.f("item_id", str20);
                                                    y1Var5.f("id_item", str20);
                                                    int i211 = i7;
                                                    y1Var5.e("item_num", i211);
                                                    y1Var5.e("num", i211);
                                                    y1Var5.f("reward_item_id", strValueOf4);
                                                    y1Var5.e("reward_num", i211);
                                                    y1Var5.g(str28, true);
                                                    y1Var5.g(str5, true);
                                                    sb.append(y1Var5.b());
                                                    str68 = str70;
                                                    str65 = str711;
                                                    str67 = str710;
                                                    str66 = str712;
                                                    it4 = it5;
                                                    i4 = i24;
                                                    arrayList = arrayList6;
                                                    w1VarA3 = w1Var;
                                                }
                                                iMax2 = 0;
                                                if (map5 != 0) {
                                                    zBooleanValue = false;
                                                } else {
                                                    zBooleanValue = false;
                                                }
                                                upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                if (str64.equals(upperCase)) {
                                                    i10 = 1;
                                                } else if (str49.equals(upperCase)) {
                                                    i10 = 3;
                                                } else {
                                                    i10 = 0;
                                                }
                                                if (sb.length() > 0) {
                                                    str18 = str56;
                                                    sb.append(str18);
                                                } else {
                                                    str18 = str56;
                                                }
                                                iArr2[0] = iArr2[0] + 1;
                                                if (str16 == null) {
                                                    str19 = str32;
                                                } else {
                                                    str19 = str16;
                                                }
                                                String strConcat5 = str19.concat("01");
                                                if (str16 != null) {
                                                    str20 = strValueOf4;
                                                } else {
                                                    str20 = strValueOf4;
                                                }
                                                str49 = str49;
                                                String strK5 = k(Integer.valueOf(i10));
                                                str52 = str17;
                                                y1 y1Var6 = new y1();
                                                str64 = str64;
                                                y1Var6.f("type", "box");
                                                map5 = map5;
                                                String str713 = str15;
                                                y1Var6.f(str713, "TreasureBox");
                                                String str714 = str65;
                                                y1Var6.f(str714, str16);
                                                str56 = str18;
                                                String str715 = str14;
                                                y1Var6.f(str715, str16);
                                                y1Var6.e(str62, i8);
                                                y1Var6.e(str70, i8);
                                                y1Var6.f("name", strConcat5);
                                                y1Var6.e("open_need_star", iMax);
                                                y1Var6.e("has_star", iMax2);
                                                if (zBooleanValue) {
                                                    i11 = 3;
                                                } else if (iMax2 >= iMax) {
                                                    i11 = 2;
                                                } else {
                                                    i11 = 1;
                                                }
                                                y1Var6.e("can_open", i11);
                                                y1Var6.g("is_claimed", zBooleanValue);
                                                y1Var6.g("claimed", zBooleanValue);
                                                y1Var6.i("direction", strK5);
                                                y1Var6.e("dungeon_direction", i10);
                                                y1Var6.f("item_id", str20);
                                                y1Var6.f("id_item", str20);
                                                int i212 = i7;
                                                y1Var6.e("item_num", i212);
                                                y1Var6.e("num", i212);
                                                y1Var6.f("reward_item_id", strValueOf4);
                                                y1Var6.e("reward_num", i212);
                                                y1Var6.g(str28, true);
                                                y1Var6.g(str5, true);
                                                sb.append(y1Var6.b());
                                                str68 = str70;
                                                str65 = str714;
                                                str67 = str713;
                                                str66 = str715;
                                                it4 = it5;
                                                i4 = i24;
                                                arrayList = arrayList6;
                                                w1VarA3 = w1Var;
                                            }
                                            str68 = str70;
                                            str67 = str15;
                                            str66 = str14;
                                            str28 = str28;
                                            str5 = str5;
                                            arrayList = arrayList6;
                                            map6 = map2;
                                            list4 = list;
                                            str65 = str65;
                                            it4 = it5;
                                            i4 = i24;
                                            w1VarA3 = w1Var;
                                        }
                                        i12 = i13;
                                        str60 = str22;
                                        str49 = str49;
                                        str15 = str67;
                                        if (iL3 < 1) {
                                            i8 = 0;
                                        } else {
                                            i8 = 0;
                                        }
                                        if (i8 <= 0) {
                                            map2 = map4;
                                            list = list3;
                                            str69 = str45;
                                        } else if ("null".equals(strValueOf4)) {
                                            map2 = map6;
                                            list = list4;
                                        } else {
                                            str16 = String.valueOf(str45) + String.format(Locale.ROOT, "%03d", Integer.valueOf(Math.max(1, list3.size() + iArr2[0] + 1)));
                                            if (p0(str69, list5)) {
                                                iMax = 1;
                                            } else {
                                                iMax = Math.max(0, Math.min(iL4, list3.size())) * 3;
                                            }
                                            if (p0(str69, list5)) {
                                                if (map6 != null) {
                                                }
                                                str17 = str52;
                                            } else {
                                                str17 = str52;
                                                if (str69 == null) {
                                                    if (map6 != null) {
                                                        size = list3.size();
                                                        iP0 = 0;
                                                        while (i9 < size) {
                                                            iP0 += P0((String) list4.get(i9), map6);
                                                        }
                                                        iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                    }
                                                } else if (map6 != null) {
                                                    size = list3.size();
                                                    iP0 = 0;
                                                    while (i9 < size) {
                                                        iP0 += P0((String) list4.get(i9), map6);
                                                    }
                                                    iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                }
                                                if (map5 != 0) {
                                                    zBooleanValue = false;
                                                } else {
                                                    zBooleanValue = false;
                                                }
                                                upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                if (str64.equals(upperCase)) {
                                                    i10 = 1;
                                                } else if (str49.equals(upperCase)) {
                                                    i10 = 3;
                                                } else {
                                                    i10 = 0;
                                                }
                                                if (sb.length() > 0) {
                                                    str18 = str56;
                                                    sb.append(str18);
                                                } else {
                                                    str18 = str56;
                                                }
                                                iArr2[0] = iArr2[0] + 1;
                                                if (str16 == null) {
                                                    str19 = str32;
                                                } else {
                                                    str19 = str16;
                                                }
                                                String strConcat6 = str19.concat("01");
                                                if (str16 != null) {
                                                    str20 = strValueOf4;
                                                } else {
                                                    str20 = strValueOf4;
                                                }
                                                str49 = str49;
                                                String strK6 = k(Integer.valueOf(i10));
                                                str52 = str17;
                                                y1 y1Var7 = new y1();
                                                str64 = str64;
                                                y1Var7.f("type", "box");
                                                map5 = map5;
                                                String str716 = str15;
                                                y1Var7.f(str716, "TreasureBox");
                                                String str717 = str65;
                                                y1Var7.f(str717, str16);
                                                str56 = str18;
                                                String str718 = str14;
                                                y1Var7.f(str718, str16);
                                                y1Var7.e(str62, i8);
                                                y1Var7.e(str70, i8);
                                                y1Var7.f("name", strConcat6);
                                                y1Var7.e("open_need_star", iMax);
                                                y1Var7.e("has_star", iMax2);
                                                if (zBooleanValue) {
                                                    i11 = 3;
                                                } else if (iMax2 >= iMax) {
                                                    i11 = 2;
                                                } else {
                                                    i11 = 1;
                                                }
                                                y1Var7.e("can_open", i11);
                                                y1Var7.g("is_claimed", zBooleanValue);
                                                y1Var7.g("claimed", zBooleanValue);
                                                y1Var7.i("direction", strK6);
                                                y1Var7.e("dungeon_direction", i10);
                                                y1Var7.f("item_id", str20);
                                                y1Var7.f("id_item", str20);
                                                int i213 = i7;
                                                y1Var7.e("item_num", i213);
                                                y1Var7.e("num", i213);
                                                y1Var7.f("reward_item_id", strValueOf4);
                                                y1Var7.e("reward_num", i213);
                                                y1Var7.g(str28, true);
                                                y1Var7.g(str5, true);
                                                sb.append(y1Var7.b());
                                                str68 = str70;
                                                str65 = str717;
                                                str67 = str716;
                                                str66 = str718;
                                                it4 = it5;
                                                i4 = i24;
                                                arrayList = arrayList6;
                                                w1VarA3 = w1Var;
                                            }
                                            iMax2 = 0;
                                            if (map5 != 0) {
                                                zBooleanValue = false;
                                            } else {
                                                zBooleanValue = false;
                                            }
                                            upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                            if (str64.equals(upperCase)) {
                                                i10 = 1;
                                            } else if (str49.equals(upperCase)) {
                                                i10 = 3;
                                            } else {
                                                i10 = 0;
                                            }
                                            if (sb.length() > 0) {
                                                str18 = str56;
                                                sb.append(str18);
                                            } else {
                                                str18 = str56;
                                            }
                                            iArr2[0] = iArr2[0] + 1;
                                            if (str16 == null) {
                                                str19 = str32;
                                            } else {
                                                str19 = str16;
                                            }
                                            String strConcat7 = str19.concat("01");
                                            if (str16 != null) {
                                                str20 = strValueOf4;
                                            } else {
                                                str20 = strValueOf4;
                                            }
                                            str49 = str49;
                                            String strK7 = k(Integer.valueOf(i10));
                                            str52 = str17;
                                            y1 y1Var8 = new y1();
                                            str64 = str64;
                                            y1Var8.f("type", "box");
                                            map5 = map5;
                                            String str719 = str15;
                                            y1Var8.f(str719, "TreasureBox");
                                            String str7110 = str65;
                                            y1Var8.f(str7110, str16);
                                            str56 = str18;
                                            String str7111 = str14;
                                            y1Var8.f(str7111, str16);
                                            y1Var8.e(str62, i8);
                                            y1Var8.e(str70, i8);
                                            y1Var8.f("name", strConcat7);
                                            y1Var8.e("open_need_star", iMax);
                                            y1Var8.e("has_star", iMax2);
                                            if (zBooleanValue) {
                                                i11 = 3;
                                            } else if (iMax2 >= iMax) {
                                                i11 = 2;
                                            } else {
                                                i11 = 1;
                                            }
                                            y1Var8.e("can_open", i11);
                                            y1Var8.g("is_claimed", zBooleanValue);
                                            y1Var8.g("claimed", zBooleanValue);
                                            y1Var8.i("direction", strK7);
                                            y1Var8.e("dungeon_direction", i10);
                                            y1Var8.f("item_id", str20);
                                            y1Var8.f("id_item", str20);
                                            int i214 = i7;
                                            y1Var8.e("item_num", i214);
                                            y1Var8.e("num", i214);
                                            y1Var8.f("reward_item_id", strValueOf4);
                                            y1Var8.e("reward_num", i214);
                                            y1Var8.g(str28, true);
                                            y1Var8.g(str5, true);
                                            sb.append(y1Var8.b());
                                            str68 = str70;
                                            str65 = str7110;
                                            str67 = str719;
                                            str66 = str7111;
                                            it4 = it5;
                                            i4 = i24;
                                            arrayList = arrayList6;
                                            w1VarA3 = w1Var;
                                        }
                                        str68 = str70;
                                        str67 = str15;
                                        str66 = str14;
                                        str28 = str28;
                                        str5 = str5;
                                        arrayList = arrayList6;
                                        map6 = map2;
                                        list4 = list;
                                        str65 = str65;
                                        it4 = it5;
                                        i4 = i24;
                                        w1VarA3 = w1Var;
                                    } else {
                                        w1Var = w1VarA3;
                                    }
                                    str21 = str62;
                                    int iL6 = w1.l2(String.valueOf(mapX0.getOrDefault(str21, "0")), 0);
                                    if (iL6 <= 0) {
                                        str62 = str21;
                                    } else {
                                        int i30 = iL6 - 1;
                                        iL2 = (i30 % 4) + 1;
                                        iL3 = (i30 / 4) + 1;
                                        i7 = iL5;
                                        upperCase2 = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                        str64 = str64;
                                        if (str64.equals(upperCase2)) {
                                            i13 = iL2 - 1;
                                            str62 = str21;
                                            str22 = str60;
                                        } else {
                                            str62 = str21;
                                            str22 = str60;
                                            if (str22.equals(upperCase2)) {
                                                i13 = iL2 + 1;
                                            } else {
                                                int i215 = iL2;
                                                str49 = str49;
                                                if (str49.equals(upperCase2)) {
                                                    iL3--;
                                                    str60 = str22;
                                                    str23 = str59;
                                                } else {
                                                    str60 = str22;
                                                    str23 = str59;
                                                    if (str23.equals(upperCase2)) {
                                                        iL3++;
                                                    } else {
                                                        str59 = str23;
                                                        str15 = str67;
                                                    }
                                                }
                                                str59 = str23;
                                                i12 = i215;
                                                str15 = str67;
                                                if (iL3 < 1) {
                                                }
                                                if (i8 <= 0) {
                                                    map2 = map4;
                                                    list = list3;
                                                    str69 = str45;
                                                } else if ("null".equals(strValueOf4)) {
                                                    map2 = map6;
                                                    list = list4;
                                                } else {
                                                    str16 = String.valueOf(str45) + String.format(Locale.ROOT, "%03d", Integer.valueOf(Math.max(1, list3.size() + iArr2[0] + 1)));
                                                    if (p0(str69, list5)) {
                                                        iMax = 1;
                                                    } else {
                                                        iMax = Math.max(0, Math.min(iL4, list3.size())) * 3;
                                                    }
                                                    if (p0(str69, list5)) {
                                                        if (map6 != null) {
                                                        }
                                                        str17 = str52;
                                                    } else {
                                                        str17 = str52;
                                                        if (str69 == null) {
                                                            if (map6 != null) {
                                                                size = list3.size();
                                                                iP0 = 0;
                                                                while (i9 < size) {
                                                                    iP0 += P0((String) list4.get(i9), map6);
                                                                }
                                                                iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                            }
                                                        } else if (map6 != null) {
                                                            size = list3.size();
                                                            iP0 = 0;
                                                            while (i9 < size) {
                                                                iP0 += P0((String) list4.get(i9), map6);
                                                            }
                                                            iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                        }
                                                        if (map5 != 0) {
                                                            zBooleanValue = false;
                                                        } else {
                                                            zBooleanValue = false;
                                                        }
                                                        upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                        if (str64.equals(upperCase)) {
                                                            i10 = 1;
                                                        } else if (str49.equals(upperCase)) {
                                                            i10 = 3;
                                                        } else {
                                                            i10 = 0;
                                                        }
                                                        if (sb.length() > 0) {
                                                            str18 = str56;
                                                            sb.append(str18);
                                                        } else {
                                                            str18 = str56;
                                                        }
                                                        iArr2[0] = iArr2[0] + 1;
                                                        if (str16 == null) {
                                                            str19 = str32;
                                                        } else {
                                                            str19 = str16;
                                                        }
                                                        String strConcat8 = str19.concat("01");
                                                        if (str16 != null) {
                                                            str20 = strValueOf4;
                                                        } else {
                                                            str20 = strValueOf4;
                                                        }
                                                        str49 = str49;
                                                        String strK8 = k(Integer.valueOf(i10));
                                                        str52 = str17;
                                                        y1 y1Var9 = new y1();
                                                        str64 = str64;
                                                        y1Var9.f("type", "box");
                                                        map5 = map5;
                                                        String str7112 = str15;
                                                        y1Var9.f(str7112, "TreasureBox");
                                                        String str7113 = str65;
                                                        y1Var9.f(str7113, str16);
                                                        str56 = str18;
                                                        String str7114 = str14;
                                                        y1Var9.f(str7114, str16);
                                                        y1Var9.e(str62, i8);
                                                        y1Var9.e(str70, i8);
                                                        y1Var9.f("name", strConcat8);
                                                        y1Var9.e("open_need_star", iMax);
                                                        y1Var9.e("has_star", iMax2);
                                                        if (zBooleanValue) {
                                                            i11 = 3;
                                                        } else if (iMax2 >= iMax) {
                                                            i11 = 2;
                                                        } else {
                                                            i11 = 1;
                                                        }
                                                        y1Var9.e("can_open", i11);
                                                        y1Var9.g("is_claimed", zBooleanValue);
                                                        y1Var9.g("claimed", zBooleanValue);
                                                        y1Var9.i("direction", strK8);
                                                        y1Var9.e("dungeon_direction", i10);
                                                        y1Var9.f("item_id", str20);
                                                        y1Var9.f("id_item", str20);
                                                        int i216 = i7;
                                                        y1Var9.e("item_num", i216);
                                                        y1Var9.e("num", i216);
                                                        y1Var9.f("reward_item_id", strValueOf4);
                                                        y1Var9.e("reward_num", i216);
                                                        y1Var9.g(str28, true);
                                                        y1Var9.g(str5, true);
                                                        sb.append(y1Var9.b());
                                                        str68 = str70;
                                                        str65 = str7113;
                                                        str67 = str7112;
                                                        str66 = str7114;
                                                        it4 = it5;
                                                        i4 = i24;
                                                        arrayList = arrayList6;
                                                        w1VarA3 = w1Var;
                                                    }
                                                    iMax2 = 0;
                                                    if (map5 != 0) {
                                                        zBooleanValue = false;
                                                    } else {
                                                        zBooleanValue = false;
                                                    }
                                                    upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                    if (str64.equals(upperCase)) {
                                                        i10 = 1;
                                                    } else if (str49.equals(upperCase)) {
                                                        i10 = 3;
                                                    } else {
                                                        i10 = 0;
                                                    }
                                                    if (sb.length() > 0) {
                                                        str18 = str56;
                                                        sb.append(str18);
                                                    } else {
                                                        str18 = str56;
                                                    }
                                                    iArr2[0] = iArr2[0] + 1;
                                                    if (str16 == null) {
                                                        str19 = str32;
                                                    } else {
                                                        str19 = str16;
                                                    }
                                                    String strConcat9 = str19.concat("01");
                                                    if (str16 != null) {
                                                        str20 = strValueOf4;
                                                    } else {
                                                        str20 = strValueOf4;
                                                    }
                                                    str49 = str49;
                                                    String strK9 = k(Integer.valueOf(i10));
                                                    str52 = str17;
                                                    y1 y1Var10 = new y1();
                                                    str64 = str64;
                                                    y1Var10.f("type", "box");
                                                    map5 = map5;
                                                    String str7115 = str15;
                                                    y1Var10.f(str7115, "TreasureBox");
                                                    String str7116 = str65;
                                                    y1Var10.f(str7116, str16);
                                                    str56 = str18;
                                                    String str7117 = str14;
                                                    y1Var10.f(str7117, str16);
                                                    y1Var10.e(str62, i8);
                                                    y1Var10.e(str70, i8);
                                                    y1Var10.f("name", strConcat9);
                                                    y1Var10.e("open_need_star", iMax);
                                                    y1Var10.e("has_star", iMax2);
                                                    if (zBooleanValue) {
                                                        i11 = 3;
                                                    } else if (iMax2 >= iMax) {
                                                        i11 = 2;
                                                    } else {
                                                        i11 = 1;
                                                    }
                                                    y1Var10.e("can_open", i11);
                                                    y1Var10.g("is_claimed", zBooleanValue);
                                                    y1Var10.g("claimed", zBooleanValue);
                                                    y1Var10.i("direction", strK9);
                                                    y1Var10.e("dungeon_direction", i10);
                                                    y1Var10.f("item_id", str20);
                                                    y1Var10.f("id_item", str20);
                                                    int i217 = i7;
                                                    y1Var10.e("item_num", i217);
                                                    y1Var10.e("num", i217);
                                                    y1Var10.f("reward_item_id", strValueOf4);
                                                    y1Var10.e("reward_num", i217);
                                                    y1Var10.g(str28, true);
                                                    y1Var10.g(str5, true);
                                                    sb.append(y1Var10.b());
                                                    str68 = str70;
                                                    str65 = str7116;
                                                    str67 = str7115;
                                                    str66 = str7117;
                                                    it4 = it5;
                                                    i4 = i24;
                                                    arrayList = arrayList6;
                                                    w1VarA3 = w1Var;
                                                }
                                                str68 = str70;
                                                str67 = str15;
                                                str66 = str14;
                                                str28 = str28;
                                                str5 = str5;
                                                arrayList = arrayList6;
                                                map6 = map2;
                                                list4 = list;
                                                str65 = str65;
                                                it4 = it5;
                                                i4 = i24;
                                                w1VarA3 = w1Var;
                                            }
                                            i8 = 0;
                                            if (i8 <= 0) {
                                                map2 = map4;
                                                list = list3;
                                                str69 = str45;
                                            } else if ("null".equals(strValueOf4)) {
                                                map2 = map6;
                                                list = list4;
                                            } else {
                                                str16 = String.valueOf(str45) + String.format(Locale.ROOT, "%03d", Integer.valueOf(Math.max(1, list3.size() + iArr2[0] + 1)));
                                                if (p0(str69, list5)) {
                                                    iMax = 1;
                                                } else {
                                                    iMax = Math.max(0, Math.min(iL4, list3.size())) * 3;
                                                }
                                                if (p0(str69, list5)) {
                                                    if (map6 != null) {
                                                    }
                                                    str17 = str52;
                                                } else {
                                                    str17 = str52;
                                                    if (str69 == null) {
                                                        if (map6 != null) {
                                                            size = list3.size();
                                                            iP0 = 0;
                                                            while (i9 < size) {
                                                                iP0 += P0((String) list4.get(i9), map6);
                                                            }
                                                            iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                        }
                                                    } else if (map6 != null) {
                                                        size = list3.size();
                                                        iP0 = 0;
                                                        while (i9 < size) {
                                                            iP0 += P0((String) list4.get(i9), map6);
                                                        }
                                                        iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                    }
                                                    if (map5 != 0) {
                                                        zBooleanValue = false;
                                                    } else {
                                                        zBooleanValue = false;
                                                    }
                                                    upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                    if (str64.equals(upperCase)) {
                                                        i10 = 1;
                                                    } else if (str49.equals(upperCase)) {
                                                        i10 = 3;
                                                    } else {
                                                        i10 = 0;
                                                    }
                                                    if (sb.length() > 0) {
                                                        str18 = str56;
                                                        sb.append(str18);
                                                    } else {
                                                        str18 = str56;
                                                    }
                                                    iArr2[0] = iArr2[0] + 1;
                                                    if (str16 == null) {
                                                        str19 = str32;
                                                    } else {
                                                        str19 = str16;
                                                    }
                                                    String strConcat10 = str19.concat("01");
                                                    if (str16 != null) {
                                                        str20 = strValueOf4;
                                                    } else {
                                                        str20 = strValueOf4;
                                                    }
                                                    str49 = str49;
                                                    String strK10 = k(Integer.valueOf(i10));
                                                    str52 = str17;
                                                    y1 y1Var11 = new y1();
                                                    str64 = str64;
                                                    y1Var11.f("type", "box");
                                                    map5 = map5;
                                                    String str7118 = str15;
                                                    y1Var11.f(str7118, "TreasureBox");
                                                    String str7119 = str65;
                                                    y1Var11.f(str7119, str16);
                                                    str56 = str18;
                                                    String str71110 = str14;
                                                    y1Var11.f(str71110, str16);
                                                    y1Var11.e(str62, i8);
                                                    y1Var11.e(str70, i8);
                                                    y1Var11.f("name", strConcat10);
                                                    y1Var11.e("open_need_star", iMax);
                                                    y1Var11.e("has_star", iMax2);
                                                    if (zBooleanValue) {
                                                        i11 = 3;
                                                    } else if (iMax2 >= iMax) {
                                                        i11 = 2;
                                                    } else {
                                                        i11 = 1;
                                                    }
                                                    y1Var11.e("can_open", i11);
                                                    y1Var11.g("is_claimed", zBooleanValue);
                                                    y1Var11.g("claimed", zBooleanValue);
                                                    y1Var11.i("direction", strK10);
                                                    y1Var11.e("dungeon_direction", i10);
                                                    y1Var11.f("item_id", str20);
                                                    y1Var11.f("id_item", str20);
                                                    int i218 = i7;
                                                    y1Var11.e("item_num", i218);
                                                    y1Var11.e("num", i218);
                                                    y1Var11.f("reward_item_id", strValueOf4);
                                                    y1Var11.e("reward_num", i218);
                                                    y1Var11.g(str28, true);
                                                    y1Var11.g(str5, true);
                                                    sb.append(y1Var11.b());
                                                    str68 = str70;
                                                    str65 = str7119;
                                                    str67 = str7118;
                                                    str66 = str71110;
                                                    it4 = it5;
                                                    i4 = i24;
                                                    arrayList = arrayList6;
                                                    w1VarA3 = w1Var;
                                                }
                                                iMax2 = 0;
                                                if (map5 != 0) {
                                                    zBooleanValue = false;
                                                } else {
                                                    zBooleanValue = false;
                                                }
                                                upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                if (str64.equals(upperCase)) {
                                                    i10 = 1;
                                                } else if (str49.equals(upperCase)) {
                                                    i10 = 3;
                                                } else {
                                                    i10 = 0;
                                                }
                                                if (sb.length() > 0) {
                                                    str18 = str56;
                                                    sb.append(str18);
                                                } else {
                                                    str18 = str56;
                                                }
                                                iArr2[0] = iArr2[0] + 1;
                                                if (str16 == null) {
                                                    str19 = str32;
                                                } else {
                                                    str19 = str16;
                                                }
                                                String strConcat11 = str19.concat("01");
                                                if (str16 != null) {
                                                    str20 = strValueOf4;
                                                } else {
                                                    str20 = strValueOf4;
                                                }
                                                str49 = str49;
                                                String strK11 = k(Integer.valueOf(i10));
                                                str52 = str17;
                                                y1 y1Var12 = new y1();
                                                str64 = str64;
                                                y1Var12.f("type", "box");
                                                map5 = map5;
                                                String str71111 = str15;
                                                y1Var12.f(str71111, "TreasureBox");
                                                String str71112 = str65;
                                                y1Var12.f(str71112, str16);
                                                str56 = str18;
                                                String str71113 = str14;
                                                y1Var12.f(str71113, str16);
                                                y1Var12.e(str62, i8);
                                                y1Var12.e(str70, i8);
                                                y1Var12.f("name", strConcat11);
                                                y1Var12.e("open_need_star", iMax);
                                                y1Var12.e("has_star", iMax2);
                                                if (zBooleanValue) {
                                                    i11 = 3;
                                                } else if (iMax2 >= iMax) {
                                                    i11 = 2;
                                                } else {
                                                    i11 = 1;
                                                }
                                                y1Var12.e("can_open", i11);
                                                y1Var12.g("is_claimed", zBooleanValue);
                                                y1Var12.g("claimed", zBooleanValue);
                                                y1Var12.i("direction", strK11);
                                                y1Var12.e("dungeon_direction", i10);
                                                y1Var12.f("item_id", str20);
                                                y1Var12.f("id_item", str20);
                                                int i219 = i7;
                                                y1Var12.e("item_num", i219);
                                                y1Var12.e("num", i219);
                                                y1Var12.f("reward_item_id", strValueOf4);
                                                y1Var12.e("reward_num", i219);
                                                y1Var12.g(str28, true);
                                                y1Var12.g(str5, true);
                                                sb.append(y1Var12.b());
                                                str68 = str70;
                                                str65 = str71112;
                                                str67 = str71111;
                                                str66 = str71113;
                                                it4 = it5;
                                                i4 = i24;
                                                arrayList = arrayList6;
                                                w1VarA3 = w1Var;
                                            }
                                            str68 = str70;
                                            str67 = str15;
                                            str66 = str14;
                                            str28 = str28;
                                            str5 = str5;
                                            arrayList = arrayList6;
                                            map6 = map2;
                                            list4 = list;
                                            str65 = str65;
                                            it4 = it5;
                                            i4 = i24;
                                            w1VarA3 = w1Var;
                                        }
                                        i12 = i13;
                                        str60 = str22;
                                        str49 = str49;
                                        str15 = str67;
                                        if (iL3 < 1) {
                                            i8 = 0;
                                        } else {
                                            i8 = 0;
                                        }
                                        if (i8 <= 0) {
                                            map2 = map4;
                                            list = list3;
                                            str69 = str45;
                                        } else if ("null".equals(strValueOf4)) {
                                            map2 = map6;
                                            list = list4;
                                        } else {
                                            str16 = String.valueOf(str45) + String.format(Locale.ROOT, "%03d", Integer.valueOf(Math.max(1, list3.size() + iArr2[0] + 1)));
                                            if (p0(str69, list5)) {
                                                iMax = 1;
                                            } else {
                                                iMax = Math.max(0, Math.min(iL4, list3.size())) * 3;
                                            }
                                            if (p0(str69, list5)) {
                                                if (map6 != null) {
                                                }
                                                str17 = str52;
                                            } else {
                                                str17 = str52;
                                                if (str69 == null) {
                                                    if (map6 != null) {
                                                        size = list3.size();
                                                        iP0 = 0;
                                                        while (i9 < size) {
                                                            iP0 += P0((String) list4.get(i9), map6);
                                                        }
                                                        iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                    }
                                                } else if (map6 != null) {
                                                    size = list3.size();
                                                    iP0 = 0;
                                                    while (i9 < size) {
                                                        iP0 += P0((String) list4.get(i9), map6);
                                                    }
                                                    iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                                }
                                                if (map5 != 0) {
                                                    zBooleanValue = false;
                                                } else {
                                                    zBooleanValue = false;
                                                }
                                                upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                                if (str64.equals(upperCase)) {
                                                    i10 = 1;
                                                } else if (str49.equals(upperCase)) {
                                                    i10 = 3;
                                                } else {
                                                    i10 = 0;
                                                }
                                                if (sb.length() > 0) {
                                                    str18 = str56;
                                                    sb.append(str18);
                                                } else {
                                                    str18 = str56;
                                                }
                                                iArr2[0] = iArr2[0] + 1;
                                                if (str16 == null) {
                                                    str19 = str32;
                                                } else {
                                                    str19 = str16;
                                                }
                                                String strConcat12 = str19.concat("01");
                                                if (str16 != null) {
                                                    str20 = strValueOf4;
                                                } else {
                                                    str20 = strValueOf4;
                                                }
                                                str49 = str49;
                                                String strK12 = k(Integer.valueOf(i10));
                                                str52 = str17;
                                                y1 y1Var13 = new y1();
                                                str64 = str64;
                                                y1Var13.f("type", "box");
                                                map5 = map5;
                                                String str71114 = str15;
                                                y1Var13.f(str71114, "TreasureBox");
                                                String str71115 = str65;
                                                y1Var13.f(str71115, str16);
                                                str56 = str18;
                                                String str71116 = str14;
                                                y1Var13.f(str71116, str16);
                                                y1Var13.e(str62, i8);
                                                y1Var13.e(str70, i8);
                                                y1Var13.f("name", strConcat12);
                                                y1Var13.e("open_need_star", iMax);
                                                y1Var13.e("has_star", iMax2);
                                                if (zBooleanValue) {
                                                    i11 = 3;
                                                } else if (iMax2 >= iMax) {
                                                    i11 = 2;
                                                } else {
                                                    i11 = 1;
                                                }
                                                y1Var13.e("can_open", i11);
                                                y1Var13.g("is_claimed", zBooleanValue);
                                                y1Var13.g("claimed", zBooleanValue);
                                                y1Var13.i("direction", strK12);
                                                y1Var13.e("dungeon_direction", i10);
                                                y1Var13.f("item_id", str20);
                                                y1Var13.f("id_item", str20);
                                                int i2110 = i7;
                                                y1Var13.e("item_num", i2110);
                                                y1Var13.e("num", i2110);
                                                y1Var13.f("reward_item_id", strValueOf4);
                                                y1Var13.e("reward_num", i2110);
                                                y1Var13.g(str28, true);
                                                y1Var13.g(str5, true);
                                                sb.append(y1Var13.b());
                                                str68 = str70;
                                                str65 = str71115;
                                                str67 = str71114;
                                                str66 = str71116;
                                                it4 = it5;
                                                i4 = i24;
                                                arrayList = arrayList6;
                                                w1VarA3 = w1Var;
                                            }
                                            iMax2 = 0;
                                            if (map5 != 0) {
                                                zBooleanValue = false;
                                            } else {
                                                zBooleanValue = false;
                                            }
                                            upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                            if (str64.equals(upperCase)) {
                                                i10 = 1;
                                            } else if (str49.equals(upperCase)) {
                                                i10 = 3;
                                            } else {
                                                i10 = 0;
                                            }
                                            if (sb.length() > 0) {
                                                str18 = str56;
                                                sb.append(str18);
                                            } else {
                                                str18 = str56;
                                            }
                                            iArr2[0] = iArr2[0] + 1;
                                            if (str16 == null) {
                                                str19 = str32;
                                            } else {
                                                str19 = str16;
                                            }
                                            String strConcat13 = str19.concat("01");
                                            if (str16 != null) {
                                                str20 = strValueOf4;
                                            } else {
                                                str20 = strValueOf4;
                                            }
                                            str49 = str49;
                                            String strK13 = k(Integer.valueOf(i10));
                                            str52 = str17;
                                            y1 y1Var14 = new y1();
                                            str64 = str64;
                                            y1Var14.f("type", "box");
                                            map5 = map5;
                                            String str71117 = str15;
                                            y1Var14.f(str71117, "TreasureBox");
                                            String str71118 = str65;
                                            y1Var14.f(str71118, str16);
                                            str56 = str18;
                                            String str71119 = str14;
                                            y1Var14.f(str71119, str16);
                                            y1Var14.e(str62, i8);
                                            y1Var14.e(str70, i8);
                                            y1Var14.f("name", strConcat13);
                                            y1Var14.e("open_need_star", iMax);
                                            y1Var14.e("has_star", iMax2);
                                            if (zBooleanValue) {
                                                i11 = 3;
                                            } else if (iMax2 >= iMax) {
                                                i11 = 2;
                                            } else {
                                                i11 = 1;
                                            }
                                            y1Var14.e("can_open", i11);
                                            y1Var14.g("is_claimed", zBooleanValue);
                                            y1Var14.g("claimed", zBooleanValue);
                                            y1Var14.i("direction", strK13);
                                            y1Var14.e("dungeon_direction", i10);
                                            y1Var14.f("item_id", str20);
                                            y1Var14.f("id_item", str20);
                                            int i2111 = i7;
                                            y1Var14.e("item_num", i2111);
                                            y1Var14.e("num", i2111);
                                            y1Var14.f("reward_item_id", strValueOf4);
                                            y1Var14.e("reward_num", i2111);
                                            y1Var14.g(str28, true);
                                            y1Var14.g(str5, true);
                                            sb.append(y1Var14.b());
                                            str68 = str70;
                                            str65 = str71118;
                                            str67 = str71117;
                                            str66 = str71119;
                                            it4 = it5;
                                            i4 = i24;
                                            arrayList = arrayList6;
                                            w1VarA3 = w1Var;
                                        }
                                        str68 = str70;
                                        str67 = str15;
                                        str66 = str14;
                                        str28 = str28;
                                        str5 = str5;
                                        arrayList = arrayList6;
                                        map6 = map2;
                                        list4 = list;
                                        str65 = str65;
                                        it4 = it5;
                                        i4 = i24;
                                        w1VarA3 = w1Var;
                                    }
                                }
                                str15 = str67;
                                i7 = iL5;
                                str49 = str49;
                                str64 = str64;
                                i8 = 0;
                                if (i8 <= 0) {
                                    map2 = map4;
                                    list = list3;
                                    str69 = str45;
                                } else if ("null".equals(strValueOf4)) {
                                    map2 = map6;
                                    list = list4;
                                } else {
                                    str16 = String.valueOf(str45) + String.format(Locale.ROOT, "%03d", Integer.valueOf(Math.max(1, list3.size() + iArr2[0] + 1)));
                                    if (p0(str69, list5)) {
                                        iMax = 1;
                                    } else {
                                        iMax = Math.max(0, Math.min(iL4, list3.size())) * 3;
                                    }
                                    if (p0(str69, list5)) {
                                        if (map6 != null) {
                                        }
                                        str17 = str52;
                                    } else {
                                        str17 = str52;
                                        if (str69 == null) {
                                            if (map6 != null) {
                                                size = list3.size();
                                                iP0 = 0;
                                                while (i9 < size) {
                                                    iP0 += P0((String) list4.get(i9), map6);
                                                }
                                                iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                            }
                                        } else if (map6 != null) {
                                            size = list3.size();
                                            iP0 = 0;
                                            while (i9 < size) {
                                                iP0 += P0((String) list4.get(i9), map6);
                                            }
                                            iMax2 = Math.max(0, Math.min(iP0, size * 3));
                                        }
                                        if (map5 != 0) {
                                            zBooleanValue = false;
                                        } else {
                                            zBooleanValue = false;
                                        }
                                        upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                        if (str64.equals(upperCase)) {
                                            i10 = 1;
                                        } else if (str49.equals(upperCase)) {
                                            i10 = 3;
                                        } else {
                                            i10 = 0;
                                        }
                                        if (sb.length() > 0) {
                                            str18 = str56;
                                            sb.append(str18);
                                        } else {
                                            str18 = str56;
                                        }
                                        iArr2[0] = iArr2[0] + 1;
                                        if (str16 == null) {
                                            str19 = str32;
                                        } else {
                                            str19 = str16;
                                        }
                                        String strConcat14 = str19.concat("01");
                                        if (str16 != null) {
                                            str20 = strValueOf4;
                                        } else {
                                            str20 = strValueOf4;
                                        }
                                        str49 = str49;
                                        String strK14 = k(Integer.valueOf(i10));
                                        str52 = str17;
                                        y1 y1Var15 = new y1();
                                        str64 = str64;
                                        y1Var15.f("type", "box");
                                        map5 = map5;
                                        String str711110 = str15;
                                        y1Var15.f(str711110, "TreasureBox");
                                        String str711111 = str65;
                                        y1Var15.f(str711111, str16);
                                        str56 = str18;
                                        String str711112 = str14;
                                        y1Var15.f(str711112, str16);
                                        y1Var15.e(str62, i8);
                                        y1Var15.e(str70, i8);
                                        y1Var15.f("name", strConcat14);
                                        y1Var15.e("open_need_star", iMax);
                                        y1Var15.e("has_star", iMax2);
                                        if (zBooleanValue) {
                                            i11 = 3;
                                        } else if (iMax2 >= iMax) {
                                            i11 = 2;
                                        } else {
                                            i11 = 1;
                                        }
                                        y1Var15.e("can_open", i11);
                                        y1Var15.g("is_claimed", zBooleanValue);
                                        y1Var15.g("claimed", zBooleanValue);
                                        y1Var15.i("direction", strK14);
                                        y1Var15.e("dungeon_direction", i10);
                                        y1Var15.f("item_id", str20);
                                        y1Var15.f("id_item", str20);
                                        int i2112 = i7;
                                        y1Var15.e("item_num", i2112);
                                        y1Var15.e("num", i2112);
                                        y1Var15.f("reward_item_id", strValueOf4);
                                        y1Var15.e("reward_num", i2112);
                                        y1Var15.g(str28, true);
                                        y1Var15.g(str5, true);
                                        sb.append(y1Var15.b());
                                        str68 = str70;
                                        str65 = str711111;
                                        str67 = str711110;
                                        str66 = str711112;
                                        it4 = it5;
                                        i4 = i24;
                                        arrayList = arrayList6;
                                        w1VarA3 = w1Var;
                                    }
                                    iMax2 = 0;
                                    if (map5 != 0) {
                                        zBooleanValue = false;
                                    } else {
                                        zBooleanValue = false;
                                    }
                                    upperCase = strValueOf2.trim().toUpperCase(Locale.ROOT);
                                    if (str64.equals(upperCase)) {
                                        i10 = 1;
                                    } else if (str49.equals(upperCase)) {
                                        i10 = 3;
                                    } else {
                                        i10 = 0;
                                    }
                                    if (sb.length() > 0) {
                                        str18 = str56;
                                        sb.append(str18);
                                    } else {
                                        str18 = str56;
                                    }
                                    iArr2[0] = iArr2[0] + 1;
                                    if (str16 == null) {
                                        str19 = str32;
                                    } else {
                                        str19 = str16;
                                    }
                                    String strConcat15 = str19.concat("01");
                                    if (str16 != null) {
                                        str20 = strValueOf4;
                                    } else {
                                        str20 = strValueOf4;
                                    }
                                    str49 = str49;
                                    String strK15 = k(Integer.valueOf(i10));
                                    str52 = str17;
                                    y1 y1Var16 = new y1();
                                    str64 = str64;
                                    y1Var16.f("type", "box");
                                    map5 = map5;
                                    String str711113 = str15;
                                    y1Var16.f(str711113, "TreasureBox");
                                    String str711114 = str65;
                                    y1Var16.f(str711114, str16);
                                    str56 = str18;
                                    String str711115 = str14;
                                    y1Var16.f(str711115, str16);
                                    y1Var16.e(str62, i8);
                                    y1Var16.e(str70, i8);
                                    y1Var16.f("name", strConcat15);
                                    y1Var16.e("open_need_star", iMax);
                                    y1Var16.e("has_star", iMax2);
                                    if (zBooleanValue) {
                                        i11 = 3;
                                    } else if (iMax2 >= iMax) {
                                        i11 = 2;
                                    } else {
                                        i11 = 1;
                                    }
                                    y1Var16.e("can_open", i11);
                                    y1Var16.g("is_claimed", zBooleanValue);
                                    y1Var16.g("claimed", zBooleanValue);
                                    y1Var16.i("direction", strK15);
                                    y1Var16.e("dungeon_direction", i10);
                                    y1Var16.f("item_id", str20);
                                    y1Var16.f("id_item", str20);
                                    int i2113 = i7;
                                    y1Var16.e("item_num", i2113);
                                    y1Var16.e("num", i2113);
                                    y1Var16.f("reward_item_id", strValueOf4);
                                    y1Var16.e("reward_num", i2113);
                                    y1Var16.g(str28, true);
                                    y1Var16.g(str5, true);
                                    sb.append(y1Var16.b());
                                    str68 = str70;
                                    str65 = str711114;
                                    str67 = str711113;
                                    str66 = str711115;
                                    it4 = it5;
                                    i4 = i24;
                                    arrayList = arrayList6;
                                    w1VarA3 = w1Var;
                                }
                                str68 = str70;
                                str67 = str15;
                                str66 = str14;
                                str28 = str28;
                                str5 = str5;
                                arrayList = arrayList6;
                                map6 = map2;
                                list4 = list;
                                str65 = str65;
                                it4 = it5;
                                i4 = i24;
                                w1VarA3 = w1Var;
                            }
                        }
                    }
                    str6 = str28;
                    arrayList2 = arrayList;
                    str7 = str65;
                    str8 = str66;
                    str9 = str67;
                    str10 = str68;
                    i5 = i4;
                    str11 = str5;
                    string = sb.toString();
                }
                if (string.isEmpty() && !string.isEmpty()) {
                    ArrayList<String> arrayList7 = new ArrayList();
                    int i31 = 0;
                    boolean z5 = false;
                    boolean z6 = false;
                    int i32 = -1;
                    for (int i33 = 0; i33 < string.length(); i33++) {
                        char cCharAt = string.charAt(i33);
                        if (z5) {
                            if (z6) {
                                z6 = false;
                            } else if (cCharAt == '\\') {
                                z6 = true;
                            } else if (cCharAt == '\"') {
                                z5 = false;
                            }
                        } else if (cCharAt == '\"') {
                            z5 = true;
                        } else if (cCharAt == '{') {
                            if (i31 == 0) {
                                i32 = i33;
                            }
                            i31++;
                        } else if (cCharAt == '}' && (i31 = i31 - 1) == 0 && i32 >= 0) {
                            arrayList7.add(string.substring(i32, i33 + 1));
                            i32 = -1;
                        }
                    }
                    for (String str80 : arrayList7) {
                        if (str80 == null || str80.isEmpty()) {
                            i6 = Integer.MAX_VALUE;
                            iOptInt = i6;
                        } else {
                            try {
                                i6 = Integer.MAX_VALUE;
                                try {
                                    iOptInt = new JSONObject(str80).optInt(str10, Integer.MAX_VALUE);
                                } catch (JSONException unused3) {
                                    iOptInt = i6;
                                }
                            } catch (JSONException unused4) {
                                i6 = Integer.MAX_VALUE;
                            }
                        }
                        int size3 = arrayList2.size();
                        if (str80 == null || str80.isEmpty()) {
                            str12 = str10;
                            str13 = str32;
                            strOptString = "unknown";
                        } else {
                            try {
                                JSONObject jSONObject = new JSONObject(str80);
                                strOptString = jSONObject.optString(str9, jSONObject.optString("type", "node"));
                                str12 = str10;
                                str13 = str32;
                                try {
                                    String strOptString2 = jSONObject.optString("dungeon_id", jSONObject.optString(str8, jSONObject.optString(str7, str13)));
                                    if (!strOptString2.isEmpty()) {
                                        strOptString = strOptString + ":" + strOptString2;
                                    }
                                } catch (JSONException unused5) {
                                    strOptString = "unknown";
                                }
                            } catch (JSONException unused6) {
                                str12 = str10;
                                str13 = str32;
                            }
                        }
                        arrayList2.add(new f5(iOptInt, size3, strOptString, str80));
                        str32 = str13;
                        str10 = str12;
                    }
                }
                arrayList5 = arrayList2;
                str32 = str32;
                str28 = str6;
                mapV0 = map4;
                mapV1 = map3;
                p4Var4 = p4Var5;
                iMax4 = i23;
                iArr = iArr2;
                linkedHashMap = linkedHashMap4;
                linkedHashMap2 = linkedHashMap3;
                i21 = i5;
                listM1 = list3;
                z = z4;
                str30 = str50;
                mapV2 = map5;
                str33 = str52;
                str27 = str53;
                str35 = str54;
                str31 = str51;
                str36 = str55;
                str38 = str57;
                str43 = str58;
                str44 = str59;
                str2 = str61;
                str41 = str62;
                str42 = str60;
                str34 = str63;
                w1Var2 = w1Var3;
                str40 = str64;
                str29 = str11;
                str39 = str49;
            } else {
                i3 = iMax4;
                g5Var2 = new g5(false, false, false);
            }
            p4Var = p4Var4;
            str4 = str44;
            p4 p4Var6 = p4Var;
            int iIntValue4 = ((Integer) linkedHashMap.getOrDefault(Integer.valueOf(i22), Integer.valueOf(i22))).intValue();
            int size4 = arrayList5.size();
            String strI2 = c.a.i("dungeon:", str46);
            boolean z7 = z;
            String str410 = str29;
            Map map7 = mapV0;
            String str411 = str39;
            str5 = str410;
            String str510 = str30;
            String str511 = str31;
            Map map8 = mapV2;
            String str512 = str33;
            i4 = i22;
            int[] iArr3 = iArr;
            String str513 = str27;
            int i220 = i3;
            String str514 = str35;
            String str515 = str36;
            String str516 = ",";
            LinkedHashMap linkedHashMap5 = linkedHashMap2;
            String str517 = str38;
            String str518 = str43;
            String str519 = str4;
            String str610 = str42;
            String str611 = str2;
            String str612 = str41;
            String str613 = str34;
            LinkedHashMap linkedHashMap6 = linkedHashMap;
            List list7 = listM1;
            String str614 = str40;
            w1 w1Var4 = w1Var2;
            arrayList = arrayList5;
            arrayList.add(new f5(iIntValue4, size4, strI2, l(str46, i22, g5Var2.f715c, str47, iP1, iP2, g5Var2.f713a, g5Var2.f714b, (List) linkedHashMap2.getOrDefault(Integer.valueOf(i22), Collections.emptyList()), i220, W0(W0(0, "user_vip_level", map), "vip_level", map))));
            w1 w1VarA4 = w1.a1(context);
            String str615 = "id";
            String str616 = "box_id";
            String str617 = "node_type";
            String str618 = "dungeon_position";
            if (listP0 != null) {
                str6 = str28;
                arrayList2 = arrayList;
                str7 = "id";
                str8 = "box_id";
                str9 = "node_type";
                str10 = "dungeon_position";
                i5 = i4;
                str11 = str5;
                string = str32;
            } else {
                str6 = str28;
                arrayList2 = arrayList;
                str7 = "id";
                str8 = "box_id";
                str9 = "node_type";
                str10 = "dungeon_position";
                i5 = i4;
                str11 = str5;
                string = str32;
            }
            if (string.isEmpty()) {
            }
            arrayList5 = arrayList2;
            str32 = str32;
            str28 = str6;
            mapV0 = map7;
            mapV1 = map3;
            p4Var4 = p4Var6;
            iMax4 = i220;
            iArr = iArr3;
            linkedHashMap = linkedHashMap6;
            linkedHashMap2 = linkedHashMap5;
            i21 = i5;
            listM1 = list7;
            z = z7;
            str30 = str510;
            mapV2 = map8;
            str33 = str512;
            str27 = str513;
            str35 = str514;
            str31 = str511;
            str36 = str515;
            str38 = str517;
            str43 = str518;
            str44 = str519;
            str2 = str611;
            str41 = str612;
            str42 = str610;
            str34 = str613;
            w1Var2 = w1Var4;
            str40 = str614;
            str29 = str11;
            str39 = str411;
        }
        String str81 = str28;
        ArrayList<f5> arrayList8 = arrayList5;
        String str82 = ",";
        String str83 = str29;
        String str84 = str30;
        String str85 = str31;
        String str86 = str27;
        String str87 = str34;
        String str88 = str36;
        String str89 = str35;
        String str90 = str2;
        String str91 = str38;
        w1 w1Var5 = w1Var2;
        String str92 = str43;
        LinkedHashMap linkedHashMap7 = new LinkedHashMap();
        for (f5 f5Var : arrayList8) {
            if (f5Var != null && (i2 = f5Var.f690a) != Integer.MAX_VALUE) {
                List arrayList9 = (List) linkedHashMap7.get(Integer.valueOf(i2));
                if (arrayList9 == null) {
                    arrayList9 = new ArrayList();
                    linkedHashMap7.put(Integer.valueOf(i2), arrayList9);
                }
                arrayList9.add(f5Var);
            }
        }
        ArrayList arrayList10 = new ArrayList();
        for (Map.Entry entry3 : linkedHashMap7.entrySet()) {
            List<f5> list8 = (List) entry3.getValue();
            if (list8.size() >= 2) {
                StringBuilder sb2 = new StringBuilder();
                for (f5 f5Var2 : list8) {
                    if (sb2.length() > 0) {
                        str3 = str82;
                        sb2.append(str3);
                    } else {
                        str3 = str82;
                    }
                    sb2.append(f5Var2.f692c);
                    str82 = str3;
                }
                StringBuilder sbB = a.b0.b("chapter=", str45, " position=");
                sbB.append(entry3.getKey());
                sbB.append(" nodes=");
                sbB.append((Object) sb2);
                arrayList10.add(sbB.toString());
            }
        }
        String str93 = str82;
        Iterator it6 = arrayList10.iterator();
        while (it6.hasNext()) {
            z2.c("SGSCQ_SRV", "[ChapterLayout] duplicate dungeon_position " + ((String) it6.next()));
        }
        Collections.sort(arrayList8, new c.n(2));
        StringBuilder sb3 = new StringBuilder(arrayList8.size() * 512);
        for (f5 f5Var3 : arrayList8) {
            if (sb3.length() > 0) {
                sb3.append(str93);
            }
            sb3.append(f5Var3.f693d);
        }
        String strD0 = d0(str45);
        String strC0 = c0(w1Var5, str45);
        String str94 = str84 + sb3.toString() + str85;
        String strZ1 = Z0(str45);
        y1 y1Var17 = new y1();
        y1Var17.f(str86, strZ1);
        y1Var17.f(str89, strD0);
        y1Var17.f(str88, strC0);
        y1Var17.f("chapter_bg", strC0);
        y1Var17.g(str81, true);
        y1Var17.g(str83, zI);
        y1Var17.i(str91, strZ1);
        y1 y1VarH2 = y1Var17.h(str92);
        y1VarH2.g(str81, true);
        y1VarH2.g(str83, zI);
        y1 y1VarC = y1VarH2.c();
        y1VarC.i(str90, str94);
        if (U0(e0())) {
            y1VarC.i(str87, str94);
        }
        return y1VarC.b();
    }

    public final String j(Map map, JSONObject jSONObject, String... strArr) {
        h5 h5Var;
        LinkedHashMap linkedHashMap;
        ArrayList arrayListJ0;
        String str;
        String[] strArr2 = strArr;
        long jG = c7.g();
        LinkedHashMap linkedHashMapU1 = p5.u1(jSONObject.toString());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String strN0 = N0("general_skin", "", map);
        linkedHashMap2.put("general_skin", strN0.isEmpty() ? null : strN0);
        if (strN0.isEmpty()) {
            strN0 = null;
        }
        linkedHashMap2.put("user_general_skin", strN0);
        linkedHashMap2.put("server_version", "1.0.0");
        linkedHashMap2.put("cfg_version", "ctv201611241300trunk1300_1482732868");
        linkedHashMap2.put("opt_cfg_version", "opt_v1");
        linkedHashMap2.put("server_time", Long.valueOf(jG));
        linkedHashMap2.put("offset_time", 0);
        linkedHashMap2.put("push", i(map));
        linkedHashMap2.put("user_info", linkedHashMapU1);
        int length = strArr2.length;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        int i2 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        while (true) {
            boolean z15 = z;
            boolean z16 = z2;
            boolean z17 = z3;
            boolean z18 = z4;
            boolean z19 = z5;
            boolean z20 = z6;
            boolean z21 = z7;
            boolean z22 = z8;
            boolean z23 = z9;
            LinkedHashMap linkedHashMap3 = linkedHashMap2;
            if (i2 >= length) {
                if (z23) {
                    LinkedHashMap linkedHashMapA0 = a0("General", map);
                    h5Var = this;
                    h5Var.W(linkedHashMapA0);
                    linkedHashMap3.put("general_info", linkedHashMapA0);
                } else {
                    h5Var = this;
                }
                if (z22) {
                    linkedHashMap3.put("skill_info", a0("Skill", map));
                }
                if (z21) {
                    linkedHashMap3.put("equipment_info", a0("Equipment", map));
                }
                if (z20) {
                    linkedHashMap3.put("item_info", a0("Item", map));
                }
                if (z19) {
                    LinkedHashMap linkedHashMapA1 = a0("GeneralSoul", map);
                    Object obj = linkedHashMapA1.get("update_list");
                    if (obj instanceof List) {
                        ((List) obj).removeIf(new e5(h5Var, 0));
                    }
                    linkedHashMap3.put("general_soul_info", linkedHashMapA1);
                }
                if (z18) {
                    linkedHashMap3.put("equipment_piece_info", a0("EquipmentPiece", map));
                }
                if (z17) {
                    linkedHashMap3.put("atlas_info", a0("Atlas", map));
                }
                if (z16) {
                    linkedHashMap3.put("skill_piece_info", a0("SkillPiece", map));
                }
                if (z15) {
                    linkedHashMap3.put("buddy_info", i0("BuddyGeneral", map));
                }
                if (z10) {
                    linkedHashMap3.put("gem_info", a0("Gems", map));
                }
                if (z11) {
                    linkedHashMap3.put("magic_info", a0("MagicalEqu", map));
                }
                if (z12) {
                    linkedHashMap3.put("godness_info", a0("Goddess", map));
                }
                if (z13) {
                    linkedHashMap3.put("meridian_info", a0("MeridianTop", map));
                }
                if (z14) {
                    linkedHashMap3.put("evolution_info", a0("EvolutionInfo", map));
                }
                return p5.s1(linkedHashMap3);
            }
            int i3 = length;
            String str2 = strArr2[i2];
            str2.getClass();
            switch (str2) {
                case "GeneralSoul":
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    z5 = true;
                    break;
                case "Equipment":
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z8 = z22;
                    z9 = z23;
                    z7 = true;
                    break;
                case "EvolutionInfo":
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    z14 = true;
                    break;
                case "MagicalEqu":
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    z11 = true;
                    break;
                case "SkillPiece":
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    z2 = true;
                    break;
                case "BuddyGeneral":
                    linkedHashMap = linkedHashMap3;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    z = true;
                    break;
                case "Gems":
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    z10 = true;
                    break;
                case "Item":
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    z6 = true;
                    break;
                case "TeamGeneral":
                    arrayListJ0 = j0(map);
                    str = "team_info";
                    linkedHashMap = linkedHashMap3;
                    linkedHashMap.put(str, arrayListJ0);
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    break;
                case "Atlas":
                    z = z15;
                    z2 = z16;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    linkedHashMap = linkedHashMap3;
                    z3 = true;
                    break;
                case "Skill":
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z9 = z23;
                    linkedHashMap = linkedHashMap3;
                    z8 = true;
                    break;
                case "MeridianTop":
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    linkedHashMap = linkedHashMap3;
                    z13 = true;
                    break;
                case "EquipmentPiece":
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    linkedHashMap = linkedHashMap3;
                    z4 = true;
                    break;
                case "General":
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    linkedHashMap = linkedHashMap3;
                    z9 = true;
                    break;
                case "Goddess":
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    linkedHashMap = linkedHashMap3;
                    z12 = true;
                    break;
                case "Combat":
                    arrayListJ0 = i0("Combat", map);
                    str = "combat_info";
                    linkedHashMap = linkedHashMap3;
                    linkedHashMap.put(str, arrayListJ0);
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    break;
                default:
                    linkedHashMap = linkedHashMap3;
                    z = z15;
                    z2 = z16;
                    z3 = z17;
                    z4 = z18;
                    z5 = z19;
                    z6 = z20;
                    z7 = z21;
                    z8 = z22;
                    z9 = z23;
                    break;
            }
            i2++;
            linkedHashMap2 = linkedHashMap;
            length = i3;
            strArr2 = strArr;
        }
    }

    public final ArrayList j0(Map map) {
        ArrayList arrayListH0 = h0(map);
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMapO1 = p5.o1(map);
        boolean z = map != null && map.containsKey("Skill");
        for (Object objB0 : arrayListH0) {
            if (objB0 instanceof Map) {
                objB0 = p5.b0((Map) objB0, linkedHashMapO1, z);
            }
            arrayList.add(objB0);
        }
        return p5.M0(g0(map), arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:79:0x0116  */
    /* JADX WARN: Code duplicated, block: B:89:0x013c A[PHI: r3
      0x013c: PHI (r3v3 java.lang.Integer) = (r3v2 java.lang.Integer), (r3v44 java.lang.Integer) binds: [B:67:0x00e9, B:88:0x013a] A[DONT_GENERATE, DONT_INLINE]] */
    public final String l(String str, int i2, boolean z, String str2, int i3, int i4, boolean z2, boolean z3, List list, int i5, int i6) {
        int i7;
        Integer num;
        int iIntValue;
        int iW0;
        int i8;
        int i9;
        int iL2;
        String str3;
        int iL3;
        y1 y1Var;
        int i10;
        String string;
        boolean z4;
        int i11;
        String strU;
        int i12;
        try {
            i7 = (!str.startsWith("105") || str.length() < 8) ? Integer.parseInt(str.substring(0, 3)) - 500 : Integer.parseInt(str.substring(5, 7));
        } catch (NumberFormatException unused) {
            i7 = 1;
        }
        if (i7 < 1) {
            i7 = 1;
        }
        Context context = this.f738c;
        w1 w1VarA1 = w1.a1(context);
        HashMap mapX0 = w1VarA1.x0(str);
        if (com.sgscq.vpn.handler.x.o(str)) {
            if (!r0(mapX0)) {
                String strSubstring = (str == null || !str.startsWith("105") || str.length() < 5) ? "" : str.substring(0, 5);
                if (str == null || !str.startsWith("105") || str.length() < 8) {
                    i11 = 0;
                } else {
                    try {
                        i11 = Integer.parseInt(str.substring(5, 8));
                    } catch (NumberFormatException unused2) {
                        i11 = 0;
                    }
                }
                if (i11 <= 0) {
                    if (strSubstring != null || strSubstring.length() < 5) {
                        strU = "";
                    } else {
                        strU = "";
                        for (String str4 : w1.a1(context).m0(strSubstring, strSubstring)) {
                            if (!r0(w1.a1(context).x0(str4))) {
                                strU = U(str4);
                            }
                        }
                    }
                    num = (strU.isEmpty() && strU.equals(U(str))) ? 1 : null;
                } else {
                    int iJ = J(strSubstring);
                    if (iJ <= 4) {
                        i12 = 4;
                    } else if (iJ <= 14) {
                        i12 = 5;
                    } else {
                        i12 = iJ <= 23 ? 6 : 7;
                    }
                    if (i11 != i12) {
                        if (strSubstring != null) {
                            strU = "";
                        } else {
                            strU = "";
                        }
                        if (strU.isEmpty()) {
                        }
                    }
                }
            }
        }
        if (num == null) {
            if (mapX0 == null) {
                num = null;
            } else if ("boss".equals(String.valueOf(mapX0.get("type")))) {
                num = 1;
            } else {
                Object obj = mapX0.get("enemies");
                if (obj instanceof List) {
                    List list2 = (List) obj;
                    if (list2.size() < 2) {
                        z4 = false;
                    } else {
                        Object obj2 = list2.get(1);
                        z4 = !(obj2 == null ? true : String.valueOf(obj2).trim().matches("164\\d{3}"));
                    }
                } else {
                    z4 = false;
                }
                num = z4 ? 2 : 4;
            }
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = n0(U(str)) ? 1 : 4;
            }
        } else {
            iIntValue = num.intValue();
        }
        int iMax = Math.max(1, ((i7 - 1) * 2) + 1);
        int i13 = com.sgscq.vpn.handler.x.o(str) ? 10 : 5;
        int i14 = (i7 * 30) + 50;
        int i15 = i7 + 10;
        w1VarA1.w0(str, iIntValue, "grade");
        if ("boss".equals(mapX0 != null ? String.valueOf(mapX0.getOrDefault("type", "")) : "") || n0(U(str)) || m0(str) > 0) {
            i9 = 1;
        } else {
            String strF0 = f0(str, i7);
            Map mapJ0 = (strF0 == null || strF0.isEmpty()) ? null : w1VarA1.J0(strF0);
            if (mapJ0 == null) {
                i8 = 1;
                iW0 = 4;
            } else {
                iW0 = W0(4, "grade", mapJ0);
                i8 = 1;
            }
            i9 = iW0 <= i8 ? 2 : iW0 == 2 ? 3 : 4;
        }
        int iW1 = w1VarA1.w0(str, iMax, "suggest_level");
        int iB = com.sgscq.vpn.handler.x.B(w1VarA1.w0(str, i13, "power"), str, mapX0);
        int iW2 = w1VarA1.w0(str, i14, "coin");
        int iC = com.sgscq.vpn.handler.x.C(w1VarA1.y0(i5), iB);
        int iH = com.sgscq.vpn.handler.x.h(w1VarA1, str);
        int iW3 = w1VarA1.w0(str, 99, "times");
        if (!com.sgscq.vpn.handler.x.o(str)) {
            iW3 = Math.min(iW3, i6 >= 12 ? 99 : 50);
        }
        int iW4 = w1VarA1.w0(str, i15, "reset_price");
        Object objEmptyList = Collections.emptyList();
        String str5 = "direction";
        if (mapX0 != null) {
            iL2 = w1.l2(String.valueOf(mapX0.getOrDefault("position", Integer.valueOf(i2))), i2);
            objEmptyList = mapX0.getOrDefault("direction", Collections.emptyList());
        } else {
            iL2 = i2;
        }
        if (list == null || list.isEmpty()) {
            str3 = "direction";
        } else {
            ArrayList arrayList = new ArrayList();
            if (objEmptyList instanceof List) {
                Iterator it = ((List) objEmptyList).iterator();
                while (it.hasNext()) {
                    c(it.next(), arrayList);
                }
            } else {
                c(objEmptyList, arrayList);
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Integer num2 = (Integer) it2.next();
                if (num2 != null) {
                    Iterator it3 = it2;
                    String str6 = str5;
                    if (num2.intValue() >= 1 && num2.intValue() <= 4 && !arrayList.contains(num2)) {
                        arrayList.add(num2);
                    }
                    it2 = it3;
                    str5 = str6;
                }
            }
            str3 = str5;
            objEmptyList = arrayList;
        }
        String strK = k(objEmptyList);
        if (objEmptyList instanceof List) {
            Iterator it4 = ((List) objEmptyList).iterator();
            while (true) {
                if (!it4.hasNext()) {
                    iL3 = 0;
                    break;
                }
                int iL4 = w1.l2(String.valueOf(it4.next()), 0);
                if (iL4 >= 1 && iL4 <= 4) {
                    iL3 = iL4;
                    break;
                }
            }
        } else {
            iL3 = w1.l2(String.valueOf(objEmptyList), 0);
            if (iL3 < 1 || iL3 > 4) {
                iL3 = 0;
                break;
            }
        }
        String strU2 = U(str);
        y1 y1Var2 = new y1();
        y1Var2.f("type", "dungeon");
        y1Var2.f("dungeon_id", strU2);
        y1Var2.e("dungeon_position", iL2);
        y1Var2.f("dungeon_name", str);
        y1Var2.f("dungeon_card", f0(str, i7));
        y1Var2.e("dungeon_grade", i9);
        y1Var2.e("dungeon_suggest_level", iW1);
        y1Var2.e("dungeon_power", iB);
        y1Var2.e("dungeon_user_exp", iC);
        y1Var2.e("dungeon_general_exp", iH);
        y1Var2.e("dungeon_coin", iW2);
        y1Var2.e("dungeon_times", iW3);
        y1Var2.e("user_dungeon_times", i4);
        y1Var2.e("num_item_price", iW4);
        y1Var2.g("can_show", z2);
        y1Var2.g("can_in", z3);
        y1Var2.e("star_level", i3);
        y1Var2.i(str3, strK);
        y1Var2.e("dungeon_direction", iL3);
        y1Var2.g("is_newest", z);
        StringBuilder sb = y1Var2.f1545b;
        if (str2 == null || str2.isEmpty()) {
            y1Var2.a();
            sb.append('\"');
            sb.append("unlocked_id");
            sb.append("\":[");
            i10 = 0;
            y1Var = new y1(sb, y1Var2, i10);
        } else {
            y1Var2.a();
            sb.append('\"');
            sb.append("unlocked_id");
            sb.append("\":[");
            y1Var = new y1(sb, y1Var2, 0);
            String strU3 = U(str2);
            y1Var.a();
            sb.append('\"');
            p5.L(sb, strU3);
            sb.append('\"');
            i10 = 0;
        }
        y1Var.c();
        y1Var2.e("elite_buy_times", i10);
        w1 w1VarA2 = w1.a1(context);
        HashMap mapX1 = w1VarA2.x0(str);
        if (((mapX1 == null || !mapX1.containsKey("drops")) ? i10 : 1) != 0) {
            string = p5.s1(w1VarA2.u0(str));
        } else {
            boolean zN0 = n0(str);
            StringBuilder sb2 = new StringBuilder("[{\"type\":5,\"id\":\"600032\",\"num\":");
            sb2.append(Math.max(1, i9));
            sb2.append("}");
            if (zN0 && i9 >= 2) {
                sb2.append(",{\"type\":5,\"id\":\"600023\",\"num\":");
                sb2.append(i9 * 100);
                sb2.append("}");
            }
            if (i2 % 3 == 0 || zN0) {
                sb2.append(",{\"type\":5,\"id\":\"600001\",\"num\":");
                sb2.append(i9 * 2);
                sb2.append("}");
            }
            sb2.append("]");
            string = sb2.toString();
        }
        y1Var2.i("dungeon_drop", string);
        return y1Var2.b();
    }

    public final String m(Map map, JSONObject jSONObject) {
        long jG = c7.g();
        com.sgscq.vpn.handler.d1.K0(map);
        LinkedHashMap linkedHashMapC0 = C0("General", map);
        W(linkedHashMapC0);
        LinkedHashMap linkedHashMapC1 = C0("Skill", map);
        LinkedHashMap linkedHashMapC2 = C0("Equipment", map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        O("General", linkedHashMap, map, false);
        O("TeamGeneral", linkedHashMap, map, true);
        ArrayList arrayList = new ArrayList();
        Object obj = linkedHashMapC2.get("update_list");
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap((Map) obj2);
                    String str = (String) linkedHashMap.get(String.valueOf(linkedHashMap2.getOrDefault("pk_id", "")));
                    linkedHashMap2.put("general_pk_id", str);
                    linkedHashMap2.put("general_id", str);
                    linkedHashMap2.put("user_general_id", str);
                    LinkedHashMap linkedHashMap3 = linkedHashMap;
                    linkedHashMap2.put("is_wear", str == null ? "0" : "1");
                    linkedHashMap2.put("wear", str != null ? "1" : "0");
                    arrayList.add(linkedHashMap2);
                    linkedHashMap = linkedHashMap3;
                } else {
                    arrayList.add(obj2);
                }
            }
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(linkedHashMapC2);
        linkedHashMap4.put("update_list", arrayList);
        LinkedHashMap linkedHashMapC3 = C0("Item", map);
        ArrayList arrayListJ0 = j0(map);
        ArrayList arrayListI0 = i0("Combat", map);
        LinkedHashMap linkedHashMapC4 = C0("GeneralSoul", map);
        Object obj3 = linkedHashMapC4.get("update_list");
        if (obj3 instanceof List) {
            ((List) obj3).removeIf(new e5(this, 0));
        }
        LinkedHashMap linkedHashMapC5 = C0("EquipmentPiece", map);
        LinkedHashMap linkedHashMapC6 = C0("Atlas", map);
        LinkedHashMap linkedHashMapC7 = C0("SkillPiece", map);
        ArrayList arrayListI1 = i0("BuddyGeneral", map);
        LinkedHashMap linkedHashMapC8 = C0("Gems", map);
        LinkedHashMap linkedHashMapC9 = C0("MagicalEqu", map);
        LinkedHashMap linkedHashMapC10 = C0("Goddess", map);
        LinkedHashMap linkedHashMapC11 = C0("MeridianTop", map);
        LinkedHashMap linkedHashMapC12 = C0("EvolutionInfo", map);
        LinkedHashMap linkedHashMapU1 = p5.u1(jSONObject.toString());
        String strN0 = N0("general_skin", "", map);
        String str2 = strN0.isEmpty() ? null : strN0;
        Object[] objArr = new Object[48];
        objArr[0] = "user_general_skin";
        if (strN0.isEmpty()) {
            strN0 = null;
        }
        objArr[1] = strN0;
        objArr[2] = "server_version";
        objArr[3] = "1.0.0";
        objArr[4] = "cfg_version";
        objArr[5] = "ctv201611241300trunk1300_1482732868";
        objArr[6] = "opt_cfg_version";
        objArr[7] = "opt_v1";
        objArr[8] = "server_time";
        objArr[9] = Long.valueOf(jG);
        objArr[10] = "offset_time";
        objArr[11] = 0;
        objArr[12] = "push";
        objArr[13] = i(map);
        objArr[14] = "user_info";
        objArr[15] = linkedHashMapU1;
        objArr[16] = "general_info";
        objArr[17] = linkedHashMapC0;
        objArr[18] = "general_soul_info";
        objArr[19] = linkedHashMapC4;
        objArr[20] = "skill_info";
        objArr[21] = linkedHashMapC1;
        objArr[22] = "equipment_info";
        objArr[23] = linkedHashMap4;
        objArr[24] = "item_info";
        objArr[25] = linkedHashMapC3;
        objArr[26] = "combat_info";
        objArr[27] = arrayListI0;
        objArr[28] = "team_info";
        objArr[29] = arrayListJ0;
        objArr[30] = "equipment_piece_info";
        objArr[31] = linkedHashMapC5;
        objArr[32] = "atlas_info";
        objArr[33] = linkedHashMapC6;
        objArr[34] = "skill_piece_info";
        objArr[35] = linkedHashMapC7;
        objArr[36] = "buddy_info";
        objArr[37] = arrayListI1;
        objArr[38] = "gem_info";
        objArr[39] = linkedHashMapC8;
        objArr[40] = "magic_info";
        objArr[41] = linkedHashMapC9;
        objArr[42] = "godness_info";
        objArr[43] = linkedHashMapC10;
        objArr[44] = "meridian_info";
        objArr[45] = linkedHashMapC11;
        objArr[46] = "evolution_info";
        objArr[47] = linkedHashMapC12;
        return p5.s1(p5.z0("general_skin", str2, objArr));
    }

    public final boolean n0(String str) {
        try {
            String strSubstring = str.substring(0, 3);
            int size = 6;
            int i2 = Integer.parseInt(str.length() >= 10 ? str.substring(5, 8) : str.substring(3, 6));
            List listL0 = w1.a1(this.f738c).l0(strSubstring);
            if (!listL0.isEmpty()) {
                size = listL0.size();
            }
            return i2 == size;
        } catch (Exception unused) {
            return false;
        }
    }

    public final String o(String str, Map map, boolean z) {
        w1 w1VarA1 = w1.a1(this.f738c);
        ArrayList arrayListG0 = z ? w1VarA1.g0() : w1VarA1.j0();
        if (arrayListG0.isEmpty()) {
            z2.g("SGSCQ_SRV", "[MapInfo] no configured chapters for elite=" + z);
            return r("", "{}");
        }
        if (!arrayListG0.contains(str)) {
            str = (String) arrayListG0.get(0);
        }
        String str2 = z ? "2" : "1";
        p4 p4VarL = L(map, z);
        int iMax = map != null ? Math.max(1, K0(1, "user_level", map)) : 1;
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < arrayListG0.size(); i2++) {
            String str3 = (String) arrayListG0.get(i2);
            if (i2 > 0) {
                sb.append(",");
            }
            sb.append(s(str3, str2, I(str3, p4VarL, z, iMax)));
        }
        return r(sb.toString(), h(str, map));
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003c  */
    /* JADX WARN: Code duplicated, block: B:19:0x004d  */
    public final String p(String str, Map map) {
        String strH0;
        String strN0 = N0("user_map_step", "", map);
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.startsWith("105") && strTrim.length() >= 5) {
                strH0 = strTrim.substring(0, 5);
            } else if (strTrim.matches("5\\d{5,}")) {
                strH0 = strTrim.substring(0, 3);
            } else if (!strTrim.isEmpty()) {
                strH0 = H0(strTrim);
            } else if (strN0 != null || strN0.trim().isEmpty()) {
                strH0 = "";
            } else {
                strH0 = H0(strN0);
            }
        } else if (strN0 != null) {
            strH0 = "";
        } else {
            strH0 = "";
        }
        String strH1 = H0(strN0);
        if (strH1.isEmpty() || strH1.equals(strH0) || strH0.startsWith("105")) {
            return o(strH0, map, strH0.startsWith("105"));
        }
        ArrayList arrayListJ0 = w1.a1(this.f738c).j0();
        if (arrayListJ0.isEmpty()) {
            return r("", "{}");
        }
        p4 p4VarK = K(map);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < arrayListJ0.size(); i2++) {
            if (i2 > 0) {
                sb.append(",");
            }
            sb.append(s((String) arrayListJ0.get(i2), "1", I((String) arrayListJ0.get(i2), p4VarK, false, 1)));
        }
        return r(sb.toString(), h(strH0, map) + "," + h(strH1, map));
    }

    public final String q(String str, String str2) {
        String strH0 = H0(str2);
        if (strH0.isEmpty()) {
            strH0 = Z();
        }
        return o(strH0, str == null ? null : w0(str), strH0.startsWith("105"));
    }

    public final String r(String str, String str2) {
        String strA = com.sgscq.vpn.handler.l.a("[", str, "]");
        String strA2 = com.sgscq.vpn.handler.l.a("[", str2, "]");
        y1 y1Var = new y1();
        if (U0(e0())) {
            y1Var.i("map_type", strA);
        }
        y1Var.i("chapter_list", strA);
        y1Var.i("chapter_details", strA2);
        if (U0(e0())) {
            y1Var.i("chapters", strA2);
        }
        return y1Var.b();
    }

    public final String s(String str, String str2, boolean z) {
        w1 w1VarA1 = w1.a1(this.f738c);
        String strZ0 = Z0(str);
        y1 y1Var = new y1();
        y1Var.f("map_type", str2);
        y1Var.i("getChapterId", strZ0);
        y1Var.f("map_id", strZ0);
        y1Var.f("map_name", d0(str));
        y1Var.g("can_show", true);
        y1Var.g("can_in", z);
        y1Var.f("map_bgimage", c0(w1VarA1, str));
        return y1Var.b();
    }

    /* JADX WARN: Code duplicated, block: B:121:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:124:0x04dc  */
    /* JADX WARN: Code duplicated, block: B:130:0x04f6  */
    /* JADX WARN: Code duplicated, block: B:131:0x04ff  */
    /* JADX WARN: Code duplicated, block: B:134:0x0511  */
    /* JADX WARN: Code duplicated, block: B:161:0x055d A[PHI: r0
      0x055d: PHI (r0v58 java.lang.String) = (r0v57 java.lang.String), (r0v57 java.lang.String), (r0v105 java.lang.String), (r0v104 java.lang.String) binds: [B:133:0x050f, B:135:0x0516, B:160:0x055b, B:159:0x0559] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:164:0x0627  */
    /* JADX WARN: Code duplicated, block: B:165:0x0629  */
    /* JADX WARN: Code duplicated, block: B:169:0x065c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:170:0x065e  */
    /* JADX WARN: Code duplicated, block: B:180:0x04e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final JSONObject t(int i2, int i3, int i4, int i5, long j2, String str, Map map) {
        String str2;
        int iK0;
        String strH0;
        int iU0;
        int i6;
        String strZ0;
        String strN0;
        String str3;
        int iW0;
        int iW1;
        int i7;
        int i8;
        int iU1;
        Context context;
        String str4;
        String str5;
        int iK1;
        int iK2;
        SharedPreferences sharedPreferences = this.f739d;
        String strO0 = O0("user_nickname", sharedPreferences != null ? sharedPreferences.getString("player_name", "玩家") : "玩家", map);
        int iK3 = K0(1, "user_level", map);
        int iK4 = K0(0, "user_vip_level", map);
        y1 y1Var = new y1();
        y1Var.f("userId", str);
        y1Var.f("user_id", str);
        y1Var.f("account_uid", str);
        y1Var.f("roleId", str);
        y1Var.f("role_id", str);
        y1Var.f("roleID", str);
        y1Var.f("nickname", strO0);
        y1Var.f("nickName", strO0);
        y1Var.f("roleName", strO0);
        y1Var.f("user_nickname", strO0);
        y1Var.e("level", iK3);
        y1Var.e("roleLevel", iK3);
        y1Var.e("role_level", iK3);
        y1Var.e("user_level", iK3);
        y1Var.e("vipLevel", iK4);
        y1Var.e("vip_level", iK4);
        y1Var.e("user_vip_level", iK4);
        y1Var.e("vipExp", 0);
        y1Var.d(j2, "gold");
        y1Var.e("yuanbao", i3);
        y1Var.d(j2, "user_coin");
        y1Var.e("user_gold", i3);
        y1Var.e("energy", i4);
        y1Var.e("energyMax", 200);
        y1Var.e("user_energy", i4);
        y1Var.e("user_energy_date", p5.F0(K0(0, "user_energy_date", map)));
        int iK5 = K0(0, "user_experience", map);
        y1Var.e("exp", iK5);
        y1Var.e("user_experience", iK5);
        String strO1 = O0("user_sign", "这个人很懒，什么都没有留下。", map);
        y1Var.f("sign", strO1);
        y1Var.f("user_sign", strO1);
        y1Var.e("stamina", i5);
        y1Var.e("user_power", i5);
        y1Var.e("user_power_date", p5.F0(K0(0, "user_power_date", map)));
        ArrayList<Map> arrayList = new ArrayList();
        Object obj = map.get("TeamGeneral");
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    arrayList.add((Map) obj2);
                }
            }
        } else if (obj instanceof Map) {
            Map map2 = (Map) obj;
            M(map2.get("add"), arrayList);
            M(map2.get("upd"), arrayList);
        }
        HashSet hashSet = new HashSet();
        int i9 = 0;
        for (Map map3 : arrayList) {
            if (hashSet.add(String.valueOf(map3.getOrDefault("pk_id", map3.getOrDefault("team_general_id", map3.getOrDefault("general_id", Integer.valueOf(map3.hashCode()))))))) {
                String[] strArr = {"general_fighting", "fighting", "fight_point", "fightPoint"};
                int i10 = 0;
                while (true) {
                    if (i10 >= 4) {
                        iK2 = 0;
                        break;
                    }
                    iK2 = K0(Integer.MIN_VALUE, strArr[i10], map3);
                    if (iK2 != Integer.MIN_VALUE) {
                        break;
                    }
                    i10++;
                }
                i9 += iK2;
            }
        }
        if (i9 <= 0) {
            String[] strArr2 = {"fight_point", "user_fighting", "fighting", "fightPoint", "user_ability"};
            int i11 = 0;
            while (true) {
                if (i11 >= 5) {
                    i9 = 0;
                    break;
                }
                int iK6 = K0(Integer.MIN_VALUE, strArr2[i11], map);
                if (iK6 != Integer.MIN_VALUE) {
                    i9 = iK6;
                    break;
                }
                i11++;
            }
        }
        y1Var.e("fightPoint", i9);
        y1Var.e("fight_point", i9);
        y1Var.e("user_fighting", i9);
        y1Var.e("fighting", i9);
        Context context2 = this.f738c;
        w1.a1(context2).getClass();
        int iB = w1.B(map);
        y1Var.e("user_ability", iB);
        y1Var.e("leadership_num", iB);
        y1Var.e("leadershipNum", iB);
        y1Var.e("user_leadership_num", iB);
        y1Var.e("stage", 1);
        y1Var.e("totalRecharge", K0(0, "totalRecharge", map));
        y1Var.e("headIcon", K0(1, "headIcon", map));
        y1Var.e("career", 1);
        y1Var.e("lastLoginTime", i2);
        y1Var.e("last_login_time", i2);
        y1Var.e("user_last_login_time", i2);
        LinkedHashMap linkedHashMapZ0 = p5.z0("gold_soul", Integer.valueOf(W0(10, "gold_soul", map)), "sliver_soul", Integer.valueOf(W0(50, "sliver_soul", map)));
        y1Var.e("gold_soul", ((Integer) linkedHashMapZ0.get("gold_soul")).intValue());
        y1Var.e("sliver_soul", ((Integer) linkedHashMapZ0.get("sliver_soul")).intValue());
        w1.a1(context2).getClass();
        y1Var.f("first_choose_general", N0("first_choose_general", "112018", map));
        String str6 = "0";
        y1Var.f("first_wine_general", N0("first_wine_general", "0", map));
        String str7 = "";
        y1Var.f("freshman_step", G0(N0("freshman_step", "", map)));
        y1Var.f("server_step", G0(N0("server_step", "", map)));
        y1Var.f("guide_step", G0(N0("guide_step", "", map)));
        Object obj3 = map.get("guide_completed");
        y1Var.g("guide_completed", obj3 instanceof Boolean ? ((Boolean) obj3).booleanValue() : obj3 instanceof String ? "true".equalsIgnoreCase((String) obj3) : false);
        Object obj4 = map.get("triple_speed");
        y1Var.g("triple_speed", obj4 instanceof Boolean ? ((Boolean) obj4).booleanValue() : obj4 instanceof String ? "true".equalsIgnoreCase((String) obj4) : false);
        y1Var.e("triple_speed_vip_level", K0(0, "triple_speed_vip_level", map));
        y1 y1Var2 = new y1();
        HashSet hashSet2 = new HashSet();
        String[][] strArr3 = f735g;
        for (int i12 = 0; i12 < 7; i12++) {
            hashSet2.add(strArr3[i12][0]);
        }
        for (Map map4 : w1.f0("Item", map)) {
            String strValueOf = String.valueOf(map4.get(map4.get("item_id") == null ? "id" : "item_id"));
            if (!hashSet2.contains(strValueOf) && (iK1 = K0(0, "item_num", map4)) > 0) {
                y1Var2.e(strValueOf, iK1);
            }
        }
        int iN2 = com.sgscq.vpn.cloud.m0.n2(map);
        int i13 = 0;
        while (i13 < 7) {
            String[] strArr4 = strArr3[i13];
            String str8 = strArr4[0];
            boolean zY1 = com.sgscq.vpn.cloud.m0.y1(str8);
            int iI2 = zY1 ? com.sgscq.vpn.cloud.m0.i2(iN2, context2, str8) : 99;
            int iM1 = zY1 ? com.sgscq.vpn.cloud.m0.M1(iN2, context2, str8) : 99;
            int iN1 = zY1 ? com.sgscq.vpn.cloud.m0.N1(iN2, context2, str8) : 1;
            int iB0 = zY1 ? com.sgscq.vpn.cloud.m0.b0(str8, map) : 0;
            int i14 = iN2;
            int iX1 = p5.x1(com.sgscq.vpn.cloud.m0.b0(str8, map), "600030".equals(str8) ? K0(50, "cd_item_price", map) : 50, str8, map);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (com.sgscq.vpn.cloud.m0.o1(str8)) {
                ArrayList arrayList2 = new ArrayList(10);
                int[] iArr = p5.J;
                int i15 = 0;
                for (int i16 = 10; i15 < i16; i16 = 10) {
                    arrayList2.add(Integer.valueOf(iArr[i15]));
                    i15++;
                }
                int iMax = Math.max(arrayList2.size(), Math.max(iI2, iB0 + 1));
                int i17 = 0;
                while (i17 < iMax) {
                    linkedHashMap.put(String.valueOf(i17), p5.z0("item_price", Integer.valueOf(p5.J[Math.max(0, Math.min(i17, 9))]), new Object[0]));
                    i17++;
                    str6 = str6;
                    str7 = str7;
                    context2 = context2;
                }
                context = context2;
                str4 = str6;
                str5 = str7;
                linkedHashMap.put("length", Integer.valueOf(iMax));
            } else {
                context = context2;
                str4 = str6;
                str5 = str7;
            }
            linkedHashMap.put("price", Integer.valueOf(iX1));
            linkedHashMap.put("used_num", Integer.valueOf(iB0));
            linkedHashMap.put("all_num", Integer.valueOf(iI2));
            linkedHashMap.put("next_all_num", Integer.valueOf(iM1));
            linkedHashMap.put("next_vip_level", Integer.valueOf(iN1));
            linkedHashMap.put("effect_value", Integer.valueOf(w1.l2(strArr4[1], 0)));
            y1Var2.i(str8, p5.s1(linkedHashMap));
            i13++;
            iN2 = i14;
            strArr3 = strArr3;
            str6 = str4;
            str7 = str5;
            context2 = context;
            iK3 = iK3;
        }
        Context context3 = context2;
        String str9 = str6;
        String str10 = str7;
        int i18 = iK3;
        y1Var.i("item_count", y1Var2.b());
        String strN1 = N0("user_map_step", str10, map);
        try {
            if (strN1 != null && !strN1.isEmpty()) {
                str2 = str9;
                if (!str2.equals(strN1) && !"null".equalsIgnoreCase(strN1)) {
                    if (strN1.matches("5\\d{2}")) {
                    }
                    y1Var.f("user_map_step", strN1);
                    iK0 = K0(1, "user_position_step", map);
                    if (iK0 <= 0) {
                        iK0 = 1;
                    }
                    y1Var.e("user_position_step", iK0);
                    strH0 = H0(N0("user_elite_map_step", str2, map));
                    if (strH0.startsWith("105")) {
                        strZ0 = Z0(strH0);
                        i6 = i18;
                    } else {
                        try {
                            iU0 = w1.a1(context3).U0("EliteMap_Unlock_Level", 9);
                        } catch (Throwable unused) {
                            iU0 = 9;
                        }
                        i6 = i18;
                        if (i6 >= iU0) {
                            strZ0 = Z0(X());
                        } else {
                            strZ0 = str2;
                        }
                    }
                    y1Var.f("user_elite_map_step", strZ0);
                    strN0 = N0("user_elite_position_step", str2, map);
                    if (V(strN0) <= 0 || w1.l2(strN0, 0) > 0) {
                        str3 = strN0;
                    } else {
                        try {
                            i8 = 9;
                            try {
                                iU1 = w1.a1(context3).U0("EliteMap_Unlock_Level", 9);
                            } catch (Throwable unused2) {
                                iU1 = i8;
                            }
                        } catch (Throwable unused3) {
                            i8 = 9;
                        }
                        String strX = i6 >= iU1 ? X() : str10;
                        if (strX.isEmpty()) {
                            str3 = str2;
                        } else {
                            try {
                                List listM0 = w1.a1(context3).m0(strX, strX);
                                strN0 = (listM0 == null || listM0.isEmpty()) ? str10 : (String) listM0.get(0);
                            } catch (Throwable unused4) {
                            }
                            if (strN0 == null || strN0.isEmpty()) {
                                strN0 = "1050100101";
                            }
                            str3 = strN0;
                        }
                    }
                    y1Var.f("user_elite_position_step", str3);
                    int iK7 = K0(K0(0, "coolDownTime", map), "dungeon_cold_time", map);
                    int iK8 = K0(K0(0, "chaosCountDown", map), "to_danger_time", map);
                    y1Var.e("coolDownTime", K0(iK7, "coolDownTime", map));
                    y1Var.e("chaosCountDown", K0(iK8, "chaosCountDown", map));
                    y1Var.e("dungeon_cold_time", iK7);
                    y1Var.e("cd_item_price", K0(0, "cd_item_price", map));
                    y1Var.e("base_cold_time", K0(0, "base_cold_time", map));
                    y1Var.e("to_danger_time", iK8);
                    y1Var.e("user_honor", K0(0, "user_honor", map));
                    y1Var.e("user_invite_code", 0);
                    y1Var.e("user_charge_count", K0(0, "user_charge_count", map));
                    y1Var.e("current_charge_gold", K0(0, "current_charge_gold", map));
                    y1Var.e("count_charge_gold", K0(0, "count_charge_gold", map));
                    y1Var.e("user_count_login_days", K0(K0(1, "user_login_days", map), "user_count_login_days", map));
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    iW0 = W0(W0(0, "unionId", map), "union_id", map);
                    String strX0 = X0("union_name", X0("unionName", str10, map), map);
                    int iW2 = W0(0, "user_role", map);
                    int iW3 = W0(W0(0, "user_donate", map), "union_donate_num", map);
                    if (Y0(map.get("union_today_donate"))) {
                        iW1 = 1;
                    } else {
                        iW1 = W0(0, "donate_state", map);
                    }
                    boolean zY0 = Y0(map.get("union_war_sign_up"));
                    linkedHashMap2.put("unionId", Integer.valueOf(iW0));
                    linkedHashMap2.put("union_id", Integer.valueOf(iW0));
                    linkedHashMap2.put("unionName", strX0);
                    c.a.z(linkedHashMap2, "union_name", strX0, iW2, "user_role", iW3, "user_donate");
                    if (iW0 == 0 && iW1 <= 0) {
                        i7 = 25;
                    } else {
                        i7 = 0;
                    }
                    linkedHashMap2.put("donate_num", Integer.valueOf(i7));
                    linkedHashMap2.put("donate_state", Integer.valueOf(iW1));
                    linkedHashMap2.put("union_war_sign_up", Integer.valueOf(zY0 ? 1 : 0));
                    y1Var.e("unionId", ((Integer) linkedHashMap2.get("unionId")).intValue());
                    y1Var.e("union_id", ((Integer) linkedHashMap2.get("union_id")).intValue());
                    y1Var.f("unionName", (String) linkedHashMap2.get("unionName"));
                    y1Var.f("union_name", (String) linkedHashMap2.get("union_name"));
                    y1Var.e("user_role", ((Integer) linkedHashMap2.get("user_role")).intValue());
                    y1Var.e("user_donate", ((Integer) linkedHashMap2.get("user_donate")).intValue());
                    y1Var.e("donate_num", ((Integer) linkedHashMap2.get("donate_num")).intValue());
                    y1Var.e("donate_state", ((Integer) linkedHashMap2.get("donate_state")).intValue());
                    y1Var.e("union_war_sign_up", ((Integer) linkedHashMap2.get("union_war_sign_up")).intValue());
                    y1Var.e("luxun", 0);
                    y1Var.g("isAdult", true);
                    y1Var.g("isBroadShowed", false);
                    int iL2 = w1.l2(String.valueOf(map.get("ladderChallengeTimes")), 5);
                    int iE = c.a.e(map, "ladderRankSalary", 0);
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    linkedHashMap3.put("ladderChallengeTimes", Integer.valueOf(iL2));
                    linkedHashMap3.put("ladderRankSalary", Integer.valueOf(iE));
                    linkedHashMap3.put("ladder_rank_salary", Integer.valueOf(iE));
                    linkedHashMap3.put("ladder_challenging_num", Integer.valueOf(iL2));
                    y1Var.e("ladderChallengeTimes", ((Integer) linkedHashMap3.get("ladderChallengeTimes")).intValue());
                    y1Var.e("ladderRankSalary", ((Integer) linkedHashMap3.get("ladderRankSalary")).intValue());
                    y1Var.e("ladder_rank_salary", ((Integer) linkedHashMap3.get("ladder_rank_salary")).intValue());
                    y1Var.e("ladder_challenging_num", ((Integer) linkedHashMap3.get("ladder_challenging_num")).intValue());
                    return new JSONObject(y1Var.b());
                }
                strN1 = Z0(strN1);
                y1Var.f("user_map_step", strN1);
                iK0 = K0(1, "user_position_step", map);
                if (iK0 <= 0) {
                    iK0 = 1;
                }
                y1Var.e("user_position_step", iK0);
                strH0 = H0(N0("user_elite_map_step", str2, map));
                if (strH0.startsWith("105")) {
                    strZ0 = Z0(strH0);
                    i6 = i18;
                } else {
                    iU0 = w1.a1(context3).U0("EliteMap_Unlock_Level", 9);
                    i6 = i18;
                    if (i6 >= iU0) {
                        strZ0 = Z0(X());
                    } else {
                        strZ0 = str2;
                    }
                }
                y1Var.f("user_elite_map_step", strZ0);
                strN0 = N0("user_elite_position_step", str2, map);
                if (V(strN0) <= 0) {
                    str3 = strN0;
                } else {
                    str3 = strN0;
                }
                y1Var.f("user_elite_position_step", str3);
                int iK9 = K0(K0(0, "coolDownTime", map), "dungeon_cold_time", map);
                int iK10 = K0(K0(0, "chaosCountDown", map), "to_danger_time", map);
                y1Var.e("coolDownTime", K0(iK9, "coolDownTime", map));
                y1Var.e("chaosCountDown", K0(iK10, "chaosCountDown", map));
                y1Var.e("dungeon_cold_time", iK9);
                y1Var.e("cd_item_price", K0(0, "cd_item_price", map));
                y1Var.e("base_cold_time", K0(0, "base_cold_time", map));
                y1Var.e("to_danger_time", iK10);
                y1Var.e("user_honor", K0(0, "user_honor", map));
                y1Var.e("user_invite_code", 0);
                y1Var.e("user_charge_count", K0(0, "user_charge_count", map));
                y1Var.e("current_charge_gold", K0(0, "current_charge_gold", map));
                y1Var.e("count_charge_gold", K0(0, "count_charge_gold", map));
                y1Var.e("user_count_login_days", K0(K0(1, "user_login_days", map), "user_count_login_days", map));
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                iW0 = W0(W0(0, "unionId", map), "union_id", map);
                String strX1 = X0("union_name", X0("unionName", str10, map), map);
                int iW4 = W0(0, "user_role", map);
                int iW5 = W0(W0(0, "user_donate", map), "union_donate_num", map);
                if (Y0(map.get("union_today_donate"))) {
                    iW1 = 1;
                } else {
                    iW1 = W0(0, "donate_state", map);
                }
                boolean zY2 = Y0(map.get("union_war_sign_up"));
                linkedHashMap4.put("unionId", Integer.valueOf(iW0));
                linkedHashMap4.put("union_id", Integer.valueOf(iW0));
                linkedHashMap4.put("unionName", strX1);
                c.a.z(linkedHashMap4, "union_name", strX1, iW4, "user_role", iW5, "user_donate");
                if (iW0 == 0) {
                    i7 = 0;
                } else {
                    i7 = 25;
                }
                linkedHashMap4.put("donate_num", Integer.valueOf(i7));
                linkedHashMap4.put("donate_state", Integer.valueOf(iW1));
                linkedHashMap4.put("union_war_sign_up", Integer.valueOf(zY2 ? 1 : 0));
                y1Var.e("unionId", ((Integer) linkedHashMap4.get("unionId")).intValue());
                y1Var.e("union_id", ((Integer) linkedHashMap4.get("union_id")).intValue());
                y1Var.f("unionName", (String) linkedHashMap4.get("unionName"));
                y1Var.f("union_name", (String) linkedHashMap4.get("union_name"));
                y1Var.e("user_role", ((Integer) linkedHashMap4.get("user_role")).intValue());
                y1Var.e("user_donate", ((Integer) linkedHashMap4.get("user_donate")).intValue());
                y1Var.e("donate_num", ((Integer) linkedHashMap4.get("donate_num")).intValue());
                y1Var.e("donate_state", ((Integer) linkedHashMap4.get("donate_state")).intValue());
                y1Var.e("union_war_sign_up", ((Integer) linkedHashMap4.get("union_war_sign_up")).intValue());
                y1Var.e("luxun", 0);
                y1Var.g("isAdult", true);
                y1Var.g("isBroadShowed", false);
                int iL3 = w1.l2(String.valueOf(map.get("ladderChallengeTimes")), 5);
                int iE2 = c.a.e(map, "ladderRankSalary", 0);
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                linkedHashMap5.put("ladderChallengeTimes", Integer.valueOf(iL3));
                linkedHashMap5.put("ladderRankSalary", Integer.valueOf(iE2));
                linkedHashMap5.put("ladder_rank_salary", Integer.valueOf(iE2));
                linkedHashMap5.put("ladder_challenging_num", Integer.valueOf(iL3));
                y1Var.e("ladderChallengeTimes", ((Integer) linkedHashMap5.get("ladderChallengeTimes")).intValue());
                y1Var.e("ladderRankSalary", ((Integer) linkedHashMap5.get("ladderRankSalary")).intValue());
                y1Var.e("ladder_rank_salary", ((Integer) linkedHashMap5.get("ladder_rank_salary")).intValue());
                y1Var.e("ladder_challenging_num", ((Integer) linkedHashMap5.get("ladder_challenging_num")).intValue());
                return new JSONObject(y1Var.b());
            }
            str2 = str9;
            return new JSONObject(y1Var.b());
        } catch (JSONException e2) {
            z2.d("SGSCQ_SRV", "buildPlayerDataJson error", e2);
            return new JSONObject();
        }
        strN1 = Z();
        strN1 = Z0(strN1);
        y1Var.f("user_map_step", strN1);
        iK0 = K0(1, "user_position_step", map);
        if (iK0 <= 0) {
            iK0 = 1;
        }
        y1Var.e("user_position_step", iK0);
        strH0 = H0(N0("user_elite_map_step", str2, map));
        if (strH0.startsWith("105")) {
            strZ0 = Z0(strH0);
            i6 = i18;
        } else {
            iU0 = w1.a1(context3).U0("EliteMap_Unlock_Level", 9);
            i6 = i18;
            if (i6 >= iU0) {
                strZ0 = Z0(X());
            } else {
                strZ0 = str2;
            }
        }
        y1Var.f("user_elite_map_step", strZ0);
        strN0 = N0("user_elite_position_step", str2, map);
        if (V(strN0) <= 0) {
            str3 = strN0;
        } else {
            str3 = strN0;
        }
        y1Var.f("user_elite_position_step", str3);
        int iK11 = K0(K0(0, "coolDownTime", map), "dungeon_cold_time", map);
        int iK12 = K0(K0(0, "chaosCountDown", map), "to_danger_time", map);
        y1Var.e("coolDownTime", K0(iK11, "coolDownTime", map));
        y1Var.e("chaosCountDown", K0(iK12, "chaosCountDown", map));
        y1Var.e("dungeon_cold_time", iK11);
        y1Var.e("cd_item_price", K0(0, "cd_item_price", map));
        y1Var.e("base_cold_time", K0(0, "base_cold_time", map));
        y1Var.e("to_danger_time", iK12);
        y1Var.e("user_honor", K0(0, "user_honor", map));
        y1Var.e("user_invite_code", 0);
        y1Var.e("user_charge_count", K0(0, "user_charge_count", map));
        y1Var.e("current_charge_gold", K0(0, "current_charge_gold", map));
        y1Var.e("count_charge_gold", K0(0, "count_charge_gold", map));
        y1Var.e("user_count_login_days", K0(K0(1, "user_login_days", map), "user_count_login_days", map));
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        iW0 = W0(W0(0, "unionId", map), "union_id", map);
        String strX2 = X0("union_name", X0("unionName", str10, map), map);
        int iW6 = W0(0, "user_role", map);
        int iW7 = W0(W0(0, "user_donate", map), "union_donate_num", map);
        if (Y0(map.get("union_today_donate"))) {
            iW1 = 1;
        } else {
            iW1 = W0(0, "donate_state", map);
        }
        boolean zY3 = Y0(map.get("union_war_sign_up"));
        linkedHashMap6.put("unionId", Integer.valueOf(iW0));
        linkedHashMap6.put("union_id", Integer.valueOf(iW0));
        linkedHashMap6.put("unionName", strX2);
        c.a.z(linkedHashMap6, "union_name", strX2, iW6, "user_role", iW7, "user_donate");
        if (iW0 == 0) {
            i7 = 0;
        } else {
            i7 = 25;
        }
        linkedHashMap6.put("donate_num", Integer.valueOf(i7));
        linkedHashMap6.put("donate_state", Integer.valueOf(iW1));
        linkedHashMap6.put("union_war_sign_up", Integer.valueOf(zY3 ? 1 : 0));
        y1Var.e("unionId", ((Integer) linkedHashMap6.get("unionId")).intValue());
        y1Var.e("union_id", ((Integer) linkedHashMap6.get("union_id")).intValue());
        y1Var.f("unionName", (String) linkedHashMap6.get("unionName"));
        y1Var.f("union_name", (String) linkedHashMap6.get("union_name"));
        y1Var.e("user_role", ((Integer) linkedHashMap6.get("user_role")).intValue());
        y1Var.e("user_donate", ((Integer) linkedHashMap6.get("user_donate")).intValue());
        y1Var.e("donate_num", ((Integer) linkedHashMap6.get("donate_num")).intValue());
        y1Var.e("donate_state", ((Integer) linkedHashMap6.get("donate_state")).intValue());
        y1Var.e("union_war_sign_up", ((Integer) linkedHashMap6.get("union_war_sign_up")).intValue());
        y1Var.e("luxun", 0);
        y1Var.g("isAdult", true);
        y1Var.g("isBroadShowed", false);
        int iL4 = w1.l2(String.valueOf(map.get("ladderChallengeTimes")), 5);
        int iE3 = c.a.e(map, "ladderRankSalary", 0);
        LinkedHashMap linkedHashMap7 = new LinkedHashMap();
        linkedHashMap7.put("ladderChallengeTimes", Integer.valueOf(iL4));
        linkedHashMap7.put("ladderRankSalary", Integer.valueOf(iE3));
        linkedHashMap7.put("ladder_rank_salary", Integer.valueOf(iE3));
        linkedHashMap7.put("ladder_challenging_num", Integer.valueOf(iL4));
        y1Var.e("ladderChallengeTimes", ((Integer) linkedHashMap7.get("ladderChallengeTimes")).intValue());
        y1Var.e("ladderRankSalary", ((Integer) linkedHashMap7.get("ladderRankSalary")).intValue());
        y1Var.e("ladder_rank_salary", ((Integer) linkedHashMap7.get("ladder_rank_salary")).intValue());
        y1Var.e("ladder_challenging_num", ((Integer) linkedHashMap7.get("ladder_challenging_num")).intValue());
    }

    public final HashMap u(int i2, int i3, int i4, int i5, long j2, String str, Map map) {
        JSONObject jSONObjectT = t(i2, i3, i4, i5, j2, str, map);
        try {
            HashMap map2 = new HashMap();
            Iterator<String> itKeys = jSONObjectT.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map2.put(next, R(jSONObjectT.get(next)));
            }
            return map2;
        } catch (Exception e2) {
            z2.c("SGSCQ_SRV", "buildPlayerDataMap error: " + e2.getMessage());
            return new HashMap();
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00e3  */
    public final Map w0(String str) {
        Map mapB;
        com.sgscq.vpn.cloud.n0 n0Var;
        String strB;
        long j2;
        ArrayList arrayList;
        z4 z4Var = this.f737b;
        synchronized (z4Var.g(str)) {
            try {
                mapB = z4Var.f1606e.b(str, new a(z4Var, str, 5));
                if (mapB != null) {
                    t4 t4Var = z4Var.f1603b;
                    synchronized (t4Var) {
                        arrayList = new ArrayList(t4Var.c(str).f1346b);
                    }
                    if (!arrayList.isEmpty()) {
                        z4Var.f1604c.b(str, z4Var.f1605d, new d(z4Var, str, 15));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (mapB == null) {
            return null;
        }
        int iK0 = K0(0, "data_version", mapB);
        Context context = this.f738c;
        boolean z = true;
        if (context == null) {
            n0Var = null;
        } else {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("sgscq_cloud_passport_owner_v1", 0);
            String strG0 = c.e.g0(str);
            String string = sharedPreferences.getString(c.e.b0(strG0), "");
            String string2 = sharedPreferences.getString(c.e.k0(strG0), "");
            int i2 = sharedPreferences.getInt(c.e.q0(strG0), 0);
            boolean zS = c.e.S(string2, string);
            n0Var = new com.sgscq.vpn.cloud.n0("cloud".equals(string2) || zS, zS, string, i2);
        }
        boolean z2 = n0Var != null && n0Var.f432a;
        Context context2 = this.f738c;
        if (context2 == null) {
            strB = "";
        } else {
            CloudSessionStore$SessionData cloudSessionStore$SessionDataY = new m.e(5, context2).y();
            strB = cloudSessionStore$SessionDataY.isLoggedIn() ? c.e.b(cloudSessionStore$SessionDataY.afdianUserId) : "";
        }
        if (z2) {
            if (q0(mapB)) {
                String str2 = n0Var.f434c;
                if (!(str2 != null && !str2.isEmpty() && str2.equals(strB) && o0(str2, mapB))) {
                    z = false;
                }
            } else {
                z = false;
            }
        } else if (!l0(mapB) || M0(mapB) < 0 || M0(mapB) > 7) {
            z = false;
        }
        if (!z) {
            this.f737b.e(str);
            z2.g("SGSCQ_SRV", "[SavePlayer] Rejected unsupported save uid=" + str + " version=" + iK0 + " cloud=" + z2);
            throw new IllegalStateException(z2 ? "云存档归属或版本与当前账号不一致" : "本地存档版本高于当前客户端或格式无效");
        }
        if (s0(mapB)) {
            this.f737b.e(str);
            z2.g("SGSCQ_SRV", "[SavePlayer] Ignored unsupported settings max-level save uid=" + str);
            return null;
        }
        int iK1 = K0(H(), "user_power", mapB);
        int iK2 = K0(0, "user_power_date", mapB);
        long jL0 = L0(0L, "user_power_recover_updated_at", mapB);
        int iK3 = K0(G(), "user_energy", mapB);
        int iK4 = K0(0, "user_energy_date", mapB);
        long jL1 = L0(0L, "user_energy_recover_updated_at", mapB);
        long jG = c7.g();
        boolean zG0 = p5.G0(mapB, "user_power", "user_power_date", "user_power_recover_updated_at", H(), w1.a1(this.f738c).U0("RevertPowerSeconds", 300), jG);
        boolean zG1 = p5.G0(mapB, "user_energy", "user_energy_date", "user_energy_recover_updated_at", G(), w1.a1(this.f738c).U0("RevertEnergySeconds", 1800), jG);
        if (zG0) {
            StringBuilder sb = new StringBuilder("[PowerRecovery] uid=");
            sb.append(str);
            sb.append(" power ");
            sb.append(iK1);
            sb.append("->");
            sb.append(K0(H(), "user_power", mapB));
            sb.append(" date ");
            sb.append(iK2);
            sb.append("->");
            sb.append(K0(0, "user_power_date", mapB));
            sb.append(" updatedAt ");
            sb.append(jL0);
            sb.append("->");
            j2 = 0;
            sb.append(L0(0L, "user_power_recover_updated_at", mapB));
            z2.e("SGSCQ_SRV", sb.toString());
        } else {
            j2 = 0;
        }
        if (zG1) {
            z2.e("SGSCQ_SRV", "[EnergyRecovery] uid=" + str + " energy " + iK3 + "->" + K0(G(), "user_energy", mapB) + " date " + iK4 + "->" + K0(0, "user_energy_date", mapB) + " updatedAt " + jL1 + "->" + L0(j2, "user_energy_recover_updated_at", mapB));
        }
        if (zG0 || zG1) {
            S0(str, mapB);
        }
        return mapB;
    }

    public final HashMap y0(String str) {
        String str2;
        ArrayList arrayList;
        Context context;
        String str3;
        String str4;
        ArrayList arrayList2;
        int i2;
        ArrayList arrayList3;
        long jG = c7.g();
        HashMap mapP = c.a.p("account_uid", str, "user_id", str);
        mapP.put("user_nickname", this.f739d.getString("player_name", "玩家"));
        mapP.put("first_choose_general", "0");
        mapP.put("first_wine_general", "0");
        int i3 = 0;
        mapP.put("headIcon", 0);
        mapP.put("user_level", 1);
        mapP.put("user_vip_level", 0);
        mapP.put("user_experience", 0);
        mapP.put("user_coin", Integer.valueOf(J0("resource_coin", 0)));
        mapP.put("user_gold", 0);
        mapP.put("user_power", Integer.valueOf(H()));
        mapP.put("user_power_date", 0);
        mapP.put("user_energy", Integer.valueOf(G()));
        mapP.put("user_energy_date", 0);
        mapP.put("user_sign", "这个人很懒，什么都没有留下。");
        mapP.put("user_register_time", Long.valueOf(jG));
        mapP.put("user_last_login_time", Long.valueOf(jG));
        mapP.put("user_ability", 0);
        mapP.put("user_login_days", 1);
        mapP.put("gold_soul", 10);
        mapP.put("sliver_soul", 50);
        mapP.put("user_honor", 0);
        mapP.put("user_invite_code", 0);
        mapP.put("user_count_login_days", 1);
        mapP.put("user_map_step", 0);
        mapP.put("user_position_step", 0);
        mapP.put("user_elite_map_step", 0);
        mapP.put("user_elite_position_step", 0);
        mapP.put("unionId", 0);
        mapP.put("unionName", "");
        mapP.put("user_role", "");
        mapP.put("user_donate", 0);
        mapP.put("freshman_step", "0");
        mapP.put("server_step", "0");
        mapP.put("guide_step", "0");
        mapP.put("guide_completed", Boolean.FALSE);
        J0("resource_items_quantity", 0);
        J0("gift_boxes_enabled", 0);
        ArrayList arrayList4 = new ArrayList();
        Context context2 = this.f738c;
        ArrayList arrayListI0 = w1.a1(context2).i0();
        while (true) {
            str2 = "general_id";
            if (i3 >= arrayListI0.size()) {
                break;
            }
            String str5 = (String) arrayListI0.get(i3);
            HashMap mapP2 = c.a.p("pk_id", str5, "id", str5);
            mapP2.put("general_id", str5);
            mapP2.put("card_type", 1);
            mapP2.put("num", 0);
            arrayList4.add(mapP2);
            i3++;
        }
        String str6 = "upd";
        String str7 = "add";
        ArrayList arrayListM = c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", new ArrayList()}, mapP, "General"), new Object[]{"upd", new ArrayList(), "add", new ArrayList()}, mapP, "Skill"), new Object[]{"upd", new ArrayList(), "add", arrayList4}, mapP, "GeneralSoul"), new Object[]{"upd", new ArrayList(), "add", new ArrayList()}, mapP, "Item"), new Object[]{"add", new ArrayList(), "upd", new ArrayList()}, mapP, "TeamGeneral"), new Object[]{"add", new ArrayList(), "upd", new ArrayList()}, mapP, "Equipment"), new Object[]{"add", new ArrayList(), "upd", new ArrayList()}, mapP, "EquipmentPiece");
        Object[] objArr = new Object[4];
        objArr[0] = "upd";
        objArr[1] = new ArrayList();
        objArr[2] = "add";
        w1 w1VarA1 = w1.a1(context2);
        w1VarA1.getClass();
        ArrayList arrayList5 = new ArrayList();
        Iterator it = w1VarA1.i0().iterator();
        int i4 = 0;
        while (true) {
            arrayList = arrayList5;
            context = context2;
            str3 = str6;
            str4 = str7;
            arrayList2 = arrayListM;
            if (!it.hasNext()) {
                break;
            }
            HashMap map = mapP;
            String str8 = (String) it.next();
            HashMap mapP3 = c.a.p("pk_id", str8, "type", "1");
            mapP3.put(str2, str8);
            Map mapJ0 = w1VarA1.J0(str8);
            mapP3.put("resource_id", mapJ0 != null ? String.valueOf(mapJ0.getOrDefault("resource_id", str8)) : str8);
            mapP3.put("atlas_status", str8.equals("") ? "1" : "0");
            mapP3.put("general_status", str8.equals("") ? "1" : "0");
            mapP3.put("general_grade", "0");
            int i5 = i4 + 1;
            mapP3.put("relation_model", String.valueOf(i5));
            if (mapJ0 != null) {
                double dS0 = w1.s0("general_hp", mapJ0);
                double dS1 = w1.s0("general_attack", mapJ0);
                double dS2 = w1.s0("general_defense", mapJ0);
                double dS3 = w1.s0("general_wisdom", mapJ0);
                i2 = i5;
                mapP3.put("general_hp", String.valueOf(dS0));
                mapP3.put("general_attack", String.valueOf(dS1));
                mapP3.put("general_defense", String.valueOf(dS2));
                mapP3.put("general_wisdom", String.valueOf(dS3));
                arrayList3 = arrayList;
                w1VarA1.W(mapP3, mapJ0, dS0, dS1, dS2, dS3);
                mapP3.put("grade", Integer.valueOf(w1.b1("grade", mapJ0)));
                int iB1 = w1.b1("star", mapJ0);
                if (iB1 <= 0) {
                    iB1 = 1;
                }
                mapP3.put("star", Integer.valueOf(iB1));
                mapP3.put("general_sex", Integer.valueOf(w1.b1("general_sex", mapJ0)));
                int iB2 = w1.b1("general_orbit", mapJ0);
                if (iB2 <= 0) {
                    iB2 = 1;
                }
                mapP3.put("general_orbit", Integer.valueOf(iB2));
                String strR0 = w1VarA1.R0(str8);
                if (strR0 != null && !strR0.isEmpty()) {
                    mapP3.put("general_name", strR0);
                }
            } else {
                i2 = i5;
                arrayList3 = arrayList;
                mapP3.put("general_orbit", 1);
            }
            arrayList3.add(mapP3);
            arrayList5 = arrayList3;
            context2 = context;
            str6 = str3;
            str7 = str4;
            arrayListM = arrayList2;
            mapP = map;
            str2 = str2;
            i4 = i2;
        }
        HashMap map2 = mapP;
        Iterator it2 = w1VarA1.k0().iterator();
        while (it2.hasNext()) {
            String str9 = (String) it2.next();
            HashMap mapP4 = c.a.p("pk_id", str9, "skill_id", str9);
            mapP4.put("resource_id", str9);
            Iterator it3 = it2;
            mapP4.put("type", "4");
            mapP4.put("atlas_status", str9.equals("") ? "1" : "0");
            mapP4.put("general_status", "0");
            mapP4.put("general_grade", "0");
            i4++;
            mapP4.put("relation_model", String.valueOf(i4));
            arrayList.add(mapP4);
            it2 = it3;
        }
        for (Iterator it4 = w1VarA1.h0().iterator(); it4.hasNext(); it4 = it4) {
            String str10 = (String) it4.next();
            HashMap mapP5 = c.a.p("pk_id", str10, "type", "3");
            mapP5.put("equipment_id", str10);
            mapP5.put("resource_id", str10);
            mapP5.put("atlas_status", "0");
            mapP5.put("general_status", "0");
            mapP5.put("general_grade", "0");
            i4++;
            mapP5.put("relation_model", String.valueOf(i4));
            arrayList.add(mapP5);
        }
        if (w1VarA1.x == null) {
            w1VarA1.Q1();
        }
        for (Iterator it5 = w1VarA1.x.iterator(); it5.hasNext(); it5 = it5) {
            String str11 = (String) it5.next();
            HashMap mapP6 = c.a.p("pk_id", str11, "type", "10");
            mapP6.put("godness_id", str11);
            mapP6.put("resource_id", str11);
            mapP6.put("atlas_status", "0");
            mapP6.put("general_status", "0");
            mapP6.put("general_grade", "0");
            i4++;
            mapP6.put("relation_model", String.valueOf(i4));
            arrayList.add(mapP6);
        }
        boolean z = true;
        w1VarA1.f2(arrayList);
        objArr[3] = arrayList;
        map2.put("SkillPiece", p5.z0("del", c.a.m("del", arrayList2, objArr, map2, "Atlas"), str4, new ArrayList(), str3, new ArrayList()));
        com.sgscq.vpn.handler.d1.K0(map2);
        map2.put("BuddyGeneral", new ArrayList());
        map2.put("EvolutionInfo", p5.z0("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", new ArrayList(), new Object[]{str4, new ArrayList(), str3, new ArrayList()}, map2, "Gems"), new Object[]{str4, new ArrayList(), str3, new ArrayList()}, map2, "MagicalEqu"), new Object[]{str4, new ArrayList(), str3, new ArrayList()}, map2, "Goddess"), new Object[]{str4, new ArrayList(), str3, new ArrayList()}, map2, "MeridianTop"), str4, new ArrayList(), str3, new ArrayList()));
        map2.put("data_version", 7);
        if (context != null) {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("sgscq_cloud_passport_owner_v1", 0);
            String strG0 = c.e.g0(str);
            String string = sharedPreferences.getString(c.e.b0(strG0), "");
            String string2 = sharedPreferences.getString(c.e.k0(strG0), "");
            sharedPreferences.getInt(c.e.q0(strG0), 0);
            boolean zS = c.e.S(string2, string);
            if (!"cloud".equals(string2) && !zS) {
                z = false;
            }
            String strG1 = c.e.g0(string);
            if (z) {
                if (strG1.isEmpty()) {
                    throw new IllegalStateException("云存档缺少爱发电归属");
                }
                if (strG1 != null && !strG1.isEmpty()) {
                    map2.put("_afdian_owner_token", strG1);
                }
            }
        }
        return map2;
    }

    public final String z(Map map) {
        List list;
        try {
            String strA = o0.a(this.f738c, "surrenders.json");
            if (strA != null && !strA.isEmpty() && (list = (List) new a.o().e(strA, new ResponseBuilder$3().getType())) != null && !list.isEmpty()) {
                return y(list, map);
            }
            return "{}";
        } catch (Exception e2) {
            c.a.D(e2, new StringBuilder("[SurrenderInfo] build failed: "), "SGSCQ_SRV");
            return "{}";
        }
    }
}
