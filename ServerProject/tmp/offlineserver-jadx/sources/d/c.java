package d;

import a.b0;
import a.i0;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1638a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1640c;

    public c(a.o oVar, Type type, i0 i0Var, c.t tVar) {
        this.f1639b = new w(oVar, i0Var, type);
        this.f1640c = tVar;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        Date dateB;
        Collection collection = null;
        switch (this.f1638a) {
            case 0:
                if (aVar.z() == 9) {
                    aVar.v();
                } else {
                    collection = (Collection) ((c.t) this.f1640c).a();
                    aVar.c();
                    while (aVar.m()) {
                        collection.add(((i0) this.f1639b).b(aVar));
                    }
                    aVar.g();
                }
                return collection;
            case 1:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                String strX = aVar.x();
                synchronized (((List) this.f1640c)) {
                    Iterator it = ((List) this.f1640c).iterator();
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
                    break;
                }
                return ((g) this.f1639b).a(dateB);
            default:
                Object objB = ((x) this.f1640c).f1695c.b(aVar);
                if (objB != null) {
                    Class cls = (Class) this.f1639b;
                    if (!cls.isInstance(objB)) {
                        throw new a.r("Expected a " + cls.getName() + " but was " + objB.getClass().getName() + "; at path " + aVar.l());
                    }
                }
                return objB;
        }
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        String str;
        switch (this.f1638a) {
            case 0:
                Collection collection = (Collection) obj;
                if (collection == null) {
                    bVar.k();
                    return;
                }
                bVar.d();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    ((i0) this.f1639b).c(bVar, it.next());
                }
                bVar.g();
                return;
            case 1:
                Date date = (Date) obj;
                if (date == null) {
                    bVar.k();
                    return;
                }
                DateFormat dateFormat = (DateFormat) ((List) this.f1640c).get(0);
                synchronized (((List) this.f1640c)) {
                    str = dateFormat.format(date);
                    break;
                }
                bVar.r(str);
                return;
            default:
                ((x) this.f1640c).f1695c.c(bVar, obj);
                return;
        }
    }

    public final String toString() {
        StringBuilder sb;
        String simpleName;
        switch (this.f1638a) {
            case 1:
                DateFormat dateFormat = (DateFormat) ((List) this.f1640c).get(0);
                if (dateFormat instanceof SimpleDateFormat) {
                    sb = new StringBuilder("DefaultDateTypeAdapter(");
                    simpleName = ((SimpleDateFormat) dateFormat).toPattern();
                } else {
                    sb = new StringBuilder("DefaultDateTypeAdapter(");
                    simpleName = dateFormat.getClass().getSimpleName();
                }
                sb.append(simpleName);
                sb.append(')');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public c(x xVar, Class cls) {
        this.f1640c = xVar;
        this.f1639b = cls;
    }
}
