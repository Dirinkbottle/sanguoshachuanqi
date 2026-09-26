package com.sgscq.vpn.battle.runtime;

import a.o;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class BattleOfflineEnvelope {
    private static final o GSON = new o();
    public final String ciphertextSha256;
    public final byte[] encryptedDex;
    public final String manifestSha256;
    public final byte[] permitPayload;
    public final byte[] permitSignature;
    public final String plaintextSha256;
    public final byte[] wrappedContentKey;

    public BattleOfflineEnvelope(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, String str, String str2, String str3) {
        this.encryptedDex = clone(bArr);
        this.wrappedContentKey = clone(bArr2);
        this.permitPayload = clone(bArr3);
        this.permitSignature = clone(bArr4);
        this.ciphertextSha256 = safe(str);
        this.plaintextSha256 = safe(str2);
        this.manifestSha256 = safe(str3);
    }

    private static byte[] clone(byte[] bArr) {
        return bArr == null ? new byte[0] : (byte[]) bArr.clone();
    }

    public static BattleOfflineEnvelope decode(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("offline_cache_invalid");
        }
        BattleOfflineEnvelope battleOfflineEnvelope = (BattleOfflineEnvelope) GSON.d(new String(bArr, StandardCharsets.UTF_8), BattleOfflineEnvelope.class);
        if (battleOfflineEnvelope != null) {
            return new BattleOfflineEnvelope(battleOfflineEnvelope.encryptedDex, battleOfflineEnvelope.wrappedContentKey, battleOfflineEnvelope.permitPayload, battleOfflineEnvelope.permitSignature, battleOfflineEnvelope.ciphertextSha256, battleOfflineEnvelope.plaintextSha256, battleOfflineEnvelope.manifestSha256);
        }
        throw new IllegalArgumentException("offline_cache_invalid");
    }

    private static String safe(String str) {
        return str == null ? "" : str;
    }

    public byte[] encode() {
        return GSON.i(this).getBytes(StandardCharsets.UTF_8);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BattleOfflineEnvelope)) {
            return false;
        }
        BattleOfflineEnvelope battleOfflineEnvelope = (BattleOfflineEnvelope) obj;
        return Arrays.equals(this.encryptedDex, battleOfflineEnvelope.encryptedDex) && Arrays.equals(this.wrappedContentKey, battleOfflineEnvelope.wrappedContentKey) && Arrays.equals(this.permitPayload, battleOfflineEnvelope.permitPayload) && Arrays.equals(this.permitSignature, battleOfflineEnvelope.permitSignature) && this.ciphertextSha256.equals(battleOfflineEnvelope.ciphertextSha256) && this.plaintextSha256.equals(battleOfflineEnvelope.plaintextSha256) && this.manifestSha256.equals(battleOfflineEnvelope.manifestSha256);
    }

    public int hashCode() {
        return this.ciphertextSha256.hashCode() + (Arrays.hashCode(this.encryptedDex) * 31);
    }
}
