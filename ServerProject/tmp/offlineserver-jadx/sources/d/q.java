package d;

import a.i0;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Field f1666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1667c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1669e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f1670f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Method f1671g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f1672h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ i0 f1673i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ a.o f1674j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ TypeToken f1675k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ boolean f1676l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ boolean f1677m;

    public q(String str, Field field, boolean z, boolean z2, boolean z3, Method method, boolean z4, i0 i0Var, a.o oVar, TypeToken typeToken, boolean z5, boolean z6) {
        this.f1670f = z3;
        this.f1671g = method;
        this.f1672h = z4;
        this.f1673i = i0Var;
        this.f1674j = oVar;
        this.f1675k = typeToken;
        this.f1676l = z5;
        this.f1677m = z6;
        this.f1665a = str;
        this.f1666b = field;
        this.f1667c = field.getName();
        this.f1668d = z;
        this.f1669e = z2;
    }

    public final void a(h.b bVar, Object obj) throws IllegalAccessException {
        Object objInvoke;
        if (this.f1668d) {
            boolean z = this.f1670f;
            Field field = this.f1666b;
            Method method = this.f1671g;
            if (z) {
                if (method == null) {
                    u.b(obj, field);
                } else {
                    u.b(obj, method);
                }
            }
            if (method != null) {
                try {
                    objInvoke = method.invoke(obj, new Object[0]);
                } catch (InvocationTargetException e2) {
                    throw new a.r(com.sgscq.vpn.handler.l.a("Accessor ", f.c.d(method, false), " threw exception"), e2.getCause());
                }
            } else {
                objInvoke = field.get(obj);
            }
            if (objInvoke == obj) {
                return;
            }
            bVar.i(this.f1665a);
            boolean z2 = this.f1672h;
            i0 wVar = this.f1673i;
            if (!z2) {
                wVar = new w(this.f1674j, wVar, this.f1675k.getType());
            }
            wVar.c(bVar, objInvoke);
        }
    }
}
