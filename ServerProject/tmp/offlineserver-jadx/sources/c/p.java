package c;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class p extends AbstractSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f63a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f64b;

    public /* synthetic */ p(s sVar, int i2) {
        this.f63a = i2;
        this.f64b = sVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i2 = this.f63a;
        s sVar = this.f64b;
        switch (i2) {
            case 0:
                sVar.clear();
                break;
            default:
                sVar.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int i2 = this.f63a;
        s sVar = this.f64b;
        switch (i2) {
            case 0:
                return (obj instanceof Map.Entry) && sVar.b((Map.Entry) obj) != null;
            default:
                return sVar.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f63a) {
            case 0:
                return new o(this);
            default:
                return new o(this, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        r rVarA;
        r rVarB;
        int i2 = this.f63a;
        s sVar = this.f64b;
        switch (i2) {
            case 0:
                if (!(obj instanceof Map.Entry) || (rVarB = sVar.b((Map.Entry) obj)) == null) {
                    return false;
                }
                sVar.d(rVarB, true);
                return true;
            default:
                sVar.getClass();
                if (obj != null) {
                    try {
                        rVarA = sVar.a(obj, false);
                    } catch (ClassCastException unused) {
                        rVarA = null;
                    }
                    break;
                } else {
                    rVarA = null;
                }
                if (rVarA != null) {
                    sVar.d(rVarA, true);
                }
                return rVarA != null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i2 = this.f63a;
        s sVar = this.f64b;
        switch (i2) {
            case 0:
                break;
            default:
                break;
        }
        return sVar.f82d;
    }
}
