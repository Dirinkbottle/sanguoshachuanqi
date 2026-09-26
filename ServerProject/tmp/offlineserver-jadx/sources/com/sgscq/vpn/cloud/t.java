package com.sgscq.vpn.cloud;

import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f496a;

    public t(byte[] bArr) {
        this.f496a = bArr == null ? new byte[0] : bArr;
    }

    public final String a() {
        return new String(this.f496a, StandardCharsets.UTF_8);
    }
}
