package a;

import com.sgscq.vpn.DebugSparringConfig$SkillTypeResolver;
import com.sgscq.vpn.DebugSparringConfigActivity;
import com.sgscq.vpn.cloud.m0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class a implements c.t, DebugSparringConfig$SkillTypeResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f0a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1b;

    public a(int i2) {
        this.f0a = i2;
        if (i2 != 6) {
            this.f1b = new ConcurrentHashMap();
        } else {
            this.f1b = new AtomicBoolean();
        }
    }

    public static boolean d(String str) {
        return str == null || str.trim().isEmpty();
    }

    @Override // c.t
    public final Object a() {
        Object obj = this.f1b;
        try {
            return ((Constructor) obj).newInstance(new Object[0]);
        } catch (IllegalAccessException e2) {
            m0 m0Var = f.c.f1702a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("Failed to invoke constructor '" + f.c.b((Constructor) obj) + "' with no args", e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException("Failed to invoke constructor '" + f.c.b((Constructor) obj) + "' with no args", e4.getCause());
        }
    }

    public final void b(String str, String str2) {
        if (d(str) || d(str2)) {
            return;
        }
        ((Map) this.f1b).put(str2, str);
    }

    public final boolean c(String str, String str2) {
        if (d(str) || d(str2)) {
            return false;
        }
        return str.equals(((Map) this.f1b).get(str2));
    }

    @Override // com.sgscq.vpn.DebugSparringConfig$SkillTypeResolver
    public final String resolve(String str) {
        DebugSparringConfigActivity debugSparringConfigActivity = (DebugSparringConfigActivity) this.f1b;
        float[] fArr = DebugSparringConfigActivity.f97f;
        debugSparringConfigActivity.getClass();
        throw null;
    }

    @Override // com.sgscq.vpn.DebugSparringConfig$SkillTypeResolver
    public final String resolveNative(String str) {
        DebugSparringConfigActivity debugSparringConfigActivity = (DebugSparringConfigActivity) this.f1b;
        float[] fArr = DebugSparringConfigActivity.f97f;
        debugSparringConfigActivity.getClass();
        throw null;
    }

    public final String toString() {
        switch (this.f0a) {
            case 0:
                return ((Field) this.f1b).toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ a(Object obj, int i2) {
        this.f0a = i2;
        this.f1b = obj;
    }

    public a(ArrayList arrayList) {
        this.f0a = 5;
        this.f1b = Collections.unmodifiableList(new ArrayList(arrayList));
    }
}
