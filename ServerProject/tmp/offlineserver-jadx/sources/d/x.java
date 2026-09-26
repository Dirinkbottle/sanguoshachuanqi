package d;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
public final class x implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f1694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i0 f1695c;

    public /* synthetic */ x(Class cls, i0 i0Var, int i2) {
        this.f1693a = i2;
        this.f1694b = cls;
        this.f1695c = i0Var;
    }

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        int i2 = this.f1693a;
        Class cls = this.f1694b;
        switch (i2) {
            case 0:
                if (typeToken.getRawType() == cls) {
                    return this.f1695c;
                }
                return null;
            default:
                Class<?> rawType = typeToken.getRawType();
                if (cls.isAssignableFrom(rawType)) {
                    return new c(this, rawType);
                }
                return null;
        }
    }

    public final String toString() {
        int i2 = this.f1693a;
        i0 i0Var = this.f1695c;
        Class cls = this.f1694b;
        switch (i2) {
            case 0:
                return "Factory[type=" + cls.getName() + ",adapter=" + i0Var + "]";
            default:
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + i0Var + "]";
        }
    }
}
