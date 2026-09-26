package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class p7 {
    public static final HashMap t = new HashMap();
    public static final ExecutorService u = Executors.newSingleThreadExecutor(new x0(7));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f1294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w5 f1295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w5 f1296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f1297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f1298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final g7 f1299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g7 f1300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.sgscq.vpn.cloud.l0 f1301i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c.e f1302j;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile boolean f1308p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile Future f1309q;
    public volatile boolean r;
    public long s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1293a = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f1303k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final LinkedHashMap f1304l = new LinkedHashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final LinkedHashMap f1305m = new LinkedHashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final LinkedHashMap f1306n = new LinkedHashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final LinkedHashMap f1307o = new LinkedHashMap();

    public p7(Context context) {
        this.r = true;
        t tVar = new t(0, context);
        this.f1294b = tVar;
        this.f1295c = new w5(new File(context.getFilesDir(), "robot_roster"), 7, 1);
        this.f1296d = new w5(new File(context.getFilesDir(), "robot_roster"), 1, 0);
        this.f1297e = context;
        this.f1298f = "1.0.1.14067+23";
        this.f1299g = new g7(0);
        this.f1300h = new g7(1);
        this.f1301i = new com.sgscq.vpn.cloud.l0(context);
        c.e eVar = new c.e(4, context);
        this.f1302j = eVar;
        SharedPreferences sharedPreferences = (SharedPreferences) eVar.f38a;
        String str = (String) eVar.f39b;
        this.r = sharedPreferences.getBoolean("enabled_" + (str == null ? "" : str.trim().toLowerCase()), true);
        tVar.f1375e = new h7(this, 0);
    }

    public static long C(long j2, String str) {
        long jHashCode = j2 ^ ((long) str.hashCode());
        long j3 = (jHashCode ^ (jHashCode >>> 33)) * (-49064778989728563L);
        return j3 ^ (j3 >>> 33);
    }

    public static ArrayList D(List list) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        if (list == null) {
            return arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v5 v5Var = (v5) it.next();
            if (v5Var != null) {
                String str = v5Var.f1459a;
                if (k(str) && !v5Var.f1464f && hashSet.add(str)) {
                    arrayList.add(v5Var);
                }
            }
            throw new IllegalArgumentException("云端对手快照无效");
        }
        return arrayList;
    }

    public static void d(int i2, Map map) {
        if (map == null) {
            return;
        }
        map.put("ladder_rank", Integer.valueOf(i2));
        map.put("ladder_best_rank", Integer.valueOf(Math.min(j(map.get("ladder_best_rank"), 1001), i2)));
    }

    public static p7 h(Context context) {
        p7 p7Var;
        Context applicationContext = context.getApplicationContext();
        String str = applicationContext.getFilesDir().getAbsolutePath() + "|1.0.1.14067+23";
        HashMap map = t;
        synchronized (map) {
            p7Var = (p7) map.get(str);
            if (p7Var == null) {
                p7Var = new p7(applicationContext);
                map.put(str, p7Var);
            }
        }
        return p7Var;
    }

    public static int j(Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        try {
            return (int) Math.round(Double.parseDouble(String.valueOf(obj)));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static boolean k(String str) {
        return str != null && str.startsWith("cloud_");
    }

    public static List l(int i2, ArrayList arrayList) {
        return Collections.unmodifiableList(new ArrayList(arrayList.subList(0, Math.max(0, Math.min(i2, arrayList.size())))));
    }

    public final void A(String str, int i2) {
        Integer num = (Integer) this.f1306n.put(str, Integer.valueOf(i2));
        LinkedHashMap linkedHashMap = this.f1307o;
        if (num != null && str.equals(linkedHashMap.get(num))) {
            linkedHashMap.remove(num);
        }
        linkedHashMap.put(Integer.valueOf(i2), str);
    }

    public final void B(long j2) {
        int i2;
        ArrayList arrayList;
        LinkedHashMap linkedHashMap;
        int i3;
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap2 = this.f1304l;
        Iterator it = linkedHashMap2.entrySet().iterator();
        while (true) {
            boolean z = false;
            i2 = 1;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            if (str != null && str.startsWith("robot_")) {
                z = true;
            }
            if (z) {
                arrayList2.add((String) entry.getKey());
            }
        }
        arrayList2.sort(Comparator.comparingInt(new m7(this, 0)));
        if (arrayList2.size() < 2) {
            return;
        }
        HashSet hashSet = new HashSet();
        int i4 = 0;
        int i5 = 0;
        while (i4 < 40 && i5 < arrayList2.size() * 4) {
            String str2 = this.f1298f;
            int iFloorMod = (int) Math.floorMod(C((j2 ^ ((long) str2.hashCode())) ^ ((long) i5), "rank-match"), ((long) arrayList2.size()) - 1);
            int i6 = i5 + 1;
            String str3 = (String) arrayList2.get(iFloorMod);
            String str4 = (String) arrayList2.get(iFloorMod + i2);
            if (hashSet.contains(str3) || hashSet.contains(str4)) {
                arrayList = arrayList2;
                linkedHashMap = linkedHashMap2;
                i3 = i6;
            } else {
                hashSet.add(str3);
                hashSet.add(str4);
                v5 v5Var = (v5) linkedHashMap2.get(str3);
                v5 v5Var2 = (v5) linkedHashMap2.get(str4);
                if (v5Var == null || v5Var2 == null) {
                    arrayList = arrayList2;
                    linkedHashMap = linkedHashMap2;
                    i3 = i6;
                } else {
                    v5 v5Var3 = v5Var.f1462d >= v5Var2.f1462d ? v5Var : v5Var2;
                    v5 v5Var4 = v5Var3 == v5Var ? v5Var2 : v5Var;
                    i3 = i6;
                    long jHashCode = j2 ^ ((long) str2.hashCode());
                    arrayList = arrayList2;
                    linkedHashMap = linkedHashMap2;
                    if (Math.floorMod(C(((long) i4) ^ jHashCode, str3 + "|" + str4), 100L) < 15) {
                        v5Var3 = v5Var4;
                    }
                    if (v5Var3 == v5Var) {
                        v5Var = v5Var2;
                    }
                    LinkedHashMap linkedHashMap3 = this.f1306n;
                    int iIntValue = ((Integer) linkedHashMap3.getOrDefault(v5Var3.f1459a, 0)).intValue();
                    int iIntValue2 = ((Integer) linkedHashMap3.getOrDefault(v5Var.f1459a, 0)).intValue();
                    if (iIntValue > 0 && iIntValue2 > 0 && iIntValue >= iIntValue2) {
                        A(v5Var3.f1459a, iIntValue2);
                        A(v5Var.f1459a, iIntValue);
                    }
                }
                i4++;
            }
            arrayList2 = arrayList;
            i5 = i3;
            linkedHashMap2 = linkedHashMap;
            i2 = 1;
        }
    }

    public final void a() {
        if (this.f1296d == null || !this.f1308p) {
            return;
        }
        synchronized (this.f1293a) {
            long jMax = Math.max(0L, this.f1299g.getAsLong());
            long j2 = this.s;
            if (jMax <= j2) {
                return;
            }
            long jMin = Math.min(jMax, j2 + 24);
            long j3 = this.s;
            while (true) {
                j3++;
                if (j3 > jMin) {
                    this.s = jMin;
                    s();
                    return;
                }
                B(j3);
            }
        }
    }

    public final void b(List list, List list2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (v5 v5Var : this.f1303k) {
            linkedHashMap.put(v5Var.f1459a, v5Var);
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            linkedHashMap.remove((String) it.next());
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            v5 v5Var2 = (v5) it2.next();
            linkedHashMap.put(v5Var2.f1459a, v5Var2);
        }
        y(new ArrayList(linkedHashMap.values()));
        if (!this.r) {
            p(Collections.emptyList());
            return;
        }
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            String str = (String) it3.next();
            this.f1304l.remove(str);
            this.f1306n.remove(str);
        }
        Iterator it4 = list.iterator();
        while (it4.hasNext()) {
            v5 v5Var3 = (v5) it4.next();
            this.f1304l.put(v5Var3.f1459a, v5Var3);
        }
        w();
    }

    public final void c(List list) {
        LinkedHashMap linkedHashMap = this.f1306n;
        HashMap map = new HashMap(linkedHashMap);
        LinkedHashMap linkedHashMap2 = this.f1304l;
        boolean z = false;
        for (String str : new ArrayList(linkedHashMap2.keySet())) {
            int[] iArr = m1.f1169a;
            if (str != null && str.startsWith("elite_")) {
                linkedHashMap2.remove(str);
                linkedHashMap.remove(str);
                map.remove(str);
                z = true;
            }
        }
        ArrayList<String> arrayList = new ArrayList();
        if (list != null) {
            ArrayList<v5> arrayList2 = new ArrayList(list);
            arrayList2.sort(new n.b(8));
            for (v5 v5Var : arrayList2) {
                if (!linkedHashMap2.containsKey(v5Var.f1459a)) {
                    String str2 = v5Var.f1459a;
                    linkedHashMap2.put(str2, v5Var);
                    arrayList.add(str2);
                }
            }
        }
        if (z || !arrayList.isEmpty()) {
            ArrayList<String> arrayList3 = new ArrayList();
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                v5 v5Var2 = (v5) entry.getValue();
                if (v5Var2 != null && v5Var2.f1464f) {
                    String str3 = (String) entry.getKey();
                    int[] iArr2 = m1.f1169a;
                    if (!(str3 != null && str3.startsWith("elite_"))) {
                        arrayList3.add((String) entry.getKey());
                    }
                }
            }
            arrayList3.sort(Comparator.comparingInt(new j7(0, map)).thenComparing(new n.a(15)));
            HashSet hashSet = new HashSet(arrayList3);
            ArrayList<String> arrayList4 = new ArrayList();
            for (String str4 : linkedHashMap2.keySet()) {
                int[] iArr3 = m1.f1169a;
                if (!(str4 != null && str4.startsWith("elite_")) && !hashSet.contains(str4)) {
                    arrayList4.add(str4);
                }
            }
            arrayList4.sort(Comparator.comparingInt(new j7(1, map)).thenComparing(new n.a(16)));
            linkedHashMap.clear();
            this.f1307o.clear();
            for (String str5 : arrayList3) {
                A(str5, q(str5, Math.max(1, ((Integer) map.getOrDefault(str5, 1001)).intValue())));
            }
            for (String str6 : arrayList) {
                A(str6, q(str6, 1));
            }
            int i2 = 1;
            for (String str7 : arrayList4) {
                int iQ = q(str7, i2);
                A(str7, iQ);
                i2 = iQ + 1;
            }
            for (String str8 : arrayList3) {
                int iIntValue = ((Integer) map.getOrDefault(str8, 0)).intValue();
                Integer num = (Integer) linkedHashMap.get(str8);
                if (num != null && iIntValue != num.intValue()) {
                    LinkedHashMap linkedHashMap3 = this.f1305m;
                    Map map2 = (Map) linkedHashMap3.get(str8);
                    if (map2 != null) {
                        d(num.intValue(), map2);
                        this.f1294b.e(str8, num.intValue());
                        linkedHashMap3.put(str8, map2);
                        linkedHashMap2.put(str8, v5.j(str8, map2));
                    }
                }
            }
            z2.e("SGSCQ_ROSTER", "garrison applied elites=" + arrayList.size() + " eliteRanks=" + u(arrayList) + " protectedPlayerRanks=" + u(arrayList3));
        }
    }

    public final void e() {
        if (this.f1308p) {
            return;
        }
        int i2 = 0;
        while (i2 < 2 && !this.f1308p) {
            i();
            Future future = this.f1309q;
            if (future == null) {
                return;
            }
            try {
                future.get(60L, TimeUnit.SECONDS);
                return;
            } catch (TimeoutException unused) {
                StringBuilder sb = new StringBuilder("initializeNow exceeded 60s (attempt ");
                i2++;
                sb.append(i2);
                sb.append(") — dumping all thread stacks");
                z2.c("SGSCQ_ROSTER", sb.toString());
                for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                    Thread key = entry.getKey();
                    StackTraceElement[] value = entry.getValue();
                    if (value != null && value.length != 0) {
                        StringBuilder sb2 = new StringBuilder("TGAT ");
                        sb2.append(key.getName());
                        sb2.append(" state=");
                        sb2.append(key.getState());
                        for (StackTraceElement stackTraceElement : value) {
                            sb2.append("\n  at ");
                            sb2.append(stackTraceElement);
                        }
                        z2.g("SGSCQ_ROSTER", sb2.toString());
                    }
                }
                future.cancel(true);
                synchronized (this.f1293a) {
                    this.f1309q = null;
                }
            } catch (Exception e2) {
                throw new IllegalStateException("Robot roster initialization failed", e2);
            }
        }
        if (!this.f1308p) {
            throw new IllegalStateException("Robot roster initialization did not complete");
        }
    }

    public final String f(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((v5) it.next()).f1459a);
        }
        return u(arrayList);
    }

    public final v5 g(String str) {
        v5 v5Var;
        e();
        synchronized (this.f1293a) {
            v5Var = (v5) this.f1304l.get(str);
        }
        return v5Var;
    }

    public final void i() {
        if (this.f1308p || this.f1309q != null) {
            return;
        }
        synchronized (this.f1293a) {
            if (!this.f1308p && this.f1309q == null) {
                this.f1309q = u.submit(new b(this, 10));
            }
        }
    }

    public final List m(int i2, long j2, String str) {
        e();
        ArrayList arrayList = new ArrayList();
        synchronized (this.f1293a) {
            for (v5 v5Var : this.f1304l.values()) {
                if (!v5Var.f1459a.equals(str)) {
                    arrayList.add(v5Var);
                }
            }
        }
        arrayList.sort(Comparator.comparingLong(new n7(i2, 1)).thenComparingLong(new o7(j2, 3)));
        return l(1000, arrayList);
    }

    public final List n(int i2, int i3, long j2, String str) {
        e();
        ArrayList arrayList = new ArrayList();
        synchronized (this.f1293a) {
            for (v5 v5Var : this.f1304l.values()) {
                if (!v5Var.f1459a.equals(str) && Math.abs(v5Var.f1461c - i2) <= 10) {
                    arrayList.add(v5Var);
                }
            }
        }
        arrayList.sort(Comparator.comparingInt(new l7(i2, 3)).thenComparingLong(new o7(j2, 2)));
        return l(i3, arrayList);
    }

    public final List o(int i2, long j2, String str) {
        List listN = n(i2, 4, j2, str);
        if (!listN.isEmpty()) {
            return listN;
        }
        e();
        ArrayList arrayList = new ArrayList();
        synchronized (this.f1293a) {
            for (v5 v5Var : this.f1304l.values()) {
                if (v5Var != null && !v5Var.f1459a.equals(str)) {
                    arrayList.add(v5Var);
                }
            }
        }
        arrayList.sort(Comparator.comparingInt(new l7(i2, 2)).thenComparingLong(new o7(j2, 1)));
        return l(4, arrayList);
    }

    public final void p(List list) {
        ArrayList<String> arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = this.f1304l;
        for (String str : linkedHashMap.keySet()) {
            if (k(str)) {
                arrayList.add(str);
            }
        }
        for (String str2 : arrayList) {
            linkedHashMap.remove(str2);
            this.f1306n.remove(str2);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v5 v5Var = (v5) it.next();
            linkedHashMap.put(v5Var.f1459a, v5Var);
        }
        w();
    }

    public final int q(String str, int i2) {
        while (true) {
            LinkedHashMap linkedHashMap = this.f1307o;
            if (!linkedHashMap.containsKey(Integer.valueOf(i2)) || str.equals(linkedHashMap.get(Integer.valueOf(i2)))) {
                break;
            }
            i2++;
        }
        return i2;
    }

    public final v5 r(int i2) {
        v5 v5Var;
        e();
        a();
        synchronized (this.f1293a) {
            String str = (String) this.f1307o.get(Integer.valueOf(i2));
            v5Var = str == null ? null : (v5) this.f1304l.get(str);
        }
        return v5Var;
    }

    public final void s() {
        Integer num;
        if (this.f1296d == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : this.f1304l.entrySet()) {
            String str = (String) entry.getKey();
            if ((str != null && str.startsWith("robot_")) && (num = (Integer) this.f1306n.get(entry.getKey())) != null) {
                linkedHashMap.put((String) entry.getKey(), num);
            }
        }
        w5 w5Var = this.f1296d;
        long j2 = this.s;
        synchronized (w5Var) {
            if (!linkedHashMap.isEmpty() && (w5Var.f1516a.exists() || w5Var.f1516a.mkdirs())) {
                File file = new File(w5Var.f1516a, w5Var.f1519d.getName() + ".tmp");
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("schema_version", Integer.valueOf(w5Var.f1518c));
                linkedHashMap2.put("apk_version", w5Var.f1517b);
                linkedHashMap2.put("last_simulated_hour", Long.valueOf(j2));
                linkedHashMap2.put("robot_ranks", new LinkedHashMap(linkedHashMap));
                try {
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), StandardCharsets.UTF_8));
                    try {
                        a.o oVar = w5Var.f1520e;
                        oVar.getClass();
                        try {
                            oVar.k(linkedHashMap2, linkedHashMap2.getClass(), oVar.g(bufferedWriter));
                            bufferedWriter.close();
                            if ((w5Var.f1519d.exists() && !w5Var.f1519d.delete()) || !file.renameTo(w5Var.f1519d)) {
                                file.delete();
                            }
                        } catch (IOException e2) {
                            throw new a.r(e2);
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedWriter.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public final int t(String str, Map map) {
        Integer num = (Integer) this.f1306n.get(str);
        if (num != null) {
            return num.intValue();
        }
        if (map == null) {
            return 0;
        }
        return j(map.get("ladder_rank"), 1001);
    }

    public final String u(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder("[");
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (i2 > 0) {
                sb.append(',');
            }
            sb.append(this.f1306n.getOrDefault(arrayList.get(i2), 0));
        }
        sb.append(']');
        return sb.toString();
    }

    public final int v(String str) {
        int iIntValue;
        e();
        a();
        synchronized (this.f1293a) {
            Integer num = (Integer) this.f1306n.get(str);
            iIntValue = num == null ? 0 : num.intValue();
        }
        return iIntValue;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a1  */
    public final void w() {
        LinkedHashMap linkedHashMap;
        int i2;
        boolean z;
        HashMap map = new HashMap();
        LinkedHashMap linkedHashMap2 = this.f1304l;
        Iterator it = linkedHashMap2.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            linkedHashMap = this.f1306n;
            i2 = 1;
            if (!zHasNext) {
                break;
            }
            String str = (String) it.next();
            if (!k(str)) {
                v5 v5Var = (v5) linkedHashMap2.get(str);
                map.put(str, Integer.valueOf(Math.max(1, ((Integer) linkedHashMap.getOrDefault(str, Integer.valueOf(v5Var != null ? v5Var.f1463e : 1001))).intValue())));
            }
        }
        long asLong = this.f1300h.getAsLong();
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (k((String) entry.getKey())) {
                v5 v5Var2 = (v5) entry.getValue();
                if (v5Var2.f1464f || !v5Var2.f1459a.startsWith("cloud_")) {
                    z = false;
                } else {
                    Object obj = v5Var2.f1466h.get("ladder_rank_verified_until_ms");
                    if ((!(obj instanceof Number) ? 0L : ((Number) obj).longValue()) > asLong) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    map.put((String) entry.getKey(), Integer.valueOf(Math.max(1, ((v5) entry.getValue()).f1463e)));
                }
            }
        }
        ArrayList<String> arrayList = new ArrayList(linkedHashMap2.keySet());
        arrayList.removeIf(new e5(map, i2));
        ArrayList<String> arrayList2 = new ArrayList();
        ArrayList<String> arrayList3 = new ArrayList();
        for (String str2 : arrayList) {
            v5 v5Var3 = (v5) linkedHashMap2.get(str2);
            if (v5Var3 == null || !v5Var3.f1464f) {
                arrayList3.add(str2);
            } else {
                arrayList2.add(str2);
            }
        }
        arrayList2.sort(Comparator.comparingInt(new j7(2, map)).thenComparing(new n.a(17)));
        arrayList3.sort(new q5(this, map, 1));
        linkedHashMap.clear();
        this.f1307o.clear();
        for (String str3 : arrayList2) {
            A(str3, q(str3, Math.max(1, ((Integer) map.getOrDefault(str3, 1001)).intValue())));
        }
        int i3 = 1;
        for (String str4 : arrayList3) {
            int iQ = q(str4, i3);
            A(str4, iQ);
            i3 = iQ + 1;
        }
        s();
    }

    public final void x(String str) {
        LinkedHashMap linkedHashMap = this.f1304l;
        linkedHashMap.remove(str);
        LinkedHashMap linkedHashMap2 = this.f1305m;
        linkedHashMap2.remove(str);
        LinkedHashMap linkedHashMap3 = this.f1306n;
        Integer num = (Integer) linkedHashMap3.remove(str);
        if (num == null) {
            return;
        }
        LinkedHashMap linkedHashMap4 = this.f1307o;
        if (str.equals(linkedHashMap4.get(num))) {
            linkedHashMap4.remove(num);
        }
        ArrayList<String> arrayList = new ArrayList(linkedHashMap.keySet());
        int i2 = 1;
        arrayList.sort(Comparator.comparingInt(new m7(this, 1)).thenComparing(new n.a(20)));
        HashMap map = new HashMap(linkedHashMap3);
        ArrayList<String> arrayList2 = new ArrayList();
        linkedHashMap3.clear();
        linkedHashMap4.clear();
        for (String str2 : arrayList) {
            linkedHashMap3.put(str2, Integer.valueOf(i2));
            linkedHashMap4.put(Integer.valueOf(i2), str2);
            v5 v5Var = (v5) linkedHashMap.get(str2);
            if (v5Var != null && v5Var.f1464f && ((Integer) map.getOrDefault(str2, 0)).intValue() != i2) {
                arrayList2.add(str2);
            }
            i2++;
        }
        for (String str3 : arrayList2) {
            Map map2 = (Map) linkedHashMap2.get(str3);
            Integer num2 = (Integer) linkedHashMap3.get(str3);
            if (map2 != null && num2 != null) {
                d(num2.intValue(), map2);
                this.f1294b.e(str3, num2.intValue());
                linkedHashMap2.put(str3, map2);
                linkedHashMap.put(str3, v5.j(str3, map2));
            }
        }
        s();
    }

    public final void y(List list) {
        ArrayList arrayList = this.f1303k;
        arrayList.clear();
        arrayList.addAll(list);
    }

    public final void z(List list) {
        boolean z;
        int iRound;
        long jRound;
        d0 d0Var;
        int iRound2;
        v5 v5Var;
        if (this.f1296d == null) {
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((v5) it.next()).f1459a);
        }
        w5 w5Var = this.f1296d;
        synchronized (w5Var) {
            z = false;
            if (w5Var.f1519d.isFile()) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(w5Var.f1519d), StandardCharsets.UTF_8));
                    try {
                        a.o oVar = w5Var.f1520e;
                        oVar.getClass();
                        Map map = (Map) p5.A1(Map.class).cast(oVar.c(bufferedReader, TypeToken.get(Map.class)));
                        if (map != null) {
                            int i2 = w5Var.f1518c;
                            Object obj = map.get("schema_version");
                            if (obj == null) {
                                iRound = -1;
                            } else {
                                try {
                                    iRound = (int) Math.round(Double.parseDouble(String.valueOf(obj)));
                                } catch (NumberFormatException unused) {
                                    iRound = -1;
                                }
                            }
                            if (i2 == iRound && w5Var.f1517b.equals(String.valueOf(map.get("apk_version")))) {
                                Object obj2 = map.get("robot_ranks");
                                if (obj2 instanceof Map) {
                                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                                    Iterator it2 = ((Map) obj2).entrySet().iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            Map.Entry entry = (Map.Entry) it2.next();
                                            Object value = entry.getValue();
                                            if (value == null) {
                                                iRound2 = 0;
                                            } else {
                                                try {
                                                    iRound2 = (int) Math.round(Double.parseDouble(String.valueOf(value)));
                                                } catch (NumberFormatException unused2) {
                                                    iRound2 = 0;
                                                }
                                            }
                                            if (iRound2 > 0) {
                                                linkedHashMap.put((String) entry.getKey(), Integer.valueOf(iRound2));
                                            }
                                        } else if (linkedHashSet.equals(linkedHashMap.keySet()) && new HashSet(linkedHashMap.values()).size() == linkedHashMap.size()) {
                                            Object obj3 = map.get("last_simulated_hour");
                                            if (obj3 == null) {
                                                jRound = -1;
                                            } else {
                                                try {
                                                    jRound = Math.round(Double.parseDouble(String.valueOf(obj3)));
                                                } catch (NumberFormatException unused3) {
                                                    jRound = -1;
                                                }
                                            }
                                            if (jRound >= 0) {
                                                d0Var = new d0(jRound, linkedHashMap);
                                                bufferedReader.close();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        bufferedReader.close();
                        d0Var = null;
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception unused4) {
                }
            } else {
                d0Var = null;
            }
        }
        if (d0Var != null) {
            Map map2 = (Map) d0Var.f616b;
            Iterator it3 = map2.entrySet().iterator();
            while (true) {
                boolean zHasNext = it3.hasNext();
                LinkedHashMap linkedHashMap2 = this.f1307o;
                if (!zHasNext) {
                    for (String str : map2.keySet()) {
                        Integer num = (Integer) this.f1306n.remove(str);
                        if (num != null && str.equals(linkedHashMap2.get(num))) {
                            linkedHashMap2.remove(num);
                        }
                    }
                    for (Map.Entry entry2 : map2.entrySet()) {
                        A((String) entry2.getKey(), ((Integer) entry2.getValue()).intValue());
                    }
                    z = true;
                    break;
                }
                String str2 = (String) linkedHashMap2.get(((Map.Entry) it3.next()).getValue());
                if (str2 != null && (v5Var = (v5) this.f1304l.get(str2)) != null && v5Var.f1464f) {
                    break;
                }
            }
            if (z) {
                this.s = d0Var.f615a;
                return;
            }
        }
        this.s = Math.max(0L, this.f1299g.getAsLong());
        s();
    }
}
