package c;

import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.p5;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ParameterizedType, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f33a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f34b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type[] f35c;

    public c(Type type, Type type2, Type... typeArr) {
        Objects.requireNonNull(type2);
        if (type2 instanceof Class) {
            Class cls = (Class) type2;
            boolean z = true;
            boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
            if (type == null && !z2) {
                z = false;
            }
            p5.v(z);
        }
        this.f33a = type == null ? null : m0.M(type);
        this.f34b = m0.M(type2);
        Type[] typeArr2 = (Type[]) typeArr.clone();
        this.f35c = typeArr2;
        int length = typeArr2.length;
        for (int i2 = 0; i2 < length; i2++) {
            Objects.requireNonNull(this.f35c[i2]);
            m0.N(this.f35c[i2]);
            Type[] typeArr3 = this.f35c;
            typeArr3[i2] = m0.M(typeArr3[i2]);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ParameterizedType) && m0.i0(this, (ParameterizedType) obj);
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return (Type[]) this.f35c.clone();
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f33a;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f34b;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.f35c) ^ this.f34b.hashCode();
        Type type = this.f33a;
        return iHashCode ^ (type != null ? type.hashCode() : 0);
    }

    public final String toString() {
        Type[] typeArr = this.f35c;
        int length = typeArr.length;
        Type type = this.f34b;
        if (length == 0) {
            return m0.Y2(type);
        }
        StringBuilder sb = new StringBuilder((length + 1) * 30);
        sb.append(m0.Y2(type));
        sb.append("<");
        sb.append(m0.Y2(typeArr[0]));
        for (int i2 = 1; i2 < length; i2++) {
            sb.append(", ");
            sb.append(m0.Y2(typeArr[i2]));
        }
        sb.append(">");
        return sb.toString();
    }
}
