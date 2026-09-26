package d;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
public final class y implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f1697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Class f1698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i0 f1699d;

    public /* synthetic */ y(Class cls, Class cls2, i0 i0Var, int i2) {
        this.f1696a = i2;
        this.f1697b = cls;
        this.f1698c = cls2;
        this.f1699d = i0Var;
    }

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        int i2 = this.f1696a;
        Class cls = this.f1698c;
        i0 i0Var = this.f1699d;
        Class cls2 = this.f1697b;
        switch (i2) {
            case 0:
                Class rawType = typeToken.getRawType();
                if (rawType == cls2 || rawType == cls) {
                    return i0Var;
                }
                return null;
            default:
                Class rawType2 = typeToken.getRawType();
                if (rawType2 == cls2 || rawType2 == cls) {
                    return i0Var;
                }
                return null;
        }
    }

    public final String toString() {
        int i2 = this.f1696a;
        i0 i0Var = this.f1699d;
        Class cls = this.f1697b;
        Class cls2 = this.f1698c;
        switch (i2) {
            case 0:
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + i0Var + "]";
            default:
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + i0Var + "]";
        }
    }
}
