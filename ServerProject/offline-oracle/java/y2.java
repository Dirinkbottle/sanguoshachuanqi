package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
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
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class y2 {
    public static final String[] X = {"710000", "710021", "710022", "710023", "710024", "710025", "710026", "710027", "710008", "710009", "710010", "710011", "710012", "710013", "710032", "791836"};
    public static final Object[][] Y = {new Object[]{1, "王者", 5000, 5000}, new Object[]{10, "钻石", 3000, 5000}, new Object[]{50, "铂金", 2000, 3000}, new Object[]{200, "黄金", 1500, 2000}, new Object[]{500, "白银", 1000, 1500}, new Object[]{1000, "青铜", 500, 1000}, new Object[]{9999999, "铁", 100, 500}};
    public static final ScheduledExecutorService Z = Executors.newSingleThreadScheduledExecutor(new x0(4));
    public static final Random a0 = new Random();
    public final com.sgscq.vpn.handler.d1 A;
    public final com.sgscq.vpn.handler.d1 B;
    public final com.sgscq.vpn.handler.d1 C;
    public final com.sgscq.vpn.handler.c D;
    public final com.sgscq.vpn.handler.z0 E;
    public final com.sgscq.vpn.handler.d1 F;
    public final com.sgscq.vpn.handler.d1 G;
    public final com.sgscq.vpn.handler.d1 H;
    public final com.sgscq.vpn.handler.d1 I;
    public final com.sgscq.vpn.handler.k0 J;
    public final p7 K;
    public final a.a L;
    public final com.sgscq.vpn.cloud.f0 M;
    public final t N;
    public final m.e O;
    public final com.sgscq.vpn.cloud.b P;
    public final a7 Q = new a7();
    public final d3 R = new d3(0);
    public final ArrayList S = new ArrayList();
    public final ExecutorService T = Executors.newSingleThreadExecutor(new x0(3));
    public HashMap U;
    public final Map V;
    public final int W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f1548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedPreferences f1550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SharedPreferences f1551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SharedPreferences f1552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final h5 f1553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.sgscq.vpn.handler.d f1554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.sgscq.vpn.handler.d1 f1555h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.sgscq.vpn.handler.d1 f1556i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final com.sgscq.vpn.handler.d0 f1557j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final com.sgscq.vpn.handler.f0 f1558k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final com.sgscq.vpn.handler.g f1559l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final com.sgscq.vpn.handler.x0 f1560m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.sgscq.vpn.handler.w f1561n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final com.sgscq.vpn.handler.u0 f1562o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final com.sgscq.vpn.handler.d1 f1563p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final com.sgscq.vpn.handler.b1 f1564q;
    public final com.sgscq.vpn.handler.v0 r;
    public final com.sgscq.vpn.handler.l0 s;
    public final c.e t;
    public final com.sgscq.vpn.handler.h1 u;
    public final com.sgscq.vpn.handler.d1 v;
    public final com.sgscq.vpn.handler.d1 w;
    public final com.sgscq.vpn.handler.d1 x;
    public final com.sgscq.vpn.handler.z y;
    public final com.sgscq.vpn.handler.t0 z;

    public y2(Context context) {
        Map mapEmptyMap;
        int i2;
        int i3 = 0;
        int i4 = 3;
        this.f1549b = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("sgscq_player_v5", 0);
        this.f1552e = sharedPreferences;
        SharedPreferences sharedPreferences2 = context.getSharedPreferences("sgscq_config_v2", 0);
        this.f1550c = sharedPreferences2;
        this.f1551d = context.getSharedPreferences("sgscq_guide_v2", 0);
        this.f1553f = new h5(context, sharedPreferences2, sharedPreferences);
        String strA = o0.a(context, "upgrade_coins.json");
        if (strA == null || strA.isEmpty()) {
            mapEmptyMap = Collections.emptyMap();
        } else {
            try {
                mapEmptyMap = (Map) new a.o().e(strA, new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.LocalServer$1
                }.getType());
                if (mapEmptyMap == null) {
                    mapEmptyMap = Collections.emptyMap();
                }
            } catch (RuntimeException e2) {
                z2.d("SGSCQ_SRV", "[EquipUpgrade] failed to load upgrade coin curves", e2);
                mapEmptyMap = Collections.emptyMap();
            }
        }
        this.V = mapEmptyMap;
        this.L = new a.a(4);
        this.M = new com.sgscq.vpn.cloud.f0(context);
        int i5 = 2;
        this.N = new t(2, context);
        int i6 = 6;
        this.O = new m.e(6, context);
        this.P = new com.sgscq.vpn.cloud.b(context);
        c7 c7VarD = c7.d(context);
        c7VarD.i();
        c7VarD.k(null);
        int i7 = 1;
        this.f1548a = true;
        int i8 = 7;
        try {
            ServerSocket serverSocket = new ServerSocket(0, 50);
            this.S.add(serverSocket);
            int localPort = serverSocket.getLocalPort();
            z2.e("SGSCQ_SRV", "Game server on :" + localPort);
            new Thread(new d(this, serverSocket, i8), "LocalSrv-" + localPort).start();
            i2 = localPort;
        } catch (Exception e3) {
            c.a.u(e3, new StringBuilder("Cannot bind port 0: "), "SGSCQ_SRV");
            i2 = 0;
        }
        this.W = i2;
        com.sgscq.vpn.handler.k0 k0Var = new com.sgscq.vpn.handler.k0(context, this.f1550c, this.f1551d, this.f1553f, i2);
        this.J = k0Var;
        this.f1555h = new com.sgscq.vpn.handler.d1(k0Var, 10);
        this.f1556i = new com.sgscq.vpn.handler.d1(k0Var, 11);
        this.f1554g = new com.sgscq.vpn.handler.d(k0Var);
        this.f1557j = new com.sgscq.vpn.handler.d0(k0Var);
        this.f1558k = new com.sgscq.vpn.handler.f0(k0Var);
        this.f1559l = new com.sgscq.vpn.handler.g(k0Var);
        this.f1560m = new com.sgscq.vpn.handler.x0(k0Var);
        this.f1561n = new com.sgscq.vpn.handler.w(k0Var);
        this.f1562o = new com.sgscq.vpn.handler.u0(k0Var);
        this.f1563p = new com.sgscq.vpn.handler.d1(k0Var, i7);
        this.f1564q = new com.sgscq.vpn.handler.b1(k0Var);
        this.r = new com.sgscq.vpn.handler.v0(k0Var);
        this.s = new com.sgscq.vpn.handler.l0(k0Var);
        this.t = new c.e(k0Var);
        this.u = new com.sgscq.vpn.handler.h1(k0Var);
        this.v = new com.sgscq.vpn.handler.d1(k0Var, 14);
        this.w = new com.sgscq.vpn.handler.d1(k0Var, 8);
        this.x = new com.sgscq.vpn.handler.d1(k0Var, i8);
        this.y = new com.sgscq.vpn.handler.z(k0Var);
        this.z = new com.sgscq.vpn.handler.t0(k0Var);
        this.A = new com.sgscq.vpn.handler.d1(k0Var, i4);
        this.B = new com.sgscq.vpn.handler.d1(k0Var, i3);
        this.C = new com.sgscq.vpn.handler.d1(k0Var, i5);
        this.D = new com.sgscq.vpn.handler.c(k0Var);
        this.E = new com.sgscq.vpn.handler.z0(k0Var);
        this.F = new com.sgscq.vpn.handler.d1(k0Var, 9);
        this.G = new com.sgscq.vpn.handler.d1(k0Var, i6);
        this.H = new com.sgscq.vpn.handler.d1(k0Var, 12);
        this.I = new com.sgscq.vpn.handler.d1(k0Var, 13);
        p7 p7VarH = p7.h(context);
        this.K = p7VarH;
        p7VarH.i();
        this.f1553f.Q0("recharge_grant", new n2(i3));
        this.f1553f.Q0("mail_claim", new n2(i7));
    }

    public static LinkedHashMap A(int i2, String str, Map map) {
        int i3;
        String strR1 = r1(str, map);
        int iQ0 = q0(i2, str, map);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (iQ0 <= 0) {
            return p5.z0("add_list", arrayList, "deleted_item_pk_ids", arrayList2, "added_times", 0);
        }
        if ("600100".equals(strR1)) {
            i3 = 10;
        } else {
            i3 = ("600019".equals(strR1) || "600020".equals(strR1) || "600021".equals(strR1)) ? 1 : 3;
        }
        int i4 = i3 * iQ0;
        int iL2 = w1.l2(String.valueOf(map.getOrDefault("ladderChallengeTimes", map.getOrDefault("ladder_challenging_num", 0))), 0) + i4;
        c.a.t(iL2, map, "ladderChallengeTimes", iL2, "ladder_challenging_num");
        arrayList.add(a0(i4, 12, strR1));
        arrayList2.add(str);
        Q3(map);
        return p5.z0("add_list", arrayList, "deleted_item_pk_ids", arrayList2, "added_times", Integer.valueOf(i4));
    }

    public static String A0(Random random, double d2) {
        int i2 = random.nextDouble() < d2 ? 2 : 1;
        return "60" + (random.nextInt(4) + 1) + "00" + i2;
    }

    public static boolean A2(w1 w1Var, String str) {
        return !str.isEmpty() && ("600045".equals(str) || str.startsWith("99") || w1Var.t1(str));
    }

    public static ArrayList A3(Map map, String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Object obj = map.get(str);
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                if (!strValueOf.trim().isEmpty()) {
                    for (String str2 : strValueOf.replace("[", "").replace("]", "").replace("\"", "").split(",")) {
                        String strTrim = str2.trim();
                        if (!strTrim.isEmpty()) {
                            arrayList.add(strTrim);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static String B0(Random random, Context context) {
        double dNextDouble = random.nextDouble();
        int i2 = dNextDouble < 0.0d ? 4 : dNextDouble < 0.9d ? 3 : 2;
        w1 w1VarA1 = w1.a1(context);
        ArrayList arrayList = new ArrayList();
        for (String str : w1VarA1.h0()) {
            Map mapZ0 = w1VarA1.z0(str);
            if (mapZ0 != null) {
                int iF = c.a.f(mapZ0, "grade", "4", 4);
                String strValueOf = String.valueOf(mapZ0.getOrDefault("equipment_pos", ""));
                if (iF == i2 && "3".equals(strValueOf)) {
                    arrayList.add(str);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return (String) arrayList.get(random.nextInt(arrayList.size()));
        }
        if (i2 != 2) {
            return i2 != 3 ? "234001" : "233001";
        }
        return "232001";
    }

    public static int B1(int i2) {
        return Math.max(1, i2);
    }

    public static boolean B2(String str) {
        return str.startsWith("71") || str.startsWith("72") || str.startsWith("79");
    }

    public static double B3(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    public static Map C(List list, Map map, LinkedHashMap linkedHashMap, Map map2) {
        if (map2 == null) {
            map2 = new LinkedHashMap();
        }
        if (Boolean.TRUE.equals(linkedHashMap.get("result"))) {
            LinkedHashSet linkedHashSetB = b(linkedHashMap);
            com.sgscq.vpn.handler.j jVarC = com.sgscq.vpn.handler.y0.c(list, map);
            jVarC.a(map2, linkedHashSetB);
            jVarC.b(linkedHashMap);
            linkedHashMap.put("delta_data", map2);
            StringBuilder sb = new StringBuilder();
            Iterator it = linkedHashSetB.iterator();
            if (it.hasNext()) {
                while (true) {
                    sb.append((CharSequence) it.next());
                    if (!it.hasNext()) {
                        break;
                    }
                    sb.append((CharSequence) ",");
                }
            }
            linkedHashMap.put("cmn_modules", sb.toString());
        }
        return map2;
    }

    public static void C0(Map map, String str, double d2, double d3) {
        String strConcat = "base_".concat(str);
        double dJ3 = J3(map, "attr_".concat(str), "general_".concat(str), 0.0d);
        double dJ4 = J3(map, strConcat, "attr_".concat(str), -1.0d);
        double dMax = Math.max(Math.max(0.0d, dJ3 - d2), d3);
        if (dJ4 <= dMax) {
            dJ4 = dMax;
        }
        map.put(strConcat, i1(dJ4));
    }

    public static int C1(String str) {
        if ("791773".equals(str)) {
            return 200;
        }
        if ("791460".equals(str)) {
            return 50;
        }
        return "791458".equals(str) ? 10 : 1;
    }

    public static boolean C2(Map map) {
        return c.a.B(map, "mail_type", "", "gift") || c.a.B(map, "email_type", "", "gift");
    }

    public static int C3(Object obj, int i2) {
        return w1.l2(String.valueOf(obj), i2);
    }

    public static int D1(int i2, Map map) {
        int iC3 = C3(map != null ? map.get("type") : null, 0);
        return (iC3 == 1 || iC3 == 3 || iC3 == 4 || iC3 == 5 || iC3 == 6 || iC3 == 7 || iC3 == 8 || iC3 == 9) ? iC3 : s(i2);
    }

    public static boolean D2(String str, Map map) {
        if (!str.isEmpty()) {
            Object obj = map.get("purchased_gift_items");
            if (obj instanceof List) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    if (str.equals(String.valueOf(it.next()))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void E(Map map, Map map2, String str, Context context, String str2) {
        if (str == null || str.isEmpty()) {
            return;
        }
        String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
        Map mapF0 = w1.a1(context).F0(str);
        if (mapF0 == null) {
            z2.g("SGSCQ_SRV", "[FateBox] bind missing map equip=" + str + " pk=" + strValueOf);
            return;
        }
        String strValueOf2 = String.valueOf(mapF0.getOrDefault("box_id", ""));
        if (str2 == null || str2.isEmpty()) {
            str2 = strValueOf2;
        }
        if (strValueOf2.isEmpty() || str2.isEmpty()) {
            return;
        }
        map2.put("id", str2);
        map2.put("item_id", str2);
        map2.put("base_item_id", String.valueOf(mapF0.getOrDefault("base_item_id", "600045")));
        map2.put("resource_id", String.valueOf(mapF0.getOrDefault("resource_id", "600045")));
        map2.put("fate_equip_id", str);
        map2.put("related_equipment_id", str);
        map2.put("equipment_id", str);
        map2.put("box_id", str2);
        map2.put("fate_box_id", strValueOf2);
        map2.put("style_id", String.valueOf(mapF0.getOrDefault("style_id", "7")));
        map2.put("style_desc", String.valueOf(mapF0.getOrDefault("style_desc", "9".concat(str))));
        map2.put("related_id", String.valueOf(mapF0.getOrDefault("related_id", "9".concat(str))));
        p1 p1VarB1 = p5.b1(w1.a1(context), str, str2, String.valueOf(mapF0.get("name")), String.valueOf(mapF0.get("desc")));
        String str3 = p1VarB1.f1264b;
        map2.put("item_title", str3);
        map2.put("item_name", str3);
        map2.put("name", str3);
        map2.put("title", str3);
        String str4 = p1VarB1.f1265c;
        map2.put("item_desc", str4);
        map2.put("desc", str4);
        if (strValueOf.isEmpty()) {
            return;
        }
        map.put("fate_slot_".concat(strValueOf), str);
    }

    public static void E0(List list, Map map) {
        Object obj = map == null ? null : map.get("Item");
        if (!(obj instanceof Map)) {
            map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", list));
            return;
        }
        Map map2 = (Map) obj;
        if (!(map2.get("add") instanceof List)) {
            map2.put("add", list);
        }
        if (!(map2.get("upd") instanceof List)) {
            map2.put("upd", new ArrayList());
        }
        if (map2.get("del") instanceof List) {
            return;
        }
        map2.put("del", new ArrayList());
    }

    public static int E1(String str, Map map) {
        int iC3;
        if (map != null && map.containsKey("item_type") && (iC3 = C3(map.get("item_type"), 0)) != 0) {
            return (iC3 == 20 || iC3 == 19 || iC3 == 18 || iC3 == 15 || iC3 == 36) ? iC3 : W2(str, iC3);
        }
        switch (C3(map != null ? map.get("type") : null, 0)) {
            case 1:
                return 31;
            case 2:
            case 5:
            default:
                return W2(str, 1);
            case 3:
                return 18;
            case 4:
                return 19;
            case 6:
                return 20;
            case 7:
                return 21;
            case 8:
                return 15;
            case 9:
                return 36;
        }
    }

    public static boolean E2(String str) {
        return "600018".equals(str) || "600019".equals(str) || "600020".equals(str) || "600021".equals(str) || "600100".equals(str);
    }

    public static LinkedHashMap F() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("challenge_times", 5);
        linkedHashMap.put("left_times", 5);
        linkedHashMap.put("max_times", 5);
        linkedHashMap.put("countdown", 0);
        linkedHashMap.put("chaosCountDown", 0);
        linkedHashMap.put("skill_piece_list", G());
        linkedHashMap.put("target_list", new ArrayList());
        return linkedHashMap;
    }

    public static List F0(String str, Map map) {
        Map mapZ0;
        Object obj = map.get(str);
        if (obj instanceof Map) {
            mapZ0 = (Map) obj;
        } else {
            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
            map.put(str, mapZ0);
        }
        Object obj2 = mapZ0.get("add");
        return obj2 instanceof List ? (List) obj2 : c.a.o(mapZ0, "add");
    }

    public static String F1(String str) {
        if (!str.matches("2\\d{7}")) {
            return "";
        }
        return "1" + str.substring(1);
    }

    public static boolean F2(String str) {
        return H2(str) || "H1".equals(str) || "H2".equals(str);
    }

    public static String F3(Map map) {
        String[] strArr = {"user_nickname", "nickName", "nickname", "roleName"};
        for (int i2 = 0; i2 < 4; i2++) {
            Object obj = map.get(strArr[i2]);
            if (obj != null) {
                String strTrim = String.valueOf(obj).trim();
                if (!strTrim.isEmpty()) {
                    return strTrim;
                }
            }
        }
        return "玩家";
    }

    public static ArrayList G() {
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMapR = c.a.r("skill_id", "311018", "skill_piece_id", "311018");
        linkedHashMapR.put("num", 0);
        linkedHashMapR.put("piece_num", 0);
        arrayList.add(linkedHashMapR);
        return arrayList;
    }

    public static String G0(String str, Map map, String... strArr) {
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        String strValueOf = String.valueOf(h1(map, strArr2));
        if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
            return strValueOf;
        }
        String strValueOf2 = String.valueOf(h1(map, "equipment_id", "equip_id", "id", "resource_id"));
        Map mapR4 = null;
        if (!strValueOf2.isEmpty() && !"null".equals(strValueOf2)) {
            try {
                mapR4 = w1.a1(null).z0(strValueOf2);
                if (mapR4 == null) {
                    mapR4 = r4("docs/game_data_json/equipments.json", strValueOf2);
                }
            } catch (Exception unused) {
            }
        }
        if (mapR4 == null) {
            return "";
        }
        String strValueOf3 = String.valueOf(mapR4.getOrDefault(str, ""));
        return "null".equals(strValueOf3) ? "" : strValueOf3;
    }

    public static boolean G2(String str) {
        return "L1".equals(str) || "L2".equals(str) || "L3".equals(str);
    }

    public static q4 G3(Map map, Map map2, long j2) {
        String[] strArr = new String[4];
        strArr[0] = map2 == null ? "" : (String) map2.get("mail_id");
        strArr[1] = map2 == null ? "" : (String) map2.get("email_id");
        strArr[2] = map2 == null ? "" : (String) map2.get("id");
        strArr[3] = map2 == null ? "" : (String) map2.get("pk_id");
        String strF1 = f1(strArr);
        Map mapE1 = e1(strF1, map);
        if (mapE1 == null && strF1.isEmpty()) {
            mapE1 = e1("", map);
        }
        if (mapE1 == null) {
            throw new IllegalArgumentException("邮件不存在或已领取");
        }
        if (strF1.isEmpty()) {
            strF1 = f1(String.valueOf(mapE1.getOrDefault("pk_id", "")), String.valueOf(mapE1.getOrDefault("mail_id", "")), String.valueOf(mapE1.getOrDefault("email_id", "")), String.valueOf(mapE1.getOrDefault("id", "")));
        }
        return new q4(1L, strF1.concat(":claim"), "mail_claim", p5.z0("mail_id", strF1, new Object[0]), j2);
    }

    public static String H(Exception exc) {
        boolean z = exc instanceof com.sgscq.vpn.cloud.a0;
        int i2 = z ? ((com.sgscq.vpn.cloud.a0) exc).f269c : 0;
        return p5.s1(p5.z0("ret", 1, "code", 1, "result", Boolean.FALSE, "msg", exc.getMessage() == null ? "跨服聊天暂时不可用" : exc.getMessage(), "error", z ? ((com.sgscq.vpn.cloud.a0) exc).f268b : "cloud_chat_unavailable", "error_code", 1, "retry_after", Integer.valueOf(i2), "chat_msg", new ArrayList(), "message", new ArrayList(), "list", new ArrayList()));
    }

    public static int H0(Map map) {
        return Math.max(0, C3(h1(map, "num", "item_num"), 0));
    }

    public static boolean H2(String str) {
        return "L4".equals(str) || "L5".equals(str) || "L6".equals(str);
    }

    public static void H3(int i2, String str, Map map) {
        if (!str.isEmpty() && i2 > C3(map.get(str), 0)) {
            map.put(str, Integer.valueOf(i2));
        }
    }

    public static String I(String str) {
        return J(str, null);
    }

    public static LinkedHashMap I0(int i2, Map map) {
        return p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "强化消耗配置不存在", "equipment_id", map.get("equipment_id"), "equipment_level", Integer.valueOf(i2));
    }

    public static boolean I2(String str) {
        return "user.login".equals(str) || "user.testLogin".equals(str) || "login".equals(str);
    }

    public static String I3(Map map) {
        return f1(String.valueOf(map.getOrDefault("account_uid", "")), String.valueOf(map.getOrDefault("player_id", "")), String.valueOf(map.getOrDefault("uid", "")), String.valueOf(map.getOrDefault("user_id", "")), "100001");
    }

    public static String J(String str, String str2) {
        String str3 = "[]";
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.startsWith("[")) {
                str3 = strTrim;
            }
        }
        StringBuilder sbL = c.a.l("{\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"error_code\":0,\"chat_msg\":", str3, ",\"message\":", str3, ",\"list\":");
        sbL.append(str3);
        String string = sbL.toString();
        if (str2 == null || str2.trim().isEmpty()) {
            return string + "}";
        }
        return string + ",\"cmn\":" + str2 + "}";
    }

    public static long J0(int i2, Map map, Map map2) {
        if (map2 == null) {
            return (((long) i2) * 50) + 100;
        }
        Object obj = "";
        String strValueOf = String.valueOf(map.getOrDefault("upgrade_coin_type", ""));
        Object obj2 = null;
        if (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) {
            Map mapZ0 = w1.a1(null).z0(c.a.j(map, "id", "", "equipment_id"));
            if (mapZ0 != null) {
                String strValueOf2 = String.valueOf(mapZ0.getOrDefault("upgrade_coin_type", ""));
                if (!"null".equalsIgnoreCase(strValueOf2)) {
                    obj = strValueOf2;
                }
            }
        } else {
            obj = strValueOf;
        }
        Object obj3 = map2.get(obj);
        int iMax = Math.max(0, i2 - 1);
        if (obj3 instanceof Map) {
            obj2 = ((Map) obj3).get(String.valueOf(iMax));
        } else if (obj3 instanceof List) {
            List list = (List) obj3;
            if (iMax < list.size()) {
                obj2 = list.get(iMax);
            }
        }
        if (!(obj2 instanceof Map)) {
            return -1L;
        }
        Object obj4 = ((Map) obj2).get("num");
        try {
            double dDoubleValue = obj4 instanceof Number ? ((Number) obj4).doubleValue() : Double.parseDouble(String.valueOf(obj4));
            if (dDoubleValue > 0.0d) {
                return Math.round(dDoubleValue);
            }
            return -1L;
        } catch (RuntimeException unused) {
            return -1L;
        }
    }

    public static boolean J2(Map map, Map map2) {
        if (map2 == null) {
            return false;
        }
        if (c.a.B(map2, "is_natural", "false", "true") || c.a.B(map2, "is_natural", "0", "1")) {
            return true;
        }
        if (map == null) {
            return false;
        }
        String strValueOf = String.valueOf(map.getOrDefault("general_naturalskill_id", ""));
        return !strValueOf.isEmpty() && c.a.B(map2, "pk_id", "", strValueOf);
    }

    public static double J3(Map map, String str, String str2, double d2) {
        Object obj = map.get(str);
        if (obj == null || String.valueOf(obj).isEmpty()) {
            obj = map.get(str2);
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        try {
            return Double.parseDouble(String.valueOf(obj));
        } catch (Exception unused) {
            return d2;
        }
    }

    public static String K(Map map) {
        Object arrayList = map == null ? new ArrayList() : Collections.singletonList(map);
        Object[] objArr = new Object[16];
        objArr[0] = "code";
        objArr[1] = 0;
        objArr[2] = "result";
        objArr[3] = Boolean.TRUE;
        objArr[4] = "msg";
        objArr[5] = "success";
        objArr[6] = "error_code";
        objArr[7] = 0;
        objArr[8] = "chat";
        if (map == null) {
            map = new LinkedHashMap();
        }
        objArr[9] = map;
        objArr[10] = "chat_msg";
        objArr[11] = arrayList;
        objArr[12] = "message";
        objArr[13] = arrayList;
        objArr[14] = "list";
        objArr[15] = arrayList;
        return p5.s1(p5.z0("ret", 0, objArr));
    }

    public static int K0(Map map, Map map2) {
        int iC3 = C3(map2 == null ? null : map2.get("force_upgrade_level"), 0);
        if (iC3 <= 0) {
            iC3 = C3(map2 == null ? null : map2.get("test_upgrade_level"), 0);
        }
        if (iC3 > 0) {
            return Math.max(1, iC3);
        }
        int iMax = Math.max(C3(map.get("vipLevel"), 0), Math.max(C3(map.get("vip_level"), 0), C3(map.get("user_vip_level"), 0)));
        int i2 = 4;
        if (iMax >= 4) {
            i2 = 6;
        } else if (iMax >= 3) {
            i2 = 5;
        } else if (iMax < 2) {
            i2 = iMax >= 1 ? 3 : 1;
        }
        if (i2 < 2) {
            return 1;
        }
        int iC4 = C3(map2 == null ? null : map2.get("test_critical_roll"), -1);
        Random random = a0;
        if (iC4 < 0) {
            iC4 = random.nextInt(100);
        }
        if (iC4 >= 10) {
            return 1;
        }
        int iC5 = C3(map2 != null ? map2.get("test_critical_gain_roll") : null, -1);
        if (iC5 < 0) {
            iC5 = random.nextInt(i2 - 1);
        }
        return Math.floorMod(iC5, i2 - 1) + 2;
    }

    public static boolean K2(String str, String str2) {
        boolean z;
        int iL2 = w1.l2(str, -1);
        if (iL2 >= 16 && iL2 <= 37 && iL2 != 20) {
            return true;
        }
        String[] strArr = X;
        int i2 = 0;
        while (true) {
            if (i2 >= 16) {
                z = false;
                break;
            }
            if (strArr[i2].equals(str2)) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return true;
        }
        return (str2.startsWith("7917") || str2.startsWith("7927")) && !"791438".equals(str2);
    }

    public static String K3(String str) {
        File file = new File(str);
        if (!file.exists()) {
            File file2 = new File(System.getProperty("user.dir", "."));
            int i2 = 0;
            while (true) {
                if (i2 >= 6 || file2 == null) {
                    file = null;
                    break;
                }
                File file3 = new File(file2, str);
                if (file3.exists()) {
                    file = file3;
                    break;
                }
                file2 = file2.getParentFile();
                i2++;
            }
        }
        if (file == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return sb.toString();
                    }
                    sb.append(line);
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
                return "";
            }
        } catch (IOException unused) {
            return "";
        }
    }

    public static boolean L2(String str) {
        return (str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) ? false : true;
    }

    public static String M0(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                sb.append(cCharAt);
            } else {
                sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            }
        }
        return sb.toString();
    }

    public static boolean M2(Object obj) {
        if (obj == null) {
            return false;
        }
        String strValueOf = String.valueOf(obj);
        return (strValueOf.isEmpty() || "0".equals(strValueOf) || "null".equalsIgnoreCase(strValueOf)) ? false : true;
    }

    public static void M3(Map map) {
        z2.e("SGSCQ_SRV", "[Fighting] player fighting=" + w1.H2(map));
    }

    public static boolean N0(int i2, int i3, int i4) {
        if (i4 <= 0) {
            return false;
        }
        int iMax = Math.max(0, i2);
        return iMax >= i4 || Math.max(1, i3) > i4 - iMax;
    }

    public static boolean N2(String str, boolean z) {
        return z || "version.check".equals(str) || "versionPlus.check".equals(str) || "server.getList".equals(str) || "notify.activate".equals(str) || "account.index".equals(str) || I2(str);
    }

    public static Map N3(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (obj == null) {
            return linkedHashMap;
        }
        if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                linkedHashMap.put(String.valueOf(entry.getKey()), Integer.valueOf(Math.max(1, C3(entry.getValue(), 1))));
            }
            return linkedHashMap;
        }
        String strTrim = String.valueOf(obj).trim();
        if (strTrim.isEmpty()) {
            return linkedHashMap;
        }
        if (strTrim.startsWith("{")) {
            LinkedHashMap linkedHashMapU1 = p5.u1(strTrim);
            if (!linkedHashMapU1.isEmpty()) {
                return N3(linkedHashMapU1);
            }
            Matcher matcher = Pattern.compile("\"([^\"]+)\"\\s*:\\s*\"?([0-9]+)").matcher(strTrim);
            while (matcher.find()) {
                linkedHashMap.put(matcher.group(1), Integer.valueOf(Math.max(1, C3(matcher.group(2), 1))));
            }
            return linkedHashMap;
        }
        if (strTrim.startsWith("[")) {
            for (Object obj2 : p5.t1(strTrim)) {
                if (obj2 instanceof Map) {
                    Map map = (Map) obj2;
                    Object obj3 = map.get("pk_id");
                    if (obj3 == null) {
                        obj3 = map.get("id");
                    }
                    if (obj3 != null) {
                        linkedHashMap.put(String.valueOf(obj3), Integer.valueOf(Math.max(1, C3(map.get("num"), 1))));
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static int O0(String str, String str2) {
        Map mapU1;
        if (str == null || str.isEmpty() || str2.isEmpty() || "null".equals(str2)) {
            return 0;
        }
        try {
            mapU1 = (Map) new a.o().e(str, new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.LocalServer$13
            }.getType());
        } catch (Exception unused) {
            mapU1 = p5.u1(str);
        }
        if (mapU1 == null || mapU1.isEmpty()) {
            return 0;
        }
        Object obj = mapU1.get(str2);
        if (obj instanceof List) {
            return ((List) obj).size();
        }
        if (obj instanceof Map) {
            return ((Map) obj).size();
        }
        return 0;
    }

    public static boolean O2(int i2, int i3) {
        return !(i2 == 2 || i2 == 4 || i2 == 1) || (i3 >= 1 && i3 <= 100);
    }

    public static p4 O3(Map map, String str, String str2, String str3, int i2, int i3) {
        int iG;
        int iMin;
        String str4 = i2 == 2 ? str2 : str3;
        Map mapY0 = Y0(str, map);
        int i4 = 0;
        int iG2 = mapY0 == null ? 0 : c.a.g(mapY0, "num", "0", "item_num", 0);
        int iL2 = 0;
        for (Map map2 : V2(map)) {
            if (c.a.C(map2, "id", "", "item_id", str3)) {
                iL2 += w1.l2(String.valueOf(map2.getOrDefault("item_num", map2.getOrDefault("num", "0"))), 0);
            }
        }
        int iMin2 = Math.min(Math.max(0, i3), Math.min(iG2, iL2));
        ArrayList arrayList = new ArrayList();
        if (iMin2 <= 0) {
            return new p4(str4, arrayList, 0);
        }
        int iQ0 = q0(iMin2, str, map);
        if (iQ0 > 0) {
            arrayList.add(str);
        }
        ArrayList arrayList2 = new ArrayList();
        if (iQ0 > 0) {
            int i5 = iQ0;
            for (Map map3 : V2(map)) {
                if (i5 <= 0) {
                    break;
                }
                if (c.a.C(map3, "id", "", "item_id", str3) && (iMin = Math.min((iG = c.a.g(map3, "num", "0", "item_num", i4)), i5)) > 0) {
                    int i6 = iG - iMin;
                    map3.put("item_num", Integer.valueOf(i6));
                    map3.put("num", Integer.valueOf(i6));
                    arrayList2.add(String.valueOf(map3.getOrDefault("pk_id", map3.getOrDefault("id", ""))));
                    i5 -= iMin;
                    i4 = 0;
                }
            }
        }
        arrayList.addAll(arrayList2);
        return new p4(str4, arrayList, iQ0);
    }

    public static HashMap P(int i2, int i3, String str) {
        HashMap mapP = c.a.p("id", str, "item_id", str);
        mapP.put("num", Integer.valueOf(i2));
        mapP.put("item_num", Integer.valueOf(i2));
        mapP.put("item_type", Integer.valueOf(i3));
        mapP.put("type", Integer.valueOf(s(i3)));
        mapP.put("is_new", Boolean.TRUE);
        return mapP;
    }

    public static double P0(int i2, String str, String str2, String str3) {
        double dQ0 = Q0(str, i2, str3);
        return (dQ0 > 0.0d || str2.isEmpty()) ? dQ0 : Q0(K3(str2), i2, str3);
    }

    public static boolean P2(String str, String str2, Map map) {
        if (str2 == null) {
            str2 = "";
        }
        if ("bfrd.uris".equals(str) || str2.contains("obtain.shtm") || str2.contains("uris") || str2.contains("msgpack") || str2.contains("register.shtm") || str2.contains("register/username.json") || str2.contains("register/quick.json") || str2.contains("existence") || str2.contains("login.shtm") || str2.contains("/agreement/")) {
            return true;
        }
        return str2.contains("index.php") && map.containsKey("account") && !map.containsKey("do");
    }

    public static void P3(String str, String str2, Map map) {
        Object obj = map.get("Item");
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get(str);
            if (obj2 instanceof List) {
                ((List) obj2).removeIf(new r2(str2, 1));
            }
        }
    }

    public static double Q0(String str, int i2, String str2) {
        Map mapU1;
        Object objH1;
        if (str == null || str.isEmpty() || str2.isEmpty() || "null".equals(str2)) {
            return 0.0d;
        }
        try {
            mapU1 = (Map) new a.o().e(str, new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.LocalServer$12
            }.getType());
        } catch (Exception unused) {
            mapU1 = p5.u1(str);
        }
        if (mapU1 == null || mapU1.isEmpty()) {
            return 0.0d;
        }
        Object obj = mapU1.get(str2);
        if (obj instanceof List) {
            List list = (List) obj;
            int iMax = Math.max(0, i2 - 1);
            if (iMax >= list.size() || !(list.get(iMax) instanceof Map)) {
                return 0.0d;
            }
            objH1 = h1((Map) list.get(iMax), "num");
        } else {
            if (!(obj instanceof Map)) {
                return 0.0d;
            }
            Map map = (Map) obj;
            Object obj2 = map.get(String.valueOf(Math.max(0, i2 - 1)));
            if (obj2 == null) {
                obj2 = map.get(String.valueOf(i2));
            }
            if (!(obj2 instanceof Map)) {
                return 0.0d;
            }
            objH1 = h1((Map) obj2, "num");
        }
        return B3(objH1);
    }

    public static boolean Q2(Map map) {
        String strValueOf = String.valueOf(map.getOrDefault("general_pk_id", "0"));
        return ("0".equals(strValueOf) || "null".equals(strValueOf) || strValueOf.isEmpty()) ? false : true;
    }

    public static ArrayList Q3(Map map) {
        ArrayList arrayList = new ArrayList();
        Object obj = map.get("Item");
        if (!(obj instanceof Map)) {
            return arrayList;
        }
        Map map2 = (Map) obj;
        R3(map, map2.get("add"), arrayList);
        R3(map, map2.get("upd"), arrayList);
        R3(map, map2.get("update_list"), arrayList);
        List listO = (List) map2.get("del");
        if (listO == null) {
            listO = c.a.o(map2, "del");
        }
        for (Object obj2 : arrayList) {
            if (!listO.contains(obj2)) {
                listO.add(obj2);
            }
        }
        return arrayList;
    }

    public static boolean R2(String str) {
        if (str == null || str.isEmpty() || "null".equalsIgnoreCase(str)) {
            return false;
        }
        try {
            return ((int) Double.parseDouble(str)) > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void R3(Map map, Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            List<Map> list = (List) obj;
            ArrayList arrayList2 = new ArrayList();
            for (Map map2 : list) {
                if (c.a.g(map2, "num", "0", "item_num", 0) <= 0) {
                    arrayList2.add(map2);
                }
            }
            list.removeAll(arrayList2);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                String strJ = c.a.j((Map) it.next(), "id", "", "pk_id");
                if (!arrayList.contains(strJ)) {
                    arrayList.add(strJ);
                }
                map.remove("fate_slot_".concat(strJ));
            }
        }
    }

    public static HashMap S(int i2, String str, Map map) {
        HashMap map2 = new HashMap();
        String strSubstring = (str != null && str.length() == 7 && str.startsWith("9")) ? str.substring(1) : str;
        map2.put("pk_id", String.valueOf(map.getOrDefault("pk_id", str)));
        map2.put("id", strSubstring);
        map2.put("equipment_id", strSubstring);
        map2.put("equip_id", strSubstring);
        map2.put("item_id", str);
        map2.put("num", Integer.valueOf(i2));
        map2.put("item_num", Integer.valueOf(i2));
        map2.put("item_type", 15);
        map2.put("type", Integer.valueOf(s(15)));
        map2.put("level", 1);
        map2.put("is_new", Boolean.TRUE);
        return map2;
    }

    public static Map S0(String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (String.valueOf(map.getOrDefault("pk_id", "")).equals(str)) {
                return map;
            }
        }
        return null;
    }

    public static boolean S2(String str) {
        return "600027".equals(str) || "600034".equals(str);
    }

    public static HashMap T(int i2, Context context, String str) {
        HashMap map = new HashMap();
        Map mapZ0 = w1.a1(context).z0(str);
        map.put("pk_id", String.valueOf(i2));
        map.put("id", str);
        map.put("equipment_id", str);
        map.put("equip_id", str);
        map.put("item_id", str);
        map.put("num", 1);
        map.put("item_num", 1);
        map.put("item_type", 18);
        map.put("type", Integer.valueOf(s(18)));
        map.put("level", 1);
        map.put("equipment_level", 1);
        map.put("is_new", Boolean.TRUE);
        if (mapZ0 != null) {
            s0("equipment_pos", mapZ0, map);
            s0("equipment_type", mapZ0, map);
            s0("grade", mapZ0, map);
            s0("fighting", mapZ0, map);
        }
        return map;
    }

    public static Map T0(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("Gems", map)) {
            if (c.a.B(map2, "pk_id", "", str) || c.a.B(map2, "gem_id", "", str) || c.a.B(map2, "id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static boolean T2(String str) {
        return "791458".equals(str) || "791460".equals(str) || "791773".equals(str);
    }

    public static LinkedHashMap U(int i2, String str, Map map) {
        return map == null ? new LinkedHashMap() : p5.z0("type", Integer.valueOf(s(36)), "id", str, "num", Integer.valueOf(i2));
    }

    public static Map U0(String str, Map map) {
        if (!str.isEmpty()) {
            Object obj = map.get("General");
            if (!(obj instanceof Map)) {
                return null;
            }
            Object obj2 = ((Map) obj).get("add");
            if (!(obj2 instanceof List)) {
                return null;
            }
            for (Object obj3 : (List) obj2) {
                if (obj3 instanceof Map) {
                    Map map2 = (Map) obj3;
                    if (c.a.B(map2, "pk_id", "", str)) {
                        return map2;
                    }
                }
            }
        }
        return null;
    }

    public static double U2(Map map) {
        if (!"4".equals(String.valueOf(h1(map, "type")))) {
            return 0.0d;
        }
        String strValueOf = String.valueOf(h1(map, "id", "skill_id", "resource_id"));
        int iMax = Math.max(1, C3(h1(map, "level", "skill_level"), 1));
        LinkedHashMap linkedHashMapR = c.a.r("skill_id", strValueOf, "id", strValueOf);
        linkedHashMapR.put("level", Integer.valueOf(iMax));
        return j4(linkedHashMapR);
    }

    public static String U3(w1 w1Var, String str, String str2, Map map) {
        Map mapY0 = Y0(str, map);
        if (mapY0 != null) {
            String strF1 = f1(String.valueOf(mapY0.getOrDefault("fate_box_id", "")), String.valueOf(mapY0.getOrDefault("box_id", "")));
            if (w1Var.t1(strF1)) {
                return strF1;
            }
        }
        if (!A2(w1Var, str2)) {
            return "";
        }
        if (w1Var.t1(str2)) {
            return str2;
        }
        String strM1 = m1(str, map);
        if (!strM1.isEmpty()) {
            Map mapF0 = w1Var.F0(strM1);
            String strValueOf = mapF0 == null ? "" : String.valueOf(mapF0.getOrDefault("box_id", ""));
            if (!strValueOf.isEmpty()) {
                return strValueOf;
            }
        }
        return "";
    }

    public static HashMap V(int i2, int i3, int i4, String str, Map map) {
        return W(i2, i3, i4, str, map);
    }

    public static String V0(String str, Map map) {
        if (str != null && !str.isEmpty()) {
            for (Map map2 : w1.f0("General", map)) {
                if (c.a.B(map2, "pk_id", "", str)) {
                    return String.valueOf(map2.getOrDefault("general_id", ""));
                }
            }
        }
        return "";
    }

    public static ArrayList V2(Map map) {
        Object objF0;
        ArrayList arrayList = new ArrayList();
        if (map == null) {
            return arrayList;
        }
        Object obj = map.get("Item");
        if (!(obj instanceof Map)) {
            if (obj instanceof List) {
                v(obj, arrayList);
            } else {
                objF0 = w1.f0("Item", map);
            }
            return arrayList;
        }
        Map map2 = (Map) obj;
        v(map2.get("add"), arrayList);
        v(map2.get("upd"), arrayList);
        objF0 = map2.get("update_list");
        v(objF0, arrayList);
        return arrayList;
    }

    public static HashMap W(int i2, int i3, int i4, String str, Map map) {
        HashMap map2 = new HashMap();
        map2.put("pk_id", String.valueOf(map.getOrDefault("pk_id", "")));
        map2.put("id", str);
        map2.put("item_id", str);
        map2.put("num", Integer.valueOf(i2));
        map2.put("item_num", Integer.valueOf(i2));
        map2.put("item_type", Integer.valueOf(i3));
        map2.put("type", Integer.valueOf(i4));
        map2.put("level", 1);
        map2.put("effect_time", 0);
        map2.put("is_new", Boolean.TRUE);
        s0("fate_equip_id", map, map2);
        s0("related_equipment_id", map, map2);
        s0("equipment_id", map, map2);
        s0("box_id", map, map2);
        s0("fate_box_id", map, map2);
        s0("item_title", map, map2);
        s0("item_name", map, map2);
        s0("name", map, map2);
        s0("title", map, map2);
        s0("item_desc", map, map2);
        s0("desc", map, map2);
        return map2;
    }

    public static Map W0(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        for (Map map2 : w1.f0("GeneralSoul", map)) {
            if (c.a.B(map2, "general_id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static int W2(String str, int i2) {
        if ("600026".equals(str) || "600002".equals(str)) {
            return 1;
        }
        if ("600027".equals(str) || "600034".equals(str)) {
            return 16;
        }
        if ("600007".equals(str) || "600050".equals(str)) {
            return 5;
        }
        if ("600008".equals(str)) {
            return 6;
        }
        if ("600012".equals(str)) {
            return 19;
        }
        if ("600013".equals(str)) {
            return 6;
        }
        if ("600014".equals(str)) {
            return 10;
        }
        if (str.startsWith("92")) {
            return 15;
        }
        if (str.startsWith("36")) {
            return 19;
        }
        if (w1.a1(null).I0(str) != null) {
            return 36;
        }
        return i2;
    }

    public static HashMap X(Map map, List list, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6) {
        HashMap map2 = new HashMap(map);
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        Iterator it = arrayList6.iterator();
        while (it.hasNext()) {
            String strValueOf = String.valueOf(it.next());
            Map mapX0 = X0(strValueOf, map);
            if (mapX0 != null) {
                e(arrayList8, mapX0);
            } else if (!arrayList7.contains(strValueOf)) {
                arrayList7.add(strValueOf);
            }
        }
        n0(map, list, arrayList8, arrayList9, arrayList10, arrayList12);
        n0(map, arrayList, arrayList8, arrayList9, arrayList10, arrayList12);
        n0(map, arrayList2, arrayList8, arrayList9, arrayList10, arrayList12);
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            w1.b2("general_id", c.a.j((Map) it2.next(), "id", "", "general_id"), arrayList11, map);
        }
        Iterator it3 = arrayList4.iterator();
        while (it3.hasNext()) {
            w1.b2("skill_id", c.a.j((Map) it3.next(), "id", "", "skill_id"), arrayList11, map);
        }
        Iterator it4 = arrayList9.iterator();
        while (it4.hasNext()) {
            w1.b2("equipment_id", c.a.j((Map) it4.next(), "id", "", "equipment_id"), arrayList11, map);
        }
        map2.put("Atlas", p5.z0("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", arrayList7, new Object[]{"upd", arrayList8, "add", new ArrayList()}, map2, "Item"), new Object[]{"upd", arrayList9, "add", new ArrayList()}, map2, "Equipment"), new Object[]{"upd", arrayList10, "add", new ArrayList()}, map2, "EquipmentPiece"), new Object[]{"upd", arrayList3, "add", new ArrayList()}, map2, "General"), new Object[]{"upd", arrayList4, "add", new ArrayList()}, map2, "Skill"), new Object[]{"upd", arrayList5, "add", new ArrayList()}, map2, "GeneralSoul"), "upd", arrayList11, "add", new ArrayList()));
        if (!arrayList12.isEmpty()) {
            map2.put("Gems", p5.z0("del", new ArrayList(), "upd", arrayList12, "add", new ArrayList()));
        }
        z2.e("SGSCQ_SRV", "[ItemUse] delta items=" + arrayList8.size() + " deletedItems=" + arrayList7.size() + " equips=" + arrayList9.size() + " pieces=" + arrayList10.size() + " generals=" + arrayList3.size() + " skills=" + arrayList4.size() + " souls=" + arrayList5.size() + " atlas=" + arrayList11.size() + " gems=" + arrayList12.size());
        return map2;
    }

    public static Map X0(String str, Map map) {
        if (str.isEmpty()) {
            return null;
        }
        for (Map map2 : V2(map)) {
            if (c.a.B(map2, "pk_id", "", str) || c.a.B(map2, "item_id", "", str) || c.a.B(map2, "id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static String Y(ArrayList arrayList, ArrayList arrayList2, String str, String str2, String str3, String str4, String str5, String str6) {
        StringBuilder sb = new StringBuilder(512);
        sb.append("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":");
        sb.append(p5.s1(arrayList));
        sb.append(",\"equip_add_list\":");
        if (arrayList2 == null) {
            arrayList2 = new ArrayList();
        }
        sb.append(p5.s1(arrayList2));
        sb.append(",\"item_info\":");
        sb.append(d4(str));
        sb.append(",\"Item\":");
        sb.append(d4(str));
        sb.append(",\"equipment_info\":");
        sb.append(d4(str2));
        sb.append(",\"Equipment\":");
        sb.append(d4(str2));
        sb.append(",\"equipment_piece_info\":");
        sb.append(d4(str3));
        sb.append(",\"EquipmentPiece\":");
        sb.append(d4(str3));
        sb.append(",\"general_info\":");
        sb.append(d4(str4));
        sb.append(",\"General\":");
        sb.append(d4(str4));
        sb.append(",\"skill_info\":");
        sb.append(d4(str5));
        sb.append(",\"Skill\":");
        sb.append(d4(str5));
        sb.append(",\"cmn\":");
        sb.append(d4(str6));
        sb.append("}");
        return sb.toString();
    }

    public static Map Y0(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        for (Map map2 : V2(map)) {
            if (c.a.B(map2, "pk_id", "", str)) {
                return map2;
            }
        }
        return null;
    }

    public static int Y2(String str, int i2) {
        int iMax = Math.max(1, i2);
        if ("L4".equals(str)) {
            return iMax * 100;
        }
        if ("L5".equals(str)) {
            return iMax * 500;
        }
        if ("L6".equals(str)) {
            return iMax * 1000;
        }
        if ("H1".equals(str)) {
            return iMax * 100;
        }
        return "H2".equals(str) ? iMax * 10 : iMax;
    }

    public static String Y3(String str, Map map) {
        if (str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) {
            return "";
        }
        return !V0(str, map).isEmpty() ? str : a1(str, map);
    }

    public static LinkedHashMap Z(String str) {
        LinkedHashMap linkedHashMapZ0 = p5.z0("error_code", 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "add_list", new ArrayList(), "reward_list", new ArrayList(), "cmn_modules", "Mail");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Mail", p5.z0("del", p5.v0(str), "upd", new ArrayList(), "add", new ArrayList()));
        linkedHashMapZ0.put("delta_data", linkedHashMap);
        return linkedHashMapZ0;
    }

    public static Map Z0(String str, Map map) {
        for (Map map2 : w1.f0("Item", map)) {
            if (str.equals(String.valueOf(h1(map2, "pk_id")))) {
                return map2;
            }
        }
        for (Map map3 : w1.f0("Item", map)) {
            if (str.equals(String.valueOf(h1(map3, "item_id", "id")))) {
                return map3;
            }
        }
        return null;
    }

    public static v2 Z2(String str) {
        if ("40".equals(str)) {
            return new v2(100, 5, 0);
        }
        if ("41".equals(str)) {
            return new v2(300, 5, 0);
        }
        if ("42".equals(str)) {
            return new v2(2500, 20, 15);
        }
        return null;
    }

    public static String Z3(String str, int i2) {
        Map mapC1 = w1.a1(null).c1(str);
        if (mapC1 == null) {
            return str;
        }
        Object obj = mapC1.get("effect_value");
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("add_list");
            if (obj2 instanceof Map) {
                String strValueOf = String.valueOf(((Map) obj2).getOrDefault("id", ""));
                if (!strValueOf.isEmpty()) {
                    return strValueOf;
                }
            }
        }
        if (i2 != 15 || !(obj instanceof List)) {
            return str;
        }
        List list = (List) obj;
        return !list.isEmpty() ? String.valueOf(list.get(0)) : str;
    }

    public static String[] a(LinkedHashMap linkedHashMap, String... strArr) {
        LinkedHashSet linkedHashSetB = b(linkedHashMap);
        for (String str : strArr) {
            if (str != null && !str.trim().isEmpty()) {
                linkedHashSetB.add(str.trim());
            }
        }
        return (String[]) linkedHashSetB.toArray(new String[0]);
    }

    public static HashMap a0(int i2, int i3, String str) {
        HashMap mapP = c.a.p("item_id", str, "id", str);
        mapP.put("num", Integer.valueOf(i2));
        mapP.put("item_num", Integer.valueOf(i2));
        mapP.put("item_type", Integer.valueOf(i3));
        mapP.put("type", Integer.valueOf(s(i3)));
        mapP.put("is_new", Boolean.TRUE);
        return mapP;
    }

    public static String a1(String str, Map map) {
        if (!str.isEmpty()) {
            List<Map> listF0 = w1.f0("General", map);
            for (Map map2 : listF0) {
                String strValueOf = String.valueOf(map2.get("pk_id"));
                String strValueOf2 = String.valueOf(map2.getOrDefault("general_id", ""));
                String strValueOf3 = String.valueOf(map2.getOrDefault("id", ""));
                if (str.equals(strValueOf2) || str.equals(strValueOf3)) {
                    return strValueOf;
                }
            }
            StringBuilder sbB = a.b0.b("[findPkIdByGeneralId] 未找到武将实例 general_id=", str, " addList size=");
            sbB.append(listF0.size());
            z2.g("SGSCQ_SRV", sbB.toString());
        }
        return "";
    }

    public static LinkedHashSet b(LinkedHashMap linkedHashMap) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Object obj = linkedHashMap.get("cmn_modules");
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                String strTrim = String.valueOf(it.next()).trim();
                if (!strTrim.isEmpty()) {
                    linkedHashSet.add(strTrim);
                }
            }
        } else if (obj != null) {
            for (String str : String.valueOf(obj).split(",")) {
                String strTrim2 = str.trim();
                if (!strTrim2.isEmpty()) {
                    linkedHashSet.add(strTrim2);
                }
            }
        }
        return linkedHashSet;
    }

    public static LinkedHashMap b0(int i2, int i3, String str) {
        return p5.z0("id", str, "item_id", str, "num", Integer.valueOf(i2), "item_num", Integer.valueOf(i2), "item_type", Integer.valueOf(i3), "type", Integer.valueOf(s(i3)), "is_new", Boolean.TRUE);
    }

    public static String b1(String str, Map map) {
        if (!str.isEmpty()) {
            Iterator it = w1.f0("General", map).iterator();
            while (it.hasNext()) {
                if (c.a.B((Map) it.next(), "pk_id", "", str)) {
                    return str;
                }
            }
        }
        return "";
    }

    public static String b3(String str) {
        if (str == null) {
            return "";
        }
        if (str.length() <= 131072) {
            return str;
        }
        return str.substring(0, 131072) + "...(truncated, chars=" + str.length() + ")";
    }

    public static HashMap b4(int i2, String str) {
        HashMap map = new HashMap();
        map.put("item_id", str);
        map.put("num", 1);
        map.put("item_type", Integer.valueOf(i2));
        return map;
    }

    public static int c(Context context, String str, Map map) {
        List listF0 = w1.f0("Equipment", map);
        int iE2 = w1.e2("Equipment", map);
        HashMap map2 = new HashMap();
        map2.put("pk_id", String.valueOf(iE2));
        map2.put("equipment_id", str);
        map2.put("equip_id", str);
        map2.put("id", str);
        map2.put("eid", str);
        map2.put("level", 1);
        map2.put("equipment_level", 1);
        map2.put("refine_level", 1);
        map2.put("refine_exp", 0);
        map2.put("general_pk_id", null);
        map2.put("general_id", null);
        map2.put("user_general_id", null);
        map2.put("is_wear", "0");
        map2.put("wear", "0");
        map2.put("bore_list", new ArrayList());
        w1.a1(context).R(str, map2);
        f3(map2);
        map2.put("get_time", Long.valueOf(c7.g()));
        map2.put("is_new", Boolean.TRUE);
        listF0.add(map2);
        map.put("Equipment", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
        w1.b2("equipment_id", str, null, map);
        return iE2;
    }

    public static LinkedHashMap c0(String str, int i2, int i3, int i4) {
        LinkedHashMap linkedHashMapR = c.a.r("id", str, "item_id", str);
        linkedHashMapR.put("num", Integer.valueOf(i2));
        linkedHashMapR.put("item_num", Integer.valueOf(i2));
        linkedHashMapR.put("item_type", Integer.valueOf(i3));
        linkedHashMapR.put("type", Integer.valueOf(i4));
        linkedHashMapR.put("is_new", Boolean.TRUE);
        return linkedHashMapR;
    }

    public static Map c1(String str, Map map) {
        for (Map map2 : w1.f0("GeneralSoul", map)) {
            if (str.equals(String.valueOf(map2.getOrDefault("general_id", map2.get("id"))))) {
                return map2;
            }
        }
        return null;
    }

    public static boolean c3(String str, Map map) {
        return str.isEmpty() || c.a.B(map, "pk_id", "", str) || c.a.B(map, "mail_id", "", str) || c.a.B(map, "email_id", "", str) || c.a.B(map, "id", "", str);
    }

    public static String c4(w1 w1Var, String str) {
        try {
            String strA0 = w1Var.A0(str);
            return (strA0 == null || strA0.isEmpty()) ? str : strA0;
        } catch (RuntimeException unused) {
            return str;
        }
    }

    public static Map d(String str, Map map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        if (str.contains(":")) {
            str = str.split(":")[0];
        }
        w1 w1VarA1 = w1.a1(null);
        if (!w1VarA1.C1(str) && !w1VarA1.s1(str)) {
            w1VarA1.D(map);
            z2.g("SGSCQ_SRV", "[GiftGeneral] skip non-surrenderable general_id=" + str);
            return null;
        }
        for (Map map2 : w1.f0("General", map)) {
            if (c.a.B(map2, "general_id", "", str)) {
                w1.k(18, str, map);
                return map2;
            }
        }
        String strD2 = w1.d2(map);
        HashMap mapY1 = w1VarA1.Y1(str);
        mapY1.put("pk_id", strD2);
        mapY1.put("general_pk_id", strD2);
        mapY1.put("general_status", "1");
        mapY1.put("status", "1");
        mapY1.put("general_naturalskill_id", strD2);
        w1VarA1.t2(strD2, mapY1);
        w1.f0("General", map).add(mapY1);
        HashMap mapZ1 = w1VarA1.Z1(str);
        mapZ1.put("pk_id", strD2);
        mapZ1.put("general_pk_id", strD2);
        w1.f0("Skill", map).add(mapZ1);
        map.put("Skill", p5.z0("del", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0("General", map)}, map, "General"), "upd", new ArrayList(), "add", w1.f0("Skill", map)));
        return mapY1;
    }

    public static HashMap d0(Map map) {
        HashMap map2 = new HashMap(map);
        ArrayList arrayList = new ArrayList(w1.f0("TeamGeneral", map));
        LinkedHashMap linkedHashMapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
        map2.put("Equipment", p5.z0("del", c.a.m("del", c.a.m("del", new ArrayList(), new Object[]{"upd", j0("General", "__team_changed_general_ids", map), "add", new ArrayList()}, map2, "General"), new Object[]{"upd", j0("Skill", "__team_changed_skill_ids", map), "add", new ArrayList()}, map2, "Skill"), "upd", j0("Equipment", "__team_changed_equipment_ids", map), "add", new ArrayList()));
        map2.put("Item", new HashMap(linkedHashMapZ0));
        map2.put("Atlas", new HashMap(linkedHashMapZ0));
        map2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()));
        if (Boolean.TRUE.equals(map.get("__team_changed_buddy_general"))) {
            map2.put("BuddyGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList(w1.f0("BuddyGeneral", map))));
        }
        map.remove("__team_changed_general_ids");
        map.remove("__team_changed_skill_ids");
        map.remove("__team_changed_equipment_ids");
        map.remove("__team_changed_buddy_general");
        z2.e("SGSCQ_SRV", "[Team] delta team=" + new ArrayList(w1.f0("TeamGeneral", map)).size());
        return map2;
    }

    public static Map d1(String str, Map map) {
        for (Map map2 : w1.f0("GeneralSoul", map)) {
            if (c.a.A(map2, "general_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static HashMap d3(Map map, String str, String str2, String str3, Context context) {
        String strV0 = V0(str, map);
        if (strV0.isEmpty()) {
            strV0 = str;
        }
        HashMap linkedHashMap = context == null ? new LinkedHashMap() : w1.a1(context).a2(strV0, w1.l2(str2, 1));
        linkedHashMap.put("pk_id", str);
        linkedHashMap.put("id", strV0);
        linkedHashMap.put("general_id", strV0);
        linkedHashMap.put("general_pk_id", str);
        linkedHashMap.put("team_id", str3);
        linkedHashMap.put("team_position", str2);
        linkedHashMap.put("general_position", str2);
        linkedHashMap.put("position", str2);
        Map mapS0 = S0(str, w1.f0("General", map));
        if (mapS0 != null) {
            r0("general_hp", mapS0, linkedHashMap, "general_hp", "attr_hp");
            r0("general_attack", mapS0, linkedHashMap, "general_attack", "attr_attack");
            r0("general_defense", mapS0, linkedHashMap, "general_defense", "attr_defense");
            r0("general_wisdom", mapS0, linkedHashMap, "general_wisdom", "attr_wisdom");
            r0("general_fighting", mapS0, linkedHashMap, "fighting", "fight_point", "fighting_point");
            r0("fighting", mapS0, linkedHashMap, "general_fighting", "fight_point", "fighting_point");
            r0("fight_point", mapS0, linkedHashMap, "general_fighting", "fighting", "fighting_point");
        }
        return linkedHashMap;
    }

    public static String d4(String str) {
        if (str == null) {
            return "{}";
        }
        String strTrim = str.trim();
        return (strTrim.startsWith("{") || strTrim.startsWith("[")) ? strTrim : p5.s1(strTrim);
    }

    public static void e(ArrayList arrayList, Map map) {
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

    public static boolean e0(Map map) {
        return C3(map.getOrDefault("user_level", map.get("level")), 1) >= 40 || com.sgscq.vpn.cloud.m0.n2(map) >= 8;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a0  */
    public static Map e1(String str, Map map) {
        boolean z;
        Object obj = map.get("email_list");
        if (!(obj instanceof List)) {
            obj = map.get("mail_list");
        }
        if (!(obj instanceof List)) {
            return null;
        }
        for (Object obj2 : (List) obj) {
            if (obj2 instanceof Map) {
                Map map2 = (Map) obj2;
                if (str.isEmpty() || c3(str, map2)) {
                    if (C2(map2)) {
                        Object obj3 = map.get("claimed_gift_ids");
                        if (!(obj3 instanceof List)) {
                            z = false;
                            break;
                        }
                        String strF1 = f1(String.valueOf(map2.getOrDefault("pk_id", "")), String.valueOf(map2.getOrDefault("mail_id", "")), String.valueOf(map2.getOrDefault("email_id", "")), String.valueOf(map2.getOrDefault("id", "")));
                        if (strF1.isEmpty()) {
                            z = false;
                            break;
                        }
                        Iterator it = ((List) obj3).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            if (strF1.equals(String.valueOf(it.next()))) {
                                z = true;
                                break;
                            }
                        }
                        if (z) {
                            return null;
                        }
                    }
                    if (Boolean.TRUE.equals(map2.get("is_accepted")) || c.a.B(map2, "status", "0", "1") || c.a.B(map2, "is_attach_get", "0", "1")) {
                        break;
                    }
                    return map2;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0033  */
    public static void e3(int i2, String str, Map map) {
        Map linkedHashMap;
        Map linkedHashMap2;
        if (str.isEmpty()) {
            return;
        }
        Object obj = map.get("purchased_daily_gift_items");
        if (obj instanceof Map) {
            linkedHashMap = (Map) obj;
        } else {
            linkedHashMap = new LinkedHashMap();
            map.put("purchased_daily_gift_items", linkedHashMap);
        }
        Object obj2 = linkedHashMap.get(str);
        String strB = c7.b();
        if (obj2 instanceof Map) {
            linkedHashMap2 = (Map) obj2;
            if (!c.a.A(linkedHashMap2, "day", strB)) {
                linkedHashMap2 = new LinkedHashMap();
            }
        } else {
            linkedHashMap2 = new LinkedHashMap();
        }
        int iE = c.a.A(linkedHashMap2, "day", strB) ? c.a.e(linkedHashMap2, "count", 0) : 0;
        linkedHashMap2.put("day", strB);
        linkedHashMap2.put("count", Integer.valueOf(Math.max(1, i2) + iE));
        linkedHashMap.put(str, linkedHashMap2);
    }

    public static Map f(int i2, int i3, String str, Map map) {
        return g(map, str, i2, i3, String.valueOf(i3), !"600045".equals(str));
    }

    public static String f1(String... strArr) {
        for (String str : strArr) {
            if (str != null && !str.isEmpty() && !"null".equalsIgnoreCase(str)) {
                return str;
            }
        }
        return "";
    }

    public static void f3(Map map) {
        map.put("general_pk_id", null);
        map.put("general_id", null);
        map.put("user_general_id", null);
        map.put("is_wear", "0");
        map.put("wear", "0");
    }

    public static boolean f4(Map map) {
        String strC0 = com.sgscq.vpn.handler.b1.C0(map.get("tower_rank_reward_settled_day"));
        String strR0 = com.sgscq.vpn.handler.b1.r0(c7.f());
        String strA0 = com.sgscq.vpn.handler.b1.a0(map);
        if (strA0 != null && !strR0.equals(strA0) && com.sgscq.vpn.handler.b1.G(map) && !com.sgscq.vpn.handler.b1.I(map)) {
            int iB0 = com.sgscq.vpn.handler.b1.b0(map.get("tower_point_progress"), 0);
            com.sgscq.vpn.handler.b1.L(iB0, Math.max(iB0, com.sgscq.vpn.handler.b1.b0(map.get("tower_max_point_progress"), 0)), com.sgscq.vpn.handler.b1.b0(map.get("tower_total_integration"), 0), "daily", map);
        }
        com.sgscq.vpn.handler.b1.e0(strR0, map);
        String strC1 = com.sgscq.vpn.handler.b1.C0(map.get("tower_rank_reward_settled_day"));
        return (strC1 == null || strC1.equals(strC0)) ? false : true;
    }

    public static Map g(Map map, String str, int i2, int i3, String str2, boolean z) {
        Map map2;
        int iC3;
        Map map3;
        List listF0 = w1.f0("Item", map);
        E0(listF0, map);
        if (!z) {
            map2 = null;
            break;
        }
        Iterator it = V2(map).iterator();
        do {
            if (!it.hasNext()) {
                map2 = null;
                break;
            }
            map2 = (Map) it.next();
        } while (!str.equals(String.valueOf(h1(map2, "item_id", "id"))));
        if (map2 != null) {
            String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
            iC3 = C3(h1(map2, "item_num", "num"), 0);
            Iterator it2 = listF0.iterator();
            do {
                if (!it2.hasNext()) {
                    map3 = null;
                    break;
                }
                map3 = (Map) it2.next();
            } while (!c.a.B(map3, "pk_id", "", strValueOf));
            if (map3 == null) {
                listF0.add(map2);
            } else {
                if (map3 != map2) {
                    map3.putAll(map2);
                }
                map2 = map3;
            }
            P3("upd", strValueOf, map);
            P3("update_list", strValueOf, map);
        } else {
            map2 = null;
            iC3 = 0;
        }
        int i4 = iC3;
        if (map2 == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            c.a.x("Item", map, linkedHashMap, "pk_id", "id", str);
            com.sgscq.vpn.handler.l.b(linkedHashMap, "item_id", str, 0, "effect_time");
            listF0.add(linkedHashMap);
            map2 = linkedHashMap;
        }
        int iMax = Math.max(1, i2) + i4;
        map2.put("num", Integer.valueOf(iMax));
        map2.put("item_num", Integer.valueOf(iMax));
        map2.put("item_type", Integer.valueOf(i3));
        map2.put("type", str2);
        map2.put("is_new", Boolean.TRUE);
        return map2;
    }

    public static int g1(Map map, String... strArr) {
        for (String str : strArr) {
            int iC3 = C3(map.get(str), 0);
            if (iC3 > 0) {
                return iC3;
            }
        }
        return 0;
    }

    public static void g3(String str, Map map) {
        if (str.isEmpty()) {
            return;
        }
        Object obj = map.get("purchased_gift_items");
        List listO = obj instanceof List ? (List) obj : c.a.o(map, "purchased_gift_items");
        Iterator it = listO.iterator();
        while (it.hasNext()) {
            if (str.equals(String.valueOf(it.next()))) {
                return;
            }
        }
        listO.add(str);
    }

    public static int g4(String str) {
        if ("38".equals(str)) {
            return 2;
        }
        if ("47".equals(str)) {
            return 999;
        }
        if ("48".equals(str)) {
            return 400;
        }
        if ("49".equals(str)) {
            return 200;
        }
        if ("51".equals(str)) {
            return 100;
        }
        if ("52".equals(str)) {
            return 50;
        }
        if ("55".equals(str)) {
            return 999;
        }
        if ("11".equals(str) || "12".equals(str)) {
            return 20;
        }
        return str.isEmpty() ? 0 : 999;
    }

    public static Map h(int i2, String str, Map map) {
        if (map == null || str == null || str.isEmpty() || i2 <= 0) {
            return null;
        }
        List<Map> listF0 = w1.f0("Gems", map);
        for (Map map2 : listF0) {
            if (c.a.C(map2, "id", "", "gem_id", str)) {
                map2.put("total_num", Integer.valueOf(C3(map2.get("total_num"), 0) + i2));
                if (!map2.containsKey("used_num")) {
                    map2.put("used_num", 0);
                }
                return map2;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.x("Gems", map, linkedHashMap, "pk_id", "id", str);
        c.a.z(linkedHashMap, "gem_id", str, i2, "total_num", 0, "used_num");
        linkedHashMap.put("is_new", Boolean.TRUE);
        listF0.add(linkedHashMap);
        return linkedHashMap;
    }

    public static Object h1(Map map, String... strArr) {
        for (String str : strArr) {
            if (map.containsKey(str) && map.get(str) != null) {
                return map.get(str);
            }
        }
        return "";
    }

    public static void h3(String str, String str2, Map map) {
        String str3;
        if (str2 == null || str2.isEmpty() || "0".equals(str2)) {
            return;
        }
        if ("General".equals(str)) {
            str3 = "__team_changed_general_ids";
        } else if ("Skill".equals(str)) {
            str3 = "__team_changed_skill_ids";
        } else if (!"Equipment".equals(str)) {
            return;
        } else {
            str3 = "__team_changed_equipment_ids";
        }
        Object obj = map.get(str3);
        List arrayList = obj instanceof List ? (List) obj : new ArrayList();
        if (!arrayList.contains(str2)) {
            arrayList.add(str2);
        }
        map.put(str3, arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0197  */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 int, still in use, count: 9, list:
      (r0v1 int) from 0x01ff: IF  (r0v1 int) != (1591780889 int)  -> B:151:0x0201 A[HIDDEN] (LINE:512)
      (r0v1 int) from 0x0204: IF  (r0v1 int) != (1591780985 int)  -> B:153:0x0206 A[HIDDEN] (LINE:517)
      (r0v1 int) from 0x0209: IF  (r0v1 int) != (1591782749 int)  -> B:155:0x020b A[HIDDEN] (LINE:522)
      (r0v1 int) from 0x020b: SWITCH (r0v1 int)
     case 1591780795: goto B:258:0x0364
     case 1591780796: goto B:254:0x0358
     case 1591780797: goto B:250:0x034c
     case 1591780798: goto B:246:0x0340
     case 1591780799: goto B:243:0x0337
     case 1591780800: goto B:239:0x032a
     case 1591780801: goto B:235:0x031d
     case 1591780802: goto B:231:0x0310
     case 1591780803: goto B:227:0x0302
     default: goto B:156:0x020e A[RegionRef:SW:155] (LINE:524)
      (r0v1 int) from 0x0211: SWITCH (r0v1 int)
     case 1591780828: goto B:215:0x02d8
     case 1591780829: goto B:211:0x02ca
     default: goto B:158:0x0214 A[RegionRef:SW:157] (LINE:530)
      (r0v1 int) from 0x0214: SWITCH (r0v1 int)
     case 1591780859: goto B:207:0x02bc
     case 1591780860: goto B:203:0x02ae
     case 1591780861: goto B:199:0x02a0
     default: goto B:159:0x0217 A[RegionRef:SW:158] (LINE:533)
      (r0v1 int) from 0x0217: SWITCH (r0v1 int)
     case 1591780893: goto B:195:0x0292
     case 1591780894: goto B:191:0x0284
     default: goto B:160:0x021a A[RegionRef:SW:159] (LINE:536)
      (r0v1 int) from 0x021a: SWITCH (r0v1 int)
     case 1591781017: goto B:187:0x0276
     case 1591781018: goto B:183:0x0268
     case 1591781019: goto B:179:0x025a
     case 1591781020: goto B:175:0x024c
     default: goto B:161:0x021d A[RegionRef:SW:160] (LINE:539)
      (r0v1 int) from 0x021d: SWITCH (r0v1 int)
     case 1591781042: goto B:171:0x023e
     case 1591781043: goto B:167:0x0230
     case 1591781044: goto B:163:0x0222
     default: goto B:352:? A[RegionRef:SW:161] (LINE:542)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String h4(String str, String str2) {
        boolean z;
        byte b2;
        byte b3 = 4;
        if (!str.isEmpty()) {
            switch (str) {
                case "1":
                case "2":
                case "3":
                case "4":
                case "5":
                case "6":
                case "7":
                case "8":
                case "9":
                case "10":
                case "11":
                case "12":
                case "13":
                case "14":
                case "15":
                case "38":
                case "39":
                case "44":
                case "45":
                case "46":
                case "47":
                case "48":
                case "49":
                case "50":
                case "51":
                case "52":
                case "53":
                case "55":
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
        } else {
            z = false;
        }
        if (!z) {
            if (!("L4".equals(str) || "L5".equals(str) || "L6".equals(str) || "H1".equals(str) || "H2".equals(str) || "H3".equals(str) || "H4".equals(str) || "H5".equals(str) || "H6".equals(str) || "H7".equals(str))) {
                if (iHashCode != 1591780889) {
                    if (iHashCode != 1591780985) {
                        if (iHashCode != 1591782749) {
                            switch (iHashCode) {
                                case 1591780795:
                                    b3 = !str2.equals("600001") ? (byte) -1 : (byte) 0;
                                    break;
                                case 1591780796:
                                    b3 = !str2.equals("600002") ? (byte) -1 : (byte) 1;
                                    break;
                                case 1591780797:
                                    b3 = !str2.equals("600003") ? (byte) -1 : (byte) 2;
                                    break;
                                case 1591780798:
                                    b3 = !str2.equals("600004") ? (byte) -1 : (byte) 3;
                                    break;
                                case 1591780799:
                                    if (!str2.equals("600005")) {
                                        b3 = -1;
                                    }
                                    break;
                                case 1591780800:
                                    b3 = !str2.equals("600006") ? (byte) -1 : (byte) 5;
                                    break;
                                case 1591780801:
                                    b3 = !str2.equals("600007") ? (byte) -1 : (byte) 6;
                                    break;
                                case 1591780802:
                                    b3 = !str2.equals("600008") ? (byte) -1 : (byte) 7;
                                    break;
                                case 1591780803:
                                    b3 = !str2.equals("600009") ? (byte) -1 : (byte) 8;
                                    break;
                                default:
                                    switch (str2) {
                                        case "600010":
                                            b3 = 9;
                                            break;
                                        case "600011":
                                            b2 = 10;
                                            b3 = b2;
                                            break;
                                        default:
                                            switch (str2) {
                                                case 1591780828:
                                                    if (!str2.equals("600013")) {
                                                        b3 = -1;
                                                    } else {
                                                        b2 = 11;
                                                        b3 = b2;
                                                    }
                                                    break;
                                                case 1591780829:
                                                    if (!str2.equals("600014")) {
                                                        b3 = -1;
                                                    } else {
                                                        b2 = 12;
                                                        b3 = b2;
                                                    }
                                                    break;
                                                default:
                                                    switch (str2) {
                                                        case 1591780859:
                                                            if (!str2.equals("600023")) {
                                                                b3 = -1;
                                                            } else {
                                                                b2 = 13;
                                                                b3 = b2;
                                                            }
                                                            break;
                                                        case 1591780860:
                                                            if (!str2.equals("600024")) {
                                                                b3 = -1;
                                                            } else {
                                                                b2 = 14;
                                                                b3 = b2;
                                                            }
                                                            break;
                                                        case 1591780861:
                                                            if (!str2.equals("600025")) {
                                                                b3 = -1;
                                                            } else {
                                                                b2 = 15;
                                                                b3 = b2;
                                                            }
                                                            break;
                                                        default:
                                                            switch (str2) {
                                                                case 1591780893:
                                                                    if (!str2.equals("600036")) {
                                                                        b3 = -1;
                                                                    } else {
                                                                        b2 = 17;
                                                                        b3 = b2;
                                                                    }
                                                                    break;
                                                                case 1591780894:
                                                                    if (!str2.equals("600037")) {
                                                                        b3 = -1;
                                                                    } else {
                                                                        b2 = 18;
                                                                        b3 = b2;
                                                                    }
                                                                    break;
                                                                default:
                                                                    switch (str2) {
                                                                        case 1591781017:
                                                                            if (!str2.equals("600076")) {
                                                                                b3 = -1;
                                                                            } else {
                                                                                b2 = 20;
                                                                                b3 = b2;
                                                                            }
                                                                            break;
                                                                        case 1591781018:
                                                                            if (!str2.equals("600077")) {
                                                                                b3 = -1;
                                                                            } else {
                                                                                b2 = 21;
                                                                                b3 = b2;
                                                                            }
                                                                            break;
                                                                        case 1591781019:
                                                                            if (!str2.equals("600078")) {
                                                                                b3 = -1;
                                                                            } else {
                                                                                b2 = 22;
                                                                                b3 = b2;
                                                                            }
                                                                            break;
                                                                        case 1591781020:
                                                                            if (!str2.equals("600079")) {
                                                                                b3 = -1;
                                                                            } else {
                                                                                b2 = 23;
                                                                                b3 = b2;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            switch (str2) {
                                                                                case 1591781042:
                                                                                    if (!str2.equals("600080")) {
                                                                                        b3 = -1;
                                                                                    } else {
                                                                                        b2 = 24;
                                                                                        b3 = b2;
                                                                                    }
                                                                                    break;
                                                                                case 1591781043:
                                                                                    if (!str2.equals("600081")) {
                                                                                        b3 = -1;
                                                                                    } else {
                                                                                        b2 = 25;
                                                                                        b3 = b2;
                                                                                    }
                                                                                    break;
                                                                                case 1591781044:
                                                                                    if (!str2.equals("600082")) {
                                                                                        b3 = -1;
                                                                                    } else {
                                                                                        b2 = 26;
                                                                                        b3 = b2;
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    b3 = -1;
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                    }
                                    break;
                            }
                        } else if (str2.equals("600212")) {
                            b2 = 27;
                            b3 = b2;
                        } else {
                            b3 = -1;
                        }
                    } else if (str2.equals("600065")) {
                        b2 = 19;
                        b3 = b2;
                    } else {
                        b3 = -1;
                    }
                } else if (str2.equals("600032")) {
                    b2 = 16;
                    b3 = b2;
                } else {
                    b3 = -1;
                }
                switch (b3) {
                    case 0:
                        return "5";
                    case 1:
                        return "6";
                    case 2:
                        return "7";
                    case 3:
                        return "8";
                    case 4:
                        return "9";
                    case 5:
                        return "10";
                    case 6:
                        return "11";
                    case 7:
                        return "12";
                    case 8:
                        return "13";
                    case 9:
                        return "14";
                    case 10:
                        return "15";
                    case 11:
                        return "44";
                    case 12:
                        return "50";
                    case 13:
                        return "1";
                    case 14:
                        return "2";
                    case 15:
                        return "3";
                    case 16:
                        return "4";
                    case 17:
                        return "53";
                    case 18:
                        return "38";
                    case 19:
                        return "39";
                    case 20:
                        return "45";
                    case 21:
                        return "46";
                    case 22:
                        return "47";
                    case 23:
                        return "48";
                    case 24:
                        return "49";
                    case 25:
                        return "51";
                    case 26:
                        return "52";
                    case 27:
                        return "55";
                    default:
                        return "";
                }
            }
        }
        return str;
    }

    public static Map i(String str, Map map) {
        List<Map> listF0 = F0("Goddess", map);
        for (Map map2 : listF0) {
            if (str.equals(String.valueOf(map2.getOrDefault("godness_id", map2.get("id"))))) {
                return map2;
            }
        }
        Map mapX0 = w1.a1(null).X0(str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (mapX0 != null) {
            linkedHashMap.putAll(mapX0);
        }
        linkedHashMap.put("pk_id", str);
        linkedHashMap.put("id", str);
        linkedHashMap.put("godness_id", str);
        linkedHashMap.put("show_skin", "0");
        linkedHashMap.put("skin_list", new ArrayList());
        linkedHashMap.put("is_fight", 0);
        listF0.add(linkedHashMap);
        return linkedHashMap;
    }

    public static String i1(double d2) {
        return String.format(Locale.US, "%.1f", Double.valueOf(d2));
    }

    public static boolean i3(String str, Map map) {
        if (str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) {
            return false;
        }
        return c.a.B(map, "general_pk_id", "", str) || c.a.B(map, "pk_id", "", str);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0073  */
    public static String i4(String str, Map map, String... strArr) {
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        String strValueOf = String.valueOf(h1(map, strArr2));
        if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
            return strValueOf;
        }
        String strValueOf2 = String.valueOf(h1(map, "skill_id", "id", "resource_id"));
        Map mapK1 = null;
        if (!strValueOf2.isEmpty() && !"null".equals(strValueOf2)) {
            Map mapR4 = r4("docs/game_data_json/skills.json", strValueOf2);
            if (mapR4 != null && mapR4.containsKey("eated_exp_type") && mapR4.containsKey("upgrade_exp_type")) {
                mapK1 = mapR4;
            } else {
                try {
                    mapK1 = w1.a1(null).k1(strValueOf2);
                    if (mapK1 == null || !mapK1.containsKey("eated_exp_type") || !mapK1.containsKey("upgrade_exp_type")) {
                        mapK1 = mapR4;
                    }
                } catch (Exception unused) {
                }
            }
        }
        if (mapK1 == null) {
            return "";
        }
        String strValueOf3 = String.valueOf(mapK1.getOrDefault(str, ""));
        return "null".equals(strValueOf3) ? "" : strValueOf3;
    }

    public static Map j(Map map, String str, int i2, int i3) {
        return g(map, str, i2, i3, String.valueOf(s(i3)), !"600045".equals(str));
    }

    public static ArrayList j0(String str, String str2, Map map) {
        ArrayList arrayList = new ArrayList();
        Object obj = map.get(str2);
        if (!(obj instanceof List)) {
            return arrayList;
        }
        for (Object obj2 : (List) obj) {
            Map mapS0 = S0(String.valueOf(obj2), w1.f0(str, map));
            if (mapS0 != null && !arrayList.contains(mapS0)) {
                arrayList.add(mapS0);
            }
        }
        return arrayList;
    }

    public static boolean j1(String str, String str2, Map map) {
        if (!L2(str2)) {
            return false;
        }
        for (Map map2 : w1.f0(str, map)) {
            Object obj = map2.get("general_pk_id");
            String strValueOf = obj == null ? "" : String.valueOf(obj);
            if (!L2(strValueOf)) {
                Object obj2 = map2.get("pk_id");
                strValueOf = obj2 != null ? String.valueOf(obj2) : "";
            }
            if (str2.equals(strValueOf)) {
                return true;
            }
        }
        return false;
    }

    public static ArrayList j3(String str, List list) {
        ArrayList arrayList = new ArrayList();
        String strConcat = str.length() == 6 ? "9".concat(str) : "";
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            String[] strArr = {"pk_id", "equipment_id", "id", "item_id", "piece_id"};
            for (int i2 = 0; i2 < 5; i2++) {
                String strValueOf = String.valueOf(map.getOrDefault(strArr[i2], ""));
                if (str.equals(strValueOf) || (!strConcat.isEmpty() && strConcat.equals(strValueOf))) {
                    arrayList.add(map);
                    break;
                }
            }
        }
        arrayList.sort(new n.b(1));
        return arrayList;
    }

    public static double j4(Map map) {
        double dP0 = P0(Math.max(1, C3(h1(map, "level", "skill_level"), 1)), o0.a(null, "eated_exp.json"), "docs/game_data_json/eated_exp.json", i4("eated_exp_type", map, "melt_type"));
        if (dP0 > 0.0d) {
            return dP0;
        }
        return 0.0d;
    }

    public static void k(int i2, String str, String str2, Map map) {
        Map linkedHashMap;
        if (str.isEmpty()) {
            return;
        }
        Object obj = map.get("purchased_fate_box_goods");
        if (obj instanceof Map) {
            linkedHashMap = (Map) obj;
        } else {
            linkedHashMap = new LinkedHashMap();
            map.put("purchased_fate_box_goods", linkedHashMap);
        }
        if (str2 == null || str2.isEmpty()) {
            str2 = p5.Q(str);
        }
        linkedHashMap.put(str2, Integer.valueOf(Math.max(1, i2) + c.a.e(linkedHashMap, str2, 0)));
    }

    public static void k0(String str, Map map) {
        Map map2;
        List<Map> listF0 = w1.f0("General", map);
        Iterator it = listF0.iterator();
        do {
            if (!it.hasNext()) {
                map2 = null;
                break;
            }
            map2 = (Map) it.next();
        } while (!c.a.A(map2, "pk_id", str));
        if (map2 != null) {
            map2.remove("bound_lieutenants");
            String strValueOf = String.valueOf(map2.getOrDefault("major_pk_id", "0"));
            if (!"0".equals(strValueOf) && !strValueOf.isEmpty()) {
                for (Map map3 : listF0) {
                    if (c.a.A(map3, "pk_id", strValueOf)) {
                        if (map3.remove("bound_lieutenants") != null) {
                            h3("General", strValueOf, map);
                        }
                        String strValueOf2 = String.valueOf(map2.getOrDefault("lieutenant_skill_id", ""));
                        String strValueOf3 = String.valueOf(map3.getOrDefault("lieutenant_skill_id", ""));
                        if (strValueOf2.isEmpty() || !strValueOf2.equals(strValueOf3)) {
                            break;
                            break;
                        }
                        map3.put("lieutenant_skill_id", "");
                        map3.put("skill_type_lieutenant", "");
                        h3("General", strValueOf, map);
                        break;
                    }
                }
            }
            map2.put("major_pk_id", "");
            map2.put("position", "0");
            h3("General", str, map);
            String strValueOf4 = String.valueOf(map2.getOrDefault("lieutenant_skill_id", ""));
            if (!strValueOf4.isEmpty() && !"0".equals(strValueOf4)) {
                for (Map map4 : listF0) {
                    if (c.a.B(map4, "major_pk_id", "0", str)) {
                        map4.put("major_pk_id", "");
                        map4.put("position", "0");
                        h3("General", String.valueOf(map4.getOrDefault("pk_id", "")), map);
                    }
                }
                map2.put("lieutenant_skill_id", "");
                map2.put("skill_type_lieutenant", "");
            }
        }
        Map mapS0 = S0(str, w1.f0("General", map));
        if (mapS0 != null) {
            ArrayList arrayList = new ArrayList();
            Object obj = mapS0.get("gSkill");
            if (!(obj instanceof List)) {
                obj = mapS0.get("general_skills");
            }
            if (obj instanceof List) {
                for (Object obj2 : (List) obj) {
                    if (obj2 instanceof Map) {
                        Map map5 = (Map) obj2;
                        if (J2(mapS0, map5)) {
                            arrayList.add(new LinkedHashMap(map5));
                        }
                    }
                }
            }
            mapS0.put("gSkill", arrayList);
            mapS0.put("general_skills", new ArrayList(arrayList));
            h3("General", str, map);
        }
        for (Map map6 : w1.f0("Skill", map)) {
            if (c.a.B(map6, "general_pk_id", "", str) && !J2(mapS0, map6)) {
                map6.put("general_pk_id", 0);
                map6.put("position", "0");
                map6.put("pos", "0");
                map6.put("skill_position", "0");
                h3("Skill", String.valueOf(map6.getOrDefault("pk_id", "")), map);
            }
        }
        Map mapS1 = S0(str, w1.f0("General", map));
        if (mapS1 != null) {
            for (int i2 = 1; i2 <= 4; i2++) {
                mapS1.put("equipment_" + i2, "0");
                mapS1.put("equipment_id_" + i2, "0");
                mapS1.put("equip_id_" + i2, "0");
            }
            mapS1.put("mount_id", "0");
            mapS1.put("horse_id", "0");
            h3("General", str, map);
        }
        for (Map map7 : w1.f0("Equipment", map)) {
            if (str.equals(c.a.k(map7, "user_general_id", "", "general_id", "general_pk_id"))) {
                f3(map7);
                h3("Equipment", String.valueOf(map7.getOrDefault("pk_id", "")), map);
            }
        }
    }

    public static ArrayList k3(List list, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        if (list != null) {
            arrayList2.addAll(list);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : arrayList2) {
            if (obj instanceof Map) {
                linkedHashSet.add(String.valueOf(((Map) obj).get("pk_id")));
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
            if (!strValueOf.isEmpty() && linkedHashSet.add(strValueOf)) {
                arrayList2.add(map);
            }
        }
        return arrayList2;
    }

    public static LinkedHashMap k4(String str) {
        return p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    public static void l(int i2, String str, Map map) {
        Map mapQ;
        Map linkedHashMap;
        if (str.isEmpty()) {
            return;
        }
        Object obj = map.get("purchased_lingzhi_goods");
        String strB = c7.b();
        if (obj instanceof Map) {
            mapQ = (Map) obj;
            if (!c.a.A(mapQ, "day", strB)) {
                mapQ = c.a.q("day", strB);
                mapQ.put("counts", new LinkedHashMap());
                map.put("purchased_lingzhi_goods", mapQ);
            }
        } else {
            mapQ = c.a.q("day", strB);
            mapQ.put("counts", new LinkedHashMap());
            map.put("purchased_lingzhi_goods", mapQ);
        }
        Object obj2 = mapQ.get("counts");
        if (obj2 instanceof Map) {
            linkedHashMap = (Map) obj2;
        } else {
            linkedHashMap = new LinkedHashMap();
            mapQ.put("counts", linkedHashMap);
        }
        linkedHashMap.put(str, Integer.valueOf(Math.max(1, i2) + c.a.e(linkedHashMap, str, 0)));
    }

    public static void l0(String str, Map map) {
        if (str == null || str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) {
            return;
        }
        boolean z = false;
        for (Map map2 : w1.f0("BuddyGeneral", map)) {
            if (c.a.C(map2, "general_pk_id", "", "pk_id", str)) {
                map2.put("pk_id", "");
                if (map2.containsKey("general_pk_id")) {
                    map2.put("general_pk_id", "");
                }
                if (map2.containsKey("user_general_id")) {
                    map2.put("user_general_id", "");
                }
                z = true;
            }
        }
        if (z) {
            map.put("__team_changed_buddy_general", Boolean.TRUE);
        }
    }

    public static String l1(String str, Map map) {
        return m1(str, map);
    }

    public static String l3(String str, int i2) {
        LinkedHashMap linkedHashMap = (str == null || str.trim().isEmpty()) ? new LinkedHashMap() : p5.u1(str);
        Object obj = linkedHashMap.get("push");
        LinkedHashMap linkedHashMap2 = obj instanceof Map ? new LinkedHashMap((Map) obj) : new LinkedHashMap();
        linkedHashMap2.put("gift_email", Integer.valueOf(Math.max(0, i2)));
        linkedHashMap.put("push", linkedHashMap2);
        return p5.s1(linkedHashMap);
    }

    public static HashSet l4(String str, Map map) {
        HashSet hashSet = new HashSet();
        Iterator it = w1.f0(str, map).iterator();
        while (it.hasNext()) {
            hashSet.add(String.valueOf(((Map) it.next()).getOrDefault("pk_id", "")));
        }
        return hashSet;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    public static void m(int i2, String str, Map map) {
        Map mapQ;
        Map linkedHashMap;
        if (str.isEmpty()) {
            return;
        }
        Object obj = map.get("purchased_shop_item_goods");
        String strB = c7.b();
        if (obj instanceof Map) {
            mapQ = (Map) obj;
            if (!c.a.A(mapQ, "day", strB)) {
                mapQ = c.a.q("day", strB);
                mapQ.put("counts", new LinkedHashMap());
                map.put("purchased_shop_item_goods", mapQ);
            }
        } else {
            mapQ = c.a.q("day", strB);
            mapQ.put("counts", new LinkedHashMap());
            map.put("purchased_shop_item_goods", mapQ);
        }
        Object obj2 = mapQ.get("counts");
        if (obj2 instanceof Map) {
            linkedHashMap = (Map) obj2;
        } else {
            linkedHashMap = new LinkedHashMap();
            mapQ.put("counts", linkedHashMap);
        }
        linkedHashMap.put(str, Integer.valueOf(Math.max(1, i2) + c.a.e(linkedHashMap, str, 0)));
    }

    public static void m0(List list, ArrayList arrayList, ArrayList arrayList2) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (w2(map)) {
                arrayList2.add(map);
            } else if (z2(map)) {
                arrayList.add(map);
            }
        }
    }

    public static String m1(String str, Map map) {
        if (str != null && !str.isEmpty()) {
            for (Map map2 : w1.f0("Item", map)) {
                if (c.a.B(map2, "pk_id", "", str)) {
                    Object obj = map2.get("fate_equip_id");
                    if (obj == null) {
                        obj = map2.get("related_equipment_id");
                    }
                    if (obj == null) {
                        obj = map2.get("equipment_id");
                    }
                    if (obj != null && !String.valueOf(obj).isEmpty()) {
                        return String.valueOf(obj);
                    }
                    break;
                    break;
                }
            }
        }
        Object obj2 = map.get("fate_slot_" + str);
        return obj2 != null ? String.valueOf(obj2) : "";
    }

    public static List m3(String str, Map map) {
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            return new ArrayList();
        }
        Object obj2 = ((Map) obj).get("upd");
        return obj2 instanceof List ? (List) obj2 : new ArrayList();
    }

    public static ArrayList m4(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj == null) {
            return arrayList;
        }
        for (String str : String.valueOf(obj).split(";")) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        return arrayList;
    }

    public static void n0(Map map, List list, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map2 = (Map) it.next();
            String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
            if (String.valueOf(36).equals(String.valueOf(map2.getOrDefault("item_type", ""))) || String.valueOf(s(36)).equals(String.valueOf(map2.getOrDefault("type", "")))) {
                t(arrayList4, T0(f1(strValueOf, c.a.k(map2, "id", "", "item_id", "gem_id")), map));
            } else if (w2(map2)) {
                if (!map2.containsKey("piece_id")) {
                    if (strValueOf.isEmpty()) {
                        map2 = null;
                    } else {
                        Iterator it2 = w1.f0("EquipmentPiece", map).iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                Map map3 = (Map) it2.next();
                                if (c.a.B(map3, "pk_id", "", strValueOf) || c.a.B(map3, "equipment_id", "", strValueOf) || c.a.B(map3, "item_id", "", strValueOf) || c.a.B(map3, "id", "", strValueOf)) {
                                    map2 = map3;
                                }
                            } else {
                                map2 = null;
                            }
                        }
                    }
                }
                if (map2 != null) {
                    String strValueOf2 = String.valueOf(map2.getOrDefault("pk_id", ""));
                    Iterator it3 = arrayList3.iterator();
                    do {
                        if (!it3.hasNext()) {
                            arrayList3.add(map2);
                            break;
                        }
                    } while (!c.a.B((Map) it3.next(), "pk_id", "", strValueOf2));
                }
            } else if (z2(map2)) {
                if (!map2.containsKey("equipment_id")) {
                    if (strValueOf.isEmpty()) {
                        map2 = null;
                    } else {
                        Iterator it4 = w1.f0("Equipment", map).iterator();
                        while (true) {
                            if (it4.hasNext()) {
                                Map map4 = (Map) it4.next();
                                if (c.a.B(map4, "pk_id", "", strValueOf) || c.a.B(map4, "equipment_id", "", strValueOf) || c.a.B(map4, "equip_id", "", strValueOf) || c.a.B(map4, "id", "", strValueOf)) {
                                    map2 = map4;
                                }
                            } else {
                                map2 = null;
                            }
                        }
                    }
                }
                if (map2 != null) {
                    String strValueOf3 = String.valueOf(map2.getOrDefault("pk_id", ""));
                    Iterator it5 = arrayList2.iterator();
                    do {
                        if (!it5.hasNext()) {
                            arrayList2.add(map2);
                            break;
                        }
                    } while (!c.a.B((Map) it5.next(), "pk_id", "", strValueOf3));
                }
            } else {
                e(arrayList, X0(strValueOf, map));
            }
        }
    }

    public static int n1(String str, String str2, Map map) {
        Map map2;
        List<Map> list;
        if (str.isEmpty() || (map2 = (Map) map.get("General")) == null || (list = (List) map2.get("add")) == null) {
            return 0;
        }
        for (Map map3 : list) {
            if (c.a.B(map3, "pk_id", "", str)) {
                return w3(0, str2, map3);
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:51:0x0217  */
    /* JADX WARN: Code duplicated, block: B:53:0x021d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0224 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0230  */
    /* JADX WARN: Code duplicated, block: B:62:0x0236 A[LOOP:0: B:49:0x0212->B:62:0x0236, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x0240  */
    /* JADX WARN: Code duplicated, block: B:67:0x0249  */
    /* JADX WARN: Code duplicated, block: B:70:0x0253  */
    /* JADX WARN: Code duplicated, block: B:72:0x025a  */
    /* JADX WARN: Code duplicated, block: B:73:0x025e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0227 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0239 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x023a A[EDGE_INSN: B:80:0x023a->B:64:0x023a BREAK  A[LOOP:0: B:49:0x0212->B:62:0x0236], SYNTHETIC] */
    public static LinkedHashMap n3(Map map) {
        String strO3;
        Object[] objArr;
        int i2;
        long jLongValue;
        long jG;
        Object obj;
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        String strF1 = f1(String.valueOf(linkedHashMap.getOrDefault("pk_id", "")), String.valueOf(linkedHashMap.getOrDefault("mail_id", "")), String.valueOf(linkedHashMap.getOrDefault("email_id", "")), String.valueOf(linkedHashMap.getOrDefault("id", "")));
        if (strF1.isEmpty()) {
            strF1 = "mail_" + Math.abs(linkedHashMap.hashCode());
        }
        linkedHashMap.put("pk_id", strF1);
        linkedHashMap.put("mail_id", strF1);
        linkedHashMap.put("email_id", strF1);
        linkedHashMap.put("id", strF1);
        String strF2 = f1(String.valueOf(linkedHashMap.getOrDefault("email_title", "")), String.valueOf(linkedHashMap.getOrDefault("title", "")), "系统邮件");
        String strF3 = f1(String.valueOf(linkedHashMap.getOrDefault("email_content", "")), String.valueOf(linkedHashMap.getOrDefault("content", "")), "");
        String strF4 = f1(String.valueOf(linkedHashMap.getOrDefault("email_sender", "")), String.valueOf(linkedHashMap.getOrDefault("sender", "")), String.valueOf(linkedHashMap.getOrDefault("from_user", "")), "系统");
        String strF5 = f1(String.valueOf(linkedHashMap.getOrDefault("email_sender_nickname", "")), String.valueOf(linkedHashMap.getOrDefault("sender", "")), String.valueOf(linkedHashMap.getOrDefault("from_user", "")), strF4, "系统");
        linkedHashMap.put("email_title", strF2);
        linkedHashMap.put("title", strF2);
        linkedHashMap.put("email_content", strF3);
        linkedHashMap.put("content", strF3);
        linkedHashMap.put("email_sender", strF4);
        linkedHashMap.put("sender", strF5);
        linkedHashMap.put("from_user", strF4);
        linkedHashMap.put("email_sender_nickname", strF5);
        Object obj2 = linkedHashMap.get("reward_list");
        if (!(obj2 instanceof List)) {
            obj2 = linkedHashMap.get("reward");
        }
        if (!(obj2 instanceof List)) {
            obj2 = linkedHashMap.get("rewards");
        }
        boolean z = obj2 instanceof List;
        if (z) {
            linkedHashMap.put("reward_list", obj2);
            linkedHashMap.put("reward", obj2);
            linkedHashMap.put("rewards", obj2);
            linkedHashMap.put("attach_list", obj2);
            linkedHashMap.put("attachment", obj2);
            linkedHashMap.put("attachments", obj2);
        }
        int iC3 = 0;
        boolean z2 = Boolean.TRUE.equals(linkedHashMap.get("is_accepted")) || "1".equals(String.valueOf(linkedHashMap.getOrDefault("status", "0"))) || "1".equals(String.valueOf(linkedHashMap.getOrDefault("is_attach_get", "0")));
        linkedHashMap.put("is_attach_get", z2 ? "1" : "0");
        Object obj3 = linkedHashMap.get("email_type");
        if (!(z && !((List) obj2).isEmpty()) || z2) {
            if (obj3 != null && !String.valueOf(obj3).isEmpty() && !String.valueOf(obj3).matches("\\d+")) {
                strO3 = o3(String.valueOf(obj3));
                if (!strO3.equals(String.valueOf(obj3))) {
                    linkedHashMap.put("origin_mail_type", String.valueOf(obj3));
                }
            }
            linkedHashMap.put("email_type", strO3);
            linkedHashMap.put("mail_type", strO3);
            if (!linkedHashMap.containsKey("send_time")) {
                linkedHashMap.put("send_time", linkedHashMap.getOrDefault("time", linkedHashMap.getOrDefault("create_time", 0)));
            }
            objArr = new Object[]{linkedHashMap.get("send_time"), linkedHashMap.get("create_time"), linkedHashMap.get("time")};
            i2 = 0;
            while (true) {
                if (i2 < 3) {
                    jLongValue = 0;
                    break;
                }
                obj = objArr[i2];
                if (obj instanceof Number) {
                    jLongValue = ((Number) obj).longValue();
                } else if (obj == null) {
                    jLongValue = 0;
                } else {
                    try {
                        jLongValue = Long.parseLong(String.valueOf(obj));
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
                iC3 = C3(linkedHashMap.get("email_time_offset"), 0);
            } else {
                jG = c7.g() - jLongValue;
                if (jG > 0) {
                    if (jG > 2147483647L) {
                        iC3 = Integer.MAX_VALUE;
                    } else {
                        iC3 = (int) jG;
                    }
                }
            }
            linkedHashMap.put("email_time_offset", Integer.valueOf(iC3));
            return linkedHashMap;
        }
        linkedHashMap.put("origin_mail_type", f1(String.valueOf(linkedHashMap.getOrDefault("origin_mail_type", "")), String.valueOf(linkedHashMap.getOrDefault("email_type", ""))));
        strO3 = "gift";
        linkedHashMap.put("email_type", strO3);
        linkedHashMap.put("mail_type", strO3);
        if (!linkedHashMap.containsKey("send_time")) {
            linkedHashMap.put("send_time", linkedHashMap.getOrDefault("time", linkedHashMap.getOrDefault("create_time", 0)));
        }
        objArr = new Object[]{linkedHashMap.get("send_time"), linkedHashMap.get("create_time"), linkedHashMap.get("time")};
        i2 = 0;
        while (true) {
            if (i2 < 3) {
                jLongValue = 0;
                break;
            }
            obj = objArr[i2];
            if (obj instanceof Number) {
                jLongValue = ((Number) obj).longValue();
            } else if (obj == null) {
                jLongValue = 0;
            } else {
                jLongValue = Long.parseLong(String.valueOf(obj));
            }
            if (jLongValue > 0) {
                break;
                break;
            }
            i2++;
        }
        if (jLongValue <= 0) {
            iC3 = C3(linkedHashMap.get("email_time_offset"), 0);
        } else {
            jG = c7.g() - jLongValue;
            if (jG > 0) {
                if (jG > 2147483647L) {
                    iC3 = Integer.MAX_VALUE;
                } else {
                    iC3 = (int) jG;
                }
            }
        }
        linkedHashMap.put("email_time_offset", Integer.valueOf(iC3));
        return linkedHashMap;
    }

    public static HashMap n4(String str, int i2, int i3, int i4) {
        HashMap map = new HashMap();
        map.put("item_id", str);
        map.put("item_num", Integer.valueOf(i2));
        map.put("item_type", Integer.valueOf(i3));
        map.put("type", Integer.valueOf(i4));
        return map;
    }

    public static void o(ArrayList arrayList, Map map) {
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

    public static int o0() {
        com.sgscq.vpn.config.i iVarB = g2.b();
        return iVarB == null ? (Math.max(0, 29998) * 80) / 100 : new com.sgscq.vpn.config.k(iVarB).a(4, 29998, c7.f());
    }

    public static long o1(String str, Map map) {
        Map map2;
        List<Map> list;
        if (str.isEmpty() || (map2 = (Map) map.get("General")) == null || (list = (List) map2.get("add")) == null) {
            return 0L;
        }
        for (Map map3 : list) {
            if (c.a.B(map3, "pk_id", "", str)) {
                Object obj = map3.get("exp");
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
        }
        return 0L;
    }

    public static String o3(String str) {
        if ("normalUser".equals(str) || "friendApply".equals(str)) {
            return "friend";
        }
        return "normalSystem".equals(str) ? "system" : str;
    }

    public static LinkedHashMap o4() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ret", 0);
        linkedHashMap.put("code", 0);
        linkedHashMap.put("result", Boolean.TRUE);
        linkedHashMap.put("msg", "success");
        linkedHashMap.put("error_code", 0);
        return linkedHashMap;
    }

    public static Map p(String str, Map map) {
        Map mapZ0;
        if (map == null || str == null || str.isEmpty()) {
            return null;
        }
        Object obj = map.get("Skill");
        if (obj instanceof Map) {
            mapZ0 = (Map) obj;
        } else {
            mapZ0 = p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList());
            map.put("Skill", mapZ0);
        }
        Object obj2 = mapZ0.get("add");
        List listO = obj2 instanceof List ? (List) obj2 : c.a.o(mapZ0, "add");
        Iterator it = listO.iterator();
        while (it.hasNext()) {
            if (c.a.C((Map) it.next(), "id", "", "skill_id", str)) {
                w1.b2("skill_id", str, null, map);
            }
        }
        HashMap map2 = new HashMap();
        map2.put("pk_id", String.valueOf(w1.e2("Skill", map)));
        map2.put("general_pk_id", 0);
        map2.put("skill_id", str);
        map2.put("id", str);
        map2.put("skill_code", str);
        map2.put("card_type", "4");
        map2.put("level", "1");
        map2.put("skill_level", "1");
        map2.put("position", "0");
        map2.put("pos", "0");
        map2.put("skill_position", "0");
        map2.put("get_time", String.valueOf(c7.g()));
        map2.put("is_natural", Boolean.FALSE);
        map2.put("exp", "0");
        map2.put("extra_level", "0");
        map2.put("advanced_level", "0");
        try {
            w1.a1(null).S(str, map2);
        } catch (Exception unused) {
            if ("361001".equals(str)) {
                map2.put("eated_exp_type", "shenshucailiao_jinengshengji");
                map2.put("skill_type", "4");
                map2.put("grade", "1");
            }
        }
        listO.add(map2);
        w1.b2("skill_id", str, null, map);
        return map2;
    }

    public static ArrayList p0(int i2, String str, Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map map2 : V2(map)) {
            if (String.valueOf(map2.getOrDefault("item_id", map2.getOrDefault("id", ""))).equals(str)) {
                int iMax = Math.max(0, w1.l2(String.valueOf(map2.getOrDefault("item_num", map2.getOrDefault("num", "0"))), 0) - i2);
                map2.put("item_num", Integer.valueOf(iMax));
                map2.put("num", Integer.valueOf(iMax));
                arrayList.add(String.valueOf(map2.getOrDefault("pk_id", map2.getOrDefault("id", ""))));
                break;
            }
        }
        return arrayList;
    }

    public static void q(ArrayList arrayList, Map map) {
        if (map == null) {
            return;
        }
        String strJ = c.a.j(map, "general_id", "", "pk_id");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (c.a.C((Map) it.next(), "general_id", "", "pk_id", strJ)) {
                return;
            }
        }
        arrayList.add(map);
    }

    public static int q0(int i2, String str, Map map) {
        Map map2;
        if (str == null || str.isEmpty() || i2 <= 0) {
            return 0;
        }
        for (Map map3 : V2(map)) {
            if (c.a.B(map3, "pk_id", "", str)) {
                int iG = c.a.g(map3, "num", "0", "item_num", 0);
                int iMin = Math.min(iG, i2);
                if (iMin <= 0) {
                    return 0;
                }
                String strValueOf = String.valueOf(map3.getOrDefault("pk_id", ""));
                List listF0 = w1.f0("Item", map);
                E0(listF0, map);
                Iterator it = listF0.iterator();
                do {
                    if (!it.hasNext()) {
                        map2 = null;
                        break;
                    }
                    map2 = (Map) it.next();
                } while (!c.a.B(map2, "pk_id", "", strValueOf));
                if (map2 == null) {
                    listF0.add(map3);
                } else {
                    if (map2 != map3) {
                        map2.putAll(map3);
                    }
                    map3 = map2;
                }
                int i3 = iG - iMin;
                c.a.t(i3, map3, "item_num", i3, "num");
                P3("upd", strValueOf, map);
                P3("update_list", strValueOf, map);
                return iMin;
            }
        }
        return 0;
    }

    public static boolean q2(List list) {
        String strTrim;
        if (list == null) {
            return false;
        }
        for (Object obj : list) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                String[] strArr = {"pk_id", "mail_id", "email_id", "id"};
                int i2 = 0;
                while (true) {
                    if (i2 >= 4) {
                        strTrim = "";
                        break;
                    }
                    Object obj2 = map.get(strArr[i2]);
                    if (obj2 != null && !String.valueOf(obj2).trim().isEmpty()) {
                        strTrim = String.valueOf(obj2).trim();
                        break;
                    }
                    i2++;
                }
                if (strTrim.startsWith("recharge_")) {
                    if (!(Boolean.TRUE.equals(map.get("is_accepted")) || c.a.A(map, "status", "1") || c.a.A(map, "is_attach_get", "1"))) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public static void q4(Map map, LinkedHashSet linkedHashSet, Context context) {
        Iterator it = w1.f0("TeamGeneral", map).iterator();
        while (it.hasNext()) {
            String strJ = c.a.j((Map) it.next(), "pk_id", "", "general_pk_id");
            if (!strJ.isEmpty() && !"0".equals(strJ) && !"null".equalsIgnoreCase(strJ)) {
                linkedHashSet.add(strJ);
            }
        }
        w1 w1VarA1 = w1.a1(context);
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (str != null && !str.isEmpty() && !"0".equals(str) && !"null".equalsIgnoreCase(str) && w1VarA1.F2(str, map)) {
                h3("General", str, map);
            }
        }
    }

    public static void r(String str, Map map, HashMap map2) {
        Map linkedHashMap = (Map) map.get(str);
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("del", new ArrayList());
            linkedHashMap.put("add", new ArrayList());
            linkedHashMap.put("upd", new ArrayList());
            map.put(str, linkedHashMap);
        }
        List listO = (List) linkedHashMap.get("add");
        if (listO == null) {
            listO = c.a.o(linkedHashMap, "add");
        }
        listO.add(map2);
    }

    public static void r0(String str, Map map, HashMap map2, String... strArr) {
        for (String str2 : strArr) {
            Object obj = map.get(str2);
            if (obj != null && !String.valueOf(obj).isEmpty() && !"null".equalsIgnoreCase(String.valueOf(obj))) {
                map2.put(str, obj);
                return;
            }
        }
    }

    public static String r1(String str, Map map) {
        if (str != null && !str.isEmpty()) {
            for (Map map2 : V2(map)) {
                if (c.a.B(map2, "pk_id", "", str)) {
                    return c.a.j(map2, "id", "", "item_id");
                }
            }
        }
        return "";
    }

    public static c.f r2(String str) {
        b2 b2VarA = c2.a(str);
        if (b2VarA != null) {
            return new c.f(b2VarA.f200b, 1);
        }
        return null;
    }

    public static Map r4(String str, String str2) {
        List<Map> listT1;
        String strK3 = K3(str);
        if (strK3.isEmpty()) {
            return null;
        }
        try {
            listT1 = (List) new a.o().e(strK3, new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.LocalServer$11
            }.getType());
        } catch (Exception unused) {
            listT1 = p5.t1(strK3);
        }
        if (listT1 == null) {
            return null;
        }
        for (Map map : listT1) {
            if (map != null && str2.equals(String.valueOf(h1(map, "id", "resource_id")))) {
                return map;
            }
        }
        return null;
    }

    public static int s(int i2) {
        if (i2 == 15) {
            return 8;
        }
        if (i2 == 31) {
            return 1;
        }
        if (i2 == 36) {
            return 9;
        }
        if (i2 == 40) {
            return 10;
        }
        if (i2 == 41) {
            return 11;
        }
        switch (i2) {
            case 18:
                return 3;
            case 19:
                return 4;
            case 20:
                return 6;
            case 21:
                return 7;
            default:
                return 5;
        }
    }

    public static void s0(String str, Map map, HashMap map2) {
        if (map.containsKey(str)) {
            map2.put(str, map.get(str));
        }
    }

    public static void s2(String str, Map map) {
        if (str.isEmpty()) {
            return;
        }
        long jC3 = ((long) C3(map.get(str), 0)) + ((long) 1);
        map.put(str, Integer.valueOf(jC3 > 2147483647L ? Integer.MAX_VALUE : (int) jC3));
    }

    public static String[] s4(HashMap map) {
        return map.containsKey("BuddyGeneral") ? new String[]{"General", "Skill", "Equipment", "TeamGeneral", "BuddyGeneral"} : new String[]{"General", "Skill", "Equipment", "TeamGeneral"};
    }

    public static void t(List list, Map map) {
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

    public static int t0(Map map) {
        return Math.max(1, C3(h1(map, "user_level", "level", "player_level"), 1));
    }

    public static boolean t2(String str) {
        if (!("600026".equals(str) || "600002".equals(str))) {
            if (!("600027".equals(str) || "600034".equals(str))) {
                return false;
            }
        }
        return true;
    }

    public static boolean t4(String str, List list) {
        if (str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str)) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (i3(str, (Map) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static String[] u(String str, HashMap map, String... strArr) {
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        if (map.containsKey(str) && !arrayList.contains(str)) {
            arrayList.add(str);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static String u0(byte[] bArr) {
        try {
            Inflater inflater = new Inflater();
            inflater.setInput(bArr);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            byte[] bArr2 = new byte[1024];
            while (!inflater.finished()) {
                byteArrayOutputStream.write(bArr2, 0, inflater.inflate(bArr2));
            }
            inflater.end();
            return byteArrayOutputStream.toString("UTF-8");
        } catch (Exception e2) {
            return "(decompress error: " + e2.getMessage() + ")";
        }
    }

    public static List u1(Map map) {
        Object obj = map.get("email_list");
        if (!(obj instanceof List)) {
            obj = map.get("mail_list");
        }
        if (obj instanceof List) {
            return (List) obj;
        }
        ArrayList arrayList = new ArrayList();
        map.put("email_list", arrayList);
        map.put("mail_list", arrayList);
        return arrayList;
    }

    public static boolean u2(String str, int i2) {
        return (i2 >= 46 && i2 <= 53) || i2 == 56 || i2 == 59 || i2 == 60 || i2 == 66 || i2 == 67 || i2 == 68 || "600239".equals(str) || "600294".equals(str) || "600299".equals(str) || "600304".equals(str) || "600212".equals(str) || "600213".equals(str);
    }

    public static String u4(Map map) {
        if (map == null) {
            return "";
        }
        String strValueOf = String.valueOf(map.getOrDefault("general_pk_id", ""));
        return (strValueOf.isEmpty() || "0".equals(strValueOf) || "null".equalsIgnoreCase(strValueOf)) ? String.valueOf(map.getOrDefault("pk_id", "")) : strValueOf;
    }

    public static void v(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    Map map = (Map) obj2;
                    String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
                    int i2 = 0;
                    while (true) {
                        if (i2 >= arrayList.size()) {
                            arrayList.add(map);
                            break;
                        } else {
                            if (c.a.B((Map) arrayList.get(i2), "pk_id", "", strValueOf)) {
                                arrayList.set(i2, map);
                                break;
                            }
                            i2++;
                        }
                    }
                }
            }
        }
    }

    public static String v0(Map map) {
        Object objH1 = map == null ? null : h1(map, "pk_id", "id");
        return objH1 == null ? "" : String.valueOf(objH1);
    }

    public static int v1(String str, Map map) {
        if (str.isEmpty()) {
            return 0;
        }
        Object obj = map.get("purchased_daily_gift_items");
        if (!(obj instanceof Map)) {
            return 0;
        }
        Object obj2 = ((Map) obj).get(str);
        String strB = c7.b();
        if (!(obj2 instanceof Map)) {
            return strB.equals(String.valueOf(obj2)) ? 1 : 0;
        }
        Map map2 = (Map) obj2;
        if (c.a.A(map2, "day", strB)) {
            return c.a.e(map2, "count", 0);
        }
        return 0;
    }

    public static boolean v2(Map map, Map map2) {
        String strValueOf = String.valueOf(h1(map2, "pk_id"));
        return (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf) || (!y2(strValueOf, w1.f0("General", map)) && !y2(strValueOf, w1.f0("TeamGeneral", map)))) ? false : true;
    }

    public static LinkedHashSet v4(ArrayList arrayList) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String strU4 = u4((Map) it.next());
            if (!strU4.isEmpty() && !"0".equals(strU4) && !"null".equalsIgnoreCase(strU4)) {
                linkedHashSet.add(strU4);
            }
        }
        return linkedHashSet;
    }

    public static void w(Map map, String str, HashSet hashSet, ArrayList arrayList) {
        for (Map map2 : w1.f0(str, map)) {
            if (!hashSet.contains(String.valueOf(map2.getOrDefault("pk_id", "")))) {
                t(arrayList, map2);
            }
        }
    }

    public static int w1(String str, String str2, Map map) {
        if (str.isEmpty()) {
            return 0;
        }
        Object obj = map.get("purchased_fate_box_goods");
        if (!(obj instanceof Map)) {
            return 0;
        }
        if (str2 == null || str2.isEmpty()) {
            str2 = p5.Q(str);
        }
        return c.a.e((Map) obj, str2, 0);
    }

    public static boolean w2(Map map) {
        if (map.containsKey("piece_id")) {
            return true;
        }
        return String.valueOf(15).equals(String.valueOf(map.getOrDefault("item_type", ""))) || String.valueOf(s(15)).equals(String.valueOf(map.getOrDefault("type", "")));
    }

    public static int w3(int i2, String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return i2;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (Exception unused) {
            return i2;
        }
    }

    public static String[] w4(List list) {
        if (list == null) {
            return new String[0];
        }
        String[] strArr = new String[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            strArr[i2] = String.valueOf(list.get(i2));
        }
        return strArr;
    }

    public static String x(String str, String str2) {
        if (str == null || !str.endsWith("}")) {
            return str;
        }
        return str.substring(0, str.length() - 1) + ",\"cmn\":" + ((str2 == null || str2.trim().isEmpty()) ? "{}" : str2.trim()) + "}";
    }

    public static String x0(w1 w1Var, String str, Object obj) {
        String str2 = "";
        String strValueOf = obj == null ? "" : String.valueOf(obj);
        if (strValueOf.isEmpty()) {
            return strValueOf;
        }
        String strY0 = w1Var.Y0(strValueOf);
        if (strY0.isEmpty() || strValueOf.equals(strY0)) {
            if (str != null && !str.isEmpty() && !strValueOf.isEmpty()) {
                try {
                    Map map = (Map) new a.o().e(str, new TypeToken<Map<String, String>>() { // from class: com.sgscq.vpn.LocalServer$9
                    }.getType());
                    String str3 = map == null ? "" : (String) map.get(strValueOf);
                    if (str3 != null) {
                        str2 = str3;
                    }
                } catch (Exception unused) {
                }
            }
            strY0 = str2;
        }
        return strY0.isEmpty() ? strValueOf : strY0;
    }

    public static int x1(String str, String str2, Map map) {
        if (str.isEmpty()) {
            return 0;
        }
        Object obj = map.get("purchased_fate_skill_goods");
        if (!(obj instanceof Map)) {
            return 0;
        }
        if (str2 == null || str2.isEmpty()) {
            str2 = p5.R(str);
        }
        return c.a.e((Map) obj, str2, 0);
    }

    public static boolean x2(String str, Map map) {
        if ("equipment.multiUpgrade".equals(str)) {
            return true;
        }
        if (!"equipment.upgrade".equals(str) || map == null) {
            return false;
        }
        return c.a.A(map, "quick", "1");
    }

    public static long x3(long j2, Map map) {
        Object obj = map.get("user_coin");
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return j2;
        }
        try {
            try {
                return Long.parseLong((String) obj);
            } catch (Exception unused) {
                return (long) Double.parseDouble((String) obj);
            }
        } catch (Exception unused2) {
            return j2;
        }
    }

    public static LinkedHashMap y(Map map) {
        for (Map map2 : V2(map)) {
            String strJ = c.a.j(map2, "id", "", "item_id");
            int iG = c.a.g(map2, "num", "0", "item_num", 0);
            if ("600036".equals(strJ) && iG > 0) {
                int i2 = iG - 1;
                String strJ2 = c.a.j(map2, "id", "", "pk_id");
                map2.put("item_num", Integer.valueOf(i2));
                map2.put("num", Integer.valueOf(i2));
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (i2 == 0) {
                    Object obj = map.get("Item");
                    if (obj instanceof Map) {
                        Map map3 = (Map) obj;
                        String[] strArr = {"add", "upd", "update_list"};
                        for (int i3 = 0; i3 < 3; i3++) {
                            Object obj2 = map3.get(strArr[i3]);
                            if (obj2 instanceof List) {
                                ((List) obj2).removeIf(new r2(strJ2, 0));
                            }
                        }
                        Object obj3 = map3.get("del");
                        List listO = obj3 instanceof List ? (List) obj3 : c.a.o(map3, "del");
                        if (!listO.contains(strJ2)) {
                            listO.add(strJ2);
                        }
                    }
                    arrayList.add(strJ2);
                } else {
                    arrayList2.add(new LinkedHashMap(map2));
                }
                LinkedHashMap linkedHashMapZ0 = p5.z0("Item", p5.z0("del", arrayList, "upd", arrayList2, "add", new ArrayList()), new Object[0]);
                if (map.containsKey("general_skin")) {
                    linkedHashMapZ0.put("general_skin", map.get("general_skin"));
                }
                return linkedHashMapZ0;
            }
        }
        return new LinkedHashMap();
    }

    public static String y0(Random random, Context context) {
        w1 w1VarA1 = w1.a1(context);
        ArrayList arrayList = new ArrayList();
        for (String str : w1VarA1.h0()) {
            Map mapZ0 = w1VarA1.z0(str);
            if (mapZ0 != null && c.a.A(mapZ0, "grade", "1")) {
                try {
                    double d2 = Double.parseDouble(String.valueOf(mapZ0.getOrDefault("effect_value", "0")));
                    if (d2 > 0.0d && d2 <= 150.0d) {
                        arrayList.add(str);
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return !arrayList.isEmpty() ? (String) arrayList.get(random.nextInt(arrayList.size())) : "211002";
    }

    public static int y1(String str, Map map) {
        if (str.isEmpty()) {
            return 0;
        }
        Object obj = map.get("purchased_lingzhi_goods");
        if (!(obj instanceof Map)) {
            return 0;
        }
        Map map2 = (Map) obj;
        if (!c.a.A(map2, "day", c7.b())) {
            return 0;
        }
        Object obj2 = map2.get("counts");
        if (obj2 instanceof Map) {
            return c.a.e((Map) obj2, str, 0);
        }
        return 0;
    }

    public static boolean y2(String str, List list) {
        if (list == null || str.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (map != null) {
                for (int i2 = 1; i2 <= 4; i2++) {
                    if (!str.equals(String.valueOf(map.getOrDefault("equipment_" + i2, "")))) {
                        if (!str.equals(String.valueOf(map.getOrDefault("equipment_id_" + i2, "")))) {
                            if (!str.equals(String.valueOf(map.getOrDefault("equip_id_" + i2, "")))) {
                            }
                        }
                    }
                    return true;
                }
                if (c.a.B(map, "mount_id", "", str) || c.a.B(map, "horse_id", "", str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static ArrayList y3(Map map, String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Object obj = map.get(str);
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                if (!strValueOf.trim().isEmpty()) {
                    for (String str2 : strValueOf.replace("[", "").replace("]", "").replace("\"", "").split(",")) {
                        String strTrim = str2.trim();
                        if (!strTrim.isEmpty() && !arrayList.contains(strTrim)) {
                            arrayList.add(strTrim);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static void z(Map map, ArrayList arrayList, ArrayList arrayList2, Context context) {
        LinkedHashSet linkedHashSetV4 = v4(arrayList);
        LinkedHashSet linkedHashSetV5 = v4(arrayList2);
        LinkedHashSet linkedHashSet = new LinkedHashSet(linkedHashSetV4);
        linkedHashSet.removeAll(linkedHashSetV5);
        LinkedHashSet<String> linkedHashSet2 = new LinkedHashSet(linkedHashSetV5);
        linkedHashSet2.removeAll(linkedHashSetV4);
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        linkedHashSet3.addAll(linkedHashSet);
        linkedHashSet3.addAll(linkedHashSet2);
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            k0((String) it.next(), map);
        }
        for (String str : linkedHashSet2) {
            k0(str, map);
            l0(str, map);
        }
        if (linkedHashSet3.isEmpty()) {
            return;
        }
        q4(map, linkedHashSet3, context);
    }

    public static String z0(Random random, Context context, double d2) {
        w1 w1VarA1 = w1.a1(context);
        int i2 = random.nextDouble() < d2 ? 2 : 3;
        ArrayList arrayList = new ArrayList();
        for (String str : w1VarA1.k0()) {
            Map mapK1 = w1VarA1.k1(str);
            if (mapK1 != null) {
                boolean z = false;
                if (c.a.f(mapK1, "grade", "0", 0) == i2) {
                    if (str != null && !str.isEmpty() && !"300000".equals(str) && !str.startsWith("400") && !c.a.B(mapK1, "skill_code", "", "shenmijineng")) {
                        String strValueOf = String.valueOf(mapK1.getOrDefault("name", ""));
                        if (!"神秘技能".equals(strValueOf) && !"30000001".equals(strValueOf)) {
                            z = true;
                        }
                    }
                    if (z) {
                        arrayList.add(str);
                    }
                }
            }
        }
        Collections.sort(arrayList);
        if (arrayList.isEmpty()) {
            return i2 == 2 ? "302101" : "303101";
        }
        return (String) arrayList.get(random.nextInt(arrayList.size()));
    }

    public static int z1(String str, Map map) {
        if (str.isEmpty()) {
            return 0;
        }
        Object obj = map.get("purchased_shop_item_goods");
        if (!(obj instanceof Map)) {
            return 0;
        }
        Map map2 = (Map) obj;
        if (!c.a.A(map2, "day", c7.b())) {
            return 0;
        }
        Object obj2 = map2.get("counts");
        if (obj2 instanceof Map) {
            return c.a.e((Map) obj2, str, 0);
        }
        return 0;
    }

    public static boolean z2(Map map) {
        if (w2(map)) {
            return false;
        }
        if (map.containsKey("equipment_id")) {
            return true;
        }
        return String.valueOf(18).equals(String.valueOf(map.getOrDefault("item_type", ""))) || String.valueOf(s(18)).equals(String.valueOf(map.getOrDefault("type", "")));
    }

    public static String z3(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return strValueOf.isEmpty() ? str2 : strValueOf;
    }

    public final String A1(Map map) {
        int iIndexOf;
        if (map == null) {
            return T3("100001");
        }
        String str = (String) map.get("uid");
        if (str != null && !str.isEmpty()) {
            return T3(str);
        }
        String str2 = (String) map.get("account_uid");
        if (str2 != null && !str2.isEmpty()) {
            return T3(str2);
        }
        String str3 = (String) map.get("user_id");
        if (str3 != null && !str3.isEmpty()) {
            return T3(str3);
        }
        String str4 = (String) map.get("token");
        if (str4 != null && str4.startsWith("tok_") && (iIndexOf = str4.indexOf(95, 4)) > 4) {
            String strSubstring = str4.substring(4, iIndexOf);
            if (!strSubstring.isEmpty()) {
                return T3(strSubstring);
            }
        }
        return T3("100001");
    }

    public final byte[] A4(String str) {
        try {
            this.J.g(str);
            byte[] bytes = M0(str).getBytes("UTF-8");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bytes.length);
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, new Deflater(1));
            deflaterOutputStream.write(bytes);
            deflaterOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byte[] bytes2 = ("HTTP/1.1 200 OK\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Length: " + byteArray.length + "\r\n\r\n").getBytes("US-ASCII");
            byte[] bArr = new byte[bytes2.length + byteArray.length];
            System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
            System.arraycopy(byteArray, 0, bArr, bytes2.length, byteArray.length);
            return bArr;
        } catch (Exception e2) {
            z2.c("SGSCQ_SRV", "zlib error: " + e2.getMessage());
            return X2("{\"ret\":-1,\"msg\":\"响应压缩失败\"}", 500);
        }
    }

    public final LinkedHashMap B(int i2, String str, Map map) {
        String strR1 = r1(str, map);
        int iT1 = t1(strR1);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (iT1 == 15) {
            int iQ0 = q0(i2, str, map);
            if (iQ0 > 0) {
                arrayList.add(S(iQ0, strR1, com.sgscq.vpn.cloud.m0.c1(iQ0, strR1, map)));
            }
        } else {
            if (iT1 == 19) {
                int iQ1 = q0(i2, str, map);
                if (iQ1 > 0) {
                    for (int i3 = 0; i3 < iQ1; i3++) {
                        t(arrayList2, p(strR1, map));
                    }
                    arrayList.add(a0(iQ1, 19, strR1));
                    arrayList3.add(str);
                }
            } else if ((q0(i2, str, map) > 0 ? 1 : 0) != 0) {
                arrayList3.add(str);
            }
        }
        return p5.z0("add_list", arrayList, "changed_skills", arrayList2, "deleted_item_pk_ids", arrayList3);
    }

    public final void D(String str, String str2, Map map, Map map2) {
        E(map, map2, str, this.f1549b, str2);
    }

    public final void D0(String str, Map map, Map map2) {
        double[] dArrP4 = p4(str, map);
        double[] dArrK0 = w1.a1(this.f1549b).K0(c.a.j(map2, "id", "", "general_id"));
        if (dArrK0 == null || dArrK0.length < 5) {
            dArrK0 = new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
        }
        double[] dArr = dArrK0;
        C0(map2, "hp", dArrP4[0], dArr[0]);
        C0(map2, "attack", dArrP4[1], dArr[1]);
        C0(map2, "defense", dArrP4[2], dArr[2]);
        C0(map2, "wisdom", dArrP4[3], dArr[3]);
        double dJ3 = J3(map2, "fighting", "fight_point", 0.0d);
        double dJ4 = J3(map2, "base_fighting", "base_fighting", 0.0d);
        double[] dArrP5 = p4(str, map);
        double dMax = Math.max(0.0d, dJ3 - Math.floor(((dArrP5[0] * 0.4d) + (dArrP5[1] + dArrP5[2])) + dArrP5[3]));
        double d2 = dArr[4];
        if (dJ4 <= 0.0d) {
            dJ4 = Math.max(dMax, d2);
        }
        map2.put("base_fighting", i1(dJ4));
    }

    public final void D3(Map map) {
        String strA1;
        h5 h5Var;
        Map mapW0;
        if ((map.containsKey("step") || map.containsKey("freshman_step") || map.containsKey("server_step") || map.containsKey("guide_step") || map.containsKey("guide_completed")) && (mapW0 = (h5Var = this.f1553f).w0((strA1 = A1(map)))) != null && com.sgscq.vpn.cloud.m0.Y1(strA1, mapW0, map, this.f1551d)) {
            h5Var.S0(strA1, mapW0);
        }
    }

    public final void E3(String str, Map map, Map map2) {
        com.sgscq.vpn.cloud.m0.Y1(str, map, map2, this.f1551d);
    }

    /* JADX WARN: Code duplicated, block: B:156:0x01e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x015c  */
    /* JADX WARN: Code duplicated, block: B:45:0x0166  */
    /* JADX WARN: Code duplicated, block: B:58:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:61:0x01d7  */
    public final u2 G1(Map map, List list, List list2, List list3, List list4, int i2) {
        int i3;
        HashMap mapP;
        ArrayList arrayList;
        int iL2;
        String str;
        ArrayList arrayList2;
        String str2;
        String strValueOf;
        ArrayList arrayList3;
        Map mapU0;
        ArrayList arrayList4;
        ArrayList arrayList5;
        String strValueOf2;
        Iterator it;
        Map mapU1;
        int iG;
        u2 u2Var = new u2();
        int i4 = 1;
        int iMax = Math.max(1, i2);
        ArrayList arrayList6 = u2Var.f1430f;
        ArrayList arrayList7 = u2Var.f1429e;
        ArrayList arrayList8 = u2Var.f1425a;
        int i5 = 0;
        Context context = this.f1549b;
        if (list3 != null) {
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                String strSubstring = (String) it2.next();
                String str3 = ":";
                if (strSubstring == null || !strSubstring.contains(":")) {
                    iL2 = i5;
                } else {
                    String[] strArrSplit = strSubstring.split(":");
                    String str4 = strArrSplit[i5];
                    iL2 = strArrSplit.length > i4 ? w1.l2(strArrSplit[i4], i5) : i5;
                    strSubstring = str4;
                }
                int i6 = i5;
                int i7 = i6;
                while (i5 < iMax) {
                    String str5 = (strSubstring == null || !strSubstring.contains(str3)) ? strSubstring : strSubstring.split(str3)[i7];
                    w1 w1VarA1 = w1.a1(context);
                    Iterator it3 = it2;
                    String str6 = str3;
                    int i8 = iMax;
                    ArrayList arrayList9 = arrayList8;
                    if (w1VarA1 != null) {
                        boolean zS1 = w1VarA1.s1(str5);
                        if (w1VarA1.C1(str5) || zS1) {
                            i5 = i5;
                            Iterator it4 = w1.f0("General", map).iterator();
                            while (true) {
                                arrayList2 = arrayList6;
                                if (!it4.hasNext()) {
                                    str2 = strSubstring;
                                    String strD2 = w1.d2(map);
                                    HashMap mapY1 = w1VarA1.Y1(str5);
                                    mapY1.put("pk_id", strD2);
                                    mapY1.put("general_pk_id", strD2);
                                    mapY1.put("general_status", "1");
                                    mapY1.put("status", "1");
                                    mapY1.put("general_naturalskill_id", strD2);
                                    w1VarA1.t2(strD2, mapY1);
                                    r("General", map, mapY1);
                                    HashMap mapZ1 = w1VarA1.Z1(str5);
                                    mapZ1.put("pk_id", strD2);
                                    mapZ1.put("general_pk_id", strD2);
                                    r("Skill", map, mapZ1);
                                    w1.b2("general_id", str5, null, map);
                                    w1.b2("skill_id", w1VarA1.T0(str5), null, map);
                                    z2.e("SGSCQ_SRV", "[GeneralReincarnate] 入库成功 pk_id=" + strD2 + " general_id=" + str5);
                                    strValueOf = strD2;
                                    break;
                                }
                                str2 = strSubstring;
                                Map map2 = (Map) it4.next();
                                if (c.a.B(map2, "general_id", "", str5)) {
                                    w1.k(18, str5, map);
                                    z2.e("SGSCQ_SRV", "[GeneralFromSoul] duplicate " + str5 + " -> 18 souls");
                                    strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
                                    break;
                                }
                                arrayList6 = arrayList2;
                                strSubstring = str2;
                            }
                        } else {
                            w1VarA1.D(map);
                            z2.g("SGSCQ_SRV", "[GiftGeneral] skip non-surrenderable general_id=" + str5);
                        }
                        if (strValueOf.isEmpty()) {
                            arrayList4 = arrayList7;
                            arrayList5 = arrayList2;
                            strSubstring = str2;
                            u2Var = u2Var;
                        } else {
                            i6++;
                            if (iL2 > 0 && !strValueOf.isEmpty() && (mapU1 = U0(strValueOf, map)) != null && (iG = c.a.g(mapU1, "level", "1", "general_level", 1)) < iL2) {
                                w1.a1(context).g(iG, iL2, mapU1);
                                mapU1.put("general_level", Integer.valueOf(iL2));
                                mapU1.put("level", Integer.valueOf(iL2));
                                z2.e("SGSCQ_SRV", "[GiftLevel] pk=" + strValueOf + " level " + iG + " -> " + iL2);
                            }
                            u2Var = u2Var;
                            arrayList3 = u2Var.f1428d;
                            mapU0 = U0(strValueOf, map);
                            if (mapU0 != null) {
                                strValueOf2 = String.valueOf(mapU0.getOrDefault("pk_id", ""));
                                it = arrayList3.iterator();
                                do {
                                    if (it.hasNext()) {
                                        arrayList3.add(mapU0);
                                        break;
                                    }
                                } while (!c.a.B((Map) it.next(), "pk_id", "", strValueOf2));
                            }
                            Map mapS0 = S0(strValueOf, w1.f0("Skill", map));
                            arrayList4 = arrayList7;
                            o(arrayList4, mapS0);
                            strSubstring = str2;
                            arrayList5 = arrayList2;
                            q(arrayList5, W0(strSubstring, map));
                        }
                        i5++;
                        i7 = 0;
                        it2 = it3;
                        str3 = str6;
                        iMax = i8;
                        arrayList8 = arrayList9;
                        ArrayList arrayList10 = arrayList5;
                        arrayList7 = arrayList4;
                        arrayList6 = arrayList10;
                    }
                    arrayList2 = arrayList6;
                    str2 = strSubstring;
                    strValueOf = "";
                    break;
                    if (strValueOf.isEmpty()) {
                        arrayList4 = arrayList7;
                        arrayList5 = arrayList2;
                        strSubstring = str2;
                        u2Var = u2Var;
                    } else {
                        i6++;
                        if (iL2 > 0) {
                            w1.a1(context).g(iG, iL2, mapU1);
                            mapU1.put("general_level", Integer.valueOf(iL2));
                            mapU1.put("level", Integer.valueOf(iL2));
                            z2.e("SGSCQ_SRV", "[GiftLevel] pk=" + strValueOf + " level " + iG + " -> " + iL2);
                        }
                        u2Var = u2Var;
                        arrayList3 = u2Var.f1428d;
                        mapU0 = U0(strValueOf, map);
                        if (mapU0 != null) {
                            strValueOf2 = String.valueOf(mapU0.getOrDefault("pk_id", ""));
                            it = arrayList3.iterator();
                            do {
                                if (it.hasNext()) {
                                    arrayList3.add(mapU0);
                                    break;
                                }
                            } while (!c.a.B((Map) it.next(), "pk_id", "", strValueOf2));
                        }
                        Map mapS1 = S0(strValueOf, w1.f0("Skill", map));
                        arrayList4 = arrayList7;
                        o(arrayList4, mapS1);
                        strSubstring = str2;
                        arrayList5 = arrayList2;
                        q(arrayList5, W0(strSubstring, map));
                    }
                    i5++;
                    i7 = 0;
                    it2 = it3;
                    str3 = str6;
                    iMax = i8;
                    arrayList8 = arrayList9;
                    ArrayList arrayList11 = arrayList5;
                    arrayList7 = arrayList4;
                    arrayList6 = arrayList11;
                }
                int i9 = iMax;
                ArrayList arrayList12 = arrayList8;
                Iterator it5 = it2;
                ArrayList arrayList13 = arrayList7;
                ArrayList arrayList14 = arrayList6;
                i4 = 1;
                if (i6 > 0) {
                    if (strSubstring == null) {
                        str = "";
                    } else {
                        int iIndexOf = strSubstring.indexOf(58);
                        if (iIndexOf >= 0) {
                            strSubstring = strSubstring.substring(0, iIndexOf);
                        }
                        str = strSubstring;
                    }
                    arrayList8 = arrayList12;
                    arrayList8.add(a0(i6, 31, str));
                } else {
                    arrayList8 = arrayList12;
                }
                i5 = 0;
                it2 = it5;
                iMax = i9;
                arrayList7 = arrayList13;
                arrayList6 = arrayList14;
            }
        }
        int i10 = iMax;
        ArrayList arrayList15 = arrayList7;
        ArrayList arrayList16 = arrayList6;
        int i11 = 19;
        if (list != null) {
            Iterator it6 = list.iterator();
            while (it6.hasNext()) {
                Map map3 = (Map) it6.next();
                String strValueOf3 = String.valueOf(h1(map3, "item_id", "id"));
                int iL3 = w1.l2(String.valueOf(h1(map3, "item_num", "num")), 0) * i10;
                int iE1 = E1(strValueOf3, map3);
                int iD1 = D1(iE1, map3);
                if (strValueOf3.isEmpty() || iL3 <= 0) {
                    i3 = i4;
                } else {
                    if ("600026".equals(strValueOf3) || "600002".equals(strValueOf3)) {
                        i3 = i4;
                        p5.b(iL3, map);
                        if (iE1 == 0) {
                            iE1 = i3;
                        }
                        mapP = P(iL3, iE1, "600026");
                    } else {
                        if (S2(strValueOf3)) {
                            map.put("user_gold", Integer.valueOf(w3(h0(), "user_gold", map) + iL3));
                            if (iE1 == 0) {
                                iE1 = 16;
                            }
                            mapP = P(iL3, iE1, "600034");
                        } else if (iE1 == 20) {
                            w1.k(iL3, strValueOf3, map);
                            q(arrayList16, W0(strValueOf3, map));
                            mapP = a0(iL3, 20, strValueOf3);
                        } else if (iE1 == 36) {
                            mapP = U(iL3, strValueOf3, h(iL3, strValueOf3, map));
                        } else if (iD1 == s(i11)) {
                            for (int i12 = 0; i12 < iL3; i12++) {
                                o(arrayList15, p(strValueOf3, map));
                            }
                            mapP = a0(iL3, i11, strValueOf3);
                        } else {
                            if (iE1 == 15 || strValueOf3.startsWith("92")) {
                                mapP = S(iL3, strValueOf3, com.sgscq.vpn.cloud.m0.c1(iL3, strValueOf3, map));
                                arrayList8.add(mapP);
                                arrayList = u2Var.f1427c;
                                i3 = i4;
                            } else {
                                Map mapF = f(iL3, iE1 == 0 ? i4 : iE1, strValueOf3, map);
                                if (iE1 == 0) {
                                    iE1 = i4;
                                }
                                mapP = W(iL3, iE1, iD1, strValueOf3, mapF);
                            }
                            arrayList.add(mapP);
                            i11 = 19;
                        }
                        i3 = i4;
                    }
                    arrayList = arrayList8;
                    arrayList.add(mapP);
                    i11 = 19;
                }
                i4 = i3;
            }
        }
        if (list2 != null) {
            Iterator it7 = list2.iterator();
            while (it7.hasNext()) {
                String str7 = (String) it7.next();
                int i13 = i10;
                for (int i14 = 0; i14 < i13; i14++) {
                    HashMap mapT = T(c(context, str7, map), context, str7);
                    arrayList8.add(mapT);
                    u2Var.f1426b.add(mapT);
                }
                i10 = i13;
            }
        }
        int i15 = i10;
        if (list4 != null) {
            Iterator it8 = list4.iterator();
            while (it8.hasNext()) {
                String str8 = (String) it8.next();
                for (int i16 = 0; i16 < i15; i16++) {
                    o(arrayList15, p(str8, map));
                }
                arrayList8.add(a0(i15, 19, str8));
            }
        }
        return u2Var;
    }

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
    public final byte[] H1(int i2, String str, Map map) {
        u2 u2VarG1 = G1(map, new ArrayList(), new ArrayList(), m.f1164a, new ArrayList(), 1);
        ArrayList arrayList = new ArrayList(u2VarG1.f1425a);
        h5 h5Var = this.f1553f;
        h5Var.S0(str, map);
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), w3(i2, "user_gold", map), w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        ArrayList arrayList2 = u2VarG1.f1426b;
        HashMap mapX = X(map, arrayList, arrayList2, u2VarG1.f1427c, u2VarG1.f1428d, u2VarG1.f1429e, u2VarG1.f1430f, new ArrayList());
        String strY = Y(arrayList, arrayList2, h5.z0("Item", mapX), h5.z0("Equipment", mapX), h5.z0("EquipmentPiece", mapX), h5.z0("General", mapX), h5.z0("Skill", mapX), h5Var.j(mapX, jSONObjectT, u("General", mapX, "Skill", "GeneralSoul", "Item")));
        z2.e("SGSCQ_SRV", "[Buy] all-pet gift success uid=" + str + " gold->" + i2);
        return A4(strY);
    }

    public final byte[] I1(Map map) {
        String strA1 = A1(map);
        h5 h5Var = this.f1553f;
        Map mapW0 = h5Var.w0(strA1);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        String upperCase = f1((String) map.get("cdkey_string"), (String) map.get("cdkey"), "").trim().toUpperCase(Locale.US);
        Object obj = mapW0.get("redeemed_cdkeys");
        List listO = obj instanceof List ? (List) obj : c.a.o(mapW0, "redeemed_cdkeys");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.s(0, linkedHashMap, "ret", 0, "code", 0, "error_code");
        if (!"SGSCQ2026".equals(upperCase) || listO.contains(upperCase)) {
            linkedHashMap.put("result", Boolean.FALSE);
            linkedHashMap.put("msg", listO.contains(upperCase) ? "兑换码已使用" : "兑换码无效");
            linkedHashMap.put("add_list", new ArrayList());
        } else {
            mapW0.put("user_gold", Integer.valueOf(C3(mapW0.get("user_gold"), 0) + 50));
            listO.add(upperCase);
            ArrayList arrayList = new ArrayList();
            arrayList.add(c0("600034", 50, 16, s(16)));
            linkedHashMap.put("result", Boolean.TRUE);
            linkedHashMap.put("msg", "success");
            linkedHashMap.put("add_list", arrayList);
            linkedHashMap.put("reward_list", arrayList);
        }
        if (!Boolean.TRUE.equals(linkedHashMap.get("result"))) {
            return A4(p5.s1(linkedHashMap));
        }
        h5Var.S0(strA1, mapW0);
        return A4(x(p5.s1(linkedHashMap), N(strA1, mapW0)));
    }

    public final byte[] J1() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("win", Boolean.TRUE);
        linkedHashMap.put("is_win", 1);
        linkedHashMap.put("coin", 0);
        linkedHashMap.put("skill_piece", new ArrayList());
        LinkedHashMap linkedHashMapO4 = o4();
        linkedHashMapO4.put("fight_result", linkedHashMap);
        linkedHashMapO4.put("chaos_info", F());
        return A4(p5.s1(linkedHashMapO4));
    }

    public final byte[] K1() {
        LinkedHashMap linkedHashMapF = F();
        LinkedHashMap linkedHashMapO4 = o4();
        linkedHashMapO4.put("chaos_info", linkedHashMapF);
        linkedHashMapO4.put("chaosInfo", linkedHashMapF);
        linkedHashMapO4.put("skill_piece_list", G());
        return A4(p5.s1(linkedHashMapO4));
    }

    public final String L(String str, LinkedHashMap linkedHashMap, Map map) {
        Object obj = linkedHashMap.get("delta_data");
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("cmn_modules", ""));
        if (!(obj instanceof Map) || strValueOf.trim().isEmpty()) {
            return N(str, map);
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : strValueOf.split(",")) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty() && !"Player".equals(strTrim)) {
                arrayList.add(strTrim);
            }
        }
        return arrayList.isEmpty() ? N(str, map) : O(str, (Map) obj, map, (String[]) arrayList.toArray(new String[0]));
    }

    public final byte[] L0(String str, int i2) {
        y1 y1Var = new y1();
        y1Var.e("error_code", i2);
        y1Var.e("ret", i2);
        y1Var.e("code", i2);
        y1Var.g("result", false);
        y1Var.f("msg", str);
        return A4(y1Var.b());
    }

    public final byte[] L1() {
        LinkedHashMap linkedHashMapO4 = o4();
        linkedHashMapO4.put("skill_piece_list", G());
        linkedHashMapO4.put("piece_list", G());
        return A4(p5.s1(linkedHashMapO4));
    }

    public final void L3(String str, Map map, Map map2) {
        w1 w1VarA1 = w1.a1(this.f1549b);
        w1VarA1.F2(str, map);
        t1 t1VarZ = w1VarA1.z(str, map);
        if (t1VarZ == null) {
            String.valueOf(map2.getOrDefault("general_fighting", map2.getOrDefault("fighting", "0")));
        } else {
            i1(t1VarZ.f1391m);
        }
    }

    public final String M(String str, HashMap map, String... strArr) {
        return O(str, map, map, strArr);
    }

    public final byte[] M1(Map map) {
        Exception e2;
        String strH;
        com.sgscq.vpn.battle.d dVar;
        boolean z;
        String strA1 = A1(map);
        com.sgscq.vpn.cloud.f0 f0Var = this.M;
        if (f0Var != null && f0Var.b(strA1)) {
            String strF1 = f1((String) map.get("message"), (String) map.get("content"), (String) map.get("msg"));
            Map mapW0 = this.f1553f.w0(strA1);
            if (mapW0 == null) {
                mapW0 = new LinkedHashMap();
            }
            Map map2 = mapW0;
            String strF3 = F3(map2);
            int i2 = w1.l2((String) map.get("channel"), 1) == 2 ? 2 : 1;
            com.sgscq.vpn.cloud.f0 f0Var2 = this.M;
            synchronized (f0Var2.f334e) {
                LinkedHashMap linkedHashMapB = f0Var2.f334e.b(strA1, System.nanoTime() / 1000000, i2, strF1);
                dVar = linkedHashMapB == null ? null : new com.sgscq.vpn.battle.d(linkedHashMapB, true);
            }
            if (dVar != null) {
                strH = K(dVar.f222a);
            } else {
                Iterator it = V2(map2).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    Map map3 = (Map) it.next();
                    String strJ = c.a.j(map3, "id", "", "item_id");
                    int iG = c.a.g(map3, "num", "0", "item_num", 0);
                    if ("600036".equals(strJ) && iG > 0) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    try {
                        com.sgscq.vpn.battle.d dVarC = this.M.c(i2, strA1, strF1, strF3);
                        Map map4 = dVarC.f222a;
                        if (dVarC.f223b) {
                            return A4(K(map4));
                        }
                        LinkedHashMap linkedHashMapY = y(map2);
                        this.f1553f.S0(strA1, map2);
                        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), w3(h0(), "user_gold", map2), w3(g0(), "user_energy", map2), w3(i0(), "user_power", map2), x3(f0(), map2), strA1, map2);
                        this.f1553f.getClass();
                        LinkedHashMap linkedHashMapA0 = h5.A0("Item", linkedHashMapY);
                        return A4(p5.s1(p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0, "chat", map4, "item_info", linkedHashMapA0, "Item", linkedHashMapA0, "cmn", p5.u1(this.f1553f.j(linkedHashMapY, jSONObjectT, "Item")))));
                    } catch (Exception e3) {
                        e2 = e3;
                        c.a.u(e2, new StringBuilder("[CloudChat] send failed: "), "SGSCQ_SRV");
                    }
                } else {
                    strH = p5.s1(p5.z0("ret", 1, "code", 1, "result", Boolean.FALSE, "msg", "道具喇叭不足", "error", "e_8035", "error_code", "e_8035", "retry_after", 0, "chat_msg", new ArrayList(), "message", new ArrayList(), "list", new ArrayList()));
                }
            }
            return A4(strH);
        }
        e2 = new com.sgscq.vpn.cloud.a0(403, 0, "cloud_character_required", "只有云端角色可以使用跨服聊天");
        strH = H(e2);
        return A4(strH);
    }

    public final String N(String str, Map map) {
        int iG = (int) c7.g();
        return this.f1553f.j(map, this.f1553f.t(iG, w3(h0(), "user_gold", map), w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map), new String[0]);
    }

    public final byte[] N1() {
        return s3();
    }

    public final String O(String str, Map map, Map map2, String... strArr) {
        Map map3 = map2 != null ? map2 : map;
        return this.f1553f.j(map, this.f1553f.t((int) c7.g(), w3(h0(), "user_gold", map3), w3(g0(), "user_energy", map3), w3(i0(), "user_power", map3), x3(f0(), map3), str, map3), strArr);
    }

    public final byte[] O1() {
        return s3();
    }

    public final byte[] P1() {
        return s3();
    }

    public final JSONObject Q(SharedPreferences sharedPreferences) throws JSONException {
        LinkedHashMap linkedHashMapL;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = sharedPreferences.getAll().keySet().iterator();
        while (it.hasNext()) {
            String strQ = y5.q(it.next());
            if (!strQ.isEmpty() && (linkedHashMapL = y5.l(this.f1549b, sharedPreferences, strQ)) != null && !linkedHashMapL.isEmpty()) {
                jSONArray.put(strQ);
                jSONObject2.put(strQ, new JSONObject(p5.s1(linkedHashMapL)));
            }
        }
        jSONObject.put("preference_name", "sgscq_player_v5");
        jSONObject.put("player_count", jSONObject2.length());
        jSONObject.put("player_keys", jSONArray);
        jSONObject.put("players", jSONObject2);
        return jSONObject;
    }

    public final byte[] Q1(int i2, int i3, String str, Map map) {
        int iMax = Math.max(1, i2) * 5;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < iMax; i4++) {
            o(arrayList, p("361001", map));
        }
        m(i2, "56", map);
        List listSingletonList = Collections.singletonList(a0(iMax, 19, "361001"));
        h5 h5Var = this.f1553f;
        h5Var.S0(str, map);
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), i3, w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        HashMap mapX = X(map, listSingletonList, new ArrayList(), new ArrayList(), new ArrayList(), arrayList, new ArrayList(), new ArrayList());
        String strJ = h5Var.j(mapX, jSONObjectT, "Skill", "Atlas");
        String str2 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + h5.u0(listSingletonList) + ",\"Skill\":" + h5.z0("Skill", mapX) + ",\"user_info\":" + jSONObjectT.toString() + ",\"cmn\":" + strJ + "}";
        z2.e("SGSCQ_SRV", "[Buy] daily afdian exp book success uid=" + str + " skill=361001 x" + iMax + " gold->" + i3);
        return A4(str2);
    }

    public final byte[] R(String str, Map map, LinkedHashMap linkedHashMap) {
        Map map2 = (Map) linkedHashMap.get("delta_data");
        List list = (List) linkedHashMap.get("add_list");
        ArrayList arrayList = new ArrayList();
        for (String str2 : String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",")) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty() && !"Player".equals(strTrim)) {
                arrayList.add(strTrim);
            }
        }
        String strN = arrayList.isEmpty() ? N(str, map) : O(str, map2, map, (String[]) arrayList.toArray(new String[0]));
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), w3(h0(), "user_gold", map), w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        this.f1553f.getClass();
        String strZ0 = h5.z0("Item", map2);
        String strZ1 = h5.z0("Mail", map2);
        LinkedHashMap linkedHashMapU1 = p5.u1(strZ0);
        LinkedHashMap linkedHashMapU2 = p5.u1(strZ1);
        Object obj = linkedHashMap.get("remaining_mails_internal");
        Object obj2 = map.get("email_list");
        if (!(obj2 instanceof List)) {
            obj2 = map.get("mail_list");
        }
        Map map3 = (Map) com.sgscq.vpn.handler.d1.p(obj instanceof List ? (List) obj : obj2 instanceof List ? (List) obj2 : new ArrayList()).get("push_info");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("error_code", 0);
        linkedHashMap2.put("ret", 0);
        linkedHashMap2.put("code", 0);
        linkedHashMap2.put("result", Boolean.TRUE);
        linkedHashMap2.put("msg", "success");
        linkedHashMap2.put("add_list", list);
        linkedHashMap2.put("reward_list", list);
        linkedHashMap2.put("push_info", map3);
        linkedHashMap2.put("item_info", linkedHashMapU1);
        linkedHashMap2.put("Item", linkedHashMapU1);
        linkedHashMap2.put("mail_info", linkedHashMapU2);
        linkedHashMap2.put("Mail", linkedHashMapU2);
        linkedHashMap2.put("user_info", p5.u1(jSONObjectT.toString()));
        LinkedHashMap linkedHashMapU3 = p5.u1(strN);
        linkedHashMapU3.put("push", map3);
        linkedHashMap2.put("cmn", linkedHashMapU3);
        z2.e("SGSCQ_SRV", "[MailAccept] uid=" + str + " rewards=" + list.size());
        return A4(p5.s1(linkedHashMap2));
    }

    public final byte[] R0(String str, String str2) {
        y1 y1Var = new y1();
        y1Var.e("error_code", -1);
        y1Var.e("ret", -1);
        y1Var.e("code", -1);
        y1Var.g("result", false);
        y1Var.f("msg", str);
        y1Var.i("cmn", str2);
        return A4(y1Var.b());
    }

    public final byte[] R1(int i2, int i3, String str, Map map) {
        Map linkedHashMap;
        int iMax = Math.max(1, i2) * 5;
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < iMax; i4++) {
            o(arrayList, p("361001", map));
        }
        Object obj = map.get("purchased_daily_vip15_exp_book_gift");
        if (obj instanceof Map) {
            linkedHashMap = (Map) obj;
        } else {
            linkedHashMap = new LinkedHashMap();
            map.put("purchased_daily_vip15_exp_book_gift", linkedHashMap);
        }
        String strB = c7.b();
        int iE = c.a.A(linkedHashMap, "day", strB) ? c.a.e(linkedHashMap, "count", 0) : 0;
        linkedHashMap.put("day", strB);
        linkedHashMap.put("count", Integer.valueOf(Math.max(1, i2) + iE));
        List listSingletonList = Collections.singletonList(a0(iMax, 19, "361001"));
        h5 h5Var = this.f1553f;
        h5Var.S0(str, map);
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), i3, w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        HashMap mapX = X(map, listSingletonList, new ArrayList(), new ArrayList(), new ArrayList(), arrayList, new ArrayList(), new ArrayList());
        String strJ = h5Var.j(mapX, jSONObjectT, "Skill", "Atlas");
        String str2 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + h5.u0(listSingletonList) + ",\"Skill\":" + h5.z0("Skill", mapX) + ",\"user_info\":" + jSONObjectT.toString() + ",\"cmn\":" + strJ + "}";
        z2.e("SGSCQ_SRV", "[Buy] daily vip15 exp book success uid=" + str + " skill=361001 x" + iMax + " gold->" + i3);
        return A4(str2);
    }

    public final byte[] S1() {
        return s3();
    }

    public final void S3(Map map) {
        if (c7.f254i) {
            return;
        }
        String strA1 = A1(map);
        if (strA1.isEmpty()) {
            return;
        }
        String strB = c7.b();
        a7 a7Var = this.Q;
        com.sgscq.vpn.cloud.h0 h0Var = new com.sgscq.vpn.cloud.h0(this, strA1, strB);
        a7Var.getClass();
        if (strA1.trim().isEmpty()) {
            return;
        }
        if ((strB == null || strB.trim().isEmpty()) || strB.equals(((Map) a7Var.f190a).get(strA1))) {
            return;
        }
        synchronized (((Map) a7Var.f191b).computeIfAbsent(strA1, new n.a(14))) {
            if (!strB.equals(((Map) a7Var.f190a).get(strA1)) && h0Var.b()) {
                ((Map) a7Var.f190a).put(strA1, strB);
            }
        }
    }

    public final byte[] T1() {
        return s3();
    }

    public final String T3(String str) {
        Context context = this.f1549b;
        return context == null ? str : new m4(context).v();
    }

    public final byte[] U1(Map map) throws Throwable {
        char c2;
        Map map2;
        Object obj;
        LinkedHashMap linkedHashMapZ0;
        t tVar;
        byte[] bArr;
        String strA1 = A1(map);
        String strF1 = f1((String) map.get("mail_id"), (String) map.get("email_id"), (String) map.get("id"), (String) map.get("pk_id"));
        d3 d3Var = this.R;
        d3Var.getClass();
        Object objComputeIfAbsent = ((Map) d3Var.f630c).computeIfAbsent(strA1 == null ? "" : strA1, new n.a(9));
        synchronized (objComputeIfAbsent) {
            try {
                try {
                    long jF = c7.f();
                    if (!strF1.isEmpty()) {
                        d3 d3Var2 = this.R;
                        synchronized (d3Var2) {
                            ((LinkedHashMap) d3Var2.f632e).entrySet().removeIf(new a3(jF));
                            b3 b3Var = (b3) ((LinkedHashMap) d3Var2.f632e).get(String.valueOf(strA1) + (char) 0 + strF1);
                            bArr = b3Var == null ? null : (byte[]) b3Var.f202a.clone();
                        }
                        if (bArr != null) {
                            return bArr;
                        }
                    }
                    Map mapW0 = this.f1553f.w0(strA1);
                    if (mapW0 == null) {
                        return L0("玩家数据不存在", -1);
                    }
                    try {
                        q4 q4VarG3 = G3(mapW0, map, jF);
                        h5 h5Var = this.f1553f;
                        String str = q4VarG3.f1320b;
                        Map map3 = q4VarG3.f1322d;
                        obj = objComputeIfAbsent;
                        try {
                            long j2 = q4VarG3.f1323e;
                            c2 = 0;
                            map2 = mapW0;
                            try {
                                linkedHashMapZ0 = h5Var.P(strA1, mapW0, str, "mail_claim", map3, j2);
                            } catch (IllegalArgumentException unused) {
                                Integer numValueOf = Integer.valueOf((int) r7);
                                Object[] objArr = new Object[12];
                                objArr[c2] = "ret";
                                objArr[1] = Integer.valueOf((int) r7);
                                objArr[2] = "code";
                                objArr[3] = -1;
                                objArr[4] = "result";
                                objArr[5] = Boolean.FALSE;
                                objArr[6] = "msg";
                                objArr[7] = "邮件不存在或已领取";
                                objArr[8] = "add_list";
                                objArr[9] = new ArrayList();
                                objArr[10] = "reward_list";
                                objArr[11] = new ArrayList();
                                linkedHashMapZ0 = p5.z0("error_code", numValueOf, objArr);
                            }
                        } catch (IllegalArgumentException unused2) {
                            c2 = 0;
                            map2 = mapW0;
                        }
                    } catch (IllegalArgumentException unused3) {
                        c2 = 0;
                        map2 = mapW0;
                        obj = objComputeIfAbsent;
                    }
                    if (!Boolean.TRUE.equals(linkedHashMapZ0.get("result"))) {
                        Map map4 = map2;
                        map4.put("email_list", u1(map2));
                        byte[] bArrR0 = R0(String.valueOf(linkedHashMapZ0.getOrDefault("msg", "邮件不存在或已领取")), N(strA1, map4));
                        return bArrR0;
                    }
                    Map map5 = map2;
                    byte[] bArrR = R(strA1, map5, linkedHashMapZ0);
                    if (!strF1.isEmpty() && (tVar = this.N) != null) {
                        if (strF1.startsWith("platform_reward_")) {
                            c2 = 1;
                        }
                        if (c2 != 0 && tVar.b(strA1)) {
                            new Thread(new d(tVar, strF1, 29), "sgscq-cloud-mail-claim").start();
                        }
                    }
                    Object obj2 = linkedHashMapZ0.get("remaining_mails_internal");
                    Collection arrayList = obj2 instanceof List ? (List) obj2 : new ArrayList();
                    d3 d3Var3 = this.R;
                    ((Map) d3Var3.f631d).put(strA1 == null ? "" : strA1, new c3(d3Var3.f629b + jF, new ArrayList(arrayList)));
                    if (!strF1.isEmpty()) {
                        this.R.a(jF, strA1, strF1, R(strA1, map5, Z(strF1)));
                    }
                    return bArrR;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    public final byte[] V1(Map map) {
        ArrayList arrayList;
        m.e eVar;
        String strA1 = A1(map);
        String strF1 = f1((String) map.get("send_to"), (String) map.get("to_user_id"), strA1);
        if (w1.l2((String) map.get("send_type"), 0) == 3 && strF1.startsWith("cloud_") && (eVar = this.O) != null && eVar.w(strA1)) {
            String strTrim = f1((String) map.get("content"), (String) map.get("message"), "").trim();
            if (strTrim.isEmpty()) {
                return L0("留言内容不能为空", -1);
            }
            try {
                return A4(p5.s1(p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0, "mail", eVar.H(strA1, strF1, strTrim), "email_list", new ArrayList(), "mail_list", new ArrayList())));
            } catch (Exception e2) {
                z2.g("SGSCQ_SRV", "[CloudSocial] friend message send failed: " + e2.getMessage());
                return L0(e2.getMessage() == null ? "好友留言发送失败" : e2.getMessage(), -1);
            }
        }
        h5 h5Var = this.f1553f;
        Map mapW0 = h5Var.w0(strF1);
        if (mapW0 == null) {
            mapW0 = h5Var.w0(strA1);
        } else {
            strA1 = strF1;
        }
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        long jG = c7.g();
        String str = "mail_" + jG + "_" + Math.abs(String.valueOf(map).hashCode());
        LinkedHashMap linkedHashMapR = c.a.r("mail_id", str, "email_id", str);
        linkedHashMapR.put("pk_id", str);
        linkedHashMapR.put("id", str);
        linkedHashMapR.put("mail_type", "friend");
        linkedHashMapR.put("email_type", "friend");
        linkedHashMapR.put("origin_mail_type", "normalUser");
        linkedHashMapR.put("title", f1((String) map.get("title"), "玩家邮件"));
        linkedHashMapR.put("email_title", f1((String) map.get("title"), "玩家邮件"));
        linkedHashMapR.put("content", f1((String) map.get("content"), (String) map.get("message"), ""));
        linkedHashMapR.put("email_content", f1((String) map.get("content"), (String) map.get("message"), ""));
        linkedHashMapR.put("sender", f1((String) map.get("nickname"), (String) map.get("user_id"), "玩家"));
        linkedHashMapR.put("email_sender", linkedHashMapR.get("sender"));
        linkedHashMapR.put("email_sender_nickname", linkedHashMapR.get("sender"));
        linkedHashMapR.put("from_user", linkedHashMapR.get("sender"));
        linkedHashMapR.put("send_to", f1((String) map.get("send_to"), (String) map.get("to_user_id"), ""));
        linkedHashMapR.put("email_time_offset", 0);
        linkedHashMapR.put("is_read", Boolean.FALSE);
        linkedHashMapR.put("is_accepted", Boolean.TRUE);
        com.sgscq.vpn.handler.l.b(linkedHashMapR, "is_attach_get", "1", 1, "status");
        linkedHashMapR.put("send_time", Long.valueOf(jG));
        linkedHashMapR.put("create_time", Long.valueOf(jG));
        linkedHashMapR.put("time", Long.valueOf(jG));
        linkedHashMapR.put("expire_time", Long.valueOf(jG + 2592000));
        List listU1 = u1(mapW0);
        listU1.add(linkedHashMapR);
        mapW0.put("email_list", listU1);
        mapW0.put("mail_list", listU1);
        h5Var.S0(strA1, mapW0);
        Object obj = mapW0.get("email_list");
        if (!(obj instanceof List)) {
            obj = mapW0.get("mail_list");
        }
        if (obj instanceof List) {
            ArrayList arrayList2 = new ArrayList();
            for (Object objN3 : (List) obj) {
                if (objN3 instanceof Map) {
                    objN3 = n3((Map) objN3);
                }
                arrayList2.add(objN3);
            }
            arrayList = arrayList2;
        } else {
            arrayList = new ArrayList();
        }
        return A4(p5.s1(p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0, "mail", linkedHashMapR, "email_list", arrayList, "mail_list", arrayList)));
    }

    public final String V3(String str) {
        String str2 = (String) l2.a(this.f1549b, c7.f()).f1075b.get(str);
        return str2 == null ? "" : str2;
    }

    /* JADX WARN: Code duplicated, block: B:184:0x06bc  */
    /* JADX WARN: Code duplicated, block: B:209:0x0785 A[LOOP:7: B:207:0x077f->B:209:0x0785, LOOP_END] */
    public final byte[] W1(String str, Map map) {
        String str2;
        HashMap map2;
        String str3;
        Object obj;
        Object obj2;
        ArrayList arrayListY3;
        HashMap map3;
        String str4;
        String str5;
        Object obj3;
        String str6;
        String str7;
        String str8;
        String str9;
        boolean zV2;
        String str10;
        LinkedHashMap linkedHashMap;
        String str11;
        long jLongValue;
        long j2;
        LinkedHashMap linkedHashMap2;
        String str12;
        String str13;
        String str14;
        Iterator it;
        Map linkedHashMap3;
        Object obj4;
        HashMap map4;
        Object obj5;
        Object obj6;
        HashMap map5;
        String str15;
        String str16;
        int iC3;
        int i2;
        int i3;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        List list;
        ArrayList arrayList;
        String strA1 = A1(map);
        h5 h5Var = this.f1553f;
        Map mapW0 = h5Var.w0(strA1);
        z2.e("SGSCQ_SRV", "[Equip] uid=" + strA1 + " action=" + str);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        Context context = this.f1549b;
        LinkedHashMap linkedHashMapU1 = p5.u1(o0.a(context, "melt_conf.json"));
        LinkedHashMap linkedHashMapU2 = p5.u1(o0.a(context, "sell_conf.json"));
        HashMap map6 = new HashMap(mapW0);
        List listF0 = w1.f0("Equipment", mapW0);
        String str22 = "EquipmentPiece";
        List listF1 = w1.f0("EquipmentPiece", mapW0);
        List listF2 = w1.f0("Item", mapW0);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        LinkedHashMap linkedHashMap4 = linkedHashMapU1;
        ArrayList arrayList8 = new ArrayList();
        LinkedHashMap linkedHashMap5 = linkedHashMapU2;
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        String str23 = "equipment.sell";
        ArrayList arrayList11 = arrayList3;
        ArrayList arrayList12 = arrayList2;
        ArrayList arrayList13 = arrayList5;
        List<Map> list2 = listF0;
        String str24 = "0";
        String str25 = "general_pk_id";
        String str26 = "user_general_id";
        String str27 = "Atlas";
        Integer num = 0;
        String str28 = "refine_level";
        String str29 = "Equipment";
        String str30 = "item_num";
        String str31 = "level";
        String str32 = "equipment_level";
        String str33 = "num";
        String str34 = "add";
        String str35 = "id";
        String str36 = "upd";
        if ("equipment.sell".equals(str) || "equipment.melt".equals(str) || "equipment.multiMelt".equals(str)) {
            HashMap map7 = map6;
            Object obj7 = "upd";
            String str37 = "del";
            String str38 = str25;
            String str39 = str26;
            String str40 = str31;
            str2 = "EquipmentPiece";
            Object obj8 = "add";
            String str41 = "equipment.multiMelt";
            String str42 = str;
            String str43 = "equipment.melt";
            String str44 = str32;
            if (str41.equals(str42)) {
                arrayListY3 = new ArrayList();
                if (list2 != null) {
                    for (Map map8 : list2) {
                        String str45 = str37;
                        if (map8 == null || v2(mapW0, map8)) {
                            map4 = map7;
                            obj5 = obj8;
                            obj6 = obj7;
                        } else {
                            obj5 = obj8;
                            obj6 = obj7;
                            int iMax = Math.max(1, C3(h1(map8, str44, str40), 1));
                            map4 = map7;
                            int iC4 = C3(h1(map8, "grade"), 0);
                            if (iMax == 1 && iC4 >= 2 && iC4 <= 4) {
                                String strValueOf = String.valueOf(h1(map8, "pk_id"));
                                if (!strValueOf.isEmpty()) {
                                    arrayListY3.add(strValueOf);
                                }
                            }
                        }
                        map7 = map4;
                        str37 = str45;
                        obj8 = obj5;
                        obj7 = obj6;
                    }
                }
                map2 = map7;
                str3 = str37;
                obj = obj8;
                obj2 = obj7;
            } else {
                map2 = map7;
                str3 = str37;
                obj = obj8;
                obj2 = obj7;
                arrayListY3 = y3(map, "eids", "ids", "pk_id", "equipment_id", "user_equipment_id");
            }
            LinkedHashMap linkedHashMap6 = new LinkedHashMap();
            Iterator it2 = arrayListY3.iterator();
            long j3 = 0;
            while (it2.hasNext()) {
                it2 = it2;
                Map mapS0 = S0((String) it2.next(), list2);
                if (mapS0 == null) {
                    str6 = str43;
                    str7 = str39;
                    str8 = str41;
                    str9 = str24;
                } else {
                    str6 = str43;
                    if (str43.equals(str42) || str41.equals(str42)) {
                        str7 = str39;
                        str8 = str41;
                        str9 = str24;
                        zV2 = v2(mapW0, mapS0);
                    } else {
                        str8 = str41;
                        String strJ = c.a.j(mapS0, str39, "", str38);
                        if (strJ.isEmpty()) {
                            str7 = str39;
                            str9 = str24;
                        } else {
                            str7 = str39;
                            str9 = str24;
                            if (!str9.equals(strJ) && !"null".equals(strJ)) {
                                zV2 = true;
                            }
                        }
                        zV2 = false;
                    }
                    if (!zV2) {
                        ArrayList arrayList14 = arrayList12;
                        arrayList14.add(mapS0);
                        str24 = str9;
                        String str46 = str38;
                        ArrayList arrayList15 = arrayList11;
                        arrayList15.add(v0(mapS0));
                        str23 = str23;
                        if (str23.equals(str42)) {
                            p5.b(Math.max(0, (Math.max(1, C3(h1(mapS0, str44, str40), 1)) * 200) + (Math.max(1, C3(mapS0.get("grade"), 1)) * 300) + 500), mapW0);
                            j2 = j3;
                            str10 = str40;
                            linkedHashMap2 = linkedHashMap4;
                            linkedHashMap = linkedHashMap5;
                            str12 = str28;
                            str14 = str33;
                            str11 = str44;
                            str13 = str30;
                        } else {
                            if (linkedHashMap5.isEmpty()) {
                                str10 = str40;
                                linkedHashMap = linkedHashMap5;
                                str11 = str44;
                                jLongValue = 0;
                            } else {
                                String strValueOf2 = String.valueOf(h1(mapS0, "sell_type"));
                                if (strValueOf2.isEmpty() || "null".equalsIgnoreCase(strValueOf2)) {
                                    str10 = str40;
                                    linkedHashMap = linkedHashMap5;
                                    str11 = str44;
                                } else {
                                    int iMax2 = Math.max(1, C3(h1(mapS0, str44, str40), 1));
                                    str10 = str40;
                                    LinkedHashMap linkedHashMap7 = linkedHashMap5;
                                    Object obj9 = linkedHashMap7.get(strValueOf2);
                                    int iMax3 = Math.max(0, iMax2 - 1);
                                    if (obj9 instanceof List) {
                                        List list3 = (List) obj9;
                                        if (list3.isEmpty()) {
                                            linkedHashMap3 = new LinkedHashMap();
                                        } else {
                                            obj4 = list3.get(Math.min(iMax3, list3.size() - 1));
                                            if (obj4 instanceof Map) {
                                                linkedHashMap = linkedHashMap7;
                                                str11 = str44;
                                            } else {
                                                linkedHashMap3 = new LinkedHashMap();
                                            }
                                        }
                                        linkedHashMap = linkedHashMap7;
                                        str11 = str44;
                                    } else if (obj9 instanceof Map) {
                                        Map map9 = (Map) obj9;
                                        if (map9.isEmpty()) {
                                            linkedHashMap3 = new LinkedHashMap();
                                            linkedHashMap = linkedHashMap7;
                                            str11 = str44;
                                        } else {
                                            linkedHashMap = linkedHashMap7;
                                            int iMax4 = -1;
                                            for (Iterator it3 = map9.keySet().iterator(); it3.hasNext(); it3 = it3) {
                                                iMax4 = Math.max(iMax4, C3((String) it3.next(), -1));
                                                str44 = str44;
                                            }
                                            str11 = str44;
                                            obj4 = map9.get(String.valueOf(Math.min(iMax3, Math.max(0, iMax4))));
                                            linkedHashMap3 = obj4 instanceof Map ? (Map) obj4 : new LinkedHashMap();
                                        }
                                    } else {
                                        linkedHashMap = linkedHashMap7;
                                        str11 = str44;
                                        linkedHashMap3 = new LinkedHashMap();
                                    }
                                    Object objH1 = h1(linkedHashMap3, str33);
                                    if (objH1 != null) {
                                        try {
                                            BigDecimal bigDecimal = new BigDecimal(String.valueOf(objH1).trim());
                                            if (bigDecimal.signum() > 0) {
                                                jLongValue = bigDecimal.min(BigDecimal.valueOf(Long.MAX_VALUE)).longValue();
                                            }
                                        } catch (NumberFormatException unused) {
                                        }
                                    }
                                }
                                jLongValue = 0;
                            }
                            j2 = jLongValue <= Long.MAX_VALUE - j3 ? j3 + jLongValue : Long.MAX_VALUE;
                            LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                            String strValueOf3 = String.valueOf(h1(mapS0, "refine_eaten_exp_type", "melt_type"));
                            if (strValueOf3.isEmpty()) {
                                linkedHashMap8.put("600096", Integer.valueOf(Math.max(1, C3(mapS0.get("grade"), 1))));
                                linkedHashMap2 = linkedHashMap4;
                            } else {
                                linkedHashMap2 = linkedHashMap4;
                                Object obj10 = linkedHashMap2.get(strValueOf3);
                                if (obj10 instanceof List) {
                                    List list4 = (List) obj10;
                                    if (!list4.isEmpty()) {
                                        str12 = str28;
                                        Object obj11 = list4.get(Math.min(Math.max(1, C3(h1(mapS0, str12, "refine_lv"), 1)) - 1, list4.size() - 1));
                                        if (obj11 instanceof Map) {
                                            Map map10 = (Map) obj11;
                                            String strValueOf4 = String.valueOf(h1(map10, "item_id", str35));
                                            str13 = str30;
                                            str14 = str33;
                                            int iMax5 = Math.max(0, C3(h1(map10, str14, str13), 0));
                                            if (!strValueOf4.isEmpty() && iMax5 > 0) {
                                                linkedHashMap8.put(strValueOf4, Integer.valueOf(iMax5));
                                            }
                                        }
                                    }
                                    str13 = str30;
                                    str14 = str33;
                                }
                                for (it = linkedHashMap8.entrySet().iterator(); it.hasNext(); it = it) {
                                    Map.Entry entry = (Map.Entry) it.next();
                                    linkedHashMap6.put((String) entry.getKey(), Integer.valueOf(((Integer) entry.getValue()).intValue() + ((Integer) linkedHashMap6.getOrDefault(entry.getKey(), num)).intValue()));
                                }
                            }
                            str12 = str28;
                            str13 = str30;
                            str14 = str33;
                            while (it.hasNext()) {
                                Map.Entry entry2 = (Map.Entry) it.next();
                                linkedHashMap6.put((String) entry2.getKey(), Integer.valueOf(((Integer) entry2.getValue()).intValue() + ((Integer) linkedHashMap6.getOrDefault(entry2.getKey(), num)).intValue()));
                            }
                        }
                        num = num;
                        str33 = str14;
                        linkedHashMap4 = linkedHashMap2;
                        str28 = str12;
                        str30 = str13;
                        str44 = str11;
                        str40 = str10;
                        str43 = str6;
                        str39 = str7;
                        j3 = j2;
                        linkedHashMap5 = linkedHashMap;
                        str42 = str;
                        arrayList11 = arrayList15;
                        str38 = str46;
                        arrayList12 = arrayList14;
                        str41 = str8;
                    }
                }
                str24 = str9;
                str41 = str8;
                str43 = str6;
                str39 = str7;
            }
            ArrayList arrayList16 = arrayList11;
            ArrayList arrayList17 = arrayList12;
            String str47 = str33;
            for (Map.Entry entry3 : linkedHashMap6.entrySet()) {
                int iIntValue = ((Integer) entry3.getValue()).intValue();
                if (iIntValue > 0) {
                    Map mapJ = j(mapW0, (String) entry3.getKey(), iIntValue, 1);
                    t(arrayList9, mapJ);
                    arrayList10.add(p5.z0("type", 5, "id", entry3.getKey(), "item_id", entry3.getKey(), "num", Integer.valueOf(iIntValue), "item_num", Integer.valueOf(iIntValue), "pk_id", mapJ.get("pk_id")));
                }
            }
            if (j3 > 0) {
                p5.b(j3, mapW0);
                map3 = map2;
                map3.put("user_coin", mapW0.get("user_coin"));
                arrayList10.add(p5.z0("type", 100, r39, 3, str47, Long.valueOf(j3)));
            } else {
                map3 = map2;
            }
            list2.removeAll(arrayList17);
            Object obj12 = obj;
            Object obj13 = obj2;
            String str48 = str3;
            str4 = str29;
            mapW0.put(str4, p5.z0(str48, new ArrayList(), obj13, new ArrayList(), obj12, list2));
            map3.put(str4, p5.z0(str48, arrayList16, obj13, arrayList4, obj12, arrayList13));
            if (arrayList9.isEmpty()) {
                str5 = "Item";
            } else {
                str5 = "Item";
                map3.put(str5, p5.z0(str48, c.a.n(str48, new ArrayList(), new Object[]{obj13, new ArrayList(), obj12, listF2}, mapW0, str5), obj13, arrayList9, obj12, new ArrayList()));
            }
            obj3 = "add_list";
            map3.put(obj3, arrayList10);
        } else {
            if ("equipment.equipmentPieceSell".equals(str)) {
                Iterator it4 = y3(map, "equipment_id", "piece_id", "pk_id", "equipment_piece_id", "user_equipment_piece_id").iterator();
                while (it4.hasNext()) {
                    ArrayList<Map> arrayListJ3 = j3((String) it4.next(), listF1);
                    Iterator it5 = arrayListJ3.iterator();
                    int iH0 = 0;
                    while (it5.hasNext()) {
                        iH0 += H0((Map) it5.next());
                    }
                    if (iH0 > 0) {
                        p5.b(Math.max(0, iH0 * 200), mapW0);
                        for (Map map11 : arrayListJ3) {
                            arrayList6.add(map11);
                            arrayList7.add(v0(map11));
                        }
                    }
                }
                listF1.removeAll(arrayList6);
                map6.put("EquipmentPiece", p5.z0("del", arrayList7, "upd", arrayList8, "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", listF1}, mapW0, "EquipmentPiece")));
                map5 = map6;
            } else {
                if ("equipment.equipmentCompose".equals(str)) {
                    ArrayList arrayList18 = new ArrayList();
                    Iterator it6 = y3(map, "equipment_id", "piece_id", "pk_id", "equipment_piece_id", "user_equipment_piece_id").iterator();
                    while (it6.hasNext()) {
                        ArrayList<Map> arrayListJ4 = j3((String) it6.next(), listF1);
                        if (!arrayListJ4.isEmpty()) {
                            Map map12 = (Map) arrayListJ4.get(0);
                            Iterator it7 = arrayListJ4.iterator();
                            Iterator it8 = it6;
                            int iH1 = 0;
                            while (it7.hasNext()) {
                                iH1 = H0((Map) it7.next()) + iH1;
                            }
                            String str49 = str35;
                            String str50 = str22;
                            String strValueOf5 = String.valueOf(h1(map12, "equipment_id", str49, "item_id"));
                            String str51 = str34;
                            if (strValueOf5.length() == 7 && strValueOf5.startsWith("9")) {
                                strValueOf5 = strValueOf5.substring(1);
                            }
                            Map mapZ0 = w1.a1(context).z0(strValueOf5);
                            String str52 = str36;
                            if (mapZ0 == null) {
                                i2 = 0;
                                iC3 = 0;
                            } else {
                                iC3 = C3(h1(mapZ0, "compose_need_piece_num", "need_num"), 0);
                                i2 = 0;
                            }
                            if (iC3 <= 0 && (iC3 = C3(h1(map12, "compose_need_piece_num", "need_num"), i2)) <= 0) {
                                if (strValueOf5 != null && strValueOf5.length() >= 3) {
                                    char cCharAt = strValueOf5.charAt(1);
                                    if (cCharAt == '1') {
                                        iC3 = 15;
                                    } else if (cCharAt == '2') {
                                        iC3 = 10;
                                    }
                                    i3 = iC3;
                                }
                                i3 = 5;
                            } else {
                                i3 = iC3;
                            }
                            if (iH1 < i3) {
                                arrayList = arrayList13;
                                list = list2;
                                str20 = str25;
                                str17 = str29;
                                str18 = str31;
                                str19 = str32;
                                str21 = str26;
                            } else {
                                for (Map map13 : arrayListJ4) {
                                    if (i3 <= 0) {
                                        break;
                                    }
                                    int iH2 = H0(map13);
                                    if (iH2 > 0) {
                                        int iMin = Math.min(iH2, i3);
                                        i3 -= iMin;
                                        int i4 = iH2 - iMin;
                                        String str53 = str30;
                                        String str54 = str33;
                                        c.a.t(i4, map13, str54, i4, str53);
                                        if (i4 > 0) {
                                            t(arrayList8, map13);
                                        } else {
                                            arrayList6.add(map13);
                                            arrayList7.add(v0(map13));
                                        }
                                        str30 = str53;
                                        str33 = str54;
                                    }
                                }
                                HashMap map14 = new HashMap();
                                str17 = str29;
                                map14.put("pk_id", String.valueOf(w1.e2(str17, mapW0)));
                                map14.put("equipment_id", strValueOf5);
                                map14.put("equip_id", strValueOf5);
                                map14.put(str49, strValueOf5);
                                map14.put("eid", strValueOf5);
                                str18 = str31;
                                map14.put(str18, 1);
                                str19 = str32;
                                map14.put(str19, 1);
                                map14.put(str28, 1);
                                str30 = str30;
                                map14.put("refine_exp", null);
                                str20 = str25;
                                map14.put(str20, null);
                                map14.put("general_id", null);
                                str21 = str26;
                                map14.put(str21, null);
                                str33 = str33;
                                map14.put("is_wear", str24);
                                map14.put("wear", str24);
                                map14.put("bore_list", new ArrayList());
                                w1.a1(null).R(strValueOf5, map14);
                                f3(map14);
                                map14.put("get_time", Long.valueOf(c7.g()));
                                map14.put("is_new", Boolean.TRUE);
                                list = list2;
                                list.add(map14);
                                arrayList = arrayList13;
                                arrayList.add(map14);
                                w1.b2("equipment_id", strValueOf5, arrayList18, mapW0);
                            }
                            str26 = str21;
                            arrayList13 = arrayList;
                            str31 = str18;
                            str25 = str20;
                            list2 = list;
                            str32 = str19;
                            str22 = str50;
                            str34 = str51;
                            str36 = str52;
                            listF1 = listF1;
                            it6 = it8;
                            str35 = str49;
                            str29 = str17;
                        }
                    }
                    String str55 = str34;
                    String str56 = str36;
                    List list5 = listF1;
                    str15 = str29;
                    list5.removeAll(arrayList6);
                    ArrayList arrayList19 = new ArrayList();
                    Object[] objArr = {str56, new ArrayList(), str55, list5};
                    str22 = str22;
                    Object[] objArr2 = {str56, arrayList8, str55, c.a.n("del", c.a.n("del", arrayList19, objArr, mapW0, str22), new Object[]{str56, new ArrayList(), str55, list2}, mapW0, str15)};
                    map5 = map6;
                    map5.put(str15, p5.z0("del", c.a.m("del", arrayList7, objArr2, map5, str22), str56, arrayList13, str55, new ArrayList()));
                    if (arrayList18.isEmpty()) {
                        str16 = str27;
                    } else {
                        LinkedHashMap linkedHashMapZ0 = p5.z0("del", new ArrayList(), str56, arrayList18, str55, new ArrayList());
                        str16 = str27;
                        map5.put(str16, linkedHashMapZ0);
                    }
                } else {
                    map5 = map6;
                }
                str27 = str16;
                map3 = map5;
                str2 = str22;
                str4 = str15;
                str5 = "Item";
                obj3 = "add_list";
            }
            str16 = str27;
            str15 = str29;
            str27 = str16;
            map3 = map5;
            str2 = str22;
            str4 = str15;
            str5 = "Item";
            obj3 = "add_list";
        }
        E3(r17, mapW0, map);
        h5Var.S0(r17, mapW0);
        ArrayList arrayList20 = new ArrayList();
        if (map3.containsKey(str4)) {
            arrayList20.add(str4);
        }
        String str57 = str2;
        if (map3.containsKey(str57)) {
            arrayList20.add(str57);
        }
        if (map3.containsKey(str5)) {
            arrayList20.add(str5);
        }
        String str58 = str27;
        if (map3.containsKey(str58)) {
            arrayList20.add(str58);
        }
        String strO = O(strA1, map3, map3, (String[]) arrayList20.toArray(new String[0]));
        String strZ0 = h5.z0(str4, map3);
        String strZ1 = h5.z0(str57, map3);
        String strZ2 = h5.z0(str5, map3);
        String strZ3 = h5.z0(str58, map3);
        StringBuilder sbB = a.b0.b("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"cmn\":", strO, ",\"add_list\":");
        sbB.append(p5.s1(map3.getOrDefault(obj3, new ArrayList())));
        sbB.append(",\"equipment_info\":");
        sbB.append(strZ0);
        c.a.y(sbB, ",\"Equipment\":", strZ0, ",\"equipment_piece_info\":", strZ1);
        c.a.y(sbB, ",\"EquipmentPiece\":", strZ1, ",\"item_info\":", strZ2);
        c.a.y(sbB, ",\"Item\":", strZ2, ",\"atlas_info\":", strZ3);
        sbB.append(",\"Atlas\":");
        sbB.append(strZ3);
        sbB.append(",\"user_coin\":");
        sbB.append(x3(f0(), mapW0));
        sbB.append("}");
        return A4(sbB.toString());
    }

    public final String W3(String str, String str2, Map map) {
        Map mapE0;
        w1 w1VarA1 = w1.a1(this.f1549b);
        String strA4 = a4(map);
        if (!strA4.isEmpty() || !w1VarA1.t1(str2)) {
            str2 = strA4;
        }
        if (str2.isEmpty() || (mapE0 = w1VarA1.E0(str2)) == null) {
            return V3(str);
        }
        String strJ = c.a.j(mapE0, "equipment_id", "", "fate_equip_id");
        return !p5.m0(w1VarA1.z0(strJ)) ? false : l2.a(null, c7.f()).f1075b.containsValue(strJ) ? strJ : "";
    }

    /* JADX WARN: Code duplicated, block: B:100:0x037c  */
    /* JADX WARN: Code duplicated, block: B:126:0x0430  */
    public final byte[] X1(Map map) {
        String str;
        h5 h5Var;
        String str2;
        String str3;
        String str4;
        String str5;
        ArrayList arrayList;
        String str6;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String str7;
        String str8;
        Object obj;
        LinkedHashMap linkedHashMapZ0;
        ArrayList arrayList4;
        String str9;
        char cCharAt;
        String strValueOf;
        Iterator it;
        String str10;
        y2 y2Var;
        String strX;
        String strA1 = A1(map);
        h5 h5Var2 = this.f1553f;
        Map mapW0 = h5Var2.w0(strA1);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        int iMax = Math.max(1, v3("equip_refine_maxlevel", Integer.MAX_VALUE));
        String str11 = "0";
        String str12 = "pk_id";
        String strZ3 = z3("user_equipment_id", z3("pk_id", z3("equip_pk_id", "0", map), map), map);
        String str13 = "Equipment";
        List listF0 = w1.f0("Equipment", mapW0);
        Map mapS0 = S0(strZ3, listF0);
        if (mapS0 != null) {
            ArrayList arrayList5 = new ArrayList();
            String str14 = "error_code";
            ArrayList arrayList6 = new ArrayList();
            Object obj2 = "delta_data";
            ArrayList arrayList7 = new ArrayList();
            ArrayList arrayList8 = new ArrayList();
            str = strA1;
            Iterator it2 = y3(map, "eaten_user_eids").iterator();
            int iFloor = 0;
            while (true) {
                h5Var = h5Var2;
                str2 = str13;
                str3 = str12;
                str4 = "refine_level";
                if (!it2.hasNext()) {
                    break;
                }
                Iterator it3 = it2;
                String str15 = (String) it2.next();
                int i2 = iMax;
                Map mapS1 = S0(str15, listF0);
                if (mapS1 != null && !str15.equals(strZ3)) {
                    iFloor += (int) Math.floor(P0(Math.max(1, C3(h1(mapS1, "refine_level", "refine_lv"), 1)), o0.a(null, "eated_exp.json"), "docs/game_data_json/eated_exp.json", G0("refine_eaten_exp_type", mapS1, "melt_type")));
                    arrayList5.add(mapS1);
                    arrayList6.add(v0(mapS1));
                }
                iMax = i2;
                str13 = str2;
                h5Var2 = h5Var;
                str12 = str3;
                it2 = it3;
                strZ3 = strZ3;
            }
            int i3 = iMax;
            listF0.removeAll(arrayList5);
            Map mapN3 = N3(map == null ? null : map.get("eaten_user_items"));
            Iterator it4 = mapN3.entrySet().iterator();
            while (true) {
                if (!it4.hasNext()) {
                    String str16 = str11;
                    String str17 = str4;
                    Map map2 = mapS0;
                    Object obj3 = obj2;
                    String str18 = str14;
                    List list = listF0;
                    if (!arrayList8.isEmpty()) {
                        w1.f0("Item", mapW0).removeIf(new q2(1, arrayList8));
                    }
                    boolean z = (arrayList6.isEmpty() && mapN3.isEmpty()) ? false : true;
                    int iF = c.a.f(map2, "refine_exp", str16, 0);
                    int iF2 = c.a.f(map2, str17, "1", 1);
                    String strG0 = G0("refine_upgrade_exp_type", map2, new String[0]);
                    boolean z2 = z;
                    String str19 = "upgrade_exps.json";
                    int iO0 = O0(o0.a(null, "upgrade_exps.json"), strG0);
                    if (iO0 <= 0) {
                        iO0 = O0(K3("docs/game_data_json/upgrade_exps.json"), strG0);
                    }
                    int iMax2 = Math.max(1, Math.min(i3, Math.max(1, iO0)));
                    int i4 = iF + iFloor;
                    int i5 = iF2;
                    while (i5 < iMax2) {
                        int i6 = iMax2;
                        String str20 = str19;
                        int iFloor2 = (int) Math.floor(P0(i5, o0.a(null, str19), "docs/game_data_json/upgrade_exps.json", G0("refine_upgrade_exp_type", map2, new String[0])));
                        if (iFloor2 <= 0 || i4 < iFloor2) {
                            break;
                        }
                        i4 -= iFloor2;
                        i5++;
                        iMax2 = i6;
                        str19 = str20;
                    }
                    map2.put(str17, Integer.valueOf(i5));
                    map2.put("refine_exp", Integer.valueOf(i4));
                    ArrayList arrayList9 = new ArrayList();
                    ArrayList arrayList10 = new ArrayList();
                    String strK = c.a.k(map2, "user_general_id", "", "general_id", "general_pk_id");
                    if (strK.isEmpty() || str16.equals(strK) || "null".equalsIgnoreCase(strK)) {
                        str5 = "General";
                        arrayList = arrayList6;
                        str6 = str3;
                        strK = "";
                    } else {
                        map2.put("general_pk_id", strK);
                        map2.put("general_id", strK);
                        map2.put("user_general_id", strK);
                        map2.put("is_wear", "1");
                        map2.put("wear", "1");
                        String strJ = c.a.j(map2, "equipment_type", "", "equipment_pos");
                        if (strJ.isEmpty() || str16.equals(strJ) || "null".equalsIgnoreCase(strJ)) {
                            str9 = strJ;
                            String strJ2 = c.a.j(map2, "id", "", "equipment_id");
                            if (strJ2.startsWith("2")) {
                                arrayList = arrayList6;
                                if (strJ2.length() >= 2 && (cCharAt = strJ2.charAt(1)) >= '1' && cCharAt <= '4') {
                                    strValueOf = String.valueOf(cCharAt - '0');
                                }
                                if (!strValueOf.isEmpty() || str16.equals(strValueOf) || "null".equalsIgnoreCase(strValueOf)) {
                                    str5 = "General";
                                    str6 = str3;
                                } else {
                                    map2.put("equipment_pos", strValueOf);
                                    map2.put("equipment_type", map2.getOrDefault("equipment_type", strValueOf));
                                    str6 = str3;
                                    String strValueOf2 = String.valueOf(map2.getOrDefault(str6, ""));
                                    Map mapS2 = S0(strK, w1.f0("General", mapW0));
                                    if (mapS2 == null || strValueOf2.isEmpty()) {
                                        str5 = "General";
                                    } else {
                                        str5 = "General";
                                        mapS2.put("equipment_".concat(strValueOf), strValueOf2);
                                        mapS2.put("equipment_id_".concat(strValueOf), strValueOf2);
                                        mapS2.put("equip_id_".concat(strValueOf), strValueOf2);
                                        if ("3".equals(strValueOf)) {
                                            mapS2.put("mount_id", strValueOf2);
                                            mapS2.put("horse_id", strValueOf2);
                                        }
                                    }
                                    Iterator it5 = w1.f0("TeamGeneral", mapW0).iterator();
                                    while (it5.hasNext()) {
                                        Map map3 = (Map) it5.next();
                                        if (!c.a.C(map3, str6, "", "general_pk_id", strK) || strValueOf2.isEmpty()) {
                                            it = it5;
                                        } else {
                                            it = it5;
                                            map3.put("equipment_".concat(strValueOf), strValueOf2);
                                            map3.put("equipment_id_".concat(strValueOf), strValueOf2);
                                            map3.put("equip_id_".concat(strValueOf), strValueOf2);
                                            if ("3".equals(strValueOf)) {
                                                map3.put("mount_id", strValueOf2);
                                                map3.put("horse_id", strValueOf2);
                                            }
                                        }
                                        it5 = it;
                                    }
                                }
                            }
                            strValueOf = str9;
                            if (strValueOf.isEmpty()) {
                                str5 = "General";
                                str6 = str3;
                            } else {
                                str5 = "General";
                                str6 = str3;
                            }
                        } else {
                            str9 = strJ;
                        }
                        arrayList = arrayList6;
                        strValueOf = str9;
                        if (strValueOf.isEmpty()) {
                            str5 = "General";
                            str6 = str3;
                        } else {
                            str5 = "General";
                            str6 = str3;
                        }
                    }
                    if (strK.isEmpty()) {
                        arrayList2 = arrayList10;
                        arrayList3 = arrayList9;
                        str7 = str5;
                    } else {
                        w1.a1(null).F2(strK, mapW0);
                        str7 = str5;
                        Map mapS3 = S0(strK, w1.f0(str7, mapW0));
                        arrayList3 = arrayList9;
                        if (mapS3 != null) {
                            t(arrayList3, mapS3);
                        }
                        for (Map map4 : w1.f0("TeamGeneral", mapW0)) {
                            if (c.a.C(map4, str6, "", "general_pk_id", strK)) {
                                arrayList4 = arrayList10;
                                t(arrayList4, map4);
                            } else {
                                arrayList4 = arrayList10;
                            }
                            arrayList10 = arrayList4;
                        }
                        arrayList2 = arrayList10;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put(str2, p5.z0("del", arrayList, "upd", p5.v0(map2), "add", new ArrayList()));
                    ArrayList arrayList11 = new ArrayList();
                    arrayList11.add(str2);
                    if (!arrayList3.isEmpty()) {
                        linkedHashMap.put(str7, p5.z0("del", new ArrayList(), "upd", arrayList3, "add", new ArrayList()));
                        arrayList11.add(str7);
                    }
                    if (!arrayList2.isEmpty()) {
                        linkedHashMap.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", p5.c0(w1.f0("TeamGeneral", mapW0), mapW0), "add", new ArrayList()));
                        arrayList11.add("TeamGeneral");
                    }
                    if (arrayList7.isEmpty() && arrayList8.isEmpty()) {
                        str8 = "Item";
                    } else {
                        str8 = "Item";
                        linkedHashMap.put(str8, p5.z0("del", arrayList8, "upd", arrayList7, "add", new ArrayList()));
                        arrayList11.add(str8);
                    }
                    mapW0.put(str8, p5.z0("del", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", list}, mapW0, str2), "upd", new ArrayList(), "add", w1.f0(str8, mapW0)));
                    LinkedHashMap linkedHashMapZ1 = p5.z0(str18, 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
                    obj = obj3;
                    linkedHashMapZ1.put(obj, linkedHashMap);
                    linkedHashMapZ1.put("cmn_modules", arrayList11);
                    if (z2) {
                        com.sgscq.vpn.handler.p.d(1, t0(mapW0), "103", c7.b(), mapW0);
                    }
                    linkedHashMapZ0 = linkedHashMapZ1;
                    break;
                }
                Map.Entry entry = (Map.Entry) it4.next();
                Iterator it6 = it4;
                Map mapZ0 = Z0((String) entry.getKey(), mapW0);
                if (mapZ0 == null) {
                    linkedHashMapZ0 = p5.z0(str14, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "道具不存在");
                    obj = obj2;
                    break;
                }
                Object obj4 = obj2;
                String str21 = str14;
                List list2 = listF0;
                int iMax3 = Math.max(1, ((Integer) entry.getValue()).intValue());
                String str22 = str4;
                String str23 = str11;
                Map map5 = mapS0;
                int iC3 = C3(h1(mapZ0, "item_num", "num"), 0);
                if (iC3 < iMax3) {
                    linkedHashMapZ0 = p5.z0(str21, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "道具数量不足");
                    obj = obj4;
                    break;
                }
                int i7 = iC3 - iMax3;
                c.a.t(i7, mapZ0, "item_num", i7, "num");
                String strValueOf3 = String.valueOf(h1(mapZ0, "item_id", "id", "resource_id"));
                if ("600096".equals(strValueOf3)) {
                    str10 = "chujijinglianshi_jinglian";
                } else if ("600097".equals(strValueOf3)) {
                    str10 = "zhongjijinglianshi_jinglian";
                } else {
                    str10 = "600098".equals(strValueOf3) ? "gaojijinglianshi_jinglian" : "";
                }
                iFloor += (int) Math.floor((!str10.isEmpty() ? P0(1, o0.a(null, "eated_exp.json"), "docs/game_data_json/eated_exp.json", str10) : 0.0d) * ((double) iMax3));
                if (i7 <= 0) {
                    arrayList8.add(v0(mapZ0));
                } else {
                    t(arrayList7, mapZ0);
                }
                it4 = it6;
                str4 = str22;
                str11 = str23;
                obj2 = obj4;
                mapS0 = map5;
                str14 = str21;
                listF0 = list2;
            }
        } else {
            linkedHashMapZ0 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "装备不存在");
            str = strA1;
            h5Var = h5Var2;
            obj = "delta_data";
        }
        if (Boolean.TRUE.equals(linkedHashMapZ0.get("result"))) {
            String str24 = str;
            h5Var.S0(str24, mapW0);
            y2Var = this;
            strX = x(p5.s1(linkedHashMapZ0), y2Var.O(str24, (Map) linkedHashMapZ0.get(obj), mapW0, a(linkedHashMapZ0, new String[0])));
        } else {
            strX = p5.s1(linkedHashMapZ0);
            y2Var = this;
        }
        return y2Var.A4(strX);
    }

    public final byte[] X2(String str, int i2) {
        try {
            this.J.g(str);
            byte[] bytes = M0(str).getBytes("UTF-8");
            byte[] bytes2 = ("HTTP/1.1 " + i2 + " OK\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Length: " + bytes.length + "\r\n\r\n").getBytes("US-ASCII");
            byte[] bArr = new byte[bytes2.length + bytes.length];
            System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
            System.arraycopy(bytes, 0, bArr, bytes2.length, bytes.length);
            return bArr;
        } catch (Exception unused) {
            return "HTTP/1.1 500 Error\r\n\r\n".getBytes();
        }
    }

    public final String X3(String str) {
        String str2 = (String) l2.a(this.f1549b, c7.f()).f1076c.get(str);
        return str2 == null ? "" : str2;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0502  */
    /* JADX WARN: Code duplicated, block: B:134:0x050a  */
    /* JADX WARN: Code duplicated, block: B:135:0x0513  */
    /* JADX WARN: Code duplicated, block: B:144:0x0596  */
    /* JADX WARN: Code duplicated, block: B:150:0x05e6  */
    /* JADX WARN: Code duplicated, block: B:153:0x0601  */
    /* JADX WARN: Code duplicated, block: B:154:0x0612  */
    public final byte[] Y1(String str, Map map) {
        String str2;
        Object obj;
        String str3;
        ArrayList arrayList;
        long jJ0;
        Object obj2;
        LinkedHashMap linkedHashMapZ0;
        LinkedHashMap linkedHashMapZ1;
        Object obj3;
        int iL2;
        String strJ;
        String str4;
        String str5;
        String str6;
        Object obj4;
        y2 y2Var;
        String string;
        Map mapU0;
        Object obj5;
        String str7;
        String str8;
        String str9;
        Object obj6;
        Object obj7;
        int iG;
        LinkedHashSet linkedHashSet;
        Map map2 = map;
        String strA1 = A1(map2);
        h5 h5Var = this.f1553f;
        Map mapW0 = h5Var.w0(strA1);
        String str10 = "0";
        String str11 = (String) map2.getOrDefault("pk_id", (String) map2.getOrDefault("equip_pk_id", (String) map2.getOrDefault("user_equipment_id", "0")));
        boolean zX2 = x2(str, map);
        boolean z = false;
        boolean z2 = zX2 && ("0".equals(str11) || str11.isEmpty());
        StringBuilder sbL = c.a.l("[EquipUpgrade] uid=", strA1, " pk=", str11, " quick=");
        sbL.append(zX2);
        z2.e("SGSCQ_SRV", sbL.toString());
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        List listF0 = w1.f0("Equipment", mapW0);
        Map mapS0 = z2 ? null : S0(str11, listF0);
        if (!z2 && mapS0 == null) {
            z2.g("SGSCQ_SRV", "[EquipUpgrade] equipment not found: " + str11);
            return A4("{\"error_code\":-1,\"ret\":-1,\"code\":-1,\"result\":false,\"msg\":\"装备不存在\"}");
        }
        v3("equip_upgrade_maxlevel", 100);
        String strZ3 = z3("pk_id", z3("equip_pk_id", z3("user_equipment_id", "0", map2), map2), map2);
        boolean zX3 = x2(str, map);
        List<Map> listF1 = w1.f0("Equipment", mapW0);
        if ("equipment.multiUpgrade".equals(str) && ("0".equals(strZ3) || strZ3.isEmpty())) {
            z = true;
        }
        Object obj8 = "changed_general_pk_id";
        String str12 = "add";
        Object obj9 = "changed_general_pk_ids";
        Object obj10 = "delta_data";
        String str13 = "";
        Map map3 = this.V;
        String str14 = "del";
        String str15 = "Equipment";
        String str16 = "General";
        if (z) {
            long jX = p5.x(mapW0);
            int iMax = Math.max(1, Math.max(1, C3(mapW0.get("user_level"), 1)) * 3);
            ArrayList arrayList2 = new ArrayList();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            ArrayList arrayList3 = new ArrayList();
            long j2 = 0;
            loop0: while (true) {
                boolean z3 = false;
                long j3 = j2;
                for (Map map4 : listF1) {
                    listF1 = listF1;
                    LinkedHashSet linkedHashSet3 = linkedHashSet2;
                    if ((map4 != null && (c.a.A(map4, "wear", "1") || c.a.A(map4, "is_wear", "1") || M2(map4.get("general_pk_id")) || M2(map4.get("user_general_id")))) && (iG = c.a.g(map4, "level", "1", "equipment_level", 1)) < iMax) {
                        long jJ1 = J0(iG, map4, map3);
                        if (jJ1 <= 0) {
                            linkedHashMapZ1 = I0(iG, map4);
                            obj7 = obj9;
                            obj6 = obj10;
                            obj4 = "upgrade_level";
                            str7 = str14;
                            str8 = str15;
                            obj5 = "upd";
                            str12 = "add";
                            break loop0;
                        }
                        if (jJ1 <= jX - j3) {
                            j3 += jJ1;
                            int i2 = iMax;
                            int iK0 = K0(mapW0, map2);
                            int i3 = iG + iK0;
                            map4.put("level", Integer.valueOf(i3));
                            map4.put("equipment_level", Integer.valueOf(i3));
                            arrayList3.add(Integer.valueOf(Math.max(1, iK0)));
                            String strValueOf = String.valueOf(map4.getOrDefault("pk_id", ""));
                            Iterator it = arrayList2.iterator();
                            do {
                                if (!it.hasNext()) {
                                    arrayList2.add(map4);
                                    break;
                                }
                            } while (!c.a.B((Map) it.next(), "pk_id", "", strValueOf));
                            String strJ2 = c.a.j(map4, "user_general_id", "", "general_pk_id");
                            if (strJ2.isEmpty() || "0".equals(strJ2)) {
                                linkedHashSet = linkedHashSet3;
                            } else {
                                linkedHashSet = linkedHashSet3;
                                linkedHashSet.add(strJ2);
                            }
                            z3 = true;
                            map2 = map;
                            linkedHashSet2 = linkedHashSet;
                            iMax = i2;
                        }
                    }
                    linkedHashSet2 = linkedHashSet3;
                }
                List list = listF1;
                int i4 = iMax;
                LinkedHashSet linkedHashSet4 = linkedHashSet2;
                if (!z3) {
                    mapW0.put("user_coin", Long.valueOf(Math.max(0L, jX - j3)));
                    Iterator it2 = linkedHashSet4.iterator();
                    while (it2.hasNext()) {
                        w1.a1(null).F2((String) it2.next(), mapW0);
                    }
                    HashMap map5 = new HashMap(mapW0);
                    obj5 = "upd";
                    str12 = "add";
                    str7 = str14;
                    str8 = str15;
                    ArrayList arrayListM = c.a.m(str7, new ArrayList(), new Object[]{obj5, arrayList2, str12, new ArrayList()}, map5, str8);
                    Iterator it3 = linkedHashSet4.iterator();
                    while (it3.hasNext()) {
                        String str17 = str16;
                        Map mapS1 = S0((String) it3.next(), w1.f0(str17, mapW0));
                        if (mapS1 != null) {
                            arrayListM.add(mapS1);
                        }
                        str16 = str17;
                    }
                    String str18 = str16;
                    if (linkedHashSet4.isEmpty()) {
                        str9 = "TeamGeneral";
                    } else {
                        str9 = "TeamGeneral";
                        map5.put(str9, p5.z0(str7, c.a.m(str7, new ArrayList(), new Object[]{obj5, arrayListM, str12, new ArrayList()}, map5, str18), obj5, p5.c0(w1.f0(str9, mapW0), mapW0), str12, new ArrayList()));
                    }
                    linkedHashMapZ1 = p5.z0("error_code", 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
                    obj6 = obj10;
                    linkedHashMapZ1.put(obj6, map5);
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add("Player");
                    arrayList4.add(str8);
                    if (linkedHashSet4.isEmpty()) {
                        obj7 = obj9;
                    } else {
                        arrayList4.add(str18);
                        arrayList4.add(str9);
                        ArrayList arrayList5 = new ArrayList(linkedHashSet4);
                        obj7 = obj9;
                        linkedHashMapZ1.put(obj7, arrayList5);
                    }
                    linkedHashMapZ1.put("cmn_modules", arrayList4);
                    obj4 = "upgrade_level";
                    linkedHashMapZ1.put(obj4, arrayList3);
                    linkedHashMapZ1.put("changed_equipment_count", Integer.valueOf(arrayList2.size()));
                    linkedHashMapZ1.put("cost_coin", Long.valueOf(j3));
                    if (!arrayList2.isEmpty()) {
                        com.sgscq.vpn.handler.p.d(1, t0(mapW0), "101", c7.b(), mapW0);
                        break;
                    }
                    break;
                }
                map2 = map;
                iMax = i4;
                listF1 = list;
                j2 = j3;
                linkedHashSet2 = linkedHashSet4;
            }
            obj8 = obj8;
            mapW0 = mapW0;
            str14 = str7;
            obj10 = obj6;
            obj9 = obj7;
            obj3 = obj5;
            str13 = "";
            str15 = str8;
        } else {
            Map mapS2 = S0(strZ3, listF1);
            if (mapS2 == null) {
                linkedHashMapZ1 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "装备不存在");
                obj3 = "upd";
            } else {
                int iG2 = c.a.g(mapS2, "level", "1", "equipment_level", 1);
                long jX2 = p5.x(mapW0);
                int iMax2 = Math.max(1, Math.max(1, C3(mapW0.get("user_level"), 1)) * 3);
                ArrayList arrayList6 = new ArrayList();
                if (zX3) {
                    jJ0 = 0;
                    obj = "upd";
                    int i5 = iG2;
                    while (true) {
                        if (i5 < iMax2) {
                            long jJ2 = J0(i5, mapS2, map3);
                            if (jJ2 <= 0) {
                                linkedHashMapZ1 = I0(i5, mapS2);
                                str3 = str12;
                                obj3 = obj;
                                str12 = str3;
                            } else if (jJ2 <= jX2 - jJ0) {
                                jJ0 += jJ2;
                                String str19 = str10;
                                int iK1 = K0(mapW0, map);
                                arrayList6.add(Integer.valueOf(Math.max(1, iK1)));
                                i5 += iK1;
                                str10 = str19;
                                str12 = str12;
                            }
                        }
                        str2 = str10;
                        str3 = str12;
                        mapS2.put("level", Integer.valueOf(i5));
                        mapS2.put("equipment_level", Integer.valueOf(i5));
                        arrayList = arrayList6;
                        mapW0.put("user_coin", Long.valueOf(Math.max(0L, jX2 - jJ0)));
                        obj2 = "equipment_level";
                        long j4 = jJ0;
                        iL2 = w1.l2(String.valueOf(mapS2.getOrDefault(obj2, mapS2.getOrDefault("level", Integer.valueOf(iG2)))), iG2);
                        strJ = c.a.j(mapS2, "user_general_id", "", "general_pk_id");
                        if (strJ.isEmpty()) {
                            str4 = str2;
                        } else {
                            str4 = str2;
                            if (!str4.equals(strJ)) {
                                w1.a1(null).F2(strJ, mapW0);
                            }
                        }
                        HashMap map6 = new HashMap(mapW0);
                        obj3 = obj;
                        str12 = str3;
                        str14 = str14;
                        str15 = str15;
                        map6.put(str15, p5.z0(str14, new ArrayList(), obj3, p5.v0(mapS2), str12, new ArrayList()));
                        if (!strJ.isEmpty() || str4.equals(strJ)) {
                            str5 = "TeamGeneral";
                            str6 = str16;
                        } else {
                            ArrayList arrayList7 = new ArrayList();
                            str6 = str16;
                            Map mapS3 = S0(strJ, w1.f0(str6, mapW0));
                            if (mapS3 != null) {
                                arrayList7.add(mapS3);
                            }
                            str5 = "TeamGeneral";
                            map6.put(str5, p5.z0(str14, c.a.m(str14, new ArrayList(), new Object[]{obj3, arrayList7, str12, new ArrayList()}, map6, str6), obj3, p5.c0(w1.f0(str5, mapW0), mapW0), str12, new ArrayList()));
                        }
                        linkedHashMapZ1 = p5.z0("error_code", 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
                        obj10 = obj10;
                        linkedHashMapZ1.put(obj10, map6);
                        ArrayList arrayList8 = new ArrayList();
                        arrayList8.add("Player");
                        arrayList8.add(str15);
                        if (!strJ.isEmpty() || str4.equals(strJ)) {
                            obj8 = obj8;
                        } else {
                            arrayList8.add(str6);
                            arrayList8.add(str5);
                            obj8 = obj8;
                            linkedHashMapZ1.put(obj8, strJ);
                        }
                        linkedHashMapZ1.put("cmn_modules", arrayList8);
                        obj4 = "upgrade_level";
                        linkedHashMapZ1.put(obj4, arrayList);
                        linkedHashMapZ1.put("cost_coin", Long.valueOf(j4));
                        if (iL2 > iG2) {
                            mapW0 = mapW0;
                            com.sgscq.vpn.handler.p.d(1, t0(mapW0), "101", c7.b(), mapW0);
                        } else {
                            mapW0 = mapW0;
                        }
                    }
                } else {
                    str2 = "0";
                    obj = "upd";
                    str3 = "add";
                    arrayList = arrayList6;
                    if (iG2 >= iMax2) {
                        linkedHashMapZ0 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "已达到最高等级");
                    } else {
                        jJ0 = J0(iG2, mapS2, map3);
                        if (jJ0 <= 0) {
                            linkedHashMapZ0 = I0(iG2, mapS2);
                        } else if (jX2 < jJ0) {
                            linkedHashMapZ0 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "铜钱不足");
                        } else {
                            int iK2 = K0(mapW0, map);
                            int i6 = iG2 + iK2;
                            mapS2.put("level", Integer.valueOf(i6));
                            mapS2.put("equipment_level", Integer.valueOf(i6));
                            obj2 = "equipment_level";
                            mapW0.put("user_coin", Long.valueOf(Math.max(0L, jX2 - jJ0)));
                            arrayList.add(Integer.valueOf(Math.max(1, iK2)));
                            long j5 = jJ0;
                            iL2 = w1.l2(String.valueOf(mapS2.getOrDefault(obj2, mapS2.getOrDefault("level", Integer.valueOf(iG2)))), iG2);
                            strJ = c.a.j(mapS2, "user_general_id", "", "general_pk_id");
                            if (strJ.isEmpty()) {
                                str4 = str2;
                                if (!str4.equals(strJ)) {
                                    w1.a1(null).F2(strJ, mapW0);
                                }
                            } else {
                                str4 = str2;
                            }
                            HashMap map7 = new HashMap(mapW0);
                            obj3 = obj;
                            str12 = str3;
                            str14 = str14;
                            str15 = str15;
                            map7.put(str15, p5.z0(str14, new ArrayList(), obj3, p5.v0(mapS2), str12, new ArrayList()));
                            if (strJ.isEmpty()) {
                                str5 = "TeamGeneral";
                                str6 = str16;
                            } else {
                                str5 = "TeamGeneral";
                                str6 = str16;
                            }
                            linkedHashMapZ1 = p5.z0("error_code", 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
                            obj10 = obj10;
                            linkedHashMapZ1.put(obj10, map7);
                            ArrayList arrayList9 = new ArrayList();
                            arrayList9.add("Player");
                            arrayList9.add(str15);
                            if (strJ.isEmpty()) {
                                obj8 = obj8;
                            } else {
                                obj8 = obj8;
                            }
                            linkedHashMapZ1.put("cmn_modules", arrayList9);
                            obj4 = "upgrade_level";
                            linkedHashMapZ1.put(obj4, arrayList);
                            linkedHashMapZ1.put("cost_coin", Long.valueOf(j5));
                            if (iL2 > iG2) {
                                mapW0 = mapW0;
                                com.sgscq.vpn.handler.p.d(1, t0(mapW0), "101", c7.b(), mapW0);
                            } else {
                                mapW0 = mapW0;
                            }
                        }
                    }
                    linkedHashMapZ1 = linkedHashMapZ0;
                    obj3 = obj;
                    str12 = str3;
                }
            }
            obj4 = "upgrade_level";
        }
        if (Boolean.TRUE.equals(linkedHashMapZ1.get("result"))) {
            String strValueOf2 = String.valueOf(linkedHashMapZ1.getOrDefault(obj8, str13));
            if (strValueOf2.isEmpty() || (mapU0 = U0(strValueOf2, mapW0)) == null) {
                y2Var = this;
            } else {
                y2Var = this;
                y2Var.D0(strValueOf2, mapW0, mapU0);
                y2Var.L3(strValueOf2, mapW0, mapU0);
            }
            Object obj11 = linkedHashMapZ1.get(obj9);
            if (obj11 instanceof List) {
                Iterator it4 = ((List) obj11).iterator();
                while (it4.hasNext()) {
                    String strValueOf3 = String.valueOf(it4.next());
                    Map mapU1 = U0(strValueOf3, mapW0);
                    if (mapU1 != null) {
                        y2Var.D0(strValueOf3, mapW0, mapU1);
                        y2Var.L3(strValueOf3, mapW0, mapU1);
                    }
                }
            }
            Map map8 = (Map) linkedHashMapZ1.get(obj10);
            y2Var.E3(strA1, mapW0, map);
            mapW0.put(str15, p5.z0(str14, new ArrayList(), obj3, new ArrayList(), str12, listF0));
            h5Var.S0(strA1, mapW0);
            String strO = y2Var.O(strA1, map8, map8, a(linkedHashMapZ1, new String[0]));
            String strZ0 = h5.z0(str15, map8);
            StringBuilder sbL2 = c.a.l("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"cmn\":", strO, ",\"equipment_info\":", strZ0, ",\"Equipment\":");
            sbL2.append(strZ0);
            sbL2.append(",\"upgrade_level\":");
            sbL2.append(p5.s1(linkedHashMapZ1.get(obj4)));
            sbL2.append(",\"user_coin\":");
            sbL2.append(x3(f0(), mapW0));
            sbL2.append("}");
            string = sbL2.toString();
        } else {
            string = p5.s1(linkedHashMapZ1);
            y2Var = this;
        }
        return y2Var.A4(string);
    }

    public final byte[] Z1(Map map, String str, String str2, String str3, int i2, int i3) {
        Map linkedHashMap;
        ArrayList arrayList = new ArrayList();
        int iMax = Math.max(1, i2);
        for (int i4 = 0; i4 < iMax; i4++) {
            o(arrayList, p(str2, map));
        }
        if (!str2.isEmpty()) {
            Object obj = map.get("purchased_fate_skill_goods");
            if (obj instanceof Map) {
                linkedHashMap = (Map) obj;
            } else {
                linkedHashMap = new LinkedHashMap();
                map.put("purchased_fate_skill_goods", linkedHashMap);
            }
            String strR = (str3 == null || str3.isEmpty()) ? p5.R(str2) : str3;
            linkedHashMap.put(strR, Integer.valueOf(Math.max(1, iMax) + c.a.e(linkedHashMap, strR, 0)));
        }
        List listSingletonList = Collections.singletonList(a0(iMax, 19, str2));
        h5 h5Var = this.f1553f;
        h5Var.S0(str, map);
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), i3, w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        HashMap mapX = X(map, listSingletonList, new ArrayList(), new ArrayList(), new ArrayList(), arrayList, new ArrayList(), new ArrayList());
        String strJ = h5Var.j(mapX, jSONObjectT, "Skill", "Atlas");
        String str4 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + h5.u0(listSingletonList) + ",\"Skill\":" + h5.z0("Skill", mapX) + ",\"user_info\":" + jSONObjectT.toString() + ",\"cmn\":" + strJ + "}";
        StringBuilder sbL = c.a.l("[Buy] fate skill success uid=", str, " skill=", str2, " x");
        sbL.append(iMax);
        sbL.append(" gold->");
        sbL.append(i3);
        z2.e("SGSCQ_SRV", sbL.toString());
        return A4(str4);
    }

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
    public final byte[] a2(int i2, int i3, String str, String str2, Map map) {
        HashMap mapP1 = p1(str2);
        List list = (List) mapP1.getOrDefault("items", new ArrayList());
        List list2 = (List) mapP1.getOrDefault("equipments", new ArrayList());
        List list3 = (List) mapP1.getOrDefault("generals", new ArrayList());
        List list4 = (List) mapP1.getOrDefault("skills", new ArrayList());
        int iL2 = w1.l2(String.valueOf(mapP1.getOrDefault("coin", "0")), 0);
        u2 u2VarG1 = G1(map, list, list2, list3, list4, i2);
        ArrayList arrayList = new ArrayList(u2VarG1.f1425a);
        if (iL2 > 0) {
            int iMax = Math.max(1, i2) * iL2;
            p5.b(iMax, map);
            arrayList.add(P(iMax, 1, "600026"));
        }
        h5 h5Var = this.f1553f;
        h5Var.S0(str, map);
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), w3(i3, "user_gold", map), w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        ArrayList arrayList2 = u2VarG1.f1426b;
        HashMap mapX = X(map, arrayList, arrayList2, u2VarG1.f1427c, u2VarG1.f1428d, u2VarG1.f1429e, u2VarG1.f1430f, new ArrayList());
        String strY = Y(arrayList, arrayList2, h5.z0("Item", mapX), h5.z0("Equipment", mapX), h5.z0("EquipmentPiece", mapX), h5.z0("General", mapX), h5.z0("Skill", mapX), h5Var.j(mapX, jSONObjectT, u("Gems", mapX, "General", "Skill", "GeneralSoul", "Item", "Equipment", "EquipmentPiece")));
        StringBuilder sbL = c.a.l("[Buy] gift open uid=", str, " gift=", str2, " items=");
        sbL.append(list.size());
        sbL.append(" generals=");
        sbL.append(list3.size());
        sbL.append(" equips=");
        sbL.append(list2.size());
        z2.e("SGSCQ_SRV", sbL.toString());
        return A4(strY);
    }

    public final ArrayList a3() {
        ArrayList arrayList = new ArrayList();
        try {
            a7 a7VarV1 = w1.a1(this.f1549b).V1();
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

    public final String a4(Map map) {
        String str;
        String[] strArr = {"fate_box_id", "box_id", "item_id", "id"};
        w1 w1VarA1 = w1.a1(this.f1549b);
        int i2 = 0;
        while (true) {
            str = "";
            if (i2 >= 4) {
                break;
            }
            String str2 = strArr[i2];
            str = (String) map.getOrDefault(str2, "");
            if (!str.isEmpty() && ((!("item_id".equals(str2) || "id".equals(str2)) || str.startsWith("99")) && !str.isEmpty() && w1VarA1.t1(str))) {
                break;
            }
            i2++;
        }
        return str;
    }

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
    public final byte[] b2(Map map, String str, c.f fVar, int i2, int i3) {
        int iMax = Math.max(1, i2) * fVar.f41b;
        String str2 = fVar.f40a;
        w1.k(iMax, str2, map);
        Map mapW0 = W0(str2, map);
        ArrayList arrayList = new ArrayList();
        q(arrayList, mapW0);
        List listSingletonList = Collections.singletonList(a0(iMax, 20, str2));
        h5 h5Var = this.f1553f;
        h5Var.S0(str, map);
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put("user_honor", Integer.valueOf(w3(0, "user_honor", map)));
        ArrayList arrayListT = new com.sgscq.vpn.handler.x0(null).t(linkedHashMap);
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), i3, w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        HashMap map2 = new HashMap(map);
        map2.put("GeneralSoul", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()));
        String strJ = h5Var.j(map2, jSONObjectT, "GeneralSoul");
        String str3 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + h5.u0(listSingletonList) + ",\"reward_list\":" + h5.u0(listSingletonList) + ",\"item_list\":" + h5.u0(arrayListT) + ",\"goods_list\":" + h5.u0(arrayListT) + ",\"return_info\":" + p5.s1(p5.z0("add_list", listSingletonList, "item_list", arrayListT, "goods_list", arrayListT)) + ",\"GeneralSoul\":" + h5.z0("GeneralSoul", map2) + ",\"user_info\":" + jSONObjectT.toString() + ",\"cmn\":" + strJ + "}";
        StringBuilder sbL = c.a.l("[Buy] honor soul success uid=", str, " general=", str2, " x");
        sbL.append(iMax);
        sbL.append(" gold->");
        sbL.append(i3);
        z2.e("SGSCQ_SRV", sbL.toString());
        return A4(str3);
    }

    public final void c2(Socket socket, String str, BufferedReader bufferedReader) {
        int i2;
        try {
            String[] strArrSplit = str.split(" ");
            if (strArrSplit.length < 2) {
                return;
            }
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            HashMap map = new HashMap();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null || line.isEmpty()) {
                    break;
                }
                int iIndexOf = line.indexOf(58);
                if (iIndexOf > 0) {
                    map.put(line.substring(0, iIndexOf).toLowerCase(), line.substring(iIndexOf + 1).trim());
                }
            }
            try {
                i2 = Integer.parseInt((String) map.getOrDefault("content-length", "0"));
            } catch (Exception unused) {
                i2 = 0;
            }
            char[] cArr = new char[i2];
            if (i2 > 0) {
                bufferedReader.read(cArr, 0, i2);
            }
            String str4 = new String(cArr);
            z2.e("SGSCQ_SRV", str2 + " " + str3);
            byte[] bArrJ2 = j2(str2, str3, str4);
            if (bArrJ2 == null) {
                bArrJ2 = "HTTP/1.0 404 Not Found\r\nContent-Length: 0\r\n\r\n".getBytes();
            }
            socket.getOutputStream().write(bArrJ2);
            socket.getOutputStream().flush();
            z2.e("SGSCQ_SRV", "Sent " + bArrJ2.length + " bytes response");
            try {
                this.T.execute(new c(this, str3, bArrJ2, 4));
            } catch (RejectedExecutionException e2) {
                z2.g("SGSCQ_SRV", "[RESP_DATA] async logger rejected: " + e2.getMessage());
            }
        } catch (Exception e3) {
            z2.d("SGSCQ_SRV", "HTTP: " + e3.getMessage(), e3);
        }
    }

    public final byte[] d2(final Map map) {
        Object obj;
        final String strA1 = A1(map);
        Supplier supplier = new Supplier() { // from class: com.sgscq.vpn.s2
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f1362a.e2(strA1, map);
            }
        };
        w6.f1521a.getClass();
        synchronized (a5.a(strA1)) {
            obj = supplier.get();
        }
        return (byte[]) obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:1005:0x1201  */
    /* JADX WARN: Code duplicated, block: B:1006:0x1217  */
    /* JADX WARN: Code duplicated, block: B:1009:0x0b31 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:1010:0x0b32 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:335:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:445:0x066d A[PHI: r23
      0x066d: PHI (r23v75 java.lang.String) = (r23v15 java.lang.String), (r23v76 java.lang.String) binds: [B:343:0x04d8, B:444:0x066b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:661:0x09c7 A[PHI: r23
      0x09c7: PHI (r23v72 java.lang.String) = 
      (r23v21 java.lang.String)
      (r23v22 java.lang.String)
      (r23v23 java.lang.String)
      (r23v24 java.lang.String)
      (r23v25 java.lang.String)
      (r23v26 java.lang.String)
      (r23v27 java.lang.String)
      (r23v28 java.lang.String)
      (r23v29 java.lang.String)
      (r23v30 java.lang.String)
      (r23v31 java.lang.String)
      (r23v32 java.lang.String)
      (r23v33 java.lang.String)
      (r23v34 java.lang.String)
      (r23v35 java.lang.String)
      (r23v36 java.lang.String)
      (r23v37 java.lang.String)
      (r23v38 java.lang.String)
      (r23v39 java.lang.String)
      (r23v40 java.lang.String)
      (r23v41 java.lang.String)
      (r23v42 java.lang.String)
      (r23v43 java.lang.String)
      (r23v44 java.lang.String)
      (r23v45 java.lang.String)
      (r23v46 java.lang.String)
      (r23v47 java.lang.String)
      (r23v48 java.lang.String)
      (r23v49 java.lang.String)
      (r23v50 java.lang.String)
      (r23v51 java.lang.String)
      (r23v52 java.lang.String)
      (r23v53 java.lang.String)
      (r23v54 java.lang.String)
      (r23v55 java.lang.String)
      (r23v56 java.lang.String)
      (r23v57 java.lang.String)
      (r23v58 java.lang.String)
      (r23v59 java.lang.String)
      (r23v60 java.lang.String)
      (r23v61 java.lang.String)
      (r23v62 java.lang.String)
      (r23v63 java.lang.String)
      (r23v64 java.lang.String)
      (r23v65 java.lang.String)
      (r23v66 java.lang.String)
      (r23v67 java.lang.String)
      (r23v68 java.lang.String)
      (r23v69 java.lang.String)
      (r23v70 java.lang.String)
      (r23v73 java.lang.String)
     binds: [B:658:0x09c2, B:654:0x09b5, B:650:0x09a8, B:646:0x099b, B:642:0x098e, B:638:0x0981, B:634:0x0974, B:630:0x0965, B:626:0x0955, B:622:0x0945, B:618:0x0935, B:614:0x0925, B:610:0x0915, B:606:0x0905, B:602:0x08f5, B:598:0x08e5, B:594:0x08d5, B:590:0x08c5, B:586:0x08b5, B:582:0x08a5, B:578:0x0895, B:574:0x0885, B:570:0x0875, B:566:0x0865, B:562:0x0855, B:558:0x0845, B:554:0x0835, B:550:0x0825, B:546:0x0815, B:542:0x0805, B:538:0x07f5, B:534:0x07e5, B:530:0x07d5, B:526:0x07c5, B:522:0x07b5, B:518:0x07a5, B:514:0x0795, B:510:0x0785, B:506:0x0775, B:502:0x0765, B:498:0x0755, B:494:0x0745, B:490:0x0735, B:486:0x0725, B:482:0x0717, B:478:0x0707, B:474:0x06f7, B:470:0x06e7, B:466:0x06d7, B:462:0x06c7, B:460:0x06bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:717:0x0a97  */
    /* JADX WARN: Code duplicated, block: B:719:0x0a9f  */
    /* JADX WARN: Code duplicated, block: B:729:0x0ac3  */
    /* JADX WARN: Code duplicated, block: B:731:0x0acb  */
    /* JADX WARN: Code duplicated, block: B:737:0x0ae2  */
    /* JADX WARN: Code duplicated, block: B:740:0x0afc  */
    /* JADX WARN: Code duplicated, block: B:741:0x0aff  */
    /* JADX WARN: Code duplicated, block: B:743:0x0b05  */
    /* JADX WARN: Code duplicated, block: B:744:0x0b08  */
    /* JADX WARN: Code duplicated, block: B:749:0x0b13  */
    /* JADX WARN: Code duplicated, block: B:751:0x0b17  */
    /* JADX WARN: Code duplicated, block: B:754:0x0b1e  */
    /* JADX WARN: Code duplicated, block: B:757:0x0b23  */
    /* JADX WARN: Code duplicated, block: B:760:0x0b2e A[LOOP:0: B:755:0x0b1f->B:760:0x0b2e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:764:0x0b35  */
    /* JADX WARN: Code duplicated, block: B:766:0x0b3d  */
    /* JADX WARN: Code duplicated, block: B:773:0x0b59  */
    /* JADX WARN: Code duplicated, block: B:776:0x0b6b  */
    /* JADX WARN: Code duplicated, block: B:778:0x0b94  */
    /* JADX WARN: Code duplicated, block: B:794:0x0bf3  */
    /* JADX WARN: Code duplicated, block: B:796:0x0bfb  */
    /* JADX WARN: Code duplicated, block: B:798:0x0c00  */
    /* JADX WARN: Code duplicated, block: B:801:0x0c09  */
    /* JADX WARN: Code duplicated, block: B:803:0x0c11  */
    /* JADX WARN: Code duplicated, block: B:804:0x0c14  */
    /* JADX WARN: Code duplicated, block: B:806:0x0c19  */
    /* JADX WARN: Code duplicated, block: B:807:0x0c1c  */
    /* JADX WARN: Code duplicated, block: B:809:0x0c39 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:813:0x0c40  */
    /* JADX WARN: Code duplicated, block: B:815:0x0c62  */
    /* JADX WARN: Code duplicated, block: B:817:0x0c65  */
    /* JADX WARN: Code duplicated, block: B:821:0x0c8c  */
    /* JADX WARN: Code duplicated, block: B:830:0x0ccc  */
    /* JADX WARN: Code duplicated, block: B:832:0x0cde  */
    /* JADX WARN: Code duplicated, block: B:836:0x0d11  */
    /* JADX WARN: Code duplicated, block: B:838:0x0d23  */
    /* JADX WARN: Code duplicated, block: B:840:0x0d52  */
    /* JADX WARN: Code duplicated, block: B:843:0x0d5a  */
    /* JADX WARN: Code duplicated, block: B:845:0x0d64  */
    /* JADX WARN: Code duplicated, block: B:846:0x0d67  */
    /* JADX WARN: Code duplicated, block: B:849:0x0d79  */
    /* JADX WARN: Code duplicated, block: B:852:0x0d8c  */
    /* JADX WARN: Code duplicated, block: B:854:0x0da9  */
    /* JADX WARN: Code duplicated, block: B:857:0x0db1  */
    /* JADX WARN: Code duplicated, block: B:859:0x0dba  */
    /* JADX WARN: Code duplicated, block: B:861:0x0dcb  */
    /* JADX WARN: Code duplicated, block: B:863:0x0ddb  */
    /* JADX WARN: Code duplicated, block: B:867:0x0e02  */
    /* JADX WARN: Code duplicated, block: B:869:0x0e1a  */
    /* JADX WARN: Code duplicated, block: B:871:0x0e3f  */
    /* JADX WARN: Code duplicated, block: B:872:0x0e41  */
    /* JADX WARN: Code duplicated, block: B:881:0x0e69  */
    /* JADX WARN: Code duplicated, block: B:883:0x0e75  */
    /* JADX WARN: Code duplicated, block: B:889:0x0e8d  */
    /* JADX WARN: Code duplicated, block: B:891:0x0ea5  */
    /* JADX WARN: Code duplicated, block: B:893:0x0eca  */
    /* JADX WARN: Code duplicated, block: B:896:0x0ed2  */
    /* JADX WARN: Code duplicated, block: B:898:0x0ee2  */
    /* JADX WARN: Code duplicated, block: B:902:0x0f26  */
    /* JADX WARN: Code duplicated, block: B:904:0x0f35  */
    /* JADX WARN: Code duplicated, block: B:906:0x0f56  */
    /* JADX WARN: Code duplicated, block: B:907:0x0f62  */
    /* JADX WARN: Code duplicated, block: B:909:0x0f65  */
    /* JADX WARN: Code duplicated, block: B:911:0x0f6e  */
    /* JADX WARN: Code duplicated, block: B:913:0x0f8f  */
    /* JADX WARN: Code duplicated, block: B:914:0x0faa  */
    /* JADX WARN: Code duplicated, block: B:916:0x0fae  */
    /* JADX WARN: Code duplicated, block: B:918:0x0fcf  */
    /* JADX WARN: Code duplicated, block: B:921:0x0fe2  */
    /* JADX WARN: Code duplicated, block: B:922:0x0fe5  */
    /* JADX WARN: Code duplicated, block: B:925:0x0ff1  */
    /* JADX WARN: Code duplicated, block: B:927:0x0ffd  */
    /* JADX WARN: Code duplicated, block: B:943:0x1033  */
    /* JADX WARN: Code duplicated, block: B:945:0x1043  */
    /* JADX WARN: Code duplicated, block: B:947:0x1049  */
    /* JADX WARN: Code duplicated, block: B:949:0x104e  */
    /* JADX WARN: Code duplicated, block: B:951:0x1054  */
    /* JADX WARN: Code duplicated, block: B:953:0x1059  */
    /* JADX WARN: Code duplicated, block: B:955:0x1061  */
    /* JADX WARN: Code duplicated, block: B:957:0x1071  */
    /* JADX WARN: Code duplicated, block: B:959:0x1077  */
    /* JADX WARN: Code duplicated, block: B:962:0x1086  */
    /* JADX WARN: Code duplicated, block: B:965:0x1096  */
    /* JADX WARN: Code duplicated, block: B:967:0x109c  */
    /* JADX WARN: Code duplicated, block: B:968:0x109f  */
    /* JADX WARN: Code duplicated, block: B:971:0x10ad  */
    /* JADX WARN: Code duplicated, block: B:972:0x10b0  */
    /* JADX WARN: Code duplicated, block: B:974:0x10c1  */
    /* JADX WARN: Code duplicated, block: B:977:0x10c8  */
    /* JADX WARN: Code duplicated, block: B:978:0x10d0  */
    /* JADX WARN: Code duplicated, block: B:981:0x10ed  */
    /* JADX WARN: Code duplicated, block: B:984:0x1124  */
    /* JADX WARN: Code duplicated, block: B:986:0x1129  */
    /* JADX WARN: Code duplicated, block: B:989:0x1132  */
    /* JADX WARN: Code duplicated, block: B:992:0x113b  */
    /* JADX WARN: Code duplicated, block: B:995:0x1149  */
    /* JADX WARN: Code duplicated, block: B:996:0x114e  */
    /* JADX WARN: Code duplicated, block: B:999:0x11d8  */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r8v3 int, still in use, count: 9, list:
      (r8v3 int) from 0x00ae: IF  (r8v3 int) != (48780 int)  -> B:35:0x00b0 A[HIDDEN]
      (r8v3 int) from 0x00b3: SWITCH (r8v3 int)
     case 1567: goto B:117:0x01c3
     case 1568: goto B:113:0x01b5
     case 1569: goto B:109:0x01a7
     case 1570: goto B:105:0x0199
     case 1571: goto B:101:0x018b
     case 1572: goto B:97:0x017d
     case 1573: goto B:93:0x016f
     case 1574: goto B:89:0x0161
     case 1575: goto B:85:0x0153
     case 1576: goto B:81:0x0145
     default: goto B:37:0x00b6 A[RegionRef:SW:36]
      (r8v3 int) from 0x00b6: SWITCH (r8v3 int)
     case 1598: goto B:157:0x024f
     case 1599: goto B:153:0x0241
     case 1600: goto B:149:0x0233
     case 1601: goto B:145:0x0225
     case 1602: goto B:141:0x0217
     case 1603: goto B:137:0x0209
     case 1604: goto B:133:0x01fb
     case 1605: goto B:129:0x01ed
     case 1606: goto B:125:0x01df
     case 1607: goto B:121:0x01d1
     default: goto B:38:0x00b9 A[RegionRef:SW:37]
      (r8v3 int) from 0x00b9: SWITCH (r8v3 int)
     case 1629: goto B:197:0x02db
     case 1630: goto B:193:0x02cd
     case 1631: goto B:189:0x02bf
     case 1632: goto B:185:0x02b1
     case 1633: goto B:181:0x02a3
     case 1634: goto B:177:0x0295
     case 1635: goto B:173:0x0287
     case 1636: goto B:169:0x0279
     case 1637: goto B:165:0x026b
     case 1638: goto B:161:0x025d
     default: goto B:39:0x00bc A[RegionRef:SW:38]
      (r8v3 int) from 0x00bc: SWITCH (r8v3 int)
     case 1660: goto B:237:0x0365
     case 1661: goto B:233:0x0357
     case 1662: goto B:229:0x0349
     case 1663: goto B:225:0x033d
     case 1664: goto B:221:0x032f
     case 1665: goto B:217:0x0321
     case 1666: goto B:213:0x0313
     case 1667: goto B:209:0x0305
     case 1668: goto B:205:0x02f7
     case 1669: goto B:201:0x02e9
     default: goto B:40:0x00bf A[RegionRef:SW:39]
      (r8v3 int) from 0x00bf: SWITCH (r8v3 int)
     case 1691: goto B:265:0x03c5
     case 1692: goto B:261:0x03b7
     case 1693: goto B:257:0x03a9
     case 1694: goto B:253:0x039b
     case 1695: goto B:249:0x038d
     case 1696: goto B:245:0x037f
     case 1697: goto B:241:0x0373
     default: goto B:41:0x00c2 A[RegionRef:SW:40]
      (r8v3 int) from 0x00c2: SWITCH (r8v3 int)
     case 2281: goto B:293:0x0427
     case 2282: goto B:289:0x0419
     case 2283: goto B:285:0x040b
     case 2284: goto B:281:0x03fd
     case 2285: goto B:277:0x03ef
     case 2286: goto B:273:0x03e1
     case 2287: goto B:269:0x03d3
     default: goto B:42:0x00c5 A[RegionRef:SW:41]
      (r8v3 int) from 0x00c5: SWITCH (r8v3 int)
     case 2405: goto B:317:0x0475
     case 2406: goto B:313:0x0469
     case 2407: goto B:309:0x045d
     case 2408: goto B:305:0x0451
     case 2409: goto B:301:0x0443
     case 2410: goto B:297:0x0435
     default: goto B:43:0x00c8 A[RegionRef:SW:42]
      (r8v3 int) from 0x00c8: SWITCH (r8v3 int)
     case 48625: goto B:329:0x0499
     case 48626: goto B:325:0x048d
     case 48627: goto B:321:0x0481
     default: goto B:335:0x04ad A[RegionRef:SW:43]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:776:0x0b6b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:832:0x0cde, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:838:0x0d23, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:852:0x0d8c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:863:0x0ddb, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:869:0x0e1a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:891:0x0ea5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:898:0x0ee2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:904:0x0f35, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:911:0x0f6e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:916:0x0fae, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:959:0x1077, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:981:0x10ed, please report this as an issue */
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
    public final byte[] e2(String str, Map map) {
        byte b2;
        String str2;
        int i2;
        String str3;
        int i3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        int i4;
        int i5;
        String str10;
        int i6;
        int i7;
        String strV3;
        int iW0;
        String str11;
        int i8;
        String str12;
        h5 h5Var;
        int i9;
        Map mapW0;
        int i10;
        int iL2;
        int i11;
        v2 v2VarZ2;
        int i12;
        int iL3;
        int iW3;
        int i13;
        String strH4;
        v2 v2VarZ3;
        v2 v2Var;
        String strX3;
        String str13;
        String strW3;
        String str14;
        String str15;
        String strA;
        int iW1;
        int iV1;
        int iW4;
        int iW5;
        int iW6;
        int iT1;
        c.f fVarR2;
        int i14;
        String str16;
        v2 v2Var2;
        int iY2;
        Map mapF;
        int iF;
        ArrayList arrayListV;
        int iS;
        v2 v2Var3;
        String string;
        w1 w1VarA1;
        String strValueOf;
        Map mapE0;
        Object obj;
        Object obj2;
        int iW7;
        int iB0;
        int iI2;
        String strB;
        int iX1;
        int iZ1;
        Object obj3;
        Map map2;
        int iE;
        int iY1;
        int iB1;
        int iZ2;
        int i15;
        int iC3;
        boolean z;
        com.sgscq.vpn.cloud.f0 f0Var;
        byte b3;
        int i16;
        int i17;
        int i18;
        int i19;
        String str17 = (String) map.getOrDefault("item_advanced_id", (String) map.getOrDefault("pk_id", ""));
        boolean z2 = true;
        int iL4 = w1.l2((String) map.getOrDefault("item_num", "1"), 1);
        int i20 = iL4 <= 0 ? 1 : iL4;
        if (str17.startsWith("limited_shop:")) {
            return i2(str, str17, map);
        }
        int iL5 = w1.l2((String) map.getOrDefault("currency_type", "1"), 1);
        int iW2 = 0;
        if (!map.containsKey("currency_type")) {
            if (H2(str17)) {
                iL5 = 4;
            } else {
                if (!"H1".equals(str17) && !"H2".equals(str17) && !"H3".equals(str17) && !"H4".equals(str17) && !"H5".equals(str17) && !"H6".equals(str17) && !"H7".equals(str17)) {
                    z2 = false;
                }
                if (z2) {
                    iL5 = 5;
                }
            }
        }
        String strA4 = a4(map);
        int i21 = 10;
        int i22 = 19;
        if (str17.hashCode() != 48780) {
            switch (str17) {
                case "1":
                    b2 = 0;
                    break;
                case "2":
                    b2 = 1;
                    break;
                case "3":
                    b2 = 2;
                    break;
                case "4":
                    b2 = 3;
                    break;
                case "5":
                    b2 = 4;
                    break;
                case "6":
                    b2 = 5;
                    break;
                case "7":
                    b2 = 6;
                    break;
                case "8":
                    b2 = 7;
                    break;
                case "9":
                    b2 = 8;
                    break;
                default:
                    switch (str17) {
                        case 1567:
                            if (!str17.equals("10")) {
                                b2 = -1;
                            } else {
                                b2 = 9;
                            }
                            break;
                        case 1568:
                            if (!str17.equals("11")) {
                                b2 = -1;
                            } else {
                                b2 = 10;
                            }
                            break;
                        case 1569:
                            if (!str17.equals("12")) {
                                b2 = -1;
                            } else {
                                b2 = 11;
                            }
                            break;
                        case 1570:
                            if (!str17.equals("13")) {
                                b2 = -1;
                            } else {
                                b2 = 12;
                            }
                            break;
                        case 1571:
                            if (!str17.equals("14")) {
                                b2 = -1;
                            } else {
                                b2 = 13;
                            }
                            break;
                        case 1572:
                            if (!str17.equals("15")) {
                                b2 = -1;
                            } else {
                                b2 = 14;
                            }
                            break;
                        case 1573:
                            if (!str17.equals("16")) {
                                b2 = -1;
                            } else {
                                b2 = 15;
                            }
                            break;
                        case 1574:
                            if (!str17.equals("17")) {
                                b2 = -1;
                            } else {
                                b2 = 16;
                            }
                            break;
                        case 1575:
                            if (!str17.equals("18")) {
                                b2 = -1;
                            } else {
                                b2 = 17;
                            }
                            break;
                        case 1576:
                            if (!str17.equals("19")) {
                                b2 = -1;
                            } else {
                                b2 = 18;
                            }
                            break;
                        default:
                            switch (str17) {
                                case 1598:
                                    if (!str17.equals("20")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 19;
                                    }
                                    break;
                                case 1599:
                                    if (!str17.equals("21")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 20;
                                    }
                                    break;
                                case 1600:
                                    if (!str17.equals("22")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 21;
                                    }
                                    break;
                                case 1601:
                                    if (!str17.equals("23")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 22;
                                    }
                                    break;
                                case 1602:
                                    if (!str17.equals("24")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 23;
                                    }
                                    break;
                                case 1603:
                                    if (!str17.equals("25")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 24;
                                    }
                                    break;
                                case 1604:
                                    if (!str17.equals("26")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 25;
                                    }
                                    break;
                                case 1605:
                                    if (!str17.equals("27")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 26;
                                    }
                                    break;
                                case 1606:
                                    if (!str17.equals("28")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 27;
                                    }
                                    break;
                                case 1607:
                                    if (!str17.equals("29")) {
                                        b2 = -1;
                                    } else {
                                        b2 = 28;
                                    }
                                    break;
                                default:
                                    switch (str17) {
                                        case 1629:
                                            if (!str17.equals("30")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 29;
                                            }
                                            break;
                                        case 1630:
                                            if (!str17.equals("31")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 30;
                                            }
                                            break;
                                        case 1631:
                                            if (!str17.equals("32")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 31;
                                            }
                                            break;
                                        case 1632:
                                            if (!str17.equals("33")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 32;
                                            }
                                            break;
                                        case 1633:
                                            if (!str17.equals("34")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 33;
                                            }
                                            break;
                                        case 1634:
                                            if (!str17.equals("35")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 34;
                                            }
                                            break;
                                        case 1635:
                                            if (!str17.equals("36")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 35;
                                            }
                                            break;
                                        case 1636:
                                            if (!str17.equals("37")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 36;
                                            }
                                            break;
                                        case 1637:
                                            if (!str17.equals("38")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 37;
                                            }
                                            break;
                                        case 1638:
                                            if (!str17.equals("39")) {
                                                b2 = -1;
                                            } else {
                                                b2 = 38;
                                            }
                                            break;
                                        default:
                                            switch (str17) {
                                                case 1660:
                                                    if (!str17.equals("40")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 39;
                                                    }
                                                    break;
                                                case 1661:
                                                    if (!str17.equals("41")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 40;
                                                    }
                                                    break;
                                                case 1662:
                                                    if (!str17.equals("42")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 41;
                                                    }
                                                    break;
                                                case 1663:
                                                    if (!str17.equals("43")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 42;
                                                    }
                                                    break;
                                                case 1664:
                                                    if (!str17.equals("44")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 43;
                                                    }
                                                    break;
                                                case 1665:
                                                    if (!str17.equals("45")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 44;
                                                    }
                                                    break;
                                                case 1666:
                                                    if (!str17.equals("46")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 45;
                                                    }
                                                    break;
                                                case 1667:
                                                    if (!str17.equals("47")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 46;
                                                    }
                                                    break;
                                                case 1668:
                                                    if (!str17.equals("48")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 47;
                                                    }
                                                    break;
                                                case 1669:
                                                    if (!str17.equals("49")) {
                                                        b2 = -1;
                                                    } else {
                                                        b2 = 48;
                                                    }
                                                    break;
                                                default:
                                                    switch (str17) {
                                                        case 1691:
                                                            if (!str17.equals("50")) {
                                                                b2 = -1;
                                                            } else {
                                                                b2 = 49;
                                                            }
                                                            break;
                                                        case 1692:
                                                            if (!str17.equals("51")) {
                                                                b2 = -1;
                                                            } else {
                                                                b2 = 50;
                                                            }
                                                            break;
                                                        case 1693:
                                                            if (!str17.equals("52")) {
                                                                b2 = -1;
                                                            } else {
                                                                b2 = 51;
                                                            }
                                                            break;
                                                        case 1694:
                                                            if (!str17.equals("53")) {
                                                                b2 = -1;
                                                            } else {
                                                                b2 = 52;
                                                            }
                                                            break;
                                                        case 1695:
                                                            if (!str17.equals("54")) {
                                                                b2 = -1;
                                                            } else {
                                                                b2 = 53;
                                                            }
                                                            break;
                                                        case 1696:
                                                            if (!str17.equals("55")) {
                                                                b2 = -1;
                                                            } else {
                                                                b2 = 54;
                                                            }
                                                            break;
                                                        case 1697:
                                                            if (!str17.equals("56")) {
                                                                b2 = -1;
                                                            } else {
                                                                b2 = 55;
                                                            }
                                                            break;
                                                        default:
                                                            switch (str17) {
                                                                case 2281:
                                                                    if (!str17.equals("H1")) {
                                                                        b2 = -1;
                                                                    } else {
                                                                        b2 = 56;
                                                                    }
                                                                    break;
                                                                case 2282:
                                                                    if (!str17.equals("H2")) {
                                                                        b2 = -1;
                                                                    } else {
                                                                        b2 = 57;
                                                                    }
                                                                    break;
                                                                case 2283:
                                                                    if (!str17.equals("H3")) {
                                                                        b2 = -1;
                                                                    } else {
                                                                        b2 = 58;
                                                                    }
                                                                    break;
                                                                case 2284:
                                                                    if (!str17.equals("H4")) {
                                                                        b2 = -1;
                                                                    } else {
                                                                        b2 = 59;
                                                                    }
                                                                    break;
                                                                case 2285:
                                                                    if (!str17.equals("H5")) {
                                                                        b2 = -1;
                                                                    } else {
                                                                        b2 = 60;
                                                                    }
                                                                    break;
                                                                case 2286:
                                                                    if (!str17.equals("H6")) {
                                                                        b2 = -1;
                                                                    } else {
                                                                        b2 = 61;
                                                                    }
                                                                    break;
                                                                case 2287:
                                                                    if (!str17.equals("H7")) {
                                                                        b2 = -1;
                                                                    } else {
                                                                        b2 = 62;
                                                                    }
                                                                    break;
                                                                default:
                                                                    switch (str17) {
                                                                        case 2405:
                                                                            if (!str17.equals("L1")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 63;
                                                                            }
                                                                            break;
                                                                        case 2406:
                                                                            if (!str17.equals("L2")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 64;
                                                                            }
                                                                            break;
                                                                        case 2407:
                                                                            if (!str17.equals("L3")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 65;
                                                                            }
                                                                            break;
                                                                        case 2408:
                                                                            if (!str17.equals("L4")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 66;
                                                                            }
                                                                            break;
                                                                        case 2409:
                                                                            if (!str17.equals("L5")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 67;
                                                                            }
                                                                            break;
                                                                        case 2410:
                                                                            if (!str17.equals("L6")) {
                                                                                b2 = -1;
                                                                            } else {
                                                                                b2 = 68;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            switch (str17) {
                                                                                case 48625:
                                                                                    if (!str17.equals("100")) {
                                                                                        b2 = -1;
                                                                                    } else {
                                                                                        b2 = 69;
                                                                                    }
                                                                                    break;
                                                                                case 48626:
                                                                                    if (!str17.equals("101")) {
                                                                                        b2 = -1;
                                                                                    } else {
                                                                                        b2 = 70;
                                                                                    }
                                                                                    break;
                                                                                case 48627:
                                                                                    if (!str17.equals("102")) {
                                                                                        b2 = -1;
                                                                                    } else {
                                                                                        b2 = 71;
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    b2 = -1;
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
            }
        } else if (str17.equals("150")) {
            b2 = 72;
        } else {
            b2 = -1;
        }
        Context context = this.f1549b;
        String strX4 = "600012";
        int iC = 100;
        switch (b2) {
            case 0:
                iW2 = 268;
                str2 = "600023";
                i2 = 16;
                break;
            case 1:
                str2 = "600024";
                iW2 = 100;
                i2 = 16;
                break;
            case 2:
                str2 = "600025";
                iW2 = 10;
                i2 = 16;
                break;
            case 3:
                str2 = "600032";
                iW2 = 2680;
                i2 = 28;
                break;
            case 4:
                str3 = "600001";
                str2 = str3;
                iW2 = 50;
                i2 = 2;
                break;
            case 5:
                str2 = "600002";
                i3 = 2;
                i2 = i3;
                iW2 = 30;
                break;
            case 6:
                str2 = "600003";
                iW2 = 10;
                i2 = 2;
                break;
            case 7:
                str2 = "600004";
                iW2 = 50;
                i2 = 4;
                break;
            case 8:
                str4 = "600005";
                i3 = 4;
                str2 = str4;
                i2 = i3;
                iW2 = 30;
                break;
            case 9:
                str2 = "600006";
                iW2 = 10;
                i2 = 4;
                break;
            case 10:
                str2 = "600007";
                iW2 = 5;
                i2 = iW2;
                iW2 = 50;
                break;
            case 11:
                str2 = "600008";
                iW2 = 6;
                i2 = iW2;
                iW2 = 50;
                break;
            case 12:
                str5 = "600009";
                iW2 = 98;
                str2 = str5;
                i2 = 7;
                break;
            case 13:
                str5 = "600010";
                iW2 = 198;
                str2 = str5;
                i2 = 7;
                break;
            case 14:
                str5 = "600011";
                iW2 = 298;
                str2 = str5;
                i2 = 7;
                break;
            case 15:
                str6 = "791707";
                strX4 = str6;
                i5 = 1;
                i6 = i5;
                i2 = i6;
                str2 = strX4;
                iW2 = 100;
                break;
            case 16:
                strX4 = "791708";
                i22 = 1;
                iW2 = 200;
                str2 = strX4;
                i2 = i22;
                break;
            case 17:
                str7 = "791709";
                i4 = 1;
                str2 = str7;
                i2 = i4;
                iW2 = 500;
                break;
            case 18:
                str8 = "791758";
                iW2 = 300;
                str2 = str8;
                i2 = 1;
                break;
            case 19:
                strX4 = "791438";
                i22 = 1;
                iW2 = 200;
                str2 = strX4;
                i2 = i22;
                break;
            case 20:
                str8 = "791550";
                iW2 = 300;
                str2 = str8;
                i2 = 1;
                break;
            case 21:
                str9 = "710000";
                str2 = str9;
                i2 = 1;
                break;
            case 22:
                str7 = "710021";
                i4 = 1;
                str2 = str7;
                i2 = i4;
                iW2 = 500;
                break;
            case 23:
                str7 = "710022";
                i4 = 1;
                str2 = str7;
                i2 = i4;
                iW2 = 500;
                break;
            case 24:
                str7 = "710023";
                i4 = 1;
                str2 = str7;
                i2 = i4;
                iW2 = 500;
                break;
            case 25:
                str8 = "710024";
                iW2 = 800;
                str2 = str8;
                i2 = 1;
                break;
            case 26:
                str8 = "710025";
                iW2 = 800;
                str2 = str8;
                i2 = 1;
                break;
            case 27:
                str8 = "710026";
                iW2 = 800;
                str2 = str8;
                i2 = 1;
                break;
            case 28:
                str8 = "710027";
                iW2 = 1000;
                str2 = str8;
                i2 = 1;
                break;
            case 29:
                str8 = "710008";
                iW2 = 2000;
                str2 = str8;
                i2 = 1;
                break;
            case 30:
                str8 = "710009";
                iW2 = 3000;
                str2 = str8;
                i2 = 1;
                break;
            case 31:
                str8 = "710010";
                iW2 = 5000;
                str2 = str8;
                i2 = 1;
                break;
            case 32:
                str8 = "710011";
                iW2 = 6000;
                str2 = str8;
                i2 = 1;
                break;
            case 33:
                str8 = "710012";
                iW2 = 8000;
                str2 = str8;
                i2 = 1;
                break;
            case 34:
                str8 = "710013";
                iW2 = 8000;
                str2 = str8;
                i2 = 1;
                break;
            case 35:
                str8 = "710032";
                iW2 = 10000;
                str2 = str8;
                i2 = 1;
                break;
            case 36:
                str8 = "791836";
                iW2 = 150000;
                str2 = str8;
                i2 = 1;
                break;
            case 37:
                strX4 = "600037";
                i22 = 34;
                iW2 = 200;
                str2 = strX4;
                i2 = i22;
                break;
            case 38:
                str2 = "600065";
                i2 = iW2;
                iW2 = 50;
                break;
            case 39:
                iW2 = 200;
                str2 = strX4;
                i2 = i22;
                break;
            case 40:
            case 56:
                iW2 = 1000;
                str2 = strX4;
                i2 = i22;
                break;
            case 41:
            case 66:
                iW2 = 10000;
                str2 = strX4;
                i2 = i22;
                break;
            case 42:
            case 55:
                strX4 = "361001";
                iW2 = 1000;
                str2 = strX4;
                i2 = i22;
                break;
            case 43:
                str4 = "600013";
                i3 = 6;
                str2 = str4;
                i2 = i3;
                iW2 = 30;
                break;
            case 44:
                strX4 = "600076";
                i5 = 37;
                i6 = i5;
                i2 = i6;
                str2 = strX4;
                iW2 = 100;
                break;
            case 45:
                str4 = "600077";
                i3 = 38;
                str2 = str4;
                i2 = i3;
                iW2 = 30;
                break;
            case 46:
                str3 = "600078";
                str2 = str3;
                iW2 = 50;
                i2 = 2;
                break;
            case 47:
                str10 = "600079";
                iW2 = 160;
                str2 = str10;
                i2 = 2;
                break;
            case 48:
                str2 = "600080";
                i4 = 2;
                i2 = i4;
                iW2 = 500;
                break;
            case 49:
                str2 = "600014";
                iW2 = 99;
                i2 = 10;
                break;
            case 50:
                str10 = "600081";
                iW2 = 1600;
                str2 = str10;
                i2 = 2;
                break;
            case 51:
                str10 = "600082";
                iW2 = 5000;
                str2 = str10;
                i2 = 2;
                break;
            case 52:
                str2 = "600036";
                iW2 = 5;
                i2 = 33;
                break;
            case 53:
                str6 = "191006";
                strX4 = str6;
                i5 = 1;
                i6 = i5;
                i2 = i6;
                str2 = strX4;
                iW2 = 100;
                break;
            case 54:
                strX4 = "600212";
                i22 = 52;
                iW2 = 200;
                str2 = strX4;
                i2 = i22;
                break;
            case 57:
                i6 = 19;
                i2 = i6;
                str2 = strX4;
                iW2 = 100;
                break;
            case 58:
                str2 = "600009";
                iW2 = 7;
                i2 = iW2;
                iW2 = 50;
                break;
            case 59:
                strX4 = "600010";
                i6 = 7;
                i2 = i6;
                str2 = strX4;
                iW2 = 100;
                break;
            case 60:
                strX4 = "600011";
                i22 = 7;
                iW2 = 200;
                str2 = strX4;
                i2 = i22;
                break;
            case 61:
            case 62:
                b2 b2VarA = c2.a(str17);
                str2 = b2VarA == null ? "" : b2VarA.f199a;
                int i23 = b2VarA == null ? 0 : 20;
                i2 = b2VarA != null ? 20 : 0;
                iW2 = i23;
                break;
            case 63:
                str9 = "790196";
                str2 = str9;
                i2 = 1;
                break;
            case 64:
                str9 = "790195";
                str2 = str9;
                i2 = 1;
                break;
            case 65:
                str9 = "790194";
                str2 = str9;
                i2 = 1;
                break;
            case 67:
                i7 = 50000;
                iW2 = i7;
                str2 = strX4;
                i2 = i22;
                break;
            case 68:
                i7 = 100000;
                iW2 = i7;
                str2 = strX4;
                i2 = i22;
                break;
            case 69:
            case 70:
            case 71:
                strV3 = V3(str17);
                iW0 = w0(strV3);
                str2 = "600045";
                iW2 = iW0;
                i2 = 2;
                break;
            case 72:
                strX4 = X3(str17);
                if (!strX4.isEmpty()) {
                    iW2 = o0();
                }
                str2 = strX4;
                i2 = i22;
                break;
            default:
                strV3 = V3(str17);
                strX4 = X3(str17);
                if (!strV3.isEmpty()) {
                    iW0 = w0(strV3);
                } else if (!strX4.isEmpty()) {
                    iW2 = o0();
                    str2 = strX4;
                    i2 = i22;
                } else if (!w1.a1(context).t1(str17)) {
                    str2 = "";
                    i2 = 0;
                } else {
                    iW0 = (Math.max(0, 200) * 80) / 100;
                }
                str2 = "600045";
                iW2 = iW0;
                i2 = 2;
                break;
        }
        if (str2.isEmpty()) {
            str12 = (String) map.getOrDefault("item_id", "");
            if (!strA4.isEmpty()) {
                str2 = "600045";
                iW2 = w0(W3(str17, "600045", map));
                i2 = 2;
            }
            str12.getClass();
            switch (str12.hashCode()) {
                case 1591780795:
                    str11 = "";
                    if (!str12.equals("600001")) {
                        b3 = -1;
                    } else {
                        b3 = 0;
                    }
                    break;
                case 1591780796:
                    str11 = "";
                    if (!str12.equals("600002")) {
                        b3 = -1;
                    } else {
                        b3 = 1;
                    }
                    break;
                case 1591780797:
                    str11 = "";
                    if (!str12.equals("600003")) {
                        b3 = -1;
                    } else {
                        b3 = 2;
                    }
                    break;
                case 1591780798:
                    str11 = "";
                    if (!str12.equals("600004")) {
                        b3 = -1;
                    } else {
                        b3 = 3;
                    }
                    break;
                case 1591780799:
                    str11 = "";
                    if (!str12.equals("600005")) {
                        b3 = -1;
                    } else {
                        b3 = 4;
                    }
                    break;
                case 1591780800:
                    str11 = "";
                    if (!str12.equals("600006")) {
                        b3 = -1;
                    } else {
                        b3 = 5;
                    }
                    break;
                case 1591780801:
                    str11 = "";
                    if (!str12.equals("600007")) {
                        b3 = -1;
                    } else {
                        b3 = 6;
                    }
                    break;
                case 1591780802:
                    str11 = "";
                    if (!str12.equals("600008")) {
                        b3 = -1;
                    } else {
                        b3 = 7;
                    }
                    break;
                case 1591780803:
                    str11 = "";
                    if (!str12.equals("600009")) {
                        b3 = -1;
                    } else {
                        b3 = 8;
                    }
                    break;
                case 1591780825:
                    str11 = "";
                    if (!str12.equals("600010")) {
                        b3 = -1;
                    } else {
                        b3 = 9;
                    }
                    break;
                case 1591780826:
                    str11 = "";
                    if (!str12.equals("600011")) {
                        b3 = -1;
                    } else {
                        b3 = 10;
                    }
                    break;
                case 1591780828:
                    str11 = "";
                    if (!str12.equals("600013")) {
                        b3 = -1;
                    } else {
                        b3 = 11;
                    }
                    break;
                case 1591780829:
                    str11 = "";
                    if (!str12.equals("600014")) {
                        b3 = -1;
                    } else {
                        b3 = 12;
                    }
                    break;
                case 1591780859:
                    str11 = "";
                    if (!str12.equals("600023")) {
                        b3 = -1;
                    } else {
                        b3 = 13;
                    }
                    break;
                case 1591780860:
                    str11 = "";
                    if (!str12.equals("600024")) {
                        b3 = -1;
                    } else {
                        b3 = 14;
                    }
                    break;
                case 1591780861:
                    str11 = "";
                    if (!str12.equals("600025")) {
                        b3 = -1;
                    } else {
                        b3 = 15;
                    }
                    break;
                case 1591780864:
                    str11 = "";
                    if (!str12.equals("600028")) {
                        b3 = -1;
                    } else {
                        b3 = 16;
                    }
                    break;
                case 1591780889:
                    str11 = "";
                    if (!str12.equals("600032")) {
                        b3 = -1;
                    } else {
                        b3 = 17;
                    }
                    break;
                case 1591780893:
                    str11 = "";
                    if (!str12.equals("600036")) {
                        b3 = -1;
                    } else {
                        b3 = 18;
                    }
                    break;
                case 1591780894:
                    str11 = "";
                    if (!str12.equals("600037")) {
                        b3 = -1;
                    } else {
                        b3 = 19;
                    }
                    break;
                case 1591780985:
                    str11 = "";
                    if (!str12.equals("600065")) {
                        b3 = -1;
                    } else {
                        b3 = 20;
                    }
                    break;
                case 1591781017:
                    str11 = "";
                    if (!str12.equals("600076")) {
                        b3 = -1;
                    } else {
                        b3 = 21;
                    }
                    break;
                case 1591781018:
                    str11 = "";
                    if (!str12.equals("600077")) {
                        b3 = -1;
                    } else {
                        b3 = 22;
                    }
                    break;
                case 1591781019:
                    str11 = "";
                    if (!str12.equals("600078")) {
                        b3 = -1;
                    } else {
                        b3 = 23;
                    }
                    break;
                case 1591781020:
                    str11 = "";
                    if (!str12.equals("600079")) {
                        b3 = -1;
                    } else {
                        b3 = 24;
                    }
                    break;
                case 1591781042:
                    str11 = "";
                    if (!str12.equals("600080")) {
                        b3 = -1;
                    } else {
                        b3 = 25;
                    }
                    break;
                case 1591781043:
                    str11 = "";
                    if (!str12.equals("600081")) {
                        b3 = -1;
                    } else {
                        b3 = 26;
                    }
                    break;
                case 1591781044:
                    str11 = "";
                    if (!str12.equals("600082")) {
                        b3 = -1;
                    } else {
                        b3 = 27;
                    }
                    break;
                case 1621333466:
                    str11 = "";
                    if (!str12.equals("710000")) {
                        b3 = -1;
                    } else {
                        b3 = 28;
                    }
                    break;
                case 1621333474:
                    str11 = "";
                    if (!str12.equals("710008")) {
                        b3 = -1;
                    } else {
                        b3 = 29;
                    }
                    break;
                case 1621333475:
                    str11 = "";
                    if (!str12.equals("710009")) {
                        b3 = -1;
                    } else {
                        b3 = 30;
                    }
                    break;
                case 1621333497:
                    str11 = "";
                    if (!str12.equals("710010")) {
                        b3 = -1;
                    } else {
                        b3 = 31;
                    }
                    break;
                case 1621333498:
                    str11 = "";
                    if (!str12.equals("710011")) {
                        b3 = -1;
                    } else {
                        b3 = 32;
                    }
                    break;
                case 1621333499:
                    str11 = "";
                    if (!str12.equals("710012")) {
                        b3 = -1;
                    } else {
                        b3 = 33;
                    }
                    break;
                case 1621333500:
                    str11 = "";
                    if (!str12.equals("710013")) {
                        b3 = -1;
                    } else {
                        b3 = 34;
                    }
                    break;
                case 1621333529:
                    str11 = "";
                    if (!str12.equals("710021")) {
                        b3 = -1;
                    } else {
                        b3 = 35;
                    }
                    break;
                case 1621333530:
                    str11 = "";
                    if (!str12.equals("710022")) {
                        b3 = -1;
                    } else {
                        b3 = 36;
                    }
                    break;
                case 1621333531:
                    str11 = "";
                    if (!str12.equals("710023")) {
                        b3 = -1;
                    } else {
                        b3 = 37;
                    }
                    break;
                case 1621333532:
                    str11 = "";
                    if (!str12.equals("710024")) {
                        b3 = -1;
                    } else {
                        b3 = 38;
                    }
                    break;
                case 1621333533:
                    str11 = "";
                    if (!str12.equals("710025")) {
                        b3 = -1;
                    } else {
                        b3 = 39;
                    }
                    break;
                case 1621333534:
                    str11 = "";
                    if (!str12.equals("710026")) {
                        b3 = -1;
                    } else {
                        b3 = 40;
                    }
                    break;
                case 1621333535:
                    str11 = "";
                    if (!str12.equals("710027")) {
                        b3 = -1;
                    } else {
                        b3 = 41;
                    }
                    break;
                case 1621333561:
                    str11 = "";
                    if (!str12.equals("710032")) {
                        b3 = -1;
                    } else {
                        b3 = 42;
                    }
                    break;
                case 1628755370:
                    str11 = "";
                    if (!str12.equals("791438")) {
                        b3 = -1;
                    } else {
                        b3 = 43;
                    }
                    break;
                case 1628756385:
                    str11 = "";
                    if (!str12.equals("791550")) {
                        b3 = -1;
                    } else {
                        b3 = 44;
                    }
                    break;
                case 1628758159:
                    str11 = "";
                    if (!str12.equals("791707")) {
                        b3 = -1;
                    } else {
                        b3 = 45;
                    }
                    break;
                case 1628758160:
                    str11 = "";
                    if (!str12.equals("791708")) {
                        b3 = -1;
                    } else {
                        b3 = 46;
                    }
                    break;
                case 1628758161:
                    str11 = "";
                    if (!str12.equals("791709")) {
                        b3 = -1;
                    } else {
                        b3 = 47;
                    }
                    break;
                case 1628758315:
                    str11 = "";
                    if (!str12.equals("791758")) {
                        b3 = -1;
                    } else {
                        b3 = 48;
                    }
                    break;
                case 1628759212:
                    str11 = "";
                    if (!str12.equals("791836")) {
                        b3 = -1;
                    } else {
                        b3 = 49;
                    }
                    break;
                default:
                    str11 = "";
                    b3 = -1;
                    break;
            }
            switch (b3) {
                case 0:
                case 23:
                    i16 = 50;
                    i8 = 2;
                    iC = i16;
                    break;
                case 1:
                    i8 = 2;
                    i16 = 30;
                    iC = i16;
                    break;
                case 2:
                    i16 = 10;
                    i8 = 2;
                    iC = i16;
                    break;
                case 3:
                    i16 = 50;
                    i8 = 4;
                    iC = i16;
                    break;
                case 4:
                    i16 = 30;
                    i8 = 4;
                    iC = i16;
                    break;
                case 5:
                    i16 = 10;
                    i8 = 4;
                    iC = i16;
                    break;
                case 6:
                case 16:
                    i8 = 5;
                    iC = 50;
                    break;
                case 7:
                    i16 = 50;
                    i8 = 6;
                    iC = i16;
                    break;
                case 8:
                    i17 = 98;
                    iC = i17;
                    i8 = 7;
                    break;
                case 9:
                    i17 = 198;
                    iC = i17;
                    i8 = 7;
                    break;
                case 10:
                    i17 = 298;
                    iC = i17;
                    i8 = 7;
                    break;
                case 11:
                    i16 = 30;
                    i8 = 6;
                    iC = i16;
                    break;
                case 12:
                    iC = 99;
                    i8 = 10;
                    break;
                case 13:
                    iC = 268;
                    i8 = 16;
                    break;
                case 14:
                    i8 = 16;
                    break;
                case 15:
                    iC = 10;
                    i8 = 16;
                    break;
                case 17:
                    iC = 2680;
                    i8 = 28;
                    break;
                case 18:
                    iC = 5;
                    i8 = 33;
                    break;
                case 19:
                    iC = 200;
                    i8 = 34;
                    break;
                case 20:
                    i8 = 0;
                    iC = 50;
                    break;
                case 21:
                    i8 = 37;
                    break;
                case 22:
                    i8 = 38;
                    i16 = 30;
                    iC = i16;
                    break;
                case 24:
                    i18 = 160;
                    i16 = i18;
                    i8 = 2;
                    iC = i16;
                    break;
                case 25:
                    i8 = 2;
                    iC = 500;
                    break;
                case 26:
                    i18 = 1600;
                    i16 = i18;
                    i8 = 2;
                    iC = i16;
                    break;
                case 27:
                    i18 = 5000;
                    i16 = i18;
                    i8 = 2;
                    iC = i16;
                    break;
                case 28:
                    iC = 0;
                    i8 = 1;
                    break;
                case 29:
                    i19 = 2000;
                    iC = i19;
                    i8 = 1;
                    break;
                case 30:
                    i19 = 3000;
                    iC = i19;
                    i8 = 1;
                    break;
                case 31:
                    iC = 5000;
                    i8 = 1;
                    break;
                case 32:
                    i19 = 6000;
                    iC = i19;
                    i8 = 1;
                    break;
                case 33:
                case 34:
                    i19 = 8000;
                    iC = i19;
                    i8 = 1;
                    break;
                case 35:
                case 36:
                case 37:
                case 47:
                    iC = 500;
                    i8 = 1;
                    break;
                case 38:
                case 39:
                case 40:
                    i19 = 800;
                    iC = i19;
                    i8 = 1;
                    break;
                case 41:
                    i19 = 1000;
                    iC = i19;
                    i8 = 1;
                    break;
                case 42:
                    i19 = 10000;
                    iC = i19;
                    i8 = 1;
                    break;
                case 43:
                case 46:
                    iC = 200;
                    i8 = 1;
                    break;
                case 44:
                case 48:
                    i19 = 300;
                    iC = i19;
                    i8 = 1;
                    break;
                case 45:
                    i8 = 1;
                    break;
                case 49:
                    i19 = 150000;
                    iC = i19;
                    i8 = 1;
                    break;
            }
            StringBuilder sbL = c.a.l("[Buy] uid=", str, " pk=", str17, " item=");
            sbL.append(str12);
            sbL.append(" count=");
            sbL.append(i20);
            sbL.append(" currency=");
            sbL.append(iL5);
            z2.e("SGSCQ_SRV", sbL.toString());
            if (str12.isEmpty()) {
                return L0("道具不存在", -2);
            }
            if (!"600036".equals(str12) && ((f0Var = this.M) == null || !f0Var.b(str))) {
                return L0("只有云端角色可以购买喇叭", -5);
            }
            h5Var = this.f1553f;
            i9 = i8;
            mapW0 = h5Var.w0(str);
            if (mapW0 == null) {
                return L0("玩家数据不存在", -1);
            }
            if ("H6".equals(str17) || "H7".equals(str17)) {
                iC = c2.c(c7.f(), mapW0);
            }
            i10 = iC;
            iL2 = w1.l2(str17, -1);
            i11 = iL5;
            v2VarZ2 = Z2(str17);
            if (v2VarZ2 != null) {
                i12 = v2VarZ2.f1455c;
            } else if ("43".equals(str17)) {
                i12 = 15;
            } else if (iL2 < 23 && iL2 <= 37) {
                i12 = iL2 - 22;
            } else if (iL2 >= 16 || iL2 > 18) {
                i12 = 0;
                while (true) {
                    if (i12 >= 16) {
                        i12 = -1;
                    } else if (!X[i12].equals(str12)) {
                        i12++;
                    }
                }
                if (i12 <= 0) {
                    if (str12.startsWith("7927") || str12.length() != 6 || (iL3 = w1.l2(str12.substring(3), -1)) < 725 || iL3 > 739) {
                        i12 = 0;
                    } else {
                        i12 = iL3 - 724;
                    }
                }
            } else {
                i12 = iL2 - 15;
            }
            iW3 = w3(w3(0, "vip_level", mapW0), "user_vip_level", mapW0);
            if (i12 > iW3) {
                z2.g("SGSCQ_SRV", "[Buy] vip not enough item=" + str12 + " need=" + i12 + " have=" + iW3);
                return L0("VIP等级不足", -5);
            }
            if (!K2(str17, str12) && D2(str12, mapW0)) {
                z2.g("SGSCQ_SRV", "[Buy] one-time gift already purchased item=" + str12 + " pk=" + str17);
                return L0("该礼包已购买", -4);
            }
            if (!"54".equals(str17) && (i20 != 1 || D2("shop_all_pet_gift", mapW0))) {
                z2.g("SGSCQ_SRV", "[Buy] all-pet gift purchase limit reached uid=" + str);
                return L0("该商品已达购买上限", -4);
            }
            if (G2(str17)) {
                if ("L1".equals(str17)) {
                    if (!"L2".equals(str17)) {
                        if ("L3".equals(str17)) {
                            i15 = 50;
                        } else {
                            i21 = 0;
                        }
                    }
                    if (i15 > 0) {
                        i13 = iW3;
                    } else {
                        i13 = iW3;
                        iC3 = C3(mapW0.getOrDefault("ladder_rank", mapW0.getOrDefault("ladderRank", 9999)), 9999);
                        if (iC3 < 1 && iC3 <= i15) {
                            z = true;
                        }
                        if (!z) {
                            StringBuilder sbB = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                            sbB.append(w3(9999, "ladder_rank", mapW0));
                            z2.g("SGSCQ_SRV", sbB.toString());
                            return L0("排名未达到领取条件", -4);
                        }
                        if (i20 == 1 || D2(str12, mapW0)) {
                            z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
                            return L0("该礼包已领取", -4);
                        }
                    }
                    z = false;
                    if (!z) {
                        StringBuilder sbB2 = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                        sbB2.append(w3(9999, "ladder_rank", mapW0));
                        z2.g("SGSCQ_SRV", sbB2.toString());
                        return L0("排名未达到领取条件", -4);
                    }
                    if (i20 == 1) {
                    }
                    z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
                    return L0("该礼包已领取", -4);
                }
                i21 = 1;
                i15 = i21;
                if (i15 > 0) {
                    i13 = iW3;
                    iC3 = C3(mapW0.getOrDefault("ladder_rank", mapW0.getOrDefault("ladderRank", 9999)), 9999);
                    if (iC3 < 1) {
                    }
                    if (!z) {
                        StringBuilder sbB3 = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                        sbB3.append(w3(9999, "ladder_rank", mapW0));
                        z2.g("SGSCQ_SRV", sbB3.toString());
                        return L0("排名未达到领取条件", -4);
                    }
                    if (i20 == 1) {
                    }
                    z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
                    return L0("该礼包已领取", -4);
                }
                i13 = iW3;
                z = false;
                if (!z) {
                    StringBuilder sbB4 = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                    sbB4.append(w3(9999, "ladder_rank", mapW0));
                    z2.g("SGSCQ_SRV", sbB4.toString());
                    return L0("排名未达到领取条件", -4);
                }
                if (i20 == 1) {
                }
                z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
                return L0("该礼包已领取", -4);
            }
            i13 = iW3;
            if (!"791438".equals(str12) && N0(v1(str12, mapW0), i20, p5.B0(5, context))) {
                z2.g("SGSCQ_SRV", "[Buy] daily gift limit reached item=" + str12 + " pk=" + str17);
                return L0("该商品已达购买上限", -4);
            }
            strH4 = h4(str17, str12);
            if (!strH4.isEmpty()) {
                iB1 = p5.B0(g4(strH4), context);
                iZ2 = z1(strH4, mapW0);
                if (N0(iZ2, i20, iB1)) {
                    z2.g("SGSCQ_SRV", "[Buy] shop item limit reached pk=" + strH4 + " purchased=" + iZ2 + " count=" + i20 + " limit=" + iB1);
                    return L0("该商品已达购买上限", -4);
                }
            }
            v2VarZ3 = Z2(str17);
            if (v2VarZ3 != null) {
                iY1 = y1(str17, mapW0);
                if (N0(iY1, i20, p5.B0(v2VarZ3.f1454b, context))) {
                    z2.g("SGSCQ_SRV", "[Buy] lingzhi good limit reached pk=" + str17 + " purchased=" + iY1 + " count=" + i20 + " limit=" + v2VarZ3.f1454b);
                    return L0("该商品已达购买上限", -4);
                }
            }
            if ("43".equals(str17)) {
                obj3 = mapW0.get("purchased_daily_vip15_exp_book_gift");
                if (obj3 instanceof Map) {
                    map2 = (Map) obj3;
                    v2Var = v2VarZ3;
                    if (!c.a.A(map2, "day", c7.b())) {
                        iE = c.a.e(map2, "count", 0);
                    }
                    if (N0(iE, i20, p5.B0(20, context))) {
                        z2.g("SGSCQ_SRV", "[Buy] daily vip15 exp book limit reached purchased=" + iE + " count=" + i20);
                        return L0("该商品已达购买上限", -4);
                    }
                } else {
                    v2Var = v2VarZ3;
                }
                iE = 0;
                if (N0(iE, i20, p5.B0(20, context))) {
                    z2.g("SGSCQ_SRV", "[Buy] daily vip15 exp book limit reached purchased=" + iE + " count=" + i20);
                    return L0("该商品已达购买上限", -4);
                }
            } else {
                v2Var = v2VarZ3;
            }
            if ("56".equals(str17)) {
                List list = com.sgscq.vpn.handler.x0.f1028c;
                if (p5.A(context) < 1) {
                    z2.g("SGSCQ_SRV", "[Buy] afdian level not enough for exp book gift pk=".concat(str17));
                    return L0("爱发电 LV1 及以上专享", -5);
                }
                iZ1 = z1("56", mapW0);
                if (N0(iZ1, i20, p5.B0(20, context))) {
                    z2.g("SGSCQ_SRV", "[Buy] daily afdian exp book limit reached purchased=" + iZ1 + " count=" + i20);
                    return L0("该商品已达购买上限", -4);
                }
            }
            strX3 = X3(str17);
            if (strX3.isEmpty()) {
                str13 = str11;
            } else {
                strB = l2.a(context, c7.f()).b(strX3);
                iX1 = x1(strX3, strB, mapW0);
                if (N0(iX1, i20, 1)) {
                    z2.g("SGSCQ_SRV", "[Buy] fate skill limit reached skill=" + strX3 + " purchased=" + iX1 + " count=" + i20);
                    return L0("该商品已达购买上限", -4);
                }
                str13 = strB;
            }
            if ("600045".equals(str12) && !w1.a1(context).t1(str12) && V3(str17).isEmpty()) {
                str14 = strX3;
                str15 = str13;
                strW3 = str11;
                strA = strW3;
            } else {
                strW3 = W3(str17, str12, map);
                if (strA4.isEmpty() && strW3.isEmpty()) {
                    return L0("道具不存在", -2);
                }
                str14 = strX3;
                str15 = str13;
                if (strW3.isEmpty()) {
                    strA = str11;
                } else {
                    strA = l2.a(context, c7.f()).a(strW3);
                    iW1 = w1(strW3, strA, mapW0);
                    if (N0(iW1, i20, 999)) {
                        z2.g("SGSCQ_SRV", "[Buy] fate box limit reached equip=" + strW3 + " purchased=" + iW1 + " count=" + i20);
                        return L0("该商品已达购买上限", -4);
                    }
                }
            }
            if (com.sgscq.vpn.cloud.m0.y1(str12)) {
                iB0 = com.sgscq.vpn.cloud.m0.b0(str12, mapW0);
                iI2 = com.sgscq.vpn.cloud.m0.i2(i13, context, str12);
                if (N0(iB0, i20, iI2)) {
                    z2.g("SGSCQ_SRV", "[Buy] vip limited quick item reached item=" + str12 + " used=" + iB0 + " count=" + i20 + " limit=" + iI2);
                    return L0("今日购买次数已达VIP上限", -4);
                }
            }
            iV1 = p5.v1(i20, i10, str12, mapW0);
            iW4 = w3(h0(), "user_gold", mapW0);
            if (i11 == 4) {
                iW7 = w3(w3(0, "ladder_rank_salary", mapW0), "ladderRankSalary", mapW0);
                if (iW7 < iV1) {
                    z2.g("SGSCQ_SRV", "[Buy] insufficient ladder salary: have=" + iW7 + " need=" + iV1);
                    return L0("俸禄不足", -3);
                }
                int i24 = iW7 - iV1;
                c.a.t(i24, mapW0, "ladderRankSalary", i24, "ladder_rank_salary");
            } else if (i11 == 5) {
                iW5 = w3(0, "user_honor", mapW0);
                if (iW5 < iV1) {
                    z2.g("SGSCQ_SRV", "[Buy] insufficient honor: have=" + iW5 + " need=" + iV1);
                    return L0("魂玉不足", -3);
                }
                mapW0.put("user_honor", Integer.valueOf(iW5 - iV1));
                com.sgscq.vpn.handler.p.d(1, t0(mapW0), "105", c7.b(), mapW0);
            } else {
                if (iW4 < iV1) {
                    z2.g("SGSCQ_SRV", "[Buy] insufficient gold: have=" + iW4 + " need=" + iV1);
                    return L0("元宝不足", -3);
                }
                mapW0.put("user_gold", Integer.valueOf(iW4 - iV1));
            }
            iW6 = w3(iW4, "user_gold", mapW0);
            if (i9 != 0) {
                iT1 = i9;
            } else {
                iT1 = t1(str12);
            }
            if ("54".equals(str17)) {
                g3("shop_all_pet_gift", mapW0);
                return H1(iW6, str, mapW0);
            }
            if (iT1 != 1 && B2(str12)) {
                if (K2(str17, str12) || G2(str17)) {
                    g3(str12, mapW0);
                }
                if ("791438".equals(str12)) {
                    e3(i20, str12, mapW0);
                }
                return a2(i20, iW6, str, str12, mapW0);
            }
            if (!str14.isEmpty()) {
                return Z1(mapW0, str, str14, str15, i20, iW6);
            }
            if ("43".equals(str17)) {
                return R1(i20, iW6, str, mapW0);
            }
            if ("56".equals(str17)) {
                return Q1(i20, iW6, str, mapW0);
            }
            fVarR2 = r2(str17);
            if (fVarR2 != null) {
                m(i20, strH4, mapW0);
                return b2(mapW0, str, fVarR2, i20, iW6);
            }
            if (!strW3.isEmpty()) {
                w1VarA1 = w1.a1(context);
                Map mapF0 = w1VarA1.F0(strW3);
                i14 = iW6;
                strValueOf = mapF0 != null ? String.valueOf(mapF0.getOrDefault("box_id", "")) : "";
                if (!strValueOf.isEmpty()) {
                    mapE0 = w1VarA1.E0(strValueOf);
                    if (mapE0 == null) {
                        obj = str11;
                    } else {
                        obj = mapE0.get("name");
                    }
                    String strValueOf2 = String.valueOf(obj);
                    if (mapE0 == null) {
                        obj2 = str11;
                    } else {
                        obj2 = mapE0.get("desc");
                    }
                    str16 = p5.b1(w1VarA1, strW3, strValueOf, strValueOf2, String.valueOf(obj2)).f1263a;
                }
                if (v2Var == null) {
                    iY2 = Y2(str17, i20);
                    v2Var2 = v2Var;
                } else {
                    v2Var2 = v2Var;
                    iY2 = v2Var2.f1453a * i20;
                }
                mapF = f(iY2, iT1, str16, mapW0);
                int i25 = iY2;
                iF = c.a.f(mapF, "pk_id", "0", 0);
                if (!strW3.isEmpty()) {
                    D(strW3, str16, mapW0, mapF);
                    k(i20, strW3, strA, mapW0);
                    z2.e("SGSCQ_SRV", "[Buy] fate box pk=" + iF + " item=" + str12 + " grant=" + str16 + " → equip=" + strW3);
                }
                if (K2(str17, str12)) {
                    g3(str12, mapW0);
                }
                if (v2Var2 != null) {
                    l(i20, str17, mapW0);
                }
                if (!strH4.isEmpty()) {
                    m(i20, strH4, mapW0);
                }
                if (com.sgscq.vpn.cloud.m0.y1(str12)) {
                    com.sgscq.vpn.cloud.m0.D2(com.sgscq.vpn.cloud.m0.x2(str12, mapW0) + i20, str12, mapW0);
                }
                if (H2(str17)) {
                    arrayListV = com.sgscq.vpn.handler.x0.v(mapW0);
                } else {
                    arrayListV = null;
                }
                h5Var.S0(str, mapW0);
                iS = 5;
                int i26 = i14;
                String str18 = str12;
                String str19 = str16;
                v2Var3 = v2Var2;
                JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), i26, w3(g0(), "user_energy", mapW0), w3(i0(), "user_power", mapW0), x3(f0(), mapW0), str, mapW0);
                ArrayList arrayList = new ArrayList();
                e(arrayList, mapF);
                HashMap map3 = new HashMap(mapW0);
                map3.put("Item", p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()));
                String strJ = h5Var.j(map3, jSONObjectT, "Item");
                boolean zF2 = F2(str17);
                if (v2Var3 == null && !"43".equals(str17) && !zF2) {
                    iS = s(iT1);
                }
                List listSingletonList = Collections.singletonList(V(i25, iT1, iS, String.valueOf(mapF.getOrDefault("item_id", str18)), mapF));
                h5Var.getClass();
                String strU0 = h5.u0(listSingletonList);
                if (arrayListV != null) {
                    StringBuilder sb = new StringBuilder(",\"item_list\":");
                    h5Var.getClass();
                    sb.append(h5.u0(arrayListV));
                    string = sb.toString();
                } else {
                    string = str11;
                }
                String str20 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + strU0 + string + ",\"user_info\":" + jSONObjectT.toString() + ",\"cmn\":" + strJ + "}";
                StringBuilder sbL2 = c.a.l("[Buy] success uid=", str, " item=", str19, " x");
                sbL2.append(i25);
                sbL2.append(" gold ");
                sbL2.append(iW4);
                sbL2.append("->");
                sbL2.append(i26);
                z2.e("SGSCQ_SRV", sbL2.toString());
                return A4(str20);
            }
            i14 = iW6;
            str16 = str12;
            if (v2Var == null) {
                iY2 = Y2(str17, i20);
                v2Var2 = v2Var;
            } else {
                v2Var2 = v2Var;
                iY2 = v2Var2.f1453a * i20;
            }
            mapF = f(iY2, iT1, str16, mapW0);
            int i27 = iY2;
            iF = c.a.f(mapF, "pk_id", "0", 0);
            if (!strW3.isEmpty()) {
                D(strW3, str16, mapW0, mapF);
                k(i20, strW3, strA, mapW0);
                z2.e("SGSCQ_SRV", "[Buy] fate box pk=" + iF + " item=" + str12 + " grant=" + str16 + " → equip=" + strW3);
            }
            if (K2(str17, str12)) {
                g3(str12, mapW0);
            }
            if (v2Var2 != null) {
                l(i20, str17, mapW0);
            }
            if (!strH4.isEmpty()) {
                m(i20, strH4, mapW0);
            }
            if (com.sgscq.vpn.cloud.m0.y1(str12)) {
                com.sgscq.vpn.cloud.m0.D2(com.sgscq.vpn.cloud.m0.x2(str12, mapW0) + i20, str12, mapW0);
            }
            if (H2(str17)) {
                arrayListV = com.sgscq.vpn.handler.x0.v(mapW0);
            } else {
                arrayListV = null;
            }
            h5Var.S0(str, mapW0);
            iS = 5;
            int i28 = i14;
            String str110 = str12;
            String str111 = str16;
            v2Var3 = v2Var2;
            JSONObject jSONObjectT2 = this.f1553f.t((int) c7.g(), i28, w3(g0(), "user_energy", mapW0), w3(i0(), "user_power", mapW0), x3(f0(), mapW0), str, mapW0);
            ArrayList arrayList2 = new ArrayList();
            e(arrayList2, mapF);
            HashMap map4 = new HashMap(mapW0);
            map4.put("Item", p5.z0("del", new ArrayList(), "upd", arrayList2, "add", new ArrayList()));
            String strJ2 = h5Var.j(map4, jSONObjectT2, "Item");
            boolean zF3 = F2(str17);
            if (v2Var3 == null) {
                iS = s(iT1);
            }
            List listSingletonList2 = Collections.singletonList(V(i27, iT1, iS, String.valueOf(mapF.getOrDefault("item_id", str110)), mapF));
            h5Var.getClass();
            String strU1 = h5.u0(listSingletonList2);
            if (arrayListV != null) {
                StringBuilder sb2 = new StringBuilder(",\"item_list\":");
                h5Var.getClass();
                sb2.append(h5.u0(arrayListV));
                string = sb2.toString();
            } else {
                string = str11;
            }
            String str21 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + strU1 + string + ",\"user_info\":" + jSONObjectT2.toString() + ",\"cmn\":" + strJ2 + "}";
            StringBuilder sbL3 = c.a.l("[Buy] success uid=", str, " item=", str111, " x");
            sbL3.append(i27);
            sbL3.append(" gold ");
            sbL3.append(iW4);
            sbL3.append("->");
            sbL3.append(i28);
            z2.e("SGSCQ_SRV", sbL3.toString());
            return A4(str21);
        }
        str11 = "";
        iC = iW2;
        String str22 = str2;
        i8 = i2;
        str12 = str22;
        StringBuilder sbL4 = c.a.l("[Buy] uid=", str, " pk=", str17, " item=");
        sbL4.append(str12);
        sbL4.append(" count=");
        sbL4.append(i20);
        sbL4.append(" currency=");
        sbL4.append(iL5);
        z2.e("SGSCQ_SRV", sbL4.toString());
        if (str12.isEmpty()) {
            return L0("道具不存在", -2);
        }
        if (!"600036".equals(str12)) {
        }
        h5Var = this.f1553f;
        i9 = i8;
        mapW0 = h5Var.w0(str);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        if ("H6".equals(str17)) {
            iC = c2.c(c7.f(), mapW0);
        } else {
            iC = c2.c(c7.f(), mapW0);
        }
        i10 = iC;
        iL2 = w1.l2(str17, -1);
        i11 = iL5;
        v2VarZ2 = Z2(str17);
        if (v2VarZ2 != null) {
            i12 = v2VarZ2.f1455c;
        } else if ("43".equals(str17)) {
            i12 = 15;
        } else if (iL2 < 23) {
            if (iL2 >= 16) {
                i12 = 0;
                while (true) {
                    if (i12 >= 16) {
                        i12 = -1;
                    } else if (!X[i12].equals(str12)) {
                        i12++;
                    }
                }
                if (i12 <= 0) {
                    if (str12.startsWith("7927")) {
                        i12 = 0;
                    } else {
                        i12 = 0;
                    }
                }
            } else {
                i12 = 0;
                while (true) {
                    if (i12 >= 16) {
                        i12 = -1;
                    } else if (!X[i12].equals(str12)) {
                        i12++;
                    }
                }
                if (i12 <= 0) {
                    if (str12.startsWith("7927")) {
                        i12 = 0;
                    } else {
                        i12 = 0;
                    }
                }
            }
        } else if (iL2 >= 16) {
            i12 = 0;
            while (true) {
                if (i12 >= 16) {
                    i12 = -1;
                } else if (!X[i12].equals(str12)) {
                    i12++;
                }
            }
            if (i12 <= 0) {
                if (str12.startsWith("7927")) {
                    i12 = 0;
                } else {
                    i12 = 0;
                }
            }
        } else {
            i12 = 0;
            while (true) {
                if (i12 >= 16) {
                    i12 = -1;
                } else if (!X[i12].equals(str12)) {
                    i12++;
                }
            }
            if (i12 <= 0) {
                if (str12.startsWith("7927")) {
                    i12 = 0;
                } else {
                    i12 = 0;
                }
            }
        }
        iW3 = w3(w3(0, "vip_level", mapW0), "user_vip_level", mapW0);
        if (i12 > iW3) {
            z2.g("SGSCQ_SRV", "[Buy] vip not enough item=" + str12 + " need=" + i12 + " have=" + iW3);
            return L0("VIP等级不足", -5);
        }
        if (!K2(str17, str12)) {
        }
        if (!"54".equals(str17)) {
        }
        if (G2(str17)) {
            if ("L1".equals(str17)) {
                if (!"L2".equals(str17)) {
                    if ("L3".equals(str17)) {
                        i15 = 50;
                    } else {
                        i21 = 0;
                    }
                }
                if (i15 > 0) {
                    i13 = iW3;
                    iC3 = C3(mapW0.getOrDefault("ladder_rank", mapW0.getOrDefault("ladderRank", 9999)), 9999);
                    if (iC3 < 1) {
                    }
                    if (!z) {
                        StringBuilder sbB5 = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                        sbB5.append(w3(9999, "ladder_rank", mapW0));
                        z2.g("SGSCQ_SRV", sbB5.toString());
                        return L0("排名未达到领取条件", -4);
                    }
                    if (i20 == 1) {
                    }
                    z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
                    return L0("该礼包已领取", -4);
                }
                i13 = iW3;
                z = false;
                if (!z) {
                    StringBuilder sbB6 = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                    sbB6.append(w3(9999, "ladder_rank", mapW0));
                    z2.g("SGSCQ_SRV", sbB6.toString());
                    return L0("排名未达到领取条件", -4);
                }
                if (i20 == 1) {
                }
                z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
                return L0("该礼包已领取", -4);
            }
            i21 = 1;
            i15 = i21;
            if (i15 > 0) {
                i13 = iW3;
                iC3 = C3(mapW0.getOrDefault("ladder_rank", mapW0.getOrDefault("ladderRank", 9999)), 9999);
                if (iC3 < 1) {
                }
                if (!z) {
                    StringBuilder sbB7 = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                    sbB7.append(w3(9999, "ladder_rank", mapW0));
                    z2.g("SGSCQ_SRV", sbB7.toString());
                    return L0("排名未达到领取条件", -4);
                }
                if (i20 == 1) {
                }
                z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
                return L0("该礼包已领取", -4);
            }
            i13 = iW3;
            z = false;
            if (!z) {
                StringBuilder sbB8 = a.b0.b("[Buy] ladder rank gift rank not qualified pk=", str17, " rank=");
                sbB8.append(w3(9999, "ladder_rank", mapW0));
                z2.g("SGSCQ_SRV", sbB8.toString());
                return L0("排名未达到领取条件", -4);
            }
            if (i20 == 1) {
            }
            z2.g("SGSCQ_SRV", "[Buy] ladder rank gift already claimed item=" + str12 + " pk=" + str17);
            return L0("该礼包已领取", -4);
        }
        i13 = iW3;
        if (!"791438".equals(str12)) {
        }
        strH4 = h4(str17, str12);
        if (!strH4.isEmpty()) {
            iB1 = p5.B0(g4(strH4), context);
            iZ2 = z1(strH4, mapW0);
            if (N0(iZ2, i20, iB1)) {
                z2.g("SGSCQ_SRV", "[Buy] shop item limit reached pk=" + strH4 + " purchased=" + iZ2 + " count=" + i20 + " limit=" + iB1);
                return L0("该商品已达购买上限", -4);
            }
        }
        v2VarZ3 = Z2(str17);
        if (v2VarZ3 != null) {
            iY1 = y1(str17, mapW0);
            if (N0(iY1, i20, p5.B0(v2VarZ3.f1454b, context))) {
                z2.g("SGSCQ_SRV", "[Buy] lingzhi good limit reached pk=" + str17 + " purchased=" + iY1 + " count=" + i20 + " limit=" + v2VarZ3.f1454b);
                return L0("该商品已达购买上限", -4);
            }
        }
        if ("43".equals(str17)) {
            obj3 = mapW0.get("purchased_daily_vip15_exp_book_gift");
            if (obj3 instanceof Map) {
                v2Var = v2VarZ3;
            } else {
                map2 = (Map) obj3;
                v2Var = v2VarZ3;
                if (!c.a.A(map2, "day", c7.b())) {
                    iE = c.a.e(map2, "count", 0);
                }
                if (N0(iE, i20, p5.B0(20, context))) {
                    z2.g("SGSCQ_SRV", "[Buy] daily vip15 exp book limit reached purchased=" + iE + " count=" + i20);
                    return L0("该商品已达购买上限", -4);
                }
            }
            iE = 0;
            if (N0(iE, i20, p5.B0(20, context))) {
                z2.g("SGSCQ_SRV", "[Buy] daily vip15 exp book limit reached purchased=" + iE + " count=" + i20);
                return L0("该商品已达购买上限", -4);
            }
        } else {
            v2Var = v2VarZ3;
        }
        if ("56".equals(str17)) {
            List list2 = com.sgscq.vpn.handler.x0.f1028c;
            if (p5.A(context) < 1) {
                z2.g("SGSCQ_SRV", "[Buy] afdian level not enough for exp book gift pk=".concat(str17));
                return L0("爱发电 LV1 及以上专享", -5);
            }
            iZ1 = z1("56", mapW0);
            if (N0(iZ1, i20, p5.B0(20, context))) {
                z2.g("SGSCQ_SRV", "[Buy] daily afdian exp book limit reached purchased=" + iZ1 + " count=" + i20);
                return L0("该商品已达购买上限", -4);
            }
        }
        strX3 = X3(str17);
        if (strX3.isEmpty()) {
            strB = l2.a(context, c7.f()).b(strX3);
            iX1 = x1(strX3, strB, mapW0);
            if (N0(iX1, i20, 1)) {
                z2.g("SGSCQ_SRV", "[Buy] fate skill limit reached skill=" + strX3 + " purchased=" + iX1 + " count=" + i20);
                return L0("该商品已达购买上限", -4);
            }
            str13 = strB;
        } else {
            str13 = str11;
        }
        if ("600045".equals(str12)) {
            strW3 = W3(str17, str12, map);
            if (strA4.isEmpty()) {
            }
            str14 = strX3;
            str15 = str13;
            if (strW3.isEmpty()) {
                strA = l2.a(context, c7.f()).a(strW3);
                iW1 = w1(strW3, strA, mapW0);
                if (N0(iW1, i20, 999)) {
                    z2.g("SGSCQ_SRV", "[Buy] fate box limit reached equip=" + strW3 + " purchased=" + iW1 + " count=" + i20);
                    return L0("该商品已达购买上限", -4);
                }
            } else {
                strA = str11;
            }
        } else {
            strW3 = W3(str17, str12, map);
            if (strA4.isEmpty()) {
            }
            str14 = strX3;
            str15 = str13;
            if (strW3.isEmpty()) {
                strA = l2.a(context, c7.f()).a(strW3);
                iW1 = w1(strW3, strA, mapW0);
                if (N0(iW1, i20, 999)) {
                    z2.g("SGSCQ_SRV", "[Buy] fate box limit reached equip=" + strW3 + " purchased=" + iW1 + " count=" + i20);
                    return L0("该商品已达购买上限", -4);
                }
            } else {
                strA = str11;
            }
        }
        if (com.sgscq.vpn.cloud.m0.y1(str12)) {
            iB0 = com.sgscq.vpn.cloud.m0.b0(str12, mapW0);
            iI2 = com.sgscq.vpn.cloud.m0.i2(i13, context, str12);
            if (N0(iB0, i20, iI2)) {
                z2.g("SGSCQ_SRV", "[Buy] vip limited quick item reached item=" + str12 + " used=" + iB0 + " count=" + i20 + " limit=" + iI2);
                return L0("今日购买次数已达VIP上限", -4);
            }
        }
        iV1 = p5.v1(i20, i10, str12, mapW0);
        iW4 = w3(h0(), "user_gold", mapW0);
        if (i11 == 4) {
            iW7 = w3(w3(0, "ladder_rank_salary", mapW0), "ladderRankSalary", mapW0);
            if (iW7 < iV1) {
                z2.g("SGSCQ_SRV", "[Buy] insufficient ladder salary: have=" + iW7 + " need=" + iV1);
                return L0("俸禄不足", -3);
            }
            int i29 = iW7 - iV1;
            c.a.t(i29, mapW0, "ladderRankSalary", i29, "ladder_rank_salary");
        } else if (i11 == 5) {
            iW5 = w3(0, "user_honor", mapW0);
            if (iW5 < iV1) {
                z2.g("SGSCQ_SRV", "[Buy] insufficient honor: have=" + iW5 + " need=" + iV1);
                return L0("魂玉不足", -3);
            }
            mapW0.put("user_honor", Integer.valueOf(iW5 - iV1));
            com.sgscq.vpn.handler.p.d(1, t0(mapW0), "105", c7.b(), mapW0);
        } else {
            if (iW4 < iV1) {
                z2.g("SGSCQ_SRV", "[Buy] insufficient gold: have=" + iW4 + " need=" + iV1);
                return L0("元宝不足", -3);
            }
            mapW0.put("user_gold", Integer.valueOf(iW4 - iV1));
        }
        iW6 = w3(iW4, "user_gold", mapW0);
        if (i9 != 0) {
            iT1 = i9;
        } else {
            iT1 = t1(str12);
        }
        if ("54".equals(str17)) {
            g3("shop_all_pet_gift", mapW0);
            return H1(iW6, str, mapW0);
        }
        if (iT1 != 1) {
        }
        if (!str14.isEmpty()) {
            return Z1(mapW0, str, str14, str15, i20, iW6);
        }
        if ("43".equals(str17)) {
            return R1(i20, iW6, str, mapW0);
        }
        if ("56".equals(str17)) {
            return Q1(i20, iW6, str, mapW0);
        }
        fVarR2 = r2(str17);
        if (fVarR2 != null) {
            m(i20, strH4, mapW0);
            return b2(mapW0, str, fVarR2, i20, iW6);
        }
        if (!strW3.isEmpty()) {
            w1VarA1 = w1.a1(context);
            Map mapF1 = w1VarA1.F0(strW3);
            i14 = iW6;
            if (mapF1 != null) {
            }
            if (!strValueOf.isEmpty()) {
                mapE0 = w1VarA1.E0(strValueOf);
                if (mapE0 == null) {
                    obj = str11;
                } else {
                    obj = mapE0.get("name");
                }
                String strValueOf3 = String.valueOf(obj);
                if (mapE0 == null) {
                    obj2 = str11;
                } else {
                    obj2 = mapE0.get("desc");
                }
                str16 = p5.b1(w1VarA1, strW3, strValueOf, strValueOf3, String.valueOf(obj2)).f1263a;
            }
            if (v2Var == null) {
                iY2 = Y2(str17, i20);
                v2Var2 = v2Var;
            } else {
                v2Var2 = v2Var;
                iY2 = v2Var2.f1453a * i20;
            }
            mapF = f(iY2, iT1, str16, mapW0);
            int i210 = iY2;
            iF = c.a.f(mapF, "pk_id", "0", 0);
            if (!strW3.isEmpty()) {
                D(strW3, str16, mapW0, mapF);
                k(i20, strW3, strA, mapW0);
                z2.e("SGSCQ_SRV", "[Buy] fate box pk=" + iF + " item=" + str12 + " grant=" + str16 + " → equip=" + strW3);
            }
            if (K2(str17, str12)) {
                g3(str12, mapW0);
            }
            if (v2Var2 != null) {
                l(i20, str17, mapW0);
            }
            if (!strH4.isEmpty()) {
                m(i20, strH4, mapW0);
            }
            if (com.sgscq.vpn.cloud.m0.y1(str12)) {
                com.sgscq.vpn.cloud.m0.D2(com.sgscq.vpn.cloud.m0.x2(str12, mapW0) + i20, str12, mapW0);
            }
            if (H2(str17)) {
                arrayListV = com.sgscq.vpn.handler.x0.v(mapW0);
            } else {
                arrayListV = null;
            }
            h5Var.S0(str, mapW0);
            iS = 5;
            int i211 = i14;
            String str112 = str12;
            String str113 = str16;
            v2Var3 = v2Var2;
            JSONObject jSONObjectT3 = this.f1553f.t((int) c7.g(), i211, w3(g0(), "user_energy", mapW0), w3(i0(), "user_power", mapW0), x3(f0(), mapW0), str, mapW0);
            ArrayList arrayList3 = new ArrayList();
            e(arrayList3, mapF);
            HashMap map5 = new HashMap(mapW0);
            map5.put("Item", p5.z0("del", new ArrayList(), "upd", arrayList3, "add", new ArrayList()));
            String strJ3 = h5Var.j(map5, jSONObjectT3, "Item");
            boolean zF4 = F2(str17);
            if (v2Var3 == null) {
                iS = s(iT1);
            }
            List listSingletonList3 = Collections.singletonList(V(i210, iT1, iS, String.valueOf(mapF.getOrDefault("item_id", str112)), mapF));
            h5Var.getClass();
            String strU2 = h5.u0(listSingletonList3);
            if (arrayListV != null) {
                StringBuilder sb3 = new StringBuilder(",\"item_list\":");
                h5Var.getClass();
                sb3.append(h5.u0(arrayListV));
                string = sb3.toString();
            } else {
                string = str11;
            }
            String str23 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + strU2 + string + ",\"user_info\":" + jSONObjectT3.toString() + ",\"cmn\":" + strJ3 + "}";
            StringBuilder sbL5 = c.a.l("[Buy] success uid=", str, " item=", str113, " x");
            sbL5.append(i210);
            sbL5.append(" gold ");
            sbL5.append(iW4);
            sbL5.append("->");
            sbL5.append(i211);
            z2.e("SGSCQ_SRV", sbL5.toString());
            return A4(str23);
        }
        i14 = iW6;
        str16 = str12;
        if (v2Var == null) {
            iY2 = Y2(str17, i20);
            v2Var2 = v2Var;
        } else {
            v2Var2 = v2Var;
            iY2 = v2Var2.f1453a * i20;
        }
        mapF = f(iY2, iT1, str16, mapW0);
        int i212 = iY2;
        iF = c.a.f(mapF, "pk_id", "0", 0);
        if (!strW3.isEmpty()) {
            D(strW3, str16, mapW0, mapF);
            k(i20, strW3, strA, mapW0);
            z2.e("SGSCQ_SRV", "[Buy] fate box pk=" + iF + " item=" + str12 + " grant=" + str16 + " → equip=" + strW3);
        }
        if (K2(str17, str12)) {
            g3(str12, mapW0);
        }
        if (v2Var2 != null) {
            l(i20, str17, mapW0);
        }
        if (!strH4.isEmpty()) {
            m(i20, strH4, mapW0);
        }
        if (com.sgscq.vpn.cloud.m0.y1(str12)) {
            com.sgscq.vpn.cloud.m0.D2(com.sgscq.vpn.cloud.m0.x2(str12, mapW0) + i20, str12, mapW0);
        }
        if (H2(str17)) {
            arrayListV = com.sgscq.vpn.handler.x0.v(mapW0);
        } else {
            arrayListV = null;
        }
        h5Var.S0(str, mapW0);
        iS = 5;
        int i213 = i14;
        String str114 = str12;
        String str115 = str16;
        v2Var3 = v2Var2;
        JSONObject jSONObjectT4 = this.f1553f.t((int) c7.g(), i213, w3(g0(), "user_energy", mapW0), w3(i0(), "user_power", mapW0), x3(f0(), mapW0), str, mapW0);
        ArrayList arrayList4 = new ArrayList();
        e(arrayList4, mapF);
        HashMap map6 = new HashMap(mapW0);
        map6.put("Item", p5.z0("del", new ArrayList(), "upd", arrayList4, "add", new ArrayList()));
        String strJ4 = h5Var.j(map6, jSONObjectT4, "Item");
        boolean zF5 = F2(str17);
        if (v2Var3 == null) {
            iS = s(iT1);
        }
        List listSingletonList4 = Collections.singletonList(V(i212, iT1, iS, String.valueOf(mapF.getOrDefault("item_id", str114)), mapF));
        h5Var.getClass();
        String strU3 = h5.u0(listSingletonList4);
        if (arrayListV != null) {
            StringBuilder sb4 = new StringBuilder(",\"item_list\":");
            h5Var.getClass();
            sb4.append(h5.u0(arrayListV));
            string = sb4.toString();
        } else {
            string = str11;
        }
        String str24 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + strU3 + string + ",\"user_info\":" + jSONObjectT4.toString() + ",\"cmn\":" + strJ4 + "}";
        StringBuilder sbL6 = c.a.l("[Buy] success uid=", str, " item=", str115, " x");
        sbL6.append(i212);
        sbL6.append(" gold ");
        sbL6.append(iW4);
        sbL6.append("->");
        sbL6.append(i213);
        z2.e("SGSCQ_SRV", sbL6.toString());
        return A4(str24);
    }

    public final void e4(ArrayList arrayList, ArrayList arrayList2) {
        if (this.P == null) {
            return;
        }
        boolean z = !arrayList.isEmpty();
        boolean z2 = arrayList2.isEmpty() ? false : true;
        if (z || z2) {
            com.sgscq.vpn.cloud.b bVar = this.P;
            bVar.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            com.sgscq.vpn.cloud.b.d(linkedHashMap, "lamp_raffle_equipment", arrayList);
            com.sgscq.vpn.cloud.b.d(linkedHashMap, "lamp_raffle_equipment_piece", arrayList2);
            ArrayList arrayList3 = new ArrayList(linkedHashMap.values());
            com.sgscq.vpn.cloud.a aVarF = bVar.f();
            if (arrayList3.isEmpty() || aVarF == null) {
                return;
            }
            synchronized (bVar.f272a) {
                if (!bVar.f284m) {
                    bVar.c(aVarF);
                    com.sgscq.vpn.cloud.b.h(bVar.f279h, arrayList3);
                    bVar.j();
                    if (!bVar.f283l) {
                        bVar.k(0L);
                    }
                }
            }
        }
    }

    public final int f0() {
        return v3("resource_coin", 0);
    }

    public final byte[] f2(Map map) {
        LinkedHashMap linkedHashMapG;
        String strO;
        h5 h5Var = this.f1553f;
        try {
            String strA1 = A1(map);
            Map mapW0 = h5Var.w0(strA1);
            if (mapW0 == null) {
                mapW0 = new LinkedHashMap();
            }
            p7 p7Var = this.K;
            if (p7Var == null) {
                linkedHashMapG = com.sgscq.vpn.handler.p0.g(mapW0, strA1, com.sgscq.vpn.handler.p0.L(), null);
            } else {
                String[] strArr = com.sgscq.vpn.handler.p0.f955a;
                if (!mapW0.containsKey("ladder_rank")) {
                    mapW0.put("ladder_rank", 1001);
                    mapW0.put("ladder_best_rank", 1001);
                }
                linkedHashMapG = com.sgscq.vpn.handler.p0.g(mapW0, strA1, com.sgscq.vpn.handler.p0.L(), p7Var);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapW0);
            Object obj = linkedHashMapG.get("delta_data");
            if (!(obj instanceof Map) || ((Map) obj).isEmpty()) {
                strO = O(strA1, mapW0, linkedHashMap, "Item");
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap((Map) obj);
                if (!linkedHashMap2.containsKey("Item") && (mapW0.get("Item") instanceof Map)) {
                    linkedHashMap2.put("Item", mapW0.get("Item"));
                }
                linkedHashMapG.put("delta_data", linkedHashMap2);
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (String str : String.valueOf(linkedHashMapG.getOrDefault("cmn_modules", "")).split(",")) {
                    String strTrim = str.trim();
                    if (!strTrim.isEmpty()) {
                        linkedHashSet.add(strTrim);
                    }
                }
                linkedHashSet.add("Player");
                linkedHashSet.add("Item");
                StringBuilder sb = new StringBuilder();
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    while (true) {
                        sb.append((CharSequence) it.next());
                        if (!it.hasNext()) {
                            break;
                        }
                        sb.append((CharSequence) ",");
                    }
                }
                linkedHashMapG.put("cmn_modules", sb.toString());
                strO = L(strA1, linkedHashMapG, mapW0);
            }
            linkedHashMapG.put("cmn", p5.u1(strO));
            h5Var.S0(strA1, mapW0);
            return A4(p5.s1(linkedHashMapG));
        } catch (Exception e2) {
            z2.d("SGSCQ_SRV", "[Ladder] getData error", e2);
            return A4("{\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"error_code\":0,\"ladder_info\":{}}");
        }
    }

    public final int g0() {
        return v3("resource_energy", 12);
    }

    public final byte[] g2(Map map) {
        String str;
        h5 h5Var = this.f1553f;
        Z.schedule(new b(Thread.currentThread(), 3), 45L, TimeUnit.SECONDS);
        try {
            String strA1 = A1(map);
            z2.e("SGSCQ_SRV", "[Ladder] fight: loadPlayer begin uid=" + strA1);
            Map mapW0 = h5Var.w0(strA1);
            StringBuilder sb = new StringBuilder("[Ladder] fight: loadPlayer done saved=");
            if (mapW0 == null) {
                str = "null";
            } else {
                str = mapW0.size() + " keys";
            }
            sb.append(str);
            z2.e("SGSCQ_SRV", sb.toString());
            if (mapW0 == null) {
                return L0("玩家数据不存在", -1);
            }
            z2.e("SGSCQ_SRV", "[Ladder] fight: applyClientFight begin");
            boolean zI0 = p5.i0(this.f1549b);
            p7 p7Var = this.K;
            LinkedHashMap linkedHashMapE = p7Var == null ? com.sgscq.vpn.handler.p0.e(mapW0, map, com.sgscq.vpn.handler.p0.L(), null, null, zI0) : com.sgscq.vpn.handler.p0.e(mapW0, map, com.sgscq.vpn.handler.p0.L(), p7Var, strA1, zI0);
            z2.e("SGSCQ_SRV", "[Ladder] fight: applyClientFight done, saving player");
            com.sgscq.vpn.cloud.m0.v2(p5.u1(L(strA1, linkedHashMapE, mapW0)), linkedHashMapE);
            if (Boolean.TRUE.equals(linkedHashMapE.get("result"))) {
                com.sgscq.vpn.handler.p.e("110", mapW0);
            }
            h5Var.S0(strA1, mapW0);
            z2.e("SGSCQ_SRV", "[Ladder] fight: savePlayer done, returning response");
            return A4(p5.s1(linkedHashMapE));
        } catch (Exception e2) {
            z2.d("SGSCQ_SRV", "[Ladder] fight error", e2);
            return L0("战斗处理失败", -1);
        }
    }

    public final int h0() {
        return v3("resource_gold", 0);
    }

    public final byte[] h2(Map map) {
        h5 h5Var = this.f1553f;
        try {
            String strA1 = A1(map);
            Map mapW0 = h5Var.w0(strA1);
            if (mapW0 == null) {
                return L0("玩家数据不存在", -1);
            }
            boolean z = true;
            int iC3 = C3(mapW0.getOrDefault("user_level", mapW0.get("level")), 1);
            int iN2 = com.sgscq.vpn.cloud.m0.n2(mapW0);
            if (iC3 < 50 && iN2 < 7) {
                z = false;
            }
            if (!z) {
                return L0("等级或VIP等级不足", -1);
            }
            boolean zI0 = p5.i0(this.f1549b);
            p7 p7Var = this.K;
            LinkedHashMap linkedHashMapH = p7Var == null ? com.sgscq.vpn.handler.p0.h(mapW0, map, com.sgscq.vpn.handler.p0.L(), null, null, zI0) : com.sgscq.vpn.handler.p0.h(mapW0, map, com.sgscq.vpn.handler.p0.L(), p7Var, strA1, zI0);
            com.sgscq.vpn.cloud.m0.v2(p5.u1(L(strA1, linkedHashMapH, mapW0)), linkedHashMapH);
            if (Boolean.TRUE.equals(linkedHashMapH.get("result"))) {
                com.sgscq.vpn.handler.p.e("110", mapW0);
            }
            h5Var.S0(strA1, mapW0);
            return A4(p5.s1(linkedHashMapH));
        } catch (Exception e2) {
            z2.d("SGSCQ_SRV", "[Ladder] tenFight error", e2);
            return L0("十连战处理失败", -1);
        }
    }

    public final int i0() {
        return v3("resource_power", 150);
    }

    /* JADX WARN: Code duplicated, block: B:81:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:83:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:86:0x0351 A[LOOP:1: B:84:0x034b->B:86:0x0351, LOOP_END] */
    public final byte[] i2(String str, String str2, Map map) {
        com.sgscq.vpn.config.l lVarA;
        String str3;
        String str4;
        LinkedHashMap linkedHashMapZ0;
        int i2;
        LinkedHashMap linkedHashMapZ1;
        int i3;
        Map linkedHashMap;
        String str5;
        String str6;
        Map map2;
        String str7;
        LinkedHashMap linkedHashMapZ2;
        LinkedHashMap linkedHashMapZ3;
        Map map3;
        StringBuilder sb;
        long jF = c7.f();
        h5 h5Var = this.f1553f;
        Map mapW0 = h5Var.w0(str);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        Context context = this.f1549b;
        j2 j2VarA = l2.a(context, jF);
        Iterator it = j2VarA.f1077d.iterator();
        while (true) {
            if (!it.hasNext()) {
                lVarA = null;
                break;
            }
            lVarA = ((k2) it.next()).a(j2VarA.f1078e, jF);
            if (Integer.MAX_VALUE >= lVarA.f604k && lVarA.f594a.equals(str2)) {
                break;
            }
        }
        String str8 = "msg";
        if (lVarA != null) {
            str3 = "user_gold";
            if (jF >= lVarA.f605l && jF < lVarA.f606m) {
                if (C3(mapW0.getOrDefault("user_vip_level", mapW0.getOrDefault("vip_level", 0)), 0) < lVarA.f604k) {
                    linkedHashMapZ3 = p5.z0("result", Boolean.FALSE, "msg", "VIP等级不足");
                } else {
                    int iL2 = w1.l2((String) map.getOrDefault("item_num", "1"), 1);
                    int i4 = iL2 > 0 ? iL2 : 1;
                    Object obj = mapW0.get("purchased_limited_shop_goods");
                    if (obj instanceof Map) {
                        linkedHashMap = (Map) obj;
                    } else {
                        linkedHashMap = new LinkedHashMap();
                        mapW0.put("purchased_limited_shop_goods", linkedHashMap);
                    }
                    String str9 = lVarA.f607n;
                    int iC3 = C3(linkedHashMap.get(str9), 0) + i4;
                    if (iC3 > lVarA.f603j) {
                        linkedHashMapZ2 = p5.z0("result", Boolean.FALSE, "msg", "该商品已达购买上限");
                        str5 = str3;
                        h5Var = h5Var;
                    } else {
                        try {
                            int iMultiplyExact = Math.multiplyExact(lVarA.f602i, i4);
                            str5 = str3;
                            h5Var = h5Var;
                            int iC4 = C3(mapW0.get(str5), 0);
                            if (iC4 < iMultiplyExact) {
                                linkedHashMapZ2 = p5.z0("result", Boolean.FALSE, "msg", "元宝不足");
                            } else {
                                mapW0.put(str5, Integer.valueOf(iC4 - iMultiplyExact));
                                linkedHashMap.put(str9, Integer.valueOf(iC3));
                                ArrayList arrayList = new ArrayList();
                                ArrayList arrayList2 = new ArrayList();
                                ArrayList arrayList3 = new ArrayList();
                                int iC = a.b0.c(lVarA.f595b);
                                int i5 = lVarA.f600g;
                                String str10 = lVarA.f599f;
                                str3 = str5;
                                if (iC == 0) {
                                    int i6 = i5 * i4;
                                    w1.k(i6, str10, mapW0);
                                    Map mapD1 = d1(str10, mapW0);
                                    if (mapD1 != null) {
                                        arrayList.add(mapD1);
                                    }
                                    arrayList3.add(b0(i6, 20, str10));
                                    str6 = "GeneralSoul";
                                } else if (iC != 1) {
                                    if (iC == 2) {
                                        int iC2 = c(context, str10, mapW0);
                                        w1.b2("equipment_id", str10, arrayList2, mapW0);
                                        String strValueOf = String.valueOf(iC2);
                                        Iterator it2 = w1.f0("Equipment", mapW0).iterator();
                                        do {
                                            if (!it2.hasNext()) {
                                                map2 = null;
                                                break;
                                            }
                                            map2 = (Map) it2.next();
                                        } while (!c.a.A(map2, "pk_id", strValueOf));
                                        if (map2 != null) {
                                            arrayList.add(map2);
                                        }
                                        arrayList3.add(b0(i5 * i4, 18, str10));
                                        str7 = "Equipment";
                                    } else if (iC != 3) {
                                        linkedHashMapZ2 = p5.z0("result", Boolean.FALSE, "msg", "道具不存在");
                                        linkedHashMapZ1 = linkedHashMapZ2;
                                        i3 = 0;
                                        str8 = "msg";
                                        str4 = "result";
                                    } else {
                                        int i7 = i5 * i4;
                                        for (int i8 = 0; i8 < i7; i8++) {
                                            t(arrayList, p(str10, mapW0));
                                        }
                                        arrayList3.add(b0(i7, 19, str10));
                                        str7 = "Skill";
                                    }
                                    str6 = str7;
                                } else {
                                    int i9 = i5 * i4;
                                    String str11 = lVarA.f598e;
                                    Map mapG = g(mapW0, str11, i9, 2, String.valueOf(2), !"600045".equals(str11));
                                    String str12 = lVarA.f598e;
                                    mapG.put("box_id", str12);
                                    mapG.put("fate_box_id", str12);
                                    mapG.put("fate_equip_id", str10);
                                    mapG.put("related_equipment_id", str10);
                                    E(mapW0, mapG, str10, context, str12);
                                    arrayList.add(mapG);
                                    arrayList3.add(W(i9, 2, s(2), str12, mapG));
                                    str6 = "Item";
                                }
                                HashMap map4 = new HashMap(mapW0);
                                map4.put(str6, p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList()));
                                ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(str6);
                                if (!arrayList2.isEmpty()) {
                                    map4.put("Atlas", p5.z0("del", new ArrayList(), "upd", arrayList2, "add", new ArrayList()));
                                    arrayList4.add("Atlas");
                                }
                                Boolean bool = Boolean.TRUE;
                                Object[] objArr = {"add_list", arrayList3, "delta_data", map4, "module", str6, "modules", arrayList4, "cmn_modules", arrayList4, str6, map4.get(str6), "cmn", p5.z0("modules", arrayList4, new Object[0])};
                                str4 = "result";
                                linkedHashMapZ1 = p5.z0(str4, bool, objArr);
                                i3 = 0;
                            }
                        } catch (ArithmeticException unused) {
                            str8 = "msg";
                            str4 = "result";
                            i2 = 0;
                            linkedHashMapZ0 = p5.z0(str4, Boolean.FALSE, str8, "商品价格错误");
                            linkedHashMapZ1 = linkedHashMapZ0;
                            i3 = i2;
                        }
                    }
                    str3 = str5;
                    linkedHashMapZ1 = linkedHashMapZ2;
                    i3 = 0;
                    str8 = "msg";
                    str4 = "result";
                }
                if (!Boolean.TRUE.equals(linkedHashMapZ1.get(str4))) {
                    return L0(String.valueOf(linkedHashMapZ1.getOrDefault(str8, "购买失败")), -4);
                }
                h5 h5Var2 = h5Var;
                h5Var2.S0(str, mapW0);
                JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), w3(h0(), str3, mapW0), w3(g0(), "user_energy", mapW0), w3(i0(), "user_power", mapW0), x3(f0(), mapW0), str, mapW0);
                map3 = (Map) linkedHashMapZ1.get("delta_data");
                List list = (List) linkedHashMapZ1.get("add_list");
                List<String> list2 = (List) linkedHashMapZ1.get("modules");
                String strJ = h5Var2.j(map3, jSONObjectT, (String[]) list2.toArray(new String[i3]));
                sb = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":");
                sb.append(h5.u0(list));
                for (String str13 : list2) {
                    sb.append(",\"");
                    sb.append(str13);
                    sb.append("\":");
                    sb.append(h5.z0(str13, map3));
                }
                sb.append(",\"user_info\":");
                sb.append(jSONObjectT.toString());
                sb.append(",\"cmn\":");
                sb.append(strJ);
                sb.append("}");
                z2.e("SGSCQ_SRV", "[Buy] limited product=" + str2 + " modules=" + list2);
                return A4(sb.toString());
            }
            str8 = "msg";
            str4 = "result";
            linkedHashMapZ0 = p5.z0(str4, Boolean.FALSE, str8, "限时商品已结束");
            i2 = 0;
            linkedHashMapZ1 = linkedHashMapZ0;
            i3 = i2;
            if (!Boolean.TRUE.equals(linkedHashMapZ1.get(str4))) {
                return L0(String.valueOf(linkedHashMapZ1.getOrDefault(str8, "购买失败")), -4);
            }
            h5 h5Var3 = h5Var;
            h5Var3.S0(str, mapW0);
            JSONObject jSONObjectT2 = this.f1553f.t((int) c7.g(), w3(h0(), str3, mapW0), w3(g0(), "user_energy", mapW0), w3(i0(), "user_power", mapW0), x3(f0(), mapW0), str, mapW0);
            map3 = (Map) linkedHashMapZ1.get("delta_data");
            List list3 = (List) linkedHashMapZ1.get("add_list");
            List<String> list4 = (List) linkedHashMapZ1.get("modules");
            String strJ2 = h5Var3.j(map3, jSONObjectT2, (String[]) list4.toArray(new String[i3]));
            sb = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":");
            sb.append(h5.u0(list3));
            while (r2.hasNext()) {
                sb.append(",\"");
                sb.append(str13);
                sb.append("\":");
                sb.append(h5.z0(str13, map3));
            }
            sb.append(",\"user_info\":");
            sb.append(jSONObjectT2.toString());
            sb.append(",\"cmn\":");
            sb.append(strJ2);
            sb.append("}");
            z2.e("SGSCQ_SRV", "[Buy] limited product=" + str2 + " modules=" + list4);
            return A4(sb.toString());
        }
        linkedHashMapZ3 = p5.z0("result", Boolean.FALSE, "msg", "道具不存在");
        str3 = "user_gold";
        linkedHashMapZ1 = linkedHashMapZ3;
        str8 = "msg";
        str4 = "result";
        str3 = str3;
        i3 = 0;
        h5Var = h5Var;
        if (!Boolean.TRUE.equals(linkedHashMapZ1.get(str4))) {
            return L0(String.valueOf(linkedHashMapZ1.getOrDefault(str8, "购买失败")), -4);
        }
        h5 h5Var4 = h5Var;
        h5Var4.S0(str, mapW0);
        JSONObject jSONObjectT3 = this.f1553f.t((int) c7.g(), w3(h0(), str3, mapW0), w3(g0(), "user_energy", mapW0), w3(i0(), "user_power", mapW0), x3(f0(), mapW0), str, mapW0);
        map3 = (Map) linkedHashMapZ1.get("delta_data");
        List list5 = (List) linkedHashMapZ1.get("add_list");
        List<String> list6 = (List) linkedHashMapZ1.get("modules");
        String strJ3 = h5Var4.j(map3, jSONObjectT3, (String[]) list6.toArray(new String[i3]));
        sb = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":");
        sb.append(h5.u0(list5));
        while (r2.hasNext()) {
            sb.append(",\"");
            sb.append(str13);
            sb.append("\":");
            sb.append(h5.z0(str13, map3));
        }
        sb.append(",\"user_info\":");
        sb.append(jSONObjectT3.toString());
        sb.append(",\"cmn\":");
        sb.append(strJ3);
        sb.append("}");
        z2.e("SGSCQ_SRV", "[Buy] limited product=" + str2 + " modules=" + list6);
        return A4(sb.toString());
    }

    public final byte[] j2(String str, String str2, String str3) {
        byte[] bArrK2;
        if (str2 == null) {
            str2 = "";
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int iIndexOf = str2.indexOf(63);
        if (iIndexOf >= 0) {
            for (String str4 : str2.substring(iIndexOf + 1).split("&")) {
                int iIndexOf2 = str4.indexOf(61);
                if (iIndexOf2 > 0) {
                    String strSubstring = str4.substring(0, iIndexOf2);
                    String strSubstring2 = str4.substring(iIndexOf2 + 1);
                    try {
                        strSubstring2 = URLDecoder.decode(strSubstring2, "UTF-8");
                    } catch (Exception unused) {
                    }
                    linkedHashMap.put(strSubstring, strSubstring2);
                }
            }
            str2 = str2.substring(0, iIndexOf);
        }
        String str5 = (String) linkedHashMap.get("data");
        if (str5 == null && !str3.isEmpty()) {
            str5 = str3;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (str5 != null && !str5.isEmpty()) {
            try {
                int iIndexOf3 = str5.indexOf(38);
                Iterator it = ((c.p) a.w.r(iIndexOf3 > 0 ? str5.substring(0, iIndexOf3) : str5).f().f27a.entrySet()).iterator();
                while (((c.q) it).hasNext()) {
                    Map.Entry entry = (Map.Entry) ((c.o) it).next();
                    a.q qVar = (a.q) entry.getValue();
                    linkedHashMap2.put((String) entry.getKey(), (qVar == null || (qVar instanceof a.s)) ? "" : qVar instanceof a.x ? qVar.i() : qVar.toString());
                }
            } catch (Exception unused2) {
            }
        }
        m2 m2Var = new m2(str2, str5, linkedHashMap, linkedHashMap2);
        String strA1 = A1((Map) m2Var.f1189d);
        if (strA1 == null || strA1.isEmpty() || "chat.getMessage".equals((String) ((Map) m2Var.f1188c).get("do"))) {
            return k2(str, m2Var, str3);
        }
        synchronized (this.f1553f.f737b.g(strA1)) {
            h5 h5Var = this.f1553f;
            String str6 = (String) ((Map) m2Var.f1188c).get("do");
            boolean z = "user.getPushData".equals(str6) || "email.getList".equals(str6) || "product.getList".equals(str6);
            p4 p4Var = h5Var.f737b.f1606e;
            ThreadLocal threadLocal = (ThreadLocal) p4Var.f1273c;
            if (threadLocal.get() != null) {
                throw new IllegalStateException("player cache scope already open");
            }
            threadLocal.set(new n4(strA1, z));
            o4 o4Var = new o4(p4Var);
            try {
                bArrK2 = k2(str, m2Var, str3);
                o4Var.close();
            } catch (Throwable th) {
                try {
                    o4Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return bArrK2;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:114:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:144:0x02a8 A[LOOP:1: B:143:0x02a6->B:144:0x02a8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:147:0x02d9 A[LOOP:2: B:146:0x02d7->B:147:0x02d9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:151:0x0301 A[LOOP:3: B:149:0x02fb->B:151:0x0301, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:147:0x02d9, please report this as an issue */
    public final ArrayList k1(int i2, String str, Map map) {
        int i3;
        String str2;
        Random random;
        Random random2;
        int i4;
        int i5;
        String str3;
        String str4;
        int i6;
        w1 w1Var;
        HashMap mapB4;
        Random random3;
        String str5;
        Iterator it;
        int i7;
        int i8;
        int i9;
        int i10;
        Context context = this.f1549b;
        String strD1 = w1.a1(context).d1(str);
        Random random4 = new Random();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        if ("791490".equals(str)) {
            while (i11 < i2) {
                arrayList.add(b4(1, random4.nextDouble() >= 0.9d ? "791773" : "791460"));
                i11++;
            }
        } else {
            int iF = 2;
            if (!"791465".equals(str)) {
                if ("600078".equals(str)) {
                    i3 = 1;
                } else if ("600079".equals(str)) {
                    i3 = 2;
                } else if ("600080".equals(str)) {
                    i3 = 3;
                } else if ("600081".equals(str)) {
                    i3 = 4;
                } else {
                    i3 = "600082".equals(str) ? 5 : 0;
                }
                if (i3 > 0) {
                    String strA = a.b0.a("00", i3);
                    String[] strArr = {c.a.i("601", strA), c.a.i("602", strA), c.a.i("603", strA), c.a.i("604", strA)};
                    int i12 = 0;
                    while (i12 < i2) {
                        arrayList.add(b4(36, strArr[Math.min(3, (int) Math.floor(random4.nextDouble() * ((double) 4)))]));
                        i12++;
                        strD1 = strD1;
                        random4 = random4;
                    }
                } else {
                    str2 = strD1;
                    random = random4;
                    Map mapC1 = w1.a1(context).c1(str);
                    boolean z = "600001".equals(str) || "600002".equals(str) || "600003".equals(str);
                    String str6 = "710016";
                    if (mapC1 != null || "710016".equals(str) || z) {
                        if ("710016".equals(str) || "600001".equals(str)) {
                            iF = 1;
                        } else if (!"600002".equals(str)) {
                            iF = "600003".equals(str) ? 3 : c.a.f(mapC1, "grade", "2", 2);
                        }
                        boolean z2 = "600001".equals(str) || "600002".equals(str);
                        double d2 = "600001".equals(str) ? 0.5d : 0.25d;
                        int i13 = 0;
                        while (i13 < i2) {
                            double dNextDouble = random.nextDouble();
                            if (!z2 || dNextDouble < 0.7d) {
                                random2 = random;
                                str2 = str2;
                                if (z2) {
                                    dNextDouble = random2.nextDouble();
                                }
                                if (str6.equals(str)) {
                                    i4 = 2;
                                } else if (iF != 1) {
                                    if (iF != 2) {
                                        if (iF == 3 && dNextDouble >= 0.9d) {
                                            i4 = 3;
                                        } else {
                                            i4 = 4;
                                        }
                                    } else if (dNextDouble < 0.6d) {
                                        i4 = 4;
                                    } else if (dNextDouble < 0.9d) {
                                        i4 = 3;
                                    } else {
                                        i4 = 2;
                                    }
                                } else if (dNextDouble < 0.4d) {
                                    i4 = 4;
                                } else if (dNextDouble < 0.7d) {
                                    i4 = 3;
                                } else {
                                    i4 = 2;
                                }
                                w1 w1VarA1 = w1.a1(context);
                                ArrayList arrayList2 = new ArrayList();
                                Iterator it2 = w1VarA1.h0().iterator();
                                while (it2.hasNext()) {
                                    Iterator it3 = it2;
                                    String str7 = (String) it2.next();
                                    int i14 = iF;
                                    Map mapZ0 = w1VarA1.z0(str7);
                                    String str8 = str6;
                                    if (mapZ0 == null) {
                                        w1Var = w1VarA1;
                                    } else {
                                        w1Var = w1VarA1;
                                        if (c.a.f(mapZ0, "grade", "4", 4) == i4) {
                                            arrayList2.add(str7);
                                        }
                                    }
                                    iF = i14;
                                    it2 = it3;
                                    str6 = str8;
                                    w1VarA1 = w1Var;
                                }
                                i5 = iF;
                                str3 = str6;
                                if (arrayList2.isEmpty()) {
                                    if (i4 == 1) {
                                        str4 = "111001";
                                    } else if (i4 != 2) {
                                        str4 = i4 != 3 ? "211001" : "213001";
                                    } else {
                                        str4 = "212002";
                                    }
                                    i6 = 2;
                                } else {
                                    str4 = (String) arrayList2.get(random2.nextInt(arrayList2.size()));
                                    i6 = 2;
                                }
                                arrayList.add(b4(i6, str4));
                            } else {
                                if (dNextDouble < 0.8999999999999999d) {
                                    random2 = random;
                                    mapB4 = b4(19, z0(random2, context, d2));
                                } else {
                                    random2 = random;
                                    mapB4 = b4(36, A0(random2, d2));
                                }
                                arrayList.add(mapB4);
                                i5 = iF;
                                str3 = str6;
                            }
                            i13++;
                            str2 = str2;
                            d2 = d2;
                            iF = i5;
                            str6 = str3;
                            random = random2;
                        }
                    }
                }
                random3 = random;
                str5 = str2;
                if ("600001".equals(str) && i2 > 0) {
                    int iMax = Math.max(0, w1.l2(String.valueOf(map.getOrDefault("gold_chest_pity_count", 0)), 0)) + i2;
                    i7 = iMax / 200;
                    map.put("gold_chest_pity_count", Integer.valueOf(iMax % 200));
                    for (i8 = 0; i8 < i7; i8++) {
                        arrayList.add(b4(18, y0(random3, context)));
                    }
                    int iMax2 = Math.max(0, w1.l2(String.valueOf(map.getOrDefault("gold_chest_god_fragment_pity_count", 0)), 0)) + i2;
                    i10 = iMax2 / 100;
                    map.put("gold_chest_god_fragment_pity_count", Integer.valueOf(iMax2 % 100));
                    for (i9 = 0; i9 < i10; i9++) {
                        arrayList.add(b4(15, "9" + y0(random3, context)));
                    }
                }
                it = arrayList.iterator();
                while (it.hasNext()) {
                    x4(c.a.j((Map) it.next(), "id", "", "item_id"), str5, map);
                }
                return arrayList;
            }
            while (i11 < i2) {
                arrayList.add(b4(2, B0(random4, context)));
                i11++;
            }
        }
        str2 = strD1;
        random = random4;
        random3 = random;
        str5 = str2;
        if ("600001".equals(str)) {
            int iMax3 = Math.max(0, w1.l2(String.valueOf(map.getOrDefault("gold_chest_pity_count", 0)), 0)) + i2;
            i7 = iMax3 / 200;
            map.put("gold_chest_pity_count", Integer.valueOf(iMax3 % 200));
            while (i8 < i7) {
                arrayList.add(b4(18, y0(random3, context)));
            }
            int iMax4 = Math.max(0, w1.l2(String.valueOf(map.getOrDefault("gold_chest_god_fragment_pity_count", 0)), 0)) + i2;
            i10 = iMax4 / 100;
            map.put("gold_chest_god_fragment_pity_count", Integer.valueOf(iMax4 % 100));
            while (i9 < i10) {
                arrayList.add(b4(15, "9" + y0(random3, context)));
            }
        }
        it = arrayList.iterator();
        while (it.hasNext()) {
            x4(c.a.j((Map) it.next(), "id", "", "item_id"), str5, map);
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:628:0x12f1  */
    /* JADX WARN: Code duplicated, block: B:629:0x12f6  */
    /* JADX WARN: Code duplicated, block: B:631:0x12f9  */
    /* JADX WARN: Code duplicated, block: B:634:0x1303  */
    /* JADX WARN: Code duplicated, block: B:635:0x1305  */
    /* JADX WARN: Code duplicated, block: B:638:0x130f  */
    /* JADX WARN: Code duplicated, block: B:640:0x1315  */
    /* JADX WARN: Code duplicated, block: B:643:0x1336  */
    /* JADX WARN: Code duplicated, block: B:645:0x133c  */
    /* JADX WARN: Code duplicated, block: B:648:0x1356  */
    /* JADX WARN: Code duplicated, block: B:650:0x135c  */
    /* JADX WARN: Code duplicated, block: B:653:0x1363  */
    /* JADX WARN: Code duplicated, block: B:655:0x1369  */
    /* JADX WARN: Code duplicated, block: B:660:0x1377  */
    /* JADX WARN: Code duplicated, block: B:663:0x1380  */
    /* JADX WARN: Code duplicated, block: B:664:0x1385  */
    /* JADX WARN: Code duplicated, block: B:669:0x1398  */
    /* JADX WARN: Code duplicated, block: B:672:0x13e4  */
    /* JADX WARN: Code duplicated, block: B:675:0x141e  */
    public final byte[] k2(String str, m2 m2Var, String str2) {
        boolean z;
        byte[] bArrK;
        byte[] bArrC;
        byte[] bArrP;
        byte[] bArrP2;
        byte[] bArrP3;
        byte[] bArrJ;
        byte[] bArrP4;
        byte[] bArrP5;
        byte[] bArrN;
        byte[] bArrX;
        byte[] bArrD;
        byte[] bArrI;
        byte[] bArrF;
        byte[] bArrP6;
        boolean z2;
        boolean z3;
        byte[] bArrP7;
        String str3;
        y2 y2Var;
        int i2;
        String str4;
        String str5;
        int iF;
        int i3;
        int iF2;
        int i4;
        Map mapJ0;
        int iF3;
        int iQ0;
        int iN1;
        int i5;
        int i6;
        int i7;
        int iN2;
        int iN3;
        int iN4;
        int i8;
        int iMin;
        int i9;
        double[] dArrM0;
        double[] dArrM1;
        LinkedHashMap linkedHashMapP;
        Boolean bool;
        String str6;
        int i10;
        double[] dArrM2;
        double[] dArr;
        m.e eVar;
        String str7;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        Map map;
        ArrayList arrayList5;
        Object obj;
        String str8;
        ArrayList arrayList6;
        StringBuilder sbL;
        ArrayList arrayList7;
        int i11;
        StringBuilder sb;
        String str9;
        byte[] bArrM;
        byte[] bArrV;
        byte[] bArrP8;
        byte[] bArrE;
        byte[] bArrK2;
        byte[] bArrI0;
        byte[] bArrI1;
        byte[] bArrB0;
        y2 y2Var2 = this;
        String strF = m2Var.f();
        Map mapD = m2Var.d();
        com.sgscq.vpn.handler.d1 d1Var = y2Var2.G;
        d1Var.getClass();
        if (com.sgscq.vpn.handler.d1.u(strF)) {
            return d1Var.O(strF);
        }
        String str10 = (String) ((Map) m2Var.f1188c).get("do");
        String strA = m2Var.a();
        com.sgscq.vpn.handler.k0 k0Var = y2Var2.J;
        k0Var.l(str10);
        z2.e("SGSCQ_SRV", "===== REQUEST: " + str + " action=" + str10 + " path=" + strF);
        if (strA != null && !strA.isEmpty()) {
            z2.e("SGSCQ_SRV", "[REQ_DATA] ".concat(strA));
        }
        Map mapB = m2Var.b();
        c0 c0VarA = c0.a(mapB);
        k0Var.m(c0VarA);
        if ("user.login".equals(str10) || "user.testLogin".equals(str10) || "login".equals(str10)) {
            if (c0VarA.f233a != 3) {
                z2.e("SGSCQ_SRV", "[ClientContext] " + c0VarA.c());
            } else {
                z2.g("SGSCQ_SRV", "[ClientContext] UNKNOWN " + c0VarA.c());
            }
        }
        if (mapD.containsKey("plgName") || P2(str10, strF, mapD)) {
            z = true;
        } else if (strF != null && strF.contains("/hd_resource/") && strF.contains(".zip")) {
            z = true;
        } else {
            z = false;
        }
        if (!N2(str10, z)) {
            String strA1 = y2Var2.A1(mapB);
            if (!y2Var2.L.c(strA1, (String) mapB.get("token"))) {
                z2.g("SGSCQ_SRV", "[Session] rejected action=" + str10 + " uid=" + strA1);
                return y2Var2.L0("服务已重启，请重新进入游戏登录", -401);
            }
            y2Var2.S3(mapB);
            y2Var2.D3(mapB);
        }
        if (("server.getList".equals(str10) || "notify.activate".equals(str10) || "menu.notice".equals(str10) || "atlas.getList".equals(str10) || "atlas.getSurrenderList".equals(str10) || (str10 != null && str10.startsWith("evolutionChest."))) && (bArrK = y2Var2.f1557j.K(str10, mapB)) != null) {
            return bArrK;
        }
        if (mapD.containsKey("plgName")) {
            String str11 = (String) mapD.get("plgName");
            String str12 = (String) mapD.getOrDefault("plgVer", "0");
            StringBuilder sbL2 = c.a.l("{\"ret\":0,\"result\":\"0\",\"resultCode\":0,\"code\":0,\"msg\":\"success\",\"resultMsg\":\"success\",\"plgName\":\"", str11, "\",\"plgVer\":", str12, ",\"ver\":\"1.0.0\",\"update\":false,\"latestVer\":");
            sbL2.append(str12);
            sbL2.append(",\"downloadUrl\":\"\",\"forceUpdate\":false,\"url\":\"http://10.0.0.1:");
            sbL2.append(y2Var2.W);
            sbL2.append("/index.php\"}");
            return y2Var2.X2(sbL2.toString(), 200);
        }
        byte[] bArrP9 = y2Var2.f1556i.P(str10, strF, mapD, mapB);
        if (bArrP9 != null) {
            return bArrP9;
        }
        if ("version.check".equals(str10) || "versionPlus.check".equals(str10)) {
            return y2Var2.f1555h.P(str10, strF, mapD, mapB);
        }
        if (("account.index".equals(str10) || "account.chgAccountInfo".equals(str10) || "account.bindWithBf".equals(str10) || "account.bindWithFacebook".equals(str10) || "account.bindWithEasysdk".equals(str10) || "user.login".equals(str10) || "user.testLogin".equals(str10) || "login".equals(str10) || "user.getPushData".equals(str10) || "user.chooseTeam".equals(str10) || "user.chgNickname".equals(str10) || "user.chgSign".equals(str10) || "user.chgGeneralskin".equals(str10) || "user.leaveMsg".equals(str10) || "user.save".equals(str10)) && (bArrC = y2Var2.f1554g.c(str10, mapB)) != null) {
            if (I2(str10)) {
                y2Var2.L.b(y2Var2.A1(mapB), (String) mapB.get("token"));
            }
            return bArrC;
        }
        if ("debug.dump".equals(str10)) {
            String strA2 = y2Var2.A1(mapB);
            if (strA2.isEmpty()) {
                strA2 = "100001";
            }
            try {
                JSONObject jSONObjectQ = y2Var2.Q(y2Var2.f1552e);
                Map<String, ?> all = y2Var2.f1551d.getAll();
                Map<String, ?> all2 = y2Var2.f1550c.getAll();
                JSONObject jSONObjectOptJSONObject = jSONObjectQ.optJSONObject("players");
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject(strA2) : null;
                Object objOpt = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.opt("first_choose_general") : null;
                StringBuilder sb2 = new StringBuilder("{\"result\":true,\"uid\":\"");
                sb2.append(strA2);
                sb2.append("\",\"player_keys\":");
                sb2.append(jSONObjectQ.optJSONArray("player_keys").toString());
                sb2.append(",\"first_choose_general\":");
                if (objOpt == null) {
                    objOpt = "\"not_set\"";
                }
                sb2.append(objOpt);
                sb2.append(",\"guide_keys\":");
                sb2.append(new JSONArray((Collection) all.keySet()).toString());
                sb2.append(",\"config_keys\":");
                sb2.append(new JSONArray((Collection) all2.keySet()).toString());
                sb2.append("}");
                return y2Var2.X2(sb2.toString(), 200);
            } catch (Exception e2) {
                z2.c("SGSCQ_SRV", "[DebugDump] Error: " + e2.getMessage());
                return y2Var2.X2("{\"result\":false,\"msg\":\"" + e2.getMessage() + "\"}", 500);
            }
        }
        if (com.sgscq.vpn.handler.w.j0(str10) && (bArrB0 = y2Var2.f1561n.b0(str10, mapB)) != null) {
            return bArrB0;
        }
        if (str10 != null && str10.startsWith("wine.") && (bArrI1 = y2Var2.f1560m.i0(str10, mapB)) != null) {
            return bArrI1;
        }
        if ("alarm.index".equals(str10)) {
            return y2Var2.X2("{\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"alarm_info\":[],\"data\":{\"alive\":true}}", 200);
        }
        if ("plugin.status".equals(str10) || "v1.plugin.status".equals(str10)) {
            return y2Var2.X2("{\"ret\":0,\"result\":0,\"data\":{\"plugins\":[]}}", 200);
        }
        if ("blacklist".equals(str10) || "v1.blacklist".equals(str10)) {
            return y2Var2.X2("{\"ret\":0,\"result\":0}", 200);
        }
        if (str10 != null && ((str10.startsWith("wish.") || str10.startsWith("mystery.") || str10.startsWith("spiritStoneGoods.") || "item.getList".equals(str10) || "item.getQuickList".equals(str10) || "item.quickBuy".equals(str10) || "item.resolveItem".equals(str10) || "item.deleteItem".equals(str10) || str10.startsWith("product.") || str10.startsWith("pay.") || "payIos.iosCharge".equals(str10)) && (bArrI0 = y2Var2.f1560m.i0(str10, mapB)) != null)) {
            return bArrI0;
        }
        if (str10 != null && str10.startsWith("gem.") && (bArrK2 = y2Var2.f1558k.k(str10, mapB)) != null) {
            return bArrK2;
        }
        if (str10 != null && str10.startsWith("buddy.") && (bArrE = y2Var2.f1559l.e(str10, mapB)) != null) {
            return bArrE;
        }
        if (com.sgscq.vpn.handler.t0.q(str10)) {
            if (!com.sgscq.vpn.cloud.m0.q1(str10)) {
                return s3();
            }
            byte[] bArrP10 = y2Var2.z.p(str10, mapB);
            if (bArrP10 != null) {
                return bArrP10;
            }
        }
        if (com.sgscq.vpn.handler.d1.d0(str10) && (bArrP8 = y2Var2.A.P(str10, strF, mapD, mapB)) != null) {
            return bArrP8;
        }
        if (com.sgscq.vpn.handler.c.w(str10) && (bArrV = y2Var2.D.v(str10, mapB)) != null) {
            return bArrV;
        }
        if (com.sgscq.vpn.handler.z0.o(str10) && (bArrM = y2Var2.E.m(str10, mapB)) != null) {
            return bArrM;
        }
        if ("item.buy".equals(str10)) {
            return y2Var2.d2(mapB);
        }
        boolean zEquals = "item.use".equals(str10);
        Context context = y2Var2.f1549b;
        h5 h5Var = y2Var2.f1553f;
        if (zEquals) {
            String strA3 = y2Var2.A1(mapB);
            String str13 = (String) mapB.getOrDefault("user_item_id", "");
            int iL2 = w1.l2((String) mapB.getOrDefault("item_num", "1"), 1);
            Map mapW0 = h5Var.w0(strA3);
            StringBuilder sbL3 = c.a.l("[ItemUse] uid=", strA3, " user_item_id=", str13, " count=");
            sbL3.append(iL2);
            z2.e("SGSCQ_SRV", sbL3.toString());
            ArrayList arrayList8 = new ArrayList();
            ArrayList arrayList9 = new ArrayList();
            ArrayList arrayList10 = new ArrayList();
            ArrayList arrayList11 = new ArrayList();
            String str14 = "Skill";
            ArrayList arrayList12 = new ArrayList();
            ArrayList arrayList13 = new ArrayList();
            ArrayList arrayList14 = new ArrayList();
            if (mapW0 != null) {
                String strR1 = r1(str13, mapW0);
                String strS1 = y2Var2.s1(strR1);
                int iT1 = y2Var2.t1(strR1);
                arrayList2 = arrayList13;
                arrayList3 = arrayList11;
                z2.e("SGSCQ_SRV", "[ItemUse] item_id=" + strR1 + " related_chest=" + strS1);
                if (!O2(iT1, iL2)) {
                    z2.g("SGSCQ_SRV", "[ItemUse] reject oversized reward container item=" + strR1 + " type=" + iT1 + " count=" + iL2);
                    return y2Var2.L0("宝箱或礼包每次最多使用100个", -4);
                }
                if (u2(strR1, iT1)) {
                    z2.g("SGSCQ_SRV", "[ItemUse] reject feature-only item=" + strR1 + " type=" + iT1);
                    return y2Var2.L0("此物品不可直接使用，请前往对应功能使用", -3);
                }
                w1 w1VarA1 = w1.a1(context);
                String strU3 = U3(w1VarA1, str13, strR1, mapW0);
                if (!strU3.isEmpty() || A2(w1VarA1, strR1)) {
                    String str15 = strA3;
                    ArrayList arrayList15 = arrayList12;
                    h5 h5Var2 = h5Var;
                    Map map2 = mapB;
                    if (strU3.isEmpty()) {
                        z2.g("SGSCQ_SRV", "[FateBox] missing binding pk=" + str13 + " item=" + strR1);
                        return y2Var2.L0("缘分礼盒不存在", -2);
                    }
                    if (strU3.equals(strR1)) {
                        map2 = map2;
                        str15 = str15;
                        h5Var2 = h5Var2;
                        obj = "";
                    } else {
                        String strL1 = l1(str13, mapW0);
                        Map mapY0 = Y0(str13, mapW0);
                        if (!strL1.isEmpty() || mapY0 == null) {
                            obj = "";
                        } else {
                            obj = "";
                            strL1 = String.valueOf(mapY0.getOrDefault("fate_equip_id", obj));
                        }
                        if (strL1.isEmpty()) {
                            sbL = c.a.l("[FateBox] display=", strR1, " pk=", str13, " → box=");
                        } else {
                            sbL = c.a.l("[FateBox] display=", strR1, " pk=", str13, " → equip=");
                            sbL.append(strL1);
                            sbL.append(" box=");
                        }
                        sbL.append(strU3);
                        z2.e("SGSCQ_SRV", sbL.toString());
                    }
                    int iQ1 = q0(iL2, str13, mapW0);
                    if (iQ1 > 0) {
                        arrayList14.add(str13);
                    }
                    List<Map> listU3 = y2Var2.u3(iQ1, strU3, mapW0);
                    arrayList8.addAll(listU3);
                    m0(listU3, arrayList9, arrayList10);
                    for (Map map3 : listU3) {
                        String strValueOf = String.valueOf(map3.getOrDefault("type", obj));
                        if (String.valueOf(c.a.a(19)).equals(strValueOf) || String.valueOf(s(c.a.a(19))).equals(strValueOf)) {
                            str8 = str14;
                            arrayList6 = arrayList15;
                            t(arrayList6, S0(String.valueOf(map3.getOrDefault("pk_id", obj)), w1.f0(str8, mapW0)));
                        } else {
                            arrayList6 = arrayList15;
                            str8 = str14;
                        }
                        arrayList15 = arrayList6;
                        str14 = str8;
                    }
                    arrayList14.addAll(Q3(mapW0));
                    String str16 = str15;
                    y2Var2.E3(str16, mapW0, map2);
                    h5Var2.S0(str16, mapW0);
                    y2Var2.e4(arrayList9, arrayList10);
                    String strM = y2Var2.M(str16, X(mapW0, arrayList8, arrayList9, arrayList10, arrayList3, arrayList15, new ArrayList(), arrayList14), "Item", "Equipment", "EquipmentPiece", "General", "Skill", "GeneralSoul", "Atlas");
                    String str17 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"add_list\":" + h5.u0(arrayList8) + ",\"cmn\":" + strM + "}";
                    StringBuilder sbL4 = c.a.l("[FateBox] uid=", str16, " box=", strU3, " display=");
                    sbL4.append(strR1);
                    sbL4.append(" consumed=");
                    sbL4.append(iQ1);
                    sbL4.append(" drops=");
                    sbL4.append(arrayList8.size());
                    z2.e("SGSCQ_SRV", sbL4.toString());
                    return y2Var2.A4(str17);
                }
                if (strS1.isEmpty() || "0".equals(strS1)) {
                    if (strR1.isEmpty()) {
                        arrayList7 = arrayList10;
                        map = mapW0;
                        arrayList9 = arrayList9;
                        arrayList12 = arrayList12;
                        if (q0(iL2, str13, map) > 0) {
                            arrayList14.add(str13);
                        }
                    } else {
                        if (E2(strR1)) {
                            LinkedHashMap linkedHashMapA = A(iL2, str13, mapW0);
                            Object obj2 = linkedHashMapA.get("add_list");
                            arrayList8.addAll(obj2 instanceof List ? (List) obj2 : new ArrayList());
                            Object obj3 = linkedHashMapA.get("deleted_item_pk_ids");
                            arrayList14.addAll(obj3 instanceof List ? (List) obj3 : new ArrayList());
                            sb = new StringBuilder("[ItemUse] 天梯挑战次数+");
                            sb.append(linkedHashMapA.getOrDefault("added_times", 0));
                            sb.append(" -> ");
                            sb.append(mapW0.getOrDefault("ladderChallengeTimes", 0));
                        } else if (iT1 == c.a.a(2)) {
                            if (q0(iL2, str13, mapW0) > 0) {
                                arrayList14.add(str13);
                            }
                            ArrayList arrayListK1 = y2Var2.k1(iL2, strR1, mapW0);
                            y2Var2.n(mapW0, arrayListK1, arrayList8, arrayList12);
                            sb = a.b0.b("[ItemUse] 直接开宝箱 ", strR1, " 获得 ");
                            sb.append(arrayListK1.size());
                            str9 = " 件奖励";
                        } else if (iT1 == c.a.a(5) || iT1 == c.a.a(23)) {
                            arrayList7 = arrayList10;
                            map = mapW0;
                            arrayList12 = arrayList12;
                            int iQ2 = y2Var2.q1(strR1);
                            int iF4 = c.a.f(map, "user_power", "150", 150);
                            int iQ3 = q0(iL2, str13, map);
                            if (iQ3 > 0) {
                                int i12 = iQ2 * iQ3;
                                map.put("user_power", Integer.valueOf(iF4 + i12));
                                p5.X0(iQ3, strR1, map);
                                com.sgscq.vpn.handler.p.d(iQ3, t0(map), "106", c7.b(), map);
                                arrayList8.add(a0(i12, iT1, strR1));
                                arrayList14.add(str13);
                            }
                            z2.e("SGSCQ_SRV", "[ItemUse] 体力+" + (iQ2 * iQ3) + " -> " + map.getOrDefault("user_power", Integer.valueOf(iF4)));
                        } else {
                            if (iT1 == c.a.a(6) || iT1 == c.a.a(24)) {
                                arrayList7 = arrayList10;
                                map = mapW0;
                                int iQ4 = y2Var2.q1(strR1);
                                arrayList2 = arrayList2;
                                arrayList3 = arrayList3;
                                int iF5 = c.a.f(map, "user_energy", "200", 200);
                                int iQ5 = q0(iL2, str13, map);
                                if (iQ5 > 0) {
                                    int i13 = iQ4 * iQ5;
                                    map.put("user_energy", Integer.valueOf(iF5 + i13));
                                    p5.X0(iQ5, strR1, map);
                                    arrayList8.add(a0(i13, iT1, strR1));
                                    arrayList14.add(str13);
                                }
                                z2.e("SGSCQ_SRV", "[ItemUse] 精力+" + (iQ5 * iQ4) + " -> " + map.getOrDefault("user_energy", Integer.valueOf(iF5)));
                            } else {
                                if (T2(strR1)) {
                                    int iW3 = w3(h0(), "user_gold", mapW0);
                                    int iQ6 = q0(iL2, str13, mapW0);
                                    int iC1 = C1(strR1) * iQ6;
                                    if (iQ6 > 0) {
                                        mapW0.put("user_gold", Integer.valueOf(iW3 + iC1));
                                        arrayList14.add(str13);
                                        arrayList8.add(P(iC1, 16, "600034"));
                                    }
                                    sb = new StringBuilder("[ItemUse] 元宝包+");
                                    sb.append(iC1);
                                    sb.append(" -> ");
                                    i11 = iW3 + iC1;
                                } else {
                                    if (S2(strR1)) {
                                        int iW4 = w3(h0(), "user_gold", mapW0);
                                        int iB1 = B1(iL2);
                                        i11 = iW4 + iB1;
                                        mapW0.put("user_gold", Integer.valueOf(i11));
                                        if (q0(iL2, str13, mapW0) > 0) {
                                            arrayList14.add(str13);
                                        }
                                        arrayList8.add(P(iB1, 16, "600034"));
                                        sb = new StringBuilder("[ItemUse] 元宝+");
                                        sb.append(iB1);
                                        sb.append(" -> ");
                                    } else if (strR1.startsWith("79") || strR1.startsWith("71") || strR1.startsWith("72")) {
                                        map = mapW0;
                                        u2 u2VarT3 = t3(mapW0, str13, strR1, iL2, arrayList14);
                                        arrayList8.addAll(u2VarT3.f1425a);
                                        arrayList9.addAll(u2VarT3.f1426b);
                                        arrayList10.addAll(u2VarT3.f1427c);
                                        arrayList3.addAll(u2VarT3.f1428d);
                                        arrayList12.addAll(u2VarT3.f1429e);
                                        arrayList2.addAll(u2VarT3.f1430f);
                                        arrayList7 = arrayList10;
                                    } else {
                                        LinkedHashMap linkedHashMapB = y2Var2.B(iL2, str13, mapW0);
                                        Object obj4 = linkedHashMapB.get("add_list");
                                        arrayList8.addAll(obj4 instanceof List ? (List) obj4 : new ArrayList());
                                        Object obj5 = linkedHashMapB.get("changed_skills");
                                        arrayList12.addAll(obj5 instanceof List ? (List) obj5 : new ArrayList());
                                        Object obj6 = linkedHashMapB.get("deleted_item_pk_ids");
                                        arrayList14.addAll(obj6 instanceof List ? (List) obj6 : new ArrayList());
                                    }
                                    arrayList7 = arrayList10;
                                    map = mapW0;
                                    arrayList9 = arrayList9;
                                    arrayList12 = arrayList12;
                                }
                                sb.append(i11);
                            }
                            arrayList9 = arrayList9;
                        }
                        z2.e("SGSCQ_SRV", sb.toString());
                        arrayList7 = arrayList10;
                        map = mapW0;
                        arrayList9 = arrayList9;
                        arrayList12 = arrayList12;
                    }
                    arrayList14.addAll(Q3(map));
                    y2Var2 = this;
                    y2Var2.E3(strA3, map, mapB);
                    h5Var.S0(strA3, map);
                    arrayList = arrayList7;
                    arrayList5 = arrayList9;
                    y2Var2.e4(arrayList5, arrayList);
                    arrayList4 = arrayList12;
                    str7 = strA3;
                } else {
                    p4 p4VarO3 = O3(mapW0, str13, strR1, strS1, iT1, iL2);
                    arrayList14.addAll((List) p4VarO3.f1273c);
                    StringBuilder sb3 = new StringBuilder("[ItemUse] 箱钥配对 chest=");
                    c.a.y(sb3, (String) p4VarO3.f1272b, " current=", strR1, " related=");
                    sb3.append(strS1);
                    sb3.append(" consumed=");
                    int i14 = p4VarO3.f1271a;
                    sb3.append(i14);
                    z2.e("SGSCQ_SRV", sb3.toString());
                    ArrayList arrayListK2 = y2Var2.k1(i14, (String) p4VarO3.f1272b, mapW0);
                    y2Var2.n(mapW0, arrayListK2, arrayList8, arrayList12);
                    if (i14 > 0) {
                        com.sgscq.vpn.handler.p.e("113", mapW0);
                    }
                    sb = new StringBuilder("[ItemUse] 生成奖励 ");
                    sb.append(arrayListK2.size());
                    str9 = " 件";
                }
                sb.append(str9);
                z2.e("SGSCQ_SRV", sb.toString());
                arrayList7 = arrayList10;
                map = mapW0;
                arrayList9 = arrayList9;
                arrayList12 = arrayList12;
                arrayList14.addAll(Q3(map));
                y2Var2 = this;
                y2Var2.E3(strA3, map, mapB);
                h5Var.S0(strA3, map);
                arrayList = arrayList7;
                arrayList5 = arrayList9;
                y2Var2.e4(arrayList5, arrayList);
                arrayList4 = arrayList12;
                str7 = strA3;
            } else {
                str7 = strA3;
                arrayList = arrayList10;
                arrayList2 = arrayList13;
                arrayList3 = arrayList11;
                arrayList4 = arrayList12;
                map = mapW0;
                arrayList5 = arrayList9;
            }
            HashMap mapX = map != null ? X(map, arrayList8, arrayList5, arrayList, arrayList3, arrayList4, arrayList2, arrayList14) : null;
            return y2Var2.A4(Y(arrayList8, arrayList5, mapX != null ? h5.z0("Item", mapX) : "{}", mapX != null ? h5.z0("Equipment", mapX) : "{}", mapX != null ? h5.z0("EquipmentPiece", mapX) : "{}", mapX != null ? h5.z0("General", mapX) : "{}", mapX != null ? h5.z0(str14, mapX) : "{}", mapX != null ? y2Var2.M(str7, mapX, u("Gems", mapX, "Item", "Equipment", "EquipmentPiece", "General", "Skill", "GeneralSoul", "Atlas")) : "{}"));
        }
        if ("item.buyPlusUse".equals(str10)) {
            String strA4 = y2Var2.A1(mapB);
            String str18 = (String) mapB.getOrDefault("item_id", "");
            int iL3 = w1.l2((String) mapB.getOrDefault("item_num", "1"), 1);
            if (str18.isEmpty()) {
                return !((String) mapB.getOrDefault("item_advanced_id", "")).isEmpty() ? y2Var2.d2(mapB) : y2Var2.L0("缺少道具编号", -1);
            }
            Map mapW1 = h5Var.w0(strA4);
            if (mapW1 == null) {
                return y2Var2.L0("玩家数据不存在", -1);
            }
            HashMap mapP1 = y2Var2.p1(str18);
            List list = (List) mapP1.get("items");
            List list2 = (List) mapP1.get("equipments");
            List list3 = (List) mapP1.get("generals");
            List list4 = (List) mapP1.get("skills");
            int iL4 = w1.l2(String.valueOf(mapP1.getOrDefault("coin", "0")), 0);
            ArrayList arrayListP0 = p0(iL3, str18, mapW1);
            arrayListP0.isEmpty();
            ArrayList arrayList16 = new ArrayList();
            ArrayList arrayList17 = new ArrayList();
            ArrayList arrayList18 = new ArrayList();
            ArrayList arrayList19 = new ArrayList();
            u2 u2VarG1 = G1(mapW1, list, list2, list3, list4, iL3);
            arrayList16.addAll(u2VarG1.f1425a);
            arrayList17.addAll(u2VarG1.f1427c);
            arrayList18.addAll(u2VarG1.f1428d);
            arrayList19.addAll(u2VarG1.f1429e);
            ArrayList arrayList20 = new ArrayList(u2VarG1.f1426b);
            ArrayList arrayList21 = new ArrayList(u2VarG1.f1430f);
            if (iL4 > 0) {
                mapW1.put("user_coin", Long.valueOf(x3(f0(), mapW1) + ((long) (Math.max(1, iL3) * iL4))));
                arrayList16.add(P(Math.max(1, iL3) * iL4, 1, "600026"));
            }
            ArrayList arrayListQ3 = Q3(mapW1);
            ArrayList arrayList22 = new ArrayList(arrayListP0);
            for (Object obj7 : arrayListQ3) {
                if (!arrayList22.contains(obj7)) {
                    arrayList22.add(obj7);
                }
            }
            h5Var.S0(strA4, mapW1);
            HashMap mapX2 = X(mapW1, arrayList16, arrayList20, arrayList17, arrayList18, arrayList19, arrayList21, arrayList22);
            return A4(Y(arrayList16, arrayList20, h5.z0("Item", mapX2), h5.z0("Equipment", mapX2), h5.z0("EquipmentPiece", mapX2), h5.z0("General", mapX2), h5.z0("Skill", mapX2), M(strA4, mapX2, u("Gems", mapX2, "Item", "Equipment", "EquipmentPiece", "General", "Skill", "GeneralSoul", "Atlas"))));
        }
        if ("equipment.upgrade".equals(str10) || "equipment.multiUpgrade".equals(str10)) {
            return y2Var2.Y1(str10, mapB);
        }
        if ("equipment.refine".equals(str10)) {
            return y2Var2.X1(mapB);
        }
        if (str10 != null && str10.startsWith("equipment.")) {
            return y2Var2.W1(str10, mapB);
        }
        if (str10 == null || !str10.startsWith("general.")) {
            String str19 = "{}";
            boolean z4 = false;
            String strN = null;
            boolean z5 = true;
            if (str10 != null && str10.startsWith("team.")) {
                String strA5 = y2Var2.A1(mapB);
                Map mapW2 = h5Var.w0(strA5);
                z2.e("SGSCQ_SRV", "[Team] uid=" + strA5 + " action=" + str10);
                if (mapW2 == null) {
                    return y2Var2.p3(str19);
                }
                if ("team.getMostTeamInfo".equals(str10)) {
                    M3(mapW2);
                    h5Var.S0(strA5, mapW2);
                    return y2Var2.r3(strA5, mapW2);
                }
                y2Var2.y4(str2, mapW2, mapB);
                M3(mapW2);
                y2Var2.E3(strA5, mapW2, mapB);
                h5Var.S0(strA5, mapW2);
                HashMap mapD0 = d0(mapW2);
                return y2Var2.q3(y2Var2.M(strA5, mapD0, s4(mapD0)), strA5, mapD0);
            }
            if ("skill.upgradeskillLevel".equals(str10)) {
                return y2Var2.p2(mapB);
            }
            if ("skill.melt".equals(str10) || "skill.multiMelt".equals(str10)) {
                return y2Var2.n2(mapB, "skill.multiMelt".equals(str10));
            }
            if (str10 != null && str10.startsWith("skill.")) {
                String strA6 = y2Var2.A1(mapB);
                Map mapW3 = h5Var.w0(strA6);
                z2.e("SGSCQ_SRV", "[Skill] uid=" + strA6 + " action=" + str10);
                if (mapW3 != null) {
                    h5Var.S0(strA6, mapW3);
                }
                return y2Var2.p3(mapW3 != null ? y2Var2.N(strA6, mapW3) : "{}");
            }
            if ("skillRefine.skillRefine".equals(str10)) {
                return !com.sgscq.vpn.cloud.m0.q1(str10) ? y2Var2.A4(p5.s1(com.sgscq.vpn.cloud.m0.Z2())) : y2Var2.o2(mapB);
            }
            if ("ladder.getData".equals(str10) || "ladder.init".equals(str10)) {
                return y2Var2.f2(mapB);
            }
            if ("ladder.fight".equals(str10)) {
                return y2Var2.g2(mapB);
            }
            if ("ladder.tenFight".equals(str10) || "ladder.repeatedlyFight".equals(str10)) {
                return y2Var2.h2(mapB);
            }
            if (com.sgscq.vpn.handler.d1.g0(str10) && (bArrP7 = y2Var2.w.P(str10, strF, mapD, mapB)) != null) {
                return bArrP7;
            }
            if ("climbLadder.startInfo".equals(str10) || "climbLadder.info".equals(str10)) {
                return P1();
            }
            if ("climbLadder.fight".equals(str10)) {
                return N1();
            }
            if ("climbLadder.pass".equals(str10)) {
                return O1();
            }
            if ("chaos.info".equals(str10)) {
                return K1();
            }
            if ("chaos.fight".equals(str10)) {
                return J1();
            }
            if ("chaos.skillPiece".equals(str10)) {
                return L1();
            }
            if ("decisiveBattle.info".equals(str10) || "decisiveBattle.mainInfo".equals(str10)) {
                return S1();
            }
            if ("decisiveBattle.refreshTeam".equals(str10)) {
                return T1();
            }
            boolean zEquals2 = "chat.getMessage".equals(str10);
            t tVar = y2Var2.N;
            if (zEquals2) {
                String strA7 = y2Var2.A1(mapB);
                com.sgscq.vpn.cloud.f0 f0Var = y2Var2.M;
                if (f0Var == null || !f0Var.b(strA7)) {
                    return y2Var2.A4(I("[]"));
                }
                try {
                    com.sgscq.vpn.battle.a aVarA = y2Var2.M.a(strA7);
                    Map mapW4 = h5Var.w0(strA7);
                    int i15 = aVarA.f212a;
                    if (mapW4 != null && tVar != null && t.f(i15)) {
                        try {
                            z4 = tVar.i(i15, strA7, mapW4).f339a;
                        } catch (Exception e3) {
                            z2.g("SGSCQ_SRV", "[CloudMail] chat online reward failed: " + e3.getMessage());
                        }
                    }
                    if (mapW4 == null || !c.e.l(mapW4, (com.sgscq.vpn.cloud.g) aVarA.f214c)) {
                        z5 = z4;
                    }
                    if (z5) {
                        h5Var.S0(strA7, mapW4);
                        strN = y2Var2.N(strA7, mapW4);
                    }
                    return y2Var2.A4(J(p5.s1(aVarA.f213b), l3(strN, i15)));
                } catch (Exception e4) {
                    c.a.u(e4, new StringBuilder("[CloudChat] getMessage failed: "), "SGSCQ_SRV");
                    return ((e4 instanceof com.sgscq.vpn.cloud.a0) && "session_replaced".equals(((com.sgscq.vpn.cloud.a0) e4).a())) ? y2Var2.A4(I(p5.s1(Collections.singletonList(com.sgscq.vpn.cloud.f0.d(c7.g()))))) : y2Var2.A4(I("[]"));
                }
            }
            if ("chat.send".equals(str10)) {
                return y2Var2.M1(mapB);
            }
            boolean zEquals3 = "email.getList".equals(str10);
            com.sgscq.vpn.handler.d1 d1Var2 = y2Var2.H;
            if (zEquals3) {
                String strA8 = y2Var2.A1(mapB);
                ArrayList arrayListC = y2Var2.R.c(c7.f(), strA8);
                if (arrayListC != null) {
                    return ((com.sgscq.vpn.handler.k0) d1Var2.f808b).n(p5.s1(com.sgscq.vpn.handler.d1.p(arrayListC)));
                }
                Map mapW5 = h5Var.w0(strA8);
                if (mapW5 == null) {
                    mapW5 = new LinkedHashMap();
                }
                Map map4 = mapW5;
                List listU1 = u1(map4);
                boolean zQ2 = q2(listU1);
                if (zQ2 || tVar == null || !tVar.b(strA8)) {
                    z2 = false;
                } else {
                    try {
                        z3 = tVar.h(strA8, map4).f339a;
                    } catch (Exception e5) {
                        c.a.u(e5, new StringBuilder("[CloudMail] online reward mail failed: "), "SGSCQ_SRV");
                        z3 = false;
                    }
                    z2 = z3;
                    listU1 = u1(map4);
                }
                boolean zF4 = f4(map4);
                Iterator it = listU1.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof Map) {
                        Map map5 = (Map) next;
                        if (Boolean.TRUE.equals(map5.get("is_accepted")) || c.a.B(map5, "status", "0", "1") || c.a.B(map5, "is_attach_get", "0", "1")) {
                            it.remove();
                            z4 = true;
                        }
                    }
                }
                if (z4 || zF4 || z2) {
                    h5Var.S0(strA8, map4);
                }
                if (!zQ2) {
                    listU1 = y2Var2.z4(strA8, listU1);
                }
                return ((com.sgscq.vpn.handler.k0) d1Var2.f808b).n(p5.s1(com.sgscq.vpn.handler.d1.p(listU1)));
            }
            if ("email.accept".equals(str10)) {
                return y2Var2.U1(mapB);
            }
            if ("email.send".equals(str10)) {
                return y2Var2.V1(mapB);
            }
            if (com.sgscq.vpn.handler.d1.h0(str10) && (bArrP6 = y2Var2.I.P(str10, strF, mapD, mapB)) != null) {
                return bArrP6;
            }
            if ("rank.getRankList".equals(str10)) {
                return y2Var2.l2(mapB);
            }
            if ("rank.like".equals(str10)) {
                return y2Var2.m2(mapB);
            }
            if ("menu.userCdkey".equals(str10)) {
                return y2Var2.I1(mapB);
            }
            if (com.sgscq.vpn.handler.u0.j(str10)) {
                if (!com.sgscq.vpn.cloud.m0.q1(str10)) {
                    return y2Var2.A4(p5.s1(com.sgscq.vpn.cloud.m0.Z2()));
                }
                byte[] bArrH = y2Var2.f1562o.h(str10, mapB);
                if (bArrH != null) {
                    return bArrH;
                }
            }
            if (str10 != null && str10.startsWith("beauty.")) {
                if (!com.sgscq.vpn.cloud.m0.q1(str10)) {
                    return y2Var2.A4(p5.s1(com.sgscq.vpn.cloud.m0.Z2()));
                }
                byte[] bArrP11 = y2Var2.f1563p.P(str10, strF, mapD, mapB);
                if (bArrP11 != null) {
                    return bArrP11;
                }
            }
            if ((str10 != null && str10.startsWith("tower.")) && (bArrF = y2Var2.f1564q.F(str10, mapB)) != null) {
                return bArrF;
            }
            if ((str10 != null && str10.startsWith("relationship.")) && (bArrI = y2Var2.r.i(str10, mapB)) != null) {
                return bArrI;
            }
            if ((str10 != null && str10.startsWith("hulao.")) && (bArrD = y2Var2.s.d(str10, mapB)) != null) {
                return bArrD;
            }
            if (com.sgscq.vpn.handler.d1.e0(str10)) {
                return s3();
            }
            AtomicLong atomicLong = com.sgscq.vpn.handler.h1.f872b;
            if ((str10 != null && str10.startsWith("warlord.")) && (bArrX = y2Var2.u.x(str10, mapB)) != null) {
                return bArrX;
            }
            if (c.e.U(str10) && (bArrN = y2Var2.t.N(str10, mapB)) != null) {
                return bArrN;
            }
            if ((str10 != null && (str10.startsWith("worldWar.") || str10.startsWith("worldWarLocal."))) && (bArrP5 = y2Var2.v.P(str10, strF, mapD, mapB)) != null) {
                return bArrP5;
            }
            if (com.sgscq.vpn.handler.d1.f0(str10) && (bArrP4 = y2Var2.x.P(str10, strF, mapD, mapB)) != null) {
                return bArrP4;
            }
            if (com.sgscq.vpn.cloud.m0.q1(str10) && com.sgscq.vpn.handler.z.l(str10) && (bArrJ = y2Var2.y.j(str10, mapB)) != null) {
                return bArrJ;
            }
            if (com.sgscq.vpn.handler.z.l(str10)) {
                return s3();
            }
            if (com.sgscq.vpn.handler.d1.i0(str10) && (bArrP3 = y2Var2.B.P(str10, strF, mapD, mapB)) != null) {
                return bArrP3;
            }
            if (("combat.getUserCombatList".equals(str10) || "combat.upgradeCombatLevel".equals(str10)) && (bArrP2 = y2Var2.C.P(str10, strF, mapD, mapB)) != null) {
                return bArrP2;
            }
            if ("meeting.meeting".equals(str10) && (bArrP = y2Var2.F.P(str10, strF, mapD, mapB)) != null) {
                return bArrP;
            }
            if (strF != null && strF.contains("/hd_resource/") && strF.contains(".zip")) {
                z4 = true;
            }
            return z4 ? y2Var2.f1555h.P(str10, strF, mapD, mapB) : d1Var2.P(str10, strF, mapD, mapB);
        }
        String strA9 = y2Var2.A1(mapB);
        Map mapW6 = h5Var.w0(strA9);
        z2.e("SGSCQ_SRV", "[General] uid=" + strA9 + " action=" + str10);
        String str20 = "result";
        if ("general.getOverview".equals(str10)) {
            if (mapW6 == null) {
                mapW6 = new LinkedHashMap();
            }
            Map map6 = mapW6;
            String str21 = (String) mapB.getOrDefault("player_id", (String) mapB.getOrDefault("other_user_id", ""));
            v5 v5VarG = (y2Var2.K == null || str21.isEmpty()) ? null : y2Var2.K.g(str21);
            if (v5VarG == null && str21.startsWith("cloud_") && (eVar = y2Var2.O) != null && eVar.w(strA9)) {
                try {
                    v5VarG = y2Var2.O.q(strA9, str21);
                } catch (Exception e6) {
                    c.a.u(e6, a.b0.b("[General] cloud guild overview unavailable target=", str21, " error="), "SGSCQ_SRV");
                }
            }
            if (v5VarG != null) {
                LinkedHashMap linkedHashMapV = com.sgscq.vpn.cloud.m0.V(v5VarG.r());
                com.sgscq.vpn.cloud.m0.v(linkedHashMapV, v5VarG.b());
                return y2Var2.A4(p5.s1(linkedHashMapV));
            }
            if (!str21.startsWith("cloud_")) {
                return y2Var2.A4(p5.s1(com.sgscq.vpn.cloud.m0.V(com.sgscq.vpn.handler.p0.G(mapB) ? com.sgscq.vpn.handler.p0.r(mapB) : com.sgscq.vpn.cloud.m0.L((String) mapB.getOrDefault("other_user_id", strA9), map6))));
            }
            Boolean bool2 = Boolean.FALSE;
            return y2Var2.A4(p5.s1(p5.z0("ret", -1, "code", -1, "result", bool2, "msg", "该成员阵容暂未同步", "error_code", -1, "return_info", p5.z0("result", bool2, new Object[0]), "info", new LinkedHashMap())));
        }
        if (mapW6 == null && "general.insight".equals(str10)) {
            return y2Var2.R0("玩家数据不存在", "{}");
        }
        if (mapW6 != null) {
            String str22 = "0";
            String strA10 = (String) mapB.getOrDefault("user_general_id", (String) mapB.getOrDefault("pk_id", (String) mapB.getOrDefault("general_pk_id", "")));
            String strV0 = (String) mapB.getOrDefault("general_id", "");
            boolean z6 = "general.reincarnate".equals(str10) || "general.sacrifice".equals(str10);
            if (strA10.isEmpty() && !strV0.isEmpty()) {
                strA10 = a1(strV0, mapW6);
                if (strA10.isEmpty() && !z6) {
                    strA10 = b1(strV0, mapW6);
                }
            }
            if (strV0.isEmpty() && !strA10.isEmpty()) {
                strV0 = V0(strA10, mapW6);
            }
            String str23 = strV0;
            if ("general.setEquipment".equals(str10)) {
                StringBuilder sbB = a.b0.b("[GeneralSetEquip] pk_id=", strA10, " equip=");
                sbB.append((String) mapB.getOrDefault("new_equipment_id", ""));
                z2.e("SGSCQ_SRV", sbB.toString());
                LinkedHashMap linkedHashMapQ = com.sgscq.vpn.cloud.m0.q(mapW6, mapB);
                if (Boolean.TRUE.equals(linkedHashMapQ.get("result"))) {
                    Object obj8 = linkedHashMapQ.get("changed_general_pk_ids");
                    if (obj8 instanceof List) {
                        Iterator it2 = ((List) obj8).iterator();
                        while (it2.hasNext()) {
                            String strValueOf2 = String.valueOf(it2.next());
                            Map mapU0 = U0(strValueOf2, mapW6);
                            if (mapU0 != null) {
                                y2Var2.D0(strValueOf2, mapW6, mapU0);
                                y2Var2.L3(strValueOf2, mapW6, mapU0);
                            }
                        }
                    }
                }
                linkedHashMapQ.put("cmn", p5.u1(y2Var2.O(strA9, com.sgscq.vpn.cloud.m0.I(mapW6, linkedHashMapQ), mapW6, "General", "TeamGeneral", "Equipment")));
                if (Boolean.TRUE.equals(linkedHashMapQ.get("result"))) {
                    M3(mapW6);
                    y2Var2.E3(strA9, mapW6, mapB);
                    h5Var.S0(strA9, mapW6);
                }
                return y2Var2.A4(p5.s1(linkedHashMapQ));
            }
            if ("general.setLieutenant".equals(str10)) {
                LinkedHashMap linkedHashMapR = com.sgscq.vpn.cloud.m0.r(mapW6, mapB);
                LinkedHashMap linkedHashMapJ = com.sgscq.vpn.cloud.m0.J(mapW6, linkedHashMapR);
                Boolean bool3 = Boolean.TRUE;
                linkedHashMapR.put("cmn", p5.u1(y2Var2.O(strA9, linkedHashMapJ, mapW6, bool3.equals(linkedHashMapR.get("buddy_changed")) ? new String[]{"General", "TeamGeneral", "BuddyGeneral"} : new String[]{"General", "TeamGeneral"})));
                if (bool3.equals(linkedHashMapR.get("result"))) {
                    M3(mapW6);
                    h5Var.S0(strA9, mapW6);
                }
                z2.e("SGSCQ_SRV", "[GeneralSetLieutenant] major=" + linkedHashMapR.get("major_user_general_id") + " lieutenant=" + linkedHashMapR.get("lieutenant_user_general_id") + " position=" + linkedHashMapR.get("position"));
                return y2Var2.A4(p5.s1(linkedHashMapR));
            }
            if ("general.removeObject".equals(str10)) {
                String str24 = (String) mapB.getOrDefault("type", "");
                LinkedHashMap linkedHashMapM = com.sgscq.vpn.cloud.m0.m(mapW6, mapB);
                linkedHashMapM.put("cmn", p5.u1(y2Var2.O(strA9, com.sgscq.vpn.cloud.m0.G(mapW6, linkedHashMapM), mapW6, "4".equals(str24) ? new String[]{"General", "Skill", "TeamGeneral"} : new String[]{"General", "TeamGeneral"})));
                if (Boolean.TRUE.equals(linkedHashMapM.get("result"))) {
                    M3(mapW6);
                    h5Var.S0(strA9, mapW6);
                }
                return y2Var2.A4(p5.s1(linkedHashMapM));
            }
            if ("general.setSkill".equals(str10)) {
                StringBuilder sbB2 = a.b0.b("[GeneralSetSkill] pk_id=", strA10, " skill=");
                sbB2.append((String) mapB.getOrDefault("new_skill_id", ""));
                z2.e("SGSCQ_SRV", sbB2.toString());
                LinkedHashMap linkedHashMapS = com.sgscq.vpn.cloud.m0.s(mapW6, mapB);
                linkedHashMapS.put("cmn", p5.u1(y2Var2.O(strA9, com.sgscq.vpn.cloud.m0.K(mapW6, linkedHashMapS), mapW6, "General", "Skill", "TeamGeneral")));
                if (Boolean.TRUE.equals(linkedHashMapS.get("result"))) {
                    M3(mapW6);
                    h5Var.S0(strA9, mapW6);
                }
                return y2Var2.A4(p5.s1(linkedHashMapS));
            }
            if ("general.autoCultivate".equals(str10)) {
                z2.e("SGSCQ_SRV", "[GeneralAutoCultivate] pk_id=".concat(strA10));
                if (!e0(mapW6)) {
                    return y2Var2.L0("等级或VIP等级不足", -1);
                }
                LinkedHashMap linkedHashMapT = com.sgscq.vpn.cloud.m0.t(mapW6, mapB);
                linkedHashMapT.put("cmn", p5.u1(y2Var2.O(strA9, C(a3(), mapW6, linkedHashMapT, linkedHashMapT.get("delta_data") instanceof Map ? (Map) linkedHashMapT.get("delta_data") : mapW6), mapW6, a(linkedHashMapT, new String[0]))));
                if (Boolean.TRUE.equals(linkedHashMapT.get("result"))) {
                    com.sgscq.vpn.handler.p.e("116", mapW6);
                    h5Var.S0(strA9, mapW6);
                }
                return y2Var2.A4(p5.s1(linkedHashMapT));
            }
            if ("general.culture".equals(str10)) {
                z2.e("SGSCQ_SRV", "[GeneralCulture] pk_id=".concat(strA10));
                LinkedHashMap linkedHashMapL = com.sgscq.vpn.cloud.m0.l(mapW6, mapB);
                linkedHashMapL.put("cmn", p5.u1(y2Var2.O(strA9, C(a3(), mapW6, linkedHashMapL, com.sgscq.vpn.cloud.m0.D(mapW6, linkedHashMapL)), mapW6, a(linkedHashMapL, "General", "Item"))));
                if (Boolean.TRUE.equals(linkedHashMapL.get("result"))) {
                    com.sgscq.vpn.handler.p.e("116", mapW6);
                    h5Var.S0(strA9, mapW6);
                }
                return y2Var2.A4(p5.s1(linkedHashMapL));
            }
            if ("general.takeCultureItem".equals(str10)) {
                z2.e("SGSCQ_SRV", "[GeneralTakeCultureItem] pk_id=".concat(strA10));
                LinkedHashMap linkedHashMapU = com.sgscq.vpn.cloud.m0.u(mapW6, mapB);
                if (Boolean.TRUE.equals(linkedHashMapU.get("result"))) {
                    com.sgscq.vpn.handler.p.e("116", mapW6);
                    M3(mapW6);
                    h5Var.S0(strA9, mapW6);
                }
                LinkedHashMap linkedHashMapD = com.sgscq.vpn.cloud.m0.D(mapW6, linkedHashMapU);
                linkedHashMapU.put("cmn", p5.u1(String.valueOf(linkedHashMapU.getOrDefault("cmn_modules", "")).contains("TeamGeneral") ? y2Var2.O(strA9, linkedHashMapD, mapW6, "General", "Item", "TeamGeneral") : y2Var2.O(strA9, linkedHashMapD, mapW6, "General", "Item")));
                return y2Var2.A4(p5.s1(linkedHashMapU));
            }
            if ("general.insight".equals(str10)) {
                String strV1 = V0(strA10, mapW6);
                if (strV1.isEmpty()) {
                    strV1 = str23;
                }
                z2.e("SGSCQ_SRV", "[GeneralInsight] pk_id=" + strA10 + " general_id=" + strV1);
                int iN5 = n1(strA10, "insight_level", mapW6);
                if (iN5 <= 0) {
                    iN5 = 1;
                }
                if (strV1.isEmpty()) {
                    i10 = 0;
                    dArrM2 = null;
                    dArr = null;
                } else {
                    w1 w1VarA2 = w1.a1(context);
                    int iQ7 = w1VarA2.Q0(strV1);
                    int iN6 = n1(strA10, "general_level", mapW6);
                    if (iN6 <= 0) {
                        iN6 = n1(strA10, "level", mapW6);
                    }
                    if (iN6 <= 0) {
                        iN6 = 1;
                    }
                    double[] dArrM3 = w1VarA2.M0(iN6, iN5, strV1);
                    dArrM2 = w1VarA2.M0(iN6, iN5 + 1, strV1);
                    dArr = dArrM3;
                    i10 = iQ7;
                }
                LinkedHashMap linkedHashMapN = com.sgscq.vpn.cloud.m0.n(mapW6, mapB, i10, w1.a1(context).O0(strV1, iN5), dArrM2, dArr);
                ArrayList arrayList23 = new ArrayList();
                Boolean bool4 = Boolean.TRUE;
                if (bool4.equals(linkedHashMapN.get("result"))) {
                    arrayList23 = com.sgscq.vpn.cloud.m0.q2(strA10, mapW6);
                    M3(mapW6);
                }
                LinkedHashMap linkedHashMapE = com.sgscq.vpn.cloud.m0.E(mapW6, linkedHashMapN);
                if (bool4.equals(linkedHashMapN.get("result"))) {
                    com.sgscq.vpn.cloud.m0.I1(arrayList23, mapW6, linkedHashMapE);
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                if (bool4.equals(linkedHashMapN.get("result"))) {
                    linkedHashMap = com.sgscq.vpn.handler.t0.B(p5.X(context), strV1, mapW6);
                    linkedHashMapE.putAll(linkedHashMap);
                }
                Map mapC = C(a3(), mapW6, linkedHashMapN, linkedHashMapE);
                String[] strArr = new String[4];
                strArr[0] = "General";
                strArr[1] = "GeneralSoul";
                strArr[2] = "TeamGeneral";
                strArr[3] = linkedHashMap.isEmpty() ? null : "MagicalEqu";
                linkedHashMapN.put("cmn", p5.u1(y2Var2.O(strA9, mapC, mapW6, a(linkedHashMapN, strArr))));
                if (bool4.equals(linkedHashMapN.get("result"))) {
                    com.sgscq.vpn.handler.p.e("118", mapW6);
                    h5Var.S0(strA9, mapW6);
                }
                return y2Var2.A4(p5.s1(linkedHashMapN));
            }
            String str25 = strA10;
            if ("general.sacrifice".equals(str10)) {
                String str26 = (String) mapB.getOrDefault("user_general_id", "");
                String str27 = (String) mapB.getOrDefault("user_death_general_id", "");
                String strV2 = V0(str26, mapW6);
                String strV3 = V0(str27, mapW6);
                w1 w1VarA3 = w1.a1(context);
                Map mapC1 = w1VarA3.c1((String) mapB.getOrDefault("item_id", (String) mapB.getOrDefault("sacrifice_item_id", "600011")));
                if (mapC1 != null) {
                    str4 = "General";
                    str5 = "TeamGeneral";
                    iF = c.a.f(mapC1, "grade", "4", 4);
                    Object obj9 = mapC1.get("effect_value");
                    if (obj9 instanceof Map) {
                        Map map7 = (Map) obj9;
                        str20 = "result";
                        int iF6 = c.a.f(map7, "exp_multi", "100", 100);
                        str22 = str22;
                        iF2 = c.a.f(map7, "ganoderma_multi", str22, 0);
                        i4 = iF;
                        i3 = iF6;
                    }
                    int i16 = i4;
                    int iW5 = w3(1, "user_level", mapW6);
                    mapJ0 = w1VarA3.J0(strV2);
                    int i17 = iF2;
                    Map mapJ1 = w1VarA3.J0(strV3);
                    int i18 = i3;
                    if (mapJ0 != null) {
                        iF3 = c.a.f(mapJ0, "grade", str22, 0);
                    } else {
                        iF3 = 0;
                    }
                    int iF7 = mapJ1 != null ? c.a.f(mapJ1, "grade", str22, 0) : 0;
                    if (strV2.isEmpty()) {
                        iQ0 = 6;
                    } else {
                        iQ0 = w1VarA3.Q0(strV2);
                    }
                    iN1 = n1(str26, "general_level", mapW6);
                    if (iN1 <= 0) {
                        iN1 = n1(str26, "level", mapW6);
                    }
                    if (iN1 <= 0) {
                        iN1 = 1;
                    }
                    i5 = iQ0;
                    long jC0 = w1VarA3.c0(strV2, iN1);
                    i6 = iF7;
                    i7 = iN1;
                    long jMax = Math.max(0L, o1(str26, mapW6)) + jC0;
                    iN2 = n1(str27, "general_level", mapW6);
                    if (iN2 <= 0) {
                        iN2 = n1(str27, "level", mapW6);
                    }
                    if (iN2 <= 0) {
                        iN2 = 1;
                    }
                    long jMax2 = Math.max(0L, o1(str27, mapW6)) + w1VarA3.c0(strV3, iN2);
                    iN3 = n1(str26, "insight_level", mapW6);
                    if (iN3 <= 0) {
                        iN3 = n1(str26, "general_star", mapW6);
                    }
                    if (iN3 <= 0) {
                        iN3 = 1;
                    }
                    iN4 = n1(str27, "insight_level", mapW6);
                    if (iN4 <= 0) {
                        iN4 = n1(str27, "general_star", mapW6);
                    }
                    if (iN4 <= 0) {
                        iN4 = 1;
                    }
                    if (iF3 == i6 || iN4 <= iN3) {
                        i8 = i5;
                        iMin = iN3;
                    } else {
                        i8 = i5;
                        iMin = Math.min(iN4, i8);
                    }
                    if (strV2.isEmpty()) {
                        dArrM0 = null;
                        i9 = i7;
                    } else {
                        i9 = i7;
                        dArrM0 = w1VarA3.M0(i9, iN3, strV2);
                    }
                    if (iMin > iN3 || strV2.isEmpty()) {
                        dArrM1 = dArrM0;
                    } else {
                        dArrM1 = w1VarA3.M0(i9, iMin, strV2);
                    }
                    com.sgscq.vpn.handler.h0 h0Var = new com.sgscq.vpn.handler.h0();
                    h0Var.f856a = iW5;
                    h0Var.f857b = i18;
                    h0Var.f858c = i17;
                    h0Var.f859d = i16;
                    h0Var.f860e = strV2;
                    h0Var.f861f = strV3;
                    h0Var.f862g = iF3;
                    h0Var.f863h = i6;
                    h0Var.f864i = i8;
                    h0Var.f866k = dArrM0;
                    h0Var.f865j = dArrM1;
                    h0Var.f867l = jMax2;
                    h0Var.f868m = jMax;
                    h0Var.f869n = jC0;
                    h0Var.f870o = com.sgscq.vpn.handler.t0.u(p5.X(context), strV3, mapW6);
                    h0Var.f871p = w1VarA3;
                    linkedHashMapP = com.sgscq.vpn.cloud.m0.p(mapW6, mapB, h0Var);
                    bool = Boolean.TRUE;
                    str6 = str20;
                    if (bool.equals(linkedHashMapP.get(str6))) {
                        M3(mapW6);
                    }
                    linkedHashMapP.put("cmn", p5.u1(O(strA9, C(a3(), mapW6, linkedHashMapP, com.sgscq.vpn.cloud.m0.H(mapW6, linkedHashMapP)), mapW6, a(linkedHashMapP, str4, "Skill", "Item", str5))));
                    if (bool.equals(linkedHashMapP.get(str6))) {
                        h5Var.S0(strA9, mapW6);
                    }
                    return A4(p5.s1(linkedHashMapP));
                }
                str4 = "General";
                str5 = "TeamGeneral";
                iF = 4;
                int i19 = iF;
                i3 = 100;
                iF2 = 0;
                i4 = i19;
                int i110 = i4;
                int iW6 = w3(1, "user_level", mapW6);
                mapJ0 = w1VarA3.J0(strV2);
                int i111 = iF2;
                Map mapJ2 = w1VarA3.J0(strV3);
                int i112 = i3;
                if (mapJ0 != null) {
                    iF3 = c.a.f(mapJ0, "grade", str22, 0);
                } else {
                    iF3 = 0;
                }
                if (mapJ2 != null) {
                }
                if (strV2.isEmpty()) {
                    iQ0 = 6;
                } else {
                    iQ0 = w1VarA3.Q0(strV2);
                }
                iN1 = n1(str26, "general_level", mapW6);
                if (iN1 <= 0) {
                    iN1 = n1(str26, "level", mapW6);
                }
                if (iN1 <= 0) {
                    iN1 = 1;
                }
                i5 = iQ0;
                long jC1 = w1VarA3.c0(strV2, iN1);
                i6 = iF7;
                i7 = iN1;
                long jMax3 = Math.max(0L, o1(str26, mapW6)) + jC1;
                iN2 = n1(str27, "general_level", mapW6);
                if (iN2 <= 0) {
                    iN2 = n1(str27, "level", mapW6);
                }
                if (iN2 <= 0) {
                    iN2 = 1;
                }
                long jMax4 = Math.max(0L, o1(str27, mapW6)) + w1VarA3.c0(strV3, iN2);
                iN3 = n1(str26, "insight_level", mapW6);
                if (iN3 <= 0) {
                    iN3 = n1(str26, "general_star", mapW6);
                }
                if (iN3 <= 0) {
                    iN3 = 1;
                }
                iN4 = n1(str27, "insight_level", mapW6);
                if (iN4 <= 0) {
                    iN4 = n1(str27, "general_star", mapW6);
                }
                if (iN4 <= 0) {
                    iN4 = 1;
                }
                if (iF3 == i6) {
                    i8 = i5;
                    iMin = iN3;
                } else {
                    i8 = i5;
                    iMin = iN3;
                }
                if (strV2.isEmpty()) {
                    dArrM0 = null;
                    i9 = i7;
                } else {
                    i9 = i7;
                    dArrM0 = w1VarA3.M0(i9, iN3, strV2);
                }
                if (iMin > iN3) {
                    dArrM1 = dArrM0;
                } else {
                    dArrM1 = dArrM0;
                }
                com.sgscq.vpn.handler.h0 h0Var2 = new com.sgscq.vpn.handler.h0();
                h0Var2.f856a = iW6;
                h0Var2.f857b = i112;
                h0Var2.f858c = i111;
                h0Var2.f859d = i110;
                h0Var2.f860e = strV2;
                h0Var2.f861f = strV3;
                h0Var2.f862g = iF3;
                h0Var2.f863h = i6;
                h0Var2.f864i = i8;
                h0Var2.f866k = dArrM0;
                h0Var2.f865j = dArrM1;
                h0Var2.f867l = jMax4;
                h0Var2.f868m = jMax3;
                h0Var2.f869n = jC1;
                h0Var2.f870o = com.sgscq.vpn.handler.t0.u(p5.X(context), strV3, mapW6);
                h0Var2.f871p = w1VarA3;
                linkedHashMapP = com.sgscq.vpn.cloud.m0.p(mapW6, mapB, h0Var2);
                bool = Boolean.TRUE;
                str6 = str20;
                if (bool.equals(linkedHashMapP.get(str6))) {
                    M3(mapW6);
                }
                linkedHashMapP.put("cmn", p5.u1(O(strA9, C(a3(), mapW6, linkedHashMapP, com.sgscq.vpn.cloud.m0.H(mapW6, linkedHashMapP)), mapW6, a(linkedHashMapP, str4, "Skill", "Item", str5))));
                if (bool.equals(linkedHashMapP.get(str6))) {
                    h5Var.S0(strA9, mapW6);
                }
                return A4(p5.s1(linkedHashMapP));
            }
            y2Var = y2Var2;
            str3 = strA9;
            if ("general.reincarnate".equals(str10)) {
                z2.e("SGSCQ_SRV", "[GeneralReincarnate] pk_id=" + str25 + " general_id=" + str23);
                int iN7 = n1(str25, "general_star", mapW6);
                if (iN7 <= 0) {
                    iN7 = 1;
                }
                w1 w1VarA4 = w1.a1(context);
                LinkedHashMap linkedHashMapO = com.sgscq.vpn.cloud.m0.o(mapW6, mapB, new t2(y2Var), str23.isEmpty() ? 0 : w1VarA4.Q0(str23), w1VarA4.S0(str23), w1VarA4.O0(str23, iN7), str23.isEmpty() ? null : w1VarA4.L0(str23, iN7 + 1));
                Boolean bool5 = Boolean.TRUE;
                if (bool5.equals(linkedHashMapO.get("result")) && bool5.equals(linkedHashMapO.get("is_new"))) {
                    String strValueOf3 = String.valueOf(linkedHashMapO.getOrDefault("general_id", ""));
                    String strValueOf4 = String.valueOf(linkedHashMapO.getOrDefault("pkId", ""));
                    w1 w1VarA5 = w1.a1(context);
                    w1.b2("general_id", strValueOf3, null, mapW6);
                    w1.b2("skill_id", w1VarA5.T0(strValueOf3), null, mapW6);
                    Map[] mapArr = new Map[1];
                    String strA11 = com.sgscq.vpn.handler.l.a("dialogname", strValueOf3, "01");
                    try {
                        i2 = Integer.parseInt(strValueOf3);
                    } catch (NumberFormatException unused) {
                        i2 = 112018;
                    }
                    mapArr[0] = p5.z0("dialog", strA11, "pk_id", strValueOf4, "general_pk_id", strValueOf4, "general_id", strValueOf3, "id", strValueOf3, "general_painting_id", String.valueOf(i2), "general_name", w1VarA5.R0(strValueOf3), "general_star", 1, "general_level", 1, "num", 1, "card_type", 1);
                    linkedHashMapO.put("reward_info", p5.z0("general", p5.v0(mapArr), new Object[0]));
                }
                linkedHashMapO.put("cmn", p5.u1(y2Var.O(str3, com.sgscq.vpn.cloud.m0.F(mapW6, linkedHashMapO), mapW6, "General", "Skill", "GeneralSoul")));
                if (bool5.equals(linkedHashMapO.get("result"))) {
                    h5Var.S0(str3, mapW6);
                }
                return y2Var.A4(p5.s1(linkedHashMapO));
            }
            h5Var.S0(str3, mapW6);
        } else {
            str3 = strA9;
            y2Var = y2Var2;
        }
        return y2Var.p3(mapW6 != null ? y2Var.N(str3, mapW6) : "{}");
    }

    /* JADX WARN: Code duplicated, block: B:103:0x03a2 A[EDGE_INSN: B:103:0x03a2->B:87:0x03a2 BREAK  A[LOOP:4: B:80:0x0389->B:85:0x039e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x03a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x0281 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x0290 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x026d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x026d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0252  */
    /* JADX WARN: Code duplicated, block: B:49:0x0258  */
    /* JADX WARN: Code duplicated, block: B:54:0x0273 A[Catch: all -> 0x03c1, TryCatch #0 {, blocks: (B:51:0x0263, B:52:0x026d, B:54:0x0273, B:58:0x0284, B:64:0x0290, B:65:0x0294), top: B:99:0x0263 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x028d  */
    /* JADX WARN: Code duplicated, block: B:70:0x02bf A[LOOP:1: B:68:0x02b9->B:70:0x02bf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0363 A[LOOP:2: B:72:0x035b->B:74:0x0363, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:78:0x0373 A[LOOP:3: B:76:0x036d->B:78:0x0373, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x038f  */
    /* JADX WARN: Code duplicated, block: B:85:0x039e A[LOOP:4: B:80:0x0389->B:85:0x039e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:96:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:99:0x0263 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final byte[] l2(Map map) {
        List arrayList;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        int iC3;
        ArrayList arrayList2;
        List listL;
        int i2;
        boolean z;
        int i3;
        int i4;
        String strI3;
        String strA1 = A1(map);
        Map mapW0 = this.f1553f.w0(strA1);
        if (mapW0 == null) {
            mapW0 = new HashMap();
        }
        if (!mapW0.containsKey("user_id")) {
            mapW0.put("user_id", strA1);
        }
        p7 p7Var = this.K;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        int i5 = 0;
        linkedHashMap3.put("ret", 0);
        linkedHashMap3.put("code", 0);
        linkedHashMap3.put("result", Boolean.TRUE);
        linkedHashMap3.put("msg", "success");
        linkedHashMap3.put("error_code", 0);
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        Object obj = mapW0.get("rank_likes");
        linkedHashMap4.put("free_times", Integer.valueOf(Math.max(0, 10 - (obj instanceof List ? ((List) obj).size() : 0))));
        while (i5 < 5) {
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            ArrayList arrayList3 = new ArrayList();
            String strI4 = I3(mapW0);
            String strF1 = f1(String.valueOf(mapW0.getOrDefault("user_nickname", "")), String.valueOf(mapW0.getOrDefault("nickname", "")), "玩家");
            String strF2 = f1(String.valueOf(mapW0.getOrDefault("general_skin", "")), String.valueOf(mapW0.getOrDefault("user_general_skin", "")), String.valueOf(mapW0.getOrDefault("first_choose_general", "")), String.valueOf(mapW0.getOrDefault("general_id", "")), "100001");
            String strF = p5.F(strF2, mapW0);
            LinkedHashMap linkedHashMapR = c.a.r("user_id", strI4, "player_id", strI4);
            linkedHashMapR.put("user_nickname", strF1);
            linkedHashMapR.put("nickname", strF1);
            linkedHashMapR.put("user_general_skin", strF);
            linkedHashMapR.put("general_skin", strF);
            linkedHashMapR.put("user_vip_level", Integer.valueOf(C3(mapW0.getOrDefault("user_vip_level", 0), 0)));
            linkedHashMapR.put("user_level", Integer.valueOf(C3(mapW0.getOrDefault("user_level", 1), 1)));
            linkedHashMapR.put("liked_num", Integer.valueOf(C3(mapW0.getOrDefault("liked_num", 0), 0)));
            linkedHashMapR.put("general_id", strF2);
            if (i5 == 2) {
                iC3 = C3(mapW0.getOrDefault("user_level", 1), 1);
            } else if (i5 == 3) {
                int iG1 = g1(mapW0, "rank_story_progress", "last_map_id", "map_id", "user_position_step", "user_map_step");
                ConcurrentHashMap concurrentHashMap = v5.x;
                if (iG1 >= 500000) {
                    int i6 = (iG1 / 1000) - 500;
                    int i7 = iG1 % 1000;
                    iC3 = (i6 <= 0 || i7 <= 0) ? 101 : (i6 * 100) + i7;
                } else {
                    iC3 = Math.max(101, iG1);
                }
            } else {
                if (i5 == 4) {
                    iC3 = g1(mapW0, "govern", "leadership", "user_leadership", "leadership_num", "user_ability", "teamPoint");
                } else if (i5 == 1) {
                    int iG2 = g1(mapW0, "max_general_fighting");
                    Iterator it = w1.f0("TeamGeneral", mapW0).iterator();
                    while (true) {
                        linkedHashMap = linkedHashMap3;
                        if (!it.hasNext()) {
                            break;
                        }
                        Iterator it2 = it;
                        Map map2 = (Map) it.next();
                        iG2 = Math.max(iG2, C3(map2.getOrDefault("general_fighting", map2.getOrDefault("fighting", 0)), 0));
                        linkedHashMap3 = linkedHashMap;
                        linkedHashMap4 = linkedHashMap4;
                        it = it2;
                    }
                    linkedHashMap2 = linkedHashMap4;
                    for (Iterator it3 = w1.f0("General", mapW0).iterator(); it3.hasNext(); it3 = it3) {
                        Map map3 = (Map) it3.next();
                        iG2 = Math.max(iG2, C3(map3.getOrDefault("general_fighting", map3.getOrDefault("fighting", 0)), 0));
                    }
                    iC3 = iG2 > 0 ? iG2 : C3(mapW0.getOrDefault("user_fighting", mapW0.getOrDefault("fighting", mapW0.getOrDefault("fightPoint", 0))), 0);
                } else {
                    linkedHashMap = linkedHashMap3;
                    linkedHashMap2 = linkedHashMap4;
                    iC3 = C3(mapW0.getOrDefault("user_fighting", mapW0.getOrDefault("fighting", mapW0.getOrDefault("fightPoint", 0))), 0);
                }
                linkedHashMapR.put("record_data", Integer.valueOf(iC3));
                arrayList3.add(linkedHashMapR);
                if (p7Var == null) {
                    listL = Collections.emptyList();
                    i2 = 0;
                } else {
                    p7Var.e();
                    arrayList2 = new ArrayList();
                    synchronized (p7Var.f1293a) {
                        for (v5 v5Var : p7Var.f1304l.values()) {
                            if (v5Var.f1459a.equals(strI4)) {
                                if (i5 == 3 || v5Var.u() > 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (z) {
                                    arrayList2.add(v5Var);
                                }
                            }
                        }
                    }
                    arrayList2.sort(Comparator.comparingInt(new l7(i5, 0)).reversed().thenComparing(new n.a(18)));
                    listL = p7.l(99, arrayList2);
                    i2 = 0;
                }
                for (i3 = i2; i3 < listL.size(); i3++) {
                    v5 v5Var2 = (v5) listL.get(i3);
                    LinkedHashMap linkedHashMapM = v5Var2.m(v5Var2.f1463e);
                    LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                    linkedHashMap6.put("user_id", linkedHashMapM.get("user_id"));
                    linkedHashMap6.put("player_id", linkedHashMapM.get("player_id"));
                    linkedHashMap6.put("user_nickname", linkedHashMapM.get("nickname"));
                    linkedHashMap6.put("nickname", linkedHashMapM.get("nickname"));
                    linkedHashMap6.put("user_general_skin", linkedHashMapM.get("user_general_skin"));
                    linkedHashMap6.put("general_skin", linkedHashMapM.get("general_skin"));
                    linkedHashMap6.put("general_id", linkedHashMapM.get("general_id"));
                    linkedHashMap6.put("user_vip_level", linkedHashMapM.get("user_vip_level"));
                    linkedHashMap6.put("user_level", linkedHashMapM.get("user_level"));
                    linkedHashMap6.put("liked_num", Integer.valueOf(20 - i3));
                    linkedHashMap6.put("record_data", Integer.valueOf(v5Var2.s(i5)));
                    arrayList3.add(linkedHashMap6);
                }
                Collections.sort(arrayList3, new c.n(1));
                while (arrayList3.size() > 100) {
                    arrayList3.remove(arrayList3.size() - 1);
                }
                i4 = i2;
                while (i4 < arrayList3.size()) {
                    Map map4 = (Map) arrayList3.get(i4);
                    i4++;
                    map4.put("rank", Integer.valueOf(i4));
                }
                strI3 = I3(mapW0);
                while (true) {
                    if (i2 < arrayList3.size()) {
                        i2 = -1;
                        break;
                    }
                    if (c.a.A((Map) arrayList3.get(i2), "user_id", strI3)) {
                        break;
                    }
                    i2++;
                }
                linkedHashMap5.put("user_rank", Integer.valueOf(i2));
                linkedHashMap5.put("rank_list", arrayList3);
                linkedHashMap4 = linkedHashMap2;
                linkedHashMap4.put(String.valueOf(i5), linkedHashMap5);
                i5++;
                linkedHashMap3 = linkedHashMap;
            }
            linkedHashMap = linkedHashMap3;
            linkedHashMap2 = linkedHashMap4;
            linkedHashMapR.put("record_data", Integer.valueOf(iC3));
            arrayList3.add(linkedHashMapR);
            if (p7Var == null) {
                listL = Collections.emptyList();
                i2 = 0;
            } else {
                p7Var.e();
                arrayList2 = new ArrayList();
                synchronized (p7Var.f1293a) {
                    while (r4.hasNext()) {
                        if (v5Var.f1459a.equals(strI4)) {
                            if (i5 == 3) {
                                z = true;
                            } else {
                                z = true;
                            }
                            if (z) {
                                arrayList2.add(v5Var);
                            }
                        }
                    }
                    arrayList2.sort(Comparator.comparingInt(new l7(i5, 0)).reversed().thenComparing(new n.a(18)));
                    listL = p7.l(99, arrayList2);
                    i2 = 0;
                }
            }
            while (i3 < listL.size()) {
                v5 v5Var3 = (v5) listL.get(i3);
                LinkedHashMap linkedHashMapM2 = v5Var3.m(v5Var3.f1463e);
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                linkedHashMap7.put("user_id", linkedHashMapM2.get("user_id"));
                linkedHashMap7.put("player_id", linkedHashMapM2.get("player_id"));
                linkedHashMap7.put("user_nickname", linkedHashMapM2.get("nickname"));
                linkedHashMap7.put("nickname", linkedHashMapM2.get("nickname"));
                linkedHashMap7.put("user_general_skin", linkedHashMapM2.get("user_general_skin"));
                linkedHashMap7.put("general_skin", linkedHashMapM2.get("general_skin"));
                linkedHashMap7.put("general_id", linkedHashMapM2.get("general_id"));
                linkedHashMap7.put("user_vip_level", linkedHashMapM2.get("user_vip_level"));
                linkedHashMap7.put("user_level", linkedHashMapM2.get("user_level"));
                linkedHashMap7.put("liked_num", Integer.valueOf(20 - i3));
                linkedHashMap7.put("record_data", Integer.valueOf(v5Var3.s(i5)));
                arrayList3.add(linkedHashMap7);
            }
            Collections.sort(arrayList3, new c.n(1));
            while (arrayList3.size() > 100) {
                arrayList3.remove(arrayList3.size() - 1);
            }
            i4 = i2;
            while (i4 < arrayList3.size()) {
                Map map5 = (Map) arrayList3.get(i4);
                i4++;
                map5.put("rank", Integer.valueOf(i4));
            }
            strI3 = I3(mapW0);
            while (true) {
                if (i2 < arrayList3.size()) {
                    i2 = -1;
                    break;
                    break;
                }
                if (c.a.A((Map) arrayList3.get(i2), "user_id", strI3)) {
                    break;
                    break;
                }
                i2++;
            }
            linkedHashMap5.put("user_rank", Integer.valueOf(i2));
            linkedHashMap5.put("rank_list", arrayList3);
            linkedHashMap4 = linkedHashMap2;
            linkedHashMap4.put(String.valueOf(i5), linkedHashMap5);
            i5++;
            linkedHashMap3 = linkedHashMap;
        }
        LinkedHashMap linkedHashMap8 = linkedHashMap3;
        linkedHashMap8.put("rank", linkedHashMap4);
        Object obj2 = linkedHashMap4.get("0");
        if (obj2 instanceof Map) {
            Object obj3 = ((Map) obj2).get("rank_list");
            if (obj3 instanceof List) {
                arrayList = (List) obj3;
            } else {
                arrayList = new ArrayList();
            }
        } else {
            arrayList = new ArrayList();
        }
        linkedHashMap8.put("rank_list", arrayList);
        linkedHashMap8.put("list", arrayList);
        return A4(p5.s1(linkedHashMap8));
    }

    public final byte[] m2(Map map) {
        String strA1 = A1(map);
        h5 h5Var = this.f1553f;
        Map mapW0 = h5Var.w0(strA1);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        Object obj = mapW0.get("rank_likes");
        List listO = obj instanceof List ? (List) obj : c.a.o(mapW0, "rank_likes");
        String str = f1((String) map.get("type"), "0") + ":" + f1((String) map.get("rank"), "0") + ":" + f1((String) map.get("like_user_id"), (String) map.get("user_id"), "0");
        int i2 = !listO.contains(str) ? 1 : 0;
        if (i2 > 0) {
            listO.add(str);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("ret", 0);
        linkedHashMap.put("code", 0);
        linkedHashMap.put("result", Boolean.TRUE);
        c.a.z(linkedHashMap, "msg", "success", 0, "error_code", i2, "gold_num");
        linkedHashMap.put("free_times", Integer.valueOf(Math.max(0, 10 - listO.size())));
        h5Var.S0(strA1, mapW0);
        return A4(x(p5.s1(linkedHashMap), N(strA1, mapW0)));
    }

    public final void n(Map map, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        Cloneable cloneableP;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map2 = (Map) it.next();
            String strValueOf = String.valueOf(map2.get("item_id"));
            int iE = c.a.e(map2, "num", 1);
            int iE2 = c.a.e(map2, "item_type", 0);
            if (linkedHashMap.containsKey(strValueOf)) {
                Map map3 = (Map) linkedHashMap.get(strValueOf);
                map3.put("num", Integer.valueOf(w1.l2(String.valueOf(map3.get("num")), 0) + iE));
            } else {
                HashMap map4 = new HashMap();
                map4.put("item_id", strValueOf);
                map4.put("num", Integer.valueOf(iE));
                map4.put("item_type", Integer.valueOf(iE2));
                linkedHashMap.put(strValueOf, map4);
            }
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map map5 = (Map) ((Map.Entry) it2.next()).getValue();
            String strValueOf2 = String.valueOf(map5.get("item_id"));
            int iE3 = c.a.e(map5, "num", 1);
            int iE4 = c.a.e(map5, "item_type", 0);
            if (S2(strValueOf2)) {
                int iW3 = w3(h0(), "user_gold", map);
                int iMax = Math.max(1, iE3);
                map.put("user_gold", Integer.valueOf(iW3 + iMax));
                cloneableP = P(iMax, 16, "600034");
            } else {
                Context context = this.f1549b;
                if (w1.a1(context).z0(strValueOf2) != null) {
                    for (int i2 = 0; i2 < iE3; i2++) {
                        arrayList2.add(T(c(context, strValueOf2, map), context, strValueOf2));
                    }
                } else if (iE4 == 36 || w1.a1(context).I0(strValueOf2) != null) {
                    cloneableP = U(iE3, strValueOf2, h(iE3, strValueOf2, map));
                } else if (iE4 == 19 || w1.a1(context).k1(strValueOf2) != null) {
                    for (int i3 = 0; i3 < iE3; i3++) {
                        t(arrayList3, p(strValueOf2, map));
                    }
                    cloneableP = a0(iE3, 19, strValueOf2);
                } else if (iE4 == 15 || strValueOf2.startsWith("92")) {
                    cloneableP = S(iE3, strValueOf2, com.sgscq.vpn.cloud.m0.c1(iE3, strValueOf2, map));
                } else {
                    cloneableP = W(iE3, iE4, s(iE4), strValueOf2, f(iE3, iE4, strValueOf2, map));
                }
            }
            arrayList2.add(cloneableP);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x019a  */
    public final byte[] n2(Map map, boolean z) {
        String str;
        String str2;
        ArrayList arrayListY3;
        String str3;
        LinkedHashMap linkedHashMap;
        Iterator it;
        String str4;
        String str5;
        String strA1 = A1(map);
        h5 h5Var = this.f1553f;
        Map mapW0 = h5Var.w0(strA1);
        z2.e("SGSCQ_SRV", "[SkillMelt] uid=" + strA1 + " multi=" + z + " sids=" + ((String) map.getOrDefault("sids", "")));
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        LinkedHashMap linkedHashMapU1 = p5.u1(o0.a(this.f1549b, "skill_melts.json"));
        String str6 = "Skill";
        List listF0 = w1.f0("Skill", mapW0);
        String str7 = "true";
        String str8 = "false";
        String str9 = "is_natural";
        String str10 = "level";
        if (z) {
            arrayListY3 = new ArrayList();
            Iterator it2 = listF0.iterator();
            while (it2.hasNext()) {
                Map map2 = (Map) it2.next();
                if (c.a.B(map2, "is_natural", "false", "true") || Q2(map2)) {
                    it = it2;
                } else {
                    it = it2;
                    if (Math.max(1, C3(h1(map2, "level", "skill_level"), 1)) == 1) {
                        String strValueOf = String.valueOf(h1(map2, "skill_id", "id", "resource_id"));
                        str4 = strA1;
                        str5 = str6;
                        int iC3 = C3(i4("grade", map2, new String[0]), 0);
                        if ("361001".equals(strValueOf) || iC3 == 2 || iC3 == 3) {
                            arrayListY3.add(v0(map2));
                        }
                    }
                    it2 = it;
                    str6 = str5;
                    strA1 = str4;
                }
                str4 = strA1;
                str5 = str6;
                it2 = it;
                str6 = str5;
                strA1 = str4;
            }
            str = strA1;
            str2 = str6;
        } else {
            str = strA1;
            str2 = "Skill";
            arrayListY3 = y3(map, "sids");
        }
        List listF1 = w1.f0("Item", mapW0);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it3 = arrayListY3.iterator();
        while (it3.hasNext()) {
            it3 = it3;
            Map mapS0 = S0((String) it3.next(), listF0);
            if (mapS0 == null || c.a.B(mapS0, str9, str8, str7)) {
                str3 = str10;
                linkedHashMap = linkedHashMapU1;
                str7 = str7;
                str8 = str8;
                str9 = str9;
                str10 = str3;
                linkedHashMapU1 = linkedHashMap;
            } else if (!Q2(mapS0)) {
                arrayList.add(mapS0);
                arrayList2.add(v0(mapS0));
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                Object obj = linkedHashMapU1.get(String.valueOf(h1(mapS0, "eated_exp_type", "melt_type")));
                if (obj instanceof List) {
                    List list = (List) obj;
                    int iMax = Math.max(0, C3(h1(mapS0, str10, "skill_level"), 1) - 1);
                    if (iMax >= list.size() || !(list.get(iMax) instanceof Map)) {
                        str3 = str10;
                    } else {
                        Map map3 = (Map) list.get(iMax);
                        ArrayList arrayListM4 = m4(h1(map3, "item_id", "id"));
                        str3 = str10;
                        ArrayList arrayListM5 = m4(h1(map3, "item_num", "num"));
                        int i2 = 0;
                        while (i2 < arrayListM4.size() && i2 < arrayListM5.size()) {
                            linkedHashMap3.put((String) arrayListM4.get(i2), Integer.valueOf(((Integer) linkedHashMap3.getOrDefault(arrayListM4.get(i2), 0)).intValue() + Math.max(1, C3(arrayListM5.get(i2), 1))));
                            i2++;
                            arrayListM5 = arrayListM5;
                            linkedHashMapU1 = linkedHashMapU1;
                        }
                    }
                } else {
                    str3 = str10;
                }
                linkedHashMap = linkedHashMapU1;
                for (Map.Entry entry : linkedHashMap3.entrySet()) {
                    linkedHashMap2.put((String) entry.getKey(), Integer.valueOf(((Integer) entry.getValue()).intValue() + ((Integer) linkedHashMap2.getOrDefault(entry.getKey(), 0)).intValue()));
                }
                str7 = str7;
                str8 = str8;
                str9 = str9;
                str10 = str3;
                linkedHashMapU1 = linkedHashMap;
            }
        }
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            Map mapJ = j(mapW0, (String) entry2.getKey(), ((Integer) entry2.getValue()).intValue(), 5);
            t(arrayList3, mapJ);
            arrayList4.add(p5.z0("type", 5, "id", entry2.getKey(), "item_id", entry2.getKey(), "num", entry2.getValue(), "item_num", entry2.getValue(), "pk_id", mapJ.get("pk_id")));
        }
        listF0.removeAll(arrayList);
        ArrayList arrayList5 = new ArrayList();
        Object[] objArr = {"upd", new ArrayList(), "add", listF0};
        String str11 = str2;
        mapW0.put("Item", p5.z0("del", c.a.n("del", arrayList5, objArr, mapW0, str11), "upd", new ArrayList(), "add", listF1));
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        linkedHashMap4.put(str11, p5.z0("del", arrayList2, "upd", new ArrayList(), "add", new ArrayList()));
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(str11);
        if (!arrayList3.isEmpty()) {
            linkedHashMap4.put("Item", p5.z0("del", new ArrayList(), "upd", arrayList3, "add", new ArrayList()));
            arrayList6.add("Item");
        }
        LinkedHashMap linkedHashMapZ0 = p5.z0("error_code", 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
        linkedHashMapZ0.put("delta_data", linkedHashMap4);
        linkedHashMapZ0.put("cmn_modules", arrayList6);
        linkedHashMapZ0.put("add_list", arrayList4);
        String str12 = str;
        String strO = O(str12, (Map) linkedHashMapZ0.get("delta_data"), mapW0, w4((List) linkedHashMapZ0.get("cmn_modules")));
        h5Var.S0(str12, mapW0);
        linkedHashMapZ0.put("cmn", p5.u1(strO));
        return A4(p5.s1(linkedHashMapZ0));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x036a  */
    /* JADX WARN: Code duplicated, block: B:104:0x0382  */
    /* JADX WARN: Code duplicated, block: B:105:0x0389  */
    public final byte[] o2(Map map) {
        h5 h5Var;
        Object obj;
        String str;
        Object obj2;
        String str2;
        LinkedHashMap linkedHashMapK4;
        String str3;
        Map mapZ0;
        String str4;
        y2 y2Var;
        String strS1;
        String strA1 = A1(map);
        h5 h5Var2 = this.f1553f;
        Map mapW0 = h5Var2.w0(strA1);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        LinkedHashMap linkedHashMapU1 = p5.u1(o0.a(this.f1549b, "skill_refines.json"));
        int iV3 = v3("skill_advanced_maxlevel", 5);
        Object obj3 = map.get("user_skill_id");
        String str5 = "pk_id";
        if (obj3 == null || String.valueOf(obj3).trim().isEmpty()) {
            obj3 = map.get("pk_id");
        }
        Map mapS0 = S0(obj3 == null ? "0" : String.valueOf(obj3), w1.f0("Skill", mapW0));
        String str6 = "cmn_modules";
        if (mapS0 == null) {
            h5Var = h5Var2;
            linkedHashMapK4 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "技能不存在");
            obj = "delta_data";
        } else {
            h5Var = h5Var2;
            String str7 = "error_code";
            int iF = c.a.f(mapS0, "advanced_level", "0", 0);
            if (iF < iV3) {
                obj = "delta_data";
                Object obj4 = linkedHashMapU1.get(String.valueOf(h1(mapS0, "skill_id", "id")));
                if (obj4 instanceof Map) {
                    int i2 = iF + 1;
                    Object obj5 = ((Map) obj4).get(String.valueOf(i2));
                    if (obj5 instanceof List) {
                        List list = (List) obj5;
                        if (!list.isEmpty()) {
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            Iterator it = list.iterator();
                            while (true) {
                                String str8 = "EquipmentPiece";
                                str = strA1;
                                String str9 = "Item";
                                String str10 = str6;
                                Object obj6 = obj;
                                if (!it.hasNext()) {
                                    String str11 = str7;
                                    Iterator it2 = linkedHashMap.values().iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            String str12 = str9;
                                            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                            for (x2 x2Var : linkedHashMap.values()) {
                                                int i3 = x2Var.f1531d - x2Var.f1530c;
                                                x2Var.f1532e.put("item_num", Integer.valueOf(i3));
                                                x2Var.f1532e.put("num", Integer.valueOf(i3));
                                                String str13 = x2Var.f1528a;
                                                if (i3 == 0) {
                                                    w1.f0(str13, mapW0).remove(x2Var.f1532e);
                                                    ((List) linkedHashMap3.computeIfAbsent(str13, new n.a(7))).add(v0(x2Var.f1532e));
                                                } else {
                                                    t((List) linkedHashMap2.computeIfAbsent(str13, new n.a(8)), x2Var.f1532e);
                                                }
                                            }
                                            mapS0.put("advanced_level", Integer.valueOf(i2));
                                            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                                            linkedHashMap4.put("Skill", p5.z0("del", new ArrayList(), "upd", p5.v0(mapS0), "add", new ArrayList()));
                                            ArrayList arrayList = new ArrayList();
                                            arrayList.add("Skill");
                                            for (String str14 : Arrays.asList(str12, "EquipmentPiece")) {
                                                List list2 = (List) linkedHashMap2.getOrDefault(str14, new ArrayList());
                                                List list3 = (List) linkedHashMap3.getOrDefault(str14, new ArrayList());
                                                if (!list2.isEmpty() || !list3.isEmpty()) {
                                                    linkedHashMap4.put(str14, p5.z0("del", list3, "upd", list2, "add", new ArrayList()));
                                                    mapW0.put(str14, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", w1.f0(str14, mapW0)));
                                                    arrayList.add(str14);
                                                }
                                            }
                                            LinkedHashMap linkedHashMapZ0 = p5.z0(str11, 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
                                            obj2 = obj6;
                                            linkedHashMapZ0.put(obj2, linkedHashMap4);
                                            str2 = str10;
                                            linkedHashMapZ0.put(str2, arrayList);
                                            linkedHashMapK4 = linkedHashMapZ0;
                                            break;
                                        }
                                        x2 x2Var2 = (x2) it2.next();
                                        Iterator it3 = it2;
                                        boolean zEquals = str9.equals(x2Var2.f1528a);
                                        String str15 = str9;
                                        String str16 = x2Var2.f1529b;
                                        if (!zEquals) {
                                            Iterator it4 = w1.f0(x2Var2.f1528a, mapW0).iterator();
                                            while (true) {
                                                if (!it4.hasNext()) {
                                                    str3 = str5;
                                                    mapZ0 = null;
                                                    break;
                                                }
                                                Iterator it5 = it4;
                                                Map map2 = (Map) it4.next();
                                                if (c.a.B(map2, str5, "", str16)) {
                                                    str3 = str5;
                                                } else {
                                                    str3 = str5;
                                                    if (!c.a.B(map2, "equipment_id", "", str16) && !c.a.B(map2, "id", "", str16) && !c.a.B(map2, "item_id", "", str16)) {
                                                        str5 = str3;
                                                        it4 = it5;
                                                    }
                                                }
                                                mapZ0 = map2;
                                                break;
                                            }
                                        }
                                        mapZ0 = Z0(str16, mapW0);
                                        str3 = str5;
                                        x2Var2.f1532e = mapZ0;
                                        if (mapZ0 == null) {
                                            str4 = "skill refine material not found";
                                        } else {
                                            int iC3 = C3(h1(mapZ0, "item_num", "num"), 0);
                                            x2Var2.f1531d = iC3;
                                            if (iC3 < x2Var2.f1530c) {
                                                str4 = "skill refine material not enough";
                                            } else {
                                                it2 = it3;
                                                str9 = str15;
                                                str5 = str3;
                                            }
                                        }
                                    }
                                } else {
                                    Object next = it.next();
                                    Iterator it6 = it;
                                    if (next instanceof Map) {
                                        Map map3 = (Map) next;
                                        String str17 = str7;
                                        int iC4 = C3(map3.get("item_type"), 0);
                                        String strValueOf = String.valueOf(map3.getOrDefault("item_id", ""));
                                        int iC5 = C3(map3.get("item_num"), 0);
                                        if (iC4 == 5) {
                                            str8 = "Item";
                                        } else if (iC4 != 8) {
                                            str8 = "";
                                        }
                                        if (str8.isEmpty() || strValueOf.isEmpty() || iC5 <= 0) {
                                            str4 = "invalid skill refine material config";
                                        } else {
                                            String str18 = str8 + ":" + strValueOf;
                                            x2 x2Var3 = (x2) linkedHashMap.get(str18);
                                            if (x2Var3 == null) {
                                                x2Var3 = new x2(str8, strValueOf);
                                                linkedHashMap.put(str18, x2Var3);
                                            }
                                            x2Var3.f1530c += iC5;
                                            str6 = str10;
                                            strA1 = str;
                                            obj = obj6;
                                            it = it6;
                                            str7 = str17;
                                        }
                                    } else {
                                        str4 = "invalid skill refine config";
                                    }
                                }
                                linkedHashMapK4 = k4(str4);
                                str2 = str10;
                                obj2 = obj6;
                                break;
                            }
                        } else {
                            str = strA1;
                            obj2 = obj;
                            str2 = "cmn_modules";
                            linkedHashMapK4 = k4("skill refine level config not found");
                        }
                    } else {
                        str = strA1;
                        obj2 = obj;
                        str2 = "cmn_modules";
                        linkedHashMapK4 = k4("skill refine level config not found");
                    }
                } else {
                    linkedHashMapK4 = k4("skill refine config not found");
                }
                if (Boolean.TRUE.equals(linkedHashMapK4.get("result"))) {
                    Map map4 = (Map) linkedHashMapK4.get(obj2);
                    map4.put("user_coin", mapW0.get("user_coin"));
                    map4.put("user_gold", mapW0.get("user_gold"));
                    map4.put("user_energy", mapW0.get("user_energy"));
                    map4.put("user_power", mapW0.get("user_power"));
                    y2Var = this;
                    String str19 = str;
                    String strO = y2Var.O(str19, map4, mapW0, w4((List) linkedHashMapK4.get(str2)));
                    h5Var.S0(str19, mapW0);
                    linkedHashMapK4.put("cmn", p5.u1(strO));
                    strS1 = p5.s1(linkedHashMapK4);
                } else {
                    strS1 = p5.s1(linkedHashMapK4);
                    y2Var = this;
                }
                return y2Var.A4(strS1);
            }
            linkedHashMapK4 = p5.z0(str7, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "已达到最高进阶等级");
            obj = "delta_data";
        }
        str = strA1;
        obj2 = obj;
        str2 = "cmn_modules";
        if (Boolean.TRUE.equals(linkedHashMapK4.get("result"))) {
            strS1 = p5.s1(linkedHashMapK4);
            y2Var = this;
        } else {
            Map map5 = (Map) linkedHashMapK4.get(obj2);
            map5.put("user_coin", mapW0.get("user_coin"));
            map5.put("user_gold", mapW0.get("user_gold"));
            map5.put("user_energy", mapW0.get("user_energy"));
            map5.put("user_power", mapW0.get("user_power"));
            y2Var = this;
            String str110 = str;
            String strO2 = y2Var.O(str110, map5, mapW0, w4((List) linkedHashMapK4.get(str2)));
            h5Var.S0(str110, mapW0);
            linkedHashMapK4.put("cmn", p5.u1(strO2));
            strS1 = p5.s1(linkedHashMapK4);
        }
        return y2Var.A4(strS1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:131:0x034e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0357  */
    /* JADX WARN: Code duplicated, block: B:135:0x035e  */
    /* JADX WARN: Code duplicated, block: B:141:0x0371  */
    /* JADX WARN: Code duplicated, block: B:145:0x038f A[LOOP:1: B:143:0x0389->B:145:0x038f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:251:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:304:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x024f  */
    /* JADX WARN: Code duplicated, block: B:83:0x0259 A[Catch: Exception -> 0x0293, TryCatch #3 {Exception -> 0x0293, blocks: (B:79:0x0248, B:81:0x0255, B:83:0x0259, B:85:0x0263, B:86:0x0266, B:88:0x026a, B:89:0x0270, B:91:0x0276, B:93:0x027e, B:95:0x028f), top: B:292:0x0248 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0263 A[Catch: Exception -> 0x0293, TryCatch #3 {Exception -> 0x0293, blocks: (B:79:0x0248, B:81:0x0255, B:83:0x0259, B:85:0x0263, B:86:0x0266, B:88:0x026a, B:89:0x0270, B:91:0x0276, B:93:0x027e, B:95:0x028f), top: B:292:0x0248 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0266 A[Catch: Exception -> 0x0293, TryCatch #3 {Exception -> 0x0293, blocks: (B:79:0x0248, B:81:0x0255, B:83:0x0259, B:85:0x0263, B:86:0x0266, B:88:0x026a, B:89:0x0270, B:91:0x0276, B:93:0x027e, B:95:0x028f), top: B:292:0x0248 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x026a A[Catch: Exception -> 0x0293, TryCatch #3 {Exception -> 0x0293, blocks: (B:79:0x0248, B:81:0x0255, B:83:0x0259, B:85:0x0263, B:86:0x0266, B:88:0x026a, B:89:0x0270, B:91:0x0276, B:93:0x027e, B:95:0x028f), top: B:292:0x0248 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0276 A[Catch: Exception -> 0x0293, TryCatch #3 {Exception -> 0x0293, blocks: (B:79:0x0248, B:81:0x0255, B:83:0x0259, B:85:0x0263, B:86:0x0266, B:88:0x026a, B:89:0x0270, B:91:0x0276, B:93:0x027e, B:95:0x028f), top: B:292:0x0248 }] */
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v44 int, still in use, count: 2, list:
      (r0v44 int) from 0x04ec: SWITCH (r0v44 int)
     case 1449588354: goto B:215:0x0538
     case 1449588355: goto B:211:0x052b
     case 1449588356: goto B:207:0x051e
     case 1449588357: goto B:203:0x0511
     case 1449588358: goto B:199:0x0504
     case 1449588359: goto B:195:0x04f7
     default: goto B:192:0x04ef A[RegionRef:SW:191] (LINE:1261)
      (r0v44 int) from 0x04f2: SWITCH (r0v44 int)
     case 1450511903: goto B:247:0x0597
     case 1450511909: goto B:243:0x058b
     case 1451435399: goto B:239:0x057f
     case 1451435401: goto B:235:0x0573
     case 1452358916: goto B:231:0x0567
     case 1452358945: goto B:227:0x055b
     default: goto B:251:0x05a3 A[RegionRef:SW:193] (LINE:1267)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:141:0x0371, please report this as an issue */
    public final HashMap p1(String str) {
        ArrayList arrayList;
        HashMap map;
        Context context;
        String str2;
        ArrayList arrayList2;
        String str3;
        ArrayList arrayList3;
        ArrayList arrayList4;
        o2 o2Var;
        ArrayList arrayList5;
        ArrayList arrayList6;
        int i2;
        boolean z;
        String strValueOf;
        int iF;
        int i3;
        int i4;
        Object objD;
        Iterator it;
        Object next;
        Map map2;
        Object obj;
        HashMap map3;
        ArrayList arrayList7;
        Context context2;
        String str4;
        String str5;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList arrayList10;
        String str6;
        boolean z2;
        Object obj2;
        ArrayList arrayList11;
        String str7;
        ArrayList arrayList12;
        byte b2;
        String str8;
        String str9;
        HashMap map4 = new HashMap();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        map4.put("coin", 0);
        boolean zEquals = "791465".equals(str);
        String str10 = "generals";
        String str11 = "equipments";
        String str12 = "type";
        Object obj3 = "coin";
        Context context3 = this.f1549b;
        if (zEquals) {
            Random random = new Random();
            map4.put("type", "signin_horse_chest");
            map4.put("gift_name", "宝马宝箱");
            map4.put("gift_desc", "连续签到送宝马第3天坐骑");
            arrayList14.add(B0(random, context3));
            map4.put("items", arrayList13);
            map4.put("equipments", arrayList14);
            map4.put("generals", arrayList15);
            map4.put("skills", arrayList16);
            return map4;
        }
        HashMap map5 = this.U;
        String str13 = "SGSCQ_SRV";
        String str14 = null;
        if (map5 != null) {
            str10 = "generals";
            str11 = "equipments";
        } else {
            try {
                String strA = o0.a(context3, "gift_box_contents.json");
                HashMap mapU1 = (strA == null || strA.isEmpty()) ? null : p5.u1(strA);
                try {
                    if (!(mapU1 instanceof Map)) {
                        mapU1 = new HashMap();
                    }
                    this.U = mapU1;
                } catch (Exception e2) {
                    e = e2;
                    z2.g("SGSCQ_SRV", "[GiftBox] load encrypted db failed: " + e.getMessage());
                    this.U = new HashMap();
                }
            } catch (Exception e3) {
                e = e3;
                str10 = "generals";
            }
            z2.e("SGSCQ_SRV", "[GiftBox] db loaded, keys=" + this.U.size());
            map5 = this.U;
        }
        Object obj4 = map5.get(str);
        String str15 = "item_type";
        if (obj4 instanceof Map) {
            Map map6 = (Map) obj4;
            o2 o2Var2 = new o2(this);
            map4.put("type", "asset_gift");
            map4.put("gift_name", String.valueOf(map6.getOrDefault("name", "")));
            map4.put("gift_desc", String.valueOf(map6.getOrDefault("desc", "")));
            Object obj5 = map6.get("add_list");
            if (obj5 instanceof List) {
                Iterator it2 = ((List) obj5).iterator();
                o2 o2Var3 = o2Var2;
                o2 o2Var4 = o2Var3;
                ArrayList arrayList17 = arrayList13;
                while (it2.hasNext()) {
                    ArrayList arrayList18 = arrayList13;
                    Object next2 = it2.next();
                    it2 = it2;
                    if (next2 instanceof Map) {
                        Map map7 = (Map) next2;
                        arrayList = arrayList16;
                        String strValueOf2 = String.valueOf(map7.getOrDefault("id", ""));
                        if (!strValueOf2.isEmpty()) {
                            ArrayList arrayList19 = arrayList14;
                            ArrayList arrayList20 = arrayList15;
                            String str16 = str13;
                            int iF2 = c.a.f(map7, "num", "1", 1);
                            int iF3 = c.a.f(map7, str12, "0", 0);
                            String str17 = str12;
                            if ("600026".equals(strValueOf2)) {
                                Object obj6 = obj3;
                                map4.put(obj6, Integer.valueOf(w1.l2(String.valueOf(map4.getOrDefault(obj6, "0")), 0) + iF2));
                                int iT1 = o2Var3.f1241a.t1(strValueOf2);
                                if (iT1 <= 0) {
                                    iT1 = iF3 == 6 ? 20 : W2(strValueOf2, 1);
                                }
                                arrayList17.add(n4(strValueOf2, iF2, iT1, iF3));
                                map = map4;
                                context = context3;
                                arrayList6 = arrayList17;
                                str2 = str15;
                                obj3 = obj6;
                                o2Var = o2Var4;
                                arrayList5 = arrayList18;
                                arrayList3 = arrayList19;
                                arrayList4 = arrayList;
                                arrayList2 = arrayList20;
                                str3 = str16;
                            } else {
                                Object obj7 = obj3;
                                if (iF3 == 1) {
                                    w1 w1VarA1 = w1.a1(context3);
                                    String strA2 = o0.a(context3, "items.json");
                                    String strA3 = o0.a(context3, "i18n.json");
                                    obj3 = obj7;
                                    context = context3;
                                    String strValueOf3 = String.valueOf(map6.getOrDefault("resource_id", ""));
                                    if (strValueOf2.isEmpty() || strValueOf3.isEmpty() || strValueOf2.equals(strValueOf3)) {
                                        map = map4;
                                        i2 = iF2;
                                    } else {
                                        if (strValueOf2.isEmpty()) {
                                            map = map4;
                                            i2 = iF2;
                                            map2 = null;
                                            break;
                                        }
                                        Map mapC1 = w1VarA1 == null ? null : w1VarA1.c1(strValueOf2);
                                        if (mapC1 == null) {
                                            if (strA2 != null) {
                                                try {
                                                    if (strA2.isEmpty()) {
                                                        map = map4;
                                                        i2 = iF2;
                                                        objD = null;
                                                    } else {
                                                        map = map4;
                                                        try {
                                                            i2 = iF2;
                                                            try {
                                                                objD = new a.o().d(strA2, Object.class);
                                                            } catch (Exception unused) {
                                                            }
                                                        } catch (Exception unused2) {
                                                            i2 = iF2;
                                                        }
                                                    }
                                                    if (objD instanceof Map) {
                                                        obj = ((Map) objD).get(strValueOf2);
                                                        if (obj instanceof Map) {
                                                            map2 = (Map) obj;
                                                        }
                                                    } else if (objD instanceof List) {
                                                        it = ((List) objD).iterator();
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                next = it.next();
                                                                if (!(next instanceof Map) && strValueOf2.equals(String.valueOf(((Map) next).get("id")))) {
                                                                    map2 = (Map) next;
                                                                    break;
                                                                }
                                                            }
                                                        }
                                                    }
                                                } catch (Exception unused3) {
                                                    map = map4;
                                                }
                                            } else {
                                                map = map4;
                                                i2 = iF2;
                                                objD = null;
                                                if (objD instanceof Map) {
                                                    obj = ((Map) objD).get(strValueOf2);
                                                    if (obj instanceof Map) {
                                                        map2 = (Map) obj;
                                                    }
                                                } else if (objD instanceof List) {
                                                    it = ((List) objD).iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            next = it.next();
                                                            if (!(next instanceof Map)) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            map2 = null;
                                            break;
                                        }
                                        i2 = iF2;
                                        Map map8 = mapC1;
                                        map = map4;
                                        map2 = map8;
                                        if (map2 != null && c.a.e(map2, str15, -1) == 31) {
                                            if (w1VarA1 == null || w1VarA1.C1(strValueOf3)) {
                                                str2 = str15;
                                                str3 = str16;
                                            } else {
                                                String strX0 = x0(w1VarA1, strA3, map6.get("name"));
                                                String strX1 = x0(w1VarA1, strA3, strValueOf3.concat("01"));
                                                str2 = str15;
                                                String strX2 = x0(w1VarA1, strA3, map2.get("name"));
                                                String strX3 = x0(w1VarA1, strA3, map2.get("desc"));
                                                if (!strX0.isEmpty() && !strX1.isEmpty() && !strX2.isEmpty() && !strX3.isEmpty() && strX0.replace("礼包", "").replace("武将牌", "").replace("*1", "").trim().equals(strX1) && strX1.equals(strX2) && !strX3.equals(strX1)) {
                                                    str3 = str16;
                                                    z2.e(str3, "[GiftBox] resolve general card alias gift=" + map6.getOrDefault("id", "") + " content=" + strValueOf2 + " general=" + strValueOf3);
                                                }
                                                if (z) {
                                                    strValueOf = String.valueOf(map6.getOrDefault("resource_id", ""));
                                                } else {
                                                    strValueOf = strValueOf2;
                                                }
                                                if (!strValueOf.isEmpty() && !"null".equalsIgnoreCase(strValueOf)) {
                                                    strValueOf2 = strValueOf;
                                                }
                                                iF = c.a.f(map7, "level", "0", 0);
                                                if (iF > 0) {
                                                    strValueOf2 = strValueOf2 + ":" + iF;
                                                }
                                                i4 = i2;
                                                for (i3 = 0; i3 < Math.max(1, i4); i3++) {
                                                    arrayList20.add(strValueOf2);
                                                }
                                                arrayList2 = arrayList20;
                                            }
                                            z = true;
                                            if (z) {
                                                strValueOf = String.valueOf(map6.getOrDefault("resource_id", ""));
                                            } else {
                                                strValueOf = strValueOf2;
                                            }
                                            if (!strValueOf.isEmpty()) {
                                                strValueOf2 = strValueOf;
                                            }
                                            iF = c.a.f(map7, "level", "0", 0);
                                            if (iF > 0) {
                                                strValueOf2 = strValueOf2 + ":" + iF;
                                            }
                                            i4 = i2;
                                            while (i3 < Math.max(1, i4)) {
                                                arrayList20.add(strValueOf2);
                                            }
                                            arrayList2 = arrayList20;
                                        }
                                        str3 = str16;
                                        z = false;
                                        if (z) {
                                            strValueOf = String.valueOf(map6.getOrDefault("resource_id", ""));
                                        } else {
                                            strValueOf = strValueOf2;
                                        }
                                        if (!strValueOf.isEmpty()) {
                                            strValueOf2 = strValueOf;
                                        }
                                        iF = c.a.f(map7, "level", "0", 0);
                                        if (iF > 0) {
                                            strValueOf2 = strValueOf2 + ":" + iF;
                                        }
                                        i4 = i2;
                                        while (i3 < Math.max(1, i4)) {
                                            arrayList20.add(strValueOf2);
                                        }
                                        arrayList2 = arrayList20;
                                    }
                                    str2 = str15;
                                    str3 = str16;
                                    z = false;
                                    if (z) {
                                        strValueOf = String.valueOf(map6.getOrDefault("resource_id", ""));
                                    } else {
                                        strValueOf = strValueOf2;
                                    }
                                    if (!strValueOf.isEmpty()) {
                                        strValueOf2 = strValueOf;
                                    }
                                    iF = c.a.f(map7, "level", "0", 0);
                                    if (iF > 0) {
                                        strValueOf2 = strValueOf2 + ":" + iF;
                                    }
                                    i4 = i2;
                                    while (i3 < Math.max(1, i4)) {
                                        arrayList20.add(strValueOf2);
                                    }
                                    arrayList2 = arrayList20;
                                } else {
                                    map = map4;
                                    context = context3;
                                    str2 = str15;
                                    obj3 = obj7;
                                    arrayList2 = arrayList20;
                                    str3 = str16;
                                    if (iF3 == 3) {
                                        for (int i5 = 0; i5 < Math.max(1, iF2); i5++) {
                                            arrayList19.add(strValueOf2);
                                        }
                                    } else {
                                        arrayList3 = arrayList19;
                                        if (iF3 == 4) {
                                            int i6 = 0;
                                            for (int i7 = 1; i6 < Math.max(i7, iF2); i7 = 1) {
                                                arrayList.add(strValueOf2);
                                                i6++;
                                            }
                                            arrayList4 = arrayList;
                                            arrayList5 = arrayList18;
                                            o2Var = o2Var4;
                                        } else {
                                            arrayList4 = arrayList;
                                            if (iF3 == 6) {
                                                arrayList5 = arrayList18;
                                                arrayList5.add(n4(strValueOf2, iF2, 20, iF3));
                                                o2Var = o2Var4;
                                            } else {
                                                o2Var = o2Var4;
                                                arrayList5 = arrayList18;
                                                int iT2 = o2Var.f1241a.t1(strValueOf2);
                                                if (iT2 <= 0) {
                                                    iT2 = iF3 == 6 ? 20 : W2(strValueOf2, 1);
                                                }
                                                arrayList5.add(n4(strValueOf2, iF2, iT2, iF3));
                                            }
                                        }
                                    }
                                    arrayList6 = arrayList5;
                                    o2Var3 = o2Var;
                                }
                                arrayList3 = arrayList19;
                                arrayList4 = arrayList;
                                arrayList5 = arrayList18;
                                o2Var = o2Var4;
                                arrayList6 = arrayList5;
                                o2Var3 = o2Var;
                            }
                            str13 = str3;
                            arrayList15 = arrayList2;
                            arrayList16 = arrayList4;
                            o2Var4 = o2Var;
                            str12 = str17;
                            context3 = context;
                            arrayList17 = arrayList6;
                            arrayList14 = arrayList3;
                            arrayList13 = arrayList5;
                            map4 = map;
                            str15 = str2;
                        }
                    } else {
                        arrayList = arrayList16;
                    }
                    arrayList13 = arrayList18;
                    arrayList16 = arrayList;
                }
            }
            map3 = map4;
            arrayList7 = arrayList16;
            context2 = context3;
            str4 = str15;
            str5 = str12;
            arrayList8 = arrayList13;
            arrayList9 = arrayList14;
            arrayList10 = arrayList15;
            str6 = str13;
            z2 = true;
        } else {
            z2 = false;
            map3 = map4;
            arrayList7 = arrayList16;
            context2 = context3;
            str4 = "item_type";
            str5 = "type";
            arrayList8 = arrayList13;
            arrayList9 = arrayList14;
            arrayList10 = arrayList15;
            str6 = "SGSCQ_SRV";
        }
        if (z2) {
            HashMap map9 = map3;
            map9.put("items", arrayList8);
            map9.put(str11, arrayList9);
            map9.put(str10, arrayList10);
            map9.put("skills", arrayList7);
            return map9;
        }
        String str18 = str10;
        String str19 = str11;
        HashMap map10 = map3;
        if (str.startsWith("79")) {
            obj2 = "skills";
            if (str.length() == 8) {
                String strSubstring = str.substring(2);
                char cCharAt = strSubstring.charAt(0);
                if (cCharAt == '1') {
                    map10.put(str5, "soul");
                    HashMap map11 = new HashMap();
                    map11.put("item_id", strSubstring);
                    map11.put("item_num", 2);
                    String str20 = str4;
                    map11.put(str20, 20);
                    arrayList8.add(map11);
                    HashMap map12 = new HashMap();
                    map12.put("item_id", "600012");
                    map12.put("item_num", 10);
                    map12.put(str20, 19);
                    arrayList8.add(map12);
                    HashMap map13 = new HashMap();
                    map13.put("item_id", "600013");
                    map13.put("item_num", 5);
                    map13.put(str20, 6);
                    arrayList8.add(map13);
                    String strR0 = w1.a1(context2).R0(strSubstring);
                    if (!strR0.startsWith("?") && !strR0.contains("铜") && !strR0.contains("银")) {
                        switch (strSubstring.hashCode()) {
                            case 1449588354:
                                if (strSubstring.equals("111003")) {
                                    b2 = 0;
                                } else {
                                    b2 = -1;
                                }
                                break;
                            case 1449588355:
                                if (strSubstring.equals("111004")) {
                                    b2 = 1;
                                } else {
                                    b2 = -1;
                                }
                                break;
                            case 1449588356:
                                if (strSubstring.equals("111005")) {
                                    b2 = 2;
                                } else {
                                    b2 = -1;
                                }
                                break;
                            case 1449588357:
                                if (strSubstring.equals("111006")) {
                                    b2 = 3;
                                } else {
                                    b2 = -1;
                                }
                                break;
                            case 1449588358:
                                if (strSubstring.equals("111007")) {
                                    b2 = 4;
                                } else {
                                    b2 = -1;
                                }
                                break;
                            case 1449588359:
                                if (strSubstring.equals("111008")) {
                                    b2 = 5;
                                } else {
                                    b2 = -1;
                                }
                                break;
                            default:
                                switch (strSubstring) {
                                    case "121005":
                                        b2 = 6;
                                        break;
                                    case "121006":
                                        b2 = 7;
                                        break;
                                    default:
                                        switch (strSubstring) {
                                            case 1450511903:
                                                if (strSubstring.equals("121010")) {
                                                    b2 = 8;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1450511909:
                                                if (strSubstring.equals("121016")) {
                                                    b2 = 9;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1451435399:
                                                if (strSubstring.equals("131006")) {
                                                    b2 = 10;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1451435401:
                                                if (strSubstring.equals("131008")) {
                                                    b2 = 11;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1452358916:
                                                if (strSubstring.equals("141002")) {
                                                    b2 = 12;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            case 1452358945:
                                                if (strSubstring.equals("141010")) {
                                                    b2 = 13;
                                                } else {
                                                    b2 = -1;
                                                }
                                                break;
                                            default:
                                                b2 = -1;
                                                break;
                                        }
                                }
                                break;
                        }
                        switch (b2) {
                            case 0:
                            case 4:
                                str8 = "211005";
                                break;
                            case 1:
                            case 11:
                                str8 = "211010";
                                break;
                            case 2:
                            case 7:
                                str8 = "211008";
                                break;
                            case 3:
                                str14 = "221001";
                                str8 = str14;
                                break;
                            case 5:
                            case 12:
                                str14 = "241004";
                                str8 = str14;
                                break;
                            case 6:
                                str9 = "211011";
                                str14 = str9;
                                str8 = str14;
                                break;
                            case 8:
                                str14 = "242004";
                                str8 = str14;
                                break;
                            case 9:
                                str14 = "221002";
                                str8 = str14;
                                break;
                            case 10:
                                str14 = "221008";
                                str8 = str14;
                                break;
                            case 13:
                                str9 = "212005";
                                str14 = str9;
                                str8 = str14;
                                break;
                            default:
                                str8 = str14;
                                break;
                        }
                        if (str8 != null) {
                            arrayList9.add(str8);
                        }
                    }
                } else {
                    String str21 = str5;
                    String str22 = str4;
                    if (cCharAt == '2') {
                        map10.put(str21, "equipment");
                        arrayList9.add(strSubstring);
                        HashMap map14 = new HashMap();
                        map14.put("item_id", "600096");
                        map14.put("item_num", 5);
                        map14.put(str22, 8);
                        arrayList8.add(map14);
                    } else {
                        map10.put(str21, "gift");
                    }
                }
                str7 = str18;
                arrayList12 = arrayList10;
                arrayList11 = arrayList7;
            }
            map10.put("items", arrayList8);
            map10.put(str19, arrayList9);
            map10.put(str7, arrayList12);
            map10.put(obj2, arrayList11);
            return map10;
        }
        obj2 = "skills";
        String str23 = str5;
        String str24 = str4;
        arrayList11 = arrayList7;
        str7 = str18;
        if (str.startsWith("71")) {
            arrayList12 = arrayList10;
            if (str.length() == 6) {
                map10.put(str23, "vip_gift");
                HashMap map15 = new HashMap();
                map15.put("item_id", "600034");
                map15.put("item_num", 100);
                map15.put(str24, 16);
                arrayList8.add(map15);
                HashMap map16 = new HashMap();
                map16.put("item_id", "600007");
                map16.put("item_num", 5);
                map16.put(str24, 5);
                arrayList8.add(map16);
            }
            map10.put("items", arrayList8);
            map10.put(str19, arrayList9);
            map10.put(str7, arrayList12);
            map10.put(obj2, arrayList11);
            return map10;
        }
        arrayList12 = arrayList10;
        map10.put(str23, "newbie_fallback");
        HashMap map17 = new HashMap();
        map17.put("item_id", "600034");
        map17.put("item_num", 100);
        map17.put(str24, 16);
        arrayList8.add(map17);
        HashMap map18 = new HashMap();
        map18.put("item_id", "600012");
        map18.put("item_num", 20);
        map18.put(str24, 19);
        arrayList8.add(map18);
        HashMap map19 = new HashMap();
        map19.put("item_id", "600013");
        map19.put("item_num", 10);
        map19.put(str24, 6);
        arrayList8.add(map19);
        HashMap map20 = new HashMap();
        map20.put("item_id", "600002");
        map20.put("item_num", 50000);
        map20.put(str24, 1);
        arrayList8.add(map20);
        arrayList9.add("231001");
        z2.e(str6, "[GiftBox] Unknown gift_id=" + str + " → newbie fallback");
        map10.put("items", arrayList8);
        map10.put(str19, arrayList9);
        map10.put(str7, arrayList12);
        map10.put(obj2, arrayList11);
        return map10;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x034a  */
    /* JADX WARN: Code duplicated, block: B:103:0x0352  */
    /* JADX WARN: Code duplicated, block: B:104:0x035b  */
    /* JADX WARN: Code duplicated, block: B:107:0x0360  */
    /* JADX WARN: Code duplicated, block: B:110:0x036e  */
    /* JADX WARN: Code duplicated, block: B:113:0x037e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0382  */
    /* JADX WARN: Code duplicated, block: B:116:0x0389  */
    /* JADX WARN: Code duplicated, block: B:308:0x085c  */
    /* JADX WARN: Code duplicated, block: B:311:0x0867 A[Catch: RuntimeException -> 0x0892, TryCatch #0 {RuntimeException -> 0x0892, blocks: (B:309:0x085d, B:311:0x0867, B:312:0x086d, B:313:0x087a, B:315:0x0880, B:317:0x088c), top: B:331:0x085d }] */
    /* JADX WARN: Code duplicated, block: B:312:0x086d A[Catch: RuntimeException -> 0x0892, TryCatch #0 {RuntimeException -> 0x0892, blocks: (B:309:0x085d, B:311:0x0867, B:312:0x086d, B:313:0x087a, B:315:0x0880, B:317:0x088c), top: B:331:0x085d }] */
    /* JADX WARN: Code duplicated, block: B:315:0x0880 A[Catch: RuntimeException -> 0x0892, TryCatch #0 {RuntimeException -> 0x0892, blocks: (B:309:0x085d, B:311:0x0867, B:312:0x086d, B:313:0x087a, B:315:0x0880, B:317:0x088c), top: B:331:0x085d }] */
    /* JADX WARN: Code duplicated, block: B:350:0x0376 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:352:0x0368 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:381:0x088c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:383:0x087a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x031b  */
    /* JADX WARN: Code duplicated, block: B:93:0x033b  */
    /* JADX WARN: Code duplicated, block: B:96:0x0340  */
    /* JADX WARN: Code duplicated, block: B:97:0x0345  */
    public final byte[] p2(Map map) {
        String str;
        h5 h5Var;
        Object obj;
        int i2;
        ArrayList arrayList;
        String str2;
        ArrayList arrayList2;
        double dDoubleValue;
        Map map2;
        String str3;
        LinkedHashMap linkedHashMapZ0;
        Object obj2;
        y2 y2Var;
        ArrayList arrayList3;
        a7 a7VarV1;
        ArrayList arrayList4;
        Iterator it;
        Map mapB;
        List<Map> list;
        boolean z;
        Object obj3;
        ArrayList arrayList5;
        ArrayList arrayList6;
        String str4;
        Map map3;
        LinkedHashMap linkedHashMapZ1;
        String str5;
        Map mapR4;
        Object obj4;
        Object obj5;
        double dJ4;
        String str6;
        ArrayList arrayList7;
        String strX;
        String strA1 = A1(map);
        h5 h5Var2 = this.f1553f;
        Map mapW0 = h5Var2.w0(strA1);
        if (mapW0 == null) {
            return L0("玩家数据不存在", -1);
        }
        int iV3 = v3("skill_maxlevel", 100);
        String str7 = "pk_id";
        String str8 = "0";
        String strZ3 = z3("user_skill_id", z3("pk_id", "0", map), map);
        ArrayList arrayListY3 = y3(map, "consume_user_skill_ids");
        List listF0 = w1.f0("Skill", mapW0);
        Map mapS0 = S0(strZ3, listF0);
        if (mapS0 == null) {
            linkedHashMapZ0 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "技能不存在");
            str = strA1;
            h5Var = h5Var2;
            y2Var = this;
            obj2 = "delta_data";
        } else {
            double dB3 = B3(mapS0.getOrDefault("exp", "0"));
            str = strA1;
            h5Var = h5Var2;
            int iF = c.a.f(mapS0, "level", "1", 1);
            int iMin = iV3 > 0 ? Math.min(30, iV3) : 30;
            if (iF >= iMin) {
                linkedHashMapZ0 = p5.z0("error_code", -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "已达到最高等级");
                obj = "delta_data";
            } else {
                String str9 = "error_code";
                obj = "delta_data";
                ArrayList arrayList8 = new ArrayList();
                String str10 = "1";
                ArrayList arrayList9 = new ArrayList();
                ArrayList arrayList10 = new ArrayList();
                ArrayList arrayList11 = new ArrayList();
                String str11 = "general_pk_id";
                Map map4 = mapS0;
                if (arrayListY3.isEmpty()) {
                    i2 = iMin;
                    arrayList = arrayList10;
                    str2 = "pk_id";
                    arrayList2 = arrayList11;
                    dDoubleValue = 0.0d;
                } else {
                    Iterator it2 = arrayListY3.iterator();
                    dDoubleValue = 0.0d;
                    while (it2.hasNext()) {
                        Iterator it3 = it2;
                        String str12 = (String) it2.next();
                        int i3 = iMin;
                        Map mapS1 = S0(str12, listF0);
                        ArrayList arrayList12 = arrayList10;
                        if (mapS1 != null) {
                            arrayList7 = arrayList11;
                            str6 = str7;
                            if (!c.a.B(mapS1, "is_natural", "false", "true") && !str12.equals(strZ3)) {
                                String strValueOf = String.valueOf(mapS1.getOrDefault("general_pk_id", "0"));
                                if ("0".equals(strValueOf) || "null".equals(strValueOf) || strValueOf.isEmpty()) {
                                    dDoubleValue = j4(mapS1) + dDoubleValue;
                                    arrayList8.add(mapS1);
                                    arrayList9.add(v0(mapS1));
                                }
                            }
                        } else {
                            str6 = str7;
                            arrayList7 = arrayList11;
                        }
                        iMin = i3;
                        it2 = it3;
                        arrayList10 = arrayList12;
                        arrayList11 = arrayList7;
                        str7 = str6;
                    }
                    i2 = iMin;
                    arrayList = arrayList10;
                    str2 = str7;
                    arrayList2 = arrayList11;
                    listF0.removeAll(arrayList8);
                }
                ArrayList arrayListA3 = A3(map, "consume_user_item_ids");
                ArrayList arrayListA4 = A3(map, "consume_user_item_num");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int i4 = 0;
                while (true) {
                    if (i4 < arrayListA3.size()) {
                        int iL2 = i4 < arrayListA4.size() ? w1.l2((String) arrayListA4.get(i4), 1) : 1;
                        if (iL2 <= 0) {
                            linkedHashMapZ1 = p5.z0(str9, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "道具数量无效");
                        } else {
                            String str13 = (String) arrayListA3.get(i4);
                            ArrayList arrayList13 = arrayListA3;
                            ArrayList arrayList14 = arrayListA4;
                            List list2 = listF0;
                            long jIntValue = ((long) ((Integer) linkedHashMap.getOrDefault(str13, 0)).intValue()) + ((long) iL2);
                            if (jIntValue > 2147483647L) {
                                linkedHashMapZ1 = p5.z0(str9, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "道具数量无效");
                            } else {
                                linkedHashMap.put(str13, Integer.valueOf((int) jIntValue));
                                i4++;
                                arrayListA4 = arrayList14;
                                arrayListA3 = arrayList13;
                                listF0 = list2;
                            }
                        }
                    } else {
                        List list3 = listF0;
                        ArrayList arrayList15 = new ArrayList();
                        ArrayList arrayList16 = new ArrayList();
                        ArrayList arrayList17 = new ArrayList();
                        Iterator it4 = linkedHashMap.entrySet().iterator();
                        int i5 = 0;
                        while (true) {
                            String str14 = str8;
                            String str15 = "Item";
                            if (it4.hasNext()) {
                                Map.Entry entry = (Map.Entry) it4.next();
                                Iterator it5 = it4;
                                int iIntValue = ((Integer) entry.getValue()).intValue();
                                String str16 = (String) entry.getKey();
                                Iterator it6 = w1.f0("Item", mapW0).iterator();
                                while (true) {
                                    if (!it6.hasNext()) {
                                        str4 = str11;
                                        map3 = null;
                                        break;
                                    }
                                    Iterator it7 = it6;
                                    map3 = (Map) it6.next();
                                    str4 = str11;
                                    if (str16.equals(String.valueOf(h1(map3, str2)))) {
                                        break;
                                    }
                                    str11 = str4;
                                    it6 = it7;
                                }
                                if (map3 == null) {
                                    linkedHashMapZ1 = p5.z0(str9, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "道具不存在");
                                } else if (C3(h1(map3, "item_num", "num"), i5) < iIntValue) {
                                    linkedHashMapZ1 = p5.z0(str9, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "道具数量不足");
                                } else {
                                    String strValueOf2 = String.valueOf(h1(map3, "item_id", "id", "resource_id"));
                                    if ("600132".equals(strValueOf2)) {
                                        str5 = "chujijuanzhou_jinengshengji";
                                    } else if ("600133".equals(strValueOf2)) {
                                        str5 = "zhongjijuanzhou_jinengshengji";
                                    } else {
                                        str5 = "600134".equals(strValueOf2) ? "gaojijuanzhou_jinengshengji" : "";
                                    }
                                    if (str5.isEmpty()) {
                                        if (strValueOf2.isEmpty()) {
                                            mapR4 = null;
                                        } else {
                                            mapR4 = null;
                                        }
                                        if (mapR4 != null) {
                                            obj4 = mapR4.get("effect_value");
                                        } else {
                                            obj4 = null;
                                        }
                                        if (!(obj4 instanceof Map)) {
                                            obj4 = map3.get("effect_value");
                                        }
                                        if (obj4 instanceof Map) {
                                            obj5 = ((Map) obj4).get("add_list");
                                        } else {
                                            obj5 = null;
                                        }
                                        if (obj5 instanceof List) {
                                            dJ4 = 0.0d;
                                            for (Object obj6 : (List) obj5) {
                                                if (obj6 instanceof Map) {
                                                    dJ4 += U2((Map) obj6);
                                                }
                                            }
                                        } else if (obj5 instanceof Map) {
                                            dJ4 = U2((Map) obj5);
                                        } else {
                                            dJ4 = j4(map3);
                                        }
                                    } else {
                                        dJ4 = P0(1, o0.a(null, "eated_exp.json"), "docs/game_data_json/eated_exp.json", str5);
                                        if (dJ4 <= 0.0d) {
                                            if (strValueOf2.isEmpty() || "null".equals(strValueOf2)) {
                                                mapR4 = null;
                                            } else {
                                                try {
                                                    mapR4 = w1.a1(null).c1(strValueOf2);
                                                    if (mapR4 == null) {
                                                        mapR4 = r4("docs/game_data_json/items.json", strValueOf2);
                                                    }
                                                } catch (Exception unused) {
                                                }
                                            }
                                            if (mapR4 != null) {
                                                obj4 = mapR4.get("effect_value");
                                            } else {
                                                obj4 = null;
                                            }
                                            if (!(obj4 instanceof Map)) {
                                                obj4 = map3.get("effect_value");
                                            }
                                            if (obj4 instanceof Map) {
                                                obj5 = ((Map) obj4).get("add_list");
                                            } else {
                                                obj5 = null;
                                            }
                                            if (obj5 instanceof List) {
                                                dJ4 = 0.0d;
                                                while (r9.hasNext()) {
                                                    if (obj6 instanceof Map) {
                                                        dJ4 += U2((Map) obj6);
                                                    }
                                                }
                                            } else if (obj5 instanceof Map) {
                                                dJ4 = U2((Map) obj5);
                                            } else {
                                                dJ4 = j4(map3);
                                            }
                                        }
                                    }
                                    if (dJ4 <= 0.0d) {
                                        linkedHashMapZ1 = p5.z0(str9, -1, "ret", -1, "code", -1, "result", Boolean.FALSE, "msg", "该道具不能用于技能升级");
                                    } else {
                                        arrayList15.add(map3);
                                        arrayList16.add(Integer.valueOf(iIntValue));
                                        arrayList17.add(Double.valueOf(dJ4));
                                        i5 = 0;
                                        str8 = str14;
                                        str11 = str4;
                                        it4 = it5;
                                    }
                                }
                            } else {
                                String str17 = str11;
                                int i6 = i5;
                                while (i5 < arrayList15.size()) {
                                    Map map5 = (Map) arrayList15.get(i5);
                                    int iIntValue2 = ((Integer) arrayList16.get(i5)).intValue();
                                    int iC3 = C3(h1(map5, "item_num", "num"), i6) - iIntValue2;
                                    map5.put("item_num", Integer.valueOf(iC3));
                                    map5.put("num", Integer.valueOf(iC3));
                                    ArrayList arrayList18 = arrayList15;
                                    ArrayList arrayList19 = arrayList16;
                                    dDoubleValue = (((Double) arrayList17.get(i5)).doubleValue() * ((double) iIntValue2)) + dDoubleValue;
                                    if (iC3 <= 0) {
                                        arrayList6 = arrayList2;
                                        arrayList6.add(v0(map5));
                                        arrayList5 = arrayList;
                                    } else {
                                        arrayList5 = arrayList;
                                        arrayList6 = arrayList2;
                                        t(arrayList5, map5);
                                    }
                                    i5++;
                                    i6 = 0;
                                    arrayList = arrayList5;
                                    arrayList2 = arrayList6;
                                    arrayList15 = arrayList18;
                                    arrayList16 = arrayList19;
                                }
                                ArrayList arrayList20 = arrayList;
                                ArrayList arrayList21 = arrayList2;
                                if (!arrayList21.isEmpty()) {
                                    w1.f0("Item", mapW0).removeIf(new q2(0, arrayList21));
                                }
                                boolean z2 = (arrayList9.isEmpty() && arrayList20.isEmpty() && arrayList21.isEmpty()) ? false : true;
                                double d2 = dB3 + dDoubleValue;
                                int i7 = iF;
                                int i8 = i2;
                                while (true) {
                                    if (i7 >= i8) {
                                        map2 = map4;
                                        break;
                                    }
                                    map2 = map4;
                                    double dP0 = P0(i7, o0.a(null, "upgrade_exps.json"), "docs/game_data_json/upgrade_exps.json", i4("upgrade_exp_type", map2, new String[0]));
                                    if (dP0 <= 0.0d) {
                                        dP0 = Double.MAX_VALUE;
                                    }
                                    if (d2 < dP0) {
                                        break;
                                    }
                                    d2 -= dP0;
                                    i7++;
                                    map4 = map2;
                                }
                                map2.put("level", Integer.valueOf(i7));
                                map2.put("skill_level", String.valueOf(i7));
                                map2.put("exp", Math.abs(d2 - Math.rint(d2)) < 1.0E-6d ? String.valueOf((long) Math.rint(d2)) : String.valueOf(Math.round(d2 * 100.0d) / 100.0d));
                                String strValueOf3 = String.valueOf(h1(map2, str2));
                                if (!strValueOf3.isEmpty()) {
                                    String strValueOf4 = String.valueOf(h1(map2, str17));
                                    Iterator it8 = w1.f0("General", mapW0).iterator();
                                    while (it8.hasNext()) {
                                        Map map6 = (Map) it8.next();
                                        String str18 = str9;
                                        String str19 = str15;
                                        Iterator it9 = it8;
                                        String str20 = str2;
                                        String str21 = str17;
                                        String strValueOf5 = String.valueOf(h1(map6, str20, str21));
                                        ArrayList arrayList22 = arrayList21;
                                        str14 = str14;
                                        if (strValueOf4.isEmpty() || str14.equals(strValueOf4) || "null".equals(strValueOf4) || strValueOf4.equals(strValueOf5)) {
                                            String[] strArr = {"gSkill", "general_skills"};
                                            int i9 = 0;
                                            while (i9 < 2) {
                                                Object obj7 = map6.get(strArr[i9]);
                                                String[] strArr2 = strArr;
                                                if (obj7 instanceof List) {
                                                    Iterator it10 = ((List) obj7).iterator();
                                                    while (it10.hasNext()) {
                                                        Object next = it10.next();
                                                        Iterator it11 = it10;
                                                        if (next instanceof Map) {
                                                            Map map7 = (Map) next;
                                                            if (strValueOf3.equals(String.valueOf(h1(map7, str20)))) {
                                                                map7.putAll(map2);
                                                            }
                                                        }
                                                        it10 = it11;
                                                    }
                                                }
                                                i9++;
                                                strArr = strArr2;
                                            }
                                        }
                                        str17 = str21;
                                        str2 = str20;
                                        it8 = it9;
                                        str9 = str18;
                                        str15 = str19;
                                        strValueOf4 = strValueOf4;
                                        arrayList21 = arrayList22;
                                    }
                                }
                                ArrayList arrayList23 = arrayList21;
                                String str22 = str9;
                                String str23 = str15;
                                String str24 = str2;
                                String str25 = str17;
                                int iMax = Math.max(0, i7 - iF);
                                if (z2) {
                                    s2("surrender_total_skill_upgrade_times", mapW0);
                                    s2("skill_total_upgrade_times", mapW0);
                                    s2("total_skill_upgrade_times", mapW0);
                                }
                                if (iMax > 0) {
                                    H3(i7, "max_skill_level", mapW0);
                                    H3(i7, "skill_max_level", mapW0);
                                }
                                ArrayList arrayList24 = new ArrayList();
                                String strValueOf6 = String.valueOf(h1(map2, str25));
                                LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
                                if (L2(strValueOf6)) {
                                    linkedHashSet.add(strValueOf6);
                                }
                                Map mapS2 = S0(strValueOf6, w1.f0("General", mapW0));
                                if (mapS2 != null) {
                                    Object obj8 = mapS2.get("major_pk_id");
                                    String strValueOf7 = obj8 == null ? "" : String.valueOf(obj8);
                                    if (L2(strValueOf7)) {
                                        linkedHashSet.add(strValueOf7);
                                    }
                                }
                                if (j1("TeamGeneral", strValueOf6, mapW0) || j1("BuddyGeneral", strValueOf6, mapW0) || j1("TeamGeneral", (mapS2 != null && (obj3 = mapS2.get("major_pk_id")) != null) ? String.valueOf(obj3) : "", mapW0)) {
                                    Object objH1 = h1(map2, "skill_id", "id", "skill_code");
                                    String strValueOf8 = objH1 == null ? "" : String.valueOf(objH1);
                                    w1 w1VarA1 = w1.a1(null);
                                    Map mapK1 = w1VarA1.k1(strValueOf8);
                                    if (mapK1 == null || !(mapK1.get("skill_effect") instanceof List)) {
                                        z = false;
                                        break;
                                    }
                                    Iterator it12 = ((List) mapK1.get("skill_effect")).iterator();
                                    while (true) {
                                        if (!it12.hasNext()) {
                                            z = false;
                                            break;
                                        }
                                        Map mapL1 = w1VarA1.l1(String.valueOf(it12.next()));
                                        if (mapL1 != null) {
                                            Iterator it13 = it12;
                                            String str26 = str10;
                                            if (c.a.A(mapL1, "effect_target", str26)) {
                                                z = true;
                                                break;
                                            }
                                            str10 = str26;
                                            it12 = it13;
                                        }
                                    }
                                    if (z) {
                                        for (Map map8 : w1.f0("TeamGeneral", mapW0)) {
                                            Object obj9 = map8.get(str25);
                                            String strValueOf9 = obj9 == null ? "" : String.valueOf(obj9);
                                            if (!L2(strValueOf9)) {
                                                Object obj10 = map8.get(str24);
                                                strValueOf9 = obj10 == null ? "" : String.valueOf(obj10);
                                            }
                                            if (L2(strValueOf9)) {
                                                linkedHashSet.add(strValueOf9);
                                            }
                                        }
                                    }
                                }
                                w1 w1VarA2 = w1.a1(null);
                                boolean z3 = false;
                                for (String str27 : linkedHashSet) {
                                    w1VarA2.F2(str27, mapW0);
                                    Map mapS3 = S0(str27, w1.f0("General", mapW0));
                                    if (mapS3 != null) {
                                        t(arrayList24, mapS3);
                                    }
                                    if (j1("TeamGeneral", str27, mapW0)) {
                                        z3 = true;
                                    }
                                }
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                linkedHashMap2.put("Skill", p5.z0("del", arrayList9, "upd", p5.v0(map2), "add", new ArrayList()));
                                ArrayList arrayList25 = new ArrayList();
                                arrayList25.add("Skill");
                                if (!arrayList24.isEmpty()) {
                                    linkedHashMap2.put("General", p5.z0("del", new ArrayList(), "upd", arrayList24, "add", new ArrayList()));
                                    arrayList25.add("General");
                                }
                                if (z3) {
                                    linkedHashMap2.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(w1.f0("TeamGeneral", mapW0)), "add", new ArrayList()));
                                    arrayList25.add("TeamGeneral");
                                }
                                if (arrayList20.isEmpty() && arrayList23.isEmpty()) {
                                    str3 = str23;
                                } else {
                                    str3 = str23;
                                    linkedHashMap2.put(str3, p5.z0("del", arrayList23, "upd", arrayList20, "add", new ArrayList()));
                                    arrayList25.add(str3);
                                }
                                mapW0.put(str3, p5.z0("del", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", list3}, mapW0, "Skill"), "upd", new ArrayList(), "add", w1.f0(str3, mapW0)));
                                linkedHashMapZ0 = p5.z0(str22, 0, "ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success");
                                obj2 = obj;
                                linkedHashMapZ0.put(obj2, linkedHashMap2);
                                linkedHashMapZ0.put("cmn_modules", arrayList25);
                                if (z2 || iMax > 0) {
                                    y2Var = this;
                                    Context context = y2Var.f1549b;
                                    if (context == null) {
                                        try {
                                            a7VarV1 = w1.a1(null).V1();
                                            if (a7VarV1 == null) {
                                                arrayList3 = new ArrayList();
                                            } else {
                                                arrayList4 = new ArrayList();
                                                it = a7VarV1.a().iterator();
                                                while (it.hasNext()) {
                                                    mapB = a7VarV1.b((String) it.next());
                                                    if (mapB != null) {
                                                        arrayList4.add(mapB);
                                                    }
                                                }
                                                arrayList3 = arrayList4;
                                            }
                                        } catch (RuntimeException unused2) {
                                            arrayList3 = new ArrayList();
                                        }
                                    } else {
                                        String strA = o0.a(context, "surrenders.json");
                                        if (strA == null || strA.isEmpty() || (list = (List) new a.o().e(strA, new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.LocalServer$10
                                        }.getType())) == null) {
                                            arrayList3 = new ArrayList();
                                        } else {
                                            ArrayList arrayList26 = new ArrayList();
                                            for (Map map9 : list) {
                                                if (map9 != null) {
                                                    arrayList26.add(map9);
                                                }
                                            }
                                            arrayList3 = arrayList26;
                                        }
                                        if (arrayList3.isEmpty()) {
                                            a7VarV1 = w1.a1(null).V1();
                                            if (a7VarV1 == null) {
                                                arrayList3 = new ArrayList();
                                            } else {
                                                arrayList4 = new ArrayList();
                                                it = a7VarV1.a().iterator();
                                                while (it.hasNext()) {
                                                    mapB = a7VarV1.b((String) it.next());
                                                    if (mapB != null) {
                                                        arrayList4.add(mapB);
                                                    }
                                                }
                                                arrayList3 = arrayList4;
                                            }
                                        }
                                    }
                                    C(arrayList3, mapW0, linkedHashMapZ0, linkedHashMap2);
                                } else {
                                    y2Var = this;
                                }
                                if (z2) {
                                    com.sgscq.vpn.handler.p.d(1, t0(mapW0), "102", c7.b(), mapW0);
                                }
                            }
                        }
                    }
                    linkedHashMapZ0 = linkedHashMapZ1;
                }
            }
            y2Var = this;
            obj2 = obj;
        }
        if (Boolean.TRUE.equals(linkedHashMapZ0.get("result"))) {
            String str28 = str;
            h5Var.S0(str28, mapW0);
            strX = x(p5.s1(linkedHashMapZ0), y2Var.O(str28, (Map) linkedHashMapZ0.get(obj2), mapW0, a(linkedHashMapZ0, new String[0])));
        } else {
            strX = p5.s1(linkedHashMapZ0);
        }
        return y2Var.A4(strX);
    }

    public final byte[] p3(String str) {
        y1 y1Var = new y1();
        y1Var.e("error_code", 0);
        y1Var.e("ret", 0);
        y1Var.e("code", 0);
        y1Var.g("result", true);
        y1Var.f("msg", "success");
        y1Var.i("cmn", str);
        return A4(y1Var.b());
    }

    public final double[] p4(String str, Map map) {
        double dDoubleValue;
        byte b2;
        double[] dArr = {0.0d, 0.0d, 0.0d, 0.0d};
        for (Map map2 : w1.f0("Equipment", map)) {
            if (str.equals(c.a.k(map2, "user_general_id", "", "general_id", "general_pk_id"))) {
                Map mapZ0 = w1.a1(this.f1549b).z0(c.a.j(map2, "equip_id", "", "equipment_id"));
                if (mapZ0 != null) {
                    Object obj = mapZ0.get("effect_value");
                    if (obj == null || String.valueOf(obj).isEmpty()) {
                        obj = mapZ0.get("effect");
                    }
                    if (obj instanceof Number) {
                        dDoubleValue = ((Number) obj).doubleValue();
                    } else {
                        try {
                            dDoubleValue = Double.parseDouble(String.valueOf(obj));
                        } catch (Exception unused) {
                            dDoubleValue = 0.0d;
                        }
                    }
                    String strJ = c.a.j(mapZ0, "equipment_pos", "0", "equipment_type");
                    if ("3".equals(strJ)) {
                        b2 = 0;
                    } else if ("1".equals(strJ)) {
                        b2 = 1;
                    } else if ("2".equals(strJ)) {
                        b2 = 2;
                    } else {
                        b2 = "4".equals(strJ) ? (byte) 3 : (byte) -1;
                    }
                    if (b2 >= 0) {
                        dArr[b2] = dArr[b2] + dDoubleValue;
                    }
                }
            }
        }
        return dArr;
    }

    public final int q1(String str) {
        Map mapC1 = w1.a1(this.f1549b).c1(str);
        if (mapC1 == null) {
            return 0;
        }
        Object obj = mapC1.get("effect_value");
        if (obj instanceof List) {
            List list = (List) obj;
            if (!list.isEmpty()) {
                obj = list.get(0);
            }
        }
        return w1.l2(String.valueOf(obj), 0);
    }

    public final byte[] q3(String str, String str2, HashMap map) {
        String string = this.f1553f.t((int) c7.g(), w3(h0(), "user_gold", map), w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str2, map).toString();
        String strS1 = p5.s1(this.f1553f.j0(map));
        String strZ0 = h5.z0("Skill", map);
        String strZ1 = h5.z0("General", map);
        String strZ2 = h5.z0("Equipment", map);
        String strZ3 = h5.z0("Item", map);
        String strZ4 = h5.z0("Atlas", map);
        String strB0 = h5.b0(map);
        StringBuilder sb = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",");
        sb.append((CharSequence) string, 1, string.length() - 1);
        sb.append(",\"user_info\":");
        c.a.y(sb, string, ",\"general_info\":", strZ1, ",\"General\":");
        c.a.y(sb, strZ1, ",\"skill_info\":", strZ0, ",\"Skill\":");
        c.a.y(sb, strZ0, ",\"equipment_info\":", strZ2, ",\"Equipment\":");
        c.a.y(sb, strZ2, ",\"item_info\":", strZ3, ",\"Item\":");
        c.a.y(sb, strZ3, ",\"team_info\":", strS1, ",\"TeamGeneral\":");
        c.a.y(sb, strS1, ",\"atlas_info\":", strZ4, ",\"Atlas\":");
        c.a.y(sb, strZ4, ",\"generals\":", strB0, ",\"generalList\":");
        c.a.y(sb, strB0, ",\"general_list\":", strB0, ",\"team\":");
        c.a.y(sb, strS1, ",\"teamList\":", strS1, ",\"team_list\":");
        sb.append(strS1);
        sb.append(",\"cmn\":");
        sb.append(str);
        sb.append("}");
        return A4(sb.toString());
    }

    public final byte[] r3(String str, Map map) {
        JSONObject jSONObjectT = this.f1553f.t((int) c7.g(), w3(h0(), "user_gold", map), w3(g0(), "user_energy", map), w3(i0(), "user_power", map), x3(f0(), map), str, map);
        h5 h5Var = this.f1553f;
        String strM = h5Var.m(map, jSONObjectT);
        String string = jSONObjectT.toString();
        String strB0 = h5.B0("General", map);
        String strB1 = h5.B0("Skill", map);
        String strB2 = h5.B0("Equipment", map);
        String strB3 = h5.B0("Item", map);
        String strB4 = h5.B0("Atlas", map);
        String strS1 = p5.s1(h5Var.j0(map));
        String strB5 = h5.b0(map);
        StringBuilder sb = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",");
        sb.append((CharSequence) string, 1, string.length() - 1);
        sb.append(",\"user_info\":");
        c.a.y(sb, string, ",\"general_info\":", strB0, ",\"General\":");
        c.a.y(sb, strB0, ",\"skill_info\":", strB1, ",\"Skill\":");
        c.a.y(sb, strB1, ",\"equipment_info\":", strB2, ",\"Equipment\":");
        c.a.y(sb, strB2, ",\"item_info\":", strB3, ",\"Item\":");
        c.a.y(sb, strB3, ",\"team_info\":", strS1, ",\"TeamGeneral\":");
        c.a.y(sb, strS1, ",\"atlas_info\":", strB4, ",\"Atlas\":");
        c.a.y(sb, strB4, ",\"generals\":", strB5, ",\"generalList\":");
        c.a.y(sb, strB5, ",\"general_list\":", strB5, ",\"team\":");
        c.a.y(sb, strS1, ",\"teamList\":", strS1, ",\"team_list\":");
        sb.append(strS1);
        sb.append(",\"cmn\":");
        sb.append(strM);
        sb.append("}");
        return A4(sb.toString());
    }

    public final String s1(String str) {
        Map mapC1;
        return (str.isEmpty() || (mapC1 = w1.a1(this.f1549b).c1(str)) == null) ? "" : String.valueOf(mapC1.getOrDefault("related_id", "0"));
    }

    public final byte[] s3() {
        y1 y1Var = new y1();
        y1Var.e("ret", 0);
        y1Var.e("code", 0);
        y1Var.g("result", true);
        y1Var.f("msg", "success");
        y1Var.e("error_code", 0);
        return A4(y1Var.b());
    }

    public final int t1(String str) {
        Map mapC1;
        if (str.isEmpty() || (mapC1 = w1.a1(this.f1549b).c1(str)) == null) {
            return 0;
        }
        return c.a.f(mapC1, "item_type", "0", 0);
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0193 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x016f A[EDGE_INSN: B:128:0x016f->B:33:0x016f BREAK  A[LOOP:1: B:19:0x00fe->B:32:0x0164], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x0102  */
    /* JADX WARN: Code duplicated, block: B:23:0x010a  */
    /* JADX WARN: Code duplicated, block: B:25:0x010e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0117  */
    /* JADX WARN: Code duplicated, block: B:29:0x012d  */
    /* JADX WARN: Code duplicated, block: B:31:0x015e  */
    /* JADX WARN: Code duplicated, block: B:35:0x0179  */
    /* JADX WARN: Code duplicated, block: B:37:0x017c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0184  */
    public final u2 t3(Map map, String str, String str2, int i2, ArrayList arrayList) {
        ArrayList arrayList2;
        LinkedHashMap linkedHashMapB0;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        LinkedHashMap linkedHashMapB1;
        int iIndexOf;
        List list;
        int iL2;
        int i3;
        int i4;
        String str3;
        int iIndexOf2;
        Map mapD;
        String str4;
        ArrayList arrayList7;
        ArrayList arrayList8;
        int i5;
        int i6;
        int iG;
        u2 u2Var = new u2();
        int iQ0 = q0(i2, str, map);
        if (iQ0 <= 0) {
            z2.g("SGSCQ_SRV", "[ItemUse] 礼包未扣除，跳过发奖 pk=" + str + " gift=" + str2);
            return u2Var;
        }
        arrayList.add(str);
        String str5 = "Equipment";
        HashSet hashSetL4 = l4("Equipment", map);
        HashSet hashSetL5 = l4("EquipmentPiece", map);
        HashSet hashSetL6 = l4("General", map);
        String str6 = "Skill";
        HashSet hashSetL7 = l4("Skill", map);
        HashSet hashSetL8 = l4("GeneralSoul", map);
        HashMap mapP1 = p1(str2);
        List list2 = (List) mapP1.get("items");
        List list3 = (List) mapP1.get("equipments");
        List<String> list4 = (List) mapP1.get("generals");
        List list5 = (List) mapP1.get("skills");
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        int iMax = Math.max(1, iQ0);
        for (String strSubstring : list4) {
            List list6 = list4;
            int i7 = iQ0;
            if (strSubstring != null && (iIndexOf = strSubstring.indexOf(58)) >= 0) {
                int i8 = iIndexOf + 1;
                list = list5;
                if (i8 < strSubstring.length()) {
                    iL2 = w1.l2(strSubstring.substring(i8), 0);
                }
                i3 = 0;
                ArrayList arrayList17 = arrayList10;
                ArrayList arrayList18 = arrayList12;
                i4 = 0;
                while (true) {
                    str3 = "";
                    if (i3 < iMax) {
                        break;
                    }
                    ArrayList arrayList19 = arrayList11;
                    mapD = d(strSubstring, map);
                    if (mapD != null) {
                        i5 = i4 + 1;
                        if (iL2 <= 0) {
                            str4 = str5;
                            arrayList7 = arrayList16;
                            i6 = i5;
                            arrayList8 = arrayList15;
                        } else {
                            i6 = i5;
                            str4 = str5;
                            arrayList7 = arrayList16;
                            arrayList8 = arrayList15;
                            iG = c.a.g(mapD, "level", "1", "general_level", 1);
                            if (iG < iL2) {
                                w1.a1(null).g(iG, iL2, mapD);
                                mapD.put("general_level", Integer.valueOf(iL2));
                                mapD.put("level", Integer.valueOf(iL2));
                            }
                        }
                        t(arrayList13, mapD);
                        t(arrayList14, S0(String.valueOf(mapD.getOrDefault("pk_id", "")), w1.f0("Skill", map)));
                        i4 = i6;
                    } else {
                        str4 = str5;
                        arrayList7 = arrayList16;
                        arrayList8 = arrayList15;
                    }
                    i3++;
                    arrayList11 = arrayList19;
                    str5 = str4;
                    arrayList16 = arrayList7;
                    arrayList15 = arrayList8;
                }
                String str7 = str5;
                ArrayList arrayList20 = arrayList16;
                ArrayList arrayList21 = arrayList15;
                ArrayList arrayList22 = arrayList11;
                if (i4 <= 0) {
                    if (strSubstring != null) {
                        iIndexOf2 = strSubstring.indexOf(58);
                        if (iIndexOf2 >= 0) {
                            strSubstring = strSubstring.substring(0, iIndexOf2);
                        }
                        str3 = strSubstring;
                    }
                    arrayList9.add(b0(i4, 31, str3));
                }
                iQ0 = i7;
                list4 = list6;
                list5 = list;
                arrayList12 = arrayList18;
                arrayList10 = arrayList17;
                arrayList11 = arrayList22;
                str5 = str7;
                arrayList16 = arrayList20;
                arrayList15 = arrayList21;
            } else {
                list = list5;
            }
            iL2 = 0;
            i3 = 0;
            ArrayList arrayList110 = arrayList10;
            ArrayList arrayList111 = arrayList12;
            i4 = 0;
            while (true) {
                str3 = "";
                if (i3 < iMax) {
                    break;
                    break;
                }
                ArrayList arrayList112 = arrayList11;
                mapD = d(strSubstring, map);
                if (mapD != null) {
                    i5 = i4 + 1;
                    if (iL2 <= 0) {
                        str4 = str5;
                        arrayList7 = arrayList16;
                        i6 = i5;
                        arrayList8 = arrayList15;
                    } else {
                        i6 = i5;
                        str4 = str5;
                        arrayList7 = arrayList16;
                        arrayList8 = arrayList15;
                        iG = c.a.g(mapD, "level", "1", "general_level", 1);
                        if (iG < iL2) {
                            w1.a1(null).g(iG, iL2, mapD);
                            mapD.put("general_level", Integer.valueOf(iL2));
                            mapD.put("level", Integer.valueOf(iL2));
                        }
                    }
                    t(arrayList13, mapD);
                    t(arrayList14, S0(String.valueOf(mapD.getOrDefault("pk_id", "")), w1.f0("Skill", map)));
                    i4 = i6;
                } else {
                    str4 = str5;
                    arrayList7 = arrayList16;
                    arrayList8 = arrayList15;
                }
                i3++;
                arrayList11 = arrayList112;
                str5 = str4;
                arrayList16 = arrayList7;
                arrayList15 = arrayList8;
            }
            String str8 = str5;
            ArrayList arrayList23 = arrayList16;
            ArrayList arrayList24 = arrayList15;
            ArrayList arrayList25 = arrayList11;
            if (i4 <= 0) {
                if (strSubstring != null) {
                    iIndexOf2 = strSubstring.indexOf(58);
                    if (iIndexOf2 >= 0) {
                        strSubstring = strSubstring.substring(0, iIndexOf2);
                    }
                    str3 = strSubstring;
                }
                arrayList9.add(b0(i4, 31, str3));
            }
            iQ0 = i7;
            list4 = list6;
            list5 = list;
            arrayList12 = arrayList111;
            arrayList10 = arrayList110;
            arrayList11 = arrayList25;
            str5 = str8;
            arrayList16 = arrayList23;
            arrayList15 = arrayList24;
        }
        String str9 = str5;
        List list7 = list4;
        int i9 = iQ0;
        List<String> list8 = list5;
        ArrayList arrayList26 = arrayList16;
        ArrayList arrayList27 = arrayList12;
        ArrayList arrayList28 = arrayList15;
        ArrayList arrayList29 = arrayList11;
        ArrayList arrayList30 = arrayList10;
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Map map2 = (Map) it.next();
            String strValueOf = String.valueOf(h1(map2, "item_id", "id"));
            int iC3 = C3(h1(map2, "item_num", "num"), 0) * iMax;
            int iE1 = E1(strValueOf, map2);
            int iD1 = D1(iE1, map2);
            if ("600026".equals(strValueOf) || "600002".equals(strValueOf)) {
                arrayList2 = arrayList26;
                p5.b(iC3, map);
                if (iE1 == 0) {
                    iE1 = 1;
                }
                linkedHashMapB0 = b0(iC3, iE1, strValueOf);
            } else {
                if ("600027".equals(strValueOf) || "600034".equals(strValueOf)) {
                    ArrayList arrayList31 = arrayList26;
                    ArrayList arrayList32 = arrayList28;
                    map.put("user_gold", Integer.valueOf(C3(map.get("user_gold"), 0) + iC3));
                    if (iE1 == 0) {
                        iE1 = 16;
                    }
                    linkedHashMapB0 = b0(iC3, iE1, "600034");
                    arrayList28 = arrayList32;
                    arrayList2 = arrayList31;
                } else {
                    if (iE1 == 20) {
                        w1.k(iC3, strValueOf, map);
                        arrayList3 = arrayList28;
                        t(arrayList3, d1(strValueOf, map));
                        linkedHashMapB1 = b0(iC3, iE1, strValueOf);
                        arrayList2 = arrayList26;
                    } else {
                        arrayList3 = arrayList28;
                        if (iE1 == 36) {
                            Map mapH = h(iC3, strValueOf, map);
                            arrayList2 = arrayList26;
                            t(arrayList2, mapH);
                            linkedHashMapB1 = U(iC3, strValueOf, mapH);
                        } else {
                            arrayList2 = arrayList26;
                            if (iD1 == s(19)) {
                                int i10 = 0;
                                for (int i11 = 1; i10 < Math.max(i11, iC3); i11 = 1) {
                                    t(arrayList14, p(strValueOf, map));
                                    i10++;
                                }
                                linkedHashMapB1 = b0(iC3, iE1, strValueOf);
                            } else {
                                if (iE1 == 18) {
                                    int i12 = 1;
                                    int i13 = 0;
                                    while (i13 < Math.max(i12, iC3)) {
                                        t(arrayList29, S0(String.valueOf(c(null, strValueOf, map)), w1.f0(str9, map)));
                                        i13++;
                                        i12 = 1;
                                        it = it;
                                    }
                                    it = it;
                                    arrayList9.add(b0(iC3, iE1, strValueOf));
                                    arrayList29 = arrayList29;
                                    arrayList4 = arrayList2;
                                    str9 = str9;
                                    arrayList6 = arrayList27;
                                    arrayList5 = arrayList30;
                                } else {
                                    it = it;
                                    arrayList4 = arrayList2;
                                    arrayList29 = arrayList29;
                                    str9 = str9;
                                    if (iE1 == 15 || strValueOf.startsWith("92")) {
                                        arrayList5 = arrayList30;
                                        arrayList6 = arrayList27;
                                        t(arrayList6, com.sgscq.vpn.cloud.m0.c1(iC3, strValueOf, map));
                                        arrayList9.add(b0(iC3, 15, strValueOf));
                                    } else {
                                        w1.f0("Item", map);
                                        Map mapJ = j(map, strValueOf, iC3, iE1 == 0 ? 1 : iE1);
                                        E0(w1.f0("Item", map), map);
                                        arrayList5 = arrayList30;
                                        t(arrayList5, mapJ);
                                        if (iE1 == 0) {
                                            iE1 = 1;
                                        }
                                        arrayList9.add(W(iC3, iE1, iD1, strValueOf, mapJ));
                                        arrayList6 = arrayList27;
                                    }
                                }
                                arrayList27 = arrayList6;
                                arrayList30 = arrayList5;
                                arrayList28 = arrayList3;
                                arrayList2 = arrayList4;
                            }
                            str6 = str6;
                        }
                    }
                    arrayList9.add(linkedHashMapB1);
                    it = it;
                    arrayList28 = arrayList3;
                    arrayList27 = arrayList27;
                    arrayList29 = arrayList29;
                    str9 = str9;
                    str6 = str6;
                }
                str9 = str9;
                arrayList26 = arrayList2;
                arrayList29 = arrayList29;
                str6 = str6;
                it = it;
                list2 = list2;
                arrayList27 = arrayList27;
            }
            arrayList9.add(linkedHashMapB0);
            str9 = str9;
            arrayList26 = arrayList2;
            arrayList29 = arrayList29;
            str6 = str6;
            it = it;
            list2 = list2;
            arrayList27 = arrayList27;
        }
        ArrayList arrayList33 = arrayList27;
        ArrayList arrayList34 = arrayList30;
        ArrayList arrayList35 = arrayList29;
        String str10 = str9;
        ArrayList arrayList36 = arrayList26;
        List list9 = list2;
        String str11 = str6;
        for (String str12 : list8) {
            for (int i14 = 0; i14 < iMax; i14++) {
                t(arrayList14, p(str12, map));
            }
            arrayList9.add(b0(iMax, 19, str12));
        }
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            String str13 = (String) it2.next();
            int i15 = 0;
            while (i15 < iMax) {
                t(arrayList35, S0(String.valueOf(c(null, str13, map)), w1.f0(str10, map)));
                i15++;
                it2 = it2;
            }
            arrayList9.add(b0(iMax, 18, str13));
            it2 = it2;
        }
        HashMap map3 = new HashMap(map);
        map3.put("GeneralSoul", p5.z0("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", new ArrayList(), new Object[]{"upd", arrayList34, "add", new ArrayList()}, map3, "Item"), new Object[]{"upd", arrayList35, "add", new ArrayList()}, map3, str10), new Object[]{"upd", arrayList33, "add", new ArrayList()}, map3, "EquipmentPiece"), new Object[]{"upd", arrayList13, "add", new ArrayList()}, map3, "General"), new Object[]{"upd", arrayList14, "add", new ArrayList()}, map3, str11), "upd", arrayList28, "add", new ArrayList()));
        if (!arrayList36.isEmpty()) {
            map3.put("Gems", p5.z0("del", new ArrayList(), "upd", arrayList36, "add", new ArrayList()));
        }
        LinkedHashMap linkedHashMapZ0 = p5.z0("add_list", arrayList9, "delta_data", map3);
        u2 u2Var2 = new u2();
        u2Var2.f1425a.addAll((List) linkedHashMapZ0.getOrDefault("add_list", new ArrayList()));
        Object obj = linkedHashMapZ0.get("delta_data");
        boolean z = obj instanceof Map;
        ArrayList arrayList37 = u2Var2.f1430f;
        ArrayList arrayList38 = u2Var2.f1429e;
        ArrayList arrayList39 = u2Var2.f1428d;
        ArrayList arrayList40 = u2Var2.f1427c;
        ArrayList arrayList41 = u2Var2.f1426b;
        if (z) {
            Map map4 = (Map) obj;
            arrayList41.addAll(m3(str10, map4));
            arrayList40.addAll(m3("EquipmentPiece", map4));
            arrayList39.addAll(m3("General", map4));
            arrayList38.addAll(m3(str11, map4));
            arrayList37.addAll(m3("GeneralSoul", map4));
        }
        w(map, str10, hashSetL4, arrayList41);
        w(map, "EquipmentPiece", hashSetL5, arrayList40);
        w(map, "General", hashSetL6, arrayList39);
        w(map, str11, hashSetL7, arrayList38);
        w(map, "GeneralSoul", hashSetL8, arrayList37);
        z2.e("SGSCQ_SRV", "[ItemUse] 礼包 " + str2 + " consumed=" + i9 + "/" + i2 + " items=" + list9.size() + " equips=" + list3.size() + " generals=" + list7.size() + " skills=" + list8.size());
        return u2Var2;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0342 A[LOOP:0: B:65:0x033c->B:67:0x0342, LOOP_END] */
    public final List u3(int i2, String str, Map map) {
        List<Map> listEmptyList;
        String str2;
        ArrayList arrayList;
        String str3;
        Context context;
        String str4;
        StringBuilder sb;
        String strA0;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        ArrayList arrayList2;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        StringBuilder sb2;
        String str15 = str;
        Random random = new Random();
        Context context2 = this.f1549b;
        w1 w1VarA1 = w1.a1(context2);
        Map mapE0 = w1VarA1.E0(str15);
        String str16 = "source_name";
        String str17 = "SGSCQ_SRV";
        if (mapE0 != null) {
            String strJ = c.a.j(mapE0, "equipment_id", "", "fate_equip_id");
            if (strJ.isEmpty()) {
                sb2 = new StringBuilder("[FateBox] missing equip for box=");
            } else {
                String strConcat = "9".concat(strJ);
                String strConcat2 = "fate_box_".concat(str15);
                String str18 = "0";
                int iF = c.a.f(map, strConcat2, "0", 0);
                ArrayList arrayList3 = new ArrayList();
                int i3 = 0;
                String str19 = str15;
                while (i3 < i2) {
                    double dNextDouble = random.nextDouble();
                    int i4 = i3;
                    String str20 = "）";
                    String str21 = strConcat;
                    if (dNextDouble < 0.6d) {
                        w1 w1VarA2 = w1.a1(context2);
                        Map mapZ0 = w1VarA2.z0(strJ);
                        if (mapZ0 == null) {
                            str10 = "）";
                            str8 = strJ;
                            str11 = str16;
                            str9 = str17;
                            str2 = str18;
                            arrayList2 = arrayList3;
                        } else {
                            str8 = strJ;
                            String str22 = "equipment_pos";
                            str9 = str17;
                            String strValueOf = String.valueOf(mapZ0.getOrDefault("equipment_pos", str18));
                            String str23 = "equipment_type";
                            String strValueOf2 = String.valueOf(mapZ0.getOrDefault("equipment_type", str18));
                            str2 = str18;
                            arrayList2 = arrayList3;
                            int i5 = random.nextDouble() < 0.6d ? 4 : random.nextDouble() < 0.75d ? 3 : 2;
                            ArrayList arrayList4 = new ArrayList();
                            for (String str24 : w1VarA2.h0()) {
                                str16 = str16;
                                str20 = str20;
                                Map mapZ1 = w1VarA2.z0(str24);
                                if (mapZ1 != null) {
                                    if (c.a.B(mapZ1, str22, "", strValueOf) && c.a.B(mapZ1, str23, "", strValueOf2)) {
                                        str13 = str23;
                                        str14 = str22;
                                        if (c.a.f(mapZ1, "grade", "4", 4) == i5) {
                                            arrayList4.add(str24);
                                        }
                                    } else {
                                        str13 = str23;
                                        str14 = str22;
                                    }
                                    str23 = str13;
                                    str22 = str14;
                                }
                            }
                            str10 = str20;
                            str11 = str16;
                            if (!arrayList4.isEmpty()) {
                                str12 = (String) arrayList4.get(random.nextInt(arrayList4.size()));
                            }
                            int iC = c(context2, str12, map);
                            String strC4 = c4(w1VarA1, str12);
                            HashMap mapT = T(iC, context2, str12);
                            StringBuilder sb3 = new StringBuilder("神装礼盒（");
                            sb3.append(strC4);
                            str3 = str10;
                            sb3.append(str3);
                            str16 = str11;
                            mapT.put(str16, sb3.toString());
                            arrayList = arrayList2;
                            arrayList.add(mapT);
                            String str25 = str9;
                            z2.e(str25, "[FateBox] 出装备 box=" + str + " equip=" + str12);
                            context = context2;
                            str19 = str;
                            str6 = str25;
                            str4 = str8;
                        }
                        str12 = str8;
                        int iC2 = c(context2, str12, map);
                        String strC5 = c4(w1VarA1, str12);
                        HashMap mapT2 = T(iC2, context2, str12);
                        StringBuilder sb4 = new StringBuilder("神装礼盒（");
                        sb4.append(strC5);
                        str3 = str10;
                        sb4.append(str3);
                        str16 = str11;
                        mapT2.put(str16, sb4.toString());
                        arrayList = arrayList2;
                        arrayList.add(mapT2);
                        String str26 = str9;
                        z2.e(str26, "[FateBox] 出装备 box=" + str + " equip=" + str12);
                        context = context2;
                        str19 = str;
                        str6 = str26;
                        str4 = str8;
                    } else {
                        String str27 = strJ;
                        str2 = str18;
                        arrayList = arrayList3;
                        String str28 = str17;
                        str3 = "）";
                        if (dNextDouble < 0.8d) {
                            strA0 = z0(random, context2, 0.25d);
                            Map mapP = p(strA0, map);
                            context = context2;
                            LinkedHashMap linkedHashMapB0 = b0(1, 19, strA0);
                            if (mapP != null) {
                                linkedHashMapB0.put("pk_id", String.valueOf(((HashMap) mapP).getOrDefault("pk_id", "")));
                                linkedHashMapB0.put("skill_id", strA0);
                                s0("skill_type", mapP, linkedHashMapB0);
                                s0("grade", mapP, linkedHashMapB0);
                                s0("skill_level", mapP, linkedHashMapB0);
                                s0("level", mapP, linkedHashMapB0);
                            } else {
                                linkedHashMapB0.put("skill_id", strA0);
                            }
                            StringBuilder sb5 = new StringBuilder("神装礼盒（");
                            str4 = str27;
                            sb5.append(c4(w1VarA1, str4));
                            sb5.append(str3);
                            linkedHashMapB0.put(str16, sb5.toString());
                            arrayList.add(linkedHashMapB0);
                            sb = new StringBuilder("[FateBox] 出技能 box=");
                            sb.append(str19);
                            str5 = " skill=";
                        } else {
                            context = context2;
                            str28 = str28;
                            str4 = str27;
                            if (dNextDouble < 0.9d) {
                                strA0 = A0(random, 0.25d);
                                LinkedHashMap linkedHashMapU = U(1, strA0, h(1, strA0, map));
                                linkedHashMapU.put(str16, "神装礼盒（" + c4(w1VarA1, str4) + str3);
                                arrayList.add(linkedHashMapU);
                                sb = new StringBuilder("[FateBox] 出宝石 box=");
                                sb.append(str19);
                                str5 = " gem=";
                            } else {
                                int iNextInt = random.nextInt(49001) + 1000;
                                p5.b(iNextInt, map);
                                LinkedHashMap linkedHashMapB1 = b0(iNextInt, 1, "600026");
                                linkedHashMapB1.put(str16, "神装礼盒（" + c4(w1VarA1, str4) + str3);
                                arrayList.add(linkedHashMapB1);
                                sb = new StringBuilder("[FateBox] 出银两 box=");
                                sb.append(str19);
                                sb.append(" coin=");
                                sb.append(iNextInt);
                            }
                            String string = sb.toString();
                            str6 = str28;
                            z2.e(str6, string);
                        }
                        sb.append(str5);
                        sb.append(strA0);
                        String string2 = sb.toString();
                        str6 = str28;
                        z2.e(str6, string2);
                    }
                    iF++;
                    if (iF >= 10) {
                        str7 = str21;
                        HashMap mapS = S(1, str7, com.sgscq.vpn.cloud.m0.c1(1, str7, map));
                        mapS.put(str16, "神装礼盒（" + c4(w1VarA1, str4) + str3);
                        arrayList.add(mapS);
                        z2.e(str6, "[FateBox] 保底碎片 box=" + str19 + " frag=" + str7);
                        iF = 0;
                    } else {
                        str7 = str21;
                    }
                    i3 = i4 + 1;
                    str15 = str;
                    strConcat = str7;
                    arrayList3 = arrayList;
                    strJ = str4;
                    str18 = str2;
                    context2 = context;
                    str17 = str6;
                }
                ArrayList arrayList5 = arrayList3;
                map.put(strConcat2, Integer.valueOf(iF));
                z2.e(str17, "[FateBox] box=" + str19 + " count=" + i2 + " counter=" + iF + " drops=" + arrayList5.size());
                listEmptyList = arrayList5;
            }
            for (Map map2 : listEmptyList) {
                x4(c.a.j(map2, "id", "", "item_id"), String.valueOf(map2.getOrDefault(str16, "神装礼盒")), map);
                map2.remove(str16);
            }
            return listEmptyList;
        }
        sb2 = new StringBuilder("[FateBox] unknown box=");
        sb2.append(str15);
        z2.g("SGSCQ_SRV", sb2.toString());
        listEmptyList = Collections.emptyList();
        while (r0.hasNext()) {
            x4(c.a.j(map2, "id", "", "item_id"), String.valueOf(map2.getOrDefault(str16, "神装礼盒")), map);
            map2.remove(str16);
        }
        return listEmptyList;
    }

    public final int v3(String str, int i2) {
        SharedPreferences sharedPreferences = this.f1550c;
        if (sharedPreferences == null) {
            return i2;
        }
        try {
            return Integer.parseInt(sharedPreferences.getString(str, String.valueOf(i2)));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public final int w0(String str) {
        Context context = this.f1549b;
        w1 w1VarA1 = w1.a1(context);
        boolean zY1 = w1VarA1.y1(str);
        int iB = zY1 ? 800 : 200;
        com.sgscq.vpn.config.i iVarB = g2.b();
        if (iVarB != null) {
            iB = new com.sgscq.vpn.config.k(iVarB).b(iB, w1VarA1.z0(str), zY1);
        }
        int i2 = iB;
        long jF = c7.f();
        long jFloorMod = l2.a(context, jF).f1080g;
        if (jFloorMod <= 0) {
            int i3 = com.sgscq.vpn.config.k.f592d;
            jFloorMod = jF - Math.floorMod(jF, Math.max(1L, 43200L) * 1000);
        }
        long j2 = jFloorMod;
        com.sgscq.vpn.config.i iVarB2 = g2.b();
        if (iVarB2 != null) {
            return new com.sgscq.vpn.config.k(iVarB2).e(i2, j2, jF);
        }
        if (jF - j2 < 3600000) {
            i2 = (i2 * 80) / 100;
        }
        return i2;
    }

    public final void x4(String str, String str2, Map map) {
        boolean z;
        if (str.isEmpty()) {
            return;
        }
        w1 w1VarA1 = w1.a1(this.f1549b);
        Map mapC1 = w1VarA1.c1(str);
        if (mapC1 == null || c.a.f(mapC1, "item_type", "0", 0) != 15) {
            z = false;
        } else {
            Object obj = mapC1.get("effect_value");
            if (obj instanceof List) {
                List list = (List) obj;
                if (!list.isEmpty()) {
                    str = String.valueOf(list.get(0));
                }
            }
            z = true;
        }
        Map mapZ0 = w1VarA1.z0(str);
        if (mapZ0 != null && c.a.f(mapZ0, "grade", "0", 0) == 1) {
            String strA0 = w1VarA1.A0(str);
            if (z) {
                strA0 = strA0 + "碎片";
            }
            String str3 = "开启" + str2 + "获得了" + strA0 + "，瞬间战斗力大增。";
            String strF3 = F3(map);
            LinkedHashMap linkedHashMapQ = c.a.q("user_id", "0");
            linkedHashMapQ.put("channel", 4);
            linkedHashMapQ.put("vip_level", 15);
            linkedHashMapQ.put("nickname", strF3);
            linkedHashMapQ.put("speaker_type", "player");
            if (str3 == null) {
                str3 = "";
            }
            linkedHashMapQ.put("message", str3);
            linkedHashMapQ.put("time", Long.valueOf(c7.g()));
            SharedPreferences sharedPreferences = this.f1550c;
            try {
                JSONArray jSONArray = new JSONArray(sharedPreferences.getString("chat_messages", "[]"));
                jSONArray.put(new JSONObject(p5.s1(linkedHashMapQ)));
                while (jSONArray.length() > 40) {
                    jSONArray.remove(0);
                }
                sharedPreferences.edit().putString("chat_messages", jSONArray.toString()).apply();
            } catch (Exception e2) {
                c.a.u(e2, new StringBuilder("[ChatSend] save failed: "), "SGSCQ_SRV");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:104:0x03ad A[Catch: Exception -> 0x0404, TRY_LEAVE, TryCatch #10 {Exception -> 0x0404, blocks: (B:101:0x0392, B:104:0x03ad), top: B:227:0x0392 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x03c1 A[Catch: Exception -> 0x03fe, TRY_LEAVE, TryCatch #2 {Exception -> 0x03fe, blocks: (B:106:0x03b3, B:108:0x03c1), top: B:211:0x03b3 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x042c A[Catch: Exception -> 0x044a, TRY_LEAVE, TryCatch #6 {Exception -> 0x044a, blocks: (B:111:0x03cb, B:114:0x03d2, B:117:0x03db, B:126:0x040b, B:128:0x042c), top: B:219:0x03cb }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0469  */
    /* JADX WARN: Code duplicated, block: B:148:0x0474  */
    /* JADX WARN: Code duplicated, block: B:153:0x0494 A[Catch: Exception -> 0x05b5, TryCatch #9 {Exception -> 0x05b5, blocks: (B:151:0x0485, B:153:0x0494, B:154:0x04b1, B:156:0x04b7), top: B:225:0x0485 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x04b7 A[Catch: Exception -> 0x05b5, TRY_LEAVE, TryCatch #9 {Exception -> 0x05b5, blocks: (B:151:0x0485, B:153:0x0494, B:154:0x04b1, B:156:0x04b7), top: B:225:0x0485 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:162:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:165:0x04f6 A[Catch: Exception -> 0x05b1, TryCatch #11 {Exception -> 0x05b1, blocks: (B:173:0x050e, B:177:0x0534, B:179:0x053a, B:182:0x0541, B:185:0x0548, B:187:0x054e, B:190:0x0555, B:192:0x055f, B:176:0x0530, B:163:0x04d8, B:165:0x04f6, B:167:0x0500, B:195:0x0571), top: B:229:0x050e }] */
    /* JADX WARN: Code duplicated, block: B:167:0x0500 A[Catch: Exception -> 0x05b1, TryCatch #11 {Exception -> 0x05b1, blocks: (B:173:0x050e, B:177:0x0534, B:179:0x053a, B:182:0x0541, B:185:0x0548, B:187:0x054e, B:190:0x0555, B:192:0x055f, B:176:0x0530, B:163:0x04d8, B:165:0x04f6, B:167:0x0500, B:195:0x0571), top: B:229:0x050e }] */
    /* JADX WARN: Code duplicated, block: B:170:0x0508  */
    /* JADX WARN: Code duplicated, block: B:171:0x050b A[PHI: r2 r13 r17 r25 r26 r27
      0x050b: PHI (r2v41 java.lang.String) = (r2v33 java.lang.String), (r2v33 java.lang.String), (r2v42 java.lang.String) binds: [B:166:0x04fe, B:168:0x0504, B:161:0x04cf] A[DONT_GENERATE, DONT_INLINE]
      0x050b: PHI (r13v7 java.lang.String) = (r13v5 java.lang.String), (r13v5 java.lang.String), (r13v8 java.lang.String) binds: [B:166:0x04fe, B:168:0x0504, B:161:0x04cf] A[DONT_GENERATE, DONT_INLINE]
      0x050b: PHI (r17v13 java.lang.String) = (r17v11 java.lang.String), (r17v11 java.lang.String), (r17v14 java.lang.String) binds: [B:166:0x04fe, B:168:0x0504, B:161:0x04cf] A[DONT_GENERATE, DONT_INLINE]
      0x050b: PHI (r25v10 java.lang.String) = (r25v8 java.lang.String), (r25v8 java.lang.String), (r25v11 java.lang.String) binds: [B:166:0x04fe, B:168:0x0504, B:161:0x04cf] A[DONT_GENERATE, DONT_INLINE]
      0x050b: PHI (r26v11 java.lang.Object) = (r26v9 java.lang.Object), (r26v9 java.lang.Object), (r26v12 java.lang.Object) binds: [B:166:0x04fe, B:168:0x0504, B:161:0x04cf] A[DONT_GENERATE, DONT_INLINE]
      0x050b: PHI (r27v17 java.lang.String) = (r27v14 java.lang.String), (r27v14 java.lang.String), (r27v18 java.lang.String) binds: [B:166:0x04fe, B:168:0x0504, B:161:0x04cf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:175:0x052e  */
    /* JADX WARN: Code duplicated, block: B:176:0x0530 A[Catch: Exception -> 0x05b1, TryCatch #11 {Exception -> 0x05b1, blocks: (B:173:0x050e, B:177:0x0534, B:179:0x053a, B:182:0x0541, B:185:0x0548, B:187:0x054e, B:190:0x0555, B:192:0x055f, B:176:0x0530, B:163:0x04d8, B:165:0x04f6, B:167:0x0500, B:195:0x0571), top: B:229:0x050e }] */
    /* JADX WARN: Code duplicated, block: B:179:0x053a A[Catch: Exception -> 0x05b1, TryCatch #11 {Exception -> 0x05b1, blocks: (B:173:0x050e, B:177:0x0534, B:179:0x053a, B:182:0x0541, B:185:0x0548, B:187:0x054e, B:190:0x0555, B:192:0x055f, B:176:0x0530, B:163:0x04d8, B:165:0x04f6, B:167:0x0500, B:195:0x0571), top: B:229:0x050e }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0559  */
    /* JADX WARN: Code duplicated, block: B:217:0x0328 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x0485 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0392 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:229:0x050e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:240:0x055f A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:34:0x010c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0146  */
    /* JADX WARN: Code duplicated, block: B:38:0x0160  */
    /* JADX WARN: Code duplicated, block: B:40:0x016c  */
    /* JADX WARN: Code duplicated, block: B:46:0x017d  */
    /* JADX WARN: Code duplicated, block: B:50:0x018e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:95:0x034b A[Catch: Exception -> 0x044f, TryCatch #1 {Exception -> 0x044f, blocks: (B:93:0x033e, B:95:0x034b, B:96:0x0350), top: B:209:0x033e }] */
    /* JADX WARN: Instruction removed from duplicated block: B:128:0x042c, please report this as an issue */
    public final void y4(String str, Map map, Map map2) {
        Object obj;
        boolean z;
        Context context;
        String str2;
        String str3;
        final String str4;
        boolean z2;
        String str5;
        Object obj2;
        String str6;
        String str7;
        Object obj3;
        String str8;
        String str9;
        Object obj4;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        Map linkedHashMap;
        ArrayList arrayList;
        Iterator it;
        String str15;
        Map.Entry entry;
        String str16;
        String strY3;
        String str17;
        JSONObject jSONObject;
        JSONArray jSONArray;
        ArrayList arrayList2;
        int i2;
        String str18;
        LinkedHashMap linkedHashMapU1;
        String str19;
        String str20;
        String strValueOf;
        String str21;
        boolean z3;
        String strU4;
        String str22;
        Object obj5;
        Object orDefault;
        String strValueOf2;
        String str23;
        String str24;
        String str25;
        String str26;
        String strConcat;
        List list;
        String strValueOf3;
        final String strValueOf4;
        String str27 = "general_id";
        String str28 = (String) map2.getOrDefault("general_id", (String) map2.getOrDefault("general_pk_id", ""));
        final String str29 = (String) map2.getOrDefault("team_position", (String) map2.getOrDefault("position", ""));
        final String str30 = "2";
        if ("50000".equals(map2.getOrDefault("step", ""))) {
            String strValueOf5 = String.valueOf(map.getOrDefault("first_choose_general", ""));
            obj = "team_position";
            String strValueOf6 = String.valueOf(map.getOrDefault("first_wine_general", ""));
            if (!strValueOf5.isEmpty() && !strValueOf6.isEmpty() && !"0".equals(strValueOf6) && ((str28.isEmpty() || str28.equals(strValueOf5)) && ((str29.isEmpty() || "2".equals(str29)) && !Y3(strValueOf5, map).isEmpty() && !Y3(strValueOf6, map).isEmpty()))) {
                z = !t4(strValueOf6, w1.f0("TeamGeneral", map));
            }
            context = this.f1549b;
            str2 = "general_pk_id";
            str3 = "position";
            if (z) {
                Map map3 = (Map) map.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
                list = (List) map3.getOrDefault("add", new ArrayList());
                strValueOf3 = String.valueOf(map.getOrDefault("first_choose_general", ""));
                strValueOf4 = String.valueOf(map.getOrDefault("first_wine_general", ""));
                if (!t4(strValueOf3, list)) {
                    list.add(d3(map, strValueOf3, "1", (String) map2.getOrDefault("team_id", "1"), context));
                }
                list.removeIf(new Predicate() { // from class: com.sgscq.vpn.p2
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj6) {
                        Map map4 = (Map) obj6;
                        return str30.equals(c.a.j(map4, "position", "", "general_position")) || y2.i3(strValueOf4, map4);
                    }
                });
                list.add(d3(map, strValueOf4, "2", (String) map2.getOrDefault("team_id", "1"), context));
                map3.put("add", list);
                map3.put("del", new ArrayList());
                map3.put("upd", new ArrayList());
                map.put("TeamGeneral", map3);
                if (context != null) {
                    StringBuilder sbB = a.b0.b("[Team] guide first wine deploy pk_id=", strValueOf4, " teamSize=");
                    sbB.append(list.size());
                    z2.e("SGSCQ_SRV", sbB.toString());
                    return;
                }
                return;
            }
            String str31 = "SGSCQ_SRV";
            if (!str28.isEmpty()) {
                str4 = str28;
                if ("0".equals(str4) && !"null".equalsIgnoreCase(str4)) {
                    z2 = false;
                }
                str5 = "null";
                String str32 = "general_position";
                if (str29.isEmpty() && (z2 || !str4.isEmpty())) {
                    if (R2(str29)) {
                        String str33 = "0";
                        Map map4 = (Map) map.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
                        List list2 = (List) map4.getOrDefault("add", new ArrayList());
                        if (z2) {
                            list2.removeIf(new Predicate() { // from class: com.sgscq.vpn.p2
                                @Override // java.util.function.Predicate
                                public final boolean test(Object obj6) {
                                    Map map5 = (Map) obj6;
                                    return str29.equals(c.a.j(map5, "position", "", "general_position")) || y2.i3(str4, map5);
                                }
                            });
                            map4.put("add", list2);
                            map4.put("del", new ArrayList());
                            map4.put("upd", new ArrayList());
                            map.put("TeamGeneral", map4);
                            z2.e(str31, "[Team] clearBattleTeam position=" + str29 + " teamSize=" + list2.size());
                            return;
                        }
                        final String strY4 = Y3(str4, map);
                        if (!strY4.isEmpty()) {
                            ArrayList arrayList3 = new ArrayList();
                            Iterator it2 = list2.iterator();
                            while (it2.hasNext()) {
                                Iterator it3 = it2;
                                Map map5 = (Map) it2.next();
                                String str34 = str31;
                                String str35 = str3;
                                if (c.a.C(map5, str35, "", str32, str29) || i3(strY4, map5)) {
                                    str23 = str32;
                                    str24 = str2;
                                    String strJ = c.a.j(map5, "pk_id", "", str24);
                                    str25 = str35;
                                    str26 = str33;
                                    if (!strJ.isEmpty() && !str26.equals(strJ) && !arrayList3.contains(strJ)) {
                                        arrayList3.add(strJ);
                                    }
                                } else {
                                    str23 = str32;
                                    str24 = str2;
                                    str25 = str35;
                                    str26 = str33;
                                }
                                it2 = it3;
                                str33 = str26;
                                str31 = str34;
                                String str36 = str25;
                                str2 = str24;
                                str32 = str23;
                                str3 = str36;
                            }
                            String str37 = str31;
                            list2.removeIf(new Predicate() { // from class: com.sgscq.vpn.p2
                                @Override // java.util.function.Predicate
                                public final boolean test(Object obj6) {
                                    Map map6 = (Map) obj6;
                                    return str29.equals(c.a.j(map6, "position", "", "general_position")) || y2.i3(strY4, map6);
                                }
                            });
                            LinkedHashSet linkedHashSet = new LinkedHashSet(arrayList3);
                            linkedHashSet.add(strY4);
                            Iterator it4 = arrayList3.iterator();
                            while (it4.hasNext()) {
                                k0((String) it4.next(), map);
                            }
                            k0(strY4, map);
                            l0(strY4, map);
                            list2.add(d3(map, strY4, str29, (String) map2.getOrDefault("team_id", "1"), context));
                            q4(map, linkedHashSet, context);
                            map4.put("add", list2);
                            map4.put("del", new ArrayList());
                            map4.put("upd", new ArrayList());
                            map.put("TeamGeneral", map4);
                            if (context != null) {
                                StringBuilder sbL = c.a.l("[Team] chgBattleTeam pk_id=", strY4, " position=", str29, " teamSize=");
                                sbL.append(list2.size());
                                z2.e(str37, sbL.toString());
                                return;
                            }
                            return;
                        }
                        strConcat = "[Team] chgBattleTeam general not found position=".concat(str29);
                    } else if (context == null) {
                        return;
                    } else {
                        strConcat = "[Team] ignore invalid chgBattleTeam position=".concat(str29);
                    }
                    z2.g(str31, strConcat);
                    return;
                }
                obj2 = "team_id";
                str6 = str31;
                str7 = "0";
                obj3 = "general_position";
                str8 = str3;
                str9 = (String) map2.getOrDefault("team", "");
                if (str9.isEmpty()) {
                    obj4 = "pk_id";
                    str10 = str6;
                    str11 = "";
                    str12 = str7;
                    str13 = str2;
                    str14 = str5;
                } else {
                    try {
                        str13 = str2;
                        try {
                            ArrayList arrayList4 = new ArrayList(w1.f0("TeamGeneral", map));
                            obj4 = "pk_id";
                            try {
                                linkedHashMap = (Map) new a.o().e(str9, new TypeToken<LinkedHashMap<String, Object>>() { // from class: com.sgscq.vpn.LocalServer$4
                                }.getType());
                                if (linkedHashMap == null) {
                                    linkedHashMap = new LinkedHashMap();
                                }
                                Map map6 = (Map) map.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
                                arrayList = new ArrayList();
                                str11 = "";
                                try {
                                    LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                    it = linkedHashMap.entrySet().iterator();
                                    while (it.hasNext()) {
                                        try {
                                            entry = (Map.Entry) it.next();
                                            Iterator it5 = it;
                                            str16 = (String) entry.getKey();
                                            if (R2(str16)) {
                                                str15 = str6;
                                                try {
                                                    strY3 = Y3(String.valueOf(entry.getValue()), map);
                                                    if (strY3.isEmpty() && !str7.equals(strY3)) {
                                                        str12 = str7;
                                                        str14 = str5;
                                                        try {
                                                            if (!str14.equalsIgnoreCase(strY3) && linkedHashSet2.add(strY3)) {
                                                                obj2 = obj2;
                                                                arrayList.add(d3(map, strY3, str16, (String) map2.getOrDefault(obj2, "1"), context));
                                                            } else {
                                                                obj2 = obj2;
                                                            }
                                                        } catch (Exception e2) {
                                                            e = e2;
                                                            str10 = str15;
                                                            if (context != null) {
                                                                c.a.u(e, new StringBuilder("[Team] parse team object error: "), str10);
                                                            }
                                                            if (str.isEmpty()) {
                                                            }
                                                            try {
                                                                jSONObject = new JSONObject(str);
                                                                if (!jSONObject.has("team_info")) {
                                                                    return;
                                                                }
                                                                ArrayList arrayList5 = new ArrayList(w1.f0("TeamGeneral", map));
                                                                jSONArray = jSONObject.getJSONArray("team_info");
                                                                arrayList2 = new ArrayList();
                                                                LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                                                                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                                                                i2 = 0;
                                                                while (i2 < jSONArray.length()) {
                                                                    linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                                                                    try {
                                                                        JSONArray jSONArray2 = jSONArray;
                                                                        if (linkedHashMapU1.isEmpty()) {
                                                                            str19 = str11;
                                                                            str18 = str10;
                                                                        } else {
                                                                            str19 = str11;
                                                                            str18 = str10;
                                                                            String str38 = str27;
                                                                            Object orDefault2 = linkedHashMapU1.getOrDefault(str38, str19);
                                                                            str27 = str38;
                                                                            Object obj6 = obj4;
                                                                            Object orDefault3 = linkedHashMapU1.getOrDefault(obj6, orDefault2);
                                                                            obj4 = obj6;
                                                                            str20 = str13;
                                                                            strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault3));
                                                                            if (strValueOf.isEmpty()) {
                                                                                str13 = str20;
                                                                            } else {
                                                                                str13 = str20;
                                                                                str21 = str12;
                                                                                if (str21.equals(strValueOf)) {
                                                                                    z3 = false;
                                                                                } else {
                                                                                    z3 = false;
                                                                                }
                                                                            }
                                                                            if (z3) {
                                                                                try {
                                                                                    strU4 = u4(linkedHashMapU1);
                                                                                    str12 = str21;
                                                                                    str22 = str14;
                                                                                    Object obj7 = obj;
                                                                                    Object orDefault4 = linkedHashMapU1.getOrDefault(obj7, str19);
                                                                                    obj = obj7;
                                                                                    String str39 = str8;
                                                                                    Object orDefault5 = linkedHashMapU1.getOrDefault(str39, orDefault4);
                                                                                    str8 = str39;
                                                                                    obj5 = obj3;
                                                                                    orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault5);
                                                                                    if (orDefault == null) {
                                                                                        strValueOf2 = str19;
                                                                                    } else {
                                                                                        strValueOf2 = String.valueOf(orDefault);
                                                                                    }
                                                                                    if (!strU4.isEmpty()) {
                                                                                        arrayList2.add(linkedHashMapU1);
                                                                                    }
                                                                                } catch (Exception e3) {
                                                                                    e = e3;
                                                                                    str17 = str18;
                                                                                    c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
                                                                                }
                                                                            } else {
                                                                                str12 = str21;
                                                                                str22 = str14;
                                                                                obj5 = obj3;
                                                                            }
                                                                            i2++;
                                                                            jSONArray = jSONArray2;
                                                                            obj3 = obj5;
                                                                            str14 = str22;
                                                                            str10 = str18;
                                                                            str11 = str19;
                                                                        }
                                                                        str21 = str12;
                                                                        z3 = false;
                                                                        if (z3) {
                                                                            strU4 = u4(linkedHashMapU1);
                                                                            str12 = str21;
                                                                            str22 = str14;
                                                                            Object obj8 = obj;
                                                                            Object orDefault6 = linkedHashMapU1.getOrDefault(obj8, str19);
                                                                            obj = obj8;
                                                                            String str310 = str8;
                                                                            Object orDefault7 = linkedHashMapU1.getOrDefault(str310, orDefault6);
                                                                            str8 = str310;
                                                                            obj5 = obj3;
                                                                            orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault7);
                                                                            if (orDefault == null) {
                                                                                strValueOf2 = str19;
                                                                            } else {
                                                                                strValueOf2 = String.valueOf(orDefault);
                                                                            }
                                                                            if (!strU4.isEmpty()) {
                                                                                arrayList2.add(linkedHashMapU1);
                                                                            }
                                                                        } else {
                                                                            str12 = str21;
                                                                            str22 = str14;
                                                                            obj5 = obj3;
                                                                        }
                                                                        i2++;
                                                                        jSONArray = jSONArray2;
                                                                        obj3 = obj5;
                                                                        str14 = str22;
                                                                        str10 = str18;
                                                                        str11 = str19;
                                                                    } catch (Exception e4) {
                                                                        e = e4;
                                                                        str18 = str10;
                                                                        str17 = str18;
                                                                        c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
                                                                    }
                                                                }
                                                                str18 = str10;
                                                                map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                                                                z(map, arrayList5, arrayList2, context);
                                                                str17 = str18;
                                                                try {
                                                                    z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                                                                    return;
                                                                } catch (Exception e5) {
                                                                    e = e5;
                                                                }
                                                            } catch (Exception e6) {
                                                                e = e6;
                                                                str17 = str10;
                                                            }
                                                            c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
                                                        }
                                                    }
                                                    str5 = str14;
                                                    str7 = str12;
                                                    str6 = str15;
                                                    it = it5;
                                                    obj2 = obj2;
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    str12 = str7;
                                                    str14 = str5;
                                                    str10 = str15;
                                                    if (context != null) {
                                                        c.a.u(e, new StringBuilder("[Team] parse team object error: "), str10);
                                                    }
                                                    if (str.isEmpty()) {
                                                        jSONObject = new JSONObject(str);
                                                        if (!jSONObject.has("team_info")) {
                                                            ArrayList arrayList6 = new ArrayList(w1.f0("TeamGeneral", map));
                                                            jSONArray = jSONObject.getJSONArray("team_info");
                                                            arrayList2 = new ArrayList();
                                                            LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                                                            LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                                                            i2 = 0;
                                                            while (i2 < jSONArray.length()) {
                                                                linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                                                                JSONArray jSONArray3 = jSONArray;
                                                                if (linkedHashMapU1.isEmpty()) {
                                                                    str19 = str11;
                                                                    str18 = str10;
                                                                } else {
                                                                    str19 = str11;
                                                                    str18 = str10;
                                                                    String str311 = str27;
                                                                    Object orDefault8 = linkedHashMapU1.getOrDefault(str311, str19);
                                                                    str27 = str311;
                                                                    Object obj9 = obj4;
                                                                    Object orDefault9 = linkedHashMapU1.getOrDefault(obj9, orDefault8);
                                                                    obj4 = obj9;
                                                                    str20 = str13;
                                                                    strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault9));
                                                                    if (strValueOf.isEmpty()) {
                                                                        str13 = str20;
                                                                        str21 = str12;
                                                                        if (str21.equals(strValueOf)) {
                                                                            z3 = false;
                                                                        } else {
                                                                            z3 = false;
                                                                        }
                                                                    } else {
                                                                        str13 = str20;
                                                                    }
                                                                    if (z3) {
                                                                        strU4 = u4(linkedHashMapU1);
                                                                        str12 = str21;
                                                                        str22 = str14;
                                                                        Object obj10 = obj;
                                                                        Object orDefault10 = linkedHashMapU1.getOrDefault(obj10, str19);
                                                                        obj = obj10;
                                                                        String str312 = str8;
                                                                        Object orDefault11 = linkedHashMapU1.getOrDefault(str312, orDefault10);
                                                                        str8 = str312;
                                                                        obj5 = obj3;
                                                                        orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault11);
                                                                        if (orDefault == null) {
                                                                            strValueOf2 = str19;
                                                                        } else {
                                                                            strValueOf2 = String.valueOf(orDefault);
                                                                        }
                                                                        if (!strU4.isEmpty()) {
                                                                            arrayList2.add(linkedHashMapU1);
                                                                        }
                                                                    } else {
                                                                        str12 = str21;
                                                                        str22 = str14;
                                                                        obj5 = obj3;
                                                                    }
                                                                    i2++;
                                                                    jSONArray = jSONArray3;
                                                                    obj3 = obj5;
                                                                    str14 = str22;
                                                                    str10 = str18;
                                                                    str11 = str19;
                                                                }
                                                                str21 = str12;
                                                                z3 = false;
                                                                if (z3) {
                                                                    strU4 = u4(linkedHashMapU1);
                                                                    str12 = str21;
                                                                    str22 = str14;
                                                                    Object obj11 = obj;
                                                                    Object orDefault12 = linkedHashMapU1.getOrDefault(obj11, str19);
                                                                    obj = obj11;
                                                                    String str313 = str8;
                                                                    Object orDefault13 = linkedHashMapU1.getOrDefault(str313, orDefault12);
                                                                    str8 = str313;
                                                                    obj5 = obj3;
                                                                    orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault13);
                                                                    if (orDefault == null) {
                                                                        strValueOf2 = str19;
                                                                    } else {
                                                                        strValueOf2 = String.valueOf(orDefault);
                                                                    }
                                                                    if (!strU4.isEmpty()) {
                                                                        arrayList2.add(linkedHashMapU1);
                                                                    }
                                                                } else {
                                                                    str12 = str21;
                                                                    str22 = str14;
                                                                    obj5 = obj3;
                                                                }
                                                                i2++;
                                                                jSONArray = jSONArray3;
                                                                obj3 = obj5;
                                                                str14 = str22;
                                                                str10 = str18;
                                                                str11 = str19;
                                                            }
                                                            str18 = str10;
                                                            map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                                                            z(map, arrayList6, arrayList2, context);
                                                            str17 = str18;
                                                            z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                                                            return;
                                                        }
                                                        return;
                                                        c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
                                                    }
                                                }
                                            } else {
                                                str15 = str6;
                                            }
                                            str12 = str7;
                                            str14 = str5;
                                            str5 = str14;
                                            str7 = str12;
                                            str6 = str15;
                                            it = it5;
                                            obj2 = obj2;
                                        } catch (Exception e8) {
                                            e = e8;
                                            str15 = str6;
                                        }
                                    }
                                    str15 = str6;
                                    str12 = str7;
                                    str14 = str5;
                                    map6.put("add", arrayList);
                                    map6.put("del", new ArrayList());
                                    map6.put("upd", new ArrayList());
                                    map.put("TeamGeneral", map6);
                                    z(map, arrayList4, arrayList, context);
                                    if (context != null) {
                                        str10 = str15;
                                        try {
                                            z2.e(str10, "[Team] chgTeam object parsed, size=" + arrayList.size());
                                            return;
                                        } catch (Exception e9) {
                                            e = e9;
                                            if (context != null) {
                                                c.a.u(e, new StringBuilder("[Team] parse team object error: "), str10);
                                            }
                                            if (str.isEmpty()) {
                                                jSONObject = new JSONObject(str);
                                                if (!jSONObject.has("team_info")) {
                                                    ArrayList arrayList7 = new ArrayList(w1.f0("TeamGeneral", map));
                                                    jSONArray = jSONObject.getJSONArray("team_info");
                                                    arrayList2 = new ArrayList();
                                                    LinkedHashSet linkedHashSet7 = new LinkedHashSet();
                                                    LinkedHashSet linkedHashSet8 = new LinkedHashSet();
                                                    i2 = 0;
                                                    while (i2 < jSONArray.length()) {
                                                        linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                                                        JSONArray jSONArray4 = jSONArray;
                                                        if (linkedHashMapU1.isEmpty()) {
                                                            str19 = str11;
                                                            str18 = str10;
                                                        } else {
                                                            str19 = str11;
                                                            str18 = str10;
                                                            String str314 = str27;
                                                            Object orDefault14 = linkedHashMapU1.getOrDefault(str314, str19);
                                                            str27 = str314;
                                                            Object obj12 = obj4;
                                                            Object orDefault15 = linkedHashMapU1.getOrDefault(obj12, orDefault14);
                                                            obj4 = obj12;
                                                            str20 = str13;
                                                            strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault15));
                                                            if (strValueOf.isEmpty()) {
                                                                str13 = str20;
                                                                str21 = str12;
                                                                if (str21.equals(strValueOf)) {
                                                                    z3 = false;
                                                                } else {
                                                                    z3 = false;
                                                                }
                                                            } else {
                                                                str13 = str20;
                                                            }
                                                            if (z3) {
                                                                strU4 = u4(linkedHashMapU1);
                                                                str12 = str21;
                                                                str22 = str14;
                                                                Object obj13 = obj;
                                                                Object orDefault16 = linkedHashMapU1.getOrDefault(obj13, str19);
                                                                obj = obj13;
                                                                String str315 = str8;
                                                                Object orDefault17 = linkedHashMapU1.getOrDefault(str315, orDefault16);
                                                                str8 = str315;
                                                                obj5 = obj3;
                                                                orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault17);
                                                                if (orDefault == null) {
                                                                    strValueOf2 = str19;
                                                                } else {
                                                                    strValueOf2 = String.valueOf(orDefault);
                                                                }
                                                                if (!strU4.isEmpty()) {
                                                                    arrayList2.add(linkedHashMapU1);
                                                                }
                                                            } else {
                                                                str12 = str21;
                                                                str22 = str14;
                                                                obj5 = obj3;
                                                            }
                                                            i2++;
                                                            jSONArray = jSONArray4;
                                                            obj3 = obj5;
                                                            str14 = str22;
                                                            str10 = str18;
                                                            str11 = str19;
                                                        }
                                                        str21 = str12;
                                                        z3 = false;
                                                        if (z3) {
                                                            strU4 = u4(linkedHashMapU1);
                                                            str12 = str21;
                                                            str22 = str14;
                                                            Object obj14 = obj;
                                                            Object orDefault18 = linkedHashMapU1.getOrDefault(obj14, str19);
                                                            obj = obj14;
                                                            String str316 = str8;
                                                            Object orDefault19 = linkedHashMapU1.getOrDefault(str316, orDefault18);
                                                            str8 = str316;
                                                            obj5 = obj3;
                                                            orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault19);
                                                            if (orDefault == null) {
                                                                strValueOf2 = str19;
                                                            } else {
                                                                strValueOf2 = String.valueOf(orDefault);
                                                            }
                                                            if (!strU4.isEmpty()) {
                                                                arrayList2.add(linkedHashMapU1);
                                                            }
                                                        } else {
                                                            str12 = str21;
                                                            str22 = str14;
                                                            obj5 = obj3;
                                                        }
                                                        i2++;
                                                        jSONArray = jSONArray4;
                                                        obj3 = obj5;
                                                        str14 = str22;
                                                        str10 = str18;
                                                        str11 = str19;
                                                    }
                                                    str18 = str10;
                                                    map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                                                    z(map, arrayList7, arrayList2, context);
                                                    str17 = str18;
                                                    z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                                                    return;
                                                }
                                                return;
                                                c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
                                            }
                                        }
                                    }
                                    return;
                                } catch (Exception e10) {
                                    e = e10;
                                    str10 = str6;
                                    str12 = str7;
                                    str14 = str5;
                                    if (context != null) {
                                        c.a.u(e, new StringBuilder("[Team] parse team object error: "), str10);
                                    }
                                    if (str.isEmpty()) {
                                        jSONObject = new JSONObject(str);
                                        if (!jSONObject.has("team_info")) {
                                            ArrayList arrayList8 = new ArrayList(w1.f0("TeamGeneral", map));
                                            jSONArray = jSONObject.getJSONArray("team_info");
                                            arrayList2 = new ArrayList();
                                            LinkedHashSet linkedHashSet9 = new LinkedHashSet();
                                            LinkedHashSet linkedHashSet10 = new LinkedHashSet();
                                            i2 = 0;
                                            while (i2 < jSONArray.length()) {
                                                linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                                                JSONArray jSONArray5 = jSONArray;
                                                if (linkedHashMapU1.isEmpty()) {
                                                    str19 = str11;
                                                    str18 = str10;
                                                } else {
                                                    str19 = str11;
                                                    str18 = str10;
                                                    String str317 = str27;
                                                    Object orDefault110 = linkedHashMapU1.getOrDefault(str317, str19);
                                                    str27 = str317;
                                                    Object obj15 = obj4;
                                                    Object orDefault111 = linkedHashMapU1.getOrDefault(obj15, orDefault110);
                                                    obj4 = obj15;
                                                    str20 = str13;
                                                    strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault111));
                                                    if (strValueOf.isEmpty()) {
                                                        str13 = str20;
                                                        str21 = str12;
                                                        if (str21.equals(strValueOf)) {
                                                            z3 = false;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                    } else {
                                                        str13 = str20;
                                                    }
                                                    if (z3) {
                                                        strU4 = u4(linkedHashMapU1);
                                                        str12 = str21;
                                                        str22 = str14;
                                                        Object obj16 = obj;
                                                        Object orDefault112 = linkedHashMapU1.getOrDefault(obj16, str19);
                                                        obj = obj16;
                                                        String str318 = str8;
                                                        Object orDefault113 = linkedHashMapU1.getOrDefault(str318, orDefault112);
                                                        str8 = str318;
                                                        obj5 = obj3;
                                                        orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault113);
                                                        if (orDefault == null) {
                                                            strValueOf2 = str19;
                                                        } else {
                                                            strValueOf2 = String.valueOf(orDefault);
                                                        }
                                                        if (!strU4.isEmpty()) {
                                                            arrayList2.add(linkedHashMapU1);
                                                        }
                                                    } else {
                                                        str12 = str21;
                                                        str22 = str14;
                                                        obj5 = obj3;
                                                    }
                                                    i2++;
                                                    jSONArray = jSONArray5;
                                                    obj3 = obj5;
                                                    str14 = str22;
                                                    str10 = str18;
                                                    str11 = str19;
                                                }
                                                str21 = str12;
                                                z3 = false;
                                                if (z3) {
                                                    strU4 = u4(linkedHashMapU1);
                                                    str12 = str21;
                                                    str22 = str14;
                                                    Object obj17 = obj;
                                                    Object orDefault114 = linkedHashMapU1.getOrDefault(obj17, str19);
                                                    obj = obj17;
                                                    String str319 = str8;
                                                    Object orDefault115 = linkedHashMapU1.getOrDefault(str319, orDefault114);
                                                    str8 = str319;
                                                    obj5 = obj3;
                                                    orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault115);
                                                    if (orDefault == null) {
                                                        strValueOf2 = str19;
                                                    } else {
                                                        strValueOf2 = String.valueOf(orDefault);
                                                    }
                                                    if (!strU4.isEmpty()) {
                                                        arrayList2.add(linkedHashMapU1);
                                                    }
                                                } else {
                                                    str12 = str21;
                                                    str22 = str14;
                                                    obj5 = obj3;
                                                }
                                                i2++;
                                                jSONArray = jSONArray5;
                                                obj3 = obj5;
                                                str14 = str22;
                                                str10 = str18;
                                                str11 = str19;
                                            }
                                            str18 = str10;
                                            map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                                            z(map, arrayList8, arrayList2, context);
                                            str17 = str18;
                                            z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                                            return;
                                        }
                                        return;
                                        c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
                                    }
                                }
                            } catch (Exception e11) {
                                e = e11;
                                str10 = str6;
                                str11 = "";
                                str12 = str7;
                                str14 = str5;
                                if (context != null) {
                                    c.a.u(e, new StringBuilder("[Team] parse team object error: "), str10);
                                }
                                if (str.isEmpty()) {
                                    jSONObject = new JSONObject(str);
                                    if (!jSONObject.has("team_info")) {
                                        ArrayList arrayList9 = new ArrayList(w1.f0("TeamGeneral", map));
                                        jSONArray = jSONObject.getJSONArray("team_info");
                                        arrayList2 = new ArrayList();
                                        LinkedHashSet linkedHashSet11 = new LinkedHashSet();
                                        LinkedHashSet linkedHashSet12 = new LinkedHashSet();
                                        i2 = 0;
                                        while (i2 < jSONArray.length()) {
                                            linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                                            JSONArray jSONArray6 = jSONArray;
                                            if (linkedHashMapU1.isEmpty()) {
                                                str19 = str11;
                                                str18 = str10;
                                            } else {
                                                str19 = str11;
                                                str18 = str10;
                                                String str3110 = str27;
                                                Object orDefault116 = linkedHashMapU1.getOrDefault(str3110, str19);
                                                str27 = str3110;
                                                Object obj18 = obj4;
                                                Object orDefault117 = linkedHashMapU1.getOrDefault(obj18, orDefault116);
                                                obj4 = obj18;
                                                str20 = str13;
                                                strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault117));
                                                if (strValueOf.isEmpty()) {
                                                    str13 = str20;
                                                    str21 = str12;
                                                    if (str21.equals(strValueOf)) {
                                                        z3 = false;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                } else {
                                                    str13 = str20;
                                                }
                                                if (z3) {
                                                    strU4 = u4(linkedHashMapU1);
                                                    str12 = str21;
                                                    str22 = str14;
                                                    Object obj19 = obj;
                                                    Object orDefault118 = linkedHashMapU1.getOrDefault(obj19, str19);
                                                    obj = obj19;
                                                    String str3111 = str8;
                                                    Object orDefault119 = linkedHashMapU1.getOrDefault(str3111, orDefault118);
                                                    str8 = str3111;
                                                    obj5 = obj3;
                                                    orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault119);
                                                    if (orDefault == null) {
                                                        strValueOf2 = str19;
                                                    } else {
                                                        strValueOf2 = String.valueOf(orDefault);
                                                    }
                                                    if (!strU4.isEmpty()) {
                                                        arrayList2.add(linkedHashMapU1);
                                                    }
                                                } else {
                                                    str12 = str21;
                                                    str22 = str14;
                                                    obj5 = obj3;
                                                }
                                                i2++;
                                                jSONArray = jSONArray6;
                                                obj3 = obj5;
                                                str14 = str22;
                                                str10 = str18;
                                                str11 = str19;
                                            }
                                            str21 = str12;
                                            z3 = false;
                                            if (z3) {
                                                strU4 = u4(linkedHashMapU1);
                                                str12 = str21;
                                                str22 = str14;
                                                Object obj110 = obj;
                                                Object orDefault1110 = linkedHashMapU1.getOrDefault(obj110, str19);
                                                obj = obj110;
                                                String str3112 = str8;
                                                Object orDefault1111 = linkedHashMapU1.getOrDefault(str3112, orDefault1110);
                                                str8 = str3112;
                                                obj5 = obj3;
                                                orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault1111);
                                                if (orDefault == null) {
                                                    strValueOf2 = str19;
                                                } else {
                                                    strValueOf2 = String.valueOf(orDefault);
                                                }
                                                if (!strU4.isEmpty()) {
                                                    arrayList2.add(linkedHashMapU1);
                                                }
                                            } else {
                                                str12 = str21;
                                                str22 = str14;
                                                obj5 = obj3;
                                            }
                                            i2++;
                                            jSONArray = jSONArray6;
                                            obj3 = obj5;
                                            str14 = str22;
                                            str10 = str18;
                                            str11 = str19;
                                        }
                                        str18 = str10;
                                        map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                                        z(map, arrayList9, arrayList2, context);
                                        str17 = str18;
                                        z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                                        return;
                                    }
                                    return;
                                    c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
                                }
                            }
                        } catch (Exception e12) {
                            e = e12;
                            obj4 = "pk_id";
                        }
                    } catch (Exception e13) {
                        e = e13;
                        obj4 = "pk_id";
                        str10 = str6;
                        str11 = "";
                        str12 = str7;
                        str13 = str2;
                    }
                }
                if (str.isEmpty()) {
                    jSONObject = new JSONObject(str);
                    if (!jSONObject.has("team_info")) {
                        ArrayList arrayList10 = new ArrayList(w1.f0("TeamGeneral", map));
                        jSONArray = jSONObject.getJSONArray("team_info");
                        arrayList2 = new ArrayList();
                        LinkedHashSet linkedHashSet13 = new LinkedHashSet();
                        LinkedHashSet linkedHashSet14 = new LinkedHashSet();
                        i2 = 0;
                        while (i2 < jSONArray.length()) {
                            linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                            JSONArray jSONArray7 = jSONArray;
                            if (linkedHashMapU1.isEmpty()) {
                                str19 = str11;
                                str18 = str10;
                            } else {
                                str19 = str11;
                                str18 = str10;
                                String str3113 = str27;
                                Object orDefault1112 = linkedHashMapU1.getOrDefault(str3113, str19);
                                str27 = str3113;
                                Object obj111 = obj4;
                                Object orDefault1113 = linkedHashMapU1.getOrDefault(obj111, orDefault1112);
                                obj4 = obj111;
                                str20 = str13;
                                strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault1113));
                                if (strValueOf.isEmpty()) {
                                    str13 = str20;
                                    str21 = str12;
                                    if (str21.equals(strValueOf) || str14.equalsIgnoreCase(strValueOf)) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                } else {
                                    str13 = str20;
                                }
                                if (z3) {
                                    strU4 = u4(linkedHashMapU1);
                                    str12 = str21;
                                    str22 = str14;
                                    Object obj112 = obj;
                                    Object orDefault1114 = linkedHashMapU1.getOrDefault(obj112, str19);
                                    obj = obj112;
                                    String str3114 = str8;
                                    Object orDefault1115 = linkedHashMapU1.getOrDefault(str3114, orDefault1114);
                                    str8 = str3114;
                                    obj5 = obj3;
                                    orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault1115);
                                    if (orDefault == null) {
                                        strValueOf2 = str19;
                                    } else {
                                        strValueOf2 = String.valueOf(orDefault);
                                    }
                                    if (!strU4.isEmpty() && linkedHashSet13.add(strU4) && R2(strValueOf2) && (strValueOf2.isEmpty() || linkedHashSet14.add(strValueOf2))) {
                                        arrayList2.add(linkedHashMapU1);
                                    }
                                } else {
                                    str12 = str21;
                                    str22 = str14;
                                    obj5 = obj3;
                                }
                                i2++;
                                jSONArray = jSONArray7;
                                obj3 = obj5;
                                str14 = str22;
                                str10 = str18;
                                str11 = str19;
                            }
                            str21 = str12;
                            z3 = false;
                            if (z3) {
                                strU4 = u4(linkedHashMapU1);
                                str12 = str21;
                                str22 = str14;
                                Object obj113 = obj;
                                Object orDefault1116 = linkedHashMapU1.getOrDefault(obj113, str19);
                                obj = obj113;
                                String str3115 = str8;
                                Object orDefault1117 = linkedHashMapU1.getOrDefault(str3115, orDefault1116);
                                str8 = str3115;
                                obj5 = obj3;
                                orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault1117);
                                if (orDefault == null) {
                                    strValueOf2 = str19;
                                } else {
                                    strValueOf2 = String.valueOf(orDefault);
                                }
                                if (!strU4.isEmpty()) {
                                    arrayList2.add(linkedHashMapU1);
                                }
                            } else {
                                str12 = str21;
                                str22 = str14;
                                obj5 = obj3;
                            }
                            i2++;
                            jSONArray = jSONArray7;
                            obj3 = obj5;
                            str14 = str22;
                            str10 = str18;
                            str11 = str19;
                        }
                        str18 = str10;
                        map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                        z(map, arrayList10, arrayList2, context);
                        str17 = str18;
                        z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                        return;
                    }
                    return;
                }
            }
            str4 = str28;
            z2 = true;
            str5 = "null";
            String str320 = "general_position";
            if (str29.isEmpty()) {
            }
            obj2 = "team_id";
            str6 = str31;
            str7 = "0";
            obj3 = "general_position";
            str8 = str3;
            str9 = (String) map2.getOrDefault("team", "");
            if (str9.isEmpty()) {
                str13 = str2;
                ArrayList arrayList11 = new ArrayList(w1.f0("TeamGeneral", map));
                obj4 = "pk_id";
                linkedHashMap = (Map) new a.o().e(str9, new TypeToken<LinkedHashMap<String, Object>>() { // from class: com.sgscq.vpn.LocalServer$4
                }.getType());
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                Map map7 = (Map) map.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
                arrayList = new ArrayList();
                str11 = "";
                LinkedHashSet linkedHashSet15 = new LinkedHashSet();
                it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    entry = (Map.Entry) it.next();
                    Iterator it6 = it;
                    str16 = (String) entry.getKey();
                    if (R2(str16)) {
                        str15 = str6;
                    } else {
                        str15 = str6;
                        strY3 = Y3(String.valueOf(entry.getValue()), map);
                        if (strY3.isEmpty()) {
                        }
                    }
                    str12 = str7;
                    str14 = str5;
                    str5 = str14;
                    str7 = str12;
                    str6 = str15;
                    it = it6;
                    obj2 = obj2;
                }
                str15 = str6;
                str12 = str7;
                str14 = str5;
                map7.put("add", arrayList);
                map7.put("del", new ArrayList());
                map7.put("upd", new ArrayList());
                map.put("TeamGeneral", map7);
                z(map, arrayList11, arrayList, context);
                if (context != null) {
                    str10 = str15;
                    z2.e(str10, "[Team] chgTeam object parsed, size=" + arrayList.size());
                    return;
                }
                return;
            }
            obj4 = "pk_id";
            str10 = str6;
            str11 = "";
            str12 = str7;
            str13 = str2;
            str14 = str5;
            if (str.isEmpty()) {
                jSONObject = new JSONObject(str);
                if (!jSONObject.has("team_info")) {
                    ArrayList arrayList12 = new ArrayList(w1.f0("TeamGeneral", map));
                    jSONArray = jSONObject.getJSONArray("team_info");
                    arrayList2 = new ArrayList();
                    LinkedHashSet linkedHashSet16 = new LinkedHashSet();
                    LinkedHashSet linkedHashSet17 = new LinkedHashSet();
                    i2 = 0;
                    while (i2 < jSONArray.length()) {
                        linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                        JSONArray jSONArray8 = jSONArray;
                        if (linkedHashMapU1.isEmpty()) {
                            str19 = str11;
                            str18 = str10;
                        } else {
                            str19 = str11;
                            str18 = str10;
                            String str3116 = str27;
                            Object orDefault1118 = linkedHashMapU1.getOrDefault(str3116, str19);
                            str27 = str3116;
                            Object obj114 = obj4;
                            Object orDefault1119 = linkedHashMapU1.getOrDefault(obj114, orDefault1118);
                            obj4 = obj114;
                            str20 = str13;
                            strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault1119));
                            if (strValueOf.isEmpty()) {
                                str13 = str20;
                                str21 = str12;
                                if (str21.equals(strValueOf)) {
                                    z3 = false;
                                } else {
                                    z3 = false;
                                }
                            } else {
                                str13 = str20;
                            }
                            if (z3) {
                                strU4 = u4(linkedHashMapU1);
                                str12 = str21;
                                str22 = str14;
                                Object obj115 = obj;
                                Object orDefault11110 = linkedHashMapU1.getOrDefault(obj115, str19);
                                obj = obj115;
                                String str3117 = str8;
                                Object orDefault11111 = linkedHashMapU1.getOrDefault(str3117, orDefault11110);
                                str8 = str3117;
                                obj5 = obj3;
                                orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault11111);
                                if (orDefault == null) {
                                    strValueOf2 = str19;
                                } else {
                                    strValueOf2 = String.valueOf(orDefault);
                                }
                                if (!strU4.isEmpty()) {
                                    arrayList2.add(linkedHashMapU1);
                                }
                            } else {
                                str12 = str21;
                                str22 = str14;
                                obj5 = obj3;
                            }
                            i2++;
                            jSONArray = jSONArray8;
                            obj3 = obj5;
                            str14 = str22;
                            str10 = str18;
                            str11 = str19;
                        }
                        str21 = str12;
                        z3 = false;
                        if (z3) {
                            strU4 = u4(linkedHashMapU1);
                            str12 = str21;
                            str22 = str14;
                            Object obj116 = obj;
                            Object orDefault11112 = linkedHashMapU1.getOrDefault(obj116, str19);
                            obj = obj116;
                            String str3118 = str8;
                            Object orDefault11113 = linkedHashMapU1.getOrDefault(str3118, orDefault11112);
                            str8 = str3118;
                            obj5 = obj3;
                            orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault11113);
                            if (orDefault == null) {
                                strValueOf2 = str19;
                            } else {
                                strValueOf2 = String.valueOf(orDefault);
                            }
                            if (!strU4.isEmpty()) {
                                arrayList2.add(linkedHashMapU1);
                            }
                        } else {
                            str12 = str21;
                            str22 = str14;
                            obj5 = obj3;
                        }
                        i2++;
                        jSONArray = jSONArray8;
                        obj3 = obj5;
                        str14 = str22;
                        str10 = str18;
                        str11 = str19;
                    }
                    str18 = str10;
                    map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                    z(map, arrayList12, arrayList2, context);
                    str17 = str18;
                    z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                    return;
                }
                return;
            }
        }
        obj = "team_position";
        z = false;
        context = this.f1549b;
        str2 = "general_pk_id";
        str3 = "position";
        if (z) {
            Map map8 = (Map) map.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
            list = (List) map8.getOrDefault("add", new ArrayList());
            strValueOf3 = String.valueOf(map.getOrDefault("first_choose_general", ""));
            strValueOf4 = String.valueOf(map.getOrDefault("first_wine_general", ""));
            if (!t4(strValueOf3, list)) {
                list.add(d3(map, strValueOf3, "1", (String) map2.getOrDefault("team_id", "1"), context));
            }
            list.removeIf(new Predicate() { // from class: com.sgscq.vpn.p2
                @Override // java.util.function.Predicate
                public final boolean test(Object obj20) {
                    Map map9 = (Map) obj20;
                    return str30.equals(c.a.j(map9, "position", "", "general_position")) || y2.i3(strValueOf4, map9);
                }
            });
            list.add(d3(map, strValueOf4, "2", (String) map2.getOrDefault("team_id", "1"), context));
            map8.put("add", list);
            map8.put("del", new ArrayList());
            map8.put("upd", new ArrayList());
            map.put("TeamGeneral", map8);
            if (context != null) {
                StringBuilder sbB2 = a.b0.b("[Team] guide first wine deploy pk_id=", strValueOf4, " teamSize=");
                sbB2.append(list.size());
                z2.e("SGSCQ_SRV", sbB2.toString());
                return;
            }
            return;
        }
        String str321 = "SGSCQ_SRV";
        if (!str28.isEmpty()) {
            str4 = str28;
            if ("0".equals(str4)) {
            }
            str5 = "null";
            String str322 = "general_position";
            if (str29.isEmpty()) {
            }
            obj2 = "team_id";
            str6 = str321;
            str7 = "0";
            obj3 = "general_position";
            str8 = str3;
            str9 = (String) map2.getOrDefault("team", "");
            if (str9.isEmpty()) {
                str13 = str2;
                ArrayList arrayList13 = new ArrayList(w1.f0("TeamGeneral", map));
                obj4 = "pk_id";
                linkedHashMap = (Map) new a.o().e(str9, new TypeToken<LinkedHashMap<String, Object>>() { // from class: com.sgscq.vpn.LocalServer$4
                }.getType());
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                Map map9 = (Map) map.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
                arrayList = new ArrayList();
                str11 = "";
                LinkedHashSet linkedHashSet18 = new LinkedHashSet();
                it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    entry = (Map.Entry) it.next();
                    Iterator it7 = it;
                    str16 = (String) entry.getKey();
                    if (R2(str16)) {
                        str15 = str6;
                    } else {
                        str15 = str6;
                        strY3 = Y3(String.valueOf(entry.getValue()), map);
                        if (strY3.isEmpty()) {
                        }
                    }
                    str12 = str7;
                    str14 = str5;
                    str5 = str14;
                    str7 = str12;
                    str6 = str15;
                    it = it7;
                    obj2 = obj2;
                }
                str15 = str6;
                str12 = str7;
                str14 = str5;
                map9.put("add", arrayList);
                map9.put("del", new ArrayList());
                map9.put("upd", new ArrayList());
                map.put("TeamGeneral", map9);
                z(map, arrayList13, arrayList, context);
                if (context != null) {
                    str10 = str15;
                    z2.e(str10, "[Team] chgTeam object parsed, size=" + arrayList.size());
                    return;
                }
                return;
            }
            obj4 = "pk_id";
            str10 = str6;
            str11 = "";
            str12 = str7;
            str13 = str2;
            str14 = str5;
            if (str.isEmpty()) {
                jSONObject = new JSONObject(str);
                if (!jSONObject.has("team_info")) {
                    ArrayList arrayList14 = new ArrayList(w1.f0("TeamGeneral", map));
                    jSONArray = jSONObject.getJSONArray("team_info");
                    arrayList2 = new ArrayList();
                    LinkedHashSet linkedHashSet19 = new LinkedHashSet();
                    LinkedHashSet linkedHashSet110 = new LinkedHashSet();
                    i2 = 0;
                    while (i2 < jSONArray.length()) {
                        linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                        JSONArray jSONArray9 = jSONArray;
                        if (linkedHashMapU1.isEmpty()) {
                            str19 = str11;
                            str18 = str10;
                        } else {
                            str19 = str11;
                            str18 = str10;
                            String str3119 = str27;
                            Object orDefault11114 = linkedHashMapU1.getOrDefault(str3119, str19);
                            str27 = str3119;
                            Object obj117 = obj4;
                            Object orDefault11115 = linkedHashMapU1.getOrDefault(obj117, orDefault11114);
                            obj4 = obj117;
                            str20 = str13;
                            strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault11115));
                            if (strValueOf.isEmpty()) {
                                str13 = str20;
                                str21 = str12;
                                if (str21.equals(strValueOf)) {
                                    z3 = false;
                                } else {
                                    z3 = false;
                                }
                            } else {
                                str13 = str20;
                            }
                            if (z3) {
                                strU4 = u4(linkedHashMapU1);
                                str12 = str21;
                                str22 = str14;
                                Object obj118 = obj;
                                Object orDefault11116 = linkedHashMapU1.getOrDefault(obj118, str19);
                                obj = obj118;
                                String str31110 = str8;
                                Object orDefault11117 = linkedHashMapU1.getOrDefault(str31110, orDefault11116);
                                str8 = str31110;
                                obj5 = obj3;
                                orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault11117);
                                if (orDefault == null) {
                                    strValueOf2 = str19;
                                } else {
                                    strValueOf2 = String.valueOf(orDefault);
                                }
                                if (!strU4.isEmpty()) {
                                    arrayList2.add(linkedHashMapU1);
                                }
                            } else {
                                str12 = str21;
                                str22 = str14;
                                obj5 = obj3;
                            }
                            i2++;
                            jSONArray = jSONArray9;
                            obj3 = obj5;
                            str14 = str22;
                            str10 = str18;
                            str11 = str19;
                        }
                        str21 = str12;
                        z3 = false;
                        if (z3) {
                            strU4 = u4(linkedHashMapU1);
                            str12 = str21;
                            str22 = str14;
                            Object obj119 = obj;
                            Object orDefault11118 = linkedHashMapU1.getOrDefault(obj119, str19);
                            obj = obj119;
                            String str31111 = str8;
                            Object orDefault11119 = linkedHashMapU1.getOrDefault(str31111, orDefault11118);
                            str8 = str31111;
                            obj5 = obj3;
                            orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault11119);
                            if (orDefault == null) {
                                strValueOf2 = str19;
                            } else {
                                strValueOf2 = String.valueOf(orDefault);
                            }
                            if (!strU4.isEmpty()) {
                                arrayList2.add(linkedHashMapU1);
                            }
                        } else {
                            str12 = str21;
                            str22 = str14;
                            obj5 = obj3;
                        }
                        i2++;
                        jSONArray = jSONArray9;
                        obj3 = obj5;
                        str14 = str22;
                        str10 = str18;
                        str11 = str19;
                    }
                    str18 = str10;
                    map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                    z(map, arrayList14, arrayList2, context);
                    str17 = str18;
                    z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                    return;
                }
                return;
            }
        }
        str4 = str28;
        z2 = true;
        str5 = "null";
        String str323 = "general_position";
        if (str29.isEmpty()) {
        }
        obj2 = "team_id";
        str6 = str321;
        str7 = "0";
        obj3 = "general_position";
        str8 = str3;
        str9 = (String) map2.getOrDefault("team", "");
        if (str9.isEmpty()) {
            str13 = str2;
            ArrayList arrayList15 = new ArrayList(w1.f0("TeamGeneral", map));
            obj4 = "pk_id";
            linkedHashMap = (Map) new a.o().e(str9, new TypeToken<LinkedHashMap<String, Object>>() { // from class: com.sgscq.vpn.LocalServer$4
            }.getType());
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            Map map10 = (Map) map.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
            arrayList = new ArrayList();
            str11 = "";
            LinkedHashSet linkedHashSet111 = new LinkedHashSet();
            it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                entry = (Map.Entry) it.next();
                Iterator it8 = it;
                str16 = (String) entry.getKey();
                if (R2(str16)) {
                    str15 = str6;
                } else {
                    str15 = str6;
                    strY3 = Y3(String.valueOf(entry.getValue()), map);
                    if (strY3.isEmpty()) {
                    }
                }
                str12 = str7;
                str14 = str5;
                str5 = str14;
                str7 = str12;
                str6 = str15;
                it = it8;
                obj2 = obj2;
            }
            str15 = str6;
            str12 = str7;
            str14 = str5;
            map10.put("add", arrayList);
            map10.put("del", new ArrayList());
            map10.put("upd", new ArrayList());
            map.put("TeamGeneral", map10);
            z(map, arrayList15, arrayList, context);
            if (context != null) {
                str10 = str15;
                z2.e(str10, "[Team] chgTeam object parsed, size=" + arrayList.size());
                return;
            }
            return;
        }
        obj4 = "pk_id";
        str10 = str6;
        str11 = "";
        str12 = str7;
        str13 = str2;
        str14 = str5;
        if (str.isEmpty()) {
            jSONObject = new JSONObject(str);
            if (!jSONObject.has("team_info")) {
                ArrayList arrayList16 = new ArrayList(w1.f0("TeamGeneral", map));
                jSONArray = jSONObject.getJSONArray("team_info");
                arrayList2 = new ArrayList();
                LinkedHashSet linkedHashSet112 = new LinkedHashSet();
                LinkedHashSet linkedHashSet113 = new LinkedHashSet();
                i2 = 0;
                while (i2 < jSONArray.length()) {
                    linkedHashMapU1 = p5.u1(jSONArray.getJSONObject(i2).toString());
                    JSONArray jSONArray10 = jSONArray;
                    if (linkedHashMapU1.isEmpty()) {
                        str19 = str11;
                        str18 = str10;
                    } else {
                        str19 = str11;
                        str18 = str10;
                        String str31112 = str27;
                        Object orDefault111110 = linkedHashMapU1.getOrDefault(str31112, str19);
                        str27 = str31112;
                        Object obj1110 = obj4;
                        Object orDefault111111 = linkedHashMapU1.getOrDefault(obj1110, orDefault111110);
                        obj4 = obj1110;
                        str20 = str13;
                        strValueOf = String.valueOf(linkedHashMapU1.getOrDefault(str20, orDefault111111));
                        if (strValueOf.isEmpty()) {
                            str13 = str20;
                            str21 = str12;
                            if (str21.equals(strValueOf)) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                        } else {
                            str13 = str20;
                        }
                        if (z3) {
                            strU4 = u4(linkedHashMapU1);
                            str12 = str21;
                            str22 = str14;
                            Object obj1111 = obj;
                            Object orDefault111112 = linkedHashMapU1.getOrDefault(obj1111, str19);
                            obj = obj1111;
                            String str31113 = str8;
                            Object orDefault111113 = linkedHashMapU1.getOrDefault(str31113, orDefault111112);
                            str8 = str31113;
                            obj5 = obj3;
                            orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault111113);
                            if (orDefault == null) {
                                strValueOf2 = str19;
                            } else {
                                strValueOf2 = String.valueOf(orDefault);
                            }
                            if (!strU4.isEmpty()) {
                                arrayList2.add(linkedHashMapU1);
                            }
                        } else {
                            str12 = str21;
                            str22 = str14;
                            obj5 = obj3;
                        }
                        i2++;
                        jSONArray = jSONArray10;
                        obj3 = obj5;
                        str14 = str22;
                        str10 = str18;
                        str11 = str19;
                    }
                    str21 = str12;
                    z3 = false;
                    if (z3) {
                        strU4 = u4(linkedHashMapU1);
                        str12 = str21;
                        str22 = str14;
                        Object obj1112 = obj;
                        Object orDefault111114 = linkedHashMapU1.getOrDefault(obj1112, str19);
                        obj = obj1112;
                        String str31114 = str8;
                        Object orDefault111115 = linkedHashMapU1.getOrDefault(str31114, orDefault111114);
                        str8 = str31114;
                        obj5 = obj3;
                        orDefault = linkedHashMapU1.getOrDefault(obj5, orDefault111115);
                        if (orDefault == null) {
                            strValueOf2 = str19;
                        } else {
                            strValueOf2 = String.valueOf(orDefault);
                        }
                        if (!strU4.isEmpty()) {
                            arrayList2.add(linkedHashMapU1);
                        }
                    } else {
                        str12 = str21;
                        str22 = str14;
                        obj5 = obj3;
                    }
                    i2++;
                    jSONArray = jSONArray10;
                    obj3 = obj5;
                    str14 = str22;
                    str10 = str18;
                    str11 = str19;
                }
                str18 = str10;
                map.put("TeamGeneral", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList2));
                z(map, arrayList16, arrayList2, context);
                str17 = str18;
                z2.e(str17, "[Team] team_info body parsed, size=" + arrayList2.size());
                return;
            }
            return;
            c.a.u(e, new StringBuilder("[Team] parse body error: "), str17);
        }
    }

    public final List z4(String str, List list) {
        m.e eVar = this.O;
        if (eVar == null || !eVar.w(str)) {
            return list;
        }
        try {
            list = k3(list, eVar.k(str));
        } catch (Exception e2) {
            c.a.u(e2, new StringBuilder("[CloudSocial] friend request mails failed: "), "SGSCQ_SRV");
        }
        try {
            return k3(list, eVar.i(str));
        } catch (Exception e3) {
            c.a.u(e3, new StringBuilder("[CloudSocial] friend messages failed: "), "SGSCQ_SRV");
            return list;
        }
    }
}
