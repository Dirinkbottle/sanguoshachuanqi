package d;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.cloud.m0;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class a implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1617a;

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        switch (this.f1617a) {
            case 0:
                Type type = typeToken.getType();
                boolean z = type instanceof GenericArrayType;
                if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
                    return null;
                }
                Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
                return new b(oVar, oVar.f(TypeToken.get(genericComponentType)), m0.Y0(genericComponentType));
            case 1:
                if (typeToken.getRawType() == Date.class) {
                    return new e();
                }
                return null;
            case 2:
                Class rawType = typeToken.getRawType();
                if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                    return null;
                }
                if (!rawType.isEnum()) {
                    rawType = rawType.getSuperclass();
                }
                return new w(rawType);
            case 3:
                if (typeToken.getRawType() == java.sql.Date.class) {
                    return new g.a();
                }
                return null;
            case 4:
                if (typeToken.getRawType() == Time.class) {
                    return new g.b();
                }
                return null;
            default:
                if (typeToken.getRawType() != Timestamp.class) {
                    return null;
                }
                oVar.getClass();
                return new g.c(oVar.f(TypeToken.get(Date.class)));
        }
    }
}
