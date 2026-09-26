package q;

import android.content.Context;
import com.sgscq.vpn.cloud.b0;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1906a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile c.i f1907b = new c.i(false, "114.114.114.114", c.i.d("114.114.114.114"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile b0 f1908c;

    public static void a(Context context) {
        c.i iVar;
        if (f1908c != null) {
            return;
        }
        synchronized (f1906a) {
            if (f1908c != null) {
                return;
            }
            b0 b0Var = new b0(3, context.getApplicationContext());
            f1908c = b0Var;
            try {
                InetAddress inetAddressD = c.i.d(b0Var.f287b.getString("app_dns_server", "114.114.114.114"));
                String hostAddress = inetAddressD.getHostAddress();
                iVar = new c.i(true, hostAddress, inetAddressD);
                if (!b0Var.k()) {
                    InetAddress inetAddressD2 = c.i.d(hostAddress);
                    iVar = new c.i(false, inetAddressD2.getHostAddress(), inetAddressD2);
                }
            } catch (IllegalArgumentException unused) {
                iVar = new c.i(false, "114.114.114.114", c.i.d("114.114.114.114"));
            }
            f1907b = iVar;
        }
    }

    public static c.i b(String str) {
        if (f1908c == null) {
            throw new IllegalStateException("DNS 配置尚未初始化");
        }
        InetAddress inetAddressD = c.i.d(str);
        String hostAddress = inetAddressD.getHostAddress();
        c.i iVar = new c.i(true, hostAddress, inetAddressD);
        f1908c.f287b.edit().putBoolean("app_dns_enabled", true).putString("app_dns_server", hostAddress).apply();
        f1907b = iVar;
        return iVar;
    }
}
