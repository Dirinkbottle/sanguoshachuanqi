package com.sgscq.vpn.handler;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class l {
    public static String a(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static void b(LinkedHashMap linkedHashMap, String str, String str2, int i2, String str3) {
        linkedHashMap.put(str, str2);
        linkedHashMap.put(str3, Integer.valueOf(i2));
    }

    public static /* synthetic */ String c(int i2) {
        if (i2 == 1) {
            return "PVE";
        }
        if (i2 == 2) {
            return "LADDER";
        }
        if (i2 == 3) {
            return "PVP";
        }
        throw null;
    }

    public static /* synthetic */ String d(int i2) {
        if (i2 == 1) {
            return "NOT_STARTED";
        }
        if (i2 == 2) {
            return "ONLINE_AUTHORIZING";
        }
        if (i2 == 3) {
            return "ONLINE_READY";
        }
        if (i2 == 4) {
            return "OFFLINE_VALIDATING";
        }
        if (i2 == 5) {
            return "OFFLINE_READY";
        }
        if (i2 == 6) {
            return "AUTH_REQUIRED";
        }
        if (i2 == 7) {
            return "UPDATE_REQUIRED";
        }
        if (i2 == 8) {
            return "INTEGRITY_REJECTED";
        }
        throw null;
    }

    public static /* synthetic */ String e(int i2) {
        if (i2 == 1) {
            return "BEGIN_ARRAY";
        }
        if (i2 == 2) {
            return "END_ARRAY";
        }
        if (i2 == 3) {
            return "BEGIN_OBJECT";
        }
        if (i2 == 4) {
            return "END_OBJECT";
        }
        if (i2 == 5) {
            return "NAME";
        }
        if (i2 == 6) {
            return "STRING";
        }
        if (i2 == 7) {
            return "NUMBER";
        }
        if (i2 == 8) {
            return "BOOLEAN";
        }
        if (i2 == 9) {
            return "NULL";
        }
        return i2 == 10 ? "END_DOCUMENT" : "null";
    }
}
