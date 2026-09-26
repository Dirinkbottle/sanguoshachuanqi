package d;

import a.b0;
import a.d0;
import a.g0;
import a.h0;
import a.i0;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class o extends i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n f1660b = new n(new o(g0.f6b), 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h0 f1661a;

    public o(d0 d0Var) {
        this.f1661a = d0Var;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        int iZ = aVar.z();
        int iC = b0.c(iZ);
        if (iC == 5 || iC == 6) {
            return this.f1661a.a(aVar);
        }
        if (iC == 8) {
            aVar.v();
            return null;
        }
        throw new a.r("Expecting number, got: " + com.sgscq.vpn.handler.l.e(iZ) + "; at path " + aVar.j());
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        bVar.q((Number) obj);
    }
}
