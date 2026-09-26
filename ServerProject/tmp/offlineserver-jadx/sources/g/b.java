package g;

import a.b0;
import a.i0;
import a.r;
import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class b extends i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d.a f1705b = new d.a(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f1706a = new SimpleDateFormat("hh:mm:ss a");

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        Time time;
        if (aVar.z() == 9) {
            aVar.v();
            return null;
        }
        String strX = aVar.x();
        try {
            synchronized (this) {
                try {
                    time = new Time(this.f1706a.parse(strX).getTime());
                } catch (Throwable th) {
                    throw th;
                }
            }
            return time;
        } catch (ParseException e2) {
            StringBuilder sbB = b0.b("Failed parsing '", strX, "' as SQL Time; at path ");
            sbB.append(aVar.l());
            throw new r(sbB.toString(), e2);
        }
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        String str;
        Time time = (Time) obj;
        if (time == null) {
            bVar.k();
            return;
        }
        synchronized (this) {
            str = this.f1706a.format((Date) time);
        }
        bVar.r(str);
    }
}
