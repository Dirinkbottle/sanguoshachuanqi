package c;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class y extends b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f91b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f92c;

    public y(Method method, int i2) {
        this.f91b = method;
        this.f92c = i2;
    }

    @Override // c.b0
    public final Object b(Class cls) {
        b0.a(cls);
        return this.f91b.invoke(null, cls, Integer.valueOf(this.f92c));
    }
}
