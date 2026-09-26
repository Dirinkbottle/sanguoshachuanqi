package com.sgscq.vpn.cloud;

import android.content.Context;
import android.util.Base64;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.s5;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.y5;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final File f394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final File f395g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final File f396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c.e f397i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a.o f398j = new a.o();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final s5 f399k = new s5(this, 4, 1);

    public l0(Context context) {
        Context applicationContext = context.getApplicationContext();
        File file = new File(applicationContext.getFilesDir(), "cloud_opponents");
        String lowerCase = "release".toLowerCase();
        if (!"debug".equals(lowerCase) && !"release".equals(lowerCase)) {
            throw new IllegalArgumentException("云端对手环境无效");
        }
        this.f389a = lowerCase;
        File file2 = new File(file, com.sgscq.vpn.handler.l.a("cloud_opponents_", lowerCase, ".enc"));
        this.f390b = file2;
        this.f391c = new File(file, file2.getName() + ".bak");
        this.f392d = new File(file, com.sgscq.vpn.handler.l.a("cloud_opponents_", lowerCase, "_active"));
        this.f393e = new File(file, com.sgscq.vpn.handler.l.a("cloud_opponents_", lowerCase, "_staging"));
        this.f394f = new File(file, com.sgscq.vpn.handler.l.a("cloud_opponents_", lowerCase, "_merge"));
        this.f395g = new File(file, com.sgscq.vpn.handler.l.a("cloud_opponents_", lowerCase, "_staging_backup"));
        this.f396h = new File(file, com.sgscq.vpn.handler.l.a("cloud_opponents_", lowerCase, "_backup"));
        this.f397i = new c.e(this, applicationContext);
    }

    public static void A(File file) {
        if (file.exists()) {
            f(file);
        }
    }

    public static String B(String str) {
        String strTrim = str == null ? "" : str.trim();
        if (strTrim.isEmpty() || strTrim.matches("[0-9]+")) {
            return strTrim;
        }
        throw new IllegalArgumentException("云端对手游标无效");
    }

    public static void C(ArrayList arrayList) {
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            v5 v5Var = (v5) it.next();
            D(v5Var, hashSet);
            if (v5Var.f().isEmpty()) {
                throw new IllegalArgumentException("云端对手阵容无效");
            }
        }
    }

    public static void D(v5 v5Var, HashSet hashSet) {
        if (v5Var != null) {
            String str = v5Var.f1459a;
            if (str.startsWith("cloud_") && hashSet.add(str)) {
                String str2 = v5Var.f1460b;
                String strTrim = str2 == null ? "" : str2.trim();
                if (strTrim.isEmpty() || strTrim.equals(str)) {
                    throw new IllegalArgumentException("云端对手名字无效");
                }
                if (v5Var.f1462d <= 0 || v5Var.t <= 0) {
                    throw new IllegalArgumentException("云端对手阵容无效");
                }
                return;
            }
        }
        throw new IllegalArgumentException("云端对手 ID 重复或无效");
    }

    public static List d(List list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(v5.h((r) it.next()));
            }
        }
        C(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    public static void e(File file, File file2) throws IOException {
        File file3 = new File(file2.getPath() + ".copy.tmp");
        if (file3.exists() && !file3.delete()) {
            throw new IllegalStateException("无法清理云端对手增量临时分包");
        }
        if (!file.isFile()) {
            throw new IllegalArgumentException("云端对手分包缺失");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                try {
                    byte[] bArr = new byte[8192];
                    long j2 = 0;
                    while (true) {
                        int i2 = bufferedInputStream.read(bArr);
                        if (i2 < 0) {
                            bufferedOutputStream.flush();
                            fileOutputStream.getFD().sync();
                            bufferedOutputStream.close();
                            fileOutputStream.close();
                            bufferedInputStream.close();
                            if (file2.exists() && !file2.delete()) {
                                file3.delete();
                                throw new IllegalStateException("无法替换云端对手增量分包");
                            }
                            if (file3.renameTo(file2)) {
                                return;
                            }
                            file3.delete();
                            throw new IllegalStateException("无法发布云端对手增量分包");
                        }
                        j2 += (long) i2;
                        if (j2 > 33554432) {
                            throw new IllegalArgumentException("云端对手分包文件过大");
                        }
                        bufferedOutputStream.write(bArr, 0, i2);
                    }
                } catch (Throwable th) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Throwable th5) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th6) {
                th5.addSuppressed(th6);
            }
            throw th5;
        }
    }

    public static void f(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                f(file2);
            }
        }
        if (!file.delete()) {
            throw new IllegalStateException("无法清理云端对手分包");
        }
    }

    public static String g(byte[] bArr) throws IOException {
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr2 = new byte[8192];
                while (true) {
                    int i2 = gZIPInputStream.read(bArr2);
                    if (i2 < 0) {
                        String str = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                        byteArrayOutputStream.close();
                        gZIPInputStream.close();
                        return str;
                    }
                    if (byteArrayOutputStream.size() + i2 > 33554432) {
                        throw new IllegalArgumentException("云端对手分包过大");
                    }
                    byteArrayOutputStream.write(bArr2, 0, i2);
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                gZIPInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static boolean h(i0 i0Var) {
        return i0Var.f358e.size() > i0Var.f355b.size() * 100 || i0Var.f356c.size() >= 64;
    }

    public static int n(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return -1;
    }

    public static File o(File file, String str) {
        if (str == null || !(str.matches("overlay_[0-9]{20}_[0-9]{5}\\.enc") || str.matches("overlay_pending_[0-9]{5}\\.enc"))) {
            throw new IllegalArgumentException("云端对手增量分包名称无效");
        }
        return new File(file, str);
    }

    public static byte[] s(File file) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = bufferedInputStream.read(bArr);
                    if (i2 < 0) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        bufferedInputStream.close();
                        return byteArray;
                    }
                    if (byteArrayOutputStream.size() + i2 > 33554432) {
                        throw new IllegalArgumentException("云端对手分包文件过大");
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static void z(File file) {
        A(file);
        if (!file.mkdirs() && !file.isDirectory()) {
            throw new IllegalStateException("无法创建云端对手分包目录");
        }
    }

    public final void E(File file, i0 i0Var) throws IOException {
        H(new File(file, "manifest.enc"), p5.z0("schema_version", 5, "environment", i0Var.f354a, "pages", i0Var.f355b, "overlay_pages", i0Var.f356c, "pending_overlay_pages", i0Var.f357d, "ids", i0Var.f358e, "next_cursor", i0Var.f359f, "downloaded_count", Integer.valueOf(i0Var.f360g), "complete", Boolean.valueOf(i0Var.f361h), "mode", i0Var.f362i, "base_generation", Long.valueOf(i0Var.f363j), "target_generation", Long.valueOf(i0Var.f364k)));
    }

    public final void F(File file, List list, ArrayList arrayList) throws IOException {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((v5) it.next()).v());
        }
        H(file, p5.z0("schema_version", 5, "environment", this.f389a, "upserts", arrayList2, "deleted_ids", arrayList));
    }

    public final void G(File file, List list) throws IOException {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((v5) it.next()).v());
        }
        H(file, p5.z0("schema_version", 5, "environment", this.f389a, "snapshots", arrayList));
    }

    public final void H(File file, LinkedHashMap linkedHashMap) throws IOException {
        File parentFile = file.getParentFile();
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            throw new IllegalStateException("无法创建云端对手分包目录");
        }
        String strI = this.f398j.i(linkedHashMap);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(strI.getBytes(StandardCharsets.UTF_8));
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            c.e eVar = this.f397i;
            eVar.getClass();
            byte[] bytes = y5.i(((Context) eVar.f38a).getApplicationContext(), Base64.encodeToString(byteArray, 2), y5.f1570c).getBytes(StandardCharsets.UTF_8);
            File file2 = new File(file.getPath() + ".tmp");
            File file3 = new File(file.getPath() + ".bak");
            if (file2.exists() && !file2.delete()) {
                throw new IllegalStateException("无法清理云端对手临时分包");
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                try {
                    bufferedOutputStream.write(bytes);
                    bufferedOutputStream.flush();
                    fileOutputStream.getFD().sync();
                    bufferedOutputStream.close();
                    fileOutputStream.close();
                    if (file3.exists() && !file3.delete()) {
                        file2.delete();
                        throw new IllegalStateException("无法清理云端对手分包备份");
                    }
                    boolean zExists = file.exists();
                    if (zExists && !file.renameTo(file3)) {
                        file2.delete();
                        throw new IllegalStateException("无法备份云端对手分包");
                    }
                    if (file2.renameTo(file)) {
                        if (file3.exists()) {
                            file3.delete();
                        }
                    } else {
                        if (zExists) {
                            file3.renameTo(file);
                        }
                        file2.delete();
                        throw new IllegalStateException("无法替换云端对手分包");
                    }
                } catch (Throwable th) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Throwable th5) {
            try {
                gZIPOutputStream.close();
            } catch (Throwable th6) {
                th5.addSuppressed(th6);
            }
            throw th5;
        }
    }

    public final synchronized void a(long j2) {
        boolean z;
        i0 i0VarT = t(this.f392d);
        if (i0VarT == null || !(z = i0VarT.f361h) || j2 < i0VarT.f364k) {
            throw new IllegalArgumentException("云端对手确认代次无效");
        }
        E(this.f392d, new i0(i0VarT.f354a, i0VarT.f355b, i0VarT.f356c, i0VarT.f357d, i0VarT.f358e, i0VarT.f359f, i0VarT.f360g, z, i0VarT.f362i, i0VarT.f363j, j2));
    }

    public final synchronized k0 b(String str, List list, List list2, String str2) {
        i0 i0VarF;
        i0 i0VarY = y();
        if (!"delta".equals(i0VarY.f362i)) {
            throw new IllegalStateException("云端对手同步模式不匹配");
        }
        String strB = B(str);
        String strB2 = B(str2);
        if (i0VarY.f361h) {
            throw new IllegalStateException("云端对手增量已下载完成");
        }
        if (!i0VarY.f359f.equals(strB)) {
            throw new IllegalArgumentException("云端对手断点游标不匹配");
        }
        if (!strB2.isEmpty() && strB2.equals(strB)) {
            throw new IllegalArgumentException("云端对手分页游标未推进");
        }
        List listD = d(list);
        ArrayList arrayList = new ArrayList();
        if (list2 == null) {
            list2 = Collections.emptyList();
        }
        for (String str3 : list2) {
            String strTrim = str3 == null ? "" : str3.trim();
            if (strTrim.isEmpty()) {
                throw new IllegalArgumentException("云端对手删除 ID 无效");
            }
            if (!strTrim.startsWith("cloud_")) {
                strTrim = "cloud_" + strTrim;
            }
            arrayList.add(strTrim);
        }
        String str4 = String.format(Locale.ROOT, "overlay_pending_%05d.enc", Integer.valueOf(i0VarY.f357d.size()));
        F(o(this.f393e, str4), listD, arrayList);
        LinkedHashSet linkedHashSet = new LinkedHashSet(i0VarY.f358e);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            linkedHashSet.remove((String) it.next());
        }
        Iterator it2 = listD.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(((v5) it2.next()).f1459a);
        }
        i0VarF = i0VarY.f(listD.size() + arrayList.size(), str4, strB2, new ArrayList(linkedHashSet));
        E(this.f393e, i0VarF);
        return i0VarF.d();
    }

    public final synchronized k0 c(String str, String str2, List list) {
        i0 i0VarA;
        i0 i0VarY = y();
        if (!"full".equals(i0VarY.f362i)) {
            throw new IllegalStateException("云端对手同步模式不匹配");
        }
        String strB = B(str);
        String strB2 = B(str2);
        if (i0VarY.f361h) {
            throw new IllegalStateException("云端对手分包已下载完成");
        }
        if (!i0VarY.f359f.equals(strB)) {
            throw new IllegalArgumentException("云端对手断点游标不匹配");
        }
        if (!strB2.isEmpty() && strB2.equals(strB)) {
            throw new IllegalArgumentException("云端对手分页游标未推进");
        }
        List<v5> listD = d(list);
        HashSet hashSet = new HashSet(i0VarY.f358e);
        ArrayList arrayList = new ArrayList();
        for (v5 v5Var : listD) {
            if (!hashSet.add(v5Var.f1459a)) {
                throw new IllegalArgumentException("云端对手 ID 跨页重复");
            }
            arrayList.add(v5Var.f1459a);
        }
        String str3 = String.format(Locale.ROOT, "page_%05d.enc", Integer.valueOf(i0VarY.f355b.size()));
        G(new File(this.f393e, str3), listD);
        i0VarA = i0VarY.a(str3, strB2, arrayList);
        E(this.f393e, i0VarA);
        return i0VarA.d();
    }

    public final synchronized List i() {
        if (this.f392d.isDirectory()) {
            try {
                return l(this.f392d);
            } catch (Exception unused) {
            }
        }
        if (this.f396h.isDirectory()) {
            try {
                return l(this.f396h);
            } catch (Exception unused2) {
            }
        }
        try {
            return j();
        } catch (Exception unused3) {
            return Collections.emptyList();
        }
    }

    public final List j() throws IOException {
        File file = this.f390b;
        if (!file.isFile()) {
            file = this.f391c;
        }
        if (!file.isFile()) {
            return Collections.emptyList();
        }
        Map map = (Map) this.f398j.d(g(Base64.decode(y5.c(((Context) this.f397i.f38a).getApplicationContext(), new String(s(file), StandardCharsets.UTF_8), y5.f1570c), 0)), Map.class);
        if (map != null && n(map.get("schema_version")) == 1) {
            if (this.f389a.equals(String.valueOf(map.get("environment")))) {
                Object obj = map.get("snapshots");
                if (!(obj instanceof List)) {
                    return Collections.emptyList();
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (List) obj) {
                    if (!(obj2 instanceof Map)) {
                        return Collections.emptyList();
                    }
                    arrayList.add(v5.i((Map) obj2));
                }
                C(arrayList);
                return Collections.unmodifiableList(arrayList);
            }
        }
        return Collections.emptyList();
    }

    public final synchronized v5 k(File file, String str) {
        try {
            String absolutePath = file.getAbsolutePath();
            List<v5> list = (List) this.f399k.get(absolutePath);
            if (list == null) {
                list = u(file).f370a;
                this.f399k.put(absolutePath, list);
            }
            for (v5 v5Var : list) {
                if (str.equals(v5Var.f1459a)) {
                    return v5Var;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final List l(File file) throws IOException {
        i0 i0VarT = t(file);
        if (i0VarT == null || !i0VarT.f361h) {
            throw new IllegalArgumentException("云端对手分包清单不完整");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : i0VarT.f355b) {
            if (str == null || !str.matches("page_[0-9]{5}\\.enc")) {
                throw new IllegalArgumentException("云端对手分包名称无效");
            }
            File file2 = new File(file, str);
            for (v5 v5Var : v(file2)) {
                if (linkedHashMap.containsKey(v5Var.f1459a)) {
                    throw new IllegalArgumentException("云端对手 ID 跨页重复");
                }
                String str2 = v5Var.f1459a;
                linkedHashMap.put(str2, v5Var.a(new h0(this, file2, str2, 0)));
            }
        }
        Iterator it = i0VarT.f356c.iterator();
        while (it.hasNext()) {
            File fileO = o(file, (String) it.next());
            j0 j0VarU = u(fileO);
            Iterator it2 = j0VarU.f371b.iterator();
            while (it2.hasNext()) {
                linkedHashMap.remove((String) it2.next());
            }
            for (v5 v5Var2 : j0VarU.f370a) {
                String str3 = v5Var2.f1459a;
                linkedHashMap.put(str3, v5Var2.a(new h0(this, fileO, str3, 1)));
            }
        }
        if (!new ArrayList(linkedHashMap.keySet()).equals(i0VarT.f358e)) {
            throw new IllegalArgumentException("云端对手分包数量不一致");
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        HashSet hashSet = new HashSet();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            D((v5) it3.next(), hashSet);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final void m(LinkedHashMap linkedHashMap, LinkedHashSet linkedHashSet, j0 j0Var, File file) {
        for (String str : j0Var.f371b) {
            linkedHashMap.remove(str);
            linkedHashSet.add(str);
        }
        for (v5 v5Var : j0Var.f370a) {
            linkedHashSet.remove(v5Var.f1459a);
            String str2 = v5Var.f1459a;
            linkedHashMap.put(str2, v5Var.a(new h0(this, file, str2, 2)));
        }
    }

    public final synchronized u p() {
        LinkedHashMap linkedHashMap;
        LinkedHashSet linkedHashSet;
        i0 i0Var;
        i0 i0VarY = y();
        if (!"delta".equals(i0VarY.f362i) || !i0VarY.f361h) {
            throw new IllegalStateException("云端对手增量尚未下载完成");
        }
        i0 i0VarT = t(this.f392d);
        if (i0VarT == null || !i0VarT.f361h || i0VarT.f364k != i0VarY.f363j) {
            throw new IllegalStateException("云端对手增量基础代次已变化");
        }
        linkedHashMap = new LinkedHashMap();
        linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList(i0VarT.f356c);
        for (int i2 = 0; i2 < i0VarY.f357d.size(); i2++) {
            File fileO = o(this.f393e, (String) i0VarY.f357d.get(i2));
            j0 j0VarU = u(fileO);
            String str = String.format(Locale.ROOT, "overlay_%020d_%05d.enc", Long.valueOf(i0VarY.f364k), Integer.valueOf(i0VarT.f356c.size() + i2));
            File fileO2 = o(this.f392d, str);
            e(fileO, fileO2);
            arrayList.add(str);
            m(linkedHashMap, linkedHashSet, j0VarU, fileO2);
        }
        i0Var = new i0(i0VarY.f354a, i0VarY.f355b, arrayList, Collections.emptyList(), i0VarY.f358e, "", i0VarY.f360g, true, "delta", i0VarY.f363j, i0VarY.f364k);
        E(this.f392d, i0Var);
        try {
            A(this.f393e);
        } catch (Exception unused) {
        }
        this.f399k.clear();
        return new u(i0Var.f358e.size(), 1, new ArrayList(linkedHashMap.values()), new ArrayList(linkedHashSet));
    }

    public final synchronized List q() {
        i0 i0VarY = y();
        if ("delta".equals(i0VarY.f362i)) {
            p();
            return i();
        }
        if (!i0VarY.f361h) {
            throw new IllegalStateException("云端对手分包尚未下载完成");
        }
        boolean zIsDirectory = this.f392d.isDirectory();
        if (this.f392d.exists() && !zIsDirectory) {
            throw new IllegalStateException("无法发布云端对手分包");
        }
        if (zIsDirectory) {
            A(this.f396h);
            if (!this.f392d.renameTo(this.f396h)) {
                throw new IllegalStateException("无法备份旧云端对手分包");
            }
        }
        if (!this.f393e.renameTo(this.f392d)) {
            if (zIsDirectory) {
                this.f396h.renameTo(this.f392d);
            }
            throw new IllegalStateException("无法发布云端对手分包");
        }
        this.f399k.clear();
        try {
            List listL = l(this.f392d);
            A(this.f396h);
            return listL;
        } catch (Exception e2) {
            A(this.f392d);
            if (zIsDirectory) {
                this.f396h.renameTo(this.f392d);
            }
            throw e2;
        }
    }

    public final synchronized int r() {
        i0 i0VarT;
        i0VarT = t(this.f392d);
        return (i0VarT == null || !i0VarT.f361h) ? 0 : i0VarT.f358e.size();
    }

    public final i0 t(File file) {
        if (!file.isDirectory()) {
            return null;
        }
        try {
            return i0.b(this.f389a, w(new File(file, "manifest.enc")));
        } catch (Exception unused) {
            return null;
        }
    }

    public final j0 u(File file) throws IOException {
        Map mapW = w(file);
        if (n(mapW.get("schema_version")) == 5) {
            if (this.f389a.equals(String.valueOf(mapW.get("environment")))) {
                Object obj = mapW.get("upserts");
                Object obj2 = mapW.get("deleted_ids");
                if (!(obj instanceof List) || !(obj2 instanceof List)) {
                    throw new IllegalArgumentException("云端对手增量分包内容无效");
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : (List) obj) {
                    if (!(obj3 instanceof Map)) {
                        throw new IllegalArgumentException("云端对手增量分包内容无效");
                    }
                    arrayList.add(v5.i((Map) obj3));
                }
                C(arrayList);
                ArrayList arrayListE = i0.e(obj2);
                Iterator it = arrayListE.iterator();
                while (it.hasNext()) {
                    if (!((String) it.next()).startsWith("cloud_")) {
                        throw new IllegalArgumentException("云端对手删除 ID 无效");
                    }
                }
                return new j0(arrayList, arrayListE);
            }
        }
        throw new IllegalArgumentException("云端对手增量分包环境无效");
    }

    public final List v(File file) throws IOException {
        Map mapW = w(file);
        int iN = n(mapW.get("schema_version"));
        if (iN >= 4 && iN <= 5) {
            if (this.f389a.equals(String.valueOf(mapW.get("environment")))) {
                Object obj = mapW.get("snapshots");
                if (!(obj instanceof List)) {
                    throw new IllegalArgumentException("云端对手分包内容无效");
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (List) obj) {
                    if (!(obj2 instanceof Map)) {
                        throw new IllegalArgumentException("云端对手分包内容无效");
                    }
                    arrayList.add(v5.i((Map) obj2));
                }
                C(arrayList);
                return Collections.unmodifiableList(arrayList);
            }
        }
        throw new IllegalArgumentException("云端对手分包环境无效");
    }

    public final Map w(File file) throws IOException {
        if (!file.isFile()) {
            file = new File(file.getPath() + ".bak");
        }
        if (!file.isFile()) {
            throw new IllegalArgumentException("云端对手分包缺失");
        }
        Map map = (Map) this.f398j.d(g(Base64.decode(y5.c(((Context) this.f397i.f38a).getApplicationContext(), new String(s(file), StandardCharsets.UTF_8), y5.f1570c), 0)), Map.class);
        if (map != null) {
            return map;
        }
        throw new IllegalArgumentException("云端对手分包为空");
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0022  */
    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:19:0x003d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    /* JADX WARN: Code duplicated, block: B:28:0x0059  */
    /* JADX WARN: Code duplicated, block: B:30:0x0061  */
    public final void x() {
        i0 i0VarT;
        i0 i0VarT2;
        File file = this.f393e;
        i0 i0VarT3 = t(file);
        File file2 = this.f395g;
        File file3 = this.f394f;
        if (i0VarT3 == null) {
            i0VarT = t(file3);
            if (i0VarT != null) {
                if (!h(i0VarT)) {
                    A(file);
                    if (file3.renameTo(file)) {
                        throw new IllegalStateException("无法恢复云端对手增量断点");
                    }
                    A(file2);
                    return;
                }
                A(file3);
            }
            i0VarT2 = t(file2);
            if (i0VarT2 != null) {
                if (!h(i0VarT2)) {
                    A(file);
                    if (file2.renameTo(file)) {
                        throw new IllegalStateException("无法恢复云端对手增量备份");
                    }
                    A(file3);
                    return;
                }
                A(file2);
            }
        } else if (h(i0VarT3)) {
            A(file);
            i0VarT = t(file3);
            if (i0VarT != null) {
                if (!h(i0VarT)) {
                    A(file);
                    if (file3.renameTo(file)) {
                        throw new IllegalStateException("无法恢复云端对手增量断点");
                    }
                    A(file2);
                    return;
                }
                A(file3);
            }
            i0VarT2 = t(file2);
            if (i0VarT2 != null) {
                if (!h(i0VarT2)) {
                    A(file);
                    if (file2.renameTo(file)) {
                        throw new IllegalStateException("无法恢复云端对手增量备份");
                    }
                    A(file3);
                    return;
                }
                A(file2);
            }
        }
        A(file3);
        A(file2);
    }

    public final i0 y() {
        i0 i0VarT = t(this.f393e);
        if (i0VarT != null) {
            return i0VarT;
        }
        throw new IllegalStateException("云端对手断点清单缺失");
    }
}
