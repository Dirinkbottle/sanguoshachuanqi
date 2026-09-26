package c;

import com.sgscq.vpn.cloud.m0;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class b implements GenericArrayType, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f31a;

    public b(Type type) {
        Objects.requireNonNull(type);
        this.f31a = m0.M(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && m0.i0(this, (GenericArrayType) obj);
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f31a;
    }

    public final int hashCode() {
        return this.f31a.hashCode();
    }

    public final String toString() {
        return m0.Y2(this.f31a) + "[]";
    }
}
