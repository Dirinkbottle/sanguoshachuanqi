package d;

import a.g0;
import a.h0;
import a.i0;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class p extends i0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n f1662c = new n(g0.f5a, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a.o f1663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h0 f1664b;

    public p(a.o oVar, h0 h0Var) {
        this.f1663a = oVar;
        this.f1664b = h0Var;
    }

    public static Serializable e(h.a aVar, int i2) throws IOException {
        if (i2 == 0) {
            throw null;
        }
        int i3 = i2 - 1;
        if (i3 == 0) {
            aVar.c();
            return new ArrayList();
        }
        if (i3 != 2) {
            return null;
        }
        aVar.d();
        return new c.s(true);
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        int iZ = aVar.z();
        Object objE = e(aVar, iZ);
        if (objE == null) {
            return d(aVar, iZ);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.m()) {
                String strT = objE instanceof Map ? aVar.t() : null;
                int iZ2 = aVar.z();
                Serializable serializableE = e(aVar, iZ2);
                boolean z = serializableE != null;
                Serializable serializableD = serializableE == null ? d(aVar, iZ2) : serializableE;
                if (objE instanceof List) {
                    ((List) objE).add(serializableD);
                } else {
                    ((Map) objE).put(strT, serializableD);
                }
                if (z) {
                    arrayDeque.addLast(objE);
                    objE = serializableD;
                }
            } else {
                if (objE instanceof List) {
                    aVar.g();
                } else {
                    aVar.h();
                }
                if (arrayDeque.isEmpty()) {
                    return objE;
                }
                objE = arrayDeque.removeLast();
            }
        }
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.k();
            return;
        }
        Class<?> cls = obj.getClass();
        a.o oVar = this.f1663a;
        oVar.getClass();
        i0 i0VarF = oVar.f(TypeToken.get((Class) cls));
        if (!(i0VarF instanceof p)) {
            i0VarF.c(bVar, obj);
        } else {
            bVar.e();
            bVar.h();
        }
    }

    public final Serializable d(h.a aVar, int i2) throws IOException {
        if (i2 == 0) {
            throw null;
        }
        int i3 = i2 - 1;
        if (i3 == 5) {
            return aVar.x();
        }
        if (i3 == 6) {
            return this.f1664b.a(aVar);
        }
        if (i3 == 7) {
            return Boolean.valueOf(aVar.p());
        }
        if (i3 != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(com.sgscq.vpn.handler.l.e(i2)));
        }
        aVar.v();
        return null;
    }
}
