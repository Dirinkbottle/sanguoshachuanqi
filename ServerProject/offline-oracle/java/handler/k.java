package com.sgscq.vpn.handler;

import com.sgscq.vpn.w1;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f896f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f897g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f898h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f899i;

    public k(String str, int i2, int i3, int i4, String str2, String str3, String str4, String str5, String str6) {
        this.f891a = str;
        this.f892b = i2;
        this.f893c = i3;
        this.f894d = i4;
        this.f895e = str2;
        this.f896f = str3;
        this.f897g = str4;
        this.f898h = str5;
        this.f899i = str6;
    }

    public static k a(int i2, String str, String str2) {
        int i3;
        String str3;
        int i4;
        com.sgscq.vpn.cloud.a aVarK;
        String[] strArr = m.f924a;
        String str4 = "142022";
        if (!"600050".equals(str)) {
            if ("600007".equals(str)) {
                str3 = "121007";
                i4 = 86;
            } else if ("600051".equals(str)) {
                i3 = 87;
            } else if ("600008".equals(str)) {
                str3 = "121006";
                i4 = 88;
            } else if ("600087".equals(str)) {
                str3 = "141002";
                i4 = 117;
            } else {
                str4 = "121004";
                if ("791460".equals(str)) {
                    i3 = 90;
                } else if ("791773".equals(str)) {
                    i3 = 91;
                } else {
                    str4 = "142009";
                    if ("791461".equals(str)) {
                        i3 = 92;
                    } else if ("791462".equals(str)) {
                        i3 = 93;
                    } else {
                        str4 = "142008";
                        if ("791487".equals(str)) {
                            i3 = 95;
                        } else if ("791488".equals(str)) {
                            i3 = 96;
                        } else {
                            if (!"791489".equals(str)) {
                                throw new IllegalArgumentException("Missing daily adventure presentation for item ".concat(str));
                            }
                            i3 = 97;
                        }
                    }
                }
            }
            aVarK = m.k(str3, i4);
            return b(str, 1, i2, str2, aVarK);
        }
        i3 = 85;
        aVarK = m.k(str4, i3);
        return b(str, 1, i2, str2, aVarK);
    }

    public static k b(String str, int i2, int i3, String str2, com.sgscq.vpn.cloud.a aVar) {
        return new k(str, i2, i3, 2, "Item", aVar.f264a, aVar.f265b, aVar.f266c, str2);
    }

    public static String c(String str) {
        Map mapC1 = w1.a1(null).c1(str);
        Object obj = mapC1 != null ? mapC1.get("name") : null;
        String strValueOf = obj == null ? "" : String.valueOf(obj);
        return strValueOf.isEmpty() ? "itemname".concat(str) : strValueOf;
    }

    public static k d(int i2) {
        int i3;
        String str = i2 <= 5 ? "791461" : "791462";
        int i4 = i2 >= 20 ? 2 : 1;
        String strC = c(str);
        if (i2 >= 20) {
            i3 = 94;
        } else {
            i3 = i2 <= 5 ? 92 : 93;
        }
        return b(str, i4, 1, strC, m.k("142009", i3));
    }

    public static k e(int i2) {
        if (i2 >= 200) {
            return b("791773", 1, 1, c("791773"), m.k("121004", 91));
        }
        return b("791460", Math.max(1, i2 / 50), 1, c("791460"), m.k("121004", i2 >= 100 ? 90 : 89));
    }
}
