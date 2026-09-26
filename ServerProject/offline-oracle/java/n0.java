package com.sgscq.vpn;

import android.app.ActivityManager;
import android.app.Application;
import android.app.ApplicationExitInfo;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public abstract class n0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile Application f1208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f1209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f1210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile boolean f1211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile long f1212f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Handler f1213g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimpleDateFormat f1207a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i0 f1214h = new i0(0);

    public static void a(StringBuilder sb, String str) {
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        sb.append("进程内日志尾部(最后 ");
        sb.append(12);
        sb.append("KB):\n");
        sb.append(str);
        if (str.endsWith("\n")) {
            return;
        }
        sb.append('\n');
    }

    public static void b(StringBuilder sb, String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        String strTrim = str2.trim();
        if (strTrim.isEmpty() || "null".equals(strTrim) || "unknown".equalsIgnoreCase(strTrim)) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(str);
        sb.append('=');
        sb.append(strTrim);
    }

    public static String c(String str, long j2, l0 l0Var, String str2) {
        StringBuilder sbB = a.b0.b("===== 崩溃报告 =====\n类型: ", str, "\n时间: ");
        sbB.append(n(j2));
        sbB.append(" (");
        sbB.append(j2);
        sbB.append(")\n");
        StringBuilder sb = new StringBuilder();
        l0.a(sb, "应用", l0Var.f1124a);
        l0.a(sb, "上报进程", l0Var.f1125b);
        l0.a(sb, "设备", l0Var.f1126c);
        l0.a(sb, "系统", l0Var.f1127d);
        l0.a(sb, "鸿蒙", l0Var.f1128e);
        l0.a(sb, "ABI", l0Var.f1129f);
        l0.a(sb, "语言/时区", l0Var.f1130g);
        l0.a(sb, "内存", l0Var.f1131h);
        l0.a(sb, "VPN", l0Var.f1132i);
        l0.a(sb, "保活", l0Var.f1133j);
        String string = sb.toString();
        if (!string.isEmpty()) {
            sbB.append(string);
        }
        if (str2 != null && !str2.isEmpty()) {
            sbB.append(str2);
        }
        sbB.append("===== 报告结束 =====\n");
        return i(sbB.toString(), 24576);
    }

    public static void d(Context context) {
        Context applicationContext = context.getApplicationContext();
        long jCurrentTimeMillis = System.currentTimeMillis();
        m0 m0VarS = s(applicationContext);
        long j2 = m0VarS == null ? jCurrentTimeMillis : m0VarS.f1165a;
        SharedPreferences.Editor editorEdit = applicationContext.getSharedPreferences("sgscq_crash_v1", 0).edit();
        editorEdit.putString("session", "1|" + j2 + "|" + jCurrentTimeMillis + "|" + Process.myPid() + "|" + (f1210d ? 1 : 0) + "|" + (SgscqVpnService.f155m ? 1 : 0));
        String strG = g();
        if (!strG.isEmpty()) {
            editorEdit.putString("session_tail", k(applicationContext, strG));
        }
        editorEdit.apply();
    }

    public static String e(long j2, l0 l0Var, String str, long j3, Throwable th, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        String string = "";
        if (str != null && !str.isEmpty()) {
            sb.append("线程: ");
            sb.append(str);
            if (j3 >= 0) {
                str3 = " (id=" + j3 + ")";
            } else {
                str3 = "";
            }
            sb.append(str3);
            sb.append('\n');
        }
        sb.append("异常: ");
        sb.append(th == null ? "(无)" : String.valueOf(th));
        sb.append("\n堆栈:\n");
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        sb.append(i(string, 8192));
        a(sb, str2);
        return c("Java 未捕获异常", j2, l0Var, sb.toString());
    }

    public static String f(long j2, l0 l0Var, m0 m0Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("上次会话开始: ");
        sb.append(n(m0Var.f1165a));
        sb.append("\n最后一次心跳: ");
        long j3 = m0Var.f1166b;
        sb.append(n(j3));
        sb.append("（发生在 ");
        sb.append(m(j2 - j3));
        sb.append(" 前）\n心跳时状态: ");
        sb.append(m0Var.f1167c ? "前台可见" : "后台");
        sb.append(m0Var.f1168d ? "，VPN 运行中" : "，VPN 未运行");
        sb.append('\n');
        a(sb, str);
        return c("上次会话未正常结束（疑似崩溃或被系统杀掉）", j2, l0Var, sb.toString());
    }

    public static String g() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            SgscqVpnService.j().b(byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray != null && byteArray.length != 0) {
                int i2 = 0;
                while (i2 < byteArray.length && byteArray[i2] != 10) {
                    i2++;
                }
                if (i2 < byteArray.length) {
                    i2++;
                }
                String str = new String(byteArray, i2, byteArray.length - i2, StandardCharsets.UTF_8);
                if (!str.trim().isEmpty()) {
                    return str;
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static void h(MainActivity mainActivity) {
        SharedPreferences.Editor editorEdit = r(mainActivity.getApplicationContext()).edit();
        for (int i2 = 0; i2 < 3; i2++) {
            editorEdit.remove("report_" + i2);
        }
        editorEdit.apply();
    }

    public static String i(String str, int i2) {
        if (str == null) {
            return "";
        }
        if (str.length() <= i2) {
            return str;
        }
        String str2 = "\n……(内容超过 " + i2 + " 字符，已截断)\n";
        return str.substring(0, Math.max(0, i2 - str2.length())) + str2;
    }

    public static l0 j(Application application) {
        boolean z;
        String strValueOf;
        l0 l0Var = new l0();
        Context applicationContext = application.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        try {
            PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
            packageName = packageName + " " + packageInfo.versionName + " (versionCode=" + (Build.VERSION.SDK_INT >= 28 ? (int) packageInfo.getLongVersionCode() : packageInfo.versionCode) + ", build=release, cloud=release)";
        } catch (Exception unused) {
        }
        l0Var.f1124a = packageName;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - f1212f;
        l0Var.f1125b = "pid=" + Process.myPid() + " 启动于 " + n(System.currentTimeMillis() - jElapsedRealtime) + " 已运行 " + m(jElapsedRealtime);
        l0Var.f1126c = "manufacturer=" + Build.MANUFACTURER + " model=" + Build.MODEL + " brand=" + Build.BRAND + " device=" + Build.DEVICE + " product=" + Build.PRODUCT + " hardware=" + Build.HARDWARE;
        StringBuilder sb = new StringBuilder("Android ");
        sb.append(Build.VERSION.RELEASE);
        sb.append(" (SDK ");
        sb.append(Build.VERSION.SDK_INT);
        sb.append(')');
        String str = Build.VERSION.SECURITY_PATCH;
        String string = "";
        if (!(str == null ? "" : str).isEmpty()) {
            sb.append(" 安全补丁=");
            sb.append(str);
        }
        sb.append(" 指纹=");
        sb.append(Build.FINGERPRINT);
        sb.append(" display=");
        sb.append(Build.DISPLAY);
        l0Var.f1127d = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        b(sb2, "platform", System.getProperty("hw_sc.build.platform.version"));
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            b(sb2, "osBrand", String.valueOf(cls.getMethod("getOsBrand", new Class[0]).invoke(null, new Object[0])));
            Object objInvoke = cls.getMethod("getOsVersion", new Class[0]).invoke(null, new Object[0]);
            if (objInvoke instanceof Object[]) {
                StringBuilder sb3 = new StringBuilder();
                for (Object obj : (Object[]) objInvoke) {
                    if (sb3.length() > 0) {
                        sb3.append('.');
                    }
                    sb3.append(String.valueOf(obj));
                }
                strValueOf = sb3.toString();
            } else {
                strValueOf = objInvoke == null ? "" : String.valueOf(objInvoke);
            }
            b(sb2, "osVersion", strValueOf);
        } catch (Throwable unused2) {
        }
        l0Var.f1128e = sb2.toString();
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr != null && strArr.length != 0) {
            StringBuilder sb4 = new StringBuilder();
            for (String str2 : strArr) {
                if (sb4.length() > 0) {
                    sb4.append(',');
                }
                sb4.append(str2);
            }
            string = sb4.toString();
        }
        l0Var.f1129f = string;
        TimeZone timeZone = TimeZone.getDefault();
        int offset = timeZone.getOffset(System.currentTimeMillis()) / 60000;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(Locale.getDefault().toString());
        sb5.append(" / ");
        sb5.append(timeZone.getID());
        sb5.append(" (GMT");
        sb5.append(offset >= 0 ? "+" : "-");
        sb5.append(String.format(Locale.US, "%02d:%02d", Integer.valueOf(Math.abs(offset) / 60), Integer.valueOf(Math.abs(offset) % 60)));
        sb5.append(")");
        l0Var.f1130g = sb5.toString();
        Runtime runtime = Runtime.getRuntime();
        StringBuilder sb6 = new StringBuilder("java max=");
        sb6.append(q(runtime.maxMemory()));
        sb6.append(" total=");
        sb6.append(q(runtime.totalMemory()));
        sb6.append(" free=");
        sb6.append(q(runtime.freeMemory()));
        ActivityManager activityManager = (ActivityManager) applicationContext.getSystemService("activity");
        if (activityManager != null) {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            sb6.append(" | 系统 avail=");
            sb6.append(q(memoryInfo.availMem));
            sb6.append(" total=");
            sb6.append(q(memoryInfo.totalMem));
            sb6.append(" lowMemory=");
            sb6.append(memoryInfo.lowMemory);
            sb6.append(" threshold=");
            sb6.append(q(memoryInfo.threshold));
        }
        l0Var.f1131h = sb6.toString();
        l0Var.f1132i = "running=" + SgscqVpnService.f155m + " serviceAlive=" + SgscqVpnService.f155m;
        StringBuilder sb7 = new StringBuilder("电池优化豁免=");
        sb7.append(p5.k0(applicationContext));
        sb7.append(" 通知权限=");
        sb7.append(p5.q0(applicationContext));
        sb7.append(" 通知可用=");
        try {
            NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService("notification");
            z = notificationManager == null || notificationManager.areNotificationsEnabled();
        } catch (RuntimeException unused3) {
        }
        sb7.append(z);
        l0Var.f1133j = sb7.toString();
        return l0Var;
    }

    public static String k(Context context, String str) {
        try {
            return y5.i(context, str, y5.f1571d);
        } catch (Exception e2) {
            z2.g("CrashReporter", "崩溃报告加密不可用，退回明文: ".concat(e2.getClass().getSimpleName()));
            return "p1:" + str;
        }
    }

    public static String l(int i2) {
        switch (i2) {
            case 1:
                return "REASON_EXIT_SELF";
            case 2:
                return "REASON_SIGNALED";
            case 3:
                return "REASON_LOW_MEMORY";
            case 4:
                return "REASON_CRASH";
            case 5:
                return "REASON_CRASH_NATIVE";
            case 6:
                return "REASON_ANR";
            case 7:
                return "REASON_INITIALIZATION_FAILURE";
            case 8:
                return "REASON_PERMISSION_CHANGE";
            case 9:
                return "REASON_EXCESSIVE_RESOURCE_USAGE";
            case 10:
                return "REASON_USER_REQUESTED";
            case 11:
                return "REASON_USER_STOPPED";
            case 12:
                return "REASON_DEPENDENCY_DIED";
            case 13:
                return "REASON_OTHER";
            case 14:
                return "REASON_FREEZER";
            case 15:
                return "REASON_PACKAGE_STATE_CHANGE";
            case 16:
                return "REASON_PACKAGE_UPDATED";
            default:
                return a.b0.a("REASON_", i2);
        }
    }

    public static String m(long j2) {
        if (j2 < 0) {
            j2 = 0;
        }
        long j3 = j2 / 1000;
        if (j3 < 60) {
            return j3 + "s";
        }
        long j4 = j3 / 60;
        if (j4 < 60) {
            return j4 + "m" + (j3 % 60) + "s";
        }
        return (j4 / 60) + "h" + (j4 % 60) + "m";
    }

    public static String n(long j2) {
        String str;
        SimpleDateFormat simpleDateFormat = f1207a;
        synchronized (simpleDateFormat) {
            str = simpleDateFormat.format(new Date(j2));
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0092  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b9  */
    public static void o(Application application, long j2) throws Throwable {
        ActivityManager activityManager;
        boolean z;
        String str;
        String str2;
        long j3;
        String str3;
        StringBuilder sb;
        if (Build.VERSION.SDK_INT >= 30 && (activityManager = (ActivityManager) application.getSystemService("activity")) != null) {
            String str4 = "sgscq_crash_v1";
            int i2 = 0;
            String str5 = "exit_harvest_at";
            long j4 = 0;
            long j5 = application.getSharedPreferences("sgscq_crash_v1", 0).getLong("exit_harvest_at", 0L);
            List historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(application.getPackageName(), 0, 10);
            if (historicalProcessExitReasons == null || historicalProcessExitReasons.isEmpty()) {
                return;
            }
            l0 l0VarJ = j(application);
            Iterator it = historicalProcessExitReasons.iterator();
            long j6 = j5;
            while (it.hasNext()) {
                ApplicationExitInfo applicationExitInfoC = g0.c(it.next());
                if (applicationExitInfoC != null) {
                    long timestamp = applicationExitInfoC.getTimestamp();
                    if (timestamp > j5) {
                        if (timestamp > j6) {
                            j6 = timestamp;
                        }
                        int reason = applicationExitInfoC.getReason();
                        if (reason != 9 && reason != 12) {
                            switch (reason) {
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                    z = true;
                                    break;
                                default:
                                    z = false;
                                    break;
                            }
                        } else {
                            z = true;
                        }
                        if (!z) {
                            str = str4;
                            str2 = str5;
                            j3 = j6;
                        } else if (applicationExitInfoC.getReason() == 4 && j2 > j4 && Math.abs(timestamp - j2) <= 120000) {
                            str = str4;
                            str2 = str5;
                            j3 = j6;
                        } else {
                            applicationExitInfoC.getTimestamp();
                            int reason2 = applicationExitInfoC.getReason();
                            int status = applicationExitInfoC.getStatus();
                            int importance = applicationExitInfoC.getImportance();
                            long pss = applicationExitInfoC.getPss();
                            long rss = applicationExitInfoC.getRss();
                            String description = applicationExitInfoC.getDescription();
                            if (description == null) {
                                description = "";
                            }
                            String processName = applicationExitInfoC.getProcessName();
                            String str6 = processName == null ? "" : processName;
                            int pid = applicationExitInfoC.getPid();
                            InputStream inputStream = null;
                            try {
                                InputStream traceInputStream = applicationExitInfoC.getTraceInputStream();
                                if (traceInputStream == null) {
                                    if (traceInputStream != null) {
                                        try {
                                            traceInputStream.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    str = str4;
                                    str2 = str5;
                                    j3 = j6;
                                    str3 = "";
                                } else {
                                    try {
                                        try {
                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                            j3 = j6;
                                            try {
                                                byte[] bArr = new byte[4096];
                                                str2 = str5;
                                                int i3 = 0;
                                                try {
                                                    for (int i4 = 8192; i3 < i4; i4 = 8192) {
                                                        try {
                                                            int i5 = traceInputStream.read(bArr);
                                                            if (i5 > 0) {
                                                                str = str4;
                                                                try {
                                                                    int iMin = Math.min(i5, 8192 - i3);
                                                                    byteArrayOutputStream.write(bArr, 0, iMin);
                                                                    i3 += iMin;
                                                                    str4 = str;
                                                                } catch (Exception unused2) {
                                                                    inputStream = traceInputStream;
                                                                    if (inputStream != null) {
                                                                        try {
                                                                            inputStream.close();
                                                                        } catch (IOException unused3) {
                                                                        }
                                                                    }
                                                                    str3 = "";
                                                                    sb = new StringBuilder("系统退出原因: ");
                                                                    sb.append(l(reason2));
                                                                    sb.append(" (");
                                                                    sb.append(reason2);
                                                                    sb.append(") status=");
                                                                    sb.append(status);
                                                                    sb.append(" importance=");
                                                                    sb.append(importance);
                                                                    sb.append("\n退出进程: ");
                                                                    sb.append(str6);
                                                                    sb.append(" pid=");
                                                                    sb.append(pid);
                                                                    sb.append("\n内存: pss=");
                                                                    sb.append(q(pss));
                                                                    sb.append(" rss=");
                                                                    sb.append(q(rss));
                                                                    sb.append('\n');
                                                                    if (!description.isEmpty()) {
                                                                        sb.append("系统描述: ");
                                                                        sb.append(description);
                                                                        sb.append('\n');
                                                                    }
                                                                    if (!str3.trim().isEmpty()) {
                                                                        sb.append("系统抓取的堆栈/ANR 记录:\n");
                                                                        sb.append(i(str3, 8192));
                                                                        sb.append('\n');
                                                                    }
                                                                    u(application, c("进程被系统终止（" + l(reason2) + "）", timestamp, l0VarJ, sb.toString()));
                                                                    it = it;
                                                                    j5 = j5;
                                                                    j6 = j3;
                                                                    str5 = str2;
                                                                    str4 = str;
                                                                    i2 = 0;
                                                                    j4 = 0;
                                                                }
                                                            } else {
                                                                str = str4;
                                                                str3 = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                                                                traceInputStream.close();
                                                            }
                                                        } catch (Exception unused4) {
                                                            str = str4;
                                                        }
                                                    }
                                                    traceInputStream.close();
                                                } catch (IOException unused5) {
                                                }
                                                str = str4;
                                                str3 = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                                            } catch (Exception unused6) {
                                                str = str4;
                                                str2 = str5;
                                            }
                                        } catch (Exception unused7) {
                                            str = str4;
                                            str2 = str5;
                                            j3 = j6;
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        inputStream = traceInputStream;
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (IOException unused8) {
                                            }
                                        }
                                        throw th;
                                    }
                                }
                            } catch (Exception unused9) {
                                str = str4;
                                str2 = str5;
                                j3 = j6;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            sb = new StringBuilder("系统退出原因: ");
                            sb.append(l(reason2));
                            sb.append(" (");
                            sb.append(reason2);
                            sb.append(") status=");
                            sb.append(status);
                            sb.append(" importance=");
                            sb.append(importance);
                            sb.append("\n退出进程: ");
                            sb.append(str6);
                            sb.append(" pid=");
                            sb.append(pid);
                            sb.append("\n内存: pss=");
                            sb.append(q(pss));
                            sb.append(" rss=");
                            sb.append(q(rss));
                            sb.append('\n');
                            if (!description.isEmpty()) {
                                sb.append("系统描述: ");
                                sb.append(description);
                                sb.append('\n');
                            }
                            if (!str3.trim().isEmpty()) {
                                sb.append("系统抓取的堆栈/ANR 记录:\n");
                                sb.append(i(str3, 8192));
                                sb.append('\n');
                            }
                            u(application, c("进程被系统终止（" + l(reason2) + "）", timestamp, l0VarJ, sb.toString()));
                        }
                        it = it;
                        j5 = j5;
                        j6 = j3;
                        str5 = str2;
                        str4 = str;
                        i2 = 0;
                        j4 = 0;
                    }
                }
            }
            application.getSharedPreferences(str4, i2).edit().putLong(str5, j6).apply();
        }
    }

    public static boolean p(Context context) {
        SharedPreferences sharedPreferencesR = r(context.getApplicationContext());
        for (int i2 = 0; i2 < 3; i2++) {
            String string = sharedPreferencesR.getString("report_" + i2, null);
            if (string != null && !string.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public static String q(long j2) {
        return String.format(Locale.US, "%.1fMB", Double.valueOf((j2 / 1024.0d) / 1024.0d));
    }

    public static SharedPreferences r(Context context) {
        return context.getSharedPreferences("sgscq_crash_v1", 0);
    }

    public static m0 s(Context context) {
        String string = r(context.getApplicationContext()).getString("session", null);
        if (string == null || string.isEmpty()) {
            return null;
        }
        String[] strArrSplit = string.split("\\|");
        if (strArrSplit.length != 6) {
            return null;
        }
        try {
            if (Integer.parseInt(strArrSplit[0]) != 1) {
                return null;
            }
            return new m0(Long.parseLong(strArrSplit[1]), Long.parseLong(strArrSplit[2]), Integer.parseInt(strArrSplit[3]), "1".equals(strArrSplit[4]), "1".equals(strArrSplit[5]));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static ArrayList t(Context context) {
        SharedPreferences sharedPreferencesR = r(context.getApplicationContext());
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 3; i2++) {
            String string = sharedPreferencesR.getString("report_" + i2, null);
            if (string != null && !string.isEmpty()) {
                try {
                    arrayList.add(string.startsWith("p1:") ? string.substring(3) : y5.c(context, string, y5.f1571d));
                } catch (Exception e2) {
                    arrayList.add("===== 崩溃报告（无法解密: " + e2.getClass().getSimpleName() + "）=====\n");
                }
            }
        }
        return arrayList;
    }

    public static void u(Application application, String str) {
        Context applicationContext = application.getApplicationContext();
        ArrayList<String> arrayList = new ArrayList();
        for (String str2 : t(applicationContext)) {
            if (str2 != null) {
                arrayList.add(str2);
            }
        }
        ArrayList arrayList2 = new ArrayList(3);
        arrayList2.add(str);
        for (String str3 : arrayList) {
            if (arrayList2.size() >= 3) {
                break;
            } else {
                arrayList2.add(str3);
            }
        }
        SharedPreferences.Editor editorEdit = applicationContext.getSharedPreferences("sgscq_crash_v1", 0).edit();
        for (int i2 = 0; i2 < 3; i2++) {
            if (i2 < arrayList2.size()) {
                editorEdit.putString(a.b0.a("report_", i2), k(applicationContext, (String) arrayList2.get(i2)));
            } else {
                editorEdit.remove("report_" + i2);
            }
        }
        if (editorEdit.commit()) {
            return;
        }
        z2.g("CrashReporter", "崩溃报告未能写入磁盘");
    }
}
