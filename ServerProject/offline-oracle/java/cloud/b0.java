package com.sgscq.vpn.cloud;

import android.content.Context;
import android.content.SharedPreferences;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f287b;

    public b0(int i2, Context context) {
        this.f286a = i2;
        if (i2 == 1) {
            this.f287b = context.getApplicationContext().getSharedPreferences("sgscq_cloud_character_v1", 0);
            return;
        }
        if (i2 == 2) {
            this.f287b = context.getApplicationContext().getSharedPreferences("sgscq_cloud_opponent_sync_release", 0);
            return;
        }
        if (i2 == 3) {
            this.f287b = context.getSharedPreferences("sgscq_config_v2", 0);
        } else if (i2 != 4) {
            this.f287b = context.getApplicationContext().getSharedPreferences("sgscq_cloud_auto_sync_v1", 0);
        } else {
            this.f287b = context.getSharedPreferences("sgscq_config_v2", 0);
        }
    }

    public static String a(String str) {
        StringBuilder sb = new StringBuilder("account_");
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(n(str).getBytes(StandardCharsets.UTF_8));
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b2 : bArrDigest) {
                sb2.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b2 & 255)));
            }
            sb.append(sb2.toString());
            sb.append("_");
            return sb.toString();
        } catch (Exception e2) {
            throw new IllegalStateException("无法生成云账号分区", e2);
        }
    }

    public static String j(String str, String str2, String str3) {
        String strTrim = str == null ? "" : str.trim();
        String strTrim2 = str2 == null ? "" : str2.trim();
        String strTrim3 = str3 == null ? "" : str3.trim();
        if (strTrim.isEmpty() || strTrim2.isEmpty() || strTrim3.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder("binding_");
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest((strTrim + "\u0000" + strTrim2 + "\u0000" + strTrim3).getBytes(StandardCharsets.UTF_8));
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b2 : bArrDigest) {
                sb2.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b2 & 255)));
            }
            sb.append(sb2.toString());
            return sb.toString();
        } catch (Exception e2) {
            throw new IllegalStateException("无法生成自动同步配置键", e2);
        }
    }

    public static String n(String str) {
        return str == null ? "" : str.trim();
    }

    public final synchronized long b(String str) {
        long j2;
        String strN = n(str);
        j2 = 0;
        if (!strN.isEmpty()) {
            j2 = this.f287b.getLong(a(strN) + "chat_cursor", 0L);
        }
        return j2;
    }

    public final void c() {
        int i2 = this.f286a;
        SharedPreferences sharedPreferences = this.f287b;
        switch (i2) {
            case 3:
                sharedPreferences.edit().remove("app_dns_enabled").remove("app_dns_server").apply();
                break;
            default:
                sharedPreferences.edit().remove("service_proxy_enabled").remove("service_proxy_type").remove("service_proxy_host").remove("service_proxy_port").apply();
                break;
        }
    }

    public final synchronized void d(String str) {
        String strN = n(str);
        if (strN.isEmpty()) {
            return;
        }
        String strA = a(strN);
        long j2 = this.f287b.getLong(strA + "chat_cursor", 0L);
        long j3 = this.f287b.getLong(strA + "guild_application_cursor", 0L);
        SharedPreferences.Editor editorEdit = this.f287b.edit();
        for (String str2 : this.f287b.getAll().keySet()) {
            if (str2.startsWith(strA)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.putLong(strA + "chat_cursor", j2).putLong(strA + "guild_application_cursor", j3).commit();
    }

    public final synchronized long e(String str) {
        long j2;
        String strN = n(str);
        j2 = 0;
        if (!strN.isEmpty()) {
            j2 = this.f287b.getLong(a(strN) + "guild_application_cursor", 0L);
        }
        return j2;
    }

    public final synchronized d0 f(String str) {
        int i2;
        String strN = n(str);
        if (strN.isEmpty()) {
            return new d0();
        }
        h(strN);
        String strA = a(strN);
        int i3 = this.f287b.getInt(strA + "retry_after", 0);
        String string = this.f287b.getString(strA + "cloud_character_id", "");
        String string2 = this.f287b.getString(strA + "passport_uid", "");
        int i4 = this.f287b.getInt(strA + "revision", 0);
        int i5 = this.f287b.getInt(strA + "synced_revision", 0);
        String string3 = this.f287b.getString(strA + "nickname", "");
        int i6 = this.f287b.getInt(strA + "level", 0);
        double dLongBitsToDouble = Double.longBitsToDouble(this.f287b.getLong(strA + "fighting_bits", Double.doubleToRawLongBits(0.0d)));
        if (this.f287b.contains(strA + "upload_retry_after")) {
            i2 = this.f287b.getInt(strA + "upload_retry_after", 0);
        } else {
            i2 = i3;
        }
        if (this.f287b.contains(strA + "download_retry_after")) {
            i3 = this.f287b.getInt(strA + "download_retry_after", 0);
        }
        return new d0(strN, string, string2, i4, i5, string3, i6, dLongBitsToDouble, i2, i3, Math.max(this.f287b.getLong(strA + "last_upload_at", 0L), this.f287b.getLong(strA + "last_download_at", 0L)));
    }

    public final synchronized void g(String str, x xVar, long j2) {
        String strN = n(str);
        i(strN, xVar);
        if (!strN.isEmpty()) {
            String strA = a(strN);
            SharedPreferences.Editor editorPutInt = this.f287b.edit().putInt(strA + "synced_revision", xVar.f519c);
            if (j2 > 0) {
                editorPutInt.putLong(strA + "last_synced_local_modified_at", j2);
            }
            editorPutInt.commit();
        }
    }

    public final void h(String str) {
        String strA = a(str);
        String str2 = strA + "cloud_character_id";
        SharedPreferences sharedPreferences = this.f287b;
        if (sharedPreferences.contains(str2) || !str.equals(sharedPreferences.getString("afdian_user_id", ""))) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        String[] strArr = {"cloud_character_id", "passport_uid", "nickname"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str3 = strArr[i2];
            if (sharedPreferences.contains(str3)) {
                editorEdit.putString(strA + str3, sharedPreferences.getString(str3, ""));
            }
        }
        String[] strArr2 = {"revision", "synced_revision", "retry_after", "upload_retry_after", "download_retry_after"};
        for (int i3 = 0; i3 < 5; i3++) {
            String str4 = strArr2[i3];
            if (sharedPreferences.contains(str4)) {
                editorEdit.putInt(strA + str4, sharedPreferences.getInt(str4, 0));
            }
        }
        String[] strArr3 = {"fighting_bits", "last_upload_at", "last_download_at", "last_transfer_at", "last_synced_local_modified_at", "chat_cursor", "guild_application_cursor"};
        for (int i4 = 0; i4 < 7; i4++) {
            String str5 = strArr3[i4];
            if (sharedPreferences.contains(str5)) {
                editorEdit.putLong(strA + str5, sharedPreferences.getLong(str5, 0L));
            }
        }
        editorEdit.commit();
    }

    public final synchronized void i(String str, x xVar) {
        String strN = n(str);
        if (strN.isEmpty()) {
            return;
        }
        if (xVar == null) {
            d(strN);
            return;
        }
        d0 d0VarF = f(strN);
        boolean z = d0VarF.f310b.equals(xVar.f517a) && d0VarF.f311c.equals(xVar.f518b);
        String strA = a(strN);
        SharedPreferences.Editor editorRemove = this.f287b.edit().putString(strA + "cloud_character_id", xVar.f517a).putString(strA + "passport_uid", xVar.f518b).putInt(strA + "revision", xVar.f519c).putString(strA + "nickname", xVar.f520d).putInt(strA + "level", xVar.f521e).putLong(strA + "fighting_bits", Double.doubleToRawLongBits(xVar.f522f)).putInt(strA + "upload_retry_after", xVar.f525i).putInt(strA + "download_retry_after", xVar.f526j).putLong(strA + "last_upload_at", xVar.f523g).putLong(strA + "last_download_at", xVar.f524h).remove(strA + "retry_after").remove(strA + "last_transfer_at");
        if (!z) {
            editorRemove.putInt(strA + "synced_revision", 0).remove(strA + "last_synced_local_modified_at");
        }
        editorRemove.commit();
    }

    public final boolean k() {
        int i2 = this.f286a;
        SharedPreferences sharedPreferences = this.f287b;
        switch (i2) {
            case 3:
                return sharedPreferences.getBoolean("app_dns_enabled", false);
            default:
                return sharedPreferences.getBoolean("service_proxy_enabled", false);
        }
    }

    public final void l(String str, String str2, String str3, long j2) {
        String strJ = j(str, str2, str3);
        if (strJ.isEmpty()) {
            return;
        }
        this.f287b.edit().putLong("next_sync_at_".concat(strJ), TimeUnit.MINUTES.toMillis(10L) + Math.max(0L, j2)).apply();
    }

    public final synchronized void m() {
        int iMin;
        synchronized (this) {
            long j2 = this.f287b.getLong("deadline_ms", 0L) - System.currentTimeMillis();
            iMin = j2 <= 0 ? 0 : (int) Math.min(2147483647L, (j2 + 999) / 1000);
        }
        if (iMin > 0) {
            throw new a0(429, iMin, "opponent_sync_cooldown", "云端对手同步仍在冷却中");
        }
    }

    public final void o() {
        int i2 = this.f286a;
        SharedPreferences sharedPreferences = this.f287b;
        switch (i2) {
            case 3:
                sharedPreferences.edit().putBoolean("app_dns_enabled", false).apply();
                break;
            default:
                sharedPreferences.edit().putBoolean("service_proxy_enabled", false).apply();
                break;
        }
    }
}
