package com.sgscq.vpn;

import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f1438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile Map f1439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Map f1440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile Map f1441d;

    public static void a(ArrayList arrayList, LinkedHashSet linkedHashSet, Object obj, int i2, int i3) {
        if (obj == null) {
            return;
        }
        String strTrim = String.valueOf(obj).trim();
        if (strTrim.isEmpty() || "0".equals(strTrim) || "null".equalsIgnoreCase(strTrim)) {
            return;
        }
        int iMax = Math.max(0, i2);
        int iMax2 = Math.max(1, i3);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            if (uVar.f1416a.equals(strTrim)) {
                uVar.f1417b = Math.max(uVar.f1417b, iMax);
                uVar.f1418c = Math.max(uVar.f1418c, iMax2);
                return;
            }
        }
        if (linkedHashSet.add(strTrim)) {
            arrayList.add(new u(strTrim, iMax, iMax2));
        }
    }

    public static Map b(int i2, w1 w1Var, String str) {
        Map map;
        Map mapF;
        Map map2 = null;
        if (str.isEmpty() || i2 <= 0) {
            map = null;
        } else {
            try {
                String strA = o0.a(null, "skill_advanced.json");
                if (strA == null || strA.isEmpty()) {
                    strA = i("docs/game_data_json/skill_advanced.json");
                }
                if (!strA.isEmpty()) {
                    Map map3 = (Map) new a.o().e(strA, new TypeToken<Map<String, Map<String, Map<String, Object>>>>() { // from class: com.sgscq.vpn.BattleSkillCatalog$4
                    }.getType());
                    Map map4 = map3 == null ? null : (Map) map3.get(str);
                    if (map4 != null && !map4.isEmpty()) {
                        map = (Map) map4.get(String.valueOf(i2));
                        if (map == null) {
                            Iterator it = map4.keySet().iterator();
                            int i3 = 0;
                            while (it.hasNext()) {
                                int iH = h((String) it.next(), 0);
                                if (iH > i3) {
                                    i3 = iH;
                                }
                            }
                            if (i3 > 0) {
                                map = (Map) map4.get(String.valueOf(i3));
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
            map = null;
        }
        if (map != null) {
            return map;
        }
        Map mapK1 = w1Var == null ? null : w1Var.k1(str);
        if (mapK1 != null) {
            return mapK1;
        }
        if (!str.isEmpty()) {
            Map map5 = f1441d;
            if (map5 == null) {
                synchronized (v.class) {
                    mapF = f1441d;
                    if (mapF == null) {
                        mapF = f();
                        f1441d = mapF;
                    }
                }
                map5 = mapF;
            }
            map2 = (Map) map5.get(str);
        }
        return map2;
    }

    public static void c(ArrayList arrayList, LinkedHashSet linkedHashSet, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    Map map = (Map) obj2;
                    String str = "skill_id";
                    if (!map.containsKey("skill_id")) {
                        str = "id";
                        if (!map.containsKey("id")) {
                            str = "skill_code";
                        }
                    }
                    a(arrayList, linkedHashSet, map.get(str), h(map.get("advanced_level"), 0), Math.max(0, h(map.get("extra_level"), 0)) + h(map.get("skill_level"), h(map.get("level"), 1)));
                } else {
                    a(arrayList, linkedHashSet, obj2, 0, 1);
                }
            }
        }
    }

    public static String d(Object... objArr) {
        for (Object obj : objArr) {
            if (obj != null) {
                String strTrim = String.valueOf(obj).trim();
                if (!strTrim.isEmpty() && !"null".equalsIgnoreCase(strTrim)) {
                    return strTrim;
                }
            }
        }
        return "";
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0088  */
    public static String e(w1 w1Var, Object obj) {
        String str;
        Map mapEmptyMap;
        String strValueOf = obj == null ? "" : String.valueOf(obj);
        String strY0 = w1Var == null ? "" : w1Var.Y0(strValueOf);
        boolean z = strY0.startsWith("\"") != strY0.endsWith("\"");
        if (!strY0.isEmpty() && !strY0.equals(strValueOf) && !z) {
            return strY0;
        }
        if (strValueOf.isEmpty()) {
            str = "";
        } else {
            String strA = o0.a(null, "i18n.json");
            if (strA == null || strA.isEmpty()) {
                str = "";
            } else {
                if (strA != f1438a) {
                    synchronized (v.class) {
                        if (strA != f1438a) {
                            try {
                                f1439b = (Map) new a.o().e(strA, new TypeToken<Map<String, String>>() { // from class: com.sgscq.vpn.BattleSkillCatalog$1
                                }.getType());
                            } catch (Exception unused) {
                                f1439b = Collections.emptyMap();
                            }
                            f1438a = strA;
                        }
                    }
                }
                str = f1439b != null ? (String) f1439b.get(strValueOf) : null;
                if (str == null) {
                    str = "";
                }
            }
        }
        if (!str.isEmpty()) {
            return str;
        }
        if (!strValueOf.isEmpty()) {
            Map map = f1440c;
            if (map == null) {
                synchronized (v.class) {
                    mapEmptyMap = f1440c;
                    if (mapEmptyMap == null) {
                        try {
                            String strI = i("docs/game_data_json/i18n.json");
                            if (!strI.isEmpty()) {
                                Map map2 = (Map) new a.o().e(strI, new TypeToken<Map<String, String>>() { // from class: com.sgscq.vpn.BattleSkillCatalog$2
                                }.getType());
                                if (map2 != null) {
                                    mapEmptyMap = Collections.unmodifiableMap(map2);
                                }
                                f1440c = mapEmptyMap;
                            }
                            mapEmptyMap = Collections.emptyMap();
                        } catch (Exception unused2) {
                            mapEmptyMap = Collections.emptyMap();
                        }
                        f1440c = mapEmptyMap;
                    }
                }
                map = mapEmptyMap;
            }
            String str2 = (String) map.get(strValueOf);
            if (str2 != null) {
                return str2;
            }
        }
        return "";
    }

    public static Map f() {
        try {
            String strI = i("docs/game_data_json/skills.json");
            if (strI.isEmpty()) {
                return Collections.emptyMap();
            }
            List<Map> list = (List) new a.o().e(strI, new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.BattleSkillCatalog$3
            }.getType());
            if (list == null) {
                return Collections.emptyMap();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map map : list) {
                if (map != null) {
                    String strValueOf = String.valueOf(map.get("id"));
                    if (!strValueOf.isEmpty()) {
                        linkedHashMap.put(strValueOf, map);
                    }
                }
            }
            return Collections.unmodifiableMap(linkedHashMap);
        } catch (Exception unused) {
            return Collections.emptyMap();
        }
    }

    public static double[] g(String str) {
        if (str.trim().isEmpty()) {
            return new double[0];
        }
        String[] strArrSplit = str.split(",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty()) {
                try {
                    arrayList.add(Double.valueOf(Double.parseDouble(strTrim)));
                } catch (NumberFormatException unused) {
                }
            }
        }
        double[] dArr = new double[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            dArr[i2] = ((Double) arrayList.get(i2)).doubleValue();
        }
        return dArr;
    }

    public static int h(Object obj, int i2) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj == null) {
            return i2;
        }
        try {
            return (int) Double.parseDouble(obj.toString());
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static String i(String str) {
        try {
            int i2 = 0;
            for (File absoluteFile = new File(System.getProperty("user.dir", ".")).getAbsoluteFile(); absoluteFile != null && i2 < 5; absoluteFile = absoluteFile.getParentFile()) {
                File file = new File(absoluteFile, str);
                if (file.isFile()) {
                    return p5.W0(file);
                }
                i2++;
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }
}
