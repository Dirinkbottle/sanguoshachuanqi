package g;

import a.b0;
import a.i0;
import a.r;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class a extends i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d.a f1703b = new d.a(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f1704a = new SimpleDateFormat("MMM d, yyyy");

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        Date date;
        if (aVar.z() == 9) {
            aVar.v();
            return null;
        }
        String strX = aVar.x();
        try {
            synchronized (this) {
                date = this.f1704a.parse(strX);
            }
            return new java.sql.Date(date.getTime());
        } catch (ParseException e2) {
            StringBuilder sbB = b0.b("Failed parsing '", strX, "' as SQL Date; at path ");
            sbB.append(aVar.l());
            throw new r(sbB.toString(), e2);
        }
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        String str;
        java.sql.Date date = (java.sql.Date) obj;
        if (date == null) {
            bVar.k();
            return;
        }
        synchronized (this) {
            str = this.f1704a.format((Date) date);
        }
        bVar.r(str);
    }
}
