package o;

import android.content.Context;
import com.sgscq.battle.api.BattleRuntimeStatus;
import com.sgscq.vpn.battle.runtime.BattleOfflineEnvelope;
import com.sgscq.vpn.cloud.a0;
import com.sgscq.vpn.e0;
import com.sgscq.vpn.e3;
import com.sgscq.vpn.f2;
import com.sgscq.vpn.y0;
import com.sgscq.vpn.z2;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLHandshakeException;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final AtomicBoolean f1839h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicBoolean f1840i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile j f1841j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile e3 f1842k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f2 f1843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f1844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f1845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y0 f1846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final y0 f1847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.sgscq.vpn.k f1848f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile int f1849g = 1;

    public j(Context context) {
        Context applicationContext = context.getApplicationContext();
        c cVar = new c(0, applicationContext);
        l lVar = new l(applicationContext);
        com.sgscq.vpn.k kVar = new com.sgscq.vpn.k(8);
        this.f1843a = new f2(5, applicationContext);
        this.f1844b = new i(applicationContext, cVar, lVar, kVar);
        this.f1845c = new c(2, applicationContext);
        this.f1846d = new y0(cVar, 5);
        this.f1847e = new y0(lVar, 6);
        this.f1848f = new com.sgscq.vpn.k(9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v10 */
    public static boolean a(Exception exc) {
        if (exc instanceof q.k) {
            return false;
        }
        ?? cause = exc;
        while (cause != 0 && cause.getCause() != null && cause.getCause() != cause) {
            cause = cause.getCause();
        }
        if (cause != 0) {
            exc = cause;
        }
        if ((exc instanceof SSLHandshakeException) || (exc instanceof GeneralSecurityException) || (exc instanceof IllegalArgumentException)) {
            return false;
        }
        if (exc instanceof a0) {
            int i2 = ((a0) exc).f267a;
            return i2 == 502 || i2 == 503 || i2 == 504;
        }
        if (!(exc instanceof q.j)) {
            return (exc instanceof UnknownHostException) || (exc instanceof ConnectException) || (exc instanceof SocketTimeoutException) || (exc instanceof NoRouteToHostException) || ((exc instanceof SocketException) && String.valueOf(exc.getMessage()).toLowerCase(Locale.ROOT).contains("reset"));
        }
        int i3 = ((q.j) exc).f1926a;
        return i3 == 502 || i3 == 503 || i3 == 504;
    }

    public static void b(Context context, boolean z) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        j jVar = f1841j;
        if (jVar == null) {
            synchronized (j.class) {
                jVar = f1841j;
                if (jVar == null) {
                    jVar = new j(applicationContext);
                    f1841j = jVar;
                }
            }
        }
        int i2 = jVar.f1849g;
        if ((z || i2 == 1) && i2 != 3 && i2 != 5 && f1839h.compareAndSet(false, true)) {
            new Thread(new com.sgscq.vpn.b(jVar, 11), "sgscq-battle-startup").start();
        }
    }

    public final synchronized int c() {
        if (this.f1849g != 3 && this.f1849g != 5) {
            this.f1849g = 2;
            try {
                e0 e0VarB = this.f1843a.b();
                Object obj = e0VarB.f645b;
                if (((h) obj) == null || ((h) obj).status() != BattleRuntimeStatus.READY) {
                    throw new IllegalStateException("battle_runtime_load_failed");
                }
                h hVar = (h) e0VarB.f645b;
                h.f1831c = hVar == null ? null : new h(hVar);
                this.f1845c.getClass();
                Object obj2 = e0VarB.f646c;
                if (((BattleOfflineEnvelope) obj2) != null) {
                    try {
                        this.f1846d.b((BattleOfflineEnvelope) obj2);
                        this.f1847e.c(e0VarB.f644a, this.f1848f.c());
                    } catch (Exception e2) {
                        z2.g("BattleRuntime", "offline cache refresh failed: ".concat(e2.getClass().getSimpleName()));
                    }
                }
                this.f1849g = 3;
                return this.f1849g;
            } catch (Exception e3) {
                String str = e3.getClass().getSimpleName() + ":" + String.valueOf(e3.getMessage());
                if (e3 instanceof a0) {
                    a0 a0Var = (a0) e3;
                    str = str + " http=" + a0Var.f267a + " code=" + a0Var.f268b;
                }
                z2.g("BattleRuntime", "online startup failed: " + str);
                this.f1845c.getClass();
                int i2 = 8;
                if (!a(e3)) {
                    Throwable cause = e3;
                    while (cause != null && cause.getCause() != null && cause.getCause() != cause) {
                        cause = cause.getCause();
                    }
                    Throwable th = cause == null ? e3 : cause;
                    if ((th instanceof a0) && ((a0) th).f267a == 426) {
                        i2 = 7;
                    } else if (!(th instanceof SSLHandshakeException) && !(th instanceof GeneralSecurityException) && !(th instanceof IllegalArgumentException)) {
                        i2 = 6;
                    }
                    this.f1849g = i2;
                    return this.f1849g;
                }
                this.f1849g = 4;
                try {
                    h hVarA = this.f1844b.a();
                    if (hVarA.status() != BattleRuntimeStatus.READY) {
                        throw new IllegalArgumentException("offline_runtime_invalid");
                    }
                    h.f1831c = new h(hVarA);
                    this.f1849g = 5;
                    return this.f1849g;
                } catch (Exception e4) {
                    z2.g("BattleRuntime", "offline startup failed: " + e4.getClass().getSimpleName() + ":" + String.valueOf(e4.getMessage()));
                    this.f1849g = 8;
                }
            }
        }
        return this.f1849g;
    }
}
