package q;

import android.content.Context;
import android.content.SharedPreferences;
import com.sgscq.vpn.cloud.b0;
import com.sgscq.vpn.p5;
import java.net.Proxy;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1929a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile com.sgscq.vpn.config.f f1930b = com.sgscq.vpn.config.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile b0 f1931c;

    public static void a(Context context) {
        if (f1931c != null) {
            return;
        }
        synchronized (f1929a) {
            if (f1931c != null) {
                return;
            }
            b(new b0(4, context.getApplicationContext()));
        }
    }

    public static void b(b0 b0Var) {
        com.sgscq.vpn.config.f fVarB;
        i.h();
        f1931c = b0Var;
        SharedPreferences sharedPreferences = b0Var.f287b;
        if (b0Var.k()) {
            try {
                fVarB = com.sgscq.vpn.config.f.b(sharedPreferences.getString("service_proxy_type", "http"), sharedPreferences.getString("service_proxy_host", ""), sharedPreferences.getString("service_proxy_port", ""));
            } catch (IllegalArgumentException unused) {
                fVarB = com.sgscq.vpn.config.f.a();
            }
        } else {
            fVarB = com.sgscq.vpn.config.f.a();
        }
        f1930b = fVarB;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    public static Proxy c(URL url) {
        boolean z;
        com.sgscq.vpn.config.f fVar = f1930b;
        if (fVar.f569a) {
            String host = url.getHost();
            if (com.sgscq.vpn.config.f.c(host, "sgscq.com") || com.sgscq.vpn.config.f.c(host, "ifdian.net")) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (z) {
            return p5.P0(fVar);
        }
        return null;
    }

    public static com.sgscq.vpn.config.f d(String str, String str2, String str3) {
        if (f1931c == null) {
            throw new IllegalStateException("代理配置尚未初始化");
        }
        com.sgscq.vpn.config.f fVarB = com.sgscq.vpn.config.f.b(str, str2, str3);
        i.h();
        f1931c.f287b.edit().putBoolean("service_proxy_enabled", true).putString("service_proxy_type", fVarB.f570b).putString("service_proxy_host", fVarB.f571c).putString("service_proxy_port", String.valueOf(fVarB.f572d)).apply();
        f1930b = fVarB;
        return fVarB;
    }
}
