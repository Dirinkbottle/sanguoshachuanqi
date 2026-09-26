package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final class d1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f621e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f617a = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f622f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f623g = "";

    public final String a() {
        String str;
        StringBuilder sb;
        String str2;
        if (!this.f618b) {
            return "未绑定抖音号";
        }
        String str3 = this.f622f;
        if (str3 == null || str3.trim().isEmpty()) {
            str = "";
        } else {
            str = "  " + this.f622f.trim();
        }
        if (this.f619c && System.currentTimeMillis() <= this.f621e) {
            sb = new StringBuilder("抖音号 ");
            sb.append(this.f617a);
            sb.append(str);
            str2 = "  已关注";
        } else if (this.f621e <= 0 || System.currentTimeMillis() <= this.f621e) {
            sb = new StringBuilder("抖音号 ");
            sb.append(this.f617a);
            sb.append(str);
            str2 = "  未在粉丝列表";
        } else {
            sb = new StringBuilder("抖音号 ");
            sb.append(this.f617a);
            sb.append(str);
            str2 = "  验证已过期，点刷新";
        }
        sb.append(str2);
        return sb.toString();
    }
}
