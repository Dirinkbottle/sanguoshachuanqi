package com.sgscq.vpn;

import android.content.Context;
import android.os.SystemClock;
import com.sgscq.vpn.cloud.CloudSessionStore$SessionData;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f193b;

    public /* synthetic */ b(Object obj, int i2) {
        this.f192a = i2;
        this.f193b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0119  */
    /* JADX WARN: Code duplicated, block: B:65:0x011a A[Catch: all -> 0x0154, TryCatch #0 {, blocks: (B:62:0x0115, B:81:0x0152, B:65:0x011a, B:68:0x0124, B:70:0x012a, B:71:0x0135, B:74:0x013b, B:76:0x0143, B:78:0x014b, B:80:0x014f), top: B:89:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x0124 A[Catch: all -> 0x0154, TryCatch #0 {, blocks: (B:62:0x0115, B:81:0x0152, B:65:0x011a, B:68:0x0124, B:70:0x012a, B:71:0x0135, B:74:0x013b, B:76:0x0143, B:78:0x014b, B:80:0x014f), top: B:89:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0128 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x012a A[Catch: all -> 0x0154, TryCatch #0 {, blocks: (B:62:0x0115, B:81:0x0152, B:65:0x011a, B:68:0x0124, B:70:0x012a, B:71:0x0135, B:74:0x013b, B:76:0x0143, B:78:0x014b, B:80:0x014f), top: B:89:0x0115 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0115 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private final void a() {
        int i2;
        com.sgscq.vpn.cloud.b bVar = (com.sgscq.vpn.cloud.b) this.f193b;
        a.o oVar = com.sgscq.vpn.cloud.b.f271o;
        com.sgscq.vpn.cloud.a aVarF = bVar.f();
        synchronized (bVar.f272a) {
            boolean z = false;
            if (aVarF == null) {
                bVar.f283l = false;
                return;
            }
            bVar.f283l = false;
            if (!bVar.f284m) {
                bVar.c(aVarF);
                if (bVar.f280i.isEmpty()) {
                    bVar.i();
                }
                if (!bVar.f280i.isEmpty()) {
                    ArrayList arrayList = new ArrayList(bVar.f280i);
                    String str = bVar.f281j;
                    com.sgscq.vpn.cloud.a aVar = bVar.f282k;
                    boolean z2 = true;
                    long j2 = 0;
                    try {
                        if (!aVar.b(bVar.f())) {
                            z2.e("SGSCQ_CLOUD", "[AcquisitionSync] skipped: cloud binding changed");
                            return;
                        }
                        z2.e("SGSCQ_CLOUD", "[AcquisitionSync] sent=" + arrayList.size() + " accepted=" + bVar.f274c.O(str, aVar.f264a, arrayList));
                        bVar.f285n = 0;
                        z = true;
                        z2 = false;
                        synchronized (bVar.f272a) {
                            if (!bVar.f284m) {
                                if (!aVar.b(bVar.f282k)) {
                                    if (z) {
                                        bVar.f280i = new ArrayList();
                                        bVar.f281j = "";
                                    }
                                    bVar.j();
                                    if (!z2 && ((!bVar.f280i.isEmpty() || !bVar.f279h.isEmpty()) && !bVar.f283l)) {
                                        bVar.k(j2);
                                    }
                                } else if (z) {
                                    bVar.e(aVar);
                                }
                            }
                        }
                    } catch (Exception e2) {
                        int i3 = bVar.f285n + 1;
                        boolean z3 = e2 instanceof com.sgscq.vpn.cloud.a0;
                        if (z3 && "cloud_binding_changed".equals(((com.sgscq.vpn.cloud.a0) e2).f268b)) {
                            bVar.f285n = 0;
                            z2.e("SGSCQ_CLOUD", "[AcquisitionSync] paused: cloud binding changed");
                        } else {
                            if (!z3 ? !(e2 instanceof IOException) && i3 > 3 : (i2 = ((com.sgscq.vpn.cloud.a0) e2).f267a) != 429 && i2 < 500 && i2 > 0) {
                                bVar.f285n = i3;
                                int iMin = Math.min(300, (1 << Math.max(0, Math.min(7, i3 - 1))) * 2);
                                if (z3) {
                                    iMin = Math.max(iMin, ((com.sgscq.vpn.cloud.a0) e2).f269c);
                                }
                                j2 = iMin;
                                StringBuilder sb = new StringBuilder("[AcquisitionSync] retry in ");
                                sb.append(j2);
                                sb.append("s: ");
                                c.a.u(e2, sb, "SGSCQ_CLOUD");
                                z2 = false;
                            } else {
                                bVar.f285n = 0;
                                c.a.u(e2, new StringBuilder("[AcquisitionSync] dropped: "), "SGSCQ_CLOUD");
                            }
                        }
                        synchronized (bVar.f272a) {
                            if (!bVar.f284m) {
                                if (!aVar.b(bVar.f282k)) {
                                    if (z) {
                                        bVar.f280i = new ArrayList();
                                        bVar.f281j = "";
                                    }
                                    bVar.j();
                                    if (!z2) {
                                        bVar.k(j2);
                                    }
                                } else if (z) {
                                    bVar.e(aVar);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x026d  */
    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        List listC;
        String str;
        LinkedHashMap linkedHashMapC;
        String str2 = null;
        int i2 = 1;
        switch (this.f192a) {
            case 0:
                h hVar = (h) this.f193b;
                hVar.getClass();
                com.sgscq.vpn.cloud.z zVar = new com.sgscq.vpn.cloud.z(hVar.f720b);
                m.e eVar = zVar.f541b;
                try {
                    zVar.a("POST", "/auth/logout", new byte[0], "application/json", Collections.emptyMap());
                    break;
                } catch (Exception unused) {
                } finally {
                    eVar.a();
                }
                return;
            case 1:
                ((DebugSparringConfigActivity) this.f193b).f102e.requestFocus();
                return;
            case 2:
                byte[] bArr = (byte[]) this.f193b;
                ExecutorService executorService = z0.f1591a;
                try {
                    p5.O(new y0(bArr, 0));
                    return;
                } catch (Exception e2) {
                    z2.g("DeviceAudit", "upload failed: ".concat(e2.getClass().getSimpleName()));
                    return;
                }
            case 3:
                Thread thread = (Thread) this.f193b;
                String[] strArr = y2.X;
                if (thread.getState() == Thread.State.TERMINATED) {
                    return;
                }
                z2.g("SGSCQ_SRV", "[Ladder] WATCHDOG: fight still running after 45s, thread=" + thread.getName() + " state=" + thread.getState());
                for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                    Thread key = entry.getKey();
                    StackTraceElement[] value = entry.getValue();
                    if (value != null && value.length != 0) {
                        String name = key.getName();
                        if (key.getState() != Thread.State.TERMINATED) {
                            z2.g("SGSCQ_SRV", "[Ladder] WATCHDOG stack TID=" + key.getId() + " name=" + name + " state=" + key.getState());
                            for (StackTraceElement stackTraceElement : value) {
                                z2.g("SGSCQ_SRV", "[Ladder] WATCHDOG   at " + stackTraceElement);
                            }
                        }
                    }
                }
                z2.g("SGSCQ_SRV", "[Ladder] WATCHDOG dump end");
                return;
            case 4:
                SgscqApplication sgscqApplication = (SgscqApplication) this.f193b;
                int i3 = SgscqApplication.f154a;
                sgscqApplication.getClass();
                try {
                    try {
                        com.sgscq.vpn.cloud.z zVar2 = new com.sgscq.vpn.cloud.z(sgscqApplication);
                        CloudSessionStore$SessionData cloudSessionStore$SessionDataY = zVar2.f541b.y();
                        if (cloudSessionStore$SessionDataY.isLoggedIn()) {
                            zVar2.Q(cloudSessionStore$SessionDataY, cloudSessionStore$SessionDataY.afdianUserId);
                        }
                    } finally {
                        o.j.b(sgscqApplication, false);
                    }
                    break;
                } catch (Exception e3) {
                    z2.g("CloudSession", "startup refresh failed: ".concat(e3.getClass().getSimpleName()));
                }
                return;
            case 5:
                SgscqVpnService sgscqVpnService = (SgscqVpnService) this.f193b;
                boolean z = SgscqVpnService.f155m;
                sgscqVpnService.getClass();
                try {
                    g2.e(sgscqVpnService).j();
                    p.l lVarC = p.l.c(sgscqVpnService);
                    p.d.b(sgscqVpnService);
                    if (lVarC.f1887j.compareAndSet(false, true)) {
                        lVarC.n(null);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    z2.g("SGSCQ_VPN", "限时排期初始化失败: " + th);
                    return;
                }
            case 6:
                v6 v6Var = (v6) this.f193b;
                v6Var.getClass();
                try {
                    try {
                        if (v6Var.f1480e == 443) {
                            v6Var.d();
                        } else {
                            v6Var.c();
                        }
                    } finally {
                        v6Var.f1488m = true;
                        v6Var.f1490o.f170l.remove(v6Var.f1476a);
                    }
                    break;
                } catch (Exception e4) {
                    z2.c("SGSCQ_VPN", "Proxy " + v6Var.f1476a + " error: " + e4.getMessage());
                }
                return;
            case 7:
                g3 g3Var = (g3) this.f193b;
                Object obj = x6.f1537a;
                g3Var.a(null);
                return;
            case 8:
                Context context = (Context) this.f193b;
                Object obj2 = x6.f1537a;
                try {
                    y5.m(context);
                    break;
                } catch (Exception e5) {
                    String message = e5.getMessage();
                    if (message == null || message.isEmpty()) {
                        message = e5.getClass().getSimpleName();
                    }
                    str2 = message;
                    z2.c("SGSCQ_SAVE", "存档升级失败: ".concat(str2));
                }
                synchronized (x6.f1537a) {
                    x6.f1541e = str2 == null ? 3 : 1;
                    ArrayList arrayList2 = x6.f1540d;
                    arrayList = new ArrayList(arrayList2);
                    arrayList2.clear();
                    break;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    x6.f1538b.post(new d((g3) it.next(), str2, 25));
                }
                return;
            case 9:
                c7 c7Var = (c7) this.f193b;
                c7Var.getClass();
                while (true) {
                    try {
                        long j2 = c7.f255j;
                        long j3 = c7.f256k;
                        if (j2 > 0 && j3 > 0) {
                            c7.f257l = Math.max(0L, SystemClock.elapsedRealtime() - j3) + j2;
                            c7Var.h(c7.f257l);
                        }
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused2) {
                        Thread.currentThread().interrupt();
                        return;
                    } catch (Exception unused3) {
                    }
                }
                break;
            case 10:
                p7 p7Var = (p7) this.f193b;
                HashMap map = p7.t;
                p7Var.getClass();
                z2.e("SGSCQ_ROSTER", "initializeNow enter thread=" + Thread.currentThread().getName());
                long jCurrentTimeMillis = System.currentTimeMillis();
                final t5 t5Var = new t5(p7Var.f1297e, p7Var.f1298f);
                final w5 w5Var = p7Var.f1295c;
                Supplier supplier = new Supplier() { // from class: com.sgscq.vpn.k7
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        t5 t5Var2 = t5Var;
                        Map map2 = t5.f1402l;
                        List list = (List) map2.get(t5Var2.f1406c);
                        if (list != null) {
                            return list;
                        }
                        synchronized (t5.class) {
                            List list2 = (List) map2.get(t5Var2.f1406c);
                            if (list2 != null) {
                                return list2;
                            }
                            map2.clear();
                            ArrayList arrayList3 = new ArrayList(1000);
                            for (int i4 = 1; i4 <= 1000; i4++) {
                                arrayList3.add(t5Var2.b(i4));
                            }
                            arrayList3.sort(new n.b(5));
                            ArrayList arrayList4 = new ArrayList(1000);
                            int i5 = 0;
                            while (i5 < arrayList3.size()) {
                                v5 v5Var = (v5) arrayList3.get(i5);
                                i5++;
                                arrayList4.add(v5Var.x(i5));
                            }
                            List listUnmodifiableList = Collections.unmodifiableList(arrayList4);
                            t5.f1402l.put(t5Var2.f1406c, listUnmodifiableList);
                            return listUnmodifiableList;
                        }
                    }
                };
                synchronized (w5Var) {
                    try {
                        listC = w5Var.c();
                        if (!w5.b(listC)) {
                            if (w5Var.f1519d.exists()) {
                                w5Var.f1519d.delete();
                            }
                            List list = (List) supplier.get();
                            if (!w5.b(list)) {
                                throw new IllegalStateException("Generated robot roster is invalid");
                            }
                            w5Var.d(list);
                            File[] fileArrListFiles = w5Var.f1516a.listFiles(new FilenameFilter() { // from class: com.sgscq.vpn.x5
                                @Override // java.io.FilenameFilter
                                public final boolean accept(File file, String str3) {
                                    w5 w5Var2 = w5Var;
                                    w5Var2.getClass();
                                    return str3.startsWith("robot_roster_") && str3.endsWith(".json.gz") && !str3.equals(w5Var2.f1519d.getName());
                                }
                            });
                            if (fileArrListFiles != null) {
                                for (File file : fileArrListFiles) {
                                    file.delete();
                                }
                            }
                            listC = Collections.unmodifiableList(new ArrayList(list));
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                if (listC != null) {
                    for (Iterator it2 = listC.iterator(); it2.hasNext(); it2 = it2) {
                        v5 v5VarN = (v5) it2.next();
                        if (v5VarN != null && !v5VarN.f1464f) {
                            y0 y0Var = t5Var.f1413j;
                            if (v5VarN.v) {
                                v5VarN = v5.n(v5VarN.f1459a, v5VarN.f1460b, v5VarN.f1461c, v5VarN.f1462d, v5VarN.f1463e, v5VarN.f1466h, v5VarN.f1475q, v5VarN.s, v5VarN.t, v5VarN.u, y0Var);
                            }
                        }
                        arrayList3.add(v5VarN);
                        t5Var = t5Var;
                    }
                }
                List<v5> listUnmodifiableList = Collections.unmodifiableList(arrayList3);
                z2.e("SGSCQ_ROSTER", "loadOrGenerate done robots=" + listUnmodifiableList.size() + " took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                t tVar = p7Var.f1294b;
                tVar.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (k4 k4Var : ((m4) tVar.f1373c).m()) {
                    if ("active".equals(k4Var.f1110e) && (linkedHashMapC = tVar.c((str = k4Var.f1106a))) != null && !linkedHashMapC.isEmpty()) {
                        linkedHashMap.put(str, linkedHashMapC);
                    }
                }
                ArrayList<Map.Entry> arrayList4 = new ArrayList();
                ArrayList<int[]> arrayList5 = new ArrayList();
                z2.e("SGSCQ_ROSTER", "loadActivePlayers done players=" + linkedHashMap.size() + " took " + (System.currentTimeMillis() - jCurrentTimeMillis2) + "ms");
                com.sgscq.vpn.cloud.l0 l0Var = p7Var.f1301i;
                List listEmptyList = l0Var == null ? Collections.emptyList() : l0Var.i();
                z2.e("SGSCQ_ROSTER", "cloud load done opponents=" + listEmptyList.size() + " total took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                synchronized (p7Var.f1293a) {
                    try {
                        p7Var.f1304l.clear();
                        p7Var.f1305m.clear();
                        p7Var.f1306n.clear();
                        p7Var.f1307o.clear();
                        arrayList4.addAll(linkedHashMap.entrySet());
                        int i4 = 0;
                        for (Map.Entry entry2 : arrayList4) {
                            String str3 = (String) entry2.getKey();
                            Map map2 = (Map) entry2.getValue();
                            int iMax = Math.max(1, p7.j(map2.get("ladder_rank"), 1001));
                            int iQ = p7Var.q(str3, iMax);
                            p7Var.f1305m.put(str3, map2);
                            p7Var.f1304l.put(str3, v5.j(str3, map2));
                            p7Var.A(str3, iQ);
                            if (iQ != iMax) {
                                p7.d(iQ, map2);
                                arrayList5.add(new int[]{i4, iQ});
                                p7Var.f1305m.put(str3, map2);
                                p7Var.f1304l.put(str3, v5.j(str3, map2));
                            }
                            i4++;
                        }
                        z2.e("SGSCQ_ROSTER", "lock section reached players=" + arrayList4.size());
                        Context context2 = p7Var.f1297e;
                        if (context2 != null && context2.getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).getBoolean("elite_opponent_enabled", false)) {
                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                            Context context3 = p7Var.f1297e;
                            int iE0 = context3 == null ? 3 : p5.E0(context3.getApplicationContext().getSharedPreferences("sgscq_config_v2", 0).getInt("elite_opponent_level", 3));
                            ArrayList arrayList6 = new ArrayList(m1.b(iE0));
                            p7Var.c(arrayList6);
                            z2.e("SGSCQ_ROSTER", "elite garrison level=" + iE0 + " elites=" + arrayList6.size() + " ranks=" + p7Var.f(arrayList6) + " took " + (System.currentTimeMillis() - jCurrentTimeMillis3) + "ms");
                        } else if (p7Var.f1297e != null) {
                            z2.e("SGSCQ_ROSTER", "elite garrison skipped: disabled");
                        }
                        for (v5 v5Var : listUnmodifiableList) {
                            p7Var.f1304l.put(v5Var.f1459a, v5Var);
                            p7Var.A(v5Var.f1459a, p7Var.q(v5Var.f1459a, Math.max(1, v5Var.f1463e)));
                        }
                        z2.e("SGSCQ_ROSTER", "robots placed total=" + p7Var.f1304l.size());
                        p7Var.z(listUnmodifiableList);
                        p7Var.y(p7.D(listEmptyList));
                        p7Var.p(p7Var.r ? p7Var.f1303k : Collections.emptyList());
                        p7Var.f1308p = true;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                    break;
                }
                for (int[] iArr : arrayList5) {
                    int i5 = iArr[0];
                    if (i5 >= 0 && i5 < arrayList4.size()) {
                        p7Var.f1294b.e((String) ((Map.Entry) arrayList4.get(iArr[0])).getKey(), iArr[1]);
                    }
                }
                p7Var.f1294b.f1375e = new h7(p7Var, 1);
                return;
            case 11:
                o.j jVar = (o.j) this.f193b;
                AtomicBoolean atomicBoolean = o.j.f1839h;
                try {
                    int iC = jVar.c();
                    z2.e("BattleRuntime", "startup state=".concat(com.sgscq.vpn.handler.l.d(iC)));
                    e3 e3Var = o.j.f1842k;
                    if (e3Var != null) {
                        e3Var.c(iC);
                        break;
                    }
                    return;
                } finally {
                    o.j.f1839h.set(false);
                }
            case 12:
                a();
                return;
            case 13:
                com.sgscq.vpn.cloud.c0 c0Var = (com.sgscq.vpn.cloud.c0) this.f193b;
                if (c0Var.f304i) {
                    return;
                }
                CloudSessionStore$SessionData cloudSessionStore$SessionDataY2 = c0Var.f297b.y();
                if (cloudSessionStore$SessionDataY2.isLoggedIn()) {
                    com.sgscq.vpn.cloud.d0 d0VarF = c0Var.f298c.f(cloudSessionStore$SessionDataY2.afdianUserId);
                    String strK = c0Var.f300e.k();
                    com.sgscq.vpn.cloud.b0 b0Var = c0Var.f299d;
                    String str4 = cloudSessionStore$SessionDataY2.afdianUserId;
                    String str5 = d0VarF.f310b;
                    String str6 = d0VarF.f311c;
                    b0Var.getClass();
                    String strJ = com.sgscq.vpn.cloud.b0.j(str4, str5, str6);
                    String strConcat = strJ.isEmpty() ? "" : "enabled_".concat(strJ);
                    if (((!strConcat.isEmpty() && b0Var.f287b.getBoolean(strConcat, false)) && d0VarF.a(cloudSessionStore$SessionDataY2.afdianUserId, strK)) && strK.equals(d0VarF.f311c)) {
                        long jCurrentTimeMillis4 = System.currentTimeMillis();
                        com.sgscq.vpn.cloud.b0 b0Var2 = c0Var.f299d;
                        String str7 = cloudSessionStore$SessionDataY2.afdianUserId;
                        String str8 = d0VarF.f310b;
                        String str9 = d0VarF.f311c;
                        b0Var2.getClass();
                        String strJ2 = com.sgscq.vpn.cloud.b0.j(str7, str8, str9);
                        long j4 = strJ2.isEmpty() ? 0L : b0Var2.f287b.getLong("next_sync_at_".concat(strJ2), 0L);
                        if (j4 > 0 && jCurrentTimeMillis4 >= j4) {
                            long jN = y5.n(c0Var.f301f.f675b, strK);
                            if (jN <= 0 || jN == c0Var.f305j) {
                                c0Var.f299d.l(cloudSessionStore$SessionDataY2.afdianUserId, d0VarF.f310b, d0VarF.f311c, System.currentTimeMillis());
                                return;
                            }
                            try {
                                c0Var.f296a.q();
                                c0Var.f305j = jN;
                                c0Var.f299d.l(cloudSessionStore$SessionDataY2.afdianUserId, d0VarF.f310b, d0VarF.f311c, System.currentTimeMillis());
                                z2.e("SGSCQ_CLOUD", "[AutoSaveUpload] uploaded at revision " + c0Var.f298c.f(cloudSessionStore$SessionDataY2.afdianUserId).f312d);
                                return;
                            } catch (Exception e6) {
                                c0Var.f299d.l(cloudSessionStore$SessionDataY2.afdianUserId, d0VarF.f310b, d0VarF.f311c, System.currentTimeMillis());
                                z2.g("SGSCQ_CLOUD", "[AutoSaveUpload] failed: " + e6);
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            case 14:
                q.d dVar = (q.d) this.f193b;
                while (true) {
                    ServerSocket serverSocket = dVar.f1904e;
                    if (serverSocket == null || serverSocket.isClosed()) {
                        return;
                    }
                    try {
                        Socket socketAccept = serverSocket.accept();
                        if (dVar.f1901b.tryAcquire()) {
                            dVar.f1902c.execute(new p.f(dVar, socketAccept, i2));
                        } else {
                            q.d.a(socketAccept);
                        }
                    } catch (IOException unused4) {
                        if (serverSocket.isClosed()) {
                            return;
                        }
                    }
                }
                break;
            default:
                q.i iVar = (q.i) this.f193b;
                while (true) {
                    ServerSocket serverSocket2 = iVar.f1924e;
                    if (serverSocket2 == null || serverSocket2.isClosed()) {
                        return;
                    }
                    try {
                        Socket socketAccept2 = serverSocket2.accept();
                        if (iVar.f1921b.tryAcquire()) {
                            iVar.f1922c.execute(new p.f(iVar, socketAccept2, 2));
                        } else {
                            q.i.b(socketAccept2);
                        }
                    } catch (IOException unused5) {
                        if (serverSocket2.isClosed()) {
                            return;
                        }
                    }
                }
                break;
        }
    }
}
