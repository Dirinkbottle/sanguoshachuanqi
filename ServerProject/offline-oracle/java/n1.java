package com.sgscq.vpn;

import java.util.List;
import java.util.Map;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n1 implements ToIntFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1215a;

    public /* synthetic */ n1(int i2) {
        this.f1215a = i2;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        switch (this.f1215a) {
            case 0:
                return !((p1) obj).f1263a.startsWith("620") ? 1 : 0;
            case 1:
                return ((o1) obj).f1240b;
            case 2:
                return p5.n1((Map) obj);
            case 3:
                return ((v5) obj).f1463e;
            case 4:
                Map map = (Map) obj;
                String str = com.sgscq.vpn.handler.w.f1012e;
                return com.sgscq.vpn.handler.w.G0(map.get("general_position"), com.sgscq.vpn.handler.w.G0(map.get("position"), 999));
            case 5:
                return com.sgscq.vpn.handler.n0.b(((Map) obj).get("position"), 999);
            case 6:
                List list = com.sgscq.vpn.handler.x0.f1028c;
                return com.sgscq.vpn.handler.x0.C0(((Map) obj).get("grade"), 99);
            case 7:
                List list2 = com.sgscq.vpn.handler.x0.f1028c;
                return com.sgscq.vpn.handler.x0.C0(((Map) obj).get("general_id"), Integer.MAX_VALUE);
            default:
                return com.sgscq.vpn.cloud.m0.h1(((Map) obj).get("position"), Integer.MAX_VALUE);
        }
    }
}
