package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f1375e;

    public t(int i2, Context context) {
        if (i2 == 2) {
            this.f1374d = new ConcurrentHashMap();
            this.f1375e = new ConcurrentHashMap();
            this.f1371a = new com.sgscq.vpn.cloud.z(context);
            this.f1372b = new m.e(5, context);
            this.f1373c = new com.sgscq.vpn.cloud.b0(1, context);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f1371a = applicationContext;
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("sgscq_player_v5", 0);
        this.f1372b = sharedPreferences;
        this.f1373c = new m4(applicationContext);
        s sVar = new s(this, 0);
        this.f1374d = sVar;
        sharedPreferences.registerOnSharedPreferenceChangeListener(sVar);
    }

    public static boolean a(Map map) {
        return Boolean.TRUE.equals(map.get("is_accepted")) || c.a.B(map, "status", "0", "1") || c.a.B(map, "is_attach_get", "0", "1");
    }

    public static String d(Map map) {
        String[] strArr = {"pk_id", "mail_id", "email_id", "id"};
        for (int i2 = 0; i2 < 4; i2++) {
            Object obj = map.get(strArr[i2]);
            if (obj != null && !String.valueOf(obj).trim().isEmpty()) {
                return String.valueOf(obj).trim();
            }
        }
        return "";
    }

    public static boolean f(int i2) {
        return i2 > 0;
    }

    public static LinkedHashSet g(Object obj) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (!(obj instanceof List)) {
            return linkedHashSet;
        }
        for (Object obj2 : (List) obj) {
            if (obj2 == null) {
                obj2 = "";
            }
            String strTrim = String.valueOf(obj2).trim();
            if (!strTrim.isEmpty()) {
                linkedHashSet.add(strTrim);
            }
        }
        return linkedHashSet;
    }

    public final boolean b(String str) {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = ((m.e) this.f1372b).y();
        return cloudSessionStore$SessionDataY.isLoggedIn() && ((com.sgscq.vpn.cloud.b0) this.f1373c).f(cloudSessionStore$SessionDataY.afdianUserId).a(cloudSessionStore$SessionDataY.afdianUserId, str);
    }

    public final LinkedHashMap c(String str) {
        LinkedHashMap linkedHashMapL;
        m4 m4Var = (m4) this.f1373c;
        m4Var.getClass();
        if ("active".equals((str == null || str.isEmpty()) ? "active" : m4Var.f1194b.getString(com.sgscq.vpn.handler.l.a("passport_", str, "_status"), "active")) && (linkedHashMapL = y5.l((Context) this.f1371a, (SharedPreferences) this.f1372b, str)) != null && h5.q0(linkedHashMapL)) {
            return linkedHashMapL;
        }
        return null;
    }

    public final void e(String str, int i2) {
        LinkedHashMap linkedHashMapC;
        if (str == null || str.isEmpty() || (linkedHashMapC = c(str)) == null) {
            return;
        }
        linkedHashMapC.put("ladder_rank", Integer.valueOf(i2));
        linkedHashMapC.put("ladder_best_rank", Integer.valueOf(Math.min(p7.j(linkedHashMapC.get("ladder_best_rank"), 1001), i2)));
        try {
            y5.p((Context) this.f1371a, (SharedPreferences) this.f1372b, str, linkedHashMapC);
        } catch (Exception e2) {
            c.a.D(e2, a.b0.b("Failed to save ladder rank uid=", str, ": "), "SGSCQ_ROBOT");
        }
    }

    public final com.sgscq.vpn.cloud.g0 h(String str, Map map) {
        if (!b(str)) {
            return new com.sgscq.vpn.cloud.g0(Collections.emptyList(), false);
        }
        Object obj = this.f1371a;
        com.sgscq.vpn.cloud.z zVar = (com.sgscq.vpn.cloud.z) obj;
        zVar.getClass();
        a.t tVarX = com.sgscq.vpn.cloud.z.x(zVar.a("GET", "/reward-mails", null, "application/json", Collections.emptyMap()).a());
        a.q qVarM = tVarX.m("mails");
        a.q qVarM2 = tVarX.m("revoked_mail_ids");
        if (qVarM == null || !(qVarM instanceof a.p) || qVarM2 == null || !(qVarM2 instanceof a.p)) {
            throw new IllegalArgumentException("云奖励邮件响应不完整");
        }
        List<Map> listV = com.sgscq.vpn.cloud.z.v(tVarX, "mails");
        ArrayList arrayList = new ArrayList();
        for (a.q qVar : qVarM2.e()) {
            qVar.getClass();
            if (!(qVar instanceof a.x)) {
                throw new IllegalArgumentException("云奖励撤回 ID 格式错误");
            }
            String strTrim = qVar.i().trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(strTrim);
            }
        }
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        int iT = com.sgscq.vpn.cloud.z.t(tVarX, "pending_count", listV.size());
        if (listUnmodifiableList == null) {
            listUnmodifiableList = Collections.emptyList();
        }
        Math.max(0, iT);
        Object obj2 = map.get("email_list");
        if (!(obj2 instanceof List)) {
            obj2 = map.get("mail_list");
        }
        ArrayList arrayList2 = obj2 instanceof List ? new ArrayList((List) obj2) : new ArrayList();
        LinkedHashSet linkedHashSetG = g(map.get("_cloud_platform_reward_delivery_ids"));
        LinkedHashSet linkedHashSetG2 = g(map.get("claimed_gift_ids"));
        Iterator it = arrayList2.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if ((next instanceof Map) && linkedHashSetG2.contains(d((Map) next))) {
                it.remove();
                z = true;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj3 : arrayList2) {
            if (obj3 instanceof Map) {
                Map map2 = (Map) obj3;
                String strD = d(map2);
                if (!strD.isEmpty()) {
                    linkedHashMap.put(strD, map2);
                }
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map map3 : listV) {
            String strD2 = d(map3);
            if (strD2 != null && strD2.startsWith("platform_reward_")) {
                if (linkedHashSetG2.contains(strD2)) {
                    linkedHashSetG.add(strD2);
                } else {
                    Map map4 = (Map) linkedHashMap.get(strD2);
                    if (!linkedHashSetG.contains(strD2)) {
                        if (map4 == null) {
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap(map3);
                            arrayList2.add(linkedHashMap2);
                            linkedHashMap.put(strD2, linkedHashMap2);
                        }
                        linkedHashSetG.add(strD2);
                        z = true;
                    } else if (map4 == null || a(map4)) {
                        linkedHashSet.add(strD2);
                    }
                }
            }
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(listUnmodifiableList);
        if (!linkedHashSet2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Object next2 = it2.next();
                if (next2 instanceof Map) {
                    Map map5 = (Map) next2;
                    if (linkedHashSet2.contains(d(map5)) && !a(map5)) {
                        it2.remove();
                        z = true;
                    }
                }
            }
        }
        if (z) {
            map.put("email_list", arrayList2);
            map.remove("mail_list");
            map.put("_cloud_platform_reward_delivery_ids", new ArrayList(linkedHashSetG));
        }
        ArrayList arrayList3 = new ArrayList(linkedHashSet);
        com.sgscq.vpn.cloud.g0 g0Var = new com.sgscq.vpn.cloud.g0(arrayList3, z);
        if (!arrayList3.isEmpty()) {
            try {
                ((com.sgscq.vpn.cloud.z) obj).h(arrayList3);
            } catch (Exception unused) {
            }
        }
        return g0Var;
    }

    public final synchronized com.sgscq.vpn.cloud.g0 i(int i2, String str, Map map) {
        String str2 = str == null ? "" : str;
        try {
            if (!(i2 > 0)) {
                ((Map) this.f1374d).remove(str2);
                ((Map) this.f1375e).remove(str2);
                return new com.sgscq.vpn.cloud.g0(Collections.emptyList(), false);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l2 = (Long) ((Map) this.f1374d).get(str2);
            Integer num = (Integer) ((Map) this.f1375e).get(str2);
            if (l2 != null && num != null && num.intValue() == i2 && jCurrentTimeMillis - l2.longValue() < 30000) {
                return new com.sgscq.vpn.cloud.g0(Collections.emptyList(), false);
            }
            ((Map) this.f1374d).put(str2, Long.valueOf(jCurrentTimeMillis));
            ((Map) this.f1375e).put(str2, Integer.valueOf(i2));
            return h(str, map);
        } catch (Throwable th) {
            throw th;
        }
    }

    public t(com.sgscq.vpn.cloud.e0 e0Var, com.sgscq.vpn.config.h hVar, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, com.sgscq.vpn.config.e eVar) {
        this.f1371a = e0Var;
        this.f1372b = hVar;
        this.f1373c = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
        this.f1374d = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap2));
        this.f1375e = eVar;
    }

    public t(HashSet hashSet, List list, List list2, ArrayList arrayList, HashSet hashSet2) {
        this.f1371a = hashSet;
        this.f1372b = list;
        this.f1373c = list2;
        this.f1374d = arrayList;
        this.f1375e = hashSet2;
    }
}
