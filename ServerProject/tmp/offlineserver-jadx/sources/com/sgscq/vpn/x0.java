package com.sgscq.vpn;

import java.util.HashMap;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x0 implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1525a;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f1525a) {
            case 0:
                Thread thread = new Thread(runnable, "DeviceAuditReporter");
                thread.setDaemon(true);
                return thread;
            case 1:
                Thread thread2 = new Thread(runnable, "PlayerSave-Compactor");
                thread2.setDaemon(true);
                return thread2;
            case 2:
                Object obj = g2.f700i;
                Thread thread3 = new Thread(runnable, "LimitedShopConfig");
                thread3.setDaemon(true);
                return thread3;
            case 3:
                String[] strArr = y2.X;
                Thread thread4 = new Thread(runnable, "LocalSrv-RespLog");
                thread4.setDaemon(true);
                return thread4;
            case 4:
                String[] strArr2 = y2.X;
                Thread thread5 = new Thread(runnable, "sgscq-ladder-watchdog");
                thread5.setDaemon(true);
                return thread5;
            case 5:
                int i2 = PassportActivity.f120q;
                Thread thread6 = new Thread(runnable, "passport-storage");
                thread6.setDaemon(true);
                return thread6;
            case 6:
                Object obj2 = x6.f1537a;
                Thread thread7 = new Thread(runnable, "save-startup-migration");
                thread7.setDaemon(true);
                return thread7;
            case 7:
                HashMap map = p7.t;
                Thread thread8 = new Thread(runnable, "sgscq-robot-roster");
                thread8.setDaemon(true);
                return thread8;
            case 8:
                a.o oVar = com.sgscq.vpn.cloud.b.f271o;
                Thread thread9 = new Thread(runnable, "Cloud-Acquisition-Sync");
                thread9.setDaemon(true);
                return thread9;
            case 9:
                Thread thread10 = new Thread(runnable, "Cloud-Save-Auto-Upload");
                thread10.setDaemon(true);
                return thread10;
            default:
                Object obj3 = p.l.f1876o;
                Thread thread11 = new Thread(runnable, "VpsLimitedSchedule");
                thread11.setDaemon(true);
                return thread11;
        }
    }
}
