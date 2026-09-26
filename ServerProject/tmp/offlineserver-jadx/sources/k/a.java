package k;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f1762g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f1763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f1764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f1765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1768f;

    static {
        new a(4201, 4096, 1);
        new a(1033, 1024, 1);
        new a(67, 64, 1);
        new a(19, 16, 1);
        f1762g = new a(285, 256, 0);
        new a(301, 256, 1);
    }

    public a(int i2, int i3, int i4) {
        this.f1767e = i2;
        this.f1766d = i3;
        this.f1768f = i4;
        this.f1763a = new int[i3];
        this.f1764b = new int[i3];
        int i5 = 1;
        int i6 = 1;
        for (int i7 = 0; i7 < i3; i7++) {
            this.f1763a[i7] = i6;
            i6 *= 2;
            if (i6 >= i3) {
                i6 = (i6 ^ i2) & (i3 - 1);
            }
        }
        for (int i8 = 0; i8 < i3 - 1; i8++) {
            this.f1764b[this.f1763a[i8]] = i8;
        }
        this.f1765c = new b(this, new int[]{0});
        int[] iArr = {1};
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            return;
        }
        while (i5 < length && iArr[i5] == 0) {
            i5++;
        }
        if (i5 == length) {
            return;
        }
        int[] iArr2 = new int[length - i5];
        System.arraycopy(iArr, i5, iArr2, 0, iArr2.length);
    }

    public final int a(int i2, int i3) {
        if (i2 == 0 || i3 == 0) {
            return 0;
        }
        int[] iArr = this.f1764b;
        return this.f1763a[(iArr[i2] + iArr[i3]) % (this.f1766d - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f1767e) + ',' + this.f1766d + ')';
    }
}
