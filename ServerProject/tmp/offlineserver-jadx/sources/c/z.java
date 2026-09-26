package c;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class z extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f93b;

    public z(Method method) {
        this.f93b = method;
    }

    @Override // c.b0
    public final Object b(Class cls) {
        b0.a(cls);
        return this.f93b.invoke(null, cls, Object.class);
    }
}
