package com.sgscq.vpn;

import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class b5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile SecretKeySpec f207a;

    public final Object a(f2 f2Var) {
        SecretKeySpec secretKeySpec = this.f207a;
        if (secretKeySpec != null) {
            return secretKeySpec;
        }
        synchronized (this) {
            SecretKeySpec secretKeySpec2 = this.f207a;
            if (secretKeySpec2 != null) {
                return secretKeySpec2;
            }
            SecretKeySpec secretKeySpecC = f2Var.c();
            this.f207a = secretKeySpecC;
            return secretKeySpecC;
        }
    }
}
