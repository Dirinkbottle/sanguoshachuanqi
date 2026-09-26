package com.sgscq.vpn.cloud;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.SettingsActivity;
import com.sgscq.vpn.a5;
import com.sgscq.vpn.d3;
import com.sgscq.vpn.d6;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.m4;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.p7;
import com.sgscq.vpn.y0;
import com.sgscq.vpn.y5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class q0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a.a f461k = new a.a(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.e f463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b0 f464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.sgscq.vpn.f0 f465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m4 f466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final l0 f467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b0 f468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c.e f469h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f470i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f471j;

    static {
        new ReentrantLock();
    }

    public q0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f470i = applicationContext;
        this.f462a = new z(applicationContext);
        this.f463b = new m.e(5, applicationContext);
        this.f464c = new b0(1, applicationContext);
        this.f465d = new com.sgscq.vpn.f0(applicationContext);
        this.f466e = new m4(applicationContext);
        this.f467f = new l0(applicationContext);
        this.f468g = new b0(2, applicationContext);
        this.f469h = new c.e(5, applicationContext);
    }

    public static String c(p0 p0Var) {
        if (p0Var == p0.NOT_LOGGED_IN) {
            return "请先登录爱发电";
        }
        if (p0Var == p0.LOCAL_EXISTS || p0Var == p0.SERVER_EXISTS) {
            return "当前账号已有云存档";
        }
        return p0Var == p0.UNKNOWN ? "无法确认云存档状态，请稍后重试" : "可以新建云存档";
    }

    public static void i(y0 y0Var, int i2, int i3, int i4) {
        synchronized (m0.class) {
            if (m0.f413a) {
                m0.f414b = i2 == 0 ? 1 : i2;
                m0.f415c = Math.max(0, i3);
                m0.f416d = Math.max(0, i4);
            }
        }
        int iMax = Math.max(0, i3);
        int iMax2 = Math.max(0, i4);
        SettingsActivity settingsActivity = (SettingsActivity) y0Var.f1543b;
        int i5 = SettingsActivity.Y;
        settingsActivity.getClass();
        settingsActivity.runOnUiThread(new d6(settingsActivity, i2, iMax, iMax2));
    }

    public static String l(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        if (!str.isEmpty() && !str2.isEmpty() && !str.equals(str2)) {
            throw new IllegalStateException("本地云存档与服务器绑定不一致");
        }
        if (!str.isEmpty()) {
            return str;
        }
        if (str2.isEmpty()) {
            throw new IllegalStateException("请先新建本人云存档空号");
        }
        return str2;
    }

    public final void a(d3 d3Var) {
        p7 p7VarH = p7.h(this.f470i);
        List list = (List) d3Var.f630c;
        if (list != null) {
            ArrayList arrayListD = p7.D(list);
            if (!p7VarH.f1308p) {
                p7VarH.i();
                p7.u.submit(new com.sgscq.vpn.d(p7VarH, arrayListD, 28));
                return;
            } else {
                synchronized (p7VarH.f1293a) {
                    p7VarH.y(arrayListD);
                    p7VarH.p(p7VarH.r ? p7VarH.f1303k : Collections.emptyList());
                }
                return;
            }
        }
        List list2 = (List) d3Var.f631d;
        if (list2 == null && ((List) d3Var.f632e) == null) {
            return;
        }
        List<String> list3 = (List) d3Var.f632e;
        ArrayList arrayListD2 = p7.D(list2);
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        if (list3 != null) {
            for (String str : list3) {
                String strTrim = str == null ? "" : str.trim();
                if (!p7.k(strTrim) || !hashSet.add(strTrim)) {
                    throw new IllegalArgumentException("云端对手删除 ID 无效");
                }
                arrayList.add(strTrim);
            }
        }
        if (p7VarH.f1308p) {
            synchronized (p7VarH.f1293a) {
                p7VarH.b(arrayListD2, arrayList);
            }
        } else {
            p7VarH.i();
            p7.u.submit(new com.sgscq.vpn.c(p7VarH, arrayListD2, arrayList, 11));
        }
    }

    public final d0 b() {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f463b.y();
        return cloudSessionStore$SessionDataY.isLoggedIn() ? this.f464c.f(cloudSessionStore$SessionDataY.afdianUserId) : new d0();
    }

    public final String d() {
        p0 p0Var;
        CloudSessionStore$SessionData cloudSessionStore$SessionDataK = k();
        String str = cloudSessionStore$SessionDataK.afdianUserId;
        m4 m4Var = this.f466e;
        boolean z = !m4Var.h(str).isEmpty();
        boolean z2 = this.f462a.s(cloudSessionStore$SessionDataK.afdianUserId) != null;
        p0 p0Var2 = p0.READY;
        if (z) {
            p0Var = p0.LOCAL_EXISTS;
        } else {
            p0Var = z2 ? p0.SERVER_EXISTS : p0Var2;
        }
        if (p0Var != p0Var2) {
            throw new IllegalStateException(c(p0Var));
        }
        String str2 = cloudSessionStore$SessionDataK.afdianUserId;
        if (!m4Var.h(str2).isEmpty()) {
            throw new IllegalStateException("当前账号已有云存档");
        }
        String strD = m4Var.d();
        try {
            c.e eVar = m4Var.f1197e;
            synchronized (eVar) {
                eVar.a0(strD, 7, c.e.b(str2));
            }
            m4Var.w(strD);
            if (strD.equals(m4Var.k())) {
                return strD;
            }
            throw new IllegalStateException("云存档切换失败");
        } catch (RuntimeException e2) {
            m4Var.e(strD);
            throw e2;
        }
    }

    public final void e() {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataK = k();
        x xVarS = this.f462a.s("");
        if (xVarS != null) {
            z zVar = this.f462a;
            String str = xVarS.f517a;
            zVar.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("X-Confirm-Cloud-Character", str);
            zVar.a("DELETE", "/cloud-slot", null, "application/json", linkedHashMap);
            this.f471j = false;
        }
        this.f464c.d(cloudSessionStore$SessionDataK.afdianUserId);
    }

    public final d0 f() {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataK = k();
        x xVarS = this.f462a.s(cloudSessionStore$SessionDataK.afdianUserId);
        if (xVarS == null) {
            this.f464c.d(cloudSessionStore$SessionDataK.afdianUserId);
            throw new a0(404, 0, "cloud_slot_not_found", "当前账号没有云端角色");
        }
        String strL = l(xVarS.f518b, this.f466e.h(cloudSessionStore$SessionDataK.afdianUserId));
        this.f465d.k(strL, cloudSessionStore$SessionDataK.afdianUserId);
        this.f471j = xVarS.f527k;
        this.f464c.i(cloudSessionStore$SessionDataK.afdianUserId, xVarS);
        long jN = y5.n(this.f465d.f675b, strL);
        z zVar = this.f462a;
        String str = cloudSessionStore$SessionDataK.afdianUserId;
        zVar.getClass();
        this.f464c.g(cloudSessionStore$SessionDataK.afdianUserId, xVarS, this.f465d.f(jN, strL, cloudSessionStore$SessionDataK.afdianUserId, zVar.n(str, Collections.emptyMap())));
        this.f469h.n(strL, cloudSessionStore$SessionDataK.afdianUserId);
        m(strL);
        return this.f464c.f(cloudSessionStore$SessionDataK.afdianUserId);
    }

    public final d0 g(int i2) throws a0 {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataK = k();
        x xVarS = this.f462a.s(cloudSessionStore$SessionDataK.afdianUserId);
        if (xVarS == null) {
            this.f464c.d(cloudSessionStore$SessionDataK.afdianUserId);
            throw new a0(404, 0, "cloud_slot_not_found", "当前账号没有云端角色");
        }
        String strL = l(xVarS.f518b, this.f466e.h(cloudSessionStore$SessionDataK.afdianUserId));
        this.f465d.k(strL, cloudSessionStore$SessionDataK.afdianUserId);
        this.f471j = xVarS.f527k;
        this.f464c.i(cloudSessionStore$SessionDataK.afdianUserId, xVarS);
        long jN = y5.n(this.f465d.f675b, strL);
        z zVar = this.f462a;
        String str = cloudSessionStore$SessionDataK.afdianUserId;
        zVar.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Idempotency-Key", UUID.randomUUID().toString());
        linkedHashMap.put("X-Cloud-Save-Schema", String.valueOf(2));
        this.f464c.g(cloudSessionStore$SessionDataK.afdianUserId, xVarS, this.f465d.f(jN, strL, cloudSessionStore$SessionDataK.afdianUserId, zVar.b("GET", "/cloud-slot/save/revision/" + i2, "application/octet-stream", "", str, linkedHashMap, null).f496a));
        this.f469h.n(strL, cloudSessionStore$SessionDataK.afdianUserId);
        m(strL);
        return this.f464c.f(cloudSessionStore$SessionDataK.afdianUserId);
    }

    public final ArrayList h() throws JSONException, a0 {
        String str = k().afdianUserId;
        z zVar = this.f462a;
        zVar.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("Idempotency-Key", UUID.randomUUID().toString());
        linkedHashMap.put("X-Cloud-Save-Schema", String.valueOf(2));
        String strA = zVar.b("GET", "/cloud-slot/versions", "application/json", "", str, linkedHashMap, null).a();
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = new JSONObject(strA).getJSONArray("nodes");
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i2);
            int iOptInt = jSONObject.optInt("revision");
            long jOptLong = jSONObject.optLong("created_at_ms");
            jSONObject.optInt("payload_size");
            arrayList.add(new w(iOptInt, jOptLong, jSONObject.optBoolean("is_active"), jSONObject.optInt("level"), (float) jSONObject.optDouble("fighting", 0.0d), jSONObject.optString("nickname", "")));
        }
        return arrayList;
    }

    public final d0 j() {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataK = k();
        x xVarS = this.f462a.s("");
        this.f471j = xVarS != null && xVarS.f527k;
        this.f464c.i(cloudSessionStore$SessionDataK.afdianUserId, xVarS);
        return this.f464c.f(cloudSessionStore$SessionDataK.afdianUserId);
    }

    public final CloudSessionStore$SessionData k() {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f463b.y();
        if (cloudSessionStore$SessionDataY.isLoggedIn()) {
            return cloudSessionStore$SessionDataY;
        }
        throw new a0(401, 0, "afdian_login_required", "请先登录爱发电");
    }

    public final void m(String str) {
        m4 m4Var = this.f466e;
        m4Var.w(str);
        if (str == null) {
            str = "";
        }
        if (!str.equals(m4Var.k())) {
            throw new IllegalStateException("云存档切换失败");
        }
    }

    public final int n(y0 y0Var) {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataK = k();
        if (!this.f464c.f(cloudSessionStore$SessionDataK.afdianUserId).a(cloudSessionStore$SessionDataK.afdianUserId, this.f466e.k())) {
            throw new IllegalStateException("请先上传或下载本人云存档");
        }
        k();
        a.a aVar = f461k;
        if (!((AtomicBoolean) aVar.f1b).compareAndSet(false, true)) {
            throw new a0(409, 0, "opponent_sync_in_progress", "其他玩家阵容正在同步，请等待当前同步完成");
        }
        synchronized (m0.class) {
            m0.f413a = true;
            m0.f414b = 1;
            m0.f415c = 0;
            m0.f416d = 0;
        }
        try {
            int iP = p(y0Var);
            synchronized (m0.class) {
                m0.f413a = false;
            }
            return iP;
        } finally {
            synchronized (m0.class) {
                m0.f413a = false;
                ((AtomicBoolean) aVar.f1b).set(false);
            }
        }
    }

    public final d3 o(y0 y0Var, long j2) {
        long j3;
        k0 k0VarD;
        boolean z;
        int i2;
        int iMax;
        int i3;
        d3 d3VarH;
        int i4;
        k0 k0VarB;
        g gVarI;
        l0 l0Var = this.f467f;
        synchronized (l0Var) {
            i0 i0VarT = l0Var.t(l0Var.f392d);
            j3 = (i0VarT == null || !i0VarT.f361h) ? 0L : i0VarT.f364k;
        }
        l0 l0Var2 = this.f467f;
        synchronized (l0Var2) {
            l0Var2.x();
            i0 i0VarT2 = l0Var2.t(l0Var2.f393e);
            if (i0VarT2 == null) {
                l0.z(l0Var2.f393e);
                i0VarT2 = i0.c(0L, l0Var2.f389a);
                l0Var2.E(l0Var2.f393e, i0VarT2);
            }
            k0VarD = i0VarT2.d();
        }
        int i5 = k0VarD.f377b;
        l0 l0Var3 = this.f467f;
        synchronized (l0Var3) {
            i0 i0VarT3 = l0Var3.t(l0Var3.f392d);
            z = i0VarT3 != null && i0VarT3.f361h && l0.h(i0VarT3);
        }
        boolean z2 = j3 <= 0 || z;
        boolean z3 = !z2 ? !("delta".equals(k0VarD.f379d) && k0VarD.f380e == j3) : !"full".equals(k0VarD.f379d) || k0VarD.f381f <= 0;
        int i6 = 2;
        if ((j2 < j3 || (z3 && k0VarD.f381f == j2)) ? z3 : false) {
            i6 = 2;
            i2 = 1;
            iMax = Math.max(i5, k0VarD.f377b);
            i(y0Var, 1, k0VarD.f377b, iMax);
            i3 = 0;
        } else {
            if (z2) {
                if (j2 >= 0) {
                    gVarI = this.f462a.r("", j2);
                } else {
                    z zVar = this.f462a;
                    zVar.getClass();
                    gVarI = z.I(zVar.a("GET", z.e(""), null, "application/json", Collections.emptyMap()).a());
                }
                l0 l0Var4 = this.f467f;
                long j4 = gVarI.f336b;
                synchronized (l0Var4) {
                    try {
                        if (j4 < 0) {
                            throw new IllegalArgumentException("云端对手目录代次无效");
                        }
                        l0.z(l0Var4.f393e);
                        i0 i0VarC = i0.c(j4, l0Var4.f389a);
                        l0Var4.E(l0Var4.f393e, i0VarC);
                        i0VarC.d();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                i4 = gVarI.f335a;
                k0VarB = this.f467f.c("", (String) gVarI.f338d, (List) gVarI.f337c);
            } else {
                if (j2 >= 0) {
                    d3VarH = this.f462a.q(j3, "", j2);
                } else {
                    z zVar2 = this.f462a;
                    zVar2.getClass();
                    if (j3 < 0) {
                        throw new IllegalArgumentException("云端对手目录代次无效");
                    }
                    d3VarH = z.H(zVar2.a("GET", "/opponents/changes?since_generation=" + j3 + "&limit=20", null, "application/json", Collections.emptyMap()).a());
                }
                if (d3VarH.f629b >= j3 && ((String) d3VarH.f632e).isEmpty() && ((List) d3VarH.f630c).isEmpty() && ((List) d3VarH.f631d).isEmpty()) {
                    long j5 = d3VarH.f629b;
                    if (j5 > j3) {
                        this.f467f.a(j5);
                    }
                    int iR = this.f467f.r();
                    i(y0Var, 2, iR, iR);
                    return new d3((List) null, (List) null, (List) null, iR, d3VarH.f629b);
                }
                l0 l0Var5 = this.f467f;
                long j6 = d3VarH.f629b;
                synchronized (l0Var5) {
                    i0 i0VarT4 = l0Var5.t(l0Var5.f392d);
                    if (j3 <= 0 || j6 < j3 || i0VarT4 == null || !i0VarT4.f361h || i0VarT4.f364k != j3) {
                        throw new IllegalArgumentException("云端对手增量基础代次不匹配");
                    }
                    l0.z(l0Var5.f393e);
                    i0 i0Var = new i0(l0Var5.f389a, i0VarT4.f355b, i0VarT4.f356c, Collections.emptyList(), i0VarT4.f358e, "", 0, false, "delta", j3, j6);
                    l0Var5.E(l0Var5.f393e, i0Var);
                    i0Var.d();
                }
                i4 = d3VarH.f628a;
                k0VarB = this.f467f.b("", (List) d3VarH.f630c, (List) d3VarH.f631d, (String) d3VarH.f632e);
            }
            i2 = 1;
            i(y0Var, 1, k0VarB.f377b, i4);
            i3 = 1;
            int i7 = i4;
            k0VarD = k0VarB;
            iMax = i7;
        }
        while (!k0VarD.f378c) {
            String str = k0VarD.f376a;
            if ("delta".equals(k0VarD.f379d)) {
                d3 d3VarQ = this.f462a.q(k0VarD.f380e, str, k0VarD.f381f);
                iMax = Math.max(iMax, d3VarQ.f628a);
                k0VarD = this.f467f.b(str, (List) d3VarQ.f630c, (List) d3VarQ.f631d, (String) d3VarQ.f632e);
            } else {
                g gVarR = this.f462a.r(str, k0VarD.f381f);
                iMax = Math.max(iMax, gVarR.f335a);
                k0VarD = this.f467f.c(str, (String) gVarR.f338d, (List) gVarR.f337c);
            }
            i(y0Var, i2, k0VarD.f377b, iMax);
            i3 += i2;
            if (i3 > 10000) {
                throw new IllegalArgumentException("云端对手分包数量异常");
            }
        }
        i(y0Var, ("delta".equals(k0VarD.f379d) && k0VarD.f377b == 0) ? i6 : 3, k0VarD.f377b, iMax);
        if (!"delta".equals(k0VarD.f379d)) {
            List listQ = this.f467f.q();
            i(y0Var, 4, listQ.size(), listQ.size());
            return new d3(listQ, (List) null, (List) null, listQ.size(), k0VarD.f381f);
        }
        u uVarP = this.f467f.p();
        int size = uVarP.f500b.size() + uVarP.f499a.size();
        i(y0Var, 4, size, Math.max(size, iMax));
        return new d3((List) null, uVarP.f499a, uVarP.f500b, uVarP.f501c, k0VarD.f381f);
    }

    public final int p(y0 y0Var) throws Exception {
        d3 d3VarO;
        boolean z = this.f471j;
        boolean z2 = false;
        try {
            if (!this.f471j) {
                this.f468g.m();
            }
            long j2 = -1;
            int i2 = 0;
            while (true) {
                d3VarO = o(y0Var, j2);
                a(d3VarO);
                try {
                    long j3 = this.f462a.j(d3VarO.f629b).f487a;
                    if (j3 <= d3VarO.f629b) {
                        break;
                    }
                    this.f467f.a(j3);
                    break;
                } catch (a0 e2) {
                    if ("opponent_catalog_changed".equals(e2.f268b)) {
                        long j4 = e2.f270d;
                        l0 l0Var = this.f467f;
                        synchronized (l0Var) {
                            i0 i0VarT = l0Var.t(l0Var.f392d);
                            if (j4 > ((i0VarT == null || !i0VarT.f361h) ? 0L : i0VarT.f364k) && i2 < 3) {
                                i2++;
                                j2 = e2.f270d;
                            }
                        }
                    }
                    throw e2;
                }
            }
            if (!z) {
                b0 b0Var = this.f468g;
                synchronized (b0Var) {
                    b0Var.f287b.edit().putLong("deadline_ms", System.currentTimeMillis() + 300000).commit();
                }
            }
            int i3 = d3VarO.f628a;
            i(y0Var, 5, i3, i3);
            return d3VarO.f628a;
        } catch (Exception e3) {
            if (!z) {
                if ((e3 instanceof a0) && "opponent_catalog_changed".equals(((a0) e3).f268b)) {
                    z2 = true;
                }
                if (!z2) {
                    b0 b0Var2 = this.f468g;
                    synchronized (b0Var2) {
                        b0Var2.f287b.edit().putLong("deadline_ms", System.currentTimeMillis() + 300000).commit();
                    }
                }
            }
            throw e3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0057  */
    public final d0 q() {
        int i2;
        byte[] bArrC;
        long jN;
        CloudSessionStore$SessionData cloudSessionStore$SessionDataK = k();
        d0 d0VarF = this.f464c.f(cloudSessionStore$SessionDataK.afdianUserId);
        x xVarS = this.f462a.s(cloudSessionStore$SessionDataK.afdianUserId);
        String strL = l(xVarS == null ? "" : xVarS.f518b, this.f466e.h(cloudSessionStore$SessionDataK.afdianUserId));
        this.f465d.k(strL, cloudSessionStore$SessionDataK.afdianUserId);
        String str = cloudSessionStore$SessionDataK.afdianUserId;
        if (xVarS != null && d0VarF.f309a.equals(str)) {
            if (d0VarF.f310b.equals(xVarS.f517a)) {
                if (d0VarF.f311c.equals(xVarS.f518b)) {
                    i2 = d0VarF.f313e;
                } else {
                    i2 = 0;
                }
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        com.sgscq.vpn.f0 f0Var = this.f465d;
        String str2 = xVarS == null ? "" : xVarS.f517a;
        String str3 = cloudSessionStore$SessionDataK.afdianUserId;
        f0Var.getClass();
        if (strL.isEmpty()) {
            throw new IllegalStateException("请先选择本地角色");
        }
        byte[] bArr = y5.f1568a;
        synchronized (a5.a(strL)) {
            LinkedHashMap linkedHashMapL = y5.l(f0Var.f674a, f0Var.f675b, strL);
            if (linkedHashMapL == null || linkedHashMapL.isEmpty()) {
                throw new IllegalStateException("当前角色没有可上传的存档");
            }
            String strB = c.e.b(str3);
            SharedPreferences sharedPreferences = f0Var.f674a.getApplicationContext().getSharedPreferences("sgscq_cloud_passport_owner_v1", 0);
            String strG0 = c.e.g0(strL);
            String string = sharedPreferences.getString(c.e.b0(strG0), "");
            String string2 = sharedPreferences.getString(c.e.k0(strG0), "");
            sharedPreferences.getInt(c.e.q0(strG0), 0);
            boolean z = "cloud".equals(string2) || c.e.S(string2, string);
            String strG1 = c.e.g0(string);
            if (!z || !strB.equals(strG1) || !h5.o0(strB, linkedHashMapL) || !h5.q0(linkedHashMapL)) {
                throw new IllegalStateException("当前角色不是本人当前版本云存档");
            }
            boolean zY0 = p5.Y0(linkedHashMapL);
            if (!y5.s(f0Var.f675b, strL) || zY0) {
                y5.p(f0Var.f674a, f0Var.f675b, strL, linkedHashMapL);
            }
            bArrC = o0.c(strL, str2, i2, strB, linkedHashMapL, f0Var.d(strL), System.currentTimeMillis());
            jN = y5.n(f0Var.f675b, strL);
        }
        String string3 = UUID.randomUUID().toString();
        z zVar = this.f462a;
        x xVarB0 = xVarS == null ? zVar.b0("POST", "/cloud-slot/bind-upload", bArrC, string3, false, false, cloudSessionStore$SessionDataK.afdianUserId) : zVar.b0("PUT", "/cloud-slot/save", bArrC, string3, true, true, cloudSessionStore$SessionDataK.afdianUserId);
        if (xVarB0.f528l) {
            z zVar2 = this.f462a;
            int i3 = xVarB0.f519c;
            String str4 = cloudSessionStore$SessionDataK.afdianUserId;
            zVar2.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("X-Post-Upload-Revision", String.valueOf(Math.max(0, i3)));
            jN = this.f465d.f(jN, xVarB0.f518b, cloudSessionStore$SessionDataK.afdianUserId, zVar2.n(str4, linkedHashMap));
        }
        this.f471j = xVarB0.f527k;
        this.f464c.g(cloudSessionStore$SessionDataK.afdianUserId, xVarB0, jN);
        this.f469h.n(xVarB0.f518b, cloudSessionStore$SessionDataK.afdianUserId);
        m(xVarB0.f518b);
        return this.f464c.f(cloudSessionStore$SessionDataK.afdianUserId);
    }
}
