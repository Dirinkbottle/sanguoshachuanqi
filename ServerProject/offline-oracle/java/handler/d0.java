package com.sgscq.vpn.handler;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.a7;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.y1;
import com.sgscq.vpn.y2;
import com.sgscq.vpn.z2;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Map f799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static w1 f800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Set f801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final char[] f802g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile LinkedHashMap f803h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f804i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.e f806b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("600210", "600207");
        linkedHashMap.put("600211", "600208");
        f798c = Collections.unmodifiableMap(linkedHashMap);
        f801f = Collections.unmodifiableSet(new LinkedHashSet(Collections.singletonList("600206")));
        f802g = new char[]{'A', 'B', 'C', 'D', 'E'};
        f804i = new String[]{"upd", "update_list"};
    }

    public d0(k0 k0Var) {
        m.e eVarE;
        this.f805a = k0Var;
        Context context = k0Var.f901a;
        if (context == null) {
            eVarE = m.e.e();
        } else {
            try {
                InputStream inputStreamOpen = context.getAssets().open("atlas_visibility_config.json");
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, StandardCharsets.UTF_8));
                    try {
                        StringBuilder sb = new StringBuilder();
                        char[] cArr = new char[2048];
                        while (true) {
                            int i2 = bufferedReader.read(cArr);
                            if (i2 < 0) {
                                break;
                            } else {
                                sb.append(cArr, 0, i2);
                            }
                        }
                        String string = sb.toString();
                        if (string == null || string.trim().isEmpty()) {
                            eVarE = m.e.e();
                        } else {
                            a.t tVarF = a.w.r(string).f();
                            eVarE = new m.e(m.e.z(tVarF, "generals"), m.e.z(tVarF, "skills"), m.e.z(tVarF, "equipments"));
                        }
                        bufferedReader.close();
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Exception e2) {
                c.a.u(e2, new StringBuilder("[Atlas] visibility config unavailable: "), "SGSCQ_SRV");
                eVarE = m.e.e();
            }
        }
        this.f806b = eVarE;
    }

    public static int A(Map map) {
        return Math.max(0, m0(map.get("evolution_chest_refresh_times"), 0));
    }

    public static ArrayList B(char c2) {
        LinkedHashMap linkedHashMapW0;
        ArrayList arrayList = new ArrayList();
        if (c2 == 'A') {
            linkedHashMapW0 = w0("600206", 10, 46, 1);
        } else if (c2 == 'B') {
            arrayList.add(w0("600209", 1, 47, 1));
            linkedHashMapW0 = w0("600206", 2, 46, 1);
        } else if (c2 == 'C') {
            arrayList.add(w0("600206", 1, 46, 1));
            arrayList.add(w0("600080", 1, 2, 2));
            arrayList.add(w0("600027", 500, 22, 2));
            linkedHashMapW0 = w0("600012", 200, 8, 2);
        } else {
            if (c2 != 'D') {
                if (c2 == 'E') {
                    arrayList.add(w0("600027", 100, 22, 2));
                    arrayList.add(w0("600012", 50, 8, 2));
                    linkedHashMapW0 = w0("600009", 1, 7, 1);
                }
                return arrayList;
            }
            arrayList.add(w0("600027", 200, 22, 2));
            arrayList.add(w0("600012", 100, 8, 2));
            arrayList.add(w0("600087", 10, 39, 1));
            arrayList.add(w0("600078", 1, 2, 2));
            linkedHashMapW0 = w0("600013", 10, 9, 2);
        }
        arrayList.add(linkedHashMapW0);
        return arrayList;
    }

    public static Map C(w1 w1Var) {
        Map mapC1;
        Map map;
        Map mapUnmodifiableMap = f798c;
        if (w1Var == null) {
            return mapUnmodifiableMap;
        }
        if (w1Var == f800e && (map = f799d) != null) {
            return map;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (w1Var.f1506n == null) {
            w1Var.R1();
        }
        for (String str : w1Var.f1506n) {
            Map mapC2 = w1Var.c1(str);
            if (mapC2 != null && l0(-1, "item_type", mapC2) == 47) {
                String strValueOf = String.valueOf(mapC2.getOrDefault("related_id", "0"));
                if (!strValueOf.isEmpty() && !"0".equals(strValueOf) && (mapC1 = w1Var.c1(strValueOf)) != null && l0(-1, "item_type", mapC1) == 46) {
                    linkedHashMap.putIfAbsent(strValueOf, str);
                }
            }
        }
        if (!linkedHashMap.isEmpty()) {
            mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        }
        f799d = mapUnmodifiableMap;
        f800e = w1Var;
        return mapUnmodifiableMap;
    }

    public static void D(List list, LinkedHashMap linkedHashMap) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (linkedHashMap.size() >= 8) {
                return;
            } else {
                linkedHashMap.putIfAbsent(y(map), map);
            }
        }
    }

    public static ArrayList E(List list, int i2, int i3) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (l0(5, "grant_type", map) == i2 && (i3 < 0 || l0(-1, "item_type", map) == i3)) {
                linkedHashMap.putIfAbsent(y(map), new LinkedHashMap(map));
            }
        }
        return new ArrayList(linkedHashMap.values());
    }

    public static Map F(String str, String str2, String str3, Map map) {
        for (Map map2 : w1.f0(str, map)) {
            if (c.a.B(map2, str2, "", str3)) {
                return map2;
            }
        }
        return null;
    }

    public static int G(LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get("type");
        if (obj == null) {
            return 0;
        }
        if (obj instanceof Number) {
            double dDoubleValue = ((Number) obj).doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                return 0;
            }
            return (int) dDoubleValue;
        }
        try {
            double d2 = Double.parseDouble(obj.toString());
            if (!Double.isNaN(d2) && !Double.isInfinite(d2)) {
                return (int) d2;
            }
        } catch (NumberFormatException unused) {
        }
        return 0;
    }

    public static Map H(Map map, LinkedHashMap linkedHashMap) {
        String strValueOf = String.valueOf(linkedHashMap.getOrDefault("general_id", ""));
        for (Map map2 : w1.f0("General", map)) {
            if (c.a.C(map2, "id", "", "general_id", strValueOf)) {
                return map2;
            }
        }
        return null;
    }

    public static void I(Map map, Map map2, LinkedHashMap linkedHashMap) {
        Map mapF;
        String str;
        String str2;
        String strValueOf = String.valueOf(map2.getOrDefault("item_id", ""));
        int iL0 = l0(1, "item_num", map2);
        int iL1 = l0(5, "grant_type", map2);
        if (iL1 == 6) {
            w1.k(iL0, strValueOf, map);
            str = "GeneralSoul";
            mapF = F("GeneralSoul", "general_id", strValueOf, map);
        } else if (iL1 == 8) {
            String strSubstring = strValueOf.startsWith("9") ? strValueOf.substring(1) : strValueOf;
            String strI = c.a.i("9", strSubstring);
            Map mapF2 = F("EquipmentPiece", "equipment_id", strSubstring, map);
            if (mapF2 == null) {
                LinkedHashMap linkedHashMapZ0 = p5.z0("pk_id", strI, "id", strI, "item_id", strI, "piece_id", strI, "equipment_id", strSubstring, "equip_id", strSubstring, "num", 0, "item_num", 0, "equipment_piece_num", 0, "item_type", 15, "type", 8, "is_new", Boolean.TRUE);
                str2 = "EquipmentPiece";
                w1.f0(str2, map).add(linkedHashMapZ0);
                mapF = linkedHashMapZ0;
            } else {
                str2 = "EquipmentPiece";
                mapF = mapF2;
            }
            int iL2 = w1.l2(String.valueOf(mapF.getOrDefault("num", 0)), 0) + iL0;
            mapF.put("num", Integer.valueOf(iL2));
            mapF.put("item_num", Integer.valueOf(iL2));
            mapF.put("equipment_piece_num", Integer.valueOf(iL2));
            if (!strValueOf.startsWith("9")) {
                strValueOf = "9".concat(strValueOf);
            }
            map2.put("item_id", strValueOf);
            map2.put("id", strValueOf);
            str = str2;
        } else {
            l0(19, "item_type", map2);
            if (p5.h0(strValueOf)) {
                p5.c(iL0, strValueOf, map);
                mapF = null;
            } else {
                List listF0 = w1.f0("Item", map);
                Map mapQ0 = q0(strValueOf, listF0, map);
                if (mapQ0 != null) {
                    int iU = U(mapQ0) + iL0;
                    c.a.t(iU, mapQ0, "item_num", iU, "num");
                    mapF = mapQ0;
                } else {
                    int iE2 = w1.e2("Item", map);
                    HashMap map3 = new HashMap();
                    map3.put("pk_id", String.valueOf(iE2));
                    map3.put("id", strValueOf);
                    map3.put("item_id", strValueOf);
                    map3.put("item_num", Integer.valueOf(iL0));
                    map3.put("num", Integer.valueOf(iL0));
                    map3.put("effect_time", 0);
                    map3.put("is_new", Boolean.TRUE);
                    listF0.add(map3);
                    map.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", listF0));
                    mapF = map3;
                }
            }
            str = "Item";
        }
        if (mapF != null) {
            ((List) linkedHashMap.computeIfAbsent(str, new n.a(21))).add(mapF);
        }
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0428  */
    /* JADX WARN: Code duplicated, block: B:133:0x0497  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.lang.Object, java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r4v33 */
    public static b0 J(Map map, Map map2, List list, List list2) {
        b0 b0Var;
        String str;
        ArrayList arrayList;
        String str2;
        String str3;
        Iterator it;
        String str4;
        StringBuilder sb;
        String str5;
        StringBuilder sb2;
        boolean z;
        String str6;
        ?? P;
        boolean z2;
        String strSubstring;
        String str7;
        String str8;
        Map mapZ0;
        b0 b0Var2 = new b0();
        String str9 = "general_id";
        String str10 = "";
        String strValueOf = String.valueOf(map2.getOrDefault("general_id", ""));
        ArrayList arrayList2 = b0Var2.f770g;
        ArrayList arrayList3 = new ArrayList();
        String str11 = "upd";
        String str12 = "add";
        if (map != null && !strValueOf.isEmpty()) {
            Object obj = map.get("Atlas");
            if (obj instanceof Map) {
                Map map3 = (Map) obj;
                Map mapT0 = t0(map);
                boolean zR = (Q(strValueOf, mapT0) || N(strValueOf, mapT0)) ? R(map, map2) : true;
                W(arrayList3, map3.get("add"), strValueOf, zR);
                W(arrayList3, map3.get("upd"), strValueOf, zR);
            }
        }
        arrayList2.addAll(arrayList3);
        Set set = y0.f1038a;
        Object obj2 = map.get("surrender_progress");
        y0.l(map, list, b0Var2, obj2 instanceof Map ? (Map) obj2 : new LinkedHashMap());
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (next instanceof Map) {
                    Map map4 = (Map) next;
                    String str13 = "id";
                    String strValueOf2 = String.valueOf(map4.getOrDefault("id", str10));
                    int iA0 = (int) a0(map4, "num", 1.0d);
                    if (strValueOf2.isEmpty()) {
                        b0Var = b0Var2;
                        str = str9;
                        arrayList = arrayList2;
                        str2 = str11;
                        str3 = str12;
                        it = it2;
                        str4 = str10;
                    } else if (iA0 > 0) {
                        int iA1 = (int) a0(map4, "type", 5.0d);
                        String str14 = " ";
                        it = it2;
                        String str15 = "SGSCQ_SRV";
                        if (p5.h0(strValueOf2)) {
                            p5.c(iA0, strValueOf2, map);
                            b0Var2.f772i = true;
                            z2.e("SGSCQ_SRV", "[Surrender] currency +" + iA0 + " " + strValueOf2);
                            it2 = it;
                        } else {
                            ArrayList arrayList4 = b0Var2.f767d;
                            ArrayList arrayList5 = b0Var2.f765b;
                            String str16 = str11;
                            String str17 = "Skill";
                            String str18 = str12;
                            String str19 = "pk_id";
                            if (iA1 == 1) {
                                if (P(strValueOf2, map)) {
                                    arrayList4.add(c(iA0, strValueOf2, map));
                                    sb = new StringBuilder("[Surrender] duplicate general -> soul +");
                                } else {
                                    for (int i2 = 0; i2 < iA0; i2++) {
                                        HashSet hashSet = new HashSet();
                                        Iterator it3 = w1.f0("Skill", map).iterator();
                                        while (it3.hasNext()) {
                                            hashSet.add(String.valueOf(((Map) it3.next()).getOrDefault("pk_id", str10)));
                                        }
                                        Map mapH = w1.a1(null).h(strValueOf2, map);
                                        if (mapH == null) {
                                            z2.g("SGSCQ_SRV", "[Surrender] skip non-surrenderable general +".concat(strValueOf2));
                                        } else {
                                            b0Var2.f764a.add(mapH);
                                            for (Map map5 : w1.f0("Skill", map)) {
                                                if (!hashSet.contains(String.valueOf(map5.getOrDefault("pk_id", str10)))) {
                                                    arrayList5.add(map5);
                                                }
                                            }
                                            z2.e("SGSCQ_SRV", "[Surrender] general +".concat(strValueOf2));
                                        }
                                    }
                                }
                                str5 = str10;
                                it2 = it;
                                str11 = str16;
                                str12 = str18;
                                str10 = str5;
                            } else {
                                if (iA1 == 6) {
                                    arrayList4.add(c(iA0, strValueOf2, map));
                                    sb = new StringBuilder("[Surrender] soul +");
                                } else {
                                    String str20 = "general_pk_id";
                                    str5 = str10;
                                    ArrayList arrayList6 = arrayList5;
                                    String str21 = "level";
                                    if (iA1 == 3) {
                                        int i3 = 0;
                                        while (i3 < iA0) {
                                            List listF0 = w1.f0("Equipment", map);
                                            String str22 = str15;
                                            String str23 = str14;
                                            int iB0 = b0(1, "next_pk_Equipment", map);
                                            if (iB0 <= 0) {
                                                iB0 = 1;
                                            }
                                            Iterator it4 = listF0.iterator();
                                            while (it4.hasNext()) {
                                                int i4 = iA0;
                                                int i5 = i3;
                                                int iB1 = b0(0, "pk_id", (Map) it4.next());
                                                if (iB1 >= iB0) {
                                                    iB0 = iB1 + 1;
                                                }
                                                i3 = i5;
                                                iA0 = i4;
                                            }
                                            int i6 = i3;
                                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                                            linkedHashMap.put("pk_id", String.valueOf(iB0));
                                            linkedHashMap.put(str13, strValueOf2);
                                            linkedHashMap.put("equipment_id", strValueOf2);
                                            linkedHashMap.put("equip_id", strValueOf2);
                                            linkedHashMap.put("eid", strValueOf2);
                                            linkedHashMap.put("level", 1);
                                            linkedHashMap.put("equipment_level", 1);
                                            linkedHashMap.put("refine_level", 1);
                                            linkedHashMap.put("refine_exp", 0);
                                            linkedHashMap.put("general_pk_id", null);
                                            linkedHashMap.put(str9, null);
                                            linkedHashMap.put("user_general_id", null);
                                            linkedHashMap.put("is_wear", "0");
                                            linkedHashMap.put("wear", "0");
                                            linkedHashMap.put("bore_list", new ArrayList());
                                            listF0.add(linkedHashMap);
                                            map.put("next_pk_Equipment", Integer.valueOf(iB0 + 1));
                                            b0Var2.f768e.add(linkedHashMap);
                                            w1.b2("equipment_id", strValueOf2, arrayList2, map);
                                            i3 = i6 + 1;
                                            str15 = str22;
                                            str14 = str23;
                                            iA0 = iA0;
                                            str13 = str13;
                                        }
                                        z2.e(str15, "[Surrender] equipment +" + iA0 + str14 + strValueOf2);
                                    } else {
                                        boolean z3 = false;
                                        if (iA1 == 4) {
                                            int iMax = Math.max(1, b0(1, "level", map4));
                                            int i7 = 0;
                                            while (i7 < iA0) {
                                                Object obj3 = map.get(str17);
                                                String str24 = str21;
                                                if (obj3 instanceof Map) {
                                                    mapZ0 = (Map) obj3;
                                                    str7 = str16;
                                                    str8 = str18;
                                                } else {
                                                    str7 = str16;
                                                    str8 = str18;
                                                    mapZ0 = p5.z0("del", new ArrayList(), str7, new ArrayList(), str8, new ArrayList());
                                                    map.put(str17, mapZ0);
                                                }
                                                Object obj4 = mapZ0.get(str8);
                                                List listO = obj4 instanceof List ? (List) obj4 : c.a.o(mapZ0, str8);
                                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                                String strValueOf3 = String.valueOf(Math.max(1, iMax));
                                                String str25 = str8;
                                                ArrayList arrayList7 = arrayList6;
                                                String str26 = str20;
                                                c.a.x(str17, map, linkedHashMap2, str19, str26, "0");
                                                linkedHashMap2.put("skill_id", strValueOf2);
                                                linkedHashMap2.put("id", strValueOf2);
                                                linkedHashMap2.put("skill_code", strValueOf2);
                                                linkedHashMap2.put("card_type", "4");
                                                linkedHashMap2.put(str24, strValueOf3);
                                                linkedHashMap2.put("skill_level", strValueOf3);
                                                linkedHashMap2.put("position", "0");
                                                linkedHashMap2.put("pos", "0");
                                                linkedHashMap2.put("skill_position", "0");
                                                linkedHashMap2.put("get_time", String.valueOf(c7.g()));
                                                linkedHashMap2.put("is_natural", Boolean.FALSE);
                                                linkedHashMap2.put("exp", "0");
                                                linkedHashMap2.put("extra_level", "0");
                                                linkedHashMap2.put("advanced_level", "0");
                                                w1.a1(null).S(strValueOf2, linkedHashMap2);
                                                listO.add(linkedHashMap2);
                                                w1.b2("skill_id", strValueOf2, null, map);
                                                arrayList7.add(linkedHashMap2);
                                                i7++;
                                                str14 = str14;
                                                arrayList6 = arrayList7;
                                                str21 = str24;
                                                iA0 = iA0;
                                                arrayList2 = arrayList2;
                                                str16 = str7;
                                                iMax = iMax;
                                                str9 = str9;
                                                str18 = str25;
                                                str20 = str26;
                                                b0Var2 = b0Var2;
                                                str19 = str19;
                                                str17 = str17;
                                            }
                                            str = str9;
                                            str3 = str18;
                                            str2 = str16;
                                            arrayList = arrayList2;
                                            z2.e("SGSCQ_SRV", "[Surrender] skill +" + iA0 + str14 + strValueOf2);
                                            str4 = str5;
                                            b0Var = b0Var2;
                                        } else {
                                            b0 b0Var3 = b0Var2;
                                            str = str9;
                                            str3 = str18;
                                            str2 = str16;
                                            arrayList = arrayList2;
                                            if (iA1 == 8) {
                                                str4 = str5;
                                                b0Var = b0Var3;
                                                if (!strValueOf2.matches("9\\d{6}") && strValueOf2.matches("2\\d{5}")) {
                                                    strValueOf2 = "9".concat(strValueOf2);
                                                }
                                                b0Var.f769f.add(com.sgscq.vpn.cloud.m0.c1(iA0, strValueOf2, map));
                                                sb2 = new StringBuilder("[Surrender] equipment piece +");
                                            } else {
                                                if (strValueOf2.isEmpty()) {
                                                    z = false;
                                                } else {
                                                    w1 w1VarA1 = w1.a1(null);
                                                    Map mapC1 = w1VarA1.c1(strValueOf2);
                                                    if (mapC1 != null && b0(-1, "item_type", mapC1) == 15) {
                                                        z = true;
                                                    } else if (strValueOf2.matches("9\\d{6}")) {
                                                        if (strValueOf2.length() == 7 && strValueOf2.startsWith("9")) {
                                                            z2 = true;
                                                            strSubstring = strValueOf2.substring(1);
                                                        } else {
                                                            z2 = true;
                                                            strSubstring = strValueOf2;
                                                        }
                                                        if (w1VarA1.z0(strSubstring) != null) {
                                                            z = z2;
                                                        } else {
                                                            z = false;
                                                        }
                                                    } else {
                                                        z = false;
                                                    }
                                                }
                                                if (z) {
                                                    str4 = str5;
                                                    b0Var = b0Var3;
                                                    if (!strValueOf2.matches("9\\d{6}")) {
                                                        strValueOf2 = "9".concat(strValueOf2);
                                                    }
                                                    b0Var.f769f.add(com.sgscq.vpn.cloud.m0.c1(iA0, strValueOf2, map));
                                                    sb2 = new StringBuilder("[Surrender] equipment piece +");
                                                } else {
                                                    List listF1 = w1.f0("Item", map);
                                                    Iterator it5 = listF1.iterator();
                                                    while (true) {
                                                        if (!it5.hasNext()) {
                                                            str6 = "num";
                                                            str4 = str5;
                                                            P = 0;
                                                            break;
                                                        }
                                                        Map map6 = (Map) it5.next();
                                                        str4 = str5;
                                                        if (c.a.C(map6, "id", str4, "item_id", strValueOf2)) {
                                                            int i8 = Integer.parseInt(String.valueOf(map6.getOrDefault("item_num", "0"))) + iA0;
                                                            str6 = "num";
                                                            c.a.t(i8, map6, "item_num", i8, str6);
                                                            z3 = true;
                                                            P = map6;
                                                            break;
                                                        }
                                                        str5 = str4;
                                                    }
                                                    if (!z3) {
                                                        P = c.a.p("pk_id", strValueOf2, "id", strValueOf2);
                                                        P.put("item_id", strValueOf2);
                                                        P.put("item_num", Integer.valueOf(iA0));
                                                        P.put(str6, Integer.valueOf(iA0));
                                                        listF1.add(P);
                                                    }
                                                    b0Var = b0Var3;
                                                    if (P != 0) {
                                                        b0Var.f766c.add(P);
                                                    }
                                                    sb2 = new StringBuilder("[Surrender] item +");
                                                }
                                            }
                                            sb2.append(iA0);
                                            sb2.append(" ");
                                            sb2.append(strValueOf2);
                                            z2.e("SGSCQ_SRV", sb2.toString());
                                        }
                                    }
                                }
                                it2 = it;
                                str11 = str16;
                                str12 = str18;
                                str10 = str5;
                            }
                            sb.append(iA0);
                            sb.append(" ");
                            sb.append(strValueOf2);
                            z2.e("SGSCQ_SRV", sb.toString());
                            str5 = str10;
                            it2 = it;
                            str11 = str16;
                            str12 = str18;
                            str10 = str5;
                        }
                    }
                    it2 = it;
                    b0Var2 = b0Var;
                    str10 = str4;
                    arrayList2 = arrayList;
                    str11 = str2;
                    str9 = str;
                    str12 = str3;
                }
            }
        }
        return b0Var2;
    }

    public static boolean N(String str, Map map) {
        if (map == null || str.isEmpty()) {
            return false;
        }
        return S(map.get("claimed_evolution_".concat(str)));
    }

    public static boolean O(Map map) {
        return f801f.contains(String.valueOf(map != null ? map.getOrDefault("item_id", map.getOrDefault("id", "")) : ""));
    }

    public static boolean P(String str, Map map) {
        if (str.isEmpty()) {
            return false;
        }
        Iterator it = w1.f0("General", map).iterator();
        while (it.hasNext()) {
            if (c.a.C((Map) it.next(), "id", "", "general_id", str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean Q(String str, Map map) {
        if (map == null || str == null || str.isEmpty()) {
            return false;
        }
        if (S(map.get("claimed_".concat(str)))) {
            return true;
        }
        Object obj = map.get(str);
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map2 = (Map) obj;
        return S(map2.get("claimed")) || S(map2.get("rewarded"));
    }

    public static boolean R(Map map, Map map2) {
        boolean z;
        String strValueOf = String.valueOf(map2.getOrDefault("general_id", ""));
        Map mapT0 = t0(map);
        if (!Q(strValueOf, mapT0)) {
            return false;
        }
        LinkedHashMap linkedHashMapO = o(map, map2, mapT0);
        Object obj = linkedHashMapO.get("surrender_list");
        if (!(obj instanceof List)) {
            z = false;
            break;
        }
        Iterator it = ((List) obj).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Object next = it.next();
            if (next instanceof Map) {
                Map map3 = (Map) next;
                if (c.a.A(map3, "surrender_type", "34") && b0(0, "surrender_status", map3) != 1) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            return false;
        }
        Object obj2 = linkedHashMapO.get("evolution_surrender_list");
        if (!(obj2 instanceof List) || ((List) obj2).isEmpty()) {
            return true;
        }
        return N(strValueOf, mapT0);
    }

    public static boolean S(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue() == 1;
        }
        return "1".equals(String.valueOf(obj)) || Boolean.TRUE.equals(obj);
    }

    public static String T(Map map) {
        return c.a.j(map, "id", "", "item_id");
    }

    public static int U(Map map) {
        return m0(map.getOrDefault("num", map.getOrDefault("item_num", 0)), 0);
    }

    public static void W(ArrayList arrayList, Object obj, String str, boolean z) {
        int iC0;
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    Map map = (Map) obj2;
                    if (b0(0, "type", map) == 1) {
                        Object objValueOf = "";
                        Object orDefault = map.getOrDefault("general_id", map.getOrDefault("pk_id", ""));
                        if (orDefault != null) {
                            if (orDefault instanceof Number) {
                                iC0 = ((Number) orDefault).intValue();
                            } else {
                                String strValueOf = String.valueOf(orDefault);
                                if (!strValueOf.isEmpty() && !"null".equalsIgnoreCase(strValueOf)) {
                                    if (strValueOf.matches("\\d+\\.0+")) {
                                        iC0 = c0(strValueOf, 0);
                                    } else {
                                        objValueOf = strValueOf;
                                    }
                                }
                            }
                            objValueOf = String.valueOf(iC0);
                        }
                        if (str.equals(objValueOf)) {
                            map.put("general_status", z ? "0" : "1");
                            map.put("atlas_status", z ? "2" : "1");
                            arrayList.add(new LinkedHashMap(map));
                        }
                    }
                }
            }
        }
    }

    public static int X(Object obj) {
        if (!(obj instanceof List)) {
            return 0;
        }
        int iMax = 0;
        for (Object obj2 : (List) obj) {
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                iMax = Math.max(iMax, Math.max(b0(0, "combat_level", map), b0(0, "level", map)));
            }
        }
        return iMax;
    }

    public static int Y(Map map, String... strArr) {
        if (map == null) {
            return 0;
        }
        int iMax = 0;
        for (String str : strArr) {
            iMax = Math.max(iMax, c0(map.get(str), 0));
        }
        Object obj = map.get("user_info");
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            for (String str2 : strArr) {
                iMax = Math.max(iMax, c0(map2.get(str2), 0));
            }
        }
        return iMax;
    }

    public static String Z(String str) {
        if (str == null) {
            return "";
        }
        return str.length() >= 6 ? str.substring(0, 6) : str;
    }

    public static void a(int i2, String str, LinkedHashMap linkedHashMap) {
        int i3;
        String str2 = i2 + ":" + str;
        if (linkedHashMap.containsKey(str2)) {
            return;
        }
        if (i2 == 6) {
            i3 = 20;
        } else {
            i3 = i2 == 8 ? 15 : 19;
        }
        linkedHashMap.put(str2, p5.z0("item_id", str, "id", str, "item_num", 1, "num", 1, "grant_type", Integer.valueOf(i2), "type", Integer.valueOf(i2), "item_type", Integer.valueOf(i3), "weight", 10));
    }

    public static double a0(Map map, String str, double d2) {
        Object obj = map.get(str);
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (obj != null) {
            try {
                return Double.parseDouble(String.valueOf(obj));
            } catch (NumberFormatException unused) {
            }
        }
        return d2;
    }

    public static void b(int i2, List list, LinkedHashMap linkedHashMap) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (i3 >= i2) {
                return;
            }
            String strY = y(map);
            if (!linkedHashMap.containsKey(strY)) {
                linkedHashMap.put(strY, map);
                i3++;
            }
        }
    }

    public static int b0(int i2, String str, Map map) {
        return map == null ? i2 : c0(map.get(str), i2);
    }

    public static Map c(int i2, String str, Map map) {
        w1.k(i2, str, map);
        for (Map map2 : w1.f0("GeneralSoul", map)) {
            if (c.a.C(map2, "id", "", "general_id", str)) {
                return map2;
            }
        }
        LinkedHashMap linkedHashMapR = c.a.r("pk_id", str, "id", str);
        c.a.z(linkedHashMapR, "general_id", str, i2, "num", 1, "card_type");
        return linkedHashMapR;
    }

    public static int c0(Object obj, int i2) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj != null) {
            try {
                return Integer.parseInt(String.valueOf(obj));
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    public static void d(LinkedHashSet linkedHashSet, Object obj) {
        if (obj == null) {
            return;
        }
        Matcher matcher = Pattern.compile("\\d{5,}").matcher(String.valueOf(obj));
        while (matcher.find()) {
            String strGroup = matcher.group();
            if (!"0".equals(strGroup)) {
                linkedHashSet.add(strGroup);
            }
        }
    }

    public static void d0(String str, String str2, LinkedHashMap linkedHashMap, Map map) {
        String strR0 = r0(map.get(str), null);
        if (strR0 == null) {
            strR0 = r0(map.get(str2), "0");
        }
        linkedHashMap.put(str, strR0);
        linkedHashMap.put(str2, strR0);
    }

    public static void e(ArrayList arrayList, LinkedHashSet linkedHashSet, Object obj, m.e eVar) {
        if (obj instanceof List) {
            if (eVar == null) {
                eVar = m.e.e();
            }
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap((Map) obj2);
                    if (eVar.x(linkedHashMap)) {
                        String strP = m.e.P(linkedHashMap.get("pk_id"));
                        if (!strP.isEmpty()) {
                            linkedHashSet.add(strP);
                        }
                    } else {
                        arrayList.add(linkedHashMap);
                    }
                } else if (obj2 != null) {
                    arrayList.add(obj2);
                }
            }
        }
    }

    public static Map e0(Object obj) {
        if (obj instanceof Map) {
            return (Map) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            try {
                LinkedHashMap linkedHashMapU1 = p5.u1(str);
                if (!linkedHashMapU1.isEmpty()) {
                    return linkedHashMapU1;
                }
            } catch (Exception unused) {
            }
            HashMap map = new HashMap();
            Matcher matcher = Pattern.compile("\"([^\"]+)\"\\s*:\\s*(-?\\d+)").matcher(str);
            while (matcher.find()) {
                map.put(matcher.group(1), Integer.valueOf(c0(matcher.group(2), 0)));
            }
            if (!map.isEmpty()) {
                return map;
            }
        }
        return new HashMap();
    }

    public static void f(LinkedHashMap linkedHashMap, Map map) {
        linkedHashMap.put("free_times", Integer.valueOf(m0(map.get("evolution_chest_free_times"), 0)));
        linkedHashMap.put("refresh_times", Integer.valueOf(m0(map.get("evolution_chest_refresh_times"), 0)));
        linkedHashMap.put("open_times", Integer.valueOf(m0(map.get("evolution_chest_open_times"), 0)));
        linkedHashMap.put("free_refresh_times", Integer.valueOf(m0(map.get("evolution_chest_free_refresh_times"), 3)));
        linkedHashMap.put("cost", p5.z0("refresh_price", 20, "single_price", 1, "multi_price", 10));
    }

    public static int f0(String str, Map map) {
        if (map == null || str == null) {
            return 0;
        }
        Object obj = map.get(str);
        if (obj == null && str.length() >= 6) {
            obj = map.get(str.substring(0, 6));
        }
        return c0(obj, 0);
    }

    public static void g(Object obj, ArrayList arrayList) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                if (obj2 instanceof Map) {
                    arrayList.add(new LinkedHashMap((Map) obj2));
                } else if (obj2 != null) {
                    arrayList.add(obj2);
                }
            }
        }
    }

    public static void g0(Map map, Map map2, int i2, ArrayList arrayList, ArrayList arrayList2) {
        if (i2 <= 0) {
            return;
        }
        int iMax = Math.max(0, U(map2) - i2);
        c.a.t(iMax, map2, "num", iMax, "item_num");
        if (iMax > 0) {
            arrayList2.add(new LinkedHashMap(map2));
        } else {
            w1.f0("Item", map).remove(map2);
            arrayList.add(String.valueOf(map2.getOrDefault("pk_id", "")));
        }
    }

    public static void h(j jVar, Map map) {
        if (jVar.c()) {
            LinkedHashMap linkedHashMap = map.get("delta_data") instanceof Map ? new LinkedHashMap((Map) map.get("delta_data")) : new LinkedHashMap();
            LinkedHashSet linkedHashSetS0 = s0(map.get("cmn_modules"));
            jVar.a(linkedHashMap, linkedHashSetS0);
            jVar.b(map);
            map.put("delta_data", linkedHashMap);
            StringBuilder sb = new StringBuilder();
            Iterator it = linkedHashSetS0.iterator();
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
            map.put("cmn_modules", sb.toString());
        }
    }

    public static String h0(w1 w1Var, Map map) {
        Map mapC1;
        String strValueOf = String.valueOf(map.getOrDefault("item_id", ""));
        if (strValueOf.isEmpty()) {
            return "";
        }
        if (w1Var == null) {
            w1Var = w1.a1(null);
        }
        if (w1Var != null && (mapC1 = w1Var.c1(strValueOf)) != null) {
            String strValueOf2 = String.valueOf(mapC1.getOrDefault("related_id", "0"));
            if (!strValueOf2.isEmpty() && !"0".equals(strValueOf2)) {
                return strValueOf2;
            }
        }
        for (Map.Entry entry : C(w1Var).entrySet()) {
            if (((String) entry.getValue()).equals(strValueOf)) {
                return (String) entry.getKey();
            }
        }
        return "";
    }

    public static int i(int i2, int i3, int i4) {
        return Math.min(Math.max(0, i2), Math.max(Math.max(0, i3), i4));
    }

    public static LinkedHashMap i0(String str, Map map) {
        ArrayList arrayList = new ArrayList();
        if (map != null) {
            Object obj = map.get(str);
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                g(map2.get("add"), arrayList);
                g(map2.get("upd"), arrayList);
            }
        }
        return p5.z0("del", new ArrayList(), "upd", arrayList, "add", new ArrayList());
    }

    public static LinkedHashMap j() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("error_code", 0);
        linkedHashMap.put("ret", 0);
        linkedHashMap.put("code", 0);
        linkedHashMap.put("result", Boolean.TRUE);
        linkedHashMap.put("msg", "success");
        linkedHashMap.put("surrender_list", new ArrayList());
        linkedHashMap.put("complete_list", new ArrayList());
        linkedHashMap.put("item_id", "600000");
        linkedHashMap.put("item_status", 0);
        linkedHashMap.put("all_status", 0);
        linkedHashMap.put("all_progress", 0);
        linkedHashMap.put("all_progressed", 0);
        linkedHashMap.put("rewards", new ArrayList());
        linkedHashMap.put("evolution_surrender_list", new ArrayList());
        linkedHashMap.put("evolution_item_id", "600000");
        linkedHashMap.put("evolution_item_status", 0);
        return linkedHashMap;
    }

    public static List j0(int i2, ArrayList arrayList) {
        if (arrayList.size() <= 1) {
            return arrayList;
        }
        int iFloorMod = Math.floorMod(i2, arrayList.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            arrayList2.add((Map) arrayList.get((i3 + iFloorMod) % arrayList.size()));
        }
        return arrayList2;
    }

    public static double k0(Map map, String str, double d2) {
        Object obj = map.get(str);
        if (obj == null) {
            return d2;
        }
        if (obj instanceof Number) {
            double dDoubleValue = ((Number) obj).doubleValue();
            return (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) ? d2 : dDoubleValue;
        }
        try {
            double d3 = Double.parseDouble(obj.toString());
            return (Double.isNaN(d3) || Double.isInfinite(d3)) ? d2 : d3;
        } catch (NumberFormatException unused) {
        }
    }

    public static ArrayList l(Context context) {
        a.o oVar = new a.o();
        Map map = (Map) oVar.e(p5.X(context), new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.handler.GameFeatureHandler$1
        }.getType());
        Map map2 = (Map) oVar.e(com.sgscq.vpn.o0.a(context, "evolution_buffs.json"), new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.handler.GameFeatureHandler$2
        }.getType());
        List<Map> list = (List) oVar.e(com.sgscq.vpn.o0.a(context, "evolutions.json"), new TypeToken<List<Map<String, Object>>>() { // from class: com.sgscq.vpn.handler.GameFeatureHandler$3
        }.getType());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list != null) {
            for (Map map3 : list) {
                linkedHashMap.put(c.a.j(map3, "evolution_id", "", "general_id"), map3);
            }
        }
        LinkedHashSet linkedHashSetC = t0.C(2);
        LinkedHashSet linkedHashSetO = t0.o(t0.C(2));
        w1 w1VarA1 = w1.a1(context);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (map != null) {
            Iterator it = linkedHashSetC.iterator();
            while (it.hasNext()) {
                q(map.get((String) it.next()), "forge_piece", linkedHashMap2, "", w1VarA1);
            }
        }
        if (map2 != null) {
            for (Object obj : linkedHashMap.values()) {
                if (obj instanceof Map) {
                    Map map4 = (Map) obj;
                    if ("1".equals(String.valueOf(map4.getOrDefault("is_open", "1")))) {
                        String strValueOf = String.valueOf(map4.getOrDefault("general_id", ""));
                        if (linkedHashSetO.contains(strValueOf)) {
                            q(map2.get(String.valueOf(map4.getOrDefault("evolution_id", ""))), "item_list", linkedHashMap2, strValueOf, w1VarA1);
                        }
                    }
                }
            }
        }
        return new ArrayList(linkedHashMap2.values());
    }

    public static int l0(int i2, String str, Map map) {
        Object obj = map.get(str);
        if (obj == null) {
            return i2;
        }
        if (obj instanceof Number) {
            double dDoubleValue = ((Number) obj).doubleValue();
            return (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) ? i2 : (int) dDoubleValue;
        }
        try {
            double d2 = Double.parseDouble(obj.toString());
            return (Double.isNaN(d2) || Double.isInfinite(d2)) ? i2 : (int) d2;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static LinkedHashMap m() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static int m0(Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        if (obj instanceof Number) {
            double dDoubleValue = ((Number) obj).doubleValue();
            return (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) ? i2 : (int) dDoubleValue;
        }
        try {
            double d2 = Double.parseDouble(obj.toString());
            if (!Double.isNaN(d2) && !Double.isInfinite(d2)) {
                return (int) d2;
            }
        } catch (NumberFormatException unused) {
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002c  */
    public static LinkedHashMap n(Map map, Map map2, Map map3) {
        Map map4;
        String strValueOf = String.valueOf(map2.getOrDefault("general_id", ""));
        if (!P(strValueOf, map)) {
            return j();
        }
        if (map3 == null || map3.isEmpty()) {
            Object obj = map.get("surrender_progress");
            if (obj instanceof Map) {
                map4 = (Map) obj;
            } else {
                map4 = map3;
            }
        } else {
            map4 = map3;
        }
        LinkedHashMap linkedHashMapO = o(map, map2, map3);
        if (Q(strValueOf, map4)) {
            linkedHashMapO.put("item_status", 1);
            linkedHashMapO.put("all_status", 1);
        }
        if (N(strValueOf, map4)) {
            linkedHashMapO.put("evolution_item_status", 1);
            linkedHashMapO.put("evolution_all_status", 1);
        }
        return linkedHashMapO;
    }

    public static ArrayList n0(ArrayList arrayList, Random random) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            linkedHashMap.putIfAbsent(y(map), map);
        }
        ArrayList arrayList2 = new ArrayList(linkedHashMap.values());
        if (arrayList2.isEmpty()) {
            return new ArrayList();
        }
        Collections.shuffle(arrayList2, random);
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 0; i2 < 8; i2++) {
            arrayList3.add(new LinkedHashMap((Map) arrayList2.get(i2 % arrayList2.size())));
        }
        return arrayList3;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:52:0x0105  */
    /* JADX WARN: Code duplicated, block: B:53:0x0107  */
    public static LinkedHashMap o(Map map, Map map2, Map map3) {
        boolean z;
        String str;
        com.sgscq.vpn.battle.e eVar;
        boolean z2;
        String strValueOf = String.valueOf(map2.getOrDefault("surrender_gift_id", "600000"));
        String strValueOf2 = String.valueOf(map2.getOrDefault("evolution_surrender_gift_id", strValueOf));
        ArrayList arrayList = new ArrayList();
        Object obj = map2.get("rewards");
        List list = arrayList;
        if (obj instanceof List) {
            list = (List) obj;
        }
        List list2 = list;
        ArrayList arrayList2 = new ArrayList();
        String str2 = "evolution_rewards";
        Object obj2 = map2.get("evolution_rewards");
        List list3 = arrayList2;
        if (obj2 instanceof List) {
            list3 = (List) obj2;
        }
        List list4 = list3;
        a7 a7VarV1 = w1.a1(null).V1();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        Object obj3 = map2.get("general_id");
        String string = obj3 != null ? obj3.toString() : null;
        Object obj4 = map2.get("surrender_tasks");
        if (obj4 instanceof List) {
            if (map == null || string == null || string.isEmpty()) {
                z = false;
            } else {
                Object obj5 = map.get("EvolutionInfo");
                if (obj5 instanceof Map) {
                    Map map4 = (Map) obj5;
                    if (com.sgscq.vpn.cloud.m0.d1(map4.get("add"), string) || com.sgscq.vpn.cloud.m0.d1(map4.get("upd"), string)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
            Iterator it = ((List) obj4).iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof Map) {
                    Map map5 = (Map) next;
                    Object obj6 = map5.get("surrender_id");
                    String string2 = obj6 != null ? obj6.toString() : null;
                    Iterator it2 = it;
                    Object obj7 = map5.get("surrender_type");
                    String string3 = obj7 != null ? obj7.toString() : null;
                    String str3 = str2;
                    if (a7VarV1 != null) {
                        if (string2 != null && ((Set) a7VarV1.f191b).contains(string2)) {
                            z2 = true;
                        } else if ("34".equals(string3)) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else if ("34".equals(string3)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        arrayList3.add(map5);
                    } else if (z) {
                        arrayList5.add(map5);
                    }
                    it = it2;
                    str2 = str3;
                }
            }
            str = str2;
            eVar = new com.sgscq.vpn.battle.e(1, arrayList3, arrayList4, arrayList5);
        } else {
            eVar = new com.sgscq.vpn.battle.e(1, arrayList3, arrayList4, arrayList5);
            str = "evolution_rewards";
        }
        c0 c0VarP = p(eVar.f224a, map, map3, map2);
        c0 c0VarP2 = p(eVar.f225b, map, map3, map2);
        c0 c0VarP3 = p(eVar.f226c, map, map3, map2);
        ArrayList arrayList6 = new ArrayList(c0VarP.f790a);
        arrayList6.addAll(c0VarP2.f790a);
        ArrayList arrayList7 = new ArrayList(c0VarP.f791b);
        arrayList7.addAll(c0VarP2.f791b);
        List list5 = c0VarP3.f791b;
        arrayList7.addAll(list5);
        int i2 = c0VarP.f792c;
        int i3 = c0VarP.f793d;
        boolean zF = y0.f(i2, i3);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a.s(0, linkedHashMap, "error_code", 0, "ret", 0, "code");
        linkedHashMap.put("result", Boolean.TRUE);
        linkedHashMap.put("msg", "success");
        linkedHashMap.put("surrender_list", arrayList6);
        linkedHashMap.put("complete_list", arrayList7);
        c.a.z(linkedHashMap, "item_id", strValueOf, zF ? 1 : 0, "item_status", zF ? 1 : 0, "all_status");
        linkedHashMap.put("all_progress", Integer.valueOf(i3));
        linkedHashMap.put("all_progressed", Integer.valueOf(i2));
        linkedHashMap.put("rewards", list2);
        linkedHashMap.put(str, list4);
        linkedHashMap.put("evolution_surrender_list", c0VarP3.f790a);
        linkedHashMap.put("evolution_item_id", strValueOf2);
        int i4 = c0VarP3.f792c;
        int i5 = c0VarP3.f793d;
        linkedHashMap.put("evolution_item_status", Integer.valueOf(y0.f(i4, i5) ? 1 : 0));
        linkedHashMap.put("normal_all_status", Integer.valueOf(zF ? 1 : 0));
        linkedHashMap.put("normal_complete_list", new ArrayList(arrayList7));
        linkedHashMap.put("evolution_all_status", Integer.valueOf(y0.f(i4, i5) ? 1 : 0));
        linkedHashMap.put("evolution_complete_list", new ArrayList(list5));
        return linkedHashMap;
    }

    public static LinkedHashMap o0(List list, Random random) {
        LinkedHashMap linkedHashMap = new LinkedHashMap((Map) list.get(list.size() == 1 ? 0 : random.nextInt(list.size())));
        linkedHashMap.put("item_num", 1);
        linkedHashMap.put("num", 1);
        return linkedHashMap;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0297  */
    /* JADX WARN: Code duplicated, block: B:103:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:105:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:109:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:112:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:114:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:118:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:124:0x0304  */
    /* JADX WARN: Code duplicated, block: B:126:0x0324  */
    /* JADX WARN: Code duplicated, block: B:127:0x032b  */
    /* JADX WARN: Code duplicated, block: B:131:0x0344  */
    /* JADX WARN: Code duplicated, block: B:134:0x0366  */
    /* JADX WARN: Code duplicated, block: B:137:0x036d  */
    /* JADX WARN: Code duplicated, block: B:139:0x0377  */
    /* JADX WARN: Code duplicated, block: B:140:0x037b  */
    /* JADX WARN: Code duplicated, block: B:143:0x0388  */
    /* JADX WARN: Code duplicated, block: B:145:0x0395  */
    /* JADX WARN: Code duplicated, block: B:148:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:153:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:154:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:157:0x03df  */
    /* JADX WARN: Code duplicated, block: B:159:0x03e9 A[PHI: r4 r11
      0x03e9: PHI (r4v56 java.lang.String) = (r4v10 java.lang.String), (r4v39 java.lang.String) binds: [B:158:0x03e7, B:592:0x03e9] A[DONT_GENERATE, DONT_INLINE]
      0x03e9: PHI (r11v19 int) = (r11v5 int), (r11v10 int) binds: [B:158:0x03e7, B:592:0x03e9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:160:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:163:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:166:0x0422 A[LOOP:17: B:161:0x03f8->B:166:0x0422, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:169:0x042c  */
    /* JADX WARN: Code duplicated, block: B:172:0x0433  */
    /* JADX WARN: Code duplicated, block: B:175:0x043e  */
    /* JADX WARN: Code duplicated, block: B:177:0x0448  */
    /* JADX WARN: Code duplicated, block: B:178:0x044b  */
    /* JADX WARN: Code duplicated, block: B:181:0x0458  */
    /* JADX WARN: Code duplicated, block: B:184:0x0463  */
    /* JADX WARN: Code duplicated, block: B:190:0x047e  */
    /* JADX WARN: Code duplicated, block: B:193:0x0482  */
    /* JADX WARN: Code duplicated, block: B:196:0x048c  */
    /* JADX WARN: Code duplicated, block: B:205:0x04af  */
    /* JADX WARN: Code duplicated, block: B:209:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:211:0x04bf A[PHI: r25
      0x04bf: PHI (r25v13 java.lang.String) = (r25v5 java.lang.String), (r25v9 java.lang.String) binds: [B:210:0x04bd, B:586:0x04bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:212:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:215:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:221:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:224:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:227:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:230:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:233:0x051c A[LOOP:8: B:228:0x04f8->B:233:0x051c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:234:0x051f  */
    /* JADX WARN: Code duplicated, block: B:238:0x0526  */
    /* JADX WARN: Code duplicated, block: B:240:0x052f  */
    /* JADX WARN: Code duplicated, block: B:243:0x053d  */
    /* JADX WARN: Code duplicated, block: B:244:0x0556  */
    /* JADX WARN: Code duplicated, block: B:247:0x0560  */
    /* JADX WARN: Code duplicated, block: B:249:0x056e  */
    /* JADX WARN: Code duplicated, block: B:250:0x0574  */
    /* JADX WARN: Code duplicated, block: B:252:0x0581  */
    /* JADX WARN: Code duplicated, block: B:255:0x058f  */
    /* JADX WARN: Code duplicated, block: B:256:0x0594  */
    /* JADX WARN: Code duplicated, block: B:259:0x05a8  */
    /* JADX WARN: Code duplicated, block: B:261:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:262:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:265:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:267:0x0617  */
    /* JADX WARN: Code duplicated, block: B:275:0x0634  */
    /* JADX WARN: Code duplicated, block: B:279:0x063d  */
    /* JADX WARN: Code duplicated, block: B:286:0x0650 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:292:0x0671  */
    /* JADX WARN: Code duplicated, block: B:293:0x0676  */
    /* JADX WARN: Code duplicated, block: B:296:0x068a  */
    /* JADX WARN: Code duplicated, block: B:298:0x069c  */
    /* JADX WARN: Code duplicated, block: B:299:0x06a5  */
    /* JADX WARN: Code duplicated, block: B:301:0x06a9  */
    /* JADX WARN: Code duplicated, block: B:302:0x06c4  */
    /* JADX WARN: Code duplicated, block: B:304:0x06c9  */
    /* JADX WARN: Code duplicated, block: B:305:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:308:0x06dc  */
    /* JADX WARN: Code duplicated, block: B:311:0x06ec  */
    /* JADX WARN: Code duplicated, block: B:313:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:314:0x0700  */
    /* JADX WARN: Code duplicated, block: B:317:0x0709  */
    /* JADX WARN: Code duplicated, block: B:318:0x070b  */
    /* JADX WARN: Code duplicated, block: B:321:0x0714  */
    /* JADX WARN: Code duplicated, block: B:322:0x0716  */
    /* JADX WARN: Code duplicated, block: B:325:0x071f  */
    /* JADX WARN: Code duplicated, block: B:326:0x0721  */
    /* JADX WARN: Code duplicated, block: B:329:0x072a  */
    /* JADX WARN: Code duplicated, block: B:332:0x072f  */
    /* JADX WARN: Code duplicated, block: B:333:0x0732  */
    /* JADX WARN: Code duplicated, block: B:334:0x0735  */
    /* JADX WARN: Code duplicated, block: B:335:0x0738  */
    /* JADX WARN: Code duplicated, block: B:339:0x074e  */
    /* JADX WARN: Code duplicated, block: B:341:0x0756  */
    /* JADX WARN: Code duplicated, block: B:344:0x0766  */
    /* JADX WARN: Code duplicated, block: B:347:0x076e  */
    /* JADX WARN: Code duplicated, block: B:348:0x0773  */
    /* JADX WARN: Code duplicated, block: B:351:0x0780  */
    /* JADX WARN: Code duplicated, block: B:352:0x0799  */
    /* JADX WARN: Code duplicated, block: B:355:0x07a3  */
    /* JADX WARN: Code duplicated, block: B:356:0x07be  */
    /* JADX WARN: Code duplicated, block: B:359:0x07c8  */
    /* JADX WARN: Code duplicated, block: B:362:0x07e6  */
    /* JADX WARN: Code duplicated, block: B:365:0x0806 A[LOOP:9: B:363:0x0800->B:365:0x0806, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:369:0x0835  */
    /* JADX WARN: Code duplicated, block: B:372:0x0853  */
    /* JADX WARN: Code duplicated, block: B:375:0x0873 A[LOOP:10: B:373:0x086d->B:375:0x0873, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:377:0x088d  */
    /* JADX WARN: Code duplicated, block: B:380:0x089d  */
    /* JADX WARN: Code duplicated, block: B:383:0x08ad  */
    /* JADX WARN: Code duplicated, block: B:386:0x08b6  */
    /* JADX WARN: Code duplicated, block: B:388:0x08c0  */
    /* JADX WARN: Code duplicated, block: B:389:0x08c2  */
    /* JADX WARN: Code duplicated, block: B:392:0x08cf  */
    /* JADX WARN: Code duplicated, block: B:394:0x08d7  */
    /* JADX WARN: Code duplicated, block: B:395:0x08da  */
    /* JADX WARN: Code duplicated, block: B:398:0x08e5  */
    /* JADX WARN: Code duplicated, block: B:401:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:408:0x0916  */
    /* JADX WARN: Code duplicated, block: B:410:0x0920  */
    /* JADX WARN: Code duplicated, block: B:413:0x092b  */
    /* JADX WARN: Code duplicated, block: B:416:0x0939  */
    /* JADX WARN: Code duplicated, block: B:422:0x095e  */
    /* JADX WARN: Code duplicated, block: B:424:0x0961  */
    /* JADX WARN: Code duplicated, block: B:427:0x096d  */
    /* JADX WARN: Code duplicated, block: B:430:0x098b  */
    /* JADX WARN: Code duplicated, block: B:433:0x09a9  */
    /* JADX WARN: Code duplicated, block: B:435:0x09b0  */
    /* JADX WARN: Code duplicated, block: B:450:0x09e3  */
    /* JADX WARN: Code duplicated, block: B:452:0x09e6  */
    /* JADX WARN: Code duplicated, block: B:455:0x09f2  */
    /* JADX WARN: Code duplicated, block: B:458:0x0a10  */
    /* JADX WARN: Code duplicated, block: B:461:0x0a2e  */
    /* JADX WARN: Code duplicated, block: B:478:0x0a95  */
    /* JADX WARN: Code duplicated, block: B:480:0x0aa3  */
    /* JADX WARN: Code duplicated, block: B:483:0x0aad  */
    /* JADX WARN: Code duplicated, block: B:486:0x0ac9  */
    /* JADX WARN: Code duplicated, block: B:489:0x0ae5  */
    /* JADX WARN: Code duplicated, block: B:490:0x0afd  */
    /* JADX WARN: Code duplicated, block: B:526:0x075d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:534:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:535:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:536:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:537:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:538:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x014b  */
    /* JADX WARN: Code duplicated, block: B:541:0x02c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:544:0x02e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:547:0x03b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:550:0x04b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:551:0x04b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:552:0x04b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:0x04ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:0x051f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:557:0x051a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0155  */
    /* JADX WARN: Code duplicated, block: B:563:0x0909 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:569:0x095e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:586:0x04bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:587:0x04d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:0x04e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0162  */
    /* JADX WARN: Code duplicated, block: B:590:0x04c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:0x03e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x0420 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:0x01e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x01e0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x018e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0194  */
    /* JADX WARN: Code duplicated, block: B:67:0x01b3 A[PHI: r2 r10 r14 r15
      0x01b3: PHI (r2v111 java.lang.String) = (r2v3 java.lang.String), (r2v116 java.lang.String) binds: [B:54:0x0153, B:535:0x01b3] A[DONT_GENERATE, DONT_INLINE]
      0x01b3: PHI (r10v35 java.lang.String) = (r10v1 java.lang.String), (r10v38 java.lang.String) binds: [B:54:0x0153, B:535:0x01b3] A[DONT_GENERATE, DONT_INLINE]
      0x01b3: PHI (r14v56 java.lang.String) = (r14v2 java.lang.String), (r14v57 java.lang.String) binds: [B:54:0x0153, B:535:0x01b3] A[DONT_GENERATE, DONT_INLINE]
      0x01b3: PHI (r15v51 java.lang.String) = (r15v13 java.lang.String), (r15v52 java.lang.String) binds: [B:54:0x0153, B:535:0x01b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:70:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:73:0x01da  */
    /* JADX WARN: Code duplicated, block: B:78:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:82:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:84:0x020e  */
    /* JADX WARN: Code duplicated, block: B:87:0x021a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0238  */
    /* JADX WARN: Code duplicated, block: B:93:0x0256  */
    /* JADX WARN: Code duplicated, block: B:95:0x026c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0278  */
    /* JADX WARN: Instruction removed from duplicated block: B:145:0x0395, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:58:0x0162, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:63:0x0194, please report this as an issue */
    public static c0 p(List list, Map map, Map map2, Map map3) {
        String str;
        String str2;
        int i2;
        LinkedHashMap linkedHashMap;
        Object obj;
        String str3;
        String str4;
        int i3;
        Object obj2;
        String str5;
        String str6;
        int iMax;
        ArrayList arrayList;
        int i4;
        boolean z;
        Object obj3;
        String str7;
        int i5;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        int i6;
        String str13;
        String str14;
        int i7;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        int i8;
        LinkedHashSet linkedHashSet;
        int iB0;
        int i9;
        int iB1;
        int iB2;
        int iB3;
        int iB4;
        boolean z2;
        LinkedHashSet linkedHashSetP0;
        boolean z3;
        Iterator it;
        Map map4;
        int iB5;
        LinkedHashSet linkedHashSetP1;
        int i10;
        Object obj4;
        Object obj5;
        int iMax2;
        Map map5;
        String str20;
        int iB6;
        int iY;
        Iterator it2;
        int iY2;
        Map mapE0;
        Iterator it3;
        int iB7;
        Map mapH;
        double dDoubleValue;
        String strValueOf;
        String str21;
        String str22;
        Object obj6;
        int iB8;
        Object obj7;
        int iMax3;
        int iB9;
        Map mapH2;
        String str23;
        String str24;
        String strJ;
        Iterator it4;
        int iMax4;
        int i11;
        Map map6;
        String str25;
        boolean z4;
        int iB10;
        Map mapH3;
        int iB11;
        int iMax5;
        Iterator it5;
        Iterator it6;
        Map map7;
        int i12;
        boolean z5;
        int i13;
        Object obj8;
        Iterator it7;
        Object next;
        boolean z6;
        boolean z7;
        Iterator it8;
        Map map8;
        Iterator it9;
        Object obj9;
        Object obj10;
        Iterator it10;
        int i14;
        Object next2;
        Map map9;
        String strValueOf2;
        boolean z8;
        Iterator it11;
        boolean z9;
        Iterator it12;
        String str26;
        int i15;
        Object obj11;
        Map map10;
        Iterator it13;
        int i16;
        String str27;
        Iterator it14;
        String str28;
        Object obj12;
        int size;
        String[] strArr;
        int iMin;
        int i17;
        Object obj13;
        Map map11;
        int i18;
        int iC0;
        int iC1;
        Object obj14;
        Map mapE1;
        Iterator it15;
        boolean z10;
        String str29;
        String str30;
        Iterator it16;
        String str31;
        String strZ;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it17 = list.iterator();
        int i19 = 0;
        int i20 = 0;
        while (it17.hasNext()) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap((Map) it17.next());
            String str32 = "";
            if (!linkedHashMap2.containsKey("general_id")) {
                linkedHashMap2.put("general_id", map3.getOrDefault("general_id", ""));
            }
            String strValueOf3 = String.valueOf(linkedHashMap2.getOrDefault("surrender_id", ""));
            int iB12 = b0(1, "progress_num", linkedHashMap2);
            int i21 = iB12 > 0 ? iB12 : 1;
            int iB13 = b0(i20, strValueOf3, map2);
            Iterator it18 = it17;
            String str33 = "map_id";
            ArrayList arrayList4 = arrayList2;
            String str34 = "source";
            String str35 = "surrender_type";
            ArrayList arrayList5 = arrayList3;
            String str36 = "type";
            if (map != null) {
                str4 = strValueOf3;
                int iB14 = b0(1, "progress_num", linkedHashMap2);
                if (iB14 <= 0) {
                    iB14 = 1;
                }
                obj2 = "progress_num";
                int iMax6 = Math.max(0, iB13);
                i2 = i19;
                String strValueOf4 = String.valueOf(linkedHashMap2.getOrDefault("surrender_type", linkedHashMap2.getOrDefault("type", "")));
                i3 = i21;
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                String str37 = "general_id";
                String str38 = "source_type";
                d(linkedHashSet2, linkedHashMap2.get("limit_first"));
                String str39 = "0";
                d(linkedHashSet2, linkedHashMap2.get("limit_second"));
                d(linkedHashSet2, linkedHashMap2.get("limit_third"));
                Object obj15 = linkedHashMap2.get("source");
                if (obj15 instanceof List) {
                    Iterator it19 = ((List) obj15).iterator();
                    while (it19.hasNext()) {
                        Object next3 = it19.next();
                        Iterator it20 = it19;
                        if (next3 instanceof Map) {
                            Map map12 = (Map) next3;
                            d(linkedHashSet2, map12.get("param_value"));
                            d(linkedHashSet2, map12.get("map_id"));
                        }
                        it19 = it20;
                    }
                }
                String strValueOf5 = String.valueOf(linkedHashMap2.getOrDefault("surrender_type", linkedHashMap2.getOrDefault("type", "")));
                String str40 = "29";
                if ("29".equals(strValueOf5)) {
                    obj = "param_value";
                } else {
                    obj = "param_value";
                    if (!"13".equals(strValueOf5) && !"24".equals(strValueOf5)) {
                        Object obj16 = linkedHashMap2.get("source");
                        if (obj16 instanceof List) {
                            Iterator it21 = ((List) obj16).iterator();
                            while (true) {
                                if (it21.hasNext()) {
                                    Object next4 = it21.next();
                                    Iterator it22 = it21;
                                    if (!(next4 instanceof Map) || (obj3 = ((Map) next4).get("map_id")) == null || String.valueOf(obj3).isEmpty()) {
                                        it21 = it22;
                                    }
                                }
                            }
                        }
                    }
                    z = true;
                    if (z) {
                        obj14 = map.get("dungeon_stars");
                        if (obj14 instanceof String) {
                            str30 = (String) obj14;
                            it16 = linkedHashSet2.iterator();
                            while (true) {
                                if (it16.hasNext()) {
                                    str5 = str33;
                                    str31 = (String) it16.next();
                                    str3 = str35;
                                    strZ = Z(str31);
                                    str = str36;
                                    str7 = str40;
                                    if (!str30.contains("\"" + strZ + "\"")) {
                                        if (!strZ.equals(str31)) {
                                            if (str30.contains("\"" + str31 + "\"")) {
                                            }
                                        }
                                        str35 = str3;
                                        str33 = str5;
                                        str36 = str;
                                        str40 = str7;
                                    }
                                } else {
                                    str = str36;
                                    str3 = str35;
                                    str5 = str33;
                                    str7 = str40;
                                    mapE1 = e0(obj14);
                                    it15 = linkedHashSet2.iterator();
                                    while (true) {
                                        if (it15.hasNext()) {
                                            str29 = (String) it15.next();
                                            if (f0(Z(str29), mapE1) > 0 && f0(str29, mapE1) <= 0) {
                                            }
                                        } else {
                                            z10 = false;
                                        }
                                    }
                                }
                                z10 = true;
                            }
                        } else {
                            str = str36;
                            str3 = str35;
                            str5 = str33;
                            str7 = str40;
                            mapE1 = e0(obj14);
                            it15 = linkedHashSet2.iterator();
                            while (true) {
                                if (it15.hasNext()) {
                                    str29 = (String) it15.next();
                                    if (f0(Z(str29), mapE1) > 0) {
                                    }
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                            }
                        }
                        if (z10) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    } else {
                        str = "type";
                        str3 = "surrender_type";
                        str5 = "map_id";
                        str7 = "29";
                    }
                    if ("3".equals(strValueOf4)) {
                        if (Y(map, "user_vip_level", "vip_level", "vip") >= b0(iB14, "limit_first", linkedHashMap2)) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    }
                    if ("6".equals(strValueOf4)) {
                        iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "tower_total_challenge_times", "tower_total_fight_times", "surrender_tower_challenge_times")));
                    }
                    if ("4".equals(strValueOf4)) {
                        iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "arena_total_fight_times", "competition_total_fight_times", "surrender_total_arena_fights")));
                    }
                    if ("7".equals(strValueOf4)) {
                        if (Y(map, "tower_max_point_progress", "tower_last_run_max_point_progress", "tower_last_run_point_progress", "tower_point_progress") >= b0(iB14, "limit_first", linkedHashMap2)) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    }
                    if ("8".equals(strValueOf4)) {
                        iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "ladder_total_fight_times", "ladder_total_battle_times", "surrender_ladder_fight_times")));
                    }
                    if ("9".equals(strValueOf4)) {
                        int iMax7 = Math.max(1, b0(iB14, "limit_first", linkedHashMap2));
                        strArr = new String[]{"ladder_best_rank", "ladder_rank", "best_ladder_rank"};
                        iMin = Integer.MAX_VALUE;
                        i17 = 0;
                        for (i5 = 3; i17 < i5; i5 = 3) {
                            iC1 = c0(map.get(strArr[i17]), 0);
                            if (iC1 > 0) {
                                iMin = Math.min(iMin, iC1);
                            }
                            i17++;
                        }
                        obj13 = map.get("user_info");
                        if (obj13 instanceof Map) {
                            map11 = (Map) obj13;
                            i18 = 0;
                            while (i18 < 3) {
                                Map map13 = map11;
                                iC0 = c0(map11.get(strArr[i18]), 0);
                                if (iC0 > 0) {
                                    iMin = Math.min(iMin, iC0);
                                }
                                i18++;
                                map11 = map13;
                            }
                        }
                        if (iMin == Integer.MAX_VALUE) {
                            iMin = 0;
                        }
                        if (iMin > 0 && iMin <= iMax7) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    }
                    if ("14".equals(strValueOf4)) {
                        int iY3 = Y(map, "friend_count", "total_friend_count");
                        int size2 = w1.f0("Friend", map).size();
                        obj12 = map.get("relationship_friends");
                        if (obj12 instanceof List) {
                            size = ((List) obj12).size();
                        } else {
                            size = 0;
                        }
                        iMax6 = Math.max(iMax6, i(iB14, iB13, Math.max(iY3, Math.max(size2, size))));
                    }
                    if ("15".equals(strValueOf4)) {
                        iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "activity_cumulative_login_days", "total_login_days", "login_days", "user_login_days", "user_count_login_days")));
                    }
                    str8 = "1";
                    if ("1".equals(strValueOf4)) {
                        if (linkedHashSet2.isEmpty()) {
                            i15 = 0;
                            str9 = str39;
                        } else {
                            obj11 = map.get("surrender_progress");
                            if (obj11 instanceof Map) {
                                map10 = (Map) obj11;
                                it13 = linkedHashSet2.iterator();
                                i16 = 0;
                                while (it13.hasNext()) {
                                    str27 = (String) it13.next();
                                    if (b0(0, str27, map10) <= 0) {
                                        it14 = it13;
                                        str28 = str39;
                                        if (S(map10.getOrDefault("claimed_" + str27, str28))) {
                                        }
                                        str39 = str28;
                                        it13 = it14;
                                    } else {
                                        it14 = it13;
                                        str28 = str39;
                                    }
                                    i16++;
                                    str39 = str28;
                                    it13 = it14;
                                }
                                str9 = str39;
                                i15 = i16;
                            } else {
                                i15 = 0;
                                str9 = str39;
                            }
                        }
                        if (i15 > 0) {
                            iMax6 = Math.max(iMax6, Math.min(i15, iB14));
                        }
                    } else {
                        str9 = str39;
                    }
                    str10 = "Skill";
                    str11 = "add";
                    if ("17".equals(strValueOf4)) {
                        i6 = iB13;
                        if (linkedHashSet2.isEmpty()) {
                            str12 = strValueOf4;
                            i12 = iB14;
                            z5 = false;
                        } else {
                            it5 = w1.f0("Equipment", map).iterator();
                            while (true) {
                                if (it5.hasNext()) {
                                    it6 = it5;
                                    map7 = (Map) it5.next();
                                    str12 = strValueOf4;
                                    i12 = iB14;
                                    if (linkedHashSet2.contains(String.valueOf(map7.getOrDefault("equipment_id", map7.getOrDefault("id", ""))))) {
                                        z5 = true;
                                    } else {
                                        strValueOf4 = str12;
                                        it5 = it6;
                                        iB14 = i12;
                                    }
                                } else {
                                    str12 = strValueOf4;
                                    i12 = iB14;
                                    z5 = false;
                                }
                            }
                        }
                        if (z5) {
                            str13 = str38;
                            iB14 = i12;
                            iMax6 = Math.max(iMax6, iB14);
                        } else {
                            if (linkedHashSet2.isEmpty()) {
                                i13 = 0;
                            } else {
                                obj9 = map.get("Atlas");
                                if (obj9 instanceof Map) {
                                    obj10 = ((Map) obj9).get("add");
                                    if (obj10 instanceof List) {
                                        it10 = ((List) obj10).iterator();
                                        i14 = 0;
                                        while (it10.hasNext()) {
                                            next2 = it10.next();
                                            Iterator it23 = it10;
                                            if (!(next2 instanceof Map)) {
                                                map9 = (Map) next2;
                                                strValueOf2 = String.valueOf(map9.getOrDefault("atlas_status", str9));
                                                if (!"1".equals(strValueOf2) || "2".equals(strValueOf2)) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                if (!z8) {
                                                    it11 = linkedHashSet2.iterator();
                                                    while (true) {
                                                        if (it11.hasNext()) {
                                                            it12 = it11;
                                                            str26 = (String) it11.next();
                                                            if (!u(str26, map9) || u(Z(str26), map9)) {
                                                                z9 = true;
                                                            } else {
                                                                it11 = it12;
                                                            }
                                                        } else {
                                                            z9 = false;
                                                        }
                                                    }
                                                    if (z9) {
                                                        i14++;
                                                    }
                                                }
                                            }
                                            it10 = it23;
                                        }
                                        i13 = i14;
                                    } else {
                                        i13 = 0;
                                    }
                                } else {
                                    i13 = 0;
                                }
                            }
                            if (i13 <= 0) {
                                obj8 = linkedHashMap2.get("source");
                                if (obj8 instanceof List) {
                                    it7 = ((List) obj8).iterator();
                                    while (true) {
                                        if (it7.hasNext()) {
                                            next = it7.next();
                                            if (!(next instanceof Map)) {
                                                str13 = str38;
                                                if (c.a.A((Map) next, str13, "18")) {
                                                    z6 = true;
                                                } else {
                                                    str38 = str13;
                                                }
                                            }
                                        } else {
                                            str13 = str38;
                                            z6 = false;
                                        }
                                    }
                                } else {
                                    str13 = str38;
                                    z6 = false;
                                }
                                if (z6) {
                                    if (linkedHashSet2.isEmpty()) {
                                        z7 = false;
                                    } else {
                                        it8 = w1.f0("Skill", map).iterator();
                                        while (true) {
                                            if (it8.hasNext()) {
                                                map8 = (Map) it8.next();
                                                it9 = it8;
                                                if (linkedHashSet2.contains(String.valueOf(map8.getOrDefault("skill_id", map8.getOrDefault("id", ""))))) {
                                                    z7 = true;
                                                } else {
                                                    it8 = it9;
                                                }
                                            } else {
                                                z7 = false;
                                            }
                                        }
                                    }
                                    if (z7) {
                                    }
                                }
                                iB14 = i12;
                            } else {
                                str13 = str38;
                            }
                            iB14 = i12;
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    } else {
                        str12 = strValueOf4;
                        i6 = iB13;
                        str13 = str38;
                    }
                    str14 = str12;
                    if ("18".equals(str14)) {
                        i7 = i6;
                        iMax6 = Math.max(iMax6, i(iB14, i7, v0(map, "ladder_kill_counts", linkedHashSet2, "surrender_total_ladder_target_kills", "ladder_total_target_kills")));
                    } else {
                        i7 = i6;
                    }
                    if ("22".equals(str14)) {
                        str15 = "limit_first";
                        iB10 = b0(iB14, str15, linkedHashMap2);
                        str6 = str13;
                        mapH3 = H(map, linkedHashMap2);
                        if (mapH3 == null) {
                            iMax5 = 0;
                        } else {
                            iB11 = b0(0, "insight_level", mapH3);
                            if (iB11 <= 0) {
                                iB11 = b0(0, "breachLevel", mapH3);
                            }
                            iMax5 = Math.max(0, iB11 - 1);
                        }
                        if (iMax5 >= iB10) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    } else {
                        str6 = str13;
                        linkedHashSet2 = linkedHashSet2;
                        str15 = "limit_first";
                        str34 = "source";
                    }
                    if ("32".equals(str14)) {
                        iB9 = b0(iB14, str15, linkedHashMap2);
                        mapH2 = H(map, linkedHashMap2);
                        if (mapH2 == null) {
                            i11 = 0;
                            str16 = "";
                        } else {
                            str23 = "general_pk_id";
                            str24 = "pk_id";
                            strJ = c.a.j(mapH2, "general_pk_id", "", "pk_id");
                            String strValueOf6 = String.valueOf(mapH2.getOrDefault("general_naturalskill_id", ""));
                            it4 = w1.f0("Skill", map).iterator();
                            iMax4 = 0;
                            while (it4.hasNext()) {
                                Iterator it24 = it4;
                                map6 = (Map) it4.next();
                                String str41 = str24;
                                String strValueOf7 = String.valueOf(map6.getOrDefault(str24, str32));
                                String str42 = str23;
                                String strValueOf8 = String.valueOf(map6.getOrDefault(str23, str32));
                                String str43 = str32;
                                if (c.a.B(map6, "is_natural", str9, str8)) {
                                    str25 = str8;
                                } else {
                                    str25 = str8;
                                    if (Boolean.TRUE.equals(map6.get("is_natural")) && (strValueOf6.isEmpty() || !strValueOf6.equals(strValueOf7))) {
                                        z4 = false;
                                    }
                                    if ((!strJ.isEmpty() || strJ.equals(strValueOf8) || (!strValueOf6.isEmpty() && strValueOf6.equals(strValueOf7))) && z4) {
                                    }
                                    str32 = str43;
                                    it4 = it24;
                                    str24 = str41;
                                    str23 = str42;
                                    str8 = str25;
                                }
                                z4 = true;
                                iMax4 = !strJ.isEmpty() ? Math.max(iMax4, b0(b0(1, "level", map6), "skill_level", map6)) : Math.max(iMax4, b0(b0(1, "level", map6), "skill_level", map6));
                                str32 = str43;
                                it4 = it24;
                                str24 = str41;
                                str23 = str42;
                                str8 = str25;
                            }
                            str16 = str32;
                            i11 = iMax4;
                        }
                        if (i11 >= iB9) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    } else {
                        str15 = str15;
                        i7 = i7;
                        str11 = "add";
                        linkedHashMap2 = linkedHashMap2;
                        str16 = "";
                        str10 = "Skill";
                    }
                    if ("33".equals(str14)) {
                        str18 = str15;
                        linkedHashMap = linkedHashMap2;
                        iB8 = b0(iB14, str18, linkedHashMap);
                        obj7 = map.get("Combat");
                        if (obj7 instanceof List) {
                            iMax3 = X((List) obj7);
                            str17 = str11;
                        } else if (obj7 instanceof Map) {
                            Map map14 = (Map) obj7;
                            str17 = str11;
                            iMax3 = Math.max(X(map14.get(str17)), X(map14.get("upd")));
                        } else {
                            str17 = str11;
                            iMax3 = 0;
                        }
                        if (iMax3 >= iB8) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    } else {
                        str17 = str11;
                        str18 = str15;
                        linkedHashMap = linkedHashMap2;
                    }
                    if ("12".equals(str14)) {
                        str19 = "limit_second";
                        iB7 = b0(iB14, str19, linkedHashMap);
                        mapH = H(map, linkedHashMap);
                        str32 = str16;
                        if (mapH == null) {
                            strValueOf = String.valueOf(linkedHashMap.getOrDefault(str18, str32));
                            strValueOf.hashCode();
                            switch (strValueOf) {
                                case "1":
                                    str21 = "attack";
                                    str22 = new String[]{"base_".concat(str21)}[0];
                                    if (mapH.containsKey(str22)) {
                                        dDoubleValue = 0.0d;
                                        break;
                                    } else {
                                        obj6 = mapH.get(str22);
                                        if (obj6 instanceof Number) {
                                            dDoubleValue = ((Number) obj6).doubleValue();
                                        } else {
                                            try {
                                                dDoubleValue = Double.parseDouble(String.valueOf(obj6));
                                            } catch (NumberFormatException unused) {
                                                dDoubleValue = 0.0d;
                                            }
                                        }
                                        break;
                                    }
                                    break;
                                case "2":
                                    str21 = "defense";
                                    str22 = new String[]{"base_".concat(str21)}[0];
                                    if (mapH.containsKey(str22)) {
                                        obj6 = mapH.get(str22);
                                        if (obj6 instanceof Number) {
                                            dDoubleValue = ((Number) obj6).doubleValue();
                                        } else {
                                            dDoubleValue = Double.parseDouble(String.valueOf(obj6));
                                        }
                                        break;
                                    } else {
                                        dDoubleValue = 0.0d;
                                        break;
                                    }
                                    break;
                                case "3":
                                    str21 = "hp";
                                    str22 = new String[]{"base_".concat(str21)}[0];
                                    if (mapH.containsKey(str22)) {
                                        obj6 = mapH.get(str22);
                                        if (obj6 instanceof Number) {
                                            dDoubleValue = ((Number) obj6).doubleValue();
                                        } else {
                                            dDoubleValue = Double.parseDouble(String.valueOf(obj6));
                                        }
                                        break;
                                    } else {
                                        dDoubleValue = 0.0d;
                                        break;
                                    }
                                    break;
                                case "4":
                                    str21 = "wisdom";
                                    str22 = new String[]{"base_".concat(str21)}[0];
                                    if (mapH.containsKey(str22)) {
                                        obj6 = mapH.get(str22);
                                        if (obj6 instanceof Number) {
                                            dDoubleValue = ((Number) obj6).doubleValue();
                                        } else {
                                            dDoubleValue = Double.parseDouble(String.valueOf(obj6));
                                        }
                                        break;
                                    } else {
                                        dDoubleValue = 0.0d;
                                        break;
                                    }
                                    break;
                                default:
                                    dDoubleValue = 0.0d;
                                    break;
                            }
                        } else {
                            dDoubleValue = 0.0d;
                        }
                        str2 = str9;
                        if (dDoubleValue >= iB7) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    } else {
                        str2 = str9;
                        str19 = "limit_second";
                        str32 = str16;
                    }
                    if ("25".equals(str14)) {
                        i8 = i7;
                        iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_total_cultivate_times", "total_cultivate_times", "cultivate_total_times")));
                    } else {
                        i8 = i7;
                    }
                    if ("26".equals(str14)) {
                        iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_total_breakthrough_times", "surrender_total_insight_times", "total_breakthrough_times", "total_insight_times")));
                    }
                    if ("28".equals(str14)) {
                        iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_total_skill_upgrade_times", "skill_total_upgrade_times", "total_skill_upgrade_times")));
                    }
                    if (str7.equals(str14)) {
                        iY2 = Y(map, "dungeon_total_fight_times", "surrender_dungeon_fight_times");
                        mapE0 = e0(map.get("dungeon_fight_counts"));
                        for (it3 = linkedHashSet2.iterator(); it3.hasNext(); it3 = it3) {
                            String str44 = (String) it3.next();
                            iY2 = Math.max(Math.max(iY2, f0(str44, mapE0)), f0(Z(str44), mapE0));
                        }
                        iMax6 = Math.max(iMax6, i(iB14, i8, iY2));
                    }
                    if ("30".equals(str14)) {
                        iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_total_god_skill_book_compose_times", "god_skill_book_compose_times", "skill_book_compose_times")));
                    }
                    if ("31".equals(str14)) {
                        iB6 = b0(iB14, str18, linkedHashMap);
                        iY = Y(map, "max_skill_level", "skill_max_level");
                        for (it2 = w1.f0(str10, map).iterator(); it2.hasNext(); it2 = it2) {
                            Map map15 = (Map) it2.next();
                            iY = Math.max(iY, b0(b0(0, "level", map15), "skill_level", map15));
                        }
                        if (iY >= iB6) {
                            iMax6 = Math.max(iMax6, iB14);
                        }
                    }
                    if ("37".equals(str14)) {
                        iB5 = b0(0, str19, linkedHashMap);
                        linkedHashSetP1 = p0(linkedHashMap);
                        if (linkedHashSetP1.isEmpty()) {
                            i10 = 0;
                        } else {
                            obj4 = map.get("EvolutionInfo");
                            if (obj4 instanceof Map) {
                                obj5 = ((Map) obj4).get(str17);
                                if (obj5 instanceof List) {
                                    iMax2 = 0;
                                    for (Object obj17 : (List) obj5) {
                                        if (obj17 instanceof Map) {
                                            map5 = (Map) obj17;
                                            if (b0(0, "status", map5) != 1) {
                                                str20 = str37;
                                            } else {
                                                str20 = str37;
                                                if (!linkedHashSetP1.contains(String.valueOf(map5.getOrDefault(str20, str32)))) {
                                                    iMax2 = Math.max(iMax2, (b0(0, "evolution_level", map5) * 10) + b0(0, "sub_level", map5));
                                                }
                                            }
                                        } else {
                                            str20 = str37;
                                        }
                                        str37 = str20;
                                    }
                                    i10 = iMax2;
                                } else {
                                    i10 = 0;
                                }
                            } else {
                                i10 = 0;
                            }
                        }
                        if (iB5 > 0 || i10 < iB5) {
                            iMax = 0;
                        }
                    } else {
                        if ("35".equals(str14)) {
                            linkedHashSetP0 = p0(linkedHashMap);
                            if (linkedHashSetP0.isEmpty()) {
                                z3 = false;
                            } else {
                                it = w1.f0("EvolutionInfo", map).iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        map4 = (Map) it.next();
                                        if (b0(0, "status", map4) == 1 && linkedHashSetP0.contains(String.valueOf(map4.getOrDefault(str37, map4.getOrDefault("resource_id", str32))))) {
                                            z3 = true;
                                        }
                                    } else {
                                        z3 = false;
                                    }
                                }
                            }
                            if (z3) {
                                iMax6 = Math.max(iMax6, iB14);
                            }
                        }
                        if ("21".equals(str14)) {
                            iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_ladder_rank_hours", "ladder_rank_top_hours", "ladder_top_rank_hours")));
                        }
                        if ("41".equals(str14)) {
                            iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_ladder_rank_total_hours", "ladder_rank_total_top_hours", "ladder_total_top_rank_hours")));
                        }
                        if ("23".equals(str14)) {
                            iB1 = b0(1, str18, linkedHashMap);
                            if (iB1 <= 0) {
                                iB1 = 1;
                            }
                            iB2 = b0(0, "tower_best_rank", map);
                            iB3 = b0(0, "tower_last_run_rank", map);
                            if (iB3 > 0 && (iB2 <= 0 || iB3 < iB2)) {
                                iB2 = iB3;
                            }
                            iB4 = b0(b0(0, "tower_current_rank", map), "tower_rank", map);
                            if (iB4 > 0 && (iB2 <= 0 || iB4 < iB2)) {
                                iB2 = iB4;
                            }
                            if (iB2 > 0 || iB2 > Math.max(1, iB1)) {
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                            if (z2) {
                                iMax6 = Math.max(iMax6, iB14);
                            }
                        }
                        if ("20".equals(str14)) {
                            iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_tower_rank_days", "tower_rank_top_days", "tower_top_rank_days")));
                        }
                        if ("40".equals(str14)) {
                            iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_tower_rank_total_days", "tower_rank_total_top_days", "tower_total_top_rank_days")));
                        }
                        if ("34".equals(str14)) {
                            linkedHashSet = linkedHashSet2;
                            int iV0 = v0(map, "god_weapon_forge_progress", linkedHashSet, "surrender_god_weapon_forge_progress");
                            iB0 = b0(0, str18, linkedHashMap);
                            int iB15 = b0(0, str19, linkedHashMap);
                            if (iB0 > 0 || iB15 <= 0) {
                                i9 = 0;
                            } else {
                                String strValueOf9 = String.valueOf(iB0);
                                int i22 = iB15 / 100;
                                int i23 = iB15 % 100;
                                Iterator it25 = w1.f0("MagicalEqu", map).iterator();
                                while (true) {
                                    if (it25.hasNext()) {
                                        Map map16 = (Map) it25.next();
                                        if (c.a.B(map16, str37, str32, strValueOf9)) {
                                            String str45 = strValueOf9;
                                            int iB16 = b0(b0(1, "magic_vip_level", map16), "magic_level", map16);
                                            Iterator it26 = it25;
                                            int iB17 = b0(0, "magic_sub_level", map16);
                                            if (iB16 > i22 || (iB16 == i22 && iB17 >= i23)) {
                                                i9 = 1;
                                            } else {
                                                strValueOf9 = str45;
                                                it25 = it26;
                                            }
                                        }
                                    } else {
                                        i9 = 0;
                                    }
                                }
                            }
                            iMax6 = Math.max(iMax6, i(iB14, i8, Math.max(iV0, i9)));
                        } else {
                            linkedHashSet = linkedHashSet2;
                        }
                        if ("36".equals(str14)) {
                            iMax6 = Math.max(iMax6, i(iB14, i8, Y(map, "surrender_total_evolution_box_open_times", "evolution_box_open_times")));
                        }
                        if ("38".equals(str14)) {
                            iMax6 = Math.max(iMax6, i(iB14, i8, v0(map, "evolution_battle_counts", linkedHashSet, "surrender_total_evolution_battle_times")));
                        }
                        if ("39".equals(str14)) {
                            iB14 = Math.max(iMax6, i(iB14, i8, Y(map, "ladder_total_rank_salary", "total_ladder_rank_salary", "surrender_ladder_rank_salary")));
                        } else {
                            iB14 = iMax6;
                        }
                    }
                    iMax = iB14;
                }
                z = false;
                if (z) {
                    obj14 = map.get("dungeon_stars");
                    if (obj14 instanceof String) {
                        str30 = (String) obj14;
                        it16 = linkedHashSet2.iterator();
                        while (true) {
                            if (it16.hasNext()) {
                                str5 = str33;
                                str31 = (String) it16.next();
                                str3 = str35;
                                strZ = Z(str31);
                                str = str36;
                                str7 = str40;
                                if (!str30.contains("\"" + strZ + "\"")) {
                                    if (!strZ.equals(str31)) {
                                        if (str30.contains("\"" + str31 + "\"")) {
                                        }
                                    }
                                    str35 = str3;
                                    str33 = str5;
                                    str36 = str;
                                    str40 = str7;
                                }
                            } else {
                                str = str36;
                                str3 = str35;
                                str5 = str33;
                                str7 = str40;
                                mapE1 = e0(obj14);
                                it15 = linkedHashSet2.iterator();
                                while (true) {
                                    if (it15.hasNext()) {
                                        str29 = (String) it15.next();
                                        if (f0(Z(str29), mapE1) > 0) {
                                        }
                                    } else {
                                        z10 = false;
                                    }
                                }
                            }
                            z10 = true;
                        }
                    } else {
                        str = str36;
                        str3 = str35;
                        str5 = str33;
                        str7 = str40;
                        mapE1 = e0(obj14);
                        it15 = linkedHashSet2.iterator();
                        while (true) {
                            if (it15.hasNext()) {
                                str29 = (String) it15.next();
                                if (f0(Z(str29), mapE1) > 0) {
                                }
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        }
                    }
                    if (z10) {
                        iMax6 = Math.max(iMax6, iB14);
                    }
                } else {
                    str = "type";
                    str3 = "surrender_type";
                    str5 = "map_id";
                    str7 = "29";
                }
                if ("3".equals(strValueOf4)) {
                    if (Y(map, "user_vip_level", "vip_level", "vip") >= b0(iB14, "limit_first", linkedHashMap2)) {
                        iMax6 = Math.max(iMax6, iB14);
                    }
                }
                if ("6".equals(strValueOf4)) {
                    iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "tower_total_challenge_times", "tower_total_fight_times", "surrender_tower_challenge_times")));
                }
                if ("4".equals(strValueOf4)) {
                    iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "arena_total_fight_times", "competition_total_fight_times", "surrender_total_arena_fights")));
                }
                if ("7".equals(strValueOf4)) {
                    if (Y(map, "tower_max_point_progress", "tower_last_run_max_point_progress", "tower_last_run_point_progress", "tower_point_progress") >= b0(iB14, "limit_first", linkedHashMap2)) {
                        iMax6 = Math.max(iMax6, iB14);
                    }
                }
                if ("8".equals(strValueOf4)) {
                    iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "ladder_total_fight_times", "ladder_total_battle_times", "surrender_ladder_fight_times")));
                }
                if ("9".equals(strValueOf4)) {
                    int iMax8 = Math.max(1, b0(iB14, "limit_first", linkedHashMap2));
                    strArr = new String[]{"ladder_best_rank", "ladder_rank", "best_ladder_rank"};
                    iMin = Integer.MAX_VALUE;
                    i17 = 0;
                    while (i17 < i5) {
                        iC1 = c0(map.get(strArr[i17]), 0);
                        if (iC1 > 0) {
                            iMin = Math.min(iMin, iC1);
                        }
                        i17++;
                    }
                    obj13 = map.get("user_info");
                    if (obj13 instanceof Map) {
                        map11 = (Map) obj13;
                        i18 = 0;
                        while (i18 < 3) {
                            Map map17 = map11;
                            iC0 = c0(map11.get(strArr[i18]), 0);
                            if (iC0 > 0) {
                                iMin = Math.min(iMin, iC0);
                            }
                            i18++;
                            map11 = map17;
                        }
                    }
                    if (iMin == Integer.MAX_VALUE) {
                        iMin = 0;
                    }
                    if (iMin > 0) {
                        iMax6 = Math.max(iMax6, iB14);
                    }
                }
                if ("14".equals(strValueOf4)) {
                    int iY4 = Y(map, "friend_count", "total_friend_count");
                    int size3 = w1.f0("Friend", map).size();
                    obj12 = map.get("relationship_friends");
                    if (obj12 instanceof List) {
                        size = ((List) obj12).size();
                    } else {
                        size = 0;
                    }
                    iMax6 = Math.max(iMax6, i(iB14, iB13, Math.max(iY4, Math.max(size3, size))));
                }
                if ("15".equals(strValueOf4)) {
                    iMax6 = Math.max(iMax6, i(iB14, iB13, Y(map, "activity_cumulative_login_days", "total_login_days", "login_days", "user_login_days", "user_count_login_days")));
                }
                str8 = "1";
                if ("1".equals(strValueOf4)) {
                    if (linkedHashSet2.isEmpty()) {
                        i15 = 0;
                        str9 = str39;
                    } else {
                        obj11 = map.get("surrender_progress");
                        if (obj11 instanceof Map) {
                            i15 = 0;
                            str9 = str39;
                        } else {
                            map10 = (Map) obj11;
                            it13 = linkedHashSet2.iterator();
                            i16 = 0;
                            while (it13.hasNext()) {
                                str27 = (String) it13.next();
                                if (b0(0, str27, map10) <= 0) {
                                    it14 = it13;
                                    str28 = str39;
                                    if (S(map10.getOrDefault("claimed_" + str27, str28))) {
                                    }
                                    str39 = str28;
                                    it13 = it14;
                                } else {
                                    it14 = it13;
                                    str28 = str39;
                                }
                                i16++;
                                str39 = str28;
                                it13 = it14;
                            }
                            str9 = str39;
                            i15 = i16;
                        }
                    }
                    if (i15 > 0) {
                        iMax6 = Math.max(iMax6, Math.min(i15, iB14));
                    }
                } else {
                    str9 = str39;
                }
                str10 = "Skill";
                str11 = "add";
                if ("17".equals(strValueOf4)) {
                    i6 = iB13;
                    if (linkedHashSet2.isEmpty()) {
                        str12 = strValueOf4;
                        i12 = iB14;
                        z5 = false;
                    } else {
                        it5 = w1.f0("Equipment", map).iterator();
                        while (true) {
                            if (it5.hasNext()) {
                                it6 = it5;
                                map7 = (Map) it5.next();
                                str12 = strValueOf4;
                                i12 = iB14;
                                if (linkedHashSet2.contains(String.valueOf(map7.getOrDefault("equipment_id", map7.getOrDefault("id", ""))))) {
                                    z5 = true;
                                } else {
                                    strValueOf4 = str12;
                                    it5 = it6;
                                    iB14 = i12;
                                }
                            } else {
                                str12 = strValueOf4;
                                i12 = iB14;
                                z5 = false;
                            }
                        }
                    }
                    if (z5) {
                        str13 = str38;
                        iB14 = i12;
                        iMax6 = Math.max(iMax6, iB14);
                    } else {
                        if (linkedHashSet2.isEmpty()) {
                            i13 = 0;
                        } else {
                            obj9 = map.get("Atlas");
                            if (obj9 instanceof Map) {
                                i13 = 0;
                            } else {
                                obj10 = ((Map) obj9).get("add");
                                if (obj10 instanceof List) {
                                    i13 = 0;
                                } else {
                                    it10 = ((List) obj10).iterator();
                                    i14 = 0;
                                    while (it10.hasNext()) {
                                        next2 = it10.next();
                                        Iterator it27 = it10;
                                        if (!(next2 instanceof Map)) {
                                            map9 = (Map) next2;
                                            strValueOf2 = String.valueOf(map9.getOrDefault("atlas_status", str9));
                                            if ("1".equals(strValueOf2)) {
                                                z8 = true;
                                            } else {
                                                z8 = true;
                                            }
                                            if (!z8) {
                                                it11 = linkedHashSet2.iterator();
                                                while (true) {
                                                    if (it11.hasNext()) {
                                                        it12 = it11;
                                                        str26 = (String) it11.next();
                                                        if (u(str26, map9)) {
                                                        }
                                                        z9 = true;
                                                    } else {
                                                        z9 = false;
                                                    }
                                                    it11 = it12;
                                                }
                                                if (z9) {
                                                    i14++;
                                                }
                                            }
                                        }
                                        it10 = it27;
                                    }
                                    i13 = i14;
                                }
                            }
                        }
                        if (i13 <= 0) {
                            obj8 = linkedHashMap2.get("source");
                            if (obj8 instanceof List) {
                                str13 = str38;
                                z6 = false;
                            } else {
                                it7 = ((List) obj8).iterator();
                                while (true) {
                                    if (it7.hasNext()) {
                                        next = it7.next();
                                        if (!(next instanceof Map)) {
                                            str13 = str38;
                                            if (c.a.A((Map) next, str13, "18")) {
                                                z6 = true;
                                            } else {
                                                str38 = str13;
                                            }
                                        }
                                    } else {
                                        str13 = str38;
                                        z6 = false;
                                    }
                                }
                            }
                            if (z6) {
                                if (linkedHashSet2.isEmpty()) {
                                    z7 = false;
                                } else {
                                    it8 = w1.f0("Skill", map).iterator();
                                    while (true) {
                                        if (it8.hasNext()) {
                                            map8 = (Map) it8.next();
                                            it9 = it8;
                                            if (linkedHashSet2.contains(String.valueOf(map8.getOrDefault("skill_id", map8.getOrDefault("id", ""))))) {
                                                z7 = true;
                                            } else {
                                                it8 = it9;
                                            }
                                        } else {
                                            z7 = false;
                                        }
                                    }
                                }
                                if (z7) {
                                }
                            }
                            iB14 = i12;
                        } else {
                            str13 = str38;
                        }
                        iB14 = i12;
                        iMax6 = Math.max(iMax6, iB14);
                    }
                } else {
                    str12 = strValueOf4;
                    i6 = iB13;
                    str13 = str38;
                }
                str14 = str12;
                if ("18".equals(str14)) {
                    i7 = i6;
                    iMax6 = Math.max(iMax6, i(iB14, i7, v0(map, "ladder_kill_counts", linkedHashSet2, "surrender_total_ladder_target_kills", "ladder_total_target_kills")));
                } else {
                    i7 = i6;
                }
                if ("22".equals(str14)) {
                    str15 = "limit_first";
                    iB10 = b0(iB14, str15, linkedHashMap2);
                    str6 = str13;
                    mapH3 = H(map, linkedHashMap2);
                    if (mapH3 == null) {
                        iMax5 = 0;
                    } else {
                        iB11 = b0(0, "insight_level", mapH3);
                        if (iB11 <= 0) {
                            iB11 = b0(0, "breachLevel", mapH3);
                        }
                        iMax5 = Math.max(0, iB11 - 1);
                    }
                    if (iMax5 >= iB10) {
                        iMax6 = Math.max(iMax6, iB14);
                    }
                } else {
                    str6 = str13;
                    linkedHashSet2 = linkedHashSet2;
                    str15 = "limit_first";
                    str34 = "source";
                }
                if ("32".equals(str14)) {
                    iB9 = b0(iB14, str15, linkedHashMap2);
                    mapH2 = H(map, linkedHashMap2);
                    if (mapH2 == null) {
                        i11 = 0;
                        str16 = "";
                    } else {
                        str23 = "general_pk_id";
                        str24 = "pk_id";
                        strJ = c.a.j(mapH2, "general_pk_id", "", "pk_id");
                        String strValueOf10 = String.valueOf(mapH2.getOrDefault("general_naturalskill_id", ""));
                        it4 = w1.f0("Skill", map).iterator();
                        iMax4 = 0;
                        while (it4.hasNext()) {
                            Iterator it28 = it4;
                            map6 = (Map) it4.next();
                            String str46 = str24;
                            String strValueOf11 = String.valueOf(map6.getOrDefault(str24, str32));
                            String str47 = str23;
                            String strValueOf12 = String.valueOf(map6.getOrDefault(str23, str32));
                            String str48 = str32;
                            if (c.a.B(map6, "is_natural", str9, str8)) {
                                str25 = str8;
                                if (Boolean.TRUE.equals(map6.get("is_natural"))) {
                                }
                                if (!strJ.isEmpty()) {
                                }
                                str32 = str48;
                                it4 = it28;
                                str24 = str46;
                                str23 = str47;
                                str8 = str25;
                            } else {
                                str25 = str8;
                            }
                            z4 = true;
                            if (!strJ.isEmpty()) {
                            }
                            str32 = str48;
                            it4 = it28;
                            str24 = str46;
                            str23 = str47;
                            str8 = str25;
                        }
                        str16 = str32;
                        i11 = iMax4;
                    }
                    if (i11 >= iB9) {
                        iMax6 = Math.max(iMax6, iB14);
                    }
                } else {
                    str15 = str15;
                    i7 = i7;
                    str11 = "add";
                    linkedHashMap2 = linkedHashMap2;
                    str16 = "";
                    str10 = "Skill";
                }
                if ("33".equals(str14)) {
                    str18 = str15;
                    linkedHashMap = linkedHashMap2;
                    iB8 = b0(iB14, str18, linkedHashMap);
                    obj7 = map.get("Combat");
                    if (obj7 instanceof List) {
                        iMax3 = X((List) obj7);
                        str17 = str11;
                    } else if (obj7 instanceof Map) {
                        Map map18 = (Map) obj7;
                        str17 = str11;
                        iMax3 = Math.max(X(map18.get(str17)), X(map18.get("upd")));
                    } else {
                        str17 = str11;
                        iMax3 = 0;
                    }
                    if (iMax3 >= iB8) {
                        iMax6 = Math.max(iMax6, iB14);
                    }
                } else {
                    str17 = str11;
                    str18 = str15;
                    linkedHashMap = linkedHashMap2;
                }
                if ("12".equals(str14)) {
                    str19 = "limit_second";
                    iB7 = b0(iB14, str19, linkedHashMap);
                    mapH = H(map, linkedHashMap);
                    str32 = str16;
                    if (mapH == null) {
                        strValueOf = String.valueOf(linkedHashMap.getOrDefault(str18, str32));
                        strValueOf.hashCode();
                        switch (strValueOf) {
                            case 49:
                                if (!strValueOf.equals("1")) {
                                }
                                break;
                            case 50:
                                if (!strValueOf.equals("2")) {
                                }
                                break;
                            case 51:
                                if (!strValueOf.equals("3")) {
                                }
                                break;
                            case 52:
                                if (!strValueOf.equals("4")) {
                                }
                                break;
                            default:
                                break;
                        }
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Switch insn not found in header
                            	at java.base/java.util.Objects.requireNonNull(Objects.java:246)
                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                            	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                            	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                            	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                            	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                            	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                            	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                            	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                            	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                            	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                            	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                            	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                            */
                        /*
                            Method dump skipped, instruction units count: 3222
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.sgscq.vpn.handler.d0.p(java.util.List, java.util.Map, java.util.Map, java.util.Map):com.sgscq.vpn.handler.c0");
                    }

                    public static LinkedHashSet p0(LinkedHashMap linkedHashMap) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        d(linkedHashSet, linkedHashMap.get("limit_first"));
                        if (linkedHashSet.size() <= 1) {
                            return linkedHashSet;
                        }
                        String str = (String) linkedHashSet.iterator().next();
                        linkedHashSet.clear();
                        linkedHashSet.add(str);
                        return linkedHashSet;
                    }

                    public static void q(Object obj, String str, LinkedHashMap linkedHashMap, String str2, w1 w1Var) {
                        if (obj instanceof List) {
                            Iterator it = ((List) obj).iterator();
                            while (it.hasNext()) {
                                q(it.next(), str, linkedHashMap, str2, w1Var);
                            }
                            return;
                        }
                        if (obj instanceof Map) {
                            Map map = (Map) obj;
                            Object obj2 = map.get(str);
                            if (obj2 instanceof List) {
                                for (Object obj3 : (List) obj2) {
                                    if (obj3 instanceof List) {
                                        List list = (List) obj3;
                                        if (list.size() >= 3) {
                                            String strValueOf = String.valueOf(list.get(0));
                                            int iL2 = w1.l2(String.valueOf(list.get(2)), 5);
                                            if (iL2 != 6 || (!str2.isEmpty() && str2.equals(strValueOf))) {
                                                if (!"600213".equals(strValueOf) && iL2 != 8) {
                                                    a(iL2, strValueOf, linkedHashMap);
                                                    String str3 = (String) C(w1Var).get(strValueOf);
                                                    if (str3 != null && !str3.isEmpty() && !str3.equals(strValueOf)) {
                                                        a(iL2, str3, linkedHashMap);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            for (Map.Entry entry : map.entrySet()) {
                                if (!str.equals(entry.getKey())) {
                                    q(entry.getValue(), str, linkedHashMap, str2, w1Var);
                                }
                            }
                        }
                    }

                    public static Map q0(String str, List list, Map map) {
                        Map map2;
                        List<Map> arrayList;
                        Iterator it = list.iterator();
                        do {
                            if (!it.hasNext()) {
                                map2 = null;
                                break;
                            }
                            map2 = (Map) it.next();
                        } while (!(l0(0, "effect_time", map2) == 0 && str.equals(T(map2))));
                        String[] strArr = f804i;
                        if (map2 == null) {
                            for (String str2 : strArr) {
                                Object obj = map.get("Item");
                                if (obj instanceof Map) {
                                    Object obj2 = ((Map) obj).get(str2);
                                    arrayList = !(obj2 instanceof List) ? new ArrayList() : (List) obj2;
                                } else {
                                    arrayList = new ArrayList();
                                }
                                for (Map map3 : arrayList) {
                                    if (l0(0, "effect_time", map3) == 0 && str.equals(T(map3))) {
                                        Object obj3 = map.get("Item");
                                        boolean z = obj3 instanceof Map;
                                        if (!z || ((Map) obj3).get("add") != list) {
                                            LinkedHashMap linkedHashMap = z ? new LinkedHashMap((Map) obj3) : new LinkedHashMap();
                                            linkedHashMap.put("add", list);
                                            if (!(linkedHashMap.get("del") instanceof List)) {
                                                linkedHashMap.put("del", new ArrayList());
                                            }
                                            if (!(linkedHashMap.get("upd") instanceof List)) {
                                                linkedHashMap.put("upd", new ArrayList());
                                            }
                                            map.put("Item", linkedHashMap);
                                        }
                                        list.add(map3);
                                        map2 = map3;
                                        break;
                                    }
                                }
                                if (map2 != null) {
                                    break;
                                }
                            }
                        }
                        if (map2 == null) {
                            return null;
                        }
                        String strValueOf = String.valueOf(map2.getOrDefault("pk_id", ""));
                        if (!strValueOf.isEmpty()) {
                            Object obj4 = map.get("Item");
                            if (obj4 instanceof Map) {
                                Map map4 = (Map) obj4;
                                for (String str3 : strArr) {
                                    Object obj5 = map4.get(str3);
                                    if (obj5 instanceof List) {
                                        ArrayList arrayList2 = new ArrayList();
                                        boolean z2 = false;
                                        for (Object obj6 : (List) obj5) {
                                            if ((obj6 instanceof Map) && c.a.A((Map) obj6, "pk_id", strValueOf)) {
                                                z2 = true;
                                            } else {
                                                arrayList2.add(obj6);
                                            }
                                        }
                                        if (z2) {
                                            map4.put(str3, arrayList2);
                                        }
                                    }
                                }
                            }
                        }
                        return map2;
                    }

                    public static void r(String str, String str2, LinkedHashMap linkedHashMap, Map map) {
                        linkedHashMap.put("id", str);
                        linkedHashMap.put("skill_code", str);
                        linkedHashMap.put("card_type", "4");
                        linkedHashMap.put("level", "1");
                        if (str2 != null && !str2.isEmpty() && !str2.equals(str)) {
                            linkedHashMap.put("skill_name", str2);
                            linkedHashMap.put("name", str2);
                        }
                        if (map != null) {
                            Object obj = map.get("skill_code");
                            if (obj != null && !String.valueOf(obj).isEmpty()) {
                                linkedHashMap.put("skill_code", obj);
                            }
                            Object obj2 = map.get("skill_type");
                            if (obj2 != null && !String.valueOf(obj2).isEmpty()) {
                                linkedHashMap.put("type", String.valueOf(obj2));
                            }
                            linkedHashMap.put("grade", Integer.valueOf(l0(0, "grade", map)));
                        }
                    }

                    public static String r0(Object obj, String str) {
                        if (obj == null) {
                            return str;
                        }
                        String strValueOf = String.valueOf(obj);
                        return (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) ? str : strValueOf;
                    }

                    /* JADX WARN: Code duplicated, block: B:40:0x00d3  */
                    public static List s(Map map, ArrayList arrayList, Random random, String str) {
                        List list;
                        if (!c.a.B(map, "evolution_chest_preview_batch", "", str)) {
                            list = null;
                            break;
                        }
                        Object obj = map.get("evolution_chest_preview");
                        if (!(obj instanceof List)) {
                            list = null;
                            break;
                        }
                        list = (List) obj;
                        if (list.size() == 8) {
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                Map map2 = (Map) it.next();
                                linkedHashMap.put(y(map2), map2);
                            }
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            Iterator it2 = list.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    if (linkedHashSet.size() >= Math.min(8, linkedHashMap.size())) {
                                        break;
                                    }
                                    break;
                                }
                                Object next = it2.next();
                                if (next instanceof Map) {
                                    Map map3 = (Map) next;
                                    String strY = y(map3);
                                    Map map4 = (Map) linkedHashMap.get(strY);
                                    if (map4 != null) {
                                        if (l0(l0(1, "num", map3), "item_num", map3) == l0(l0(1, "num", map4), "item_num", map4) && l0(l0(1, "item_num", map3), "num", map3) == l0(l0(1, "item_num", map4), "num", map4) && l0(-1, "item_type", map3) == l0(-1, "item_type", map4) && l0(1, "grade", map3) == l0(1, "grade", map4) && l0(1, "type", map3) == l0(1, "type", map4)) {
                                            linkedHashSet.add(strY);
                                        }
                                    }
                                }
                                list = null;
                                break;
                            }
                        }
                        list = null;
                        break;
                        if (list != null) {
                            return list;
                        }
                        ArrayList arrayListN0 = n0(arrayList, random);
                        map.put("evolution_chest_preview", arrayListN0);
                        map.put("evolution_chest_preview_batch", str);
                        return arrayListN0;
                    }

                    public static LinkedHashSet s0(Object obj) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        if (obj != null) {
                            for (String str : String.valueOf(obj).split(",")) {
                                String strTrim = str.trim();
                                if (!strTrim.isEmpty() && !"TeamGeneral".equals(strTrim)) {
                                    linkedHashSet.add(strTrim);
                                }
                            }
                        }
                        return linkedHashSet;
                    }

                    public static void t(Map map) {
                        String strB = c7.b();
                        String strValueOf = String.valueOf(map.getOrDefault("evolution_chest_day", ""));
                        if (!strValueOf.isEmpty() && !strB.equals(strValueOf)) {
                            map.put("evolution_chest_free_times", 1);
                            map.put("evolution_chest_free_refresh_times", 3);
                        }
                        map.put("evolution_chest_day", strB);
                        if (!map.containsKey("evolution_chest_free_times")) {
                            map.put("evolution_chest_free_times", 1);
                        }
                        if (!map.containsKey("evolution_chest_refresh_times")) {
                            map.put("evolution_chest_refresh_times", 0);
                        }
                        if (!map.containsKey("evolution_chest_open_times")) {
                            map.put("evolution_chest_open_times", 0);
                        }
                        if (map.containsKey("evolution_chest_free_refresh_times")) {
                            return;
                        }
                        map.put("evolution_chest_free_refresh_times", 3);
                    }

                    public static Map t0(Map map) {
                        return (map == null || !(map.get("surrender_progress") instanceof Map)) ? new LinkedHashMap() : (Map) map.get("surrender_progress");
                    }

                    public static boolean u(String str, Map map) {
                        String[] strArr = {"pk_id", "general_id", "skill_id", "equipment_id", "item_id", "id", "resource_id"};
                        for (int i2 = 0; i2 < 7; i2++) {
                            Object obj = map.get(strArr[i2]);
                            if (obj != null && str.equals(String.valueOf(obj))) {
                                return true;
                            }
                        }
                        return false;
                    }

                    public static boolean u0(Map map) {
                        boolean zD2 = w1.D2(map);
                        HashSet hashSet = new HashSet();
                        Iterator it = w1.f0("Equipment", map).iterator();
                        while (it.hasNext()) {
                            String strK = c.a.k((Map) it.next(), "id", "", "equip_id", "equipment_id");
                            if (!strK.isEmpty()) {
                                hashSet.add(strK);
                            }
                        }
                        for (Map map2 : w1.f0("Atlas", map)) {
                            if (b0(0, "type", map2) == 3 && hashSet.contains(c.a.k(map2, "pk_id", "", "resource_id", "equipment_id")) && b0(0, "atlas_status", map2) < 1) {
                                map2.put("atlas_status", "1");
                                map2.put("general_status", "0");
                                zD2 = true;
                            }
                        }
                        HashSet hashSet2 = new HashSet();
                        Iterator it2 = w1.f0("Skill", map).iterator();
                        while (it2.hasNext()) {
                            String strJ = c.a.j((Map) it2.next(), "id", "", "skill_id");
                            if (!strJ.isEmpty() && !"null".equals(strJ)) {
                                hashSet2.add(strJ);
                            }
                        }
                        for (Map map3 : w1.f0("Atlas", map)) {
                            if (b0(0, "type", map3) == 4 && hashSet2.contains(c.a.k(map3, "pk_id", "", "resource_id", "skill_id")) && b0(0, "atlas_status", map3) < 1) {
                                map3.put("atlas_status", "1");
                                zD2 = true;
                            }
                        }
                        return zD2;
                    }

                    public static String v(int i2) {
                        StringBuilder sb = new StringBuilder();
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(t0.C(5));
                        arrayList.addAll(t0.o(t0.C(5)));
                        Collections.sort(arrayList);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(c7.b());
                        sb2.append("|");
                        StringBuilder sb3 = new StringBuilder();
                        Iterator it = arrayList.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb3.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                }
                                sb3.append((CharSequence) ",");
                            }
                        }
                        sb2.append(sb3.toString());
                        sb.append(sb2.toString());
                        sb.append("|r");
                        sb.append(i2);
                        return sb.toString();
                    }

                    public static int v0(Map map, String str, LinkedHashSet linkedHashSet, String... strArr) {
                        int iY = Y(map, strArr);
                        Map mapE0 = e0(map.get(str));
                        Iterator it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            iY = Math.max(Math.max(iY, f0(str2, mapE0)), f0(Z(str2), mapE0));
                        }
                        return iY;
                    }

                    public static LinkedHashMap w(String str, Map map) {
                        Object[] objArr = new Object[10];
                        objArr[0] = "code";
                        objArr[1] = 0;
                        objArr[2] = "result";
                        objArr[3] = Boolean.FALSE;
                        objArr[4] = "msg";
                        objArr[5] = str;
                        objArr[6] = "error_code";
                        objArr[7] = "e_evolution_1011";
                        objArr[8] = "chest_list";
                        Object arrayList = new ArrayList();
                        if (map != null) {
                            arrayList = map.getOrDefault("evolution_chest_preview", arrayList);
                        }
                        objArr[9] = arrayList;
                        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, objArr);
                        if (map != null) {
                            f(linkedHashMapZ0, map);
                        }
                        return linkedHashMapZ0;
                    }

                    public static LinkedHashMap w0(String str, int i2, int i3, int i4) {
                        return p5.z0("item_id", str, "id", str, "item_num", Integer.valueOf(i2), "num", Integer.valueOf(i2), "grant_type", 5, "type", Integer.valueOf(y2.s(i3)), "item_type", Integer.valueOf(i3), "weight", 1, "grade", Integer.valueOf(i4), "is_new", Boolean.TRUE);
                    }

                    public static LinkedHashMap x(boolean z, Map map, List list, String str) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        linkedHashMap.put("ret", 0);
                        linkedHashMap.put("code", 0);
                        linkedHashMap.put("result", Boolean.valueOf(z));
                        linkedHashMap.put("msg", str);
                        linkedHashMap.put("error_code", Integer.valueOf(!z ? 1 : 0));
                        linkedHashMap.put("chest_list", list);
                        f(linkedHashMap, map);
                        return linkedHashMap;
                    }

                    public static String y(Map map) {
                        return l0(5, "grant_type", map) + ":" + String.valueOf(map.getOrDefault("item_id", map.getOrDefault("id", "")));
                    }

                    public static char z(Map map) {
                        if (map == null) {
                            return (char) 0;
                        }
                        if (l0(5, "grant_type", map) == 6) {
                            return 'C';
                        }
                        int iL0 = l0(-1, "item_type", map);
                        if (iL0 == 46 && !O(map)) {
                            return 'A';
                        }
                        if (iL0 == 47) {
                            return 'B';
                        }
                        String str = "";
                        String strJ = c.a.j(map, "id", "", "item_id");
                        int iL1 = l0(l0(1, "num", map), "item_num", map);
                        LinkedHashMap linkedHashMap = f803h;
                        if (linkedHashMap == null) {
                            linkedHashMap = new LinkedHashMap();
                            for (char c2 : f802g) {
                                for (Map map2 : B(c2)) {
                                    String strValueOf = String.valueOf(map2.getOrDefault("item_id", str));
                                    String str2 = str;
                                    int iL2 = l0(l0(1, "num", map2), "item_num", map2);
                                    if (!strValueOf.isEmpty()) {
                                        linkedHashMap.putIfAbsent(strValueOf + "#" + iL2, Character.valueOf(c2));
                                    }
                                    str = str2;
                                }
                            }
                            f803h = linkedHashMap;
                        }
                        Character ch = (Character) linkedHashMap.get(strJ + "#" + iL1);
                        if (ch == null) {
                            return (char) 0;
                        }
                        return ch.charValue();
                    }

                    /* JADX WARN: Code duplicated, block: B:267:0x0808  */
                    /* JADX WARN: Code duplicated, block: B:268:0x080a  */
                    /* JADX WARN: Code duplicated, block: B:273:0x0818  */
                    /* JADX WARN: Code duplicated, block: B:276:0x0826 A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:277:0x0828  */
                    /* JADX WARN: Code duplicated, block: B:278:0x082d  */
                    /* JADX WARN: Code duplicated, block: B:281:0x0840  */
                    /* JADX WARN: Code duplicated, block: B:298:0x08a7  */
                    /* JADX WARN: Code duplicated, block: B:300:0x08ac  */
                    /* JADX WARN: Code duplicated, block: B:302:0x08b6  */
                    /* JADX WARN: Code duplicated, block: B:303:0x08bd  */
                    /* JADX WARN: Code duplicated, block: B:305:0x091a A[DONT_INVERT] */
                    /* JADX WARN: Code duplicated, block: B:306:0x091c  */
                    /* JADX WARN: Code duplicated, block: B:368:0x084f A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:369:0x084c A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:91:0x0299 A[PHI: r29
                      0x0299: PHI (r29v4 java.lang.String) = (r29v3 java.lang.String), (r29v7 java.lang.String) binds: [B:87:0x028c, B:78:0x026d] A[DONT_GENERATE, DONT_INLINE]] */
                    public final byte[] K(String str, Map map) {
                        String str2;
                        Map map2;
                        LinkedHashMap linkedHashMapJ;
                        List listEmptyList;
                        ArrayList arrayList;
                        Map mapT0;
                        Iterator it;
                        Map map3;
                        String strValueOf;
                        boolean zU0;
                        boolean zContainsKey;
                        Map linkedHashMap;
                        w1 w1VarA1;
                        Map map4;
                        k0 k0Var;
                        JSONObject jSONObject;
                        String str3;
                        String str4;
                        String str5;
                        h5 h5Var;
                        String str6;
                        w1 w1Var;
                        k0 k0Var2;
                        String str7;
                        ArrayList arrayList2;
                        Map map5;
                        Object orDefault;
                        String strValueOf2;
                        ArrayList arrayList3;
                        String strM1;
                        String str8;
                        Integer num;
                        if (str == null) {
                            return null;
                        }
                        boolean zEquals = "server.getList".equals(str);
                        k0 k0Var3 = this.f805a;
                        if (zEquals) {
                            ArrayList arrayList4 = new ArrayList();
                            Integer num2 = 1;
                            arrayList4.add(p5.z0("id", num2, "name", "单机服务器", "serverId", num2, "status", num2, "host", "127.0.0.1", "port", Integer.valueOf(k0Var3.f905e)));
                            try {
                                int i2 = 0;
                                for (ArrayList arrayListT1 = p5.t1(k0Var3.f902b.getString("custom_servers", "[]")); i2 < arrayListT1.size(); arrayListT1 = arrayListT1) {
                                    Object obj = arrayListT1.get(i2);
                                    if (obj instanceof Map) {
                                        Map map6 = (Map) obj;
                                        int i3 = i2 + 100;
                                        Object obj2 = map6.get("status");
                                        num = num2;
                                        Integer numValueOf = Integer.valueOf(i3);
                                        Object[] objArr = new Object[10];
                                        objArr[0] = "name";
                                        objArr[1] = String.valueOf(map6.get("name"));
                                        objArr[2] = "serverId";
                                        objArr[3] = Integer.valueOf(i3);
                                        objArr[4] = "status";
                                        if (obj2 == null) {
                                            obj2 = num;
                                        }
                                        objArr[5] = obj2;
                                        objArr[6] = "host";
                                        objArr[7] = String.valueOf(map6.get("host"));
                                        objArr[8] = "port";
                                        objArr[9] = map6.get("port");
                                        arrayList4.add(p5.z0("id", numValueOf, objArr));
                                    } else {
                                        num = num2;
                                    }
                                    i2++;
                                    num2 = num;
                                }
                            } catch (Exception e2) {
                                c.a.u(e2, new StringBuilder("Custom servers parse: "), "SGSCQ_SRV");
                            }
                            return k0Var3.n(p5.s1(p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "data", p5.z0("serverList", arrayList4, new Object[0]))));
                        }
                        if ("notify.activate".equals(str)) {
                            Boolean bool = Boolean.TRUE;
                            return k0Var3.n(p5.s1(p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "isActive", bool)));
                        }
                        String str9 = "general_id";
                        String str10 = "user_power";
                        String str11 = "user_energy";
                        String str12 = "user_gold";
                        String str13 = "Atlas";
                        if (!"atlas.getList".equals(str)) {
                            String str14 = "Atlas";
                            if (!"atlas.getSurrenderList".equals(str)) {
                                if (!"menu.notice".equals(str)) {
                                    if (str.startsWith("evolutionChest.")) {
                                        return !com.sgscq.vpn.cloud.m0.q1(str) ? k0Var3.n(p5.s1(com.sgscq.vpn.cloud.m0.Z2())) : L(str, map);
                                    }
                                    return null;
                                }
                                try {
                                    LinkedHashMap linkedHashMapM = m();
                                    linkedHashMapM.put("notice", p5.s1(p5.v0(p5.z0("title", "且玩且珍惜", "content", "只要没有不可抗力或其他外部因素影响，我会尽力让游戏一直更新下去。\n\n云功能的初衷，是希望让大家多一点类似服务器的游戏体验。请不要将其用于外挂、刷取资源或恶意利用 BUG，也希望大家共同珍惜这份功能。\n\n本游戏始终以单机版形式提供，云功能仅作为附加体验，不代表、也不承诺提供持续或稳定的联机服务。\n\n爱发电仅代表个人自愿支持，不构成任何服务购买行为，也不承诺向发电用户提供额外服务。\n\n使用云功能时，会同步爱发电账户标识、游戏角色与存档数据，以及维持登录和防滥用所需的设备、会话标识。这些数据仅用于云存档、云对手、公会战、天梯、抢夺、虎牢关等原版联机相关体验及必要的账号安全；不会主动读取或上传通讯录、短信、相册、精确位置等与游戏无关的个人敏感信息。"))));
                                    return k0Var3.n(p5.s1(linkedHashMapM));
                                } catch (Exception unused) {
                                    return k0Var3.n(p5.s1(m()));
                                }
                            }
                            String strE = k0Var3.e(map);
                            String str15 = "";
                            String str16 = (String) map.getOrDefault("general_id", "");
                            h5 h5Var2 = k0Var3.f904d;
                            Map mapW0 = h5Var2.w0(strE);
                            if (mapW0 == null) {
                                mapW0 = new LinkedHashMap();
                            }
                            boolean zU1 = u0(mapW0);
                            ArrayList arrayListV = V();
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap(t0(mapW0));
                            String strTrim = str16 == null ? "" : str16.trim();
                            Map mapT1 = t0(mapW0);
                            if (!strTrim.isEmpty()) {
                                if (strTrim.isEmpty()) {
                                    str2 = str14;
                                    map2 = null;
                                } else {
                                    Iterator it2 = arrayListV.iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            str2 = str14;
                                            map2 = (Map) it2.next();
                                            if (map2 == null || !c.a.B(map2, "general_id", "", strTrim)) {
                                                str14 = str2;
                                            }
                                        } else {
                                            str2 = str14;
                                            map2 = null;
                                        }
                                    }
                                }
                                if (map2 != null && P(strTrim, mapW0)) {
                                    linkedHashMapJ = n(mapW0, map2, mapT1);
                                    linkedHashMapJ.put("general_id", strTrim);
                                }
                                if (strTrim.isEmpty()) {
                                    listEmptyList = arrayListV;
                                } else if (map2 != null || R(mapW0, map2)) {
                                    listEmptyList = Collections.emptyList();
                                } else {
                                    listEmptyList = Collections.singletonList(map2);
                                }
                                j jVarC = y0.c(listEmptyList, mapW0);
                                if (!strTrim.isEmpty()) {
                                    arrayList = new ArrayList();
                                    mapT0 = t0(mapW0);
                                    it = arrayListV.iterator();
                                    while (it.hasNext()) {
                                        it = it;
                                        map3 = (Map) it.next();
                                        if (map3 == null) {
                                            String str17 = str15;
                                            strValueOf = String.valueOf(map3.getOrDefault("general_id", str15));
                                            if (!strValueOf.isEmpty() && P(strValueOf, mapW0) && !R(mapW0, map3)) {
                                                LinkedHashMap linkedHashMapN = n(mapW0, map3, mapT0);
                                                linkedHashMapN.put("general_id", strValueOf);
                                                arrayList.add(linkedHashMapN);
                                            }
                                            str15 = str17;
                                        }
                                    }
                                    linkedHashMapJ = j();
                                    linkedHashMapJ.put("general_list", arrayList);
                                    linkedHashMapJ.put("list", arrayList);
                                } else if (linkedHashMapJ == null) {
                                    linkedHashMapJ = j();
                                }
                                h(jVarC, linkedHashMapJ);
                                boolean z = !linkedHashMap2.equals(t0(mapW0));
                                zU0 = u0(mapW0) | zU1;
                                zContainsKey = linkedHashMapJ.containsKey("surrender_info");
                                if (zU0 || zContainsKey || z) {
                                    h5Var2.S0(strE, mapW0);
                                }
                                if (zContainsKey) {
                                    if (linkedHashMapJ.get("delta_data") instanceof Map) {
                                        linkedHashMap = (Map) linkedHashMapJ.get("delta_data");
                                    } else {
                                        linkedHashMap = new LinkedHashMap();
                                    }
                                    LinkedHashSet linkedHashSetS0 = s0(linkedHashMapJ.get("cmn_modules"));
                                    linkedHashSetS0.remove("Player");
                                    linkedHashMapJ.put("cmn", p5.u1(h5Var2.j(linkedHashMap, k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", mapW0), k0Var3.i(k0Var3.b(), "user_energy", mapW0), k0Var3.i(k0Var3.d(), "user_power", mapW0), k0Var3.j(k0Var3.a(), mapW0), strE, mapW0), (String[]) linkedHashSetS0.toArray(new String[0]))));
                                } else if (zU0) {
                                    JSONObject jSONObjectT = k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", mapW0), k0Var3.i(k0Var3.b(), "user_energy", mapW0), k0Var3.i(k0Var3.d(), "user_power", mapW0), k0Var3.j(k0Var3.a(), mapW0), strE, mapW0);
                                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                    String str18 = str2;
                                    linkedHashMap3.put(str18, i0(str18, mapW0));
                                    linkedHashMap3.put("General", i0("General", mapW0));
                                    linkedHashMapJ.put("cmn", p5.u1(h5Var2.j(linkedHashMap3, jSONObjectT, str18, "General")));
                                }
                                return k0Var3.n(p5.s1(linkedHashMapJ));
                            }
                            str2 = str14;
                            map2 = null;
                            linkedHashMapJ = null;
                            if (strTrim.isEmpty()) {
                                listEmptyList = arrayListV;
                            } else if (map2 != null) {
                                listEmptyList = Collections.emptyList();
                            } else {
                                listEmptyList = Collections.emptyList();
                            }
                            j jVarC2 = y0.c(listEmptyList, mapW0);
                            if (!strTrim.isEmpty()) {
                                arrayList = new ArrayList();
                                mapT0 = t0(mapW0);
                                it = arrayListV.iterator();
                                while (it.hasNext()) {
                                    it = it;
                                    map3 = (Map) it.next();
                                    if (map3 == null) {
                                        String str19 = str15;
                                        strValueOf = String.valueOf(map3.getOrDefault("general_id", str15));
                                        if (!strValueOf.isEmpty()) {
                                            LinkedHashMap linkedHashMapN2 = n(mapW0, map3, mapT0);
                                            linkedHashMapN2.put("general_id", strValueOf);
                                            arrayList.add(linkedHashMapN2);
                                        }
                                        str15 = str19;
                                    }
                                }
                                linkedHashMapJ = j();
                                linkedHashMapJ.put("general_list", arrayList);
                                linkedHashMapJ.put("list", arrayList);
                            } else if (linkedHashMapJ == null) {
                                linkedHashMapJ = j();
                            }
                            h(jVarC2, linkedHashMapJ);
                            boolean z2 = !linkedHashMap2.equals(t0(mapW0));
                            zU0 = u0(mapW0) | zU1;
                            zContainsKey = linkedHashMapJ.containsKey("surrender_info");
                            if (zU0) {
                                h5Var2.S0(strE, mapW0);
                            } else {
                                h5Var2.S0(strE, mapW0);
                            }
                            if (zContainsKey) {
                                if (linkedHashMapJ.get("delta_data") instanceof Map) {
                                    linkedHashMap = (Map) linkedHashMapJ.get("delta_data");
                                } else {
                                    linkedHashMap = new LinkedHashMap();
                                }
                                LinkedHashSet linkedHashSetS1 = s0(linkedHashMapJ.get("cmn_modules"));
                                linkedHashSetS1.remove("Player");
                                linkedHashMapJ.put("cmn", p5.u1(h5Var2.j(linkedHashMap, k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", mapW0), k0Var3.i(k0Var3.b(), "user_energy", mapW0), k0Var3.i(k0Var3.d(), "user_power", mapW0), k0Var3.j(k0Var3.a(), mapW0), strE, mapW0), (String[]) linkedHashSetS1.toArray(new String[0]))));
                            } else if (zU0) {
                                JSONObject jSONObjectT2 = k0Var3.f904d.t((int) c7.g(), k0Var3.i(k0Var3.c(), "user_gold", mapW0), k0Var3.i(k0Var3.b(), "user_energy", mapW0), k0Var3.i(k0Var3.d(), "user_power", mapW0), k0Var3.j(k0Var3.a(), mapW0), strE, mapW0);
                                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                                String str110 = str2;
                                linkedHashMap4.put(str110, i0(str110, mapW0));
                                linkedHashMap4.put("General", i0("General", mapW0));
                                linkedHashMapJ.put("cmn", p5.u1(h5Var2.j(linkedHashMap4, jSONObjectT2, str110, "General")));
                            }
                            return k0Var3.n(p5.s1(linkedHashMapJ));
                        }
                        String strE2 = k0Var3.e(map);
                        h5 h5Var3 = k0Var3.f904d;
                        Map mapW1 = h5Var3.w0(strE2);
                        ArrayList arrayList5 = new ArrayList();
                        try {
                            w1VarA1 = w1.a1(k0Var3.f901a);
                        } catch (Exception unused2) {
                            w1VarA1 = null;
                        }
                        w1 w1Var2 = w1VarA1;
                        String str20 = "add";
                        m.e eVar = this.f806b;
                        if (mapW1 != null) {
                            boolean z3 = w1Var2 != null && w1Var2.g2(mapW1);
                            if (u0(mapW1)) {
                                z3 = true;
                            }
                            if (z3) {
                                h5Var3.S0(strE2, mapW1);
                                z2.e("SGSCQ_SRV", "[Atlas] normalized saved atlas before getList uid=" + strE2);
                            }
                            Object obj3 = mapW1.get("Atlas");
                            if (obj3 instanceof Map) {
                                Object obj4 = ((Map) obj3).get("add");
                                if (obj4 instanceof List) {
                                    Iterator it3 = ((List) obj4).iterator();
                                    while (it3.hasNext()) {
                                        Object next = it3.next();
                                        it3 = it3;
                                        if (next instanceof Map) {
                                            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                            Iterator it4 = ((Map) next).entrySet().iterator();
                                            while (it4.hasNext()) {
                                                Map.Entry entry = (Map.Entry) it4.next();
                                                it4 = it4;
                                                if (entry.getKey() instanceof String) {
                                                    linkedHashMap5.put((String) entry.getKey(), entry.getValue());
                                                    h5Var3 = h5Var3;
                                                }
                                            }
                                            h5Var = h5Var3;
                                            if (eVar.x(linkedHashMap5)) {
                                                h5Var3 = h5Var;
                                            } else {
                                                linkedHashMap5.put("count", 1);
                                                if ((!linkedHashMap5.containsKey("resource_id") || "0".equals(String.valueOf(linkedHashMap5.get("resource_id"))) || String.valueOf(linkedHashMap5.get("resource_id")).isEmpty()) && w1Var2 != null) {
                                                    int iG = G(linkedHashMap5);
                                                    if (!linkedHashMap5.containsKey(str9) || linkedHashMap5.containsKey("skill_id")) {
                                                        str5 = strE2;
                                                        if (linkedHashMap5.containsKey("skill_id")) {
                                                            orDefault = linkedHashMap5.get("skill_id");
                                                        } else {
                                                            String str21 = "equipment_id";
                                                            if (!linkedHashMap5.containsKey("equipment_id")) {
                                                                if (iG == 10) {
                                                                    str21 = "godness_id";
                                                                } else {
                                                                    strValueOf2 = null;
                                                                }
                                                            }
                                                            orDefault = linkedHashMap5.get(str21);
                                                        }
                                                        strValueOf2 = String.valueOf(orDefault);
                                                    } else {
                                                        String strValueOf3 = String.valueOf(linkedHashMap5.get(str9));
                                                        str5 = strE2;
                                                        Map mapJ0 = w1Var2.J0(strValueOf3);
                                                        if (mapJ0 != null) {
                                                            orDefault = mapJ0.getOrDefault("resource_id", strValueOf3);
                                                            strValueOf2 = String.valueOf(orDefault);
                                                        } else {
                                                            strValueOf2 = null;
                                                        }
                                                    }
                                                    if (strValueOf2 != null && !strValueOf2.isEmpty() && !"0".equals(strValueOf2) && !"null".equals(strValueOf2)) {
                                                        linkedHashMap5.put("resource_id", strValueOf2);
                                                    }
                                                } else {
                                                    str5 = strE2;
                                                }
                                                if (w1Var2 != null) {
                                                    int iG2 = G(linkedHashMap5);
                                                    String strValueOf4 = String.valueOf(linkedHashMap5.get(str9));
                                                    z2.e("SGSCQ_SRV", "[Atlas] Entry: type=" + iG2 + " general_id=" + strValueOf4);
                                                    if (!linkedHashMap5.containsKey(str9) || linkedHashMap5.containsKey("skill_id")) {
                                                        str6 = str9;
                                                        w1Var = w1Var2;
                                                        k0Var2 = k0Var3;
                                                        str7 = str12;
                                                        arrayList3 = arrayList5;
                                                        map5 = mapW1;
                                                        if (linkedHashMap5.containsKey("skill_id")) {
                                                            String strValueOf5 = String.valueOf(linkedHashMap5.get("skill_id"));
                                                            try {
                                                                Map mapK1 = w1Var.k1(strValueOf5);
                                                                if (mapK1 == null || (strM1 = w1Var.m1(strValueOf5)) == null || strM1.isEmpty()) {
                                                                    strM1 = strValueOf5;
                                                                }
                                                                r(strValueOf5, strM1, linkedHashMap5, mapK1);
                                                            } catch (Exception e3) {
                                                                c.a.u(e3, a.b0.b("[Atlas] enrichSkill failed for ", strValueOf5, ": "), "SGSCQ_SRV");
                                                            }
                                                        }
                                                    } else {
                                                        str6 = str9;
                                                        str7 = str12;
                                                        k0Var2 = k0Var3;
                                                        map5 = mapW1;
                                                        arrayList3 = arrayList5;
                                                        try {
                                                            z2.e("SGSCQ_SRV", "[Atlas] Enriching general: " + strValueOf4);
                                                            Map mapJ1 = w1Var2.J0(strValueOf4);
                                                            if (mapJ1 == null) {
                                                                z2.g("SGSCQ_SRV", "[Atlas] General not found: " + strValueOf4);
                                                                int iL0 = l0(0, "general_orbit", linkedHashMap5);
                                                                if (iL0 <= 0) {
                                                                    iL0 = 1;
                                                                }
                                                                linkedHashMap5.put("general_orbit", Integer.valueOf(iL0));
                                                                w1Var = w1Var2;
                                                            } else {
                                                                z2.e("SGSCQ_SRV", "[Atlas] General found: " + strValueOf4 + " keys=" + mapJ1.keySet());
                                                                String strR0 = w1Var2.R0(strValueOf4);
                                                                if (strR0 != null && !strR0.isEmpty()) {
                                                                    linkedHashMap5.put("general_name", strR0);
                                                                    z2.e("SGSCQ_SRV", "[Atlas] General name: ".concat(strR0));
                                                                }
                                                                try {
                                                                    double dK0 = k0(mapJ1, "general_hp", 100.0d);
                                                                    w1 w1Var3 = w1Var2;
                                                                    try {
                                                                        double dK1 = k0(mapJ1, "general_attack", 50.0d);
                                                                        try {
                                                                            double dK2 = k0(mapJ1, "general_defense", 30.0d);
                                                                            double dK3 = k0(mapJ1, "general_wisdom", 20.0d);
                                                                            str8 = strValueOf4;
                                                                            try {
                                                                                z2.e("SGSCQ_SRV", "[Atlas] General attrs: hp=" + dK0 + " atk=" + dK1 + " def=" + dK2 + " wis=" + dK3);
                                                                                linkedHashMap5.put("general_hp", String.valueOf(dK0));
                                                                                linkedHashMap5.put("general_attack", String.valueOf(dK1));
                                                                                linkedHashMap5.put("general_defense", String.valueOf(dK2));
                                                                                linkedHashMap5.put("general_wisdom", String.valueOf(dK3));
                                                                                linkedHashMap5.put("base_hp", String.valueOf(dK0));
                                                                                linkedHashMap5.put("base_attack", String.valueOf(dK1));
                                                                                linkedHashMap5.put("base_defense", String.valueOf(dK2));
                                                                                linkedHashMap5.put("base_wisdom", String.valueOf(dK3));
                                                                                linkedHashMap5.put("attr_hp", String.valueOf(dK0));
                                                                                linkedHashMap5.put("attr_attack", String.valueOf(dK1));
                                                                                linkedHashMap5.put("attr_defense", String.valueOf(dK2));
                                                                                linkedHashMap5.put("attr_wisdom", String.valueOf(dK3));
                                                                                String strR1 = r0(mapJ1.get("fighting"), String.valueOf(w1.x(dK0, dK1, dK2, dK3)));
                                                                                linkedHashMap5.put("base_fighting", strR1);
                                                                                linkedHashMap5.put("fighting", strR1);
                                                                                linkedHashMap5.put("fighting_point", strR1);
                                                                                linkedHashMap5.put("fight_point", strR1);
                                                                                linkedHashMap5.put("general_fighting", strR1);
                                                                                d0("general_hp_step", "hp_step", linkedHashMap5, mapJ1);
                                                                                d0("general_attack_step", "attack_step", linkedHashMap5, mapJ1);
                                                                                d0("general_defense_step", "defense_step", linkedHashMap5, mapJ1);
                                                                                d0("general_wisdom_step", "wisdom_step", linkedHashMap5, mapJ1);
                                                                                Object obj5 = mapJ1.get("fighting_step");
                                                                                if (obj5 != null) {
                                                                                    if (obj5 instanceof Number) {
                                                                                        double dDoubleValue = ((Number) obj5).doubleValue();
                                                                                        if (!Double.isNaN(dDoubleValue) && !Double.isInfinite(dDoubleValue)) {
                                                                                            linkedHashMap5.put("fighting_step", String.valueOf(dDoubleValue));
                                                                                        }
                                                                                    } else {
                                                                                        try {
                                                                                            double d2 = Double.parseDouble(obj5.toString());
                                                                                            if (!Double.isNaN(d2) && !Double.isInfinite(d2)) {
                                                                                                linkedHashMap5.put("fighting_step", String.valueOf(d2));
                                                                                            }
                                                                                        } catch (NumberFormatException unused3) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                                linkedHashMap5.put("grade", Integer.valueOf(l0(0, "grade", mapJ1)));
                                                                                int iL1 = l0(0, "star", mapJ1);
                                                                                if (iL1 <= 0) {
                                                                                    iL1 = 1;
                                                                                }
                                                                                linkedHashMap5.put("star", Integer.valueOf(iL1));
                                                                                Object obj6 = mapJ1.get("general_sex");
                                                                                if (obj6 != null) {
                                                                                    if (obj6 instanceof Number) {
                                                                                        linkedHashMap5.put("general_sex", Integer.valueOf(((Number) obj6).intValue()));
                                                                                    } else {
                                                                                        try {
                                                                                            linkedHashMap5.put("general_sex", Integer.valueOf((int) Double.parseDouble(obj6.toString())));
                                                                                        } catch (NumberFormatException unused4) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                                int iL2 = l0(0, "general_orbit", mapJ1);
                                                                                if (iL2 <= 0) {
                                                                                    iL2 = l0(0, "general_orbit", linkedHashMap5);
                                                                                }
                                                                                if (iL2 <= 0) {
                                                                                    iL2 = 1;
                                                                                }
                                                                                linkedHashMap5.put("general_orbit", Integer.valueOf(iL2));
                                                                                String str22 = (String) mapJ1.get("resource_id");
                                                                                if (str22 != null && !str22.isEmpty()) {
                                                                                    linkedHashMap5.put("resource_id", str22);
                                                                                }
                                                                                String str23 = (String) mapJ1.get("general_naturalskill_id");
                                                                                if (str23 != null && !str23.isEmpty()) {
                                                                                    linkedHashMap5.put("general_naturalskill_id", str23);
                                                                                }
                                                                                Object obj7 = mapJ1.get("general_type");
                                                                                if (obj7 != null) {
                                                                                    linkedHashMap5.put("general_type", obj7);
                                                                                }
                                                                                String strValueOf6 = String.valueOf(mapJ1.getOrDefault("lieutenant_skill_id", "0"));
                                                                                w1Var = w1Var3;
                                                                                try {
                                                                                    if (w1Var.e1(strValueOf6) == null || strValueOf6.isEmpty() || "0".equals(strValueOf6) || "null".equalsIgnoreCase(strValueOf6)) {
                                                                                        linkedHashMap5.put("lieutenant_skill_id", "0");
                                                                                        linkedHashMap5.put("skill_type_lieutenant", "0");
                                                                                        linkedHashMap5.put("ls_type", "0");
                                                                                        linkedHashMap5.put("ls_value", "0");
                                                                                    } else {
                                                                                        linkedHashMap5.put("lieutenant_skill_id", strValueOf6);
                                                                                        linkedHashMap5.put("skill_type_lieutenant", strValueOf6);
                                                                                        w1Var.G2(linkedHashMap5, strValueOf6, 0.0d);
                                                                                    }
                                                                                } catch (Exception e4) {
                                                                                    e = e4;
                                                                                    c.a.u(e, a.b0.b("[Atlas] enrichGeneral failed for ", str8, ": "), "SGSCQ_SRV");
                                                                                }
                                                                            } catch (Exception e5) {
                                                                                e = e5;
                                                                                w1Var = w1Var3;
                                                                                c.a.u(e, a.b0.b("[Atlas] enrichGeneral failed for ", str8, ": "), "SGSCQ_SRV");
                                                                                arrayList2 = arrayList3;
                                                                                arrayList2.add(linkedHashMap5);
                                                                                eVar = eVar;
                                                                                arrayList5 = arrayList2;
                                                                                w1Var2 = w1Var;
                                                                                str10 = str10;
                                                                                str11 = str11;
                                                                                str9 = str6;
                                                                                str12 = str7;
                                                                                mapW1 = map5;
                                                                                h5Var3 = h5Var;
                                                                                str20 = str20;
                                                                                str13 = str13;
                                                                                strE2 = str5;
                                                                                k0Var3 = k0Var2;
                                                                            }
                                                                        } catch (Exception e6) {
                                                                            e = e6;
                                                                            str8 = strValueOf4;
                                                                        }
                                                                    } catch (Exception e7) {
                                                                        e = e7;
                                                                        str8 = strValueOf4;
                                                                        w1Var = w1Var3;
                                                                    }
                                                                } catch (Exception e8) {
                                                                    e = e8;
                                                                    w1Var = w1Var2;
                                                                    str8 = strValueOf4;
                                                                }
                                                            }
                                                        } catch (Exception e9) {
                                                            e = e9;
                                                            str8 = strValueOf4;
                                                            w1Var = w1Var2;
                                                        }
                                                    }
                                                    arrayList2 = arrayList3;
                                                } else {
                                                    str6 = str9;
                                                    w1Var = w1Var2;
                                                    k0Var2 = k0Var3;
                                                    str7 = str12;
                                                    map5 = mapW1;
                                                    arrayList2 = arrayList5;
                                                }
                                                arrayList2.add(linkedHashMap5);
                                            }
                                        } else {
                                            str5 = strE2;
                                            h5Var = h5Var3;
                                            str6 = str9;
                                            w1Var = w1Var2;
                                            k0Var2 = k0Var3;
                                            str10 = str10;
                                            str11 = str11;
                                            str7 = str12;
                                            arrayList2 = arrayList5;
                                            map5 = mapW1;
                                        }
                                        eVar = eVar;
                                        arrayList5 = arrayList2;
                                        w1Var2 = w1Var;
                                        str10 = str10;
                                        str11 = str11;
                                        str9 = str6;
                                        str12 = str7;
                                        mapW1 = map5;
                                        h5Var3 = h5Var;
                                        str20 = str20;
                                        str13 = str13;
                                        strE2 = str5;
                                        k0Var3 = k0Var2;
                                    }
                                }
                            }
                        }
                        String str24 = strE2;
                        h5 h5Var4 = h5Var3;
                        String str25 = str20;
                        k0 k0Var4 = k0Var3;
                        m.e eVar2 = eVar;
                        String str26 = str10;
                        String str27 = str11;
                        String str28 = str12;
                        String str29 = str13;
                        ArrayList arrayList6 = arrayList5;
                        Map map7 = mapW1;
                        int iG3 = (int) c7.g();
                        if (map7 != null) {
                            k0Var = k0Var4;
                            map4 = map7;
                            jSONObject = k0Var.f904d.t(iG3, k0Var.i(k0Var.c(), str28, map4), k0Var.i(k0Var.b(), str27, map4), k0Var.i(k0Var.d(), str26, map4), k0Var.j(k0Var.a(), map4), str24, map4);
                        } else {
                            map4 = map7;
                            k0Var = k0Var4;
                            jSONObject = new JSONObject();
                        }
                        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                        ArrayList arrayList7 = new ArrayList();
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        if (map4 != null) {
                            str4 = str29;
                            Object obj8 = map4.get(str4);
                            if (obj8 instanceof Map) {
                                Map map8 = (Map) obj8;
                                str3 = str25;
                                e(arrayList7, linkedHashSet, map8.get(str3), eVar2);
                                e(arrayList7, linkedHashSet, map8.get("upd"), eVar2);
                            } else {
                                str3 = str25;
                            }
                        } else {
                            str3 = str25;
                            str4 = str29;
                        }
                        linkedHashMap6.put(str4, p5.z0("del", new ArrayList(linkedHashSet), "upd", arrayList7, str3, new ArrayList()));
                        linkedHashMap6.put("General", i0("General", map4));
                        linkedHashMap6.put("Skill", i0("Skill", map4));
                        String strJ = h5Var4.j(linkedHashMap6, jSONObject, str4, "General", "Skill");
                        y1 y1Var = new y1();
                        y1Var.e("error_code", 0);
                        y1Var.e("ret", 0);
                        y1Var.e("code", 0);
                        y1Var.g("result", true);
                        y1Var.f("msg", "success");
                        y1Var.i("atlas_list", p5.s1(arrayList6));
                        y1Var.i("cmn", strJ);
                        String strB = y1Var.b();
                        StringBuilder sbB = a.b0.b("[Atlas] uid=", str24, " count=");
                        sbB.append(arrayList6.size());
                        z2.e("SGSCQ_SRV", sbB.toString());
                        return k0Var.n(strB);
                    }

                    /* JADX WARN: Code duplicated, block: B:156:0x0516  */
                    /* JADX WARN: Code duplicated, block: B:159:0x0521  */
                    /* JADX WARN: Code duplicated, block: B:160:0x0573  */
                    /* JADX WARN: Code duplicated, block: B:48:0x01cc  */
                    /* JADX WARN: Code duplicated, block: B:70:0x028b  */
                    public final byte[] L(String str, Map map) {
                        String str2;
                        String str3;
                        Object obj;
                        String str4;
                        String str5;
                        String str6;
                        String strJ;
                        String strValueOf;
                        Map map2;
                        Object obj2;
                        h5 h5Var;
                        h5 h5Var2;
                        Object obj3;
                        k0 k0Var;
                        String str7;
                        int iG;
                        Integer num;
                        LinkedHashMap linkedHashMap;
                        LinkedHashMap linkedHashMapX;
                        k0 k0Var2 = this.f805a;
                        String strE = k0Var2.e(map);
                        boolean zEquals = "evolutionChest.getList".equals(str);
                        h5 h5Var3 = k0Var2.f904d;
                        if (zEquals) {
                            Map mapW0 = h5Var3.w0(strE);
                            if (mapW0 == null) {
                                mapW0 = new LinkedHashMap();
                            }
                            Object obj4 = mapW0.get("evolution_chest_preview");
                            boolean z = !c.a.B(mapW0, "evolution_chest_day", "", c7.b());
                            boolean z2 = (mapW0.containsKey("evolution_chest_free_times") && mapW0.containsKey("evolution_chest_refresh_times") && mapW0.containsKey("evolution_chest_open_times") && mapW0.containsKey("evolution_chest_free_refresh_times")) ? false : true;
                            List listS = s(mapW0, k(A(mapW0)), new Random(), v(A(mapW0)));
                            t(mapW0);
                            if (obj4 != listS || z2 || z) {
                                h5Var3.S0(strE, mapW0);
                            }
                            StringBuilder sbB = a.b0.b("[EvoChest] getList uid=", strE, " chests=");
                            sbB.append(listS.size());
                            z2.e("SGSCQ_SRV", sbB.toString());
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                            linkedHashMap2.put("ret", 0);
                            linkedHashMap2.put("code", 0);
                            linkedHashMap2.put("result", Boolean.TRUE);
                            linkedHashMap2.put("msg", "success");
                            linkedHashMap2.put("error_code", 0);
                            linkedHashMap2.put("chest_list", listS);
                            f(linkedHashMap2, mapW0);
                            return k0Var2.n(p5.s1(linkedHashMap2));
                        }
                        if ("evolutionChest.open".equals(str)) {
                            return M(strE, false);
                        }
                        if ("evolutionChest.openTen".equals(str)) {
                            return M(strE, true);
                        }
                        String str8 = "user_gold";
                        if ("evolutionChest.refresh".equals(str)) {
                            z2.e("SGSCQ_SRV", "[EvoChest] refresh uid=" + strE);
                            Map mapW1 = h5Var3.w0(strE);
                            if (mapW1 == null) {
                                mapW1 = new LinkedHashMap();
                            }
                            int iA = A(mapW1);
                            ArrayList arrayListK = k(iA);
                            int i2 = iA + 1;
                            ArrayList arrayListK2 = k(i2);
                            Random random = new Random();
                            String strV = v(iA);
                            String strV2 = v(i2);
                            t(mapW1);
                            List listS2 = s(mapW1, arrayListK, new Random(0L), strV);
                            int iM0 = m0(mapW1.get("evolution_chest_free_refresh_times"), 3);
                            int iM1 = m0(mapW1.get("evolution_chest_refresh_times"), 0);
                            int iM2 = m0(mapW1.get("user_gold"), 0);
                            if (iM0 <= 0) {
                                if (iM2 < 20) {
                                    linkedHashMapX = x(false, mapW1, listS2, "元宝不足");
                                } else {
                                    mapW1.put("user_gold", Integer.valueOf(iM2 - 20));
                                }
                                if (Boolean.TRUE.equals(linkedHashMapX.get("result"))) {
                                    h5Var3.S0(strE, mapW1);
                                }
                                linkedHashMapX.put("cmn", p5.u1(h5Var3.j(mapW1, k0Var2.f904d.t((int) c7.g(), k0Var2.i(k0Var2.c(), "user_gold", mapW1), k0Var2.i(k0Var2.b(), "user_energy", mapW1), k0Var2.i(k0Var2.d(), "user_power", mapW1), k0Var2.j(k0Var2.a(), mapW1), strE, mapW1), new String[0])));
                                return k0Var2.n(p5.s1(linkedHashMapX));
                            }
                            iM0--;
                            mapW1.put("evolution_chest_free_refresh_times", Integer.valueOf(iM0));
                            mapW1.put("evolution_chest_refresh_times", Integer.valueOf(iM1 + 1));
                            ArrayList arrayListN0 = n0(arrayListK2, random);
                            mapW1.put("evolution_chest_preview", arrayListN0);
                            mapW1.put("evolution_chest_preview_batch", strV2);
                            linkedHashMapX = x(true, mapW1, arrayListN0, "success");
                            if (Boolean.TRUE.equals(linkedHashMapX.get("result"))) {
                                h5Var3.S0(strE, mapW1);
                            }
                            linkedHashMapX.put("cmn", p5.u1(h5Var3.j(mapW1, k0Var2.f904d.t((int) c7.g(), k0Var2.i(k0Var2.c(), "user_gold", mapW1), k0Var2.i(k0Var2.b(), "user_energy", mapW1), k0Var2.i(k0Var2.d(), "user_power", mapW1), k0Var2.j(k0Var2.a(), mapW1), strE, mapW1), new String[0])));
                            return k0Var2.n(p5.s1(linkedHashMapX));
                        }
                        Object obj5 = "cmn";
                        k0 k0Var3 = k0Var2;
                        String str9 = "user_energy";
                        String str10 = "user_power";
                        if (!"evolutionChest.synthetise".equals(str)) {
                            return k0Var3.n(p5.s1(p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0)));
                        }
                        Map mapW2 = h5Var3.w0(strE);
                        if (mapW2 == null) {
                            mapW2 = new LinkedHashMap();
                        }
                        Map map3 = mapW2;
                        Object obj6 = "result";
                        if (map == null) {
                            str3 = "";
                            str2 = str3;
                        } else {
                            str2 = "";
                            str3 = (String) map.getOrDefault("user_item_id", str2);
                        }
                        Iterator it = w1.f0("Item", map3).iterator();
                        while (true) {
                            obj = obj5;
                            str4 = str10;
                            str5 = str9;
                            if (!it.hasNext()) {
                                str6 = str8;
                                strJ = str2;
                                break;
                            }
                            str6 = str8;
                            Map map4 = (Map) it.next();
                            if (c.a.B(map4, "pk_id", str2, str3)) {
                                strJ = c.a.j(map4, "id", str2, "item_id");
                                break;
                            }
                            obj5 = obj;
                            str10 = str4;
                            str9 = str5;
                            str8 = str6;
                        }
                        if (strJ.isEmpty()) {
                            strValueOf = str2;
                        } else {
                            try {
                                Map mapC1 = w1.a1(k0Var3.f901a).c1(strJ);
                                if (mapC1 != null) {
                                    strValueOf = String.valueOf(mapC1.getOrDefault("related_id", str2));
                                    k0Var3 = k0Var3;
                                } else {
                                    strValueOf = str2;
                                }
                            } catch (Exception e2) {
                                c.a.u(e2, new StringBuilder("[EvoChest] synthetise related lookup failed: "), "SGSCQ_SRV");
                            }
                        }
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                        linkedHashMap3.put("ret", 0);
                        linkedHashMap3.put("code", 0);
                        linkedHashMap3.put("msg", "success");
                        linkedHashMap3.put("error_code", 0);
                        String str11 = map == null ? str2 : (String) map.getOrDefault("user_item_id", str2);
                        int iM3 = map == null ? 0 : m0(map.get("universal_num"), 0);
                        if (str11 != null && !str11.isEmpty()) {
                            Iterator it2 = w1.f0("Item", map3).iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    map2 = null;
                                    break;
                                }
                                Iterator it3 = it2;
                                map2 = (Map) it2.next();
                                if (c.a.B(map2, "pk_id", str2, str11)) {
                                    break;
                                }
                                it2 = it3;
                            }
                        } else {
                            map2 = null;
                            break;
                        }
                        String str12 = "item_delta";
                        if (map2 != null && !strValueOf.isEmpty() && !"0".equals(strValueOf)) {
                            h5Var = h5Var3;
                            obj2 = "error_code";
                            if (!"600209".equals(T(map2))) {
                                int iMin = Math.min(30, U(map2));
                                int i3 = 30 - iMin;
                                if (iM3 >= i3) {
                                    Iterator it4 = w1.f0("Item", map3).iterator();
                                    int iU = 0;
                                    while (it4.hasNext()) {
                                        Map map5 = (Map) it4.next();
                                        Iterator it5 = it4;
                                        if ("600209".equals(T(map5))) {
                                            iU = U(map5) + iU;
                                        }
                                        it4 = it5;
                                    }
                                    if (iU < i3) {
                                        str12 = "item_delta";
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        ArrayList arrayList2 = new ArrayList();
                                        String strValueOf2 = String.valueOf(w1.e2("Item", map3));
                                        g0(map3, map2, iMin, arrayList, arrayList2);
                                        if (i3 > 0) {
                                            Iterator it6 = new ArrayList(w1.f0("Item", map3)).iterator();
                                            while (it6.hasNext()) {
                                                Map map6 = (Map) it6.next();
                                                if (i3 <= 0) {
                                                    break;
                                                }
                                                Iterator it7 = it6;
                                                if ("600209".equals(T(map6))) {
                                                    int iMin2 = Math.min(i3, U(map6));
                                                    g0(map3, map6, iMin2, arrayList, arrayList2);
                                                    i3 -= iMin2;
                                                }
                                                it6 = it7;
                                            }
                                        }
                                        Map mapC2 = w1.a1(null).c1(strValueOf);
                                        if (mapC2 == null || (iG = c.a.g(mapC2, "type", "0", "item_type", 0)) <= 0) {
                                            iG = 47;
                                        }
                                        Object obj7 = map3.get("Item");
                                        if (!(obj7 instanceof Map) || !(((Map) obj7).get("add") instanceof List)) {
                                            map3.put("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()));
                                        }
                                        Map mapQ0 = q0(strValueOf, w1.f0("Item", map3), map3);
                                        if (mapQ0 != null) {
                                            int iU2 = U(mapQ0) + 1;
                                            mapQ0.put("num", Integer.valueOf(iU2));
                                            mapQ0.put("item_num", Integer.valueOf(iU2));
                                            linkedHashMap = new LinkedHashMap(mapQ0);
                                            num = 1;
                                        } else {
                                            LinkedHashMap linkedHashMapR = c.a.r("pk_id", strValueOf2, "id", strValueOf);
                                            linkedHashMapR.put("item_id", strValueOf);
                                            num = 1;
                                            linkedHashMapR.put("num", 1);
                                            linkedHashMapR.put("item_num", 1);
                                            linkedHashMapR.put("item_type", Integer.valueOf(iG));
                                            linkedHashMapR.put("type", Integer.valueOf(iG));
                                            linkedHashMapR.put("effect_time", 0);
                                            linkedHashMapR.put("is_new", Boolean.TRUE);
                                            w1.f0("Item", map3).add(linkedHashMapR);
                                            linkedHashMap = new LinkedHashMap(linkedHashMapR);
                                        }
                                        arrayList2.add(linkedHashMap);
                                        LinkedHashMap linkedHashMapZ0 = p5.z0("del", arrayList, "upd", arrayList2, "add", new ArrayList());
                                        obj6 = obj6;
                                        linkedHashMap3 = linkedHashMap3;
                                        linkedHashMap3.put(obj6, Boolean.TRUE);
                                        str12 = "item_delta";
                                        linkedHashMap3.put(str12, linkedHashMapZ0);
                                        LinkedHashMap linkedHashMap4 = new LinkedHashMap(linkedHashMap);
                                        linkedHashMap4.put("num", num);
                                        linkedHashMap4.put("item_num", num);
                                        linkedHashMap4.put("type", Integer.valueOf(y2.s(m0(linkedHashMap.get("item_type"), 1))));
                                        linkedHashMap3.put("add_list", p5.v0(linkedHashMap4));
                                    }
                                } else {
                                    str12 = "item_delta";
                                }
                                obj6 = obj6;
                                linkedHashMap3.put(obj6, Boolean.FALSE);
                                str7 = "道具数量不足";
                                linkedHashMap3.put("msg", str7);
                                linkedHashMap3.put(obj2, 1);
                            }
                            h5Var2 = h5Var;
                            if (Boolean.TRUE.equals(linkedHashMap3.get(obj6))) {
                                h5Var2.S0(strE, map3);
                            }
                            obj3 = linkedHashMap3.get(str12);
                            if (obj3 instanceof Map) {
                                k0Var = k0Var3;
                                linkedHashMap3.put(obj, p5.u1(h5Var2.j(p5.z0("Item", obj3, new Object[0]), k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), str6, map3), k0Var.i(k0Var.b(), str5, map3), k0Var.i(k0Var.d(), str4, map3), k0Var.j(k0Var.a(), map3), strE, map3), "Item")));
                            } else {
                                k0Var = k0Var3;
                            }
                            return k0Var.n(p5.s1(linkedHashMap3));
                        }
                        obj2 = "error_code";
                        h5Var = h5Var3;
                        linkedHashMap3.put(obj6, Boolean.FALSE);
                        str7 = "合成物品无效";
                        linkedHashMap3.put("msg", str7);
                        linkedHashMap3.put(obj2, 1);
                        h5Var2 = h5Var;
                        if (Boolean.TRUE.equals(linkedHashMap3.get(obj6))) {
                            h5Var2.S0(strE, map3);
                        }
                        obj3 = linkedHashMap3.get(str12);
                        if (obj3 instanceof Map) {
                            k0Var = k0Var3;
                            linkedHashMap3.put(obj, p5.u1(h5Var2.j(p5.z0("Item", obj3, new Object[0]), k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), str6, map3), k0Var.i(k0Var.b(), str5, map3), k0Var.i(k0Var.d(), str4, map3), k0Var.j(k0Var.a(), map3), strE, map3), "Item")));
                        } else {
                            k0Var = k0Var3;
                        }
                        return k0Var.n(p5.s1(linkedHashMap3));
                    }

                    /* JADX WARN: Code duplicated, block: B:127:0x031e  */
                    /* JADX WARN: Code duplicated, block: B:27:0x00c2 A[EDGE_INSN: B:27:0x00c2->B:28:0x00c3 BREAK  A[LOOP:1: B:23:0x00b4->B:209:?]] */
                    public final byte[] M(String str, boolean z) {
                        List list;
                        k0 k0Var;
                        Object obj;
                        Object obj2;
                        Object obj3;
                        u uVar;
                        String str2;
                        String str3;
                        String str4;
                        Object obj4;
                        LinkedHashMap linkedHashMapO0;
                        boolean z2;
                        boolean z3;
                        boolean z4;
                        boolean z5;
                        List list2;
                        String str5;
                        LinkedHashMap linkedHashMap;
                        u uVar2;
                        z2.e("SGSCQ_SRV", "[EvoChest] open uid=" + str + " count=" + (z ? 10 : 1));
                        k0 k0Var2 = this.f805a;
                        Map mapW0 = k0Var2.f904d.w0(str);
                        if (mapW0 == null) {
                            return k0Var2.n(p5.s1(w("觉醒宝箱暂不可用", null)));
                        }
                        int iA = A(mapW0);
                        List<Map> listS = s(mapW0, k(iA), new Random(), v(iA));
                        Random random = new Random();
                        ArrayList arrayListE = E(listS, 5, 47);
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Map map : E(listS, 5, 46)) {
                            if (!O(map)) {
                                linkedHashMap2.putIfAbsent(y(map), map);
                            }
                        }
                        E(listS, 6, -1);
                        ArrayList arrayList = new ArrayList(linkedHashMap2.values());
                        t(mapW0);
                        Object obj5 = mapW0.get("evolution_chest_preview");
                        if (!(obj5 instanceof List)) {
                            list = null;
                            break;
                        }
                        list = (List) obj5;
                        if (list.size() != 8) {
                            list = null;
                            break;
                        }
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            if (!(it.next() instanceof Map)) {
                                list = null;
                                break;
                            }
                        }
                        List list3 = list;
                        int i2 = 0;
                        if (list3 == null || list3.isEmpty()) {
                            k0Var = k0Var2;
                            obj = "delta_data";
                            obj2 = "Player";
                            obj3 = "cmn_modules";
                            uVar = new u(w("觉醒宝箱暂不可用", mapW0), new LinkedHashMap());
                        } else if (z && arrayList.isEmpty() && arrayListE.isEmpty()) {
                            uVar = new u(w("觉醒宝物暂不可用", mapW0), new LinkedHashMap());
                            k0Var = k0Var2;
                            obj = "delta_data";
                            obj2 = "Player";
                            obj3 = "cmn_modules";
                        } else {
                            int i3 = z ? 10 : 1;
                            int iM0 = m0(mapW0.get("evolution_chest_free_times"), 0);
                            if (!z && iM0 > 0) {
                                mapW0.put("evolution_chest_free_times", Integer.valueOf(iM0 - 1));
                            } else {
                                i2 = i3;
                            }
                            String str6 = "num";
                            String str7 = "item_num";
                            String str8 = "total_num";
                            String str9 = "600212";
                            String str10 = "";
                            k0Var = k0Var2;
                            String str11 = "id";
                            String str12 = "Item";
                            String str13 = "item_id";
                            if (i2 > 0) {
                                obj4 = "Player";
                                int iM1 = 0;
                                for (Map map2 : w1.f0("Item", mapW0)) {
                                    String str14 = str12;
                                    if (c.a.C(map2, "id", str10, "item_id", str9)) {
                                        iM1 = m0(map2.getOrDefault("num", map2.getOrDefault("item_num", map2.getOrDefault("total_num", 0))), 0) + iM1;
                                    }
                                    str9 = str9;
                                    str12 = str14;
                                    str10 = str10;
                                }
                                str2 = str9;
                                str3 = str10;
                                str4 = str12;
                                if (iM1 < i2) {
                                    uVar2 = new u(w("觉醒钥匙不足", mapW0), new LinkedHashMap());
                                }
                                uVar = uVar2;
                                obj = "delta_data";
                                obj3 = "cmn_modules";
                                obj2 = obj4;
                            } else {
                                str2 = "600212";
                                str3 = "";
                                str4 = "Item";
                                obj4 = "Player";
                            }
                            int i4 = z ? 10 : 1;
                            int iM2 = m0(mapW0.get("evolution_chest_open_times"), 0);
                            ArrayList arrayList2 = new ArrayList();
                            int i5 = i2;
                            int i6 = 0;
                            while (true) {
                                String str15 = str6;
                                if (i6 < i4) {
                                    int i7 = iM2 + i6;
                                    String str16 = z ? "EDEBBEECDDCEEECDCEEEBEEDDBCEDDEEDBEEDCCEAEBEEDDCEE" : "EBEEDDCEEEDEBBEECDDCEEECDCEEEBEEDDBCEDDEEDBEEDCCEA";
                                    String str17 = str7;
                                    char cCharAt = str16.charAt(Math.floorMod(i7, str16.length()));
                                    if (listS.isEmpty()) {
                                        linkedHashMap = null;
                                        list2 = listS;
                                        str5 = str8;
                                    } else {
                                        ArrayList arrayList3 = new ArrayList();
                                        for (Map map3 : listS) {
                                            List list4 = listS;
                                            String str18 = str8;
                                            if (z(map3) == cCharAt) {
                                                arrayList3.add(map3);
                                            }
                                            str8 = str18;
                                            listS = list4;
                                        }
                                        list2 = listS;
                                        str5 = str8;
                                        boolean zIsEmpty = arrayList3.isEmpty();
                                        List list5 = arrayList3;
                                        if (zIsEmpty) {
                                            list5 = list2;
                                        }
                                        linkedHashMap = new LinkedHashMap((Map) list5.get(random.nextInt(list5.size())));
                                    }
                                    if (linkedHashMap == null) {
                                        uVar2 = new u(w("觉醒宝箱暂不可用", mapW0), new LinkedHashMap());
                                        uVar = uVar2;
                                        obj = "delta_data";
                                        obj3 = "cmn_modules";
                                        obj2 = obj4;
                                    } else {
                                        arrayList2.add(linkedHashMap);
                                        i6++;
                                        str6 = str15;
                                        str7 = str17;
                                        str8 = str5;
                                        listS = list2;
                                    }
                                } else {
                                    String str19 = str7;
                                    String str20 = str8;
                                    LinkedHashMap linkedHashMapZ0 = p5.z0("item_id", "600213", "id", "600213", "item_num", Integer.valueOf(i4), "num", Integer.valueOf(i4), "grant_type", 5, "type", Integer.valueOf(y2.s(53)), "item_type", 53, "weight", 1, "grade", 1, "is_new", Boolean.TRUE);
                                    if (z) {
                                        int iM3 = m0(mapW0.get("evolution_chest_ten_pull_count"), 0) + 1;
                                        boolean z6 = iM3 >= 5;
                                        linkedHashMapO0 = (!z6 || arrayList.isEmpty()) ? o0(arrayListE, random) : o0(arrayList, random);
                                        if (z6) {
                                            z3 = true;
                                        } else if (l0(-1, "item_type", linkedHashMapO0) != 46 ? false : !O(linkedHashMapO0)) {
                                            z3 = true;
                                        } else {
                                            Iterator it2 = arrayList2.iterator();
                                            while (true) {
                                                if (!it2.hasNext()) {
                                                    z4 = false;
                                                    z3 = true;
                                                    break;
                                                }
                                                Map map4 = (Map) it2.next();
                                                if (map4 != null && l0(-1, "item_type", map4) == 46) {
                                                    z4 = true;
                                                    z5 = !O(map4);
                                                } else {
                                                    z5 = false;
                                                    z4 = true;
                                                }
                                                if (z5) {
                                                    z3 = z4;
                                                    break;
                                                }
                                            }
                                            if (!z4) {
                                                z3 = false;
                                            }
                                        }
                                        if (z3) {
                                            iM3 = 0;
                                        }
                                        mapW0.put("evolution_chest_ten_pull_count", Integer.valueOf(iM3));
                                    } else {
                                        linkedHashMapO0 = null;
                                    }
                                    mapW0.put("evolution_chest_open_times", Integer.valueOf(iM2 + i4));
                                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                    LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                                    ArrayList arrayList4 = new ArrayList();
                                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                    int i8 = 0;
                                    while (i8 < arrayList2.size()) {
                                        Map map5 = (Map) arrayList2.get(i8);
                                        arrayList4.add(map5);
                                        I(mapW0, map5, linkedHashMap3);
                                        StringBuilder sb = new StringBuilder("reward_");
                                        i8++;
                                        sb.append(i8);
                                        linkedHashMap5.put(sb.toString(), map5);
                                    }
                                    arrayList4.add(linkedHashMapZ0);
                                    I(mapW0, linkedHashMapZ0, linkedHashMap3);
                                    linkedHashMap5.put("extra_stone", linkedHashMapZ0);
                                    if (linkedHashMapO0 != null) {
                                        arrayList4.add(linkedHashMapO0);
                                        I(mapW0, linkedHashMapO0, linkedHashMap3);
                                        linkedHashMap5.put("extra_best", Collections.singletonList(linkedHashMapO0));
                                    }
                                    ArrayList arrayList5 = new ArrayList();
                                    String str21 = str4;
                                    Iterator it3 = w1.f0(str21, mapW0).iterator();
                                    int i9 = i5;
                                    while (it3.hasNext() && i9 > 0) {
                                        Map map6 = (Map) it3.next();
                                        str2 = str2;
                                        String str22 = str3;
                                        if (c.a.C(map6, str11, str22, str13, str2)) {
                                            String str23 = str20;
                                            String str24 = str19;
                                            String str25 = str13;
                                            String str26 = str15;
                                            String str27 = str11;
                                            int iM4 = m0(map6.getOrDefault(str26, map6.getOrDefault(str24, map6.getOrDefault(str23, 0))), 0);
                                            int iMin = Math.min(iM4, i9);
                                            int i10 = iM4 - iMin;
                                            i9 -= iMin;
                                            if (i10 <= 0) {
                                                it3.remove();
                                                arrayList5.add(String.valueOf(map6.getOrDefault("pk_id", str22)));
                                            } else {
                                                map6.put(str26, Integer.valueOf(i10));
                                                map6.put(str24, Integer.valueOf(i10));
                                                map6.put(str23, Integer.valueOf(i10));
                                                ((List) linkedHashMap3.computeIfAbsent(str21, new n.a(22))).add(map6);
                                            }
                                            str19 = str24;
                                            str20 = str23;
                                            str15 = str26;
                                            str13 = str25;
                                            str11 = str27;
                                        }
                                        str3 = str22;
                                    }
                                    String str28 = str13;
                                    String str29 = str3;
                                    String str30 = str11;
                                    if (!arrayList5.isEmpty()) {
                                        linkedHashMap4.put(str21, arrayList5);
                                    }
                                    linkedHashMap5.put("cost", 0);
                                    obj = "delta_data";
                                    String str31 = str29;
                                    Object obj6 = obj4;
                                    LinkedHashMap linkedHashMapZ1 = p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0, "chest_list", list3, "reward_list", arrayList4, "reward_info", linkedHashMap5);
                                    f(linkedHashMapZ1, mapW0);
                                    LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                                    LinkedHashSet<String> linkedHashSet = new LinkedHashSet(linkedHashMap3.keySet());
                                    linkedHashSet.addAll(linkedHashMap4.keySet());
                                    for (String str32 : linkedHashSet) {
                                        List list6 = (List) linkedHashMap3.getOrDefault(str32, Collections.emptyList());
                                        List list7 = (List) linkedHashMap4.getOrDefault(str32, Collections.emptyList());
                                        if (!list6.isEmpty() || !list7.isEmpty()) {
                                            linkedHashMap6.put(str32, p5.z0("del", list7, "upd", list6, "add", new ArrayList()));
                                        }
                                    }
                                    if (!linkedHashMap6.isEmpty()) {
                                        linkedHashMapZ1.put(obj, linkedHashMap6);
                                    }
                                    LinkedHashSet linkedHashSet2 = new LinkedHashSet(linkedHashMap3.keySet());
                                    linkedHashSet2.addAll(linkedHashMap4.keySet());
                                    Iterator it4 = arrayList4.iterator();
                                    while (true) {
                                        if (!it4.hasNext()) {
                                            z2 = false;
                                            break;
                                        }
                                        Map map7 = (Map) it4.next();
                                        if (map7 != null) {
                                            String str33 = str30;
                                            String str34 = str31;
                                            if (p5.h0(String.valueOf(map7.getOrDefault(str28, map7.getOrDefault(str33, str34))))) {
                                                z2 = true;
                                                break;
                                            }
                                            str31 = str34;
                                            str30 = str33;
                                        }
                                    }
                                    obj2 = obj6;
                                    if (z2) {
                                        linkedHashSet2.add(obj2);
                                    }
                                    linkedHashSet2.remove("TeamGeneral");
                                    StringBuilder sb2 = new StringBuilder();
                                    Iterator it5 = linkedHashSet2.iterator();
                                    if (it5.hasNext()) {
                                        while (true) {
                                            sb2.append((CharSequence) it5.next());
                                            if (!it5.hasNext()) {
                                                break;
                                            }
                                            sb2.append((CharSequence) ",");
                                        }
                                    }
                                    obj3 = "cmn_modules";
                                    linkedHashMapZ1.put(obj3, sb2.toString());
                                    uVar = new u(linkedHashMapZ1, linkedHashMap3);
                                }
                            }
                        }
                        Boolean bool = Boolean.TRUE;
                        Map map8 = uVar.f998a;
                        if (bool.equals(map8.get("result"))) {
                            ArrayList arrayListV = V();
                            y0.d(mapW0, arrayListV, "36", z ? 10 : 1, Collections.emptySet());
                            h(y0.c(arrayListV, mapW0), map8);
                            p.e("121", mapW0);
                            k0 k0Var3 = k0Var;
                            h5 h5Var = k0Var3.f904d;
                            h5Var.S0(str, mapW0);
                            int iG = (int) c7.g();
                            long j2 = k0Var3.j(k0Var3.a(), mapW0);
                            int i11 = k0Var3.i(k0Var3.c(), "user_gold", mapW0);
                            int i12 = k0Var3.i(k0Var3.b(), "user_energy", mapW0);
                            int i13 = k0Var3.i(k0Var3.d(), "user_power", mapW0);
                            h5 h5Var2 = k0Var3.f904d;
                            Object obj7 = obj3;
                            JSONObject jSONObjectT = h5Var2.t(iG, i11, i12, i13, j2, str, mapW0);
                            Map linkedHashMap7 = map8.get(obj) instanceof Map ? (Map) map8.get(obj) : new LinkedHashMap();
                            LinkedHashSet linkedHashSetS0 = s0(map8.get(obj7));
                            linkedHashSetS0.remove(obj2);
                            map8.put("cmn", p5.u1(h5Var.j(linkedHashMap7, jSONObjectT, (String[]) linkedHashSetS0.toArray(new String[0]))));
                        }
                        return k0Var.n(p5.s1(map8));
                    }

                    public final ArrayList V() {
                        ArrayList arrayList = new ArrayList();
                        try {
                            a7 a7VarV1 = w1.a1(this.f805a.f901a).V1();
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

                    public final ArrayList k(int i2) {
                        boolean z;
                        ArrayList arrayListB;
                        int size;
                        ArrayList arrayList = new ArrayList();
                        k0 k0Var = this.f805a;
                        w1 w1VarA1 = w1.a1(k0Var.f901a);
                        Iterator it = l(k0Var.f901a).iterator();
                        while (true) {
                            int i3 = 1;
                            if (!it.hasNext()) {
                                break;
                            }
                            LinkedHashMap linkedHashMap = new LinkedHashMap((Map) it.next());
                            linkedHashMap.put("is_new", Boolean.TRUE);
                            int iL0 = l0(5, "grant_type", linkedHashMap);
                            if (iL0 == 8) {
                                String strValueOf = String.valueOf(linkedHashMap.get("item_id"));
                                if (!strValueOf.startsWith("9")) {
                                    strValueOf = "9".concat(strValueOf);
                                }
                                linkedHashMap.put("item_id", strValueOf);
                                linkedHashMap.put("id", strValueOf);
                            }
                            int iL1 = l0(iL0 == 6 ? 20 : iL0 == 8 ? 15 : 19, "item_type", linkedHashMap);
                            if (w1VarA1 != null) {
                                try {
                                    String strD1 = w1VarA1.d1(String.valueOf(linkedHashMap.get("item_id")));
                                    if (strD1 != null && !strD1.isEmpty() && !strD1.startsWith("?")) {
                                        linkedHashMap.put("item_name", strD1);
                                    }
                                    Map mapC1 = w1VarA1.c1(String.valueOf(linkedHashMap.get("item_id")));
                                    if (mapC1 != null && iL0 == 5) {
                                        iL1 = l0(iL1, "item_type", mapC1);
                                        linkedHashMap.put("item_type", Integer.valueOf(iL1));
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            if (iL1 == 46) {
                                i3 = 4;
                            }
                            linkedHashMap.put("grade", Integer.valueOf(i3));
                            linkedHashMap.put("type", Integer.valueOf(y2.s(iL1)));
                            arrayList.add(linkedHashMap);
                        }
                        ArrayList<Map> arrayListE = E(arrayList, 5, 47);
                        ArrayList arrayList2 = new ArrayList();
                        for (Map map : arrayListE) {
                            if (!h0(w1VarA1, map).isEmpty()) {
                                arrayList2.add(map);
                            }
                        }
                        ArrayList arrayListE2 = E(arrayList, 6, -1);
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Map map2 : E(arrayList, 5, 46)) {
                            if (!O(map2)) {
                                linkedHashMap2.putIfAbsent(y(map2), map2);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList(linkedHashMap2.values());
                        ArrayList arrayList4 = new ArrayList();
                        arrayList4.addAll(arrayList3);
                        arrayList4.addAll(arrayList2);
                        arrayList4.addAll(arrayListE2);
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                        b(3, j0(i2, arrayList3), linkedHashMap3);
                        b(2, j0(i2, arrayList2), linkedHashMap3);
                        b(1, j0(i2, arrayListE2), linkedHashMap3);
                        int iHashCode = (c7.b().hashCode() & Integer.MAX_VALUE) + i2;
                        char[] cArr = f802g;
                        for (char c2 : cArr) {
                            Iterator it2 = linkedHashMap3.values().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    z = false;
                                    break;
                                }
                                if (z((Map) it2.next()) == c2) {
                                    z = true;
                                    break;
                                }
                            }
                            if (!z && (size = (arrayListB = B(c2)).size()) != 0) {
                                for (int i4 = 0; i4 < size; i4++) {
                                    Map map3 = (Map) arrayListB.get(Math.floorMod(iHashCode + i4, size));
                                    String strY = y(map3);
                                    if (!linkedHashMap3.containsKey(strY)) {
                                        linkedHashMap3.put(strY, map3);
                                        break;
                                    }
                                }
                            }
                        }
                        int i5 = i2 + 1;
                        D(j0(i5, arrayList3), linkedHashMap3);
                        D(j0(i5, arrayList2), linkedHashMap3);
                        D(j0(i5, arrayListE2), linkedHashMap3);
                        for (char c3 : cArr) {
                            D(j0(iHashCode, B(c3)), linkedHashMap3);
                        }
                        ArrayList arrayList5 = new ArrayList();
                        for (Map map4 : linkedHashMap3.values()) {
                            if (arrayList5.size() >= 8) {
                                break;
                            }
                            arrayList5.add(new LinkedHashMap(map4));
                        }
                        return arrayList5;
                    }
                }
