package com.sgscq.vpn;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class i2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1052d;

    public i2(long j2, String str, com.sgscq.vpn.config.i iVar, String str2) {
        this.f1049a = j2;
        this.f1050b = str;
        this.f1051c = iVar;
        this.f1052d = str2 == null ? "" : str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i2)) {
            return false;
        }
        i2 i2Var = (i2) obj;
        return this.f1049a == i2Var.f1049a && this.f1051c == i2Var.f1051c && this.f1050b.equals(i2Var.f1050b) && this.f1052d.equals(i2Var.f1052d);
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f1049a), this.f1050b, Integer.valueOf(System.identityHashCode(this.f1051c)), this.f1052d);
    }
}
