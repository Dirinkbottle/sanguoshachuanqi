package p;

import com.sgscq.vpn.cloud.m0;
import com.sgscq.vpn.z2;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1875c;

    public /* synthetic */ f(Object obj, Object obj2, int i2) {
        this.f1873a = i2;
        this.f1874b = obj;
        this.f1875c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        OutputStream outputStream;
        int i3;
        final int i4 = 1;
        String str = "403 Forbidden";
        final Socket socketC = null;
        boolean z = false;
        Object[] objArr = 0;
        boolean z2 = false;
        switch (this.f1873a) {
            case 0:
                l lVar = (l) this.f1874b;
                Runnable runnable = (Runnable) this.f1875c;
                AtomicBoolean atomicBoolean = lVar.f1886i;
                try {
                    lVar.j();
                } catch (Exception e2) {
                    z2.g("VpsLimitedSchedule", "刷新失败: " + l.k(e2));
                } finally {
                    atomicBoolean.set(false);
                    if (runnable != null) {
                        runnable.run();
                    }
                }
                return;
            case 1:
                q.d dVar = (q.d) this.f1874b;
                final Socket socket = (Socket) this.f1875c;
                q.d dVar2 = q.d.f1899g;
                dVar.getClass();
                try {
                    try {
                        socket.setSoTimeout(30000);
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(socket.getInputStream());
                        c.f fVarD = q.d.d(bufferedInputStream);
                        if (fVarD == null || !m0.H1(fVarD.f40a) || ((i3 = fVarD.f41b) != 80 && i3 != 443)) {
                            i4 = 0;
                        }
                        if (i4 == 0) {
                            outputStream = socket.getOutputStream();
                        } else {
                            c.i iVar = q.e.f1907b;
                            if (iVar.f47b) {
                                socketC = dVar.b(fVarD, iVar);
                                socketC.setSoTimeout(30000);
                                q.d.e(socket.getOutputStream(), "200 Connection Established");
                                ExecutorService executorService = dVar.f1902c;
                                final Object[] objArr2 = objArr == true ? 1 : 0;
                                executorService.execute(new Runnable() { // from class: q.b
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i5 = objArr2;
                                        Socket socket2 = socket;
                                        Socket socket3 = socketC;
                                        switch (i5) {
                                            case 0:
                                                try {
                                                    InputStream inputStream = socket3.getInputStream();
                                                    OutputStream outputStream2 = socket2.getOutputStream();
                                                    byte[] bArr = new byte[16384];
                                                    while (true) {
                                                        int i6 = inputStream.read(bArr);
                                                        if (i6 >= 0) {
                                                            if (i6 != 0) {
                                                                outputStream2.write(bArr, 0, i6);
                                                                outputStream2.flush();
                                                            }
                                                        }
                                                        d.a(socket3);
                                                        d.a(socket2);
                                                        return;
                                                    }
                                                } catch (IOException unused) {
                                                } catch (Throwable th) {
                                                    d.a(socket3);
                                                    d.a(socket2);
                                                    throw th;
                                                }
                                                break;
                                            default:
                                                Object obj = i.f1917g;
                                                try {
                                                    InputStream inputStream2 = socket3.getInputStream();
                                                    OutputStream outputStream3 = socket2.getOutputStream();
                                                    byte[] bArr2 = new byte[16384];
                                                    while (true) {
                                                        int i7 = inputStream2.read(bArr2);
                                                        if (i7 >= 0) {
                                                            if (i7 != 0) {
                                                                outputStream3.write(bArr2, 0, i7);
                                                                outputStream3.flush();
                                                            }
                                                        }
                                                        i.b(socket3);
                                                        i.b(socket2);
                                                        return;
                                                    }
                                                } catch (IOException unused2) {
                                                } catch (Throwable th2) {
                                                    i.b(socket3);
                                                    i.b(socket2);
                                                    throw th2;
                                                }
                                                break;
                                        }
                                    }
                                });
                                OutputStream outputStream2 = socketC.getOutputStream();
                                byte[] bArr = new byte[16384];
                                while (true) {
                                    int i5 = bufferedInputStream.read(bArr);
                                    if (i5 < 0) {
                                        q.d.a(socketC);
                                        q.d.a(socket);
                                        dVar.f1901b.release();
                                        return;
                                    } else if (i5 != 0) {
                                        outputStream2.write(bArr, 0, i5);
                                        outputStream2.flush();
                                    }
                                }
                            } else {
                                outputStream = socket.getOutputStream();
                                str = "503 Service Unavailable";
                            }
                        }
                        q.d.e(outputStream, str);
                    } catch (SocketTimeoutException | IOException unused) {
                    } catch (IOException unused2) {
                        q.d.e(socket.getOutputStream(), "502 Bad Gateway");
                    }
                    q.d.a(socket);
                    dVar.f1901b.release();
                    return;
                } catch (Throwable th) {
                    q.d.a(null);
                    q.d.a(socket);
                    dVar.f1901b.release();
                    throw th;
                }
            default:
                q.i iVar2 = (q.i) this.f1874b;
                final Socket socket2 = (Socket) this.f1875c;
                Semaphore semaphore = iVar2.f1921b;
                try {
                    try {
                        try {
                            socket2.setSoTimeout(30000);
                            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(socket2.getInputStream());
                            c.f fVarG = q.i.g(bufferedInputStream2);
                            if ((fVarG != null && m0.H1(fVarG.f40a) && ((i2 = fVarG.f41b) == 80 || i2 == 443)) == true) {
                                socketC = iVar2.c();
                                socketC.setSoTimeout(30000);
                                socketC.getOutputStream().write(q.i.a(fVarG).getBytes(StandardCharsets.US_ASCII));
                                socketC.getOutputStream().flush();
                                byte[] bArrF = q.i.f(socketC.getInputStream());
                                socket2.getOutputStream().write(bArrF);
                                socket2.getOutputStream().flush();
                                try {
                                    if (q.i.e(bArrF)) {
                                        iVar2.f1922c.execute(new Runnable() { // from class: q.b
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i6 = i4;
                                                Socket socket3 = socket2;
                                                Socket socket4 = socketC;
                                                switch (i6) {
                                                    case 0:
                                                        try {
                                                            InputStream inputStream = socket4.getInputStream();
                                                            OutputStream outputStream3 = socket3.getOutputStream();
                                                            byte[] bArr2 = new byte[16384];
                                                            while (true) {
                                                                int i7 = inputStream.read(bArr2);
                                                                if (i7 >= 0) {
                                                                    if (i7 != 0) {
                                                                        outputStream3.write(bArr2, 0, i7);
                                                                        outputStream3.flush();
                                                                    }
                                                                }
                                                                d.a(socket4);
                                                                d.a(socket3);
                                                                return;
                                                            }
                                                        } catch (IOException unused3) {
                                                        } catch (Throwable th2) {
                                                            d.a(socket4);
                                                            d.a(socket3);
                                                            throw th2;
                                                        }
                                                        break;
                                                    default:
                                                        Object obj = i.f1917g;
                                                        try {
                                                            InputStream inputStream2 = socket4.getInputStream();
                                                            OutputStream outputStream4 = socket3.getOutputStream();
                                                            byte[] bArr3 = new byte[16384];
                                                            while (true) {
                                                                int i8 = inputStream2.read(bArr3);
                                                                if (i8 >= 0) {
                                                                    if (i8 != 0) {
                                                                        outputStream4.write(bArr3, 0, i8);
                                                                        outputStream4.flush();
                                                                    }
                                                                }
                                                                i.b(socket4);
                                                                i.b(socket3);
                                                                return;
                                                            }
                                                        } catch (IOException unused4) {
                                                        } catch (Throwable th3) {
                                                            i.b(socket4);
                                                            i.b(socket3);
                                                            throw th3;
                                                        }
                                                        break;
                                                }
                                            }
                                        });
                                        OutputStream outputStream3 = socketC.getOutputStream();
                                        byte[] bArr2 = new byte[16384];
                                        while (true) {
                                            int i6 = bufferedInputStream2.read(bArr2);
                                            if (i6 >= 0) {
                                                if (i6 != 0) {
                                                    outputStream3.write(bArr2, 0, i6);
                                                    outputStream3.flush();
                                                }
                                            }
                                        }
                                    }
                                } catch (IOException unused3) {
                                    if (i4 == 0) {
                                        q.i.i(socket2.getOutputStream(), "502 Bad Gateway");
                                    }
                                }
                                q.i.b(socketC);
                            } else {
                                q.i.i(socket2.getOutputStream(), "403 Forbidden");
                            }
                        } catch (Throwable th2) {
                            q.i.b(null);
                            q.i.b(socket2);
                            semaphore.release();
                            throw th2;
                        }
                    } catch (IOException unused4) {
                        i4 = 0;
                    }
                } catch (SocketTimeoutException | IOException unused5) {
                }
                q.i.b(socket2);
                semaphore.release();
                return;
        }
    }
}
