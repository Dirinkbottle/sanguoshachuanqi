package c;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class s extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final n f78i = new n(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Comparator f79a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f80b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r f81c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f82d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f83e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final r f84f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p f85g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p f86h;

    public s(boolean z) {
        n nVar = f78i;
        this.f82d = 0;
        this.f83e = 0;
        this.f79a = nVar;
        this.f80b = z;
        this.f84f = new r(z);
    }

    public final r a(Object obj, boolean z) {
        int iCompareTo;
        r rVar;
        r rVar2 = this.f81c;
        n nVar = f78i;
        Comparator comparator = this.f79a;
        if (rVar2 != null) {
            Comparable comparable = comparator == nVar ? (Comparable) obj : null;
            while (true) {
                Object obj2 = rVar2.f74f;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return rVar2;
                }
                r rVar3 = iCompareTo < 0 ? rVar2.f70b : rVar2.f71c;
                if (rVar3 == null) {
                    break;
                }
                rVar2 = rVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        r rVar4 = this.f84f;
        if (rVar2 != null) {
            rVar = new r(this.f80b, rVar2, obj, rVar4, rVar4.f73e);
            if (iCompareTo < 0) {
                rVar2.f70b = rVar;
            } else {
                rVar2.f71c = rVar;
            }
            c(rVar2, true);
        } else {
            if (comparator == nVar && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            rVar = new r(this.f80b, rVar2, obj, rVar4, rVar4.f73e);
            this.f81c = rVar;
        }
        this.f82d++;
        this.f83e++;
        return rVar;
    }

    public final r b(Map.Entry entry) {
        r rVarA;
        Object key = entry.getKey();
        boolean z = false;
        if (key != null) {
            try {
                rVarA = a(key, false);
            } catch (ClassCastException unused) {
                rVarA = null;
            }
        } else {
            rVarA = null;
        }
        if (rVarA != null && Objects.equals(rVarA.f76h, entry.getValue())) {
            z = true;
        }
        if (z) {
            return rVarA;
        }
        return null;
    }

    public final void c(r rVar, boolean z) {
        while (rVar != null) {
            r rVar2 = rVar.f70b;
            r rVar3 = rVar.f71c;
            int i2 = rVar2 != null ? rVar2.f77i : 0;
            int i3 = rVar3 != null ? rVar3.f77i : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                r rVar4 = rVar3.f70b;
                r rVar5 = rVar3.f71c;
                int i5 = (rVar4 != null ? rVar4.f77i : 0) - (rVar5 != null ? rVar5.f77i : 0);
                if (i5 != -1 && (i5 != 0 || z)) {
                    g(rVar3);
                }
                f(rVar);
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                r rVar6 = rVar2.f70b;
                r rVar7 = rVar2.f71c;
                int i6 = (rVar6 != null ? rVar6.f77i : 0) - (rVar7 != null ? rVar7.f77i : 0);
                if (i6 != 1 && (i6 != 0 || z)) {
                    f(rVar2);
                }
                g(rVar);
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                rVar.f77i = i2 + 1;
                if (z) {
                    return;
                }
            } else {
                rVar.f77i = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            rVar = rVar.f69a;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f81c = null;
        this.f82d = 0;
        this.f83e++;
        r rVar = this.f84f;
        rVar.f73e = rVar;
        rVar.f72d = rVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        r rVarA;
        if (obj != null) {
            try {
                rVarA = a(obj, false);
            } catch (ClassCastException unused) {
                rVarA = null;
            }
        } else {
            rVarA = null;
        }
        return rVarA != null;
    }

    public final void d(r rVar, boolean z) {
        r rVar2;
        r rVar3;
        int i2;
        if (z) {
            r rVar4 = rVar.f73e;
            rVar4.f72d = rVar.f72d;
            rVar.f72d.f73e = rVar4;
        }
        r rVar5 = rVar.f70b;
        r rVar6 = rVar.f71c;
        r rVar7 = rVar.f69a;
        int i3 = 0;
        if (rVar5 == null || rVar6 == null) {
            if (rVar5 != null) {
                e(rVar, rVar5);
                rVar.f70b = null;
            } else if (rVar6 != null) {
                e(rVar, rVar6);
                rVar.f71c = null;
            } else {
                e(rVar, null);
            }
            c(rVar7, false);
            this.f82d--;
            this.f83e++;
            return;
        }
        if (rVar5.f77i > rVar6.f77i) {
            do {
                rVar3 = rVar5;
                rVar5 = rVar5.f71c;
            } while (rVar5 != null);
        } else {
            do {
                rVar2 = rVar6;
                rVar6 = rVar6.f70b;
            } while (rVar6 != null);
            rVar3 = rVar2;
        }
        d(rVar3, false);
        r rVar8 = rVar.f70b;
        if (rVar8 != null) {
            i2 = rVar8.f77i;
            rVar3.f70b = rVar8;
            rVar8.f69a = rVar3;
            rVar.f70b = null;
        } else {
            i2 = 0;
        }
        r rVar9 = rVar.f71c;
        if (rVar9 != null) {
            i3 = rVar9.f77i;
            rVar3.f71c = rVar9;
            rVar9.f69a = rVar3;
            rVar.f71c = null;
        }
        rVar3.f77i = Math.max(i2, i3) + 1;
        e(rVar, rVar3);
    }

    public final void e(r rVar, r rVar2) {
        r rVar3 = rVar.f69a;
        rVar.f69a = null;
        if (rVar2 != null) {
            rVar2.f69a = rVar3;
        }
        if (rVar3 == null) {
            this.f81c = rVar2;
        } else if (rVar3.f70b == rVar) {
            rVar3.f70b = rVar2;
        } else {
            rVar3.f71c = rVar2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        p pVar = this.f85g;
        if (pVar != null) {
            return pVar;
        }
        p pVar2 = new p(this, 0);
        this.f85g = pVar2;
        return pVar2;
    }

    public final void f(r rVar) {
        r rVar2 = rVar.f70b;
        r rVar3 = rVar.f71c;
        r rVar4 = rVar3.f70b;
        r rVar5 = rVar3.f71c;
        rVar.f71c = rVar4;
        if (rVar4 != null) {
            rVar4.f69a = rVar;
        }
        e(rVar, rVar3);
        rVar3.f70b = rVar;
        rVar.f69a = rVar3;
        int iMax = Math.max(rVar2 != null ? rVar2.f77i : 0, rVar4 != null ? rVar4.f77i : 0) + 1;
        rVar.f77i = iMax;
        rVar3.f77i = Math.max(iMax, rVar5 != null ? rVar5.f77i : 0) + 1;
    }

    public final void g(r rVar) {
        r rVar2 = rVar.f70b;
        r rVar3 = rVar.f71c;
        r rVar4 = rVar2.f70b;
        r rVar5 = rVar2.f71c;
        rVar.f70b = rVar5;
        if (rVar5 != null) {
            rVar5.f69a = rVar;
        }
        e(rVar, rVar2);
        rVar2.f71c = rVar;
        rVar.f69a = rVar2;
        int iMax = Math.max(rVar3 != null ? rVar3.f77i : 0, rVar5 != null ? rVar5.f77i : 0) + 1;
        rVar.f77i = iMax;
        rVar2.f77i = Math.max(iMax, rVar4 != null ? rVar4.f77i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        r rVarA;
        if (obj != null) {
            try {
                rVarA = a(obj, false);
            } catch (ClassCastException unused) {
                rVarA = null;
            }
        } else {
            rVarA = null;
        }
        if (rVarA != null) {
            return rVarA.f76h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        p pVar = this.f86h;
        if (pVar != null) {
            return pVar;
        }
        p pVar2 = new p(this, 1);
        this.f86h = pVar2;
        return pVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.f80b) {
            throw new NullPointerException("value == null");
        }
        r rVarA = a(obj, true);
        Object obj3 = rVarA.f76h;
        rVarA.f76h = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        r rVarA;
        if (obj != null) {
            try {
                rVarA = a(obj, false);
            } catch (ClassCastException unused) {
                rVarA = null;
            }
        } else {
            rVarA = null;
        }
        if (rVarA != null) {
            d(rVarA, true);
        }
        if (rVarA != null) {
            return rVarA.f76h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f82d;
    }
}
