package a;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class t extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c.s f27a = new c.s(false);

    @Override // a.q
    public final q a() {
        t tVar = new t();
        Iterator it = ((c.p) this.f27a.entrySet()).iterator();
        while (((c.q) it).hasNext()) {
            Map.Entry entry = (Map.Entry) ((c.o) it).next();
            tVar.j((String) entry.getKey(), ((q) entry.getValue()).a());
        }
        return tVar;
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof t) && ((t) obj).f27a.equals(this.f27a));
    }

    public final int hashCode() {
        return this.f27a.hashCode();
    }

    public final void j(String str, q qVar) {
        if (qVar == null) {
            qVar = s.f26a;
        }
        this.f27a.put(str, qVar);
    }

    public final void k(String str, Number number) {
        j(str, number == null ? s.f26a : new x(number));
    }

    public final void l(String str, String str2) {
        j(str, str2 == null ? s.f26a : new x(str2));
    }

    public final q m(String str) {
        return (q) this.f27a.get(str);
    }

    public final p n(String str) {
        return (p) this.f27a.get(str);
    }

    public final boolean o(String str) {
        return this.f27a.containsKey(str);
    }
}
