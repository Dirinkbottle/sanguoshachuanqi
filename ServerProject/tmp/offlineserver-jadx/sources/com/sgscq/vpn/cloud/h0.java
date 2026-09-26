package com.sgscq.vpn.cloud;

import com.sgscq.vpn.h5;
import com.sgscq.vpn.u5;
import com.sgscq.vpn.v5;
import com.sgscq.vpn.y2;
import java.io.File;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h0 implements u5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f351d;

    public /* synthetic */ h0(y2 y2Var, String str, String str2) {
        this.f348a = 3;
        this.f349b = y2Var;
        this.f351d = str;
        this.f350c = str2;
    }

    @Override // com.sgscq.vpn.u5
    public final v5 a(v5 v5Var) {
        switch (this.f348a) {
            case 0:
                l0 l0Var = (l0) this.f349b;
                File file = (File) this.f350c;
                String str = this.f351d;
                synchronized (l0Var) {
                    try {
                        String absolutePath = file.getAbsolutePath();
                        List<v5> listV = (List) l0Var.f399k.get(absolutePath);
                        if (listV == null) {
                            listV = l0Var.v(file);
                            l0Var.f399k.put(absolutePath, listV);
                        }
                        for (v5 v5Var2 : listV) {
                            if (str.equals(v5Var2.f1459a)) {
                                return v5Var2;
                            }
                            break;
                        }
                    } catch (Exception unused) {
                    }
                    return null;
                }
            case 1:
                return ((l0) this.f349b).k((File) this.f350c, this.f351d);
            default:
                return ((l0) this.f349b).k((File) this.f350c, this.f351d);
        }
    }

    public final boolean b() {
        y2 y2Var = (y2) this.f349b;
        String str = (String) this.f350c;
        h5 h5Var = y2Var.f1553f;
        String str2 = this.f351d;
        Map mapW0 = h5Var.w0(str2);
        boolean z = false;
        if (mapW0 == null) {
            return false;
        }
        if (str != null && !str.isEmpty()) {
            String strValueOf = String.valueOf(mapW0.getOrDefault("ladder_honor_day", ""));
            if (!str.equals(strValueOf)) {
                if (!strValueOf.isEmpty()) {
                    mapW0.put("user_honor", 0);
                }
                mapW0.put("ladder_honor_day", str);
                z = true;
            }
        }
        if (z) {
            h5Var.S0(str2, mapW0);
        }
        return true;
    }

    public /* synthetic */ h0(l0 l0Var, File file, String str, int i2) {
        this.f348a = i2;
        this.f349b = l0Var;
        this.f350c = file;
        this.f351d = str;
    }
}
