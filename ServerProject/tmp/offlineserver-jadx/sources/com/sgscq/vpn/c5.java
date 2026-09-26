package com.sgscq.vpn;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class c5 extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f248e;

    public c5(Activity activity) {
        int i2;
        int i3;
        super(activity);
        this.f244a = activity;
        boolean zS0 = p5.s0(activity);
        this.f245b = zS0;
        this.f246c = activity.getResources().getDisplayMetrics().widthPixels;
        this.f247d = activity.getResources().getDisplayMetrics().heightPixels;
        int i4 = 1;
        setOrientation(1);
        setBackgroundColor(p5.x);
        setGravity(zS0 ? 8388627 : 17);
        int iY = p5.Y(activity);
        int i5 = 6;
        int iB = b(6);
        int iA = a(iY);
        int i6 = 0;
        String[][] strArr = {new String[]{"爱发电打赏", com.sgscq.vpn.cloud.m0.a3()[0]}, new String[]{"加入QQ群", com.sgscq.vpn.cloud.m0.a3()[1]}, new String[]{"关注B站", com.sgscq.vpn.cloud.m0.a3()[2]}};
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(zS0 ? 1 : 0);
        linearLayout.setGravity(17);
        int i7 = 0;
        while (i7 < 3) {
            String[] strArr2 = strArr[i7];
            String str = strArr2[i6];
            String str2 = strArr2[i4];
            LinearLayout linearLayout2 = new LinearLayout(activity);
            linearLayout2.setOrientation(i4);
            linearLayout2.setGravity(i4);
            linearLayout2.setPadding(b(8), b(8), b(8), b(i5));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(b(10));
            gradientDrawable.setColor(p5.y);
            linearLayout2.setBackground(gradientDrawable);
            try {
                Bitmap bitmapV = p5.V(str2, iA);
                ImageView imageView = new ImageView(activity);
                imageView.setImageBitmap(bitmapV);
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                linearLayout2.addView(imageView, new LinearLayout.LayoutParams(iA, iA));
            } catch (Exception unused) {
                TextView textView = new TextView(activity);
                textView.setText("QR");
                textView.setTextSize(14.0f);
                textView.setTextColor(p5.H);
                textView.setGravity(17);
                linearLayout2.addView(textView, new LinearLayout.LayoutParams(iA, iA));
            }
            TextView textView2 = new TextView(activity);
            textView2.setText(str);
            textView2.setPadding(0, b(4), 0, 0);
            textView2.setTextSize(11.0f);
            textView2.setTextColor(p5.B);
            textView2.setGravity(17);
            textView2.setTypeface(Typeface.DEFAULT_BOLD);
            linearLayout2.addView(textView2, new LinearLayout.LayoutParams(-2, -2));
            linearLayout2.setOnClickListener(new t3(this, str, str2, 1));
            p5.j(linearLayout2, gradientDrawable, p5.y0(p5.y, b(10), activity.getResources().getDisplayMetrics().density));
            if (zS0) {
                i2 = 0;
                linearLayout.addView(linearLayout2, p5.x0(-1, -2, 0, 0, iB));
                i3 = 6;
            } else {
                i2 = 0;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
                i3 = 6;
                layoutParams.setMargins(b(6), 0, b(6), 0);
                linearLayout.addView(linearLayout2, layoutParams);
            }
            i7++;
            i4 = 1;
            i6 = i2;
            i5 = i3;
        }
        int i8 = i6;
        addView(linearLayout, p5.x0(-1, -2, i8, i8, i8));
    }

    public final int a(int i2) {
        return Math.min(this.f245b ? Math.max((((this.f247d - i2) - b(32)) - b(150)) / 3, b(40)) : (int) (this.f246c * 0.22f), b(72));
    }

    public final int b(int i2) {
        return p5.S0(i2, this.f244a);
    }

    public int getPanelWidth() {
        if (!this.f245b) {
            return 0;
        }
        int i2 = this.f248e;
        if (i2 > 0) {
            return i2;
        }
        int iB = b(32) + a(p5.Y(this.f244a));
        this.f248e = iB;
        return iB;
    }
}
