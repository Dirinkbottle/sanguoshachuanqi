package k;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f1770b;

    public b(a aVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f1769a = aVar;
        int length = iArr.length;
        int i2 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f1770b = iArr;
            return;
        }
        while (i2 < length && iArr[i2] == 0) {
            i2++;
        }
        if (i2 == length) {
            this.f1770b = new int[]{0};
            return;
        }
        int i3 = length - i2;
        int[] iArr2 = new int[i3];
        this.f1770b = iArr2;
        System.arraycopy(iArr, i2, iArr2, 0, i3);
    }

    public final b a(b bVar) {
        a aVar = bVar.f1769a;
        a aVar2 = this.f1769a;
        if (!aVar2.equals(aVar)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (b()) {
            return bVar;
        }
        if (bVar.b()) {
            return this;
        }
        int[] iArr = this.f1770b;
        int length = iArr.length;
        int[] iArr2 = bVar.f1770b;
        if (length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length2 = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length2);
        for (int i2 = length2; i2 < iArr.length; i2++) {
            iArr3[i2] = iArr2[i2 - length2] ^ iArr[i2];
        }
        return new b(aVar2, iArr3);
    }

    public final boolean b() {
        return this.f1770b[0] == 0;
    }

    public final String toString() {
        char c2;
        if (b()) {
            return "0";
        }
        int[] iArr = this.f1770b;
        StringBuilder sb = new StringBuilder((iArr.length - 1) * 8);
        int length = iArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return sb.toString();
            }
            int i2 = iArr[(iArr.length - 1) - length];
            if (i2 != 0) {
                if (i2 < 0) {
                    sb.append(length == iArr.length + (-1) ? "-" : " - ");
                    i2 = -i2;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (length == 0 || i2 != 1) {
                    a aVar = this.f1769a;
                    if (i2 == 0) {
                        aVar.getClass();
                        throw new IllegalArgumentException();
                    }
                    int i3 = aVar.f1764b[i2];
                    if (i3 == 0) {
                        c2 = '1';
                    } else if (i3 == 1) {
                        c2 = 'a';
                    } else {
                        sb.append("a^");
                        sb.append(i3);
                    }
                    sb.append(c2);
                }
                if (length != 0) {
                    if (length == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(length);
                    }
                }
            }
        }
    }
}
