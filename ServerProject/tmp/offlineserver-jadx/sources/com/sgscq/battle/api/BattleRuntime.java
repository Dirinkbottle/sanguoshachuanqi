package com.sgscq.battle.api;

/* JADX INFO: loaded from: classes.dex */
public interface BattleRuntime {
    default void initialize(byte[] bArr) {
    }

    default IntegrityAttestResponse integrityAttest(IntegrityAttestRequest integrityAttestRequest) {
        return null;
    }

    BattleResponse simulate(BattleRequest battleRequest);

    BattleRuntimeStatus status();
}
