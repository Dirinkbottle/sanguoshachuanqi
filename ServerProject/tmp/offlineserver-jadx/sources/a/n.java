package a;

/* JADX INFO: loaded from: classes.dex */
public final class n extends d.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i0 f14a = null;

    @Override // a.i0
    public final Object b(h.a aVar) {
        i0 i0Var = this.f14a;
        if (i0Var != null) {
            return i0Var.b(aVar);
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) {
        i0 i0Var = this.f14a;
        if (i0Var == null) {
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
        i0Var.c(bVar, obj);
    }
}
