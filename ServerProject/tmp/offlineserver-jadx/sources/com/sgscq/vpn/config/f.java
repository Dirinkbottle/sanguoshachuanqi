package com.sgscq.vpn.config;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f572d;

    public f(String str, String str2, int i2, boolean z) {
        this.f570b = str;
        this.f571c = str2;
        this.f572d = i2;
        this.f569a = z;
    }

    public static f a() {
        return new f(false, "http", "", 0);
    }

    public static f b(String str, String str2, String str3) {
        String strTrim = "";
        String lowerCase = str == null ? "" : str.trim().toLowerCase(Locale.ROOT);
        if (!"http".equals(lowerCase) && !"https".equals(lowerCase) && !"socks5".equals(lowerCase)) {
            throw new IllegalArgumentException("仅支持 HTTP、HTTPS 或 SOCKS5");
        }
        String strTrim2 = str2 == null ? "" : str2.trim();
        if (strTrim2.isEmpty()) {
            throw new IllegalArgumentException("服务器地址不能为空");
        }
        if (str3 != null) {
            try {
                strTrim = str3.trim();
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("端口必须是 1-65535 的整数");
            }
        }
        int i2 = Integer.parseInt(strTrim);
        if (i2 < 1 || i2 > 65535) {
            throw new IllegalArgumentException("端口必须是 1-65535 的整数");
        }
        return new f(true, lowerCase, strTrim2, i2);
    }

    public static boolean c(String str, String str2) {
        if (str != null) {
            String strTrim = str.trim();
            Locale locale = Locale.ROOT;
            String lowerCase = strTrim.toLowerCase(locale);
            String lowerCase2 = str2.toLowerCase(locale);
            if (!lowerCase.equals(lowerCase2)) {
                if (lowerCase.endsWith("." + lowerCase2)) {
                }
            }
            return true;
        }
        return false;
    }

    public f(boolean z, String str, String str2, int i2) {
        this.f569a = z;
        this.f570b = str;
        this.f571c = str2;
        this.f572d = i2;
    }
}
