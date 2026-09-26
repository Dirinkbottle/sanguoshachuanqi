package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f1236b;

    public o(String str, p pVar) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("empty entry name");
        }
        this.f1235a = str;
        this.f1236b = pVar;
    }
}
