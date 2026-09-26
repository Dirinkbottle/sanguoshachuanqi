package a;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class p extends q implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f25a;

    public p() {
        this.f25a = new ArrayList();
    }

    @Override // a.q
    public final q a() {
        ArrayList arrayList = this.f25a;
        if (arrayList.isEmpty()) {
            return new p();
        }
        p pVar = new p(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            q qVarA = ((q) it.next()).a();
            if (qVarA == null) {
                qVarA = s.f26a;
            }
            pVar.f25a.add(qVarA);
        }
        return pVar;
    }

    @Override // a.q
    public final boolean b() {
        return j().b();
    }

    @Override // a.q
    public final double c() {
        return j().c();
    }

    @Override // a.q
    public final int d() {
        return j().d();
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof p) && ((p) obj).f25a.equals(this.f25a));
    }

    @Override // a.q
    public final long h() {
        return j().h();
    }

    public final int hashCode() {
        return this.f25a.hashCode();
    }

    @Override // a.q
    public final String i() {
        return j().i();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f25a.iterator();
    }

    public final q j() {
        ArrayList arrayList = this.f25a;
        int size = arrayList.size();
        if (size == 1) {
            return (q) arrayList.get(0);
        }
        throw new IllegalStateException(b0.a("Array must have size 1, but has size ", size));
    }

    public p(int i2) {
        this.f25a = new ArrayList(i2);
    }
}
