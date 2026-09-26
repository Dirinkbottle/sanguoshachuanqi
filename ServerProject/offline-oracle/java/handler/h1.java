package com.sgscq.vpn.handler;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.a7;
import com.sgscq.vpn.battle.BattleUnit;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.l7;
import com.sgscq.vpn.o7;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w1;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class h1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicLong f872b = new AtomicLong();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static LinkedHashMap f873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static List f874d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f875a;

    public h1(k0 k0Var) {
        this.f875a = k0Var;
    }

    public static int A(int i2, String str, Map map) {
        if (map == null) {
            return i2;
        }
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        try {
            return Integer.parseInt(String.valueOf(obj));
        } catch (Exception unused) {
            return i2;
        }
    }

    public static boolean B(String str) {
        String strL = L(str);
        return "361001".equals(strL) || "362001".equals(strL) || "363001".equals(strL) || "9361001".equals(strL) || "9362001".equals(strL) || "9363001".equals(strL);
    }

    public static boolean C(String str) {
        return (str == null || str.isEmpty() || "0".equals(str) || w1.a1(null).k1(str) == null) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    public static boolean D(String str) {
        boolean z;
        String strM1;
        String strL = L(str);
        if (j0.f886b.containsValue(strL)) {
            return true;
        }
        Map map = (Map) f0().get(strL);
        if (map == null) {
            return false;
        }
        if ("300000".equals(strL) || strL.startsWith("400")) {
            z = true;
        } else {
            String strValueOf = String.valueOf(map.getOrDefault("skill_code", ""));
            if (strValueOf.trim().isEmpty() || "null".equals(strValueOf) || ((strM1 = w1.a1(null).m1(strL)) != null && strM1.contains("神秘"))) {
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            return false;
        }
        Object obj = map.get("source");
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if ((obj2 instanceof Map) && "5".equals(String.valueOf(((Map) obj2).get("source_type")).trim())) {
                    return true;
                }
            }
        }
        return "5".equals(String.valueOf(map.get("source_type")).trim());
    }

    public static ArrayList E(Context context) {
        try {
            a7 a7VarV1 = w1.a1(context).V1();
            if (a7VarV1 == null) {
                return new ArrayList();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = a7VarV1.a().iterator();
            while (it.hasNext()) {
                Map mapB = a7VarV1.b((String) it.next());
                if (mapB != null) {
                    arrayList.add(mapB);
                }
            }
            return arrayList;
        } catch (RuntimeException unused) {
            return new ArrayList();
        }
    }

    public static long F(long j2, String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            try {
                return Long.parseLong(String.valueOf(obj));
            } catch (Exception unused) {
                return (long) Double.parseDouble(String.valueOf(obj));
            }
        } catch (Exception unused2) {
            return j2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0049  */
    public static BattleUnit G(int i2, int i3, String str, String str2, Map map) {
        e eVar = new e(str, i2, i3);
        eVar.f812d = map;
        eVar.f815g = str2;
        eVar.a(300.0d, 100.0d, 100.0d);
        if (i2 == 1) {
            String strT0 = w1.a1(null).T0(str);
            if (!C(strT0)) {
                if (str.length() >= 3) {
                    strT0 = "3" + str.substring(1);
                    if (!C(strT0)) {
                        strT0 = "321007";
                    }
                } else {
                    strT0 = "321007";
                }
            }
            eVar.f822n = strT0;
            eVar.f821m = true;
        }
        return f.a(eVar);
    }

    public static LinkedHashMap H(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.putAll(linkedHashMap);
        linkedHashMap3.putAll(linkedHashMap2);
        return linkedHashMap3;
    }

    public static List I(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("upd");
            if (obj2 instanceof List) {
                return (List) obj2;
            }
        }
        return new ArrayList();
    }

    public static List J(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("del");
            if (obj2 instanceof List) {
                return (List) obj2;
            }
        }
        return new ArrayList();
    }

    public static ArrayList K(String str, Map map) {
        ArrayList arrayList = new ArrayList();
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            if (obj instanceof List) {
            }
            return arrayList;
        }
        Map map2 = (Map) obj;
        b(map2.get("add"), arrayList);
        b(map2.get("upd"), arrayList);
        obj = map2.get("update_list");
        b(obj, arrayList);
        return arrayList;
    }

    public static String L(String str) {
        return (str == null || str.trim().isEmpty()) ? "311004" : str.trim();
    }

    public static boolean M(String str, Map map, Map map2) {
        String strL = L(str);
        String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
        if (!((strL.equals(strValueOf) && strL.equals(String.valueOf(map2.getOrDefault("id", ""))) && strL.equals(String.valueOf(map2.getOrDefault("skill_id", "")))) ? false : true)) {
            return false;
        }
        if (!strValueOf.isEmpty() && !"null".equalsIgnoreCase(strValueOf) && !strL.equals(strValueOf)) {
            List listJ = J("SkillPiece", map);
            if (!listJ.contains(strValueOf)) {
                listJ.add(strValueOf);
            }
            map.put("SkillPiece", p5.z0("del", listJ, "upd", I("SkillPiece", map), "add", w1.f0("SkillPiece", map)));
        }
        map2.put("pk_id", strL);
        map2.put("id", strL);
        map2.put("skill_id", strL);
        return true;
    }

    public static int N(Map map) {
        int iA = w1.A(map);
        return iA > 0 ? iA : Math.max(0, A(A(A(0, "fightPoint", map), "fighting", map), "user_fighting", map));
    }

    public static byte[] O(File file) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 < 0) {
                    fileInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                if (i2 > 0) {
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
            }
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }

    public static void P(String str, Map map, Map map2) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Map map3 = (Map) obj;
            Object obj2 = map3.get("add");
            if (obj2 instanceof List) {
                ((List) obj2).remove(map2);
            }
            Object obj3 = map3.get("upd");
            if (obj3 instanceof List) {
                ((List) obj3).remove(map2);
            }
            Object obj4 = map3.get("update_list");
            if (obj4 instanceof List) {
                ((List) obj4).remove(map2);
            }
        }
    }

    public static ArrayList Q(List list, int i2, int i3, long j2) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayListR = R(a0(list, i2, i3, 10, true, Collections.emptyList()), i3, 4, j2);
        if (arrayListR.size() < 4) {
            arrayListR.addAll(R(a0(list, i2, i3, 20, true, arrayListR), i3, 4 - arrayListR.size(), (-7046029254386353131L) ^ j2));
        }
        if (arrayListR.size() < 4) {
            arrayListR.addAll(R(a0(list, i2, i3, 20, false, arrayListR), i3, 4 - arrayListR.size(), (-4417276706812531889L) ^ j2));
        }
        if (arrayListR.isEmpty()) {
            long jMax = Math.max(1, i3);
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                v5 v5Var = (v5) it.next();
                if (v5Var != null) {
                    arrayList.add(v5Var);
                }
            }
            arrayList.sort(Comparator.comparingInt(new l7(i2, 5)).thenComparingLong(new o7(jMax, 5)).thenComparing(new n.a(24)));
            arrayListR.addAll(R(new ArrayList(arrayList.subList(0, Math.max(0, Math.min(12, arrayList.size())))), i3, 4, 2870177450012600261L ^ j2));
        }
        return arrayListR;
    }

    public static ArrayList R(ArrayList arrayList, int i2, int i3, long j2) {
        int iMax = Math.max(1, i2);
        ArrayList arrayList2 = new ArrayList(arrayList);
        Random random = new Random(j2);
        ArrayList arrayList3 = new ArrayList();
        while (arrayList3.size() < i3 && !arrayList2.isEmpty()) {
            Iterator it = arrayList2.iterator();
            double dC0 = 0.0d;
            while (it.hasNext()) {
                dC0 += c0(((v5) it.next()).f1462d, iMax);
            }
            double dNextDouble = random.nextDouble() * dC0;
            int size = arrayList2.size() - 1;
            for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                dNextDouble -= c0(((v5) arrayList2.get(i4)).f1462d, iMax);
                if (dNextDouble <= 0.0d) {
                    size = i4;
                    break;
                }
            }
            arrayList3.add((v5) arrayList2.remove(size));
        }
        return arrayList3;
    }

    public static boolean S(int i2, Map map) {
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

    public static LinkedHashMap T(String str, int i2) {
        return p5.z0("pk_id", str, "id", str, "skill_id", str, "num", Integer.valueOf(i2), "skill_piece_num", Integer.valueOf(i2));
    }

    public static int U(Map map) {
        if (map == null) {
            return 0;
        }
        return A(A(0, "skill_piece_num", map), "num", map);
    }

    public static LinkedHashMap V() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static int W(Map map) {
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

    public static void X(String str, Map map, Map map2) {
        List listI = I(str, map);
        if (!listI.contains(map2)) {
            listI.add(map2);
        }
        map.put(str, p5.z0("del", J(str, map), "upd", listI, "add", w1.f0(str, map)));
    }

    public static void Y(Map map, Map map2) {
        List listI = I("SkillPiece", map);
        if (!listI.contains(map2)) {
            listI.add(map2);
        }
        map.put("SkillPiece", p5.z0("del", J("SkillPiece", map), "upd", listI, "add", w1.f0("SkillPiece", map)));
    }

    public static int Z(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            com.sgscq.vpn.h hVar = new com.sgscq.vpn.h(0, context);
            int i2 = 6;
            if (!hVar.d(6)) {
                i2 = 5;
                if (!hVar.d(5)) {
                    i2 = 4;
                    if (!hVar.d(4)) {
                        return 0;
                    }
                }
            }
            return i2;
        } catch (RuntimeException unused) {
            return 0;
        }
    }

    public static Map a(int i2, String str, Map map) {
        List listW = w("SkillPiece", map);
        for (Map map2 : K("SkillPiece", map)) {
            if (c.a.C(map2, "id", "", "skill_id", str)) {
                M(str, map, map2);
                int iU = U(map2);
                int iMax = Math.max(0, iU + i2);
                c.a.t(iMax, map2, "num", iMax, "skill_piece_num");
                if (iMax != iU || i2 == 0) {
                    Y(map, map2);
                }
                return map2;
            }
        }
        LinkedHashMap linkedHashMapT = T(str, Math.max(0, i2));
        listW.add(linkedHashMapT);
        Y(map, linkedHashMapT);
        return linkedHashMapT;
    }

    public static ArrayList a0(List list, int i2, int i3, int i4, boolean z, List list2) {
        double dMax = Math.max(1, i3);
        long jMax = Math.max(1L, Math.round(0.6d * dMax));
        long jMax2 = Math.max(jMax, Math.round(dMax * 1.1d));
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v5 v5Var = (v5) it.next();
            if (v5Var != null && !list2.contains(v5Var) && Math.abs(v5Var.f1461c - i2) <= i4) {
                if (z) {
                    long j2 = v5Var.f1462d;
                    if (j2 < jMax || j2 > jMax2) {
                    }
                }
                arrayList.add(v5Var);
            }
        }
        return arrayList;
    }

    public static void b(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if ((obj2 instanceof Map) && !arrayList.contains(obj2)) {
                    arrayList.add((Map) obj2);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    /* JADX WARN: Code duplicated, block: B:22:0x0069 A[Catch: Exception -> 0x006b, TRY_LEAVE, TryCatch #1 {Exception -> 0x006b, blocks: (B:20:0x0048, B:22:0x0069), top: B:43:0x0048 }] */
    public static int b0(int i2, Context context, String str) {
        String strA;
        List list;
        File fileT;
        List list2;
        double dDoubleValue;
        if (context != null) {
            try {
                strA = com.sgscq.vpn.o0.a(context, "user_levels.json");
            } catch (Exception unused) {
                strA = null;
            }
        } else {
            strA = null;
        }
        if (strA == null || strA.isEmpty()) {
            if (f874d == null) {
                f874d = new ArrayList();
                fileT = t("docs/game_data_json/user_levels.json");
                if (fileT != null && fileT.isFile()) {
                    try {
                        list2 = (List) new a.o().e(new String(O(fileT), StandardCharsets.UTF_8), new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.WarlordHandler$3
                        }.getType());
                        if (list2 != null) {
                            f874d = list2;
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
            list = f874d;
        } else {
            try {
                list = (List) new a.o().e(strA, new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.WarlordHandler$2
                }.getType());
                if (list == null || list.isEmpty()) {
                    if (f874d == null) {
                        f874d = new ArrayList();
                        fileT = t("docs/game_data_json/user_levels.json");
                        if (fileT != null) {
                            list2 = (List) new a.o().e(new String(O(fileT), StandardCharsets.UTF_8), new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.WarlordHandler$3
                            }.getType());
                            if (list2 != null) {
                                f874d = list2;
                            }
                        }
                    }
                    list = f874d;
                }
            } catch (Exception unused3) {
            }
        }
        if (list.isEmpty()) {
            return 0;
        }
        Object obj = ((Map) list.get(Math.max(0, Math.min(Math.max(1, i2) - 1, list.size() - 1)))).get(str);
        if (obj instanceof Number) {
            dDoubleValue = ((Number) obj).doubleValue();
        } else if (obj == null) {
            dDoubleValue = 0.0d;
        } else {
            try {
                dDoubleValue = Double.parseDouble(String.valueOf(obj));
            } catch (Exception unused4) {
                dDoubleValue = 0.0d;
            }
        }
        return Math.max(0, (int) Math.round(dDoubleValue));
    }

    public static void c(ArrayList arrayList, Map map, LinkedHashMap linkedHashMap) {
        if (!Boolean.TRUE.equals(linkedHashMap.get("result")) || arrayList.isEmpty()) {
            return;
        }
        Map linkedHashMap2 = linkedHashMap.get("delta_data") instanceof Map ? (Map) linkedHashMap.get("delta_data") : new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",")) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                linkedHashSet.add(strTrim);
            }
        }
        j jVarC = y0.c(arrayList, map);
        jVarC.a(linkedHashMap2, linkedHashSet);
        jVarC.b(linkedHashMap);
        linkedHashMap.put("delta_data", linkedHashMap2);
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

    public static double c0(int i2, int i3) {
        double dMax = Math.max(1.0d, i3);
        double d2 = i2;
        return Math.max(0.05d, d2 / dMax) / (((Math.abs(d2 - dMax) / dMax) * 0.5d) + 1.0d);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 38231. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public static java.util.LinkedHashMap d(java.util.Map r130, java.util.Map r131, android.content.Context r132, com.sgscq.vpn.p7 r133, java.lang.String r134) {
        /*
            Method dump skipped, instruction units count: 3823
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sgscq.vpn.handler.h1.d(java.util.Map, java.util.Map, android.content.Context, com.sgscq.vpn.p7, java.lang.String):java.util.LinkedHashMap");
    }

    public static ArrayList d0(List list, Map map) {
        ArrayList<Map> arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Map map2 = (Map) it.next();
                if (D(String.valueOf(map2.getOrDefault("skill_id", map2.getOrDefault("id", "")))) && U(map2) > 0) {
                    arrayList.add(map2);
                }
            }
        }
        int iMax = Math.max(1, A(A(1, "level", map), "user_level", map));
        String str = iMax <= 20 ? "363001" : iMax > 40 ? "361001" : "362001";
        ArrayList arrayList2 = new ArrayList();
        Map mapT = null;
        for (Map map3 : arrayList) {
            if (!str.equals(L(String.valueOf(map3.getOrDefault("skill_id", map3.getOrDefault("id", "")))))) {
                arrayList2.add(map3);
            } else if (mapT == null) {
                mapT = map3;
            }
        }
        if (mapT == null) {
            mapT = T(str, 0);
        }
        arrayList2.add(0, mapT);
        return arrayList2;
    }

    public static LinkedHashMap e(ArrayList arrayList, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("add_list", arrayList);
        linkedHashMap.put("piece_info", k(d0(w1.f0("SkillPiece", map), map)));
        linkedHashMap.put("success", Boolean.TRUE);
        return linkedHashMap;
    }

    public static int e0(String str, int i2) {
        return (str == null || str.isEmpty()) ? Math.min(3, Math.max(1, i2 + 1)) : Math.floorMod(str.hashCode(), 3) + 1;
    }

    public static LinkedHashMap f(String str, Map map) {
        ArrayList<Map> arrayListK = k(d0(w1.f0("SkillPiece", map), map));
        Map mapZ0 = p5.z0("pk_id", L(str), "id", L(str), "skill_id", L(str), "num", 0, "skill_piece_num", 0);
        for (Map map2 : arrayListK) {
            if (c.a.A(map2, "skill_id", L(str))) {
                mapZ0 = map2;
                break;
            }
        }
        return p5.z0("piece_info", arrayListK, "current_piece_info", mapZ0, "skill_piece_info", mapZ0);
    }

    public static Map f0() {
        w1 w1VarA1 = w1.a1(null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : w1VarA1.k0()) {
            Map mapK1 = w1VarA1.k1(str);
            if (mapK1 != null) {
                linkedHashMap.put(str, mapK1);
            }
        }
        if (!linkedHashMap.isEmpty()) {
            return linkedHashMap;
        }
        if (f873c == null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            File fileT = t("docs/game_data_json/skills.json");
            if (fileT != null && fileT.isFile()) {
                try {
                    List<Map> list = (List) new a.o().e(new String(O(fileT), StandardCharsets.UTF_8), new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.WarlordHandler$6
                    }.getType());
                    if (list != null) {
                        for (Map map : list) {
                            String strValueOf = String.valueOf(map.getOrDefault("id", ""));
                            if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
                                linkedHashMap2.put(strValueOf, map);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
            f873c = linkedHashMap2;
        }
        return f873c;
    }

    public static ArrayList g(int i2, int i3, String str) {
        int iMax = Math.max(1, w1.a1(null).h1(i2));
        int i4 = (i3 * 1400) + (i2 * 180) + 5000;
        int iAbs = (i3 * 17) + Math.abs(L(str).hashCode());
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < iMax; i5++) {
            int iMax2 = i4 / Math.max(1, iMax);
            String strI1 = p5.i1((i2 * 7) + iAbs + i5);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("slot", Integer.valueOf(i5));
            linkedHashMap.put("general_id", strI1);
            if (i5 < (i2 >= 20 ? 2 : i2 >= 10 ? 1 : 0)) {
                String strI2 = p5.i1((i5 * 2) + (i2 * 11) + iAbs + 1);
                linkedHashMap.put("deputy_general_id", strI2);
                String strT0 = w1.a1(null).T0(strI2);
                if (strT0 != null && !strT0.isEmpty() && !"0".equals(strT0)) {
                    linkedHashMap.put("lieutenant_skill_id", strT0);
                }
            }
            linkedHashMap.put("level", Integer.valueOf(i2));
            linkedHashMap.put("fighting", Integer.valueOf(iMax2));
            linkedHashMap.put("hp", Integer.valueOf(Math.max(700, (i5 * 80) + (i2 * 8) + (iMax2 / 8))));
            linkedHashMap.put("atk", Integer.valueOf(Math.max(90, (i5 * 8) + (i2 * 2) + (iMax2 / 45))));
            int i6 = (i5 * 4) + (iMax2 / 90) + i2;
            linkedHashMap.put("def", Integer.valueOf(Math.max(55, i6)));
            linkedHashMap.put("wis", Integer.valueOf(Math.max(55, i6)));
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    public static int g0(Context context, Map map) {
        if (Z(context) < 4) {
            return 0;
        }
        return Math.min(Math.max(0, com.sgscq.vpn.cloud.m0.i2(com.sgscq.vpn.cloud.m0.n2(map), context, "600029") - com.sgscq.vpn.cloud.m0.b0("600029", map)), A(0, "user_gold", map) / 50);
    }

    public static void h(Map map) {
        if (map.get("SkillPiece") instanceof Map) {
            List listF0 = w1.f0("SkillPiece", map);
            for (Map map2 : K("SkillPiece", map)) {
                if (map2 != null) {
                    String strK = c.a.k(map2, "id", "", "skill_id", "pk_id");
                    int i2 = 0;
                    while (true) {
                        if (i2 >= listF0.size()) {
                            listF0.add(map2);
                            break;
                        } else {
                            if (strK.equals(c.a.k((Map) listF0.get(i2), "id", "", "skill_id", "pk_id"))) {
                                listF0.set(i2, map2);
                                break;
                            }
                            i2++;
                        }
                    }
                }
            }
            map.put("SkillPiece", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
        }
    }

    public static void i(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            map.put(str, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", ((Map) obj).getOrDefault("add", new ArrayList())));
        }
    }

    public static int j(String str) {
        int iA;
        Map map = (Map) f0().get(L(str));
        if (map == null || (iA = A(0, "compose_need_piece_num", map)) <= 0) {
            return 10;
        }
        return iA;
    }

    public static ArrayList k(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            String strJ = c.a.j(map, "id", "400101", "skill_id");
            int iU = U(map);
            if (!B(strJ)) {
                iU = Math.min(iU, j(strJ));
            }
            arrayList2.add(p5.z0("pk_id", strJ, "id", strJ, "skill_id", strJ, "num", Integer.valueOf(iU), "skill_piece_num", Integer.valueOf(iU)));
        }
        return arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004a  */
    public static int l(ArrayList arrayList) {
        boolean z;
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String strJ = c.a.j((Map) it.next(), "id", "", "skill_id");
            if (strJ.isEmpty()) {
                z = false;
            } else {
                z = true;
                if (!"361001".equals(L(strJ))) {
                    if (A(0, "grade", (Map) ((LinkedHashMap) f0()).get(L(strJ))) != 1) {
                        z = false;
                    }
                }
            }
            if (z) {
                i2++;
            }
        }
        return i2;
    }

    public static Number m(long j2) {
        return j2 <= 2147483647L ? Integer.valueOf((int) Math.max(0L, j2)) : Long.valueOf(j2);
    }

    public static String n(Map map) {
        for (Map map2 : K("SkillPiece", map)) {
            String strL = L(String.valueOf(map2.getOrDefault("skill_id", map2.getOrDefault("id", "311004"))));
            if (D(strL)) {
                return strL;
            }
        }
        return "311004";
    }

    public static LinkedHashMap o(String str, Map map) {
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            return p5.z0(str, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
        }
        Map map2 = (Map) obj;
        return p5.z0(str, p5.z0("del", map2.get("del") instanceof List ? new ArrayList((List) map2.get("del")) : new ArrayList(), "upd", map2.get("upd") instanceof List ? new ArrayList((List) map2.get("upd")) : new ArrayList(), "add", c.a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0(str, map)}, map, str)), new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public static String p(Map map) {
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
        Collections.sort(arrayList, new c.n(11));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map mapS = s(String.valueOf(((Map) it.next()).getOrDefault("general_pk_id", "")), map);
            if (mapS != null) {
                return c.a.j(mapS, "id", "112001", "general_id");
            }
        }
        Object obj2 = map.get("first_choose_general");
        return (obj2 == null || String.valueOf(obj2).isEmpty() || "0".equals(String.valueOf(obj2))) ? "112001" : String.valueOf(obj2);
    }

    public static LinkedHashMap q(String str, Map map) {
        Map mapU = u(str, map);
        if (mapU == null) {
            mapU = a(0, str, map);
        }
        Map map2 = mapU;
        int iMax = Math.max(0, U(map2) - j(str));
        map2.put("num", Integer.valueOf(iMax));
        map2.put("skill_piece_num", Integer.valueOf(iMax));
        LinkedHashMap linkedHashMapZ0 = p5.z0("pk_id", String.valueOf(w1.e2("Skill", map)), "id", str, "skill_id", str, "skill_code", str, "level", "1", "skill_level", "1", "card_type", "4", "general_pk_id", 0, "pos", "0", "position", "0", "skill_position", "0", "is_natural", Boolean.FALSE, "exp", "0", "extra_level", "0", "advanced_level", "0", "get_time", String.valueOf(c7.g()));
        try {
            w1.a1(null).S(str, linkedHashMapZ0);
        } catch (Exception unused) {
        }
        w("Skill", map).add(linkedHashMapZ0);
        if (iMax <= 0) {
            String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
            if (!strValueOf.isEmpty()) {
                P("SkillPiece", map, map2);
                List listJ = J("SkillPiece", map);
                if (!listJ.contains(strValueOf)) {
                    listJ.add(strValueOf);
                }
                map.put("SkillPiece", p5.z0("del", listJ, "upd", I("SkillPiece", map), "add", w1.f0("SkillPiece", map)));
            }
        } else {
            Y(map, map2);
        }
        List listI = I("Skill", map);
        if (!listI.contains(linkedHashMapZ0)) {
            listI.add(linkedHashMapZ0);
        }
        map.put("Skill", p5.z0("del", J("Skill", map), "upd", listI, "add", w1.f0("Skill", map)));
        return linkedHashMapZ0;
    }

    public static LinkedHashMap r(String str) {
        return p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str, "error_code", -1);
    }

    public static Map s(String str, Map map) {
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

    public static File t(String str) {
        int i2 = 0;
        for (File absoluteFile = new File(System.getProperty("user.dir", ".")).getAbsoluteFile(); absoluteFile != null && i2 < 6; absoluteFile = absoluteFile.getParentFile()) {
            File file = new File(absoluteFile, str);
            if (file.isFile()) {
                return file;
            }
            i2++;
        }
        return null;
    }

    public static Map u(String str, Map map) {
        for (Map map2 : K("SkillPiece", map)) {
            if (c.a.C(map2, "id", "", "skill_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static String v(String str, List list) {
        Object obj;
        return (list == null || list.isEmpty() || (obj = ((Map) list.get(0)).get("general_id")) == null || String.valueOf(obj).isEmpty()) ? str : String.valueOf(obj);
    }

    public static List w(String str, Map map) {
        Object obj = map.get(str);
        if (obj instanceof Map) {
            Object obj2 = ((Map) obj).get("add");
            if (obj2 instanceof List) {
                return (List) obj2;
            }
        }
        ArrayList arrayList = new ArrayList();
        map.put(str, p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", arrayList));
        return arrayList;
    }

    public static boolean y(String str, Map map) {
        Object obj = map == null ? null : map.get("surrender_tasks");
        if (!(obj instanceof List)) {
            return false;
        }
        for (Object obj2 : (List) obj) {
            if ((obj2 instanceof Map) && c.a.C((Map) obj2, "type", "", "surrender_type", str)) {
                return true;
            }
        }
        return false;
    }

    public static void z(int i2, String str, Map map) {
        if (str.isEmpty() || i2 <= 0) {
            return;
        }
        long jA = ((long) A(0, str, map)) + ((long) i2);
        map.put(str, Integer.valueOf(jA > 2147483647L ? Integer.MAX_VALUE : (int) jA));
    }

    /* JADX WARN: Code duplicated, block: B:182:0x0745  */
    /* JADX WARN: Code duplicated, block: B:196:0x07c6  */
    /* JADX WARN: Code duplicated, block: B:197:0x07d7  */
    /* JADX WARN: Code duplicated, block: B:200:0x0840  */
    /* JADX WARN: Code duplicated, block: B:269:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x011d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:44:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:51:0x011f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0131  */
    /* JADX WARN: Code duplicated, block: B:55:0x0154  */
    public final byte[] x(String str, Map map) {
        String str2;
        h5 h5Var;
        String str3;
        h5 h5Var2;
        String str4;
        String str5;
        LinkedHashMap linkedHashMapV;
        String strTrim;
        h5 h5Var3;
        boolean z;
        String str6;
        String str7;
        int iL;
        String str8;
        String strValueOf;
        p7 p7Var;
        List listQ;
        ArrayList arrayList;
        Object obj;
        h5 h5Var4;
        String str9;
        String str10;
        String str11;
        boolean z2;
        boolean z3;
        String str12;
        boolean z4;
        String str13;
        String str14;
        String str15;
        Map mapZ0;
        String strValueOf2;
        int iMax;
        String strValueOf3;
        List listJ;
        Iterator it;
        Object next;
        Iterator it2;
        Map map2;
        p7 p7VarH = null;
        if (!(str != null && str.startsWith("warlord."))) {
            return null;
        }
        k0 k0Var = this.f875a;
        String strE = k0Var.e(map);
        h5 h5Var5 = k0Var.f904d;
        Map mapW0 = h5Var5.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map3 = mapW0;
        Context context = k0Var.f901a;
        if (context != null) {
            p7VarH = p7.h(context);
            p7VarH.i();
        }
        String str16 = "SkillPiece";
        String str17 = "cmn_modules";
        String str18 = "delta_data";
        p7 p7Var2 = p7VarH;
        String str19 = "return_info";
        String str20 = "skill_id";
        if ("warlord.warlordPieceInfo".equals(str)) {
            h(map3);
            String str21 = "Item";
            Iterator it3 = new ArrayList(K("Item", map3)).iterator();
            boolean z5 = false;
            while (true) {
                h5Var4 = h5Var5;
                str9 = str17;
                str10 = str18;
                if (!it3.hasNext()) {
                    break;
                }
                it3 = it3;
                Map map4 = (Map) it3.next();
                boolean z6 = z5;
                String strJ = c.a.j(map4, "id", "", "item_id");
                String str22 = str19;
                Map mapC1 = w1.a1(null).c1(strJ);
                String str23 = str20;
                if (mapC1 != null) {
                    str15 = str16;
                    if (A(0, "item_type", mapC1) == 21) {
                        Object obj2 = mapC1.get("effect_value");
                        if (obj2 instanceof Map) {
                            Object obj3 = ((Map) obj2).get("add_list");
                            if (obj3 instanceof Map) {
                                map2 = (Map) obj3;
                                if (A(0, "type", map2) != 7) {
                                    if (obj3 instanceof List) {
                                        it = ((List) obj3).iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                next = it.next();
                                                if (next instanceof Map) {
                                                    mapZ0 = (Map) next;
                                                    it2 = it;
                                                    if (A(0, "type", mapZ0) == 7) {
                                                        it = it2;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (obj3 instanceof List) {
                                it = ((List) obj3).iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        next = it.next();
                                        if (next instanceof Map) {
                                            mapZ0 = (Map) next;
                                            it2 = it;
                                            if (A(0, "type", mapZ0) == 7) {
                                                it = it2;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (mapZ0 == null) {
                        mapZ0 = map2;
                        z5 = z6;
                    } else {
                        strValueOf2 = String.valueOf(mapZ0.get("id"));
                        iMax = Math.max(1, A(1, "num", mapZ0)) * Math.max(0, A(A(0, "item_num", map4), "num", map4));
                        if (iMax > 0) {
                            mapZ0 = map2;
                            a(iMax, strValueOf2, map3);
                        }
                        mapZ0 = map2;
                        strValueOf3 = String.valueOf(map4.getOrDefault("pk_id", ""));
                        P("Item", map3, map4);
                        listJ = J("Item", map3);
                        if (!strValueOf3.isEmpty() && !listJ.contains(strValueOf3)) {
                            listJ.add(strValueOf3);
                        }
                        map3.put("Item", p5.z0("del", listJ, "upd", I("Item", map3), "add", w1.f0("Item", map3)));
                        z5 = true;
                    }
                    h5Var5 = h5Var4;
                    str17 = str9;
                    str18 = str10;
                    str19 = str22;
                    str20 = str23;
                    str16 = str15;
                } else {
                    str15 = str16;
                }
                String str24 = (String) j0.f886b.get(strJ);
                mapZ0 = str24 == null ? null : p5.z0("type", 7, "id", str24, "num", 1);
                if (mapZ0 == null) {
                    mapZ0 = map2;
                    z5 = z6;
                } else {
                    strValueOf2 = String.valueOf(mapZ0.get("id"));
                    iMax = Math.max(1, A(1, "num", mapZ0)) * Math.max(0, A(A(0, "item_num", map4), "num", map4));
                    if (iMax > 0) {
                        mapZ0 = map2;
                        a(iMax, strValueOf2, map3);
                    }
                    mapZ0 = map2;
                    strValueOf3 = String.valueOf(map4.getOrDefault("pk_id", ""));
                    P("Item", map3, map4);
                    listJ = J("Item", map3);
                    if (!strValueOf3.isEmpty()) {
                        listJ.add(strValueOf3);
                    }
                    map3.put("Item", p5.z0("del", listJ, "upd", I("Item", map3), "add", w1.f0("Item", map3)));
                    z5 = true;
                }
                h5Var5 = h5Var4;
                str17 = str9;
                str18 = str10;
                str19 = str22;
                str20 = str23;
                str16 = str15;
            }
            String str25 = str20;
            String str26 = str19;
            String str27 = str16;
            boolean z7 = z5;
            ArrayList<Map> arrayListK = K(str27, map3);
            if (arrayListK.isEmpty()) {
                z2 = false;
                str11 = str25;
            } else {
                boolean z8 = false;
                for (Map map5 : arrayListK) {
                    String str28 = str25;
                    String strJ2 = c.a.j(map5, "id", "", str28);
                    if (D(strJ2) && M(strJ2, map3, map5)) {
                        Y(map3, map5);
                        z8 = true;
                    }
                    str25 = str28;
                }
                str11 = str25;
                z2 = z8;
            }
            if (arrayListK.isEmpty()) {
                z4 = false;
                z3 = z2;
                str12 = "Item";
            } else {
                List listJ2 = J(str27, map3);
                ArrayList arrayList2 = new ArrayList();
                int size = arrayListK.size() - 1;
                boolean z9 = false;
                while (size >= 0) {
                    String str29 = str21;
                    Map map6 = (Map) arrayListK.get(size);
                    boolean z10 = z2;
                    if (!D(String.valueOf(map6.getOrDefault(str11, map6.getOrDefault("id", ""))))) {
                        String strValueOf4 = String.valueOf(map6.getOrDefault("pk_id", ""));
                        if (!strValueOf4.isEmpty()) {
                            arrayList2.add(strValueOf4);
                            if (!listJ2.contains(strValueOf4)) {
                                listJ2.add(strValueOf4);
                            }
                        }
                        arrayListK.remove(size);
                        z9 = true;
                    }
                    size--;
                    str21 = str29;
                    z2 = z10;
                }
                z3 = z2;
                str12 = str21;
                if (z9) {
                    List listI = I(str27, map3);
                    for (int size2 = listI.size() - 1; size2 >= 0; size2--) {
                        if (arrayList2.contains(String.valueOf(((Map) listI.get(size2)).getOrDefault("pk_id", "")))) {
                            listI.remove(size2);
                        }
                    }
                    map3.put(str27, p5.z0("del", listJ2, "upd", listI, "add", arrayListK));
                }
                z4 = z9;
            }
            ArrayList arrayListD0 = d0(arrayListK, map3);
            linkedHashMapV = V();
            linkedHashMapV.put(str26, p5.z0("piece_info", k(arrayListD0), new Object[0]));
            if (z7 || z3 || z4) {
                LinkedHashMap linkedHashMapO = o(str27, map3);
                if (z7) {
                    linkedHashMapO = H(linkedHashMapO, o(str12, map3));
                    str13 = "SkillPiece,Item";
                } else {
                    str13 = str27;
                }
                str14 = str10;
                linkedHashMapV.put(str14, linkedHashMapO);
                str5 = str9;
                linkedHashMapV.put(str5, str13);
                linkedHashMapV.put("_save_player", Boolean.TRUE);
            } else {
                str5 = str9;
                str14 = str10;
            }
            if (Boolean.TRUE.equals(linkedHashMapV.remove("_save_player"))) {
                h5Var4.S0(strE, map3);
            }
            str2 = "";
            str4 = str14;
            str3 = strE;
            h5Var2 = h5Var4;
        } else {
            String str30 = "skill_id";
            if ("warlord.warlordInfo".equals(str)) {
                String str31 = (String) map.getOrDefault(str30, n(map3));
                LinkedHashMap linkedHashMapV2 = V();
                String str32 = "prob_type";
                String str33 = "deputy_count";
                String str34 = "rank_name";
                str2 = "";
                if (p7Var2 == null) {
                    arrayList = new ArrayList();
                    int i2 = 0;
                    while (i2 < 4) {
                        String str35 = strE;
                        StringBuilder sb = new StringBuilder("乱武对手");
                        Map map7 = map3;
                        sb.append(Math.max(0, Math.min(3, i2)) + 1);
                        String string = sb.toString();
                        int iMax2 = (Math.max(0, Math.min(3, i2)) * 15) + 20;
                        ArrayList arrayList3 = arrayList;
                        int i3 = (i2 * 1400) + (iMax2 * 180) + 5000;
                        ArrayList arrayListG = g(iMax2, i2, str31);
                        String str36 = str31;
                        String str37 = str30;
                        String str38 = str32;
                        String strValueOf5 = String.valueOf(((Map) arrayListG.get(0)).getOrDefault("general_id", "112001"));
                        int size3 = arrayListG.size();
                        int i4 = iMax2 >= 20 ? 2 : iMax2 >= 10 ? 1 : 0;
                        String str39 = str33;
                        StringBuilder sb2 = new StringBuilder("chaos_npc_");
                        int i5 = i2 + 1;
                        sb2.append(i5);
                        String string2 = sb2.toString();
                        Object[] objArr = new Object[60];
                        objArr[0] = "player_type";
                        objArr[1] = Integer.valueOf(i2 == 0 ? 1 : 0);
                        objArr[2] = "player_level";
                        objArr[3] = Integer.valueOf(iMax2);
                        objArr[4] = "level";
                        objArr[5] = Integer.valueOf(iMax2);
                        objArr[6] = "nickname";
                        objArr[7] = string;
                        objArr[8] = "user_name";
                        objArr[9] = string;
                        objArr[10] = "user_nick";
                        objArr[11] = string;
                        objArr[12] = "userName";
                        objArr[13] = string;
                        objArr[14] = "roleName";
                        objArr[15] = string;
                        objArr[16] = "user_vip_level";
                        objArr[17] = Integer.valueOf(i2);
                        objArr[18] = "rank_name";
                        objArr[19] = "乱武";
                        objArr[20] = "to_attack";
                        objArr[21] = 1;
                        objArr[22] = "is_enemy";
                        objArr[23] = 1;
                        objArr[24] = "general_id";
                        objArr[25] = strValueOf5;
                        objArr[26] = "general_skin";
                        objArr[27] = strValueOf5;
                        objArr[28] = "teamLeader";
                        objArr[29] = strValueOf5;
                        objArr[30] = "head";
                        objArr[31] = strValueOf5;
                        objArr[32] = "avatar";
                        objArr[33] = strValueOf5;
                        objArr[34] = "fight_salary";
                        objArr[35] = 0;
                        objArr[36] = "fighting";
                        objArr[37] = Integer.valueOf(i3);
                        objArr[38] = "fight_point";
                        objArr[39] = Integer.valueOf(i3);
                        objArr[40] = "fightPoint";
                        objArr[41] = Integer.valueOf(i3);
                        objArr[42] = "user_ability";
                        objArr[43] = Integer.valueOf(size3);
                        objArr[44] = "leadership_num";
                        objArr[45] = Integer.valueOf(size3);
                        objArr[46] = "leadershipNum";
                        objArr[47] = Integer.valueOf(size3);
                        objArr[48] = "user_leadership_num";
                        objArr[49] = Integer.valueOf(size3);
                        objArr[50] = "team_size";
                        objArr[51] = Integer.valueOf(size3);
                        objArr[52] = str39;
                        objArr[53] = Integer.valueOf(i4);
                        objArr[54] = "deputy_general_id";
                        objArr[55] = ((Map) arrayListG.get(0)).get("deputy_general_id");
                        objArr[56] = str38;
                        objArr[57] = Integer.valueOf(Math.min(3, i5));
                        objArr[58] = str37;
                        objArr[59] = L(str36);
                        arrayList3.add(p5.z0("player_id", string2, objArr));
                        arrayList = arrayList3;
                        i2 = i5;
                        str31 = str36;
                        strE = str35;
                        map3 = map7;
                        str30 = str37;
                        str32 = str38;
                        str33 = str39;
                    }
                } else {
                    int iN = N(map3);
                    int iMax3 = Math.max(1, A(A(1, "level", map3), "user_level", map3));
                    long jIncrementAndGet = (f872b.incrementAndGet() * (-7046029254386353131L)) ^ (((long) L(str31).hashCode()) ^ c7.f());
                    if (iN <= 0) {
                        p7Var = p7Var2;
                        strE = strE;
                        listQ = p7Var.o(iMax3, jIncrementAndGet, strE);
                    } else {
                        p7Var = p7Var2;
                        strE = strE;
                        listQ = Q(p7Var.m(iN, jIncrementAndGet, strE), iMax3, iN, jIncrementAndGet);
                    }
                    arrayList = new ArrayList();
                    int i6 = 0;
                    while (i6 < listQ.size()) {
                        v5 v5Var = (v5) listQ.get(i6);
                        LinkedHashMap linkedHashMapM = v5Var.m(p7Var.v(v5Var.f1459a));
                        linkedHashMapM.put("player_type", 1);
                        linkedHashMapM.put(str34, "乱武");
                        linkedHashMapM.put("fight_salary", 0);
                        linkedHashMapM.put("prob_type", Integer.valueOf(e0(v5Var.f1459a, i6)));
                        linkedHashMapM.put(str30, L(str31));
                        linkedHashMapM.put("deputy_count", Integer.valueOf(v5Var.u));
                        arrayList.add(linkedHashMapM);
                        i6++;
                        str34 = str34;
                    }
                }
                linkedHashMapV2.put("return_info", p5.z0("warlord_info", arrayList, new Object[0]));
                linkedHashMapV = linkedHashMapV2;
                str3 = strE;
                str5 = "cmn_modules";
                str4 = "delta_data";
                h5Var2 = h5Var5;
            } else {
                str2 = "";
                if ("warlord.warlord".equals(str)) {
                    LinkedHashMap linkedHashMapD = d(map3, map, context, p7Var2, strE);
                    h5Var = h5Var5;
                    h5Var.S0(strE, map3);
                    linkedHashMapV = linkedHashMapD;
                    str8 = str2;
                } else if ("warlord.warlordSkillList".equals(str)) {
                    LinkedHashMap linkedHashMapV3 = V();
                    ArrayList arrayList4 = new ArrayList();
                    List<Map> listEmptyList = Collections.emptyList();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    if (listEmptyList != null) {
                        h5Var = h5Var5;
                        for (Map map8 : listEmptyList) {
                            String str40 = str2;
                            String strL = L(String.valueOf(map8.getOrDefault(str30, map8.getOrDefault("id", str40))));
                            if (D(strL)) {
                                linkedHashMap.put(strL, Integer.valueOf(A(A(0, "skill_piece_num", map8), "num", map8)));
                            }
                            str2 = str40;
                        }
                    }
                    h5Var = h5Var5;
                    str8 = str2;
                    ArrayList<String> arrayList5 = new ArrayList();
                    for (String str41 : ((LinkedHashMap) f0()).keySet()) {
                        if (D(str41)) {
                            arrayList5.add(str41);
                        }
                    }
                    Collections.sort(arrayList5);
                    ArrayList arrayList6 = new ArrayList();
                    for (String str42 : arrayList5) {
                        arrayList6.add(T(str42, ((Integer) linkedHashMap.getOrDefault(str42, 0)).intValue()));
                    }
                    Iterator it4 = arrayList6.iterator();
                    while (it4.hasNext()) {
                        String strValueOf6 = String.valueOf(((Map) it4.next()).get(str30));
                        Object[] objArr2 = new Object[8];
                        objArr2[0] = "id";
                        objArr2[1] = strValueOf6;
                        objArr2[2] = "need_num";
                        objArr2[3] = Integer.valueOf(j(strValueOf6));
                        objArr2[4] = "num";
                        objArr2[5] = Integer.valueOf(j(strValueOf6));
                        objArr2[6] = "warlord_general_id";
                        Map map9 = (Map) ((LinkedHashMap) f0()).get(L(strValueOf6));
                        if (map9 != null) {
                            strValueOf = String.valueOf(map9.getOrDefault("warlord_general_id", str8)).trim();
                            if (strValueOf.isEmpty() || "0".equals(strValueOf) || "null".equalsIgnoreCase(strValueOf)) {
                                strValueOf = String.valueOf((Math.abs(L(strValueOf6).hashCode()) % 4) + 112001);
                            }
                        } else {
                            strValueOf = String.valueOf((Math.abs(L(strValueOf6).hashCode()) % 4) + 112001);
                        }
                        objArr2[7] = strValueOf;
                        arrayList4.add(p5.z0(str30, strValueOf6, objArr2));
                    }
                    linkedHashMapV3.put("return_info", p5.z0("skill_list", arrayList4, new Object[0]));
                    linkedHashMapV = linkedHashMapV3;
                } else {
                    str3 = strE;
                    if ("warlord.warlordExchangeSkill".equals(str)) {
                        String str43 = (String) map.getOrDefault(str30, n(map3));
                        ArrayList arrayListE = E(context);
                        i("Skill", map3);
                        h(map3);
                        String strL2 = L(str43);
                        Map mapU = u(strL2, map3);
                        if (mapU == null) {
                            h5Var = h5Var5;
                            h5Var3 = h5Var;
                        } else {
                            h5Var3 = h5Var;
                            z = U(mapU) >= j(strL2);
                            if (z) {
                                h5Var = h5Var5;
                                LinkedHashMap linkedHashMapQ = q(strL2, map3);
                                LinkedHashMap linkedHashMapV4 = V();
                                ArrayList arrayListV0 = p5.v0(p5.z0("type", 4, "id", linkedHashMapQ.get(str30), "skill_id", linkedHashMapQ.get(str30), "pk_id", linkedHashMapQ.get("pk_id"), "num", 1));
                                linkedHashMapV4.put("add_list", arrayListV0);
                                linkedHashMapV4.put("return_info", e(arrayListV0, map3));
                                str6 = "delta_data";
                                linkedHashMapV4.put(str6, H(o("Skill", map3), o("SkillPiece", map3)));
                                str7 = "cmn_modules";
                                linkedHashMapV4.put(str7, "Skill,SkillPiece");
                                iL = l(arrayListV0);
                                y0.d(map3, arrayListE, "30", iL, Collections.emptySet());
                                if (iL > 0) {
                                    z(iL, "surrender_total_god_skill_book_compose_times", map3);
                                    z(iL, "god_skill_book_compose_times", map3);
                                    z(iL, "skill_book_compose_times", map3);
                                }
                                c(arrayListE, map3, linkedHashMapV4);
                                linkedHashMapV = linkedHashMapV4;
                            } else {
                                h5Var = h5Var5;
                                linkedHashMapV = r("技能碎片不足");
                                str7 = "cmn_modules";
                                str6 = "delta_data";
                            }
                            h5Var3.S0(str3, map3);
                            h5Var2 = h5Var3;
                            str3 = str3;
                            str4 = str6;
                            str5 = str7;
                        }
                        h5Var = h5Var5;
                        if (z) {
                            h5Var = h5Var5;
                            linkedHashMapV = r("技能碎片不足");
                            str7 = "cmn_modules";
                            str6 = "delta_data";
                        } else {
                            h5Var = h5Var5;
                            LinkedHashMap linkedHashMapQ2 = q(strL2, map3);
                            LinkedHashMap linkedHashMapV5 = V();
                            ArrayList arrayListV1 = p5.v0(p5.z0("type", 4, "id", linkedHashMapQ2.get(str30), "skill_id", linkedHashMapQ2.get(str30), "pk_id", linkedHashMapQ2.get("pk_id"), "num", 1));
                            linkedHashMapV5.put("add_list", arrayListV1);
                            linkedHashMapV5.put("return_info", e(arrayListV1, map3));
                            str6 = "delta_data";
                            linkedHashMapV5.put(str6, H(o("Skill", map3), o("SkillPiece", map3)));
                            str7 = "cmn_modules";
                            linkedHashMapV5.put(str7, "Skill,SkillPiece");
                            iL = l(arrayListV1);
                            y0.d(map3, arrayListE, "30", iL, Collections.emptySet());
                            if (iL > 0) {
                                z(iL, "surrender_total_god_skill_book_compose_times", map3);
                                z(iL, "god_skill_book_compose_times", map3);
                                z(iL, "skill_book_compose_times", map3);
                            }
                            c(arrayListE, map3, linkedHashMapV5);
                            linkedHashMapV = linkedHashMapV5;
                        }
                        h5Var3.S0(str3, map3);
                        h5Var2 = h5Var3;
                        str3 = str3;
                        str4 = str6;
                        str5 = str7;
                    } else {
                        h5Var2 = h5Var;
                        if ("warlord.warlordBatchExchangeSkill".equals(str)) {
                            String str44 = str2;
                            String str45 = (String) map.getOrDefault("skill_ids", str44);
                            ArrayList arrayListE2 = E(context);
                            i("Skill", map3);
                            h(map3);
                            ArrayList arrayList7 = new ArrayList();
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                            ArrayList arrayList8 = new ArrayList();
                            if (str45 == null) {
                                h5Var = h5Var5;
                                strTrim = str44;
                            } else {
                                h5Var = h5Var5;
                                strTrim = str45.trim();
                            }
                            if (strTrim.startsWith("[") && strTrim.endsWith("]")) {
                                strTrim = strTrim.substring(1, strTrim.length() - 1);
                            }
                            String[] strArrSplit = strTrim.split(",");
                            int length = strArrSplit.length;
                            int i7 = 0;
                            while (i7 < length) {
                                int i8 = length;
                                String[] strArr = strArrSplit;
                                String strTrim2 = strArrSplit[i7].replace("\"", str44).replace("'", str44).trim();
                                if (!strTrim2.isEmpty()) {
                                    arrayList8.add(strTrim2);
                                }
                                i7++;
                                strArrSplit = strArr;
                                length = i8;
                            }
                            if (arrayList8.isEmpty()) {
                                arrayList8.add("400101");
                            }
                            Iterator it5 = arrayList8.iterator();
                            while (it5.hasNext()) {
                                String strL3 = L((String) it5.next());
                                linkedHashMap2.put(strL3, Integer.valueOf(((Integer) linkedHashMap2.getOrDefault(strL3, 0)).intValue() + 1));
                            }
                            ArrayList arrayList9 = new ArrayList();
                            Iterator it6 = linkedHashMap2.entrySet().iterator();
                            while (true) {
                                if (!it6.hasNext()) {
                                    str2 = str44;
                                    Iterator it7 = arrayList9.iterator();
                                    while (it7.hasNext()) {
                                        LinkedHashMap linkedHashMapQ3 = q((String) it7.next(), map3);
                                        arrayList7.add(p5.z0("type", 4, "id", linkedHashMapQ3.get(str30), "skill_id", linkedHashMapQ3.get(str30), "pk_id", linkedHashMapQ3.get("pk_id"), "num", 1));
                                    }
                                    int iL2 = l(arrayList7);
                                    y0.d(map3, arrayListE2, "30", iL2, Collections.emptySet());
                                    LinkedHashMap linkedHashMapV6 = V();
                                    linkedHashMapV6.put("add_list", arrayList7);
                                    linkedHashMapV6.put("return_info", e(arrayList7, map3));
                                    str4 = "delta_data";
                                    linkedHashMapV6.put(str4, H(o("Skill", map3), o("SkillPiece", map3)));
                                    str5 = "cmn_modules";
                                    linkedHashMapV6.put(str5, "Skill,SkillPiece");
                                    if (iL2 > 0) {
                                        z(iL2, "surrender_total_god_skill_book_compose_times", map3);
                                        z(iL2, "god_skill_book_compose_times", map3);
                                        z(iL2, "skill_book_compose_times", map3);
                                    }
                                    c(arrayListE2, map3, linkedHashMapV6);
                                    linkedHashMapV = linkedHashMapV6;
                                    break;
                                }
                                Map.Entry entry = (Map.Entry) it6.next();
                                int iJ = j((String) entry.getKey());
                                int iU = U(u((String) entry.getKey(), map3));
                                Iterator it8 = it6;
                                int iIntValue = ((Integer) entry.getValue()).intValue();
                                str2 = str44;
                                int i9 = iU / iJ;
                                if (iU < iJ || iIntValue > i9) {
                                    linkedHashMapV = r("技能碎片不足");
                                    str5 = "cmn_modules";
                                    str4 = "delta_data";
                                    break;
                                }
                                int iMax4 = Math.max(iIntValue, i9);
                                for (int i10 = 0; i10 < iMax4; i10++) {
                                    arrayList9.add((String) entry.getKey());
                                }
                                it6 = it8;
                                str44 = str2;
                            }
                            h5Var2.S0(str3, map3);
                        } else {
                            str4 = "delta_data";
                            str5 = "cmn_modules";
                            str3 = str3;
                            h5Var2 = h5Var2;
                            linkedHashMapV = V();
                            linkedHashMapV.put("return_info", p5.z0("success", Boolean.TRUE, new Object[0]));
                        }
                    }
                }
                str2 = str8;
                str3 = strE;
                h5Var2 = h5Var;
                str5 = "cmn_modules";
                str4 = "delta_data";
            }
        }
        if (linkedHashMapV == null) {
            h5Var = h5Var5;
            obj = null;
        } else {
            h5Var = h5Var5;
            obj = linkedHashMapV.get(str4);
        }
        Map map10 = obj instanceof Map ? (Map) obj : map3;
        String[] strArrSplit2 = String.valueOf(linkedHashMapV.getOrDefault(str5, str2)).split(",");
        ArrayList arrayList10 = new ArrayList();
        for (String str46 : strArrSplit2) {
            String strTrim3 = str46.trim();
            if (!strTrim3.isEmpty()) {
                arrayList10.add(strTrim3);
            }
        }
        com.sgscq.vpn.cloud.m0.v2(p5.u1(h5Var2.j(map10, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map3), k0Var.i(k0Var.b(), "user_energy", map3), k0Var.i(k0Var.d(), "user_power", map3), k0Var.j(k0Var.a(), map3), str3, map3), (String[]) arrayList10.toArray(new String[0]))), linkedHashMapV);
        return k0Var.n(p5.s1(linkedHashMapV));
    }
}
