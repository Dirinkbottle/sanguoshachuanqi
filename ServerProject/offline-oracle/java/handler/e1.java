package com.sgscq.vpn.handler;

import java.util.Map;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e1 implements ToLongFunction {
    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        return com.sgscq.vpn.cloud.m0.E1(((Map) obj).get("created_at"));
    }
}
