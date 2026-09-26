package com.sgscq.vpn.cloud;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f510c;

    public v(byte[] bArr, byte[] bArr2, String str, long j2) {
        this.f508a = (byte[]) bArr.clone();
        this.f509b = (byte[]) bArr2.clone();
        this.f510c = str == null ? "" : str;
        Math.max(0L, j2);
    }
}
