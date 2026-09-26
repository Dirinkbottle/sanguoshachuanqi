package com.sgscq.vpn.cloud;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.m4;
import com.sgscq.vpn.x0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class b implements AutoCloseable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a.o f271o = new a.o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z f274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m.e f275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b0 f276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m4 f277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ScheduledExecutorService f278g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinkedHashMap f279h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f280i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f281j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a f282k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f283l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f284m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f285n;

    public b(Context context) {
        Object obj = new Object();
        this.f272a = obj;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f279h = linkedHashMap;
        this.f280i = new ArrayList();
        this.f281j = "";
        Context applicationContext = context.getApplicationContext();
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("sgscq_cloud_acquisition_sync_v2", 0);
        this.f273b = sharedPreferences;
        this.f274c = new z(applicationContext);
        this.f275d = new m.e(5, applicationContext);
        this.f276e = new b0(1, applicationContext);
        this.f277f = new m4(applicationContext);
        this.f278g = Executors.newSingleThreadScheduledExecutor(new x0(8));
        synchronized (obj) {
            sharedPreferences.edit().remove("queued").remove("current").remove("current_id").commit();
            c(f());
            if (!this.f280i.isEmpty() || !linkedHashMap.isEmpty()) {
                k(0L);
            }
        }
    }

    public static void d(LinkedHashMap linkedHashMap, String str, ArrayList arrayList) {
        String strTrim;
        int iRound;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (map != null) {
                String[] strArr = {"equipment_id", "equip_id", "id"};
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i3 >= 3) {
                        strTrim = "";
                        break;
                    }
                    Object obj = map.get(strArr[i3]);
                    if (obj != null && !String.valueOf(obj).trim().isEmpty()) {
                        strTrim = String.valueOf(obj).trim();
                        break;
                    }
                    i3++;
                }
                if (!strTrim.isEmpty()) {
                    String[] strArr2 = {"item_num", "num"};
                    while (true) {
                        if (i2 >= 2) {
                            iRound = 1;
                            break;
                        }
                        try {
                            Object obj2 = map.get(strArr2[i2]);
                            if (obj2 != null) {
                                iRound = (int) Math.round(Double.parseDouble(String.valueOf(obj2)));
                                break;
                            }
                            continue;
                        } catch (Exception unused) {
                        }
                        i2++;
                    }
                    int iMax = Math.max(1, iRound);
                    String str2 = str + ":" + strTrim;
                    d dVar = (d) linkedHashMap.get(str2);
                    if (dVar != null) {
                        iMax += dVar.f308c;
                    }
                    linkedHashMap.put(str2, new d(str, iMax, strTrim));
                }
            }
        }
    }

    public static ArrayList g(String str) {
        if (str == null || str.trim().isEmpty()) {
            return new ArrayList();
        }
        try {
            d[] dVarArr = (d[]) f271o.d(str, d[].class);
            ArrayList arrayList = new ArrayList();
            if (dVarArr != null) {
                for (d dVar : dVarArr) {
                    if (dVar != null) {
                        String str2 = dVar.f307b;
                        String str3 = dVar.f306a;
                        if (str3 != null && !str3.isEmpty() && str2 != null && !str2.isEmpty()) {
                            arrayList.add(new d(str3, dVar.f308c, str2));
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static void h(LinkedHashMap linkedHashMap, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            StringBuilder sb = new StringBuilder();
            sb.append(dVar.f306a);
            sb.append(":");
            String str = dVar.f307b;
            sb.append(str);
            String string = sb.toString();
            d dVar2 = (d) linkedHashMap.get(string);
            int i2 = dVar.f308c;
            if (dVar2 != null) {
                i2 += dVar2.f308c;
            }
            linkedHashMap.put(string, new d(dVar.f306a, i2, str));
        }
    }

    public final void c(a aVar) {
        if (aVar == null || aVar.b(this.f282k)) {
            return;
        }
        j();
        this.f282k = aVar;
        LinkedHashMap linkedHashMap = this.f279h;
        linkedHashMap.clear();
        String str = aVar.a() + "queued";
        SharedPreferences sharedPreferences = this.f273b;
        h(linkedHashMap, g(sharedPreferences.getString(str, "")));
        this.f280i = g(sharedPreferences.getString(aVar.a() + "current", ""));
        this.f281j = sharedPreferences.getString(aVar.a() + "current_id", "");
        if (this.f280i.isEmpty() || !this.f281j.isEmpty()) {
            return;
        }
        this.f281j = UUID.randomUUID().toString();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f272a) {
            this.f284m = true;
            this.f278g.shutdownNow();
        }
    }

    public final void e(a aVar) {
        this.f273b.edit().putString(aVar.a() + "current", "[]").remove(aVar.a() + "current_id").commit();
    }

    public final a f() {
        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = this.f275d.y();
        if (!cloudSessionStore$SessionDataY.isLoggedIn()) {
            return null;
        }
        d0 d0VarF = this.f276e.f(cloudSessionStore$SessionDataY.afdianUserId);
        if (d0VarF.a(cloudSessionStore$SessionDataY.afdianUserId, this.f277f.k())) {
            return new a(cloudSessionStore$SessionDataY.afdianUserId, d0VarF.f310b, d0VarF.f311c);
        }
        return null;
    }

    public final void i() {
        this.f280i = new ArrayList();
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = this.f279h;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            this.f280i.add((d) entry.getValue());
            arrayList.add((String) entry.getKey());
            if (this.f280i.size() == 20) {
                break;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            linkedHashMap.remove((String) it.next());
        }
        if (!this.f280i.isEmpty()) {
            this.f281j = UUID.randomUUID().toString();
        }
        j();
    }

    public final void j() {
        a aVar = this.f282k;
        if (aVar == null) {
            return;
        }
        String strA = aVar.a();
        ArrayList arrayList = new ArrayList(this.f279h.values());
        a.o oVar = f271o;
        this.f273b.edit().putString(strA + "queued", oVar.i(arrayList)).putString(strA + "current", oVar.i(this.f280i)).putString(strA + "current_id", this.f281j).commit();
    }

    public final void k(long j2) {
        this.f283l = true;
        this.f278g.schedule(new com.sgscq.vpn.b(this, 12), Math.max(0L, j2), TimeUnit.SECONDS);
    }
}
