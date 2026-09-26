package g;

import a.i0;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class c extends i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d.a f1707b = new d.a(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i0 f1708a;

    public c(i0 i0Var) {
        this.f1708a = i0Var;
    }

    @Override // a.i0
    public final Object b(h.a aVar) {
        Date date = (Date) this.f1708a.b(aVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) {
        this.f1708a.c(bVar, (Timestamp) obj);
    }
}
