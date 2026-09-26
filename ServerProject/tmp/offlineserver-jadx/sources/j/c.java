package j;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList f1757c = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharsetEncoder[] f1758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1759b;

    static {
        String[] strArr = {"IBM437", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "ISO-8859-16", "windows-1250", "windows-1251", "windows-1252", "windows-1256", "Shift_JIS"};
        for (int i2 = 0; i2 < 20; i2++) {
            String str = strArr[i2];
            if (((b) b.f1753d.get(str)) != null) {
                try {
                    f1757c.add(Charset.forName(str).newEncoder());
                } catch (UnsupportedCharsetException unused) {
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(String str, Charset charset) {
        int i2;
        boolean z;
        ArrayList arrayList = new ArrayList();
        arrayList.add(StandardCharsets.ISO_8859_1.newEncoder());
        int i3 = 0;
        boolean z2 = charset != null && charset.name().startsWith("UTF");
        int i4 = 0;
        while (true) {
            i2 = -1;
            if (i4 >= str.length()) {
                break;
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                CharsetEncoder charsetEncoder = (CharsetEncoder) it.next();
                char cCharAt = str.charAt(i4);
                if (cCharAt == -1 || charsetEncoder.canEncode(cCharAt)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                for (CharsetEncoder charsetEncoder2 : f1757c) {
                    if (charsetEncoder2.canEncode(str.charAt(i4))) {
                        arrayList.add(charsetEncoder2);
                        z = true;
                        break;
                    }
                }
            }
            if (!z) {
                z2 = true;
            }
            i4++;
        }
        if (arrayList.size() != 1 || z2) {
            this.f1758a = new CharsetEncoder[arrayList.size() + 2];
            Iterator it2 = arrayList.iterator();
            int i5 = 0;
            while (it2.hasNext()) {
                this.f1758a[i5] = (CharsetEncoder) it2.next();
                i5++;
            }
            this.f1758a[i5] = StandardCharsets.UTF_8.newEncoder();
            this.f1758a[i5 + 1] = StandardCharsets.UTF_16BE.newEncoder();
        } else {
            this.f1758a = new CharsetEncoder[]{(CharsetEncoder) arrayList.get(0)};
        }
        if (charset != null) {
            while (true) {
                CharsetEncoder[] charsetEncoderArr = this.f1758a;
                if (i3 >= charsetEncoderArr.length) {
                    break;
                }
                if (charsetEncoderArr[i3] != null && charset.name().equals(this.f1758a[i3].charset().name())) {
                    i2 = i3;
                    break;
                }
                i3++;
            }
        }
        this.f1759b = i2;
    }
}
