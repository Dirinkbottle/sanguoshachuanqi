package com.sgscq.vpn;

/* JADX INFO: loaded from: classes.dex */
public interface DebugSparringConfig$SkillTypeResolver {
    String resolve(String str);

    default String resolveNative(String str) {
        return resolve(str);
    }
}
