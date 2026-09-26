package a;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class k extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10a;

    public /* synthetic */ k(int i2) {
        this.f10a = i2;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        switch (this.f10a) {
            case 0:
                if (aVar.z() != 9) {
                    return Double.valueOf(aVar.q());
                }
                aVar.v();
                return null;
            default:
                if (aVar.z() != 9) {
                    return Float.valueOf((float) aVar.q());
                }
                aVar.v();
                return null;
        }
    }

    @Override // a.i0
    public final /* bridge */ /* synthetic */ void c(h.b bVar, Object obj) throws IOException {
        switch (this.f10a) {
            case 0:
                d(bVar, (Number) obj);
                break;
            default:
                d(bVar, (Number) obj);
                break;
        }
    }

    public final void d(h.b bVar, Number number) throws IOException {
        switch (this.f10a) {
            case 0:
                if (number != null) {
                    double dDoubleValue = number.doubleValue();
                    o.a(dDoubleValue);
                    bVar.n(dDoubleValue);
                } else {
                    bVar.k();
                }
                break;
            default:
                if (number != null) {
                    float fFloatValue = number.floatValue();
                    o.a(fFloatValue);
                    if (!(number instanceof Float)) {
                        number = Float.valueOf(fFloatValue);
                    }
                    bVar.q(number);
                } else {
                    bVar.k();
                }
                break;
        }
    }
}
