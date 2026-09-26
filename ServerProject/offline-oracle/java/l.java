package com.sgscq.vpn;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class l extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AfdianOAuthActivity f1123a;

    public l(AfdianOAuthActivity afdianOAuthActivity) {
        this.f1123a = afdianOAuthActivity;
    }

    public static WebResourceResponse b(String str) {
        Exception e2;
        HttpURLConnection httpURLConnection;
        String lowerCase;
        if (!r3.c(str)) {
            return null;
        }
        z2.e("AfdianOAuth", "拦截 oauth.sgscq.com 回调页面: " + AfdianOAuthActivity.a(str));
        try {
            int i2 = 0;
            httpURLConnection = (HttpURLConnection) p5.O(new j(str, i2));
            try {
                int responseCode = httpURLConnection.getResponseCode();
                z2.e("AfdianOAuth", "oauth 回调页面响应 HTTP " + responseCode + " contentType=" + httpURLConnection.getContentType());
                InputStream errorStream = responseCode >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
                if (errorStream == null) {
                    z2.g("AfdianOAuth", "oauth 回调页面响应体为空 HTTP " + responseCode);
                    httpURLConnection.disconnect();
                    return null;
                }
                String contentType = httpURLConnection.getContentType();
                if (contentType == null || contentType.trim().isEmpty()) {
                    lowerCase = "text/html";
                } else {
                    int iIndexOf = contentType.indexOf(59);
                    lowerCase = (iIndexOf >= 0 ? contentType.substring(0, iIndexOf) : contentType).trim().toLowerCase(Locale.US);
                }
                String strTrim = "UTF-8";
                if (contentType != null) {
                    String[] strArrSplit = contentType.split(";");
                    int length = strArrSplit.length;
                    while (i2 < length) {
                        String strTrim2 = strArrSplit[i2].trim();
                        if (strTrim2.toLowerCase(Locale.US).startsWith("charset=")) {
                            strTrim = strTrim2.substring(8).trim();
                            break;
                        }
                        i2++;
                    }
                }
                return new WebResourceResponse(lowerCase, strTrim, new i(errorStream, httpURLConnection));
            } catch (Exception e3) {
                e2 = e3;
                z2.g("AfdianOAuth", "oauth 回调页面拦截失败: " + e2.getClass().getSimpleName() + " " + String.valueOf(e2.getMessage()));
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return null;
            }
        } catch (Exception e4) {
            e2 = e4;
            httpURLConnection = null;
        }
    }

    public final boolean a(String str) {
        String string;
        boolean z;
        String str2;
        if (str != null && !str.isEmpty()) {
            p4[] p4VarArr = r3.f1341a;
            int i2 = AfdianOAuthActivity.f94b;
            if (r3.c(str)) {
                try {
                    URI uri = new URI(str);
                    if ("/afdian/oauth.html".equals(uri.getPath())) {
                        StringBuilder sb = new StringBuilder("sgscq://afdian/oauth");
                        if (uri.getRawQuery() != null && !uri.getRawQuery().isEmpty()) {
                            sb.append("?");
                            sb.append(uri.getRawQuery());
                        }
                        if (uri.getRawFragment() != null && !uri.getRawFragment().isEmpty()) {
                            sb.append("#");
                            sb.append(uri.getRawFragment());
                        }
                        string = sb.toString();
                    } else {
                        string = null;
                    }
                } catch (Exception unused) {
                }
            } else {
                string = null;
            }
            if (string != null) {
                z2.e("AfdianOAuth", "直接转换 oauth.sgscq.com 回调为 app scheme: " + AfdianOAuthActivity.a(string));
                c(Uri.parse(string));
                return true;
            }
            Uri uri2 = Uri.parse(str);
            if ("sgscq".equals(uri2.getScheme()) && "afdian".equals(uri2.getHost())) {
                z2.e("AfdianOAuth", "拦截到 sgscq 回调，转回 SettingsActivity: " + AfdianOAuthActivity.a(str));
                c(uri2);
                return true;
            }
            int i3 = AfdianOAuthActivity.f94b;
            if (str.isEmpty()) {
                z = false;
            } else {
                try {
                    int iIndexOf = str.indexOf(58);
                    if (iIndexOf > 0) {
                        String lowerCase = str.substring(0, iIndexOf).toLowerCase(Locale.US);
                        if (!"http".equals(lowerCase) && !"https".equals(lowerCase) && !"about".equals(lowerCase) && !"javascript".equals(lowerCase) && !"sgscq".equals(lowerCase)) {
                            z = true;
                        }
                    }
                } catch (Exception unused2) {
                }
                z = false;
            }
            if (z) {
                AfdianOAuthActivity afdianOAuthActivity = this.f1123a;
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", uri2);
                    intent.addFlags(268435456);
                    z2.e("AfdianOAuth", "打开外部登录 scheme: " + AfdianOAuthActivity.a(String.valueOf(uri2)));
                    afdianOAuthActivity.startActivity(intent);
                } catch (ActivityNotFoundException unused3) {
                    z2.g("AfdianOAuth", "外部登录 App 不存在: " + AfdianOAuthActivity.a(String.valueOf(uri2)));
                    str2 = "未安装对应登录App，请返回网页登录或换用其它登录方式";
                    Toast.makeText(afdianOAuthActivity, str2, 1).show();
                } catch (Exception e2) {
                    z2.g("AfdianOAuth", "打开外部登录失败: " + e2.getClass().getSimpleName() + " " + String.valueOf(e2.getMessage()));
                    str2 = "无法打开外部登录，请换用其它登录方式";
                    Toast.makeText(afdianOAuthActivity, str2, 1).show();
                }
                return true;
            }
        }
        return false;
    }

    public final void c(Uri uri) {
        AfdianOAuthActivity afdianOAuthActivity = this.f1123a;
        Intent intent = new Intent(afdianOAuthActivity, (Class<?>) SettingsActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(603979776);
        afdianOAuthActivity.startActivity(intent);
        afdianOAuthActivity.finish();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest != null) {
            return b(String.valueOf(webResourceRequest.getUrl()));
        }
        return null;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String strValueOf = webResourceRequest == null ? "" : String.valueOf(webResourceRequest.getUrl());
        z2.e("AfdianOAuth", "shouldOverrideUrlLoading(req): " + AfdianOAuthActivity.a(strValueOf));
        return webResourceRequest != null && a(strValueOf);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return b(str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        z2.e("AfdianOAuth", "shouldOverrideUrlLoading: " + AfdianOAuthActivity.a(str));
        return a(str);
    }
}
