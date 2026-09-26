package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final class w1 {
    public static final java.util.HashSet U = new java.util.HashSet(java.util.Arrays.asList("131007"));
    public static final java.lang.String[] V = {"121007", "111009", "111016"};
    public static com.sgscq.vpn.w1 W;
    public static volatile boolean X;
    public java.util.ArrayList A;
    public java.util.HashMap B;
    public java.util.HashMap C;
    public java.util.Map D;
    public java.util.ArrayList E;
    public java.lang.Object F;
    public java.util.HashMap G;
    public java.util.LinkedHashMap H;
    public java.util.Map I;
    public java.util.HashMap J;
    public java.util.HashMap K;
    public java.util.HashMap L;
    public java.util.HashMap M;
    public java.util.HashMap N;
    public java.util.HashMap O;
    public java.util.HashMap P;
    public java.util.HashMap Q;
    public com.sgscq.vpn.a7 R;
    public java.util.HashMap S;
    public java.util.HashMap T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f1493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a.o f1494b = new a.o();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.sgscq.vpn.config.i f1495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p.d f1496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.util.HashMap f1497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.ArrayList f1498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.util.HashMap f1499g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.ArrayList f1500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.util.Map f1501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public java.util.Map f1502j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public java.util.HashMap f1503k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public java.util.ArrayList f1504l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public java.util.HashMap f1505m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public java.util.ArrayList f1506n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public java.util.HashMap f1507o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.util.Map f1508p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public java.util.HashMap f1509q;
    public java.util.HashMap r;
    public java.util.HashMap s;
    public java.util.LinkedHashMap t;
    public java.util.LinkedHashMap u;
    public java.util.ArrayList v;
    public java.util.ArrayList w;
    public java.util.ArrayList x;
    public java.util.HashMap y;
    public java.util.HashMap z;

    public w1(android.content.Context context) {
        this.f1493a = context == null ? null : context.getApplicationContext();
    }

    public static int A(java.util.Map map) {
        java.util.HashSet hashSet = new java.util.HashSet();
        int iA0 = 0;
        for (java.util.Map map2 : f0("TeamGeneral", map)) {
            if (hashSet.add(java.lang.String.valueOf(map2.getOrDefault("pk_id", map2.getOrDefault("team_general_id", map2.getOrDefault("general_pk_id", map2.getOrDefault("general_id", java.lang.Integer.valueOf(map2.hashCode())))))))) {
                iA0 += a0(map2, "general_fighting", "fighting", "fight_point", "fightPoint");
            }
        }
        return iA0 > 0 ? iA0 : a0(map, "fight_point", "user_fighting", "fighting", "fightPoint", "user_ability");
    }

    public static boolean A1(java.lang.String str, java.util.Map map) {
        java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("pk_id", ""));
        if ((r1(str) || !str.equals(strValueOf)) && !z1(map.get("is_natural"))) {
            return "1".equals(c.a.k(map, "pos", "", "skill_position", "position"));
        }
        return true;
    }

    public static java.util.LinkedHashMap A2(int i2, java.util.Map map) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        linkedHashMap.put("num", java.lang.Integer.valueOf(i2));
        linkedHashMap.put("item_num", java.lang.Integer.valueOf(i2));
        return linkedHashMap;
    }

    public static int B(java.util.Map map) {
        int iB1;
        java.lang.String[] strArr = {"govern", "govern_value", "user_govern", "user_govern_value", "leadership", "leadership_num", "leadershipNum", "user_leadership", "user_leadership_num", "user_leadershipNum", "command", "user_command", "tongyu", "user_tongyu"};
        if (map == null) {
            iB1 = 0;
            break;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= 14) {
                iB1 = 0;
                break;
            }
            iB1 = b1(strArr[i2], map);
            if (iB1 > 0) {
                break;
            }
            i2++;
        }
        if (iB1 > 0) {
            return iB1;
        }
        java.lang.Object obj = map != null ? map.get("user_info") : null;
        if (!(obj instanceof java.util.Map)) {
            return 0;
        }
        java.util.Map map2 = (java.util.Map) obj;
        java.lang.String[] strArr2 = {"govern", "govern_value", "user_govern", "user_govern_value", "leadership", "leadership_num", "leadershipNum", "user_leadership", "user_leadership_num", "user_leadershipNum", "command", "user_command", "tongyu", "user_tongyu"};
        if (map2 == null) {
            return 0;
        }
        for (int i3 = 0; i3 < 14; i3++) {
            int iB2 = b1(strArr2[i3], map2);
            if (iB2 > 0) {
                return iB2;
            }
        }
        return 0;
    }

    public static boolean B1(java.lang.String str, java.lang.String str2, java.util.Map map) {
        if (str2.isEmpty()) {
            return false;
        }
        for (java.util.Map map2 : f0(str, map)) {
            if (str2.equals(C2(map2.getOrDefault("general_pk_id", map2.get("pk_id"))))) {
                return true;
            }
        }
        return false;
    }

    public static java.util.ArrayList B2(int i2, int i3, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(java.lang.Integer.valueOf(i2));
        arrayList.add(str);
        arrayList.add("");
        arrayList.add(str2);
        arrayList.add(java.lang.Integer.valueOf(i3));
        if (!str3.isEmpty()) {
            arrayList.add(str3);
        }
        return arrayList;
    }

    public static int C(java.lang.String str) {
        if (str.length() < 2) {
            return 3;
        }
        char cCharAt = str.charAt(1);
        if (cCharAt == '1') {
            return 0;
        }
        if (cCharAt == '2') {
            return 1;
        }
        return cCharAt == '3' ? 2 : 3;
    }

    public static java.lang.String C2(java.lang.Object obj) {
        if (obj == null) {
            return "";
        }
        java.lang.String strValueOf = java.lang.String.valueOf(obj);
        return "null".equalsIgnoreCase(strValueOf) ? "" : strValueOf;
    }

    public static boolean D1(java.util.Map map) {
        if (map == null) {
            return false;
        }
        return (C2(map.get("insight_grow_type")).startsWith("zhanjicailiao") || C2(map.get("upgrade_exp_type")).startsWith("zhanjicailiao") || C2(map.get("insight_upgrade_exp_type")).startsWith("zhanjicailiao") || C2(map.get("eated_exp_type")).startsWith("zhanji") || c.a.f(map, "insight_max_level", "0", 0) <= 0) ? false : true;
    }

    public static boolean D2(java.util.Map map) {
        boolean zO2;
        java.lang.String strI2;
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator it = f0("General", map).iterator();
        while (it.hasNext()) {
            java.lang.String strI3 = i2(((java.util.Map) it.next()).getOrDefault("general_id", ""));
            if (!strI3.isEmpty()) {
                hashSet.add(strI3);
            }
        }
        java.util.HashSet hashSet2 = new java.util.HashSet();
        java.lang.Object obj = map.get("surrender_progress");
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                java.lang.String str = (java.lang.String) entry.getKey();
                java.lang.Object value = entry.getValue();
                if (str != null && str.startsWith("claimed_") && F1(value)) {
                    strI2 = i2(str.substring(8));
                } else if (value instanceof java.util.Map) {
                    java.util.Map map2 = (java.util.Map) value;
                    java.lang.Object obj2 = map2.get("claimed");
                    java.lang.Object obj3 = map2.get("rewarded");
                    if (F1(obj2) || F1(obj3)) {
                        strI2 = i2(str);
                    }
                }
                hashSet2.add(strI2);
            }
        }
        com.sgscq.vpn.a7 a7VarV1 = a1(null).V1();
        java.util.ArrayList<java.util.Map> arrayList = new java.util.ArrayList();
        java.lang.Object obj4 = map.get("Atlas");
        if (obj4 instanceof java.util.Map) {
            java.util.Map map3 = (java.util.Map) obj4;
            n(map3.get("add"), arrayList);
            n(map3.get("upd"), arrayList);
        }
        boolean zO3 = false;
        for (java.util.Map map4 : arrayList) {
            if (c.a.f(map4, "type", "0", 0) == 1) {
                java.lang.String strI4 = i2(map4.getOrDefault("general_id", map4.getOrDefault("pk_id", "")));
                if (hashSet.contains(strI4)) {
                    java.util.Map mapB = a7VarV1.b(strI4);
                    boolean zR = hashSet2.contains(strI4) ? mapB != null ? com.sgscq.vpn.handler.d0.R(map, mapB) : true : false;
                    zO3 |= o2("general_status", zR ? "0" : "1", map4);
                    if (zR) {
                        zO2 = o2("atlas_status", "2", map4);
                    } else if (c.a.f(map4, "atlas_status", "0", 0) < 1) {
                        zO2 = o2("atlas_status", "1", map4);
                    }
                } else {
                    zO2 = o2("general_status", "0", map4);
                }
                zO3 |= zO2;
            }
        }
        return zO3;
    }

    public static boolean E1(java.util.Map map) {
        return map != null && map.containsKey("skill_id");
    }

    public static void F(java.util.Map map, java.util.LinkedHashSet linkedHashSet, java.util.LinkedHashSet linkedHashSet2) {
        if (map == null) {
            return;
        }
        if (linkedHashSet.isEmpty() && linkedHashSet2.isEmpty()) {
            return;
        }
        for (java.util.Map map2 : f0("Atlas", map)) {
            java.lang.String strI2 = i2(map2.getOrDefault("general_id", map2.getOrDefault("pk_id", "")));
            if (strI2.isEmpty() || !linkedHashSet.contains(strI2)) {
                java.lang.String strI3 = i2(map2.getOrDefault("skill_id", map2.getOrDefault("pk_id", "")));
                if (!strI3.isEmpty() && linkedHashSet2.contains(strI3)) {
                    o2("atlas_status", "0", map2);
                }
            } else {
                o2("atlas_status", "0", map2);
                o2("general_status", "0", map2);
            }
        }
    }

    public static boolean F1(java.lang.Object obj) {
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).intValue() == 1;
        }
        return "1".equals(java.lang.String.valueOf(obj)) || java.lang.Boolean.TRUE.equals(obj);
    }

    public static void G(java.lang.Object obj, int i2, java.util.LinkedHashMap linkedHashMap) {
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                int iL2 = l2((java.lang.String) entry.getKey(), -1);
                if (iL2 > 0 && iL2 <= i2 && (entry.getValue() instanceof java.util.Map)) {
                    java.util.Map map = (java.util.Map) entry.getValue();
                    if (c.a.B(map, "buff_type", "0", "7")) {
                        java.lang.Object obj2 = map.get("buff_effect");
                        if (obj2 instanceof java.util.List) {
                            java.util.List list = (java.util.List) obj2;
                            if (list.size() >= 2) {
                                java.lang.String strValueOf = java.lang.String.valueOf(list.get(0));
                                java.lang.String strValueOf2 = java.lang.String.valueOf(list.get(1));
                                if (!strValueOf.isEmpty() && !strValueOf2.isEmpty()) {
                                    linkedHashMap.put(strValueOf, strValueOf2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static void H(java.lang.Object obj, java.util.LinkedHashMap linkedHashMap) {
        if (obj instanceof java.util.List) {
            java.util.Iterator it = ((java.util.List) obj).iterator();
            while (it.hasNext()) {
                H(it.next(), linkedHashMap);
            }
            return;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (map.containsKey("value")) {
                H(map.get("value"), linkedHashMap);
                return;
            }
            if (c.a.f(map, "buff_type", "0", 0) != 7) {
                return;
            }
            java.lang.Object obj2 = map.get("buff_effect");
            if (obj2 instanceof java.util.List) {
                java.util.List list = (java.util.List) obj2;
                if (list.size() >= 2) {
                    linkedHashMap.put(java.lang.String.valueOf(list.get(0)), java.lang.String.valueOf(list.get(1)));
                }
            }
        }
    }

    public static int H2(java.util.Map map) {
        int iA = A(map);
        map.put("fightPoint", java.lang.Integer.valueOf(iA));
        map.put("fight_point", java.lang.Integer.valueOf(iA));
        map.put("user_ability", java.lang.Integer.valueOf(iA));
        map.put("user_fighting", java.lang.Integer.valueOf(iA));
        map.put("fighting", java.lang.Integer.valueOf(iA));
        return iA;
    }

    public static void I(java.lang.Object obj, int i2, java.util.LinkedHashMap linkedHashMap) {
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                int iL2 = l2((java.lang.String) entry.getKey(), -1);
                if (iL2 > 0 && iL2 <= i2) {
                    H(entry.getValue(), linkedHashMap);
                }
            }
        }
    }

    public static boolean I2(java.lang.String str, java.util.Map map) {
        return c.a.B(map, "general_pk_id", "", str) || c.a.B(map, "pk_id", "", str) || c.a.B(map, "general_id", "", str);
    }

    public static java.lang.String J(java.lang.Object obj) {
        return obj == null ? "" : java.lang.String.valueOf(obj).trim().toUpperCase(java.util.Locale.ROOT);
    }

    public static java.util.Map J2(int i2, java.util.ArrayList arrayList) {
        int iMax;
        if (arrayList == null || arrayList.isEmpty() || (iMax = java.lang.Math.max(1, i2) - 1) < 0 || iMax >= arrayList.size()) {
            return null;
        }
        return (java.util.Map) arrayList.get(iMax);
    }

    public static java.lang.String K(java.lang.String str, java.lang.String str2, java.util.Map map) {
        java.lang.Object obj = map.get(str);
        return (obj == null || "null".equalsIgnoreCase(java.lang.String.valueOf(obj))) ? str2 : java.lang.String.valueOf(obj);
    }

    public static double K2(java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.Map map) {
        double d2;
        java.lang.Object obj = map.get(str);
        if (obj == null || java.lang.String.valueOf(obj).isEmpty()) {
            obj = map.get(str2);
        }
        if (obj == null) {
            obj = str3;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(obj);
        try {
            d2 = java.lang.Double.parseDouble(str3);
        } catch (java.lang.Exception unused) {
            d2 = 0.0d;
        }
        try {
            return java.lang.Double.parseDouble(strValueOf);
        } catch (java.lang.Exception unused2) {
            return d2;
        }
    }

    public static void L(java.lang.String str, java.lang.String str2, java.util.Map map, java.util.Map map2) {
        java.lang.String strK = K(str, "0", map2);
        map.put(str, strK);
        map.put(str2, strK);
    }

    public static void M(java.lang.String str, java.util.HashMap map, java.util.Map map2) {
        java.lang.Object obj = map2.get(str);
        if (obj == null || "null".equals(java.lang.String.valueOf(obj))) {
            return;
        }
        map.put(str, obj);
    }

    public static int N(java.util.List list) {
        int i2 = 0;
        if (list == null) {
            return 0;
        }
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            java.lang.String strValueOf = java.lang.String.valueOf(((java.util.Map) it.next()).get("type"));
            if ("dungeon".equals(strValueOf) || "boss".equals(strValueOf)) {
                i2++;
            }
        }
        return i2;
    }

    public static double O(java.lang.String str, java.util.Map map) {
        java.lang.String[] strArr = {"culture_attr_".concat(str), "cultivate_attr_".concat(str), "training_attr_".concat(str)};
        for (int i2 = 0; i2 < 3; i2++) {
            double dS0 = s0(strArr[i2], map);
            if (dS0 != 0.0d) {
                return dS0;
            }
        }
        return 0.0d;
    }

    public static java.lang.String P(java.lang.String str) {
        if (str == null || str.length() < 6) {
            return "";
        }
        return "3" + str.substring(1, 3) + str.substring(3, 6);
    }

    public static double Q(java.util.Map map, java.util.Map map2) {
        java.lang.String strC2 = C2(map2.getOrDefault("pk_id", map2.get("general_pk_id")));
        double d2 = 0.0d;
        double d3 = B1("TeamGeneral", strC2, map) ? 1000000.0d : 0.0d;
        if (B1("BuddyGeneral", strC2, map)) {
            d3 += 500000.0d;
        }
        java.lang.Object orDefault = map2.getOrDefault("general_fighting", map2.getOrDefault("fighting", map2.getOrDefault("fight_point", 0)));
        if (orDefault != null) {
            try {
                d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(orDefault));
            } catch (java.lang.Exception unused) {
            }
        }
        double dL2 = ((double) l2(C2(map2.getOrDefault("general_level", map2.getOrDefault("level", 1))), 1)) * 10000.0d;
        return (((double) l2(C2(map2.getOrDefault("talent_point", 0)), 0)) * 10.0d) + (((double) l2(C2(map2.getOrDefault("insight_level", map2.getOrDefault("breachLevel", 1))), 1)) * 1000.0d) + dL2 + d3 + d2 + ((double) l2(C2(map2.getOrDefault("ganoderma_num", 0)), 0));
    }

    public static boolean U(java.lang.String str, java.util.Map map) {
        return str.equals(c.a.k(map, "user_general_id", "", "general_id", "general_pk_id"));
    }

    public static int V(int i2) {
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 0;
        }
        return i2 == 4 ? 3 : -1;
    }

    public static java.util.Map X(java.lang.String str, java.util.Map map) {
        if (map == null || str == null || str.isEmpty()) {
            return null;
        }
        for (java.util.Map map2 : f0("General", map)) {
            if (c.a.A(map2, "pk_id", str)) {
                return map2;
            }
        }
        return null;
    }

    public static double Z(java.util.Map map, java.util.Map map2, java.lang.String... strArr) {
        for (java.lang.String str : strArr) {
            if (map != null && map.containsKey(str)) {
                try {
                    return java.lang.Double.parseDouble(java.lang.String.valueOf(map.get(str)));
                } catch (java.lang.Exception unused) {
                    return 0.0d;
                }
            }
            if (map2 != null && map2.containsKey(str)) {
                try {
                    return java.lang.Double.parseDouble(java.lang.String.valueOf(map2.get(str)));
                } catch (java.lang.Exception unused2) {
                    return 0.0d;
                }
            }
        }
        return 0.0d;
    }

    public static com.sgscq.vpn.w1 Z0() {
        com.sgscq.vpn.w1 w1Var = W;
        if (w1Var != null) {
            return w1Var;
        }
        throw new java.lang.IllegalStateException("GameDataManager not initialized");
    }

    public static int a(java.lang.String str, java.util.Map map, java.util.Map map2, java.util.Map map3) {
        int i2;
        java.lang.String strJ = c.a.j(map, "pk_id", "", str);
        java.lang.String strJ2 = c.a.j(map2, "pk_id", "", str);
        java.util.Map map4 = map3 != null ? (java.util.Map) map3.get(strJ) : null;
        java.util.Map map5 = map3 != null ? (java.util.Map) map3.get(strJ2) : null;
        int iP = p(map, map4);
        int i3 = 4;
        if (iP == 1) {
            i2 = 0;
        } else if (iP == 2) {
            i2 = 1;
        } else if (iP == 3) {
            i2 = 2;
        } else {
            i2 = iP == 4 ? 3 : 4;
        }
        int iP2 = p(map2, map5);
        if (iP2 == 1) {
            i3 = 0;
        } else if (iP2 == 2) {
            i3 = 1;
        } else if (iP2 == 3) {
            i3 = 2;
        } else if (iP2 == 4) {
            i3 = 3;
        }
        int iCompare = java.lang.Integer.compare(i2, i3);
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = java.lang.Double.compare(o(map2, map5), o(map, map4));
        return iCompare2 != 0 ? iCompare2 : strJ.compareTo(strJ2);
    }

    public static int a0(java.util.Map map, java.lang.String... strArr) {
        for (java.lang.String str : strArr) {
            if (map.containsKey(str)) {
                java.lang.Object obj = map.get(str);
                if (obj instanceof java.lang.Number) {
                    return (int) java.lang.Math.round(((java.lang.Number) obj).doubleValue());
                }
                try {
                    return (int) java.lang.Math.round(java.lang.Double.parseDouble(java.lang.String.valueOf(obj)));
                } catch (java.lang.Exception unused) {
                    continue;
                }
            }
        }
        return 0;
    }

    public static synchronized com.sgscq.vpn.w1 a1(android.content.Context context) {
        if (W == null) {
            W = new com.sgscq.vpn.w1(context);
        }
        return W;
    }

    public static java.lang.String b(java.util.Map map) {
        if (map == null) {
            return "";
        }
        java.lang.Object obj = map.get("general_id");
        if (obj == null) {
            obj = map.get("skill_id");
        }
        if (obj == null) {
            obj = map.get("equipment_id");
        }
        if (obj == null) {
            obj = map.get("godness_id");
        }
        if (obj == null) {
            obj = map.get("pk_id");
        }
        return obj == null ? "" : java.lang.String.valueOf(obj);
    }

    public static int b1(java.lang.String str, java.util.Map map) {
        java.lang.Object obj = map.get(str);
        if (obj == null) {
            return 0;
        }
        if (obj instanceof java.lang.Number) {
            double dDoubleValue = ((java.lang.Number) obj).doubleValue();
            if (java.lang.Double.isNaN(dDoubleValue) || java.lang.Double.isInfinite(dDoubleValue)) {
                return 0;
            }
            return (int) dDoubleValue;
        }
        try {
            double d2 = java.lang.Double.parseDouble(obj.toString());
            if (!java.lang.Double.isNaN(d2) && !java.lang.Double.isInfinite(d2)) {
                return (int) d2;
            }
        } catch (java.lang.NumberFormatException unused) {
        }
        return 0;
    }

    public static void b2(java.lang.String str, java.lang.String str2, java.util.ArrayList arrayList, java.util.Map map) {
        if (map == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            return;
        }
        java.lang.Object obj = map.get("Atlas");
        if (obj instanceof java.util.Map) {
            java.lang.Object obj2 = ((java.util.Map) obj).get("add");
            if (obj2 instanceof java.util.List) {
                for (java.util.Map map2 : (java.util.List) obj2) {
                    if (c.a.B(map2, str, "", str2)) {
                        map2.put("atlas_status", "1");
                        map2.put("general_status", u1(map2) ? "1" : "0");
                        if (arrayList != null) {
                            java.lang.String strValueOf = java.lang.String.valueOf(map2.getOrDefault("pk_id", ""));
                            java.util.Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                if (c.a.B((java.util.Map) it.next(), "pk_id", "", strValueOf)) {
                                    return;
                                }
                            }
                            arrayList.add(map2);
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    public static void c(java.lang.Object obj, double[] dArr) {
        double d2;
        if (obj instanceof java.util.List) {
            java.util.Iterator it = ((java.util.List) obj).iterator();
            while (it.hasNext()) {
                c(it.next(), dArr);
            }
        } else if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (map.containsKey("value")) {
                c(map.get("value"), dArr);
                return;
            }
            int iV = V(l2(java.lang.String.valueOf(map.getOrDefault("buff_type", "0")), 0));
            if (iV < 0) {
                return;
            }
            double d3 = dArr[iV];
            try {
                d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(map.getOrDefault("buff_effect", "0")));
            } catch (java.lang.Exception unused) {
                d2 = 0.0d;
            }
            dArr[iV] = d3 + d2;
        }
    }

    public static int c2(int i2, java.util.ArrayList arrayList) {
        int iF;
        int iMin = java.lang.Math.min(java.lang.Math.max(1, i2), arrayList == null ? 0 : arrayList.size());
        int i3 = 1;
        for (int i4 = 0; i4 < iMin; i4++) {
            java.util.Map map = (java.util.Map) arrayList.get(i4);
            if (map != null && (iF = c.a.f(map, "team_num", "1", 1)) > i3) {
                i3 = iF;
            }
        }
        return java.lang.Math.max(1, i3);
    }

    public static void d(java.lang.Object obj, java.lang.String str, java.lang.String str2, double[] dArr, double[] dArr2) {
        int iV;
        if (obj instanceof java.util.List) {
            java.util.Iterator it = ((java.util.List) obj).iterator();
            while (it.hasNext()) {
                d(it.next(), str, str2, dArr, dArr2);
            }
            return;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (map.containsKey("value")) {
                d(map.get("value"), str, str2, dArr, dArr2);
                return;
            }
            int iF = c.a.f(map, "buff_type", "0", 0);
            java.lang.Object obj2 = map.get("buff_effect");
            double d2 = 0.0d;
            if (iF >= 1 && iF <= 4 && str.equals(str2)) {
                int iV2 = V(iF);
                double d3 = dArr[iV2];
                try {
                    d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(obj2));
                } catch (java.lang.Exception unused) {
                }
                dArr[iV2] = d3 + d2;
                return;
            }
            if (iF == 7 && str.equals(str2)) {
                double d4 = dArr2[0];
                try {
                    d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(obj2));
                } catch (java.lang.Exception unused2) {
                }
                dArr2[0] = d4 + d2;
                return;
            }
            if (iF == 8 && str.equals(str2)) {
                double d5 = dArr2[2];
                try {
                    d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(obj2));
                } catch (java.lang.Exception unused3) {
                }
                dArr2[2] = d5 + d2;
                return;
            }
            if (iF == 9 && str.equals(str2)) {
                double d6 = dArr2[1];
                try {
                    d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(obj2));
                } catch (java.lang.Exception unused4) {
                }
                dArr2[1] = d6 + d2;
            } else if (iF == 12 && (obj2 instanceof java.util.List)) {
                java.util.List list = (java.util.List) obj2;
                if (list.size() < 3 || !str2.equals(java.lang.String.valueOf(list.get(0))) || (iV = V(l2(java.lang.String.valueOf(list.get(1)), 0))) < 0) {
                    return;
                }
                double d7 = dArr[iV];
                try {
                    d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(list.get(2)));
                } catch (java.lang.Exception unused5) {
                }
                dArr[iV] = d7 + d2;
            }
        }
    }

    public static int d0(java.lang.String str, java.util.Map map) {
        int iP;
        if (str.startsWith("神")) {
            return 0;
        }
        if (str.startsWith("界")) {
            return 1;
        }
        if (str.startsWith("壕")) {
            return 2;
        }
        if (str.startsWith("魔") || (iP = p(null, map)) == 5) {
            return 3;
        }
        if (iP == 1) {
            return 4;
        }
        if (iP == 2) {
            return 5;
        }
        if (iP == 3) {
            return 6;
        }
        return iP == 4 ? 7 : 8;
    }

    public static java.lang.String d2(java.util.Map map) {
        int iF = c.a.f(map, "next_pk_General", "0", 0);
        java.util.HashSet hashSet = new java.util.HashSet();
        java.lang.String[] strArr = {"General", "Skill", "TeamGeneral"};
        int i2 = 900000;
        for (int i3 = 0; i3 < 3; i3++) {
            java.util.Iterator it = f0(strArr[i3], map).iterator();
            while (it.hasNext()) {
                int iF2 = c.a.f((java.util.Map) it.next(), "pk_id", "0", 0);
                if (iF2 > i2) {
                    i2 = iF2;
                }
                if (iF2 > 0) {
                    hashSet.add(java.lang.String.valueOf(iF2));
                }
            }
        }
        int iMax = java.lang.Math.max(iF, i2 + 1);
        while (hashSet.contains(java.lang.String.valueOf(iMax))) {
            iMax++;
        }
        map.put("next_pk_General", java.lang.Integer.valueOf(iMax + 1));
        return java.lang.String.valueOf(iMax);
    }

    public static void e(java.lang.Object obj, int i2, double[] dArr) {
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                int iL2 = l2((java.lang.String) entry.getKey(), -1);
                if (iL2 > 0 && iL2 <= i2) {
                    c(entry.getValue(), dArr);
                }
            }
        }
    }

    public static java.util.ArrayList e0(java.lang.String str, int i2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (str != null && !str.isEmpty() && i2 > 0) {
            for (int i3 = 1; i3 <= i2; i3++) {
                arrayList.add(str + java.lang.String.format(java.util.Locale.ROOT, "%03d01", java.lang.Integer.valueOf(i3)));
            }
        }
        return arrayList;
    }

    public static int e2(java.lang.String str, java.util.Map map) {
        java.util.List arrayList;
        java.lang.String strConcat = "next_pk_".concat(str);
        int iF = c.a.f(map, strConcat, "0", 0);
        java.util.HashSet hashSet = new java.util.HashSet();
        java.lang.String[] strArr = {"add", "upd", "update_list"};
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            java.lang.String str2 = strArr[i3];
            java.lang.Object obj = map.get(str);
            if (obj instanceof java.util.Map) {
                java.lang.Object obj2 = ((java.util.Map) obj).get(str2);
                arrayList = !(obj2 instanceof java.util.List) ? new java.util.ArrayList() : (java.util.List) obj2;
            } else {
                arrayList = new java.util.ArrayList();
            }
            java.util.Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                int iF2 = c.a.f((java.util.Map) it.next(), "pk_id", "0", 0);
                if (iF2 > i2) {
                    i2 = iF2;
                }
                if (iF2 > 0) {
                    hashSet.add(java.lang.Integer.valueOf(iF2));
                }
            }
        }
        int iMax = java.lang.Math.max(iF, i2 + 1);
        while (hashSet.contains(java.lang.Integer.valueOf(iMax))) {
            iMax++;
        }
        map.put(strConcat, java.lang.Integer.valueOf(iMax + 1));
        return iMax;
    }

    public static java.util.List f0(java.lang.String str, java.util.Map map) {
        java.lang.Object obj = map.get(str);
        if (obj instanceof java.util.Map) {
            java.lang.Object obj2 = ((java.util.Map) obj).get("add");
            if (obj2 instanceof java.util.List) {
                return (java.util.List) obj2;
            }
        }
        return new java.util.ArrayList();
    }

    public static boolean h2(java.util.Map map, java.util.Map map2) {
        java.lang.Object obj;
        if (map == null || map2 == null || (obj = map2.get("insight_grow_type")) == null) {
            return false;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(obj);
        if (!strValueOf.isEmpty() && !"0".equals(strValueOf) && !"null".equalsIgnoreCase(strValueOf)) {
            java.lang.Object obj2 = map.get("insight_grow_type");
            if (obj2 != null && !java.lang.String.valueOf(obj2).isEmpty() && !"0".equals(java.lang.String.valueOf(obj2)) && !"null".equalsIgnoreCase(java.lang.String.valueOf(obj2))) {
                return false;
            }
            map.put("insight_grow_type", strValueOf);
            return true;
        }
        return false;
    }

    public static java.lang.String i2(java.lang.Object obj) {
        int iL2;
        if (obj == null) {
            return "";
        }
        if (obj instanceof java.lang.Number) {
            iL2 = ((java.lang.Number) obj).intValue();
        } else {
            java.lang.String strValueOf = java.lang.String.valueOf(obj);
            if (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) {
                return "";
            }
            if (!strValueOf.matches("\\d+\\.0+")) {
                return strValueOf;
            }
            iL2 = l2(strValueOf, 0);
        }
        return java.lang.String.valueOf(iL2);
    }

    public static void j(java.util.ArrayList arrayList, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (r1(str3)) {
            return;
        }
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.sgscq.vpn.v1 v1Var = (com.sgscq.vpn.v1) it.next();
            if (v1Var.f1450a.equals(str) && v1Var.f1451b.equals(str2) && v1Var.f1452c.equals(str3)) {
                return;
            }
        }
        arrayList.add(new com.sgscq.vpn.v1(str, str2, str3));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005a  */
    /* JADX WARN: Code duplicated, block: B:24:0x005c  */
    public static boolean j2(java.util.Map map) {
        boolean z;
        boolean z2 = false;
        for (java.util.Map map2 : f0("Skill", map)) {
            if (!z1(map2.get("is_natural"))) {
                java.lang.Object obj = map2.get("general_pk_id");
                boolean z3 = obj instanceof java.lang.Number;
                if (!z3) {
                    java.lang.String strValueOf = obj == null ? "" : java.lang.String.valueOf(obj);
                    if ("0".equals(strValueOf) || strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else if (((java.lang.Number) obj).intValue() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    if (!z3 || ((java.lang.Number) obj).intValue() != 0) {
                        map2.put("general_pk_id", 0);
                        z2 = true;
                    }
                    if (!"0".equals(java.lang.String.valueOf(map2.getOrDefault("position", "0")))) {
                        map2.put("position", "0");
                        z2 = true;
                    }
                    if (!"0".equals(java.lang.String.valueOf(map2.getOrDefault("pos", "0")))) {
                        map2.put("pos", "0");
                        z2 = true;
                    }
                    if (!"0".equals(java.lang.String.valueOf(map2.getOrDefault("skill_position", "0")))) {
                        map2.put("skill_position", "0");
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }

    public static void k(int i2, java.lang.String str, java.util.Map map) {
        java.util.Map map2 = (java.util.Map) map.get("GeneralSoul");
        java.util.Map map3 = map2;
        if (map2 == null) {
            java.util.HashMap map4 = new java.util.HashMap();
            map4.put("add", new java.util.ArrayList());
            map4.put("del", new java.util.ArrayList());
            map4.put("upd", new java.util.ArrayList());
            map.put("GeneralSoul", map4);
            map3 = map4;
        }
        java.util.List<java.util.Map> listO = (java.util.List) map3.get("add");
        if (listO == null) {
            listO = c.a.o(map3, "add");
        }
        for (java.util.Map map5 : listO) {
            if (c.a.A(map5, "general_id", str)) {
                map5.put("num", java.lang.Integer.valueOf(l2(java.lang.String.valueOf(map5.get("num")), 0) + i2));
                return;
            }
        }
        java.util.HashMap mapP = c.a.p("id", str, "general_id", str);
        mapP.put("pk_id", str);
        mapP.put("num", java.lang.Integer.valueOf(i2));
        mapP.put("card_type", 1);
        listO.add(mapP);
    }

    public static java.util.List k2(java.lang.Object obj) {
        if (!(obj instanceof java.util.List)) {
            return java.util.Collections.emptyList();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator it = ((java.util.List) obj).iterator();
        while (it.hasNext()) {
            java.lang.String strJ = J(it.next());
            if (strJ.length() >= 2) {
                int iL2 = l2(strJ.substring(0, strJ.length() - 2), 0);
                char upperCase = java.lang.Character.toUpperCase(strJ.charAt(strJ.length() - 2));
                if (iL2 > 0 && w1(upperCase)) {
                    arrayList.add(B2(iL2, 0, java.lang.String.valueOf(upperCase), "", ""));
                }
            }
        }
        return arrayList;
    }

    public static void l(java.lang.String str, java.util.Map map, java.util.HashMap map2) {
        java.util.Map map3;
        java.lang.Object obj = map.get(str);
        if (obj instanceof java.util.Map) {
            map3 = (java.util.Map) obj;
        } else {
            map3 = new java.util.HashMap();
            map.put(str, map3);
        }
        java.util.List listO = (java.util.List) map3.get("add");
        if (listO == null) {
            listO = c.a.o(map3, "add");
        }
        listO.add(map2);
    }

    public static int l2(java.lang.String str, int i2) {
        try {
            try {
                return java.lang.Integer.parseInt(str);
            } catch (java.lang.Exception unused) {
                return i2;
            }
        } catch (java.lang.Exception unused2) {
            return (int) java.lang.Double.parseDouble(str);
        }
    }

    public static int m2(java.lang.Object obj, int i2) {
        return obj instanceof java.lang.Number ? ((java.lang.Number) obj).intValue() : l2(java.lang.String.valueOf(obj), i2);
    }

    public static void n(java.lang.Object obj, java.util.ArrayList arrayList) {
        if (obj instanceof java.util.List) {
            for (java.lang.Object obj2 : (java.util.List) obj) {
                if (obj2 instanceof java.util.Map) {
                    arrayList.add((java.util.Map) obj2);
                }
            }
        }
    }

    public static java.util.ArrayList n2(java.lang.Object obj) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (obj instanceof java.util.List) {
            java.util.Iterator it = ((java.util.List) obj).iterator();
            while (it.hasNext()) {
                java.lang.String strValueOf = java.lang.String.valueOf(it.next());
                if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
                    arrayList.add(strValueOf);
                }
            }
        } else if (obj instanceof java.util.Map) {
            arrayList.addAll(n2(((java.util.Map) obj).get("guests")));
        } else if (obj != null) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(obj);
            if (!strValueOf2.isEmpty() && !"null".equals(strValueOf2)) {
                arrayList.add(strValueOf2);
            }
        }
        return arrayList;
    }

    public static double o(java.util.Map map, java.util.Map map2) {
        java.lang.Object obj = map != null ? map.get("fighting") : null;
        if (obj == null && map != null) {
            obj = map.get("fighting_point");
        }
        if (obj == null && map != null) {
            obj = map.get("fight_point");
        }
        if (obj == null && map2 != null) {
            obj = map2.get("fighting");
        }
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).doubleValue();
        }
        if (obj == null) {
            return 0.0d;
        }
        try {
            return java.lang.Double.parseDouble(java.lang.String.valueOf(obj));
        } catch (java.lang.Exception unused) {
            return 0.0d;
        }
    }

    public static boolean o2(java.lang.String str, java.lang.String str2, java.util.Map map) {
        if (c.a.B(map, str, "", str2)) {
            return false;
        }
        map.put(str, str2);
        return true;
    }

    public static int p(java.util.Map map, java.util.Map map2) {
        java.lang.Object obj = map != null ? map.get("grade") : null;
        if (obj == null && map2 != null) {
            obj = map2.get("grade");
        }
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).intValue();
        }
        if (obj != null) {
            try {
                return (int) java.lang.Double.parseDouble(java.lang.String.valueOf(obj));
            } catch (java.lang.Exception unused) {
            }
        }
        return 0;
    }

    public static boolean p1(java.lang.String str, java.util.Map map) {
        java.lang.Object obj = map.get("source");
        if (!(obj instanceof java.util.List)) {
            return false;
        }
        for (java.lang.Object obj2 : (java.util.List) obj) {
            if ((obj2 instanceof java.util.Map) && str.equals(C2(((java.util.Map) obj2).get("source_type")))) {
                return true;
            }
        }
        return false;
    }

    public static void p2(java.lang.Object obj, java.lang.String str, java.util.HashMap map) {
        java.lang.Object obj2 = map.get(str);
        if (obj2 == null || java.lang.String.valueOf(obj2).isEmpty() || "null".equalsIgnoreCase(java.lang.String.valueOf(obj2))) {
            map.put(str, obj);
        }
    }

    public static java.lang.String q(java.util.Map map, java.util.Map map2) {
        java.lang.Object obj;
        if (map != null) {
            obj = map.get("general_name");
            if (obj == null) {
                obj = map.get("display_name");
            }
        } else {
            obj = null;
        }
        if ((obj == null || java.lang.String.valueOf(obj).isEmpty()) && map2 != null) {
            java.lang.Object obj2 = map2.get("display_name");
            if (obj2 == null) {
                obj2 = map2.get("general_name");
            }
            obj = obj2;
            if (obj == null) {
                obj = map2.get("name");
            }
        }
        return obj == null ? "" : java.lang.String.valueOf(obj);
    }

    public static java.lang.String q0(int i2) {
        return java.lang.String.format("1640%02d", java.lang.Integer.valueOf(((java.lang.Math.max(1, i2) - 1) % 60) + 1));
    }

    public static java.util.List q1(java.util.Map map) {
        java.lang.Object obj = map.get("nodes");
        if (!(obj instanceof java.util.List)) {
            return java.util.Collections.emptyList();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i2 = 0;
        for (java.lang.Object obj2 : (java.util.List) obj) {
            if (obj2 instanceof java.util.Map) {
                java.util.Map map2 = (java.util.Map) obj2;
                java.lang.String strValueOf = java.lang.String.valueOf(map2.get("type"));
                if ("dungeon".equals(strValueOf) || "boss".equals(strValueOf)) {
                    i2++;
                    if (java.lang.Boolean.TRUE.equals(map2.get("hidden"))) {
                        arrayList.add(java.lang.Integer.valueOf(i2));
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean q2(java.lang.Object obj, java.lang.String str, java.util.Map map) {
        java.lang.Object obj2 = map.get(str);
        if (obj2 != null && !java.lang.String.valueOf(obj2).isEmpty() && !"null".equals(java.lang.String.valueOf(obj2)) && java.lang.String.valueOf(obj2).equals(java.lang.String.valueOf(obj))) {
            return false;
        }
        map.put(str, obj);
        return true;
    }

    public static boolean r1(java.lang.String str) {
        return str.isEmpty() || "0".equals(str) || "null".equalsIgnoreCase(str) || "NaN".equalsIgnoreCase(str);
    }

    public static boolean r2(java.lang.String str, java.lang.String str2, java.util.Map map) {
        java.lang.Object obj = map.get(str2);
        java.lang.String strValueOf = obj == null ? "" : java.lang.String.valueOf(obj);
        if (!strValueOf.isEmpty() && !"null".equalsIgnoreCase(strValueOf) && !"NaN".equalsIgnoreCase(strValueOf)) {
            return false;
        }
        map.put(str2, str);
        return true;
    }

    public static int s(int i2) {
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                if (i2 != 3) {
                    return i2 != 4 ? -1 : 3;
                }
                return 0;
            }
        }
        return i3;
    }

    public static double s0(java.lang.String str, java.util.Map map) {
        java.lang.Object obj = map.get(str);
        if (obj == null) {
            return 0.0d;
        }
        if (obj instanceof java.lang.Number) {
            double dDoubleValue = ((java.lang.Number) obj).doubleValue();
            if (java.lang.Double.isNaN(dDoubleValue) || java.lang.Double.isInfinite(dDoubleValue)) {
                return 0.0d;
            }
            return dDoubleValue;
        }
        try {
            double d2 = java.lang.Double.parseDouble(obj.toString());
            if (java.lang.Double.isNaN(d2) || java.lang.Double.isInfinite(d2)) {
                return 0.0d;
            }
            return d2;
        } catch (java.lang.NumberFormatException unused) {
        }
    }

    public static java.lang.String s2(java.lang.String str) {
        int i2 = 0;
        for (java.io.File absoluteFile = new java.io.File(java.lang.System.getProperty("user.dir", ".")).getAbsoluteFile(); i2 < 6 && absoluteFile != null; absoluteFile = absoluteFile.getParentFile()) {
            java.io.File file = new java.io.File(absoluteFile, str);
            if (file.isFile()) {
                try {
                    return new java.lang.String(java.nio.file.Files.readAllBytes(file.toPath()), java.nio.charset.StandardCharsets.UTF_8);
                } catch (java.lang.Exception unused) {
                    return null;
                }
            }
            i2++;
        }
        return null;
    }

    public static boolean u1(java.util.Map map) {
        return (map == null || !map.containsKey("general_id") || map.containsKey("skill_id")) ? false : true;
    }

    public static void u2(java.util.Map map, java.lang.String str, java.util.HashSet hashSet) {
        java.util.Iterator it = f0(str, map).iterator();
        while (it.hasNext()) {
            java.util.Map map2 = (java.util.Map) it.next();
            java.lang.String strC2 = C2(map2.get("pk_id"));
            java.lang.String strC3 = C2(map2.get("general_pk_id"));
            if (hashSet.contains(strC2) || hashSet.contains(strC3)) {
                it.remove();
            }
        }
    }

    public static boolean v1(java.lang.String str, java.util.Map map) {
        java.util.Iterator it = f0("TeamGeneral", map).iterator();
        while (it.hasNext()) {
            if (I2(str, (java.util.Map) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void v2(java.lang.String str, java.util.ArrayList arrayList, java.util.Map map) {
        java.util.List listF0 = f0(str, map);
        int size = listF0.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            java.util.Map map2 = (java.util.Map) listF0.get(size);
            java.lang.String strC2 = C2(map2.get("pk_id"));
            java.lang.String strC3 = C2(map2.getOrDefault("general_pk_id", map2.get("user_general_id")));
            if (arrayList.contains(strC2) || arrayList.contains(strC3)) {
                listF0.remove(size);
            } else {
                for (java.lang.String str2 : new java.util.ArrayList(map2.keySet())) {
                    if (arrayList.contains(C2(map2.get(str2)))) {
                        map2.put(str2, "0");
                    }
                }
            }
        }
    }

    public static java.util.HashMap w(java.lang.String str, java.util.Map map, java.lang.String str2, double[] dArr, double d2) {
        java.util.HashMap mapP = c.a.p("id", str, "general_id", str);
        mapP.put("general_name", str2);
        mapP.put("fighting", java.lang.String.valueOf(d2));
        mapP.put("fighting_point", java.lang.String.valueOf(d2));
        mapP.put("fight_point", java.lang.String.valueOf(d2));
        mapP.put("grade", java.lang.Integer.valueOf(b1("grade", map)));
        mapP.put("resource_id", java.lang.String.valueOf(map.getOrDefault("resource_id", str)));
        if (dArr != null && dArr.length > 3) {
            mapP.put("general_hp", java.lang.String.valueOf(dArr[0]));
            mapP.put("general_attack", java.lang.String.valueOf(dArr[1]));
            mapP.put("general_defense", java.lang.String.valueOf(dArr[2]));
            mapP.put("general_wisdom", java.lang.String.valueOf(dArr[3]));
        }
        mapP.put("star", java.lang.Integer.valueOf(b1("star", map)));
        mapP.put("general_sex", java.lang.String.valueOf(s0("general_sex", map)));
        mapP.put("general_orbit", java.lang.String.valueOf(s0("general_orbit", map)));
        return mapP;
    }

    public static boolean w1(char c2) {
        return c2 == 'U' || c2 == 'D' || c2 == 'L' || c2 == 'R';
    }

    public static void w2(java.util.ArrayList arrayList, java.util.Map map) {
        java.util.List listF0 = f0("Skill", map);
        int size = listF0.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            java.util.Map map2 = (java.util.Map) listF0.get(size);
            java.lang.String strC2 = C2(map2.get("pk_id"));
            java.lang.String strC3 = C2(map2.get("general_pk_id"));
            if (arrayList.contains(strC2) || arrayList.contains(strC3)) {
                listF0.remove(size);
            }
        }
    }

    public static double x(double d2, double d3, double d4, double d5) {
        return java.lang.Math.floor((((double) ((int) d2)) * 0.4d) + ((double) (((int) d3) + ((int) d4))) + ((double) ((int) d5)));
    }

    public static boolean x1(java.util.Map map) {
        java.lang.String strC2 = C2(map.get("skill_id"));
        if (strC2.isEmpty()) {
            strC2 = C2(map.get("id"));
        }
        if (strC2.isEmpty()) {
            strC2 = C2(map.get("skill_code"));
        }
        return strC2.length() == 6 && strC2.startsWith("39100") && strC2.charAt(5) >= '1' && strC2.charAt(5) <= '8';
    }

    public static boolean x2(java.util.Map map) {
        java.util.List<java.util.Map> listF0 = f0("Skill", map);
        java.util.List<java.util.Map> listF1 = f0("General", map);
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        for (java.util.Map map2 : listF0) {
            if (z1(map2.get("is_natural"))) {
                java.lang.String strValueOf = java.lang.String.valueOf(map2.getOrDefault("general_pk_id", ""));
                if (!strValueOf.isEmpty() && !"0".equals(strValueOf)) {
                    java.lang.String strValueOf2 = java.lang.String.valueOf(map2.getOrDefault("pk_id", ""));
                    if (!strValueOf2.isEmpty() && !"0".equals(strValueOf2)) {
                        linkedHashMap.put(strValueOf, strValueOf2);
                    }
                }
            }
        }
        boolean z = false;
        for (java.util.Map map3 : listF1) {
            java.lang.String str = (java.lang.String) linkedHashMap.get(java.lang.String.valueOf(map3.getOrDefault("pk_id", "")));
            if (str != null && !c.a.A(map3, "general_naturalskill_id", str)) {
                map3.put("general_naturalskill_id", str);
                z = true;
            }
        }
        return z;
    }

    public static boolean z1(java.lang.Object obj) {
        if (obj instanceof java.lang.Boolean) {
            return ((java.lang.Boolean) obj).booleanValue();
        }
        java.lang.String strValueOf = obj == null ? "" : java.lang.String.valueOf(obj);
        return "1".equals(strValueOf) || "true".equalsIgnoreCase(strValueOf);
    }

    public final java.lang.String A0(java.lang.String str) {
        java.util.Map mapZ0 = z0(str);
        return mapZ0 == null ? str : Y0((java.lang.String) mapZ0.get("name"));
    }

    public final java.lang.String B0(java.lang.String str) {
        if (str != null && !str.isEmpty()) {
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "evolutions.json");
            if ((strA == null || strA.isEmpty()) && X) {
                strA = s2("docs/game_data_json/evolutions.json");
            }
            if (strA != null && !strA.isEmpty()) {
                try {
                    java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$25().getType());
                    if (list != null) {
                        for (java.util.Map map : list) {
                            if (str.equals(java.lang.String.valueOf(map.getOrDefault("general_id", "")))) {
                                return java.lang.String.valueOf(map.getOrDefault("evolution_id", ""));
                            }
                        }
                    }
                } catch (java.lang.Exception unused) {
                }
            }
        }
        return "";
    }

    public final java.lang.String C0(java.lang.String str) {
        if (str != null && !str.isEmpty()) {
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "evolutions.json");
            if ((strA == null || strA.isEmpty()) && X) {
                strA = s2("docs/game_data_json/evolutions.json");
            }
            if (strA != null && !strA.isEmpty()) {
                try {
                    java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$26().getType());
                    if (list != null) {
                        for (java.util.Map map : list) {
                            if (str.equals(java.lang.String.valueOf(map.getOrDefault("general_id", "")))) {
                                return java.lang.String.valueOf(map.getOrDefault("resource_id", ""));
                            }
                        }
                    }
                } catch (java.lang.Exception unused) {
                }
            }
        }
        return "";
    }

    /* JADX WARN: Code duplicated, block: B:24:0x003e  */
    public final boolean C1(java.lang.String str) {
        boolean z;
        java.util.HashMap map;
        java.util.ArrayList arrayList;
        java.util.Map mapJ0 = J0(str);
        if (mapJ0 != null) {
            return D1(mapJ0) && o1(str, mapJ0);
        }
        if (this.f1493a == null && (map = this.f1497e) != null && map.isEmpty() && ((arrayList = this.f1498f) == null || arrayList.isEmpty())) {
            if (str == null) {
                z = false;
            } else {
                java.lang.String strTrim = str.trim();
                if ("100000".equals(strTrim) || !strTrim.matches("1\\d{5}")) {
                    z = false;
                } else {
                    z = true;
                }
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final int D(java.util.Map map) {
        if (map == null) {
            return 0;
        }
        java.util.List listF0 = f0("General", map);
        if (listF0.isEmpty()) {
            return 0;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int size = listF0.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            java.util.Map map2 = (java.util.Map) listF0.get(size);
            if (!java.lang.Boolean.TRUE.equals(map2.get("story_guest"))) {
                java.lang.String strC2 = C2(map2.getOrDefault("general_id", map2.get("id")));
                if (!strC2.isEmpty() && !"0".equals(strC2) && !C1(strC2) && !s1(strC2)) {
                    java.lang.String strC3 = C2(map2.getOrDefault("pk_id", map2.get("general_pk_id")));
                    if (!strC3.isEmpty()) {
                        arrayList.add(strC3);
                    }
                    listF0.remove(size);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return 0;
        }
        w2(arrayList, map);
        v2("TeamGeneral", arrayList, map);
        v2("BuddyGeneral", arrayList, map);
        return arrayList.size();
    }

    public final java.util.Map D0(java.lang.String str) {
        if (this.f1509q == null) {
            this.f1509q = new java.util.HashMap();
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "fates.json");
            if ((strA == null || strA.isEmpty()) && X) {
                strA = s2("docs/game_data_json/fates.json");
            }
            if (strA != null && !strA.isEmpty()) {
                try {
                    java.util.Map map = (java.util.Map) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$12().getType());
                    if (map != null) {
                        for (java.util.Map.Entry entry : map.entrySet()) {
                            java.util.Map map2 = (java.util.Map) entry.getValue();
                            if (map2 != null) {
                                map2.putIfAbsent("id", entry.getKey());
                                this.f1509q.put((java.lang.String) entry.getKey(), map2);
                            }
                        }
                    }
                } catch (java.lang.Exception e2) {
                    c.a.D(e2, new java.lang.StringBuilder("[GameDataManager] loadFatesConfig failed: "), "SGSCQ_SRV");
                }
            }
        }
        return (java.util.Map) this.f1509q.get(str);
    }

    public final boolean E(java.lang.String str, java.util.Map map) {
        java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault(str, ""));
        if (r1(strValueOf)) {
            if ("".equals(strValueOf)) {
                return false;
            }
            map.put(str, "");
            return true;
        }
        if (e1(strValueOf) != null) {
            return false;
        }
        map.put(str, "");
        return true;
    }

    public final java.util.Map E0(java.lang.String str) {
        java.util.HashMap map = this.J;
        if (map == null || map.isEmpty()) {
            t();
        }
        return (java.util.Map) this.J.get(str);
    }

    public final boolean E2(java.util.Map map, java.util.Map map2) {
        java.lang.String strZ2 = z2(map2);
        if (r1(strZ2) || e1(strZ2) == null) {
            strZ2 = "";
        }
        if (r1(strZ2)) {
            return q2("0", "ls_value", map2) | q2("0", "ls_type", map2) | false;
        }
        return G2(map2, strZ2, map != null ? y(java.lang.String.valueOf(map2.getOrDefault("general_id", "")), map).f1361k : 0.0d);
    }

    public final java.util.Map F0(java.lang.String str) {
        java.util.HashMap map = this.K;
        if (map == null || map.isEmpty()) {
            t();
        }
        return (java.util.Map) this.K.get(str);
    }

    public final boolean F2(java.lang.String str, java.util.Map map) {
        java.util.Map mapX = X(str, map);
        com.sgscq.vpn.t1 t1VarZ = z(str, map);
        if (mapX == null || t1VarZ == null) {
            return false;
        }
        boolean zQ2 = false | q2(java.lang.String.valueOf(t1VarZ.f1379a), "base_hp", mapX) | q2(java.lang.String.valueOf(t1VarZ.f1380b), "base_attack", mapX) | q2(java.lang.String.valueOf(t1VarZ.f1381c), "base_defense", mapX) | q2(java.lang.String.valueOf(t1VarZ.f1382d), "base_wisdom", mapX) | q2(java.lang.String.valueOf(x(t1VarZ.f1379a, t1VarZ.f1380b, t1VarZ.f1381c, t1VarZ.f1382d)), "base_fighting", mapX);
        double d2 = t1VarZ.f1383e;
        boolean zQ3 = zQ2 | q2(java.lang.String.valueOf(d2), "attr_hp", mapX);
        double d3 = t1VarZ.f1384f;
        boolean zQ4 = zQ3 | q2(java.lang.String.valueOf(d3), "attr_attack", mapX);
        double d4 = t1VarZ.f1385g;
        boolean zQ5 = zQ4 | q2(java.lang.String.valueOf(d4), "attr_defense", mapX);
        double d5 = t1VarZ.f1386h;
        boolean zQ6 = zQ5 | q2(java.lang.String.valueOf(d5), "attr_wisdom", mapX) | q2(java.lang.String.valueOf(d2), "general_hp", mapX) | q2(java.lang.String.valueOf(d3), "general_attack", mapX) | q2(java.lang.String.valueOf(d4), "general_defense", mapX) | q2(java.lang.String.valueOf(d5), "general_wisdom", mapX) | q2(java.lang.String.valueOf(d2), "general_hp_attr", mapX) | q2(java.lang.String.valueOf(d3), "general_attack_attr", mapX) | q2(java.lang.String.valueOf(d4), "general_defense_attr", mapX) | q2(java.lang.String.valueOf(d5), "general_wisdom_attr", mapX);
        java.lang.String strValueOf = java.lang.String.valueOf(t1VarZ.f1391m);
        boolean zE2 = E2(map, mapX) | zQ6 | q2(strValueOf, "fighting", mapX) | q2(strValueOf, "fight_point", mapX) | q2(strValueOf, "fighting_point", mapX) | q2(strValueOf, "general_fighting", mapX);
        for (java.util.Map map2 : f0("TeamGeneral", map)) {
            if (I2(str, map2)) {
                zE2 = zE2 | q2(java.lang.String.valueOf(t1VarZ.f1387i), "general_hp", map2) | q2(java.lang.String.valueOf(t1VarZ.f1388j), "general_attack", map2) | q2(java.lang.String.valueOf(t1VarZ.f1389k), "general_defense", map2) | q2(java.lang.String.valueOf(t1VarZ.f1390l), "general_wisdom", map2) | q2(strValueOf, "general_fighting", map2) | q2(strValueOf, "fighting", map2) | q2(strValueOf, "fight_point", map2);
            }
        }
        return zE2;
    }

    public final java.util.List G0(java.lang.String str) {
        java.util.HashMap map = this.N;
        if (map == null || map.isEmpty()) {
            M1();
        }
        java.util.List list = (java.util.List) this.N.get(str);
        return list != null ? list : java.util.Collections.emptyList();
    }

    public final java.util.Map G1(p.a aVar) {
        java.util.Map map;
        java.lang.String str;
        java.util.Map mapJ0;
        java.util.HashMap mapW = null;
        if (aVar == null) {
            return null;
        }
        java.util.ArrayList arrayList = this.w;
        java.lang.String str2 = aVar.f1858c;
        if (arrayList == null) {
            map = null;
            break;
        }
        java.util.Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                map = null;
                break;
            }
            map = (java.util.Map) it.next();
        } while (!c.a.C(map, "id", "", "general_id", str2));
        if (map == null) {
            if (str2 != null && !str2.isEmpty() && (mapJ0 = J0(str2)) != null && b1("grade", mapJ0) == 1) {
                java.lang.String strValueOf = java.lang.String.valueOf(mapJ0.getOrDefault("resource_id", ""));
                if (!strValueOf.isEmpty() && !"0".equals(strValueOf)) {
                    java.lang.String strR0 = R0(str2);
                    java.lang.String str3 = strR0 == null ? str2 : strR0;
                    double[] dArrK0 = K0(str2);
                    mapW = w(str2, mapJ0, str3, dArrK0, (dArrK0 == null || dArrK0.length <= 4) ? 0.0d : dArrK0[4]);
                }
            }
            map = mapW;
        }
        if (map == null || (str = aVar.f1859d) == null || str.isEmpty() || c.a.A(map, "general_name", str)) {
            return map;
        }
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(map);
        linkedHashMap.put("general_name", str);
        return linkedHashMap;
    }

    public final boolean G2(java.util.Map map, java.lang.String str, double d2) {
        java.util.Map mapE1;
        double d3;
        if (!str.isEmpty()) {
            java.lang.String strValueOf = "0";
            if ("0".equals(str) || "null".equalsIgnoreCase(str) || (mapE1 = e1(str)) == null) {
                return false;
            }
            java.lang.String strValueOf2 = java.lang.String.valueOf(mapE1.getOrDefault("first_attr_type", "0"));
            java.lang.Object obj = mapE1.get("skill_grow");
            if (obj instanceof java.util.Map) {
                int iG = c.a.g(map, "breachLevel", "1", "insight_level", 1);
                java.util.Map map2 = (java.util.Map) obj;
                java.lang.Object obj2 = map2.get(java.lang.String.valueOf(iG > 0 ? iG : 1));
                if (!(obj2 instanceof java.util.Map)) {
                    obj2 = map2.get("1");
                }
                if (obj2 instanceof java.util.Map) {
                    strValueOf = java.lang.String.valueOf(((java.util.Map) obj2).getOrDefault("first_attr_value", "0"));
                }
            }
            if (java.lang.Math.abs(d2) >= 1.0E-6d) {
                try {
                    d3 = java.lang.Double.parseDouble(strValueOf);
                } catch (java.lang.Exception unused) {
                    d3 = 0.0d;
                }
                strValueOf = java.lang.String.valueOf(d3 + d2);
            }
            return q2(strValueOf, "ls_value", map) | q2(strValueOf2, "ls_type", map) | false;
        }
        return false;
    }

    public final java.util.List H0(java.lang.String str) {
        java.util.HashMap map = this.O;
        if (map == null || map.isEmpty()) {
            M1();
        }
        java.util.List list = (java.util.List) this.O.get(str);
        return list != null ? list : java.util.Collections.emptyList();
    }

    public final p.d H1() {
        p.d dVarB = this.f1496d;
        if (dVarB == null) {
            android.content.Context context = this.f1493a;
            dVarB = context == null ? p.d.f1871c : p.d.b(context);
            this.f1496d = dVarB;
        }
        return dVarB;
    }

    public final java.util.Map I0(java.lang.String str) {
        if (this.r == null) {
            this.r = new java.util.HashMap();
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "gems.json");
            if ((strA == null || strA.isEmpty()) && X) {
                strA = s2("docs/game_data_json/gems.json");
            }
            if (strA != null && !strA.isEmpty()) {
                try {
                    java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$13().getType());
                    if (list != null) {
                        for (java.util.Map map : list) {
                            java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("id", map.getOrDefault("resource_id", "")));
                            if (!strValueOf.isEmpty()) {
                                this.r.put(strValueOf, map);
                            }
                        }
                    }
                } catch (java.lang.Exception e2) {
                    c.a.D(e2, new java.lang.StringBuilder("[GameDataManager] loadGemsConfig failed: "), "SGSCQ_SRV");
                }
            }
        }
        return (java.util.Map) this.r.get(str);
    }

    public final void I1() {
        if (this.I != null) {
            return;
        }
        this.I = new java.util.HashMap();
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "chapter_battle_layouts.json");
        if (strA == null || strA.isEmpty()) {
            return;
        }
        try {
            java.util.Map map = (java.util.Map) ((java.util.Map) this.f1494b.d(strA, java.util.Map.class)).get("chapters");
            this.I = map;
            if (map == null) {
                this.I = new java.util.HashMap();
            }
        } catch (java.lang.Exception e2) {
            c.a.D(e2, new java.lang.StringBuilder("[chapterLayout] load failed: "), "SGSCQ_SRV");
        }
    }

    public final java.util.Map J0(java.lang.String str) {
        if (this.f1497e == null) {
            O1();
        }
        return (java.util.Map) this.f1497e.get(str);
    }

    public final void J1() {
        this.C = new java.util.HashMap();
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "plots.json");
        if (strA == null || strA.isEmpty()) {
            return;
        }
        for (java.util.Map map : (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$16().getType())) {
            java.lang.Object obj = map.get("before_dialog_id");
            java.lang.Object obj2 = map.get("after_dialog_id");
            if (obj != null) {
                this.C.put(java.lang.String.valueOf(obj), obj2 != null ? java.lang.String.valueOf(obj2) : null);
            }
        }
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[loadDungeonPlots] 加载 " + this.C.size() + " 条剧情配置");
    }

    public final double[] K0(java.lang.String str) {
        java.util.Map mapJ0 = J0(str);
        if (mapJ0 == null) {
            return null;
        }
        double dS0 = s0("general_hp", mapJ0);
        double dS1 = s0("general_attack", mapJ0);
        double dS2 = s0("general_defense", mapJ0);
        double dS3 = s0("general_wisdom", mapJ0);
        return new double[]{dS0, dS1, dS2, dS3, x(dS0, dS1, dS2, dS3), s0("general_hp_step", mapJ0), s0("general_attack_step", mapJ0), s0("general_defense_step", mapJ0), s0("general_wisdom_step", mapJ0), s0("fighting_step", mapJ0), s0("grade", mapJ0), s0("general_sex", mapJ0), s0("general_orbit", mapJ0)};
    }

    public final void K1() {
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "dungeons.json");
        if (strA == null || strA.isEmpty()) {
            this.y = new java.util.HashMap();
            this.z = new java.util.HashMap();
            this.A = new java.util.ArrayList();
            return;
        }
        java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$14().getType());
        this.y = new java.util.HashMap();
        this.z = new java.util.HashMap();
        java.util.TreeSet treeSet = new java.util.TreeSet();
        for (java.util.Map map : list) {
            java.lang.String str = (java.lang.String) map.get("dungeon_name");
            if (str != null) {
                this.y.put(str, map);
                java.lang.String strSubstring = str.length() < 3 ? str : (!str.startsWith("105") || str.length() < 5) ? str.substring(0, 3) : str.substring(0, 5);
                treeSet.add(strSubstring);
                if (!this.z.containsKey(strSubstring)) {
                    this.z.put(strSubstring, new java.util.ArrayList());
                }
                ((java.util.List) this.z.get(strSubstring)).add(str);
            }
        }
        java.util.Iterator it = this.z.values().iterator();
        while (it.hasNext()) {
            java.util.Collections.sort((java.util.List) it.next());
        }
        this.A = new java.util.ArrayList(treeSet);
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[loadDungeons] 加载 " + this.y.size() + " 副本, " + this.A.size() + " 章节");
    }

    public final double[] L0(java.lang.String str, int i2) {
        return M0(1, i2, str);
    }

    public final void L1() {
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "equipments.json");
        if (strA == null || strA.isEmpty()) {
            this.f1503k = new java.util.HashMap();
            this.f1504l = new java.util.ArrayList();
            return;
        }
        java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$8().getType());
        this.f1503k = new java.util.HashMap();
        this.f1504l = new java.util.ArrayList();
        int i2 = 0;
        for (java.util.Map map : list) {
            java.lang.String str = (java.lang.String) map.get("id");
            if (str != null) {
                if (str.startsWith("200000")) {
                    i2++;
                } else {
                    this.f1503k.put(str, map);
                    this.f1504l.add(str);
                }
            }
        }
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[loadEquipments] 加载 " + this.f1504l.size() + " 条装备, 过滤 " + i2 + " 条");
    }

    public final double[] M0(int i2, int i3, java.lang.String str) {
        return N0(str, i2, i3, 0.0d);
    }

    public final void M1() {
        if (this.f1497e == null) {
            O1();
        }
        this.N = new java.util.HashMap();
        this.O = new java.util.HashMap();
        this.M = new java.util.HashMap();
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "fates.json");
        if (strA == null || strA.isEmpty()) {
            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[FateEquip] fates.json empty");
            return;
        }
        java.util.Map map = (java.util.Map) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$1().getType());
        if (map == null) {
            return;
        }
        for (java.lang.String str : this.f1498f) {
            java.util.Map map2 = (java.util.Map) this.f1497e.get(str);
            if (map2 != null) {
                java.lang.Object obj = map2.get("general_fate_id");
                if (obj instanceof java.util.List) {
                    java.util.Iterator it = ((java.util.List) obj).iterator();
                    while (it.hasNext()) {
                        java.util.Map map3 = (java.util.Map) map.get((java.lang.String) it.next());
                        if (map3 != null) {
                            java.lang.String strValueOf = java.lang.String.valueOf(map3.getOrDefault("fate_type", ""));
                            if ("3".equals(strValueOf)) {
                                java.lang.Object obj2 = map3.get("fate_object");
                                if (this.f1503k == null) {
                                    L1();
                                }
                                java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList();
                                for (java.lang.Object obj3 : obj2 instanceof java.util.List ? (java.util.List) obj2 : java.util.Collections.singletonList(obj2)) {
                                    if (obj3 != null) {
                                        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("\\d{6}").matcher(java.lang.String.valueOf(obj3));
                                        while (matcher.find()) {
                                            java.lang.String strGroup = matcher.group();
                                            if (this.f1503k.containsKey(strGroup) && !arrayList.contains(strGroup)) {
                                                arrayList.add(strGroup);
                                            }
                                        }
                                    }
                                }
                                for (java.lang.String str2 : arrayList) {
                                    if (!str2.isEmpty() && !"0".equals(str2)) {
                                        java.util.List list = (java.util.List) this.N.computeIfAbsent(str, new n.a(4));
                                        if (!list.contains(str2)) {
                                            list.add(str2);
                                        }
                                        if (!this.M.containsKey(str)) {
                                            this.M.put(str, str2);
                                        }
                                    }
                                }
                            } else if ("4".equals(strValueOf)) {
                                java.lang.Object obj4 = map3.get("fate_object");
                                if (this.f1499g == null) {
                                    U1();
                                }
                                java.util.ArrayList<java.lang.String> arrayList2 = new java.util.ArrayList();
                                for (java.lang.Object obj5 : obj4 instanceof java.util.List ? (java.util.List) obj4 : java.util.Collections.singletonList(obj4)) {
                                    if (obj5 != null) {
                                        java.util.regex.Matcher matcher2 = java.util.regex.Pattern.compile("\\d{6}").matcher(java.lang.String.valueOf(obj5));
                                        while (matcher2.find()) {
                                            java.lang.String strGroup2 = matcher2.group();
                                            if (this.f1499g.containsKey(strGroup2) && !arrayList2.contains(strGroup2)) {
                                                arrayList2.add(strGroup2);
                                            }
                                        }
                                    }
                                }
                                for (java.lang.String str3 : arrayList2) {
                                    if (!str3.isEmpty() && !"0".equals(str3)) {
                                        java.util.List list2 = (java.util.List) this.O.computeIfAbsent(str, new n.a(5));
                                        if (!list2.contains(str3)) {
                                            list2.add(str3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[FateEquip] 加载 " + this.N.size() + " 条武将缘分装备映射");
        java.util.List list3 = (java.util.List) this.N.get("131021");
        if (list3 != null) {
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[FateEquip] 大小乔(131021) 缘分装备: " + list3 + " (" + list3.size() + "件)");
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:59:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:62:0x0102  */
    /* JADX WARN: Code duplicated, block: B:63:0x0105  */
    /* JADX WARN: Code duplicated, block: B:66:0x010c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0111  */
    public final double[] N0(java.lang.String str, int i2, int i3, double d2) {
        double[] dArr;
        java.util.Map map;
        java.util.HashMap map2;
        double d3;
        double d4;
        double d5;
        double d6;
        double[] dArrK0 = K0(str);
        java.util.Map map3 = null;
        if (dArrK0 == null) {
            return null;
        }
        java.util.Map mapJ0 = J0(str);
        if (mapJ0 != null) {
            int iMax = java.lang.Math.max(0, i3 - 1);
            if (iMax <= 0) {
                dArr = new double[4];
            } else {
                java.lang.String strValueOf = java.lang.String.valueOf(mapJ0.getOrDefault("insight_grow_type", ""));
                if (this.f1508p == null) {
                    java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "insight_grow_types.json");
                    if (strA == null || strA.isEmpty()) {
                        map2 = new java.util.HashMap();
                    } else {
                        java.util.Map map4 = (java.util.Map) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$4().getType());
                        this.f1508p = map4;
                        if (map4 == null) {
                            map2 = new java.util.HashMap();
                        }
                    }
                    this.f1508p = map2;
                }
                if (!strValueOf.isEmpty() && (map = this.f1508p) != null) {
                    java.lang.Object obj = map.get(strValueOf);
                    int iMax2 = java.lang.Math.max(0, iMax);
                    if (obj instanceof java.util.List) {
                        java.util.List list = (java.util.List) obj;
                        if (!list.isEmpty()) {
                            java.lang.Object obj2 = list.get(java.lang.Math.min(iMax2, list.size() - 1));
                            if (obj2 instanceof java.util.Map) {
                                map3 = (java.util.Map) obj2;
                            }
                        }
                    } else if (obj instanceof java.util.Map) {
                        java.util.Map map5 = (java.util.Map) obj;
                        java.lang.Object obj3 = map5.get(java.lang.String.valueOf(iMax2));
                        if (obj3 == null && !map5.isEmpty()) {
                            obj3 = map5.get("0");
                        }
                        if (obj3 instanceof java.util.Map) {
                            map3 = (java.util.Map) obj3;
                        }
                    }
                }
                double[] dArr2 = new double[4];
                if (map3 == null) {
                    // fill-array-data instruction
                    dArr2[0] = 0.0d;
                    dArr2[1] = 0.0d;
                    dArr2[2] = 0.0d;
                    dArr2[3] = 0.0d;
                } else {
                    dArr2[0] = s0("attr_hp", map3);
                    dArr2[1] = s0("attr_attack", map3);
                    dArr2[2] = s0("attr_defense", map3);
                    dArr2[3] = s0("attr_wisdom", map3);
                }
                dArr = dArr2;
            }
            if (dArrK0.length > 5) {
                d3 = dArrK0[5];
            } else {
                d3 = 0.0d;
            }
            if (dArrK0.length > 6) {
                d4 = dArrK0[6];
            } else {
                d4 = 0.0d;
            }
            if (dArrK0.length > 7) {
                d5 = dArrK0[7];
            } else {
                d5 = 0.0d;
            }
            if (dArrK0.length > 8) {
                d6 = dArrK0[8];
            } else {
                d6 = 0.0d;
            }
            double dMax = java.lang.Math.max(0, i2 - 1);
            double d7 = (((dArr[0] + d2) / 100.0d) + 1.0d) * ((d3 * dMax) + dArrK0[0]);
            double d8 = (((dArr[1] + d2) / 100.0d) + 1.0d) * ((d4 * dMax) + dArrK0[1]);
            double d9 = (((dArr[2] + d2) / 100.0d) + 1.0d) * ((d5 * dMax) + dArrK0[2]);
            double d10 = (((dArr[3] + d2) / 100.0d) + 1.0d) * ((dMax * d6) + dArrK0[3]);
            return new double[]{java.lang.Math.round(d7 * 10.0d) / 10.0d, java.lang.Math.round(d8 * 10.0d) / 10.0d, java.lang.Math.round(d9 * 10.0d) / 10.0d, java.lang.Math.round(d10 * 10.0d) / 10.0d, java.lang.Math.round(x(d7, d8, d9, d10) * 10.0d) / 10.0d};
        }
        dArr = new double[4];
        // fill-array-data instruction
        dArr[0] = 0.0d;
        dArr[1] = 0.0d;
        dArr[2] = 0.0d;
        dArr[3] = 0.0d;
        if (dArrK0.length > 5) {
            d3 = dArrK0[5];
        } else {
            d3 = 0.0d;
        }
        if (dArrK0.length > 6) {
            d4 = dArrK0[6];
        } else {
            d4 = 0.0d;
        }
        if (dArrK0.length > 7) {
            d5 = dArrK0[7];
        } else {
            d5 = 0.0d;
        }
        if (dArrK0.length > 8) {
            d6 = dArrK0[8];
        } else {
            d6 = 0.0d;
        }
        double dMax2 = java.lang.Math.max(0, i2 - 1);
        double d11 = (((dArr[0] + d2) / 100.0d) + 1.0d) * ((d3 * dMax2) + dArrK0[0]);
        double d12 = (((dArr[1] + d2) / 100.0d) + 1.0d) * ((d4 * dMax2) + dArrK0[1]);
        double d13 = (((dArr[2] + d2) / 100.0d) + 1.0d) * ((d5 * dMax2) + dArrK0[2]);
        double d14 = (((dArr[3] + d2) / 100.0d) + 1.0d) * ((dMax2 * d6) + dArrK0[3]);
        return new double[]{java.lang.Math.round(d11 * 10.0d) / 10.0d, java.lang.Math.round(d12 * 10.0d) / 10.0d, java.lang.Math.round(d13 * 10.0d) / 10.0d, java.lang.Math.round(d14 * 10.0d) / 10.0d, java.lang.Math.round(x(d11, d12, d13, d14) * 10.0d) / 10.0d};
    }

    public final synchronized void N1() {
        if (this.t == null) {
            java.lang.String strX = com.sgscq.vpn.p5.X(this.f1493a);
            if ((strX == null || strX.isEmpty()) && X) {
                strX = s2("docs/game_data_json/magic_buffs.json");
            }
            this.t = (strX == null || strX.isEmpty()) ? new java.util.LinkedHashMap() : com.sgscq.vpn.p5.u1(strX);
        }
        if (this.u == null) {
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "evolution_buffs.json");
            if (strA == null || strA.isEmpty()) {
                strA = s2("docs/game_data_json/evolution_buffs.json");
            }
            this.u = (strA == null || strA.isEmpty()) ? new java.util.LinkedHashMap() : com.sgscq.vpn.p5.u1(strA);
        }
    }

    public final int O0(java.lang.String str, int i2) {
        java.util.Map mapJ0 = J0(str);
        if (mapJ0 == null) {
            return 0;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(mapJ0.getOrDefault("insight_upgrade_exp_type", ""));
        if (strValueOf.isEmpty()) {
            return 0;
        }
        W1();
        java.util.List list = (java.util.List) this.G.get(strValueOf);
        if (list == null || list.isEmpty()) {
            return 0;
        }
        int iMax = java.lang.Math.max(0, i2 - 1);
        if (iMax >= list.size()) {
            iMax = list.size() - 1;
        }
        return c.a.f((java.util.Map) list.get(iMax), "num", "0", 0);
    }

    public final void O1() {
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "generals.json");
        if ((strA == null || strA.isEmpty()) && X) {
            strA = s2("docs/game_data_json/generals.json");
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder("[GameDataManager] loadGenerals: json=");
        sb.append(strA != null ? strA.length() + " chars" : "null");
        com.sgscq.vpn.z2.e("SGSCQ_SRV", sb.toString());
        if (strA == null || strA.isEmpty()) {
            com.sgscq.vpn.z2.c("SGSCQ_SRV", "[GameDataManager] loadGenerals: EMPTY!");
            this.f1497e = new java.util.HashMap();
            this.f1498f = new java.util.ArrayList();
            return;
        }
        java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$3().getType());
        this.f1497e = new java.util.HashMap();
        this.f1498f = new java.util.ArrayList();
        int i2 = 0;
        for (java.util.Map map : list) {
            java.lang.String str = (java.lang.String) map.get("id");
            java.lang.String str2 = (java.lang.String) map.get("resource_id");
            if (str == null || str2 == null || str2.equals("0") || str2.isEmpty() || "0".equals(java.lang.String.valueOf(map.getOrDefault("surrender_gift_id", "0")))) {
                i2++;
            } else {
                this.f1497e.put(str, map);
                this.f1498f.add(str);
            }
        }
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[loadGenerals] 加载 " + this.f1498f.size() + " 条武将, 过滤 " + i2 + " 条（无resource_id或无臣服）");
        M1();
    }

    public final int P0(int i2, java.lang.String str, long j2) {
        double d2;
        W1();
        java.util.HashMap map = this.G;
        java.util.Map mapJ0 = J0(str);
        java.util.List list = (java.util.List) map.get(mapJ0 != null ? java.lang.String.valueOf(mapJ0.getOrDefault("upgrade_exp_type", "")) : "");
        if (list == null || list.isEmpty()) {
            return 1;
        }
        int iMin = 1;
        for (int i3 = 0; i3 < list.size(); i3++) {
            try {
                d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(((java.util.Map) list.get(i3)).getOrDefault("total_num", "0")));
            } catch (java.lang.Exception unused) {
                d2 = 0.0d;
            }
            long j3 = (long) d2;
            if (j3 <= 0 || j2 < j3) {
                break;
            }
            iMin = i3 + 2;
        }
        if (i2 > 0) {
            iMin = java.lang.Math.min(iMin, i2);
        }
        return java.lang.Math.max(1, iMin);
    }

    public final void P1() {
        if (this.H != null) {
            return;
        }
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "global_conf.json");
        if (strA == null || strA.isEmpty()) {
            this.H = new java.util.LinkedHashMap();
            return;
        }
        try {
            this.H = com.sgscq.vpn.p5.u1(strA);
        } catch (java.lang.Exception unused) {
            this.H = new java.util.LinkedHashMap();
        }
    }

    public final int Q0(java.lang.String str) {
        java.util.Map mapJ0 = J0(str);
        int iF = mapJ0 != null ? c.a.f(mapJ0, "insight_max_level", "0", 0) : 0;
        if (iF <= 0) {
            iF = 5;
        }
        return java.lang.Math.max(1, java.lang.Math.min(iF, 5)) + 1;
    }

    public final void Q1() {
        a.o oVar = this.f1494b;
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "godness.json");
        this.f1507o = new java.util.HashMap();
        this.x = new java.util.ArrayList();
        if (strA == null || strA.isEmpty()) {
            return;
        }
        try {
            try {
                for (java.util.Map map : (java.util.List) oVar.e(strA, new com.sgscq.vpn.GameDataManager$10().getType())) {
                    java.lang.String str = (java.lang.String) map.get("id");
                    if (str != null) {
                        this.f1507o.put(str, map);
                        this.x.add(str);
                    }
                }
            } catch (java.lang.Exception e2) {
                c.a.D(e2, new java.lang.StringBuilder("[GameDataManager] loadGoddess failed: "), "SGSCQ_SRV");
            }
        } catch (java.lang.Exception unused) {
            for (java.util.Map.Entry entry : ((java.util.Map) oVar.e(strA, new com.sgscq.vpn.GameDataManager$11().getType())).entrySet()) {
                java.util.Map map2 = (java.util.Map) entry.getValue();
                map2.put("id", entry.getKey());
                this.f1507o.put((java.lang.String) entry.getKey(), map2);
                this.x.add((java.lang.String) entry.getKey());
            }
        }
    }

    public final void R(java.lang.String str, java.util.HashMap map) {
        char cCharAt;
        if (str == null || str.isEmpty()) {
            return;
        }
        map.put("equipment_id", str);
        map.put("equip_id", str);
        map.put("id", str);
        map.put("eid", str);
        p2(1, "level", map);
        p2(1, "equipment_level", map);
        p2(1, "refine_level", map);
        p2(0, "refine_exp", map);
        p2(null, "general_pk_id", map);
        p2(null, "general_id", map);
        p2(null, "user_general_id", map);
        p2("0", "is_wear", map);
        p2("0", "wear", map);
        if (!(map.get("bore_list") instanceof java.util.List)) {
            map.put("bore_list", new java.util.ArrayList());
        }
        java.util.Map mapZ0 = z0(str);
        if (mapZ0 != null) {
            M("equipment_pos", map, mapZ0);
            M("equipment_type", map, mapZ0);
            M("grade", map, mapZ0);
            M("fighting", map, mapZ0);
            M("fighting_step", map, mapZ0);
            M("effect_value", map, mapZ0);
            M("effect_step", map, mapZ0);
            M("refine_upgrade_exp_type", map, mapZ0);
            M("refine_eaten_exp_type", map, mapZ0);
            M("refine_bonus_type", map, mapZ0);
            M("upgrade_coin_type", map, mapZ0);
            M("sell_type", map, mapZ0);
            M("can_fit", map, mapZ0);
            M("is_version", map, mapZ0);
        }
        java.lang.String strValueOf = (str.length() >= 2 && str.charAt(0) == '2' && (cCharAt = str.charAt(1)) >= '1' && cCharAt <= '4') ? java.lang.String.valueOf(cCharAt) : "";
        if (!strValueOf.isEmpty()) {
            p2(strValueOf, "equipment_pos", map);
            p2(strValueOf, "equipment_type", map);
        }
        p2("0", "grade", map);
        p2("0", "fighting", map);
    }

    public final java.lang.String R0(java.lang.String str) {
        java.lang.String str2;
        java.util.Map mapJ0 = J0(str);
        if (mapJ0 != null && (str2 = (java.lang.String) mapJ0.get("name")) != null && !str2.isEmpty()) {
            java.lang.String strY0 = Y0(str2);
            if (!strY0.isEmpty() && !strY0.equals(str2)) {
                return strY0;
            }
        }
        java.lang.String strI = c.a.i("itemname", str);
        java.lang.String strY1 = Y0(strI);
        return (strY1.isEmpty() || strY1.equals(strI)) ? str : strY1;
    }

    public final void R1() {
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "items.json");
        if (strA == null || strA.isEmpty()) {
            this.f1505m = new java.util.HashMap();
            this.f1506n = new java.util.ArrayList();
            return;
        }
        java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$9().getType());
        this.f1505m = new java.util.HashMap();
        this.f1506n = new java.util.ArrayList();
        for (java.util.Map map : list) {
            java.lang.String str = (java.lang.String) map.get("id");
            if (str != null) {
                this.f1505m.put(str, map);
                this.f1506n.add(str);
            }
        }
        java.util.Map map2 = (java.util.Map) this.f1505m.get("600045");
        if (map2 == null) {
            return;
        }
        java.util.HashMap map3 = this.J;
        if (map3 == null || map3.isEmpty()) {
            t();
        }
        int i2 = 0;
        for (java.util.Map map4 : this.J.values()) {
            java.lang.String strValueOf = java.lang.String.valueOf(map4.getOrDefault("box_id", ""));
            java.lang.String strValueOf2 = java.lang.String.valueOf(map4.getOrDefault("fate_equip_id", ""));
            if (!strValueOf.isEmpty() && !strValueOf2.isEmpty() && !this.f1505m.containsKey(strValueOf)) {
                java.util.HashMap map5 = new java.util.HashMap(map2);
                map5.put("id", strValueOf);
                map5.put("resource_id", java.lang.String.valueOf(map2.getOrDefault("resource_id", "600045")));
                map5.put("name", map4.get("name"));
                map5.put("desc", map4.get("desc"));
                map5.put("fate_equip_id", strValueOf2);
                map5.put("related_equipment_id", strValueOf2);
                map5.put("box_id", strValueOf);
                map5.put("item_type", java.lang.String.valueOf(2));
                map5.put("style_id", java.lang.String.valueOf(map4.getOrDefault("style_id", "7")));
                map5.put("style_desc", java.lang.String.valueOf(map4.getOrDefault("style_desc", "9".concat(strValueOf2))));
                map5.put("related_id", java.lang.String.valueOf(map4.getOrDefault("related_id", "9".concat(strValueOf2))));
                this.f1505m.put(strValueOf, map5);
                this.f1506n.add(strValueOf);
                i2++;
            }
        }
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[FateBoxItems] injected=" + i2);
    }

    public final void S(java.lang.String str, java.util.HashMap map) {
        java.util.Map mapK1;
        if (str == null || str.isEmpty() || (mapK1 = k1(str)) == null) {
            return;
        }
        M("skill_type", map, mapK1);
        M("upgrade_exp_type", map, mapK1);
        M("upgrade_coin_type", map, mapK1);
        M("eated_exp_type", map, mapK1);
        M("grade", map, mapK1);
        M("fighting", map, mapK1);
        M("fighting_step", map, mapK1);
        M("major_property", map, mapK1);
        java.lang.Object obj = mapK1.get("skill_code");
        if (obj == null || java.lang.String.valueOf(obj).isEmpty()) {
            return;
        }
        map.put("skill_code", obj);
    }

    public final int S0(java.lang.String str) {
        java.util.Map mapJ0 = J0(str);
        if (mapJ0 == null) {
            return 0;
        }
        return c.a.f(mapJ0, "reincarnate_num", "0", 0);
    }

    public final void S1() {
        java.util.Map map;
        if (this.S == null || this.T == null) {
            this.S = new java.util.HashMap();
            this.T = new java.util.HashMap();
            try {
                for (java.util.Map.Entry entry : com.sgscq.vpn.p5.u1(com.sgscq.vpn.o0.a(this.f1493a, "meridians.json")).entrySet()) {
                    if (entry.getValue() instanceof java.util.Map) {
                        java.util.HashMap map2 = new java.util.HashMap();
                        for (java.util.Map.Entry entry2 : ((java.util.Map) entry.getValue()).entrySet()) {
                            if (entry2.getValue() instanceof java.util.Map) {
                                map2.put((java.lang.String) entry2.getKey(), entry2.getValue());
                            }
                        }
                        this.S.put((java.lang.String) entry.getKey(), map2);
                    }
                }
            } catch (java.lang.Exception unused) {
                this.S = new java.util.HashMap();
            }
            try {
                for (java.util.Map.Entry entry3 : com.sgscq.vpn.p5.u1(com.sgscq.vpn.o0.a(this.f1493a, "meridian_tops.json")).entrySet()) {
                    if (entry3.getValue() instanceof java.util.Map) {
                        this.T.put((java.lang.String) entry3.getKey(), (java.util.Map) entry3.getValue());
                    }
                }
            } catch (java.lang.Exception unused2) {
                this.T = new java.util.HashMap();
            }
            if (this.T.isEmpty() && X && (map = (java.util.Map) new a.o().e(s2("docs/game_data_json/meridian_tops.json"), new com.sgscq.vpn.GameDataManager$24().getType())) != null) {
                for (java.util.Map.Entry entry4 : map.entrySet()) {
                    if (entry4.getValue() instanceof java.util.Map) {
                        this.T.put((java.lang.String) entry4.getKey(), (java.util.Map) entry4.getValue());
                    }
                }
            }
        }
    }

    public final void T(boolean z) {
        com.sgscq.vpn.config.i iVarB = com.sgscq.vpn.g2.b();
        if ((!z ? this.w != null : this.v != null) || this.f1495c != iVarB) {
            v(iVarB);
        }
    }

    public final java.lang.String T0(java.lang.String str) {
        java.lang.Object obj;
        java.util.Map mapJ0 = J0(str);
        if (mapJ0 != null && (obj = mapJ0.get("general_naturalskill_id")) != null) {
            java.lang.String string = obj.toString();
            if (!string.isEmpty() && !string.equals("0")) {
                return string;
            }
        }
        return P(str);
    }

    public final void T1() {
        if (this.L != null) {
            return;
        }
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "meridian_points.json");
        if (strA == null || strA.isEmpty()) {
            this.L = new java.util.HashMap();
            return;
        }
        try {
            java.util.LinkedHashMap linkedHashMapU1 = com.sgscq.vpn.p5.u1(strA);
            this.L = new java.util.HashMap();
            for (java.util.Map.Entry entry : linkedHashMapU1.entrySet()) {
                if (entry.getValue() instanceof java.util.Map) {
                    java.util.Map map = (java.util.Map) entry.getValue();
                    java.util.HashMap map2 = new java.util.HashMap();
                    for (java.util.Map.Entry entry2 : map.entrySet()) {
                        if (entry2.getValue() instanceof java.util.Map) {
                            java.util.Map map3 = (java.util.Map) entry2.getValue();
                            java.util.HashMap map4 = new java.util.HashMap();
                            for (java.util.Map.Entry entry3 : map3.entrySet()) {
                                if (entry3.getValue() instanceof java.util.Map) {
                                    map4.put((java.lang.String) entry3.getKey(), entry3.getValue());
                                }
                            }
                            map2.put((java.lang.String) entry2.getKey(), map4);
                        }
                    }
                    this.L.put((java.lang.String) entry.getKey(), map2);
                }
            }
        } catch (java.lang.Exception unused) {
            this.L = new java.util.HashMap();
        }
    }

    public final int U0(java.lang.String str, int i2) {
        P1();
        java.lang.Object orDefault = this.H.get(str);
        if (orDefault instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) orDefault;
            orDefault = map.getOrDefault("logical_data", map.getOrDefault("value", java.lang.Integer.valueOf(i2)));
        }
        return l2(java.lang.String.valueOf(orDefault), i2);
    }

    public final void U1() {
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "skills.json");
        if ((strA == null || strA.isEmpty()) && X) {
            strA = s2("docs/game_data_json/skills.json");
        }
        if (strA == null || strA.isEmpty()) {
            this.f1499g = new java.util.HashMap();
            this.f1500h = new java.util.ArrayList();
            return;
        }
        java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$5().getType());
        this.f1499g = new java.util.HashMap();
        this.f1500h = new java.util.ArrayList();
        int i2 = 0;
        for (java.util.Map map : list) {
            java.lang.String str = (java.lang.String) map.get("id");
            if (str != null) {
                java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("warlord_general_id", "0"));
                java.lang.String strValueOf2 = java.lang.String.valueOf(map.getOrDefault("skill_code", ""));
                java.lang.String strValueOf3 = java.lang.String.valueOf(map.getOrDefault("resource_id", "0"));
                boolean z = true;
                boolean z2 = strValueOf2.isEmpty() || "null".equals(strValueOf2);
                if (!strValueOf3.isEmpty() && !"0".equals(strValueOf3) && !"null".equals(strValueOf3)) {
                    z = false;
                }
                if ((z && z2) || ("0".equals(strValueOf) && z2)) {
                    i2++;
                } else {
                    this.f1499g.put(str, map);
                    this.f1500h.add(str);
                }
            }
        }
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[loadSkills] 加载 " + this.f1500h.size() + " 条技能, 过滤 " + i2 + " 条");
    }

    public final java.lang.String V0(java.lang.String str, java.lang.String str2) {
        P1();
        java.lang.Object orDefault = this.H.get(str);
        if (orDefault instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) orDefault;
            orDefault = map.getOrDefault("logical_data", map.getOrDefault("value", str2));
        }
        if (orDefault == null) {
            return str2;
        }
        java.lang.String strTrim = java.lang.String.valueOf(orDefault).trim();
        return strTrim.isEmpty() ? str2 : strTrim;
    }

    public final com.sgscq.vpn.a7 V1() {
        java.util.List list;
        android.content.Context context = this.f1493a;
        com.sgscq.vpn.a7 a7Var = this.R;
        if (a7Var != null) {
            return a7Var;
        }
        try {
            java.lang.String strA = com.sgscq.vpn.o0.a(context, "surrenders.json");
            if (strA != null && !strA.isEmpty()) {
                java.util.List<java.util.Map> list2 = (java.util.List) new a.o().e(strA, new com.sgscq.vpn.GameDataManager$18().getType());
                java.util.HashMap map = new java.util.HashMap();
                for (java.util.Map map2 : list2) {
                    map.put(java.lang.String.valueOf(map2.get("general_id")), map2);
                }
                java.util.HashSet hashSet = new java.util.HashSet();
                try {
                    java.lang.String strA2 = com.sgscq.vpn.o0.a(context, "evolution_surrenders.json");
                    if (strA2 != null && !strA2.isEmpty() && (list = (java.util.List) new a.o().e(strA2, new com.sgscq.vpn.GameDataManager$19().getType())) != null) {
                        java.util.Iterator it = list.iterator();
                        while (it.hasNext()) {
                            java.lang.Object obj = ((java.util.Map) it.next()).get("surrender_id");
                            if (obj != null && !obj.toString().isEmpty()) {
                                hashSet.add(obj.toString());
                            }
                        }
                    }
                } catch (java.lang.Exception e2) {
                    com.sgscq.vpn.z2.c("SGSCQ_SRV", "[GameDataManager] loadSurrenderData evolution map FAILED: " + e2.getMessage());
                }
                r(map);
                this.R = new com.sgscq.vpn.a7(map, hashSet);
                com.sgscq.vpn.z2.e("SGSCQ_SRV", "[GameDataManager] loadSurrenderData: " + map.size() + " generals");
                return this.R;
            }
            com.sgscq.vpn.a7 a7Var2 = new com.sgscq.vpn.a7(0);
            this.R = a7Var2;
            return a7Var2;
        } catch (java.lang.Exception e3) {
            com.sgscq.vpn.z2.c("SGSCQ_SRV", "[GameDataManager] loadSurrenderData FAILED: " + e3.getMessage());
            this.R = new com.sgscq.vpn.a7(0);
        }
    }

    public final void W(java.util.Map map, java.util.Map map2, double d2, double d3, double d4, double d5) {
        java.lang.String strK = K("fighting", java.lang.String.valueOf(x(d2, d3, d4, d5)), map2);
        map.put("base_hp", java.lang.String.valueOf(d2));
        map.put("base_attack", java.lang.String.valueOf(d3));
        map.put("base_defense", java.lang.String.valueOf(d4));
        map.put("base_wisdom", java.lang.String.valueOf(d5));
        map.put("attr_hp", java.lang.String.valueOf(d2));
        map.put("attr_attack", java.lang.String.valueOf(d3));
        map.put("attr_defense", java.lang.String.valueOf(d4));
        map.put("attr_wisdom", java.lang.String.valueOf(d5));
        map.put("base_fighting", strK);
        map.put("fighting", strK);
        map.put("fighting_point", strK);
        map.put("fight_point", strK);
        map.put("general_fighting", strK);
        L("general_hp_step", "hp_step", map, map2);
        L("general_attack_step", "attack_step", map, map2);
        L("general_defense_step", "defense_step", map, map2);
        L("general_wisdom_step", "wisdom_step", map, map2);
        map.put("fighting_step", K("fighting_step", "0", map2));
        java.lang.String strValueOf = java.lang.String.valueOf(map2.getOrDefault("lieutenant_skill_id", "0"));
        if (!r1(strValueOf) && e1(strValueOf) != null) {
            map.put("lieutenant_skill_id", strValueOf);
            map.put("skill_type_lieutenant", strValueOf);
            G2(map, strValueOf, 0.0d);
        } else {
            map.put("lieutenant_skill_id", "0");
            map.put("skill_type_lieutenant", "0");
            map.put("ls_type", "0");
            map.put("ls_value", "0");
        }
    }

    public final int W0() {
        int i2;
        int iF;
        X1();
        java.util.ArrayList<java.util.Map> arrayList = this.E;
        if (arrayList != null) {
            i2 = 1;
            for (java.util.Map map : arrayList) {
                if (map != null && (iF = c.a.f(map, "team_num", "1", 1)) > i2) {
                    i2 = iF;
                }
            }
        } else {
            i2 = 1;
        }
        return java.lang.Math.max(1, i2);
    }

    public final void W1() {
        if (this.G != null) {
            return;
        }
        this.G = new java.util.HashMap();
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "upgrade_exps.json");
        if (strA == null || strA.isEmpty()) {
            return;
        }
        try {
            for (java.util.Map.Entry entry : com.sgscq.vpn.p5.u1(strA).entrySet()) {
                if (entry.getValue() instanceof java.util.List) {
                    this.G.put((java.lang.String) entry.getKey(), (java.util.List) entry.getValue());
                }
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public final java.util.Map X0(java.lang.String str) {
        if (this.f1507o == null) {
            Q1();
        }
        return (java.util.Map) this.f1507o.get(str);
    }

    public final void X1() {
        if (this.E != null) {
            return;
        }
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "user_levels.json");
        if (strA == null || strA.isEmpty()) {
            this.E = new java.util.ArrayList();
            return;
        }
        try {
            this.E = com.sgscq.vpn.p5.t1(strA);
        } catch (java.lang.Exception unused) {
            this.E = new java.util.ArrayList();
        }
    }

    public final java.lang.String Y(java.util.Map map, java.util.Map map2) {
        java.lang.String strJ = c.a.j(map2, "general_pk_id", "", "pk_id");
        java.lang.String strValueOf = java.lang.String.valueOf(map2.getOrDefault("general_naturalskill_id", ""));
        java.lang.String str = "";
        for (java.util.Map map3 : f0("Skill", map)) {
            if (c.a.B(map3, "general_pk_id", "", strJ)) {
                java.lang.String strK = c.a.k(map3, "skill_code", "", "id", "skill_id");
                if (r1(strK)) {
                    continue;
                } else {
                    if (A1(strValueOf, map3)) {
                        return strK;
                    }
                    if (str.isEmpty()) {
                        str = strK;
                    }
                }
            }
        }
        java.lang.Object obj = map2.get("gSkill");
        if (obj instanceof java.util.List) {
            for (java.lang.Object obj2 : (java.util.List) obj) {
                if (obj2 instanceof java.util.Map) {
                    java.util.Map map4 = (java.util.Map) obj2;
                    java.lang.String strK2 = c.a.k(map4, "skill_code", "", "id", "skill_id");
                    if (r1(strK2)) {
                        continue;
                    } else {
                        if (A1(strValueOf, map4)) {
                            return strK2;
                        }
                        if (str.isEmpty()) {
                            str = strK2;
                        }
                    }
                }
            }
        }
        java.util.Map mapJ0 = J0(java.lang.String.valueOf(map2.getOrDefault("general_id", map2.getOrDefault("id", ""))));
        java.lang.String strValueOf2 = mapJ0 != null ? java.lang.String.valueOf(mapJ0.getOrDefault("general_naturalskill_id", "")) : "";
        return !r1(strValueOf2) ? strValueOf2 : str;
    }

    public final java.lang.String Y0(java.lang.String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        synchronized (this) {
            if (this.D == null) {
                java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "i18n.json");
                if (strA == null || strA.isEmpty()) {
                    this.D = java.util.Collections.emptyMap();
                } else {
                    try {
                        java.util.Map mapEmptyMap = (java.util.Map) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$17().getType());
                        if (mapEmptyMap == null) {
                            mapEmptyMap = java.util.Collections.emptyMap();
                        }
                        this.D = mapEmptyMap;
                    } catch (java.lang.Exception unused) {
                        this.D = java.util.Collections.emptyMap();
                    }
                }
            }
        }
        java.lang.String str2 = (java.lang.String) this.D.get(str);
        return str2 == null ? str : str2;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0197  */
    /* JADX WARN: Code duplicated, block: B:58:0x01df  */
    /* JADX WARN: Code duplicated, block: B:59:0x01e1  */
    public final java.util.HashMap Y1(java.lang.String str) {
        int i2;
        double d2;
        java.util.HashMap mapP;
        double d3;
        double dMax;
        java.util.Map mapJ0;
        java.lang.String strValueOf;
        java.lang.String strR0 = R0(str);
        try {
            i2 = java.lang.Integer.parseInt(str);
        } catch (java.lang.NumberFormatException unused) {
            i2 = 112018;
        }
        double[] dArrK0 = K0(str);
        double d4 = dArrK0 != null ? dArrK0[0] : 100.0d;
        double d5 = dArrK0 != null ? dArrK0[1] : 50.0d;
        double d6 = dArrK0 != null ? dArrK0[2] : 30.0d;
        double d7 = dArrK0 != null ? dArrK0[3] : 20.0d;
        double dX = dArrK0 != null ? dArrK0[4] : x(d4, d5, d6, d7);
        double d8 = dArrK0 != null ? dArrK0[5] : 0.0d;
        double d9 = dArrK0 != null ? dArrK0[6] : 0.0d;
        double d10 = dArrK0 != null ? dArrK0[7] : 0.0d;
        double d11 = dArrK0 != null ? dArrK0[8] : 0.0d;
        int i3 = i2;
        if (dArrK0 != null) {
            d2 = dX;
            int i4 = dArrK0.length > 10 ? (int) dArrK0[10] : 1;
            mapP = c.a.p("pk_id", str, "general_pk_id", str);
            int i5 = i4;
            mapP.put("general_id", str);
            mapP.put("id", str);
            mapP.put("general_name", strR0);
            mapP.put("general_level", "1");
            mapP.put("level", "1");
            mapP.put("exp", "0");
            mapP.put("card_type", "1");
            mapP.put("general_talent", "0");
            mapP.put("talent_point", "0");
            mapP.put("culture_info", new java.util.HashMap());
            mapP.put("ganoderma_num", "0");
            mapP.put("base_hp", java.lang.String.valueOf(d4));
            mapP.put("base_attack", java.lang.String.valueOf(d5));
            mapP.put("base_defense", java.lang.String.valueOf(d6));
            mapP.put("base_wisdom", java.lang.String.valueOf(d7));
            mapP.put("general_hp_attr", java.lang.String.valueOf(d4));
            mapP.put("general_attack_attr", java.lang.String.valueOf(d5));
            mapP.put("general_defense_attr", java.lang.String.valueOf(d6));
            mapP.put("general_wisdom_attr", java.lang.String.valueOf(d7));
            mapP.put("attr_hp", java.lang.String.valueOf(d4));
            mapP.put("attr_attack", java.lang.String.valueOf(d5));
            mapP.put("attr_defense", java.lang.String.valueOf(d6));
            mapP.put("attr_wisdom", java.lang.String.valueOf(d7));
            mapP.put("general_hp_step", java.lang.String.valueOf(d8));
            mapP.put("general_attack_step", java.lang.String.valueOf(d9));
            mapP.put("general_defense_step", java.lang.String.valueOf(d10));
            mapP.put("general_wisdom_step", java.lang.String.valueOf(d11));
            mapP.put("base_fighting", java.lang.String.valueOf(d2));
            mapP.put("fighting", java.lang.String.valueOf(d2));
            mapP.put("fight_point", java.lang.String.valueOf(d2));
            mapP.put("fighting_point", java.lang.String.valueOf(d2));
            mapP.put("general_fighting", java.lang.String.valueOf(d2));
            if (dArrK0 != null || dArrK0.length <= 9) {
                d3 = 0.0d;
            } else {
                d3 = dArrK0[9];
            }
            mapP.put("fighting_step", java.lang.String.valueOf(d3));
            dMax = 1.0d;
            if (dArrK0 != null && dArrK0.length > 12) {
                dMax = java.lang.Math.max(1.0d, dArrK0[12]);
            }
            mapP.put("general_orbit", java.lang.String.valueOf(dMax));
            h2(mapP, J0(str));
            mapP.put("breachLevel", "1");
            mapP.put("insight_level", "1");
            mapP.put("general_naturalskill_id", str);
            mapP.put("major_pk_id", "");
            mapJ0 = J0(str);
            if (mapJ0 == null) {
                strValueOf = "0";
            } else {
                strValueOf = java.lang.String.valueOf(mapJ0.getOrDefault("lieutenant_skill_id", "0"));
            }
            if (!r1(strValueOf) || e1(strValueOf) == null) {
                mapP.put("lieutenant_skill_id", "");
                mapP.put("skill_type_lieutenant", "");
                mapP.put("ls_type", "0");
                mapP.put("ls_value", "0");
            } else {
                mapP.put("lieutenant_skill_id", strValueOf);
                mapP.put("skill_type_lieutenant", strValueOf);
                G2(mapP, strValueOf, 0.0d);
            }
            mapP.put("position", "0");
            mapP.put("get_time", java.lang.String.valueOf(com.sgscq.vpn.c7.g()));
            mapP.put("reincarnate_num", "0");
            mapP.put("status", "0");
            java.lang.String strT0 = T0(str);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.HashMap mapP2 = c.a.p("pk_id", str, "general_pk_id", str);
            mapP2.put("skill_id", strT0);
            mapP2.put("id", strT0);
            mapP2.put("skill_code", strT0);
            mapP2.put("pos", "1");
            mapP2.put("position", "1");
            mapP2.put("skill_position", "1");
            mapP2.put("is_natural", java.lang.Boolean.TRUE);
            mapP2.put("level", "1");
            mapP2.put("card_type", "4");
            arrayList.add(mapP2);
            mapP.put("gSkill", arrayList);
            mapP.put("general_skills", arrayList);
            mapP.put("_fates", new java.util.ArrayList());
            mapP.put("general_painting_id", java.lang.Integer.valueOf(i3));
            mapP.put("general_painting", java.lang.String.valueOf(i3));
            mapP.put("general_avatar", java.lang.String.valueOf(i3));
            mapP.put("star_level", "1");
            mapP.put("general_star", "1");
            mapP.put("grade", java.lang.String.valueOf(i5));
            mapP.put("general_quality", java.lang.String.valueOf(i5));
            return mapP;
        }
        d2 = dX;
        mapP = c.a.p("pk_id", str, "general_pk_id", str);
        int i6 = i4;
        mapP.put("general_id", str);
        mapP.put("id", str);
        mapP.put("general_name", strR0);
        mapP.put("general_level", "1");
        mapP.put("level", "1");
        mapP.put("exp", "0");
        mapP.put("card_type", "1");
        mapP.put("general_talent", "0");
        mapP.put("talent_point", "0");
        mapP.put("culture_info", new java.util.HashMap());
        mapP.put("ganoderma_num", "0");
        mapP.put("base_hp", java.lang.String.valueOf(d4));
        mapP.put("base_attack", java.lang.String.valueOf(d5));
        mapP.put("base_defense", java.lang.String.valueOf(d6));
        mapP.put("base_wisdom", java.lang.String.valueOf(d7));
        mapP.put("general_hp_attr", java.lang.String.valueOf(d4));
        mapP.put("general_attack_attr", java.lang.String.valueOf(d5));
        mapP.put("general_defense_attr", java.lang.String.valueOf(d6));
        mapP.put("general_wisdom_attr", java.lang.String.valueOf(d7));
        mapP.put("attr_hp", java.lang.String.valueOf(d4));
        mapP.put("attr_attack", java.lang.String.valueOf(d5));
        mapP.put("attr_defense", java.lang.String.valueOf(d6));
        mapP.put("attr_wisdom", java.lang.String.valueOf(d7));
        mapP.put("general_hp_step", java.lang.String.valueOf(d8));
        mapP.put("general_attack_step", java.lang.String.valueOf(d9));
        mapP.put("general_defense_step", java.lang.String.valueOf(d10));
        mapP.put("general_wisdom_step", java.lang.String.valueOf(d11));
        mapP.put("base_fighting", java.lang.String.valueOf(d2));
        mapP.put("fighting", java.lang.String.valueOf(d2));
        mapP.put("fight_point", java.lang.String.valueOf(d2));
        mapP.put("fighting_point", java.lang.String.valueOf(d2));
        mapP.put("general_fighting", java.lang.String.valueOf(d2));
        if (dArrK0 != null) {
            d3 = 0.0d;
        } else {
            d3 = 0.0d;
        }
        mapP.put("fighting_step", java.lang.String.valueOf(d3));
        dMax = 1.0d;
        if (dArrK0 != null) {
            dMax = java.lang.Math.max(1.0d, dArrK0[12]);
        }
        mapP.put("general_orbit", java.lang.String.valueOf(dMax));
        h2(mapP, J0(str));
        mapP.put("breachLevel", "1");
        mapP.put("insight_level", "1");
        mapP.put("general_naturalskill_id", str);
        mapP.put("major_pk_id", "");
        mapJ0 = J0(str);
        if (mapJ0 == null) {
            strValueOf = "0";
        } else {
            strValueOf = java.lang.String.valueOf(mapJ0.getOrDefault("lieutenant_skill_id", "0"));
        }
        if (r1(strValueOf)) {
        }
        mapP.put("lieutenant_skill_id", "");
        mapP.put("skill_type_lieutenant", "");
        mapP.put("ls_type", "0");
        mapP.put("ls_value", "0");
        mapP.put("position", "0");
        mapP.put("get_time", java.lang.String.valueOf(com.sgscq.vpn.c7.g()));
        mapP.put("reincarnate_num", "0");
        mapP.put("status", "0");
        java.lang.String strT1 = T0(str);
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        java.util.HashMap mapP3 = c.a.p("pk_id", str, "general_pk_id", str);
        mapP3.put("skill_id", strT1);
        mapP3.put("id", strT1);
        mapP3.put("skill_code", strT1);
        mapP3.put("pos", "1");
        mapP3.put("position", "1");
        mapP3.put("skill_position", "1");
        mapP3.put("is_natural", java.lang.Boolean.TRUE);
        mapP3.put("level", "1");
        mapP3.put("card_type", "4");
        arrayList2.add(mapP3);
        mapP.put("gSkill", arrayList2);
        mapP.put("general_skills", arrayList2);
        mapP.put("_fates", new java.util.ArrayList());
        mapP.put("general_painting_id", java.lang.Integer.valueOf(i3));
        mapP.put("general_painting", java.lang.String.valueOf(i3));
        mapP.put("general_avatar", java.lang.String.valueOf(i3));
        mapP.put("star_level", "1");
        mapP.put("general_star", "1");
        mapP.put("grade", java.lang.String.valueOf(i6));
        mapP.put("general_quality", java.lang.String.valueOf(i6));
        return mapP;
    }

    public final java.util.HashMap Z1(java.lang.String str) {
        java.util.HashMap map = new java.util.HashMap();
        java.lang.String strT0 = T0(str);
        map.put("pk_id", str);
        map.put("general_pk_id", str);
        map.put("skill_id", strT0);
        map.put("id", strT0);
        map.put("skill_code", strT0);
        map.put("card_type", "4");
        map.put("level", "1");
        map.put("skill_level", "1");
        map.put("position", "1");
        map.put("pos", "1");
        map.put("skill_position", "1");
        map.put("get_time", java.lang.String.valueOf(com.sgscq.vpn.c7.g()));
        map.put("is_natural", java.lang.Boolean.TRUE);
        map.put("exp", "0");
        map.put("extra_level", "0");
        map.put("advanced_level", "0");
        S(strT0, map);
        return map;
    }

    public final java.util.HashMap a2(java.lang.String str, int i2) {
        java.util.HashMap map = new java.util.HashMap();
        java.lang.String strValueOf = java.lang.String.valueOf(i2);
        double[] dArrK0 = K0(str);
        double d2 = dArrK0 != null ? dArrK0[0] : 100.0d;
        double d3 = dArrK0 != null ? dArrK0[1] : 50.0d;
        double d4 = dArrK0 != null ? dArrK0[2] : 30.0d;
        double d5 = dArrK0 != null ? dArrK0[3] : 20.0d;
        double dX = dArrK0 != null ? dArrK0[4] : x(d2, d3, d4, d5);
        map.put("pk_id", str);
        map.put("id", str);
        map.put("general_id", str);
        map.put("general_pk_id", str);
        map.put("team_id", "1");
        map.put("team_position", strValueOf);
        map.put("general_position", strValueOf);
        map.put("position", strValueOf);
        map.put("general_hp", java.lang.String.valueOf(d2));
        map.put("general_attack", java.lang.String.valueOf(d3));
        map.put("general_defense", java.lang.String.valueOf(d4));
        map.put("general_wisdom", java.lang.String.valueOf(d5));
        map.put("general_fighting", java.lang.String.valueOf(dX));
        map.put("fighting", java.lang.String.valueOf(dX));
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x01be  */
    public final boolean b0(java.util.Map map) {
        boolean z;
        boolean z2 = false;
        if (map == null) {
            return false;
        }
        java.lang.String strJ = c.a.j(map, "id", "", "general_id");
        if (strJ.isEmpty() || "null".equalsIgnoreCase(strJ)) {
            return false;
        }
        boolean zR2 = r2(strJ, "id", map) | q2(strJ, "general_id", map) | false;
        double[] dArrK0 = K0(strJ);
        if (dArrK0 != null) {
            zR2 = zR2 | r2(java.lang.String.valueOf(dArrK0[0]), "base_hp", map) | r2(java.lang.String.valueOf(dArrK0[1]), "base_attack", map) | r2(java.lang.String.valueOf(dArrK0[2]), "base_defense", map) | r2(java.lang.String.valueOf(dArrK0[3]), "base_wisdom", map) | r2(java.lang.String.valueOf(dArrK0[4]), "base_fighting", map) | r2(java.lang.String.valueOf(dArrK0[0]), "general_hp_attr", map) | r2(java.lang.String.valueOf(dArrK0[1]), "general_attack_attr", map) | r2(java.lang.String.valueOf(dArrK0[2]), "general_defense_attr", map) | r2(java.lang.String.valueOf(dArrK0[3]), "general_wisdom_attr", map) | r2(java.lang.String.valueOf(dArrK0[0]), "attr_hp", map) | r2(java.lang.String.valueOf(dArrK0[1]), "attr_attack", map) | r2(java.lang.String.valueOf(dArrK0[2]), "attr_defense", map) | r2(java.lang.String.valueOf(dArrK0[3]), "attr_wisdom", map);
            if (dArrK0.length > 8) {
                zR2 = zR2 | r2(java.lang.String.valueOf(dArrK0[5]), "general_hp_step", map) | r2(java.lang.String.valueOf(dArrK0[6]), "general_attack_step", map) | r2(java.lang.String.valueOf(dArrK0[7]), "general_defense_step", map) | r2(java.lang.String.valueOf(dArrK0[8]), "general_wisdom_step", map);
            }
        }
        java.lang.String strValueOf = (dArrK0 == null || dArrK0.length <= 12) ? "1" : java.lang.String.valueOf((int) java.lang.Math.max(1.0d, dArrK0[12]));
        java.lang.Object obj = map.get("general_orbit");
        if (obj == null || java.lang.String.valueOf(obj).isEmpty() || "0".equals(java.lang.String.valueOf(obj)) || "NaN".equalsIgnoreCase(java.lang.String.valueOf(obj)) || "null".equalsIgnoreCase(java.lang.String.valueOf(obj))) {
            map.put("general_orbit", strValueOf);
            zR2 = true;
        }
        java.util.Map mapJ0 = J0(strJ);
        if (mapJ0 != null) {
            java.lang.Object obj2 = mapJ0.get("resource_id");
            if (obj2 != null) {
                zR2 |= q2(obj2, "resource_id", map);
            }
            java.lang.Object obj3 = mapJ0.get("general_sex");
            if (obj3 != null) {
                zR2 |= q2(obj3, "general_sex", map);
            }
            zR2 |= h2(map, mapJ0);
        }
        java.lang.Object obj4 = map.get("major_pk_id");
        java.lang.String strValueOf2 = obj4 == null ? "" : java.lang.String.valueOf(obj4);
        if (strValueOf2.isEmpty() || "0".equals(strValueOf2) || "null".equalsIgnoreCase(strValueOf2) || "NaN".equalsIgnoreCase(strValueOf2)) {
            map.put("major_pk_id", "");
            if (obj4 == null || !"".equals(strValueOf2)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        boolean z3 = zR2 | z;
        java.lang.Object obj5 = map.get("lieutenant_skill_id");
        java.lang.String strValueOf3 = obj5 == null ? "" : java.lang.String.valueOf(obj5);
        if (strValueOf3.isEmpty() || "0".equals(strValueOf3) || "null".equalsIgnoreCase(strValueOf3) || "NaN".equalsIgnoreCase(strValueOf3)) {
            map.put("lieutenant_skill_id", "");
            if (obj5 == null || !"".equals(strValueOf3)) {
                z2 = true;
            }
        }
        boolean z4 = z2 | z3;
        java.lang.String strValueOf4 = java.lang.String.valueOf(map.getOrDefault("major_pk_id", ""));
        java.lang.String strValueOf5 = java.lang.String.valueOf(map.getOrDefault("position", ""));
        if ((!strValueOf4.isEmpty() && !"null".equalsIgnoreCase(strValueOf4)) || (!"1".equals(strValueOf5) && !"2".equals(strValueOf5))) {
            return z4;
        }
        map.put("position", "0");
        return true;
    }

    public final long c0(java.lang.String str, int i2) {
        int iMin;
        double d2;
        if (i2 <= 1) {
            return 0L;
        }
        W1();
        java.util.HashMap map = this.G;
        java.util.Map mapJ0 = J0(str);
        java.util.List list = (java.util.List) map.get(mapJ0 != null ? java.lang.String.valueOf(mapJ0.getOrDefault("upgrade_exp_type", "")) : "");
        if (list == null || list.isEmpty() || (iMin = java.lang.Math.min(i2 - 2, list.size() - 1)) < 0) {
            return 0L;
        }
        try {
            d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(((java.util.Map) list.get(iMin)).getOrDefault("total_num", "0")));
        } catch (java.lang.Exception unused) {
            d2 = 0.0d;
        }
        return (long) d2;
    }

    public final java.util.Map c1(java.lang.String str) {
        if (this.f1505m == null) {
            R1();
        }
        return (java.util.Map) this.f1505m.get(str);
    }

    public final java.lang.String d1(java.lang.String str) {
        java.lang.StringBuilder sb;
        java.util.Map mapC1 = c1(str);
        if (mapC1 == null) {
            return str;
        }
        java.lang.String str2 = (java.lang.String) mapC1.get("name");
        if (str2 == null || str2.isEmpty()) {
            sb = new java.lang.StringBuilder("物品");
        } else {
            java.lang.String strY0 = Y0(str2);
            if (!strY0.isEmpty()) {
                return strY0;
            }
            sb = new java.lang.StringBuilder("物品");
        }
        sb.append(str);
        return sb.toString();
    }

    public final java.util.Map e1(java.lang.String str) {
        java.util.HashMap map;
        if (this.f1502j == null) {
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "lieutenant_skills.json");
            if ((strA == null || strA.isEmpty()) && X) {
                strA = s2("docs/game_data_json/lieutenant_skills.json");
            }
            if (strA == null || strA.isEmpty()) {
                map = new java.util.HashMap();
            } else {
                java.util.Map map2 = (java.util.Map) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$7().getType());
                this.f1502j = map2;
                if (map2 == null) {
                    map = new java.util.HashMap();
                }
            }
            this.f1502j = map;
        }
        return (java.util.Map) this.f1502j.get(str);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023 A[PHI: r1
      0x0023: PHI (r1v3 java.lang.Object) = (r1v2 java.lang.Object), (r1v9 java.lang.Object) binds: [B:7:0x0010, B:12:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:62:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:65:0x0101  */
    /* JADX WARN: Code duplicated, block: B:67:0x0114  */
    /* JADX WARN: Code duplicated, block: B:68:0x0118  */
    /* JADX WARN: Code duplicated, block: B:70:0x011c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0130  */
    /* JADX WARN: Code duplicated, block: B:80:0x013a  */
    /* JADX WARN: Code duplicated, block: B:82:0x0145  */
    /* JADX WARN: Code duplicated, block: B:85:0x0153  */
    /* JADX WARN: Code duplicated, block: B:86:0x0157  */
    public final void f(java.util.Map map, double[] dArr) {
        java.util.List<java.util.Map> listEmptyList;
        java.util.Map map2;
        double d2;
        int i2;
        int i3;
        int iMax;
        java.lang.Object obj;
        java.util.List list;
        java.lang.Object obj2;
        java.util.ArrayList arrayList;
        java.lang.Object obj3 = map == null ? null : map.get("Combat");
        if (obj3 instanceof java.util.List) {
            listEmptyList = (java.util.List) obj3;
        } else {
            if (obj3 instanceof java.util.Map) {
                obj3 = ((java.util.Map) obj3).get("add");
                if (obj3 instanceof java.util.List) {
                    listEmptyList = (java.util.List) obj3;
                }
            }
            listEmptyList = java.util.Collections.emptyList();
        }
        for (java.util.Map map3 : listEmptyList) {
            int iL2 = l2(c.a.k(map3, "id", "0", "type", "combat_type"), 0);
            int iS = s(iL2);
            if (iS >= 0) {
                boolean z = true;
                int iG = c.a.g(map3, "combat_level", "1", "level", 1);
                double d3 = dArr[iS];
                int iMax2 = java.lang.Math.max(1, java.lang.Math.max(1, iG));
                if (iL2 == 3) {
                    d2 = ((double) iMax2) * 7.0d;
                } else {
                    if (this.F == null) {
                        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "combat_levels.json");
                        if (strA == null || strA.trim().isEmpty()) {
                            arrayList = new java.util.ArrayList();
                        } else {
                            try {
                                this.F = strA.trim().startsWith("[") ? com.sgscq.vpn.p5.t1(strA) : com.sgscq.vpn.p5.u1(strA);
                            } catch (java.lang.Exception unused) {
                                arrayList = new java.util.ArrayList();
                                this.F = arrayList;
                            }
                        }
                        this.F = arrayList;
                    }
                    java.lang.Object obj4 = this.F;
                    if (obj4 != null) {
                        if (obj4 instanceof java.util.Map) {
                            map2 = (java.util.Map) obj4;
                            if (!(map2.containsKey("exp_need") || map2.containsKey("extra_buff"))) {
                                java.lang.Object obj5 = map2.get(java.lang.String.valueOf(iL2));
                                i2 = iMax2;
                                if (obj5 == null) {
                                    obj5 = map2.get(java.lang.String.valueOf(iL2));
                                }
                                if (obj5 != null) {
                                    i3 = i2;
                                    obj4 = obj5;
                                }
                                iMax = java.lang.Math.max(1, i3);
                                if (obj4 instanceof java.util.List) {
                                    list = (java.util.List) obj4;
                                    if (list.isEmpty()) {
                                        map2 = null;
                                    } else {
                                        obj2 = list.get(java.lang.Math.min(iMax - 1, list.size() - 1));
                                        if (obj2 instanceof java.util.Map) {
                                            map2 = (java.util.Map) obj2;
                                        } else {
                                            map2 = null;
                                        }
                                    }
                                } else if (obj4 instanceof java.util.Map) {
                                    map2 = (java.util.Map) obj4;
                                    if (!map2.containsKey("exp_need") && !map2.containsKey("extra_buff")) {
                                        z = false;
                                    }
                                    if (!z) {
                                        obj = map2.get(java.lang.String.valueOf(iMax));
                                        if (obj == null) {
                                            obj = map2.get(java.lang.String.valueOf(iMax));
                                        }
                                        if (obj == null) {
                                            obj = map2.get(java.lang.String.valueOf(iMax - 1));
                                        }
                                        if (obj instanceof java.util.Map) {
                                            map2 = (java.util.Map) obj;
                                        } else {
                                            map2 = null;
                                        }
                                    }
                                } else {
                                    map2 = null;
                                }
                            }
                        } else {
                            i2 = iMax2;
                        }
                        i3 = i2;
                        iMax = java.lang.Math.max(1, i3);
                        if (obj4 instanceof java.util.List) {
                            list = (java.util.List) obj4;
                            if (list.isEmpty()) {
                                map2 = null;
                            } else {
                                obj2 = list.get(java.lang.Math.min(iMax - 1, list.size() - 1));
                                if (obj2 instanceof java.util.Map) {
                                    map2 = (java.util.Map) obj2;
                                } else {
                                    map2 = null;
                                }
                            }
                        } else if (obj4 instanceof java.util.Map) {
                            map2 = (java.util.Map) obj4;
                            if (!map2.containsKey("exp_need")) {
                                z = false;
                            }
                            if (!z) {
                                obj = map2.get(java.lang.String.valueOf(iMax));
                                if (obj == null) {
                                    obj = map2.get(java.lang.String.valueOf(iMax));
                                }
                                if (obj == null) {
                                    obj = map2.get(java.lang.String.valueOf(iMax - 1));
                                }
                                if (obj instanceof java.util.Map) {
                                    map2 = (java.util.Map) obj;
                                } else {
                                    map2 = null;
                                }
                            }
                        } else {
                            map2 = null;
                        }
                    } else {
                        map2 = null;
                    }
                    if (map2 == null) {
                        d2 = 0.0d;
                    } else {
                        try {
                            d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(map2.getOrDefault("extra_buff", "0")));
                        } catch (java.lang.Exception unused2) {
                            d2 = 0.0d;
                        }
                    }
                }
                dArr[iS] = d3 + d2;
            }
        }
    }

    public final java.util.Map f1(long j2, java.util.Set set) {
        if (com.sgscq.vpn.c7.f254i) {
            return null;
        }
        boolean z = false;
        T(false);
        p.d dVarH1 = H1();
        if (dVarH1 == null) {
            return null;
        }
        long j3 = j2 * 1000;
        p.b bVarA = dVarH1.a();
        p.a aVarC = bVarA == null ? null : p.d.c(bVarA.f1867e, j3);
        if (aVarC != null && set != null && set.contains(aVarC.f1858c)) {
            z = true;
        }
        return G1(z ? null : aVarC);
    }

    public final void f2(java.util.List list) {
        int i2;
        boolean zEquals;
        java.util.Map map;
        java.util.HashMap map2 = new java.util.HashMap();
        for (java.lang.String str : i0()) {
            java.util.Map mapJ0 = J0(str);
            if (mapJ0 != null) {
                java.util.HashMap map3 = new java.util.HashMap(mapJ0);
                map3.put("display_name", R0(str));
                map2.put(str, map3);
            }
        }
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            java.util.Map map4 = (java.util.Map) it.next();
            if (u1(map4) && (map = (java.util.Map) map2.get(java.lang.String.valueOf(map4.getOrDefault("general_id", map4.getOrDefault("pk_id", ""))))) != null) {
                W(map4, map, s0("general_hp", map), s0("general_attack", map), s0("general_defense", map), s0("general_wisdom", map));
            }
        }
        java.util.HashMap map5 = new java.util.HashMap();
        for (java.lang.String str2 : h0()) {
            java.util.Map mapZ0 = z0(str2);
            if (mapZ0 != null) {
                java.util.HashMap map6 = new java.util.HashMap(mapZ0);
                map6.put("display_name", A0(str2));
                map5.put(str2, map6);
            }
        }
        java.util.HashMap map7 = new java.util.HashMap();
        for (java.lang.String str3 : k0()) {
            java.util.Map mapK1 = k1(str3);
            if (mapK1 != null) {
                java.util.HashMap map8 = new java.util.HashMap(mapK1);
                map8.put("display_name", m1(str3));
                map7.put(str3, map8);
            }
        }
        java.util.Iterator it2 = list.iterator();
        while (true) {
            i2 = 0;
            if (!it2.hasNext()) {
                break;
            }
            java.util.Map map9 = (java.util.Map) it2.next();
            if (E1(map9)) {
                java.lang.String strJ = c.a.j(map9, "pk_id", "", "skill_id");
                zEquals = "300000".equals(strJ) ? true : "神秘技能".equals(q(map9, (java.util.Map) map7.get(strJ)));
            } else {
                zEquals = false;
            }
            if (zEquals) {
                it2.remove();
            } else if (E1(map9)) {
                map9.put("type", "4");
                map9.put("general_status", "0");
            } else if (u1(map9)) {
                map9.put("general_status", c.a.f(map9, "atlas_status", "0", 0) > 0 ? "1" : "0");
            }
        }
        java.util.Collections.sort(list, new com.sgscq.vpn.r1(map2, map5, map7));
        while (i2 < list.size()) {
            java.util.Map map10 = (java.util.Map) list.get(i2);
            i2++;
            map10.put("relation_model", java.lang.String.valueOf(i2));
        }
    }

    public final void g(int i2, int i3, java.util.Map map) {
        java.util.Map mapJ0;
        if (i3 <= i2) {
            return;
        }
        int iF = c.a.f(map, "talent_point", "0", 0);
        int iF2 = c.a.f(map, "general_talent_point_step", "0", 0);
        if (iF2 <= 0) {
            java.lang.String strJ = c.a.j(map, "id", "", "general_id");
            if (strJ.isEmpty() || (mapJ0 = J0(strJ)) == null || (iF2 = c.a.f(mapJ0, "general_talent_point_step", "0", 0)) <= 0) {
                iF2 = 15;
            }
        }
        map.put("talent_point", java.lang.String.valueOf(((i3 - i2) * iF2) + iF));
    }

    public final java.util.ArrayList g0() {
        I1();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : this.I.keySet()) {
            if (str != null && str.matches("105\\d{2}")) {
                try {
                    if (java.lang.Integer.parseInt(str.substring(3)) >= 1) {
                        arrayList.add(str);
                    }
                } catch (java.lang.Exception unused) {
                    arrayList.add(str);
                }
            }
        }
        java.util.Collections.sort(arrayList);
        return arrayList;
    }

    public final java.util.List g1(long j2) {
        if (com.sgscq.vpn.c7.f254i) {
            return java.util.Collections.emptyList();
        }
        T(false);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        p.d dVarH1 = H1();
        if (dVarH1 == null) {
            return arrayList;
        }
        int iMin = java.lang.Math.min(2, 2);
        for (p.a aVar : dVarH1.d(j2 * 1000)) {
            if (arrayList.size() >= iMin) {
                break;
            }
            java.util.Map mapG1 = G1(aVar);
            if (mapG1 != null) {
                arrayList.add(mapG1);
            }
        }
        return arrayList;
    }

    public final boolean g2(java.util.Map map) {
        java.lang.Object obj = map.get("Atlas");
        if (!(obj instanceof java.util.Map)) {
            return false;
        }
        java.lang.Object obj2 = ((java.util.Map) obj).get("add");
        if (!(obj2 instanceof java.util.List)) {
            return false;
        }
        java.util.List list = (java.util.List) obj2;
        a.o oVar = this.f1494b;
        java.lang.String strI = oVar.i(list);
        f2(list);
        return !strI.equals(oVar.i(list));
    }

    public final java.util.Map h(java.lang.String str, java.util.Map map) {
        if (str == null) {
            str = "";
        }
        if (str.contains(":")) {
            str = str.split(":")[0];
        }
        D(map);
        if (!C1(str)) {
            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[GeneralReward] skip non-surrenderable general_id=" + str);
            return null;
        }
        for (java.util.Map map2 : f0("General", map)) {
            if (c.a.C(map2, "id", "", "general_id", str)) {
                java.lang.String strJ = c.a.j(map2, "general_pk_id", "", "pk_id");
                if (!strJ.isEmpty() && !"null".equalsIgnoreCase(strJ)) {
                    map2.put("pk_id", strJ);
                    map2.put("general_pk_id", strJ);
                    map2.put("general_naturalskill_id", strJ);
                    t2(strJ, map2);
                }
                map2.put("general_status", "1");
                map2.put("status", "1");
                return map2;
            }
        }
        java.util.HashMap mapY1 = Y1(str);
        java.lang.String strD2 = d2(map);
        mapY1.put("pk_id", strD2);
        mapY1.put("general_pk_id", strD2);
        t2(strD2, mapY1);
        l("General", map, mapY1);
        java.util.HashMap mapZ1 = Z1(str);
        mapZ1.put("pk_id", strD2);
        mapZ1.put("general_pk_id", strD2);
        l("Skill", map, mapZ1);
        return mapY1;
    }

    public final java.util.ArrayList h0() {
        if (this.f1504l == null) {
            L1();
        }
        return this.f1504l;
    }

    public final int h1(int i2) {
        X1();
        int iMin = java.lang.Math.min(java.lang.Math.max(1, i2), this.E.size());
        int i3 = 1;
        for (int i4 = 0; i4 < iMin; i4++) {
            int iF = c.a.f((java.util.Map) this.E.get(i4), "team_num", "1", 1);
            if (iF > i3) {
                i3 = iF;
            }
        }
        return java.lang.Math.max(1, i3);
    }

    public final void i(java.util.Map map, java.lang.String str, double[] dArr, double[] dArr2) {
        java.lang.String str2;
        java.util.Iterator it;
        java.lang.String str3;
        int iMax;
        int iF;
        double d2;
        java.util.Map map2 = map;
        java.lang.String str4 = str;
        if (v1(str4, map2)) {
            java.util.HashSet hashSet = new java.util.HashSet();
            java.util.Iterator it2 = f0("TeamGeneral", map2).iterator();
            while (true) {
                str2 = "pk_id";
                if (!it2.hasNext()) {
                    break;
                }
                java.lang.String strJ = c.a.j((java.util.Map) it2.next(), "pk_id", "", "general_pk_id");
                if (!strJ.isEmpty() && !"0".equals(strJ)) {
                    hashSet.add(strJ);
                }
            }
            java.util.Iterator it3 = f0("BuddyGeneral", map2).iterator();
            while (it3.hasNext()) {
                java.lang.String strJ2 = c.a.j((java.util.Map) it3.next(), "pk_id", "", "general_pk_id");
                if (!strJ2.isEmpty() && !"0".equals(strJ2)) {
                    hashSet.add(strJ2);
                }
            }
            java.util.Iterator it4 = hashSet.iterator();
            while (it4.hasNext()) {
                java.lang.String str5 = (java.lang.String) it4.next();
                java.util.ArrayList arrayList = new java.util.ArrayList();
                for (java.util.Map map3 : f0("Skill", map2)) {
                    if (c.a.B(map3, "general_pk_id", "", str5)) {
                        j(arrayList, str5, str5, c.a.k(map3, "skill_code", "", "id", "skill_id"));
                    }
                }
                for (java.util.Map map4 : f0("General", map2)) {
                    java.util.Iterator it5 = it4;
                    if (c.a.B(map4, "major_pk_id", "", str5)) {
                        j(arrayList, str5, c.a.j(map4, "general_pk_id", "", str2), Y(map2, map4));
                    }
                    it4 = it5;
                }
                java.util.Iterator it6 = it4;
                java.util.Iterator it7 = arrayList.iterator();
                while (it7.hasNext()) {
                    com.sgscq.vpn.v1 v1Var = (com.sgscq.vpn.v1) it7.next();
                    java.util.Map mapK1 = this.k1(v1Var.f1452c);
                    if (mapK1 != null) {
                        java.lang.Object obj = mapK1.get("skill_effect");
                        if (obj instanceof java.util.List) {
                            java.util.Iterator it8 = f0("Skill", map2).iterator();
                            while (true) {
                                if (!it8.hasNext()) {
                                    it = it7;
                                    str3 = str2;
                                    iMax = 1;
                                    break;
                                }
                                java.util.Map map5 = (java.util.Map) it8.next();
                                it = it7;
                                str3 = str2;
                                if (v1Var.f1451b.equals(java.lang.String.valueOf(map5.getOrDefault("general_pk_id", "")))) {
                                    if (v1Var.f1452c.equals(c.a.k(map5, "skill_code", "", "id", "skill_id"))) {
                                        iMax = java.lang.Math.max(0, l2(java.lang.String.valueOf(map5.getOrDefault("extra_level", "0")), 0)) + c.a.g(map5, "level", "1", "skill_level", 1);
                                        break;
                                    }
                                }
                                str2 = str3;
                                it7 = it;
                            }
                            java.util.Iterator it9 = ((java.util.List) obj).iterator();
                            while (it9.hasNext()) {
                                java.util.Map mapL1 = this.l1(java.lang.String.valueOf(it9.next()));
                                if (mapL1 != null && ((iF = c.a.f(mapL1, "effect_target", "0", 0)) != 0 || v1Var.f1450a.equals(str4))) {
                                    if (iF == 0 || iF == 1) {
                                        int iS = s(l2(java.lang.String.valueOf(mapL1.getOrDefault("attr_type", "0")), 0));
                                        if (iS >= 0) {
                                            double d3 = 0.0d;
                                            try {
                                                d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapL1.getOrDefault("effect_value", "0")));
                                            } catch (java.lang.Exception unused) {
                                                d2 = 0.0d;
                                            }
                                            java.util.Iterator it10 = it9;
                                            double dMax = java.lang.Math.max(0, iMax - 1);
                                            try {
                                                d3 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapL1.getOrDefault("effect_value_step", "0")));
                                            } catch (java.lang.Exception unused2) {
                                            }
                                            double d4 = (dMax * d3) + d2;
                                            com.sgscq.vpn.v1 v1Var2 = v1Var;
                                            int iF2 = c.a.f(mapL1, "value_type", "0", 0);
                                            if (iF2 == 1) {
                                                d4 = (dArr[iS] * d4) / 100.0d;
                                            } else {
                                                if (iF2 == 2) {
                                                }
                                                this = this;
                                                str4 = str;
                                                it9 = it10;
                                                v1Var = v1Var2;
                                            }
                                            if (!"1".equals(java.lang.String.valueOf(mapL1.getOrDefault("is_gain", "1")))) {
                                                d4 *= -1.0d;
                                            }
                                            dArr2[iS] = dArr2[iS] + d4;
                                            this = this;
                                            str4 = str;
                                            it9 = it10;
                                            v1Var = v1Var2;
                                        }
                                    }
                                }
                            }
                            this = this;
                            map2 = map;
                            str4 = str;
                            str2 = str3;
                            it7 = it;
                        }
                    }
                }
                map2 = map;
                str4 = str;
                it4 = it6;
            }
        }
    }

    public final java.util.ArrayList i0() {
        if (this.f1498f == null) {
            O1();
        }
        return this.f1498f;
    }

    public final int i1(int i2, int i3, int i4) {
        java.util.Map map;
        T1();
        java.util.Map map2 = (java.util.Map) this.L.get(java.lang.String.valueOf(i2));
        if (map2 == null || (map = (java.util.Map) map2.get(java.lang.String.valueOf(i3))) == null) {
            return -1;
        }
        java.lang.Object obj = map.get(java.lang.String.valueOf(i4));
        if (obj instanceof java.util.Map) {
            return c.a.f((java.util.Map) obj, "item_num", "-1", -1);
        }
        return -1;
    }

    public final java.util.ArrayList j0() {
        I1();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : this.I.keySet()) {
            if (str != null && str.matches("5\\d{2}")) {
                try {
                    if (java.lang.Integer.parseInt(str) - 500 >= 1) {
                        arrayList.add(str);
                    }
                } catch (java.lang.Exception unused) {
                    arrayList.add(str);
                }
            }
        }
        java.util.Collections.sort(arrayList);
        return arrayList;
    }

    public final java.util.Map j1(int i2) {
        S1();
        java.lang.Object obj = this.T.get(java.lang.String.valueOf(i2));
        if (obj instanceof java.util.Map) {
            return (java.util.Map) obj;
        }
        return null;
    }

    public final java.util.ArrayList k0() {
        if (this.f1500h == null) {
            U1();
        }
        return this.f1500h;
    }

    public final java.util.Map k1(java.lang.String str) {
        if (this.f1499g == null) {
            U1();
        }
        return (java.util.Map) this.f1499g.get(str);
    }

    public final java.util.List l0(java.lang.String str) {
        if (this.z == null) {
            K1();
        }
        java.util.List list = (java.util.List) this.z.get(str);
        return list != null ? list : new java.util.ArrayList();
    }

    public final java.util.Map l1(java.lang.String str) {
        java.util.HashMap map;
        if (this.f1501i == null) {
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "skill_effects.json");
            if (strA == null || strA.isEmpty()) {
                map = new java.util.HashMap();
            } else {
                java.util.Map map2 = (java.util.Map) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$6().getType());
                this.f1501i = map2;
                if (map2 == null) {
                    map = new java.util.HashMap();
                }
            }
            this.f1501i = map;
        }
        return (java.util.Map) this.f1501i.get(str);
    }

    public final l.c m(int i2, int i3, int i4) {
        X1();
        java.util.ArrayList arrayList = this.E;
        int iMax = java.lang.Math.max(1, i2);
        int iMax2 = java.lang.Math.max(0, i4) + java.lang.Math.max(0, i3);
        while (true) {
            java.util.Map mapJ2 = J2(iMax, arrayList);
            int iMax3 = mapJ2 == null ? 0 : java.lang.Math.max(0, l2(java.lang.String.valueOf(mapJ2.getOrDefault("exp_need", "0")), 0));
            if (iMax3 > 0 && iMax2 >= iMax3) {
                if (arrayList != null && iMax >= arrayList.size()) {
                    iMax2 = iMax3;
                    break;
                }
                iMax2 -= iMax3;
                iMax++;
            } else {
                break;
            }
        }
        return new l.c(iMax, iMax2);
    }

    public final java.util.List m0(java.lang.String str, java.lang.String str2) {
        if (this.z == null) {
            K1();
        }
        java.util.List list = (java.util.List) this.z.get(str);
        if (list == null || list.isEmpty()) {
            return this.z.get(str2) != null ? (java.util.List) this.z.get(str2) : new java.util.ArrayList();
        }
        return list;
    }

    public final java.lang.String m1(java.lang.String str) {
        java.util.Map mapK1 = k1(str);
        return mapK1 == null ? str : Y0((java.lang.String) mapK1.get("name"));
    }

    public final java.util.List n0(java.lang.String str) {
        I1();
        java.lang.Object obj = this.I.get(str);
        if (!(obj instanceof java.util.Map)) {
            return java.util.Collections.emptyList();
        }
        java.lang.Object obj2 = ((java.util.Map) obj).get("nodes");
        return !(obj2 instanceof java.util.List) ? java.util.Collections.emptyList() : e0(str, N((java.util.List) obj2));
    }

    public final java.util.List n1(java.lang.String str) {
        java.util.HashMap map = this.Q;
        java.lang.String str2 = "";
        if (map == null && map == null) {
            this.Q = new java.util.HashMap();
            try {
                java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "story_guests.json");
                java.util.Map map2 = (strA == null || strA.isEmpty()) ? null : (java.util.Map) this.f1494b.d(strA, java.util.Map.class);
                java.lang.Object obj = map2 != null ? map2.get("story_guests") : null;
                if (obj instanceof java.util.Map) {
                    for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                        java.util.ArrayList arrayListN2 = n2(entry.getValue());
                        if (!arrayListN2.isEmpty()) {
                            java.util.HashMap map3 = this.Q;
                            java.lang.String strSubstring = (java.lang.String) entry.getKey();
                            if (strSubstring == null) {
                                strSubstring = "";
                            } else if (strSubstring.length() >= 6) {
                                strSubstring = strSubstring.substring(0, 6);
                            }
                            map3.put(strSubstring, arrayListN2);
                        }
                    }
                }
            } catch (java.lang.Exception e2) {
                c.a.D(e2, new java.lang.StringBuilder("[loadStoryGuests] 失败: "), "SGSCQ_SRV");
            }
            if (this.Q.isEmpty()) {
                this.Q.put("501003", java.util.Collections.singletonList("121011"));
                this.Q.put("501004", java.util.Collections.singletonList("121011"));
                this.Q.put("501005", java.util.Collections.singletonList("121011"));
                this.Q.put("501006", java.util.Collections.singletonList("121011"));
                this.Q.put("502001", java.util.Collections.singletonList("121007"));
                this.Q.put("502002", java.util.Collections.singletonList("121006"));
                this.Q.put("502003", java.util.Collections.singletonList("141003"));
                this.Q.put("502004", java.util.Collections.singletonList("141003"));
                this.Q.put("502005", java.util.Collections.singletonList("141003"));
                this.Q.put("502006", java.util.Collections.singletonList("141003"));
                this.Q.put("502007", java.util.Collections.singletonList("141003"));
            }
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[loadStoryGuests] 加载 " + this.Q.size() + " 副本客串映射");
        }
        java.util.HashMap map4 = this.Q;
        if (str != null) {
            if (str.length() >= 6) {
                str = str.substring(0, 6);
            }
            str2 = str;
        }
        java.util.List list = (java.util.List) map4.get(str2);
        return list == null ? java.util.Collections.emptyList() : new java.util.ArrayList(list);
    }

    public final java.util.List o0(java.lang.String str) {
        I1();
        java.lang.Object obj = this.I.get(str);
        return !(obj instanceof java.util.Map) ? java.util.Collections.emptyList() : k2(((java.util.Map) obj).get("hidden_rewards"));
    }

    public final boolean o1(java.lang.String str, java.util.Map map) {
        if (str != null && !str.isEmpty()) {
            java.lang.String strC2 = C2(map.getOrDefault("surrender_gift_id", ""));
            if (!strC2.isEmpty() && !"0".equals(strC2) && !"null".equalsIgnoreCase(strC2)) {
                return true;
            }
            com.sgscq.vpn.a7 a7VarV1 = V1();
            if (a7VarV1 != null && a7VarV1.b(str) != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00cb  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.util.Collection] */
    public final java.util.List p0(java.lang.String str) {
        java.util.List listEmptyList;
        java.util.ArrayList arrayListB2;
        ?? EmptyList;
        java.util.Iterator it;
        int i2;
        java.util.ArrayList arrayListB3;
        I1();
        java.lang.Object obj = this.I.get(str);
        if (!(obj instanceof java.util.Map)) {
            return java.util.Collections.emptyList();
        }
        java.util.Map map = (java.util.Map) obj;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.lang.Object obj2 = map.get("rewards");
        int i3 = 0;
        if (obj2 instanceof java.util.List) {
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            for (java.lang.Object obj3 : (java.util.List) obj2) {
                if (obj3 instanceof java.util.Map) {
                    java.util.Map map2 = (java.util.Map) obj3;
                    int iG = c.a.g(map2, "position", "0", "node", i3);
                    java.lang.String upperCase = c.a.j(map2, "dir", "", "direction").toUpperCase(java.util.Locale.ROOT);
                    if (iG > 0 && upperCase.length() == 1 && w1(upperCase.charAt(0))) {
                        arrayListB2 = B2(iG, c.a.g(map2, "num", "0", "item_num", 0), upperCase, java.lang.String.valueOf(map2.getOrDefault("item_id", "")), "");
                    } else {
                        arrayListB2 = null;
                    }
                } else {
                    java.lang.String strJ = J(obj3);
                    if (strJ.length() < 2) {
                        arrayListB2 = null;
                    } else {
                        int iL2 = l2(strJ.substring(0, strJ.length() - 1), 0);
                        char upperCase2 = java.lang.Character.toUpperCase(strJ.charAt(strJ.length() - 1));
                        if (iL2 <= 0 || !w1(upperCase2)) {
                            arrayListB2 = null;
                        } else {
                            arrayListB2 = B2(iL2, 0, java.lang.String.valueOf(upperCase2), "", "");
                        }
                    }
                }
                if (arrayListB2 != null) {
                    arrayList2.add(arrayListB2);
                }
                i3 = 0;
            }
            listEmptyList = arrayList2;
        } else {
            listEmptyList = java.util.Collections.emptyList();
        }
        arrayList.addAll(listEmptyList);
        java.lang.Object obj4 = map.get("hidden_rewards");
        java.util.List listQ1 = q1(map);
        if (!(obj4 instanceof java.util.List) || listQ1 == null || listQ1.isEmpty()) {
            EmptyList = java.util.Collections.emptyList();
        } else {
            EmptyList = new java.util.ArrayList();
            java.util.Iterator it2 = ((java.util.List) obj4).iterator();
            int i4 = 0;
            while (it2.hasNext()) {
                java.lang.Object next = it2.next();
                if (next instanceof java.util.Map) {
                    java.util.Map map3 = (java.util.Map) next;
                    if (i4 >= listQ1.size()) {
                        it = it2;
                    } else {
                        java.lang.String upperCase3 = c.a.j(map3, "dir", "", "direction").toUpperCase(java.util.Locale.ROOT);
                        it = it2;
                        if (upperCase3.length() == 1 && w1(upperCase3.charAt(0))) {
                            i2 = i4 + 1;
                            arrayListB3 = B2(((java.lang.Integer) listQ1.get(i4)).intValue(), c.a.g(map3, "num", "0", "item_num", 0), upperCase3, java.lang.String.valueOf(map3.getOrDefault("item_id", "")), "hidden");
                            EmptyList.add(arrayListB3);
                            i4 = i2;
                        }
                    }
                } else {
                    it = it2;
                    java.lang.String strJ2 = J(next);
                    if (strJ2.length() >= 3 && i4 < listQ1.size()) {
                        char upperCase4 = java.lang.Character.toUpperCase(strJ2.charAt(strJ2.length() - 1));
                        if (w1(upperCase4)) {
                            i2 = i4 + 1;
                            arrayListB3 = B2(((java.lang.Integer) listQ1.get(i4)).intValue(), 0, java.lang.String.valueOf(upperCase4), "", "hidden");
                            EmptyList.add(arrayListB3);
                            i4 = i2;
                        }
                    }
                }
                it2 = it;
            }
        }
        arrayList.addAll(EmptyList);
        return arrayList;
    }

    public final void r(java.util.HashMap map) {
        a.o oVar = this.f1494b;
        android.content.Context context = this.f1493a;
        if (map.isEmpty()) {
            return;
        }
        try {
            java.lang.String strA = com.sgscq.vpn.o0.a(context, "evolutions.json");
            if (strA != null && !strA.isEmpty()) {
                java.util.List<java.util.Map> list = (java.util.List) oVar.e(strA, new com.sgscq.vpn.GameDataManager$20().getType());
                java.util.HashMap map2 = new java.util.HashMap();
                if (list != null) {
                    for (java.util.Map map3 : list) {
                        java.lang.String strValueOf = java.lang.String.valueOf(map3.getOrDefault("general_id", ""));
                        java.lang.String strValueOf2 = java.lang.String.valueOf(map3.getOrDefault("surrender_gift_id", ""));
                        if (!strValueOf.isEmpty() && !strValueOf2.isEmpty() && !"null".equals(strValueOf2)) {
                            map2.put(strValueOf, strValueOf2);
                        }
                    }
                }
                java.lang.String strA2 = com.sgscq.vpn.o0.a(context, "gift_box_contents.json");
                java.util.Map mapEmptyMap = (strA2 == null || strA2.isEmpty()) ? java.util.Collections.emptyMap() : (java.util.Map) oVar.e(strA2, new com.sgscq.vpn.GameDataManager$21().getType());
                for (java.util.Map.Entry entry : map.entrySet()) {
                    java.lang.String str = (java.lang.String) map2.get(entry.getKey());
                    if (str != null) {
                        java.util.Map map4 = (java.util.Map) entry.getValue();
                        map4.put("evolution_surrender_gift_id", str);
                        java.util.Map map5 = (java.util.Map) mapEmptyMap.get(str);
                        if (map5 != null && (map5.get("add_list") instanceof java.util.List)) {
                            java.util.ArrayList arrayList = new java.util.ArrayList();
                            for (java.lang.Object obj : (java.util.List) map5.get("add_list")) {
                                if (obj instanceof java.util.Map) {
                                    arrayList.add(new java.util.LinkedHashMap((java.util.Map) obj));
                                }
                            }
                            map4.put("evolution_rewards", arrayList);
                        }
                    }
                }
            }
        } catch (java.lang.Exception e2) {
            c.a.D(e2, new java.lang.StringBuilder("[GameDataManager] loadEvolutionSurrenderRewards FAILED: "), "SGSCQ_SRV");
        }
    }

    public final int r0(long j2) {
        p.b bVarA;
        p.d dVarH1 = H1();
        p.a aVarC = null;
        if (dVarH1 != null && (bVarA = dVarH1.a()) != null) {
            aVarC = p.d.c(bVarA.f1867e, j2);
        }
        if (aVarC == null) {
            return 0;
        }
        long j3 = aVarC.f1861f;
        if (j3 <= j2) {
            return 0;
        }
        return (int) java.lang.Math.min(2147483647L, ((j3 - j2) + 999) / 1000);
    }

    public final boolean s1(java.lang.String str) {
        java.util.Map mapJ0 = J0(str);
        return mapJ0 != null && o1(str, mapJ0) && c.a.f(mapJ0, "insight_max_level", "0", 0) == 0 && C2(mapJ0.get("insight_grow_type")).startsWith("zhanjicailiao") && C2(mapJ0.get("upgrade_exp_type")).startsWith("zhanjicailiao") && C2(mapJ0.get("insight_upgrade_exp_type")).startsWith("zhanjicailiao") && C2(mapJ0.get("eated_exp_type")).startsWith("zhanji");
    }

    public final void t() {
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        java.lang.String str4;
        java.lang.StringBuilder sb;
        this.J = new java.util.HashMap();
        this.K = new java.util.HashMap();
        java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "fate_equipment_boxes.json");
        java.lang.String str5 = "item_id";
        java.lang.String str6 = "id";
        java.lang.String str7 = "equipment_id";
        java.lang.String str8 = "fate_equip_id";
        if (strA != null && !strA.isEmpty()) {
            java.util.Map map = (java.util.Map) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$2().getType());
            if (map != null) {
                java.util.Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
                    java.util.Map map2 = (java.util.Map) entry.getValue();
                    if (map2 != null) {
                        java.util.Iterator it2 = it;
                        java.util.HashMap map3 = new java.util.HashMap(map2);
                        java.lang.String strValueOf = java.lang.String.valueOf(map3.getOrDefault("box_id", entry.getKey()));
                        java.lang.String strValueOf2 = java.lang.String.valueOf(map3.getOrDefault(str8, map3.getOrDefault(str7, "")));
                        if (!strValueOf.isEmpty() && !strValueOf2.isEmpty()) {
                            map3.put("box_id", strValueOf);
                            map3.put(str6, strValueOf);
                            map3.put(str5, strValueOf);
                            java.lang.String strY0 = Y0("itemname".concat(strValueOf));
                            java.lang.String strY1 = Y0("itemdesc".concat(strValueOf));
                            if (!strY0.isEmpty() && !strY0.equals("itemname".concat(strValueOf))) {
                                map3.put("name", strY0);
                            }
                            if (!strY1.isEmpty() && !strY1.equals("itemdesc".concat(strValueOf))) {
                                map3.put("desc", strY1);
                            }
                            map3.put("style_id", java.lang.String.valueOf(map3.getOrDefault("style_id", "7")));
                            map3.put("style_desc", java.lang.String.valueOf(map3.getOrDefault("style_desc", "9".concat(strValueOf2))));
                            map3.put("related_id", java.lang.String.valueOf(map3.getOrDefault("related_id", "9".concat(strValueOf2))));
                            this.J.put(strValueOf, map3);
                            this.K.put(strValueOf2, map3);
                        }
                        it = it2;
                        str7 = str7;
                        str8 = str8;
                        str5 = str5;
                        str6 = str6;
                    }
                }
            }
            str = str5;
            str2 = str6;
            str3 = str7;
            str4 = str8;
            if (!this.J.isEmpty()) {
                sb = new java.lang.StringBuilder("[FateBoxMap] loaded config=");
            }
            sb.append(this.J.size());
            com.sgscq.vpn.z2.e("SGSCQ_SRV", sb.toString());
        }
        str = "item_id";
        str2 = "id";
        str3 = "equipment_id";
        str4 = "fate_equip_id";
        java.util.HashMap map4 = this.N;
        if (map4 == null || map4.isEmpty()) {
            M1();
        }
        java.util.HashSet hashSet = new java.util.HashSet();
        for (java.util.List list : this.N.values()) {
            if (list != null) {
                hashSet.addAll(list);
            }
        }
        java.util.Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            java.lang.String str9 = (java.lang.String) it3.next();
            if (str9 == null || str9.length() < 2) {
                str = str;
                it3 = it3;
            } else if (z0(str9) != null) {
                java.lang.String str10 = "99" + str9.substring(1);
                java.lang.String strA0 = A0(str9);
                if (strA0.isEmpty()) {
                    strA0 = "缘分装备";
                }
                java.lang.String str11 = str2;
                java.util.HashMap mapP = c.a.p("box_id", str10, str11, str10);
                mapP.put(str, str10);
                str2 = str11;
                mapP.put("base_item_id", "600045");
                mapP.put("resource_id", "600045");
                mapP.put(str4, str9);
                mapP.put(str3, str9);
                mapP.put("related_equipment_id", str9);
                mapP.put("name", "神装礼盒（" + strA0 + "）");
                mapP.put("desc", "开启可获得" + strA0 + "碎片等道具");
                mapP.put("style_id", "7");
                mapP.put("style_desc", "9".concat(str9));
                mapP.put("related_id", "9".concat(str9));
                this.J.put(str10, mapP);
                this.K.put(str9, mapP);
                it3 = it3;
            }
        }
        sb = new java.lang.StringBuilder("[FateBoxMap] loaded=");
        sb.append(this.J.size());
        com.sgscq.vpn.z2.e("SGSCQ_SRV", sb.toString());
    }

    public final java.util.List t0(java.lang.String str) {
        if (this.B == null) {
            java.lang.String strA = com.sgscq.vpn.o0.a(this.f1493a, "dialogs.json");
            if (strA == null || strA.isEmpty()) {
                this.B = new java.util.HashMap();
            } else {
                java.util.List<java.util.Map> list = (java.util.List) this.f1494b.e(strA, new com.sgscq.vpn.GameDataManager$15().getType());
                this.B = new java.util.HashMap();
                for (java.util.Map map : list) {
                    java.lang.String strValueOf = java.lang.String.valueOf(map.get("dialog_id"));
                    if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
                        if (!this.B.containsKey(strValueOf)) {
                            this.B.put(strValueOf, new java.util.ArrayList());
                        }
                        ((java.util.List) this.B.get(strValueOf)).add(map);
                    }
                }
                com.sgscq.vpn.z2.e("SGSCQ_SRV", "[loadDungeonDialogs] 加载 " + this.B.size() + " 组对话");
            }
        }
        return (java.util.List) this.B.get(str);
    }

    public final boolean t1(java.lang.String str) {
        return E0(str) != null;
    }

    public final boolean t2(java.lang.String str, java.util.Map map) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        boolean zQ2 = false | q2(str, "general_pk_id", map) | q2("1", "general_status", map) | q2("1", "status", map) | q2(str, "general_naturalskill_id", map);
        java.lang.String strJ = c.a.j(map, "id", "", "general_id");
        java.lang.Object obj = map.get("gSkill");
        if (obj instanceof java.util.List) {
            java.util.List<java.util.Map> list = (java.util.List) obj;
            if (!list.isEmpty()) {
                for (java.util.Map map2 : list) {
                    java.lang.String strJ2 = c.a.j(map2, "pos", "1", "position");
                    zQ2 = zQ2 | q2(str, "general_pk_id", map2) | q2(strJ2, "skill_position", map2);
                    if ("1".equals(strJ2)) {
                        zQ2 |= q2(str, "pk_id", map2);
                    }
                }
                java.lang.Object obj2 = map.get("general_skills");
                if ((obj2 instanceof java.util.List) && !((java.util.List) obj2).isEmpty()) {
                    return zQ2;
                }
                map.put("general_skills", list);
                return true;
            }
        }
        java.util.HashMap mapZ1 = Z1(strJ);
        mapZ1.put("pk_id", str);
        mapZ1.put("general_pk_id", str);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(mapZ1);
        map.put("gSkill", arrayList);
        map.put("general_skills", arrayList);
        return true;
    }

    public final java.util.LinkedHashMap u(int i2, int i3) {
        java.lang.String str;
        java.util.LinkedHashMap linkedHashMap;
        int i4 = i3;
        X1();
        if (this.f1505m == null) {
            R1();
        }
        java.util.ArrayList arrayList = this.E;
        java.util.HashMap map = this.f1505m;
        java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
        linkedHashMap2.put("level", java.lang.Integer.valueOf(java.lang.Math.max(1, i4)));
        java.util.LinkedHashMap linkedHashMap3 = new java.util.LinkedHashMap();
        int iMax = java.lang.Math.max(1, i2 + 1);
        int iIntValue = 0;
        int iIntValue2 = 0;
        while (iMax <= i4) {
            java.util.Map mapJ2 = J2(iMax, arrayList);
            if (mapJ2 == null) {
                linkedHashMap = linkedHashMap2;
            } else {
                java.lang.String str2 = "";
                java.util.Map map2 = map == null ? null : (java.util.Map) map.get(java.lang.String.valueOf(mapJ2.getOrDefault("item_advanced_id", "")));
                java.util.LinkedHashMap linkedHashMap4 = new java.util.LinkedHashMap();
                if (map2 != null) {
                    java.lang.Object obj = map2.get("effect_value");
                    if (obj instanceof java.util.Map) {
                        java.lang.Object obj2 = ((java.util.Map) obj).get("add_list");
                        if (obj2 instanceof java.util.List) {
                            java.util.Iterator it = ((java.util.List) obj2).iterator();
                            while (it.hasNext()) {
                                java.lang.Object next = it.next();
                                if (next instanceof java.util.Map) {
                                    java.util.Map map3 = (java.util.Map) next;
                                    java.lang.String strValueOf = java.lang.String.valueOf(map3.getOrDefault("type", str2));
                                    java.util.Iterator it2 = it;
                                    java.lang.String strValueOf2 = java.lang.String.valueOf(map3.getOrDefault("id", str2));
                                    java.lang.String str3 = str2;
                                    java.util.LinkedHashMap linkedHashMap5 = linkedHashMap2;
                                    int iF = c.a.f(map3, "num", "0", 0);
                                    if ("5".equals(strValueOf) && iF > 0) {
                                        if (!"600026".equals(strValueOf2)) {
                                            str = "600027".equals(strValueOf2) ? "gold" : "coin";
                                        }
                                        linkedHashMap4.put(str, java.lang.Integer.valueOf(((java.lang.Integer) linkedHashMap4.getOrDefault(str, 0)).intValue() + iF));
                                    }
                                    it = it2;
                                    str2 = str3;
                                    linkedHashMap2 = linkedHashMap5;
                                }
                            }
                        }
                    }
                }
                linkedHashMap = linkedHashMap2;
                iIntValue2 = ((java.lang.Integer) linkedHashMap4.getOrDefault("coin", 0)).intValue() + iIntValue2;
                iIntValue = ((java.lang.Integer) linkedHashMap4.getOrDefault("gold", 0)).intValue() + iIntValue;
            }
            iMax++;
            i4 = i3;
            map = map;
            linkedHashMap2 = linkedHashMap;
        }
        java.util.LinkedHashMap linkedHashMap6 = linkedHashMap2;
        linkedHashMap3.put("gold", java.lang.Integer.valueOf(iIntValue));
        linkedHashMap3.put("coin", java.lang.Integer.valueOf(iIntValue2));
        int iC2 = c2(i2, arrayList);
        int iC3 = c2(i3, arrayList);
        if (iC3 > iC2) {
            linkedHashMap3.put("team_num", java.lang.Integer.valueOf(iC3));
        }
        linkedHashMap6.put("add_list", linkedHashMap3);
        return linkedHashMap6;
    }

    public final java.util.List u0(java.lang.String str) {
        java.util.HashMap mapX0 = x0(str);
        if (mapX0 == null) {
            return java.util.Collections.emptyList();
        }
        java.lang.Object obj = mapX0.get("drops");
        if (!(obj instanceof java.util.List)) {
            return java.util.Collections.emptyList();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj2 : (java.util.List) obj) {
            if (obj2 instanceof java.util.Map) {
                java.util.Map map = (java.util.Map) obj2;
                java.lang.String strJ = c.a.j(map, "item_id", "", "id");
                if (!strJ.isEmpty() && !"null".equals(strJ)) {
                    java.util.HashMap map2 = new java.util.HashMap();
                    map2.put("type", java.lang.Integer.valueOf(m2(map.getOrDefault("type", "5"), 5)));
                    map2.put("id", strJ);
                    map2.put("item_id", strJ);
                    map2.put("num", java.lang.Integer.valueOf(m2(map.getOrDefault("num", map.getOrDefault("item_num", "1")), 1)));
                    arrayList.add(map2);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0110  */
    public final void v(com.sgscq.vpn.config.i iVar) {
        java.util.Map mapJ0;
        if (this.f1498f == null) {
            O1();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        for (java.lang.String str : this.f1498f) {
            if (!U.contains(java.lang.String.valueOf(str)) && (mapJ0 = J0(str)) != null) {
                boolean zP1 = true;
                if (b1("grade", mapJ0) == 1) {
                    java.lang.String strValueOf = java.lang.String.valueOf(mapJ0.getOrDefault("resource_id", ""));
                    if (!strValueOf.isEmpty() && !"0".equals(strValueOf)) {
                        java.lang.String strR0 = R0(str);
                        java.lang.String str2 = strR0 == null ? str : strR0;
                        double[] dArrK0 = K0(str);
                        java.util.HashMap mapW = w(str, mapJ0, str2, dArrK0, (dArrK0 == null || dArrK0.length <= 4) ? 0.0d : dArrK0[4]);
                        com.sgscq.vpn.config.c cVar = iVar == null ? null : (com.sgscq.vpn.config.c) ((java.util.Map) iVar.f582c.f1807d).get(str);
                        if (cVar == null || !"special".equals(cVar.f554c)) {
                            java.lang.String[] strArr = com.sgscq.vpn.cloud.m0.f419g;
                            boolean zEquals = iVar == null ? java.lang.String.valueOf(strArr[0]).equals(java.lang.String.valueOf(str)) : cVar != null && "regular".equals(cVar.f554c);
                            if (iVar != null) {
                                zP1 = zEquals;
                            } else if (!java.lang.String.valueOf(strArr[0]).equals(java.lang.String.valueOf(str))) {
                                java.lang.String[] strArr2 = com.sgscq.vpn.cloud.m0.f418f;
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= 28) {
                                        zP1 = false;
                                        break;
                                    } else if (java.lang.String.valueOf(strArr2[i2]).equals(java.lang.String.valueOf(str))) {
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                                if (zP1) {
                                    zP1 = false;
                                } else {
                                    try {
                                        int i3 = java.lang.Integer.parseInt(str);
                                        if (i3 <= 100000 || i3 >= 151000 || (str2 != null && str2.startsWith("神"))) {
                                            zP1 = false;
                                        } else {
                                            zP1 = p1("10", mapJ0);
                                        }
                                    } catch (java.lang.NumberFormatException unused) {
                                    }
                                }
                            }
                            if (!zEquals || !zP1) {
                                if (p1("1", mapJ0)) {
                                    arrayList.add(mapW);
                                } else if (zP1) {
                                }
                            }
                            arrayList2.add(mapW);
                        }
                    }
                }
            }
        }
        this.v = arrayList;
        this.w = arrayList2;
        this.f1495c = iVar;
        com.sgscq.vpn.c7.f();
        com.sgscq.vpn.z2.e("SGSCQ_SRV", "[WineCache] 常驻=" + arrayList.size() + " 限时=" + arrayList2.size());
        M1();
    }

    public final java.util.List v0(java.lang.String str) {
        java.util.HashMap mapX0 = x0(str);
        if (mapX0 == null) {
            return java.util.Collections.emptyList();
        }
        java.lang.Object obj = mapX0.get("enemies");
        if (!(obj instanceof java.util.List)) {
            return java.util.Collections.emptyList();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator it = ((java.util.List) obj).iterator();
        while (it.hasNext()) {
            arrayList.add(java.lang.String.valueOf(it.next()));
        }
        return arrayList;
    }

    public final int w0(java.lang.String str, int i2, java.lang.String str2) {
        java.util.HashMap mapX0 = x0(str);
        return (mapX0 == null || !mapX0.containsKey(str2)) ? i2 : m2(mapX0.get(str2), i2);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063  */
    /* JADX WARN: Code duplicated, block: B:28:0x006a A[PHI: r10
      0x006a: PHI (r10v9 int) = (r10v4 int), (r10v10 int) binds: [B:27:0x0068, B:24:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:91:0x0193  */
    public final java.util.HashMap x0(java.lang.String str) {
        com.sgscq.vpn.u1 u1Var;
        int i2;
        int i3;
        java.lang.Object objValueOf;
        java.util.ArrayList arrayList;
        int i4;
        int i5;
        java.lang.String strSubstring = str;
        java.util.HashMap map = null;
        if (strSubstring == null || str.length() < 3) {
            return null;
        }
        I1();
        int i6 = 0;
        java.lang.String strSubstring2 = (!strSubstring.startsWith("105") || str.length() < 5) ? strSubstring.substring(0, 3) : strSubstring.substring(0, 5);
        java.lang.Object obj = this.I.get(strSubstring2);
        if (!(obj instanceof java.util.Map)) {
            return null;
        }
        java.util.Map map2 = (java.util.Map) obj;
        java.lang.Object obj2 = map2.get("nodes");
        if (!(obj2 instanceof java.util.List)) {
            return null;
        }
        java.util.List<java.util.Map> list = (java.util.List) obj2;
        java.util.ArrayList arrayListE0 = e0(strSubstring2, N(list));
        int iIndexOf = arrayListE0.indexOf(strSubstring);
        if (iIndexOf < 0) {
            if (strSubstring.startsWith("105")) {
                i5 = 8;
                if (str.length() >= 8) {
                    strSubstring = strSubstring.substring(0, i5);
                } else {
                    i5 = 6;
                    if (str.length() >= 6) {
                        strSubstring = strSubstring.substring(0, i5);
                    }
                }
            } else {
                i5 = 6;
                if (str.length() >= 6) {
                    strSubstring = strSubstring.substring(0, i5);
                }
            }
            for (int i7 = 0; i7 < arrayListE0.size(); i7++) {
                if (((java.lang.String) arrayListE0.get(i7)).startsWith(strSubstring)) {
                    iIndexOf = i7;
                    break;
                }
            }
        }
        if (iIndexOf < 0) {
            return null;
        }
        int i8 = 0;
        for (java.util.Map map3 : list) {
            java.lang.String strValueOf = java.lang.String.valueOf(map3.get("type"));
            if ("dungeon".equals(strValueOf) || "boss".equals(strValueOf)) {
                if (i8 == iIndexOf) {
                    java.util.HashMap map4 = new java.util.HashMap(map3);
                    java.util.List list2 = (java.util.List) map2.get("start");
                    if (list2 != null && list2.size() >= 2) {
                        int iM2 = m2(list2.get(i6), 1);
                        int iM3 = m2(list2.get(1), 1);
                        java.lang.String strValueOf2 = java.lang.String.valueOf(map2.getOrDefault("path", ""));
                        int i9 = iIndexOf + 1;
                        int iIndexOf2 = q1(map2).indexOf(java.lang.Integer.valueOf(i9));
                        if (iIndexOf2 < 0) {
                            u1Var = null;
                        } else {
                            java.util.List listK2 = k2(map2.get("hidden_rewards"));
                            if (iIndexOf2 >= listK2.size()) {
                                u1Var = null;
                            } else {
                                java.util.List list3 = (java.util.List) listK2.get(iIndexOf2);
                                int iL2 = l2(java.lang.String.valueOf(list3.get(i6)), i6);
                                if (iL2 <= 0) {
                                    u1Var = null;
                                } else {
                                    int i10 = iM3;
                                    int i11 = iM2;
                                    for (int i12 = i6; i12 < iL2 - 1 && i12 < strValueOf2.length(); i12++) {
                                        char cCharAt = strValueOf2.charAt(i12);
                                        if (cCharAt == 'U') {
                                            i10--;
                                        } else if (cCharAt == 'D') {
                                            i10++;
                                        } else if (cCharAt == 'L') {
                                            i11--;
                                        } else if (cCharAt == 'R') {
                                            i11++;
                                        }
                                    }
                                    java.lang.String strValueOf3 = java.lang.String.valueOf(list3.get(1));
                                    char upperCase = strValueOf3.isEmpty() ? (char) 0 : java.lang.Character.toUpperCase(strValueOf3.charAt(0));
                                    if (upperCase == 'U') {
                                        i10--;
                                    } else if (upperCase == 'D') {
                                        i10++;
                                    } else if (upperCase == 'L') {
                                        i11--;
                                    } else if (upperCase == 'R') {
                                        i11++;
                                    } else {
                                        u1Var = null;
                                    }
                                    u1Var = new com.sgscq.vpn.u1(i11, i10, upperCase);
                                }
                            }
                        }
                        if (u1Var != null) {
                            i3 = u1Var.f1422a;
                            i2 = u1Var.f1423b;
                        } else {
                            for (int i13 = 0; i13 < iIndexOf && i13 < strValueOf2.length(); i13++) {
                                char cCharAt2 = strValueOf2.charAt(i13);
                                if (cCharAt2 == 'U') {
                                    iM3--;
                                } else if (cCharAt2 == 'D') {
                                    iM3++;
                                } else if (cCharAt2 == 'L') {
                                    iM2--;
                                } else if (cCharAt2 == 'R') {
                                    iM2++;
                                }
                            }
                            int i14 = iM2;
                            i2 = iM3;
                            i3 = i14;
                        }
                        map4.put("idx", java.lang.Integer.valueOf(i9));
                        map4.put("grid", java.util.Arrays.asList(java.lang.Integer.valueOf(i3), java.lang.Integer.valueOf(i2)));
                        map4.put("position", java.lang.Integer.valueOf(((i3 - 1) * 4) + i2));
                        if (u1Var == null) {
                            arrayList = new java.util.ArrayList();
                            if (iIndexOf > 0 && (i4 = iIndexOf - 1) < strValueOf2.length()) {
                                char cCharAt3 = strValueOf2.charAt(i4);
                                int i15 = cCharAt3 == 'U' ? 1 : cCharAt3 == 'L' ? 3 : 0;
                                if (i15 > 0) {
                                    arrayList.add(java.lang.Integer.valueOf(i15));
                                }
                            }
                            if (iIndexOf >= 0 && iIndexOf < strValueOf2.length()) {
                                char cCharAt4 = strValueOf2.charAt(iIndexOf);
                                int i16 = cCharAt4 == 'D' ? 2 : cCharAt4 == 'R' ? 4 : 0;
                                if (i16 > 0 && !arrayList.contains(java.lang.Integer.valueOf(i16))) {
                                    arrayList.add(java.lang.Integer.valueOf(i16));
                                }
                            }
                            if (arrayList.isEmpty()) {
                                objValueOf = 0;
                            } else if (arrayList.size() == 1) {
                                objValueOf = arrayList;
                                objValueOf = arrayList.get(0);
                            }
                        } else {
                            int i17 = 0;
                            char c2 = u1Var.f1424c;
                            if (c2 == 'U') {
                                i17 = 1;
                            } else if (c2 == 'L') {
                                i17 = 3;
                            }
                            objValueOf = java.lang.Integer.valueOf(i17);
                        }
                        objValueOf = arrayList;
                        map4.put("direction", objValueOf);
                    }
                    return map4;
                }
                i8++;
            }
            i6 = i6;
            map = null;
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0074  */
    public final com.sgscq.vpn.s1 y(java.lang.String str, java.util.Map map) {
        int i2;
        int i3;
        java.util.LinkedHashMap linkedHashMap;
        java.lang.Object obj;
        N1();
        java.util.LinkedHashMap linkedHashMap2 = this.t;
        java.util.LinkedHashMap linkedHashMap3 = this.u;
        double[] dArr = {0.0d, 0.0d, 0.0d, 0.0d};
        double[] dArr2 = {0.0d, 0.0d, 0.0d, 0.0d};
        double[] dArr3 = {0.0d, 0.0d, 0.0d};
        if (map == null || str.isEmpty()) {
            return new com.sgscq.vpn.s1(dArr2, dArr, dArr3);
        }
        int i4 = 0;
        if (linkedHashMap2 != null && !linkedHashMap2.isEmpty()) {
            java.util.Iterator it = f0("MagicalEqu", map).iterator();
            while (it.hasNext()) {
                java.util.Map map2 = (java.util.Map) it.next();
                if (c.a.B(map2, "general_id", "", str) && c.a.f(map2, "is_open", "0", i4) == 1) {
                    java.lang.Object obj2 = linkedHashMap2.get(java.lang.String.valueOf(map2.getOrDefault("magic_id", "")));
                    if (obj2 instanceof java.util.Map) {
                        java.util.Map map3 = (java.util.Map) obj2;
                        int iMax = java.lang.Math.max(1, l2(java.lang.String.valueOf(map2.getOrDefault("magic_level", "1")), 1));
                        int iMax2 = java.lang.Math.max(0, l2(java.lang.String.valueOf(map2.getOrDefault("magic_sub_level", "0")), 0));
                        int iMax3 = java.lang.Math.max(0, l2(java.lang.String.valueOf(map2.getOrDefault("magic_vip_level", "0")), 0));
                        int i5 = 1;
                        while (i5 <= iMax) {
                            int i6 = iMax2;
                            java.lang.Object obj3 = map3.get(java.lang.String.valueOf(i5));
                            java.util.Map map4 = map3;
                            if (obj3 instanceof java.util.List) {
                                java.util.List list = (java.util.List) obj3;
                                java.lang.Object obj4 = list.isEmpty() ? null : list.get(0);
                                obj = list.size() > 1 ? list.get(1) : null;
                                obj3 = obj4;
                            } else {
                                obj = null;
                            }
                            e(obj3, i5 < iMax ? 10 : i6, dArr);
                            if (i5 <= iMax3) {
                                e(obj, Integer.MAX_VALUE, dArr);
                            }
                            i5++;
                            iMax2 = i6;
                            map3 = map4;
                            it = it;
                        }
                    }
                }
                i4 = 0;
                linkedHashMap2 = linkedHashMap2;
                it = it;
            }
        }
        if (linkedHashMap3 != null && !linkedHashMap3.isEmpty()) {
            java.util.Iterator it2 = f0("EvolutionInfo", map).iterator();
            while (it2.hasNext()) {
                java.util.Map map5 = (java.util.Map) it2.next();
                if (c.a.f(map5, "status", "0", 0) == 1) {
                    java.lang.String strValueOf = java.lang.String.valueOf(map5.getOrDefault("general_id", ""));
                    java.lang.Object obj5 = linkedHashMap3.get(java.lang.String.valueOf(map5.getOrDefault("evolution_id", "")));
                    if (obj5 instanceof java.util.Map) {
                        java.util.Map map6 = (java.util.Map) obj5;
                        int i7 = 1;
                        int iMax4 = java.lang.Math.max(1, l2(java.lang.String.valueOf(map5.getOrDefault("evolution_level", "1")), 1));
                        int iMax5 = java.lang.Math.max(1, l2(java.lang.String.valueOf(map5.getOrDefault("sub_level", "1")), 1));
                        while (i7 <= iMax4) {
                            java.lang.Object obj6 = map6.get(java.lang.String.valueOf(i7));
                            if (i7 < iMax4) {
                                i2 = 7;
                                i3 = iMax5;
                            } else {
                                i2 = iMax5;
                                i3 = i2;
                            }
                            if (obj6 instanceof java.util.List) {
                                java.util.List list2 = (java.util.List) obj6;
                                int i8 = 0;
                                while (true) {
                                    linkedHashMap = linkedHashMap3;
                                    if (i8 > i2 || i8 >= list2.size()) {
                                        break;
                                    }
                                    d(list2.get(i8), strValueOf, str, dArr2, dArr3);
                                    i8++;
                                    linkedHashMap3 = linkedHashMap;
                                }
                            } else {
                                linkedHashMap = linkedHashMap3;
                                if (obj6 instanceof java.util.Map) {
                                    java.util.Map map7 = (java.util.Map) obj6;
                                    for (int i9 = 0; i9 <= i2; i9++) {
                                        d(map7.get(java.lang.String.valueOf(i9)), strValueOf, str, dArr2, dArr3);
                                    }
                                }
                            }
                            i7++;
                            it2 = it2;
                            iMax5 = i3;
                            linkedHashMap3 = linkedHashMap;
                        }
                    }
                }
            }
        }
        return new com.sgscq.vpn.s1(dArr2, dArr, dArr3);
    }

    public final int y0(int i2) {
        double d2;
        X1();
        java.util.Map mapJ2 = J2(i2, this.E);
        if (mapJ2 == null) {
            return 0;
        }
        try {
            d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapJ2.getOrDefault("ladder_fight_user_exp", "0")));
        } catch (java.lang.Exception unused) {
            d2 = 0.0d;
        }
        return java.lang.Math.max(0, (int) java.lang.Math.round(d2));
    }

    public final boolean y1(java.lang.String str) {
        java.util.Map mapZ0 = z0(str);
        if (mapZ0 != null) {
            int iG = c.a.g(mapZ0, "pos", "0", "equipment_pos", 0);
            int iG2 = c.a.g(mapZ0, "type", "0", "equipment_type", 0);
            if (iG == 3 || iG2 == 3) {
                return true;
            }
        }
        return str != null && str.startsWith("23");
    }

    public final java.lang.String y2(java.util.Map map) {
        java.lang.String strZ2 = z2(map);
        if (!r1(strZ2)) {
            return strZ2;
        }
        java.lang.String strJ = c.a.j(map, "skill_type_lieutenant", "", "lieutenant_skill_id");
        return (r1(strJ) || e1(strJ) == null) ? "" : strJ;
    }

    /* JADX WARN: Code duplicated, block: B:289:0x075b  */
    /* JADX WARN: Code duplicated, block: B:427:0x0a20  */
    /* JADX WARN: Code duplicated, block: B:429:0x0a24  */
    /* JADX WARN: Code duplicated, block: B:431:0x0a37  */
    /* JADX WARN: Code duplicated, block: B:434:0x0a43  */
    /* JADX WARN: Code duplicated, block: B:435:0x0a47  */
    /* JADX WARN: Code duplicated, block: B:441:0x0a5a  */
    public final com.sgscq.vpn.t1 z(java.lang.String str, java.util.Map map) {
        java.lang.String str2;
        java.lang.String str3;
        double dZ;
        java.lang.String str4;
        java.lang.String str5;
        java.lang.String str6;
        java.lang.String str7;
        java.lang.String str8;
        java.lang.String str9;
        java.lang.String str10;
        java.lang.String str11;
        java.lang.String str12;
        java.lang.String str13;
        java.lang.String str14;
        java.lang.String str15;
        java.lang.String str16;
        java.lang.String str17;
        java.lang.String str18;
        java.lang.String str19;
        java.lang.String str20;
        java.lang.String str21;
        com.sgscq.vpn.s1 s1Var;
        java.lang.String str22;
        java.util.HashSet hashSet;
        java.lang.String str23;
        double d2;
        double d3;
        java.lang.String str24;
        java.lang.String str25;
        java.lang.String str26;
        java.lang.String str27;
        java.lang.String str28;
        java.lang.Object obj;
        java.lang.Object obj2;
        java.util.Iterator it;
        java.lang.String str29;
        java.lang.String str30;
        java.lang.String strK;
        com.sgscq.vpn.w1 w1Var;
        int iS;
        double d4;
        java.lang.String strY2;
        double d5;
        double d6;
        double d7;
        double d8;
        java.util.Map mapI0;
        int iS2;
        double d9;
        java.lang.String str31;
        double d10;
        double d11;
        double d12;
        java.util.Map map2;
        java.util.Map map3;
        java.lang.Object obj3;
        java.util.Map mapE1;
        java.lang.String str32;
        java.lang.String str33;
        java.lang.String str34;
        java.lang.String str35;
        double d13;
        com.sgscq.vpn.w1 w1Var2 = this;
        java.util.Map mapX = X(str, map);
        if (mapX == null) {
            return null;
        }
        java.lang.String strJ = c.a.j(mapX, "id", "", "general_id");
        java.lang.String str36 = "1";
        int iG = c.a.g(mapX, "level", "1", "general_level", 1);
        int i2 = iG <= 0 ? 1 : iG;
        java.lang.String str37 = "breachLevel";
        int iG2 = c.a.g(mapX, "breachLevel", "1", "insight_level", 1);
        int i3 = iG2 <= 0 ? 1 : iG2;
        com.sgscq.vpn.s1 s1VarY = w1Var2.y(strJ, map);
        java.lang.String str38 = "general_id";
        java.lang.String str39 = "level";
        com.sgscq.vpn.s1 s1Var2 = s1VarY;
        java.lang.String str40 = "insight_level";
        double[] dArrN0 = N0(strJ, i2, i3, s1VarY.f1359i);
        double[] dArr = new double[4];
        dArr[0] = dArrN0 != null ? dArrN0[0] : K2("general_hp_attr", "base_hp", "100", mapX);
        dArr[1] = dArrN0 != null ? dArrN0[1] : K2("general_attack_attr", "base_attack", "50", mapX);
        dArr[2] = dArrN0 != null ? dArrN0[2] : K2("general_defense_attr", "base_defense", "30", mapX);
        dArr[3] = dArrN0 != null ? dArrN0[3] : K2("general_wisdom_attr", "base_wisdom", "20", mapX);
        dArr[0] = O("hp", mapX) + dArr[0];
        dArr[1] = O("attack", mapX) + dArr[1];
        dArr[2] = O("defense", mapX) + dArr[2];
        dArr[3] = O("wisdom", mapX) + dArr[3];
        double[] dArr2 = {0.0d, 0.0d, 0.0d, 0.0d};
        java.lang.String str41 = "General";
        java.util.Iterator it2 = f0("General", map).iterator();
        while (true) {
            str2 = "0";
            str3 = "major_pk_id";
            dZ = 0.0d;
            if (!it2.hasNext()) {
                break;
            }
            java.util.Map map4 = (java.util.Map) it2.next();
            if (c.a.B(map4, "major_pk_id", "", str)) {
                java.lang.String strY3 = w1Var2.y2(map4);
                if (!r1(strY3) && (mapE1 = w1Var2.e1(strY3)) != null) {
                    java.util.Iterator it3 = it2;
                    int iF = c.a.f(mapE1, "first_attr_type", "0", 0);
                    double[] dArr3 = dArr;
                    int iF2 = c.a.f(mapE1, "second_attr_type", "0", 0);
                    java.lang.Object obj4 = mapE1.get("skill_grow");
                    if (obj4 instanceof java.util.Map) {
                        int iG3 = c.a.g(map4, str37, str36, str40, 1);
                        if (iG3 <= 0) {
                            iG3 = 1;
                        }
                        java.util.Map map5 = (java.util.Map) obj4;
                        java.lang.Object obj5 = map5.get(java.lang.String.valueOf(iG3));
                        str32 = str40;
                        if (!(obj5 instanceof java.util.Map)) {
                            obj5 = map5.get(str36);
                        }
                        if (obj5 instanceof java.util.Map) {
                            java.util.Map map6 = (java.util.Map) obj5;
                            str33 = str38;
                            com.sgscq.vpn.s1 s1VarY2 = w1Var2.y(java.lang.String.valueOf(map4.getOrDefault(str33, "")), map);
                            int iS3 = s(iF);
                            str34 = str36;
                            str35 = str37;
                            double d14 = s1VarY2.f1361k;
                            if (iS3 >= 0) {
                                double d15 = dArr2[iS3];
                                try {
                                    d13 = java.lang.Double.parseDouble(java.lang.String.valueOf(map6.getOrDefault("first_attr_value", "0")));
                                } catch (java.lang.Exception unused) {
                                    d13 = 0.0d;
                                }
                                dArr2[iS3] = ((d13 + d14) / 100.0d) + d15;
                            }
                            int iS4 = s(iF2);
                            if (iS4 >= 0) {
                                double d16 = dArr2[iS4];
                                try {
                                    dZ = java.lang.Double.parseDouble(java.lang.String.valueOf(map6.getOrDefault("second_attr_value", "0")));
                                } catch (java.lang.Exception unused2) {
                                }
                                dArr2[iS4] = ((dZ + d14) / 100.0d) + d16;
                            }
                        }
                        str36 = str34;
                        it2 = it3;
                        dArr = dArr3;
                        str37 = str35;
                        str38 = str33;
                        str40 = str32;
                    } else {
                        str32 = str40;
                    }
                    str35 = str37;
                    str33 = str38;
                    str34 = str36;
                    str36 = str34;
                    it2 = it3;
                    dArr = dArr3;
                    str37 = str35;
                    str38 = str33;
                    str40 = str32;
                }
            }
        }
        double[] dArr4 = dArr;
        java.lang.String str42 = str38;
        java.lang.String str43 = "id";
        java.lang.String str44 = str36;
        java.lang.String strJ2 = c.a.j(mapX, str43, "", str42);
        java.util.Map mapJ0 = w1Var2.J0(strJ2);
        java.lang.String str45 = "equipment_id";
        java.lang.String str46 = "skill_id";
        java.lang.String str47 = "Equipment";
        java.lang.String str48 = "skill_code";
        java.lang.String str49 = "general_pk_id";
        if (mapJ0 == null) {
            str17 = "equip_id";
            str9 = "General";
            str15 = str;
            str14 = "Equipment";
            str19 = str42;
            str8 = "major_pk_id";
            str11 = "general_pk_id";
            str16 = "Skill";
            str21 = "equipment_id";
            str12 = str44;
            str20 = str46;
            str18 = str48;
            str13 = str43;
            str22 = "0";
            s1Var = s1Var2;
        } else {
            java.lang.Object obj6 = mapJ0.get("general_fate_id");
            java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList();
            java.lang.String str50 = "equip_id";
            if (obj6 instanceof java.util.Collection) {
                java.util.Iterator it4 = ((java.util.Collection) obj6).iterator();
                while (it4.hasNext()) {
                    arrayList.add(java.lang.String.valueOf(it4.next()));
                }
            } else if (obj6 != null && !java.lang.String.valueOf(obj6).isEmpty()) {
                arrayList.add(java.lang.String.valueOf(obj6));
            }
            N1();
            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
            java.util.Iterator it5 = f0("MagicalEqu", map).iterator();
            while (true) {
                str4 = str45;
                str5 = "magic_sub_level";
                str6 = str47;
                str7 = "magic_level";
                str8 = str3;
                str9 = str41;
                str10 = "is_open";
                if (!it5.hasNext()) {
                    break;
                }
                java.lang.String str51 = str43;
                java.util.Map map7 = (java.util.Map) it5.next();
                if (c.a.B(map7, str42, "", strJ2)) {
                    str29 = str49;
                    if (c.a.f(map7, "is_open", "0", 0) == 1) {
                        java.lang.Object obj7 = w1Var2.t.get(java.lang.String.valueOf(map7.getOrDefault("magic_id", "")));
                        if (obj7 instanceof java.util.Map) {
                            java.util.Map map8 = (java.util.Map) obj7;
                            str30 = str44;
                            int iMax = java.lang.Math.max(1, l2(java.lang.String.valueOf(map7.getOrDefault("magic_level", str30)), 1));
                            int iMax2 = java.lang.Math.max(0, l2(java.lang.String.valueOf(map7.getOrDefault("magic_sub_level", "0")), 0));
                            int iMax3 = java.lang.Math.max(0, l2(java.lang.String.valueOf(map7.getOrDefault("magic_vip_level", "0")), 0));
                            int i4 = 1;
                            while (i4 <= iMax) {
                                java.lang.Object obj8 = map8.get(java.lang.String.valueOf(i4));
                                java.util.Map map9 = map8;
                                if (obj8 instanceof java.util.List) {
                                    java.util.List list = (java.util.List) obj8;
                                    int i5 = i4 < iMax ? 10 : iMax2;
                                    if (!list.isEmpty()) {
                                        I(list.get(0), i5, linkedHashMap);
                                    }
                                    if (i4 <= iMax3 && list.size() > 1) {
                                        I(list.get(1), Integer.MAX_VALUE, linkedHashMap);
                                    }
                                } else {
                                    iMax2 = iMax2;
                                }
                                i4++;
                                map8 = map9;
                                iMax2 = iMax2;
                            }
                        }
                    }
                    str44 = str30;
                    str49 = str29;
                    str45 = str4;
                    str47 = str6;
                    str3 = str8;
                    str41 = str9;
                    str43 = str51;
                } else {
                    str29 = str49;
                }
                str30 = str44;
                str44 = str30;
                str49 = str29;
                str45 = str4;
                str47 = str6;
                str3 = str8;
                str41 = str9;
                str43 = str51;
            }
            java.lang.String str52 = str43;
            str11 = str49;
            str12 = str44;
            java.lang.Object obj9 = "magic_vip_level";
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                java.lang.String str53 = (java.lang.String) linkedHashMap.get(arrayList.get(i6));
                if (str53 != null && !str53.isEmpty()) {
                    arrayList.set(i6, str53);
                }
            }
            java.util.Iterator it6 = f0("EvolutionInfo", map).iterator();
            while (it6.hasNext()) {
                java.util.Map map10 = (java.util.Map) it6.next();
                if (c.a.B(map10, str42, "", strJ2) && (obj2 = map10.get("fate_ids")) != null) {
                    try {
                        it = it6;
                        try {
                            java.util.List list2 = (java.util.List) w1Var2.f1494b.e(java.lang.String.valueOf(obj2), new com.sgscq.vpn.GameDataManager$22().getType());
                            if (list2 != null) {
                                java.util.Iterator it7 = list2.iterator();
                                while (it7.hasNext()) {
                                    java.util.Map map11 = (java.util.Map) it7.next();
                                    java.lang.String strValueOf = java.lang.String.valueOf(map11.getOrDefault("left", ""));
                                    java.util.Iterator it8 = it7;
                                    java.lang.String strValueOf2 = java.lang.String.valueOf(map11.getOrDefault("right", ""));
                                    boolean z = c.a.f(map11, "now", "0", 0) == 1;
                                    java.lang.String str54 = z ? strValueOf : strValueOf2;
                                    java.lang.String str55 = z ? strValueOf2 : strValueOf;
                                    java.lang.String str56 = str5;
                                    for (int i7 = 0; i7 < arrayList.size(); i7++) {
                                        if (str54.equals(arrayList.get(i7))) {
                                            arrayList.set(i7, str55);
                                        }
                                    }
                                    it7 = it8;
                                    str5 = str56;
                                }
                            }
                        } catch (java.lang.RuntimeException unused3) {
                        }
                    } catch (java.lang.RuntimeException unused4) {
                        it = it6;
                    }
                } else {
                    it = it6;
                }
                it6 = it;
                str5 = str5;
            }
            java.lang.String str57 = str5;
            if (arrayList.isEmpty()) {
                str15 = str;
                str22 = "0";
                s1Var = s1Var2;
                str20 = str46;
                str21 = str4;
                str14 = str6;
                str13 = str52;
                str19 = str42;
                str17 = str50;
                str16 = "Skill";
                str18 = str48;
            } else {
                N1();
                java.util.LinkedHashMap linkedHashMap2 = w1Var2.t;
                java.util.LinkedHashMap linkedHashMap3 = new java.util.LinkedHashMap();
                if (!strJ2.isEmpty() && linkedHashMap2 != null && !linkedHashMap2.isEmpty()) {
                    java.util.Iterator it9 = f0("MagicalEqu", map).iterator();
                    while (it9.hasNext()) {
                        java.util.Map map12 = (java.util.Map) it9.next();
                        if (c.a.B(map12, str42, "", strJ2)) {
                            str28 = str10;
                            if (c.a.f(map12, str10, "0", 0) == 1) {
                                java.lang.Object obj10 = linkedHashMap2.get(java.lang.String.valueOf(map12.getOrDefault("magic_id", "")));
                                if (obj10 instanceof java.util.Map) {
                                    java.util.Map map13 = (java.util.Map) obj10;
                                    java.util.LinkedHashMap linkedHashMap4 = linkedHashMap2;
                                    int iMax4 = java.lang.Math.max(1, l2(java.lang.String.valueOf(map12.getOrDefault(str7, str12)), 1));
                                    java.lang.String str58 = str57;
                                    java.lang.String str59 = strJ2;
                                    java.util.Iterator it10 = it9;
                                    int iMax5 = java.lang.Math.max(0, l2(java.lang.String.valueOf(map12.getOrDefault(str58, "0")), 0));
                                    java.lang.Object obj11 = obj9;
                                    int iMax6 = java.lang.Math.max(0, l2(java.lang.String.valueOf(map12.getOrDefault(obj11, "0")), 0));
                                    int i8 = 1;
                                    while (i8 <= iMax4) {
                                        java.lang.Object obj12 = obj11;
                                        java.lang.Object obj13 = map13.get(java.lang.String.valueOf(i8));
                                        java.util.Map map14 = map13;
                                        if (obj13 instanceof java.util.List) {
                                            java.util.List list3 = (java.util.List) obj13;
                                            java.lang.Object obj14 = list3.isEmpty() ? null : list3.get(0);
                                            obj = list3.size() > 1 ? list3.get(1) : null;
                                            obj13 = obj14;
                                        } else {
                                            obj = null;
                                        }
                                        G(obj13, i8 < iMax4 ? 10 : iMax5, linkedHashMap3);
                                        if (i8 <= iMax6) {
                                            G(obj, Integer.MAX_VALUE, linkedHashMap3);
                                        }
                                        i8++;
                                        obj11 = obj12;
                                        map13 = map14;
                                        str7 = str7;
                                    }
                                    obj9 = obj11;
                                    str10 = str28;
                                    linkedHashMap2 = linkedHashMap4;
                                    it9 = it10;
                                    strJ2 = str59;
                                    str57 = str58;
                                }
                            }
                        } else {
                            str28 = str10;
                        }
                        str10 = str28;
                    }
                }
                if (!linkedHashMap3.isEmpty()) {
                    java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
                    java.util.ArrayList arrayList2 = new java.util.ArrayList();
                    for (java.lang.String str60 : arrayList) {
                        java.lang.String str61 = (java.lang.String) linkedHashMap3.getOrDefault(str60, str60);
                        if (linkedHashSet.add(str61)) {
                            arrayList2.add(str61);
                        }
                    }
                    arrayList = arrayList2;
                }
                java.util.HashSet hashSet2 = new java.util.HashSet();
                java.util.HashSet hashSet3 = new java.util.HashSet();
                for (java.util.Map map15 : f0("TeamGeneral", map)) {
                    java.lang.String str62 = str11;
                    java.lang.String strJ3 = c.a.j(map15, "pk_id", "", str62);
                    if (!r1(strJ3)) {
                        hashSet3.add(strJ3);
                    }
                    java.lang.String str63 = str52;
                    java.lang.String strJ4 = c.a.j(map15, str63, "", str42);
                    if (!strJ4.isEmpty()) {
                        hashSet2.add(strJ4);
                    }
                    str11 = str62;
                    str52 = str63;
                }
                java.lang.String str64 = str11;
                java.lang.String str65 = str9;
                str13 = str52;
                java.util.Iterator it11 = f0(str65, map).iterator();
                while (it11.hasNext()) {
                    java.util.Map map16 = (java.util.Map) it11.next();
                    java.lang.String str66 = str8;
                    java.util.Iterator it12 = it11;
                    java.lang.String strValueOf3 = java.lang.String.valueOf(map16.getOrDefault(str66, ""));
                    if (!r1(strValueOf3) && hashSet3.contains(strValueOf3)) {
                        java.lang.String strJ5 = c.a.j(map16, str13, "", str42);
                        if (!strJ5.isEmpty()) {
                            hashSet2.add(strJ5);
                        }
                    }
                    str8 = str66;
                    it11 = it12;
                }
                java.lang.String str67 = str8;
                java.util.Iterator it13 = f0("BuddyGeneral", map).iterator();
                while (it13.hasNext()) {
                    java.lang.String strJ6 = c.a.j((java.util.Map) it13.next(), "pk_id", "", str64);
                    if (!r1(strJ6)) {
                        java.util.Map mapX2 = X(strJ6, map);
                        java.lang.String strJ7 = mapX2 == null ? "" : c.a.j(mapX2, str13, "", str42);
                        if (!strJ7.isEmpty()) {
                            hashSet2.add(strJ7);
                        }
                    }
                }
                java.util.HashSet hashSet4 = new java.util.HashSet();
                str14 = str6;
                java.util.Iterator it14 = f0(str14, map).iterator();
                while (it14.hasNext()) {
                    java.util.Map map17 = (java.util.Map) it14.next();
                    hashSet2 = hashSet2;
                    if (U(str, map17)) {
                        java.util.Iterator it15 = it14;
                        java.lang.String str68 = str65;
                        java.lang.String str69 = str67;
                        java.lang.String str70 = str50;
                        java.lang.String str71 = str4;
                        java.lang.String strK2 = c.a.k(map17, "eid", "", str70, str71);
                        if (!strK2.isEmpty()) {
                            hashSet4.add(strK2);
                        }
                        str50 = str70;
                        str4 = str71;
                        it14 = it15;
                        str67 = str69;
                        str65 = str68;
                    }
                }
                java.util.HashSet hashSet5 = hashSet2;
                str9 = str65;
                str8 = str67;
                java.lang.String str72 = str50;
                java.lang.String str73 = str4;
                str15 = str;
                java.util.HashSet hashSet6 = new java.util.HashSet();
                java.lang.String str74 = "Skill";
                for (java.util.Map map18 : f0(str74, map)) {
                    java.util.HashSet hashSet7 = hashSet4;
                    if (c.a.B(map18, str64, "", str15)) {
                        str24 = str64;
                        str25 = str74;
                        str26 = str46;
                        str27 = str48;
                        java.lang.String strK3 = c.a.k(map18, str27, "", str13, str26);
                        if (!strK3.isEmpty()) {
                            hashSet6.add(strK3);
                        }
                    } else {
                        str24 = str64;
                        str25 = str74;
                        str26 = str46;
                        str27 = str48;
                    }
                    str48 = str27;
                    str46 = str26;
                    str74 = str25;
                    hashSet4 = hashSet7;
                    str64 = str24;
                }
                java.util.HashSet hashSet8 = hashSet4;
                str11 = str64;
                str16 = str74;
                java.lang.String str75 = str46;
                java.lang.String str76 = str48;
                java.util.Iterator it16 = arrayList.iterator();
                while (it16.hasNext()) {
                    java.lang.String str77 = (java.lang.String) it16.next();
                    it16 = it16;
                    java.util.Map mapD0 = w1Var2.D0(str77);
                    if (mapD0 != null) {
                        java.util.HashSet hashSet9 = hashSet6;
                        java.lang.String str78 = str76;
                        int iS5 = s(l2(java.lang.String.valueOf(mapD0.getOrDefault("fate_addition_type", str2)), 0));
                        if (iS5 < 0) {
                            hashSet6 = hashSet9;
                            str76 = str78;
                        } else {
                            java.lang.Object obj15 = mapD0.get("fate_object");
                            java.lang.String str79 = str75;
                            if (obj15 instanceof java.util.List) {
                                java.util.ArrayList arrayList3 = new java.util.ArrayList();
                                java.util.Iterator it17 = ((java.util.List) obj15).iterator();
                                while (it17.hasNext()) {
                                    java.util.Iterator it18 = it17;
                                    java.lang.String str80 = str42;
                                    java.lang.String[] strArrSplit = java.lang.String.valueOf(it17.next()).split("，");
                                    int length = strArrSplit.length;
                                    java.lang.String str81 = str73;
                                    int i9 = 0;
                                    while (i9 < length) {
                                        java.lang.String[] strArr = strArrSplit;
                                        java.lang.String strTrim = strArrSplit[i9].trim();
                                        if (!strTrim.isEmpty()) {
                                            arrayList3.add(strTrim);
                                        }
                                        i9++;
                                        strArrSplit = strArr;
                                    }
                                    str42 = str80;
                                    it17 = it18;
                                    str73 = str81;
                                }
                                java.lang.String str82 = str42;
                                java.lang.String str83 = str73;
                                if (arrayList3.isEmpty()) {
                                    str23 = str72;
                                    str2 = str2;
                                    s1Var2 = s1Var2;
                                } else {
                                    int iF3 = c.a.f(mapD0, "fate_type", str2, 0);
                                    if (iF3 == 1) {
                                        hashSet = hashSet5;
                                    } else if (iF3 == 3) {
                                        hashSet = hashSet8;
                                    } else if (iF3 == 4) {
                                        hashSet = hashSet9;
                                    } else {
                                        str23 = str72;
                                        str2 = str2;
                                        s1Var2 = s1Var2;
                                    }
                                    java.util.Iterator it19 = arrayList3.iterator();
                                    int i10 = 0;
                                    while (it19.hasNext()) {
                                        java.util.Iterator it20 = it19;
                                        java.lang.String str84 = (java.lang.String) it19.next();
                                        java.lang.String str85 = str72;
                                        if ((("47101206".equals(str77) && "171012".equals(str84)) ? false : true) && hashSet.contains(str84)) {
                                            i10++;
                                        }
                                        str72 = str85;
                                        it19 = it20;
                                    }
                                    str23 = str72;
                                    int iF4 = c.a.f(mapD0, "fate_limit", str12, 1);
                                    try {
                                        d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapD0.getOrDefault("fate_effect", str2)));
                                    } catch (java.lang.Exception unused5) {
                                        d2 = 0.0d;
                                    }
                                    try {
                                        d3 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapD0.getOrDefault("fate_effect_step", str2)));
                                    } catch (java.lang.Exception unused6) {
                                        d3 = 0.0d;
                                    }
                                    double d17 = s1Var2.f1360j;
                                    if (iF4 == 2) {
                                        if (i10 == arrayList3.size()) {
                                            dArr2[iS5] = ((d2 + d17) / 100.0d) + dArr2[iS5];
                                        }
                                    } else if (i10 > 0) {
                                        dArr2[iS5] = ((((((double) (i10 - 1)) * d3) + d2) + d17) / 100.0d) + dArr2[iS5];
                                    }
                                }
                                w1Var2 = this;
                                s1Var2 = s1Var2;
                                str2 = str2;
                                hashSet6 = hashSet9;
                                str76 = str78;
                                str75 = str79;
                                str42 = str82;
                                str72 = str23;
                                str73 = str83;
                            } else {
                                hashSet6 = hashSet9;
                                str76 = str78;
                                str75 = str79;
                            }
                        }
                    }
                }
                str17 = str72;
                str18 = str76;
                str19 = str42;
                str20 = str75;
                str21 = str73;
                s1Var = s1Var2;
                str22 = str2;
            }
        }
        java.util.Iterator it21 = f0("Goddess", map).iterator();
        while (true) {
            if (!it21.hasNext()) {
                strK = "";
                break;
            }
            java.util.Map map19 = (java.util.Map) it21.next();
            java.lang.String strK4 = c.a.k(map19, "is_use", "", "fight", "is_fight");
            if (str12.equals(strK4) || "true".equalsIgnoreCase(strK4)) {
                strK = c.a.k(map19, str13, "", "goddess_id", "godness_id");
                break;
            }
        }
        if (strK.isEmpty()) {
            w1Var = this;
        } else {
            w1Var = this;
            java.util.Map mapX0 = w1Var.X0(strK);
            if (mapX0 != null) {
                java.lang.Object obj16 = mapX0.get("buff");
                if (obj16 instanceof java.util.List) {
                    for (java.lang.Object obj17 : (java.util.List) obj16) {
                        if (obj17 instanceof java.util.List) {
                            java.util.List list4 = (java.util.List) obj17;
                            if (list4.size() >= 2 && (iS = s(l2(java.lang.String.valueOf(list4.get(0)), 0))) >= 0) {
                                java.lang.String strTrim2 = java.lang.String.valueOf(list4.get(1)).replace("%", "").trim();
                                double d18 = dArr2[iS];
                                try {
                                    d4 = java.lang.Double.parseDouble(strTrim2);
                                } catch (java.lang.Exception unused7) {
                                    d4 = 0.0d;
                                }
                                dArr2[iS] = (d4 / 100.0d) + d18;
                            }
                        }
                    }
                }
            }
        }
        double[] dArr5 = {0.0d, 0.0d, 0.0d, 0.0d};
        java.util.Iterator it22 = f0(str14, map).iterator();
        while (it22.hasNext()) {
            java.util.Map map20 = (java.util.Map) it22.next();
            if (U(str15, map20)) {
                java.lang.String str86 = str17;
                java.util.Iterator it23 = it22;
                java.util.Map mapZ0 = w1Var.z0(java.lang.String.valueOf(map20.getOrDefault(str21, map20.getOrDefault(str86, ""))));
                if (mapZ0 == null) {
                    str17 = str86;
                    it22 = it23;
                } else {
                    str17 = str86;
                    java.lang.String strJ8 = c.a.j(mapZ0, "equipment_pos", str22, "equipment_type");
                    byte b2 = -1;
                    if ("3".equals(strJ8)) {
                        b2 = 0;
                    } else if (str12.equals(strJ8)) {
                        b2 = 1;
                    } else if ("2".equals(strJ8)) {
                        b2 = 2;
                    } else if ("4".equals(strJ8)) {
                        b2 = 3;
                    }
                    if (b2 >= 0) {
                        double d19 = dArr5[b2];
                        try {
                            d10 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapZ0.getOrDefault("effect_value", str22)));
                        } catch (java.lang.Exception unused8) {
                            d10 = 0.0d;
                        }
                        try {
                            d11 = java.lang.Double.parseDouble(c.a.j(mapZ0, "effect_value_step", str22, "effect_step"));
                        } catch (java.lang.Exception unused9) {
                            d11 = 0.0d;
                        }
                        str31 = str39;
                        int iG4 = c.a.g(map20, str31, str12, "equipment_level", 1);
                        if (iG4 <= 0) {
                            iG4 = 1;
                        }
                        double d20 = (((double) (iG4 - 1)) * d11) + d10;
                        java.lang.String strValueOf4 = java.lang.String.valueOf(map20.getOrDefault("refine_bonus_type", mapZ0.getOrDefault("refine_bonus_type", "")));
                        if (strValueOf4.isEmpty() || "null".equals(strValueOf4)) {
                            d12 = 0.0d;
                        } else {
                            int iMax7 = java.lang.Math.max(1, l2(java.lang.String.valueOf(map20.getOrDefault("refine_level", map20.getOrDefault("refine_lv", str12))), 1));
                            if (w1Var.s == null) {
                                w1Var.s = new java.util.HashMap();
                                java.lang.String strA = com.sgscq.vpn.o0.a(w1Var.f1493a, "refine_conf.json");
                                if (strA != null && !strA.isEmpty()) {
                                    try {
                                        w1Var.s.putAll(com.sgscq.vpn.p5.u1(strA));
                                    } catch (java.lang.Exception unused10) {
                                    }
                                }
                            }
                            java.util.HashMap map21 = w1Var.s;
                            if (map21 == null || map21.isEmpty()) {
                                map2 = null;
                            } else {
                                java.lang.Object obj18 = w1Var.s.get(strValueOf4);
                                if (obj18 instanceof java.util.List) {
                                    java.util.List list5 = (java.util.List) obj18;
                                    int iMax8 = java.lang.Math.max(0, iMax7 - 1);
                                    if (iMax8 < list5.size() && (list5.get(iMax8) instanceof java.util.Map)) {
                                        map2 = (java.util.Map) list5.get(iMax8);
                                    } else if (obj18 instanceof java.util.Map) {
                                        map3 = (java.util.Map) obj18;
                                        obj3 = map3.get(java.lang.String.valueOf(java.lang.Math.max(0, iMax7 - 1)));
                                        if (obj3 == null) {
                                            obj3 = map3.get(java.lang.String.valueOf(iMax7));
                                        }
                                        if (obj3 instanceof java.util.Map) {
                                            map2 = (java.util.Map) obj3;
                                        } else {
                                            map2 = null;
                                        }
                                    } else {
                                        map2 = null;
                                    }
                                } else if (obj18 instanceof java.util.Map) {
                                    map2 = null;
                                } else {
                                    map3 = (java.util.Map) obj18;
                                    obj3 = map3.get(java.lang.String.valueOf(java.lang.Math.max(0, iMax7 - 1)));
                                    if (obj3 == null) {
                                        obj3 = map3.get(java.lang.String.valueOf(iMax7));
                                    }
                                    if (obj3 instanceof java.util.Map) {
                                        map2 = (java.util.Map) obj3;
                                    } else {
                                        map2 = null;
                                    }
                                }
                            }
                            if (map2 == null) {
                                d12 = 0.0d;
                            } else {
                                try {
                                    d12 = java.lang.Double.parseDouble(java.lang.String.valueOf(map2.getOrDefault("attr_bonus", str22)));
                                } catch (java.lang.Exception unused11) {
                                    d12 = 0.0d;
                                }
                            }
                        }
                        dArr5[b2] = java.lang.Math.floor(((d12 + 100.0d) * d20) / 100.0d) + d19;
                    } else {
                        str31 = str39;
                    }
                    str15 = str;
                    it22 = it23;
                    s1Var = s1Var;
                    str39 = str31;
                }
            }
        }
        com.sgscq.vpn.s1 s1Var3 = s1Var;
        for (java.util.Map map22 : f0(str14, map)) {
            if (U(str, map22)) {
                java.lang.Object obj19 = map22.get("bore_list");
                if (obj19 instanceof java.util.List) {
                    for (java.lang.Object obj20 : (java.util.List) obj19) {
                        if (obj20 instanceof java.util.Map) {
                            java.lang.String strValueOf5 = java.lang.String.valueOf(((java.util.Map) obj20).getOrDefault("gem_id", ""));
                            if (!strValueOf5.isEmpty() && !str22.equals(strValueOf5) && !"null".equalsIgnoreCase(strValueOf5) && (mapI0 = w1Var.I0(strValueOf5)) != null && (iS2 = s(l2(java.lang.String.valueOf(mapI0.getOrDefault("type", str22)), 0))) >= 0) {
                                double d21 = dArr5[iS2];
                                try {
                                    d9 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapI0.getOrDefault("effect_value", str22)));
                                } catch (java.lang.Exception unused12) {
                                    d9 = 0.0d;
                                }
                                dArr5[iS2] = d21 + d9;
                            }
                        }
                    }
                }
            }
        }
        for (java.util.Map map23 : f0("MeridianTop", map)) {
            java.lang.String str87 = str11;
            java.lang.String str88 = str19;
            if (str.equals(c.a.k(map23, str88, "", "user_general_id", str87))) {
                double d22 = dArr5[1];
                try {
                    d5 = java.lang.Double.parseDouble(java.lang.String.valueOf(map23.getOrDefault("gong", str22)));
                } catch (java.lang.Exception unused13) {
                    d5 = 0.0d;
                }
                dArr5[1] = d22 + d5;
                double d23 = dArr5[2];
                try {
                    d6 = java.lang.Double.parseDouble(java.lang.String.valueOf(map23.getOrDefault("fang", str22)));
                } catch (java.lang.Exception unused14) {
                    d6 = 0.0d;
                }
                dArr5[2] = d23 + d6;
                double d24 = dArr5[0];
                try {
                    d7 = java.lang.Double.parseDouble(java.lang.String.valueOf(map23.getOrDefault("xue", str22)));
                } catch (java.lang.Exception unused15) {
                    d7 = 0.0d;
                }
                dArr5[0] = d24 + d7;
                double d25 = dArr5[3];
                try {
                    d8 = java.lang.Double.parseDouble(java.lang.String.valueOf(map23.getOrDefault("zhi", str22)));
                } catch (java.lang.Exception unused16) {
                    d8 = 0.0d;
                }
                dArr5[3] = d25 + d8;
            }
            str19 = str88;
            str11 = str87;
        }
        java.lang.String str89 = str11;
        java.lang.String str90 = str19;
        w1Var.i(map, str, dArr4, dArr5);
        if (v1(str, map)) {
            w1Var.f(map, dArr5);
        }
        double d26 = ((dArr2[0] + 1.0d) * dArr4[0]) + dArr5[0] + s1Var3.f1355e + s1Var3.f1351a;
        double d27 = ((dArr2[1] + 1.0d) * dArr4[1]) + dArr5[1] + s1Var3.f1356f + s1Var3.f1352b;
        double d28 = ((dArr2[2] + 1.0d) * dArr4[2]) + dArr5[2] + s1Var3.f1357g + s1Var3.f1353c;
        double d29 = ((dArr2[3] + 1.0d) * dArr4[3]) + dArr5[3] + s1Var3.f1358h + s1Var3.f1354d;
        double[] dArr6 = {0.0d, 0.0d, 0.0d, 0.0d};
        java.lang.String str91 = str9;
        java.util.Iterator it24 = f0(str91, map).iterator();
        while (it24.hasNext()) {
            java.util.Map map24 = (java.util.Map) it24.next();
            str8 = str8;
            if (c.a.B(map24, str8, "", str)) {
                com.sgscq.vpn.s1 s1VarY3 = w1Var.y(java.lang.String.valueOf(map24.getOrDefault(str90, "")), map);
                dArr6[0] = (s1VarY3.f1351a * 0.5d) + s1VarY3.f1355e + dArr6[0];
                dArr6[1] = (s1VarY3.f1352b * 0.5d) + s1VarY3.f1356f + dArr6[1];
                dArr6[2] = (s1VarY3.f1353c * 0.5d) + s1VarY3.f1357g + dArr6[2];
                dArr6[3] = (s1VarY3.f1354d * 0.5d) + s1VarY3.f1358h + dArr6[3];
                w1Var = this;
                it24 = it24;
                str90 = str90;
                str91 = str91;
            }
        }
        java.lang.String str92 = str91;
        java.lang.String str93 = str8;
        double d30 = d26 + dArr6[0];
        double d31 = d27 + dArr6[1];
        double d32 = d28 + dArr6[2];
        double d33 = d29 + dArr6[3];
        java.util.Iterator it25 = f0(str16, map).iterator();
        double dZ2 = 0.0d;
        while (it25.hasNext()) {
            java.util.Map map25 = (java.util.Map) it25.next();
            if (c.a.B(map25, str89, "", str)) {
                dZ2 += Z(map25, k1(c.a.k(map25, str18, "", str13, str20)), "fighting", "fight_point", "fighting_point");
                it25 = it25;
                str13 = str13;
            }
        }
        java.util.Iterator it26 = f0(str92, map).iterator();
        while (true) {
            if (!it26.hasNext()) {
                strY2 = "";
                break;
            }
            java.util.Map map26 = (java.util.Map) it26.next();
            if (c.a.B(map26, str93, "", str)) {
                strY2 = y2(map26);
                if (!r1(strY2)) {
                    break;
                }
            }
        }
        double dZ3 = dZ2 + (r1(strY2) ? 0.0d : Z(null, e1(strY2), "fighting", "fight_point", "fighting_point"));
        for (java.util.Map map27 : f0(str92, map)) {
            if (c.a.B(map27, str93, "", str)) {
                java.lang.String strY = Y(map, map27);
                if (!r1(strY)) {
                    dZ += Z(null, k1(strY), "fighting", "fight_point", "fighting_point");
                }
            }
        }
        return new com.sgscq.vpn.t1(dArr4[0], dArr4[1], dArr4[2], dArr4[3], d26, d27, d28, d29, d30, d31, d32, d33, x(d30, d31, d32, d33) + dZ3 + dZ);
    }

    public final java.util.Map z0(java.lang.String str) {
        if (this.f1503k == null) {
            L1();
        }
        return (java.util.Map) this.f1503k.get(str);
    }

    public final java.lang.String z2(java.util.Map map) {
        java.util.Map mapJ0 = J0(java.lang.String.valueOf(map.getOrDefault("general_id", map.getOrDefault("id", ""))));
        return mapJ0 == null ? "" : java.lang.String.valueOf(mapJ0.getOrDefault("lieutenant_skill_id", ""));
    }
}
