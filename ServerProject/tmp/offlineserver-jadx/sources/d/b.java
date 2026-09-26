package d;

import a.i0;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class b extends i0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f1635c = new a(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f1636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f1637b;

    public b(a.o oVar, i0 i0Var, Class cls) {
        this.f1637b = new w(oVar, i0Var, cls);
        this.f1636a = cls;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        if (aVar.z() == 9) {
            aVar.v();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.c();
        while (aVar.m()) {
            arrayList.add(this.f1637b.b(aVar));
        }
        aVar.g();
        int size = arrayList.size();
        Class cls = this.f1636a;
        if (!cls.isPrimitive()) {
            return arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, size));
        }
        Object objNewInstance = Array.newInstance((Class<?>) cls, size);
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(objNewInstance, i2, arrayList.get(i2));
        }
        return objNewInstance;
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.k();
            return;
        }
        bVar.d();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.f1637b.c(bVar, Array.get(obj, i2));
        }
        bVar.g();
    }
}
