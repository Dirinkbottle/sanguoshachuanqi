package com.sgscq.vpn;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f1 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Drawable f681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Drawable f682c;

    public /* synthetic */ f1(GradientDrawable gradientDrawable, GradientDrawable gradientDrawable2, int i2) {
        this.f680a = i2;
        this.f681b = gradientDrawable;
        this.f682c = gradientDrawable2;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i2 = this.f680a;
        Drawable drawable = this.f681b;
        Drawable drawable2 = this.f682c;
        switch (i2) {
            case 0:
                if (!z) {
                    drawable = drawable2;
                }
                view.setBackground(drawable);
                break;
            case 1:
                if (!z) {
                    drawable = drawable2;
                }
                view.setBackground(drawable);
                break;
            default:
                if (!z) {
                    drawable = drawable2;
                }
                view.setBackground(drawable);
                break;
        }
    }
}
