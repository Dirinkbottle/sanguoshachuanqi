package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final class l5 implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1154c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f1156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1158g;

    public l5(int i2, int i3, int i4, int i5, double d2, int i6, int i7) {
        this.f1152a = i2;
        this.f1153b = i3;
        this.f1154c = i4;
        this.f1155d = i5;
        this.f1156e = d2;
        this.f1157f = i6;
        this.f1158g = i7;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(l5 l5Var) {
        int iCompare = Integer.compare(this.f1152a, l5Var.f1152a);
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = Integer.compare(this.f1153b, l5Var.f1153b);
        if (iCompare2 != 0) {
            return iCompare2;
        }
        int iCompare3 = Integer.compare(this.f1154c, l5Var.f1154c);
        if (iCompare3 != 0) {
            return iCompare3;
        }
        int iCompare4 = Integer.compare(this.f1155d, l5Var.f1155d);
        if (iCompare4 != 0) {
            return iCompare4;
        }
        int iCompare5 = Double.compare(this.f1156e, l5Var.f1156e);
        if (iCompare5 != 0) {
            return iCompare5;
        }
        int iCompare6 = Integer.compare(this.f1157f, l5Var.f1157f);
        return iCompare6 != 0 ? iCompare6 : Integer.compare(this.f1158g, l5Var.f1158g);
    }
}
