package p;

import a.w;
import android.content.Context;
import com.sgscq.vpn.c7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f1870b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile d f1871c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a.a f1872a;

    public d(a.a aVar) {
        this.f1872a = aVar;
    }

    public static d b(Context context) {
        d dVar;
        d dVar2 = f1871c;
        if (dVar2 != null) {
            return dVar2;
        }
        synchronized (f1870b) {
            dVar = f1871c;
            if (dVar == null) {
                dVar = new d(new a.a(l.c(context), 7));
                f1871c = dVar;
            }
        }
        return dVar;
    }

    public static a c(m.e eVar, long j2) {
        if (eVar == null) {
            return null;
        }
        for (a aVar : (List) eVar.f1805b) {
            if (aVar.a(j2)) {
                return aVar;
            }
            if (aVar.f1860e > j2) {
                break;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    public final b a() {
        boolean z;
        boolean z2;
        l lVar = (l) this.f1872a.f1b;
        b bVar = lVar.f1891n;
        long jC = ((com.sgscq.vpn.k) lVar.f1880c).c();
        if (bVar != null && !lVar.f1889l) {
            switch (((w) lVar.f1882e).f29a) {
                case 18:
                    z2 = true;
                    break;
                default:
                    z2 = c7.f254i;
                    break;
            }
            z = !z2 && bVar.f1865c > jC;
        }
        if (z) {
            return ((l) this.f1872a.f1b).f1891n;
        }
        return null;
    }

    public final List d(long j2) {
        b bVarA = a();
        a.a aVar = this.f1872a;
        if (bVarA == null) {
            ((l) aVar.f1b).i(j2, null);
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(2);
        HashSet hashSet = new HashSet();
        for (a aVar2 : (List) bVarA.f1867e.f1805b) {
            boolean zA = aVar2.a(j2);
            if (arrayList.size() < 2) {
                String str = aVar2.f1856a;
                if (!hashSet.contains(str) && (zA || aVar2.f1860e > j2)) {
                    hashSet.add(str);
                    arrayList.add(aVar2);
                }
            }
            if (arrayList.size() >= 2) {
                break;
            }
        }
        if (arrayList.size() < 2) {
            ((l) aVar.f1b).i(j2, null);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
