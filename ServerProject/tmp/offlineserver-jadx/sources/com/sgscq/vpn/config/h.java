package com.sgscq.vpn.config;

import java.io.Serializable;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Serializable f577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f579d;

    /* JADX WARN: Type inference failed for: r0v3, types: [byte[][], java.io.Serializable] */
    public h(int i2, int i3) {
        this.f576a = 2;
        this.f577b = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i3, i2);
        this.f578c = i2;
        this.f579d = i3;
    }

    public final byte a(int i2, int i3) {
        return ((byte[][]) this.f577b)[i3][i2];
    }

    public final void b(int i2, int i3, int i4) {
        ((byte[][]) this.f577b)[i3][i2] = (byte) i4;
    }

    public final void c(boolean z, int i2, int i3) {
        ((byte[][]) this.f577b)[i3][i2] = (byte) (z ? 1 : 0);
    }

    public final String toString() {
        switch (this.f576a) {
            case 2:
                int i2 = this.f578c;
                int i3 = this.f579d;
                StringBuilder sb = new StringBuilder((i2 * 2 * i3) + 2);
                for (int i4 = 0; i4 < i3; i4++) {
                    byte[] bArr = ((byte[][]) this.f577b)[i4];
                    for (int i5 = 0; i5 < i2; i5++) {
                        byte b2 = bArr[i5];
                        sb.append(b2 != 0 ? b2 != 1 ? "  " : " 1" : " 0");
                    }
                    sb.append('\n');
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public h(int i2, int i3, String str) {
        this.f576a = 0;
        this.f578c = i2;
        this.f579d = i3;
        this.f577b = str;
    }

    public h(String str, int i2) {
        this.f576a = 1;
        this.f577b = str;
        this.f578c = 1;
        this.f579d = i2;
    }
}
