package h;

import a.w;
import com.sgscq.vpn.handler.l;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Reader f1714a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1722i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1723j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f1724k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[] f1725l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String[] f1727n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[] f1728o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1715b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final char[] f1716c = new char[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1717d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1718e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1719f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1720g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1721h = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1726m = 0 + 1;

    static {
        w.f28b = new w();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f1725l = iArr;
        iArr[0] = 6;
        this.f1727n = new String[32];
        this.f1728o = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f1714a = reader;
    }

    public final void A(int i2) {
        int i3 = this.f1726m;
        int[] iArr = this.f1725l;
        if (i3 == iArr.length) {
            int i4 = i3 * 2;
            this.f1725l = Arrays.copyOf(iArr, i4);
            this.f1728o = Arrays.copyOf(this.f1728o, i4);
            this.f1727n = (String[]) Arrays.copyOf(this.f1727n, i4);
        }
        int[] iArr2 = this.f1725l;
        int i5 = this.f1726m;
        this.f1726m = i5 + 1;
        iArr2[i5] = i2;
    }

    public final char B() throws c {
        int i2;
        int i3;
        if (this.f1717d == this.f1718e && !i(1)) {
            G("Unterminated escape sequence");
            throw null;
        }
        int i4 = this.f1717d;
        int i5 = i4 + 1;
        this.f1717d = i5;
        char[] cArr = this.f1716c;
        char c2 = cArr[i4];
        if (c2 == '\n') {
            this.f1719f++;
            this.f1720g = i5;
        } else if (c2 != '\"' && c2 != '\'' && c2 != '/' && c2 != '\\') {
            if (c2 == 'b') {
                return '\b';
            }
            if (c2 == 'f') {
                return '\f';
            }
            if (c2 == 'n') {
                return '\n';
            }
            if (c2 == 'r') {
                return '\r';
            }
            if (c2 == 't') {
                return '\t';
            }
            if (c2 != 'u') {
                G("Invalid escape sequence");
                throw null;
            }
            if (i5 + 4 > this.f1718e && !i(4)) {
                G("Unterminated escape sequence");
                throw null;
            }
            int i6 = this.f1717d;
            int i7 = i6 + 4;
            char c3 = 0;
            while (i6 < i7) {
                char c4 = cArr[i6];
                char c5 = (char) (c3 << 4);
                if (c4 < '0' || c4 > '9') {
                    if (c4 >= 'a' && c4 <= 'f') {
                        i2 = c4 - 'a';
                    } else {
                        if (c4 < 'A' || c4 > 'F') {
                            throw new NumberFormatException("\\u".concat(new String(cArr, this.f1717d, 4)));
                        }
                        i2 = c4 - 'A';
                    }
                    i3 = i2 + 10;
                } else {
                    i3 = c4 - '0';
                }
                c3 = (char) (i3 + c5);
                i6++;
            }
            this.f1717d += 4;
            return c3;
        }
        return c2;
    }

    public final void C(char c2) throws c {
        while (true) {
            int i2 = this.f1717d;
            int i3 = this.f1718e;
            while (true) {
                if (i2 >= i3) {
                    this.f1717d = i2;
                    if (i(1)) {
                        break;
                    }
                    G("Unterminated string");
                    throw null;
                }
                int i4 = i2 + 1;
                char c3 = this.f1716c[i2];
                if (c3 == c2) {
                    this.f1717d = i4;
                    return;
                }
                if (c3 == '\\') {
                    this.f1717d = i4;
                    B();
                    break;
                } else {
                    if (c3 == '\n') {
                        this.f1719f++;
                        this.f1720g = i4;
                    }
                    i2 = i4;
                }
            }
        }
    }

    public final void D() {
        char c2;
        do {
            if (this.f1717d >= this.f1718e && !i(1)) {
                return;
            }
            int i2 = this.f1717d;
            int i3 = i2 + 1;
            this.f1717d = i3;
            c2 = this.f1716c[i2];
            if (c2 == '\n') {
                this.f1719f++;
                this.f1720g = i3;
                return;
            }
        } while (c2 != '\r');
    }

    public final void E() throws c {
        do {
            int i2 = 0;
            while (true) {
                int i3 = this.f1717d;
                if (i3 + i2 < this.f1718e) {
                    char c2 = this.f1716c[i3 + i2];
                    if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                        if (c2 != '#') {
                            if (c2 != ',') {
                                if (c2 != '/' && c2 != '=') {
                                    if (c2 != '{' && c2 != '}' && c2 != ':') {
                                        if (c2 != ';') {
                                            switch (c2) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i2++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        e();
                    }
                    this.f1717d += i2;
                    return;
                }
                this.f1717d = i3 + i2;
            }
        } while (i(1));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void F() throws IOException {
        int i2 = 0;
        do {
            int iF = this.f1721h;
            if (iF == 0) {
                iF = f();
            }
            switch (iF) {
                case 1:
                    A(3);
                    i2++;
                    this.f1721h = 0;
                    break;
                case 2:
                    if (i2 == 0) {
                        this.f1727n[this.f1726m - 1] = null;
                    }
                    this.f1726m--;
                    i2--;
                    this.f1721h = 0;
                    break;
                case 3:
                    A(1);
                    i2++;
                    this.f1721h = 0;
                    break;
                case 4:
                    this.f1726m--;
                    i2--;
                    this.f1721h = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.f1721h = 0;
                    break;
                case 8:
                    C('\'');
                    this.f1721h = 0;
                    break;
                case 9:
                    C('\"');
                    this.f1721h = 0;
                    break;
                case 10:
                    E();
                    this.f1721h = 0;
                    break;
                case 12:
                    C('\'');
                    if (i2 == 0) {
                        this.f1727n[this.f1726m - 1] = "<skipped>";
                    }
                    this.f1721h = 0;
                    break;
                case 13:
                    C('\"');
                    if (i2 == 0) {
                        this.f1727n[this.f1726m - 1] = "<skipped>";
                    }
                    this.f1721h = 0;
                    break;
                case 14:
                    E();
                    if (i2 == 0) {
                        this.f1727n[this.f1726m - 1] = "<skipped>";
                    }
                    this.f1721h = 0;
                    break;
                case 16:
                    this.f1717d += this.f1723j;
                    this.f1721h = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i2 > 0);
        int[] iArr = this.f1728o;
        int i3 = this.f1726m - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    public final void G(String str) throws c {
        throw new c(str + o());
    }

    public void c() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 3) {
            A(1);
            this.f1728o[this.f1726m - 1] = 0;
            this.f1721h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + l.e(z()) + o());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1721h = 0;
        this.f1725l[0] = 8;
        this.f1726m = 1;
        this.f1714a.close();
    }

    public void d() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 1) {
            A(3);
            this.f1721h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + l.e(z()) + o());
        }
    }

    public final void e() throws c {
        if (this.f1715b) {
            return;
        }
        G("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0182 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:116:0x0183  */
    /* JADX WARN: Code duplicated, block: B:119:0x0192  */
    /* JADX WARN: Code duplicated, block: B:122:0x0197  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:126:0x01a5 A[PHI: r1 r2
      0x01a5: PHI (r1v55 int) = (r1v54 int), (r1v77 int) binds: [B:118:0x0190, B:125:0x01a1] A[DONT_GENERATE, DONT_INLINE]
      0x01a5: PHI (r2v35 int) = (r2v34 int), (r2v36 int) binds: [B:118:0x0190, B:125:0x01a1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:128:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:130:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:172:0x0215  */
    /* JADX WARN: Code duplicated, block: B:173:0x0217  */
    /* JADX WARN: Code duplicated, block: B:184:0x0234 A[DONT_INVERT, PHI: r1
      0x0234: PHI (r1v63 char) = (r1v62 char), (r1v67 char) binds: [B:171:0x0213, B:183:0x0233] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:185:0x0236  */
    /* JADX WARN: Code duplicated, block: B:200:0x0255  */
    /* JADX WARN: Code duplicated, block: B:202:0x0259  */
    /* JADX WARN: Code duplicated, block: B:205:0x025e  */
    /* JADX WARN: Code duplicated, block: B:211:0x026b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:212:0x026c  */
    /* JADX WARN: Code duplicated, block: B:214:0x0276  */
    /* JADX WARN: Code duplicated, block: B:215:0x027d  */
    /* JADX WARN: Code duplicated, block: B:223:0x0290  */
    /* JADX WARN: Code duplicated, block: B:225:0x0293  */
    /* JADX WARN: Code duplicated, block: B:231:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:232:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:275:0x0268 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:0x0268 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x0212 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f3 A[ADDED_TO_REGION] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v5 */
    public final int f() throws IOException {
        int i2;
        ?? r6;
        ?? r1;
        int i3;
        int i4;
        int iU;
        int i5;
        String str;
        String str2;
        int i6;
        char c2;
        int i7;
        int i8;
        boolean z;
        char c3;
        int i9;
        char c4;
        int i10;
        char c5;
        int i11;
        int[] iArr = this.f1725l;
        int i12 = this.f1726m;
        int i13 = iArr[i12 - 1];
        char[] cArr = this.f1716c;
        boolean z2 = true;
        if (i13 == 1) {
            iArr[i12 - 1] = 2;
        } else {
            if (i13 != 2) {
                if (i13 != 3) {
                    if (i13 == 5) {
                        r6 = 1;
                        i2 = 2;
                    } else if (i13 == 4) {
                        iArr[i12 - 1] = 5;
                        int iU2 = u(true);
                        if (iU2 != 58) {
                            if (iU2 != 61) {
                                G("Expected ':'");
                                throw null;
                            }
                            e();
                            if (this.f1717d < this.f1718e || i(1)) {
                                int i14 = this.f1717d;
                                if (cArr[i14] == '>') {
                                    this.f1717d = i14 + 1;
                                }
                            }
                        }
                    } else if (i13 == 6) {
                        if (this.f1715b) {
                            u(true);
                            int i15 = this.f1717d - 1;
                            this.f1717d = i15;
                            if (i15 + 5 <= this.f1718e || i(5)) {
                                int i16 = this.f1717d;
                                if (cArr[i16] == ')' && cArr[i16 + 1] == ']' && cArr[i16 + 2] == '}' && cArr[i16 + 3] == '\'') {
                                    if (cArr[i16 + 4] == '\n') {
                                        this.f1717d = i16 + 5;
                                    }
                                }
                            }
                        }
                        this.f1725l[this.f1726m - 1] = 7;
                        i4 = 8;
                        iU = u(true);
                        if (iU != 34) {
                            i2 = 9;
                        } else if (iU == 39) {
                            if (iU != 44 || iU == 59) {
                                i5 = 1;
                            } else {
                                if (iU == 91) {
                                    this.f1721h = 3;
                                    return 3;
                                }
                                if (iU == 93) {
                                    i5 = 1;
                                    if (i13 == 1) {
                                        i3 = 4;
                                        this.f1721h = i3;
                                        return i3;
                                    }
                                } else if (iU != 123) {
                                    int i17 = this.f1717d - 1;
                                    this.f1717d = i17;
                                    char c6 = cArr[i17];
                                    if (c6 == 't' || c6 == 'T') {
                                        str = "true";
                                        str2 = "TRUE";
                                        i6 = 5;
                                    } else if (c6 == 'f' || c6 == 'F') {
                                        str = "false";
                                        str2 = "FALSE";
                                        i6 = 6;
                                    } else {
                                        if (c6 != 'n' && c6 != 'N') {
                                            i6 = 0;
                                            break;
                                        }
                                        str = "null";
                                        str2 = "NULL";
                                        i6 = 7;
                                        if (i6 != 0) {
                                            return i6;
                                        }
                                        i7 = this.f1717d;
                                        i8 = this.f1718e;
                                        z = true;
                                        long j2 = 0;
                                        c3 = 0;
                                        i9 = 0;
                                        boolean z3 = false;
                                        while (true) {
                                            if (i7 + i9 != i8) {
                                                c4 = cArr[i7 + i9];
                                                if (c4 == '+') {
                                                    if (c4 != 'E' || c4 == 'e') {
                                                        if (c3 != 2 || c3 == 4) {
                                                            c3 = 5;
                                                            i9++;
                                                            z2 = true;
                                                        }
                                                    } else if (c4 == '-') {
                                                        if (c3 == 0) {
                                                            c3 = 1;
                                                            z3 = true;
                                                        } else {
                                                            if (c3 != 5) {
                                                            }
                                                            c3 = 6;
                                                        }
                                                        i9++;
                                                        z2 = true;
                                                    } else if (c4 != '.') {
                                                        if (c4 >= '0' && c4 <= '9') {
                                                            if (c3 == z2 || c3 == 0) {
                                                                j2 = -(c4 - '0');
                                                                c3 = 2;
                                                            } else if (c3 == 2) {
                                                                if (j2 != 0) {
                                                                    long j3 = (10 * j2) - ((long) (c4 - '0'));
                                                                    z &= j2 > -922337203685477580L || (j2 == -922337203685477580L && j3 < j2);
                                                                    j2 = j3;
                                                                }
                                                            } else if (c3 == 3) {
                                                                c3 = 4;
                                                            } else if (c3 == 5 || c3 == 6) {
                                                                c3 = 7;
                                                            }
                                                            i9++;
                                                            z2 = true;
                                                        } else if (!n(c4)) {
                                                            c5 = 2;
                                                            if (c3 != 2) {
                                                                if (c3 != c5 || c3 == 4 || c3 == 7) {
                                                                    this.f1723j = i9;
                                                                    i11 = 16;
                                                                }
                                                            } else if (z || ((j2 == Long.MIN_VALUE && !z3) || (j2 == 0 && z3))) {
                                                                c5 = 2;
                                                                if (c3 != c5) {
                                                                }
                                                                this.f1723j = i9;
                                                                i11 = 16;
                                                            } else {
                                                                if (!z3) {
                                                                    j2 = -j2;
                                                                }
                                                                this.f1722i = j2;
                                                                this.f1717d += i9;
                                                                i11 = 15;
                                                            }
                                                            i10 = i11;
                                                            this.f1721h = i10;
                                                        }
                                                    } else if (c3 == 2) {
                                                        c3 = 3;
                                                        i9++;
                                                        z2 = true;
                                                    }
                                                    if (i10 != 0) {
                                                        return i10;
                                                    }
                                                    if (!n(cArr[this.f1717d])) {
                                                        G("Expected value");
                                                        throw null;
                                                    }
                                                    e();
                                                    i2 = 10;
                                                } else {
                                                    if (c3 != 5) {
                                                    }
                                                    c3 = 6;
                                                    i9++;
                                                    z2 = true;
                                                }
                                            } else if (i9 != cArr.length) {
                                                if (!i(i9 + 1)) {
                                                    i7 = this.f1717d;
                                                    i8 = this.f1718e;
                                                    c4 = cArr[i7 + i9];
                                                    if (c4 == '+') {
                                                        if (c3 != 5) {
                                                        }
                                                        c3 = 6;
                                                        i9++;
                                                        z2 = true;
                                                    } else if (c4 != 'E') {
                                                        if (c3 != 2) {
                                                        }
                                                        c3 = 5;
                                                        i9++;
                                                        z2 = true;
                                                    } else {
                                                        if (c3 != 2) {
                                                        }
                                                        c3 = 5;
                                                        i9++;
                                                        z2 = true;
                                                    }
                                                }
                                                c5 = 2;
                                                if (c3 != 2) {
                                                    if (c3 != c5) {
                                                    }
                                                    this.f1723j = i9;
                                                    i11 = 16;
                                                } else {
                                                    if (z) {
                                                    }
                                                    c5 = 2;
                                                    if (c3 != c5) {
                                                    }
                                                    this.f1723j = i9;
                                                    i11 = 16;
                                                }
                                                i10 = i11;
                                                this.f1721h = i10;
                                                if (i10 != 0) {
                                                    return i10;
                                                }
                                                if (!n(cArr[this.f1717d])) {
                                                    G("Expected value");
                                                    throw null;
                                                }
                                                e();
                                                i2 = 10;
                                            }
                                            i10 = 0;
                                            if (i10 != 0) {
                                                return i10;
                                            }
                                            if (!n(cArr[this.f1717d])) {
                                                G("Expected value");
                                                throw null;
                                            }
                                            e();
                                            i2 = 10;
                                        }
                                    }
                                    int length = str.length();
                                    int i18 = 1;
                                    while (true) {
                                        if (i18 >= length) {
                                            if ((this.f1717d + length >= this.f1718e && !i(length + 1)) || !n(cArr[this.f1717d + length])) {
                                                this.f1717d += length;
                                                this.f1721h = i6;
                                                break;
                                            }
                                            break;
                                        }
                                        if ((this.f1717d + i18 < this.f1718e || i(i18 + 1)) && ((c2 = cArr[this.f1717d + i18]) == str.charAt(i18) || c2 == str2.charAt(i18))) {
                                            i18++;
                                        }
                                        i6 = 0;
                                        break;
                                    }
                                    if (i6 != 0) {
                                        return i6;
                                    }
                                    i7 = this.f1717d;
                                    i8 = this.f1718e;
                                    z = true;
                                    long j4 = 0;
                                    c3 = 0;
                                    i9 = 0;
                                    boolean z4 = false;
                                    while (true) {
                                        if (i7 + i9 != i8) {
                                            c4 = cArr[i7 + i9];
                                            if (c4 == '+') {
                                                if (c3 != 5) {
                                                }
                                                c3 = 6;
                                                i9++;
                                                z2 = true;
                                            } else if (c4 != 'E') {
                                                if (c3 != 2) {
                                                }
                                                c3 = 5;
                                                i9++;
                                                z2 = true;
                                            } else {
                                                if (c3 != 2) {
                                                }
                                                c3 = 5;
                                                i9++;
                                                z2 = true;
                                            }
                                        } else if (i9 != cArr.length) {
                                            if (!i(i9 + 1)) {
                                                i7 = this.f1717d;
                                                i8 = this.f1718e;
                                                c4 = cArr[i7 + i9];
                                                if (c4 == '+') {
                                                    if (c3 != 5) {
                                                    }
                                                    c3 = 6;
                                                    i9++;
                                                    z2 = true;
                                                } else if (c4 != 'E') {
                                                    if (c3 != 2) {
                                                    }
                                                    c3 = 5;
                                                    i9++;
                                                    z2 = true;
                                                } else {
                                                    if (c3 != 2) {
                                                    }
                                                    c3 = 5;
                                                    i9++;
                                                    z2 = true;
                                                }
                                            }
                                            c5 = 2;
                                            if (c3 != 2) {
                                                if (c3 != c5) {
                                                }
                                                this.f1723j = i9;
                                                i11 = 16;
                                            } else {
                                                if (z) {
                                                }
                                                c5 = 2;
                                                if (c3 != c5) {
                                                }
                                                this.f1723j = i9;
                                                i11 = 16;
                                            }
                                            i10 = i11;
                                            this.f1721h = i10;
                                            if (i10 != 0) {
                                                return i10;
                                            }
                                            if (!n(cArr[this.f1717d])) {
                                                G("Expected value");
                                                throw null;
                                            }
                                            e();
                                            i2 = 10;
                                        }
                                        i10 = 0;
                                        if (i10 != 0) {
                                            return i10;
                                        }
                                        if (!n(cArr[this.f1717d])) {
                                            G("Expected value");
                                            throw null;
                                        }
                                        e();
                                        i2 = 10;
                                    }
                                } else {
                                    i2 = 1;
                                }
                            }
                            if (i13 == i5 && i13 != 2) {
                                G("Unexpected value");
                                throw null;
                            }
                            e();
                            this.f1717d -= i5;
                            i2 = 7;
                        } else {
                            e();
                            i2 = i4;
                        }
                    } else if (i13 != 7) {
                        i4 = 8;
                        if (i13 == 8) {
                            throw new IllegalStateException("JsonReader is closed");
                        }
                        iU = u(true);
                        if (iU != 34) {
                            i2 = 9;
                        } else if (iU == 39) {
                            e();
                            i2 = i4;
                        } else if (iU != 44) {
                            i5 = 1;
                            if (i13 == i5) {
                            }
                            e();
                            this.f1717d -= i5;
                            i2 = 7;
                        } else {
                            i5 = 1;
                            if (i13 == i5) {
                            }
                            e();
                            this.f1717d -= i5;
                            i2 = 7;
                        }
                    } else if (u(false) == -1) {
                        i2 = 17;
                    } else {
                        e();
                        this.f1717d--;
                        i4 = 8;
                        iU = u(true);
                        if (iU != 34) {
                            i2 = 9;
                        } else if (iU == 39) {
                            e();
                            i2 = i4;
                        } else if (iU != 44) {
                            i5 = 1;
                            if (i13 == i5) {
                            }
                            e();
                            this.f1717d -= i5;
                            i2 = 7;
                        } else {
                            i5 = 1;
                            if (i13 == i5) {
                            }
                            e();
                            this.f1717d -= i5;
                            i2 = 7;
                        }
                    }
                    this.f1721h = i2;
                    return i2;
                }
                i2 = 2;
                r6 = 1;
                iArr[i12 - r6] = 4;
                if (i13 == 5) {
                    int iU3 = u(r6);
                    if (iU3 != 44) {
                        if (iU3 == 59) {
                            e();
                        } else if (iU3 != 125) {
                            G("Unterminated object");
                            throw null;
                        }
                        this.f1721h = i2;
                        return i2;
                    }
                    r1 = 1;
                } else {
                    r1 = r6;
                }
                int iU4 = u(r1);
                if (iU4 == 34) {
                    i2 = 13;
                } else if (iU4 == 39) {
                    e();
                    i2 = 12;
                } else {
                    if (iU4 == 125) {
                        if (i13 == 5) {
                            G("Expected name");
                            throw null;
                        }
                        i3 = i2;
                        this.f1721h = i3;
                        return i3;
                    }
                    e();
                    this.f1717d -= r1;
                    if (!n((char) iU4)) {
                        G("Expected name");
                        throw null;
                    }
                    i2 = 14;
                }
                this.f1721h = i2;
                return i2;
            }
            int iU5 = u(true);
            if (iU5 != 44) {
                if (iU5 != 59) {
                    if (iU5 == 93) {
                        this.f1721h = 4;
                        return 4;
                    }
                    G("Unterminated array");
                    throw null;
                }
                e();
            }
        }
        i4 = 8;
        iU = u(true);
        if (iU != 34) {
            i2 = 9;
        } else if (iU == 39) {
            e();
            i2 = i4;
        } else if (iU != 44) {
            i5 = 1;
            if (i13 == i5) {
            }
            e();
            this.f1717d -= i5;
            i2 = 7;
        } else {
            i5 = 1;
            if (i13 == i5) {
            }
            e();
            this.f1717d -= i5;
            i2 = 7;
        }
        this.f1721h = i2;
        return i2;
    }

    public void g() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + l.e(z()) + o());
        }
        int i2 = this.f1726m - 1;
        this.f1726m = i2;
        int[] iArr = this.f1728o;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.f1721h = 0;
    }

    public void h() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + l.e(z()) + o());
        }
        int i2 = this.f1726m - 1;
        this.f1726m = i2;
        this.f1727n[i2] = null;
        int[] iArr = this.f1728o;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.f1721h = 0;
    }

    public final boolean i(int i2) throws IOException {
        int i3;
        int i4;
        int i5 = this.f1720g;
        int i6 = this.f1717d;
        this.f1720g = i5 - i6;
        int i7 = this.f1718e;
        char[] cArr = this.f1716c;
        if (i7 != i6) {
            int i8 = i7 - i6;
            this.f1718e = i8;
            System.arraycopy(cArr, i6, cArr, 0, i8);
        } else {
            this.f1718e = 0;
        }
        this.f1717d = 0;
        do {
            int i9 = this.f1718e;
            int i10 = this.f1714a.read(cArr, i9, cArr.length - i9);
            if (i10 == -1) {
                return false;
            }
            i3 = this.f1718e + i10;
            this.f1718e = i3;
            if (this.f1719f == 0 && (i4 = this.f1720g) == 0 && i3 > 0 && cArr[0] == 65279) {
                this.f1717d++;
                this.f1720g = i4 + 1;
                i2++;
            }
        } while (i3 < i2);
        return true;
    }

    public String j() {
        return k(false);
    }

    public final String k(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i2 = 0;
        while (true) {
            int i3 = this.f1726m;
            if (i2 >= i3) {
                return sb.toString();
            }
            int i4 = this.f1725l[i2];
            if (i4 == 1 || i4 == 2) {
                int i5 = this.f1728o[i2];
                if (z && i5 > 0 && i2 == i3 - 1) {
                    i5--;
                }
                sb.append('[');
                sb.append(i5);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String str = this.f1727n[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
            i2++;
        }
    }

    public String l() {
        return k(true);
    }

    public boolean m() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        return (iF == 2 || iF == 4 || iF == 17) ? false : true;
    }

    public final boolean n(char c2) throws c {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        e();
        return false;
    }

    public final String o() {
        return " at line " + (this.f1719f + 1) + " column " + ((this.f1717d - this.f1720g) + 1) + " path " + j();
    }

    public boolean p() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 5) {
            this.f1721h = 0;
            int[] iArr = this.f1728o;
            int i2 = this.f1726m - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (iF != 6) {
            throw new IllegalStateException("Expected a boolean but was " + l.e(z()) + o());
        }
        this.f1721h = 0;
        int[] iArr2 = this.f1728o;
        int i3 = this.f1726m - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

    public double q() throws IOException {
        String strW;
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 15) {
            this.f1721h = 0;
            int[] iArr = this.f1728o;
            int i2 = this.f1726m - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f1722i;
        }
        if (iF == 16) {
            this.f1724k = new String(this.f1716c, this.f1717d, this.f1723j);
            this.f1717d += this.f1723j;
        } else {
            if (iF == 8 || iF == 9) {
                strW = w(iF == 8 ? '\'' : '\"');
            } else if (iF == 10) {
                strW = y();
            } else if (iF != 11) {
                throw new IllegalStateException("Expected a double but was " + l.e(z()) + o());
            }
            this.f1724k = strW;
        }
        this.f1721h = 11;
        double d2 = Double.parseDouble(this.f1724k);
        if (!this.f1715b && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new c("JSON forbids NaN and infinities: " + d2 + o());
        }
        this.f1724k = null;
        this.f1721h = 0;
        int[] iArr2 = this.f1728o;
        int i3 = this.f1726m - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return d2;
    }

    public int r() throws IOException {
        String strW;
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 15) {
            long j2 = this.f1722i;
            int i2 = (int) j2;
            if (j2 != i2) {
                throw new NumberFormatException("Expected an int but was " + this.f1722i + o());
            }
            this.f1721h = 0;
            int[] iArr = this.f1728o;
            int i3 = this.f1726m - 1;
            iArr[i3] = iArr[i3] + 1;
            return i2;
        }
        if (iF == 16) {
            this.f1724k = new String(this.f1716c, this.f1717d, this.f1723j);
            this.f1717d += this.f1723j;
        } else {
            if (iF != 8 && iF != 9 && iF != 10) {
                throw new IllegalStateException("Expected an int but was " + l.e(z()) + o());
            }
            if (iF == 10) {
                strW = y();
            } else {
                strW = w(iF == 8 ? '\'' : '\"');
            }
            this.f1724k = strW;
            try {
                int i4 = Integer.parseInt(this.f1724k);
                this.f1721h = 0;
                int[] iArr2 = this.f1728o;
                int i5 = this.f1726m - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return i4;
            } catch (NumberFormatException unused) {
            }
        }
        this.f1721h = 11;
        double d2 = Double.parseDouble(this.f1724k);
        int i6 = (int) d2;
        if (i6 != d2) {
            throw new NumberFormatException("Expected an int but was " + this.f1724k + o());
        }
        this.f1724k = null;
        this.f1721h = 0;
        int[] iArr3 = this.f1728o;
        int i7 = this.f1726m - 1;
        iArr3[i7] = iArr3[i7] + 1;
        return i6;
    }

    public long s() throws IOException {
        String strW;
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 15) {
            this.f1721h = 0;
            int[] iArr = this.f1728o;
            int i2 = this.f1726m - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f1722i;
        }
        if (iF == 16) {
            this.f1724k = new String(this.f1716c, this.f1717d, this.f1723j);
            this.f1717d += this.f1723j;
        } else {
            if (iF != 8 && iF != 9 && iF != 10) {
                throw new IllegalStateException("Expected a long but was " + l.e(z()) + o());
            }
            if (iF == 10) {
                strW = y();
            } else {
                strW = w(iF == 8 ? '\'' : '\"');
            }
            this.f1724k = strW;
            try {
                long j2 = Long.parseLong(this.f1724k);
                this.f1721h = 0;
                int[] iArr2 = this.f1728o;
                int i3 = this.f1726m - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return j2;
            } catch (NumberFormatException unused) {
            }
        }
        this.f1721h = 11;
        double d2 = Double.parseDouble(this.f1724k);
        long j3 = (long) d2;
        if (j3 != d2) {
            throw new NumberFormatException("Expected a long but was " + this.f1724k + o());
        }
        this.f1724k = null;
        this.f1721h = 0;
        int[] iArr3 = this.f1728o;
        int i4 = this.f1726m - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j3;
    }

    public String t() throws IOException {
        char c2;
        String strW;
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 14) {
            strW = y();
        } else {
            if (iF == 12) {
                c2 = '\'';
            } else {
                if (iF != 13) {
                    throw new IllegalStateException("Expected a name but was " + l.e(z()) + o());
                }
                c2 = '\"';
            }
            strW = w(c2);
        }
        this.f1721h = 0;
        this.f1727n[this.f1726m - 1] = strW;
        return strW;
    }

    public String toString() {
        return getClass().getSimpleName() + o();
    }

    public final int u(boolean z) throws IOException {
        boolean z2;
        int i2;
        char[] cArr;
        char c2;
        while (true) {
            int i3 = this.f1717d;
            while (true) {
                int i4 = this.f1718e;
                while (true) {
                    z2 = true;
                    if (i3 == i4) {
                        this.f1717d = i3;
                        if (!i(1)) {
                            if (!z) {
                                return -1;
                            }
                            throw new EOFException("End of input" + o());
                        }
                        i3 = this.f1717d;
                        i4 = this.f1718e;
                    }
                    i2 = i3 + 1;
                    cArr = this.f1716c;
                    c2 = cArr[i3];
                    if (c2 == '\n') {
                        this.f1719f++;
                        this.f1720g = i2;
                    } else if (c2 == ' ' || c2 == '\r' || c2 == '\t') {
                    }
                    i3 = i2;
                }
                this.f1717d = i2;
                if (c2 != '/') {
                    if (c2 != '#') {
                        return c2;
                    }
                    e();
                    break;
                }
                if (i2 == i4) {
                    this.f1717d = i2 - 1;
                    boolean zI = i(2);
                    this.f1717d++;
                    if (!zI) {
                        return c2;
                    }
                }
                e();
                int i5 = this.f1717d;
                char c3 = cArr[i5];
                if (c3 != '*') {
                    if (c3 == '/') {
                        this.f1717d = i5 + 1;
                        break;
                    }
                    return c2;
                }
                this.f1717d = i5 + 1;
                while (true) {
                    int i6 = 0;
                    if (this.f1717d + 2 > this.f1718e && !i(2)) {
                        z2 = false;
                        break;
                    }
                    int i7 = this.f1717d;
                    if (cArr[i7] != '\n') {
                        while (true) {
                            if (i6 >= 2) {
                                break;
                            }
                            if (cArr[this.f1717d + i6] != "*/".charAt(i6)) {
                                break;
                            }
                            i6++;
                        }
                    } else {
                        this.f1719f++;
                        this.f1720g = i7 + 1;
                    }
                    this.f1717d++;
                }
                if (!z2) {
                    G("Unterminated comment");
                    throw null;
                }
                i3 = this.f1717d + 2;
            }
            D();
        }
    }

    public void v() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF != 7) {
            throw new IllegalStateException("Expected null but was " + l.e(z()) + o());
        }
        this.f1721h = 0;
        int[] iArr = this.f1728o;
        int i2 = this.f1726m - 1;
        iArr[i2] = iArr[i2] + 1;
    }

    public final String w(char c2) throws c {
        StringBuilder sb = null;
        while (true) {
            int i2 = this.f1717d;
            int i3 = this.f1718e;
            int i4 = i2;
            while (true) {
                char[] cArr = this.f1716c;
                if (i4 >= i3) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max((i4 - i2) * 2, 16));
                    }
                    sb.append(cArr, i2, i4 - i2);
                    this.f1717d = i4;
                    if (i(1)) {
                        break;
                    }
                    G("Unterminated string");
                    throw null;
                }
                int i5 = i4 + 1;
                char c3 = cArr[i4];
                if (c3 == c2) {
                    this.f1717d = i5;
                    int i6 = (i5 - i2) - 1;
                    if (sb == null) {
                        return new String(cArr, i2, i6);
                    }
                    sb.append(cArr, i2, i6);
                    return sb.toString();
                }
                if (c3 == '\\') {
                    this.f1717d = i5;
                    int i7 = (i5 - i2) - 1;
                    if (sb == null) {
                        sb = new StringBuilder(Math.max((i7 + 1) * 2, 16));
                    }
                    sb.append(cArr, i2, i7);
                    sb.append(B());
                    break;
                }
                if (c3 == '\n') {
                    this.f1719f++;
                    this.f1720g = i5;
                }
                i4 = i5;
            }
        }
    }

    public String x() throws IOException {
        String str;
        char c2;
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 10) {
            str = y();
        } else {
            if (iF == 8) {
                c2 = '\'';
            } else if (iF == 9) {
                c2 = '\"';
            } else if (iF == 11) {
                str = this.f1724k;
                this.f1724k = null;
            } else if (iF == 15) {
                str = Long.toString(this.f1722i);
            } else {
                if (iF != 16) {
                    throw new IllegalStateException("Expected a string but was " + l.e(z()) + o());
                }
                str = new String(this.f1716c, this.f1717d, this.f1723j);
                this.f1717d += this.f1723j;
            }
            str = w(c2);
        }
        this.f1721h = 0;
        int[] iArr = this.f1728o;
        int i2 = this.f1726m - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    public final String y() throws c {
        String string;
        StringBuilder sb = null;
        int i2 = 0;
        while (true) {
            int i3 = 0;
            while (true) {
                int i4 = this.f1717d;
                int i5 = i4 + i3;
                int i6 = this.f1718e;
                char[] cArr = this.f1716c;
                if (i5 < i6) {
                    char c2 = cArr[i4 + i3];
                    if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                        if (c2 != '#') {
                            if (c2 != ',') {
                                if (c2 != '/' && c2 != '=') {
                                    if (c2 != '{' && c2 != '}' && c2 != ':') {
                                        if (c2 != ';') {
                                            switch (c2) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i3++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        e();
                    }
                    i2 = i3;
                } else if (i3 >= cArr.length) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i3, 16));
                    }
                    sb.append(cArr, this.f1717d, i3);
                    this.f1717d += i3;
                    if (!i(1)) {
                    }
                } else if (!i(i3 + 1)) {
                    i2 = i3;
                }
                if (sb == null) {
                    string = new String(cArr, this.f1717d, i2);
                } else {
                    sb.append(cArr, this.f1717d, i2);
                    string = sb.toString();
                }
                this.f1717d += i2;
                return string;
            }
        }
    }

    public int z() throws IOException {
        int iF = this.f1721h;
        if (iF == 0) {
            iF = f();
        }
        switch (iF) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }
}
