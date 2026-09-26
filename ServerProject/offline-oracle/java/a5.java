package com.sgscq.vpn;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f185a = new ConcurrentHashMap();

    public static Object a(String str) {
        if (str == null) {
            str = "";
        }
        return f185a.computeIfAbsent(str, new n.a(10));
    }
}
