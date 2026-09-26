package com.sgscq.vpn;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g1 implements View.OnKeyListener {
    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || (i2 != 23 && i2 != 66)) {
            return false;
        }
        view.performClick();
        return true;
    }
}
