package a;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class x extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Serializable f30a;

    public x(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f30a = bool;
    }

    public static boolean k(x xVar) {
        Serializable serializable = xVar.f30a;
        if (serializable instanceof Number) {
            Number number = (Number) serializable;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    @Override // a.q
    public final q a() {
        return this;
    }

    @Override // a.q
    public final boolean b() {
        Serializable serializable = this.f30a;
        return serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(i());
    }

    @Override // a.q
    public final double c() {
        return this.f30a instanceof Number ? j().doubleValue() : Double.parseDouble(i());
    }

    @Override // a.q
    public final int d() {
        return this.f30a instanceof Number ? j().intValue() : Integer.parseInt(i());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x.class != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        Serializable serializable = this.f30a;
        Serializable serializable2 = xVar.f30a;
        if (serializable == null) {
            return serializable2 == null;
        }
        if (k(this) && k(xVar)) {
            return j().longValue() == xVar.j().longValue();
        }
        if (!(serializable instanceof Number) || !(serializable2 instanceof Number)) {
            return serializable.equals(serializable2);
        }
        double dDoubleValue = j().doubleValue();
        double dDoubleValue2 = xVar.j().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    @Override // a.q
    public final long h() {
        return this.f30a instanceof Number ? j().longValue() : Long.parseLong(i());
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.f30a;
        if (serializable == null) {
            return 31;
        }
        if (k(this)) {
            jDoubleToLongBits = j().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(j().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    @Override // a.q
    public final String i() {
        Serializable serializable = this.f30a;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return j().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        throw new AssertionError("Unexpected value type: " + serializable.getClass());
    }

    public final Number j() {
        Serializable serializable = this.f30a;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new c.m((String) serializable);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public x(Number number) {
        Objects.requireNonNull(number);
        this.f30a = number;
    }

    public x(String str) {
        Objects.requireNonNull(str);
        this.f30a = str;
    }
}
