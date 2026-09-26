package com.sgscq.battle.api;

/* JADX INFO: loaded from: classes.dex */
public final class BattleRequest {
    private final byte[] canonicalPayload;
    private final int maxRounds;
    private final transient Object migrationPayload;
    private final String mode;
    private final long seed;

    private BattleRequest(String str, byte[] bArr, long j2, int i2, Object obj) {
        this.mode = str == null ? "" : str;
        this.canonicalPayload = bArr == null ? new byte[0] : (byte[]) bArr.clone();
        this.seed = j2;
        this.maxRounds = Math.max(1, i2);
        this.migrationPayload = obj;
    }

    public static BattleRequest canonical(String str, byte[] bArr, long j2, int i2) {
        return new BattleRequest(str, bArr, j2, i2, null);
    }

    public static BattleRequest forMigration(String str, Object obj, int i2) {
        return new BattleRequest(str, new byte[0], 0L, i2, obj);
    }

    public static BattleRequest forTest(String str) {
        return new BattleRequest(str, new byte[0], 0L, 15, null);
    }

    public byte[] getCanonicalPayload() {
        return (byte[]) this.canonicalPayload.clone();
    }

    public int getMaxRounds() {
        return this.maxRounds;
    }

    public Object getMigrationPayload() {
        return this.migrationPayload;
    }

    public String getMode() {
        return this.mode;
    }

    public long getSeed() {
        return this.seed;
    }
}
