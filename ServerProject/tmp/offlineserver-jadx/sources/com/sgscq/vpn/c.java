package com.sgscq.vpn;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f231d;

    public /* synthetic */ c(Object obj, p6 p6Var, Activity activity, int i2) {
        this.f228a = i2;
        this.f230c = obj;
        this.f231d = p6Var;
        this.f229b = activity;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0237  */
    @Override // java.lang.Runnable
    public final void run() {
        z zVarD;
        d1 d1VarQ;
        boolean z;
        int length;
        StringBuilder sb;
        String strB3;
        String string;
        boolean z2;
        String str;
        String str2 = null;
        int i2 = 0;
        int i3 = 1;
        switch (this.f228a) {
            case 0:
                g gVar = (g) this.f230c;
                Activity activity = (Activity) this.f229b;
                e eVar = (e) this.f231d;
                try {
                    activity.runOnUiThread(new d(eVar, ((a) gVar).c(), i2));
                    return;
                } catch (Exception e2) {
                    activity.runOnUiThread(new d(eVar, e2, i3));
                    return;
                }
            case 1:
                a0 a0Var = (a0) this.f230c;
                y yVar = (y) this.f231d;
                Activity activity2 = (Activity) this.f229b;
                int i4 = b0.f194c;
                try {
                    w wVar = (w) a0Var;
                    int i5 = wVar.f1491a;
                    b0 b0Var = wVar.f1492b;
                    switch (i5) {
                        case 0:
                            zVarD = b0Var.d(false);
                            break;
                        case 1:
                            zVarD = b0Var.d(true);
                            break;
                        default:
                            zVarD = b0Var.d(true);
                            break;
                    }
                    if (yVar != null) {
                        activity2.runOnUiThread(new d(yVar, zVarD, 2));
                        return;
                    }
                    return;
                } catch (Exception e3) {
                    if (yVar != null) {
                        activity2.runOnUiThread(new d(yVar, e3, 3));
                        return;
                    }
                    return;
                }
            case 2:
                e1 e1Var = (e1) this.f230c;
                c1 c1Var = (c1) this.f231d;
                Activity activity3 = (Activity) this.f229b;
                try {
                    b1 b1Var = (b1) e1Var;
                    int i6 = b1Var.f197a;
                    h hVar = b1Var.f198b;
                    switch (i6) {
                        case 0:
                            d1VarQ = hVar.q();
                            break;
                        default:
                            d1VarQ = hVar.q();
                            break;
                    }
                    if (c1Var != null) {
                        activity3.runOnUiThread(new d(c1Var, d1VarQ, 5));
                        return;
                    }
                    return;
                } catch (Exception e4) {
                    if (c1Var != null) {
                        activity3.runOnUiThread(new d(c1Var, e4, 6));
                        return;
                    }
                    return;
                }
            case 3:
                x1 x1Var = (x1) this.f230c;
                String str3 = (String) this.f229b;
                Runnable runnable = (Runnable) this.f231d;
                synchronized (x1Var) {
                    x1Var.f1527b.remove(str3);
                    break;
                }
                runnable.run();
                return;
            case 4:
                y2 y2Var = (y2) this.f230c;
                String str4 = (String) this.f229b;
                byte[] bArr = (byte[]) this.f231d;
                String[] strArr = y2.X;
                y2Var.getClass();
                if (str4 != null) {
                    try {
                        if (str4.contains(".zip")) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } catch (Exception e5) {
                        z2.e("SGSCQ_SRV", "[RESP_DATA] (preview unavailable: " + e5.getMessage() + ")");
                        return;
                    }
                } else {
                    z = false;
                }
                boolean z3 = str4 != null && str4.toLowerCase().endsWith(".jpg");
                if (!z && !z3 && bArr != null && bArr.length != 0) {
                    byte[] bytes = "\r\n\r\n".getBytes();
                    int i7 = 0;
                    while (true) {
                        if (i7 <= bArr.length - bytes.length) {
                            int i8 = 0;
                            while (true) {
                                if (i8 >= bytes.length) {
                                    z2 = true;
                                } else if (bArr[i7 + i8] != bytes[i8]) {
                                    z2 = false;
                                } else {
                                    i8++;
                                }
                            }
                            if (!z2) {
                                i7++;
                            }
                        } else {
                            i7 = -1;
                        }
                    }
                    if (i7 >= 0 && (length = (bArr.length - i7) - 4) > 0) {
                        int i9 = i7 + 4;
                        if (bArr[i9] == 120) {
                            byte[] bArr2 = new byte[length];
                            System.arraycopy(bArr, i9, bArr2, 0, length);
                            String strU0 = y2.u0(bArr2);
                            if (strU0 == null || strU0.isEmpty()) {
                                sb = new StringBuilder();
                                sb.append("[RESP_DATA] (zlib decompress failed, ");
                                sb.append(length);
                                strB3 = " compressed bytes)";
                            } else {
                                string = "[RESP_DATA] " + y2.b3(strU0);
                            }
                            z2.e("SGSCQ_SRV", string);
                            return;
                        }
                        String str5 = new String(bArr, "UTF-8");
                        sb = new StringBuilder();
                        sb.append("[RESP_DATA] ");
                        strB3 = y2.b3(str5.substring(i9));
                        sb.append(strB3);
                        string = sb.toString();
                        z2.e("SGSCQ_SRV", string);
                        return;
                    }
                    return;
                }
                return;
            case 5:
                MainActivity mainActivity = (MainActivity) this.f230c;
                File file = (File) this.f229b;
                String str6 = (String) this.f231d;
                int i10 = MainActivity.F;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                    i2 = 1;
                }
                if (i2 == 0) {
                    return;
                }
                new AlertDialog.Builder(mainActivity).setTitle("导出成功").setMessage("文件已保存到下载目录:\n" + file.getName() + "\n" + str6).setPositiveButton("确定", (DialogInterface.OnClickListener) null).show();
                StringBuilder sb2 = new StringBuilder("数据已导出: ");
                sb2.append(file.getName());
                mainActivity.e(sb2.toString());
                return;
            case 6:
                PassportActivity passportActivity = (PassportActivity) this.f230c;
                Callable callable = (Callable) this.f229b;
                AlertDialog alertDialog = (AlertDialog) this.f231d;
                int i11 = PassportActivity.f120q;
                passportActivity.getClass();
                try {
                    str = (String) callable.call();
                    break;
                } catch (Exception e6) {
                    String message = e6.getMessage();
                    if (message == null || message.isEmpty()) {
                        String simpleName = e6.getClass().getSimpleName();
                        str = null;
                        str2 = simpleName;
                    } else {
                        str = null;
                        str2 = message;
                    }
                }
                passportActivity.runOnUiThread(new z3(passportActivity, alertDialog, str2, str));
                return;
            case 7:
                SettingsActivity settingsActivity = (SettingsActivity) this.f230c;
                com.sgscq.vpn.cloud.d0 d0Var = (com.sgscq.vpn.cloud.d0) this.f229b;
                String str7 = (String) this.f231d;
                int i12 = SettingsActivity.Y;
                settingsActivity.z(d0Var);
                if (str7.isEmpty()) {
                    return;
                }
                Toast.makeText(settingsActivity, "已切换到本地云存档；上传和下载需手动操作", 1).show();
                return;
            case 8:
                final a7 a7Var = (a7) this.f230c;
                String str8 = (String) this.f229b;
                final AlertDialog alertDialog2 = (AlertDialog) this.f231d;
                Object obj = a7Var.f191b;
                try {
                    final File file2 = new File(((Context) a7Var.f190a).getCacheDir(), "update.apk");
                    if (str8 == null || str8.trim().isEmpty()) {
                        throw new IllegalArgumentException("APK下载地址为空");
                    }
                    final String string2 = new URL(new URL("https://api.sgscq.com/api/v1/public/app/latest"), str8.trim()).toString();
                    p5.O(new q.l() { // from class: com.sgscq.vpn.e7
                        /* JADX WARN: Code duplicated, block: B:56:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:66:? A[Catch: all -> 0x00aa, SYNTHETIC, TryCatch #3 {all -> 0x00aa, blocks: (B:3:0x001a, B:5:0x002b, B:7:0x0035, B:10:0x003c, B:11:0x0043, B:12:0x0044, B:25:0x0082, B:44:0x00a3, B:43:0x00a0, B:45:0x00a4, B:46:0x00a9, B:13:0x0048, B:24:0x007f, B:35:0x0095, B:34:0x0092, B:30:0x008c, B:15:0x004f, B:16:0x0055, B:18:0x005c, B:20:0x0066, B:22:0x006e, B:39:0x009a), top: B:55:0x001a, inners: #1, #4 }] */
                        @Override // q.l
                        public final Object run() {
                            File file3 = file2;
                            final AlertDialog alertDialog3 = alertDialog2;
                            a7 a7Var2 = a7Var;
                            a7Var2.getClass();
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string2).openConnection();
                            try {
                                httpURLConnection.setConnectTimeout(30000);
                                httpURLConnection.setReadTimeout(120000);
                                int responseCode = httpURLConnection.getResponseCode();
                                if (responseCode != 200) {
                                    throw new q.j(responseCode);
                                }
                                final int contentLength = httpURLConnection.getContentLength();
                                if (file3.exists() && !file3.delete()) {
                                    throw new q.k("无法替换旧下载文件");
                                }
                                InputStream inputStream = httpURLConnection.getInputStream();
                                try {
                                    FileOutputStream fileOutputStream = new FileOutputStream(file3);
                                    try {
                                        byte[] bArr3 = new byte[8192];
                                        long j2 = 0;
                                        final int i13 = 0;
                                        while (true) {
                                            int i14 = inputStream.read(bArr3);
                                            if (i14 == -1) {
                                                fileOutputStream.close();
                                                inputStream.close();
                                                httpURLConnection.disconnect();
                                                return null;
                                            }
                                            fileOutputStream.write(bArr3, 0, i14);
                                            i13 += i14;
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            if (contentLength > 0 && jCurrentTimeMillis - j2 > 300) {
                                                final int i15 = (i13 * 100) / contentLength;
                                                ((Handler) a7Var2.f191b).post(new Runnable() { // from class: com.sgscq.vpn.f7
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        alertDialog3.setMessage("下载中 " + i15 + "%  (" + (i13 / 1024) + "KB / " + (contentLength / 1024) + "KB)");
                                                    }
                                                });
                                                j2 = jCurrentTimeMillis;
                                            }
                                            if (inputStream != null) {
                                                throw th;
                                            }
                                            try {
                                                inputStream.close();
                                                throw th;
                                            } catch (Throwable th) {
                                                th.addSuppressed(th);
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        try {
                                            fileOutputStream.close();
                                            throw th2;
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                            throw th2;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    if (inputStream != null) {
                                        throw th4;
                                    }
                                    inputStream.close();
                                    throw th4;
                                }
                            } catch (Throwable th5) {
                                httpURLConnection.disconnect();
                                throw th5;
                            }
                        }
                    });
                    ((Handler) obj).post(new c(a7Var, alertDialog2, file2, 9));
                    return;
                } catch (Exception e7) {
                    ((Handler) obj).post(new c(a7Var, alertDialog2, e7, 10));
                    return;
                }
            case 9:
                a7 a7Var2 = (a7) this.f230c;
                AlertDialog alertDialog3 = (AlertDialog) this.f229b;
                File file3 = (File) this.f231d;
                a7Var2.getClass();
                alertDialog3.dismiss();
                int i13 = Build.VERSION.SDK_INT;
                Object obj2 = a7Var2.f190a;
                if (i13 >= 26) {
                    Context context = (Context) obj2;
                    if (!context.getPackageManager().canRequestPackageInstalls()) {
                        a7Var2.c("请允许从未知来源安装应用");
                        Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
                        intent.setData(Uri.parse("package:" + context.getPackageName()));
                        intent.addFlags(268435456);
                        context.startActivity(intent);
                        return;
                    }
                }
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.addFlags(268435456);
                int i14 = ApkProvider.f96a;
                Uri uriBuild = new Uri.Builder().scheme("content").authority(((Context) obj2).getPackageName() + ".apkprovider").appendPath(file3.getName()).build();
                intent2.addFlags(1);
                intent2.setDataAndType(uriBuild, "application/vnd.android.package-archive");
                try {
                    ((Context) obj2).startActivity(intent2);
                    return;
                } catch (Exception e8) {
                    a7Var2.c("安装失败: " + e8.getMessage());
                    return;
                }
            case 10:
                a7 a7Var3 = (a7) this.f230c;
                AlertDialog alertDialog4 = (AlertDialog) this.f229b;
                Exception exc = (Exception) this.f231d;
                a7Var3.getClass();
                alertDialog4.dismiss();
                a7Var3.c("下载失败: " + exc.getMessage());
                return;
            default:
                p7 p7Var = (p7) this.f230c;
                List list = (List) this.f229b;
                List list2 = (List) this.f231d;
                HashMap map = p7.t;
                p7Var.e();
                synchronized (p7Var.f1293a) {
                    p7Var.b(list, list2);
                    break;
                }
                return;
        }
    }

    public /* synthetic */ c(Object obj, Object obj2, Object obj3, int i2) {
        this.f228a = i2;
        this.f230c = obj;
        this.f229b = obj2;
        this.f231d = obj3;
    }
}
