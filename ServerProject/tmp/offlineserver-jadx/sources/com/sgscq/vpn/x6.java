package com.sgscq.vpn;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class x6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1537a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Handler f1538b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExecutorService f1539c = Executors.newSingleThreadExecutor(new x0(6));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ArrayList f1540d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f1541e = 1;
}
