package c;

import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.p5;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d implements WildcardType, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f36a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f37b;

    public d(Type[] typeArr, Type[] typeArr2) {
        p5.v(typeArr2.length <= 1);
        p5.v(typeArr.length == 1);
        if (typeArr2.length != 1) {
            Objects.requireNonNull(typeArr[0]);
            m0.N(typeArr[0]);
            this.f37b = null;
            this.f36a = m0.M(typeArr[0]);
            return;
        }
        Objects.requireNonNull(typeArr2[0]);
        m0.N(typeArr2[0]);
        p5.v(typeArr[0] == Object.class);
        this.f37b = m0.M(typeArr2[0]);
        this.f36a = Object.class;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof WildcardType) && m0.i0(this, (WildcardType) obj);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f37b;
        return type != null ? new Type[]{type} : m0.f417e;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        return new Type[]{this.f36a};
    }

    public final int hashCode() {
        Type type = this.f37b;
        return (type != null ? type.hashCode() + 31 : 1) ^ (this.f36a.hashCode() + 31);
    }

    public final String toString() {
        Type type = this.f37b;
        if (type != null) {
            return "? super " + m0.Y2(type);
        }
        Type type2 = this.f36a;
        if (type2 == Object.class) {
            return "?";
        }
        return "? extends " + m0.Y2(type2);
    }
}
