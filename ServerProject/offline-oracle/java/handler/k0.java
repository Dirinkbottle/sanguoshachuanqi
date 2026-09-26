package com.sgscq.vpn.handler;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.h5;
import com.sgscq.vpn.m4;
import com.sgscq.vpn.p5;
import com.sgscq.vpn.z2;
import java.io.ByteArrayOutputStream;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class k0 implements e0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String[] f900h = {"131004", "eff_zhouyu"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedPreferences f903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h5 f904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ThreadLocal f906f = new ThreadLocal();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ThreadLocal f907g = new ThreadLocal();

    public k0(Context context, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2, h5 h5Var, int i2) {
        this.f901a = context;
        this.f902b = sharedPreferences;
        this.f903c = sharedPreferences2;
        this.f904d = h5Var;
        this.f905e = i2;
    }

    public final int a() {
        return h("resource_coin", 0);
    }

    public final int b() {
        return h("resource_energy", 12);
    }

    public final int c() {
        return h("resource_gold", 0);
    }

    public final int d() {
        return h("resource_power", 150);
    }

    public final String e(Map map) {
        String str;
        int iIndexOf;
        m4 m4Var;
        Context context = this.f901a;
        if (map == null) {
            m4Var = new m4(context);
        } else {
            String str2 = (String) map.get("uid");
            if (str2 == null || str2.isEmpty()) {
                String str3 = (String) map.get("account_uid");
                if (str3 == null || str3.isEmpty()) {
                    String str4 = (String) map.get("user_id");
                    m4Var = ((str4 == null || str4.isEmpty()) && (str = (String) map.get("token")) != null && str.startsWith("tok_") && (iIndexOf = str.indexOf(95, 4)) > 4 && !str.substring(4, iIndexOf).isEmpty()) ? new m4(context) : new m4(context);
                } else {
                    m4Var = new m4(context);
                }
            } else {
                m4Var = new m4(context);
            }
        }
        return m4Var.v();
    }

    public final byte[] f(String str, int i2) {
        try {
            g(str);
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bytes2 = ("HTTP/1.1 " + i2 + " OK\r\nContent-Type: application/json; charset=utf-8\r\nContent-Length: " + bytes.length + "\r\n\r\n").getBytes("US-ASCII");
            byte[] bArr = new byte[bytes2.length + bytes.length];
            System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
            System.arraycopy(bytes, 0, bArr, bytes2.length, bytes.length);
            return bArr;
        } catch (Exception unused) {
            return "HTTP/1.1 500 Error\r\n\r\n".getBytes();
        }
    }

    public final void g(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        String[] strArr = f900h;
        for (int i2 = 0; i2 < 2; i2++) {
            String str2 = strArr[i2];
            int iIndexOf = str.indexOf(str2);
            if (iIndexOf >= 0) {
                StringBuilder sb = new StringBuilder("[ZhouyuProbe] action=");
                String str3 = (String) this.f906f.get();
                if (str3 == null || str3.isEmpty()) {
                    str3 = "<none>";
                }
                c.a.y(sb, str3, " token=", str2, " idx=");
                sb.append(iIndexOf);
                sb.append(" snippet=");
                sb.append(str.substring(Math.max(0, iIndexOf - 140), Math.min(str.length(), iIndexOf + 180)).replace('\n', ' ').replace('\r', ' '));
                z2.g("SGSCQ_SRV", sb.toString());
            }
        }
    }

    public final int h(String str, int i2) {
        try {
            return Integer.parseInt(this.f902b.getString(str, String.valueOf(i2)));
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public final int i(int i2, String str, Map map) {
        Object obj;
        if (map == null || (obj = map.get(str)) == null) {
            return i2;
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        try {
            return Integer.parseInt(obj.toString());
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public final long j(long j2, Map map) {
        Object obj;
        if (map == null || (obj = map.get("user_coin")) == null) {
            return j2;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        try {
            try {
                return Long.parseLong(obj.toString());
            } catch (NumberFormatException unused) {
                return (long) Double.parseDouble(obj.toString());
            }
        } catch (NumberFormatException unused2) {
            return j2;
        }
    }

    public final d1 k() {
        return new d1(this, 5);
    }

    public final void l(String str) {
        ThreadLocal threadLocal = this.f906f;
        if (str == null || str.isEmpty()) {
            str = "<none>";
        }
        threadLocal.set(str);
    }

    public final void m(com.sgscq.vpn.c0 c0Var) {
        this.f907g.set(c0Var);
        this.f904d.f736a.set(c0Var);
    }

    public final byte[] n(String str) {
        try {
            g(str);
            byte[] bytes = p5.M(str).getBytes("UTF-8");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bytes.length);
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, new Deflater(1));
            deflaterOutputStream.write(bytes);
            deflaterOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byte[] bytes2 = ("HTTP/1.1 200 OK\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Length: " + byteArray.length + "\r\n\r\n").getBytes("US-ASCII");
            byte[] bArr = new byte[bytes2.length + byteArray.length];
            System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
            System.arraycopy(byteArray, 0, bArr, bytes2.length, byteArray.length);
            return bArr;
        } catch (Exception unused) {
            return f("{\"ret\":-1,\"msg\":\"响应压缩失败\"}", 500);
        }
    }
}
