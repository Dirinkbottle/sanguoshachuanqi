package p;

import a.w;
import android.content.Context;
import com.sgscq.vpn.c7;
import com.sgscq.vpn.f3;
import com.sgscq.vpn.g2;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.x0;
import com.sgscq.vpn.y0;
import com.sgscq.vpn.z2;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import q.m;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Object f1876o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile l f1877p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f1878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f1879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f1880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f1881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g f1882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f1883f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final m f1884g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f1885h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f1886i = new AtomicBoolean();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f1887j = new AtomicBoolean();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicLong f1888k = new AtomicLong();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile boolean f1889l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte[] f1890m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile b f1891n;

    public l(k kVar, i iVar, com.sgscq.vpn.k kVar2, j jVar, w wVar, Executor executor, String str, com.sgscq.vpn.k kVar3) {
        this.f1878a = kVar;
        this.f1879b = iVar;
        this.f1880c = kVar2;
        this.f1881d = jVar;
        this.f1882e = wVar;
        this.f1883f = executor;
        this.f1884g = kVar3;
        this.f1885h = str;
        try {
            byte[] bArrC = kVar.c();
            if (bArrC != null && bArrC.length != 0) {
                b bVarA = jVar.a(bArrC, kVar2.c());
                if (bVarA.f1863a < kVar.i()) {
                    return;
                }
                this.f1890m = (byte[]) bArrC.clone();
                this.f1891n = bVarA;
                this.f1889l = false;
            }
        } catch (Exception e2) {
            z2.g("VpsLimitedSchedule", "缓存不可用: " + k(e2));
        }
    }

    public static int a(char c2) {
        if (c2 >= 'A' && c2 <= 'Z') {
            return c2 - 'A';
        }
        if (c2 >= 'a' && c2 <= 'z') {
            return (c2 - 'a') + 26;
        }
        if (c2 >= '0' && c2 <= '9') {
            return (c2 - '0') + 52;
        }
        if (c2 == '+') {
            return 62;
        }
        if (c2 == '/') {
            return 63;
        }
        throw new IllegalArgumentException("Base64 invalid");
    }

    public static l b() {
        return new l(new w(17), new com.sgscq.vpn.k(12), new com.sgscq.vpn.k(13), new com.sgscq.vpn.k(14), new w(18), new e(), "", new com.sgscq.vpn.k(15));
    }

    public static l c(Context context) {
        l lVarB;
        l lVar = f1877p;
        if (lVar != null) {
            return lVar;
        }
        synchronized (f1876o) {
            lVarB = f1877p;
            if (lVarB == null) {
                Context applicationContext = context.getApplicationContext();
                g2.e(applicationContext);
                try {
                    int i2 = 0;
                    lVarB = new l(new c.e(10, applicationContext), new w(20, i2), new com.sgscq.vpn.k(11), new com.sgscq.vpn.a(e(applicationContext), applicationContext, 7), new w(19, i2), Executors.newSingleThreadExecutor(new x0(10)), g(), p5.V);
                } catch (Exception e2) {
                    z2.g("VpsLimitedSchedule", "初始化失败: " + k(e2));
                    lVarB = b();
                }
                f1877p = lVarB;
            }
        }
        return lVarB;
    }

    public static int d(m.e eVar, long j2) {
        int i2 = 0;
        if (eVar == null) {
            return 0;
        }
        for (a aVar : (List) eVar.f1805b) {
            if (aVar != null && aVar.f1861f > j2) {
                i2++;
            }
        }
        return i2;
    }

    public static PublicKey e(Context context) throws NoSuchAlgorithmException, IOException {
        InputStream inputStreamOpen = context.getAssets().open("encrypted/limited_schedule_public_key.pem");
        try {
            byte[] bArrH = h(inputStreamOpen, 16384);
            inputStreamOpen.close();
            String strReplaceAll = new String(bArrH, StandardCharsets.US_ASCII).replace("-----BEGIN PUBLIC KEY-----", "").replace("-----END PUBLIC KEY-----", "").replaceAll("\\s", "");
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            int i2 = strReplaceAll.endsWith("==") ? 2 : strReplaceAll.endsWith("=") ? 1 : 0;
            if ((strReplaceAll.length() & 3) != 0) {
                throw new IllegalArgumentException("Base64 invalid");
            }
            int length = ((strReplaceAll.length() / 4) * 3) - i2;
            byte[] bArr = new byte[length];
            int i3 = 0;
            for (int i4 = 0; i4 < strReplaceAll.length(); i4 += 4) {
                int i5 = i4 + 2;
                int iA = (a(strReplaceAll.charAt(i4)) << 18) | (a(strReplaceAll.charAt(i4 + 1)) << 12) | ((strReplaceAll.charAt(i5) == '=' ? 0 : a(strReplaceAll.charAt(i5))) << 6);
                int i6 = i4 + 3;
                int iA2 = iA | (strReplaceAll.charAt(i6) == '=' ? 0 : a(strReplaceAll.charAt(i6)));
                if (i3 < length) {
                    bArr[i3] = (byte) (iA2 >>> 16);
                    i3++;
                }
                if (i3 < length) {
                    bArr[i3] = (byte) (iA2 >>> 8);
                    i3++;
                }
                if (i3 < length) {
                    bArr[i3] = (byte) iA2;
                    i3++;
                }
            }
            return keyFactory.generatePublic(new X509EncodedKeySpec(bArr));
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static boolean f(m.e eVar, m.e eVar2, long j2) {
        boolean z;
        if (eVar == eVar2) {
            return true;
        }
        if (eVar == null || eVar2 == null) {
            return false;
        }
        int i2 = 0;
        for (a aVar : (List) eVar.f1805b) {
            if (aVar != null && aVar.f1861f > j2) {
                while (true) {
                    Object obj = eVar2.f1805b;
                    if (i2 >= ((List) obj).size()) {
                        z = false;
                        break;
                    }
                    int i3 = i2 + 1;
                    if (l(aVar, (a) ((List) obj).get(i2))) {
                        z = true;
                        i2 = i3;
                        break;
                    }
                    i2 = i3;
                }
                if (!z) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String g() {
        return com.sgscq.vpn.handler.l.a("https://api.sgscq.com/api/v1/limited-schedule", "?", "preview_slots=8");
    }

    public static byte[] h(InputStream inputStream, int i2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        int i3 = 0;
        while (true) {
            int i4 = inputStream.read(bArr);
            if (i4 < 0) {
                return byteArrayOutputStream.toByteArray();
            }
            i3 += i4;
            if (i3 > i2) {
                throw new q.k("response too large");
            }
            byteArrayOutputStream.write(bArr, 0, i4);
        }
    }

    public static String k(Exception exc) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(exc.getClass().getSimpleName());
        if (exc.getMessage() == null) {
            str = "";
        } else {
            str = " " + exc.getMessage();
        }
        sb.append(str);
        return sb.toString();
    }

    public static boolean l(a aVar, a aVar2) {
        if (aVar == aVar2) {
            return true;
        }
        if (aVar == null || aVar2 == null) {
            return false;
        }
        return aVar.f1856a.equals(aVar2.f1856a) && aVar.f1857b.equals(aVar2.f1857b) && aVar.f1858c.equals(aVar2.f1858c) && aVar.f1860e == aVar2.f1860e && aVar.f1861f == aVar2.f1861f && aVar.f1862g == aVar2.f1862g;
    }

    public static boolean m(m.e eVar, m.e eVar2) {
        if (eVar == eVar2) {
            return true;
        }
        if (eVar == null || eVar2 == null) {
            return false;
        }
        Object obj = eVar.f1805b;
        int size = ((List) obj).size();
        Object obj2 = eVar2.f1805b;
        if (size != ((List) obj2).size()) {
            return false;
        }
        for (int i2 = 0; i2 < ((List) obj).size(); i2++) {
            if (!l((a) ((List) obj).get(i2), (a) ((List) obj2).get(i2))) {
                return false;
            }
        }
        return true;
    }

    public final boolean i(long j2, f3 f3Var) {
        boolean z;
        m.e eVar;
        boolean z2 = true;
        switch (((w) this.f1882e).f29a) {
            case 18:
                z = true;
                break;
            default:
                z = c7.f254i;
                break;
        }
        if (!z) {
            b bVar = this.f1891n;
            if (bVar == null || (eVar = bVar.f1867e) == null) {
                z2 = false;
            } else {
                Iterator it = ((List) eVar.f1805b).iterator();
                int i2 = 0;
                while (true) {
                    if (it.hasNext()) {
                        a aVar = (a) it.next();
                        if (aVar == null || aVar.f1861f <= j2 || (i2 = i2 + 1) < 2) {
                        }
                    } else {
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                long j3 = this.f1888k.get();
                if ((j3 <= 0 || j2 - j3 >= 60000) && this.f1888k.compareAndSet(j3, j2)) {
                    return n(f3Var);
                }
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a7  */
    public final void j() {
        boolean z;
        long jC = ((com.sgscq.vpn.k) this.f1880c).c();
        byte[] bArr = (byte[]) p5.P(new y0(this, 7), this.f1884g);
        b bVarA = this.f1881d.a(bArr, jC);
        long jMax = Math.max(this.f1878a.i(), this.f1891n == null ? 0L : this.f1891n.f1863a);
        long j2 = bVarA.f1863a;
        if (j2 < jMax) {
            return;
        }
        if (j2 == jMax && this.f1891n != null && !Arrays.equals(this.f1890m, bArr)) {
            b bVar = this.f1891n;
            if (!(bVar.f1863a == bVarA.f1863a && bVar.f1866d == bVarA.f1866d && m(bVar.f1867e, bVarA.f1867e) && m(bVar.f1868f, bVarA.f1868f))) {
                b bVar2 = this.f1891n;
                if (d(bVar2.f1868f, jC) + d(bVar2.f1867e, jC) > 0) {
                    z = bVar2.f1863a == bVarA.f1863a && bVar2.f1866d == bVarA.f1866d && f(bVar2.f1867e, bVarA.f1867e, jC) && f(bVar2.f1868f, bVarA.f1868f, jC);
                }
                if (!z) {
                    return;
                }
            }
            if (bVarA.f1864b < this.f1891n.f1864b) {
                return;
            }
        }
        this.f1878a.g(bArr);
        this.f1878a.d(bVarA.f1863a);
        this.f1890m = (byte[]) bArr.clone();
        this.f1891n = bVarA;
        this.f1889l = false;
    }

    public final boolean n(f3 f3Var) {
        AtomicBoolean atomicBoolean = this.f1886i;
        int i2 = 0;
        if (!atomicBoolean.compareAndSet(false, true)) {
            return false;
        }
        try {
            this.f1883f.execute(new f(this, f3Var, i2));
            return true;
        } catch (RuntimeException e2) {
            atomicBoolean.set(false);
            z2.g("VpsLimitedSchedule", "刷新任务提交失败: " + k(e2));
            return false;
        }
    }
}
