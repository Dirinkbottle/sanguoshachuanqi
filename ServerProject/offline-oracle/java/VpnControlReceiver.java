package com.sgscq.vpn;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class VpnControlReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        if ("com.sgscq.vpn.STOP".equals(action)) {
            Intent intent2 = new Intent(context, (Class<?>) SgscqVpnService.class);
            SgscqVpnService.f155m = false;
            context.stopService(intent2);
            str = "ADB: VPN STOP";
        } else {
            if (!"com.sgscq.vpn.START".equals(action)) {
                return;
            }
            if (SgscqVpnService.f155m) {
                z2.e("SGSCQ_CTL", "ADB: VPN already running");
                return;
            }
            Intent intent3 = new Intent(context, (Class<?>) SgscqVpnService.class);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent3);
            } else {
                context.startService(intent3);
            }
            str = "ADB: VPN START";
        }
        z2.e("SGSCQ_CTL", str);
    }
}
