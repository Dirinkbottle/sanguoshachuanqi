package c;

/* JADX INFO: loaded from: classes.dex */
public final class f implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f41b;

    public /* synthetic */ f(String str, int i2) {
        this.f41b = i2;
        this.f40a = str;
    }

    @Override // c.t
    public Object a() {
        int i2 = this.f41b;
        String str = this.f40a;
        switch (i2) {
            case 0:
                throw new a.r(str);
            default:
                throw new a.r(str);
        }
    }
}
