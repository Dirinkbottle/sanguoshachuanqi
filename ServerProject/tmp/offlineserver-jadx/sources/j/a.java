package j;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1749c = new int[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f1750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1751b;

    public a() {
        this.f1751b = 0;
        this.f1750a = f1749c;
    }

    public final void a(boolean z) {
        c(this.f1751b + 1);
        if (z) {
            int[] iArr = this.f1750a;
            int i2 = this.f1751b;
            int i3 = i2 / 32;
            iArr[i3] = (1 << (i2 & 31)) | iArr[i3];
        }
        this.f1751b++;
    }

    public final void b(int i2, int i3) {
        if (i3 < 0 || i3 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        int i4 = this.f1751b;
        c(i4 + i3);
        for (int i5 = i3 - 1; i5 >= 0; i5--) {
            if (((1 << i5) & i2) != 0) {
                int[] iArr = this.f1750a;
                int i6 = i4 / 32;
                iArr[i6] = iArr[i6] | (1 << (i4 & 31));
            }
            i4++;
        }
        this.f1751b = i4;
    }

    public final void c(int i2) {
        if (i2 > this.f1750a.length * 32) {
            int[] iArr = new int[(((int) Math.ceil(i2 / 0.75f)) + 31) / 32];
            int[] iArr2 = this.f1750a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            this.f1750a = iArr;
        }
    }

    public final Object clone() {
        return new a((int[]) this.f1750a.clone(), this.f1751b);
    }

    public final boolean d(int i2) {
        return ((1 << (i2 & 31)) & this.f1750a[i2 / 32]) != 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f1751b == aVar.f1751b && Arrays.equals(this.f1750a, aVar.f1750a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1750a) + (this.f1751b * 31);
    }

    public final String toString() {
        int i2 = this.f1751b;
        StringBuilder sb = new StringBuilder((i2 / 8) + i2 + 1);
        for (int i3 = 0; i3 < this.f1751b; i3++) {
            if ((i3 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(d(i3) ? 'X' : '.');
        }
        return sb.toString();
    }

    public a(int[] iArr, int i2) {
        this.f1750a = iArr;
        this.f1751b = i2;
    }
}
