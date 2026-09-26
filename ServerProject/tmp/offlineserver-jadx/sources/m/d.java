package m;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l.b f1799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1802d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f1803e;

    public d(e eVar, l.b bVar, int i2, int i3, int i4) {
        this.f1803e = eVar;
        this.f1799a = bVar;
        this.f1800b = i2;
        this.f1801c = i3;
        this.f1802d = i4;
    }

    public final int a() {
        l.b bVar = l.b.BYTE;
        l.b bVar2 = this.f1799a;
        int i2 = this.f1802d;
        if (bVar2 != bVar) {
            return i2;
        }
        f fVar = (f) this.f1803e.f1807d;
        j.c cVar = (j.c) fVar.f1810c;
        String str = (String) fVar.f1809b;
        int i3 = this.f1800b;
        return str.substring(i3, i2 + i3).getBytes(cVar.f1758a[this.f1801c].charset()).length;
    }

    public final String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        l.b bVar = this.f1799a;
        sb.append(bVar);
        sb.append('(');
        l.b bVar2 = l.b.ECI;
        e eVar = this.f1803e;
        if (bVar == bVar2) {
            string = ((j.c) ((f) eVar.f1807d).f1810c).f1758a[this.f1801c].charset().displayName();
        } else {
            String str = (String) ((f) eVar.f1807d).f1809b;
            int i2 = this.f1802d;
            int i3 = this.f1800b;
            String strSubstring = str.substring(i3, i2 + i3);
            StringBuilder sb2 = new StringBuilder();
            for (int i4 = 0; i4 < strSubstring.length(); i4++) {
                sb2.append((strSubstring.charAt(i4) < ' ' || strSubstring.charAt(i4) > '~') ? '.' : strSubstring.charAt(i4));
            }
            string = sb2.toString();
        }
        sb.append(string);
        sb.append(')');
        return sb.toString();
    }
}
