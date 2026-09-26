package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final class y1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f1545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final y1 f1546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1547d;

    public y1() {
        this.f1544a = 1;
        this.f1547d = true;
        StringBuilder sb = new StringBuilder(256);
        this.f1545b = sb;
        this.f1546c = null;
        sb.append("{");
    }

    public final void a() {
        int i2 = this.f1544a;
        StringBuilder sb = this.f1545b;
        switch (i2) {
            case 0:
                if (!this.f1547d) {
                    sb.append(",");
                } else {
                    this.f1547d = false;
                }
                break;
            default:
                if (!this.f1547d) {
                    sb.append(",");
                } else {
                    this.f1547d = false;
                }
                break;
        }
    }

    public final String b() {
        StringBuilder sb = this.f1545b;
        sb.append("}");
        if (this.f1546c != null) {
            return null;
        }
        return sb.toString();
    }

    public final y1 c() {
        int i2 = this.f1544a;
        y1 y1Var = this.f1546c;
        StringBuilder sb = this.f1545b;
        switch (i2) {
            case 0:
                sb.append("]");
                return y1Var;
            default:
                sb.append("}");
                return y1Var != null ? y1Var : this;
        }
    }

    public final void d(long j2, String str) {
        a();
        StringBuilder sb = this.f1545b;
        sb.append('\"');
        sb.append(str);
        sb.append("\":");
        sb.append(j2);
    }

    public final void e(String str, int i2) {
        a();
        StringBuilder sb = this.f1545b;
        sb.append('\"');
        sb.append(str);
        sb.append("\":");
        sb.append(i2);
    }

    public final void f(String str, String str2) {
        a();
        StringBuilder sb = this.f1545b;
        sb.append('\"');
        sb.append(str);
        sb.append("\":\"");
        p5.L(sb, str2);
        sb.append('\"');
    }

    public final void g(String str, boolean z) {
        a();
        StringBuilder sb = this.f1545b;
        sb.append('\"');
        sb.append(str);
        sb.append("\":");
        sb.append(z);
    }

    public final y1 h(String str) {
        a();
        StringBuilder sb = this.f1545b;
        sb.append('\"');
        sb.append(str);
        sb.append("\":{");
        return new y1(sb, this, 1);
    }

    public final void i(String str, String str2) {
        a();
        StringBuilder sb = this.f1545b;
        sb.append('\"');
        sb.append(str);
        sb.append("\":");
        sb.append(str2);
    }

    public /* synthetic */ y1(StringBuilder sb, y1 y1Var, int i2) {
        this.f1544a = i2;
        this.f1547d = true;
        this.f1545b = sb;
        this.f1546c = y1Var;
    }
}
