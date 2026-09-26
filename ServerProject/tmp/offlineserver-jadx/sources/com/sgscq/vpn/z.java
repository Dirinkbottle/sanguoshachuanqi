package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1583c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1585e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1588h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1589i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1581a = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f1586f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f1587g = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f1590j = "";

    public final String a() {
        String str;
        StringBuilder sb;
        String str2;
        if (!this.f1582b) {
            return "未绑定 B 站 UID";
        }
        String str3 = this.f1586f;
        if (str3 == null || str3.trim().isEmpty()) {
            str = "";
        } else {
            str = "  " + this.f1586f.trim();
            if (this.f1588h > 0) {
                str = str + "  LV" + this.f1588h;
            }
        }
        if (this.f1583c && System.currentTimeMillis() <= this.f1585e) {
            sb = new StringBuilder("UID ");
            sb.append(this.f1581a);
            sb.append(str);
            str2 = "  已关注";
        } else if (this.f1585e <= 0 || System.currentTimeMillis() <= this.f1585e) {
            sb = new StringBuilder("UID ");
            sb.append(this.f1581a);
            sb.append(str);
            str2 = "  未在粉丝列表";
        } else {
            sb = new StringBuilder("UID ");
            sb.append(this.f1581a);
            sb.append(str);
            str2 = "  验证已过期，点刷新";
        }
        sb.append(str2);
        return sb.toString();
    }
}
