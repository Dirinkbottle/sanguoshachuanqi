package c;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AtomicFile;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import com.sgscq.vpn.cloud.n0;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.handler.j0;
import com.sgscq.vpn.handler.k0;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.z2;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class e implements t, p.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f38a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f39b;

    public e(int i2, Context context) {
        if (i2 == 5) {
            Context applicationContext = context.getApplicationContext();
            this.f38a = applicationContext;
            this.f39b = applicationContext.getSharedPreferences("sgscq_cloud_passport_owner_v1", 0);
        } else if (i2 != 10) {
            this.f38a = context.getApplicationContext().getSharedPreferences("sgscq_cloud_opponent_usage_v1", 0);
            this.f39b = "release";
        } else {
            this.f38a = new File(context.getFilesDir(), "limited_schedule.bin");
            this.f39b = context.getSharedPreferences("sgscq_limited_schedule", 0);
        }
    }

    public static String B(Map map) {
        return String.valueOf(map.get("union_id")) + '|' + String.valueOf(map.get("union_name")) + '|' + String.valueOf(map.get("union_level")) + '|' + String.valueOf(map.get("union_exp")) + '|' + String.valueOf(map.get("union_notice")) + '|' + String.valueOf(map.get("union_sign")) + '|' + String.valueOf(map.get("user_role")) + '|' + String.valueOf(map.get("union_donate_num")) + '|' + String.valueOf(map.get("union_today_donate")) + '|' + String.valueOf(map.get("union_today_donate_type"));
    }

    public static LinkedHashMap C(com.sgscq.vpn.cloud.g gVar, ArrayList arrayList) {
        ArrayList arrayList2;
        Object obj = gVar.f337c;
        com.sgscq.vpn.cloud.m mVar = (com.sgscq.vpn.cloud.m) obj;
        Object obj2 = gVar.f338d;
        int i2 = (mVar == null || ((com.sgscq.vpn.cloud.o) obj2) == null) ? 0 : 1;
        LinkedHashMap linkedHashMapJ = m.e.J(i2 != 0 ? (com.sgscq.vpn.cloud.m) obj : null);
        ArrayList arrayListL = m.e.L(arrayList);
        Integer numValueOf = Integer.valueOf(i2);
        Object[] objArr = new Object[8];
        objArr[0] = "user_role";
        objArr[1] = Integer.valueOf(i2 != 0 ? ((com.sgscq.vpn.cloud.o) obj2).f436a : 0);
        objArr[2] = "union_info";
        objArr[3] = linkedHashMapJ;
        objArr[4] = "union_log";
        if (i2 != 0) {
            arrayList2 = new ArrayList();
            arrayList2.add(p5.z0("content", "union_log_welcome", new Object[0]));
        } else {
            arrayList2 = new ArrayList();
        }
        objArr[5] = arrayList2;
        objArr[6] = "union_list";
        objArr[7] = arrayListL;
        LinkedHashMap linkedHashMapZ0 = p5.z0("has_joined", numValueOf, objArr);
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("return_info", linkedHashMapZ0);
        linkedHashMapJ0.put("union_info", linkedHashMapJ);
        linkedHashMapJ0.put("union_log", linkedHashMapZ0.get("union_log"));
        linkedHashMapJ0.put("union_list", arrayListL);
        return linkedHashMapJ0;
    }

    public static String[] D(LinkedHashMap linkedHashMap) {
        String[] strArrSplit = String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",");
        ArrayList arrayList = new ArrayList();
        for (String str : strArrSplit) {
            String strTrim = str.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static ArrayList E() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("pk_id", "1", "id", "600001", "item_id", "600001", "num", 1));
        return arrayList;
    }

    public static ArrayList G() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("data_id", 1, "type", 1, "num", 100000000, "exp", 1, "donate", 10));
        arrayList.add(p5.z0("data_id", 2, "type", 2, "num", 500, "exp", 5, "donate", 500));
        arrayList.add(p5.z0("data_id", 3, "type", 2, "num", 2500, "exp", 25, "donate", 2500));
        return arrayList;
    }

    public static LinkedHashMap H(String str) {
        if ("union.rankList".equals(str)) {
            return r0(new ArrayList(), "rank_list");
        }
        if ("union.userList".equals(str)) {
            return r0(new ArrayList(), "user_list");
        }
        if (!"union.applyList".equals(str)) {
            return C(new com.sgscq.vpn.cloud.g(), new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("return_info", arrayList);
        linkedHashMapJ0.put("apply_list", arrayList);
        return linkedHashMapJ0;
    }

    public static LinkedHashMap I(String str) {
        return p5.z0("ret", -1, "code", -1, "result", Boolean.FALSE, "msg", str, "error_code", -1);
    }

    public static boolean J(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        String strValueOf = String.valueOf(obj);
        return "1".equals(strValueOf) || "true".equalsIgnoreCase(strValueOf);
    }

    public static LinkedHashMap K(Map map, String str, Object obj, Object obj2) {
        String strValueOf = obj == null ? "1" : String.valueOf(obj);
        String strValueOf2 = obj2 != null ? String.valueOf(obj2) : "1";
        Object obj3 = map.get("union_war_formations");
        if (obj3 instanceof Map) {
            Object obj4 = ((Map) obj3).get(str);
            if (obj4 instanceof Map) {
                Map map2 = (Map) obj4;
                Object obj5 = map2.get("battle_id");
                Object obj6 = map2.get("pos");
                if (obj5 != null) {
                    strValueOf = String.valueOf(obj5);
                }
                if (obj6 != null) {
                    strValueOf2 = String.valueOf(obj6);
                }
            }
        }
        return L(strValueOf, strValueOf2);
    }

    public static LinkedHashMap L(String str, String str2) {
        return a.r("battle_id", str, "pos", str2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0053  */
    /* JADX WARN: Code duplicated, block: B:18:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0074  */
    /* JADX WARN: Code duplicated, block: B:26:0x007f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x0059 A[SYNTHETIC] */
    public static e M(int i2, String str, Map map) {
        Map mapZ0;
        Map mapE1;
        Iterator it;
        Object next;
        Map mapC1 = w1.a1(null).c1(str);
        if (mapC1 == null || h0(mapC1.get("item_type")) != 21) {
            String str2 = (String) j0.f886b.get(str);
            mapZ0 = str2 != null ? p5.z0("type", 7, "id", str2, "num", 1) : null;
        } else {
            Object obj = mapC1.get("effect_value");
            if (obj instanceof Map) {
                Object obj2 = ((Map) obj).get("add_list");
                if (obj2 instanceof Map) {
                    mapZ0 = (Map) obj2;
                    if (h0(mapZ0.get("type")) != 7) {
                        if (obj2 instanceof List) {
                            it = ((List) obj2).iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    next = it.next();
                                    if (next instanceof Map) {
                                        mapZ0 = (Map) next;
                                        if (h0(mapZ0.get("type")) == 7) {
                                        }
                                    }
                                } else {
                                    String str3 = (String) j0.f886b.get(str);
                                    mapZ0 = str3 != null ? p5.z0("type", 7, "id", str3, "num", 1) : null;
                                }
                            }
                        } else {
                            String str4 = (String) j0.f886b.get(str);
                            mapZ0 = str4 != null ? p5.z0("type", 7, "id", str4, "num", 1) : null;
                        }
                    }
                } else if (obj2 instanceof List) {
                    it = ((List) obj2).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            next = it.next();
                            if (next instanceof Map) {
                                mapZ0 = (Map) next;
                                if (h0(mapZ0.get("type")) == 7) {
                                }
                            }
                        } else {
                            String str5 = (String) j0.f886b.get(str);
                            mapZ0 = str5 != null ? p5.z0("type", 7, "id", str5, "num", 1) : null;
                        }
                    }
                } else {
                    String str6 = (String) j0.f886b.get(str);
                    mapZ0 = str6 != null ? p5.z0("type", 7, "id", str6, "num", 1) : null;
                }
            } else {
                String str7 = (String) j0.f886b.get(str);
                mapZ0 = str7 != null ? p5.z0("type", 7, "id", str7, "num", 1) : null;
            }
        }
        if (mapZ0 != null) {
            String strValueOf = String.valueOf(mapZ0.get("id"));
            int iMax = Math.max(1, h0(mapZ0.get("num"))) * i2;
            String str8 = "SkillPiece";
            List<Map> listF0 = w1.f0("SkillPiece", map);
            for (Map mapZ1 : listF0) {
                if (a.C(mapZ1, "id", "", "skill_id", strValueOf)) {
                    int iH0 = h0(mapZ1.getOrDefault("num", mapZ1.get("skill_piece_num"))) + iMax;
                    a.t(iH0, mapZ1, "num", iH0, "skill_piece_num");
                    p0(listF0, map, mapZ1);
                    return new e((Serializable) p5.v0(p5.z0("type", 7, "id", strValueOf, "skill_id", strValueOf, "num", Integer.valueOf(iMax), "pk_id", mapZ1.get("pk_id"), "skill_piece_num", Integer.valueOf(iMax))), str8);
                }
            }
            mapZ1 = p5.z0("pk_id", strValueOf, "id", strValueOf, "skill_id", strValueOf, "num", Integer.valueOf(iMax), "skill_piece_num", Integer.valueOf(iMax));
            listF0.add(mapZ1);
            p0(listF0, map, mapZ1);
            return new e((Serializable) p5.v0(p5.z0("type", 7, "id", strValueOf, "skill_id", strValueOf, "num", Integer.valueOf(iMax), "pk_id", mapZ1.get("pk_id"), "skill_piece_num", Integer.valueOf(iMax))), str8);
        }
        String str9 = "Item";
        if (p5.h0(str)) {
            p5.c(i2, str, map);
            mapE1 = p5.e1(i2, p5.p0(str) ? 16 : 1, str);
        } else {
            List<Map> listF1 = w1.f0("Item", map);
            for (Map map2 : listF1) {
                if (a.A(map2, "item_id", str) || a.A(map2, "id", str)) {
                    int iH1 = h0(map2.containsKey("num") ? map2.get("num") : map2.get("item_num")) + i2;
                    a.t(iH1, map2, "num", iH1, "item_num");
                    o0(listF1, map, map2);
                    mapE1 = map2;
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            a.x("Item", map, linkedHashMap, "pk_id", "item_id", str);
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            a.z(linkedHashMap2, "id", str, i2, "num", i2, "item_num");
            listF1.add(linkedHashMap2);
            o0(listF1, map, linkedHashMap2);
            mapE1 = linkedHashMap2;
        }
        return new e((Serializable) p5.v0(p5.z0("type", 5, "id", str, "num", Integer.valueOf(i2), "pk_id", mapE1.get("pk_id"))), str9);
    }

    public static LinkedHashMap O(String str, Map map) {
        if ("union.info".equals(str)) {
            return t(map);
        }
        if ("union.rankList".equals(str)) {
            return r0(m0(map), "rank_list");
        }
        if ("union.userList".equals(str)) {
            return v(map);
        }
        if (!"union.applyList".equals(str)) {
            return t(map);
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("return_info", arrayList);
        linkedHashMapJ0.put("apply_list", arrayList);
        return linkedHashMapJ0;
    }

    public static LinkedHashMap Q(String str, Map map, Map map2) {
        if ("unionWar.signUp".equals(str)) {
            Boolean bool = Boolean.TRUE;
            map.put("union_war_sign_up", bool);
            map.put("union_war_fight_point", Integer.valueOf(h0(c0("fight_point", "1000", map2))));
            LinkedHashMap linkedHashMapU = u(map);
            linkedHashMapU.put("union_war_sign_up", bool);
            return linkedHashMapU;
        }
        if ("unionWar.setBattleFormation".equals(str)) {
            String strD0 = d0(map);
            LinkedHashMap linkedHashMapY = y(strD0, map, map2);
            map.put("union_war_formations", linkedHashMapY);
            Map mapL = (Map) linkedHashMapY.get(strD0);
            if (mapL == null) {
                mapL = L("1", "1");
            }
            map.put("union_war_battle_id", mapL.get("battle_id"));
            map.put("union_war_pos", mapL.get("pos"));
            return u(map);
        }
        String str2 = "user_all";
        String str3 = "fight_winner";
        String str4 = "winner";
        String str5 = "user_id";
        if ("unionWar.getFightingDetails".equals(str)) {
            int iH0 = h0(c0("union_war_id", "1", map2));
            int iH1 = h0(c0("battle_rounds", "1", map2));
            int iH2 = h0(c0("tag", "1", map2));
            int iH3 = h0(c0("battle_id", "1", map2));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map map3 : n0(map)) {
                String str6 = str2;
                linkedHashMap.put(String.valueOf(map3.get(str5)), map3);
                str5 = str5;
                str2 = str6;
            }
            String str7 = str2;
            String strC0 = c0("from", d0(map), map2);
            String strD1 = d0(map);
            if (linkedHashMap.containsKey(strC0)) {
                strD1 = strC0;
            }
            String strC1 = c0("to", "union_npc_1", map2);
            if (!linkedHashMap.containsKey(strC1)) {
                strC1 = "union_npc_1";
            }
            ArrayList arrayListV0 = p5.v0(p5.z0("from", strD1, "to", strC1, "winner", 0));
            LinkedHashMap linkedHashMapJ0 = j0();
            linkedHashMapJ0.put("union_war_id", Integer.valueOf(iH0));
            linkedHashMapJ0.put("battle_rounds", Integer.valueOf(iH1));
            linkedHashMapJ0.put("tag", Integer.valueOf(iH2));
            linkedHashMapJ0.put("battle_id", Integer.valueOf(iH3));
            linkedHashMapJ0.put("from", strD1);
            linkedHashMapJ0.put("to", strC1);
            linkedHashMapJ0.put("fight", arrayListV0);
            linkedHashMapJ0.put("fight_winner", 0);
            linkedHashMapJ0.put(str7, linkedHashMap);
            linkedHashMapJ0.put("return_info", p5.z0("union_war_id", Integer.valueOf(iH0), "battle_rounds", Integer.valueOf(iH1), "tag", Integer.valueOf(iH2), "battle_id", Integer.valueOf(iH3), "from", strD1, "to", strC1, "fight", arrayListV0, "fight_winner", 0, "user_all", linkedHashMap));
            return linkedHashMapJ0;
        }
        if (!"unionWar.getFightingResult".equals(str) && !"unionWar.getFightingProcess".equals(str)) {
            return u(map);
        }
        LinkedHashMap linkedHashMapJ1 = j0();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayListN0 = n0(map);
        String strD2 = d0(map);
        for (Iterator it = arrayListN0.iterator(); it.hasNext(); it = it) {
            Map map4 = (Map) it.next();
            linkedHashMap2.put(String.valueOf(map4.get("user_id")), map4);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        int i2 = 1;
        while (i2 <= 6) {
            ArrayList arrayListV1 = i2 == 1 ? p5.v0(p5.z0("from", strD2, "to", "union_npc_1", str4, 1)) : new ArrayList();
            String str8 = strD2;
            String strValueOf = String.valueOf(i2);
            String str9 = str4;
            Object[] objArr = new Object[2];
            objArr[0] = str3;
            String str10 = str3;
            objArr[1] = Integer.valueOf(i2 == 1 ? 1 : -1);
            linkedHashMap3.put(strValueOf, p5.z0("fight", arrayListV1, objArr));
            i2++;
            strD2 = str8;
            str4 = str9;
            str3 = str10;
        }
        a.s(1, linkedHashMapJ1, "union_war_id", 1, "battle_rounds", 1, "tag");
        linkedHashMapJ1.put("user_all", linkedHashMap2);
        linkedHashMapJ1.put("info", linkedHashMap3);
        linkedHashMapJ1.put("return_info", p5.z0("user_all", linkedHashMap2, "info", linkedHashMap3, "union_war_id", 1, "battle_rounds", 1, "tag", 1));
        return linkedHashMapJ1;
    }

    public static boolean R(String str) {
        return "union.info".equals(str) || "union.rankList".equals(str) || "union.userList".equals(str) || "union.applyList".equals(str);
    }

    public static boolean S(String str, String str2) {
        return g0(str).isEmpty() && !g0(str2).isEmpty();
    }

    public static boolean T(String str, String str2) {
        String strG0 = g0(str);
        return strG0.isEmpty() || (!g0(str2).isEmpty() && strG0.equals(b(str2)));
    }

    public static boolean U(String str) {
        if (V(str)) {
            return true;
        }
        if (str == null || !str.startsWith("union.")) {
            return false;
        }
        return "union.info".equals(str) || "union.rankList".equals(str) || "union.userList".equals(str) || "union.applyList".equals(str) || "union.getDepotList".equals(str) || "union.getGoodsList".equals(str) || "union.donateInfo".equals(str) || "union.donate".equals(str) || "union.exchangeGoods".equals(str) || "union.getUnionActiveList".equals(str) || "union.allotDepot".equals(str) || "union.apply".equals(str) || "union.manage".equals(str) || "union.chgNotice".equals(str) || "union.chgSign".equals(str) || "union.quite".equals(str) || "union.create".equals(str);
    }

    public static boolean V(String str) {
        if (str == null || !str.startsWith("unionWar.")) {
            return false;
        }
        return "unionWar.signUp".equals(str) || "unionWar.getBattleFormation".equals(str) || "unionWar.setBattleFormation".equals(str) || "unionWar.getFightingResult".equals(str) || "unionWar.getFightingProcess".equals(str) || "unionWar.getFightingDetails".equals(str);
    }

    public static String Y(String str, String str2) {
        Matcher matcher = Pattern.compile("\"" + str2 + "\"\\s*:\\s*\"?([^\",}\\s]+)").matcher(str);
        return matcher.find() ? matcher.group(1) : "";
    }

    public static String b(String str) {
        return com.sgscq.vpn.cloud.b0.a(g0(str));
    }

    public static String b0(String str) {
        return "owner_" + b(str);
    }

    public static String c0(String str, String str2, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return str2;
        }
        String strValueOf = String.valueOf(obj);
        return strValueOf.isEmpty() ? str2 : strValueOf;
    }

    public static String d0(Map map) {
        return i0("user_id", "account_uid", "100001", map);
    }

    public static ArrayList e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(p5.z0("id", "1", "name", "union_active", "active", 0, "status", 0));
        return arrayList;
    }

    public static String e0(Map map) {
        return i0("user_nickname", "nickname", "玩家", map);
    }

    public static LinkedHashMap f(Map map, Map map2) {
        Map map3;
        String strC0 = c0("pk_id", "1", map2);
        int iMax = Math.max(1, h0(c0("num", "1", map2)));
        Object obj = map.get("union_depot_list");
        List listE = obj instanceof List ? (List) obj : E();
        Iterator it = listE.iterator();
        do {
            if (!it.hasNext()) {
                map3 = null;
                break;
            }
            map3 = (Map) it.next();
        } while (!a.A(map3, "pk_id", strC0));
        if (map3 == null) {
            return I("仓库物品不存在");
        }
        int iH0 = h0(map3.get("num"));
        if (iH0 < iMax) {
            return I("库存不足");
        }
        map3.put("num", Integer.valueOf(iH0 - iMax));
        map.put("union_depot_list", listE);
        map.put("union_last_allot_member_id", c0("member_id", "", map2));
        map.put("union_last_allot_pk_id", strC0);
        map.put("union_last_allot_num", Integer.valueOf(iMax));
        LinkedHashMap linkedHashMapR0 = r0(listE, "depot_list");
        ((Map) linkedHashMapR0.get("return_info")).put("log_content", "分配了" + iMax + "件公会仓库物品");
        return linkedHashMapR0;
    }

    public static boolean f0(String str, Map map) {
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        Object obj = map.get("union_today_donate_day");
        String strTrim2 = obj != null ? String.valueOf(obj).trim() : "";
        if (strTrim2.isEmpty()) {
            map.put("union_today_donate_day", strTrim);
            return true;
        }
        if (strTrim.equals(strTrim2)) {
            return false;
        }
        map.put("union_today_donate_day", strTrim);
        map.put("union_today_donate", 0);
        map.put("union_today_donate_type", 0);
        return true;
    }

    public static String g0(String str) {
        return str == null ? "" : str.trim();
    }

    public static LinkedHashMap h(Map map, Map map2) {
        map.put("union_notice", c0("notice", "", map2));
        return r0("会长" + e0(map) + "修改了公会公告", "log_content");
    }

    public static int h0(Object obj) {
        return w1.l2(String.valueOf(obj), 0);
    }

    public static String i0(String str, String str2, String str3, Map map) {
        Object obj = map.get(str);
        if (obj == null && str2 != null) {
            obj = map.get(str2);
        }
        if (obj == null) {
            return str3;
        }
        String strValueOf = String.valueOf(obj);
        return strValueOf.isEmpty() ? str3 : strValueOf;
    }

    public static LinkedHashMap j(Map map, Map map2) {
        map.put("union_sign", c0("union_sign", "", map2));
        return r0("会长" + e0(map) + "修改了公会宣言", "log_content");
    }

    public static LinkedHashMap j0() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static LinkedHashMap k(Map map, com.sgscq.vpn.cloud.k kVar) {
        com.sgscq.vpn.cloud.g gVar = (com.sgscq.vpn.cloud.g) kVar.f373b;
        if (gVar != null && ((com.sgscq.vpn.cloud.o) gVar.f338d) != null) {
            String str = (String) kVar.f375d;
            if (j0.f885a.contains(str) || j0.f887c.containsKey(str) || "791684".equals(str)) {
                l(map, gVar);
                e eVarM = M(Math.max(1, kVar.f372a), str, map);
                LinkedHashMap linkedHashMapS = s((com.sgscq.vpn.battle.a) kVar.f374c);
                List list = (List) eVarM.f39b;
                linkedHashMapS.put("add_list", list);
                Object obj = linkedHashMapS.get("return_info");
                if (obj instanceof Map) {
                    ((Map) obj).put("add_list", list);
                }
                linkedHashMapS.put("delta_data", eVarM.F(map));
                linkedHashMapS.put("cmn_modules", (String) eVarM.f38a);
                return linkedHashMapS;
            }
        }
        return I("云端公会兑换结果无效");
    }

    public static String k0(String str) {
        return "type_" + b(str);
    }

    public static boolean l(Map map, com.sgscq.vpn.cloud.g gVar) {
        com.sgscq.vpn.cloud.m mVar;
        com.sgscq.vpn.cloud.o oVar;
        String strB = B(map);
        if (gVar == null || (mVar = (com.sgscq.vpn.cloud.m) gVar.f337c) == null || (oVar = (com.sgscq.vpn.cloud.o) gVar.f338d) == null) {
            x(map);
        } else {
            map.put("union_id", Integer.valueOf(mVar.f400a));
            map.put("unionId", Integer.valueOf(mVar.f400a));
            map.put("union_name", mVar.f401b);
            map.put("unionName", mVar.f401b);
            map.put("union_level", Integer.valueOf(mVar.f402c));
            map.put("union_exp", Integer.valueOf(mVar.f404e));
            map.put("union_notice", mVar.f409j);
            map.put("union_sign", mVar.f410k);
            map.put("user_role", Integer.valueOf(oVar.f436a));
            map.put("union_donate_num", Integer.valueOf(oVar.f437b));
            map.put("union_today_donate", Integer.valueOf(oVar.f438c));
            map.put("union_today_donate_type", Integer.valueOf(oVar.f439d));
        }
        return !strB.equals(B(map));
    }

    public static LinkedHashMap l0(Map map) {
        int iMax = Math.max(0, h0(map.get(map.containsKey("union_id") ? "union_id" : "unionId")));
        int i2 = iMax > 0 ? 1 : 0;
        Integer numValueOf = Integer.valueOf(iMax);
        Object[] objArr = new Object[22];
        objArr[0] = "union_name";
        objArr[1] = i2 != 0 ? i0("union_name", "unionName", "", map) : "";
        objArr[2] = "union_level";
        objArr[3] = Integer.valueOf(i2 != 0 ? Math.max(1, h0(map.get("union_level"))) : 0);
        objArr[4] = "leader_nickname";
        objArr[5] = i2 != 0 ? e0(map) : "";
        objArr[6] = "level_union_exp";
        objArr[7] = Integer.valueOf(i2 != 0 ? h0(map.get("union_exp")) : 0);
        objArr[8] = "level_up_exp";
        objArr[9] = Integer.valueOf(i2 != 0 ? Math.max(1, h0(map.get("union_level"))) * 1000 : 0);
        objArr[10] = "rank";
        objArr[11] = Integer.valueOf(i2);
        objArr[12] = "user_num";
        objArr[13] = Integer.valueOf(i2);
        objArr[14] = "user_limit";
        objArr[15] = Integer.valueOf(i2 != 0 ? ((Math.max(1, h0(map.get("union_level"))) - 1) * 5) + 30 : 0);
        objArr[16] = "notice";
        objArr[17] = i2 != 0 ? i0("union_notice", null, "", map) : "";
        objArr[18] = "union_sign";
        objArr[19] = i2 != 0 ? i0("union_sign", null, "", map) : "";
        objArr[20] = "union_fightPoint";
        objArr[21] = Integer.valueOf(i2 != 0 ? h0(map.get("union_fightPoint")) : 0);
        return p5.z0("union_id", numValueOf, objArr);
    }

    public static LinkedHashMap m(Map map, Map map2) {
        f0(c7.b(), map);
        if (h0(map.get("union_today_donate")) > 0) {
            return I("今日已捐献");
        }
        int iL2 = w1.l2(c0("data_id", "1", map2), 1);
        if (iL2 < 1 || iL2 > G().size()) {
            return I("捐献档位不存在");
        }
        Map map3 = (Map) G().get(iL2 - 1);
        int iE = a.e(map3, "type", 1);
        int iE2 = a.e(map3, "num", 0);
        int iE3 = a.e(map3, "exp", 1);
        int iE4 = a.e(map3, "donate", 1);
        if (iE == 1) {
            long jX = p5.x(map);
            long j2 = iE2;
            if (jX < j2) {
                return I("铜钱不足");
            }
            map.put("user_coin", Long.valueOf(jX - j2));
        } else if (iE == 2) {
            int iH0 = h0(map.get("user_gold"));
            if (iH0 < iE2) {
                return I("元宝不足");
            }
            map.put("user_gold", Integer.valueOf(iH0 - iE2));
        }
        map.put("union_today_donate", 1);
        map.put("union_today_donate_type", Integer.valueOf(iL2));
        map.put("union_donate_num", Integer.valueOf(h0(map.get("union_donate_num")) + iE4));
        int iMax = Math.max(1, h0(map.get("union_level")));
        int iMax2 = Math.max(0, iE3) + Math.max(0, h0(map.get("union_exp")));
        while (true) {
            int i2 = iMax * 1000;
            if (iMax2 < i2) {
                map.put("union_level", Integer.valueOf(iMax));
                map.put("union_exp", Integer.valueOf(iMax2));
                LinkedHashMap linkedHashMapQ = q(map);
                linkedHashMapQ.put("donate_id", Integer.valueOf(iL2));
                linkedHashMapQ.put("cmn_modules", "Player");
                return linkedHashMapQ;
            }
            iMax2 -= i2;
            iMax++;
        }
    }

    public static ArrayList m0(Map map) {
        ArrayList arrayList = new ArrayList();
        if (!(Math.max(0, h0(map.get(map.containsKey("union_id") ? "union_id" : "unionId"))) > 0)) {
            return arrayList;
        }
        LinkedHashMap linkedHashMapL0 = l0(map);
        linkedHashMapL0.put("war_rank", 0);
        arrayList.add(linkedHashMapL0);
        return arrayList;
    }

    public static ArrayList n0(Map map) {
        String strValueOf;
        ArrayList arrayList = new ArrayList();
        String strD0 = d0(map);
        LinkedHashMap linkedHashMapK = K(map, strD0, map.get("union_war_battle_id"), map.get("union_war_pos"));
        LinkedHashMap linkedHashMapK2 = K(map, "union_npc_1", "1", "1");
        Object[] objArr = new Object[10];
        objArr[0] = "user_nickname";
        objArr[1] = e0(map);
        objArr[2] = "general_id";
        for (Map map2 : w1.f0("General", map)) {
            Object obj = map2.get("general_id");
            if (obj == null) {
                obj = map2.get("id");
            }
            if (obj != null && !String.valueOf(obj).isEmpty()) {
                strValueOf = String.valueOf(obj);
                objArr[3] = strValueOf;
                objArr[4] = "fight_point";
                objArr[5] = Integer.valueOf(h0(map.getOrDefault("union_war_fight_point", 1000)));
                objArr[6] = "battle_id";
                objArr[7] = Integer.valueOf(h0(linkedHashMapK.get("battle_id")));
                objArr[8] = "pos";
                objArr[9] = Integer.valueOf(h0(linkedHashMapK.get("pos")));
                arrayList.add(p5.z0("user_id", strD0, objArr));
                arrayList.add(p5.z0("user_id", "union_npc_1", "user_nickname", "Union NPC", "general_id", p5.j1(1108649187), "fight_point", 900, "battle_id", Integer.valueOf(h0(linkedHashMapK2.get("battle_id"))), "pos", Integer.valueOf(h0(linkedHashMapK2.get("pos")))));
                return arrayList;
            }
        }
        strValueOf = "112001";
        objArr[3] = strValueOf;
        objArr[4] = "fight_point";
        objArr[5] = Integer.valueOf(h0(map.getOrDefault("union_war_fight_point", 1000)));
        objArr[6] = "battle_id";
        objArr[7] = Integer.valueOf(h0(linkedHashMapK.get("battle_id")));
        objArr[8] = "pos";
        objArr[9] = Integer.valueOf(h0(linkedHashMapK.get("pos")));
        arrayList.add(p5.z0("user_id", strD0, objArr));
        arrayList.add(p5.z0("user_id", "union_npc_1", "user_nickname", "Union NPC", "general_id", p5.j1(1108649187), "fight_point", 900, "battle_id", Integer.valueOf(h0(linkedHashMapK2.get("battle_id"))), "pos", Integer.valueOf(h0(linkedHashMapK2.get("pos")))));
        return arrayList;
    }

    public static LinkedHashMap o(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new LinkedHashMap((Map) it.next()));
        }
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("info", arrayList2);
        linkedHashMapJ0.put("unionWar", p5.z0("info", arrayList2, new Object[0]));
        linkedHashMapJ0.put("return_info", p5.z0("info", arrayList2, new Object[0]));
        return linkedHashMapJ0;
    }

    public static void o0(List list, Map map, Map map2) {
        map.put("Item", p5.z0("del", new ArrayList(), "upd", p5.v0(map2), "add", list));
    }

    public static void p0(List list, Map map, Map map2) {
        map.put("SkillPiece", p5.z0("del", new ArrayList(), "upd", p5.v0(map2), "add", list));
    }

    public static LinkedHashMap q(Map map) {
        int iH0 = h0(map.get("union_donate_num"));
        boolean z = h0(map.get("union_today_donate")) > 0;
        LinkedHashMap linkedHashMapZ0 = p5.z0("donate_num", Integer.valueOf(z ? 0 : 25), "user_donate", Integer.valueOf(iH0), "is_donate", Boolean.valueOf(z), "donate_info", G(), "donate_records", new ArrayList());
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("return_info", linkedHashMapZ0);
        linkedHashMapJ0.putAll(linkedHashMapZ0);
        return linkedHashMapJ0;
    }

    public static String q0(String str) {
        return "version_" + b(str);
    }

    public static LinkedHashMap r(int i2, String str, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (a.A(map, "item_id", "791684")) {
                arrayList2.add(map);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Map map2 = (Map) it2.next();
            if (!a.A(map2, "item_id", "791684")) {
                arrayList2.add(map2);
            }
        }
        LinkedHashMap linkedHashMapZ0 = p5.z0("catalog_day", str, "user_donate", Integer.valueOf(i2), "goods_list", arrayList2);
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("return_info", linkedHashMapZ0);
        linkedHashMapJ0.putAll(linkedHashMapZ0);
        return linkedHashMapJ0;
    }

    public static LinkedHashMap r0(Object obj, String str) {
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("return_info", p5.z0(str, obj, new Object[0]));
        linkedHashMapJ0.put(str, obj);
        return linkedHashMapJ0;
    }

    public static LinkedHashMap s(com.sgscq.vpn.battle.a aVar) {
        com.sgscq.vpn.battle.a aVar2 = aVar;
        ArrayList arrayList = new ArrayList();
        Iterator it = aVar2.f213b.iterator();
        while (it.hasNext()) {
            com.sgscq.vpn.cloud.l lVar = (com.sgscq.vpn.cloud.l) it.next();
            Integer numValueOf = Integer.valueOf(lVar.f382a);
            String str = lVar.f383b;
            int i2 = lVar.f384c;
            Integer numValueOf2 = Integer.valueOf(i2);
            Integer numValueOf3 = Integer.valueOf(i2);
            int i3 = lVar.f385d;
            Integer numValueOf4 = Integer.valueOf(i3);
            Iterator it2 = it;
            int i4 = lVar.f386e;
            Integer numValueOf5 = Integer.valueOf(i4);
            int i5 = lVar.f387f;
            Integer numValueOf6 = Integer.valueOf(i5);
            boolean z = lVar.f388g;
            arrayList.add(p5.z0("pk_id", numValueOf, "item_id", str, "item_num", numValueOf2, "num", numValueOf3, "donate", numValueOf4, "exchange_num", numValueOf5, "exchanged_num", numValueOf6, "can_exchange", Boolean.valueOf(z)));
            if ("791684".equals(String.valueOf(lVar.f383b))) {
                arrayList.add(p5.z0("pk_id", 7, "item_id", lVar.f383b, "item_num", Integer.valueOf(i2), "num", Integer.valueOf(i2), "kind", "combo_all", "donate", Integer.valueOf(i3), "exchange_num", Integer.valueOf(i4), "exchanged_num", Integer.valueOf(i5), "can_exchange", Boolean.valueOf(z)));
            }
            aVar2 = aVar;
            it = it2;
        }
        return r(aVar2.f212a, (String) aVar2.f214c, arrayList);
    }

    public static LinkedHashMap t(Map map) {
        ArrayList arrayList;
        int i2 = Math.max(0, h0(map.get(map.containsKey("union_id") ? "union_id" : "unionId"))) > 0 ? 1 : 0;
        Integer numValueOf = Integer.valueOf(i2);
        Object[] objArr = new Object[8];
        objArr[0] = "user_role";
        objArr[1] = Integer.valueOf(i2 != 0 ? Math.max(1, h0(map.get("user_role"))) : 0);
        objArr[2] = "union_info";
        objArr[3] = l0(map);
        objArr[4] = "union_log";
        if (i2 != 0) {
            arrayList = new ArrayList();
            arrayList.add(p5.z0("content", "union_log_welcome", new Object[0]));
        } else {
            arrayList = new ArrayList();
        }
        objArr[5] = arrayList;
        objArr[6] = "union_list";
        objArr[7] = m0(map);
        LinkedHashMap linkedHashMapZ0 = p5.z0("has_joined", numValueOf, objArr);
        LinkedHashMap linkedHashMapJ0 = j0();
        linkedHashMapJ0.put("return_info", linkedHashMapZ0);
        linkedHashMapJ0.put("union_info", linkedHashMapZ0.get("union_info"));
        linkedHashMapJ0.put("union_log", linkedHashMapZ0.get("union_log"));
        linkedHashMapJ0.put("union_list", linkedHashMapZ0.get("union_list"));
        return linkedHashMapJ0;
    }

    public static LinkedHashMap u(Map map) {
        LinkedHashMap linkedHashMapJ0 = j0();
        ArrayList arrayListN0 = n0(map);
        linkedHashMapJ0.put("info", arrayListN0);
        linkedHashMapJ0.put("unionWar", p5.z0("info", arrayListN0, new Object[0]));
        linkedHashMapJ0.put("return_info", p5.z0("info", arrayListN0, new Object[0]));
        return linkedHashMapJ0;
    }

    public static LinkedHashMap v(Map map) {
        ArrayList arrayList = new ArrayList();
        if (Math.max(0, h0(map.get(map.containsKey("union_id") ? "union_id" : "unionId"))) > 0) {
            String strD0 = d0(map);
            Object[] objArr = new Object[28];
            objArr[0] = "user_role";
            objArr[1] = Integer.valueOf(Math.max(1, h0(map.get("user_role"))));
            objArr[2] = "user_vip_level";
            objArr[3] = Integer.valueOf(h0(map.get("user_vip_level")));
            objArr[4] = "fightPoint";
            objArr[5] = Integer.valueOf(h0(map.get("fightPoint")));
            objArr[6] = "ladder_rank";
            objArr[7] = Integer.valueOf(h0(map.get("ladder_rank")));
            objArr[8] = "donationState";
            objArr[9] = Boolean.valueOf(J(map.get("union_today_donate")));
            objArr[10] = "user_nickname";
            objArr[11] = e0(map);
            objArr[12] = "user_level";
            objArr[13] = Integer.valueOf(Math.max(1, h0(map.get("user_level"))));
            objArr[14] = "user_donate";
            objArr[15] = Integer.valueOf(h0(map.get("union_donate_num")));
            objArr[16] = "user_last_login_time";
            objArr[17] = Long.valueOf(map.containsKey("user_last_login_time") ? h0(map.get("user_last_login_time")) : c7.g());
            objArr[18] = "today_donate_num";
            objArr[19] = Integer.valueOf(h0(map.get("union_today_donate")));
            objArr[20] = "today_donate_type";
            objArr[21] = Integer.valueOf(h0(map.get("union_today_donate_type")));
            objArr[22] = "union_war_sign_up";
            objArr[23] = Boolean.valueOf(J(map.get("union_war_sign_up")));
            objArr[24] = "active";
            objArr[25] = 0;
            objArr[26] = "uw_join_times";
            objArr[27] = 0;
            arrayList.add(p5.z0("user_id", strD0, objArr));
        }
        return r0(arrayList, "user_list");
    }

    public static void x(Map map) {
        map.put("union_id", 0);
        map.put("unionId", 0);
        map.put("union_name", "");
        map.put("unionName", "");
        map.put("union_level", 0);
        map.put("union_exp", 0);
        map.put("union_notice", "");
        map.put("union_sign", "");
        map.put("user_role", 0);
        map.put("union_donate_num", 0);
        map.put("union_today_donate", 0);
        map.put("union_today_donate_type", 0);
    }

    public static LinkedHashMap y(String str, Map map, Map map2) {
        String strTrim;
        String strC0 = c0("battle_id", "1", map2);
        String strC1 = c0("pos", "1", map2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map.get("union_war_formations") instanceof Map) {
            for (Map.Entry entry : ((Map) map.get("union_war_formations")).entrySet()) {
                if (entry.getValue() instanceof Map) {
                    Map map3 = (Map) entry.getValue();
                    Object obj = map3.get("battle_id");
                    Object obj2 = map3.get("pos");
                    linkedHashMap.put(String.valueOf(entry.getKey()), L(obj == null ? "1" : String.valueOf(obj), obj2 == null ? "1" : String.valueOf(obj2)));
                }
            }
        }
        if (!linkedHashMap.containsKey(str)) {
            linkedHashMap.put(str, K(map, str, map.get("union_war_battle_id"), map.get("union_war_pos")));
        }
        if (map2 == null) {
            return linkedHashMap;
        }
        Object objU1 = map2.get("chg_formation");
        if ((objU1 instanceof Map) || objU1 == null) {
            strTrim = null;
        } else {
            strTrim = String.valueOf(objU1).trim();
            if (strTrim.startsWith("{")) {
                objU1 = p5.u1(strTrim);
            }
        }
        boolean z = false;
        if (objU1 instanceof Map) {
            for (Map.Entry entry2 : ((Map) objU1).entrySet()) {
                if (entry2.getValue() instanceof Map) {
                    Map map4 = (Map) entry2.getValue();
                    String strValueOf = String.valueOf(entry2.getKey());
                    Object obj3 = map4.get("battle_id");
                    Object obj4 = map4.get("pos");
                    linkedHashMap.put(strValueOf, L(obj3 == null ? strC0 : String.valueOf(obj3), obj4 == null ? strC1 : String.valueOf(obj4)));
                    z = true;
                }
            }
        }
        if (strTrim != null) {
            String strY = Y(strTrim, "battle_id");
            String strY2 = Y(strTrim, "pos");
            if (!strY.isEmpty()) {
                strC0 = strY;
            }
            if (!strY2.isEmpty()) {
                strC1 = strY2;
            }
        }
        if (!z) {
            linkedHashMap.put(str, L(strC0, strC1));
        }
        return linkedHashMap;
    }

    public static int z(int i2, com.sgscq.vpn.battle.a aVar) {
        List<com.sgscq.vpn.cloud.l> list;
        if (aVar != null && (list = aVar.f213b) != null) {
            for (com.sgscq.vpn.cloud.l lVar : list) {
                if (lVar.f382a == i2) {
                    return Math.max(1, Math.min(Math.max(0, lVar.f386e - lVar.f387f), aVar.f212a / Math.max(1, lVar.f385d)));
                }
            }
        }
        return 1;
    }

    public final com.sgscq.vpn.battle.a A(String str) {
        try {
            return ((m.e) this.f39b).p(str);
        } catch (Exception e2) {
            a.u(e2, new StringBuilder("[CloudGuild] goods list failed: "), "SGSCQ_SRV");
            return null;
        }
    }

    public final LinkedHashMap F(Map map) {
        if ("SkillPiece".equals((String) this.f38a)) {
            Object obj = map.get("SkillPiece");
            if (!(obj instanceof Map)) {
                return p5.z0("SkillPiece", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
            }
            Map map2 = (Map) obj;
            return p5.z0("SkillPiece", p5.z0("del", map2.get("del") instanceof List ? new ArrayList((List) map2.get("del")) : new ArrayList(), "upd", map2.get("upd") instanceof List ? new ArrayList((List) map2.get("upd")) : new ArrayList(), "add", a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0("SkillPiece", map)}, map, "SkillPiece")), new Object[0]);
        }
        Object obj2 = map.get("Item");
        if (!(obj2 instanceof Map)) {
            return p5.z0("Item", p5.z0("del", new ArrayList(), "upd", new ArrayList(), "add", new ArrayList()), new Object[0]);
        }
        Map map3 = (Map) obj2;
        return p5.z0("Item", p5.z0("del", map3.get("del") instanceof List ? new ArrayList((List) map3.get("del")) : new ArrayList(), "upd", map3.get("upd") instanceof List ? new ArrayList((List) map3.get("upd")) : new ArrayList(), "add", a.n("del", new ArrayList(), new Object[]{"upd", new ArrayList(), "add", w1.f0("Item", map)}, map, "Item")), new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:166:0x0493  */
    /* JADX WARN: Code duplicated, block: B:167:0x0496  */
    /* JADX WARN: Code duplicated, block: B:81:0x0247 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0249  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v9 */
    public final byte[] N(String str, Map map) {
        String str2;
        Object obj;
        LinkedHashMap linkedHashMapO;
        Map map2;
        int i2;
        int i3;
        int iMin;
        String str3;
        ?? V;
        LinkedHashMap linkedHashMapI;
        int i4;
        List list;
        com.sgscq.vpn.cloud.g gVar;
        ArrayList arrayListU;
        m.e eVar;
        boolean z;
        m.e eVar2;
        String str4;
        String str5;
        ArrayList arrayListO;
        ArrayList arrayListU2;
        ArrayList arrayListR;
        e eVar3;
        Object obj2;
        Map map3;
        if (!U(str)) {
            return null;
        }
        k0 k0Var = (k0) this.f38a;
        String strE = k0Var.e(map);
        Map mapW0 = k0Var.f904d.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Object obj3 = this.f39b;
        m.e eVar4 = (m.e) obj3;
        if (!((eVar4 != null) && (eVar4 != null && eVar4.w(strE)))) {
            if (f0(c7.b(), mapW0)) {
                k0Var.f904d.S0(strE, mapW0);
            }
            if (V(str)) {
                if (Math.max(0, h0(mapW0.get(mapW0.containsKey("union_id") ? "union_id" : "unionId"))) > 0) {
                    linkedHashMapO = Q(str, mapW0, map);
                    obj = "delta_data";
                    h5 h5Var = k0Var.f904d;
                    str2 = strE;
                    h5Var.S0(str2, mapW0);
                } else {
                    linkedHashMapO = I("未加入公会");
                    obj = "delta_data";
                    str2 = strE;
                }
            } else {
                if ("union.rankList".equals(str) || "union.userList".equals(str) || "union.applyList".equals(str)) {
                    str2 = strE;
                    obj = "delta_data";
                } else {
                    if ("union.getDepotList".equals(str)) {
                        linkedHashMapO = r0(E(), "depot_list");
                    } else if ("union.getGoodsList".equals(str)) {
                        linkedHashMapO = r(h0(mapW0.get("union_donate_num")), j0.b(), j0.f(mapW0));
                    } else if ("union.donateInfo".equals(str)) {
                        linkedHashMapO = q(mapW0);
                    } else {
                        if ("union.donate".equals(str)) {
                            linkedHashMapO = m(mapW0, map);
                        } else {
                            if ("union.exchangeGoods".equals(str)) {
                                String strC0 = c0("pk_id", "1", map);
                                int iH0 = h0(mapW0.get("union_donate_num"));
                                Iterator it = j0.f(mapW0).iterator();
                                do {
                                    if (!it.hasNext()) {
                                        map2 = null;
                                        break;
                                    }
                                    map2 = (Map) it.next();
                                } while (!a.A(map2, "pk_id", strC0));
                                if (map2 == null) {
                                    str3 = "商品不存在";
                                } else {
                                    int iH1 = h0(map2.get("donate"));
                                    int iH2 = h0(map2.get("exchange_num")) - h0(map2.get("exchanged_num"));
                                    if (iH2 <= 0) {
                                        str3 = "今日已兑换";
                                    } else if (iH0 < iH1) {
                                        str3 = "贡献不足";
                                    } else {
                                        int iMin2 = String.valueOf(7).equals(strC0) ? Math.min(iH2, iH0 / Math.max(1, iH1)) : 1;
                                        mapW0.put("union_donate_num", Integer.valueOf(iH0 - (iH1 * iMin2)));
                                        try {
                                            int i5 = Integer.parseInt(strC0) - 1;
                                            if (i5 == 6) {
                                                i5 = 5;
                                            }
                                            if (i5 >= 0 && i5 < 6) {
                                                String strB = j0.b();
                                                int iE = j0.e(strB, mapW0);
                                                if (i5 == 5) {
                                                    i2 = (iE >> 5) & 31;
                                                    i3 = 1;
                                                } else {
                                                    i2 = 1;
                                                    if (((1 << i5) & iE) == 0) {
                                                        i3 = 1;
                                                        i2 = 0;
                                                    } else {
                                                        i3 = 1;
                                                    }
                                                }
                                                mapW0.put("union_goods_exchange_day", strB);
                                                int iMax = Math.max(i3, iMin2) + i2;
                                                if (i5 == 5) {
                                                    iE &= 31;
                                                    iMin = (Math.min(30, iMax) & 31) << 5;
                                                } else {
                                                    iMin = i3 << i5;
                                                }
                                                mapW0.put("union_goods_exchange_mask", Integer.valueOf(iMin | iE));
                                            }
                                        } catch (NumberFormatException unused) {
                                        }
                                        e eVarM = M(Math.max(1, h0(map2.get("item_num"))) * iMin2, String.valueOf(map2.get("item_id")), mapW0);
                                        LinkedHashMap linkedHashMapR = r(h0(mapW0.get("union_donate_num")), j0.b(), j0.f(mapW0));
                                        List list2 = (List) eVarM.f39b;
                                        linkedHashMapR.put("add_list", list2);
                                        Object obj4 = linkedHashMapR.get("return_info");
                                        if (obj4 instanceof Map) {
                                            ((Map) obj4).put("add_list", list2);
                                        }
                                        obj = "delta_data";
                                        linkedHashMapR.put(obj, eVarM.F(mapW0));
                                        linkedHashMapR.put("cmn_modules", (String) eVarM.f38a);
                                        linkedHashMapO = linkedHashMapR;
                                    }
                                }
                                linkedHashMapO = I(str3);
                            } else {
                                obj = "delta_data";
                                if ("union.getUnionActiveList".equals(str)) {
                                    linkedHashMapO = r0(e(), "active_list");
                                    str2 = strE;
                                } else if ("union.allotDepot".equals(str)) {
                                    linkedHashMapO = f(mapW0, map);
                                } else if ("union.apply".equals(str)) {
                                    mapW0.put("union_apply_id", c0("union_id", "1", map));
                                    linkedHashMapO = t(mapW0);
                                } else if ("union.manage".equals(str)) {
                                    mapW0.put("union_manage_target_id", c0("target_id", "", map));
                                    mapW0.put("union_manage_type", Integer.valueOf(h0(c0("type", "0", map))));
                                    linkedHashMapO = v(mapW0);
                                } else if ("union.chgNotice".equals(str)) {
                                    linkedHashMapO = h(mapW0, map);
                                } else if ("union.chgSign".equals(str)) {
                                    linkedHashMapO = j(mapW0, map);
                                } else if ("union.quite".equals(str)) {
                                    mapW0.put("union_id", 0);
                                    mapW0.put("unionId", 0);
                                    mapW0.put("union_name", "");
                                    mapW0.put("unionName", "");
                                    mapW0.put("union_notice", "");
                                    mapW0.put("union_sign", "");
                                    mapW0.put("user_role", 0);
                                    linkedHashMapO = t(mapW0);
                                    linkedHashMapO.put("cmn_modules", "Player");
                                } else if ("union.create".equals(str)) {
                                    String strC1 = c0("union_name", "", map);
                                    mapW0.put("union_id", 1);
                                    mapW0.put("unionId", 1);
                                    mapW0.put("union_name", strC1);
                                    mapW0.put("unionName", strC1);
                                    mapW0.put("union_sign", c0("union_sign", "", map));
                                    mapW0.put("union_notice", c0("notice", "", map));
                                    mapW0.put("user_role", 1);
                                    mapW0.put("union_donate_num", Integer.valueOf(h0(mapW0.get("union_donate_num"))));
                                    linkedHashMapO = t(mapW0);
                                    linkedHashMapO.put("cmn_modules", "Player");
                                } else {
                                    str2 = strE;
                                    if (!"union.info".equals(str)) {
                                        linkedHashMapO = t(mapW0);
                                    }
                                }
                            }
                            h5 h5Var2 = k0Var.f904d;
                            str2 = strE;
                            h5Var2.S0(str2, mapW0);
                        }
                        obj = "delta_data";
                        h5 h5Var3 = k0Var.f904d;
                        str2 = strE;
                        h5Var3.S0(str2, mapW0);
                    }
                    obj = "delta_data";
                    str2 = strE;
                }
                linkedHashMapO = O(str, mapW0);
            }
            Object obj5 = linkedHashMapO.get(obj);
            linkedHashMapO.put("cmn", p(str2, obj5 instanceof Map ? (Map) obj5 : mapW0, mapW0, D(linkedHashMapO)));
            return k0Var.n(p5.s1(linkedHashMapO));
        }
        if (eVar4.w(strE)) {
            try {
                com.sgscq.vpn.cloud.g gVarS = ((m.e) obj3).s(strE);
                l(mapW0, gVarS);
                if ("union.info".equals(str)) {
                    arrayListU2 = ((m.e) obj3).u(strE, c0("union_name", "", map).trim());
                } else {
                    if ("union.rankList".equals(str)) {
                        str5 = "rank_list";
                        arrayListO = m.e.L(((m.e) obj3).u(strE, ""));
                    } else {
                        boolean zEquals = "union.userList".equals(str);
                        Object obj6 = gVarS.f337c;
                        if (zEquals) {
                            if (((com.sgscq.vpn.cloud.m) obj6) == null) {
                                arrayListR = new ArrayList();
                            }
                            linkedHashMapI = r0(arrayListR, "user_list");
                        } else if ("union.applyList".equals(str)) {
                            ArrayList arrayList = ((com.sgscq.vpn.cloud.m) obj6) == null ? new ArrayList() : ((m.e) obj3).o(strE);
                            LinkedHashMap linkedHashMapJ0 = j0();
                            linkedHashMapJ0.put("return_info", arrayList);
                            linkedHashMapJ0.put("apply_list", arrayList);
                            linkedHashMapI = linkedHashMapJ0;
                        } else {
                            if (!"union.create".equals(str)) {
                                if ("union.apply".equals(str)) {
                                    m.e eVar5 = (m.e) obj3;
                                    int iH3 = h0(c0("union_id", "0", map));
                                    eVar5.E(strE);
                                    com.sgscq.vpn.cloud.z zVar = (com.sgscq.vpn.cloud.z) eVar5.f1805b;
                                    zVar.getClass();
                                    zVar.Z("/social/guilds/" + iH3 + "/applications", "{}");
                                    arrayListU2 = ((m.e) obj3).u(strE, "");
                                } else if ("union.manage".equals(str)) {
                                    int iH4 = h0(c0("type", "0", map));
                                    String strC2 = c0("target_id", "", map);
                                    if (iH4 == 1) {
                                        eVar2 = (m.e) obj3;
                                        str4 = "leader";
                                    } else if (iH4 == 2) {
                                        eVar2 = (m.e) obj3;
                                        str4 = "deputy";
                                    } else {
                                        if (iH4 == 3) {
                                            eVar2 = (m.e) obj3;
                                            str4 = "member";
                                        } else if (iH4 == 4) {
                                            ((m.e) obj3).B(strE, strC2);
                                        } else {
                                            if (iH4 == 5) {
                                                eVar = (m.e) obj3;
                                                z = true;
                                            } else if (iH4 == 6) {
                                                eVar = (m.e) obj3;
                                                z = false;
                                            }
                                            eVar.D(strE, strC2, z);
                                        }
                                        l(mapW0, ((m.e) obj3).s(strE));
                                        if (iH4 != 5) {
                                            if (iH4 == 6) {
                                            }
                                        }
                                        str5 = "apply_list";
                                        arrayListO = ((m.e) obj3).o(strE);
                                    }
                                    eVar2.E(strE);
                                    com.sgscq.vpn.cloud.z zVar2 = (com.sgscq.vpn.cloud.z) eVar2.f1805b;
                                    zVar2.getClass();
                                    com.sgscq.vpn.cloud.z.G(com.sgscq.vpn.cloud.z.g(com.sgscq.vpn.cloud.z.x(zVar2.c("POST", "/social/guild/members/" + com.sgscq.vpn.cloud.z.w(strC2) + "/role", Collections.singletonMap("role", str4)).a()), "membership"));
                                    l(mapW0, ((m.e) obj3).s(strE));
                                    if (iH4 != 5) {
                                        if (iH4 == 6) {
                                        }
                                    }
                                    str5 = "apply_list";
                                    arrayListO = ((m.e) obj3).o(strE);
                                } else if ("union.chgNotice".equals(str)) {
                                    ((m.e) obj3).O(strE, c0("notice", "", map), null);
                                    l(mapW0, ((m.e) obj3).s(strE));
                                    linkedHashMapI = h(mapW0, map);
                                } else if ("union.chgSign".equals(str)) {
                                    ((m.e) obj3).O(strE, null, c0("union_sign", "", map));
                                    l(mapW0, ((m.e) obj3).s(strE));
                                    linkedHashMapI = j(mapW0, map);
                                } else if ("union.quite".equals(str)) {
                                    m.e eVar6 = (m.e) obj3;
                                    eVar6.E(strE);
                                    com.sgscq.vpn.cloud.z zVar3 = (com.sgscq.vpn.cloud.z) eVar6.f1805b;
                                    zVar3.getClass();
                                    zVar3.a("DELETE", "/social/guild", null, "application/json", Collections.emptyMap());
                                    x(mapW0);
                                    gVar = new com.sgscq.vpn.cloud.g();
                                    arrayListU = ((m.e) obj3).u(strE, "");
                                } else if (((com.sgscq.vpn.cloud.m) obj6) == null) {
                                    linkedHashMapI = I("未加入公会");
                                } else {
                                    V = V(str);
                                    try {
                                        if (V != 0) {
                                            e eVar7 = this;
                                            linkedHashMapI = eVar7.P(str, strE, mapW0, map);
                                            eVar3 = eVar7;
                                        } else {
                                            e eVar8 = this;
                                            if ("union.getDepotList".equals(str)) {
                                                linkedHashMapI = r0(E(), "depot_list");
                                                eVar3 = eVar8;
                                            } else if ("union.getGoodsList".equals(str)) {
                                                com.sgscq.vpn.battle.a aVarP = ((m.e) obj3).p(strE);
                                                mapW0.put("union_donate_num", Integer.valueOf(aVarP.f212a));
                                                linkedHashMapI = s(aVarP);
                                                eVar3 = eVar8;
                                            } else if ("union.donateInfo".equals(str)) {
                                                linkedHashMapI = q(mapW0);
                                                eVar3 = eVar8;
                                            } else if ("union.donate".equals(str)) {
                                                LinkedHashMap linkedHashMapM = m(new LinkedHashMap(mapW0), map);
                                                if (Boolean.TRUE.equals(linkedHashMapM.get("result"))) {
                                                    int iH5 = h0(c0("data_id", "1", map));
                                                    m.e eVar9 = (m.e) obj3;
                                                    eVar9.E(strE);
                                                    com.sgscq.vpn.cloud.z zVar4 = (com.sgscq.vpn.cloud.z) eVar9.f1805b;
                                                    zVar4.getClass();
                                                    com.sgscq.vpn.cloud.g gVarE = com.sgscq.vpn.cloud.z.E(zVar4.c("POST", "/social/guild/donations", Collections.singletonMap("data_id", Integer.valueOf(iH5))).a());
                                                    m(mapW0, map);
                                                    l(mapW0, gVarE);
                                                    linkedHashMapI = q(mapW0);
                                                    linkedHashMapI.put("donate_id", Integer.valueOf(iH5));
                                                    linkedHashMapI.put("cmn_modules", "Player");
                                                    eVar3 = eVar8;
                                                } else {
                                                    linkedHashMapI = linkedHashMapM;
                                                    eVar3 = eVar8;
                                                }
                                            } else if ("union.exchangeGoods".equals(str)) {
                                                int iH6 = h0(c0("pk_id", "0", map));
                                                com.sgscq.vpn.battle.a aVarA = eVar8.A(strE);
                                                String strValueOf = String.valueOf(iH6);
                                                List list3 = j0.f885a;
                                                if (!String.valueOf(7).equals(strValueOf)) {
                                                    i4 = iH6;
                                                } else if (aVarA != null && (list = aVarA.f213b) != null) {
                                                    Iterator it2 = list.iterator();
                                                    while (true) {
                                                        if (!it2.hasNext()) {
                                                            i4 = 0;
                                                            break;
                                                        }
                                                        com.sgscq.vpn.cloud.l lVar = (com.sgscq.vpn.cloud.l) it2.next();
                                                        if ("791684".equals(String.valueOf(lVar.f383b))) {
                                                            i4 = lVar.f382a;
                                                            break;
                                                        }
                                                    }
                                                } else {
                                                    i4 = 0;
                                                    break;
                                                }
                                                if (i4 <= 0) {
                                                    linkedHashMapI = I("公会商品不存在");
                                                    eVar3 = eVar8;
                                                } else {
                                                    linkedHashMapI = k(mapW0, ((m.e) obj3).f(i4, String.valueOf(7).equals(String.valueOf(iH6)) ? z(i4, eVar8.A(strE)) : 1, strE));
                                                    eVar3 = eVar8;
                                                }
                                            } else if ("union.getUnionActiveList".equals(str)) {
                                                linkedHashMapI = r0(e(), "active_list");
                                                eVar3 = eVar8;
                                            } else if ("union.allotDepot".equals(str)) {
                                                linkedHashMapI = f(mapW0, map);
                                                eVar3 = eVar8;
                                            } else {
                                                linkedHashMapI = C(gVarS, ((m.e) obj3).u(strE, ""));
                                                eVar3 = eVar8;
                                            }
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        StringBuilder sbB = a.b0.b("[CloudGuild] ", str, " failed: ");
                                        sbB.append(e.getMessage());
                                        z2.g("SGSCQ_SRV", sbB.toString());
                                        if (R(str)) {
                                            linkedHashMapI = H(str);
                                            eVar3 = V;
                                        } else {
                                            linkedHashMapI = I(e.getMessage() == null ? "云端公会功能暂时不可用" : e.getMessage());
                                            eVar3 = V;
                                        }
                                    }
                                }
                                obj2 = linkedHashMapI.get("delta_data");
                                if (obj2 instanceof Map) {
                                    map3 = (Map) obj2;
                                } else {
                                    map3 = mapW0;
                                }
                                linkedHashMapI.put("cmn", eVar3.p(strE, map3, mapW0, D(linkedHashMapI)));
                                k0Var.f904d.S0(strE, mapW0);
                                return k0Var.n(p5.s1(linkedHashMapI));
                            }
                            gVar = ((m.e) obj3).b(strE, c0("union_name", "", map), c0("union_sign", "", map), c0("notice", "", map));
                            l(mapW0, gVar);
                            arrayListU = ((m.e) obj3).u(strE, "");
                            linkedHashMapI = C(gVar, arrayListU);
                            linkedHashMapI.put("cmn_modules", "Player");
                        }
                        arrayListR = ((m.e) obj3).r(strE);
                        linkedHashMapI = r0(arrayListR, "user_list");
                    }
                    linkedHashMapI = r0(arrayListO, str5);
                }
                linkedHashMapI = C(gVarS, arrayListU2);
            } catch (Exception e3) {
                e = e3;
                V = this;
            }
        } else {
            x(mapW0);
            linkedHashMapI = R(str) ? H(str) : I("只有当前云端角色可以使用公会功能");
        }
        eVar3 = this;
        obj2 = linkedHashMapI.get("delta_data");
        if (obj2 instanceof Map) {
            map3 = (Map) obj2;
        } else {
            map3 = mapW0;
        }
        linkedHashMapI.put("cmn", eVar3.p(strE, map3, mapW0, D(linkedHashMapI)));
        k0Var.f904d.S0(strE, mapW0);
        return k0Var.n(p5.s1(linkedHashMapI));
    }

    public final LinkedHashMap P(String str, String str2, Map map, Map map2) throws com.sgscq.vpn.cloud.a0 {
        ArrayList arrayListT;
        boolean zEquals = "unionWar.signUp".equals(str);
        Object obj = this.f39b;
        if (zEquals) {
            Boolean bool = Boolean.TRUE;
            map.put("union_war_sign_up", bool);
            map.put("union_war_fight_point", Integer.valueOf(h0(c0("fight_point", "1000", map2))));
            LinkedHashMap linkedHashMapO = o(((m.e) obj).t(str2));
            linkedHashMapO.put("union_war_sign_up", bool);
            return linkedHashMapO;
        }
        if ("unionWar.setBattleFormation".equals(str)) {
            LinkedHashMap linkedHashMapY = y(d0(map), map, map2);
            map.put("union_war_formations", linkedHashMapY);
            m.e eVar = (m.e) obj;
            eVar.E(str2);
            com.sgscq.vpn.cloud.z zVar = (com.sgscq.vpn.cloud.z) eVar.f1805b;
            zVar.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("chg_formation", linkedHashMapY);
            arrayListT = m.e.K(com.sgscq.vpn.cloud.z.F(zVar.c("POST", "/social/guild/war/formation", linkedHashMap).a()));
        } else {
            if (!"unionWar.getBattleFormation".equals(str)) {
                return Q(str, map, map2);
            }
            arrayListT = ((m.e) obj).t(str2);
        }
        return o(arrayListT);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    public final synchronized boolean W(String str, String str2) {
        boolean z;
        n0 n0VarZ = Z(str);
        String str3 = n0VarZ.f432a ? "cloud" : "local";
        String str4 = n0VarZ.f434c;
        z = true;
        if ("cloud".equals(g0(str3))) {
            if (g0(str4).isEmpty() || !T(str4, str2)) {
                z = false;
            }
        } else if (!"local".equals(g0(str3)) || !g0(str4).isEmpty()) {
            z = false;
        }
        return z;
    }

    public final synchronized boolean X(String str) {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY;
        cloudSessionStore$SessionDataY = new m.e(5, (Context) this.f38a).y();
        return W(str, cloudSessionStore$SessionDataY.isLoggedIn() ? cloudSessionStore$SessionDataY.afdianUserId : "");
    }

    public final synchronized n0 Z(String str) {
        String string;
        String string2;
        int i2;
        boolean zS;
        String strG0 = g0(str);
        string = ((SharedPreferences) this.f39b).getString(b0(strG0), "");
        string2 = ((SharedPreferences) this.f39b).getString(k0(strG0), "");
        i2 = ((SharedPreferences) this.f39b).getInt(q0(strG0), 0);
        zS = S(string2, string);
        return new n0("cloud".equals(string2) || zS, zS, string, i2);
    }

    @Override // c.t
    public final Object a() {
        Object obj = this.f38a;
        try {
            return b0.f32a.b((Class) obj);
        } catch (Exception e2) {
            throw new RuntimeException("Unable to create instance of " + ((Class) obj) + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e2);
        }
    }

    public final synchronized void a0(String str, int i2, String str2) {
        String strG0 = g0(str);
        String strG1 = g0(str2);
        if (strG0.isEmpty() || strG1.isEmpty()) {
            throw new IllegalArgumentException("云存档归属不能为空");
        }
        if (!((SharedPreferences) this.f39b).edit().putString(b0(strG0), strG1).putString(k0(strG0), "cloud").putInt(q0(strG0), i2).commit()) {
            throw new IllegalStateException("云存档归属保存失败");
        }
    }

    @Override // p.k
    public final byte[] c() throws IOException {
        Object obj = this.f38a;
        if (!((File) obj).isFile()) {
            return null;
        }
        if (((File) obj).length() > 65536) {
            throw new IOException("cache too large");
        }
        FileInputStream fileInputStream = new FileInputStream((File) obj);
        try {
            byte[] bArrH = p.l.h(fileInputStream, 65536);
            fileInputStream.close();
            return bArrH;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p.k
    public final void d(long j2) {
        ((SharedPreferences) this.f39b).edit().putLong("highest_revision", j2).apply();
    }

    @Override // p.k
    public final void g(byte[] bArr) throws IOException {
        Object obj = this.f38a;
        File file = new File(((File) obj).getParentFile(), ((File) obj).getName() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (((File) obj).exists() && !((File) obj).delete()) {
                throw new IOException("cannot replace schedule cache");
            }
            if (!file.renameTo((File) obj)) {
                throw new IOException("cannot move schedule cache");
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p.k
    public final long i() {
        return ((SharedPreferences) this.f39b).getLong("highest_revision", 0L);
    }

    public final synchronized void n(String str, String str2) {
        String strG0 = g0(str);
        String strG1 = g0(str2);
        if (!strG0.isEmpty() && !strG1.isEmpty()) {
            n0 n0VarZ = Z(strG0);
            String strB = b(strG1);
            String str3 = (!n0VarZ.f432a || n0VarZ.f433b) ? "" : "cloud";
            String strG2 = g0(n0VarZ.f434c);
            String strG3 = g0(strB);
            boolean z = false;
            if (!strG2.isEmpty() && strG2.equals(strG3)) {
                if (("cloud".equals(g0(str3)) && !g0(strG2).isEmpty()) || S(str3, strG2)) {
                    z = true;
                }
            }
            if (!z) {
                throw new IllegalStateException("普通本地存档不能转换为云存档");
            }
            ((SharedPreferences) this.f39b).edit().putString(b0(strG0), strB).commit();
        }
    }

    public final LinkedHashMap p(String str, Map map, Map map2, String... strArr) {
        k0 k0Var = (k0) this.f38a;
        return p5.u1(k0Var.f904d.j(map, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), str, map2), strArr));
    }

    public final synchronized void w(String str) {
        String strG0 = g0(str);
        if (!strG0.isEmpty()) {
            ((SharedPreferences) this.f39b).edit().remove(b0(strG0)).remove(k0(strG0)).remove(q0(strG0)).commit();
        }
    }

    public e(k0 k0Var) {
        this.f38a = k0Var;
        Context context = k0Var.f901a;
        this.f39b = context == null ? null : new m.e(6, context);
    }

    public e(File file) {
        if (!file.exists() && !file.mkdirs()) {
            throw new IllegalStateException("offline_cache_directory_failed");
        }
        this.f38a = new AtomicFile(new File(file, "active.json"));
        this.f39b = new AtomicFile(new File(file, "backup.json"));
    }

    public /* synthetic */ e(Serializable serializable, String str) {
        this.f38a = str;
        this.f39b = serializable;
    }

    public /* synthetic */ e(Object obj, Object obj2) {
        this.f39b = obj;
        this.f38a = obj2;
    }
}
