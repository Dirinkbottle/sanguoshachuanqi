package c;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class x extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f89b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f90c;

    public x(Method method, Object obj) {
        this.f89b = method;
        this.f90c = obj;
    }

    @Override // c.b0
    public final Object b(Class cls) {
        b0.a(cls);
        return this.f89b.invoke(this.f90c, cls);
    }
}
