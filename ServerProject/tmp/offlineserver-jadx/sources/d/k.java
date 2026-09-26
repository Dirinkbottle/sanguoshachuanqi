package d;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class k extends h.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final j f1647p = new j();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a.x f1648q = new a.x("closed");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f1649m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f1650n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public a.q f1651o;

    public k() {
        super(f1647p);
        this.f1649m = new ArrayList();
        this.f1651o = a.s.f26a;
    }

    @Override // h.b, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ArrayList arrayList = this.f1649m;
        if (!arrayList.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        arrayList.add(f1648q);
    }

    @Override // h.b
    public final void d() {
        a.p pVar = new a.p();
        v(pVar);
        this.f1649m.add(pVar);
    }

    @Override // h.b
    public final void e() {
        a.t tVar = new a.t();
        v(tVar);
        this.f1649m.add(tVar);
    }

    @Override // h.b, java.io.Flushable
    public final void flush() {
    }

    @Override // h.b
    public final void g() {
        ArrayList arrayList = this.f1649m;
        if (arrayList.isEmpty() || this.f1650n != null) {
            throw new IllegalStateException();
        }
        if (!(u() instanceof a.p)) {
            throw new IllegalStateException();
        }
        arrayList.remove(arrayList.size() - 1);
    }

    @Override // h.b
    public final void h() {
        ArrayList arrayList = this.f1649m;
        if (arrayList.isEmpty() || this.f1650n != null) {
            throw new IllegalStateException();
        }
        if (!(u() instanceof a.t)) {
            throw new IllegalStateException();
        }
        arrayList.remove(arrayList.size() - 1);
    }

    @Override // h.b
    public final void i(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f1649m.isEmpty() || this.f1650n != null) {
            throw new IllegalStateException();
        }
        if (!(u() instanceof a.t)) {
            throw new IllegalStateException();
        }
        this.f1650n = str;
    }

    @Override // h.b
    public final h.b k() {
        v(a.s.f26a);
        return this;
    }

    @Override // h.b
    public final void n(double d2) {
        if (this.f1737f || !(Double.isNaN(d2) || Double.isInfinite(d2))) {
            v(new a.x(Double.valueOf(d2)));
        } else {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d2);
        }
    }

    @Override // h.b
    public final void o(long j2) {
        v(new a.x(Long.valueOf(j2)));
    }

    @Override // h.b
    public final void p(Boolean bool) {
        if (bool == null) {
            v(a.s.f26a);
        } else {
            v(new a.x(bool));
        }
    }

    @Override // h.b
    public final void q(Number number) {
        if (number == null) {
            v(a.s.f26a);
            return;
        }
        if (!this.f1737f) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        v(new a.x(number));
    }

    @Override // h.b
    public final void r(String str) {
        if (str == null) {
            v(a.s.f26a);
        } else {
            v(new a.x(str));
        }
    }

    @Override // h.b
    public final void s(boolean z) {
        v(new a.x(Boolean.valueOf(z)));
    }

    public final a.q u() {
        ArrayList arrayList = this.f1649m;
        return (a.q) arrayList.get(arrayList.size() - 1);
    }

    public final void v(a.q qVar) {
        if (this.f1650n != null) {
            if (!(qVar instanceof a.s) || this.f1740i) {
                ((a.t) u()).j(this.f1650n, qVar);
            }
            this.f1650n = null;
            return;
        }
        if (this.f1649m.isEmpty()) {
            this.f1651o = qVar;
            return;
        }
        a.q qVarU = u();
        if (!(qVarU instanceof a.p)) {
            throw new IllegalStateException();
        }
        a.p pVar = (a.p) qVarU;
        pVar.getClass();
        pVar.f25a.add(qVar);
    }
}
