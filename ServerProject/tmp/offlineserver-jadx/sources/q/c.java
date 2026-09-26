package q;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f1898c;

    public c(String str, int i2) {
        this.f1896a = i2;
        if (i2 != 1) {
            this.f1898c = new AtomicInteger();
            this.f1897b = str;
        } else {
            this.f1898c = new AtomicInteger();
            this.f1897b = str;
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f1898c;
        int i2 = this.f1896a;
        String str = this.f1897b;
        switch (i2) {
            case 0:
                Thread thread = new Thread(runnable, str + '-' + atomicInteger.incrementAndGet());
                thread.setDaemon(true);
                return thread;
            default:
                Thread thread2 = new Thread(runnable, str + '-' + atomicInteger.incrementAndGet());
                thread2.setDaemon(true);
                return thread2;
        }
    }
}
