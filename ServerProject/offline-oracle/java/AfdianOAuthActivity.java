package com.sgscq.vpn;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class AfdianOAuthActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f94b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WebView f95a;

    public static String a(String str) {
        String query;
        if (str == null) {
            return "";
        }
        Uri uri = Uri.parse(str);
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getScheme());
        sb.append("://");
        sb.append(uri.getHost());
        if (uri.getPath() != null) {
            sb.append(uri.getPath());
        }
        if (uri.getQueryParameter("code") == null) {
            if (uri.getQuery() != null) {
                sb.append("?");
                query = uri.getQuery();
            }
            return sb.toString();
        }
        query = "?code=<redacted>";
        sb.append(query);
        return sb.toString();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z2.e("AfdianOAuth", "onCreate: 启动应用内爱发电 OAuth WebView");
        r3.k();
        WebView webView = new WebView(this);
        this.f95a = webView;
        webView.setBackgroundColor(-1);
        WebSettings settings = this.f95a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        this.f95a.setWebViewClient(new l(this));
        setContentView(this.f95a, new ViewGroup.LayoutParams(-1, -1));
        String stringExtra = getIntent() != null ? getIntent().getStringExtra("url") : "";
        if (stringExtra == null || stringExtra.isEmpty()) {
            z2.g("AfdianOAuth", "登录地址为空");
            Toast.makeText(this, "爱发电登录地址为空", 1).show();
            finish();
        } else {
            z2.e("AfdianOAuth", "loadUrl: " + a(stringExtra));
            this.f95a.loadUrl(stringExtra);
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        WebView webView = this.f95a;
        if (webView != null) {
            webView.stopLoading();
            this.f95a.destroy();
            this.f95a = null;
        }
        super.onDestroy();
    }
}
