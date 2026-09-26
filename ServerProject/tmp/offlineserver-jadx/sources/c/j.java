package c;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class j extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i0 f50a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f51b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f52c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a.o f53d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TypeToken f54e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ k f55f;

    public j(k kVar, boolean z, boolean z2, a.o oVar, TypeToken typeToken) {
        this.f55f = kVar;
        this.f51b = z;
        this.f52c = z2;
        this.f53d = oVar;
        this.f54e = typeToken;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        if (this.f51b) {
            aVar.F();
            return null;
        }
        i0 i0Var = this.f50a;
        if (i0Var == null) {
            a.o oVar = this.f53d;
            List list = oVar.f19e;
            j0 j0Var = this.f55f;
            if (!list.contains(j0Var)) {
                j0Var = oVar.f18d;
            }
            Iterator it = list.iterator();
            boolean z = false;
            while (true) {
                boolean zHasNext = it.hasNext();
                TypeToken typeToken = this.f54e;
                if (!zHasNext) {
                    throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
                }
                j0 j0Var2 = (j0) it.next();
                if (z) {
                    i0 i0VarA = j0Var2.a(oVar, typeToken);
                    if (i0VarA != null) {
                        this.f50a = i0VarA;
                        i0Var = i0VarA;
                    }
                } else if (j0Var2 == j0Var) {
                    z = true;
                }
            }
        }
        return i0Var.b(aVar);
    }

    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        if (this.f52c) {
            bVar.k();
            return;
        }
        i0 i0Var = this.f50a;
        if (i0Var == null) {
            a.o oVar = this.f53d;
            List list = oVar.f19e;
            j0 j0Var = this.f55f;
            if (!list.contains(j0Var)) {
                j0Var = oVar.f18d;
            }
            Iterator it = list.iterator();
            boolean z = false;
            while (true) {
                boolean zHasNext = it.hasNext();
                TypeToken typeToken = this.f54e;
                if (!zHasNext) {
                    throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
                }
                j0 j0Var2 = (j0) it.next();
                if (z) {
                    i0 i0VarA = j0Var2.a(oVar, typeToken);
                    if (i0VarA != null) {
                        this.f50a = i0VarA;
                        i0Var = i0VarA;
                    }
                } else if (j0Var2 == j0Var) {
                    z = true;
                }
            }
        }
        i0Var.c(bVar, obj);
    }
}
