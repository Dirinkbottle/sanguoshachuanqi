package m;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l.b f1793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1796d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f1797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1798f;

    public c(f fVar, l.b bVar, int i2, int i3, int i4, c cVar, l.d dVar) {
        this.f1793a = bVar;
        this.f1794b = i2;
        l.b bVar2 = l.b.BYTE;
        int i5 = (bVar == bVar2 || cVar == null) ? i3 : cVar.f1795c;
        this.f1795c = i5;
        this.f1796d = i4;
        this.f1797e = cVar;
        boolean z = false;
        int iA = cVar != null ? cVar.f1798f : 0;
        if ((bVar == bVar2 && cVar == null && i5 != 0) || (cVar != null && i5 != cVar.f1795c)) {
            z = true;
        }
        iA = (cVar == null || bVar != cVar.f1793a || z) ? iA + bVar.a(dVar) + 4 : iA;
        int iOrdinal = bVar.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                iA += i4 != 1 ? 11 : 6;
            } else if (iOrdinal == 4) {
                iA += ((String) fVar.f1809b).substring(i2, i4 + i2).getBytes(((j.c) fVar.f1810c).f1758a[i3].charset()).length * 8;
                if (z) {
                    iA += 12;
                }
            } else if (iOrdinal == 6) {
                iA += 13;
            }
        } else {
            iA += i4 != 1 ? i4 == 2 ? 7 : 10 : 4;
        }
        this.f1798f = iA;
    }
}
