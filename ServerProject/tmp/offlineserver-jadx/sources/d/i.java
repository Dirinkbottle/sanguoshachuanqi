package d;

import a.b0;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class i extends h.a {
    public static final h t = new h();
    public static final Object u = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Object[] f1645p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1646q;
    public String[] r;
    public int[] s;

    public i(a.q qVar) {
        super(t);
        this.f1645p = new Object[32];
        this.f1646q = 0;
        this.r = new String[32];
        this.s = new int[32];
        L(qVar);
    }

    private String k(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i2 = 0;
        while (true) {
            int i3 = this.f1646q;
            if (i2 >= i3) {
                return sb.toString();
            }
            Object[] objArr = this.f1645p;
            Object obj = objArr[i2];
            if (obj instanceof a.p) {
                i2++;
                if (i2 < i3 && (objArr[i2] instanceof Iterator)) {
                    int i4 = this.s[i2];
                    if (z && i4 > 0 && (i2 == i3 - 1 || i2 == i3 - 2)) {
                        i4--;
                    }
                    sb.append('[');
                    sb.append(i4);
                    sb.append(']');
                }
            } else if ((obj instanceof a.t) && (i2 = i2 + 1) < i3 && (objArr[i2] instanceof Iterator)) {
                sb.append('.');
                String str = this.r[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
            i2++;
        }
    }

    private String o() {
        return " at path " + k(false);
    }

    @Override // h.a
    public final void F() {
        int iC = b0.c(z());
        if (iC == 1) {
            g();
            return;
        }
        if (iC != 9) {
            if (iC == 3) {
                h();
                return;
            }
            if (iC == 4) {
                I(true);
                return;
            }
            K();
            int i2 = this.f1646q;
            if (i2 > 0) {
                int[] iArr = this.s;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
        }
    }

    public final void H(int i2) {
        if (z() == i2) {
            return;
        }
        throw new IllegalStateException("Expected " + com.sgscq.vpn.handler.l.e(i2) + " but was " + com.sgscq.vpn.handler.l.e(z()) + o());
    }

    public final String I(boolean z) {
        H(5);
        Map.Entry entry = (Map.Entry) ((Iterator) J()).next();
        String str = (String) entry.getKey();
        this.r[this.f1646q - 1] = z ? "<skipped>" : str;
        L(entry.getValue());
        return str;
    }

    public final Object J() {
        return this.f1645p[this.f1646q - 1];
    }

    public final Object K() {
        Object[] objArr = this.f1645p;
        int i2 = this.f1646q - 1;
        this.f1646q = i2;
        Object obj = objArr[i2];
        objArr[i2] = null;
        return obj;
    }

    public final void L(Object obj) {
        int i2 = this.f1646q;
        Object[] objArr = this.f1645p;
        if (i2 == objArr.length) {
            int i3 = i2 * 2;
            this.f1645p = Arrays.copyOf(objArr, i3);
            this.s = Arrays.copyOf(this.s, i3);
            this.r = (String[]) Arrays.copyOf(this.r, i3);
        }
        Object[] objArr2 = this.f1645p;
        int i4 = this.f1646q;
        this.f1646q = i4 + 1;
        objArr2[i4] = obj;
    }

    @Override // h.a
    public final void c() {
        H(1);
        L(((a.p) J()).iterator());
        this.s[this.f1646q - 1] = 0;
    }

    @Override // h.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1645p = new Object[]{u};
        this.f1646q = 1;
    }

    @Override // h.a
    public final void d() {
        H(3);
        L(((c.p) ((a.t) J()).f27a.entrySet()).iterator());
    }

    @Override // h.a
    public final void g() {
        H(2);
        K();
        K();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // h.a
    public final void h() {
        H(4);
        this.r[this.f1646q - 1] = null;
        K();
        K();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // h.a
    public final String j() {
        return k(false);
    }

    @Override // h.a
    public final String l() {
        return k(true);
    }

    @Override // h.a
    public final boolean m() throws h.c {
        int iZ = z();
        return (iZ == 4 || iZ == 2 || iZ == 10) ? false : true;
    }

    @Override // h.a
    public final boolean p() {
        H(8);
        boolean zB = ((a.x) K()).b();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return zB;
    }

    @Override // h.a
    public final double q() throws h.c {
        int iZ = z();
        if (iZ != 7 && iZ != 6) {
            throw new IllegalStateException("Expected " + com.sgscq.vpn.handler.l.e(7) + " but was " + com.sgscq.vpn.handler.l.e(iZ) + o());
        }
        double dC = ((a.x) J()).c();
        if (!this.f1715b && (Double.isNaN(dC) || Double.isInfinite(dC))) {
            throw new h.c("JSON forbids NaN and infinities: " + dC);
        }
        K();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return dC;
    }

    @Override // h.a
    public final int r() throws h.c {
        int iZ = z();
        if (iZ != 7 && iZ != 6) {
            throw new IllegalStateException("Expected " + com.sgscq.vpn.handler.l.e(7) + " but was " + com.sgscq.vpn.handler.l.e(iZ) + o());
        }
        int iD = ((a.x) J()).d();
        K();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return iD;
    }

    @Override // h.a
    public final long s() throws h.c {
        int iZ = z();
        if (iZ != 7 && iZ != 6) {
            throw new IllegalStateException("Expected " + com.sgscq.vpn.handler.l.e(7) + " but was " + com.sgscq.vpn.handler.l.e(iZ) + o());
        }
        long jH = ((a.x) J()).h();
        K();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return jH;
    }

    @Override // h.a
    public final String t() {
        return I(false);
    }

    @Override // h.a
    public final String toString() {
        return i.class.getSimpleName() + o();
    }

    @Override // h.a
    public final void v() {
        H(9);
        K();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // h.a
    public final String x() throws h.c {
        int iZ = z();
        if (iZ != 6 && iZ != 7) {
            throw new IllegalStateException("Expected " + com.sgscq.vpn.handler.l.e(6) + " but was " + com.sgscq.vpn.handler.l.e(iZ) + o());
        }
        String strI = ((a.x) K()).i();
        int i2 = this.f1646q;
        if (i2 > 0) {
            int[] iArr = this.s;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return strI;
    }

    @Override // h.a
    public final int z() throws h.c {
        if (this.f1646q == 0) {
            return 10;
        }
        Object objJ = J();
        if (objJ instanceof Iterator) {
            boolean z = this.f1645p[this.f1646q - 2] instanceof a.t;
            Iterator it = (Iterator) objJ;
            if (!it.hasNext()) {
                return z ? 4 : 2;
            }
            if (z) {
                return 5;
            }
            L(it.next());
            return z();
        }
        if (objJ instanceof a.t) {
            return 3;
        }
        if (objJ instanceof a.p) {
            return 1;
        }
        if (objJ instanceof a.x) {
            Serializable serializable = ((a.x) objJ).f30a;
            if (serializable instanceof String) {
                return 6;
            }
            if (serializable instanceof Boolean) {
                return 8;
            }
            if (serializable instanceof Number) {
                return 7;
            }
            throw new AssertionError();
        }
        if (objJ instanceof a.s) {
            return 9;
        }
        if (objJ == u) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new h.c("Custom JsonElement subclass " + objJ.getClass().getName() + " is not supported");
    }
}
