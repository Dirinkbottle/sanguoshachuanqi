package com.sgscq.vpn;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import dalvik.system.InMemoryDexClassLoader;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class q1 {
    public static /* synthetic */ Notification.Builder a(Context context) {
        return new Notification.Builder(context, "sgscq_vpn_status");
    }

    public static /* synthetic */ NotificationChannel b() {
        return new NotificationChannel("sgscq_vpn_status", "三国杀传奇 VPN", 2);
    }

    public static /* synthetic */ InMemoryDexClassLoader c(ByteBuffer byteBuffer, ClassLoader classLoader) {
        return new InMemoryDexClassLoader(byteBuffer, classLoader);
    }

    public static /* synthetic */ void g() {
    }
}
