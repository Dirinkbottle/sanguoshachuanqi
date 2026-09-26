package com.sgscq.vpn;

import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m7 implements ToIntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p7 f1205b;

    public /* synthetic */ m7(p7 p7Var, int i2) {
        this.f1204a = i2;
        this.f1205b = p7Var;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int i2 = this.f1204a;
        p7 p7Var = this.f1205b;
        switch (i2) {
            case 0:
                return ((Integer) p7Var.f1306n.getOrDefault((String) obj, Integer.MAX_VALUE)).intValue();
            default:
                return ((Integer) p7Var.f1306n.getOrDefault((String) obj, Integer.MAX_VALUE)).intValue();
        }
    }
}
