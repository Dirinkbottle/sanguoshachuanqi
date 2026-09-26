package com.sgscq.vpn.handler;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.a7;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.m4;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.y1;
import com.sgscq.vpn.z2;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Type f796b = new TypeToken<Map<String, Object>>() { // from class: com.sgscq.vpn.handler.AuthHandler$1
    }.getType();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f797a;

    public d(k0 k0Var) {
        this.f797a = k0Var;
    }

    public static void a(ArrayList arrayList, Map map) {
        String strValueOf = String.valueOf(map.getOrDefault("pk_id", ""));
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Map map2 = (Map) arrayList.get(i2);
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

    public static void b(Map map, ArrayList arrayList, String str, int i2) {
        Map map2;
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                Iterator it2 = w1.f0("Item", map).iterator();
                do {
                    if (!it2.hasNext()) {
                        map2 = null;
                        break;
                    }
                    map2 = (Map) it2.next();
                } while (!c.a.C(map2, "id", "", "item_id", str));
            } else {
                map2 = (Map) it.next();
            }
        } while (!c.a.C(map2, "id", "", "item_id", str));
        if (map2 == null) {
            a(arrayList, p5.z0("pk_id", String.valueOf(w1.e2("Item", map)), "id", str, "item_id", str, "num", Integer.valueOf(Math.max(1, i2)), "item_num", Integer.valueOf(Math.max(1, i2)), "item_type", 1, "type", 1, "is_new", Boolean.TRUE));
            return;
        }
        int iMax = Math.max(1, i2) + Math.max(0, w1.l2(String.valueOf(map2.getOrDefault("item_num", map2.getOrDefault("num", "0"))), 0));
        map2.put("id", str);
        map2.put("item_id", str);
        map2.put("num", Integer.valueOf(iMax));
        map2.put("item_num", Integer.valueOf(iMax));
        map2.put("item_type", 1);
        map2.put("type", 1);
        map2.put("is_new", Boolean.TRUE);
        a(arrayList, map2);
    }

    public static String h(String str, Map map) {
        String str2;
        return (map == null || (str2 = (String) map.get(str)) == null) ? "" : str2;
    }

    public static boolean j(w1 w1Var, Map map) {
        try {
            return com.sgscq.vpn.cloud.m0.u2(map, w1Var.V1()).f745a;
        } catch (RuntimeException e2) {
            z2.g("SGSCQ_SRV", "[Auth] soul repair skipped: " + e2.getMessage());
            return false;
        }
    }

    public static boolean k(Object obj) {
        int iIntValue;
        int iIntValue2;
        boolean zK = false;
        if (!(obj instanceof Map)) {
            if (obj instanceof List) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    zK |= k(it.next());
                }
            }
            return zK;
        }
        Map map = (Map) obj;
        Object obj2 = map.get("advanced_level");
        if (obj2 != null) {
            Object obj3 = map.get("magic_advanced_level_bonus");
            if (obj3 instanceof Number) {
                iIntValue = ((Number) obj3).intValue();
            } else if (obj3 == null) {
                iIntValue = 0;
            } else {
                try {
                    iIntValue = Integer.parseInt(String.valueOf(obj3));
                } catch (NumberFormatException unused) {
                    iIntValue = 0;
                }
            }
            int iMax = Math.max(0, iIntValue);
            if (obj2 instanceof Number) {
                iIntValue2 = ((Number) obj2).intValue();
            } else {
                try {
                    iIntValue2 = Integer.parseInt(String.valueOf(obj2));
                } catch (NumberFormatException unused2) {
                    iIntValue2 = 0;
                }
            }
            if (iIntValue2 != iMax) {
                map.put("advanced_level", Integer.valueOf(iMax));
                zK = true;
            }
        }
        Iterator it2 = new ArrayList(map.values()).iterator();
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
    public final byte[] c(String str, Map map) {
        String str2;
        String str3;
        boolean z;
        String str4;
        boolean z2;
        ArrayList arrayList;
        boolean z3;
        String string;
        String string2;
        String string3;
        String str5;
        String str6;
        String str7;
        String str8;
        Object obj;
        Context context;
        String string4;
        StringBuilder sb;
        String str9;
        String strA;
        Map mapW0;
        HashSet hashSet;
        Object obj2;
        String str10;
        HashSet hashSet2;
        Object obj3;
        Iterator it;
        Object next;
        Map map2;
        Object obj4;
        HashSet hashSet3;
        a7 a7VarV1;
        Object obj5;
        String str11;
        String str12;
        StringBuilder sb2;
        Object obj6;
        Object obj7;
        Iterator it2;
        Object next2;
        int iF;
        String strI0;
        Map map3;
        Iterator it3;
        String str13;
        String str14;
        StringBuilder sb3;
        String strI1;
        long jG;
        ArrayList arrayList2;
        Map mapF1;
        long jR0;
        StringBuilder sb4;
        int i2;
        String strValueOf;
        JSONArray jSONArray;
        int i3;
        if (str == null) {
            return null;
        }
        if (!"account.index".equals(str)) {
            String str15 = "pk_id";
            if ("account.chgAccountInfo".equals(str)) {
                k0 k0Var = this.f797a;
                String strE = k0Var.e(map);
                Map mapW1 = k0Var.f904d.w0(strE);
                if (mapW1 == null) {
                    mapW1 = new LinkedHashMap();
                }
                String strH = h("mobile_num", map);
                if (strH.isEmpty()) {
                    strH = h("mobile", map);
                }
                if (strH.isEmpty()) {
                    strH = h("phone", map);
                }
                if (!strH.isEmpty()) {
                    mapW1.put("mobile_num", strH);
                    mapW1.put("mobile", strH);
                    mapW1.put("is_mobile", Boolean.TRUE);
                    mapW1.put("mobile_bind", 1);
                }
                Boolean bool = Boolean.TRUE;
                LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]), "cmn_modules", "Player");
                k0Var.f904d.S0(strE, mapW1);
                JSONObject jSONObjectT = k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", mapW1), k0Var.i(k0Var.b(), "user_energy", mapW1), k0Var.i(k0Var.d(), "user_power", mapW1), k0Var.j(k0Var.a(), mapW1), strE, mapW1);
                String strJ = k0Var.f904d.j(mapW1, jSONObjectT, new String[0]);
                linkedHashMapZ0.put("user_info", p5.u1(jSONObjectT.toString()));
                linkedHashMapZ0.put("cmn", p5.u1(strJ));
                return k0Var.n(p5.s1(linkedHashMapZ0));
            }
            if ("account.bindWithBf".equals(str) || "account.bindWithFacebook".equals(str) || "account.bindWithEasysdk".equals(str)) {
                k0 k0Var2 = this.f797a;
                String strE2 = k0Var2.e(map);
                Map mapW2 = k0Var2.f904d.w0(strE2);
                if (mapW2 == null) {
                    mapW2 = new LinkedHashMap();
                }
                String str16 = "account.bindWithFacebook".equals(str) ? "facebook" : "account.bindWithEasysdk".equals(str) ? "easy" : "bf";
                String strH2 = h("uid", map);
                if ("easy".equals(str16) && strH2.isEmpty()) {
                    strH2 = h("easy_uid", map);
                }
                String strH3 = h("sessionId", map);
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
                Boolean bool2 = Boolean.TRUE;
                LinkedHashMap linkedHashMapZ1 = p5.z0("ret", 0, "code", 0, "result", bool2, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool2, "provider", str16), "cmn_modules", "Player");
                k0Var2.f904d.S0(strE2, mapW2);
                JSONObject jSONObjectI = i(strE2, mapW2);
                linkedHashMapZ1.put("user_info", p5.u1(jSONObjectI.toString()));
                linkedHashMapZ1.put("cmn", p5.u1(k0Var2.f904d.j(mapW2, jSONObjectI, new String[0])));
                return k0Var2.n(p5.s1(linkedHashMapZ1));
            }
            if ("user.login".equals(str) || "user.testLogin".equals(str) || "login".equals(str)) {
                return f(map);
            }
            if ("user.getPushData".equals(str)) {
                String strE3 = this.f797a.e(map);
                Map mapW3 = this.f797a.f904d.w0(strE3);
                boolean z4 = mapW3 != null && c.P(mapW3);
                j jVarM = m.m(mapW3);
                if (z4 | jVarM.f882b) {
                    this.f797a.f904d.S0(strE3, mapW3);
                }
                int iG = (int) c7.g();
                k0 k0Var3 = this.f797a;
                long j2 = k0Var3.j(k0Var3.a(), mapW3);
                k0 k0Var4 = this.f797a;
                int i4 = k0Var4.i(k0Var4.c(), "user_gold", mapW3);
                k0 k0Var5 = this.f797a;
                int i5 = k0Var5.i(k0Var5.b(), "user_energy", mapW3);
                k0 k0Var6 = this.f797a;
                JSONObject jSONObjectT2 = this.f797a.f904d.t(iG, i4, i5, k0Var6.i(k0Var6.d(), "user_power", mapW3), j2, strE3, mapW3);
                String strJ2 = jVarM.f882b ? this.f797a.f904d.j(mapW3, jSONObjectT2, (String[]) ((Set) jVarM.f884d).toArray(new String[0])) : this.f797a.f904d.j(mapW3, jSONObjectT2, new String[0]);
                this.f797a.f904d.getClass();
                String strV = h5.v(mapW3);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                a.o oVar = new a.o();
                Type type = f796b;
                linkedHashMap.put("pushData", oVar.e(strV, type));
                ArrayList arrayListE = c.e(c7.f(), mapW3);
                linkedHashMap.put("activity_list", arrayListE);
                Object obj8 = linkedHashMap.get("pushData");
                LinkedHashMap linkedHashMap2 = obj8 instanceof Map ? new LinkedHashMap((Map) obj8) : new LinkedHashMap();
                linkedHashMap2.put("party", arrayListE);
                linkedHashMap.put("pushData", linkedHashMap2);
                Object obj9 = linkedHashMap.get("pushData");
                Map linkedHashMap3 = obj9 instanceof Map ? (Map) obj9 : new LinkedHashMap();
                Map linkedHashMap4 = (Map) new a.o().e(strJ2, type);
                if (linkedHashMap4 == null) {
                    linkedHashMap4 = new LinkedHashMap();
                }
                Object obj10 = linkedHashMap4.get("push");
                LinkedHashMap linkedHashMap5 = obj10 instanceof Map ? new LinkedHashMap((Map) obj10) : new LinkedHashMap();
                linkedHashMap5.put("party", new ArrayList(c.e(c7.f(), mapW3)));
                if (linkedHashMap3 == null) {
                    linkedHashMap3 = c.g(mapW3, c7.f(), c7.f254i);
                }
                linkedHashMap5.put("gamble", linkedHashMap3.get("gamble"));
                linkedHashMap5.put("timing_power", linkedHashMap3.get("timing_power"));
                linkedHashMap5.put("training", p5.z0("num", Integer.valueOf(com.sgscq.vpn.cloud.m0.O(c7.g(), "0", mapW3).size()), new Object[0]));
                linkedHashMap4.put("push", linkedHashMap5);
                String strS1 = p5.s1(linkedHashMap4);
                String strS2 = p5.s1(linkedHashMap.get("pushData"));
                String strS3 = p5.s1(linkedHashMap.get("activity_list"));
                this.f797a.f904d.getClass();
                String strS4 = p5.s1(h5.w(h5.k0(mapW3)));
                StringBuilder sbL = c.a.l("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"activity_list\":", strS3, ",\"pushData\":", strS2, ",\"push_info\":");
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
                String str17 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}";
                if ("user.chgSign".equals(str)) {
                    k0 k0Var7 = this.f797a;
                    String strE4 = k0Var7.e(map);
                    String str18 = (String) map.getOrDefault("sign", (String) map.getOrDefault("user_sign", ""));
                    Map mapW4 = k0Var7.f904d.w0(strE4);
                    if (mapW4 != null) {
                        mapW4.put("user_sign", str18);
                        k0Var7.f904d.S0(strE4, mapW4);
                        JSONObject jSONObjectT3 = k0Var7.f904d.t((int) c7.g(), k0Var7.i(k0Var7.c(), "user_gold", mapW4), k0Var7.i(k0Var7.b(), "user_energy", mapW4), k0Var7.i(k0Var7.d(), "user_power", mapW4), k0Var7.j(k0Var7.a(), mapW4), strE4, mapW4);
                        str17 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_sign\":\"" + p5.M(str18) + "\",\"sign\":\"" + p5.M(str18) + "\",\"user_info\":" + jSONObjectT3.toString() + ",\"cmn\":" + k0Var7.f904d.j(mapW4, jSONObjectT3, new String[0]) + "}";
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
                k0 k0Var8 = this.f797a;
                String strE5 = k0Var8.e(map);
                String str19 = (String) map.getOrDefault("general_skin", "");
                Map mapW5 = k0Var8.f904d.w0(strE5);
                if (mapW5 != null && !str19.isEmpty()) {
                    mapW5.put("general_skin", str19);
                    k0Var8.f904d.S0(strE5, mapW5);
                    JSONObject jSONObjectT4 = k0Var8.f904d.t((int) c7.g(), k0Var8.i(k0Var8.c(), "user_gold", mapW5), k0Var8.i(k0Var8.b(), "user_energy", mapW5), k0Var8.i(k0Var8.d(), "user_power", mapW5), k0Var8.j(k0Var8.a(), mapW5), strE5, mapW5);
                    str17 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"general_skin\":\"" + p5.M(str19) + "\",\"user_general_skin\":\"" + p5.M(str19) + "\",\"user_info\":" + jSONObjectT4.toString() + ",\"cmn\":" + k0Var8.f904d.j(mapW5, jSONObjectT4, new String[0]) + "}";
                }
                return k0Var8.n(str17);
            }
            k0 k0Var9 = this.f797a;
            String strE6 = k0Var9.e(map);
            String str20 = (String) map.getOrDefault("general_id", "");
            if (str20.isEmpty()) {
                string3 = "{\"error_code\":-1,\"ret\":-1,\"code\":-1,\"result\":false,\"msg\":\"缺少武将编号\"}";
            } else {
                Map mapW6 = k0Var9.f904d.w0(strE6);
                if (mapW6 == null) {
                    string3 = "{\"error_code\":-1,\"ret\":-1,\"code\":-1,\"result\":false,\"msg\":\"玩家数据不存在\"}";
                } else {
                    w1 w1VarA1 = w1.a1(k0Var9.f901a);
                    w1VarA1.R0(str20);
                    mapW6.put("first_choose_general", str20);
                    HashMap mapY1 = w1VarA1.Y1(str20);
                    mapY1.put("general_status", "1");
                    mapY1.put("status", "1");
                    HashMap mapZ1 = w1VarA1.Z1(str20);
                    String str21 = "General";
                    Map map4 = (Map) mapW6.getOrDefault(str21, p5.z0("del", new ArrayList(), "add", new ArrayList(), "upd", new ArrayList()));
                    List list = (List) map4.getOrDefault("add", new ArrayList());
                    Iterator it4 = list.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            str2 = strE6;
                            str3 = str15;
                            z = false;
                            break;
                        }
                        str2 = strE6;
                        str3 = str15;
                        if (c.a.B((Map) it4.next(), str3, "", str20)) {
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
                    Map map5 = (Map) mapW6.getOrDefault("Skill", p5.z0("del", new ArrayList(), "add", new ArrayList(), "upd", new ArrayList()));
                    List list2 = (List) map5.getOrDefault("add", new ArrayList());
                    Iterator it5 = list2.iterator();
                    while (true) {
                        if (!it5.hasNext()) {
                            str4 = str21;
                            z2 = false;
                            break;
                        }
                        str4 = str21;
                        if (c.a.B((Map) it5.next(), str3, "", str20)) {
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
                    ArrayList arrayList3 = new ArrayList();
                    w1.b2("general_id", str20, arrayList3, mapW6);
                    w1.b2("skill_id", w1VarA1.T0(str20), arrayList3, mapW6);
                    HashMap mapA2 = w1VarA1.a2(str20, 1);
                    Map map6 = (Map) mapW6.getOrDefault("TeamGeneral", p5.z0("del", new ArrayList(), "add", new ArrayList(), "upd", new ArrayList()));
                    List list3 = (List) map6.getOrDefault("add", new ArrayList());
                    Iterator it6 = list3.iterator();
                    while (true) {
                        if (!it6.hasNext()) {
                            arrayList = arrayList3;
                            z3 = false;
                            break;
                        }
                        arrayList = arrayList3;
                        if (c.a.B((Map) it6.next(), str3, "", str20)) {
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
                    String str22 = str2;
                    com.sgscq.vpn.cloud.m0.Y1(str22, mapW6, map, k0Var9.f903c);
                    k0Var9.f904d.S0(str22, mapW6);
                    JSONObject jSONObjectT5 = k0Var9.f904d.t((int) c7.g(), k0Var9.i(k0Var9.c(), "user_gold", mapW6), k0Var9.i(k0Var9.b(), "user_energy", mapW6), k0Var9.i(k0Var9.d(), "user_power", mapW6), k0Var9.j(k0Var9.a(), mapW6), str22, mapW6);
                    try {
                        jSONObjectT5.put("first_choose_general", str20);
                    } catch (Exception unused) {
                    }
                    StringBuilder sb5 = new StringBuilder("{\"del\":[],\"add\":[");
                    k0Var9.f904d.getClass();
                    try {
                        string = new JSONObject(mapY1).toString();
                    } catch (Exception unused2) {
                        string = "{}";
                    }
                    sb5.append(string);
                    sb5.append("],\"upd\":[]}");
                    String string5 = sb5.toString();
                    StringBuilder sb6 = new StringBuilder("{\"del\":[],\"add\":[");
                    k0Var9.f904d.getClass();
                    try {
                        string2 = new JSONObject(mapZ1).toString();
                    } catch (Exception unused3) {
                        string2 = "{}";
                    }
                    sb6.append(string2);
                    sb6.append("],\"upd\":[]}");
                    String string6 = sb6.toString();
                    h5 h5Var = k0Var9.f904d;
                    HashMap map7 = new HashMap(mapW6);
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(mapY1);
                    ArrayList arrayList5 = new ArrayList();
                    arrayList5.add(mapZ1);
                    ArrayList arrayList6 = new ArrayList();
                    Object[] objArr = {"add", new ArrayList(), "upd", arrayList4};
                    String str23 = str4;
                    map7.put("Skill", p5.z0("del", c.a.m("del", arrayList6, objArr, map7, str23), "add", new ArrayList(), "upd", arrayList5));
                    ArrayList arrayList7 = new ArrayList();
                    h5Var.getClass();
                    map7.put("Atlas", p5.z0("del", c.a.m("del", arrayList7, new Object[]{"add", h5.h0(mapW6), "upd", new ArrayList()}, map7, "TeamGeneral"), "add", new ArrayList(), "upd", arrayList));
                    String strJ3 = k0Var9.f904d.j(map7, jSONObjectT5, str23, "Skill", "TeamGeneral", "Atlas");
                    k0Var9.f904d.getClass();
                    String strB0 = h5.B0("Equipment", mapW6);
                    k0Var9.f904d.getClass();
                    String strB1 = h5.B0("Item", mapW6);
                    String strS5 = p5.s1(k0Var9.f904d.j0(mapW6));
                    k0Var9.f904d.getClass();
                    String strB2 = h5.B0("Atlas", mapW6);
                    String str24 = "{\"toast\":[],\"list\":[],\"gold_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":100},\"silver_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":50},\"copper_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":20},\"need_times\":5,\"first_time_consume_gold\":" + (mapW6.containsKey("first_gold_wine") ? 1 : 0) + ",\"multi_price\":900,\"show_general_list\":" + k0Var9.f904d.D() + "}";
                    int iW0 = w1VarA1.W0();
                    StringBuilder sb7 = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":");
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
        k0 k0Var10 = this.f797a;
        h5 h5Var2 = k0Var10.f904d;
        String strE7 = k0Var10.e(map);
        h5Var2.getClass();
        Object obj11 = "pk_id";
        String str25 = "0";
        try {
            if ((strE7 == null || strE7.isEmpty()) && map != null && (((str5 = (String) map.get("uid")) == null || str5.isEmpty()) && ((str6 = (String) map.get("account_uid")) == null || str6.isEmpty()))) {
                str7 = "account_uid";
                String str26 = (String) map.get("user_id");
                if (str26 == null || str26.isEmpty()) {
                    String str27 = (String) map.get("token");
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
                        JSONObject jSONObject = new JSONObject((String) map.getOrDefault("data", "{}"));
                        String strOptString = jSONObject.has("extra") ? jSONObject.getJSONObject("extra").optString("uid", "") : jSONObject.optString("uid", "");
                        if (strOptString != null) {
                            strOptString.isEmpty();
                        }
                    } catch (Exception unused4) {
                    }
                }
                context = h5Var2.f738c;
                String strV2 = new m4(context).v();
                long jG2 = c7.g();
                StringBuilder sbB = a.b0.b("tok_", strV2, "_");
                sbB.append(jG2 % 100000);
                string4 = sbB.toString();
                SharedPreferences sharedPreferences = h5Var2.f739d;
                String string7 = sharedPreferences.getString("player_name", "玩家");
                sb = new StringBuilder();
                sb.append(p5.s1(p5.z0("server_id", "1", "server_title", "单机服务器", "server_url", "cqzx.sanguosha.com/sanguosha_account", "server_status", 1, "server_recommend", 1, "serverId", 1, "server_name", "单机服务器", "serverName", "单机服务器")));
                jSONArray = new JSONArray(sharedPreferences.getString("custom_servers", "[]"));
                i3 = 0;
                while (i3 < jSONArray.length()) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                    int i6 = i3 + 100;
                    JSONArray jSONArray2 = jSONArray;
                    sb.append(",{\"server_id\":\"");
                    sb.append(i6);
                    sb.append("\",\"server_title\":\"");
                    sb.append(p5.M(jSONObject2.getString("name")));
                    sb.append("\",\"server_url\":\"");
                    sb.append(jSONObject2.getString("host"));
                    sb.append(":");
                    sb.append(jSONObject2.getInt("port"));
                    sb.append("\",\"server_status\":1,\"server_recommend\":0");
                    sb.append(",\"serverId\":");
                    sb.append(i6);
                    sb.append(",\"server_name\":\"");
                    sb.append(p5.M(jSONObject2.getString("name")));
                    sb.append("\",\"serverName\":\"");
                    sb.append(p5.M(jSONObject2.getString("name")));
                    sb.append("\"}");
                    i3++;
                    jSONArray = jSONArray2;
                }
                str9 = "[";
                strA = l.a("[", h5.x(1, 1, strV2, string7), "]");
                mapW0 = h5Var2.w0(strV2);
                w1 w1VarZ0 = w1.Z0();
                if (mapW0 == null) {
                    hashSet2 = new HashSet();
                    str10 = string4;
                } else {
                    hashSet = new HashSet();
                    obj2 = mapW0.get("General");
                    if (obj2 instanceof Map) {
                        obj3 = ((Map) obj2).get("add");
                        if (obj3 instanceof List) {
                            it = ((List) obj3).iterator();
                            while (it.hasNext()) {
                                next = it.next();
                                it = it;
                                if (!(next instanceof Map)) {
                                    map2 = (Map) next;
                                    String str28 = string4;
                                    if (!Boolean.TRUE.equals(map2.get("story_guest")) && (obj4 = map2.get("general_id")) != null && !String.valueOf(obj4).isEmpty()) {
                                        hashSet.add(String.valueOf(obj4));
                                    }
                                    string4 = str28;
                                }
                            }
                        }
                    }
                    str10 = string4;
                    hashSet2 = hashSet;
                }
                hashSet3 = new HashSet();
                if (mapW0 == null) {
                    str11 = strA;
                    str12 = "[";
                    sb2 = sb;
                } else {
                    a7VarV1 = w1.a1(context).V1();
                    obj5 = mapW0.get("surrender_progress");
                    if (obj5 instanceof Map) {
                        map3 = (Map) obj5;
                        it3 = map3.keySet().iterator();
                        while (it3.hasNext()) {
                            it3 = it3;
                            str13 = (String) it3.next();
                            if (str13 == null) {
                                String str29 = strA;
                                if (str13.startsWith("claimed_")) {
                                    sb3 = sb;
                                    str14 = str9;
                                    if (!h5.V0(str13.substring(8), map3)) {
                                        strI1 = h5.I0(str13.substring(8));
                                        if (h5.T0(mapW0, a7VarV1, strI1)) {
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
                                if (!str13.startsWith("claimed_") && !h5.V0(str13, map3)) {
                                    strI1 = h5.I0(str13);
                                    if (h5.T0(mapW0, a7VarV1, strI1)) {
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
                    if (obj6 instanceof Map) {
                        obj7 = ((Map) obj6).get("add");
                        if (obj7 instanceof List) {
                            it2 = ((List) obj7).iterator();
                            while (it2.hasNext()) {
                                next2 = it2.next();
                                if (!(next2 instanceof Map)) {
                                    Map map8 = (Map) next2;
                                    String str30 = str25;
                                    iF = c.a.f(map8, "type", str30, 0);
                                    int iF2 = c.a.f(map8, "atlas_status", str30, 0);
                                    Iterator it7 = it2;
                                    Object obj12 = obj11;
                                    strI0 = h5.I0(map8.getOrDefault("general_id", map8.getOrDefault(obj12, "")));
                                    if (iF == 1 && iF2 == 2 && !strI0.isEmpty() && h5.T0(mapW0, a7VarV1, strI0)) {
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
                jG = c7.g();
                List<Map> listG1 = w1VarZ0.g1(jG);
                arrayList2 = new ArrayList();
                for (Map map9 : listG1) {
                    strValueOf = String.valueOf(map9.getOrDefault("general_id", ""));
                    if (hashSet2.contains(strValueOf) && !hashSet3.contains(strValueOf)) {
                        arrayList2.add(map9);
                    }
                }
                mapF1 = w1VarZ0.f1(jG, hashSet3);
                if (mapF1 != null && !hashSet2.contains(String.valueOf(mapF1.getOrDefault("general_id", "")))) {
                    mapF1 = null;
                }
                jR0 = w1VarZ0.r0(1000 * jG);
                if (jR0 > 0) {
                    jG += jR0;
                }
                sb4 = new StringBuilder("{\"limited_generals\":[");
                for (i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb4.append(",");
                    }
                    Map map10 = (Map) arrayList2.get(i2);
                    sb4.append("{\"general_id\":\"");
                    sb4.append(map10.get("general_id"));
                    sb4.append("\",\"general_name\":\"");
                    sb4.append(p5.M(String.valueOf(map10.get("general_name"))));
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
                    sb4.append(p5.M(String.valueOf(mapF1.get("general_name"))));
                    sb4.append("\",\"fighting\":\"");
                    sb4.append(mapF1.get("fighting"));
                    sb4.append("\"}");
                }
                sb4.append(",\"limited_next_refresh\":");
                sb4.append(jG);
                sb4.append(",\"limited_interval\":43200,\"limited_total\":");
                sb4.append(arrayList2.size());
                sb4.append("}");
                String string8 = sb4.toString();
                y1 y1Var = new y1();
                y1Var.e("error_code", 0);
                y1Var.e("ret", 0);
                y1Var.e("code", 0);
                y1Var.g("result", true);
                y1Var.f("msg", "success");
                y1 y1VarH = y1Var.h("account_info");
                y1VarH.f(str7, strV2);
                y1VarH.b();
                y1Var.f("addrServer", "cqzx.sanguosha.com/sanguosha_account");
                y1Var.i("server_list", str12 + sb2.toString() + "]");
                String str31 = str11;
                y1Var.i("server_logined_list", str31);
                y1Var.i("serverListLogined", str31);
                y1Var.i("loginedServerLists", str31);
                y1 y1VarH2 = y1Var.h("server_params");
                String str32 = str10;
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
            jSONArray = new JSONArray(sharedPreferences.getString("custom_servers", "[]"));
            i3 = 0;
            while (i3 < jSONArray.length()) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                int i7 = i3 + 100;
                JSONArray jSONArray3 = jSONArray;
                sb.append(",{\"server_id\":\"");
                sb.append(i7);
                sb.append("\",\"server_title\":\"");
                sb.append(p5.M(jSONObject3.getString("name")));
                sb.append("\",\"server_url\":\"");
                sb.append(jSONObject3.getString("host"));
                sb.append(":");
                sb.append(jSONObject3.getInt("port"));
                sb.append("\",\"server_status\":1,\"server_recommend\":0");
                sb.append(",\"serverId\":");
                sb.append(i7);
                sb.append(",\"server_name\":\"");
                sb.append(p5.M(jSONObject3.getString("name")));
                sb.append("\",\"serverName\":\"");
                sb.append(p5.M(jSONObject3.getString("name")));
                sb.append("\"}");
                i3++;
                jSONArray = jSONArray3;
            }
        } catch (Exception e2) {
            c.a.u(e2, new StringBuilder("Custom servers: "), "SGSCQ_SRV");
        }
        str8 = "token";
        obj = "Atlas";
        context = h5Var2.f738c;
        String strV3 = new m4(context).v();
        long jG3 = c7.g();
        StringBuilder sbB2 = a.b0.b("tok_", strV3, "_");
        sbB2.append(jG3 % 100000);
        string4 = sbB2.toString();
        SharedPreferences sharedPreferences2 = h5Var2.f739d;
        String string9 = sharedPreferences2.getString("player_name", "玩家");
        sb = new StringBuilder();
        sb.append(p5.s1(p5.z0("server_id", "1", "server_title", "单机服务器", "server_url", "cqzx.sanguosha.com/sanguosha_account", "server_status", 1, "server_recommend", 1, "serverId", 1, "server_name", "单机服务器", "serverName", "单机服务器")));
        str9 = "[";
        strA = l.a("[", h5.x(1, 1, strV3, string9), "]");
        mapW0 = h5Var2.w0(strV3);
        w1 w1VarZ1 = w1.Z0();
        if (mapW0 == null) {
            hashSet2 = new HashSet();
            str10 = string4;
        } else {
            hashSet = new HashSet();
            obj2 = mapW0.get("General");
            if (obj2 instanceof Map) {
                obj3 = ((Map) obj2).get("add");
                if (obj3 instanceof List) {
                    it = ((List) obj3).iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        it = it;
                        if (!(next instanceof Map)) {
                            map2 = (Map) next;
                            String str210 = string4;
                            if (!Boolean.TRUE.equals(map2.get("story_guest"))) {
                                hashSet.add(String.valueOf(obj4));
                            }
                            string4 = str210;
                        }
                    }
                }
            }
            str10 = string4;
            hashSet2 = hashSet;
        }
        hashSet3 = new HashSet();
        if (mapW0 == null) {
            str11 = strA;
            str12 = "[";
            sb2 = sb;
        } else {
            a7VarV1 = w1.a1(context).V1();
            obj5 = mapW0.get("surrender_progress");
            if (obj5 instanceof Map) {
                map3 = (Map) obj5;
                it3 = map3.keySet().iterator();
                while (it3.hasNext()) {
                    it3 = it3;
                    str13 = (String) it3.next();
                    if (str13 == null) {
                        String str211 = strA;
                        if (str13.startsWith("claimed_")) {
                            sb3 = sb;
                            str14 = str9;
                            if (!h5.V0(str13.substring(8), map3)) {
                                strI1 = h5.I0(str13.substring(8));
                                if (h5.T0(mapW0, a7VarV1, strI1)) {
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
                            strI1 = h5.I0(str13);
                            if (h5.T0(mapW0, a7VarV1, strI1)) {
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
            if (obj6 instanceof Map) {
                obj7 = ((Map) obj6).get("add");
                if (obj7 instanceof List) {
                    it2 = ((List) obj7).iterator();
                    while (it2.hasNext()) {
                        next2 = it2.next();
                        if (!(next2 instanceof Map)) {
                            Map map11 = (Map) next2;
                            String str33 = str25;
                            iF = c.a.f(map11, "type", str33, 0);
                            int iF3 = c.a.f(map11, "atlas_status", str33, 0);
                            Iterator it8 = it2;
                            Object obj13 = obj11;
                            strI0 = h5.I0(map11.getOrDefault("general_id", map11.getOrDefault(obj13, "")));
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
        jG = c7.g();
        List<Map> listG2 = w1VarZ1.g1(jG);
        arrayList2 = new ArrayList();
        while (r2.hasNext()) {
            strValueOf = String.valueOf(map9.getOrDefault("general_id", ""));
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
        sb4 = new StringBuilder("{\"limited_generals\":[");
        while (i2 < arrayList2.size()) {
            if (i2 > 0) {
                sb4.append(",");
            }
            Map map12 = (Map) arrayList2.get(i2);
            sb4.append("{\"general_id\":\"");
            sb4.append(map12.get("general_id"));
            sb4.append("\",\"general_name\":\"");
            sb4.append(p5.M(String.valueOf(map12.get("general_name"))));
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
            sb4.append(p5.M(String.valueOf(mapF1.get("general_name"))));
            sb4.append("\",\"fighting\":\"");
            sb4.append(mapF1.get("fighting"));
            sb4.append("\"}");
        }
        sb4.append(",\"limited_next_refresh\":");
        sb4.append(jG);
        sb4.append(",\"limited_interval\":43200,\"limited_total\":");
        sb4.append(arrayList2.size());
        sb4.append("}");
        String string10 = sb4.toString();
        y1 y1Var2 = new y1();
        y1Var2.e("error_code", 0);
        y1Var2.e("ret", 0);
        y1Var2.e("code", 0);
        y1Var2.g("result", true);
        y1Var2.f("msg", "success");
        y1 y1VarH3 = y1Var2.h("account_info");
        y1VarH3.f(str7, strV3);
        y1VarH3.b();
        y1Var2.f("addrServer", "cqzx.sanguosha.com/sanguosha_account");
        y1Var2.i("server_list", str12 + sb2.toString() + "]");
        String str34 = str11;
        y1Var2.i("server_logined_list", str34);
        y1Var2.i("serverListLogined", str34);
        y1Var2.i("loginedServerLists", str34);
        y1 y1VarH4 = y1Var2.h("server_params");
        String str35 = str10;
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
    public final byte[] d(Map map) {
        String string;
        String str;
        String str2;
        Map map2;
        Map map3;
        k0 k0Var = this.f797a;
        String strE = k0Var.e(map);
        String str3 = (String) map.getOrDefault("nickname", "");
        h5 h5Var = k0Var.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null || str3.isEmpty()) {
            string = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}";
        } else {
            mapW0.put("user_nickname", str3);
            com.sgscq.vpn.cloud.m0.Y1(strE, mapW0, map, k0Var.f903c);
            h5Var.S0(strE, mapW0);
            JSONObject jSONObjectT = k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", mapW0), k0Var.i(k0Var.b(), "user_energy", mapW0), k0Var.i(k0Var.d(), "user_power", mapW0), k0Var.j(k0Var.a(), mapW0), strE, mapW0);
            String str4 = "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_nickname\":\"";
            if (!"0".equals(String.valueOf(mapW0.getOrDefault("first_wine_general", "0")))) {
                return k0Var.n("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_nickname\":\"" + p5.M(str3) + "\",\"nickname\":\"" + p5.M(str3) + "\",\"user_info\":" + jSONObjectT.toString() + ",\"cmn\":" + h5Var.j(mapW0, jSONObjectT, new String[0]) + "}");
            }
            HashMap map4 = new HashMap(mapW0);
            map4.put("Skill", p5.z0("del", c.a.m("del", new ArrayList(), new Object[]{"add", new ArrayList(), "upd", new ArrayList(w1.f0("General", mapW0))}, map4, "General"), "add", new ArrayList(), "upd", new ArrayList(w1.f0("Skill", mapW0))));
            ArrayList arrayList = new ArrayList();
            h5Var.getClass();
            ArrayList arrayListM = c.a.m("del", arrayList, new Object[]{"add", h5.h0(mapW0), "upd", new ArrayList()}, map4, "TeamGeneral");
            Iterator it = w1.f0("Item", mapW0).iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = str4;
                    str2 = str3;
                    map2 = mapW0;
                    map3 = null;
                    break;
                }
                Iterator it2 = it;
                map3 = (Map) it.next();
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
            map4.put("Item", p5.z0("del", new ArrayList(), "add", new ArrayList(), "upd", arrayListM));
            String strJ = h5Var.j(map4, jSONObjectT, "General", "Skill", "TeamGeneral", "Item");
            h5Var.getClass();
            String strZ0 = h5.z0("General", map4);
            h5Var.getClass();
            String strZ1 = h5.z0("Skill", map4);
            Map map5 = map2;
            String strS1 = p5.s1(h5Var.j0(map5));
            h5Var.getClass();
            String strZ2 = h5.z0("Item", map4);
            String strValueOf = String.valueOf(map5.getOrDefault("user_map_step", ""));
            h5Var.getClass();
            String strH0 = h5.H0(strValueOf);
            if (strH0.isEmpty()) {
                strH0 = h5Var.Z();
            }
            String strO = h5Var.o(strH0, map5, strH0.startsWith("105"));
            StringBuilder sb = new StringBuilder(str);
            sb.append(p5.M(str2));
            sb.append("\",\"nickname\":\"");
            sb.append(p5.M(str2));
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

    public final byte[] e(Map map) {
        k0 k0Var = this.f797a;
        String strE = k0Var.e(map);
        h5 h5Var = k0Var.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        String strH = h("message", map);
        if (strH.isEmpty()) {
            strH = h("content", map);
        }
        if (strH.isEmpty()) {
            strH = h("msg", map);
        }
        mapW0.put("last_leave_msg", strH);
        mapW0.put("leave_msg_count", Integer.valueOf(w1.l2(String.valueOf(mapW0.getOrDefault("leave_msg_count", "0")), 0) + 1));
        mapW0.put("leave_msg_time", Long.valueOf(c7.g()));
        Boolean bool = Boolean.TRUE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", 0, "code", 0, "result", bool, "msg", "success", "error_code", 0, "return_info", p5.z0("result", bool, new Object[0]), "cmn_modules", "Player");
        h5Var.S0(strE, mapW0);
        JSONObject jSONObjectI = i(strE, mapW0);
        linkedHashMapZ0.put("user_info", p5.u1(jSONObjectI.toString()));
        linkedHashMapZ0.put("cmn", p5.u1(h5Var.j(mapW0, jSONObjectI, new String[0])));
        return k0Var.n(p5.s1(linkedHashMapZ0));
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

    public final byte[] g(Map map) {
        String string;
        k0 k0Var = this.f797a;
        String strE = k0Var.e(map);
        h5 h5Var = k0Var.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 != null) {
            if (map != null) {
                String str = (String) map.get("user_nickname");
                if (str != null && !str.isEmpty()) {
                    mapW0.put("user_nickname", str);
                }
                String str2 = (String) map.get("user_sign");
                if (str2 != null) {
                    mapW0.put("user_sign", str2);
                }
                String str3 = (String) map.get("headIcon");
                if (str3 != null) {
                    try {
                        mapW0.put("headIcon", Integer.valueOf(Integer.parseInt(str3)));
                    } catch (NumberFormatException unused) {
                        mapW0.put("headIcon", str3);
                    }
                }
            }
            boolean zContainsKey = map.containsKey("freshman_step");
            SharedPreferences sharedPreferences = k0Var.f903c;
            if (zContainsKey || map.containsKey("server_step") || map.containsKey("guide_step") || map.containsKey("step")) {
                com.sgscq.vpn.cloud.m0.Y1(strE, mapW0, map, sharedPreferences);
            }
            String str4 = (String) map.get("guide_completed");
            if (str4 != null) {
                mapW0.put("guide_completed", Boolean.valueOf("true".equalsIgnoreCase(str4)));
                sharedPreferences.edit().putBoolean(l.a("guide_", strE, "_guide_completed"), "true".equalsIgnoreCase(str4)).apply();
            }
            h5Var.S0(strE, mapW0);
            JSONObject jSONObjectT = k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", mapW0), k0Var.i(k0Var.b(), "user_energy", mapW0), k0Var.i(k0Var.d(), "user_power", mapW0), k0Var.j(k0Var.a(), mapW0), strE, mapW0);
            String strJ = h5Var.j(mapW0, jSONObjectT, new String[0]);
            h5Var.getClass();
            String strZ0 = h5.z0("General", mapW0);
            h5Var.getClass();
            String strZ1 = h5.z0("Skill", mapW0);
            h5Var.getClass();
            String strZ2 = h5.z0("Equipment", mapW0);
            h5Var.getClass();
            String strZ3 = h5.z0("Item", mapW0);
            String strS1 = p5.s1(h5Var.j0(mapW0));
            h5Var.getClass();
            String strZ4 = h5.z0("Atlas", mapW0);
            int iW0 = w1.a1(k0Var.f901a).W0();
            StringBuilder sb = new StringBuilder("{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":");
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

    public final JSONObject i(String str, Map map) {
        int iG = (int) c7.g();
        k0 k0Var = this.f797a;
        return k0Var.f904d.t(iG, k0Var.i(k0Var.c(), "user_gold", map), k0Var.i(k0Var.b(), "user_energy", map), k0Var.i(k0Var.d(), "user_power", map), k0Var.j(k0Var.a(), map), str, map);
    }
}
