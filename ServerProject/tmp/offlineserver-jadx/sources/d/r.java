package d;

import a.i0;
import com.sgscq.vpn.cloud.m0;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class r extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f1678a;

    public r(LinkedHashMap linkedHashMap) {
        this.f1678a = linkedHashMap;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        if (aVar.z() == 9) {
            aVar.v();
            return null;
        }
        Object objD = d();
        try {
            aVar.d();
            while (aVar.m()) {
                q qVar = (q) this.f1678a.get(aVar.t());
                if (qVar == null || !qVar.f1669e) {
                    aVar.F();
                } else {
                    f(objD, aVar, qVar);
                }
            }
            aVar.h();
            return e(objD);
        } catch (IllegalAccessException e2) {
            m0 m0Var = f.c.f1702a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        } catch (IllegalStateException e3) {
            throw new a.r(e3);
        }
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.k();
            return;
        }
        bVar.e();
        try {
            Iterator it = this.f1678a.values().iterator();
            while (it.hasNext()) {
                ((q) it.next()).a(bVar, obj);
            }
            bVar.h();
        } catch (IllegalAccessException e2) {
            m0 m0Var = f.c.f1702a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        }
    }

    public abstract Object d();

    public abstract Object e(Object obj);

    public abstract void f(Object obj, h.a aVar, q qVar);
}
