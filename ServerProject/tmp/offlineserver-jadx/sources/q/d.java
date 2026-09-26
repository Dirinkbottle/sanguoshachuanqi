package q;

import com.sgscq.vpn.cloud.m0;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final d f1899g = new d(new a(new g()));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Semaphore f1901b = new Semaphore(8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExecutorService f1902c = Executors.newCachedThreadPool(new c("AppDnsBridge", 0));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1903d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile ServerSocket f1904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Proxy f1905f;

    public d(a aVar) {
        this.f1900a = aVar;
    }

    public static void a(Socket socket) {
        if (socket == null) {
            return;
        }
        try {
            socket.close();
        } catch (IOException unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0033  */
    public static Proxy c(URL url, c.i iVar) {
        boolean z;
        Proxy proxy;
        if (iVar == null) {
            z = false;
        } else {
            if ((iVar.f47b && m0.H1(url.getHost())) && "https".equalsIgnoreCase(url.getProtocol()) && (url.getPort() < 0 || url.getPort() == 443)) {
                z = true;
            } else {
                z = false;
            }
        }
        if (!z) {
            return null;
        }
        d dVar = f1899g;
        Proxy proxy2 = dVar.f1905f;
        if (proxy2 != null) {
            return proxy2;
        }
        synchronized (dVar.f1903d) {
            if (dVar.f1905f == null) {
                ServerSocket serverSocket = new ServerSocket();
                serverSocket.setReuseAddress(true);
                serverSocket.bind(new InetSocketAddress(InetAddress.getByName("127.0.0.1"), 0), 8);
                dVar.f1904e = serverSocket;
                dVar.f1905f = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("127.0.0.1", serverSocket.getLocalPort()));
                dVar.f1902c.execute(new com.sgscq.vpn.b(dVar, 14));
            }
            proxy = dVar.f1905f;
        }
        return proxy;
    }

    public static c.f d(BufferedInputStream bufferedInputStream) throws IOException {
        String str;
        int iLastIndexOf;
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        String str2 = null;
        while (i2 < 8192) {
            int i3 = bufferedInputStream.read();
            if (i3 < 0) {
                throw new IOException("CONNECT 请求不完整");
            }
            i2++;
            if (i3 == 10) {
                String string = sb.toString();
                if (string.endsWith("\r")) {
                    string = string.substring(0, string.length() - 1);
                }
                if (str2 == null) {
                    str2 = string;
                }
                if (string.isEmpty()) {
                    if (str2 == null) {
                        return null;
                    }
                    String[] strArrSplit = str2.trim().split("\\s+");
                    if (strArrSplit.length != 3 || !"CONNECT".equalsIgnoreCase(strArrSplit[0]) || !strArrSplit[2].startsWith("HTTP/") || (iLastIndexOf = (str = strArrSplit[1]).lastIndexOf(58)) <= 0 || iLastIndexOf == str.length() - 1) {
                        return null;
                    }
                    String lowerCase = str.substring(0, iLastIndexOf).trim().toLowerCase(Locale.US);
                    if (lowerCase.startsWith("[") && lowerCase.endsWith("]")) {
                        lowerCase = lowerCase.substring(1, lowerCase.length() - 1);
                    }
                    try {
                        return new c.f(lowerCase, Integer.parseInt(str.substring(iLastIndexOf + 1)));
                    } catch (NumberFormatException unused) {
                        return null;
                    }
                }
                sb.setLength(0);
            } else {
                sb.append((char) i3);
            }
        }
        throw new IOException("CONNECT 请求头过大");
    }

    public static void e(OutputStream outputStream, String str) throws IOException {
        outputStream.write(("HTTP/1.1 " + str + "\r\n" + (str.startsWith("200") ? "" : "Connection: close\r\n") + "\r\n").getBytes(StandardCharsets.US_ASCII));
        outputStream.flush();
    }

    public final Socket b(c.f fVar, c.i iVar) throws IOException {
        IOException e2 = null;
        for (InetAddress inetAddress : this.f1900a.f1892a.b(fVar.f40a, iVar)) {
            Socket socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(inetAddress, fVar.f41b), 5000);
                return socket;
            } catch (IOException e3) {
                e2 = e3;
                a(socket);
            }
        }
        if (e2 != null) {
            throw e2;
        }
        throw new IOException("DNS 未返回可用公网地址");
    }
}
