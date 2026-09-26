package com.sgscq.vpn;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class s5 extends LinkedHashMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1368b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s5(Object obj, int i2, int i3) {
        super(i2, 0.75f, true);
        this.f1367a = i3;
        this.f1368b = obj;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        switch (this.f1367a) {
            case 0:
                return size() > 8;
            case 1:
                return size() > 2;
            default:
                return size() > 16;
        }
    }
}
