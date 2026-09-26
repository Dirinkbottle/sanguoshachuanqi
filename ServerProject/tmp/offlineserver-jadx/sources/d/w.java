package d;

import a.i0;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.security.AccessController;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class w extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1692d;

    public w(a.o oVar, i0 i0Var, Type type) {
        this.f1689a = 0;
        this.f1690b = oVar;
        this.f1691c = i0Var;
        this.f1692d = type;
    }

    @Override // a.i0
    public final Object b(h.a aVar) throws IOException {
        int i2 = this.f1689a;
        Object obj = this.f1691c;
        switch (i2) {
            case 0:
                return ((i0) obj).b(aVar);
            default:
                if (aVar.z() == 9) {
                    aVar.v();
                    return null;
                }
                String strX = aVar.x();
                Enum r0 = (Enum) ((Map) this.f1690b).get(strX);
                return r0 == null ? (Enum) ((Map) obj).get(strX) : r0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    @Override // a.i0
    public final void c(h.b bVar, Object obj) throws IOException {
        int i2 = this.f1689a;
        Object obj2 = this.f1692d;
        switch (i2) {
            case 0:
                i0 i0Var = (i0) this.f1691c;
                Type type = (Type) obj2;
                Type type2 = (obj == null || !((type instanceof Class) || (type instanceof TypeVariable))) ? type : obj.getClass();
                if (type2 != type) {
                    i0 i0VarF = ((a.o) this.f1690b).f(TypeToken.get(type2));
                    if (i0VarF instanceof r) {
                        i0 i0Var2 = i0Var;
                        while (i0Var2 instanceof v) {
                            i0 i0Var3 = ((a.n) ((v) i0Var2)).f14a;
                            if (i0Var3 == null) {
                                throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
                            }
                            if (i0Var3 != i0Var2) {
                                i0Var2 = i0Var3;
                            } else if (i0Var2 instanceof r) {
                                i0Var = i0VarF;
                            }
                        }
                        if (i0Var2 instanceof r) {
                            i0Var = i0VarF;
                        }
                    } else {
                        i0Var = i0VarF;
                    }
                }
                i0Var.c(bVar, obj);
                return;
            default:
                Enum r6 = (Enum) obj;
                bVar.r(r6 == null ? null : (String) ((Map) obj2).get(r6));
                return;
        }
    }

    public w(Class cls) {
        this.f1689a = 1;
        this.f1690b = new HashMap();
        this.f1691c = new HashMap();
        this.f1692d = new HashMap();
        try {
            for (Field field : (Field[]) AccessController.doPrivileged(new z(cls))) {
                Enum r4 = (Enum) field.get(null);
                String strName = r4.name();
                String string = r4.toString();
                b.b bVar = (b.b) field.getAnnotation(b.b.class);
                Object obj = this.f1690b;
                if (bVar != null) {
                    strName = bVar.value();
                    for (String str : bVar.alternate()) {
                        ((Map) obj).put(str, r4);
                    }
                }
                ((Map) obj).put(strName, r4);
                ((Map) this.f1691c).put(string, r4);
                ((Map) this.f1692d).put(r4, strName);
            }
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        }
    }
}
