package d;

import java.lang.reflect.Field;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class s extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c.t f1679b;

    public s(c.t tVar, LinkedHashMap linkedHashMap) {
        super(linkedHashMap);
        this.f1679b = tVar;
    }

    @Override // d.r
    public final Object d() {
        return this.f1679b.a();
    }

    @Override // d.r
    public final Object e(Object obj) {
        return obj;
    }

    @Override // d.r
    public final void f(Object obj, h.a aVar, q qVar) throws IllegalAccessException {
        Object objB = qVar.f1673i.b(aVar);
        if (objB == null && qVar.f1676l) {
            return;
        }
        boolean z = qVar.f1670f;
        Field field = qVar.f1666b;
        if (z) {
            u.b(obj, field);
        } else if (qVar.f1677m) {
            throw new a.r(c.a.i("Cannot set value of 'static final' ", f.c.d(field, false)));
        }
        field.set(obj, objB);
    }
}
