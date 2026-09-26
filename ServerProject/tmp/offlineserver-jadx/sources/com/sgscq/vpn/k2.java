package com.sgscq.vpn;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.sgscq.vpn.config.l f1102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f1103b;

    public k2(com.sgscq.vpn.config.l lVar, LinkedHashMap linkedHashMap) {
        this.f1102a = lVar;
        this.f1103b = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
    }

    public final com.sgscq.vpn.config.l a(com.sgscq.vpn.config.i iVar, long j2) {
        com.sgscq.vpn.config.l lVar = this.f1102a;
        if (iVar == null) {
            return lVar;
        }
        return new com.sgscq.vpn.config.l(lVar.f594a, lVar.f595b, lVar.f596c, lVar.f597d, lVar.f598e, lVar.f599f, lVar.f600g, lVar.f601h, new com.sgscq.vpn.config.k(iVar).a(lVar.f595b, lVar.f601h, j2), lVar.f603j, lVar.f604k, lVar.f605l, lVar.f606m, lVar.f607n);
    }
}
