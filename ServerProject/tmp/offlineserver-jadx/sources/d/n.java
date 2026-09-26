package d;

import a.h0;
import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
public final class n implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1659b;

    public /* synthetic */ n(Object obj, int i2) {
        this.f1658a = i2;
        this.f1659b = obj;
    }

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        int i2 = this.f1658a;
        Object obj = this.f1659b;
        switch (i2) {
            case 0:
                if (typeToken.getRawType() == Number.class) {
                    return (o) obj;
                }
                return null;
            default:
                if (typeToken.getRawType() == Object.class) {
                    return new p(oVar, (h0) obj);
                }
                return null;
        }
    }
}
