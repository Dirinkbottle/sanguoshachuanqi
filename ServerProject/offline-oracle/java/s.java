package com.sgscq.vpn;

import android.content.SharedPreferences;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1348b;

    public /* synthetic */ s(Object obj, int i2) {
        this.f1347a = i2;
        this.f1348b = obj;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        u4 u4Var;
        int i2 = this.f1347a;
        Object obj = this.f1348b;
        switch (i2) {
            case 0:
                t tVar = (t) obj;
                tVar.getClass();
                if (y5.k(str)) {
                    String strQ = y5.q(str);
                    if (strQ.isEmpty() || (u4Var = (u4) tVar.f1375e) == null) {
                        return;
                    }
                    LinkedHashMap linkedHashMapC = tVar.c(strQ);
                    p7 p7Var = ((h7) u4Var).f744a;
                    p7Var.getClass();
                    if (strQ.isEmpty()) {
                        return;
                    }
                    if (!p7Var.f1308p && p7Var.f1309q != null && !Thread.currentThread().getName().equals("sgscq-robot-roster")) {
                        p7Var.e();
                    }
                    synchronized (p7Var.f1293a) {
                        if (linkedHashMapC != null) {
                            if (!linkedHashMapC.isEmpty()) {
                                p7Var.f1305m.put(strQ, linkedHashMapC);
                                p7Var.f1304l.put(strQ, v5.j(strQ, linkedHashMapC));
                                int iJ = p7.j(linkedHashMapC.get("ladder_rank"), ((Integer) p7Var.f1306n.getOrDefault(strQ, 1001)).intValue());
                                Integer num = (Integer) p7Var.f1306n.get(strQ);
                                int iQ = num == null ? p7Var.q(strQ, Math.max(1, iJ)) : num.intValue();
                                p7Var.A(strQ, iQ);
                                if (iQ != iJ) {
                                    p7.d(iQ, linkedHashMapC);
                                    p7Var.f1305m.put(strQ, linkedHashMapC);
                                    p7Var.f1304l.put(strQ, v5.j(strQ, linkedHashMapC));
                                } else {
                                    iQ = Integer.MIN_VALUE;
                                }
                                if (iQ != Integer.MIN_VALUE) {
                                    p7Var.f1294b.e(strQ, iQ);
                                    return;
                                }
                                return;
                            }
                        }
                        p7Var.x(strQ);
                        return;
                    }
                }
                return;
            default:
                h5 h5Var = (h5) obj;
                h5Var.getClass();
                if (y5.k(str)) {
                    String strQ2 = y5.q(str);
                    if (strQ2.isEmpty()) {
                        return;
                    }
                    h5Var.f737b.e(strQ2);
                    return;
                }
                return;
        }
    }
}
