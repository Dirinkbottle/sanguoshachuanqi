package g;

import java.sql.Date;
import java.sql.Timestamp;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f1710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d.a f1711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d.a f1712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d.a f1713d;

    static {
        boolean z;
        d.a aVar;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        f1710a = z;
        if (z) {
            new d(Date.class, 0);
            new d(Timestamp.class, 1);
            f1711b = a.f1703b;
            f1712c = b.f1705b;
            aVar = c.f1707b;
        } else {
            aVar = null;
            f1711b = null;
            f1712c = null;
        }
        f1713d = aVar;
    }
}
