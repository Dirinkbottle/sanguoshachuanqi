package com.sgscq.vpn;

import java.io.IOException;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class r3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile Proxy f1342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f1343c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p4[] f1341a = {new p4("proxy-k1.oracle.sgscq.com", 8888, 2), new p4("proxy-k2.oracle.sgscq.com", 8888, 2)};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f1344d = new Object();

    public static HttpURLConnection a(Proxy proxy, URL url) {
        return (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
    }

    public static void b() {
        String str;
        if (f1343c) {
            return;
        }
        synchronized (f1344d) {
            if (f1343c) {
                return;
            }
            f1342b = j(new a.w((a.b0) null));
            f1343c = true;
            if (f1342b == null) {
                str = "探测完成: oauth.sgscq.com 使用直连";
            } else {
                str = "探测完成: oauth.sgscq.com 使用代理 " + f1342b.address();
            }
            d(str);
        }
    }

    public static boolean c(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        try {
            URL url = new URL(str);
            return "https".equalsIgnoreCase(url.getProtocol()) && "oauth.sgscq.com".equalsIgnoreCase(url.getHost());
        } catch (Exception unused) {
            return false;
        }
    }

    public static void d(String str) {
        z2.e("OAuthProxy", str);
    }

    public static void e(Proxy proxy, URL url) {
        String str;
        if (proxy != null) {
            str = "openConnection 使用代理 " + proxy.address() + " -> " + i(url);
        } else {
            str = "openConnection 使用直连 -> " + i(url);
        }
        d(str);
    }

    public static HttpURLConnection f(URL url) {
        Proxy proxyC = q.o.c(url);
        if (proxyC != null) {
            return g(url, proxyC, new k(5));
        }
        Proxy proxyC2 = q.d.c(url, q.e.f1907b);
        if (proxyC2 != null) {
            return g(url, proxyC2, new k(6));
        }
        if (!"oauth.sgscq.com".equalsIgnoreCase(url.getHost())) {
            return (HttpURLConnection) url.openConnection();
        }
        b();
        return g(url, f1342b, new k(7));
    }

    public static HttpURLConnection g(URL url, Proxy proxy, k kVar) throws IOException {
        ArrayList<Proxy> arrayList = new ArrayList();
        arrayList.add(proxy);
        IOException iOException = null;
        for (Proxy proxy2 : arrayList) {
            try {
                e(proxy2, url);
                return kVar.d(proxy2, url);
            } catch (IOException e2) {
                if (iOException == null) {
                    iOException = e2;
                }
                d("openConnection 失败 " + h(proxy2) + " -> " + i(url) + ": " + e2.getClass().getSimpleName() + " " + String.valueOf(e2.getMessage()));
            }
        }
        if (iOException != null) {
            throw iOException;
        }
        throw new IOException("oauth connection failed");
    }

    public static String h(Proxy proxy) {
        return proxy == null ? "direct" : String.valueOf(proxy.address());
    }

    public static String i(URL url) {
        if (url == null) {
            return "";
        }
        return url.getProtocol() + "://" + url.getHost() + url.getPath();
    }

    public static Proxy j(a.w wVar) {
        String str;
        d("探测直连 https://oauth.sgscq.com/");
        if (wVar.n(null)) {
            str = "探测直连成功";
        } else {
            d("探测直连失败，开始尝试代理");
            for (p4 p4Var : f1341a) {
                p4Var.getClass();
                Proxy.Type type = (Proxy.Type) p4Var.f1273c;
                Serializable serializable = p4Var.f1272b;
                int i2 = p4Var.f1271a;
                Proxy proxy = new Proxy(type, InetSocketAddress.createUnresolved((String) serializable, i2));
                StringBuilder sb = new StringBuilder("探测代理 ");
                String str2 = (String) serializable;
                sb.append(str2);
                sb.append(":");
                sb.append(i2);
                d(sb.toString());
                if (wVar.n(proxy)) {
                    d("探测代理成功 " + str2 + ":" + i2);
                    return proxy;
                }
                d("探测代理失败 " + str2 + ":" + i2);
            }
            str = "所有代理探测失败，暂时回退直连";
        }
        d(str);
        return null;
    }

    public static void k() {
        if (f1343c) {
            Proxy proxy = f1342b;
            d("启动探测跳过，已有结果: ".concat(proxy == null ? "direct" : String.valueOf(proxy.address())));
        } else {
            d("启动探测 oauth.sgscq.com，超时 2000ms");
            new Thread(new i0(1), "OAuthProxyProbe").start();
        }
    }
}
