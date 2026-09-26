package c;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class r implements Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r f69a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r f70b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r f71c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r f72d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r f73e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f74f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f75g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f76h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f77i;

    public r(boolean z) {
        this.f74f = null;
        this.f75g = z;
        this.f73e = this;
        this.f72d = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f74f;
        if (obj2 == null) {
            if (entry.getKey() != null) {
                return false;
            }
        } else if (!obj2.equals(entry.getKey())) {
            return false;
        }
        Object obj3 = this.f76h;
        Object value = entry.getValue();
        if (obj3 == null) {
            if (value != null) {
                return false;
            }
        } else if (!obj3.equals(value)) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f74f;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f76h;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f74f;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f76h;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null && !this.f75g) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.f76h;
        this.f76h = obj;
        return obj2;
    }

    public final String toString() {
        return this.f74f + "=" + this.f76h;
    }

    public r(boolean z, r rVar, Object obj, r rVar2, r rVar3) {
        this.f69a = rVar;
        this.f74f = obj;
        this.f75g = z;
        this.f77i = 1;
        this.f72d = rVar2;
        this.f73e = rVar3;
        rVar3.f72d = this;
        rVar2.f73e = this;
    }
}
