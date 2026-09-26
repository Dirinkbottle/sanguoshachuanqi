package com.sgscq.vpn;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class p0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile DebugSparringConfig$Config f1261b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a.o f1260a = new a.o();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f1262c = Arrays.asList("attack", "passive", "control", "blood");

    public static String a(Object obj) {
        if (obj == null) {
            return "";
        }
        String strTrim = String.valueOf(obj).trim();
        return (strTrim.isEmpty() || "null".equalsIgnoreCase(strTrim) || "0".equals(strTrim)) ? "" : strTrim;
    }
}
