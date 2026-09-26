package l;

import com.sgscq.vpn.handler.d1;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d[] f1785d = a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d1[] f1787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1788c;

    public d(int i2, d1... d1VarArr) {
        this.f1786a = i2;
        this.f1787b = d1VarArr;
        d1 d1Var = d1VarArr[0];
        int i3 = d1Var.f807a;
        int i4 = 0;
        for (c cVar : (c[]) d1Var.f808b) {
            i4 += (cVar.f1784b + i3) * cVar.f1783a;
        }
        this.f1788c = i4;
    }

    public static d[] a() {
        return new d[]{new d(1, new d1(7, new c(1, 19, 0)), new d1(10, new c(1, 16, 0)), new d1(13, new c(1, 13, 0)), new d1(17, new c(1, 9, 0))), new d(2, new d1(10, new c(1, 34, 0)), new d1(16, new c(1, 28, 0)), new d1(22, new c(1, 22, 0)), new d1(28, new c(1, 16, 0))), new d(3, new d1(15, new c(1, 55, 0)), new d1(26, new c(1, 44, 0)), new d1(18, new c(2, 17, 0)), new d1(22, new c(2, 13, 0))), new d(4, new d1(20, new c(1, 80, 0)), new d1(18, new c(2, 32, 0)), new d1(26, new c(2, 24, 0)), new d1(16, new c(4, 9, 0))), new d(5, new d1(26, new c(1, 108, 0)), new d1(24, new c(2, 43, 0)), new d1(18, new c(2, 15, 0), new c(2, 16, 0)), new d1(22, new c(2, 11, 0), new c(2, 12, 0))), new d(6, new d1(18, new c(2, 68, 0)), new d1(16, new c(4, 27, 0)), new d1(24, new c(4, 19, 0)), new d1(28, new c(4, 15, 0))), new d(7, new d1(20, new c(2, 78, 0)), new d1(18, new c(4, 31, 0)), new d1(18, new c(2, 14, 0), new c(4, 15, 0)), new d1(26, new c(4, 13, 0), new c(1, 14, 0))), new d(8, new d1(24, new c(2, 97, 0)), new d1(22, new c(2, 38, 0), new c(2, 39, 0)), new d1(22, new c(4, 18, 0), new c(2, 19, 0)), new d1(26, new c(4, 14, 0), new c(2, 15, 0))), new d(9, new d1(30, new c(2, 116, 0)), new d1(22, new c(3, 36, 0), new c(2, 37, 0)), new d1(20, new c(4, 16, 0), new c(4, 17, 0)), new d1(24, new c(4, 12, 0), new c(4, 13, 0))), new d(10, new d1(18, new c(2, 68, 0), new c(2, 69, 0)), new d1(26, new c(4, 43, 0), new c(1, 44, 0)), new d1(24, new c(6, 19, 0), new c(2, 20, 0)), new d1(28, new c(6, 15, 0), new c(2, 16, 0))), new d(11, new d1(20, new c(4, 81, 0)), new d1(30, new c(1, 50, 0), new c(4, 51, 0)), new d1(28, new c(4, 22, 0), new c(4, 23, 0)), new d1(24, new c(3, 12, 0), new c(8, 13, 0))), new d(12, new d1(24, new c(2, 92, 0), new c(2, 93, 0)), new d1(22, new c(6, 36, 0), new c(2, 37, 0)), new d1(26, new c(4, 20, 0), new c(6, 21, 0)), new d1(28, new c(7, 14, 0), new c(4, 15, 0))), new d(13, new d1(26, new c(4, 107, 0)), new d1(22, new c(8, 37, 0), new c(1, 38, 0)), new d1(24, new c(8, 20, 0), new c(4, 21, 0)), new d1(22, new c(12, 11, 0), new c(4, 12, 0))), new d(14, new d1(30, new c(3, 115, 0), new c(1, 116, 0)), new d1(24, new c(4, 40, 0), new c(5, 41, 0)), new d1(20, new c(11, 16, 0), new c(5, 17, 0)), new d1(24, new c(11, 12, 0), new c(5, 13, 0))), new d(15, new d1(22, new c(5, 87, 0), new c(1, 88, 0)), new d1(24, new c(5, 41, 0), new c(5, 42, 0)), new d1(30, new c(5, 24, 0), new c(7, 25, 0)), new d1(24, new c(11, 12, 0), new c(7, 13, 0))), new d(16, new d1(24, new c(5, 98, 0), new c(1, 99, 0)), new d1(28, new c(7, 45, 0), new c(3, 46, 0)), new d1(24, new c(15, 19, 0), new c(2, 20, 0)), new d1(30, new c(3, 15, 0), new c(13, 16, 0))), new d(17, new d1(28, new c(1, 107, 0), new c(5, 108, 0)), new d1(28, new c(10, 46, 0), new c(1, 47, 0)), new d1(28, new c(1, 22, 0), new c(15, 23, 0)), new d1(28, new c(2, 14, 0), new c(17, 15, 0))), new d(18, new d1(30, new c(5, 120, 0), new c(1, 121, 0)), new d1(26, new c(9, 43, 0), new c(4, 44, 0)), new d1(28, new c(17, 22, 0), new c(1, 23, 0)), new d1(28, new c(2, 14, 0), new c(19, 15, 0))), new d(19, new d1(28, new c(3, 113, 0), new c(4, 114, 0)), new d1(26, new c(3, 44, 0), new c(11, 45, 0)), new d1(26, new c(17, 21, 0), new c(4, 22, 0)), new d1(26, new c(9, 13, 0), new c(16, 14, 0))), new d(20, new d1(28, new c(3, 107, 0), new c(5, 108, 0)), new d1(26, new c(3, 41, 0), new c(13, 42, 0)), new d1(30, new c(15, 24, 0), new c(5, 25, 0)), new d1(28, new c(15, 15, 0), new c(10, 16, 0))), new d(21, new d1(28, new c(4, 116, 0), new c(4, 117, 0)), new d1(26, new c(17, 42, 0)), new d1(28, new c(17, 22, 0), new c(6, 23, 0)), new d1(30, new c(19, 16, 0), new c(6, 17, 0))), new d(22, new d1(28, new c(2, 111, 0), new c(7, 112, 0)), new d1(28, new c(17, 46, 0)), new d1(30, new c(7, 24, 0), new c(16, 25, 0)), new d1(24, new c(34, 13, 0))), new d(23, new d1(30, new c(4, 121, 0), new c(5, 122, 0)), new d1(28, new c(4, 47, 0), new c(14, 48, 0)), new d1(30, new c(11, 24, 0), new c(14, 25, 0)), new d1(30, new c(16, 15, 0), new c(14, 16, 0))), new d(24, new d1(30, new c(6, 117, 0), new c(4, 118, 0)), new d1(28, new c(6, 45, 0), new c(14, 46, 0)), new d1(30, new c(11, 24, 0), new c(16, 25, 0)), new d1(30, new c(30, 16, 0), new c(2, 17, 0))), new d(25, new d1(26, new c(8, 106, 0), new c(4, 107, 0)), new d1(28, new c(8, 47, 0), new c(13, 48, 0)), new d1(30, new c(7, 24, 0), new c(22, 25, 0)), new d1(30, new c(22, 15, 0), new c(13, 16, 0))), new d(26, new d1(28, new c(10, 114, 0), new c(2, 115, 0)), new d1(28, new c(19, 46, 0), new c(4, 47, 0)), new d1(28, new c(28, 22, 0), new c(6, 23, 0)), new d1(30, new c(33, 16, 0), new c(4, 17, 0))), new d(27, new d1(30, new c(8, 122, 0), new c(4, 123, 0)), new d1(28, new c(22, 45, 0), new c(3, 46, 0)), new d1(30, new c(8, 23, 0), new c(26, 24, 0)), new d1(30, new c(12, 15, 0), new c(28, 16, 0))), new d(28, new d1(30, new c(3, 117, 0), new c(10, 118, 0)), new d1(28, new c(3, 45, 0), new c(23, 46, 0)), new d1(30, new c(4, 24, 0), new c(31, 25, 0)), new d1(30, new c(11, 15, 0), new c(31, 16, 0))), new d(29, new d1(30, new c(7, 116, 0), new c(7, 117, 0)), new d1(28, new c(21, 45, 0), new c(7, 46, 0)), new d1(30, new c(1, 23, 0), new c(37, 24, 0)), new d1(30, new c(19, 15, 0), new c(26, 16, 0))), new d(30, new d1(30, new c(5, 115, 0), new c(10, 116, 0)), new d1(28, new c(19, 47, 0), new c(10, 48, 0)), new d1(30, new c(15, 24, 0), new c(25, 25, 0)), new d1(30, new c(23, 15, 0), new c(25, 16, 0))), new d(31, new d1(30, new c(13, 115, 0), new c(3, 116, 0)), new d1(28, new c(2, 46, 0), new c(29, 47, 0)), new d1(30, new c(42, 24, 0), new c(1, 25, 0)), new d1(30, new c(23, 15, 0), new c(28, 16, 0))), new d(32, new d1(30, new c(17, 115, 0)), new d1(28, new c(10, 46, 0), new c(23, 47, 0)), new d1(30, new c(10, 24, 0), new c(35, 25, 0)), new d1(30, new c(19, 15, 0), new c(35, 16, 0))), new d(33, new d1(30, new c(17, 115, 0), new c(1, 116, 0)), new d1(28, new c(14, 46, 0), new c(21, 47, 0)), new d1(30, new c(29, 24, 0), new c(19, 25, 0)), new d1(30, new c(11, 15, 0), new c(46, 16, 0))), new d(34, new d1(30, new c(13, 115, 0), new c(6, 116, 0)), new d1(28, new c(14, 46, 0), new c(23, 47, 0)), new d1(30, new c(44, 24, 0), new c(7, 25, 0)), new d1(30, new c(59, 16, 0), new c(1, 17, 0))), new d(35, new d1(30, new c(12, 121, 0), new c(7, 122, 0)), new d1(28, new c(12, 47, 0), new c(26, 48, 0)), new d1(30, new c(39, 24, 0), new c(14, 25, 0)), new d1(30, new c(22, 15, 0), new c(41, 16, 0))), new d(36, new d1(30, new c(6, 121, 0), new c(14, 122, 0)), new d1(28, new c(6, 47, 0), new c(34, 48, 0)), new d1(30, new c(46, 24, 0), new c(10, 25, 0)), new d1(30, new c(2, 15, 0), new c(64, 16, 0))), new d(37, new d1(30, new c(17, 122, 0), new c(4, 123, 0)), new d1(28, new c(29, 46, 0), new c(14, 47, 0)), new d1(30, new c(49, 24, 0), new c(10, 25, 0)), new d1(30, new c(24, 15, 0), new c(46, 16, 0))), new d(38, new d1(30, new c(4, 122, 0), new c(18, 123, 0)), new d1(28, new c(13, 46, 0), new c(32, 47, 0)), new d1(30, new c(48, 24, 0), new c(14, 25, 0)), new d1(30, new c(42, 15, 0), new c(32, 16, 0))), new d(39, new d1(30, new c(20, 117, 0), new c(4, 118, 0)), new d1(28, new c(40, 47, 0), new c(7, 48, 0)), new d1(30, new c(43, 24, 0), new c(22, 25, 0)), new d1(30, new c(10, 15, 0), new c(67, 16, 0))), new d(40, new d1(30, new c(19, 118, 0), new c(6, 119, 0)), new d1(28, new c(18, 47, 0), new c(31, 48, 0)), new d1(30, new c(34, 24, 0), new c(34, 25, 0)), new d1(30, new c(20, 15, 0), new c(61, 16, 0)))};
    }

    public static d b(int i2) {
        if (i2 < 1 || i2 > 40) {
            throw new IllegalArgumentException();
        }
        return f1785d[i2 - 1];
    }

    public final String toString() {
        return String.valueOf(this.f1786a);
    }
}
