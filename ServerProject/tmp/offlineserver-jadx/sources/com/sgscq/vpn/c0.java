package com.sgscq.vpn;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c0 f232f = new c0(3, "", "", "", "");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f237e;

    public c0(int i2, String str, String str2, String str3, String str4) {
        this.f233a = i2 == 0 ? 3 : i2;
        this.f234b = str == null ? "" : str;
        this.f235c = str2 == null ? "" : str2;
        this.f236d = str3;
        this.f237e = str4;
    }

    public static c0 a(Map map) {
        int i2;
        if (map == null || map.isEmpty()) {
            return f232f;
        }
        String str = (String) map.get("app_indentify");
        if ("70001".equals(str)) {
            i2 = 1;
        } else {
            i2 = "50004".equals(str) ? 2 : 3;
        }
        int i3 = i2;
        String str2 = (String) map.get("statistic");
        String str3 = (String) map.get("cfg_version");
        String str4 = (String) map.get("ver_game");
        String strB = b(str2, "ver_game");
        String str5 = "";
        if (str4 == null) {
            str4 = "";
        }
        if (str4.isEmpty()) {
            if (strB == null) {
                strB = "";
            }
            str4 = strB;
        }
        String str6 = (String) map.get("channelName");
        String strB2 = b(str2, "channelName");
        if (str6 == null) {
            str6 = "";
        }
        if (!str6.isEmpty()) {
            str5 = str6;
        } else if (strB2 != null) {
            str5 = strB2;
        }
        return new c0(i3, str, str3, str4, str5);
    }

    public static String b(String str, String str2) {
        String strA;
        int iIndexOf;
        int iIndexOf2;
        int iIndexOf3;
        if (str == null || str.isEmpty() || str2.isEmpty() || (iIndexOf = str.indexOf((strA = com.sgscq.vpn.handler.l.a("\"", str2, "\"")))) < 0 || (iIndexOf2 = str.indexOf(58, strA.length() + iIndexOf)) < 0 || (iIndexOf3 = str.indexOf(34, iIndexOf2 + 1)) < 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (int i2 = iIndexOf3 + 1; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (z) {
                sb.append(cCharAt);
                z = false;
            } else if (cCharAt == '\\') {
                z = true;
            } else {
                if (cCharAt == '\"') {
                    return sb.toString();
                }
                sb.append(cCharAt);
            }
        }
        return "";
    }

    public final String c() {
        return "variant=" + c.a.F(this.f233a) + " app_indentify=" + this.f234b + " cfg_version=" + this.f235c + " ver_game=" + this.f236d + " channelName=" + this.f237e;
    }
}
