package com.sgscq.vpn;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AtomicFile;
import com.sgscq.vpn.battle.runtime.BattleOfflineEnvelope;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y0 implements q.l, u5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1543b;

    public /* synthetic */ y0(Object obj, int i2) {
        this.f1542a = i2;
        this.f1543b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002a  */
    @Override // com.sgscq.vpn.u5
    public final v5 a(v5 v5Var) {
        int i2;
        v5 v5VarA;
        t5 t5Var = (t5) this.f1543b;
        String[] strArr = t5.f1401k;
        t5Var.getClass();
        if (v5Var != null) {
            String str = v5Var.f1459a;
            if (str == null || !str.startsWith("robot_")) {
                i2 = 0;
            } else {
                try {
                    i2 = Integer.parseInt(str.substring(6));
                    if (i2 < 1 || i2 > 1000) {
                        i2 = 0;
                    }
                } catch (NumberFormatException unused) {
                }
            }
            if (i2 > 0) {
                synchronized (t5Var.f1412i) {
                    v5 v5Var2 = (v5) t5Var.f1412i.get(Integer.valueOf(i2));
                    if (v5Var2 != null) {
                        v5VarA = v5Var2;
                    } else {
                        v5VarA = t5Var.a(i2, new ArrayList(v5Var.s));
                        t5Var.f1412i.put(Integer.valueOf(i2), v5VarA);
                    }
                }
                return v5VarA;
            }
        }
        return null;
    }

    public final void b(BattleOfflineEnvelope battleOfflineEnvelope) {
        byte[] bArrEncode;
        AtomicFile atomicFile;
        FileOutputStream fileOutputStreamStartWrite;
        o.c cVar = (o.c) this.f1543b;
        synchronized (cVar) {
            BattleOfflineEnvelope battleOfflineEnvelopeDecode = BattleOfflineEnvelope.decode(battleOfflineEnvelope.encode());
            o.c.c(battleOfflineEnvelopeDecode);
            try {
                BattleOfflineEnvelope battleOfflineEnvelopeDecode2 = BattleOfflineEnvelope.decode(((AtomicFile) ((c.e) cVar.f1818a).f38a).readFully());
                o.c.c(battleOfflineEnvelopeDecode2);
                bArrEncode = battleOfflineEnvelopeDecode2.encode();
            } catch (Exception unused) {
                bArrEncode = null;
            }
            c.e eVar = (c.e) cVar.f1818a;
            byte[] bArrEncode2 = battleOfflineEnvelopeDecode.encode();
            if (bArrEncode != null) {
                AtomicFile atomicFile2 = (AtomicFile) eVar.f39b;
                FileOutputStream fileOutputStreamStartWrite2 = atomicFile2.startWrite();
                try {
                    fileOutputStreamStartWrite2.write(bArrEncode);
                    fileOutputStreamStartWrite2.getFD().sync();
                    atomicFile2.finishWrite(fileOutputStreamStartWrite2);
                    atomicFile = (AtomicFile) eVar.f38a;
                    fileOutputStreamStartWrite = atomicFile.startWrite();
                    try {
                        fileOutputStreamStartWrite.write(bArrEncode2);
                        fileOutputStreamStartWrite.getFD().sync();
                        atomicFile.finishWrite(fileOutputStreamStartWrite);
                    } catch (Throwable th) {
                        atomicFile.failWrite(fileOutputStreamStartWrite);
                        throw th;
                    }
                } catch (Throwable th2) {
                    atomicFile2.failWrite(fileOutputStreamStartWrite2);
                    throw th2;
                }
            } else {
                atomicFile = (AtomicFile) eVar.f38a;
                fileOutputStreamStartWrite = atomicFile.startWrite();
                fileOutputStreamStartWrite.write(bArrEncode2);
                fileOutputStreamStartWrite.getFD().sync();
                atomicFile.finishWrite(fileOutputStreamStartWrite);
            }
            throw th;
        }
    }

    public final void c(long j2, long j3) {
        o.l lVar = (o.l) this.f1543b;
        synchronized (lVar) {
            if (j2 > 0 && j3 >= 0) {
                lVar.a(new o.k(j2, j2, j3));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0115 A[Catch: all -> 0x011d, TRY_ENTER, TryCatch #6 {all -> 0x011d, blocks: (B:32:0x00a5, B:58:0x0115, B:59:0x011c, B:62:0x011f), top: B:72:0x00a5 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x011f A[Catch: all -> 0x011d, TRY_LEAVE, TryCatch #6 {all -> 0x011d, blocks: (B:32:0x00a5, B:58:0x0115, B:59:0x011c, B:62:0x011f), top: B:72:0x00a5 }] */
    @Override // q.l
    public final Object run() throws Throwable {
        HttpURLConnection httpURLConnectionF;
        int i2 = this.f1542a;
        Object obj = this.f1543b;
        switch (i2) {
            case 0:
                byte[] bArr = (byte[]) obj;
                try {
                    try {
                        httpURLConnectionF = r3.f(new URL("https://audit.sgscq.com/api/v1/device-events"));
                        char c2 = 2500;
                        try {
                            try {
                                try {
                                    httpURLConnectionF.setConnectTimeout(2500);
                                    httpURLConnectionF.setReadTimeout(3500);
                                    httpURLConnectionF.setRequestMethod("POST");
                                    httpURLConnectionF.setDoOutput(true);
                                    httpURLConnectionF.setFixedLengthStreamingMode(bArr.length);
                                    httpURLConnectionF.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                                    httpURLConnectionF.setRequestProperty("Accept", "application/json");
                                    OutputStream outputStream = httpURLConnectionF.getOutputStream();
                                    try {
                                        outputStream.write(bArr);
                                        outputStream.close();
                                        if (httpURLConnectionF.getResponseCode() != 204) {
                                            z2.g("DeviceAudit", "upload rejected HTTP " + httpURLConnectionF.getResponseCode());
                                        }
                                        httpURLConnectionF.disconnect();
                                        return null;
                                    } catch (Throwable th) {
                                        if (outputStream != null) {
                                            try {
                                                outputStream.close();
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                            }
                                            break;
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    if (httpURLConnectionF != null) {
                                        httpURLConnectionF.disconnect();
                                    }
                                    throw th;
                                }
                            } catch (IOException e2) {
                                e = e2;
                                c2 = 0;
                                if (c2 != 0) {
                                    throw new q.k("audit request may have been sent", e);
                                }
                                throw e;
                            }
                        } catch (IOException e3) {
                            e = e3;
                            if (c2 != 0) {
                                throw new q.k("audit request may have been sent", e);
                            }
                            throw e;
                        }
                    } catch (IOException e4) {
                        e = e4;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    httpURLConnectionF = null;
                }
                break;
            case 1:
                int i3 = MainActivity.F;
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(((o3) obj).f1243b).openConnection();
                try {
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setReadTimeout(5000);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != 200) {
                        throw new q.j(responseCode);
                    }
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                    httpURLConnection.disconnect();
                    return bitmapDecodeStream;
                } catch (Throwable th5) {
                    httpURLConnection.disconnect();
                    throw th5;
                }
            case 2:
            case 3:
            default:
                p.l lVar = (p.l) obj;
                return lVar.f1879b.f(lVar.f1885h, 65536);
            case 4:
                ((a7) obj).getClass();
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL("https://api.sgscq.com/api/v1/public/app/latest").openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(10000);
                    httpURLConnection2.setReadTimeout(10000);
                    httpURLConnection2.setRequestProperty("Accept", "application/json");
                    int responseCode2 = httpURLConnection2.getResponseCode();
                    if (responseCode2 != 200) {
                        throw new q.j(responseCode2);
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            JSONObject jSONObject = new JSONObject(sb.toString());
                            httpURLConnection2.disconnect();
                            return jSONObject;
                        }
                        sb.append(line);
                    }
                } catch (Throwable th6) {
                    httpURLConnection2.disconnect();
                    throw th6;
                }
                break;
        }
    }
}
