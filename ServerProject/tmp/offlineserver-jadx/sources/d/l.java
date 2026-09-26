package d;

import a.i0;
import com.sgscq.vpn.p5;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class l extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f1652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f1653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c.t f1654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ m f1655d;

    public l(m mVar, a.o oVar, Type type, i0 i0Var, Type type2, i0 i0Var2, c.t tVar) {
        this.f1655d = mVar;
        this.f1652a = new w(oVar, i0Var, type);
        this.f1653b = new w(oVar, i0Var2, type2);
        this.f1654c = tVar;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        int i2;
        int iZ = aVar.z();
        if (iZ == 9) {
            aVar.v();
            return null;
        }
        Map map = (Map) this.f1654c.a();
        w wVar = this.f1653b;
        w wVar2 = this.f1652a;
        if (iZ == 1) {
            aVar.c();
            while (aVar.m()) {
                aVar.c();
                Object objB = wVar2.b(aVar);
                if (map.put(objB, wVar.b(aVar)) != null) {
                    throw new a.r("duplicate key: " + objB);
                }
                aVar.g();
            }
            aVar.g();
        } else {
            aVar.d();
            while (aVar.m()) {
                a.w.f28b.getClass();
                if (aVar instanceof i) {
                    i iVar = (i) aVar;
                    iVar.H(5);
                    Map.Entry entry = (Map.Entry) ((Iterator) iVar.J()).next();
                    iVar.L(entry.getValue());
                    iVar.L(new a.x((String) entry.getKey()));
                } else {
                    int iF = aVar.f1721h;
                    if (iF == 0) {
                        iF = aVar.f();
                    }
                    if (iF == 13) {
                        aVar.f1721h = 9;
                    } else {
                        if (iF == 12) {
                            i2 = 8;
                        } else {
                            if (iF != 14) {
                                throw new IllegalStateException("Expected a name but was " + com.sgscq.vpn.handler.l.e(aVar.z()) + aVar.o());
                            }
                            i2 = 10;
                        }
                        aVar.f1721h = i2;
                    }
                }
                Object objB2 = wVar2.b(aVar);
                if (map.put(objB2, wVar.b(aVar)) != null) {
                    throw new a.r("duplicate key: " + objB2);
                }
            }
            aVar.h();
        }
        return map;
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        String strI;
        Map map = (Map) obj;
        if (map == null) {
            bVar.k();
            return;
        }
        boolean z = this.f1655d.f1657b;
        w wVar = this.f1653b;
        if (z) {
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i2 = 0;
            boolean z2 = false;
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                w wVar2 = this.f1652a;
                wVar2.getClass();
                try {
                    k kVar = new k();
                    wVar2.c(kVar, key);
                    ArrayList arrayList3 = kVar.f1649m;
                    if (!arrayList3.isEmpty()) {
                        throw new IllegalStateException("Expected one JSON element but was " + arrayList3);
                    }
                    a.q qVar = kVar.f1651o;
                    arrayList.add(qVar);
                    arrayList2.add(entry.getValue());
                    qVar.getClass();
                    z2 |= (qVar instanceof a.p) || (qVar instanceof a.t);
                } catch (IOException e2) {
                    throw new a.r(e2);
                }
            }
            if (z2) {
                bVar.d();
                int size = arrayList.size();
                while (i2 < size) {
                    bVar.d();
                    p5.B1((a.q) arrayList.get(i2), bVar);
                    wVar.c(bVar, arrayList2.get(i2));
                    bVar.g();
                    i2++;
                }
                bVar.g();
                return;
            }
            bVar.e();
            int size2 = arrayList.size();
            while (i2 < size2) {
                a.q qVar2 = (a.q) arrayList.get(i2);
                qVar2.getClass();
                if (qVar2 instanceof a.x) {
                    a.x xVarG = qVar2.g();
                    Serializable serializable = xVarG.f30a;
                    if (serializable instanceof Number) {
                        strI = String.valueOf(xVarG.j());
                    } else if (serializable instanceof Boolean) {
                        strI = Boolean.toString(xVarG.b());
                    } else {
                        if (!(serializable instanceof String)) {
                            throw new AssertionError();
                        }
                        strI = xVarG.i();
                    }
                } else {
                    if (!(qVar2 instanceof a.s)) {
                        throw new AssertionError();
                    }
                    strI = "null";
                }
                bVar.i(strI);
                wVar.c(bVar, arrayList2.get(i2));
                i2++;
            }
        } else {
            bVar.e();
            for (Map.Entry entry2 : map.entrySet()) {
                bVar.i(String.valueOf(entry2.getKey()));
                wVar.c(bVar, entry2.getValue());
            }
        }
        bVar.h();
    }
}
