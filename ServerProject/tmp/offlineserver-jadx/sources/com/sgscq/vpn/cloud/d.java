package com.sgscq.vpn.cloud;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f308c;

    public d(String str, int i2, String str2) {
        this.f306a = str == null ? "" : str.trim();
        this.f307b = str2 != null ? str2.trim() : "";
        this.f308c = Math.max(1, Math.min(999, i2));
    }
}
