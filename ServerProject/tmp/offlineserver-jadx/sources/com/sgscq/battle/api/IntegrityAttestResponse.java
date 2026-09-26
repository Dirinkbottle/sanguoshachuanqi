package com.sgscq.battle.api;

/* JADX INFO: loaded from: classes.dex */
public final class IntegrityAttestResponse {
    private final byte[] data;
    private final byte[] mac;

    public IntegrityAttestResponse(byte[] bArr, byte[] bArr2) {
        this.data = bArr == null ? null : (byte[]) bArr.clone();
        this.mac = bArr2 != null ? (byte[]) bArr2.clone() : null;
    }

    public byte[] getData() {
        byte[] bArr = this.data;
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public byte[] getMac() {
        byte[] bArr = this.mac;
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }
}
