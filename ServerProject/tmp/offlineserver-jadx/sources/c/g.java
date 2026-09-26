package c;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public final class g implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f42a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Type f43b;

    public /* synthetic */ g(Type type, int i2) {
        this.f42a = i2;
        this.f43b = type;
    }

    @Override // c.t
    public final Object a() {
        int i2 = this.f42a;
        Type type = this.f43b;
        switch (i2) {
            case 0:
                if (!(type instanceof ParameterizedType)) {
                    throw new a.r("Invalid EnumSet type: " + type.toString());
                }
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return EnumSet.noneOf((Class) type2);
                }
                throw new a.r("Invalid EnumSet type: " + type.toString());
            default:
                if (!(type instanceof ParameterizedType)) {
                    throw new a.r("Invalid EnumMap type: " + type.toString());
                }
                Type type3 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type3 instanceof Class) {
                    return new EnumMap((Class) type3);
                }
                throw new a.r("Invalid EnumMap type: " + type.toString());
        }
    }
}
