package q;

import com.sgscq.vpn.cloud.m0;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Object f1917g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final HashMap f1918h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final g f1919i = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.sgscq.vpn.config.f f1920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Semaphore f1921b = new Semaphore(8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExecutorService f1922c = Executors.newCachedThreadPool(new c("HttpsProxyBridge", 1));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1923d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile ServerSocket f1924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Proxy f1925f;

    public i(com.sgscq.vpn.config.f fVar) {
        this.f1920a = fVar;
    }

    public static String a(c.f fVar) {
        String str = fVar.f40a + ':' + fVar.f41b;
        return "CONNECT " + str + " HTTP/1.1\r\nHost: " + str + "\r\nProxy-Connection: Keep-Alive\r\n\r\n";
    }

    public static void b(Socket socket) {
        if (socket == null) {
            return;
        }
        try {
            socket.close();
        } catch (IOException unused) {
        }
    }

    public static boolean e(byte[] bArr) {
        String str = new String(bArr, StandardCharsets.US_ASCII);
        int iIndexOf = str.indexOf(10);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf).trim();
        }
        String[] strArrSplit = str.split("\\s+", 3);
        return strArrSplit.length >= 2 && strArrSplit[0].startsWith("HTTP/") && "200".equals(strArrSplit[1]);
    }

    public static byte[] f(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        while (byteArrayOutputStream.size() < 8192) {
            int i3 = inputStream.read();
            if (i3 < 0) {
                throw new IOException("CONNECT 响应头不完整");
            }
            byteArrayOutputStream.write(i3);
            if ((i2 == 0 || i2 == 2) && i3 == 13) {
                i2++;
            } else {
                if ((i2 == 1 || i2 == 3) && i3 == 10) {
                    i2++;
                    if (i2 == 4) {
                        return byteArrayOutputStream.toByteArray();
                    }
                } else {
                    i2 = i3 != 13 ? 0 : 1;
                }
            }
        }
        throw new IOException("CONNECT 响应头过大");
    }

    public static c.f g(BufferedInputStream bufferedInputStream) {
        String str;
        int iLastIndexOf;
        String str2 = new String(f(bufferedInputStream), StandardCharsets.US_ASCII);
        int iIndexOf = str2.indexOf("\r\n");
        if (iIndexOf < 0) {
            iIndexOf = str2.indexOf(10);
        }
        if (iIndexOf >= 0) {
            str2 = str2.substring(0, iIndexOf);
        }
        if (str2 != null) {
            String[] strArrSplit = str2.trim().split("\\s+");
            if (strArrSplit.length == 3 && "CONNECT".equalsIgnoreCase(strArrSplit[0]) && strArrSplit[2].startsWith("HTTP/") && (iLastIndexOf = (str = strArrSplit[1]).lastIndexOf(58)) > 0 && iLastIndexOf != str.length() - 1) {
                String lowerCase = str.substring(0, iLastIndexOf).trim().toLowerCase(Locale.US);
                if (lowerCase.startsWith("[") && lowerCase.endsWith("]")) {
                    lowerCase = lowerCase.substring(1, lowerCase.length() - 1);
                }
                try {
                    return new c.f(lowerCase, Integer.parseInt(str.substring(iLastIndexOf + 1)));
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public static void h() {
        synchronized (f1917g) {
            for (i iVar : f1918h.values()) {
                ServerSocket serverSocket = iVar.f1924e;
                iVar.f1924e = null;
                iVar.f1925f = null;
                if (serverSocket != null) {
                    try {
                        serverSocket.close();
                    } catch (IOException unused) {
                    }
                }
                iVar.f1922c.shutdownNow();
            }
            f1918h.clear();
        }
    }

    public static void i(OutputStream outputStream, String str) throws IOException {
        outputStream.write(("HTTP/1.1 " + str + "\r\n" + (str.startsWith("200") ? "" : "Connection: close\r\n") + "\r\n").getBytes(StandardCharsets.US_ASCII));
        outputStream.flush();
    }

    public final SSLSocket c() throws IOException {
        c.i iVar = e.f1907b;
        IOException e2 = null;
        for (InetAddress inetAddress : (iVar.f47b && m0.H1(this.f1920a.f571c)) ? f1919i.b(this.f1920a.f571c, iVar) : InetAddress.getAllByName(this.f1920a.f571c)) {
            Socket socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(inetAddress, this.f1920a.f572d), 5000);
                SSLSocket sSLSocket = (SSLSocket) ((SSLSocketFactory) SSLSocketFactory.getDefault()).createSocket(socket, inetAddress.getHostAddress(), this.f1920a.f572d, true);
                sSLSocket.setUseClientMode(true);
                sSLSocket.startHandshake();
                String str = this.f1920a.f571c;
                if (HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
                    return sSLSocket;
                }
                throw new SSLHandshakeException("代理证书主机名不匹配: " + str);
            } catch (IOException e3) {
                e2 = e3;
                b(socket);
            }
        }
        if (e2 != null) {
            throw e2;
        }
        throw new IOException("代理服务器 DNS 未返回可用地址");
    }

    public final Proxy d() {
        Proxy proxy = this.f1925f;
        if (proxy != null) {
            return proxy;
        }
        synchronized (this.f1923d) {
            if (this.f1925f != null) {
                return this.f1925f;
            }
            ServerSocket serverSocket = new ServerSocket();
            serverSocket.setReuseAddress(true);
            serverSocket.bind(new InetSocketAddress(InetAddress.getByName("127.0.0.1"), 0), 8);
            this.f1924e = serverSocket;
            this.f1925f = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("127.0.0.1", serverSocket.getLocalPort()));
            this.f1922c.execute(new com.sgscq.vpn.b(this, 15));
            return this.f1925f;
        }
    }
}
