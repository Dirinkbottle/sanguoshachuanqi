package com.sgscq.vpn.handler;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile java.lang.String f1012e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile java.util.Map f1013f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile java.util.Map f1014g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.HashSet f1015h = new java.util.HashSet(java.util.Arrays.asList("2", "3", "4"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.sgscq.vpn.handler.k0 f1016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.sgscq.vpn.handler.x f1017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Random f1018c = new java.util.Random();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.sgscq.vpn.handler.u f1019d;

    public w(com.sgscq.vpn.handler.k0 k0Var) {
        this.f1016a = k0Var;
        this.f1017b = new com.sgscq.vpn.handler.x(k0Var);
    }

    public static java.lang.String A(java.lang.String str) {
        if (str == null || str.length() < 3) {
            return str;
        }
        return (!str.startsWith("105") || str.length() < 5) ? str.substring(0, 3) : str.substring(0, 5);
    }

    public static java.lang.String A0(java.lang.String str) {
        if (str == null) {
            return "";
        }
        if (!str.startsWith("105") || str.length() < 8) {
            return str.length() >= 6 ? str.substring(0, 6) : str;
        }
        return str.substring(0, 8);
    }

    public static java.lang.Number B(long j2) {
        return j2 <= 2147483647L ? java.lang.Integer.valueOf((int) java.lang.Math.max(0L, j2)) : java.lang.Long.valueOf(j2);
    }

    public static java.lang.String B0(java.lang.String str) {
        if (str == null) {
            return "";
        }
        if (str.startsWith("105")) {
            return str.length() >= 10 ? str.substring(0, 10) : str;
        }
        return A0(str);
    }

    public static java.lang.String C0(java.lang.String str) {
        if (str == null) {
            return "";
        }
        java.lang.String strTrim = str.trim();
        if (!strTrim.matches("105000\\d{2}")) {
            return strTrim;
        }
        return "105" + strTrim.substring(6);
    }

    public static java.lang.String[] D(com.sgscq.vpn.handler.j jVar) {
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        java.util.Collections.addAll(linkedHashSet, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas");
        linkedHashSet.add("GeneralSoul");
        linkedHashSet.add("SkillPiece");
        linkedHashSet.addAll((java.util.Set) jVar.f884d);
        return (java.lang.String[]) linkedHashSet.toArray(new java.lang.String[0]);
    }

    public static java.util.ArrayList D0(java.util.List list) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (list == null) {
            return arrayList;
        }
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            java.lang.String strB0 = B0((java.lang.String) it.next());
            if (!strB0.isEmpty() && !arrayList.contains(strB0)) {
                arrayList.add(strB0);
            }
        }
        return arrayList;
    }

    public static java.lang.String E(com.sgscq.vpn.w1 w1Var, java.lang.Object obj) {
        java.lang.String strValueOf = obj == null ? "" : java.lang.String.valueOf(obj);
        java.lang.String strG0 = g0(w1Var, strValueOf);
        return strG0.isEmpty() ? strValueOf : strG0;
    }

    public static double E0(java.lang.Object obj) {
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).doubleValue();
        }
        if (obj == null) {
            return 0.0d;
        }
        try {
            return java.lang.Double.parseDouble(obj.toString());
        } catch (java.lang.NumberFormatException unused) {
            return 0.0d;
        }
    }

    public static int F0(java.lang.String str) {
        if (str != null && !str.isEmpty() && !"null".equalsIgnoreCase(str)) {
            try {
                if (str.matches("105\\d{2}")) {
                    return java.lang.Integer.parseInt(str.substring(3));
                }
            } catch (java.lang.NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static int G(java.lang.String str) {
        if (str != null && str.length() >= 6) {
            try {
                return (!str.startsWith("105") || str.length() < 8) ? java.lang.Integer.parseInt(str.substring(3, 6)) : java.lang.Integer.parseInt(str.substring(5, 8));
            } catch (java.lang.Exception unused) {
            }
        }
        return 0;
    }

    public static int G0(java.lang.Object obj, int i2) {
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).intValue();
        }
        if (obj == null) {
            return i2;
        }
        try {
            return (int) java.lang.Double.parseDouble(obj.toString());
        } catch (java.lang.NumberFormatException unused) {
            return i2;
        }
    }

    public static java.util.List H(java.util.Map map) {
        java.lang.Object obj = map.get("SkillPiece");
        if (obj instanceof java.util.Map) {
            java.lang.Object obj2 = ((java.util.Map) obj).get("del");
            if (obj2 instanceof java.util.List) {
                return (java.util.List) obj2;
            }
        }
        return new java.util.ArrayList();
    }

    public static long H0(java.lang.Object obj, long j2) {
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).longValue();
        }
        if (obj == null) {
            return j2;
        }
        try {
            try {
                return java.lang.Long.parseLong(obj.toString());
            } catch (java.lang.NumberFormatException unused) {
                return (long) java.lang.Double.parseDouble(obj.toString());
            }
        } catch (java.lang.NumberFormatException unused2) {
            return j2;
        }
    }

    public static int I0(java.lang.String str) {
        if (str != null && !str.isEmpty() && !"null".equalsIgnoreCase(str)) {
            try {
                if (str.matches("5\\d{2}")) {
                    return java.lang.Integer.parseInt(str) - 500;
                }
                if (str.matches("500\\d{3}")) {
                    return java.lang.Integer.parseInt(str.substring(3));
                }
            } catch (java.lang.NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static java.lang.String J(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.lang.String strTrim = str == null ? "" : str.trim();
        if (strTrim.isEmpty()) {
            return "关卡";
        }
        if (strTrim.length() == 6 || (strTrim.length() == 8 && strTrim.startsWith("105"))) {
            strTrim = strTrim.concat("01");
        }
        java.lang.String strG0 = g0(w1Var, strTrim);
        return strG0.isEmpty() ? strTrim : strG0;
    }

    public static java.util.ArrayList J0() {
        return com.sgscq.vpn.p5.v0(2, 4, 6, 8, 10, 12, 15, 18, 20, 25);
    }

    public static int K(java.lang.String str) {
        java.lang.String strA0 = A0(T0(str));
        if (!k0(strA0) || strA0.length() < 5) {
            return 1;
        }
        try {
            int i2 = java.lang.Integer.parseInt(strA0.substring(3, 5));
            if (i2 > 0) {
                return i2;
            }
            return 1;
        } catch (java.lang.Exception unused) {
            return 1;
        }
    }

    public static int K0(java.lang.Object obj) {
        if (obj instanceof java.lang.Number) {
            return ((java.lang.Number) obj).intValue();
        }
        if (obj instanceof java.lang.String) {
            try {
                return java.lang.Integer.parseInt((java.lang.String) obj);
            } catch (java.lang.Exception unused) {
            }
        }
        return 0;
    }

    public static java.util.List L(java.lang.String str, java.util.ArrayList arrayList) {
        int i2;
        if (arrayList.isEmpty()) {
            return arrayList;
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        java.util.Iterator it = arrayList.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            java.lang.String str2 = (java.lang.String) it.next();
            if (str2 != null && str2.startsWith("105")) {
                try {
                    java.util.HashMap mapX0 = com.sgscq.vpn.w1.a1(null).x0(str2);
                    if (mapX0 != null && java.lang.Boolean.TRUE.equals(mapX0.get("hidden"))) {
                        z = true;
                    }
                } catch (java.lang.Exception unused) {
                }
            }
            if (!z) {
                arrayList2.add(str2);
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList = arrayList2;
        }
        int iF0 = F0(str);
        if (iF0 <= 0) {
            i2 = 0;
        } else if (iF0 >= 24) {
            i2 = 7;
        } else if (iF0 >= 15) {
            i2 = 6;
        } else {
            i2 = iF0 >= 5 ? 5 : 4;
        }
        return (i2 <= 0 || arrayList.size() <= i2) ? arrayList : new java.util.ArrayList(arrayList.subList(0, i2));
    }

    public static void L0(java.lang.String str, java.util.Map map) {
        if (str == null || str.trim().isEmpty()) {
            str = "玩家";
        }
        map.put("userName", str);
        map.put("name", str);
        map.put("nickname", str);
        map.put("player_name", str);
    }

    public static java.lang.String M(java.lang.String str) {
        return (str.length() == 7 && str.startsWith("9")) ? str.substring(1) : str;
    }

    public static int M0(com.sgscq.vpn.w1 w1Var, java.lang.String str, java.util.Map map) {
        if (map != null) {
            java.lang.String[] strArr = {"general_hp_attr", "attr_hp", "general_hp", "hpMax", "hpCur", "base_hp"};
            for (int i2 = 0; i2 < 6; i2++) {
                int iG0 = G0(map.get(strArr[i2]), 0);
                if (iG0 > 0) {
                    return iG0;
                }
            }
        }
        double[] dArrK0 = w1Var.K0(str);
        if (dArrK0 != null && dArrK0.length > 0) {
            double d2 = dArrK0[0];
            if (d2 > 0.0d) {
                return (int) d2;
            }
        }
        return 1000;
    }

    public static java.lang.String N(java.lang.String str) {
        if (str == null) {
            return "";
        }
        java.lang.String strTrim = str.trim();
        if (!strTrim.startsWith("105") || strTrim.length() < 5) {
            return strTrim.length() >= 3 ? strTrim.substring(0, 3) : strTrim;
        }
        return strTrim.substring(0, 5);
    }

    public static java.util.Map O(java.util.Map map) {
        java.lang.String strValueOf;
        java.util.List<java.util.Map> listF0 = com.sgscq.vpn.w1.f0("General", map);
        if (listF0.isEmpty()) {
            return null;
        }
        java.util.Iterator it = com.sgscq.vpn.w1.f0("TeamGeneral", map).iterator();
        while (true) {
            if (!it.hasNext()) {
                strValueOf = null;
                break;
            }
            java.util.Map map2 = (java.util.Map) it.next();
            if (G0(map2.get("general_position"), G0(map2.get("position"), 0)) == 1) {
                strValueOf = java.lang.String.valueOf(map2.getOrDefault("general_pk_id", map2.get("pk_id")));
                break;
            }
        }
        if (strValueOf != null) {
            for (java.util.Map map3 : listF0) {
                if (!java.lang.Boolean.TRUE.equals(map3.get("story_guest")) && strValueOf.equals(java.lang.String.valueOf(map3.getOrDefault("pk_id", map3.get("general_pk_id"))))) {
                    return map3;
                }
            }
        }
        for (java.util.Map map4 : listF0) {
            if (!java.lang.Boolean.TRUE.equals(map4.get("story_guest"))) {
                return map4;
            }
        }
        return null;
    }

    public static java.lang.String O0(java.lang.String str) {
        try {
            int i2 = 0;
            for (java.io.File absoluteFile = new java.io.File(java.lang.System.getProperty("user.dir", ".")).getAbsoluteFile(); absoluteFile != null && i2 < 5; absoluteFile = absoluteFile.getParentFile()) {
                java.io.File file = new java.io.File(absoluteFile, str);
                if (file.isFile()) {
                    return com.sgscq.vpn.p5.W0(file);
                }
                i2++;
            }
            return "";
        } catch (java.lang.Exception unused) {
            return "";
        }
    }

    public static java.util.ArrayList P(java.util.Map map) {
        java.util.Map map2;
        java.util.List<java.util.Map> listF0 = com.sgscq.vpn.w1.f0("General", map);
        java.util.List listF1 = com.sgscq.vpn.w1.f0("TeamGeneral", map);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (!listF0.isEmpty() && !listF1.isEmpty()) {
            java.util.HashMap map3 = new java.util.HashMap();
            for (java.util.Map map4 : listF0) {
                if (!java.lang.Boolean.TRUE.equals(map4.get("story_guest"))) {
                    java.lang.String strValueOf = java.lang.String.valueOf(map4.getOrDefault("pk_id", map4.get("general_pk_id")));
                    if (!strValueOf.isEmpty() && !"null".equals(strValueOf)) {
                        map3.put(strValueOf, map4);
                    }
                }
            }
            java.util.ArrayList<java.util.Map> arrayList2 = new java.util.ArrayList(listF1);
            arrayList2.sort(java.util.Comparator.comparingInt(new com.sgscq.vpn.n1(4)));
            java.util.HashSet hashSet = new java.util.HashSet();
            for (java.util.Map map5 : arrayList2) {
                if (G0(map5.get("general_position"), G0(map5.get("position"), 0)) > 0 && !java.lang.Boolean.TRUE.equals(map5.get("story_guest"))) {
                    java.lang.String strValueOf2 = java.lang.String.valueOf(map5.getOrDefault("general_pk_id", map5.get("pk_id")));
                    if (!hashSet.contains(strValueOf2) && (map2 = (java.util.Map) map3.get(strValueOf2)) != null) {
                        arrayList.add(map2);
                        hashSet.add(strValueOf2);
                    }
                }
            }
        }
        return arrayList;
    }

    public static void P0(int i2, java.lang.String str, java.util.Map map, boolean z) {
        if (!z || i2 <= 0) {
            return;
        }
        com.sgscq.vpn.handler.p.d(i2, java.lang.Math.max(1, G0(map.get("user_level"), G0(map.get("level"), 1))), com.sgscq.vpn.handler.x.o(str) ? "112" : "108", com.sgscq.vpn.c7.b(), map);
    }

    public static java.util.Map Q(java.lang.String str, java.util.List list) {
        if (str != null && !str.isEmpty()) {
            java.util.Iterator it = list.iterator();
            while (it.hasNext()) {
                java.util.Map map = (java.util.Map) it.next();
                if (c.a.B(map, "pk_id", "", str) || c.a.B(map, "id", "", str) || c.a.B(map, "skill_id", "", str) || c.a.B(map, "item_id", "", str)) {
                    return map;
                }
            }
        }
        return null;
    }

    public static java.util.Map R(java.lang.String str, java.util.List list) {
        if (str.isEmpty()) {
            return null;
        }
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            java.util.Map map = (java.util.Map) it.next();
            if (c.a.B(map, "pk_id", "", str) || c.a.B(map, "general_pk_id", "", str)) {
                return map;
            }
        }
        return null;
    }

    public static boolean R0(java.util.Map map) {
        if (map == null) {
            return false;
        }
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(null);
        return S0(map, w1VarA1, "user_elite_map_step", "user_elite_position_step", true) | false | S0(map, w1VarA1, "user_map_step", "user_position_step", false);
    }

    public static java.io.File S() {
        java.io.File absoluteFile = new java.io.File(java.lang.System.getProperty("user.dir", ".")).getAbsoluteFile();
        for (int i2 = 0; i2 < 6 && absoluteFile != null; i2++) {
            java.io.File file = new java.io.File(absoluteFile, "docs/game_data_json/gift_box_contents.json");
            if (file.isFile()) {
                return file;
            }
            absoluteFile = absoluteFile.getParentFile();
        }
        return new java.io.File("docs/game_data_json/gift_box_contents.json");
    }

    public static boolean S0(java.util.Map map, com.sgscq.vpn.w1 w1Var, java.lang.String str, java.lang.String str2, boolean z) {
        java.util.List listL;
        boolean zEquals;
        java.lang.String strA0;
        java.lang.String strA1;
        if (w1Var == null) {
            return false;
        }
        java.lang.String strTrim = java.lang.String.valueOf(map.getOrDefault(str2, "")).trim();
        if (strTrim.length() < 6) {
            return false;
        }
        java.lang.String strSubstring = (!z || strTrim.length() < 5) ? strTrim.substring(0, 3) : strTrim.substring(0, 5);
        java.util.ArrayList arrayListG0 = z ? w1Var.g0() : w1Var.j0();
        if (!arrayListG0.isEmpty() && ((java.lang.String) arrayListG0.get(arrayListG0.size() - 1)).equals(strSubstring)) {
            java.util.ArrayList arrayListD0 = D0(w1Var.m0(strSubstring, strSubstring));
            if (z) {
                listL = arrayListD0;
                listL = L(strSubstring, arrayListD0);
            }
            listL = arrayListD0;
            if (!listL.isEmpty()) {
                java.lang.String str3 = (java.lang.String) listL.get(listL.size() - 1);
                if (str3 == null || str3.isEmpty() || strTrim.isEmpty()) {
                    zEquals = false;
                } else {
                    if (z) {
                        strA0 = T0(str3);
                        strA1 = T0(strTrim);
                    } else {
                        strA0 = A0(str3);
                        strA1 = A0(strTrim);
                    }
                    zEquals = strA0.equals(strA1);
                }
                if (!zEquals || !e0(str3, map)) {
                    return false;
                }
                java.lang.String strY0 = z ? y0(str3) : z0(str3);
                if (strY0 != null && !strY0.isEmpty() && !strY0.equals(strTrim)) {
                    map.put(str2, strY0);
                    java.lang.StringBuilder sb = new java.lang.StringBuilder("[Dungeon] repair stuck final chapter progress map=");
                    sb.append(str);
                    c.a.y(sb, " chapter=", strSubstring, " ", str2);
                    sb.append(" ");
                    sb.append(strTrim);
                    sb.append(" -> ");
                    sb.append(strY0);
                    com.sgscq.vpn.z2.e("SGSCQ_SRV", sb.toString());
                    return true;
                }
            }
        }
        return false;
    }

    public static java.lang.String T(java.lang.Object... objArr) {
        for (java.lang.Object obj : objArr) {
            if (obj != null) {
                java.lang.String strTrim = java.lang.String.valueOf(obj).trim();
                if (!strTrim.isEmpty() && !"null".equalsIgnoreCase(strTrim)) {
                    return strTrim;
                }
            }
        }
        return "";
    }

    public static java.lang.String T0(java.lang.String str) {
        if (str == null) {
            return "";
        }
        java.lang.String strTrim = str.trim();
        if (!strTrim.matches("105\\d{5}")) {
            return strTrim;
        }
        return strTrim.substring(0, 5) + strTrim.substring(5, 8) + "01";
    }

    public static java.lang.String U(java.util.Map map) {
        return (java.lang.String) map.getOrDefault("dungeon_id", (java.lang.String) map.getOrDefault("dungeonId", (java.lang.String) map.getOrDefault("mapId", "1")));
    }

    public static java.util.Map U0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        if (str != null && !str.isEmpty()) {
            java.util.Map mapC1 = w1Var == null ? null : w1Var.c1(str);
            if (mapC1 != null) {
                return mapC1;
            }
            try {
                java.lang.String strO0 = O0("docs/game_data_json/items.json");
                if (strO0.isEmpty()) {
                    return null;
                }
                java.lang.Object objD = new a.o().d(strO0, java.lang.Object.class);
                if (objD instanceof java.util.Map) {
                    java.lang.Object obj = ((java.util.Map) objD).get(str);
                    if (obj instanceof java.util.Map) {
                        return (java.util.Map) obj;
                    }
                    return null;
                }
                if (objD instanceof java.util.List) {
                    for (java.lang.Object obj2 : (java.util.List) objD) {
                        if ((obj2 instanceof java.util.Map) && str.equals(java.lang.String.valueOf(((java.util.Map) obj2).get("id")))) {
                            return (java.util.Map) obj2;
                        }
                    }
                }
            } catch (java.lang.Exception unused) {
            }
        }
        return null;
    }

    public static void W(java.util.Map map, com.sgscq.vpn.w1 w1Var, java.lang.String str, int i2, int i3, java.util.ArrayList arrayList) {
        int iG0;
        int iMax = java.lang.Math.max(1, i2);
        for (int i4 = 0; i4 < iMax; i4++) {
            if (f0(str, map)) {
                com.sgscq.vpn.w1.k(18, str, map);
                arrayList.add(v(str, 18));
            } else {
                java.util.Map mapH = w1Var.h(str, map);
                if (mapH == null) {
                    com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] skip non-surrenderable general reward general_id=".concat(str));
                } else {
                    if (i3 > 1 && (iG0 = G0(mapH.get("general_level"), G0(mapH.get("level"), 1))) < i3) {
                        w1Var.g(iG0, i3, mapH);
                        mapH.put("general_level", java.lang.Integer.valueOf(i3));
                        mapH.put("level", java.lang.Integer.valueOf(i3));
                    }
                    java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
                    java.lang.String strValueOf = java.lang.String.valueOf(mapH.getOrDefault("pk_id", ""));
                    linkedHashMap.put("pk_id", strValueOf);
                    linkedHashMap.put("general_pk_id", strValueOf);
                    linkedHashMap.put("id", str);
                    linkedHashMap.put("general_id", str);
                    linkedHashMap.put("item_id", str);
                    linkedHashMap.put("num", 1);
                    linkedHashMap.put("item_num", 1);
                    linkedHashMap.put("item_type", 31);
                    linkedHashMap.put("type", 1);
                    linkedHashMap.put("level", java.lang.Integer.valueOf(G0(mapH.get("level"), G0(mapH.get("general_level"), 1))));
                    linkedHashMap.put("is_new", java.lang.Boolean.TRUE);
                    arrayList.add(linkedHashMap);
                    com.sgscq.vpn.w1.b2("general_id", str, null, map);
                }
            }
        }
    }

    public static java.util.Map X0(java.lang.String str, java.lang.String str2) {
        if (str.isEmpty() || str2 == null || str2.trim().isEmpty()) {
            return null;
        }
        java.util.Map map = (java.util.Map) new a.o().e(str2, new com.google.gson.reflect.TypeToken<java.util.Map<java.lang.String, java.lang.Object>>() { // from class: com.sgscq.vpn.handler.DungeonHandler$2
        }.getType());
        java.lang.Object obj = map == null ? null : map.get(str);
        if (obj instanceof java.util.Map) {
            return (java.util.Map) obj;
        }
        return null;
    }

    public static int Y0(int i2, java.util.Map map) {
        int i3;
        try {
            i3 = java.lang.Integer.parseInt((java.lang.String) map.getOrDefault("fight_num", (java.lang.String) map.getOrDefault("killCount", java.lang.String.valueOf(i2))));
        } catch (java.lang.NumberFormatException unused) {
            i3 = 1;
        }
        int i4 = i3 >= 1 ? i3 : 1;
        if (i4 > 99) {
            return 99;
        }
        return i4;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0055 A[EDGE_INSN: B:25:0x0055->B:26:0x0057 BREAK  A[LOOP:2: B:13:0x002e->B:17:0x003d]] */
    /* JADX WARN: Code duplicated, block: B:41:0x0093 A[EDGE_INSN: B:41:0x0093->B:42:0x0095 BREAK  A[LOOP:1: B:29:0x006b->B:33:0x007a]] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d1 A[EDGE_INSN: B:57:0x00d1->B:58:0x00d3 BREAK  A[LOOP:0: B:45:0x00a9->B:49:0x00b8]] */
    public static com.sgscq.vpn.handler.t Z0(com.sgscq.vpn.w1 w1Var) {
        int iMax;
        int iMax2;
        int iMax3;
        java.util.Map mapJ0 = w1Var == null ? null : w1Var.J0("142007");
        int iM0 = mapJ0 == null ? 283 : M0(w1Var, "142007", mapJ0);
        if (mapJ0 == null) {
            iMax = 100;
        } else {
            java.lang.String[] strArr = {"general_attack_attr", "attr_attack", "general_attack", "attack", "base_attack"};
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    double[] dArrK0 = w1Var.K0("142007");
                    if (dArrK0 != null && dArrK0.length > 1) {
                        double d2 = dArrK0[1];
                        if (d2 <= 0.0d) {
                            iMax = 500;
                            break;
                        }
                        iMax = java.lang.Math.max(1, (int) d2);
                        break;
                    }
                    iMax = 500;
                    break;
                }
                iMax = G0(mapJ0.get(strArr[i2]), 0);
                if (iMax > 0) {
                    break;
                }
                i2++;
            }
        }
        if (mapJ0 == null) {
            iMax2 = 125;
        } else {
            java.lang.String[] strArr2 = {"general_defense_attr", "attr_defense", "general_defense", "defense", "base_defense"};
            int i3 = 0;
            while (true) {
                if (i3 >= 5) {
                    double[] dArrK1 = w1Var.K0("142007");
                    if (dArrK1 != null && dArrK1.length > 2) {
                        double d3 = dArrK1[2];
                        if (d3 <= 0.0d) {
                            iMax2 = 300;
                            break;
                        }
                        iMax2 = java.lang.Math.max(1, (int) d3);
                        break;
                    }
                    iMax2 = 300;
                    break;
                }
                iMax2 = G0(mapJ0.get(strArr2[i3]), 0);
                if (iMax2 > 0) {
                    break;
                }
                i3++;
            }
        }
        if (mapJ0 == null) {
            iMax3 = 138;
        } else {
            java.lang.String[] strArr3 = {"general_wisdom_attr", "attr_wisdom", "general_wisdom", "wisdom", "base_wisdom"};
            int i4 = 0;
            while (true) {
                if (i4 >= 5) {
                    double[] dArrK2 = w1Var.K0("142007");
                    if (dArrK2 != null && dArrK2.length > 3) {
                        double d4 = dArrK2[3];
                        if (d4 <= 0.0d) {
                            iMax3 = 200;
                            break;
                        }
                        iMax3 = java.lang.Math.max(1, (int) d4);
                        break;
                    }
                    iMax3 = 200;
                    break;
                }
                iMax3 = G0(mapJ0.get(strArr3[i4]), 0);
                if (iMax3 > 0) {
                    break;
                }
                i4++;
            }
        }
        int i5 = iM0 <= 0 ? 283 : iM0;
        int i6 = iMax <= 0 ? 100 : iMax;
        if (iMax2 <= 0) {
            iMax2 = 125;
        }
        if (iMax3 <= 0) {
            iMax3 = 138;
        }
        return new com.sgscq.vpn.handler.t(i5, i6, iMax2, iMax3);
    }

    public static void a(java.util.HashMap map, java.util.Map map2, com.sgscq.vpn.handler.j jVar) {
        for (java.lang.String str : (java.util.Set) jVar.f884d) {
            java.lang.Object obj = map2.get(str);
            if (obj instanceof java.util.Map) {
                java.util.Map map3 = (java.util.Map) obj;
                map.put(str, com.sgscq.vpn.p5.z0("del", map3.get("del") instanceof java.util.List ? new java.util.ArrayList((java.util.List) map3.get("del")) : new java.util.ArrayList(), "upd", map3.get("upd") instanceof java.util.List ? new java.util.ArrayList((java.util.List) map3.get("upd")) : new java.util.ArrayList(), "add", new java.util.ArrayList()));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ed  */
    public static java.util.LinkedHashMap a0(int i2, java.lang.String str, java.util.Map map) {
        java.lang.String str2;
        char c2;
        java.lang.Object arrayList;
        if (str == null || str.trim().isEmpty() || i2 <= 0) {
            return null;
        }
        java.lang.String strTrim = str.trim();
        java.util.List listF0 = com.sgscq.vpn.w1.f0("SkillPiece", map);
        java.util.Map mapQ = Q(strTrim, listF0);
        if (mapQ == null) {
            mapQ = com.sgscq.vpn.p5.z0("pk_id", strTrim, "id", strTrim, "skill_id", strTrim, "num", java.lang.Integer.valueOf(i2), "skill_piece_num", java.lang.Integer.valueOf(i2));
            listF0.add(mapQ);
            str2 = "del";
            c2 = 0;
        } else {
            if (strTrim == null || strTrim.isEmpty()) {
                str2 = "del";
            } else {
                java.lang.String strValueOf = java.lang.String.valueOf(mapQ.getOrDefault("pk_id", ""));
                if ((strTrim.equals(strValueOf) && c.a.B(mapQ, "id", "", strTrim) && c.a.B(mapQ, "skill_id", "", strTrim)) ? false : true) {
                    if (strValueOf.isEmpty() || "null".equalsIgnoreCase(strValueOf) || strTrim.equals(strValueOf)) {
                        str2 = "del";
                    } else {
                        java.util.List listH = H(map);
                        if (!listH.contains(strValueOf)) {
                            listH.add(strValueOf);
                        }
                        java.lang.Object[] objArr = new java.lang.Object[4];
                        objArr[0] = "upd";
                        java.lang.Object obj = map.get("SkillPiece");
                        if (obj instanceof java.util.Map) {
                            java.lang.Object obj2 = ((java.util.Map) obj).get("upd");
                            if (obj2 instanceof java.util.List) {
                                arrayList = (java.util.List) obj2;
                            } else {
                                arrayList = new java.util.ArrayList();
                            }
                        } else {
                            arrayList = new java.util.ArrayList();
                        }
                        objArr[1] = arrayList;
                        objArr[2] = "add";
                        objArr[3] = com.sgscq.vpn.w1.f0("SkillPiece", map);
                        str2 = "del";
                        map.put("SkillPiece", com.sgscq.vpn.p5.z0(str2, listH, objArr));
                    }
                    mapQ.put("pk_id", strTrim);
                    mapQ.put("id", strTrim);
                    mapQ.put("skill_id", strTrim);
                } else {
                    str2 = "del";
                }
            }
            c2 = 0;
            int iG0 = G0(mapQ.get("num"), G0(mapQ.get("skill_piece_num"), 0)) + i2;
            c.a.t(iG0, mapQ, "num", iG0, "skill_piece_num");
        }
        java.util.List listH2 = H(map);
        java.util.Map[] mapArr = new java.util.Map[1];
        mapArr[c2] = mapQ;
        map.put("SkillPiece", com.sgscq.vpn.p5.z0(str2, listH2, "upd", com.sgscq.vpn.p5.v0(mapArr), "add", listF0));
        return y(i2, strTrim, mapQ);
    }

    public static java.util.LinkedHashMap a1(java.lang.String str, java.lang.String str2) {
        if (!r0(str) || str2 == null || str2.trim().isEmpty()) {
            return null;
        }
        java.util.Map map = (java.util.Map) new a.o().e(str2, new com.google.gson.reflect.TypeToken<java.util.Map<java.lang.String, java.lang.Object>>() { // from class: com.sgscq.vpn.handler.DungeonHandler$3
        }.getType());
        java.lang.Object obj = map == null ? null : map.get(str);
        if (!(obj instanceof java.util.Map)) {
            return null;
        }
        java.util.Map map2 = (java.util.Map) obj;
        java.lang.Object obj2 = map2.get("add_list");
        if (!(obj2 instanceof java.util.List)) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj3 : (java.util.List) obj2) {
            if (obj3 instanceof java.util.Map) {
                java.util.Map map3 = (java.util.Map) obj3;
                java.lang.String strJ = c.a.j(map3, "item_id", "", "id");
                int iG0 = G0(map3.get("num"), G0(map3.get("item_num"), 1));
                int iG1 = G0(map3.get("type"), 5);
                if (!strJ.isEmpty() && !"null".equals(strJ) && iG0 > 0) {
                    arrayList.add(com.sgscq.vpn.p5.z0("id", strJ, "item_id", strJ, "num", java.lang.Integer.valueOf(iG0), "item_num", java.lang.Integer.valueOf(iG0), "type", java.lang.Integer.valueOf(iG1)));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return com.sgscq.vpn.p5.z0("box_id", str, "name", java.lang.String.valueOf(map2.getOrDefault("name", "")), "desc", java.lang.String.valueOf(map2.getOrDefault("desc", "")), "add_list", arrayList);
    }

    public static java.util.Map c(int i2, java.lang.String str, java.util.Map map) {
        java.util.Map linkedHashMap;
        java.lang.Object obj = map.get("Item");
        if (obj instanceof java.util.Map) {
            linkedHashMap = (java.util.Map) obj;
        } else {
            linkedHashMap = new java.util.LinkedHashMap();
            linkedHashMap.put("del", new java.util.ArrayList());
            linkedHashMap.put("upd", new java.util.ArrayList());
            linkedHashMap.put("add", new java.util.ArrayList());
            map.put("Item", linkedHashMap);
        }
        java.lang.Object obj2 = linkedHashMap.get("add");
        java.util.List<java.util.Map> listO = obj2 instanceof java.util.List ? (java.util.List) obj2 : c.a.o(linkedHashMap, "add");
        int i3 = 0;
        for (java.util.Map map2 : listO) {
            if (c.a.C(map2, "id", "", "item_id", str)) {
                int iG0 = G0(map2.get("item_num"), G0(map2.get("num"), 0)) + i2;
                c.a.t(iG0, map2, "item_num", iG0, "num");
                return map2;
            }
            int iG1 = G0(map2.get("pk_id"), 0);
            if (iG1 > i3) {
                i3 = iG1;
            }
        }
        java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
        linkedHashMap2.put("pk_id", java.lang.String.valueOf(i3 + 1));
        linkedHashMap2.put("id", str);
        c.a.z(linkedHashMap2, "item_id", str, i2, "item_num", i2, "num");
        linkedHashMap2.put("effect_time", "0");
        linkedHashMap2.put("is_new", java.lang.Boolean.TRUE);
        listO.add(linkedHashMap2);
        return linkedHashMap2;
    }

    public static java.lang.String c1(java.util.ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return "[]";
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.sgscq.vpn.battle.BattleUnit battleUnit = (com.sgscq.vpn.battle.BattleUnit) it.next();
            if (battleUnit != null) {
                arrayList2.add(battleUnit.getId() + ":" + java.lang.Math.round(battleUnit.getHpCur()) + "/" + java.lang.Math.round(battleUnit.getHpMax()));
            }
        }
        return arrayList2.toString();
    }

    public static void d(double[] dArr, int i2, double d2) {
        if (d2 <= 0.0d) {
            return;
        }
        if (i2 == 1) {
            dArr[1] = dArr[1] + d2;
            return;
        }
        if (i2 == 2) {
            dArr[2] = dArr[2] + d2;
        } else if (i2 == 3) {
            dArr[0] = dArr[0] + d2;
        } else if (i2 == 4) {
            dArr[3] = dArr[3] + d2;
        }
    }

    public static boolean e0(java.lang.String str, java.util.Map map) {
        java.util.Map map2;
        if (map == null || str == null) {
            return false;
        }
        java.lang.Object obj = map.get("dungeon_stars");
        if (obj instanceof java.util.Map) {
            map2 = (java.util.Map) obj;
        } else if (obj instanceof java.lang.String) {
            try {
                map2 = (java.util.Map) new a.o().e((java.lang.String) obj, new com.google.gson.reflect.TypeToken<java.util.Map<java.lang.String, java.lang.Object>>() { // from class: com.sgscq.vpn.handler.DungeonHandler$1
                }.getType());
            } catch (java.lang.Exception unused) {
                map2 = null;
            }
        } else {
            map2 = null;
        }
        if (map2 == null || map2.isEmpty()) {
            return false;
        }
        java.lang.String strA0 = A0(str);
        return K0(map2.get(str)) > 0 || K0(map2.get(strA0)) > 0 || (strA0.length() == 6 && K0(map2.get(strA0.concat("01"))) > 0);
    }

    public static java.lang.String[] e1(boolean z, java.lang.String... strArr) {
        if (!z) {
            return strArr;
        }
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        java.util.Collections.addAll(linkedHashSet, strArr);
        linkedHashSet.add("Combat");
        return (java.lang.String[]) linkedHashSet.toArray(new java.lang.String[0]);
    }

    public static void f(java.util.ArrayList arrayList, java.util.Map map) {
        if (map == null) {
            return;
        }
        java.lang.String strJ = c.a.j(map, "general_pk_id", "", "pk_id");
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (c.a.C((java.util.Map) it.next(), "general_pk_id", "", "pk_id", strJ)) {
                return;
            }
        }
        arrayList.add(map);
    }

    public static boolean f0(java.lang.String str, java.util.Map map) {
        for (java.util.Map map2 : com.sgscq.vpn.w1.f0("General", map)) {
            if (!java.lang.Boolean.TRUE.equals(map2.get("story_guest")) && c.a.C(map2, "id", "", "general_id", str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00ca A[PHI: r1 r10
      0x00ca: PHI (r1v5 java.lang.String) = (r1v4 java.lang.String), (r1v2 java.lang.String) binds: [B:57:0x00c8, B:39:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x00ca: PHI (r10v15 java.lang.String) = (r10v9 java.lang.String), (r10v22 java.lang.String) binds: [B:57:0x00c8, B:39:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00cf A[PHI: r1 r10
      0x00cf: PHI (r1v14 java.lang.String) = (r1v4 java.lang.String), (r1v2 java.lang.String) binds: [B:57:0x00c8, B:39:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x00cf: PHI (r10v19 java.lang.String) = (r10v9 java.lang.String), (r10v22 java.lang.String) binds: [B:57:0x00c8, B:39:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:97:0x0161  */
    public static boolean g(java.util.Map map, java.lang.String str, java.util.ArrayList arrayList, java.util.LinkedHashMap linkedHashMap, java.lang.String str2, java.lang.String str3, boolean z) {
        java.util.List listL;
        java.lang.String str4;
        java.lang.String strY0;
        boolean z2;
        boolean z3;
        java.lang.String strB0 = z ? B0(str) : A0(str);
        if (strB0 == null) {
            return false;
        }
        if (!z && !strB0.matches("5\\d{5}")) {
            return false;
        }
        if (z && !strB0.startsWith("105")) {
            return false;
        }
        java.lang.String strSubstring = (!z || strB0.length() < 5) ? strB0.substring(0, 3) : strB0.substring(0, 5);
        java.util.ArrayList arrayListD0 = D0((java.util.List) linkedHashMap.get(strSubstring));
        java.util.List listL2 = arrayListD0;
        if (z) {
            listL2 = L(strSubstring, arrayListD0);
        }
        int iIndexOf = listL2.indexOf(strB0);
        if (iIndexOf < 0 && z) {
            java.lang.String strA0 = A0(strB0);
            for (int i2 = 0; i2 < listL2.size(); i2++) {
                if (strA0.equals(A0((java.lang.String) listL2.get(i2)))) {
                    iIndexOf = i2;
                    break;
                }
            }
        }
        if (iIndexOf < 0) {
            return false;
        }
        int i3 = iIndexOf + 1;
        if (i3 < listL2.size()) {
            str4 = (java.lang.String) listL2.get(i3);
            if (z) {
                strY0 = B0(str4);
            } else {
                strY0 = A0(str4);
            }
            z2 = false;
        } else {
            int iIndexOf2 = arrayList.indexOf(strSubstring);
            if (iIndexOf2 < 0) {
                return false;
            }
            if (iIndexOf2 >= arrayList.size() - 1) {
                strY0 = z ? y0(strB0) : z0(strB0);
                z2 = true;
            } else {
                strSubstring = (java.lang.String) arrayList.get(iIndexOf2 + 1);
                java.util.ArrayList arrayListD1 = D0((java.util.List) linkedHashMap.get(strSubstring));
                if (z) {
                    listL = arrayListD1;
                    listL = L(strSubstring, arrayListD1);
                }
                listL = arrayListD1;
                if (listL.isEmpty()) {
                    strY0 = "";
                } else {
                    str4 = (java.lang.String) listL.get(0);
                    if (z) {
                        strY0 = B0(str4);
                    } else {
                        strY0 = A0(str4);
                    }
                }
                z2 = false;
            }
        }
        if (!z) {
            try {
                int i4 = java.lang.Integer.parseInt(strSubstring) - 500;
                strSubstring = i4 > 0 ? "500" + java.lang.String.format(java.util.Locale.US, "%03d", java.lang.Integer.valueOf(i4)) : "";
            } catch (java.lang.NumberFormatException unused) {
            }
        }
        int i5 = iIndexOf + 2;
        if (iIndexOf >= listL2.size() - 1 && !z2) {
            i5 = 1;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault(str2, ""));
        int iF0 = z ? F0(strValueOf) : I0(strValueOf);
        int iF1 = z ? F0(strSubstring) : I0(strSubstring);
        if (iF1 > 0) {
            if (iF0 > 0) {
                if (iF1 == iF0) {
                    int iG = G(java.lang.String.valueOf(map.getOrDefault(str3, "0")));
                    if (iG <= 0) {
                        java.lang.Object obj = map.get(str3);
                        if (obj instanceof java.lang.Number) {
                            iG = ((java.lang.Number) obj).intValue();
                        } else {
                            try {
                                iG = java.lang.Integer.parseInt(java.lang.String.valueOf(obj));
                            } catch (java.lang.Exception unused2) {
                                iG = 0;
                            }
                        }
                    }
                    if (i5 <= iG) {
                        z3 = false;
                    }
                } else if (iF1 <= iF0) {
                    z3 = false;
                }
            }
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3) {
            return false;
        }
        map.put(str2, strSubstring);
        map.put(str3, strY0);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0083  */
    public static java.lang.String g0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.lang.String str2;
        java.util.Map mapEmptyMap;
        if (str == null) {
            str = "";
        }
        java.lang.String strY0 = w1Var == null ? "" : w1Var.Y0(str);
        boolean z = strY0.startsWith("\"") != strY0.endsWith("\"");
        if (!strY0.isEmpty() && !strY0.equals(str) && !z) {
            return strY0;
        }
        if (str.isEmpty()) {
            str2 = "";
        } else {
            java.lang.String strA = com.sgscq.vpn.o0.a(null, "i18n.json");
            if (strA == null || strA.isEmpty()) {
                str2 = "";
            } else {
                if (strA != f1012e) {
                    synchronized (com.sgscq.vpn.handler.w.class) {
                        if (strA != f1012e) {
                            try {
                                f1013f = (java.util.Map) new a.o().e(strA, new com.google.gson.reflect.TypeToken<java.util.Map<java.lang.String, java.lang.String>>() { // from class: com.sgscq.vpn.handler.DungeonHandler$4
                                }.getType());
                            } catch (java.lang.Exception unused) {
                                f1013f = java.util.Collections.emptyMap();
                            }
                            f1012e = strA;
                        }
                    }
                }
                str2 = f1013f != null ? (java.lang.String) f1013f.get(str) : null;
                if (str2 == null) {
                    str2 = "";
                }
            }
        }
        if (!str2.isEmpty()) {
            return str2;
        }
        if (!str.isEmpty()) {
            java.util.Map map = f1014g;
            if (map == null) {
                synchronized (com.sgscq.vpn.handler.w.class) {
                    mapEmptyMap = f1014g;
                    if (mapEmptyMap == null) {
                        try {
                            java.lang.String strO0 = O0("docs/game_data_json/i18n.json");
                            if (!strO0.isEmpty()) {
                                java.util.Map map2 = (java.util.Map) new a.o().e(strO0, new com.google.gson.reflect.TypeToken<java.util.Map<java.lang.String, java.lang.String>>() { // from class: com.sgscq.vpn.handler.DungeonHandler$5
                                }.getType());
                                if (map2 != null) {
                                    mapEmptyMap = java.util.Collections.unmodifiableMap(map2);
                                }
                                f1014g = mapEmptyMap;
                            }
                            mapEmptyMap = java.util.Collections.emptyMap();
                        } catch (java.lang.Exception unused2) {
                            mapEmptyMap = java.util.Collections.emptyMap();
                        }
                        f1014g = mapEmptyMap;
                    }
                }
                map = mapEmptyMap;
            }
            java.lang.String str3 = (java.lang.String) map.get(str);
            if (str3 != null) {
                return str3;
            }
        }
        return "";
    }

    public static boolean h0(java.lang.String str, java.lang.String str2) {
        if (str2 != null && !str2.trim().isEmpty()) {
            try {
                java.lang.Object objD = new a.o().d(str2, java.lang.Object.class);
                if (objD instanceof java.util.Map) {
                    for (java.lang.Object obj : ((java.util.Map) objD).values()) {
                        if ((obj instanceof java.util.Map) && str.equals(java.lang.String.valueOf(((java.util.Map) obj).get("id"))) && i0((java.util.Map) obj)) {
                            return true;
                        }
                    }
                } else if (objD instanceof java.util.List) {
                    for (java.lang.Object obj2 : (java.util.List) objD) {
                        if ((obj2 instanceof java.util.Map) && str.equals(java.lang.String.valueOf(((java.util.Map) obj2).get("id"))) && i0((java.util.Map) obj2)) {
                            return true;
                        }
                    }
                }
            } catch (java.lang.Exception unused) {
            }
        }
        return false;
    }

    public static boolean i0(java.util.Map map) {
        if (!com.sgscq.vpn.w1.D1(map)) {
            return false;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("surrender_gift_id", "0"));
        return (strValueOf.isEmpty() || "0".equals(strValueOf) || "null".equalsIgnoreCase(strValueOf)) ? false : true;
    }

    public static void j(com.sgscq.vpn.battle.BattleUnit battleUnit, java.lang.String str, int i2, com.sgscq.vpn.handler.t tVar) {
        boolean zK0 = k0(str);
        int i3 = tVar.f991a;
        if (zK0) {
            if (battleUnit != null) {
                double d2 = i3;
                if (battleUnit.getHpMax() < d2) {
                    battleUnit.addAttribute(com.sgscq.vpn.battle.BattleAttribute.HP, d2 - battleUnit.getHpMax());
                    return;
                }
                return;
            }
            return;
        }
        if (battleUnit != null) {
            if (i2 >= 1) {
                double d3 = i3;
                if (battleUnit.getHpMax() < d3) {
                    battleUnit.addAttribute(com.sgscq.vpn.battle.BattleAttribute.HP, d3 - battleUnit.getHpMax());
                }
                double attack = battleUnit.getAttack();
                double d4 = tVar.f992b;
                if (attack < d4) {
                    battleUnit.addAttribute(com.sgscq.vpn.battle.BattleAttribute.ATTACK, d4 - battleUnit.getAttack());
                }
                double defense = battleUnit.getDefense();
                double d5 = tVar.f993c;
                if (defense < d5) {
                    battleUnit.addAttribute(com.sgscq.vpn.battle.BattleAttribute.DEFENSE, d5 - battleUnit.getDefense());
                }
                double wisdom = battleUnit.getWisdom();
                double d6 = tVar.f994d;
                if (wisdom < d6) {
                    battleUnit.addAttribute(com.sgscq.vpn.battle.BattleAttribute.WISDOM, d6 - battleUnit.getWisdom());
                }
            }
        }
    }

    public static boolean j0(java.lang.String str) {
        return "map.getUserMap".equals(str) || "chapter.getChapterInfo".equals(str) || "dungeon.fightBefore".equals(str) || "dungeon.fight".equals(str) || "dungeon.multiKill".equals(str) || "dungeon.multiKillSpecialInfo".equals(str) || "dungeon.multiKillSpecial".equals(str) || "dungeon.openBox".equals(str);
    }

    public static void k(java.util.Map map, java.util.ArrayList arrayList, boolean z, int i2) {
        if (!z || i2 <= 0) {
            return;
        }
        java.util.HashMap map2 = new java.util.HashMap();
        java.util.HashSet hashSet = new java.util.HashSet();
        for (java.util.Map map3 : com.sgscq.vpn.w1.f0("General", map)) {
            if (!java.lang.Boolean.TRUE.equals(map3.get("story_guest"))) {
                java.lang.String strValueOf = java.lang.String.valueOf(map3.getOrDefault("pk_id", ""));
                java.lang.String strValueOf2 = java.lang.String.valueOf(map3.getOrDefault("general_id", ""));
                if (!strValueOf.isEmpty() && !strValueOf2.isEmpty()) {
                    map2.put(strValueOf, strValueOf2);
                }
                if (!strValueOf2.isEmpty()) {
                    hashSet.add(strValueOf2);
                }
            }
        }
        java.util.HashSet hashSet2 = new java.util.HashSet();
        for (java.util.Map map4 : com.sgscq.vpn.w1.f0("TeamGeneral", map)) {
            if (G0(map4.get("general_position"), G0(map4.get("position"), 0)) > 0 && !java.lang.Boolean.TRUE.equals(map4.get("story_guest"))) {
                java.lang.String str = (java.lang.String) map2.get(java.lang.String.valueOf(map4.getOrDefault("general_pk_id", map4.getOrDefault("pk_id", ""))));
                if (str != null) {
                    hashSet2.add(str);
                }
                java.lang.String strValueOf3 = java.lang.String.valueOf(map4.getOrDefault("general_id", ""));
                if (hashSet.contains(strValueOf3)) {
                    hashSet2.add(strValueOf3);
                }
            }
        }
        java.util.HashSet hashSet3 = new java.util.HashSet();
        for (java.util.Map map5 : com.sgscq.vpn.w1.f0("EvolutionInfo", map)) {
            if (G0(map5.get("status"), 0) == 1) {
                java.lang.String strJ = c.a.j(map5, "resource_id", "", "general_id");
                if (hashSet2.contains(strJ)) {
                    hashSet3.add(strJ);
                }
            }
        }
        com.sgscq.vpn.handler.y0.d(map, arrayList, "38", i2, hashSet3);
    }

    public static boolean k0(java.lang.String str) {
        return str != null && str.trim().startsWith("105");
    }

    /* JADX WARN: Code duplicated, block: B:40:0x015c  */
    public static void l(com.sgscq.vpn.w1 w1Var, java.util.ArrayList arrayList, java.util.Map map) {
        char c2;
        java.util.Map mapJ0;
        com.sgscq.vpn.w1 w1Var2 = w1Var;
        java.util.Map map2 = map;
        if (w1Var2 == null || arrayList.isEmpty()) {
            return;
        }
        java.util.HashMap map3 = new java.util.HashMap();
        java.util.Iterator it = arrayList.iterator();
        while (true) {
            c2 = 0;
            if (!it.hasNext()) {
                break;
            }
            java.util.Map map4 = (java.util.Map) it.next();
            if (map4 != null) {
                map4.remove("bound_lieutenants");
                map4.put("battle_lieutenant_hp_percent", 0);
                map4.put("battle_lieutenant_attack_percent", 0);
                map4.put("battle_lieutenant_defense_percent", 0);
                map4.put("battle_lieutenant_wisdom_percent", 0);
            }
            java.lang.String strJ = c.a.j(map4, "general_pk_id", "", "pk_id");
            if (!strJ.isEmpty() && !"null".equals(strJ)) {
                map3.put(strJ, map4);
            }
        }
        java.util.Iterator it2 = com.sgscq.vpn.w1.f0("General", map2).iterator();
        while (it2.hasNext()) {
            java.util.Map map5 = (java.util.Map) it2.next();
            java.util.Map map6 = (java.util.Map) map3.get(java.lang.String.valueOf(map5.getOrDefault("major_pk_id", "")));
            if (map6 != null) {
                double[] dArr = new double[4];
                dArr[c2] = E0(map6.get("battle_lieutenant_hp_percent"));
                dArr[1] = E0(map6.get("battle_lieutenant_attack_percent"));
                dArr[2] = E0(map6.get("battle_lieutenant_defense_percent"));
                dArr[3] = E0(map6.get("battle_lieutenant_wisdom_percent"));
                java.lang.String strT = T(map5.get("lieutenant_skill_id"), map5.get("skill_type_lieutenant"));
                java.util.HashMap map7 = map3;
                java.util.Iterator it3 = it2;
                java.lang.String strT2 = (!strT.isEmpty() || (mapJ0 = w1Var2.J0(T(map5.get("general_id"), map5.get("id")))) == null) ? strT : T(mapJ0.get("lieutenant_skill_id"));
                com.sgscq.vpn.s1 s1VarY = w1Var2.y(T(map5.get("general_id"), map5.get("id")), map2);
                java.util.Map mapE1 = w1Var2.e1(strT2);
                if (mapE1 == null) {
                    c2 = 0;
                } else {
                    java.lang.Object obj = mapE1.get("skill_grow");
                    if (obj instanceof java.util.Map) {
                        java.lang.Object obj2 = ((java.util.Map) obj).get(java.lang.String.valueOf(java.lang.Math.max(1, G0(map5.get("insight_level"), G0(map5.get("breachLevel"), 1)))));
                        if (obj2 instanceof java.util.Map) {
                            java.util.Map map8 = (java.util.Map) obj2;
                            int iG0 = G0(mapE1.get("first_attr_type"), 0);
                            double dE0 = E0(map8.get("first_attr_value"));
                            double d2 = s1VarY.f1361k;
                            d(dArr, iG0, dE0 + d2);
                            c2 = 0;
                            d(dArr, G0(mapE1.get("second_attr_type"), 0), E0(map8.get("second_attr_value")) + d2);
                        } else {
                            c2 = 0;
                        }
                    } else {
                        c2 = 0;
                    }
                }
                map6.put("battle_lieutenant_hp_percent", java.lang.Double.valueOf(dArr[c2]));
                map6.put("battle_lieutenant_attack_percent", java.lang.Double.valueOf(dArr[1]));
                map6.put("battle_lieutenant_defense_percent", java.lang.Double.valueOf(dArr[2]));
                map6.put("battle_lieutenant_wisdom_percent", java.lang.Double.valueOf(dArr[3]));
                java.lang.Object obj3 = map6.get("bound_lieutenants");
                java.util.List arrayList2 = obj3 instanceof java.util.List ? (java.util.List) obj3 : new java.util.ArrayList();
                arrayList2.add(map5);
                map6.put("bound_lieutenants", arrayList2);
                w1Var2 = w1Var;
                map2 = map;
                map3 = map7;
                it2 = it3;
            }
        }
    }

    public static boolean l0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.util.Map mapC1;
        if (!str.isEmpty()) {
            if (w1Var != null && (mapC1 = w1Var.c1(str)) != null && G0(mapC1.get("item_type"), -1) == 15) {
                return true;
            }
            if (str.matches("9\\d{6}") && m0(w1Var, M(str))) {
                return true;
            }
        }
        return false;
    }

    public static boolean m0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        if (w1Var != null && w1Var.z0(str) != null) {
            return true;
        }
        if (w1Var == null || w1Var.c1(str) == null) {
            return str.matches("2\\d{5}");
        }
        return false;
    }

    public static void n(java.lang.String str, java.lang.String str2, java.util.Map map) {
        if (map == null) {
            return;
        }
        java.lang.Object obj = map.get("init");
        if (obj instanceof java.util.Map) {
            java.util.Map map2 = (java.util.Map) obj;
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.lang.Object obj2 = map2.get("info");
            if (obj2 instanceof java.util.List) {
                for (java.lang.Object obj3 : (java.util.List) obj2) {
                    if (obj3 instanceof java.util.Map) {
                        arrayList.add(new java.util.LinkedHashMap((java.util.Map) obj3));
                    } else {
                        arrayList.add(new java.util.LinkedHashMap());
                    }
                }
            }
            while (arrayList.size() < 2) {
                arrayList.add(new java.util.LinkedHashMap());
            }
            L0(str, (java.util.Map) arrayList.get(0));
            L0(str2, (java.util.Map) arrayList.get(1));
            map2.put("info", arrayList);
        }
    }

    public static boolean n0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.util.Map mapC1;
        if ("100000".equals(str.trim())) {
            return false;
        }
        if (!o0(w1Var, str)) {
            if (!((w1Var == null || str.isEmpty() || (mapC1 = w1Var.c1(str)) == null || G0(mapC1.get("item_type"), -1) != 31) ? false : true)) {
                if (!(str.matches("1\\d{5}") && !str.startsWith("164") && (str.startsWith("12") || str.startsWith("13") || str.startsWith("14") || str.startsWith("15")))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static java.util.LinkedHashMap o(int i2, int i3, java.lang.String str) {
        java.util.LinkedHashMap linkedHashMapR = c.a.r("id", str, "item_id", str);
        linkedHashMapR.put("num", java.lang.Integer.valueOf(i2));
        linkedHashMapR.put("item_num", java.lang.Integer.valueOf(i2));
        linkedHashMapR.put("item_type", java.lang.Integer.valueOf(i3));
        linkedHashMapR.put("type", 5);
        linkedHashMapR.put("is_new", java.lang.Boolean.TRUE);
        return linkedHashMapR;
    }

    public static boolean o0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        if (w1Var == null) {
            return false;
        }
        java.lang.String strTrim = str.trim();
        if (strTrim.isEmpty() || strTrim.startsWith("164")) {
            return false;
        }
        return w1Var.C1(strTrim);
    }

    public static java.util.LinkedHashMap p(int i2, int i3, int i4, int i5, long j2, java.lang.String str, java.util.Map map) {
        java.lang.String strJ = (str == null || str.isEmpty()) ? c.a.j(map, "uid", "", "player_id") : str;
        java.lang.String strK = c.a.k(map, "nick", "", "nickname", "user_nickname");
        java.util.LinkedHashMap linkedHashMapR = c.a.r("player_id", strJ, "user_id", strJ);
        linkedHashMapR.put("uid", strJ);
        linkedHashMapR.put("player_type", "1");
        linkedHashMapR.put("user_nickname", strK);
        linkedHashMapR.put("nickname", strK);
        c.a.z(linkedHashMapR, "nick", strK, i2, "user_level", i2, "level");
        c.a.s(i2, linkedHashMapR, "roleLevel", i2, "role_level", i3, "user_experience");
        linkedHashMapR.put("user_coin", java.lang.Long.valueOf(j2));
        linkedHashMapR.put("user_power", java.lang.Integer.valueOf(i4));
        linkedHashMapR.put("user_power_date", java.lang.Integer.valueOf(i5));
        return linkedHashMapR;
    }

    public static boolean p0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        if (str.isEmpty()) {
            return false;
        }
        if (w1Var != null && w1Var.k1(str) != null) {
            return true;
        }
        if (w1Var == null || w1Var.c1(str) == null) {
            return str.matches("3\\d{5}");
        }
        return false;
    }

    public static java.util.LinkedHashMap q(int i2, java.lang.String str, java.util.Map map) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        java.lang.String strM = M(str);
        linkedHashMap.put("pk_id", java.lang.String.valueOf(map.getOrDefault("pk_id", str)));
        linkedHashMap.put("id", strM);
        linkedHashMap.put("equipment_id", strM);
        linkedHashMap.put("equip_id", strM);
        linkedHashMap.put("item_id", str);
        c.a.z(linkedHashMap, "piece_id", str, i2, "num", i2, "item_num");
        c.a.s(15, linkedHashMap, "item_type", 8, "type", 1, "level");
        linkedHashMap.put("is_new", java.lang.Boolean.TRUE);
        return linkedHashMap;
    }

    public static java.util.LinkedHashMap r(java.lang.String str, int i2) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        linkedHashMap.put("pk_id", java.lang.String.valueOf(i2));
        linkedHashMap.put("id", str);
        linkedHashMap.put("equipment_id", str);
        linkedHashMap.put("equip_id", str);
        linkedHashMap.put("item_id", str);
        linkedHashMap.put("num", 1);
        linkedHashMap.put("item_num", 1);
        linkedHashMap.put("item_type", 3);
        linkedHashMap.put("type", 3);
        linkedHashMap.put("level", 1);
        linkedHashMap.put("is_new", java.lang.Boolean.TRUE);
        return linkedHashMap;
    }

    public static boolean r0(java.lang.String str) {
        if (!str.matches("4[1-4]0\\d{3}")) {
            return false;
        }
        int iG0 = G0(str, 0);
        int i2 = iG0 / 1000;
        int i3 = iG0 % 1000;
        return i2 >= 410 && i2 <= 440 && i3 >= 1 && i3 <= 90;
    }

    public static java.util.HashMap s(java.util.Map map, java.util.ArrayList arrayList, com.sgscq.vpn.handler.v vVar) {
        java.lang.String str;
        java.lang.String str2;
        java.util.ArrayList arrayList2;
        java.lang.String str3;
        java.util.List list;
        java.lang.String str4;
        java.util.ArrayList arrayList3;
        java.util.ArrayList arrayList4;
        java.util.List list2;
        java.util.ArrayList arrayList5;
        java.util.List list3;
        java.util.List list4;
        java.util.ArrayList arrayList6;
        java.util.ArrayList arrayList7;
        java.util.Map map2;
        java.util.List list5;
        java.util.ArrayList arrayList8;
        java.util.List list6;
        java.util.List list7;
        java.util.ArrayList arrayList9;
        java.util.ArrayList arrayList10;
        java.util.List list8;
        java.util.HashMap map3 = new java.util.HashMap(map);
        java.util.ArrayList arrayList11 = new java.util.ArrayList(vVar.f1006b);
        java.util.ArrayList arrayList12 = new java.util.ArrayList(vVar.f1007c);
        java.util.ArrayList arrayList13 = new java.util.ArrayList();
        java.util.ArrayList arrayList14 = new java.util.ArrayList();
        java.util.ArrayList arrayList15 = new java.util.ArrayList();
        java.util.ArrayList arrayList16 = new java.util.ArrayList();
        java.util.ArrayList arrayList17 = new java.util.ArrayList();
        java.util.ArrayList arrayList18 = new java.util.ArrayList();
        java.util.ArrayList arrayList19 = new java.util.ArrayList();
        java.util.List listF0 = com.sgscq.vpn.w1.f0("General", map);
        java.util.List listF1 = com.sgscq.vpn.w1.f0("Skill", map);
        java.util.List listF2 = com.sgscq.vpn.w1.f0("Item", map);
        java.util.List listF3 = com.sgscq.vpn.w1.f0("GeneralSoul", map);
        java.util.List listF4 = com.sgscq.vpn.w1.f0("Equipment", map);
        java.util.List listF5 = com.sgscq.vpn.w1.f0("EquipmentPiece", map);
        java.util.ArrayList arrayList20 = arrayList15;
        java.util.List listF6 = com.sgscq.vpn.w1.f0("SkillPiece", map);
        java.lang.String str5 = "TeamGeneral";
        java.util.Iterator it = com.sgscq.vpn.w1.f0("TeamGeneral", map).iterator();
        while (true) {
            str = str5;
            str2 = "SGSCQ_SRV";
            arrayList2 = arrayList13;
            str3 = "pk_id";
            list = listF2;
            if (!it.hasNext()) {
                break;
            }
            java.util.ArrayList arrayList21 = arrayList17;
            java.util.Map map4 = (java.util.Map) it.next();
            java.util.List list9 = listF3;
            java.lang.String strJ = c.a.j(map4, "pk_id", "", "general_pk_id");
            if (strJ.isEmpty() || "0".equals(strJ) || "null".equalsIgnoreCase(strJ)) {
                arrayList10 = arrayList16;
                list8 = listF0;
            } else {
                java.util.Map mapR = R(strJ, listF0);
                if (mapR == null) {
                    com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] skip invalid TeamGeneral pk_id=".concat(strJ));
                    arrayList10 = arrayList16;
                    list8 = listF0;
                } else {
                    java.lang.Boolean bool = java.lang.Boolean.TRUE;
                    list8 = listF0;
                    arrayList10 = arrayList16;
                    if (bool.equals(mapR.get("story_guest")) || bool.equals(map4.get("story_guest"))) {
                        com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] skip story guest TeamGeneral pk_id=".concat(strJ));
                    } else {
                        arrayList19.add(map4);
                        f(arrayList11, mapR);
                        f(arrayList12, R(strJ, listF1));
                    }
                }
            }
            listF3 = list9;
            str5 = str;
            arrayList13 = arrayList2;
            listF2 = list;
            arrayList17 = arrayList21;
            listF0 = list8;
            arrayList16 = arrayList10;
        }
        java.util.ArrayList arrayList22 = arrayList16;
        java.util.ArrayList arrayList23 = arrayList17;
        java.util.List list10 = listF3;
        java.util.List list11 = listF0;
        java.util.Iterator it2 = arrayList.iterator();
        while (true) {
            str4 = str2;
            arrayList3 = arrayList19;
            if (!it2.hasNext()) {
                break;
            }
            java.util.Map map5 = (java.util.Map) it2.next();
            java.util.Iterator it3 = it2;
            java.lang.String strValueOf = java.lang.String.valueOf(map5.getOrDefault(str3, ""));
            java.lang.String str6 = str3;
            java.util.ArrayList arrayList24 = arrayList11;
            java.lang.String strJ2 = c.a.j(map5, "item_type", "", "type");
            java.util.List list12 = listF6;
            java.lang.String str7 = "piece_id";
            if (java.lang.String.valueOf(8).equals(strJ2) || c.a.B(map5, "item_type", "", java.lang.String.valueOf(15)) || map5.containsKey("piece_id")) {
                arrayList4 = arrayList2;
                list2 = list;
                arrayList5 = arrayList23;
                java.util.ArrayList arrayList25 = arrayList22;
                list3 = list10;
                list4 = listF4;
                arrayList6 = arrayList24;
                java.lang.String strJ3 = c.a.j(map5, "item_id", strValueOf, "piece_id");
                if (strJ3.isEmpty()) {
                    arrayList7 = arrayList25;
                    listF1 = listF1;
                    str6 = str6;
                    map2 = null;
                } else {
                    java.lang.String strM = M(strJ3);
                    java.util.Iterator it4 = listF5.iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            arrayList7 = arrayList25;
                            map2 = (java.util.Map) it4.next();
                            listF1 = listF1;
                            str6 = str6;
                            if (!c.a.B(map2, str6, "", strJ3) && !c.a.B(map2, "item_id", "", strJ3) && !c.a.B(map2, str7, "", strJ3) && !c.a.B(map2, "id", "", strM) && !c.a.B(map2, "equipment_id", "", strM)) {
                                java.lang.String str8 = str7;
                                if (!c.a.B(map2, "equip_id", "", strM)) {
                                    str7 = str8;
                                    arrayList25 = arrayList7;
                                    str6 = str6;
                                    listF1 = listF1;
                                }
                            }
                        } else {
                            arrayList7 = arrayList25;
                            listF1 = listF1;
                            str6 = str6;
                            map2 = null;
                        }
                    }
                }
                arrayList20 = arrayList20;
                f(arrayList20, map2);
            } else {
                if (java.lang.String.valueOf(3).equals(strJ2)) {
                    java.util.Map mapR2 = R(strValueOf, listF4);
                    f(arrayList14, mapR2);
                    if (mapR2 != null) {
                        com.sgscq.vpn.w1.b2("equipment_id", c.a.j(mapR2, "id", "", "equipment_id"), arrayList18, map);
                    }
                } else if (java.lang.String.valueOf(4).equals(strJ2)) {
                    java.util.Map mapR3 = R(strValueOf, listF1);
                    f(arrayList12, mapR3);
                    if (mapR3 != null) {
                        com.sgscq.vpn.w1.b2("skill_id", c.a.j(mapR3, "id", "", "skill_id"), arrayList18, map);
                    }
                } else if (java.lang.String.valueOf(7).equals(strJ2)) {
                    list7 = list12;
                    arrayList9 = arrayList22;
                    f(arrayList9, Q(c.a.k(map5, "id", strValueOf, "item_id", "skill_id"), list7));
                    list12 = list7;
                    listF1 = listF1;
                    arrayList20 = arrayList20;
                    arrayList4 = arrayList2;
                    list2 = list;
                    arrayList5 = arrayList23;
                    str6 = str6;
                    list3 = list10;
                    list4 = listF4;
                    arrayList6 = arrayList24;
                    arrayList7 = arrayList9;
                } else {
                    arrayList7 = arrayList22;
                    list12 = list12;
                    if (java.lang.String.valueOf(6).equals(strJ2)) {
                        java.lang.String strK = c.a.k(map5, "id", strValueOf, "item_id", "general_id");
                        list5 = list10;
                        arrayList8 = arrayList23;
                        f(arrayList8, R(strK, list5));
                        list4 = listF4;
                        list6 = list11;
                        arrayList6 = arrayList24;
                    } else {
                        list5 = list10;
                        arrayList8 = arrayList23;
                        if (java.lang.String.valueOf(1).equals(strJ2)) {
                            list6 = list11;
                            java.util.Map mapR4 = R(strValueOf, list6);
                            list4 = listF4;
                            arrayList6 = arrayList24;
                            f(arrayList6, mapR4);
                            if (mapR4 != null) {
                                f(arrayList12, R(strValueOf, listF1));
                                com.sgscq.vpn.w1.b2("general_id", java.lang.String.valueOf(mapR4.getOrDefault("general_id", mapR4.getOrDefault("id", ""))), arrayList18, map);
                            }
                        } else {
                            list4 = listF4;
                            java.util.List list13 = list;
                            arrayList6 = arrayList24;
                            java.util.ArrayList arrayList26 = arrayList2;
                            f(arrayList26, R(strValueOf, list13));
                            list2 = list13;
                            list3 = list5;
                            arrayList4 = arrayList26;
                        }
                        arrayList5 = arrayList8;
                    }
                    list11 = list6;
                    arrayList4 = arrayList2;
                    list2 = list;
                    list3 = list5;
                    arrayList5 = arrayList8;
                }
                arrayList9 = arrayList22;
                list7 = list12;
                list12 = list7;
                listF1 = listF1;
                arrayList20 = arrayList20;
                arrayList4 = arrayList2;
                list2 = list;
                arrayList5 = arrayList23;
                str6 = str6;
                list3 = list10;
                list4 = listF4;
                arrayList6 = arrayList24;
                arrayList7 = arrayList9;
            }
            arrayList20 = arrayList20;
            arrayList23 = arrayList5;
            str3 = str6;
            str2 = str4;
            listF1 = listF1;
            arrayList19 = arrayList3;
            arrayList22 = arrayList7;
            listF6 = list12;
            it2 = it3;
            java.util.ArrayList arrayList27 = arrayList4;
            arrayList11 = arrayList6;
            listF4 = list4;
            list10 = list3;
            list = list2;
            arrayList2 = arrayList27;
        }
        java.util.ArrayList arrayList28 = arrayList11;
        java.util.ArrayList arrayList29 = arrayList20;
        java.util.ArrayList arrayList30 = arrayList2;
        java.util.ArrayList arrayList31 = arrayList23;
        java.util.ArrayList arrayList32 = arrayList22;
        java.util.Iterator it5 = arrayList28.iterator();
        while (it5.hasNext()) {
            com.sgscq.vpn.w1.b2("general_id", c.a.j((java.util.Map) it5.next(), "id", "", "general_id"), arrayList18, map);
        }
        java.util.Iterator it6 = arrayList12.iterator();
        while (it6.hasNext()) {
            com.sgscq.vpn.w1.b2("skill_id", c.a.j((java.util.Map) it6.next(), "id", "", "skill_id"), arrayList18, map);
        }
        java.util.Iterator it7 = arrayList14.iterator();
        while (it7.hasNext()) {
            com.sgscq.vpn.w1.b2("equipment_id", c.a.j((java.util.Map) it7.next(), "id", "", "equipment_id"), arrayList18, map);
        }
        map3.put("General", com.sgscq.vpn.p5.z0("del", vVar.f1008d, "upd", arrayList28, "add", new java.util.ArrayList()));
        map3.put("GeneralSoul", com.sgscq.vpn.p5.z0("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", c.a.m("del", vVar.f1009e, new java.lang.Object[]{"upd", arrayList12, "add", new java.util.ArrayList()}, map3, "Skill"), new java.lang.Object[]{"upd", arrayList3, "add", new java.util.ArrayList()}, map3, str), new java.lang.Object[]{"upd", arrayList30, "add", new java.util.ArrayList()}, map3, "Item"), new java.lang.Object[]{"upd", arrayList14, "add", new java.util.ArrayList()}, map3, "Equipment"), new java.lang.Object[]{"upd", arrayList29, "add", new java.util.ArrayList()}, map3, "EquipmentPiece"), "upd", arrayList31, "add", new java.util.ArrayList()));
        map3.put("SkillPiece", com.sgscq.vpn.p5.z0("del", H(map), "upd", arrayList32, "add", new java.util.ArrayList()));
        map3.put("Atlas", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", arrayList18, "add", new java.util.ArrayList()));
        com.sgscq.vpn.z2.e(str4, "[Dungeon] delta team=" + arrayList3.size() + " generals=" + arrayList28.size() + " skills=" + arrayList12.size() + " items=" + arrayList30.size() + " equips=" + arrayList14.size() + " equipPieces=" + arrayList29.size() + " souls=" + arrayList31.size() + " skillPieces=" + arrayList32.size() + " atlas=" + arrayList18.size());
        return map3;
    }

    public static com.sgscq.vpn.battle.BattleUnit t0(java.util.Map map, com.sgscq.vpn.w1 w1Var, java.lang.String str, int i2, int i3, java.lang.String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        com.sgscq.vpn.handler.e eVar = new com.sgscq.vpn.handler.e(str, i2, i3);
        eVar.f812d = map;
        eVar.f814f = w1Var;
        eVar.f815g = str2;
        eVar.f816h = z;
        eVar.f817i = z2;
        eVar.f818j = !z2 || z3;
        eVar.f819k = z3;
        eVar.f820l = z4;
        eVar.a(500.0d, 300.0d, 200.0d);
        return com.sgscq.vpn.handler.f.a(eVar);
    }

    public static java.util.LinkedHashMap u(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.lang.String strValueOf;
        int i2;
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        java.util.Map mapJ0 = w1Var.J0(str);
        if (mapJ0 != null) {
            java.lang.Object obj = mapJ0.get("resource_id");
            strValueOf = (obj == null || "0".equals(java.lang.String.valueOf(obj))) ? str : java.lang.String.valueOf(obj);
            java.lang.Object obj2 = mapJ0.get("grade");
            if (obj2 != null) {
                try {
                    i2 = java.lang.Integer.parseInt(java.lang.String.valueOf(obj2));
                } catch (java.lang.NumberFormatException unused) {
                    i2 = 1;
                }
            }
            linkedHashMap.put("id", str);
            linkedHashMap.put("general_id", str);
            linkedHashMap.put("general_name", com.sgscq.vpn.p5.M(w1Var.R0(str)));
            linkedHashMap.put("general_level", 1);
            linkedHashMap.put("general_naturalskill_id", str);
            c.a.z(linkedHashMap, "resource_id", strValueOf, i2, "grade", i2, "general_quality");
            linkedHashMap.put("general_star", 1);
            linkedHashMap.put("card_type", 1);
            linkedHashMap.put("general_painting_id", str);
            linkedHashMap.put("dialog", com.sgscq.vpn.p5.M(w1Var.Y0("dialogname" + str + "01")));
            return linkedHashMap;
        }
        strValueOf = str;
        i2 = 1;
        linkedHashMap.put("id", str);
        linkedHashMap.put("general_id", str);
        linkedHashMap.put("general_name", com.sgscq.vpn.p5.M(w1Var.R0(str)));
        linkedHashMap.put("general_level", 1);
        linkedHashMap.put("general_naturalskill_id", str);
        c.a.z(linkedHashMap, "resource_id", strValueOf, i2, "grade", i2, "general_quality");
        linkedHashMap.put("general_star", 1);
        linkedHashMap.put("card_type", 1);
        linkedHashMap.put("general_painting_id", str);
        linkedHashMap.put("dialog", com.sgscq.vpn.p5.M(w1Var.Y0("dialogname" + str + "01")));
        return linkedHashMap;
    }

    public static java.util.LinkedHashMap u0(java.lang.String str, int i2, java.lang.String str2) {
        java.lang.Object[] objArr = new java.lang.Object[6];
        objArr[0] = "hpCur";
        objArr[1] = java.lang.Integer.valueOf(i2);
        objArr[2] = "hpMax";
        objArr[3] = java.lang.Integer.valueOf(i2);
        objArr[4] = "name";
        if (str2 == null) {
            str2 = str;
        }
        objArr[5] = str2;
        return com.sgscq.vpn.p5.z0("id", str, objArr);
    }

    public static java.util.LinkedHashMap v(java.lang.String str, int i2) {
        java.util.LinkedHashMap linkedHashMapR = c.a.r("pk_id", str, "id", str);
        linkedHashMapR.put("general_id", str);
        c.a.z(linkedHashMapR, "item_id", str, i2, "num", i2, "item_num");
        linkedHashMapR.put("item_type", 6);
        linkedHashMapR.put("type", 6);
        linkedHashMapR.put("is_new", java.lang.Boolean.TRUE);
        return linkedHashMapR;
    }

    public static void v0(int i2, java.util.Map map) {
        if (map == null || i2 < 0) {
            return;
        }
        java.lang.Object obj = map.get("init");
        if (obj instanceof java.util.Map) {
            java.util.Map map2 = (java.util.Map) obj;
            int iG0 = G0(map2.get("cards_size0"), 0);
            java.lang.Object obj2 = map2.get("cards");
            if (obj2 instanceof java.util.List) {
                java.util.List list = (java.util.List) obj2;
                int i3 = i2 + iG0;
                if (i3 < iG0 || i3 >= list.size()) {
                    return;
                }
                java.lang.Object obj3 = list.get(i3);
                if (obj3 instanceof java.util.Map) {
                    ((java.util.Map) obj3).put("isBoss", java.lang.Boolean.TRUE);
                }
            }
        }
    }

    public static java.util.LinkedHashMap w(int i2, java.lang.String str, java.util.Map map) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        linkedHashMap.put("pk_id", java.lang.String.valueOf(map.getOrDefault("pk_id", "")));
        linkedHashMap.put("id", str);
        c.a.z(linkedHashMap, "item_id", str, i2, "num", i2, "item_num");
        c.a.s(5, linkedHashMap, "type", 1, "level", 0, "effect_time");
        linkedHashMap.put("is_new", java.lang.Boolean.TRUE);
        return linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:38:0x011e  */
    public static java.util.ArrayList x(java.util.ArrayList arrayList, java.util.List list, com.sgscq.vpn.w1 w1Var, int i2) {
        boolean z;
        int i3;
        int iMax;
        int i4;
        int iMax2;
        java.lang.Object arrayList2;
        int i5 = i2;
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        java.util.List listSingletonList = arrayList.isEmpty() ? java.util.Collections.singletonList(1000) : arrayList;
        boolean z2 = true;
        int iMax3 = java.lang.Math.max(1, listSingletonList.size());
        java.util.ArrayList arrayList4 = new java.util.ArrayList(listSingletonList);
        int size = list.size();
        int iMax4 = java.lang.Math.max(1, i5 / java.lang.Math.max(1, size));
        int i6 = 0;
        int i7 = 0;
        while (i6 < i5 && i7 < size) {
            boolean z3 = (i6 == i5 + (-1) || i7 == size + (-1)) ? z2 : false;
            if ((z3 || i6 % 2 == 0) ? z2 : false) {
                int iM0 = M0(w1Var, (java.lang.String) list.get(i7), null);
                int i8 = i6 % iMax3;
                int i9 = iMax3 + i7;
                if (z3) {
                    i3 = 1;
                } else {
                    int i10 = iMax4 * 2;
                    i3 = 1;
                    if (i6 % i10 < i10 - 1) {
                        iMax = java.lang.Math.min(java.lang.Math.max(1, iM0 / java.lang.Math.max(1, iMax4)), java.lang.Math.max(1, iM0 - 1));
                        iMax2 = java.lang.Math.max(1, iM0 - iMax);
                        i4 = 0;
                    }
                    java.lang.Integer numValueOf = java.lang.Integer.valueOf(iMax2);
                    java.lang.Object[] objArr = new java.lang.Object[8];
                    objArr[0] = "hpMax";
                    objArr[1] = java.lang.Integer.valueOf(iM0);
                    objArr[2] = "hp";
                    objArr[3] = java.lang.Integer.valueOf(iMax);
                    objArr[4] = "event";
                    if (i4 != 0) {
                        arrayList2 = java.util.Collections.singletonList("death");
                    } else {
                        arrayList2 = new java.util.ArrayList();
                    }
                    objArr[5] = arrayList2;
                    objArr[6] = "cure";
                    objArr[7] = 0;
                    arrayList3.add(com.sgscq.vpn.p5.z0("from", java.util.Collections.singletonList(java.lang.Integer.valueOf(i8)), "to", java.util.Collections.singletonList(java.lang.Integer.valueOf(i9)), "skill", "Attack_Knife", "type", 0, "params", com.sgscq.vpn.p5.z0("to", java.util.Collections.singletonList(com.sgscq.vpn.p5.z0("hpCur", numValueOf, objArr)), new java.lang.Object[0])));
                    if (i4 != 0) {
                        i7++;
                    }
                    z = true;
                }
                iMax = java.lang.Math.max(i3, iM0);
                i4 = i3;
                iMax2 = 0;
                java.lang.Integer numValueOf2 = java.lang.Integer.valueOf(iMax2);
                java.lang.Object[] objArr2 = new java.lang.Object[8];
                objArr2[0] = "hpMax";
                objArr2[1] = java.lang.Integer.valueOf(iM0);
                objArr2[2] = "hp";
                objArr2[3] = java.lang.Integer.valueOf(iMax);
                objArr2[4] = "event";
                if (i4 != 0) {
                    arrayList2 = java.util.Collections.singletonList("death");
                } else {
                    arrayList2 = new java.util.ArrayList();
                }
                objArr2[5] = arrayList2;
                objArr2[6] = "cure";
                objArr2[7] = 0;
                arrayList3.add(com.sgscq.vpn.p5.z0("from", java.util.Collections.singletonList(java.lang.Integer.valueOf(i8)), "to", java.util.Collections.singletonList(java.lang.Integer.valueOf(i9)), "skill", "Attack_Knife", "type", 0, "params", com.sgscq.vpn.p5.z0("to", java.util.Collections.singletonList(com.sgscq.vpn.p5.z0("hpCur", numValueOf2, objArr2)), new java.lang.Object[0])));
                if (i4 != 0) {
                    i7++;
                }
                z = true;
            } else {
                if (i7 >= size) {
                    break;
                }
                int i11 = iMax3 + i7;
                int i12 = i6 % iMax3;
                int iIntValue = ((java.lang.Integer) listSingletonList.get(i12)).intValue();
                int iIntValue2 = ((java.lang.Integer) arrayList4.get(i12)).intValue();
                z = true;
                int iMin = java.lang.Math.min(java.lang.Math.max(1, iIntValue / java.lang.Math.max(2, i2 + 1)), java.lang.Math.max(1, iIntValue2 - 1));
                int iMax5 = java.lang.Math.max(1, iIntValue2 - iMin);
                arrayList4.set(i12, java.lang.Integer.valueOf(iMax5));
                arrayList3.add(com.sgscq.vpn.p5.z0("from", java.util.Collections.singletonList(java.lang.Integer.valueOf(i11)), "to", java.util.Collections.singletonList(java.lang.Integer.valueOf(i12)), "skill", "Attack_Knife", "type", 0, "params", com.sgscq.vpn.p5.z0("to", java.util.Collections.singletonList(com.sgscq.vpn.p5.z0("hpCur", java.lang.Integer.valueOf(iMax5), "hpMax", java.lang.Integer.valueOf(iIntValue), "hp", java.lang.Integer.valueOf(iMin), "event", new java.util.ArrayList(), "cure", 0)), new java.lang.Object[0])));
            }
            i6++;
            iMax3 = iMax3;
            i5 = i2;
            z2 = z;
            listSingletonList = listSingletonList;
        }
        return arrayList3;
    }

    public static java.util.LinkedHashMap x0(java.util.Map map, java.util.Map map2, com.sgscq.vpn.w1 w1Var) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        if (map2 == null) {
            return linkedHashMap;
        }
        java.lang.Object obj = map2.get("battle_skills");
        if (obj instanceof java.util.List) {
            java.util.List list = (java.util.List) obj;
            if (!list.isEmpty()) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                java.lang.Object obj2 = linkedHashMap.get("gSkill");
                if (obj2 instanceof java.util.List) {
                    arrayList.addAll((java.util.List) obj2);
                }
                for (java.lang.Object objZ0 : list) {
                    if (!(objZ0 instanceof java.util.Map)) {
                        if (objZ0 != null) {
                            objZ0 = com.sgscq.vpn.p5.z0("skill_id", java.lang.String.valueOf(objZ0), "skill_level", 1);
                        }
                    }
                    arrayList.add(objZ0);
                }
                linkedHashMap.put("gSkill", arrayList);
            }
        }
        java.lang.Object obj3 = map2.get("battle_lieutenants");
        if (obj3 instanceof java.util.List) {
            java.util.List list2 = (java.util.List) obj3;
            if (!list2.isEmpty()) {
                java.util.ArrayList arrayList2 = new java.util.ArrayList();
                java.lang.Object obj4 = linkedHashMap.get("bound_lieutenants");
                if (obj4 instanceof java.util.List) {
                    arrayList2.addAll((java.util.List) obj4);
                }
                for (java.lang.Object obj5 : list2) {
                    if (obj5 != null) {
                        java.lang.String strTrim = java.lang.String.valueOf(obj5).trim();
                        if (!strTrim.isEmpty()) {
                            java.util.LinkedHashMap linkedHashMapZ0 = com.sgscq.vpn.p5.z0("general_id", strTrim, new java.lang.Object[0]);
                            java.lang.String strT0 = w1Var.T0(strTrim);
                            if (strT0 != null && !strT0.isEmpty() && !"0".equals(strT0)) {
                                linkedHashMapZ0.put("general_naturalskill_id", strT0);
                            }
                            arrayList2.add(linkedHashMapZ0);
                        }
                    }
                }
                linkedHashMap.put("bound_lieutenants", arrayList2);
            }
        }
        return linkedHashMap;
    }

    public static java.util.LinkedHashMap y(int i2, java.lang.String str, java.util.Map map) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        linkedHashMap.put("pk_id", java.lang.String.valueOf(map != null ? map.getOrDefault("pk_id", "") : ""));
        linkedHashMap.put("id", str);
        linkedHashMap.put("skill_id", str);
        c.a.z(linkedHashMap, "item_id", str, i2, "num", i2, "skill_piece_num");
        linkedHashMap.put("item_num", java.lang.Integer.valueOf(i2));
        linkedHashMap.put("item_type", 7);
        linkedHashMap.put("type", 7);
        linkedHashMap.put("level", 1);
        linkedHashMap.put("is_new", java.lang.Boolean.TRUE);
        return linkedHashMap;
    }

    public static java.lang.String y0(java.lang.String str) {
        java.lang.String strT0 = T0(B0(str));
        if (strT0 == null || !strT0.startsWith("105") || strT0.length() < 10) {
            return strT0;
        }
        try {
            return strT0.substring(0, 5) + java.lang.String.format(java.util.Locale.ROOT, "%03d", java.lang.Integer.valueOf(java.lang.Integer.parseInt(strT0.substring(5, 8)) + 1)) + strT0.substring(8);
        } catch (java.lang.Exception unused) {
            return strT0;
        }
    }

    public static java.util.LinkedHashMap z(java.lang.String str, java.util.HashMap map) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        linkedHashMap.put("pk_id", java.lang.String.valueOf(map.getOrDefault("pk_id", "")));
        linkedHashMap.put("id", str);
        linkedHashMap.put("skill_id", str);
        c.a.z(linkedHashMap, "item_id", str, 1, "num", 1, "item_num");
        c.a.s(4, linkedHashMap, "item_type", 4, "type", 1, "level");
        linkedHashMap.put("is_new", java.lang.Boolean.TRUE);
        return linkedHashMap;
    }

    public static java.lang.String z0(java.lang.String str) {
        java.lang.String strA0 = A0(str);
        if (strA0 == null || !strA0.matches("5\\d{5}")) {
            return strA0;
        }
        try {
            return strA0.substring(0, 3) + java.lang.String.format(java.util.Locale.ROOT, "%03d", java.lang.Integer.valueOf(java.lang.Integer.parseInt(strA0.substring(3, 6)) + 1));
        } catch (java.lang.Exception unused) {
            return strA0;
        }
    }

    public final int C(java.util.Map map) {
        java.lang.Object obj;
        double d2;
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(this.f1016a.f901a);
        if (w1VarA1 != null) {
            java.lang.String[] strArr = {"user_level", "level", "roleLevel", "role_level"};
            int iMax = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= 4) {
                    obj = null;
                    break;
                }
                obj = map.get(strArr[i2]);
                if (obj != null && !java.lang.String.valueOf(obj).isEmpty()) {
                    break;
                }
                i2++;
            }
            int iMax2 = java.lang.Math.max(1, com.sgscq.vpn.cloud.m0.h1(obj, 1));
            w1VarA1.X1();
            java.util.Map mapJ2 = com.sgscq.vpn.w1.J2(iMax2, w1VarA1.E);
            if (mapJ2 != null) {
                try {
                    d2 = java.lang.Double.parseDouble(java.lang.String.valueOf(mapJ2.getOrDefault("ladder_fight_general_exp", "0")));
                } catch (java.lang.Exception unused) {
                    d2 = 0.0d;
                }
                iMax = java.lang.Math.max(0, (int) java.lang.Math.round(d2));
            }
            if (iMax > 0) {
                long j2 = (((((long) iMax) * 20002) + 134000) / 268000) * 1000 * 4;
                if (j2 >= 100) {
                    if (j2 > 2147483647L) {
                        return Integer.MAX_VALUE;
                    }
                    return (int) j2;
                }
            }
        }
        return 100;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ce  */
    public final double[] F(java.lang.String str, int i2, int i3, int i4, com.sgscq.vpn.handler.t tVar) {
        int i5;
        int i6;
        int i7;
        double dPow;
        int i8;
        java.util.HashMap mapX0;
        boolean zK0 = k0(str);
        int i9 = tVar.f991a;
        if (!zK0) {
            double d2 = tVar.f992b;
            double d3 = tVar.f993c;
            double d4 = tVar.f994d;
            double dMax = java.lang.Math.max(1.0d, i9);
            double dMax2 = java.lang.Math.max(1.0d, d2);
            double dMax3 = java.lang.Math.max(1.0d, d3);
            double dMax4 = java.lang.Math.max(1.0d, d4);
            double dQ1 = com.sgscq.vpn.p5.q1(i2, i3, i4) / dMax;
            double d5 = com.sgscq.vpn.p5.Q[1];
            int iMax = java.lang.Math.max(1, java.lang.Math.min(54, i2));
            double dMax5 = d5;
            int i10 = 1;
            while (i10 < iMax) {
                dMax5 = java.lang.Math.max(dMax5, com.sgscq.vpn.p5.t(i10));
                i10++;
                dMax3 = dMax3;
            }
            double dMax6 = java.lang.Math.max(1.0E-6d, java.lang.Math.max(dMax5, com.sgscq.vpn.p5.q1(iMax, i3, i4)) / dMax);
            double d6 = 520000.0d / dMax;
            double dS = com.sgscq.vpn.p5.s(d6, 140000.0d / dMax2);
            double dS2 = com.sgscq.vpn.p5.s(d6, 140000.0d / dMax4);
            double dS3 = com.sgscq.vpn.p5.s(d6, (90000.0d / dMax3) / 1.6900000000000002d);
            double[] dArr = new double[4];
            dArr[0] = dQ1;
            dArr[1] = java.lang.Math.pow(dMax6, dS);
            double dPow2 = java.lang.Math.pow(dMax6, dS3);
            double d7 = i2 >= 29 ? 1.3d : 1.0d;
            if (i2 >= 37) {
                d7 *= 1.3d;
            }
            dArr[2] = dPow2 * d7;
            dArr[3] = java.lang.Math.pow(dMax6, dS2);
            return dArr;
        }
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        boolean z = k0(str) && (mapX0 = com.sgscq.vpn.w1.a1(k0Var == null ? null : k0Var.f901a).x0(T0(str))) != null && java.lang.Boolean.TRUE.equals(mapX0.get("hidden"));
        java.lang.String strA0 = A0(T0(str));
        if (!k0(strA0) || strA0.length() < 8) {
            i5 = 0;
        } else {
            try {
                int i11 = java.lang.Integer.parseInt(strA0.substring(3, 5));
                i5 = java.lang.Integer.parseInt(strA0.substring(5, 8));
                if (i11 <= 0 || i5 <= 0) {
                    i5 = 0;
                } else {
                    int i12 = 1;
                    while (i12 < i11) {
                        if (i12 <= 4) {
                            i8 = 5;
                        } else if (i12 <= 14) {
                            i8 = 6;
                        } else {
                            i8 = i12 <= 23 ? 7 : 8;
                        }
                        i5 += i8;
                        i12++;
                    }
                }
            } catch (java.lang.Exception unused) {
            }
        }
        double dMax7 = ((((double) (java.lang.Math.max(1, i5) - 1)) * 0.25d) + 1.0d) * 3.0d;
        int iK = K(str);
        double dPow3 = java.lang.Math.pow(1.25d, java.lang.Math.max(0, iK / 10)) * dMax7;
        java.lang.String strA1 = A0(T0(str));
        if (!k0(strA1) || strA1.length() < 8) {
            i6 = 1;
        } else {
            try {
                i6 = java.lang.Integer.parseInt(strA1.substring(5, 8));
                if (i6 <= 0) {
                    i6 = 1;
                }
            } catch (java.lang.Exception unused2) {
            }
        }
        if (iK <= 4) {
            i7 = 5;
        } else if (iK <= 14) {
            i7 = 6;
        } else {
            i7 = iK <= 23 ? 7 : 8;
        }
        if ("1053500801".equals(T0(str))) {
            dPow = 4500000.0d;
        } else {
            int iMax2 = java.lang.Math.max(1, java.lang.Math.min(54, iK));
            double dU = com.sgscq.vpn.p5.u(iMax2);
            dPow = (iMax2 == 54 || i7 <= 1) ? dU : java.lang.Math.pow(com.sgscq.vpn.p5.u(iMax2 + 1) / dU, (((double) java.lang.Math.max(1, java.lang.Math.min(i7, i6))) - 1.0d) / (((double) i7) - 1.0d)) * dU;
        }
        double dMax8 = dPow / java.lang.Math.max(1.0d, i9);
        double d8 = z ? 3.0d * dPow3 : dPow3;
        return new double[]{dMax8, d8, dPow3, d8};
    }

    public final int I(java.lang.String str) {
        java.util.List listL0 = com.sgscq.vpn.w1.a1(this.f1016a.f901a).l0(A(str));
        java.lang.String strA0 = A0(T0(str));
        for (int i2 = 0; i2 < listL0.size(); i2++) {
            if (strA0.equals(A0((java.lang.String) listL0.get(i2)))) {
                return i2 + 1;
            }
        }
        int iG = G(strA0);
        if (iG > 0) {
            return iG;
        }
        return 1;
    }

    public final int N0(java.util.Map map) {
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        return k0Var.i(k0Var.i(k0Var.i(1, "roleLevel", map), "level", map), "user_level", map);
    }

    public final void Q0(java.lang.String str, java.util.Map map) {
        if (map == null || !com.sgscq.vpn.handler.x.A(com.sgscq.vpn.c7.b(), map)) {
            return;
        }
        this.f1016a.f904d.S0(str, map);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0046  */
    /* JADX WARN: Code duplicated, block: B:35:0x008b  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.util.ArrayList] */
    public final com.sgscq.vpn.cloud.k V(java.lang.String str) {
        int i2;
        ?? EmptyList;
        java.lang.String strT0 = T0(str);
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(this.f1016a.f901a);
        java.util.List listV0 = w1VarA1.v0(strT0);
        int i3 = 1;
        if (listV0.isEmpty()) {
            int i4 = java.lang.Integer.parseInt(str.substring(0, 3)) - 500;
            i3 = i4 >= 1 ? i4 : 1;
            java.lang.String strQ0 = com.sgscq.vpn.w1.q0(i3);
            if (i3 <= 2) {
                return new com.sgscq.vpn.cloud.k(java.util.Collections.singletonList(strQ0), java.util.Collections.emptyList());
            }
            if (i3 <= 4) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                arrayList.add(strQ0);
                arrayList.add(com.sgscq.vpn.w1.q0(i3 + 7));
                return new com.sgscq.vpn.cloud.k(arrayList, java.util.Collections.emptyList());
            }
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            arrayList2.add(strQ0);
            arrayList2.add(com.sgscq.vpn.w1.q0(i3 + 7));
            arrayList2.add(com.sgscq.vpn.w1.q0(i3 + 11));
            return new com.sgscq.vpn.cloud.k(arrayList2, java.util.Collections.emptyList());
        }
        if (strT0 != null && strT0.startsWith("105") && strT0.length() >= 5) {
            try {
                i2 = java.lang.Integer.parseInt(strT0.substring(3, 5));
            } catch (java.lang.NumberFormatException unused) {
                if (strT0 != null) {
                    i2 = 0;
                } else {
                    i2 = 0;
                }
            }
        } else if (strT0 != null || strT0.length() < 3) {
            i2 = 0;
        } else {
            try {
                i2 = java.lang.Integer.parseInt(strT0.substring(0, 3)) - 500;
            } catch (java.lang.NumberFormatException unused2) {
                i2 = 0;
            }
        }
        java.util.HashMap mapX0 = w1VarA1.x0(strT0);
        int size = listV0.size();
        if (mapX0 == null || size <= 0) {
            EmptyList = java.util.Collections.emptyList();
        } else {
            java.lang.Object obj = mapX0.get("battle_effects");
            if (obj instanceof java.util.List) {
                EmptyList = new java.util.ArrayList();
                java.util.List list = (java.util.List) obj;
                int i5 = 0;
                while (i5 < size) {
                    java.lang.Object obj2 = i5 < list.size() ? list.get(i5) : null;
                    EmptyList.add(obj2 instanceof java.util.Map ? new java.util.LinkedHashMap((java.util.Map) obj2) : java.util.Collections.emptyMap());
                    i5++;
                }
            } else {
                EmptyList = java.util.Collections.emptyList();
            }
        }
        if (listV0.isEmpty()) {
            return new com.sgscq.vpn.cloud.k(java.util.Collections.emptyList(), java.util.Collections.emptyList());
        }
        int iMin = java.lang.Math.min(3, listV0.size());
        java.util.ArrayList arrayList3 = new java.util.ArrayList(listV0.subList(0, iMin));
        java.util.List arrayList4 = listV0.size() > iMin ? new java.util.ArrayList(listV0.subList(iMin, listV0.size())) : java.util.Collections.emptyList();
        int i6 = i2 >= 50 ? 0 : 1;
        if (listV0.size() <= i6) {
            i6 = -1;
        } else {
            java.lang.String str2 = (java.lang.String) listV0.get(i6);
            if (str2 != null && !str2.trim().matches("164\\d{3}")) {
                i3 = 0;
            }
            if (i3 != 0) {
                i6 = -1;
            }
        }
        return new com.sgscq.vpn.cloud.k(i6 < iMin ? i6 : -1, arrayList3, arrayList4, (java.util.List) EmptyList);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0131  */
    public final java.lang.String V0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.lang.String str2;
        if (str.trim().isEmpty()) {
            return "";
        }
        java.lang.String strTrim = str.trim();
        java.util.Map mapU0 = U0(w1Var, strTrim);
        if (mapU0 == null || G0(mapU0.get("item_type"), -1) != 31) {
            return q0(strTrim) ? strTrim : "";
        }
        java.lang.String strValueOf = java.lang.String.valueOf(mapU0.getOrDefault("resource_id", ""));
        if (q0(strValueOf)) {
            return strValueOf;
        }
        java.lang.String strE = E(w1Var, mapU0.get("name"));
        if (strE.isEmpty()) {
            return "";
        }
        java.lang.String strO0 = "docs/game_data_json/generals.json";
        if (strE.trim().isEmpty()) {
            str2 = null;
        } else {
            try {
                com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
                strO0 = k0Var != null ? com.sgscq.vpn.o0.a(k0Var.f901a, "generals.json") : O0("docs/game_data_json/generals.json");
            } catch (java.lang.Exception unused) {
                strO0 = O0(strO0);
            }
            if (strO0 == null || strO0.trim().isEmpty()) {
                str2 = null;
            } else {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                try {
                    java.lang.Object objD = new a.o().d(strO0, java.lang.Object.class);
                    if (objD instanceof java.util.Map) {
                        for (java.util.Map.Entry entry : ((java.util.Map) objD).entrySet()) {
                            if (entry.getValue() instanceof java.util.Map) {
                                java.lang.String strValueOf2 = java.lang.String.valueOf(((java.util.Map) entry.getValue()).getOrDefault("id", entry.getKey()));
                                if (q0(strValueOf2) && strE.equals(E(w1Var, ((java.util.Map) entry.getValue()).get("name")))) {
                                    arrayList.add(strValueOf2);
                                }
                            }
                        }
                    } else if (objD instanceof java.util.List) {
                        for (java.lang.Object obj : (java.util.List) objD) {
                            if (obj instanceof java.util.Map) {
                                java.lang.String strValueOf3 = java.lang.String.valueOf(((java.util.Map) obj).getOrDefault("id", ""));
                                if (q0(strValueOf3) && strE.equals(E(w1Var, ((java.util.Map) obj).get("name")))) {
                                    arrayList.add(strValueOf3);
                                }
                            }
                        }
                    }
                    if (arrayList.size() == 1) {
                        str2 = (java.lang.String) arrayList.get(0);
                    } else {
                        str2 = null;
                    }
                } catch (java.lang.Exception unused2) {
                }
            }
        }
        return str2 == null ? "" : str2;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0057  */
    /* JADX WARN: Code duplicated, block: B:31:0x0061  */
    /* JADX WARN: Code duplicated, block: B:55:0x006a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x005b A[SYNTHETIC] */
    public final java.util.Map W0(com.sgscq.vpn.w1 w1Var, java.lang.String str) {
        java.util.List<java.util.Map> listEmptyList;
        java.lang.String strValueOf;
        if (w1Var.J0(str) != null) {
            return null;
        }
        if (this.f1019d == null) {
            com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
            try {
                java.lang.String strA = com.sgscq.vpn.o0.a(k0Var != null ? k0Var.f901a : null, "generals.json");
                if (strA == null || strA.isEmpty()) {
                    strA = O0("docs/game_data_json/generals.json");
                }
                if (!strA.isEmpty()) {
                    listEmptyList = (java.util.List) new a.o().e(strA, new com.google.gson.reflect.TypeToken<java.util.List<java.util.Map<java.lang.String, java.lang.Object>>>() { // from class: com.sgscq.vpn.handler.DungeonHandler$EnemyGeneralFallback$1
                    }.getType());
                    if (listEmptyList == null) {
                    }
                    java.util.HashMap map = new java.util.HashMap();
                    if (listEmptyList != null) {
                        for (java.util.Map map2 : listEmptyList) {
                            if (map2 == null) {
                                strValueOf = java.lang.String.valueOf(map2.getOrDefault("id", ""));
                                if (strValueOf.isEmpty() && !"null".equals(strValueOf)) {
                                    map.put(strValueOf, map2);
                                }
                            }
                        }
                    }
                    this.f1019d = new com.sgscq.vpn.handler.u(map);
                }
                listEmptyList = java.util.Collections.emptyList();
            } catch (java.lang.Exception unused) {
                listEmptyList = java.util.Collections.emptyList();
            }
            java.util.HashMap map3 = new java.util.HashMap();
            if (listEmptyList != null) {
                while (r0.hasNext()) {
                    if (map2 == null) {
                        strValueOf = java.lang.String.valueOf(map2.getOrDefault("id", ""));
                        if (strValueOf.isEmpty()) {
                        }
                    }
                }
            }
            this.f1019d = new com.sgscq.vpn.handler.u(map3);
        }
        java.util.Map map4 = this.f1019d.f998a;
        java.util.Map map5 = (java.util.Map) map4.get(str);
        java.util.Map map6 = (java.util.Map) map4.get("142007");
        if (map6 == null) {
            return map5;
        }
        java.util.HashMap map7 = new java.util.HashMap(map6);
        java.lang.String[] strArr = com.sgscq.vpn.handler.u.f997b;
        for (int i2 = 0; i2 < 7; i2++) {
            map7.put(strArr[i2], str);
        }
        if (map5 != null && map5.containsKey("weapon_effect")) {
            map7.put("weapon_effect", map5.get("weapon_effect"));
        }
        return map7;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:103:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:108:0x0211 A[EDGE_INSN: B:108:0x0211->B:109:0x0212 BREAK  A[LOOP:1: B:91:0x01c9->B:127:?], PHI: r5
      0x0211: PHI (r5v15 java.lang.String) = (r5v14 java.lang.String), (r5v24 java.lang.String), (r5v27 java.lang.String) binds: [B:86:0x01b6, B:130:0x0211, B:126:0x0211] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:111:0x0218  */
    /* JADX WARN: Code duplicated, block: B:112:0x0232  */
    /* JADX WARN: Code duplicated, block: B:120:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:? A[LOOP:1: B:91:0x01c9->B:127:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x0201 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x01f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x01f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:28:0x006c  */
    /* JADX WARN: Code duplicated, block: B:71:0x017c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0180  */
    /* JADX WARN: Code duplicated, block: B:79:0x0195  */
    /* JADX WARN: Code duplicated, block: B:82:0x019d  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:93:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:96:0x01de  */
    /* JADX WARN: Code duplicated, block: B:98:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:9:0x0025  */
    /* JADX WARN: Instruction removed from duplicated block: B:111:0x0218, please report this as an issue */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v41 */
    public final boolean X(int i2, java.lang.String str, java.util.ArrayList arrayList, java.util.Map map) {
        java.util.Map mapX0;
        java.util.Iterator it;
        int i3;
        java.util.Map map2;
        int i4;
        java.lang.String str2;
        java.util.Map map3;
        boolean z;
        java.util.Map mapU0;
        java.lang.String strValueOf;
        java.lang.Object obj;
        java.lang.Object obj2;
        java.util.Iterator it2;
        java.util.Map mapU1;
        java.io.File fileS;
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        if (k0Var != null) {
            try {
                mapX0 = X0(str, com.sgscq.vpn.o0.a(k0Var.f901a, "gift_box_contents.json"));
                if (mapX0 == null) {
                    fileS = S();
                    if (fileS.isFile()) {
                        try {
                            mapX0 = X0(str, com.sgscq.vpn.p5.W0(fileS));
                        } catch (java.lang.Exception unused) {
                            mapX0 = null;
                        }
                    } else {
                        mapX0 = null;
                    }
                }
            } catch (java.lang.Exception e2) {
                c.a.u(e2, new java.lang.StringBuilder("[Dungeon] gift box encrypted config failed: "), "SGSCQ_SRV");
            }
        } else {
            fileS = S();
            if (fileS.isFile()) {
                mapX0 = null;
            } else {
                mapX0 = X0(str, com.sgscq.vpn.p5.W0(fileS));
            }
        }
        if (mapX0 == null) {
            return false;
        }
        java.lang.Object obj3 = mapX0.get("add_list");
        if (!(obj3 instanceof java.util.List)) {
            return false;
        }
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var != null ? k0Var.f901a : null);
        ?? r5 = 1;
        int iMax = java.lang.Math.max(1, i2);
        java.util.Iterator it3 = ((java.util.List) obj3).iterator();
        while (it3.hasNext()) {
            java.lang.Object next = it3.next();
            if (next instanceof java.util.Map) {
                java.util.Map map4 = (java.util.Map) next;
                java.lang.String str3 = "";
                java.lang.String strJ = c.a.j(map4, "item_id", "", "id");
                if (strJ.isEmpty() || "null".equals(strJ)) {
                    map2 = mapX0;
                    i3 = iMax;
                    it = it3;
                } else {
                    it = it3;
                    int iG0 = G0(map4.get("num"), G0(map4.get("item_num"), r5)) * iMax;
                    i3 = iMax;
                    int iG1 = G0(map4.get("type"), 5);
                    if (iG1 == 1) {
                        java.lang.String strValueOf2 = java.lang.String.valueOf(mapX0.getOrDefault("resource_id", ""));
                        if (w1VarA1 == null || strJ.isEmpty() || strValueOf2.isEmpty() || strJ.equals(strValueOf2) || (mapU1 = U0(w1VarA1, strJ)) == null) {
                            map2 = mapX0;
                            i4 = iG0;
                            str2 = strValueOf2;
                            map3 = map4;
                        } else {
                            i4 = iG0;
                            map3 = map4;
                            if (G0(mapU1.get("item_type"), -1) != 31) {
                                map2 = mapX0;
                                str2 = strValueOf2;
                            } else {
                                if (q0(strValueOf2)) {
                                    z = true;
                                    map2 = mapX0;
                                    str2 = strValueOf2;
                                } else {
                                    java.lang.String strE = E(w1VarA1, mapX0.get("name"));
                                    map2 = mapX0;
                                    java.lang.String strE2 = E(w1VarA1, strValueOf2.concat("01"));
                                    java.lang.String strE3 = E(w1VarA1, mapU1.get("name"));
                                    str2 = strValueOf2;
                                    java.lang.String strE4 = E(w1VarA1, mapU1.get("desc"));
                                    if (!strE.isEmpty() && !strE2.isEmpty() && !strE3.isEmpty() && !strE4.isEmpty() && strE.replace("礼包", "").replace("武将牌", "").replace("*1", "").trim().equals(strE2) && strE2.equals(strE3)) {
                                        z = !strE4.equals(strE2);
                                    }
                                }
                                if (z) {
                                    str3 = str2;
                                } else if (strJ.isEmpty() && !"null".equalsIgnoreCase(strJ) && q0(strJ)) {
                                    str3 = strJ;
                                } else {
                                    mapU0 = U0(w1VarA1, strJ);
                                    if (mapU0 != null && c.a.A(mapU0, "item_type", java.lang.String.valueOf(31))) {
                                        strValueOf = java.lang.String.valueOf(mapU0.getOrDefault("resource_id", ""));
                                        if (q0(strValueOf)) {
                                            str3 = strValueOf;
                                            break;
                                        }
                                        obj = mapU0.get("effect_value");
                                        if (obj instanceof java.util.List) {
                                            it2 = ((java.util.List) obj).iterator();
                                            while (it2.hasNext()) {
                                                strValueOf = java.lang.String.valueOf(it2.next());
                                                if (q0(strValueOf)) {
                                                    str3 = strValueOf;
                                                    break;
                                                }
                                            }
                                        } else if (obj instanceof java.util.Map) {
                                            obj2 = ((java.util.Map) obj).get("add_list");
                                            if (obj2 instanceof java.util.List) {
                                                for (java.lang.Object obj4 : (java.util.List) obj2) {
                                                    if (obj4 instanceof java.util.Map) {
                                                        strValueOf = java.lang.String.valueOf(((java.util.Map) obj4).getOrDefault("id", ""));
                                                        if (q0(strValueOf)) {
                                                            str3 = strValueOf;
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (str3.isEmpty()) {
                                    com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] skip invalid general gift content gift_id=" + str + " content_id=" + strJ);
                                } else {
                                    W(map, w1VarA1, str3, i4, G0(map3.get("level"), 0), arrayList);
                                }
                            }
                        }
                        z = false;
                        if (z) {
                            str3 = str2;
                        } else if (strJ.isEmpty()) {
                            mapU0 = U0(w1VarA1, strJ);
                            if (mapU0 != null) {
                                strValueOf = java.lang.String.valueOf(mapU0.getOrDefault("resource_id", ""));
                                if (q0(strValueOf)) {
                                    str3 = strValueOf;
                                    break;
                                }
                                obj = mapU0.get("effect_value");
                                if (obj instanceof java.util.List) {
                                    it2 = ((java.util.List) obj).iterator();
                                    while (it2.hasNext()) {
                                        strValueOf = java.lang.String.valueOf(it2.next());
                                        if (q0(strValueOf)) {
                                            str3 = strValueOf;
                                            break;
                                        }
                                    }
                                } else if (obj instanceof java.util.Map) {
                                    obj2 = ((java.util.Map) obj).get("add_list");
                                    if (obj2 instanceof java.util.List) {
                                        while (r0.hasNext()) {
                                            if (obj4 instanceof java.util.Map) {
                                                strValueOf = java.lang.String.valueOf(((java.util.Map) obj4).getOrDefault("id", ""));
                                                if (q0(strValueOf)) {
                                                    str3 = strValueOf;
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            mapU0 = U0(w1VarA1, strJ);
                            if (mapU0 != null) {
                                strValueOf = java.lang.String.valueOf(mapU0.getOrDefault("resource_id", ""));
                                if (q0(strValueOf)) {
                                    str3 = strValueOf;
                                    break;
                                }
                                obj = mapU0.get("effect_value");
                                if (obj instanceof java.util.List) {
                                    it2 = ((java.util.List) obj).iterator();
                                    while (it2.hasNext()) {
                                        strValueOf = java.lang.String.valueOf(it2.next());
                                        if (q0(strValueOf)) {
                                            str3 = strValueOf;
                                            break;
                                        }
                                    }
                                } else if (obj instanceof java.util.Map) {
                                    obj2 = ((java.util.Map) obj).get("add_list");
                                    if (obj2 instanceof java.util.List) {
                                        while (r0.hasNext()) {
                                            if (obj4 instanceof java.util.Map) {
                                                strValueOf = java.lang.String.valueOf(((java.util.Map) obj4).getOrDefault("id", ""));
                                                if (q0(strValueOf)) {
                                                    str3 = strValueOf;
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (str3.isEmpty()) {
                            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] skip invalid general gift content gift_id=" + str + " content_id=" + strJ);
                        } else {
                            W(map, w1VarA1, str3, i4, G0(map3.get("level"), 0), arrayList);
                        }
                    } else {
                        map2 = mapX0;
                        Y(arrayList, map, com.sgscq.vpn.p5.z0("item_id", strJ, "item_num", java.lang.Integer.valueOf(iG0), "type", java.lang.Integer.valueOf(iG1)));
                    }
                }
            } else {
                map2 = mapX0;
                i3 = iMax;
                it = it3;
            }
            r5 = 1;
            it3 = it;
            iMax = i3;
            mapX0 = map2;
        }
        return r5;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ff  */
    public final void Y(java.util.ArrayList arrayList, java.util.Map map, java.util.LinkedHashMap linkedHashMap) {
        java.util.LinkedHashMap linkedHashMapQ;
        java.lang.String strValueOf = java.lang.String.valueOf(linkedHashMap.getOrDefault("item_id", ""));
        int i2 = 1;
        int iG0 = G0(linkedHashMap.get("item_num"), 1);
        if (strValueOf.isEmpty() || iG0 <= 0 || "100000".equals(strValueOf.trim())) {
            return;
        }
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var != null ? k0Var.f901a : null);
        int iG1 = G0(linkedHashMap.get("type"), G0(linkedHashMap.get("item_type"), 5));
        if (com.sgscq.vpn.p5.h0(strValueOf)) {
            com.sgscq.vpn.p5.c(iG0, strValueOf, map);
            linkedHashMapQ = o(iG0, com.sgscq.vpn.p5.p0(strValueOf) ? 16 : 1, strValueOf);
        } else if (iG1 == 6) {
            com.sgscq.vpn.w1.k(iG0, strValueOf, map);
            linkedHashMapQ = v(strValueOf, iG0);
        } else {
            if (n0(w1VarA1, strValueOf)) {
                java.lang.String strV0 = V0(w1VarA1, strValueOf);
                if (strV0.isEmpty()) {
                    return;
                }
                W(map, w1VarA1, strV0, iG0, 0, arrayList);
                return;
            }
            int i3 = 0;
            if (iG1 == 7) {
                if (!"361001".equals(strValueOf) && !"362001".equals(strValueOf) && !"363001".equals(strValueOf)) {
                    i2 = 0;
                }
                if (i2 == 0) {
                    linkedHashMapQ = y(iG0, strValueOf, a0(iG0, strValueOf, map));
                } else if (iG1 != 8) {
                    linkedHashMapQ = q(iG0, strValueOf, com.sgscq.vpn.cloud.m0.c1(iG0, strValueOf, map));
                } else {
                    linkedHashMapQ = q(iG0, strValueOf, com.sgscq.vpn.cloud.m0.c1(iG0, strValueOf, map));
                }
            } else if (iG1 != 8 || iG1 == 15 || l0(w1VarA1, strValueOf)) {
                linkedHashMapQ = q(iG0, strValueOf, com.sgscq.vpn.cloud.m0.c1(iG0, strValueOf, map));
            } else if (m0(w1VarA1, strValueOf)) {
                while (i3 < iG0) {
                    arrayList.add(r(strValueOf, b(strValueOf, map)));
                    i3++;
                }
                return;
            } else if (p0(w1VarA1, strValueOf)) {
                while (i3 < iG0) {
                    arrayList.add(z(strValueOf, e(strValueOf, map)));
                    i3++;
                }
                return;
            } else if (X(iG0, strValueOf, arrayList, map)) {
                return;
            } else {
                linkedHashMapQ = w(iG0, strValueOf, c(iG0, strValueOf, map));
            }
        }
        arrayList.add(linkedHashMapQ);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0078  */
    public final java.util.ArrayList Z(java.util.Map map, java.util.List list, boolean z) {
        boolean z2;
        int iG0;
        java.util.LinkedHashMap linkedHashMapV;
        java.lang.Object obj;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (list != null && !list.isEmpty()) {
            com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
            com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var != null ? k0Var.f901a : null);
            java.util.Iterator it = list.iterator();
            while (it.hasNext()) {
                java.util.Map map2 = (java.util.Map) it.next();
                int iNextInt = this.f1018c.nextInt(100);
                int i2 = 0;
                if (z) {
                    z2 = true;
                } else {
                    if (iNextInt >= 0) {
                        int iMax = 30;
                        if (map2 != null) {
                            java.lang.String[] strArr = {"drop_rate", "dropRate", "rate", "prob", "probability", "chance"};
                            int i3 = 0;
                            while (true) {
                                if (i3 >= 6) {
                                    obj = null;
                                    break;
                                }
                                java.lang.String str = strArr[i3];
                                if (map2.containsKey(str)) {
                                    obj = map2.get(str);
                                    break;
                                }
                                i3++;
                            }
                            iMax = java.lang.Math.max(5, java.lang.Math.min(30, G0(obj, 30)));
                        }
                        if (iNextInt < iMax) {
                            z2 = true;
                        }
                    }
                    z2 = false;
                }
                if (z2) {
                    java.lang.String strJ = c.a.j(map2, "id", "", "item_id");
                    if (!strJ.isEmpty() && !"null".equals(strJ) && !"100000".equals(strJ.trim()) && (iG0 = G0(map2.get("num"), G0(map2.get("item_num"), 1))) > 0) {
                        int iG1 = G0(map2.get("type"), 5);
                        if (iG1 == 6) {
                            com.sgscq.vpn.w1.k(iG0, strJ, map);
                            linkedHashMapV = v(strJ, iG0);
                        } else if (n0(w1VarA1, strJ)) {
                            if (iG1 == 5) {
                                java.lang.String strV0 = V0(w1VarA1, strJ);
                                if (!strV0.isEmpty()) {
                                    W(map, w1VarA1, strV0, iG0, 0, arrayList);
                                }
                            }
                        } else if (com.sgscq.vpn.p5.h0(strJ)) {
                            com.sgscq.vpn.p5.c(iG0, strJ, map);
                            linkedHashMapV = o(iG0, com.sgscq.vpn.p5.p0(strJ) ? 16 : 5, strJ);
                        } else if (iG1 == 8 || iG1 == 15 || l0(w1VarA1, strJ)) {
                            linkedHashMapV = q(iG0, strJ, com.sgscq.vpn.cloud.m0.c1(iG0, strJ, map));
                        } else if (iG1 == 3 || m0(w1VarA1, strJ)) {
                            while (i2 < iG0) {
                                arrayList.add(r(strJ, b(strJ, map)));
                                i2++;
                            }
                        } else if (iG1 == 4 || p0(w1VarA1, strJ)) {
                            while (i2 < iG0) {
                                arrayList.add(z(strJ, e(strJ, map)));
                                i2++;
                            }
                        } else if (!X(iG0, strJ, arrayList, map)) {
                            linkedHashMapV = w(iG0, strJ, c(iG0, strJ, map));
                        }
                        arrayList.add(linkedHashMapV);
                    }
                }
            }
        }
        return arrayList;
    }

    public final int b(java.lang.String str, java.util.Map map) {
        java.util.List listF0 = com.sgscq.vpn.w1.f0("Equipment", map);
        int iE2 = com.sgscq.vpn.w1.e2("Equipment", map);
        java.util.HashMap map2 = new java.util.HashMap();
        map2.put("pk_id", java.lang.String.valueOf(iE2));
        map2.put("equipment_id", str);
        map2.put("equip_id", str);
        map2.put("id", str);
        map2.put("eid", str);
        map2.put("level", 1);
        map2.put("refine_level", 1);
        map2.put("refine_exp", 0);
        map2.put("bore_list", new java.util.ArrayList());
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        com.sgscq.vpn.w1.a1(k0Var != null ? k0Var.f901a : null).R(str, map2);
        map2.put("general_pk_id", null);
        map2.put("general_id", null);
        map2.put("user_general_id", null);
        map2.put("is_wear", "0");
        map2.put("wear", "0");
        map2.put("get_time", java.lang.Long.valueOf(com.sgscq.vpn.c7.g()));
        map2.put("is_new", java.lang.Boolean.TRUE);
        listF0.add(map2);
        map.put("Equipment", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", listF0));
        com.sgscq.vpn.w1.b2("equipment_id", str, null, map);
        return iE2;
    }

    /* JADX WARN: Code duplicated, block: B:178:0x0546  */
    /* JADX WARN: Code duplicated, block: B:179:0x0549  */
    /* JADX WARN: Code duplicated, block: B:182:0x0556  */
    /* JADX WARN: Code duplicated, block: B:185:0x0572  */
    /* JADX WARN: Code duplicated, block: B:186:0x0575  */
    /* JADX WARN: Code duplicated, block: B:189:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:190:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:193:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:194:0x0601  */
    /* JADX WARN: Code duplicated, block: B:196:0x0604  */
    /* JADX WARN: Code duplicated, block: B:197:0x0609  */
    /* JADX WARN: Code duplicated, block: B:200:0x0631  */
    /* JADX WARN: Code duplicated, block: B:201:0x063a  */
    /* JADX WARN: Code duplicated, block: B:203:0x063d  */
    /* JADX WARN: Code duplicated, block: B:204:0x064d  */
    /* JADX WARN: Code duplicated, block: B:207:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:209:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:210:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:214:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:217:0x06d7  */
    /* JADX WARN: Code duplicated, block: B:218:0x0705  */
    /* JADX WARN: Code duplicated, block: B:219:0x0708  */
    /* JADX WARN: Code duplicated, block: B:222:0x0715  */
    /* JADX WARN: Code duplicated, block: B:237:0x07bd  */
    /* JADX WARN: Code duplicated, block: B:239:0x07cb  */
    /* JADX WARN: Code duplicated, block: B:245:0x07ec A[LOOP:11: B:243:0x07e6->B:245:0x07ec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:247:0x0846  */
    /* JADX WARN: Code duplicated, block: B:250:0x0856  */
    /* JADX WARN: Code duplicated, block: B:251:0x0863  */
    /* JADX WARN: Code duplicated, block: B:254:0x0870  */
    /* JADX WARN: Code duplicated, block: B:259:0x087f  */
    /* JADX WARN: Code duplicated, block: B:261:0x0886  */
    /* JADX WARN: Code duplicated, block: B:262:0x0892  */
    /* JADX WARN: Code duplicated, block: B:265:0x08a9  */
    /* JADX WARN: Code duplicated, block: B:267:0x08c3  */
    /* JADX WARN: Code duplicated, block: B:275:0x0904  */
    /* JADX WARN: Code duplicated, block: B:276:0x0909  */
    /* JADX WARN: Code duplicated, block: B:280:0x0917  */
    /* JADX WARN: Code duplicated, block: B:286:0x0933  */
    /* JADX WARN: Code duplicated, block: B:289:0x0940  */
    /* JADX WARN: Code duplicated, block: B:291:0x094a  */
    /* JADX WARN: Code duplicated, block: B:292:0x095b  */
    /* JADX WARN: Code duplicated, block: B:293:0x0962  */
    /* JADX WARN: Code duplicated, block: B:296:0x097c  */
    /* JADX WARN: Code duplicated, block: B:299:0x098d A[LOOP:9: B:294:0x0976->B:299:0x098d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:303:0x09ab  */
    /* JADX WARN: Code duplicated, block: B:309:0x09e6 A[LOOP:10: B:307:0x09e0->B:309:0x09e6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:310:0x0a09  */
    /* JADX WARN: Code duplicated, block: B:314:0x0a27 A[LOOP:2: B:312:0x0a21->B:314:0x0a27, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:317:0x0a4f  */
    /* JADX WARN: Code duplicated, block: B:323:0x0a69  */
    /* JADX WARN: Code duplicated, block: B:326:0x0a70  */
    /* JADX WARN: Code duplicated, block: B:328:0x0a73  */
    /* JADX WARN: Code duplicated, block: B:331:0x0a95  */
    /* JADX WARN: Code duplicated, block: B:335:0x0aa9  */
    /* JADX WARN: Code duplicated, block: B:337:0x0ab2  */
    /* JADX WARN: Code duplicated, block: B:340:0x0ac6  */
    /* JADX WARN: Code duplicated, block: B:345:0x0b3d  */
    /* JADX WARN: Code duplicated, block: B:349:0x0c07  */
    /* JADX WARN: Code duplicated, block: B:351:0x0c15  */
    /* JADX WARN: Code duplicated, block: B:352:0x0c1e A[PHI: r0
      0x0c1e: PHI (r0v33 com.sgscq.vpn.handler.j) = (r0v32 com.sgscq.vpn.handler.j), (r0v73 com.sgscq.vpn.handler.j) binds: [B:348:0x0c05, B:350:0x0c13] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:355:0x0c24  */
    /* JADX WARN: Code duplicated, block: B:356:0x0c46  */
    /* JADX WARN: Code duplicated, block: B:359:0x0c62  */
    /* JADX WARN: Code duplicated, block: B:361:0x0c76  */
    /* JADX WARN: Code duplicated, block: B:362:0x0c7d  */
    /* JADX WARN: Code duplicated, block: B:365:0x0ca7  */
    /* JADX WARN: Code duplicated, block: B:366:0x0caa  */
    /* JADX WARN: Code duplicated, block: B:370:0x0cc2  */
    /* JADX WARN: Code duplicated, block: B:374:0x0cd3  */
    /* JADX WARN: Code duplicated, block: B:377:0x0ced  */
    /* JADX WARN: Code duplicated, block: B:378:0x0cf3  */
    /* JADX WARN: Code duplicated, block: B:381:0x0d02  */
    /* JADX WARN: Code duplicated, block: B:384:0x0d09  */
    /* JADX WARN: Code duplicated, block: B:387:0x0d10  */
    /* JADX WARN: Code duplicated, block: B:390:0x0d4b  */
    /* JADX WARN: Code duplicated, block: B:391:0x0d55  */
    /* JADX WARN: Code duplicated, block: B:393:0x0d59 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:394:0x0d7f  */
    /* JADX WARN: Code duplicated, block: B:400:0x0e18  */
    /* JADX WARN: Code duplicated, block: B:403:0x0e39  */
    /* JADX WARN: Code duplicated, block: B:405:0x0e42  */
    /* JADX WARN: Code duplicated, block: B:408:0x0e51  */
    /* JADX WARN: Code duplicated, block: B:412:0x0e5e  */
    /* JADX WARN: Code duplicated, block: B:415:0x0e70 A[Catch: Exception -> 0x0e9c, TryCatch #7 {Exception -> 0x0e9c, blocks: (B:413:0x0e66, B:415:0x0e70, B:418:0x0e7b), top: B:489:0x0e66 }] */
    /* JADX WARN: Code duplicated, block: B:417:0x0e75  */
    /* JADX WARN: Code duplicated, block: B:418:0x0e7b A[Catch: Exception -> 0x0e9c, TRY_LEAVE, TryCatch #7 {Exception -> 0x0e9c, blocks: (B:413:0x0e66, B:415:0x0e70, B:418:0x0e7b), top: B:489:0x0e66 }] */
    /* JADX WARN: Code duplicated, block: B:422:0x0e87  */
    /* JADX WARN: Code duplicated, block: B:424:0x0e8e  */
    /* JADX WARN: Code duplicated, block: B:430:0x0ea0 A[PHI: r9 r10
      0x0ea0: PHI (r9v19 java.lang.String) = (r9v17 java.lang.String), (r9v20 java.lang.String), (r9v21 java.lang.String), (r9v22 java.lang.String) binds: [B:429:0x0e9c, B:428:0x0e99, B:471:0x0ea0, B:426:0x0e96] A[DONT_GENERATE, DONT_INLINE]
      0x0ea0: PHI (r10v20 java.lang.String) = (r10v18 java.lang.String), (r10v21 java.lang.String), (r10v25 java.lang.String), (r10v26 java.lang.String) binds: [B:429:0x0e9c, B:428:0x0e99, B:471:0x0ea0, B:426:0x0e96] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:434:0x0eb0 A[Catch: Exception -> 0x0ece, TryCatch #1 {Exception -> 0x0ece, blocks: (B:432:0x0ea6, B:434:0x0eb0, B:435:0x0eb3, B:441:0x0ec7, B:438:0x0eb9, B:440:0x0ec3), top: B:477:0x0ea6 }] */
    /* JADX WARN: Code duplicated, block: B:437:0x0eb7  */
    /* JADX WARN: Code duplicated, block: B:438:0x0eb9 A[Catch: Exception -> 0x0ece, TryCatch #1 {Exception -> 0x0ece, blocks: (B:432:0x0ea6, B:434:0x0eb0, B:435:0x0eb3, B:441:0x0ec7, B:438:0x0eb9, B:440:0x0ec3), top: B:477:0x0ea6 }] */
    /* JADX WARN: Code duplicated, block: B:440:0x0ec3 A[Catch: Exception -> 0x0ece, TryCatch #1 {Exception -> 0x0ece, blocks: (B:432:0x0ea6, B:434:0x0eb0, B:435:0x0eb3, B:441:0x0ec7, B:438:0x0eb9, B:440:0x0ec3), top: B:477:0x0ea6 }] */
    /* JADX WARN: Code duplicated, block: B:499:0x06c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:501:0x0a5c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:512:0x0aa7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:513:0x0aa1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:514:? A[LOOP:3: B:329:0x0a89->B:514:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:515:0x0ccf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:518:0x0aee A[EDGE_INSN: B:518:0x0aee->B:344:0x0aee BREAK  A[LOOP:5: B:338:0x0abc->B:343:0x0ae5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:522:0x08d2 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:526:0x0923 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:528:0x0911 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:530:0x09d0 A[EDGE_INSN: B:530:0x09d0->B:306:0x09d0 BREAK  A[LOOP:8: B:284:0x092b->B:305:0x09c8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:533:0x0990 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:534:0x0991 A[EDGE_INSN: B:534:0x0991->B:301:0x0991 BREAK  A[LOOP:9: B:294:0x0976->B:299:0x098d], SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:217:0x06d7, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:291:0x094a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:309:0x09e6, please report this as an issue */
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
    public final byte[] b0(java.lang.String str, java.util.Map map) {
        com.sgscq.vpn.handler.k0 k0Var;
        java.lang.String str2;
        java.lang.String str3;
        boolean zD;
        java.lang.Object obj;
        java.lang.String str4;
        int i2;
        int i3;
        int i4;
        int iCalculate;
        int iMax;
        int i5;
        int i6;
        com.sgscq.vpn.handler.k0 k0Var2;
        int iH;
        int iN2;
        int iFloor;
        int iB0;
        boolean z;
        int iMax2;
        int iMax3;
        int iMax4;
        long j2;
        long j3;
        int i7;
        int i8;
        int i9;
        long jG;
        java.util.LinkedHashMap linkedHashMapU;
        long j4;
        boolean zK0;
        java.util.LinkedHashMap linkedHashMap;
        int i10;
        java.lang.String str5;
        int i11;
        long j5;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z2;
        com.sgscq.vpn.handler.x xVar;
        java.util.ArrayList arrayList;
        java.lang.String str6;
        java.util.ArrayList arrayList2;
        java.lang.String str7;
        java.lang.String str8;
        com.sgscq.vpn.handler.k0 k0Var3;
        com.sgscq.vpn.handler.v vVar;
        java.util.ArrayList arrayList3;
        java.util.Iterator it;
        java.util.Map map2;
        java.lang.String str9;
        com.sgscq.vpn.handler.v vVar2;
        java.lang.String str10;
        java.util.Map map3;
        java.util.List listD;
        java.util.List listB;
        java.util.LinkedHashMap linkedHashMap2;
        com.sgscq.vpn.handler.j jVar;
        java.lang.String strS1;
        com.sgscq.vpn.t6 t6Var;
        com.sgscq.vpn.handler.v vVar3;
        java.util.HashMap mapS;
        java.util.List list;
        java.lang.String str11;
        java.util.LinkedHashMap linkedHashMap3;
        java.lang.String str12;
        java.lang.String str13;
        com.sgscq.vpn.handler.j jVarD;
        java.util.List list2;
        java.util.ArrayList arrayList4;
        java.util.List list3;
        java.util.HashMap mapU;
        java.lang.String strJ;
        java.lang.String str14;
        com.sgscq.vpn.y1 y1Var;
        java.lang.String str15;
        java.lang.String str16;
        java.lang.String strTrim;
        java.lang.String str17;
        com.sgscq.vpn.w1 w1VarA1;
        java.lang.String strTrim2;
        com.sgscq.vpn.w1 w1VarA2;
        java.lang.Object obj2;
        java.util.Map mapZ0;
        java.lang.Object obj3;
        java.util.List listO;
        java.lang.String strValueOf;
        java.util.Iterator it2;
        java.lang.String str18;
        int i16;
        boolean z3;
        boolean zEquals;
        java.util.List listF0;
        java.util.Iterator it3;
        java.util.Iterator it4;
        int iMax5;
        java.util.Map map4;
        java.util.Map map5;
        java.util.ArrayList arrayList5;
        java.util.Iterator it5;
        java.lang.String strA0;
        java.lang.String strV0;
        java.lang.String strV1;
        java.util.List<java.lang.String> listEmptyList;
        java.util.Iterator it6;
        boolean zHasNext;
        java.util.ArrayList arrayList6;
        java.lang.String str19;
        com.sgscq.vpn.w1 w1VarA3;
        java.util.Map mapH;
        java.lang.String strValueOf2;
        java.util.Iterator it7;
        java.util.Map map6;
        java.util.Iterator it8;
        java.lang.String strJ2;
        java.util.LinkedHashMap linkedHashMapW0;
        java.lang.String strA1;
        com.sgscq.vpn.w1 w1VarA4;
        java.util.LinkedHashMap linkedHashMap4;
        java.util.Iterator it9;
        java.lang.Object obj4;
        java.util.Map mapU1;
        int iX;
        java.util.LinkedHashMap linkedHashMapZ0;
        java.lang.String strB;
        int i17;
        int i18;
        java.lang.String str20;
        int iC;
        int i19;
        com.sgscq.vpn.y1 y1Var2;
        java.lang.String str21;
        java.lang.String str22;
        java.lang.String strTrim3;
        java.lang.String str23;
        java.lang.String strTrim4;
        java.util.Map mapU2;
        java.lang.String strO;
        int i20;
        if (str == null) {
            return null;
        }
        boolean zEquals2 = "map.getUserMap".equals(str);
        com.sgscq.vpn.handler.k0 k0Var4 = this.f1016a;
        if (zEquals2) {
            java.lang.String strE = k0Var4.e(map);
            java.lang.String strC0 = C0((java.lang.String) map.getOrDefault("map_id", ""));
            com.sgscq.vpn.h5 h5Var = k0Var4.f904d;
            java.util.Map mapW0 = h5Var.w0(strE);
            Q0(strE, mapW0);
            if (mapW0 != null && R0(mapW0)) {
                k0Var4.f904d.S0(strE, mapW0);
            }
            if (strC0 == null || strC0.isEmpty()) {
                java.lang.String strZ = h5Var.Z();
                java.util.Map mapW1 = strE == null ? null : h5Var.w0(strE);
                if (mapW1 != null) {
                    java.lang.String strH0 = com.sgscq.vpn.h5.H0(com.sgscq.vpn.h5.N0("user_map_step", "", mapW1));
                    if (!strH0.isEmpty()) {
                        strZ = strH0;
                    }
                }
                strO = h5Var.o(strZ, mapW1, false);
                i20 = 0;
            } else {
                strO = h5Var.q(strE, strC0);
                i20 = 0;
            }
            com.sgscq.vpn.y1 y1Var3 = new com.sgscq.vpn.y1();
            y1Var3.e("error_code", i20);
            y1Var3.e("ret", i20);
            y1Var3.e("code", i20);
            y1Var3.g("result", true);
            y1Var3.f("msg", "success");
            y1Var3.i("map_info", strO);
            return k0Var4.n(y1Var3.b());
        }
        if ("chapter.getChapterInfo".equals(str)) {
            java.lang.String strE2 = k0Var4.e(map);
            java.lang.String strC1 = C0((java.lang.String) map.getOrDefault("map_id", ""));
            com.sgscq.vpn.h5 h5Var2 = k0Var4.f904d;
            java.util.Map mapW2 = h5Var2.w0(strE2);
            Q0(strE2, mapW2);
            if (mapW2 != null && R0(mapW2)) {
                k0Var4.f904d.S0(strE2, mapW2);
            }
            java.lang.String strQ = h5Var2.q(strE2, strC1);
            java.lang.String strH = h5Var2.h(strC1, strE2 == null ? null : h5Var2.w0(strE2));
            com.sgscq.vpn.y1 y1Var4 = new com.sgscq.vpn.y1();
            y1Var4.e("error_code", 0);
            y1Var4.e("ret", 0);
            y1Var4.e("code", 0);
            y1Var4.g("result", true);
            y1Var4.f("msg", "success");
            y1Var4.i("map_info", strQ);
            y1Var4.i("chapter_info", strH);
            y1Var4.i("chapter_detail", strH);
            return k0Var4.n(y1Var4.b());
        }
        boolean zEquals3 = "dungeon.fightBefore".equals(str);
        java.lang.String str24 = "";
        com.sgscq.vpn.handler.x xVar2 = this.f1017b;
        if (zEquals3) {
            java.lang.String strE3 = k0Var4.e(map);
            java.lang.String strU = U(map);
            java.lang.String str25 = (java.lang.String) map.getOrDefault("position", "1");
            java.util.Map mapW3 = k0Var4.f904d.w0(strE3);
            Q0(strE3, mapW3);
            if (mapW3 != null) {
                i18 = k0Var4.i(k0Var4.d(), "user_power", mapW3);
                i17 = k0Var4.i(0, "user_power_date", mapW3);
            } else {
                i17 = 0;
                i18 = 0;
            }
            int i21 = xVar2.i(strU, mapW3);
            int i22 = i17;
            com.sgscq.vpn.handler.k0 k0Var5 = xVar2.f1026a;
            if (mapW3 == null) {
                java.util.Map mapW4 = k0Var5.f904d.w0(strE3);
                if (mapW4 == null) {
                    mapU2 = new java.util.HashMap();
                    str20 = "position";
                } else {
                    str20 = "position";
                    if (com.sgscq.vpn.handler.x.A(com.sgscq.vpn.c7.b(), mapW4)) {
                        k0Var5.f904d.S0(strE3, mapW4);
                    }
                    java.lang.Object obj5 = mapW4.get("dungeon_times");
                    if (obj5 instanceof java.util.Map) {
                        mapU2 = (java.util.Map) obj5;
                    } else if (obj5 instanceof java.lang.String) {
                        try {
                            mapU2 = com.sgscq.vpn.p5.u1((java.lang.String) obj5);
                        } catch (java.lang.Exception unused) {
                            mapU2 = new java.util.HashMap();
                        }
                    } else {
                        mapU2 = new java.util.HashMap();
                    }
                }
                iC = java.lang.Math.max(0, i21 - com.sgscq.vpn.handler.x.x(strU, mapU2));
            } else {
                str20 = "position";
                iC = xVar2.c(strU, mapW3);
            }
            if (iC < 0) {
                iC = 0;
            }
            int iJ = xVar2.j(strU);
            boolean zE0 = e0(strU, mapW3);
            boolean z4 = i18 >= iJ && (iC > 0 || zE0);
            try {
                i19 = java.lang.Integer.parseInt(str25);
            } catch (java.lang.NumberFormatException unused2) {
                i19 = 1;
            }
            boolean z5 = z4;
            if (i18 < iJ) {
                y1Var2 = new com.sgscq.vpn.y1();
                y1Var2.e("error_code", -1);
                y1Var2.e("ret", -1);
                y1Var2.e("code", -1);
                y1Var2.g("result", false);
                y1Var2.f("msg", "体力不足");
                com.sgscq.vpn.y1 y1VarH = y1Var2.h("fight_before_info");
                y1VarH.f("dungeonId", strU);
                y1VarH.e(str20, i19);
                y1VarH.e("maxTimes", i21);
                y1VarH.e("buyTimesCost", 0);
                if (zE0) {
                    iC = java.lang.Math.max(1, iC);
                }
                y1VarH.e("leftTimes", iC);
                y1VarH.e("powerCost", iJ);
                y1VarH.e("curPower", i18);
                y1VarH.e("user_power_date", i22);
                y1VarH.g("canFight", false);
                y1VarH.b();
            } else {
                int i23 = iC;
                int i24 = i18;
                java.util.List listD2 = xVar2.d(strU);
                java.util.List listB2 = xVar2.b(strU);
                y1Var2 = new com.sgscq.vpn.y1();
                y1Var2.e("error_code", 0);
                y1Var2.e("ret", 0);
                y1Var2.e("code", 0);
                y1Var2.g("result", true);
                y1Var2.f("msg", "success");
                com.sgscq.vpn.y1 y1VarH2 = y1Var2.h("fight_before_info");
                y1VarH2.f("dungeonId", strU);
                y1VarH2.e(str20, i19);
                y1VarH2.e("maxTimes", i21);
                y1VarH2.e("buyTimesCost", 0);
                int iMax6 = i23;
                if (zE0) {
                    iMax6 = java.lang.Math.max(1, iMax6);
                }
                y1VarH2.e("leftTimes", iMax6);
                y1VarH2.e("powerCost", iJ);
                y1VarH2.e("curPower", i24);
                y1VarH2.e("user_power_date", i22);
                y1VarH2.g("canFight", z5);
                y1VarH2.b();
                if (!listD2.isEmpty() || !listB2.isEmpty()) {
                    java.util.LinkedHashMap linkedHashMapQ = c.a.q("dungeon_id", strU);
                    try {
                        com.sgscq.vpn.w1 w1VarA5 = com.sgscq.vpn.w1.a1(k0Var5.f901a);
                        if (w1VarA5.C == null) {
                            w1VarA5.J1();
                        }
                        if (strU == null) {
                            strTrim3 = str24;
                            str21 = "01";
                            str22 = "\\d{6}";
                        } else {
                            strTrim3 = strU.trim();
                            str22 = "\\d{6}";
                            try {
                                if (strTrim3.matches(str22)) {
                                    str21 = "01";
                                    try {
                                        strTrim3 = strTrim3.concat(str21);
                                    } catch (java.lang.Exception unused3) {
                                    }
                                } else {
                                    str21 = "01";
                                }
                            } catch (java.lang.Exception unused4) {
                                str21 = "01";
                            }
                        }
                        if (!w1VarA5.C.containsKey(strTrim3)) {
                            strTrim3 = null;
                        }
                    } catch (java.lang.Exception unused5) {
                        str21 = "01";
                        str22 = "\\d{6}";
                    }
                    linkedHashMapQ.put("before_dialog_id", strTrim3);
                    try {
                        com.sgscq.vpn.w1 w1VarA6 = com.sgscq.vpn.w1.a1(k0Var5.f901a);
                        if (w1VarA6.C == null) {
                            w1VarA6.J1();
                        }
                        java.util.HashMap map7 = w1VarA6.C;
                        if (strU == null) {
                            strTrim4 = str24;
                        } else {
                            strTrim4 = strU.trim();
                            if (strTrim4.matches(str22)) {
                                strTrim4 = strTrim4.concat(str21);
                            }
                        }
                        str23 = (java.lang.String) map7.get(strTrim4);
                    } catch (java.lang.Exception unused6) {
                        str23 = null;
                    }
                    linkedHashMapQ.put("after_dialog_id", str23);
                    linkedHashMapQ.put("before", listD2);
                    linkedHashMapQ.put("after", listB2);
                    y1Var2.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ));
                }
            }
            return k0Var4.n(y1Var2.b());
        }
        if (!"dungeon.fight".equals(str)) {
            if ("dungeon.multiKill".equals(str)) {
                return c0(map, false);
            }
            if (!"dungeon.multiKillSpecialInfo".equals(str)) {
                if ("dungeon.multiKillSpecial".equals(str)) {
                    return c0(map, true);
                }
                if ("dungeon.openBox".equals(str)) {
                    return d0(map);
                }
                return null;
            }
            java.util.ArrayList arrayListJ0 = J0();
            java.util.ArrayList arrayList7 = new java.util.ArrayList(10);
            int[] iArr = com.sgscq.vpn.p5.J;
            for (int i25 = 0; i25 < 10; i25++) {
                arrayList7.add(java.lang.Integer.valueOf(iArr[i25]));
            }
            java.util.LinkedHashMap linkedHashMap5 = new java.util.LinkedHashMap();
            c.a.s(0, linkedHashMap5, "error_code", 0, "ret", 0, "code");
            linkedHashMap5.put("result", java.lang.Boolean.TRUE);
            linkedHashMap5.put("msg", "success");
            linkedHashMap5.put("peach_price_list", arrayListJ0);
            linkedHashMap5.put("challenge_price_list", arrayList7);
            linkedHashMap5.put("PeachPriceList", arrayListJ0);
            linkedHashMap5.put("ChallengePiceList", arrayList7);
            return k0Var4.n(com.sgscq.vpn.p5.s1(linkedHashMap5));
        }
        java.lang.String strE4 = k0Var4.e(map);
        java.lang.String strU2 = U(map);
        com.sgscq.vpn.h5 h5Var3 = k0Var4.f904d;
        java.util.Map mapW5 = h5Var3.w0(strE4);
        if (mapW5 != null) {
            Q0(strE4, mapW5);
            int i26 = xVar2.i(strU2, mapW5);
            com.sgscq.vpn.handler.x.A(com.sgscq.vpn.c7.b(), mapW5);
            int iX2 = com.sgscq.vpn.handler.x.x(strU2, com.sgscq.vpn.handler.x.k(mapW5));
            int iC2 = xVar2.c(strU2, mapW5);
            int iJ2 = xVar2.j(strU2);
            int i27 = k0Var4.i(k0Var4.d(), "user_power", mapW5);
            int i28 = k0Var4.i(0, "user_power_date", mapW5);
            if (i27 >= iJ2) {
                k0Var = k0Var4;
                boolean zE1 = e0(strU2, mapW5);
                if (iC2 <= 0) {
                    if (iX2 >= i26 && !zE1) {
                        com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] fight max times reached: " + iX2 + " >= " + i26);
                        linkedHashMapZ0 = com.sgscq.vpn.p5.z0("error_code", -2, "ret", -2, "code", -2, "result", java.lang.Boolean.FALSE, "msg", "挑战次数不足");
                    }
                }
                com.sgscq.vpn.handler.k0 k0Var6 = k0Var;
                boolean z6 = !e0(strU2, mapW5);
                android.content.Context context = k0Var6.f901a;
                java.util.List listN1 = com.sgscq.vpn.w1.a1(context).n1(strU2);
                java.util.ArrayList arrayList8 = new java.util.ArrayList();
                if (listN1 != null && !listN1.isEmpty()) {
                    java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
                    java.util.Iterator it10 = listN1.iterator();
                    while (it10.hasNext()) {
                        java.util.Iterator it11 = it10;
                        java.lang.String str26 = (java.lang.String) it10.next();
                        if (str26 != null && !str26.isEmpty() && linkedHashSet.add(str26)) {
                            arrayList8.add(str26);
                        }
                        it10 = it11;
                    }
                }
                com.sgscq.vpn.handler.s sVarB1 = b1(strU2, arrayList8, mapW5);
                java.util.Map map8 = sVarB1.f981a;
                if (context != null) {
                    str2 = "ret";
                    try {
                        str3 = "error_code";
                        try {
                            zD = new com.sgscq.vpn.h(0, context).d(3);
                        } catch (java.lang.RuntimeException unused7) {
                            zD = false;
                        }
                    } catch (java.lang.RuntimeException unused8) {
                        str3 = "error_code";
                    }
                    if (map8 == null) {
                        str4 = "user_power_date";
                    } else {
                        obj = map8.get("init");
                        str4 = "user_power_date";
                        if (obj instanceof java.util.Map) {
                            ((java.util.Map) obj).put("skipRounds", java.lang.Integer.valueOf(zE1 ? 1 : 0));
                            com.sgscq.vpn.p5.h(map8, zD);
                        }
                    }
                    int i29 = sVarB1.f982b;
                    i2 = sVarB1.f985e;
                    i3 = sVarB1.f986f;
                    int iCeilPercent = com.sgscq.vpn.battle.BattleStarCalculator.ceilPercent(i2, i3);
                    if (sVarB1.f987g) {
                        i4 = 1;
                        iCalculate = com.sgscq.vpn.battle.BattleStarCalculator.calculate(true, i2, i3);
                    } else {
                        iCalculate = 0;
                        i4 = 1;
                    }
                    l.c cVarH = h(k0Var6.i(i4, "user_level", mapW5), k0Var6.i(0, "user_experience", mapW5), 0);
                    iMax = java.lang.Math.max(0, xVar2.e(strU2));
                    com.sgscq.vpn.w1 w1VarA7 = com.sgscq.vpn.w1.a1(k0Var6.f901a);
                    i5 = cVarH.f1783a;
                    int iC3 = com.sgscq.vpn.handler.x.C(w1VarA7.y0(i5), iJ2);
                    i6 = iCalculate;
                    k0Var2 = xVar2.f1026a;
                    iH = com.sgscq.vpn.handler.x.h(com.sgscq.vpn.w1.a1(k0Var2.f901a), strU2);
                    int iB1 = com.sgscq.vpn.p5.B0(java.lang.Math.max(0, iC3), context);
                    iN2 = com.sgscq.vpn.cloud.m0.n2(mapW5);
                    if (iH <= 0) {
                        iFloor = 0;
                    } else {
                        iFloor = (int) java.lang.Math.floor(((com.sgscq.vpn.cloud.m0.U0(iN2) + 1.0d) * ((double) iH)) + 1.0E-6d);
                    }
                    iB0 = com.sgscq.vpn.p5.B0(iFloor, context);
                    z = sVarB1.f987g;
                    iMax2 = java.lang.Math.max(0, iB1);
                    if (z) {
                        iMax3 = java.lang.Math.max(0, iMax);
                    } else {
                        iMax3 = 0;
                    }
                    if (z) {
                        iMax4 = java.lang.Math.max(0, iB0);
                    } else {
                        iMax4 = 0;
                    }
                    int i30 = iMax4;
                    j2 = iMax3;
                    j3 = k0Var6.j(k0Var6.a(), mapW5) + j2;
                    l.c cVarH2 = h(i5, cVarH.f1784b, iMax2);
                    i7 = cVarH2.f1784b;
                    i8 = cVarH2.f1783a;
                    i9 = i27 - iJ2;
                    int i31 = iMax3;
                    jG = com.sgscq.vpn.c7.g();
                    if (i8 > i5) {
                        linkedHashMapU = com.sgscq.vpn.w1.a1(context).u(i5, i8);
                    } else {
                        linkedHashMapU = null;
                    }
                    if (linkedHashMapU != null) {
                        m(mapW5, linkedHashMapU);
                        j4 = k0Var6.j(k0Var6.a(), mapW5) + j2;
                    } else {
                        j4 = j3;
                    }
                    mapW5.put("user_coin", java.lang.Long.valueOf(j4));
                    mapW5.put("user_experience", java.lang.Integer.valueOf(i7));
                    mapW5.put("user_level", java.lang.Integer.valueOf(i8));
                    d1(mapW5);
                    zK0 = com.sgscq.vpn.handler.d1.K0(mapW5);
                    linkedHashMap = linkedHashMapU;
                    com.sgscq.vpn.p5.f(mapW5, i9, k0Var6.d(), com.sgscq.vpn.w1.a1(k0Var6.f901a).U0("RevertPowerSeconds", 300), jG);
                    java.util.ArrayList arrayList9 = new java.util.ArrayList();
                    i(i30, arrayList9, mapW5);
                    k(mapW5, s0(), sVarB1.f987g, 1);
                    if (sVarB1.f987g) {
                        obj4 = mapW5.get("dungeon_stars");
                        if (obj4 instanceof java.util.Map) {
                            mapU1 = (java.util.Map) obj4;
                        } else if (obj4 instanceof java.lang.String) {
                            try {
                                mapU1 = com.sgscq.vpn.p5.u1((java.lang.String) obj4);
                            } catch (java.lang.Exception unused9) {
                                mapU1 = new java.util.HashMap();
                            }
                        } else {
                            mapU1 = new java.util.HashMap();
                        }
                        iX = com.sgscq.vpn.handler.x.x(strU2, mapU1);
                        i10 = iMax2;
                        i11 = i6;
                        if (i11 > iX) {
                            com.sgscq.vpn.handler.x.z(i11, strU2, mapU1);
                            mapW5.put("dungeon_stars", com.sgscq.vpn.p5.s1(mapU1));
                            str5 = "SGSCQ_SRV";
                            com.sgscq.vpn.z2.e(str5, "[DungeonService] dungeon=" + strU2 + " star " + iX + " -> " + i11);
                        } else {
                            str5 = "SGSCQ_SRV";
                        }
                    } else {
                        i10 = iMax2;
                        str5 = "SGSCQ_SRV";
                        i11 = i6;
                    }
                    com.sgscq.vpn.handler.x.n(strU2, mapW5);
                    if (sVarB1.f987g) {
                        j5 = j4;
                        if (strU2 == null && strU2.startsWith("105")) {
                            i12 = i9;
                            java.lang.String strA2 = A0(strU2);
                            if (strA2 != null && strA2.startsWith("105")) {
                                com.sgscq.vpn.w1 w1VarA8 = com.sgscq.vpn.w1.a1(context);
                                i14 = i7;
                                java.util.LinkedHashMap linkedHashMap6 = new java.util.LinkedHashMap();
                                for (java.lang.String str27 : w1VarA8.g0()) {
                                    int i32 = i8;
                                    linkedHashMap6.put(str27, w1VarA8.m0(str27, str27));
                                    i8 = i32;
                                    i11 = i11;
                                }
                                i13 = i8;
                                i15 = i11;
                                com.sgscq.vpn.z2.e(str5, "[Dungeon] advanceEliteMap dungeon=" + A0(strA2) + " changed=" + g(mapW5, strA2, w1VarA8.g0(), linkedHashMap6, "user_elite_map_step", "user_elite_position_step", true) + " map=" + mapW5.get("user_elite_map_step") + " position=" + mapW5.get("user_elite_position_step"));
                            }
                        } else {
                            i12 = i9;
                            i13 = i8;
                            i14 = i7;
                            i15 = i11;
                            strA1 = A0(strU2);
                            if (strA1 != null && strA1.matches("5\\d{5}")) {
                                w1VarA4 = com.sgscq.vpn.w1.a1(context);
                                linkedHashMap4 = new java.util.LinkedHashMap();
                                for (it9 = w1VarA4.j0().iterator(); it9.hasNext(); it9 = it9) {
                                    java.lang.String str28 = (java.lang.String) it9.next();
                                    linkedHashMap4.put(str28, w1VarA4.l0(str28));
                                }
                                com.sgscq.vpn.z2.e(str5, "[Dungeon] advanceMap dungeon=" + A0(strA1) + " changed=" + g(mapW5, strA1, w1VarA4.j0(), linkedHashMap4, "user_map_step", "user_position_step", false) + " map=" + mapW5.get("user_map_step") + " position=" + mapW5.get("user_position_step"));
                            }
                        }
                        P0(1, strU2, mapW5, sVarB1.f987g);
                        if (sVarB1.f987g) {
                            xVar = xVar2;
                            z2 = z6;
                            arrayList = Z(mapW5, xVar.g(strU2), z2);
                        } else {
                            z2 = z6;
                            xVar = xVar2;
                            arrayList = new java.util.ArrayList();
                        }
                        if (sVarB1.f987g && (linkedHashMapW0 = w0(mapW5)) != null) {
                            arrayList.add(linkedHashMapW0);
                        }
                        str6 = "pk_id";
                        if (sVarB1.f987g) {
                            vVar = new com.sgscq.vpn.handler.v();
                            if (z2) {
                                arrayList5 = new java.util.ArrayList();
                                com.sgscq.vpn.w1 w1VarA9 = com.sgscq.vpn.w1.a1(context);
                                it5 = xVar.g(strU2).iterator();
                                while (it5.hasNext()) {
                                    java.util.Iterator it12 = it5;
                                    java.util.ArrayList arrayList10 = arrayList;
                                    java.lang.String str29 = str24;
                                    strJ2 = c.a.j((java.util.Map) it5.next(), "id", str29, "item_id");
                                    if (strJ2.isEmpty() && o0(w1VarA9, strJ2) && !arrayList5.contains(strJ2)) {
                                        arrayList5.add(strJ2);
                                    }
                                    str24 = str29;
                                    it5 = it12;
                                    arrayList = arrayList10;
                                }
                                arrayList2 = arrayList;
                                str8 = str24;
                                strA0 = A0(strU2);
                                com.sgscq.vpn.w1 w1VarA10 = com.sgscq.vpn.w1.a1(null);
                                strV0 = w1VarA10.V0("GuideChapter_Surrender", "503002");
                                strV1 = w1VarA10.V0("GuideChapter_Surrender_GeneralId", "142022");
                                if (A0(strV0).equals(strA0)) {
                                    listEmptyList = java.util.Collections.singletonList(strV1);
                                } else {
                                    listEmptyList = java.util.Collections.emptyList();
                                }
                                for (java.lang.String str30 : listEmptyList) {
                                    if (!arrayList5.contains(str30)) {
                                        arrayList5.add(str30);
                                    }
                                }
                                it6 = arrayList5.iterator();
                                while (true) {
                                    zHasNext = it6.hasNext();
                                    arrayList6 = vVar.f1005a;
                                    if (zHasNext) {
                                        break;
                                    }
                                    str19 = (java.lang.String) it6.next();
                                    if (!f0(str19, mapW5)) {
                                        w1VarA3 = com.sgscq.vpn.w1.a1(context);
                                        mapH = w1VarA3.h(str19, mapW5);
                                        if (mapH == null) {
                                            com.sgscq.vpn.z2.g(str5, "[StoryGeneral] skip non-surrenderable story reward general_id=" + str19);
                                        } else {
                                            strValueOf2 = java.lang.String.valueOf(mapH.getOrDefault(str6, str8));
                                            it7 = com.sgscq.vpn.w1.f0("Skill", mapW5).iterator();
                                            while (true) {
                                                if (it7.hasNext()) {
                                                    map6 = null;
                                                    break;
                                                }
                                                it8 = it7;
                                                map6 = (java.util.Map) it7.next();
                                                if (c.a.B(map6, str6, str8, strValueOf2)) {
                                                    break;
                                                }
                                                it7 = it8;
                                            }
                                            com.sgscq.vpn.w1.b2("general_id", str19, null, mapW5);
                                            com.sgscq.vpn.w1.b2("skill_id", w1VarA3.T0(str19), null, mapW5);
                                            vVar.f1006b.add(mapH);
                                            if (map6 != null) {
                                                vVar.f1007c.add(map6);
                                            }
                                            arrayList6.add(u(w1VarA3, str19));
                                            com.sgscq.vpn.z2.e(str5, "[StoryGeneral] owned story reward general_id=" + str19);
                                        }
                                    }
                                    it6 = it6;
                                    k0Var6 = k0Var6;
                                    str6 = str6;
                                }
                                k0Var3 = k0Var6;
                                str7 = str6;
                                for (java.lang.String str31 : com.sgscq.vpn.w1.a1(context).n1(strU2)) {
                                    arrayList6.add(u(com.sgscq.vpn.w1.a1(context), str31));
                                    com.sgscq.vpn.z2.e(str5, "[StoryGeneral] temporary story general show only general_id=" + str31);
                                }
                            } else {
                                arrayList2 = arrayList;
                                str7 = "pk_id";
                                str8 = str24;
                                k0Var3 = k0Var6;
                            }
                        } else {
                            arrayList2 = arrayList;
                            str7 = "pk_id";
                            str8 = str24;
                            k0Var3 = k0Var6;
                            vVar = new com.sgscq.vpn.handler.v();
                        }
                        arrayList3 = new java.util.ArrayList();
                        it = arrayList8.iterator();
                        while (it.hasNext()) {
                            java.util.LinkedHashMap linkedHashMapQ2 = c.a.q("general_id", (java.lang.String) it.next());
                            c.a.s(0, linkedHashMapQ2, "exp", 1, "level_before", 1, "level_now");
                            arrayList3.add(linkedHashMapQ2);
                        }
                        arrayList3.addAll(arrayList9);
                        if (sVarB1.f987g) {
                            map2 = map;
                            str18 = (java.lang.String) map2.get("step");
                            if (str18 == null) {
                                z3 = false;
                            } else {
                                try {
                                    i16 = java.lang.Integer.parseInt(str18.trim());
                                    if (i16 >= 60000 || i16 >= 80000) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                } catch (java.lang.NumberFormatException unused10) {
                                }
                            }
                            if (z3) {
                                zEquals = java.lang.Boolean.TRUE.equals(mapW5.get("newbie_gift_granted"));
                                listF0 = com.sgscq.vpn.w1.f0("Item", mapW5);
                                it3 = listF0.iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        if (zEquals) {
                                            java.util.LinkedHashMap linkedHashMap7 = new java.util.LinkedHashMap();
                                            it4 = listF0.iterator();
                                            iMax5 = 0;
                                            while (true) {
                                                str9 = str8;
                                                if (it4.hasNext()) {
                                                    break;
                                                }
                                                java.util.Iterator it13 = it4;
                                                com.sgscq.vpn.handler.v vVar4 = vVar;
                                                java.lang.String str32 = str7;
                                                try {
                                                    iMax5 = java.lang.Math.max(iMax5, java.lang.Integer.parseInt(java.lang.String.valueOf(((java.util.Map) it4.next()).getOrDefault(str32, "0"))));
                                                } catch (java.lang.NumberFormatException unused11) {
                                                }
                                                str7 = str32;
                                                vVar = vVar4;
                                                it4 = it13;
                                                str8 = str9;
                                            }
                                            vVar2 = vVar;
                                            str10 = str7;
                                            linkedHashMap7.put(str10, java.lang.String.valueOf(iMax5 + 1));
                                            linkedHashMap7.put("id", "720001");
                                            c.a.z(linkedHashMap7, "item_id", "720001", 1, "item_num", 1, "num");
                                            linkedHashMap7.put("effect_time", "0");
                                            java.lang.Boolean bool = java.lang.Boolean.TRUE;
                                            linkedHashMap7.put("is_new", bool);
                                            listF0.add(linkedHashMap7);
                                            mapW5.put("newbie_gift_granted", bool);
                                            mapW5.put("Item", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", listF0));
                                            map3 = linkedHashMap7;
                                            break;
                                        }
                                        map4 = null;
                                    } else {
                                        map5 = (java.util.Map) it3.next();
                                        if (c.a.C(map5, "id", str8, "item_id", "720001")) {
                                            mapW5.put("newbie_gift_granted", java.lang.Boolean.TRUE);
                                            map4 = map5;
                                        }
                                    }
                                    str9 = str8;
                                    vVar2 = vVar;
                                    str10 = str7;
                                    map3 = map4;
                                    break;
                                }
                            }
                            com.sgscq.vpn.handler.k0 k0Var7 = k0Var3;
                            com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var7.f903c);
                            com.sgscq.vpn.handler.x xVar3 = xVar;
                            listD = xVar3.d(strU2);
                            listB = xVar3.b(strU2);
                            java.util.LinkedHashMap linkedHashMapZ1 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i29), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent));
                            java.util.LinkedHashMap linkedHashMapP = p(i13, i14, i12, k0Var7.i(0, str4, mapW5), j5, strE4, mapW5);
                            linkedHashMap2 = new java.util.LinkedHashMap();
                            linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                            linkedHashMap2.put("fight_type", 1);
                            linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                            linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                            linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                            linkedHashMap2.put("fight_calculate_info", linkedHashMapZ1);
                            linkedHashMap2.put("player_info", linkedHashMapP);
                            linkedHashMap2.put("show_general_info", arrayList3);
                            java.util.ArrayList arrayList11 = arrayList2;
                            linkedHashMap2.put("add_list", arrayList11);
                            linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i31), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i30), "add_list", arrayList11));
                            jVar = new com.sgscq.vpn.handler.j();
                            if (sVarB1.f987g) {
                                jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                                if (jVar.c()) {
                                    strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                                } else {
                                    strS1 = str9;
                                }
                            } else {
                                strS1 = str9;
                            }
                            if (sVarB1.f987g) {
                                int iC4 = C(mapW5);
                                java.util.Random random = this.f1018c;
                                java.util.Objects.requireNonNull(random);
                                t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC4, new com.sgscq.vpn.handler.q(1, random));
                            } else {
                                t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                            }
                            h5Var3.S0(strE4, mapW5);
                            vVar3 = vVar2;
                            mapS = s(mapW5, arrayList11, vVar3);
                            if (map3 != null) {
                                list = listD;
                                str11 = strS1;
                                obj2 = mapS.get("Item");
                                linkedHashMap3 = linkedHashMap2;
                                str12 = "success";
                                if (obj2 instanceof java.util.Map) {
                                    mapZ0 = (java.util.Map) obj2;
                                } else {
                                    mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                                    mapS.put("Item", mapZ0);
                                }
                                obj3 = mapZ0.get("upd");
                                if (obj3 instanceof java.util.List) {
                                    listO = (java.util.List) obj3;
                                } else {
                                    listO = c.a.o(mapZ0, "upd");
                                }
                                str13 = str9;
                                strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                                it2 = listO.iterator();
                                do {
                                    if (it2.hasNext()) {
                                        listO.add(map3);
                                        break;
                                    }
                                } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                            } else {
                                list = listD;
                                strU2 = strU2;
                                str11 = strS1;
                                linkedHashMap3 = linkedHashMap2;
                                vVar3 = vVar3;
                                str12 = "success";
                                str13 = str9;
                            }
                            jVar.a(mapS, new java.util.ArrayList());
                            if (sVarB1.f987g) {
                                jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                            } else {
                                jVarD = com.sgscq.vpn.handler.j.d();
                            }
                            list2 = (java.util.List) jVarD.f883c;
                            arrayList4 = new java.util.ArrayList();
                            if (list2 != null) {
                                arrayList4.addAll(list2);
                            }
                            list3 = t6Var.f1415b;
                            if (list3 != null) {
                                arrayList4.addAll(list3);
                            }
                            if (jVarD.f882b) {
                                a(mapS, mapW5, jVarD);
                                h5Var3.S0(strE4, mapW5);
                            }
                            mapU = k0Var7.f904d.u((int) jG, k0Var7.i(k0Var7.c(), "user_gold", mapW5), k0Var7.i(k0Var7.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                            if (!vVar3.f1006b.isEmpty()) {
                                strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                            } else {
                                strJ = (jVar.f881a && jVarD.f882b) ? h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, D(jVarD))) : h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                            }
                            str14 = strU2;
                            java.lang.String strP = h5Var3.p(str14, mapW5);
                            java.lang.String strH2 = h5Var3.h(N(str14), mapW5);
                            java.lang.String strS2 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                            y1Var = new com.sgscq.vpn.y1();
                            y1Var.e(str3, 0);
                            y1Var.e(str2, 0);
                            y1Var.e("code", 0);
                            y1Var.g("result", true);
                            y1Var.f("msg", str12);
                            y1Var.i("fight_info", strS2);
                            y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                            y1Var.i("cmn", strJ);
                            y1Var.i("map_info", strP);
                            y1Var.i("chapter_info", strH2);
                            y1Var.i("chapter_detail", strH2);
                            if (!arrayList4.isEmpty()) {
                                y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                                y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                                y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                            }
                            if (!str11.isEmpty()) {
                                y1Var.i("surrender_info", str11);
                            }
                            if (linkedHashMap != null) {
                                y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                            }
                            if (list.isEmpty() || !listB.isEmpty()) {
                                java.util.LinkedHashMap linkedHashMapQ3 = c.a.q("dungeon_id", str14);
                                try {
                                    w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                                    if (w1VarA2.C == null) {
                                        w1VarA2.J1();
                                    }
                                    if (str14 == null) {
                                        strTrim = str13;
                                        str15 = "01";
                                        str16 = "\\d{6}";
                                    } else {
                                        strTrim = str14.trim();
                                        str16 = "\\d{6}";
                                        try {
                                            if (strTrim.matches(str16)) {
                                                str15 = "01";
                                                try {
                                                    strTrim = strTrim.concat(str15);
                                                } catch (java.lang.Exception unused12) {
                                                }
                                            } else {
                                                str15 = "01";
                                            }
                                        } catch (java.lang.Exception unused13) {
                                            str15 = "01";
                                        }
                                    }
                                    if (!w1VarA2.C.containsKey(strTrim)) {
                                        strTrim = null;
                                    }
                                } catch (java.lang.Exception unused14) {
                                    str15 = "01";
                                    str16 = "\\d{6}";
                                }
                                linkedHashMapQ3.put("before_dialog_id", strTrim);
                                try {
                                    w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                                    if (w1VarA1.C == null) {
                                        w1VarA1.J1();
                                    }
                                    java.util.HashMap map9 = w1VarA1.C;
                                    if (str14 == null) {
                                        strTrim2 = str13;
                                    } else {
                                        strTrim2 = str14.trim();
                                        if (strTrim2.matches(str16)) {
                                            strTrim2 = strTrim2.concat(str15);
                                        }
                                    }
                                    str17 = (java.lang.String) map9.get(strTrim2);
                                } catch (java.lang.Exception unused15) {
                                    str17 = null;
                                }
                                linkedHashMapQ3.put("after_dialog_id", str17);
                                linkedHashMapQ3.put("before", list);
                                linkedHashMapQ3.put("after", listB);
                                y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ3));
                            }
                            y1Var.d(j5, "user_coin");
                            y1Var.e("user_experience", i14);
                            int i33 = i13;
                            y1Var.e("user_level", i33);
                            y1Var.e("level", i33);
                            y1Var.e("roleLevel", i33);
                            y1Var.e("role_level", i33);
                            y1Var.e("user_power", i12);
                            java.lang.String str33 = str4;
                            y1Var.e(str33, k0Var7.i(0, str33, mapW5));
                            return k0Var7.n(y1Var.b());
                        }
                        map2 = map;
                        str9 = str8;
                        vVar2 = vVar;
                        str10 = str7;
                        map3 = null;
                        com.sgscq.vpn.handler.k0 k0Var8 = k0Var3;
                        com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var8.f903c);
                        com.sgscq.vpn.handler.x xVar4 = xVar;
                        listD = xVar4.d(strU2);
                        listB = xVar4.b(strU2);
                        java.util.LinkedHashMap linkedHashMapZ2 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i29), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent));
                        java.util.LinkedHashMap linkedHashMapP2 = p(i13, i14, i12, k0Var8.i(0, str4, mapW5), j5, strE4, mapW5);
                        linkedHashMap2 = new java.util.LinkedHashMap();
                        linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                        linkedHashMap2.put("fight_type", 1);
                        linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("fight_calculate_info", linkedHashMapZ2);
                        linkedHashMap2.put("player_info", linkedHashMapP2);
                        linkedHashMap2.put("show_general_info", arrayList3);
                        java.util.ArrayList arrayList12 = arrayList2;
                        linkedHashMap2.put("add_list", arrayList12);
                        linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i31), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i30), "add_list", arrayList12));
                        jVar = new com.sgscq.vpn.handler.j();
                        if (sVarB1.f987g) {
                            jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                            if (jVar.c()) {
                                strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                            } else {
                                strS1 = str9;
                            }
                        } else {
                            strS1 = str9;
                        }
                        if (sVarB1.f987g) {
                            int iC5 = C(mapW5);
                            java.util.Random random2 = this.f1018c;
                            java.util.Objects.requireNonNull(random2);
                            t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC5, new com.sgscq.vpn.handler.q(1, random2));
                        } else {
                            t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                        }
                        h5Var3.S0(strE4, mapW5);
                        vVar3 = vVar2;
                        mapS = s(mapW5, arrayList12, vVar3);
                        if (map3 != null) {
                            list = listD;
                            str11 = strS1;
                            obj2 = mapS.get("Item");
                            linkedHashMap3 = linkedHashMap2;
                            str12 = "success";
                            if (obj2 instanceof java.util.Map) {
                                mapZ0 = (java.util.Map) obj2;
                            } else {
                                mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                                mapS.put("Item", mapZ0);
                            }
                            obj3 = mapZ0.get("upd");
                            if (obj3 instanceof java.util.List) {
                                listO = (java.util.List) obj3;
                            } else {
                                listO = c.a.o(mapZ0, "upd");
                            }
                            str13 = str9;
                            strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                            it2 = listO.iterator();
                            do {
                                if (it2.hasNext()) {
                                    listO.add(map3);
                                    break;
                                }
                            } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                        } else {
                            list = listD;
                            strU2 = strU2;
                            str11 = strS1;
                            linkedHashMap3 = linkedHashMap2;
                            vVar3 = vVar3;
                            str12 = "success";
                            str13 = str9;
                        }
                        jVar.a(mapS, new java.util.ArrayList());
                        if (sVarB1.f987g) {
                            jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                        } else {
                            jVarD = com.sgscq.vpn.handler.j.d();
                        }
                        list2 = (java.util.List) jVarD.f883c;
                        arrayList4 = new java.util.ArrayList();
                        if (list2 != null) {
                            arrayList4.addAll(list2);
                        }
                        list3 = t6Var.f1415b;
                        if (list3 != null) {
                            arrayList4.addAll(list3);
                        }
                        if (jVarD.f882b) {
                            a(mapS, mapW5, jVarD);
                            h5Var3.S0(strE4, mapW5);
                        }
                        mapU = k0Var8.f904d.u((int) jG, k0Var8.i(k0Var8.c(), "user_gold", mapW5), k0Var8.i(k0Var8.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                        if (!vVar3.f1006b.isEmpty()) {
                            strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                        } else if (jVar.f881a) {
                            strJ = h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                        }
                        str14 = strU2;
                        java.lang.String strP2 = h5Var3.p(str14, mapW5);
                        java.lang.String strH3 = h5Var3.h(N(str14), mapW5);
                        java.lang.String strS3 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                        y1Var = new com.sgscq.vpn.y1();
                        y1Var.e(str3, 0);
                        y1Var.e(str2, 0);
                        y1Var.e("code", 0);
                        y1Var.g("result", true);
                        y1Var.f("msg", str12);
                        y1Var.i("fight_info", strS3);
                        y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                        y1Var.i("cmn", strJ);
                        y1Var.i("map_info", strP2);
                        y1Var.i("chapter_info", strH3);
                        y1Var.i("chapter_detail", strH3);
                        if (!arrayList4.isEmpty()) {
                            y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                            y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                            y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                        }
                        if (!str11.isEmpty()) {
                            y1Var.i("surrender_info", str11);
                        }
                        if (linkedHashMap != null) {
                            y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                        }
                        if (list.isEmpty()) {
                            java.util.LinkedHashMap linkedHashMapQ4 = c.a.q("dungeon_id", str14);
                            w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA2.C == null) {
                                w1VarA2.J1();
                            }
                            if (str14 == null) {
                                strTrim = str13;
                                str15 = "01";
                                str16 = "\\d{6}";
                            } else {
                                strTrim = str14.trim();
                                str16 = "\\d{6}";
                                if (strTrim.matches(str16)) {
                                    str15 = "01";
                                    strTrim = strTrim.concat(str15);
                                } else {
                                    str15 = "01";
                                }
                            }
                            if (!w1VarA2.C.containsKey(strTrim)) {
                                strTrim = null;
                            }
                            linkedHashMapQ4.put("before_dialog_id", strTrim);
                            w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA1.C == null) {
                                w1VarA1.J1();
                            }
                            java.util.HashMap map10 = w1VarA1.C;
                            if (str14 == null) {
                                strTrim2 = str13;
                            } else {
                                strTrim2 = str14.trim();
                                if (strTrim2.matches(str16)) {
                                    strTrim2 = strTrim2.concat(str15);
                                }
                            }
                            str17 = (java.lang.String) map10.get(strTrim2);
                            linkedHashMapQ4.put("after_dialog_id", str17);
                            linkedHashMapQ4.put("before", list);
                            linkedHashMapQ4.put("after", listB);
                            y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ4));
                        } else {
                            java.util.LinkedHashMap linkedHashMapQ5 = c.a.q("dungeon_id", str14);
                            w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA2.C == null) {
                                w1VarA2.J1();
                            }
                            if (str14 == null) {
                                strTrim = str13;
                                str15 = "01";
                                str16 = "\\d{6}";
                            } else {
                                strTrim = str14.trim();
                                str16 = "\\d{6}";
                                if (strTrim.matches(str16)) {
                                    str15 = "01";
                                    strTrim = strTrim.concat(str15);
                                } else {
                                    str15 = "01";
                                }
                            }
                            if (!w1VarA2.C.containsKey(strTrim)) {
                                strTrim = null;
                            }
                            linkedHashMapQ5.put("before_dialog_id", strTrim);
                            w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA1.C == null) {
                                w1VarA1.J1();
                            }
                            java.util.HashMap map11 = w1VarA1.C;
                            if (str14 == null) {
                                strTrim2 = str13;
                            } else {
                                strTrim2 = str14.trim();
                                if (strTrim2.matches(str16)) {
                                    strTrim2 = strTrim2.concat(str15);
                                }
                            }
                            str17 = (java.lang.String) map11.get(strTrim2);
                            linkedHashMapQ5.put("after_dialog_id", str17);
                            linkedHashMapQ5.put("before", list);
                            linkedHashMapQ5.put("after", listB);
                            y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ5));
                        }
                        y1Var.d(j5, "user_coin");
                        y1Var.e("user_experience", i14);
                        int i34 = i13;
                        y1Var.e("user_level", i34);
                        y1Var.e("level", i34);
                        y1Var.e("roleLevel", i34);
                        y1Var.e("role_level", i34);
                        y1Var.e("user_power", i12);
                        java.lang.String str34 = str4;
                        y1Var.e(str34, k0Var8.i(0, str34, mapW5));
                        return k0Var8.n(y1Var.b());
                    }
                    j5 = j4;
                    i12 = i9;
                    i13 = i8;
                    i14 = i7;
                    i15 = i11;
                    P0(1, strU2, mapW5, sVarB1.f987g);
                    if (sVarB1.f987g) {
                        xVar = xVar2;
                        z2 = z6;
                        arrayList = Z(mapW5, xVar.g(strU2), z2);
                    } else {
                        z2 = z6;
                        xVar = xVar2;
                        arrayList = new java.util.ArrayList();
                    }
                    if (sVarB1.f987g) {
                        arrayList.add(linkedHashMapW0);
                    }
                    str6 = "pk_id";
                    if (sVarB1.f987g) {
                        vVar = new com.sgscq.vpn.handler.v();
                        if (z2) {
                            arrayList2 = arrayList;
                            str7 = "pk_id";
                            str8 = str24;
                            k0Var3 = k0Var6;
                        } else {
                            arrayList5 = new java.util.ArrayList();
                            com.sgscq.vpn.w1 w1VarA11 = com.sgscq.vpn.w1.a1(context);
                            it5 = xVar.g(strU2).iterator();
                            while (it5.hasNext()) {
                                java.util.Iterator it14 = it5;
                                java.util.ArrayList arrayList13 = arrayList;
                                java.lang.String str210 = str24;
                                strJ2 = c.a.j((java.util.Map) it5.next(), "id", str210, "item_id");
                                if (strJ2.isEmpty()) {
                                }
                                str24 = str210;
                                it5 = it14;
                                arrayList = arrayList13;
                            }
                            arrayList2 = arrayList;
                            str8 = str24;
                            strA0 = A0(strU2);
                            com.sgscq.vpn.w1 w1VarA12 = com.sgscq.vpn.w1.a1(null);
                            strV0 = w1VarA12.V0("GuideChapter_Surrender", "503002");
                            strV1 = w1VarA12.V0("GuideChapter_Surrender_GeneralId", "142022");
                            if (A0(strV0).equals(strA0)) {
                                listEmptyList = java.util.Collections.singletonList(strV1);
                            } else {
                                listEmptyList = java.util.Collections.emptyList();
                            }
                            while (r0.hasNext()) {
                                if (!arrayList5.contains(str30)) {
                                    arrayList5.add(str30);
                                }
                            }
                            it6 = arrayList5.iterator();
                            while (true) {
                                zHasNext = it6.hasNext();
                                arrayList6 = vVar.f1005a;
                                if (zHasNext) {
                                    break;
                                    break;
                                }
                                str19 = (java.lang.String) it6.next();
                                if (!f0(str19, mapW5)) {
                                    w1VarA3 = com.sgscq.vpn.w1.a1(context);
                                    mapH = w1VarA3.h(str19, mapW5);
                                    if (mapH == null) {
                                        com.sgscq.vpn.z2.g(str5, "[StoryGeneral] skip non-surrenderable story reward general_id=" + str19);
                                    } else {
                                        strValueOf2 = java.lang.String.valueOf(mapH.getOrDefault(str6, str8));
                                        it7 = com.sgscq.vpn.w1.f0("Skill", mapW5).iterator();
                                        while (true) {
                                            if (it7.hasNext()) {
                                                map6 = null;
                                                break;
                                            }
                                            it8 = it7;
                                            map6 = (java.util.Map) it7.next();
                                            if (c.a.B(map6, str6, str8, strValueOf2)) {
                                                break;
                                                break;
                                            }
                                            it7 = it8;
                                        }
                                        com.sgscq.vpn.w1.b2("general_id", str19, null, mapW5);
                                        com.sgscq.vpn.w1.b2("skill_id", w1VarA3.T0(str19), null, mapW5);
                                        vVar.f1006b.add(mapH);
                                        if (map6 != null) {
                                            vVar.f1007c.add(map6);
                                        }
                                        arrayList6.add(u(w1VarA3, str19));
                                        com.sgscq.vpn.z2.e(str5, "[StoryGeneral] owned story reward general_id=" + str19);
                                    }
                                }
                                it6 = it6;
                                k0Var6 = k0Var6;
                                str6 = str6;
                            }
                            k0Var3 = k0Var6;
                            str7 = str6;
                            while (r0.hasNext()) {
                                arrayList6.add(u(com.sgscq.vpn.w1.a1(context), str31));
                                com.sgscq.vpn.z2.e(str5, "[StoryGeneral] temporary story general show only general_id=" + str31);
                            }
                        }
                    } else {
                        arrayList2 = arrayList;
                        str7 = "pk_id";
                        str8 = str24;
                        k0Var3 = k0Var6;
                        vVar = new com.sgscq.vpn.handler.v();
                    }
                    arrayList3 = new java.util.ArrayList();
                    it = arrayList8.iterator();
                    while (it.hasNext()) {
                        java.util.LinkedHashMap linkedHashMapQ6 = c.a.q("general_id", (java.lang.String) it.next());
                        c.a.s(0, linkedHashMapQ6, "exp", 1, "level_before", 1, "level_now");
                        arrayList3.add(linkedHashMapQ6);
                    }
                    arrayList3.addAll(arrayList9);
                    if (sVarB1.f987g) {
                        map2 = map;
                        str18 = (java.lang.String) map2.get("step");
                        if (str18 == null) {
                            z3 = false;
                        } else {
                            i16 = java.lang.Integer.parseInt(str18.trim());
                            if (i16 >= 60000) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                        }
                        if (z3) {
                            zEquals = java.lang.Boolean.TRUE.equals(mapW5.get("newbie_gift_granted"));
                            listF0 = com.sgscq.vpn.w1.f0("Item", mapW5);
                            it3 = listF0.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (zEquals) {
                                        java.util.LinkedHashMap linkedHashMap8 = new java.util.LinkedHashMap();
                                        it4 = listF0.iterator();
                                        iMax5 = 0;
                                        while (true) {
                                            str9 = str8;
                                            if (it4.hasNext()) {
                                                break;
                                                break;
                                            }
                                            java.util.Iterator it15 = it4;
                                            com.sgscq.vpn.handler.v vVar5 = vVar;
                                            java.lang.String str35 = str7;
                                            iMax5 = java.lang.Math.max(iMax5, java.lang.Integer.parseInt(java.lang.String.valueOf(((java.util.Map) it4.next()).getOrDefault(str35, "0"))));
                                            str7 = str35;
                                            vVar = vVar5;
                                            it4 = it15;
                                            str8 = str9;
                                        }
                                        vVar2 = vVar;
                                        str10 = str7;
                                        linkedHashMap8.put(str10, java.lang.String.valueOf(iMax5 + 1));
                                        linkedHashMap8.put("id", "720001");
                                        c.a.z(linkedHashMap8, "item_id", "720001", 1, "item_num", 1, "num");
                                        linkedHashMap8.put("effect_time", "0");
                                        java.lang.Boolean bool2 = java.lang.Boolean.TRUE;
                                        linkedHashMap8.put("is_new", bool2);
                                        listF0.add(linkedHashMap8);
                                        mapW5.put("newbie_gift_granted", bool2);
                                        mapW5.put("Item", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", listF0));
                                        map3 = linkedHashMap8;
                                        break;
                                    }
                                    map4 = null;
                                } else {
                                    map5 = (java.util.Map) it3.next();
                                    if (c.a.C(map5, "id", str8, "item_id", "720001")) {
                                        mapW5.put("newbie_gift_granted", java.lang.Boolean.TRUE);
                                        map4 = map5;
                                    }
                                }
                                str9 = str8;
                                vVar2 = vVar;
                                str10 = str7;
                                map3 = map4;
                                break;
                            }
                        }
                        com.sgscq.vpn.handler.k0 k0Var9 = k0Var3;
                        com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var9.f903c);
                        com.sgscq.vpn.handler.x xVar5 = xVar;
                        listD = xVar5.d(strU2);
                        listB = xVar5.b(strU2);
                        java.util.LinkedHashMap linkedHashMapZ3 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i29), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent));
                        java.util.LinkedHashMap linkedHashMapP3 = p(i13, i14, i12, k0Var9.i(0, str4, mapW5), j5, strE4, mapW5);
                        linkedHashMap2 = new java.util.LinkedHashMap();
                        linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                        linkedHashMap2.put("fight_type", 1);
                        linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("fight_calculate_info", linkedHashMapZ3);
                        linkedHashMap2.put("player_info", linkedHashMapP3);
                        linkedHashMap2.put("show_general_info", arrayList3);
                        java.util.ArrayList arrayList14 = arrayList2;
                        linkedHashMap2.put("add_list", arrayList14);
                        linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i31), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i30), "add_list", arrayList14));
                        jVar = new com.sgscq.vpn.handler.j();
                        if (sVarB1.f987g) {
                            jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                            if (jVar.c()) {
                                strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                            } else {
                                strS1 = str9;
                            }
                        } else {
                            strS1 = str9;
                        }
                        if (sVarB1.f987g) {
                            int iC6 = C(mapW5);
                            java.util.Random random3 = this.f1018c;
                            java.util.Objects.requireNonNull(random3);
                            t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC6, new com.sgscq.vpn.handler.q(1, random3));
                        } else {
                            t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                        }
                        h5Var3.S0(strE4, mapW5);
                        vVar3 = vVar2;
                        mapS = s(mapW5, arrayList14, vVar3);
                        if (map3 != null) {
                            list = listD;
                            str11 = strS1;
                            obj2 = mapS.get("Item");
                            linkedHashMap3 = linkedHashMap2;
                            str12 = "success";
                            if (obj2 instanceof java.util.Map) {
                                mapZ0 = (java.util.Map) obj2;
                            } else {
                                mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                                mapS.put("Item", mapZ0);
                            }
                            obj3 = mapZ0.get("upd");
                            if (obj3 instanceof java.util.List) {
                                listO = (java.util.List) obj3;
                            } else {
                                listO = c.a.o(mapZ0, "upd");
                            }
                            str13 = str9;
                            strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                            it2 = listO.iterator();
                            do {
                                if (it2.hasNext()) {
                                    listO.add(map3);
                                    break;
                                }
                            } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                        } else {
                            list = listD;
                            strU2 = strU2;
                            str11 = strS1;
                            linkedHashMap3 = linkedHashMap2;
                            vVar3 = vVar3;
                            str12 = "success";
                            str13 = str9;
                        }
                        jVar.a(mapS, new java.util.ArrayList());
                        if (sVarB1.f987g) {
                            jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                        } else {
                            jVarD = com.sgscq.vpn.handler.j.d();
                        }
                        list2 = (java.util.List) jVarD.f883c;
                        arrayList4 = new java.util.ArrayList();
                        if (list2 != null) {
                            arrayList4.addAll(list2);
                        }
                        list3 = t6Var.f1415b;
                        if (list3 != null) {
                            arrayList4.addAll(list3);
                        }
                        if (jVarD.f882b) {
                            a(mapS, mapW5, jVarD);
                            h5Var3.S0(strE4, mapW5);
                        }
                        mapU = k0Var9.f904d.u((int) jG, k0Var9.i(k0Var9.c(), "user_gold", mapW5), k0Var9.i(k0Var9.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                        if (!vVar3.f1006b.isEmpty()) {
                            strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                        } else if (jVar.f881a) {
                            strJ = h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                        }
                        str14 = strU2;
                        java.lang.String strP3 = h5Var3.p(str14, mapW5);
                        java.lang.String strH4 = h5Var3.h(N(str14), mapW5);
                        java.lang.String strS4 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                        y1Var = new com.sgscq.vpn.y1();
                        y1Var.e(str3, 0);
                        y1Var.e(str2, 0);
                        y1Var.e("code", 0);
                        y1Var.g("result", true);
                        y1Var.f("msg", str12);
                        y1Var.i("fight_info", strS4);
                        y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                        y1Var.i("cmn", strJ);
                        y1Var.i("map_info", strP3);
                        y1Var.i("chapter_info", strH4);
                        y1Var.i("chapter_detail", strH4);
                        if (!arrayList4.isEmpty()) {
                            y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                            y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                            y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                        }
                        if (!str11.isEmpty()) {
                            y1Var.i("surrender_info", str11);
                        }
                        if (linkedHashMap != null) {
                            y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                        }
                        if (list.isEmpty()) {
                            java.util.LinkedHashMap linkedHashMapQ7 = c.a.q("dungeon_id", str14);
                            w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA2.C == null) {
                                w1VarA2.J1();
                            }
                            if (str14 == null) {
                                strTrim = str13;
                                str15 = "01";
                                str16 = "\\d{6}";
                            } else {
                                strTrim = str14.trim();
                                str16 = "\\d{6}";
                                if (strTrim.matches(str16)) {
                                    str15 = "01";
                                    strTrim = strTrim.concat(str15);
                                } else {
                                    str15 = "01";
                                }
                            }
                            if (!w1VarA2.C.containsKey(strTrim)) {
                                strTrim = null;
                            }
                            linkedHashMapQ7.put("before_dialog_id", strTrim);
                            w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA1.C == null) {
                                w1VarA1.J1();
                            }
                            java.util.HashMap map12 = w1VarA1.C;
                            if (str14 == null) {
                                strTrim2 = str13;
                            } else {
                                strTrim2 = str14.trim();
                                if (strTrim2.matches(str16)) {
                                    strTrim2 = strTrim2.concat(str15);
                                }
                            }
                            str17 = (java.lang.String) map12.get(strTrim2);
                            linkedHashMapQ7.put("after_dialog_id", str17);
                            linkedHashMapQ7.put("before", list);
                            linkedHashMapQ7.put("after", listB);
                            y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ7));
                        } else {
                            java.util.LinkedHashMap linkedHashMapQ8 = c.a.q("dungeon_id", str14);
                            w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA2.C == null) {
                                w1VarA2.J1();
                            }
                            if (str14 == null) {
                                strTrim = str13;
                                str15 = "01";
                                str16 = "\\d{6}";
                            } else {
                                strTrim = str14.trim();
                                str16 = "\\d{6}";
                                if (strTrim.matches(str16)) {
                                    str15 = "01";
                                    strTrim = strTrim.concat(str15);
                                } else {
                                    str15 = "01";
                                }
                            }
                            if (!w1VarA2.C.containsKey(strTrim)) {
                                strTrim = null;
                            }
                            linkedHashMapQ8.put("before_dialog_id", strTrim);
                            w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA1.C == null) {
                                w1VarA1.J1();
                            }
                            java.util.HashMap map13 = w1VarA1.C;
                            if (str14 == null) {
                                strTrim2 = str13;
                            } else {
                                strTrim2 = str14.trim();
                                if (strTrim2.matches(str16)) {
                                    strTrim2 = strTrim2.concat(str15);
                                }
                            }
                            str17 = (java.lang.String) map13.get(strTrim2);
                            linkedHashMapQ8.put("after_dialog_id", str17);
                            linkedHashMapQ8.put("before", list);
                            linkedHashMapQ8.put("after", listB);
                            y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ8));
                        }
                        y1Var.d(j5, "user_coin");
                        y1Var.e("user_experience", i14);
                        int i35 = i13;
                        y1Var.e("user_level", i35);
                        y1Var.e("level", i35);
                        y1Var.e("roleLevel", i35);
                        y1Var.e("role_level", i35);
                        y1Var.e("user_power", i12);
                        java.lang.String str36 = str4;
                        y1Var.e(str36, k0Var9.i(0, str36, mapW5));
                        return k0Var9.n(y1Var.b());
                    }
                    map2 = map;
                    str9 = str8;
                    vVar2 = vVar;
                    str10 = str7;
                    map3 = null;
                    com.sgscq.vpn.handler.k0 k0Var10 = k0Var3;
                    com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var10.f903c);
                    com.sgscq.vpn.handler.x xVar6 = xVar;
                    listD = xVar6.d(strU2);
                    listB = xVar6.b(strU2);
                    java.util.LinkedHashMap linkedHashMapZ4 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i29), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent));
                    java.util.LinkedHashMap linkedHashMapP4 = p(i13, i14, i12, k0Var10.i(0, str4, mapW5), j5, strE4, mapW5);
                    linkedHashMap2 = new java.util.LinkedHashMap();
                    linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                    linkedHashMap2.put("fight_type", 1);
                    linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("fight_calculate_info", linkedHashMapZ4);
                    linkedHashMap2.put("player_info", linkedHashMapP4);
                    linkedHashMap2.put("show_general_info", arrayList3);
                    java.util.ArrayList arrayList15 = arrayList2;
                    linkedHashMap2.put("add_list", arrayList15);
                    linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i31), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i30), "add_list", arrayList15));
                    jVar = new com.sgscq.vpn.handler.j();
                    if (sVarB1.f987g) {
                        jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                        if (jVar.c()) {
                            strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                        } else {
                            strS1 = str9;
                        }
                    } else {
                        strS1 = str9;
                    }
                    if (sVarB1.f987g) {
                        int iC7 = C(mapW5);
                        java.util.Random random4 = this.f1018c;
                        java.util.Objects.requireNonNull(random4);
                        t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC7, new com.sgscq.vpn.handler.q(1, random4));
                    } else {
                        t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                    }
                    h5Var3.S0(strE4, mapW5);
                    vVar3 = vVar2;
                    mapS = s(mapW5, arrayList15, vVar3);
                    if (map3 != null) {
                        list = listD;
                        str11 = strS1;
                        obj2 = mapS.get("Item");
                        linkedHashMap3 = linkedHashMap2;
                        str12 = "success";
                        if (obj2 instanceof java.util.Map) {
                            mapZ0 = (java.util.Map) obj2;
                        } else {
                            mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                            mapS.put("Item", mapZ0);
                        }
                        obj3 = mapZ0.get("upd");
                        if (obj3 instanceof java.util.List) {
                            listO = (java.util.List) obj3;
                        } else {
                            listO = c.a.o(mapZ0, "upd");
                        }
                        str13 = str9;
                        strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                        it2 = listO.iterator();
                        do {
                            if (it2.hasNext()) {
                                listO.add(map3);
                                break;
                            }
                        } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                    } else {
                        list = listD;
                        strU2 = strU2;
                        str11 = strS1;
                        linkedHashMap3 = linkedHashMap2;
                        vVar3 = vVar3;
                        str12 = "success";
                        str13 = str9;
                    }
                    jVar.a(mapS, new java.util.ArrayList());
                    if (sVarB1.f987g) {
                        jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                    } else {
                        jVarD = com.sgscq.vpn.handler.j.d();
                    }
                    list2 = (java.util.List) jVarD.f883c;
                    arrayList4 = new java.util.ArrayList();
                    if (list2 != null) {
                        arrayList4.addAll(list2);
                    }
                    list3 = t6Var.f1415b;
                    if (list3 != null) {
                        arrayList4.addAll(list3);
                    }
                    if (jVarD.f882b) {
                        a(mapS, mapW5, jVarD);
                        h5Var3.S0(strE4, mapW5);
                    }
                    mapU = k0Var10.f904d.u((int) jG, k0Var10.i(k0Var10.c(), "user_gold", mapW5), k0Var10.i(k0Var10.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                    if (!vVar3.f1006b.isEmpty()) {
                        strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                    } else if (jVar.f881a) {
                        strJ = h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                    }
                    str14 = strU2;
                    java.lang.String strP4 = h5Var3.p(str14, mapW5);
                    java.lang.String strH5 = h5Var3.h(N(str14), mapW5);
                    java.lang.String strS5 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                    y1Var = new com.sgscq.vpn.y1();
                    y1Var.e(str3, 0);
                    y1Var.e(str2, 0);
                    y1Var.e("code", 0);
                    y1Var.g("result", true);
                    y1Var.f("msg", str12);
                    y1Var.i("fight_info", strS5);
                    y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                    y1Var.i("cmn", strJ);
                    y1Var.i("map_info", strP4);
                    y1Var.i("chapter_info", strH5);
                    y1Var.i("chapter_detail", strH5);
                    if (!arrayList4.isEmpty()) {
                        y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                        y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                        y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                    }
                    if (!str11.isEmpty()) {
                        y1Var.i("surrender_info", str11);
                    }
                    if (linkedHashMap != null) {
                        y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                    }
                    if (list.isEmpty()) {
                        java.util.LinkedHashMap linkedHashMapQ9 = c.a.q("dungeon_id", str14);
                        w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA2.C == null) {
                            w1VarA2.J1();
                        }
                        if (str14 == null) {
                            strTrim = str13;
                            str15 = "01";
                            str16 = "\\d{6}";
                        } else {
                            strTrim = str14.trim();
                            str16 = "\\d{6}";
                            if (strTrim.matches(str16)) {
                                str15 = "01";
                                strTrim = strTrim.concat(str15);
                            } else {
                                str15 = "01";
                            }
                        }
                        if (!w1VarA2.C.containsKey(strTrim)) {
                            strTrim = null;
                        }
                        linkedHashMapQ9.put("before_dialog_id", strTrim);
                        w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA1.C == null) {
                            w1VarA1.J1();
                        }
                        java.util.HashMap map14 = w1VarA1.C;
                        if (str14 == null) {
                            strTrim2 = str13;
                        } else {
                            strTrim2 = str14.trim();
                            if (strTrim2.matches(str16)) {
                                strTrim2 = strTrim2.concat(str15);
                            }
                        }
                        str17 = (java.lang.String) map14.get(strTrim2);
                        linkedHashMapQ9.put("after_dialog_id", str17);
                        linkedHashMapQ9.put("before", list);
                        linkedHashMapQ9.put("after", listB);
                        y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ9));
                    } else {
                        java.util.LinkedHashMap linkedHashMapQ10 = c.a.q("dungeon_id", str14);
                        w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA2.C == null) {
                            w1VarA2.J1();
                        }
                        if (str14 == null) {
                            strTrim = str13;
                            str15 = "01";
                            str16 = "\\d{6}";
                        } else {
                            strTrim = str14.trim();
                            str16 = "\\d{6}";
                            if (strTrim.matches(str16)) {
                                str15 = "01";
                                strTrim = strTrim.concat(str15);
                            } else {
                                str15 = "01";
                            }
                        }
                        if (!w1VarA2.C.containsKey(strTrim)) {
                            strTrim = null;
                        }
                        linkedHashMapQ10.put("before_dialog_id", strTrim);
                        w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA1.C == null) {
                            w1VarA1.J1();
                        }
                        java.util.HashMap map15 = w1VarA1.C;
                        if (str14 == null) {
                            strTrim2 = str13;
                        } else {
                            strTrim2 = str14.trim();
                            if (strTrim2.matches(str16)) {
                                strTrim2 = strTrim2.concat(str15);
                            }
                        }
                        str17 = (java.lang.String) map15.get(strTrim2);
                        linkedHashMapQ10.put("after_dialog_id", str17);
                        linkedHashMapQ10.put("before", list);
                        linkedHashMapQ10.put("after", listB);
                        y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ10));
                    }
                    y1Var.d(j5, "user_coin");
                    y1Var.e("user_experience", i14);
                    int i36 = i13;
                    y1Var.e("user_level", i36);
                    y1Var.e("level", i36);
                    y1Var.e("roleLevel", i36);
                    y1Var.e("role_level", i36);
                    y1Var.e("user_power", i12);
                    java.lang.String str37 = str4;
                    y1Var.e(str37, k0Var10.i(0, str37, mapW5));
                    return k0Var10.n(y1Var.b());
                }
                str3 = "error_code";
                str2 = "ret";
                zD = false;
                if (map8 == null) {
                    str4 = "user_power_date";
                } else {
                    obj = map8.get("init");
                    str4 = "user_power_date";
                    if (obj instanceof java.util.Map) {
                        ((java.util.Map) obj).put("skipRounds", java.lang.Integer.valueOf(zE1 ? 1 : 0));
                        com.sgscq.vpn.p5.h(map8, zD);
                    }
                }
                int i210 = sVarB1.f982b;
                i2 = sVarB1.f985e;
                i3 = sVarB1.f986f;
                int iCeilPercent2 = com.sgscq.vpn.battle.BattleStarCalculator.ceilPercent(i2, i3);
                if (sVarB1.f987g) {
                    iCalculate = 0;
                    i4 = 1;
                } else {
                    i4 = 1;
                    iCalculate = com.sgscq.vpn.battle.BattleStarCalculator.calculate(true, i2, i3);
                }
                l.c cVarH3 = h(k0Var6.i(i4, "user_level", mapW5), k0Var6.i(0, "user_experience", mapW5), 0);
                iMax = java.lang.Math.max(0, xVar2.e(strU2));
                com.sgscq.vpn.w1 w1VarA13 = com.sgscq.vpn.w1.a1(k0Var6.f901a);
                i5 = cVarH3.f1783a;
                int iC8 = com.sgscq.vpn.handler.x.C(w1VarA13.y0(i5), iJ2);
                i6 = iCalculate;
                k0Var2 = xVar2.f1026a;
                iH = com.sgscq.vpn.handler.x.h(com.sgscq.vpn.w1.a1(k0Var2.f901a), strU2);
                int iB2 = com.sgscq.vpn.p5.B0(java.lang.Math.max(0, iC8), context);
                iN2 = com.sgscq.vpn.cloud.m0.n2(mapW5);
                if (iH <= 0) {
                    iFloor = 0;
                } else {
                    iFloor = (int) java.lang.Math.floor(((com.sgscq.vpn.cloud.m0.U0(iN2) + 1.0d) * ((double) iH)) + 1.0E-6d);
                }
                iB0 = com.sgscq.vpn.p5.B0(iFloor, context);
                z = sVarB1.f987g;
                iMax2 = java.lang.Math.max(0, iB2);
                if (z) {
                    iMax3 = java.lang.Math.max(0, iMax);
                } else {
                    iMax3 = 0;
                }
                if (z) {
                    iMax4 = java.lang.Math.max(0, iB0);
                } else {
                    iMax4 = 0;
                }
                int i37 = iMax4;
                j2 = iMax3;
                j3 = k0Var6.j(k0Var6.a(), mapW5) + j2;
                l.c cVarH4 = h(i5, cVarH3.f1784b, iMax2);
                i7 = cVarH4.f1784b;
                i8 = cVarH4.f1783a;
                i9 = i27 - iJ2;
                int i38 = iMax3;
                jG = com.sgscq.vpn.c7.g();
                if (i8 > i5) {
                    linkedHashMapU = com.sgscq.vpn.w1.a1(context).u(i5, i8);
                } else {
                    linkedHashMapU = null;
                }
                if (linkedHashMapU != null) {
                    m(mapW5, linkedHashMapU);
                    j4 = k0Var6.j(k0Var6.a(), mapW5) + j2;
                } else {
                    j4 = j3;
                }
                mapW5.put("user_coin", java.lang.Long.valueOf(j4));
                mapW5.put("user_experience", java.lang.Integer.valueOf(i7));
                mapW5.put("user_level", java.lang.Integer.valueOf(i8));
                d1(mapW5);
                zK0 = com.sgscq.vpn.handler.d1.K0(mapW5);
                linkedHashMap = linkedHashMapU;
                com.sgscq.vpn.p5.f(mapW5, i9, k0Var6.d(), com.sgscq.vpn.w1.a1(k0Var6.f901a).U0("RevertPowerSeconds", 300), jG);
                java.util.ArrayList arrayList16 = new java.util.ArrayList();
                i(i37, arrayList16, mapW5);
                k(mapW5, s0(), sVarB1.f987g, 1);
                if (sVarB1.f987g) {
                    obj4 = mapW5.get("dungeon_stars");
                    if (obj4 instanceof java.util.Map) {
                        mapU1 = (java.util.Map) obj4;
                    } else if (obj4 instanceof java.lang.String) {
                        mapU1 = com.sgscq.vpn.p5.u1((java.lang.String) obj4);
                    } else {
                        mapU1 = new java.util.HashMap();
                    }
                    iX = com.sgscq.vpn.handler.x.x(strU2, mapU1);
                    i10 = iMax2;
                    i11 = i6;
                    if (i11 > iX) {
                        com.sgscq.vpn.handler.x.z(i11, strU2, mapU1);
                        mapW5.put("dungeon_stars", com.sgscq.vpn.p5.s1(mapU1));
                        str5 = "SGSCQ_SRV";
                        com.sgscq.vpn.z2.e(str5, "[DungeonService] dungeon=" + strU2 + " star " + iX + " -> " + i11);
                    } else {
                        str5 = "SGSCQ_SRV";
                    }
                } else {
                    i10 = iMax2;
                    str5 = "SGSCQ_SRV";
                    i11 = i6;
                }
                com.sgscq.vpn.handler.x.n(strU2, mapW5);
                if (sVarB1.f987g) {
                    j5 = j4;
                    if (strU2 == null) {
                        i12 = i9;
                        i13 = i8;
                        i14 = i7;
                        i15 = i11;
                        strA1 = A0(strU2);
                        if (strA1 != null) {
                            w1VarA4 = com.sgscq.vpn.w1.a1(context);
                            linkedHashMap4 = new java.util.LinkedHashMap();
                            while (it9.hasNext()) {
                                java.lang.String str211 = (java.lang.String) it9.next();
                                linkedHashMap4.put(str211, w1VarA4.l0(str211));
                            }
                            com.sgscq.vpn.z2.e(str5, "[Dungeon] advanceMap dungeon=" + A0(strA1) + " changed=" + g(mapW5, strA1, w1VarA4.j0(), linkedHashMap4, "user_map_step", "user_position_step", false) + " map=" + mapW5.get("user_map_step") + " position=" + mapW5.get("user_position_step"));
                        }
                    } else {
                        i12 = i9;
                        i13 = i8;
                        i14 = i7;
                        i15 = i11;
                        strA1 = A0(strU2);
                        if (strA1 != null) {
                            w1VarA4 = com.sgscq.vpn.w1.a1(context);
                            linkedHashMap4 = new java.util.LinkedHashMap();
                            while (it9.hasNext()) {
                                java.lang.String str212 = (java.lang.String) it9.next();
                                linkedHashMap4.put(str212, w1VarA4.l0(str212));
                            }
                            com.sgscq.vpn.z2.e(str5, "[Dungeon] advanceMap dungeon=" + A0(strA1) + " changed=" + g(mapW5, strA1, w1VarA4.j0(), linkedHashMap4, "user_map_step", "user_position_step", false) + " map=" + mapW5.get("user_map_step") + " position=" + mapW5.get("user_position_step"));
                        }
                    }
                    P0(1, strU2, mapW5, sVarB1.f987g);
                    if (sVarB1.f987g) {
                        xVar = xVar2;
                        z2 = z6;
                        arrayList = Z(mapW5, xVar.g(strU2), z2);
                    } else {
                        z2 = z6;
                        xVar = xVar2;
                        arrayList = new java.util.ArrayList();
                    }
                    if (sVarB1.f987g) {
                        arrayList.add(linkedHashMapW0);
                    }
                    str6 = "pk_id";
                    if (sVarB1.f987g) {
                        vVar = new com.sgscq.vpn.handler.v();
                        if (z2) {
                            arrayList2 = arrayList;
                            str7 = "pk_id";
                            str8 = str24;
                            k0Var3 = k0Var6;
                        } else {
                            arrayList5 = new java.util.ArrayList();
                            com.sgscq.vpn.w1 w1VarA14 = com.sgscq.vpn.w1.a1(context);
                            it5 = xVar.g(strU2).iterator();
                            while (it5.hasNext()) {
                                java.util.Iterator it16 = it5;
                                java.util.ArrayList arrayList17 = arrayList;
                                java.lang.String str213 = str24;
                                strJ2 = c.a.j((java.util.Map) it5.next(), "id", str213, "item_id");
                                if (strJ2.isEmpty()) {
                                }
                                str24 = str213;
                                it5 = it16;
                                arrayList = arrayList17;
                            }
                            arrayList2 = arrayList;
                            str8 = str24;
                            strA0 = A0(strU2);
                            com.sgscq.vpn.w1 w1VarA15 = com.sgscq.vpn.w1.a1(null);
                            strV0 = w1VarA15.V0("GuideChapter_Surrender", "503002");
                            strV1 = w1VarA15.V0("GuideChapter_Surrender_GeneralId", "142022");
                            if (A0(strV0).equals(strA0)) {
                                listEmptyList = java.util.Collections.singletonList(strV1);
                            } else {
                                listEmptyList = java.util.Collections.emptyList();
                            }
                            while (r0.hasNext()) {
                                if (!arrayList5.contains(str30)) {
                                    arrayList5.add(str30);
                                }
                            }
                            it6 = arrayList5.iterator();
                            while (true) {
                                zHasNext = it6.hasNext();
                                arrayList6 = vVar.f1005a;
                                if (zHasNext) {
                                    break;
                                    break;
                                }
                                str19 = (java.lang.String) it6.next();
                                if (!f0(str19, mapW5)) {
                                    w1VarA3 = com.sgscq.vpn.w1.a1(context);
                                    mapH = w1VarA3.h(str19, mapW5);
                                    if (mapH == null) {
                                        com.sgscq.vpn.z2.g(str5, "[StoryGeneral] skip non-surrenderable story reward general_id=" + str19);
                                    } else {
                                        strValueOf2 = java.lang.String.valueOf(mapH.getOrDefault(str6, str8));
                                        it7 = com.sgscq.vpn.w1.f0("Skill", mapW5).iterator();
                                        while (true) {
                                            if (it7.hasNext()) {
                                                map6 = null;
                                                break;
                                            }
                                            it8 = it7;
                                            map6 = (java.util.Map) it7.next();
                                            if (c.a.B(map6, str6, str8, strValueOf2)) {
                                                break;
                                                break;
                                            }
                                            it7 = it8;
                                        }
                                        com.sgscq.vpn.w1.b2("general_id", str19, null, mapW5);
                                        com.sgscq.vpn.w1.b2("skill_id", w1VarA3.T0(str19), null, mapW5);
                                        vVar.f1006b.add(mapH);
                                        if (map6 != null) {
                                            vVar.f1007c.add(map6);
                                        }
                                        arrayList6.add(u(w1VarA3, str19));
                                        com.sgscq.vpn.z2.e(str5, "[StoryGeneral] owned story reward general_id=" + str19);
                                    }
                                }
                                it6 = it6;
                                k0Var6 = k0Var6;
                                str6 = str6;
                            }
                            k0Var3 = k0Var6;
                            str7 = str6;
                            while (r0.hasNext()) {
                                arrayList6.add(u(com.sgscq.vpn.w1.a1(context), str31));
                                com.sgscq.vpn.z2.e(str5, "[StoryGeneral] temporary story general show only general_id=" + str31);
                            }
                        }
                    } else {
                        arrayList2 = arrayList;
                        str7 = "pk_id";
                        str8 = str24;
                        k0Var3 = k0Var6;
                        vVar = new com.sgscq.vpn.handler.v();
                    }
                    arrayList3 = new java.util.ArrayList();
                    it = arrayList8.iterator();
                    while (it.hasNext()) {
                        java.util.LinkedHashMap linkedHashMapQ11 = c.a.q("general_id", (java.lang.String) it.next());
                        c.a.s(0, linkedHashMapQ11, "exp", 1, "level_before", 1, "level_now");
                        arrayList3.add(linkedHashMapQ11);
                    }
                    arrayList3.addAll(arrayList16);
                    if (sVarB1.f987g) {
                        map2 = map;
                        str18 = (java.lang.String) map2.get("step");
                        if (str18 == null) {
                            z3 = false;
                        } else {
                            i16 = java.lang.Integer.parseInt(str18.trim());
                            if (i16 >= 60000) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                        }
                        if (z3) {
                            zEquals = java.lang.Boolean.TRUE.equals(mapW5.get("newbie_gift_granted"));
                            listF0 = com.sgscq.vpn.w1.f0("Item", mapW5);
                            it3 = listF0.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (zEquals) {
                                        java.util.LinkedHashMap linkedHashMap9 = new java.util.LinkedHashMap();
                                        it4 = listF0.iterator();
                                        iMax5 = 0;
                                        while (true) {
                                            str9 = str8;
                                            if (it4.hasNext()) {
                                                break;
                                                break;
                                            }
                                            java.util.Iterator it17 = it4;
                                            com.sgscq.vpn.handler.v vVar6 = vVar;
                                            java.lang.String str38 = str7;
                                            iMax5 = java.lang.Math.max(iMax5, java.lang.Integer.parseInt(java.lang.String.valueOf(((java.util.Map) it4.next()).getOrDefault(str38, "0"))));
                                            str7 = str38;
                                            vVar = vVar6;
                                            it4 = it17;
                                            str8 = str9;
                                        }
                                        vVar2 = vVar;
                                        str10 = str7;
                                        linkedHashMap9.put(str10, java.lang.String.valueOf(iMax5 + 1));
                                        linkedHashMap9.put("id", "720001");
                                        c.a.z(linkedHashMap9, "item_id", "720001", 1, "item_num", 1, "num");
                                        linkedHashMap9.put("effect_time", "0");
                                        java.lang.Boolean bool3 = java.lang.Boolean.TRUE;
                                        linkedHashMap9.put("is_new", bool3);
                                        listF0.add(linkedHashMap9);
                                        mapW5.put("newbie_gift_granted", bool3);
                                        mapW5.put("Item", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", listF0));
                                        map3 = linkedHashMap9;
                                        break;
                                    }
                                    map4 = null;
                                } else {
                                    map5 = (java.util.Map) it3.next();
                                    if (c.a.C(map5, "id", str8, "item_id", "720001")) {
                                        mapW5.put("newbie_gift_granted", java.lang.Boolean.TRUE);
                                        map4 = map5;
                                    }
                                }
                                str9 = str8;
                                vVar2 = vVar;
                                str10 = str7;
                                map3 = map4;
                                break;
                            }
                        }
                        com.sgscq.vpn.handler.k0 k0Var11 = k0Var3;
                        com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var11.f903c);
                        com.sgscq.vpn.handler.x xVar7 = xVar;
                        listD = xVar7.d(strU2);
                        listB = xVar7.b(strU2);
                        java.util.LinkedHashMap linkedHashMapZ5 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i210), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent2));
                        java.util.LinkedHashMap linkedHashMapP5 = p(i13, i14, i12, k0Var11.i(0, str4, mapW5), j5, strE4, mapW5);
                        linkedHashMap2 = new java.util.LinkedHashMap();
                        linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                        linkedHashMap2.put("fight_type", 1);
                        linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                        linkedHashMap2.put("fight_calculate_info", linkedHashMapZ5);
                        linkedHashMap2.put("player_info", linkedHashMapP5);
                        linkedHashMap2.put("show_general_info", arrayList3);
                        java.util.ArrayList arrayList18 = arrayList2;
                        linkedHashMap2.put("add_list", arrayList18);
                        linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i38), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i37), "add_list", arrayList18));
                        jVar = new com.sgscq.vpn.handler.j();
                        if (sVarB1.f987g) {
                            jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                            if (jVar.c()) {
                                strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                            } else {
                                strS1 = str9;
                            }
                        } else {
                            strS1 = str9;
                        }
                        if (sVarB1.f987g) {
                            int iC9 = C(mapW5);
                            java.util.Random random5 = this.f1018c;
                            java.util.Objects.requireNonNull(random5);
                            t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC9, new com.sgscq.vpn.handler.q(1, random5));
                        } else {
                            t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                        }
                        h5Var3.S0(strE4, mapW5);
                        vVar3 = vVar2;
                        mapS = s(mapW5, arrayList18, vVar3);
                        if (map3 != null) {
                            list = listD;
                            str11 = strS1;
                            obj2 = mapS.get("Item");
                            linkedHashMap3 = linkedHashMap2;
                            str12 = "success";
                            if (obj2 instanceof java.util.Map) {
                                mapZ0 = (java.util.Map) obj2;
                            } else {
                                mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                                mapS.put("Item", mapZ0);
                            }
                            obj3 = mapZ0.get("upd");
                            if (obj3 instanceof java.util.List) {
                                listO = (java.util.List) obj3;
                            } else {
                                listO = c.a.o(mapZ0, "upd");
                            }
                            str13 = str9;
                            strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                            it2 = listO.iterator();
                            do {
                                if (it2.hasNext()) {
                                    listO.add(map3);
                                    break;
                                }
                            } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                        } else {
                            list = listD;
                            strU2 = strU2;
                            str11 = strS1;
                            linkedHashMap3 = linkedHashMap2;
                            vVar3 = vVar3;
                            str12 = "success";
                            str13 = str9;
                        }
                        jVar.a(mapS, new java.util.ArrayList());
                        if (sVarB1.f987g) {
                            jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                        } else {
                            jVarD = com.sgscq.vpn.handler.j.d();
                        }
                        list2 = (java.util.List) jVarD.f883c;
                        arrayList4 = new java.util.ArrayList();
                        if (list2 != null) {
                            arrayList4.addAll(list2);
                        }
                        list3 = t6Var.f1415b;
                        if (list3 != null) {
                            arrayList4.addAll(list3);
                        }
                        if (jVarD.f882b) {
                            a(mapS, mapW5, jVarD);
                            h5Var3.S0(strE4, mapW5);
                        }
                        mapU = k0Var11.f904d.u((int) jG, k0Var11.i(k0Var11.c(), "user_gold", mapW5), k0Var11.i(k0Var11.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                        if (!vVar3.f1006b.isEmpty()) {
                            strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                        } else if (jVar.f881a) {
                            strJ = h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                        }
                        str14 = strU2;
                        java.lang.String strP5 = h5Var3.p(str14, mapW5);
                        java.lang.String strH6 = h5Var3.h(N(str14), mapW5);
                        java.lang.String strS6 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                        y1Var = new com.sgscq.vpn.y1();
                        y1Var.e(str3, 0);
                        y1Var.e(str2, 0);
                        y1Var.e("code", 0);
                        y1Var.g("result", true);
                        y1Var.f("msg", str12);
                        y1Var.i("fight_info", strS6);
                        y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                        y1Var.i("cmn", strJ);
                        y1Var.i("map_info", strP5);
                        y1Var.i("chapter_info", strH6);
                        y1Var.i("chapter_detail", strH6);
                        if (!arrayList4.isEmpty()) {
                            y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                            y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                            y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                        }
                        if (!str11.isEmpty()) {
                            y1Var.i("surrender_info", str11);
                        }
                        if (linkedHashMap != null) {
                            y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                        }
                        if (list.isEmpty()) {
                            java.util.LinkedHashMap linkedHashMapQ12 = c.a.q("dungeon_id", str14);
                            w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA2.C == null) {
                                w1VarA2.J1();
                            }
                            if (str14 == null) {
                                strTrim = str13;
                                str15 = "01";
                                str16 = "\\d{6}";
                            } else {
                                strTrim = str14.trim();
                                str16 = "\\d{6}";
                                if (strTrim.matches(str16)) {
                                    str15 = "01";
                                    strTrim = strTrim.concat(str15);
                                } else {
                                    str15 = "01";
                                }
                            }
                            if (!w1VarA2.C.containsKey(strTrim)) {
                                strTrim = null;
                            }
                            linkedHashMapQ12.put("before_dialog_id", strTrim);
                            w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA1.C == null) {
                                w1VarA1.J1();
                            }
                            java.util.HashMap map16 = w1VarA1.C;
                            if (str14 == null) {
                                strTrim2 = str13;
                            } else {
                                strTrim2 = str14.trim();
                                if (strTrim2.matches(str16)) {
                                    strTrim2 = strTrim2.concat(str15);
                                }
                            }
                            str17 = (java.lang.String) map16.get(strTrim2);
                            linkedHashMapQ12.put("after_dialog_id", str17);
                            linkedHashMapQ12.put("before", list);
                            linkedHashMapQ12.put("after", listB);
                            y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ12));
                        } else {
                            java.util.LinkedHashMap linkedHashMapQ13 = c.a.q("dungeon_id", str14);
                            w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA2.C == null) {
                                w1VarA2.J1();
                            }
                            if (str14 == null) {
                                strTrim = str13;
                                str15 = "01";
                                str16 = "\\d{6}";
                            } else {
                                strTrim = str14.trim();
                                str16 = "\\d{6}";
                                if (strTrim.matches(str16)) {
                                    str15 = "01";
                                    strTrim = strTrim.concat(str15);
                                } else {
                                    str15 = "01";
                                }
                            }
                            if (!w1VarA2.C.containsKey(strTrim)) {
                                strTrim = null;
                            }
                            linkedHashMapQ13.put("before_dialog_id", strTrim);
                            w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            if (w1VarA1.C == null) {
                                w1VarA1.J1();
                            }
                            java.util.HashMap map17 = w1VarA1.C;
                            if (str14 == null) {
                                strTrim2 = str13;
                            } else {
                                strTrim2 = str14.trim();
                                if (strTrim2.matches(str16)) {
                                    strTrim2 = strTrim2.concat(str15);
                                }
                            }
                            str17 = (java.lang.String) map17.get(strTrim2);
                            linkedHashMapQ13.put("after_dialog_id", str17);
                            linkedHashMapQ13.put("before", list);
                            linkedHashMapQ13.put("after", listB);
                            y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ13));
                        }
                        y1Var.d(j5, "user_coin");
                        y1Var.e("user_experience", i14);
                        int i39 = i13;
                        y1Var.e("user_level", i39);
                        y1Var.e("level", i39);
                        y1Var.e("roleLevel", i39);
                        y1Var.e("role_level", i39);
                        y1Var.e("user_power", i12);
                        java.lang.String str39 = str4;
                        y1Var.e(str39, k0Var11.i(0, str39, mapW5));
                        return k0Var11.n(y1Var.b());
                    }
                    map2 = map;
                    str9 = str8;
                    vVar2 = vVar;
                    str10 = str7;
                    map3 = null;
                    com.sgscq.vpn.handler.k0 k0Var12 = k0Var3;
                    com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var12.f903c);
                    com.sgscq.vpn.handler.x xVar8 = xVar;
                    listD = xVar8.d(strU2);
                    listB = xVar8.b(strU2);
                    java.util.LinkedHashMap linkedHashMapZ6 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i210), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent2));
                    java.util.LinkedHashMap linkedHashMapP6 = p(i13, i14, i12, k0Var12.i(0, str4, mapW5), j5, strE4, mapW5);
                    linkedHashMap2 = new java.util.LinkedHashMap();
                    linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                    linkedHashMap2.put("fight_type", 1);
                    linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("fight_calculate_info", linkedHashMapZ6);
                    linkedHashMap2.put("player_info", linkedHashMapP6);
                    linkedHashMap2.put("show_general_info", arrayList3);
                    java.util.ArrayList arrayList19 = arrayList2;
                    linkedHashMap2.put("add_list", arrayList19);
                    linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i38), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i37), "add_list", arrayList19));
                    jVar = new com.sgscq.vpn.handler.j();
                    if (sVarB1.f987g) {
                        jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                        if (jVar.c()) {
                            strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                        } else {
                            strS1 = str9;
                        }
                    } else {
                        strS1 = str9;
                    }
                    if (sVarB1.f987g) {
                        int iC10 = C(mapW5);
                        java.util.Random random6 = this.f1018c;
                        java.util.Objects.requireNonNull(random6);
                        t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC10, new com.sgscq.vpn.handler.q(1, random6));
                    } else {
                        t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                    }
                    h5Var3.S0(strE4, mapW5);
                    vVar3 = vVar2;
                    mapS = s(mapW5, arrayList19, vVar3);
                    if (map3 != null) {
                        list = listD;
                        str11 = strS1;
                        obj2 = mapS.get("Item");
                        linkedHashMap3 = linkedHashMap2;
                        str12 = "success";
                        if (obj2 instanceof java.util.Map) {
                            mapZ0 = (java.util.Map) obj2;
                        } else {
                            mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                            mapS.put("Item", mapZ0);
                        }
                        obj3 = mapZ0.get("upd");
                        if (obj3 instanceof java.util.List) {
                            listO = (java.util.List) obj3;
                        } else {
                            listO = c.a.o(mapZ0, "upd");
                        }
                        str13 = str9;
                        strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                        it2 = listO.iterator();
                        do {
                            if (it2.hasNext()) {
                                listO.add(map3);
                                break;
                            }
                        } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                    } else {
                        list = listD;
                        strU2 = strU2;
                        str11 = strS1;
                        linkedHashMap3 = linkedHashMap2;
                        vVar3 = vVar3;
                        str12 = "success";
                        str13 = str9;
                    }
                    jVar.a(mapS, new java.util.ArrayList());
                    if (sVarB1.f987g) {
                        jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                    } else {
                        jVarD = com.sgscq.vpn.handler.j.d();
                    }
                    list2 = (java.util.List) jVarD.f883c;
                    arrayList4 = new java.util.ArrayList();
                    if (list2 != null) {
                        arrayList4.addAll(list2);
                    }
                    list3 = t6Var.f1415b;
                    if (list3 != null) {
                        arrayList4.addAll(list3);
                    }
                    if (jVarD.f882b) {
                        a(mapS, mapW5, jVarD);
                        h5Var3.S0(strE4, mapW5);
                    }
                    mapU = k0Var12.f904d.u((int) jG, k0Var12.i(k0Var12.c(), "user_gold", mapW5), k0Var12.i(k0Var12.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                    if (!vVar3.f1006b.isEmpty()) {
                        strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                    } else if (jVar.f881a) {
                        strJ = h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                    }
                    str14 = strU2;
                    java.lang.String strP6 = h5Var3.p(str14, mapW5);
                    java.lang.String strH7 = h5Var3.h(N(str14), mapW5);
                    java.lang.String strS7 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                    y1Var = new com.sgscq.vpn.y1();
                    y1Var.e(str3, 0);
                    y1Var.e(str2, 0);
                    y1Var.e("code", 0);
                    y1Var.g("result", true);
                    y1Var.f("msg", str12);
                    y1Var.i("fight_info", strS7);
                    y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                    y1Var.i("cmn", strJ);
                    y1Var.i("map_info", strP6);
                    y1Var.i("chapter_info", strH7);
                    y1Var.i("chapter_detail", strH7);
                    if (!arrayList4.isEmpty()) {
                        y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                        y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                        y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                    }
                    if (!str11.isEmpty()) {
                        y1Var.i("surrender_info", str11);
                    }
                    if (linkedHashMap != null) {
                        y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                    }
                    if (list.isEmpty()) {
                        java.util.LinkedHashMap linkedHashMapQ14 = c.a.q("dungeon_id", str14);
                        w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA2.C == null) {
                            w1VarA2.J1();
                        }
                        if (str14 == null) {
                            strTrim = str13;
                            str15 = "01";
                            str16 = "\\d{6}";
                        } else {
                            strTrim = str14.trim();
                            str16 = "\\d{6}";
                            if (strTrim.matches(str16)) {
                                str15 = "01";
                                strTrim = strTrim.concat(str15);
                            } else {
                                str15 = "01";
                            }
                        }
                        if (!w1VarA2.C.containsKey(strTrim)) {
                            strTrim = null;
                        }
                        linkedHashMapQ14.put("before_dialog_id", strTrim);
                        w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA1.C == null) {
                            w1VarA1.J1();
                        }
                        java.util.HashMap map18 = w1VarA1.C;
                        if (str14 == null) {
                            strTrim2 = str13;
                        } else {
                            strTrim2 = str14.trim();
                            if (strTrim2.matches(str16)) {
                                strTrim2 = strTrim2.concat(str15);
                            }
                        }
                        str17 = (java.lang.String) map18.get(strTrim2);
                        linkedHashMapQ14.put("after_dialog_id", str17);
                        linkedHashMapQ14.put("before", list);
                        linkedHashMapQ14.put("after", listB);
                        y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ14));
                    } else {
                        java.util.LinkedHashMap linkedHashMapQ15 = c.a.q("dungeon_id", str14);
                        w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA2.C == null) {
                            w1VarA2.J1();
                        }
                        if (str14 == null) {
                            strTrim = str13;
                            str15 = "01";
                            str16 = "\\d{6}";
                        } else {
                            strTrim = str14.trim();
                            str16 = "\\d{6}";
                            if (strTrim.matches(str16)) {
                                str15 = "01";
                                strTrim = strTrim.concat(str15);
                            } else {
                                str15 = "01";
                            }
                        }
                        if (!w1VarA2.C.containsKey(strTrim)) {
                            strTrim = null;
                        }
                        linkedHashMapQ15.put("before_dialog_id", strTrim);
                        w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA1.C == null) {
                            w1VarA1.J1();
                        }
                        java.util.HashMap map19 = w1VarA1.C;
                        if (str14 == null) {
                            strTrim2 = str13;
                        } else {
                            strTrim2 = str14.trim();
                            if (strTrim2.matches(str16)) {
                                strTrim2 = strTrim2.concat(str15);
                            }
                        }
                        str17 = (java.lang.String) map19.get(strTrim2);
                        linkedHashMapQ15.put("after_dialog_id", str17);
                        linkedHashMapQ15.put("before", list);
                        linkedHashMapQ15.put("after", listB);
                        y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ15));
                    }
                    y1Var.d(j5, "user_coin");
                    y1Var.e("user_experience", i14);
                    int i310 = i13;
                    y1Var.e("user_level", i310);
                    y1Var.e("level", i310);
                    y1Var.e("roleLevel", i310);
                    y1Var.e("role_level", i310);
                    y1Var.e("user_power", i12);
                    java.lang.String str310 = str4;
                    y1Var.e(str310, k0Var12.i(0, str310, mapW5));
                    return k0Var12.n(y1Var.b());
                }
                j5 = j4;
                i12 = i9;
                i13 = i8;
                i14 = i7;
                i15 = i11;
                P0(1, strU2, mapW5, sVarB1.f987g);
                if (sVarB1.f987g) {
                    xVar = xVar2;
                    z2 = z6;
                    arrayList = Z(mapW5, xVar.g(strU2), z2);
                } else {
                    z2 = z6;
                    xVar = xVar2;
                    arrayList = new java.util.ArrayList();
                }
                if (sVarB1.f987g) {
                    arrayList.add(linkedHashMapW0);
                }
                str6 = "pk_id";
                if (sVarB1.f987g) {
                    vVar = new com.sgscq.vpn.handler.v();
                    if (z2) {
                        arrayList2 = arrayList;
                        str7 = "pk_id";
                        str8 = str24;
                        k0Var3 = k0Var6;
                    } else {
                        arrayList5 = new java.util.ArrayList();
                        com.sgscq.vpn.w1 w1VarA16 = com.sgscq.vpn.w1.a1(context);
                        it5 = xVar.g(strU2).iterator();
                        while (it5.hasNext()) {
                            java.util.Iterator it18 = it5;
                            java.util.ArrayList arrayList110 = arrayList;
                            java.lang.String str214 = str24;
                            strJ2 = c.a.j((java.util.Map) it5.next(), "id", str214, "item_id");
                            if (strJ2.isEmpty()) {
                            }
                            str24 = str214;
                            it5 = it18;
                            arrayList = arrayList110;
                        }
                        arrayList2 = arrayList;
                        str8 = str24;
                        strA0 = A0(strU2);
                        com.sgscq.vpn.w1 w1VarA17 = com.sgscq.vpn.w1.a1(null);
                        strV0 = w1VarA17.V0("GuideChapter_Surrender", "503002");
                        strV1 = w1VarA17.V0("GuideChapter_Surrender_GeneralId", "142022");
                        if (A0(strV0).equals(strA0)) {
                            listEmptyList = java.util.Collections.singletonList(strV1);
                        } else {
                            listEmptyList = java.util.Collections.emptyList();
                        }
                        while (r0.hasNext()) {
                            if (!arrayList5.contains(str30)) {
                                arrayList5.add(str30);
                            }
                        }
                        it6 = arrayList5.iterator();
                        while (true) {
                            zHasNext = it6.hasNext();
                            arrayList6 = vVar.f1005a;
                            if (zHasNext) {
                                break;
                                break;
                            }
                            str19 = (java.lang.String) it6.next();
                            if (!f0(str19, mapW5)) {
                                w1VarA3 = com.sgscq.vpn.w1.a1(context);
                                mapH = w1VarA3.h(str19, mapW5);
                                if (mapH == null) {
                                    com.sgscq.vpn.z2.g(str5, "[StoryGeneral] skip non-surrenderable story reward general_id=" + str19);
                                } else {
                                    strValueOf2 = java.lang.String.valueOf(mapH.getOrDefault(str6, str8));
                                    it7 = com.sgscq.vpn.w1.f0("Skill", mapW5).iterator();
                                    while (true) {
                                        if (it7.hasNext()) {
                                            map6 = null;
                                            break;
                                        }
                                        it8 = it7;
                                        map6 = (java.util.Map) it7.next();
                                        if (c.a.B(map6, str6, str8, strValueOf2)) {
                                            break;
                                            break;
                                        }
                                        it7 = it8;
                                    }
                                    com.sgscq.vpn.w1.b2("general_id", str19, null, mapW5);
                                    com.sgscq.vpn.w1.b2("skill_id", w1VarA3.T0(str19), null, mapW5);
                                    vVar.f1006b.add(mapH);
                                    if (map6 != null) {
                                        vVar.f1007c.add(map6);
                                    }
                                    arrayList6.add(u(w1VarA3, str19));
                                    com.sgscq.vpn.z2.e(str5, "[StoryGeneral] owned story reward general_id=" + str19);
                                }
                            }
                            it6 = it6;
                            k0Var6 = k0Var6;
                            str6 = str6;
                        }
                        k0Var3 = k0Var6;
                        str7 = str6;
                        while (r0.hasNext()) {
                            arrayList6.add(u(com.sgscq.vpn.w1.a1(context), str31));
                            com.sgscq.vpn.z2.e(str5, "[StoryGeneral] temporary story general show only general_id=" + str31);
                        }
                    }
                } else {
                    arrayList2 = arrayList;
                    str7 = "pk_id";
                    str8 = str24;
                    k0Var3 = k0Var6;
                    vVar = new com.sgscq.vpn.handler.v();
                }
                arrayList3 = new java.util.ArrayList();
                it = arrayList8.iterator();
                while (it.hasNext()) {
                    java.util.LinkedHashMap linkedHashMapQ16 = c.a.q("general_id", (java.lang.String) it.next());
                    c.a.s(0, linkedHashMapQ16, "exp", 1, "level_before", 1, "level_now");
                    arrayList3.add(linkedHashMapQ16);
                }
                arrayList3.addAll(arrayList16);
                if (sVarB1.f987g) {
                    map2 = map;
                    str18 = (java.lang.String) map2.get("step");
                    if (str18 == null) {
                        z3 = false;
                    } else {
                        i16 = java.lang.Integer.parseInt(str18.trim());
                        if (i16 >= 60000) {
                            z3 = false;
                        } else {
                            z3 = false;
                        }
                    }
                    if (z3) {
                        zEquals = java.lang.Boolean.TRUE.equals(mapW5.get("newbie_gift_granted"));
                        listF0 = com.sgscq.vpn.w1.f0("Item", mapW5);
                        it3 = listF0.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                if (zEquals) {
                                    java.util.LinkedHashMap linkedHashMap10 = new java.util.LinkedHashMap();
                                    it4 = listF0.iterator();
                                    iMax5 = 0;
                                    while (true) {
                                        str9 = str8;
                                        if (it4.hasNext()) {
                                            break;
                                            break;
                                        }
                                        java.util.Iterator it19 = it4;
                                        com.sgscq.vpn.handler.v vVar7 = vVar;
                                        java.lang.String str311 = str7;
                                        iMax5 = java.lang.Math.max(iMax5, java.lang.Integer.parseInt(java.lang.String.valueOf(((java.util.Map) it4.next()).getOrDefault(str311, "0"))));
                                        str7 = str311;
                                        vVar = vVar7;
                                        it4 = it19;
                                        str8 = str9;
                                    }
                                    vVar2 = vVar;
                                    str10 = str7;
                                    linkedHashMap10.put(str10, java.lang.String.valueOf(iMax5 + 1));
                                    linkedHashMap10.put("id", "720001");
                                    c.a.z(linkedHashMap10, "item_id", "720001", 1, "item_num", 1, "num");
                                    linkedHashMap10.put("effect_time", "0");
                                    java.lang.Boolean bool4 = java.lang.Boolean.TRUE;
                                    linkedHashMap10.put("is_new", bool4);
                                    listF0.add(linkedHashMap10);
                                    mapW5.put("newbie_gift_granted", bool4);
                                    mapW5.put("Item", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", listF0));
                                    map3 = linkedHashMap10;
                                    break;
                                }
                                map4 = null;
                            } else {
                                map5 = (java.util.Map) it3.next();
                                if (c.a.C(map5, "id", str8, "item_id", "720001")) {
                                    mapW5.put("newbie_gift_granted", java.lang.Boolean.TRUE);
                                    map4 = map5;
                                }
                            }
                            str9 = str8;
                            vVar2 = vVar;
                            str10 = str7;
                            map3 = map4;
                            break;
                        }
                    }
                    com.sgscq.vpn.handler.k0 k0Var13 = k0Var3;
                    com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var13.f903c);
                    com.sgscq.vpn.handler.x xVar9 = xVar;
                    listD = xVar9.d(strU2);
                    listB = xVar9.b(strU2);
                    java.util.LinkedHashMap linkedHashMapZ7 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i210), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent2));
                    java.util.LinkedHashMap linkedHashMapP7 = p(i13, i14, i12, k0Var13.i(0, str4, mapW5), j5, strE4, mapW5);
                    linkedHashMap2 = new java.util.LinkedHashMap();
                    linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                    linkedHashMap2.put("fight_type", 1);
                    linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                    linkedHashMap2.put("fight_calculate_info", linkedHashMapZ7);
                    linkedHashMap2.put("player_info", linkedHashMapP7);
                    linkedHashMap2.put("show_general_info", arrayList3);
                    java.util.ArrayList arrayList111 = arrayList2;
                    linkedHashMap2.put("add_list", arrayList111);
                    linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i38), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i37), "add_list", arrayList111));
                    jVar = new com.sgscq.vpn.handler.j();
                    if (sVarB1.f987g) {
                        jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                        if (jVar.c()) {
                            strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                        } else {
                            strS1 = str9;
                        }
                    } else {
                        strS1 = str9;
                    }
                    if (sVarB1.f987g) {
                        int iC11 = C(mapW5);
                        java.util.Random random7 = this.f1018c;
                        java.util.Objects.requireNonNull(random7);
                        t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC11, new com.sgscq.vpn.handler.q(1, random7));
                    } else {
                        t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                    }
                    h5Var3.S0(strE4, mapW5);
                    vVar3 = vVar2;
                    mapS = s(mapW5, arrayList111, vVar3);
                    if (map3 != null) {
                        list = listD;
                        str11 = strS1;
                        obj2 = mapS.get("Item");
                        linkedHashMap3 = linkedHashMap2;
                        str12 = "success";
                        if (obj2 instanceof java.util.Map) {
                            mapZ0 = (java.util.Map) obj2;
                        } else {
                            mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                            mapS.put("Item", mapZ0);
                        }
                        obj3 = mapZ0.get("upd");
                        if (obj3 instanceof java.util.List) {
                            listO = (java.util.List) obj3;
                        } else {
                            listO = c.a.o(mapZ0, "upd");
                        }
                        str13 = str9;
                        strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                        it2 = listO.iterator();
                        do {
                            if (it2.hasNext()) {
                                listO.add(map3);
                                break;
                            }
                        } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                    } else {
                        list = listD;
                        strU2 = strU2;
                        str11 = strS1;
                        linkedHashMap3 = linkedHashMap2;
                        vVar3 = vVar3;
                        str12 = "success";
                        str13 = str9;
                    }
                    jVar.a(mapS, new java.util.ArrayList());
                    if (sVarB1.f987g) {
                        jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                    } else {
                        jVarD = com.sgscq.vpn.handler.j.d();
                    }
                    list2 = (java.util.List) jVarD.f883c;
                    arrayList4 = new java.util.ArrayList();
                    if (list2 != null) {
                        arrayList4.addAll(list2);
                    }
                    list3 = t6Var.f1415b;
                    if (list3 != null) {
                        arrayList4.addAll(list3);
                    }
                    if (jVarD.f882b) {
                        a(mapS, mapW5, jVarD);
                        h5Var3.S0(strE4, mapW5);
                    }
                    mapU = k0Var13.f904d.u((int) jG, k0Var13.i(k0Var13.c(), "user_gold", mapW5), k0Var13.i(k0Var13.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                    if (!vVar3.f1006b.isEmpty()) {
                        strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                    } else if (jVar.f881a) {
                        strJ = h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                    }
                    str14 = strU2;
                    java.lang.String strP7 = h5Var3.p(str14, mapW5);
                    java.lang.String strH8 = h5Var3.h(N(str14), mapW5);
                    java.lang.String strS8 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                    y1Var = new com.sgscq.vpn.y1();
                    y1Var.e(str3, 0);
                    y1Var.e(str2, 0);
                    y1Var.e("code", 0);
                    y1Var.g("result", true);
                    y1Var.f("msg", str12);
                    y1Var.i("fight_info", strS8);
                    y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                    y1Var.i("cmn", strJ);
                    y1Var.i("map_info", strP7);
                    y1Var.i("chapter_info", strH8);
                    y1Var.i("chapter_detail", strH8);
                    if (!arrayList4.isEmpty()) {
                        y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                        y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                        y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                    }
                    if (!str11.isEmpty()) {
                        y1Var.i("surrender_info", str11);
                    }
                    if (linkedHashMap != null) {
                        y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                    }
                    if (list.isEmpty()) {
                        java.util.LinkedHashMap linkedHashMapQ17 = c.a.q("dungeon_id", str14);
                        w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA2.C == null) {
                            w1VarA2.J1();
                        }
                        if (str14 == null) {
                            strTrim = str13;
                            str15 = "01";
                            str16 = "\\d{6}";
                        } else {
                            strTrim = str14.trim();
                            str16 = "\\d{6}";
                            if (strTrim.matches(str16)) {
                                str15 = "01";
                                strTrim = strTrim.concat(str15);
                            } else {
                                str15 = "01";
                            }
                        }
                        if (!w1VarA2.C.containsKey(strTrim)) {
                            strTrim = null;
                        }
                        linkedHashMapQ17.put("before_dialog_id", strTrim);
                        w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA1.C == null) {
                            w1VarA1.J1();
                        }
                        java.util.HashMap map110 = w1VarA1.C;
                        if (str14 == null) {
                            strTrim2 = str13;
                        } else {
                            strTrim2 = str14.trim();
                            if (strTrim2.matches(str16)) {
                                strTrim2 = strTrim2.concat(str15);
                            }
                        }
                        str17 = (java.lang.String) map110.get(strTrim2);
                        linkedHashMapQ17.put("after_dialog_id", str17);
                        linkedHashMapQ17.put("before", list);
                        linkedHashMapQ17.put("after", listB);
                        y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ17));
                    } else {
                        java.util.LinkedHashMap linkedHashMapQ18 = c.a.q("dungeon_id", str14);
                        w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA2.C == null) {
                            w1VarA2.J1();
                        }
                        if (str14 == null) {
                            strTrim = str13;
                            str15 = "01";
                            str16 = "\\d{6}";
                        } else {
                            strTrim = str14.trim();
                            str16 = "\\d{6}";
                            if (strTrim.matches(str16)) {
                                str15 = "01";
                                strTrim = strTrim.concat(str15);
                            } else {
                                str15 = "01";
                            }
                        }
                        if (!w1VarA2.C.containsKey(strTrim)) {
                            strTrim = null;
                        }
                        linkedHashMapQ18.put("before_dialog_id", strTrim);
                        w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                        if (w1VarA1.C == null) {
                            w1VarA1.J1();
                        }
                        java.util.HashMap map111 = w1VarA1.C;
                        if (str14 == null) {
                            strTrim2 = str13;
                        } else {
                            strTrim2 = str14.trim();
                            if (strTrim2.matches(str16)) {
                                strTrim2 = strTrim2.concat(str15);
                            }
                        }
                        str17 = (java.lang.String) map111.get(strTrim2);
                        linkedHashMapQ18.put("after_dialog_id", str17);
                        linkedHashMapQ18.put("before", list);
                        linkedHashMapQ18.put("after", listB);
                        y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ18));
                    }
                    y1Var.d(j5, "user_coin");
                    y1Var.e("user_experience", i14);
                    int i311 = i13;
                    y1Var.e("user_level", i311);
                    y1Var.e("level", i311);
                    y1Var.e("roleLevel", i311);
                    y1Var.e("role_level", i311);
                    y1Var.e("user_power", i12);
                    java.lang.String str312 = str4;
                    y1Var.e(str312, k0Var13.i(0, str312, mapW5));
                    return k0Var13.n(y1Var.b());
                }
                map2 = map;
                str9 = str8;
                vVar2 = vVar;
                str10 = str7;
                map3 = null;
                com.sgscq.vpn.handler.k0 k0Var14 = k0Var3;
                com.sgscq.vpn.cloud.m0.Y1(strE4, mapW5, map2, k0Var14.f903c);
                com.sgscq.vpn.handler.x xVar10 = xVar;
                listD = xVar10.d(strU2);
                listB = xVar10.b(strU2);
                java.util.LinkedHashMap linkedHashMapZ8 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(i15), "rounds", java.lang.Integer.valueOf(i210), "residue_team_num", java.lang.Integer.valueOf(i2), "residue_team_percent", java.lang.Integer.valueOf(iCeilPercent2));
                java.util.LinkedHashMap linkedHashMapP8 = p(i13, i14, i12, k0Var14.i(0, str4, mapW5), j5, strE4, mapW5);
                linkedHashMap2 = new java.util.LinkedHashMap();
                linkedHashMap2.put("success", java.lang.Boolean.valueOf(sVarB1.f987g));
                linkedHashMap2.put("fight_type", 1);
                linkedHashMap2.put("star", java.lang.Integer.valueOf(i15));
                linkedHashMap2.put("star_level", java.lang.Integer.valueOf(i15));
                linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(i15));
                linkedHashMap2.put("fight_calculate_info", linkedHashMapZ8);
                linkedHashMap2.put("player_info", linkedHashMapP8);
                linkedHashMap2.put("show_general_info", arrayList3);
                java.util.ArrayList arrayList112 = arrayList2;
                linkedHashMap2.put("add_list", arrayList112);
                linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(i38), "user_exp", java.lang.Integer.valueOf(i10), "general_exp", java.lang.Integer.valueOf(i37), "add_list", arrayList112));
                jVar = new com.sgscq.vpn.handler.j();
                if (sVarB1.f987g) {
                    jVar = com.sgscq.vpn.handler.y0.c(s0(), mapW5);
                    if (jVar.c()) {
                        strS1 = com.sgscq.vpn.p5.s1((java.util.Map) jVar.f884d);
                    } else {
                        strS1 = str9;
                    }
                } else {
                    strS1 = str9;
                }
                if (sVarB1.f987g) {
                    int iC12 = C(mapW5);
                    java.util.Random random8 = this.f1018c;
                    java.util.Objects.requireNonNull(random8);
                    t6Var = com.sgscq.vpn.cloud.m0.X2(mapW5, iJ2, jG, iC12, new com.sgscq.vpn.handler.q(1, random8));
                } else {
                    t6Var = new com.sgscq.vpn.t6(0, new java.util.ArrayList());
                }
                h5Var3.S0(strE4, mapW5);
                vVar3 = vVar2;
                mapS = s(mapW5, arrayList112, vVar3);
                if (map3 != null) {
                    list = listD;
                    str11 = strS1;
                    obj2 = mapS.get("Item");
                    linkedHashMap3 = linkedHashMap2;
                    str12 = "success";
                    if (obj2 instanceof java.util.Map) {
                        mapZ0 = (java.util.Map) obj2;
                    } else {
                        mapZ0 = com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", new java.util.ArrayList());
                        mapS.put("Item", mapZ0);
                    }
                    obj3 = mapZ0.get("upd");
                    if (obj3 instanceof java.util.List) {
                        listO = (java.util.List) obj3;
                    } else {
                        listO = c.a.o(mapZ0, "upd");
                    }
                    str13 = str9;
                    strValueOf = java.lang.String.valueOf(map3.getOrDefault(str10, str13));
                    it2 = listO.iterator();
                    do {
                        if (it2.hasNext()) {
                            listO.add(map3);
                            break;
                        }
                    } while (!c.a.B((java.util.Map) it2.next(), str10, str13, strValueOf));
                } else {
                    list = listD;
                    strU2 = strU2;
                    str11 = strS1;
                    linkedHashMap3 = linkedHashMap2;
                    vVar3 = vVar3;
                    str12 = "success";
                    str13 = str9;
                }
                jVar.a(mapS, new java.util.ArrayList());
                if (sVarB1.f987g) {
                    jVarD = com.sgscq.vpn.handler.m.o(mapW5, 1, 1);
                } else {
                    jVarD = com.sgscq.vpn.handler.j.d();
                }
                list2 = (java.util.List) jVarD.f883c;
                arrayList4 = new java.util.ArrayList();
                if (list2 != null) {
                    arrayList4.addAll(list2);
                }
                list3 = t6Var.f1415b;
                if (list3 != null) {
                    arrayList4.addAll(list3);
                }
                if (jVarD.f882b) {
                    a(mapS, mapW5, jVarD);
                    h5Var3.S0(strE4, mapW5);
                }
                mapU = k0Var14.f904d.u((int) jG, k0Var14.i(k0Var14.c(), "user_gold", mapW5), k0Var14.i(k0Var14.b(), "user_energy", mapW5), i12, j5, strE4, mapW5);
                if (!vVar3.f1006b.isEmpty()) {
                    strJ = h5Var3.m(mapW5, new org.json.JSONObject(mapU));
                } else if (jVar.f881a) {
                    strJ = h5Var3.j(mapS, new org.json.JSONObject(mapU), e1(zK0, "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"));
                }
                str14 = strU2;
                java.lang.String strP8 = h5Var3.p(str14, mapW5);
                java.lang.String strH9 = h5Var3.h(N(str14), mapW5);
                java.lang.String strS9 = com.sgscq.vpn.p5.s1(sVarB1.f981a);
                y1Var = new com.sgscq.vpn.y1();
                y1Var.e(str3, 0);
                y1Var.e(str2, 0);
                y1Var.e("code", 0);
                y1Var.g("result", true);
                y1Var.f("msg", str12);
                y1Var.i("fight_info", strS9);
                y1Var.i("fight_result", com.sgscq.vpn.p5.s1(linkedHashMap3));
                y1Var.i("cmn", strJ);
                y1Var.i("map_info", strP8);
                y1Var.i("chapter_info", strH9);
                y1Var.i("chapter_detail", strH9);
                if (!arrayList4.isEmpty()) {
                    y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList4));
                    y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList4));
                    y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList4));
                }
                if (!str11.isEmpty()) {
                    y1Var.i("surrender_info", str11);
                }
                if (linkedHashMap != null) {
                    y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                }
                if (list.isEmpty()) {
                    java.util.LinkedHashMap linkedHashMapQ19 = c.a.q("dungeon_id", str14);
                    w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                    if (w1VarA2.C == null) {
                        w1VarA2.J1();
                    }
                    if (str14 == null) {
                        strTrim = str13;
                        str15 = "01";
                        str16 = "\\d{6}";
                    } else {
                        strTrim = str14.trim();
                        str16 = "\\d{6}";
                        if (strTrim.matches(str16)) {
                            str15 = "01";
                            strTrim = strTrim.concat(str15);
                        } else {
                            str15 = "01";
                        }
                    }
                    if (!w1VarA2.C.containsKey(strTrim)) {
                        strTrim = null;
                    }
                    linkedHashMapQ19.put("before_dialog_id", strTrim);
                    w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                    if (w1VarA1.C == null) {
                        w1VarA1.J1();
                    }
                    java.util.HashMap map112 = w1VarA1.C;
                    if (str14 == null) {
                        strTrim2 = str13;
                    } else {
                        strTrim2 = str14.trim();
                        if (strTrim2.matches(str16)) {
                            strTrim2 = strTrim2.concat(str15);
                        }
                    }
                    str17 = (java.lang.String) map112.get(strTrim2);
                    linkedHashMapQ19.put("after_dialog_id", str17);
                    linkedHashMapQ19.put("before", list);
                    linkedHashMapQ19.put("after", listB);
                    y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ19));
                } else {
                    java.util.LinkedHashMap linkedHashMapQ110 = c.a.q("dungeon_id", str14);
                    w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                    if (w1VarA2.C == null) {
                        w1VarA2.J1();
                    }
                    if (str14 == null) {
                        strTrim = str13;
                        str15 = "01";
                        str16 = "\\d{6}";
                    } else {
                        strTrim = str14.trim();
                        str16 = "\\d{6}";
                        if (strTrim.matches(str16)) {
                            str15 = "01";
                            strTrim = strTrim.concat(str15);
                        } else {
                            str15 = "01";
                        }
                    }
                    if (!w1VarA2.C.containsKey(strTrim)) {
                        strTrim = null;
                    }
                    linkedHashMapQ110.put("before_dialog_id", strTrim);
                    w1VarA1 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                    if (w1VarA1.C == null) {
                        w1VarA1.J1();
                    }
                    java.util.HashMap map113 = w1VarA1.C;
                    if (str14 == null) {
                        strTrim2 = str13;
                    } else {
                        strTrim2 = str14.trim();
                        if (strTrim2.matches(str16)) {
                            strTrim2 = strTrim2.concat(str15);
                        }
                    }
                    str17 = (java.lang.String) map113.get(strTrim2);
                    linkedHashMapQ110.put("after_dialog_id", str17);
                    linkedHashMapQ110.put("before", list);
                    linkedHashMapQ110.put("after", listB);
                    y1Var.i("plot_dialog", com.sgscq.vpn.p5.s1(linkedHashMapQ110));
                }
                y1Var.d(j5, "user_coin");
                y1Var.e("user_experience", i14);
                int i312 = i13;
                y1Var.e("user_level", i312);
                y1Var.e("level", i312);
                y1Var.e("roleLevel", i312);
                y1Var.e("role_level", i312);
                y1Var.e("user_power", i12);
                java.lang.String str313 = str4;
                y1Var.e(str313, k0Var14.i(0, str313, mapW5));
                return k0Var14.n(y1Var.b());
            }
            k0Var = k0Var4;
            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] fight not enough power: " + i27 + " < " + iJ2);
            com.sgscq.vpn.y1 y1Var5 = new com.sgscq.vpn.y1();
            y1Var5.e("error_code", -1);
            y1Var5.e("ret", -1);
            y1Var5.e("code", -1);
            y1Var5.g("result", false);
            y1Var5.f("msg", "体力不足");
            com.sgscq.vpn.y1 y1VarH3 = y1Var5.h("fight_before_info");
            y1VarH3.f("dungeonId", strU2);
            y1VarH3.e("maxTimes", i26);
            y1VarH3.e("leftTimes", java.lang.Math.max(0, i26 - iX2));
            y1VarH3.e("powerCost", iJ2);
            y1VarH3.e("curPower", i27);
            y1VarH3.e("user_power_date", i28);
            y1VarH3.g("canFight", false);
            y1VarH3.b();
            strB = y1Var5.b();
            return k0Var.n(strB);
        }
        com.sgscq.vpn.z2.c("SGSCQ_SRV", "[Dungeon] fight player not found: " + strE4);
        linkedHashMapZ0 = com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在");
        k0Var = k0Var4;
        strB = com.sgscq.vpn.p5.s1(linkedHashMapZ0);
        return k0Var.n(strB);
    }

    /* JADX WARN: Code duplicated, block: B:91:0x02b0 A[Catch: Exception -> 0x032d, TryCatch #4 {Exception -> 0x032d, blocks: (B:79:0x0285, B:81:0x0295, B:91:0x02b0, B:94:0x02c6, B:98:0x02d3, B:83:0x029d, B:85:0x02a1), top: B:197:0x0285 }] */
    public final com.sgscq.vpn.handler.s b1(java.lang.String str, java.util.ArrayList arrayList, java.util.Map map) {
        java.lang.Object obj;
        java.lang.String str2;
        com.sgscq.vpn.handler.k0 k0Var;
        com.sgscq.vpn.handler.s sVar;
        java.lang.String str3;
        int i2;
        java.lang.String str4;
        java.lang.Object obj2;
        com.sgscq.vpn.handler.k0 k0Var2;
        int iW0;
        java.util.ArrayList arrayList2;
        boolean z;
        java.util.Map mapO;
        com.sgscq.vpn.handler.w wVar = this;
        java.lang.String str5 = str;
        java.lang.String str6 = "user_nickname";
        java.lang.String str7 = "SGSCQ_SRV";
        com.sgscq.vpn.handler.k0 k0Var3 = wVar.f1016a;
        com.sgscq.vpn.handler.s sVar2 = new com.sgscq.vpn.handler.s();
        try {
            com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var3.f901a);
            java.util.ArrayList arrayListP = P(map);
            if (arrayListP.isEmpty() && (mapO = O(map)) != null) {
                arrayListP.add(mapO);
            }
            java.lang.String str8 = "112018";
            java.lang.String str9 = "general_id";
            if (arrayListP.isEmpty()) {
                arrayListP.add(com.sgscq.vpn.p5.z0("general_id", "112018", new java.lang.Object[0]));
            }
            l(w1VarA1, arrayListP, map);
            com.sgscq.vpn.cloud.k kVarV = V(str);
            java.lang.Object obj3 = kVarV.f375d;
            java.lang.Object obj4 = kVarV.f374c;
            com.sgscq.vpn.cloud.k kVar = kVarV;
            java.lang.Object obj5 = kVarV.f373b;
            int iMax = java.lang.Math.max(1, w1VarA1.h1(wVar.N0(map)));
            if (arrayList.isEmpty()) {
                i2 = 0;
            } else {
                java.util.Iterator it = arrayList.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    java.lang.String str10 = (java.lang.String) it.next();
                    if (str10 != null && !str10.isEmpty()) {
                        i3++;
                    }
                }
                i2 = i3;
            }
            try {
                int iMax2 = java.lang.Math.max(0, i2) + java.lang.Math.max(1, iMax);
                java.util.ArrayList arrayList3 = new java.util.ArrayList();
                java.util.Iterator it2 = arrayList.iterator();
                int i4 = 0;
                while (it2.hasNext()) {
                    int i5 = i4;
                    java.lang.String str11 = (java.lang.String) it2.next();
                    if (str11 == null || str11.isEmpty()) {
                        str4 = str6;
                        i4 = i5;
                    } else {
                        str4 = str6;
                        try {
                            arrayList3.add(t0(null, w1VarA1, str11, 0, arrayList3.size(), w1VarA1.R0(str11), true, false, false, false));
                            i4 = i5 + 1;
                        } catch (java.lang.Exception e2) {
                            e = e2;
                            k0Var = k0Var3;
                            sVar = sVar2;
                            obj = "玩家";
                            str2 = str4;
                            str3 = str5;
                            c.a.D(e, new java.lang.StringBuilder("[Dungeon] simulateBattle error: "), str7);
                            java.util.LinkedHashMap linkedHashMapT = t(1, str3, map);
                            sVar.f981a = linkedHashMapT;
                            n(java.lang.String.valueOf(map.getOrDefault(str2, obj)), J(com.sgscq.vpn.w1.a1(k0Var.f901a), str3), linkedHashMapT);
                            sVar.f982b = 1;
                            sVar.f983c = 1;
                            sVar.f984d = 1;
                            sVar.f985e = 1;
                            sVar.f986f = 1;
                            sVar.f987g = false;
                            return sVar;
                        }
                    }
                    obj4 = obj4;
                    obj5 = obj5;
                    str6 = str4;
                }
                str4 = str6;
                int i6 = i4;
                java.lang.Object obj6 = obj4;
                java.lang.Object obj7 = obj5;
                java.util.Iterator it3 = arrayListP.iterator();
                int i7 = 0;
                while (true) {
                    try {
                        if (it3.hasNext()) {
                            try {
                                java.util.Iterator it4 = it3;
                                java.util.Map map2 = (java.util.Map) it3.next();
                                if (i7 < iMax) {
                                    obj2 = obj3;
                                    if (arrayList3.size() >= iMax2) {
                                        break;
                                    }
                                    java.lang.String strValueOf = java.lang.String.valueOf(map2.getOrDefault(str9, map2.getOrDefault("id", str8)));
                                    java.lang.String str12 = str8;
                                    int size = arrayList3.size();
                                    java.lang.String str13 = str9;
                                    k0Var = k0Var3;
                                    try {
                                        java.lang.String strValueOf2 = java.lang.String.valueOf(map2.getOrDefault("general_name", w1VarA1.R0(strValueOf)));
                                        com.sgscq.vpn.handler.e eVar = new com.sgscq.vpn.handler.e(strValueOf, 0, size);
                                        eVar.f812d = map2;
                                        eVar.f813e = map;
                                        eVar.f814f = w1VarA1;
                                        eVar.f815g = strValueOf2;
                                        eVar.f818j = true;
                                        eVar.a(500.0d, 300.0d, 200.0d);
                                        arrayList3.add(com.sgscq.vpn.handler.f.a(eVar));
                                        i7++;
                                        str5 = str;
                                        str8 = str12;
                                        it3 = it4;
                                        str9 = str13;
                                        obj3 = obj2;
                                        k0Var3 = k0Var;
                                    } catch (java.lang.Exception e3) {
                                        e = e3;
                                    }
                                    e = e3;
                                    str3 = str;
                                }
                            } catch (java.lang.Exception e4) {
                                e = e4;
                                k0Var = k0Var3;
                                str3 = str;
                            }
                            str7 = "SGSCQ_SRV";
                            obj = "玩家";
                            str2 = str4;
                            sVar = sVar2;
                            c.a.D(e, new java.lang.StringBuilder("[Dungeon] simulateBattle error: "), str7);
                            java.util.LinkedHashMap linkedHashMapT2 = t(1, str3, map);
                            sVar.f981a = linkedHashMapT2;
                            n(java.lang.String.valueOf(map.getOrDefault(str2, obj)), J(com.sgscq.vpn.w1.a1(k0Var.f901a), str3), linkedHashMapT2);
                            sVar.f982b = 1;
                            sVar.f983c = 1;
                            sVar.f984d = 1;
                            sVar.f985e = 1;
                            sVar.f986f = 1;
                            sVar.f987g = false;
                            return sVar;
                        }
                        obj2 = obj3;
                        break;
                    } catch (java.lang.Exception e5) {
                        e = e5;
                        k0Var = k0Var3;
                        obj = "玩家";
                        str2 = str4;
                        sVar = sVar2;
                        str3 = str5;
                    }
                }
                k0Var = k0Var3;
                com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Dungeon] battle allies deployed=" + arrayListP.size() + " storyGuests=" + arrayList.size() + " playerLimit=" + iMax + " totalLimit=" + iMax2 + " playerUsed=" + i7 + " storyGuestsUsed=" + i6 + " used=" + arrayList3.size() + " level=" + wVar.N0(map));
                java.util.ArrayList<com.sgscq.vpn.battle.BattleUnit> arrayList4 = new java.util.ArrayList();
                java.util.ArrayList arrayList5 = new java.util.ArrayList();
                arrayList5.addAll((java.util.List) obj7);
                arrayList5.addAll((java.util.List) obj6);
                str3 = str;
                try {
                    int i8 = java.lang.Integer.parseInt(str3.substring(0, 3)) - 500;
                    int I = I(str);
                    com.sgscq.vpn.handler.k0 k0Var4 = k0Var;
                    try {
                        int iMax3 = java.lang.Math.max(1, com.sgscq.vpn.w1.a1(k0Var4.f901a).l0(A(str)).size());
                        com.sgscq.vpn.handler.t tVarZ0 = Z0(w1VarA1);
                        boolean zK0 = k0(str);
                        boolean z2 = k0(str) && K(str) <= 30;
                        int i9 = 0;
                        while (i9 < arrayList5.size()) {
                            try {
                                java.lang.String str14 = (java.lang.String) arrayList5.get(i9);
                                java.util.Map mapW0 = wVar.W0(w1VarA1, str14);
                                k0Var = k0Var4;
                                try {
                                    if (i9 < ((java.util.List) obj2).size()) {
                                        java.util.Map map3 = (java.util.Map) ((java.util.List) obj2).get(i9);
                                        if (map3 == null || map3.isEmpty()) {
                                            arrayList2 = arrayList5;
                                        } else {
                                            arrayList2 = arrayList5;
                                            try {
                                                java.lang.Object obj8 = map3.get("battle_skills");
                                                java.lang.Object obj9 = map3.get("battle_lieutenants");
                                                if (((obj8 instanceof java.util.List) && !((java.util.List) obj8).isEmpty()) || ((obj9 instanceof java.util.List) && !((java.util.List) obj9).isEmpty())) {
                                                    z = true;
                                                }
                                                if (z) {
                                                    mapW0 = x0(mapW0, (java.util.Map) ((java.util.List) obj2).get(i9), w1VarA1);
                                                }
                                            } catch (java.lang.Exception e6) {
                                                e = e6;
                                                k0Var2 = k0Var;
                                                str7 = "SGSCQ_SRV";
                                                obj = "玩家";
                                                str2 = str4;
                                                sVar = sVar2;
                                                k0Var = k0Var2;
                                                c.a.D(e, new java.lang.StringBuilder("[Dungeon] simulateBattle error: "), str7);
                                                java.util.LinkedHashMap linkedHashMapT3 = t(1, str3, map);
                                                sVar.f981a = linkedHashMapT3;
                                                n(java.lang.String.valueOf(map.getOrDefault(str2, obj)), J(com.sgscq.vpn.w1.a1(k0Var.f901a), str3), linkedHashMapT3);
                                                sVar.f982b = 1;
                                                sVar.f983c = 1;
                                                sVar.f984d = 1;
                                                sVar.f985e = 1;
                                                sVar.f986f = 1;
                                                sVar.f987g = false;
                                                return sVar;
                                            }
                                        }
                                        z = false;
                                        if (z) {
                                            mapW0 = x0(mapW0, (java.util.Map) ((java.util.List) obj2).get(i9), w1VarA1);
                                        }
                                    } else {
                                        arrayList2 = arrayList5;
                                    }
                                    com.sgscq.vpn.battle.BattleUnit battleUnitT0 = t0(mapW0, w1VarA1, str14, 1, i9, w1VarA1.R0(str14), false, mapW0 != null, zK0, z2);
                                    j(battleUnitT0, str3, i8, tVarZ0);
                                    java.lang.Object obj10 = obj2;
                                    int i10 = i9;
                                    com.sgscq.vpn.handler.t tVar = tVarZ0;
                                    com.sgscq.vpn.cloud.k kVar2 = kVar;
                                    k0Var2 = k0Var;
                                    int i11 = i8;
                                    com.sgscq.vpn.w1 w1Var = w1VarA1;
                                    try {
                                        double[] dArrF = F(str, i8, I, iMax3, tVar);
                                        battleUnitT0.scaleStats(dArrF[0], dArrF[1], dArrF[2], dArrF[3]);
                                        arrayList4.add(battleUnitT0);
                                        i9 = i10 + 1;
                                        wVar = this;
                                        arrayList5 = arrayList2;
                                        obj2 = obj10;
                                        tVarZ0 = tVar;
                                        i8 = i11;
                                        k0Var4 = k0Var2;
                                        kVar = kVar2;
                                        w1VarA1 = w1Var;
                                    } catch (java.lang.Exception e7) {
                                        e = e7;
                                        str7 = "SGSCQ_SRV";
                                        obj = "玩家";
                                        str2 = str4;
                                        sVar = sVar2;
                                        k0Var = k0Var2;
                                        c.a.D(e, new java.lang.StringBuilder("[Dungeon] simulateBattle error: "), str7);
                                        java.util.LinkedHashMap linkedHashMapT4 = t(1, str3, map);
                                        sVar.f981a = linkedHashMapT4;
                                        n(java.lang.String.valueOf(map.getOrDefault(str2, obj)), J(com.sgscq.vpn.w1.a1(k0Var.f901a), str3), linkedHashMapT4);
                                        sVar.f982b = 1;
                                        sVar.f983c = 1;
                                        sVar.f984d = 1;
                                        sVar.f985e = 1;
                                        sVar.f986f = 1;
                                        sVar.f987g = false;
                                        return sVar;
                                    }
                                } catch (java.lang.Exception e8) {
                                    e = e8;
                                }
                            } catch (java.lang.Exception e9) {
                                e = e9;
                                k0Var2 = k0Var4;
                            }
                        }
                        k0Var2 = k0Var4;
                        com.sgscq.vpn.w1 w1Var2 = w1VarA1;
                        com.sgscq.vpn.cloud.k kVar3 = kVar;
                        int size2 = ((java.util.List) obj7).size();
                        int size3 = ((java.util.List) obj6).size();
                        o.h hVarA = o.h.a();
                        double dB = com.sgscq.vpn.w1.B(map);
                        try {
                            com.sgscq.vpn.w1 w1VarA2 = com.sgscq.vpn.w1.a1(k0Var2.f901a);
                            java.lang.String strT0 = T0(str);
                            k0Var = k0Var2;
                            try {
                                int i12 = i7;
                                java.lang.String[] strArr = {"enemy_govern", "dungeon_govern", "govern_value", "govern"};
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= 4) {
                                        iW0 = 0;
                                        break;
                                    }
                                    iW0 = w1VarA2.w0(strT0, 0, strArr[i13]);
                                    if (iW0 > 0) {
                                        break;
                                    }
                                    i13++;
                                }
                                com.sgscq.vpn.battle.BattleResult battleResultB = hVarA.b(new com.sgscq.vpn.battle.BattleScenario(arrayList3, arrayList4, null, dB, iW0));
                                int i14 = 0;
                                int i15 = 0;
                                for (int i16 = 0; i16 < arrayList3.size(); i16++) {
                                    if (((com.sgscq.vpn.battle.BattleUnit) arrayList3.get(i16)).isAlive()) {
                                        i14++;
                                        if (i16 >= i6) {
                                            i15++;
                                        }
                                    }
                                }
                                java.util.Map<java.lang.String, java.lang.Object> fightInfo = battleResultB.getFightInfo();
                                sVar = sVar2;
                                try {
                                    sVar.f981a = fightInfo;
                                    obj = "玩家";
                                    str2 = str4;
                                    try {
                                        n(java.lang.String.valueOf(map.getOrDefault(str2, obj)), J(w1Var2, str3), fightInfo);
                                        java.util.Map map4 = sVar.f981a;
                                        if (map4 != null) {
                                            java.lang.Object obj11 = map4.get("init");
                                            if (obj11 instanceof java.util.Map) {
                                                java.util.Map map5 = (java.util.Map) obj11;
                                                map5.put("cards_size1", java.lang.Integer.valueOf(java.lang.Math.max(0, size2)));
                                                map5.put("backups_size1", java.lang.Integer.valueOf(java.lang.Math.max(0, size3)));
                                            }
                                        }
                                        v0(k0(str) ? kVar3.f372a : -1, sVar.f981a);
                                        sVar.f982b = java.lang.Math.max(1, battleResultB.getRoundCount());
                                        sVar.f983c = i15;
                                        sVar.f984d = java.lang.Math.max(1, i12);
                                        sVar.f985e = i14;
                                        sVar.f986f = java.lang.Math.max(1, arrayList3.size());
                                        sVar.f987g = battleResultB.isSuccess();
                                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                                        sb.append("[Dungeon] battle result dungeon=");
                                        sb.append(str3);
                                        sb.append(" success=");
                                        sb.append(sVar.f987g);
                                        sb.append(" allies=");
                                        sb.append(arrayList3.size());
                                        sb.append(" playerAlive=");
                                        sb.append(sVar.f983c);
                                        sb.append("/");
                                        sb.append(sVar.f984d);
                                        sb.append(" allyAlive=");
                                        sb.append(sVar.f985e);
                                        sb.append("/");
                                        sb.append(sVar.f986f);
                                        sb.append(" enemiesFront=");
                                        sb.append(((java.util.List) obj7).size());
                                        sb.append(" enemiesBackup=");
                                        sb.append(((java.util.List) obj6).size());
                                        sb.append(" enemiesUsed=");
                                        sb.append(arrayList4.size());
                                        sb.append(" enemyAlive=");
                                        int i17 = 0;
                                        for (com.sgscq.vpn.battle.BattleUnit battleUnit : arrayList4) {
                                            if (battleUnit != null && battleUnit.isAlive()) {
                                                i17++;
                                            }
                                        }
                                        sb.append(i17);
                                        sb.append(" enemyHp=");
                                        sb.append(c1(arrayList4));
                                        java.lang.String string = sb.toString();
                                        str7 = "SGSCQ_SRV";
                                        try {
                                            com.sgscq.vpn.z2.e(str7, string);
                                            return sVar;
                                        } catch (java.lang.Exception e10) {
                                            e = e10;
                                        }
                                    } catch (java.lang.Exception e11) {
                                        e = e11;
                                        str7 = "SGSCQ_SRV";
                                    }
                                } catch (java.lang.Exception e12) {
                                    e = e12;
                                    str7 = "SGSCQ_SRV";
                                    obj = "玩家";
                                    str2 = str4;
                                }
                            } catch (java.lang.Exception e13) {
                                e = e13;
                                str7 = "SGSCQ_SRV";
                                obj = "玩家";
                                str2 = str4;
                                sVar = sVar2;
                            }
                        } catch (java.lang.Exception e14) {
                            e = e14;
                            k0Var = k0Var2;
                            str7 = "SGSCQ_SRV";
                        }
                    } catch (java.lang.Exception e15) {
                        e = e15;
                        k0Var = k0Var4;
                    }
                } catch (java.lang.Exception e16) {
                    e = e16;
                }
            } catch (java.lang.Exception e17) {
                e = e17;
                str2 = str6;
                k0Var = k0Var3;
                sVar = sVar2;
                obj = "玩家";
            }
        } catch (java.lang.Exception e18) {
            e = e18;
            obj = "玩家";
            str2 = "user_nickname";
            k0Var = k0Var3;
            sVar = sVar2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:152:0x0407  */
    /* JADX WARN: Code duplicated, block: B:154:0x040e A[PHI: r10
      0x040e: PHI (r10v34 int) = (r10v33 int), (r10v35 int) binds: [B:153:0x040c, B:150:0x0404] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:155:0x0414  */
    /* JADX WARN: Code duplicated, block: B:38:0x0148  */
    /* JADX WARN: Code duplicated, block: B:51:0x019b  */
    /* JADX WARN: Code duplicated, block: B:54:0x01a0  */
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
    public final byte[] c0(java.util.Map map, boolean z) {
        boolean z2;
        int i2;
        java.lang.String str;
        int iMin;
        int i3;
        java.util.ArrayList arrayList;
        long j2;
        java.lang.String strB;
        java.lang.String str2;
        int iU0;
        java.util.LinkedHashMap linkedHashMapZ0;
        int i4;
        com.sgscq.vpn.handler.r rVar;
        java.lang.String strTrim;
        int i5;
        int i6;
        java.lang.String str3;
        int iIntValue;
        int i7;
        int iV1;
        boolean z3;
        boolean z4;
        java.util.LinkedHashMap linkedHashMapZ1;
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        java.lang.String strE = k0Var.e(map);
        java.lang.String strU = U(map);
        java.lang.Math.min(Y0(10, map), 99);
        com.sgscq.vpn.h5 h5Var = k0Var.f904d;
        java.util.Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            com.sgscq.vpn.z2.c("SGSCQ_SRV", "[Dungeon] multiKill player not found: " + strE);
            linkedHashMapZ1 = com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在");
        } else {
            if (!z) {
                Q0(strE, mapW0);
            }
            com.sgscq.vpn.handler.x xVar = this.f1017b;
            if (xVar.l(strE, strU) > 0) {
                int i8 = k0Var.i(k0Var.i(k0Var.i(0, "vip_level", mapW0), "vipLevel", mapW0), "user_vip_level", mapW0);
                int iN0 = N0(mapW0);
                if (!z ? !(iN0 >= 16 || i8 >= 2) : i8 < 12) {
                    android.content.Context context = k0Var.f901a;
                    if (z) {
                        if (context == null || i8 < 12) {
                            z4 = false;
                        } else {
                            try {
                                boolean zD = new com.sgscq.vpn.h(0, context).d(5);
                                if (i8 < 12 || !zD) {
                                    z4 = false;
                                } else {
                                    z4 = true;
                                }
                            } catch (java.lang.RuntimeException unused) {
                            }
                        }
                        if (!z4) {
                            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] special multiKill requires active Afdian LV5: uid=" + strE);
                            linkedHashMapZ1 = com.sgscq.vpn.p5.z0("error_code", -5, "ret", -5, "code", -5, "result", java.lang.Boolean.FALSE, "msg", "自动连斩仅限爱发电 LV5 及以上且游戏 VIP12 用户使用");
                        }
                    }
                    if (z) {
                        z2 = false;
                    } else {
                        if (context == null || i8 < 12) {
                            z3 = false;
                        } else {
                            try {
                                boolean zD2 = new com.sgscq.vpn.h(0, context).d(5);
                                if (i8 < 12 || !zD2) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                            } catch (java.lang.RuntimeException unused2) {
                            }
                        }
                        if (z3) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    }
                    int i9 = i8 >= 12 && z2 ? 99 : 10;
                    int i10 = z ? 10 : i9;
                    int iMin2 = (z || z2) ? 99 : java.lang.Math.min(i9, 99);
                    int iMin3 = java.lang.Math.min(Y0(i10, map), iMin2);
                    if (z) {
                        Q0(strE, mapW0);
                    }
                    java.lang.String str4 = strE;
                    int iJ = xVar.j(strU);
                    int i11 = iMin2;
                    java.lang.String str5 = "user_power";
                    int i12 = k0Var.i(k0Var.d(), "user_power", mapW0);
                    boolean z5 = z || z2;
                    if (z5 || i12 >= iJ) {
                        int iC = xVar.c(strU, mapW0);
                        if (z5) {
                            int i13 = xVar.i(strU, mapW0);
                            int iMax = java.lang.Math.max(0, java.lang.Math.min(99, iMin3));
                            int iN2 = com.sgscq.vpn.cloud.m0.n2(mapW0);
                            int iB0 = com.sgscq.vpn.cloud.m0.b0("600028", mapW0);
                            int iMax2 = java.lang.Math.max(0, com.sgscq.vpn.cloud.m0.i2(iN2, context, "600028") - iB0);
                            boolean zO = com.sgscq.vpn.handler.x.o(strU);
                            int iMax3 = java.lang.Math.max(0, com.sgscq.vpn.cloud.m0.h0(iN2, context, zO) - com.sgscq.vpn.cloud.m0.a0(mapW0, zO));
                            int iMax4 = java.lang.Math.max(1, i13);
                            int i14 = 0;
                            int iG0 = G0(mapW0.get("user_gold"), 0);
                            java.lang.String str6 = zO ? "600035" : "600031";
                            str = strU;
                            int i15 = iMax;
                            while (true) {
                                if (i15 < 1) {
                                    i4 = iC;
                                    i2 = iJ;
                                    rVar = new com.sgscq.vpn.handler.r(0, 0, 0, 0, 0, 0, zO);
                                    break;
                                }
                                int iMax5 = java.lang.Math.max(i14, (java.lang.Math.max(i14, iJ) * i15) - java.lang.Math.max(i14, i12));
                                int i16 = iMax5 <= 0 ? 0 : ((iMax5 + 40) - 1) / 40;
                                i2 = iJ;
                                int iMax6 = java.lang.Math.max(0, i15 - java.lang.Math.max(0, iC));
                                int i17 = iMax6 <= 0 ? 0 : ((iMax6 + iMax4) - 1) / iMax4;
                                if (i16 <= iMax2 && i17 <= iMax3) {
                                    if (i16 <= 0) {
                                        i4 = iC;
                                        i6 = iMax3;
                                        i7 = 0;
                                        iIntValue = 0;
                                    } else {
                                        java.util.ArrayList arrayListJ0 = J0();
                                        int i18 = 0;
                                        iIntValue = 0;
                                        while (i18 < i16) {
                                            iIntValue = ((java.lang.Integer) arrayListJ0.get(java.lang.Math.max(0, java.lang.Math.min(iB0 + i18, arrayListJ0.size() - 1)))).intValue() + iIntValue;
                                            i18++;
                                            iMax3 = iMax3;
                                            iC = iC;
                                        }
                                        i4 = iC;
                                        i6 = iMax3;
                                        i7 = 0;
                                    }
                                    if (i17 <= 0) {
                                        iV1 = i7;
                                        str3 = str6;
                                    } else {
                                        str3 = str6;
                                        iV1 = com.sgscq.vpn.p5.v1(i17, i7, str3, mapW0);
                                    }
                                    int i19 = iIntValue + iV1;
                                    if (i19 <= iG0) {
                                        rVar = new com.sgscq.vpn.handler.r(i15, i16, i17, i16 * 40, i17 * iMax4, i19, zO);
                                        break;
                                    }
                                } else {
                                    iMax2 = iMax2;
                                    i4 = iC;
                                    i6 = iMax3;
                                    str3 = str6;
                                }
                                i15--;
                                str6 = str3;
                                iMax2 = iMax2;
                                iMax3 = i6;
                                iJ = i2;
                                iC = i4;
                                i14 = 0;
                            }
                            iMin = rVar.f970a;
                            if (iMin <= 0) {
                                com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] multiKill auto supply cannot afford any fight");
                                linkedHashMapZ0 = com.sgscq.vpn.p5.z0("error_code", -2, "ret", -2, "code", -2, "result", java.lang.Boolean.FALSE, "msg", "元宝或今日购买次数不足");
                            } else {
                                int i20 = rVar.f974e;
                                if (iMin > 0) {
                                    mapW0.put("user_gold", java.lang.Integer.valueOf(G0(mapW0.get("user_gold"), 0) - rVar.f975f));
                                    int i21 = rVar.f971b;
                                    if (i21 > 0) {
                                        com.sgscq.vpn.cloud.m0.D2(com.sgscq.vpn.cloud.m0.x2("600028", mapW0) + i21, "600028", mapW0);
                                    }
                                    int i22 = rVar.f972c;
                                    if (i22 > 0) {
                                        boolean z6 = rVar.f976g;
                                        com.sgscq.vpn.cloud.m0.C2(com.sgscq.vpn.cloud.m0.w2(mapW0, z6) + i22, mapW0, z6);
                                        if (i20 > 0) {
                                            java.lang.String str7 = z6 ? "elite_dungeon_times_extra" : "dungeon_times_extra";
                                            if (str == null) {
                                                strTrim = "";
                                            } else {
                                                strTrim = str.trim();
                                                if (strTrim.isEmpty() || "null".equalsIgnoreCase(strTrim)) {
                                                    strTrim = "";
                                                } else if (strTrim.startsWith("105")) {
                                                    i5 = 8;
                                                    if (strTrim.length() >= 8) {
                                                        strTrim = strTrim.substring(0, i5);
                                                    } else {
                                                        i5 = 6;
                                                        if (strTrim.length() >= 6) {
                                                            strTrim = strTrim.substring(0, i5);
                                                        }
                                                    }
                                                } else {
                                                    i5 = 6;
                                                    if (strTrim.length() >= 6) {
                                                        strTrim = strTrim.substring(0, i5);
                                                    }
                                                }
                                            }
                                            java.lang.Object obj = mapW0.get(str7);
                                            java.util.LinkedHashMap linkedHashMap = obj instanceof java.util.Map ? new java.util.LinkedHashMap((java.util.Map) obj) : new java.util.LinkedHashMap();
                                            linkedHashMap.put(strTrim, java.lang.Integer.valueOf(G0(linkedHashMap.get(strTrim), 0) + i20));
                                            mapW0.put(str7, linkedHashMap);
                                        }
                                    }
                                }
                                i12 += rVar.f973d;
                                iC = i4 + i20;
                            }
                        } else {
                            i2 = iJ;
                            str = strU;
                            iMin = iMin3;
                        }
                        if (iC <= 0) {
                            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] multiKill max times reached");
                            linkedHashMapZ0 = com.sgscq.vpn.p5.z0("error_code", -2, "ret", -2, "code", -2, "result", java.lang.Boolean.FALSE, "msg", "挑战次数不足");
                        } else {
                            if (z5) {
                                i3 = 1;
                            } else {
                                int iMin4 = java.lang.Math.min(Y0(i10, map), i11);
                                iMin = java.lang.Math.min(iMin4, java.lang.Math.min(java.lang.Math.max(0, iC), i2 <= 0 ? iMin4 : i12 / i2));
                                i3 = 1;
                                if (iMin < 1) {
                                    iMin = 1;
                                }
                            }
                            int i23 = i2 * iMin;
                            java.util.ArrayList arrayList2 = new java.util.ArrayList();
                            java.util.ArrayList arrayList3 = new java.util.ArrayList();
                            com.sgscq.vpn.handler.w wVar = this;
                            l.c cVarH = wVar.h(k0Var.i(i3, "user_level", mapW0), k0Var.i(0, "user_experience", mapW0), 0);
                            java.lang.String str8 = "user_level";
                            com.sgscq.vpn.handler.x xVar2 = xVar;
                            java.lang.String str9 = str;
                            int iL = xVar2.l(str4, str9);
                            int i24 = cVarH.f1783a;
                            java.lang.String str10 = "user_gold";
                            java.lang.String str11 = "user_experience";
                            java.lang.String str12 = "error_code";
                            int i25 = 0;
                            int i26 = 0;
                            int i27 = 0;
                            int i28 = cVarH.f1784b;
                            int i29 = 0;
                            while (true) {
                                arrayList = arrayList2;
                                if (i29 >= iMin) {
                                    break;
                                }
                                int i30 = iMin;
                                int iMax7 = java.lang.Math.max(0, xVar2.e(str9));
                                i2 = i2;
                                int iC2 = com.sgscq.vpn.handler.x.C(com.sgscq.vpn.w1.a1(k0Var.f901a).y0(i24), i2);
                                int i31 = i12;
                                int iH = com.sgscq.vpn.handler.x.h(com.sgscq.vpn.w1.a1(xVar2.f1026a.f901a), str9);
                                int iFloor = iH <= 0 ? 0 : (int) java.lang.Math.floor(((com.sgscq.vpn.cloud.m0.U0(i8) + 1.0d) * ((double) iH)) + 1.0E-6d);
                                android.content.Context context2 = context;
                                int iB1 = com.sgscq.vpn.p5.B0(java.lang.Math.max(0, iC2), context2);
                                int iB2 = com.sgscq.vpn.p5.B0(iFloor, context2);
                                int iMax8 = java.lang.Math.max(0, iB1);
                                int iMax9 = java.lang.Math.max(0, iMax7);
                                int iMax10 = java.lang.Math.max(0, iB2);
                                l.c cVarH2 = wVar.h(i24, i28, iMax8);
                                int i32 = cVarH2.f1783a;
                                int i33 = cVarH2.f1784b;
                                int i34 = i25 + iMax9;
                                int i35 = i26 + iMax8;
                                int i36 = i27 + iMax10;
                                com.sgscq.vpn.handler.x.A(com.sgscq.vpn.c7.b(), mapW0);
                                com.sgscq.vpn.handler.x.x(str9, com.sgscq.vpn.handler.x.k(mapW0));
                                boolean z7 = !e0(str9, mapW0);
                                java.util.ArrayList arrayList4 = new java.util.ArrayList();
                                arrayList4.addAll(wVar.Z(mapW0, xVar2.g(str9), z7));
                                java.util.LinkedHashMap linkedHashMapW0 = wVar.w0(mapW0);
                                if (linkedHashMapW0 != null) {
                                    arrayList4.add(linkedHashMapW0);
                                }
                                com.sgscq.vpn.handler.x.n(str9, mapW0);
                                arrayList3.addAll(arrayList4);
                                long j3 = ((long) i34) + k0Var.j(k0Var.a(), mapW0);
                                int i37 = i29 + 1;
                                int i38 = i31 - (i2 * i37);
                                java.util.LinkedHashMap linkedHashMapZ2 = com.sgscq.vpn.p5.z0("star_level", java.lang.Integer.valueOf(iL), "rounds", 0, "residue_team_num", 0, "residue_team_percent", 0);
                                if (i38 < k0Var.d()) {
                                    iU0 = com.sgscq.vpn.w1.a1(context2).U0("RevertPowerSeconds", 300);
                                    str2 = str9;
                                } else {
                                    str2 = str9;
                                    iU0 = 0;
                                }
                                java.lang.String str13 = str2;
                                java.lang.String str14 = str4;
                                java.util.LinkedHashMap linkedHashMapP = p(i32, i33, i38, iU0, j3, str14, mapW0);
                                java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
                                linkedHashMap2.put("success", java.lang.Boolean.TRUE);
                                linkedHashMap2.put("fight_type", 1);
                                linkedHashMap2.put("star", java.lang.Integer.valueOf(iL));
                                linkedHashMap2.put("star_level", java.lang.Integer.valueOf(iL));
                                linkedHashMap2.put("dungeon_starLevel", java.lang.Integer.valueOf(iL));
                                linkedHashMap2.put("fight_calculate_info", linkedHashMapZ2);
                                linkedHashMap2.put("player_info", linkedHashMapP);
                                linkedHashMap2.put("show_general_info", java.util.Collections.emptyList());
                                linkedHashMap2.put("add_list", arrayList4);
                                linkedHashMap2.put("drop_info", com.sgscq.vpn.p5.z0("user_coin", java.lang.Integer.valueOf(iMax9), "user_exp", java.lang.Integer.valueOf(iMax8), "general_exp", java.lang.Integer.valueOf(iMax10), "add_list", arrayList4));
                                java.util.LinkedHashMap linkedHashMap3 = new java.util.LinkedHashMap();
                                linkedHashMap3.put("fight_info", t(0, str13, mapW0));
                                linkedHashMap3.put("fight_result", linkedHashMap2);
                                arrayList.add(linkedHashMap3);
                                i28 = i33;
                                wVar = this;
                                str9 = str13;
                                context = context2;
                                xVar2 = xVar2;
                                i25 = i34;
                                iMin = i30;
                                i24 = i32;
                                i12 = i31;
                                i26 = i35;
                                i27 = i36;
                                str4 = str14;
                                arrayList3 = arrayList3;
                                str5 = str5;
                                str10 = str10;
                                str11 = str11;
                                str8 = str8;
                                str12 = str12;
                                arrayList2 = arrayList;
                                i29 = i37;
                            }
                            int i39 = i12;
                            int i40 = iMin;
                            com.sgscq.vpn.handler.w wVar2 = wVar;
                            java.util.ArrayList arrayList5 = arrayList3;
                            java.lang.String str15 = str10;
                            java.lang.String str16 = str4;
                            java.lang.String str17 = str11;
                            java.lang.String str18 = str12;
                            java.lang.String str19 = str5;
                            android.content.Context context3 = context;
                            java.lang.String str20 = str8;
                            java.lang.String str21 = str9;
                            l.c cVarH3 = wVar2.h(k0Var.i(1, str20, mapW0), k0Var.i(0, str17, mapW0), 0);
                            long j4 = i25;
                            long j5 = k0Var.j(k0Var.a(), mapW0) + j4;
                            int i41 = cVarH3.f1784b;
                            int i42 = cVarH3.f1783a;
                            l.c cVarH4 = wVar2.h(i42, i41, i26);
                            int iMax11 = java.lang.Math.max(0, i39 - i23);
                            long jG = com.sgscq.vpn.c7.g();
                            int i43 = cVarH4.f1783a;
                            int i44 = i27;
                            java.util.LinkedHashMap linkedHashMapU = i43 > i42 ? com.sgscq.vpn.w1.a1(context3).u(i42, i43) : null;
                            if (linkedHashMapU != null) {
                                wVar2.m(mapW0, linkedHashMapU);
                                j2 = k0Var.j(k0Var.a(), mapW0) + j4;
                            } else {
                                j2 = j5;
                            }
                            mapW0.put("user_coin", java.lang.Long.valueOf(j2));
                            int i45 = cVarH4.f1784b;
                            mapW0.put(str17, java.lang.Integer.valueOf(i45));
                            mapW0.put(str20, java.lang.Integer.valueOf(i43));
                            wVar2.d1(mapW0);
                            boolean zK0 = com.sgscq.vpn.handler.d1.K0(mapW0);
                            com.sgscq.vpn.p5.f(mapW0, iMax11, k0Var.d(), com.sgscq.vpn.w1.a1(context3).U0("RevertPowerSeconds", 300), jG);
                            wVar2.i(i44, null, mapW0);
                            java.util.ArrayList arrayListS0 = s0();
                            k(mapW0, arrayListS0, i40 > 0, i40);
                            P0(i40, str21, mapW0, i40 > 0);
                            com.sgscq.vpn.handler.j jVarC = com.sgscq.vpn.handler.y0.c(arrayListS0, mapW0);
                            com.sgscq.vpn.cloud.m0.Y1(str16, mapW0, map, k0Var.f903c);
                            com.sgscq.vpn.handler.j jVarO = com.sgscq.vpn.handler.m.o(mapW0, 1, i40);
                            int iC3 = wVar2.C(mapW0);
                            java.util.Random random = wVar2.f1018c;
                            java.util.Objects.requireNonNull(random);
                            com.sgscq.vpn.t6 t6VarX2 = com.sgscq.vpn.cloud.m0.X2(mapW0, i23, jG, iC3, new com.sgscq.vpn.handler.q(0, random));
                            java.util.List list = (java.util.List) jVarO.f883c;
                            java.util.ArrayList arrayList6 = new java.util.ArrayList();
                            if (list != null) {
                                arrayList6.addAll(list);
                            }
                            java.util.List list2 = t6VarX2.f1415b;
                            if (list2 != null) {
                                arrayList6.addAll(list2);
                            }
                            h5Var.S0(str16, mapW0);
                            long j6 = j2;
                            java.util.LinkedHashMap linkedHashMap4 = linkedHashMapU;
                            java.util.HashMap mapU = k0Var.f904d.u((int) jG, k0Var.i(k0Var.c(), str15, mapW0), k0Var.i(k0Var.b(), "user_energy", mapW0), iMax11, j6, str16, mapW0);
                            java.util.HashMap mapS = s(mapW0, arrayList5, new com.sgscq.vpn.handler.v());
                            jVarC.a(mapS, new java.util.ArrayList());
                            if (jVarO.f882b) {
                                a(mapS, mapW0, jVarO);
                            }
                            java.lang.String[] strArrE1 = e1(zK0, jVarO.f882b ? D(jVarO) : new java.lang.String[]{"General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas", "GeneralSoul", "SkillPiece"});
                            java.lang.String strJ = h5Var.j(mapS, new org.json.JSONObject(mapU), strArrE1);
                            java.lang.String strP = h5Var.p(str21, mapW0);
                            java.lang.String strH = h5Var.h(N(str21), mapW0);
                            com.sgscq.vpn.y1 y1Var = new com.sgscq.vpn.y1();
                            y1Var.e(str18, 0);
                            y1Var.e("ret", 0);
                            y1Var.e("code", 0);
                            y1Var.g("result", true);
                            y1Var.f("msg", "success");
                            java.lang.StringBuilder sb = new java.lang.StringBuilder();
                            if (strArrE1.length > 0) {
                                sb.append((java.lang.CharSequence) strArrE1[0]);
                                for (int i46 = 1; i46 < strArrE1.length; i46++) {
                                    sb.append((java.lang.CharSequence) ",");
                                    sb.append((java.lang.CharSequence) strArrE1[i46]);
                                }
                            }
                            y1Var.f("cmn_modules", sb.toString());
                            y1Var.i("fight_result_all", com.sgscq.vpn.p5.s1(arrayList));
                            y1Var.i("cmn", strJ);
                            y1Var.i("map_info", strP);
                            y1Var.i("chapter_info", strH);
                            y1Var.i("chapter_detail", strH);
                            y1Var.d(j6, "user_coin");
                            y1Var.e(str17, i45);
                            y1Var.e(str20, i43);
                            y1Var.e("level", i43);
                            y1Var.e("roleLevel", i43);
                            y1Var.e("role_level", i43);
                            y1Var.e(str19, iMax11);
                            k0Var = k0Var;
                            y1Var.e("user_power_date", k0Var.i(0, "user_power_date", mapW0));
                            if (!arrayList6.isEmpty()) {
                                y1Var.i("meeting_info", com.sgscq.vpn.p5.s1(arrayList6));
                                y1Var.i("meeting_list", com.sgscq.vpn.p5.s1(arrayList6));
                                y1Var.i("list", com.sgscq.vpn.p5.s1(arrayList6));
                            }
                            if (linkedHashMap4 != null) {
                                y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap4));
                            }
                            if (jVarC.c()) {
                                y1Var.i("surrender_info", com.sgscq.vpn.p5.s1((java.util.Map) jVarC.f884d));
                            }
                            strB = y1Var.b();
                        }
                        return k0Var.n(strB);
                    }
                    com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] multiKill not enough power: " + i12 + " < " + iJ);
                    linkedHashMapZ0 = com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "体力不足");
                    strB = com.sgscq.vpn.p5.s1(linkedHashMapZ0);
                    return k0Var.n(strB);
                }
                com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] multiKill level too low: uid=" + strE + " vip=" + i8 + " level=" + iN0 + " special=" + z);
                linkedHashMapZ1 = com.sgscq.vpn.p5.z0("error_code", -4, "ret", -4, "code", -4, "result", java.lang.Boolean.FALSE, "msg", "等级或VIP等级不足");
            } else {
                com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Dungeon] multiKill dungeon not completed: uid=" + strE + " dungeon=" + strU);
                linkedHashMapZ1 = com.sgscq.vpn.p5.z0("error_code", -3, "ret", -3, "code", -3, "result", java.lang.Boolean.FALSE, "msg", "关卡尚未完成");
            }
        }
        return k0Var.n(com.sgscq.vpn.p5.s1(linkedHashMapZ1));
    }

    /* JADX WARN: Code duplicated, block: B:126:0x03f4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:128:0x042f  */
    /* JADX WARN: Code duplicated, block: B:130:0x043a  */
    /* JADX WARN: Code duplicated, block: B:132:0x0448  */
    /* JADX WARN: Code duplicated, block: B:135:0x0454  */
    /* JADX WARN: Code duplicated, block: B:138:0x0463  */
    /* JADX WARN: Code duplicated, block: B:140:0x0467  */
    /* JADX WARN: Code duplicated, block: B:151:0x049b  */
    /* JADX WARN: Code duplicated, block: B:153:0x049f  */
    /* JADX WARN: Code duplicated, block: B:156:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:157:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:159:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:162:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:16:0x0076 A[PHI: r2 r5 r12 r14
      0x0076: PHI (r2v39 com.sgscq.vpn.handler.k0) = 
      (r2v0 com.sgscq.vpn.handler.k0)
      (r2v0 com.sgscq.vpn.handler.k0)
      (r2v0 com.sgscq.vpn.handler.k0)
      (r2v1 com.sgscq.vpn.handler.k0)
     binds: [B:15:0x0074, B:18:0x0094, B:19:0x0096, B:252:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x0076: PHI (r5v54 java.lang.String) = (r5v3 java.lang.String), (r5v3 java.lang.String), (r5v3 java.lang.String), (r5v4 java.lang.String) binds: [B:15:0x0074, B:18:0x0094, B:19:0x0096, B:252:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x0076: PHI (r12v41 java.lang.String) = (r12v0 java.lang.String), (r12v0 java.lang.String), (r12v0 java.lang.String), (r12v1 java.lang.String) binds: [B:15:0x0074, B:18:0x0094, B:19:0x0096, B:252:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x0076: PHI (r14v31 com.sgscq.vpn.h5) = (r14v0 com.sgscq.vpn.h5), (r14v0 com.sgscq.vpn.h5), (r14v0 com.sgscq.vpn.h5), (r14v1 com.sgscq.vpn.h5) binds: [B:15:0x0074, B:18:0x0094, B:19:0x0096, B:252:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:172:0x052a  */
    /* JADX WARN: Code duplicated, block: B:175:0x0536  */
    /* JADX WARN: Code duplicated, block: B:176:0x0539  */
    /* JADX WARN: Code duplicated, block: B:180:0x0547  */
    /* JADX WARN: Code duplicated, block: B:184:0x055a  */
    /* JADX WARN: Code duplicated, block: B:188:0x0640  */
    /* JADX WARN: Code duplicated, block: B:190:0x0658  */
    /* JADX WARN: Code duplicated, block: B:196:0x069f  */
    /* JADX WARN: Code duplicated, block: B:198:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:199:0x06b2  */
    /* JADX WARN: Code duplicated, block: B:200:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:204:0x0709  */
    /* JADX WARN: Code duplicated, block: B:205:0x0713  */
    /* JADX WARN: Code duplicated, block: B:208:0x0738  */
    /* JADX WARN: Code duplicated, block: B:209:0x0745  */
    /* JADX WARN: Code duplicated, block: B:212:0x07a8  */
    /* JADX WARN: Code duplicated, block: B:213:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:216:0x0802  */
    /* JADX WARN: Code duplicated, block: B:225:0x0690 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x049f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x049b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:? A[LOOP:2: B:133:0x044e->B:243:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x04cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x04bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x0556 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0283  */
    /* JADX WARN: Instruction removed from duplicated block: B:127:0x03f6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:190:0x0658, please report this as an issue */
    public final byte[] d0(java.util.Map map) {
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        com.sgscq.vpn.handler.k0 k0Var;
        java.lang.String str4;
        com.sgscq.vpn.h5 h5Var;
        int iMax;
        java.util.LinkedHashMap linkedHashMapZ0;
        android.content.Context context;
        java.lang.String str5;
        java.lang.String str6;
        java.lang.String str7;
        java.util.LinkedHashMap linkedHashMapA1;
        java.lang.String str8;
        java.lang.String str9;
        int i2;
        java.util.Random random;
        int i3;
        int iNextInt;
        int iNextInt2;
        int iNextInt3;
        long j2;
        int i4;
        int i5;
        java.util.LinkedHashMap linkedHashMapU;
        boolean zK0;
        long j3;
        java.util.LinkedHashMap linkedHashMap;
        org.json.JSONObject jSONObject;
        int i6;
        java.lang.String strJ;
        com.sgscq.vpn.y1 y1Var;
        java.lang.String strB;
        com.sgscq.vpn.handler.k0 k0Var2;
        java.util.ArrayList arrayList;
        java.lang.String str10;
        java.lang.String str11;
        java.lang.String str12;
        java.lang.String strB2;
        com.sgscq.vpn.handler.k0 k0Var3;
        java.lang.Object obj;
        java.lang.Object obj2;
        boolean z;
        java.lang.Object obj3;
        java.lang.Object obj4;
        java.util.List listO;
        java.util.Iterator it;
        java.util.ArrayList arrayList2;
        java.util.Iterator it2;
        java.lang.Object next;
        java.lang.String strJ2;
        int iG0;
        int iG1;
        java.util.Iterator it3;
        java.lang.String str13;
        com.sgscq.vpn.h5 h5Var2;
        java.util.Map linkedHashMap2;
        com.sgscq.vpn.handler.k0 k0Var4 = this.f1016a;
        java.lang.String strE = k0Var4.e(map);
        java.lang.String str14 = (java.lang.String) map.getOrDefault("boxType", (java.lang.String) map.getOrDefault("type", "1"));
        java.lang.String[] strArr = {(java.lang.String) map.get("box_id"), (java.lang.String) map.get("boxId"), (java.lang.String) map.get("dungeon_id"), (java.lang.String) map.get("dungeonId"), (java.lang.String) map.get("id")};
        int i7 = 0;
        while (true) {
            str = "null";
            if (i7 >= 5) {
                str2 = "";
                break;
            }
            java.lang.String str15 = strArr[i7];
            if (str15 != null && !str15.isEmpty() && !"null".equalsIgnoreCase(str15)) {
                str2 = str15;
                break;
            }
            i7++;
        }
        com.sgscq.vpn.h5 h5Var3 = k0Var4.f904d;
        java.util.Map mapW0 = h5Var3.w0(strE);
        boolean zIsEmpty = str2.isEmpty();
        android.content.Context context2 = k0Var4.f901a;
        java.lang.String str16 = "item_id";
        if (zIsEmpty) {
            k0Var = k0Var4;
            str3 = str14;
            str4 = strE;
            h5Var = h5Var3;
            linkedHashMapZ0 = null;
        } else {
            java.lang.String strA = A(str2);
            com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(context2);
            java.util.List listP0 = w1VarA1.p0(strA);
            int size = w1VarA1.m0(strA, strA).size();
            if (strA == null || listP0 == null) {
                k0Var = k0Var4;
                str3 = str14;
                str4 = strE;
                h5Var = h5Var3;
                linkedHashMapZ0 = null;
            } else {
                java.util.Iterator it4 = listP0.iterator();
                int i8 = 0;
                while (true) {
                    if (it4.hasNext()) {
                        str3 = str14;
                        java.util.List list = (java.util.List) it4.next();
                        k0Var = k0Var4;
                        str4 = strE;
                        java.lang.String strValueOf = list.size() > 2 ? java.lang.String.valueOf(list.get(2)) : "";
                        h5Var = h5Var3;
                        java.lang.String strValueOf2 = list.size() > 3 ? java.lang.String.valueOf(list.get(3)) : "";
                        if (strValueOf2.isEmpty() || str.equalsIgnoreCase(strValueOf2)) {
                            if ("元宝".equals(strValueOf)) {
                                strValueOf2 = "600034";
                            } else {
                                if (!"银两".equals(strValueOf) && !"金币".equals(strValueOf)) {
                                    "铜钱".equals(strValueOf);
                                }
                                strValueOf2 = "600026";
                            }
                        }
                        java.lang.String str17 = str;
                        int iG2 = list.size() > 4 ? G0(list.get(4), 0) : 0;
                        if (iG2 <= 0) {
                            try {
                                iMax = java.lang.Math.max(1, java.lang.Integer.parseInt(strA) - 500);
                            } catch (java.lang.Exception unused) {
                                iMax = 1;
                            }
                            iG2 = ((i8 + 1) * iMax * 50) + 100;
                        }
                        int i9 = i8 + 1;
                        int iMax2 = java.lang.Math.max(1, i8 + size + 1);
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append(strA);
                        java.lang.String str18 = strA;
                        int i10 = size;
                        sb.append(java.lang.String.format(java.util.Locale.ROOT, "%03d", java.lang.Integer.valueOf(iMax2)));
                        if (sb.toString().equals(str2)) {
                            linkedHashMapZ0 = com.sgscq.vpn.p5.z0("item_id", strValueOf2, "item_num", java.lang.Integer.valueOf(iG2), "item_type", java.lang.Integer.valueOf("600034".equals(strValueOf2) ? 16 : 5), "name", strValueOf);
                        } else {
                            strA = str18;
                            k0Var4 = k0Var;
                            str14 = str3;
                            strE = str4;
                            str = str17;
                            i8 = i9;
                            size = i10;
                            h5Var3 = h5Var;
                        }
                    } else {
                        k0Var = k0Var4;
                        str3 = str14;
                        str4 = strE;
                        h5Var = h5Var3;
                        linkedHashMapZ0 = null;
                    }
                }
            }
        }
        if (linkedHashMapZ0 != null) {
            java.util.ArrayList arrayList3 = new java.util.ArrayList();
            if (mapW0 == null) {
                mapW0 = new java.util.HashMap();
            }
            java.lang.Object obj5 = mapW0.get("chapter_reward_boxes");
            if ((obj5 instanceof java.util.Map) && java.lang.Boolean.TRUE.equals(((java.util.Map) obj5).get(str2))) {
                str13 = str4;
                h5Var2 = h5Var;
            } else {
                java.util.Map mapC1 = com.sgscq.vpn.w1.a1(context2).c1(str2);
                if (mapC1 == null || !c.a.A(mapC1, "item_type", "1")) {
                    Y(arrayList3, mapW0, linkedHashMapZ0);
                } else {
                    java.lang.Object obj6 = mapC1.get("effect_value");
                    if (obj6 instanceof java.util.Map) {
                        java.lang.Object obj7 = ((java.util.Map) obj6).get("add_list");
                        if (obj7 instanceof java.util.List) {
                            java.util.Iterator it5 = ((java.util.List) obj7).iterator();
                            while (it5.hasNext()) {
                                java.lang.Object next2 = it5.next();
                                if (next2 instanceof java.util.Map) {
                                    java.util.Map map2 = (java.util.Map) next2;
                                    Y(arrayList3, mapW0, com.sgscq.vpn.p5.z0("item_id", java.lang.String.valueOf(map2.getOrDefault("id", "")), "item_num", java.lang.Integer.valueOf(java.lang.Integer.parseInt(java.lang.String.valueOf(map2.getOrDefault("num", "1")))), "type", java.lang.Integer.valueOf(G0(map2.get("type"), 5))));
                                    it5 = it5;
                                }
                            }
                        } else {
                            Y(arrayList3, mapW0, linkedHashMapZ0);
                        }
                    } else {
                        Y(arrayList3, mapW0, linkedHashMapZ0);
                    }
                }
                java.lang.Object obj8 = mapW0.get("chapter_reward_boxes");
                if (obj8 instanceof java.util.Map) {
                    linkedHashMap2 = (java.util.Map) obj8;
                } else {
                    linkedHashMap2 = new java.util.LinkedHashMap();
                    mapW0.put("chapter_reward_boxes", linkedHashMap2);
                }
                linkedHashMap2.put(str2, java.lang.Boolean.TRUE);
                str13 = str4;
                h5Var2 = h5Var;
                h5Var2.S0(str13, mapW0);
            }
            com.sgscq.vpn.handler.k0 k0Var5 = k0Var;
            java.lang.String strJ3 = h5Var2.j(s(mapW0, arrayList3, new com.sgscq.vpn.handler.v()), new org.json.JSONObject(k0Var5.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var5.i(k0Var5.c(), "user_gold", mapW0), k0Var5.i(k0Var5.b(), "user_energy", mapW0), k0Var5.i(k0Var5.d(), "user_power", mapW0), k0Var5.j(k0Var5.a(), mapW0), str13, mapW0)), "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas");
            java.lang.String strS1 = com.sgscq.vpn.p5.s1(arrayList3);
            com.sgscq.vpn.y1 y1Var2 = new com.sgscq.vpn.y1();
            y1Var2.e("error_code", 0);
            y1Var2.e("ret", 0);
            y1Var2.e("code", 0);
            y1Var2.g("result", true);
            y1Var2.f("msg", "success");
            y1Var2.i("cmn", strJ3);
            y1Var2.i("add_list", strS1);
            y1Var2.i("reward_list", strS1);
            y1Var2.i("drop_info", com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("add_list", arrayList3, new java.lang.Object[0])));
            y1Var2.i("box_rewards", com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("add_list", arrayList3, new java.lang.Object[0])));
            java.lang.String strB3 = y1Var2.b();
            java.lang.StringBuilder sbL = c.a.l("[Dungeon] chapterRewardBox uid=", str13, " boxId=", str2, " rewards=");
            sbL.append(arrayList3.size());
            com.sgscq.vpn.z2.e("SGSCQ_SRV", sbL.toString());
            return k0Var5.n(strB3);
        }
        com.sgscq.vpn.handler.k0 k0Var6 = k0Var;
        java.lang.String str19 = str2;
        java.lang.String str20 = str4;
        com.sgscq.vpn.h5 h5Var4 = h5Var;
        if (r0(str19)) {
            try {
                java.lang.String strA2 = com.sgscq.vpn.o0.a(context2, "gift_box_contents.json");
                context = context2;
                str5 = str19;
                try {
                    linkedHashMapA1 = a1(str5, strA2);
                    str7 = "user_energy";
                    str6 = "user_power";
                    if (linkedHashMapA1 == null) {
                        if (r0(str5)) {
                            java.io.File fileS = S();
                            if (fileS.isFile()) {
                                try {
                                    linkedHashMapA1 = a1(str5, com.sgscq.vpn.p5.W0(fileS));
                                } catch (java.lang.Exception unused2) {
                                    linkedHashMapA1 = null;
                                }
                            }
                        }
                    }
                } catch (java.lang.Exception e2) {
                    e = e2;
                    str6 = "user_power";
                    str7 = "user_energy";
                    c.a.u(e, new java.lang.StringBuilder("[Dungeon] tower reward box encrypted config failed: "), "SGSCQ_SRV");
                }
            } catch (java.lang.Exception e3) {
                e = e3;
                context = context2;
                str5 = str19;
            }
            if (linkedHashMapA1 != null) {
                if (mapW0 == null) {
                    com.sgscq.vpn.z2.c("SGSCQ_SRV", "[Dungeon] towerRewardBox player not found: " + str20);
                    strB2 = com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在"));
                    k0Var3 = k0Var6;
                } else {
                    arrayList = new java.util.ArrayList();
                    if (!str5.isEmpty()) {
                        str11 = "error_code";
                        obj = mapW0.get("tower_claimed_box_ids");
                        str12 = "SGSCQ_SRV";
                        if (obj instanceof java.util.List) {
                            it3 = ((java.util.List) obj).iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    str10 = "user_gold";
                                    z = false;
                                } else if (str5.equals(java.lang.String.valueOf(it3.next()))) {
                                    str10 = "user_gold";
                                    z = true;
                                }
                            }
                        } else {
                            if (obj instanceof java.util.Map) {
                                obj2 = ((java.util.Map) obj).get(str5);
                                if (!java.lang.Boolean.TRUE.equals(obj2) || ((obj2 instanceof java.lang.Number) && ((java.lang.Number) obj2).intValue() != 0)) {
                                    str10 = "user_gold";
                                } else {
                                    str10 = "user_gold";
                                    if ("true".equalsIgnoreCase(java.lang.String.valueOf(obj2)) || "1".equals(java.lang.String.valueOf(obj2))) {
                                    }
                                }
                                z = true;
                            } else {
                                str10 = "user_gold";
                            }
                            z = false;
                        }
                        if (z) {
                            obj3 = linkedHashMapA1.get("add_list");
                            if (obj3 instanceof java.util.List) {
                                arrayList2 = new java.util.ArrayList();
                                it2 = ((java.util.List) obj3).iterator();
                                while (it2.hasNext()) {
                                    next = it2.next();
                                    if (!(next instanceof java.util.Map)) {
                                        java.util.Map map3 = (java.util.Map) next;
                                        strJ2 = c.a.j(map3, str16, "", "id");
                                        java.util.Iterator it6 = it2;
                                        java.lang.String str21 = str16;
                                        iG0 = G0(map3.get("num"), G0(map3.get("item_num"), 1));
                                        iG1 = G0(map3.get("type"), 5);
                                        if (!strJ2.isEmpty() && iG0 > 0) {
                                            arrayList2.add(com.sgscq.vpn.p5.z0("id", strJ2, "item_id", strJ2, "num", java.lang.Integer.valueOf(iG0), "type", java.lang.Integer.valueOf(iG1)));
                                        }
                                        it2 = it6;
                                        str16 = str21;
                                    }
                                }
                                arrayList.addAll(Z(mapW0, arrayList2, true));
                            }
                            obj4 = mapW0.get("tower_claimed_box_ids");
                            if (obj4 instanceof java.util.List) {
                                listO = (java.util.List) obj4;
                            } else {
                                listO = c.a.o(mapW0, "tower_claimed_box_ids");
                            }
                            it = listO.iterator();
                            do {
                                if (it.hasNext()) {
                                    listO.add(str5);
                                    break;
                                }
                            } while (!str5.equals(java.lang.String.valueOf(it.next())));
                        } else {
                            k0Var6 = k0Var6;
                        }
                    } else {
                        str10 = "user_gold";
                        str11 = "error_code";
                        str12 = "SGSCQ_SRV";
                        k0Var6 = k0Var6;
                    }
                    h5Var4.S0(str20, mapW0);
                    java.lang.String strJ4 = h5Var4.j(s(mapW0, arrayList, new com.sgscq.vpn.handler.v()), new org.json.JSONObject(k0Var6.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var6.i(k0Var6.c(), str10, mapW0), k0Var6.i(k0Var6.b(), str7, mapW0), k0Var6.i(k0Var6.d(), str6, mapW0), k0Var6.j(k0Var6.a(), mapW0), str20, mapW0)), "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas");
                    java.lang.String strS2 = com.sgscq.vpn.p5.s1(arrayList);
                    com.sgscq.vpn.y1 y1Var3 = new com.sgscq.vpn.y1();
                    y1Var3.e(str11, 0);
                    y1Var3.e("ret", 0);
                    y1Var3.e("code", 0);
                    y1Var3.g("result", true);
                    y1Var3.f("msg", "success");
                    y1Var3.i("cmn", strJ4);
                    y1Var3.i("add_list", strS2);
                    y1Var3.i("reward_list", strS2);
                    y1Var3.i("drop_info", com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("add_list", arrayList, new java.lang.Object[0])));
                    y1Var3.i("box_rewards", com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("add_list", arrayList, new java.lang.Object[0])));
                    strB2 = y1Var3.b();
                    java.lang.StringBuilder sbL2 = c.a.l("[Dungeon] towerRewardBox uid=", str20, " boxId=", str5, " rewards=");
                    sbL2.append(arrayList.size());
                    com.sgscq.vpn.z2.e(str12, sbL2.toString());
                    k0Var3 = k0Var6;
                }
                return k0Var3.n(strB2);
            }
            str8 = str7;
            str9 = str6;
            if (mapW0 == null) {
                com.sgscq.vpn.z2.c("SGSCQ_SRV", "[Dungeon] openBox player not found: " + str20);
                strB = com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在"));
                k0Var2 = k0Var6;
            } else {
                try {
                    i2 = java.lang.Integer.parseInt(str3);
                } catch (java.lang.NumberFormatException unused3) {
                    i2 = 1;
                }
                random = this.f1018c;
                if (i2 != 2) {
                    if (i2 != 3) {
                        iNextInt2 = random.nextInt(200) + 200;
                        iNextInt3 = random.nextInt(30) + 30;
                    } else {
                        iNextInt = random.nextInt(500) + 500;
                        i3 = 100;
                    }
                    l.c cVarH = h(k0Var6.i(1, "user_level", mapW0), k0Var6.i(0, "user_experience", mapW0), 0);
                    j2 = k0Var6.j(k0Var6.a(), mapW0) + ((long) iNextInt2);
                    int i11 = cVarH.f1784b;
                    i4 = cVarH.f1783a;
                    l.c cVarH2 = h(i4, i11, iNextInt3);
                    i5 = cVarH2.f1783a;
                    int i12 = iNextInt2;
                    if (i5 > i4) {
                        linkedHashMapU = com.sgscq.vpn.w1.a1(context).u(i4, i5);
                    } else {
                        linkedHashMapU = null;
                    }
                    mapW0.put("user_coin", java.lang.Long.valueOf(j2));
                    int i13 = cVarH2.f1784b;
                    mapW0.put("user_experience", java.lang.Integer.valueOf(i13));
                    mapW0.put("user_level", java.lang.Integer.valueOf(i5));
                    d1(mapW0);
                    zK0 = com.sgscq.vpn.handler.d1.K0(mapW0);
                    if (linkedHashMapU != null) {
                        m(mapW0, linkedHashMapU);
                        j3 = k0Var6.j(k0Var6.a(), mapW0);
                    } else {
                        j3 = j2;
                    }
                    h5Var4.S0(str20, mapW0);
                    long j4 = j3;
                    int i14 = iNextInt3;
                    linkedHashMap = linkedHashMapU;
                    jSONObject = new org.json.JSONObject(k0Var6.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var6.i(k0Var6.c(), "user_gold", mapW0), k0Var6.i(k0Var6.b(), str8, mapW0), k0Var6.i(k0Var6.d(), str9, mapW0), j4, str20, mapW0));
                    if (zK0) {
                        strJ = h5Var4.j(mapW0, jSONObject, "Combat");
                        i6 = 0;
                    } else {
                        java.lang.String strJ5 = h5Var4.j(mapW0, jSONObject, new java.lang.String[0]);
                        i6 = 0;
                        strJ = strJ5;
                    }
                    y1Var = new com.sgscq.vpn.y1();
                    y1Var.e("error_code", i6);
                    y1Var.e("ret", i6);
                    y1Var.e("code", i6);
                    y1Var.g("result", true);
                    y1Var.f("msg", "success");
                    y1Var.i("cmn", strJ);
                    y1Var.d(j4, "user_coin");
                    y1Var.e("user_experience", i13);
                    y1Var.e("user_level", i5);
                    y1Var.e("level", i5);
                    y1Var.e("roleLevel", i5);
                    y1Var.e("role_level", i5);
                    if (linkedHashMap != null) {
                        y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                    }
                    com.sgscq.vpn.y1 y1VarH = y1Var.h("box_rewards");
                    y1VarH.e("coin", i12);
                    y1VarH.e("exp", i14);
                    y1VarH.b();
                    strB = y1Var.b();
                    k0Var2 = k0Var6;
                } else {
                    i3 = 50;
                    iNextInt = random.nextInt(300) + 300;
                }
                int iNextInt4 = random.nextInt(i3) + i3;
                iNextInt2 = iNextInt;
                iNextInt3 = iNextInt4;
                l.c cVarH3 = h(k0Var6.i(1, "user_level", mapW0), k0Var6.i(0, "user_experience", mapW0), 0);
                j2 = k0Var6.j(k0Var6.a(), mapW0) + ((long) iNextInt2);
                int i15 = cVarH3.f1784b;
                i4 = cVarH3.f1783a;
                l.c cVarH4 = h(i4, i15, iNextInt3);
                i5 = cVarH4.f1783a;
                int i16 = iNextInt2;
                if (i5 > i4) {
                    linkedHashMapU = com.sgscq.vpn.w1.a1(context).u(i4, i5);
                } else {
                    linkedHashMapU = null;
                }
                mapW0.put("user_coin", java.lang.Long.valueOf(j2));
                int i17 = cVarH4.f1784b;
                mapW0.put("user_experience", java.lang.Integer.valueOf(i17));
                mapW0.put("user_level", java.lang.Integer.valueOf(i5));
                d1(mapW0);
                zK0 = com.sgscq.vpn.handler.d1.K0(mapW0);
                if (linkedHashMapU != null) {
                    m(mapW0, linkedHashMapU);
                    j3 = k0Var6.j(k0Var6.a(), mapW0);
                } else {
                    j3 = j2;
                }
                h5Var4.S0(str20, mapW0);
                long j5 = j3;
                int i18 = iNextInt3;
                linkedHashMap = linkedHashMapU;
                jSONObject = new org.json.JSONObject(k0Var6.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var6.i(k0Var6.c(), "user_gold", mapW0), k0Var6.i(k0Var6.b(), str8, mapW0), k0Var6.i(k0Var6.d(), str9, mapW0), j5, str20, mapW0));
                if (zK0) {
                    strJ = h5Var4.j(mapW0, jSONObject, "Combat");
                    i6 = 0;
                } else {
                    java.lang.String strJ6 = h5Var4.j(mapW0, jSONObject, new java.lang.String[0]);
                    i6 = 0;
                    strJ = strJ6;
                }
                y1Var = new com.sgscq.vpn.y1();
                y1Var.e("error_code", i6);
                y1Var.e("ret", i6);
                y1Var.e("code", i6);
                y1Var.g("result", true);
                y1Var.f("msg", "success");
                y1Var.i("cmn", strJ);
                y1Var.d(j5, "user_coin");
                y1Var.e("user_experience", i17);
                y1Var.e("user_level", i5);
                y1Var.e("level", i5);
                y1Var.e("roleLevel", i5);
                y1Var.e("role_level", i5);
                if (linkedHashMap != null) {
                    y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                }
                com.sgscq.vpn.y1 y1VarH2 = y1Var.h("box_rewards");
                y1VarH2.e("coin", i16);
                y1VarH2.e("exp", i18);
                y1VarH2.b();
                strB = y1Var.b();
                k0Var2 = k0Var6;
            }
            return k0Var2.n(strB);
        }
        context = context2;
        str6 = "user_power";
        str5 = str19;
        str7 = "user_energy";
        linkedHashMapA1 = null;
        if (linkedHashMapA1 != null) {
            if (mapW0 == null) {
                com.sgscq.vpn.z2.c("SGSCQ_SRV", "[Dungeon] towerRewardBox player not found: " + str20);
                strB2 = com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在"));
                k0Var3 = k0Var6;
            } else {
                arrayList = new java.util.ArrayList();
                if (!str5.isEmpty()) {
                    str11 = "error_code";
                    obj = mapW0.get("tower_claimed_box_ids");
                    str12 = "SGSCQ_SRV";
                    if (obj instanceof java.util.List) {
                        it3 = ((java.util.List) obj).iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                str10 = "user_gold";
                                z = false;
                            } else if (str5.equals(java.lang.String.valueOf(it3.next()))) {
                                str10 = "user_gold";
                                z = true;
                            }
                        }
                    } else {
                        if (obj instanceof java.util.Map) {
                            obj2 = ((java.util.Map) obj).get(str5);
                            if (java.lang.Boolean.TRUE.equals(obj2)) {
                                str10 = "user_gold";
                            } else {
                                str10 = "user_gold";
                            }
                            z = true;
                        } else {
                            str10 = "user_gold";
                        }
                        z = false;
                    }
                    if (z) {
                        obj3 = linkedHashMapA1.get("add_list");
                        if (obj3 instanceof java.util.List) {
                            arrayList2 = new java.util.ArrayList();
                            it2 = ((java.util.List) obj3).iterator();
                            while (it2.hasNext()) {
                                next = it2.next();
                                if (!(next instanceof java.util.Map)) {
                                    java.util.Map map4 = (java.util.Map) next;
                                    strJ2 = c.a.j(map4, str16, "", "id");
                                    java.util.Iterator it7 = it2;
                                    java.lang.String str22 = str16;
                                    iG0 = G0(map4.get("num"), G0(map4.get("item_num"), 1));
                                    iG1 = G0(map4.get("type"), 5);
                                    if (!strJ2.isEmpty()) {
                                        arrayList2.add(com.sgscq.vpn.p5.z0("id", strJ2, "item_id", strJ2, "num", java.lang.Integer.valueOf(iG0), "type", java.lang.Integer.valueOf(iG1)));
                                    }
                                    it2 = it7;
                                    str16 = str22;
                                }
                            }
                            arrayList.addAll(Z(mapW0, arrayList2, true));
                        }
                        obj4 = mapW0.get("tower_claimed_box_ids");
                        if (obj4 instanceof java.util.List) {
                            listO = (java.util.List) obj4;
                        } else {
                            listO = c.a.o(mapW0, "tower_claimed_box_ids");
                        }
                        it = listO.iterator();
                        do {
                            if (it.hasNext()) {
                                listO.add(str5);
                                break;
                            }
                        } while (!str5.equals(java.lang.String.valueOf(it.next())));
                    } else {
                        k0Var6 = k0Var6;
                    }
                } else {
                    str10 = "user_gold";
                    str11 = "error_code";
                    str12 = "SGSCQ_SRV";
                    k0Var6 = k0Var6;
                }
                h5Var4.S0(str20, mapW0);
                java.lang.String strJ7 = h5Var4.j(s(mapW0, arrayList, new com.sgscq.vpn.handler.v()), new org.json.JSONObject(k0Var6.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var6.i(k0Var6.c(), str10, mapW0), k0Var6.i(k0Var6.b(), str7, mapW0), k0Var6.i(k0Var6.d(), str6, mapW0), k0Var6.j(k0Var6.a(), mapW0), str20, mapW0)), "General", "Skill", "TeamGeneral", "Item", "Equipment", "EquipmentPiece", "Atlas");
                java.lang.String strS3 = com.sgscq.vpn.p5.s1(arrayList);
                com.sgscq.vpn.y1 y1Var4 = new com.sgscq.vpn.y1();
                y1Var4.e(str11, 0);
                y1Var4.e("ret", 0);
                y1Var4.e("code", 0);
                y1Var4.g("result", true);
                y1Var4.f("msg", "success");
                y1Var4.i("cmn", strJ7);
                y1Var4.i("add_list", strS3);
                y1Var4.i("reward_list", strS3);
                y1Var4.i("drop_info", com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("add_list", arrayList, new java.lang.Object[0])));
                y1Var4.i("box_rewards", com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("add_list", arrayList, new java.lang.Object[0])));
                strB2 = y1Var4.b();
                java.lang.StringBuilder sbL3 = c.a.l("[Dungeon] towerRewardBox uid=", str20, " boxId=", str5, " rewards=");
                sbL3.append(arrayList.size());
                com.sgscq.vpn.z2.e(str12, sbL3.toString());
                k0Var3 = k0Var6;
            }
            return k0Var3.n(strB2);
        }
        str8 = str7;
        str9 = str6;
        if (mapW0 == null) {
            com.sgscq.vpn.z2.c("SGSCQ_SRV", "[Dungeon] openBox player not found: " + str20);
            strB = com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("error_code", -1, "ret", -1, "code", -1, "result", java.lang.Boolean.FALSE, "msg", "玩家数据不存在"));
            k0Var2 = k0Var6;
        } else {
            i2 = java.lang.Integer.parseInt(str3);
            random = this.f1018c;
            if (i2 != 2) {
                if (i2 != 3) {
                    iNextInt2 = random.nextInt(200) + 200;
                    iNextInt3 = random.nextInt(30) + 30;
                } else {
                    iNextInt = random.nextInt(500) + 500;
                    i3 = 100;
                }
                l.c cVarH5 = h(k0Var6.i(1, "user_level", mapW0), k0Var6.i(0, "user_experience", mapW0), 0);
                j2 = k0Var6.j(k0Var6.a(), mapW0) + ((long) iNextInt2);
                int i19 = cVarH5.f1784b;
                i4 = cVarH5.f1783a;
                l.c cVarH6 = h(i4, i19, iNextInt3);
                i5 = cVarH6.f1783a;
                int i110 = iNextInt2;
                if (i5 > i4) {
                    linkedHashMapU = com.sgscq.vpn.w1.a1(context).u(i4, i5);
                } else {
                    linkedHashMapU = null;
                }
                mapW0.put("user_coin", java.lang.Long.valueOf(j2));
                int i111 = cVarH6.f1784b;
                mapW0.put("user_experience", java.lang.Integer.valueOf(i111));
                mapW0.put("user_level", java.lang.Integer.valueOf(i5));
                d1(mapW0);
                zK0 = com.sgscq.vpn.handler.d1.K0(mapW0);
                if (linkedHashMapU != null) {
                    m(mapW0, linkedHashMapU);
                    j3 = k0Var6.j(k0Var6.a(), mapW0);
                } else {
                    j3 = j2;
                }
                h5Var4.S0(str20, mapW0);
                long j6 = j3;
                int i112 = iNextInt3;
                linkedHashMap = linkedHashMapU;
                jSONObject = new org.json.JSONObject(k0Var6.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var6.i(k0Var6.c(), "user_gold", mapW0), k0Var6.i(k0Var6.b(), str8, mapW0), k0Var6.i(k0Var6.d(), str9, mapW0), j6, str20, mapW0));
                if (zK0) {
                    strJ = h5Var4.j(mapW0, jSONObject, "Combat");
                    i6 = 0;
                } else {
                    java.lang.String strJ8 = h5Var4.j(mapW0, jSONObject, new java.lang.String[0]);
                    i6 = 0;
                    strJ = strJ8;
                }
                y1Var = new com.sgscq.vpn.y1();
                y1Var.e("error_code", i6);
                y1Var.e("ret", i6);
                y1Var.e("code", i6);
                y1Var.g("result", true);
                y1Var.f("msg", "success");
                y1Var.i("cmn", strJ);
                y1Var.d(j6, "user_coin");
                y1Var.e("user_experience", i111);
                y1Var.e("user_level", i5);
                y1Var.e("level", i5);
                y1Var.e("roleLevel", i5);
                y1Var.e("role_level", i5);
                if (linkedHashMap != null) {
                    y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
                }
                com.sgscq.vpn.y1 y1VarH3 = y1Var.h("box_rewards");
                y1VarH3.e("coin", i110);
                y1VarH3.e("exp", i112);
                y1VarH3.b();
                strB = y1Var.b();
                k0Var2 = k0Var6;
            } else {
                i3 = 50;
                iNextInt = random.nextInt(300) + 300;
            }
            int iNextInt5 = random.nextInt(i3) + i3;
            iNextInt2 = iNextInt;
            iNextInt3 = iNextInt5;
            l.c cVarH7 = h(k0Var6.i(1, "user_level", mapW0), k0Var6.i(0, "user_experience", mapW0), 0);
            j2 = k0Var6.j(k0Var6.a(), mapW0) + ((long) iNextInt2);
            int i113 = cVarH7.f1784b;
            i4 = cVarH7.f1783a;
            l.c cVarH8 = h(i4, i113, iNextInt3);
            i5 = cVarH8.f1783a;
            int i114 = iNextInt2;
            if (i5 > i4) {
                linkedHashMapU = com.sgscq.vpn.w1.a1(context).u(i4, i5);
            } else {
                linkedHashMapU = null;
            }
            mapW0.put("user_coin", java.lang.Long.valueOf(j2));
            int i115 = cVarH8.f1784b;
            mapW0.put("user_experience", java.lang.Integer.valueOf(i115));
            mapW0.put("user_level", java.lang.Integer.valueOf(i5));
            d1(mapW0);
            zK0 = com.sgscq.vpn.handler.d1.K0(mapW0);
            if (linkedHashMapU != null) {
                m(mapW0, linkedHashMapU);
                j3 = k0Var6.j(k0Var6.a(), mapW0);
            } else {
                j3 = j2;
            }
            h5Var4.S0(str20, mapW0);
            long j7 = j3;
            int i116 = iNextInt3;
            linkedHashMap = linkedHashMapU;
            jSONObject = new org.json.JSONObject(k0Var6.f904d.u((int) com.sgscq.vpn.c7.g(), k0Var6.i(k0Var6.c(), "user_gold", mapW0), k0Var6.i(k0Var6.b(), str8, mapW0), k0Var6.i(k0Var6.d(), str9, mapW0), j7, str20, mapW0));
            if (zK0) {
                strJ = h5Var4.j(mapW0, jSONObject, "Combat");
                i6 = 0;
            } else {
                java.lang.String strJ9 = h5Var4.j(mapW0, jSONObject, new java.lang.String[0]);
                i6 = 0;
                strJ = strJ9;
            }
            y1Var = new com.sgscq.vpn.y1();
            y1Var.e("error_code", i6);
            y1Var.e("ret", i6);
            y1Var.e("code", i6);
            y1Var.g("result", true);
            y1Var.f("msg", "success");
            y1Var.i("cmn", strJ);
            y1Var.d(j7, "user_coin");
            y1Var.e("user_experience", i115);
            y1Var.e("user_level", i5);
            y1Var.e("level", i5);
            y1Var.e("roleLevel", i5);
            y1Var.e("role_level", i5);
            if (linkedHashMap != null) {
                y1Var.i("user_level_up_info", com.sgscq.vpn.p5.s1(linkedHashMap));
            }
            com.sgscq.vpn.y1 y1VarH4 = y1Var.h("box_rewards");
            y1VarH4.e("coin", i114);
            y1VarH4.e("exp", i116);
            y1VarH4.b();
            strB = y1Var.b();
            k0Var2 = k0Var6;
        }
        return k0Var2.n(strB);
    }

    public final void d1(java.util.Map map) {
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3 = "1050100101";
        java.lang.String str4 = "10501";
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(this.f1016a.f901a);
        int iU0 = w1VarA1.U0("EliteMap_Unlock_Level", 9);
        boolean z = false;
        try {
            java.util.ArrayList arrayListG0 = w1VarA1.g0();
            str = !arrayListG0.isEmpty() ? (java.lang.String) arrayListG0.get(0) : "10501";
        } catch (java.lang.Throwable unused) {
        }
        try {
            java.util.List listM0 = w1VarA1.m0(str, str);
            str2 = (listM0 == null || listM0.isEmpty()) ? "1050100101" : (java.lang.String) listM0.get(0);
        } catch (java.lang.Throwable unused2) {
        }
        if (com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map.getOrDefault("user_level", 1)), 1) >= iU0) {
            if (str != null && !str.isEmpty()) {
                str4 = str;
            }
            if (str2 != null && !str2.isEmpty()) {
                str3 = str2;
            }
            if (!java.lang.String.valueOf(map.getOrDefault("user_elite_map_step", "0")).trim().startsWith("105")) {
                map.put("user_elite_map_step", str4);
                z = true;
            }
            if (!java.lang.String.valueOf(map.getOrDefault("user_elite_position_step", "0")).trim().startsWith("105")) {
                map.put("user_elite_position_step", str3);
                z = true;
            }
        }
        if (z) {
            com.sgscq.vpn.z2.e("SGSCQ_SRV", "[Dungeon] unlock elite chapter level=" + map.get("user_level") + " map=" + map.get("user_elite_map_step") + " position=" + map.get("user_elite_position_step"));
        }
    }

    public final java.util.HashMap e(java.lang.String str, java.util.Map map) {
        java.util.List listF0 = com.sgscq.vpn.w1.f0("Skill", map);
        int iE2 = com.sgscq.vpn.w1.e2("Skill", map);
        java.util.HashMap map2 = new java.util.HashMap();
        map2.put("pk_id", java.lang.String.valueOf(iE2));
        map2.put("general_pk_id", "0");
        map2.put("skill_id", str);
        map2.put("id", str);
        map2.put("skill_code", str);
        map2.put("card_type", "4");
        map2.put("level", "1");
        map2.put("skill_level", "1");
        map2.put("position", "0");
        map2.put("pos", "0");
        map2.put("skill_position", "0");
        map2.put("get_time", java.lang.String.valueOf(com.sgscq.vpn.c7.g()));
        map2.put("is_natural", java.lang.Boolean.FALSE);
        map2.put("exp", "0");
        map2.put("extra_level", "0");
        map2.put("advanced_level", "0");
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        com.sgscq.vpn.w1.a1(k0Var != null ? k0Var.f901a : null).S(str, map2);
        listF0.add(map2);
        map.put("Skill", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "upd", new java.util.ArrayList(), "add", listF0));
        com.sgscq.vpn.w1.b2("skill_id", str, null, map);
        return map2;
    }

    public final l.c h(int i2, int i3, int i4) {
        return com.sgscq.vpn.w1.a1(this.f1016a.f901a).m(i2, i3, i4);
    }

    public final void i(int i2, java.util.ArrayList arrayList, java.util.Map map) {
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        int i3;
        long j2;
        long jC0;
        long j3;
        long jC1;
        int i4;
        java.util.ArrayList arrayList2;
        java.lang.String str4;
        java.lang.String str5;
        com.sgscq.vpn.handler.w wVar = this;
        int i5 = i2;
        java.util.Map map2 = map;
        if (i5 <= 0) {
            return;
        }
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        java.lang.String str6 = "TeamGeneral";
        java.util.Iterator it = com.sgscq.vpn.w1.f0("TeamGeneral", map2).iterator();
        while (true) {
            str = "general_pk_id";
            str2 = "pk_id";
            str3 = "";
            if (!it.hasNext()) {
                break;
            }
            java.util.Map map3 = (java.util.Map) it.next();
            java.lang.String strJ = c.a.j(map3, "pk_id", "", "general_pk_id");
            if (!strJ.isEmpty() && !"0".equals(strJ) && !"null".equalsIgnoreCase(strJ)) {
                arrayList3.add(map3);
            }
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        arrayList3.sort(new com.sgscq.vpn.battle.c(wVar, 1));
        java.util.HashMap map4 = new java.util.HashMap();
        for (java.util.Map map5 : com.sgscq.vpn.w1.f0("General", map2)) {
            map4.put(java.lang.String.valueOf(map5.getOrDefault("pk_id", "")), map5);
        }
        java.util.HashMap map6 = new java.util.HashMap();
        com.sgscq.vpn.handler.k0 k0Var = wVar.f1016a;
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var.f901a);
        java.util.Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            java.lang.String strJ2 = c.a.j((java.util.Map) it2.next(), str2, str3, str);
            it2 = it2;
            java.util.Map map7 = (java.util.Map) map4.get(strJ2);
            if (map7 != null) {
                java.util.HashMap map8 = map4;
                java.lang.String str7 = str6;
                java.lang.String str8 = str;
                java.lang.String str9 = str2;
                java.util.HashMap map9 = map6;
                long jH0 = H0(map7.get("general_exp"), H0(map7.get("general_experience"), 0L));
                int iMax = java.lang.Math.max(1, k0Var.i(k0Var.i(1, "level", map7), "general_level", map7));
                com.sgscq.vpn.handler.k0 k0Var2 = k0Var;
                java.lang.String strJ3 = c.a.j(map7, "id", str3, "general_id");
                if (w1VarA1 == null || strJ3.isEmpty()) {
                    i3 = 1;
                    j2 = 0;
                    jC0 = 0;
                } else {
                    i3 = 1;
                    jC0 = w1VarA1.c0(strJ3, java.lang.Math.max(1, iMax));
                    j2 = 0;
                }
                if (jC0 <= j2 && iMax > i3) {
                    jC0 = ((long) (iMax - 1)) * 1000;
                }
                long jMax = java.lang.Math.max(0L, java.lang.Math.max(java.lang.Math.max(0L, jH0), jC0) + ((long) java.lang.Math.max(0, i5)));
                int iN0 = wVar.N0(map2) * 4;
                int iMax2 = java.lang.Math.max(1, iMax);
                if (w1VarA1 != null && !strJ3.isEmpty()) {
                    iMax2 = java.lang.Math.max(iMax2, w1VarA1.P0(iN0, strJ3, java.lang.Math.max(0L, jMax)));
                }
                if (w1VarA1 == null || strJ3.isEmpty()) {
                    j3 = 0;
                    jC1 = 0;
                } else {
                    jC1 = w1VarA1.c0(strJ3, java.lang.Math.max(1, iMax2));
                    j3 = 0;
                }
                long j4 = j3;
                if (jC1 <= j4 && iMax2 > 1) {
                    jC1 = ((long) (iMax2 - 1)) * 1000;
                }
                long jMax2 = java.lang.Math.max(j4, java.lang.Math.max(j4, jMax) - java.lang.Math.max(j4, jC1));
                map7.put("exp", java.lang.Integer.valueOf(jMax2 > 2147483647L ? Integer.MAX_VALUE : (int) jMax2));
                map7.put("general_exp", B(jMax));
                map7.put("general_experience", B(jMax));
                map7.put("general_level", java.lang.Integer.valueOf(iMax2));
                map7.put("level", java.lang.Integer.valueOf(iMax2));
                w1VarA1.g(iMax, iMax2, map7);
                w1VarA1.F2(strJ2, map2);
                map9.put(strJ2, java.lang.Integer.valueOf(iMax2));
                if (arrayList != null) {
                    java.lang.String strJ4 = c.a.j(map7, "id", str3, "general_id");
                    str4 = str8;
                    java.util.LinkedHashMap linkedHashMapR = c.a.r(str9, strJ2, str4, strJ2);
                    linkedHashMapR.put("id", strJ4);
                    i4 = i2;
                    com.sgscq.vpn.handler.l.b(linkedHashMapR, "general_id", strJ4, i4, "exp");
                    linkedHashMapR.put("general_exp", B(jMax));
                    linkedHashMapR.put("general_experience", B(jMax));
                    linkedHashMapR.put("level_before", java.lang.Integer.valueOf(iMax));
                    linkedHashMapR.put("level_now", java.lang.Integer.valueOf(iMax2));
                    linkedHashMapR.put("general_level", java.lang.Integer.valueOf(iMax2));
                    linkedHashMapR.put("level", java.lang.Integer.valueOf(iMax2));
                    if (!strJ4.isEmpty()) {
                        linkedHashMapR.put("general_name", com.sgscq.vpn.p5.M(w1VarA1.R0(strJ4)));
                        linkedHashMapR.put("resource_id", strJ4);
                        linkedHashMapR.put("general_painting_id", strJ4);
                    }
                    arrayList2 = arrayList;
                    str5 = str9;
                    arrayList2.add(linkedHashMapR);
                } else {
                    i4 = i2;
                    arrayList2 = arrayList;
                    str4 = str8;
                    str5 = str9;
                }
                wVar = this;
                str2 = str5;
                str = str4;
                map4 = map8;
                str6 = str7;
                map6 = map9;
                k0Var = k0Var2;
                str3 = str3;
                i5 = i4;
                map2 = map;
            }
        }
        java.util.HashMap map10 = map6;
        java.lang.String str10 = str2;
        java.lang.String str11 = str3;
        java.lang.String str12 = str;
        for (java.util.Map map11 : com.sgscq.vpn.w1.f0(str6, map2)) {
            java.lang.String str13 = str11;
            java.util.HashMap map12 = map10;
            java.lang.Integer num = (java.lang.Integer) map12.get(java.lang.String.valueOf(map11.getOrDefault(str12, map11.getOrDefault(str10, str13))));
            if (num != null) {
                map11.put("general_level", num);
                map11.put("level", num);
            }
            str11 = str13;
            map10 = map12;
        }
    }

    public final void m(java.util.Map map, java.util.LinkedHashMap linkedHashMap) {
        java.lang.Object obj = linkedHashMap.get("add_list");
        if (obj instanceof java.util.Map) {
            java.util.Map map2 = (java.util.Map) obj;
            int iG0 = G0(map2.get("coin"), 0);
            int iG1 = G0(map2.get("gold"), 0);
            com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
            if (iG0 > 0) {
                map.put("user_coin", java.lang.Long.valueOf(k0Var.j(k0Var.a(), map) + ((long) iG0)));
            }
            if (iG1 > 0) {
                map.put("user_gold", java.lang.Integer.valueOf(k0Var.i(k0Var.c(), "user_gold", map) + iG1));
            }
        }
    }

    public final boolean q0(java.lang.String str) {
        if (str == null || !str.matches("1\\d{5}") || str.startsWith("164")) {
            return false;
        }
        try {
            com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
            return h0(str, k0Var != null ? com.sgscq.vpn.o0.a(k0Var.f901a, "generals.json") : O0("docs/game_data_json/generals.json"));
        } catch (java.lang.Exception unused) {
            return false;
        }
    }

    public final java.util.ArrayList s0() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            com.sgscq.vpn.a7 a7VarV1 = com.sgscq.vpn.w1.a1(this.f1016a.f901a).V1();
            if (a7VarV1 == null) {
                return arrayList;
            }
            java.util.Iterator it = a7VarV1.a().iterator();
            while (it.hasNext()) {
                java.util.Map mapB = a7VarV1.b((java.lang.String) it.next());
                if (mapB != null) {
                    arrayList.add(mapB);
                }
            }
        } catch (java.lang.RuntimeException unused) {
        }
        return arrayList;
    }

    public final java.util.LinkedHashMap t(int i2, java.lang.String str, java.util.Map map) {
        int i3;
        int iMax;
        java.util.Map mapO;
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        try {
            com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var.f901a);
            java.util.ArrayList arrayListP = P(map);
            if (arrayListP.isEmpty() && (mapO = O(map)) != null) {
                arrayListP.add(mapO);
            }
            java.lang.String str2 = "112018";
            java.lang.String str3 = "general_id";
            if (arrayListP.isEmpty()) {
                arrayListP.add(com.sgscq.vpn.p5.z0("general_id", "112018", new java.lang.Object[0]));
            }
            l(w1VarA1, arrayListP, map);
            com.sgscq.vpn.cloud.k kVarV = V(str);
            java.lang.Object obj = kVarV.f374c;
            java.lang.Object obj2 = kVarV.f373b;
            int size = ((java.util.List) obj2).size();
            int size2 = ((java.util.List) obj).size();
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            java.util.Iterator it = arrayListP.iterator();
            while (it.hasNext()) {
                java.util.Map map2 = (java.util.Map) it.next();
                java.util.Iterator it2 = it;
                java.lang.String strValueOf = java.lang.String.valueOf(map2.getOrDefault(str3, map2.getOrDefault("id", str2)));
                java.lang.String str4 = str2;
                int iM0 = M0(w1VarA1, strValueOf, map2);
                java.lang.String strValueOf2 = java.lang.String.valueOf(map2.getOrDefault("general_name", w1VarA1.R0(strValueOf)));
                arrayList2.add(java.lang.Integer.valueOf(iM0));
                arrayList.add(u0(strValueOf, iM0, strValueOf2));
                it = it2;
                str2 = str4;
                str3 = str3;
                size2 = size2;
            }
            int i4 = size2;
            int iMax2 = java.lang.Math.max(1, arrayList2.size());
            int i5 = java.lang.Integer.parseInt(str.substring(0, 3)) - 500;
            int I = I(str);
            int iMax3 = java.lang.Math.max(1, com.sgscq.vpn.w1.a1(k0Var.f901a).l0(A(str)).size());
            com.sgscq.vpn.handler.t tVarZ0 = Z0(w1VarA1);
            int i6 = kVarV.f372a;
            if (!k0(str)) {
                i6 = -1;
            }
            int i7 = i6;
            com.sgscq.vpn.handler.t tVar = tVarZ0;
            double[] dArrF = F(str, i5, I, iMax3, tVar);
            int i8 = 0;
            while (true) {
                int size3 = ((java.util.List) obj2).size();
                tVar = tVar;
                i3 = tVar.f991a;
                if (i8 >= size3) {
                    break;
                }
                java.lang.String str5 = (java.lang.String) ((java.util.List) obj2).get(i8);
                int iM1 = M0(w1VarA1, str5, null);
                if (k0(str)) {
                    iMax = java.lang.Math.max(iM1, i3);
                } else {
                    if (i5 >= 1) {
                        iM1 = java.lang.Math.max(iM1, i3);
                    }
                    iMax = iM1;
                }
                java.util.LinkedHashMap linkedHashMapU0 = u0(str5, (int) java.lang.Math.round(((double) iMax) * dArrF[0]), w1VarA1.R0(str5));
                if (i7 >= 0 && i8 == i7) {
                    linkedHashMapU0.put("isBoss", java.lang.Boolean.TRUE);
                }
                arrayList.add(linkedHashMapU0);
                i8++;
            }
            for (java.lang.String str6 : (java.util.List) obj) {
                int iM2 = M0(w1VarA1, str6, null);
                if (k0(str)) {
                    iM2 = java.lang.Math.max(iM2, i3);
                } else if (i5 >= 1) {
                    iM2 = java.lang.Math.max(iM2, i3);
                }
                arrayList.add(u0(str6, (int) java.lang.Math.round(((double) iM2) * dArrF[0]), w1VarA1.R0(str6)));
            }
            return com.sgscq.vpn.p5.z0("init", com.sgscq.vpn.p5.z0("first", 0, "roundMax", 15, "cards_size0", java.lang.Integer.valueOf(iMax2), "cards_size1", java.lang.Integer.valueOf(size), "backups_size0", 0, "backups_size1", java.lang.Integer.valueOf(i4), "info", java.util.Arrays.asList(new java.util.ArrayList(), new java.util.ArrayList()), "cards", arrayList, "roundCur", 1, "skipRounds", 0), "rounds", i2 <= 0 ? new java.util.ArrayList() : x(arrayList2, (java.util.List) obj2, w1VarA1, java.lang.Math.max(size, i2)));
        } catch (java.lang.Exception e2) {
            c.a.D(e2, new java.lang.StringBuilder("[Dungeon] buildFightInfo error: "), "SGSCQ_SRV");
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a7  */
    public final java.util.LinkedHashMap w0(java.util.Map map) {
        boolean zD;
        java.util.Random random = this.f1018c;
        if (random.nextInt(100) >= 15) {
            return null;
        }
        com.sgscq.vpn.handler.k0 k0Var = this.f1016a;
        com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var != null ? k0Var.f901a : null);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (w1VarA1 != null) {
            for (java.lang.String str : w1VarA1.k0()) {
                java.util.Map mapK1 = w1VarA1.k1(str);
                if (mapK1 == null || str == null) {
                    zD = false;
                } else {
                    java.lang.String strTrim = str.trim();
                    if (strTrim.isEmpty() || "300000".equals(strTrim) || strTrim.startsWith("400")) {
                        zD = false;
                    } else {
                        java.lang.String strTrim2 = java.lang.String.valueOf(mapK1.getOrDefault("skill_code", "")).trim();
                        if (strTrim2.isEmpty() || "null".equalsIgnoreCase(strTrim2) || "shenmijineng".equalsIgnoreCase(strTrim2) || strTrim2.contains("神秘") || !f1015h.contains(java.lang.String.valueOf(mapK1.getOrDefault("grade", "")).trim())) {
                            zD = false;
                        } else {
                            zD = com.sgscq.vpn.handler.h1.D(strTrim);
                        }
                    }
                }
                if (zD) {
                    arrayList.add(str);
                }
            }
            java.util.Collections.sort(arrayList);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return a0(1, (java.lang.String) arrayList.get(random.nextInt(arrayList.size())), map);
    }
}
