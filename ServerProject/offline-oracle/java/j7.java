package com.sgscq.vpn;

import java.util.HashMap;
import java.util.Map;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j7 implements ToIntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f1097b;

    public /* synthetic */ j7(int i2, HashMap map) {
        this.f1096a = i2;
        this.f1097b = map;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int i2 = this.f1096a;
        Map map = this.f1097b;
        switch (i2) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return ((Integer) map.getOrDefault((String) obj, Integer.MAX_VALUE)).intValue();
    }
}
