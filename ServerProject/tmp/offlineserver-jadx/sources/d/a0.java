package d;

import a.i0;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class a0 {
    public static final x A;
    public static final a B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f1618a = a(Class.class, new a.l(11).a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f1619b = a(BitSet.class, new a.l(21).a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a.l f1620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final y f1621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y f1622e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final y f1623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final y f1624g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final x f1625h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final x f1626i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final x f1627j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a.l f1628k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final y f1629l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a.l f1630m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a.l f1631n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a.l f1632o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final x f1633p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final x f1634q;
    public static final x r;
    public static final x s;
    public static final x t;
    public static final x u;
    public static final x v;
    public static final x w;
    public static final y x;
    public static final x y;
    public static final a.l z;

    static {
        a.l lVar = new a.l(22);
        f1620c = new a.l(23);
        f1621d = b(Boolean.TYPE, Boolean.class, lVar);
        f1622e = b(Byte.TYPE, Byte.class, new a.l(24));
        f1623f = b(Short.TYPE, Short.class, new a.l(25));
        f1624g = b(Integer.TYPE, Integer.class, new a.l(26));
        f1625h = a(AtomicInteger.class, new a.l(27).a());
        f1626i = a(AtomicBoolean.class, new a.l(28).a());
        int i2 = 1;
        f1627j = a(AtomicIntegerArray.class, new a.l(i2).a());
        f1628k = new a.l(2);
        new a.l(3);
        new a.l(4);
        f1629l = b(Character.TYPE, Character.class, new a.l(5));
        a.l lVar2 = new a.l(6);
        f1630m = new a.l(7);
        f1631n = new a.l(8);
        f1632o = new a.l(9);
        f1633p = a(String.class, lVar2);
        f1634q = a(StringBuilder.class, new a.l(10));
        r = a(StringBuffer.class, new a.l(12));
        s = a(URL.class, new a.l(13));
        t = a(URI.class, new a.l(14));
        u = new x(InetAddress.class, new a.l(15), i2);
        v = a(UUID.class, new a.l(16));
        w = a(Currency.class, new a.l(17).a());
        x = new y(Calendar.class, GregorianCalendar.class, new a.l(18), i2);
        y = a(Locale.class, new a.l(19));
        a.l lVar3 = new a.l(20);
        z = lVar3;
        A = new x(a.q.class, lVar3, i2);
        B = new a(2);
    }

    public static x a(Class cls, i0 i0Var) {
        return new x(cls, i0Var, 0);
    }

    public static y b(Class cls, Class cls2, i0 i0Var) {
        return new y(cls, cls2, i0Var, 0);
    }
}
