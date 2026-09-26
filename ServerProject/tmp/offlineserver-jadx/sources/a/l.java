package a;

import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: loaded from: classes.dex */
public final class l extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11a;

    public /* synthetic */ l(int i2) {
        this.f11a = i2;
    }

    public static q f(h.a aVar, int i2) throws IOException {
        if (i2 == 0) {
            throw null;
        }
        int i3 = i2 - 1;
        if (i3 == 5) {
            return new x(aVar.x());
        }
        if (i3 == 6) {
            return new x(new c.m(aVar.x()));
        }
        if (i3 == 7) {
            return new x(Boolean.valueOf(aVar.p()));
        }
        if (i3 != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(com.sgscq.vpn.handler.l.e(i2)));
        }
        aVar.v();
        return s.f26a;
    }

    public static q g(h.a aVar, int i2) throws IOException {
        if (i2 == 0) {
            throw null;
        }
        int i3 = i2 - 1;
        if (i3 == 0) {
            aVar.c();
            return new p();
        }
        if (i3 != 2) {
            return null;
        }
        aVar.d();
        return new t();
    }

    public static void h(q qVar, h.b bVar) throws IOException {
        if (qVar == null || (qVar instanceof s)) {
            bVar.k();
            return;
        }
        if (qVar instanceof x) {
            x xVarG = qVar.g();
            Serializable serializable = xVarG.f30a;
            if (serializable instanceof Number) {
                bVar.q(xVarG.j());
                return;
            } else if (serializable instanceof Boolean) {
                bVar.s(xVarG.b());
                return;
            } else {
                bVar.r(xVarG.i());
                return;
            }
        }
        if (qVar instanceof p) {
            bVar.d();
            Iterator it = qVar.e().iterator();
            while (it.hasNext()) {
                h((q) it.next(), bVar);
            }
            bVar.g();
            return;
        }
        if (!(qVar instanceof t)) {
            throw new IllegalArgumentException("Couldn't write " + qVar.getClass());
        }
        bVar.e();
        Iterator it2 = ((c.p) qVar.f().f27a.entrySet()).iterator();
        while (((c.q) it2).hasNext()) {
            Map.Entry entry = (Map.Entry) ((c.o) it2).next();
            bVar.i((String) entry.getKey());
            h((q) entry.getValue(), bVar);
        }
        bVar.h();
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        boolean zP;
        switch (this.f11a) {
            case 0:
                return e(aVar);
            case 1:
                ArrayList arrayList = new ArrayList();
                aVar.c();
                while (aVar.m()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.r()));
                    } catch (NumberFormatException e2) {
                        throw new r(e2);
                    }
                }
                aVar.g();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            case 2:
                return e(aVar);
            case 3:
                return e(aVar);
            case 4:
                return e(aVar);
            case 5:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                String strX = aVar.x();
                if (strX.length() == 1) {
                    return Character.valueOf(strX.charAt(0));
                }
                StringBuilder sbB = b0.b("Expecting character, got: ", strX, "; at ");
                sbB.append(aVar.l());
                throw new r(sbB.toString());
            case 6:
                int iZ = aVar.z();
                if (iZ != 9) {
                    return iZ == 8 ? Boolean.toString(aVar.p()) : aVar.x();
                }
                aVar.v();
                return null;
            case 7:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                String strX2 = aVar.x();
                try {
                    return new BigDecimal(strX2);
                } catch (NumberFormatException e3) {
                    StringBuilder sbB2 = b0.b("Failed parsing '", strX2, "' as BigDecimal; at path ");
                    sbB2.append(aVar.l());
                    throw new r(sbB2.toString(), e3);
                }
            case 8:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                String strX3 = aVar.x();
                try {
                    return new BigInteger(strX3);
                } catch (NumberFormatException e4) {
                    StringBuilder sbB3 = b0.b("Failed parsing '", strX3, "' as BigInteger; at path ");
                    sbB3.append(aVar.l());
                    throw new r(sbB3.toString(), e4);
                }
            case 9:
                if (aVar.z() != 9) {
                    return new c.m(aVar.x());
                }
                aVar.v();
                return null;
            case 10:
                if (aVar.z() != 9) {
                    return new StringBuilder(aVar.x());
                }
                aVar.v();
                return null;
            case 11:
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            case 12:
                if (aVar.z() != 9) {
                    return new StringBuffer(aVar.x());
                }
                aVar.v();
                return null;
            case 13:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                String strX4 = aVar.x();
                if ("null".equals(strX4)) {
                    return null;
                }
                return new URL(strX4);
            case 14:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                try {
                    String strX5 = aVar.x();
                    if ("null".equals(strX5)) {
                        return null;
                    }
                    return new URI(strX5);
                } catch (URISyntaxException e5) {
                    throw new r(e5);
                }
            case 15:
                if (aVar.z() != 9) {
                    return InetAddress.getByName(aVar.x());
                }
                aVar.v();
                return null;
            case 16:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                String strX6 = aVar.x();
                try {
                    return UUID.fromString(strX6);
                } catch (IllegalArgumentException e6) {
                    StringBuilder sbB4 = b0.b("Failed parsing '", strX6, "' as UUID; at path ");
                    sbB4.append(aVar.l());
                    throw new r(sbB4.toString(), e6);
                }
            case 17:
                String strX7 = aVar.x();
                try {
                    return Currency.getInstance(strX7);
                } catch (IllegalArgumentException e7) {
                    StringBuilder sbB5 = b0.b("Failed parsing '", strX7, "' as Currency; at path ");
                    sbB5.append(aVar.l());
                    throw new r(sbB5.toString(), e7);
                }
            case 18:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                aVar.d();
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                while (aVar.z() != 4) {
                    String strT = aVar.t();
                    int iR = aVar.r();
                    if ("year".equals(strT)) {
                        i3 = iR;
                    } else if ("month".equals(strT)) {
                        i4 = iR;
                    } else if ("dayOfMonth".equals(strT)) {
                        i5 = iR;
                    } else if ("hourOfDay".equals(strT)) {
                        i6 = iR;
                    } else if ("minute".equals(strT)) {
                        i7 = iR;
                    } else if ("second".equals(strT)) {
                        i8 = iR;
                    }
                }
                aVar.h();
                return new GregorianCalendar(i3, i4, i5, i6, i7, i8);
            case 19:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.x(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            case 20:
                if (aVar instanceof d.i) {
                    d.i iVar = (d.i) aVar;
                    int iZ2 = iVar.z();
                    if (iZ2 != 5 && iZ2 != 2 && iZ2 != 4 && iZ2 != 10) {
                        q qVar = (q) iVar.J();
                        iVar.F();
                        return qVar;
                    }
                    throw new IllegalStateException("Unexpected " + com.sgscq.vpn.handler.l.e(iZ2) + " when reading a JsonElement.");
                }
                int iZ3 = aVar.z();
                q qVarG = g(aVar, iZ3);
                if (qVarG == null) {
                    return f(aVar, iZ3);
                }
                ArrayDeque arrayDeque = new ArrayDeque();
                while (true) {
                    if (aVar.m()) {
                        String strT2 = qVarG instanceof t ? aVar.t() : null;
                        int iZ4 = aVar.z();
                        q qVarG2 = g(aVar, iZ4);
                        boolean z = qVarG2 != null;
                        if (qVarG2 == null) {
                            qVarG2 = f(aVar, iZ4);
                        }
                        if (qVarG instanceof p) {
                            p pVar = (p) qVarG;
                            pVar.getClass();
                            pVar.f25a.add(qVarG2);
                        } else {
                            ((t) qVarG).j(strT2, qVarG2);
                        }
                        if (z) {
                            arrayDeque.addLast(qVarG);
                            qVarG = qVarG2;
                        }
                    } else {
                        if (qVarG instanceof p) {
                            aVar.g();
                        } else {
                            aVar.h();
                        }
                        if (arrayDeque.isEmpty()) {
                            return qVarG;
                        }
                        qVarG = (q) arrayDeque.removeLast();
                    }
                }
                break;
            case 21:
                BitSet bitSet = new BitSet();
                aVar.c();
                int iZ5 = aVar.z();
                int i9 = 0;
                while (iZ5 != 2) {
                    int iC = b0.c(iZ5);
                    if (iC == 5 || iC == 6) {
                        int iR2 = aVar.r();
                        if (iR2 == 0) {
                            zP = false;
                        } else {
                            if (iR2 != 1) {
                                throw new r("Invalid bitset value " + iR2 + ", expected 0 or 1; at path " + aVar.l());
                            }
                            zP = true;
                        }
                    } else {
                        if (iC != 7) {
                            throw new r("Invalid bitset value type: " + com.sgscq.vpn.handler.l.e(iZ5) + "; at path " + aVar.j());
                        }
                        zP = aVar.p();
                    }
                    if (zP) {
                        bitSet.set(i9);
                    }
                    i9++;
                    iZ5 = aVar.z();
                }
                aVar.g();
                return bitSet;
            case 22:
                return d(aVar);
            case 23:
                return d(aVar);
            case 24:
                return e(aVar);
            case 25:
                return e(aVar);
            case 26:
                return e(aVar);
            case 27:
                try {
                    return new AtomicInteger(aVar.r());
                } catch (NumberFormatException e8) {
                    throw new r(e8);
                }
            default:
                return new AtomicBoolean(aVar.p());
        }
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) {
        int i2 = 0;
        switch (this.f11a) {
            case 0:
                j(bVar, (Number) obj);
                return;
            case 1:
                AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
                bVar.d();
                int length = atomicIntegerArray.length();
                while (i2 < length) {
                    bVar.o(atomicIntegerArray.get(i2));
                    i2++;
                }
                bVar.g();
                return;
            case 2:
                j(bVar, (Number) obj);
                return;
            case 3:
                j(bVar, (Number) obj);
                return;
            case 4:
                j(bVar, (Number) obj);
                return;
            case 5:
                Character ch = (Character) obj;
                bVar.r(ch != null ? String.valueOf(ch) : null);
                return;
            case 6:
                bVar.r((String) obj);
                return;
            case 7:
                bVar.q((BigDecimal) obj);
                return;
            case 8:
                bVar.q((BigInteger) obj);
                return;
            case 9:
                bVar.q((c.m) obj);
                return;
            case 10:
                StringBuilder sb = (StringBuilder) obj;
                bVar.r(sb != null ? sb.toString() : null);
                return;
            case 11:
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + ((Class) obj).getName() + ". Forgot to register a type adapter?");
            case 12:
                StringBuffer stringBuffer = (StringBuffer) obj;
                bVar.r(stringBuffer != null ? stringBuffer.toString() : null);
                return;
            case 13:
                URL url = (URL) obj;
                bVar.r(url != null ? url.toExternalForm() : null);
                return;
            case 14:
                URI uri = (URI) obj;
                bVar.r(uri != null ? uri.toASCIIString() : null);
                return;
            case 15:
                InetAddress inetAddress = (InetAddress) obj;
                bVar.r(inetAddress != null ? inetAddress.getHostAddress() : null);
                return;
            case 16:
                UUID uuid = (UUID) obj;
                bVar.r(uuid != null ? uuid.toString() : null);
                return;
            case 17:
                bVar.r(((Currency) obj).getCurrencyCode());
                return;
            case 18:
                Calendar calendar = (Calendar) obj;
                if (calendar == null) {
                    bVar.k();
                    return;
                }
                bVar.e();
                bVar.i("year");
                bVar.o(calendar.get(1));
                bVar.i("month");
                bVar.o(calendar.get(2));
                bVar.i("dayOfMonth");
                bVar.o(calendar.get(5));
                bVar.i("hourOfDay");
                bVar.o(calendar.get(11));
                bVar.i("minute");
                bVar.o(calendar.get(12));
                bVar.i("second");
                bVar.o(calendar.get(13));
                bVar.h();
                return;
            case 19:
                Locale locale = (Locale) obj;
                bVar.r(locale != null ? locale.toString() : null);
                return;
            case 20:
                h((q) obj, bVar);
                return;
            case 21:
                BitSet bitSet = (BitSet) obj;
                bVar.d();
                int length2 = bitSet.length();
                while (i2 < length2) {
                    bVar.o(bitSet.get(i2) ? 1L : 0L);
                    i2++;
                }
                bVar.g();
                return;
            case 22:
                i(bVar, (Boolean) obj);
                return;
            case 23:
                i(bVar, (Boolean) obj);
                return;
            case 24:
                j(bVar, (Number) obj);
                return;
            case 25:
                j(bVar, (Number) obj);
                return;
            case 26:
                j(bVar, (Number) obj);
                return;
            case 27:
                bVar.o(((AtomicInteger) obj).get());
                return;
            default:
                bVar.s(((AtomicBoolean) obj).get());
                return;
        }
    }

    public final Boolean d(h.a aVar) throws IOException {
        switch (this.f11a) {
            case 22:
                int iZ = aVar.z();
                if (iZ != 9) {
                    return Boolean.valueOf(iZ == 6 ? Boolean.parseBoolean(aVar.x()) : aVar.p());
                }
                aVar.v();
                return null;
            default:
                if (aVar.z() != 9) {
                    return Boolean.valueOf(aVar.x());
                }
                aVar.v();
                return null;
        }
    }

    public final Number e(h.a aVar) throws IOException {
        switch (this.f11a) {
            case 0:
                if (aVar.z() != 9) {
                    return Long.valueOf(aVar.s());
                }
                aVar.v();
                return null;
            case 2:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                try {
                    return Long.valueOf(aVar.s());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            case 3:
                if (aVar.z() != 9) {
                    return Float.valueOf((float) aVar.q());
                }
                aVar.v();
                return null;
            case 4:
                if (aVar.z() != 9) {
                    return Double.valueOf(aVar.q());
                }
                aVar.v();
                return null;
            case 24:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                try {
                    int iR = aVar.r();
                    if (iR <= 255 && iR >= -128) {
                        return Byte.valueOf((byte) iR);
                    }
                    throw new r("Lossy conversion from " + iR + " to byte; at path " + aVar.l());
                } catch (NumberFormatException e3) {
                    throw new r(e3);
                }
            case 25:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                try {
                    int iR2 = aVar.r();
                    if (iR2 <= 65535 && iR2 >= -32768) {
                        return Short.valueOf((short) iR2);
                    }
                    throw new r("Lossy conversion from " + iR2 + " to short; at path " + aVar.l());
                } catch (NumberFormatException e4) {
                    throw new r(e4);
                }
            default:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.r());
                } catch (NumberFormatException e5) {
                    throw new r(e5);
                }
        }
    }

    public final void i(h.b bVar, Boolean bool) throws IOException {
        switch (this.f11a) {
            case 22:
                bVar.p(bool);
                break;
            default:
                bVar.r(bool == null ? "null" : bool.toString());
                break;
        }
    }

    public final void j(h.b bVar, Number number) throws IOException {
        switch (this.f11a) {
            case 0:
                if (number != null) {
                    bVar.r(number.toString());
                } else {
                    bVar.k();
                }
                break;
            case 2:
                if (number != null) {
                    bVar.o(number.longValue());
                } else {
                    bVar.k();
                }
                break;
            case 3:
                if (number != null) {
                    if (!(number instanceof Float)) {
                        number = Float.valueOf(number.floatValue());
                    }
                    bVar.q(number);
                } else {
                    bVar.k();
                }
                break;
            case 4:
                if (number != null) {
                    bVar.n(number.doubleValue());
                } else {
                    bVar.k();
                }
                break;
            case 24:
                if (number != null) {
                    bVar.o(number.byteValue());
                } else {
                    bVar.k();
                }
                break;
            case 25:
                if (number != null) {
                    bVar.o(number.shortValue());
                } else {
                    bVar.k();
                }
                break;
            default:
                if (number != null) {
                    bVar.o(number.intValue());
                } else {
                    bVar.k();
                }
                break;
        }
    }
}
