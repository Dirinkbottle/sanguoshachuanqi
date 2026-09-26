package d;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.cloud.m0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final class d implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c.i f1642b;

    public /* synthetic */ d(c.i iVar, int i2) {
        this.f1641a = i2;
        this.f1642b = iVar;
    }

    public static i0 b(c.i iVar, a.o oVar, TypeToken typeToken, b.a aVar) {
        i0 i0VarA;
        Object objA = iVar.b(TypeToken.get(aVar.value())).a();
        boolean zNullSafe = aVar.nullSafe();
        if (objA instanceof i0) {
            i0VarA = (i0) objA;
        } else {
            if (!(objA instanceof j0)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objA.getClass().getName() + " as a @JsonAdapter for " + typeToken.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            i0VarA = ((j0) objA).a(oVar, typeToken);
        }
        return (i0VarA == null || !zNullSafe) ? i0VarA : i0VarA.a();
    }

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        int i2 = this.f1641a;
        c.i iVar = this.f1642b;
        switch (i2) {
            case 0:
                Type type = typeToken.getType();
                Class rawType = typeToken.getRawType();
                if (!Collection.class.isAssignableFrom(rawType)) {
                    return null;
                }
                Type typeA1 = m0.a1(type, rawType, Collection.class);
                Type type2 = typeA1 instanceof ParameterizedType ? ((ParameterizedType) typeA1).getActualTypeArguments()[0] : Object.class;
                return new c(oVar, type2, oVar.f(TypeToken.get(type2)), iVar.b(typeToken));
            default:
                b.a aVar = (b.a) typeToken.getRawType().getAnnotation(b.a.class);
                if (aVar == null) {
                    return null;
                }
                return b(iVar, oVar, typeToken, aVar);
        }
    }
}
