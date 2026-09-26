package d;

import a.i0;
import a.j0;
import com.google.gson.reflect.TypeToken;
import com.sgscq.vpn.cloud.m0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public final class m implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c.i f1656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1657b = false;

    public m(c.i iVar) {
        this.f1656a = iVar;
    }

    @Override // a.j0
    public final i0 a(a.o oVar, TypeToken typeToken) {
        Type[] actualTypeArguments;
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        if (!Map.class.isAssignableFrom(rawType)) {
            return null;
        }
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type typeA1 = m0.a1(type, rawType, Map.class);
            actualTypeArguments = typeA1 instanceof ParameterizedType ? ((ParameterizedType) typeA1).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        return new l(this, oVar, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? a0.f1620c : oVar.f(TypeToken.get(type2)), actualTypeArguments[1], oVar.f(TypeToken.get(actualTypeArguments[1])), this.f1656a.b(typeToken));
    }
}
