package com.sgscq.vpn.handler;

import android.content.Context;
import com.sgscq.vpn.a7;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.s5;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.z2;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f807a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f808b;

    public /* synthetic */ d1() {
        this.f807a = 15;
        this.f808b = new s5(this, 16, 2);
    }

    public static Map A(LinkedHashMap linkedHashMap, Map map) {
        Object obj = linkedHashMap.get("delta_data");
        return obj instanceof Map ? (Map) obj : map;
    }

    public static String A0(String str, Map map) {
        String str2;
        return (map == null || (str2 = (String) map.get(str)) == null) ? "" : str2;
    }

    public static Map B(LinkedHashMap linkedHashMap, Map map) {
        Object obj = linkedHashMap.get("delta_data");
        return obj instanceof Map ? (Map) obj : map;
    }

    public static ArrayList B0(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj instanceof Iterable) {
            for (Object obj2 : (Iterable) obj) {
                if (obj2 != null) {
                    String strTrim = String.valueOf(obj2).trim();
                    if (!strTrim.isEmpty() && !arrayList.contains(strTrim)) {
                        arrayList.add(strTrim);
                    }
                }
            }
            return arrayList;
        }
        for (String str : (obj == null ? "" : String.valueOf(obj)).split(",")) {
            if (str != null) {
                String strTrim2 = str.trim();
                if (!strTrim2.isEmpty() && !arrayList.contains(strTrim2)) {
                    arrayList.add(strTrim2);
                }
            }
        }
        return arrayList;
    }

    public static String[] C(LinkedHashMap linkedHashMap) {
        String str = "General";
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "General"));
        if (!strValueOf.trim().isEmpty() && !"null".equals(strValueOf)) {
            str = strValueOf;
        }
        String[] strArrSplit = str.split(",");
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            strArrSplit[i2] = strArrSplit[i2].trim();
        }
        return strArrSplit;
    }

    public static ArrayList C0(String str) {
        String strTrim;
        ArrayList arrayList = new ArrayList();
        if (!str.trim().isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    String strValueOf = String.valueOf(jSONArray.opt(i2));
                    if (!strValueOf.isEmpty()) {
                        arrayList.add(strValueOf);
                    }
                }
                return arrayList;
            } catch (Exception unused) {
                for (String strSubstring : str.split(",")) {
                    if (strSubstring != null) {
                        while (true) {
                            strTrim = strSubstring.trim();
                            if (!strTrim.startsWith("[") && !strTrim.startsWith("\"") && !strTrim.startsWith("'")) {
                                break;
                            }
                            strSubstring = strTrim.substring(1);
                        }
                        while (true) {
                            if (!strTrim.endsWith("]") && !strTrim.endsWith("\"") && !strTrim.endsWith("'")) {
                                break;
                            }
                            strTrim = strTrim.substring(0, strTrim.length() - 1).trim();
                        }
                    } else {
                        strTrim = "";
                    }
                    if (!strTrim.isEmpty()) {
                        arrayList.add(strTrim);
                    }
                }
            }
        }
        return arrayList;
    }

    public static LinkedHashMap D(Map map) {
        Object obj = map.get("Item");
        if (!(obj instanceof Map)) {
            return p5.z0("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
        }
        Map map2 = (Map) obj;
        return p5.z0("Item", p5.z0("del", map2.get("del") instanceof List ? new ArrayList((List) map2.get("del")) : new ArrayList(), "upd", map2.get("upd") instanceof List ? new ArrayList((List) map2.get("upd")) : new ArrayList(), "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0("Item", map)}, map, "Item")), new Object[0]);
    }

    public static int D0(Map map) {
        return Math.max(1, S0(map.get("user_level")));
    }

    public static LinkedHashMap E(String str, Map map) {
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            return p5.z0(str, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
        }
        Map map2 = (Map) obj;
        return p5.z0(str, p5.z0("del", map2.get("del") instanceof List ? new ArrayList((List) map2.get("del")) : new ArrayList(), "upd", map2.get("upd") instanceof List ? new ArrayList((List) map2.get("upd")) : new ArrayList(), "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0(str, map)}, map, str)), new Object[0]);
    }

    public static int E0(Map map) {
        return Math.max(1, b0(map.get("user_level"), b0(map.get("level"), 1)));
    }

    public static String F(Map map) {
        String strValueOf = String.valueOf(map.get("email_type"));
        if ("normalUser".equals(strValueOf) || "friendApply".equals(strValueOf)) {
            return "friend";
        }
        return "normalSystem".equals(strValueOf) ? "system" : strValueOf;
    }

    public static void F0(Map map, int i2, int i3, long j2) {
        map.put("level", Integer.valueOf(i2));
        map.put("general_level", Integer.valueOf(i2));
        map.put("exp", Integer.valueOf(i3));
        map.put("general_exp", Long.valueOf(Math.max(0L, j2)));
        map.put("general_experience", Long.valueOf(Math.max(0L, j2)));
    }

    public static List G(Map map) {
        List listF0 = w1.f0("General", map);
        if (!listF0.isEmpty() || (map.get("General") instanceof Map)) {
            return listF0;
        }
        ArrayList arrayList = new ArrayList();
        map.put("General", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList));
        return arrayList;
    }

    public static void G0(LinkedHashMap linkedHashMap, ArrayList arrayList, String str, ArrayList arrayList2, ArrayList arrayList3) {
        if (arrayList2.isEmpty() && arrayList3.isEmpty()) {
            return;
        }
        linkedHashMap.put(str, p5.z0("del", arrayList2, "upd", arrayList3, "add", new ArrayList()));
        arrayList.add(str);
    }

    public static int H(int i2) {
        if (i2 <= 10) {
            return 5;
        }
        if (i2 <= 20) {
            return 10;
        }
        if (i2 <= 30) {
            return 20;
        }
        if (i2 <= 40) {
            return 40;
        }
        if (i2 <= 50) {
            return 80;
        }
        if (i2 <= 60) {
            return 160;
        }
        if (i2 <= 70) {
            return 320;
        }
        if (i2 <= 80) {
            return 640;
        }
        if (i2 <= 90) {
            return 1280;
        }
        if (i2 <= 100) {
            return 2560;
        }
        if (i2 <= 120) {
            return 5120;
        }
        if (i2 <= 140) {
            return 10240;
        }
        return i2 <= 300 ? 20480 : 40960;
    }

    public static ArrayList H0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("pk_id", "1", "item_id", "600095", "item_num", 1, "need_num", 1, "price", 1, "discount_price", 1, "gift_status", 0));
        return arrayList;
    }

    public static LinkedHashMap I(String str) {
        Boolean bool = Boolean.FALSE;
        return p5.z0("ret", -1, "code", -1, "result", bool, "msg", str, "error_code", -1, "return_info", p5.z0("result", bool, new Object[0]));
    }

    public static HashSet I0(int i2, ArrayList arrayList) {
        int iMin;
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        if (!arrayList.isEmpty() && (iMin = Math.min(com.sgscq.vpn.cloud.m0.c3(i2), arrayList.size())) > 0) {
            ArrayList arrayList3 = new ArrayList(arrayList);
            for (int i3 = 0; i3 < iMin; i3++) {
                int size = arrayList3.size() - i3;
                double dRandom = Math.random();
                if (Double.isNaN(dRandom) || dRandom < 0.0d) {
                    dRandom = 0.0d;
                }
                Collections.swap(arrayList3, i3, Math.min(size - 1, (int) Math.floor(dRandom * ((double) size))) + i3);
                arrayList2.add((Map) arrayList3.get(i3));
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String strValueOf = String.valueOf(((Map) it.next()).getOrDefault("pk_id", ""));
            if (!strValueOf.isEmpty()) {
                hashSet.add(strValueOf);
            }
        }
        return hashSet;
    }

    public static LinkedHashMap J(String str) {
        return p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str, "error_code", -1);
    }

    public static ArrayList J0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("uid", "100001", "player_id", "100001", "nick", "Player", "server", 1, "server_id", 1, "level", 1, "rank", 1, "pop_rank", 1, "coin", 100, "fightPoint", 0, "reward", M0(null)));
        return arrayList;
    }

    public static LinkedHashMap K(String str) {
        return p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str, "error_code", -1);
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0111  */
    /* JADX WARN: Code duplicated, block: B:56:0x0116  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:9:0x0021 A[LOOP:1: B:8:0x001f->B:9:0x0021, LOOP_END] */
    public static boolean K0(Map map) {
        ArrayList arrayList;
        int i2;
        boolean z;
        List<Map> list;
        int i3;
        boolean zBooleanValue;
        Object obj = map.get("Combat");
        if (obj instanceof List) {
            List list2 = (List) obj;
            if (list2.isEmpty()) {
                arrayList = new ArrayList();
                for (i2 = 1; i2 <= 4; i2++) {
                    arrayList.add(p5.z0("pk_id", String.valueOf(i2), "id", String.valueOf(i2), "combat_type", String.valueOf(i2), "type", String.valueOf(i2), "level", "1", "combat_level", "1", "exp", "0", "combat_exp", "0"));
                }
                map.put("Combat", arrayList);
                z = true;
                list = arrayList;
            } else {
                z = false;
                list = list2;
            }
        } else {
            arrayList = new ArrayList();
            while (i2 <= 4) {
                arrayList.add(p5.z0("pk_id", String.valueOf(i2), "id", String.valueOf(i2), "combat_type", String.valueOf(i2), "type", String.valueOf(i2), "level", "1", "combat_level", "1", "exp", "0", "combat_exp", "0"));
            }
            map.put("Combat", arrayList);
            z = true;
            list = arrayList;
        }
        int iA0 = a0(map.get("user_level"), 0);
        if (iA0 <= 0) {
            iA0 = a0(map.get("level"), 0);
        }
        if (iA0 <= 0) {
            iA0 = a0(map.get("roleLevel"), 0);
        }
        if (iA0 <= 0) {
            iA0 = a0(map.get("role_level"), 1);
        }
        int iMax = Math.max(1, iA0);
        boolean z2 = false;
        for (Map map2 : list) {
            int iA1 = a0(map2.get("combat_type"), a0(map2.get("type"), 1));
            if (iA1 == 1) {
                i3 = 5;
            } else if (iA1 == 2) {
                i3 = 10;
            } else if (iA1 != 3) {
                i3 = iA1 != 4 ? 1 : 20;
            } else {
                i3 = 15;
            }
            String strValueOf = String.valueOf(i3);
            boolean z3 = iMax >= i3;
            if (c.a.A(map2, "open_level", strValueOf)) {
                Object obj2 = map2.get("is_open");
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
                if (zBooleanValue != z3) {
                    z2 = true;
                }
            } else {
                z2 = true;
            }
            map2.put("open_level", strValueOf);
            map2.put("is_open", Boolean.valueOf(z3));
        }
        return z2 || z;
    }

    public static String L(String str) {
        int iHashCode = str.hashCode() & Integer.MAX_VALUE;
        long j2 = iHashCode;
        return String.format("%08x%04x%04x%04x%012x", Long.valueOf(j2), Integer.valueOf((iHashCode & 4095) | 16384), Integer.valueOf(((iHashCode * 7) & 16383) | 32768), Integer.valueOf((iHashCode * 13) & 65535), Long.valueOf((j2 * 31) & 1099511627775L));
    }

    public static ArrayList L0(int i2, Map map) {
        return p5.v0(p5.z0("pk_id", map.get("pk_id"), "id", map.get("id"), "item_id", map.get("item_id"), "num", Integer.valueOf(i2), "item_num", Integer.valueOf(i2)));
    }

    public static ArrayList M(int i2) {
        ArrayList arrayList = new ArrayList();
        Object[] objArr = new Object[10];
        objArr[0] = "item_id";
        objArr[1] = "600001";
        objArr[2] = "goods_name";
        objArr[3] = "itemname600001";
        objArr[4] = "goods_desc";
        objArr[5] = "itemdesc600001";
        objArr[6] = "point";
        objArr[7] = 10;
        objArr[8] = "can_exchange";
        objArr[9] = Boolean.valueOf(i2 >= 10);
        arrayList.add(p5.z0("pk_id", "1", objArr));
        Object[] objArr2 = new Object[10];
        objArr2[0] = "item_id";
        objArr2[1] = "600002";
        objArr2[2] = "goods_name";
        objArr2[3] = "itemname600002";
        objArr2[4] = "goods_desc";
        objArr2[5] = "itemdesc600002";
        objArr2[6] = "point";
        objArr2[7] = 20;
        objArr2[8] = "can_exchange";
        objArr2[9] = Boolean.valueOf(i2 >= 20);
        arrayList.add(p5.z0("pk_id", "2", objArr2));
        return arrayList;
    }

    public static ArrayList M0(Map map) {
        String strValueOf = map == null ? "" : String.valueOf(map.get("ladder_war_selected_reward_pk_id"));
        ArrayList arrayListB0 = B0(map != null ? map.get("ladder_war_used_reward_pk_ids") : "");
        ArrayList arrayList = new ArrayList();
        Object[] objArr = new Object[12];
        objArr[0] = "item_id";
        objArr[1] = "600001";
        objArr[2] = "goods_name";
        objArr[3] = "itemname600001";
        objArr[4] = "goods_desc";
        objArr[5] = "itemdesc600001";
        objArr[6] = "price";
        objArr[7] = 10;
        objArr[8] = "is_used";
        objArr[9] = Boolean.valueOf(arrayListB0.contains("1"));
        objArr[10] = "is_selected";
        objArr[11] = Boolean.valueOf("1".equals(strValueOf) || arrayListB0.contains("1"));
        arrayList.add(p5.z0("pk_id", "1", objArr));
        return arrayList;
    }

    public static ArrayList N(int i2) {
        ArrayList arrayList = new ArrayList();
        Object[] objArr = new Object[14];
        objArr[0] = "item_id";
        objArr[1] = "600001";
        objArr[2] = "name";
        objArr[3] = "itemname600001";
        objArr[4] = "desc";
        objArr[5] = "itemdesc600001";
        objArr[6] = "point";
        objArr[7] = 10;
        objArr[8] = "exchange_num";
        objArr[9] = 99;
        objArr[10] = "exchanged_num";
        objArr[11] = 0;
        objArr[12] = "can_exchange";
        objArr[13] = Boolean.valueOf(i2 >= 10);
        arrayList.add(p5.z0("pk_id", "1", objArr));
        Object[] objArr2 = new Object[14];
        objArr2[0] = "item_id";
        objArr2[1] = "600002";
        objArr2[2] = "name";
        objArr2[3] = "itemname600002";
        objArr2[4] = "desc";
        objArr2[5] = "itemdesc600002";
        objArr2[6] = "point";
        objArr2[7] = 20;
        objArr2[8] = "exchange_num";
        objArr2[9] = 99;
        objArr2[10] = "exchanged_num";
        objArr2[11] = 0;
        objArr2[12] = "can_exchange";
        objArr2[13] = Boolean.valueOf(i2 >= 20);
        arrayList.add(p5.z0("pk_id", "2", objArr2));
        return arrayList;
    }

    public static int O0(Object obj) {
        return w1.l2(String.valueOf(obj), 0);
    }

    public static int P0(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    /* JADX WARN: Code duplicated, block: B:163:0x0472  */
    /* JADX WARN: Code duplicated, block: B:170:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:172:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:181:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:184:0x04f5 A[LOOP:9: B:179:0x04de->B:184:0x04f5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:187:0x0502  */
    /* JADX WARN: Code duplicated, block: B:196:0x0551  */
    /* JADX WARN: Code duplicated, block: B:199:0x0581 A[LOOP:7: B:199:0x0581->B:201:0x0590, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:201:0x0590 A[LOOP:7: B:199:0x0581->B:201:0x0590, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:204:0x05dd  */
    /* JADX WARN: Code duplicated, block: B:213:0x049c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:238:0x0596 A[EDGE_INSN: B:238:0x0596->B:202:0x0596 BREAK  A[LOOP:7: B:199:0x0581->B:201:0x0590], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x04f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x04fb A[EDGE_INSN: B:243:0x04fb->B:186:0x04fb BREAK  A[LOOP:9: B:179:0x04de->B:184:0x04f5], SYNTHETIC] */
    private byte[] Q(String str, Map map) {
        LinkedHashMap linkedHashMap;
        Object objT1;
        String str2;
        Map map2;
        String str3;
        String str4;
        int i2;
        Object obj;
        int iA0;
        int iA1;
        int iX;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList;
        ArrayList arrayList2;
        w1 w1VarZ0;
        Iterator it;
        Map map3;
        String strJ;
        Iterator it2;
        String str5;
        w1 w1Var;
        Iterator it3;
        Map map4;
        LinkedHashMap linkedHashMap2;
        ArrayList arrayList3;
        StringBuilder sb;
        Iterator it4;
        LinkedHashMap linkedHashMapF1;
        ArrayList arrayList4;
        ArrayList arrayList5;
        LinkedHashMap linkedHashMapF2;
        String str6;
        String strA;
        LinkedHashMap linkedHashMap3 = null;
        if (!("combat.getUserCombatList".equals(str) || "combat.upgradeCombatLevel".equals(str))) {
            return null;
        }
        k0 k0Var = (k0) this.f808b;
        String strE = k0Var.e(map);
        Map mapW0 = k0Var.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        String str7 = "combat_info";
        if ("combat.getUserCombatList".equals(str)) {
            boolean zK0 = K0(mapW0);
            Object obj2 = mapW0.get("Combat");
            List arrayList6 = obj2 instanceof List ? (List) obj2 : new ArrayList();
            linkedHashMapF2 = f1("");
            linkedHashMapF2.put("combat_list", arrayList6);
            linkedHashMapF2.put("combat_info", arrayList6);
            linkedHashMapF2.put("Combat", arrayList6);
            if (zK0) {
                V0(n0(), mapW0, linkedHashMapF2);
            }
            linkedHashMapF2.put("cmn", g(strE, A(linkedHashMapF2, new LinkedHashMap()), mapW0, r0(linkedHashMapF2)));
            str6 = strE;
        } else {
            w1.a1(k0Var.f901a);
            Context context = k0Var.f901a;
            String str8 = "General";
            if (context != null) {
                linkedHashMap3 = new LinkedHashMap();
                for (Map map5 : w1.f0("General", p5.z0("General", p5.z0("add", p5.t1(com.sgscq.vpn.o0.a(context, "generals.json")), new Object[0]), new Object[0]))) {
                    Object obj3 = map5.get("id");
                    if (obj3 != null) {
                        linkedHashMap3.put(String.valueOf(obj3), map5);
                    }
                }
            }
            Context context2 = k0Var.f901a;
            LinkedHashMap linkedHashMapU1 = context2 == null ? null : p5.u1(com.sgscq.vpn.o0.a(context2, "eated_exp.json"));
            Context context3 = k0Var.f901a;
            if (context3 == null) {
                linkedHashMap = null;
            } else {
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                ArrayList arrayListT1 = p5.t1(com.sgscq.vpn.o0.a(context3, "user_levels.json"));
                int i6 = 0;
                while (i6 < arrayListT1.size()) {
                    Object obj4 = arrayListT1.get(i6);
                    ArrayList arrayList7 = arrayListT1;
                    if (obj4 instanceof Map) {
                        linkedHashMap4.put(String.valueOf(i6 + 1), obj4);
                    }
                    i6++;
                    arrayListT1 = arrayList7;
                }
                linkedHashMap = linkedHashMap4;
            }
            Context context4 = k0Var.f901a;
            if (context4 == null || (strA = com.sgscq.vpn.o0.a(context4, "combat_levels.json")) == null || strA.trim().isEmpty()) {
                objT1 = null;
            } else {
                try {
                    objT1 = strA.trim().startsWith("[") ? p5.t1(strA) : p5.u1(strA);
                } catch (Exception unused) {
                    objT1 = null;
                }
            }
            K0(mapW0);
            Object obj5 = mapW0.get("Combat");
            List arrayList8 = obj5 instanceof List ? (List) obj5 : new ArrayList();
            String strY0 = y0("combat_id", map);
            String strY1 = strY0.isEmpty() ? y0("pk_id", map) : strY0;
            if (strY1.isEmpty()) {
                strY1 = y0("id", map);
            }
            String str9 = strY1;
            if (str9.isEmpty()) {
                str2 = strE;
                str3 = str7;
                map2 = null;
            } else {
                Iterator it5 = arrayList8.iterator();
                while (true) {
                    if (it5.hasNext()) {
                        str2 = strE;
                        map2 = (Map) it5.next();
                        str3 = str7;
                        String str10 = str9;
                        if (!c.a.A(map2, "pk_id", str10) && !c.a.A(map2, "combat_type", str10) && !c.a.A(map2, "id", str10)) {
                            str9 = str10;
                            str7 = str3;
                            strE = str2;
                        }
                    } else {
                        str2 = strE;
                        str3 = str7;
                        map2 = null;
                    }
                }
            }
            if (map2 == null) {
                Boolean bool = Boolean.FALSE;
                linkedHashMapF1 = p5.z0("ret", -1, "code", -1, "result", bool, "msg", "combat not found", "error_code", -1, "return_info", p5.z0("result", bool, new Object[0]));
            } else {
                ArrayList arrayListC0 = C0(y0("gids", map));
                ArrayList arrayListC1 = C0(y0("sids", map));
                String strY2 = y0("num", map);
                ArrayList arrayList9 = new ArrayList();
                Iterator it6 = C0(strY2).iterator();
                while (it6.hasNext()) {
                    arrayList9.add(Integer.valueOf(w1.l2((String) it6.next(), 1)));
                    it6 = it6;
                    arrayList8 = arrayList8;
                }
                List list = arrayList8;
                ArrayList arrayList10 = new ArrayList();
                ArrayList arrayList11 = new ArrayList();
                String str11 = "";
                final ArrayList arrayList12 = new ArrayList();
                Object obj6 = objT1;
                final ArrayList arrayList13 = new ArrayList();
                ArrayList arrayList14 = new ArrayList();
                List listF0 = w1.f0("General", mapW0);
                Iterator it7 = arrayListC0.iterator();
                int iP0 = 0;
                while (true) {
                    str8 = str8;
                    str4 = "Skill";
                    linkedHashMap = linkedHashMap;
                    if (!it7.hasNext()) {
                        break;
                    }
                    it7 = it7;
                    final String str12 = (String) it7.next();
                    Iterator it8 = listF0.iterator();
                    while (it8.hasNext()) {
                        Map map6 = map2;
                        Map map7 = (Map) it8.next();
                        if (c.a.A(map7, "pk_id", str12)) {
                            ArrayList arrayList15 = arrayList14;
                            iP0 = p0(map7, linkedHashMap3, linkedHashMapU1, false) + iP0;
                            it8.remove();
                            if (!arrayList10.contains(str12)) {
                                arrayList10.add(str12);
                            }
                            List listF1 = w1.f0("Skill", mapW0);
                            if (!listF1.isEmpty()) {
                                listF1.removeIf(new Predicate() { // from class: com.sgscq.vpn.handler.h

                                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                                    public final /* synthetic */ String f854b = "general_pk_id";

                                    @Override // java.util.function.Predicate
                                    public final boolean test(Object obj7) {
                                        Map map8 = (Map) obj7;
                                        String strValueOf = String.valueOf(map8.get(this.f854b));
                                        String str13 = str12;
                                        if (!str13.equals(strValueOf)) {
                                            return false;
                                        }
                                        String strValueOf2 = String.valueOf(map8.getOrDefault("pk_id", str13));
                                        List list2 = arrayList12;
                                        if (!list2.contains(strValueOf2)) {
                                            list2.add(strValueOf2);
                                        }
                                        return true;
                                    }
                                });
                                v("Skill", mapW0);
                            }
                            List listF2 = w1.f0("TeamGeneral", mapW0);
                            if (!listF2.isEmpty()) {
                                listF2.removeIf(new Predicate() { // from class: com.sgscq.vpn.handler.h

                                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                                    public final /* synthetic */ String f854b = "general_pk_id";

                                    @Override // java.util.function.Predicate
                                    public final boolean test(Object obj7) {
                                        Map map8 = (Map) obj7;
                                        String strValueOf = String.valueOf(map8.get(this.f854b));
                                        String str13 = str12;
                                        if (!str13.equals(strValueOf)) {
                                            return false;
                                        }
                                        String strValueOf2 = String.valueOf(map8.getOrDefault("pk_id", str13));
                                        List list2 = arrayList13;
                                        if (!list2.contains(strValueOf2)) {
                                            list2.add(strValueOf2);
                                        }
                                        return true;
                                    }
                                });
                                v("TeamGeneral", mapW0);
                            }
                            arrayList14 = arrayList15;
                            map2 = map6;
                            break;
                        }
                        map2 = map6;
                    }
                }
                ArrayList arrayList16 = arrayList14;
                Map map8 = map2;
                String str13 = "GeneralSoul";
                List listF3 = w1.f0("GeneralSoul", mapW0);
                int i7 = 0;
                int i8 = 0;
                while (i7 < arrayListC1.size()) {
                    String str14 = (String) arrayListC1.get(i7);
                    ArrayList arrayList17 = arrayListC1;
                    int iIntValue = i7 < arrayList9.size() ? ((Integer) arrayList9.get(i7)).intValue() : 1;
                    if (iIntValue <= 0) {
                        iIntValue = 1;
                    }
                    Iterator it9 = listF3.iterator();
                    while (true) {
                        if (!it9.hasNext()) {
                            arrayList4 = arrayList9;
                            arrayList5 = arrayList16;
                            break;
                        }
                        arrayList4 = arrayList9;
                        Map map9 = (Map) it9.next();
                        if (c.a.A(map9, "pk_id", str14)) {
                            int iA2 = a0(map9.get("num"), a0(map9.get("total_num"), 0));
                            int iMin = Math.min(Math.max(1, iA2), iIntValue);
                            int iP1 = (p0(map9, linkedHashMap3, linkedHashMapU1, true) * iMin) + i8;
                            int iMax = Math.max(0, iA2 - iMin);
                            if (iMax <= 0) {
                                it9.remove();
                                if (!arrayList11.contains(str14)) {
                                    arrayList11.add(str14);
                                }
                                arrayList5 = arrayList16;
                            } else {
                                map9.put("num", Integer.valueOf(iMax));
                                map9.put("total_num", Integer.valueOf(iMax));
                                arrayList5 = arrayList16;
                                arrayList5.add(map9);
                            }
                            i8 = iP1;
                            break;
                        }
                        arrayList9 = arrayList4;
                    }
                    i7++;
                    arrayList16 = arrayList5;
                    arrayListC1 = arrayList17;
                    listF3 = listF3;
                    arrayList9 = arrayList4;
                    arrayList12 = arrayList12;
                    str4 = str4;
                    str13 = str13;
                }
                String str15 = str13;
                ArrayList arrayList18 = arrayList12;
                String str16 = str4;
                ArrayList arrayList19 = arrayList16;
                int i9 = iP0 + i8;
                int iA3 = a0(map8.get("level"), a0(map8.get("combat_level"), 1));
                int iMax2 = Math.max(0, i9) + a0(map8.get("exp"), a0(map8.get("combat_exp"), 0));
                if (linkedHashMap == null) {
                    obj = "user_level";
                    i2 = iMax2;
                } else {
                    i2 = iMax2;
                    int iA4 = a0(mapW0.get("user_level"), 1);
                    obj = "user_level";
                    Object obj7 = linkedHashMap.get(String.valueOf(iA4));
                    if (obj7 == null) {
                        obj7 = linkedHashMap.get(String.valueOf(iA4));
                    }
                    if (obj7 instanceof Map) {
                        iA0 = a0(((Map) obj7).get("combat_max_level"), 0);
                    }
                    iA1 = a0(map8.get("combat_type"), a0(map8.get("type"), 1));
                    iX = x(obj6, iA1, iA3);
                    i3 = i2;
                    i4 = iA3;
                    while (true) {
                        if ((iA0 <= 0 && i4 >= iA0) || iX <= 0 || i3 < iX) {
                            break;
                        }
                        i3 -= iX;
                        i4++;
                        iX = x(obj6, iA1, i4);
                    }
                    if (iA0 > 0 || i4 < iA0) {
                        i5 = 1;
                    } else {
                        i5 = 1;
                        i3 = 0;
                    }
                    String strValueOf = String.valueOf(Math.max(i5, i4));
                    String strValueOf2 = String.valueOf(Math.max(0, i3));
                    map8.put("level", strValueOf);
                    map8.put("combat_level", strValueOf);
                    map8.put("exp", strValueOf2);
                    map8.put("combat_exp", strValueOf2);
                    arrayList = new ArrayList();
                    arrayList2 = new ArrayList();
                    if (i4 != iA3) {
                        try {
                            w1VarZ0 = w1.Z0();
                            it = w1.f0("TeamGeneral", mapW0).iterator();
                            while (it.hasNext()) {
                                map3 = (Map) it.next();
                                String str17 = str11;
                                strJ = c.a.j(map3, "pk_id", str17, "general_pk_id");
                                if (strJ.isEmpty()) {
                                    it2 = it;
                                } else {
                                    it2 = it;
                                    if (!"null".equalsIgnoreCase(strJ) && w1VarZ0.F2(strJ, mapW0)) {
                                        str5 = str8;
                                        it3 = w1.f0(str5, mapW0).iterator();
                                        while (true) {
                                            if (it3.hasNext()) {
                                                w1Var = w1VarZ0;
                                                map4 = null;
                                                break;
                                            }
                                            w1Var = w1VarZ0;
                                            map4 = (Map) it3.next();
                                            if (c.a.A(map4, "pk_id", strJ)) {
                                                break;
                                            }
                                            w1VarZ0 = w1Var;
                                        }
                                        d(arrayList, map4);
                                        d(arrayList2, map3);
                                    }
                                    w1VarZ0 = w1Var;
                                    str8 = str5;
                                    it = it2;
                                    str11 = str17;
                                }
                                str5 = str8;
                                w1Var = w1VarZ0;
                                w1VarZ0 = w1Var;
                                str8 = str5;
                                it = it2;
                                str11 = str17;
                            }
                        } catch (IllegalStateException unused2) {
                        }
                    }
                    String str18 = str8;
                    linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("Combat", list);
                    arrayList3 = new ArrayList();
                    arrayList3.add("Combat");
                    G0(linkedHashMap2, arrayList3, str18, arrayList10, arrayList);
                    G0(linkedHashMap2, arrayList3, str15, arrayList11, arrayList19);
                    G0(linkedHashMap2, arrayList3, str16, arrayList18, new ArrayList());
                    if (arrayList13.isEmpty() || !arrayList2.isEmpty()) {
                        linkedHashMap2.put("TeamGeneral", p5.z0("del", arrayList13, "upd", new ArrayList(), "add", w1.f0("TeamGeneral", mapW0)));
                        arrayList3.add("TeamGeneral");
                    }
                    sb = new StringBuilder();
                    it4 = arrayList3.iterator();
                    if (it4.hasNext()) {
                        while (true) {
                            sb.append((CharSequence) it4.next());
                            if (it4.hasNext()) {
                                break;
                            }
                            sb.append((CharSequence) ",");
                        }
                    }
                    linkedHashMapF1 = f1(sb.toString());
                    linkedHashMapF1.put(str3, list);
                    linkedHashMapF1.put("Combat", list);
                    linkedHashMapF1.put("combat", map8);
                    linkedHashMapF1.put("exp", Integer.valueOf(i9));
                    linkedHashMapF1.put("level_before", Integer.valueOf(iA3));
                    linkedHashMapF1.put("level_now", Integer.valueOf(i4));
                    linkedHashMapF1.put("delta_data", linkedHashMap2);
                    v(str18, mapW0);
                    v(str15, mapW0);
                    v(str16, mapW0);
                    v("TeamGeneral", mapW0);
                    if (y(linkedHashMapF1)) {
                        p.d(1, Math.max(1, a0(mapW0.get(obj), a0(mapW0.get("level"), 1))), "104", c7.b(), mapW0);
                    }
                }
                iA0 = 0;
                iA1 = a0(map8.get("combat_type"), a0(map8.get("type"), 1));
                iX = x(obj6, iA1, iA3);
                i3 = i2;
                i4 = iA3;
                while (true) {
                    if (iA0 <= 0) {
                        i3 -= iX;
                        i4++;
                        iX = x(obj6, iA1, i4);
                    } else {
                        i3 -= iX;
                        i4++;
                        iX = x(obj6, iA1, i4);
                    }
                }
                if (iA0 > 0) {
                    i5 = 1;
                } else {
                    i5 = 1;
                }
                String strValueOf3 = String.valueOf(Math.max(i5, i4));
                String strValueOf4 = String.valueOf(Math.max(0, i3));
                map8.put("level", strValueOf3);
                map8.put("combat_level", strValueOf3);
                map8.put("exp", strValueOf4);
                map8.put("combat_exp", strValueOf4);
                arrayList = new ArrayList();
                arrayList2 = new ArrayList();
                if (i4 != iA3) {
                    w1VarZ0 = w1.Z0();
                    it = w1.f0("TeamGeneral", mapW0).iterator();
                    while (it.hasNext()) {
                        map3 = (Map) it.next();
                        String str19 = str11;
                        strJ = c.a.j(map3, "pk_id", str19, "general_pk_id");
                        if (strJ.isEmpty()) {
                            it2 = it;
                            if (!"null".equalsIgnoreCase(strJ)) {
                                str5 = str8;
                                it3 = w1.f0(str5, mapW0).iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        w1Var = w1VarZ0;
                                        map4 = null;
                                        break;
                                    }
                                    w1Var = w1VarZ0;
                                    map4 = (Map) it3.next();
                                    if (c.a.A(map4, "pk_id", strJ)) {
                                        break;
                                        break;
                                    }
                                    w1VarZ0 = w1Var;
                                }
                                d(arrayList, map4);
                                d(arrayList2, map3);
                            }
                            w1VarZ0 = w1Var;
                            str8 = str5;
                            it = it2;
                            str11 = str19;
                        } else {
                            it2 = it;
                        }
                        str5 = str8;
                        w1Var = w1VarZ0;
                        w1VarZ0 = w1Var;
                        str8 = str5;
                        it = it2;
                        str11 = str19;
                    }
                }
                String str110 = str8;
                linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("Combat", list);
                arrayList3 = new ArrayList();
                arrayList3.add("Combat");
                G0(linkedHashMap2, arrayList3, str110, arrayList10, arrayList);
                G0(linkedHashMap2, arrayList3, str15, arrayList11, arrayList19);
                G0(linkedHashMap2, arrayList3, str16, arrayList18, new ArrayList());
                if (arrayList13.isEmpty()) {
                    linkedHashMap2.put("TeamGeneral", p5.z0("del", arrayList13, "upd", new ArrayList(), "add", w1.f0("TeamGeneral", mapW0)));
                    arrayList3.add("TeamGeneral");
                } else {
                    linkedHashMap2.put("TeamGeneral", p5.z0("del", arrayList13, "upd", new ArrayList(), "add", w1.f0("TeamGeneral", mapW0)));
                    arrayList3.add("TeamGeneral");
                }
                sb = new StringBuilder();
                it4 = arrayList3.iterator();
                if (it4.hasNext()) {
                    while (true) {
                        sb.append((CharSequence) it4.next());
                        if (it4.hasNext()) {
                            break;
                            break;
                        }
                        sb.append((CharSequence) ",");
                    }
                }
                linkedHashMapF1 = f1(sb.toString());
                linkedHashMapF1.put(str3, list);
                linkedHashMapF1.put("Combat", list);
                linkedHashMapF1.put("combat", map8);
                linkedHashMapF1.put("exp", Integer.valueOf(i9));
                linkedHashMapF1.put("level_before", Integer.valueOf(iA3));
                linkedHashMapF1.put("level_now", Integer.valueOf(i4));
                linkedHashMapF1.put("delta_data", linkedHashMap2);
                v(str110, mapW0);
                v(str15, mapW0);
                v(str16, mapW0);
                v("TeamGeneral", mapW0);
                if (y(linkedHashMapF1)) {
                    p.d(1, Math.max(1, a0(mapW0.get(obj), a0(mapW0.get("level"), 1))), "104", c7.b(), mapW0);
                }
            }
            linkedHashMapF2 = linkedHashMapF1;
            if (y(linkedHashMapF2)) {
                V0(n0(), mapW0, linkedHashMapF2);
            }
            str6 = str2;
            linkedHashMapF2.put("cmn", g(str6, A(linkedHashMapF2, mapW0), mapW0, r0(linkedHashMapF2)));
            k0Var = k0Var;
        }
        k0Var.f904d.S0(str6, mapW0);
        return k0Var.n(p5.s1(linkedHashMapF2));
    }

    public static int Q0(Object obj) {
        return w1.l2(String.valueOf(obj), 0);
    }

    private byte[] R(String str, Map map) {
        LinkedHashMap linkedHashMapG1;
        if (!f0(str)) {
            return null;
        }
        k0 k0Var = (k0) this.f808b;
        String strE = k0Var.e(map);
        Map mapW0 = k0Var.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map2 = mapW0;
        if ("idcard.save".equals(str)) {
            String strA0 = A0("user_name", map);
            String strA1 = A0("idcard", map);
            map2.put("idcard_name", strA0);
            map2.put("user_name", strA0);
            map2.put("idcard", strA1);
            Boolean bool = Boolean.TRUE;
            map2.put("is_idcard_saved", bool);
            map2.put("is_idcard", bool);
            linkedHashMapG1 = g1();
        } else if ("idcard.getCode".equals(str)) {
            map2.put("pending_mobile", A0("mobile", map));
            map2.put("mobile_code", "123456");
            linkedHashMapG1 = g1();
            linkedHashMapG1.put("code", "123456");
            linkedHashMapG1.put("mobile_code", "123456");
            linkedHashMapG1.put("return_info", p5.z0("result", Boolean.TRUE, "code", "123456"));
        } else {
            String strA2 = A0("mobile", map);
            String strA3 = A0("mobile_code", map);
            String strValueOf = String.valueOf(map2.getOrDefault("mobile_code", "123456"));
            boolean z = true;
            if (!strA3.isEmpty() && !strValueOf.isEmpty() && !strValueOf.equals(strA3)) {
                z = false;
            }
            if (z) {
                map2.put("mobile", strA2);
                map2.put("pending_mobile", "");
                map2.put("is_mobile", Boolean.TRUE);
                map2.put("mobile_bind", 1);
            }
            linkedHashMapG1 = g1();
            linkedHashMapG1.put("result", Boolean.valueOf(z));
            linkedHashMapG1.put("return_info", p5.z0("result", Boolean.valueOf(z), new Object[0]));
            if (!z) {
                linkedHashMapG1.put("ret", 1);
                linkedHashMapG1.put("code", 1);
                linkedHashMapG1.put("error_code", 1);
                linkedHashMapG1.put("msg", "手机验证码无效");
            }
        }
        linkedHashMapG1.put("cmn", p5.u1(k0Var.f904d.j(map2, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), strE, map2), new String[0])));
        k0Var.f904d.S0(strE, map2);
        return k0Var.n(p5.s1(linkedHashMapG1));
    }

    public static int R0(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0660  */
    /* JADX WARN: Code duplicated, block: B:118:0x0667  */
    /* JADX WARN: Code duplicated, block: B:121:0x0681  */
    /* JADX WARN: Code duplicated, block: B:123:0x068d  */
    /* JADX WARN: Code duplicated, block: B:129:0x0690 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0191  */
    /* JADX WARN: Code duplicated, block: B:47:0x01b8  */
    private byte[] S(String str, Map map) {
        String str2;
        String str3;
        String str4;
        k0 k0Var;
        Map mapI;
        LinkedHashMap linkedHashMapR;
        LinkedHashMap linkedHashMapR2;
        LinkedHashMap linkedHashMapC1;
        Map map2;
        Map mapR;
        Map map3;
        Object obj;
        ArrayList arrayListO0;
        LinkedHashMap linkedHashMapI;
        LinkedHashMap linkedHashMapZ0;
        k0 k0Var2;
        Map map4;
        int i2;
        Map map5;
        Map mapE1;
        String str5;
        Map map6;
        Map map7;
        ArrayList arrayList;
        int i3;
        String strTrim;
        LinkedHashMap linkedHashMapL;
        if (!g0(str)) {
            return null;
        }
        k0 k0Var3 = (k0) this.f808b;
        String strE = k0Var3.e(map);
        Map mapW0 = k0Var3.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        boolean zStartsWith = str.startsWith("ladderWarLocal.");
        p7 p7VarN0 = N0();
        String str6 = "";
        if (str.endsWith(".goodsList")) {
            k0Var2 = k0Var3;
            str6 = "";
            linkedHashMapL = l(mapW0);
        } else {
            if (!str.endsWith(".exchange")) {
                k0Var3 = k0Var3;
                strE = strE;
                str6 = "";
                if (str.endsWith(".buyFtimes")) {
                    int iQ0 = Q0(mapW0.get("ladder_war_buy_ftimes")) + 1;
                    int iMax = Math.max(3, Q0(mapW0.get("ladder_war_total_fight"))) + 1;
                    mapW0.put("ladder_war_buy_ftimes", Integer.valueOf(iQ0));
                    mapW0.put("ladder_war_total_fight", Integer.valueOf(iMax));
                    linkedHashMapI = i(mapW0, false);
                } else {
                    String str7 = "uid";
                    if (str.endsWith(".match")) {
                        int iMax2 = Math.max(3, Q0(mapW0.get("ladder_war_total_fight")));
                        int iQ1 = Q0(mapW0.get("ladder_war_point"));
                        LinkedHashMap linkedHashMapZ1 = p5.z0("match_info", o0(), "left_fight", Integer.valueOf(iMax2), "total_fight", Integer.valueOf(iMax2), "history_fight", Integer.valueOf(iMax2), "price", 100, "enable_fight", Boolean.TRUE, "point", Integer.valueOf(iQ1), "total_point", Integer.valueOf(Q0(mapW0.get("ladder_war_total_point"))), "daily_point", Integer.valueOf(iQ1), "rank", 0, "max_win", Integer.valueOf(Q0(mapW0.get("ladder_war_max_win"))), "current_win", Integer.valueOf(Q0(mapW0.get("ladder_war_current_win"))));
                        LinkedHashMap linkedHashMapC2 = c1();
                        linkedHashMapC2.put("return_info", linkedHashMapZ1);
                        linkedHashMapC2.putAll(linkedHashMapZ1);
                        Map map8 = (Map) linkedHashMapC2.get("return_info");
                        int iMax3 = Math.max(1, Q0(mapW0.get("user_level")));
                        if (p7VarN0 == null) {
                            arrayListO0 = o0();
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            for (v5 v5Var : p7VarN0.o(iMax3, 5494748080380204865L, strE)) {
                                LinkedHashMap linkedHashMapM = v5Var.m(p7VarN0.v(v5Var.f1459a));
                                String str8 = v5Var.f1459a;
                                linkedHashMapM.put(str7, str8);
                                c.a.z(linkedHashMapM, "nick", v5Var.f1460b, 1, "server", 1, "server_id");
                                linkedHashMapM.put("gid", v5Var.f1475q);
                                linkedHashMapM.put("rank", Integer.valueOf(p7VarN0.v(str8)));
                                linkedHashMapM.put("fightPoint", Integer.valueOf(v5Var.f1462d));
                                arrayList2.add(linkedHashMapM);
                                str7 = str7;
                            }
                            arrayListO0 = arrayList2;
                        }
                        map8.put("match_info", arrayListO0);
                        linkedHashMapC2.put("match_info", arrayListO0);
                        str2 = strE;
                        str3 = str6;
                        map3 = linkedHashMapC2;
                    } else {
                        str2 = strE;
                        if (str.endsWith(".getOverview")) {
                            str3 = str6;
                            v5 v5VarG = p7VarN0 == null ? null : p7VarN0.g(v0("player_id", v0("uid", str3, map), map));
                            if (v5VarG == null) {
                                Double dValueOf = Double.valueOf(100.0d);
                                Double dValueOf2 = Double.valueOf(20.0d);
                                Double dValueOf3 = Double.valueOf(10.0d);
                                Double dValueOf4 = Double.valueOf(80.0d);
                                mapR = com.sgscq.vpn.cloud.m0.A(p5.z0("player_id", "100002", "user_id", "100002", "nickname", "Opponent", "nick", "Opponent", "player_level", 1, "user_level", 1, "user_vip_level", 0, "fightPoint", dValueOf4, "server_id", 1, "ladder_rank", 1, "rank_name", ""), p5.v0(p5.z0("pk_id", "1", "general_id", "101001", "level", 1, "name", "PlayerGeneral", "attr_hp", dValueOf, "attr_attack", dValueOf2, "attr_defense", dValueOf3, "attr_wisdom", dValueOf3, "fighting", dValueOf4)), p5.v0(p5.z0("pk_id", "1", "general_id", "101001", "general_pk_id", "1", "position", 1)), new ArrayList(), com.sgscq.vpn.cloud.m0.c0(), new ArrayList());
                            } else {
                                mapR = v5VarG.r();
                            }
                            map3 = mapR;
                        } else {
                            str3 = str6;
                            if (str.endsWith(".fight")) {
                                String strV0 = v0("player_id", "100002", map);
                                int iMax4 = Math.max(3, Q0(mapW0.get("ladder_war_total_fight")));
                                mapW0.put("ladder_war_last_fight_player_id", strV0);
                                mapW0.put("ladder_war_total_fight", Integer.valueOf(Math.max(0, iMax4 - 1)));
                                mapW0.put("ladder_war_point", Integer.valueOf(Q0(mapW0.get("ladder_war_point")) + 1));
                                mapW0.put("ladder_war_total_point", Integer.valueOf(Q0(mapW0.get("ladder_war_total_point")) + 1));
                                mapW0.put("ladder_war_current_win", Integer.valueOf(Q0(mapW0.get("ladder_war_current_win")) + 1));
                                mapW0.put("ladder_war_max_win", Integer.valueOf(Math.max(Q0(mapW0.get("ladder_war_max_win")), Q0(mapW0.get("ladder_war_current_win")))));
                                LinkedHashMap linkedHashMapZ2 = p5.z0("success", Boolean.TRUE, "player_info", p5.z0("player_id", strV0, "nickname", "Opponent"), "fight_calculate_info", p5.z0("rounds", 1, "residue_team_num", 1, "residue_team_percent", 100, "point", 1), "drop_info", p5.z0("point", p5.z0("point", 1, new Object[0]), new Object[0]), "add_list", new ArrayList(), "fight_type", 0);
                                linkedHashMapC1 = c1();
                                linkedHashMapC1.put("fight_result", linkedHashMapZ2);
                                linkedHashMapC1.put("return_info", p5.z0("fight_result", linkedHashMapZ2, new Object[0]));
                                linkedHashMapC1.put("left_fight", mapW0.get("ladder_war_total_fight"));
                                linkedHashMapC1.put("daily_point", mapW0.get("ladder_war_point"));
                                String strV1 = v0("player_id", str3, map);
                                v5 v5VarG2 = p7VarN0 == null ? null : p7VarN0.g(strV1);
                                if (v5VarG2 != null) {
                                    ((Map) linkedHashMapC1.get("fight_result")).put("player_info", v5VarG2.m(p7VarN0.v(strV1)));
                                }
                            } else {
                                if (str.endsWith(".worshipEntry")) {
                                    linkedHashMapR2 = t();
                                } else {
                                    if (str.endsWith(".worship")) {
                                        mapW0.put("ladder_war_worship_player_id", v0("player_id", v0("uid", str3, map), map));
                                        mapW0.put("ladder_war_worship_status", 1);
                                        mapW0.put("ladder_war_worship_times", Integer.valueOf(Q0(mapW0.get("ladder_war_worship_times")) + 1));
                                        linkedHashMapR = t();
                                    } else if (str.endsWith(".rewardList")) {
                                        linkedHashMapR2 = r(mapW0);
                                    } else if (str.endsWith(".buyReward")) {
                                        String strV2 = v0("pk_id", "1", map);
                                        mapW0.put("ladder_war_buy_reward_pk_id", strV2);
                                        mapW0.put("ladder_war_selected_reward_pk_id", strV2);
                                        linkedHashMapR = r(mapW0);
                                    } else if (str.endsWith(".hangReward")) {
                                        ArrayList<String> arrayListB0 = B0(v0("pk_ids", v0("pk_id", "1", map), map));
                                        StringBuilder sb = new StringBuilder();
                                        for (String str9 : arrayListB0) {
                                            if (sb.length() > 0) {
                                                sb.append(',');
                                            }
                                            sb.append(str9);
                                        }
                                        String string = sb.toString();
                                        mapW0.put("ladder_war_hang_reward_pk_ids", string);
                                        mapW0.put("ladder_war_used_reward_pk_ids", string);
                                        if (!arrayListB0.isEmpty()) {
                                            mapW0.put("ladder_war_selected_reward_pk_id", arrayListB0.get(0));
                                        }
                                        linkedHashMapR = r(mapW0);
                                    } else {
                                        str4 = str2;
                                        k0Var = k0Var3;
                                        mapI = i(mapW0, zStartsWith);
                                    }
                                    linkedHashMapC1 = linkedHashMapR;
                                }
                                map2 = linkedHashMapR2;
                                str4 = str2;
                                k0Var = k0Var3;
                                mapI = map2;
                            }
                            k0Var = k0Var3;
                            str4 = str2;
                            k0Var.f904d.S0(str4, mapW0);
                            mapI = linkedHashMapC1;
                        }
                        obj = "delta_data";
                        map6 = mapI;
                    }
                    map2 = map3;
                    str4 = str2;
                    k0Var = k0Var3;
                    mapI = map2;
                    obj = "delta_data";
                    map6 = mapI;
                }
                if (map6.get(obj) instanceof Map) {
                    map7 = (Map) map6.get(obj);
                } else {
                    map7 = mapW0;
                }
                String[] strArrSplit = String.valueOf(map6.getOrDefault("cmn_modules", str3)).split(",");
                arrayList = new ArrayList();
                for (String str10 : strArrSplit) {
                    strTrim = str10.trim();
                    if (!strTrim.isEmpty()) {
                        arrayList.add(strTrim);
                    }
                }
                map6.put("cmn", h(str4, map7, mapW0, (String[]) arrayList.toArray(new String[0])));
                return k0Var.n(p5.s1(map6));
            }
            ArrayList arrayListM = M(Q0(mapW0.get("ladder_war_point")));
            String strV3 = v0("pk_id", "1", map);
            Iterator it = arrayListM.iterator();
            do {
                if (!it.hasNext()) {
                    map4 = null;
                    break;
                }
                map4 = (Map) it.next();
            } while (!c.a.A(map4, "pk_id", strV3));
            if (map4 == null) {
                str5 = "商品不存在";
            } else {
                int iQ2 = Q0(map4.get("point"));
                int iQ3 = Q0(mapW0.get("ladder_war_point"));
                if (iQ3 < iQ2) {
                    str5 = "积分不足";
                } else {
                    mapW0.put("ladder_war_point", Integer.valueOf(iQ3 - iQ2));
                    String strValueOf = String.valueOf(map4.get("item_id"));
                    if (p5.h0(strValueOf)) {
                        i2 = 1;
                        p5.c(1, strValueOf, mapW0);
                        mapE1 = p5.e1(1, p5.p0(strValueOf) ? 16 : 1, strValueOf);
                    } else {
                        List listF0 = w1.f0("Item", mapW0);
                        Iterator it2 = listF0.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                LinkedHashMap linkedHashMap = new LinkedHashMap();
                                c.a.x("Item", mapW0, linkedHashMap, "pk_id", "item_id", strValueOf);
                                i2 = 1;
                                LinkedHashMap linkedHashMap2 = linkedHashMap;
                                l.b(linkedHashMap2, "id", strValueOf, 1, "num");
                                listF0.add(linkedHashMap2);
                                h1(listF0, mapW0);
                                map5 = linkedHashMap2;
                                break;
                            }
                            Map map9 = (Map) it2.next();
                            if (c.a.A(map9, "item_id", strValueOf) || c.a.A(map9, "id", strValueOf)) {
                                map9.put("num", Integer.valueOf(Q0(map9.get("num")) + 1));
                                h1(listF0, mapW0);
                                i2 = 1;
                                mapE1 = map9;
                            }
                        }
                        linkedHashMapI = l(mapW0);
                        Map[] mapArr = new Map[i2];
                        mapArr[0] = p5.z0("type", 5, "id", map5.get("item_id"), "num", Integer.valueOf(i2), "pk_id", map5.get("pk_id"));
                        linkedHashMapI.put("add_list", p5.v0(mapArr));
                        if (p5.h0(strValueOf)) {
                            linkedHashMapI.put("delta_data", p5.z0("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]));
                            linkedHashMapI.put("cmn_modules", "Player");
                        } else {
                            linkedHashMapI.put("delta_data", p5.z0(r11, p5.z0("del", new ArrayList(), "upd", p5.v0(map5), "add", new ArrayList()), new Object[0]));
                            linkedHashMapI.put("cmn_modules", r11);
                        }
                    }
                    map5 = mapE1;
                    linkedHashMapI = l(mapW0);
                    Map[] mapArr2 = new Map[i2];
                    mapArr2[0] = p5.z0("type", 5, "id", map5.get("item_id"), "num", Integer.valueOf(i2), "pk_id", map5.get("pk_id"));
                    linkedHashMapI.put("add_list", p5.v0(mapArr2));
                    if (p5.h0(strValueOf)) {
                        linkedHashMapI.put("delta_data", p5.z0("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]));
                        linkedHashMapI.put("cmn_modules", "Player");
                    } else {
                        linkedHashMapI.put("delta_data", p5.z0(r11, p5.z0("del", new ArrayList(), "upd", p5.v0(map5), "add", new ArrayList()), new Object[0]));
                        linkedHashMapI.put("cmn_modules", r11);
                    }
                }
            }
            k0Var2 = k0Var3;
            strE = strE;
            str6 = "";
            linkedHashMapZ0 = p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str5, "error_code", -1);
            strE = strE;
            k0Var2.f904d.S0(strE, mapW0);
            linkedHashMapL = linkedHashMapZ0;
            linkedHashMapZ0 = linkedHashMapI;
            k0Var2 = k0Var3;
            strE = strE;
            k0Var2.f904d.S0(strE, mapW0);
            linkedHashMapL = linkedHashMapZ0;
        }
        k0Var = k0Var2;
        str4 = strE;
        obj = "delta_data";
        str3 = str6;
        map6 = linkedHashMapL;
        if (map6.get(obj) instanceof Map) {
            map7 = (Map) map6.get(obj);
        } else {
            map7 = mapW0;
        }
        String[] strArrSplit2 = String.valueOf(map6.getOrDefault("cmn_modules", str3)).split(",");
        arrayList = new ArrayList();
        while (i3 < r7) {
            strTrim = str10.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        map6.put("cmn", h(str4, map7, mapW0, (String[]) arrayList.toArray(new String[0])));
        return k0Var.n(p5.s1(map6));
    }

    public static int S0(Object obj) {
        return w1.l2(String.valueOf(obj), 0);
    }

    private byte[] T(String str, Map map) {
        LinkedHashMap linkedHashMapZ0;
        if (!"meeting.meeting".equals(str)) {
            return null;
        }
        k0 k0Var = (k0) this.f808b;
        String strE = k0Var.e(map);
        Map mapW0 = k0Var.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map2 = mapW0;
        j jVarO = m.o(map2, 1, 1);
        k0Var.f904d.S0(strE, map2);
        List list = (List) jVarO.f883c;
        LinkedHashMap linkedHashMapZ1 = p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0, "meeting_info", list, "meeting_list", list, "list", list);
        if (jVarO.f882b) {
            Set set = (Set) jVarO.f884d;
            StringBuilder sb = new StringBuilder();
            Iterator it = set.iterator();
            if (it.hasNext()) {
                while (true) {
                    sb.append((CharSequence) it.next());
                    if (!it.hasNext()) {
                        break;
                    }
                    sb.append((CharSequence) ",");
                }
            }
            linkedHashMapZ1.put("cmn_modules", sb.toString());
            JSONObject jSONObjectT = k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), strE, map2);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str2 : (Set) jVarO.f884d) {
                Object obj = map2.get(str2);
                if (obj instanceof Map) {
                    Map map3 = (Map) obj;
                    linkedHashMapZ0 = p5.z0("del", map3.get("del") instanceof List ? map3.get("del") : new ArrayList(), "upd", map3.get("upd") instanceof List ? map3.get("upd") : new ArrayList(), "add", new ArrayList());
                } else {
                    linkedHashMapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
                }
                linkedHashMap.put(str2, linkedHashMapZ0);
            }
            linkedHashMapZ1.put("cmn", p5.u1(k0Var.f904d.j(linkedHashMap, jSONObjectT, (String[]) ((Set) jVarO.f884d).toArray(new String[0]))));
        }
        return k0Var.n(p5.s1(linkedHashMapZ1));
    }

    private byte[] U(String str, String str2, Map map) {
        k0 k0Var;
        String string;
        boolean zContains = str2.contains("obtain.shtm");
        Object obj = this.f808b;
        if (zContains) {
            String str3 = (String) map.getOrDefault("imei", "unknown");
            String strL = L(str3);
            z2.e("SGSCQ_SRV", "[Obtain] guid=" + strL + " deviceId=" + str3);
            k0 k0Var2 = (k0) obj;
            StringBuilder sbB = a.b0.b("{\"ret\":0,\"result\":\"0\",\"resultCode\":0,\"code\":0,\"msg\":\"success\",\"resultMsg\":\"success\",\"guid\":\"", strL, "\",\"resource_cfg\":{},\"url\":\"http://10.0.0.1:");
            sbB.append(k0Var2.f905e);
            sbB.append("/index.php\",\"launch\":\"http://10.0.0.1:");
            int i2 = k0Var2.f905e;
            sbB.append(i2);
            sbB.append("/index.php\",\"msgpack\":\"http://10.0.0.1:");
            sbB.append(i2);
            sbB.append("/bfrd/msgpack\",\"disabled\":\"false\",\"content\":\"");
            sbB.append(p5.M("<h2>三国杀传奇·单机版用户协议</h2><p><b>一、服务说明</b></p><p>本应用为三国杀传奇的单机版本，提供离线游戏体验。所有游戏数据存储在本地设备上。</p><p><b>二、用户须知</b></p><p>1. 本应用仅供个人学习和研究使用。</p><p>2. 游戏数据保存在本地，清除应用数据将导致存档丢失。</p><p>3. 本应用不收集任何个人信息。</p><p><b>三、免责声明</b></p><p>本应用为第三方开发的单机版本，与官方服务器无关。使用本应用产生的任何问题，开发者不承担责任。</p>"));
            sbB.append("\",\"user_agreement\":\"");
            sbB.append(p5.M("<h2>三国杀传奇·单机版用户协议</h2><p><b>一、服务说明</b></p><p>本应用为三国杀传奇的单机版本，提供离线游戏体验。所有游戏数据存储在本地设备上。</p><p><b>二、用户须知</b></p><p>1. 本应用仅供个人学习和研究使用。</p><p>2. 游戏数据保存在本地，清除应用数据将导致存档丢失。</p><p>3. 本应用不收集任何个人信息。</p><p><b>三、免责声明</b></p><p>本应用为第三方开发的单机版本，与官方服务器无关。使用本应用产生的任何问题，开发者不承担责任。</p>"));
            sbB.append("\",\"text\":\"");
            sbB.append(p5.M("<h2>三国杀传奇·单机版用户协议</h2><p><b>一、服务说明</b></p><p>本应用为三国杀传奇的单机版本，提供离线游戏体验。所有游戏数据存储在本地设备上。</p><p><b>二、用户须知</b></p><p>1. 本应用仅供个人学习和研究使用。</p><p>2. 游戏数据保存在本地，清除应用数据将导致存档丢失。</p><p>3. 本应用不收集任何个人信息。</p><p><b>三、免责声明</b></p><p>本应用为第三方开发的单机版本，与官方服务器无关。使用本应用产生的任何问题，开发者不承担责任。</p>"));
            sbB.append("\",\"user_agreement_url\":\"http://10.0.0.1:");
            sbB.append(i2);
            sbB.append("/agreement/user\",\"privacy_url\":\"http://10.0.0.1:");
            sbB.append(i2);
            sbB.append("/agreement/privacy\",\"agreement_url\":\"http://10.0.0.1:");
            sbB.append(i2);
            sbB.append("/agreement/user\"}");
            return k0Var2.f(sbB.toString(), 200);
        }
        if ("bfrd.uris".equals(str) || str2.contains("uris")) {
            k0 k0Var3 = (k0) obj;
            StringBuilder sb = new StringBuilder("{\"ret\":0,\"result\":\"0\",\"launch\":\"http://10.0.0.1:");
            sb.append(k0Var3.f905e);
            sb.append("/index.php\",\"msgpack\":\"http://10.0.0.1:");
            int i3 = k0Var3.f905e;
            sb.append(i3);
            sb.append("/bfrd/msgpack\",\"passport\":\"http://10.0.0.1:");
            sb.append(i3);
            sb.append("/woa/passport\",\"hps\":\"http://10.0.0.1:");
            sb.append(i3);
            sb.append("/woa/hps\",\"reguser\":\"http://10.0.0.1:");
            sb.append(i3);
            sb.append("/woa/reguser\",\"disabled\":\"false\"}");
            return k0Var3.f(sb.toString(), 200);
        }
        if (str2.contains("msgpack")) {
            return ((k0) obj).f("{\"ret\":0,\"result\":\"0\"}", 200);
        }
        if (str2.contains("register.shtm") || str2.contains("register/username.json") || str2.contains("register/quick.json")) {
            String strL2 = (String) map.getOrDefault("guid", "");
            String str4 = (String) map.getOrDefault("username", "");
            if (str4.isEmpty()) {
                str4 = (String) map.getOrDefault("account", "");
            }
            z2.e("SGSCQ_SRV", "[Register] guid=" + strL2 + " username=" + str4);
            if (strL2.isEmpty()) {
                strL2 = L((String) map.getOrDefault("imei", (String) map.getOrDefault("deviceId", "unknown")));
            }
            StringBuilder sbL = c.a.l("{\"ret\":0,\"result\":\"0\",\"resultCode\":0,\"code\":0,\"msg\":\"success\",\"resultMsg\":\"success\",\"guid\":\"", strL2, "\",\"sndaId\":\"", strL2, "\",\"username\":\"");
            c.a.y(sbL, str4, "\",\"uid\":\"", strL2, "\",\"user_id\":\"");
            sbL.append(strL2);
            sbL.append("\"}");
            return ((k0) obj).f(sbL.toString(), 200);
        }
        if (str2.contains("existence")) {
            z2.e("SGSCQ_SRV", "[Existence] username=" + ((String) map.getOrDefault("username", "")));
            return ((k0) obj).f("{\"ret\":0,\"result\":\"0\",\"code\":0,\"msg\":\"success\",\"exist\":false}", 200);
        }
        if (!str2.contains("login.shtm")) {
            if (!str2.contains("/agreement/")) {
                if (!str2.contains("index.php") || !map.containsKey("account") || map.containsKey("do")) {
                    return null;
                }
                k0 k0Var4 = (k0) obj;
                return k0Var4.f("{\"ret\":0,\"result\":\"0\",\"code\":0,\"msg\":\"success\",\"is_launch\":true,\"launch\":\"http://10.0.0.1:" + k0Var4.f905e + "/index.php\",\"msgpack\":\"http://10.0.0.1:" + k0Var4.f905e + "/bfrd/msgpack\",\"disabled\":\"false\"}", 200);
            }
            String str5 = str2.contains("privacy") ? "隐私政策" : "用户协议";
            try {
                byte[] bytes = ("<!DOCTYPE html><html><head><meta charset='UTF-8'><meta name='viewport' content='width=device-width,initial-scale=1.0'><title>" + str5 + "</title><style>body{font-family:sans-serif;padding:16px;line-height:1.6;color:#333;}h1{font-size:18px;color:#333;border-bottom:1px solid #eee;padding-bottom:8px;}h2{font-size:16px;color:#555;margin-top:20px;}p{font-size:14px;margin:10px 0;}</style></head><body><h1>三国杀传奇·单机版 " + str5 + "</h1><h2>一、服务说明</h2><p>本应用为三国杀传奇的单机版本，提供离线游戏体验。所有游戏数据存储在本地设备上。</p><h2>二、用户须知</h2><p>1. 本应用仅供个人学习和研究使用。</p><p>2. 游戏数据保存在本地，清除应用数据将导致存档丢失。</p><p>3. 本应用不收集任何个人信息。</p><h2>三、免责声明</h2><p>本应用为第三方开发的单机版本，与官方服务器无关。使用本应用产生的任何问题，开发者不承担责任。</p><h2>四、联系方式</h2><p>如有问题或建议，请通过应用内的反馈渠道联系我们。</p></body></html>").getBytes("UTF-8");
                byte[] bytes2 = ("HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: " + bytes.length + "\r\n\r\n").getBytes("US-ASCII");
                byte[] bArr = new byte[bytes2.length + bytes.length];
                System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
                System.arraycopy(bytes, 0, bArr, bytes2.length, bytes.length);
                return bArr;
            } catch (Exception unused) {
                return "HTTP/1.1 500 Error\r\n\r\n".getBytes();
            }
        }
        String str6 = (String) map.getOrDefault("RequestCode", "");
        String str7 = (String) map.getOrDefault("Account", "");
        String strL3 = !str7.isEmpty() ? L(str7) : "e8b7b60449fcba1cc1cc0002d1c0f584";
        StringBuilder sbL2 = c.a.l("[Login] guid=", strL3, " requestCode=", str6, " account=");
        sbL2.append(str7);
        z2.e("SGSCQ_SRV", sbL2.toString());
        if ("204".equals(str6)) {
            k0Var = (k0) obj;
            StringBuilder sbL3 = c.a.l("{\"ret\":0,\"result\":\"0\",\"resultCode\":0,\"code\":0,\"msg\":\"success\",\"resultMsg\":\"", l.a("GUID=", strL3, "^$^"), "\",\"guid\":\"", strL3, "\",\"sndaId\":\"");
            sbL3.append(strL3);
            sbL3.append("\",\"loginType\":0,\"url\":\"http://10.0.0.1:");
            sbL3.append(k0Var.f905e);
            sbL3.append("/index.php\",\"ver\":\"1.0.0\"}");
            string = sbL3.toString();
        } else {
            String str8 = "sess_" + System.currentTimeMillis();
            String str9 = "key_" + strL3.substring(0, 16);
            StringBuilder sbL4 = c.a.l("SessionID=", str8, "^$^SndaID=", strL3, "^$^SESSIONKEY=");
            sbL4.append(str9);
            sbL4.append("^$^RetValue=0^$^IsNeedFullInfo=0^$^AuthenState=0^$^DescMsg=success^$^");
            k0Var = (k0) obj;
            StringBuilder sbL5 = c.a.l("{\"ret\":0,\"result\":\"0\",\"resultCode\":0,\"code\":0,\"msg\":\"success\",\"resultMsg\":\"", sbL4.toString(), "\",\"guid\":\"", strL3, "\",\"sndaId\":\"");
            c.a.y(sbL5, strL3, "\",\"uid\":\"", strL3, "\",\"user_id\":\"");
            c.a.y(sbL5, strL3, "\",\"account_uid\":\"", strL3, "\",\"loginType\":1,\"token\":\"tok_");
            c.a.y(sbL5, strL3, "\",\"session\":\"", str8, "\",\"url\":\"http://10.0.0.1:");
            sbL5.append(k0Var.f905e);
            sbL5.append("/index.php\",\"ver\":\"1.0.0\"}");
            string = sbL5.toString();
        }
        return k0Var.f(string, 200);
    }

    public static ArrayList U0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("pk_id", "1", "item_id", "600001", "item_num", 1, "price", 10, "discount_price", 10, "exchange_num", 99, "exchanged_num", 0, "currency_type", 1));
        return arrayList;
    }

    private byte[] V(String str, String str2) {
        if ((str != null && !str.isEmpty()) || str2.contains("api.php") || str2.contains("index.php")) {
            return ((k0) this.f808b).n(p5.s1(k()));
        }
        return null;
    }

    public static void V0(ArrayList arrayList, Map map, LinkedHashMap linkedHashMap) {
        if (Boolean.TRUE.equals(linkedHashMap.get("result"))) {
            Map mapA = A(linkedHashMap, new LinkedHashMap());
            LinkedHashSet linkedHashSetR0 = r0(linkedHashMap);
            j jVarC = y0.c(arrayList, map);
            jVarC.b(linkedHashMap);
            jVarC.a(mapA, linkedHashSetR0);
            if (!mapA.isEmpty()) {
                linkedHashMap.put("delta_data", mapA);
            }
            if (linkedHashSetR0.isEmpty()) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            Iterator it = linkedHashSetR0.iterator();
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

    private byte[] W(String str, Map map) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int i2;
        String str7;
        Map map2;
        ArrayList arrayList;
        String str8;
        LinkedHashMap linkedHashMap;
        k0 k0Var;
        String[] strArr;
        String str9;
        LinkedHashMap linkedHashMapD1;
        String str10;
        o oVar;
        String str11;
        String str12;
        Map map3;
        String str13;
        LinkedHashMap linkedHashMap2;
        ArrayList arrayList2;
        if (!h0(str)) {
            return null;
        }
        k0 k0Var2 = (k0) this.f808b;
        String strE = k0Var2.e(map);
        Map mapW0 = k0Var2.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map4 = mapW0;
        String str14 = "task_list";
        String str15 = "list";
        if ("task.getList".equals(str)) {
            linkedHashMapD1 = d1();
            ArrayList arrayListA = p.a(E0(map4), c7.b(), map4);
            linkedHashMapD1.put("list", arrayListA);
            linkedHashMapD1.put("task_list", arrayListA);
            k0Var2.f904d.S0(strE, map4);
            k0Var = k0Var2;
        } else {
            boolean zEquals = "task.multiRecieve".equals(str);
            String strB = c7.b();
            int iE0 = E0(map4);
            ArrayList arrayListA2 = p.a(iE0, strB, map4);
            int i3 = 4;
            String[] strArr2 = new String[4];
            int i4 = 0;
            strArr2[0] = map == null ? null : (String) map.get("task_pk_id");
            String str16 = "pk_id";
            strArr2[1] = map != null ? (String) map.get("pk_id") : null;
            strArr2[2] = map == null ? null : (String) map.get("task_id");
            strArr2[3] = map == null ? null : (String) map.get("id");
            while (true) {
                if (i4 >= i3) {
                    str2 = "";
                    str3 = str2;
                    break;
                }
                str3 = strArr2[i4];
                if (str3 != null && !str3.isEmpty()) {
                    str2 = "";
                    if (!"null".equalsIgnoreCase(str3)) {
                        break;
                    }
                }
                i4++;
                i3 = 4;
            }
            ArrayList arrayList3 = new ArrayList();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = arrayListA2.iterator();
            while (true) {
                String str17 = "Player";
                strE = strE;
                String str18 = "GeneralSoul";
                if (!it.hasNext()) {
                    str4 = "Player";
                    k0Var2 = k0Var2;
                    str5 = str14;
                    str6 = str15;
                    i2 = iE0;
                    str7 = "GeneralSoul";
                    map2 = map4;
                    arrayList = arrayList3;
                    str8 = strB;
                    linkedHashMap = linkedHashMap3;
                    break;
                }
                it = it;
                Map map5 = (Map) it.next();
                k0Var2 = k0Var2;
                String strValueOf = String.valueOf(map5.get(str16));
                if (zEquals || str3.equals(strValueOf)) {
                    str10 = str3;
                    if (b0(map5.get("status"), 0) == 1 && (oVar = (o) p.f954b.get(strValueOf)) != null) {
                        Iterator it2 = oVar.a(iE0).iterator();
                        while (it2.hasNext()) {
                            n nVar = (n) it2.next();
                            String str19 = str14;
                            String str20 = str15;
                            long jA = nVar.a(iE0);
                            Iterator it3 = it2;
                            boolean z = nVar.f937e;
                            boolean z2 = zEquals;
                            int i5 = iE0;
                            String str21 = strValueOf;
                            String str22 = strB;
                            LinkedHashMap linkedHashMap4 = linkedHashMap3;
                            String str23 = str16;
                            String str24 = str18;
                            int i6 = nVar.f934b;
                            ArrayList arrayList4 = arrayList3;
                            int i7 = nVar.f935c;
                            String str25 = nVar.f933a;
                            if (z) {
                                p5.b(jA, map4);
                                linkedHashSet.add(str17);
                                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                linkedHashMap5.put("id", str25);
                                linkedHashMap5.put("item_id", str25);
                                linkedHashMap5.put("num", Long.valueOf(jA));
                                linkedHashMap5.put("item_num", Long.valueOf(jA));
                                linkedHashMap5.put("item_type", Integer.valueOf(i7));
                                linkedHashMap5.put("type", Integer.valueOf(i6));
                                linkedHashMap5.put("is_new", Boolean.TRUE);
                                arrayList4.add(linkedHashMap5);
                                map3 = map4;
                                linkedHashMap2 = linkedHashMap4;
                                str13 = str23;
                                str11 = str24;
                                arrayList2 = arrayList4;
                                str12 = str17;
                            } else {
                                int i8 = jA > 2147483647L ? Integer.MAX_VALUE : (int) jA;
                                w1.k(i8, str25, map4);
                                str11 = str24;
                                Iterator it4 = w1.f0(str11, map4).iterator();
                                while (true) {
                                    if (!it4.hasNext()) {
                                        throw new IllegalStateException(c.a.i("missing GeneralSoul ", str25));
                                    }
                                    str12 = str17;
                                    Map map6 = (Map) it4.next();
                                    map3 = map4;
                                    if (c.a.A(map6, "general_id", str25)) {
                                        str13 = str23;
                                        linkedHashMap2 = linkedHashMap4;
                                        linkedHashMap2.put(String.valueOf(map6.get(str13)), new LinkedHashMap(map6));
                                        linkedHashSet.add(str11);
                                        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                                        linkedHashMap6.put(str13, map6.getOrDefault(str13, str25));
                                        linkedHashMap6.put("id", str25);
                                        linkedHashMap6.put("item_id", str25);
                                        c.a.z(linkedHashMap6, "general_id", str25, i8, "num", i8, "item_num");
                                        linkedHashMap6.put("item_type", Integer.valueOf(i7));
                                        linkedHashMap6.put("type", Integer.valueOf(i6));
                                        linkedHashMap6.put("card_type", map6.getOrDefault("card_type", 1));
                                        linkedHashMap6.put("is_new", Boolean.TRUE);
                                        arrayList2 = arrayList4;
                                        arrayList2.add(linkedHashMap6);
                                        break;
                                    }
                                    str17 = str12;
                                    map4 = map3;
                                }
                            }
                            str16 = str13;
                            linkedHashMap3 = linkedHashMap2;
                            arrayList3 = arrayList2;
                            str14 = str19;
                            it2 = it3;
                            zEquals = z2;
                            iE0 = i5;
                            strValueOf = str21;
                            strB = str22;
                            str17 = str12;
                            map4 = map3;
                            str18 = str11;
                            str15 = str20;
                        }
                        boolean z3 = zEquals;
                        str4 = str17;
                        str5 = str14;
                        str6 = str15;
                        int i9 = iE0;
                        str7 = str18;
                        map2 = map4;
                        String str26 = str16;
                        arrayList = arrayList3;
                        str8 = strB;
                        linkedHashMap = linkedHashMap3;
                        p.c(str8, map2);
                        o oVar2 = (o) p.f954b.get(strValueOf);
                        if (oVar2 != null) {
                            i2 = i9;
                            if (i2 >= oVar2.f942d && !p.b(map2).contains(strValueOf) && p.j(p.f(map2).get(strValueOf)) >= oVar2.f943e) {
                                p.b(map2).add(strValueOf);
                            }
                        } else {
                            i2 = i9;
                        }
                        if (!z3) {
                            break;
                        }
                        strB = str8;
                        iE0 = i2;
                        str16 = str26;
                        linkedHashMap3 = linkedHashMap;
                        arrayList3 = arrayList;
                        str3 = str10;
                        str14 = str5;
                        str15 = str6;
                        map4 = map2;
                        zEquals = z3;
                    }
                } else {
                    str10 = str3;
                }
                str3 = str10;
            }
            LinkedHashMap linkedHashMap7 = new LinkedHashMap();
            if (!linkedHashMap.isEmpty()) {
                linkedHashMap7.put(str7, p5.z0("del", new ArrayList(), "upd", new ArrayList(linkedHashMap.values()), "add", new ArrayList()));
            }
            LinkedHashMap linkedHashMapD2 = d1();
            ArrayList arrayListA3 = p.a(i2, str8, map2);
            linkedHashMapD2.put(str6, arrayList);
            linkedHashMapD2.put(str5, arrayListA3);
            linkedHashMapD2.put("add_list", arrayList);
            linkedHashMapD2.put("reward_list", arrayList);
            StringBuilder sb = new StringBuilder();
            Iterator it5 = linkedHashSet.iterator();
            if (it5.hasNext()) {
                while (true) {
                    sb.append((CharSequence) it5.next());
                    if (!it5.hasNext()) {
                        break;
                    }
                    sb.append((CharSequence) ",");
                }
            }
            linkedHashMapD2.put("cmn_modules", sb.toString());
            linkedHashMapD2.put("delta_data", linkedHashMap7);
            k0Var = k0Var2;
            k0Var.f904d.S0(strE, map2);
            Map linkedHashMap8 = linkedHashMapD2.get("delta_data") instanceof Map ? (Map) linkedHashMapD2.get("delta_data") : new LinkedHashMap();
            Object obj = linkedHashMapD2.get("cmn_modules");
            if (obj == null) {
                obj = str2;
            }
            String strValueOf2 = String.valueOf(obj);
            if (strValueOf2.isEmpty()) {
                strArr = new String[0];
            } else {
                ArrayList arrayList5 = new ArrayList();
                String[] strArrSplit = strValueOf2.split(",");
                int length = strArrSplit.length;
                int i10 = 0;
                while (i10 < length) {
                    String str27 = strArrSplit[i10];
                    if (str27.isEmpty()) {
                        str9 = str4;
                    } else {
                        str9 = str4;
                        if (!str9.equals(str27)) {
                            arrayList5.add(str27);
                        }
                    }
                    i10++;
                    str4 = str9;
                }
                strArr = (String[]) arrayList5.toArray(new String[0]);
            }
            linkedHashMapD2.put("cmn", p5.u1(k0Var.f904d.j(linkedHashMap8, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), strE, map2), strArr)));
            linkedHashMapD1 = linkedHashMapD2;
        }
        return k0Var.n(p5.s1(linkedHashMapD1));
    }

    public static LinkedHashMap W0(int i2, String str, Map map) {
        List listF0 = w1.f0("Item", map);
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iMax = Math.max(0, R0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0) - i2);
                map2.put("num", Integer.valueOf(iMax));
                map2.put("item_num", Integer.valueOf(iMax));
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (iMax <= 0) {
                    arrayList.add(String.valueOf(map2.get("pk_id")));
                    listF0.remove(map2);
                } else {
                    arrayList2.add(map2);
                }
                map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                return k0(arrayList, arrayList2);
            }
        }
        return k0(new ArrayList(), new ArrayList());
    }

    /* JADX WARN: Code duplicated, block: B:128:0x0744  */
    /* JADX WARN: Code duplicated, block: B:129:0x0746  */
    /* JADX WARN: Code duplicated, block: B:132:0x074e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0752  */
    /* JADX WARN: Code duplicated, block: B:136:0x076c  */
    /* JADX WARN: Code duplicated, block: B:138:0x0778  */
    /* JADX WARN: Code duplicated, block: B:144:0x077b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0283  */
    /* JADX WARN: Code duplicated, block: B:69:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:71:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:72:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:75:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:76:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:80:0x0308  */
    private byte[] X(String str, Map map) {
        String str2;
        Object obj;
        Map map2;
        String str3;
        String str4;
        Map mapO;
        String str5;
        LinkedHashMap linkedHashMapE1;
        ArrayList arrayList;
        Map map3;
        Map map4;
        int i2;
        Map mapE1;
        Map map5;
        Object obj2;
        Map map6;
        ArrayList arrayList2;
        ArrayList arrayList3;
        LinkedHashMap linkedHashMapZ0;
        String str6;
        Object obj3;
        Map map7;
        ArrayList arrayList4;
        int i3;
        String strTrim;
        ArrayList arrayList5;
        if (!(str != null && (str.startsWith("worldWar.") || str.startsWith("worldWarLocal.")))) {
            return null;
        }
        k0 k0Var = (k0) this.f808b;
        String strE = k0Var.e(map);
        Map mapW0 = k0Var.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map8 = mapW0;
        boolean zStartsWith = str.startsWith("worldWarLocal.");
        p7 p7VarN0 = N0();
        String str7 = "cmn_modules";
        if (str.endsWith(".supportRank")) {
            int iD0 = D0(map8);
            if (p7VarN0 == null) {
                ArrayList arrayList6 = new ArrayList();
                Boolean bool = Boolean.TRUE;
                arrayList6.add(p5.z0("uid", "100001", "nick", "Player", "server_id", 1, "level", 1, "point", 0, "support_sum", 0, "can_support", bool, "can_overview", bool));
                arrayList5 = arrayList6;
            } else {
                arrayList5 = new ArrayList();
                for (v5 v5Var : p7VarN0.n(iD0, 8, 6291337691977433426L, strE)) {
                    LinkedHashMap linkedHashMapM = v5Var.m(p7VarN0.v(v5Var.f1459a));
                    linkedHashMapM.put("uid", v5Var.f1459a);
                    linkedHashMapM.put("nick", v5Var.f1460b);
                    linkedHashMapM.put("server_id", 1);
                    linkedHashMapM.put("point", 0);
                    linkedHashMapM.put("support_sum", 0);
                    Boolean bool2 = Boolean.TRUE;
                    linkedHashMapM.put("can_support", bool2);
                    linkedHashMapM.put("can_overview", bool2);
                    arrayList5.add(linkedHashMapM);
                }
            }
            mapO = e1();
            mapO.put("return_info", p5.z0("rank_list", arrayList5, new Object[0]));
            mapO.put("rank_list", arrayList5);
            str2 = "";
            obj = "delta_data";
        } else {
            str2 = "";
            str7 = "cmn_modules";
            obj = "delta_data";
            if (!str.endsWith(".supportList")) {
                if (str.endsWith(".goodsList")) {
                    mapO = m(map8);
                } else if (str.endsWith(".exchange")) {
                    ArrayList arrayListN = N(S0(map8.get("world_war_point")));
                    String strX0 = x0("pk_id", "1", map);
                    Iterator it = arrayListN.iterator();
                    do {
                        if (!it.hasNext()) {
                            map3 = null;
                            break;
                        }
                        map3 = (Map) it.next();
                    } while (!c.a.A(map3, "pk_id", strX0));
                    if (map3 == null) {
                        str6 = "商品不存在";
                    } else {
                        int iS0 = S0(map3.get("point"));
                        int iS1 = S0(map8.get("world_war_point"));
                        if (iS1 < iS0) {
                            str6 = "积分不足";
                        } else {
                            map8.put("world_war_point", Integer.valueOf(iS1 - iS0));
                            String strValueOf = String.valueOf(map3.get("item_id"));
                            if (p5.h0(strValueOf)) {
                                i2 = 1;
                                p5.c(1, strValueOf, map8);
                                mapE1 = p5.e1(1, p5.p0(strValueOf) ? 16 : 1, strValueOf);
                            } else {
                                List listF0 = w1.f0("Item", map8);
                                Iterator it2 = listF0.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                                        map4 = map8;
                                        c.a.x("Item", map8, linkedHashMap, "pk_id", "item_id", strValueOf);
                                        l.b(linkedHashMap, "id", strValueOf, 1, "num");
                                        listF0.add(linkedHashMap);
                                        i1(listF0, map4, linkedHashMap);
                                        i2 = 1;
                                        map5 = linkedHashMap;
                                        break;
                                    }
                                    Map map9 = (Map) it2.next();
                                    if (c.a.A(map9, "item_id", strValueOf) || c.a.A(map9, "id", strValueOf)) {
                                        map9.put("num", Integer.valueOf(S0(map9.get("num")) + 1));
                                        i1(listF0, map8, map9);
                                        i2 = 1;
                                        mapE1 = map9;
                                    }
                                }
                                LinkedHashMap linkedHashMapM2 = m(map4);
                                Map[] mapArr = new Map[i2];
                                mapArr[0] = p5.z0("type", 5, "id", map5.get("item_id"), "num", Integer.valueOf(i2), "pk_id", map5.get("pk_id"));
                                linkedHashMapM2.put("add_list", p5.v0(mapArr));
                                obj2 = map4.get("Item");
                                if (obj2 instanceof Map) {
                                    map6 = (Map) obj2;
                                    if (map6.get("del") instanceof List) {
                                        arrayList2 = new ArrayList((List) map6.get("del"));
                                    } else {
                                        arrayList2 = new ArrayList();
                                    }
                                    if (map6.get("upd") instanceof List) {
                                        arrayList3 = new ArrayList((List) map6.get("upd"));
                                    } else {
                                        arrayList3 = new ArrayList();
                                    }
                                    linkedHashMapZ0 = p5.z0("Item", p5.z0("del", arrayList2, "upd", arrayList3, "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0("Item", map4)}, map4, "Item")), new Object[0]);
                                } else {
                                    linkedHashMapZ0 = p5.z0("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
                                }
                                linkedHashMapM2.put(obj, linkedHashMapZ0);
                                linkedHashMapM2.put(str7, p5.h0(strValueOf) ? "Player" : "Item");
                                mapO = linkedHashMapM2;
                            }
                            map4 = map8;
                            map5 = mapE1;
                            LinkedHashMap linkedHashMapM3 = m(map4);
                            Map[] mapArr2 = new Map[i2];
                            mapArr2[0] = p5.z0("type", 5, "id", map5.get("item_id"), "num", Integer.valueOf(i2), "pk_id", map5.get("pk_id"));
                            linkedHashMapM3.put("add_list", p5.v0(mapArr2));
                            obj2 = map4.get("Item");
                            if (obj2 instanceof Map) {
                                linkedHashMapZ0 = p5.z0("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
                            } else {
                                map6 = (Map) obj2;
                                if (map6.get("del") instanceof List) {
                                    arrayList2 = new ArrayList((List) map6.get("del"));
                                } else {
                                    arrayList2 = new ArrayList();
                                }
                                if (map6.get("upd") instanceof List) {
                                    arrayList3 = new ArrayList((List) map6.get("upd"));
                                } else {
                                    arrayList3 = new ArrayList();
                                }
                                linkedHashMapZ0 = p5.z0("Item", p5.z0("del", arrayList2, "upd", arrayList3, "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0("Item", map4)}, map4, "Item")), new Object[0]);
                            }
                            linkedHashMapM3.put(obj, linkedHashMapZ0);
                            linkedHashMapM3.put(str7, p5.h0(strValueOf) ? "Player" : "Item");
                            mapO = linkedHashMapM3;
                        }
                        k0Var.f904d.S0(strE, map4);
                        map2 = map4;
                        str3 = str2;
                        str4 = str7;
                    }
                    mapO = p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str6, "error_code", -1);
                    str2 = str2;
                    map4 = map8;
                    k0Var.f904d.S0(strE, map4);
                    map2 = map4;
                    str3 = str2;
                    str4 = str7;
                } else {
                    map2 = map8;
                    if (str.endsWith(".getOverview")) {
                        v5 v5VarG = p7VarN0 == null ? null : p7VarN0.g(x0("player_id", x0("uid", str3, map), map));
                        if (v5VarG == null) {
                            str3 = str2;
                            str3 = str2;
                            Double dValueOf = Double.valueOf(100.0d);
                            Double dValueOf2 = Double.valueOf(20.0d);
                            Double dValueOf3 = Double.valueOf(10.0d);
                            Double dValueOf4 = Double.valueOf(80.0d);
                            mapO = com.sgscq.vpn.cloud.m0.A(p5.z0("player_id", "100001", "user_id", "100001", "nickname", "Player", "nick", "Player", "player_level", 1, "user_level", 1, "user_vip_level", 0, "fightPoint", dValueOf4, "server_id", 1, "ladder_rank", 0, "rank_name", ""), p5.v0(p5.z0("pk_id", "1", "general_id", "101001", "level", 1, "name", "PlayerGeneral", "attr_hp", dValueOf, "attr_attack", dValueOf2, "attr_defense", dValueOf3, "attr_wisdom", dValueOf3, "fighting", dValueOf4)), p5.v0(p5.z0("pk_id", "1", "general_id", "101001", "general_pk_id", "1", "position", 1)), new ArrayList(), com.sgscq.vpn.cloud.m0.c0(), new ArrayList());
                        } else {
                            str3 = str2;
                            str3 = str2;
                            mapO = v5VarG.r();
                        }
                        str4 = str7;
                    } else {
                        String str8 = "轮";
                        if (str.endsWith(".getPlayerList")) {
                            str3 = str2;
                            int iD1 = D0(map2);
                            int iS2 = S0(map.get("round"));
                            l1 l1Var = new l1(p7VarN0, strE, iD1);
                            int iMax = Math.max(1, Math.min(20, iS2));
                            ArrayList arrayList7 = new ArrayList();
                            for (List list : (List) l1Var.f922d.get(iMax - 1)) {
                                ArrayList arrayList8 = new ArrayList();
                                arrayList8.add(new LinkedHashMap((Map) list.get(0)));
                                arrayList8.add(new LinkedHashMap((Map) list.get(1)));
                                arrayList7.add(arrayList8);
                            }
                            LinkedHashMap linkedHashMapZ1 = p5.z0("round_name", "第" + iMax + "轮", "idx", Integer.valueOf(arrayList7.size()), "player_list", arrayList7);
                            LinkedHashMap linkedHashMapE2 = e1();
                            linkedHashMapE2.put("return_info", linkedHashMapZ1);
                            linkedHashMapE2.putAll(linkedHashMapZ1);
                            str4 = str7;
                            mapO = linkedHashMapE2;
                        } else {
                            str4 = str7;
                            if (str.endsWith(".supportPlayer")) {
                                map2.put("world_war_support_player_id", x0("player_id", x0("uid", str3, map), map));
                                map2.put("world_war_support_times", Integer.valueOf(S0(map2.get("world_war_support_times")) + 1));
                                map2.put("world_war_point", Integer.valueOf(S0(map2.get("world_war_point")) + 1));
                                mapO = s(map2);
                                k0Var.f904d.S0(strE, map2);
                            } else {
                                if (str.endsWith(".outline")) {
                                    str3 = str2;
                                    l1 l1Var2 = new l1(p7VarN0, strE, D0(map2));
                                    ArrayList arrayList9 = new ArrayList();
                                    int i4 = 0;
                                    while (i4 < 20) {
                                        int i5 = i4 + 1;
                                        Integer numValueOf = Integer.valueOf(i5);
                                        int[] iArr = l1.f916f;
                                        Integer numValueOf2 = Integer.valueOf(iArr[i4]);
                                        String str9 = "第" + i5 + str8;
                                        StringBuilder sb = new StringBuilder("第");
                                        String str10 = str8;
                                        sb.append(l1.f917g[i4]);
                                        sb.append("天");
                                        String string = sb.toString();
                                        String str11 = l1.f918h[i4];
                                        int i6 = iArr[i4] * 3;
                                        String[] strArrSplit = str11.split(":");
                                        int i7 = Integer.parseInt(strArrSplit[1]) + (Integer.parseInt(strArrSplit[0]) * 60) + i6;
                                        String str12 = String.format(Locale.ROOT, "%02d:%02d:00", Integer.valueOf((i7 / 60) % 24), Integer.valueOf(i7 % 60));
                                        Boolean bool3 = Boolean.FALSE;
                                        arrayList9.add(p5.z0("round", numValueOf, "session", 1, "times", numValueOf2, "status", 1, "name", str9, "date", string, "start_time", str11, "end_time", str12, "is_round_player", bool3, "is_player", bool3));
                                        i4 = i5;
                                        str8 = str10;
                                    }
                                    Object[] objArr = new Object[4];
                                    objArr[0] = "round_info";
                                    objArr[1] = arrayList9;
                                    objArr[2] = "rank_player";
                                    ArrayList arrayList10 = new ArrayList();
                                    int i8 = 10;
                                    int[] iArr2 = {2, 4, 5, 7, 8, 10, 11, 13, 14, 16};
                                    int i9 = 0;
                                    while (true) {
                                        arrayList = l1Var2.f923e;
                                        if (i9 >= i8) {
                                            break;
                                        }
                                        arrayList10.add(l1.e(0, ((k1) arrayList.get(iArr2[i9] - 1)).f909b));
                                        i9++;
                                        i8 = 10;
                                    }
                                    arrayList10.add(l1.e(4, ((k1) arrayList.get(16)).f909b));
                                    arrayList10.add(l1.e(1, ((k1) arrayList.get(18)).f908a));
                                    ArrayList arrayListE = l1.e(3, ((k1) arrayList.get(19)).f909b);
                                    arrayListE.addAll(l1.e(2, ((k1) arrayList.get(19)).f908a));
                                    arrayList10.add(arrayListE);
                                    objArr[3] = arrayList10;
                                    LinkedHashMap linkedHashMapZ2 = p5.z0("top128_list", arrayList9, objArr);
                                    linkedHashMapE1 = e1();
                                    linkedHashMapE1.put("return_info", linkedHashMapZ2);
                                    linkedHashMapE1.putAll(linkedHashMapZ2);
                                } else if (str.endsWith(".getFightDetail")) {
                                    int iD2 = D0(map2);
                                    int iS3 = S0(map.get("round"));
                                    int iS4 = S0(map.get("session"));
                                    l1 l1Var3 = new l1(p7VarN0, strE, iD2);
                                    int iMax2 = Math.max(1, Math.min(20, iS3));
                                    List list2 = (List) l1Var3.f922d.get(iMax2 - 1);
                                    int iMax3 = Math.max(1, Math.min(list2.size(), iS4));
                                    List list3 = (List) list2.get(iMax3 - 1);
                                    String strValueOf2 = String.valueOf(((Map) list3.get(0)).get("uid"));
                                    String strValueOf3 = String.valueOf(((Map) list3.get(1)).get("uid"));
                                    if (((Map) list3.get(0)).containsKey("win")) {
                                        str3 = str2;
                                        str5 = strValueOf2;
                                    } else {
                                        str3 = str2;
                                        str5 = strValueOf3;
                                    }
                                    String str13 = "world-war-" + iMax2 + "-" + iMax3;
                                    Integer numValueOf3 = Integer.valueOf(iMax2);
                                    Integer numValueOf4 = Integer.valueOf(iMax3);
                                    LinkedHashMap linkedHashMap2 = l1Var3.f921c;
                                    LinkedHashMap linkedHashMapZ3 = p5.z0("fight_detail", p5.z0("round", numValueOf3, "session", numValueOf4, "player1", l1.b((v5) linkedHashMap2.get(strValueOf2)), "player2", l1.b((v5) linkedHashMap2.get(strValueOf3)), "winner", str5, "battle_id", str13), "fight_process", new ArrayList(), "battle_id", str13, "round", Integer.valueOf(iMax2), "session", Integer.valueOf(iMax3));
                                    linkedHashMapE1 = e1();
                                    linkedHashMapE1.put("return_info", linkedHashMapZ3);
                                    linkedHashMapE1.putAll(linkedHashMapZ3);
                                } else if (str.endsWith(".signUp")) {
                                    map2.put("world_war_signed", Boolean.TRUE);
                                    map2.put("world_war_team_id", x0("team_id", "0", map));
                                    LinkedHashMap linkedHashMapO = o(false);
                                    k0Var.f904d.S0(strE, map2);
                                    mapO = linkedHashMapO;
                                } else {
                                    mapO = o(zStartsWith);
                                }
                                mapO = linkedHashMapE1;
                            }
                        }
                    }
                }
                if (mapO == null) {
                    str3 = str2;
                    str3 = str2;
                    str3 = str2;
                    obj3 = null;
                } else {
                    str3 = str2;
                    str3 = str2;
                    str3 = str2;
                    obj3 = mapO.get(obj);
                }
                if (obj3 instanceof Map) {
                    map7 = (Map) obj3;
                } else {
                    map7 = map2;
                }
                String[] strArrSplit2 = String.valueOf(mapO.getOrDefault(str4, str3)).split(",");
                arrayList4 = new ArrayList();
                for (String str14 : strArrSplit2) {
                    strTrim = str14.trim();
                    if (!strTrim.isEmpty()) {
                        arrayList4.add(strTrim);
                    }
                }
                mapO.put("cmn", h(strE, map7, map2, (String[]) arrayList4.toArray(new String[0])));
                return k0Var.n(p5.s1(mapO));
            }
            mapO = s(map8);
        }
        str2 = str2;
        map4 = map8;
        map2 = map4;
        str3 = str2;
        str4 = str7;
        if (mapO == null) {
            str3 = str2;
            str3 = str2;
            str3 = str2;
            obj3 = null;
        } else {
            str3 = str2;
            str3 = str2;
            str3 = str2;
            obj3 = mapO.get(obj);
        }
        if (obj3 instanceof Map) {
            map7 = (Map) obj3;
        } else {
            map7 = map2;
        }
        String[] strArrSplit3 = String.valueOf(mapO.getOrDefault(str4, str3)).split(",");
        arrayList4 = new ArrayList();
        while (i3 < r2) {
            strTrim = str14.trim();
            if (!strTrim.isEmpty()) {
                arrayList4.add(strTrim);
            }
        }
        mapO.put("cmn", h(strE, map7, map2, (String[]) arrayList4.toArray(new String[0])));
        return k0Var.n(p5.s1(mapO));
    }

    public static void X0(int i2, Map map) {
        LinkedHashMap linkedHashMapZ0;
        List listF0 = w1.f0("Item", map);
        for (int i3 = 0; i3 < listF0.size(); i3++) {
            Map map2 = (Map) listF0.get(i3);
            if (c.a.C(map2, "id", "", "item_id", "600013")) {
                int iMax = Math.max(0, P0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0) - i2);
                if (iMax == 0) {
                    String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
                    listF0.remove(i3);
                    linkedHashMapZ0 = p5.z0("del", strValueOf.isEmpty() ? new ArrayList() : p5.v0(strValueOf), "upd", new ArrayList(), "add", listF0);
                } else {
                    map2.put("num", Integer.valueOf(iMax));
                    map2.put("item_num", Integer.valueOf(iMax));
                    linkedHashMapZ0 = p5.z0("del", new ArrayList(), "upd", p5.v0(map2), "add", listF0);
                }
                map.put("Item", linkedHashMapZ0);
                return;
            }
        }
    }

    public static boolean Y(int i2, Map map) {
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.C(map2, "id", "", "item_id", "600013")) {
                return P0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0) >= i2;
            }
        }
        return false;
    }

    public static boolean Y0(int i2, String str, Map map) {
        int iMax = Math.max(0, i2);
        List listF0 = w1.f0("Item", map);
        List listS0 = s0(map);
        List listQ0 = q0(map);
        Iterator it = listF0.iterator();
        while (it.hasNext()) {
            Map map2 = (Map) it.next();
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iO0 = O0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)));
                if (iO0 < iMax) {
                    return false;
                }
                int i3 = iO0 - iMax;
                if (i3 <= 0) {
                    it.remove();
                    Object obj = map2.get("pk_id");
                    if (obj != null && !listS0.contains(String.valueOf(obj))) {
                        listS0.add(String.valueOf(obj));
                    }
                } else {
                    map2.put("num", Integer.valueOf(i3));
                    map2.put("item_num", Integer.valueOf(i3));
                    if (!listQ0.contains(map2)) {
                        listQ0.add(map2);
                    }
                }
                map.put("Item", p5.z0("del", listS0, "upd", listQ0, "add", listF0));
                return true;
            }
        }
        return iMax == 0;
    }

    public static boolean Z(int i2, String str, Map map) {
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                return R0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0) >= i2;
            }
        }
        return false;
    }

    public static LinkedHashMap Z0() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static void a(int i2, Map map, LinkedHashMap linkedHashMap) {
        Map mapF;
        int iMax;
        String strValueOf = String.valueOf(map.getOrDefault("beauty_id", "1"));
        int iMax2 = Math.max(0, R0(map.getOrDefault("beauty_talent_level", 0), 0));
        int iMax3 = Math.max(0, R0(map.getOrDefault("beauty_current_experience", 0), 0)) + i2;
        while (iMax2 < 30 && (mapF = f(iMax2, strValueOf, linkedHashMap)) != null && iMax3 >= (iMax = Math.max(1, R0(mapF.get("beauty_experience"), 1)))) {
            iMax3 -= iMax;
            iMax2++;
        }
        if (iMax2 >= 30) {
            iMax3 = 0;
        }
        c.a.t(iMax2, map, "beauty_talent_level", iMax3, "beauty_current_experience");
        Map mapF2 = f(iMax2, strValueOf, linkedHashMap);
        if (mapF2 != null) {
            map.put("beauty_attr_attack", Integer.valueOf(R0(mapF2.get("attr_attack"), 0)));
            map.put("beauty_attr_defense", Integer.valueOf(R0(mapF2.get("attr_defense"), 0)));
            map.put("beauty_attr_hp", Integer.valueOf(R0(mapF2.get("attr_hp"), 0)));
            map.put("beauty_attr_wisdom", Integer.valueOf(R0(mapF2.get("attr_wisdom"), 0)));
        }
    }

    public static int a0(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static LinkedHashMap a1(String str) {
        Boolean bool = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
        if (!str.isEmpty()) {
            linkedHashMapZ0.put("cmn_modules", str);
        }
        return linkedHashMapZ0;
    }

    public static Map b(int i2, String str, Map map) {
        List<Map> listF0 = w1.f0("Item", map);
        for (Map map2 : listF0) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iR0 = R0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)), 0) + i2;
                map2.put("num", Integer.valueOf(iR0));
                map2.put("item_num", Integer.valueOf(iR0));
                map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                return map2;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Item", map, linkedHashMap, "pk_id", "id", str);
        c.a.z(linkedHashMap, "item_id", str, i2, "num", i2, "item_num");
        linkedHashMap.put("item_type", 1);
        linkedHashMap.put("type", "1");
        listF0.add(linkedHashMap);
        map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
        return linkedHashMap;
    }

    public static int b0(Object obj, int i2) {
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

    public static LinkedHashMap b1() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static Map c(int i2, String str, Map map) {
        if (p5.h0(str)) {
            p5.c(i2, str, map);
            return p5.e1(i2, p5.p0(str) ? 16 : 1, str);
        }
        List<Map> listF0 = w1.f0("Item", map);
        List listS0 = s0(map);
        List listQ0 = q0(map);
        for (Map map2 : listF0) {
            if (c.a.A(map2, "item_id", str) || c.a.A(map2, "id", str)) {
                int iO0 = O0(map2.get("num")) + i2;
                map2.put("num", Integer.valueOf(iO0));
                map2.put("item_num", Integer.valueOf(iO0));
                if (!listQ0.contains(map2)) {
                    listQ0.add(map2);
                }
                map.put("Item", p5.z0("del", listS0, "upd", listQ0, "add", listF0));
                return map2;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Item", map, linkedHashMap, "pk_id", "id", str);
        c.a.z(linkedHashMap, "item_id", str, i2, "num", i2, "item_num");
        linkedHashMap.put("item_type", 1);
        listF0.add(linkedHashMap);
        if (!listQ0.contains(linkedHashMap)) {
            listQ0.add(linkedHashMap);
        }
        map.put("Item", p5.z0("del", listS0, "upd", listQ0, "add", listF0));
        return linkedHashMap;
    }

    public static boolean c0(Object obj) {
        return !(obj instanceof List) || ((List) obj).isEmpty();
    }

    public static LinkedHashMap c1() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static void d(ArrayList arrayList, Map map) {
        if (map == null) {
            return;
        }
        String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (c.a.B((Map) it.next(), "pk_id", "", strValueOf)) {
                return;
            }
        }
        arrayList.add(map);
    }

    public static boolean d0(String str) {
        return "festival.init".equals(str) || "festival.getScoreList".equals(str) || "festival.getRainDewList".equals(str) || "festival.scoreBuy".equals(str) || "festival.getGift".equals(str) || "festival.initRainDew".equals(str) || "festival.goFight".equals(str);
    }

    public static LinkedHashMap d1() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("error_code", 0);
        linkedHashMap.put("ret", 0);
        linkedHashMap.put("code", 0);
        linkedHashMap.put("result", Boolean.TRUE);
        linkedHashMap.put("msg", "success");
        return linkedHashMap;
    }

    public static void e(Map map, Map map2, int i2, c.e eVar) {
        int iP0 = P0(map2.get("level"), P0(map2.get("general_level"), 1));
        int i3 = 0;
        int iP1 = P0(map2.get("exp"), P0(map2.get("general_exp"), 0));
        String strJ = c.a.j(map2, "id", "", "general_id");
        w1 w1Var = (w1) eVar.f38a;
        long jC0 = w1Var.c0(strJ, iP0) + ((long) Math.max(0, iP1)) + ((long) Math.max(0, i2));
        int iP2 = w1Var.P0(Math.max(1, P0(map.get("user_level"), 1)) * 4, strJ, jC0);
        if (iP2 < iP0) {
            iP2 = iP0;
        }
        long jC1 = jC0 - w1Var.c0(strJ, iP2);
        if (jC1 > 0) {
            i3 = jC1 >= 2147483647L ? Integer.MAX_VALUE : (int) jC1;
        }
        F0(map2, iP2, i3, jC0);
        w1.a1(null).g(iP0, iP2, map2);
    }

    public static boolean e0(String str) {
        return str != null && str.startsWith("godness.");
    }

    public static LinkedHashMap e1() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static Map f(int i2, String str, LinkedHashMap linkedHashMap) {
        Object obj;
        Object obj2 = linkedHashMap.get(str);
        if (!(obj2 instanceof List)) {
            return null;
        }
        List list = (List) obj2;
        if (i2 < 0 || i2 >= list.size()) {
            return null;
        }
        while (true) {
            obj = list.get(i2);
            if (!(obj instanceof List)) {
                break;
            }
            list = (List) obj;
            if (list.isEmpty()) {
                break;
            }
            i2 = 0;
        }
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public static boolean f0(String str) {
        return "idcard.save".equals(str) || "idcard.getCode".equals(str) || "idcard.saveMobile".equals(str);
    }

    public static LinkedHashMap f1(String str) {
        Boolean bool = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]));
        if (str != null && !str.isEmpty()) {
            linkedHashMapZ0.put("cmn_modules", str);
        }
        return linkedHashMapZ0;
    }

    public static boolean g0(String str) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("ladderWar.") || str.startsWith("ladderWarLocal.")) {
            return str.endsWith(".entry") || str.endsWith(".getOverview") || str.endsWith(".goodsList") || str.endsWith(".exchange") || str.endsWith(".buyFtimes") || str.endsWith(".match") || str.endsWith(".fight") || str.endsWith(".worshipEntry") || str.endsWith(".worship") || str.endsWith(".rewardList") || str.endsWith(".buyReward") || str.endsWith(".hangReward");
        }
        return false;
    }

    public static LinkedHashMap g1() {
        Boolean bool = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0);
        linkedHashMapZ0.put("return_info", p5.z0("result", bool, new Object[0]));
        linkedHashMapZ0.put("cmn_modules", "Player");
        return linkedHashMapZ0;
    }

    public static boolean h0(String str) {
        return "task.getList".equals(str) || "task.recieve".equals(str) || "task.multiRecieve".equals(str);
    }

    public static void h1(List list, Map map) {
        map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", list));
    }

    public static LinkedHashMap i(Map map, boolean z) {
        long jG = c7.g();
        int iMax = Math.max(3, Q0(map.get("ladder_war_total_fight")));
        int iQ0 = Q0(map.get("ladder_war_point"));
        LinkedHashMap linkedHashMapZ0 = p5.z0("open_time", Long.valueOf(jG - 3600), "close_time", Long.valueOf(jG + 86400), "enable_fight", Boolean.TRUE, "left_fight", Integer.valueOf(iMax), "total_fight", Integer.valueOf(iMax), "history_fight", Integer.valueOf(iMax), "price", 100, "total_point", Integer.valueOf(Q0(map.get("ladder_war_total_point"))), "daily_point", Integer.valueOf(iQ0), "rank", 0, "left_worship", Integer.valueOf(Math.max(0, 3 - Q0(map.get("ladder_war_worship_times")))), "total_worship", 3, "pop_status", Boolean.FALSE, "rank_list", J0(), "is_local", Integer.valueOf(z ? 1 : 0));
        LinkedHashMap linkedHashMapC1 = c1();
        linkedHashMapC1.put("return_info", linkedHashMapZ0);
        linkedHashMapC1.put("ladder_war_info", linkedHashMapZ0);
        linkedHashMapC1.put("ladderWarInfo", linkedHashMapZ0);
        linkedHashMapC1.put("inter_service_info", linkedHashMapZ0);
        linkedHashMapC1.put("main_info", linkedHashMapZ0);
        linkedHashMapC1.putAll(linkedHashMapZ0);
        return linkedHashMapC1;
    }

    public static boolean i0(String str) {
        return "training.trainingInfo".equals(str) || "training.training".equals(str) || "training.multiTraining".equals(str);
    }

    public static void i1(List list, Map map, Map map2) {
        map.put("Item", p5.z0("del", new ArrayList(), "upd", p5.v0(map2), "add", list));
    }

    public static LinkedHashMap j(Map map) {
        int iO0 = O0(map.get("festival_kill_num"));
        int iO1 = O0(map.get("festival_boss_hp_percent"));
        if (iO1 <= 0 && iO0 <= 0) {
            iO1 = 100;
        }
        int iO2 = O0(map.get("festival_free_times"));
        if (iO2 <= 0) {
            iO2 = 1;
        }
        String strValueOf = String.valueOf(map.getOrDefault("festival_last_boss_dungeon_id", ""));
        if (strValueOf.isEmpty() || "null".equals(strValueOf)) {
            strValueOf = "1";
        }
        LinkedHashMap linkedHashMapZ0 = p5.z0("festival_info", p5.z0("id", "1", "type", "1", "score", Integer.valueOf(O0(map.get("festival_score"))), "status", 1, "free_times", Integer.valueOf(iO2)), "boss_info", p5.v0(p5.z0("boss_id", "1", "boss_card", "100001", "boss_power", 1, "boss_dungeon_id", strValueOf, "is_lock", 0, "hp", Integer.valueOf(iO1 * 10), "max_hp", 1000, "boss_hp_percent", Integer.valueOf(iO1))), "award_info", p5.v0(p5.z0("boss_dungeon_id", strValueOf, "kill_award", p5.v0(p5.z0("item_id", "600239", "num", 10, "item_num", 10, "type", 1)), "first_kill_award", p5.v0(p5.z0("item_id", "600001", "num", 1, "item_num", 1, "type", 1)))), "kill_info", p5.v0(p5.z0("boss_dungeon_id", strValueOf, "kill_num", Integer.valueOf(iO0), "kill_user_name", "", "kill_time", "")));
        LinkedHashMap linkedHashMapB1 = b1();
        linkedHashMapB1.put("festival", linkedHashMapZ0);
        linkedHashMapB1.putAll(linkedHashMapZ0);
        return linkedHashMapB1;
    }

    public static int j0(String str, Map map) {
        int iO0 = 0;
        for (Map map2 : w1.f0("Item", map)) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                iO0 += O0(map2.getOrDefault("num", map2.getOrDefault("item_num", 0)));
            }
        }
        return iO0;
    }

    public static int j1(int i2, int i3) {
        if (i2 <= 0 || com.sgscq.vpn.cloud.m0.c3(i3) <= 0) {
            return 0;
        }
        return Math.max(0, (int) Math.floor((((double) i2) * com.sgscq.vpn.cloud.m0.U0(i3)) + 1.0E-6d));
    }

    public static LinkedHashMap k() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ret", 0);
        linkedHashMap.put("code", 0);
        linkedHashMap.put("result", Boolean.TRUE);
        linkedHashMap.put("msg", "success");
        linkedHashMap.put("error_code", 0);
        return linkedHashMap;
    }

    public static LinkedHashMap k0(ArrayList arrayList, ArrayList arrayList2) {
        return p5.z0("Item", p5.z0("del", arrayList, "upd", arrayList2, "add", new ArrayList()), new Object[0]);
    }

    public static LinkedHashMap l(Map map) {
        int iQ0 = Q0(map.get("ladder_war_point"));
        LinkedHashMap linkedHashMapZ0 = p5.z0("daily_point", Integer.valueOf(iQ0), "goods_list", M(iQ0));
        LinkedHashMap linkedHashMapC1 = c1();
        linkedHashMapC1.put("return_info", linkedHashMapZ0);
        linkedHashMapC1.putAll(linkedHashMapZ0);
        return linkedHashMapC1;
    }

    public static String l0(String str, String str2, String str3) {
        return String.valueOf(str) + '|' + str2 + '|' + str3;
    }

    public static LinkedHashMap m(Map map) {
        int iS0 = S0(map.get("world_war_point"));
        LinkedHashMap linkedHashMapZ0 = p5.z0("point", Integer.valueOf(iS0), "daily_point", Integer.valueOf(iS0), "goods_list", N(iS0));
        LinkedHashMap linkedHashMapE1 = e1();
        linkedHashMapE1.put("return_info", linkedHashMapZ0);
        linkedHashMapE1.putAll(linkedHashMapZ0);
        return linkedHashMapE1;
    }

    public static int m0(int i2, boolean z) {
        if (!z || i2 <= 0) {
            return i2;
        }
        long j2 = ((long) i2) * 2;
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j2;
    }

    public static byte[] n(byte[] bArr) {
        try {
            byte[] bytes = ("HTTP/1.1 200 OK\r\nContent-Type: image/jpeg\r\nContent-Length: " + bArr.length + "\r\n\r\n").getBytes("US-ASCII");
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        } catch (Exception unused) {
            return u0();
        }
    }

    public static LinkedHashMap o(boolean z) {
        Object[] objArr = new Object[24];
        objArr[0] = "time";
        objArr[1] = 3600;
        objArr[2] = "round";
        objArr[3] = 1;
        objArr[4] = "name";
        objArr[5] = z ? "Local" : "World";
        objArr[6] = "date";
        objArr[7] = "2026-06-11";
        objArr[8] = "start_time";
        objArr[9] = "20:00";
        objArr[10] = "end_time";
        objArr[11] = "21:00";
        objArr[12] = "is_player";
        objArr[13] = Boolean.TRUE;
        objArr[14] = "support_point";
        objArr[15] = 0;
        objArr[16] = "support_sum";
        objArr[17] = 0;
        objArr[18] = "rank";
        objArr[19] = 0;
        objArr[20] = "left_support_times";
        objArr[21] = 3;
        objArr[22] = "support_times";
        objArr[23] = 3;
        LinkedHashMap linkedHashMapZ0 = p5.z0("status", 1, objArr);
        LinkedHashMap linkedHashMapE1 = e1();
        LinkedHashMap linkedHashMap = new LinkedHashMap(linkedHashMapZ0);
        linkedHashMap.put("world_war_info", linkedHashMapZ0);
        linkedHashMapE1.put("return_info", linkedHashMap);
        linkedHashMapE1.put("world_war_info", linkedHashMapZ0);
        linkedHashMapE1.putAll(linkedHashMapZ0);
        return linkedHashMapE1;
    }

    public static ArrayList o0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("player_id", "100002", "uid", "100002", "nick", "Opponent", "server", 1, "server_id", 1, "gid", "101001", "level", 1, "rank", 1, "fightPoint", 0));
        arrayList.add(p5.z0("player_id", "100003", "uid", "100003", "nick", "Opponent2", "server", 1, "server_id", 1, "gid", "101002", "level", 1, "rank", 2, "fightPoint", 0));
        return arrayList;
    }

    public static LinkedHashMap p(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ret", 0);
        linkedHashMap.put("code", 0);
        linkedHashMap.put("result", Boolean.TRUE);
        linkedHashMap.put("msg", "success");
        linkedHashMap.put("error_code", 0);
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Object obj : list) {
                if (obj instanceof Map) {
                    Map map = (Map) obj;
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
                    String strF = F(map);
                    linkedHashMap2.put("email_type", strF);
                    linkedHashMap2.put("mail_type", strF);
                    arrayList.add(linkedHashMap2);
                } else {
                    arrayList.add(obj);
                }
            }
        }
        linkedHashMap.put("email_list", arrayList);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("system", 0);
        linkedHashMap3.put("friend", 0);
        linkedHashMap3.put("gift", 0);
        linkedHashMap3.put("event", 0);
        linkedHashMap3.put("pay", 0);
        for (Object obj2 : arrayList) {
            if (obj2 instanceof Map) {
                String strF2 = F((Map) obj2);
                if (linkedHashMap3.containsKey(strF2)) {
                    linkedHashMap3.put(strF2, Integer.valueOf(((Integer) linkedHashMap3.get(strF2)).intValue() + 1));
                }
            }
        }
        LinkedHashMap linkedHashMapZ0 = p5.z0("system_email", p5.z0("num", linkedHashMap3.get("system"), new Object[0]), "friend_email", p5.z0("num", linkedHashMap3.get("friend"), new Object[0]), "gift_email", p5.z0("num", linkedHashMap3.get("gift"), new Object[0]), "event_email", p5.z0("num", linkedHashMap3.get("event"), new Object[0]), "pay_email", p5.z0("num", linkedHashMap3.get("pay"), new Object[0]));
        linkedHashMap.put("push_info", linkedHashMapZ0);
        linkedHashMap.put("cmn", p5.z0("push", linkedHashMapZ0, new Object[0]));
        return linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0090  */
    public static int p0(Map map, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, boolean z) {
        Object obj;
        int iA0 = a0(map.get("combat_exp"), -1);
        if (iA0 > 0) {
            return iA0;
        }
        int iA1 = a0(map.get("pro_combat_exp"), -1);
        if (iA1 > 0) {
            return iA1;
        }
        int iA2 = 0;
        if (linkedHashMap != null && linkedHashMap2 != null) {
            String strValueOf = String.valueOf(map.getOrDefault("general_id", map.get("id")));
            if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
                Object obj2 = linkedHashMap.get(strValueOf);
                if (obj2 instanceof Map) {
                    String strValueOf2 = String.valueOf(((Map) obj2).getOrDefault(z ? "general_soul_eated_exp_type" : "eated_exp_type", ""));
                    if (!strValueOf2.isEmpty()) {
                        Object obj3 = linkedHashMap2.get(strValueOf2);
                        if (obj3 instanceof List) {
                            List list = (List) obj3;
                            if (list.isEmpty()) {
                                obj = null;
                            } else {
                                obj = list.get(0);
                            }
                        } else if (obj3 instanceof Map) {
                            Map map2 = (Map) obj3;
                            Object obj4 = map2.get("1");
                            obj = obj4 == null ? map2.get("1.0") : obj4;
                        } else {
                            obj = null;
                        }
                        if (obj instanceof Map) {
                            iA2 = a0(((Map) obj).get("num"), 0);
                        }
                    }
                }
            }
        }
        return iA2 > 0 ? iA2 : Math.max(5, a0(map.get("grade"), 1) * 5);
    }

    public static LinkedHashMap q(Map map) {
        LinkedHashMap linkedHashMapZ0 = p5.z0("raindew_num", Integer.valueOf(j0("600242", map)), "gift_status", Integer.valueOf(O0(map.get("festival_gift_status"))), "list", H0());
        LinkedHashMap linkedHashMapB1 = b1();
        linkedHashMapB1.put("raindew_info", linkedHashMapZ0);
        linkedHashMapB1.put("raindew_list", H0());
        linkedHashMapB1.put("item_list", H0());
        return linkedHashMapB1;
    }

    public static List q0(Map map) {
        Object obj = map.get("Item");
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("upd");
            if (obj2 instanceof List) {
                return (List) obj2;
            }
        }
        return new ArrayList();
    }

    public static LinkedHashMap r(Map map) {
        ArrayList arrayListM0 = M0(map);
        LinkedHashMap linkedHashMapC1 = c1();
        linkedHashMapC1.put("return_info", p5.z0("reward_list", arrayListM0, new Object[0]));
        linkedHashMapC1.put("reward_list", arrayListM0);
        return linkedHashMapC1;
    }

    public static LinkedHashSet r0(LinkedHashMap linkedHashMap) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",")) {
            if (!str.trim().isEmpty()) {
                linkedHashSet.add(str.trim());
            }
        }
        return linkedHashSet;
    }

    public static LinkedHashMap s(Map map) {
        Integer numValueOf = Integer.valueOf(S0(map.get("world_war_point")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("date", "2026-06-11", "round", 1, "session", 1, "player_nick", "Player", "status", 0, "point", 0));
        LinkedHashMap linkedHashMapZ0 = p5.z0("point", numValueOf, "support_list", arrayList);
        LinkedHashMap linkedHashMapE1 = e1();
        linkedHashMapE1.put("return_info", linkedHashMapZ0);
        linkedHashMapE1.putAll(linkedHashMapZ0);
        return linkedHashMapE1;
    }

    public static List s0(Map map) {
        Object obj = map.get("Item");
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("del");
            if (obj2 instanceof List) {
                return (List) obj2;
            }
        }
        return new ArrayList();
    }

    public static LinkedHashMap t() {
        LinkedHashMap linkedHashMapZ0 = p5.z0("rank_list", J0(), "award_list", M0(null), "is_inlist", Boolean.FALSE, "status", 0);
        LinkedHashMap linkedHashMapC1 = c1();
        linkedHashMapC1.put("return_info", linkedHashMapZ0);
        linkedHashMapC1.putAll(linkedHashMapZ0);
        return linkedHashMapC1;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0059  */
    public static String[] t0(Map map, Map map2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (p5.h0(String.valueOf(map2.getOrDefault("item_id", map2.getOrDefault("id", ""))))) {
            arrayList.add("Player");
        }
        Object obj = map == null ? null : map.get("Item");
        if (obj instanceof Map) {
            Map map3 = (Map) obj;
            if (c0(map3.get("del")) && c0(map3.get("upd")) && c0(map3.get("add"))) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        if (z) {
            arrayList.add("Item");
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static boolean u(String str) {
        if (str == null) {
            return false;
        }
        int iIndexOf = str.indexOf(63);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        return str.contains("/hd_resource/") && str.toLowerCase().endsWith(".jpg");
    }

    public static byte[] u0() {
        return "HTTP/1.1 404 Not Found\r\nContent-Length: 0\r\n\r\n".getBytes();
    }

    public static void v(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            map2.put("del", new ArrayList());
            map2.put("upd", new ArrayList());
        }
    }

    public static String v0(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return strValueOf.isEmpty() ? str2 : strValueOf;
    }

    public static String[] w(LinkedHashMap linkedHashMap) {
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("cmn_modules", ""));
        if (strValueOf.isEmpty() || "null".equals(strValueOf)) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strValueOf.split(",")) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static String w0(String str, Map map) {
        String str2;
        return (map == null || (str2 = (String) map.get(str)) == null) ? "" : str2;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0043  */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x005e A[PHI: r7
      0x005e: PHI (r7v19 java.lang.Object) = (r7v12 java.lang.Object), (r7v21 java.lang.Object) binds: [B:46:0x009c, B:27:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x0062  */
    /* JADX WARN: Code duplicated, block: B:31:0x0066  */
    /* JADX WARN: Code duplicated, block: B:37:0x0078  */
    /* JADX WARN: Code duplicated, block: B:40:0x007c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0086  */
    /* JADX WARN: Code duplicated, block: B:44:0x0091  */
    /* JADX WARN: Code duplicated, block: B:48:0x009f  */
    public static int x(Object obj, int i2, int i3) {
        Map map;
        int iMax;
        boolean z;
        Object obj2;
        List list;
        if (obj == null) {
            map = null;
        } else if (obj instanceof Map) {
            map = (Map) obj;
            if (!(map.containsKey("exp_need") || map.containsKey("extra_buff"))) {
                Object obj3 = map.get(String.valueOf(i2));
                if (obj3 == null) {
                    obj3 = map.get(String.valueOf(i2));
                }
                if (obj3 != null) {
                    obj = obj3;
                }
                iMax = Math.max(1, i3);
                if (obj instanceof List) {
                    list = (List) obj;
                    if (!list.isEmpty()) {
                        obj2 = list.get(Math.min(iMax - 1, list.size() - 1));
                        if (obj2 instanceof Map) {
                            map = (Map) obj2;
                        }
                    }
                    map = null;
                } else if (obj instanceof Map) {
                    map = (Map) obj;
                    if (!map.containsKey("exp_need") || map.containsKey("extra_buff")) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        obj2 = map.get(String.valueOf(iMax));
                        if (obj2 == null) {
                            obj2 = map.get(String.valueOf(iMax));
                        }
                        if (obj2 == null) {
                            obj2 = map.get(String.valueOf(iMax - 1));
                        }
                        if (obj2 instanceof Map) {
                            map = (Map) obj2;
                        } else {
                            map = null;
                        }
                    }
                } else {
                    map = null;
                }
            }
        } else {
            iMax = Math.max(1, i3);
            if (obj instanceof List) {
                list = (List) obj;
                if (!list.isEmpty()) {
                    obj2 = list.get(Math.min(iMax - 1, list.size() - 1));
                    if (obj2 instanceof Map) {
                        map = (Map) obj2;
                    }
                }
                map = null;
            } else if (obj instanceof Map) {
                map = (Map) obj;
                if (map.containsKey("exp_need")) {
                    z = true;
                } else {
                    z = true;
                }
                if (!z) {
                    obj2 = map.get(String.valueOf(iMax));
                    if (obj2 == null) {
                        obj2 = map.get(String.valueOf(iMax));
                    }
                    if (obj2 == null) {
                        obj2 = map.get(String.valueOf(iMax - 1));
                    }
                    if (obj2 instanceof Map) {
                        map = (Map) obj2;
                    } else {
                        map = null;
                    }
                }
            } else {
                map = null;
            }
        }
        if (map == null) {
            return H(i3);
        }
        int iA0 = a0(map.get("exp_need"), 0);
        return iA0 > 0 ? iA0 : H(i3);
    }

    public static String x0(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return strValueOf.isEmpty() ? str2 : strValueOf;
    }

    public static boolean y(LinkedHashMap linkedHashMap) {
        if (!Boolean.TRUE.equals(linkedHashMap.get("result"))) {
            return false;
        }
        if (a0(linkedHashMap.get("exp"), 0) > 0 || a0(linkedHashMap.get("level_now"), 0) != a0(linkedHashMap.get("level_before"), 0)) {
            return true;
        }
        Object obj = linkedHashMap.get("delta_data");
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        String[] strArr = {"General", "GeneralSoul", "Skill", "TeamGeneral"};
        for (int i2 = 0; i2 < 4; i2++) {
            Object obj2 = map.get(strArr[i2]);
            if (obj2 instanceof Map) {
                Map map2 = (Map) obj2;
                String[] strArr2 = {"del", "upd", "add"};
                for (int i3 = 0; i3 < 3; i3++) {
                    Object obj3 = map2.get(strArr2[i3]);
                    if ((obj3 instanceof List) && !((List) obj3).isEmpty()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static String y0(String str, Map map) {
        String str2;
        return (map == null || (str2 = (String) map.get(str)) == null) ? "" : str2;
    }

    public static List z(Map map) {
        Object obj = map.get("beauty_exchange_goods");
        if (obj instanceof List) {
            return (List) obj;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("pk_id", "1", "item_id", "600270", "item_name", "itemname600270", "item_num", 1, "price", 10, "discount_price", 10, "currency_type", 1, "exchange_num", 99, "exchanged_num", 0));
        map.put("beauty_exchange_goods", arrayList);
        return arrayList;
    }

    public static String z0(String str, Map map) {
        Object obj;
        return (map == null || (obj = map.get(str)) == null) ? "" : String.valueOf(obj);
    }

    public p7 N0() {
        int i2 = this.f807a;
        Object obj = this.f808b;
        switch (i2) {
            case 8:
                Context context = ((k0) obj).f901a;
                if (context == null) {
                    return null;
                }
                p7 p7VarH = p7.h(context);
                p7VarH.i();
                return p7VarH;
            default:
                Context context2 = ((k0) obj).f901a;
                if (context2 == null) {
                    return null;
                }
                p7 p7VarH2 = p7.h(context2);
                p7VarH2.i();
                return p7VarH2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    public byte[] O(String str) {
        String strSubstring;
        if (str != null) {
            int iIndexOf = str.indexOf(63);
            String strSubstring2 = iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
            int iIndexOf2 = strSubstring2.indexOf("/hd_resource/");
            if (iIndexOf2 < 0) {
                strSubstring = null;
            } else {
                strSubstring = strSubstring2.substring(iIndexOf2 + 13);
                if (strSubstring.isEmpty() || strSubstring.contains("/") || strSubstring.contains("\\") || strSubstring.contains("..")) {
                    strSubstring = null;
                }
            }
        } else {
            strSubstring = null;
        }
        if (strSubstring == null) {
            z2.g("SGSCQ_SRV", "[HD] invalid path: " + str);
        } else {
            File file = new File(new File(((k0) this.f808b).f901a.getFilesDir(), "hd"), "hd_image.zip");
            if (file.exists()) {
                try {
                    ZipFile zipFile = new ZipFile(file);
                    try {
                        ZipEntry entry = zipFile.getEntry(strSubstring);
                        if (entry == null) {
                            z2.e("SGSCQ_SRV", "[HD] not found in zip: ".concat(strSubstring));
                            byte[] bArrU0 = u0();
                            zipFile.close();
                            return bArrU0;
                        }
                        long size = entry.getSize();
                        ByteArrayOutputStream byteArrayOutputStream = size > 0 ? new ByteArrayOutputStream((int) size) : new ByteArrayOutputStream();
                        InputStream inputStream = zipFile.getInputStream(entry);
                        try {
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int i2 = inputStream.read(bArr);
                                if (i2 == -1) {
                                    inputStream.close();
                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                    z2.e("SGSCQ_SRV", "[HD] serve " + strSubstring + " (" + byteArray.length + " bytes)");
                                    byte[] bArrN = n(byteArray);
                                    zipFile.close();
                                    return bArrN;
                                }
                                byteArrayOutputStream.write(bArr, 0, i2);
                                try {
                                    zipFile.close();
                                } catch (Throwable th) {
                                    th.addSuppressed(th);
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        zipFile.close();
                        throw th4;
                    }
                } catch (Exception e2) {
                    c.a.D(e2, a.b0.b("[HD] read error for ", strSubstring, ": "), "SGSCQ_SRV");
                }
                c.a.D(e2, a.b0.b("[HD] read error for ", strSubstring, ": "), "SGSCQ_SRV");
            } else {
                z2.e("SGSCQ_SRV", "[HD] zip not imported, miss: ".concat(strSubstring));
            }
        }
        return u0();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0417  */
    /* JADX WARN: Code duplicated, block: B:103:0x0421 A[LOOP:3: B:101:0x041e->B:103:0x0421, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:173:0x07c0  */
    /* JADX WARN: Code duplicated, block: B:174:0x07c5  */
    /* JADX WARN: Code duplicated, block: B:178:0x07e3  */
    /* JADX WARN: Code duplicated, block: B:180:0x07f1  */
    /* JADX WARN: Code duplicated, block: B:182:0x07fe  */
    /* JADX WARN: Code duplicated, block: B:316:0x0daf  */
    /* JADX WARN: Code duplicated, block: B:341:0x0e3a  */
    /* JADX WARN: Code duplicated, block: B:342:0x0e3d  */
    /* JADX WARN: Code duplicated, block: B:347:0x0e4e  */
    /* JADX WARN: Code duplicated, block: B:349:0x0e5e  */
    /* JADX WARN: Code duplicated, block: B:350:0x0e64  */
    /* JADX WARN: Code duplicated, block: B:353:0x0e78  */
    /* JADX WARN: Code duplicated, block: B:356:0x0e8f  */
    /* JADX WARN: Code duplicated, block: B:358:0x0ec9  */
    /* JADX WARN: Code duplicated, block: B:359:0x0ed9  */
    /* JADX WARN: Code duplicated, block: B:361:0x0ede  */
    /* JADX WARN: Code duplicated, block: B:365:0x0eea  */
    /* JADX WARN: Code duplicated, block: B:369:0x0efa  */
    /* JADX WARN: Code duplicated, block: B:371:0x0f2b  */
    /* JADX WARN: Code duplicated, block: B:372:0x0f2e  */
    /* JADX WARN: Code duplicated, block: B:375:0x0f45  */
    /* JADX WARN: Code duplicated, block: B:381:0x0fa7  */
    /* JADX WARN: Code duplicated, block: B:384:0x0fad  */
    /* JADX WARN: Code duplicated, block: B:387:0x0fb6  */
    /* JADX WARN: Code duplicated, block: B:390:0x0ff5  */
    /* JADX WARN: Code duplicated, block: B:393:0x100b  */
    /* JADX WARN: Code duplicated, block: B:397:0x1028  */
    /* JADX WARN: Code duplicated, block: B:398:0x102b  */
    /* JADX WARN: Code duplicated, block: B:437:0x0f9f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:441:0x0f4f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:67:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:69:0x030a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0311  */
    /* JADX WARN: Code duplicated, block: B:73:0x0356  */
    /* JADX WARN: Code duplicated, block: B:76:0x0360 A[LOOP:1: B:74:0x035d->B:76:0x0360, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:94:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:96:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:98:0x03dc  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r13v14 java.util.Map, still in use, count: 2, list:
          (r13v14 java.util.Map) from 0x07b5: INVOKE (r13v14 java.util.Map), ("pk_id"), (r6v34 java.lang.String) STATIC call: c.a.A(java.util.Map, java.lang.String, java.lang.String):boolean A[MD:(java.util.Map, java.lang.String, java.lang.String):boolean (m), WRAPPED] (LINE:46)
          (r13v14 java.util.Map) from 0x07be: PHI (r13 I:??) = (r13v11 java.util.Map), (r13v14 java.util.Map) binds: [B:171:0x07bc, B:415:0x07be] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public byte[] P(java.lang.String r64, java.lang.String r65, java.util.Map r66, java.util.Map r67) {
        /*
            Method dump skipped, instruction units count: 4206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sgscq.vpn.handler.d1.P(java.lang.String, java.lang.String, java.util.Map, java.util.Map):byte[]");
    }

    public void T0(String str, Map map) {
        ((k0) this.f808b).f904d.S0(str, map);
    }

    public LinkedHashMap g(String str, Map map, Map map2, LinkedHashSet linkedHashSet) {
        k0 k0Var = (k0) this.f808b;
        JSONObject jSONObjectT = k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), str, map2);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(linkedHashSet);
        if (map.containsKey("Combat")) {
            linkedHashSet2.add("Combat");
        }
        if (map.containsKey("General")) {
            linkedHashSet2.add("General");
        }
        if (map.containsKey("GeneralSoul")) {
            linkedHashSet2.add("GeneralSoul");
        }
        if (map.containsKey("Skill")) {
            linkedHashSet2.add("Skill");
        }
        if (map.containsKey("TeamGeneral")) {
            linkedHashSet2.add("TeamGeneral");
        }
        return p5.u1(k0Var.f904d.j(map, jSONObjectT, (String[]) linkedHashSet2.toArray(new String[0])));
    }

    public LinkedHashMap h(String str, Map map, Map map2, String... strArr) {
        int i2 = this.f807a;
        Object obj = this.f808b;
        switch (i2) {
            case 0:
                k0 k0Var = (k0) obj;
                return p5.u1(k0Var.f904d.j(map, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), str, map2), strArr));
            case 3:
                k0 k0Var2 = (k0) obj;
                return p5.u1(k0Var2.f904d.j(map, k0Var2.f904d.t((int) c7.g(), k0Var2.i(k0Var2.c(), "user_gold", map2), k0Var2.i(k0Var2.b(), "user_energy", map2), k0Var2.i(k0Var2.d(), "user_power", map2), k0Var2.j(k0Var2.a(), map2), str, map2), strArr));
            case 8:
                k0 k0Var3 = (k0) obj;
                return p5.u1(k0Var3.f904d.j(map, k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", map2), k0Var3.i(k0Var3.b(), "user_energy", map2), k0Var3.i(k0Var3.d(), "user_power", map2), k0Var3.j(k0Var3.a(), map2), str, map2), strArr));
            default:
                k0 k0Var4 = (k0) obj;
                return p5.u1(k0Var4.f904d.j(map, k0Var4.f904d.t((int) c7.g(), k0Var4.i(k0Var4.c(), "user_gold", map2), k0Var4.i(k0Var4.b(), "user_energy", map2), k0Var4.i(k0Var4.d(), "user_power", map2), k0Var4.j(k0Var4.a(), map2), str, map2), strArr));
        }
    }

    public ArrayList n0() {
        ArrayList arrayList = new ArrayList();
        try {
            a7 a7VarV1 = w1.a1(((k0) this.f808b).f901a).V1();
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
        } catch (RuntimeException unused) {
        }
        return arrayList;
    }

    public d1(int i2, l.c... cVarArr) {
        this.f807a = i2;
        this.f808b = cVarArr;
    }

    public /* synthetic */ d1(Object obj, int i2) {
        this.f807a = i2;
        this.f808b = obj;
    }
}
