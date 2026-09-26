package d;

import a.b0;
import a.i0;
import com.sgscq.vpn.p5;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class e extends i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f1643b = new a(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1644a;

    public e() {
        ArrayList arrayList = new ArrayList();
        this.f1644a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (c.l.f59a >= 9) {
            arrayList.add(p5.Z(2, 2));
        }
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        Date dateB;
        if (aVar.z() == 9) {
            aVar.v();
            return null;
        }
        String strX = aVar.x();
        synchronized (this.f1644a) {
            Iterator it = this.f1644a.iterator();
            while (it.hasNext()) {
                try {
                    dateB = ((DateFormat) it.next()).parse(strX);
                } catch (ParseException unused) {
                }
            }
            try {
                dateB = e.a.b(strX, new ParsePosition(0));
            } catch (ParseException e2) {
                StringBuilder sbB = b0.b("Failed parsing '", strX, "' as Date; at path ");
                sbB.append(aVar.l());
                throw new a.r(sbB.toString(), e2);
            }
        }
        return dateB;
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        String str;
        Date date = (Date) obj;
        if (date == null) {
            bVar.k();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f1644a.get(0);
        synchronized (this.f1644a) {
            str = dateFormat.format(date);
        }
        bVar.r(str);
    }
}
