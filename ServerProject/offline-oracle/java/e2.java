package com.sgscq.vpn;

import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public abstract class e2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f647a = "sgscq_limited_shop_config_v1".getBytes(StandardCharsets.UTF_8);

    public static int a(a.t tVar, String str) {
        if (tVar.o(str)) {
            a.q qVarM = tVar.m(str);
            qVarM.getClass();
            if (qVarM instanceof a.x) {
                try {
                    return tVar.m(str).d();
                } catch (Exception e2) {
                    throw new IllegalArgumentException(com.sgscq.vpn.handler.l.a("manifest ", str, " is invalid"), e2);
                }
            }
        }
        throw new IllegalArgumentException(com.sgscq.vpn.handler.l.a("manifest ", str, " is missing"));
    }

    public static String b(a.t tVar, String str) {
        if (tVar.o(str)) {
            a.q qVarM = tVar.m(str);
            qVarM.getClass();
            if (qVarM instanceof a.x) {
                String strI = tVar.m(str).i();
                if (strI.trim().isEmpty()) {
                    throw new IllegalArgumentException(com.sgscq.vpn.handler.l.a("manifest ", str, " is empty"));
                }
                return strI;
            }
        }
        throw new IllegalArgumentException(com.sgscq.vpn.handler.l.a("manifest ", str, " is missing"));
    }
}
