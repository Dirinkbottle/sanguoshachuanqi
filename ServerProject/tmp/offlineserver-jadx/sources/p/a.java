package p;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f1861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1862g;

    public a(String str, String str2, String str3, String str4, long j2, long j3, int i2) {
        this.f1856a = str;
        this.f1857b = str2;
        this.f1858c = str3;
        this.f1859d = str4;
        this.f1860e = j2;
        this.f1861f = j3;
        this.f1862g = i2;
    }

    public final boolean a(long j2) {
        return j2 >= this.f1860e && j2 < this.f1861f;
    }
}
