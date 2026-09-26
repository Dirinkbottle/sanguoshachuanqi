package com.sgscq.vpn.cloud;

import android.content.Context;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.d3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.e f331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b0 f332c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d3 f334e = new d3();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f333d = c7.f();

    public f0(Context context) {
        this.f330a = new z(context);
        this.f331b = new m.e(5, context);
        this.f332c = new b0(1, context);
    }

    public static LinkedHashMap d(long j2) {
        LinkedHashMap linkedHashMapQ = c.a.q("user_id", "0");
        linkedHashMapQ.put("channel", 1);
        linkedHashMapQ.put("vip_level", 0);
        linkedHashMapQ.put("nickname", "系统");
        linkedHashMapQ.put("message", "爱发电帐号已在其他设备登录，当前云功能已下线。");
        linkedHashMapQ.put("time", Long.valueOf(j2));
        return linkedHashMapQ;
    }

    public static ArrayList e(g gVar) {
        ArrayList arrayList = new ArrayList();
        List<h> list = (List) gVar.f337c;
        if (list != null) {
            for (h hVar : list) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("user_id", hVar.f342b);
                linkedHashMap.put("channel", Integer.valueOf(hVar.f343c));
                linkedHashMap.put("vip_level", Integer.valueOf(hVar.f344d));
                linkedHashMap.put("nickname", hVar.f345e);
                linkedHashMap.put("message", hVar.f346f);
                linkedHashMap.put("time", Long.valueOf(hVar.f347g));
                arrayList.add(linkedHashMap);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x007c  */
    public final com.sgscq.vpn.battle.a a(String str) {
        a.p<a.q> pVarN;
        LinkedHashMap linkedHashMapQ = null;
        if (!b(str)) {
            return new com.sgscq.vpn.battle.a(new ArrayList(), (g) null, 0);
        }
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f331b.y();
        z zVar = this.f330a;
        long jB = this.f332c.b(cloudSessionStore$SessionDataY.afdianUserId);
        long j2 = this.f333d;
        zVar.getClass();
        a.t tVarX = z.x(zVar.a("GET", "/chat/messages?after_id=" + Math.max(0L, jB) + "&since_ms=" + Math.max(0L, j2) + "&limit=20&wait_seconds=2&poll_seconds=2", null, "application/json", Collections.emptyMap()).a());
        if (tVarX.o("messages")) {
            a.q qVarM = tVarX.m("messages");
            qVarM.getClass();
            if (qVarM instanceof a.p) {
                pVarN = tVarX.n("messages");
            } else {
                pVarN = null;
            }
        } else {
            pVarN = null;
        }
        ArrayList arrayList = new ArrayList();
        if (pVarN != null) {
            for (a.q qVar : pVarN) {
                qVar.getClass();
                if (qVar instanceof a.t) {
                    arrayList.add(z.y(qVar.f()));
                }
            }
        }
        a.q qVarM2 = tVarX.m("guild_state");
        g gVarE = (qVarM2 == null || !(qVarM2 instanceof a.t)) ? null : z.E(qVarM2.toString());
        long jU = z.u(tVarX, "next_cursor", 0L);
        g gVar = new g(arrayList, jU, gVarE, z.t(tVarX, "pending_reward_count", 0));
        b0 b0Var = this.f332c;
        String str2 = cloudSessionStore$SessionDataY.afdianUserId;
        synchronized (b0Var) {
            String strN = b0.n(str2);
            if (!strN.isEmpty() && jU > b0Var.b(strN)) {
                b0Var.f287b.edit().putLong(b0.a(strN) + "chat_cursor", jU).apply();
            }
        }
        ArrayList arrayListE = e(gVar);
        long jE = this.f332c.e(cloudSessionStore$SessionDataY.afdianUserId);
        int i2 = gVarE == null ? 0 : gVarE.f335a;
        long j3 = gVarE != null ? gVarE.f336b : 0L;
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        if (i2 > 0 && j3 > jE) {
            linkedHashMapQ = c.a.q("user_id", "0");
            linkedHashMapQ.put("channel", 2);
            linkedHashMapQ.put("vip_level", 0);
            linkedHashMapQ.put("nickname", "系统");
            linkedHashMapQ.put("message", "有" + i2 + "条入会申请待处理，请进入公会的入会申请页面处理。");
            linkedHashMapQ.put("time", Long.valueOf(jCurrentTimeMillis));
        }
        if (linkedHashMapQ != null) {
            arrayListE.add(linkedHashMapQ);
            b0 b0Var2 = this.f332c;
            String str3 = cloudSessionStore$SessionDataY.afdianUserId;
            long j4 = gVarE.f336b;
            synchronized (b0Var2) {
                String strN2 = b0.n(str3);
                if (!strN2.isEmpty() && j4 > b0Var2.e(strN2)) {
                    b0Var2.f287b.edit().putLong(b0.a(strN2) + "guild_application_cursor", j4).apply();
                }
            }
        }
        return new com.sgscq.vpn.battle.a(arrayListE, gVarE, gVar.f335a);
    }

    public final boolean b(String str) {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f331b.y();
        return cloudSessionStore$SessionDataY.isLoggedIn() && this.f332c.f(cloudSessionStore$SessionDataY.afdianUserId).a(cloudSessionStore$SessionDataY.afdianUserId, str);
    }

    public final com.sgscq.vpn.battle.d c(int i2, String str, String str2, String str3) {
        if (!b(str)) {
            throw new a0(403, 0, "cloud_character_required", "只有当前云端角色可以使用跨服聊天");
        }
        synchronized (this.f334e) {
            LinkedHashMap linkedHashMapB = this.f334e.b(str, System.nanoTime() / 1000000, i2, str2);
            if (linkedHashMapB != null) {
                return new com.sgscq.vpn.battle.d(linkedHashMapB, true);
            }
            h hVarY = this.f330a.Y(str2, i2, str3);
            ArrayList arrayListE = e(new g(Collections.singletonList(hVarY), hVarY.f341a, (g) null, 0));
            Map linkedHashMap = arrayListE.isEmpty() ? new LinkedHashMap() : (Map) arrayListE.get(0);
            d3 d3Var = this.f334e;
            long jNanoTime = System.nanoTime() / 1000000;
            d3Var.getClass();
            String str4 = "";
            if (str != null) {
                str4 = str;
            }
            d3Var.f631d = str4;
            d3Var.f628a = i2;
            d3Var.f632e = str2;
            d3Var.f630c = new LinkedHashMap(linkedHashMap);
            d3Var.f629b = jNanoTime;
            return new com.sgscq.vpn.battle.d(linkedHashMap, false);
        }
    }
}
