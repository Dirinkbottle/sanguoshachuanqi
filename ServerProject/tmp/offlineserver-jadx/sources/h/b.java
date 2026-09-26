package h;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class b implements Closeable, Flushable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f1729j = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f1730k = new String[128];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f1731l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Writer f1732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f1733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1738g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1739h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1740i;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            f1730k[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = f1730k;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f1731l = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public b(Writer writer) {
        int[] iArr = new int[32];
        this.f1733b = iArr;
        this.f1734c = 0;
        if (iArr.length == 0) {
            this.f1733b = Arrays.copyOf(iArr, 0 * 2);
        }
        int[] iArr2 = this.f1733b;
        int i2 = this.f1734c;
        this.f1734c = i2 + 1;
        iArr2[i2] = 6;
        this.f1736e = ":";
        this.f1740i = true;
        Objects.requireNonNull(writer, "out == null");
        this.f1732a = writer;
    }

    public final void c() throws IOException {
        int iL = l();
        if (iL != 1) {
            Writer writer = this.f1732a;
            if (iL != 2) {
                if (iL == 4) {
                    writer.append((CharSequence) this.f1736e);
                    this.f1733b[this.f1734c - 1] = 5;
                    return;
                }
                if (iL != 6) {
                    if (iL != 7) {
                        throw new IllegalStateException("Nesting problem.");
                    }
                    if (!this.f1737f) {
                        throw new IllegalStateException("JSON must have only one top-level value.");
                    }
                }
                this.f1733b[this.f1734c - 1] = 7;
                return;
            }
            writer.append(',');
        } else {
            this.f1733b[this.f1734c - 1] = 2;
        }
        j();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1732a.close();
        int i2 = this.f1734c;
        if (i2 > 1 || (i2 == 1 && this.f1733b[i2 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f1734c = 0;
    }

    public void d() throws IOException {
        t();
        c();
        int i2 = this.f1734c;
        int[] iArr = this.f1733b;
        if (i2 == iArr.length) {
            this.f1733b = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f1733b;
        int i3 = this.f1734c;
        this.f1734c = i3 + 1;
        iArr2[i3] = 1;
        this.f1732a.write(91);
    }

    public void e() throws IOException {
        t();
        c();
        int i2 = this.f1734c;
        int[] iArr = this.f1733b;
        if (i2 == iArr.length) {
            this.f1733b = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f1733b;
        int i3 = this.f1734c;
        this.f1734c = i3 + 1;
        iArr2[i3] = 3;
        this.f1732a.write(123);
    }

    public final void f(int i2, int i3, char c2) throws IOException {
        int iL = l();
        if (iL != i3 && iL != i2) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f1739h != null) {
            throw new IllegalStateException("Dangling name: " + this.f1739h);
        }
        this.f1734c--;
        if (iL == i3) {
            j();
        }
        this.f1732a.write(c2);
    }

    public void flush() throws IOException {
        if (this.f1734c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f1732a.flush();
    }

    public void g() throws IOException {
        f(1, 2, ']');
    }

    public void h() throws IOException {
        f(3, 5, '}');
    }

    public void i(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f1739h != null) {
            throw new IllegalStateException();
        }
        if (this.f1734c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f1739h = str;
    }

    public final void j() throws IOException {
        if (this.f1735d == null) {
            return;
        }
        Writer writer = this.f1732a;
        writer.write(10);
        int i2 = this.f1734c;
        for (int i3 = 1; i3 < i2; i3++) {
            writer.write(this.f1735d);
        }
    }

    public b k() throws IOException {
        if (this.f1739h != null) {
            if (!this.f1740i) {
                this.f1739h = null;
                return this;
            }
            t();
        }
        c();
        this.f1732a.write("null");
        return this;
    }

    public final int l() {
        int i2 = this.f1734c;
        if (i2 != 0) {
            return this.f1733b[i2 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    public final void m(String str) throws IOException {
        String str2;
        String[] strArr = this.f1738g ? f1731l : f1730k;
        Writer writer = this.f1732a;
        writer.write(34);
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i2 < i3) {
                        writer.write(str, i2, i3 - i2);
                    }
                    writer.write(str2);
                    i2 = i3 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i2 < i3) {
                    writer.write(str, i2, i3 - i2);
                }
                writer.write(str2);
                i2 = i3 + 1;
            }
        }
        if (i2 < length) {
            writer.write(str, i2, length - i2);
        }
        writer.write(34);
    }

    public void n(double d2) throws IOException {
        t();
        if (this.f1737f || !(Double.isNaN(d2) || Double.isInfinite(d2))) {
            c();
            this.f1732a.append((CharSequence) Double.toString(d2));
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d2);
        }
    }

    public void o(long j2) throws IOException {
        t();
        c();
        this.f1732a.write(Long.toString(j2));
    }

    public void p(Boolean bool) throws IOException {
        if (bool == null) {
            k();
            return;
        }
        t();
        c();
        this.f1732a.write(bool.booleanValue() ? "true" : "false");
    }

    public void q(Number number) throws IOException {
        if (number == null) {
            k();
            return;
        }
        t();
        String string = number.toString();
        if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (!(cls == Integer.class || cls == Long.class || cls == Double.class || cls == Float.class || cls == Byte.class || cls == Short.class || cls == BigDecimal.class || cls == BigInteger.class || cls == AtomicInteger.class || cls == AtomicLong.class) && !f1729j.matcher(string).matches()) {
                throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + string);
            }
        } else if (!this.f1737f) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(string));
        }
        c();
        this.f1732a.append((CharSequence) string);
    }

    public void r(String str) throws IOException {
        if (str == null) {
            k();
            return;
        }
        t();
        c();
        m(str);
    }

    public void s(boolean z) throws IOException {
        t();
        c();
        this.f1732a.write(z ? "true" : "false");
    }

    public final void t() throws IOException {
        if (this.f1739h != null) {
            int iL = l();
            if (iL == 5) {
                this.f1732a.write(44);
            } else if (iL != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            j();
            this.f1733b[this.f1734c - 1] = 4;
            m(this.f1739h);
            this.f1739h = null;
        }
    }
}
