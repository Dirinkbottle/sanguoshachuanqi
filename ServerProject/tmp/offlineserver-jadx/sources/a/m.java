package a;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes.dex */
public final class m extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f13b;

    public /* synthetic */ m(i0 i0Var, int i2) {
        this.f12a = i2;
        this.f13b = i0Var;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        int i2 = this.f12a;
        i0 i0Var = this.f13b;
        switch (i2) {
            case 0:
                return new AtomicLong(((Number) i0Var.b(aVar)).longValue());
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.c();
                while (aVar.m()) {
                    arrayList.add(Long.valueOf(((Number) i0Var.b(aVar)).longValue()));
                }
                aVar.g();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i3 = 0; i3 < size; i3++) {
                    atomicLongArray.set(i3, ((Long) arrayList.get(i3)).longValue());
                }
                return atomicLongArray;
            default:
                if (aVar.z() != 9) {
                    return i0Var.b(aVar);
                }
                aVar.v();
                return null;
        }
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        int i2 = this.f12a;
        i0 i0Var = this.f13b;
        switch (i2) {
            case 0:
                i0Var.c(bVar, Long.valueOf(((AtomicLong) obj).get()));
                break;
            case 1:
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                bVar.d();
                int length = atomicLongArray.length();
                for (int i3 = 0; i3 < length; i3++) {
                    i0Var.c(bVar, Long.valueOf(atomicLongArray.get(i3)));
                }
                bVar.g();
                break;
            default:
                if (obj == null) {
                    bVar.k();
                } else {
                    i0Var.c(bVar, obj);
                }
                break;
        }
    }
}
