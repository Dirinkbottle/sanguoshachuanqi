package com.sgscq.vpn.handler;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.reflect.Type f796b = new com.google.gson.reflect.TypeToken<java.util.Map<java.lang.String, java.lang.Object>>() { // from class: com.sgscq.vpn.handler.AuthHandler$1
    }.getType();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.sgscq.vpn.handler.k0 f797a;

    public d(com.sgscq.vpn.handler.k0 k0Var) {
        this.f797a = k0Var;
    }

    public static void a(java.util.ArrayList arrayList, java.util.Map map) {
        java.lang.String strValueOf = java.lang.String.valueOf(map.getOrDefault("pk_id", ""));
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            java.util.Map map2 = (java.util.Map) arrayList.get(i2);
            if (!strValueOf.isEmpty() && c.a.B(map2, "pk_id", "", strValueOf)) {
                arrayList.set(i2, map);
                return;
            } else {
                if (map2 == map || map2.equals(map)) {
                    return;
                }
            }
        }
        arrayList.add(map);
    }

    public static void b(java.util.Map map, java.util.ArrayList arrayList, java.lang.String str, int i2) {
        java.util.Map map2;
        java.util.Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                java.util.Iterator it2 = com.sgscq.vpn.w1.f0("Item", map).iterator();
                do {
                    if (!it2.hasNext()) {
                        map2 = null;
                        break;
                    }
                    map2 = (java.util.Map) it2.next();
                } while (!c.a.C(map2, "id", "", "item_id", str));
            } else {
                map2 = (java.util.Map) it.next();
            }
        } while (!c.a.C(map2, "id", "", "item_id", str));
        if (map2 == null) {
            a(arrayList, com.sgscq.vpn.p5.z0("pk_id", java.lang.String.valueOf(com.sgscq.vpn.w1.e2("Item", map)), "id", str, "item_id", str, "num", java.lang.Integer.valueOf(java.lang.Math.max(1, i2)), "item_num", java.lang.Integer.valueOf(java.lang.Math.max(1, i2)), "item_type", 1, "type", 1, "is_new", java.lang.Boolean.TRUE));
            return;
        }
        int iMax = java.lang.Math.max(1, i2) + java.lang.Math.max(0, com.sgscq.vpn.w1.l2(java.lang.String.valueOf(map2.getOrDefault("item_num", map2.getOrDefault("num", "0"))), 0));
        map2.put("id", str);
        map2.put("item_id", str);
        map2.put("num", java.lang.Integer.valueOf(iMax));
        map2.put("item_num", java.lang.Integer.valueOf(iMax));
        map2.put("item_type", 1);
        map2.put("type", 1);
        map2.put("is_new", java.lang.Boolean.TRUE);
        a(arrayList, map2);
    }

    public static java.lang.String h(java.lang.String str, java.util.Map map) {
        java.lang.String str2;
        return (map == null || (str2 = (java.lang.String) map.get(str)) == null) ? "" : str2;
    }

    public static boolean j(com.sgscq.vpn.w1 w1Var, java.util.Map map) {
        try {
            return com.sgscq.vpn.cloud.m0.u2(map, w1Var.V1()).f745a;
        } catch (java.lang.RuntimeException e2) {
            com.sgscq.vpn.z2.g("SGSCQ_SRV", "[Auth] soul repair skipped: " + e2.getMessage());
            return false;
        }
    }

    public static boolean k(java.lang.Object obj) {
        int iIntValue;
        int iIntValue2;
        boolean zK = false;
        if (!(obj instanceof java.util.Map)) {
            if (obj instanceof java.util.List) {
                java.util.Iterator it = ((java.util.List) obj).iterator();
                while (it.hasNext()) {
                    zK |= k(it.next());
                }
            }
            return zK;
        }
        java.util.Map map = (java.util.Map) obj;
        java.lang.Object obj2 = map.get("advanced_level");
        if (obj2 != null) {
            java.lang.Object obj3 = map.get("magic_advanced_level_bonus");
            if (obj3 instanceof java.lang.Number) {
                iIntValue = ((java.lang.Number) obj3).intValue();
            } else if (obj3 == null) {
                iIntValue = 0;
            } else {
                try {
                    iIntValue = java.lang.Integer.parseInt(java.lang.String.valueOf(obj3));
                } catch (java.lang.NumberFormatException unused) {
                    iIntValue = 0;
                }
            }
            int iMax = java.lang.Math.max(0, iIntValue);
            if (obj2 instanceof java.lang.Number) {
                iIntValue2 = ((java.lang.Number) obj2).intValue();
            } else {
                try {
                    iIntValue2 = java.lang.Integer.parseInt(java.lang.String.valueOf(obj2));
                } catch (java.lang.NumberFormatException unused2) {
                    iIntValue2 = 0;
                }
            }
            if (iIntValue2 != iMax) {
                map.put("advanced_level", java.lang.Integer.valueOf(iMax));
                zK = true;
            }
        }
        java.util.Iterator it2 = new java.util.ArrayList(map.values()).iterator();
        while (it2.hasNext()) {
            zK |= k(it2.next());
        }
        return zK;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02d9 A[PHI: r0 r26 r27
      0x02d9: PHI (r0v70 java.lang.String) = (r0v69 java.lang.String), (r0v73 java.lang.String) binds: [B:100:0x02d7, B:92:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r26v9 java.lang.StringBuilder) = (r26v8 java.lang.StringBuilder), (r26v11 java.lang.StringBuilder) binds: [B:100:0x02d7, B:92:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r27v5 java.lang.String) = (r27v4 java.lang.String), (r27v7 java.lang.String) binds: [B:100:0x02d7, B:92:0x02bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:105:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:110:0x030b  */
    /* JADX WARN: Code duplicated, block: B:126:0x036b  */
    /* JADX WARN: Code duplicated, block: B:141:0x03af  */
    /* JADX WARN: Code duplicated, block: B:145:0x03c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:146:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:150:0x0418  */
    /* JADX WARN: Code duplicated, block: B:347:0x03cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:349:0x0296 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:350:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:355:0x0314 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:357:0x0305 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:359:0x0224 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:361:0x0221 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0157 A[Catch: Exception -> 0x01c8, TRY_LEAVE, TryCatch #2 {Exception -> 0x01c8, blocks: (B:46:0x0143, B:47:0x0151, B:49:0x0157), top: B:331:0x0143 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:56:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:58:0x0201  */
    /* JADX WARN: Code duplicated, block: B:60:0x020b  */
    /* JADX WARN: Code duplicated, block: B:63:0x0217  */
    /* JADX WARN: Code duplicated, block: B:78:0x025d  */
    /* JADX WARN: Code duplicated, block: B:79:0x0265  */
    /* JADX WARN: Code duplicated, block: B:81:0x0277  */
    /* JADX WARN: Code duplicated, block: B:84:0x0287  */
    /* JADX WARN: Code duplicated, block: B:89:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:91:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:94:0x02bf  */
    public final byte[] c(java.lang.String str, java.util.Map map) {
        java.lang.String str2;
        java.lang.String str3;
        boolean z;
        java.lang.String str4;
        boolean z2;
        java.util.ArrayList arrayList;
        boolean z3;
        java.lang.String string;
        java.lang.String string2;
        java.lang.String string3;
        java.lang.String str5;
        java.lang.String str6;
        java.lang.String str7;
        java.lang.String str8;
        java.lang.Object obj;
        android.content.Context context;
        java.lang.String string4;
        java.lang.StringBuilder sb;
        java.lang.String str9;
        java.lang.String strA;
        java.util.Map mapW0;
        java.util.HashSet hashSet;
        java.lang.Object obj2;
        java.lang.String str10;
        java.util.HashSet hashSet2;
        java.lang.Object obj3;
        java.util.Iterator it;
        java.lang.Object next;
        java.util.Map map2;
        java.lang.Object obj4;
        java.util.HashSet hashSet3;
        com.sgscq.vpn.a7 a7VarV1;
        java.lang.Object obj5;
        java.lang.String str11;
        java.lang.String str12;
        java.lang.StringBuilder sb2;
        java.lang.Object obj6;
        java.lang.Object obj7;
        java.util.Iterator it2;
        java.lang.Object next2;
        int iF;
        java.lang.String strI0;
        java.util.Map map3;
        java.util.Iterator it3;
        java.lang.String str13;
        java.lang.String str14;
        java.lang.StringBuilder sb3;
        java.lang.String strI1;
        long jG;
        java.util.ArrayList arrayList2;
        java.util.Map mapF1;
        long jR0;
        java.lang.StringBuilder sb4;
        int i2;
        java.lang.String strValueOf;
        org.json.JSONArray jSONArray;
        int i3;
        if (str == null) {
            return null;
        }
        if (!"account.index".equals(str)) {
            java.lang.String str15 = "pk_id";
            if ("account.chgAccountInfo".equals(str)) {
                com.sgscq.vpn.handler.k0 k0Var = this.f797a;
                java.lang.String strE = k0Var.e(map);
                java.util.Map mapW1 = k0Var.f904d.w0(strE);
                if (mapW1 == null) {
                    mapW1 = new java.util.LinkedHashMap();
                }
                java.lang.String strH = h("mobile_num", map);
                if (strH.isEmpty()) {
                    strH = h("mobile", map);
                }
                if (strH.isEmpty()) {
                    strH = h("phone", map);
                }
                if (!strH.isEmpty()) {
                    mapW1.put("mobile_num", strH);
                    mapW1.put("mobile", strH);
                    mapW1.put("is_mobile", java.lang.Boolean.TRUE);
                    mapW1.put("mobile_bind", 1);
                }
                java.lang.Boolean bool = java.lang.Boolean.TRUE;
                java.util.LinkedHashMap linkedHashMapZ0 = com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", com.sgscq.vpn.p5.z0("result", bool, new java.lang.Object[0]), "cmn_modules", "Player");
                k0Var.f904d.S0(strE, mapW1);
                org.json.JSONObject jSONObjectT = k0Var.f904d.t((int) com.sgscq.vpn.c7.g(), k0Var.i(k0Var.c(), "user_gold", mapW1), k0Var.i(k0Var.b(), "user_energy", mapW1), k0Var.i(k0Var.d(), "user_power", mapW1), k0Var.j(k0Var.a(), mapW1), strE, mapW1);
                java.lang.String strJ = k0Var.f904d.j(mapW1, jSONObjectT, new java.lang.String[0]);
                linkedHashMapZ0.put("user_info", com.sgscq.vpn.p5.u1(jSONObjectT.toString()));
                linkedHashMapZ0.put("cmn", com.sgscq.vpn.p5.u1(strJ));
                return k0Var.n(com.sgscq.vpn.p5.s1(linkedHashMapZ0));
            }
            if ("account.bindWithBf".equals(str) || "account.bindWithFacebook".equals(str) || "account.bindWithEasysdk".equals(str)) {
                com.sgscq.vpn.handler.k0 k0Var2 = this.f797a;
                java.lang.String strE2 = k0Var2.e(map);
                java.util.Map mapW2 = k0Var2.f904d.w0(strE2);
                if (mapW2 == null) {
                    mapW2 = new java.util.LinkedHashMap();
                }
                java.lang.String str16 = "account.bindWithFacebook".equals(str) ? "facebook" : "account.bindWithEasysdk".equals(str) ? "easy" : "bf";
                java.lang.String strH2 = h("uid", map);
                if ("easy".equals(str16) && strH2.isEmpty()) {
                    strH2 = h("easy_uid", map);
                }
                java.lang.String strH3 = h("sessionId", map);
                if (strH3.isEmpty()) {
                    strH3 = h("session_id", map);
                }
                if (strH3.isEmpty()) {
                    strH3 = h("session", map);
                }
                mapW2.put("bind_provider", str16);
                mapW2.put(str16.concat("_uid"), strH2);
                mapW2.put(str16.concat("_session"), strH3);
                mapW2.put(str16.concat("_bind"), 1);
                mapW2.put("account_bind", 1);
                java.lang.Boolean bool2 = java.lang.Boolean.TRUE;
                java.util.LinkedHashMap linkedHashMapZ1 = com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", bool2, "msg", "success", "error_code", 0, "return_info", com.sgscq.vpn.p5.z0("result", bool2, "provider", str16), "cmn_modules", "Player");
                k0Var2.f904d.S0(strE2, mapW2);
                org.json.JSONObject jSONObjectI = i(strE2, mapW2);
                linkedHashMapZ1.put("user_info", com.sgscq.vpn.p5.u1(jSONObjectI.toString()));
                linkedHashMapZ1.put("cmn", com.sgscq.vpn.p5.u1(k0Var2.f904d.j(mapW2, jSONObjectI, new java.lang.String[0])));
                return k0Var2.n(com.sgscq.vpn.p5.s1(linkedHashMapZ1));
            }
            if ("user.login".equals(str) || "user.testLogin".equals(str) || "login".equals(str)) {
                return f(map);
            }
            if ("user.getPushData".equals(str)) {
                java.lang.String strE3 = this.f797a.e(map);
                java.util.Map mapW3 = this.f797a.f904d.w0(strE3);
                boolean z4 = mapW3 != null && com.sgscq.vpn.handler.c.P(mapW3);
                com.sgscq.vpn.handler.j jVarM = com.sgscq.vpn.handler.m.m(mapW3);
                if (z4 | jVarM.f882b) {
                    this.f797a.f904d.S0(strE3, mapW3);
                }
                int iG = (int) com.sgscq.vpn.c7.g();
                com.sgscq.vpn.handler.k0 k0Var3 = this.f797a;
                long j2 = k0Var3.j(k0Var3.a(), mapW3);
                com.sgscq.vpn.handler.k0 k0Var4 = this.f797a;
                int i4 = k0Var4.i(k0Var4.c(), "user_gold", mapW3);
                com.sgscq.vpn.handler.k0 k0Var5 = this.f797a;
                int i5 = k0Var5.i(k0Var5.b(), "user_energy", mapW3);
                com.sgscq.vpn.handler.k0 k0Var6 = this.f797a;
                org.json.JSONObject jSONObjectT2 = this.f797a.f904d.t(iG, i4, i5, k0Var6.i(k0Var6.d(), "user_power", mapW3), j2, strE3, mapW3);
                java.lang.String strJ2 = jVarM.f882b ? this.f797a.f904d.j(mapW3, jSONObjectT2, (java.lang.String[]) ((java.util.Set) jVarM.f884d).toArray(new java.lang.String[0])) : this.f797a.f904d.j(mapW3, jSONObjectT2, new java.lang.String[0]);
                this.f797a.f904d.getClass();
                java.lang.String strV = com.sgscq.vpn.h5.v(mapW3);
                java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
                a.o oVar = new a.o();
                java.lang.reflect.Type type = f796b;
                linkedHashMap.put("pushData", oVar.e(strV, type));
                java.util.ArrayList arrayListE = com.sgscq.vpn.handler.c.e(com.sgscq.vpn.c7.f(), mapW3);
                linkedHashMap.put("activity_list", arrayListE);
                java.lang.Object obj8 = linkedHashMap.get("pushData");
                java.util.LinkedHashMap linkedHashMap2 = obj8 instanceof java.util.Map ? new java.util.LinkedHashMap((java.util.Map) obj8) : new java.util.LinkedHashMap();
                linkedHashMap2.put("party", arrayListE);
                linkedHashMap.put("pushData", linkedHashMap2);
                java.lang.Object obj9 = linkedHashMap.get("pushData");
                java.util.Map linkedHashMap3 = obj9 instanceof java.util.Map ? (java.util.Map) obj9 : new java.util.LinkedHashMap();
                java.util.Map linkedHashMap4 = (java.util.Map) new a.o().e(strJ2, type);
                if (linkedHashMap4 == null) {
                    linkedHashMap4 = new java.util.LinkedHashMap();
                }
                java.lang.Object obj10 = linkedHashMap4.get("push");
                java.util.LinkedHashMap linkedHashMap5 = obj10 instanceof java.util.Map ? new java.util.LinkedHashMap((java.util.Map) obj10) : new java.util.LinkedHashMap();
                linkedHashMap5.put("party", new java.util.ArrayList(com.sgscq.vpn.handler.c.e(com.sgscq.vpn.c7.f(), mapW3)));
                if (linkedHashMap3 == null) {
                    linkedHashMap3 = com.sgscq.vpn.handler.c.g(mapW3, com.sgscq.vpn.c7.f(), com.sgscq.vpn.c7.f254i);
                }
                linkedHashMap5.put("gamble", linkedHashMap3.get("gamble"));
                linkedHashMap5.put("timing_power", linkedHashMap3.get("timing_power"));
                linkedHashMap5.put("training", com.sgscq.vpn.p5.z0("num", java.lang.Integer.valueOf(com.sgscq.vpn.cloud.m0.O(com.sgscq.vpn.c7.g(), "0", mapW3).size()), new java.lang.Object[0]));
                linkedHashMap4.put("push", linkedHashMap5);
                java.lang.String strS1 = com.sgscq.vpn.p5.s1(linkedHashMap4);
                java.lang.String strS2 = com.sgscq.vpn.p5.s1(linkedHashMap.get("pushData"));
                java.lang.String strS3 = com.sgscq.vpn.p5.s1(linkedHashMap.get("activity_list"));
                this.f797a.f904d.getClass();
                java.lang.String strS4 = com.sgscq.vpn.p5.s1(com.sgscq.vpn.h5.w(com.sgscq.vpn.h5.k0(mapW3)));
                java.lang.StringBuilder sbL = c.a.l("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"activity_list\":", strS3, ",\"pushData\":", strS2, ",\"push_info\":");
                sbL.append(strS4);
                sbL.append(",\"cmn\":");
                sbL.append(strS1);
                sbL.append("}");
                return this.f797a.n(sbL.toString());
            }
            if (!"user.chooseTeam".equals(str)) {
                if ("user.chgNickname".equals(str)) {
                    return d(map);
                }
                java.lang.String str17 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}";
                if ("user.chgSign".equals(str)) {
                    com.sgscq.vpn.handler.k0 k0Var7 = this.f797a;
                    java.lang.String strE4 = k0Var7.e(map);
                    java.lang.String str18 = (java.lang.String) map.getOrDefault("sign", (java.lang.String) map.getOrDefault("user_sign", ""));
                    java.util.Map mapW4 = k0Var7.f904d.w0(strE4);
                    if (mapW4 != null) {
                        mapW4.put("user_sign", str18);
                        k0Var7.f904d.S0(strE4, mapW4);
                        org.json.JSONObject jSONObjectT3 = k0Var7.f904d.t((int) com.sgscq.vpn.c7.g(), k0Var7.i(k0Var7.c(), "user_gold", mapW4), k0Var7.i(k0Var7.b(), "user_energy", mapW4), k0Var7.i(k0Var7.d(), "user_power", mapW4), k0Var7.j(k0Var7.a(), mapW4), strE4, mapW4);
                        str17 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_sign\":\"" + com.sgscq.vpn.p5.M(str18) + "\",\"sign\":\"" + com.sgscq.vpn.p5.M(str18) + "\",\"user_info\":" + jSONObjectT3.toString() + ",\"cmn\":" + k0Var7.f904d.j(mapW4, jSONObjectT3, new java.lang.String[0]) + "}";
                    }
                    return k0Var7.n(str17);
                }
                if (!"user.chgGeneralskin".equals(str)) {
                    if ("user.leaveMsg".equals(str)) {
                        return e(map);
                    }
                    if ("user.save".equals(str)) {
                        return g(map);
                    }
                    return null;
                }
                com.sgscq.vpn.handler.k0 k0Var8 = this.f797a;
                java.lang.String strE5 = k0Var8.e(map);
                java.lang.String str19 = (java.lang.String) map.getOrDefault("general_skin", "");
                java.util.Map mapW5 = k0Var8.f904d.w0(strE5);
                if (mapW5 != null && !str19.isEmpty()) {
                    mapW5.put("general_skin", str19);
                    k0Var8.f904d.S0(strE5, mapW5);
                    org.json.JSONObject jSONObjectT4 = k0Var8.f904d.t((int) com.sgscq.vpn.c7.g(), k0Var8.i(k0Var8.c(), "user_gold", mapW5), k0Var8.i(k0Var8.b(), "user_energy", mapW5), k0Var8.i(k0Var8.d(), "user_power", mapW5), k0Var8.j(k0Var8.a(), mapW5), strE5, mapW5);
                    str17 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"general_skin\":\"" + com.sgscq.vpn.p5.M(str19) + "\",\"user_general_skin\":\"" + com.sgscq.vpn.p5.M(str19) + "\",\"user_info\":" + jSONObjectT4.toString() + ",\"cmn\":" + k0Var8.f904d.j(mapW5, jSONObjectT4, new java.lang.String[0]) + "}";
                }
                return k0Var8.n(str17);
            }
            com.sgscq.vpn.handler.k0 k0Var9 = this.f797a;
            java.lang.String strE6 = k0Var9.e(map);
            java.lang.String str20 = (java.lang.String) map.getOrDefault("general_id", "");
            if (str20.isEmpty()) {
                string3 = "{\"error_code\":-1,\"ret\":-1,\"code\":-1,\"result\":false,\"msg\":\"缺少武将编号\"}";
            } else {
                java.util.Map mapW6 = k0Var9.f904d.w0(strE6);
                if (mapW6 == null) {
                    string3 = "{\"error_code\":-1,\"ret\":-1,\"code\":-1,\"result\":false,\"msg\":\"玩家数据不存在\"}";
                } else {
                    com.sgscq.vpn.w1 w1VarA1 = com.sgscq.vpn.w1.a1(k0Var9.f901a);
                    w1VarA1.R0(str20);
                    mapW6.put("first_choose_general", str20);
                    java.util.HashMap mapY1 = w1VarA1.Y1(str20);
                    mapY1.put("general_status", "1");
                    mapY1.put("status", "1");
                    java.util.HashMap mapZ1 = w1VarA1.Z1(str20);
                    java.lang.String str21 = "General";
                    java.util.Map map4 = (java.util.Map) mapW6.getOrDefault(str21, com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "add", new java.util.ArrayList(), "upd", new java.util.ArrayList()));
                    java.util.List list = (java.util.List) map4.getOrDefault("add", new java.util.ArrayList());
                    java.util.Iterator it4 = list.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            str2 = strE6;
                            str3 = str15;
                            z = false;
                            break;
                        }
                        str2 = strE6;
                        str3 = str15;
                        if (c.a.B((java.util.Map) it4.next(), str3, "", str20)) {
                            z = true;
                            break;
                        }
                        str15 = str3;
                        strE6 = str2;
                    }
                    if (!z) {
                        list.add(mapY1);
                        map4.put("add", list);
                        mapW6.put(str21, map4);
                    }
                    java.util.Map map5 = (java.util.Map) mapW6.getOrDefault("Skill", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "add", new java.util.ArrayList(), "upd", new java.util.ArrayList()));
                    java.util.List list2 = (java.util.List) map5.getOrDefault("add", new java.util.ArrayList());
                    java.util.Iterator it5 = list2.iterator();
                    while (true) {
                        if (!it5.hasNext()) {
                            str4 = str21;
                            z2 = false;
                            break;
                        }
                        str4 = str21;
                        if (c.a.B((java.util.Map) it5.next(), str3, "", str20)) {
                            z2 = true;
                            break;
                        }
                        str21 = str4;
                    }
                    if (!z2) {
                        list2.add(mapZ1);
                        map5.put("add", list2);
                        mapW6.put("Skill", map5);
                    }
                    java.util.ArrayList arrayList3 = new java.util.ArrayList();
                    com.sgscq.vpn.w1.b2("general_id", str20, arrayList3, mapW6);
                    com.sgscq.vpn.w1.b2("skill_id", w1VarA1.T0(str20), arrayList3, mapW6);
                    java.util.HashMap mapA2 = w1VarA1.a2(str20, 1);
                    java.util.Map map6 = (java.util.Map) mapW6.getOrDefault("TeamGeneral", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "add", new java.util.ArrayList(), "upd", new java.util.ArrayList()));
                    java.util.List list3 = (java.util.List) map6.getOrDefault("add", new java.util.ArrayList());
                    java.util.Iterator it6 = list3.iterator();
                    while (true) {
                        if (!it6.hasNext()) {
                            arrayList = arrayList3;
                            z3 = false;
                            break;
                        }
                        arrayList = arrayList3;
                        if (c.a.B((java.util.Map) it6.next(), str3, "", str20)) {
                            z3 = true;
                            break;
                        }
                        arrayList3 = arrayList;
                    }
                    if (!z3) {
                        list3.add(mapA2);
                        map6.put("add", list3);
                        mapW6.put("TeamGeneral", map6);
                    }
                    java.lang.String str22 = str2;
                    com.sgscq.vpn.cloud.m0.Y1(str22, mapW6, map, k0Var9.f903c);
                    k0Var9.f904d.S0(str22, mapW6);
                    org.json.JSONObject jSONObjectT5 = k0Var9.f904d.t((int) com.sgscq.vpn.c7.g(), k0Var9.i(k0Var9.c(), "user_gold", mapW6), k0Var9.i(k0Var9.b(), "user_energy", mapW6), k0Var9.i(k0Var9.d(), "user_power", mapW6), k0Var9.j(k0Var9.a(), mapW6), str22, mapW6);
                    try {
                        jSONObjectT5.put("first_choose_general", str20);
                    } catch (java.lang.Exception unused) {
                    }
                    java.lang.StringBuilder sb5 = new java.lang.StringBuilder("{\"del\":[],\"add\":[");
                    k0Var9.f904d.getClass();
                    try {
                        string = new org.json.JSONObject(mapY1).toString();
                    } catch (java.lang.Exception unused2) {
                        string = "{}";
                    }
                    sb5.append(string);
                    sb5.append("],\"upd\":[]}");
                    java.lang.String string5 = sb5.toString();
                    java.lang.StringBuilder sb6 = new java.lang.StringBuilder("{\"del\":[],\"add\":[");
                    k0Var9.f904d.getClass();
                    try {
                        string2 = new org.json.JSONObject(mapZ1).toString();
                    } catch (java.lang.Exception unused3) {
                        string2 = "{}";
                    }
                    sb6.append(string2);
                    sb6.append("],\"upd\":[]}");
                    java.lang.String string6 = sb6.toString();
                    com.sgscq.vpn.h5 h5Var = k0Var9.f904d;
                    java.util.HashMap map7 = new java.util.HashMap(mapW6);
                    java.util.ArrayList arrayList4 = new java.util.ArrayList();
                    arrayList4.add(mapY1);
                    java.util.ArrayList arrayList5 = new java.util.ArrayList();
                    arrayList5.add(mapZ1);
                    java.util.ArrayList arrayList6 = new java.util.ArrayList();
                    java.lang.Object[] objArr = {"add", new java.util.ArrayList(), "upd", arrayList4};
                    java.lang.String str23 = str4;
                    map7.put("Skill", com.sgscq.vpn.p5.z0("del", c.a.m("del", arrayList6, objArr, map7, str23), "add", new java.util.ArrayList(), "upd", arrayList5));
                    java.util.ArrayList arrayList7 = new java.util.ArrayList();
                    h5Var.getClass();
                    map7.put("Atlas", com.sgscq.vpn.p5.z0("del", c.a.m("del", arrayList7, new java.lang.Object[]{"add", com.sgscq.vpn.h5.h0(mapW6), "upd", new java.util.ArrayList()}, map7, "TeamGeneral"), "add", new java.util.ArrayList(), "upd", arrayList));
                    java.lang.String strJ3 = k0Var9.f904d.j(map7, jSONObjectT5, str23, "Skill", "TeamGeneral", "Atlas");
                    k0Var9.f904d.getClass();
                    java.lang.String strB0 = com.sgscq.vpn.h5.B0("Equipment", mapW6);
                    k0Var9.f904d.getClass();
                    java.lang.String strB1 = com.sgscq.vpn.h5.B0("Item", mapW6);
                    java.lang.String strS5 = com.sgscq.vpn.p5.s1(k0Var9.f904d.j0(mapW6));
                    k0Var9.f904d.getClass();
                    java.lang.String strB2 = com.sgscq.vpn.h5.B0("Atlas", mapW6);
                    java.lang.String str24 = "{\"toast\":[],\"list\":[],\"gold_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":100},\"silver_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":50},\"copper_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":20},\"need_times\":5,\"first_time_consume_gold\":" + (mapW6.containsKey("first_gold_wine") ? 1 : 0) + ",\"multi_price\":900,\"show_general_list\":" + k0Var9.f904d.D() + "}";
                    int iW0 = w1VarA1.W0();
                    java.lang.StringBuilder sb7 = new java.lang.StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":");
                    sb7.append(iW0);
                    sb7.append(",\"isShowUnionWar\":true,\"rechargeRate\":\"1.0\",\"wine_info\":");
                    sb7.append(str24);
                    sb7.append(",\"first_choose_general\":\"");
                    c.a.y(sb7, str20, "\",\"first_wine_general\":\"0\",\"user_id\":\"", str22, "\",\"account_uid\":\"");
                    sb7.append(str22);
                    sb7.append("\",\"user_info\":");
                    sb7.append(jSONObjectT5.toString());
                    sb7.append(",\"general_info\":");
                    c.a.y(sb7, string5, ",\"General\":", string5, ",\"skill_info\":");
                    c.a.y(sb7, string6, ",\"Skill\":", string6, ",\"equipment_info\":");
                    c.a.y(sb7, strB0, ",\"Equipment\":", strB0, ",\"item_info\":");
                    c.a.y(sb7, strB1, ",\"Item\":", strB1, ",\"team_info\":");
                    c.a.y(sb7, strS5, ",\"TeamGeneral\":", strS5, ",\"atlas_info\":");
                    c.a.y(sb7, strB2, ",\"Atlas\":", strB2, ",\"GeneralSouls\":[],\"cmn\":");
                    sb7.append(strJ3);
                    sb7.append("}");
                    string3 = sb7.toString();
                }
            }
            return k0Var9.n(string3);
        }
        com.sgscq.vpn.handler.k0 k0Var10 = this.f797a;
        com.sgscq.vpn.h5 h5Var2 = k0Var10.f904d;
        java.lang.String strE7 = k0Var10.e(map);
        h5Var2.getClass();
        java.lang.Object obj11 = "pk_id";
        java.lang.String str25 = "0";
        try {
            if ((strE7 == null || strE7.isEmpty()) && map != null && (((str5 = (java.lang.String) map.get("uid")) == null || str5.isEmpty()) && ((str6 = (java.lang.String) map.get("account_uid")) == null || str6.isEmpty()))) {
                str7 = "account_uid";
                java.lang.String str26 = (java.lang.String) map.get("user_id");
                if (str26 == null || str26.isEmpty()) {
                    java.lang.String str27 = (java.lang.String) map.get("token");
                    if (str27 == null || !str27.startsWith("tok_")) {
                        str8 = "token";
                        obj = "Atlas";
                    } else {
                        str8 = "token";
                        obj = "Atlas";
                        int iIndexOf = str27.indexOf(95, 4);
                        if (iIndexOf <= 4 || str27.substring(4, iIndexOf).isEmpty()) {
                        }
                    }
                    try {
                        org.json.JSONObject jSONObject = new org.json.JSONObject((java.lang.String) map.getOrDefault("data", "{}"));
                        java.lang.String strOptString = jSONObject.has("extra") ? jSONObject.getJSONObject("extra").optString("uid", "") : jSONObject.optString("uid", "");
                        if (strOptString != null) {
                            strOptString.isEmpty();
                        }
                    } catch (java.lang.Exception unused4) {
                    }
                }
                context = h5Var2.f738c;
                java.lang.String strV2 = new com.sgscq.vpn.m4(context).v();
                long jG2 = com.sgscq.vpn.c7.g();
                java.lang.StringBuilder sbB = a.b0.b("tok_", strV2, "_");
                sbB.append(jG2 % 100000);
                string4 = sbB.toString();
                android.content.SharedPreferences sharedPreferences = h5Var2.f739d;
                java.lang.String string7 = sharedPreferences.getString("player_name", "玩家");
                sb = new java.lang.StringBuilder();
                sb.append(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("server_id", "1", "server_title", "单机服务器", "server_url", "cqzx.sanguosha.com/sanguosha_account", "server_status", 1, "server_recommend", 1, "serverId", 1, "server_name", "单机服务器", "serverName", "单机服务器")));
                jSONArray = new org.json.JSONArray(sharedPreferences.getString("custom_servers", "[]"));
                i3 = 0;
                while (i3 < jSONArray.length()) {
                    org.json.JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                    int i6 = i3 + 100;
                    org.json.JSONArray jSONArray2 = jSONArray;
                    sb.append(",{\"server_id\":\"");
                    sb.append(i6);
                    sb.append("\",\"server_title\":\"");
                    sb.append(com.sgscq.vpn.p5.M(jSONObject2.getString("name")));
                    sb.append("\",\"server_url\":\"");
                    sb.append(jSONObject2.getString("host"));
                    sb.append(":");
                    sb.append(jSONObject2.getInt("port"));
                    sb.append("\",\"server_status\":1,\"server_recommend\":0");
                    sb.append(",\"serverId\":");
                    sb.append(i6);
                    sb.append(",\"server_name\":\"");
                    sb.append(com.sgscq.vpn.p5.M(jSONObject2.getString("name")));
                    sb.append("\",\"serverName\":\"");
                    sb.append(com.sgscq.vpn.p5.M(jSONObject2.getString("name")));
                    sb.append("\"}");
                    i3++;
                    jSONArray = jSONArray2;
                }
                str9 = "[";
                strA = com.sgscq.vpn.handler.l.a("[", com.sgscq.vpn.h5.x(1, 1, strV2, string7), "]");
                mapW0 = h5Var2.w0(strV2);
                com.sgscq.vpn.w1 w1VarZ0 = com.sgscq.vpn.w1.Z0();
                if (mapW0 == null) {
                    hashSet2 = new java.util.HashSet();
                    str10 = string4;
                } else {
                    hashSet = new java.util.HashSet();
                    obj2 = mapW0.get("General");
                    if (obj2 instanceof java.util.Map) {
                        obj3 = ((java.util.Map) obj2).get("add");
                        if (obj3 instanceof java.util.List) {
                            it = ((java.util.List) obj3).iterator();
                            while (it.hasNext()) {
                                next = it.next();
                                it = it;
                                if (!(next instanceof java.util.Map)) {
                                    map2 = (java.util.Map) next;
                                    java.lang.String str28 = string4;
                                    if (!java.lang.Boolean.TRUE.equals(map2.get("story_guest")) && (obj4 = map2.get("general_id")) != null && !java.lang.String.valueOf(obj4).isEmpty()) {
                                        hashSet.add(java.lang.String.valueOf(obj4));
                                    }
                                    string4 = str28;
                                }
                            }
                        }
                    }
                    str10 = string4;
                    hashSet2 = hashSet;
                }
                hashSet3 = new java.util.HashSet();
                if (mapW0 == null) {
                    str11 = strA;
                    str12 = "[";
                    sb2 = sb;
                } else {
                    a7VarV1 = com.sgscq.vpn.w1.a1(context).V1();
                    obj5 = mapW0.get("surrender_progress");
                    if (obj5 instanceof java.util.Map) {
                        map3 = (java.util.Map) obj5;
                        it3 = map3.keySet().iterator();
                        while (it3.hasNext()) {
                            it3 = it3;
                            str13 = (java.lang.String) it3.next();
                            if (str13 == null) {
                                java.lang.String str29 = strA;
                                if (str13.startsWith("claimed_")) {
                                    sb3 = sb;
                                    str14 = str9;
                                    if (!com.sgscq.vpn.h5.V0(str13.substring(8), map3)) {
                                        strI1 = com.sgscq.vpn.h5.I0(str13.substring(8));
                                        if (com.sgscq.vpn.h5.T0(mapW0, a7VarV1, strI1)) {
                                            hashSet3.add(strI1);
                                        }
                                    }
                                    strA = str29;
                                    sb = sb3;
                                    str9 = str14;
                                } else {
                                    str14 = str9;
                                    sb3 = sb;
                                }
                                if (!str13.startsWith("claimed_") && !com.sgscq.vpn.h5.V0(str13, map3)) {
                                    strI1 = com.sgscq.vpn.h5.I0(str13);
                                    if (com.sgscq.vpn.h5.T0(mapW0, a7VarV1, strI1)) {
                                        hashSet3.add(strI1);
                                    }
                                }
                                strA = str29;
                                sb = sb3;
                                str9 = str14;
                            }
                        }
                    }
                    str11 = strA;
                    str12 = str9;
                    sb2 = sb;
                    obj6 = mapW0.get(obj);
                    if (obj6 instanceof java.util.Map) {
                        obj7 = ((java.util.Map) obj6).get("add");
                        if (obj7 instanceof java.util.List) {
                            it2 = ((java.util.List) obj7).iterator();
                            while (it2.hasNext()) {
                                next2 = it2.next();
                                if (!(next2 instanceof java.util.Map)) {
                                    java.util.Map map8 = (java.util.Map) next2;
                                    java.lang.String str30 = str25;
                                    iF = c.a.f(map8, "type", str30, 0);
                                    int iF2 = c.a.f(map8, "atlas_status", str30, 0);
                                    java.util.Iterator it7 = it2;
                                    java.lang.Object obj12 = obj11;
                                    strI0 = com.sgscq.vpn.h5.I0(map8.getOrDefault("general_id", map8.getOrDefault(obj12, "")));
                                    if (iF == 1 && iF2 == 2 && !strI0.isEmpty() && com.sgscq.vpn.h5.T0(mapW0, a7VarV1, strI0)) {
                                        hashSet3.add(strI0);
                                    }
                                    it2 = it7;
                                    str25 = str30;
                                    obj11 = obj12;
                                }
                            }
                        }
                    }
                }
                w1VarZ0.getClass();
                jG = com.sgscq.vpn.c7.g();
                java.util.List<java.util.Map> listG1 = w1VarZ0.g1(jG);
                arrayList2 = new java.util.ArrayList();
                for (java.util.Map map9 : listG1) {
                    strValueOf = java.lang.String.valueOf(map9.getOrDefault("general_id", ""));
                    if (hashSet2.contains(strValueOf) && !hashSet3.contains(strValueOf)) {
                        arrayList2.add(map9);
                    }
                }
                mapF1 = w1VarZ0.f1(jG, hashSet3);
                if (mapF1 != null && !hashSet2.contains(java.lang.String.valueOf(mapF1.getOrDefault("general_id", "")))) {
                    mapF1 = null;
                }
                jR0 = w1VarZ0.r0(1000 * jG);
                if (jR0 > 0) {
                    jG += jR0;
                }
                sb4 = new java.lang.StringBuilder("{\"limited_generals\":[");
                for (i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb4.append(",");
                    }
                    java.util.Map map10 = (java.util.Map) arrayList2.get(i2);
                    sb4.append("{\"general_id\":\"");
                    sb4.append(map10.get("general_id"));
                    sb4.append("\",\"general_name\":\"");
                    sb4.append(com.sgscq.vpn.p5.M(java.lang.String.valueOf(map10.get("general_name"))));
                    sb4.append("\",\"fighting\":\"");
                    sb4.append(map10.get("fighting"));
                    sb4.append("\",\"star\":");
                    sb4.append(map10.get("star"));
                    sb4.append("}");
                }
                sb4.append("]");
                if (mapF1 != null) {
                    sb4.append(",\"current_limited\":{\"general_id\":\"");
                    sb4.append(mapF1.get("general_id"));
                    sb4.append("\",\"general_name\":\"");
                    sb4.append(com.sgscq.vpn.p5.M(java.lang.String.valueOf(mapF1.get("general_name"))));
                    sb4.append("\",\"fighting\":\"");
                    sb4.append(mapF1.get("fighting"));
                    sb4.append("\"}");
                }
                sb4.append(",\"limited_next_refresh\":");
                sb4.append(jG);
                sb4.append(",\"limited_interval\":43200,\"limited_total\":");
                sb4.append(arrayList2.size());
                sb4.append("}");
                java.lang.String string8 = sb4.toString();
                com.sgscq.vpn.y1 y1Var = new com.sgscq.vpn.y1();
                y1Var.e("error_code", 0);
                y1Var.e("ret", 0);
                y1Var.e("code", 0);
                y1Var.g("result", true);
                y1Var.f("msg", "success");
                com.sgscq.vpn.y1 y1VarH = y1Var.h("account_info");
                y1VarH.f(str7, strV2);
                y1VarH.b();
                y1Var.f("addrServer", "cqzx.sanguosha.com/sanguosha_account");
                y1Var.i("server_list", str12 + sb2.toString() + "]");
                java.lang.String str31 = str11;
                y1Var.i("server_logined_list", str31);
                y1Var.i("serverListLogined", str31);
                y1Var.i("loginedServerLists", str31);
                com.sgscq.vpn.y1 y1VarH2 = y1Var.h("server_params");
                java.lang.String str32 = str10;
                y1VarH2.f("server_params", str32);
                y1VarH2.b();
                y1Var.f(str8, str32);
                y1Var.f("cfg_version", "ctv201611241300trunk1300_1482732868");
                y1Var.e("lastServer", 1);
                y1Var.d(jG2 - 31536000, "openTime");
                y1Var.d(jG2, "serverTime");
                y1Var.i("limited_general_info", string8);
                return k0Var10.n(y1Var.b());
            }
            str7 = "account_uid";
            jSONArray = new org.json.JSONArray(sharedPreferences.getString("custom_servers", "[]"));
            i3 = 0;
            while (i3 < jSONArray.length()) {
                org.json.JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                int i7 = i3 + 100;
                org.json.JSONArray jSONArray3 = jSONArray;
                sb.append(",{\"server_id\":\"");
                sb.append(i7);
                sb.append("\",\"server_title\":\"");
                sb.append(com.sgscq.vpn.p5.M(jSONObject3.getString("name")));
                sb.append("\",\"server_url\":\"");
                sb.append(jSONObject3.getString("host"));
                sb.append(":");
                sb.append(jSONObject3.getInt("port"));
                sb.append("\",\"server_status\":1,\"server_recommend\":0");
                sb.append(",\"serverId\":");
                sb.append(i7);
                sb.append(",\"server_name\":\"");
                sb.append(com.sgscq.vpn.p5.M(jSONObject3.getString("name")));
                sb.append("\",\"serverName\":\"");
                sb.append(com.sgscq.vpn.p5.M(jSONObject3.getString("name")));
                sb.append("\"}");
                i3++;
                jSONArray = jSONArray3;
            }
        } catch (java.lang.Exception e2) {
            c.a.u(e2, new java.lang.StringBuilder("Custom servers: "), "SGSCQ_SRV");
        }
        str8 = "token";
        obj = "Atlas";
        context = h5Var2.f738c;
        java.lang.String strV3 = new com.sgscq.vpn.m4(context).v();
        long jG3 = com.sgscq.vpn.c7.g();
        java.lang.StringBuilder sbB2 = a.b0.b("tok_", strV3, "_");
        sbB2.append(jG3 % 100000);
        string4 = sbB2.toString();
        android.content.SharedPreferences sharedPreferences2 = h5Var2.f739d;
        java.lang.String string9 = sharedPreferences2.getString("player_name", "玩家");
        sb = new java.lang.StringBuilder();
        sb.append(com.sgscq.vpn.p5.s1(com.sgscq.vpn.p5.z0("server_id", "1", "server_title", "单机服务器", "server_url", "cqzx.sanguosha.com/sanguosha_account", "server_status", 1, "server_recommend", 1, "serverId", 1, "server_name", "单机服务器", "serverName", "单机服务器")));
        str9 = "[";
        strA = com.sgscq.vpn.handler.l.a("[", com.sgscq.vpn.h5.x(1, 1, strV3, string9), "]");
        mapW0 = h5Var2.w0(strV3);
        com.sgscq.vpn.w1 w1VarZ1 = com.sgscq.vpn.w1.Z0();
        if (mapW0 == null) {
            hashSet2 = new java.util.HashSet();
            str10 = string4;
        } else {
            hashSet = new java.util.HashSet();
            obj2 = mapW0.get("General");
            if (obj2 instanceof java.util.Map) {
                obj3 = ((java.util.Map) obj2).get("add");
                if (obj3 instanceof java.util.List) {
                    it = ((java.util.List) obj3).iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        it = it;
                        if (!(next instanceof java.util.Map)) {
                            map2 = (java.util.Map) next;
                            java.lang.String str210 = string4;
                            if (!java.lang.Boolean.TRUE.equals(map2.get("story_guest"))) {
                                hashSet.add(java.lang.String.valueOf(obj4));
                            }
                            string4 = str210;
                        }
                    }
                }
            }
            str10 = string4;
            hashSet2 = hashSet;
        }
        hashSet3 = new java.util.HashSet();
        if (mapW0 == null) {
            str11 = strA;
            str12 = "[";
            sb2 = sb;
        } else {
            a7VarV1 = com.sgscq.vpn.w1.a1(context).V1();
            obj5 = mapW0.get("surrender_progress");
            if (obj5 instanceof java.util.Map) {
                map3 = (java.util.Map) obj5;
                it3 = map3.keySet().iterator();
                while (it3.hasNext()) {
                    it3 = it3;
                    str13 = (java.lang.String) it3.next();
                    if (str13 == null) {
                        java.lang.String str211 = strA;
                        if (str13.startsWith("claimed_")) {
                            sb3 = sb;
                            str14 = str9;
                            if (!com.sgscq.vpn.h5.V0(str13.substring(8), map3)) {
                                strI1 = com.sgscq.vpn.h5.I0(str13.substring(8));
                                if (com.sgscq.vpn.h5.T0(mapW0, a7VarV1, strI1)) {
                                    hashSet3.add(strI1);
                                }
                            }
                            strA = str211;
                            sb = sb3;
                            str9 = str14;
                        } else {
                            str14 = str9;
                            sb3 = sb;
                        }
                        if (!str13.startsWith("claimed_")) {
                            strI1 = com.sgscq.vpn.h5.I0(str13);
                            if (com.sgscq.vpn.h5.T0(mapW0, a7VarV1, strI1)) {
                                hashSet3.add(strI1);
                            }
                        }
                        strA = str211;
                        sb = sb3;
                        str9 = str14;
                    }
                }
            }
            str11 = strA;
            str12 = str9;
            sb2 = sb;
            obj6 = mapW0.get(obj);
            if (obj6 instanceof java.util.Map) {
                obj7 = ((java.util.Map) obj6).get("add");
                if (obj7 instanceof java.util.List) {
                    it2 = ((java.util.List) obj7).iterator();
                    while (it2.hasNext()) {
                        next2 = it2.next();
                        if (!(next2 instanceof java.util.Map)) {
                            java.util.Map map11 = (java.util.Map) next2;
                            java.lang.String str33 = str25;
                            iF = c.a.f(map11, "type", str33, 0);
                            int iF3 = c.a.f(map11, "atlas_status", str33, 0);
                            java.util.Iterator it8 = it2;
                            java.lang.Object obj13 = obj11;
                            strI0 = com.sgscq.vpn.h5.I0(map11.getOrDefault("general_id", map11.getOrDefault(obj13, "")));
                            if (iF == 1) {
                                hashSet3.add(strI0);
                            }
                            it2 = it8;
                            str25 = str33;
                            obj11 = obj13;
                        }
                    }
                }
            }
        }
        w1VarZ1.getClass();
        jG = com.sgscq.vpn.c7.g();
        java.util.List<java.util.Map> listG2 = w1VarZ1.g1(jG);
        arrayList2 = new java.util.ArrayList();
        while (r2.hasNext()) {
            strValueOf = java.lang.String.valueOf(map9.getOrDefault("general_id", ""));
            if (hashSet2.contains(strValueOf)) {
                arrayList2.add(map9);
            }
        }
        mapF1 = w1VarZ1.f1(jG, hashSet3);
        if (mapF1 != null) {
            mapF1 = null;
        }
        jR0 = w1VarZ1.r0(1000 * jG);
        if (jR0 > 0) {
            jG += jR0;
        }
        sb4 = new java.lang.StringBuilder("{\"limited_generals\":[");
        while (i2 < arrayList2.size()) {
            if (i2 > 0) {
                sb4.append(",");
            }
            java.util.Map map12 = (java.util.Map) arrayList2.get(i2);
            sb4.append("{\"general_id\":\"");
            sb4.append(map12.get("general_id"));
            sb4.append("\",\"general_name\":\"");
            sb4.append(com.sgscq.vpn.p5.M(java.lang.String.valueOf(map12.get("general_name"))));
            sb4.append("\",\"fighting\":\"");
            sb4.append(map12.get("fighting"));
            sb4.append("\",\"star\":");
            sb4.append(map12.get("star"));
            sb4.append("}");
        }
        sb4.append("]");
        if (mapF1 != null) {
            sb4.append(",\"current_limited\":{\"general_id\":\"");
            sb4.append(mapF1.get("general_id"));
            sb4.append("\",\"general_name\":\"");
            sb4.append(com.sgscq.vpn.p5.M(java.lang.String.valueOf(mapF1.get("general_name"))));
            sb4.append("\",\"fighting\":\"");
            sb4.append(mapF1.get("fighting"));
            sb4.append("\"}");
        }
        sb4.append(",\"limited_next_refresh\":");
        sb4.append(jG);
        sb4.append(",\"limited_interval\":43200,\"limited_total\":");
        sb4.append(arrayList2.size());
        sb4.append("}");
        java.lang.String string10 = sb4.toString();
        com.sgscq.vpn.y1 y1Var2 = new com.sgscq.vpn.y1();
        y1Var2.e("error_code", 0);
        y1Var2.e("ret", 0);
        y1Var2.e("code", 0);
        y1Var2.g("result", true);
        y1Var2.f("msg", "success");
        com.sgscq.vpn.y1 y1VarH3 = y1Var2.h("account_info");
        y1VarH3.f(str7, strV3);
        y1VarH3.b();
        y1Var2.f("addrServer", "cqzx.sanguosha.com/sanguosha_account");
        y1Var2.i("server_list", str12 + sb2.toString() + "]");
        java.lang.String str34 = str11;
        y1Var2.i("server_logined_list", str34);
        y1Var2.i("serverListLogined", str34);
        y1Var2.i("loginedServerLists", str34);
        com.sgscq.vpn.y1 y1VarH4 = y1Var2.h("server_params");
        java.lang.String str35 = str10;
        y1VarH4.f("server_params", str35);
        y1VarH4.b();
        y1Var2.f(str8, str35);
        y1Var2.f("cfg_version", "ctv201611241300trunk1300_1482732868");
        y1Var2.e("lastServer", 1);
        y1Var2.d(jG3 - 31536000, "openTime");
        y1Var2.d(jG3, "serverTime");
        y1Var2.i("limited_general_info", string10);
        return k0Var10.n(y1Var2.b());
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
    public final byte[] d(java.util.Map map) {
        java.lang.String string;
        java.lang.String str;
        java.lang.String str2;
        java.util.Map map2;
        java.util.Map map3;
        com.sgscq.vpn.handler.k0 k0Var = this.f797a;
        java.lang.String strE = k0Var.e(map);
        java.lang.String str3 = (java.lang.String) map.getOrDefault("nickname", "");
        com.sgscq.vpn.h5 h5Var = k0Var.f904d;
        java.util.Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null || str3.isEmpty()) {
            string = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}";
        } else {
            mapW0.put("user_nickname", str3);
            com.sgscq.vpn.cloud.m0.Y1(strE, mapW0, map, k0Var.f903c);
            h5Var.S0(strE, mapW0);
            org.json.JSONObject jSONObjectT = k0Var.f904d.t((int) com.sgscq.vpn.c7.g(), k0Var.i(k0Var.c(), "user_gold", mapW0), k0Var.i(k0Var.b(), "user_energy", mapW0), k0Var.i(k0Var.d(), "user_power", mapW0), k0Var.j(k0Var.a(), mapW0), strE, mapW0);
            java.lang.String str4 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_nickname\":\"";
            if (!"0".equals(java.lang.String.valueOf(mapW0.getOrDefault("first_wine_general", "0")))) {
                return k0Var.n("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_nickname\":\"" + com.sgscq.vpn.p5.M(str3) + "\",\"nickname\":\"" + com.sgscq.vpn.p5.M(str3) + "\",\"user_info\":" + jSONObjectT.toString() + ",\"cmn\":" + h5Var.j(mapW0, jSONObjectT, new java.lang.String[0]) + "}");
            }
            java.util.HashMap map4 = new java.util.HashMap(mapW0);
            map4.put("Skill", com.sgscq.vpn.p5.z0("del", c.a.m("del", new java.util.ArrayList(), new java.lang.Object[]{"add", new java.util.ArrayList(), "upd", new java.util.ArrayList(com.sgscq.vpn.w1.f0("General", mapW0))}, map4, "General"), "add", new java.util.ArrayList(), "upd", new java.util.ArrayList(com.sgscq.vpn.w1.f0("Skill", mapW0))));
            java.util.ArrayList arrayList = new java.util.ArrayList();
            h5Var.getClass();
            java.util.ArrayList arrayListM = c.a.m("del", arrayList, new java.lang.Object[]{"add", com.sgscq.vpn.h5.h0(mapW0), "upd", new java.util.ArrayList()}, map4, "TeamGeneral");
            java.util.Iterator it = com.sgscq.vpn.w1.f0("Item", mapW0).iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = str4;
                    str2 = str3;
                    map2 = mapW0;
                    map3 = null;
                    break;
                }
                java.util.Iterator it2 = it;
                map3 = (java.util.Map) it.next();
                str2 = str3;
                str = str4;
                map2 = mapW0;
                if (c.a.C(map3, "id", "", "item_id", "720001")) {
                    break;
                }
                str3 = str2;
                it = it2;
                str4 = str;
                mapW0 = map2;
            }
            if (map3 != null) {
                arrayListM.add(map3);
            }
            map4.put("Item", com.sgscq.vpn.p5.z0("del", new java.util.ArrayList(), "add", new java.util.ArrayList(), "upd", arrayListM));
            java.lang.String strJ = h5Var.j(map4, jSONObjectT, "General", "Skill", "TeamGeneral", "Item");
            h5Var.getClass();
            java.lang.String strZ0 = com.sgscq.vpn.h5.z0("General", map4);
            h5Var.getClass();
            java.lang.String strZ1 = com.sgscq.vpn.h5.z0("Skill", map4);
            java.util.Map map5 = map2;
            java.lang.String strS1 = com.sgscq.vpn.p5.s1(h5Var.j0(map5));
            h5Var.getClass();
            java.lang.String strZ2 = com.sgscq.vpn.h5.z0("Item", map4);
            java.lang.String strValueOf = java.lang.String.valueOf(map5.getOrDefault("user_map_step", ""));
            h5Var.getClass();
            java.lang.String strH0 = com.sgscq.vpn.h5.H0(strValueOf);
            if (strH0.isEmpty()) {
                strH0 = h5Var.Z();
            }
            java.lang.String strO = h5Var.o(strH0, map5, strH0.startsWith("105"));
            java.lang.StringBuilder sb = new java.lang.StringBuilder(str);
            sb.append(com.sgscq.vpn.p5.M(str2));
            sb.append("\",\"nickname\":\"");
            sb.append(com.sgscq.vpn.p5.M(str2));
            sb.append("\",\"map_info\":");
            sb.append(strO);
            sb.append(",\"user_info\":");
            sb.append(jSONObjectT.toString());
            sb.append(",\"general_info\":");
            sb.append(strZ0);
            sb.append(",\"General\":");
            c.a.y(sb, strZ0, ",\"skill_info\":", strZ1, ",\"Skill\":");
            c.a.y(sb, strZ1, ",\"team_info\":", strS1, ",\"TeamGeneral\":");
            c.a.y(sb, strS1, ",\"item_info\":", strZ2, ",\"Item\":");
            sb.append(strZ2);
            sb.append(",\"cmn\":");
            sb.append(strJ);
            sb.append("}");
            string = sb.toString();
        }
        return k0Var.n(string);
    }

    public final byte[] e(java.util.Map map) {
        com.sgscq.vpn.handler.k0 k0Var = this.f797a;
        java.lang.String strE = k0Var.e(map);
        com.sgscq.vpn.h5 h5Var = k0Var.f904d;
        java.util.Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            mapW0 = new java.util.LinkedHashMap();
        }
        java.lang.String strH = h("message", map);
        if (strH.isEmpty()) {
            strH = h("content", map);
        }
        if (strH.isEmpty()) {
            strH = h("msg", map);
        }
        mapW0.put("last_leave_msg", strH);
        mapW0.put("leave_msg_count", java.lang.Integer.valueOf(com.sgscq.vpn.w1.l2(java.lang.String.valueOf(mapW0.getOrDefault("leave_msg_count", "0")), 0) + 1));
        mapW0.put("leave_msg_time", java.lang.Long.valueOf(com.sgscq.vpn.c7.g()));
        java.lang.Boolean bool = java.lang.Boolean.TRUE;
        java.util.LinkedHashMap linkedHashMapZ0 = com.sgscq.vpn.p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", com.sgscq.vpn.p5.z0("result", bool, new java.lang.Object[0]), "cmn_modules", "Player");
        h5Var.S0(strE, mapW0);
        org.json.JSONObject jSONObjectI = i(strE, mapW0);
        linkedHashMapZ0.put("user_info", com.sgscq.vpn.p5.u1(jSONObjectI.toString()));
        linkedHashMapZ0.put("cmn", com.sgscq.vpn.p5.u1(h5Var.j(mapW0, jSONObjectI, new java.lang.String[0])));
        return k0Var.n(com.sgscq.vpn.p5.s1(linkedHashMapZ0));
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 28641. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final byte[] f(java.util.Map r55) {
        /*
            Method dump skipped, instruction units count: 2864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sgscq.vpn.handler.d.f(java.util.Map):byte[]");
    }

    public final byte[] g(java.util.Map map) {
        java.lang.String string;
        com.sgscq.vpn.handler.k0 k0Var = this.f797a;
        java.lang.String strE = k0Var.e(map);
        com.sgscq.vpn.h5 h5Var = k0Var.f904d;
        java.util.Map mapW0 = h5Var.w0(strE);
        if (mapW0 != null) {
            if (map != null) {
                java.lang.String str = (java.lang.String) map.get("user_nickname");
                if (str != null && !str.isEmpty()) {
                    mapW0.put("user_nickname", str);
                }
                java.lang.String str2 = (java.lang.String) map.get("user_sign");
                if (str2 != null) {
                    mapW0.put("user_sign", str2);
                }
                java.lang.String str3 = (java.lang.String) map.get("headIcon");
                if (str3 != null) {
                    try {
                        mapW0.put("headIcon", java.lang.Integer.valueOf(java.lang.Integer.parseInt(str3)));
                    } catch (java.lang.NumberFormatException unused) {
                        mapW0.put("headIcon", str3);
                    }
                }
            }
            boolean zContainsKey = map.containsKey("freshman_step");
            android.content.SharedPreferences sharedPreferences = k0Var.f903c;
            if (zContainsKey || map.containsKey("server_step") || map.containsKey("guide_step") || map.containsKey("step")) {
                com.sgscq.vpn.cloud.m0.Y1(strE, mapW0, map, sharedPreferences);
            }
            java.lang.String str4 = (java.lang.String) map.get("guide_completed");
            if (str4 != null) {
                mapW0.put("guide_completed", java.lang.Boolean.valueOf("true".equalsIgnoreCase(str4)));
                sharedPreferences.edit().putBoolean(com.sgscq.vpn.handler.l.a("guide_", strE, "_guide_completed"), "true".equalsIgnoreCase(str4)).apply();
            }
            h5Var.S0(strE, mapW0);
            org.json.JSONObject jSONObjectT = k0Var.f904d.t((int) com.sgscq.vpn.c7.g(), k0Var.i(k0Var.c(), "user_gold", mapW0), k0Var.i(k0Var.b(), "user_energy", mapW0), k0Var.i(k0Var.d(), "user_power", mapW0), k0Var.j(k0Var.a(), mapW0), strE, mapW0);
            java.lang.String strJ = h5Var.j(mapW0, jSONObjectT, new java.lang.String[0]);
            h5Var.getClass();
            java.lang.String strZ0 = com.sgscq.vpn.h5.z0("General", mapW0);
            h5Var.getClass();
            java.lang.String strZ1 = com.sgscq.vpn.h5.z0("Skill", mapW0);
            h5Var.getClass();
            java.lang.String strZ2 = com.sgscq.vpn.h5.z0("Equipment", mapW0);
            h5Var.getClass();
            java.lang.String strZ3 = com.sgscq.vpn.h5.z0("Item", mapW0);
            java.lang.String strS1 = com.sgscq.vpn.p5.s1(h5Var.j0(mapW0));
            h5Var.getClass();
            java.lang.String strZ4 = com.sgscq.vpn.h5.z0("Atlas", mapW0);
            int iW0 = com.sgscq.vpn.w1.a1(k0Var.f901a).W0();
            java.lang.StringBuilder sb = new java.lang.StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":");
            sb.append(iW0);
            sb.append(",\"isShowUnionWar\":true,\"rechargeRate\":\"1.0\",\"user_info\":");
            sb.append(jSONObjectT.toString());
            sb.append(",\"general_info\":");
            sb.append(strZ0);
            sb.append(",\"General\":");
            c.a.y(sb, strZ0, ",\"skill_info\":", strZ1, ",\"Skill\":");
            c.a.y(sb, strZ1, ",\"equipment_info\":", strZ2, ",\"Equipment\":");
            c.a.y(sb, strZ2, ",\"item_info\":", strZ3, ",\"Item\":");
            c.a.y(sb, strZ3, ",\"team_info\":", strS1, ",\"TeamGeneral\":");
            c.a.y(sb, strS1, ",\"atlas_info\":", strZ4, ",\"Atlas\":");
            sb.append(strZ4);
            sb.append(",\"cmn\":");
            sb.append(strJ);
            sb.append("}");
            string = sb.toString();
        } else {
            string = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}";
        }
        return k0Var.n(string);
    }

    public final org.json.JSONObject i(java.lang.String str, java.util.Map map) {
        int iG = (int) com.sgscq.vpn.c7.g();
        com.sgscq.vpn.handler.k0 k0Var = this.f797a;
        return k0Var.f904d.t(iG, k0Var.i(k0Var.c(), "user_gold", map), k0Var.i(k0Var.b(), "user_energy", map), k0Var.i(k0Var.d(), "user_power", map), k0Var.j(k0Var.a(), map), str, map);
    }
}
