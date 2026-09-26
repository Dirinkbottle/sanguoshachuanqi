package com.sgscq.vpn;

import com.google.gson.reflect.TypeToken;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class w5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f1516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f1519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a.o f1520e;

    public w5(File file, int i2, int i3) {
        if (i3 != 1) {
            this.f1520e = new a.o();
            this.f1516a = file;
            this.f1517b = "1.0.1.14067+23";
            this.f1518c = i2;
            StringBuilder sb = new StringBuilder("robot_rank_state_");
            String strReplaceAll = "1.0.1.14067+23".replaceAll("[^A-Za-z0-9._-]", "_");
            sb.append(strReplaceAll.isEmpty() ? "unknown" : strReplaceAll);
            sb.append("_v");
            sb.append(i2);
            sb.append(".json");
            this.f1519d = new File(file, sb.toString());
            return;
        }
        this.f1520e = new a.o();
        this.f1516a = file;
        this.f1517b = "1.0.1.14067+23";
        this.f1518c = i2;
        StringBuilder sb2 = new StringBuilder("robot_roster_");
        String strReplaceAll2 = "1.0.1.14067+23".replaceAll("[^A-Za-z0-9._-]", "_");
        sb2.append(strReplaceAll2.isEmpty() ? "unknown" : strReplaceAll2);
        sb2.append("_v");
        sb2.append(i2);
        sb2.append(".json.gz");
        this.f1519d = new File(file, sb2.toString());
    }

    public static void a(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 < 0) {
                        fileOutputStream.flush();
                        fileOutputStream.getFD().sync();
                        fileOutputStream.close();
                        fileInputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                    try {
                        fileInputStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            fileInputStream.close();
            throw th4;
        }
    }

    public static boolean b(List list) {
        int i2;
        int i3;
        if (list == null || list.size() != 1000) {
            return false;
        }
        HashSet hashSet = new HashSet();
        int i4 = 0;
        while (i4 < list.size()) {
            v5 v5Var = (v5) list.get(i4);
            if (v5Var != null) {
                String str = v5Var.f1459a;
                if (hashSet.add(str)) {
                    String str2 = v5Var.f1460b;
                    String strTrim = str2 == null ? "" : str2.trim();
                    if (strTrim.isEmpty() || strTrim.equals(str) || strTrim.matches("robot_\\d+") || v5Var.f1463e != (i2 = i4 + 1) || (i3 = v5Var.f1462d) <= 0) {
                        return false;
                    }
                    if (i4 > 0 && ((v5) list.get(i4 - 1)).f1462d < i3) {
                        return false;
                    }
                    i4 = i2;
                }
            }
            return false;
        }
        return true;
    }

    public final List c() {
        File file = this.f1519d;
        if (!file.isFile()) {
            return Collections.emptyList();
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new GZIPInputStream(new BufferedInputStream(new FileInputStream(file))), StandardCharsets.UTF_8);
            try {
                h.a aVar = new h.a(inputStreamReader);
                try {
                    String strX = "";
                    ArrayList arrayList = new ArrayList(1000);
                    aVar.d();
                    int iRound = -1;
                    int iRound2 = -1;
                    while (aVar.m()) {
                        String strT = aVar.t();
                        boolean zEquals = "schema_version".equals(strT);
                        a.o oVar = this.f1520e;
                        if (zEquals) {
                            oVar.getClass();
                            Object objB = oVar.b(aVar, TypeToken.get((Type) Object.class));
                            if (objB != null) {
                                try {
                                    iRound = (int) Math.round(Double.parseDouble(String.valueOf(objB)));
                                } catch (NumberFormatException unused) {
                                    iRound = -1;
                                }
                            }
                            iRound = -1;
                        } else if ("apk_version".equals(strT)) {
                            strX = aVar.x();
                        } else if ("robot_count".equals(strT)) {
                            oVar.getClass();
                            Object objB2 = oVar.b(aVar, TypeToken.get((Type) Object.class));
                            if (objB2 != null) {
                                try {
                                    iRound2 = (int) Math.round(Double.parseDouble(String.valueOf(objB2)));
                                } catch (NumberFormatException unused2) {
                                    iRound2 = -1;
                                }
                            }
                            iRound2 = -1;
                        } else if ("robots".equals(strT)) {
                            aVar.c();
                            while (aVar.m()) {
                                oVar.getClass();
                                Map map = (Map) oVar.b(aVar, TypeToken.get((Type) Map.class));
                                if (map == null) {
                                    List listEmptyList = Collections.emptyList();
                                    aVar.close();
                                    inputStreamReader.close();
                                    return listEmptyList;
                                }
                                arrayList.add(v5.i(map));
                            }
                            aVar.g();
                        } else {
                            aVar.F();
                        }
                    }
                    aVar.h();
                    if (iRound == this.f1518c && this.f1517b.equals(strX) && iRound2 == 1000) {
                        List listUnmodifiableList = b(arrayList) ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
                        aVar.close();
                        inputStreamReader.close();
                        return listUnmodifiableList;
                    }
                    List listEmptyList2 = Collections.emptyList();
                    aVar.close();
                    inputStreamReader.close();
                    return listEmptyList2;
                } catch (Throwable th) {
                    try {
                        aVar.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    inputStreamReader.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Exception unused3) {
            return Collections.emptyList();
        }
    }

    public final void d(List list) {
        File file = this.f1516a;
        if (file.exists() || file.mkdirs()) {
            StringBuilder sb = new StringBuilder();
            File file2 = this.f1519d;
            sb.append(file2.getName());
            sb.append(".tmp");
            File file3 = new File(file, sb.toString());
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(fileOutputStream));
                h.b bVar = new h.b(new OutputStreamWriter(gZIPOutputStream, StandardCharsets.UTF_8));
                bVar.e();
                bVar.i("schema_version");
                bVar.o(this.f1518c);
                bVar.i("apk_version");
                bVar.r(this.f1517b);
                bVar.i("robot_count");
                bVar.o(list.size());
                bVar.i("robots");
                bVar.d();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.f1520e.k(((v5) it.next()).v(), Map.class, bVar);
                }
                bVar.g();
                bVar.h();
                bVar.flush();
                gZIPOutputStream.finish();
                gZIPOutputStream.flush();
                fileOutputStream.getFD().sync();
                bVar.close();
                if (file2.exists() && !file2.delete()) {
                    a(file3, file2);
                    file3.delete();
                } else {
                    if (file3.renameTo(file2)) {
                        return;
                    }
                    a(file3, file2);
                    file3.delete();
                }
            } catch (Exception unused) {
                file3.delete();
            }
        }
    }
}
