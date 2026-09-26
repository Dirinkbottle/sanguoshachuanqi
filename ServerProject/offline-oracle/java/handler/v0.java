package com.sgscq.vpn.handler;

import android.content.Context;
import com.sgscq.vpn.a7;
import com.sgscq.vpn.battle.BattleResult;
import com.sgscq.vpn.battle.BattleScenario;
import com.sgscq.vpn.battle.BattleStarCalculator;
import com.sgscq.vpn.battle.BattleUnit;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.w1;
import com.sgscq.vpn.z2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f1010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.e f1011b;

    public v0(k0 k0Var) {
        this.f1010a = k0Var;
        Context context = k0Var.f901a;
        this.f1011b = context == null ? null : new m.e(6, context);
    }

    public static int A(int i2, Map map) {
        int iL2;
        String[] strArr = {"user_level", "level", "player_level"};
        for (int i3 = 0; i3 < 3; i3++) {
            Object obj = map.get(strArr[i3]);
            if (obj != null && (iL2 = w1.l2(String.valueOf(obj), 0)) > 0) {
                return iL2;
            }
        }
        return i2;
    }

    public static void a(ArrayList arrayList) {
        if ("".isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (map != null) {
                map.put("general_id", "");
                map.put("general_skin", "");
                map.put("user_general_skin", "");
                map.put("head", "");
                map.put("avatar", "");
            }
        }
    }

    public static void b(LinkedHashMap linkedHashMap, String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6) {
        Object obj = linkedHashMap.get("init");
        if (obj instanceof Map) {
            Map map = (Map) obj;
            ArrayList arrayList = new ArrayList();
            Object obj2 = map.get("info");
            if (obj2 instanceof List) {
                for (Object obj3 : (List) obj2) {
                    if (obj3 instanceof Map) {
                        arrayList.add(new LinkedHashMap((Map) obj3));
                    } else {
                        arrayList.add(new LinkedHashMap());
                    }
                }
            }
            while (arrayList.size() < 2) {
                arrayList.add(new LinkedHashMap());
            }
            q((Map) arrayList.get(0), str, "Player", str3, i2, str5);
            q((Map) arrayList.get(1), str2, "对手", str4, i3, str6);
            map.put("info", arrayList);
            map.put("skipRounds", 1);
        }
    }

    public static LinkedHashMap d(String str) {
        String strM = m(str);
        String strR = r(strM);
        LinkedHashMap linkedHashMapX = x();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList());
        arrayList.add(new ArrayList());
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(p5.z0("id", "112001", "hpCur", 1000, "hpMax", 1000, "name", "Player"));
        arrayList2.add(p5.z0("id", p5.i1(strR.hashCode()), "hpCur", 800, "hpMax", 800, "name", strR));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(p5.z0("round", 1, "from", p5.v0(0), "to", p5.v0(1), "skill", "attack", "hurt", 800, "hp", 0, "dead", 1));
        LinkedHashMap linkedHashMapZ0 = p5.z0("init", p5.z0("first", 0, "roundMax", 15, "cards_size0", 1, "cards_size1", 1, "backups_size0", 0, "backups_size1", 0, "info", arrayList, "cards", arrayList2, "roundCur", 1, "skipRounds", 0), "rounds", arrayList3);
        b(linkedHashMapZ0, "Player", strR, "100001", strM, 1, 1, "112001", String.valueOf(((Map) arrayList2.get(1)).get("id")));
        linkedHashMapX.put("fight_info", linkedHashMapZ0);
        linkedHashMapX.put("fight_result", p5.z0("success", Boolean.TRUE, "fight_type", 6, "fight_calculate_info", p5.z0("star_level", 3, "rounds", 3, "residue_team_num", 1, "residue_team_percent", 100), "player_info", com.sgscq.vpn.cloud.m0.T1(com.sgscq.vpn.cloud.m0.F2(1, "100001", "Player", "112001"), com.sgscq.vpn.cloud.m0.F2(1, strM, strR, "112001")), "drop_info", new LinkedHashMap(), "add_list", new ArrayList(), "show_general_info", new ArrayList()));
        return linkedHashMapX;
    }

    public static LinkedHashMap e(Map map, v5 v5Var, String str) {
        String str2;
        Iterator it;
        Map map2;
        w1 w1VarA1 = w1.a1(null);
        ArrayList arrayList = new ArrayList(w1.f0("TeamGeneral", map));
        Collections.sort(arrayList, new c.n(5));
        List listF0 = w1.f0("General", map);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Map map3 = (Map) it2.next();
            int iY = y(map3);
            if (iY > 0 && iY != Integer.MAX_VALUE) {
                String strJ = c.a.j(map3, "pk_id", "", "general_pk_id");
                if (strJ.isEmpty() || !linkedHashSet.add(strJ)) {
                    it = it2;
                } else {
                    Iterator it3 = listF0.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            it = it2;
                            map2 = null;
                            break;
                        }
                        it = it2;
                        map2 = (Map) it3.next();
                        if (c.a.C(map2, "general_pk_id", "", "pk_id", strJ)) {
                            break;
                        }
                        it2 = it;
                    }
                    if (map2 != null && !Boolean.TRUE.equals(map2.get("story_guest"))) {
                        String strJ2 = c.a.j(map2, "id", "112001", "general_id");
                        String strValueOf = String.valueOf(map2.getOrDefault("general_name", map.getOrDefault("user_nickname", "玩家")));
                        e eVar = new e(strJ2, 0, arrayList2.size());
                        eVar.f812d = map2;
                        eVar.f813e = map;
                        eVar.f814f = w1VarA1;
                        eVar.f815g = strValueOf;
                        eVar.a(300.0d, 100.0d, 100.0d);
                        arrayList2.add(f.a(eVar));
                    }
                }
                it2 = it;
            }
        }
        if (arrayList2.isEmpty()) {
            e eVar2 = new e("112001", 0, 0);
            eVar2.f814f = w1VarA1;
            eVar2.f815g = String.valueOf(map.getOrDefault("user_nickname", "玩家"));
            eVar2.a(300.0d, 100.0d, 100.0d);
            arrayList2.add(f.a(eVar2));
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it4 = v5Var.f().iterator();
        while (true) {
            boolean zHasNext = it4.hasNext();
            str2 = v5Var.f1460b;
            if (!zHasNext) {
                break;
            }
            Map map4 = (Map) it4.next();
            e eVar3 = new e(String.valueOf(map4.getOrDefault("general_id", "112001")), 1, arrayList3.size());
            eVar3.f812d = map4;
            eVar3.f814f = w1VarA1;
            eVar3.f815g = str2;
            eVar3.a(300.0d, 100.0d, 100.0d);
            arrayList3.add(f.a(eVar3));
        }
        boolean zIsEmpty = arrayList3.isEmpty();
        String str3 = v5Var.f1459a;
        if (zIsEmpty) {
            return d(str3);
        }
        o.h hVarA = o.h.a();
        w1VarA1.getClass();
        BattleResult battleResultB = hVarA.b(new BattleScenario(arrayList2, arrayList3, null, w1.B(map), Math.max(1, v5Var.k())));
        Iterator it5 = arrayList2.iterator();
        int i2 = 0;
        while (it5.hasNext()) {
            if (((BattleUnit) it5.next()).isAlive()) {
                i2++;
            }
        }
        int iMax = Math.max(1, arrayList2.size());
        String strValueOf2 = String.valueOf(map.getOrDefault("user_nickname", "Player"));
        String id = arrayList2.isEmpty() ? "112001" : ((BattleUnit) arrayList2.get(0)).getId();
        Map<String, Object> fightInfo = battleResultB.getFightInfo();
        LinkedHashMap linkedHashMap = fightInfo == null ? new LinkedHashMap() : new LinkedHashMap(fightInfo);
        b(linkedHashMap, strValueOf2, v5Var.f1460b, str, v5Var.f1459a, p(map), v5Var.f1461c, id, v5Var.f1475q);
        LinkedHashMap linkedHashMapX = x();
        linkedHashMapX.put("fight_info", linkedHashMap);
        linkedHashMapX.put("fight_result", p5.z0("success", Boolean.valueOf(battleResultB.isSuccess()), "fight_type", 6, "fight_calculate_info", p5.z0("star_level", Integer.valueOf(BattleStarCalculator.calculate(battleResultB.isSuccess(), i2, iMax)), "rounds", Integer.valueOf(Math.max(1, battleResultB.getRoundCount())), "residue_team_num", Integer.valueOf(Math.max(0, i2)), "residue_team_percent", Integer.valueOf(BattleStarCalculator.ceilPercent(i2, iMax))), "player_info", com.sgscq.vpn.cloud.m0.T1(com.sgscq.vpn.cloud.m0.F2(p(map), str, strValueOf2, id), com.sgscq.vpn.cloud.m0.F2(v5Var.f1461c, str3, str2, v5Var.f1475q)), "drop_info", new LinkedHashMap(), "add_list", new ArrayList(), "show_general_info", new ArrayList()));
        return linkedHashMapX;
    }

    public static Map f(LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get("delta_data");
        return obj instanceof Map ? (Map) obj : new LinkedHashMap();
    }

    public static LinkedHashMap g(String str) {
        String str2;
        LinkedHashMap linkedHashMapX = x();
        if ("relationship.userMakeFriendsInfo".equals(str)) {
            str2 = "user_make_friends";
        } else if ("relationship.userFriendsInfo".equals(str)) {
            str2 = "friends";
        } else {
            str2 = "relationship.userEnemysInfo".equals(str) ? "enemys" : "search_user";
        }
        linkedHashMapX.put("return_info", p5.z0(str2, new ArrayList(), new Object[0]));
        return linkedHashMapX;
    }

    public static Map h(String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (c.a.C(map, "id", "", "user_id", str)) {
                return map;
            }
        }
        return null;
    }

    public static boolean j(String str) {
        return "relationship.userMakeFriendsInfo".equals(str) || "relationship.userFriendsInfo".equals(str) || "relationship.userEnemysInfo".equals(str) || "relationship.searchUser".equals(str);
    }

    public static LinkedHashSet l(LinkedHashMap linkedHashMap) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : String.valueOf(linkedHashMap.getOrDefault("cmn_modules", "")).split(",")) {
            if (!str.trim().isEmpty()) {
                linkedHashSet.add(str.trim());
            }
        }
        return linkedHashSet;
    }

    public static String m(String str) {
        return (str == null || str.trim().isEmpty()) ? "200001" : str.trim();
    }

    public static LinkedHashMap n(String str) {
        Boolean bool = Boolean.FALSE;
        LinkedHashMap linkedHashMapZ0 = p5.z0("ret", -1, "code", -1, "result", bool, "msg", str, "error_code", -1);
        linkedHashMapZ0.put("return_info", p5.z0("success", bool, "msg", str));
        return linkedHashMapZ0;
    }

    public static LinkedHashMap o() {
        LinkedHashMap linkedHashMapX = x();
        linkedHashMapX.put("return_info", p5.z0("success", Boolean.TRUE, new Object[0]));
        return linkedHashMapX;
    }

    public static int p(Map map) {
        Object obj = map.get("user_level");
        if (obj instanceof Number) {
            return Math.max(1, ((Number) obj).intValue());
        }
        try {
            return Math.max(1, Integer.parseInt(String.valueOf(obj)));
        } catch (Exception unused) {
            return 1;
        }
    }

    public static void q(Map map, String str, String str2, String str3, int i2, String str4) {
        if (str == null || str.trim().isEmpty()) {
            str = str2;
        }
        map.put("userName", str);
        map.put("name", str);
        map.put("nickname", str);
        map.put("player_name", str);
        map.put("user_id", str3);
        map.put("user_level", Integer.valueOf(i2));
        map.put("level", Integer.valueOf(i2));
        map.put("general_id", str4);
        map.put("general_skin", str4);
        map.put("user_general_skin", str4);
        map.put("teamLeader", str4);
        map.put("team_leader", str4);
        map.put("head", str4);
        map.put("avatar", str4);
    }

    public static String r(String str) {
        if ("200001".equals(str)) {
            return "GuestA";
        }
        if ("200002".equals(str)) {
            return "GuestB";
        }
        return "300001".equals(str) ? "FoeA" : c.a.i("Guest", str);
    }

    public static LinkedHashSet s(String str, Map map) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = t(str, map).iterator();
        while (it.hasNext()) {
            String strJ = c.a.j((Map) it.next(), "id", "", "user_id");
            if (!strJ.isEmpty()) {
                linkedHashSet.add(strJ);
            }
        }
        return linkedHashSet;
    }

    public static List t(String str, Map map) {
        Object obj = map.get(str);
        return obj instanceof List ? (List) obj : c.a.o(map, str);
    }

    public static void u(String str, List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            if (str.equals(String.valueOf(((Map) list.get(size)).getOrDefault("user_id", ((Map) list.get(size)).getOrDefault("id", ""))))) {
                list.remove(size);
            }
        }
    }

    public static LinkedHashMap v(v5 v5Var, int i2, boolean z) {
        LinkedHashMap linkedHashMapM = v5Var.m(i2);
        String str = v5Var.f1459a;
        linkedHashMapM.put("id", str);
        linkedHashMapM.put("user_id", str);
        String str2 = v5Var.f1460b;
        linkedHashMapM.put("name", str2);
        linkedHashMapM.put("user_name", str2);
        int i3 = v5Var.f1461c;
        linkedHashMapM.put("level", Integer.valueOf(i3));
        linkedHashMapM.put("user_level", Integer.valueOf(i3));
        linkedHashMapM.put("isInvited", Boolean.valueOf(z));
        linkedHashMapM.put("type", 0);
        return linkedHashMapM;
    }

    public static void w(ArrayList arrayList, Map map, LinkedHashMap linkedHashMap) {
        if (Boolean.TRUE.equals(linkedHashMap.get("result"))) {
            Map mapF = f(linkedHashMap);
            LinkedHashSet linkedHashSetL = l(linkedHashMap);
            j jVarC = y0.c(arrayList, map);
            jVarC.b(linkedHashMap);
            jVarC.a(mapF, linkedHashSetL);
            if (!mapF.isEmpty()) {
                linkedHashMap.put("delta_data", mapF);
            }
            if (linkedHashSetL.isEmpty()) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            Iterator it = linkedHashSetL.iterator();
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

    public static LinkedHashMap x() {
        return p5.z0("ret", 0, "code", 0, "result", Boolean.TRUE, "msg", "success", "error_code", 0);
    }

    public static int y(Map map) {
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

    public static LinkedHashMap z(String str, String str2, int i2, boolean z, int i3) {
        return p5.z0("id", str, "user_id", str, "name", str2, "user_name", str2, "level", Integer.valueOf(i2), "user_level", Integer.valueOf(i2), "user_vip_level", 0, "general_id", p5.j1(str.hashCode()), "isInvited", Boolean.valueOf(z), "type", Integer.valueOf(i3));
    }

    public final LinkedHashMap c(String str, Map map, Map map2, LinkedHashSet linkedHashSet) {
        k0 k0Var = this.f1010a;
        return p5.u1(k0Var.f904d.j(map, k0Var.f904d.t((int) c7.g(), k0Var.i(k0Var.c(), "user_gold", map2), k0Var.i(k0Var.b(), "user_energy", map2), k0Var.i(k0Var.d(), "user_power", map2), k0Var.j(k0Var.a(), map2), str, map2), (String[]) linkedHashSet.toArray(new String[0])));
    }

    public final byte[] i(String str, Map map) {
        p7 p7VarH;
        LinkedHashMap linkedHashMapX;
        LinkedHashMap linkedHashMapO;
        int iMax;
        LinkedHashMap linkedHashMapO2;
        int i2;
        int i3;
        ArrayList arrayList;
        ArrayList arrayList2;
        v5 v5VarG;
        LinkedHashMap linkedHashMapG;
        LinkedHashMap linkedHashMapX2;
        LinkedHashMap linkedHashMapZ0;
        LinkedHashMap linkedHashMapZ1;
        if (!(str != null && str.startsWith("relationship."))) {
            return null;
        }
        k0 k0Var = this.f1010a;
        String strE = k0Var.e(map);
        h5 h5Var = k0Var.f904d;
        Map mapW0 = h5Var.w0(strE);
        if (mapW0 == null) {
            mapW0 = new LinkedHashMap();
        }
        Map map2 = mapW0;
        if ("relationship.debugRescueFight".equals(str)) {
            LinkedHashMap linkedHashMapZ2 = com.sgscq.vpn.cloud.m0.Z2();
            linkedHashMapZ2.put("cmn", c(strE, f(linkedHashMapZ2), map2, l(linkedHashMapZ2)));
            return k0Var.n(p5.s1(linkedHashMapZ2));
        }
        m.e eVar = this.f1011b;
        if (eVar != null) {
            if (eVar.w(strE)) {
                try {
                    if ("relationship.userMakeFriendsInfo".equals(str)) {
                        LinkedHashMap linkedHashMapX3 = x();
                        linkedHashMapZ1 = p5.z0("user_make_friends", eVar.A(strE), new Object[0]);
                        linkedHashMapG = linkedHashMapX3;
                    } else {
                        if ("relationship.userFriendsInfo".equals(str)) {
                            ArrayList arrayListL = eVar.l(strE);
                            map2.put("relationship_friends", new ArrayList(arrayListL));
                            linkedHashMapX2 = x();
                            linkedHashMapZ0 = p5.z0("friends", arrayListL, new Object[0]);
                        } else if ("relationship.userEnemysInfo".equals(str)) {
                            linkedHashMapG = x();
                            linkedHashMapZ1 = p5.z0("enemys", new ArrayList(), new Object[0]);
                        } else if ("relationship.searchUser".equals(str)) {
                            linkedHashMapX2 = x();
                            linkedHashMapZ0 = p5.z0("search_user", eVar.G(strE, (String) map.getOrDefault("search_word", "")), new Object[0]);
                        } else if ("relationship.fight".equals(str)) {
                            linkedHashMapG = e(map2, eVar.g(strE, (String) map.getOrDefault("player_id", (String) map.getOrDefault("other_id", ""))), strE);
                        } else {
                            if ("relationship.requestFriend".equals(str)) {
                                String str2 = (String) map.getOrDefault("other_id", "");
                                eVar.E(strE);
                                com.sgscq.vpn.cloud.z zVar = (com.sgscq.vpn.cloud.z) eVar.f1805b;
                                zVar.getClass();
                                String strW = com.sgscq.vpn.cloud.z.w(str2);
                                LinkedHashMap linkedHashMap = new LinkedHashMap();
                                linkedHashMap.put("target_id", strW);
                                zVar.Z("/social/friend-requests", com.sgscq.vpn.cloud.z.f537c.i(linkedHashMap));
                            } else if ("relationship.replyRequest".equals(str)) {
                                String str3 = (String) map.getOrDefault("other_id", "");
                                boolean zEquals = "1".equals(map.getOrDefault("type", "1"));
                                int size = t("relationship_friends", map2).size();
                                eVar.C(strE, str3, zEquals);
                                LinkedHashMap linkedHashMapO3 = o();
                                if (zEquals) {
                                    ArrayList arrayListL2 = eVar.l(strE);
                                    map2.put("relationship_friends", new ArrayList(arrayListL2));
                                    if (arrayListL2.size() > size) {
                                        w(k(), map2, linkedHashMapO3);
                                    }
                                }
                                linkedHashMapG = linkedHashMapO3;
                            } else if ("relationship.delUserRelationship".equals(str)) {
                                String str4 = (String) map.getOrDefault("other_id", (String) map.getOrDefault("player_id", ""));
                                eVar.c(strE, str4);
                                u(str4, t("relationship_friends", map2));
                            }
                            linkedHashMapG = o();
                        }
                        LinkedHashMap linkedHashMap2 = linkedHashMapX2;
                        linkedHashMapZ1 = linkedHashMapZ0;
                        linkedHashMapG = linkedHashMap2;
                    }
                    linkedHashMapG.put("return_info", linkedHashMapZ1);
                } catch (Exception e2) {
                    StringBuilder sbB = a.b0.b("[CloudSocial] ", str, " failed: ");
                    sbB.append(e2.getMessage());
                    z2.g("SGSCQ_SRV", sbB.toString());
                    linkedHashMapG = j(str) ? g(str) : n(e2.getMessage() == null ? "云端好友功能暂时不可用" : e2.getMessage());
                }
            } else {
                linkedHashMapG = j(str) ? g(str) : n("只有当前云端角色可以使用好友和切磋功能");
            }
            linkedHashMapG.put("cmn", c(strE, f(linkedHashMapG), map2, l(linkedHashMapG)));
            h5Var.S0(strE, map2);
            return k0Var.n(p5.s1(linkedHashMapG));
        }
        Context context = k0Var.f901a;
        if (context == null) {
            p7VarH = null;
        } else {
            p7VarH = p7.h(context);
            p7VarH.i();
        }
        if ("relationship.userMakeFriendsInfo".equals(str)) {
            linkedHashMapX = x();
            if (p7VarH == null) {
                arrayList2 = new ArrayList();
                List<Map> listT = t("relationship_invited", map2);
                int iP = p(map2);
                arrayList2.add(z("200001", "GuestA", iP, h("200001", listT) != null, 0));
                arrayList2.add(z("200002", "GuestB", iP, h("200002", listT) != null, 0));
                for (Map map3 : listT) {
                    String strJ = c.a.j(map3, "id", "", "user_id");
                    if (h(strJ, arrayList2) == null) {
                        arrayList2.add(z(strJ, r(strJ), A(iP, map3), true, 0));
                    }
                }
                a(arrayList2);
            } else {
                ArrayList arrayList3 = new ArrayList();
                LinkedHashSet linkedHashSetS = s("relationship_friends", map2);
                LinkedHashSet<String> linkedHashSetS2 = s("relationship_invited", map2);
                for (v5 v5Var : p7VarH.o(p(map2), 5928228327973801806L, strE)) {
                    if (!linkedHashSetS.contains(v5Var.f1459a)) {
                        String str5 = v5Var.f1459a;
                        arrayList3.add(v(v5Var, p7VarH.v(str5), linkedHashSetS2.contains(str5)));
                    }
                }
                for (String str6 : linkedHashSetS2) {
                    if (!linkedHashSetS.contains(str6) && h(str6, arrayList3) == null && (v5VarG = p7VarH.g(str6)) != null) {
                        arrayList3.add(v(v5VarG, p7VarH.v(v5VarG.f1459a), true));
                    }
                }
                arrayList2 = arrayList3;
            }
            linkedHashMapX.put("return_info", p5.z0("user_make_friends", arrayList2, new Object[0]));
        } else if ("relationship.userFriendsInfo".equals(str)) {
            linkedHashMapX = x();
            if (p7VarH == null) {
                arrayList = new ArrayList();
                int iP2 = p(map2);
                arrayList.add(z("200001", "GuestA", iP2, false, 0));
                for (Map map4 : t("relationship_friends", map2)) {
                    String strJ2 = c.a.j(map4, "id", "", "user_id");
                    if (h(strJ2, arrayList) == null) {
                        arrayList.add(z(strJ2, r(strJ2), A(iP2, map4), false, 0));
                    }
                }
                a(arrayList);
                i3 = 0;
            } else {
                ArrayList arrayList4 = new ArrayList();
                for (Map map5 : t("relationship_friends", map2)) {
                    String strJ3 = c.a.j(map5, "id", "", "user_id");
                    if (!strJ3.isEmpty() && h(strJ3, arrayList4) == null) {
                        v5 v5VarG2 = p7VarH.g(strJ3);
                        arrayList4.add(v5VarG2 != null ? v(v5VarG2, p7VarH.v(v5VarG2.f1459a), false) : z(strJ3, String.valueOf(map5.getOrDefault("user_name", map5.getOrDefault("name", r(strJ3)))), A(p(map2), map5), false, 0));
                    }
                }
                i3 = 0;
                arrayList = arrayList4;
            }
            linkedHashMapX.put("return_info", p5.z0("friends", arrayList, new Object[i3]));
        } else if ("relationship.userEnemysInfo".equals(str)) {
            linkedHashMapX = x();
            ArrayList arrayList5 = new ArrayList();
            arrayList5.add(z("300001", "FoeA", 1, false, 2));
            linkedHashMapX.put("return_info", p5.z0("enemys", arrayList5, new Object[0]));
        } else if ("relationship.searchUser".equals(str)) {
            String str7 = (String) map.getOrDefault("search_word", "");
            linkedHashMapX = x();
            ArrayList arrayList6 = new ArrayList();
            String strTrim = str7 != null ? str7.trim() : "";
            if (strTrim.isEmpty() || "Player".toLowerCase().contains(strTrim.toLowerCase()) || "100001".equals(strTrim)) {
                arrayList6.add(z("100001", "Player", 1, false, 0));
                i2 = 0;
            } else {
                i2 = 0;
            }
            linkedHashMapX.put("return_info", p5.z0("search_user", arrayList6, new Object[i2]));
        } else {
            if ("relationship.fight".equals(str)) {
                String str8 = (String) map.getOrDefault("player_id", (String) map.getOrDefault("other_id", ""));
                v5 v5VarG3 = p7VarH == null ? null : p7VarH.g(str8);
                if (v5VarG3 == null && p7VarH != null) {
                    List listN = p7VarH.n(p(map2), 1, String.valueOf(str8).hashCode(), strE);
                    if (!listN.isEmpty()) {
                        v5VarG3 = (v5) listN.get(0);
                    }
                }
                linkedHashMapO2 = v5VarG3 == null ? d(str8) : e(map2, v5VarG3, strE);
            } else if ("relationship.requestFriend".equals(str)) {
                String strM = m((String) map.getOrDefault("other_id", ""));
                List listT2 = t("relationship_invited", map2);
                if (h(strM, listT2) == null) {
                    listT2.add(z(strM, r(strM), p(map2), true, 0));
                }
                map2.put("relationship_invited", listT2);
                linkedHashMapO2 = o();
            } else if ("relationship.replyRequest".equals(str)) {
                int size2 = t("relationship_friends", map2).size();
                String str9 = (String) map.getOrDefault("other_id", "");
                String str10 = (String) map.getOrDefault("type", "1");
                String strM2 = m(str9);
                if ("1".equals(String.valueOf(str10))) {
                    List listT3 = t("relationship_friends", map2);
                    if (h(strM2, listT3) == null) {
                        int size3 = listT3.size();
                        int iN2 = com.sgscq.vpn.cloud.m0.n2(map2);
                        int iMax2 = Math.max(0, Math.min(15, iN2));
                        if (iMax2 == 0) {
                            iMax = 20;
                        } else if (iMax2 == 1) {
                            iMax = 30;
                        } else {
                            iMax = iMax2 == 2 ? 40 : (iMax2 * 5) + 40;
                        }
                        Map mapD3 = com.sgscq.vpn.cloud.m0.d3(iN2, null);
                        if (mapD3 != null) {
                            iMax = Math.max(0, com.sgscq.vpn.cloud.m0.X1(mapD3.get("friend_limit"), iMax));
                        }
                        if (size3 >= iMax) {
                            linkedHashMapO = n("好友数量已达VIP上限");
                        }
                    }
                    if (h(strM2, listT3) == null) {
                        listT3.add(z(strM2, r(strM2), p(map2), false, 0));
                    }
                    map2.put("relationship_friends", listT3);
                    u(strM2, t("relationship_invited", map2));
                    linkedHashMapO = o();
                } else {
                    u(strM2, t("relationship_invited", map2));
                    linkedHashMapO = o();
                }
                if (("relationship.replyRequest".equals(str) && "1".equals(map.getOrDefault("type", "1"))) && t("relationship_friends", map2).size() > size2) {
                    w(k(), map2, linkedHashMapO);
                }
                linkedHashMapX = linkedHashMapO;
            } else if ("relationship.delUserRelationship".equals(str)) {
                u(m((String) map.getOrDefault("other_id", (String) map.getOrDefault("player_id", ""))), t("relationship_friends", map2));
                linkedHashMapX = o();
            } else {
                linkedHashMapX = x();
                linkedHashMapX.put("return_info", p5.z0("success", Boolean.TRUE, new Object[0]));
            }
            linkedHashMapX = linkedHashMapO2;
        }
        linkedHashMapX.put("cmn", c(strE, f(linkedHashMapX), map2, l(linkedHashMapX)));
        h5Var.S0(strE, map2);
        return k0Var.n(p5.s1(linkedHashMapX));
    }

    public final ArrayList k() {
        ArrayList arrayList = new ArrayList();
        try {
            a7 a7VarV1 = w1.a1(this.f1010a.f901a).V1();
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
}
