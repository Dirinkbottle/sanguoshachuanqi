package com.sgscq.battle.api;

/* JADX INFO: loaded from: classes.dex */
public final class IntegrityAttestRequest {
    private final String challengeId;
    private final int length;
    private final long offset;
    private final String sourceDir;

    public IntegrityAttestRequest(String str, long j2, int i2, String str2) {
        this.challengeId = str == null ? "" : str;
        this.offset = j2;
        this.length = i2;
        this.sourceDir = str2 == null ? "" : str2;
    }

    public String getChallengeId() {
        return this.challengeId;
    }

    public int getLength() {
        return this.length;
    }

    public long getOffset() {
        return this.offset;
    }

    public String getSourceDir() {
        return this.sourceDir;
    }
}
