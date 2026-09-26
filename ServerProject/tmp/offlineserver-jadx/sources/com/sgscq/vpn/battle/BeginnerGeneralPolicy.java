package com.sgscq.vpn.battle;

/* JADX INFO: loaded from: classes.dex */
public final class BeginnerGeneralPolicy {
    public static final int MAX_BEGINNER_RESOURCE_INDEX = 437;

    private BeginnerGeneralPolicy() {
    }

    public static boolean isBeginnerResourceIndex(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            int i2 = Integer.parseInt(str);
            return i2 >= 1 && i2 <= 437;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
