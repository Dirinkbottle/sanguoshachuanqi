package a;

import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.p5;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadLocal f15a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f16b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c.i f17c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d.d f18d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f19e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f20f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f21g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f22h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f23i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f24j;

    /* JADX WARN: Illegal instructions before constructor call */
    public o() {
        c.k kVar = c.k.f56c;
        b bVar = i.f8a;
        Map mapEmptyMap = Collections.emptyMap();
        y yVar = a0.f2a;
        Collections.emptyList();
        Collections.emptyList();
        this(kVar, bVar, mapEmptyMap, false, true, true, yVar, Collections.emptyList(), g0.f5a, g0.f6b, Collections.emptyList());
    }

    public static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final Object b(h.a aVar, TypeToken typeToken) {
        boolean z = aVar.f1715b;
        boolean z2 = true;
        aVar.f1715b = true;
        try {
            try {
                try {
                    try {
                        try {
                            aVar.z();
                            z2 = false;
                            Object objB = f(typeToken).b(aVar);
                            aVar.f1715b = z;
                            return objB;
                        } catch (EOFException e2) {
                            if (!z2) {
                                throw new r(e2);
                            }
                            aVar.f1715b = z;
                            return null;
                        }
                    } catch (IllegalStateException e3) {
                        throw new r(e3);
                    }
                } catch (IOException e4) {
                    throw new r(e4);
                }
            } catch (AssertionError e5) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e5.getMessage(), e5);
            }
        } catch (Throwable th) {
            aVar.f1715b = z;
            throw th;
        }
    }

    public final Object c(Reader reader, TypeToken typeToken) {
        h.a aVar = new h.a(reader);
        aVar.f1715b = this.f24j;
        Object objB = b(aVar, typeToken);
        if (objB != null) {
            try {
                if (aVar.z() != 10) {
                    throw new r("JSON document was not fully consumed.");
                }
            } catch (h.c e2) {
                throw new r(e2);
            } catch (IOException e3) {
                throw new r(e3);
            }
        }
        return objB;
    }

    public final Object d(String str, Class cls) {
        return p5.A1(cls).cast(str == null ? null : c(new StringReader(str), TypeToken.get(cls)));
    }

    public final Object e(String str, Type type) {
        TypeToken<?> typeToken = TypeToken.get(type);
        if (str == null) {
            return null;
        }
        return c(new StringReader(str), typeToken);
    }

    public final i0 f(TypeToken typeToken) {
        boolean z;
        Objects.requireNonNull(typeToken, "type must not be null");
        ConcurrentHashMap concurrentHashMap = this.f16b;
        i0 i0Var = (i0) concurrentHashMap.get(typeToken);
        if (i0Var != null) {
            return i0Var;
        }
        ThreadLocal threadLocal = this.f15a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            i0 i0Var2 = (i0) map.get(typeToken);
            if (i0Var2 != null) {
                return i0Var2;
            }
            z = false;
        }
        try {
            n nVar = new n();
            map.put(typeToken, nVar);
            Iterator it = this.f19e.iterator();
            i0 i0VarA = null;
            while (it.hasNext()) {
                i0VarA = ((j0) it.next()).a(this, typeToken);
                if (i0VarA != null) {
                    if (nVar.f14a != null) {
                        throw new AssertionError("Delegate is already set");
                    }
                    nVar.f14a = i0VarA;
                    map.put(typeToken, i0VarA);
                    break;
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (i0VarA != null) {
                if (z) {
                    concurrentHashMap.putAll(map);
                }
                return i0VarA;
            }
            throw new IllegalArgumentException("GSON (2.10.1) cannot handle " + typeToken);
        } catch (Throwable th) {
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final h.b g(Writer writer) throws IOException {
        if (this.f21g) {
            writer.write(")]}'\n");
        }
        h.b bVar = new h.b(writer);
        if (this.f23i) {
            bVar.f1735d = "  ";
            bVar.f1736e = ": ";
        }
        bVar.f1738g = this.f22h;
        bVar.f1737f = this.f24j;
        bVar.f1740i = this.f20f;
        return bVar;
    }

    public final String h(q qVar) {
        StringWriter stringWriter = new StringWriter();
        try {
            j(qVar, g(stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new r(e2);
        }
    }

    public final String i(Object obj) {
        if (obj == null) {
            return h(s.f26a);
        }
        Class cls = obj.getClass();
        StringWriter stringWriter = new StringWriter();
        try {
            k(obj, cls, g(stringWriter));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new r(e2);
        }
    }

    public final void j(q qVar, h.b bVar) {
        boolean z = bVar.f1737f;
        bVar.f1737f = true;
        boolean z2 = bVar.f1738g;
        bVar.f1738g = this.f22h;
        boolean z3 = bVar.f1740i;
        bVar.f1740i = this.f20f;
        try {
            try {
                p5.B1(qVar, bVar);
                bVar.f1737f = z;
                bVar.f1738g = z2;
                bVar.f1740i = z3;
            } catch (IOException e2) {
                throw new r(e2);
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e3.getMessage(), e3);
            }
        } catch (Throwable th) {
            bVar.f1737f = z;
            bVar.f1738g = z2;
            bVar.f1740i = z3;
            throw th;
        }
    }

    public final void k(Object obj, Class cls, h.b bVar) {
        i0 i0VarF = f(TypeToken.get((Type) cls));
        boolean z = bVar.f1737f;
        bVar.f1737f = true;
        boolean z2 = bVar.f1738g;
        bVar.f1738g = this.f22h;
        boolean z3 = bVar.f1740i;
        bVar.f1740i = this.f20f;
        try {
            try {
                try {
                    i0VarF.c(bVar, obj);
                    bVar.f1737f = z;
                    bVar.f1738g = z2;
                    bVar.f1740i = z3;
                } catch (IOException e2) {
                    throw new r(e2);
                }
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.10.1): " + e3.getMessage(), e3);
            }
        } catch (Throwable th) {
            bVar.f1737f = z;
            bVar.f1738g = z2;
            bVar.f1740i = z3;
            throw th;
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.f20f + ",factories:" + this.f19e + ",instanceCreators:" + this.f17c + "}";
    }

    public o(c.k kVar, b bVar, Map map, boolean z, boolean z2, boolean z3, y yVar, List list, c0 c0Var, d0 d0Var, List list2) {
        this.f15a = new ThreadLocal();
        this.f16b = new ConcurrentHashMap();
        c.i iVar = new c.i(map, list2, z3);
        this.f17c = iVar;
        this.f20f = z;
        int i2 = 0;
        this.f21g = false;
        this.f22h = z2;
        this.f23i = false;
        this.f24j = false;
        ArrayList arrayList = new ArrayList();
        arrayList.add(d.a0.A);
        int i3 = 1;
        arrayList.add(c0Var == g0.f5a ? d.p.f1662c : new d.n(c0Var, i3));
        arrayList.add(kVar);
        arrayList.addAll(list);
        arrayList.add(d.a0.f1633p);
        arrayList.add(d.a0.f1624g);
        arrayList.add(d.a0.f1621d);
        arrayList.add(d.a0.f1622e);
        arrayList.add(d.a0.f1623f);
        l lVar = yVar == a0.f2a ? d.a0.f1628k : new l(i2);
        arrayList.add(d.a0.b(Long.TYPE, Long.class, lVar));
        arrayList.add(d.a0.b(Double.TYPE, Double.class, new k(i2)));
        arrayList.add(d.a0.b(Float.TYPE, Float.class, new k(i3)));
        arrayList.add(d0Var == g0.f6b ? d.o.f1660b : new d.n(new d.o(d0Var), i2));
        arrayList.add(d.a0.f1625h);
        arrayList.add(d.a0.f1626i);
        arrayList.add(d.a0.a(AtomicLong.class, new m(lVar, i2).a()));
        arrayList.add(d.a0.a(AtomicLongArray.class, new m(lVar, i3).a()));
        arrayList.add(d.a0.f1627j);
        arrayList.add(d.a0.f1629l);
        arrayList.add(d.a0.f1634q);
        arrayList.add(d.a0.r);
        arrayList.add(d.a0.a(BigDecimal.class, d.a0.f1630m));
        arrayList.add(d.a0.a(BigInteger.class, d.a0.f1631n));
        arrayList.add(d.a0.a(c.m.class, d.a0.f1632o));
        arrayList.add(d.a0.s);
        arrayList.add(d.a0.t);
        arrayList.add(d.a0.v);
        arrayList.add(d.a0.w);
        arrayList.add(d.a0.y);
        arrayList.add(d.a0.u);
        arrayList.add(d.a0.f1619b);
        arrayList.add(d.e.f1643b);
        arrayList.add(d.a0.x);
        if (g.e.f1710a) {
            arrayList.add(g.e.f1712c);
            arrayList.add(g.e.f1711b);
            arrayList.add(g.e.f1713d);
        }
        arrayList.add(d.b.f1635c);
        arrayList.add(d.a0.f1618a);
        arrayList.add(new d.d(iVar, i2));
        arrayList.add(new d.m(iVar));
        d.d dVar = new d.d(iVar, i3);
        this.f18d = dVar;
        arrayList.add(dVar);
        arrayList.add(d.a0.B);
        arrayList.add(new d.u(iVar, bVar, kVar, dVar, list2));
        this.f19e = Collections.unmodifiableList(arrayList);
    }
}
