package com.sgscq.vpn;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class g2 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f700i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile g2 f701j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m.e f702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f2 f703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a.w f704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f707f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f708g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile m.e f709h;

    public g2(m.e eVar, f2 f2Var, a.w wVar, k kVar, List list) {
        this.f702a = eVar;
        this.f703b = f2Var;
        this.f704c = wVar;
        this.f705d = kVar;
        this.f706e = Collections.unmodifiableList(new ArrayList(list));
    }

    public static byte[] a(InputStream inputStream, int i2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        int i3 = 0;
        while (true) {
            int i4 = inputStream.read(bArr);
            if (i4 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            i3 += i4;
            if (i3 > i2) {
                throw new IllegalArgumentException("remote config size exceeds limit");
            }
            byteArrayOutputStream.write(bArr, 0, i4);
        }
    }

    public static com.sgscq.vpn.config.i b() {
        g2 g2Var = f701j;
        m.e eVar = g2Var == null ? null : g2Var.f709h;
        if (eVar == null) {
            return null;
        }
        return (com.sgscq.vpn.config.i) eVar.f1806c;
    }

    public static g2 e(Context context) {
        g2 g2Var = f701j;
        if (g2Var == null) {
            synchronized (f700i) {
                g2Var = f701j;
                if (g2Var == null) {
                    Context applicationContext = context.getApplicationContext();
                    m.e eVar = new m.e(2, applicationContext);
                    f2 f2Var = new f2(0, applicationContext);
                    a.w wVar = new a.w((Object) null);
                    k kVar = new k(1);
                    Executors.newSingleThreadExecutor(new x0(2));
                    g2 g2Var2 = new g2(eVar, f2Var, wVar, kVar, Collections.singletonList("https://api.sgscq.com/api/v1/public/limited-shop-config"));
                    f701j = g2Var2;
                    g2Var = g2Var2;
                }
            }
        }
        g2Var.d();
        return g2Var;
    }

    public static long f(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssXXX", Locale.US);
        simpleDateFormat.setLenient(false);
        try {
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e2) {
            throw new IllegalArgumentException("invalid published_at", e2);
        }
    }

    public final m.e c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return this.f703b.a(bArr);
        } catch (Exception e2) {
            z2.g("LimitedShopConfig", "限时配置校验失败: ".concat(e2.getClass().getSimpleName()));
            return null;
        }
    }

    public final synchronized void d() {
        if (this.f707f) {
            return;
        }
        m.e eVarC = c(g());
        m.e eVarC2 = c(h());
        if (eVarC == null || (eVarC2 != null && Long.compare(f(((d2) eVarC2.f1805b).f624a), f(((d2) eVarC.f1805b).f624a)) >= 0)) {
            eVarC = eVarC2;
        }
        this.f709h = eVarC;
        this.f707f = true;
        if (this.f709h == null) {
            z2.g("LimitedShopConfig", "内置与缓存配置均不可用，继续使用硬编码限时逻辑");
        } else {
            z2.e("LimitedShopConfig", "已加载限时配置 " + ((d2) this.f709h.f1805b).f624a);
        }
    }

    public final byte[] g() {
        try {
            InputStream inputStreamOpen = ((Context) this.f702a.f1805b).getAssets().open("encrypted/limited_shop_config.bin");
            try {
                byte[] bArrA = a(inputStreamOpen, 2097152);
                inputStreamOpen.close();
                return bArrA;
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
        } catch (Exception e2) {
            z2.g("LimitedShopConfig", "读取内置限时配置失败: ".concat(e2.getClass().getSimpleName()));
            return null;
        }
    }

    public final byte[] h() {
        try {
            Object obj = this.f702a.f1806c;
            if (!((File) obj).isFile()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream((File) obj);
            try {
                byte[] bArrA = a(fileInputStream, 2097152);
                fileInputStream.close();
                return bArrA;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e2) {
            z2.g("LimitedShopConfig", "读取限时配置缓存失败: ".concat(e2.getClass().getSimpleName()));
            return null;
        }
    }

    public final boolean i() {
        Iterator it = this.f706e.iterator();
        while (it.hasNext()) {
            try {
                byte[] bArrF = this.f704c.f((String) it.next(), 2097152);
                m.e eVarA = this.f703b.a(bArrF);
                m.e eVar = this.f709h;
                if (eVar == null || Long.compare(f(((d2) eVarA.f1805b).f624a), f(((d2) eVar.f1805b).f624a)) >= 0) {
                    this.f702a.Q(bArrF);
                    this.f709h = eVarA;
                    z2.e("LimitedShopConfig", "远端限时配置已更新: " + ((d2) eVarA.f1805b).f624a);
                    return true;
                }
                z2.g("LimitedShopConfig", "忽略日期回退的远端配置: " + ((d2) eVarA.f1805b).f624a);
            } catch (Exception e2) {
                z2.g("LimitedShopConfig", "远端限时配置源失败，继续回退: ".concat(e2.getClass().getSimpleName()));
            }
        }
        return false;
    }

    public final synchronized void j() {
        d();
        if (this.f708g) {
            return;
        }
        this.f708g = true;
        m.e eVar = this.f702a;
        ((SharedPreferences) eVar.f1807d).edit().putLong("last_remote_check_at", this.f705d.c()).apply();
        try {
            i();
            this.f708g = false;
        } catch (Throwable th) {
            this.f708g = false;
            throw th;
        }
    }
}
