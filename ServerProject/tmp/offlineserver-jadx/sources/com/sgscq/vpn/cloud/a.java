package com.sgscq.vpn.cloud;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f266c;

    public /* synthetic */ a(String str, String str2, String str3) {
        this.f264a = str;
        this.f265b = str2;
        this.f266c = str3;
    }

    public final String a() {
        return b0.j(this.f264a, this.f265b, this.f266c) + "_";
    }

    public final boolean b(a aVar) {
        return aVar != null && this.f264a.equals(aVar.f264a) && this.f265b.equals(aVar.f265b) && this.f266c.equals(aVar.f266c);
    }
}
