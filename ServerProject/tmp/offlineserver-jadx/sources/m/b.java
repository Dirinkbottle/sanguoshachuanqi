package m;

import com.sgscq.vpn.handler.d1;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f1791a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f1792b = StandardCharsets.ISO_8859_1;

    public static void a(String str, l.b bVar, j.a aVar, Charset charset) {
        int i2;
        int iOrdinal = bVar.ordinal();
        int i3 = 0;
        if (iOrdinal == 1) {
            int length = str.length();
            while (i3 < length) {
                int iCharAt = str.charAt(i3) - '0';
                int i4 = i3 + 2;
                if (i4 < length) {
                    aVar.b(((str.charAt(i3 + 1) - '0') * 10) + (iCharAt * 100) + (str.charAt(i4) - '0'), 10);
                    i3 += 3;
                } else {
                    i3++;
                    if (i3 < length) {
                        aVar.b((iCharAt * 10) + (str.charAt(i3) - '0'), 7);
                        i3 = i4;
                    } else {
                        aVar.b(iCharAt, 4);
                    }
                }
            }
            return;
        }
        if (iOrdinal == 2) {
            int length2 = str.length();
            while (i3 < length2) {
                char cCharAt = str.charAt(i3);
                int[] iArr = f1791a;
                int i5 = cCharAt < '`' ? iArr[cCharAt] : -1;
                if (i5 == -1) {
                    throw new i.b();
                }
                int i6 = i3 + 1;
                if (i6 < length2) {
                    char cCharAt2 = str.charAt(i6);
                    int i7 = cCharAt2 < '`' ? iArr[cCharAt2] : -1;
                    if (i7 == -1) {
                        throw new i.b();
                    }
                    aVar.b((i5 * 45) + i7, 11);
                    i3 += 2;
                } else {
                    aVar.b(i5, 6);
                    i3 = i6;
                }
            }
            return;
        }
        if (iOrdinal == 4) {
            byte[] bytes = str.getBytes(charset);
            int length3 = bytes.length;
            while (i3 < length3) {
                aVar.b(bytes[i3], 8);
                i3++;
            }
            return;
        }
        if (iOrdinal != 6) {
            throw new i.b("Invalid mode: " + bVar);
        }
        Charset charset2 = j.d.f1761b;
        if (charset2 == null) {
            throw new i.b("SJIS Charset not supported on this platform");
        }
        byte[] bytes2 = str.getBytes(charset2);
        if (bytes2.length % 2 != 0) {
            throw new i.b("Kanji byte size not even");
        }
        int length4 = bytes2.length - 1;
        while (i3 < length4) {
            int i8 = ((bytes2[i3] & 255) << 8) | (bytes2[i3 + 1] & 255);
            int i9 = 33088;
            if (i8 >= 33088 && i8 <= 40956) {
                i2 = i8 - i9;
            } else if (i8 < 57408 || i8 > 60351) {
                i2 = -1;
            } else {
                i9 = 49472;
                i2 = i8 - i9;
            }
            if (i2 == -1) {
                throw new i.b("Invalid byte sequence");
            }
            aVar.b(((i2 >> 8) * 192) + (i2 & 255), 13);
            i3 += 2;
        }
    }

    public static boolean b(String str) {
        byte[] bytes = str.getBytes(j.d.f1761b);
        int length = bytes.length;
        if (length % 2 != 0) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2 += 2) {
            int i3 = bytes[i2] & 255;
            if ((i3 < 129 || i3 > 159) && (i3 < 224 || i3 > 235)) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(int i2, l.d dVar, l.a aVar) {
        int i3 = dVar.f1788c;
        d1 d1Var = dVar.f1787b[aVar.ordinal()];
        int i4 = 0;
        for (l.c cVar : (l.c[]) d1Var.f808b) {
            i4 += cVar.f1783a;
        }
        return i3 - (i4 * d1Var.f807a) >= (i2 + 7) / 8;
    }
}
